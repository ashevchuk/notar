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
unit ap_pFIBQuery;

interface

uses
  FIBPlatforms,
  SysUtils,
  Classes,
  DB,
  ibase,
  IB_Intf,
  ib_externals,
  FIBQuery,
  fib,
  FIBDataSet,
  pFIBQuery,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBQueryLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TpFIBQueryClass = class of TpFIBQuery;
  TpFIBUpdateObjectClass = class of TpFIBUpdateObject;

  TatpFIBQueryDispatcher = class(TatEventDispatcher)
  private
    procedure __TFIBQueryErrorEvent( pFIBQuery: TpFIBQuery;  E: EFIBError; var Action: TDataAction);
  end;


implementation



procedure TatpFIBQueryDispatcher.__TFIBQueryErrorEvent( pFIBQuery: TpFIBQuery;  E: EFIBError; var Action: TDataAction);
var
  ActionTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TFIBQueryErrorEvent(BeforeCall)(pFIBQuery,E,Action);
    ActionTemp := Action;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [pFIBQuery,E,ActionTemp]);
    Action := ActionTemp;
    if AssignedMethod(AfterCall) then
      TFIBQueryErrorEvent(AfterCall)(pFIBQuery,E,Action);
  end;
end;

procedure TatpFIBQueryLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TpFIBQuery);
  Scripter.DefineClassByRTTI(TpFIBUpdateObject);
  DefineEventAdapter(TypeInfo(TFIBQueryErrorEvent), TatpFIBQueryDispatcher, @TatpFIBQueryDispatcher.__TFIBQueryErrorEvent);
  With Scripter.DefineClass(ClassType) do
  begin
    AddConstant('oeBeforeDefault',oeBeforeDefault);
    AddConstant('oeAfterDefault',oeAfterDefault);
  end;
end;

class function TatpFIBQueryLibrary.LibraryName: string;
begin
  result := 'pFIBQuery';
end;

initialization
  RegisterScripterLibrary(TatpFIBQueryLibrary, True);

{$WARNINGS ON}

end.

