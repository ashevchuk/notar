{***************************************************************************}
{ This source code was generated automatically by                           }
{ Pas file import tool for Scripter Studio (Pro)                            }
{                                                                           }
{ Scripter Studio and Pas file import tool for Scripter Studio              }
{ written by TMS Software                                                   }
{            copyright © 1997 - 2010                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{***************************************************************************}
unit ap_pFIBScripter;

interface

uses
  SysUtils,
  Classes,
  FIBPlatforms,
  pFIBDatabase,
  pFIBQuery,
  FIBQuery,
  fib,
  pFIBInterfaces,
  pFIBScripter,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBScripterLibrary = class(TatScripterLibrary)
    procedure __StatementTypeName(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TpFIBScriptParserClass = class of TpFIBScriptParser;
  TpFIBScripterClass = class of TpFIBScripter;

  TatpFIBScripterDispatcher = class(TatEventDispatcher)
  private
    procedure __TOnSQLScriptExecError( Sender: TObject;  StatementNo: Integer;  Line: Integer;  Statement: TStrings;  SQLCode: Integer; const Msg: string; var doRollBack: boolean; var Stop: Boolean);
  end;

  TStmtCoordWrapper = class(TatRecordWrapper)
  private
    FX: Word;
    FY: Integer;
  public
    constructor Create(ARecord: TStmtCoord);
    function ObjToRec: TStmtCoord;
  published
    property X: Word read FX write FX;
    property Y: Integer read FY write FY;
  end;
  
  TValidationInfoWrapper = class(TatRecordWrapper)
  private
    FActive: boolean;
    FBeginExist: boolean;
    FBegCount: integer;
  public
    constructor Create(ARecord: TValidationInfo);
    function ObjToRec: TValidationInfo;
  published
    property Active: boolean read FActive write FActive;
    property BeginExist: boolean read FBeginExist write FBeginExist;
    property BegCount: integer read FBegCount write FBegCount;
  end;
  
  TStatementDescWrapper = class(TatRecordWrapper)
  private
    FsmtType: TStmtType;
    FobjType: TObjectType;
    FobjName: string;
    FDirectiveNum: integer;
    FDirectiveElse: boolean;
  public
    constructor Create(ARecord: TStatementDesc);
    function ObjToRec: TStatementDesc;
  published
    property smtType: TStmtType read FsmtType write FsmtType;
    property objType: TObjectType read FobjType write FobjType;
    property objName: string read FobjName write FobjName;
    property DirectiveNum: integer read FDirectiveNum write FDirectiveNum;
    property DirectiveElse: boolean read FDirectiveElse write FDirectiveElse;
  end;
  
  TDirectiveDescWrapper = class(TatRecordWrapper)
  private
    FdState: TDirectiveState;
    FOwnerDirectiveNum: integer;
    FOwnerDirectiveElse: boolean;
  public
    constructor Create(ARecord: TDirectiveDesc);
    function ObjToRec: TDirectiveDesc;
  published
    property dState: TDirectiveState read FdState write FdState;
    property OwnerDirectiveNum: integer read FOwnerDirectiveNum write FOwnerDirectiveNum;
    property OwnerDirectiveElse: boolean read FOwnerDirectiveElse write FOwnerDirectiveElse;
  end;
  

implementation

constructor TStmtCoordWrapper.Create(ARecord: TStmtCoord);
begin
  inherited Create;
  FX := ARecord.X;
  FY := ARecord.Y;
end;

function TStmtCoordWrapper.ObjToRec: TStmtCoord;
begin
  result.X := FX;
  result.Y := FY;
end;

constructor TValidationInfoWrapper.Create(ARecord: TValidationInfo);
begin
  inherited Create;
  FActive := ARecord.Active;
  FBeginExist := ARecord.BeginExist;
  FBegCount := ARecord.BegCount;
end;

function TValidationInfoWrapper.ObjToRec: TValidationInfo;
begin
  result.Active := FActive;
  result.BeginExist := FBeginExist;
  result.BegCount := FBegCount;
end;

constructor TStatementDescWrapper.Create(ARecord: TStatementDesc);
begin
  inherited Create;
  FsmtType := ARecord.smtType;
  FobjType := ARecord.objType;
  FobjName := ARecord.objName;
  FDirectiveNum := ARecord.DirectiveNum;
  FDirectiveElse := ARecord.DirectiveElse;
end;

function TStatementDescWrapper.ObjToRec: TStatementDesc;
begin
  result.smtType := FsmtType;
  result.objType := FobjType;
  result.objName := FobjName;
  result.DirectiveNum := FDirectiveNum;
  result.DirectiveElse := FDirectiveElse;
end;

constructor TDirectiveDescWrapper.Create(ARecord: TDirectiveDesc);
begin
  inherited Create;
  FdState := ARecord.dState;
  FOwnerDirectiveNum := ARecord.OwnerDirectiveNum;
  FOwnerDirectiveElse := ARecord.OwnerDirectiveElse;
end;

function TDirectiveDescWrapper.ObjToRec: TDirectiveDesc;
begin
  result.dState := FdState;
  result.OwnerDirectiveNum := FOwnerDirectiveNum;
  result.OwnerDirectiveElse := FOwnerDirectiveElse;
end;



procedure TatpFIBScripterDispatcher.__TOnSQLScriptExecError( Sender: TObject;  StatementNo: Integer;  Line: Integer;  Statement: TStrings;  SQLCode: Integer; const Msg: string; var doRollBack: boolean; var Stop: Boolean);
var
  doRollBackTemp: variant;
  StopTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnSQLScriptExecError(BeforeCall)(Sender,StatementNo,Line,Statement,SQLCode,Msg,doRollBack,Stop);
    doRollBackTemp := doRollBack;
    StopTemp := Stop;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Sender,StatementNo,Line,Statement,SQLCode,Msg,doRollBackTemp,StopTemp]);
    doRollBack := doRollBackTemp;
    Stop := StopTemp;
    if AssignedMethod(AfterCall) then
      TOnSQLScriptExecError(AfterCall)(Sender,StatementNo,Line,Statement,SQLCode,Msg,doRollBack,Stop);
  end;
end;

procedure TatpFIBScripterLibrary.__StatementTypeName(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(pFIBScripter.StatementTypeName(TStmtType(VarToInteger(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatpFIBScripterLibrary.Init;
begin
  Scripter.DefineRecordByRTTI(TypeInfo(TStmtCoord));
  Scripter.DefineRecordByRTTI(TypeInfo(TValidationInfo));
  Scripter.DefineRecordByRTTI(TypeInfo(TStatementDesc));
  Scripter.DefineRecordByRTTI(TypeInfo(TDirectiveDesc));
  Scripter.DefineClassByRTTI(TpFIBScriptParser);
  Scripter.DefineClassByRTTI(TpFIBScripter);
  DefineEventAdapter(TypeInfo(TOnSQLScriptExecError), TatpFIBScripterDispatcher, @TatpFIBScripterDispatcher.__TOnSQLScriptExecError);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('StatementTypeName',1,tkVariant,nil,__StatementTypeName,false,0,'tn: TStmtType');
    AddConstant('sUnknown',sUnknown);
    AddConstant('sInvalid',sInvalid);
    AddConstant('sDML',sDML);
    AddConstant('sConnect',sConnect);
    AddConstant('sDisconnect',sDisconnect);
    AddConstant('sReconnect',sReconnect);
    AddConstant('sCreateDatabase',sCreateDatabase);
    AddConstant('sDropDatabase',sDropDatabase);
    AddConstant('sCommit',sCommit);
    AddConstant('sRollBack',sRollBack);
    AddConstant('sCreate',sCreate);
    AddConstant('sAlter',sAlter);
    AddConstant('sRecreate',sRecreate);
    AddConstant('sDrop',sDrop);
    AddConstant('sSet',sSet);
    AddConstant('sSetGenerator',sSetGenerator);
    AddConstant('sSetStatistics',sSetStatistics);
    AddConstant('sDescribe',sDescribe);
    AddConstant('sDeclare',sDeclare);
    AddConstant('sComment',sComment);
    AddConstant('sGrant',sGrant);
    AddConstant('sRunFromFile',sRunFromFile);
    AddConstant('sBatch',sBatch);
    AddConstant('sBatchStart',sBatchStart);
    AddConstant('sBatchExecute',sBatchExecute);
    AddConstant('sExecute',sExecute);
    AddConstant('sInsert',sInsert);
    AddConstant('sReinsert',sReinsert);
    AddConstant('sDirective',sDirective);
    AddConstant('otNone',otNone);
    AddConstant('otDatabase',otDatabase);
    AddConstant('otDomain',otDomain);
    AddConstant('otTable',otTable);
    AddConstant('otView',otView);
    AddConstant('otProcedure',otProcedure);
    AddConstant('otTrigger',otTrigger);
    AddConstant('otFunction',otFunction);
    AddConstant('otException',otException);
    AddConstant('otGenerator',otGenerator);
    AddConstant('otIndex',otIndex);
    AddConstant('otConstraint',otConstraint);
    AddConstant('otFilter',otFilter);
    AddConstant('otField',otField);
    AddConstant('otParameter',otParameter);
    AddConstant('otRole',otRole);
    AddConstant('otBlock',otBlock);
    AddConstant('otUser',otUser);
    AddConstant('dsUnknown',dsUnknown);
    AddConstant('dsTrue',dsTrue);
    AddConstant('dsFalse',dsFalse);
    AddConstant('dIfDef',dIfDef);
    AddConstant('dIfNDef',dIfNDef);
    AddConstant('dIf',dIf);
    AddConstant('dIfExists',dIfExists);
    AddConstant('dIfNExists',dIfNExists);
    AddConstant('dIfNotExists',dIfNotExists);
    AddConstant('dElse',dElse);
    AddConstant('dEndIf',dEndIf);
    AddConstant('dExecBlock',dExecBlock);
    AddConstant('dDefine',dDefine);
    AddConstant('dUnDefine',dUnDefine);
    AddConstant('dSetVar',dSetVar);
    AddConstant('srvIsFirebird',srvIsFirebird);
    AddConstant('srvMajorVer',srvMajorVer);
    AddConstant('srvMinorVer',srvMinorVer);
    AddConstant('dbODSMajorVersion',dbODSMajorVersion);
    AddConstant('dbODSMinorVersion',dbODSMinorVersion);
  end;
end;

class function TatpFIBScripterLibrary.LibraryName: string;
begin
  result := 'pFIBScripter';
end;

initialization
  RegisterScripterLibrary(TatpFIBScripterLibrary, True);

{$WARNINGS ON}

end.

