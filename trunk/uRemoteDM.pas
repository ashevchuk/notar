unit uRemoteDM;

interface

uses
  System.SysUtils, System.Classes, FIBDatabase, pFIBDatabase, pFIBSQLLog,
  SIBEABase, SIBFIBEA, FIBSQLMonitor, pFIBErrorHandler;

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

end.
