object RemoteDataModule: TRemoteDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 359
  Width = 325
  object FIBDatabase: TpFIBDatabase
    AutoReconnect = True
    DBName = '127.0.0.1/3050:C:\db\notar.fdb'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=UTF8')
    DefaultTransaction = FIBTransaction
    DefaultUpdateTransaction = FIBUpdateTransaction
    SQLDialect = 2
    Timeout = 0
    DesignDBOptions = [ddoIsDefaultDatabase, ddoStoreConnected]
    LibraryName = 'fbclient.dll'
    SQLLogger = FIBSQLLogger
    AliasName = 'notar'
    WaitForRestoreConnect = 0
    Left = 40
    Top = 40
  end
  object FIBTransaction: TpFIBTransaction
    DefaultDatabase = FIBDatabase
    TRParams.Strings = (
      'write'
      'isc_tpb_nowait'
      'read_committed'
      'rec_version')
    WatchUncommitedUpdates = True
    TPBMode = tpbDefault
    Left = 136
    Top = 40
  end
  object FIBUpdateTransaction: TpFIBTransaction
    DefaultDatabase = FIBDatabase
    TRParams.Strings = (
      'write'
      'isc_tpb_nowait'
      'read_committed'
      'rec_version')
    WatchUncommitedUpdates = True
    TPBMode = tpbDefault
    Left = 232
    Top = 40
  end
  object FibErrorHandler: TpFibErrorHandler
    OnFIBErrorEvent = FibErrorHandlerFIBErrorEvent
    Options = [oeException, oeForeignKey, oeLostConnect, oeCheck, oeUniqueViolation]
    Left = 40
    Top = 96
  end
  object FIBSQLMonitor: TFIBSQLMonitor
    OnSQL = FIBSQLMonitorSQL
    TraceFlags = [tfQExecute]
    Left = 136
    Top = 168
  end
  object FIBEventAlerter: TSIBfibEventAlerter
    OnEventAlert = FIBEventAlerterEventAlert
    Database = FIBDatabase
    Left = 40
    Top = 168
  end
  object FIBSQLLogger: TFIBSQLLogger
    ActiveStatistics = True
    LogFileName = 'Notar.sql.log'
    ApplicationID = 'Notar'
    LogFlags = [lfQPrepare, lfQExecute, lfQFetch, lfConnect, lfTransact, lfService, lfMisc]
    ForceSaveLog = True
    ActiveLogging = True
    Left = 232
    Top = 168
  end
  object TableListDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TABLE_NAME'
      'FROM'
      '    VIEW_TABLE_NAMES ')
    Transaction = FIBTransaction
    Database = FIBDatabase
    UpdateTransaction = FIBUpdateTransaction
    Left = 40
    Top = 232
    object TableListDataSetTABLE_NAME: TFIBWideStringField
      FieldName = 'TABLE_NAME'
      Size = 31
      EmptyStrToNull = True
    end
  end
  object MenuTreeDataSet: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    CAPTION,'
      '    SUB_ID,'
      '    GLYPH_ID,'
      '    CLASS_NAME'
      'FROM'
      '    CATALOG_MENU_TREE ')
    Transaction = FIBTransaction
    Database = FIBDatabase
    UpdateTransaction = FIBUpdateTransaction
    Left = 136
    Top = 232
    object MenuTreeDataSetID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object MenuTreeDataSetCAPTION: TFIBWideStringField
      FieldName = 'CAPTION'
      Size = 255
      EmptyStrToNull = True
    end
    object MenuTreeDataSetSUB_ID: TFIBBCDField
      FieldName = 'SUB_ID'
      Size = 0
    end
    object MenuTreeDataSetGLYPH_ID: TFIBSmallIntField
      FieldName = 'GLYPH_ID'
    end
    object MenuTreeDataSetCLASS_NAME: TFIBWideStringField
      FieldName = 'CLASS_NAME'
      Size = 255
      EmptyStrToNull = True
    end
  end
  object MenuTreeDataSource: TDataSource
    DataSet = MenuTreeDataSet
    Left = 232
    Top = 232
  end
  object GlobalConfigurationDataSet: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CATALOG_CONFIGURATION'
      'SET '
      '    KEY_NAME = :KEY_NAME,'
      '    VALUE_DATA = :VALUE_DATA'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CATALOG_CONFIGURATION'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CATALOG_CONFIGURATION('
      '    KEY_NAME,'
      '    VALUE_DATA'
      ')'
      'VALUES('
      '    :KEY_NAME,'
      '    :VALUE_DATA'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    KEY_NAME,'
      '    VALUE_DATA'
      'FROM'
      '    CATALOG_CONFIGURATION '
      'WHERE( '
      '    KEY_NAME = :KEY'
      '     ) and (     CATALOG_CONFIGURATION.ID = :OLD_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    KEY_NAME,'
      '    VALUE_DATA'
      'FROM'
      '    CATALOG_CONFIGURATION '
      'WHERE'
      '    KEY_NAME = :KEY')
    Transaction = FIBTransaction
    Database = FIBDatabase
    UpdateTransaction = FIBUpdateTransaction
    Left = 40
    Top = 296
    object GlobalConfigurationDataSetID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object GlobalConfigurationDataSetKEY_NAME: TFIBWideStringField
      FieldName = 'KEY_NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object GlobalConfigurationDataSetVALUE_DATA: TFIBMemoField
      FieldName = 'VALUE_DATA'
      BlobType = ftWideMemo
      Size = 8
    end
  end
  object EventsListDataSet: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CATALOG_EVENTS'
      'SET '
      '    EVENT_NAME = :EVENT_NAME'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CATALOG_EVENTS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CATALOG_EVENTS('
      '    EVENT_NAME'
      ')'
      'VALUES('
      '    :EVENT_NAME'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    EVENT_NAME'
      'FROM'
      '    CATALOG_EVENTS '
      ''
      ' WHERE '
      '        CATALOG_EVENTS.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    EVENT_NAME'
      'FROM'
      '    CATALOG_EVENTS ')
    Transaction = FIBTransaction
    Database = FIBDatabase
    UpdateTransaction = FIBUpdateTransaction
    Left = 136
    Top = 296
    object EventsListDataSetID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object EventsListDataSetEVENT_NAME: TFIBWideStringField
      FieldName = 'EVENT_NAME'
      Size = 255
      EmptyStrToNull = True
    end
  end
end
