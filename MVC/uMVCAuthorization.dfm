object MVCAuthorization: TMVCAuthorization
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 292
  Width = 833
  object Authorization: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CATALOG_AUTHORIZATIONS'
      'SET '
      '    TRANSPORT_KIND = :TRANSPORT_KIND,'
      '    TRANSPORT_BRAND = :TRANSPORT_BRAND,'
      '    TRANSPORT_MODEL = :TRANSPORT_MODEL,'
      '    TRANSPORT_TYPE = :TRANSPORT_TYPE,'
      '    TRANSPORT_COLOR = :TRANSPORT_COLOR,'
      '    TRANSPORT_CHASSIS_NUMBER = :TRANSPORT_CHASSIS_NUMBER,'
      '    TRANSPORT_LOAD_WEIGHT = :TRANSPORT_LOAD_WEIGHT,'
      '    TRANSPORT_WEIGHT = :TRANSPORT_WEIGHT,'
      '    TRANSPORT_ENGINE_VOLUME = :TRANSPORT_ENGINE_VOLUME,'
      '    TRANSPORT_REG_NUMBER = :TRANSPORT_REG_NUMBER,'
      '    TRANSPORT_FABRICATION_DATE = :TRANSPORT_FABRICATION_DATE,'
      
        '    TRANSPORT_CERTIFICATE_SERIAL = :TRANSPORT_CERTIFICATE_SERIAL' +
        ','
      
        '    TRANSPORT_CERTIFICATE_NUMBER = :TRANSPORT_CERTIFICATE_NUMBER' +
        ','
      
        '    TRANSPORT_CERTIFICATE_REG_DATE = :TRANSPORT_CERTIFICATE_REG_' +
        'DATE,'
      
        '    TRANSPORT_CERTIFICATE_ISSUER = :TRANSPORT_CERTIFICATE_ISSUER' +
        ','
      '    TRANSITE_NUMBER = :TRANSITE_NUMBER,'
      
        '    TRANSITE_NUMBER_REMOVED_DATE = :TRANSITE_NUMBER_REMOVED_DATE' +
        ','
      '    AUTHORIZATION_NUMBER = :AUTHORIZATION_NUMBER,'
      '    AUTHORIZATION_VALIDITY_DATE = :AUTHORIZATION_VALIDITY_DATE,'
      '    AUTHORIZATION_DATE = :AUTHORIZATION_DATE,'
      '    AUTHORIZATION_DESCRIPTION = :AUTHORIZATION_DESCRIPTION,'
      '    TRANSITE = :TRANSITE,'
      '    SUBSTITUTION = :SUBSTITUTION'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CATALOG_AUTHORIZATIONS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CATALOG_AUTHORIZATIONS('
      '    TRANSPORT_KIND,'
      '    TRANSPORT_BRAND,'
      '    TRANSPORT_MODEL,'
      '    TRANSPORT_TYPE,'
      '    TRANSPORT_COLOR,'
      '    TRANSPORT_CHASSIS_NUMBER,'
      '    TRANSPORT_LOAD_WEIGHT,'
      '    TRANSPORT_WEIGHT,'
      '    TRANSPORT_ENGINE_VOLUME,'
      '    TRANSPORT_REG_NUMBER,'
      '    TRANSPORT_FABRICATION_DATE,'
      '    TRANSPORT_CERTIFICATE_SERIAL,'
      '    TRANSPORT_CERTIFICATE_NUMBER,'
      '    TRANSPORT_CERTIFICATE_REG_DATE,'
      '    TRANSPORT_CERTIFICATE_ISSUER,'
      '    TRANSITE_NUMBER,'
      '    TRANSITE_NUMBER_REMOVED_DATE,'
      '    AUTHORIZATION_NUMBER,'
      '    AUTHORIZATION_VALIDITY_DATE,'
      '    AUTHORIZATION_DATE,'
      '    AUTHORIZATION_DESCRIPTION,'
      '    TRANSITE,'
      '    SUBSTITUTION'
      ')'
      'VALUES('
      '    :TRANSPORT_KIND,'
      '    :TRANSPORT_BRAND,'
      '    :TRANSPORT_MODEL,'
      '    :TRANSPORT_TYPE,'
      '    :TRANSPORT_COLOR,'
      '    :TRANSPORT_CHASSIS_NUMBER,'
      '    :TRANSPORT_LOAD_WEIGHT,'
      '    :TRANSPORT_WEIGHT,'
      '    :TRANSPORT_ENGINE_VOLUME,'
      '    :TRANSPORT_REG_NUMBER,'
      '    :TRANSPORT_FABRICATION_DATE,'
      '    :TRANSPORT_CERTIFICATE_SERIAL,'
      '    :TRANSPORT_CERTIFICATE_NUMBER,'
      '    :TRANSPORT_CERTIFICATE_REG_DATE,'
      '    :TRANSPORT_CERTIFICATE_ISSUER,'
      '    :TRANSITE_NUMBER,'
      '    :TRANSITE_NUMBER_REMOVED_DATE,'
      '    :AUTHORIZATION_NUMBER,'
      '    :AUTHORIZATION_VALIDITY_DATE,'
      '    :AUTHORIZATION_DATE,'
      '    :AUTHORIZATION_DESCRIPTION,'
      '    :TRANSITE,'
      '    :SUBSTITUTION'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    TRANSPORT_KIND,'
      '    TRANSPORT_BRAND,'
      '    TRANSPORT_MODEL,'
      '    TRANSPORT_TYPE,'
      '    TRANSPORT_COLOR,'
      '    TRANSPORT_CHASSIS_NUMBER,'
      '    TRANSPORT_LOAD_WEIGHT,'
      '    TRANSPORT_WEIGHT,'
      '    TRANSPORT_ENGINE_VOLUME,'
      '    TRANSPORT_REG_NUMBER,'
      '    TRANSPORT_FABRICATION_DATE,'
      '    TRANSPORT_CERTIFICATE_SERIAL,'
      '    TRANSPORT_CERTIFICATE_NUMBER,'
      '    TRANSPORT_CERTIFICATE_REG_DATE,'
      '    TRANSPORT_CERTIFICATE_ISSUER,'
      '    TRANSITE_NUMBER,'
      '    TRANSITE_NUMBER_REMOVED_DATE,'
      '    AUTHORIZATION_NUMBER,'
      '    AUTHORIZATION_VALIDITY_DATE,'
      '    AUTHORIZATION_DATE,'
      '    AUTHORIZATION_DESCRIPTION,'
      '    TRANSITE,'
      '    SUBSTITUTION'
      'FROM'
      '    CATALOG_AUTHORIZATIONS '
      ''
      ' WHERE '
      '        CATALOG_AUTHORIZATIONS.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    TRANSPORT_KIND,'
      '    TRANSPORT_BRAND,'
      '    TRANSPORT_MODEL,'
      '    TRANSPORT_TYPE,'
      '    TRANSPORT_COLOR,'
      '    TRANSPORT_CHASSIS_NUMBER,'
      '    TRANSPORT_LOAD_WEIGHT,'
      '    TRANSPORT_WEIGHT,'
      '    TRANSPORT_ENGINE_VOLUME,'
      '    TRANSPORT_REG_NUMBER,'
      '    TRANSPORT_FABRICATION_DATE,'
      '    TRANSPORT_CERTIFICATE_SERIAL,'
      '    TRANSPORT_CERTIFICATE_NUMBER,'
      '    TRANSPORT_CERTIFICATE_REG_DATE,'
      '    TRANSPORT_CERTIFICATE_ISSUER,'
      '    TRANSITE_NUMBER,'
      '    TRANSITE_NUMBER_REMOVED_DATE,'
      '    AUTHORIZATION_NUMBER,'
      '    AUTHORIZATION_VALIDITY_DATE,'
      '    AUTHORIZATION_DATE,'
      '    AUTHORIZATION_DESCRIPTION,'
      '    TRANSITE,'
      '    SUBSTITUTION'
      'FROM'
      '    CATALOG_AUTHORIZATIONS '
      'WHERE'
      '    ID = :ID')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 96
    Top = 80
  end
  object Constituent: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    SURNAME,'
      '    NAME,'
      '    MIDDLE,'
      '    GENDER,'
      '    GENDER_ID,'
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
      '    SHOW_PASSPORT_DATA,'
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
      '    MIDDLE_CASE_ABBREVIATION,'
      '    AUTHORIZATION_ID,'
      '    RELATION_AUTH_CONST_ID'
      'FROM'
      '    VIEW_REL_AUTH_CONST '
      'WHERE'
      '    AUTHORIZATION_ID = :MAS_ID ')
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    DataSource = AuthorizationDataSource
    Left = 224
    Top = 80
  end
  object Representatives: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    SURNAME,'
      '    NAME,'
      '    MIDDLE,'
      '    GENDER,'
      '    GENDER_ID,'
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
      '    SHOW_PASSPORT_DATA,'
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
      '    MIDDLE_CASE_ABBREVIATION,'
      '    AUTHORIZATION_ID,'
      '    RELATION_AUTH_REPRES_ID'
      'FROM'
      '    VIEW_REL_AUTH_REPRES '
      'WHERE'
      '    AUTHORIZATION_ID = :MAS_ID ')
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    DataSource = AuthorizationDataSource
    Left = 352
    Top = 80
  end
  object AuthorizationDataSource: TDataSource
    DataSet = Authorization
    Left = 96
    Top = 16
  end
  object PaxCompiler: TPaxCompiler
    Alignment = 8
    DebugMode = False
    Left = 600
    Top = 80
  end
  object PaxPascalLanguage: TPaxPascalLanguage
    ExplicitOff = False
    CompleteBooleanEval = False
    UnitLookup = True
    PrintKeyword = 'print'
    PrintlnKeyword = 'println'
    Left = 600
    Top = 16
  end
  object PaxProgram: TPaxProgram
    Console = False
    Left = 680
    Top = 16
  end
  object ConstituentDataSource: TDataSource
    DataSet = Constituent
    Left = 224
    Top = 16
  end
  object RepresentativesDataSource: TDataSource
    DataSet = Representatives
    Left = 352
    Top = 16
  end
  object Notary: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    AUTHORIZATION_ID,'
      '    NOTARY_ID,'
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
      '    VIEW_REL_AUTH_NOTARY '
      'WHERE'
      '    AUTHORIZATION_ID = :MAS_ID ')
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    DataSource = AuthorizationDataSource
    Left = 472
    Top = 80
  end
  object NotaryDataSource: TDataSource
    DataSet = Notary
    Left = 472
    Top = 16
  end
end
