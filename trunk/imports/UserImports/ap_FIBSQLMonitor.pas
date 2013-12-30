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
unit ap_FIBSQLMonitor;

interface

uses
  SysUtils,
  Windows,
  Messages,
  Classes,
  FIBQuery,
  ibase,
  FIBDataSet,
  FIBDatabase,
  FIBSQLMonitor,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatFIBSQLMonitorLibrary = class(TatScripterLibrary)
    procedure __MonitorHook(AMachine: TatVirtualMachine);
    procedure __EnableMonitoring(AMachine: TatVirtualMachine);
    procedure __DisableMonitoring(AMachine: TatVirtualMachine);
    procedure __MonitoringEnabled(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TFIBCustomSQLMonitorClass = class of TFIBCustomSQLMonitor;
  TFIBSQLMonitorClass = class of TFIBSQLMonitor;
  TFIBSQLMonitorHookClass = class of TFIBSQLMonitorHook;

  TatFIBSQLMonitorDispatcher = class(TatEventDispatcher)
  private
    procedure __TSQLEvent( EventText: String;  EventTime: TDateTime);
  end;


implementation



procedure TatFIBSQLMonitorDispatcher.__TSQLEvent( EventText: String;  EventTime: TDateTime);
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TSQLEvent(BeforeCall)(EventText,EventTime);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [EventText,EventTime]);
    if AssignedMethod(AfterCall) then
      TSQLEvent(AfterCall)(EventText,EventTime);
  end;
end;

procedure TatFIBSQLMonitorLibrary.__MonitorHook(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(FIBSQLMonitor.MonitorHook);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFIBSQLMonitorLibrary.__EnableMonitoring(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBSQLMonitor.EnableMonitoring;
  end;
end;

procedure TatFIBSQLMonitorLibrary.__DisableMonitoring(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBSQLMonitor.DisableMonitoring;
  end;
end;

procedure TatFIBSQLMonitorLibrary.__MonitoringEnabled(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := FIBSQLMonitor.MonitoringEnabled;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFIBSQLMonitorLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TFIBCustomSQLMonitor);
  Scripter.DefineClassByRTTI(TFIBSQLMonitor);
  Scripter.DefineClassByRTTI(TFIBSQLMonitorHook);
  DefineEventAdapter(TypeInfo(TSQLEvent), TatFIBSQLMonitorDispatcher, @TatFIBSQLMonitorDispatcher.__TSQLEvent);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('MonitorHook',0,tkClass,TFIBSQLMonitorHook,__MonitorHook,false,0,'');
    DefineMethod('EnableMonitoring',0,tkNone,nil,__EnableMonitoring,false,0,'');
    DefineMethod('DisableMonitoring',0,tkNone,nil,__DisableMonitoring,false,0,'');
    DefineMethod('MonitoringEnabled',0,tkVariant,nil,__MonitoringEnabled,false,0,'');
    AddConstant('tfQPrepare',tfQPrepare);
    AddConstant('tfQExecute',tfQExecute);
    AddConstant('tfQFetch',tfQFetch);
    AddConstant('tfConnect',tfConnect);
    AddConstant('tfTransact',tfTransact);
    AddConstant('tfService',tfService);
    AddConstant('tfMisc',tfMisc);
    AddConstant('soSet',soSet);
    AddConstant('soRollBack',soRollBack);
    AddConstant('soRelease',soRelease);
    AddConstant('WM_MIN_FIBSQL_MONITOR',WM_MIN_FIBSQL_MONITOR);
    AddConstant('WM_MAX_FIBSQL_MONITOR',WM_MAX_FIBSQL_MONITOR);
    AddConstant('WM_FIBSQL_SQL_EVENT',WM_FIBSQL_SQL_EVENT);
    AddConstant('CM_RELEASE',CM_RELEASE);
  end;
end;

class function TatFIBSQLMonitorLibrary.LibraryName: string;
begin
  result := 'FIBSQLMonitor';
end;

initialization
  RegisterScripterLibrary(TatFIBSQLMonitorLibrary, True);

{$WARNINGS ON}

end.

