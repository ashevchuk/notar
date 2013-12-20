unit ufmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, OnGuard, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, dxStatusBar,
  Vcl.Buttons, dxSkinsdxBarPainter, dxBar, cxClasses, dxBarApplicationMenu,
  dxRibbon, cxPC, dxSkinscxPCPainter, dxTabbedMDI, dxScreenTip, dxSkinsForm,
  cxLocalization, cxStyles, dxCustomHint, cxHint, cxEdit, cxContainer,

    atScript, atScripter, IDEMain, IDEDialog,

  ap_Sysutils, ap_Classes, ap_Graphics, ap_Controls, ap_Forms, ap_Dialogs,
  ap_StdCtrls, ap_Windows, ap_System,
  ap_ExtCtrls, ap_ComCtrls, ap_Menus, ap_Buttons,
  ap_ImgList,

  cxGridTableView, Vcl.ComCtrls, ScriptCtrls, ShellApi, atPascal, FormScript,
  atScriptDebug, atMemoInterface, cxPCdxBarPopupMenu, cxTL;

const
  IDX_STATUS_TEXT : byte = 0;
  IDX_STATUS_REGISTERED : byte = 1;
  IDX_STATUS_EXPIRATION : byte = 2;

resourcestring
  Str_Registered = 'Registered';
  Str_UnRegistered = 'Unegistered';

const
  RegisterFlipFlop : array[False..True] of string = (Str_UnRegistered, Str_Registered);

type
  TfmMain = class(TForm)
    StatusBar: TdxStatusBar;
    dxBarManager: TdxBarManager;
    dxTabbedMDIManager: TdxTabbedMDIManager;
    dxBarManagerBar1: TdxBar;
    dxBarButtonExit: TdxBarButton;
    dxBarSubItemFile: TdxBarSubItem;
    dxBarButtonEditor: TdxBarButton;
    cxEditStyleController: TcxEditStyleController;
    cxDefaultEditStyleController: TcxDefaultEditStyleController;
    cxEditRepository: TcxEditRepository;
    cxHintStyleController: TcxHintStyleController;
    cxLookAndFeelController: TcxLookAndFeelController;
    cxStyleRepository: TcxStyleRepository;
    dxScreenTipRepository: TdxScreenTipRepository;
    cxLocalizer: TcxLocalizer;
    dxSkinController: TdxSkinController;
    GridTableViewStyleSheetHighContrastWhite: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    dxBarButtonEditTemplate: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    atScripter1: TatPascalFormScripter;
    atMemoInterface1: TatMemoInterface;
    atScriptDebugger1: TatScriptDebugger;
    IDEEngine1: TIDEEngine;
    dxBarButton3: TdxBarButton;
    TreeListStyleSheetHighContrast1: TcxTreeListStyleSheet;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure dxBarButtonExitClick(Sender: TObject);
    procedure dxBarButtonEditorClick(Sender: TObject);
    procedure dxBarButtonEditTemplateClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
  private

  public
    CurrentDir : string;
    procedure SetStatusText(const AStatus: string; StatusType: byte = 0);
    function GetCustomTagValue(const Tag: AnsiString;  var Value: string): boolean;
  end;

var
  fmMain: TfmMain;

implementation
uses uRemoteDM, uLicenseDM,
  ufmIDE,
  ufmRichEditor,
  ufmCatalogs,

  RVARibbonFrm,
  uDbFreeReporter,
  uFreeReporter;
{$R *.dfm}

procedure TfmMain.dxBarButton1Click(Sender: TObject);
begin
  with TfmIDE.Create(self) do begin
  end;
end;

procedure TfmMain.dxBarButton2Click(Sender: TObject);
var lib: TatStdCtrlsLibrary;
begin
 lib := TatStdCtrlsLibrary.Create(atScripter1);
 lib.Init;

 // RegisterClasses([TLabel, TEdit, TButton]);
// RegisterScripterLibrary(TatStdCtrlsLibrary, True);
  atScripter1.Compile;
  atScripter1.Execute;
end;

procedure TfmMain.dxBarButton3Click(Sender: TObject);
begin
 with TfmCatalogs.Create(self) do
 begin
   Show;
 end;
end;

procedure TfmMain.dxBarButtonEditorClick(Sender: TObject);
begin
  with RVARibbonFrm.TfrmMain.Create(self) do begin
    //Show;
  end;
end;

procedure TfmMain.dxBarButtonEditTemplateClick(Sender: TObject);
var
  TemplateName, OutputName, sTemplate: string;
  Reporter: TDbFreeReporter;
begin
  sTemplate := 'Report0.template.rtf';
  TemplateName := CurrentDir + 'Templates\Repository\' + sTemplate;
  OutputName := CurrentDir + 'Templates\Output\' + StringReplace(sTemplate, '.template.', '.', [rfIgnoreCase]);

  Reporter := TDbFreeReporter.Create;
  Reporter.OnGetCustomTagValue := GetCustomTagValue;
  Reporter.CreateReport(TemplateName, OutputName);
  Reporter.Free;
  with RVARibbonFrm.TfrmMain.Create(self) do begin
    LoadFile(OutputName);
    Show;
  end;
end;

procedure TfmMain.dxBarButtonExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.FormCreate(Sender: TObject);
var
  PathLength       : integer;
begin
  ForceCurrentDirectory := true;
 CurrentDir := ExtractFilePath(ParamStr(0));
 PathLength := Length(CurrentDir);
 if (PathLength > 3) and (CurrentDir[PathLength] <> '\') then CurrentDir := CurrentDir + '\';

// CurrentDir := 'C:\Documents and Settings\Slayer\��� ���������\RAD Studio\Projects\Notar\';

 SetStatusText('Started...');
 SetStatusText(RegisterFlipFlop[LicenseDataModule.IsRegistered], IDX_STATUS_REGISTERED);
 SetStatusText('Expires: ' + DateToStr(LicenseDataModule.ExpireDate), IDX_STATUS_EXPIRATION);
end;

procedure TfmMain.SetStatusText(const AStatus: string; StatusType: byte);
begin
  StatusBar.Panels[StatusType].Text := AStatus;
end;

function TfmMain.GetCustomTagValue(const Tag: AnsiString;  var Value: string): boolean;
begin
  Result := True;
  Value := 'Test value for ' + Tag;
end;

end.