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
unit ap_SIBFIBEA;

interface

uses
  Classes,
  SIBEABase,
  SIBAPI,
  FIBDatabase,
  SIBFIBEA,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatSIBFIBEALibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TSIBfibEventAlerterClass = class of TSIBfibEventAlerter;



implementation



procedure TatSIBFIBEALibrary.Init;
begin
  Scripter.DefineClassByRTTI(TSIBfibEventAlerter);
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatSIBFIBEALibrary.LibraryName: string;
begin
  result := 'SIBFIBEA';
end;

initialization
  RegisterScripterLibrary(TatSIBFIBEALibrary, True);

{$WARNINGS ON}

end.

