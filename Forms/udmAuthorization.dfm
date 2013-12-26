object dmAuthorization: TdmAuthorization
  OldCreateOrder = False
  Height = 571
  Width = 764
  object IndividualConstituentsDataSource: TDataSource
    DataSet = IndividualConstituentsDataSet
    Left = 196
    Top = 32
  end
  object IndividualConstituentsDataSet: TpFIBDataSet
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
      '    VIEW_CATALOG_INDIVIDUALS '
      'WHERE ID = :ID')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 64
    Top = 32
    object IndividualConstituentsDataSetID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object IndividualConstituentsDataSetSURNAME: TFIBWideStringField
      FieldName = 'SURNAME'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetNAME: TFIBWideStringField
      FieldName = 'NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetMIDDLE: TFIBWideStringField
      FieldName = 'MIDDLE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetGENDER: TFIBWideStringField
      FieldName = 'GENDER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetSTATE: TFIBWideStringField
      FieldName = 'STATE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetPERSONAL_DOCUMENT: TFIBWideStringField
      FieldName = 'PERSONAL_DOCUMENT'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetBIRTH_DATE: TFIBDateField
      FieldName = 'BIRTH_DATE'
    end
    object IndividualConstituentsDataSetBIRTH_PLACE: TFIBWideStringField
      FieldName = 'BIRTH_PLACE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetDISABLEMENT: TFIBSmallIntField
      FieldName = 'DISABLEMENT'
    end
    object IndividualConstituentsDataSetDISABLEMENT_GROUP: TFIBWideStringField
      FieldName = 'DISABLEMENT_GROUP'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetDISABLEMENT_DOCUMENT: TFIBWideStringField
      FieldName = 'DISABLEMENT_DOCUMENT'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetFOREIGN_ADDRESS_TYPE: TFIBSmallIntField
      FieldName = 'FOREIGN_ADDRESS_TYPE'
    end
    object IndividualConstituentsDataSetFOREIGN_ADDRESS: TFIBMemoField
      FieldName = 'FOREIGN_ADDRESS'
      BlobType = ftWideMemo
      Size = 8
    end
    object IndividualConstituentsDataSetID_NUMBER: TFIBWideStringField
      FieldName = 'ID_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetID_NUMBER_ABSENT: TFIBSmallIntField
      FieldName = 'ID_NUMBER_ABSENT'
    end
    object IndividualConstituentsDataSetID_NUMBER_ABSENT_REASON: TFIBMemoField
      FieldName = 'ID_NUMBER_ABSENT_REASON'
      BlobType = ftWideMemo
      Size = 8
    end
    object IndividualConstituentsDataSetPASSPORT_SERIAL: TFIBWideStringField
      FieldName = 'PASSPORT_SERIAL'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetPASSPORT_NUMBER: TFIBWideStringField
      FieldName = 'PASSPORT_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetPASSPORT_ISSUE_DATE: TFIBDateField
      FieldName = 'PASSPORT_ISSUE_DATE'
    end
    object IndividualConstituentsDataSetPASSPORT_ISSUER: TFIBWideStringField
      FieldName = 'PASSPORT_ISSUER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetPASSPORT_ISSUER_DEPT: TFIBWideStringField
      FieldName = 'PASSPORT_ISSUER_DEPT'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetPASSPORT_ISSUER_STATE: TFIBWideStringField
      FieldName = 'PASSPORT_ISSUER_STATE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetPASSPORT_FOREIGN_SERIAL: TFIBWideStringField
      FieldName = 'PASSPORT_FOREIGN_SERIAL'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetPASSPORT_FOREIGN_NUMBER: TFIBWideStringField
      FieldName = 'PASSPORT_FOREIGN_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetPASSPORT_FOREIGN_ISSUE_DATE: TFIBDateField
      FieldName = 'PASSPORT_FOREIGN_ISSUE_DATE'
    end
    object IndividualConstituentsDataSetPASSPORT_FOREIGN_EXPIRATION: TFIBDateField
      FieldName = 'PASSPORT_FOREIGN_EXPIRATION'
    end
    object IndividualConstituentsDataSetPASSPORT_FOREIGN_ISSUER: TFIBWideStringField
      FieldName = 'PASSPORT_FOREIGN_ISSUER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetBIRTH_CERTIFICATE_SERIAL: TFIBWideStringField
      FieldName = 'BIRTH_CERTIFICATE_SERIAL'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetBIRTH_CERTIFICATE_NUMBER: TFIBWideStringField
      FieldName = 'BIRTH_CERTIFICATE_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetBIRTH_CERTIFICATE_ISSUE_DATE: TFIBDateField
      FieldName = 'BIRTH_CERTIFICATE_ISSUE_DATE'
    end
    object IndividualConstituentsDataSetBIRTH_CERTIFICATE_ISSUER: TFIBWideStringField
      FieldName = 'BIRTH_CERTIFICATE_ISSUER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetBIRTH_CERTIFICATE_ISSUER_DEPT: TFIBWideStringField
      FieldName = 'BIRTH_CERTIFICATE_ISSUER_DEPT'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetBIRTH_CERTIFICATE_ISSUER_STATE: TFIBWideStringField
      FieldName = 'BIRTH_CERTIFICATE_ISSUER_STATE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetPERSONAL_CERTIFICATE: TFIBMemoField
      FieldName = 'PERSONAL_CERTIFICATE'
      BlobType = ftWideMemo
      Size = 8
    end
    object IndividualConstituentsDataSetADDRESS_STATE: TFIBWideStringField
      FieldName = 'ADDRESS_STATE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetADDRESS_REGION: TFIBWideStringField
      FieldName = 'ADDRESS_REGION'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetADDRESS_LOCALITY_TYPE: TFIBWideStringField
      FieldName = 'ADDRESS_LOCALITY_TYPE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetADDRESS_LOCALITY: TFIBWideStringField
      FieldName = 'ADDRESS_LOCALITY'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetADDRESS_STREET_TYPE: TFIBWideStringField
      FieldName = 'ADDRESS_STREET_TYPE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetADDRESS_STREET: TFIBWideStringField
      FieldName = 'ADDRESS_STREET'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetADDRESS_BUILDING: TFIBWideStringField
      FieldName = 'ADDRESS_BUILDING'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetADDRESS_FLAT: TFIBWideStringField
      FieldName = 'ADDRESS_FLAT'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetADDRESS_CORPS: TFIBWideStringField
      FieldName = 'ADDRESS_CORPS'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetADDRESS_SECTION: TFIBWideStringField
      FieldName = 'ADDRESS_SECTION'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetADDRESS_INDEX: TFIBWideStringField
      FieldName = 'ADDRESS_INDEX'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetADDRESS_OTHER: TFIBWideStringField
      FieldName = 'ADDRESS_OTHER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetDESCRIPTION: TFIBMemoField
      FieldName = 'DESCRIPTION'
      BlobType = ftWideMemo
      Size = 8
    end
    object IndividualConstituentsDataSetMARRIAGE_REGISTRATOR: TFIBWideStringField
      FieldName = 'MARRIAGE_REGISTRATOR'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetMARRIAGE_REGISTERED_DATE: TFIBDateField
      FieldName = 'MARRIAGE_REGISTERED_DATE'
    end
    object IndividualConstituentsDataSetMARRIAGE_MEMBER: TFIBWideStringField
      FieldName = 'MARRIAGE_MEMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualConstituentsDataSetSHOW_BIRTH_DATE: TFIBSmallIntField
      FieldName = 'SHOW_BIRTH_DATE'
    end
    object IndividualConstituentsDataSetSHOW_ADDRESS: TFIBSmallIntField
      FieldName = 'SHOW_ADDRESS'
    end
    object IndividualConstituentsDataSetSHOW_ID_NUMBER: TFIBSmallIntField
      FieldName = 'SHOW_ID_NUMBER'
    end
    object IndividualConstituentsDataSetSHOW_PASSPORT_DATA: TFIBSmallIntField
      FieldName = 'SHOW_PASSPORT_DATA'
    end
  end
  object IndividualRepresentativesDataSource: TDataSource
    DataSet = IndividualRepresentativesDataSet
    Left = 196
    Top = 88
  end
  object IndividualRepresentativesDataSet: TpFIBDataSet
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
      '    VIEW_CATALOG_INDIVIDUALS '
      'WHERE ID = :ID')
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 64
    Top = 88
    object IndividualRepresentativesDataSetID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object IndividualRepresentativesDataSetSURNAME: TFIBWideStringField
      FieldName = 'SURNAME'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetNAME: TFIBWideStringField
      FieldName = 'NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetMIDDLE: TFIBWideStringField
      FieldName = 'MIDDLE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetGENDER: TFIBWideStringField
      FieldName = 'GENDER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetSTATE: TFIBWideStringField
      FieldName = 'STATE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetPERSONAL_DOCUMENT: TFIBWideStringField
      FieldName = 'PERSONAL_DOCUMENT'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetBIRTH_DATE: TFIBDateField
      FieldName = 'BIRTH_DATE'
    end
    object IndividualRepresentativesDataSetBIRTH_PLACE: TFIBWideStringField
      FieldName = 'BIRTH_PLACE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetDISABLEMENT: TFIBSmallIntField
      FieldName = 'DISABLEMENT'
    end
    object IndividualRepresentativesDataSetDISABLEMENT_GROUP: TFIBWideStringField
      FieldName = 'DISABLEMENT_GROUP'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetDISABLEMENT_DOCUMENT: TFIBWideStringField
      FieldName = 'DISABLEMENT_DOCUMENT'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetFOREIGN_ADDRESS_TYPE: TFIBSmallIntField
      FieldName = 'FOREIGN_ADDRESS_TYPE'
    end
    object IndividualRepresentativesDataSetFOREIGN_ADDRESS: TFIBMemoField
      FieldName = 'FOREIGN_ADDRESS'
      BlobType = ftWideMemo
      Size = 8
    end
    object IndividualRepresentativesDataSetID_NUMBER: TFIBWideStringField
      FieldName = 'ID_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetID_NUMBER_ABSENT: TFIBSmallIntField
      FieldName = 'ID_NUMBER_ABSENT'
    end
    object IndividualRepresentativesDataSetID_NUMBER_ABSENT_REASON: TFIBMemoField
      FieldName = 'ID_NUMBER_ABSENT_REASON'
      BlobType = ftWideMemo
      Size = 8
    end
    object IndividualRepresentativesDataSetPASSPORT_SERIAL: TFIBWideStringField
      FieldName = 'PASSPORT_SERIAL'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetPASSPORT_NUMBER: TFIBWideStringField
      FieldName = 'PASSPORT_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetPASSPORT_ISSUE_DATE: TFIBDateField
      FieldName = 'PASSPORT_ISSUE_DATE'
    end
    object IndividualRepresentativesDataSetPASSPORT_ISSUER: TFIBWideStringField
      FieldName = 'PASSPORT_ISSUER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetPASSPORT_ISSUER_DEPT: TFIBWideStringField
      FieldName = 'PASSPORT_ISSUER_DEPT'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetPASSPORT_ISSUER_STATE: TFIBWideStringField
      FieldName = 'PASSPORT_ISSUER_STATE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetPASSPORT_FOREIGN_SERIAL: TFIBWideStringField
      FieldName = 'PASSPORT_FOREIGN_SERIAL'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetPASSPORT_FOREIGN_NUMBER: TFIBWideStringField
      FieldName = 'PASSPORT_FOREIGN_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetPASSPORT_FOREIGN_ISSUE_DATE: TFIBDateField
      FieldName = 'PASSPORT_FOREIGN_ISSUE_DATE'
    end
    object IndividualRepresentativesDataSetPASSPORT_FOREIGN_EXPIRATION: TFIBDateField
      FieldName = 'PASSPORT_FOREIGN_EXPIRATION'
    end
    object IndividualRepresentativesDataSetPASSPORT_FOREIGN_ISSUER: TFIBWideStringField
      FieldName = 'PASSPORT_FOREIGN_ISSUER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetBIRTH_CERTIFICATE_SERIAL: TFIBWideStringField
      FieldName = 'BIRTH_CERTIFICATE_SERIAL'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetBIRTH_CERTIFICATE_NUMBER: TFIBWideStringField
      FieldName = 'BIRTH_CERTIFICATE_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetBIRTH_CERTIFICATE_ISSUE_DATE: TFIBDateField
      FieldName = 'BIRTH_CERTIFICATE_ISSUE_DATE'
    end
    object IndividualRepresentativesDataSetBIRTH_CERTIFICATE_ISSUER: TFIBWideStringField
      FieldName = 'BIRTH_CERTIFICATE_ISSUER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetBIRTH_CERTIFICATE_ISSUER_DEPT: TFIBWideStringField
      FieldName = 'BIRTH_CERTIFICATE_ISSUER_DEPT'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetBIRTH_CERTIFICATE_ISSUER_STATE: TFIBWideStringField
      FieldName = 'BIRTH_CERTIFICATE_ISSUER_STATE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetPERSONAL_CERTIFICATE: TFIBMemoField
      FieldName = 'PERSONAL_CERTIFICATE'
      BlobType = ftWideMemo
      Size = 8
    end
    object IndividualRepresentativesDataSetADDRESS_STATE: TFIBWideStringField
      FieldName = 'ADDRESS_STATE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetADDRESS_REGION: TFIBWideStringField
      FieldName = 'ADDRESS_REGION'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetADDRESS_LOCALITY_TYPE: TFIBWideStringField
      FieldName = 'ADDRESS_LOCALITY_TYPE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetADDRESS_LOCALITY: TFIBWideStringField
      FieldName = 'ADDRESS_LOCALITY'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetADDRESS_STREET_TYPE: TFIBWideStringField
      FieldName = 'ADDRESS_STREET_TYPE'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetADDRESS_STREET: TFIBWideStringField
      FieldName = 'ADDRESS_STREET'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetADDRESS_BUILDING: TFIBWideStringField
      FieldName = 'ADDRESS_BUILDING'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetADDRESS_FLAT: TFIBWideStringField
      FieldName = 'ADDRESS_FLAT'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetADDRESS_CORPS: TFIBWideStringField
      FieldName = 'ADDRESS_CORPS'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetADDRESS_SECTION: TFIBWideStringField
      FieldName = 'ADDRESS_SECTION'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetADDRESS_INDEX: TFIBWideStringField
      FieldName = 'ADDRESS_INDEX'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetADDRESS_OTHER: TFIBWideStringField
      FieldName = 'ADDRESS_OTHER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetDESCRIPTION: TFIBMemoField
      FieldName = 'DESCRIPTION'
      BlobType = ftWideMemo
      Size = 8
    end
    object IndividualRepresentativesDataSetMARRIAGE_REGISTRATOR: TFIBWideStringField
      FieldName = 'MARRIAGE_REGISTRATOR'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetMARRIAGE_REGISTERED_DATE: TFIBDateField
      FieldName = 'MARRIAGE_REGISTERED_DATE'
    end
    object IndividualRepresentativesDataSetMARRIAGE_MEMBER: TFIBWideStringField
      FieldName = 'MARRIAGE_MEMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object IndividualRepresentativesDataSetSHOW_BIRTH_DATE: TFIBSmallIntField
      FieldName = 'SHOW_BIRTH_DATE'
    end
    object IndividualRepresentativesDataSetSHOW_ADDRESS: TFIBSmallIntField
      FieldName = 'SHOW_ADDRESS'
    end
    object IndividualRepresentativesDataSetSHOW_ID_NUMBER: TFIBSmallIntField
      FieldName = 'SHOW_ID_NUMBER'
    end
    object IndividualRepresentativesDataSetSHOW_PASSPORT_DATA: TFIBSmallIntField
      FieldName = 'SHOW_PASSPORT_DATA'
    end
  end
  object DataSource1: TDataSource
    DataSet = pFIBDataSet1
    Left = 460
    Top = 88
  end
  object pFIBDataSet1: TpFIBDataSet
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
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 328
    Top = 88
  end
  object DataSource2: TDataSource
    DataSet = pFIBDataSet2
    Left = 460
    Top = 32
  end
  object pFIBDataSet2: TpFIBDataSet
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
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 328
    Top = 32
  end
end
