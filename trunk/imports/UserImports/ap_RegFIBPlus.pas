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
unit ap_RegFIBPlus;

interface

uses
  Classes,
  Sysutils,
  DB,
  pFIBDataSet,
  pFIBDatabase,
  pFIBQuery,
  DSContainer,
  pFIBSQLLog,
  SIBFIBEA,
  pFIBMetadata,
  pFIBDataRefresh,
  pFIBExports,
  FIBSQLMonitor,
  pFIBErrorHandler,
  pFIBStoredProc,
  pFIBProps,
  RegFIBPlus,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatRegFIBPlusLibrary = class(TatScripterLibrary)
    procedure __Register(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatRegFIBPlusLibrary.__Register(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    RegFIBPlus.Register;
  end;
end;

procedure TatRegFIBPlusLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('Register',0,tkNone,nil,__Register,false,0,'');
  end;
end;

class function TatRegFIBPlusLibrary.LibraryName: string;
begin
  result := 'RegFIBPlus';
end;

initialization
  RegisterScripterLibrary(TatRegFIBPlusLibrary, True);

{$WARNINGS ON}

end.

