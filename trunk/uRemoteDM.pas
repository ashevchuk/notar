unit uRemoteDM;

interface

uses
  System.SysUtils, System.Classes, System.Types, ufmMain, uUtils, fib, FIBDatabase, pFIBDatabase, pFIBSQLLog,
  SIBEABase, SIBFIBEA, FIBSQLMonitor, pFIBErrorHandler, Data.DB, FIBDataSet,
  pFIBDataSet, FIBQuery, pFIBQuery, RegularExpressions,
  ZInterbaseAnalyser, ZInterbaseToken, ZSelectSchema;

type
  TTableFieldInfo = class(TObject)
    private
    public
      isNullable: boolean;
      Description: string;
      ID: word;
      Position: word;
      Name: string;
      Table: string;
  end;

type
  TRemoteDataModule = class(TDataModule)
    FIBDatabase: TpFIBDatabase;
    FIBTransaction: TpFIBTransaction;
    FIBUpdateTransaction: TpFIBTransaction;
    FibErrorHandler: TpFibErrorHandler;
    FIBSQLMonitor: TFIBSQLMonitor;
    SIBfibEventAlerter: TSIBfibEventAlerter;
    FIBSQLLogger: TFIBSQLLogger;
    TableListDataSet: TpFIBDataSet;
    TableListDataSetTABLE_NAME: TFIBWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure FibErrorHandlerFIBErrorEvent(Sender: TObject; ErrorValue: EFIBError; KindIBError: TKindIBError; var DoRaise: Boolean);
    procedure FIBSQLMonitorSQL(EventText: string; EventTime: TDateTime);
  private
    FDataSetList: TList;
    FTablesList: TStringList;
  public
    function ConnectDataBase: boolean;
    function getFieldInfo(const ATable: string; AField: string; AType: string = 'FIELD_DESCRIPTION') : string;
    function getFields(const ATable: string) : string;
    function getFieldsList(const ATable: string) : TStringList;
    function createDataSet: TpFIBDataSet;
    function createQuery: TpFIBQuery;
    function createTransaction: TpFIBTransaction;
    function registerDataSet(const ADataSet: TpFIBDataSet): boolean;
    function unregisterDataSet(const ADataSet: TpFIBDataSet): boolean;
    function notifyDataSets(const ATableName: string): boolean;
    function generateGroups(const ATable: string): boolean;
    function preloadTablesData: boolean;
  end;

var
  RemoteDataModule: TRemoteDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TRemoteDataModule }

function TRemoteDataModule.ConnectDataBase: boolean;
begin
  try
    FIBDatabase.AutoReconnect := True;
    FIBDatabase.Connected := True;
  finally
    Result := FIBDatabase.Connected;
  end;
end;

function TRemoteDataModule.createDataSet: TpFIBDataSet;
var
  DataSet: TpFIBDataSet;
begin
  DataSet := TpFIBDataSet.Create(self);
  DataSet.Database := FIBDatabase;
  DataSet.Transaction := FIBTransaction;
  DataSet.UpdateTransaction := FIBUpdateTransaction;
  DataSet.Close;

  registerDataSet(DataSet);

  Result := DataSet;
end;

function TRemoteDataModule.createQuery: TpFIBQuery;
var
  DataSet: TpFIBQuery;
begin
  DataSet := TpFIBQuery.Create(self);
  DataSet.Database := FIBDatabase;
  DataSet.Transaction := FIBTransaction;
  DataSet.Close;

  Result := DataSet;
end;

function TRemoteDataModule.createTransaction: TpFIBTransaction;
var
  Transaction: TpFIBTransaction;
begin
  Transaction := TpFIBTransaction.Create(self);
  Transaction.DefaultDatabase := FIBDatabase;
  Result := Transaction;
end;

procedure TRemoteDataModule.DataModuleCreate(Sender: TObject);
begin
  FDataSetList := TList.Create;
  FTablesList := TStringList.Create;
end;

procedure TRemoteDataModule.DataModuleDestroy(Sender: TObject);
var
  DataSetItem: Pointer;
  iTablesList: word;
  iFieldsList: word;
begin
  if FDataSetList.Count >0 then
  begin
    for DataSetItem in FDataSetList do
    begin
      try
        if not Assigned(ValidateObj(DataSetItem)) then
        begin
          unregisterDataSet(DataSetItem);
          Continue;
        end;
        TpFIBDataSet(DataSetItem).Close;
      except
        unregisterDataSet(DataSetItem);
      end;
    end;
  end;

  if FTablesList.Count >0 then
  begin
    for iTablesList := 0 to FTablesList.Count -1 do
      begin
        for iFieldsList := 0 to TStringList(FTablesList.Objects[iTablesList]).Count -1 do
          begin
            try
              TTableFieldInfo(TStringList(FTablesList.Objects[iTablesList]).Objects[iFieldsList]).Free;
            except
            end;
          end;
        try
          TStringList(FTablesList.Objects[iTablesList]).Free;
        except
        end;
      end;
  end;

  FDataSetList.Free;
  FTablesList.Free;

  FIBDatabase.Close;
end;

procedure TRemoteDataModule.FibErrorHandlerFIBErrorEvent(Sender: TObject; ErrorValue: EFIBError; KindIBError: TKindIBError; var DoRaise: Boolean);
begin
  Log(ErrorValue.Msg);
  Log(ErrorValue.CustomMessage);
  Log(ErrorValue.IBMessage);
  Log(ErrorValue.SQLMessage);
  Log(ErrorValue.RaiserName);
end;

procedure TRemoteDataModule.FIBSQLMonitorSQL(EventText: string; EventTime: TDateTime);
var
  tmpStr: string;
  tableName: string;
  regex: TRegEx;
  mc: TMatchCollection;
begin
  log(EventText);
  regex := TRegEx.Create('\s\s');
  tmpStr := regex.Replace(EventText, '[\n\r\t]', ' ');

  mc := regex.Matches(tmpStr, '\[Execute\]\s(.*?)$', [roMultiLine, roExplicitCapture]);

  if mc.Count > 0 then
  begin
    tmpStr := mc.Item[0].Value;

    tmpStr := regex.Replace(tmpStr, '\[Execute\]\s', '');
    tmpStr := regex.Replace(tmpStr, '^\s', '');
    tmpStr := regex.Replace(tmpStr, '\s$', '');
    while regex.IsMatch(tmpStr) do
      tmpStr := regex.Replace(tmpStr, '\s\s', ' ');

    tmpStr := UpperCase(tmpStr);

    //INSERT INTO TABLE_NAME
    if Pos('INSERT', tmpStr) = 1 then
    begin
      tmpStr := regex.Replace(tmpStr, '^INSERT\sINTO\s', '');
      tableName := Copy(tmpStr, 1, Pos('(', tmpStr) -1);
      notifyDataSets(tableName);
    end;
    //UPDATE TABLE_NAME
    if Pos('UPDATE', tmpStr) = 1 then
    begin
      tmpStr := regex.Replace(tmpStr, '^UPDATE\s', '');
      tableName := Copy(tmpStr, 1, Pos(' ', tmpStr) -1);
      notifyDataSets(tableName);
    end;
    //DELETE FROM TABLE_NAME
    if Pos('DELETE', tmpStr) = 1 then
    begin
      tmpStr := regex.Replace(tmpStr, '^DELETE\sFROM\s', '');
      tableName := Copy(tmpStr, 1, Pos(' ', tmpStr) -1);
      notifyDataSets(tableName);
    end;
    //SELECT FIELDS FROM TABLE_NAME
    if Pos('SELECT', tmpStr) = 1 then
    begin
      tmpStr := regex.Replace(tmpStr, '^(.*?)\sFROM\s', '');
      tableName := Copy(tmpStr, 1, Pos(' ', tmpStr) -1);
    end;
  end;
end;

function TRemoteDataModule.generateGroups(const ATable: string): boolean;
var
  fields: TStringList;
  i: byte;
  s: string;
begin
  fields := getFieldsList(ATable);
  for I := 0 to fields.Count -1 do
  begin
    s := Format('create view GROUP_%s ( %s ) as SELECT %s FROM CATALOG_INDIVIDUALS GROUP BY %s ORDER BY %s;', [fields[i], fields[i], fields[i], fields[i], fields[i]]);
    log(s);
  end;

end;

function TRemoteDataModule.getFieldInfo(const ATable: string; AField, AType: string): string;
var
  FieldsList: TStringList;
  FieldInfo: TTableFieldInfo;
begin
  FieldsList := getFieldsList(ATable);

  FieldInfo := TTableFieldInfo(FieldsList.Objects[FieldsList.IndexOf(AField)]);

  if AType = 'FIELD_ID' then Result := IntToStr(FieldInfo.ID);
  if AType = 'FIELD_POSITION' then Result := IntToStr(FieldInfo.Position);
  if AType = 'FIELD_NULL_FLAG' then Result := IntToStr(Byte(FieldInfo.isNullable));
  if AType = 'FIELD_DESCRIPTION' then Result := FieldInfo.Description;
end;

function TRemoteDataModule.getFields(const ATable: string): string;
var
  FieldsList: TStringList;
begin
  FieldsList := getFieldsList(ATable);

  Result := FieldsList.CommaText;
  FieldsList.Free;
end;

function TRemoteDataModule.getFieldsList(const ATable: string): TStringList;
var
  FieldsListDataSet: TpFIBDataSet;
  FieldsList: TStringList;
  FieldsListResult: TStringList;
  FieldInfo: TTableFieldInfo;
begin
  FieldsListResult := TStringList.Create;

  if FTablesList.IndexOf(ATable) <0 then
  begin
    FieldsList := TStringList.Create;
    FieldsListDataSet := createDataSet;

    FieldsListDataSet.SQLs.SelectSQL.Text := 'SELECT TABLE_NAME, FIELD_NAME, FIELD_POSITION, FIELD_ID, FIELD_DESCRIPTION, FIELD_NULL_FLAG FROM VIEW_TABLE_FIELDS WHERE TABLE_NAME = :TABLE_NAME';
    FieldsListDataSet.ParamByName('TABLE_NAME').AsString := ATable;
    FieldsListDataSet.Open;

    FieldsListDataSet.First;
    while not FieldsListDataSet.Eof do
    begin
      FieldInfo := TTableFieldInfo.Create;

      FieldInfo.Table := ATable;
      FieldInfo.ID := FieldsListDataSet.FieldByName('FIELD_ID').AsLargeInt;
      FieldInfo.Name := FieldsListDataSet.FieldByName('FIELD_NAME').AsString;
      FieldInfo.Description := FieldsListDataSet.FieldByName('FIELD_DESCRIPTION').AsString;
      FieldInfo.Position := FieldsListDataSet.FieldByName('FIELD_POSITION').AsLargeInt;
      FieldInfo.isNullable := not FieldsListDataSet.FieldByName('FIELD_POSITION').AsInteger = 1;

      FieldsList.AddObject(FieldsListDataSet.FieldByName('FIELD_NAME').AsString, FieldInfo);
//      FieldsList.Append(FieldsListDataSet.FieldByName('FIELD_NAME').AsString);
      FieldsListDataSet.Next;
    end;

    FTablesList.AddObject(ATable, FieldsList);

    FieldsListDataSet.Close;
    FieldsListDataSet.Free;
  end;

  FieldsListResult.Assign(TStringList(FTablesList.Objects[FTablesList.IndexOf(ATable)]));

  Result := FieldsListResult;
end;

function TRemoteDataModule.notifyDataSets(const ATableName: string): boolean;
var
  DataSetItem: Pointer;
begin
  log('notifycation: ' + ATableName);
  if FDataSetList.Count =0 then Exit;

  for DataSetItem in FDataSetList do
  begin
    try
      if not Assigned(ValidateObj(DataSetItem)) then
      begin
        unregisterDataSet(DataSetItem);
        Continue;
      end;

      if UpperCase(TpFIBDataSet(DataSetItem).Description) = UpperCase(ATableName) then
      begin
        if TpFIBDataSet(DataSetItem).Active then
        begin
          //TpFIBDataSet(FDataSetList[iDataSet]).Refresh;
          //TpFIBDataSet(DataSetItem).Close;
          //TpFIBDataSet(DataSetItem).Open;
          //TpFIBDataSet(DataSetItem).CloseOpen(true);
          TpFIBDataSet(DataSetItem).FullRefresh;
          //TpFIBDataSet(DataSetItem).FetchAll;
          Log('Refresh table ' + ATableName);
        end;
      end;
    except
      Log('Error while table refresh ' + ATableName);
      unregisterDataSet(DataSetItem);
    end;
  end;

end;

function TRemoteDataModule.preloadTablesData: boolean;
begin
  TableListDataSet.Open;
  while not TableListDataSet.Eof do
  begin
    getFieldsList(TableListDataSetTABLE_NAME.AsString);
    TableListDataSet.Next;
  end;
  TableListDataSet.Close;
end;

function TRemoteDataModule.registerDataSet(const ADataSet: TpFIBDataSet): boolean;
begin
  FDataSetList.Add(ADataSet);
end;

function TRemoteDataModule.unregisterDataSet(const ADataSet: TpFIBDataSet): boolean;
begin
  FDataSetList.Remove(ADataSet);
end;

end.
