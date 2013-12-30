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
unit ap_FIBDatabase;

interface

uses
  SysUtils,
  SyncObjs,
  Classes,
  ibase,
  IB_Intf,
  IB_Externals,
  pFIBProps,
  IBBlobFilter,
  fib,
  pFIBEventLists,
  StdFuncs,
  pFIBInterfaces,
  FIBMDTInterface,
  FIBPlatforms,
  FIBDatabase,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatFIBDatabaseLibrary = class(TatScripterLibrary)
    procedure __SaveSchemaToFile(AMachine: TatVirtualMachine);
    procedure __LoadSchemaFromFile(AMachine: TatVirtualMachine);
    procedure __IBFilterBuffer(AMachine: TatVirtualMachine);
    procedure __ExistBlobFilter(AMachine: TatVirtualMachine);
    procedure __GetConnectedDataBase(AMachine: TatVirtualMachine);
    procedure __CloseAllDatabases(AMachine: TatVirtualMachine);
    procedure __GetDefDataBase(AMachine: TatVirtualMachine);
    procedure __SetDefDataBase(AMachine: TatVirtualMachine);
    {procedure __GetDatabaseList(AMachine: TatVirtualMachine); }
    {procedure __SetDatabaseList(AMachine: TatVirtualMachine); }
    procedure __GetFIBHideGrantError(AMachine: TatVirtualMachine);
    procedure __SetFIBHideGrantError(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TFIBDatabaseClass = class of TFIBDatabase;
  TFIBTransactionClass = class of TFIBTransaction;
  TFIBBaseClass = class of TFIBBase;

  TatFIBDatabaseDispatcher = class(TatEventDispatcher)
  private
    procedure __TOnIdleConnect( Sender: TFIBDatabase;  IdleTicks: Cardinal; var Action: TActionOnIdle);
    procedure __TEndTrEvent( EndingTR: TFIBTransaction;  Action: TTransactionAction;  Force: Boolean);
  end;


implementation



procedure TatFIBDatabaseDispatcher.__TOnIdleConnect( Sender: TFIBDatabase;  IdleTicks: Cardinal; var Action: TActionOnIdle);
var
  ActionTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnIdleConnect(BeforeCall)(Sender,IdleTicks,Action);
    ActionTemp := Integer(Action);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Sender,IdleTicks,ActionTemp]);
    Action := TActionOnIdle(VarToInteger(ActionTemp));
    if AssignedMethod(AfterCall) then
      TOnIdleConnect(AfterCall)(Sender,IdleTicks,Action);
  end;
end;

procedure TatFIBDatabaseDispatcher.__TEndTrEvent( EndingTR: TFIBTransaction;  Action: TTransactionAction;  Force: Boolean);
var
  ActionTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TEndTrEvent(BeforeCall)(EndingTR,Action,Force);
    ActionTemp := Integer(Action);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [EndingTR,ActionTemp,Force]);
    if AssignedMethod(AfterCall) then
      TEndTrEvent(AfterCall)(EndingTR,Action,Force);
  end;
end;

procedure TatFIBDatabaseLibrary.__SaveSchemaToFile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBDatabase.SaveSchemaToFile(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatFIBDatabaseLibrary.__LoadSchemaFromFile(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
1: AResult := FIBDatabase.LoadSchemaFromFile(VarToStr(GetInputArg(0)));
2: AResult := FIBDatabase.LoadSchemaFromFile(VarToStr(GetInputArg(0)),GetInputArg(1));
3: AResult := FIBDatabase.LoadSchemaFromFile(VarToStr(GetInputArg(0)),GetInputArg(1),TFIBDatabase(VarToObject(GetInputArg(2))));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFIBDatabaseLibrary.__IBFilterBuffer(AMachine: TatVirtualMachine);
  var
  Param1: PAnsiChar;
  Param2: longint;
begin
  with AMachine do
  begin
Param1 := PAnsiChar(AnsiString(VarToStr(GetInputArg(1))));
Param2 := VarToInteger(GetInputArg(2));
    FIBDatabase.IBFilterBuffer(TFIBDatabase(VarToObject(GetInputArg(0))),Param1,Param2,VarToInteger(GetInputArg(3)),GetInputArg(4));
    SetInputArg(1,string(Param1));
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatFIBDatabaseLibrary.__ExistBlobFilter(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := FIBDatabase.ExistBlobFilter(TFIBDatabase(VarToObject(GetInputArg(0))),VarToInteger(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

function ObjectToVar(const AObject: TObject): Variant;
begin
  Result := IntToStr(Integer(Pointer(AObject)));
end;

procedure TatFIBDatabaseLibrary.__GetConnectedDataBase(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(FIBDatabase.GetConnectedDataBase(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFIBDatabaseLibrary.__CloseAllDatabases(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBDatabase.CloseAllDatabases;
  end;
end;

procedure TatFIBDatabaseLibrary.__GetDefDataBase(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(FIBDatabase.DefDataBase));
  end;
end;

procedure TatFIBDatabaseLibrary.__SetDefDataBase(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBDatabase.DefDataBase:=TFIBDatabase(VarToObject(GetInputArg(0)));
  end;
end;

{
procedure TatFIBDatabaseLibrary.__GetDatabaseList(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(FIBDatabase.DatabaseList);
  end;
end;

procedure TatFIBDatabaseLibrary.__SetDatabaseList(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBDatabase.DatabaseList:=GetInputArg(0);
  end;
end; }

procedure TatFIBDatabaseLibrary.__GetFIBHideGrantError(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(FIBDatabase.FIBHideGrantError);
  end;
end;

procedure TatFIBDatabaseLibrary.__SetFIBHideGrantError(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBDatabase.FIBHideGrantError:=GetInputArg(0);
  end;
end;

procedure TatFIBDatabaseLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TFIBDatabase);
  Scripter.DefineClassByRTTI(TFIBTransaction);
  Scripter.DefineClassByRTTI(TFIBBase);
  DefineEventAdapter(TypeInfo(TOnIdleConnect), TatFIBDatabaseDispatcher, @TatFIBDatabaseDispatcher.__TOnIdleConnect);
  DefineEventAdapter(TypeInfo(TEndTrEvent), TatFIBDatabaseDispatcher, @TatFIBDatabaseDispatcher.__TEndTrEvent);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('SaveSchemaToFile',1,tkNone,nil,__SaveSchemaToFile,false,0,'FileName: string');
    DefineMethod('LoadSchemaFromFile',3,tkVariant,nil,__LoadSchemaFromFile,false,2,'FileName: string; NeedValidate: boolean = True; DB: TFIBDatabase = nil');
    DefineMethod('IBFilterBuffer',5,tkNone,nil,__IBFilterBuffer,false,0,'DataBase: TFIBDataBase; BlobBuffer: PAnsiChar; BlobSize: longint; BlobSubType: integer; ForEncode: boolean').SetVarArgs([1,2]);
    DefineMethod('ExistBlobFilter',2,tkVariant,nil,__ExistBlobFilter,false,0,'DataBase: TFIBDataBase; BlobSubType: integer');
    DefineMethod('GetConnectedDataBase',1,tkClass,TFIBDatabase,__GetConnectedDataBase,false,0,'DBName: string');
    DefineMethod('CloseAllDatabases',0,tkNone,nil,__CloseAllDatabases,false,0,'');
    DefineProp('DefDataBase',tkClass,__GetDefDataBase,__SetDefDataBase,TFIBDatabase,false,0);
//    DefineProp('DatabaseList',tkVariant,__GetDatabaseList,__SetDatabaseList,nil,false,0);
    DefineProp('FIBHideGrantError',tkVariant,__GetFIBHideGrantError,__SetFIBHideGrantError,nil,false,0);
    AddConstant('ddoIsDefaultDatabase',ddoIsDefaultDatabase);
    AddConstant('ddoStoreConnected',ddoStoreConnected);
    AddConstant('ddoNotSavePassword',ddoNotSavePassword);
    AddConstant('detOnConnect',detOnConnect);
    AddConstant('detBeforeDisconnect',detBeforeDisconnect);
    AddConstant('detBeforeDestroy',detBeforeDestroy);
    AddConstant('urFieldsInfo',urFieldsInfo);
    AddConstant('urDataSetInfo',urDataSetInfo);
    AddConstant('urErrorMessagesInfo',urErrorMessagesInfo);
    AddConstant('csSystem',csSystem);
    AddConstant('csSession',csSession);
    AddConstant('csTransaction',csTransaction);
    AddConstant('drsInCloseLostConnect',drsInCloseLostConnect);
    AddConstant('drsInRestoreLostConnect',drsInRestoreLostConnect);
    AddConstant('aiCloseConnect',aiCloseConnect);
    AddConstant('aiKeepLiveConnect',aiKeepLiveConnect);
    AddConstant('TARollback',TARollback);
    AddConstant('TARollbackRetaining',TARollbackRetaining);
    AddConstant('TACommit',TACommit);
    AddConstant('TACommitRetaining',TACommitRetaining);
    AddConstant('tsActive',tsActive);
    AddConstant('tsClosed',tsClosed);
    AddConstant('tsDoRollback',tsDoRollback);
    AddConstant('tsDoRollbackRetaining',tsDoRollbackRetaining);
    AddConstant('tsDoCommit',tsDoCommit);
    AddConstant('tsDoCommitRetaining',tsDoCommitRetaining);
    AddConstant('trsInLoaded',trsInLoaded);
    AddConstant('tetBeforeStartTransaction',tetBeforeStartTransaction);
    AddConstant('tetAfterStartTransaction',tetAfterStartTransaction);
    AddConstant('tetBeforeEndTransaction',tetBeforeEndTransaction);
    AddConstant('tetAfterEndTransaction',tetAfterEndTransaction);
    AddConstant('tetBeforeDestroy',tetBeforeDestroy);
    AddConstant('mtrNone',mtrNone);
    AddConstant('mtrSeparateTransaction',mtrSeparateTransaction);
    AddConstant('mtrAutoDefine',mtrAutoDefine);
    AddConstant('OCTETS_CHARSET_ID',OCTETS_CHARSET_ID);
  end;
end;

class function TatFIBDatabaseLibrary.LibraryName: string;
begin
  result := 'FIBDatabase';
end;

initialization
  RegisterScripterLibrary(TatFIBDatabaseLibrary, True);

{$WARNINGS ON}

end.

