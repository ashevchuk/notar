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
    Top = 88
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
    Top = 88
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
    Top = 88
  end
  object AuthorizationDataSource: TDataSource
    DataSet = Authorization
    Left = 96
    Top = 16
  end
  object PaxCompiler: TPaxCompiler
    Alignment = 8
    DebugMode = False
    Left = 512
    Top = 16
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
  object PaxInvoke: TPaxInvoke
    Left = 760
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
  object AuthorizationDBPipeline: TppDBPipeline
    DataSource = AuthorizationDataSource
    UserName = 'AuthorizationDBPipeline'
    Left = 96
    Top = 152
  end
  object ConstituentDBPipeline: TppDBPipeline
    DataSource = ConstituentDataSource
    UserName = 'ConstituentDBPipeline'
    Left = 224
    Top = 152
  end
  object RepresentativesDBPipeline: TppDBPipeline
    DataSource = RepresentativesDataSource
    UserName = 'RepresentativesDBPipeline'
    Left = 352
    Top = 152
  end
  object ppDesigner: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppReport
    IniStorageType = 'IniFile'
    IniStorageName = '($LocalAppData)\RBuilder\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 88
    Top = 216
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = AuthorizationDBPipeline
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Documents and Settings\Slayer\'#1052#1086#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'\RAD Studio\Projec' +
      'ts\notar\reports\authorization.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 224
    Top = 216
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'AuthorizationDBPipeline'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 61383
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'TRANSPORT_KIND'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 3969
        mmTop = 3969
        mmWidth = 38629
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'TRANSPORT_KIND'
        DataPipeline = AuthorizationDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'AuthorizationDBPipeline'
        mmHeight = 4763
        mmLeft = 43656
        mmTop = 3969
        mmWidth = 810685
        BandType = 4
        LayerName = Foreground
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ConstituentDBPipeline'
        mmHeight = 16404
        mmLeft = 0
        mmTop = 19050
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ConstituentDBPipeline
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '15.02'
          mmColumnWidth = 0
          DataPipelineName = 'ConstituentDBPipeline'
        end
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 2381
        mmTop = 27517
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ID'
        DataPipeline = ConstituentDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ConstituentDBPipeline'
        mmHeight = 4763
        mmLeft = 8467
        mmTop = 27517
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'SURNAME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 42333
        mmTop = 27517
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'SURNAME'
        DataPipeline = ConstituentDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ConstituentDBPipeline'
        mmHeight = 4763
        mmLeft = 65352
        mmTop = 27517
        mmWidth = 810685
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'NAME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 99748
        mmTop = 29104
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'NAME'
        DataPipeline = ConstituentDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ConstituentDBPipeline'
        mmHeight = 4763
        mmLeft = 114036
        mmTop = 29104
        mmWidth = 810685
        BandType = 4
        LayerName = Foreground
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'RepresentativesDBPipeline'
        mmHeight = 15875
        mmLeft = 0
        mmTop = 38894
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = RepresentativesDBPipeline
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '15.02'
          mmColumnWidth = 0
          DataPipelineName = 'RepresentativesDBPipeline'
        end
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 2910
        mmTop = 44715
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ID'
        DataPipeline = RepresentativesDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'RepresentativesDBPipeline'
        mmHeight = 4763
        mmLeft = 8996
        mmTop = 44715
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'SURNAME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 43656
        mmTop = 44715
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'SURNAME'
        DataPipeline = RepresentativesDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'RepresentativesDBPipeline'
        mmHeight = 4763
        mmLeft = 66675
        mmTop = 44715
        mmWidth = 810685
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'NAME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 99748
        mmTop = 45773
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'NAME'
        DataPipeline = RepresentativesDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'RepresentativesDBPipeline'
        mmHeight = 4763
        mmLeft = 114036
        mmTop = 45773
        mmWidth = 810685
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'MIDDLE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 147109
        mmTop = 46831
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'MIDDLE'
        DataPipeline = RepresentativesDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'RepresentativesDBPipeline'
        mmHeight = 4763
        mmLeft = 165100
        mmTop = 46831
        mmWidth = 810685
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 46831
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
