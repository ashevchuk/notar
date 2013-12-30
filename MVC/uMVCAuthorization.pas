unit uMVCAuthorization;

interface

uses
  System.SysUtils, System.Classes, Forms,
  ufmMain, uUtils, uRemoteDM, uTypes, Data.DB, FIBDataSet, pFIBDataSet;

type
  TMVCAuthorization = class(TDataModule)
    Authorization: TpFIBDataSet;
    Constituent: TpFIBDataSet;
    Representatives: TpFIBDataSet;
    AuthorizationDataSource: TDataSource;
  private
    { Private declarations }
  public
    function setID(AID: string): boolean;
    function buildReport(AInputFileName: string; AOutputFileName: string): boolean;
    function GetCustomTagValue(const Tag: AnsiString;  var Value: string): boolean;
  end;

var
  MVCAuthorization: TMVCAuthorization;

implementation
uses uDbFreeReporter, uFreeReporter;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TMVCAuthorization }

function TMVCAuthorization.buildReport(AInputFileName: string; AOutputFileName: string): boolean;
var
  TemplateName, OutputName, sTemplate: string;
  Reporter: TDbFreeReporter;
begin
  sTemplate := AInputFileName;
  TemplateName := TFmMain(Application.MainForm).CurrentDir + 'Templates\Repository\' + sTemplate;
  OutputName := TFmMain(Application.MainForm).CurrentDir + 'Templates\Output\' + StringReplace(sTemplate, '.template.', '.', [rfIgnoreCase]);

  Reporter := TDbFreeReporter.Create;
  Reporter.OnGetCustomTagValue := GetCustomTagValue;
  Reporter.AddDataSet(Authorization);
  Reporter.AddDataSet(Constituent);
  Reporter.AddDataSet(Representatives);
  Reporter.CreateReport(TemplateName, AOutputFileName);
  Reporter.Free;
  Constituent.Close;
  Representatives.Close;
  Authorization.Close;
end;

function TMVCAuthorization.GetCustomTagValue(const Tag: AnsiString; var Value: string): boolean;
begin
  Value := 'test';
end;

function TMVCAuthorization.setID(AID: string): boolean;
begin
  Authorization.Close;
  Authorization.ParamByName('ID').AsString := AID;
  Authorization.Open;
  Constituent.Open;
  Representatives.Open;
end;

end.
