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
unit ap_WideStrUtils;

interface

uses
  Windows,
  SysUtils,
  Classes,
  WideStrUtils,
  Variants,
  atScript;

{$WARNINGS OFF}

type
  TatWideStrUtilsLibrary = class(TatScripterLibrary)
    procedure __WStrAlloc(AMachine: TatVirtualMachine);
    procedure __WStrBufSize(AMachine: TatVirtualMachine);
    procedure __WStrMove(AMachine: TatVirtualMachine);
    procedure __WStrNew(AMachine: TatVirtualMachine);
    procedure __WStrDispose(AMachine: TatVirtualMachine);
    procedure __WStrLen(AMachine: TatVirtualMachine);
    procedure __WStrEnd(AMachine: TatVirtualMachine);
    procedure __WStrCat(AMachine: TatVirtualMachine);
    procedure __WStrCopy(AMachine: TatVirtualMachine);
    procedure __WStrLCopy(AMachine: TatVirtualMachine);
    procedure __WStrPCopy(AMachine: TatVirtualMachine);
    procedure __WStrPLCopy(AMachine: TatVirtualMachine);
    procedure __WStrScan(AMachine: TatVirtualMachine);
    procedure __WStrComp(AMachine: TatVirtualMachine);
    procedure __WStrPos(AMachine: TatVirtualMachine);
    procedure __UTF8LowerCase(AMachine: TatVirtualMachine);
    procedure __UTF8UpperCase(AMachine: TatVirtualMachine);
    procedure __AnsiToUtf8Ex(AMachine: TatVirtualMachine);
    procedure __Utf8ToAnsiEx(AMachine: TatVirtualMachine);
    procedure __DetectUTF8Encoding(AMachine: TatVirtualMachine);
    procedure __IsUTF8String(AMachine: TatVirtualMachine);
    procedure __HasExtendCharacter(AMachine: TatVirtualMachine);
    procedure __HasUTF8BOM(AMachine: TatVirtualMachine);
    procedure __ConvertStreamFromAnsiToUTF8(AMachine: TatVirtualMachine);
    procedure __ConvertStreamFromUTF8ToAnsi(AMachine: TatVirtualMachine);
    procedure __WideLastChar(AMachine: TatVirtualMachine);
    procedure __WideQuotedStr(AMachine: TatVirtualMachine);
    procedure __WideExtractQuotedStr(AMachine: TatVirtualMachine);
    procedure __WideDequotedStr(AMachine: TatVirtualMachine);
    procedure __WideAdjustLineBreaks(AMachine: TatVirtualMachine);
    procedure __WideStringReplace(AMachine: TatVirtualMachine);
    procedure __WideReplaceStr(AMachine: TatVirtualMachine);
    procedure __WideReplaceText(AMachine: TatVirtualMachine);
    procedure __LoadWideStr(AMachine: TatVirtualMachine);
    procedure __InOpSet(AMachine: TatVirtualMachine);
    procedure __IsUTF8LeadByte(AMachine: TatVirtualMachine);
    procedure __IsUTF8TrailByte(AMachine: TatVirtualMachine);
    procedure __UTF8CharSize(AMachine: TatVirtualMachine);
    procedure __UTF8CharLength(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatWideStrUtilsLibrary.__WStrAlloc(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideCharToString(WideStrUtils.WStrAlloc(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WStrBufSize(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
AResult := Integer(WideStrUtils.WStrBufSize(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WStrMove(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  Param1Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
SetLength(Param1Buf, Length(VarToStr(GetInputArg(1))) + 1);
AResult := WideCharToString(WideStrUtils.WStrMove(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),StringToWideChar(VarToStr(GetInputArg(1)),@Param1Buf[0],Length(Param1Buf)),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WStrNew(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
AResult := WideCharToString(WideStrUtils.WStrNew(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WStrDispose(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
    WideStrUtils.WStrDispose(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)));
  end;
end;

procedure TatWideStrUtilsLibrary.__WStrLen(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
AResult := Integer(WideStrUtils.WStrLen(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WStrEnd(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
AResult := WideCharToString(WideStrUtils.WStrEnd(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WStrCat(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  Param1Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
SetLength(Param1Buf, Length(VarToStr(GetInputArg(1))) + 1);
AResult := WideCharToString(WideStrUtils.WStrCat(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),StringToWideChar(VarToStr(GetInputArg(1)),@Param1Buf[0],Length(Param1Buf))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WStrCopy(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  Param1Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
SetLength(Param1Buf, Length(VarToStr(GetInputArg(1))) + 1);
AResult := WideCharToString(WideStrUtils.WStrCopy(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),StringToWideChar(VarToStr(GetInputArg(1)),@Param1Buf[0],Length(Param1Buf))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WStrLCopy(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  Param1Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
SetLength(Param1Buf, Length(VarToStr(GetInputArg(1))) + 1);
AResult := WideCharToString(WideStrUtils.WStrLCopy(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),StringToWideChar(VarToStr(GetInputArg(1)),@Param1Buf[0],Length(Param1Buf)),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WStrPCopy(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
AResult := WideCharToString(WideStrUtils.WStrPCopy(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WStrPLCopy(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
AResult := WideCharToString(WideStrUtils.WStrPLCopy(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),GetInputArg(1),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WStrScan(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  Param1Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
SetLength(Param1Buf, Length(VarToStr(GetInputArg(1))) + 1);
AResult := WideCharToString(WideStrUtils.WStrScan(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),StringToWideChar(VarToStr(GetInputArg(1)),@Param1Buf[0],Length(Param1Buf))^));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WStrComp(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  Param1Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
SetLength(Param1Buf, Length(VarToStr(GetInputArg(1))) + 1);
AResult := Integer(WideStrUtils.WStrComp(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),StringToWideChar(VarToStr(GetInputArg(1)),@Param1Buf[0],Length(Param1Buf))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WStrPos(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  Param1Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
SetLength(Param1Buf, Length(VarToStr(GetInputArg(1))) + 1);
AResult := WideCharToString(WideStrUtils.WStrPos(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),StringToWideChar(VarToStr(GetInputArg(1)),@Param1Buf[0],Length(Param1Buf))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__UTF8LowerCase(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideStrUtils.UTF8LowerCase(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__UTF8UpperCase(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideStrUtils.UTF8UpperCase(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__AnsiToUtf8Ex(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideStrUtils.AnsiToUtf8Ex(GetInputArg(0),VarToInteger(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__Utf8ToAnsiEx(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideStrUtils.Utf8ToAnsiEx(GetInputArg(0),VarToInteger(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__DetectUTF8Encoding(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideStrUtils.DetectUTF8Encoding(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__IsUTF8String(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideStrUtils.IsUTF8String(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__HasExtendCharacter(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideStrUtils.HasExtendCharacter(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__HasUTF8BOM(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideStrUtils.HasUTF8BOM(TStream(Integer(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__ConvertStreamFromAnsiToUTF8(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Case InputArgCount of
      2: WideStrUtils.ConvertStreamFromAnsiToUTF8(TStream(Integer(GetInputArg(0))),TStream(Integer(GetInputArg(1))));
      3: WideStrUtils.ConvertStreamFromAnsiToUTF8(TStream(Integer(GetInputArg(0))),TStream(Integer(GetInputArg(1))),VarToInteger(GetInputArg(2)));
    end;
  end;
end;

procedure TatWideStrUtilsLibrary.__ConvertStreamFromUTF8ToAnsi(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Case InputArgCount of
      2: WideStrUtils.ConvertStreamFromUTF8ToAnsi(TStream(Integer(GetInputArg(0))),TStream(Integer(GetInputArg(1))));
      3: WideStrUtils.ConvertStreamFromUTF8ToAnsi(TStream(Integer(GetInputArg(0))),TStream(Integer(GetInputArg(1))),VarToInteger(GetInputArg(2)));
    end;
  end;
end;

procedure TatWideStrUtilsLibrary.__WideLastChar(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideCharToString(WideStrUtils.WideLastChar(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WideQuotedStr(AMachine: TatVirtualMachine);
  var
  Param1Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param1Buf, Length(VarToStr(GetInputArg(1))) + 1);
AResult := WideStrUtils.WideQuotedStr(GetInputArg(0),StringToWideChar(VarToStr(GetInputArg(1)),@Param1Buf[0],Length(Param1Buf))^);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WideExtractQuotedStr(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  Param0: PWideChar;
  Param1Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
Param0 := StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf));
SetLength(Param1Buf, Length(VarToStr(GetInputArg(1))) + 1);
AResult := WideStrUtils.WideExtractQuotedStr(Param0,StringToWideChar(VarToStr(GetInputArg(1)),@Param1Buf[0],Length(Param1Buf))^);
    ReturnOutputArg(AResult);
    SetInputArg(0,WideCharToString(Param0));
  end;
end;

procedure TatWideStrUtilsLibrary.__WideDequotedStr(AMachine: TatVirtualMachine);
  var
  Param1Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param1Buf, Length(VarToStr(GetInputArg(1))) + 1);
AResult := WideStrUtils.WideDequotedStr(GetInputArg(0),StringToWideChar(VarToStr(GetInputArg(1)),@Param1Buf[0],Length(Param1Buf))^);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WideAdjustLineBreaks(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
1: AResult := WideStrUtils.WideAdjustLineBreaks(GetInputArg(0));
2: AResult := WideStrUtils.WideAdjustLineBreaks(GetInputArg(0),GetInputArg(1));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WideStringReplace(AMachine: TatVirtualMachine);
  var
  Param3: TReplaceFlags;
  AResult: variant;
begin
  with AMachine do
  begin
IntToSet(Param3, VarToInteger(GetInputArg(3)), SizeOf(Param3));
AResult := WideStrUtils.WideStringReplace(GetInputArg(0),GetInputArg(1),GetInputArg(2),Param3);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WideReplaceStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideStrUtils.WideReplaceStr(GetInputArg(0),GetInputArg(1),GetInputArg(2));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__WideReplaceText(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideStrUtils.WideReplaceText(GetInputArg(0),GetInputArg(1),GetInputArg(2));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__LoadWideStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideStrUtils.LoadWideStr(VarToInteger(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__InOpSet(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  Param1: CharSet;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
IntToSet(Param1, VarToInteger(GetInputArg(1)), SizeOf(Param1));
AResult := WideStrUtils.InOpSet(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf))^,Param1);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__IsUTF8LeadByte(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideStrUtils.IsUTF8LeadByte(AnsiString(VarToStr(GetInputArg(0)))[1]);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__IsUTF8TrailByte(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideStrUtils.IsUTF8TrailByte(AnsiString(VarToStr(GetInputArg(0)))[1]);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__UTF8CharSize(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(WideStrUtils.UTF8CharSize(AnsiString(VarToStr(GetInputArg(0)))[1]));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.__UTF8CharLength(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(WideStrUtils.UTF8CharLength(AnsiString(VarToStr(GetInputArg(0)))[1]));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStrUtilsLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('WStrAlloc',1,tkVariant,nil,__WStrAlloc,false,0,'Size: Cardinal');
    DefineMethod('WStrBufSize',1,tkInteger,nil,__WStrBufSize,false,0,'Str: PWideChar');
    DefineMethod('WStrMove',3,tkVariant,nil,__WStrMove,false,0,'Dest: PWideChar; Source: PWideChar; Count: Cardinal');
    DefineMethod('WStrNew',1,tkVariant,nil,__WStrNew,false,0,'Str: PWideChar');
    DefineMethod('WStrDispose',1,tkNone,nil,__WStrDispose,false,0,'Str: PWideChar');
    DefineMethod('WStrLen',1,tkInteger,nil,__WStrLen,false,0,'Str: PWideChar');
    DefineMethod('WStrEnd',1,tkVariant,nil,__WStrEnd,false,0,'Str: PWideChar');
    DefineMethod('WStrCat',2,tkVariant,nil,__WStrCat,false,0,'Dest: PWideChar; Source: PWideChar');
    DefineMethod('WStrCopy',2,tkVariant,nil,__WStrCopy,false,0,'Dest: PWideChar; Source: PWideChar');
    DefineMethod('WStrLCopy',3,tkVariant,nil,__WStrLCopy,false,0,'Dest: PWideChar; Source: PWideChar; MaxLen: Cardinal');
    DefineMethod('WStrPCopy',2,tkVariant,nil,__WStrPCopy,false,0,'Dest: PWideChar; Source: WideString');
    DefineMethod('WStrPLCopy',3,tkVariant,nil,__WStrPLCopy,false,0,'Dest: PWideChar; Source: WideString; MaxLen: Cardinal');
    DefineMethod('WStrScan',2,tkVariant,nil,__WStrScan,false,0,'Str: PWideChar; Chr: WideChar');
    DefineMethod('WStrComp',2,tkInteger,nil,__WStrComp,false,0,'Str1: PWideChar; Str2: PWideChar');
    DefineMethod('WStrPos',2,tkVariant,nil,__WStrPos,false,0,'Str1: PWideChar; Str2: PWideChar');
    DefineMethod('UTF8LowerCase',1,tkVariant,nil,__UTF8LowerCase,false,0,'S: UTF8string');
    DefineMethod('UTF8UpperCase',1,tkVariant,nil,__UTF8UpperCase,false,0,'S: UTF8string');
    DefineMethod('AnsiToUtf8Ex',2,tkVariant,nil,__AnsiToUtf8Ex,false,0,'S: AnsiString; cp: integer');
    DefineMethod('Utf8ToAnsiEx',2,tkVariant,nil,__Utf8ToAnsiEx,false,0,'S: UTF8String; cp: integer');
    DefineMethod('DetectUTF8Encoding',1,tkEnumeration,nil,__DetectUTF8Encoding,false,0,'s: RawByteString');
    DefineMethod('IsUTF8String',1,tkVariant,nil,__IsUTF8String,false,0,'s: RawByteString');
    DefineMethod('HasExtendCharacter',1,tkVariant,nil,__HasExtendCharacter,false,0,'s: RawByteString');
    DefineMethod('HasUTF8BOM',1,tkVariant,nil,__HasUTF8BOM,false,0,'S: TStream');
    DefineMethod('ConvertStreamFromAnsiToUTF8',3,tkNone,nil,__ConvertStreamFromAnsiToUTF8,false,1,'Src: TStream; Dst: TStream; cp: Integer = CP_ACP');
    DefineMethod('ConvertStreamFromUTF8ToAnsi',3,tkNone,nil,__ConvertStreamFromUTF8ToAnsi,false,1,'Src: TStream; Dst: TStream; cp: Integer = CP_ACP');
    DefineMethod('WideLastChar',1,tkVariant,nil,__WideLastChar,false,0,'S: WideString');
    DefineMethod('WideQuotedStr',2,tkVariant,nil,__WideQuotedStr,false,0,'S: WideString; Quote: WideChar');
    DefineMethod('WideExtractQuotedStr',2,tkVariant,nil,__WideExtractQuotedStr,false,0,'Src: PWideChar; Quote: WideChar').SetVarArgs([0]);
    DefineMethod('WideDequotedStr',2,tkVariant,nil,__WideDequotedStr,false,0,'S: WideString; AQuote: WideChar');
    DefineMethod('WideAdjustLineBreaks',2,tkVariant,nil,__WideAdjustLineBreaks,false,1,'S: WideString; Style: TTextLineBreakStyle = tlbsCRLF');
    DefineMethod('WideStringReplace',4,tkVariant,nil,__WideStringReplace,false,0,'S: Widestring; OldPattern: Widestring; NewPattern: Widestring; Flags: TReplaceFlags');
    DefineMethod('WideReplaceStr',3,tkVariant,nil,__WideReplaceStr,false,0,'AText: WideString; AFromText: WideString; AToText: WideString');
    DefineMethod('WideReplaceText',3,tkVariant,nil,__WideReplaceText,false,0,'AText: WideString; AFromText: WideString; AToText: WideString');
    DefineMethod('LoadWideStr',1,tkVariant,nil,__LoadWideStr,false,0,'Ident: Integer');
    DefineMethod('InOpSet',2,tkVariant,nil,__InOpSet,false,0,'W: WideChar; Sets: CharSet');
    DefineMethod('IsUTF8LeadByte',1,tkVariant,nil,__IsUTF8LeadByte,false,0,'Lead: AnsiChar');
    DefineMethod('IsUTF8TrailByte',1,tkVariant,nil,__IsUTF8TrailByte,false,0,'Lead: AnsiChar');
    DefineMethod('UTF8CharSize',1,tkInteger,nil,__UTF8CharSize,false,0,'Lead: AnsiChar');
    DefineMethod('UTF8CharLength',1,tkInteger,nil,__UTF8CharLength,false,0,'Lead: AnsiChar');
    AddConstant('etUSASCII',etUSASCII);
    AddConstant('etUTF8',etUTF8);
    AddConstant('etANSI',etANSI);
  end;
end;

class function TatWideStrUtilsLibrary.LibraryName: string;
begin
  result := 'WideStrUtils';
end;

initialization
  RegisterScripterLibrary(TatWideStrUtilsLibrary, True);

{$WARNINGS ON}

end.

