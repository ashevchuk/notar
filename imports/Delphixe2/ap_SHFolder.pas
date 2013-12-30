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
unit ap_SHFolder;

interface

uses
  Windows,
  SHFolder,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatSHFolderLibrary = class(TatScripterLibrary)
    procedure __SHGetFolderPath(AMachine: TatVirtualMachine);
    procedure __SHGetFolderPathA(AMachine: TatVirtualMachine);
    procedure __SHGetFolderPathW(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatSHFolderLibrary.__SHGetFolderPath(AMachine: TatVirtualMachine);
  var
  Param4Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param4Buf, Length(VarToStr(GetInputArg(4))) + 1);
AResult := Integer(SHFolder.SHGetFolderPath(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),StringToWideChar(VarToStr(GetInputArg(4)),@Param4Buf[0],Length(Param4Buf))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSHFolderLibrary.__SHGetFolderPathA(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(SHFolder.SHGetFolderPathA(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),PAnsiChar(AnsiString(VarToStr(GetInputArg(4))))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSHFolderLibrary.__SHGetFolderPathW(AMachine: TatVirtualMachine);
  var
  Param4Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param4Buf, Length(VarToStr(GetInputArg(4))) + 1);
AResult := Integer(SHFolder.SHGetFolderPathW(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),StringToWideChar(VarToStr(GetInputArg(4)),@Param4Buf[0],Length(Param4Buf))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSHFolderLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('SHGetFolderPath',5,tkInteger,nil,__SHGetFolderPath,false,0,'hwnd: HWND; csidl: Integer; hToken: THandle; dwFlags: DWord; pszPath: PWideChar');
    DefineMethod('SHGetFolderPathA',5,tkInteger,nil,__SHGetFolderPathA,false,0,'hwnd: HWND; csidl: Integer; hToken: THandle; dwFlags: DWord; pszPath: PAnsiChar');
    DefineMethod('SHGetFolderPathW',5,tkInteger,nil,__SHGetFolderPathW,false,0,'hwnd: HWND; csidl: Integer; hToken: THandle; dwFlags: DWord; pszPath: PWideChar');
    AddConstant('CSIDL_PERSONAL',CSIDL_PERSONAL);
    AddConstant('CSIDL_APPDATA',CSIDL_APPDATA);
    AddConstant('CSIDL_LOCAL_APPDATA',CSIDL_LOCAL_APPDATA);
    AddConstant('CSIDL_MYMUSIC',CSIDL_MYMUSIC);
    AddConstant('CSIDL_INTERNET_CACHE',CSIDL_INTERNET_CACHE);
    AddConstant('CSIDL_COOKIES',CSIDL_COOKIES);
    AddConstant('CSIDL_HISTORY',CSIDL_HISTORY);
    AddConstant('CSIDL_COMMON_APPDATA',CSIDL_COMMON_APPDATA);
    AddConstant('CSIDL_WINDOWS',CSIDL_WINDOWS);
    AddConstant('CSIDL_SYSTEM',CSIDL_SYSTEM);
    AddConstant('CSIDL_PROGRAM_FILES',CSIDL_PROGRAM_FILES);
    AddConstant('CSIDL_MYPICTURES',CSIDL_MYPICTURES);
    AddConstant('CSIDL_PROGRAM_FILES_COMMON',CSIDL_PROGRAM_FILES_COMMON);
    AddConstant('CSIDL_COMMON_DOCUMENTS',CSIDL_COMMON_DOCUMENTS);
    AddConstant('CSIDL_RESOURCES',CSIDL_RESOURCES);
    AddConstant('CSIDL_RESOURCES_LOCALIZED',CSIDL_RESOURCES_LOCALIZED);
    AddConstant('CSIDL_FLAG_CREATE',CSIDL_FLAG_CREATE);
    AddConstant('CSIDL_COMMON_ADMINTOOLS',CSIDL_COMMON_ADMINTOOLS);
    AddConstant('CSIDL_ADMINTOOLS',CSIDL_ADMINTOOLS);
    AddConstant('SHGFP_TYPE_CURRENT',SHGFP_TYPE_CURRENT);
    AddConstant('SHGFP_TYPE_DEFAULT',SHGFP_TYPE_DEFAULT);
  end;
end;

class function TatSHFolderLibrary.LibraryName: string;
begin
  result := 'SHFolder';
end;

initialization
  RegisterScripterLibrary(TatSHFolderLibrary, True);

{$WARNINGS ON}

end.

