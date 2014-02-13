unit uMVCAuthorization;

interface

uses
  System.SysUtils, System.Classes, Forms,
  ufmMain, uUtils, uRemoteDM, uTypes, Data.DB, FIBDataSet, pFIBDataSet,
  PaxCompiler, PaxRunner, PaxProgram, PaxEval,
  PAXCOMP_CONSTANTS,
  IMPORT_COMMON,
  Generics.Collections,
  System.Variants,
  uDMConfig;

type
  TMVCAuthorization = class(TDataModule)
    ConstituentDataSource: TDataSource;
    RepresentativesDataSource: TDataSource;
    Notary: TpFIBDataSet;
    NotaryDataSource: TDataSource;
  published
    Authorization: TpFIBDataSet;
    Constituent: TpFIBDataSet;
    Representatives: TpFIBDataSet;
    AuthorizationDataSource: TDataSource;
    PaxCompiler: TPaxCompiler;
    PaxPascalLanguage: TPaxPascalLanguage;
    PaxProgram: TPaxProgram;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    function LogToMain(AMsg: string): boolean;
    function getRepresentatives: TpFIBDataSet;
  private
    FInterpretersCollection: TObjectDictionary<cardinal, TMemoryStream>;
    procedure ReportProgress(const CurrentTag: string; Total: Word; Current: Word);
  public
    function setID(AID: string): boolean;
    function buildReport(AInputFileName: string; AOutputFileName: string): boolean;
    function GetCustomTagValue(const Tag: AnsiString; var Value: string): boolean;
    function GetCustomTagValue1(const Tag: AnsiString; var Value: String): boolean;
    function GetCustomTagValue2(const Tag: AnsiString; var Value: String): boolean;
    function initProgram(AProgram: TPaxProgram): boolean;
    function prepareScript: boolean;
    procedure EditReport;
    function resultFromProgram(const APaxProgram: TPaxProgram): variant;
  end;

var
  MVCAuthorization: TMVCAuthorization;

implementation
uses ShaCrcUnit, uDbFreeReporter, uFreeReporter,
  uStrUtils,
  DateUtils,
  Globals;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TMVCAuthorization }

function TMVCAuthorization.buildReport(AInputFileName: string; AOutputFileName: string): boolean;
var
  Reporter: TDbFreeReporter;
begin
  prepareScript;

  Reporter := TDbFreeReporter.Create;

  Reporter.OnGetCustomTagValue := GetCustomTagValue;
  Reporter.OnProgress := ReportProgress;

  Reporter.AddDataSet(Authorization);
  Reporter.AddDataSet(Constituent);
  Reporter.AddDataSet(Representatives);
  Reporter.AddDataSet(Notary);
  TfmMain(Application.MainForm).ShowStatusProgressBar;
  Reporter.CreateReport(AInputFileName, AOutputFileName);
  TfmMain(Application.MainForm).HideStatusProgressBar;
  Reporter.Free;
end;

procedure TMVCAuthorization.DataModuleCreate(Sender: TObject);
begin
//  PaxEval := TPaxEval.Create(nil);
  FInterpretersCollection := TObjectDictionary<cardinal, TMemoryStream>.Create([doOwnsValues]);
end;

procedure TMVCAuthorization.DataModuleDestroy(Sender: TObject);
var
  CRC32: Cardinal;
  ProgramInterpreterState: TMemoryStream;
begin
  Constituent.Close;
  Representatives.Close;
  Notary.Close;
  Authorization.Close;

//  if Assigned(PaxEval) then PaxEval.Free;

  for CRC32 in FInterpretersCollection.Keys do
  begin
    FInterpretersCollection.TryGetValue(CRC32, ProgramInterpreterState);
    ProgramInterpreterState.Free;
  end;

  FInterpretersCollection.Free;
end;

procedure TMVCAuthorization.EditReport;
begin

end;

function TMVCAuthorization.GetCustomTagValue1(const Tag: AnsiString; var Value: String): boolean;
var
  I: Integer;
  CRC32: Cardinal;
  ProgramInterpreterState: TMemoryStream;
  ProgramInterpreter: TPaxProgram;
begin
  Value := '';

  CRC32 := ShaCrcRefresh($FFFFFFFF, @Tag[1], Length(Tag));
  Log(Format('CRC32=%.8x',[not CRC32]));

  ProgramInterpreter := TPaxProgram.Create(Self);

  if FInterpretersCollection.TryGetValue(CRC32, ProgramInterpreterState) then
  begin
    ProgramInterpreterState.Position := 0;
    ProgramInterpreter.LoadFromStream(ProgramInterpreterState);
    Log('Loaded from cache');
  end
    else
  begin
    prepareScript;
    if PaxCompiler.CompileExpression(Tag, ProgramInterpreter, PaxPascalLanguage.LanguageName) then
    begin
      ProgramInterpreterState := TMemoryStream.Create;
      ProgramInterpreter.SaveToStream(ProgramInterpreterState);
      ProgramInterpreterState.Position := 0;
      FInterpretersCollection.Add(CRC32, ProgramInterpreterState);
      Log('Compiled and saved');
    end;
  end;

  try

    ProgramInterpreter.Run;

    Value := String(ProgramInterpreter.ResultPtr^);

  except
    Value := '[!ERROR: (' + Tag + ')]';

    for I:=0 to PaxCompiler.ErrorCount -1 do
    begin
      Log('[!] Program error:' + PaxCompiler.ErrorMessage[I]);
      Value := Value + PaxCompiler.ErrorMessage[I];
    end;

  end;

  ProgramInterpreter.Free;

  Log('[i]: '+Tag+'='+Value);

  Result := True;
end;

function TMVCAuthorization.initProgram(AProgram: TPaxProgram): boolean;
begin
//  AProgram.RegisterClassType(0, TMVCAuthorization);
//  AProgram.RegisterClassType(0, TpFIBDataSet);
//  AProgram.RegisterClassType(0, TField);
{  AProgram.SetAddress();

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
  RepresentativesHandle := PaxCompiler.RegisterVariable(0, 'Constituent', datasetHandle, @Constituent);}
end;

function TMVCAuthorization.GetCustomTagValue2(const Tag: AnsiString; var Value: String): boolean;
var
  I: Integer;
  CRC32: Cardinal;
  ProgramInterpreterState: TMemoryStream;
  ProgramInterpreter: TPaxProgram;
  PaxEval: TPaxEval;
begin
  Value := '';
  Log('[d] request tag: ' + Tag);

   CRC32 := ShaCrcRefresh($FFFFFFFF, @Tag[1], Length(Tag));
   Log(Format('CRC32=%.8x',[not CRC32]));

  ProgramInterpreterState := TMemoryStream.Create;
  if FInterpretersCollection.TryGetValue(CRC32, ProgramInterpreterState) then
  begin
    Log(IntToStr(ProgramInterpreterState.Size));
    ProgramInterpreterState.Position := 0;
    PaxProgram.LoadFromStream(ProgramInterpreterState);
    initProgram(PaxProgram);
    PaxProgram.Run;

    Log('Loaded from cache');
  end  else
  begin

//    prepareScript;
    PaxEval := TPaxEval.Create(nil);
    PaxEval.RegisterCompiler(PaxCompiler, PaxProgram);

    PaxEval.CompileExpression(Tag);

//    if PaxCompiler.CompileExpression(Tag, PaxProgram, PaxPascalLanguage.LanguageName) then
    if PaxEval.ErrorCount = 0 then
    begin
      if Assigned(ProgramInterpreterState) then ProgramInterpreterState.Free;
      ProgramInterpreterState := TMemoryStream.Create;

      PaxProgram.SaveToStream(ProgramInterpreterState);
      ProgramInterpreterState.Position := 0;
//      FInterpretersCollection.Add(CRC32, ProgramInterpreterState);
      Log('Compiled and saved');
    end else
      begin
        for I:=0 to PaxCompiler.ErrorCount -1 do
        begin
          Log('[!] Precompile error:' + PaxCompiler.ErrorMessage[I]);
          Value := Value + PaxCompiler.ErrorMessage[I];
        end;
      end;
  end;

//    PaxEval.CompileExpression(Tag);
  try
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

function TMVCAuthorization.GetCustomTagValue(const Tag: AnsiString; var Value: String): boolean;
var
  I: Integer;
  CRC32: Cardinal;
  ProgramInterpreterState: TMemoryStream;
  ProgramInterpreter: TPaxProgram;
  PaxEval: TPaxEval;
begin
  Value := '';
  Log('[d] request tag: ' + Tag);

   CRC32 := ShaCrcRefresh($FFFFFFFF, @Tag[1], Length(Tag));
   Log(Format('CRC32=%.8x',[not CRC32]));

  ProgramInterpreterState := TMemoryStream.Create;
  if FInterpretersCollection.TryGetValue(CRC32, ProgramInterpreterState) then
  begin
    Log(IntToStr(ProgramInterpreterState.Size));

    PaxProgram.LoadFromStream(ProgramInterpreterState);
    //initProgram(PaxProgram);
    //PaxProgram.Run;

    Log('Loaded from cache');
  end  else
  begin
    PaxCompiler.ResetCompilation;
    if PaxCompiler.CompileExpression(Tag, PaxProgram, PaxPascalLanguage.LanguageName) then
    begin
      ProgramInterpreterState := TMemoryStream.Create;

      PaxProgram.SaveToStream(ProgramInterpreterState);
      ProgramInterpreterState.Position := 0;
//      FInterpretersCollection.Add(CRC32, ProgramInterpreterState);
      Log('Compiled and saved');
    end else
      begin
        for I:=0 to PaxCompiler.ErrorCount -1 do
        begin
          Log('[!] Precompile error:' + PaxCompiler.ErrorMessage[I]);
          Value := Value + PaxCompiler.ErrorMessage[I];
        end;
      end;
  end;

//    PaxEval.CompileExpression(Tag);
  try
    PaxProgram.Run;
    Value := VarToStr(resultFromProgram(PaxProgram));
  except
    Value := '[!ERROR: (' + Tag + ')]' + Value;
  end;

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

//  PaxPascalLanguage.SetCallConv(__ccCDECL);
//  PaxPascalLanguage.SetCallConv(__ccSTDCALL);
//  PaxPascalLanguage.SetCallConv(__ccREGISTER);
//  PaxPascalLanguage.SetCallConv(__ccCDECL);
//  PaxPascalLanguage.SetCallConv(__ccPASCAL);
//  PaxPascalLanguage.SetCallConv(__ccSAFECALL);
//  PaxPascalLanguage.SetCallConv(__ccMSFASTCALL);

  PaxCompiler.RegisterLanguage(PaxPascalLanguage);

//  PaxCompiler.AddModule('main', PaxPascalLanguage.LanguageName);

//  mainHandle := PaxCompiler.RegisterClassType(0, TMVCAuthorization);
  datasetHandle := PaxCompiler.RegisterClassType(0, TpFIBDataSet);
  fieldHandle := PaxCompiler.RegisterClassType(0, TField);

  PaxCompiler.RegisterHeader(0, 'function GetUnitCase(const AValue: Integer; const AUnit1, AUnit2, AUnit3: String): String;', @uStrUtils.GetUnitCase);

  PaxCompiler.RegisterHeader(0, 'function YearsBetween(const ANow, AThen: TDateTime): Integer;', @DateUtils.YearsBetween);

  PaxCompiler.RegisterHeader(0, 'function Month_Case_Nominative(ADate: TDateTime): string;', @uStrUtils.Month_Case_Nominative);
  PaxCompiler.RegisterHeader(0, 'function Month_Case_Genitive(ADate: TDateTime): string;', @uStrUtils.Month_Case_Genitive);

  PaxCompiler.RegisterHeader(0, 'function ExtraSpell(Number:extended; Param: string): string;', @uStrUtils.ExtraSpell);

  PaxCompiler.RegisterHeader(0, 'procedure Log(AText: string);', @ufmMain.Log);
  PaxCompiler.RegisterHeader(datasetHandle, 'function FieldByName(const FieldName: string): TField;', @TpFIBDataSet.FieldByName);


  PaxCompiler.RegisterHeader(0, 'function DatePart(ADate: TDateTime; APart: Char): Word;', @Globals.DatePart);
  PaxCompiler.RegisterHeader(0, 'function DatePartStr(ADate: TDateTime; APart: Char): String;', @Globals.DatePartStr);
  PaxCompiler.RegisterHeader(0, 'function FieldByName(ADataSet: TpFIBDataSet; AFieldName: string): string;', @Globals.FieldByName);
  PaxCompiler.RegisterHeader(0, 'function DSisEOF(ADataSet: TpFIBDataSet): Boolean;', @Globals.DSisEOF);
  PaxCompiler.RegisterHeader(0, 'function DSisBOF(ADataSet: TpFIBDataSet): Boolean;', @Globals.DSisBOF);
  PaxCompiler.RegisterHeader(0, 'function DSIsEmpty(ADataSet: TpFIBDataSet): Boolean;', @Globals.DSIsEmpty);
  PaxCompiler.RegisterHeader(0, 'function DSRecCount(ADataSet: TpFIBDataSet): Integer;', @Globals.DSRecCount);
  PaxCompiler.RegisterHeader(0, 'function DSRecNo(ADataSet: TpFIBDataSet): Integer;', @Globals.DSRecNo);
  PaxCompiler.RegisterHeader(0, 'function ifFalse(AValue: Boolean; AResultString: string): string;', @Globals.ifFalse);
  PaxCompiler.RegisterHeader(0, 'function ifTrue(AValue: Boolean; AResultString: string): string;', @Globals.ifTrue);
  PaxCompiler.RegisterHeader(0, 'function ifSingle(ACheckValue: integer; AResultString: string): string;', @Globals.ifSingle);
  PaxCompiler.RegisterHeader(0, 'function ifNone(ACheckValue: integer; AResultString: string): string;', @Globals.ifNone);
  PaxCompiler.RegisterHeader(0, 'function ifMore(ACheckValue: integer; AResultString: string): string;', @Globals.ifMore);
  PaxCompiler.RegisterHeader(0, 'function ifAny(ACheckValue: integer; AResultString: string): string;', @Globals.ifAny);
  PaxCompiler.RegisterHeader(0, 'function ifFieldEq(ADataSet: TpFIBDataSet; AFieldName: string; AValue: string; AResultString: string): string;', @Globals.ifFieldEq);
  PaxCompiler.RegisterHeader(0, 'function Count(ADataSet: TpFIBDataSet): Integer;', @Globals.Count);

//  PaxCompiler.RegisterVariable(0, 'DataModule: TMVCAuthorization', @Self);

  RepresentativesHandle := PaxCompiler.RegisterVariable(0, 'Representatives', datasetHandle, @Representatives);
  RepresentativesHandle := PaxCompiler.RegisterVariable(0, 'Authorization', datasetHandle, @Authorization);
  RepresentativesHandle := PaxCompiler.RegisterVariable(0, 'Constituent', datasetHandle, @Constituent);
  RepresentativesHandle := PaxCompiler.RegisterVariable(0, 'Notary', datasetHandle, @Notary);

 {
//  PaxCompiler.AddCodeFromFile('main', TFmMain(Application.MainForm).CurrentDir + 'lib/' + 'Globals.pas');

  if PaxCompiler.Compile(PaxProgram) then
  begin
//    PaxProgram.Run;
//    PaxEval.RegisterCompiler(PaxCompiler, PaxProgram);
  end else for I:=0 to PaxCompiler.ErrorCount -1 do ufmMain.Log(PaxCompiler.ErrorMessage[I]);           }
end;

procedure TMVCAuthorization.ReportProgress(const CurrentTag: string; Total, Current: Word);
begin
    TfmMain(Application.MainForm).SetStatusProgressBarPosition(Total div 2, Current);
end;

function TMVCAuthorization.resultFromProgram(const APaxProgram: TPaxProgram): variant;
var
  TypeId: Integer;
  ResultId: Integer;
  Address: Pointer;
  StackFrameNumber: Integer;
begin
  ResultId := APaxProgram.GetProgPtr.GetRootProg.GlobalSym.ResultId;
  StackFrameNumber := 0;
  if APaxProgram.GetProgPtr.GetRootProg.GetCallStackCount > 0 then
    StackFrameNumber := APaxProgram.GetProgPtr.GetRootProg.GetCallStackCount - 1;

  TypeId := APaxProgram.GetProgPtr.GetRootProg.GlobalSym[ResultId].TypeId;
  Address := APaxProgram.GetProgPtr.GetRootProg.GlobalSym.GetFinalAddress(APaxProgram.GetProgPtr.GetRootProg, StackFrameNumber, ResultId);
  Result := APaxProgram.GetProgPtr.GetRootProg.GlobalSym.GetVariantVal(Address, TypeId);
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
