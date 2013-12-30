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
unit ap_IB_Services;

interface

uses
  SysUtils,
  Classes,
  ibase,
  IB_Intf,
  IB_Externals,
  StdFuncs,
  IB_Services,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatIB_ServicesLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatIB_ServicesLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    AddConstant('DefaultBufferSize',DefaultBufferSize);
    AddConstant('SPBPrefix',SPBPrefix);
  end;
end;

class function TatIB_ServicesLibrary.LibraryName: string;
begin
  result := 'IB_Services';
end;

initialization
  RegisterScripterLibrary(TatIB_ServicesLibrary, True);

{$WARNINGS ON}

end.

