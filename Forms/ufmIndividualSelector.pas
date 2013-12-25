unit ufmIndividualSelector;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufmMain, uUtils, uRemoteDM, dxBevel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet, cxMemo,
  cxTextEdit, cxCalendar, cxCheckBox;

type
  TfmIndividualSelector = class(TForm)
    dxBevel1: TdxBevel;
    IndividualsGridDBTableView1: TcxGridDBTableView;
    IndividualsGridLevel1: TcxGridLevel;
    IndividualsGrid: TcxGrid;
    IndividualsDataSet: TpFIBDataSet;
    IndividualsDataSource: TDataSource;
    IndividualsGridDBTableView1ID: TcxGridDBColumn;
    IndividualsGridDBTableView1SURNAME: TcxGridDBColumn;
    IndividualsGridDBTableView1NAME: TcxGridDBColumn;
    IndividualsGridDBTableView1MIDDLE: TcxGridDBColumn;
    IndividualsGridDBTableView1GENDER: TcxGridDBColumn;
    IndividualsGridDBTableView1STATE: TcxGridDBColumn;
    IndividualsGridDBTableView1PERSONAL_DOCUMENT: TcxGridDBColumn;
    IndividualsGridDBTableView1BIRTH_DATE: TcxGridDBColumn;
    IndividualsGridDBTableView1BIRTH_PLACE: TcxGridDBColumn;
    IndividualsGridDBTableView1DISABLEMENT: TcxGridDBColumn;
    IndividualsGridDBTableView1DISABLEMENT_GROUP: TcxGridDBColumn;
    IndividualsGridDBTableView1DISABLEMENT_DOCUMENT: TcxGridDBColumn;
    IndividualsGridDBTableView1FOREIGN_ADDRESS_TYPE: TcxGridDBColumn;
    IndividualsGridDBTableView1FOREIGN_ADDRESS: TcxGridDBColumn;
    IndividualsGridDBTableView1ID_NUMBER: TcxGridDBColumn;
    IndividualsGridDBTableView1ID_NUMBER_ABSENT: TcxGridDBColumn;
    IndividualsGridDBTableView1ID_NUMBER_ABSENT_REASON: TcxGridDBColumn;
    IndividualsGridDBTableView1PASSPORT_SERIAL: TcxGridDBColumn;
    IndividualsGridDBTableView1PASSPORT_NUMBER: TcxGridDBColumn;
    IndividualsGridDBTableView1PASSPORT_ISSUE_DATE: TcxGridDBColumn;
    IndividualsGridDBTableView1PASSPORT_ISSUER: TcxGridDBColumn;
    IndividualsGridDBTableView1PASSPORT_ISSUER_DEPT: TcxGridDBColumn;
    IndividualsGridDBTableView1PASSPORT_ISSUER_STATE: TcxGridDBColumn;
    IndividualsGridDBTableView1PASSPORT_FOREIGN_SERIAL: TcxGridDBColumn;
    IndividualsGridDBTableView1PASSPORT_FOREIGN_NUMBER: TcxGridDBColumn;
    IndividualsGridDBTableView1PASSPORT_FOREIGN_ISSUE_DATE: TcxGridDBColumn;
    IndividualsGridDBTableView1PASSPORT_FOREIGN_EXPIRATION: TcxGridDBColumn;
    IndividualsGridDBTableView1PASSPORT_FOREIGN_ISSUER: TcxGridDBColumn;
    IndividualsGridDBTableView1BIRTH_CERTIFICATE_SERIAL: TcxGridDBColumn;
    IndividualsGridDBTableView1BIRTH_CERTIFICATE_NUMBER: TcxGridDBColumn;
    IndividualsGridDBTableView1BIRTH_CERTIFICATE_ISSUE_DATE: TcxGridDBColumn;
    IndividualsGridDBTableView1BIRTH_CERTIFICATE_ISSUER: TcxGridDBColumn;
    IndividualsGridDBTableView1BIRTH_CERTIFICATE_ISSUER_DEPT: TcxGridDBColumn;
    IndividualsGridDBTableView1BIRTH_CERTIFICATE_ISSUER_STATE: TcxGridDBColumn;
    IndividualsGridDBTableView1PERSONAL_CERTIFICATE: TcxGridDBColumn;
    IndividualsGridDBTableView1ADDRESS_STATE: TcxGridDBColumn;
    IndividualsGridDBTableView1ADDRESS_REGION: TcxGridDBColumn;
    IndividualsGridDBTableView1ADDRESS_LOCALITY_TYPE: TcxGridDBColumn;
    IndividualsGridDBTableView1ADDRESS_LOCALITY: TcxGridDBColumn;
    IndividualsGridDBTableView1ADDRESS_STREET_TYPE: TcxGridDBColumn;
    IndividualsGridDBTableView1ADDRESS_STREET: TcxGridDBColumn;
    IndividualsGridDBTableView1ADDRESS_BUILDING: TcxGridDBColumn;
    IndividualsGridDBTableView1ADDRESS_FLAT: TcxGridDBColumn;
    IndividualsGridDBTableView1ADDRESS_CORPS: TcxGridDBColumn;
    IndividualsGridDBTableView1ADDRESS_SECTION: TcxGridDBColumn;
    IndividualsGridDBTableView1ADDRESS_INDEX: TcxGridDBColumn;
    IndividualsGridDBTableView1ADDRESS_OTHER: TcxGridDBColumn;
    IndividualsGridDBTableView1DESCRIPTION: TcxGridDBColumn;
    IndividualsGridDBTableView1MARRIAGE_REGISTRATOR: TcxGridDBColumn;
    IndividualsGridDBTableView1MARRIAGE_REGISTERED_DATE: TcxGridDBColumn;
    IndividualsGridDBTableView1MARRIAGE_MEMBER: TcxGridDBColumn;
    IndividualsGridDBTableView1SHOW_BIRTH_DATE: TcxGridDBColumn;
    IndividualsGridDBTableView1SHOW_ADDRESS: TcxGridDBColumn;
    IndividualsGridDBTableView1SHOW_ID_NUMBER: TcxGridDBColumn;
    IndividualsGridDBTableView1SHOW_PASSPORT_DATA: TcxGridDBColumn;
    IndividualsDataSetID: TFIBBCDField;
    IndividualsDataSetSURNAME: TFIBWideStringField;
    IndividualsDataSetNAME: TFIBWideStringField;
    IndividualsDataSetMIDDLE: TFIBWideStringField;
    IndividualsDataSetGENDER: TFIBWideStringField;
    IndividualsDataSetSTATE: TFIBWideStringField;
    IndividualsDataSetPERSONAL_DOCUMENT: TFIBWideStringField;
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
    IndividualSelectorCustomizeGridPopupMenu: TPopupMenu;
    IndividualSelectorCustomizeGridMenuItem: TMenuItem;
    CancelButton: TcxButton;
    OkButton: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmIndividualSelector: TfmIndividualSelector;

implementation

{$R *.dfm}

procedure TfmIndividualSelector.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
