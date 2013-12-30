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
unit ap_pFIBEventLists;

interface

uses
  SyncObjs,
  SysUtils,
  Classes,
  pFIBEventLists,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBEventListsLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TCallBackListClass = class of TCallBackList;
  TNotifyEventListClass = class of TNotifyEventList;



implementation



procedure TatpFIBEventListsLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TCallBackList);
  Scripter.DefineClassByRTTI(TNotifyEventList);
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatpFIBEventListsLibrary.LibraryName: string;
begin
  result := 'pFIBEventLists';
end;

initialization
  RegisterScripterLibrary(TatpFIBEventListsLibrary, True);

{$WARNINGS ON}

end.

