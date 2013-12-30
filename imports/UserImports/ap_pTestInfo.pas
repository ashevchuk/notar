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
unit ap_pTestInfo;

interface

uses
  Windows,
  SysUtils,
  Classes,
  pFIBInterfaces,
  pFIBLists,
  StrUtil,
  pTestInfo,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpTestInfoLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TTestInfoClass = class of TTestInfo;
  TTestVarValuesClass = class of TTestVarValues;

  TatpTestInfoDispatcher = class(TatEventDispatcher)
  private
    procedure __TTestProcObj();
  end;


implementation



procedure TatpTestInfoDispatcher.__TTestProcObj();
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TTestProcObj(BeforeCall)();
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, []);
    if AssignedMethod(AfterCall) then
      TTestProcObj(AfterCall)();
  end;
end;

procedure TatpTestInfoLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TTestInfo);
  Scripter.DefineClassByRTTI(TTestVarValues);
  DefineEventAdapter(TypeInfo(TTestProcObj), TatpTestInfoDispatcher, @TatpTestInfoDispatcher.__TTestProcObj);
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatpTestInfoLibrary.LibraryName: string;
begin
  result := 'pTestInfo';
end;

initialization
  RegisterScripterLibrary(TatpTestInfoLibrary, True);

{$WARNINGS ON}

end.

