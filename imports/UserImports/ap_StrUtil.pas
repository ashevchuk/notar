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
unit ap_StrUtil;

interface

uses
  SysUtils,
  Classes,
  StrUtil,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatStrUtilLibrary = class(TatScripterLibrary)
    procedure __Position(AMachine: TatVirtualMachine);
    procedure __MakeStr(AMachine: TatVirtualMachine);
    procedure __StrAsFloat(AMachine: TatVirtualMachine);
    procedure __ToClientDateFmt(AMachine: TatVirtualMachine);
    procedure __ExtractWord(AMachine: TatVirtualMachine);
    procedure __WordCount(AMachine: TatVirtualMachine);
    procedure __AnsiUpperCaseA(AMachine: TatVirtualMachine);
    procedure __CompareStrWA(AMachine: TatVirtualMachine);
    procedure __AnsiCompareTextAA(AMachine: TatVirtualMachine);
    procedure __WildStringCompare(AMachine: TatVirtualMachine);
    procedure __MaskCompare(AMachine: TatVirtualMachine);
    procedure __SQLMaskCompare(AMachine: TatVirtualMachine);
    procedure __SQLMaskCompareAW(AMachine: TatVirtualMachine);
    procedure __SQLMaskCompareAA(AMachine: TatVirtualMachine);
    procedure __TrimCLRF(AMachine: TatVirtualMachine);
    procedure __ReplaceStr(AMachine: TatVirtualMachine);
    procedure __ReplaceStrInSubstr(AMachine: TatVirtualMachine);
    procedure __ReplaceCIStr(AMachine: TatVirtualMachine);
    procedure __ReplaceStrCIInSubstr(AMachine: TatVirtualMachine);
    procedure __FastUpperCase(AMachine: TatVirtualMachine);
    procedure __DoUpperCase(AMachine: TatVirtualMachine);
    procedure __DoAnsiUpperCase(AMachine: TatVirtualMachine);
    procedure __DoWideUpperCase(AMachine: TatVirtualMachine);
    procedure __DoUtf8Decode(AMachine: TatVirtualMachine);
    procedure __EquelStrings(AMachine: TatVirtualMachine);
    procedure __iifStr(AMachine: TatVirtualMachine);
    procedure __iifVariant(AMachine: TatVirtualMachine);
    procedure __StrOnMask(AMachine: TatVirtualMachine);
    procedure __StrIsInteger(AMachine: TatVirtualMachine);
    procedure __FormatIdentifierValue(AMachine: TatVirtualMachine);
    procedure __FormatIdentifier(AMachine: TatVirtualMachine);
    procedure __NormalizeName(AMachine: TatVirtualMachine);
    procedure __EasyFormatIdentifier(AMachine: TatVirtualMachine);
    procedure __EquelNames(AMachine: TatVirtualMachine);
    procedure __NeedQuote(AMachine: TatVirtualMachine);
    procedure __EasyNeedQuote(AMachine: TatVirtualMachine);
    procedure __PosCh(AMachine: TatVirtualMachine);
    procedure __PosCh1(AMachine: TatVirtualMachine);
    procedure __PosCI(AMachine: TatVirtualMachine);
    procedure __PosExt(AMachine: TatVirtualMachine);
    procedure __PosExtCI(AMachine: TatVirtualMachine);
    procedure __PosInSubstr(AMachine: TatVirtualMachine);
    procedure __PosInRight(AMachine: TatVirtualMachine);
    procedure __PosInSubstrCI(AMachine: TatVirtualMachine);
    procedure __PosInSubstrExt(AMachine: TatVirtualMachine);
    procedure __PosInSubstrCIExt(AMachine: TatVirtualMachine);
    procedure __LastChar(AMachine: TatVirtualMachine);
    procedure __QuotedStr(AMachine: TatVirtualMachine);
    procedure __CutQuote(AMachine: TatVirtualMachine);
    procedure __IsBlank(AMachine: TatVirtualMachine);
    procedure __IsBeginPartStr(AMachine: TatVirtualMachine);
    procedure __IsBeginPartStrVarA(AMachine: TatVirtualMachine);
    procedure __DoLowerCase(AMachine: TatVirtualMachine);
    procedure __DoTrim(AMachine: TatVirtualMachine);
    procedure __VarTrimRight(AMachine: TatVirtualMachine);
    procedure __DoTrimRight(AMachine: TatVirtualMachine);
    procedure __DoCopy(AMachine: TatVirtualMachine);
    procedure __FastTrim(AMachine: TatVirtualMachine);
    procedure __FastCopy(AMachine: TatVirtualMachine);
    procedure __SLDifference(AMachine: TatVirtualMachine);
    procedure __EmptyStrings(AMachine: TatVirtualMachine);
    procedure __DeleteEmptyStr(AMachine: TatVirtualMachine);
    procedure __NonAnsiSortCompareStrings(AMachine: TatVirtualMachine);
    procedure __FindInDiapazon(AMachine: TatVirtualMachine);
    procedure __NonAnsiIndexOf(AMachine: TatVirtualMachine);
    procedure __GetNameAndValue(AMachine: TatVirtualMachine);
    procedure __StrToDateFmt(AMachine: TatVirtualMachine);
    procedure __DateToSQLStr(AMachine: TatVirtualMachine);
    procedure __ValueFromStr(AMachine: TatVirtualMachine);
    procedure __WideUpperCase(AMachine: TatVirtualMachine);
    procedure __Q_StrLen(AMachine: TatVirtualMachine);
    procedure __IsOldParamName(AMachine: TatVirtualMachine);
    procedure __IsNewParamName(AMachine: TatVirtualMachine);
    procedure __IsMasParamName(AMachine: TatVirtualMachine);
    procedure __GUIDAsString(AMachine: TatVirtualMachine);
    procedure __GUIDAsStringToPChar(AMachine: TatVirtualMachine);
    procedure __StringAsGUID(AMachine: TatVirtualMachine);
    procedure __CompareStrAndGuid(AMachine: TatVirtualMachine);
    procedure __CompareStrAndGuidP(AMachine: TatVirtualMachine);
    procedure __IsEqualGUIDs(AMachine: TatVirtualMachine);
    procedure __IsNumericStr(AMachine: TatVirtualMachine);
    procedure __IsEmptyStr(AMachine: TatVirtualMachine);
    procedure __CompareStrTrimmed(AMachine: TatVirtualMachine);
    procedure __CharInSet(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TFastStringStreamClass = class of TFastStringStream;


  TPositionWrapper = class(TatRecordWrapper)
  private
    FX: Longint;
    FY: Longint;
  public
    constructor Create(ARecord: TPosition);
    function ObjToRec: TPosition;
  published
    property X: Longint read FX write FX;
    property Y: Longint read FY write FY;
  end;
  

implementation

constructor TPositionWrapper.Create(ARecord: TPosition);
begin
  inherited Create;
  FX := ARecord.X;
  FY := ARecord.Y;
end;

function TPositionWrapper.ObjToRec: TPosition;
begin
  result.X := FX;
  result.Y := FY;
end;



procedure TatStrUtilLibrary.__Position(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := integer(TPositionWrapper.Create(StrUtil.Position(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__MakeStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.MakeStr(VarToStr(GetInputArg(0))[1],VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__StrAsFloat(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.StrAsFloat(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__ToClientDateFmt(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.ToClientDateFmt(VarToStr(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__ExtractWord(AMachine: TatVirtualMachine);
  var
  Param2: TCharSet;
  AResult: variant;
begin
  with AMachine do
  begin
IntToSet(Param2, VarToInteger(GetInputArg(2)), SizeOf(Param2));
AResult := string(StrUtil.ExtractWord(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1)),Param2));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__WordCount(AMachine: TatVirtualMachine);
  var
  Param1: TCharSet;
  AResult: variant;
begin
  with AMachine do
  begin
IntToSet(Param1, VarToInteger(GetInputArg(1)), SizeOf(Param1));
AResult := Integer(StrUtil.WordCount(VarToStr(GetInputArg(0)),Param1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__AnsiUpperCaseA(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.AnsiUpperCaseA(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__CompareStrWA(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StrUtil.CompareStrWA(VarToStr(GetInputArg(0)),GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__AnsiCompareTextAA(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StrUtil.AnsiCompareTextAA(GetInputArg(0),GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__WildStringCompare(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.WildStringCompare(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__MaskCompare(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.MaskCompare(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__SQLMaskCompare(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.SQLMaskCompare(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__SQLMaskCompareAW(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.SQLMaskCompareAW(GetInputArg(0),VarToStr(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__SQLMaskCompareAA(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.SQLMaskCompareAA(GetInputArg(0),GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__TrimCLRF(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.TrimCLRF(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__ReplaceStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.ReplaceStr(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),VarToStr(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__ReplaceStrInSubstr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.ReplaceStrInSubstr(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),VarToStr(GetInputArg(2)),VarToInteger(GetInputArg(3)),VarToInteger(GetInputArg(4))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__ReplaceCIStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
3: AResult := string(StrUtil.ReplaceCIStr(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),VarToStr(GetInputArg(2))));
4: AResult := string(StrUtil.ReplaceCIStr(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),VarToStr(GetInputArg(2)),GetInputArg(3)));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__ReplaceStrCIInSubstr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.ReplaceStrCIInSubstr(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),VarToStr(GetInputArg(2)),VarToInteger(GetInputArg(3)),VarToInteger(GetInputArg(4))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__FastUpperCase(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.FastUpperCase(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__DoUpperCase(AMachine: TatVirtualMachine);
  var
  Param0: string;
begin
  with AMachine do
  begin
Param0 := VarToStr(GetInputArg(0));
    Case InputArgCount of
      1: StrUtil.DoUpperCase(Param0);
      2: StrUtil.DoUpperCase(Param0,VarToInteger(GetInputArg(1)));
      3: StrUtil.DoUpperCase(Param0,VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)));
    end;
    SetInputArg(0,string(Param0));
  end;
end;

procedure TatStrUtilLibrary.__DoAnsiUpperCase(AMachine: TatVirtualMachine);
  var
  Param0: string;
begin
  with AMachine do
  begin
Param0 := VarToStr(GetInputArg(0));
    StrUtil.DoAnsiUpperCase(Param0);
    SetInputArg(0,string(Param0));
  end;
end;

procedure TatStrUtilLibrary.__DoWideUpperCase(AMachine: TatVirtualMachine);
  var
  Param0: WideString;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
    StrUtil.DoWideUpperCase(Param0);
    SetInputArg(0,Param0);
  end;
end;

procedure TatStrUtilLibrary.__DoUtf8Decode(AMachine: TatVirtualMachine);
  var
  Param2: WideString;
begin
  with AMachine do
  begin
Param2 := GetInputArg(2);
    StrUtil.DoUtf8Decode(PAnsiChar(AnsiString(VarToStr(GetInputArg(0)))),VarToInteger(GetInputArg(1)),Param2);
    SetInputArg(2,Param2);
  end;
end;

procedure TatStrUtilLibrary.__EquelStrings(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.EquelStrings(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),GetInputArg(2));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__iifStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.iifStr(GetInputArg(0),VarToStr(GetInputArg(1)),VarToStr(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__iifVariant(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.iifVariant(GetInputArg(0),GetInputArg(1),GetInputArg(2));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__StrOnMask(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.StrOnMask(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),VarToStr(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__StrIsInteger(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.StrIsInteger(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__FormatIdentifierValue(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.FormatIdentifierValue(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__FormatIdentifier(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.FormatIdentifier(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__NormalizeName(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.NormalizeName(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__EasyFormatIdentifier(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.EasyFormatIdentifier(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1)),GetInputArg(2)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__EquelNames(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.EquelNames(GetInputArg(0),VarToStr(GetInputArg(1)),VarToStr(GetInputArg(2)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__NeedQuote(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.NeedQuote(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__EasyNeedQuote(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.EasyNeedQuote(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__PosCh(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StrUtil.PosCh(VarToStr(GetInputArg(0))[1],VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__PosCh1(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StrUtil.PosCh1(VarToStr(GetInputArg(0))[1],VarToStr(GetInputArg(1)),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__PosCI(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StrUtil.PosCI(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__PosExt(AMachine: TatVirtualMachine);
  var
  Param2: TCharSet;
  Param3: TCharSet;
  AResult: variant;
begin
  with AMachine do
  begin
IntToSet(Param2, VarToInteger(GetInputArg(2)), SizeOf(Param2));
IntToSet(Param3, VarToInteger(GetInputArg(3)), SizeOf(Param3));
AResult := Integer(StrUtil.PosExt(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),Param2,Param3));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__PosExtCI(AMachine: TatVirtualMachine);
  var
  Param2: TCharSet;
  Param3: TCharSet;
  AResult: variant;
begin
  with AMachine do
  begin
IntToSet(Param2, VarToInteger(GetInputArg(2)), SizeOf(Param2));
IntToSet(Param3, VarToInteger(GetInputArg(3)), SizeOf(Param3));
case InputArgCount of
4: AResult := Integer(StrUtil.PosExtCI(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),Param2,Param3));
5: AResult := Integer(StrUtil.PosExtCI(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),Param2,Param3,GetInputArg(4)));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__PosInSubstr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StrUtil.PosInSubstr(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__PosInRight(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StrUtil.PosInRight(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__PosInSubstrCI(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StrUtil.PosInSubstrCI(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__PosInSubstrExt(AMachine: TatVirtualMachine);
  var
  Param4: TCharSet;
  Param5: TCharSet;
  AResult: variant;
begin
  with AMachine do
  begin
IntToSet(Param4, VarToInteger(GetInputArg(4)), SizeOf(Param4));
IntToSet(Param5, VarToInteger(GetInputArg(5)), SizeOf(Param5));
AResult := Integer(StrUtil.PosInSubstrExt(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),Param4,Param5));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__PosInSubstrCIExt(AMachine: TatVirtualMachine);
  var
  Param4: TCharSet;
  Param5: TCharSet;
  AResult: variant;
begin
  with AMachine do
  begin
IntToSet(Param4, VarToInteger(GetInputArg(4)), SizeOf(Param4));
IntToSet(Param5, VarToInteger(GetInputArg(5)), SizeOf(Param5));
AResult := Integer(StrUtil.PosInSubstrCIExt(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),Param4,Param5));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__LastChar(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.LastChar(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__QuotedStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.QuotedStr(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__CutQuote(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.CutQuote(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__IsBlank(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.IsBlank(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__IsBeginPartStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.IsBeginPartStr(GetInputArg(0),GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__IsBeginPartStrVarA(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.IsBeginPartStrVarA(GetInputArg(0),GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__DoLowerCase(AMachine: TatVirtualMachine);
  var
  Param0: string;
begin
  with AMachine do
  begin
Param0 := VarToStr(GetInputArg(0));
    StrUtil.DoLowerCase(Param0);
    SetInputArg(0,string(Param0));
  end;
end;

procedure TatStrUtilLibrary.__DoTrim(AMachine: TatVirtualMachine);
  var
  Param0: string;
begin
  with AMachine do
  begin
Param0 := VarToStr(GetInputArg(0));
    StrUtil.DoTrim(Param0);
    SetInputArg(0,string(Param0));
  end;
end;

procedure TatStrUtilLibrary.__VarTrimRight(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.VarTrimRight(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__DoTrimRight(AMachine: TatVirtualMachine);
  var
  Param0: string;
begin
  with AMachine do
  begin
Param0 := VarToStr(GetInputArg(0));
    StrUtil.DoTrimRight(Param0);
    SetInputArg(0,string(Param0));
  end;
end;

procedure TatStrUtilLibrary.__DoCopy(AMachine: TatVirtualMachine);
  var
  Param1: string;
begin
  with AMachine do
  begin
Param1 := VarToStr(GetInputArg(1));
    StrUtil.DoCopy(VarToStr(GetInputArg(0)),Param1,VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)));
    SetInputArg(1,string(Param1));
  end;
end;

procedure TatStrUtilLibrary.__FastTrim(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.FastTrim(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__FastCopy(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.FastCopy(VarToStr(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__SLDifference(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    StrUtil.SLDifference(GetInputArg(0),GetInputArg(1),GetInputArg(2));
  end;
end;

procedure TatStrUtilLibrary.__EmptyStrings(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.EmptyStrings(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__DeleteEmptyStr(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    StrUtil.DeleteEmptyStr(GetInputArg(0));
  end;
end;

procedure TatStrUtilLibrary.__NonAnsiSortCompareStrings(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StrUtil.NonAnsiSortCompareStrings(GetInputArg(0),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__FindInDiapazon(AMachine: TatVirtualMachine);
  var
  Param5: Integer;
  AResult: variant;
begin
  with AMachine do
  begin
Param5 := VarToInteger(GetInputArg(5));
AResult := StrUtil.FindInDiapazon(GetInputArg(0),VarToStr(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),GetInputArg(4),Param5);
    ReturnOutputArg(AResult);
    SetInputArg(5,Integer(Param5));
  end;
end;

procedure TatStrUtilLibrary.__NonAnsiIndexOf(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StrUtil.NonAnsiIndexOf(GetInputArg(0),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__GetNameAndValue(AMachine: TatVirtualMachine);
  var
  Param1: AnsiString;
  Param2: AnsiString;
begin
  with AMachine do
  begin
Param1 := GetInputArg(1);
Param2 := GetInputArg(2);
    StrUtil.GetNameAndValue(VarToStr(GetInputArg(0)),Param1,Param2);
    SetInputArg(1,Param1);
    SetInputArg(2,Param2);
  end;
end;

procedure TatStrUtilLibrary.__StrToDateFmt(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.StrToDateFmt(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__DateToSQLStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.DateToSQLStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__ValueFromStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StrUtil.ValueFromStr(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__WideUpperCase(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.WideUpperCase(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__Q_StrLen(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StrUtil.Q_StrLen(PAnsiChar(AnsiString(VarToStr(GetInputArg(0))))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__IsOldParamName(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.IsOldParamName(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__IsNewParamName(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.IsNewParamName(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__IsMasParamName(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.IsMasParamName(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__GUIDAsString(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.GUIDAsString(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__GUIDAsStringToPChar(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    StrUtil.GUIDAsStringToPChar(GetInputArg(0),PAnsiChar(AnsiString(VarToStr(GetInputArg(1)))));
  end;
end;

procedure TatStrUtilLibrary.__StringAsGUID(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.StringAsGUID(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__CompareStrAndGuid(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StrUtil.CompareStrAndGuid(GetInputArg(0),GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__CompareStrAndGuidP(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StrUtil.CompareStrAndGuidP(GetInputArg(0),GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__IsEqualGUIDs(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.IsEqualGUIDs(GetInputArg(0),GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__IsNumericStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.IsNumericStr(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__IsEmptyStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.IsEmptyStr(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__CompareStrTrimmed(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StrUtil.CompareStrTrimmed(PChar(VarToStr(GetInputArg(0))),PChar(VarToStr(GetInputArg(1))),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.__CharInSet(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StrUtil.CharInSet(AnsiString(VarToStr(GetInputArg(0)))[1],GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStrUtilLibrary.Init;
begin
  Scripter.DefineRecordByRTTI(TypeInfo(TPosition));
  Scripter.DefineClassByRTTI(TFastStringStream);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('Position',2,tkVariant,nil,__Position,false,0,'AX: Integer; AY: Integer');
    DefineMethod('MakeStr',2,tkVariant,nil,__MakeStr,false,0,'C: Char; N: Integer');
    DefineMethod('StrAsFloat',1,tkVariant,nil,__StrAsFloat,false,0,'S: String');
    DefineMethod('ToClientDateFmt',2,tkVariant,nil,__ToClientDateFmt,false,0,'D: String; caseFmt: byte');
    DefineMethod('ExtractWord',3,tkVariant,nil,__ExtractWord,false,0,'Num: integer; Str: String; WordDelims: TCharSet');
    DefineMethod('WordCount',2,tkInteger,nil,__WordCount,false,0,'S: String; WordDelims: TCharSet');
    DefineMethod('AnsiUpperCaseA',1,tkVariant,nil,__AnsiUpperCaseA,false,0,'s: AnsiString');
    DefineMethod('CompareStrWA',2,tkInteger,nil,__CompareStrWA,false,0,'S1: string; S2: AnsiString');
    DefineMethod('AnsiCompareTextAA',2,tkInteger,nil,__AnsiCompareTextAA,false,0,'S1: AnsiString; S2: AnsiString');
    DefineMethod('WildStringCompare',2,tkVariant,nil,__WildStringCompare,false,0,'FirstString: String; SecondString: String');
    DefineMethod('MaskCompare',2,tkVariant,nil,__MaskCompare,false,0,'aString: String; Mask: String');
    DefineMethod('SQLMaskCompare',2,tkVariant,nil,__SQLMaskCompare,false,0,'aString: String; Mask: String');
    DefineMethod('SQLMaskCompareAW',2,tkVariant,nil,__SQLMaskCompareAW,false,0,'aString: AnsiString; Mask: String');
    DefineMethod('SQLMaskCompareAA',2,tkVariant,nil,__SQLMaskCompareAA,false,0,'aString: AnsiString; Mask: AnsiString');
    DefineMethod('TrimCLRF',1,tkVariant,nil,__TrimCLRF,false,0,'s: String');
    DefineMethod('ReplaceStr',3,tkVariant,nil,__ReplaceStr,false,0,'S: String; Srch: String; Replace: String');
    DefineMethod('ReplaceStrInSubstr',5,tkVariant,nil,__ReplaceStrInSubstr,false,0,'Source: String; Srch: String; Replace: String; BeginPos: integer; EndPos: integer');
    DefineMethod('ReplaceCIStr',4,tkVariant,nil,__ReplaceCIStr,false,1,'S: String; Srch: String; Replace: String; Ansi: boolean = True');
    DefineMethod('ReplaceStrCIInSubstr',5,tkVariant,nil,__ReplaceStrCIInSubstr,false,0,'Source: String; Srch: String; Replace: String; BeginPos: integer; EndPos: integer');
    DefineMethod('FastUpperCase',1,tkVariant,nil,__FastUpperCase,false,0,'S: string');
    DefineMethod('DoUpperCase',3,tkNone,nil,__DoUpperCase,false,2,'S: string; FirstPos: integer = 1; LastPos: integer = 0').SetVarArgs([0]);
    DefineMethod('DoAnsiUpperCase',1,tkNone,nil,__DoAnsiUpperCase,false,0,'S: string').SetVarArgs([0]);
    DefineMethod('DoWideUpperCase',1,tkNone,nil,__DoWideUpperCase,false,0,'S: WideString').SetVarArgs([0]);
    DefineMethod('DoUtf8Decode',3,tkNone,nil,__DoUtf8Decode,false,0,'s: PAnsiChar; StrLen: integer; ws: WideString').SetVarArgs([2]);
    DefineMethod('EquelStrings',3,tkVariant,nil,__EquelStrings,false,0,'s: string; s1: string; CaseSensitive: boolean');
    DefineMethod('iifStr',3,tkVariant,nil,__iifStr,false,0,'Condition: boolean; Str1: string; Str2: string');
    DefineMethod('iifVariant',3,tkVariant,nil,__iifVariant,false,0,'Condition: boolean; Var1: Variant; Var2: Variant');
    DefineMethod('StrOnMask',3,tkVariant,nil,__StrOnMask,false,0,'StrIn: String; MaskIn: String; MaskOut: String');
    DefineMethod('StrIsInteger',1,tkVariant,nil,__StrIsInteger,false,0,'Str: string');
    DefineMethod('FormatIdentifierValue',2,tkVariant,nil,__FormatIdentifierValue,false,0,'Dialect: Integer; Value: string');
    DefineMethod('FormatIdentifier',2,tkVariant,nil,__FormatIdentifier,false,0,'Dialect: Integer; Value: String');
    DefineMethod('NormalizeName',2,tkVariant,nil,__NormalizeName,false,0,'Dialect: Integer; Name: String');
    DefineMethod('EasyFormatIdentifier',3,tkVariant,nil,__EasyFormatIdentifier,false,0,'Dialect: Integer; Value: String; DoEasy: boolean');
    DefineMethod('EquelNames',3,tkVariant,nil,__EquelNames,false,0,'CI: boolean; Value: String; Value1: String');
    DefineMethod('NeedQuote',1,tkVariant,nil,__NeedQuote,false,0,'Name: String');
    DefineMethod('EasyNeedQuote',1,tkVariant,nil,__EasyNeedQuote,false,0,'Name: String');
    DefineMethod('PosCh',2,tkInteger,nil,__PosCh,false,0,'aCh: Char; s: String');
    DefineMethod('PosCh1',3,tkInteger,nil,__PosCh1,false,0,'aCh: Char; s: string; StartPos: integer');
    DefineMethod('PosCI',2,tkInteger,nil,__PosCI,false,0,'Substr: string; Str: string');
    DefineMethod('PosExt',4,tkInteger,nil,__PosExt,false,0,'Substr: String; Str: String; BegSub: TCharSet; EndSub: TCharSet');
    DefineMethod('PosExtCI',5,tkInteger,nil,__PosExtCI,false,1,'Substr: String; Str: String; BegSub: TCharSet; EndSub: TCharSet; AnsiUpper: boolean = True');
    DefineMethod('PosInSubstr',4,tkInteger,nil,__PosInSubstr,false,0,'substr: String; Str: String; BeginPos: integer; EndPos: integer');
    DefineMethod('PosInRight',3,tkInteger,nil,__PosInRight,false,0,'substr: String; Str: String; BeginPos: integer');
    DefineMethod('PosInSubstrCI',4,tkInteger,nil,__PosInSubstrCI,false,0,'SearchStr: String; Str: String; BeginPos: integer; EndPos: integer');
    DefineMethod('PosInSubstrExt',6,tkInteger,nil,__PosInSubstrExt,false,0,'SearchStr: String; Str: String; BeginPos: integer; EndPos: integer; BegSub: TCharSet; EndSub: TCharSet');
    DefineMethod('PosInSubstrCIExt',6,tkInteger,nil,__PosInSubstrCIExt,false,0,'SearchStr: String; Str: String; BeginPos: integer; EndPos: integer; BegSub: TCharSet; EndSub: TCharSet');
    DefineMethod('LastChar',1,tkVariant,nil,__LastChar,false,0,'Str: string');
    DefineMethod('QuotedStr',1,tkVariant,nil,__QuotedStr,false,0,'S: string');
    DefineMethod('CutQuote',1,tkVariant,nil,__CutQuote,false,0,'S: String');
    DefineMethod('IsBlank',1,tkVariant,nil,__IsBlank,false,0,'Str: String');
    DefineMethod('IsBeginPartStr',2,tkVariant,nil,__IsBeginPartStr,false,0,'PartStr: Ansistring; TargetStr: Ansistring');
    DefineMethod('IsBeginPartStrVarA',2,tkVariant,nil,__IsBeginPartStrVarA,false,0,'PartStr: Variant; TargetStr: Ansistring');
    DefineMethod('DoLowerCase',1,tkNone,nil,__DoLowerCase,false,0,'Str: string').SetVarArgs([0]);
    DefineMethod('DoTrim',1,tkNone,nil,__DoTrim,false,0,'Str: string').SetVarArgs([0]);
    DefineMethod('VarTrimRight',1,tkVariant,nil,__VarTrimRight,false,0,'str: Variant');
    DefineMethod('DoTrimRight',1,tkNone,nil,__DoTrimRight,false,0,'Str: string').SetVarArgs([0]);
    DefineMethod('DoCopy',4,tkNone,nil,__DoCopy,false,0,'Source: string; Dest: string; Index: Integer; Count: Integer').SetVarArgs([1]);
    DefineMethod('FastTrim',1,tkVariant,nil,__FastTrim,false,0,'S: string');
    DefineMethod('FastCopy',3,tkVariant,nil,__FastCopy,false,0,'S: String; Index: integer; Count: Integer');
    DefineMethod('SLDifference',3,tkNone,nil,__SLDifference,false,0,'ASL: TStringList; BSL: TStringList; ResultSL: TStrings');
    DefineMethod('EmptyStrings',1,tkVariant,nil,__EmptyStrings,false,0,'SL: TStrings');
    DefineMethod('DeleteEmptyStr',1,tkNone,nil,__DeleteEmptyStr,false,0,'Src: TStrings');
    DefineMethod('NonAnsiSortCompareStrings',3,tkInteger,nil,__NonAnsiSortCompareStrings,false,0,'SL: TStringList; Index1: Integer; Index2: Integer');
    DefineMethod('FindInDiapazon',6,tkVariant,nil,__FindInDiapazon,false,0,'SL: TStringList; S: String; StartIndex: integer; EndIndex: integer; AnsiCompare: boolean; Index: Integer').SetVarArgs([5]);
    DefineMethod('NonAnsiIndexOf',2,tkInteger,nil,__NonAnsiIndexOf,false,0,'SL: TStringList; S: string');
    DefineMethod('GetNameAndValue',3,tkNone,nil,__GetNameAndValue,false,0,'s: String; Name: AnsiString; Value: AnsiString').SetVarArgs([1,2]);
    DefineMethod('StrToDateFmt',2,tkVariant,nil,__StrToDateFmt,false,0,'ADate: String; Fmt: String');
    DefineMethod('DateToSQLStr',1,tkVariant,nil,__DateToSQLStr,false,0,'ADate: TDateTime');
    DefineMethod('ValueFromStr',1,tkVariant,nil,__ValueFromStr,false,0,'Str: String');
    DefineMethod('WideUpperCase',1,tkVariant,nil,__WideUpperCase,false,0,'S: WideString');
    DefineMethod('Q_StrLen',1,tkInteger,nil,__Q_StrLen,false,0,'P: PAnsiChar');
    DefineMethod('IsOldParamName',1,tkVariant,nil,__IsOldParamName,false,0,'ParamName: string');
    DefineMethod('IsNewParamName',1,tkVariant,nil,__IsNewParamName,false,0,'ParamName: string');
    DefineMethod('IsMasParamName',1,tkVariant,nil,__IsMasParamName,false,0,'ParamName: string');
    DefineMethod('GUIDAsString',1,tkVariant,nil,__GUIDAsString,false,0,'AGUID: TGUID');
    DefineMethod('GUIDAsStringToPChar',2,tkNone,nil,__GUIDAsStringToPChar,false,0,'AGUID: PGUID; Dest: PAnsiChar');
    DefineMethod('StringAsGUID',1,tkVariant,nil,__StringAsGUID,false,0,'AStr: Ansistring');
    DefineMethod('CompareStrAndGuid',2,tkInteger,nil,__CompareStrAndGuid,false,0,'GUID: PGUID; Str: AnsiString');
    DefineMethod('CompareStrAndGuidP',2,tkInteger,nil,__CompareStrAndGuidP,false,0,'GUID: PGUID; Str: PAnsiString');
    DefineMethod('IsEqualGUIDs',2,tkVariant,nil,__IsEqualGUIDs,false,0,'guid1: TGUID; guid2: TGUID');
    DefineMethod('IsNumericStr',1,tkVariant,nil,__IsNumericStr,false,0,'Str: string');
    DefineMethod('IsEmptyStr',1,tkVariant,nil,__IsEmptyStr,false,0,'Str: string');
    DefineMethod('CompareStrTrimmed',3,tkInteger,nil,__CompareStrTrimmed,false,0,'Str1: PChar; Str2: PChar; Len: integer');
    DefineMethod('CharInSet',2,tkVariant,nil,__CharInSet,false,0,'C: AnsiChar; CharSet: TSysCharSet');
  end;
end;

class function TatStrUtilLibrary.LibraryName: string;
begin
  result := 'StrUtil';
end;

initialization
  RegisterScripterLibrary(TatStrUtilLibrary, True);

{$WARNINGS ON}

end.

