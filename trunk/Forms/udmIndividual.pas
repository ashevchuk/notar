unit udmIndividual;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FIBDataSet, pFIBDataSet,
  ufmMain, uUtils, uRemoteDM;

type
  TdmIndividual = class(TDataModule)
    SurnamesDataSet: TpFIBDataSet;
    SurnamesDataSource: TDataSource;
    NameDataSource: TDataSource;
    NameDataSet: TpFIBDataSet;
    MiddleDataSet: TpFIBDataSet;
    MiddleDataSource: TDataSource;
    IndividualsDataSet: TpFIBDataSet;
    IndividualsDataSource: TDataSource;
    GenderDataSet: TpFIBDataSet;
    GenderDataSource: TDataSource;
    StateDataSet: TpFIBDataSet;
    StateDataSource: TDataSource;
    PersonalDocumentsDataSet: TpFIBDataSet;
    PersonalDocumentsDataSource: TDataSource;
    BirthPlaceDataSet: TpFIBDataSet;
    BirthPlaceDataSource: TDataSource;
    DescriptionDataSet: TpFIBDataSet;
    DescriptionDataSource: TDataSource;
    AddressStateDataSource: TDataSource;
    AddressStateDataSet: TpFIBDataSet;
    AddressRegionDataSet: TpFIBDataSet;
    AddressRegionDataSource: TDataSource;
    AddressLocalityTypeDataSet: TpFIBDataSet;
    AddressLocalityTypeDataSource: TDataSource;
    AddressLocalityDataSet: TpFIBDataSet;
    AddressLocalityDataSource: TDataSource;
    AddressStreetTypeDataSet: TpFIBDataSet;
    AddressStreetTypeDataSource: TDataSource;
    AddressStreetDataSet: TpFIBDataSet;
    AddressStreetDataSource: TDataSource;
    AddressBuildingDataSet: TpFIBDataSet;
    AddressBuildingDataSource: TDataSource;
    AddressFlatDataSource: TDataSource;
    AddressFlatDataSet: TpFIBDataSet;
    AddressCorpsDataSource: TDataSource;
    AddressCorpsDataSet: TpFIBDataSet;
    AddressSectionDataSet: TpFIBDataSet;
    AddressSectionDataSource: TDataSource;
    AddressIndexDataSource: TDataSource;
    AddressIndexDataSet: TpFIBDataSet;
    AddressOtherDataSource: TDataSource;
    AddressOtherDataSet: TpFIBDataSet;
    PassportSerialDataSource: TDataSource;
    PassportSerialDataSet: TpFIBDataSet;
    PassportNumberDataSource: TDataSource;
    PassportNumberDataSet: TpFIBDataSet;
    PassportIssuerDataSource: TDataSource;
    PassportIssuerDataSet: TpFIBDataSet;
    PassportIssuerDeptDataSource: TDataSource;
    PassportIssuerDeptDataSet: TpFIBDataSet;
    PassportIssuerStateDataSource: TDataSource;
    PassportIssuerStateDataSet: TpFIBDataSet;
    PassportForeignSerialDataSource: TDataSource;
    PassportForeignSerialDataSet: TpFIBDataSet;
    PassportForeignNumberDataSet: TpFIBDataSet;
    PassportForeignNumberDataSource: TDataSource;
    PassportForeignIssuerDataSource: TDataSource;
    PassportForeignIssuerDataSet: TpFIBDataSet;
    IdNumberDataSet: TpFIBDataSet;
    IdNumberDataSource: TDataSource;
    IdNumberAbsentReasonDataSource: TDataSource;
    IdNumberAbsentReasonDataSet: TpFIBDataSet;
    DisablementGroupDataSource: TDataSource;
    DisablementGroupDataSet: TpFIBDataSet;
    DisablementDocumentDataSource: TDataSource;
    DisablementDocumentDataSet: TpFIBDataSet;
    BirthCertificateSerialDataSource: TDataSource;
    BirthCertificateSerialDataSet: TpFIBDataSet;
    BirthCertificateNumberDataSource: TDataSource;
    BirthCertificateNumberDataSet: TpFIBDataSet;
    BirthCertificateIssuerDataSet: TpFIBDataSet;
    BirthCertificateIssuerDataSource: TDataSource;
    BirthCertificateIssuerDeptDataSource: TDataSource;
    BirthCertificateIssuerDeptDataSet: TpFIBDataSet;
    BirthCertificateIssuerStateDataSource: TDataSource;
    BirthCertificateIssuerStateDataSet: TpFIBDataSet;
    MarriageMemberDataSource: TDataSource;
    MarriageMemberDataSet: TpFIBDataSet;
    MarriageRegistratorDataSource: TDataSource;
    MarriageRegistratorDataSet: TpFIBDataSet;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmIndividual: TdmIndividual;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmIndividual.DataModuleCreate(Sender: TObject);
var
  ComponentsIndexer: Word;
begin
  for ComponentsIndexer := 0 to TdmIndividual(Self).ComponentCount -1 do
  begin
    if TdmIndividual(Self).Components[ComponentsIndexer].ClassName = 'TpFIBDataSet' then
      TpFIBDataSet(TdmIndividual(Self).Components[ComponentsIndexer]).Open;
  end;
end;

procedure TdmIndividual.DataModuleDestroy(Sender: TObject);
var
  ComponentsIndexer: Word;
begin
  for ComponentsIndexer := 0 to TdmIndividual(Self).ComponentCount -1 do
  begin
    if TdmIndividual(Self).Components[ComponentsIndexer].ClassName = 'TpFIBDataSet' then
      TpFIBDataSet(TdmIndividual(Self).Components[ComponentsIndexer]).Close;
  end;
end;

end.
