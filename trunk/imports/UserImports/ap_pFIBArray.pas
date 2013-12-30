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
unit ap_pFIBArray;

interface

uses
  SysUtils,
  Classes,
  ibase,
  IB_Intf,
  ib_externals,
  DB,
  fib,
  FIBDatabase,
  StdFuncs,
  FIBPlatforms,
  pFIBArray,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBArrayLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatpFIBArrayLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatpFIBArrayLibrary.LibraryName: string;
begin
  result := 'pFIBArray';
end;

initialization
  RegisterScripterLibrary(TatpFIBArrayLibrary, True);

{$WARNINGS ON}

end.

