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
unit ap_SIBGlobals;

interface

uses
  SysUtils,
  SIBGlobals,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatSIBGlobalsLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  ESIBErrorClass = class of ESIBError;



implementation



procedure TatSIBGlobalsLibrary.Init;
begin
  Scripter.DefineClassByRTTI(ESIBError);
  With Scripter.DefineClass(ClassType) do
  begin
    AddConstant('SIB_MAX_EVENT_BLOCK',SIB_MAX_EVENT_BLOCK);
    AddConstant('SIB_MAX_EVENT_LENGTH',SIB_MAX_EVENT_LENGTH);
    AddConstant('SIB_RS_NOT_REGISTERED',SIB_RS_NOT_REGISTERED);
    AddConstant('SIB_RS_ALREADY_REGISTERED',SIB_RS_ALREADY_REGISTERED);
    AddConstant('SIB_RS_EMPTY_STRINGS',SIB_RS_EMPTY_STRINGS);
    AddConstant('SIB_RS_TOO_LONG',SIB_RS_TOO_LONG);
    AddConstant('SIB_RS_FIB_SET_NATIVEHANDLE',SIB_RS_FIB_SET_NATIVEHANDLE);
    AddConstant('SIB_RS_FIB_NO_DATABASE',SIB_RS_FIB_NO_DATABASE);
  end;
end;

class function TatSIBGlobalsLibrary.LibraryName: string;
begin
  result := 'SIBGlobals';
end;

initialization
  RegisterScripterLibrary(TatSIBGlobalsLibrary, True);

{$WARNINGS ON}

end.

