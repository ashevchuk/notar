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
unit ap_pFIBDataSet;

interface

uses
  SysUtils,
  Classes,
  StdFuncs,
  DB,
  ibase,
  IB_Intf,
  IB_Externals,
  FIBPlatforms,
  fib,
  FIBMiscellaneous,
  pFIBDatabase,
  FIBDataBase,
  FIBDataSet,
  FIBQuery,
  pFIBLists,
  pFIBQuery,
  DSContainer,
  pFIBProps,
  IB_ErrorCodes,
  pFIBInterfaces,
  pFIBDataInfo,
  pFIBDataSet,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBDataSetLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TpFIBDataSetClass = class of TpFIBDataSet;

  TatpFIBDataSetDispatcher = class(TatEventDispatcher)
  private
    procedure __TLockErrorEvent( DataSet: TDataSet;  LockError: TLockStatus; var ErrorMessage: string; var Action: TDataAction);
    procedure __TOnGetSQLTextProc( DataSet: TFIBDataSet; var SQLText: string);
  end;


implementation



procedure TatpFIBDataSetDispatcher.__TLockErrorEvent( DataSet: TDataSet;  LockError: TLockStatus; var ErrorMessage: string; var Action: TDataAction);
var
  LockErrorTemp: variant;
  ErrorMessageTemp: variant;
  ActionTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TLockErrorEvent(BeforeCall)(DataSet,LockError,ErrorMessage,Action);
    LockErrorTemp := Integer(LockError);
    ErrorMessageTemp := string(ErrorMessage);
    ActionTemp := Action;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [DataSet,LockErrorTemp,ErrorMessageTemp,ActionTemp]);
    ErrorMessage := VarToStr(ErrorMessageTemp);
    Action := ActionTemp;
    if AssignedMethod(AfterCall) then
      TLockErrorEvent(AfterCall)(DataSet,LockError,ErrorMessage,Action);
  end;
end;

procedure TatpFIBDataSetDispatcher.__TOnGetSQLTextProc( DataSet: TFIBDataSet; var SQLText: string);
var
  SQLTextTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnGetSQLTextProc(BeforeCall)(DataSet,SQLText);
    SQLTextTemp := string(SQLText);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [DataSet,SQLTextTemp]);
    SQLText := VarToStr(SQLTextTemp);
    if AssignedMethod(AfterCall) then
      TOnGetSQLTextProc(AfterCall)(DataSet,SQLText);
  end;
end;

procedure TatpFIBDataSetLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TpFIBDataSet);
  DefineEventAdapter(TypeInfo(TLockErrorEvent), TatpFIBDataSetDispatcher, @TatpFIBDataSetDispatcher.__TLockErrorEvent);
  DefineEventAdapter(TypeInfo(TOnGetSQLTextProc), TatpFIBDataSetDispatcher, @TatpFIBDataSetDispatcher.__TOnGetSQLTextProc);
  With Scripter.DefineClass(ClassType) do
  begin
    AddConstant('lsSuccess',lsSuccess);
    AddConstant('lsDeadLock',lsDeadLock);
    AddConstant('lsNotExist',lsNotExist);
    AddConstant('lsMultiply',lsMultiply);
    AddConstant('lsUnknownError',lsUnknownError);
    AddConstant('frkEdit',frkEdit);
    AddConstant('frkInsert',frkInsert);
    AddConstant('ifsAllFields',ifsAllFields);
    AddConstant('ifsNoBlob',ifsNoBlob);
    AddConstant('ifsOnlyBlob',ifsOnlyBlob);
  end;
end;

class function TatpFIBDataSetLibrary.LibraryName: string;
begin
  result := 'pFIBDataSet';
end;

initialization
  RegisterScripterLibrary(TatpFIBDataSetLibrary, True);

{$WARNINGS ON}

end.

