unit uRemoteDM;

interface

uses
  System.SysUtils, System.Classes, FIBDatabase, pFIBDatabase, pFIBSQLLog,
  SIBEABase, SIBFIBEA, FIBSQLMonitor, pFIBErrorHandler, Data.DB, FIBDataSet,
  pFIBDataSet;

type
  TRemoteDataModule = class(TDataModule)
    FIBDatabase: TpFIBDatabase;
    FIBTransaction: TpFIBTransaction;
    FIBUpdateTransaction: TpFIBTransaction;
    FibErrorHandler: TpFibErrorHandler;
    FIBSQLMonitor: TFIBSQLMonitor;
    SIBfibEventAlerter: TSIBfibEventAlerter;
    FIBSQLLogger: TFIBSQLLogger;
  private
    { Private declarations }
  public
    function ConnectDataBase: boolean;
    function getFieldInfo(const ATable: string; AField: string; AType: string = 'FIELD_DESCRIPTION') : string;
    function getFields(const ATable: string) : string;
    function getFieldsList(const ATable: string) : TStringList;
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

function TRemoteDataModule.getFieldInfo(const ATable: string; AField, AType: string): string;
var
  FieldsDataSet: TpFIBDataSet;
begin
  FieldsDataSet := TpFIBDataSet.Create(self);
  FieldsDataSet.Database := FIBDatabase;
  FieldsDataSet.Transaction := FIBTransaction;
  FieldsDataSet.UpdateTransaction := FIBUpdateTransaction;
  FieldsDataSet.Close;

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
  FieldsListDataSet := TpFIBDataSet.Create(self);
  FieldsListDataSet.Database := FIBDatabase;
  FieldsListDataSet.Transaction := FIBTransaction;
  FieldsListDataSet.UpdateTransaction := FIBUpdateTransaction;
  FieldsListDataSet.Close;

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
  FieldsListDataSet := TpFIBDataSet.Create(self);
  FieldsListDataSet.Database := FIBDatabase;
  FieldsListDataSet.Transaction := FIBTransaction;
  FieldsListDataSet.UpdateTransaction := FIBUpdateTransaction;
  FieldsListDataSet.Close;

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

end.
