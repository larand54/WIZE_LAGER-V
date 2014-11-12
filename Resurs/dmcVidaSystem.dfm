object dmcSystem: TdmcSystem
  OldCreateOrder = False
  Left = 318
  Top = 115
  Height = 591
  Width = 948
  object cdsBarCodes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 16
    object cdsBarCodesBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
    end
    object cdsBarCodesBarCode: TStringField
      FieldName = 'BarCode'
    end
    object cdsBarCodesAct: TIntegerField
      FieldName = 'Act'
    end
  end
  object dsrcBarCodes: TDataSource
    DataSet = cdsBarCodes
    Left = 56
    Top = 64
  end
  object cdsGradeStamps: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 176
    Top = 16
    object cdsGradeStampsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object cdsGradeStampsGradeStamp: TStringField
      FieldName = 'GradeStamp'
    end
    object cdsGradeStampsAct: TIntegerField
      FieldName = 'Act'
    end
  end
  object dsrcGradeStamps: TDataSource
    DataSet = cdsGradeStamps
    Left = 176
    Top = 64
  end
  object cdsPaperWraps: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 16
    object cdsPaperWrapsWrapTypeNo: TIntegerField
      FieldName = 'WrapTypeNo'
    end
    object cdsPaperWrapsWrapType: TStringField
      FieldName = 'WrapType'
      Size = 15
    end
  end
  object dsrcPaperWraps: TDataSource
    DataSet = cdsPaperWraps
    Left = 304
    Top = 64
  end
  object cdsPhysInventory: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 152
    object cdsPhysInventoryPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
    end
    object cdsPhysInventoryCityName: TStringField
      FieldName = 'CityName'
      Size = 50
    end
    object cdsPhysInventoryPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
    end
  end
  object dsrcPhysInventory: TDataSource
    DataSet = cdsPhysInventory
    Left = 56
    Top = 200
  end
  object cdsLogInventory: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    Left = 192
    Top = 152
    object cdsLogInventoryLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object cdsLogInventoryLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Size = 50
    end
    object cdsLogInventoryPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
    end
  end
  object dsrcLogicalInventory: TDataSource
    DataSet = cdsLogInventory
    Left = 192
    Top = 200
  end
  object sq_Products: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT pd.ProductNo, pg.ProductGroupNo, gd.GradeName,'
      '      sc.SpeciesName, sf.SurfacingName, pc.ProductCategoryName, '
      
        #9'pg.ActualThicknessMM, pg.ActualWidthMM, pg.NominalThicknessMM, ' +
        'pg.NominalWidthMM,'
      
        '      pd.ProductDisplayName, pd.GradeNo, pg.SpeciesNo, pg.Produc' +
        'tCategoryNo, '
      
        '      pg.SurfacingNo, pg.NominalThicknessINCH, pg.NominalWidthIN' +
        'CH'
      'FROM dbo.Product pd '
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo '
      'INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo '
      #9#9#9#9'AND gd.LanguageCode = 1'
      ''
      
        'INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      #9#9#9#9'AND pc.LanguageCode = 1'
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      #9#9#9#9'AND sc.LanguageCode = 1'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo '
      #9#9#9#9'AND sf.LanguageCode = 1'
      'WHERE pd.Act = 1'
      'AND  pg.Act = 1'
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 412
    Top = 16
  end
  object dsp_Products: TDataSetProvider
    DataSet = sq_Products
    Left = 412
    Top = 64
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
        Name = 'ActualThicknessMM'
        DataType = ftFloat
      end
      item
        Name = 'ActualWidthMM'
        DataType = ftFloat
      end
      item
        Name = 'NominalThicknessMM'
        DataType = ftFloat
      end
      item
        Name = 'NominalWidthMM'
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
      end
      item
        Name = 'NominalThicknessINCH'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NominalWidthINCH'
        DataType = ftString
        Size = 20
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
    Left = 412
    Top = 112
    object cds_ProductsProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object cds_ProductsProductDisplayName: TStringField
      DisplayLabel = 'Beskrivning'
      FieldName = 'ProductDisplayName'
      Size = 100
    end
    object cds_ProductsActualWidthMM: TFloatField
      DisplayLabel = 'AB'
      FieldName = 'ActualWidthMM'
    end
    object cds_ProductsActualThicknessMM: TFloatField
      DisplayLabel = 'AT'
      FieldName = 'ActualThicknessMM'
    end
    object cds_ProductsProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object cds_ProductsNominalThicknessMM: TFloatField
      DisplayLabel = 'NT'
      FieldName = 'NominalThicknessMM'
    end
    object cds_ProductsNominalWidthMM: TFloatField
      DisplayLabel = 'NB'
      FieldName = 'NominalWidthMM'
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
    object cds_ProductsNominalThicknessINCH: TStringField
      DisplayLabel = 'TT'
      FieldName = 'NominalThicknessINCH'
    end
    object cds_ProductsNominalWidthINCH: TStringField
      DisplayLabel = 'TB'
      FieldName = 'NominalWidthINCH'
    end
  end
  object ds_Products: TDataSource
    DataSet = cds_Products
    Left = 412
    Top = 160
  end
  object sq_LengthGroup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT GroupNo, GroupName '
      'FROM dbo.ProductLengthGroupName '
      'ORDER BY GroupName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 496
    Top = 16
    object sq_LengthGroupGroupNo: TIntegerField
      FieldName = 'GroupNo'
    end
    object sq_LengthGroupGroupName: TStringField
      FieldName = 'GroupName'
    end
  end
  object sq_RegPoint: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT PU.ProductionUnitNo, RP.RegPointName AS ProductionUnitNam' +
        'e,'
      'PU.RegistrationPointNo'
      'FROM dbo.ProductionUnit PU'
      
        'Inner Join dbo.RegistrationPoint RP ON RP.RegPointNo = PU.Regist' +
        'rationPointNo'
      'WHERE'
      ' PU.ClientNo = :ClientNo'
      'ORDER BY RP.RegPointName'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 496
    Top = 72
    object sq_RegPointProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
    end
    object sq_RegPointProductionUnitName: TStringField
      FieldName = 'ProductionUnitName'
      Size = 50
    end
    object sq_RegPointRegistrationPointNo: TIntegerField
      FieldName = 'RegistrationPointNo'
    end
  end
  object sq_PkgType_InvoiceByCSD: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete dbo.PkgType_Invoice'
      'WHERE LoadNo = :LoadNo'
      'AND InternalInvoiceNo = -1'
      ''
      'Insert into dbo.PkgType_Invoice'
      '(PackageTypeNo,'
      'ProductLengthNo,'
      'InternalInvoiceNo,'
      'LoadNo,'
      'LoadDetailNo,'
      'NoOfPieces,'
      'm3Actual,'
      'm3Nominal,'
      'MFBMNominal,'
      'SQMofActualWidth,'
      'SQMofCoveringWidth,'
      'LinealMeterActualLength,'
      'm3ActualSizeNomLength,'
      'm3NomSizeActualLength,'
      'CreatedUser,'
      'ModifiedUser,'
      'DateCreated,'
      'LinealMeterNominalLength)'
      ''
      ''
      'SELECT DISTINCT'
      'LD.PackageTypeNo,'
      'PTD.ProductLengthNo,'
      '-1,'
      'LD.LoadNo,'
      'LD.LoadDetailNo,'
      'PTD.NoOfPieces ,'
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) AS M3Actual,'
      ''
      '-- M3NOMINAL *****************************************'
      'CASE '
      '-- Random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      'END'
      'AS M3NOMINAL,'
      ''
      
        'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3) AS M' +
        'FBMNominal,'
      
        'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)' +
        ' AS SQMofActualWidth,'
      'PTD.SQMofCoveringWidth,'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3) AS LinealMeterActualLength,'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3) '
      ''
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'END AS m3ActualSizeNomLength,'
      ''
      
        '-- m3NomSizeActualLength ***************************************' +
        '******'
      'ROUND(CAST('
      '(PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)'
      ' As decimal(10,3)),3) AS m3NomSizeActualLength,'
      ''
      'PTD.CreatedUser,'
      'PTD.ModifiedUser,'
      'PTD.DateCreated,'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'CASE '
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000)) As decima' +
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      'END AS NM1'
      ''
      ''
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.LoadDetail LD'#9#9#9'ON'#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail'#9'PTD '#9'ON PTD.PackageTypeNo = LD.' +
        'PackageTypeNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD2 ON CSD2.CustShip' +
        'PlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      
        'Inner JOIN dbo.ProductLength PL_CSD ON PL_CSD.ProductLengthNo = ' +
        'CSD2.ProductLengthNo'
      
        'INNER JOIN dbo.OrderLine OL ON OL.OrderLineNo = CSD2.OrderLineNo' +
        ' AND OL.OrderNo = CSD2.OrderNo'
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      
        'INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = OL.Product' +
        'GroupNo'
      ''
      'WHERE'
      'LO.LoadNo = :LoadNo'
      ' '
      ' '
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 616
    Top = 16
  end
  object sp_PkgProd_Rep: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end
      item
        DataType = ftTimeStamp
        Name = 'StartDate'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EndDate'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductionUnitNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_PkgProd_Rep'
    Left = 56
    Top = 272
  end
  object dsp_PkgProd_Rep: TDataSetProvider
    DataSet = sp_PkgProd_Rep
    Left = 56
    Top = 320
  end
  object cds_PkgProd_Rep: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PkgProd_Rep'
    Left = 56
    Top = 368
    object cds_PkgProd_RepUNIQUEKEY: TStringField
      FieldName = 'UNIQUEKEY'
      Required = True
      Size = 60
    end
    object cds_PkgProd_RepProductionDate: TSQLTimeStampField
      FieldName = 'ProductionDate'
      Required = True
    end
    object cds_PkgProd_RepClientName: TStringField
      FieldName = 'ClientName'
      Required = True
      Size = 80
    end
    object cds_PkgProd_RepPROD_UNIT: TStringField
      FieldName = 'PROD_UNIT'
      Required = True
      Size = 50
    end
    object cds_PkgProd_RepSTD_Length: TIntegerField
      FieldName = 'STD_Length'
      Required = True
    end
    object cds_PkgProd_RepINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Required = True
      Size = 103
    end
    object cds_PkgProd_RepPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Required = True
      Size = 100
    end
    object cds_PkgProd_RepPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      Required = True
    end
    object cds_PkgProd_RepSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Required = True
      Size = 3
    end
    object cds_PkgProd_RepACT_THICK: TFloatField
      FieldName = 'ACT_THICK'
      Required = True
    end
    object cds_PkgProd_RepACT_WIDTH: TFloatField
      FieldName = 'ACT_WIDTH'
      Required = True
    end
    object cds_PkgProd_RepNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
      Required = True
    end
    object cds_PkgProd_RepNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
      Required = True
    end
    object cds_PkgProd_RepPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Required = True
      Size = 255
    end
    object cds_PkgProd_RepL18: TIntegerField
      FieldName = 'L18'
      Required = True
    end
    object cds_PkgProd_RepL21: TIntegerField
      FieldName = 'L21'
      Required = True
    end
    object cds_PkgProd_RepL24: TIntegerField
      FieldName = 'L24'
      Required = True
    end
    object cds_PkgProd_RepL27: TIntegerField
      FieldName = 'L27'
      Required = True
    end
    object cds_PkgProd_RepL30: TIntegerField
      FieldName = 'L30'
      Required = True
    end
    object cds_PkgProd_RepL33: TIntegerField
      FieldName = 'L33'
      Required = True
    end
    object cds_PkgProd_RepL36: TIntegerField
      FieldName = 'L36'
      Required = True
    end
    object cds_PkgProd_RepL39: TIntegerField
      FieldName = 'L39'
      Required = True
    end
    object cds_PkgProd_RepL42: TIntegerField
      FieldName = 'L42'
      Required = True
    end
    object cds_PkgProd_RepL45: TIntegerField
      FieldName = 'L45'
      Required = True
    end
    object cds_PkgProd_RepL48: TIntegerField
      FieldName = 'L48'
      Required = True
    end
    object cds_PkgProd_RepL51: TIntegerField
      FieldName = 'L51'
      Required = True
    end
    object cds_PkgProd_RepL54: TIntegerField
      FieldName = 'L54'
      Required = True
    end
    object cds_PkgProd_RepL57: TIntegerField
      FieldName = 'L57'
      Required = True
    end
    object cds_PkgProd_RepL60: TIntegerField
      FieldName = 'L60'
      Required = True
    end
    object cds_PkgProd_RepAM3: TFloatField
      FieldName = 'AM3'
      Required = True
    end
    object cds_PkgProd_RepNM3: TFloatField
      FieldName = 'NM3'
      Required = True
    end
    object cds_PkgProd_RepALPM: TFloatField
      FieldName = 'ALPM'
      Required = True
    end
    object cds_PkgProd_RepMFBM: TFloatField
      FieldName = 'MFBM'
      Required = True
    end
    object cds_PkgProd_RepKM2: TFloatField
      FieldName = 'KM2'
      Required = True
    end
    object cds_PkgProd_RepNO_OF_PCS: TIntegerField
      FieldName = 'NO_OF_PCS'
      Required = True
    end
    object cds_PkgProd_RepPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      Required = True
    end
    object cds_PkgProd_RepSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Required = True
    end
    object cds_PkgProd_RepClientCode: TStringField
      FieldName = 'ClientCode'
      Required = True
      Size = 3
    end
    object cds_PkgProd_RepProductNo: TIntegerField
      FieldName = 'ProductNo'
      Required = True
    end
    object cds_PkgProd_RepPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Required = True
    end
    object cds_PkgProd_RepProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Required = True
    end
  end
  object ds_PkgProd_Rep: TDataSource
    DataSet = cds_PkgProd_Rep
    Left = 56
    Top = 416
  end
  object sq_AllRegPoints: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT RP.RegPointNo, RP.RegPointName'
      'FROM dbo.RegistrationPoint RP'
      'ORDER BY RP.RegPointName'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 496
    Top = 120
    object sq_AllRegPointsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object sq_AllRegPointsRegPointName: TStringField
      FieldName = 'RegPointName'
      Size = 30
    end
  end
  object sq_InvoiceGroup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * '
      'From InvoiceGroup')
    SQLConnection = dmsConnector.SQLConnection
    Left = 192
    Top = 272
    object sq_InvoiceGroupInvoiceGroupNo: TIntegerField
      FieldName = 'InvoiceGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvoiceGroupOriginalInvNos: TStringField
      FieldName = 'OriginalInvNos'
      ProviderFlags = []
      Size = 255
    end
    object sq_InvoiceGroupOrdernos: TStringField
      FieldName = 'Ordernos'
      ProviderFlags = []
      Size = 255
    end
    object sq_InvoiceGroupCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = []
    end
    object sq_InvoiceGroupModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = []
    end
    object sq_InvoiceGroupCreatedDate: TSQLTimeStampField
      FieldName = 'CreatedDate'
      ProviderFlags = []
    end
    object sq_InvoiceGroupModifiedDate: TSQLTimeStampField
      FieldName = 'ModifiedDate'
      ProviderFlags = []
    end
    object sq_InvoiceGroupInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      ProviderFlags = []
      BlobType = ftMemo
    end
    object sq_InvoiceGroupAddressName: TStringField
      FieldName = 'AddressName'
      ProviderFlags = []
      Size = 80
    end
    object sq_InvoiceGroupAddressLine1: TStringField
      FieldName = 'AddressLine1'
      ProviderFlags = []
      Size = 40
    end
    object sq_InvoiceGroupAddressLine2: TStringField
      FieldName = 'AddressLine2'
      ProviderFlags = []
      Size = 40
    end
    object sq_InvoiceGroupAddressLine3: TStringField
      FieldName = 'AddressLine3'
      ProviderFlags = []
      Size = 40
    end
    object sq_InvoiceGroupAddressLine4: TStringField
      FieldName = 'AddressLine4'
      ProviderFlags = []
      Size = 40
    end
    object sq_InvoiceGroupStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      ProviderFlags = []
      Size = 40
    end
    object sq_InvoiceGroupPostalCode: TStringField
      FieldName = 'PostalCode'
      ProviderFlags = []
    end
    object sq_InvoiceGroupCityName: TStringField
      FieldName = 'CityName'
      ProviderFlags = []
      Size = 50
    end
    object sq_InvoiceGroupCountryName: TStringField
      FieldName = 'CountryName'
      ProviderFlags = []
      Size = 30
    end
    object sq_InvoiceGroupCustomerName: TStringField
      FieldName = 'CustomerName'
      ProviderFlags = []
      Size = 80
    end
    object sq_InvoiceGroupAgentname: TStringField
      FieldName = 'Agentname'
      ProviderFlags = []
      Size = 80
    end
    object sq_InvoiceGroupST_AddressName: TStringField
      FieldName = 'ST_AddressName'
      ProviderFlags = []
      Size = 80
    end
    object sq_InvoiceGroupST_CityName: TStringField
      FieldName = 'ST_CityName'
      ProviderFlags = []
      Size = 50
    end
    object sq_InvoiceGroupCarrierName: TStringField
      FieldName = 'CarrierName'
      ProviderFlags = []
      Size = 50
    end
    object sq_InvoiceGroupETD: TSQLTimeStampField
      FieldName = 'ETD'
      ProviderFlags = []
    end
    object sq_InvoiceGroupETA: TSQLTimeStampField
      FieldName = 'ETA'
      ProviderFlags = []
    end
    object sq_InvoiceGroupPaymentText: TMemoField
      FieldName = 'PaymentText'
      ProviderFlags = []
      BlobType = ftMemo
    end
    object sq_InvoiceGroupDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      ProviderFlags = []
      Size = 21
    end
    object sq_InvoiceGroupPaymentDescription: TStringField
      FieldName = 'PaymentDescription'
      ProviderFlags = []
      Size = 100
    end
    object sq_InvoiceGroupCurrencyName: TStringField
      FieldName = 'CurrencyName'
      ProviderFlags = []
      Size = 5
    end
    object sq_InvoiceGroupSearchName: TStringField
      FieldName = 'SearchName'
      ProviderFlags = []
      Size = 80
    end
    object sq_InvoiceGroupSUM_FreigthCost: TFloatField
      FieldName = 'SUM_FreigthCost'
      ProviderFlags = []
    end
    object sq_InvoiceGroupTotal_Product_Value_No_Freight: TFloatField
      FieldName = 'Total_Product_Value_No_Freight'
      ProviderFlags = []
    end
    object sq_InvoiceGroupInv_Value_To_Be_Paid_2: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid_2'
      ProviderFlags = []
    end
  end
  object dsp_InvoiceGroup: TDataSetProvider
    DataSet = sq_InvoiceGroup
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 320
  end
  object cds_InvoiceGroup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InvoiceGroup'
    OnReconcileError = cds_InvoiceGroupReconcileError
    Left = 192
    Top = 368
    object cds_InvoiceGroupInvoiceGroupNo: TIntegerField
      FieldName = 'InvoiceGroupNo'
    end
    object cds_InvoiceGroupCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_InvoiceGroupModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_InvoiceGroupCreatedDate: TSQLTimeStampField
      FieldName = 'CreatedDate'
    end
    object cds_InvoiceGroupModifiedDate: TSQLTimeStampField
      FieldName = 'ModifiedDate'
    end
    object cds_InvoiceGroupOriginalInvNos: TStringField
      FieldName = 'OriginalInvNos'
      ProviderFlags = []
      Size = 255
    end
    object cds_InvoiceGroupOrdernos: TStringField
      FieldName = 'Ordernos'
      ProviderFlags = []
      Size = 255
    end
    object cds_InvoiceGroupInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      ProviderFlags = []
      BlobType = ftMemo
    end
    object cds_InvoiceGroupAddressName: TStringField
      FieldName = 'AddressName'
      ProviderFlags = []
      Size = 80
    end
    object cds_InvoiceGroupAddressLine1: TStringField
      FieldName = 'AddressLine1'
      ProviderFlags = []
      Size = 40
    end
    object cds_InvoiceGroupAddressLine2: TStringField
      FieldName = 'AddressLine2'
      ProviderFlags = []
      Size = 40
    end
    object cds_InvoiceGroupAddressLine3: TStringField
      FieldName = 'AddressLine3'
      ProviderFlags = []
      Size = 40
    end
    object cds_InvoiceGroupAddressLine4: TStringField
      FieldName = 'AddressLine4'
      ProviderFlags = []
      Size = 40
    end
    object cds_InvoiceGroupStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      ProviderFlags = []
      Size = 40
    end
    object cds_InvoiceGroupPostalCode: TStringField
      FieldName = 'PostalCode'
      ProviderFlags = []
    end
    object cds_InvoiceGroupCityName: TStringField
      FieldName = 'CityName'
      ProviderFlags = []
      Size = 50
    end
    object cds_InvoiceGroupCountryName: TStringField
      FieldName = 'CountryName'
      ProviderFlags = []
      Size = 30
    end
    object cds_InvoiceGroupCustomerName: TStringField
      FieldName = 'CustomerName'
      ProviderFlags = []
      Size = 80
    end
    object cds_InvoiceGroupAgentname: TStringField
      FieldName = 'Agentname'
      ProviderFlags = []
      Size = 80
    end
    object cds_InvoiceGroupST_AddressName: TStringField
      FieldName = 'ST_AddressName'
      ProviderFlags = []
      Size = 80
    end
    object cds_InvoiceGroupST_CityName: TStringField
      FieldName = 'ST_CityName'
      ProviderFlags = []
      Size = 50
    end
    object cds_InvoiceGroupCarrierName: TStringField
      FieldName = 'CarrierName'
      ProviderFlags = []
      Size = 50
    end
    object cds_InvoiceGroupETD: TSQLTimeStampField
      FieldName = 'ETD'
      ProviderFlags = []
    end
    object cds_InvoiceGroupETA: TSQLTimeStampField
      FieldName = 'ETA'
      ProviderFlags = []
    end
    object cds_InvoiceGroupPaymentText: TMemoField
      FieldName = 'PaymentText'
      ProviderFlags = []
      BlobType = ftMemo
    end
    object cds_InvoiceGroupDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      ProviderFlags = []
      Size = 21
    end
    object cds_InvoiceGroupPaymentDescription: TStringField
      FieldName = 'PaymentDescription'
      ProviderFlags = []
      Size = 100
    end
    object cds_InvoiceGroupCurrencyName: TStringField
      FieldName = 'CurrencyName'
      ProviderFlags = []
      Size = 5
    end
    object cds_InvoiceGroupSearchName: TStringField
      FieldName = 'SearchName'
      ProviderFlags = []
      Size = 80
    end
    object cds_InvoiceGroupSUM_FreigthCost: TFloatField
      FieldName = 'SUM_FreigthCost'
      ProviderFlags = []
    end
    object cds_InvoiceGroupTotal_Product_Value_No_Freight: TFloatField
      FieldName = 'Total_Product_Value_No_Freight'
      ProviderFlags = []
    end
    object cds_InvoiceGroupInv_Value_To_Be_Paid_2: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid_2'
      ProviderFlags = []
    end
  end
  object ds_InvoiceGroup: TDataSource
    DataSet = cds_InvoiceGroup
    Left = 192
    Top = 416
  end
  object sq_PkgTypeForAvr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete dbo.PkgType_Invoice'
      'WHERE LoadNo = :LoadNo'
      'AND InternalInvoiceNo = -1'
      ''
      'Insert into dbo.PkgType_Invoice'
      '(PackageTypeNo,'
      'ProductLengthNo,'
      'InternalInvoiceNo,'
      'LoadNo,'
      'LoadDetailNo,'
      'NoOfPieces,'
      'm3Actual,'
      'm3Nominal,'
      'MFBMNominal,'
      'SQMofActualWidth,'
      'SQMofCoveringWidth,'
      'LinealMeterActualLength,'
      'm3ActualSizeNomLength,'
      'm3NomSizeActualLength,'
      'CreatedUser,'
      'ModifiedUser,'
      'DateCreated,'
      'LinealMeterNominalLength)'
      ''
      ''
      'SELECT DISTINCT'
      ''
      'LD.PackageTypeNo,'
      'PTD.ProductLengthNo,'
      '-1,'
      'LD.LoadNo,'
      'LD.LoadDetailNo,'
      'PTD.NoOfPieces ,'
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN SSP_PL.ActualLengthMM > 0.05'
      
        'THEN SSP_PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 *' +
        ' 1000 * 1000)'
      ' As decimal(10,3)),3) AS M3Actual,'
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.NominalThicknessMM * PG.NominalWidthMM *'
      'CASE WHEN SSP_PL.NominalLengthMM > 0.05'
      
        'THEN SSP_PL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000' +
        ' * 1000 * 1000)'
      ' As decimal(10,3)),3) AS M3NOMINAL,'
      ''
      
        'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3) AS M' +
        'FBMNominal,'
      
        'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)' +
        ' AS SQMofActualWidth,'
      ''
      'PTD.SQMofCoveringWidth,'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3) AS LinealMeterActualLength,'
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN SSP_PL.NominalLengthMM > 0.05'
      
        'THEN SSP_PL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000' +
        ' * 1000 * 1000)'
      ' As decimal(10,3)),3) AS m3ActualSizeNomLength,'
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.NominalThicknessMM * PG.NominalWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) AS m3NomSizeActualLength,'
      ''
      ''
      'PTD.CreatedUser,'
      'PTD.ModifiedUser,'
      'PTD.DateCreated,'
      'ROUND(CAST((       PTD.m3Net )   As decimal(10,3)),3) AS m3Net'
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.LoadDetail LD'#9#9'ON'#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail'#9'PTD ON PTD.PackageTypeNo = LD.P' +
        'ackageTypeNo'
      ''
      
        'INNER JOIN dbo.SupplierShippingPlan SSP ON SSP.SupplierShipPlanO' +
        'bjectNo = LD.Defsspno'
      ''
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      
        'INNER JOIN dbo.ProductLength SSP_PL ON SSP_PL.ProductLengthNo = ' +
        'SSP.ProductLengthNo'
      'INNER JOIN dbo.Product P ON P.ProductNo = SSP.ProductNo'
      
        'INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      ''
      'WHERE'
      'LO.LoadNo = :LoadNo'
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 416
    Top = 272
  end
  object sq_DelPkgType: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete dbo.PkgType_Invoice'
      'WHERE LoadNo = :LoadNo'
      'AND InternalInvoiceNo = -1'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 616
    Top = 80
  end
  object sq_PkgType_InvoiceByLO: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete dbo.PkgType_Invoice'
      'WHERE LoadNo = :LoadNo'
      'AND InternalInvoiceNo = -1'
      ''
      'Insert into dbo.PkgType_Invoice'
      '(PackageTypeNo,'
      'ProductLengthNo,'
      'InternalInvoiceNo,'
      'LoadNo,'
      'LoadDetailNo,'
      'NoOfPieces,'
      'm3Actual,'
      'm3Nominal,'
      'MFBMNominal,'
      'SQMofActualWidth,'
      'SQMofCoveringWidth,'
      'LinealMeterActualLength,'
      'm3ActualSizeNomLength,'
      'm3NomSizeActualLength,'
      'CreatedUser,'
      'ModifiedUser,'
      'DateCreated,'
      'LinealMeterNominalLength)'
      ''
      'SELECT DISTINCT'
      'LD.PackageTypeNo,'
      'PTD.ProductLengthNo,'
      '-1,'
      'LD.LoadNo,'
      'LD.LoadDetailNo,'
      'PTD.NoOfPieces ,'
      ''
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) AS M3Actual,'
      ''
      '-- M3NOMINAL *****************************************'
      'CASE '
      '-- Random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      'END'
      'AS M3NOMINAL,'
      ''
      
        'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3) AS M' +
        'FBMNominal,'
      
        'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)' +
        ' AS SQMofActualWidth,'
      'PTD.SQMofCoveringWidth,'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3) AS LinealMeterActualLength,'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3) '
      ''
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'END AS m3ActualSizeNomLength,'
      ''
      
        '-- m3NomSizeActualLength ***************************************' +
        '******'
      'ROUND(CAST('
      '(PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)'
      ' As decimal(10,3)),3) AS m3NomSizeActualLength,'
      ''
      'PTD.CreatedUser,'
      'PTD.ModifiedUser,'
      'PTD.DateCreated,'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'CASE '
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000)) As decima' +
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3)'
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      'END AS NM1'
      ''
      ''
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.LoadDetail LD'#9#9#9'ON'#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail'#9'PTD '#9'ON PTD.PackageTypeNo = LD.' +
        'PackageTypeNo'
      
        'Inner Join dbo.SupplierShippingPlan ssp on ssp.SupplierShipPlanO' +
        'bjectNo = LD.DefSspNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD2 ON CSD2.CustShip' +
        'PlanDetailObjectNo = ssp.CustShipPlanDetailObjectNo'
      
        'INNER JOIN dbo.OrderLine OL ON OL.OrderLineNo = CSD2.OrderLineNo' +
        ' AND OL.OrderNo = CSD2.OrderNo'
      ''
      
        'Inner JOIN dbo.ProductLength PL_CSD ON PL_CSD.ProductLengthNo = ' +
        'CSD2.ProductLengthNo'
      ''
      ''
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      
        'INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = OL.Product' +
        'GroupNo'
      ''
      'WHERE'
      'LO.LoadNo = :LoadNo'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 616
    Top = 144
  end
  object sq_GetProductDesc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ProductNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT pd.ProductNo, pg.ProductGroupNo, gd.GradeName,'
      '      sc.SpeciesName, sf.SurfacingName, pc.ProductCategoryName,'
      
        #9'pg.ActualThicknessMM, pg.ActualWidthMM, pg.NominalThicknessMM, ' +
        'pg.NominalWidthMM,'
      
        '      pd.ProductDisplayName, pd.GradeNo, pg.SpeciesNo, pg.Produc' +
        'tCategoryNo,'
      
        '      pg.SurfacingNo, pg.NominalThicknessINCH, pg.NominalWidthIN' +
        'CH'
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
      'WHERE pd.ProductNo = :ProductNo'
      ' '
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 620
    Top = 264
    object sq_GetProductDescProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Size = 100
    end
    object sq_GetProductDescProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object sq_GetProductDescProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
  end
end
