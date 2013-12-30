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
unit ap_LZExpand;

interface

uses
  Windows,
  LZExpand,
  Variants,
  ap_Windows,
  atScript;

{$WARNINGS OFF}

type
  TatLZExpandLibrary = class(TatScripterLibrary)
    procedure __LZCopy(AMachine: TatVirtualMachine);
    procedure __LZInit(AMachine: TatVirtualMachine);
    procedure __GetExpandedName(AMachine: TatVirtualMachine);
    procedure __GetExpandedNameA(AMachine: TatVirtualMachine);
    procedure __GetExpandedNameW(AMachine: TatVirtualMachine);
    procedure __LZOpenFile(AMachine: TatVirtualMachine);
    procedure __LZOpenFileA(AMachine: TatVirtualMachine);
    procedure __LZOpenFileW(AMachine: TatVirtualMachine);
    procedure __LZSeek(AMachine: TatVirtualMachine);
    procedure __LZRead(AMachine: TatVirtualMachine);
    procedure __LZClose(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatLZExpandLibrary.__LZCopy(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(LZExpand.LZCopy(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatLZExpandLibrary.__LZInit(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(LZExpand.LZInit(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatLZExpandLibrary.__GetExpandedName(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  Param1Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
SetLength(Param1Buf, Length(VarToStr(GetInputArg(1))) + 1);
AResult := Integer(LZExpand.GetExpandedName(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),StringToWideChar(VarToStr(GetInputArg(1)),@Param1Buf[0],Length(Param1Buf))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatLZExpandLibrary.__GetExpandedNameA(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(LZExpand.GetExpandedNameA(PAnsiChar(AnsiString(VarToStr(GetInputArg(0)))),PAnsiChar(AnsiString(VarToStr(GetInputArg(1))))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatLZExpandLibrary.__GetExpandedNameW(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  Param1Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
SetLength(Param1Buf, Length(VarToStr(GetInputArg(1))) + 1);
AResult := Integer(LZExpand.GetExpandedNameW(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),StringToWideChar(VarToStr(GetInputArg(1)),@Param1Buf[0],Length(Param1Buf))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatLZExpandLibrary.__LZOpenFile(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  Param1Rec: TObject;
  Param1: TOFStruct;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
Param1Rec := TObject(integer(GetInputArg(1)));
if not Assigned(Param1Rec) or not (Param1Rec is _OFSTRUCTWrapper) then 
  Param1Rec := _OFSTRUCTWrapper.Create(Param1);
Param1 := _OFSTRUCTWrapper(Param1Rec).ObjToRec;
AResult := Integer(LZExpand.LZOpenFile(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),Param1,VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
    SetInputArg(1,integer(_OFSTRUCTWrapper.Create(Param1)));
  end;
end;

procedure TatLZExpandLibrary.__LZOpenFileA(AMachine: TatVirtualMachine);
  var
  Param1Rec: TObject;
  Param1: TOFStruct;
  AResult: variant;
begin
  with AMachine do
  begin
Param1Rec := TObject(integer(GetInputArg(1)));
if not Assigned(Param1Rec) or not (Param1Rec is _OFSTRUCTWrapper) then 
  Param1Rec := _OFSTRUCTWrapper.Create(Param1);
Param1 := _OFSTRUCTWrapper(Param1Rec).ObjToRec;
AResult := Integer(LZExpand.LZOpenFileA(PAnsiChar(AnsiString(VarToStr(GetInputArg(0)))),Param1,VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
    SetInputArg(1,integer(_OFSTRUCTWrapper.Create(Param1)));
  end;
end;

procedure TatLZExpandLibrary.__LZOpenFileW(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  Param1Rec: TObject;
  Param1: TOFStruct;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
Param1Rec := TObject(integer(GetInputArg(1)));
if not Assigned(Param1Rec) or not (Param1Rec is _OFSTRUCTWrapper) then 
  Param1Rec := _OFSTRUCTWrapper.Create(Param1);
Param1 := _OFSTRUCTWrapper(Param1Rec).ObjToRec;
AResult := Integer(LZExpand.LZOpenFileW(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),Param1,VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
    SetInputArg(1,integer(_OFSTRUCTWrapper.Create(Param1)));
  end;
end;

procedure TatLZExpandLibrary.__LZSeek(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(LZExpand.LZSeek(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatLZExpandLibrary.__LZRead(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(LZExpand.LZRead(VarToInteger(GetInputArg(0)),PAnsiChar(AnsiString(VarToStr(GetInputArg(1)))),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatLZExpandLibrary.__LZClose(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    LZExpand.LZClose(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatLZExpandLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('LZCopy',2,tkInteger,nil,__LZCopy,false,0,'Source: Integer; Dest: Integer');
    DefineMethod('LZInit',1,tkInteger,nil,__LZInit,false,0,'Source: Integer');
    DefineMethod('GetExpandedName',2,tkInteger,nil,__GetExpandedName,false,0,'Source: PWideChar; Buffer: PWideChar');
    DefineMethod('GetExpandedNameA',2,tkInteger,nil,__GetExpandedNameA,false,0,'Source: PAnsiChar; Buffer: PAnsiChar');
    DefineMethod('GetExpandedNameW',2,tkInteger,nil,__GetExpandedNameW,false,0,'Source: PWideChar; Buffer: PWideChar');
    DefineMethod('LZOpenFile',3,tkInteger,nil,__LZOpenFile,false,0,'Filename: PWideChar; ReOpenBuff: TOFStruct; Style: Word').SetVarArgs([1]);
    DefineMethod('LZOpenFileA',3,tkInteger,nil,__LZOpenFileA,false,0,'Filename: PAnsiChar; ReOpenBuff: TOFStruct; Style: Word').SetVarArgs([1]);
    DefineMethod('LZOpenFileW',3,tkInteger,nil,__LZOpenFileW,false,0,'Filename: PWideChar; ReOpenBuff: TOFStruct; Style: Word').SetVarArgs([1]);
    DefineMethod('LZSeek',3,tkInteger,nil,__LZSeek,false,0,'hFile: Integer; Offset: Longint; Origin: Integer');
    DefineMethod('LZRead',3,tkInteger,nil,__LZRead,false,0,'hFile: Integer; Buffer: LPSTR; Count: Integer');
    DefineMethod('LZClose',1,tkNone,nil,__LZClose,false,0,'hFile: Integer');
    AddConstant('LZERROR_BADINHANDLE',LZERROR_BADINHANDLE);
    AddConstant('LZERROR_BADOUTHANDLE',LZERROR_BADOUTHANDLE);
    AddConstant('LZERROR_READ',LZERROR_READ);
    AddConstant('LZERROR_WRITE',LZERROR_WRITE);
    AddConstant('LZERROR_GLOBALLOC',LZERROR_GLOBALLOC);
    AddConstant('LZERROR_GLOBLOCK',LZERROR_GLOBLOCK);
    AddConstant('LZERROR_BADVALUE',LZERROR_BADVALUE);
    AddConstant('LZERROR_UNKNOWNALG',LZERROR_UNKNOWNALG);
  end;
end;

class function TatLZExpandLibrary.LibraryName: string;
begin
  result := 'LZExpand';
end;

initialization
  RegisterScripterLibrary(TatLZExpandLibrary, True);

{$WARNINGS ON}

end.

