unit udmIndividual;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FIBDataSet, pFIBDataSet;

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

end.
