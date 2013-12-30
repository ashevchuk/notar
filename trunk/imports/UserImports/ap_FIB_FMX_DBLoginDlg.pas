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
unit ap_FIB_FMX_DBLoginDlg;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Rtti,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.StdCtrls,
  FMX.Edit,
  FIB_FMX_DBLoginDlg,
  atScript;

{$WARNINGS OFF}

type
  TatFIB_FMX_DBLoginDlgLibrary = class(TatScripterLibrary)
    procedure __pFIBLoginDialogFMX(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TfmxFIBDBLoginDlgClass = class of TfmxFIBDBLoginDlg;



implementation



procedure TatFIB_FMX_DBLoginDlgLibrary.__pFIBLoginDialogFMX(AMachine: TatVirtualMachine);
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
AResult := FIB_FMX_DBLoginDlg.pFIBLoginDialogFMX(VarToStr(GetInputArg(0)),Param1,Param2,Param3);
    ReturnOutputArg(AResult);
    SetInputArg(1,string(Param1));
    SetInputArg(2,string(Param2));
    SetInputArg(3,string(Param3));
  end;
end;

procedure TatFIB_FMX_DBLoginDlgLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TfmxFIBDBLoginDlg);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('pFIBLoginDialogFMX',4,tkVariant,nil,__pFIBLoginDialogFMX,false,0,'ADatabaseName: string; AUserName: string; APassword: string; ARoleName: string').SetVarArgs([1,2,3]);
  end;
end;

class function TatFIB_FMX_DBLoginDlgLibrary.LibraryName: string;
begin
  result := 'FIB_FMX_DBLoginDlg';
end;

initialization
  RegisterScripterLibrary(TatFIB_FMX_DBLoginDlgLibrary, True);

{$WARNINGS ON}

end.

