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
unit ap_DBParsers;

interface

uses
  SysUtils,
  Classes,
  DB,
  DBCommon,
  DbConsts,
  FIBPlatforms,
  DBParsers,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatDBParsersLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TExpressionParserClass = class of TExpressionParser;



implementation



procedure TatDBParsersLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TExpressionParser);
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatDBParsersLibrary.LibraryName: string;
begin
  result := 'DBParsers';
end;

initialization
  RegisterScripterLibrary(TatDBParsersLibrary, True);

{$WARNINGS ON}

end.

