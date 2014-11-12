object dm_SinglePkg: Tdm_SinglePkg
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 545
  Width = 1008
  object mtSinglePkg: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'PRODUCTDESCRIPTION'
        DataType = ftString
        Size = 100
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
        Name = 'PRODUCTGROUPNO'
        DataType = ftInteger
      end
      item
        Name = 'NOM_THICK'
        DataType = ftFloat
      end
      item
        Name = 'NOM_WIDTH'
        DataType = ftFloat
      end
      item
        Name = 'GradeStampNo'
        DataType = ftInteger
      end
      item
        Name = 'BarcodeID'
        DataType = ftInteger
      end
      item
        Name = 'OwnerNo'
        DataType = ftInteger
      end
      item
        Name = 'VerkNo'
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
        Name = 'RegDate'
        DataType = ftDateTime
      end
      item
        Name = 'RegPointNo'
        DataType = ftInteger
      end
      item
        Name = 'INCH_THICK'
        DataType = ftFloat
      end
      item
        Name = 'INCH_WIDTH'
        DataType = ftFloat
      end
      item
        Name = 'TotalPcs'
        DataType = ftInteger
      end
      item
        Name = 'PackageNo'
        DataType = ftInteger
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'AM3'
        DataType = ftFloat
      end
      item
        Name = 'Saved'
        DataType = ftBoolean
      end
      item
        Name = 'InputOptionNo'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end
      item
        Name = 'Operation'
        DataType = ftInteger
      end
      item
        Name = 'OldPackageTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'IC_grpno'
        DataType = ftInteger
      end
      item
        Name = 'CallingFormType'
        DataType = ftInteger
      end
      item
        Name = 'ProducerNo'
        DataType = ftInteger
      end
      item
        Name = 'SurfacingNo'
        DataType = ftInteger
      end>
    IndexName = 'mtProd_RecordsIndex3'
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
    AfterInsert = mtSinglePkgAfterInsert
    Left = 784
    Top = 264
    object mtSinglePkgProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtSinglePkgPRODUCTDESCRIPTION: TStringField
      FieldName = 'PRODUCTDESCRIPTION'
      Size = 100
    end
    object mtSinglePkgACT_THICK: TFloatField
      FieldName = 'ACT_THICK'
    end
    object mtSinglePkgACT_WIDTH: TFloatField
      FieldName = 'ACT_WIDTH'
    end
    object mtSinglePkgPRODUCTGROUPNO: TIntegerField
      FieldName = 'PRODUCTGROUPNO'
    end
    object mtSinglePkgNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
    end
    object mtSinglePkgNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
    end
    object mtSinglePkgGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtSinglePkgBarcodeID: TIntegerField
      FieldName = 'BarcodeID'
    end
    object mtSinglePkgLOPP: TStringField
      DisplayLabel = 'BARCODE'
      FieldKind = fkLookup
      FieldName = 'LOPP'
      LookupDataSet = dmsSystem.sqBarCode
      LookupKeyFields = 'BarCodeNo'
      LookupResultField = 'BarCode'
      KeyFields = 'BarcodeID'
      Lookup = True
    end
    object mtSinglePkgGStamps: TStringField
      DisplayLabel = 'GRADE STAMP'
      FieldKind = fkLookup
      FieldName = 'GStamps'
      LookupDataSet = dmsSystem.sqGradeStamp
      LookupKeyFields = 'GradeStampNo'
      LookupResultField = 'GradeStamp'
      KeyFields = 'GradeStampNo'
      Lookup = True
    end
    object mtSinglePkgOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      OnChange = mtSinglePkgOwnerNoChange
    end
    object mtSinglePkgVerkNo: TIntegerField
      FieldName = 'VerkNo'
      OnChange = mtSinglePkgVerkNoChange
    end
    object mtSinglePkgPIPNo: TIntegerField
      FieldName = 'PIPNo'
      OnChange = mtSinglePkgPIPNoChange
    end
    object mtSinglePkgLagerstlle: TStringField
      FieldKind = fkLookup
      FieldName = 'Lagerst'#228'lle'
      LookupDataSet = cds_PhysInv
      LookupKeyFields = 'PhysicalInventoryPointNo'
      LookupResultField = 'Lagerst'#228'lle'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtSinglePkgLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtSinglePkgLagergrupp: TStringField
      FieldKind = fkLookup
      FieldName = 'Lagergrupp'
      LookupDataSet = cds_LogInv
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'Lagergrupp'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtSinglePkgRegDate: TDateTimeField
      FieldName = 'RegDate'
    end
    object mtSinglePkgRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtSinglePkgMtpunkt: TStringField
      FieldKind = fkLookup
      FieldName = 'M'#228'tpunkt'
      LookupDataSet = cds_RegPoints
      LookupKeyFields = 'RegPointNo'
      LookupResultField = 'RegPointName'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
    object mtSinglePkgINCH_THICK: TFloatField
      FieldName = 'INCH_THICK'
    end
    object mtSinglePkgINCH_WIDTH: TFloatField
      FieldName = 'INCH_WIDTH'
    end
    object mtSinglePkgTotalPcs: TIntegerField
      FieldName = 'TotalPcs'
    end
    object mtSinglePkgPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtSinglePkgSUPPLIERCODE: TStringField
      FieldName = 'SUPPLIERCODE'
      Size = 3
    end
    object mtSinglePkgAM3: TFloatField
      FieldName = 'AM3'
    end
    object mtSinglePkgSaved: TBooleanField
      FieldName = 'Saved'
    end
    object mtSinglePkgInputOptionNo: TIntegerField
      FieldName = 'InputOptionNo'
    end
    object mtSinglePkgInputOption: TStringField
      FieldKind = fkLookup
      FieldName = 'InputOption'
      LookupDataSet = mtInputOptions
      LookupKeyFields = 'InputOptionNo'
      LookupResultField = 'InputOption'
      KeyFields = 'InputOptionNo'
      Lookup = True
    end
    object mtSinglePkgStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtSinglePkgOperation: TIntegerField
      FieldName = 'Operation'
    end
    object mtSinglePkgOldPackageTypeNo: TIntegerField
      FieldName = 'OldPackageTypeNo'
    end
    object mtSinglePkgIC_grpno: TIntegerField
      FieldName = 'IC_grpno'
    end
    object mtSinglePkgCallingFormType: TIntegerField
      FieldName = 'CallingFormType'
    end
    object mtSinglePkgProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      OnChange = mtSinglePkgProducerNoChange
    end
    object mtSinglePkgSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
  end
  object dsSinglePkg: TDataSource
    DataSet = mtSinglePkg
    Left = 784
    Top = 320
  end
  object dsLengthGroup: TDataSource
    DataSet = cdsLengthGroup
    OnDataChange = dsLengthGroupDataChange
    Left = 856
    Top = 184
  end
  object dsProdLength: TDataSource
    DataSet = cdsProdLength
    Left = 768
    Top = 184
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 56
    Top = 224
  end
  object ds_PhysInv: TDataSource
    DataSet = cds_PhysInv
    Left = 768
    Top = 80
  end
  object ds_LogInv: TDataSource
    DataSet = cds_LogInv
    Left = 840
    Top = 80
  end
  object ds_RegPoints: TDataSource
    DataSet = cds_RegPoints
    Left = 448
    Top = 104
  end
  object mtInputOptions: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'InputOptionNo'
        DataType = ftInteger
      end
      item
        Name = 'InputOption'
        DataType = ftString
        Size = 20
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
    Left = 449
    Top = 277
    object mtInputOptionsInputOptionNo: TIntegerField
      FieldName = 'InputOptionNo'
    end
    object mtInputOptionsInputOption: TStringField
      FieldName = 'InputOption'
    end
  end
  object mtLengths: TkbmMemTable
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
    Version = '7.12.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 448
    Top = 224
    object mtLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object mtLengthsNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
    end
    object mtLengthsALMM: TFloatField
      FieldName = 'ALMM'
    end
  end
  object ds_Leverant: TDataSource
    DataSet = cds_Leverant
    Left = 128
    Top = 224
  end
  object cds_Leverant: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select Distinct C.ClientNo, C.ClientName, C.PktNrLevKod,'
      
        'C.PaketNoPos, C.PaketNoLength, C.SupplierCodePos, C.SupplierCode' +
        'Length'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND  R.RoleType = 2'
      ''
      'Order by C.clientName'
      '')
    Left = 128
    Top = 176
    object cds_LeverantClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LeverantClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_LeverantPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
    object cds_LeverantPaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
      Origin = 'PaketNoPos'
    end
    object cds_LeverantPaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
      Origin = 'PaketNoLength'
    end
    object cds_LeverantSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
      Origin = 'SupplierCodePos'
    end
    object cds_LeverantSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
      Origin = 'SupplierCodeLength'
    end
  end
  object cds_Verk: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select Distinct C.ClientNo, C.ClientName, C.PktNrLevKod,'
      
        'C.PaketNoPos, C.PaketNoLength, C.SupplierCodePos, C.SupplierCode' +
        'Length'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND  ((R.RoleType = 6) or ( R.RoleType = 9))'
      ''
      'Order by C.clientName'
      '')
    Left = 56
    Top = 176
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
    object cds_VerkPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
    object cds_VerkPaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
      Origin = 'PaketNoPos'
    end
    object cds_VerkPaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
      Origin = 'PaketNoLength'
    end
    object cds_VerkSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
      Origin = 'SupplierCodePos'
    end
    object cds_VerkSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
      Origin = 'SupplierCodeLength'
    end
  end
  object cds_ProdLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ProductLength'
      '')
    Left = 200
    Top = 48
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
  object sq_Products: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT'
      'pt.PackageTypeNo,'
      'pt.TotalNoOfPieces,'
      'pt.BarCodeID,'
      'pt.GradeStamp,'
      'pd.ProductNo, pg.ProductGroupNo,'
      'pg.ActualThicknessMM, pg.ActualWidthMM,'
      'pg.NominalThicknessMM, pg.NominalWidthMM,'
      'pd.ProductDisplayName,'
      'pg.NominalThicknessINCH, pg.NominalWidthINCH,'
      'PIP.OwnerNo,'
      'PIP.PhysicalInventoryPointNo,'
      'LIP.LogicalInventoryPointNo,'
      'pg.SurfacingNo'
      'FROM dbo.PackageNumber pn'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt on pt.packagetypeno = pn.packagety' +
        'peno'
      'Inner Join dbo.Product pd on pd.productno = pt.productno'
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo'
      'INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo'
      #9#9#9#9'AND gd.LanguageCode = 1'
      
        'INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      #9#9#9#9'AND sc.LanguageCode = 1'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      #9#9#9#9'AND sf.LanguageCode = 1'
      'WHERE pn.PackageNo = :PackageNo'
      'AND  pn.SupplierCode = :SupplierCode'
      ' '
      '')
    Left = 56
    Top = 40
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
    object sq_ProductsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      Required = True
    end
    object sq_ProductsTotalNoOfPieces: TIntegerField
      FieldName = 'TotalNoOfPieces'
      Origin = 'TotalNoOfPieces'
    end
    object sq_ProductsBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
    end
    object sq_ProductsGradeStamp: TIntegerField
      FieldName = 'GradeStamp'
      Origin = 'GradeStamp'
    end
    object sq_ProductsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object sq_ProductsProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object sq_ProductsActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object sq_ProductsActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object sq_ProductsNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object sq_ProductsNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
    object sq_ProductsProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object sq_ProductsNominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
    end
    object sq_ProductsNominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
    end
    object sq_ProductsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object sq_ProductsPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
      Required = True
    end
    object sq_ProductsLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      Required = True
    end
    object sq_ProductsSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
  end
  object sq_pcsPerlength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select PcsPerLength '
      'FROM '
      'dbo.PackageTypeLengths'
      'WHERE PackageTypeNo = :PackageTypeNo'
      '')
    Left = 56
    Top = 104
    ParamData = <
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_pcsPerlengthPcsPerLength: TStringField
      FieldName = 'PcsPerLength'
      Origin = 'PcsPerLength'
      Size = 255
    end
  end
  object cds_ProductGroupLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select *'
      'FROM'
      'dbo.ProductGroupLengths'
      '')
    Left = 320
    Top = 48
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
  object cds_RegPoints: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT RP.RegPointNo, RP.RegPointName'
      'FROM ProductionUnit PU'
      
        'Inner Join dbo.RegistrationPoint RP ON RP.RegPointNo = PU.Regist' +
        'rationPointNo'
      'WHERE'
      ' PU.ClientNo = :ClientNo'
      'ORDER BY RP.RegPointName'
      ''
      '')
    Left = 448
    Top = 48
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_RegPointsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      Required = True
    end
    object cds_RegPointsRegPointName: TStringField
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      FixedChar = True
      Size = 30
    end
  end
  object sq_PkgTypeLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select ptd.ProductLengthNo, ptd.NoOfPieces,'
      'PL.ActualLengthMM AS ALMM'
      'FROM dbo.PackageTypeDetail ptd'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo '
      'WHERE ptd.PackageTypeNo = :PackageTypeNo'
      ' '
      '')
    Left = 448
    Top = 168
    ParamData = <
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_PkgTypeLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_PkgTypeLengthNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
      Origin = 'NoOfPieces'
    end
    object sq_PkgTypeLengthALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
  end
  object cdsLengthGroup: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select GroupNo, GroupName FROM dbo.ProductLengthGroupName'
      'UNION'
      
        'Select -1 AS GroupNo, '#39'Produktspecifika'#39' AS GroupName FROM dbo.P' +
        'roductLengthGroupName'
      '')
    Left = 856
    Top = 136
    object cdsLengthGroupGroupNo: TIntegerField
      FieldName = 'GroupNo'
      Origin = 'GroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object cdsLengthGroupGroupName: TStringField
      FieldName = 'GroupName'
      Origin = 'GroupName'
      ReadOnly = True
    end
  end
  object cdsProdLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select'
      '0.0 AS AM3,'
      '0.0 AS AM1,'
      'GroupNo AS GroupNo,'
      '0 AS STYCK,'
      'PL.productLengthno,'
      'PL.ActualLengthMM'#9'AS ALMM,'
      'PL.NominalLengthMM'#9'AS NLMM,'
      'PL.NominalLengthFEET'#9'AS FOT,'
      'PL.ActualLengthINCH'#9'AS TUM,'
      'PL.PET'#9#9#9'AS PET,'
      'PL.FingerJoint'#9#9'AS FJ'
      'from dbo.ProductLengthGroup PLG'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PLG.Prod' +
        'uctLengthNo'
      'WHERE GroupNo = :GroupNo'
      'AND PL.ActualLengthMM > 0.1'
      ''
      'Union'
      ''
      'Select'
      '0.0 AS AM3,'
      '0.0 AS AM1,'
      '-1 AS GroupNo,'
      '0 AS STYCK,'
      'PL.productLengthno,'
      'PL.ActualLengthMM'#9'AS ALMM,'
      'PL.NominalLengthMM'#9'AS NLMM,'
      'PL.NominalLengthFEET'#9'AS FOT,'
      'PL.ActualLengthINCH'#9'AS TUM,'
      'PL.PET'#9#9#9'AS PET,'
      'PL.FingerJoint'#9#9'AS FJ'
      'from dbo.ProductGroupLengths PLG'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PLG.Prod' +
        'uctLengthNo'
      'WHERE ProductGroupNo = :ProductGroupNo'
      'AND PL.ActualLengthMM > 0.1'
      '')
    Left = 768
    Top = 144
    ParamData = <
      item
        Name = 'GROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsProdLengthAM3: TBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      Required = True
      Precision = 1
      Size = 1
    end
    object cdsProdLengthAM1: TBCDField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
      Required = True
      Precision = 1
      Size = 1
    end
    object cdsProdLengthGroupNo: TIntegerField
      FieldName = 'GroupNo'
      Origin = 'GroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object cdsProdLengthSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      Required = True
    end
    object cdsProdLengthproductLengthno: TIntegerField
      FieldName = 'productLengthno'
      Origin = 'productLengthno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object cdsProdLengthALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ReadOnly = True
      Required = True
    end
    object cdsProdLengthNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
      ReadOnly = True
      Required = True
    end
    object cdsProdLengthFOT: TFloatField
      FieldName = 'FOT'
      Origin = 'FOT'
      ReadOnly = True
    end
    object cdsProdLengthTUM: TStringField
      FieldName = 'TUM'
      Origin = 'TUM'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object cdsProdLengthPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
      ReadOnly = True
    end
    object cdsProdLengthFJ: TIntegerField
      FieldName = 'FJ'
      Origin = 'FJ'
      ReadOnly = True
    end
  end
  object cds_PhysInv: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT PH.PhysicalInventoryPointNo, CY.CITYNAME AS Lagerst'#228'lle'
      'FROM'
      'dbo.InvControlGrp icrg'
      
        'Inner Join dbo.InvCtrl_Lagerstallen icrls on icrls.IC_grpno = ic' +
        'rg.IC_grpno'
      
        'Inner Join dbo.PHYSICALINVENTORYPOINT PH on ph.PhysicalInventory' +
        'PointNo = icrls.PhysicalInventoryPointNo'
      'Inner Join dbo.CITY CY on CY.CITYNO = PH.PhyInvPointNameNo'
      'WHERE'
      'icrg.IC_grpno = :IC_grpno'
      ''
      'AND CY.CITYNAME <> '#39'Transfer'#39
      '')
    Left = 768
    Top = 32
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PhysInvPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
      Required = True
    end
    object cds_PhysInvLagerställe: TStringField
      FieldName = 'Lagerst'#228'lle'
      Origin = '[Lagerst'#228'lle]'
      Size = 50
    end
  end
  object cds_LogInv: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT LIP.LogicalInventoryPointNo AS LIPNo, LIP.LogicalInventor' +
        'yName AS Lagergrupp'
      'FROM dbo.InvControlGrp icrg'
      
        'Inner Join dbo.InvCtrlMetod icrm on icrm.IC_grpno = icrg.IC_grpn' +
        'o'
      
        'Inner Join dbo.LOGICALINVENTORYPOINT LIP on LIP.LogicalInventory' +
        'PointNo = icrm.LogicalInventoryPointNo'
      'WHERE'
      'icrg.IC_grpno = :IC_grpno'
      'AND LIP.PhysicalInventoryPointNo = :PIPNo'
      '')
    Left = 840
    Top = 32
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LogInvLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_LogInvLagergrupp: TStringField
      FieldName = 'Lagergrupp'
      Origin = 'Lagergrupp'
      Size = 50
    end
  end
  object sp_OnePackageNo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_OnePackageNo'
    Left = 272
    Top = 176
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
  object sp_Populate_One_PkgTypeLengths: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_Populate_One_PackageTypeLengths'
    Left = 272
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
        Name = '@SearchPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_changePkgInventering: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_changePkgInventering'
    Left = 656
    Top = 320
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = -6
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
        Name = '@RegistrationPointNo'
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
        Name = '@OLD_PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@SupplierNo'
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
        Name = '@MatPunktAgareNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PackageTotals: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_PackageTotals'
    Left = 656
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
    StoredProcName = 'dbo.vida_NewPkgNoInvt'
    Left = 656
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
        Name = '@Status'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_NewPackageDetail: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_NewPackageDetail'
    Left = 656
    Top = 176
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
    Left = 656
    Top = 128
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
    Left = 656
    Top = 80
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
    StoredProcName = 'dbo.vis_PkgType'
    Left = 656
    Top = 32
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
      end>
  end
  object sp_PkgInfo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_OnePackage_Info'
    Left = 200
    Top = 104
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
end
