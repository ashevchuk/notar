unit ufmIndividuals;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uRemoteDM,
  ufmMain,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2007Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  FIBDataSet, pFIBDataSet, Vcl.Menus;

type
  TfmIndividuals = class(TForm)
    cxIndividualsGridDBTableView1: TcxGridDBTableView;
    cxIndividualsGridLevel1: TcxGridLevel;
    cxIndividualsGrid: TcxGrid;
    IndividualsDataSet: TpFIBDataSet;
    IndividualsDataSource: TDataSource;
    IndividualsDataSetID: TFIBBCDField;
    IndividualsDataSetSURNAME: TFIBWideStringField;
    IndividualsDataSetNAME: TFIBWideStringField;
    IndividualsDataSetMIDDLE: TFIBWideStringField;
    IndividualsDataSetGENDER: TFIBSmallIntField;
    IndividualsDataSetSTATE: TFIBSmallIntField;
    IndividualsDataSetPERSONAL_DOCUMENT: TFIBSmallIntField;
    IndividualsDataSetBIRTH_DATE: TFIBDateField;
    IndividualsDataSetBIRTH_PLACE: TFIBWideStringField;
    IndividualsDataSetDISABLEMENT: TFIBSmallIntField;
    IndividualsDataSetDISABLEMENT_GROUP: TFIBWideStringField;
    IndividualsDataSetDISABLEMENT_DOCUMENT: TFIBWideStringField;
    IndividualsDataSetFOREIGN_ADDRESS_TYPE: TFIBSmallIntField;
    IndividualsDataSetFOREIGN_ADDRESS: TFIBMemoField;
    IndividualsDataSetID_NUMBER: TFIBWideStringField;
    IndividualsDataSetID_NUMBER_ABSENT: TFIBSmallIntField;
    IndividualsDataSetID_NUMBER_ABSENT_REASON: TFIBMemoField;
    IndividualsDataSetPASSPORT_SERIAL: TFIBWideStringField;
    IndividualsDataSetPASSPORT_NUMBER: TFIBWideStringField;
    IndividualsDataSetPASSPORT_ISSUE_DATE: TFIBDateField;
    IndividualsDataSetPASSPORT_ISSUER: TFIBWideStringField;
    IndividualsDataSetPASSPORT_ISSUER_DEPT: TFIBWideStringField;
    IndividualsDataSetPASSPORT_ISSUER_STATE: TFIBWideStringField;
    IndividualsDataSetPASSPORT_FOREIGN_SERIAL: TFIBWideStringField;
    IndividualsDataSetPASSPORT_FOREIGN_NUMBER: TFIBWideStringField;
    IndividualsDataSetPASSPORT_FOREIGN_ISSUE_DATE: TFIBDateField;
    IndividualsDataSetPASSPORT_FOREIGN_EXPIRATION: TFIBDateField;
    IndividualsDataSetPASSPORT_FOREIGN_ISSUER: TFIBWideStringField;
    IndividualsDataSetBIRTH_CERTIFICATE_SERIAL: TFIBWideStringField;
    IndividualsDataSetBIRTH_CERTIFICATE_NUMBER: TFIBWideStringField;
    IndividualsDataSetBIRTH_CERTIFICATE_ISSUE_DATE: TFIBDateField;
    IndividualsDataSetBIRTH_CERTIFICATE_ISSUER: TFIBWideStringField;
    IndividualsDataSetBIRTH_CERTIFICATE_ISSUER_DEPT: TFIBWideStringField;
    IndividualsDataSetBIRTH_CERTIFICATE_ISSUER_STATE: TFIBWideStringField;
    IndividualsDataSetPERSONAL_CERTIFICATE: TFIBMemoField;
    IndividualsDataSetADDRESS_STATE: TFIBWideStringField;
    IndividualsDataSetADDRESS_REGION: TFIBWideStringField;
    IndividualsDataSetADDRESS_LOCALITY_TYPE: TFIBWideStringField;
    IndividualsDataSetADDRESS_LOCALITY: TFIBWideStringField;
    IndividualsDataSetADDRESS_STREET_TYPE: TFIBWideStringField;
    IndividualsDataSetADDRESS_STREET: TFIBWideStringField;
    IndividualsDataSetADDRESS_BUILDING: TFIBWideStringField;
    IndividualsDataSetADDRESS_FLAT: TFIBWideStringField;
    IndividualsDataSetADDRESS_CORPS: TFIBWideStringField;
    IndividualsDataSetADDRESS_SECTION: TFIBWideStringField;
    IndividualsDataSetADDRESS_INDEX: TFIBWideStringField;
    IndividualsDataSetADDRESS_OTHER: TFIBWideStringField;
    IndividualsDataSetDESCRIPTION: TFIBMemoField;
    IndividualsDataSetMARRIAGE_REGISTRATOR: TFIBWideStringField;
    IndividualsDataSetMARRIAGE_REGISTERED_DATE: TFIBDateField;
    IndividualsDataSetMARRIAGE_MEMBER: TFIBWideStringField;
    IndividualsDataSetSHOW_BIRTH_DATE: TFIBSmallIntField;
    IndividualsDataSetSHOW_ADDRESS: TFIBSmallIntField;
    IndividualsDataSetSHOW_ID_NUMBER: TFIBSmallIntField;
    IndividualsDataSetSHOW_PASSPORT_DATA: TFIBSmallIntField;
    IndividualsDataSetSURNAME_CASE_NOMINATIVE: TFIBWideStringField;
    IndividualsDataSetSURNAME_CASE_GENITIVE: TFIBWideStringField;
    IndividualsDataSetSURNAME_CASE_DATIVE: TFIBWideStringField;
    IndividualsDataSetSURNAME_CASE_ACCUSATIVE: TFIBWideStringField;
    IndividualsDataSetSURNAME_CASE_ABLATIVE: TFIBWideStringField;
    IndividualsDataSetSURNAME_CASE_LOCATIVE: TFIBWideStringField;
    IndividualsDataSetSURNAME_CASE_VOCATIVE: TFIBWideStringField;
    IndividualsDataSetNAME_CASE_NOMINATIVE: TFIBWideStringField;
    IndividualsDataSetNAME_CASE_GENITIVE: TFIBWideStringField;
    IndividualsDataSetNAME_CASE_DATIVE: TFIBWideStringField;
    IndividualsDataSetNAME_CASE_ACCUSATIVE: TFIBWideStringField;
    IndividualsDataSetNAME_CASE_ABLATIVE: TFIBWideStringField;
    IndividualsDataSetNAME_CASE_LOCATIVE: TFIBWideStringField;
    IndividualsDataSetNAME_CASE_VOCATIVE: TFIBWideStringField;
    IndividualsDataSetNAME_CASE_ABBREVIATION: TFIBWideStringField;
    IndividualsDataSetMIDDLE_CASE_NOMINATIVE: TFIBWideStringField;
    IndividualsDataSetMIDDLE_CASE_GENITIVE: TFIBWideStringField;
    IndividualsDataSetMIDDLE_CASE_DATIVE: TFIBWideStringField;
    IndividualsDataSetMIDDLE_CASE_ACCUSATIVE: TFIBWideStringField;
    IndividualsDataSetMIDDLE_CASE_ABLATIVE: TFIBWideStringField;
    IndividualsDataSetMIDDLE_CASE_LOCATIVE: TFIBWideStringField;
    IndividualsDataSetMIDDLE_CASE_VOCATIVE: TFIBWideStringField;
    IndividualsDataSetMIDDLE_CASE_ABBREVIATION: TFIBWideStringField;
    cxIndividualsGridDBTableView1ID: TcxGridDBColumn;
    cxIndividualsGridDBTableView1SURNAME: TcxGridDBColumn;
    cxIndividualsGridDBTableView1NAME: TcxGridDBColumn;
    cxIndividualsGridDBTableView1MIDDLE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1GENDER: TcxGridDBColumn;
    cxIndividualsGridDBTableView1STATE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1PERSONAL_DOCUMENT: TcxGridDBColumn;
    cxIndividualsGridDBTableView1BIRTH_DATE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1BIRTH_PLACE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1DISABLEMENT: TcxGridDBColumn;
    cxIndividualsGridDBTableView1DISABLEMENT_GROUP: TcxGridDBColumn;
    cxIndividualsGridDBTableView1DISABLEMENT_DOCUMENT: TcxGridDBColumn;
    cxIndividualsGridDBTableView1FOREIGN_ADDRESS_TYPE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1FOREIGN_ADDRESS: TcxGridDBColumn;
    cxIndividualsGridDBTableView1ID_NUMBER: TcxGridDBColumn;
    cxIndividualsGridDBTableView1ID_NUMBER_ABSENT: TcxGridDBColumn;
    cxIndividualsGridDBTableView1ID_NUMBER_ABSENT_REASON: TcxGridDBColumn;
    cxIndividualsGridDBTableView1PASSPORT_SERIAL: TcxGridDBColumn;
    cxIndividualsGridDBTableView1PASSPORT_NUMBER: TcxGridDBColumn;
    cxIndividualsGridDBTableView1PASSPORT_ISSUE_DATE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1PASSPORT_ISSUER: TcxGridDBColumn;
    cxIndividualsGridDBTableView1PASSPORT_ISSUER_DEPT: TcxGridDBColumn;
    cxIndividualsGridDBTableView1PASSPORT_ISSUER_STATE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1PASSPORT_FOREIGN_SERIAL: TcxGridDBColumn;
    cxIndividualsGridDBTableView1PASSPORT_FOREIGN_NUMBER: TcxGridDBColumn;
    cxIndividualsGridDBTableView1PASSPORT_FOREIGN_ISSUE_DATE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1PASSPORT_FOREIGN_EXPIRATION: TcxGridDBColumn;
    cxIndividualsGridDBTableView1PASSPORT_FOREIGN_ISSUER: TcxGridDBColumn;
    cxIndividualsGridDBTableView1BIRTH_CERTIFICATE_SERIAL: TcxGridDBColumn;
    cxIndividualsGridDBTableView1BIRTH_CERTIFICATE_NUMBER: TcxGridDBColumn;
    cxIndividualsGridDBTableView1BIRTH_CERTIFICATE_ISSUE_DATE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1BIRTH_CERTIFICATE_ISSUER: TcxGridDBColumn;
    cxIndividualsGridDBTableView1BIRTH_CERTIFICATE_ISSUER_DEPT: TcxGridDBColumn;
    cxIndividualsGridDBTableView1BIRTH_CERTIFICATE_ISSUER_STATE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1PERSONAL_CERTIFICATE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1ADDRESS_STATE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1ADDRESS_REGION: TcxGridDBColumn;
    cxIndividualsGridDBTableView1ADDRESS_LOCALITY_TYPE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1ADDRESS_LOCALITY: TcxGridDBColumn;
    cxIndividualsGridDBTableView1ADDRESS_STREET_TYPE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1ADDRESS_STREET: TcxGridDBColumn;
    cxIndividualsGridDBTableView1ADDRESS_BUILDING: TcxGridDBColumn;
    cxIndividualsGridDBTableView1ADDRESS_FLAT: TcxGridDBColumn;
    cxIndividualsGridDBTableView1ADDRESS_CORPS: TcxGridDBColumn;
    cxIndividualsGridDBTableView1ADDRESS_SECTION: TcxGridDBColumn;
    cxIndividualsGridDBTableView1ADDRESS_INDEX: TcxGridDBColumn;
    cxIndividualsGridDBTableView1ADDRESS_OTHER: TcxGridDBColumn;
    cxIndividualsGridDBTableView1DESCRIPTION: TcxGridDBColumn;
    cxIndividualsGridDBTableView1MARRIAGE_REGISTRATOR: TcxGridDBColumn;
    cxIndividualsGridDBTableView1MARRIAGE_REGISTERED_DATE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1MARRIAGE_MEMBER: TcxGridDBColumn;
    cxIndividualsGridDBTableView1SHOW_BIRTH_DATE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1SHOW_ADDRESS: TcxGridDBColumn;
    cxIndividualsGridDBTableView1SHOW_ID_NUMBER: TcxGridDBColumn;
    cxIndividualsGridDBTableView1SHOW_PASSPORT_DATA: TcxGridDBColumn;
    cxIndividualsGridDBTableView1SURNAME_CASE_NOMINATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1SURNAME_CASE_GENITIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1SURNAME_CASE_DATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1SURNAME_CASE_ACCUSATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1SURNAME_CASE_ABLATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1SURNAME_CASE_LOCATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1SURNAME_CASE_VOCATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1NAME_CASE_NOMINATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1NAME_CASE_GENITIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1NAME_CASE_DATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1NAME_CASE_ACCUSATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1NAME_CASE_ABLATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1NAME_CASE_LOCATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1NAME_CASE_VOCATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1NAME_CASE_ABBREVIATION: TcxGridDBColumn;
    cxIndividualsGridDBTableView1MIDDLE_CASE_NOMINATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1MIDDLE_CASE_GENITIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1MIDDLE_CASE_DATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1MIDDLE_CASE_ACCUSATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1MIDDLE_CASE_ABLATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1MIDDLE_CASE_LOCATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1MIDDLE_CASE_VOCATIVE: TcxGridDBColumn;
    cxIndividualsGridDBTableView1MIDDLE_CASE_ABBREVIATION: TcxGridDBColumn;
    IndividualsPopupMenu: TPopupMenu;
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
  fmIndividuals: TfmIndividuals;

implementation
uses ufmIndividual;
{$R *.dfm}

procedure TfmIndividuals.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmIndividuals.FormCreate(Sender: TObject);
begin
  RemoteDataModule.registerDataSet(IndividualsDataSet);
end;

procedure TfmIndividuals.FormDestroy(Sender: TObject);
begin
  RemoteDataModule.unregisterDataSet(IndividualsDataSet);
end;

procedure TfmIndividuals.N1Click(Sender: TObject);
begin
  with TfmIndividual.Create(Application.MainForm) do
  begin
    appendIndividual;
    Show;
  end;
end;

procedure TfmIndividuals.N2Click(Sender: TObject);
begin
  with TfmIndividual.Create(Application.MainForm) do
  begin
    editIndividual(IndividualsDataSetID.AsInt64);
    Show;
  end;
end;

initialization
  RegisterClass(TfmIndividuals);

end.
