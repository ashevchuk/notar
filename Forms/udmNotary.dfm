object dmNotary: TdmNotary
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 418
  Width = 843
  object SurnamesDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    SURNAME'
      'FROM'
      '    CAT_NOTR_SURNAME ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 66
    Top = 94
  end
  object SurnamesDataSource: TDataSource
    DataSet = SurnamesDataSet
    Left = 194
    Top = 94
  end
  object NameDataSource: TDataSource
    DataSet = NameDataSet
    Left = 194
    Top = 142
  end
  object NameDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    NAME'
      'FROM'
      '    CAT_NOTR_NAME ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 66
    Top = 142
  end
  object MiddleDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    MIDDLE'
      'FROM'
      '    CAT_NOTR_MIDDLE')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 66
    Top = 190
  end
  object MiddleDataSource: TDataSource
    DataSet = MiddleDataSet
    Left = 194
    Top = 190
  end
  object NotariesDataSet: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CATALOG_NOTARIES'
      'SET '
      '    NAME = :NAME,'
      '    SURNAME = :SURNAME,'
      '    MIDDLE = :MIDDLE,'
      '    COUNTY = :COUNTY,'
      '    GENDER = :GENDER,'
      '    ADDRESS_STATE = :ADDRESS_STATE,'
      '    ADDRESS_REGION = :ADDRESS_REGION,'
      '    ADDRESS_LOCALITY_TYPE = :ADDRESS_LOCALITY_TYPE,'
      '    ADDRESS_LOCALITY = :ADDRESS_LOCALITY,'
      '    ADDRESS_STREET_TYPE = :ADDRESS_STREET_TYPE,'
      '    ADDRESS_STREET = :ADDRESS_STREET,'
      '    ADDRESS_BUILDING = :ADDRESS_BUILDING,'
      '    ADDRESS_FLAT = :ADDRESS_FLAT,'
      '    ADDRESS_CORPS = :ADDRESS_CORPS,'
      '    ADDRESS_SECTION = :ADDRESS_SECTION,'
      '    ADDRESS_INDEX = :ADDRESS_INDEX,'
      '    ADDRESS_OTHER = :ADDRESS_OTHER,'
      '    SURNAME_CASE_NOMINATIVE = :SURNAME_CASE_NOMINATIVE,'
      '    SURNAME_CASE_GENITIVE = :SURNAME_CASE_GENITIVE,'
      '    SURNAME_CASE_DATIVE = :SURNAME_CASE_DATIVE,'
      '    SURNAME_CASE_ACCUSATIVE = :SURNAME_CASE_ACCUSATIVE,'
      '    SURNAME_CASE_ABLATIVE = :SURNAME_CASE_ABLATIVE,'
      '    SURNAME_CASE_LOCATIVE = :SURNAME_CASE_LOCATIVE,'
      '    SURNAME_CASE_VOCATIVE = :SURNAME_CASE_VOCATIVE,'
      '    NAME_CASE_NOMINATIVE = :NAME_CASE_NOMINATIVE,'
      '    NAME_CASE_GENITIVE = :NAME_CASE_GENITIVE,'
      '    NAME_CASE_DATIVE = :NAME_CASE_DATIVE,'
      '    NAME_CASE_ACCUSATIVE = :NAME_CASE_ACCUSATIVE,'
      '    NAME_CASE_ABLATIVE = :NAME_CASE_ABLATIVE,'
      '    NAME_CASE_LOCATIVE = :NAME_CASE_LOCATIVE,'
      '    NAME_CASE_VOCATIVE = :NAME_CASE_VOCATIVE,'
      '    NAME_CASE_ABBREVIATION = :NAME_CASE_ABBREVIATION,'
      '    MIDDLE_CASE_NOMINATIVE = :MIDDLE_CASE_NOMINATIVE,'
      '    MIDDLE_CASE_GENITIVE = :MIDDLE_CASE_GENITIVE,'
      '    MIDDLE_CASE_DATIVE = :MIDDLE_CASE_DATIVE,'
      '    MIDDLE_CASE_ACCUSATIVE = :MIDDLE_CASE_ACCUSATIVE,'
      '    MIDDLE_CASE_ABLATIVE = :MIDDLE_CASE_ABLATIVE,'
      '    MIDDLE_CASE_LOCATIVE = :MIDDLE_CASE_LOCATIVE,'
      '    MIDDLE_CASE_VOCATIVE = :MIDDLE_CASE_VOCATIVE,'
      '    MIDDLE_CASE_ABBREVIATION = :MIDDLE_CASE_ABBREVIATION'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CATALOG_NOTARIES'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CATALOG_NOTARIES('
      '    NAME,'
      '    SURNAME,'
      '    MIDDLE,'
      '    COUNTY,'
      '    GENDER,'
      '    ADDRESS_STATE,'
      '    ADDRESS_REGION,'
      '    ADDRESS_LOCALITY_TYPE,'
      '    ADDRESS_LOCALITY,'
      '    ADDRESS_STREET_TYPE,'
      '    ADDRESS_STREET,'
      '    ADDRESS_BUILDING,'
      '    ADDRESS_FLAT,'
      '    ADDRESS_CORPS,'
      '    ADDRESS_SECTION,'
      '    ADDRESS_INDEX,'
      '    ADDRESS_OTHER,'
      '    SURNAME_CASE_NOMINATIVE,'
      '    SURNAME_CASE_GENITIVE,'
      '    SURNAME_CASE_DATIVE,'
      '    SURNAME_CASE_ACCUSATIVE,'
      '    SURNAME_CASE_ABLATIVE,'
      '    SURNAME_CASE_LOCATIVE,'
      '    SURNAME_CASE_VOCATIVE,'
      '    NAME_CASE_NOMINATIVE,'
      '    NAME_CASE_GENITIVE,'
      '    NAME_CASE_DATIVE,'
      '    NAME_CASE_ACCUSATIVE,'
      '    NAME_CASE_ABLATIVE,'
      '    NAME_CASE_LOCATIVE,'
      '    NAME_CASE_VOCATIVE,'
      '    NAME_CASE_ABBREVIATION,'
      '    MIDDLE_CASE_NOMINATIVE,'
      '    MIDDLE_CASE_GENITIVE,'
      '    MIDDLE_CASE_DATIVE,'
      '    MIDDLE_CASE_ACCUSATIVE,'
      '    MIDDLE_CASE_ABLATIVE,'
      '    MIDDLE_CASE_LOCATIVE,'
      '    MIDDLE_CASE_VOCATIVE,'
      '    MIDDLE_CASE_ABBREVIATION'
      ')'
      'VALUES('
      '    :NAME,'
      '    :SURNAME,'
      '    :MIDDLE,'
      '    :COUNTY,'
      '    :GENDER,'
      '    :ADDRESS_STATE,'
      '    :ADDRESS_REGION,'
      '    :ADDRESS_LOCALITY_TYPE,'
      '    :ADDRESS_LOCALITY,'
      '    :ADDRESS_STREET_TYPE,'
      '    :ADDRESS_STREET,'
      '    :ADDRESS_BUILDING,'
      '    :ADDRESS_FLAT,'
      '    :ADDRESS_CORPS,'
      '    :ADDRESS_SECTION,'
      '    :ADDRESS_INDEX,'
      '    :ADDRESS_OTHER,'
      '    :SURNAME_CASE_NOMINATIVE,'
      '    :SURNAME_CASE_GENITIVE,'
      '    :SURNAME_CASE_DATIVE,'
      '    :SURNAME_CASE_ACCUSATIVE,'
      '    :SURNAME_CASE_ABLATIVE,'
      '    :SURNAME_CASE_LOCATIVE,'
      '    :SURNAME_CASE_VOCATIVE,'
      '    :NAME_CASE_NOMINATIVE,'
      '    :NAME_CASE_GENITIVE,'
      '    :NAME_CASE_DATIVE,'
      '    :NAME_CASE_ACCUSATIVE,'
      '    :NAME_CASE_ABLATIVE,'
      '    :NAME_CASE_LOCATIVE,'
      '    :NAME_CASE_VOCATIVE,'
      '    :NAME_CASE_ABBREVIATION,'
      '    :MIDDLE_CASE_NOMINATIVE,'
      '    :MIDDLE_CASE_GENITIVE,'
      '    :MIDDLE_CASE_DATIVE,'
      '    :MIDDLE_CASE_ACCUSATIVE,'
      '    :MIDDLE_CASE_ABLATIVE,'
      '    :MIDDLE_CASE_LOCATIVE,'
      '    :MIDDLE_CASE_VOCATIVE,'
      '    :MIDDLE_CASE_ABBREVIATION'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    SURNAME,'
      '    MIDDLE,'
      '    COUNTY,'
      '    GENDER,'
      '    ADDRESS_STATE,'
      '    ADDRESS_REGION,'
      '    ADDRESS_LOCALITY_TYPE,'
      '    ADDRESS_LOCALITY,'
      '    ADDRESS_STREET_TYPE,'
      '    ADDRESS_STREET,'
      '    ADDRESS_BUILDING,'
      '    ADDRESS_FLAT,'
      '    ADDRESS_CORPS,'
      '    ADDRESS_SECTION,'
      '    ADDRESS_INDEX,'
      '    ADDRESS_OTHER,'
      '    SURNAME_CASE_NOMINATIVE,'
      '    SURNAME_CASE_GENITIVE,'
      '    SURNAME_CASE_DATIVE,'
      '    SURNAME_CASE_ACCUSATIVE,'
      '    SURNAME_CASE_ABLATIVE,'
      '    SURNAME_CASE_LOCATIVE,'
      '    SURNAME_CASE_VOCATIVE,'
      '    NAME_CASE_NOMINATIVE,'
      '    NAME_CASE_GENITIVE,'
      '    NAME_CASE_DATIVE,'
      '    NAME_CASE_ACCUSATIVE,'
      '    NAME_CASE_ABLATIVE,'
      '    NAME_CASE_LOCATIVE,'
      '    NAME_CASE_VOCATIVE,'
      '    NAME_CASE_ABBREVIATION,'
      '    MIDDLE_CASE_NOMINATIVE,'
      '    MIDDLE_CASE_GENITIVE,'
      '    MIDDLE_CASE_DATIVE,'
      '    MIDDLE_CASE_ACCUSATIVE,'
      '    MIDDLE_CASE_ABLATIVE,'
      '    MIDDLE_CASE_LOCATIVE,'
      '    MIDDLE_CASE_VOCATIVE,'
      '    MIDDLE_CASE_ABBREVIATION'
      'FROM'
      '    CATALOG_NOTARIES '
      ''
      ' WHERE '
      '        CATALOG_NOTARIES.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    SURNAME,'
      '    MIDDLE,'
      '    COUNTY,'
      '    GENDER,'
      '    ADDRESS_STATE,'
      '    ADDRESS_REGION,'
      '    ADDRESS_LOCALITY_TYPE,'
      '    ADDRESS_LOCALITY,'
      '    ADDRESS_STREET_TYPE,'
      '    ADDRESS_STREET,'
      '    ADDRESS_BUILDING,'
      '    ADDRESS_FLAT,'
      '    ADDRESS_CORPS,'
      '    ADDRESS_SECTION,'
      '    ADDRESS_INDEX,'
      '    ADDRESS_OTHER,'
      '    SURNAME_CASE_NOMINATIVE,'
      '    SURNAME_CASE_GENITIVE,'
      '    SURNAME_CASE_DATIVE,'
      '    SURNAME_CASE_ACCUSATIVE,'
      '    SURNAME_CASE_ABLATIVE,'
      '    SURNAME_CASE_LOCATIVE,'
      '    SURNAME_CASE_VOCATIVE,'
      '    NAME_CASE_NOMINATIVE,'
      '    NAME_CASE_GENITIVE,'
      '    NAME_CASE_DATIVE,'
      '    NAME_CASE_ACCUSATIVE,'
      '    NAME_CASE_ABLATIVE,'
      '    NAME_CASE_LOCATIVE,'
      '    NAME_CASE_VOCATIVE,'
      '    NAME_CASE_ABBREVIATION,'
      '    MIDDLE_CASE_NOMINATIVE,'
      '    MIDDLE_CASE_GENITIVE,'
      '    MIDDLE_CASE_DATIVE,'
      '    MIDDLE_CASE_ACCUSATIVE,'
      '    MIDDLE_CASE_ABLATIVE,'
      '    MIDDLE_CASE_LOCATIVE,'
      '    MIDDLE_CASE_VOCATIVE,'
      '    MIDDLE_CASE_ABBREVIATION'
      'FROM'
      '    CATALOG_NOTARIES ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 64
    Top = 32
  end
  object NotariesDataSource: TDataSource
    DataSet = NotariesDataSet
    Left = 196
    Top = 32
  end
  object GenderDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    GENDER'
      'FROM'
      '    CATALOG_GENDERS ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 66
    Top = 246
  end
  object GenderDataSource: TDataSource
    DataSet = GenderDataSet
    Left = 194
    Top = 246
  end
  object CountyDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    COUNTY'
      'FROM'
      '    CAT_NOTR_COUNTY ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 66
    Top = 302
  end
  object CountyDataSource: TDataSource
    DataSet = CountyDataSet
    Left = 194
    Top = 302
  end
  object AddressStateDataSource: TDataSource
    DataSet = AddressStateDataSet
    Left = 730
    Top = 30
  end
  object AddressStateDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_STATE'
      'FROM'
      '    CAT_NOTR_ADDRESS_STATE ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 602
    Top = 30
  end
  object AddressRegionDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_REGION'
      'FROM'
      '    CAT_NOTR_ADDRESS_REGION ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 602
    Top = 86
  end
  object AddressRegionDataSource: TDataSource
    DataSet = AddressRegionDataSet
    Left = 730
    Top = 86
  end
  object AddressLocalityTypeDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_LOCALITY_TYPE'
      'FROM'
      '    CAT_NOTR_ADDRESS_LOCALITY_TYPE ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 602
    Top = 142
  end
  object AddressLocalityTypeDataSource: TDataSource
    DataSet = AddressLocalityTypeDataSet
    Left = 730
    Top = 142
  end
  object AddressLocalityDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_LOCALITY'
      'FROM'
      '    CAT_NOTR_ADDRESS_LOCALITY ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 602
    Top = 198
  end
  object AddressLocalityDataSource: TDataSource
    DataSet = AddressLocalityDataSet
    Left = 730
    Top = 198
  end
  object AddressStreetTypeDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_STREET_TYPE'
      'FROM'
      '    CAT_NOTR_ADDRESS_STREET_TYPE ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 602
    Top = 254
  end
  object AddressStreetTypeDataSource: TDataSource
    DataSet = AddressStreetTypeDataSet
    Left = 730
    Top = 254
  end
  object AddressStreetDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_STREET'
      'FROM'
      '    CAT_NOTR_ADDRESS_STREET ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 30
  end
  object AddressStreetDataSource: TDataSource
    DataSet = AddressStreetDataSet
    Left = 450
    Top = 30
  end
  object AddressBuildingDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_BUILDING'
      'FROM'
      '    CAT_NOTR_ADDRESS_BUILDING ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 78
  end
  object AddressBuildingDataSource: TDataSource
    DataSet = AddressBuildingDataSet
    Left = 450
    Top = 78
  end
  object AddressFlatDataSource: TDataSource
    DataSet = AddressFlatDataSet
    Left = 450
    Top = 126
  end
  object AddressFlatDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_FLAT'
      'FROM'
      '    CAT_NOTR_ADDRESS_FLAT ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 126
  end
  object AddressCorpsDataSource: TDataSource
    DataSet = AddressCorpsDataSet
    Left = 450
    Top = 182
  end
  object AddressCorpsDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_CORPS'
      'FROM'
      '    CAT_NOTR_ADDRESS_CORPS ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 182
  end
  object AddressSectionDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_SECTION'
      'FROM'
      '    CAT_NOTR_ADDRESS_SECTION ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 238
  end
  object AddressSectionDataSource: TDataSource
    DataSet = AddressSectionDataSet
    Left = 450
    Top = 238
  end
  object AddressIndexDataSource: TDataSource
    DataSet = AddressIndexDataSet
    Left = 450
    Top = 294
  end
  object AddressIndexDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_INDEX'
      'FROM'
      '    CAT_NOTR_ADDRESS_INDEX ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 294
  end
  object AddressOtherDataSource: TDataSource
    DataSet = AddressOtherDataSet
    Left = 450
    Top = 350
  end
  object AddressOtherDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_OTHER'
      'FROM'
      '    CAT_NOTR_ADDRESS_OTHER ')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 350
  end
end
