unit uScript;

interface

uses
  System.SysUtils, System.Classes, atScript, atScripter, atScriptDebug, atPascal;

type
  TScript = class(TDataModule)
    Debugger: TatScriptDebugger;
    Engine: TatPascalScripter;
    procedure EngineCompileError(Sender: TObject; var msg: string; row,
      col: Integer; var ShowException: Boolean);
    procedure EngineRuntimeError(Sender: TObject; var msg: string; row,
      col: Integer; var ShowException: Boolean);
  private
    { Private declarations }
  public
    function Run(AFileName: string): boolean;
  end;

var
  Script: TScript;

implementation
uses uRegFIBPlus,
  ufmMain,

  ap_Sysutils, ap_Classes, ap_Graphics, ap_Controls, ap_Forms, ap_Dialogs,

  ap_StdCtrls, ap_Windows, ap_System,
  ap_ExtCtrls, ap_ComCtrls, ap_Menus, ap_Buttons,
  ap_ImgList,

  ap_fib,
  ap_FIBConsts,
  ap_FIBDatabase,
  ap_FIBDataSet,
  ap_FIBQuery;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

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
  Engine.LoadCodeFromFile(AFileName);
  Engine.Compile;
  Result := Engine.Compiled;
  Engine.Execute;
end;

end.
