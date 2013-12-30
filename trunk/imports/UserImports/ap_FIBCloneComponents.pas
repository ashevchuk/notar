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
unit ap_FIBCloneComponents;

interface

uses
  SysUtils,
  Classes,
  FIBCloneComponents,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatFIBCloneComponentsLibrary = class(TatScripterLibrary)
    procedure __CreateClone(AMachine: TatVirtualMachine);
    procedure __SaveCmpToFile(AMachine: TatVirtualMachine);
    procedure __SaveCmpToStream(AMachine: TatVirtualMachine);
    procedure __LoadCmpFromFile(AMachine: TatVirtualMachine);
    procedure __LoadCmpFromStream(AMachine: TatVirtualMachine);
    procedure __CopyProps(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatFIBCloneComponentsLibrary.__CreateClone(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := FIBCloneComponents.CreateClone(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFIBCloneComponentsLibrary.__SaveCmpToFile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBCloneComponents.SaveCmpToFile(GetInputArg(0),VarToStr(GetInputArg(1)));
  end;
end;

procedure TatFIBCloneComponentsLibrary.__SaveCmpToStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBCloneComponents.SaveCmpToStream(GetInputArg(0),GetInputArg(1));
  end;
end;

procedure TatFIBCloneComponentsLibrary.__LoadCmpFromFile(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := FIBCloneComponents.LoadCmpFromFile(GetInputArg(0),GetInputArg(1),VarToStr(GetInputArg(2)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFIBCloneComponentsLibrary.__LoadCmpFromStream(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
3: AResult := FIBCloneComponents.LoadCmpFromStream(GetInputArg(0),GetInputArg(1),GetInputArg(2));
4: AResult := FIBCloneComponents.LoadCmpFromStream(GetInputArg(0),GetInputArg(1),GetInputArg(2),GetInputArg(3));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFIBCloneComponentsLibrary.__CopyProps(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBCloneComponents.CopyProps(GetInputArg(0),GetInputArg(1));
  end;
end;

procedure TatFIBCloneComponentsLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('CreateClone',1,tkVariant,nil,__CreateClone,false,0,'Src: TComponent');
    DefineMethod('SaveCmpToFile',2,tkNone,nil,__SaveCmpToFile,false,0,'Cmp: TComponent; FileName: string');
    DefineMethod('SaveCmpToStream',2,tkNone,nil,__SaveCmpToStream,false,0,'Cmp: TComponent; ms: TStream');
    DefineMethod('LoadCmpFromFile',3,tkVariant,nil,__LoadCmpFromFile,false,0,'FOwner: TComponent; FParent: TComponent; FileName: string');
    DefineMethod('LoadCmpFromStream',4,tkVariant,nil,__LoadCmpFromStream,false,1,'FOwner: TComponent; FParent: TComponent; ms: Tstream; FromBegin: boolean = True');
    DefineMethod('CopyProps',2,tkNone,nil,__CopyProps,false,0,'Src: TComponent; Dst: TComponent');
  end;
end;

class function TatFIBCloneComponentsLibrary.LibraryName: string;
begin
  result := 'FIBCloneComponents';
end;

initialization
  RegisterScripterLibrary(TatFIBCloneComponentsLibrary, True);

{$WARNINGS ON}

end.

