unit uRemoteDM;

interface

uses
  System.SysUtils, System.Classes, System.Types, ufmMain, uUtils, fib, FIBDatabase, pFIBDatabase, pFIBSQLLog,
  SIBEABase, SIBFIBEA, FIBSQLMonitor, pFIBErrorHandler, Data.DB, FIBDataSet, Forms,
  pFIBDataSet, FIBQuery, pFIBQuery, RegularExpressions,
  ZInterbaseAnalyser, ZInterbaseToken, ZSelectSchema, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdNetworkCalculator, System.Variants,
  IdCustomTransparentProxy, IdSocks, IdStack, IdIPWatch, IdIPAddrMon, IdRawBase,
  IdRawClient, IdIcmpClient, Winsock, Dialogs, uDMConfig, fileinfo;

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
    FIBEventAlerter: TSIBfibEventAlerter;
    FIBSQLLogger: TFIBSQLLogger;
    TableListDataSet: TpFIBDataSet;
    TableListDataSetTABLE_NAME: TFIBWideStringField;
    MenuTreeDataSet: TpFIBDataSet;
    MenuTreeDataSource: TDataSource;
    MenuTreeDataSetID: TFIBBCDField;
    MenuTreeDataSetCAPTION: TFIBWideStringField;
    MenuTreeDataSetSUB_ID: TFIBBCDField;
    MenuTreeDataSetGLYPH_ID: TFIBSmallIntField;
    MenuTreeDataSetCLASS_NAME: TFIBWideStringField;
    GlobalConfigurationDataSet: TpFIBDataSet;
    GlobalConfigurationDataSetID: TFIBBCDField;
    GlobalConfigurationDataSetKEY_NAME: TFIBWideStringField;
    GlobalConfigurationDataSetVALUE_DATA: TFIBMemoField;
    EventsListDataSet: TpFIBDataSet;
    EventsListDataSetID: TFIBBCDField;
    EventsListDataSetEVENT_NAME: TFIBWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure FibErrorHandlerFIBErrorEvent(Sender: TObject; ErrorValue: EFIBError; KindIBError: TKindIBError; var DoRaise: Boolean);
    procedure FIBSQLMonitorSQL(EventText: string; EventTime: TDateTime);
    procedure FIBEventAlerterEventAlert(Sender: TObject; EventName: string;
      EventCount: Integer);
  published
    function getDatabase: TpFIBDatabase;
    function getTransaction: TpFIBTransaction;
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
    function subscribeEvents: boolean;

    function FindDatabaseServer(AHost: string = 'localhost'; APort: Word = 3050; ATimeOut: Word = 100): string;
    function tryLocalDatabaseServer: boolean;

    function getGlobalConfigData(AKeyName: string): variant;
    function checkDataBaseVersion: boolean;
  end;

var
  RemoteDataModule: TRemoteDataModule;

const
  DBPort: Word = 3050;

const
  DBHost: String = 'localhost';

const
  DBUser: String = 'SYSDBA';

const
  DBPassword: String = 'masterkey';

const
  DBLocation: string = 'C:\db\notar.fdb';

const
  DBCharset: string = 'UTF8';

const
  MainDataBaseFile: string = 'notar.fdb';

const
  MainDataBaseLocationDrives: array[0..23] of string = (
    'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
    'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
    'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
  );

const
  MainDataBaseLocations: array[0..3] of string = (
    'db',
    'db\notar',
    'data\notar',
    'Program Files\Notar\data'
  );

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TRemoteDataModule }

function TRemoteDataModule.FindDatabaseServer(AHost: string; APort: Word; ATimeOut: Word): string;
var
  I, I2: Integer;
  IdTCPClient: TIdTCPClient;
  IdIPAddrMon: TIdIPAddrMon;
  IdNetworkCalculator: TIdNetworkCalculator;
begin
  Result := AHost;

  IdTCPClient := TIdTCPClient.Create(Self);
  IdTCPClient.ConnectTimeout := ATimeout;
  IdTCPClient.ReadTimeout := ATimeout;

  IdTCPClient.Host := AHost;
  IdTCPClient.Port := APort;

  try
    IdTCPClient.Connect;
  except
  end;

  if IdTCPClient.Connected then
    begin
      Result := AHost;
      IdTCPClient.Disconnect;
      IdTCPClient.Free;

      Exit;
    end else
      begin
        //not connected
      end;

  IdNetworkCalculator := TIdNetworkCalculator.Create(Self);
  IdNetworkCalculator.NetworkMaskLength := 24;

  IdIPAddrMon := TIdIPAddrMon.Create(Self);
  IdIPAddrMon.ForceCheck;

  for I := 0 to IdIPAddrMon.IPAddresses.Count -1 do
    begin
      IdNetworkCalculator.NetworkAddress.AsString := IdIPAddrMon.IPAddresses[I];
      for I2 := 0 to IdNetworkCalculator.ListIP.Count -1 do
        begin
          IdTCPClient.Host := IdNetworkCalculator.ListIP[I2];
          try
            IdTCPClient.Connect;
          except
          end;

          if IdTCPClient.Connected then
            begin
              Result := IdNetworkCalculator.ListIP[I2];
              IdTCPClient.Disconnect;

              Exit;
            end else
              begin
                //not connected
              end;
          Application.ProcessMessages;
        end;
    end;

  IdTCPClient.Free;
  IdIPAddrMon.Free;
  IdNetworkCalculator.Free;
end;

function TRemoteDataModule.checkDataBaseVersion: boolean;
var
  V1, V2, V3, V4: Word;
  FileVersion: String;
  DBVersion: String;
begin
 GetBuildInfo(V1, V2, V3, V4);
 FileVersion := Format('%s.%s.%s.%s', [IntToStr(V1), IntToStr(V2), IntToStr(V3), IntToStr(V4)]);
 DBVersion := VarToStr(getGlobalConfigData('DB_VERSION'));
 Result := FileVersion = DBVersion;
end;

function TRemoteDataModule.ConnectDataBase: boolean;
var
  I, I2: Word;
  DBServer: string;
  DBLocation: string;
  DBDrive: string;
  isConnected: boolean;
begin
  try
    if tryLocalDatabaseServer then
    begin
      Result := True;

      FIBUpdateTransaction.Active:= True;
      FIBTransaction.Active:= True;
      TableListDataSet.Open;
      MenuTreeDataSet.Open;

      Exit;
    end;

    DBServer := FindDatabaseServer(DBHost, DBPort);

    isConnected := False;

    TfmMain(Application.MainForm).Log('Database @ ' + DBServer);

    for I := Low(MainDataBaseLocationDrives) to High(MainDataBaseLocationDrives) do
      begin
        if isConnected then break;

        for I2 := Low(MainDataBaseLocations) to High(MainDataBaseLocations) do
          begin
            DBDrive := MainDataBaseLocationDrives[I];
            DBLocation := MainDataBaseLocations[I2];

            FIBDatabase.Close;
            FIBDatabase.DBName := Format('%s/%s:%s:\%s\%s', [DBServer, IntToStr(DBPort), DBDrive, DBLocation, MainDataBaseFile]);

            try
              FIBDatabase.Open;
            except
              TfmMain(Application.MainForm).Log('Database file @ ' + FIBDatabase.DBName + ' is not found');
            end;

            if FIBDatabase.Connected then
              begin
                FIBDatabase.AutoReconnect := True;
                isConnected := True;

                Config.WriteString('Database', 'Host', DBServer);
                Config.WriteInteger('Database', 'Port', DBPort);
                Config.WriteString('Database', 'Location', Format('%s:\%s\%s', [DBDrive, DBLocation, MainDataBaseFile]));
                Config.UpdateFile;

                break;
              end;
          end;

      end;
    TfmMain(Application.MainForm).Log('DSN: ' + FIBDatabase.DBName);

    FIBUpdateTransaction.Active:= True;
    FIBTransaction.Active:= True;
    TableListDataSet.Open;
    MenuTreeDataSet.Open;
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
  FIBDatabase.Close;
  FDataSetList := TList.Create;
  FTablesList := TStringList.Create;
end;

procedure TRemoteDataModule.DataModuleDestroy(Sender: TObject);
var
  DataSetItem: Pointer;
  iTablesList: word;
  iFieldsList: word;
begin
{  if FDataSetList.Count >0 then
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
}

  if FDataSetList.Count >0 then
  begin
    for DataSetItem in FDataSetList do
    begin
      try
        unregisterDataSet(DataSetItem);
        TpFIBDataSet(DataSetItem).Close;
      except

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

procedure TRemoteDataModule.FIBEventAlerterEventAlert(Sender: TObject; EventName: string; EventCount: Integer);
var
  TableName: string;
begin
  TfmMain(Application.MainForm).Log('Received event:  ' + EventName);
  if AnsiPos('UPDATE_', EventName) >0 then
  begin
    TableName := EventName;
    Delete(TableName, 1, 7);
    notifyDataSets(TableName);
  end;

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
    s := Format('CREATE OR ALTER VIEW CAT_NOTR_%s(%s) AS SELECT %s FROM CATALOG_NOTARIES GROUP BY %s ORDER BY %s;', [fields[i], fields[i], fields[i], fields[i], fields[i]]);
    log(s);
  end;

end;

function TRemoteDataModule.getDatabase: TpFIBDatabase;
begin
  Result := FIBDatabase;
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

function TRemoteDataModule.getGlobalConfigData(AKeyName: string): variant;
begin
  GlobalConfigurationDataSet.Close;
  GlobalConfigurationDataSet.ParamByName('KEY').AsString := AKeyName;
  GlobalConfigurationDataSet.Open;
  Result := GlobalConfigurationDataSetVALUE_DATA.AsVariant;
  GlobalConfigurationDataSet.Close;
end;

function TRemoteDataModule.getTransaction: TpFIBTransaction;
begin
  Result := FIBTransaction;
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
      //if not Assigned(ValidateObj(DataSetItem)) then
      if Length(TpFIBDataSet(DataSetItem).Description) = 0 then
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

function TRemoteDataModule.subscribeEvents: boolean;
begin
  EventsListDataSet.Open;
  EventsListDataSet.First;
  while not EventsListDataSet.Eof do
  begin
    FIBEventAlerter.Events.Add(EventsListDataSetEVENT_NAME.AsString);
    TfmMain(Application.MainForm).Log('Subscribed to event:  ' + EventsListDataSetEVENT_NAME.AsString);
    EventsListDataSet.Next;
  end;
  EventsListDataSet.Close;
  FIBEventAlerter.AutoRegister := True;
end;

function TRemoteDataModule.tryLocalDatabaseServer: boolean;
var
  I, I2: Word;
  tDBServer: string;
  tDBLocation: string;
  tDBDrive: string;
  isConnected: boolean;
  tDBPort: Word;
  tDBHost: String;
  tDBUser: String;
  tDBPassword: String;
  tDBCharset: string;
begin
  Result := False;

  try
    tDBServer := Config.ReadString('Database', 'Host', 'localhost');
    tDBPort := Config.ReadInteger('Database', 'Port', 3050);

    tDBUser := Config.ReadString('Database', 'User', 'SYSDBA');
    tDBPassword := Config.ReadString('Database', 'Password', 'masterkey');

    tDBLocation := Config.ReadString('Database', 'Location', 'C:\db\notar.fdb');
    tDBCharset := Config.ReadString('Database', 'Charset', 'UTF8');

    isConnected := False;

    FIBDatabase.Close;
    FIBDatabase.ConnectParams.UserName := tDBUser;
    FIBDatabase.ConnectParams.Password := tDBPassword;

    FIBDatabase.ConnectParams.CharSet := tDBCharset;

    FIBDatabase.DBName := Format('%s/%s:%s', [tDBServer, IntToStr(tDBPort), tDBLocation]);

    TfmMain(Application.MainForm).Log('Database probe from configuration @ ' + FIBDatabase.DBName);

    try
      FIBDatabase.Open;
    except
      TfmMain(Application.MainForm).Log('Database file from configuration @ ' + FIBDatabase.DBName + ' is not found');
    end;

    if FIBDatabase.Connected then
      begin
        FIBDatabase.AutoReconnect := True;
        Result := True;
        Exit;
      end;

    for I := Low(MainDataBaseLocationDrives) to High(MainDataBaseLocationDrives) do
      begin
        if isConnected then break;

        for I2 := Low(MainDataBaseLocations) to High(MainDataBaseLocations) do
          begin
            tDBDrive := MainDataBaseLocationDrives[I];
            tDBLocation := MainDataBaseLocations[I2];

            FIBDatabase.Close;
            FIBDatabase.DBName := Format('%s/%s:%s:\%s\%s', [tDBServer, IntToStr(tDBPort), tDBDrive, tDBLocation, MainDataBaseFile]);

            try
              FIBDatabase.Open;
            except
              TfmMain(Application.MainForm).Log('Database file @ ' + FIBDatabase.DBName + ' is not found');
            end;

            if FIBDatabase.Connected then
              begin
                FIBDatabase.AutoReconnect := True;
                isConnected := True;
                Config.WriteString('Database', 'Host', tDBServer);
                Config.WriteInteger('Database', 'Port', tDBPort);
                Config.WriteString('Database', 'Location', Format('%s:\%s\%s', [tDBDrive, tDBLocation, MainDataBaseFile]));
                Config.UpdateFile;

                break;
              end;
          end;

      end;
    TfmMain(Application.MainForm).Log('DSN: ' + FIBDatabase.DBName);
  finally
    Result := FIBDatabase.Connected;
  end;
end;

function TRemoteDataModule.unregisterDataSet(const ADataSet: TpFIBDataSet): boolean;
begin
  FDataSetList.Remove(ADataSet);
end;

end.
