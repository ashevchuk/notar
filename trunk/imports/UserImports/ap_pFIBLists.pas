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
unit ap_pFIBLists;

interface

uses
  SysUtils,
  Classes,
  FIBPlatforms,
  pFIBLists,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBListsLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TCallObjectClass = class of TCallObject;
  TObjStringListClass = class of TObjStringList;
  TSortedListClass = class of TSortedList;
  TStringCollectionClass = class of TStringCollection;



implementation



procedure TatpFIBListsLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TCallObject);
  Scripter.DefineClassByRTTI(TObjStringList);
  Scripter.DefineClassByRTTI(TSortedList);
  Scripter.DefineClassByRTTI(TStringCollection);
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatpFIBListsLibrary.LibraryName: string;
begin
  result := 'pFIBLists';
end;

initialization
  RegisterScripterLibrary(TatpFIBListsLibrary, True);

{$WARNINGS ON}

end.

