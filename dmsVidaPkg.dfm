object dmsPkg: TdmsPkg
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 649
  Width = 777
  object mtPackages: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    BeforeInsert = mtPackagesBeforeInsert
    AfterInsert = mtPackagesAfterInsert
    BeforePost = mtPackagesBeforePost
    AfterPost = mtPackagesAfterPost
    BeforeDelete = mtPackagesBeforeDelete
    AfterDelete = mtPackagesAfterDelete
    Left = 520
    Top = 224
  end
  object mtProdSpecificLengths: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 520
    Top = 120
    object mtProdSpecificLengthsProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtProdSpecificLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
  end
  object mtStandardLengths: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexName = 'mtStandardLengthsIndex1'
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 400
    Top = 272
    object mtStandardLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
  end
  object mtDupPkgNo: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PackageNo'
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        DataType = ftString
        Size = 3
      end>
    IndexFieldNames = 'PackageNo;SupplierCode'
    IndexName = 'mtDupPkgNoIndex2'
    IndexDefs = <
      item
        Name = 'mtDupPkgNoIndex2'
        Fields = 'PackageNo;SupplierCode'
        Options = [ixUnique]
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 400
    Top = 24
    object mtDupPkgNoPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtDupPkgNoSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
  end
  object mtProd_Records: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexName = 'mtProd_RecordsIndex3'
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 520
    Top = 24
    object mtProd_RecordsProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtProd_RecordsPRODUCTDESCRIPTION: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCTDESCRIPTION'
      Size = 100
    end
    object mtProd_RecordsACT_THICK: TFloatField
      FieldName = 'ACT_THICK'
    end
    object mtProd_RecordsACT_WIDTH: TFloatField
      FieldName = 'ACT_WIDTH'
    end
    object mtProd_RecordsPRODUCTGROUPNO: TIntegerField
      FieldName = 'PRODUCTGROUPNO'
    end
    object mtProd_RecordsNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
    end
    object mtProd_RecordsNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
    end
    object mtProd_RecordsPKGWIDTH: TIntegerField
      FieldName = 'PKGWIDTH'
    end
    object mtProd_RecordsPKGHEIGHT: TIntegerField
      FieldName = 'PKGHEIGHT'
    end
    object mtProd_RecordsMINIBUNDLE: TIntegerField
      FieldName = 'MINIBUNDLE'
    end
    object mtProd_RecordsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtProd_RecordsBarcodeID: TIntegerField
      FieldName = 'BarcodeID'
    end
    object mtProd_RecordsWrapTypeNo: TIntegerField
      FieldName = 'WrapTypeNo'
    end
    object mtProd_RecordsShrinkWrapNo: TIntegerField
      FieldName = 'ShrinkWrapNo'
    end
    object mtProd_RecordsLOPP: TStringField
      DisplayLabel = 'Streckkod'
      FieldKind = fkLookup
      FieldName = 'LOPP'
      LookupKeyFields = 'BarCodeNo'
      LookupResultField = 'BarCode'
      KeyFields = 'BarcodeID'
      Lookup = True
    end
    object mtProd_RecordsPWrap: TStringField
      DisplayLabel = 'PAPER WRAP'
      FieldKind = fkLookup
      FieldName = 'PWrap'
      LookupKeyFields = 'WrapTypeNo'
      LookupResultField = 'WrapType'
      KeyFields = 'WrapTypeNo'
      Size = 15
      Lookup = True
    end
    object mtProd_RecordsGStamps: TStringField
      DisplayLabel = 'St'#228'mpel'
      FieldKind = fkLookup
      FieldName = 'GStamps'
      LookupKeyFields = 'GradeStampNo'
      LookupResultField = 'GradeStamp'
      KeyFields = 'GradeStampNo'
      Lookup = True
    end
    object mtProd_RecordsOnSticks: TIntegerField
      FieldName = 'OnSticks'
    end
    object mtProd_RecordsINCH_THICK: TFloatField
      FieldName = 'INCH_THICK'
    end
    object mtProd_RecordsINCH_WIDTH: TFloatField
      FieldName = 'INCH_WIDTH'
    end
    object mtProd_RecordsSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
  end
  object ds_Prod_Records: TDataSource
    DataSet = mtProd_Records
    Left = 520
    Top = 72
  end
  object ds_mtDupPkgNo: TDataSource
    DataSet = mtDupPkgNo
    Left = 400
    Top = 72
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 56
    Top = 552
  end
  object ds_Producer: TDataSource
    DataSet = cds_producer
    Left = 144
    Top = 552
  end
  object ds_PIP: TDataSource
    DataSet = cds_PIP
    Left = 224
    Top = 552
  end
  object ds_LIP: TDataSource
    DataSet = cds_LIP
    Left = 296
    Top = 552
  end
  object ds_RegPoint: TDataSource
    DataSet = cds_RegPoint
    Left = 376
    Top = 552
  end
  object ds_LengthGroup: TDataSource
    DataSet = cds_LengthGroup
    Left = 472
    Top = 560
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 576
    Top = 568
  end
  object mtPcsPerLength: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexFieldNames = 'ProductLengthNo'
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 520
    Top = 272
    object mtPcsPerLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object mtPcsPerLengthProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtPcsPerLengthNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
    end
    object mtPcsPerLengthUserID: TIntegerField
      FieldName = 'UserID'
    end
    object mtPcsPerLengthALMM: TFloatField
      FieldName = 'ALMM'
    end
  end
  object mtUserProp: TkbmMemTable
    DesignActivation = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'VerkNo'
        DataType = ftInteger
      end
      item
        Name = 'OwnerNo'
        DataType = ftInteger
      end
      item
        Name = 'PIPNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'InputOption'
        DataType = ftInteger
      end
      item
        Name = 'RegPointNo'
        DataType = ftInteger
      end
      item
        Name = 'RegDate'
        DataType = ftDateTime
      end
      item
        Name = 'CopyPcs'
        DataType = ftInteger
      end
      item
        Name = 'RunNo'
        DataType = ftInteger
      end
      item
        Name = 'ProducerNo'
        DataType = ftInteger
      end
      item
        Name = 'AutoColWidth'
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'LengthOption'
        DataType = ftInteger
      end
      item
        Name = 'LengthGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'NewItemRow'
        DataType = ftInteger
      end
      item
        Name = 'GradeStampNo'
        DataType = ftInteger
      end
      item
        Name = 'BarCodeNo'
        DataType = ftInteger
      end
      item
        Name = 'RoleType'
        DataType = ftInteger
      end
      item
        Name = 'ProductDescription'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPChange'
        DataType = ftInteger
      end
      item
        Name = 'ACT_THICK'
        DataType = ftFloat
      end
      item
        Name = 'ACT_WIDTH'
        DataType = ftFloat
      end
      item
        Name = 'NOM_THICK'
        DataType = ftFloat
      end
      item
        Name = 'SurfacingNo'
        DataType = ftInteger
      end
      item
        Name = 'SalesRegionNo'
        DataType = ftInteger
      end
      item
        Name = 'VolumeUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthFormatNo'
        DataType = ftInteger
      end
      item
        Name = 'Form'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'UserID'
        DataType = ftInteger
      end
      item
        Name = 'LengthVolUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'GroupByBox'
        DataType = ftInteger
      end
      item
        Name = 'GroupSummary'
        DataType = ftInteger
      end
      item
        Name = 'AgentNo'
        DataType = ftInteger
      end
      item
        Name = 'ShipperNo'
        DataType = ftInteger
      end
      item
        Name = 'StartPeriod'
        DataType = ftDateTime
      end
      item
        Name = 'EndPeriod'
        DataType = ftDateTime
      end
      item
        Name = 'Pris'
        DataType = ftFloat
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 40
    Top = 328
    object mtUserPropVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtUserPropOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      OnChange = mtUserPropOwnerNoChange
    end
    object mtUserPropPIPNo: TIntegerField
      FieldName = 'PIPNo'
      OnChange = mtUserPropPIPNoChange
    end
    object mtUserPropLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtUserPropInputOption: TIntegerField
      FieldName = 'InputOption'
    end
    object mtUserPropRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtUserPropRegDate: TDateTimeField
      FieldName = 'RegDate'
    end
    object mtUserPropCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
    end
    object mtUserPropRunNo: TIntegerField
      FieldName = 'RunNo'
    end
    object mtUserPropProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      OnChange = mtUserPropProducerNoChange
    end
    object mtUserPropAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
    end
    object mtUserPropSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtUserPropLengthOption: TIntegerField
      FieldName = 'LengthOption'
    end
    object mtUserPropLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
    end
    object mtUserPropNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
    end
    object mtUserPropGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtUserPropBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
    end
    object mtUserPropLengthGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthGroup'
      LookupDataSet = dm_UserProps.cds_LengthGroup
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'LengthGroupNo'
      Lookup = True
    end
    object mtUserPropLIPName: TStringField
      FieldKind = fkLookup
      FieldName = 'LIPName'
      LookupDataSet = dm_UserProps.cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropPIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PIPNAME'
      LookupDataSet = dm_UserProps.cds_PIP
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropREGPOINT: TStringField
      FieldKind = fkLookup
      FieldName = 'REGPOINT'
      LookupDataSet = dm_UserProps.cds_RegPoint
      LookupKeyFields = 'RegistrationPointNo'
      LookupResultField = 'ProductionUnitName'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
    object mtUserPropPRODUCER: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUCER'
      LookupDataSet = dm_UserProps.cds_producer
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ProducerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropOWNER: TStringField
      FieldKind = fkLookup
      FieldName = 'OWNER'
      LookupDataSet = dm_UserProps.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropVERK: TStringField
      FieldKind = fkLookup
      FieldName = 'VERK'
      LookupDataSet = dm_UserProps.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VerkNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropRoleType: TIntegerField
      FieldName = 'RoleType'
    end
    object mtUserPropGradestamp: TStringField
      FieldKind = fkLookup
      FieldName = 'Gradestamp'
      LookupDataSet = dm_UserProps.cdsGradeStamps
      LookupKeyFields = 'GradeStampNo'
      LookupResultField = 'GradeStamp'
      KeyFields = 'GradeStampNo'
      Lookup = True
    end
    object mtUserPropBarcode: TStringField
      FieldKind = fkLookup
      FieldName = 'Barcode'
      LookupDataSet = dm_UserProps.cdsBarCodes
      LookupKeyFields = 'BarCodeNo'
      LookupResultField = 'BarCode'
      KeyFields = 'BarCodeNo'
      Lookup = True
    end
    object mtUserPropProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object mtUserPropProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtUserPropProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtUserPropLIPChange: TIntegerField
      FieldName = 'LIPChange'
    end
    object mtUserPropACT_THICK: TFloatField
      FieldName = 'ACT_THICK'
    end
    object mtUserPropACT_WIDTH: TFloatField
      FieldName = 'ACT_WIDTH'
    end
    object mtUserPropNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
    end
    object mtUserPropSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtUserPropSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object mtUserPropVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object mtUserPropLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
    end
    object mtUserPropForm: TStringField
      FieldName = 'Form'
      Size = 50
    end
    object mtUserPropUserID: TIntegerField
      FieldName = 'UserID'
    end
    object mtUserPropLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
    end
    object mtUserPropGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
    end
    object mtUserPropGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
    end
    object mtUserPropAgentNo: TIntegerField
      FieldName = 'AgentNo'
    end
    object mtUserPropShipperNo: TIntegerField
      FieldName = 'ShipperNo'
    end
    object mtUserPropStartPeriod: TDateTimeField
      FieldName = 'StartPeriod'
    end
    object mtUserPropEndPeriod: TDateTimeField
      FieldName = 'EndPeriod'
    end
    object mtUserPropPris: TFloatField
      FieldName = 'Pris'
    end
    object mtUserPropSkiftLag: TStringField
      FieldKind = fkLookup
      FieldName = 'SkiftLag'
      LookupDataSet = dmsSystem.cds_ShiftLag
      LookupKeyFields = 'ShiftTeamNo'
      LookupResultField = 'ShiftTeamName'
      KeyFields = 'GroupByBox'
      Size = 35
      Lookup = True
    end
    object mtUserPropALMM: TFloatField
      FieldName = 'ALMM'
    end
    object mtUserPropNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
    end
    object mtUserPropPackage_Size: TStringField
      FieldKind = fkLookup
      FieldName = 'Package_Size'
      LookupDataSet = dmsSystem.cds_Package_Size
      LookupKeyFields = 'PackageSizeNo'
      LookupResultField = 'PackageSizeName'
      KeyFields = 'LengthFormatNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropFilter1: TStringField
      FieldName = 'Filter1'
      Size = 50
    end
    object mtUserPropFilter2: TStringField
      FieldName = 'Filter2'
      Size = 255
    end
  end
  object dsUserProp: TDataSource
    DataSet = mtUserProp
    Left = 40
    Top = 376
  end
  object cds_Props: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Form = :Form'
      '')
    Left = 576
    Top = 520
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_PropsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PropsForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_PropsVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
    object cds_PropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_PropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object cds_PropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_PropsInputOption: TIntegerField
      FieldName = 'InputOption'
      Origin = 'InputOption'
    end
    object cds_PropsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
    end
    object cds_PropsRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      Origin = 'RegDate'
    end
    object cds_PropsCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
    end
    object cds_PropsRunNo: TIntegerField
      FieldName = 'RunNo'
      Origin = 'RunNo'
    end
    object cds_PropsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
    end
    object cds_PropsAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      Origin = 'AutoColWidth'
    end
    object cds_PropsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      Size = 3
    end
    object cds_PropsLengthOption: TIntegerField
      FieldName = 'LengthOption'
      Origin = 'LengthOption'
    end
    object cds_PropsLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      Origin = 'LengthGroupNo'
    end
    object cds_PropsNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      Origin = 'NewItemRow'
    end
    object cds_PropsSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_PropsMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
    object cds_PropsOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
      Origin = 'OrderTypeNo'
    end
    object cds_PropsStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_PropsFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
      Origin = 'FilterOrderDate'
    end
    object cds_PropsStartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
    end
    object cds_PropsEndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
    end
    object cds_PropsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_PropsSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
      Origin = 'SalesPersonNo'
    end
    object cds_PropsVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
      Origin = 'VerkSupplierNo'
    end
    object cds_PropsVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
      Origin = 'VerkKundNo'
    end
    object cds_PropsLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
    end
    object cds_PropsBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
    end
    object cds_PropsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
    end
    object cds_PropsVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
    end
    object cds_PropsLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
      Origin = 'LengthFormatNo'
    end
    object cds_PropsLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
      Origin = 'LengthVolUnitNo'
    end
    object cds_PropsGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
      Origin = 'GroupByBox'
    end
    object cds_PropsGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
      Origin = 'GroupSummary'
    end
    object cds_PropsAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
    end
    object cds_PropsLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
    end
    object cds_PropsShipperNo: TIntegerField
      FieldName = 'ShipperNo'
      Origin = 'ShipperNo'
    end
    object cds_PropsBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
    end
    object cds_PropsCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cds_PropsShowProduct: TIntegerField
      FieldName = 'ShowProduct'
      Origin = 'ShowProduct'
    end
    object cds_PropsName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      Size = 50
    end
    object cds_PropsFilter1: TStringField
      FieldName = 'Filter1'
      Origin = 'Filter1'
      Size = 50
    end
  end
  object cds_LengthGroup: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT  Distinct GroupNo, GroupName '
      'FROM dbo.ProductLengthGroupName '
      'ORDER BY GroupName'
      '')
    Left = 472
    Top = 512
    object cds_LengthGroupGroupNo: TIntegerField
      FieldName = 'GroupNo'
      Origin = 'GroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LengthGroupGroupName: TStringField
      FieldName = 'GroupName'
      Origin = 'GroupName'
      FixedChar = True
    end
  end
  object cds_RegPoint: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT   Distinct RP.RegPointName AS ProductionUnitName,'
      'PU.RegistrationPointNo'
      'FROM dbo.ProductionUnit PU'
      
        'Inner Join dbo.RegistrationPoint RP ON RP.RegPointNo = PU.Regist' +
        'rationPointNo'
      'WHERE'
      ' PU.ClientNo = :ClientNo'
      'ORDER BY RP.RegPointName'
      ''
      '')
    Left = 376
    Top = 504
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_RegPointProductionUnitName: TStringField
      FieldName = 'ProductionUnitName'
      Origin = 'ProductionUnitName'
      FixedChar = True
      Size = 30
    end
    object cds_RegPointRegistrationPointNo: TIntegerField
      FieldName = 'RegistrationPointNo'
      Origin = 'RegistrationPointNo'
    end
  end
  object cds_LIP: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT  Distinct LogicalInventoryPointNo AS LIPNo, LogicalInvent' +
        'oryName AS LIPName'
      'FROM dbo.LOGICALINVENTORYPOINT'
      'WHERE'
      'PhysicalInventoryPointNo = :PIPNo'
      'AND SequenceNo = 1'
      '')
    Left = 296
    Top = 504
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_LIPLIPName: TStringField
      FieldName = 'LIPName'
      Origin = 'LIPName'
      Size = 50
    end
  end
  object cds_PIP: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT Distinct PH.PhysicalInventoryPointNo AS PIPNO, CY.CITYNAM' +
        'E AS PIPNAME'
      'FROM'
      'PHYSICALINVENTORYPOINT PH, CITY CY, ClientRole CR'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND CY.CITYNO = PH.PhyInvPointNameNo'
      'AND CY.CITYNAME <> '#39'Transfer'#39
      'AND CR.ClientNo = PH.OwnerNo'
      'AND PH.SequenceNo = 1'
      'AND PH.PhyInvPointNameNo in (Select PH2.PhyInvPointNameNo'
      'FROM PHYSICALINVENTORYPOINT PH2'
      'WHERE PH2.OwnerNo = :LegoOwnerNo)'
      '')
    Left = 224
    Top = 504
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LEGOOWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PIPPIPNO: TIntegerField
      FieldName = 'PIPNO'
      Origin = 'PIPNO'
      Required = True
    end
    object cds_PIPPIPNAME: TStringField
      FieldName = 'PIPNAME'
      Origin = 'PIPNAME'
      Size = 50
    end
  end
  object cds_producer: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT Distinct C.ClientNo, C.ClientName, C.SearchName'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      '  AND  R.RoleType = 2'
      ''
      'Order by C.clientName'
      '')
    Left = 144
    Top = 504
    object cds_producerClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_producerClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_producerSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object cds_Verk: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND   ((R.RoleType = 9) '
      'OR (R.RoleType = 6))'
      ''
      'Order by C.clientName'
      '')
    Left = 56
    Top = 504
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_VerkSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object cds_ProductGroupLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select *'
      'FROM'
      'dbo.ProductGroupLengths'
      '')
    Left = 40
    Top = 80
    object cds_ProductGroupLengthProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductGroupLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductGroupLengthCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProductGroupLengthModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProductGroupLengthDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cds_ProdLength: TFDQuery
    AfterInsert = cds_ProdLengthAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ProductLength'
      '')
    Left = 40
    Top = 32
    object cds_ProdLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdLengthActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object cds_ProdLengthNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
      Required = True
    end
    object cds_ProdLengthNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
      Origin = 'NominalLengthFEET'
    end
    object cds_ProdLengthActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Origin = 'ActualLengthINCH'
      FixedChar = True
      Size = 15
    end
    object cds_ProdLengthPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object cds_ProdLengthFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
    end
    object cds_ProdLengthCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProdLengthModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProdLengthDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ProdLengthSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_ProdLengthProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      Origin = 'ProductLengthGroupNo'
    end
    object cds_ProdLengthAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
  end
  object sq_GetPkgTypeNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pt.PackageTypeNo FROM'
      'dbo.PackageType pt'
      
        'Inner Join dbo.PackageTypeLengths ptl on  ptl.PackageTypeNo = pt' +
        '.PackageTypeNo'
      'WHERE ptl.PcsPerLength = :PcsPerLength'
      'AND pt.ProductNo = :ProductNo'
      'AND pt.BarCodeID = :BarCodeID'
      'AND pt.GradeStamp = :GradeStamp'
      'AND pt.TotalNoOfPieces = :TotalNoOfPieces'
      '')
    Left = 40
    Top = 200
    ParamData = <
      item
        Name = 'PCSPERLENGTH'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'BARCODEID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'GRADESTAMP'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TOTALNOOFPIECES'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPkgTypeNoPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_PkgExist: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pn.PackageNo FROM'
      'dbo.PackageNumber pn'
      'WHERE PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      '')
    Left = 40
    Top = 264
    ParamData = <
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_PkgExistPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_ProductLengths: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT Distinct PL.ProductLengthNo, PL.ActualLengthMM, PL.Nomina' +
        'lLengthMM, PL.NominalLengthFEET ,'
      'PL.ActualLengthINCH'
      
        'FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL O' +
        'N PL.ProductLengthNo = PGL.ProductLengthNo'
      'Where PL.ActualLengthMM < 20000'
      '')
    Left = 40
    Top = 136
    object sq_ProductLengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
  end
  object sp_ProdLeng: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.VIDA_ProdLeng'
    Left = 152
    Top = 192
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ProductGroupNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_ProdLengProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      Required = True
    end
  end
  object sp_StandardLengths: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_StandardLengths'
    Left = 152
    Top = 136
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LengthGroupNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_StandardLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      Required = True
    end
    object sp_StandardLengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      ReadOnly = True
      Required = True
    end
    object sp_StandardLengthsPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
      ReadOnly = True
      Required = True
    end
    object sp_StandardLengthsFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
      ReadOnly = True
      Required = True
    end
  end
  object sp_PkgInfo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_OnePackage_Info'
    Left = 152
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
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SupplierCode'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end>
    object sp_PkgInfoCREATED: TSQLTimeStampField
      FieldName = 'CREATED'
      Origin = 'CREATED'
    end
    object sp_PkgInfoCREATED_BY: TStringField
      FieldName = 'CREATED_BY'
      Origin = 'CREATED_BY'
    end
    object sp_PkgInfoOWNER: TStringField
      FieldName = 'OWNER'
      Origin = 'OWNER'
      Size = 80
    end
    object sp_PkgInfoPKG_STATUS: TIntegerField
      FieldName = 'PKG_STATUS'
      Origin = 'PKG_STATUS'
    end
    object sp_PkgInfoINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Origin = 'INVENTORY'
      Size = 50
    end
  end
  object sp_OnePackageNo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_OnePackageNo'
    Left = 152
    Top = 88
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SupplierCode'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end>
  end
  object sp_NewPkgNoNoProdLogg: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_NewPkgNo_Price_NoPP_II'
    Left = 280
    Top = 392
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@SupplierCode'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@LogicalInventoryPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@RegistrationPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@CreatedOfPkgStr'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@Price'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@Package_Size'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_Populate_One_PkgTypeLengths: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_Populate_One_PackageTypeLengths'
    Left = 280
    Top = 328
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SearchPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PackageTotals: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_PackageTotals'
    Left = 280
    Top = 272
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PkgNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_NewPackageNo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_NewPkgNo_Price_PP_III'
    Left = 280
    Top = 224
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@SupplierCode'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@LogicalInventoryPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@RegistrationPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@CreatedOfPkgStr'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@OwnerNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@ProducerNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@RunNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 14
        Name = '@Price'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 15
        Name = '@SkiftLagNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 16
        Name = '@Package_Size'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_NewPackageDetail: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_NewPackageDetail'
    Left = 280
    Top = 168
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@ProductLengthNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@NoOfPieces'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_NewPackageType: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_NewPkgType'
    Left = 280
    Top = 120
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@ProductNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@BarCodeID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@GradeStamp'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@TotalNoOfPieces'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@ProdInstruNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PackageTypeDetail: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_PackageTypeDetail'
    Left = 280
    Top = 72
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PackageTypes: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_PkgType_II'
    Left = 280
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ProductNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@BarCodeID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@GradeStamp'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@TotalPieces'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@PcsPerLength'
        DataType = ftString
        ParamType = ptInput
        Size = 255
      end>
  end
  object FDQuery1: TFDQuery
    Connection = dmsConnector.FDConnection1
    Left = 616
    Top = 360
  end
end
