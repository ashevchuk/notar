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
unit ap_pFIBStoredProc;

interface

uses
  Classes,
  pFIBQuery,
  FIBQuery,
  FIBDataBase,
  pFIBStoredProc,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBStoredProcLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TpFIBStoredProcClass = class of TpFIBStoredProc;



implementation



procedure TatpFIBStoredProcLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TpFIBStoredProc);
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatpFIBStoredProcLibrary.LibraryName: string;
begin
  result := 'pFIBStoredProc';
end;

initialization
  RegisterScripterLibrary(TatpFIBStoredProcLibrary, True);

{$WARNINGS ON}

end.

