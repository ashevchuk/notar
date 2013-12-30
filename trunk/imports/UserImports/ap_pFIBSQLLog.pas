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
unit ap_pFIBSQLLog;

interface

uses
  SysUtils,
  Classes,
  pTestInfo,
  pFIBInterfaces,
  FIBDatabase,
  pFIBProps,
  fib,
  StdFuncs,
  pFIBQuery,
  FIBQuery,
  pFIBCacheQueries,
  pFIBSQLLog,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBSQLLogLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TpFIBStatisticsClass = class of TpFIBStatistics;
  TFIBSQLLoggerClass = class of TFIBSQLLogger;

  TatpFIBSQLLogDispatcher = class(TatEventDispatcher)
  private
    procedure __TSQLLogEvent(const ObjectName: String; const Operation: String; const EventText: String;  DataType: TLogFlag;  cApplication: String;  EventTime: TDateTime);
  end;


implementation



procedure TatpFIBSQLLogDispatcher.__TSQLLogEvent(const ObjectName: String; const Operation: String; const EventText: String;  DataType: TLogFlag;  cApplication: String;  EventTime: TDateTime);
var
  DataTypeTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TSQLLogEvent(BeforeCall)(ObjectName,Operation,EventText,DataType,cApplication,EventTime);
    DataTypeTemp := Integer(DataType);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [ObjectName,Operation,EventText,DataTypeTemp,cApplication,EventTime]);
    if AssignedMethod(AfterCall) then
      TSQLLogEvent(AfterCall)(ObjectName,Operation,EventText,DataType,cApplication,EventTime);
  end;
end;

procedure TatpFIBSQLLogLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TpFIBStatistics);
  Scripter.DefineClassByRTTI(TFIBSQLLogger);
  DefineEventAdapter(TypeInfo(TSQLLogEvent), TatpFIBSQLLogDispatcher, @TatpFIBSQLLogDispatcher.__TSQLLogEvent);
  With Scripter.DefineClass(ClassType) do
  begin
    AddConstant('fspExecuteCount',fspExecuteCount);
    AddConstant('fspPrepareCount',fspPrepareCount);
    AddConstant('fspSumTimeExecute',fspSumTimeExecute);
    AddConstant('fspAvgTimeExecute',fspAvgTimeExecute);
    AddConstant('fspMaxTimeExecute',fspMaxTimeExecute);
    AddConstant('fspLastTimeExecute',fspLastTimeExecute);
  end;
end;

class function TatpFIBSQLLogLibrary.LibraryName: string;
begin
  result := 'pFIBSQLLog';
end;

initialization
  RegisterScripterLibrary(TatpFIBSQLLogLibrary, True);

{$WARNINGS ON}

end.

