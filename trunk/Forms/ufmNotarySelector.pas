unit ufmNotarySelector;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufmMain, uUtils, uRemoteDM, uTypes,
  dxBevel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet, cxMemo,
  cxTextEdit, cxCalendar, cxCheckBox;

type
  TfmNotarySelector = class(TForm)
    dxBevel1: TdxBevel;
    NotaryGridDBTableView1: TcxGridDBTableView;
    NotaryGridLevel1: TcxGridLevel;
    NotaryGrid: TcxGrid;
    NotaryDataSet: TpFIBDataSet;
    NotaryDataSource: TDataSource;
    NotaryGridDBTableView1ID: TcxGridDBColumn;
    NotaryGridDBTableView1SURNAME: TcxGridDBColumn;
    NotaryGridDBTableView1NAME: TcxGridDBColumn;
    NotaryGridDBTableView1MIDDLE: TcxGridDBColumn;
    NotaryGridDBTableView1ADDRESS_STATE: TcxGridDBColumn;
    NotaryGridDBTableView1ADDRESS_REGION: TcxGridDBColumn;
    NotaryGridDBTableView1ADDRESS_LOCALITY_TYPE: TcxGridDBColumn;
    NotaryGridDBTableView1ADDRESS_LOCALITY: TcxGridDBColumn;
    NotaryGridDBTableView1ADDRESS_STREET_TYPE: TcxGridDBColumn;
    NotaryGridDBTableView1ADDRESS_STREET: TcxGridDBColumn;
    NotaryGridDBTableView1ADDRESS_BUILDING: TcxGridDBColumn;
    NotaryGridDBTableView1ADDRESS_FLAT: TcxGridDBColumn;
    NotaryGridDBTableView1ADDRESS_CORPS: TcxGridDBColumn;
    NotaryGridDBTableView1ADDRESS_SECTION: TcxGridDBColumn;
    NotaryGridDBTableView1ADDRESS_INDEX: TcxGridDBColumn;
    NotaryGridDBTableView1ADDRESS_OTHER: TcxGridDBColumn;
    NotarySelectorCustomizeGridPopupMenu: TPopupMenu;
    IndividualSelectorCustomizeGridMenuItem: TMenuItem;
    CancelButton: TcxButton;
    OkButton: TcxButton;
    NotaryDataSetID: TFIBBCDField;
    NotaryDataSetNAME: TFIBWideStringField;
    NotaryDataSetSURNAME: TFIBWideStringField;
    NotaryDataSetMIDDLE: TFIBWideStringField;
    NotaryDataSetCOUNTY: TFIBWideStringField;
    NotaryDataSetGENDER: TFIBBCDField;
    NotaryDataSetADDRESS_STATE: TFIBWideStringField;
    NotaryDataSetADDRESS_REGION: TFIBWideStringField;
    NotaryDataSetADDRESS_LOCALITY_TYPE: TFIBWideStringField;
    NotaryDataSetADDRESS_LOCALITY: TFIBWideStringField;
    NotaryDataSetADDRESS_STREET_TYPE: TFIBWideStringField;
    NotaryDataSetADDRESS_STREET: TFIBWideStringField;
    NotaryDataSetADDRESS_BUILDING: TFIBWideStringField;
    NotaryDataSetADDRESS_FLAT: TFIBWideStringField;
    NotaryDataSetADDRESS_CORPS: TFIBWideStringField;
    NotaryDataSetADDRESS_SECTION: TFIBWideStringField;
    NotaryDataSetADDRESS_INDEX: TFIBWideStringField;
    NotaryDataSetADDRESS_OTHER: TFIBWideStringField;
    NotaryGridDBTableView1COUNTY: TcxGridDBColumn;
    NotaryGridDBTableView1GENDER: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancelButtonClick(Sender: TObject);
    procedure OkButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NotaryGridDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    FSelectorCallback: TCatalogSelectorCallback;
  public
    procedure registerSelectorCallback(ACallback: TCatalogSelectorCallback);
  end;

var
  fmNotarySelector: TfmNotarySelector;

implementation

{$R *.dfm}

procedure TfmNotarySelector.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfmNotarySelector.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmNotarySelector.FormCreate(Sender: TObject);
begin
  FSelectorCallback := nil;
end;

procedure TfmNotarySelector.NotaryGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  OkButtonClick(Sender);
end;

procedure TfmNotarySelector.OkButtonClick(Sender: TObject);
begin
  if Assigned(FSelectorCallback) then FSelectorCallback(NotaryDataSetID.Value);
  Close;
end;

procedure TfmNotarySelector.registerSelectorCallback(ACallback: TCatalogSelectorCallback);
begin
  FSelectorCallback := ACallback;
end;

end.
