
{*******************************************************}
{                                                       }
{       RichViewActions                                 }
{       Demo project with Ribbon                        }
{       You can use it as a basis for your              }
{       applications.                                   }
{                                                       }
{       TRichView (c) Sergey Tkachenko                  }
{       svt@trichview.com                               }
{       http://www.trichview.com                        }
{                                                       }
{*******************************************************}


unit RVARibbonFrm;

interface

{$I RV_Defs.inc}          // contains defines about Delphi compiler versions

uses
  Windows, Messages, SysUtils,
  Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ActnList,
  ActnMan, ActnCtrls, Ribbon, RibbonLunaStyleActnCtrls,
  ActnMenus, RibbonActnMenus, ScreenTips, RibbonActnCtrls,
  StdActns, ImgList,
  Menus, ShellApi, Printers, ToolWin, RVUni,
  RVScroll, RichView, RVEdit,
  RVStyle, PtblRV, CRVFData, RVTable, RVItem, CRVData, RVFuncs,
  // RVAAddictLanguages,
  RichViewActions, RVALocRuler, RVFontCombos, RVALocalize, Ruler, RVRuler,
  RVARibbonUtils,
  GifImg, RVGifAnimate2007, PngImage,
  RVTypes, ActnPopup, RVAPopupActionBar, RibbonObsidianStyleActnCtrls,
  RibbonSilverStyleActnCtrls, RVStyleFuncs, System.Actions, Vcl.ExtCtrls,
  RVReport,
  ufmMain, dxRibbonSkins, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinsdxRibbonPainter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbon, dxSkinsdxBarPainter, dxBar,
  dxRibbonMiniToolbar, cxStyles, dxBarExtItems, cxContainer, cxEdit,
  cxGroupBox, cxButtons;

type
  TfrmMain = class(TForm)
    RichViewEdit1: TRichViewEdit;
    RVStyle1: TRVStyle;
    RVAControlPanel1: TRVAControlPanel;
    RVPrint1: TRVPrint;
    ColorDialog1: TColorDialog;
    RVRuler1: TRVRuler;
    ActionManager1: TActionManager;
    rvActionCut1: TrvActionCut;
    rvActionCopy1: TrvActionCopy;
    rvActionPaste1: TrvActionPaste;
    rvActionPasteAsText1: TrvActionPasteAsText;
    rvActionPasteSpecial1: TrvActionPasteSpecial;
    rvActionUndo1: TrvActionUndo;
    rvActionRedo1: TrvActionRedo;
    rvActionSelectAll1: TrvActionSelectAll;
    rvActionFind1: TrvActionFind;
    rvActionFindNext1: TrvActionFindNext;
    rvActionReplace1: TrvActionReplace;
    rvActionInsertTable1: TrvActionInsertTable;
    rvActionNew1: TrvActionNew;
    rvActionOpen1: TrvActionOpen;
    rvActionSave1: TrvActionSave;
    rvActionExport1: TrvActionExport;
    rvActionSaveAs1: TrvActionSaveAs;
    rvActionPrintPreview1: TrvActionPrintPreview;
    rvActionPrint1: TrvActionPrint;
    rvActionQuickPrint1: TrvActionQuickPrint;
    rvActionPageSetup1: TrvActionPageSetup;
    ScreenTipsManager1: TScreenTipsManager;
    ActionList1: TActionList;
    rvActionInsertFile1: TrvActionInsertFile;
    rvActionInsertPicture1: TrvActionInsertPicture;
    rvActionInsertHLine1: TrvActionInsertHLine;
    rvActionInsertHyperlink1: TrvActionInsertHyperlink;
    rvActionInsertSymbol1: TrvActionInsertSymbol;
    rvActionInsertText1: TrvActionInsertText;
    rvActionFonts1: TrvActionFonts;
    rvActionFontEx1: TrvActionFontEx;
    rvActionFontBold1: TrvActionFontBold;
    rvActionFontItalic1: TrvActionFontItalic;
    rvActionFontUnderline1: TrvActionFontUnderline;
    rvActionFontStrikeout1: TrvActionFontStrikeout;
    rvActionFontGrow1: TrvActionFontGrow;
    rvActionFontShrink1: TrvActionFontShrink;
    rvActionFontGrowOnePoint1: TrvActionFontGrowOnePoint;
    rvActionFontShrinkOnePoint1: TrvActionFontShrinkOnePoint;
    rvActionFontAllCaps1: TrvActionFontAllCaps;
    rvActionFontOverline1: TrvActionFontOverline;
    rvActionFontColor1: TrvActionFontColor;
    rvActionFontBackColor1: TrvActionFontBackColor;
    rvActionSubscript1: TrvActionSubscript;
    rvActionSuperscript1: TrvActionSuperscript;
    rvActionParagraph1: TrvActionParagraph;
    rvActionParaBorder1: TrvActionParaBorder;
    rvActionWordWrap1: TrvActionWordWrap;
    rvActionAlignLeft1: TrvActionAlignLeft;
    rvActionAlignRight1: TrvActionAlignRight;
    rvActionAlignCenter1: TrvActionAlignCenter;
    rvActionAlignJustify1: TrvActionAlignJustify;
    rvActionIndentInc1: TrvActionIndentInc;
    rvActionIndentDec1: TrvActionIndentDec;
    rvActionParaColor1: TrvActionParaColor;
    rvActionLineSpacing1001: TrvActionLineSpacing100;
    rvActionLineSpacing1501: TrvActionLineSpacing150;
    rvActionLineSpacing2001: TrvActionLineSpacing200;
    rvActionClearLeft1: TrvActionClearLeft;
    rvActionClearRight1: TrvActionClearRight;
    rvActionClearBoth1: TrvActionClearBoth;
    rvActionClearNone1: TrvActionClearNone;
    rvActionParaList1: TrvActionParaList;
    rvActionParaBullets1: TrvActionParaBullets;
    rvActionParaNumbering1: TrvActionParaNumbering;
    rvActionShowSpecialCharacters1: TrvActionShowSpecialCharacters;
    actTextSize: TAction;
    actTextFlow: TAction;
    actLineSpacing: TAction;
    actExit: TAction;
    actLanguage: TAction;
    rvActionTableInsertRowsBelow1: TrvActionTableInsertRowsBelow;
    rvActionTableInsertRowsAbove1: TrvActionTableInsertRowsAbove;
    rvActionTableInsertColLeft1: TrvActionTableInsertColLeft;
    rvActionTableInsertColRight1: TrvActionTableInsertColRight;
    rvActionTableDeleteRows1: TrvActionTableDeleteRows;
    rvActionTableDeleteCols1: TrvActionTableDeleteCols;
    rvActionTableDeleteTable1: TrvActionTableDeleteTable;
    rvActionTableMergeCells1: TrvActionTableMergeCells;
    rvActionTableSplitCells1: TrvActionTableSplitCells;
    rvActionTableSelectTable1: TrvActionTableSelectTable;
    rvActionTableSelectRows1: TrvActionTableSelectRows;
    rvActionTableSelectCols1: TrvActionTableSelectCols;
    rvActionTableSelectCell1: TrvActionTableSelectCell;
    rvActionTableCellVAlignTop1: TrvActionTableCellVAlignTop;
    rvActionTableCellVAlignMiddle1: TrvActionTableCellVAlignMiddle;
    rvActionTableCellVAlignBottom1: TrvActionTableCellVAlignBottom;
    rvActionTableCellVAlignDefault1: TrvActionTableCellVAlignDefault;
    rvActionTableCellLeftBorder1: TrvActionTableCellLeftBorder;
    rvActionTableCellRightBorder1: TrvActionTableCellRightBorder;
    rvActionTableCellTopBorder1: TrvActionTableCellTopBorder;
    rvActionTableCellBottomBorder1: TrvActionTableCellBottomBorder;
    rvActionTableCellAllBorders1: TrvActionTableCellAllBorders;
    rvActionTableCellNoBorders1: TrvActionTableCellNoBorders;
    rvActionTableProperties1: TrvActionTableProperties;
    rvActionTableGrid1: TrvActionTableGrid;
    actSelectInTable: TAction;
    actAlignCell: TAction;
    rvActionColor1: TrvActionColor;
    rvActionBackground1: TrvActionBackground;
    rvActionFillColor1: TrvActionFillColor;
    rvActionInsertPageBreak1: TrvActionInsertPageBreak;
    rvActionRemovePageBreak1: TrvActionRemovePageBreak;
    rvActionRemoveHyperlinks1: TrvActionRemoveHyperlinks;
    rvActionItemProperties1: TrvActionItemProperties;
    rvActionVAlign1: TrvActionVAlign;
    rvActionCharCase1: TrvActionCharCase;
    RVAPopupActionBar1: TRVAPopupActionBar;
    rvActionHide1: TrvActionHide;
    ilGlyphs16: TImageList;
    ilGlyphs32: TImageList;
    ilBW32: TImageList;
    ilBW16: TImageList;
    rvActionTableCellRotationNone1: TrvActionTableCellRotationNone;
    rvActionTableCellRotation901: TrvActionTableCellRotation90;
    rvActionTableCellRotation1801: TrvActionTableCellRotation180;
    rvActionTableCellRotation2701: TrvActionTableCellRotation270;
    actRotateCell: TAction;
    rvActionTableSplit1: TrvActionTableSplit;
    rvActionTableToText1: TrvActionTableToText;
    rvActionTableSort1: TrvActionTableSort;
    rvActionStyleTemplates1: TrvActionStyleTemplates;
    rvActionAddStyleTemplate1: TrvActionAddStyleTemplate;
    rvActionClearFormat1: TrvActionClearFormat;
    rvActionClearTextFormat1: TrvActionClearTextFormat;
    rvActionStyleInspector1: TrvActionStyleInspector;
    RVRulerItemSelector1: TRVRulerItemSelector;
    RVRuler2: TRVRuler;
    dxRibbonHomeTab: TdxRibbonTab;
    dxRibbon: TdxRibbon;
    dxRibbonAdvancedTab: TdxRibbonTab;
    dxRibbonTableTab: TdxRibbonTab;
    dxBarManager: TdxBarManager;
    dxRibbonMiniToolbar: TdxRibbonMiniToolbar;
    RibbonQuickAccess: TdxBar;
    dxQuickAccessBarQuickPrintButton: TdxBarButton;
    dxQuickAccessBarPrintButton: TdxBarButton;
    dxQuickAccessBarrintPreviewButton: TdxBarButton;
    dxQuickAccessBarPageSetupButton: TdxBarButton;
    dxQuickAccessBarSaveButton: TdxBarButton;
    dxQuickAccessBarUndoButton: TdxBarButton;
    dxQuickAccessBarRedoButton: TdxBarButton;
    dxBarManagerClipboardBar: TdxBar;
    dxBarSubItemPaste: TdxBarSubItem;
    dxBarButtonPasteAsText: TdxBarButton;
    dxBarButtonPasteAsSpecial: TdxBarButton;
    cxStyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxBarButtonCut: TdxBarButton;
    dxBarButtonCopy: TdxBarButton;
    dxBarButtonSelectAll: TdxBarButton;
    dxBarManagerBarFont: TdxBar;
    dxBarManagerBarParagraph: TdxBar;
    dxBarManagerBarList: TdxBar;
    dxBarManagerBarStyles: TdxBar;
    dxBarManagerBarEditing: TdxBar;
    dxBarManagerBarFile: TdxBar;
    dxBarManagerBarPrint: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarManagerBar1: TdxBar;
    dxBarManagerBar2: TdxBar;
    dxBarManagerBar3: TdxBar;
    dxBarManagerBar4: TdxBar;
    dxBarManagerBar5: TdxBar;
    dxBarManagerBar6: TdxBar;
    dxBarManagerBar7: TdxBar;
    dxBarManagerBar8: TdxBar;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarContainerItem1: TdxBarContainerItem;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton66: TdxBarButton;
    dxBarButton67: TdxBarButton;
    dxBarButton68: TdxBarButton;
    dxBarButton69: TdxBarButton;
    cmbUnits: TdxBarCombo;
    dxBarContainerItem2: TdxBarContainerItem;
    dxBarInPlaceSubItem1: TdxBarInPlaceSubItem;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    dxBarControlContainerItem3: TdxBarControlContainerItem;
    dxBarButton70: TdxBarButton;
    dxBarButton71: TdxBarButton;
    dxBarButton72: TdxBarButton;
    dxBarButton73: TdxBarButton;
    dxBarButton74: TdxBarButton;
    dxBarButton75: TdxBarButton;
    dxBarButton76: TdxBarButton;
    dxBarButton77: TdxBarButton;
    dxBarButton78: TdxBarButton;
    dxBarButton79: TdxBarButton;
    dxBarButton80: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton81: TdxBarButton;
    dxBarButton82: TdxBarButton;
    dxBarButton83: TdxBarButton;
    dxBarButton84: TdxBarButton;
    dxBarControlContainerItem4: TdxBarControlContainerItem;
    dxBarControlContainerItem5: TdxBarControlContainerItem;
    dxBarControlContainerItem6: TdxBarControlContainerItem;
    dxBarControlContainerItem7: TdxBarControlContainerItem;
    dxBarButton85: TdxBarButton;
    dxBarButton86: TdxBarButton;
    dxBarButton87: TdxBarButton;
    dxBarButton88: TdxBarButton;
    dxBarButton89: TdxBarButton;
    dxBarContainerItem3: TdxBarContainerItem;
    dxBarControlContainerItem8: TdxBarControlContainerItem;
    dxBarControlContainerItem9: TdxBarControlContainerItem;
    dxBarControlContainerItem10: TdxBarControlContainerItem;
    cxGroupBox1: TcxGroupBox;
    cmbFont: TRVFontComboBox;
    cmbFontSize: TRVFontSizeComboBox;
    cmbStyles: TRVStyleTemplateComboBox;
    dxBarButton90: TdxBarButton;
    dxBarButton91: TdxBarButton;
    dxBarButton92: TdxBarButton;
    dxBarButton93: TdxBarButton;
    dxBarButton94: TdxBarButton;
    dxBarButton95: TdxBarButton;
    dxBarButton96: TdxBarButton;
    dxBarButton97: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RichViewEdit1Jump(Sender: TObject; id: Integer);
    procedure RichViewEdit1ReadHyperlink(Sender: TCustomRichView;
      const Target, Extras: String; DocFormat: TRVLoadFormat;
      var StyleNo: Integer; var ItemTag: TRVTag; var ItemName: TRVRawByteString);
    procedure RVAControlPanel1MarginsChanged(Sender: TrvAction;
      Edit: TCustomRichViewEdit);
    procedure RVAControlPanel1Download(Sender: TrvAction;
      const Source: String);
    procedure RichViewEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RichViewEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ribbon1HelpButtonClick(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure actLanguageExecute(Sender: TObject);
    procedure rvActionInsertTable1Execute(Sender: TObject);
    procedure Ribbon1RecentItemClick(Sender: TObject; FileName: string;
      Index: Integer);
    procedure rvActionSave1DocumentFileChange(Sender: TObject;
      Editor: TCustomRichViewEdit; const FileName: string;
      FileFormat: TrvFileSaveFilter; IsNew: Boolean);
    procedure cmbUnits2Click(Sender: TObject);
    procedure RichViewEdit1Progress(Sender: TCustomRichView;
      Operation: TRVLongOperation; Stage: TRVProgressStage; PercentDone: Byte);
    procedure RVPrint1SendingToPrinter(Sender: TCustomRichView;
      PageCompleted: Integer; Step: TRVPrintingStep);
    procedure rvActionStyleInspector1Showing(Sender: TrvAction; Form: TForm);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rvActionPaste1Execute(Sender: TObject);
    procedure dxBarManagerBarFontCaptionButtons0Click(Sender: TObject);
    procedure dxBarManagerBarParagraphCaptionButtons0Click(
      Sender: TObject);
    procedure dxBarManagerBarListCaptionButtons0Click(Sender: TObject);
    procedure dxBarManagerBar2CaptionButtons0Click(Sender: TObject);
    procedure dxBarManagerBar3CaptionButtons0Click(Sender: TObject);
  private
    { Private declarations }
    procedure Localize;
  public
    function LoadFile(const AFileName: string):boolean;

  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

function GetFullFileName(const FileName: String): String;
begin
  Result := ExtractFilePath(Application.ExeName)+FileName;
  if FileExists(Result) then
    exit;
  Result := ExtractFilePath(Application.ExeName)+'..\'+FileName;
  if FileExists(Result) then
    exit;
  Result := ExtractFilePath(Application.ExeName)+'..\..\'+FileName;
  if FileExists(Result) then
    exit;
  Result := '';
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var FileName: String;
l: DWORD;
begin
  l := GetWindowLong(Self.Handle, GWL_STYLE);
  l := l and not(WS_MINIMIZEBOX);
  l := l and not(WS_MAXIMIZEBOX);
  l := SetWindowLong(Self.Handle, GWL_STYLE, l);

  cmbFont.Font.Name := RVAControlPanel1.DialogFontName;
  cmbFontSize.Font.Name := RVAControlPanel1.DialogFontName;
//  cmbUnits.Font.Name := RVAControlPanel1.DialogFontName;
  cmbStyles.Font.Name := RVAControlPanel1.DialogFontName;

  // linking the style inspector to RichViewEdit1
  rvActionStyleInspector1.Control := RichViewEdit1;

  // Displaying inits of measurement
  cmbUnits.ItemIndex := ord(RVAControlPanel1.UnitsDisplay);

  // Localizing this form
  Localize;

  // The ruler initialization might set Modify flag, clearing it
  RichViewEdit1.Modified := False;
  // Loading initial file via ActionOpen
  FileName := GetFullFileName('Untitled.rtf');
  if FileName<>'' then
    rvActionOpen1.LoadFile(RichViewEdit1, FileName, ffiRTF)
  else
    rvActionNew1.ExecuteTarget(RichViewEdit1);

  // Enabling additional actions from ActionList1
  actTextSize.DisableIfNoHandler := False;
  actTextFlow.DisableIfNoHandler := False;
  actLineSpacing.DisableIfNoHandler := False;
  actSelectInTable.DisableIfNoHandler := False;
  actAlignCell.DisableIfNoHandler := False;
  actRotateCell.DisableIfNoHandler := False;

//  Application.HintPause := 700;

//  SetRulerColors(RVRuler1, Ribbon1.ColorMap as TCustomRibbonColorMap);
//  SetRulerColors(RVRuler2, Ribbon1.ColorMap as TCustomRibbonColorMap);
end;


{------------------- Working with document ------------------------------------}

// When document is created, saved, loaded...
procedure TfrmMain.rvActionSave1DocumentFileChange(Sender: TObject;
  Editor: TCustomRichViewEdit; const FileName: string;
  FileFormat: TrvFileSaveFilter; IsNew: Boolean);
var s: String;
    Index: Integer;
begin
  s := ExtractFileName(FileName);
  rvActionPrint1.Title := s;
  rvActionQuickPrint1.Title := s;
  if IsNew then
    s := s+' (*)';
{  Ribbon1.DocumentName := s;
  if not IsNew then begin
    Index := Ribbon1.AddRecentItem(FileName);
    if Index>=0 then
      Ribbon1.ApplicationMenu.Menu.RecentItems[Index].Tag := ord(FileFormat);
  end;
}
end;

// Open a file from the recent list
procedure TfrmMain.Ribbon1RecentItemClick(Sender: TObject; FileName: string;
  Index: Integer);
var i: Integer;
begin
{  Index := 0;
  for i := 0 to Ribbon1.ApplicationMenu.Menu.RecentItems.Count-1 do
    if CompareText(Ribbon1.ApplicationMenu.Menu.RecentItems[i].Caption, FileName)=0 then begin
      Index := i;
      break;
    end;
  rvActionOpen1.LoadFile(RichViewEdit1, FileName,
    TrvFileOpenFilter(Ribbon1.ApplicationMenu.Menu.RecentItems[Index].Tag));
}
end;
// Prompt for saving...
procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := rvActionSave1.CanCloseDoc(RichViewEdit1);
end;
{-------------- Set of events for processing hypertext jumps ------------------}

// Hyperlink click
procedure TfrmMain.RichViewEdit1Jump(Sender: TObject; id: Integer);
begin
  rvActionInsertHyperlink1.GoToLink(RichViewEdit1, id);
end;

// Importing hyperlink from RTF
procedure TfrmMain.RichViewEdit1ReadHyperlink(Sender: TCustomRichView;
  const Target, Extras: String; DocFormat: TRVLoadFormat;
  var StyleNo: Integer; var ItemTag: TRVTag; var ItemName: TRVRawByteString);
begin
  if DocFormat=rvlfURL then
    StyleNo :=
      rvActionInsertHyperlink1.GetHyperlinkStyleNo(RichViewEdit1);
  //ItemTag := rvActionInsertHyperlink1.EncodeTarget(Target);
end;

// URL detection on typing
procedure TfrmMain.RichViewEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {
  // uncomment if you use Addict3
  if Key = VK_RETURN then
    RVA_Addict3AutoCorrect(RichViewEdit1);
  }
  if (Key=VK_RETURN) then begin
    rvActionInsertHyperlink1.DetectURL(RichViewEdit1);
    rvActionInsertHyperlink1.TerminateHyperlink(RichViewEdit1);
  end;
end;

procedure TfrmMain.RichViewEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  {
  // uncomment if you use Addict3
  if (Key in ['''', #13, #9]) or (Pos(Key, RichViewEdit1.Delimiters)<>0) then
    RVA_Addict3AutoCorrect(RichViewEdit1);
  }
  if CharInSet(Key, [#9, ' ', ',', ';']) then begin
    rvActionInsertHyperlink1.DetectURL(RichViewEdit1);
    rvActionInsertHyperlink1.TerminateHyperlink(RichViewEdit1);
  end;
end;


procedure TfrmMain.cmbUnits2Click(Sender: TObject);
begin
// --- 1. Units displayed to the user
  // units for displaying in dialogs
  RVAControlPanel1.UnitsDisplay := TRVUnits(cmbUnits.ItemIndex);
  // units for displaying in the ruler
  RVRuler1.UnitsDisplay := TRulerUnits(cmbUnits.ItemIndex);
  RVRuler2.UnitsDisplay := TRulerUnits(cmbUnits.ItemIndex);
  // units for page setup dialog
  if RVAControlPanel1.UnitsDisplay in [rvuPixels, rvuCentimeters, rvuMillimeters] then
    rvActionPageSetup1.MarginsUnits := rvpmuMillimeters
  else
    rvActionPageSetup1.MarginsUnits := rvpmuInches;
// --- 2. units for internal measurement
  // units of measurement for RichViewActions
  if RVAControlPanel1.UnitsDisplay=rvuPixels then begin
    RVA_ConvertToPixels(Self);
    RVAControlPanel1.UnitsProgram := rvstuPixels;
    end
  else begin
    RVA_ConvertToTwips(Self);
    RVAControlPanel1.UnitsProgram := rvstuTwips;
  end;
  // units of measurement for the current document
  if RVStyle1.Units<>RVAControlPanel1.UnitsProgram then begin
    RichViewEdit1.ConvertDocToDifferentUnits(RVAControlPanel1.UnitsProgram);
    RVStyle1.ConvertToDifferentUnits(RVAControlPanel1.UnitsProgram);
    RichViewEdit1.Change;
  end;

  if RVRuler1.UnitsDisplay <> TRulerUnits(cmbUnits.ItemIndex) then RichViewEdit1.SetFocus;
end;

procedure TfrmMain.dxBarManagerBar2CaptionButtons0Click(Sender: TObject);
begin
  rvActionBackground1.Execute;
end;

procedure TfrmMain.dxBarManagerBar3CaptionButtons0Click(Sender: TObject);
begin
  rvActionPageSetup1.Execute;
end;

procedure TfrmMain.dxBarManagerBarFontCaptionButtons0Click(
  Sender: TObject);
begin
  rvActionFontEx1.Execute;
end;

procedure TfrmMain.dxBarManagerBarListCaptionButtons0Click(
  Sender: TObject);
begin
  rvActionParaList1.Execute;
end;

procedure TfrmMain.dxBarManagerBarParagraphCaptionButtons0Click(
  Sender: TObject);
begin
  rvActionParagraph1.Execute;
end;

{---------------------------- Ruler ------------------------------------}

procedure TfrmMain.RVAControlPanel1MarginsChanged(Sender: TrvAction;
  Edit: TCustomRichViewEdit);
begin
  RVRuler1.UpdateRulerMargins;
end;

{---------------------------- Localization ------------------------------------}

procedure TfrmMain.actLanguageExecute(Sender: TObject);
begin
  if RVA_ChooseLanguage then
    Localize;
end;

function TfrmMain.LoadFile(const AFileName: string): boolean;
begin
 rvActionOpen1.LoadFile(RichViewEdit1, AFileName, ffiRTF);
end;

procedure TfrmMain.Localize;
var i: Integer;
begin
  // Localizing all actions on this form
  RVA_LocalizeForm(Self);
  // Assigning alternative captions
  rvActionQuickPrint1.Caption := RVA_GetS(rvam_act_QuickPrint2);
  rvActionInsertTable1.Caption := RVA_GetS(rvam_act_InsertTable2);
  // Localizing ruler
  RVALocalizeRuler(RVRuler1);
  // Units
  i := cmbUnits.ItemIndex;
  RVA_TranslateUnits(cmbUnits.Items);
  cmbUnits.ItemIndex := i;
  //ribgOptions.Items[0].Caption := RVA_GetS(rvam_lbl_Units);
  // Styles
  rvActionStyleInspector1.UpdateInfo;
  cmbStyles.Localize;
  // Localizing ribbon
{  LocalizeRibbonPage(ribHome, rvam_ribt_MainTab1);
  LocalizeRibbonPage(ribAdvanced, rvam_ribt_MainTab2);
  LocalizeRibbonPage(ribTable, rvam_ribt_Table);
  ribgClipboard.Caption := RVA_GetS(rvam_ribg_Clipboard);
  ribgFont.Caption := RVA_GetS(rvam_ribg_Font);
  ribgParagraph.Caption := RVA_GetS(rvam_ribg_Paragraph);
  ribgStyles.Caption := RVA_GetS(rvam_ribg_Styles);
  ribgList.Caption := RVA_GetS(rvam_ribg_List);
  ribgEditing.Caption := RVA_GetS(rvam_ribg_Edit);
  ribgInsert.Caption := RVA_GetS(rvam_ribg_Insert);
  ribgBackground.Caption := RVA_GetS(rvam_ribg_Background);
  ribgPageSetup.Caption := RVA_GetS(rvam_ribg_PageLayout);
  ribgOptions.Caption := RVA_GetS(rvam_ribg_Options);
  ribgTableInsert.Caption := RVA_GetS(rvam_ribg_TableInsert);
  ribgTableDelete.Caption := RVA_GetS(rvam_ribg_TableDelete);
  ribgTableOperations.Caption := RVA_GetS(rvam_ribg_TableOperations);
  ribgTableBorders.Caption := RVA_GetS(rvam_ribg_TableBorders);}
  ActionManager1.ActionBars[2].Items[0].Items[3].Items[0].Caption := RVA_GetS(rvam_rib_SaveAsTitle);
  ActionManager1.ActionBars[2].Items[0].Items[4].Items[0].Caption := RVA_GetS(rvam_rib_PrintTitle);
//  Ribbon1.ApplicationMenu.Caption := RVA_GetS(rvam_rib_RecentFiles);
  ScreenTipsManager1.Footer := RVA_GetS(rvam_rib_ScreenTipFooter);

  // Localizing menus (not all menus in this demo are translated)
  actTextSize.Caption := RVA_GetS(rvam_menu_FontSize);
  actLineSpacing.Caption := '';
  actTextFlow.Caption := RVA_GetS(rvam_menu_TextFlow);
  actExit.Caption := RVA_GetS(rvam_menu_Exit);
  actSelectInTable.Caption := RVA_GetS(rvam_menu_TableSelect);
  actAlignCell.Caption := RVA_GetS(rvam_menu_TableCellAlign);
  actRotateCell.Caption := RVA_GetS(rvam_menu_TableCellRotation);

  {
  // uncomment if you use Addict3. It's assumed that RVAddictSpell31
  // and RVThesaurus31 are on this form.
  RVAddictSpell31.UILanguage := GetAddictSpellLanguage(RVA_GetLanguageName);
  RVThesaurus31.UILanguage := GetAddictThesLanguage(RVA_GetLanguageName);
  }
  FillActionClientContents(ActionManager1);
  RemoveEllipsis(Self);
  ScreenTipsManager1.ScreenTips.Clear;
  ScreenTipsManager1.GenerateScreenTips;
end;

{-------------------- Progress messages ---------------------------------------}
// Downloading images referred in RTF or HTML (when Indy or CleverComponents are used)
procedure TfrmMain.RVAControlPanel1Download(Sender: TrvAction;
  const Source: String);
begin
  if Source='' then
    Application.Hint := ''
  else
    Application.Hint := RVAFormat(RVA_GetS(rvam_msg_Downloading), [Source]);
end;
// Reading or writing
procedure TfrmMain.RichViewEdit1Progress(Sender: TCustomRichView;
  Operation: TRVLongOperation; Stage: TRVProgressStage; PercentDone: Byte);
begin
  case Stage of
    rvpstgStarting:
      begin
      end;
    rvpstgRunning:
      begin
      end;
    rvpstgEnding:
      begin
      end;
  end;
end;
// Printing
procedure TfrmMain.RVPrint1SendingToPrinter(Sender: TCustomRichView;
  PageCompleted: Integer; Step: TRVPrintingStep);
begin
  Application.Hint := RVA_GetPrintingMessage(PageCompleted, Step);
end;
{-------------------------------- Misc. ---------------------------------------}
// Exiting
procedure TfrmMain.actExitExecute(Sender: TObject);
begin
  Close;
end;
// Showing table inserting widget instead of dialog
procedure TfrmMain.rvActionInsertTable1Execute(Sender: TObject);
begin
  rvActionInsertTable1.ShowTableSizeDialog(RichViewEdit1,
    RVRulerItemSelector1 as TControl);
end;

procedure TfrmMain.rvActionPaste1Execute(Sender: TObject);
begin

end;

// Showing help
procedure TfrmMain.Ribbon1HelpButtonClick(Sender: TObject);
var HelpFileName: String;
begin
  HelpFileName := ExtractFilePath(Application.ExeName)+'\Notar.chm';
  RvHtmlHelp(HelpFileName);
end;
{-------------------------- Styles-Templates ----------------------------------}

// Placing the style inspector window in the main form
procedure TfrmMain.rvActionStyleInspector1Showing(Sender: TrvAction;
  Form: TForm);
begin
  Form.Align := alRight;
  Form.Parent := Self;
end;

{---------------------- Live spelling with Addict 3 ---------------------------}
(*
// Add these events if you use Addict3
// (Assuming that you have RVAddictSpell31: TRVAddictSpell3 on the form)

// RichViewEdit1.OnSpellingCheck event
procedure TForm3.RichViewEdit1SpellingCheck(Sender: TCustomRichView;
  const AWord: String; StyleNo: Integer; var Misspelled: Boolean);
begin
  Misspelled := not RVAddictSpell31.WordAcceptable(AWord);
end;

// RVAddictSpell31.OnParserIgnoreWord: if Ignore All or Add buttons were pressed
// in spellchecker dialog, removing underlines from the ignored word
procedure TForm3.RVAddictSpell31ParserIgnoreWord(Sender: TObject;
  Before: Boolean; State: Integer);
begin
  if not Before and (State in [IgnoreState_IgnoreAll, IgnoreState_Add]) then
    RichViewEdit1.LiveSpellingValidateWord(RVAddictSpell31.CurrentWord);
end;

// Besides, if you want spelling check starting when loading document, call
// RichViewEdit1.StartLiveSpelling in rvActionFileOpen.OnOpenFile event
*)


initialization

  RegisterClass(TGifImage);
  RVGraphicHandler.RegisterHTMLGraphicFormat(TGifImage);

end.