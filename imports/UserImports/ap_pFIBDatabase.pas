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
unit ap_pFIBDatabase;

interface

uses
  SysUtils,
  Classes,
  DB,
  ibase,
  IB_Intf,
  ib_externals,
  fib,
  FIBDatabase,
  FIBDataSet,
  FIBQuery,
  pFIBProps,
  StdFuncs,
  FIBPlatforms,
  pFIBDatabase,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBDatabaseLibrary = class(TatScripterLibrary)
    procedure __WriteDBParamsToAlias(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TpFIBDatabaseClass = class of TpFIBDatabase;
  TpFIBTransactionClass = class of TpFIBTransaction;

  TatpFIBDatabaseDispatcher = class(TatEventDispatcher)
  private
    procedure __TFIBLoginEvent( Database: TFIBDatabase;  LoginParams: TStrings; var DoConnect: boolean);
    procedure __TpFIBAcceptCacheSchema(const ObjName: string; var Accept: boolean);
    procedure __TFIBLostConnectEvent( Database: TFIBDatabase;  E: EFIBError; var Actions: TOnLostConnectActions; var DoRaise: boolean);
    procedure __TFIBRestoreConnectEvent( Database: TFIBDatabase);
    procedure __TOnSQLExecute( Query: TFIBQuery;  SQLType: TFIBSQLTypes);
  end;


implementation



procedure TatpFIBDatabaseDispatcher.__TFIBLoginEvent( Database: TFIBDatabase;  LoginParams: TStrings; var DoConnect: boolean);
var
  DoConnectTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TFIBLoginEvent(BeforeCall)(Database,LoginParams,DoConnect);
    DoConnectTemp := DoConnect;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Database,LoginParams,DoConnectTemp]);
    DoConnect := DoConnectTemp;
    if AssignedMethod(AfterCall) then
      TFIBLoginEvent(AfterCall)(Database,LoginParams,DoConnect);
  end;
end;

procedure TatpFIBDatabaseDispatcher.__TpFIBAcceptCacheSchema(const ObjName: string; var Accept: boolean);
var
  AcceptTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TpFIBAcceptCacheSchema(BeforeCall)(ObjName,Accept);
    AcceptTemp := Accept;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [ObjName,AcceptTemp]);
    Accept := AcceptTemp;
    if AssignedMethod(AfterCall) then
      TpFIBAcceptCacheSchema(AfterCall)(ObjName,Accept);
  end;
end;

procedure TatpFIBDatabaseDispatcher.__TFIBLostConnectEvent( Database: TFIBDatabase;  E: EFIBError; var Actions: TOnLostConnectActions; var DoRaise: boolean);
var
  ActionsTemp: variant;
  DoRaiseTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TFIBLostConnectEvent(BeforeCall)(Database,E,Actions,DoRaise);
    ActionsTemp := Integer(Actions);
    DoRaiseTemp := DoRaise;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Database,E,ActionsTemp,DoRaiseTemp]);
    Actions := TOnLostConnectActions(VarToInteger(ActionsTemp));
    DoRaise := DoRaiseTemp;
    if AssignedMethod(AfterCall) then
      TFIBLostConnectEvent(AfterCall)(Database,E,Actions,DoRaise);
  end;
end;

procedure TatpFIBDatabaseDispatcher.__TFIBRestoreConnectEvent( Database: TFIBDatabase);
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TFIBRestoreConnectEvent(BeforeCall)(Database);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Database]);
    if AssignedMethod(AfterCall) then
      TFIBRestoreConnectEvent(AfterCall)(Database);
  end;
end;

procedure TatpFIBDatabaseDispatcher.__TOnSQLExecute( Query: TFIBQuery;  SQLType: TFIBSQLTypes);
var
  SQLTypeTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnSQLExecute(BeforeCall)(Query,SQLType);
    SQLTypeTemp := Integer(SQLType);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Query,SQLTypeTemp]);
    if AssignedMethod(AfterCall) then
      TOnSQLExecute(AfterCall)(Query,SQLType);
  end;
end;

procedure TatpFIBDatabaseLibrary.__WriteDBParamsToAlias(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBDatabase.WriteDBParamsToAlias(TpFIBDatabase(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatpFIBDatabaseLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TpFIBDatabase);
  Scripter.DefineClassByRTTI(TpFIBTransaction);
  DefineEventAdapter(TypeInfo(TFIBLoginEvent), TatpFIBDatabaseDispatcher, @TatpFIBDatabaseDispatcher.__TFIBLoginEvent);
  DefineEventAdapter(TypeInfo(TpFIBAcceptCacheSchema), TatpFIBDatabaseDispatcher, @TatpFIBDatabaseDispatcher.__TpFIBAcceptCacheSchema);
  DefineEventAdapter(TypeInfo(TFIBLostConnectEvent), TatpFIBDatabaseDispatcher, @TatpFIBDatabaseDispatcher.__TFIBLostConnectEvent);
  DefineEventAdapter(TypeInfo(TFIBRestoreConnectEvent), TatpFIBDatabaseDispatcher, @TatpFIBDatabaseDispatcher.__TFIBRestoreConnectEvent);
  DefineEventAdapter(TypeInfo(TOnSQLExecute), TatpFIBDatabaseDispatcher, @TatpFIBDatabaseDispatcher.__TOnSQLExecute);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('WriteDBParamsToAlias',1,tkNone,nil,__WriteDBParamsToAlias,false,0,'Database: TpFIBDataBase');
    AddConstant('laTerminateApp',laTerminateApp);
    AddConstant('laCloseConnect',laCloseConnect);
    AddConstant('laIgnore',laIgnore);
    AddConstant('laWaitRestore',laWaitRestore);
  end;
end;

class function TatpFIBDatabaseLibrary.LibraryName: string;
begin
  result := 'pFIBDatabase';
end;

initialization
  RegisterScripterLibrary(TatpFIBDatabaseLibrary, True);

{$WARNINGS ON}

end.

