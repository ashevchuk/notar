unit ufmIDE;

{$I ASCRIPT.INC}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Menus,
  IDEMain, atScript, atScripter, ufmIDEDialog,

  ufmMain,

  ap_Sysutils, ap_Classes, ap_Graphics, ap_Controls, ap_Forms, ap_Dialogs,

  ap_StdCtrls, ap_Windows, ap_System,
  ap_ExtCtrls, ap_ComCtrls, ap_Menus, ap_Buttons,
  ap_ImgList,

  ap_fib,
  ap_FIBConsts,
  ap_FIBDatabase,
  ap_FIBDataSet,
  ap_FIBQuery,


    
  {$IFDEF DELPHI9_LVL}
  XPMan,
  {$ENDIF}
  StdCtrls, ComponentInspector, AdvMemo, Vcl.ComCtrls, InspectorControls,
  IDEDialog;

type
  TfmIDE = class(TForm)
    IDEScripter1: TIDEScripter;
    IDEEngine1: TIDEEngine;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    IDEDialog1: TCustomIDEDialog;
  public
    { Public declarations }
  end;

var
  fmIDE: TfmIDE;

implementation
uses imglist, ShellApi, fIDEEditor,
  IDERegDBPalette, IDERegAdoPalette,
  uRegFIBPlus;

{$R *.DFM}

procedure TfmIDE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmIDE.FormCreate(Sender: TObject);
begin
  ForceCurrentDirectory := true;
  IDEDialog1 := TCustomIDEDialog.Create(self);
  IDEDialog1.Engine := IDEEngine1;
  IDERegisterDataAccessTab(IDEEngine1);
  IDERegisterDataControlsTab(IDEEngine1);
  IDERegisterADOTab(IDEEngine1);
  IDERegisterFIBPlusTab(IDEEngine1);
  //Application.ShowMainForm := false;
 // IDEDialog1.OnCreateIDEForm := OnCreateEditor;
  IDEDialog1.Execute(self);
 // Application.Terminate;
end;

end.
