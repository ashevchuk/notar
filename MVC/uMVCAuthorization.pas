unit uMVCAuthorization;

interface

uses
  System.SysUtils, System.Classes, Forms,
  ufmMain, uUtils, uRemoteDM, uTypes, Data.DB, FIBDataSet, pFIBDataSet,
  PaxCompiler, PaxRunner, PaxProgram, PaxInvoke, PaxEval,
  PAXCOMP_CONSTANTS,
  IMPORT_COMMON,
  uDMConfig, ppComm, ppRelatv, ppDB, ppDBPipe, ppParameter, ppProd, ppClass,
  ppReport, ppEndUsr, ppDesignLayer, ppBands, ppStrtch, ppSubRpt, ppCtrls,
  ppPrnabl, ppCache;

type
  TMVCAuthorization = class(TDataModule)
    ConstituentDataSource: TDataSource;
    RepresentativesDataSource: TDataSource;
    AuthorizationDBPipeline: TppDBPipeline;
    ConstituentDBPipeline: TppDBPipeline;
    RepresentativesDBPipeline: TppDBPipeline;
    ppDesigner: TppDesigner;
    ppReport: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    Notary: TpFIBDataSet;
    NotaryDataSource: TDataSource;
    NotaryDBPipeline: TppDBPipeline;
  published
    Authorization: TpFIBDataSet;
    Constituent: TpFIBDataSet;
    Representatives: TpFIBDataSet;
    AuthorizationDataSource: TDataSource;
    PaxCompiler: TPaxCompiler;
    PaxPascalLanguage: TPaxPascalLanguage;
    PaxProgram: TPaxProgram;
    PaxInvoke: TPaxInvoke;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    function LogToMain(AMsg: string): boolean;
    function getRepresentatives: TpFIBDataSet;
  private

  public
    function setID(AID: string): boolean;
    function buildReport(AInputFileName: string; AOutputFileName: string): boolean;
    function GetCustomTagValue(const Tag: AnsiString; var Value: string): boolean;
    function prepareScript: boolean;
    procedure EditReport;
  end;

var
  MVCAuthorization: TMVCAuthorization;

implementation
uses uDbFreeReporter, uFreeReporter,
  uStrUtils,
  DateUtils;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TMVCAuthorization }

function TMVCAuthorization.buildReport(AInputFileName: string; AOutputFileName: string): boolean;
var
  TemplateName, OutputName, sTemplate: string;
  Reporter: TDbFreeReporter;
begin
  prepareScript;

  sTemplate := AInputFileName;
  TemplateName := TFmMain(Application.MainForm).CurrentDir + 'Templates\Repository\' + sTemplate;
  OutputName := TFmMain(Application.MainForm).CurrentDir + 'Templates\Output\' + StringReplace(sTemplate, '.template.', '.', [rfIgnoreCase]);

  Reporter := TDbFreeReporter.Create;
  Reporter.OnGetCustomTagValue := GetCustomTagValue;
  Reporter.AddDataSet(Authorization);
  Reporter.AddDataSet(Constituent);
  Reporter.AddDataSet(Representatives);
  Reporter.AddDataSet(Notary);
  Reporter.CreateReport(TemplateName, AOutputFileName);
  Reporter.Free;
end;

procedure TMVCAuthorization.DataModuleCreate(Sender: TObject);
begin
//
end;

procedure TMVCAuthorization.DataModuleDestroy(Sender: TObject);
begin
  Constituent.Close;
  Representatives.Close;
  Notary.Close;
  Authorization.Close;
end;

procedure TMVCAuthorization.EditReport;
begin
  ppDesigner.ShowModal;
  ppReport.PrintReport;
end;

function TMVCAuthorization.GetCustomTagValue(const Tag: AnsiString; var Value: String): boolean;
var
  I: Integer;
  PaxEval: TPaxEval;
begin
  Value := '';
  Log('[d] request tag: ' + Tag);

  PaxEval := TPaxEval.Create(self);
  PaxEval.RegisterCompiler(PaxCompiler, PaxProgram);

  try
    PaxEval.CompileExpression(Tag);
    PaxEval.Run;

    Value := PaxEval.ResultAsString;
  except
    Value := '[!ERROR: (' + Tag + ')]';

    for I:=0 to PaxCompiler.ErrorCount -1 do
    begin
      Log('[!] Program error:' + PaxCompiler.ErrorMessage[I]);
      Value := Value + PaxCompiler.ErrorMessage[I];
    end;

    for I:=0 to PaxEval.ErrorCount -1 do
      begin
        Log('[!] Program eval error:' + PaxEval.ErrorMessage[I]);
        Value := Value + PaxEval.ErrorMessage[I];
      end;

  end;

  PaxEval.Reset;
  PaxEval.Free;

  Log('[i] interpreted as: '+Tag+'='+Value);

  Result := True;
end;

function TMVCAuthorization.LogToMain(AMsg: string): boolean;
begin
  Log(AMsg);
end;

function TMVCAuthorization.prepareScript: boolean;
var
  I: Integer;
  funcPointer: Pointer;
  funcHandle: Integer;

  mainHandle: Integer;
  datasetHandle: Integer;
  fieldHandle: Integer;
  RepresentativesHandle: Integer;
  res: Variant;
begin
  PaxCompiler.Reset;
  PaxCompiler.RegisterLanguage(PaxPascalLanguage);

  PaxCompiler.AddModule('1', PaxPascalLanguage.LanguageName);

  mainHandle := PaxCompiler.RegisterClassType(0, TMVCAuthorization);
  datasetHandle := PaxCompiler.RegisterClassType(0, TpFIBDataSet);
  fieldHandle := PaxCompiler.RegisterClassType(0, TField);

  PaxCompiler.RegisterHeader(0, 'function GetUnitCase(const AValue: Integer; const AUnit1, AUnit2, AUnit3: String): String;', @uStrUtils.GetUnitCase);

  PaxCompiler.RegisterHeader(0, 'function YearsBetween(const ANow, AThen: TDateTime): Integer;', @DateUtils.YearsBetween);

  PaxCompiler.RegisterHeader(0, 'function Month_Case_Nominative(ADate: TDateTime): string;', @uStrUtils.Month_Case_Nominative);
  PaxCompiler.RegisterHeader(0, 'function Month_Case_Genitive(ADate: TDateTime): string;', @uStrUtils.Month_Case_Genitive);

  PaxCompiler.RegisterHeader(0, 'function ExtraSpell(Number:extended; Param: string): string;', @uStrUtils.ExtraSpell);

  PaxCompiler.RegisterHeader(0, 'procedure Log(AText: string);', @ufmMain.Log);
  PaxCompiler.RegisterHeader(datasetHandle, 'function FieldByName(const FieldName: string): TField;', @TpFIBDataSet.FieldByName);


  PaxCompiler.RegisterVariable(0, 'DataModule: TMVCAuthorization', @Self);

  RepresentativesHandle := PaxCompiler.RegisterVariable(0, 'Representatives', datasetHandle, @Representatives);
  RepresentativesHandle := PaxCompiler.RegisterVariable(0, 'Authorization', datasetHandle, @Authorization);
  RepresentativesHandle := PaxCompiler.RegisterVariable(0, 'Constituent', datasetHandle, @Constituent);
  //Representatives.RecNo

  PaxCompiler.AddCodeFromFile('1', TFmMain(Application.MainForm).CurrentDir + 'lib/' + 'Globals.pas');

  PaxPascalLanguage.SetCallConv(__ccREGISTER);

  if PaxCompiler.Compile(PaxProgram) then
  begin
{    funcHandle := PaxCompiler.GetHandle(0, 'Count', true);
    funcPointer := PaxProgram.GetAddress(funcHandle);

    PaxInvoke.Address := funcPointer;
    PaxInvoke.This := nil;
    PaxInvoke.ClearArguments;
    PaxInvoke.AddArgAsObject(Representatives);
    PaxInvoke.SetResultAsInteger;
    PaxInvoke.CallConv := __ccCDECL;

    PaxProgram.SetEntryPoint(PaxInvoke);   }
    PaxProgram.Run;

 try
 {   Res := Integer(PaxInvoke.GetResultPtr^);    }
 except
 { Log('error');  }
 end;
{ Log(IntToStr(Res));       }

  end else for I:=0 to PaxCompiler.ErrorCount -1 do ufmMain.Log(PaxCompiler.ErrorMessage[I]);
end;

function TMVCAuthorization.getRepresentatives: TpFIBDataSet;
begin
 Result := Representatives;
end;

function TMVCAuthorization.setID(AID: string): boolean;
begin
  Authorization.Close;
  Authorization.ParamByName('ID').AsString := AID;
  Authorization.Open;

  Constituent.Open;
  Representatives.Open;
  Notary.Open;

  Notary.FetchAll;
  Authorization.FetchAll;
  Constituent.FetchAll;
  Representatives.FetchAll;
end;

end.
