unit udmNotary;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FIBDataSet, pFIBDataSet,
  ufmMain, uUtils, uRemoteDM;

type
  TdmNotary = class(TDataModule)
    SurnamesDataSet: TpFIBDataSet;
    SurnamesDataSource: TDataSource;
    NameDataSource: TDataSource;
    NameDataSet: TpFIBDataSet;
    MiddleDataSet: TpFIBDataSet;
    MiddleDataSource: TDataSource;
    NotariesDataSet: TpFIBDataSet;
    NotariesDataSource: TDataSource;
    GenderDataSet: TpFIBDataSet;
    GenderDataSource: TDataSource;
    CountyDataSet: TpFIBDataSet;
    CountyDataSource: TDataSource;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmNotary: TdmNotary;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
