unit uScriptEngine;

interface

{$I ASCRIPT.INC}

uses
  System.SysUtils, System.Classes, Forms, atScript, atScripter, atScriptDebug, atPascal,
  uRegFIBPlus,
  ufmMain,

  ap_Sysutils, ap_Classes, ap_Graphics, ap_Controls, ap_Forms, ap_Dialogs,

  ap_StdCtrls, ap_Windows, ap_System,
  ap_ExtCtrls, ap_ComCtrls, ap_Menus, ap_Buttons,
  ap_ImgList,

  ap_DB, ap_DBCtrls,
  ap_DBGrids, ap_DBTables,
  ap_Grids, ap_Printers, ap_Registry,

  ap_Types, ap_Variants,

  ap_ShellApi,

  ap_fib,
  ap_FIBConsts,
  ap_FIBDatabase,
  ap_FIBDataSet,
  ap_FIBQuery,

  uRemoteDM,
  ap_uRemoteDM,
  FormScript, IDEMain;
type
  TScript = class(TDataModule)
    atScripter1: TatScripter;
    procedure EngineCompileError(Sender: TObject; var msg: string; row, col: Integer; var ShowException: Boolean);
    procedure EngineRuntimeError(Sender: TObject; var msg: string; row, col: Integer; var ShowException: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FScr: TatScripter;
  public
    function Run(AFileName: string): boolean;
  end;

var
  Script: TScript;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TScript.DataModuleCreate(Sender: TObject);
begin
  RegisterScripterLibrary(TatDBGridsLibrary);
  RegisterScripterLibrary(TatDBLibrary);
  FScr := TatScripter.Create(TfmMain(Application.MainForm));
  FScr.DefaultLanguage := slPascal;
  FScr.LibOptions.SourceFileExt := '.psc';
  FScr.LibOptions.CompiledFileExt := '.pcu';
  FScr.LibOptions.FormFileExt := '.sfm';
  FScr.AddComponent(RemoteDataModule);
  FScr.LibOptions.UseScriptFiles := true;
  FScr.LibOptions.SearchPath.Add('.\Scripts');
  FScr.LoadLibrary('DBCtrls');
  FScr.LoadLibrary('DBGrids');
  FScr.AddLibrary(TatDBLibrary);
  FScr.AddLibrary(TatDBGridsLibrary);
  FScr.DefineClassByRTTI(TatDBLibrary);
  FScr.DefineClassByRTTI(TatDBGridsLibrary);

  //  FScr.AddLibraryInstance(TatDBCtrlsLibrary);
//  FScr.AddLibraryInstance(TatDBGridsLibrary);
//  FScr.SystemLibrary.
//  FScr.DefineClassByRTTI(TRemoteDataModule);
end;

procedure TScript.DataModuleDestroy(Sender: TObject);
begin
  FScr.Free;
end;

procedure TScript.EngineCompileError(Sender: TObject; var msg: string; row,
  col: Integer; var ShowException: Boolean);
begin
  Log(msg);
  ShowException := true;
end;

procedure TScript.EngineRuntimeError(Sender: TObject; var msg: string; row,
  col: Integer; var ShowException: Boolean);
begin
  Log(msg);
  ShowException := true;
end;

function TScript.Run(AFileName: string): boolean;
begin
  FScr.SourceCode.LoadFromFile(AFileName);
  FScr.Compile;
  Result := FScr.Compiled;
  FScr.Execute;
end;

end.
