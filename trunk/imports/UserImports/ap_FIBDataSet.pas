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
unit ap_FIBDataSet;

interface

uses
  SysUtils,
  ibase,
  IB_Intf,
  ib_externals,
  fib,
  FIBPlatforms,
  pFIBProps,
  pFIBFieldsDescr,
  DB,
  FIBCacheManage,
  DBCommon,
  DbConsts,
  DBParsers,
  FIBDatabase,
  FIBQuery,
  FIBMiscellaneous,
  SqlTxtRtns,
  pFIBLists,
  FIBCloneComponents,
  pFIBInterfaces,
  pFIBEventLists,
  FIBMDTInterface,
  Classes,
  StdFuncs,
  Forms,
  Controls,
  FIBDataSet,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatFIBDataSetLibrary = class(TatScripterLibrary)
    procedure __RecordDataLength(AMachine: TatVirtualMachine);
    procedure __IsDBKeyField(AMachine: TatVirtualMachine);
    procedure __LocateOptionsToExtLocateOptions(AMachine: TatVirtualMachine);
    procedure __FilterOut(AMachine: TatVirtualMachine);
    procedure __Register(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TFIBStringFieldClass = class of TFIBStringField;
  TFIBWideStringFieldClass = class of TFIBWideStringField;
  TFIBLargeIntFieldClass = class of TFIBLargeIntField;
  TFIBIntegerFieldClass = class of TFIBIntegerField;
  TFIBDateFieldClass = class of TFIBDateField;
  TFIBTimeFieldClass = class of TFIBTimeField;
  TFIBDateTimeFieldClass = class of TFIBDateTimeField;
  TFIBBlobFieldClass = class of TFIBBlobField;
  TFIBMemoFieldClass = class of TFIBMemoField;
  TFIBSmallIntFieldClass = class of TFIBSmallIntField;
  TFIBFloatFieldClass = class of TFIBFloatField;
  TFIBBCDFieldClass = class of TFIBBCDField;
  TFIBGuidFieldClass = class of TFIBGuidField;
  TFIBBooleanFieldClass = class of TFIBBooleanField;
  TFIBDataLinkClass = class of TFIBDataLink;
  TCacheModelOptionsClass = class of TCacheModelOptions;
  TFIBCustomDataSetClass = class of TFIBCustomDataSet;
  TFIBDataSetClass = class of TFIBDataSet;
  TFIBDSBlobStreamClass = class of TFIBDSBlobStream;

  TatFIBDataSetDispatcher = class(TatEventDispatcher)
  private
    procedure __TFIBUpdateErrorEvent( DataSet: TDataSet;  E: EFIBError;  UpdateKind: TUpdateKind; var UpdateAction: TFIBUpdateAction);
    procedure __TFIBUpdateRecordEvent( DataSet: TDataSet;  UpdateKind: TUpdateKind; var UpdateAction: TFIBUpdateAction);
    procedure __TFIBAfterUpdateRecordEvent( DataSet: TDataSet;  UpdateKind: TUpdateKind; var Resume: boolean);
    procedure __TOnFetchRecord( FromQuery: TFIBQuery;  RecordNumber: integer; var StopFetching: boolean);
    function __TCompareFieldValues( Field: TField; const S1: variant; const S2: variant): integer;
    procedure __TOnFillClientBlob( DataSet: TFIBCustomDataSet;  Field: TFIBBlobField;  Stream: TFIBBlobStream);
    procedure __TOnBlobFieldProcessing( Field: TBlobField;  BlobSize: integer;  Progress: integer; var Stop: boolean);
  end;

  TFieldDataWrapper = class(TatRecordWrapper)
  private
    FfdIsNull: Boolean;
  public
    constructor Create(ARecord: TFieldData);
    function ObjToRec: TFieldData;
  published
    property fdIsNull: Boolean read FfdIsNull write FfdIsNull;
  end;
  
  TRecordDataWrapper = class(TatRecordWrapper)
  private
    FrdRecordNumber: Long;
    FrdBookmarkFlag: TBookmarkFlag;
    FrdFlags: Byte;
  public
    constructor Create(ARecord: TRecordData);
    function ObjToRec: TRecordData;
  published
    property rdRecordNumber: Long read FrdRecordNumber write FrdRecordNumber;
    property rdBookmarkFlag: TBookmarkFlag read FrdBookmarkFlag write FrdBookmarkFlag;
    property rdFlags: Byte read FrdFlags write FrdFlags;
  end;
  
  TSavedRecordDataWrapper = class(TatRecordWrapper)
  private
    FrdFlags: Byte;
  public
    constructor Create(ARecord: TSavedRecordData);
    function ObjToRec: TSavedRecordData;
  published
    property rdFlags: Byte read FrdFlags write FrdFlags;
  end;
  
  TSortFieldInfoWrapper = class(TatRecordWrapper)
  private
    FFieldName: string;
    FInDataSetIndex: integer;
    FInOrderIndex: integer;
    FAsc: boolean;
    FNullsFirst: boolean;
  public
    constructor Create(ARecord: TSortFieldInfo);
    function ObjToRec: TSortFieldInfo;
  published
    property FieldName: string read FFieldName write FFieldName;
    property InDataSetIndex: integer read FInDataSetIndex write FInDataSetIndex;
    property InOrderIndex: integer read FInOrderIndex write FInOrderIndex;
    property Asc: boolean read FAsc write FAsc;
    property NullsFirst: boolean read FNullsFirst write FNullsFirst;
  end;
  
  TFIBBookmarkWrapper = class(TatRecordWrapper)
  private
    FbRecordNumber: integer;
    FbActiveRecord: integer;
  public
    constructor Create(ARecord: TFIBBookmark);
    function ObjToRec: TFIBBookmark;
  published
    property bRecordNumber: integer read FbRecordNumber write FbRecordNumber;
    property bActiveRecord: integer read FbActiveRecord write FbActiveRecord;
  end;
  
  TRecordsPartitionWrapper = class(TatRecordWrapper)
  private
    FBeginPartRecordNo: Integer;
    FEndPartRecordNo: Integer;
    FIncludeBof: boolean;
    FIncludeEof: boolean;
  public
    constructor Create(ARecord: TRecordsPartition);
    function ObjToRec: TRecordsPartition;
  published
    property BeginPartRecordNo: Integer read FBeginPartRecordNo write FBeginPartRecordNo;
    property EndPartRecordNo: Integer read FEndPartRecordNo write FEndPartRecordNo;
    property IncludeBof: boolean read FIncludeBof write FIncludeBof;
    property IncludeEof: boolean read FIncludeEof write FIncludeEof;
  end;
  
  TFilteredCacheInfoWrapper = class(TatRecordWrapper)
  private
    FAllRecords: integer;
    FFilteredRecords: integer;
    FNonVisibleRecords: TSortedList;
  public
    constructor Create(ARecord: TFilteredCacheInfo);
    function ObjToRec: TFilteredCacheInfo;
  published
    property AllRecords: integer read FAllRecords write FAllRecords;
    property FilteredRecords: integer read FFilteredRecords write FFilteredRecords;
    property NonVisibleRecords: TSortedList read FNonVisibleRecords write FNonVisibleRecords;
  end;
  

implementation

constructor TFieldDataWrapper.Create(ARecord: TFieldData);
begin
  inherited Create;
  FfdIsNull := ARecord.fdIsNull;
end;

function TFieldDataWrapper.ObjToRec: TFieldData;
begin
  result.fdIsNull := FfdIsNull;
end;

constructor TRecordDataWrapper.Create(ARecord: TRecordData);
begin
  inherited Create;
  FrdRecordNumber := ARecord.rdRecordNumber;
  FrdBookmarkFlag := ARecord.rdBookmarkFlag;
  FrdFlags := ARecord.rdFlags;
end;

function TRecordDataWrapper.ObjToRec: TRecordData;
begin
  result.rdRecordNumber := FrdRecordNumber;
  result.rdBookmarkFlag := FrdBookmarkFlag;
  result.rdFlags := FrdFlags;
end;

constructor TSavedRecordDataWrapper.Create(ARecord: TSavedRecordData);
begin
  inherited Create;
  FrdFlags := ARecord.rdFlags;
end;

function TSavedRecordDataWrapper.ObjToRec: TSavedRecordData;
begin
  result.rdFlags := FrdFlags;
end;

constructor TSortFieldInfoWrapper.Create(ARecord: TSortFieldInfo);
begin
  inherited Create;
  FFieldName := ARecord.FieldName;
  FInDataSetIndex := ARecord.InDataSetIndex;
  FInOrderIndex := ARecord.InOrderIndex;
  FAsc := ARecord.Asc;
  FNullsFirst := ARecord.NullsFirst;
end;

function TSortFieldInfoWrapper.ObjToRec: TSortFieldInfo;
begin
  result.FieldName := FFieldName;
  result.InDataSetIndex := FInDataSetIndex;
  result.InOrderIndex := FInOrderIndex;
  result.Asc := FAsc;
  result.NullsFirst := FNullsFirst;
end;

constructor TFIBBookmarkWrapper.Create(ARecord: TFIBBookmark);
begin
  inherited Create;
  FbRecordNumber := ARecord.bRecordNumber;
  FbActiveRecord := ARecord.bActiveRecord;
end;

function TFIBBookmarkWrapper.ObjToRec: TFIBBookmark;
begin
  result.bRecordNumber := FbRecordNumber;
  result.bActiveRecord := FbActiveRecord;
end;

constructor TRecordsPartitionWrapper.Create(ARecord: TRecordsPartition);
begin
  inherited Create;
  FBeginPartRecordNo := ARecord.BeginPartRecordNo;
  FEndPartRecordNo := ARecord.EndPartRecordNo;
  FIncludeBof := ARecord.IncludeBof;
  FIncludeEof := ARecord.IncludeEof;
end;

function TRecordsPartitionWrapper.ObjToRec: TRecordsPartition;
begin
  result.BeginPartRecordNo := FBeginPartRecordNo;
  result.EndPartRecordNo := FEndPartRecordNo;
  result.IncludeBof := FIncludeBof;
  result.IncludeEof := FIncludeEof;
end;

constructor TFilteredCacheInfoWrapper.Create(ARecord: TFilteredCacheInfo);
begin
  inherited Create;
  FAllRecords := ARecord.AllRecords;
  FFilteredRecords := ARecord.FilteredRecords;
  FNonVisibleRecords := ARecord.NonVisibleRecords;
end;

function TFilteredCacheInfoWrapper.ObjToRec: TFilteredCacheInfo;
begin
  result.AllRecords := FAllRecords;
  result.FilteredRecords := FFilteredRecords;
  result.NonVisibleRecords := FNonVisibleRecords;
end;

function ObjectToVar(const AObject: TObject): Variant;
begin
  Result := IntToStr(Integer(Pointer(AObject)));
end;


procedure TatFIBDataSetDispatcher.__TFIBUpdateErrorEvent( DataSet: TDataSet;  E: EFIBError;  UpdateKind: TUpdateKind; var UpdateAction: TFIBUpdateAction);
var
  UpdateActionTemp: variant;
  ExecuteParams: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TFIBUpdateErrorEvent(BeforeCall)(DataSet,E,UpdateKind,UpdateAction);
    UpdateActionTemp := Integer(UpdateAction);
    if Assigned(Scripter) and (RoutineName > '') then
    begin
      ExecuteParams := VarArrayCreate([0, 3], varAny);
      VarArrayPut(ExecuteParams, ObjectToVar(DataSet), [0]);
      VarArrayPut(ExecuteParams, ObjectToVar(E), [1]);
      VarArrayPut(ExecuteParams, UpdateKind, [2]);
      VarArrayPut(ExecuteParams, UpdateActionTemp, [3]);
      Scripter.ExecuteSubroutine(RoutineName, ExecuteParams);
    end;

    UpdateAction := TFIBUpdateAction(VarToInteger(UpdateActionTemp));
    if AssignedMethod(AfterCall) then
      TFIBUpdateErrorEvent(AfterCall)(DataSet,E,UpdateKind,UpdateAction);
  end;
end;

procedure TatFIBDataSetDispatcher.__TFIBUpdateRecordEvent( DataSet: TDataSet;  UpdateKind: TUpdateKind; var UpdateAction: TFIBUpdateAction);
var
  UpdateActionTemp: variant;
  ExecuteParams: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TFIBUpdateRecordEvent(BeforeCall)(DataSet,UpdateKind,UpdateAction);
    UpdateActionTemp := Integer(UpdateAction);
    if Assigned(Scripter) and (RoutineName > '') then
    begin
      ExecuteParams := VarArrayCreate([0, 2], varAny);
      VarArrayPut(ExecuteParams, ObjectToVar(DataSet), [0]);
      VarArrayPut(ExecuteParams, UpdateKind, [1]);
      VarArrayPut(ExecuteParams, UpdateActionTemp, [2]);
      Scripter.ExecuteSubroutine(RoutineName, ExecuteParams);
    end;
    UpdateAction := TFIBUpdateAction(VarToInteger(UpdateActionTemp));
    if AssignedMethod(AfterCall) then
      TFIBUpdateRecordEvent(AfterCall)(DataSet,UpdateKind,UpdateAction);
  end;
end;

procedure TatFIBDataSetDispatcher.__TFIBAfterUpdateRecordEvent( DataSet: TDataSet;  UpdateKind: TUpdateKind; var Resume: boolean);
var
  ResumeTemp: variant;
  ExecuteParams: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TFIBAfterUpdateRecordEvent(BeforeCall)(DataSet,UpdateKind,Resume);
    ResumeTemp := Resume;
    if Assigned(Scripter) and (RoutineName > '') then
    begin
      ExecuteParams := VarArrayCreate([0, 2], varAny);
      VarArrayPut(ExecuteParams, ObjectToVar(DataSet), [0]);
      VarArrayPut(ExecuteParams, UpdateKind, [1]);
      VarArrayPut(ExecuteParams, ResumeTemp, [2]);
      Scripter.ExecuteSubroutine(RoutineName, ExecuteParams);
    end;
    Resume := ResumeTemp;
    if AssignedMethod(AfterCall) then
      TFIBAfterUpdateRecordEvent(AfterCall)(DataSet,UpdateKind,Resume);
  end;
end;

procedure TatFIBDataSetDispatcher.__TOnFetchRecord( FromQuery: TFIBQuery;  RecordNumber: integer; var StopFetching: boolean);
var
  StopFetchingTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnFetchRecord(BeforeCall)(FromQuery,RecordNumber,StopFetching);
    StopFetchingTemp := StopFetching;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [FromQuery,RecordNumber,StopFetchingTemp]);
    StopFetching := StopFetchingTemp;
    if AssignedMethod(AfterCall) then
      TOnFetchRecord(AfterCall)(FromQuery,RecordNumber,StopFetching);
  end;
end;

function TatFIBDataSetDispatcher.__TCompareFieldValues( Field: TField; const S1: variant; const S2: variant): integer;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TCompareFieldValues(BeforeCall)(Field,S1,S2);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Field,S1,S2]);
    if AssignedMethod(AfterCall) then
      TCompareFieldValues(AfterCall)(Field,S1,S2);
  end;
end;

procedure TatFIBDataSetDispatcher.__TOnFillClientBlob( DataSet: TFIBCustomDataSet;  Field: TFIBBlobField;  Stream: TFIBBlobStream);
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnFillClientBlob(BeforeCall)(DataSet,Field,Stream);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [DataSet,Field,Stream]);
    if AssignedMethod(AfterCall) then
      TOnFillClientBlob(AfterCall)(DataSet,Field,Stream);
  end;
end;

procedure TatFIBDataSetDispatcher.__TOnBlobFieldProcessing( Field: TBlobField;  BlobSize: integer;  Progress: integer; var Stop: boolean);
var
  StopTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnBlobFieldProcessing(BeforeCall)(Field,BlobSize,Progress,Stop);
    StopTemp := Stop;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Field,BlobSize,Progress,StopTemp]);
    Stop := StopTemp;
    if AssignedMethod(AfterCall) then
      TOnBlobFieldProcessing(AfterCall)(Field,BlobSize,Progress,Stop);
  end;
end;

procedure TatFIBDataSetLibrary.__RecordDataLength(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(FIBDataSet.RecordDataLength(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFIBDataSetLibrary.__IsDBKeyField(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
    AResult := FIBDataSet.IsDBKeyField(TObject(GetInputArgAsClass(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFIBDataSetLibrary.__LocateOptionsToExtLocateOptions(AMachine: TatVirtualMachine);
  var
  AResultSet: TExtLocateOptions;
  AResult: variant;
  ALocateOpts: TLocateOptions;
begin
  with AMachine do
  begin
    ALocateOpts := [loCaseInsensitive];
    AResultSet := FIBDataSet.LocateOptionsToExtLocateOptions(ALocateOpts);
    AResult := IntFromSet(AResultSet, SizeOf(AResultSet));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFIBDataSetLibrary.__FilterOut(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBDataSet.FilterOut(TFIBCustomDataSet(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatFIBDataSetLibrary.__Register(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBDataSet.Register;
  end;
end;

procedure TatFIBDataSetLibrary.Init;
begin
  Scripter.DefineRecordByRTTI(TypeInfo(TFieldData));
  Scripter.DefineRecordByRTTI(TypeInfo(TRecordData));
  Scripter.DefineRecordByRTTI(TypeInfo(TSavedRecordData));
  Scripter.DefineClassByRTTI(TFIBStringField);
  Scripter.DefineClassByRTTI(TFIBWideStringField);
  Scripter.DefineClassByRTTI(TFIBLargeIntField);
  Scripter.DefineClassByRTTI(TFIBIntegerField);
  Scripter.DefineClassByRTTI(TFIBDateField);
  Scripter.DefineClassByRTTI(TFIBTimeField);
  Scripter.DefineClassByRTTI(TFIBDateTimeField);
  Scripter.DefineClassByRTTI(TFIBBlobField);
  Scripter.DefineClassByRTTI(TFIBMemoField);
  Scripter.DefineClassByRTTI(TFIBSmallIntField);
  Scripter.DefineClassByRTTI(TFIBFloatField);
  Scripter.DefineClassByRTTI(TFIBBCDField);
  Scripter.DefineClassByRTTI(TFIBGuidField);
  Scripter.DefineClassByRTTI(TFIBBooleanField);
  Scripter.DefineRecordByRTTI(TypeInfo(TSortFieldInfo));
  Scripter.DefineClassByRTTI(TFIBDataLink);
  Scripter.DefineRecordByRTTI(TypeInfo(TFIBBookmark));
  Scripter.DefineRecordByRTTI(TypeInfo(TRecordsPartition));
  Scripter.DefineClassByRTTI(TCacheModelOptions);
  Scripter.DefineRecordByRTTI(TypeInfo(TFilteredCacheInfo));
  Scripter.DefineClassByRTTI(TFIBCustomDataSet);
  Scripter.DefineClassByRTTI(TFIBDataSet);
  Scripter.DefineClassByRTTI(TFIBDSBlobStream);
  DefineEventAdapter(TypeInfo(TFIBUpdateErrorEvent), TatFIBDataSetDispatcher, @TatFIBDataSetDispatcher.__TFIBUpdateErrorEvent);
  DefineEventAdapter(TypeInfo(TFIBUpdateRecordEvent), TatFIBDataSetDispatcher, @TatFIBDataSetDispatcher.__TFIBUpdateRecordEvent);
  DefineEventAdapter(TypeInfo(TFIBAfterUpdateRecordEvent), TatFIBDataSetDispatcher, @TatFIBDataSetDispatcher.__TFIBAfterUpdateRecordEvent);
  DefineEventAdapter(TypeInfo(TOnFetchRecord), TatFIBDataSetDispatcher, @TatFIBDataSetDispatcher.__TOnFetchRecord);
  DefineEventAdapter(TypeInfo(TCompareFieldValues), TatFIBDataSetDispatcher, @TatFIBDataSetDispatcher.__TCompareFieldValues);
  DefineEventAdapter(TypeInfo(TOnFillClientBlob), TatFIBDataSetDispatcher, @TatFIBDataSetDispatcher.__TOnFillClientBlob);
  DefineEventAdapter(TypeInfo(TOnBlobFieldProcessing), TatFIBDataSetDispatcher, @TatFIBDataSetDispatcher.__TOnBlobFieldProcessing);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('RecordDataLength',1,tkInteger,nil,__RecordDataLength,false,0,'n: Integer');
    DefineMethod('IsDBKeyField',1,tkVariant,nil,__IsDBKeyField,false,0,'Field: TObject');
    DefineMethod('LocateOptionsToExtLocateOptions',1,tkInteger,nil,__LocateOptionsToExtLocateOptions,false,0,'LocateOptions: TLocateOptions');
    DefineMethod('FilterOut',1,tkNone,nil,__FilterOut,false,0,'FromDS: TFIBCustomDataSet');
    DefineMethod('Register',0,tkNone,nil,__Register,false,0,'');
    AddConstant('cusUnmodified',cusUnmodified);
    AddConstant('cusModified',cusModified);
    AddConstant('cusInserted',cusInserted);
    AddConstant('cusDeleted',cusDeleted);
    AddConstant('cusUninserted',cusUninserted);
    AddConstant('cusDeletedApplied',cusDeletedApplied);
    AddConstant('uaFail',uaFail);
    AddConstant('uaAbort',uaAbort);
    AddConstant('uaSkip',uaSkip);
    AddConstant('uaRetry',uaRetry);
    AddConstant('uaApply',uaApply);
    AddConstant('uaApplied',uaApplied);
    AddConstant('skModify',skModify);
    AddConstant('skInsert',skInsert);
    AddConstant('skDelete',skDelete);
    AddConstant('skRefresh',skRefresh);
    AddConstant('skMerge',skMerge);
    AddConstant('dfNormal',dfNormal);
    AddConstant('dfRRecNumber',dfRRecNumber);
    AddConstant('eloCaseInsensitive',eloCaseInsensitive);
    AddConstant('eloPartialKey',eloPartialKey);
    AddConstant('eloWildCards',eloWildCards);
    AddConstant('eloInSortedDS',eloInSortedDS);
    AddConstant('eloNearest',eloNearest);
    AddConstant('eloInFetchedRecords',eloInFetchedRecords);
    AddConstant('lkStandard',lkStandard);
    AddConstant('lkNext',lkNext);
    AddConstant('lkPrior',lkPrior);
    AddConstant('tkReadTransaction',tkReadTransaction);
    AddConstant('tkUpdateTransaction',tkUpdateTransaction);
    AddConstant('cmkStandard',cmkStandard);
    AddConstant('cmkLimitedBufferSize',cmkLimitedBufferSize);
    AddConstant('ubiCheckIsNull',ubiCheckIsNull);
    AddConstant('ubiPost',ubiPost);
    AddConstant('ubiCancel',ubiCancel);
    AddConstant('ubiClearOldValue',ubiClearOldValue);
    AddConstant('ubiRefresh',ubiRefresh);
    AddConstant('drsInCacheRefresh',drsInCacheRefresh);
    AddConstant('drsInSort',drsInSort);
    AddConstant('drsInOpenByTimer',drsInOpenByTimer);
    AddConstant('drsInFilterProc',drsInFilterProc);
    AddConstant('drsInGetRecordProc',drsInGetRecordProc);
    AddConstant('drsInGotoBookMark',drsInGotoBookMark);
    AddConstant('drsInClone',drsInClone);
    AddConstant('drsInApplyUpdates',drsInApplyUpdates);
    AddConstant('drsInRefreshClientFields',drsInRefreshClientFields);
    AddConstant('drsDontCheckInactive',drsDontCheckInactive);
    AddConstant('drsForceCreateCalcFields',drsForceCreateCalcFields);
    AddConstant('drsInRefreshRow',drsInRefreshRow);
    AddConstant('drsInMoveRecord',drsInMoveRecord);
    AddConstant('drsInCacheDelete',drsInCacheDelete);
    AddConstant('drsInFetchingAll',drsInFetchingAll);
    AddConstant('drsInLoaded',drsInLoaded);
    AddConstant('drsGetBlobStream',drsGetBlobStream);
    AddConstant('drsInLoadFromStream',drsInLoadFromStream);
    AddConstant('drsInFieldValidate',drsInFieldValidate);
    AddConstant('drsInFieldAsData',drsInFieldAsData);
    AddConstant('ftByField',ftByField);
    AddConstant('ftCopy',ftCopy);
    AddConstant('vBufferCacheSize',vBufferCacheSize);
    AddConstant('vMinBufferChunksForLimCache',vMinBufferChunksForLimCache);
    AddConstant('SNoAction',SNoAction);
  end;
end;

class function TatFIBDataSetLibrary.LibraryName: string;
begin
  result := 'FIBDataSet';
end;

initialization
  RegisterScripterLibrary(TatFIBDataSetLibrary, True);

{$WARNINGS ON}

end.

