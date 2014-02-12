unit ufmNotaries;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uRemoteDM,
  ufmMain, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2007Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  FIBDataSet, pFIBDataSet, Vcl.Menus;

type
  TfmNotaries = class(TForm)
    cxNotariesGridDBTableView1: TcxGridDBTableView;
    cxNotariesGridLevel1: TcxGridLevel;
    cxNotariesGrid: TcxGrid;
    NotariesDataSet: TpFIBDataSet;
    NotariesDataSource: TDataSource;
    NotariesDataSetID: TFIBBCDField;
    NotariesDataSetNAME: TFIBWideStringField;
    NotariesDataSetSURNAME: TFIBWideStringField;
    NotariesDataSetMIDDLE: TFIBWideStringField;
    NotariesDataSetCOUNTY: TFIBWideStringField;
    NotariesDataSetGENDER: TFIBBCDField;
    NotariesDataSetADDRESS_STATE: TFIBWideStringField;
    NotariesDataSetADDRESS_REGION: TFIBWideStringField;
    NotariesDataSetADDRESS_LOCALITY_TYPE: TFIBWideStringField;
    NotariesDataSetADDRESS_LOCALITY: TFIBWideStringField;
    NotariesDataSetADDRESS_STREET_TYPE: TFIBWideStringField;
    NotariesDataSetADDRESS_STREET: TFIBWideStringField;
    NotariesDataSetADDRESS_BUILDING: TFIBWideStringField;
    NotariesDataSetADDRESS_FLAT: TFIBWideStringField;
    NotariesDataSetADDRESS_CORPS: TFIBWideStringField;
    NotariesDataSetADDRESS_SECTION: TFIBWideStringField;
    NotariesDataSetADDRESS_INDEX: TFIBWideStringField;
    NotariesDataSetADDRESS_OTHER: TFIBWideStringField;
    NotariesDataSetSURNAME_CASE_NOMINATIVE: TFIBWideStringField;
    NotariesDataSetSURNAME_CASE_GENITIVE: TFIBWideStringField;
    NotariesDataSetSURNAME_CASE_DATIVE: TFIBWideStringField;
    NotariesDataSetSURNAME_CASE_ACCUSATIVE: TFIBWideStringField;
    NotariesDataSetSURNAME_CASE_ABLATIVE: TFIBWideStringField;
    NotariesDataSetSURNAME_CASE_LOCATIVE: TFIBWideStringField;
    NotariesDataSetSURNAME_CASE_VOCATIVE: TFIBWideStringField;
    NotariesDataSetNAME_CASE_NOMINATIVE: TFIBWideStringField;
    NotariesDataSetNAME_CASE_GENITIVE: TFIBWideStringField;
    NotariesDataSetNAME_CASE_DATIVE: TFIBWideStringField;
    NotariesDataSetNAME_CASE_ACCUSATIVE: TFIBWideStringField;
    NotariesDataSetNAME_CASE_ABLATIVE: TFIBWideStringField;
    NotariesDataSetNAME_CASE_LOCATIVE: TFIBWideStringField;
    NotariesDataSetNAME_CASE_VOCATIVE: TFIBWideStringField;
    NotariesDataSetNAME_CASE_ABBREVIATION: TFIBWideStringField;
    NotariesDataSetMIDDLE_CASE_NOMINATIVE: TFIBWideStringField;
    NotariesDataSetMIDDLE_CASE_GENITIVE: TFIBWideStringField;
    NotariesDataSetMIDDLE_CASE_DATIVE: TFIBWideStringField;
    NotariesDataSetMIDDLE_CASE_ACCUSATIVE: TFIBWideStringField;
    NotariesDataSetMIDDLE_CASE_ABLATIVE: TFIBWideStringField;
    NotariesDataSetMIDDLE_CASE_LOCATIVE: TFIBWideStringField;
    NotariesDataSetMIDDLE_CASE_VOCATIVE: TFIBWideStringField;
    NotariesDataSetMIDDLE_CASE_ABBREVIATION: TFIBWideStringField;
    cxNotariesGridDBTableView1ID: TcxGridDBColumn;
    cxNotariesGridDBTableView1NAME: TcxGridDBColumn;
    cxNotariesGridDBTableView1SURNAME: TcxGridDBColumn;
    cxNotariesGridDBTableView1MIDDLE: TcxGridDBColumn;
    cxNotariesGridDBTableView1COUNTY: TcxGridDBColumn;
    cxNotariesGridDBTableView1GENDER: TcxGridDBColumn;
    cxNotariesGridDBTableView1ADDRESS_STATE: TcxGridDBColumn;
    cxNotariesGridDBTableView1ADDRESS_REGION: TcxGridDBColumn;
    cxNotariesGridDBTableView1ADDRESS_LOCALITY_TYPE: TcxGridDBColumn;
    cxNotariesGridDBTableView1ADDRESS_LOCALITY: TcxGridDBColumn;
    cxNotariesGridDBTableView1ADDRESS_STREET_TYPE: TcxGridDBColumn;
    cxNotariesGridDBTableView1ADDRESS_STREET: TcxGridDBColumn;
    cxNotariesGridDBTableView1ADDRESS_BUILDING: TcxGridDBColumn;
    cxNotariesGridDBTableView1ADDRESS_FLAT: TcxGridDBColumn;
    cxNotariesGridDBTableView1ADDRESS_CORPS: TcxGridDBColumn;
    cxNotariesGridDBTableView1ADDRESS_SECTION: TcxGridDBColumn;
    cxNotariesGridDBTableView1ADDRESS_INDEX: TcxGridDBColumn;
    cxNotariesGridDBTableView1ADDRESS_OTHER: TcxGridDBColumn;
    cxNotariesGridDBTableView1SURNAME_CASE_NOMINATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1SURNAME_CASE_GENITIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1SURNAME_CASE_DATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1SURNAME_CASE_ACCUSATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1SURNAME_CASE_ABLATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1SURNAME_CASE_LOCATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1SURNAME_CASE_VOCATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1NAME_CASE_NOMINATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1NAME_CASE_GENITIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1NAME_CASE_DATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1NAME_CASE_ACCUSATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1NAME_CASE_ABLATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1NAME_CASE_LOCATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1NAME_CASE_VOCATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1NAME_CASE_ABBREVIATION: TcxGridDBColumn;
    cxNotariesGridDBTableView1MIDDLE_CASE_NOMINATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1MIDDLE_CASE_GENITIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1MIDDLE_CASE_DATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1MIDDLE_CASE_ACCUSATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1MIDDLE_CASE_ABLATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1MIDDLE_CASE_LOCATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1MIDDLE_CASE_VOCATIVE: TcxGridDBColumn;
    cxNotariesGridDBTableView1MIDDLE_CASE_ABBREVIATION: TcxGridDBColumn;
    NotariesPopupMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmNotaries: TfmNotaries;

implementation
uses ufmNotary;
{$R *.dfm}

procedure TfmNotaries.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmNotaries.FormCreate(Sender: TObject);
begin
  RemoteDataModule.registerDataSet(NotariesDataSet);
end;

procedure TfmNotaries.FormDestroy(Sender: TObject);
begin
  RemoteDataModule.unregisterDataSet(NotariesDataSet);
end;

procedure TfmNotaries.N1Click(Sender: TObject);
begin
  with TfmNotary.Create(Application.MainForm) do
  begin
    appendNotary;
    Show;
  end;
end;

procedure TfmNotaries.N2Click(Sender: TObject);
begin
  with TfmNotary.Create(Application.MainForm) do
  begin
    editNotary(NotariesDataSetID.AsInt64);
    Show;
  end;
end;

initialization
  RegisterClass(TfmNotaries);

end.
