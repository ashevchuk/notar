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
unit ap_pFIBClientDataSet;

interface

uses
  pFIBInterfaces,
  SysUtils,
  Classes,
  Db,
  DbConsts,
  DBClient,
  Provider,
  DSIntf,
  MidConst,
  pFIBClientDataSet,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBClientDataSetLibrary = class(TatScripterLibrary)
    procedure __Register(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TpFIBClientDataSetClass = class of TpFIBClientDataSet;
  TpFIBClientBCDFieldClass = class of TpFIBClientBCDField;
  TpFIBDataSetProviderClass = class of TpFIBDataSetProvider;



implementation



procedure TatpFIBClientDataSetLibrary.__Register(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBClientDataSet.Register;
  end;
end;

procedure TatpFIBClientDataSetLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TpFIBClientDataSet);
  Scripter.DefineClassByRTTI(TpFIBClientBCDField);
  Scripter.DefineClassByRTTI(TpFIBDataSetProvider);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('Register',0,tkNone,nil,__Register,false,0,'');
    AddConstant('aukBefore',aukBefore);
    AddConstant('aukAfter',aukAfter);
  end;
end;

class function TatpFIBClientDataSetLibrary.LibraryName: string;
begin
  result := 'pFIBClientDataSet';
end;

initialization
  RegisterScripterLibrary(TatpFIBClientDataSetLibrary, True);

{$WARNINGS ON}

end.

