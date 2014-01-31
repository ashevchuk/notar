object dmAuthorization: TdmAuthorization
  OldCreateOrder = False
  Height = 606
  Width = 1015
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
    Left = 468
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
    Left = 336
    Top = 88
  end
  object DataSource2: TDataSource
    DataSet = pFIBDataSet2
    Left = 468
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
    Left = 336
    Top = 32
  end
  object AuthorizationsDataSource: TDataSource
    DataSet = AuthorizationsDataSet
    Left = 196
    Top = 152
  end
  object AuthorizationsDataSet: TpFIBDataSet
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
      ')'
      'VALUES('
      '    :ID,'
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
      '    CATALOG_AUTHORIZATIONS ')
    AutoUpdateOptions.UpdateTableName = 'CATALOG_AUTHORIZATIONS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_CATALOG_AUTHORIZATIONS_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.UseReturningFields = [rfKeyFields]
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 64
    Top = 152
    object AuthorizationsDataSetID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object AuthorizationsDataSetTRANSPORT_KIND: TFIBWideStringField
      FieldName = 'TRANSPORT_KIND'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetTRANSPORT_BRAND: TFIBWideStringField
      FieldName = 'TRANSPORT_BRAND'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetTRANSPORT_MODEL: TFIBWideStringField
      FieldName = 'TRANSPORT_MODEL'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetTRANSPORT_TYPE: TFIBWideStringField
      FieldName = 'TRANSPORT_TYPE'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetTRANSPORT_COLOR: TFIBWideStringField
      FieldName = 'TRANSPORT_COLOR'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetTRANSPORT_CHASSIS_NUMBER: TFIBWideStringField
      FieldName = 'TRANSPORT_CHASSIS_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetTRANSPORT_LOAD_WEIGHT: TFIBWideStringField
      FieldName = 'TRANSPORT_LOAD_WEIGHT'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetTRANSPORT_WEIGHT: TFIBWideStringField
      FieldName = 'TRANSPORT_WEIGHT'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetTRANSPORT_ENGINE_VOLUME: TFIBWideStringField
      FieldName = 'TRANSPORT_ENGINE_VOLUME'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetTRANSPORT_REG_NUMBER: TFIBWideStringField
      FieldName = 'TRANSPORT_REG_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetTRANSPORT_FABRICATION_DATE: TFIBDateField
      FieldName = 'TRANSPORT_FABRICATION_DATE'
    end
    object AuthorizationsDataSetTRANSPORT_CERTIFICATE_SERIAL: TFIBWideStringField
      FieldName = 'TRANSPORT_CERTIFICATE_SERIAL'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetTRANSPORT_CERTIFICATE_NUMBER: TFIBWideStringField
      FieldName = 'TRANSPORT_CERTIFICATE_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetTRANSPORT_CERTIFICATE_REG_DATE: TFIBDateField
      FieldName = 'TRANSPORT_CERTIFICATE_REG_DATE'
    end
    object AuthorizationsDataSetTRANSPORT_CERTIFICATE_ISSUER: TFIBWideStringField
      FieldName = 'TRANSPORT_CERTIFICATE_ISSUER'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetTRANSITE_NUMBER: TFIBWideStringField
      FieldName = 'TRANSITE_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetTRANSITE_NUMBER_REMOVED_DATE: TFIBDateField
      FieldName = 'TRANSITE_NUMBER_REMOVED_DATE'
    end
    object AuthorizationsDataSetAUTHORIZATION_NUMBER: TFIBWideStringField
      FieldName = 'AUTHORIZATION_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetAUTHORIZATION_VALIDITY_DATE: TFIBDateField
      FieldName = 'AUTHORIZATION_VALIDITY_DATE'
    end
    object AuthorizationsDataSetAUTHORIZATION_DATE: TFIBDateField
      FieldName = 'AUTHORIZATION_DATE'
    end
    object AuthorizationsDataSetAUTHORIZATION_DESCRIPTION: TFIBWideStringField
      FieldName = 'AUTHORIZATION_DESCRIPTION'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetTRANSITE: TFIBWideStringField
      FieldName = 'TRANSITE'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetSUBSTITUTION: TFIBWideStringField
      FieldName = 'SUBSTITUTION'
      Size = 255
      EmptyStrToNull = True
    end
  end
  object TransportKindDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TRANSPORT_KIND'
      'FROM'
      '    CAT_AUTH_TRANS_KIND ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 64
    Top = 256
  end
  object TransportKindDataSource: TDataSource
    DataSet = TransportKindDataSet
    Left = 196
    Top = 256
  end
  object TransportBrandDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TRANSPORT_BRAND'
      'FROM'
      '    CAT_AUTH_TRANS_BRAND ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 64
    Top = 312
  end
  object TransportBrandDataSource: TDataSource
    DataSet = TransportBrandDataSet
    Left = 196
    Top = 312
  end
  object TransportModelDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TRANSPORT_MODEL'
      'FROM'
      '    CAT_AUTH_TRANS_MODEL ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 64
    Top = 360
  end
  object TransportModelDataSource: TDataSource
    DataSet = TransportModelDataSet
    Left = 196
    Top = 360
  end
  object TransportTypeDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TRANSPORT_TYPE'
      'FROM'
      '    CAT_AUTH_TRANS_TYPE ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 64
    Top = 424
  end
  object TransportTypeDataSource: TDataSource
    DataSet = TransportTypeDataSet
    Left = 196
    Top = 424
  end
  object TransportColorDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TRANSPORT_COLOR'
      'FROM'
      '    CAT_AUTH_TRANS_COLOR ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 64
    Top = 480
  end
  object TransportColorDataSource: TDataSource
    DataSet = TransportColorDataSet
    Left = 196
    Top = 480
  end
  object TransportRegNumberDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TRANSPORT_REG_NUMBER'
      'FROM'
      '    CAT_AUTH_TRANS_REG_NUMBER ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 336
    Top = 480
  end
  object TransportRegNumberDataSource: TDataSource
    DataSet = TransportRegNumberDataSet
    Left = 468
    Top = 480
  end
  object TransportEngineVolumeDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TRANSPORT_ENGINE_VOLUME'
      'FROM'
      '    CAT_AUTH_TRANS_ENGINE_VOLUME ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 336
    Top = 424
  end
  object TransportEngineVolumeDataSource: TDataSource
    DataSet = TransportEngineVolumeDataSet
    Left = 468
    Top = 424
  end
  object TransportWeightDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TRANSPORT_WEIGHT'
      'FROM'
      '    CAT_AUTH_TRANS_WEIGHT ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 336
    Top = 360
  end
  object TransportWeightDataSource: TDataSource
    DataSet = TransportWeightDataSet
    Left = 468
    Top = 360
  end
  object TransportChassisNumberDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TRANSPORT_CHASSIS_NUMBER'
      'FROM'
      '    CAT_AUTH_TRANS_CHASSIS_NUMBER ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 336
    Top = 256
  end
  object TransportChassisNumberDataSource: TDataSource
    DataSet = TransportChassisNumberDataSet
    Left = 468
    Top = 256
  end
  object TransportLoadWeightDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TRANSPORT_LOAD_WEIGHT'
      'FROM'
      '    CAT_AUTH_TRANS_LOAD_WEIGHT ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 336
    Top = 312
  end
  object TransportLoadWeightDataSource: TDataSource
    DataSet = TransportLoadWeightDataSet
    Left = 468
    Top = 312
  end
  object AuthorizationDescriptionDataSource: TDataSource
    DataSet = AuthorizationDescriptionDataSet
    Left = 740
    Top = 536
  end
  object AuthorizationDescriptionDataSet: TpFIBDataSet
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
      '    AUTHORIZATION_DESCRIPTION'
      'FROM'
      '    CAT_AUTH_DESCRIPTION ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 608
    Top = 536
  end
  object AuthorizationNumberDataSource: TDataSource
    DataSet = AuthorizationNumberDataSet
    Left = 740
    Top = 480
  end
  object AuthorizationNumberDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    AUTHORIZATION_NUMBER'
      'FROM'
      '    CAT_AUTH_NUMBER ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 608
    Top = 480
  end
  object TransiteNumberDataSource: TDataSource
    DataSet = TransiteNumberDataSet
    Left = 740
    Top = 424
  end
  object TransiteNumberDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TRANSITE_NUMBER'
      'FROM'
      '    CAT_AUTH_TRANSITE_NUMBER ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 608
    Top = 424
  end
  object TransportCertificateIssuerDataSource: TDataSource
    DataSet = TransportCertificateIssuerDataSet
    Left = 740
    Top = 360
  end
  object TransportCertificateIssuerDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TRANSPORT_CERTIFICATE_ISSUER'
      'FROM'
      '    CAT_AUTH_TRANS_CERT_ISSUER ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 608
    Top = 360
  end
  object TransportCertificateNumberDataSource: TDataSource
    DataSet = TransportCertificateNumberDataSet
    Left = 740
    Top = 312
  end
  object TransportCertificateNumberDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TRANSPORT_CERTIFICATE_NUMBER'
      'FROM'
      '    CAT_AUTH_TRANS_CERT_NUMBER ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 608
    Top = 312
  end
  object TransportCertificateSerialDataSource: TDataSource
    DataSet = TransportCertificateSerialDataSet
    Left = 740
    Top = 256
  end
  object TransportCertificateSerialDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TRANSPORT_CERTIFICATE_SERIAL'
      'FROM'
      '    CAT_AUTH_TRANS_CERT_SERIAL ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 608
    Top = 256
  end
  object AddConstituentDataSet: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE RELATION_AUTH_CONST'
      'SET '
      '    AUTHORIZATION_ID = :AUTHORIZATION_ID,'
      '    CONSTITUENT_ID = :CONSTITUENT_ID'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    RELATION_AUTH_CONST'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO RELATION_AUTH_CONST('
      '    AUTHORIZATION_ID,'
      '    CONSTITUENT_ID'
      ')'
      'VALUES('
      '    :AUTHORIZATION_ID,'
      '    :CONSTITUENT_ID'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    AUTHORIZATION_ID,'
      '    CONSTITUENT_ID'
      'FROM'
      '    RELATION_AUTH_CONST '
      ''
      ' WHERE '
      '        RELATION_AUTH_CONST.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    AUTHORIZATION_ID,'
      '    CONSTITUENT_ID'
      'FROM'
      '    RELATION_AUTH_CONST ')
    AutoCalcFields = False
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 608
    Top = 32
    object AddConstituentDataSetID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object AddConstituentDataSetAUTHORIZATION_ID: TFIBBCDField
      FieldName = 'AUTHORIZATION_ID'
      Size = 0
    end
    object AddConstituentDataSetCONSTITUENT_ID: TFIBBCDField
      FieldName = 'CONSTITUENT_ID'
      Size = 0
    end
  end
  object AddConstituentDataSource: TDataSource
    DataSet = AddConstituentDataSet
    Left = 740
    Top = 32
  end
  object AddRepresentativeDataSet: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE RELATION_AUTH_REPRES'
      'SET '
      '    AUTHORIZATION_ID = :AUTHORIZATION_ID,'
      '    REPRESENTATIVE_ID = :REPRESENTATIVE_ID'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    RELATION_AUTH_REPRES'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO RELATION_AUTH_REPRES('
      '    AUTHORIZATION_ID,'
      '    REPRESENTATIVE_ID'
      ')'
      'VALUES('
      '    :AUTHORIZATION_ID,'
      '    :REPRESENTATIVE_ID'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    AUTHORIZATION_ID,'
      '    REPRESENTATIVE_ID'
      'FROM'
      '    RELATION_AUTH_REPRES '
      ''
      ' WHERE '
      '        RELATION_AUTH_REPRES.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    AUTHORIZATION_ID,'
      '    REPRESENTATIVE_ID'
      'FROM'
      '    RELATION_AUTH_REPRES ')
    AutoCalcFields = False
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 608
    Top = 88
    object AddRepresentativeDataSetID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object AddRepresentativeDataSetAUTHORIZATION_ID: TFIBBCDField
      FieldName = 'AUTHORIZATION_ID'
      Size = 0
    end
    object AddRepresentativeDataSetREPRESENTATIVE_ID: TFIBBCDField
      FieldName = 'REPRESENTATIVE_ID'
      Size = 0
    end
  end
  object AddRepresentativeDataSource: TDataSource
    DataSet = AddRepresentativeDataSet
    Left = 740
    Top = 88
  end
end
