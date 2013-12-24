object RemoteDataModule: TRemoteDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 610
  Width = 332
  object FIBDatabase: TpFIBDatabase
    AutoReconnect = True
    Connected = True
    DBName = '127.0.0.1/3050:C:\db\NOTAR.FDB'
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
    Active = True
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
    Active = True
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
  object SIBfibEventAlerter: TSIBfibEventAlerter
    Database = FIBDatabase
    AutoRegister = True
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
end
