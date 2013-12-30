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
unit ap_VariantRtn;

interface

uses
  SysUtils,
  FIBPlatforms,
  VariantRtn,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatVariantRtnLibrary = class(TatScripterLibrary)
    procedure __CompareVarArray1(AMachine: TatVirtualMachine);
    procedure __EasyCompareVarArray1(AMachine: TatVirtualMachine);
    procedure __NeedCastForCompare(AMachine: TatVirtualMachine);
    procedure __VarTypeIsNumeric(AMachine: TatVirtualMachine);
    procedure __VarIsNumeric(AMachine: TatVirtualMachine);
    procedure __CompareVariantsEQ(AMachine: TatVirtualMachine);
    procedure __CompareVariants(AMachine: TatVirtualMachine);
    procedure __ComparePInt64AndVariant(AMachine: TatVirtualMachine);
    procedure __ComparePDateAndVariant(AMachine: TatVirtualMachine);
    procedure __ComparePCurrencyAndVariant(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatVariantRtnLibrary.__CompareVarArray1(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
  Param1: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
Param1 := GetInputArg(1);
AResult := VariantRtn.CompareVarArray1(Param0,Param1);
    ReturnOutputArg(AResult);
    SetInputArg(0,Param0);
    SetInputArg(1,Param1);
  end;
end;

procedure TatVariantRtnLibrary.__EasyCompareVarArray1(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
  Param1: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
Param1 := GetInputArg(1);
AResult := VariantRtn.EasyCompareVarArray1(Param0,Param1,VarToInteger(GetInputArg(2)));
    ReturnOutputArg(AResult);
    SetInputArg(0,Param0);
    SetInputArg(1,Param1);
  end;
end;

procedure TatVariantRtnLibrary.__NeedCastForCompare(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := VariantRtn.NeedCastForCompare(GetInputArg(0),GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatVariantRtnLibrary.__VarTypeIsNumeric(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := VariantRtn.VarTypeIsNumeric(VarToInteger(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatVariantRtnLibrary.__VarIsNumeric(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := VariantRtn.VarIsNumeric(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatVariantRtnLibrary.__CompareVariantsEQ(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := VariantRtn.CompareVariantsEQ(GetInputArg(0),GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatVariantRtnLibrary.__CompareVariants(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(VariantRtn.CompareVariants(GetInputArg(0),GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatVariantRtnLibrary.__ComparePInt64AndVariant(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(VariantRtn.ComparePInt64AndVariant(GetInputArg(0),GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatVariantRtnLibrary.__ComparePDateAndVariant(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(VariantRtn.ComparePDateAndVariant(GetInputArg(0),GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatVariantRtnLibrary.__ComparePCurrencyAndVariant(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(VariantRtn.ComparePCurrencyAndVariant(GetInputArg(0),GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatVariantRtnLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('CompareVarArray1',2,tkVariant,nil,__CompareVarArray1,false,0,'ray1: Variant; vArray2: Variant').SetVarArgs([0,1]);
    DefineMethod('EasyCompareVarArray1',3,tkVariant,nil,__EasyCompareVarArray1,false,0,'ray1: Variant; vArray2: Variant; HighBound: integer').SetVarArgs([0,1]);
    DefineMethod('NeedCastForCompare',2,tkVariant,nil,__NeedCastForCompare,false,0,'v: Variant; v1: Variant');
    DefineMethod('VarTypeIsNumeric',1,tkVariant,nil,__VarTypeIsNumeric,false,0,'AVarType: word');
    DefineMethod('VarIsNumeric',1,tkVariant,nil,__VarIsNumeric,false,0,'V: Variant');
    DefineMethod('CompareVariantsEQ',2,tkVariant,nil,__CompareVariantsEQ,false,0,'v: Variant; v1: Variant');
    DefineMethod('CompareVariants',2,tkInteger,nil,__CompareVariants,false,0,'v: Variant; v1: Variant');
    DefineMethod('ComparePInt64AndVariant',2,tkInteger,nil,__ComparePInt64AndVariant,false,0,'P: PInt64; v: Variant');
    DefineMethod('ComparePDateAndVariant',2,tkInteger,nil,__ComparePDateAndVariant,false,0,'P: PDateTime; v: Variant');
    DefineMethod('ComparePCurrencyAndVariant',2,tkInteger,nil,__ComparePCurrencyAndVariant,false,0,'P: PCurrency; v: Variant');
  end;
end;

class function TatVariantRtnLibrary.LibraryName: string;
begin
  result := 'VariantRtn';
end;

initialization
  RegisterScripterLibrary(TatVariantRtnLibrary, True);

{$WARNINGS ON}

end.

