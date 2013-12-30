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
unit ap_FIBPlatforms;

interface

uses
  FIBPlatforms,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatFIBPlatformsLibrary = class(TatScripterLibrary)
    procedure __GetTickCount(AMachine: TatVirtualMachine);
    procedure __TerminateApplication(AMachine: TatVirtualMachine);
    procedure __ApplicationPath(AMachine: TatVirtualMachine);
    procedure __CurrentThreadID(AMachine: TatVirtualMachine);
    procedure __WideCompareStr(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatFIBPlatformsLibrary.__GetTickCount(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(FIBPlatforms.GetTickCount);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFIBPlatformsLibrary.__TerminateApplication(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBPlatforms.TerminateApplication;
  end;
end;

procedure TatFIBPlatformsLibrary.__ApplicationPath(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(FIBPlatforms.ApplicationPath);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFIBPlatformsLibrary.__CurrentThreadID(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(FIBPlatforms.CurrentThreadID);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFIBPlatformsLibrary.__WideCompareStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(FIBPlatforms.WideCompareStr(GetInputArg(0),GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFIBPlatformsLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('GetTickCount',0,tkInteger,nil,__GetTickCount,false,0,'');
    DefineMethod('TerminateApplication',0,tkNone,nil,__TerminateApplication,false,0,'');
    DefineMethod('ApplicationPath',0,tkVariant,nil,__ApplicationPath,false,0,'');
    DefineMethod('CurrentThreadID',0,tkInteger,nil,__CurrentThreadID,false,0,'');
    DefineMethod('WideCompareStr',2,tkInteger,nil,__WideCompareStr,false,0,'S1: WideString; S2: WideString');
    AddConstant('CLRF',CLRF);
    AddConstant('ZeroData',ZeroData);
  end;
end;

class function TatFIBPlatformsLibrary.LibraryName: string;
begin
  result := 'FIBPlatforms';
end;

initialization
  RegisterScripterLibrary(TatFIBPlatformsLibrary, True);

{$WARNINGS ON}

end.

