unit udmAuthorization;

interface

uses
  ufmMain, uUtils, uRemoteDM,
  System.SysUtils, System.Classes, Data.DB, FIBDataSet, pFIBDataSet,
  FIBDatabase, pFIBDatabase;

type
  TdmAuthorization = class(TDataModule)
    IndividualConstituentsDataSource: TDataSource;
    IndividualConstituentsDataSet: TpFIBDataSet;
    IndividualRepresentativesDataSource: TDataSource;
    IndividualRepresentativesDataSet: TpFIBDataSet;
    DataSource1: TDataSource;
    pFIBDataSet1: TpFIBDataSet;
    DataSource2: TDataSource;
    pFIBDataSet2: TpFIBDataSet;
    AuthorizationsDataSource: TDataSource;
    AuthorizationsDataSet: TpFIBDataSet;
    TransportKindDataSet: TpFIBDataSet;
    TransportKindDataSource: TDataSource;
    TransportBrandDataSet: TpFIBDataSet;
    TransportBrandDataSource: TDataSource;
    TransportModelDataSet: TpFIBDataSet;
    TransportModelDataSource: TDataSource;
    TransportTypeDataSet: TpFIBDataSet;
    TransportTypeDataSource: TDataSource;
    TransportColorDataSet: TpFIBDataSet;
    TransportColorDataSource: TDataSource;
    TransportRegNumberDataSet: TpFIBDataSet;
    TransportRegNumberDataSource: TDataSource;
    TransportEngineVolumeDataSet: TpFIBDataSet;
    TransportEngineVolumeDataSource: TDataSource;
    TransportWeightDataSet: TpFIBDataSet;
    TransportWeightDataSource: TDataSource;
    TransportChassisNumberDataSet: TpFIBDataSet;
    TransportChassisNumberDataSource: TDataSource;
    TransportLoadWeightDataSet: TpFIBDataSet;
    TransportLoadWeightDataSource: TDataSource;
    AuthorizationDescriptionDataSource: TDataSource;
    AuthorizationDescriptionDataSet: TpFIBDataSet;
    AuthorizationNumberDataSource: TDataSource;
    AuthorizationNumberDataSet: TpFIBDataSet;
    TransiteNumberDataSource: TDataSource;
    TransiteNumberDataSet: TpFIBDataSet;
    TransportCertificateIssuerDataSource: TDataSource;
    TransportCertificateIssuerDataSet: TpFIBDataSet;
    TransportCertificateNumberDataSource: TDataSource;
    TransportCertificateNumberDataSet: TpFIBDataSet;
    TransportCertificateSerialDataSource: TDataSource;
    TransportCertificateSerialDataSet: TpFIBDataSet;
    AddConstituentDataSet: TpFIBDataSet;
    AddConstituentDataSource: TDataSource;
    AddRepresentativeDataSet: TpFIBDataSet;
    AddRepresentativeDataSource: TDataSource;
    AddConstituentDataSetID: TFIBBCDField;
    AddConstituentDataSetAUTHORIZATION_ID: TFIBBCDField;
    AddConstituentDataSetCONSTITUENT_ID: TFIBBCDField;
    AddRepresentativeDataSetID: TFIBBCDField;
    AddRepresentativeDataSetAUTHORIZATION_ID: TFIBBCDField;
    AddRepresentativeDataSetREPRESENTATIVE_ID: TFIBBCDField;
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
    IndividualRepresentativesDataSetID: TFIBBCDField;
    IndividualRepresentativesDataSetSURNAME: TFIBWideStringField;
    IndividualRepresentativesDataSetNAME: TFIBWideStringField;
    IndividualRepresentativesDataSetMIDDLE: TFIBWideStringField;
    IndividualRepresentativesDataSetGENDER: TFIBWideStringField;
    IndividualRepresentativesDataSetSTATE: TFIBWideStringField;
    IndividualRepresentativesDataSetPERSONAL_DOCUMENT: TFIBWideStringField;
    IndividualRepresentativesDataSetBIRTH_DATE: TFIBDateField;
    IndividualRepresentativesDataSetBIRTH_PLACE: TFIBWideStringField;
    IndividualRepresentativesDataSetDISABLEMENT: TFIBSmallIntField;
    IndividualRepresentativesDataSetDISABLEMENT_GROUP: TFIBWideStringField;
    IndividualRepresentativesDataSetDISABLEMENT_DOCUMENT: TFIBWideStringField;
    IndividualRepresentativesDataSetFOREIGN_ADDRESS_TYPE: TFIBSmallIntField;
    IndividualRepresentativesDataSetFOREIGN_ADDRESS: TFIBMemoField;
    IndividualRepresentativesDataSetID_NUMBER: TFIBWideStringField;
    IndividualRepresentativesDataSetID_NUMBER_ABSENT: TFIBSmallIntField;
    IndividualRepresentativesDataSetID_NUMBER_ABSENT_REASON: TFIBMemoField;
    IndividualRepresentativesDataSetPASSPORT_SERIAL: TFIBWideStringField;
    IndividualRepresentativesDataSetPASSPORT_NUMBER: TFIBWideStringField;
    IndividualRepresentativesDataSetPASSPORT_ISSUE_DATE: TFIBDateField;
    IndividualRepresentativesDataSetPASSPORT_ISSUER: TFIBWideStringField;
    IndividualRepresentativesDataSetPASSPORT_ISSUER_DEPT: TFIBWideStringField;
    IndividualRepresentativesDataSetPASSPORT_ISSUER_STATE: TFIBWideStringField;
    IndividualRepresentativesDataSetPASSPORT_FOREIGN_SERIAL: TFIBWideStringField;
    IndividualRepresentativesDataSetPASSPORT_FOREIGN_NUMBER: TFIBWideStringField;
    IndividualRepresentativesDataSetPASSPORT_FOREIGN_ISSUE_DATE: TFIBDateField;
    IndividualRepresentativesDataSetPASSPORT_FOREIGN_EXPIRATION: TFIBDateField;
    IndividualRepresentativesDataSetPASSPORT_FOREIGN_ISSUER: TFIBWideStringField;
    IndividualRepresentativesDataSetBIRTH_CERTIFICATE_SERIAL: TFIBWideStringField;
    IndividualRepresentativesDataSetBIRTH_CERTIFICATE_NUMBER: TFIBWideStringField;
    IndividualRepresentativesDataSetBIRTH_CERTIFICATE_ISSUE_DATE: TFIBDateField;
    IndividualRepresentativesDataSetBIRTH_CERTIFICATE_ISSUER: TFIBWideStringField;
    IndividualRepresentativesDataSetBIRTH_CERTIFICATE_ISSUER_DEPT: TFIBWideStringField;
    IndividualRepresentativesDataSetBIRTH_CERTIFICATE_ISSUER_STATE: TFIBWideStringField;
    IndividualRepresentativesDataSetPERSONAL_CERTIFICATE: TFIBMemoField;
    IndividualRepresentativesDataSetADDRESS_STATE: TFIBWideStringField;
    IndividualRepresentativesDataSetADDRESS_REGION: TFIBWideStringField;
    IndividualRepresentativesDataSetADDRESS_LOCALITY_TYPE: TFIBWideStringField;
    IndividualRepresentativesDataSetADDRESS_LOCALITY: TFIBWideStringField;
    IndividualRepresentativesDataSetADDRESS_STREET_TYPE: TFIBWideStringField;
    IndividualRepresentativesDataSetADDRESS_STREET: TFIBWideStringField;
    IndividualRepresentativesDataSetADDRESS_BUILDING: TFIBWideStringField;
    IndividualRepresentativesDataSetADDRESS_FLAT: TFIBWideStringField;
    IndividualRepresentativesDataSetADDRESS_CORPS: TFIBWideStringField;
    IndividualRepresentativesDataSetADDRESS_SECTION: TFIBWideStringField;
    IndividualRepresentativesDataSetADDRESS_INDEX: TFIBWideStringField;
    IndividualRepresentativesDataSetADDRESS_OTHER: TFIBWideStringField;
    IndividualRepresentativesDataSetDESCRIPTION: TFIBMemoField;
    IndividualRepresentativesDataSetMARRIAGE_REGISTRATOR: TFIBWideStringField;
    IndividualRepresentativesDataSetMARRIAGE_REGISTERED_DATE: TFIBDateField;
    IndividualRepresentativesDataSetMARRIAGE_MEMBER: TFIBWideStringField;
    IndividualRepresentativesDataSetSHOW_BIRTH_DATE: TFIBSmallIntField;
    IndividualRepresentativesDataSetSHOW_ADDRESS: TFIBSmallIntField;
    IndividualRepresentativesDataSetSHOW_ID_NUMBER: TFIBSmallIntField;
    IndividualRepresentativesDataSetSHOW_PASSPORT_DATA: TFIBSmallIntField;
    IndividualConstituentsDataSetID: TFIBBCDField;
    IndividualConstituentsDataSetSURNAME: TFIBWideStringField;
    IndividualConstituentsDataSetNAME: TFIBWideStringField;
    IndividualConstituentsDataSetMIDDLE: TFIBWideStringField;
    IndividualConstituentsDataSetGENDER: TFIBWideStringField;
    IndividualConstituentsDataSetSTATE: TFIBWideStringField;
    IndividualConstituentsDataSetPERSONAL_DOCUMENT: TFIBWideStringField;
    IndividualConstituentsDataSetBIRTH_DATE: TFIBDateField;
    IndividualConstituentsDataSetBIRTH_PLACE: TFIBWideStringField;
    IndividualConstituentsDataSetDISABLEMENT: TFIBSmallIntField;
    IndividualConstituentsDataSetDISABLEMENT_GROUP: TFIBWideStringField;
    IndividualConstituentsDataSetDISABLEMENT_DOCUMENT: TFIBWideStringField;
    IndividualConstituentsDataSetFOREIGN_ADDRESS_TYPE: TFIBSmallIntField;
    IndividualConstituentsDataSetFOREIGN_ADDRESS: TFIBMemoField;
    IndividualConstituentsDataSetID_NUMBER: TFIBWideStringField;
    IndividualConstituentsDataSetID_NUMBER_ABSENT: TFIBSmallIntField;
    IndividualConstituentsDataSetID_NUMBER_ABSENT_REASON: TFIBMemoField;
    IndividualConstituentsDataSetPASSPORT_SERIAL: TFIBWideStringField;
    IndividualConstituentsDataSetPASSPORT_NUMBER: TFIBWideStringField;
    IndividualConstituentsDataSetPASSPORT_ISSUE_DATE: TFIBDateField;
    IndividualConstituentsDataSetPASSPORT_ISSUER: TFIBWideStringField;
    IndividualConstituentsDataSetPASSPORT_ISSUER_DEPT: TFIBWideStringField;
    IndividualConstituentsDataSetPASSPORT_ISSUER_STATE: TFIBWideStringField;
    IndividualConstituentsDataSetPASSPORT_FOREIGN_SERIAL: TFIBWideStringField;
    IndividualConstituentsDataSetPASSPORT_FOREIGN_NUMBER: TFIBWideStringField;
    IndividualConstituentsDataSetPASSPORT_FOREIGN_ISSUE_DATE: TFIBDateField;
    IndividualConstituentsDataSetPASSPORT_FOREIGN_EXPIRATION: TFIBDateField;
    IndividualConstituentsDataSetPASSPORT_FOREIGN_ISSUER: TFIBWideStringField;
    IndividualConstituentsDataSetBIRTH_CERTIFICATE_SERIAL: TFIBWideStringField;
    IndividualConstituentsDataSetBIRTH_CERTIFICATE_NUMBER: TFIBWideStringField;
    IndividualConstituentsDataSetBIRTH_CERTIFICATE_ISSUE_DATE: TFIBDateField;
    IndividualConstituentsDataSetBIRTH_CERTIFICATE_ISSUER: TFIBWideStringField;
    IndividualConstituentsDataSetBIRTH_CERTIFICATE_ISSUER_DEPT: TFIBWideStringField;
    IndividualConstituentsDataSetBIRTH_CERTIFICATE_ISSUER_STATE: TFIBWideStringField;
    IndividualConstituentsDataSetPERSONAL_CERTIFICATE: TFIBMemoField;
    IndividualConstituentsDataSetADDRESS_STATE: TFIBWideStringField;
    IndividualConstituentsDataSetADDRESS_REGION: TFIBWideStringField;
    IndividualConstituentsDataSetADDRESS_LOCALITY_TYPE: TFIBWideStringField;
    IndividualConstituentsDataSetADDRESS_LOCALITY: TFIBWideStringField;
    IndividualConstituentsDataSetADDRESS_STREET_TYPE: TFIBWideStringField;
    IndividualConstituentsDataSetADDRESS_STREET: TFIBWideStringField;
    IndividualConstituentsDataSetADDRESS_BUILDING: TFIBWideStringField;
    IndividualConstituentsDataSetADDRESS_FLAT: TFIBWideStringField;
    IndividualConstituentsDataSetADDRESS_CORPS: TFIBWideStringField;
    IndividualConstituentsDataSetADDRESS_SECTION: TFIBWideStringField;
    IndividualConstituentsDataSetADDRESS_INDEX: TFIBWideStringField;
    IndividualConstituentsDataSetADDRESS_OTHER: TFIBWideStringField;
    IndividualConstituentsDataSetDESCRIPTION: TFIBMemoField;
    IndividualConstituentsDataSetMARRIAGE_REGISTRATOR: TFIBWideStringField;
    IndividualConstituentsDataSetMARRIAGE_REGISTERED_DATE: TFIBDateField;
    IndividualConstituentsDataSetMARRIAGE_MEMBER: TFIBWideStringField;
    IndividualConstituentsDataSetSHOW_BIRTH_DATE: TFIBSmallIntField;
    IndividualConstituentsDataSetSHOW_ADDRESS: TFIBSmallIntField;
    IndividualConstituentsDataSetSHOW_ID_NUMBER: TFIBSmallIntField;
    IndividualConstituentsDataSetSHOW_PASSPORT_DATA: TFIBSmallIntField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAuthorization: TdmAuthorization;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
