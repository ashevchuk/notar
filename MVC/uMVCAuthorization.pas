unit uMVCAuthorization;

interface

uses
  System.SysUtils, System.Classes, Forms,
  ufmMain, uUtils, uRemoteDM, uTypes, Data.DB, FIBDataSet, pFIBDataSet,
  PaxCompiler, PaxRunner, PaxProgram, PaxInvoke, PaxEval,
  PAXCOMP_CONSTANTS,
  IMPORT_COMMON;

type
  TMVCAuthorization = class(TDataModule)
    ConstituentDataSource: TDataSource;
    RepresentativesDataSource: TDataSource;
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
  prepareScript;

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
end;

procedure TMVCAuthorization.DataModuleCreate(Sender: TObject);
begin
//
end;

procedure TMVCAuthorization.DataModuleDestroy(Sender: TObject);
begin
  Constituent.Close;
  Representatives.Close;
  Authorization.Close;
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

    for I:=0 to PaxCompiler.ErrorCount -1 do Log('[!] Program error:' + PaxCompiler.ErrorMessage[I]);
    for I:=0 to PaxEval.ErrorCount -1 do Log('[!] Program eval error:' + PaxEval.ErrorMessage[I]);
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

  PaxCompiler.RegisterHeader(datasetHandle, 'function FieldByName(const FieldName: string): TField;', @TpFIBDataSet.FieldByName);


  PaxCompiler.RegisterVariable(0, 'DataModule: TMVCAuthorization', @Self);

  RepresentativesHandle := PaxCompiler.RegisterVariable(0, 'Representatives', datasetHandle, @Representatives);
  RepresentativesHandle := PaxCompiler.RegisterVariable(0, 'Authorization', datasetHandle, @Authorization);
  RepresentativesHandle := PaxCompiler.RegisterVariable(0, 'Constituent', datasetHandle, @Constituent);

  PaxCompiler.AddCode('1', 'uses SysUtils;');

  PaxCompiler.AddCode('1', 'function FieldByName(ADataSet: TpFIBDataSet; AFieldName: string): string; cdecl;');
  PaxCompiler.AddCode('1', 'begin');
  PaxCompiler.AddCode('1', '  Result := ADataSet.FieldByName(AFieldName).AsString;');
  PaxCompiler.AddCode('1', 'end;');

  PaxCompiler.AddCode('1', 'function Count(ADataSet: TpFIBDataSet): Integer; cdecl;');
  PaxCompiler.AddCode('1', 'begin');
  PaxCompiler.AddCode('1', '  Result := ADataSet.RecordCount;');
  PaxCompiler.AddCode('1', 'end;');

  PaxCompiler.AddCode('1', 'function RepresentativesCount: Integer; cdecl;');
  PaxCompiler.AddCode('1', 'begin');
  PaxCompiler.AddCode('1', '  Result := Representatives.RecordCount;');
  PaxCompiler.AddCode('1', 'end;');

  PaxCompiler.AddCode('1', 'function ifSingle(ACheckValue: integer; AResultString: string): string; cdecl;');
  PaxCompiler.AddCode('1', 'begin');
  PaxCompiler.AddCode('1', '  if ACheckValue = 1 then');
  PaxCompiler.AddCode('1', '    Result := AResultString');
  PaxCompiler.AddCode('1', '  else Result := '''';');
  PaxCompiler.AddCode('1', 'end;');

  PaxCompiler.AddCode('1', 'function ifNone(ACheckValue: integer; AResultString: string): string; cdecl;');
  PaxCompiler.AddCode('1', 'begin');
  PaxCompiler.AddCode('1', '  if ACheckValue = 0 then');
  PaxCompiler.AddCode('1', '    Result := AResultString');
  PaxCompiler.AddCode('1', '  else Result := '''';');
  PaxCompiler.AddCode('1', 'end;');

  PaxCompiler.AddCode('1', 'function ifMore(ACheckValue: integer; AResultString: string): string; cdecl;');
  PaxCompiler.AddCode('1', 'begin');
  PaxCompiler.AddCode('1', '  if ACheckValue > 1 then');
  PaxCompiler.AddCode('1', '    Result := AResultString');
  PaxCompiler.AddCode('1', '  else Result := '''';');
  PaxCompiler.AddCode('1', 'end;');

  PaxCompiler.AddCode('1', 'function ifAny(ACheckValue: integer; AResultString: string): string; cdecl;');
  PaxCompiler.AddCode('1', 'begin');
  PaxCompiler.AddCode('1', '  if ACheckValue > 0 then');
  PaxCompiler.AddCode('1', '    Result := AResultString');
  PaxCompiler.AddCode('1', '  else Result := '''';');
  PaxCompiler.AddCode('1', 'end;');

  PaxCompiler.AddCode('1', 'function ifFieldEq(ADataSet: TpFIBDataSet; AFieldName: string; AValue: string; AResultString: string): string; cdecl;');
  PaxCompiler.AddCode('1', 'begin');
  PaxCompiler.AddCode('1', '  if ADataSet.FieldByName(AFieldName).AsString = AValue then');
  PaxCompiler.AddCode('1', '    Result := AResultString');
  PaxCompiler.AddCode('1', '  else Result := '''';');
  PaxCompiler.AddCode('1', 'end;');

  PaxCompiler.AddCode('1', 'begin');
  PaxCompiler.AddCode('1', 'end.');

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
end;

end.
