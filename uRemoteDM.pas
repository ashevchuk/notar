unit uRemoteDM;

interface

uses
  System.SysUtils, System.Classes, System.Types, ufmMain, uUtils, fib, FIBDatabase, pFIBDatabase, pFIBSQLLog,
  SIBEABase, SIBFIBEA, FIBSQLMonitor, pFIBErrorHandler, Data.DB, FIBDataSet,
  pFIBDataSet, FIBQuery, pFIBQuery, RegularExpressions,
  ZInterbaseAnalyser, ZInterbaseToken, ZSelectSchema;

type
  TRemoteDataModule = class(TDataModule)
    FIBDatabase: TpFIBDatabase;
    FIBTransaction: TpFIBTransaction;
    FIBUpdateTransaction: TpFIBTransaction;
    FibErrorHandler: TpFibErrorHandler;
    FIBSQLMonitor: TFIBSQLMonitor;
    SIBfibEventAlerter: TSIBfibEventAlerter;
    FIBSQLLogger: TFIBSQLLogger;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure FibErrorHandlerFIBErrorEvent(Sender: TObject; ErrorValue: EFIBError; KindIBError: TKindIBError; var DoRaise: Boolean);
    procedure FIBSQLMonitorSQL(EventText: string; EventTime: TDateTime);
  private
    FDataSetList: TList;
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
end;

procedure TRemoteDataModule.DataModuleDestroy(Sender: TObject);
var
  DataSetItem: Pointer;
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

  FDataSetList.Free;
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

function TRemoteDataModule.getFieldInfo(const ATable: string; AField, AType: string): string;
var
  FieldsDataSet: TpFIBDataSet;
begin
  FieldsDataSet := createDataSet;

  FieldsDataSet.SQLs.SelectSQL.Text := 'SELECT TABLE_NAME, FIELD_NAME, FIELD_POSITION, FIELD_ID, FIELD_DESCRIPTION, FIELD_NULL_FLAG FROM VIEW_TABLE_FIELDS WHERE TABLE_NAME = :TABLE_NAME AND FIELD_NAME = :FIELD_NAME';
  FieldsDataSet.ParamByName('TABLE_NAME').AsString := ATable;
  FieldsDataSet.ParamByName('FIELD_NAME').AsString := AField;
  FieldsDataSet.Open;

  Result := FieldsDataSet.FieldByName(AType).AsString;

  FieldsDataSet.Close;
  FieldsDataSet.Free;
end;

function TRemoteDataModule.getFields(const ATable: string): string;
var
  FieldsListDataSet: TpFIBDataSet;
  FieldsList: TStringList;
begin
  FieldsListDataSet := createDataSet;

  FieldsListDataSet.SQLs.SelectSQL.Text := 'SELECT FIELD_NAME FROM VIEW_TABLE_FIELDS WHERE TABLE_NAME = :TABLE_NAME';
  FieldsListDataSet.ParamByName('TABLE_NAME').AsString := ATable;
  FieldsListDataSet.Open;

  FieldsList := TStringList.Create;

  FieldsListDataSet.First;
  while not FieldsListDataSet.Eof do
  begin
    FieldsList.Append(FieldsListDataSet.FieldByName('FIELD_NAME').AsString);
    FieldsListDataSet.Next;
  end;

  FieldsListDataSet.Close;
  FieldsListDataSet.Free;

  Result := FieldsList.CommaText;
  FieldsList.Free;
end;

function TRemoteDataModule.getFieldsList(const ATable: string): TStringList;
var
  FieldsListDataSet: TpFIBDataSet;
  FieldsList: TStringList;
begin
  FieldsListDataSet := createDataSet;

  FieldsListDataSet.SQLs.SelectSQL.Text := 'SELECT FIELD_NAME FROM VIEW_TABLE_FIELDS WHERE TABLE_NAME = :TABLE_NAME';
  FieldsListDataSet.ParamByName('TABLE_NAME').AsString := ATable;
  FieldsListDataSet.Open;

  FieldsList := TStringList.Create;

  FieldsListDataSet.First;
  while not FieldsListDataSet.Eof do
  begin
    FieldsList.Append(FieldsListDataSet.FieldByName('FIELD_NAME').AsString);
    FieldsListDataSet.Next;
  end;

  FieldsListDataSet.Close;
  FieldsListDataSet.Free;

  Result := FieldsList;
  //FieldsList.Free;
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

function TRemoteDataModule.registerDataSet(const ADataSet: TpFIBDataSet): boolean;
begin
  FDataSetList.Add(ADataSet);
end;

function TRemoteDataModule.unregisterDataSet(const ADataSet: TpFIBDataSet): boolean;
begin
  FDataSetList.Remove(ADataSet);
end;

end.
