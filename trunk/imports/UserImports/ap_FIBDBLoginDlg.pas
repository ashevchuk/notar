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
unit ap_FIBDBLoginDlg;

interface

uses
  SysUtils,
  Forms,
  Classes,
  Controls,
  StdCtrls,
  ExtCtrls,
  Dialogs,
  FIBDBLoginDlg,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatFIBDBLoginDlgLibrary = class(TatScripterLibrary)
    procedure __pFIBLoginDialogEx(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TfrmFIBDBLoginDlgClass = class of TfrmFIBDBLoginDlg;



implementation



procedure TatFIBDBLoginDlgLibrary.__pFIBLoginDialogEx(AMachine: TatVirtualMachine);
  var
  Param1: string;
  Param2: string;
  Param3: string;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := VarToStr(GetInputArg(1));
Param2 := VarToStr(GetInputArg(2));
Param3 := VarToStr(GetInputArg(3));
AResult := FIBDBLoginDlg.pFIBLoginDialogEx(VarToStr(GetInputArg(0)),Param1,Param2,Param3);
    ReturnOutputArg(AResult);
    SetInputArg(1,string(Param1));
    SetInputArg(2,string(Param2));
    SetInputArg(3,string(Param3));
  end;
end;

procedure TatFIBDBLoginDlgLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TfrmFIBDBLoginDlg);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('pFIBLoginDialogEx',4,tkVariant,nil,__pFIBLoginDialogEx,false,0,'ADatabaseName: string; AUserName: string; APassword: string; ARoleName: string').SetVarArgs([1,2,3]);
  end;
end;

class function TatFIBDBLoginDlgLibrary.LibraryName: string;
begin
  result := 'FIBDBLoginDlg';
end;

initialization
  RegisterScripterLibrary(TatFIBDBLoginDlgLibrary, True);

{$WARNINGS ON}

end.

