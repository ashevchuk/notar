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
unit ap_StdFuncs;

interface

uses
  Classes,
  SysUtils,
  DB,
  FIBSafeTimer,
  StdFuncs,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatStdFuncsLibrary = class(TatScripterLibrary)
    procedure __ConvertFromBase(AMachine: TatVirtualMachine);
    procedure __ConvertToBase(AMachine: TatVirtualMachine);
    procedure __Max(AMachine: TatVirtualMachine);
    procedure __MaxD(AMachine: TatVirtualMachine);
    procedure __Min(AMachine: TatVirtualMachine);
    procedure __MinD(AMachine: TatVirtualMachine);
    procedure __Signum(AMachine: TatVirtualMachine);
    procedure __RandomString(AMachine: TatVirtualMachine);
    procedure __Soundex(AMachine: TatVirtualMachine);
    procedure __StripString(AMachine: TatVirtualMachine);
    procedure __ClosestWeekday(AMachine: TatVirtualMachine);
    procedure __Year(AMachine: TatVirtualMachine);
    procedure __Month(AMachine: TatVirtualMachine);
    procedure __DayOfYear(AMachine: TatVirtualMachine);
    procedure __DayOfMonth(AMachine: TatVirtualMachine);
    procedure __WeekOfYear(AMachine: TatVirtualMachine);
    procedure __Degree10(AMachine: TatVirtualMachine);
    procedure __ExtPrecision(AMachine: TatVirtualMachine);
    procedure __RoundExtend(AMachine: TatVirtualMachine);
    procedure __Int64WithScaleToStr(AMachine: TatVirtualMachine);
    procedure __ExtendedToBCD(AMachine: TatVirtualMachine);
    procedure __Int64ToBCD(AMachine: TatVirtualMachine);
    procedure __BCDToExtended(AMachine: TatVirtualMachine);
    procedure __BCDToCompWithScale(AMachine: TatVirtualMachine);
    procedure __BCDToInt64WithScale(AMachine: TatVirtualMachine);
    procedure __BCDToStr(AMachine: TatVirtualMachine);
    procedure __BCDToSQLStr(AMachine: TatVirtualMachine);
    procedure __CompareBCD(AMachine: TatVirtualMachine);
    procedure __TimeStamp(AMachine: TatVirtualMachine);
    procedure __CmpFullName(AMachine: TatVirtualMachine);
    procedure __CmpInLoadedState(AMachine: TatVirtualMachine);
    procedure __FullClearStrings(AMachine: TatVirtualMachine);
    procedure __HookTimeStampToMSecs(AMachine: TatVirtualMachine);
    procedure __HookTimeStampToDateTime(AMachine: TatVirtualMachine);
    procedure __IBStrToTime(AMachine: TatVirtualMachine);
    procedure __IntDateToDateTime(AMachine: TatVirtualMachine);
    procedure __FieldOldValAsString(AMachine: TatVirtualMachine);
    procedure __BCDFieldAsSQLString(AMachine: TatVirtualMachine);
    procedure __BCDFieldAsString(AMachine: TatVirtualMachine);
    procedure __GetBCDFieldData(AMachine: TatVirtualMachine);
    procedure __GetBit(AMachine: TatVirtualMachine);
    procedure __SetBit(AMachine: TatVirtualMachine);
    procedure __HexStr2Int(AMachine: TatVirtualMachine);
    procedure __HexStr2IntStr(AMachine: TatVirtualMachine);
    procedure __CreateGUID(AMachine: TatVirtualMachine);
    procedure __Utf8ToUnicode(AMachine: TatVirtualMachine);
    procedure __DirectoryExists(AMachine: TatVirtualMachine);
    procedure __ForceDirectories(AMachine: TatVirtualMachine);
    procedure __InitFPU(AMachine: TatVirtualMachine);
    procedure __StreamToVariant(AMachine: TatVirtualMachine);
    procedure __StreamToVariantArray(AMachine: TatVirtualMachine);
    procedure __VariantToStream(AMachine: TatVirtualMachine);
    procedure __StringIsDateTimeDefValue(AMachine: TatVirtualMachine);
    procedure __Utf8Encode(AMachine: TatVirtualMachine);
    procedure __Utf8Decode(AMachine: TatVirtualMachine);
    procedure __GetTempPath(AMachine: TatVirtualMachine);
    procedure __SetTempPath(AMachine: TatVirtualMachine);
    procedure __GetTempPathLength(AMachine: TatVirtualMachine);
    procedure __SetTempPathLength(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  EParserErrorClass = class of EParserError;
  TFIBTimerClass = class of TFIBTimer;



implementation



procedure TatStdFuncsLibrary.__ConvertFromBase(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StdFuncs.ConvertFromBase(VarToStr(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToStr(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__ConvertToBase(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StdFuncs.ConvertToBase(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToStr(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__Max(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StdFuncs.Max(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__MaxD(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.MaxD(GetInputArg(0),GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__Min(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StdFuncs.Min(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__MinD(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.MinD(GetInputArg(0),GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__Signum(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StdFuncs.Signum(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__RandomString(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StdFuncs.RandomString(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__Soundex(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StdFuncs.Soundex(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__StripString(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StdFuncs.StripString(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__ClosestWeekday(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.ClosestWeekday(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__Year(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StdFuncs.Year(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__Month(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StdFuncs.Month(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__DayOfYear(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StdFuncs.DayOfYear(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__DayOfMonth(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StdFuncs.DayOfMonth(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__WeekOfYear(AMachine: TatVirtualMachine);
  var
  Param1: Integer;
  Param2: Integer;
begin
  with AMachine do
  begin
Param1 := VarToInteger(GetInputArg(1));
Param2 := VarToInteger(GetInputArg(2));
    StdFuncs.WeekOfYear(GetInputArg(0),Param1,Param2);
    SetInputArg(1,Integer(Param1));
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatStdFuncsLibrary.__Degree10(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.Degree10(VarToInteger(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__ExtPrecision(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StdFuncs.ExtPrecision(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__RoundExtend(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.RoundExtend(GetInputArg(0),VarToInteger(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__Int64WithScaleToStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StdFuncs.Int64WithScaleToStr(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToStr(GetInputArg(2))[1]));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__ExtendedToBCD(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.ExtendedToBCD(GetInputArg(0),VarToInteger(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__Int64ToBCD(AMachine: TatVirtualMachine);
  var
  Param2: TBcd;
  AResult: variant;
begin
  with AMachine do
  begin
Param2 := GetInputArg(2);
AResult := StdFuncs.Int64ToBCD(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),Param2);
    ReturnOutputArg(AResult);
    SetInputArg(2,Param2);
  end;
end;

procedure TatStdFuncsLibrary.__BCDToExtended(AMachine: TatVirtualMachine);
  var
  Param1: Extended;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := GetInputArg(1);
AResult := StdFuncs.BCDToExtended(GetInputArg(0),Param1);
    ReturnOutputArg(AResult);
    SetInputArg(1,Param1);
  end;
end;

procedure TatStdFuncsLibrary.__BCDToCompWithScale(AMachine: TatVirtualMachine);
  var
  Param1: Int64;
  Param2: byte;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := VarToInteger(GetInputArg(1));
Param2 := VarToInteger(GetInputArg(2));
AResult := StdFuncs.BCDToCompWithScale(GetInputArg(0),Param1,Param2);
    ReturnOutputArg(AResult);
    SetInputArg(1,Integer(Param1));
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatStdFuncsLibrary.__BCDToInt64WithScale(AMachine: TatVirtualMachine);
  var
  Param1: Int64;
  Param2: byte;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := VarToInteger(GetInputArg(1));
Param2 := VarToInteger(GetInputArg(2));
AResult := StdFuncs.BCDToInt64WithScale(GetInputArg(0),Param1,Param2);
    ReturnOutputArg(AResult);
    SetInputArg(1,Integer(Param1));
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatStdFuncsLibrary.__BCDToStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StdFuncs.BCDToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__BCDToSQLStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StdFuncs.BCDToSQLStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__CompareBCD(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StdFuncs.CompareBCD(GetInputArg(0),GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__TimeStamp(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.TimeStamp(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__CmpFullName(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StdFuncs.CmpFullName(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__CmpInLoadedState(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.CmpInLoadedState(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__FullClearStrings(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    StdFuncs.FullClearStrings(GetInputArg(0));
  end;
end;

procedure TatStdFuncsLibrary.__HookTimeStampToMSecs(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StdFuncs.HookTimeStampToMSecs(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__HookTimeStampToDateTime(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.HookTimeStampToDateTime(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__IBStrToTime(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.IBStrToTime(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__IntDateToDateTime(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.IntDateToDateTime(VarToInteger(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__FieldOldValAsString(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StdFuncs.FieldOldValAsString(GetInputArg(0),GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__BCDFieldAsSQLString(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.BCDFieldAsSQLString(GetInputArg(0),GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__BCDFieldAsString(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.BCDFieldAsString(GetInputArg(0),GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__GetBCDFieldData(AMachine: TatVirtualMachine);
  var
  Param2: TBcd;
  AResult: variant;
begin
  with AMachine do
  begin
Param2 := GetInputArg(2);
AResult := StdFuncs.GetBCDFieldData(GetInputArg(0),GetInputArg(1),Param2);
    ReturnOutputArg(AResult);
    SetInputArg(2,Param2);
  end;
end;

procedure TatStdFuncsLibrary.__GetBit(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.GetBit(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__SetBit(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StdFuncs.SetBit(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),GetInputArg(2)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__HexStr2Int(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StdFuncs.HexStr2Int(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__HexStr2IntStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StdFuncs.HexStr2IntStr(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__CreateGUID(AMachine: TatVirtualMachine);
  var
  Param0: TGUID;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
AResult := StdFuncs.CreateGUID(Param0);
    ReturnOutputArg(AResult);
    SetInputArg(0,Param0);
  end;
end;

procedure TatStdFuncsLibrary.__Utf8ToUnicode(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
AResult := Integer(StdFuncs.Utf8ToUnicode(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),VarToInteger(GetInputArg(1)),PChar(VarToStr(GetInputArg(2))),VarToInteger(GetInputArg(3))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__DirectoryExists(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.DirectoryExists(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__ForceDirectories(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.ForceDirectories(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__InitFPU(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    StdFuncs.InitFPU;
  end;
end;

procedure TatStdFuncsLibrary.__StreamToVariant(AMachine: TatVirtualMachine);
  var
  Param1: Variant;
begin
  with AMachine do
  begin
Param1 := GetInputArg(1);
    StdFuncs.StreamToVariant(GetInputArg(0),Param1);
    SetInputArg(1,Param1);
  end;
end;

procedure TatStdFuncsLibrary.__StreamToVariantArray(AMachine: TatVirtualMachine);
  var
  Param1: Variant;
begin
  with AMachine do
  begin
Param1 := GetInputArg(1);
    StdFuncs.StreamToVariantArray(GetInputArg(0),Param1);
    SetInputArg(1,Param1);
  end;
end;

procedure TatStdFuncsLibrary.__VariantToStream(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(StdFuncs.VariantToStream(GetInputArg(0),GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__StringIsDateTimeDefValue(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.StringIsDateTimeDefValue(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__Utf8Encode(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(StdFuncs.Utf8Encode(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__Utf8Decode(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := StdFuncs.Utf8Decode(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatStdFuncsLibrary.__GetTempPath(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(StdFuncs.TempPath));
  end;
end;

procedure TatStdFuncsLibrary.__SetTempPath(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    StdFuncs.TempPath:=PAnsiChar(AnsiString(VarToStr(GetInputArg(0))));
  end;
end;

procedure TatStdFuncsLibrary.__GetTempPathLength(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(StdFuncs.TempPathLength));
  end;
end;

procedure TatStdFuncsLibrary.__SetTempPathLength(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    StdFuncs.TempPathLength:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatStdFuncsLibrary.Init;
begin
  Scripter.DefineClassByRTTI(EParserError);
  Scripter.DefineClassByRTTI(TFIBTimer);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('ConvertFromBase',3,tkInteger,nil,__ConvertFromBase,false,0,'sNum: String; iBase: Integer; cDigits: String');
    DefineMethod('ConvertToBase',3,tkVariant,nil,__ConvertToBase,false,0,'iNum: Integer; iBase: Integer; cDigits: String');
    DefineMethod('Max',2,tkInteger,nil,__Max,false,0,'n1: Integer; n2: Integer');
    DefineMethod('MaxD',2,tkVariant,nil,__MaxD,false,0,'n1: Double; n2: Double');
    DefineMethod('Min',2,tkInteger,nil,__Min,false,0,'n1: Integer; n2: Integer');
    DefineMethod('MinD',2,tkVariant,nil,__MinD,false,0,'n1: Double; n2: Double');
    DefineMethod('Signum',1,tkInteger,nil,__Signum,false,0,'Arg: Integer');
    DefineMethod('RandomString',1,tkVariant,nil,__RandomString,false,0,'iLength: Integer');
    DefineMethod('Soundex',1,tkVariant,nil,__Soundex,false,0,'st: String');
    DefineMethod('StripString',2,tkVariant,nil,__StripString,false,0,'st: String; CharsToStrip: String');
    DefineMethod('ClosestWeekday',1,tkVariant,nil,__ClosestWeekday,false,0,'d: TDateTime');
    DefineMethod('Year',1,tkInteger,nil,__Year,false,0,'d: TDateTime');
    DefineMethod('Month',1,tkInteger,nil,__Month,false,0,'d: TDateTime');
    DefineMethod('DayOfYear',1,tkInteger,nil,__DayOfYear,false,0,'d: TDateTime');
    DefineMethod('DayOfMonth',1,tkInteger,nil,__DayOfMonth,false,0,'d: TDateTime');
    DefineMethod('WeekOfYear',3,tkNone,nil,__WeekOfYear,false,0,'d: TDateTime; Year: Integer; Week: Integer').SetVarArgs([1,2]);
    DefineMethod('Degree10',1,tkVariant,nil,__Degree10,false,0,'Degree: integer');
    DefineMethod('ExtPrecision',1,tkInteger,nil,__ExtPrecision,false,0,'Value: Extended');
    DefineMethod('RoundExtend',2,tkVariant,nil,__RoundExtend,false,0,'Value: Extended; Decimals: integer');
    DefineMethod('Int64WithScaleToStr',3,tkVariant,nil,__Int64WithScaleToStr,false,0,'Value: Int64; Scale: integer; DSep: Char');
    DefineMethod('ExtendedToBCD',2,tkVariant,nil,__ExtendedToBCD,false,0,'Value: Extended; NeedScale: integer');
    DefineMethod('Int64ToBCD',3,tkVariant,nil,__Int64ToBCD,false,0,'Value: Int64; Scale: integer; BCD: TBcd').SetVarArgs([2]);
    DefineMethod('BCDToExtended',2,tkVariant,nil,__BCDToExtended,false,0,'BCD: TBcd; Value: Extended').SetVarArgs([1]);
    DefineMethod('BCDToCompWithScale',3,tkVariant,nil,__BCDToCompWithScale,false,0,'BCD: TBcd; Value: Int64; Scale: byte').SetVarArgs([1,2]);
    DefineMethod('BCDToInt64WithScale',3,tkVariant,nil,__BCDToInt64WithScale,false,0,'BCD: TBcd; Value: Int64; Scale: byte').SetVarArgs([1,2]);
    DefineMethod('BCDToStr',1,tkVariant,nil,__BCDToStr,false,0,'BCD: TBcd');
    DefineMethod('BCDToSQLStr',1,tkVariant,nil,__BCDToSQLStr,false,0,'BCD: TBcd');
    DefineMethod('CompareBCD',2,tkInteger,nil,__CompareBCD,false,0,'BCD1: TBcd; BCD2: TBcd');
    DefineMethod('TimeStamp',2,tkVariant,nil,__TimeStamp,false,0,'aDate: integer; aTime: integer');
    DefineMethod('CmpFullName',1,tkVariant,nil,__CmpFullName,false,0,'cmp: TComponent');
    DefineMethod('CmpInLoadedState',1,tkVariant,nil,__CmpInLoadedState,false,0,'Cmp: TComponent');
    DefineMethod('FullClearStrings',1,tkNone,nil,__FullClearStrings,false,0,'aStrings: TStrings');
    DefineMethod('HookTimeStampToMSecs',1,tkVariant,nil,__HookTimeStampToMSecs,false,0,'TimeStamp: TTimeStamp');
    DefineMethod('HookTimeStampToDateTime',1,tkVariant,nil,__HookTimeStampToDateTime,false,0,'TimeStamp: TTimeStamp');
    DefineMethod('IBStrToTime',1,tkVariant,nil,__IBStrToTime,false,0,'Str: string');
    DefineMethod('IntDateToDateTime',1,tkVariant,nil,__IntDateToDateTime,false,0,'aDate: integer');
    DefineMethod('FieldOldValAsString',2,tkVariant,nil,__FieldOldValAsString,false,0,'Field: TField; SQLFormat: boolean');
    DefineMethod('BCDFieldAsSQLString',2,tkVariant,nil,__BCDFieldAsSQLString,false,0,'Field: TField; OldVal: boolean');
    DefineMethod('BCDFieldAsString',2,tkVariant,nil,__BCDFieldAsString,false,0,'Field: TField; OldVal: boolean');
    DefineMethod('GetBCDFieldData',3,tkVariant,nil,__GetBCDFieldData,false,0,'Field: TField; OldVal: boolean; BCD: TBcd').SetVarArgs([2]);
    DefineMethod('GetBit',2,tkVariant,nil,__GetBit,false,0,'InByte: Byte; Index: byte');
    DefineMethod('SetBit',3,tkInteger,nil,__SetBit,false,0,'InByte: Byte; Index: byte; value: Boolean');
    DefineMethod('HexStr2Int',1,tkInteger,nil,__HexStr2Int,false,0,'S: String');
    DefineMethod('HexStr2IntStr',1,tkVariant,nil,__HexStr2IntStr,false,0,'S: String');
    DefineMethod('CreateGUID',1,tkVariant,nil,__CreateGUID,false,0,'Guid: TGUID').SetVarArgs([0]);
    DefineMethod('Utf8ToUnicode',4,tkInteger,nil,__Utf8ToUnicode,false,0,'Dest: PWideChar; MaxDestChars: Cardinal; Source: PChar; SourceBytes: Cardinal');
    DefineMethod('DirectoryExists',1,tkVariant,nil,__DirectoryExists,false,0,'Name: string');
    DefineMethod('ForceDirectories',1,tkVariant,nil,__ForceDirectories,false,0,'Dir: string');
    DefineMethod('InitFPU',0,tkNone,nil,__InitFPU,false,0,'');
    DefineMethod('StreamToVariant',2,tkNone,nil,__StreamToVariant,false,0,'Stream: TMemoryStream; Value: Variant').SetVarArgs([1]);
    DefineMethod('StreamToVariantArray',2,tkNone,nil,__StreamToVariantArray,false,0,'Stream: TMemoryStream; Value: Variant').SetVarArgs([1]);
    DefineMethod('VariantToStream',2,tkInteger,nil,__VariantToStream,false,0,'Value: Variant; Stream: TStream');
    DefineMethod('StringIsDateTimeDefValue',1,tkVariant,nil,__StringIsDateTimeDefValue,false,0,'s: string');
    DefineMethod('Utf8Encode',1,tkVariant,nil,__Utf8Encode,false,0,'WS: WideString');
    DefineMethod('Utf8Decode',1,tkVariant,nil,__Utf8Decode,false,0,'S: String');
    DefineProp('TempPath',tkVariant,__GetTempPath,__SetTempPath,nil,false,0);
    DefineProp('TempPathLength',tkInteger,__GetTempPathLength,__SetTempPathLength,nil,false,0);
    AddConstant('AppPathTemplate',AppPathTemplate);
  end;
end;

class function TatStdFuncsLibrary.LibraryName: string;
begin
  result := 'StdFuncs';
end;

initialization
  RegisterScripterLibrary(TatStdFuncsLibrary, True);

{$WARNINGS ON}

end.

