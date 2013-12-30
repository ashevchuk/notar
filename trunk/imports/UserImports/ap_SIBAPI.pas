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
unit ap_SIBAPI;

interface

uses
  IB_Intf,
  SIBGlobals,
  SIBAPI,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatSIBAPILibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatSIBAPILibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatSIBAPILibrary.LibraryName: string;
begin
  result := 'SIBAPI';
end;

initialization
  RegisterScripterLibrary(TatSIBAPILibrary, True);

{$WARNINGS ON}

end.

