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
  ufmMain in 'ufmMain.pas' {fmMain},
  ufmSplash in 'ufmSplash.pas' {fmSplash},
  uRemoteDM in 'uRemoteDM.pas' {RemoteDataModule: TDataModule},
  uLicenseDM in 'uLicenseDM.pas' {LicenseDataModule: TDataModule},
  ufmIDEDialog in 'ufmIDEDialog.pas',
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

  fmSplash.ShowMessage('Preloading tables data...');
  RemoteDataModule.preloadTablesData;

  fmSplash.ShowMessage('Starting Application...');
  Application.ShowMainForm := True;

  fmSplash.Hide;
  fmSplash.Close;
  fmSplash.Free;

  Application.Run;

//  LicenseDataModule.Free;
end.


