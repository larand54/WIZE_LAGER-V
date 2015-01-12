object dmInventory: TdmInventory
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 716
  Width = 1378
  object ds_PkgList: TDataSource
    DataSet = cds_PkgList
    Left = 32
    Top = 576
  end
  object ds_InvSum: TDataSource
    DataSet = cds_InvSum
    Left = 160
    Top = 576
  end
  object ds_LengthGroup: TDataSource
    DataSet = cds_LengthGroup
    Left = 328
    Top = 72
  end
  object ds_ProductLengthInGroup: TDataSource
    DataSet = cds_ProductLengthInGroup
    Left = 704
    Top = 448
  end
  object ds_PcsPerLen: TDataSource
    DataSet = cds_PcsPerLen
    Left = 256
    Top = 576
  end
  object mtRemovedPkg: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
      end
      item
        Name = 'SUPPCODE'
        DataType = ftString
        Size = 3
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
    Left = 344
    Top = 448
    object mtRemovedPkgPKGNO: TIntegerField
      FieldName = 'PKGNO'
    end
    object mtRemovedPkgSUPPCODE: TStringField
      FieldName = 'SUPPCODE'
      Size = 3
    end
  end
  object mt_PC: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductCategoryNo'
        DataType = ftInteger
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
    Top = 184
    object mt_PCProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
    end
    object mt_PCProductCategoryName: TStringField
      FieldKind = fkLookup
      FieldName = 'ProductCategoryName'
      LookupDataSet = sq_PC2
      LookupKeyFields = 'ProductCategoryNo'
      LookupResultField = 'ProductCategoryName'
      KeyFields = 'ProductCategoryNo'
      Lookup = True
    end
  end
  object ds_PC: TDataSource
    DataSet = mt_PC
    Left = 40
    Top = 232
  end
  object ds_PkgNoList: TDataSource
    DataSet = cds_PkgNoList
    Left = 344
    Top = 576
  end
  object mtPkgNos: TkbmMemTable
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
      end
      item
        Name = 'PackageTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'OwnerNo'
        DataType = ftInteger
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
    Left = 39
    Top = 288
    object mtPkgNosPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtPkgNosSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtPkgNosPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object mtPkgNosLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtPkgNosOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
  end
  object ds_OtherLengths: TDataSource
    Left = 327
    Top = 184
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 231
    Top = 192
  end
  object cds_PcsPerLen: TFDQuery
    OnCalcFields = cds_PcsPerLenCalcFields
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      '-- Antal per l'#228'ngd'
      'Select distinct '
      'pdl.ActualLengthMM AS AKTUELL'#196'NGD,'
      'SUM(ptd.NoOfPieces) AS STYCK,'
      'SUM(ptd.m3Actual) AS AM3,'
      ''
      '(Select COUNT(pn2.PackageNo) FROM dbo.productLength PDL2'
      
        'Inner Join PackageTypeDetail ptd2 '#9'ON ptd2.ProductLengthNo = pdl' +
        '2.ProductLengthNo'
      
        'Inner Join dbo.PackageType pt2 '#9'ON pt2.PackageTypeNo = ptd2.Pack' +
        'ageTypeNo'
      
        'INNER JOIN PackageNumber pn2 ON pn2.PackageTypeNo = pt2.PackageT' +
        'ypeNo'
      
        'Inner Join LogicalInventoryPoint lip2 ON Lip2.LogicalInventoryPo' +
        'intNo = pn2.LogicalInventoryPointNo'
      
        'Inner Join PhysicalInventoryPoint pip2 ON pip2.PhysicalInventory' +
        'PointNo = lip2.PhysicalInventoryPointNo'
      'WHERE'
      'pdl2.ActualLengthMM = pdl.ActualLengthMM'
      'AND pn2.Status = 1'
      'AND pip2.PhyInvPointnameNo = 491'
      'AND LIP2.LogicalInventoryPointNo = 10312'
      ''
      
        'AND 1 = (Select Count(PackageTypeNo) From dbo.PackageTypeDetail ' +
        'WHERE PackageTypeNo = pt2.PackageTypeNo) ) AS PAKET,'
      ''
      '(Select SUM(ptd2.m3Actual) FROM'
      'dbo.productLength PDL2'
      
        'Inner Join PackageTypeDetail ptd2 '#9'ON ptd2.ProductLengthNo = pdl' +
        '2.ProductLengthNo'
      
        'Inner Join dbo.PackageType pt2 '#9'ON pt2.PackageTypeNo = ptd2.Pack' +
        'ageTypeNo'
      
        'INNER JOIN PackageNumber pn2 ON pn2.PackageTypeNo = pt2.PackageT' +
        'ypeNo'
      
        'Inner Join LogicalInventoryPoint lip2 ON Lip2.LogicalInventoryPo' +
        'intNo = pn2.LogicalInventoryPointNo'
      
        'Inner Join PhysicalInventoryPoint pip2 ON pip2.PhysicalInventory' +
        'PointNo = lip2.PhysicalInventoryPointNo'
      'WHERE'
      'pn2.Status = 1'
      'AND pip2.PhyInvPointnameNo = 491'
      'AND LIP2.LogicalInventoryPointNo = 10312'
      
        'AND 1 = (Select Count(PackageTypeNo) From PackageTypeDetail WHER' +
        'E PackageTypeNo = ptd2.PackageTypeNo)'
      
        '--AND 1 = (Select Count(PackageTypeNo) From dbo.PackageTypeDetai' +
        'l WHERE PackageTypeNo = pt2.PackageTypeNo)'
      ') AS TOTAL_AM3'
      ''
      ''
      'FROM  Client Verk'
      
        'Inner Join PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.Clie' +
        'ntNo'
      
        'Inner Join LogicalInventoryPoint lip ON pip.PhysicalInventoryPoi' +
        'ntNo = lip.PhysicalInventoryPointNo'
      
        'INNER JOIN PackageNumber pn ON pn.LogicalInventoryPointNo = lip.' +
        'LogicalInventoryPointNo'
      
        'Inner Join PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageTypeN' +
        'o'
      
        'Inner Join PackageTypeDetail ptd '#9'ON ptd.PackageTypeNo = pt.Pack' +
        'ageTypeNo'
      
        'Inner Join productLength PDL ON PDL.ProductLengthNo = ptd.Produc' +
        'tLengthNo'
      'Inner Join Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Inner Join ProductGroup pg ON pg.ProductGroupNo = pd.ProductGrou' +
        'pNo'
      'WHERE pn.Status = 1'
      'AND Verk.SalesRegionNo = 741'
      'AND pip.PhyInvPointnameNo = 491'
      'AND LIP.LogicalInventoryPointNo = 10312'
      'AND Verk.ClientNo  = 232'
      
        'AND 1 = (Select Count(PackageTypeNo) From PackageTypeDetail WHER' +
        'E PackageTypeNo = ptd.PackageTypeNo)'
      'group by pdl.ActualLengthMM Order by pdl.ActualLengthMM'
      ''
      '')
    Left = 256
    Top = 528
    object cds_PcsPerLenPercentOfTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PercentOfTotal'
      DisplayFormat = '###.00'
      Calculated = True
    end
    object cds_PcsPerLenAKTUELLÄNGD: TFloatField
      FieldName = 'AKTUELL'#196'NGD'
      Origin = '[AKTUELL'#196'NGD]'
      Required = True
    end
    object cds_PcsPerLenSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ReadOnly = True
    end
    object cds_PcsPerLenAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
    object cds_PcsPerLenPAKET: TIntegerField
      FieldName = 'PAKET'
      Origin = 'PAKET'
      ReadOnly = True
    end
    object cds_PcsPerLenTOTAL_AM3: TFloatField
      FieldName = 'TOTAL_AM3'
      Origin = 'TOTAL_AM3'
      ReadOnly = True
    end
  end
  object cds_InvSum: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      ''
      'Select distinct '
      'Cy.CityName AS LAGERST'#196'LLE,'
      'SPE.SpeciesName AS TS,'
      'Gr.GradeName AS KV,'
      'pg.ActualThicknessMM AS ATMM,'
      'pg.ActualWidthMM AS ABMM,'
      'SUR.SurfacingName AS UT,'
      'pc.ProductCategoryName AS IMP,'
      'SUM(pt.Totalm3Actual) AS AM3,'
      'SUM(pt.TotalMFBMNominal) AS MFBM,'
      'SUM(pt.TotalNoOfPieces) AS STYCK,'
      'count(pn.PackageNo) AS PAKET,'
      'pt.ProductNo,'
      'lip.PhysicalInventoryPointNo AS PIPNo'
      ''
      'FROM  Client Verk'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.' +
        'ClientNo'
      
        'Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventor' +
        'yPointNo = lip.PhysicalInventoryPointNo'
      
        'INNER JOIN PackageNumber pn ON pn.LogicalInventoryPointNo = lip.' +
        'LogicalInventoryPointNo'
      
        'Inner Join PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageTypeN' +
        'o'
      ''
      'Inner Join Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Inner Join ProductGroup pg ON pg.ProductGroupNo = pd.ProductGrou' +
        'pNo'
      
        'Inner Join dbo.ProductCategory'#9'pc'#9'ON pc.ProductCategoryNo = pg.P' +
        'roductCategoryNo'
      'Inner Join Species'#9'SPE'#9'ON SPE.SpeciesNo = pg.SpeciesNo'
      #9#9#9#9'AND SPE.LanguageCode = 1'
      'Inner Join Surfacing'#9'SUR'#9'ON SUR.SurfacingNo = pg.SurfacingNo'
      #9#9#9#9'AND SUR.LanguageCode = 1'
      'Inner Join Grade   '#9'Gr'#9'ON Gr.GradeNo = pd.GradeNo'
      #9#9#9#9'AND Gr.LanguageCode = 1'
      ''
      'Inner Join City'#9#9'Cy'#9'ON Cy.CityNo = pip.PhyInvPointNameNo'
      'LEFT OUTER JOIN Client cl ON cl.ClientNo = pip.OwnerNo'
      ''
      ''
      'WHERE pn.Status = 1'
      'AND Verk.SalesRegionNo = 3042'
      'AND Verk.ClientNo  = 741'
      ''
      'Group by SPE.SpeciesName, Gr.GradeName, SUR.SurfacingName,'
      'pt.ProductNo, lip.PhysicalInventoryPointNo, Cy.CityName,'
      'pg.ActualThicknessMM, pg.ActualWidthMM, pc.ProductCategoryName'
      ' '
      '')
    Left = 160
    Top = 528
    object cds_InvSumLAGERSTÄLLE: TStringField
      FieldName = 'LAGERST'#196'LLE'
      Origin = '[LAGERST'#196'LLE]'
      Size = 50
    end
    object cds_InvSumTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      Required = True
      Size = 30
    end
    object cds_InvSumKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_InvSumATMM: TFloatField
      FieldName = 'ATMM'
      Origin = 'ATMM'
    end
    object cds_InvSumABMM: TFloatField
      FieldName = 'ABMM'
      Origin = 'ABMM'
    end
    object cds_InvSumUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      Required = True
      Size = 30
    end
    object cds_InvSumIMP: TStringField
      FieldName = 'IMP'
      Origin = 'IMP'
      Size = 40
    end
    object cds_InvSumAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.000'
    end
    object cds_InvSumMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      ReadOnly = True
      DisplayFormat = '#,###,###.000'
    end
    object cds_InvSumSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ReadOnly = True
    end
    object cds_InvSumPAKET: TIntegerField
      FieldName = 'PAKET'
      Origin = 'PAKET'
      ReadOnly = True
    end
    object cds_InvSumProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cds_InvSumPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
  end
  object cds_PkgList: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'VIS_VIDA.dbo.PackageNumber'
    SQL.Strings = (
      'Select distinct'
      '0 AS PKT,'
      ''
      'pd.ProductNo,'
      'pd.ProductDisplayName AS PRODUKT,'
      'pt.PackageTypeNo,'
      'pn.PackageNo,'
      'pn.SupplierCode,'
      'pg.ActualThicknessMM AS AT,'
      'pg.ActualWidthMM AS AB,'
      ''
      'pt.TotalNoOfPieces AS STYCK,'
      'CASE WHEN PTL.STD_Length = 0 THEN PTL.PcsPerLength'
      'ELSE '#39#39
      'END AS STYCKPERL'#196'NGD,'
      'CAST(0.0 AS Float) AS L1,'
      'CAST(0.0 AS Float) AS L2,'
      'CAST(0.0 AS Float) AS L3,'
      'CAST(0.0 AS Float) AS L4,'
      'CAST(0.0 AS Float) AS L5,'
      'CAST(0.0 AS Float) AS L6,'
      'CAST(0.0 AS Float) AS L7,'
      'CAST(0.0 AS Float) AS L8,'
      'CAST(0.0 AS Float) AS L9,'
      'CAST(0.0 AS Float) AS L10,'
      'CAST(0.0 AS Float) AS L11,'
      'CAST(0.0 AS Float) AS L12,'
      'CAST(0.0 AS Float) AS L13,'
      'CAST(0.0 AS Float) AS L14,'
      'CAST(0.0 AS Float) AS L15,'
      'CAST(0.0 AS Float) AS L16,'
      'CAST(0.0 AS Float) AS L17,'
      'CAST(0.0 AS Float) AS L18,'
      'CAST(0.0 AS Float) AS L19,'
      'CAST(0.0 AS Float) AS L20,'
      'CAST(0.0 AS Float) AS L21,'
      'CAST(0.0 AS Float) AS L22,'
      'CAST(0.0 AS Float) AS L23,'
      'CAST(0.0 AS Float) AS L24,'
      'CAST(0.0 AS Float) AS L25,'
      'CAST(0.0 AS Float) AS L26,'
      'CAST(0.0 AS Float) AS L27,'
      'CAST(0.0 AS Float) AS L28,'
      'CAST(0.0 AS Float) AS L29,'
      'CAST(0.0 AS Float) AS L30,'
      'CAST(0.0 AS Float) AS L31,'
      'CAST(0.0 AS Float) AS L32,'
      'CAST(0.0 AS Float) AS L33,'
      'CAST(0.0 AS Float) AS L34,'
      'CAST(0.0 AS Float) AS L35,'
      'CAST(0.0 AS Float) AS L36,'
      'CAST(0.0 AS Float) AS L37,'
      'CAST(0.0 AS Float) AS L38,'
      'CAST(0.0 AS Float) AS L39,'
      'CAST(0.0 AS Float) AS L40,'
      'CAST(0.0 AS Float) AS L41,'
      'CAST(0.0 AS Float) AS L42,'
      'CAST(0.0 AS Float) AS L43,'
      'CAST(0.0 AS Float) AS L44,'
      'CAST(0.0 AS Float) AS L45,'
      'pt.Totalm3Actual AS AM3,'
      'pt.Totalm3Nominal AS NM3,'
      'pt.TotalLinealMeterActualLength AS AM1,'
      'pt.TotalMFBMNominal AS MFBM,'
      'pt.TotalSQMofActualWidth AS AM2,'
      'pn.DateCreated AS TILLVERKAD,'
      'SPE.SpeciesName AS TS,'
      'pc.ProductCategoryName AS PC,'
      'Gr.GradeName AS KV,'
      'SUR.SurfacingName AS UT,'
      'PTL.STD_Length,'
      'Verk.ClientNo AS OwnerNo,'
      'Cy.CityName+'#39'/'#39'+lip.LogicalInventoryName AS Lager,'
      'lip.LogicalInventoryPointNo AS LIPNo,'
      'pip.PhysicalInventoryPointNo AS PIPNo,'
      'pn.Status,'
      'pn.Original_Price AS Pris,'
      
        'pn.Original_Price * pt.Totalm3Nominal AS V'#228'rde, va.VarugruppNamn' +
        ','
      'CAST(LS.AvgLength AS Float) AS AvgLength,'
      'pn.REFERENCE, pn.BL_NO,  pn.Info2'
      ''
      ''
      'FROM  dbo.Client Verk'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.' +
        'ClientNo'
      
        'Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventor' +
        'yPointNo = lip.PhysicalInventoryPointNo'
      
        'INNER JOIN PackageNumber pn ON pn.LogicalInventoryPointNo = lip.' +
        'LogicalInventoryPointNo'
      
        'LEFT Outer Join dbo.CertificationWood cw on cw.CertNo = pn.certN' +
        'o'
      
        'LEFT Outer join dbo.PackageSize ps on ps.PackageSizeNo = pn.Pack' +
        'age_Size'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      
        'Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecN' +
        'o'
      
        'Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.Pa' +
        'ckageTypeNo'
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.Varugrup' +
        'pNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      
        'Inner Join dbo.ProductCategory'#9'pc'#9'ON pc.ProductCategoryNo = pg.P' +
        'roductCategoryNo'
      'Inner Join dbo.Species'#9'SPE'#9'ON SPE.SpeciesNo = pg.SpeciesNo'
      #9#9#9#9'AND SPE.LanguageCode = 1'
      'Inner Join dbo.Surfacing'#9'SUR'#9'ON SUR.SurfacingNo = pg.SurfacingNo'
      #9#9#9#9'AND SUR.LanguageCode = 1'
      'Inner Join dbo.Grade   '#9'Gr'#9'ON Gr.GradeNo = pd.GradeNo'
      #9#9#9#9'AND Gr.LanguageCode = 1'
      ''
      'Inner Join City'#9#9'Cy'#9'ON Cy.CityNo = pip.PhyInvPointNameNo'
      'LEFT OUTER JOIN dbo.Client cl ON cl.ClientNo = pip.OwnerNo'
      'LEFT OUTER JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID'
      'LEFT OUTER JOIN dbo.WrapType wt ON wt.WrapTypeNo = pt.WrapType'
      'WHERE pn.Status = 2'
      'AND PTL.LengthGroupNo = 1'
      'AND Verk.SalesRegionNo = 741'
      'AND Verk.ClientNo  = 232'
      ''
      ''
      ''
      '')
    Left = 32
    Top = 528
    object cds_PkgListPKT: TIntegerField
      DisplayLabel = 'Pkt'
      FieldName = 'PKT'
      Origin = 'PKT'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = []
    end
    object cds_PkgListPRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      ProviderFlags = []
      Size = 150
    end
    object cds_PkgListPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = []
      Required = True
    end
    object cds_PkgListAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
      ProviderFlags = []
    end
    object cds_PkgListAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
      ProviderFlags = []
    end
    object cds_PkgListSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ProviderFlags = []
    end
    object cds_PkgListSTYCKPERLÄNGD: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'STYCKPERL'#196'NGD'
      Origin = '[STYCKPERL'#196'NGD]'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object cds_PkgListL1: TFloatField
      FieldName = 'L1'
      Origin = 'L1'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL2: TFloatField
      FieldName = 'L2'
      Origin = 'L2'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL3: TFloatField
      FieldName = 'L3'
      Origin = 'L3'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL4: TFloatField
      FieldName = 'L4'
      Origin = 'L4'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL5: TFloatField
      FieldName = 'L5'
      Origin = 'L5'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL6: TFloatField
      FieldName = 'L6'
      Origin = 'L6'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL7: TFloatField
      FieldName = 'L7'
      Origin = 'L7'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL8: TFloatField
      FieldName = 'L8'
      Origin = 'L8'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL9: TFloatField
      FieldName = 'L9'
      Origin = 'L9'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL10: TFloatField
      FieldName = 'L10'
      Origin = 'L10'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL11: TFloatField
      FieldName = 'L11'
      Origin = 'L11'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL12: TFloatField
      FieldName = 'L12'
      Origin = 'L12'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL13: TFloatField
      FieldName = 'L13'
      Origin = 'L13'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL14: TFloatField
      FieldName = 'L14'
      Origin = 'L14'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL15: TFloatField
      FieldName = 'L15'
      Origin = 'L15'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL16: TFloatField
      FieldName = 'L16'
      Origin = 'L16'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL17: TFloatField
      FieldName = 'L17'
      Origin = 'L17'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL18: TFloatField
      FieldName = 'L18'
      Origin = 'L18'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL19: TFloatField
      FieldName = 'L19'
      Origin = 'L19'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL20: TFloatField
      FieldName = 'L20'
      Origin = 'L20'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL21: TFloatField
      FieldName = 'L21'
      Origin = 'L21'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL22: TFloatField
      FieldName = 'L22'
      Origin = 'L22'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL23: TFloatField
      FieldName = 'L23'
      Origin = 'L23'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL24: TFloatField
      FieldName = 'L24'
      Origin = 'L24'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL25: TFloatField
      FieldName = 'L25'
      Origin = 'L25'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL26: TFloatField
      FieldName = 'L26'
      Origin = 'L26'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL27: TFloatField
      FieldName = 'L27'
      Origin = 'L27'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL28: TFloatField
      FieldName = 'L28'
      Origin = 'L28'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL29: TFloatField
      FieldName = 'L29'
      Origin = 'L29'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL30: TFloatField
      FieldName = 'L30'
      Origin = 'L30'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL31: TFloatField
      FieldName = 'L31'
      Origin = 'L31'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL32: TFloatField
      FieldName = 'L32'
      Origin = 'L32'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL33: TFloatField
      FieldName = 'L33'
      Origin = 'L33'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL34: TFloatField
      FieldName = 'L34'
      Origin = 'L34'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL35: TFloatField
      FieldName = 'L35'
      Origin = 'L35'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL36: TFloatField
      FieldName = 'L36'
      Origin = 'L36'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL37: TFloatField
      FieldName = 'L37'
      Origin = 'L37'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL38: TFloatField
      FieldName = 'L38'
      Origin = 'L38'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL39: TFloatField
      FieldName = 'L39'
      Origin = 'L39'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL40: TFloatField
      FieldName = 'L40'
      Origin = 'L40'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL41: TFloatField
      FieldName = 'L41'
      Origin = 'L41'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL42: TFloatField
      FieldName = 'L42'
      Origin = 'L42'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL43: TFloatField
      FieldName = 'L43'
      Origin = 'L43'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL44: TFloatField
      FieldName = 'L44'
      Origin = 'L44'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListL45: TFloatField
      FieldName = 'L45'
      Origin = 'L45'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_PkgListAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_PkgListNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_PkgListAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      ProviderFlags = []
      DisplayFormat = '#,###,###.0'
    end
    object cds_PkgListMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_PkgListAM2: TFloatField
      FieldName = 'AM2'
      Origin = 'AM2'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_PkgListTILLVERKAD: TSQLTimeStampField
      DisplayLabel = 'Tillverkad'
      FieldName = 'TILLVERKAD'
      Origin = 'TILLVERKAD'
      ProviderFlags = []
    end
    object cds_PkgListTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object cds_PkgListPC: TStringField
      FieldName = 'PC'
      Origin = 'PC'
      ProviderFlags = []
      Size = 40
    end
    object cds_PkgListKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_PkgListUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object cds_PkgListSTD_Length: TIntegerField
      FieldName = 'STD_Length'
      Origin = 'STD_Length'
      ProviderFlags = []
    end
    object cds_PkgListOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PkgListLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ProviderFlags = []
      Size = 101
    end
    object cds_PkgListLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_PkgListPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_PkgListStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PkgListPris: TFloatField
      FieldName = 'Pris'
      Origin = 'Pris'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object cds_PkgListVärde: TFloatField
      FieldName = 'V'#228'rde'
      Origin = '[V'#228'rde]'
      ProviderFlags = []
      DisplayFormat = '#,###,###.0'
    end
    object cds_PkgListVarugruppNamn: TStringField
      DisplayLabel = 'Varugrupp'
      FieldName = 'VarugruppNamn'
      Origin = 'VarugruppNamn'
      ProviderFlags = []
      Size = 35
    end
    object cds_PkgListAvgLength: TFloatField
      DisplayLabel = 'M/L'
      FieldName = 'AvgLength'
      Origin = 'AvgLength'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#####.00'
    end
    object cds_PkgListREFERENCE: TStringField
      DisplayLabel = 'Referens'
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_PkgListBL_NO: TStringField
      DisplayLabel = 'Info1'
      FieldName = 'BL_NO'
      Origin = 'BL_NO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_PkgListInfo2: TStringField
      FieldName = 'Info2'
      Origin = 'Info2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_PkgListPackageNo: TIntegerField
      DisplayLabel = 'PKTNR'
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_PkgListSupplierCode: TStringField
      DisplayLabel = 'PREFIX'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 3
    end
  end
  object cds_PkgNoList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct'
      '0 AS PKT,'
      ''
      'pd.ProductNo,'
      'pd.ProductDisplayName AS PRODUKT,'
      'pt.PackageTypeNo,'
      'pn.PackageNo,'
      'pn.SupplierCode,'
      'pg.ActualThicknessMM AS AT,'
      'pg.ActualWidthMM AS AB,'
      ''
      'pt.TotalNoOfPieces AS STYCK,'
      'CASE WHEN PTL.STD_Length = 0 THEN PTL.PcsPerLength'
      'ELSE '#39#39
      'END AS STYCKPERL'#196'NGD,'
      'CAST(0.0 AS Float) AS L1,'
      'CAST(0.0 AS Float) AS L2,'
      'CAST(0.0 AS Float) AS L3,'
      'CAST(0.0 AS Float) AS L4,'
      'CAST(0.0 AS Float) AS L5,'
      'CAST(0.0 AS Float) AS L6,'
      'CAST(0.0 AS Float) AS L7,'
      'CAST(0.0 AS Float) AS L8,'
      'CAST(0.0 AS Float) AS L9,'
      'CAST(0.0 AS Float) AS L10,'
      'CAST(0.0 AS Float) AS L11,'
      'CAST(0.0 AS Float) AS L12,'
      'CAST(0.0 AS Float) AS L13,'
      'CAST(0.0 AS Float) AS L14,'
      'CAST(0.0 AS Float) AS L15,'
      'CAST(0.0 AS Float) AS L16,'
      'CAST(0.0 AS Float) AS L17,'
      'CAST(0.0 AS Float) AS L18,'
      'CAST(0.0 AS Float) AS L19,'
      'CAST(0.0 AS Float) AS L20,'
      'CAST(0.0 AS Float) AS L21,'
      'CAST(0.0 AS Float) AS L22,'
      'CAST(0.0 AS Float) AS L23,'
      'CAST(0.0 AS Float) AS L24,'
      'CAST(0.0 AS Float) AS L25,'
      'CAST(0.0 AS Float) AS L26,'
      'CAST(0.0 AS Float) AS L27,'
      'CAST(0.0 AS Float) AS L28,'
      'CAST(0.0 AS Float) AS L29,'
      'CAST(0.0 AS Float) AS L30,'
      'CAST(0.0 AS Float) AS L31,'
      'CAST(0.0 AS Float) AS L32,'
      'CAST(0.0 AS Float) AS L33,'
      'CAST(0.0 AS Float) AS L34,'
      'CAST(0.0 AS Float) AS L35,'
      'CAST(0.0 AS Float) AS L36,'
      'CAST(0.0 AS Float) AS L37,'
      'CAST(0.0 AS Float) AS L38,'
      'CAST(0.0 AS Float) AS L39,'
      'CAST(0.0 AS Float) AS L40,'
      'CAST(0.0 AS Float) AS L41,'
      'CAST(0.0 AS Float) AS L42,'
      'CAST(0.0 AS Float) AS L43,'
      'CAST(0.0 AS Float) AS L44,'
      'CAST(0.0 AS Float) AS L45,'
      'pt.Totalm3Actual AS AM3,'
      'pt.Totalm3Nominal AS NM3,'
      'pt.TotalLinealMeterActualLength AS AM1,'
      'pt.TotalMFBMNominal AS MFBM,'
      'pt.TotalSQMofActualWidth AS AM2,'
      'pn.DateCreated AS TILLVERKAD,'
      'SPE.SpeciesName AS TS,'
      'pc.ProductCategoryName AS PC,'
      'Gr.GradeName AS KV,'
      'SUR.SurfacingName AS UT,'
      'PTL.STD_Length,'
      'Verk.ClientNo AS OwnerNo,'
      'Cy.CityName+'#39'/'#39'+lip.LogicalInventoryName AS Lager,'
      'lip.LogicalInventoryPointNo AS LIPNo,'
      'pip.PhysicalInventoryPointNo AS PIPNo,'
      
        'pn.Status, va.VarugruppNamn, CAST(pt.TotalLinealMeterActualLengt' +
        'h / pt.TotalNoOfPieces AS Float) AS AvgLength,'
      'pn.REFERENCE, pn.BL_NO,  pn.Info2'
      ''
      'FROM  dbo.Client Verk'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.' +
        'ClientNo'
      
        'Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventor' +
        'yPointNo = lip.PhysicalInventoryPointNo'
      
        'INNER JOIN PackageNumber pn ON pn.LogicalInventoryPointNo = lip.' +
        'LogicalInventoryPointNo'
      
        'LEFT Outer Join dbo.CertificationWood cw on cw.CertNo = pn.certN' +
        'o'
      
        'LEFT Outer join dbo.PackageSize ps on ps.PackageSizeNo = pn.Pack' +
        'age_Size'
      ''
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      
        'Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecN' +
        'o'
      
        'Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.Pa' +
        'ckageTypeNo'
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.Varugrup' +
        'pNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      
        'Inner Join dbo.ProductCategory'#9'pc'#9'ON pc.ProductCategoryNo = pg.P' +
        'roductCategoryNo'
      'Inner Join dbo.Species'#9'SPE'#9'ON SPE.SpeciesNo = pg.SpeciesNo'
      #9#9#9#9'AND SPE.LanguageCode = 1'
      'Inner Join dbo.Surfacing'#9'SUR'#9'ON SUR.SurfacingNo = pg.SurfacingNo'
      #9#9#9#9'AND SUR.LanguageCode = 1'
      'Inner Join dbo.Grade   '#9'Gr'#9'ON Gr.GradeNo = pd.GradeNo'
      #9#9#9#9'AND Gr.LanguageCode = 1'
      ''
      'Inner Join City'#9#9'Cy'#9'ON Cy.CityNo = pip.PhyInvPointNameNo'
      'LEFT OUTER JOIN dbo.Client cl ON cl.ClientNo = pip.OwnerNo'
      'LEFT OUTER JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID'
      'LEFT OUTER JOIN dbo.WrapType wt ON wt.WrapTypeNo = pt.WrapType'
      'WHERE pn.Status = 2'
      'AND PTL.LengthGroupNo = 1'
      'AND Verk.SalesRegionNo = 741'
      'AND Verk.ClientNo  = 232'
      ''
      ''
      ''
      '')
    Left = 344
    Top = 528
    object cds_PkgNoListPKT: TIntegerField
      FieldName = 'PKT'
      Origin = 'PKT'
      ReadOnly = True
      Required = True
    end
    object cds_PkgNoListProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object cds_PkgNoListPRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      Size = 150
    end
    object cds_PkgNoListPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      Required = True
    end
    object cds_PkgNoListPackageNo: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object cds_PkgNoListSupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PkgNoListAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object cds_PkgNoListAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object cds_PkgNoListSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object cds_PkgNoListSTYCKPERLÄNGD: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'STYCKPERL'#196'NGD'
      Origin = '[STYCKPERL'#196'NGD]'
      ReadOnly = True
      Size = 255
    end
    object cds_PkgNoListL1: TFloatField
      FieldName = 'L1'
      Origin = 'L1'
      ReadOnly = True
    end
    object cds_PkgNoListL2: TFloatField
      FieldName = 'L2'
      Origin = 'L2'
      ReadOnly = True
    end
    object cds_PkgNoListL3: TFloatField
      FieldName = 'L3'
      Origin = 'L3'
      ReadOnly = True
    end
    object cds_PkgNoListL4: TFloatField
      FieldName = 'L4'
      Origin = 'L4'
      ReadOnly = True
    end
    object cds_PkgNoListL5: TFloatField
      FieldName = 'L5'
      Origin = 'L5'
      ReadOnly = True
    end
    object cds_PkgNoListL6: TFloatField
      FieldName = 'L6'
      Origin = 'L6'
      ReadOnly = True
    end
    object cds_PkgNoListL7: TFloatField
      FieldName = 'L7'
      Origin = 'L7'
      ReadOnly = True
    end
    object cds_PkgNoListL8: TFloatField
      FieldName = 'L8'
      Origin = 'L8'
      ReadOnly = True
    end
    object cds_PkgNoListL9: TFloatField
      FieldName = 'L9'
      Origin = 'L9'
      ReadOnly = True
    end
    object cds_PkgNoListL10: TFloatField
      FieldName = 'L10'
      Origin = 'L10'
      ReadOnly = True
    end
    object cds_PkgNoListL11: TFloatField
      FieldName = 'L11'
      Origin = 'L11'
      ReadOnly = True
    end
    object cds_PkgNoListL12: TFloatField
      FieldName = 'L12'
      Origin = 'L12'
      ReadOnly = True
    end
    object cds_PkgNoListL13: TFloatField
      FieldName = 'L13'
      Origin = 'L13'
      ReadOnly = True
    end
    object cds_PkgNoListL14: TFloatField
      FieldName = 'L14'
      Origin = 'L14'
      ReadOnly = True
    end
    object cds_PkgNoListL15: TFloatField
      FieldName = 'L15'
      Origin = 'L15'
      ReadOnly = True
    end
    object cds_PkgNoListL16: TFloatField
      FieldName = 'L16'
      Origin = 'L16'
      ReadOnly = True
    end
    object cds_PkgNoListL17: TFloatField
      FieldName = 'L17'
      Origin = 'L17'
      ReadOnly = True
    end
    object cds_PkgNoListL18: TFloatField
      FieldName = 'L18'
      Origin = 'L18'
      ReadOnly = True
    end
    object cds_PkgNoListL19: TFloatField
      FieldName = 'L19'
      Origin = 'L19'
      ReadOnly = True
    end
    object cds_PkgNoListL20: TFloatField
      FieldName = 'L20'
      Origin = 'L20'
      ReadOnly = True
    end
    object cds_PkgNoListL21: TFloatField
      FieldName = 'L21'
      Origin = 'L21'
      ReadOnly = True
    end
    object cds_PkgNoListL22: TFloatField
      FieldName = 'L22'
      Origin = 'L22'
      ReadOnly = True
    end
    object cds_PkgNoListL23: TFloatField
      FieldName = 'L23'
      Origin = 'L23'
      ReadOnly = True
    end
    object cds_PkgNoListL24: TFloatField
      FieldName = 'L24'
      Origin = 'L24'
      ReadOnly = True
    end
    object cds_PkgNoListL25: TFloatField
      FieldName = 'L25'
      Origin = 'L25'
      ReadOnly = True
    end
    object cds_PkgNoListL26: TFloatField
      FieldName = 'L26'
      Origin = 'L26'
      ReadOnly = True
    end
    object cds_PkgNoListL27: TFloatField
      FieldName = 'L27'
      Origin = 'L27'
      ReadOnly = True
    end
    object cds_PkgNoListL28: TFloatField
      FieldName = 'L28'
      Origin = 'L28'
      ReadOnly = True
    end
    object cds_PkgNoListL29: TFloatField
      FieldName = 'L29'
      Origin = 'L29'
      ReadOnly = True
    end
    object cds_PkgNoListL30: TFloatField
      FieldName = 'L30'
      Origin = 'L30'
      ReadOnly = True
    end
    object cds_PkgNoListL31: TFloatField
      FieldName = 'L31'
      Origin = 'L31'
      ReadOnly = True
    end
    object cds_PkgNoListL32: TFloatField
      FieldName = 'L32'
      Origin = 'L32'
      ReadOnly = True
    end
    object cds_PkgNoListL33: TFloatField
      FieldName = 'L33'
      Origin = 'L33'
      ReadOnly = True
    end
    object cds_PkgNoListL34: TFloatField
      FieldName = 'L34'
      Origin = 'L34'
      ReadOnly = True
    end
    object cds_PkgNoListL35: TFloatField
      FieldName = 'L35'
      Origin = 'L35'
      ReadOnly = True
    end
    object cds_PkgNoListL36: TFloatField
      FieldName = 'L36'
      Origin = 'L36'
      ReadOnly = True
    end
    object cds_PkgNoListL37: TFloatField
      FieldName = 'L37'
      Origin = 'L37'
      ReadOnly = True
    end
    object cds_PkgNoListL38: TFloatField
      FieldName = 'L38'
      Origin = 'L38'
      ReadOnly = True
    end
    object cds_PkgNoListL39: TFloatField
      FieldName = 'L39'
      Origin = 'L39'
      ReadOnly = True
    end
    object cds_PkgNoListL40: TFloatField
      FieldName = 'L40'
      Origin = 'L40'
      ReadOnly = True
    end
    object cds_PkgNoListL41: TFloatField
      FieldName = 'L41'
      Origin = 'L41'
      ReadOnly = True
    end
    object cds_PkgNoListL42: TFloatField
      FieldName = 'L42'
      Origin = 'L42'
      ReadOnly = True
    end
    object cds_PkgNoListL43: TFloatField
      FieldName = 'L43'
      Origin = 'L43'
      ReadOnly = True
    end
    object cds_PkgNoListL44: TFloatField
      FieldName = 'L44'
      Origin = 'L44'
      ReadOnly = True
    end
    object cds_PkgNoListL45: TFloatField
      FieldName = 'L45'
      Origin = 'L45'
      ReadOnly = True
    end
    object cds_PkgNoListAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      DisplayFormat = '#,###,###.000'
    end
    object cds_PkgNoListNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      DisplayFormat = '#,###,###.000'
    end
    object cds_PkgNoListAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      DisplayFormat = '#,###,###.0'
    end
    object cds_PkgNoListMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      DisplayFormat = '#,###,###.000'
    end
    object cds_PkgNoListAM2: TFloatField
      FieldName = 'AM2'
      Origin = 'AM2'
      DisplayFormat = '#,###,###.000'
    end
    object cds_PkgNoListTILLVERKAD: TSQLTimeStampField
      DisplayLabel = 'Tillverkad'
      FieldName = 'TILLVERKAD'
      Origin = 'TILLVERKAD'
    end
    object cds_PkgNoListTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      Required = True
      Size = 30
    end
    object cds_PkgNoListPC: TStringField
      FieldName = 'PC'
      Origin = 'PC'
      Size = 40
    end
    object cds_PkgNoListKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_PkgNoListUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      Required = True
      Size = 30
    end
    object cds_PkgNoListSTD_Length: TIntegerField
      FieldName = 'STD_Length'
      Origin = 'STD_Length'
    end
    object cds_PkgNoListOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      Required = True
    end
    object cds_PkgNoListLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ReadOnly = True
      Size = 101
    end
    object cds_PkgNoListLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_PkgNoListPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      Required = True
    end
    object cds_PkgNoListStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_PkgNoListVarugruppNamn: TStringField
      DisplayLabel = 'Varugrupp'
      FieldName = 'VarugruppNamn'
      Origin = 'VarugruppNamn'
      Size = 35
    end
    object cds_PkgNoListREFERENCE: TStringField
      DisplayLabel = 'Referens'
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      Size = 30
    end
    object cds_PkgNoListAvgLength: TFloatField
      FieldName = 'AvgLength'
      Origin = 'AvgLength'
      ReadOnly = True
      DisplayFormat = '#####.00'
    end
    object cds_PkgNoListBL_NO: TStringField
      DisplayLabel = 'Info1'
      FieldName = 'BL_NO'
      Origin = 'BL_NO'
      Size = 30
    end
    object cds_PkgNoListInfo2: TStringField
      FieldName = 'Info2'
      Origin = 'Info2'
      Size = 30
    end
  end
  object cds_Props: TFDQuery
    AfterInsert = cds_PropsAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Name = :Name'
      '')
    Left = 231
    Top = 136
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NAME'
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
  object cds_OtherLengths: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select distinct Count(pn.PackageNo) AS PKT, LS.NoOfLengths AS An' +
        'talL'#228'ngder, PL.ActualLengthMM AS ALMM'
      ''
      'FROM  dbo.Client Verk'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.' +
        'ClientNo'
      
        'Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventor' +
        'yPointNo = lip.PhysicalInventoryPointNo'
      
        'INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = ' +
        'lip.LogicalInventoryPointNo'
      ''
      
        'Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      
        'Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecN' +
        'o'
      
        'Inner Join dbo.PackageTypeDetail ptd '#9'ON ptd.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductLength pl '#9'ON pl.ProductLengthNo = ptd.Pro' +
        'ductLengthNo'
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      ''
      ''
      'WHERE Verk.ClientNo = :OwnerNo'
      'AND pn.Status = 1'
      ''
      'AND pt.ProductNo = :ProductNo'
      'AND lip.LogicalInventoryPointNo = :LIPNo'
      ''
      'AND (LS.NoOfLengths > 1'
      'OR pt.PackageTypeNo not in (Select PTL.PackageTypeNo'
      'FROM dbo.PkgTypeLengthDtl PTL'
      'WHERE'
      'PTL.LengthGroupNo = :LengthGroupNo'
      'AND PTL.STD_Length = 1))'
      ''
      'Group by LS.NoOfLengths, PL.ActualLengthMM'
      '')
    Left = 327
    Top = 136
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LENGTHGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_OtherLengthsPKT: TIntegerField
      FieldName = 'PKT'
      Origin = 'PKT'
      ReadOnly = True
    end
    object cds_OtherLengthsAntalLängder: TIntegerField
      FieldName = 'AntalL'#228'ngder'
      Origin = '[AntalL'#228'ngder]'
    end
    object cds_OtherLengthsALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
  end
  object cds_ProductLengthInGroup: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT ActualLengthMM AS ALMM,'
      'NominalLengthMM AS NLMM,'
      'NominalLengthFEET AS FOT,'
      'ActualLengthINCH AS TUM'
      'FROM dbo.ProductLengthGroup PLG'
      
        'Inner Join dbo.ProductLength PL ON PL.ProductLengthNo = PLG.Prod' +
        'uctLengthNo'
      'WHERE GroupNo = :GroupNo'
      'ORDER BY ActualLengthMM'
      '')
    Left = 704
    Top = 400
    ParamData = <
      item
        Name = 'GROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProductLengthInGroupALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
    object cds_ProductLengthInGroupNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
      Required = True
    end
    object cds_ProductLengthInGroupFOT: TFloatField
      FieldName = 'FOT'
      Origin = 'FOT'
    end
    object cds_ProductLengthInGroupTUM: TStringField
      FieldName = 'TUM'
      Origin = 'TUM'
      FixedChar = True
      Size = 15
    end
  end
  object cds_LengthGroup: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT distinct PG.GroupNo, GroupName, Count(PLG.ProductLengthNo' +
        ') AS NoOfLengths'
      'FROM dbo.ProductLengthGroupName  PG'
      
        'Inner Join dbo.ProductLengthGroup PLG ON PLG.GroupNo = PG.GroupN' +
        'o'
      'WHERE PG.Changed = 0'
      'GROUP BY PG.GroupNo, GroupName'
      'ORDER BY GroupName'
      '')
    Left = 328
    Top = 24
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
    object cds_LengthGroupNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      Origin = 'NoOfLengths'
      ReadOnly = True
    end
  end
  object sq_Varugrupp: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select  s.VarugruppNamn, S.VarugruppNo,'
      'S.VarugruppNo AS VarugruppID'
      'From dbo.Varugrupp S'
      'Order by S.Varugruppnamn'
      '')
    Left = 464
    Top = 256
    object sq_VarugruppVarugruppNamn: TStringField
      FieldName = 'VarugruppNamn'
      Origin = 'VarugruppNamn'
      Size = 35
    end
    object sq_VarugruppVarugruppNo: TIntegerField
      FieldName = 'VarugruppNo'
      Origin = 'VarugruppNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_VarugruppVarugruppID: TIntegerField
      FieldName = 'VarugruppID'
      Origin = 'VarugruppID'
      Required = True
    end
  end
  object sq_UpdatePrice: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'UPDATE dbo.PackageNumber'
      'SET Original_Price = :Price,'
      'Update_Price_Date = :Update_Price_Date'
      'WHERE dbo.PackageNumber.PackageNo = :PackageNo'
      'AND dbo.PackageNumber.SupplierCode = :SupplierCode'
      ''
      ''
      ''
      '')
    Left = 328
    Top = 240
    ParamData = <
      item
        Name = 'PRICE'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'UPDATE_PRICE_DATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
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
  end
  object sq_OneUniquePkg: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct'
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PN.PackageNo'#9#9'        AS PACKAGENO,'
      '        PN.PackageTypeNo'#9'        AS PACKAGETYPENO,'
      '        PN.SupplierCode'#9'                AS SUPP_CODE,'
      '        PT.Totalm3Actual                AS  M3_NET,'
      '        PT.TotalNoOfPieces              AS  PCS,'
      '        PT.Totalm3Nominal'#9#9'AS M3_NOM,'
      #9'PT.TotalSQMofActualWidth'#9'AS KVM,'
      #9'PT.TotalLinealMeterActualLength AS LOPM,'
      '        PT.ProductNo                    AS PRODUCTNO,'
      '        Cy.CityName                     AS INVENTORY,'
      '        PT.OnSticks                     AS ONSTICKS,'
      '        PTL.PcsPerLength                AS PCS_PER_LENGTH,'
      '        C.ClientName                    AS OWNER,'
      '        PIP.OwnerNo                     AS OWNERNO,'
      '        PN.LogicalInventoryPointNo      AS LOG_INVENTORY_NO,'
      '        BC.BARCODE                      AS BAR_CODE,'
      '        PT.BarCodeID                    AS BARCODE_ID,'
      '        GS.GradeStamp                   AS GRADE_STAMP,'
      '        PT.GradeStamp                   AS GRADESTAMPNO,'
      '        PT.PackageHeight                AS PKG_HEIGHT,'
      '        PT.PackageWidth                 AS PKGWIDTH,'
      '        PT.MiniBundled                  AS MINI_BUNDLE,'
      '        PT.ShrinkWrap                   AS SHRINK_WRAP,'
      '        WT.WrapType                     AS WRAP_TYPE,'
      '        PT.WrapType                     AS WRAPTYPENO,'
      '        PN.SupplierNo                   AS SUPPLIERNO,'
      '        PN.PackageTypeNo'#9'        AS OLD_PACKAGETYPENO,'
      '        PIP.PhysicalInventoryPointNo    AS PIP,'
      '        PN.Status'
      ''
      ''
      ''
      ''
      'FROM       dbo.PackageNumber             PN'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      
        '        Inner Join dbo.LogicalInventoryPoint LIP ON LIP.LogicalI' +
        'nventoryPointNo = PN.LogicalInventoryPointNo'
      
        '        Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.Physica' +
        'lInventoryPointNo = LIP.PhysicalInventoryPointNo'
      
        '        Inner Join dbo.City Cy  ON Cy.CityNo = PIP.PhyInvPointNa' +
        'meNo'
      '        Inner Join dbo.Client C ON C.ClientNo = PIP.OwnerNo'
      
        '        LEFT OUTER JOIN DBO.BARCODE BC ON BC.BarCodeNo = PT.BarC' +
        'odeID'
      
        '        LEFT OUTER JOIN DBO.GRADESTAMP GS ON GS.GradeStampNo = P' +
        'T.GradeStamp'
      
        '        LEFT OUTER JOIN DBO.WrapType WT ON WT.WrapTypeNo = PT.Wr' +
        'apType'
      ''
      'WHERE     PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      '-- AND PN.Status = 1'
      ''
      ''
      'AND PIP.PhyInvPointNameNo in'
      '(Select PhyInvPointNameNo from'
      'PHYSICALINVENTORYPOINT'
      'where OwnerNo = :UserCompanyLoggedIn)'
      '')
    Left = 144
    Top = 352
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
      end
      item
        Name = 'USERCOMPANYLOGGEDIN'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_OneUniquePkgPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 150
    end
    object sq_OneUniquePkgPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_OneUniquePkgPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
    end
    object sq_OneUniquePkgSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_OneUniquePkgM3_NET: TFloatField
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
    end
    object sq_OneUniquePkgPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
    end
    object sq_OneUniquePkgM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
    end
    object sq_OneUniquePkgKVM: TFloatField
      FieldName = 'KVM'
      Origin = 'KVM'
    end
    object sq_OneUniquePkgLOPM: TFloatField
      FieldName = 'LOPM'
      Origin = 'LOPM'
    end
    object sq_OneUniquePkgPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
    end
    object sq_OneUniquePkgINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Origin = 'INVENTORY'
      Size = 50
    end
    object sq_OneUniquePkgONSTICKS: TIntegerField
      FieldName = 'ONSTICKS'
      Origin = 'ONSTICKS'
    end
    object sq_OneUniquePkgPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Origin = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OneUniquePkgOWNER: TStringField
      FieldName = 'OWNER'
      Origin = 'OWNER'
      Size = 80
    end
    object sq_OneUniquePkgOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
      Origin = 'OWNERNO'
    end
    object sq_OneUniquePkgLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
      Origin = 'LOG_INVENTORY_NO'
    end
    object sq_OneUniquePkgBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Origin = 'BAR_CODE'
      FixedChar = True
    end
    object sq_OneUniquePkgBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
      Origin = 'BARCODE_ID'
    end
    object sq_OneUniquePkgGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
      Origin = 'GRADE_STAMP'
      FixedChar = True
    end
    object sq_OneUniquePkgGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
      Origin = 'GRADESTAMPNO'
    end
    object sq_OneUniquePkgPKG_HEIGHT: TIntegerField
      FieldName = 'PKG_HEIGHT'
      Origin = 'PKG_HEIGHT'
    end
    object sq_OneUniquePkgPKGWIDTH: TIntegerField
      FieldName = 'PKGWIDTH'
      Origin = 'PKGWIDTH'
    end
    object sq_OneUniquePkgMINI_BUNDLE: TIntegerField
      FieldName = 'MINI_BUNDLE'
      Origin = 'MINI_BUNDLE'
    end
    object sq_OneUniquePkgSHRINK_WRAP: TIntegerField
      FieldName = 'SHRINK_WRAP'
      Origin = 'SHRINK_WRAP'
    end
    object sq_OneUniquePkgWRAP_TYPE: TStringField
      FieldName = 'WRAP_TYPE'
      Origin = 'WRAP_TYPE'
      FixedChar = True
      Size = 15
    end
    object sq_OneUniquePkgWRAPTYPENO: TIntegerField
      FieldName = 'WRAPTYPENO'
      Origin = 'WRAPTYPENO'
    end
    object sq_OneUniquePkgSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Origin = 'SUPPLIERNO'
    end
    object sq_OneUniquePkgOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
      Origin = 'OLD_PACKAGETYPENO'
    end
    object sq_OneUniquePkgPIP: TIntegerField
      FieldName = 'PIP'
      Origin = 'PIP'
      Required = True
    end
    object sq_OneUniquePkgStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
  end
  object sq_Temp_Inventory: TFDQuery
    AutoCalcFields = False
    Connection = dmsConnector.FDConnection1
    Left = 888
    Top = 144
  end
  object sq_LogInvByOwnerCity: TFDQuery
    AutoCalcFields = False
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select LIP.LogicalInventoryName, LIP.LogicalInventoryPointNo'
      'FROM'
      'dbo.PhysicalInventoryPoint PIP '
      
        'Inner Join dbo.LogicalInventoryPoint LIP ON  LIP.PhysicalInvento' +
        'ryPointNo = PIP.PhysicalInventoryPointNo'
      ''
      ''
      'WHERE'
      ' PIP.OwnerNo = :OwnerNo'
      'AND PIP.PhyInvPointNameNo = :CityNo'
      'AND LIP.SequenceNo = 1'
      '')
    Left = 888
    Top = 208
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CITYNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LogInvByOwnerCityLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Origin = 'LogicalInventoryName'
      Size = 50
    end
    object sq_LogInvByOwnerCityLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      Required = True
    end
  end
  object sq_Grades: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select GradeName, GradeNo'
      'From Grade'
      'where LanguageCode = 1'
      'Order by GradeName'
      '')
    Left = 568
    Top = 408
    object sq_GradesGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object sq_GradesGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_Species: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select SpeciesName, SpeciesNo'
      'From Species'
      'where LanguageCode = 1'
      'Order by SpeciesName'
      '')
    Left = 568
    Top = 480
    object sq_SpeciesSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object sq_SpeciesSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GroupLengths: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct pl.ActualLengthMM'
      'FROM dbo.ProductLengthGroup PLG'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = plg.Prod' +
        'uctLengthNo'
      'WHERE PLG.GroupNo = :GroupNo'
      'ORDER BY pl.ActualLengthMM'
      '')
    Left = 704
    Top = 496
    ParamData = <
      item
        Name = 'GROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GroupLengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
  end
  object sq_PkgType_InvoiceByCSD: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.PkgType_Invoice'
      'FROM dbo.PkgType_Invoice'
      
        'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = dbo.PkgType' +
        '_Invoice.LoadNo'
      'WHERE LSP.ShippingPlanNo = :ShippingPlanNo'
      'AND dbo.PkgType_Invoice.InternalInvoiceNo = -1'
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
      'LinealMeterNominalLength,'
      'OrderVolume,'
      'PriceVolume)'
      ''
      'SELECT DISTINCT'
      'LD.PackageTypeNo,'
      'PTD.ProductLengthNo,'
      '-1,'
      'LD.LoadNo,'
      'LD.LoadDetailNo,'
      'PTD.NoOfPieces ,'
      ''
      '-- m3 actual'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) '
      '-- Round Stolp'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces'
      
        '-- SET @m3Act = PI() * SQUARE (@ActThick/100/2) * @ActWidth / 10' +
        '0 * @NoOfPieces'
      'As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3) '
      ''
      'END AS M3Actual,'
      
        '-- PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.ActualWidthM' +
        'M/100) * PTD.NoOfPieces,'
      ''
      '-- M3NOMINAL *****************************************'
      'CASE WHEN PG.SequenceNo = 0 THEN '
      'CASE'
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
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'END'
      'WHEN PG.SequenceNo = 1 THEN '
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3) '
      'END AS M3NOMINAL,'
      ''
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS MFBMNominal,'
      ''
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS SQMofActualWidth,'
      ''
      'CASE WHEN PG.SequenceNo = 0 THEN PTD.SQMofCoveringWidth'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS SQMofCoveringWidth,'
      ''
      '--**********************************'
      '--**********************************'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3)'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST((PG.ActualWidthMM / 100 * PTD.NoOfPieces)   As decima' +
        'l(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS LinealMeterActualLength,'
      ''
      
        '-- ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal' +
        '(10,3)),3) AS LinealMeterActualLength,'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3)'
      ''
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      'END AS m3ActualSizeNomLength,'
      ''
      
        '-- m3NomSizeActualLength ***************************************' +
        '******'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST('
      '(PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)'
      ' As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS m3NomSizeActualLength,'
      ''
      'PTD.CreatedUser,'
      'PTD.ModifiedUser,'
      'PTD.DateCreated,'
      ''
      '--**********************************'
      '--**********************************'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'CASE '
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
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
      'END --WHEN PG.SequenceNo = 0 THEN'
      ''
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST((PG.ActualWidthMM / 100 * PTD.NoOfPieces)   As decima' +
        'l(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      '--END'
      ''
      'END AS NM1,'
      ''
      '-- OrderVolume *************************************************'
      '-- OrderVolume *************************************************'
      '-- OrderVolume *************************************************'
      'CASE '
      ''
      '-- M3NOMINAL *****************************************'
      'WHEN VU.VolumeUnitName = '#39'm3 nDxnL'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      '-- Random length'
      'CASE'
      'WHEN PL_CSD.ProductLengthGroupNo > 0  AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
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
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      'END'
      '-- M3NOMINAL *****************************************'
      ''
      'WHEN VU.VolumeUnitName = '#39'kvm aB'#39' THEN'
      'CASE'
      
        'WHEN PG.SequenceNo = 0 THEN ROUND(CAST((       PTD.SQMofActualWi' +
        'dth )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN VU.VolumeUnitName = '#39'Lopm a'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      ''
      'WHEN VU.VolumeUnitName = '#39'Stycketal'#39' THEN PTD.NoOfPieces'
      ''
      'WHEN VU.VolumeUnitName = '#39'm3 FDxaL'#39' THEN'
      'CASE'
      ' WHEN PG.SequenceNo = 0 THEN'
      
        ' ROUND(CAST((PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWi' +
        'dthMM *'
      ' PL.ActualLengthMM) / (1000 * 1000 * 1000) As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 1 THEN'
      
        ' ROUND(CAST((pi() * SQUARE(PG.ActualWidthMM/100/2) * (PG.ActualT' +
        'hicknessMM/100) * PTD.NoOfPieces)  As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'WHEN VU.VolumeUnitName = '#39'Lopm n'#39' THEN'
      'CASE'
      'WHEN PG.SequenceNo = 0 THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000)) As decima' +
        'l(10,3)),3)'
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
        ' decimal(10,3)),3)'
      ''
      'END -- WHEN PG.SequenceNo = 0 THEN'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST((PG.ActualWidthMM / 100 * PTD.NoOfPieces)   As decima' +
        'l(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      ''
      'END --NM1'
      ''
      'WHEN VU.VolumeUnitName = '#39'MFBM Nom'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN VU.VolumeUnitName = '#39'Packages'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN 1'
      'WHEN PG.SequenceNo = 1 THEN 1'
      'WHEN PG.SequenceNo = 2 THEN 1'
      'END'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'WHEN VU.VolumeUnitName = '#39'm3 FDxnL'#39' THEN'
      'CASE'
      'WHEN PG.SequenceNo = 0 THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3)'
      ''
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      'END --AS m3ActualSizeNomLength,'
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      ''
      '-- m3 nDxaL *********************************************'
      ''
      '-- WHEN VU.VolumeUnitName = '#39'm3 nDxaL'#39' THEN'
      '-- CASE WHEN PG.SequenceNo = 1 THEN'
      '-- ROUND(CAST(('
      '-- PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '-- CASE WHEN 0 > 0.05'
      
        '-- THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * ' +
        '1000 * 1000)'
      '--  As decimal(10,3)),3) -- AS m3NomSizeActualLength,'
      '-- WHEN PG.SequenceNo = 1 THEN 0'
      '-- WHEN PG.SequenceNo = 2 THEN 0'
      '-- END'
      '-- m3 nDxaL *********************************************'
      'WHEN VU.VolumeUnitName = '#39'm3 nDxaL'#39' THEN'
      
        'CASE WHEN PG.SequenceNo = 0 THEN ROUND(CAST((PTD.NoOfPieces * OL' +
        '.NominalThicknessMM * OL.NominalWidthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)  As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      ''
      ''
      'END AS OrderVolume,'
      ''
      ''
      '--PriceVolume ********************************************'
      '--PriceVolume ********************************************'
      '--PriceVolume ********************************************'
      'CASE '
      ''
      '-- M3NOMINAL *****************************************'
      'WHEN PU.TemplateUnitName = '#39'm3 nDxnL'#39' THEN'
      'CASE'
      'WHEN PG.SequenceNo = 0 THEN '
      '-- Random length'
      'CASE'
      'WHEN PL_CSD.ProductLengthGroupNo > 0  AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3)'
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
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
      'END--'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      '-- M3NOMINAL *****************************************'
      ''
      'WHEN PU.TemplateUnitName = '#39'kvm aB'#39' THEN '
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END '
      ''
      'WHEN PU.TemplateUnitName = '#39'Lopm a'#39' THEN '
      'CASE WHEN PG.SequenceNo = 0 THEN'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3)'
      
        ' WHEN PG.SequenceNo = 1 THEN ROUND(CAST((PG.ActualWidthMM / 100 ' +
        '* PTD.NoOfPieces)   As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN PU.TemplateUnitName = '#39'Stycketal'#39' THEN PTD.NoOfPieces'
      ''
      'WHEN PU.TemplateUnitName = '#39'm3 FDxaL'#39' THEN '
      'CASE WHEN PG.SequenceNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3)'
      
        ' WHEN PG.SequenceNo = 1 THEN ROUND(CAST(PI() * SQUARE (PG.Actual' +
        'ThicknessMM/100/2) * (PG.ActualWidthMM/100) * PTD.NoOfPieces As ' +
        'decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'WHEN PU.TemplateUnitName = '#39'Lopm n'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'CASE '
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
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
      
        'WHEN PG.SequenceNo = 1 THEN ROUND(CAST((PG.ActualWidthMM / 100 *' +
        ' PTD.NoOfPieces)   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END '
      'END-- NM1'
      ''
      ''
      ''
      'WHEN PU.TemplateUnitName = '#39'MFBM Nom'#39' THEN '
      
        'CASE WHEN PG.SequenceNo = 0 THEN ROUND(CAST((       PTD.MFBMNomi' +
        'nal )   As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN PU.TemplateUnitName = '#39'Packages'#39' THEN 1'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'WHEN PU.TemplateUnitName = '#39'm3 FDxnL'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
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
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 1  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ' '
      'END --AS m3ActualSizeNomLength,'
      ''
      ''
      'WHEN PU.TemplateUnitName = '#39'm3 nDxaL'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0  THEN'
      
        'ROUND(CAST((PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalW' +
        'idthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)'
      ' As decimal(10,3)),3) -- AS m3NomSizeActualLength,'
      'WHEN PG.SequenceNo = 1  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'END AS PriceVolume'
      ''
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.LoadDetail LD'#9#9#9'ON'#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail'#9'PTD ON PTD.PackageTypeNo = LD.P' +
        'ackageTypeNo'
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD2 ON CSD2.CustShip' +
        'PlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      
        'INNER JOIN dbo.OrderLine OL ON OL.OrderLineNo = CSD2.OrderLineNo' +
        ' AND OL.OrderNo = CSD2.OrderNo'
      ''
      
        'Inner JOIN dbo.ProductLength PL_CSD ON PL_CSD.ProductLengthNo = ' +
        'CSD2.ProductLengthNo'
      ''
      
        'INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = OL.Product' +
        'GroupNo'
      'INNER JOIN dbo.UnitName VU ON VU.VolumeUnit_No = OL.VolumeUnitNo'
      'INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitNo'
      ''
      ''
      'WHERE'
      'LSP.ShippingPlanNo = :ShippingPlanNo'
      ''
      '')
    Left = 704
    Top = 344
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_DelPkgType: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.PkgType_Invoice'
      'WHERE LoadNo = :LoadNo'
      'AND InternalInvoiceNo = -1'
      ''
      '')
    Left = 703
    Top = 544
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_AL: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT Distinct'
      'PL.ActualLengthMM AS AL'
      'FROM dbo.ProductLength pl'
      'WHERE pl.act = 1'
      'and PL.ActualLengthMM > 500'
      'and PL.ActualLengthMM < 7000'
      ''
      'ORDER BY  PL.ActualLengthMM'
      ''
      '')
    Left = 569
    Top = 336
    object sq_ALAL: TFloatField
      FieldName = 'AL'
      Origin = 'AL'
      Required = True
    end
  end
  object sq_BarCode: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select  s.BarCodeID, S.BarCodeNo,'
      'CASE WHEN s.BarCodeID is null then'
      'S.BarCode'
      'ELSE'
      'S.BarCodeID+'#39' - '#39'+S.BarCode'
      'END AS BarCode'
      'From dbo.BarCode S'
      'WHERE S.BarCodeNo > 0'
      'Order by S.BarCodeID'
      '')
    Left = 560
    Top = 144
    object sq_BarCodeBarCodeID: TStringField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
      Size = 2
    end
    object sq_BarCodeBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_BarCodeBarCode: TStringField
      FieldName = 'BarCode'
      Origin = 'BarCode'
      ReadOnly = True
      Size = 25
    end
  end
  object sq_AB: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct ActualWidthMM AS AB FROM dbo.ProductGroup'
      'Order By ActualWidthMM'
      '')
    Left = 472
    Top = 592
    object sq_ABAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
  end
  object sq_Specie: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select  s.speciescode, S.SpeciesNo,'
      'CASE WHEN s.speciescode is null then'
      'S.speciesName'
      'ELSE'
      'S.speciescode+'#39' - '#39'+S.speciesName'
      'END AS speciesName'
      'From dbo.Species S'
      'where S.LanguageCode = 1'
      'AND S.SpeciesNo > 0'
      'Order by S.speciescode'
      '')
    Left = 560
    Top = 256
    object sq_Speciespeciescode: TStringField
      FieldName = 'speciescode'
      Origin = 'speciescode'
      Size = 5
    end
    object sq_SpecieSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_SpeciespeciesName: TStringField
      FieldName = 'speciesName'
      Origin = 'speciesName'
      ReadOnly = True
      Size = 38
    end
  end
  object sq_GradeStamp: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select  s.GradeStampID, S.GradeStampNo,'
      'CASE WHEN s.GradeStampID is null then'
      'S.GradeStamp'
      'ELSE'
      'S.GradeStampID+'#39' - '#39'+S.GradeStamp'
      'END AS GradeStamp'
      'From dbo.GradeStamp S'
      'WHERE S.GradeStampNo > 0'
      'Order by S.GradeStampID'
      '')
    Left = 472
    Top = 480
    object sq_GradeStampGradeStampID: TStringField
      FieldName = 'GradeStampID'
      Origin = 'GradeStampID'
      Size = 2
    end
    object sq_GradeStampGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GradeStampGradeStamp: TStringField
      FieldName = 'GradeStamp'
      Origin = 'GradeStamp'
      ReadOnly = True
      Size = 25
    end
  end
  object sq_AT: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct ActualThicknessMM AS AT FROM dbo.ProductGroup'
      'Order By ActualThicknessMM'
      '')
    Left = 472
    Top = 536
    object sq_ATAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
  end
  object sq_Grade: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct'
      'CASE WHEN g.gradecode is null then'
      'G.GradeName'
      'ELSE'
      'g.gradecode+'#39' - '#39'+G.GradeName'
      'END AS GradeName,'
      'G.GradeNo, g.gradecode, G.GradeName'
      'From '
      'dbo.Client Verk'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.' +
        'ClientNo'
      
        'Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventor' +
        'yPointNo = lip.PhysicalInventoryPointNo'
      
        'INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = ' +
        'lip.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      'Inner join dbo.Grade G on G.Gradeno = pd.GradeNo'
      ''
      'where pn.Status = 1'
      'AND g.LanguageCode = 1'
      'AND G.GradeNo > 0'
      'and Verk.PktNrLevKod IN (:PktNrLevKod)'
      'Order by g.gradecode , G.GradeName'
      '')
    Left = 560
    Top = 32
    ParamData = <
      item
        Name = 'PKTNRLEVKOD'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GradeGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      ReadOnly = True
      Size = 38
    end
    object sq_GradeGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      Required = True
    end
    object sq_Gradegradecode: TStringField
      FieldName = 'gradecode'
      Origin = 'gradecode'
      Size = 5
    end
    object sq_GradeGradeName_1: TStringField
      FieldName = 'GradeName_1'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
  object sq_Surfacing: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct  s.Surfacingcode, S.SurfacingNo,'
      'CASE WHEN s.Surfacingcode is null then'
      'S.SurfacingName'
      'ELSE'
      'S.Surfacingcode+'#39' - '#39'+S.SurfacingName'
      'END AS SurfacingName, S.SurfacingName'
      ''
      'From dbo.Client Verk'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.' +
        'ClientNo'
      
        'Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventor' +
        'yPointNo = lip.PhysicalInventoryPointNo'
      
        'INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = ' +
        'lip.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      'Inner join dbo.Surfacing S on S.SurfacingNo = pg.SurfacingNo'
      'where pn.Status = 1'
      'AND S.LanguageCode = 1'
      'AND S.SurfacingNo > 0'
      'and Verk.PktNrLevKod = :PktNrLevKod'
      'Order by S.Surfacingcode, S.SurfacingName'
      '')
    Left = 560
    Top = 88
    ParamData = <
      item
        Name = 'PKTNRLEVKOD'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_SurfacingSurfacingcode: TStringField
      FieldName = 'Surfacingcode'
      Origin = 'Surfacingcode'
      Size = 5
    end
    object sq_SurfacingSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      Required = True
    end
    object sq_SurfacingSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      ReadOnly = True
      Size = 38
    end
    object sq_SurfacingSurfacingName_1: TStringField
      FieldName = 'SurfacingName_1'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
  end
  object sq_PC2: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct s.ImpCode, S.ProductCategoryNo,'
      'CASE WHEN s.ImpCode is null then'
      'S.ProductCategoryName'
      'ELSE'
      'S.ImpCode+'#39' - '#39'+S.ProductCategoryName'
      'END AS ProductCategoryName, S.ProductCategoryName'
      'From dbo.ProductCategory S'
      'where'
      'S.LanguageCode = 1'
      'AND S.ProductCategoryNo > 0'
      'Order by S.ImpCode'
      '')
    Left = 560
    Top = 200
    object sq_PC2ImpCode: TStringField
      FieldName = 'ImpCode'
      Origin = 'ImpCode'
      Size = 5
    end
    object sq_PC2ProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
      Required = True
    end
    object sq_PC2ProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      ReadOnly = True
      Size = 48
    end
    object sq_PC2ProductCategoryName_1: TStringField
      FieldName = 'ProductCategoryName_1'
      Origin = 'ProductCategoryName'
      Size = 40
    end
  end
  object cds_PC: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct s.ImpCode, S.ProductCategoryNo,'
      'CASE WHEN s.ImpCode is null then'
      'S.ProductCategoryName'
      'ELSE'
      'S.ImpCode+'#39' - '#39'+S.ProductCategoryName'
      'END AS ProductCategoryName, S.ProductCategoryName'
      'From dbo.Client Verk'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.' +
        'ClientNo'
      
        'Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventor' +
        'yPointNo = lip.PhysicalInventoryPointNo'
      
        'INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = ' +
        'lip.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      
        'Inner join dbo.ProductCategory S on S.ProductCategoryNo = pg.Pro' +
        'ductCategoryNo'
      ''
      'where S.LanguageCode = 1'
      'AND S.ProductCategoryNo > 0'
      'and Verk.PktNrLevKod = :PktNrLevKod'
      'Order by S.ImpCode'
      ''
      ' '
      '')
    Left = 40
    Top = 136
    ParamData = <
      item
        Name = 'PKTNRLEVKOD'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_PCImpCode: TStringField
      FieldName = 'ImpCode'
      Origin = 'ImpCode'
      Size = 5
    end
    object cds_PCProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
      Required = True
    end
    object cds_PCProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      ReadOnly = True
      Size = 48
    end
    object cds_PCProductCategoryName_1: TStringField
      FieldName = 'ProductCategoryName_1'
      Origin = 'ProductCategoryName'
      Size = 40
    end
  end
  object sq_GetHighPcsNoLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select top 1 pt.ProductNo, pn.PackageTypeNo,pl.ActualLengthMM, p' +
        'n.LogicalInventoryPointNo, ls.NoOfLengths,'
      'MAX(pt.TotalNoOfPieces) From'
      'dbo.Product p'
      'Inner Join dbo.PackageType pt on pt.productNo = p.ProductNo'
      
        'Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecN' +
        'o'
      
        'Inner Join dbo.PackageTypeDetail ptd on ptd.PackageTypeNo = pt.P' +
        'ackageTypeNo'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = ptd.Prod' +
        'uctLengthNo'
      
        'Inner Join dbo.PackageNumber pn on pn.packageTypeNo = pt.package' +
        'TypeNo'
      ''
      
        'WHERE pt.ProductNo = :ProductNo AND pn.LogicalInventoryPointNo =' +
        ' :LIPNo AND pn.Status = 1'
      ''
      'AND ('
      
        '(ptd.ProductLengthNo not in (Select ProductLengthNo from dbo.Pro' +
        'ductLengthGroup'
      'WHERE GroupNo = 1))'
      ''
      'or (ls.NoOfLengths > 1 )'
      ''
      ')'
      ''
      
        'Group By pt.ProductNo, pn.PackageTypeNo, pl.ActualLengthMM, pn.L' +
        'ogicalInventoryPointNo, ls.NoOfLengths, pn.Packageno'
      ''
      
        'Order by MAX(pt.TotalNoOfPieces) desc, pt.productno, pl.ActualLe' +
        'ngthMM'
      ''
      ''
      '')
    Left = 143
    Top = 456
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetHighPcsNoLengthProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_GetHighPcsNoLengthPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object sq_GetHighPcsNoLengthActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object sq_GetHighPcsNoLengthLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object sq_GetHighPcsNoLengthNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      Origin = 'NoOfLengths'
    end
    object sq_GetHighPcsNoLengthUnnamed6: TIntegerField
      FieldName = 'Unnamed6'
      Origin = 'Unnamed6'
      ReadOnly = True
    end
  end
  object sq_GetHighPcs: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select top 1 pt.ProductNo, pn.PackageTypeNo,pl.ActualLengthMM, p' +
        'n.LogicalInventoryPointNo,'
      'MAX(pt.TotalNoOfPieces) From'
      'dbo.Product p'
      'Inner Join dbo.PackageType pt on pt.productNo = p.ProductNo'
      
        'Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecN' +
        'o'
      
        'Inner Join dbo.PackageTypeDetail ptd on ptd.PackageTypeNo = pt.P' +
        'ackageTypeNo'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = ptd.Prod' +
        'uctLengthNo'
      
        'Inner Join dbo.PackageNumber pn on pn.packageTypeNo = pt.package' +
        'TypeNo'
      ''
      
        'WHERE pl.ActualLengthMM = :AL AND pt.ProductNo = :ProductNo AND ' +
        'pn.LogicalInventoryPointNo = :LIPNo -- AND pn.Status = 1'
      'AND (ls.NoOfLengths = 1)'
      
        'Group By pt.ProductNo, pn.PackageTypeNo, pl.ActualLengthMM, pn.L' +
        'ogicalInventoryPointNo, pn.Packageno'
      ''
      '-- Having Count(ptd.PackageTypeNo) = 1'
      ''
      
        'order by MAX(pt.TotalNoOfPieces) desc, pt.productno, pl.ActualLe' +
        'ngthMM'
      '')
    Left = 143
    Top = 400
    ParamData = <
      item
        Name = 'AL'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetHighPcsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_GetHighPcsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object sq_GetHighPcsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object sq_GetHighPcsLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object sq_GetHighPcsUnnamed5: TIntegerField
      FieldName = 'Unnamed5'
      Origin = 'Unnamed5'
      ReadOnly = True
    end
  end
  object sq_GetPkgNosNoLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pn.PackageNo, pn.SupplierCode From'
      'dbo.Product p'
      'Inner Join dbo.PackageType pt on pt.productNo = p.ProductNo'
      
        'Inner Join dbo.PackageTypeDetail ptd on ptd.PackageTypeNo = pt.P' +
        'ackageTypeNo'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = ptd.Prod' +
        'uctLengthNo'
      
        'Inner Join dbo.PackageNumber pn on pn.packageTypeNo = pt.package' +
        'TypeNo'
      ''
      'WHERE pt.ProductNo = :ProductNo'
      'AND pn.LogicalInventoryPointNo = :LIPNo'
      'AND pn.Status = :Status'
      
        'AND ptd.ProductLengthNo not in (Select ProductLengthNo from dbo.' +
        'ProductLengthGroup'
      'WHERE GroupNo = :GroupNo)'
      '')
    Left = 151
    Top = 32
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'GROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPkgNosNoLengthPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object sq_GetPkgNosNoLengthSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object sq_GetPkgNos: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pn.PackageNo, pn.SupplierCode From'
      'dbo.Product p'
      'Inner Join dbo.PackageType pt on pt.productNo = p.ProductNo'
      
        'Inner Join dbo.PackageTypeDetail ptd on ptd.PackageTypeNo = pt.P' +
        'ackageTypeNo'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = ptd.Prod' +
        'uctLengthNo'
      
        'Inner Join dbo.PackageNumber pn on pn.packageTypeNo = pt.package' +
        'TypeNo'
      ''
      'WHERE pl.ActualLengthMM = :AL'
      'AND pt.ProductNo = :ProductNo'
      'AND pn.LogicalInventoryPointNo = :LIPNo'
      'AND pn.Status = :Status'
      ''
      'Group By pn.PackageNo, pn.SupplierCode'
      ''
      'Having Count(ptd.PackageTypeNo) = 1'
      ' '
      ' '
      '')
    Left = 39
    Top = 32
    ParamData = <
      item
        Name = 'AL'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPkgNosPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object sq_GetPkgNosSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object sp_OnePackageNo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_OnePackageNo'
    Left = 143
    Top = 248
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
  object sp_NewPackageNo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_AddVardPkg_II'
    Left = 143
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
      end>
  end
  object sp_VardaLager: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_VLneg'
    Left = 143
    Top = 144
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
      end
      item
        Position = 4
        Name = '@RegistrationPointNo'
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
  object sq_Kund: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct C.ClientNo, C.ClientName, C.SearchName'
      'From'
      'dbo.Client Verk'
      
        'Inner Join dbo.SupplierShippingPlan SP ON SP.SupplierNo = Verk.C' +
        'lientNo'
      ''
      
        'Inner JOIN dbo.CustomerShippingPlanHeader CH on ch.ShippingPlanN' +
        'o = sp.ShippingPlanNo'
      
        'Inner JOIN dbo.Client                     C    ON  C.ClientNo = ' +
        'CH.CustomerNo'
      ''
      ''
      'where  Verk.PktNrLevKod = :PktNrLevKod'
      'Order by C.ClientName')
    Left = 463
    Top = 32
    ParamData = <
      item
        Name = 'PktNrLevKod'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object sq_Land: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct ST_AdrCtry.CountryNo, ST_AdrCtry.CountryName'
      'From'
      'dbo.SupplierShippingPlan SP'
      'Inner JOIN dbo.Client Verk    ON  Verk.ClientNo = SP.SupplierNo'
      
        'Inner JOIN dbo.CustomerShippingPlanHeader CH on ch.ShippingPlanN' +
        'o = sp.ShippingPlanNo'
      'Inner join dbo.Orders od on od.OrderNo = CH.OrderNo'
      
        'INNER JOIN dbo.Country ST_AdrCtry'#9'ON ST_AdrCtry.CountryNo  = od.' +
        'IntraStatCountryNo'
      ''
      ''
      'where Verk.PktNrLevKod = :PktNrLevKod'
      'and SP.ShippingPlanStatus in (0,1,3)'
      'Order By ST_AdrCtry.CountryName')
    Left = 463
    Top = 88
    ParamData = <
      item
        Name = 'PktNrLevKod'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object sq_Matpunkt: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pu.ProductionUnitNo,  rp.RegPointName , rp.RegPointNo'
      'FROM dbo.ProductionUnit pu'
      'Inner join  dbo.Client Verk on Verk.ClientNo = pu.ClientNo'
      
        'inner join dbo.RegistrationPoint rp on rp.RegPointNo = pu.Regist' +
        'rationPointNo'
      'Where (Verk.PktNrLevKod = :PktNrLevKod)'
      'or ('#39'-1'#39' = :PktNrLevKod)')
    Left = 463
    Top = 144
    ParamData = <
      item
        Name = 'PktNrLevKod'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object sq_SkiftLag: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT st.[ShiftTeamNo]'
      '      ,st.[ShiftTeamName]'
      '      ,st.[ClientNo]'
      '  FROM [dbo].[ShiftTeam] st'
      'Inner JOIN dbo.Client Verk    ON  Verk.ClientNo = st.ClientNo'
      'where Verk.PktNrLevKod = :PktNrLevKod'
      'Order By st.[ShiftTeamNo]')
    Left = 463
    Top = 200
    ParamData = <
      item
        Name = 'PktNrLevKod'
        ParamType = ptInput
      end>
  end
  object sq_NT: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct NominalThicknessMM AS NT FROM dbo.ProductGroup'
      'Order By NominalThicknessMM')
    Left = 469
    Top = 336
  end
  object sq_NB: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct NominalWidthMM AS NB FROM dbo.ProductGroup'
      'Order By NominalWidthMM')
    Left = 469
    Top = 400
  end
  object ds_ProductionByPackageNo: TDataSource
    DataSet = cds_ProductionByPackageNo
    Left = 711
    Top = 88
  end
  object ds_ProductionByProduct: TDataSource
    DataSet = cds_ProductionByProduct
    Left = 887
    Top = 88
  end
  object ds_DeliveryStat: TDataSource
    DataSet = cds_DeliveryStat
    Left = 711
    Top = 200
  end
  object cds_ProductionByPackageNo: TFDQuery
    AutoCalcFields = False
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct'
      'CASE'
      'WHEN pp.Operation = 0 THEN '#39'P'#197'REGISTRERAT'#39
      'WHEN pp.Operation = 3 THEN '#39'AVREGISTRERAT'#39
      'END AS Operation,'
      'pd.ProductNo,'
      'pd.ProductDisplayName AS PRODUKT,'
      'pt.PackageTypeNo,'
      'pp.PackageNo AS PaketNr,'
      'RTRIM(pp.SupplierCode) AS Prefix,'
      'pg.ActualThicknessMM AS AT,'
      'pg.ActualWidthMM AS AB,'
      'pg.NominalThicknessMM AS NT,'
      'pg.NominalWidthMM AS NB,'
      
        'CAST(pg.NominalThicknessMM AS VARCHAR(10)) + '#39' x '#39' + CAST(pg.Nom' +
        'inalWidthMM AS VARCHAR(10)) AS NomDim,'
      
        'CAST(pg.ActualThicknessMM AS VARCHAR(10)) + '#39' x '#39' + CAST(pg.Actu' +
        'alWidthMM AS VARCHAR(10)) AS AktDim,'
      'pt.TotalNoOfPieces AS STYCK,'
      'pt.Totalm3Actual AS AM3,'
      'pt.Totalm3Nominal AS NM3,'
      'pt.TotalLinealMeterActualLength AS AM1,'
      'pt.TotalMFBMNominal AS MFBM,'
      'pt.TotalSQMofActualWidth AS AM2,'
      '-- pp.ProductionDate AS TILLVERKAD,'
      
        'DATEADD(dd, DATEDIFF(dd, 0, pp.ProductionDate), 0) AS TILLVERKAD' +
        ','
      'SPE.SpeciesName AS TS,'
      'imp.ProductCategoryName AS PC,'
      'Gr.GradeName AS KV,'
      'SUR.SurfacingName AS UT,'
      'pp.SupplierNo AS OwnerNo,'
      'CASE WHEN pt.TotalNoOfPieces > 0 THEN'
      'pt.TotalLinealMeterActualLength / pt.TotalNoOfPieces'
      'ELSE'
      '0.0'
      'END AS AvgLength,'
      'st.ShiftTeamName, rp.RegPointName,'
      
        'ISNULL(RTRIM(rp.RegPointName),'#39#39') + '#39'/'#39' + ISNULL(st.ShiftTeamNam' +
        'e,'#39'NA'#39') AS MP_SkiftLag'
      'FROM dbo.Package_Production pp'
      'Inner join  dbo.Client Verk on Verk.ClientNo = pp.SupplierNo'
      'Left join dbo.ShiftTeam st ON st.ShiftTeamNo = pp.ShiftNo'
      
        'Inner join dbo.RegistrationPoint rp on rp.RegPointNo = pp.Produc' +
        'tionUnitNo'
      
        'Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pp.PackageTy' +
        'peNo'
      
        'Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecN' +
        'o'
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.Varugrup' +
        'pNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      
        'Inner Join dbo.ProductCategory'#9'imp'#9'ON imp.ProductCategoryNo = pg' +
        '.ProductCategoryNo'
      #9#9#9#9'AND imp.LanguageCode = 1'
      'Inner Join dbo.Species'#9'SPE'#9'ON SPE.SpeciesNo = pg.SpeciesNo'
      #9#9#9#9'AND SPE.LanguageCode = 1'
      'Inner Join dbo.Surfacing'#9'SUR'#9'ON SUR.SurfacingNo = pg.SurfacingNo'
      #9#9#9#9'AND SUR.LanguageCode = 1'
      'Inner Join dbo.Grade   '#9'Gr'#9'ON Gr.GradeNo = pd.GradeNo'
      #9#9#9#9'AND Gr.LanguageCode = 1'
      'Where Verk.PktNrLevKod = 21'
      'AND pp.ProductionDate >= '#39'2011-12-01'#39
      'AND pp.ProductionDate <= '#39'2011-12-11'#39
      '')
    Left = 712
    Top = 40
    object cds_ProductionByPackageNoOperation: TStringField
      FieldName = 'Operation'
      Origin = 'Operation'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Size = 13
    end
    object cds_ProductionByPackageNoProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object cds_ProductionByPackageNoPRODUKT: TStringField
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      Size = 150
    end
    object cds_ProductionByPackageNoPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      Required = True
    end
    object cds_ProductionByPackageNoPaketNr: TIntegerField
      FieldName = 'PaketNr'
      Origin = 'PaketNr'
      Required = True
    end
    object cds_ProductionByPackageNoPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      ReadOnly = True
      Size = 3
    end
    object cds_ProductionByPackageNoAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object cds_ProductionByPackageNoAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object cds_ProductionByPackageNoNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
    end
    object cds_ProductionByPackageNoNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
    end
    object cds_ProductionByPackageNoNomDim: TStringField
      FieldName = 'NomDim'
      Origin = 'NomDim'
      ReadOnly = True
      Size = 23
    end
    object cds_ProductionByPackageNoAktDim: TStringField
      FieldName = 'AktDim'
      Origin = 'AktDim'
      ReadOnly = True
      Size = 23
    end
    object cds_ProductionByPackageNoSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      DisplayFormat = '#########'
    end
    object cds_ProductionByPackageNoAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      DisplayFormat = '#,###,###.0'
    end
    object cds_ProductionByPackageNoNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      DisplayFormat = '#,###,###.0'
    end
    object cds_ProductionByPackageNoAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      DisplayFormat = '#,###,###.0'
    end
    object cds_ProductionByPackageNoMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      DisplayFormat = '#,###,###.0'
    end
    object cds_ProductionByPackageNoAM2: TFloatField
      FieldName = 'AM2'
      Origin = 'AM2'
      DisplayFormat = '#,###,###.0'
    end
    object cds_ProductionByPackageNoTILLVERKAD: TSQLTimeStampField
      FieldName = 'TILLVERKAD'
      Origin = 'TILLVERKAD'
    end
    object cds_ProductionByPackageNoTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      Required = True
      Size = 30
    end
    object cds_ProductionByPackageNoPC: TStringField
      FieldName = 'PC'
      Origin = 'PC'
      Size = 40
    end
    object cds_ProductionByPackageNoKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_ProductionByPackageNoUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      Required = True
      Size = 30
    end
    object cds_ProductionByPackageNoOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_ProductionByPackageNoAvgLength: TFloatField
      DisplayLabel = 'M/L'
      FieldName = 'AvgLength'
      Origin = 'AvgLength'
      ReadOnly = True
      DisplayFormat = '#####.00'
    end
    object cds_ProductionByPackageNoShiftTeamName: TStringField
      FieldName = 'ShiftTeamName'
      Origin = 'ShiftTeamName'
      Size = 35
    end
    object cds_ProductionByPackageNoRegPointName: TStringField
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      FixedChar = True
      Size = 30
    end
    object cds_ProductionByPackageNoMP_SkiftLag: TStringField
      FieldName = 'MP_SkiftLag'
      Origin = 'MP_SkiftLag'
      ReadOnly = True
      Required = True
      Size = 66
    end
  end
  object cds_ProductionByProduct: TFDQuery
    AutoCalcFields = False
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct '
      'CASE'
      'WHEN pp.Operation = 0 THEN '#39'P'#197'REGISTRERAT'#39
      'WHEN pp.Operation = 3 THEN '#39'AVREGISTRERAT'#39
      'END AS Operation,'
      'pd.ProductNo,'
      'pd.ProductDisplayName AS PRODUKT,'
      '0 AS Paketnr,'
      #39'___'#39' AS Prefix,'
      'pg.ActualThicknessMM AS AT,'
      'pg.ActualWidthMM AS AB,'
      'pg.NominalThicknessMM AS NT,'
      'pg.NominalWidthMM AS NB,'
      
        'CAST(pg.NominalThicknessMM AS VARCHAR(10)) + '#39' x '#39' + CAST(pg.Nom' +
        'inalWidthMM AS VARCHAR(10)) AS NomDim,'
      
        'CAST(pg.ActualThicknessMM AS VARCHAR(10)) + '#39' x '#39' + CAST(pg.Actu' +
        'alWidthMM AS VARCHAR(10)) AS AktDim,'
      'SUM(pt.TotalNoOfPieces) AS STYCK,'
      'SUM(pt.Totalm3Actual) AS AM3,'
      'SUM(pt.Totalm3Nominal) AS NM3,'
      'SUM(pt.TotalLinealMeterActualLength) AS AM1,'
      'SUM(pt.TotalMFBMNominal) AS MFBM,'
      'SUM(pt.TotalSQMofActualWidth) AS AM2,'
      'SPE.SpeciesName AS TS,'
      'imp.ProductCategoryName AS PC,'
      'Gr.GradeName AS KV,'
      'SUR.SurfacingName AS UT,'
      'pp.SupplierNo AS OwnerNo,'
      'CASE'
      'WHEN SUM(pt.TotalNoOfPieces) > 0 THEN'
      'SUM(pt.TotalLinealMeterActualLength) / SUM(pt.TotalNoOfPieces)'
      'ELSE'
      '0'
      'END AS AvgLength,'
      'st.ShiftTeamName, rp.RegPointName,'
      
        'ISNULL(RTRIM(rp.RegPointName),'#39#39') + '#39'/'#39' + ISNULL(st.ShiftTeamNam' +
        'e,'#39'NA'#39') AS MP_SkiftLag'
      'FROM dbo.Package_Production pp'
      'Inner join  dbo.Client Verk on Verk.ClientNo = pp.SupplierNo'
      'Left join dbo.ShiftTeam st ON st.ShiftTeamNo = pp.ShiftNo'
      
        'Inner join dbo.RegistrationPoint rp on rp.RegPointNo = pp.Produc' +
        'tionUnitNo'
      
        'Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pp.PackageTy' +
        'peNo'
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.Varugrup' +
        'pNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      
        'Inner Join dbo.ProductCategory'#9'imp'#9'ON imp.ProductCategoryNo = pg' +
        '.ProductCategoryNo'
      #9#9#9#9'AND imp.LanguageCode = 1'
      'Inner Join dbo.Species'#9'SPE'#9'ON SPE.SpeciesNo = pg.SpeciesNo'
      #9#9#9#9'AND SPE.LanguageCode = 1'
      'Inner Join dbo.Surfacing'#9'SUR'#9'ON SUR.SurfacingNo = pg.SurfacingNo'
      #9#9#9#9'AND SUR.LanguageCode = 1'
      'Inner Join dbo.Grade   '#9'Gr'#9'ON Gr.GradeNo = pd.GradeNo'
      #9#9#9#9'AND Gr.LanguageCode = 1'
      'Where Verk.PktNrLevKod = 21'
      'AND pp.ProductionDate >= '#39'2011-12-01'#39
      'AND pp.ProductionDate <= '#39'2011-12-11'#39
      ''
      
        'Group by pd.ProductNo, pd.ProductDisplayName, pg.ActualThickness' +
        'MM,pg.ActualWidthMM, SPE.SpeciesName, imp.ProductCategoryName,'
      
        'Gr.GradeName, SUR.SurfacingName, va.VarugruppNamn, pp.SupplierNo' +
        ', pg.NominalThicknessMM, pg.NominalWidthMM,'
      'st.ShiftTeamName, rp.RegPointName, pp.Operation'
      '')
    Left = 888
    Top = 40
    object cds_ProductionByProductOperation: TStringField
      FieldName = 'Operation'
      Origin = 'Operation'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Size = 13
    end
    object cds_ProductionByProductProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object cds_ProductionByProductPRODUKT: TStringField
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      Size = 150
    end
    object cds_ProductionByProductPaketnr: TIntegerField
      FieldName = 'Paketnr'
      Origin = 'Paketnr'
      ReadOnly = True
      Required = True
    end
    object cds_ProductionByProductPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object cds_ProductionByProductAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object cds_ProductionByProductAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object cds_ProductionByProductNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
    end
    object cds_ProductionByProductNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
    end
    object cds_ProductionByProductNomDim: TStringField
      FieldName = 'NomDim'
      Origin = 'NomDim'
      ReadOnly = True
      Size = 23
    end
    object cds_ProductionByProductAktDim: TStringField
      FieldName = 'AktDim'
      Origin = 'AktDim'
      ReadOnly = True
      Size = 23
    end
    object cds_ProductionByProductSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ReadOnly = True
      DisplayFormat = '#########'
    end
    object cds_ProductionByProductAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_ProductionByProductNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_ProductionByProductAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_ProductionByProductMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_ProductionByProductAM2: TFloatField
      FieldName = 'AM2'
      Origin = 'AM2'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_ProductionByProductTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      Required = True
      Size = 30
    end
    object cds_ProductionByProductPC: TStringField
      FieldName = 'PC'
      Origin = 'PC'
      Size = 40
    end
    object cds_ProductionByProductKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_ProductionByProductUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      Required = True
      Size = 30
    end
    object cds_ProductionByProductOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_ProductionByProductAvgLength: TFloatField
      FieldName = 'AvgLength'
      Origin = 'AvgLength'
      ReadOnly = True
      DisplayFormat = '#####.0'
    end
    object cds_ProductionByProductShiftTeamName: TStringField
      FieldName = 'ShiftTeamName'
      Origin = 'ShiftTeamName'
      Size = 35
    end
    object cds_ProductionByProductRegPointName: TStringField
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      FixedChar = True
      Size = 30
    end
    object cds_ProductionByProductMP_SkiftLag: TStringField
      FieldName = 'MP_SkiftLag'
      Origin = 'MP_SkiftLag'
      ReadOnly = True
      Required = True
      Size = 66
    end
  end
  object cds_DeliveryStat: TFDQuery
    AutoCalcFields = False
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct Kund.ClientName AS Kund, '
      'pd.ProductNo,'
      'pd.ProductDisplayName AS PRODUKT,'
      'pg.ActualThicknessMM AS AT,'
      'pg.ActualWidthMM AS AB,'
      'pg.NominalThicknessMM AS NT,'
      'pg.NominalWidthMM AS NB,'
      
        'CAST(pg.NominalThicknessMM AS VARCHAR(10)) + '#39' x '#39' + CAST(pg.Nom' +
        'inalWidthMM AS VARCHAR(10)) AS NomDim,'
      
        'CAST(pg.ActualThicknessMM AS VARCHAR(10)) + '#39' x '#39' + CAST(pg.Actu' +
        'alWidthMM AS VARCHAR(10)) AS AktDim,'
      'SUM(pp.AM3) AS AM3,'
      'SUM(pp.NM3) AS NM3,'
      'SUM(pp.NoOfPcs) AS Styck,'
      'pp.PriceExist AS PrisOK,'
      'SPE.SpeciesName AS TS,'
      'imp.ProductCategoryName AS PC,'
      'Gr.GradeName AS KV,'
      'SUR.SurfacingName AS UT,'
      'pp.VerkNo AS OwnerNo,'
      'CASE'
      'WHEN SUM(pp.NM3) > 0 THEN'
      'SUM(pp.[V'#228'rde]) / SUM(pp.NM3)'
      'ELSE'
      '0'
      'END AS MEDELPRIS,'
      'SUM(pp.[V'#228'rde]) AS NETTO,'
      'vg.VarugruppNamn,'
      'pp.LO,'
      'pp.Utlastad AS Utlastad,'
      'pp.Supplier, pp.L'#228'ngd'
      'FROM dbo.ST_Deliveries pp'
      'Inner Join dbo.Client Kund ON Kund.ClientNo = pp.customerNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = pp.VerkNo'
      'Inner Join dbo.Product pd ON pd.ProductNo = PP.ProductNo'
      
        'Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.Varugrup' +
        'pNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      
        'Inner Join dbo.ProductCategory'#9'imp'#9'ON imp.ProductCategoryNo = pg' +
        '.ProductCategoryNo'
      #9#9#9#9'AND imp.LanguageCode = 1'
      'Inner Join dbo.Species'#9'SPE'#9'ON SPE.SpeciesNo = pg.SpeciesNo'
      #9#9#9#9'AND SPE.LanguageCode = 1'
      'Inner Join dbo.Surfacing'#9'SUR'#9'ON SUR.SurfacingNo = pg.SurfacingNo'
      #9#9#9#9'AND SUR.LanguageCode = 1'
      'Inner Join dbo.Grade   '#9'Gr'#9'ON Gr.GradeNo = pd.GradeNo'
      #9#9#9#9'AND Gr.LanguageCode = 1'
      
        'Left outer join dbo.VaruGrupp vg on vg.VarugruppNo = pd.Varugrup' +
        'pNo'
      'Where Verk.PktNrLevKod = 21'
      'AND pp.Utlastad >= '#39'2011-12-01'#39
      'AND pp.Utlastad <= '#39'2011-12-11'#39
      ''
      
        'Group by Kund.ClientName, pd.ProductNo, pd.ProductDisplayName, p' +
        'g.ActualThicknessMM,'
      
        'pg.ActualWidthMM, SPE.SpeciesName, imp.ProductCategoryName, pp.V' +
        'erkNo,'
      
        'Gr.GradeName, SUR.SurfacingName, va.VarugruppNamn, pp.CustomerNo' +
        ', pg.NominalThicknessMM,'
      
        'pg.NominalWidthMM, pp.PriceExist, vg.VarugruppNamn, pp.LO, pp.Ut' +
        'lastad, pp.Supplier, pp.L'#228'ngd'
      '')
    Left = 712
    Top = 152
  end
  object sq_PC2old: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct s.ImpCode, S.ProductCategoryNo,'
      'CASE WHEN s.ImpCode is null then'
      'S.ProductCategoryName'
      'ELSE'
      'S.ImpCode+'#39' - '#39'+S.ProductCategoryName'
      'END AS ProductCategoryName, S.ProductCategoryName'
      'From dbo.Client Verk'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.' +
        'ClientNo'
      
        'Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventor' +
        'yPointNo = lip.PhysicalInventoryPointNo'
      
        'INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = ' +
        'lip.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      
        'Inner join dbo.ProductCategory S on S.ProductCategoryNo = pg.Pro' +
        'ductCategoryNo'
      ''
      'where '
      'pn.Status = 1'
      'AND S.LanguageCode = 1'
      'AND S.ProductCategoryNo > 0'
      'and Verk.PktNrLevKod = :PktNrLevKod'
      'Order by S.ImpCode'
      '')
    Left = 624
    Top = 200
    ParamData = <
      item
        Name = 'PKTNRLEVKOD'
        DataType = ftString
        ParamType = ptInput
      end>
    object StringField1: TStringField
      FieldName = 'ImpCode'
      Origin = 'ImpCode'
      Size = 5
    end
    object IntegerField1: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      ReadOnly = True
      Size = 48
    end
    object StringField3: TStringField
      FieldName = 'ProductCategoryName_1'
      Origin = 'ProductCategoryName'
      Size = 40
    end
  end
  object cds_SpecLayout: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_SpecLayout_Index01'
        Fields = 'PackageLogLayoutNo'
      end>
    IndexName = 'cds_SpecLayout_Index01'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select PackageLogLayoutNo, '
      'PackageLogLayoutName,'
      'PrintFileName'
      ' FROM dbo.PackageLogLayout')
    Left = 888
    Top = 336
    object cds_SpecLayoutPackageLogLayoutNo: TIntegerField
      FieldName = 'PackageLogLayoutNo'
      Origin = 'PackageLogLayoutNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SpecLayoutPackageLogLayoutName: TStringField
      FieldName = 'PackageLogLayoutName'
      Origin = 'PackageLogLayoutName'
      FixedChar = True
    end
    object cds_SpecLayoutPrintFileName: TStringField
      FieldName = 'PrintFileName'
      Origin = 'PrintFileName'
      Size = 12
    end
  end
  object mtSizeFormat: TkbmMemTable
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
    Left = 888
    Top = 392
    object mtSizeFormatSizeFormatNo: TSmallintField
      FieldName = 'SizeFormatNo'
    end
    object mtSizeFormatSizeFormat: TStringField
      FieldName = 'SizeFormat'
      Size = 10
    end
  end
  object mtLengthFormat: TkbmMemTable
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
    Left = 1016
    Top = 432
    object mtLengthFormatLengthFormatNo: TSmallintField
      FieldName = 'LengthFormatNo'
    end
    object mtLengthFormatLengthFormat: TStringField
      FieldName = 'LengthFormat'
      Size = 10
    end
  end
  object mtVolumeFormat: TkbmMemTable
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
    Left = 1016
    Top = 336
    object mtVolumeFormatVolumeFormatNo: TSmallintField
      FieldName = 'VolumeFormatNo'
    end
    object mtVolumeFormatVolumeFormat: TStringField
      FieldName = 'VolumeFormat'
      Size = 10
    end
  end
  object dsLengthFormat: TDataSource
    DataSet = mtLengthFormat
    Left = 1016
    Top = 480
  end
  object dsVolumeFormat: TDataSource
    DataSet = mtVolumeFormat
    Left = 1016
    Top = 384
  end
  object cds_KilnVagnar: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select distinct '#39'Radnr '#39' + CAST(kcr.RowNo AS Varchar(2)) AS Rad,' +
        ' kcr.RowNo'
      ',CAST('#39#39' AS VARCHAR(36)) AS L1'
      ',CAST('#39#39' AS VARCHAR(36)) AS L2'
      ',CAST('#39#39' AS VARCHAR(36)) AS L3'
      ',CAST('#39#39' AS VARCHAR(36)) AS L4'
      ',CAST('#39#39' AS VARCHAR(36)) AS L5'
      ',CAST('#39#39' AS VARCHAR(36)) AS L6'
      ',CAST('#39#39' AS VARCHAR(36)) AS L7'
      ',CAST('#39#39' AS VARCHAR(36)) AS L8'
      ',CAST('#39#39' AS VARCHAR(36)) AS L9'
      ',CAST('#39#39' AS VARCHAR(36)) AS L10'
      ',CAST('#39#39' AS VARCHAR(36)) AS L11'
      ',CAST('#39#39' AS VARCHAR(36)) AS L12'
      ',CAST('#39#39' AS VARCHAR(36)) AS L13'
      ',CAST('#39#39' AS VARCHAR(36)) AS L14'
      ',CAST('#39#39' AS VARCHAR(36)) AS L15'
      ',CAST('#39#39' AS VARCHAR(36)) AS L16'
      ',CAST('#39#39' AS VARCHAR(36)) AS L17'
      ',CAST('#39#39' AS VARCHAR(36)) AS L18'
      ',CAST('#39#39' AS VARCHAR(36)) AS L19'
      ',CAST('#39#39' AS VARCHAR(36)) AS L20'
      ',CAST('#39#39' AS VARCHAR(36)) AS L21'
      ',CAST('#39#39' AS VARCHAR(36)) AS L22'
      ',CAST('#39#39' AS VARCHAR(36)) AS L23'
      ',CAST('#39#39' AS VARCHAR(36)) AS L24'
      ',CAST('#39#39' AS VARCHAR(36)) AS L25'
      ',CAST('#39#39' AS VARCHAR(36)) AS L26'
      ',CAST('#39#39' AS VARCHAR(36)) AS L27'
      ',CAST('#39#39' AS VARCHAR(36)) AS L28'
      ',CAST('#39#39' AS VARCHAR(36)) AS L29'
      ',CAST('#39#39' AS VARCHAR(36)) AS L30'
      ',CAST('#39#39' AS VARCHAR(36)) AS L31'
      ',CAST('#39#39' AS VARCHAR(36)) AS L32'
      ',CAST('#39#39' AS VARCHAR(36)) AS L33'
      ',CAST('#39#39' AS VARCHAR(36)) AS L34'
      ',CAST('#39#39' AS VARCHAR(36)) AS L35'
      ',CAST('#39#39' AS VARCHAR(36)) AS L36'
      ',CAST('#39#39' AS VARCHAR(36)) AS L37'
      ',CAST('#39#39' AS VARCHAR(36)) AS L38'
      ',CAST('#39#39' AS VARCHAR(36)) AS L39'
      ',CAST('#39#39' AS VARCHAR(36)) AS L40'
      ',CAST('#39#39' AS VARCHAR(36)) AS L41'
      ',CAST('#39#39' AS VARCHAR(36)) AS L42'
      ',CAST('#39#39' AS VARCHAR(36)) AS L43'
      ',CAST('#39#39' AS VARCHAR(36)) AS L44'
      ',CAST('#39#39' AS VARCHAR(36)) AS L45'
      ''
      ''
      ''
      'FROM  dbo.KilnChargeHdr KCH'
      ''
      'Inner join dbo.Kilns K on K.KilnNo = KCH.KilnNo'
      
        'Inner join dbo.KilnChargeRows kcr on kcr.KilnChargeNo = KCH.Kiln' +
        'ChargeNo'
      'inner JOIN dbo.PackageNumber pn ON pn.PackageNo = kcr.packageno'
      'and pn.SupplierCode = kcr.SupplierCode'
      ''
      'inner join dbo.KilnVagn KV on KV.KilnChargeNo = KCH.KilnChargeNo'
      'and kv.VagnNo = kcr.VagnNo'
      ''
      
        'Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      
        'inner join [dbo].[visv_GetMaxLength] ML on ML.PackageTypeNo = pn' +
        '.PackageTypeNo'
      ''
      ''
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      ''
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      ''
      ''
      'WHERE'
      'KCH.KilnChargeNo = 35'
      'AND pn.PackageNo IS NOT NULL'
      ''
      'GROUP BY kcr.RowNo'
      ''
      'order by kcr.RowNo desc')
    Left = 840
    Top = 536
    object cds_KilnVagnarRad: TStringField
      FieldName = 'Rad'
      Origin = 'Rad'
      ReadOnly = True
      Size = 8
    end
    object cds_KilnVagnarRowNo: TIntegerField
      FieldName = 'RowNo'
      Origin = 'RowNo'
    end
    object cds_KilnVagnarL1: TStringField
      FieldName = 'L1'
      Origin = 'L1'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL2: TStringField
      FieldName = 'L2'
      Origin = 'L2'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL3: TStringField
      FieldName = 'L3'
      Origin = 'L3'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL4: TStringField
      FieldName = 'L4'
      Origin = 'L4'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL5: TStringField
      FieldName = 'L5'
      Origin = 'L5'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL6: TStringField
      FieldName = 'L6'
      Origin = 'L6'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL7: TStringField
      FieldName = 'L7'
      Origin = 'L7'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL8: TStringField
      FieldName = 'L8'
      Origin = 'L8'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL9: TStringField
      FieldName = 'L9'
      Origin = 'L9'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL10: TStringField
      FieldName = 'L10'
      Origin = 'L10'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL11: TStringField
      FieldName = 'L11'
      Origin = 'L11'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL12: TStringField
      FieldName = 'L12'
      Origin = 'L12'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL13: TStringField
      FieldName = 'L13'
      Origin = 'L13'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL14: TStringField
      FieldName = 'L14'
      Origin = 'L14'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL15: TStringField
      FieldName = 'L15'
      Origin = 'L15'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL16: TStringField
      FieldName = 'L16'
      Origin = 'L16'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL17: TStringField
      FieldName = 'L17'
      Origin = 'L17'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL18: TStringField
      FieldName = 'L18'
      Origin = 'L18'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL19: TStringField
      FieldName = 'L19'
      Origin = 'L19'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL20: TStringField
      FieldName = 'L20'
      Origin = 'L20'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL21: TStringField
      FieldName = 'L21'
      Origin = 'L21'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL22: TStringField
      FieldName = 'L22'
      Origin = 'L22'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL23: TStringField
      FieldName = 'L23'
      Origin = 'L23'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL24: TStringField
      FieldName = 'L24'
      Origin = 'L24'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL25: TStringField
      FieldName = 'L25'
      Origin = 'L25'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL26: TStringField
      FieldName = 'L26'
      Origin = 'L26'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL27: TStringField
      FieldName = 'L27'
      Origin = 'L27'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL28: TStringField
      FieldName = 'L28'
      Origin = 'L28'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL29: TStringField
      FieldName = 'L29'
      Origin = 'L29'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL30: TStringField
      FieldName = 'L30'
      Origin = 'L30'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL31: TStringField
      FieldName = 'L31'
      Origin = 'L31'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL32: TStringField
      FieldName = 'L32'
      Origin = 'L32'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL33: TStringField
      FieldName = 'L33'
      Origin = 'L33'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL34: TStringField
      FieldName = 'L34'
      Origin = 'L34'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL35: TStringField
      FieldName = 'L35'
      Origin = 'L35'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL36: TStringField
      FieldName = 'L36'
      Origin = 'L36'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL37: TStringField
      FieldName = 'L37'
      Origin = 'L37'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL38: TStringField
      FieldName = 'L38'
      Origin = 'L38'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL39: TStringField
      FieldName = 'L39'
      Origin = 'L39'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL40: TStringField
      FieldName = 'L40'
      Origin = 'L40'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL41: TStringField
      FieldName = 'L41'
      Origin = 'L41'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL42: TStringField
      FieldName = 'L42'
      Origin = 'L42'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL43: TStringField
      FieldName = 'L43'
      Origin = 'L43'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL44: TStringField
      FieldName = 'L44'
      Origin = 'L44'
      ReadOnly = True
      Size = 36
    end
    object cds_KilnVagnarL45: TStringField
      FieldName = 'L45'
      Origin = 'L45'
      ReadOnly = True
      Size = 36
    end
  end
  object ds_KilnVagnar: TDataSource
    DataSet = cds_KilnVagnar
    Left = 840
    Top = 592
  end
  object cds_GetAntalVagnar: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select K.[ClientNo]'
      '      ,K.[KilnNo]'
      '      ,K.[KilnName]'
      '      ,K.[NoOfVagnar]'
      '      ,K.[NoOfVagnarBefore]'
      'FROM dbo.KilnChargeHdr KCH'
      'Inner join dbo.Kilns K on K.KilnNo = KCH.KilnNo'
      '  WHERE KCH.KilnChargeNo = :KilnChargeNo ')
    Left = 960
    Top = 536
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetAntalVagnarClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetAntalVagnarKilnNo: TIntegerField
      FieldName = 'KilnNo'
      Origin = 'KilnNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetAntalVagnarKilnName: TStringField
      FieldName = 'KilnName'
      Origin = 'KilnName'
      Size = 30
    end
    object cds_GetAntalVagnarNoOfVagnar: TIntegerField
      FieldName = 'NoOfVagnar'
      Origin = 'NoOfVagnar'
    end
  end
  object cds_AntalVagnarPerStatus: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT     Count(*) AS AntalVagnar'
      'FROM       dbo.KilnVagn kv'
      
        'Inner join dbo.KilnChargeHdr kch on kch.KilnChargeNo = kv.KilnCh' +
        'argeNo'
      ''
      'WHERE kch.KilnChargeNo = :KilnChargeNo'
      'and kv.VagnStatus = :VagnStatus')
    Left = 960
    Top = 584
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VAGNSTATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_AntalVagnarPerStatusAntalVagnar: TIntegerField
      FieldName = 'AntalVagnar'
      Origin = 'AntalVagnar'
      ReadOnly = True
    end
  end
  object cds_GetSistaVagnNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT     Max(kv.VagnNo) AS SistaVagnNo'
      'FROM       dbo.KilnVagn kv'
      
        'Inner join dbo.KilnChargeHdr kch on kch.KilnChargeNo = kv.KilnCh' +
        'argeNo'
      ''
      'WHERE kch.KilnNo = :KilnNo')
    Left = 1088
    Top = 536
    ParamData = <
      item
        Name = 'KILNNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetSistaVagnNoSistaVagnNo: TIntegerField
      FieldName = 'SistaVagnNo'
      Origin = 'SistaVagnNo'
      ReadOnly = True
    end
  end
  object cds_Vagnar: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct top 10 kv.VagnNo'
      'FROM dbo.KilnChargeHdr KCH'
      'inner join dbo.KilnVagn kv on kv.KilnChargeNo = kch.KilnChargeNo'
      'WHERE'
      'KCH.KilnChargeNo = :KilnChargeNo'
      'order by kv.VagnNo desc')
    Left = 1088
    Top = 584
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_VagnarVagnNo: TIntegerField
      FieldName = 'VagnNo'
      Origin = 'VagnNo'
      Required = True
    end
  end
  object cds_KilnChargeRows: TFDQuery
    AfterInsert = cds_KilnChargeRowsAfterInsert
    AfterPost = cds_KilnChargeRowsAfterPost
    BeforeDelete = cds_KilnChargeRowsBeforeDelete
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_KilnChargeRowsIndexRowNo'
        Fields = 'RowNo'
      end>
    IndexName = 'cds_KilnChargeRowsIndexRowNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select kcr.*, P.ProductDisplayName,'
      
        '[dbo].[vida_LengthDescription]( pt.PackageTypeNo ) AS PcsPerLeng' +
        'th'
      'FROM dbo.KilnChargeRows kcr'
      'inner join dbo.PackageNumber pn on pn.PackageNo = kcr.PackageNo'
      'and pn.SupplierCode = kcr.SupplierCode'
      
        'inner join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      'inner join dbo.Product P on P.ProductNo = pt.ProductNo'
      'WHERE KilnChargeNo = :KilnChargeNo'
      'AND VagnNo = :VagnNo'
      'Order By kcr.RowNo')
    Left = 1032
    Top = 40
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VAGNNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_KilnChargeRowsKilnChargeNo: TIntegerField
      DisplayLabel = 'Torksatsnr'
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnChargeRowsPackageNo: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnChargeRowsSupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_KilnChargeRowsNoOfPkgs: TIntegerField
      FieldName = 'NoOfPkgs'
      Origin = 'NoOfPkgs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KilnChargeRowsDateCreated: TSQLTimeStampField
      DisplayLabel = 'Inmatad'
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KilnChargeRowsCreatedUser: TIntegerField
      DisplayLabel = 'Inmatad av'
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KilnChargeRowsVagnNo: TIntegerField
      DisplayLabel = 'Vagnnr'
      FieldName = 'VagnNo'
      Origin = 'VagnNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KilnChargeRowsRowNo: TIntegerField
      DisplayLabel = 'Radnr'
      FieldName = 'RowNo'
      Origin = 'RowNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KilnChargeRowsProductDisplayName: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object cds_KilnChargeRowsPcsPerLength: TStringField
      DisplayLabel = 'St/l'#228'ngd'
      FieldName = 'PcsPerLength'
      Origin = 'PcsPerLength'
      ReadOnly = True
      Size = 255
    end
  end
  object cds_KilnChargeHdr: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select KCH.*, KP.Kiln_PIPNo, KP.[BeforeKiln_LIPNo], KP.[Kiln_LIP' +
        'No], KP.[AfterKiln_LIPNo],'
      'K.NoOfVagnar, K.NoOfVagnarBefore'
      'FROM dbo.KilnChargeHdr KCH'
      'Inner Join dbo.KilnProps KP on KP.ClientNo = KCH.ClientNo'
      'Inner join dbo.Kilns K on K.KilnNo = KCH.KilnNo'
      'WHERE KilnChargeNo = :KilnChargeNo')
    Left = 1144
    Top = 144
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_KilnChargeHdrClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_KilnChargeHdrKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnChargeHdrKilnNo: TIntegerField
      FieldName = 'KilnNo'
      Origin = 'KilnNo'
    end
    object cds_KilnChargeHdrStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
      Origin = 'StartTime'
    end
    object cds_KilnChargeHdrEndTime: TSQLTimeStampField
      FieldName = 'EndTime'
      Origin = 'EndTime'
    end
    object cds_KilnChargeHdrPlannedDuration: TFloatField
      FieldName = 'PlannedDuration'
      Origin = 'PlannedDuration'
    end
    object cds_KilnChargeHdrCreatedDate: TSQLTimeStampField
      FieldName = 'CreatedDate'
      Origin = 'CreatedDate'
    end
    object cds_KilnChargeHdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_KilnChargeHdrStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_KilnChargeHdrNote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      BlobType = ftMemo
    end
    object cds_KilnChargeHdrBeforeKiln_LIPNo: TIntegerField
      FieldName = 'BeforeKiln_LIPNo'
      Origin = 'BeforeKiln_LIPNo'
    end
    object cds_KilnChargeHdrKiln_LIPNo: TIntegerField
      FieldName = 'Kiln_LIPNo'
      Origin = 'Kiln_LIPNo'
    end
    object cds_KilnChargeHdrAfterKiln_LIPNo: TIntegerField
      FieldName = 'AfterKiln_LIPNo'
      Origin = 'AfterKiln_LIPNo'
    end
    object cds_KilnChargeHdrKiln_PIPNo: TIntegerField
      FieldName = 'Kiln_PIPNo'
      Origin = 'Kiln_PIPNo'
    end
    object cds_KilnChargeHdrNoOfVagnar: TIntegerField
      FieldName = 'NoOfVagnar'
      Origin = 'NoOfVagnar'
    end
    object cds_KilnChargeHdrNoOfVagnarBefore: TIntegerField
      FieldName = 'NoOfVagnarBefore'
      Origin = 'NoOfVagnarBefore'
    end
  end
  object ds_KilnChargeRows: TDataSource
    DataSet = cds_KilnChargeRows
    Left = 1032
    Top = 88
  end
  object sq_PkgExistInInventory: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT PN.PackageNo'
      'FROM dbo.PackageNumber PN'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = PN.LogicalInventoryPointNo'
      'WHERE PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      'AND LIP.PhysicalInventoryPointNo = :PIPNo'
      'AND PN.Status = 1')
    Left = 1032
    Top = 208
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
      end
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_PkgExistInInventoryPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_SelectProgressKiln: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select KP.KilnName + '#39' - '#39' + KCH.Info + '#39'  ['#39' + CAST(ISNULL(KCH.' +
        'KilnChargeNo,'#39'-'#39') AS varchar(6)) + '#39']'#39' AS KilnName , KCH.*, KP.*'
      'FROM dbo.KilnChargeHdr KCH'
      'Inner Join dbo.Kilns KP on KP.KilnNo = KCH.KilnNo'
      'WHERE KP.ClientNo = :ClientNo '
      'and KP.TypeOfKiln = 2'
      
        'Order By KP.KilnName, KCH.Info, CAST(KCH.KilnChargeNo AS varchar' +
        '(6))')
    Left = 1144
    Top = 40
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SelectProgressKilnClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_SelectProgressKilnKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SelectProgressKilnKilnNo: TIntegerField
      FieldName = 'KilnNo'
      Origin = 'KilnNo'
    end
    object cds_SelectProgressKilnKilnName: TStringField
      FieldName = 'KilnName'
      Origin = 'KilnName'
      ReadOnly = True
      Size = 93
    end
  end
  object cds_KilnVagn: TFDQuery
    AfterInsert = cds_KilnVagnAfterInsert
    BeforePost = cds_KilnVagnBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.KilnVagn'
      'WHERE KilnChargeNo = :KilnChargeNo'
      'AND VagnNo = :VagnNo')
    Left = 1144
    Top = 88
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VAGNNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_KilnVagnKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnVagnVagnNo: TIntegerField
      FieldName = 'VagnNo'
      Origin = 'VagnNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnVagnInDate: TSQLTimeStampField
      FieldName = 'InDate'
      Origin = 'InDate'
    end
    object cds_KilnVagnOutDate: TSQLTimeStampField
      FieldName = 'OutDate'
      Origin = 'OutDate'
    end
    object cds_KilnVagnVagnStatus: TIntegerField
      FieldName = 'VagnStatus'
      Origin = 'VagnStatus'
    end
    object cds_KilnVagnCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_KilnVagnDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object sp_MoveVagn: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_MoveVagn'
    Left = 704
    Top = 624
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@KilnChargeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@VagnNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@MoveToLIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@NewVagnStatus'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_GetLastVagnNoPerVagnStatus: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select MIN(kv.VagnNo) AS VagnNo FROM dbo.KilnVagn kv'
      'WHERE kv.VagnStatus = :VagnStatus'
      'AND KilnChargeNo = :KilnChargeNo')
    Left = 1173
    Top = 336
    ParamData = <
      item
        Name = 'VAGNSTATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetLastVagnNoPerVagnStatusVagnNo: TIntegerField
      FieldName = 'VagnNo'
      Origin = 'VagnNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object cds_VagnStatus: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.KilnVagn'
      'WHERE VagnNo = :VagnNo'
      'AND KilnChargeNo = :KilnChargeNo')
    Left = 1170
    Top = 448
    ParamData = <
      item
        Name = 'VAGNNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_VagnStatusKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VagnStatusVagnNo: TIntegerField
      FieldName = 'VagnNo'
      Origin = 'VagnNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VagnStatusInDate: TSQLTimeStampField
      FieldName = 'InDate'
      Origin = 'InDate'
    end
    object cds_VagnStatusOutDate: TSQLTimeStampField
      FieldName = 'OutDate'
      Origin = 'OutDate'
    end
    object cds_VagnStatusVagnStatus: TIntegerField
      FieldName = 'VagnStatus'
      Origin = 'VagnStatus'
    end
    object cds_VagnStatusDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_VagnStatusCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
  end
  object cds_GetFirstVagnNoPerVagnStatus: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select MAX(kv.VagnNo) AS VagnNo FROM dbo.KilnVagn kv'
      'WHERE kv.VagnStatus = :VagnStatus'
      'AND KilnChargeNo = :KilnChargeNo')
    Left = 1173
    Top = 392
    ParamData = <
      item
        Name = 'VAGNSTATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetFirstVagnNoPerVagnStatusVagnNo: TIntegerField
      FieldName = 'VagnNo'
      Origin = 'VagnNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object ds_KilnChargeHdr: TDataSource
    DataSet = cds_KilnChargeHdr
    Left = 1144
    Top = 200
  end
  object mtSelectedPkgNo: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PAKETNR'
        DataType = ftInteger
      end
      item
        Name = 'LEVKOD'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'STYCKPERL'#196'NGD'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'AM3'
        DataType = ftFloat
      end
      item
        Name = 'STYCK'
        DataType = ftInteger
      end
      item
        Name = 'REGISTRERAT'
        DataType = ftTimeStamp
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'MARKERAD'
        DataType = ftInteger
      end>
    IndexFieldNames = 'PAKETNR'
    IndexName = 'mtSelectedPkgNoIndex1'
    IndexDefs = <
      item
        Name = 'mtSelectedPkgNoIndex1'
        Fields = 'PAKETNR'
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
    BeforePost = mtSelectedPkgNoBeforePost
    Left = 1200
    Top = 528
    object mtSelectedPkgNoPAKETNR: TIntegerField
      FieldName = 'PAKETNR'
    end
    object mtSelectedPkgNoLEVKOD: TStringField
      FieldName = 'LEVKOD'
      Size = 3
    end
    object mtSelectedPkgNoSTYCKPERLNGD: TStringField
      FieldName = 'STYCKPERL'#196'NGD'
      Size = 255
    end
    object mtSelectedPkgNoAM3: TFloatField
      FieldName = 'AM3'
      DisplayFormat = '###,###,###.000'
    end
    object mtSelectedPkgNoSTYCK: TIntegerField
      FieldName = 'STYCK'
    end
    object mtSelectedPkgNoREGISTRERAT: TSQLTimeStampField
      FieldName = 'REGISTRERAT'
    end
    object mtSelectedPkgNoMaxlangd: TFloatField
      FieldName = 'Maxlangd'
    end
    object mtSelectedPkgNoProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtSelectedPkgNoMARKERAD: TIntegerField
      FieldName = 'MARKERAD'
    end
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 1016
    Top = 288
    object dxMemData1L1: TIntegerField
      FieldName = 'L1'
    end
    object dxMemData1L2: TIntegerField
      FieldName = 'L2'
    end
    object dxMemData1L3: TIntegerField
      FieldName = 'L3'
    end
    object dxMemData1L4: TIntegerField
      FieldName = 'L4'
    end
    object dxMemData1L5: TIntegerField
      FieldName = 'L5'
    end
    object dxMemData1L6: TIntegerField
      FieldName = 'L6'
    end
  end
  object sc_GetProductNoByPackageNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT pt.productno'
      'FROM  dbo.PackageNumber PN'
      
        'INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = PN.Packag' +
        'eTypeNo'
      'WHERE     PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      '')
    Left = 1200
    Top = 584
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
    object sc_GetProductNoByPackageNoproductno: TIntegerField
      FieldName = 'productno'
      Origin = 'productno'
    end
  end
  object cds_PkgCost: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT TOP 1000 [PackageNo]'
      '      ,[SupplierCode]'
      '      ,[LIPNo]'
      '      ,[LoadOrderNo]'
      '      ,[CostType]'
      '      ,CASE WHEN [CostType] = 1 THEN '#39'INTERNPRIS'#39
      '      WHEN [CostType] = 2 THEN '#39'INTERNFRAKT'#39
      '      WHEN [CostType] = 3 THEN '#39'LEGO'#39
      '      WHEN [CostType] = 4 THEN '#39'IMPREGNERING'#39
      '      WHEN [CostType] = 5 THEN '#39'INLANDFRAKT ADD LO'#39
      '      WHEN [CostType] = 6 THEN '#39'INLANDFRAKT'#39
      '      WHEN [CostType] = 7 THEN '#39'EXTERNFRAKT'#39
      '      WHEN [CostType] = 8 THEN '#39'BONUS'#39
      '      WHEN [CostType] = 9 THEN '#39'OTHER COST'#39
      '      WHEN [CostType] = 10 THEN '#39'KASSA'#39
      '      WHEN [CostType] = 11 THEN '#39'PROVISION'#39
      '      END AS KOSTTYP'
      '      ,[ArticleNo]'
      '      ,[DateCreated]'
      '      ,[CostPerAM3]'
      '      ,Exclude'
      '  FROM [dbo].[PkgCost]'
      'WHERE   IC_SetNo = :SETNo'
      'AND PackageNo = :PackageNo'
      'AND SupplierCode = :SupplierCode')
    Left = 1232
    Top = 240
    ParamData = <
      item
        Name = 'SETNO'
        DataType = ftInteger
        ParamType = ptInput
      end
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
    object cds_PkgCostPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgCostSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PkgCostLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgCostLoadOrderNo: TIntegerField
      FieldName = 'LoadOrderNo'
      Origin = 'LoadOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgCostCostType: TIntegerField
      FieldName = 'CostType'
      Origin = 'CostType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgCostArticleNo: TIntegerField
      FieldName = 'ArticleNo'
      Origin = 'ArticleNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgCostDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PkgCostCostPerAM3: TFloatField
      FieldName = 'CostPerAM3'
      Origin = 'CostPerAM3'
      DisplayFormat = '#,###,###.0'
    end
    object cds_PkgCostKOSTTYP: TStringField
      FieldName = 'KOSTTYP'
      Origin = 'KOSTTYP'
      ReadOnly = True
      Size = 18
    end
    object cds_PkgCostExclude: TIntegerField
      FieldName = 'Exclude'
      Origin = 'Exclude'
    end
  end
  object ds_PkgCost: TDataSource
    DataSet = cds_PkgCost
    Left = 1232
    Top = 288
  end
  object sp_Manuell_LipSum: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_Manuell_LipSum_v2'
    Left = 328
    Top = 304
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@IC_SETNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@SupplierCode'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 6
        Name = '@NewPrice'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end>
  end
  object sp_MovePackage: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_MovePackage'
    Left = 1088
    Top = 640
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@NewLocation'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@SupplierCode'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 6
        Name = '@KilnChargeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PkgExistInLIP: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_PkgExistInLIP'
    Left = 1272
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
        Name = '@Prefix'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 4
        Name = '@LIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
