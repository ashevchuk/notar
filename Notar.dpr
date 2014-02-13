program Notar;

uses
  EMemLeaks,
  EResLeaks,
  EDialogWinAPIMSClassic,
  EDialogWinAPIEurekaLogDetailed,
  EDialogWinAPIStepsToReproduce,
  EDebugExports,
  EDebugJCL,
  EMapWin32,
  EAppVCL,
  ExceptionLog7,
  Vcl.Forms,
  Vcl.Dialogs,
  ufmMain in 'ufmMain.pas' {fmMain},
  ufmSplash in 'ufmSplash.pas' {fmSplash},
  uRemoteDM in 'uRemoteDM.pas' {RemoteDataModule: TDataModule},
  uLicenseDM in 'uLicenseDM.pas' {LicenseDataModule: TDataModule},
  uUtils in 'uUtils.pas',
  uTypes in 'uTypes.pas',
  uDMConfig in 'uDMConfig.pas' {Config: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Notar';

  Application.MainFormOnTaskbar := False;
  Application.ShowMainForm := False;

  fmSplash := TfmSplash.Create(Application);
  fmSplash.Show;
  fmSplash.Update;

  fmSplash.ShowMessage('Checking registration information...');
  LicenseDataModule := TLicenseDataModule.Create(Application);
  LicenseDataModule.CheckLicense;

  fmSplash.UpdateRegistrationInformation;
  fmSplash.Update;

  fmSplash.ShowMessage('Creating main form...');
  Application.CreateForm(TfmMain, fmMain);

  fmSplash.ShowMessage('Reading configuration...');
  Application.CreateForm(TConfig, Config);

  fmSplash.ShowMessage('Creating data module...');
  Application.CreateForm(TRemoteDataModule, RemoteDataModule);

  fmSplash.ShowMessage('Connecting to Database...');
  RemoteDataModule.ConnectDataBase;

  fmSplash.ShowMessage('Checking Database version...');
  if (not RemoteDataModule.checkDataBaseVersion) then
  begin
    fmSplash.ShowMessage('Warning! Please, check the Database version.');
    ShowMessage('Database to old! Please, check the Database version.');
  end;

  fmSplash.ShowMessage('Preloading tables data...');
  RemoteDataModule.preloadTablesData;

  fmSplash.ShowMessage('Subscribe to global events...');
  RemoteDataModule.subscribeEvents;

  fmSplash.ShowMessage('Starting Application...');
  Application.ShowMainForm := True;

  fmSplash.Hide;
  fmSplash.Close;
  fmSplash.Free;

  Application.Run;

end.


