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
unit ap_FIBMDTInterface;

interface

uses
  FIBMDTInterface,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatFIBMDTInterfaceLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatFIBMDTInterfaceLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatFIBMDTInterfaceLibrary.LibraryName: string;
begin
  result := 'FIBMDTInterface';
end;

initialization
  RegisterScripterLibrary(TatFIBMDTInterfaceLibrary, True);

{$WARNINGS ON}

end.

