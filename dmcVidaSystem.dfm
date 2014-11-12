object dmcSystem: TdmcSystem
  OldCreateOrder = False
  Height = 591
  Width = 917
  object dsrcBarCodes: TDataSource
    DataSet = cdsBarCodes
    Left = 56
    Top = 64
  end
  object dsrcGradeStamps: TDataSource
    DataSet = cdsGradeStamps
    Left = 176
    Top = 64
  end
  object dsrcPaperWraps: TDataSource
    DataSet = cdsPaperWraps
    Left = 304
    Top = 64
  end
  object dsrcPhysInventory: TDataSource
    DataSet = cdsPhysInventory
    Left = 56
    Top = 208
  end
  object dsrcLogicalInventory: TDataSource
    DataSet = cdsLogInventory
    Left = 192
    Top = 208
  end
  object ds_Products: TDataSource
    DataSet = cds_Products
    Left = 400
    Top = 64
  end
  object ds_PkgProd_Rep: TDataSource
    DataSet = cds_PkgProd_Rep
    Left = 56
    Top = 416
  end
  object ds_InvoiceGroup: TDataSource
    DataSet = cds_InvoiceGroup
    Left = 192
    Top = 416
  end
  object cds_InvoiceGroup: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Select * '
      'From InvoiceGroup'
      '')
    Left = 192
    Top = 368
    object cds_InvoiceGroupInvoiceGroupNo: TIntegerField
      FieldName = 'InvoiceGroupNo'
      Origin = 'InvoiceGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvoiceGroupOriginalInvNos: TStringField
      FieldName = 'OriginalInvNos'
      Origin = 'OriginalInvNos'
      Size = 255
    end
    object cds_InvoiceGroupOrdernos: TStringField
      FieldName = 'Ordernos'
      Origin = 'Ordernos'
      Size = 255
    end
    object cds_InvoiceGroupCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_InvoiceGroupModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_InvoiceGroupCreatedDate: TSQLTimeStampField
      FieldName = 'CreatedDate'
      Origin = 'CreatedDate'
    end
    object cds_InvoiceGroupModifiedDate: TSQLTimeStampField
      FieldName = 'ModifiedDate'
      Origin = 'ModifiedDate'
    end
    object cds_InvoiceGroupInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      BlobType = ftMemo
    end
    object cds_InvoiceGroupAddressName: TStringField
      FieldName = 'AddressName'
      Origin = 'AddressName'
      FixedChar = True
      Size = 80
    end
    object cds_InvoiceGroupAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      FixedChar = True
      Size = 40
    end
    object cds_InvoiceGroupAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      FixedChar = True
      Size = 40
    end
    object cds_InvoiceGroupAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      FixedChar = True
      Size = 40
    end
    object cds_InvoiceGroupAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      FixedChar = True
      Size = 40
    end
    object cds_InvoiceGroupStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
      FixedChar = True
      Size = 40
    end
    object cds_InvoiceGroupPostalCode: TStringField
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      FixedChar = True
    end
    object cds_InvoiceGroupCityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      Size = 50
    end
    object cds_InvoiceGroupCountryName: TStringField
      FieldName = 'CountryName'
      Origin = 'CountryName'
      Size = 30
    end
    object cds_InvoiceGroupCustomerName: TStringField
      FieldName = 'CustomerName'
      Origin = 'CustomerName'
      FixedChar = True
      Size = 80
    end
    object cds_InvoiceGroupAgentname: TStringField
      FieldName = 'Agentname'
      Origin = 'Agentname'
      FixedChar = True
      Size = 80
    end
    object cds_InvoiceGroupST_AddressName: TStringField
      FieldName = 'ST_AddressName'
      Origin = 'ST_AddressName'
      FixedChar = True
      Size = 80
    end
    object cds_InvoiceGroupST_CityName: TStringField
      FieldName = 'ST_CityName'
      Origin = 'ST_CityName'
      FixedChar = True
      Size = 50
    end
    object cds_InvoiceGroupCarrierName: TStringField
      FieldName = 'CarrierName'
      Origin = 'CarrierName'
      FixedChar = True
      Size = 50
    end
    object cds_InvoiceGroupETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
    end
    object cds_InvoiceGroupETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
    end
    object cds_InvoiceGroupPaymentText: TMemoField
      FieldName = 'PaymentText'
      Origin = 'PaymentText'
      BlobType = ftMemo
    end
    object cds_InvoiceGroupDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Origin = 'DeliveryTerm'
      Size = 21
    end
    object cds_InvoiceGroupPaymentDescription: TStringField
      FieldName = 'PaymentDescription'
      Origin = 'PaymentDescription'
      FixedChar = True
      Size = 100
    end
    object cds_InvoiceGroupCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Origin = 'CurrencyName'
      FixedChar = True
      Size = 5
    end
    object cds_InvoiceGroupSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      FixedChar = True
      Size = 80
    end
    object cds_InvoiceGroupSUM_FreigthCost: TFloatField
      FieldName = 'SUM_FreigthCost'
      Origin = 'SUM_FreigthCost'
    end
    object cds_InvoiceGroupTotal_Product_Value_No_Freight: TFloatField
      FieldName = 'Total_Product_Value_No_Freight'
      Origin = 'Total_Product_Value_No_Freight'
    end
    object cds_InvoiceGroupInv_Value_To_Be_Paid_2: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid_2'
      Origin = 'Inv_Value_To_Be_Paid_2'
    end
  end
  object cds_PkgProd_Rep: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'vida_PkgProd_Rep'
    Left = 56
    Top = 368
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
        Name = '@StartDate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@EndDate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@ProductionUnitNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PkgProd_RepUNIQUEKEY: TStringField
      FieldName = 'UNIQUEKEY'
      Origin = 'UNIQUEKEY'
      ReadOnly = True
      Size = 25
    end
    object cds_PkgProd_RepProductionDate: TSQLTimeStampField
      FieldName = 'ProductionDate'
      Origin = 'ProductionDate'
    end
    object cds_PkgProd_RepClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_PkgProd_RepPROD_UNIT: TStringField
      FieldName = 'PROD_UNIT'
      Origin = 'PROD_UNIT'
      FixedChar = True
      Size = 30
    end
    object cds_PkgProd_RepSTD_Length: TIntegerField
      FieldName = 'STD_Length'
      Origin = 'STD_Length'
    end
    object cds_PkgProd_RepINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Origin = 'INVENTORY'
      ReadOnly = True
      Size = 103
    end
    object cds_PkgProd_RepPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 150
    end
    object cds_PkgProd_RepPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      Required = True
    end
    object cds_PkgProd_RepSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PkgProd_RepACT_THICK: TFloatField
      FieldName = 'ACT_THICK'
      Origin = 'ACT_THICK'
    end
    object cds_PkgProd_RepACT_WIDTH: TFloatField
      FieldName = 'ACT_WIDTH'
      Origin = 'ACT_WIDTH'
    end
    object cds_PkgProd_RepNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
      Origin = 'NOM_THICK'
    end
    object cds_PkgProd_RepNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
      Origin = 'NOM_WIDTH'
    end
    object cds_PkgProd_RepPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Origin = 'PCS_PER_LENGTH'
      Size = 255
    end
    object cds_PkgProd_RepL18: TIntegerField
      FieldName = 'L18'
      Origin = 'L18'
    end
    object cds_PkgProd_RepL21: TIntegerField
      FieldName = 'L21'
      Origin = 'L21'
    end
    object cds_PkgProd_RepL24: TIntegerField
      FieldName = 'L24'
      Origin = 'L24'
    end
    object cds_PkgProd_RepL27: TIntegerField
      FieldName = 'L27'
      Origin = 'L27'
    end
    object cds_PkgProd_RepL30: TIntegerField
      FieldName = 'L30'
      Origin = 'L30'
    end
    object cds_PkgProd_RepL33: TIntegerField
      FieldName = 'L33'
      Origin = 'L33'
    end
    object cds_PkgProd_RepL36: TIntegerField
      FieldName = 'L36'
      Origin = 'L36'
    end
    object cds_PkgProd_RepL39: TIntegerField
      FieldName = 'L39'
      Origin = 'L39'
    end
    object cds_PkgProd_RepL42: TIntegerField
      FieldName = 'L42'
      Origin = 'L42'
    end
    object cds_PkgProd_RepL45: TIntegerField
      FieldName = 'L45'
      Origin = 'L45'
    end
    object cds_PkgProd_RepL48: TIntegerField
      FieldName = 'L48'
      Origin = 'L48'
    end
    object cds_PkgProd_RepL51: TIntegerField
      FieldName = 'L51'
      Origin = 'L51'
    end
    object cds_PkgProd_RepL54: TIntegerField
      FieldName = 'L54'
      Origin = 'L54'
    end
    object cds_PkgProd_RepL57: TIntegerField
      FieldName = 'L57'
      Origin = 'L57'
    end
    object cds_PkgProd_RepL60: TIntegerField
      FieldName = 'L60'
      Origin = 'L60'
    end
    object cds_PkgProd_RepAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object cds_PkgProd_RepNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
    end
    object cds_PkgProd_RepALPM: TFloatField
      FieldName = 'ALPM'
      Origin = 'ALPM'
    end
    object cds_PkgProd_RepMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
    end
    object cds_PkgProd_RepKM2: TFloatField
      FieldName = 'KM2'
      Origin = 'KM2'
    end
    object cds_PkgProd_RepNO_OF_PCS: TIntegerField
      FieldName = 'NO_OF_PCS'
      Origin = 'NO_OF_PCS'
    end
    object cds_PkgProd_RepPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      Origin = 'PhyInvPointNameNo'
    end
    object cds_PkgProd_RepSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cds_PkgProd_RepClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      FixedChar = True
      Size = 3
    end
    object cds_PkgProd_RepProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object cds_PkgProd_RepPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      Required = True
    end
    object cds_PkgProd_RepProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
      Required = True
    end
  end
  object sq_GetProductDesc: TADQuery
    Connection = dmsConnector.ADConnection1
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
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      #9#9#9#9'AND sc.LanguageCode = 1'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      #9#9#9#9'AND sf.LanguageCode = 1'
      'WHERE pd.ProductNo = :ProductNo'
      ' '
      '')
    Left = 416
    Top = 352
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetProductDescProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetProductDescProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object sq_GetProductDescGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object sq_GetProductDescSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object sq_GetProductDescSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object sq_GetProductDescProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      Size = 40
    end
    object sq_GetProductDescActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object sq_GetProductDescActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object sq_GetProductDescNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object sq_GetProductDescNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
    object sq_GetProductDescProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object sq_GetProductDescGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      Required = True
    end
    object sq_GetProductDescSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
    end
    object sq_GetProductDescProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
    end
    object sq_GetProductDescSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object sq_GetProductDescNominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
    end
    object sq_GetProductDescNominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
    end
  end
  object sq_PkgTypeForAvr: TADQuery
    Connection = dmsConnector.ADConnection1
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
      'Inner Join dbo.LoadDetailPkgLength LDP ON LDP.LoadNo = LD.LoadNo'
      #9#9#9#9#9#9'AND LDP.LoadDetailNo = LD.LoadDetailNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail'#9'PTD ON PTD.PackageTypeNo = LD.P' +
        'ackageTypeNo'
      #9#9#9#9#9#9'AND PTD.ProductLengthNo = LDP.ProductLengthNo'
      ''
      
        'INNER JOIN dbo.SupplierShippingPlan SSP ON SSP.SupplierShipPlanO' +
        'bjectNo = LDP.SupplierShipPlanObjectNo'
      ''
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = LDP.Prod' +
        'uctLengthNo'
      
        'INNER JOIN dbo.ProductLength SSP_PL ON SSP_PL.ProductLengthNo = ' +
        'SSP.ProductLengthNo'
      'INNER JOIN dbo.Product P ON P.ProductNo = SSP.ProductNo'
      
        'INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      ''
      'WHERE'
      'LO.LoadNo = :LoadNo'
      '')
    Left = 416
    Top = 304
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_Products: TADQuery
    IndexName = 'cds_ProductsIndex1'
    Connection = dmsConnector.ADConnection1
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
        'ryNo = pc.ProductCategoryNo '
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo '
      #9#9#9#9'AND sc.LanguageCode = 1'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo '
      #9#9#9#9'AND sf.LanguageCode = 1'
      'WHERE pd.Act = 1'
      'AND  pg.Act = 1'
      ' '
      '')
    Left = 400
    Top = 16
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
    object cds_ProductsGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_ProductsSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object cds_ProductsSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object cds_ProductsProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      Size = 40
    end
    object cds_ProductsActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object cds_ProductsActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object cds_ProductsNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object cds_ProductsNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
    object cds_ProductsProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object cds_ProductsGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      Required = True
    end
    object cds_ProductsSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
    end
    object cds_ProductsProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
    end
    object cds_ProductsSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object cds_ProductsNominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
    end
    object cds_ProductsNominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
    end
  end
  object qryExec: TADQuery
    Connection = dmsConnector.ADConnection1
    Left = 312
    Top = 160
  end
  object cdsLogInventory: TADQuery
    Connection = dmsConnector.ADConnection1
    Left = 192
    Top = 160
  end
  object cdsPhysInventory: TADQuery
    Connection = dmsConnector.ADConnection1
    Left = 56
    Top = 160
  end
  object cdsPaperWraps: TADQuery
    Connection = dmsConnector.ADConnection1
    Left = 304
    Top = 16
  end
  object cdsGradeStamps: TADQuery
    Connection = dmsConnector.ADConnection1
    Left = 176
    Top = 16
  end
  object cdsBarCodes: TADQuery
    Connection = dmsConnector.ADConnection1
    Left = 56
    Top = 16
  end
  object sq_PkgType_InvoiceByLO: TADQuery
    Connection = dmsConnector.ADConnection1
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
      ''
      '')
    Left = 656
    Top = 128
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_DelPkgType: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Delete PkgType_Invoice'
      'WHERE LoadNo = :LoadNo'
      'AND InternalInvoiceNo = -1'
      ''
      '')
    Left = 656
    Top = 72
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_PkgType_Invoice: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Delete PkgType_Invoice'
      'WHERE LoadNo = :LoadNo'
      'AND InternalInvoiceNo = -1'
      ''
      'Insert into PkgType_Invoice'
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
      
        'ROUND(CAST((       PTD.m3Actual )   As decimal(10,3)),3) AS M3Ac' +
        'tual,'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) AS M3NOMINAL,'
      
        'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3) AS M' +
        'FBMNominal,'
      
        'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)' +
        ' AS SQMofActualWidth,'
      ''
      'PTD.SQMofCoveringWidth,'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3) AS LinealMeterActualLength,'
      ''
      '--PTD.m3ActualSizeNomLength,'
      '--PTD.m3NomSizeActualLength,'
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) AS m3ActualSizeNomLength,'
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
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
      'Inner Join dbo.LoadDetailPkgLength LDP ON LDP.LoadNo = LD.LoadNo'
      #9#9#9#9#9#9'AND LDP.LoadDetailNo = LD.LoadDetailNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail'#9'PTD ON PTD.PackageTypeNo = LD.P' +
        'ackageTypeNo'
      #9#9#9#9#9#9'AND PTD.ProductLengthNo = LDP.ProductLengthNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD2 ON CSD2.CustShip' +
        'PlanDetailObjectNo = LDP.CustShipPlanDetailObjectNo'
      
        'INNER JOIN dbo.OrderLine OL ON OL.OrderLineNo = CSD2.OrderLineNo' +
        ' AND OL.OrderNo = CSD2.OrderNo'
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = LDP.Prod' +
        'uctLengthNo'
      
        'INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = OL.Product' +
        'GroupNo'
      ''
      'WHERE'
      'LO.LoadNo = :LoadNo'
      '')
    Left = 656
    Top = 16
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_AllRegPoints: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'SELECT RP.RegPointNo, RP.RegPointName'
      'FROM dbo.RegistrationPoint RP'
      'ORDER BY RP.RegPointName'
      ''
      '')
    Left = 512
    Top = 120
    object sq_AllRegPointsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_AllRegPointsRegPointName: TStringField
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      FixedChar = True
      Size = 30
    end
  end
  object sq_RegPoint: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      
        'SELECT PU.ProductionUnitNo, RP.RegPointName AS ProductionUnitNam' +
        'e,'
      'PU.RegistrationPointNo'
      'FROM ProductionUnit PU'
      
        'Inner Join dbo.RegistrationPoint RP ON RP.RegPointNo = PU.Regist' +
        'rationPointNo'
      'WHERE'
      ' PU.ClientNo = :ClientNo'
      'ORDER BY RP.RegPointName'
      ''
      '')
    Left = 512
    Top = 72
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_RegPointProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_RegPointProductionUnitName: TStringField
      FieldName = 'ProductionUnitName'
      Origin = 'ProductionUnitName'
      FixedChar = True
      Size = 30
    end
    object sq_RegPointRegistrationPointNo: TIntegerField
      FieldName = 'RegistrationPointNo'
      Origin = 'RegistrationPointNo'
    end
  end
  object sq_LengthGroup: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'SELECT GroupNo, GroupName '
      'FROM ProductLengthGroupName '
      'ORDER BY GroupName'
      '')
    Left = 512
    Top = 16
    object sq_LengthGroupGroupNo: TIntegerField
      FieldName = 'GroupNo'
      Origin = 'GroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_LengthGroupGroupName: TStringField
      FieldName = 'GroupName'
      Origin = 'GroupName'
      FixedChar = True
    end
  end
  object cds_Client: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'SELECT distinct C.ClientNo, C.ClientName, C.SearchName'
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      '  AND  (R.RoleType = 1'
      '  OR R.RoleType = 2'
      '  OR R.RoleType = 3)'
      ''
      'Order By C.SearchName')
    Left = 648
    Top = 304
    object cds_ClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ClientClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_ClientSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object cds_verk: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'SELECT distinct C.ClientNo, C.ClientName, C.SearchName'
      ''
      'FROM dbo.ClientRole    R'
      'Inner Join dbo.Client        C ON C.ClientNo = R.ClientNo'
      ''
      'WHERE'
      'R.RoleType = 9'
      ''
      'order by C.SearchName')
    Left = 720
    Top = 304
    object cds_verkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_verkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_verkSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object cds_PhysInv: TADQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_physInv_cds_PhysInvOwnerNo'
        Fields = 'OwnerNo'
      end>
    IndexName = 'cds_physInv_cds_PhysInvOwnerNo'
    MasterFields = 'ClientNo'
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.PhysicalInventoryPoint PIP'
      'Inner join dbo.City cy on cy.CityNo = PIP.PhyInvPointNameNo'
      '')
    Left = 648
    Top = 352
    object cds_PhysInvOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
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
      ProviderFlags = [pfInUpdate]
    end
    object cds_PhysInvPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      Origin = 'PhyInvPointNameNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PhysInvSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PhysInvDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PhysInvModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PhysInvCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PhysInvCityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      Size = 50
    end
  end
  object cds_PIP: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT distinct PH.PhysicalInventoryPointNo AS PIPNo, PH.PhyInvP' +
        'ointNameNo, CY.CITYNAME, PH.OwnerNo'
      'FROM'
      'dbo.Client SR'
      
        'Inner Join dbo.PHYSICALINVENTORYPOINT PH ON PH.OwnerNo = SR.Clie' +
        'ntNo'
      'Inner Join dbo.CITY CY ON'#9'CY.CITYNO = PH.PhyInvPointNameNo'
      'WHERE PH.SequenceNo = 1'
      ''
      'ORDER BY CY.CITYNAME')
    Left = 784
    Top = 304
    object cds_PIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      Required = True
    end
    object cds_PIPPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      Origin = 'PhyInvPointNameNo'
    end
    object cds_PIPCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Origin = 'CITYNAME'
      Size = 50
    end
    object cds_PIPOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
  end
  object cds_LIP: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select LIP.LogicalInventoryPointNo AS LIPNo, LIP.LogicalInventor' +
        'yName AS LIPName,'
      
        'PIP.PhyInvPointNameNo AS CityNo, PIP.OwnerNo, PIP.PhysicalInvent' +
        'oryPointNo AS PIPNo'
      'FROM'
      'dbo.PhysicalInventoryPoint PIP'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.PhysicalInventor' +
        'yPointNo = PIP.PhysicalInventoryPointNo'
      'Where LIP.SequenceNo = 1'
      'AND PIP.SequenceNo = 1')
    Left = 720
    Top = 356
    object cds_LIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'PIPNo'
      Required = True
    end
    object cds_LIPLIPName: TStringField
      FieldName = 'LIPName'
      Origin = 'LIPName'
      Size = 50
    end
    object cds_LIPCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
    end
    object cds_LIPOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_LIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      Required = True
    end
  end
  object sq_GetStdUserProfile: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Select * FROM dbo.UserProfile'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 648
    Top = 416
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
    object sq_GetStdUserProfileForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object sq_GetStdUserProfileName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
  end
  object cds_UserProfile: TADQuery
    AfterInsert = cds_UserProfileAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Select * FROM dbo.UserProfile'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 648
    Top = 472
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
    object cds_UserProfileUserID: TIntegerField
      FieldName = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_UserProfileForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_UserProfileName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_UserProfileVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
    object cds_UserProfileOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_UserProfilePIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object cds_UserProfileLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_UserProfileInputOption: TIntegerField
      FieldName = 'InputOption'
      Origin = 'InputOption'
    end
    object cds_UserProfileRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
    end
    object cds_UserProfileRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      Origin = 'RegDate'
    end
    object cds_UserProfileCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
    end
    object cds_UserProfileRunNo: TIntegerField
      FieldName = 'RunNo'
      Origin = 'RunNo'
    end
    object cds_UserProfileProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
    end
    object cds_UserProfileAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      Origin = 'AutoColWidth'
    end
    object cds_UserProfileSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      Size = 3
    end
    object cds_UserProfileLengthOption: TIntegerField
      FieldName = 'LengthOption'
      Origin = 'LengthOption'
    end
    object cds_UserProfileLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      Origin = 'LengthGroupNo'
    end
    object cds_UserProfileNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      Origin = 'NewItemRow'
    end
    object cds_UserProfileSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_UserProfileMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
    object cds_UserProfileOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
      Origin = 'OrderTypeNo'
    end
    object cds_UserProfileStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_UserProfileFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
      Origin = 'FilterOrderDate'
    end
    object cds_UserProfileStartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
    end
    object cds_UserProfileEndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
    end
    object cds_UserProfileClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_UserProfileSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
      Origin = 'SalesPersonNo'
    end
    object cds_UserProfileVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
      Origin = 'VerkSupplierNo'
    end
    object cds_UserProfileVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
      Origin = 'VerkKundNo'
    end
    object cds_UserProfileLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
    end
    object cds_UserProfileBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
    end
    object cds_UserProfileGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
    end
    object cds_UserProfileVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
    end
    object cds_UserProfileLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
      Origin = 'LengthFormatNo'
    end
    object cds_UserProfileLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
      Origin = 'LengthVolUnitNo'
    end
    object cds_UserProfileGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
      Origin = 'GroupByBox'
    end
    object cds_UserProfileGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
      Origin = 'GroupSummary'
    end
    object cds_UserProfileAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
    end
    object cds_UserProfileLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
    end
    object cds_UserProfileShipperNo: TIntegerField
      FieldName = 'ShipperNo'
      Origin = 'ShipperNo'
    end
    object cds_UserProfileBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
    end
    object cds_UserProfileCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cds_UserProfileShowProduct: TIntegerField
      FieldName = 'ShowProduct'
      Origin = 'ShowProduct'
    end
    object cds_UserProfileFilter1: TStringField
      FieldName = 'Filter1'
      Origin = 'Filter1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_UserProfileLoadingLocation: TStringField
      FieldKind = fkLookup
      FieldName = 'LoadingLocation'
      LookupDataSet = cds_PhysInv
      LookupKeyFields = 'PhysicalInventoryPointNo'
      LookupResultField = 'CityName'
      KeyFields = 'LoadingLocationNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_UserProfileVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = cds_verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ProducerNo'
      Size = 80
      Lookup = True
    end
    object cds_UserProfileKund: TStringField
      FieldKind = fkLookup
      FieldName = 'Kund'
      LookupDataSet = cds_Client
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
    object cds_UserProfilePIP: TStringField
      FieldKind = fkLookup
      FieldName = 'PIP'
      LookupDataSet = cds_PIP
      LookupKeyFields = 'PIPNo'
      LookupResultField = 'CITYNAME'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object cds_UserProfileLIP: TStringField
      FieldKind = fkLookup
      FieldName = 'LIP'
      LookupDataSet = cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
  end
  object ds_UserProfile: TDataSource
    DataSet = cds_UserProfile
    Left = 648
    Top = 528
  end
end
