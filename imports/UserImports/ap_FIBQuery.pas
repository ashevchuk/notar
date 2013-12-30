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
unit ap_FIBQuery;

interface

uses
  SysUtils,
  Classes,
  ibase,
  IB_Intf,
  IB_Externals,
  FIBPlatforms,
  DB,
  fib,
  FIBDatabase,
  StdFuncs,
  IB_ErrorCodes,
  SqlTxtRtns,
  pFIBProps,
  pFIBInterfaces,
  FIBMDTInterface,
  FIBQuery,
  System.Variants,
  ap_ibase,
  atScript;

{$WARNINGS OFF}

type
  TatFIBQueryLibrary = class(TatScripterLibrary)
    procedure __BlobToStream(AMachine: TatVirtualMachine);
    procedure __GetfibGUID_NULL(AMachine: TatVirtualMachine);
    procedure __GetDisableEncodingSQLText(AMachine: TatVirtualMachine);
    procedure __SetDisableEncodingSQLText(AMachine: TatVirtualMachine);
    procedure __GetTraceString(AMachine: TatVirtualMachine);
    procedure __SetTraceString(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TFIBXSQLVARClass = class of TFIBXSQLVAR;
  TFIBXSQLDAClass = class of TFIBXSQLDA;
  TFIBBatchClass = class of TFIBBatch;
  TFIBBatchInputStreamClass = class of TFIBBatchInputStream;
  TFIBBatchOutputStreamClass = class of TFIBBatchOutputStream;
  TFIBQueryClass = class of TFIBQuery;

  TatFIBQueryDispatcher = class(TatEventDispatcher)
  private
    procedure __TCallBackBlobReadWrite( BlobSize: integer;  BytesProcessing: integer; var Stop: boolean);
    procedure __TOnSQLFetch( RecordNumber: integer; var StopFetching: boolean);
    procedure __TOnBatching( BatchOperation: TBatchOperation;  RecNumber: integer; var BatchAction: TBatchAction);
    procedure __TOnBatchError( E: EFIBError; var BatchErrorAction: TBatchErrorAction);
  end;

  TExtDescribeSQLVarWrapper = class(TatRecordWrapper)
  private
  public
    constructor Create(ARecord: TExtDescribeSQLVar);
    function ObjToRec: TExtDescribeSQLVar;
  published
  end;
  
  TAllRowsAffectedWrapper = class(TatRecordWrapper)
  private
    FUpdates: integer;
    FDeletes: integer;
    FSelects: integer;
    FInserts: integer;
  public
    constructor Create(ARecord: TAllRowsAffected);
    function ObjToRec: TAllRowsAffected;
  published
    property Updates: integer read FUpdates write FUpdates;
    property Deletes: integer read FDeletes write FDeletes;
    property Selects: integer read FSelects write FSelects;
    property Inserts: integer read FInserts write FInserts;
  end;
  

implementation

constructor TExtDescribeSQLVarWrapper.Create(ARecord: TExtDescribeSQLVar);
begin
  inherited Create;
end;

function TExtDescribeSQLVarWrapper.ObjToRec: TExtDescribeSQLVar;
begin
end;

constructor TAllRowsAffectedWrapper.Create(ARecord: TAllRowsAffected);
begin
  inherited Create;
  FUpdates := ARecord.Updates;
  FDeletes := ARecord.Deletes;
  FSelects := ARecord.Selects;
  FInserts := ARecord.Inserts;
end;

function TAllRowsAffectedWrapper.ObjToRec: TAllRowsAffected;
begin
  result.Updates := FUpdates;
  result.Deletes := FDeletes;
  result.Selects := FSelects;
  result.Inserts := FInserts;
end;



procedure TatFIBQueryDispatcher.__TCallBackBlobReadWrite( BlobSize: integer;  BytesProcessing: integer; var Stop: boolean);
var
  StopTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TCallBackBlobReadWrite(BeforeCall)(BlobSize,BytesProcessing,Stop);
    StopTemp := Stop;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [BlobSize,BytesProcessing,StopTemp]);
    Stop := StopTemp;
    if AssignedMethod(AfterCall) then
      TCallBackBlobReadWrite(AfterCall)(BlobSize,BytesProcessing,Stop);
  end;
end;

procedure TatFIBQueryDispatcher.__TOnSQLFetch( RecordNumber: integer; var StopFetching: boolean);
var
  StopFetchingTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnSQLFetch(BeforeCall)(RecordNumber,StopFetching);
    StopFetchingTemp := StopFetching;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [RecordNumber,StopFetchingTemp]);
    StopFetching := StopFetchingTemp;
    if AssignedMethod(AfterCall) then
      TOnSQLFetch(AfterCall)(RecordNumber,StopFetching);
  end;
end;

procedure TatFIBQueryDispatcher.__TOnBatching( BatchOperation: TBatchOperation;  RecNumber: integer; var BatchAction: TBatchAction);
var
  BatchOperationTemp: variant;
  BatchActionTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnBatching(BeforeCall)(BatchOperation,RecNumber,BatchAction);
    BatchOperationTemp := Integer(BatchOperation);
    BatchActionTemp := Integer(BatchAction);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [BatchOperationTemp,RecNumber,BatchActionTemp]);
    BatchAction := TBatchAction(VarToInteger(BatchActionTemp));
    if AssignedMethod(AfterCall) then
      TOnBatching(AfterCall)(BatchOperation,RecNumber,BatchAction);
  end;
end;

procedure TatFIBQueryDispatcher.__TOnBatchError( E: EFIBError; var BatchErrorAction: TBatchErrorAction);
var
  BatchErrorActionTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnBatchError(BeforeCall)(E,BatchErrorAction);
    BatchErrorActionTemp := Integer(BatchErrorAction);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [E,BatchErrorActionTemp]);
    BatchErrorAction := TBatchErrorAction(VarToInteger(BatchErrorActionTemp));
    if AssignedMethod(AfterCall) then
      TOnBatchError(AfterCall)(E,BatchErrorAction);
  end;
end;

procedure TatFIBQueryLibrary.__BlobToStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBQuery.BlobToStream(TFIBXSQLVAR(VarToObject(GetInputArg(0))),
    TGDS_QUADWrapper(integer(GetInputArg(1))).ObjToRec,
    TStream(GetInputArgAsClass(2)));
  end;
end;

procedure TatFIBQueryLibrary.__GetfibGUID_NULL(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Variant(FIBQuery.fibGUID_NULL));
  end;
end;

procedure TatFIBQueryLibrary.__GetDisableEncodingSQLText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(FIBQuery.DisableEncodingSQLText);
  end;
end;

procedure TatFIBQueryLibrary.__SetDisableEncodingSQLText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBQuery.DisableEncodingSQLText:=GetInputArg(0);
  end;
end;

procedure TatFIBQueryLibrary.__GetTraceString(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(FIBQuery.TraceString));
  end;
end;

procedure TatFIBQueryLibrary.__SetTraceString(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBQuery.TraceString:=VarToStr(GetInputArg(0));
  end;
end;

procedure TatFIBQueryLibrary.Init;
begin
  Scripter.DefineRecordByRTTI(TypeInfo(TExtDescribeSQLVar));
  Scripter.DefineClassByRTTI(TFIBXSQLVAR);
  Scripter.DefineClassByRTTI(TFIBXSQLDA);
  Scripter.DefineClassByRTTI(TFIBBatch);
  Scripter.DefineClassByRTTI(TFIBBatchInputStream);
  Scripter.DefineClassByRTTI(TFIBBatchOutputStream);
  Scripter.DefineRecordByRTTI(TypeInfo(TAllRowsAffected));
  Scripter.DefineClassByRTTI(TFIBQuery);
  DefineEventAdapter(TypeInfo(TCallBackBlobReadWrite), TatFIBQueryDispatcher, @TatFIBQueryDispatcher.__TCallBackBlobReadWrite);
  DefineEventAdapter(TypeInfo(TOnSQLFetch), TatFIBQueryDispatcher, @TatFIBQueryDispatcher.__TOnSQLFetch);
  DefineEventAdapter(TypeInfo(TOnBatching), TatFIBQueryDispatcher, @TatFIBQueryDispatcher.__TOnBatching);
  DefineEventAdapter(TypeInfo(TOnBatchError), TatFIBQueryDispatcher, @TatFIBQueryDispatcher.__TOnBatchError);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('BlobToStream',3,tkNone,nil,__BlobToStream,false,0,'ModelVar: TFIBXSQLVAR; BlobID: TISC_QUAD; Stream: TStream');
    DefineProp('fibGUID_NULL',tkVariant,__GetfibGUID_NULL,nil,nil,false,0);
    DefineProp('DisableEncodingSQLText',tkVariant,__GetDisableEncodingSQLText,__SetDisableEncodingSQLText,nil,false,0);
    DefineProp('TraceString',tkVariant,__GetTraceString,__SetTraceString,nil,false,0);
    AddConstant('tspNull',tspNull);
    AddConstant('tspIsNullable',tspIsNullable);
    AddConstant('tspScale',tspScale);
    AddConstant('tspValue',tspValue);
    AddConstant('tspSqlVar',tspSqlVar);
    AddConstant('bsNotPrepared',bsNotPrepared);
    AddConstant('bsFileReady',bsFileReady);
    AddConstant('bsInProcess',bsInProcess);
    AddConstant('bsInError',bsInError);
    AddConstant('SQLUnknown',SQLUnknown);
    AddConstant('SQLSelect',SQLSelect);
    AddConstant('SQLInsert',SQLInsert);
    AddConstant('SQLUpdate',SQLUpdate);
    AddConstant('SQLDelete',SQLDelete);
    AddConstant('SQLDDL',SQLDDL);
    AddConstant('SQLGetSegment',SQLGetSegment);
    AddConstant('SQLPutSegment',SQLPutSegment);
    AddConstant('SQLExecProcedure',SQLExecProcedure);
    AddConstant('SQLStartTransaction',SQLStartTransaction);
    AddConstant('SQLCommit',SQLCommit);
    AddConstant('SQLRollback',SQLRollback);
    AddConstant('SQLSelectForUpdate',SQLSelectForUpdate);
    AddConstant('SQLSetGenerator',SQLSetGenerator);
    AddConstant('SQLSavePointOperation',SQLSavePointOperation);
    AddConstant('boInput',boInput);
    AddConstant('boOutput',boOutput);
    AddConstant('boOutputToQuery',boOutputToQuery);
    AddConstant('baContinue',baContinue);
    AddConstant('baStop',baStop);
    AddConstant('baSkip',baSkip);
    AddConstant('beFail',beFail);
    AddConstant('beAbort',beAbort);
    AddConstant('beRetry',beRetry);
    AddConstant('beIgnore',beIgnore);
    AddConstant('qrsInPrepare',qrsInPrepare);
    AddConstant('qrsInExecute',qrsInExecute);
    AddConstant('qrsInClose',qrsInClose);
    AddConstant('ExecProcPrefix',ExecProcPrefix);
    AddConstant('scPrepareCount',scPrepareCount);
    AddConstant('scExecuteCount',scExecuteCount);
    AddConstant('scSumTimeExecute',scSumTimeExecute);
    AddConstant('scAvgTimeExecute',scAvgTimeExecute);
    AddConstant('scMaxTimeExecute',scMaxTimeExecute);
    AddConstant('scLastTimeExecute',scLastTimeExecute);
    AddConstant('scLastQuery',scLastQuery);
    AddConstant('chUnicodeFSS',chUnicodeFSS);
  end;
end;

class function TatFIBQueryLibrary.LibraryName: string;
begin
  result := 'FIBQuery';
end;

initialization
  RegisterScripterLibrary(TatFIBQueryLibrary, True);

{$WARNINGS ON}

end.

