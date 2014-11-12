object dmsContact: TdmsContact
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 790
  Width = 1242
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 80
    Top = 80
  end
  object ds_ProductionUnit: TDataSource
    DataSet = cds_ProductionUnit
    Left = 688
    Top = 360
  end
  object ds_RegPoints: TDataSource
    DataSet = cds_RegPoints
    Left = 776
    Top = 344
  end
  object ds_SR: TDataSource
    DataSet = cds_SR
    Left = 24
    Top = 80
  end
  object ds_PhysInvByCityNo: TDataSource
    DataSet = cds_PhysInvByCityNo
    Left = 224
    Top = 272
  end
  object dsCurrency: TDataSource
    DataSet = cdscurrency
    Left = 24
    Top = 344
  end
  object dsDelTerms: TDataSource
    DataSet = cdsDelTerms
    Left = 96
    Top = 353
  end
  object ds_PaymentText: TDataSource
    DataSet = cds_PaymentText
    Left = 248
    Top = 353
  end
  object dsPriceUnit: TDataSource
    DataSet = cdsPriceUnit
    Left = 392
    Top = 353
  end
  object dsPaymentTerm: TDataSource
    DataSet = cdsPaymentTerm
    Left = 168
    Top = 337
  end
  object ds_volunit: TDataSource
    DataSet = cds_volunit
    Left = 320
    Top = 337
  end
  object ds_LL_Verk: TDataSource
    DataSet = cds_LL_Verk
    Left = 520
    Top = 80
  end
  object ds_Client: TDataSource
    DataSet = cds_Client
    Left = 24
    Top = 192
  end
  object ds_Agent: TDataSource
    DataSet = cds_Agent
    Left = 616
    Top = 336
  end
  object ds_Frakt: TDataSource
    DataSet = cds_Frakt
    Left = 80
    Top = 192
  end
  object ds_Contact: TDataSource
    DataSet = cds_Contact
    Left = 288
    Top = 73
  end
  object dsClient: TDataSource
    DataSet = cdsClient
    Left = 584
    Top = 80
  end
  object ds_ClientRole: TDataSource
    DataSet = cds_ClientRole
    Left = 648
    Top = 80
  end
  object ds_RoleType: TDataSource
    DataSet = cds_RoleType
    Left = 856
    Top = 360
  end
  object ds_Pref: TDataSource
    DataSet = cds_Pref
    Left = 744
    Top = 80
  end
  object ds_Address: TDataSource
    DataSet = cds_Address
    Left = 608
    Top = 528
  end
  object ds_CompAdr: TDataSource
    DataSet = cds_CompAdr
    Left = 544
    Top = 544
  end
  object ds_ClientList: TDataSource
    DataSet = cds_ClientList
    Left = 1040
    Top = 88
  end
  object ds_Country: TDataSource
    DataSet = cds_Country
    Left = 1000
    Top = 360
  end
  object ds_City: TDataSource
    DataSet = cds_City
    Left = 1064
    Top = 344
  end
  object ds_AgentList: TDataSource
    DataSet = cds_AgentList
    Left = 1120
    Top = 88
  end
  object ds_CompDelAdr: TDataSource
    DataSet = cds_Comp_DelAdr
    Left = 472
    Top = 528
  end
  object ds_AdrLO: TDataSource
    DataSet = cds_AdrLO
    Left = 400
    Top = 544
  end
  object ds_ClientSearch: TDataSource
    DataSet = cds_ClientSearch
    Left = 744
    Top = 528
  end
  object ds_AdrSearch: TDataSource
    DataSet = cds_AdrSearch
    Left = 672
    Top = 544
  end
  object ds_Market: TDataSource
    DataSet = cds_Market
    Left = 928
    Top = 344
  end
  object ds_PhysInv: TDataSource
    DataSet = cds_PhysInv
    Left = 976
    Top = 88
  end
  object ds_GrpInv: TDataSource
    DataSet = cds_GrpInv
    Left = 912
    Top = 88
  end
  object ds_AllAgent: TDataSource
    DataSet = cds_AllAgent
    Left = 816
    Top = 544
  end
  object ds_ClientLL: TDataSource
    DataSet = cds_ClientLL
    Left = 880
    Top = 528
  end
  object ds_points: TDataSource
    DataSet = cds_points
    Left = 824
    Top = 88
  end
  object ds_CliDoc: TDataSource
    DataSet = cds_CliDoc
    Left = 24
    Top = 536
  end
  object ds_PayDesc: TDataSource
    DataSet = cds_PayDesc
    Left = 160
    Top = 521
  end
  object ds_PayTerm: TDataSource
    DataSet = cds_PayTerm
    Left = 96
    Top = 537
  end
  object dsClientPrefDocs: TDataSource
    DataSet = cdsClientPrefDocs
    Left = 464
    Top = 336
  end
  object mtReportTypes: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ReportType'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DocType'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.12.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 1136
    Top = 640
    object mtReportTypesReportType: TStringField
      FieldName = 'ReportType'
    end
    object mtReportTypesDocType: TIntegerField
      FieldName = 'DocType'
    end
  end
  object dsRptNames: TDataSource
    DataSet = cdsRptNames
    Left = 544
    Top = 352
  end
  object dsExtPP: TDataSource
    DataSet = cdsExtPP
    Left = 1032
    Top = 528
  end
  object ds_ExchangeRate: TDataSource
    DataSet = cds_ExchangeRate
    Left = 952
    Top = 544
  end
  object ds_SalesGrp: TDataSource
    DataSet = cds_SalesGrp
    Left = 1096
    Top = 544
  end
  object ds_SalesGrpRow: TDataSource
    DataSet = cds_SalesGrpRow
    Left = 1136
    Top = 360
  end
  object dsContRoleType: TDataSource
    DataSet = cdsContRoleType
    Left = 432
    Top = 64
  end
  object dsContRole: TDataSource
    DataSet = cdsContRole
    Left = 352
    Top = 96
  end
  object cdscurrency: TFDQuery
    AfterInsert = cdsCurrencyAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT * FROM CURRENCY')
    Left = 24
    Top = 296
    object cdscurrencyCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdscurrencyCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Origin = 'CurrencyName'
      Required = True
      Size = 5
    end
    object cdscurrencyDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdscurrencyCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdscurrencyModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdscurrencySequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
  end
  object cdsDelTerms: TFDQuery
    AfterInsert = cdsDelTermsAfterInsert
    BeforePost = cdsDelTermsBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT * FROM'
      'dbo.DeliveryTerm')
    Left = 96
    Top = 312
    object cdsDelTermsDeliveryTerm_No: TIntegerField
      FieldName = 'DeliveryTerm_No'
      Origin = 'DeliveryTerm_No'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDelTermsDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Origin = 'DeliveryTerm'
      Required = True
      Size = 50
    end
    object cdsDelTermsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsDelTermsCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsDelTermsModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsDelTermsSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cdsDelTermsDescription: TStringField
      FieldName = 'Description'
      Origin = 'Description'
      Size = 100
    end
    object cdsDelTermsFreightIncluded: TIntegerField
      FieldName = 'FreightIncluded'
      Origin = 'FreightIncluded'
    end
  end
  object cdsPaymentTerm: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'select pt.PaymentTermsNo,  pt.PaymentTermName, pt.Discount1, pt.' +
        'FreightInDiscount, '
      'pt.FreightInCommission, pt.CommissionPaidByCustomer,'
      'ptd.Description, ptd.LanguageCode'
      'from dbo.PaymentTerms pt, dbo.PaymentTermDesc ptd'
      'where'
      'pt.PaymentTermsNo = ptd.PaymentTermsNo '
      'AND ptd.LanguageCode = :LanguageCode')
    Left = 168
    Top = 296
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsPaymentTermPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentTermPaymentTermName: TStringField
      FieldName = 'PaymentTermName'
      Origin = 'PaymentTermName'
      Size = 50
    end
    object cdsPaymentTermDiscount1: TFloatField
      FieldName = 'Discount1'
      Origin = 'Discount1'
    end
    object cdsPaymentTermFreightInDiscount: TSmallintField
      FieldName = 'FreightInDiscount'
      Origin = 'FreightInDiscount'
    end
    object cdsPaymentTermFreightInCommission: TSmallintField
      FieldName = 'FreightInCommission'
      Origin = 'FreightInCommission'
    end
    object cdsPaymentTermCommissionPaidByCustomer: TSmallintField
      FieldName = 'CommissionPaidByCustomer'
      Origin = 'CommissionPaidByCustomer'
    end
    object cdsPaymentTermDescription: TStringField
      FieldName = 'Description'
      Origin = 'Description'
      Size = 100
    end
    object cdsPaymentTermLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      Required = True
    end
  end
  object cds_PaymentText: TFDQuery
    AfterInsert = cds_PaymentTextAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from '
      'dbo.PaymentText'
      'where'
      'CurrencyNo = :CurrencyNo')
    Left = 248
    Top = 312
    ParamData = <
      item
        Name = 'CURRENCYNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PaymentTextCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PaymentTextLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PaymentTextPaymentText: TMemoField
      FieldName = 'PaymentText'
      Origin = 'PaymentText'
      BlobType = ftMemo
    end
    object cds_PaymentTextCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PaymentTextModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_PaymentTextDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PaymentTextCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PaymentTextLanguage: TStringField
      FieldKind = fkLookup
      FieldName = 'Language'
      LookupDataSet = dmsSystem.sq_Language
      LookupKeyFields = 'LanguageNo'
      LookupResultField = 'LanguageName'
      KeyFields = 'LanguageCode'
      ProviderFlags = []
      Lookup = True
    end
    object cds_PaymentTextCountry: TStringField
      FieldKind = fkLookup
      FieldName = 'Country'
      LookupDataSet = cds_Country
      LookupKeyFields = 'CountryNo'
      LookupResultField = 'CountryName'
      KeyFields = 'CountryNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
  end
  object cds_Country: TFDQuery
    AfterInsert = cds_CountryAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select *'
      'FROM dbo.Country'
      'Order by CountryName')
    Left = 1000
    Top = 312
    object cds_CountryCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CountryCountryName: TStringField
      FieldName = 'CountryName'
      Origin = 'CountryName'
      Required = True
      Size = 30
    end
    object cds_CountryDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_CountryModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_CountryCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_CountrySequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_CountryCountryCode: TStringField
      FieldName = 'CountryCode'
      Origin = 'CountryCode'
      FixedChar = True
      Size = 5
    end
    object cds_CountryCountryPhoneCode: TStringField
      FieldName = 'CountryPhoneCode'
      Origin = 'CountryPhoneCode'
      FixedChar = True
      Size = 3
    end
    object cds_CountryMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
    object cds_CountryISOCountryCode: TStringField
      FieldName = 'ISOCountryCode'
      Origin = 'ISOCountryCode'
      Size = 2
    end
  end
  object cds_volunit: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.UnitName')
    Left = 320
    Top = 296
    object cds_volunitVolumeUnit_No: TIntegerField
      FieldName = 'VolumeUnit_No'
      Origin = 'VolumeUnit_No'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_volunitVolumeUnitName: TStringField
      FieldName = 'VolumeUnitName'
      Origin = 'VolumeUnitName'
      Required = True
      Size = 10
    end
    object cds_volunitDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_volunitCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_volunitModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_volunitSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
  end
  object cdsPriceUnit: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.PackUnit')
    Left = 392
    Top = 312
    object cdsPriceUnitTemplateUnitNo: TIntegerField
      FieldName = 'TemplateUnitNo'
      Origin = 'TemplateUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPriceUnitTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
      Origin = 'TemplateUnitName'
      Required = True
    end
    object cdsPriceUnitDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsPriceUnitCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsPriceUnitModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsPriceUnitSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
  end
  object cdsClientPrefDocs: TFDQuery
    AfterInsert = cdsClientPrefDocsAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.ClientPrefDoc'
      'WHERE ClientNo = :ClientNo'
      'AND RoleType = :RoleType')
    Left = 464
    Top = 288
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ROLETYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsClientPrefDocsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientPrefDocsRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientPrefDocsDocType: TIntegerField
      FieldName = 'DocType'
      Origin = 'DocType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientPrefDocsNoOfCopy: TIntegerField
      FieldName = 'NoOfCopy'
      Origin = 'NoOfCopy'
    end
    object cdsClientPrefDocspromptUser: TIntegerField
      FieldName = 'promptUser'
      Origin = 'promptUser'
    end
    object cdsClientPrefDocscollated: TIntegerField
      FieldName = 'collated'
      Origin = 'collated'
    end
    object cdsClientPrefDocsPrinterSetup: TIntegerField
      FieldName = 'PrinterSetup'
      Origin = 'PrinterSetup'
    end
    object cdsClientPrefDocsReportNo: TIntegerField
      FieldName = 'ReportNo'
      Origin = 'ReportNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientPrefDocsTYPAVRAPPORT: TStringField
      FieldKind = fkLookup
      FieldName = 'TYP AV RAPPORT'
      LookupDataSet = mtReportTypes
      LookupKeyFields = 'DocType'
      LookupResultField = 'ReportType'
      KeyFields = 'DocType'
      ProviderFlags = []
      Lookup = True
    end
    object cdsClientPrefDocsRAPPORT: TStringField
      FieldKind = fkLookup
      FieldName = 'RAPPORT'
      LookupDataSet = cdsRptNames
      LookupKeyFields = 'ReportNo'
      LookupResultField = 'ReportName'
      KeyFields = 'ReportNo'
      ProviderFlags = []
      Size = 100
      Lookup = True
    end
  end
  object cdsRptNames: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.ReportNames'
      '')
    Left = 544
    Top = 304
    object cdsRptNamesReportNo: TIntegerField
      FieldName = 'ReportNo'
      Origin = 'ReportNo'
    end
    object cdsRptNamesDocType: TIntegerField
      FieldName = 'DocType'
      Origin = 'DocType'
    end
    object cdsRptNamesReportName: TStringField
      FieldName = 'ReportName'
      Origin = 'ReportName'
      Size = 100
    end
    object cdsRptNamesBeskrivning: TStringField
      FieldName = 'Beskrivning'
      Origin = 'Beskrivning'
      Size = 100
    end
  end
  object cds_Agent: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct C.ClientNo,'
      '       C.ClientName,'
      'C.SearchName,'
      'C.Percent_Commision,'
      'C.Terms_Commision,'
      'CP.DefaultBillingAddressNo,'
      'CP.SendInvoiceToAgent,'
      'CAL.ClientNo AS AskingClientNo'
      ''
      'FROM dbo.ClientRole    R'
      'Inner Join dbo.Client        C ON C.ClientNo = R.ClientNo'
      'Inner Join dbo.ClientAgentList CAL ON CAL.AgentNo = C.ClientNo '
      
        'Left Outer Join dbo.ClientPreference CP ON CP.ClientNo = R.Clien' +
        'tNo'
      #9#9#9#9#9'AND CP.RoleType = R.RoleType'
      'WHERE'
      'R.RoleType = 3'
      ''
      ''
      'order by C.ClientName'
      ''
      '')
    Left = 616
    Top = 296
    object cds_AgentClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AgentClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_AgentSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object cds_AgentPercent_Commision: TFloatField
      FieldName = 'Percent_Commision'
      Origin = 'Percent_Commision'
    end
    object cds_AgentTerms_Commision: TIntegerField
      FieldName = 'Terms_Commision'
      Origin = 'Terms_Commision'
    end
    object cds_AgentDefaultBillingAddressNo: TIntegerField
      FieldName = 'DefaultBillingAddressNo'
      Origin = 'DefaultBillingAddressNo'
    end
    object cds_AgentSendInvoiceToAgent: TIntegerField
      FieldName = 'SendInvoiceToAgent'
      Origin = 'SendInvoiceToAgent'
    end
    object cds_AgentAskingClientNo: TIntegerField
      FieldName = 'AskingClientNo'
      Origin = 'AskingClientNo'
      Required = True
    end
  end
  object cds_ProductionUnit: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select *'
      'FROM dbo.ProductionUnit'
      'Where ClientNo = :ClientNo'
      '')
    Left = 688
    Top = 312
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProductionUnitProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductionUnitProductionUnitName: TStringField
      FieldName = 'ProductionUnitName'
      Origin = 'ProductionUnitName'
      Size = 50
    end
    object cds_ProductionUnitClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_ProductionUnitSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_ProductionUnitCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProductionUnitModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProductionUnitDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ProductionUnitLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object cds_ProductionUnitRegistrationPointNo: TIntegerField
      FieldName = 'RegistrationPointNo'
      Origin = 'RegistrationPointNo'
    end
    object cds_ProductionUnitOnSticks: TIntegerField
      FieldName = 'OnSticks'
      Origin = 'OnSticks'
    end
    object cds_ProductionUnitSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object cds_ProductionUnitDIM_DIV: TIntegerField
      FieldName = 'DIM_DIV'
      Origin = 'DIM_DIV'
    end
    object cds_ProductionUnitTerminalNo: TIntegerField
      FieldName = 'TerminalNo'
      Origin = 'TerminalNo'
    end
    object cds_ProductionUnitPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
    end
    object cds_ProductionUnitLIPGroupNo: TIntegerField
      FieldName = 'LIPGroupNo'
      Origin = 'LIPGroupNo'
    end
    object cds_ProductionUnitCost: TFloatField
      FieldName = 'Cost'
      Origin = 'Cost'
    end
    object cds_ProductionUnitCapitalCost: TFloatField
      FieldName = 'CapitalCost'
      Origin = 'CapitalCost'
    end
    object cds_ProductionUnitOverheadCost: TFloatField
      FieldName = 'OverheadCost'
      Origin = 'OverheadCost'
    end
    object cds_ProductionUnitSalaryCost: TFloatField
      FieldName = 'SalaryCost'
      Origin = 'SalaryCost'
    end
    object cds_ProductionUnitLegoCostPerAM3: TBCDField
      FieldName = 'LegoCostPerAM3'
      Origin = 'LegoCostPerAM3'
      Precision = 18
      Size = 1
    end
    object cds_ProductionUnitProductionUnitCode: TStringField
      FieldName = 'ProductionUnitCode'
      Origin = 'ProductionUnitCode'
      Size = 2
    end
    object cds_ProductionUnitPkgPrefix: TStringField
      FieldName = 'PkgPrefix'
      Origin = 'PkgPrefix'
      Size = 3
    end
    object cds_ProductionUnitStoppOrsakFil: TStringField
      FieldName = 'StoppOrsakFil'
      Origin = 'StoppOrsakFil'
      Size = 255
    end
    object cds_ProductionUnitStoppTidFil: TStringField
      FieldName = 'StoppTidFil'
      Origin = 'StoppTidFil'
      Size = 255
    end
    object cds_ProductionUnitRegPoint: TStringField
      FieldKind = fkLookup
      FieldName = 'RegPoint'
      LookupDataSet = cds_RegPoints
      LookupKeyFields = 'RegPointNo'
      LookupResultField = 'RegPointName'
      KeyFields = 'RegistrationPointNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
  end
  object cds_RegPoints: TFDQuery
    AfterInsert = cds_RegPointsAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT RegPointNo, RegPointName, CreatedUser, ModifiedUser, Date' +
        'Created,'
      'SequenceNo'
      'FROM dbo.RegistrationPoint'
      ''
      '')
    Left = 776
    Top = 296
    object cds_RegPointsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_RegPointsRegPointName: TStringField
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      FixedChar = True
      Size = 30
    end
    object cds_RegPointsCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_RegPointsModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_RegPointsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_RegPointsSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
  end
  object cds_RoleType: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * From DBO.RoleType'
      '')
    Left = 856
    Top = 312
    object cds_RoleTypeRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_RoleTypeRoleDescription: TStringField
      FieldName = 'RoleDescription'
      Origin = 'RoleDescription'
      FixedChar = True
    end
    object cds_RoleTypeCopytoXOR: TIntegerField
      FieldName = 'CopytoXOR'
      Origin = 'CopytoXOR'
    end
    object cds_RoleTypeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_RoleTypeCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_RoleTypeModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_RoleTypeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cds_Market: TFDQuery
    AfterInsert = cds_MarketAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct * '
      'FROM   dbo.MarketRegion'
      ''
      'Order by MarketRegionName'
      '')
    Left = 928
    Top = 304
    object cds_MarketMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_MarketMarketRegionName: TStringField
      FieldName = 'MarketRegionName'
      Origin = 'MarketRegionName'
      FixedChar = True
      Size = 10
    end
    object cds_MarketSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_MarketDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_MarketCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_MarketModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
  end
  object cds_City: TFDQuery
    AfterInsert = cds_CityAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select *'
      'FROM dbo.City'
      'Order by CityName'
      '')
    Left = 1064
    Top = 296
    object cds_CityCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CityCityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      Size = 50
    end
    object cds_CitySequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_CityDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_CityModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_CityCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_CityImpVerk: TIntegerField
      FieldName = 'ImpVerk'
      Origin = 'ImpVerk'
    end
  end
  object cds_SalesGrpRow: TFDQuery
    AfterInsert = cds_SalesGrpRowAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.SalesManGroupRow'
      'WHERE SalesGroupNo = :SalesGroupNo'
      '')
    Left = 1134
    Top = 312
    ParamData = <
      item
        Name = 'SALESGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SalesGrpRowSalesGroupNo: TIntegerField
      FieldName = 'SalesGroupNo'
      Origin = 'SalesGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SalesGrpRowUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SalesGrpRowDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_SalesGrpRowCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_SalesGrpRowFörnamn: TStringField
      FieldKind = fkLookup
      FieldName = 'F'#246'rnamn'
      LookupDataSet = cds_user
      LookupKeyFields = 'UserID'
      LookupResultField = 'FirstName'
      KeyFields = 'UserID'
      ProviderFlags = []
      Size = 10
      Lookup = True
    end
    object cds_SalesGrpRowEfternamn: TStringField
      FieldKind = fkLookup
      FieldName = 'Efternamn'
      LookupDataSet = cds_user
      LookupKeyFields = 'UserID'
      LookupResultField = 'LastName'
      KeyFields = 'UserID'
      ProviderFlags = []
      Lookup = True
    end
  end
  object cds_user: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select * from dbo.users')
    Left = 1187
    Top = 240
    object cds_userUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_userLastName: TStringField
      FieldName = 'LastName'
      Origin = 'LastName'
      FixedChar = True
    end
    object cds_userUserName: TStringField
      FieldName = 'UserName'
      Origin = 'UserName'
      Required = True
    end
    object cds_userFirstName: TStringField
      FieldName = 'FirstName'
      Origin = 'FirstName'
      FixedChar = True
      Size = 10
    end
  end
  object cds_CliDoc: TFDQuery
    MasterSource = dsClient
    MasterFields = 'ClientNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.ClientDocTypeOrder'
      'WHERE ClientNo = :ClientNo'
      '')
    Left = 24
    Top = 488
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cds_CliDocClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CliDocDocType: TIntegerField
      FieldName = 'DocType'
      Origin = 'DocType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CliDocPrintOut: TIntegerField
      FieldName = 'PrintOut'
      Origin = 'PrintOut'
    end
    object cds_CliDocDocument: TStringField
      FieldName = 'Document'
      Origin = 'Document'
      Size = 10
    end
  end
  object cds_PayTerm: TFDQuery
    AfterInsert = cds_PayTermAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select *'
      'from dbo.PaymentTerms pt'
      '')
    Left = 96
    Top = 496
    object cds_PayTermPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PayTermPaymentTermName: TStringField
      FieldName = 'PaymentTermName'
      Origin = 'PaymentTermName'
      Size = 50
    end
    object cds_PayTermNoOfDaysDiscount1: TIntegerField
      FieldName = 'NoOfDaysDiscount1'
      Origin = 'NoOfDaysDiscount1'
    end
    object cds_PayTermNoOfDaysDiscount2: TIntegerField
      FieldName = 'NoOfDaysDiscount2'
      Origin = 'NoOfDaysDiscount2'
    end
    object cds_PayTermDiscount1: TFloatField
      FieldName = 'Discount1'
      Origin = 'Discount1'
    end
    object cds_PayTermDiscount2: TFloatField
      FieldName = 'Discount2'
      Origin = 'Discount2'
    end
    object cds_PayTermSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_PayTermCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PayTermModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_PayTermDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PayTermFreightInDiscount: TSmallintField
      FieldName = 'FreightInDiscount'
      Origin = 'FreightInDiscount'
    end
    object cds_PayTermFreightInCommission: TSmallintField
      FieldName = 'FreightInCommission'
      Origin = 'FreightInCommission'
    end
    object cds_PayTermCommissionPaidByCustomer: TSmallintField
      FieldName = 'CommissionPaidByCustomer'
      Origin = 'CommissionPaidByCustomer'
    end
  end
  object cds_PayDesc: TFDQuery
    AfterInsert = cds_PayDescAfterInsert
    MasterSource = ds_PayTerm
    MasterFields = 'PaymentTermsNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select *'
      'from dbo.PaymentTermDesc'
      'WHERE PaymentTermsNo = :PaymentTermsNo'
      '')
    Left = 160
    Top = 480
    ParamData = <
      item
        Name = 'PAYMENTTERMSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PayDescPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PayDescLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PayDescDescription: TStringField
      FieldName = 'Description'
      Origin = 'Description'
      Size = 100
    end
    object cds_PayDescDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PayDescCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PayDescModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_PayDescSPRAK: TStringField
      FieldKind = fkLookup
      FieldName = 'SPRAK'
      LookupDataSet = dmsSystem.sq_Language
      LookupKeyFields = 'LanguageNo'
      LookupResultField = 'LanguageName'
      KeyFields = 'LanguageCode'
      ProviderFlags = []
      Lookup = True
    end
  end
  object cds_AdrLO: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select FDr.*, ci.CityName, cy.CountryName From DBO.Address FDr'
      'Inner Join dbo.City ci on ci.CityNo = FDr.CityNo'
      'Inner Join dbo.Country cy on cy.CountryNo = FDr.CountryNo'
      '')
    Left = 400
    Top = 496
    object cds_AdrLOAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AdrLOAddressName: TStringField
      FieldName = 'AddressName'
      Origin = 'AddressName'
      Size = 80
    end
    object cds_AdrLOAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      Size = 40
    end
    object cds_AdrLOAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      FixedChar = True
      Size = 40
    end
    object cds_AdrLOAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      FixedChar = True
      Size = 40
    end
    object cds_AdrLOAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      FixedChar = True
      Size = 40
    end
    object cds_AdrLOCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
    end
    object cds_AdrLOStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
      FixedChar = True
      Size = 40
    end
    object cds_AdrLOCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object cds_AdrLOAddressType: TIntegerField
      FieldName = 'AddressType'
      Origin = 'AddressType'
    end
    object cds_AdrLOPhone1: TStringField
      FieldName = 'Phone1'
      Origin = 'Phone1'
      FixedChar = True
      Size = 40
    end
    object cds_AdrLOPhone2: TStringField
      FieldName = 'Phone2'
      Origin = 'Phone2'
      FixedChar = True
      Size = 40
    end
    object cds_AdrLOPhone3: TStringField
      FieldName = 'Phone3'
      Origin = 'Phone3'
      FixedChar = True
      Size = 40
    end
    object cds_AdrLOFax: TStringField
      FieldName = 'Fax'
      Origin = 'Fax'
      FixedChar = True
    end
    object cds_AdrLOCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_AdrLOModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_AdrLODateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_AdrLOEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      FixedChar = True
      Size = 50
    end
    object cds_AdrLOPostalCode: TStringField
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      FixedChar = True
    end
    object cds_AdrLOSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_AdrLOPartyIdentifier1: TStringField
      FieldName = 'PartyIdentifier1'
      Origin = 'PartyIdentifier1'
      Size = 50
    end
    object cds_AdrLOPartyIdentifierType1: TStringField
      FieldName = 'PartyIdentifierType1'
      Origin = 'PartyIdentifierType1'
      Size = 50
    end
    object cds_AdrLOCityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      Size = 50
    end
    object cds_AdrLOCountryName: TStringField
      FieldName = 'CountryName'
      Origin = 'CountryName'
      Required = True
      Size = 30
    end
  end
  object cds_Comp_DelAdr: TFDQuery
    AfterInsert = cds_Comp_DelAdrAfterInsert
    MasterSource = ds_Client
    MasterFields = 'ClientNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select distinct ca.*, FD.*, ci.CityName, cy.CountryName  From DB' +
        'O.CompanyAddress CA'
      'INNER JOIN dbo.Address FD on FD.AddressNo = ca.AddressNo'
      'Inner Join dbo.City ci on ci.CityNo = FD.CityNo'
      'Inner Join dbo.Country cy on cy.CountryNo = FD.CountryNo'
      ''
      ''
      ''
      'WHERE ClientNo = :ClientNo'
      'AND ca.AddressType = 2'
      '')
    Left = 472
    Top = 480
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cds_Comp_DelAdrClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Comp_DelAdrAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Comp_DelAdrAddressType: TIntegerField
      FieldName = 'AddressType'
      Origin = 'AddressType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Comp_DelAdrCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_Comp_DelAdrModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_Comp_DelAdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_Comp_DelAdrAddressNo_1: TIntegerField
      FieldName = 'AddressNo_1'
      Origin = 'AddressNo'
      Required = True
    end
    object cds_Comp_DelAdrAddressName: TStringField
      FieldName = 'AddressName'
      Origin = 'AddressName'
      Size = 80
    end
    object cds_Comp_DelAdrAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      Size = 40
    end
    object cds_Comp_DelAdrAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      FixedChar = True
      Size = 40
    end
    object cds_Comp_DelAdrAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      FixedChar = True
      Size = 40
    end
    object cds_Comp_DelAdrAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      FixedChar = True
      Size = 40
    end
    object cds_Comp_DelAdrCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
    end
    object cds_Comp_DelAdrStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
      FixedChar = True
      Size = 40
    end
    object cds_Comp_DelAdrCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object cds_Comp_DelAdrAddressType_1: TIntegerField
      FieldName = 'AddressType_1'
      Origin = 'AddressType'
    end
    object cds_Comp_DelAdrPhone1: TStringField
      FieldName = 'Phone1'
      Origin = 'Phone1'
      FixedChar = True
      Size = 40
    end
    object cds_Comp_DelAdrPhone2: TStringField
      FieldName = 'Phone2'
      Origin = 'Phone2'
      FixedChar = True
      Size = 40
    end
    object cds_Comp_DelAdrPhone3: TStringField
      FieldName = 'Phone3'
      Origin = 'Phone3'
      FixedChar = True
      Size = 40
    end
    object cds_Comp_DelAdrFax: TStringField
      FieldName = 'Fax'
      Origin = 'Fax'
      FixedChar = True
    end
    object cds_Comp_DelAdrCreatedUser_1: TIntegerField
      FieldName = 'CreatedUser_1'
      Origin = 'CreatedUser'
    end
    object cds_Comp_DelAdrModifiedUser_1: TIntegerField
      FieldName = 'ModifiedUser_1'
      Origin = 'ModifiedUser'
    end
    object cds_Comp_DelAdrDateCreated_1: TSQLTimeStampField
      FieldName = 'DateCreated_1'
      Origin = 'DateCreated'
    end
    object cds_Comp_DelAdrEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      FixedChar = True
      Size = 50
    end
    object cds_Comp_DelAdrPostalCode: TStringField
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      FixedChar = True
    end
    object cds_Comp_DelAdrSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_Comp_DelAdrPartyIdentifier1: TStringField
      FieldName = 'PartyIdentifier1'
      Origin = 'PartyIdentifier1'
      Size = 50
    end
    object cds_Comp_DelAdrPartyIdentifierType1: TStringField
      FieldName = 'PartyIdentifierType1'
      Origin = 'PartyIdentifierType1'
      Size = 50
    end
    object cds_Comp_DelAdrCityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      Size = 50
    end
    object cds_Comp_DelAdrCountryName: TStringField
      FieldName = 'CountryName'
      Origin = 'CountryName'
      Required = True
      Size = 30
    end
  end
  object cds_CompAdr: TFDQuery
    AfterInsert = cds_CompAdrAfterInsert
    MasterSource = ds_Client
    MasterFields = 'ClientNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select distinct ca.*, FD.*, ci.CityName, cy.CountryName  From DB' +
        'O.CompanyAddress CA'
      'INNER JOIN dbo.Address FD on FD.AddressNo = ca.AddressNo'
      'Inner Join dbo.City ci on ci.CityNo = FD.CityNo'
      'Inner Join dbo.Country cy on cy.CountryNo = FD.CountryNo'
      ''
      ''
      ''
      'WHERE ClientNo = :ClientNo'
      'AND ca.AddressType = 1'
      '')
    Left = 544
    Top = 496
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cds_CompAdrClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CompAdrAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CompAdrAddressType: TIntegerField
      FieldName = 'AddressType'
      Origin = 'AddressType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CompAdrCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_CompAdrModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_CompAdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_CompAdrAddressNo_1: TIntegerField
      FieldName = 'AddressNo_1'
      Origin = 'AddressNo'
      Required = True
    end
    object cds_CompAdrAddressName: TStringField
      FieldName = 'AddressName'
      Origin = 'AddressName'
      Size = 80
    end
    object cds_CompAdrAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      Size = 40
    end
    object cds_CompAdrAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      FixedChar = True
      Size = 40
    end
    object cds_CompAdrAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      FixedChar = True
      Size = 40
    end
    object cds_CompAdrAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      FixedChar = True
      Size = 40
    end
    object cds_CompAdrCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
    end
    object cds_CompAdrStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
      FixedChar = True
      Size = 40
    end
    object cds_CompAdrCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object cds_CompAdrAddressType_1: TIntegerField
      FieldName = 'AddressType_1'
      Origin = 'AddressType'
    end
    object cds_CompAdrPhone1: TStringField
      FieldName = 'Phone1'
      Origin = 'Phone1'
      FixedChar = True
      Size = 40
    end
    object cds_CompAdrPhone2: TStringField
      FieldName = 'Phone2'
      Origin = 'Phone2'
      FixedChar = True
      Size = 40
    end
    object cds_CompAdrPhone3: TStringField
      FieldName = 'Phone3'
      Origin = 'Phone3'
      FixedChar = True
      Size = 40
    end
    object cds_CompAdrFax: TStringField
      FieldName = 'Fax'
      Origin = 'Fax'
      FixedChar = True
    end
    object cds_CompAdrCreatedUser_1: TIntegerField
      FieldName = 'CreatedUser_1'
      Origin = 'CreatedUser'
    end
    object cds_CompAdrModifiedUser_1: TIntegerField
      FieldName = 'ModifiedUser_1'
      Origin = 'ModifiedUser'
    end
    object cds_CompAdrDateCreated_1: TSQLTimeStampField
      FieldName = 'DateCreated_1'
      Origin = 'DateCreated'
    end
    object cds_CompAdrEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      FixedChar = True
      Size = 50
    end
    object cds_CompAdrPostalCode: TStringField
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      FixedChar = True
    end
    object cds_CompAdrSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_CompAdrPartyIdentifier1: TStringField
      FieldName = 'PartyIdentifier1'
      Origin = 'PartyIdentifier1'
      Size = 50
    end
    object cds_CompAdrPartyIdentifierType1: TStringField
      FieldName = 'PartyIdentifierType1'
      Origin = 'PartyIdentifierType1'
      Size = 50
    end
    object cds_CompAdrCityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      Size = 50
    end
    object cds_CompAdrCountryName: TStringField
      FieldName = 'CountryName'
      Origin = 'CountryName'
      Required = True
      Size = 30
    end
  end
  object cds_Address: TFDQuery
    AfterInsert = cds_AddressAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * From DBO.Address'
      '')
    Left = 608
    Top = 480
    object cds_AddressAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AddressAddressName: TStringField
      FieldName = 'AddressName'
      Origin = 'AddressName'
      Size = 80
    end
    object cds_AddressAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      Size = 40
    end
    object cds_AddressAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      FixedChar = True
      Size = 40
    end
    object cds_AddressAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      FixedChar = True
      Size = 40
    end
    object cds_AddressAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      FixedChar = True
      Size = 40
    end
    object cds_AddressCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
    end
    object cds_AddressStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
      FixedChar = True
      Size = 40
    end
    object cds_AddressCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object cds_AddressAddressType: TIntegerField
      FieldName = 'AddressType'
      Origin = 'AddressType'
    end
    object cds_AddressPhone1: TStringField
      FieldName = 'Phone1'
      Origin = 'Phone1'
      FixedChar = True
      Size = 40
    end
    object cds_AddressPhone2: TStringField
      FieldName = 'Phone2'
      Origin = 'Phone2'
      FixedChar = True
      Size = 40
    end
    object cds_AddressPhone3: TStringField
      FieldName = 'Phone3'
      Origin = 'Phone3'
      FixedChar = True
      Size = 40
    end
    object cds_AddressFax: TStringField
      FieldName = 'Fax'
      Origin = 'Fax'
      FixedChar = True
    end
    object cds_AddressCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_AddressModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_AddressDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_AddressEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      FixedChar = True
      Size = 50
    end
    object cds_AddressPostalCode: TStringField
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      FixedChar = True
    end
    object cds_AddressSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_AddressPartyIdentifier1: TStringField
      FieldName = 'PartyIdentifier1'
      Origin = 'PartyIdentifier1'
      Size = 50
    end
    object cds_AddressPartyIdentifierType1: TStringField
      FieldName = 'PartyIdentifierType1'
      Origin = 'PartyIdentifierType1'
      Size = 50
    end
  end
  object cds_AdrSearch: TFDQuery
    AfterInsert = cds_AdrSearchAfterInsert
    BeforePost = cds_AdrSearchBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct FDr.*'
      'From '
      'dbo.Address FDr '
      'WHERE AddressNo = 0'
      '')
    Left = 672
    Top = 496
    object cds_AdrSearchAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AdrSearchAddressName: TStringField
      FieldName = 'AddressName'
      Origin = 'AddressName'
      Size = 80
    end
    object cds_AdrSearchAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      Size = 40
    end
    object cds_AdrSearchAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      FixedChar = True
      Size = 40
    end
    object cds_AdrSearchAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      FixedChar = True
      Size = 40
    end
    object cds_AdrSearchAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      FixedChar = True
      Size = 40
    end
    object cds_AdrSearchCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
    end
    object cds_AdrSearchStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
      FixedChar = True
      Size = 40
    end
    object cds_AdrSearchCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object cds_AdrSearchAddressType: TIntegerField
      FieldName = 'AddressType'
      Origin = 'AddressType'
    end
    object cds_AdrSearchPhone1: TStringField
      FieldName = 'Phone1'
      Origin = 'Phone1'
      FixedChar = True
      Size = 40
    end
    object cds_AdrSearchPhone2: TStringField
      FieldName = 'Phone2'
      Origin = 'Phone2'
      FixedChar = True
      Size = 40
    end
    object cds_AdrSearchPhone3: TStringField
      FieldName = 'Phone3'
      Origin = 'Phone3'
      FixedChar = True
      Size = 40
    end
    object cds_AdrSearchFax: TStringField
      FieldName = 'Fax'
      Origin = 'Fax'
      FixedChar = True
    end
    object cds_AdrSearchCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_AdrSearchModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_AdrSearchDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_AdrSearchEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      FixedChar = True
      Size = 50
    end
    object cds_AdrSearchPostalCode: TStringField
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      FixedChar = True
    end
    object cds_AdrSearchSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_AdrSearchPartyIdentifier1: TStringField
      FieldName = 'PartyIdentifier1'
      Origin = 'PartyIdentifier1'
      Size = 50
    end
    object cds_AdrSearchPartyIdentifierType1: TStringField
      FieldName = 'PartyIdentifierType1'
      Origin = 'PartyIdentifierType1'
      Size = 50
    end
    object cds_AdrSearchCity: TStringField
      FieldKind = fkLookup
      FieldName = 'City'
      LookupDataSet = cds_City
      LookupKeyFields = 'CityNo'
      LookupResultField = 'CityName'
      KeyFields = 'CityNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_AdrSearchCountry: TStringField
      FieldKind = fkLookup
      FieldName = 'Country'
      LookupDataSet = cds_Country
      LookupKeyFields = 'CountryNo'
      LookupResultField = 'CountryName'
      KeyFields = 'CountryNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
  end
  object cds_ClientSearch: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT C.ClientNo, C.ClientName AS F'#246'retagsnamn, C.ClientCode AS' +
        ' KlientKod, C.SearchName AS S'#246'knamn, '
      'FDR.AddressLine1 AS Addressrad1, FDR.PostalCode AS PostNr,'
      'C.VATNO AS VatNr, Cy.CityName AS Stad'
      'FROM dbo.Client C'
      'Inner Join dbo.CompanyAddress CA on CA.ClientNo = C.ClientNo'
      'Inner Join dbo.Address FDR ON FDR.AddressNo = CA.AddressNo'
      'Inner Join dbo.City Cy on Cy.CityNo = FDR.CityNo'
      ''
      'WHERE C.ClientNo > 200'
      '')
    Left = 744
    Top = 480
    object cds_ClientSearchClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ClientSearchFöretagsnamn: TStringField
      FieldName = 'F'#246'retagsnamn'
      Origin = '[F'#246'retagsnamn]'
      Size = 80
    end
    object cds_ClientSearchKlientKod: TStringField
      FieldName = 'KlientKod'
      Origin = 'KlientKod'
      FixedChar = True
      Size = 3
    end
    object cds_ClientSearchSöknamn: TStringField
      FieldName = 'S'#246'knamn'
      Origin = '[S'#246'knamn]'
      Size = 80
    end
    object cds_ClientSearchAddressrad1: TStringField
      FieldName = 'Addressrad1'
      Origin = 'Addressrad1'
      Size = 40
    end
    object cds_ClientSearchPostNr: TStringField
      FieldName = 'PostNr'
      Origin = 'PostNr'
      FixedChar = True
    end
    object cds_ClientSearchVatNr: TStringField
      FieldName = 'VatNr'
      Origin = 'VatNr'
      Size = 50
    end
    object cds_ClientSearchStad: TStringField
      FieldName = 'Stad'
      Origin = 'Stad'
      Size = 50
    end
  end
  object cds_AllAgent: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT C.ClientNo,'
      '       C.ClientName,'
      'C.SearchName,'
      'C.Percent_Commision,'
      'C.Terms_Commision,'
      'CP.DefaultBillingAddressNo,'
      'CP.SendInvoiceToAgent'
      ''
      'FROM   dbo.Client        C'
      'Inner Join       dbo.ClientRole    R ON R.ClientNo = C.ClientNo'
      
        'Left Outer Join dbo.ClientPreference CP ON CP.ClientNo = C.Clien' +
        'tNo'
      #9#9#9#9#9'AND CP.RoleType = R.RoleType'
      'WHERE'
      'R.RoleType = 3'
      ''
      'order by C.ClientName'
      '')
    Left = 816
    Top = 496
    object cds_AllAgentClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AllAgentClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_AllAgentSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object cds_AllAgentPercent_Commision: TFloatField
      FieldName = 'Percent_Commision'
      Origin = 'Percent_Commision'
    end
    object cds_AllAgentTerms_Commision: TIntegerField
      FieldName = 'Terms_Commision'
      Origin = 'Terms_Commision'
    end
    object cds_AllAgentDefaultBillingAddressNo: TIntegerField
      FieldName = 'DefaultBillingAddressNo'
      Origin = 'DefaultBillingAddressNo'
    end
    object cds_AllAgentSendInvoiceToAgent: TIntegerField
      FieldName = 'SendInvoiceToAgent'
      Origin = 'SendInvoiceToAgent'
    end
  end
  object cds_ClientLL: TFDQuery
    AfterInsert = cds_ClientLLAfterInsert
    MasterSource = ds_Client
    MasterFields = 'ClientNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.Client_LoadingLocation'
      'WHERE ClientNo = :ClientNo'
      '')
    Left = 880
    Top = 480
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cds_ClientLLClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ClientLLPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      Origin = 'PhyInvPointNameNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ClientLLCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ClientLLModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ClientLLDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ClientLLStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'LASTST'#196'LLE'
      LookupDataSet = cds_City
      LookupKeyFields = 'CityNo'
      LookupResultField = 'CityName'
      KeyFields = 'PhyInvPointNameNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
  end
  object cds_ExchangeRate: TFDQuery
    AfterInsert = cds_ExchangeRateAfterInsert
    MasterSource = dsCurrency
    MasterFields = 'CurrencyNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * From DBO.ExchangeRate'
      'WHERE CurrencyNo = :CurrencyNo'
      '')
    Left = 952
    Top = 496
    ParamData = <
      item
        Name = 'CURRENCYNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cds_ExchangeRateCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ExchangeRateExchangeRateNo: TIntegerField
      FieldName = 'ExchangeRateNo'
      Origin = 'ExchangeRateNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ExchangeRateExchangeRate: TFloatField
      FieldName = 'ExchangeRate'
      Origin = 'ExchangeRate'
    end
    object cds_ExchangeRateValidFrom: TSQLTimeStampField
      FieldName = 'ValidFrom'
      Origin = 'ValidFrom'
    end
    object cds_ExchangeRateCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ExchangeRateModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ExchangeRateDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cdsExtPP: TFDQuery
    AfterInsert = cdsExtPPAfterInsert
    MasterSource = ds_ProductionUnit
    MasterFields = 'ClientNo;RegistrationPointNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ExtraPrintParam'
      'WHERE ClientNo = :ClientNo'
      'AND RegPointNo = :RegistrationPointNo'
      '')
    Left = 1032
    Top = 480
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'REGISTRATIONPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cdsExtPPClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsExtPPRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsExtPPRowNo: TIntegerField
      FieldName = 'RowNo'
      Origin = 'RowNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsExtPPDescription: TStringField
      FieldName = 'Description'
      Origin = 'Description'
      Size = 50
    end
    object cdsExtPPPrintText: TStringField
      FieldName = 'PrintText'
      Origin = 'PrintText'
    end
    object cdsExtPPPrintParam: TStringField
      FieldName = 'PrintParam'
      Origin = 'PrintParam'
      Size = 5
    end
  end
  object cds_SalesGrp: TFDQuery
    AfterInsert = cds_SalesGrpAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.SalesmanGroup'
      '')
    Left = 1096
    Top = 496
    object cds_SalesGrpSalesGroupNo: TIntegerField
      FieldName = 'SalesGroupNo'
      Origin = 'SalesGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SalesGrpSalesGroupName: TStringField
      FieldName = 'SalesGroupName'
      Origin = 'SalesGroupName'
      Size = 15
    end
  end
  object cds_Contact: TFDQuery
    AfterInsert = cds_ContactAfterInsert
    MasterSource = dsClient
    MasterFields = 'ClientNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.Contact'
      'WHERE ClientNo =:ClientNo'
      '')
    Left = 288
    Top = 32
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cds_ContactClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ContactContactNo: TIntegerField
      FieldName = 'ContactNo'
      Origin = 'ContactNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ContactLastName: TStringField
      FieldName = 'LastName'
      Origin = 'LastName'
      FixedChar = True
      Size = 50
    end
    object cds_ContactPhoneNo: TStringField
      FieldName = 'PhoneNo'
      Origin = 'PhoneNo'
      FixedChar = True
    end
    object cds_ContactFaxNo: TStringField
      FieldName = 'FaxNo'
      Origin = 'FaxNo'
      FixedChar = True
    end
    object cds_ContactEmailAddress: TStringField
      FieldName = 'EmailAddress'
      Origin = 'EmailAddress'
      FixedChar = True
      Size = 50
    end
    object cds_ContactCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ContactModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ContactDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ContactFirstName: TStringField
      FieldName = 'FirstName'
      Origin = 'FirstName'
      FixedChar = True
      Size = 30
    end
    object cds_ContactMobileNo: TStringField
      FieldName = 'MobileNo'
      Origin = 'MobileNo'
      FixedChar = True
    end
  end
  object cdsContRole: TFDQuery
    AfterInsert = cdsContRoleAfterInsert
    MasterSource = ds_Contact
    MasterFields = 'ClientNo;ContactNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ContactRole'
      'WHERE'
      'ClientNo = :ClientNo'
      'AND ContactNo = :ContactNo'
      '')
    Left = 352
    Top = 48
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'CONTACTNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cdsContRoleClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContRoleContactNo: TIntegerField
      FieldName = 'ContactNo'
      Origin = 'ContactNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContRoleRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContRoleCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsContRoleModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsContRoleDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsContRoleStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'ROLL'
      LookupDataSet = cdsContRoleType
      LookupKeyFields = 'RoleType'
      LookupResultField = 'RoleDescription'
      KeyFields = 'RoleType'
      ProviderFlags = []
      Lookup = True
    end
  end
  object cdsContRoleType: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ContactRoleType'
      '')
    Left = 432
    Top = 16
    object cdsContRoleTypeRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContRoleTypeRoleDescription: TStringField
      FieldName = 'RoleDescription'
      Origin = 'RoleDescription'
      FixedChar = True
    end
    object cdsContRoleTypeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cdsContRoleTypeCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsContRoleTypeModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsContRoleTypeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cdsClient: TFDQuery
    AfterInsert = cdsClientAfterInsert
    AfterPost = cdsClientAfterPost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select * from dbo.client'
      '')
    Left = 584
    Top = 32
    object cdsClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      FixedChar = True
      Size = 3
    end
    object cdsClientSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cdsClientClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cdsClientSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cdsClientPercent_Commision: TFloatField
      FieldName = 'Percent_Commision'
      Origin = 'Percent_Commision'
    end
    object cdsClientTerms_Commision: TIntegerField
      FieldName = 'Terms_Commision'
      Origin = 'Terms_Commision'
    end
    object cdsClientDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsClientCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsClientModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsClientURL: TStringField
      FieldName = 'URL'
      Origin = 'URL'
      FixedChar = True
      Size = 100
    end
    object cdsClientVATNo: TStringField
      FieldName = 'VATNo'
      Origin = 'VATNo'
      Size = 50
    end
    object cdsClientSpecialText: TMemoField
      FieldName = 'SpecialText'
      Origin = 'SpecialText'
      BlobType = ftMemo
    end
    object cdsClientSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object cdsClientMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
    object cdsClientPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
    object cdsCliento5: TStringField
      FieldName = 'o5'
      Origin = 'o5'
      Size = 8
    end
    object cdsClientPaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
      Origin = 'PaketNoPos'
    end
    object cdsClientPaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
      Origin = 'PaketNoLength'
    end
    object cdsClientSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
      Origin = 'SupplierCodePos'
    end
    object cdsClientSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
      Origin = 'SupplierCodeLength'
    end
    object cdsClientPartyIdentifier: TStringField
      FieldName = 'PartyIdentifier'
      Origin = 'PartyIdentifier'
      Size = 50
    end
    object cdsClientAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cdsClientDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cdsClientIntVerk: TIntegerField
      FieldName = 'IntVerk'
      Origin = 'IntVerk'
    end
    object cdsClientClientID: TStringField
      FieldName = 'ClientID'
      Origin = 'ClientID'
      Size = 11
    end
    object cdsClientAvgPrice: TFloatField
      FieldName = 'AvgPrice'
      Origin = 'AvgPrice'
    end
    object cdsClientAvgPriceCurrencyNo: TIntegerField
      FieldName = 'AvgPriceCurrencyNo'
      Origin = 'AvgPriceCurrencyNo'
    end
    object cdsClientPartyIdentifierType: TStringField
      FieldName = 'PartyIdentifierType'
      Origin = 'PartyIdentifierType'
      Size = 50
    end
    object cdsClientPartyIdentifier1: TStringField
      FieldName = 'PartyIdentifier1'
      Origin = 'PartyIdentifier1'
      Size = 50
    end
    object cdsClientPartyIdentifierType1: TStringField
      FieldName = 'PartyIdentifierType1'
      Origin = 'PartyIdentifierType1'
      Size = 50
    end
    object cdsClientcid: TStringField
      FieldName = 'cid'
      Origin = 'cid'
      Size = 8
    end
    object cdsClientStatistikLandNr: TIntegerField
      FieldName = 'StatistikLandNr'
      Origin = 'StatistikLandNr'
    end
  end
  object cds_ClientRole: TFDQuery
    AfterInsert = cds_ClientRoleAfterInsert
    BeforePost = cds_ClientRoleBeforePost
    BeforeDelete = cds_ClientRoleBeforeDelete
    MasterSource = dsClient
    MasterFields = 'ClientNo'
    DetailFields = 'ClientNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from dbo.ClientRole'
      'WHERE ClientNo = :ClientNo'
      '')
    Left = 648
    Top = 32
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object cds_ClientRoleClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ClientRoleRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnChange = cds_ClientRoleRoleTypeChange
    end
    object cds_ClientRoleidXOR: TStringField
      FieldName = 'idXOR'
      Origin = 'idXOR'
      Size = 12
    end
    object cds_ClientRoletypeXOR: TIntegerField
      FieldName = 'typeXOR'
      Origin = 'typeXOR'
    end
    object cds_ClientRoleCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ClientRoleModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ClientRoleDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ClientRoleStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'ROLL'
      LookupDataSet = cdsContRoleType
      LookupKeyFields = 'RoleType'
      LookupResultField = 'RoleDescription'
      KeyFields = 'RoleType'
      ProviderFlags = []
      Lookup = True
    end
  end
  object cds_Pref: TFDQuery
    AfterInsert = cds_PrefAfterInsert
    MasterSource = ds_ClientRole
    MasterFields = 'ClientNo;RoleType'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ClientPreference '
      'WHERE ClientNo = :ClientNo '
      'AND RoleType = :RoleType'
      '')
    Left = 744
    Top = 32
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'ROLETYPE'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cds_PrefClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PrefRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PrefDefaultShippingAddressNo: TIntegerField
      FieldName = 'DefaultShippingAddressNo'
      Origin = 'DefaultShippingAddressNo'
    end
    object cds_PrefDefaultDeliveryTermsNo: TIntegerField
      FieldName = 'DefaultDeliveryTermsNo'
      Origin = 'DefaultDeliveryTermsNo'
    end
    object cds_PrefDefaultPaymentTermsNo: TIntegerField
      FieldName = 'DefaultPaymentTermsNo'
      Origin = 'DefaultPaymentTermsNo'
    end
    object cds_PrefDefaultCurrencyNo: TIntegerField
      FieldName = 'DefaultCurrencyNo'
      Origin = 'DefaultCurrencyNo'
    end
    object cds_PrefDefaultPriceUnitNo: TIntegerField
      FieldName = 'DefaultPriceUnitNo'
      Origin = 'DefaultPriceUnitNo'
    end
    object cds_PrefDefaultVolumeUnitNo: TIntegerField
      FieldName = 'DefaultVolumeUnitNo'
      Origin = 'DefaultVolumeUnitNo'
    end
    object cds_PrefInvoiceText: TStringField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      Size = 250
    end
    object cds_PrefDefaultAgentNo: TIntegerField
      FieldName = 'DefaultAgentNo'
      Origin = 'DefaultAgentNo'
    end
    object cds_PrefLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
    end
    object cds_PrefLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
    object cds_PrefProdDisplayFormat: TIntegerField
      FieldName = 'ProdDisplayFormat'
      Origin = 'ProdDisplayFormat'
    end
    object cds_PrefLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
      Origin = 'LengthFormat'
    end
    object cds_PrefDefaultBillingAddressNo: TIntegerField
      FieldName = 'DefaultBillingAddressNo'
      Origin = 'DefaultBillingAddressNo'
    end
    object cds_PrefSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_PrefDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PrefCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PrefModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_PrefPhone1: TStringField
      FieldName = 'Phone1'
      Origin = 'Phone1'
      FixedChar = True
    end
    object cds_PrefPhone2: TStringField
      FieldName = 'Phone2'
      Origin = 'Phone2'
      FixedChar = True
    end
    object cds_PrefPhone3: TStringField
      FieldName = 'Phone3'
      Origin = 'Phone3'
      FixedChar = True
    end
    object cds_PrefFax: TStringField
      FieldName = 'Fax'
      Origin = 'Fax'
      FixedChar = True
    end
    object cds_PrefEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      FixedChar = True
      Size = 50
    end
    object cds_PrefDefaultDestinationNo: TIntegerField
      FieldName = 'DefaultDestinationNo'
      Origin = 'DefaultDestinationNo'
    end
    object cds_PrefSendInvoiceToAgent: TIntegerField
      FieldName = 'SendInvoiceToAgent'
      Origin = 'SendInvoiceToAgent'
    end
    object cds_PrefVAT_OnInvoice: TIntegerField
      FieldName = 'VAT_OnInvoice'
      Origin = 'VAT_OnInvoice'
    end
    object cds_PrefCommisionInDiscount: TIntegerField
      FieldName = 'CommisionInDiscount'
      Origin = 'CommisionInDiscount'
    end
    object cds_PrefFreightInDiscount: TIntegerField
      FieldName = 'FreightInDiscount'
      Origin = 'FreightInDiscount'
    end
    object cds_PrefStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'CurrencyName'
      LookupDataSet = cdscurrency
      LookupKeyFields = 'CurrencyNo'
      LookupResultField = 'CurrencyName'
      KeyFields = 'DefaultCurrencyNo'
      ProviderFlags = []
      Size = 5
      Lookup = True
    end
  end
  object cds_points: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct CY.CITYNO, CY.CITYNAME '
      'FROM'
      'dbo.PHYSICALINVENTORYPOINT PH '
      'Inner Join CITY CY ON CY.CITYNO = PH.PhyInvPointNameNo'
      ''
      'WHERE PH.OwnerNo = :OwnerNo'
      'ORDER BY CY.CITYNAME'
      ''
      '')
    Left = 824
    Top = 40
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_pointsCITYNO: TIntegerField
      FieldName = 'CITYNO'
      Origin = 'CITYNO'
      Required = True
    end
    object cds_pointsCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Origin = 'CITYNAME'
      Size = 50
    end
  end
  object cds_GrpInv: TFDQuery
    AfterInsert = cds_GrpInvAfterInsert
    MasterSource = ds_PhysInv
    MasterFields = 'PhysicalInventoryPointNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from '
      'dbo.LogicalInventoryPoint'
      'Where PhysicalInventoryPointNo = :PhysicalInventoryPointNo'
      '')
    Left = 912
    Top = 40
    ParamData = <
      item
        Name = 'PHYSICALINVENTORYPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cds_GrpInvLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GrpInvPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
    end
    object cds_GrpInvLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Origin = 'LogicalInventoryName'
      Size = 50
    end
    object cds_GrpInvSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_GrpInvDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_GrpInvModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_GrpInvCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_GrpInvInventoryType: TIntegerField
      FieldName = 'InventoryType'
      Origin = 'InventoryType'
    end
    object cds_GrpInvAvRegByPkg: TIntegerField
      FieldName = 'AvRegByPkg'
      Origin = 'AvRegByPkg'
    end
    object cds_GrpInvGrupp: TStringField
      FieldName = 'Grupp'
      Origin = 'Grupp'
      Size = 10
    end
    object cds_GrpInvInvCode: TStringField
      FieldName = 'InvCode'
      Origin = 'InvCode'
      Size = 3
    end
  end
  object cds_PhysInv: TFDQuery
    AfterInsert = cds_PhysInvAfterInsert
    MasterSource = dsClient
    MasterFields = 'ClientNo'
    AfterApplyUpdates = cds_PhysInvAfterApplyUpdates
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'Select * from dbo.PhysicalInventoryPoint'
      'WHERE OwnerNo = :ClientNo'
      '')
    Left = 976
    Top = 40
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object cds_PhysInvOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_PhysInvPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PhysInvTypeOfInventory: TIntegerField
      FieldName = 'TypeOfInventory'
      Origin = 'TypeOfInventory'
    end
    object cds_PhysInvPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      Origin = 'PhyInvPointNameNo'
    end
    object cds_PhysInvSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_PhysInvDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PhysInvModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_PhysInvCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PhysInvORT: TStringField
      FieldKind = fkLookup
      FieldName = 'ORT'
      LookupDataSet = cds_City
      LookupKeyFields = 'CityNo'
      LookupResultField = 'CityName'
      KeyFields = 'PhyInvPointNameNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
  end
  object cds_ClientList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select str(c.Clientno)+'#39','#39'+str(cr.Roletype)+str(isnull(CAL.Agent' +
        'No,0))   AS UID, '
      'C.ClientName AS NAMN, '
      'C.SearchName AS S'#214'KNAMN, '
      'c.VATNo AS VAT, '
      'rt.RoleDescription AS ROLL,'
      'cn.CountryName AS LAND, c.Clientno,'
      'MR.MarketRegionName AS MARKNAD,'
      'FD.AddressLine1 AS ADRESSRAD1,'
      'FD.AddressLine2 AS ADRESSRAD2,'
      'FD.AddressLine3 AS ADRESSRAD3,'
      'FD.AddressLine4 AS ADRESSRAD4,'
      'ci.CityName AS ORT,'
      'a.ClientName AS AGENT,'
      'FD.Phone1 AS TELE1,'
      'FD.Fax AS FAX,'
      'FD.EMAIL,'
      'cr.Roletype'
      ''
      'From dbo.Client c'
      
        'Left Outer Join dbo.MarketRegion MR ON MR.MarketRegionNo = C.Mar' +
        'ketRegionNo'
      'Inner Join dbo.ClientRole cr ON cr.ClientNo = c.Clientno'
      'Inner Join dbo.RoleType rt ON rt.RoleType = cr.Roletype'
      'Left Outer Join dbo.Address FD ON FD.AddressNo ='
      '(Select DefaultBillingAddressNo From dbo.ClientPreference'
      'WHERE Clientno = cr.ClientNo AND RoleType = cr.RoleType)'
      'Left Outer Join dbo.Country cn ON cn.CountryNo = FD.CountryNo'
      'Left Outer Join dbo.City ci ON ci.CityNo = FD.CityNo'
      'Left Outer Join dbo.ClientAgentList CAL '
      'Inner Join dbo.Client a on a.ClientNo = CAL.AgentNo'
      'ON CAL.ClientNo  = C.ClientNo'
      ''
      '-- order by c.Clientno, cr.Roletype'
      '')
    Left = 1040
    Top = 40
    object cds_ClientListUID: TStringField
      FieldName = 'UID'
      Origin = 'UID'
      ReadOnly = True
      Size = 31
    end
    object cds_ClientListNAMN: TStringField
      FieldName = 'NAMN'
      Origin = 'NAMN'
      Size = 80
    end
    object cds_ClientListSÖKNAMN: TStringField
      FieldName = 'S'#214'KNAMN'
      Origin = '[S'#214'KNAMN]'
      Size = 80
    end
    object cds_ClientListVAT: TStringField
      FieldName = 'VAT'
      Origin = 'VAT'
      Size = 50
    end
    object cds_ClientListROLL: TStringField
      FieldName = 'ROLL'
      Origin = 'ROLL'
      FixedChar = True
    end
    object cds_ClientListLAND: TStringField
      FieldName = 'LAND'
      Origin = 'LAND'
      Size = 30
    end
    object cds_ClientListClientno: TIntegerField
      FieldName = 'Clientno'
      Origin = 'Clientno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ClientListMARKNAD: TStringField
      FieldName = 'MARKNAD'
      Origin = 'MARKNAD'
      FixedChar = True
      Size = 10
    end
    object cds_ClientListADRESSRAD1: TStringField
      FieldName = 'ADRESSRAD1'
      Origin = 'ADRESSRAD1'
      Size = 40
    end
    object cds_ClientListADRESSRAD2: TStringField
      FieldName = 'ADRESSRAD2'
      Origin = 'ADRESSRAD2'
      FixedChar = True
      Size = 40
    end
    object cds_ClientListADRESSRAD3: TStringField
      FieldName = 'ADRESSRAD3'
      Origin = 'ADRESSRAD3'
      FixedChar = True
      Size = 40
    end
    object cds_ClientListADRESSRAD4: TStringField
      FieldName = 'ADRESSRAD4'
      Origin = 'ADRESSRAD4'
      FixedChar = True
      Size = 40
    end
    object cds_ClientListORT: TStringField
      FieldName = 'ORT'
      Origin = 'ORT'
      Size = 50
    end
    object cds_ClientListAGENT: TStringField
      FieldName = 'AGENT'
      Origin = 'AGENT'
      Size = 80
    end
    object cds_ClientListTELE1: TStringField
      FieldName = 'TELE1'
      Origin = 'TELE1'
      FixedChar = True
      Size = 40
    end
    object cds_ClientListFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      FixedChar = True
    end
    object cds_ClientListEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      FixedChar = True
      Size = 50
    end
    object cds_ClientListRoletype: TIntegerField
      FieldName = 'Roletype'
      Origin = 'Roletype'
      Required = True
    end
  end
  object cds_AgentList: TFDQuery
    MasterSource = dsClient
    MasterFields = 'ClientNo'
    DetailFields = 'ClientNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'Select * FROM dbo.ClientAgentList'
      'WHERE ClientNo = :ClientNo'
      '')
    Left = 1120
    Top = 40
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object cds_AgentListClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AgentListAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AgentListDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_AgentListCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_AgentListModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_AgentListStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'AGENT'
      LookupDataSet = cds_AllAgent
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'AgentNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
  end
  object cds_LL_Verk: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct PH.PhyInvPointNameNo, CY.CITYNAME, PH.OwnerNo'
      'FROM'
      'Client SR'
      'Inner Join PHYSICALINVENTORYPOINT PH ON PH.OwnerNo = SR.ClientNo'
      'Inner Join CITY CY ON'#9'CY.CITYNO = PH.PhyInvPointNameNo'
      ''
      'ORDER BY CY.CITYNAME'
      ''
      '')
    Left = 520
    Top = 32
    object cds_LL_VerkPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      Origin = 'PhyInvPointNameNo'
    end
    object cds_LL_VerkCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Origin = 'CITYNAME'
      Size = 50
    end
    object cds_LL_VerkOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
  end
  object cds_PhysInvByCityNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct PH.PhyInvPointNameNo, CY.CITYNAME, PH.OwnerNo'
      'FROM'
      'Client SR'
      'Inner Join PHYSICALINVENTORYPOINT PH ON PH.OwnerNo = SR.ClientNo'
      'Inner Join CITY CY ON'#9'CY.CITYNO = PH.PhyInvPointNameNo'
      ''
      'ORDER BY CY.CITYNAME'
      ''
      ''
      '')
    Left = 224
    Top = 224
    object cds_PhysInvByCityNoPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      Origin = 'PhyInvPointNameNo'
    end
    object cds_PhysInvByCityNoCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Origin = 'CITYNAME'
      Size = 50
    end
    object cds_PhysInvByCityNoOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
  end
  object sq_ClientCode: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select * from dbo.client'
      'Where ClientCode =:ClientCode'
      'AND ClientNo <> :ClientNo'
      '')
    Left = 216
    Top = 32
    ParamData = <
      item
        Name = 'CLIENTCODE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_ClientCodeClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_ClientCodeClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      FixedChar = True
      Size = 3
    end
    object sq_ClientCodeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object sq_ClientCodeClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object sq_ClientCodeSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object sq_ClientCodePercent_Commision: TFloatField
      FieldName = 'Percent_Commision'
      Origin = 'Percent_Commision'
    end
    object sq_ClientCodeTerms_Commision: TIntegerField
      FieldName = 'Terms_Commision'
      Origin = 'Terms_Commision'
    end
    object sq_ClientCodeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_ClientCodeCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object sq_ClientCodeModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object sq_ClientCodeURL: TStringField
      FieldName = 'URL'
      Origin = 'URL'
      FixedChar = True
      Size = 100
    end
    object sq_ClientCodeVATNo: TStringField
      FieldName = 'VATNo'
      Origin = 'VATNo'
      Size = 50
    end
    object sq_ClientCodeSpecialText: TMemoField
      FieldName = 'SpecialText'
      Origin = 'SpecialText'
      BlobType = ftMemo
    end
    object sq_ClientCodeSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object sq_ClientCodeMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
    object sq_ClientCodePktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
    object sq_ClientCodeo5: TStringField
      FieldName = 'o5'
      Origin = 'o5'
      Size = 8
    end
    object sq_ClientCodePaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
      Origin = 'PaketNoPos'
    end
    object sq_ClientCodePaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
      Origin = 'PaketNoLength'
    end
    object sq_ClientCodeSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
      Origin = 'SupplierCodePos'
    end
    object sq_ClientCodeSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
      Origin = 'SupplierCodeLength'
    end
    object sq_ClientCodePartyIdentifier: TStringField
      FieldName = 'PartyIdentifier'
      Origin = 'PartyIdentifier'
      Size = 50
    end
    object sq_ClientCodeAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object sq_ClientCodeDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object sq_ClientCodeIntVerk: TIntegerField
      FieldName = 'IntVerk'
      Origin = 'IntVerk'
    end
    object sq_ClientCodeClientID: TStringField
      FieldName = 'ClientID'
      Origin = 'ClientID'
      Size = 11
    end
    object sq_ClientCodeAvgPrice: TFloatField
      FieldName = 'AvgPrice'
      Origin = 'AvgPrice'
    end
    object sq_ClientCodeAvgPriceCurrencyNo: TIntegerField
      FieldName = 'AvgPriceCurrencyNo'
      Origin = 'AvgPriceCurrencyNo'
    end
    object sq_ClientCodePartyIdentifierType: TStringField
      FieldName = 'PartyIdentifierType'
      Origin = 'PartyIdentifierType'
      Size = 50
    end
    object sq_ClientCodePartyIdentifier1: TStringField
      FieldName = 'PartyIdentifier1'
      Origin = 'PartyIdentifier1'
      Size = 50
    end
    object sq_ClientCodePartyIdentifierType1: TStringField
      FieldName = 'PartyIdentifierType1'
      Origin = 'PartyIdentifierType1'
      Size = 50
    end
    object sq_ClientCodecid: TStringField
      FieldName = 'cid'
      Origin = 'cid'
      Size = 8
    end
    object sq_ClientCodeStatistikLandNr: TIntegerField
      FieldName = 'StatistikLandNr'
      Origin = 'StatistikLandNr'
    end
  end
  object sq_name: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select * from dbo.client'
      'Where clientname =:clientname'
      'AND ClientNo <> :ClientNo'
      '')
    Left = 144
    Top = 32
    ParamData = <
      item
        Name = 'CLIENTNAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_nameClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_nameClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      FixedChar = True
      Size = 3
    end
    object sq_nameSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object sq_nameClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object sq_nameSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object sq_namePercent_Commision: TFloatField
      FieldName = 'Percent_Commision'
      Origin = 'Percent_Commision'
    end
    object sq_nameTerms_Commision: TIntegerField
      FieldName = 'Terms_Commision'
      Origin = 'Terms_Commision'
    end
    object sq_nameDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_nameCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object sq_nameModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object sq_nameURL: TStringField
      FieldName = 'URL'
      Origin = 'URL'
      FixedChar = True
      Size = 100
    end
    object sq_nameVATNo: TStringField
      FieldName = 'VATNo'
      Origin = 'VATNo'
      Size = 50
    end
    object sq_nameSpecialText: TMemoField
      FieldName = 'SpecialText'
      Origin = 'SpecialText'
      BlobType = ftMemo
    end
    object sq_nameSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object sq_nameMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
    object sq_namePktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
    object sq_nameo5: TStringField
      FieldName = 'o5'
      Origin = 'o5'
      Size = 8
    end
    object sq_namePaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
      Origin = 'PaketNoPos'
    end
    object sq_namePaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
      Origin = 'PaketNoLength'
    end
    object sq_nameSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
      Origin = 'SupplierCodePos'
    end
    object sq_nameSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
      Origin = 'SupplierCodeLength'
    end
    object sq_namePartyIdentifier: TStringField
      FieldName = 'PartyIdentifier'
      Origin = 'PartyIdentifier'
      Size = 50
    end
    object sq_nameAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object sq_nameDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object sq_nameIntVerk: TIntegerField
      FieldName = 'IntVerk'
      Origin = 'IntVerk'
    end
    object sq_nameClientID: TStringField
      FieldName = 'ClientID'
      Origin = 'ClientID'
      Size = 11
    end
    object sq_nameAvgPrice: TFloatField
      FieldName = 'AvgPrice'
      Origin = 'AvgPrice'
    end
    object sq_nameAvgPriceCurrencyNo: TIntegerField
      FieldName = 'AvgPriceCurrencyNo'
      Origin = 'AvgPriceCurrencyNo'
    end
    object sq_namePartyIdentifierType: TStringField
      FieldName = 'PartyIdentifierType'
      Origin = 'PartyIdentifierType'
      Size = 50
    end
    object sq_namePartyIdentifier1: TStringField
      FieldName = 'PartyIdentifier1'
      Origin = 'PartyIdentifier1'
      Size = 50
    end
    object sq_namePartyIdentifierType1: TStringField
      FieldName = 'PartyIdentifierType1'
      Origin = 'PartyIdentifierType1'
      Size = 50
    end
    object sq_namecid: TStringField
      FieldName = 'cid'
      Origin = 'cid'
      Size = 8
    end
    object sq_nameStatistikLandNr: TIntegerField
      FieldName = 'StatistikLandNr'
      Origin = 'StatistikLandNr'
    end
  end
  object sq_Searchname: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select * from dbo.client'
      'Where searchname =:searchname'
      'AND ClientNo <> :ClientNo'
      '')
    Left = 144
    Top = 80
    ParamData = <
      item
        Name = 'SEARCHNAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_SearchnameClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_SearchnameClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      FixedChar = True
      Size = 3
    end
    object sq_SearchnameSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object sq_SearchnameClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object sq_SearchnameSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object sq_SearchnamePercent_Commision: TFloatField
      FieldName = 'Percent_Commision'
      Origin = 'Percent_Commision'
    end
    object sq_SearchnameTerms_Commision: TIntegerField
      FieldName = 'Terms_Commision'
      Origin = 'Terms_Commision'
    end
    object sq_SearchnameDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_SearchnameCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object sq_SearchnameModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object sq_SearchnameURL: TStringField
      FieldName = 'URL'
      Origin = 'URL'
      FixedChar = True
      Size = 100
    end
    object sq_SearchnameVATNo: TStringField
      FieldName = 'VATNo'
      Origin = 'VATNo'
      Size = 50
    end
    object sq_SearchnameSpecialText: TMemoField
      FieldName = 'SpecialText'
      Origin = 'SpecialText'
      BlobType = ftMemo
    end
    object sq_SearchnameSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object sq_SearchnameMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
    object sq_SearchnamePktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
    object sq_Searchnameo5: TStringField
      FieldName = 'o5'
      Origin = 'o5'
      Size = 8
    end
    object sq_SearchnamePaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
      Origin = 'PaketNoPos'
    end
    object sq_SearchnamePaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
      Origin = 'PaketNoLength'
    end
    object sq_SearchnameSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
      Origin = 'SupplierCodePos'
    end
    object sq_SearchnameSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
      Origin = 'SupplierCodeLength'
    end
    object sq_SearchnamePartyIdentifier: TStringField
      FieldName = 'PartyIdentifier'
      Origin = 'PartyIdentifier'
      Size = 50
    end
    object sq_SearchnameAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object sq_SearchnameDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object sq_SearchnameIntVerk: TIntegerField
      FieldName = 'IntVerk'
      Origin = 'IntVerk'
    end
    object sq_SearchnameClientID: TStringField
      FieldName = 'ClientID'
      Origin = 'ClientID'
      Size = 11
    end
    object sq_SearchnameAvgPrice: TFloatField
      FieldName = 'AvgPrice'
      Origin = 'AvgPrice'
    end
    object sq_SearchnameAvgPriceCurrencyNo: TIntegerField
      FieldName = 'AvgPriceCurrencyNo'
      Origin = 'AvgPriceCurrencyNo'
    end
    object sq_SearchnamePartyIdentifierType: TStringField
      FieldName = 'PartyIdentifierType'
      Origin = 'PartyIdentifierType'
      Size = 50
    end
    object sq_SearchnamePartyIdentifier1: TStringField
      FieldName = 'PartyIdentifier1'
      Origin = 'PartyIdentifier1'
      Size = 50
    end
    object sq_SearchnamePartyIdentifierType1: TStringField
      FieldName = 'PartyIdentifierType1'
      Origin = 'PartyIdentifierType1'
      Size = 50
    end
    object sq_Searchnamecid: TStringField
      FieldName = 'cid'
      Origin = 'cid'
      Size = 8
    end
    object sq_SearchnameStatistikLandNr: TIntegerField
      FieldName = 'StatistikLandNr'
      Origin = 'StatistikLandNr'
    end
  end
  object sq_GetPIPByClientNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct PIP.PhysicalInventoryPointNo AS PIPNO'
      'FROM dbo.PhysicalInventoryPoint PIP'
      ' WHERE PIP.OwnerNo = 741'
      'AND PIP.PhyInvPointNameNo in (Select PhyInvPointNameNo'
      'FROM dbo.PhysicalInventoryPoint PIP2'
      'WHERE OwnerNo = :OwnerNo)'
      '')
    Left = 224
    Top = 112
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPIPByClientNoPIPNO: TIntegerField
      FieldName = 'PIPNO'
      Origin = 'PIPNO'
      Required = True
    end
  end
  object sq_GetSuppCodeByPktLevKod: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select C.ClientCode from dbo.client C'
      ''
      'Where C.PktNrLevKod = :PktNrLevKod'
      '')
    Left = 224
    Top = 160
    ParamData = <
      item
        Name = 'PKTNRLEVKOD'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetSuppCodeByPktLevKodClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      FixedChar = True
      Size = 3
    end
  end
  object sq_Get_PktNrLevKod: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select PktNrLevKod from dbo.client'
      'WHERE ClientNo = :ClientNo'
      '')
    Left = 240
    Top = 440
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_Get_PktNrLevKodPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
  end
  object sq_GetCityNoPIPNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct PIP.PhyInvPointNameNo AS CityNO'
      'FROM dbo.PhysicalInventoryPoint PIP'
      ' WHERE PIP.PhysicalInventoryPointNo = :PIPNO'
      ''
      '')
    Left = 240
    Top = 496
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetCityNoPIPNoCityNO: TIntegerField
      FieldName = 'CityNO'
      Origin = 'CityNO'
    end
  end
  object SQLQuery1: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT PH.PhysicalInventoryPointNo, CY.CITYNAME, CR.RoleType'
      'FROM'
      'PHYSICALINVENTORYPOINT PH, CITY CY, ClientRole CR'
      'WHERE'
      'PH.OwnerNo = :PARAM1'
      'AND CY.CITYNO = PH.PhyInvPointNameNo'
      'AND CY.CITYNAME <> '#39'Transfer'#39
      'AND CR.ClientNo = PH.OwnerNo'
      '')
    Left = 16
    Top = 696
    ParamData = <
      item
        Name = 'PARAM1'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object SQLQuery1PhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLQuery1CITYNAME: TStringField
      FieldName = 'CITYNAME'
      Origin = 'CITYNAME'
      Size = 50
    end
    object SQLQuery1RoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      Required = True
    end
  end
  object sq_LogInv: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT LogicalInventoryPointNo, LogicalInventoryName'
      'FROM dbo.LOGICALINVENTORYPOINT'
      'WHERE'
      'PhysicalInventoryPointNo = :PARAM1'
      'AND SequenceNo = 1'
      '')
    Left = 80
    Top = 696
    ParamData = <
      item
        Name = 'PARAM1'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LogInvLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_LogInvLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Origin = 'LogicalInventoryName'
      Size = 50
    end
  end
  object sq_GetPIPNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct LIP.PhysicalInventoryPointNo AS PIPNO'
      'FROM dbo.LogicalInventoryPoint LIP'
      ' WHERE LIP.LogicalInventoryPointNo = :LIPNO'
      ''
      '')
    Left = 152
    Top = 704
    ParamData = <
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPIPNoPIPNO: TIntegerField
      FieldName = 'PIPNO'
      Origin = 'PIPNO'
    end
  end
  object sq_InsCliEtik: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Insert dbo.ClientEtikett'
      'VALUES(:UserID, :ClientNo, :RoleType)'
      '')
    Left = 240
    Top = 728
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ROLETYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetSRNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select SalesRegionNo from dbo.client'
      'WHERE  ClientNo = :ClientNo'
      '')
    Left = 240
    Top = 656
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetSRNoSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
  end
  object sq_DelCliEtik: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete FROM dbo.ClientEtikett'
      'WHERE UserID = :UserID'
      '')
    Left = 320
    Top = 664
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sqDelCompAdr: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete DBO.CompanyAddress '
      'WHERE AddressNo = :AddressNo'
      ''
      '')
    Left = 400
    Top = 664
    ParamData = <
      item
        Name = 'ADDRESSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sqAdrDepend: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select addressNo from dbo.Address FD'
      'WHERE FD.AddressNo = :AddressNo'
      ''
      
        'and FD.AddressNo not in (Select AddressNo from dbo.ShippingPlan_' +
        'ShippingAddress'
      'WHERE AddressNo = FD.AddressNo)'
      ''
      'and FD.AddressNo not in (Select DestinationNo from dbo.Orders'
      'WHERE DestinationNo = FD.AddressNo)'
      ''
      
        'and FD.AddressNo not in (Select ClientBillingAddressNo from dbo.' +
        'Orders'
      'WHERE ClientBillingAddressNo = FD.AddressNo)'
      ''
      
        'and FD.AddressNo not in (Select AddressNo from dbo.InvoiceShipTo' +
        'Address'
      'WHERE AddressNo = FD.AddressNo)'
      ''
      
        'and FD.AddressNo not in (Select ClientBillingAddressNo from dbo.' +
        'CustomerShippingPlanHeader'
      'WHERE ClientBillingAddressNo = FD.AddressNo)'
      ''
      ''
      '')
    Left = 488
    Top = 640
    ParamData = <
      item
        Name = 'ADDRESSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sqAdrDependaddressNo: TIntegerField
      FieldName = 'addressNo'
      Origin = 'addressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetPkgPrefix: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct pf.PkgPrefix'
      'FROM dbo.PkgPrefix pf '
      'WHERE pf.ProductionUnitCode = :ProductionUnitCode')
    Left = 536
    Top = 712
    ParamData = <
      item
        Name = 'PRODUCTIONUNITCODE'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetPkgPrefixPkgPrefix: TStringField
      FieldName = 'PkgPrefix'
      Origin = 'PkgPrefix'
      Size = 3
    end
  end
  object sq_AdrName: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * From DBO.Address'
      'Where AddressName =:AddressName'
      'AND AddressNo <> :AddressNo'
      '')
    Left = 592
    Top = 632
    ParamData = <
      item
        Name = 'ADDRESSNAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'ADDRESSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_AdrNameAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_AdrNameAddressName: TStringField
      FieldName = 'AddressName'
      Origin = 'AddressName'
      Size = 80
    end
    object sq_AdrNameAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      Size = 40
    end
    object sq_AdrNameAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      FixedChar = True
      Size = 40
    end
    object sq_AdrNameAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      FixedChar = True
      Size = 40
    end
    object sq_AdrNameAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      FixedChar = True
      Size = 40
    end
    object sq_AdrNameCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
    end
    object sq_AdrNameStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
      FixedChar = True
      Size = 40
    end
    object sq_AdrNameCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object sq_AdrNameAddressType: TIntegerField
      FieldName = 'AddressType'
      Origin = 'AddressType'
    end
    object sq_AdrNamePhone1: TStringField
      FieldName = 'Phone1'
      Origin = 'Phone1'
      FixedChar = True
      Size = 40
    end
    object sq_AdrNamePhone2: TStringField
      FieldName = 'Phone2'
      Origin = 'Phone2'
      FixedChar = True
      Size = 40
    end
    object sq_AdrNamePhone3: TStringField
      FieldName = 'Phone3'
      Origin = 'Phone3'
      FixedChar = True
      Size = 40
    end
    object sq_AdrNameFax: TStringField
      FieldName = 'Fax'
      Origin = 'Fax'
      FixedChar = True
    end
    object sq_AdrNameCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object sq_AdrNameModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object sq_AdrNameDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_AdrNameEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      FixedChar = True
      Size = 50
    end
    object sq_AdrNamePostalCode: TStringField
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      FixedChar = True
    end
    object sq_AdrNameSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object sq_AdrNamePartyIdentifier1: TStringField
      FieldName = 'PartyIdentifier1'
      Origin = 'PartyIdentifier1'
      Size = 50
    end
    object sq_AdrNamePartyIdentifierType1: TStringField
      FieldName = 'PartyIdentifierType1'
      Origin = 'PartyIdentifierType1'
      Size = 50
    end
  end
  object sqGetDocs: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.ClientPrefDoc cpd'
      'Inner Join dbo.ReportNames rn on rn.ReportNo = cpd.ReportNo'
      'WHERE cpd.ClientNo = :ClientNo'
      'AND cpd.RoleType = :RoleType'
      'AND cpd.DocType = :DocType'
      '')
    Left = 680
    Top = 640
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ROLETYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DOCTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sqGetDocsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqGetDocsRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqGetDocsDocType: TIntegerField
      FieldName = 'DocType'
      Origin = 'DocType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqGetDocsNoOfCopy: TIntegerField
      FieldName = 'NoOfCopy'
      Origin = 'NoOfCopy'
    end
    object sqGetDocspromptUser: TIntegerField
      FieldName = 'promptUser'
      Origin = 'promptUser'
    end
    object sqGetDocscollated: TIntegerField
      FieldName = 'collated'
      Origin = 'collated'
    end
    object sqGetDocsPrinterSetup: TIntegerField
      FieldName = 'PrinterSetup'
      Origin = 'PrinterSetup'
    end
    object sqGetDocsReportNo: TIntegerField
      FieldName = 'ReportNo'
      Origin = 'ReportNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqGetDocsReportNo_1: TIntegerField
      FieldName = 'ReportNo_1'
      Origin = 'ReportNo'
    end
    object sqGetDocsDocType_1: TIntegerField
      FieldName = 'DocType_1'
      Origin = 'DocType'
    end
    object sqGetDocsReportName: TStringField
      FieldName = 'ReportName'
      Origin = 'ReportName'
      Size = 100
    end
    object sqGetDocsBeskrivning: TStringField
      FieldName = 'Beskrivning'
      Origin = 'Beskrivning'
      Size = 100
    end
  end
  object sq_GetCityNoFromPIP: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select  PhyInvPointNameNo'
      'FROM dbo.PhysicalInventoryPoint'
      'WHERE PhysicalInventoryPointNo = :PhysicalInventoryPointNo'
      '')
    Left = 680
    Top = 712
    ParamData = <
      item
        Name = 'PHYSICALINVENTORYPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetCityNoFromPIPPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      Origin = 'PhyInvPointNameNo'
    end
  end
  object sq_GetSalesRegionNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select * from dbo.client'
      '')
    Left = 808
    Top = 712
    object sq_GetSalesRegionNoClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetSalesRegionNoClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      FixedChar = True
      Size = 3
    end
    object sq_GetSalesRegionNoSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object sq_GetSalesRegionNoClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object sq_GetSalesRegionNoSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object sq_GetSalesRegionNoPercent_Commision: TFloatField
      FieldName = 'Percent_Commision'
      Origin = 'Percent_Commision'
    end
    object sq_GetSalesRegionNoTerms_Commision: TIntegerField
      FieldName = 'Terms_Commision'
      Origin = 'Terms_Commision'
    end
    object sq_GetSalesRegionNoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_GetSalesRegionNoCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object sq_GetSalesRegionNoModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object sq_GetSalesRegionNoURL: TStringField
      FieldName = 'URL'
      Origin = 'URL'
      FixedChar = True
      Size = 100
    end
    object sq_GetSalesRegionNoVATNo: TStringField
      FieldName = 'VATNo'
      Origin = 'VATNo'
      Size = 50
    end
    object sq_GetSalesRegionNoSpecialText: TMemoField
      FieldName = 'SpecialText'
      Origin = 'SpecialText'
      BlobType = ftMemo
    end
    object sq_GetSalesRegionNoSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object sq_GetSalesRegionNoMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
    object sq_GetSalesRegionNoPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
    object sq_GetSalesRegionNoo5: TStringField
      FieldName = 'o5'
      Origin = 'o5'
      Size = 8
    end
    object sq_GetSalesRegionNoPaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
      Origin = 'PaketNoPos'
    end
    object sq_GetSalesRegionNoPaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
      Origin = 'PaketNoLength'
    end
    object sq_GetSalesRegionNoSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
      Origin = 'SupplierCodePos'
    end
    object sq_GetSalesRegionNoSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
      Origin = 'SupplierCodeLength'
    end
    object sq_GetSalesRegionNoPartyIdentifier: TStringField
      FieldName = 'PartyIdentifier'
      Origin = 'PartyIdentifier'
      Size = 50
    end
    object sq_GetSalesRegionNoAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object sq_GetSalesRegionNoDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object sq_GetSalesRegionNoIntVerk: TIntegerField
      FieldName = 'IntVerk'
      Origin = 'IntVerk'
    end
    object sq_GetSalesRegionNoClientID: TStringField
      FieldName = 'ClientID'
      Origin = 'ClientID'
      Size = 11
    end
    object sq_GetSalesRegionNoAvgPrice: TFloatField
      FieldName = 'AvgPrice'
      Origin = 'AvgPrice'
    end
    object sq_GetSalesRegionNoAvgPriceCurrencyNo: TIntegerField
      FieldName = 'AvgPriceCurrencyNo'
      Origin = 'AvgPriceCurrencyNo'
    end
    object sq_GetSalesRegionNoPartyIdentifierType: TStringField
      FieldName = 'PartyIdentifierType'
      Origin = 'PartyIdentifierType'
      Size = 50
    end
    object sq_GetSalesRegionNoPartyIdentifier1: TStringField
      FieldName = 'PartyIdentifier1'
      Origin = 'PartyIdentifier1'
      Size = 50
    end
    object sq_GetSalesRegionNoPartyIdentifierType1: TStringField
      FieldName = 'PartyIdentifierType1'
      Origin = 'PartyIdentifierType1'
      Size = 50
    end
    object sq_GetSalesRegionNocid: TStringField
      FieldName = 'cid'
      Origin = 'cid'
      Size = 8
    end
    object sq_GetSalesRegionNoStatistikLandNr: TIntegerField
      FieldName = 'StatistikLandNr'
      Origin = 'StatistikLandNr'
    end
  end
  object sq_DelClient: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.client'
      'WHERE ClientNo = :ClientNo'
      '')
    Left = 888
    Top = 624
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_IsClientMarkedAsIntVerk: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select C.IntVerk FROM dbo.Client C'
      'Where C.ClientNo = :ClientNo'
      '')
    Left = 944
    Top = 712
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_IsClientMarkedAsIntVerkIntVerk: TIntegerField
      FieldName = 'IntVerk'
      Origin = 'IntVerk'
    end
  end
  object sq_GetLanguageID: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct'
      'LanguageCode'
      'FROM dbo.ClientPreference'
      'WHERE ClientNo = :ClientNo'
      '')
    Left = 1040
    Top = 648
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetLanguageIDLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
  end
  object sq_IsRoleType: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select CR.ClientNo from ClientRole CR'
      'Where'
      'CR.ClientNo = :ClientNo'
      'AND CR.RoleType = :RoleType'
      ''
      '')
    Left = 320
    Top = 584
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ROLETYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_IsRoleTypeClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_PhysInvForLIP: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT PH.PhysicalInventoryPointNo, CY.CITYNAME, CR.RoleType'
      'FROM'
      'PHYSICALINVENTORYPOINT PH, CITY CY, ClientRole CR'
      'WHERE'
      'PH.OwnerNo = :PARAM1'
      'AND CY.CITYNO = PH.PhyInvPointNameNo'
      'AND CY.CITYNAME <> '#39'Transfer'#39
      'AND CR.ClientNo = PH.OwnerNo'
      '')
    Left = 328
    Top = 512
    ParamData = <
      item
        Name = 'PARAM1'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_PhysInvForLIPPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_PhysInvForLIPCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Origin = 'CITYNAME'
      Size = 50
    end
    object sq_PhysInvForLIPRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      Required = True
    end
  end
  object cds_Verk: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_VerkCodeName'
    Left = 80
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end>
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 85
    end
    object cds_VerkClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      FixedChar = True
      Size = 3
    end
  end
  object cds_SR: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_ClientsSN'
    Left = 24
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@RoleType'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SRClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object cds_SRClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_SRSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object cds_Client: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_ClientsSN'
    Left = 24
    Top = 136
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@RoleType'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object StringField2: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object cds_Frakt: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_ClientsSN'
    Left = 80
    Top = 136
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@RoleType'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object IntegerField2: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object StringField4: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object sp_ClientCode: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_GetClientCode_CSD'
    Left = 392
    Top = 408
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@ClientNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_ClientCodeClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      FixedChar = True
      Size = 3
    end
  end
end
