object dmIndividual: TdmIndividual
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 827
  Width = 1049
  object SurnamesDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    SURNAME'
      'FROM'
      '    CAT_INDS_SURNAME ')
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
    UniDirectional = True
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
      '    SHOW_PASSPORT_DATA = :SHOW_PASSPORT_DATA,'
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
      '    MIDDLE_CASE_ABBREVIATION'
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
      '    :SHOW_PASSPORT_DATA,'
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
      '    MIDDLE_CASE_ABBREVIATION'
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
      '    MIDDLE_CASE_ABBREVIATION'
      'FROM'
      '    CATALOG_INDIVIDUALS ')
    AutoUpdateOptions.UpdateTableName = 'CATALOG_INDIVIDUALS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'GEN_CATALOG_INDIVIDUALS_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.GeneratorStep = 0
    AutoUpdateOptions.UseReturningFields = [rfKeyFields]
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 64
    Top = 32
    oDontAutoClose = True
    oFreeHandlesAfterClose = True
    oFetchAll = True
    object IndividualsDataSetID: TFIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Size = 0
    end
    object IndividualsDataSetSURNAME: TFIBWideStringField
      FieldName = 'SURNAME'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetNAME: TFIBWideStringField
      FieldName = 'NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetMIDDLE: TFIBWideStringField
      FieldName = 'MIDDLE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetGENDER: TFIBSmallIntField
      FieldName = 'GENDER'
    end
    object IndividualsDataSetSTATE: TFIBSmallIntField
      FieldName = 'STATE'
    end
    object IndividualsDataSetPERSONAL_DOCUMENT: TFIBSmallIntField
      FieldName = 'PERSONAL_DOCUMENT'
    end
    object IndividualsDataSetBIRTH_DATE: TFIBDateField
      FieldName = 'BIRTH_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object IndividualsDataSetBIRTH_PLACE: TFIBWideStringField
      FieldName = 'BIRTH_PLACE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetDISABLEMENT: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'DISABLEMENT'
    end
    object IndividualsDataSetDISABLEMENT_GROUP: TFIBWideStringField
      FieldName = 'DISABLEMENT_GROUP'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetDISABLEMENT_DOCUMENT: TFIBWideStringField
      FieldName = 'DISABLEMENT_DOCUMENT'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetFOREIGN_ADDRESS_TYPE: TFIBSmallIntField
      FieldName = 'FOREIGN_ADDRESS_TYPE'
    end
    object IndividualsDataSetFOREIGN_ADDRESS: TFIBMemoField
      FieldName = 'FOREIGN_ADDRESS'
      BlobType = ftWideMemo
      Size = 8
    end
    object IndividualsDataSetID_NUMBER: TFIBWideStringField
      FieldName = 'ID_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetID_NUMBER_ABSENT: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'ID_NUMBER_ABSENT'
    end
    object IndividualsDataSetID_NUMBER_ABSENT_REASON: TFIBMemoField
      FieldName = 'ID_NUMBER_ABSENT_REASON'
      BlobType = ftWideMemo
      Size = 8
    end
    object IndividualsDataSetPASSPORT_SERIAL: TFIBWideStringField
      FieldName = 'PASSPORT_SERIAL'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetPASSPORT_NUMBER: TFIBWideStringField
      FieldName = 'PASSPORT_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetPASSPORT_ISSUE_DATE: TFIBDateField
      FieldName = 'PASSPORT_ISSUE_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object IndividualsDataSetPASSPORT_ISSUER: TFIBWideStringField
      FieldName = 'PASSPORT_ISSUER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetPASSPORT_ISSUER_DEPT: TFIBWideStringField
      FieldName = 'PASSPORT_ISSUER_DEPT'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetPASSPORT_ISSUER_STATE: TFIBWideStringField
      FieldName = 'PASSPORT_ISSUER_STATE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetPASSPORT_FOREIGN_SERIAL: TFIBWideStringField
      FieldName = 'PASSPORT_FOREIGN_SERIAL'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetPASSPORT_FOREIGN_NUMBER: TFIBWideStringField
      FieldName = 'PASSPORT_FOREIGN_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetPASSPORT_FOREIGN_ISSUE_DATE: TFIBDateField
      FieldName = 'PASSPORT_FOREIGN_ISSUE_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object IndividualsDataSetPASSPORT_FOREIGN_EXPIRATION: TFIBDateField
      FieldName = 'PASSPORT_FOREIGN_EXPIRATION'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object IndividualsDataSetPASSPORT_FOREIGN_ISSUER: TFIBWideStringField
      FieldName = 'PASSPORT_FOREIGN_ISSUER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetBIRTH_CERTIFICATE_SERIAL: TFIBWideStringField
      FieldName = 'BIRTH_CERTIFICATE_SERIAL'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetBIRTH_CERTIFICATE_NUMBER: TFIBWideStringField
      FieldName = 'BIRTH_CERTIFICATE_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetBIRTH_CERTIFICATE_ISSUE_DATE: TFIBDateField
      FieldName = 'BIRTH_CERTIFICATE_ISSUE_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object IndividualsDataSetBIRTH_CERTIFICATE_ISSUER: TFIBWideStringField
      FieldName = 'BIRTH_CERTIFICATE_ISSUER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetBIRTH_CERTIFICATE_ISSUER_DEPT: TFIBWideStringField
      FieldName = 'BIRTH_CERTIFICATE_ISSUER_DEPT'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetBIRTH_CERTIFICATE_ISSUER_STATE: TFIBWideStringField
      FieldName = 'BIRTH_CERTIFICATE_ISSUER_STATE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetPERSONAL_CERTIFICATE: TFIBMemoField
      FieldName = 'PERSONAL_CERTIFICATE'
      BlobType = ftWideMemo
      Size = 8
    end
    object IndividualsDataSetADDRESS_STATE: TFIBWideStringField
      FieldName = 'ADDRESS_STATE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetADDRESS_REGION: TFIBWideStringField
      FieldName = 'ADDRESS_REGION'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetADDRESS_LOCALITY_TYPE: TFIBWideStringField
      FieldName = 'ADDRESS_LOCALITY_TYPE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetADDRESS_LOCALITY: TFIBWideStringField
      FieldName = 'ADDRESS_LOCALITY'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetADDRESS_STREET_TYPE: TFIBWideStringField
      FieldName = 'ADDRESS_STREET_TYPE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetADDRESS_STREET: TFIBWideStringField
      FieldName = 'ADDRESS_STREET'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetADDRESS_BUILDING: TFIBWideStringField
      FieldName = 'ADDRESS_BUILDING'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetADDRESS_FLAT: TFIBWideStringField
      FieldName = 'ADDRESS_FLAT'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetADDRESS_CORPS: TFIBWideStringField
      FieldName = 'ADDRESS_CORPS'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetADDRESS_SECTION: TFIBWideStringField
      FieldName = 'ADDRESS_SECTION'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetADDRESS_INDEX: TFIBWideStringField
      FieldName = 'ADDRESS_INDEX'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetADDRESS_OTHER: TFIBWideStringField
      FieldName = 'ADDRESS_OTHER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetDESCRIPTION: TFIBMemoField
      FieldName = 'DESCRIPTION'
      BlobType = ftWideMemo
      Size = 8
    end
    object IndividualsDataSetMARRIAGE_REGISTRATOR: TFIBWideStringField
      FieldName = 'MARRIAGE_REGISTRATOR'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetMARRIAGE_REGISTERED_DATE: TFIBDateField
      FieldName = 'MARRIAGE_REGISTERED_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object IndividualsDataSetMARRIAGE_MEMBER: TFIBWideStringField
      FieldName = 'MARRIAGE_MEMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetSHOW_BIRTH_DATE: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'SHOW_BIRTH_DATE'
    end
    object IndividualsDataSetSHOW_ADDRESS: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'SHOW_ADDRESS'
    end
    object IndividualsDataSetSHOW_ID_NUMBER: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'SHOW_ID_NUMBER'
    end
    object IndividualsDataSetSHOW_PASSPORT_DATA: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'SHOW_PASSPORT_DATA'
    end
    object IndividualsDataSetSURNAME_CASE_NOMINATIVE: TFIBWideStringField
      FieldName = 'SURNAME_CASE_NOMINATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetSURNAME_CASE_GENITIVE: TFIBWideStringField
      FieldName = 'SURNAME_CASE_GENITIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetSURNAME_CASE_DATIVE: TFIBWideStringField
      FieldName = 'SURNAME_CASE_DATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetSURNAME_CASE_ACCUSATIVE: TFIBWideStringField
      FieldName = 'SURNAME_CASE_ACCUSATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetSURNAME_CASE_ABLATIVE: TFIBWideStringField
      FieldName = 'SURNAME_CASE_ABLATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetSURNAME_CASE_LOCATIVE: TFIBWideStringField
      FieldName = 'SURNAME_CASE_LOCATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetSURNAME_CASE_VOCATIVE: TFIBWideStringField
      FieldName = 'SURNAME_CASE_VOCATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetNAME_CASE_NOMINATIVE: TFIBWideStringField
      FieldName = 'NAME_CASE_NOMINATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetNAME_CASE_GENITIVE: TFIBWideStringField
      FieldName = 'NAME_CASE_GENITIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetNAME_CASE_DATIVE: TFIBWideStringField
      FieldName = 'NAME_CASE_DATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetNAME_CASE_ACCUSATIVE: TFIBWideStringField
      FieldName = 'NAME_CASE_ACCUSATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetNAME_CASE_ABLATIVE: TFIBWideStringField
      FieldName = 'NAME_CASE_ABLATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetNAME_CASE_LOCATIVE: TFIBWideStringField
      FieldName = 'NAME_CASE_LOCATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetNAME_CASE_VOCATIVE: TFIBWideStringField
      FieldName = 'NAME_CASE_VOCATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetNAME_CASE_ABBREVIATION: TFIBWideStringField
      FieldName = 'NAME_CASE_ABBREVIATION'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetMIDDLE_CASE_NOMINATIVE: TFIBWideStringField
      FieldName = 'MIDDLE_CASE_NOMINATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetMIDDLE_CASE_GENITIVE: TFIBWideStringField
      FieldName = 'MIDDLE_CASE_GENITIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetMIDDLE_CASE_DATIVE: TFIBWideStringField
      FieldName = 'MIDDLE_CASE_DATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetMIDDLE_CASE_ACCUSATIVE: TFIBWideStringField
      FieldName = 'MIDDLE_CASE_ACCUSATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetMIDDLE_CASE_ABLATIVE: TFIBWideStringField
      FieldName = 'MIDDLE_CASE_ABLATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetMIDDLE_CASE_LOCATIVE: TFIBWideStringField
      FieldName = 'MIDDLE_CASE_LOCATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetMIDDLE_CASE_VOCATIVE: TFIBWideStringField
      FieldName = 'MIDDLE_CASE_VOCATIVE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualsDataSetMIDDLE_CASE_ABBREVIATION: TFIBWideStringField
      FieldName = 'MIDDLE_CASE_ABBREVIATION'
      Size = 255
      EmptyStrToNull = True
    end
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
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 578
    Top = 750
  end
end
