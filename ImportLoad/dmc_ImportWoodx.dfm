object dm_ImportWoodx: Tdm_ImportWoodx
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 805
  Width = 1051
  object sq_ImpProdMap: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'SalesRegionNo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select distinct'
      'dmwh.DeliveryMessageNumber,'
      'tp.ProductIdentifier,'
      'tp.Identifier,'
      'wxp.ProductNo,'
      'SUM(ls.TotalNumberOfUnitsValue) AS Styck,'
      'tp.Prefix AS ClientCode,'
      'wxp.SupplierNo,'
      'wxp.PartNumber,'
      'C.ClientNo,'
      '0 AS Status,'
      'tp.ProductDescription AS WoodXProduct,'
      'Case '
      'When tp.ProductDescription > '#39#39' Then tp.ProductDescription'
      'else'
      'tp.ProductIdentifier'
      'End AS Produktbeskrivning'
      ''
      ''
      'FROM dbo.DeliveryMessageWoodHeader2 dmwh'
      
        'Inner Join dbo.PartyIdentifier2 paid on paid.DeliveryMessageNumb' +
        'er = dmwh.DeliveryMessageNumber'
      
        'INNER Join dbo.Client c on c.PartyIdentifier = paid.PartyIdentif' +
        'ier'
      ''
      
        '--Inner Join dbo.DeliveryMessageShipment2 dms on dms.DeliveryMes' +
        'sageNumber = dmwh.DeliveryMessageNumber'
      
        'Inner Join dbo.Transportpackageinformation2 tp on tp.DeliveryMes' +
        'sageNumber = dmwh.DeliveryMessageNumber'
      
        '--                                            AND tp.DeliveryShi' +
        'pmentLineItemNumber = dms.DeliveryShipmentLineItemNumber'
      
        'Inner Join dbo.ProductIdentifier2 pid on pid.DeliveryMessageNumb' +
        'er = tp.DeliveryMessageNumber'
      
        '                                    AND pid.ProductIdentifier = ' +
        'tp.ProductIdentifier'
      ''
      
        'Inner Join dbo.LengthSpecification2 ls on ls.DeliveryMessageNumb' +
        'er = tp.DeliveryMessageNumber'
      
        '                                    AND ls.DeliveryShipmentLineI' +
        'temNumber = tp.DeliveryShipmentLineItemNumber'
      
        '                                    AND ls.Identifier = tp.Ident' +
        'ifier'
      
        'Left Outer Join dbo.wx_prod_trsl wxp on wxp.PartNumber = tp.Prod' +
        'uctIdentifier'
      #9#9#9#9'AND wxp.SupplierNo = C.ClientNo'
      '        AND wxp.SalesRegionNo = :SalesRegionNo'
      ''
      ''
      'WHERE dmwh.DeliveryMessageNumber = :DeliveryMessageNumber'
      ''
      
        'Group By dmwh.DeliveryMessageNumber, tp.ProductIdentifier, tp.Id' +
        'entifier, wxp.ProductNo, tp.Prefix,'
      
        'wxp.SupplierNo, wxp.PartNumber, C.ClientNo, tp.ProductDescriptio' +
        'n'
      'Order By tp.Identifier')
    Left = 152
    Top = 24
    object sq_ImpProdMapProductIdentifier: TStringField
      FieldName = 'ProductIdentifier'
      ProviderFlags = []
      Size = 50
    end
    object sq_ImpProdMapIdentifier: TStringField
      FieldName = 'Identifier'
      ProviderFlags = []
      Size = 60
    end
    object sq_ImpProdMapProductNo: TIntegerField
      FieldName = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_ImpProdMapClientCode: TStringField
      FieldName = 'ClientCode'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object sq_ImpProdMapSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_ImpProdMapPartNumber: TStringField
      FieldName = 'PartNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object sq_ImpProdMapClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object sq_ImpProdMapStatus: TIntegerField
      FieldName = 'Status'
      ProviderFlags = []
    end
    object sq_ImpProdMapDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = []
      Size = 30
    end
    object sq_ImpProdMapWoodXProduct: TStringField
      FieldName = 'WoodXProduct'
      ProviderFlags = []
      Size = 50
    end
    object sq_ImpProdMapProduktbeskrivning: TStringField
      FieldName = 'Produktbeskrivning'
      ProviderFlags = []
      Size = 60
    end
    object sq_ImpProdMapStyck: TFloatField
      FieldName = 'Styck'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_ImpClientMap: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select distinct c.ClientName,'
      'paid.PartyIdentifier AS WoodXPartyIdentifier,'
      'na.Name1, dmwh.DeliveryMessageNumber,'
      'c.ClientNo, c.PartyIdentifier, dmwh.DeliveryMessageDate'
      'FROM dbo.DeliveryMessageWoodHeader2 dmwh'
      
        'Inner Join dbo.NameAddress2 na on na.DeliveryMessageNumber = dmw' +
        'h.DeliveryMessageNumber'
      
        'Inner Join dbo.PartyIdentifier2 paid on paid.DeliveryMessageNumb' +
        'er = dmwh.DeliveryMessageNumber'
      
        'Left Outer Join dbo.Client c on c.PartyIdentifier = paid.PartyId' +
        'entifier'
      'WHERE'
      'dmwh.DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND na.PartyType = '#39'Supplier'#39
      
        'AND ((paid.PartyIdentifierType = '#39'TaxIdentifier'#39') or (paid.Party' +
        'IdentifierType = '#39'VATIdentificationNumber'#39')'
      'or (paid.PartyIdentifierType = '#39'GlobalLocationNumber'#39')'
      'or (paid.PartyIdentifierType = '#39'papiNetGlobalPartyIdentifier'#39'))'
      'AND paid.Partytype = '#39'Supplier'#39
      ''
      ' ')
    Left = 48
    Top = 24
    object sq_ImpClientMapClientName: TStringField
      FieldName = 'ClientName'
      ProviderFlags = []
      Size = 80
    end
    object sq_ImpClientMapWoodXPartyIdentifier: TStringField
      FieldName = 'WoodXPartyIdentifier'
      ProviderFlags = []
      Size = 60
    end
    object sq_ImpClientMapName1: TStringField
      FieldName = 'Name1'
      ProviderFlags = []
      Size = 60
    end
    object sq_ImpClientMapDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = []
      Size = 30
    end
    object sq_ImpClientMapClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_ImpClientMapPartyIdentifier: TStringField
      FieldName = 'PartyIdentifier'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_ImpClientMapDeliveryMessageDate: TSQLTimeStampField
      FieldName = 'DeliveryMessageDate'
      ProviderFlags = []
    end
  end
  object sq_ImpLenMap: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'Select distinct tp.DeliveryMessageNumber, tp.Identifier, ls.Leng' +
        'thCategory, ls.TotalNumberOfUnitsValue as Styck,'
      
        '(Select Top 1 PL.ActualLengthMM FROM dbo.ProductLength PL WHERE ' +
        'PL.ActualLengthMM = ls.LengthCategory'
      'AND PL.NominalLengthMM = ls.LengthCategory'
      '--AND PL.Act = 1'
      ') AS L'#228'ngd,'
      
        '(Select Top 1 PL.ProductLengthNo FROM dbo.ProductLength PL WHERE' +
        ' PL.ActualLengthMM = ls.LengthCategory'
      '--AND PL.NominalLengthMM = ls.LengthCategory'
      '--AND PL.Act = 1'
      ') AS ProductLengthNo'
      'FROM dbo.DeliveryMessageShipment2 dms'
      
        'Inner Join dbo.Transportpackageinformation2 tp on tp.DeliveryMes' +
        'sageNumber = dms.DeliveryMessageNumber'
      
        #9#9#9#9#9#9'                                AND tp.DeliveryShipmentLin' +
        'eItemNumber = dms.DeliveryShipmentLineItemNumber'
      ''
      
        'Inner Join dbo.LengthSpecification2 ls on ls.DeliveryMessageNumb' +
        'er = tp.DeliveryMessageNumber'
      
        #9#9#9#9#9#9'                                AND ls.DeliveryShipmentLin' +
        'eItemNumber = tp.DeliveryShipmentLineItemNumber'
      
        #9#9#9#9#9#9'                                AND ls.Identifier = tp.Ide' +
        'ntifier'
      ''
      'Order By tp.Identifier, ls.LengthCategory')
    Left = 248
    Top = 24
    object sq_ImpLenMapIdentifier: TStringField
      FieldName = 'Identifier'
      Size = 60
    end
    object sq_ImpLenMapLengthCategory: TStringField
      FieldName = 'LengthCategory'
      Size = 40
    end
    object sq_ImpLenMapProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object sq_ImpLenMapDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = []
      Size = 30
    end
    object sq_ImpLenMapLngd: TFloatField
      FieldName = 'L'#228'ngd'
    end
    object sq_ImpLenMapStyck: TFloatField
      FieldName = 'Styck'
    end
  end
  object dsp_ImpClientMap: TDataSetProvider
    DataSet = sq_ImpClientMap
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 88
  end
  object dsp_ImpProdMap: TDataSetProvider
    DataSet = sq_ImpProdMap
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 88
  end
  object dsp_ImpLenMap: TDataSetProvider
    DataSet = sq_ImpLenMap
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 88
  end
  object cds_ImpClientMap: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_ImpClientMap'
    OnReconcileError = cds_ImpClientMapReconcileError
    Left = 48
    Top = 136
    object cds_ImpClientMapClientName: TStringField
      FieldName = 'ClientName'
      ProviderFlags = []
      Size = 80
    end
    object cds_ImpClientMapPartyIdentifier: TStringField
      FieldName = 'PartyIdentifier'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_ImpClientMapName1: TStringField
      FieldName = 'Name1'
      ProviderFlags = []
      Size = 60
    end
    object cds_ImpClientMapDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = []
      Size = 30
    end
    object cds_ImpClientMapClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ImpClientMapLeverantr: TStringField
      FieldKind = fkLookup
      FieldName = 'Leverant'#246'r'
      LookupDataSet = cdsClient
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
    object cds_ImpClientMapWoodXPartyIdentifier: TStringField
      FieldName = 'WoodXPartyIdentifier'
      ProviderFlags = []
      Size = 60
    end
    object cds_ImpClientMapDeliveryMessageDate: TSQLTimeStampField
      FieldName = 'DeliveryMessageDate'
    end
  end
  object cds_ImpProdMap: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_ImpProdMap'
    OnReconcileError = cds_ImpProdMapReconcileError
    Left = 152
    Top = 136
    object cds_ImpProdMapProductIdentifier: TStringField
      DisplayLabel = 'Woodx produktkod'
      FieldName = 'ProductIdentifier'
      ProviderFlags = []
      Size = 50
    end
    object cds_ImpProdMapIdentifier: TStringField
      DisplayLabel = 'Paketnr'
      FieldName = 'Identifier'
      ProviderFlags = []
      Size = 60
    end
    object cds_ImpProdMapProductNo: TIntegerField
      FieldName = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ImpProdMapClientCode: TStringField
      DisplayLabel = 'Lev.kod'
      FieldName = 'ClientCode'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object cds_ImpProdMapProdukt: TStringField
      DisplayLabel = 'V'#229'r Produkt'
      FieldKind = fkLookup
      FieldName = 'Produkt'
      LookupDataSet = cds_Products
      LookupKeyFields = 'ProductNo'
      LookupResultField = 'ProductDisplayName'
      KeyFields = 'ProductNo'
      Size = 100
      Lookup = True
    end
    object cds_ImpProdMapSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ImpProdMapPartNumber: TStringField
      FieldName = 'PartNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object cds_ImpProdMapClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cds_ImpProdMapStatus: TIntegerField
      FieldName = 'Status'
      ProviderFlags = []
    end
    object cds_ImpProdMapLogg: TStringField
      FieldKind = fkLookup
      FieldName = 'Logg'
      LookupDataSet = mtPkgStatus
      LookupKeyFields = 'Status'
      LookupResultField = 'Message'
      KeyFields = 'Status'
      Size = 80
      Lookup = True
    end
    object cds_ImpProdMapDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = []
      Size = 30
    end
    object cds_ImpProdMapWoodXProduct: TStringField
      FieldName = 'WoodXProduct'
      ProviderFlags = []
      Size = 50
    end
    object cds_ImpProdMapProduktbeskrivning: TStringField
      DisplayLabel = 'Woodx produktbeskrivning'
      FieldName = 'Produktbeskrivning'
      ProviderFlags = []
      Size = 60
    end
    object cds_ImpProdMapStyck: TFloatField
      FieldName = 'Styck'
    end
  end
  object cds_ImpLenMap: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Identifier;DeliveryMessageNumber'
    MasterFields = 'Identifier;DeliveryMessageNumber'
    MasterSource = ds_ImpProdMap
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsp_ImpLenMap'
    OnReconcileError = cds_ImpLenMapReconcileError
    Left = 248
    Top = 136
    object cds_ImpLenMapIdentifier: TStringField
      DisplayLabel = 'Paketnr'
      FieldName = 'Identifier'
      Size = 60
    end
    object cds_ImpLenMapLengthCategory: TStringField
      DisplayLabel = 'Woodx l'#228'ngd'
      FieldName = 'LengthCategory'
      Size = 40
    end
    object cds_ImpLenMapProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object cds_ImpLenMapDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = []
      Size = 30
    end
    object cds_ImpLenMapLngd: TFloatField
      FieldName = 'L'#228'ngd'
    end
    object cds_ImpLenMapStyck: TFloatField
      FieldName = 'Styck'
    end
  end
  object ds_ImpClientMap: TDataSource
    DataSet = cds_ImpClientMap
    Left = 48
    Top = 184
  end
  object ds_ImpProdMap: TDataSource
    DataSet = cds_ImpProdMap
    Left = 152
    Top = 184
  end
  object ds_ImpLenMap: TDataSource
    DataSet = cds_ImpLenMap
    Left = 248
    Top = 184
  end
  object sq_Clients: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select C.ClientNo, C.ClientName, C.ClientCode'
      ''
      'from dbo.client C'
      'Inner Join dbo.ClientRole CR on CR.ClientNo = C.ClientNo'
      ''
      'WHERE CR.RoleType = 2'
      ''
      'Order by C.clientName')
    Left = 472
    Top = 32
  end
  object dspClients: TDataSetProvider
    DataSet = sq_Clients
    UpdateMode = upWhereKeyOnly
    Left = 472
    Top = 80
  end
  object cdsClient: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClients'
    Left = 472
    Top = 128
    object cdsClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsClientClientName: TStringField
      DisplayLabel = 'NAMN'
      FieldName = 'ClientName'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsClientClientCode: TStringField
      DisplayLabel = 'LEV.KOD I VIS'
      FieldName = 'ClientCode'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object dsClient: TDataSource
    DataSet = cdsClient
    Left = 472
    Top = 176
  end
  object sq_Products: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT pd.ProductNo, pg.ProductGroupNo, gd.GradeName,'
      '      sc.SpeciesName, sf.SurfacingName, pc.ProductCategoryName,'
      #9'pg.ActualThicknessMM AS ATMM, pg.ActualWidthMM AS ABMM,'
      '  pg.NominalThicknessMM AS NTMM, pg.NominalWidthMM AS NBMM,'
      
        '      pd.ProductDisplayName, pd.GradeNo, pg.SpeciesNo, pg.Produc' +
        'tCategoryNo,'
      '      pg.SurfacingNo'
      'FROM dbo.Product pd'
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo'
      'INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo'
      #9#9#9#9'AND gd.LanguageCode = 1'
      ''
      
        'INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      #9#9#9#9'AND pc.LanguageCode = 1'
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      #9#9#9#9'AND sc.LanguageCode = 1'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      #9#9#9#9'AND sf.LanguageCode = 1'
      'Order By pd.ProductDisplayName')
    Left = 548
    Top = 32
  end
  object dsp_Products: TDataSetProvider
    DataSet = sq_Products
    Left = 548
    Top = 80
  end
  object cds_Products: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'GradeName'
        Attributes = [faFixed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SpeciesName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SurfacingName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ProductCategoryName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ATMM'
        DataType = ftFloat
      end
      item
        Name = 'ABMM'
        DataType = ftFloat
      end
      item
        Name = 'NTMM'
        DataType = ftFloat
      end
      item
        Name = 'NBMM'
        DataType = ftFloat
      end
      item
        Name = 'ProductDisplayName'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'GradeNo'
        DataType = ftInteger
      end
      item
        Name = 'SpeciesNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductCategoryNo'
        DataType = ftInteger
      end
      item
        Name = 'SurfacingNo'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_ProductsIndex1'
        Fields = 'ProductNo'
      end>
    IndexName = 'cds_ProductsIndex1'
    Params = <>
    ProviderName = 'dsp_Products'
    StoreDefs = True
    Left = 548
    Top = 128
    object cds_ProductsProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object cds_ProductsProductDisplayName: TStringField
      DisplayLabel = 'Beskrivning'
      FieldName = 'ProductDisplayName'
      Size = 100
    end
    object cds_ProductsProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object cds_ProductsGradeName: TStringField
      DisplayLabel = 'KV'
      FieldName = 'GradeName'
      Size = 30
    end
    object cds_ProductsSpeciesName: TStringField
      DisplayLabel = 'TS'
      FieldName = 'SpeciesName'
      Size = 30
    end
    object cds_ProductsSurfacingName: TStringField
      DisplayLabel = 'UT'
      FieldName = 'SurfacingName'
      Size = 30
    end
    object cds_ProductsProductCategoryName: TStringField
      DisplayLabel = 'IMP'
      FieldName = 'ProductCategoryName'
    end
    object cds_ProductsGradeNo: TIntegerField
      FieldName = 'GradeNo'
    end
    object cds_ProductsSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object cds_ProductsProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
    end
    object cds_ProductsSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object cds_ProductsATMM: TFloatField
      FieldName = 'ATMM'
    end
    object cds_ProductsABMM: TFloatField
      FieldName = 'ABMM'
    end
    object cds_ProductsNTMM: TFloatField
      FieldName = 'NTMM'
    end
    object cds_ProductsNBMM: TFloatField
      FieldName = 'NBMM'
    end
  end
  object ds_Products: TDataSource
    DataSet = cds_Products
    Left = 548
    Top = 176
  end
  object sq_Ins_wx_prod_trsl: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PartNumber'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SalesRegionNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PartNumber'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SalesRegionNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete From dbo.wx_prod_trsl'
      'WHERE SupplierNo = :SupplierNo'
      'AND PartNumber = :PartNumber'
      'AND SalesRegionNo = :SalesRegionNo'
      
        'Insert into dbo.wx_prod_trsl (SupplierNo, PartNumber, ProductNo,' +
        ' SalesRegionNo)'
      'VALUES(:SupplierNo, :PartNumber, :ProductNo, :SalesRegionNo)')
    Left = 344
    Top = 24
  end
  object sq_SearchPkgNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select PackageNo FROM dbo.PackageNumber'
      'WHERE PackageNo = :PackageNo'
      'AND SupplierCode = :SupplierCode')
    Left = 248
    Top = 248
  end
  object mtPkgStatus: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Status'
        DataType = ftInteger
      end
      item
        Name = 'Message'
        DataType = ftString
        Size = 80
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.02.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 352
    Top = 232
    object mtPkgStatusStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtPkgStatusMessage: TStringField
      FieldName = 'Message'
      Size = 80
    end
  end
  object mtClient: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'WoodX_ClientName'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'PartyIdentifier'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VisClientNo'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.02.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterInsert = mtClientAfterInsert
    Left = 480
    Top = 248
    object mtClientWoodX_ClientName: TStringField
      FieldName = 'WoodX_ClientName'
      Size = 80
    end
    object mtClientPartyIdentifier: TStringField
      FieldName = 'PartyIdentifier'
      Size = 50
    end
    object mtClientVisClientNo: TIntegerField
      FieldName = 'VisClientNo'
    end
    object mtClientVisClientName: TStringField
      FieldKind = fkLookup
      FieldName = 'VisClientName'
      LookupDataSet = cdsClient
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VisClientNo'
      Size = 80
      Lookup = True
    end
  end
  object ds_mtClient: TDataSource
    DataSet = mtClient
    Left = 480
    Top = 296
  end
  object sq_UpdateClient: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PartyIdentifier'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Update dbo.Client'
      'Set PartyIdentifier = :PartyIdentifier'
      'WHERE ClientNo = :ClientNo')
    Left = 544
    Top = 248
  end
  object sq_ImpLengths: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select LS.*'
      'FROM dbo.LengthSpecification2 LS '
      'WHERE'
      'LS.DeliveryMessageNumber = :DeliveryMessageNumber')
    Left = 632
    Top = 32
    object sq_ImpLengthsDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object sq_ImpLengthsDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ImpLengthsIdentifier: TStringField
      FieldName = 'Identifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 60
    end
    object sq_ImpLengthsLengthCategory: TStringField
      FieldName = 'LengthCategory'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 40
    end
    object sq_ImpLengthsTotalNumberOfUnitsValue: TFloatField
      FieldName = 'TotalNumberOfUnitsValue'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ImpLengthsTotalNumberOfUnitsUOM: TStringField
      FieldName = 'TotalNumberOfUnitsUOM'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object dsp_ImpLengths: TDataSetProvider
    DataSet = sq_ImpLengths
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 80
  end
  object cds_ImpLengths: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_ImpLengths'
    OnReconcileError = cds_ImpLengthsReconcileError
    Left = 632
    Top = 128
    object cds_ImpLengthsDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object cds_ImpLengthsDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ImpLengthsIdentifier: TStringField
      FieldName = 'Identifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 60
    end
    object cds_ImpLengthsLengthCategory: TStringField
      FieldName = 'LengthCategory'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 40
    end
    object cds_ImpLengthsTotalNumberOfUnitsValue: TFloatField
      FieldName = 'TotalNumberOfUnitsValue'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ImpLengthsTotalNumberOfUnitsUOM: TStringField
      FieldName = 'TotalNumberOfUnitsUOM'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object sq_ClrPartyID: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PartyIdentifier'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Update dbo.Client'
      'Set PartyIdentifier = '#39#39
      'WHERE PartyIdentifier = :PartyIdentifier')
    Left = 544
    Top = 296
  end
  object sq_ProdLength: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * FROM dbo.ProductLength')
    Left = 744
    Top = 32
    object sq_ProdLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object sq_ProdLengthActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
    end
    object sq_ProdLengthNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
    end
  end
  object dsp_ProdLength: TDataSetProvider
    DataSet = sq_ProdLength
    UpdateMode = upWhereKeyOnly
    Left = 744
    Top = 80
  end
  object cds_ProdLength: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end
      item
        Name = 'ActualLengthMM'
        DataType = ftFloat
      end
      item
        Name = 'NominalLengthMM'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'cds_ProdLengthIndex1'
        Fields = 'ActualLengthMM;NominalLengthMM'
      end>
    IndexName = 'cds_ProdLengthIndex1'
    Params = <>
    ProviderName = 'dsp_ProdLength'
    StoreDefs = True
    Left = 744
    Top = 128
    object cds_ProdLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object cds_ProdLengthActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
    end
    object cds_ProdLengthNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
    end
  end
  object ds_ProdLength: TDataSource
    DataSet = cds_ProdLength
    Left = 744
    Top = 176
  end
  object sq_DMWH: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from dbo.DeliveryMessageWoodHeader'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo')
    Left = 32
    Top = 400
    object sq_DMWHDeliveryMessageType: TStringField
      FieldName = 'DeliveryMessageType'
      ProviderFlags = [pfInUpdate]
    end
    object sq_DMWHDeliveryMessageStatusType: TStringField
      FieldName = 'DeliveryMessageStatusType'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sq_DMWHReissued: TStringField
      FieldName = 'Reissued'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sq_DMWHLanguage: TStringField
      FieldName = 'Language'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sq_DMWHDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object sq_DMWHDeliveryMessageDate: TSQLTimeStampField
      FieldName = 'DeliveryMessageDate'
      ProviderFlags = [pfInUpdate]
    end
    object sq_DMWHIncoTermsLocation: TStringField
      FieldName = 'IncoTermsLocation'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object sq_DMWHIncoTerms: TStringField
      FieldName = 'IncoTerms'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sq_DMWHAdditionalText: TStringField
      FieldName = 'AdditionalText'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sq_DMWHTotalNumberOfShipments: TIntegerField
      FieldName = 'TotalNumberOfShipments'
      ProviderFlags = [pfInUpdate]
    end
    object sq_DMWHTotalQuantityQuantityType: TStringField
      FieldName = 'TotalQuantityQuantityType'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_DMWHTotalQuantityValue: TFMTBCDField
      FieldName = 'TotalQuantityValue'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object sq_DMWHTotalQuantityUOM: TStringField
      FieldName = 'TotalQuantityUOM'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_DMWHInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object sq_DMR: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.DeliveryMessageReference'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo')
    Left = 104
    Top = 400
    object sq_DMRDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object sq_DMRDeliveryMessageReference: TStringField
      FieldName = 'DeliveryMessageReference'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 255
    end
    object sq_DMRDeliveryMessageReferenceType: TStringField
      FieldName = 'DeliveryMessageReferenceType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object sq_DMRInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object sq_PartyID: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.PartyIdentifier'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber')
    Left = 184
    Top = 400
    object sq_PartyIDDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object sq_PartyIDPartyType: TStringField
      FieldName = 'PartyType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object sq_PartyIDPartyIdentifier: TStringField
      FieldName = 'PartyIdentifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 60
    end
    object sq_PartyIDPartyIdentifierType: TStringField
      FieldName = 'PartyIdentifierType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object sq_PartyIDInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object sq_NameAddress: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.NameAddress'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo')
    Left = 264
    Top = 400
    object sq_NameAddressDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object sq_NameAddressPartyType: TStringField
      FieldName = 'PartyType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object sq_NameAddressName1: TStringField
      FieldName = 'Name1'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sq_NameAddressName2: TStringField
      FieldName = 'Name2'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sq_NameAddressName3: TStringField
      FieldName = 'Name3'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sq_NameAddressAddress1: TStringField
      FieldName = 'Address1'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sq_NameAddressAddress2: TStringField
      FieldName = 'Address2'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sq_NameAddressAddress3: TStringField
      FieldName = 'Address3'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sq_NameAddressAddress4: TStringField
      FieldName = 'Address4'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sq_NameAddressCity: TStringField
      FieldName = 'City'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object sq_NameAddressCounty: TStringField
      FieldName = 'County'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object sq_NameAddressStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      ProviderFlags = [pfInUpdate]
    end
    object sq_NameAddressPostalCode: TStringField
      FieldName = 'PostalCode'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object sq_NameAddressCountry: TStringField
      FieldName = 'Country'
      ProviderFlags = [pfInUpdate]
      Size = 72
    end
    object sq_NameAddressISOcountryCode: TStringField
      FieldName = 'ISOcountryCode'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sq_NameAddressInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object sq_DMS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.DeliveryMessageShipment'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo')
    Left = 344
    Top = 400
    object sq_DMSDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object sq_DMSShipmentID: TStringField
      FieldName = 'ShipmentID'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_DMSShipmentIDType: TStringField
      FieldName = 'ShipmentIDType'
      ProviderFlags = [pfInUpdate]
    end
    object sq_DMSProductGroupID: TStringField
      FieldName = 'ProductGroupID'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_DMSProductGroupIDType: TStringField
      FieldName = 'ProductGroupIDType'
      ProviderFlags = [pfInUpdate]
    end
    object sq_DMSDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_DMSProductIdentifier: TStringField
      FieldName = 'ProductIdentifier'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_DMSProductIdentifierType: TStringField
      FieldName = 'ProductIdentifierType'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_DMSAgency: TStringField
      FieldName = 'Agency'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_DMSProductDescription: TStringField
      FieldName = 'ProductDescription'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_DMSSpeciesType: TStringField
      FieldName = 'SpeciesType'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_DMSGradingRule: TStringField
      FieldName = 'GradingRule'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_DMSGradeCode: TStringField
      FieldName = 'GradeCode'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_DMSGradeName: TStringField
      FieldName = 'GradeName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_DMSWidthUOM: TStringField
      FieldName = 'WidthUOM'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_DMSThicknessUOM: TStringField
      FieldName = 'ThicknessUOM'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_DMSManufacturingProcessType: TStringField
      FieldName = 'ManufacturingProcessType'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_DMSExlogValue: TIntegerField
      FieldName = 'ExlogValue'
    end
    object sq_DMSExlogUOM: TStringField
      FieldName = 'ExlogUOM'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_DMSProductNo: TIntegerField
      FieldName = 'ProductNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_DMSInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_DMSWidthValue: TFMTBCDField
      FieldName = 'WidthValue'
      Precision = 18
      Size = 1
    end
    object sq_DMSThicknessValue: TFMTBCDField
      FieldName = 'ThicknessValue'
      Precision = 18
      Size = 1
    end
  end
  object sq_DSDMR: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.DeliveryShipmentDeliveryMessageReference'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo')
    Left = 432
    Top = 400
    object sq_DSDMRDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object sq_DSDMRDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_DSDMRDeliveryMessageReference: TStringField
      FieldName = 'DeliveryMessageReference'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 255
    end
    object sq_DSDMRDeliveryMessageReferenceType: TStringField
      FieldName = 'DeliveryMessageReferenceType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object sq_DSDMRInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object sq_ProdID: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.ProductIdentifier'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo')
    Left = 528
    Top = 400
    object sq_ProdIDDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object sq_ProdIDDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_ProdIDProductIdentifier: TStringField
      FieldName = 'ProductIdentifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 60
    end
    object sq_ProdIDProductIdentifierType: TStringField
      FieldName = 'ProductIdentifierType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_ProdIDAgency: TStringField
      FieldName = 'Agency'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_ProdIDInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object sq_TrpPkgInfo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.Transportpackageinformation'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo')
    Left = 608
    Top = 400
    object sq_TrpPkgInfoDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object sq_TrpPkgInfoDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_TrpPkgInfoPackageType: TStringField
      FieldName = 'PackageType'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_TrpPkgInfoIdentifier: TStringField
      FieldName = 'Identifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 60
    end
    object sq_TrpPkgInfoIdentifierCodeType: TStringField
      FieldName = 'IdentifierCodeType'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_TrpPkgInfoIdentifierType: TStringField
      FieldName = 'IdentifierType'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_TrpPkgInfoItemCountUOM: TStringField
      FieldName = 'ItemCountUOM'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_TrpPkgInfoQuantityType: TStringField
      FieldName = 'QuantityType'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_TrpPkgInfoQuantityUOM: TStringField
      FieldName = 'QuantityUOM'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_TrpPkgInfoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_TrpPkgInfoItemCountValue: TFMTBCDField
      FieldName = 'ItemCountValue'
      Precision = 18
      Size = 1
    end
    object sq_TrpPkgInfoQuantityValue: TFMTBCDField
      FieldName = 'QuantityValue'
      Precision = 18
      Size = 3
    end
  end
  object dsp_DMWH: TDataSetProvider
    DataSet = sq_DMWH
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 456
  end
  object dsp_DMR: TDataSetProvider
    DataSet = sq_DMR
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 456
  end
  object dsp_PartyID: TDataSetProvider
    DataSet = sq_PartyID
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 448
  end
  object dsp_NameAddress: TDataSetProvider
    DataSet = sq_NameAddress
    UpdateMode = upWhereKeyOnly
    Left = 264
    Top = 456
  end
  object dsp_DMS: TDataSetProvider
    DataSet = sq_DMS
    UpdateMode = upWhereKeyOnly
    Left = 344
    Top = 456
  end
  object dsp_DSDMR: TDataSetProvider
    DataSet = sq_DSDMR
    UpdateMode = upWhereKeyOnly
    Left = 432
    Top = 456
  end
  object dsp_ProdID: TDataSetProvider
    DataSet = sq_ProdID
    UpdateMode = upWhereKeyOnly
    Left = 528
    Top = 456
  end
  object dsp_TrpPkgInfo: TDataSetProvider
    DataSet = sq_TrpPkgInfo
    UpdateMode = upWhereKeyOnly
    Left = 608
    Top = 456
  end
  object cds_DMWH: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_DMWH'
    OnReconcileError = cds_DMWHReconcileError
    Left = 32
    Top = 512
    object cds_DMWHDeliveryMessageType: TStringField
      FieldName = 'DeliveryMessageType'
    end
    object cds_DMWHDeliveryMessageStatusType: TStringField
      FieldName = 'DeliveryMessageStatusType'
      Size = 10
    end
    object cds_DMWHReissued: TStringField
      FieldName = 'Reissued'
      Size = 3
    end
    object cds_DMWHLanguage: TStringField
      FieldName = 'Language'
      Size = 3
    end
    object cds_DMWHDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Size = 30
    end
    object cds_DMWHDeliveryMessageDate: TSQLTimeStampField
      FieldName = 'DeliveryMessageDate'
    end
    object cds_DMWHIncoTermsLocation: TStringField
      FieldName = 'IncoTermsLocation'
      Size = 45
    end
    object cds_DMWHIncoTerms: TStringField
      FieldName = 'IncoTerms'
      Size = 3
    end
    object cds_DMWHAdditionalText: TStringField
      FieldName = 'AdditionalText'
      Size = 255
    end
    object cds_DMWHTotalNumberOfShipments: TIntegerField
      FieldName = 'TotalNumberOfShipments'
    end
    object cds_DMWHTotalQuantityQuantityType: TStringField
      FieldName = 'TotalQuantityQuantityType'
      Size = 50
    end
    object cds_DMWHTotalQuantityValue: TFMTBCDField
      FieldName = 'TotalQuantityValue'
      Precision = 18
      Size = 3
    end
    object cds_DMWHTotalQuantityUOM: TStringField
      FieldName = 'TotalQuantityUOM'
      Size = 50
    end
    object cds_DMWHInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
  end
  object cds_DMR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_DMR'
    Left = 104
    Top = 504
    object cds_DMRDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Size = 30
    end
    object cds_DMRDeliveryMessageReference: TStringField
      FieldName = 'DeliveryMessageReference'
      Size = 255
    end
    object cds_DMRDeliveryMessageReferenceType: TStringField
      FieldName = 'DeliveryMessageReferenceType'
      Size = 30
    end
    object cds_DMRInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
  end
  object cds_PartyID: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PartyID'
    Left = 184
    Top = 504
    object cds_PartyIDDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object cds_PartyIDPartyType: TStringField
      FieldName = 'PartyType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object cds_PartyIDPartyIdentifier: TStringField
      FieldName = 'PartyIdentifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 60
    end
    object cds_PartyIDPartyIdentifierType: TStringField
      FieldName = 'PartyIdentifierType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object cds_PartyIDInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cds_NameAddress: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_NameAddress'
    Left = 264
    Top = 504
    object cds_NameAddressDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object cds_NameAddressPartyType: TStringField
      FieldName = 'PartyType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object cds_NameAddressName1: TStringField
      FieldName = 'Name1'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_NameAddressName2: TStringField
      FieldName = 'Name2'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_NameAddressName3: TStringField
      FieldName = 'Name3'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_NameAddressAddress1: TStringField
      FieldName = 'Address1'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_NameAddressAddress2: TStringField
      FieldName = 'Address2'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_NameAddressAddress3: TStringField
      FieldName = 'Address3'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_NameAddressAddress4: TStringField
      FieldName = 'Address4'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_NameAddressCity: TStringField
      FieldName = 'City'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object cds_NameAddressCounty: TStringField
      FieldName = 'County'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object cds_NameAddressStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      ProviderFlags = [pfInUpdate]
    end
    object cds_NameAddressPostalCode: TStringField
      FieldName = 'PostalCode'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cds_NameAddressCountry: TStringField
      FieldName = 'Country'
      ProviderFlags = [pfInUpdate]
      Size = 72
    end
    object cds_NameAddressISOcountryCode: TStringField
      FieldName = 'ISOcountryCode'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cds_NameAddressInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cds_DMS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_DMS'
    OnReconcileError = cds_DMSReconcileError
    Left = 344
    Top = 512
    object cds_DMSDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Size = 30
    end
    object cds_DMSShipmentID: TStringField
      FieldName = 'ShipmentID'
      Size = 30
    end
    object cds_DMSShipmentIDType: TStringField
      FieldName = 'ShipmentIDType'
    end
    object cds_DMSProductGroupID: TStringField
      FieldName = 'ProductGroupID'
      Size = 30
    end
    object cds_DMSProductGroupIDType: TStringField
      FieldName = 'ProductGroupIDType'
    end
    object cds_DMSDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
    end
    object cds_DMSProductIdentifier: TStringField
      FieldName = 'ProductIdentifier'
      Size = 50
    end
    object cds_DMSProductIdentifierType: TStringField
      FieldName = 'ProductIdentifierType'
      Size = 50
    end
    object cds_DMSAgency: TStringField
      FieldName = 'Agency'
      Size = 50
    end
    object cds_DMSSpeciesType: TStringField
      FieldName = 'SpeciesType'
      Size = 50
    end
    object cds_DMSGradingRule: TStringField
      FieldName = 'GradingRule'
      Size = 50
    end
    object cds_DMSGradeCode: TStringField
      FieldName = 'GradeCode'
      Size = 50
    end
    object cds_DMSGradeName: TStringField
      FieldName = 'GradeName'
      Size = 50
    end
    object cds_DMSWidthValue: TFMTBCDField
      FieldName = 'WidthValue'
      Precision = 18
      Size = 1
    end
    object cds_DMSWidthUOM: TStringField
      FieldName = 'WidthUOM'
      Size = 50
    end
    object cds_DMSThicknessValue: TFMTBCDField
      FieldName = 'ThicknessValue'
      Precision = 18
      Size = 1
    end
    object cds_DMSThicknessUOM: TStringField
      FieldName = 'ThicknessUOM'
      Size = 50
    end
    object cds_DMSManufacturingProcessType: TStringField
      FieldName = 'ManufacturingProcessType'
      Size = 30
    end
    object cds_DMSExlogValue: TIntegerField
      FieldName = 'ExlogValue'
    end
    object cds_DMSExlogUOM: TStringField
      FieldName = 'ExlogUOM'
      Size = 50
    end
    object cds_DMSProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object cds_DMSProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 50
    end
    object cds_DMSInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
  end
  object cds_DSDMR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_DSDMR'
    Left = 432
    Top = 512
    object cds_DSDMRDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object cds_DSDMRDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_DSDMRDeliveryMessageReference: TStringField
      FieldName = 'DeliveryMessageReference'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 255
    end
    object cds_DSDMRDeliveryMessageReferenceType: TStringField
      FieldName = 'DeliveryMessageReferenceType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object cds_DSDMRInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cds_ProdID: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_ProdID'
    Left = 528
    Top = 512
    object cds_ProdIDDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object cds_ProdIDDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ProdIDProductIdentifier: TStringField
      FieldName = 'ProductIdentifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 60
    end
    object cds_ProdIDProductIdentifierType: TStringField
      FieldName = 'ProductIdentifierType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ProdIDAgency: TStringField
      FieldName = 'Agency'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ProdIDInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cds_TrpPkgInfo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_TrpPkgInfo'
    OnReconcileError = cds_TrpPkgInfoReconcileError
    Left = 608
    Top = 512
    object cds_TrpPkgInfoDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Size = 30
    end
    object cds_TrpPkgInfoDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
    end
    object cds_TrpPkgInfoPackageType: TStringField
      FieldName = 'PackageType'
      Size = 50
    end
    object cds_TrpPkgInfoIdentifier: TStringField
      FieldName = 'Identifier'
      Size = 60
    end
    object cds_TrpPkgInfoIdentifierCodeType: TStringField
      FieldName = 'IdentifierCodeType'
      Size = 50
    end
    object cds_TrpPkgInfoIdentifierType: TStringField
      FieldName = 'IdentifierType'
      Size = 50
    end
    object cds_TrpPkgInfoItemCountValue: TFMTBCDField
      FieldName = 'ItemCountValue'
      Precision = 18
      Size = 1
    end
    object cds_TrpPkgInfoItemCountUOM: TStringField
      FieldName = 'ItemCountUOM'
      Size = 50
    end
    object cds_TrpPkgInfoQuantityType: TStringField
      FieldName = 'QuantityType'
      Size = 50
    end
    object cds_TrpPkgInfoQuantityValue: TFMTBCDField
      FieldName = 'QuantityValue'
      Precision = 18
      Size = 3
    end
    object cds_TrpPkgInfoQuantityUOM: TStringField
      FieldName = 'QuantityUOM'
      Size = 50
    end
    object cds_TrpPkgInfoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
  end
  object ds_DMWH: TDataSource
    DataSet = cds_DMWH
    Left = 32
    Top = 560
  end
  object ds_DMR: TDataSource
    DataSet = cds_DMR
    Left = 104
    Top = 560
  end
  object ds_PartyID: TDataSource
    DataSet = cds_PartyID
    Left = 184
    Top = 560
  end
  object ds_NameAddress: TDataSource
    DataSet = cds_NameAddress
    Left = 264
    Top = 560
  end
  object ds_DMS: TDataSource
    DataSet = cds_DMS
    Left = 344
    Top = 560
  end
  object ds_DSDMR: TDataSource
    DataSet = cds_DSDMR
    Left = 432
    Top = 560
  end
  object ds_ProdID: TDataSource
    DataSet = cds_ProdID
    Left = 528
    Top = 560
  end
  object ds_TrpPkgInfo: TDataSource
    DataSet = cds_TrpPkgInfo
    Left = 608
    Top = 560
  end
  object sq_InfoQuant: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.InformationalQuantity'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo')
    Left = 688
    Top = 400
    object sq_InfoQuantDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object sq_InfoQuantDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InfoQuantIdentifier: TStringField
      FieldName = 'Identifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 60
    end
    object sq_InfoQuantInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InfoQuantInformationalQuantityType: TStringField
      FieldName = 'InformationalQuantityType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object sq_InfoQuantInformationalQuantityValue: TFMTBCDField
      FieldName = 'InformationalQuantityValue'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object sq_InfoQuantInformationalQuantityUOM: TStringField
      FieldName = 'InformationalQuantityUOM'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object dsp_InfoQuant: TDataSetProvider
    DataSet = sq_InfoQuant
    UpdateMode = upWhereKeyOnly
    Left = 688
    Top = 456
  end
  object cds_InfoQuant: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InfoQuant'
    Left = 688
    Top = 512
    object cds_InfoQuantDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object cds_InfoQuantDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_InfoQuantIdentifier: TStringField
      FieldName = 'Identifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 60
    end
    object cds_InfoQuantInformationalQuantityType: TStringField
      FieldName = 'InformationalQuantityType'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_InfoQuantInformationalQuantityUOM: TStringField
      FieldName = 'InformationalQuantityUOM'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_InfoQuantInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_InfoQuantInformationalQuantityValue: TFMTBCDField
      FieldName = 'InformationalQuantityValue'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
  end
  object ds_InfoQuant: TDataSource
    DataSet = cds_InfoQuant
    Left = 688
    Top = 560
  end
  object sq_LengthSpec: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.LengthSpecification'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo')
    Left = 768
    Top = 400
    object sq_LengthSpecDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object sq_LengthSpecDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LengthSpecIdentifier: TStringField
      FieldName = 'Identifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 60
    end
    object sq_LengthSpecLengthCategory: TStringField
      FieldName = 'LengthCategory'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 40
    end
    object sq_LengthSpecTotalNumberOfUnitsUOM: TStringField
      FieldName = 'TotalNumberOfUnitsUOM'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_LengthSpecInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LengthSpecTotalNumberOfUnitsValue: TFMTBCDField
      FieldName = 'TotalNumberOfUnitsValue'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
  end
  object dsp_LengthSpec: TDataSetProvider
    DataSet = sq_LengthSpec
    UpdateMode = upWhereKeyOnly
    Left = 768
    Top = 456
  end
  object cds_LengthSpec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LengthSpec'
    OnReconcileError = cds_LengthSpecReconcileError
    Left = 768
    Top = 512
    object cds_LengthSpecDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object cds_LengthSpecDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LengthSpecIdentifier: TStringField
      FieldName = 'Identifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 60
    end
    object cds_LengthSpecLengthCategory: TStringField
      FieldName = 'LengthCategory'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 40
    end
    object cds_LengthSpecTotalNumberOfUnitsValue: TFMTBCDField
      FieldName = 'TotalNumberOfUnitsValue'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_LengthSpecTotalNumberOfUnitsUOM: TStringField
      FieldName = 'TotalNumberOfUnitsUOM'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_LengthSpecInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object ds_LengthSpec: TDataSource
    DataSet = cds_LengthSpec
    Left = 768
    Top = 560
  end
  object sq_GetDMHW: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select DISTINCT'
      'CASE'
      'WHEN DT.DeliveryTerm = '#39'CFR'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'CIF'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'CIP'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'CPT'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'DDP'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'DDU'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'DEQ'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'DES'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'EXW'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'FAS'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'FCA'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'FOB'#39' then DT.DeliveryTerm'
      'Else'
      ' '#39'Other'#39
      'END                   AS DeliveryTerm,'
      'IH.InternalInvoiceNo  AS InternalInvoiceNo,'
      'IH.InvoiceDate        AS InvoiceDate,'
      'INV.InvoiceNo         AS InvoiceNo,'
      ''
      'CASE'
      'WHEN PU.TemplateUnitName = '#39'NM3'#39'   THEN SUM(PTD.nm3)'
      'WHEN PU.TemplateUnitName = '#39'NM1'#39'     THEN SUM(PTD.M1NL)'
      'WHEN PU.TemplateUnitName = '#39'M2AB'#39'     THEN SUM(PTD.M2AW)'
      'WHEN PU.TemplateUnitName = '#39'AM1'#39'     THEN SUM(PTD.M1AL)'
      'WHEN PU.TemplateUnitName = '#39'Styck'#39'  THEN SUM(PTD.Pcs)'
      'WHEN PU.TemplateUnitName = '#39'AM3'#39'   THEN SUM(PTD.am3)'
      
        '-- WHEN PU.TemplateUnitName = '#39'm3 aDxnL'#39'   THEN SUM(PTD.m3Actual' +
        'SizeNomLength)'
      
        '-- WHEN PU.TemplateUnitName = '#39'm3 nDxaL'#39'   THEN SUM(PTD.m3NomSiz' +
        'eActualLength )'
      'WHEN PU.TemplateUnitName = '#39'MFBM'#39'   THEN SUM(PTD.MFBM)'
      'END AS PriceVolume,'
      ''
      'SUM(PTD.M1AL) '#9'AS AM1,'
      'SUM(PTD.Pcs) '#9#9#9'        AS Pieces,'
      'SUM(PTD.am3) '#9#9#9'          AS AM3,'
      'SUM(PTD.MFBM) '#9#9#9'        AS MFBM,'
      'SUM(PTD.M2AW) '#9#9'    AS AM2,'
      'SUM(PTD.nm3) '#9#9#9'          AS NM3,'
      'Count(PN.PackageNo)'#9#9#9'          AS Pkgs,'
      'Count(Distinct Ilo.LoadNo)'#9#9#9'  AS TotalNumberOfShipments'
      ''
      'FROM   dbo.InvoiceHeader IH'
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNumber INV'#9'ON'#9'INV.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.LONo    = IL.LONo'
      ''
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      #9'                                  '#9'AND Ilo.LONo    = LD.LONo'
      ''
      #9'INNER JOIN dbo.CSD ON CSD.cdsNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= OL.OrderNo'
      
        #9'INNER JOIN dbo.DeliveryTerm'#9#9'DT'#9'ON'#9'DT.DeliveryTerm_No'#9'= OH.Deli' +
        'veryTermsNo'
      ''
      #9'inner join dbo.packagenumber PN ON PN.PackageNo = LD.packageNo'
      #9#9#9#9#9'AND RTrim(PN.SupplierCode) = RTrim(LD.SupplierCode)'
      ''
      
        #9'INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitN' +
        'o'
      ''
      
        #9'Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.' +
        'PackageTypeNo'
      '--'#9'AND PTD.InternalInvoiceNo = IH.InternalInvoiceNo'
      #9'AND PTD.LoadNo = ILO.LoadNo'
      #9'AND PTD.LoadDetailNo = LD.LoadDetailNo'
      ''
      ''
      'WHERE     (IL.LONo = :ShippingPlanNo)'
      'AND (IH.InternalInvoiceNo = :InternalInvoiceNo)'
      'AND     (IL.LONo      <> -1)'
      ''
      'GROUP BY'
      'IH.InternalInvoiceNo ,'
      'IH.InvoiceDate ,'
      'INV.InvoiceNo ,'
      'PU.TemplateUnitName,'
      'DT.DeliveryTerm'
      ' ')
    Left = 32
    Top = 344
    object sq_GetDMHWTotalNumberOfShipments: TIntegerField
      FieldName = 'TotalNumberOfShipments'
    end
    object sq_GetDMHWPriceVolume: TFMTBCDField
      FieldName = 'PriceVolume'
      Precision = 32
      Size = 3
    end
    object sq_GetDMHWAM3: TFMTBCDField
      FieldName = 'AM3'
      Precision = 32
      Size = 3
    end
  end
  object sq_GetDMR: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select DISTINCT'
      'INV.InvoiceNo '#9#9'AS InvoiceNo,'
      'IL.OrderNoText '#9#9'AS OrderNoText,'
      'IL.LONo '#9'AS LONo,'
      'IL.Reference     '#9'AS IL_Reference,'
      'IH.InternalInvoiceNo '#9'AS InternalInvoiceNo,'
      'CSD.Reference     '#9'AS CSD_Reference_Detail'
      ''
      ''
      'FROM   dbo.InvoiceHeader IH'
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNumber INV'#9'ON'#9'INV.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.LONo    = IL.LONo'
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      #9'                                  '#9'AND Ilo.LONo    = LD.LONo'
      ''
      #9'INNER JOIN dbo.CSD ON CSD.cdsNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= OL.OrderNo'
      ''
      ''
      'WHERE     (IH.InternalInvoiceNo   =  :InternalInvoiceNo)'
      'AND (IL.LONo = :ShippingPlanNo)'
      '  AND     (IL.LONo      <> -1                )'
      ''
      ''
      '')
    Left = 104
    Top = 344
    object sq_GetDMRInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object sq_GetDMROrderNoText: TStringField
      FieldName = 'OrderNoText'
      FixedChar = True
    end
    object sq_GetDMRLONo: TIntegerField
      FieldName = 'LONo'
    end
    object sq_GetDMRIL_Reference: TStringField
      FieldName = 'IL_Reference'
      Size = 30
    end
    object sq_GetDMRInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object sq_GetDMRCSD_Reference_Detail: TStringField
      FieldName = 'CSD_Reference_Detail'
      Size = 30
    end
  end
  object sq_GetPartyID: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '-- //PartyIdentifiers'
      'Select DISTINCT'
      'IL.LONo     AS LONo,  '
      'IH.InternalInvoiceNo '#9'AS IntNo,'
      'IH.CustomerName '#9'AS BuyerName,'
      'IH.AddressLine1 '#9'AS BuyerAddressLine1,'
      'IH.AddressLine2 '#9'AS BuyerAddressLine2,'
      'IH.AddressLine3 '#9'AS BuyerAddressLine3,'
      'IH.AddressLine4 '#9'AS BuyerAddressLine4,'
      'IH.StateOrProvince '#9'AS BuyerStateOrProvince,'
      'IH.PostalCode '#9#9'AS BuyerPostalCode,'
      'IH.CityName '#9#9'AS BuyerCity,'
      'IH.CountryName'#9#9'AS BuyerCountry,'
      'C.VATNo'#9#9#9'AS BuyerVATNo,'
      'C.ClientNo'#9#9'AS BuyerClientNo,'
      'C.ClientCode'#9#9'AS BuyerClientCode,'
      ''
      'IH.CustomerName '#9'AS ShipToName,'
      'IH.ST_AddressName '#9'AS ShipToAddressName,'
      'IH.ST_AddressLine1'#9'AS ShipToAddressLine1,'
      'IH.ST_AddressLine2'#9'AS ShipToAddressLine2,'
      'IH.ST_AddressLine3'#9'AS ShipToAddressLine3,'
      'IH.ST_AddressLine4'#9'AS ShipToAddressLine4,'
      'IH.ST_StateOrProvince'#9'AS ShipToStateOrProvince,'
      'IH.ST_PostalCode'#9'AS ShipToPostalCode,'
      'IH.ST_CityName'#9#9'AS ShipToCity,'
      'IH.ST_CountryName'#9'AS ShipToCountry,'
      ''
      'Supp.ClientName '#9'AS SupplierName,'
      'Ad.AddressLine1'#9#9'AS SupplierAddressLine1,'
      'Ad.AddressLine2'#9#9'AS SupplierAddressLine2,'
      'Ad.AddressLine3'#9#9'AS SupplierAddressLine3,'
      'Ad.AddressLine4'#9#9'AS SupplierAddressLine4,'
      'Ad.StateOrProvince'#9'AS SupplierStateOrProvince,'
      'Ad.PostalCode'#9#9'AS SupplierPostalCode,'
      'City.CityName'#9#9'AS SupplierCity,'
      'Country.CountryName'#9'AS SupplierCountry,'
      'Supp.VATNo'#9#9'AS SupplierVatNo,'
      'Supp.ClientNo'#9#9'AS SupplierClientNo,'
      'Supp.ClientCode'#9#9'AS SupplierClientCode'
      ''
      ''
      'FROM   dbo.InvoiceHeader IH '
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = IH.CustomerNo'
      ''
      #9'inner JOIN dbo.Client Supp'#9#9'ON Supp.ClientNo = IH.SupplierNo'
      #9'Inner Join dbo.CompanyAddress CA on CA.ClientNo = Supp.ClientNo'
      #9#9#9#9#9'AND CA.AddressType = 1'
      #9'Inner Join dbo.Address Ad on Ad.AddressNo = CA.AddressNo'
      #9'Inner Join dbo.City on City.CityNo = Ad.CityNo'
      #9'Inner Join dbo.Country on Country.CountryNo = Ad.CountryNo'
      #9
      ''
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      ''
      'WHERE     (IH.InternalInvoiceNo   =  :InternalInvoiceNo)'
      '  AND     (IL.LONo     = :ShippingPlanNo)'
      '  AND     (IL.LONo      <> -1)'
      ' ')
    Left = 184
    Top = 352
    object sq_GetPartyIDIntNo: TIntegerField
      FieldName = 'IntNo'
    end
    object sq_GetPartyIDBuyerName: TStringField
      FieldName = 'BuyerName'
      FixedChar = True
      Size = 80
    end
    object sq_GetPartyIDBuyerAddressLine1: TStringField
      FieldName = 'BuyerAddressLine1'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDBuyerAddressLine2: TStringField
      FieldName = 'BuyerAddressLine2'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDBuyerAddressLine3: TStringField
      FieldName = 'BuyerAddressLine3'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDBuyerAddressLine4: TStringField
      FieldName = 'BuyerAddressLine4'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDBuyerStateOrProvince: TStringField
      FieldName = 'BuyerStateOrProvince'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDBuyerPostalCode: TStringField
      FieldName = 'BuyerPostalCode'
      FixedChar = True
    end
    object sq_GetPartyIDBuyerCity: TStringField
      FieldName = 'BuyerCity'
      Size = 50
    end
    object sq_GetPartyIDBuyerCountry: TStringField
      FieldName = 'BuyerCountry'
      Size = 30
    end
    object sq_GetPartyIDBuyerVATNo: TStringField
      FieldName = 'BuyerVATNo'
      FixedChar = True
    end
    object sq_GetPartyIDBuyerClientNo: TIntegerField
      FieldName = 'BuyerClientNo'
    end
    object sq_GetPartyIDBuyerClientCode: TStringField
      FieldName = 'BuyerClientCode'
      FixedChar = True
      Size = 3
    end
    object sq_GetPartyIDShipToName: TStringField
      FieldName = 'ShipToName'
      FixedChar = True
      Size = 80
    end
    object sq_GetPartyIDShipToAddressName: TStringField
      FieldName = 'ShipToAddressName'
      FixedChar = True
      Size = 80
    end
    object sq_GetPartyIDShipToAddressLine1: TStringField
      FieldName = 'ShipToAddressLine1'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDShipToAddressLine2: TStringField
      FieldName = 'ShipToAddressLine2'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDShipToAddressLine3: TStringField
      FieldName = 'ShipToAddressLine3'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDShipToAddressLine4: TStringField
      FieldName = 'ShipToAddressLine4'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDShipToStateOrProvince: TStringField
      FieldName = 'ShipToStateOrProvince'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDShipToPostalCode: TStringField
      FieldName = 'ShipToPostalCode'
      FixedChar = True
    end
    object sq_GetPartyIDShipToCity: TStringField
      FieldName = 'ShipToCity'
      FixedChar = True
      Size = 50
    end
    object sq_GetPartyIDShipToCountry: TStringField
      FieldName = 'ShipToCountry'
      FixedChar = True
      Size = 30
    end
    object sq_GetPartyIDSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 80
    end
    object sq_GetPartyIDSupplierAddressLine1: TStringField
      FieldName = 'SupplierAddressLine1'
      Size = 40
    end
    object sq_GetPartyIDSupplierAddressLine2: TStringField
      FieldName = 'SupplierAddressLine2'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDSupplierAddressLine3: TStringField
      FieldName = 'SupplierAddressLine3'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDSupplierAddressLine4: TStringField
      FieldName = 'SupplierAddressLine4'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDSupplierStateOrProvince: TStringField
      FieldName = 'SupplierStateOrProvince'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDSupplierPostalCode: TStringField
      FieldName = 'SupplierPostalCode'
      FixedChar = True
    end
    object sq_GetPartyIDSupplierCity: TStringField
      FieldName = 'SupplierCity'
      Size = 50
    end
    object sq_GetPartyIDSupplierCountry: TStringField
      FieldName = 'SupplierCountry'
      Size = 30
    end
    object sq_GetPartyIDSupplierVatNo: TStringField
      FieldName = 'SupplierVatNo'
      FixedChar = True
    end
    object sq_GetPartyIDSupplierClientNo: TIntegerField
      FieldName = 'SupplierClientNo'
    end
    object sq_GetPartyIDSupplierClientCode: TStringField
      FieldName = 'SupplierClientCode'
      FixedChar = True
      Size = 3
    end
    object sq_GetPartyIDLONo: TIntegerField
      FieldName = 'LONo'
    end
  end
  object sq_GetAddress: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '-- //PartyIdentifiers'
      'Select DISTINCT'
      'IL.LONo     AS LONo,  '
      'IH.InternalInvoiceNo '#9'AS IntNo,'
      'IH.CustomerName '#9'AS BuyerName,'
      'IH.AddressLine1 '#9'AS BuyerAddressLine1,'
      'IH.AddressLine2 '#9'AS BuyerAddressLine2,'
      'IH.AddressLine3 '#9'AS BuyerAddressLine3,'
      'IH.AddressLine4 '#9'AS BuyerAddressLine4,'
      'IH.StateOrProvince '#9'AS BuyerStateOrProvince,'
      'IH.PostalCode '#9#9'AS BuyerPostalCode,'
      'IH.CityName '#9#9'AS BuyerCity,'
      'IH.CountryName'#9#9'AS BuyerCountry,'
      'C.VATNo'#9#9#9'AS BuyerVATNo,'
      'C.ClientNo'#9#9'AS BuyerClientNo,'
      'C.ClientCode'#9#9'AS BuyerClientCode,'
      ''
      'IH.CustomerName '#9'AS ShipToName,'
      'IH.ST_AddressName '#9'AS ShipToAddressName,'
      'IH.ST_AddressLine1'#9'AS ShipToAddressLine1,'
      'IH.ST_AddressLine2'#9'AS ShipToAddressLine2,'
      'IH.ST_AddressLine3'#9'AS ShipToAddressLine3,'
      'IH.ST_AddressLine4'#9'AS ShipToAddressLine4,'
      'IH.ST_StateOrProvince'#9'AS ShipToStateOrProvince,'
      'IH.ST_PostalCode'#9'AS ShipToPostalCode,'
      'IH.ST_CityName'#9#9'AS ShipToCity,'
      'IH.ST_CountryName'#9'AS ShipToCountry,'
      ''
      'Supp.ClientName '#9'AS SupplierName,'
      'Ad.AddressLine1'#9#9'AS SupplierAddressLine1,'
      'Ad.AddressLine2'#9#9'AS SupplierAddressLine2,'
      'Ad.AddressLine3'#9#9'AS SupplierAddressLine3,'
      'Ad.AddressLine4'#9#9'AS SupplierAddressLine4,'
      'Ad.StateOrProvince'#9'AS SupplierStateOrProvince,'
      'Ad.PostalCode'#9#9'AS SupplierPostalCode,'
      'City.CityName'#9#9'AS SupplierCity,'
      'Country.CountryName'#9'AS SupplierCountry,'
      'Supp.VATNo'#9#9'AS SupplierVatNo,'
      'Supp.ClientNo'#9#9'AS SupplierClientNo,'
      'Supp.ClientCode'#9#9'AS SupplierClientCode'
      ''
      ''
      'FROM   dbo.InvoiceHeader IH '
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = IH.CustomerNo'
      ''
      #9'inner JOIN dbo.Client Supp'#9#9'ON Supp.ClientNo = IH.SupplierNo'
      #9'Inner Join dbo.CompanyAddress CA on CA.ClientNo = Supp.ClientNo'
      #9#9#9#9#9'AND CA.AddressType = 1'
      #9'Inner Join dbo.Address Ad on Ad.AddressNo = CA.AddressNo'
      #9'Inner Join dbo.City on City.CityNo = Ad.CityNo'
      #9'Inner Join dbo.Country on Country.CountryNo = Ad.CountryNo'
      ''
      ''
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      ''
      'WHERE     (IH.InternalInvoiceNo   =  :InternalInvoiceNo)'
      '  AND     (IL.LONo      = :ShippingPlanNo     )'
      '  AND     (IL.LONo      <> -1                )'
      ''
      ' '
      ' '
      ' ')
    Left = 264
    Top = 352
    object sq_GetAddressLONo: TIntegerField
      FieldName = 'LONo'
    end
    object sq_GetAddressIntNo: TIntegerField
      FieldName = 'IntNo'
    end
    object sq_GetAddressBuyerName: TStringField
      FieldName = 'BuyerName'
      FixedChar = True
      Size = 80
    end
    object sq_GetAddressBuyerAddressLine1: TStringField
      FieldName = 'BuyerAddressLine1'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressBuyerAddressLine2: TStringField
      FieldName = 'BuyerAddressLine2'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressBuyerAddressLine3: TStringField
      FieldName = 'BuyerAddressLine3'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressBuyerAddressLine4: TStringField
      FieldName = 'BuyerAddressLine4'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressBuyerStateOrProvince: TStringField
      FieldName = 'BuyerStateOrProvince'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressBuyerPostalCode: TStringField
      FieldName = 'BuyerPostalCode'
      FixedChar = True
    end
    object sq_GetAddressBuyerCity: TStringField
      FieldName = 'BuyerCity'
      Size = 50
    end
    object sq_GetAddressBuyerCountry: TStringField
      FieldName = 'BuyerCountry'
      Size = 30
    end
    object sq_GetAddressBuyerVATNo: TStringField
      FieldName = 'BuyerVATNo'
      FixedChar = True
    end
    object sq_GetAddressBuyerClientNo: TIntegerField
      FieldName = 'BuyerClientNo'
    end
    object sq_GetAddressBuyerClientCode: TStringField
      FieldName = 'BuyerClientCode'
      FixedChar = True
      Size = 3
    end
    object sq_GetAddressShipToName: TStringField
      FieldName = 'ShipToName'
      FixedChar = True
      Size = 80
    end
    object sq_GetAddressShipToAddressName: TStringField
      FieldName = 'ShipToAddressName'
      FixedChar = True
      Size = 80
    end
    object sq_GetAddressShipToAddressLine1: TStringField
      FieldName = 'ShipToAddressLine1'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressShipToAddressLine2: TStringField
      FieldName = 'ShipToAddressLine2'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressShipToAddressLine3: TStringField
      FieldName = 'ShipToAddressLine3'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressShipToAddressLine4: TStringField
      FieldName = 'ShipToAddressLine4'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressShipToStateOrProvince: TStringField
      FieldName = 'ShipToStateOrProvince'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressShipToPostalCode: TStringField
      FieldName = 'ShipToPostalCode'
      FixedChar = True
    end
    object sq_GetAddressShipToCity: TStringField
      FieldName = 'ShipToCity'
      FixedChar = True
      Size = 50
    end
    object sq_GetAddressShipToCountry: TStringField
      FieldName = 'ShipToCountry'
      FixedChar = True
      Size = 30
    end
    object sq_GetAddressSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 80
    end
    object sq_GetAddressSupplierAddressLine1: TStringField
      FieldName = 'SupplierAddressLine1'
      Size = 40
    end
    object sq_GetAddressSupplierAddressLine2: TStringField
      FieldName = 'SupplierAddressLine2'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressSupplierAddressLine3: TStringField
      FieldName = 'SupplierAddressLine3'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressSupplierAddressLine4: TStringField
      FieldName = 'SupplierAddressLine4'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressSupplierStateOrProvince: TStringField
      FieldName = 'SupplierStateOrProvince'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressSupplierPostalCode: TStringField
      FieldName = 'SupplierPostalCode'
      FixedChar = True
    end
    object sq_GetAddressSupplierCity: TStringField
      FieldName = 'SupplierCity'
      Size = 50
    end
    object sq_GetAddressSupplierCountry: TStringField
      FieldName = 'SupplierCountry'
      Size = 30
    end
    object sq_GetAddressSupplierVatNo: TStringField
      FieldName = 'SupplierVatNo'
      FixedChar = True
    end
    object sq_GetAddressSupplierClientNo: TIntegerField
      FieldName = 'SupplierClientNo'
    end
    object sq_GetAddressSupplierClientCode: TStringField
      FieldName = 'SupplierClientCode'
      FixedChar = True
      Size = 3
    end
  end
  object sq_GetDMS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select DISTINCT'
      'IL.LONo AS LONo,'
      #39' '#39' AS ShipmentID,'
      #39' '#39' AS ShipmentIDType,'
      #39' '#39' AS ProductGroupID,'
      #39' '#39' AS ProductGroupIDType,'
      '0 AS DeliveryShipmentLineItemNumber,'
      '0 AS ProductIdentifier,'
      #39'PartNumber'#39' AS ProductIdentifierType,'
      #39'Supplier'#39' AS Agency,'
      '-- OL.OrderLineDescription'#9'AS ProductDescription,'
      'CASE'
      'WHEN S.SpeciesNo = 46 Then '#39'WhiteWood'#39
      'WHEN S.SpeciesNo = 47 Then '#39'Redwood'#39
      'WHEN S.SpeciesNo = 52 Then '#39'RedWhitewood'#39
      'Else'
      #39'Other'#39
      'END AS SpeciesType,'
      ''
      #39'Other'#39' AS GradingRule,'
      'G.GradeCode,'
      'G.GradeName,'
      'PG.ABMM AS WidthValue,'
      #39'Millimeter'#39' AS WidthUOM,'
      'PG.ATMM AS ThicknessValue,'
      #39'Millimeter'#39' AS ThicknessUOM,'
      #39'Impregnated'#39' AS ManufacturingProcessType,'
      '0 AS ExLogValue,'
      #39'Piece'#39' AS ExlogUOM,'
      'P.ProductNo,'
      'S.SpeciesCode,'
      'SU.SurfacingCode,'
      'PC.ProcessCode AS ImpCode,'
      'OH.OrderType,'
      'CPK.ArticleNumber'
      ''
      ''
      'FROM   dbo.InvoiceHeader IH'
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNumber INV'#9'ON'#9'INV.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.LONo    = IL.LONo'
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      #9'                                  '#9'AND Ilo.LONo    = LD.LONo'
      ''
      #9'INNER JOIN dbo.CSD ON CSD.cdsNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= OL.OrderNo'
      ''
      
        '  LEFT OUTER JOIN dbo.ClientPkgTicket CPK on CPK.ClientNo = OH.C' +
        'ustomerNo'
      
        '                                       AND CPK.ProductNo = OL.Pr' +
        'oductNo'
      ''
      
        #9'Inner Join dbo.PackageType  PT ON  PT.PackageTypeNo = LD.Packag' +
        'eTypeNo'
      #9'Inner Join dbo.Product P ON  P.ProductNo = PT.ProductNo'
      
        #9'Inner Join dbo.ProductGroup PG ON  PG.ProductGroupNo = P.Produc' +
        'tGroupNo'
      #9'Inner Join dbo.Species S ON  S.SpeciesNo = PG.SpeciesNo'
      #9#9#9#9'AND S.LanguageCode = OH.LanguageCode'
      #9'Inner Join dbo.Surfacing SU ON  SU.SurfacingNo = PG.SurfacingNo'
      #9#9#9#9'AND SU.LanguageCode = OH.LanguageCode'
      #9'Inner Join dbo.Grade G ON  G.GradeNo = P.GradeNo'
      #9#9#9#9'AND G.LanguageCode = OH.LanguageCode'
      #9'Inner Join dbo.ProcessType PC ON  PC.ProcessNo = PG.ProcessNo'
      #9#9#9#9'AND PC.LanguageCode = OH.LanguageCode'
      ''
      ''
      
        #9'Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageTypeNo = LD' +
        '.PackageTypeNo'
      ''
      'WHERE     (IH.InternalInvoiceNo   = :InternalInvoiceNo)'
      '  AND     (IL.LONo      = :ShippingPlanNo)'
      '  AND     (IL.LONo      <> -1)'
      ''
      ' ')
    Left = 344
    Top = 352
    object sq_GetDMSLONo: TIntegerField
      FieldName = 'LONo'
    end
    object sq_GetDMSShipmentID: TStringField
      FieldName = 'ShipmentID'
      Size = 1
    end
    object sq_GetDMSShipmentIDType: TStringField
      FieldName = 'ShipmentIDType'
      Size = 1
    end
    object sq_GetDMSProductGroupID: TStringField
      FieldName = 'ProductGroupID'
      Size = 1
    end
    object sq_GetDMSProductGroupIDType: TStringField
      FieldName = 'ProductGroupIDType'
      Size = 1
    end
    object sq_GetDMSDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
    end
    object sq_GetDMSProductIdentifier: TIntegerField
      FieldName = 'ProductIdentifier'
    end
    object sq_GetDMSProductIdentifierType: TStringField
      FieldName = 'ProductIdentifierType'
      Size = 10
    end
    object sq_GetDMSAgency: TStringField
      FieldName = 'Agency'
      Size = 8
    end
    object sq_GetDMSSpeciesType: TStringField
      FieldName = 'SpeciesType'
      Size = 12
    end
    object sq_GetDMSGradingRule: TStringField
      FieldName = 'GradingRule'
      Size = 5
    end
    object sq_GetDMSGradeCode: TStringField
      FieldName = 'GradeCode'
      Size = 3
    end
    object sq_GetDMSGradeName: TStringField
      FieldName = 'GradeName'
      Size = 30
    end
    object sq_GetDMSWidthValue: TFMTBCDField
      FieldName = 'WidthValue'
      Precision = 18
      Size = 1
    end
    object sq_GetDMSWidthUOM: TStringField
      FieldName = 'WidthUOM'
      Size = 10
    end
    object sq_GetDMSThicknessValue: TFMTBCDField
      FieldName = 'ThicknessValue'
      Precision = 18
      Size = 1
    end
    object sq_GetDMSThicknessUOM: TStringField
      FieldName = 'ThicknessUOM'
      Size = 10
    end
    object sq_GetDMSManufacturingProcessType: TStringField
      FieldName = 'ManufacturingProcessType'
      Size = 5
    end
    object sq_GetDMSExLogValue: TIntegerField
      FieldName = 'ExLogValue'
    end
    object sq_GetDMSExlogUOM: TStringField
      FieldName = 'ExlogUOM'
      Size = 5
    end
    object sq_GetDMSProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object sq_GetDMSSpeciesCode: TStringField
      FieldName = 'SpeciesCode'
      Size = 3
    end
    object sq_GetDMSSurfacingCode: TStringField
      FieldName = 'SurfacingCode'
      Size = 3
    end
    object sq_GetDMSImpCode: TStringField
      FieldName = 'ImpCode'
      Size = 3
    end
    object sq_GetDMSOrderType: TIntegerField
      FieldName = 'OrderType'
    end
    object sq_GetDMSArticleNumber: TStringField
      FieldName = 'ArticleNumber'
      Size = 50
    end
  end
  object sq_GetDSDMR: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LONo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select DISTINCT'
      'INV.InvoiceNo '#9#9'AS InvoiceNumber,'
      'IL.OrderNoText '#9#9'AS ContractNumber,'
      'IL.LONo '#9'AS LoadingOrderNumber,'
      'CSD.OrderLineNo'#9#9'AS OrderLineItemNumber,'
      ''
      'IL.Reference     '#9'AS IL_Reference,'
      'IH.InternalInvoiceNo '#9'AS InternalInvoiceNo,'
      'CSD.Reference     '#9'AS CSD_Reference_Detail'
      ''
      ''
      'FROM   dbo.InvoiceHeader IH '
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNumber INV'#9'ON'#9'INV.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.LONo    = IL.LONo'
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      #9'                                  '#9'AND Ilo.LONo    = LD.LONo'
      ''
      #9'INNER JOIN dbo.CSD ON CSD.CDSNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= OL.OrderNo'
      ''
      ''
      'WHERE     (IH.InternalInvoiceNo   =  :InternalInvoiceNo) '
      ''
      '  AND     (IL.LONo = :LONo )'
      ''
      ' '
      ' '
      ' ')
    Left = 432
    Top = 352
    object sq_GetDSDMRInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object sq_GetDSDMRContractNumber: TStringField
      FieldName = 'ContractNumber'
      FixedChar = True
    end
    object sq_GetDSDMRLoadingOrderNumber: TIntegerField
      FieldName = 'LoadingOrderNumber'
    end
    object sq_GetDSDMROrderLineItemNumber: TIntegerField
      FieldName = 'OrderLineItemNumber'
    end
    object sq_GetDSDMRIL_Reference: TStringField
      FieldName = 'IL_Reference'
      Size = 30
    end
    object sq_GetDSDMRInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object sq_GetDSDMRCSD_Reference_Detail: TStringField
      FieldName = 'CSD_Reference_Detail'
      Size = 30
    end
  end
  object sq_GetTrp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LONo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select DISTINCT'
      #39' '#39' AS DeliveryMessageNumber,'
      '0 AS DeliveryShipmentLineItemNumber,'
      'CASE WHEN 1 = 1 THEN '#39'LengthPackage'#39
      'Else'
      ' '#39'TruckPackage'#39
      'End AS PackageType,'
      
        'isNull(Cast(C.pktnrlevkod AS Varchar(3)),'#39#39')+Cast(LD.PackageNo A' +
        'S Varchar(10)) AS SPEC_PackageNo,'
      #39'Supplier'#39' AS IdentifierCodeType,'
      #39'Primary'#39' AS IdentifierType,'
      'SUM(PTD.Pcs) AS ItemCountValue,'
      #39'Piece'#39' AS ItemCountUOM,'
      #39'Volume'#39' AS QuantityType,'
      'CASE'
      'WHEN PU.TemplateUnitName = '#39'NM3'#39' THEN SUM(PTD.nm3)'
      'WHEN PU.TemplateUnitName = '#39'NM1'#39' THEN SUM(PTD.M1NL)'
      'WHEN PU.TemplateUnitName = '#39'M2AB'#39' THEN SUM(PTD.M2AW)'
      'WHEN PU.TemplateUnitName = '#39'AM1'#39' THEN SUM(PTD.M1AL)'
      'WHEN PU.TemplateUnitName = '#39'Styck'#39' THEN SUM(PTD.Pcs)'
      'WHEN PU.TemplateUnitName = '#39'AM3'#39' THEN SUM(PTD.am3)'
      
        '-- WHEN PU.TemplateUnitName = '#39'm3 aDxnL'#39' THEN SUM(PTD.m3ActualSi' +
        'zeNomLength)'
      
        '-- WHEN PU.TemplateUnitName = '#39'm3 nDxaL'#39' THEN SUM(PTD.m3NomSizeA' +
        'ctualLength )'
      'WHEN PU.TemplateUnitName = '#39'MFBM'#39' THEN SUM(PTD.MFBM)'
      'END AS QuantityValue,'
      #39'CubicMeter'#39' AS QuantityUOM'
      ''
      'FROM   dbo.InvoiceHeader IH'
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNumber INV'#9'ON'#9'INV.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.LONo    = IL.LONo'
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      #9'                                  '#9'AND Ilo.LONo    = LD.LONo'
      ''
      #9'INNER JOIN dbo.CSD ON CSD.CDSNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= OL.OrderNo'
      ''
      ''
      #9'inner join dbo.packagenumber PN ON PN.PackageNo = LD.packageNo'
      #9#9#9#9#9'AND RTrim(PN.SupplierCode) = RTrim(LD.SupplierCode)'
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = OH.CustomerNo'
      ''
      
        #9'INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitN' +
        'o'
      ''
      
        #9'Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.' +
        'PackageTypeNo'
      '--'#9'AND PTD.InternalInvoiceNo = IH.InternalInvoiceNo'
      #9'AND PTD.LoadNo = ILO.LoadNo'
      #9'AND PTD.LoadDetailNo = LD.LoadDetailNo'
      ''
      
        #9'Inner Join dbo.PackageType  PT ON  PT.PackageTypeNo = LD.Packag' +
        'eTypeNo'
      
        '--'#9'Inner Join dbo.LengthSpec LS on LS.LengthSpecNo = PT.LengthSp' +
        'ecNo'
      ''
      ''
      'WHERE     (IH.InternalInvoiceNo = :InternalInvoiceNo)'
      #9'AND (PT.ProductNo = :ProductNo)'
      #9'AND     (IL.LONo      = :LONo)'
      ''
      'GROUP BY'
      
        'IL.LONo , LD.PackageNo , PU.TemplateUnitName, C.pktnrlevkod -- ,' +
        ' LS.NoOfLengths'
      ' '
      ' '
      ' '
      ' ')
    Left = 608
    Top = 352
    object sq_GetTrpDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Size = 1
    end
    object sq_GetTrpDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
    end
    object sq_GetTrpPackageType: TStringField
      FieldName = 'PackageType'
      Size = 13
    end
    object sq_GetTrpSPEC_PackageNo: TStringField
      FieldName = 'SPEC_PackageNo'
      Size = 13
    end
    object sq_GetTrpIdentifierCodeType: TStringField
      FieldName = 'IdentifierCodeType'
      Size = 8
    end
    object sq_GetTrpIdentifierType: TStringField
      FieldName = 'IdentifierType'
      Size = 7
    end
    object sq_GetTrpItemCountValue: TIntegerField
      FieldName = 'ItemCountValue'
    end
    object sq_GetTrpItemCountUOM: TStringField
      FieldName = 'ItemCountUOM'
      Size = 5
    end
    object sq_GetTrpQuantityType: TStringField
      FieldName = 'QuantityType'
      Size = 6
    end
    object sq_GetTrpQuantityValue: TFMTBCDField
      FieldName = 'QuantityValue'
      Precision = 32
      Size = 3
    end
    object sq_GetTrpQuantityUOM: TStringField
      FieldName = 'QuantityUOM'
      Size = 10
    end
  end
  object sq_GetLS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LONo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Identifier'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select DISTINCT'
      #39' '#39' AS DeliveryMessageNumber,'
      '0 AS DeliveryShipmentLineItemNumber,'
      
        'isNull(Cast(C.pktnrlevkod AS Varchar(3)),'#39#39')+Cast(LD.PackageNo A' +
        'S Varchar(10)) AS Identifier,'
      'Cast(PL.ALMM AS Varchar(6)) AS LengthCategory,'
      'PTD.Pcs AS TotalNumberOfUnitsValue,'
      #39'Piece'#39' AS TotalNumberOfUnitsUOM,'
      ''
      'CASE'
      'WHEN PU.TemplateUnitName = '#39'NM3'#39' THEN SUM(PTD.NM3)'
      'WHEN PU.TemplateUnitName = '#39'NM1'#39' THEN SUM(PTD.M1NL)'
      'WHEN PU.TemplateUnitName = '#39'M2AB'#39' THEN SUM(PTD.M2AW)'
      'WHEN PU.TemplateUnitName = '#39'AM1'#39' THEN SUM(PTD.M1AL)'
      'WHEN PU.TemplateUnitName = '#39'Styck'#39' THEN SUM(PTD.Pcs)'
      'WHEN PU.TemplateUnitName = '#39'AM3'#39' THEN SUM(PTD.AM3)'
      
        '-- WHEN PU.TemplateUnitName = '#39'm3 aDxnL'#39' THEN SUM(PTD.m3ActualSi' +
        'zeNomLength)'
      
        '-- WHEN PU.TemplateUnitName = '#39'm3 nDxaL'#39' THEN SUM(PTD.m3NomSizeA' +
        'ctualLength )'
      'WHEN PU.TemplateUnitName = '#39'MFBM'#39' THEN SUM(PTD.MFBM)'
      'END AS QuantityValue,'
      #39'CubicMeter'#39' AS QuantityUOM'
      ''
      'FROM   dbo.InvoiceHeader IH '
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNumber INV'#9'ON'#9'INV.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.LONo    = IL.LONo'
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      #9'                                  '#9'AND Ilo.LONo    = LD.LONo'
      ''
      #9'INNER JOIN dbo.CSD ON CSD.CDSNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= OL.OrderNo'
      ''
      ''
      #9'inner join dbo.packagenumber PN ON PN.PackageNo = LD.packageNo'
      #9#9#9#9#9'AND RTrim(PN.SupplierCode) = RTrim(LD.SupplierCode)'
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = OH.CustomerNo'
      ''
      
        #9'INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitN' +
        'o '
      ''
      
        #9'Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.' +
        'PackageTypeNo'
      '--'#9'AND PTD.InternalInvoiceNo = IH.InternalInvoiceNo'
      #9'AND PTD.LoadNo = ILO.LoadNo'
      #9'AND PTD.LoadDetailNo = LD.LoadDetailNo'
      ''
      
        #9'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Pro' +
        'ductLengthNo'
      ''
      ''
      'WHERE     (IH.InternalInvoiceNo = :InternalInvoiceNo)'
      '  '#9'AND     (IL.LONo = :LONo)'
      
        ' AND isNull(Cast(C.pktnrlevkod AS Varchar(3)),'#39#39')+Cast(LD.Packag' +
        'eNo AS Varchar(10)) = :Identifier'
      ''
      'GROUP BY'
      
        'IL.LONo , LD.PackageNo , PU.TemplateUnitName, C.pktnrlevkod, PTD' +
        '.Pcs, PL.ALMM'
      ''
      ''
      ' ')
    Left = 768
    Top = 352
    object sq_GetLSDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Size = 1
    end
    object sq_GetLSDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
    end
    object sq_GetLSIdentifier: TStringField
      FieldName = 'Identifier'
      Size = 13
    end
    object sq_GetLSLengthCategory: TStringField
      FieldName = 'LengthCategory'
      Size = 6
    end
    object sq_GetLSTotalNumberOfUnitsValue: TIntegerField
      FieldName = 'TotalNumberOfUnitsValue'
    end
    object sq_GetLSTotalNumberOfUnitsUOM: TStringField
      FieldName = 'TotalNumberOfUnitsUOM'
      Size = 5
    end
    object sq_GetLSQuantityUOM: TStringField
      FieldName = 'QuantityUOM'
      Size = 10
    end
    object sq_GetLSQuantityValue: TFMTBCDField
      FieldName = 'QuantityValue'
      Precision = 32
      Size = 3
    end
  end
  object sq_Delete: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete dbo.DeliveryMessageWoodHeader'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo')
    Left = 32
    Top = 296
  end
  object sq_GetISOCtry: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CountryName'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select CountryCode FROM dbo.Country'
      'WHERE CountryName = :CountryName')
    Left = 120
    Top = 256
    object sq_GetISOCtryCountryCode: TStringField
      FieldName = 'CountryCode'
      FixedChar = True
      Size = 2
    end
  end
  object sq_GetIQ: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LONo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Identifier'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select DISTINCT'
      #39' '#39' AS DeliveryMessageNumber,'
      '0 AS DeliveryShipmentLineItemNumber,'
      
        'isNull(Cast(C.pktnrlevkod AS Varchar(3)),'#39#39')+Cast(LD.PackageNo A' +
        'S Varchar(10)) AS Identifier,'
      ''
      'SUM(PTD.nm3) '#9#9#9'AS NM3,'
      'SUM(PTD.M1NL) '#9'AS NM1,'
      'SUM(PTD.M2AW )'#9#9'AS AM2,'
      'SUM(PTD.M1AL)'#9'AS AM1,'
      'SUM(PTD.Pcs)'#9#9#9'AS PIECE,'
      'SUM(PTD.Am3)'#9#9#9'AS AM3,'
      'SUM(PTD.MFBM) '#9#9#9'AS MFBM'
      ''
      ''
      ''
      'FROM   dbo.InvoiceHeader IH '
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      ''
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.LONo    = IL.LONo'
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      #9'                                  '#9'AND Ilo.LONo    = LD.LONo'
      ''
      #9'INNER JOIN dbo.CSD ON CSD.CDSNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= OL.OrderNo'
      ''
      ''
      #9'inner join dbo.packagenumber PN ON PN.PackageNo = LD.packageNo'
      #9#9#9#9#9'AND RTrim(PN.SupplierCode) = RTrim(LD.SupplierCode)'
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = OH.CustomerNo'
      ''
      
        #9'INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitN' +
        'o'
      ''
      
        #9'Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.' +
        'PackageTypeNo'
      '--'#9'AND PTD.InternalInvoiceNo = IH.InternalInvoiceNo'
      #9'AND PTD.LoadNo = ILO.LoadNo'
      #9'AND PTD.LoadDetailNo = LD.LoadDetailNo'
      ''
      'WHERE     (IH.InternalInvoiceNo = :InternalInvoiceNo)'
      '  '#9'AND     (IL.LONo = :LONo)'
      
        ' AND isNull(Cast(C.pktnrlevkod AS Varchar(3)),'#39#39')+Cast(LD.Packag' +
        'eNo AS Varchar(10)) = :Identifier'
      ''
      'GROUP BY'
      'IL.LONo , LD.PackageNo , PU.TemplateUnitName, C.pktnrlevkod'
      ''
      ' '
      ' '
      ' ')
    Left = 688
    Top = 352
    object sq_GetIQDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Size = 1
    end
    object sq_GetIQDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
    end
    object sq_GetIQIdentifier: TStringField
      FieldName = 'Identifier'
      Size = 13
    end
    object sq_GetIQPIECE: TIntegerField
      FieldName = 'PIECE'
    end
    object sq_GetIQNM3: TFMTBCDField
      FieldName = 'NM3'
      Precision = 32
      Size = 3
    end
    object sq_GetIQNM1: TFMTBCDField
      FieldName = 'NM1'
      Precision = 32
      Size = 3
    end
    object sq_GetIQAM2: TFMTBCDField
      FieldName = 'AM2'
      Precision = 32
      Size = 3
    end
    object sq_GetIQAM1: TFMTBCDField
      FieldName = 'AM1'
      Precision = 32
      Size = 3
    end
    object sq_GetIQAM3: TFMTBCDField
      FieldName = 'AM3'
      Precision = 32
      Size = 3
    end
    object sq_GetIQMFBM: TFMTBCDField
      FieldName = 'MFBM'
      Precision = 32
      Size = 3
    end
  end
  object sq_GetOLDesc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select DISTINCT OL.OrderLineDescription'#9'AS ProductDescription'
      'FROM   dbo.InvoiceHeader IH'
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNumber INV'#9'ON'#9'INV.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.LONo    = IL.LONo'
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      #9'                                  '#9'AND Ilo.LONo    = LD.LONo'
      ''
      #9'INNER JOIN dbo.CSD ON CSD.CDSNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      'WHERE (IH.InternalInvoiceNo   =  :InternalInvoiceNo)'
      'AND OL.ProductNo = :ProductNo'
      'AND (IL.LONo      = :ShippingPlanNo)'
      'AND (IL.LONo      <> -1)'
      ''
      ''
      ' '
      ' ')
    Left = 344
    Top = 296
    object sq_GetOLDescProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
  end
  object sq_GetLONos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select DISTINCT'
      'IL.ShippingPlanNo AS LONo,'
      'IH.InternalInvoiceNo  AS InternalInvoiceNo,'
      'INV.InvoiceNo         AS InvoiceNo'
      ''
      'FROM   dbo.InvoiceHeader IH'
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNumber INV'#9'ON'#9'INV.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      ''
      'WHERE     (IH.InternalInvoiceNo = :InternalInvoiceNo)'
      ''
      '  AND     (IL.ShippingPlanNo      <> -1)'
      ''
      ' '
      ' ')
    Left = 32
    Top = 248
    object sq_GetLONosLONo: TIntegerField
      FieldName = 'LONo'
    end
    object sq_GetLONosInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object sq_GetLONosInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
  end
  object mtLoadProducts: TkbmMemTable
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
    Version = '7.02.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 664
    Top = 248
    object mtLoadProductsProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtLoadProductsProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Size = 100
    end
  end
  object sq_DSDMR2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.DeliveryShipmentDeliveryMessageReference2'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber')
    Left = 872
    Top = 352
  end
  object dsp_DSDMR2: TDataSetProvider
    DataSet = sq_DSDMR2
    UpdateMode = upWhereKeyOnly
    Left = 872
    Top = 408
  end
  object cds_DSDMR2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_DSDMR2'
    Left = 872
    Top = 464
    object cds_DSDMR2DeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Size = 30
    end
    object cds_DSDMR2DeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
    end
    object cds_DSDMR2DeliveryMessageReference: TStringField
      FieldName = 'DeliveryMessageReference'
      Size = 255
    end
    object cds_DSDMR2DeliveryMessageReferenceType: TStringField
      FieldName = 'DeliveryMessageReferenceType'
      Size = 50
    end
  end
  object ds_DSDMR2: TDataSource
    DataSet = cds_DSDMR2
    Left = 872
    Top = 512
  end
  object mtVisKlient: TkbmMemTable
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
    Version = '7.02.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 872
    Top = 37
    object mtVisKlientClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object mtVisKlientLeverantr: TStringField
      FieldKind = fkLookup
      FieldName = 'Leverant'#246'r'
      LookupDataSet = cdsClient
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select distinct c.ClientName,'
      'paid.PartyIdentifier AS WoodXPartyIdentifier,'
      'na.Name1, dmwh.DeliveryMessageNumber,'
      'c.ClientNo, c.PartyIdentifier, dmwh.DeliveryMessageDate'
      'FROM dbo.DeliveryMessageWoodHeader2 dmwh'
      
        'Inner Join dbo.NameAddress2 na on na.DeliveryMessageNumber = dmw' +
        'h.DeliveryMessageNumber'
      
        'Inner Join dbo.PartyIdentifier2 paid on paid.DeliveryMessageNumb' +
        'er = dmwh.DeliveryMessageNumber'
      
        'Left Outer Join dbo.Client c on c.PartyIdentifier = paid.PartyId' +
        'entifier'
      'WHERE'
      'dmwh.DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND na.PartyType = '#39'Supplier'#39
      
        'AND ((paid.PartyIdentifierType = '#39'TaxIdentifier'#39') or (paid.Party' +
        'IdentifierType = '#39'VATIdentificationNumber'#39')'
      'or (paid.PartyIdentifierType = '#39'GlobalLocationNumber'#39'))'
      'AND paid.Partytype = '#39'Supplier'#39
      ''
      ' ')
    Left = 872
    Top = 112
    object StringField1: TStringField
      FieldName = 'ClientName'
      ProviderFlags = []
      Size = 80
    end
    object StringField2: TStringField
      FieldName = 'WoodXPartyIdentifier'
      ProviderFlags = []
      Size = 60
    end
    object StringField3: TStringField
      FieldName = 'Name1'
      ProviderFlags = []
      Size = 60
    end
    object StringField4: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = []
      Size = 30
    end
    object IntegerField1: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object StringField5: TStringField
      FieldName = 'PartyIdentifier'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DeliveryMessageDate'
      ProviderFlags = []
    end
  end
  object sq_UpdPrefix: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Prefix'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DeliveryMessageNumber'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Identifier'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'Update dbo.Transportpackageinformation2'
      'Set Prefix = :Prefix'
      'WHERE DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND Identifier = :Identifier')
    Left = 344
    Top = 88
    object StringField6: TStringField
      FieldName = 'ProductIdentifier'
      ProviderFlags = []
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'Identifier'
      ProviderFlags = []
      Size = 60
    end
    object IntegerField2: TIntegerField
      FieldName = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object StringField8: TStringField
      FieldName = 'ClientCode'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object IntegerField3: TIntegerField
      FieldName = 'SupplierNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object StringField9: TStringField
      FieldName = 'PartNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object IntegerField4: TIntegerField
      FieldName = 'ClientNo'
    end
    object IntegerField5: TIntegerField
      FieldName = 'Status'
      ProviderFlags = []
    end
    object StringField10: TStringField
      FieldName = 'DeliveryMessageNumber'
      ProviderFlags = []
      Size = 30
    end
    object StringField11: TStringField
      FieldName = 'WoodXProduct'
      ProviderFlags = []
      Size = 50
    end
    object StringField12: TStringField
      FieldName = 'Produktbeskrivning'
      ProviderFlags = []
      Size = 60
    end
    object FloatField1: TFloatField
      FieldName = 'Styck'
      ProviderFlags = [pfInUpdate]
    end
  end
end
