object dm_UserProps: Tdm_UserProps
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 648
  Width = 1018
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 176
    Top = 272
  end
  object ds_Producer: TDataSource
    DataSet = cds_producer
    Left = 248
    Top = 272
  end
  object ds_PIP: TDataSource
    DataSet = cds_PIP
    Left = 312
    Top = 272
  end
  object ds_LIP: TDataSource
    DataSet = cds_LIP
    Left = 376
    Top = 272
  end
  object ds_RegPoint: TDataSource
    DataSet = cds_RegPoint
    Left = 456
    Top = 272
  end
  object ds_LengthGroup: TDataSource
    DataSet = cds_LengthGroup
    Left = 552
    Top = 272
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 112
    Top = 488
  end
  object dsrcBarCodes: TDataSource
    DataSet = cdsBarCodes
    Left = 648
    Top = 272
  end
  object dsrcGradeStamps: TDataSource
    DataSet = cdsGradeStamps
    Left = 736
    Top = 272
  end
  object ds_SR: TDataSource
    DataSet = cds_SR
    Left = 872
    Top = 272
  end
  object ds_VU: TDataSource
    DataSet = cds_VU
    Left = 808
    Top = 272
  end
  object mtLengthFormat: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'LengthFormatNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthFormatName'
        DataType = ftString
        Size = 15
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
    Left = 280
    Top = 32
    object mtLengthFormatLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
    end
    object mtLengthFormatLengthFormatName: TStringField
      FieldName = 'LengthFormatName'
      Size = 15
    end
  end
  object mtLengthVolUnit: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'LengthVolUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthVolUnitName'
        DataType = ftString
        Size = 5
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
    Left = 448
    Top = 32
    object mtLengthVolUnitLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
    end
    object mtLengthVolUnitLengthVolUnitName: TStringField
      FieldName = 'LengthVolUnitName'
      Size = 5
    end
  end
  object ds_LIP2: TDataSource
    DataSet = cds_LIP2
    Left = 376
    Top = 488
  end
  object ds_PIP2: TDataSource
    DataSet = cds_PIP2
    Left = 288
    Top = 488
  end
  object ds_PLIP: TDataSource
    DataSet = cds_PLIP
    Left = 456
    Top = 488
  end
  object ds_InvClient: TDataSource
    DataSet = cds_InvClient
    Left = 112
    Top = 272
  end
  object ds_Customer: TDataSource
    DataSet = cds_Customer
    Left = 48
    Top = 488
  end
  object cds_UserDir: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.UserDir '
      'WHERE UserID = :UserID'
      'AND Form = :Form'
      '')
    Left = 640
    Top = 408
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
    object cds_UserDirUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_UserDirForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_UserDirImportDir: TStringField
      FieldName = 'ImportDir'
      Origin = 'ImportDir'
      Size = 255
    end
    object cds_UserDirExportDir: TStringField
      FieldName = 'ExportDir'
      Origin = 'ExportDir'
      Size = 255
    end
    object cds_UserDirDeliveryMessageWood_XSD: TStringField
      FieldName = 'DeliveryMessageWood_XSD'
      Origin = 'DeliveryMessageWood_XSD'
      Size = 255
    end
    object cds_UserDirMyEmailAddress: TStringField
      FieldName = 'MyEmailAddress'
      Origin = 'MyEmailAddress'
      Size = 100
    end
    object cds_UserDirUserDir: TStringField
      FieldName = 'UserDir'
      Origin = 'UserDir'
      Size = 255
    end
    object cds_UserDirExcelDir: TStringField
      FieldName = 'ExcelDir'
      Origin = 'ExcelDir'
      Size = 255
    end
    object cds_UserDirLODir: TStringField
      FieldName = 'LODir'
      Origin = 'LODir'
      Size = 255
    end
    object cds_UserDirLastUsedLOTemplate: TStringField
      FieldName = 'LastUsedLOTemplate'
      Origin = 'LastUsedLOTemplate'
      Size = 50
    end
    object cds_UserDirLastUsedFragaAvropTemplate: TStringField
      FieldName = 'LastUsedFragaAvropTemplate'
      Origin = 'LastUsedFragaAvropTemplate'
      Size = 50
    end
    object cds_UserDirWoodXDir: TStringField
      FieldName = 'WoodXDir'
      Origin = 'WoodXDir'
      Size = 255
    end
    object cds_UserDirImportUSA_Faktura_Dir: TStringField
      FieldName = 'ImportUSA_Faktura_Dir'
      Origin = 'ImportUSA_Faktura_Dir'
      Size = 255
    end
  end
  object cds_PLIP: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT Distinct isNull(LIP.InvCode,'#39#39')+'#39' '#39'+RTRIM(CY.CITYNAME)+'#39'/' +
        #39'+RTRIM(LIP.LogicalInventoryName) AS PLIP,'
      'LIP.LogicalInventoryPointNo AS LIPNo,'
      'PH.PhysicalInventoryPointNo AS PIPNO,'
      'CY.CITYNAME,'
      'LIP.LogicalInventoryName,'
      'LIP.InvCode'
      'FROM'
      'dbo.PHYSICALINVENTORYPOINT PH'
      
        'Inner Join dbo.LOGICALINVENTORYPOINT LIP on LIP.PhysicalInventor' +
        'yPointNo = PH.PhysicalInventoryPointNo'
      'Inner Join dbo.CITY CY ON CY.CITYNO = PH.PhyInvPointNameNo'
      'Inner Join dbo.ClientRole CR ON CR.ClientNo = PH.OwnerNo'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND LIP.SequenceNo = 1'
      'AND PH.SequenceNo = 1'
      'AND PH.PhyInvPointNameNo in (Select PH2.PhyInvPointNameNo'
      'FROM PHYSICALINVENTORYPOINT PH2'
      'WHERE PH2.OwnerNo = :LegoOwnerNo)'
      ''
      ''
      'Order By  CY.CITYNAME, LIP.LogicalInventoryName'
      ' '
      '')
    Left = 456
    Top = 440
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
    object cds_PLIPPLIP: TStringField
      FieldName = 'PLIP'
      Origin = 'PLIP'
      ReadOnly = True
      Size = 105
    end
    object cds_PLIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_PLIPPIPNO: TIntegerField
      FieldName = 'PIPNO'
      Origin = 'PIPNO'
      Required = True
    end
    object cds_PLIPCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Origin = 'CITYNAME'
      Size = 50
    end
    object cds_PLIPLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Origin = 'LogicalInventoryName'
      Size = 50
    end
    object cds_PLIPInvCode: TStringField
      FieldName = 'InvCode'
      Origin = 'InvCode'
      Size = 3
    end
  end
  object cds_LIP2: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT  Distinct LogicalInventoryPointNo AS LIPNo, LogicalInvent' +
        'oryName AS LIPName'
      'FROM dbo.LOGICALINVENTORYPOINT'
      'WHERE'
      'PhysicalInventoryPointNo = :PIPNo'
      'AND SequenceNo = 1'
      ''
      'Order By LogicalInventoryName '
      '')
    Left = 376
    Top = 440
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LIP2LIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_LIP2LIPName: TStringField
      FieldName = 'LIPName'
      Origin = 'LIPName'
      Size = 50
    end
  end
  object cds_PIP2: TFDQuery
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
      ''
      'Order By  CY.CITYNAME'
      '')
    Left = 288
    Top = 440
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
    object cds_PIP2PIPNO: TIntegerField
      FieldName = 'PIPNO'
      Origin = 'PIPNO'
      Required = True
    end
    object cds_PIP2PIPNAME: TStringField
      FieldName = 'PIPNAME'
      Origin = 'PIPNAME'
      Size = 50
    end
  end
  object cds_Props: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Form = :Form'
      '')
    Left = 112
    Top = 440
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
    object cds_PropsFilter2: TStringField
      FieldName = 'Filter2'
      Origin = 'Filter2'
      Size = 255
    end
  end
  object cds_Customer: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName, C.Sales' +
        'RegionNo'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND   (R.RoleType = 1) '
      'Order by C.clientName'
      '')
    Left = 48
    Top = 440
    object cds_CustomerClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CustomerClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_CustomerSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object cds_CustomerSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
  end
  object cds_SR: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND   R.RoleType = 7'
      ''
      'Order by C.clientName'
      '')
    Left = 872
    Top = 224
    object cds_SRClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object cds_VU: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.UnitName'
      '')
    Left = 808
    Top = 224
    object cds_VUVolumeUnit_No: TIntegerField
      FieldName = 'VolumeUnit_No'
      Origin = 'VolumeUnit_No'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VUVolumeUnitName: TStringField
      FieldName = 'VolumeUnitName'
      Origin = 'VolumeUnitName'
      Required = True
      Size = 10
    end
    object cds_VUDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_VUCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_VUModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_VUSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
  end
  object cdsGradeStamps: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select GS.*,'
      'CASE WHEN gs.GradeStampID is null then'
      'GS.GradeStamp'
      'ELSE'
      'GS.GradeStampID+'#39' - '#39'+GS.GradeStamp'
      'END AS GradeStampCodeName'
      ''
      'FROM dbo.GradeStamp GS'
      ''
      'Order By GS.GradeStampID, GS.GradeStamp'
      '')
    Left = 736
    Top = 224
    object cdsGradeStampsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGradeStampsGradeStamp: TStringField
      FieldName = 'GradeStamp'
      Origin = 'GradeStamp'
      FixedChar = True
    end
    object cdsGradeStampsSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cdsGradeStampsCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsGradeStampsModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsGradeStampsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsGradeStampsGradeStampID: TStringField
      FieldName = 'GradeStampID'
      Origin = 'GradeStampID'
      Size = 2
    end
    object cdsGradeStampsAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cdsGradeStampsGradeStampCodeName: TStringField
      FieldName = 'GradeStampCodeName'
      Origin = 'GradeStampCodeName'
      ReadOnly = True
      Size = 25
    end
  end
  object cdsBarCodes: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select bc.*,'
      'CASE WHEN bc.BarCodeID is null then'
      'bc.Barcode'
      'ELSE'
      'bc.BarCodeID+'#39' - '#39'+bc.BarCode'
      'END AS BarcodeCodeName'
      'FROM dbo.BarCode bc'
      ''
      'Order By bc.BarCodeID, bc.BarCode'
      '')
    Left = 648
    Top = 224
    object cdsBarCodesBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBarCodesBarCode: TStringField
      FieldName = 'BarCode'
      Origin = 'BarCode'
      FixedChar = True
    end
    object cdsBarCodesSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cdsBarCodesCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsBarCodesModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsBarCodesDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsBarCodesBarCodeID: TStringField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
      Size = 2
    end
    object cdsBarCodesAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cdsBarCodesBarcodeCodeName: TStringField
      FieldName = 'BarcodeCodeName'
      Origin = 'BarcodeCodeName'
      ReadOnly = True
      Size = 25
    end
  end
  object cds_LengthGroup: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT  Distinct GroupNo, GroupName '
      'FROM dbo.ProductLengthGroupName '
      'ORDER BY GroupName'
      '')
    Left = 552
    Top = 224
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
    Left = 456
    Top = 224
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
      ''
      'Order By LogicalInventoryName '
      '')
    Left = 376
    Top = 224
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
      'dbo.PHYSICALINVENTORYPOINT PH'
      'Inner Join dbo.CITY CY on CY.CITYNO = PH.PhyInvPointNameNo'
      'Inner Join dbo.ClientRole CR on CR.ClientNo = PH.OwnerNo'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      ''
      'AND CY.CITYNAME <> '#39'Transfer'#39
      ''
      'AND PH.SequenceNo = 1'
      'AND PH.PhyInvPointNameNo in (Select PH2.PhyInvPointNameNo'
      'FROM dbo.PHYSICALINVENTORYPOINT PH2'
      'WHERE PH2.OwnerNo = :LegoOwnerNo)'
      ''
      'AND (PH.PhyInvPointNameNo in (Select uap.PhyInvPointNameNo'
      'FROM dbo.UserArrivalPoint uap'
      'WHERE uap.UserID = :UserID)'
      'OR'
      '(-1 = :UserID))'
      ''
      'Order By  CY.CITYNAME'
      '')
    Left = 312
    Top = 224
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
      end
      item
        Name = 'USERID'
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
    Left = 248
    Top = 224
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
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName, C.Sales' +
        'RegionNo'
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
    Left = 176
    Top = 224
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
    object cds_VerkSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
  end
  object cds_InvClient: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName, C.Sales' +
        'RegionNo'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND   ((R.RoleType = 9) '
      'OR (R.RoleType = 7))'
      ''
      'Order by C.clientName'
      '')
    Left = 112
    Top = 224
    object cds_InvClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvClientClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_InvClientSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object cds_InvClientSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
  end
end
