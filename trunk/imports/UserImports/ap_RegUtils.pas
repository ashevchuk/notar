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
unit ap_RegUtils;

interface

uses
  Windows,
  SysUtils,
  Classes,
  registry,
  RegUtils,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatRegUtilsLibrary = class(TatScripterLibrary)
    procedure __GetKeyForParValue(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatRegUtilsLibrary.__GetKeyForParValue(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(RegUtils.GetKeyForParValue(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),VarToStr(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatRegUtilsLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('GetKeyForParValue',3,tkVariant,nil,__GetKeyForParValue,false,0,'aRootKey: string; ParName: string; ParValue: string');
  end;
end;

class function TatRegUtilsLibrary.LibraryName: string;
begin
  result := 'RegUtils';
end;

initialization
  RegisterScripterLibrary(TatRegUtilsLibrary, True);

{$WARNINGS ON}

end.

