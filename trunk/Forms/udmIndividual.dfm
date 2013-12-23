object dmIndividual: TdmIndividual
  OldCreateOrder = False
  Height = 827
  Width = 1049
  object SurnamesDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    SURNAME'
      'FROM'
      '    CAT_INDS_SURNAME ')
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
      '    CAT_INDS_NAME ')
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
      '    CAT_INDS_MIDDLE')
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
  object IndividualsDataSet: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CATALOG_INDIVIDUALS'
      'SET '
      '    SURNAME = :SURNAME,'
      '    NAME = :NAME,'
      '    MIDDLE = :MIDDLE,'
      '    GENDER = :GENDER,'
      '    STATE = :STATE,'
      '    PERSONAL_DOCUMENT = :PERSONAL_DOCUMENT,'
      '    BIRTH_DATE = :BIRTH_DATE,'
      '    BIRTH_PLACE = :BIRTH_PLACE,'
      '    DISABLEMENT = :DISABLEMENT,'
      '    DISABLEMENT_GROUP = :DISABLEMENT_GROUP,'
      '    DISABLEMENT_DOCUMENT = :DISABLEMENT_DOCUMENT,'
      '    FOREIGN_ADDRESS_TYPE = :FOREIGN_ADDRESS_TYPE,'
      '    FOREIGN_ADDRESS = :FOREIGN_ADDRESS,'
      '    ID_NUMBER = :ID_NUMBER,'
      '    ID_NUMBER_ABSENT = :ID_NUMBER_ABSENT,'
      '    ID_NUMBER_ABSENT_REASON = :ID_NUMBER_ABSENT_REASON,'
      '    PASSPORT_SERIAL = :PASSPORT_SERIAL,'
      '    PASSPORT_NUMBER = :PASSPORT_NUMBER,'
      '    PASSPORT_ISSUE_DATE = :PASSPORT_ISSUE_DATE,'
      '    PASSPORT_ISSUER = :PASSPORT_ISSUER,'
      '    PASSPORT_ISSUER_DEPT = :PASSPORT_ISSUER_DEPT,'
      '    PASSPORT_ISSUER_STATE = :PASSPORT_ISSUER_STATE,'
      '    PASSPORT_FOREIGN_SERIAL = :PASSPORT_FOREIGN_SERIAL,'
      '    PASSPORT_FOREIGN_NUMBER = :PASSPORT_FOREIGN_NUMBER,'
      '    PASSPORT_FOREIGN_ISSUE_DATE = :PASSPORT_FOREIGN_ISSUE_DATE,'
      '    PASSPORT_FOREIGN_EXPIRATION = :PASSPORT_FOREIGN_EXPIRATION,'
      '    PASSPORT_FOREIGN_ISSUER = :PASSPORT_FOREIGN_ISSUER,'
      '    BIRTH_CERTIFICATE_SERIAL = :BIRTH_CERTIFICATE_SERIAL,'
      '    BIRTH_CERTIFICATE_NUMBER = :BIRTH_CERTIFICATE_NUMBER,'
      
        '    BIRTH_CERTIFICATE_ISSUE_DATE = :BIRTH_CERTIFICATE_ISSUE_DATE' +
        ','
      '    BIRTH_CERTIFICATE_ISSUER = :BIRTH_CERTIFICATE_ISSUER,'
      
        '    BIRTH_CERTIFICATE_ISSUER_DEPT = :BIRTH_CERTIFICATE_ISSUER_DE' +
        'PT,'
      
        '    BIRTH_CERTIFICATE_ISSUER_STATE = :BIRTH_CERTIFICATE_ISSUER_S' +
        'TATE,'
      '    PERSONAL_CERTIFICATE = :PERSONAL_CERTIFICATE,'
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
      '    DESCRIPTION = :DESCRIPTION,'
      '    MARRIAGE_REGISTRATOR = :MARRIAGE_REGISTRATOR,'
      '    MARRIAGE_REGISTERED_DATE = :MARRIAGE_REGISTERED_DATE,'
      '    MARRIAGE_MEMBER = :MARRIAGE_MEMBER,'
      '    SHOW_BIRTH_DATE = :SHOW_BIRTH_DATE,'
      '    SHOW_ADDRESS = :SHOW_ADDRESS,'
      '    SHOW_ID_NUMBER = :SHOW_ID_NUMBER,'
      '    SHOW_PASSPORT_DATA = :SHOW_PASSPORT_DATA'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CATALOG_INDIVIDUALS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CATALOG_INDIVIDUALS('
      '    SURNAME,'
      '    NAME,'
      '    MIDDLE,'
      '    GENDER,'
      '    STATE,'
      '    PERSONAL_DOCUMENT,'
      '    BIRTH_DATE,'
      '    BIRTH_PLACE,'
      '    DISABLEMENT,'
      '    DISABLEMENT_GROUP,'
      '    DISABLEMENT_DOCUMENT,'
      '    FOREIGN_ADDRESS_TYPE,'
      '    FOREIGN_ADDRESS,'
      '    ID_NUMBER,'
      '    ID_NUMBER_ABSENT,'
      '    ID_NUMBER_ABSENT_REASON,'
      '    PASSPORT_SERIAL,'
      '    PASSPORT_NUMBER,'
      '    PASSPORT_ISSUE_DATE,'
      '    PASSPORT_ISSUER,'
      '    PASSPORT_ISSUER_DEPT,'
      '    PASSPORT_ISSUER_STATE,'
      '    PASSPORT_FOREIGN_SERIAL,'
      '    PASSPORT_FOREIGN_NUMBER,'
      '    PASSPORT_FOREIGN_ISSUE_DATE,'
      '    PASSPORT_FOREIGN_EXPIRATION,'
      '    PASSPORT_FOREIGN_ISSUER,'
      '    BIRTH_CERTIFICATE_SERIAL,'
      '    BIRTH_CERTIFICATE_NUMBER,'
      '    BIRTH_CERTIFICATE_ISSUE_DATE,'
      '    BIRTH_CERTIFICATE_ISSUER,'
      '    BIRTH_CERTIFICATE_ISSUER_DEPT,'
      '    BIRTH_CERTIFICATE_ISSUER_STATE,'
      '    PERSONAL_CERTIFICATE,'
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
      '    DESCRIPTION,'
      '    MARRIAGE_REGISTRATOR,'
      '    MARRIAGE_REGISTERED_DATE,'
      '    MARRIAGE_MEMBER,'
      '    SHOW_BIRTH_DATE,'
      '    SHOW_ADDRESS,'
      '    SHOW_ID_NUMBER,'
      '    SHOW_PASSPORT_DATA'
      ')'
      'VALUES('
      '    :SURNAME,'
      '    :NAME,'
      '    :MIDDLE,'
      '    :GENDER,'
      '    :STATE,'
      '    :PERSONAL_DOCUMENT,'
      '    :BIRTH_DATE,'
      '    :BIRTH_PLACE,'
      '    :DISABLEMENT,'
      '    :DISABLEMENT_GROUP,'
      '    :DISABLEMENT_DOCUMENT,'
      '    :FOREIGN_ADDRESS_TYPE,'
      '    :FOREIGN_ADDRESS,'
      '    :ID_NUMBER,'
      '    :ID_NUMBER_ABSENT,'
      '    :ID_NUMBER_ABSENT_REASON,'
      '    :PASSPORT_SERIAL,'
      '    :PASSPORT_NUMBER,'
      '    :PASSPORT_ISSUE_DATE,'
      '    :PASSPORT_ISSUER,'
      '    :PASSPORT_ISSUER_DEPT,'
      '    :PASSPORT_ISSUER_STATE,'
      '    :PASSPORT_FOREIGN_SERIAL,'
      '    :PASSPORT_FOREIGN_NUMBER,'
      '    :PASSPORT_FOREIGN_ISSUE_DATE,'
      '    :PASSPORT_FOREIGN_EXPIRATION,'
      '    :PASSPORT_FOREIGN_ISSUER,'
      '    :BIRTH_CERTIFICATE_SERIAL,'
      '    :BIRTH_CERTIFICATE_NUMBER,'
      '    :BIRTH_CERTIFICATE_ISSUE_DATE,'
      '    :BIRTH_CERTIFICATE_ISSUER,'
      '    :BIRTH_CERTIFICATE_ISSUER_DEPT,'
      '    :BIRTH_CERTIFICATE_ISSUER_STATE,'
      '    :PERSONAL_CERTIFICATE,'
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
      '    :DESCRIPTION,'
      '    :MARRIAGE_REGISTRATOR,'
      '    :MARRIAGE_REGISTERED_DATE,'
      '    :MARRIAGE_MEMBER,'
      '    :SHOW_BIRTH_DATE,'
      '    :SHOW_ADDRESS,'
      '    :SHOW_ID_NUMBER,'
      '    :SHOW_PASSPORT_DATA'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    SURNAME,'
      '    NAME,'
      '    MIDDLE,'
      '    GENDER,'
      '    STATE,'
      '    PERSONAL_DOCUMENT,'
      '    BIRTH_DATE,'
      '    BIRTH_PLACE,'
      '    DISABLEMENT,'
      '    DISABLEMENT_GROUP,'
      '    DISABLEMENT_DOCUMENT,'
      '    FOREIGN_ADDRESS_TYPE,'
      '    FOREIGN_ADDRESS,'
      '    ID_NUMBER,'
      '    ID_NUMBER_ABSENT,'
      '    ID_NUMBER_ABSENT_REASON,'
      '    PASSPORT_SERIAL,'
      '    PASSPORT_NUMBER,'
      '    PASSPORT_ISSUE_DATE,'
      '    PASSPORT_ISSUER,'
      '    PASSPORT_ISSUER_DEPT,'
      '    PASSPORT_ISSUER_STATE,'
      '    PASSPORT_FOREIGN_SERIAL,'
      '    PASSPORT_FOREIGN_NUMBER,'
      '    PASSPORT_FOREIGN_ISSUE_DATE,'
      '    PASSPORT_FOREIGN_EXPIRATION,'
      '    PASSPORT_FOREIGN_ISSUER,'
      '    BIRTH_CERTIFICATE_SERIAL,'
      '    BIRTH_CERTIFICATE_NUMBER,'
      '    BIRTH_CERTIFICATE_ISSUE_DATE,'
      '    BIRTH_CERTIFICATE_ISSUER,'
      '    BIRTH_CERTIFICATE_ISSUER_DEPT,'
      '    BIRTH_CERTIFICATE_ISSUER_STATE,'
      '    PERSONAL_CERTIFICATE,'
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
      '    DESCRIPTION,'
      '    MARRIAGE_REGISTRATOR,'
      '    MARRIAGE_REGISTERED_DATE,'
      '    MARRIAGE_MEMBER,'
      '    SHOW_BIRTH_DATE,'
      '    SHOW_ADDRESS,'
      '    SHOW_ID_NUMBER,'
      '    SHOW_PASSPORT_DATA'
      'FROM'
      '    CATALOG_INDIVIDUALS '
      ''
      ' WHERE '
      '        CATALOG_INDIVIDUALS.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    SURNAME,'
      '    NAME,'
      '    MIDDLE,'
      '    GENDER,'
      '    STATE,'
      '    PERSONAL_DOCUMENT,'
      '    BIRTH_DATE,'
      '    BIRTH_PLACE,'
      '    DISABLEMENT,'
      '    DISABLEMENT_GROUP,'
      '    DISABLEMENT_DOCUMENT,'
      '    FOREIGN_ADDRESS_TYPE,'
      '    FOREIGN_ADDRESS,'
      '    ID_NUMBER,'
      '    ID_NUMBER_ABSENT,'
      '    ID_NUMBER_ABSENT_REASON,'
      '    PASSPORT_SERIAL,'
      '    PASSPORT_NUMBER,'
      '    PASSPORT_ISSUE_DATE,'
      '    PASSPORT_ISSUER,'
      '    PASSPORT_ISSUER_DEPT,'
      '    PASSPORT_ISSUER_STATE,'
      '    PASSPORT_FOREIGN_SERIAL,'
      '    PASSPORT_FOREIGN_NUMBER,'
      '    PASSPORT_FOREIGN_ISSUE_DATE,'
      '    PASSPORT_FOREIGN_EXPIRATION,'
      '    PASSPORT_FOREIGN_ISSUER,'
      '    BIRTH_CERTIFICATE_SERIAL,'
      '    BIRTH_CERTIFICATE_NUMBER,'
      '    BIRTH_CERTIFICATE_ISSUE_DATE,'
      '    BIRTH_CERTIFICATE_ISSUER,'
      '    BIRTH_CERTIFICATE_ISSUER_DEPT,'
      '    BIRTH_CERTIFICATE_ISSUER_STATE,'
      '    PERSONAL_CERTIFICATE,'
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
      '    DESCRIPTION,'
      '    MARRIAGE_REGISTRATOR,'
      '    MARRIAGE_REGISTERED_DATE,'
      '    MARRIAGE_MEMBER,'
      '    SHOW_BIRTH_DATE,'
      '    SHOW_ADDRESS,'
      '    SHOW_ID_NUMBER,'
      '    SHOW_PASSPORT_DATA'
      'FROM'
      '    CATALOG_INDIVIDUALS ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 64
    Top = 32
  end
  object IndividualsDataSource: TDataSource
    DataSet = IndividualsDataSet
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
  object StateDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    STATE'
      'FROM'
      '    CATALOG_STATES ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 66
    Top = 302
  end
  object StateDataSource: TDataSource
    DataSet = StateDataSet
    Left = 194
    Top = 302
  end
  object PersonalDocumentsDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    PERSONAL_DOCUMENT'
      'FROM'
      '    CATALOG_PERSON_DOCS ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 66
    Top = 358
  end
  object PersonalDocumentsDataSource: TDataSource
    DataSet = PersonalDocumentsDataSet
    Left = 194
    Top = 358
  end
  object BirthPlaceDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    BIRTH_PLACE'
      'FROM'
      '    CAT_INDS_BIRTH_PLACE ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 66
    Top = 414
  end
  object BirthPlaceDataSource: TDataSource
    DataSet = BirthPlaceDataSet
    Left = 194
    Top = 414
  end
  object DescriptionDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    DESCRIPTION'
      'FROM'
      '    CAT_INDS_DESCRIPTION ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 66
    Top = 470
  end
  object DescriptionDataSource: TDataSource
    DataSet = DescriptionDataSet
    Left = 194
    Top = 470
  end
  object AddressStateDataSource: TDataSource
    DataSet = AddressStateDataSet
    Left = 194
    Top = 526
  end
  object AddressStateDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_STATE'
      'FROM'
      '    CAT_INDS_ADDRESS_STATE ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 66
    Top = 526
  end
  object AddressRegionDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_REGION'
      'FROM'
      '    CAT_INDS_ADDRESS_REGION ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 66
    Top = 582
  end
  object AddressRegionDataSource: TDataSource
    DataSet = AddressRegionDataSet
    Left = 194
    Top = 582
  end
  object AddressLocalityTypeDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_LOCALITY_TYPE'
      'FROM'
      '    CAT_INDS_ADDRESS_LOCALITY_TYPE ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 66
    Top = 638
  end
  object AddressLocalityTypeDataSource: TDataSource
    DataSet = AddressLocalityTypeDataSet
    Left = 194
    Top = 638
  end
  object AddressLocalityDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_LOCALITY'
      'FROM'
      '    CAT_INDS_ADDRESS_LOCALITY ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 66
    Top = 694
  end
  object AddressLocalityDataSource: TDataSource
    DataSet = AddressLocalityDataSet
    Left = 194
    Top = 694
  end
  object AddressStreetTypeDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_STREET_TYPE'
      'FROM'
      '    CAT_INDS_ADDRESS_STREET_TYPE ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 66
    Top = 750
  end
  object AddressStreetTypeDataSource: TDataSource
    DataSet = AddressStreetTypeDataSet
    Left = 194
    Top = 750
  end
  object AddressStreetDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_STREET'
      'FROM'
      '    CAT_INDS_ADDRESS_STREET ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 94
  end
  object AddressStreetDataSource: TDataSource
    DataSet = AddressStreetDataSet
    Left = 450
    Top = 94
  end
  object AddressBuildingDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_BUILDING'
      'FROM'
      '    CAT_INDS_ADDRESS_BUILDING ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 142
  end
  object AddressBuildingDataSource: TDataSource
    DataSet = AddressBuildingDataSet
    Left = 450
    Top = 142
  end
  object AddressFlatDataSource: TDataSource
    DataSet = AddressFlatDataSet
    Left = 450
    Top = 190
  end
  object AddressFlatDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_FLAT'
      'FROM'
      '    CAT_INDS_ADDRESS_FLAT ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 190
  end
  object AddressCorpsDataSource: TDataSource
    DataSet = AddressCorpsDataSet
    Left = 450
    Top = 246
  end
  object AddressCorpsDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_CORPS'
      'FROM'
      '    CAT_INDS_ADDRESS_CORPS ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 246
  end
  object AddressSectionDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_SECTION'
      'FROM'
      '    CAT_INDS_ADDRESS_SECTION ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 302
  end
  object AddressSectionDataSource: TDataSource
    DataSet = AddressSectionDataSet
    Left = 450
    Top = 302
  end
  object AddressIndexDataSource: TDataSource
    DataSet = AddressIndexDataSet
    Left = 450
    Top = 358
  end
  object AddressIndexDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_INDEX'
      'FROM'
      '    CAT_INDS_ADDRESS_INDEX ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 358
  end
  object AddressOtherDataSource: TDataSource
    DataSet = AddressOtherDataSet
    Left = 450
    Top = 414
  end
  object AddressOtherDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ADDRESS_OTHER'
      'FROM'
      '    CAT_INDS_ADDRESS_OTHER ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 414
  end
  object PassportSerialDataSource: TDataSource
    DataSet = PassportSerialDataSet
    Left = 450
    Top = 470
  end
  object PassportSerialDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    PASSPORT_SERIAL'
      'FROM'
      '    CAT_INDS_PASSPORT_SERIAL ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 470
  end
  object PassportNumberDataSource: TDataSource
    DataSet = PassportNumberDataSet
    Left = 450
    Top = 526
  end
  object PassportNumberDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    PASSPORT_NUMBER'
      'FROM'
      '    CAT_INDS_PASSPORT_NUMBER ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 526
  end
  object PassportIssuerDataSource: TDataSource
    DataSet = PassportIssuerDataSet
    Left = 450
    Top = 582
  end
  object PassportIssuerDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    PASSPORT_ISSUER'
      'FROM'
      '    CAT_INDS_PASSPORT_ISSUER ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 582
  end
  object PassportIssuerDeptDataSource: TDataSource
    DataSet = PassportIssuerDeptDataSet
    Left = 450
    Top = 638
  end
  object PassportIssuerDeptDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    PASSPORT_ISSUER_DEPT'
      'FROM'
      '    CAT_INDS_PASSPORT_ISSUER_DEPT ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 638
  end
  object PassportIssuerStateDataSource: TDataSource
    DataSet = PassportIssuerStateDataSet
    Left = 450
    Top = 694
  end
  object PassportIssuerStateDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    PASSPORT_ISSUER_DEPT'
      'FROM'
      '    CAT_INDS_PASSPORT_ISSUER_DEPT ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 694
  end
  object PassportForeignSerialDataSource: TDataSource
    DataSet = PassportForeignSerialDataSet
    Left = 450
    Top = 750
  end
  object PassportForeignSerialDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    PASSPORT_FOREIGN_SERIAL'
      'FROM'
      '    CAT_INDS_PASSPORT_FRN_SERIAL ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 322
    Top = 750
  end
  object PassportForeignNumberDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    PASSPORT_FOREIGN_NUMBER'
      'FROM'
      '    CAT_INDS_PASSPORT_FRN_NUMBER ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 578
    Top = 94
  end
  object PassportForeignNumberDataSource: TDataSource
    DataSet = PassportForeignNumberDataSet
    Left = 706
    Top = 94
  end
  object PassportForeignIssuerDataSource: TDataSource
    DataSet = PassportForeignIssuerDataSet
    Left = 706
    Top = 142
  end
  object PassportForeignIssuerDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    PASSPORT_FOREIGN_ISSUER'
      'FROM'
      '    CAT_INDS_PASSPORT_FRN_ISSUER ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 578
    Top = 142
  end
  object IdNumberDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ID_NUMBER'
      'FROM'
      '    CAT_INDS_ID_NUMBER ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 578
    Top = 190
  end
  object IdNumberDataSource: TDataSource
    DataSet = IdNumberDataSet
    Left = 706
    Top = 190
  end
  object IdNumberAbsentReasonDataSource: TDataSource
    DataSet = IdNumberAbsentReasonDataSet
    Left = 706
    Top = 246
  end
  object IdNumberAbsentReasonDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ID_NUMBER_ABSENT_REASON'
      'FROM'
      '    CAT_INDS_ID_NUMBER_ABSENT_RSN ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 578
    Top = 246
  end
  object DisablementGroupDataSource: TDataSource
    DataSet = DisablementGroupDataSet
    Left = 706
    Top = 302
  end
  object DisablementGroupDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    DISABLEMENT_GROUP'
      'FROM'
      '    CAT_INDS_DISABLEMENT_GROUP ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 578
    Top = 302
  end
  object DisablementDocumentDataSource: TDataSource
    DataSet = DisablementDocumentDataSet
    Left = 706
    Top = 358
  end
  object DisablementDocumentDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    DISABLEMENT_DOCUMENT'
      'FROM'
      '    CAT_INDS_DISABLEMENT_DOCUMENT ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 578
    Top = 358
  end
  object BirthCertificateSerialDataSource: TDataSource
    DataSet = BirthCertificateSerialDataSet
    Left = 706
    Top = 414
  end
  object BirthCertificateSerialDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    BIRTH_CERTIFICATE_SERIAL'
      'FROM'
      '    CAT_INDS_BRTH_CERT_SERIAL ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 578
    Top = 414
  end
  object BirthCertificateNumberDataSource: TDataSource
    DataSet = BirthCertificateNumberDataSet
    Left = 706
    Top = 470
  end
  object BirthCertificateNumberDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    BIRTH_CERTIFICATE_NUMBER'
      'FROM'
      '    CAT_INDS_BRTH_CERT_NUMBER ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 578
    Top = 470
  end
  object BirthCertificateIssuerDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    BIRTH_CERTIFICATE_ISSUER'
      'FROM'
      '    CAT_INDS_BRTH_CERT_ISSUER ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 578
    Top = 526
  end
  object BirthCertificateIssuerDataSource: TDataSource
    DataSet = BirthCertificateIssuerDataSet
    Left = 706
    Top = 526
  end
  object BirthCertificateIssuerDeptDataSource: TDataSource
    DataSet = BirthCertificateIssuerDeptDataSet
    Left = 706
    Top = 582
  end
  object BirthCertificateIssuerDeptDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    BIRTH_CERTIFICATE_ISSUER_DEPT'
      'FROM'
      '    CAT_INDS_BRTH_CERT_ISSUER_DEPT ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 578
    Top = 582
  end
  object BirthCertificateIssuerStateDataSource: TDataSource
    DataSet = BirthCertificateIssuerStateDataSet
    Left = 706
    Top = 638
  end
  object BirthCertificateIssuerStateDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    BIRTH_CERTIFICATE_ISSUER_STATE'
      'FROM'
      '    CAT_INDS_BRTH_CERT_ISSUER_STATE ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 578
    Top = 638
  end
  object MarriageMemberDataSource: TDataSource
    DataSet = MarriageMemberDataSet
    Left = 706
    Top = 694
  end
  object MarriageMemberDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    MARRIAGE_MEMBER'
      'FROM'
      '    CAT_INDS_MARRIAGE_MEMBER ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 578
    Top = 694
  end
  object MarriageRegistratorDataSource: TDataSource
    DataSet = MarriageRegistratorDataSet
    Left = 706
    Top = 750
  end
  object MarriageRegistratorDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    MARRIAGE_REGISTRATOR'
      'FROM'
      '    CAT_INDS_MARRIAGE_REGISTRATOR ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 578
    Top = 750
  end
end
