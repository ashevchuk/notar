unit ufmAuthorizations;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  ufmMain, uUtils, uRemoteDM, udmAuthorization, uTypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FIBDataSet, pFIBDataSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinOffice2007Blue, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxLabel, cxCheckBox, Vcl.Menus;

type
  TfmAuthorizations = class(TForm)
    AuthorizationsDataSource: TDataSource;
    AuthorizationsDataSet: TpFIBDataSet;
    AuthorizationsGridDBTableView1: TcxGridDBTableView;
    AuthorizationsGridLevel1: TcxGridLevel;
    AuthorizationsGrid: TcxGrid;
    AuthorizationsGridDBTableView1ID: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSPORT_KIND: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSPORT_BRAND: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSPORT_MODEL: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSPORT_TYPE: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSPORT_COLOR: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSPORT_CHASSIS_NUMBER: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSPORT_LOAD_WEIGHT: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSPORT_WEIGHT: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSPORT_ENGINE_VOLUME: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSPORT_REG_NUMBER: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSPORT_FABRICATION_DATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSPORT_CERTIFICATE_SERIAL: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSPORT_CERTIFICATE_NUMBER: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSPORT_CERTIFICATE_REG_DATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSPORT_CERTIFICATE_ISSUER: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSITE_NUMBER: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSITE_NUMBER_REMOVED_DATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView1AUTHORIZATION_NUMBER: TcxGridDBColumn;
    AuthorizationsGridDBTableView1AUTHORIZATION_VALIDITY_DATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView1AUTHORIZATION_DATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView1AUTHORIZATION_DESCRIPTION: TcxGridDBColumn;
    AuthorizationsGridDBTableView1TRANSITE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2: TcxGridDBTableView;
    AuthorizationsGridLevel2: TcxGridLevel;
    RelAuthConstituentDataSet: TpFIBDataSet;
    RelAuthConstituentDataSource: TDataSource;
    AuthorizationsGridDBTableView2ID: TcxGridDBColumn;
    AuthorizationsGridDBTableView2SURNAME: TcxGridDBColumn;
    AuthorizationsGridDBTableView2NAME: TcxGridDBColumn;
    AuthorizationsGridDBTableView2MIDDLE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2GENDER: TcxGridDBColumn;
    AuthorizationsGridDBTableView2STATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2PERSONAL_DOCUMENT: TcxGridDBColumn;
    AuthorizationsGridDBTableView2BIRTH_DATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2BIRTH_PLACE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2DISABLEMENT: TcxGridDBColumn;
    AuthorizationsGridDBTableView2DISABLEMENT_GROUP: TcxGridDBColumn;
    AuthorizationsGridDBTableView2DISABLEMENT_DOCUMENT: TcxGridDBColumn;
    AuthorizationsGridDBTableView2FOREIGN_ADDRESS_TYPE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2FOREIGN_ADDRESS: TcxGridDBColumn;
    AuthorizationsGridDBTableView2ID_NUMBER: TcxGridDBColumn;
    AuthorizationsGridDBTableView2ID_NUMBER_ABSENT: TcxGridDBColumn;
    AuthorizationsGridDBTableView2ID_NUMBER_ABSENT_REASON: TcxGridDBColumn;
    AuthorizationsGridDBTableView2PASSPORT_SERIAL: TcxGridDBColumn;
    AuthorizationsGridDBTableView2PASSPORT_NUMBER: TcxGridDBColumn;
    AuthorizationsGridDBTableView2PASSPORT_ISSUE_DATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2PASSPORT_ISSUER: TcxGridDBColumn;
    AuthorizationsGridDBTableView2PASSPORT_ISSUER_DEPT: TcxGridDBColumn;
    AuthorizationsGridDBTableView2PASSPORT_ISSUER_STATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2PASSPORT_FOREIGN_SERIAL: TcxGridDBColumn;
    AuthorizationsGridDBTableView2PASSPORT_FOREIGN_NUMBER: TcxGridDBColumn;
    AuthorizationsGridDBTableView2PASSPORT_FOREIGN_ISSUE_DATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2PASSPORT_FOREIGN_EXPIRATION: TcxGridDBColumn;
    AuthorizationsGridDBTableView2PASSPORT_FOREIGN_ISSUER: TcxGridDBColumn;
    AuthorizationsGridDBTableView2BIRTH_CERTIFICATE_SERIAL: TcxGridDBColumn;
    AuthorizationsGridDBTableView2BIRTH_CERTIFICATE_NUMBER: TcxGridDBColumn;
    AuthorizationsGridDBTableView2BIRTH_CERTIFICATE_ISSUE_DATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2BIRTH_CERTIFICATE_ISSUER: TcxGridDBColumn;
    AuthorizationsGridDBTableView2BIRTH_CERTIFICATE_ISSUER_DEPT: TcxGridDBColumn;
    AuthorizationsGridDBTableView2BIRTH_CERTIFICATE_ISSUER_STATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2PERSONAL_CERTIFICATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2ADDRESS_STATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2ADDRESS_REGION: TcxGridDBColumn;
    AuthorizationsGridDBTableView2ADDRESS_LOCALITY_TYPE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2ADDRESS_LOCALITY: TcxGridDBColumn;
    AuthorizationsGridDBTableView2ADDRESS_STREET_TYPE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2ADDRESS_STREET: TcxGridDBColumn;
    AuthorizationsGridDBTableView2ADDRESS_BUILDING: TcxGridDBColumn;
    AuthorizationsGridDBTableView2ADDRESS_FLAT: TcxGridDBColumn;
    AuthorizationsGridDBTableView2ADDRESS_CORPS: TcxGridDBColumn;
    AuthorizationsGridDBTableView2ADDRESS_SECTION: TcxGridDBColumn;
    AuthorizationsGridDBTableView2ADDRESS_INDEX: TcxGridDBColumn;
    AuthorizationsGridDBTableView2ADDRESS_OTHER: TcxGridDBColumn;
    AuthorizationsGridDBTableView2DESCRIPTION: TcxGridDBColumn;
    AuthorizationsGridDBTableView2MARRIAGE_REGISTRATOR: TcxGridDBColumn;
    AuthorizationsGridDBTableView2MARRIAGE_REGISTERED_DATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2MARRIAGE_MEMBER: TcxGridDBColumn;
    AuthorizationsGridDBTableView2SHOW_BIRTH_DATE: TcxGridDBColumn;
    AuthorizationsGridDBTableView2SHOW_ADDRESS: TcxGridDBColumn;
    AuthorizationsGridDBTableView2SHOW_ID_NUMBER: TcxGridDBColumn;
    AuthorizationsGridDBTableView2SHOW_PASSPORT_DATA: TcxGridDBColumn;
    AuthorizationsGridDBTableView2AUTHORIZATION_ID: TcxGridDBColumn;
    AuthorizationsGridDBTableView2RELATION_ID: TcxGridDBColumn;
    AuthorizationsGridDBTableView2RELATION_TYPE: TcxGridDBColumn;
    AuthorizationsDataSetID: TFIBBCDField;
    AuthorizationsDataSetTRANSPORT_KIND: TFIBWideStringField;
    AuthorizationsDataSetTRANSPORT_BRAND: TFIBWideStringField;
    AuthorizationsDataSetTRANSPORT_MODEL: TFIBWideStringField;
    AuthorizationsDataSetTRANSPORT_TYPE: TFIBWideStringField;
    AuthorizationsDataSetTRANSPORT_COLOR: TFIBWideStringField;
    AuthorizationsDataSetTRANSPORT_CHASSIS_NUMBER: TFIBWideStringField;
    AuthorizationsDataSetTRANSPORT_LOAD_WEIGHT: TFIBWideStringField;
    AuthorizationsDataSetTRANSPORT_WEIGHT: TFIBWideStringField;
    AuthorizationsDataSetTRANSPORT_ENGINE_VOLUME: TFIBWideStringField;
    AuthorizationsDataSetTRANSPORT_REG_NUMBER: TFIBWideStringField;
    AuthorizationsDataSetTRANSPORT_FABRICATION_DATE: TFIBDateField;
    AuthorizationsDataSetTRANSPORT_CERTIFICATE_SERIAL: TFIBWideStringField;
    AuthorizationsDataSetTRANSPORT_CERTIFICATE_NUMBER: TFIBWideStringField;
    AuthorizationsDataSetTRANSPORT_CERTIFICATE_REG_DATE: TFIBDateField;
    AuthorizationsDataSetTRANSPORT_CERTIFICATE_ISSUER: TFIBWideStringField;
    AuthorizationsDataSetTRANSITE_NUMBER: TFIBWideStringField;
    AuthorizationsDataSetTRANSITE_NUMBER_REMOVED_DATE: TFIBDateField;
    AuthorizationsDataSetAUTHORIZATION_NUMBER: TFIBWideStringField;
    AuthorizationsDataSetAUTHORIZATION_VALIDITY_DATE: TFIBDateField;
    AuthorizationsDataSetAUTHORIZATION_DATE: TFIBDateField;
    AuthorizationsDataSetAUTHORIZATION_DESCRIPTION: TFIBWideStringField;
    AuthorizationsDataSetTRANSITE: TFIBWideStringField;
    AuthorizationsDataSetSUBSTITUTION: TFIBWideStringField;
    AuthorizationsGridDBTableView1SUBSTITUTION: TcxGridDBColumn;
    AuthorizationPopupMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AuthorizationsGridDBTableView2RELATION_TYPEGetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure AuthorizationsGridDBTableView2RELATION_TYPEGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure AuthorizationsGridDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

resourcestring
  rel_auth_const = 'Довіритель';
  rel_auth_repres = 'Представник';
  rel_auth_unknown = 'Не визначено';

var
  fmAuthorizations: TfmAuthorizations;

implementation
uses uMVCAuthorization, RVARibbonFrm;

{$R *.dfm}

procedure TfmAuthorizations.AuthorizationsGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  InputFileName: string;
  OutputFileName: string;
begin
  InputFileName := Format('%s\Report0.template.rtf', [TFmMain(Application.MainForm).CurrentDir + 'Templates\Repository']);
  OutputFileName := Format('%s\%s.%s.report.output.rtf', [TFmMain(Application.MainForm).CurrentDir + 'Templates\Output', 'authorization', AuthorizationsDataSetID.asString]);

  if not FileExists(OutputFileName) then
  with TMVCAuthorization.Create(Application.MainForm) do
  begin
    setID(AuthorizationsDataSetID.asString);
    buildReport(InputFileName, OutputFileName);
    Free;
  end;

  with RVARibbonFrm.TfrmMain.Create(Application.MainForm) do
  begin
    LoadFile(OutputFileName);
    Show;
  end;
end;

procedure TfmAuthorizations.AuthorizationsGridDBTableView2RELATION_TYPEGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  if AText = 'rel_auth_const' then AText := rel_auth_const;
  if AText = 'rel_auth_repres' then AText := rel_auth_repres;
end;

procedure TfmAuthorizations.AuthorizationsGridDBTableView2RELATION_TYPEGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText = 'rel_auth_const' then AText := rel_auth_const;
  if AText = 'rel_auth_repres' then AText := rel_auth_repres;
end;

procedure TfmAuthorizations.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmAuthorizations.N1Click(Sender: TObject);
var
  InputFileName: string;
  OutputFileName: string;
begin
  InputFileName := Format('%s\Report0.template.rtf', [TFmMain(Application.MainForm).CurrentDir + 'Templates\Repository']);
  OutputFileName := Format('%s\%s.%s.report.output.rtf', [TFmMain(Application.MainForm).CurrentDir + 'Templates\Output', 'authorization', AuthorizationsDataSetID.asString]);

  if not FileExists(OutputFileName) then
  with TMVCAuthorization.Create(Application.MainForm) do
  begin
    setID(AuthorizationsDataSetID.asString);
    buildReport(InputFileName, OutputFileName);
    Free;
  end;

  with RVARibbonFrm.TfrmMain.Create(Application.MainForm) do
  begin
    LoadFile(OutputFileName);
    Show;
  end;
end;

procedure TfmAuthorizations.N2Click(Sender: TObject);
var
  InputFileName: string;
  OutputFileName: string;
begin
  InputFileName := Format('%s\Report0.template.rtf', [TFmMain(Application.MainForm).CurrentDir + 'Templates\Repository']);
  OutputFileName := Format('%s\%s.%s.report.output.rtf', [TFmMain(Application.MainForm).CurrentDir + 'Templates\Output', 'authorization', AuthorizationsDataSetID.asString]);

  with TMVCAuthorization.Create(Application.MainForm) do
  begin
    setID(AuthorizationsDataSetID.asString);
    buildReport(InputFileName, OutputFileName);
    Free;
  end;

  with RVARibbonFrm.TfrmMain.Create(Application.MainForm) do
  begin
    LoadFile(OutputFileName);
    Show;
  end;
end;

initialization
  RegisterClass(TfmAuthorizations);

end.
