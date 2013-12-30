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
unit ap_SIBEABase;

interface

uses
  SysUtils,
  Classes,
  SyncObjs,
  SIBGlobals,
  SIBAPI,
  ibase,
  IB_Intf,
  IB_Externals,
  SIBEABase,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatSIBEABaseLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TSIBEventAlerterClass = class of TSIBEventAlerter;
  TSIBEventThreadClass = class of TSIBEventThread;

  TatSIBEABaseDispatcher = class(TatEventDispatcher)
  private
    procedure __TSIBAlertEvent( Sender: TObject;  EventName: string;  EventCount: Longint);
  end;


implementation



procedure TatSIBEABaseDispatcher.__TSIBAlertEvent( Sender: TObject;  EventName: string;  EventCount: Longint);
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TSIBAlertEvent(BeforeCall)(Sender,EventName,EventCount);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Sender,EventName,EventCount]);
    if AssignedMethod(AfterCall) then
      TSIBAlertEvent(AfterCall)(Sender,EventName,EventCount);
  end;
end;

procedure TatSIBEABaseLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TSIBEventAlerter);
  Scripter.DefineClassByRTTI(TSIBEventThread);
  DefineEventAdapter(TypeInfo(TSIBAlertEvent), TatSIBEABaseDispatcher, @TatSIBEABaseDispatcher.__TSIBAlertEvent);
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatSIBEABaseLibrary.LibraryName: string;
begin
  result := 'SIBEABase';
end;

initialization
  RegisterScripterLibrary(TatSIBEABaseLibrary, True);

{$WARNINGS ON}

end.

