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
unit ap_RegFIBPlusEditors;

interface

uses
  Windows,
  Classes,
  StdCtrls,
  Forms,
  ExtCtrls,
  Dialogs,
  SysUtils,
  pFIBInterfaces,
  TypInfo,
  DsgnIntf,
  RegFIBPlusEditors,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatRegFIBPlusEditorsLibrary = class(TatScripterLibrary)
    procedure __RegisterFIBSQLTextEditor(AMachine: TatVirtualMachine);
    procedure __GetSQLTextEditor(AMachine: TatVirtualMachine);
    procedure __Register(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatRegFIBPlusEditorsLibrary.__RegisterFIBSQLTextEditor(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    RegFIBPlusEditors.RegisterFIBSQLTextEditor(GetInputArg(0));
  end;
end;

procedure TatRegFIBPlusEditorsLibrary.__GetSQLTextEditor(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := RegFIBPlusEditors.GetSQLTextEditor;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatRegFIBPlusEditorsLibrary.__Register(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    RegFIBPlusEditors.Register;
  end;
end;

procedure TatRegFIBPlusEditorsLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('RegisterFIBSQLTextEditor',1,tkNone,nil,__RegisterFIBSQLTextEditor,false,0,'Editor: TClass');
    DefineMethod('GetSQLTextEditor',0,tkVariant,nil,__GetSQLTextEditor,false,0,'');
    DefineMethod('Register',0,tkNone,nil,__Register,false,0,'');
  end;
end;

class function TatRegFIBPlusEditorsLibrary.LibraryName: string;
begin
  result := 'RegFIBPlusEditors';
end;

initialization
  RegisterScripterLibrary(TatRegFIBPlusEditorsLibrary, True);

{$WARNINGS ON}

end.

