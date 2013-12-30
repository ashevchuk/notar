object MVCAuthorization: TMVCAuthorization
  OldCreateOrder = False
  Height = 485
  Width = 742
  object AuthorizationsDataSource: TDataSource
    DataSet = AuthorizationsDataSet
    Left = 296
    Top = 96
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
      '    CATALOG_AUTHORIZATIONS ')
    Active = True
    Transaction = RemoteDataModule.FIBTransaction
    Database = RemoteDataModule.FIBDatabase
    UpdateTransaction = RemoteDataModule.FIBUpdateTransaction
    AutoCommit = True
    Left = 192
    Top = 96
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
      DisplayFormat = 'dd.mm.yyyy'
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
      DisplayFormat = 'dd.mm.yyyy'
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
      DisplayFormat = 'dd.mm.yyyy'
    end
    object AuthorizationsDataSetAUTHORIZATION_NUMBER: TFIBWideStringField
      FieldName = 'AUTHORIZATION_NUMBER'
      Size = 255
      EmptyStrToNull = True
    end
    object AuthorizationsDataSetAUTHORIZATION_VALIDITY_DATE: TFIBDateField
      FieldName = 'AUTHORIZATION_VALIDITY_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object AuthorizationsDataSetAUTHORIZATION_DATE: TFIBDateField
      FieldName = 'AUTHORIZATION_DATE'
      DisplayFormat = 'dd.mm.yyyy'
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
end
