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
unit ap_IBBlobFilter;

interface

uses
  Classes,
  IBBlobFilter,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatIBBlobFilterLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TIBBlobFiltersClass = class of TIBBlobFilters;



implementation



procedure TatIBBlobFilterLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TIBBlobFilters);
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatIBBlobFilterLibrary.LibraryName: string;
begin
  result := 'IBBlobFilter';
end;

initialization
  RegisterScripterLibrary(TatIBBlobFilterLibrary, True);

{$WARNINGS ON}

end.

