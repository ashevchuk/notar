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
unit ap_IB_Intf;

interface

uses
  SyncObjs,
  Classes,
  Sysutils,
  ibase,
  IB_InstallHeader,
  IB_Externals,
  IB_Intf,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatIB_IntfLibrary = class(TatScripterLibrary)
    procedure __LoadIBInstallLibrary(AMachine: TatVirtualMachine);
    procedure __FreeIBInstallLibrary(AMachine: TatVirtualMachine);
    procedure __CheckIBInstallLoaded(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TIBClientLibraryClass = class of TIBClientLibrary;



implementation



procedure TatIB_IntfLibrary.__LoadIBInstallLibrary(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    IB_Intf.LoadIBInstallLibrary;
  end;
end;

procedure TatIB_IntfLibrary.__FreeIBInstallLibrary(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    IB_Intf.FreeIBInstallLibrary;
  end;
end;

procedure TatIB_IntfLibrary.__CheckIBInstallLoaded(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    IB_Intf.CheckIBInstallLoaded;
  end;
end;

procedure TatIB_IntfLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TIBClientLibrary);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('LoadIBInstallLibrary',0,tkNone,nil,__LoadIBInstallLibrary,false,0,'');
    DefineMethod('FreeIBInstallLibrary',0,tkNone,nil,__FreeIBInstallLibrary,false,0,'');
    DefineMethod('CheckIBInstallLoaded',0,tkNone,nil,__CheckIBInstallLoaded,false,0,'');
    AddConstant('IBDateDelta',IBDateDelta);
  end;
end;

class function TatIB_IntfLibrary.LibraryName: string;
begin
  result := 'IB_Intf';
end;

initialization
  RegisterScripterLibrary(TatIB_IntfLibrary, True);

{$WARNINGS ON}

end.

