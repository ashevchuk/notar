unit ufmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, ClipBrd,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, OnGuard, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2010Blue, dxSkinsDefaultPainters, dxSkinsdxStatusBarPainter, dxStatusBar,
  Vcl.Buttons, dxSkinsdxBarPainter, dxBar, cxClasses, dxBarApplicationMenu,
  dxRibbon, cxPC, dxSkinscxPCPainter, dxTabbedMDI, dxScreenTip, dxSkinsForm,
  cxLocalization, cxStyles, dxCustomHint, cxHint, cxEdit, cxContainer,

  cxGridTableView, Vcl.ComCtrls, ScriptCtrls, ShellApi, cxPCdxBarPopupMenu, cxTL, cxScrollBox,
  cxSplitter, cxGroupBox, cxListBox, dxSkinOffice2007Blue, Vcl.Menus,
  dxCustomTileControl, dxTileControl, dxRibbonSkins, dxSkinsdxRibbonPainter,
  cxProgressBar, dxTaskbarProgress, dxtree, dxdbtree, Vcl.ImgList;

const
  IDX_STATUS_TEXT : byte = 0;
  IDX_STATUS_PROGRESS : byte = 1;
  IDX_STATUS_REGISTERED : byte = 2;
  IDX_STATUS_EXPIRATION : byte = 3;

resourcestring
  Str_Registered = 'Registered';
  Str_UnRegistered = 'Unegistered';

const
  RegisterFlipFlop : array[False..True] of string = (Str_UnRegistered, Str_Registered);

type
  TfmMain = class(TForm)
    StatusBar: TdxStatusBar;
    dxMainBarManager: TdxBarManager;
    dxTabbedMDIManager: TdxTabbedMDIManager;
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
    LogGroupBox: TcxGroupBox;
    LogSplitter: TcxSplitter;
    LogListBox: TcxListBox;
    LogPopupMenu: TPopupMenu;
    Clear1: TMenuItem;
    Save1: TMenuItem;
    Copy1: TMenuItem;
    LogSaveDialog: TSaveDialog;
    StatusBarProgressContainer: TdxStatusBarContainerControl;
    dxTaskbarProgress: TdxTaskbarProgress;
    StatusProgressBar: TcxProgressBar;
    cxGroupBox1: TcxGroupBox;
    cxSplitter1: TcxSplitter;
    dxDBTreeView1: TdxDBTreeView;
    MenuTreeImageList: TImageList;
    dxMainBarManagerBar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    procedure FormCreate(Sender: TObject);
    procedure dxBarButtonExitClick(Sender: TObject);
    procedure StatusBarDblClick(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure dxDBTreeView1DblClick(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
  private
    procedure OnException(Sender: TObject; E: Exception);
  public
    CurrentDir : string;
    procedure SetStatusText(const AStatus: string; StatusType: byte = 0);
    function GetCustomTagValue(const Tag: AnsiString;  var Value: string): boolean;
    procedure ToggleLogWindow(AVisible: boolean);
    procedure SwitchLogWindow;
    procedure Log(AText: string);
    procedure ShowStatusProgressBar;
    procedure HideStatusProgressBar;
    procedure SetStatusProgressBarPosition(const ATotal, APosition: Int64);
  end;

procedure Log(AText: string);

var
  fmMain: TfmMain;

implementation
uses uRemoteDM, uLicenseDM,
  ufmIndividual,
  ufmAuthorization,
  ufmAuthorizations,

  ufmCatalogs,
  uDMConfig,
  RVARibbonFrm,
  uDbFreeReporter,
  uFreeReporter,
  uMVCAuthorization,
  ufmNotary,

  ufmIndividuals,
  ufmNotaries;
{$R *.dfm}

procedure Log(AText: string);
begin
  if Config.Debug then TfmMain(Application.MainForm).SetStatusText(AText);
end;

procedure TfmMain.Log(AText: string);
begin
  if Config.Debug then TfmMain(Application.MainForm).SetStatusText(AText);
end;

procedure TfmMain.Clear1Click(Sender: TObject);
begin
  LogListBox.Items.Clear;
  LogListBox.ItemIndex := -1;
end;

procedure TfmMain.Copy1Click(Sender: TObject);
begin
  Clipboard.AsText := LogListBox.Items[LogListBox.ItemIndex];
end;

procedure TfmMain.dxBarButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.dxBarButton3Click(Sender: TObject);
begin
 with TfmCatalogs.Create(self) do
 begin
   Show;
 end;
end;

procedure TfmMain.dxBarButtonExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.dxDBTreeView1DblClick(Sender: TObject);
var
  CRef: TFormClass;
  CForm: TForm;
begin
if (Length(RemoteDataModule.MenuTreeDataSetCLASS_NAME.AsString) >0) then
  begin
    Log(RemoteDataModule.MenuTreeDataSetCLASS_NAME.AsString);
    CRef := TFormClass(FindClass(RemoteDataModule.MenuTreeDataSetCLASS_NAME.AsString));
    if (CRef <>nil) then
      begin
        CForm := CRef.Create(Self);
        CForm.Show;
      end;
  end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
var
  PathLength       : integer;
begin
  ToggleLogWindow(false);
//  Application.OnException := OnException;

 ForceCurrentDirectory := true;
 CurrentDir := ExtractFilePath(ParamStr(0));
 PathLength := Length(CurrentDir);
 if (PathLength > 3) and (CurrentDir[PathLength] <> '\') then CurrentDir := CurrentDir + '\';

 Statusbar.Panels[IDX_STATUS_PROGRESS].Visible := False;

 SetStatusText('Started...');
 SetStatusText(RegisterFlipFlop[LicenseDataModule.IsRegistered], IDX_STATUS_REGISTERED);
 SetStatusText('Expires: ' + DateToStr(LicenseDataModule.ExpireDate), IDX_STATUS_EXPIRATION);
end;

procedure TfmMain.Save1Click(Sender: TObject);
begin
  if LogSaveDialog.Execute then LogListBox.Items.SaveToFile(LogSaveDialog.FileName);
end;

procedure TfmMain.SetStatusProgressBarPosition(const ATotal, APosition: Int64);
begin
  dxTaskbarProgress.Total := ATotal;
  dxTaskbarProgress.Position := APosition;
  Application.ProcessMessages;
end;

procedure TfmMain.SetStatusText(const AStatus: string; StatusType: byte);
begin
  StatusBar.Panels[StatusType].Text := AStatus;
  if StatusType = IDX_STATUS_TEXT then
  begin
    LogListBox.Items.Append(AStatus);
    LogListBox.ItemIndex := LogListBox.Count -1;
  end;
end;

procedure TfmMain.ShowStatusProgressBar;
begin
  Statusbar.Panels[IDX_STATUS_PROGRESS].Visible := True;
end;

procedure TfmMain.StatusBarDblClick(Sender: TObject);
begin
  SwitchLogWindow;
end;

procedure TfmMain.SwitchLogWindow;
begin
  LogGroupBox.Visible := not LogGroupBox.Visible;
  LogSplitter.Visible := not LogSplitter.Visible;
end;

procedure TfmMain.ToggleLogWindow(AVisible: boolean);
begin
  LogGroupBox.Visible := AVisible;
  LogSplitter.Visible := AVisible;
end;

function TfmMain.GetCustomTagValue(const Tag: AnsiString;  var Value: string): boolean;
begin
  Result := True;
 // Value := 'Test value for ' + Tag;
end;

procedure TfmMain.HideStatusProgressBar;
begin
  Statusbar.Panels[IDX_STATUS_PROGRESS].Visible := False;
end;

procedure TfmMain.OnException(Sender: TObject; E: Exception);
var
  ExceptionLog: TextFile;
  ExceptionInfo: string;
begin
  ExceptionInfo := Format('ClassType.ClassName: "%s", UnitScope: "%s", UnitName: "%s", ClassName: "%s", Message: "%s", Exception: "%s", Stack: "%s"', [Sender.ClassType.ClassName, Sender.UnitScope, Sender.UnitName, Sender.ClassName, E.Message, E.ToString, E.StackTrace]);
  AssignFile(ExceptionLog, CurrentDir + 'Notar.log');
  Append(ExceptionLog);
  Writeln(ExceptionLog, '=====[EXCEPTION]=====');
  Writeln(ExceptionLog, Format('[%s]', [DateTimeToStr(Now)]));
  Writeln(ExceptionLog, '=====================');
  Writeln(ExceptionLog, ExceptionInfo);
  Writeln(ExceptionLog, '=====================');
  Writeln(ExceptionLog);
  CloseFile(ExceptionLog);

  SetStatusText(ExceptionInfo);
  raise E;
end;

end.
