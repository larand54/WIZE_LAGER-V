object dmProduct: TdmProduct
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 716
  Width = 1270
  object ds_ProdList: TDataSource
    DataSet = cds_ProdList
    Left = 22
    Top = 112
  end
  object ds_PrdGrp: TDataSource
    DataSet = cds_PrdGrp
    Left = 94
    Top = 144
  end
  object ds_Species: TDataSource
    DataSet = cds_Species
    OnDataChange = ds_SpeciesDataChange
    Left = 22
    Top = 456
  end
  object ds_ProductLength: TDataSource
    DataSet = cds_ProductLength
    Left = 582
    Top = 456
  end
  object ds_ProductGroupLengths: TDataSource
    DataSet = cds_ProductGroupLengths
    Left = 262
    Top = 144
  end
  object ds_grade: TDataSource
    DataSet = cds_grade
    OnDataChange = ds_gradeDataChange
    Left = 86
    Top = 432
  end
  object ds_Surfacing: TDataSource
    DataSet = cds_Surfacing
    OnDataChange = ds_SurfacingDataChange
    Left = 158
    Top = 456
  end
  object ds_Products: TDataSource
    DataSet = cds_Products
    Left = 166
    Top = 144
  end
  object ds_ProdCatg: TDataSource
    DataSet = cds_ProdCatg
    Left = 238
    Top = 432
  end
  object ds_IntPriceGrp: TDataSource
    DataSet = cds_IntPriceGrp
    Left = 318
    Top = 456
  end
  object ds_StatCode: TDataSource
    DataSet = cds_StatCode
    Left = 902
    Top = 448
  end
  object ds_PrdGrpList: TDataSource
    DataSet = cds_PrdGrpList
    Left = 364
    Top = 128
  end
  object ds_ProdLengthGrp: TDataSource
    DataSet = cds_ProdLengthGrp
    OnDataChange = ds_ProdLengthGrpDataChange
    Left = 822
    Top = 128
  end
  object ds_ProdLengthRow: TDataSource
    DataSet = cds_ProdLengthRow
    Left = 534
    Top = 112
  end
  object ds_PkgCode: TDataSource
    DataSet = cds_PkgCode
    Left = 676
    Top = 448
  end
  object ds_Prod_Lengths: TDataSource
    DataSet = cds_Prod_Lengths
    Left = 716
    Top = 144
  end
  object ds_PrdGrpLO: TDataSource
    DataSet = cds_PrdGrpLO
    Left = 614
    Top = 144
  end
  object ds_Lengths: TDataSource
    DataSet = cds_Lengths
    Left = 532
    Top = 288
  end
  object ds_LinkProd: TDataSource
    DataSet = cds_LinkProd
    Left = 756
    Top = 448
  end
  object ds_ProdLo: TDataSource
    DataSet = cds_ProdLo
    Left = 388
    Top = 432
  end
  object ds_intPrice: TDataSource
    DataSet = cds_intPrice
    Left = 830
    Top = 432
  end
  object ds_CliProdList: TDataSource
    DataSet = cds_CliProdList
    Left = 444
    Top = 144
  end
  object ds_PL: TDataSource
    DataSet = cds_PL
    Left = 444
    Top = 456
  end
  object ds_gradeII: TDataSource
    DataSet = cds_gradeII
    Left = 70
    Top = 608
  end
  object ds_SurfacingII: TDataSource
    DataSet = cds_SurfacingII
    Left = 206
    Top = 616
  end
  object ds_SpeciesII: TDataSource
    Left = 358
    Top = 616
  end
  object ds_CSDL: TDataSource
    DataSet = cds_CSDL
    Left = 500
    Top = 432
  end
  object ds_CSDLRow: TDataSource
    DataSet = cds_CSDLRow
    Left = 916
    Top = 144
  end
  object ds_ProdListCust: TDataSource
    DataSet = cds_ProdListCust
    Left = 988
    Top = 432
  end
  object ds_LengthRuleGrp: TDataSource
    DataSet = cds_LengthRuleGrp
    Left = 1076
    Top = 160
  end
  object ds_LengthRuleRow: TDataSource
    DataSet = cds_LengthRuleRow
    Left = 1092
    Top = 440
  end
  object dsClient: TDataSource
    DataSet = cdsClient
    Left = 992
    Top = 152
  end
  object cds_ProdList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT pd.ProductNo, pg.ProductGroupNo, gd.GradeName,'
      'sc.SpeciesName, sf.SurfacingName, pc.ProductCategoryName,'
      
        'pg.ActualThicknessMM, pg.ActualWidthMM, pg.NominalThicknessMM, p' +
        'g.NominalWidthMM,'
      
        'pd.ProductDisplayName, pd.GradeNo, pg.SpeciesNo, pg.ProductCateg' +
        'oryNo,'
      'pg.SurfacingNo, pg.NominalThicknessINCH, pg.NominalWidthINCH'
      'FROM dbo.Product pd'
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo'
      'INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo'
      'AND gd.LanguageCode = :LanguageCode'
      
        'INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      'AND sc.LanguageCode = :LanguageCode'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      'AND sf.LanguageCode = :LanguageCode'
      'WHERE '
      '((pd.ProductNo = :ProductNo) OR (0 = :ProductNo))'
      '')
    Left = 24
    Top = 64
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProdListProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdListProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object cds_ProdListGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_ProdListSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object cds_ProdListSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object cds_ProdListProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      Size = 40
    end
    object cds_ProdListActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object cds_ProdListActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object cds_ProdListNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object cds_ProdListNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
    object cds_ProdListProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object cds_ProdListGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      Required = True
    end
    object cds_ProdListSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
    end
    object cds_ProdListProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
    end
    object cds_ProdListSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object cds_ProdListNominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
    end
    object cds_ProdListNominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
    end
  end
  object cds_PrdGrp: TFDQuery
    AfterInsert = cds_PrdGrpAfterInsert
    BeforePost = cds_PrdGrpBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ProductGroup'
      '')
    Left = 96
    Top = 88
    object cds_PrdGrpProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PrdGrpActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object cds_PrdGrpActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object cds_PrdGrpNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object cds_PrdGrpNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
    object cds_PrdGrpNominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
    end
    object cds_PrdGrpNominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
    end
    object cds_PrdGrpSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
    end
    object cds_PrdGrpProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
    end
    object cds_PrdGrpSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object cds_PrdGrpProductDisplayFormatNo: TIntegerField
      FieldName = 'ProductDisplayFormatNo'
      Origin = 'ProductDisplayFormatNo'
    end
    object cds_PrdGrpLengthDisplayFormatNo: TIntegerField
      FieldName = 'LengthDisplayFormatNo'
      Origin = 'LengthDisplayFormatNo'
    end
    object cds_PrdGrpProfile: TStringField
      FieldName = 'Profile'
      Origin = 'Profile'
      Size = 25
    end
    object cds_PrdGrpSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_PrdGrpCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PrdGrpModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_PrdGrpDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PrdGrpStatCodeNo: TIntegerField
      FieldName = 'StatCodeNo'
      Origin = 'StatCodeNo'
    end
    object cds_PrdGrpLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
    object cds_PrdGrpAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_PrdGrpTS: TStringField
      FieldKind = fkLookup
      FieldName = 'TS'
      LookupDataSet = cds_Species
      LookupKeyFields = 'SpeciesNo'
      LookupResultField = 'SpeciesName'
      KeyFields = 'SpeciesNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
    object cds_PrdGrpUT: TStringField
      FieldKind = fkLookup
      FieldName = 'UT'
      LookupDataSet = cds_Surfacing
      LookupKeyFields = 'SurfacingNo'
      LookupResultField = 'SurfacingName'
      KeyFields = 'SurfacingNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
  end
  object cds_Products: TFDQuery
    AfterInsert = cds_ProductsAfterInsert
    BeforePost = cds_ProductsBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.Product'
      'WHERE ProductGroupNo = :ProductGroupNo'
      '')
    Left = 168
    Top = 56
    ParamData = <
      item
        Name = 'PRODUCTGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProductsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductsProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object cds_ProductsGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      Required = True
    end
    object cds_ProductsProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object cds_ProductsMC: TStringField
      FieldName = 'MC'
      Origin = 'MC'
      Size = 15
    end
    object cds_ProductsQCSpecificationNo: TIntegerField
      FieldName = 'QCSpecificationNo'
      Origin = 'QCSpecificationNo'
    end
    object cds_ProductsSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_ProductsInteralPriceGroupNo: TIntegerField
      FieldName = 'InteralPriceGroupNo'
      Origin = 'InteralPriceGroupNo'
    end
    object cds_ProductsCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProductsModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProductsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ProductsAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_ProductsProductCode: TStringField
      FieldName = 'ProductCode'
      Origin = 'ProductCode'
      Size = 30
    end
    object cds_ProductsVP_ProductCode: TStringField
      FieldName = 'VP_ProductCode'
      Origin = 'VP_ProductCode'
      Size = 50
    end
    object cds_ProductsVarugruppNo: TIntegerField
      FieldName = 'VarugruppNo'
      Origin = 'VarugruppNo'
    end
    object cds_ProductsKVALITET: TStringField
      FieldKind = fkLookup
      FieldName = 'KVALITET'
      LookupDataSet = cds_grade
      LookupKeyFields = 'GradeNo'
      LookupResultField = 'GradeName'
      KeyFields = 'GradeNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
  end
  object cds_ProductGroupLengths: TFDQuery
    AfterInsert = cds_ProductGroupLengthsAfterInsert
    BeforePost = cds_ProductGroupLengthsBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select PGL.ProductGroupNo,'
      'PGL.ProductLengthNo,'
      'PGL.CreatedUser,'
      'PGL.ModifiedUser,'
      'PGL.DateCreated,'
      'PL.ActualLengthMM AS ALMM,'
      'PL.NominalLengthMM AS NLMM,'
      'PL.NominalLengthFEET AS NLF,'
      'PL.ActualLengthINCH AS AI,'
      'PL.PET,'
      'PL.FingerJoint AS FJ'
      ' FROM dbo.ProductGroupLengths PGL'
      
        'Inner Join dbo.ProductLength PL ON PL.ProductLengthNo = PGL.Prod' +
        'uctLengthNo'
      'WHERE ProductGroupNo = :ProductGroupNo'
      ''
      '')
    Left = 264
    Top = 88
    ParamData = <
      item
        Name = 'PRODUCTGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProductGroupLengthsProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductGroupLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductGroupLengthsCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProductGroupLengthsModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProductGroupLengthsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ProductGroupLengthsALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
    object cds_ProductGroupLengthsNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
      Required = True
    end
    object cds_ProductGroupLengthsNLF: TFloatField
      FieldName = 'NLF'
      Origin = 'NLF'
    end
    object cds_ProductGroupLengthsAI: TStringField
      FieldName = 'AI'
      Origin = 'AI'
      FixedChar = True
      Size = 15
    end
    object cds_ProductGroupLengthsPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object cds_ProductGroupLengthsFJ: TIntegerField
      FieldName = 'FJ'
      Origin = 'FJ'
    end
  end
  object cds_PrdGrpList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT pg.act, pd.ProductNo, pg.ProductGroupNo, '
      'sc.SpeciesName AS TS,'
      'sf.SurfacingName AS UT, pc.ProductCategoryName PC,'
      'pg.ActualThicknessMM AS "AT",'
      ' pg.ActualWidthMM AS AB,'
      'pg.NominalThicknessMM AS NT,'
      'pg.NominalWidthMM AS NB,'
      'pd.ProductDisplayName,'
      'pg.SpeciesNo, pg.ProductCategoryNo,'
      'pg.SurfacingNo,'
      'pg.NominalThicknessINCH AS NTI, pg.NominalWidthINCH AS NBI'
      'FROM dbo.Product pd'
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo'
      
        'INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      'AND sc.LanguageCode = 1'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      'AND sf.LanguageCode = 1'
      '')
    Left = 360
    Top = 64
    object cds_PrdGrpListact: TIntegerField
      FieldName = 'act'
      Origin = 'act'
    end
    object cds_PrdGrpListProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PrdGrpListProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object cds_PrdGrpListTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      Required = True
      Size = 30
    end
    object cds_PrdGrpListUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      Required = True
      Size = 30
    end
    object cds_PrdGrpListPC: TStringField
      FieldName = 'PC'
      Origin = 'PC'
      Size = 40
    end
    object cds_PrdGrpListAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object cds_PrdGrpListAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object cds_PrdGrpListNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
    end
    object cds_PrdGrpListNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
    end
    object cds_PrdGrpListProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object cds_PrdGrpListSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
    end
    object cds_PrdGrpListProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
    end
    object cds_PrdGrpListSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object cds_PrdGrpListNTI: TStringField
      FieldName = 'NTI'
      Origin = 'NTI'
    end
    object cds_PrdGrpListNBI: TStringField
      FieldName = 'NBI'
      Origin = 'NBI'
    end
  end
  object cds_CliProdList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select cpd.ClientProductDisplayText AS PRODUKT,'
      'cpd.LengthDescription AS L'#196'NGD,'
      'pc.PackageCodeno AS PKTKOD,'
      'p.ProductDisplayName AS INTPRODUKT,'
      'cpd.ClientNo,'
      'cpd.ProductNo,'
      'cpd.ProductGroupNo,'
      'cpd.ProductLengthNo,'
      'cpd.CustomThickness,'
      'cpd.CustomWidth,'
      'cpd.CustomLength,'
      'cpd.PcsPerPkg,'
      'cpd.PriceUnitNo,'
      'cpd.VolumeUnitNo,'
      'cpd.PackageTypeNo,'
      'cpd.ProdInstruNo,'
      'cpd.LengthTyp'
      ''
      'From dbo.ClientProductDescription cpd '
      'Inner Join dbo.Product p on p.ProductNo = cpd.ProductNo'
      
        'Left Outer Join dbo.PackageCode pc on pc.PackageTypeNo = cpd.pac' +
        'kagetypeno'
      ''
      'WHERE cpd.ClientNo = :ClientNo'
      ''
      'order by cpd.packagetypeno desc'
      '')
    Left = 440
    Top = 80
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_CliProdListPRODUKT: TStringField
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      Size = 100
    end
    object cds_CliProdListLÄNGD: TStringField
      FieldName = 'L'#196'NGD'
      Origin = '[L'#196'NGD]'
      FixedChar = True
      Size = 100
    end
    object cds_CliProdListPKTKOD: TStringField
      FieldName = 'PKTKOD'
      Origin = 'PKTKOD'
      FixedChar = True
      Size = 40
    end
    object cds_CliProdListINTPRODUKT: TStringField
      FieldName = 'INTPRODUKT'
      Origin = 'INTPRODUKT'
      Size = 150
    end
    object cds_CliProdListClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CliProdListProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CliProdListProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CliProdListProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CliProdListCustomThickness: TFloatField
      FieldName = 'CustomThickness'
      Origin = 'CustomThickness'
    end
    object cds_CliProdListCustomWidth: TFloatField
      FieldName = 'CustomWidth'
      Origin = 'CustomWidth'
    end
    object cds_CliProdListCustomLength: TFloatField
      FieldName = 'CustomLength'
      Origin = 'CustomLength'
    end
    object cds_CliProdListPcsPerPkg: TIntegerField
      FieldName = 'PcsPerPkg'
      Origin = 'PcsPerPkg'
    end
    object cds_CliProdListPriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
      Origin = 'PriceUnitNo'
    end
    object cds_CliProdListVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
    end
    object cds_CliProdListPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cds_CliProdListProdInstruNo: TIntegerField
      FieldName = 'ProdInstruNo'
      Origin = 'ProdInstruNo'
    end
    object cds_CliProdListLengthTyp: TStringField
      FieldName = 'LengthTyp'
      Origin = 'LengthTyp'
    end
  end
  object cds_ProdLengthRow: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT *  FROM dbo.ProductLengthGroup PLG'
      
        'Inner Join dbo.ProductLength PL ON PLG.ProductLengthNo = PL.Prod' +
        'uctLengthNo'
      '')
    Left = 528
    Top = 64
    object cds_ProdLengthRowGroupNo: TIntegerField
      FieldName = 'GroupNo'
      Origin = 'GroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdLengthRowProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdLengthRowCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProdLengthRowModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProdLengthRowDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ProdLengthRowProductLengthNo_1: TIntegerField
      FieldName = 'ProductLengthNo_1'
      Origin = 'ProductLengthNo'
      Required = True
    end
    object cds_ProdLengthRowActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object cds_ProdLengthRowNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
      Required = True
    end
    object cds_ProdLengthRowNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
      Origin = 'NominalLengthFEET'
    end
    object cds_ProdLengthRowActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Origin = 'ActualLengthINCH'
      FixedChar = True
      Size = 15
    end
    object cds_ProdLengthRowPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object cds_ProdLengthRowFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
    end
    object cds_ProdLengthRowCreatedUser_1: TIntegerField
      FieldName = 'CreatedUser_1'
      Origin = 'CreatedUser'
    end
    object cds_ProdLengthRowModifiedUser_1: TIntegerField
      FieldName = 'ModifiedUser_1'
      Origin = 'ModifiedUser'
    end
    object cds_ProdLengthRowDateCreated_1: TSQLTimeStampField
      FieldName = 'DateCreated_1'
      Origin = 'DateCreated'
    end
    object cds_ProdLengthRowSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_ProdLengthRowProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      Origin = 'ProductLengthGroupNo'
    end
    object cds_ProdLengthRowAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
  end
  object cds_PrdGrpLO: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select '
      'ProductGroupNo,'
      'ActualThicknessMM,'
      'ActualWidthMM,'
      'NominalThicknessMM,'
      'NominalWidthMM,'
      'NominalThicknessINCH,'
      'NominalWidthINCH'
      ' FROM dbo.ProductGroup'
      '')
    Left = 616
    Top = 88
    object cds_PrdGrpLOProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PrdGrpLOActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object cds_PrdGrpLOActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object cds_PrdGrpLONominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object cds_PrdGrpLONominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
    object cds_PrdGrpLONominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
    end
    object cds_PrdGrpLONominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
    end
  end
  object cds_Prod_Lengths: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct plg.GroupName, pl.*'
      'FROM dbo.ProductLength pl'
      
        'Left Outer Join ProductLengthGroupName plg on plg.GroupNo = pl.P' +
        'roductLengthGroupNo'
      ''
      '')
    Left = 712
    Top = 96
    object cds_Prod_LengthsGroupName: TStringField
      FieldName = 'GroupName'
      Origin = 'GroupName'
      FixedChar = True
    end
    object cds_Prod_LengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Prod_LengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object cds_Prod_LengthsNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
      Required = True
    end
    object cds_Prod_LengthsNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
      Origin = 'NominalLengthFEET'
    end
    object cds_Prod_LengthsActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Origin = 'ActualLengthINCH'
      FixedChar = True
      Size = 15
    end
    object cds_Prod_LengthsPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object cds_Prod_LengthsFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
    end
    object cds_Prod_LengthsCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_Prod_LengthsModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_Prod_LengthsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_Prod_LengthsSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_Prod_LengthsProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      Origin = 'ProductLengthGroupNo'
    end
    object cds_Prod_LengthsAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
  end
  object cds_ProdLengthGrp: TFDQuery
    AfterInsert = cds_ProdLengthGrpAfterInsert
    BeforePost = cds_ProdLengthGrpBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ProductLengthGroupName'
      '')
    Left = 816
    Top = 80
    object cds_ProdLengthGrpGroupNo: TIntegerField
      FieldName = 'GroupNo'
      Origin = 'GroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdLengthGrpGroupName: TStringField
      FieldName = 'GroupName'
      Origin = 'GroupName'
      FixedChar = True
    end
    object cds_ProdLengthGrpSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_ProdLengthGrpDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ProdLengthGrpCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProdLengthGrpModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProdLengthGrpChanged: TIntegerField
      FieldName = 'Changed'
      Origin = 'Changed'
    end
  end
  object cds_CSDLRow: TFDQuery
    AfterInsert = cds_CSDLRowAfterInsert
    BeforePost = cds_CSDLRowBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.CustomSalesDimListRows'
      'WHERE CustomSalesDimListNo = :CustomSalesDimListNo'
      '')
    Left = 912
    Top = 96
    ParamData = <
      item
        Name = 'CUSTOMSALESDIMLISTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_CSDLRowCustomSalesDimListNo: TIntegerField
      FieldName = 'CustomSalesDimListNo'
      Origin = 'CustomSalesDimListNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CSDLRowProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CSDLRowNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
    end
    object cds_CSDLRowNW: TFloatField
      FieldName = 'NW'
      Origin = 'NW'
    end
    object cds_CSDLRowDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_CSDLRowDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cds_CSDLRowCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_CSDLRowModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_CSDLRowNL: TFloatField
      FieldName = 'NL'
      Origin = 'NL'
    end
  end
  object cdsClient: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT C.ClientNo,     '
      '       C.ClientName,'
      ' C.SearchName'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      '  AND  R.RoleType = 9'
      ''
      'order by C.SearchName'
      '')
    Left = 984
    Top = 96
    object cdsClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cdsClientSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object cds_LengthRuleGrp: TFDQuery
    AfterInsert = cds_LengthRuleGrpAfterInsert
    BeforePost = cds_LengthRuleGrpBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.LengthRuleGrp'
      '')
    Left = 1080
    Top = 96
    object cds_LengthRuleGrpLengthRuleNo: TIntegerField
      FieldName = 'LengthRuleNo'
      Origin = 'LengthRuleNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LengthRuleGrpSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object cds_LengthRuleGrpMinNTmm: TFloatField
      FieldName = 'MinNTmm'
      Origin = 'MinNTmm'
    end
    object cds_LengthRuleGrpMaxNTmm: TFloatField
      FieldName = 'MaxNTmm'
      Origin = 'MaxNTmm'
    end
    object cds_LengthRuleGrpCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_LengthRuleGrpModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_LengthRuleGrpDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_LengthRuleGrpDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cds_LengthRuleGrpClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_LengthRuleGrpSetNo: TIntegerField
      FieldName = 'SetNo'
      Origin = 'SetNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LengthRuleGrpStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'UT'
      LookupKeyFields = 'SurfacingNo'
      LookupResultField = 'SurfacingName'
      KeyFields = 'SurfacingNo'
      Size = 30
      Lookup = True
    end
  end
  object cds_Species: TFDQuery
    AfterInsert = cds_SpeciesAfterInsert
    BeforePost = cds_SpeciesBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select S.*,'
      'CASE WHEN s.speciescode is null then'
      'S.speciesName'
      'ELSE'
      'S.speciescode+'#39' - '#39'+S.speciesName'
      'END AS SpeciesCodeName'
      ''
      'FROM dbo.Species S'
      ''
      'Order By S.speciescode, S.speciesName'
      '')
    Left = 24
    Top = 408
    object cds_SpeciesSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SpeciesSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object cds_SpeciesLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SpeciesSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_SpeciesCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_SpeciesModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_SpeciesDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_SpeciesAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_SpeciesSpeciesCode: TStringField
      FieldName = 'SpeciesCode'
      Origin = 'SpeciesCode'
      Size = 5
    end
    object cds_SpeciesSpeciesShortName: TStringField
      FieldName = 'SpeciesShortName'
      Origin = 'SpeciesShortName'
      Size = 10
    end
    object cds_SpeciesDKCode: TStringField
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
    object cds_SpeciesSpeciesCodeName: TStringField
      FieldName = 'SpeciesCodeName'
      Origin = 'SpeciesCodeName'
      ReadOnly = True
      Size = 38
    end
    object cds_SpeciesStringField: TStringField
      DisplayLabel = 'SPR'#197'K'
      FieldKind = fkLookup
      FieldName = 'SPRAK'
      LookupKeyFields = 'LanguageNo'
      LookupResultField = 'LanguageName'
      KeyFields = 'LanguageCode'
      Lookup = True
    end
  end
  object cds_grade: TFDQuery
    AfterInsert = cds_gradeAfterInsert
    BeforePost = cds_gradeBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select G.*,'
      ''
      'CASE WHEN g.gradecode is null then'
      'G.GradeName'
      'ELSE'
      'g.gradecode+'#39' - '#39'+G.GradeName'
      'END AS GradeCodeName'
      ''
      'FROM dbo.Grade G'
      ''
      'Order By g.gradecode, G.GradeName'
      '')
    Left = 88
    Top = 384
    object cds_gradeGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_gradeGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_gradeLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_gradeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_gradeCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_gradeModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_gradeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_gradeMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      Origin = 'MainGradeNo'
    end
    object cds_gradeAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_gradeGradeCode: TStringField
      FieldName = 'GradeCode'
      Origin = 'GradeCode'
      Size = 5
    end
    object cds_gradeDKCode: TStringField
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
    object cds_gradeGradeCodeName: TStringField
      FieldName = 'GradeCodeName'
      Origin = 'GradeCodeName'
      ReadOnly = True
      Size = 38
    end
    object cds_gradeStringField: TStringField
      DisplayLabel = 'SPR'#197'K'
      FieldKind = fkLookup
      FieldName = 'SPRAK'
      LookupKeyFields = 'LanguageNo'
      LookupResultField = 'LanguageName'
      KeyFields = 'LanguageCode'
      Lookup = True
    end
  end
  object cds_Surfacing: TFDQuery
    AfterInsert = cds_SurfacingAfterInsert
    BeforePost = cds_SurfacingBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select S.*,'
      'CASE WHEN s.Surfacingcode is null then'
      'S.SurfacingName'
      'ELSE'
      'S.Surfacingcode+'#39' - '#39'+S.SurfacingName'
      'END AS SurfacingCodeName'
      ''
      'FROM dbo.Surfacing S'
      ''
      'Order By S.Surfacingcode, S.SurfacingName'
      '')
    Left = 160
    Top = 408
    object cds_SurfacingSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SurfacingSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object cds_SurfacingLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SurfacingSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_SurfacingCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_SurfacingModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_SurfacingDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_SurfacingAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_SurfacingSurfacingCode: TStringField
      FieldName = 'SurfacingCode'
      Origin = 'SurfacingCode'
      Size = 5
    end
    object cds_SurfacingDKCode: TStringField
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
    object cds_SurfacingKortNamn: TStringField
      FieldName = 'KortNamn'
      Origin = 'KortNamn'
      Size = 5
    end
    object cds_SurfacingSurfacingCodeName: TStringField
      FieldName = 'SurfacingCodeName'
      Origin = 'SurfacingCodeName'
      ReadOnly = True
      Size = 38
    end
    object cds_SurfacingStringField: TStringField
      DisplayLabel = 'SPR'#197'K'
      FieldKind = fkLookup
      FieldName = 'SPRAK'
      LookupKeyFields = 'LanguageNo'
      LookupResultField = 'LanguageName'
      KeyFields = 'LanguageCode'
      ProviderFlags = []
      Lookup = True
    end
  end
  object cds_ProdCatg: TFDQuery
    AfterInsert = cds_ProdCatgAfterInsert
    BeforePost = cds_ProdCatgBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pc.*,'
      ''
      'CASE WHEN pc.ImpCode is null then'
      'pc.ProductCategoryName'
      'ELSE'
      'pc.ImpCode+'#39' - '#39'+pc.ProductCategoryName'
      'END AS ImpCodeName'
      ''
      'FROM dbo.ProductCategory pc'
      ''
      'Order By pc.ImpCode, pc.ProductCategoryName'
      ' '
      '')
    Left = 240
    Top = 384
    object cds_ProdCatgProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdCatgProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      Size = 40
    end
    object cds_ProdCatgProductCategoryExternalCode: TIntegerField
      FieldName = 'ProductCategoryExternalCode'
      Origin = 'ProductCategoryExternalCode'
    end
    object cds_ProdCatgSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_ProdCatgCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProdCatgModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProdCatgDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ProdCatgAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_ProdCatgImpCode: TStringField
      FieldName = 'ImpCode'
      Origin = 'ImpCode'
      Size = 5
    end
    object cds_ProdCatgImpregInProdName: TIntegerField
      FieldName = 'ImpregInProdName'
      Origin = 'ImpregInProdName'
    end
    object cds_ProdCatgLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdCatgDKCode: TStringField
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
    object cds_ProdCatgImpCodeName: TStringField
      FieldName = 'ImpCodeName'
      Origin = 'ImpCodeName'
      ReadOnly = True
      Size = 48
    end
  end
  object cds_IntPriceGrp: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.InteralPriceGroup'
      '')
    Left = 320
    Top = 408
    object cds_IntPriceGrpInteralPriceGroupNo: TIntegerField
      FieldName = 'InteralPriceGroupNo'
      Origin = 'InteralPriceGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_IntPriceGrpPriceGroupName: TStringField
      FieldName = 'PriceGroupName'
      Origin = 'PriceGroupName'
      Required = True
      Size = 30
    end
    object cds_IntPriceGrpSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_IntPriceGrpCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_IntPriceGrpModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_IntPriceGrpDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cds_ProdLo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select ProductGroupNo, ProductNo, ProductDisplayName FROM dbo.Pr' +
        'oduct'
      'WHERE ProductGroupNo = :ProductGroupNo'
      '')
    Left = 384
    Top = 384
    ParamData = <
      item
        Name = 'PRODUCTGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProdLoProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object cds_ProdLoProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdLoProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
  end
  object cds_PL: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT Distinct'
      'plg.GroupName,'
      'pl.ProductLengthNo AS LNO,'
      'PL.ActualLengthMM AS AMM,'
      'PL.NominalLengthMM AS NMM,'
      'pl.NominalLengthFEET AS FOT,'
      'pl.ActualLengthINCH AS TUM,'
      'pl.PET,'
      'pl.FingerJoint AS FJ,'
      'CASE WHEN pl.ProductLengthNo IN'
      '(SELECT ProductLengthNo FROM dbo.ProductGroupLengths'
      'WHERE ProductGroupNo = :ProductGroupNo) THEN 0'
      'ELSE 1 END GL'
      ''
      'FROM dbo.ProductLength pl'
      
        'Left Outer Join ProductLengthGroupName plg on plg.GroupNo = pl.P' +
        'roductLengthGroupNo'
      ''
      'WHERE pl.act = 1'
      ''
      'ORDER BY GL, PL.ActualLengthMM'
      ''
      '')
    Left = 440
    Top = 408
    ParamData = <
      item
        Name = 'PRODUCTGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PLGroupName: TStringField
      FieldName = 'GroupName'
      Origin = 'GroupName'
      FixedChar = True
    end
    object cds_PLLNO: TIntegerField
      FieldName = 'LNO'
      Origin = 'LNO'
      Required = True
    end
    object cds_PLAMM: TFloatField
      FieldName = 'AMM'
      Origin = 'AMM'
      Required = True
    end
    object cds_PLNMM: TFloatField
      FieldName = 'NMM'
      Origin = 'NMM'
      Required = True
    end
    object cds_PLFOT: TFloatField
      FieldName = 'FOT'
      Origin = 'FOT'
    end
    object cds_PLTUM: TStringField
      FieldName = 'TUM'
      Origin = 'TUM'
      FixedChar = True
      Size = 15
    end
    object cds_PLPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object cds_PLFJ: TIntegerField
      FieldName = 'FJ'
      Origin = 'FJ'
    end
    object cds_PLGL: TIntegerField
      FieldName = 'GL'
      Origin = 'GL'
      ReadOnly = True
      Required = True
    end
  end
  object cds_CSDL: TFDQuery
    AfterInsert = cds_CSDLAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.CustomSalesDimListGrp'
      '')
    Left = 496
    Top = 384
    object cds_CSDLCustomSalesDimListNo: TIntegerField
      FieldName = 'CustomSalesDimListNo'
      Origin = 'CustomSalesDimListNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CSDLCustomSalesDimListName: TStringField
      FieldName = 'CustomSalesDimListName'
      Origin = 'CustomSalesDimListName'
      Required = True
      Size = 50
    end
    object cds_CSDLDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_CSDLCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
  end
  object cds_ProductLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ProductLength'
      'Order by ActualLengthMM'
      '')
    Left = 576
    Top = 400
    object cds_ProductLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductLengthActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object cds_ProductLengthNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
      Required = True
    end
    object cds_ProductLengthNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
      Origin = 'NominalLengthFEET'
    end
    object cds_ProductLengthActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Origin = 'ActualLengthINCH'
      FixedChar = True
      Size = 15
    end
    object cds_ProductLengthPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object cds_ProductLengthFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
    end
    object cds_ProductLengthCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProductLengthModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProductLengthDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ProductLengthSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_ProductLengthProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      Origin = 'ProductLengthGroupNo'
    end
    object cds_ProductLengthAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_ProductLengthStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'LG'
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'ProductLengthGroupNo'
      Lookup = True
    end
  end
  object cds_PkgCode: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select Distinct PC.PkgCodePPNo, PC.PackageTypeNo, PC.packagecode' +
        'no, PC.MarketRegionNo'
      'FROM dbo.PkgVarCode PC'
      
        'Inner Join dbo.PackageType PT ON PT.PackageTypeNo = PC.PackageTy' +
        'peNo'
      'Inner Join dbo.Product P ON P.ProductNo = PT.ProductNo'
      
        'Inner Join dbo.ProductGroup PG ON PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      ''
      'INNER JOIN      dbo.Grade gd ON gd.GradeNo = p.GradeNo'
      'AND gd.LanguageCode = 1'
      'INNER JOIN      dbo.Species sc ON sc.SpeciesNo = pg.SpeciesNo'
      'AND sc.LanguageCode = 1'
      
        'INNER JOIN      dbo.Surfacing sf ON sf.SurfacingNo = pg.Surfacin' +
        'gNo'
      'AND sf.LanguageCode = 1'
      
        'LEFT OUTER JOIN      dbo.GradeStamp gs ON gs.GradeStampNo = pt.G' +
        'radeStamp'
      
        'LEFT OUTER JOIN      dbo.BarCode bc ON bc.BarCodeNo = pt.BarCode' +
        'ID'
      ''
      
        ' WHERE p.Act = 1 AND pg.Act = 1 AND sc.Act = 1 AND sf.Act = 1 AN' +
        'D gd.Act = 1 AND '
      '(gs.Act = 1 or gs.Act is null) '
      'AND (bc.Act = 1 or bc.Act is null)'
      '')
    Left = 672
    Top = 400
    object cds_PkgCodePkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgCodePackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cds_PkgCodepackagecodeno: TStringField
      FieldName = 'packagecodeno'
      Origin = 'packagecodeno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cds_PkgCodeMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
  end
  object cds_LinkProd: TFDQuery
    MasterSource = ds_Products
    MasterFields = 'ProductNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.AvrALOProdCopy'
      'WHERE AvrProductNo = :ProductNo'
      '')
    Left = 752
    Top = 400
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LinkProdAvrProductNo: TIntegerField
      FieldName = 'AvrProductNo'
      Origin = 'AvrProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LinkProdALOProductNo: TIntegerField
      FieldName = 'ALOProductNo'
      Origin = 'ALOProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LinkProdStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'Product'
      LookupKeyFields = 'ProductNo'
      LookupResultField = 'ProductDisplayName'
      KeyFields = 'ALOProductNo'
      Size = 100
      Lookup = True
    end
  end
  object cds_intPrice: TFDQuery
    AfterInsert = cds_intPriceAfterInsert
    BeforePost = cds_intPriceBeforePost
    MasterSource = ds_IntPriceGrp
    MasterFields = 'InteralPriceGroupNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.InteralPrice'
      'Where InteralPriceGroupNo = :InteralPriceGroupNo'
      '')
    Left = 824
    Top = 384
    ParamData = <
      item
        Name = 'INTERALPRICEGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_intPriceINTERNVERK: TStringField
      FieldKind = fkLookup
      FieldName = 'INTERNVERK'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SawmillNo'
      Size = 80
      Lookup = True
    end
    object cds_intPriceInteralPriceGroupNo: TIntegerField
      FieldName = 'InteralPriceGroupNo'
      Origin = 'InteralPriceGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_intPriceSawmillNo: TIntegerField
      FieldName = 'SawmillNo'
      Origin = 'SawmillNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_intPricePrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
    end
    object cds_intPriceCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_intPriceModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_intPriceDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cds_StatCode: TFDQuery
    AfterInsert = cds_StatCodeAfterInsert
    BeforePost = cds_StatCodeBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.StatCode'
      '')
    Left = 904
    Top = 400
    object cds_StatCodeStatCodeNo: TIntegerField
      FieldName = 'StatCodeNo'
      Origin = 'StatCodeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_StatCodeStatCodeName: TStringField
      FieldName = 'StatCodeName'
      Origin = 'StatCodeName'
      FixedChar = True
      Size = 40
    end
    object cds_StatCodeStatCode: TStringField
      FieldName = 'StatCode'
      Origin = 'StatCode'
      FixedChar = True
      Size = 10
    end
    object cds_StatCodeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_StatCodeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_StatCodeCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_StatCodeModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
  end
  object cds_ProdListCust: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT CSDLR.NT, CSDLR.NW, pd.ProductNo, pg.ProductGroupNo, gd.G' +
        'radeName,'
      'sc.SpeciesName, sf.SurfacingName, pc.ProductCategoryName,'
      
        'pg.ActualThicknessMM, pg.ActualWidthMM, pg.NominalThicknessMM, p' +
        'g.NominalWidthMM,'
      
        'pd.ProductDisplayName, pd.GradeNo, pg.SpeciesNo, pg.ProductCateg' +
        'oryNo,'
      'pg.SurfacingNo, pg.NominalThicknessINCH, pg.NominalWidthINCH'
      'FROM dbo.Product pd'
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo'
      ''
      'INNER JOIN dbo.Users usr on usr.userid = 8'
      
        'INNER JOIN dbo.CustomSalesDimListRows CSDLR on CSDLR.ProductGrou' +
        'pNo = pg.ProductGroupNo'
      'AND CSDLR.CustomSalesDimListNo = usr.CustomSalesDimListNo'
      ''
      ''
      'INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo'
      'AND gd.LanguageCode = :LanguageCode'
      
        'INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      'AND sc.LanguageCode = :LanguageCode'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      'AND sf.LanguageCode = :LanguageCode'
      'WHERE '
      '((pd.ProductNo = :ProductNo) OR (0 = :ProductNo))'
      '')
    Left = 984
    Top = 384
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProdListCustProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object cds_ProdListCustProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object cds_ProdListCustGradeName: TStringField
      FieldName = 'GradeName'
      Size = 30
    end
    object cds_ProdListCustSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Size = 30
    end
    object cds_ProdListCustSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Size = 30
    end
    object cds_ProdListCustProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
    end
    object cds_ProdListCustActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
    end
    object cds_ProdListCustActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
    end
    object cds_ProdListCustNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
    end
    object cds_ProdListCustNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
    end
    object cds_ProdListCustProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Size = 100
    end
    object cds_ProdListCustGradeNo: TIntegerField
      FieldName = 'GradeNo'
    end
    object cds_ProdListCustSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object cds_ProdListCustProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
    end
    object cds_ProdListCustSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object cds_ProdListCustNominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
    end
    object cds_ProdListCustNominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
    end
    object cds_ProdListCustNT: TFloatField
      FieldName = 'NT'
    end
    object cds_ProdListCustNW: TFloatField
      FieldName = 'NW'
    end
  end
  object cds_LengthRuleRow: TFDQuery
    AfterInsert = cds_LengthRuleRowAfterInsert
    BeforePost = cds_LengthRuleRowBeforePost
    MasterSource = ds_LengthRuleGrp
    MasterFields = 'LengthRuleNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.LengthRuleRow'
      'WHERE LengthRuleNo = :LengthRuleNo'
      '')
    Left = 1088
    Top = 400
    ParamData = <
      item
        Name = 'LENGTHRULENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LengthRuleRowLengthRuleNo: TIntegerField
      FieldName = 'LengthRuleNo'
      Origin = 'LengthRuleNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LengthRuleRowMinActLength: TFloatField
      FieldName = 'MinActLength'
      Origin = 'MinActLength'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LengthRuleRowMaxActLength: TFloatField
      FieldName = 'MaxActLength'
      Origin = 'MaxActLength'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LengthRuleRowNomLength: TFloatField
      FieldName = 'NomLength'
      Origin = 'NomLength'
    end
    object cds_LengthRuleRowCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_LengthRuleRowModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_LengthRuleRowDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_LengthRuleRowDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cds_LengthRuleRowSetNo: TIntegerField
      FieldName = 'SetNo'
      Origin = 'SetNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_gradeII: TFDQuery
    AfterInsert = cds_gradeIIAfterInsert
    BeforePost = cds_gradeIIBeforePost
    OnPostError = cds_gradeIIPostError
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.Grade'
      '')
    Left = 72
    Top = 560
    object cds_gradeIIGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_gradeIIGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_gradeIILanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_gradeIISequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_gradeIICreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_gradeIIModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_gradeIIDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_gradeIIMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      Origin = 'MainGradeNo'
    end
    object cds_gradeIIAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_gradeIIGradeCode: TStringField
      FieldName = 'GradeCode'
      Origin = 'GradeCode'
      Size = 5
    end
    object cds_gradeIIDKCode: TStringField
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
  end
  object cds_SurfacingII: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.Surfacing'
      '')
    Left = 208
    Top = 568
    object cds_SurfacingIISurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SurfacingIISurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object cds_SurfacingIILanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SurfacingIISequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_SurfacingIICreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_SurfacingIIModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_SurfacingIIDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_SurfacingIIAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_SurfacingIISurfacingCode: TStringField
      FieldName = 'SurfacingCode'
      Origin = 'SurfacingCode'
      Size = 5
    end
    object cds_SurfacingIIDKCode: TStringField
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
    object cds_SurfacingIIKortNamn: TStringField
      FieldName = 'KortNamn'
      Origin = 'KortNamn'
      Size = 5
    end
    object cds_SurfacingIIStringField: TStringField
      DisplayLabel = 'SPR'#197'K'
      FieldKind = fkLookup
      FieldName = 'SPRAK'
      LookupKeyFields = 'LanguageNo'
      LookupResultField = 'LanguageName'
      KeyFields = 'LanguageCode'
      ProviderFlags = []
      Lookup = True
    end
  end
  object cds_SpeciesII: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.Species'
      '')
    Left = 360
    Top = 568
    object cds_SpeciesIISpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SpeciesIISpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object cds_SpeciesIILanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SpeciesIISequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_SpeciesIICreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_SpeciesIIModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_SpeciesIIDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_SpeciesIIAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_SpeciesIISpeciesCode: TStringField
      FieldName = 'SpeciesCode'
      Origin = 'SpeciesCode'
      Size = 5
    end
    object cds_SpeciesIISpeciesShortName: TStringField
      FieldName = 'SpeciesShortName'
      Origin = 'SpeciesShortName'
      Size = 10
    end
    object cds_SpeciesIIDKCode: TStringField
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
    object cds_SpeciesIIStringField: TStringField
      DisplayLabel = 'SPR'#197'K'
      FieldKind = fkLookup
      FieldName = 'SPRAK'
      LookupKeyFields = 'LanguageNo'
      LookupResultField = 'LanguageName'
      KeyFields = 'LanguageCode'
      Lookup = True
    end
  end
  object cds_Lengths: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select distinct plg.GroupName, pl.*, productgroupno FROM dbo.Pro' +
        'ductLength pl'
      
        'Inner join  dbo.ProductGroupLengths pgl on pl.productlengthno = ' +
        'pgl.productlengthno'
      
        'Left Outer Join ProductLengthGroupName plg on plg.GroupNo = pl.P' +
        'roductLengthGroupNo'
      'Where productgroupno = :productgroupno'
      ''
      'Union'
      ''
      'Select distinct plg.GroupName, pl.*, 0 FROM dbo.ProductLength pl'
      
        'Left Outer Join ProductLengthGroupName plg on plg.GroupNo = pl.P' +
        'roductLengthGroupNo'
      'order by actuallengthmm'
      ''
      '')
    Left = 528
    Top = 232
    ParamData = <
      item
        Name = 'PRODUCTGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LengthsGroupName: TStringField
      FieldName = 'GroupName'
      Origin = 'GroupName'
      ReadOnly = True
      FixedChar = True
    end
    object cds_LengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object cds_LengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      ReadOnly = True
      Required = True
    end
    object cds_LengthsNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
      ReadOnly = True
      Required = True
    end
    object cds_LengthsNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
      Origin = 'NominalLengthFEET'
      ReadOnly = True
    end
    object cds_LengthsActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Origin = 'ActualLengthINCH'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object cds_LengthsPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
      ReadOnly = True
    end
    object cds_LengthsFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
      ReadOnly = True
    end
    object cds_LengthsCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ReadOnly = True
    end
    object cds_LengthsModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ReadOnly = True
    end
    object cds_LengthsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ReadOnly = True
    end
    object cds_LengthsSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ReadOnly = True
    end
    object cds_LengthsProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      Origin = 'ProductLengthGroupNo'
      ReadOnly = True
    end
    object cds_LengthsAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
      ReadOnly = True
    end
    object cds_Lengthsproductgroupno: TIntegerField
      FieldName = 'productgroupno'
      Origin = 'productgroupno'
      ReadOnly = True
      Required = True
    end
  end
  object sq_ProductGroupLengths: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ProductGroupLengths'
      'WHERE ProductGroupNo = :ProductGroupNo'
      ''
      '')
    Left = 312
    Top = 8
    ParamData = <
      item
        Name = 'PRODUCTGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_ProductGroupLengthsProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_ProductGroupLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_ProductGroupLengthsCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object sq_ProductGroupLengthsModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object sq_ProductGroupLengthsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object sq_LengExist: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select productLengthNo FROM dbo.ProductLength'
      'WHERE ActualLengthMM = :ALMM'
      'AND NominalLengthMM = :NLMM'
      'AND PET = :PET'
      'AND FingerJoint = :FJ'
      'AND ProductLengthGroupNo = :ProductLengthGroupNo'
      'AND ProductLengthNo <> :ProductLengthNo'
      ''
      ''
      '')
    Left = 400
    Top = 232
    ParamData = <
      item
        Name = 'ALMM'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'NLMM'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'PET'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FJ'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTLENGTHGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTLENGTHNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LengExistproductLengthNo: TIntegerField
      FieldName = 'productLengthNo'
      Origin = 'productLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetPkgTypeByCode: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select p.ProductGroupNo, p.ProductNo, '
      'pt.PackageTypeNo, '
      'ptd.ProductLengthNo,'
      'pt.BarCodeID,'
      'pt.GradeStamp,'
      'pt.PackageHeight,'
      'pt.PackageWidth,'
      'pt.MiniBundled,'
      'pt.WrapType,'
      'pt.ShrinkWrap,'
      'pt.TotalNoOfPieces,'
      'pc.PkgCodePPNo'
      ''
      ' FROM '
      'dbo.PkgVarCode pc'
      
        'Inner Join dbo.PackageType pt on pc.PackageTypeNo = pt.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeDetail ptd on pc.PackageTypeNo = ptd.P' +
        'ackageTypeNo'
      'Inner Join dbo.Product p on p.productno = pt.productno'
      'WHERE pc.PackageCodeNo = :PackageCode'
      '')
    Left = 280
    Top = 312
    ParamData = <
      item
        Name = 'PACKAGECODE'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetPkgTypeByCodeProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object sq_GetPkgTypeByCodeProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object sq_GetPkgTypeByCodePackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      Required = True
    end
    object sq_GetPkgTypeByCodeProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      Required = True
    end
    object sq_GetPkgTypeByCodeBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
    end
    object sq_GetPkgTypeByCodeGradeStamp: TIntegerField
      FieldName = 'GradeStamp'
      Origin = 'GradeStamp'
    end
    object sq_GetPkgTypeByCodePackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
    end
    object sq_GetPkgTypeByCodePackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
    end
    object sq_GetPkgTypeByCodeMiniBundled: TIntegerField
      FieldName = 'MiniBundled'
      Origin = 'MiniBundled'
    end
    object sq_GetPkgTypeByCodeWrapType: TIntegerField
      FieldName = 'WrapType'
      Origin = 'WrapType'
    end
    object sq_GetPkgTypeByCodeShrinkWrap: TIntegerField
      FieldName = 'ShrinkWrap'
      Origin = 'ShrinkWrap'
    end
    object sq_GetPkgTypeByCodeTotalNoOfPieces: TIntegerField
      FieldName = 'TotalNoOfPieces'
      Origin = 'TotalNoOfPieces'
    end
    object sq_GetPkgTypeByCodePkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetPkgType: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select p.ProductGroupNo, pt.ProductNo FROM dbo.PackageType pt'
      'Inner Join dbo.Product p on p.productno = pt.productno'
      'WHERE pt.PackageTypeNo = :PackageTypeNo'
      '')
    Left = 224
    Top = 232
    ParamData = <
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPkgTypeProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object sq_GetPkgTypeProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
  end
  object sq_GetPkgAttrPkgTypeNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select p.ProductGroupNo, p.ProductNo, '
      'pt.PackageTypeNo, '
      'ptd.ProductLengthNo,'
      'pt.BarCodeID,'
      'pt.GradeStamp,'
      'pt.PackageHeight,'
      'pt.PackageWidth,'
      'pt.MiniBundled,'
      'pt.WrapType,'
      'pt.ShrinkWrap,'
      'pt.TotalNoOfPieces'
      ''
      ' FROM '
      'dbo.PkgVarcode pc '
      
        'Inner Join dbo.PackageType pt on pc.PackageTypeNo = pt.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeDetail ptd on pc.PackageTypeNo = ptd.P' +
        'ackageTypeNo'
      'Inner Join dbo.Product p on p.productno = pt.productno'
      'WHERE pc.PackageTypeNo = :PackageTypeNo'
      '')
    Left = 112
    Top = 288
    ParamData = <
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPkgAttrPkgTypeNoProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object sq_GetPkgAttrPkgTypeNoProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object sq_GetPkgAttrPkgTypeNoPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      Required = True
    end
    object sq_GetPkgAttrPkgTypeNoProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      Required = True
    end
    object sq_GetPkgAttrPkgTypeNoBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
    end
    object sq_GetPkgAttrPkgTypeNoGradeStamp: TIntegerField
      FieldName = 'GradeStamp'
      Origin = 'GradeStamp'
    end
    object sq_GetPkgAttrPkgTypeNoPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
    end
    object sq_GetPkgAttrPkgTypeNoPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
    end
    object sq_GetPkgAttrPkgTypeNoMiniBundled: TIntegerField
      FieldName = 'MiniBundled'
      Origin = 'MiniBundled'
    end
    object sq_GetPkgAttrPkgTypeNoWrapType: TIntegerField
      FieldName = 'WrapType'
      Origin = 'WrapType'
    end
    object sq_GetPkgAttrPkgTypeNoShrinkWrap: TIntegerField
      FieldName = 'ShrinkWrap'
      Origin = 'ShrinkWrap'
    end
    object sq_GetPkgAttrPkgTypeNoTotalNoOfPieces: TIntegerField
      FieldName = 'TotalNoOfPieces'
      Origin = 'TotalNoOfPieces'
    end
  end
  object sq_GetPkgTypeByVariantNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select p.ProductGroupNo, p.ProductNo, '
      'pt.PackageTypeNo, '
      'ptd.ProductLengthNo,'
      'pt.BarCodeID,'
      'pt.GradeStamp,'
      'pt.PackageHeight,'
      'pt.PackageWidth,'
      'pt.MiniBundled,'
      'pt.WrapType,'
      'pt.ShrinkWrap,'
      'pt.TotalNoOfPieces,'
      'pc.PackageCodeNo'
      ''
      ' FROM'
      'dbo.Packagecode_printparams pp'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pp.PackageTy' +
        'peNo'
      'Inner Join dbo.PkgVarcode pc on pc.PkgCodePPNo = pp.PkgCodePPNo'
      
        'Inner Join dbo.PackageTypeDetail ptd on pc.PackageTypeNo = ptd.P' +
        'ackageTypeNo'
      'Inner Join dbo.Product p on p.productno = pt.productno'
      'WHERE pp.PkgCodePPNo = :PkgCodePPNo'
      'AND MarketRegionNo = :MarketRegionNo'
      '')
    Left = 696
    Top = 576
    ParamData = <
      item
        Name = 'PKGCODEPPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'MARKETREGIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPkgTypeByVariantNoProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object sq_GetPkgTypeByVariantNoProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object sq_GetPkgTypeByVariantNoPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      Required = True
    end
    object sq_GetPkgTypeByVariantNoProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      Required = True
    end
    object sq_GetPkgTypeByVariantNoBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
    end
    object sq_GetPkgTypeByVariantNoGradeStamp: TIntegerField
      FieldName = 'GradeStamp'
      Origin = 'GradeStamp'
    end
    object sq_GetPkgTypeByVariantNoPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
    end
    object sq_GetPkgTypeByVariantNoPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
    end
    object sq_GetPkgTypeByVariantNoMiniBundled: TIntegerField
      FieldName = 'MiniBundled'
      Origin = 'MiniBundled'
    end
    object sq_GetPkgTypeByVariantNoWrapType: TIntegerField
      FieldName = 'WrapType'
      Origin = 'WrapType'
    end
    object sq_GetPkgTypeByVariantNoShrinkWrap: TIntegerField
      FieldName = 'ShrinkWrap'
      Origin = 'ShrinkWrap'
    end
    object sq_GetPkgTypeByVariantNoTotalNoOfPieces: TIntegerField
      FieldName = 'TotalNoOfPieces'
      Origin = 'TotalNoOfPieces'
    end
    object sq_GetPkgTypeByVariantNoPackageCodeNo: TStringField
      FieldName = 'PackageCodeNo'
      Origin = 'PackageCodeNo'
      Required = True
      Size = 40
    end
  end
  object sq_DeActProd: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.product'
      'Set Act = G.Act'
      'FROM dbo.product'
      'Inner Join dbo.Grade G ON G.GradeNo = product.GradeNo'
      'where G.LanguageCode = 1'
      '')
    Left = 544
    Top = 568
  end
  object mtFilter: TkbmMemTable
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
    Left = 1088
    Top = 224
    object mtFilterClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object mtFilterVERK: TStringField
      FieldKind = fkLookup
      FieldName = 'VERK'
      LookupDataSet = cdsClient
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'SearchName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
  end
end
