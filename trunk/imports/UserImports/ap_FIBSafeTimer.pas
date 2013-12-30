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
unit ap_FIBSafeTimer;

interface

uses
  FIBPlatforms,
  SyncObjs,
  SysUtils,
  Classes,
  FIBSafeTimer,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatFIBSafeTimerLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TFIBCustomTimerClass = class of TFIBCustomTimer;



implementation



procedure TatFIBSafeTimerLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TFIBCustomTimer);
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatFIBSafeTimerLibrary.LibraryName: string;
begin
  result := 'FIBSafeTimer';
end;

initialization
  RegisterScripterLibrary(TatFIBSafeTimerLibrary, True);

{$WARNINGS ON}

end.

