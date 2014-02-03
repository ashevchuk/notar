object dmNotary: TdmNotary
  OldCreateOrder = False
  Height = 418
  Width = 843
  object SurnamesDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    SURNAME'
      'FROM'
      '    CAT_NOTR_SURNAME ')
    Active = True
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
    Active = True
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
    Active = True
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
      '    ADDRESS_OTHER = :ADDRESS_OTHER'
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
      '    ADDRESS_OTHER'
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
      '    :ADDRESS_OTHER'
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
      '    ADDRESS_OTHER'
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
      '    ADDRESS_OTHER'
      'FROM'
      '    CATALOG_NOTARIES ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 64
    Top = 32
    object NotariesDataSetID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object NotariesDataSetNAME: TFIBWideStringField
      FieldName = 'NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object NotariesDataSetSURNAME: TFIBWideStringField
      FieldName = 'SURNAME'
      Size = 255
      EmptyStrToNull = True
    end
    object NotariesDataSetMIDDLE: TFIBWideStringField
      FieldName = 'MIDDLE'
      Size = 255
      EmptyStrToNull = True
    end
    object NotariesDataSetCOUNTY: TFIBWideStringField
      FieldName = 'COUNTY'
      Size = 255
      EmptyStrToNull = True
    end
    object NotariesDataSetGENDER: TFIBBCDField
      FieldName = 'GENDER'
      Size = 0
    end
    object NotariesDataSetADDRESS_STATE: TFIBWideStringField
      FieldName = 'ADDRESS_STATE'
      Size = 255
      EmptyStrToNull = True
    end
    object NotariesDataSetADDRESS_REGION: TFIBWideStringField
      FieldName = 'ADDRESS_REGION'
      Size = 255
      EmptyStrToNull = True
    end
    object NotariesDataSetADDRESS_LOCALITY_TYPE: TFIBWideStringField
      FieldName = 'ADDRESS_LOCALITY_TYPE'
      Size = 255
      EmptyStrToNull = True
    end
    object NotariesDataSetADDRESS_LOCALITY: TFIBWideStringField
      FieldName = 'ADDRESS_LOCALITY'
      Size = 255
      EmptyStrToNull = True
    end
    object NotariesDataSetADDRESS_STREET_TYPE: TFIBWideStringField
      FieldName = 'ADDRESS_STREET_TYPE'
      Size = 255
      EmptyStrToNull = True
    end
    object NotariesDataSetADDRESS_STREET: TFIBWideStringField
      FieldName = 'ADDRESS_STREET'
      Size = 255
      EmptyStrToNull = True
    end
    object NotariesDataSetADDRESS_BUILDING: TFIBWideStringField
      FieldName = 'ADDRESS_BUILDING'
      Size = 255
      EmptyStrToNull = True
    end
    object NotariesDataSetADDRESS_FLAT: TFIBWideStringField
      FieldName = 'ADDRESS_FLAT'
      Size = 255
      EmptyStrToNull = True
    end
    object NotariesDataSetADDRESS_CORPS: TFIBWideStringField
      FieldName = 'ADDRESS_CORPS'
      Size = 255
      EmptyStrToNull = True
    end
    object NotariesDataSetADDRESS_SECTION: TFIBWideStringField
      FieldName = 'ADDRESS_SECTION'
      Size = 255
      EmptyStrToNull = True
    end
    object NotariesDataSetADDRESS_INDEX: TFIBWideStringField
      FieldName = 'ADDRESS_INDEX'
      Size = 255
      EmptyStrToNull = True
    end
    object NotariesDataSetADDRESS_OTHER: TFIBWideStringField
      FieldName = 'ADDRESS_OTHER'
      Size = 255
      EmptyStrToNull = True
    end
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
    Active = True
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
    Active = True
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
    Active = True
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
    Active = True
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
    Active = True
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
    Active = True
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
    Active = True
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
    Active = True
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
    Active = True
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
    Active = True
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
    Active = True
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
    Active = True
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
    Active = True
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
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 350
  end
end
