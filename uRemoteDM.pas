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
    FieldsDataSet: TpFIBDataSet;
  private
    { Private declarations }
  public
    function ConnectDataBase: boolean;
    function getFieldInfo(const ATable: string; AField: string; AType: string = 'FIELD_DESCRIPTION') : string;
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
begin
  FieldsDataSet.Close;
  FieldsDataSet.ParamByName('TABLE_NAME').AsString := ATable;
  FieldsDataSet.ParamByName('FIELD_NAME').AsString := AField;
  FieldsDataSet.Open;
  Result := FieldsDataSet.FieldByName(AType).AsString;
  FieldsDataSet.Close;
end;

end.
