object dmPkgs: TdmPkgs
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 669
  Width = 1135
  object ds_LoadPackages: TDataSource
    DataSet = mtLoadPackages
    Left = 48
    Top = 72
  end
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
    Version = '7.12.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    BeforePost = mtPackagesBeforePost
    Left = 136
    Top = 24
  end
  object dsmtPackages: TDataSource
    DataSet = mtPackages
    Left = 136
    Top = 72
  end
  object mtProdSpecificLengths: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end>
    IndexName = 'mtProdSpecificLengthsIndex1'
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
    Left = 240
    Top = 72
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
    FieldDefs = <
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end>
    IndexName = 'mtStandardLengthsIndex1'
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
    Left = 352
    Top = 472
    object mtStandardLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
  end
  object ds_Prod_In_LO: TDataSource
    DataSet = cds_Prod_In_LO
    Left = 192
    Top = 296
  end
  object mtLoadPackages: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PRODUCT'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
      end
      item
        Name = 'SUPP_CODE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'M3_NET'
        DataType = ftFloat
      end
      item
        Name = 'PCS'
        DataType = ftInteger
      end
      item
        Name = 'M3_NOM'
        DataType = ftFloat
      end
      item
        Name = 'KVM'
        DataType = ftFloat
      end
      item
        Name = 'LOPM'
        DataType = ftFloat
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'INVENTORY'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PCS_PER_LENGTH'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'OWNER'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
      end
      item
        Name = 'LOG_INVENTORY_NO'
        DataType = ftInteger
      end
      item
        Name = 'BAR_CODE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BARCODE_ID'
        DataType = ftInteger
      end
      item
        Name = 'GRADE_STAMP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'GRADESTAMPNO'
        DataType = ftInteger
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
      end
      item
        Name = 'Old_PackageTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'SurfacingNo'
        DataType = ftInteger
      end
      item
        Name = 'PIP'
        DataType = ftInteger
      end
      item
        Name = 'LoadDetailNo'
        DataType = ftInteger
      end
      item
        Name = 'ACTTHICK'
        DataType = ftFloat
      end
      item
        Name = 'ACTWIDTH'
        DataType = ftFloat
      end
      item
        Name = 'NOMTHICK'
        DataType = ftFloat
      end
      item
        Name = 'NOMWIDTH'
        DataType = ftFloat
      end
      item
        Name = 'ROWNO'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end
      item
        Name = 'StatusText'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'InvNr'
        DataType = ftInteger
      end>
    IndexFieldNames = 'PACKAGENO'
    IndexName = 'mtLoadPackagesIndex6'
    IndexDefs = <
      item
        Name = 'mtLoadPackagesIndex5'
        Fields = 'PACKAGENO;SUPP_CODE'
      end
      item
        Name = 'mtLoadPackagesIndex6'
        Fields = 'PACKAGENO'
      end>
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
    AfterInsert = mtLoadPackagesAfterInsert
    Left = 48
    Top = 24
    object mtLoadPackagesPRODUCT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCT'
      Size = 100
    end
    object mtLoadPackagesPACKAGENO: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PACKAGENO'
    end
    object mtLoadPackagesPACKAGETYPENO: TIntegerField
      DisplayLabel = 'PackageTypeNo'
      FieldName = 'PACKAGETYPENO'
    end
    object mtLoadPackagesSUPP_CODE: TStringField
      DisplayLabel = 'Lev.kod'
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object mtLoadPackagesM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PCS'
    end
    object mtLoadPackagesM3_NOM: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'M3_NOM'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesKVM: TFloatField
      DisplayLabel = 'M2'
      FieldName = 'KVM'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesLOPM: TFloatField
      DisplayLabel = 'LPM'
      FieldName = 'LOPM'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtLoadPackagesINVENTORY: TStringField
      DisplayLabel = 'Lager'
      FieldName = 'INVENTORY'
      Size = 50
    end
    object mtLoadPackagesPCS_PER_LENGTH: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object mtLoadPackagesOWNER: TStringField
      DisplayLabel = #196'gare'
      FieldName = 'OWNER'
      Size = 80
    end
    object mtLoadPackagesOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
    end
    object mtLoadPackagesLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
    end
    object mtLoadPackagesBAR_CODE: TStringField
      DisplayLabel = 'Barcode'
      FieldName = 'BAR_CODE'
    end
    object mtLoadPackagesBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object mtLoadPackagesGRADE_STAMP: TStringField
      DisplayLabel = 'Gradestamp'
      FieldName = 'GRADE_STAMP'
    end
    object mtLoadPackagesGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object mtLoadPackagesSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object mtLoadPackagesOld_PackageTypeNo: TIntegerField
      FieldName = 'Old_PackageTypeNo'
    end
    object mtLoadPackagesSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtLoadPackagesPIP: TIntegerField
      FieldName = 'PIP'
    end
    object mtLoadPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
    end
    object mtLoadPackagesACTTHICK: TFloatField
      FieldName = 'ACTTHICK'
    end
    object mtLoadPackagesACTWIDTH: TFloatField
      FieldName = 'ACTWIDTH'
    end
    object mtLoadPackagesNOMTHICK: TFloatField
      FieldName = 'NOMTHICK'
    end
    object mtLoadPackagesNOMWIDTH: TFloatField
      FieldName = 'NOMWIDTH'
    end
    object mtLoadPackagesROWNO: TIntegerField
      DisplayLabel = 'Radnr'
      FieldName = 'ROWNO'
    end
    object mtLoadPackagesStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtLoadPackagesStatusText: TStringField
      FieldName = 'StatusText'
      Size = 50
    end
    object mtLoadPackagesInvNr: TIntegerField
      FieldName = 'InvNr'
    end
    object mtLoadPackagesALMM: TFloatField
      FieldName = 'ALMM'
    end
  end
  object mtPcsPerLength: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'NoOfPieces'
        DataType = ftInteger
      end
      item
        Name = 'UserID'
        DataType = ftInteger
      end
      item
        Name = 'ALMM'
        DataType = ftFloat
      end>
    IndexName = 'mtPcsPerLengthIndex2'
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
    Left = 336
    Top = 136
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
  object sq_OneUniquePkgExt: TADQuery
    Connection = dmsConnector.ADConnection1
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
      
        '        Cy.CityName+'#39'/'#39'+LIP.LogicalInventoryName                ' +
        '     AS INVENTORY,'
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
      '        PN.Status,'
      '        PG.SurfacingNo'
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
      
        '        INNER JOIN dbo.ProductGroup PG  ON PG.ProductGroupNo    ' +
        ' = Pr.ProductGroupNo'
      
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
      'AND PN.Status = :Status'
      ' '
      ' '
      '')
    Left = 728
    Top = 224
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
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_OneUniquePkgExtPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 150
    end
    object sq_OneUniquePkgExtPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_OneUniquePkgExtPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
    end
    object sq_OneUniquePkgExtSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_OneUniquePkgExtM3_NET: TFloatField
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
    end
    object sq_OneUniquePkgExtPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
    end
    object sq_OneUniquePkgExtM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
    end
    object sq_OneUniquePkgExtKVM: TFloatField
      FieldName = 'KVM'
      Origin = 'KVM'
    end
    object sq_OneUniquePkgExtLOPM: TFloatField
      FieldName = 'LOPM'
      Origin = 'LOPM'
    end
    object sq_OneUniquePkgExtPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
    end
    object sq_OneUniquePkgExtINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Origin = 'INVENTORY'
      ReadOnly = True
      Size = 101
    end
    object sq_OneUniquePkgExtONSTICKS: TIntegerField
      FieldName = 'ONSTICKS'
      Origin = 'ONSTICKS'
    end
    object sq_OneUniquePkgExtPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Origin = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OneUniquePkgExtOWNER: TStringField
      FieldName = 'OWNER'
      Origin = 'OWNER'
      Size = 80
    end
    object sq_OneUniquePkgExtOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
      Origin = 'OWNERNO'
    end
    object sq_OneUniquePkgExtLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
      Origin = 'LOG_INVENTORY_NO'
    end
    object sq_OneUniquePkgExtBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Origin = 'BAR_CODE'
      FixedChar = True
    end
    object sq_OneUniquePkgExtBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
      Origin = 'BARCODE_ID'
    end
    object sq_OneUniquePkgExtGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
      Origin = 'GRADE_STAMP'
      FixedChar = True
    end
    object sq_OneUniquePkgExtGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
      Origin = 'GRADESTAMPNO'
    end
    object sq_OneUniquePkgExtPKG_HEIGHT: TIntegerField
      FieldName = 'PKG_HEIGHT'
      Origin = 'PKG_HEIGHT'
    end
    object sq_OneUniquePkgExtPKGWIDTH: TIntegerField
      FieldName = 'PKGWIDTH'
      Origin = 'PKGWIDTH'
    end
    object sq_OneUniquePkgExtMINI_BUNDLE: TIntegerField
      FieldName = 'MINI_BUNDLE'
      Origin = 'MINI_BUNDLE'
    end
    object sq_OneUniquePkgExtSHRINK_WRAP: TIntegerField
      FieldName = 'SHRINK_WRAP'
      Origin = 'SHRINK_WRAP'
    end
    object sq_OneUniquePkgExtWRAP_TYPE: TStringField
      FieldName = 'WRAP_TYPE'
      Origin = 'WRAP_TYPE'
      FixedChar = True
      Size = 15
    end
    object sq_OneUniquePkgExtWRAPTYPENO: TIntegerField
      FieldName = 'WRAPTYPENO'
      Origin = 'WRAPTYPENO'
    end
    object sq_OneUniquePkgExtSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Origin = 'SUPPLIERNO'
    end
    object sq_OneUniquePkgExtOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
      Origin = 'OLD_PACKAGETYPENO'
    end
    object sq_OneUniquePkgExtPIP: TIntegerField
      FieldName = 'PIP'
      Origin = 'PIP'
      Required = True
    end
    object sq_OneUniquePkgExtStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object sq_OneUniquePkgExtSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
  end
  object cds_PkgStatus: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      
        'SELECT distinct TOP 1 pn.SupplierCode, LIPGH.LIPGroupNo, LIPGH.I' +
        'nvenType, LIPG.LIPNo,'
      '(Select LIPG2.LIPNo from dbo.LIPGroup LIPG2'
      'WHERE'
      ' LIPG2.LIPGroupNo = LIPGH.LIPGroupNo'
      'AND LIPG2.AvReg = 1 ) AS AvReg,'
      'pn.LogicalInventoryPointNo AS PkgRealLIPNo'
      ''
      'FROM  dbo.PackageNumber pn'
      
        'Left Outer Join dbo.LIPGroup LIPG on LIPG.LIPNo = PN.LogicalInve' +
        'ntoryPointNo'
      
        'Left Outer Join dbo.LIPGroupHdr LIPGH on LIPGH.LIPGroupNo = LIPG' +
        '.LIPGroupNo'
      'AND LIPGH.ClientNo = :ClientNo'
      'WHERE PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      ''
      '')
    Left = 344
    Top = 272
    ParamData = <
      item
        Name = 'CLIENTNO'
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
    object cds_PkgStatusSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PkgStatusLIPGroupNo: TIntegerField
      FieldName = 'LIPGroupNo'
      Origin = 'LIPGroupNo'
    end
    object cds_PkgStatusInvenType: TIntegerField
      FieldName = 'InvenType'
      Origin = 'InvenType'
    end
    object cds_PkgStatusLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_PkgStatusAvReg: TIntegerField
      FieldName = 'AvReg'
      Origin = 'AvReg'
      ReadOnly = True
    end
    object cds_PkgStatusPkgRealLIPNo: TIntegerField
      FieldName = 'PkgRealLIPNo'
      Origin = 'PkgRealLIPNo'
    end
  end
  object cds_Prod_In_LO: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      ''
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PT.ProductNo                    AS PRODUCTNO'
      ''
      ''
      ''
      'FROM dbo.LoadShippingPlan LS'
      
        '        Inner Join dbo.Loads L                          ON      ' +
        'L.LoadNo = LS.LoadNo'
      
        '        Inner Join dbo.LoadDetail LD             ON LD.LoadNo = ' +
        'LS.LoadNo'
      #9#9#9#9#9'AND LD.ShippingPlanNo = LS.ShippingPlanNo'
      ''
      
        '        Inner Join dbo.SupplierShippingPlan SSP '#9'ON '#9'SSP.Shippin' +
        'gPlanNo = LS.ShippingPlanNo'
      '        '#9#9#9#9#9#9'AND '#9'SSP.SupplierNo = L.SupplierNo'
      
        '                                                        AND SSP.' +
        'LoadingLocationNo = LS.LoadingLocationNo'
      
        '                                                        AND SSP.' +
        'ShipToInvPointNo = LS.ShipToInvPointNo'
      ''
      
        #9'Inner Join dbo.City'#9'Loading'#9#9'ON Loading.CityNo = SSP.LoadingLoc' +
        'ationNo'
      
        #9'Inner Join dbo.City'#9'ShipTo'#9#9'ON ShipTo.CityNo = SSP.ShipToInvPoi' +
        'ntNo'
      ''
      
        #9'Inner Join dbo.Client'#9#9'Supp '#9'ON  '#9'Supp.ClientNo'#9'= SSP.SupplierN' +
        'o'
      
        #9'Inner Join dbo.Client'#9#9'LocCust'#9'ON  '#9'LocCust.ClientNo'#9'= SSP.Cust' +
        'omerNo'
      ''
      
        '        INNER JOIN dbo.PackageNumber             PN ON PN.Packag' +
        'eNo = LD.PackageNo'
      #9#9#9#9#9#9#9'AND PN.SupplierCode = LD.SupplierCode'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      ''
      
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
      'WHERE'
      'LS.ShippingPlanNo = :LONo'
      'AND PIP.OwnerNo = :OwnerNo'
      ''
      'AND LD.PackageNo IN'
      '(Select PN.PackageNo'
      ' From  dbo.PackageNumber PN'
      'WHERE'
      'PN.Status = 1'
      'AND PN.SupplierCode = LD.SupplierCode'
      ''
      ' )'
      '')
    Left = 192
    Top = 248
    ParamData = <
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_Prod_In_LOPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 150
    end
    object cds_Prod_In_LOPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
    end
  end
  object sq_PkgAvReg: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'SELECT     RP.RegPointName, PP.ProductionDate'
      'FROM         Package_Production pp'
      
        'Inner Join dbo.RegistrationPoint RP on RP.RegPointNo = PP.Produc' +
        'tionUnitNo'
      'WHERE PP.PackageNo = :PackageNo'
      'AND PP.SupplierCode = :SupplierCode'
      'AND RP.SequenceNo = 1'
      'AND pp.Operation = 3'
      'AND pp.SupplierNo = :SupplierNo'
      '')
    Left = 240
    Top = 144
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
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_PkgAvRegRegPointName: TStringField
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      FixedChar = True
      Size = 30
    end
    object sq_PkgAvRegProductionDate: TSQLTimeStampField
      FieldName = 'ProductionDate'
      Origin = 'ProductionDate'
    end
  end
  object sq_PkgNoAvail: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      
        'Select PackageNo, SupplierCode, PackageTypeNo from dbo.PackageNu' +
        'mber '
      'where PackageTypeNo = :PackageTypeNo'
      'and LogicalInventoryPointNo = :LogicalInventoryPointNo'
      'and Status = 1'
      'Order by DateCreated'
      '')
    Left = 352
    Top = 32
    ParamData = <
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOGICALINVENTORYPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_PkgNoAvailPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_PkgNoAvailSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_PkgNoAvailPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
  end
  object sq_ProductLengths: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      
        'SELECT Distinct PL.ProductLengthNo, PL.ActualLengthMM, PL.Nomina' +
        'lLengthMM, PL.NominalLengthFEET ,'
      'PL.ActualLengthINCH , PL.PET , PL.FingerJoint'
      
        'FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL O' +
        'N PL.ProductLengthNo = PGL.ProductLengthNo'
      ''
      ''
      'Where PL.ActualLengthMM < 20000'
      '')
    Left = 240
    Top = 24
    object sq_ProductLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_ProductLengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object sq_ProductLengthsNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
      Required = True
    end
    object sq_ProductLengthsNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
      Origin = 'NominalLengthFEET'
    end
    object sq_ProductLengthsActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Origin = 'ActualLengthINCH'
      FixedChar = True
      Size = 15
    end
    object sq_ProductLengthsPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object sq_ProductLengthsFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
    end
  end
  object sq_GetPkgsByLONo: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      ''
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
      
        '        Cy.CityName+'#39'/'#39'+LIP.LogicalInventoryName                ' +
        '     AS INVENTORY,'
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
      ''
      ''
      'LS.LoadNo,'
      'SSP.SupplierNo,'
      'LS.ShippingPlanNo,'
      'LD.PackageNo,'
      'LD.SupplierCode,'
      'SSP.CustomerNo,'
      'Supp.ClientName AS SUPPLIER,'
      'LocCust.ClientName AS LOC_CUST,'
      'SSP.ObjectType,'
      '-1 AS Avrop_CustomerNo,'
      'SSP.LoadingLocationNo,'
      'SSP.ShipToInvPointNo,'
      'Loading.CityName AS LOADING_LOCATION,'
      'ShipTo.CityName AS SHIP_TO,'
      '        PG.SurfacingNo'
      ''
      ''
      'FROM dbo.LoadShippingPlan LS'
      
        '        Inner Join dbo.Loads L                          ON      ' +
        'L.LoadNo = LS.LoadNo'
      
        '        Inner Join dbo.LoadDetail LD             ON LD.LoadNo = ' +
        'LS.LoadNo'
      #9#9#9#9#9'AND LD.ShippingPlanNo = LS.ShippingPlanNo'
      ''
      
        '        Inner Join dbo.SupplierShippingPlan SSP '#9'ON '#9'SSP.Shippin' +
        'gPlanNo = LS.ShippingPlanNo'
      '        '#9#9#9#9#9#9'AND '#9'SSP.SupplierNo = L.SupplierNo'
      
        '                                                        AND SSP.' +
        'LoadingLocationNo = LS.LoadingLocationNo'
      
        '                                                        AND SSP.' +
        'ShipToInvPointNo = LS.ShipToInvPointNo'
      ''
      
        #9'Inner Join dbo.City'#9'Loading'#9#9'ON Loading.CityNo = SSP.LoadingLoc' +
        'ationNo'
      
        #9'Inner Join dbo.City'#9'ShipTo'#9#9'ON ShipTo.CityNo = SSP.ShipToInvPoi' +
        'ntNo'
      ''
      
        #9'Inner Join dbo.Client'#9#9'Supp '#9'ON  '#9'Supp.ClientNo'#9'= SSP.SupplierN' +
        'o'
      
        #9'Inner Join dbo.Client'#9#9'LocCust'#9'ON  '#9'LocCust.ClientNo'#9'= SSP.Cust' +
        'omerNo'
      ''
      
        '        INNER JOIN dbo.PackageNumber             PN ON PN.Packag' +
        'eNo = LD.PackageNo '
      #9#9#9#9#9#9#9'AND PN.SupplierCode = LD.SupplierCode'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      
        '        INNER JOIN dbo.ProductGroup PG  ON PG.ProductGroupNo    ' +
        ' = Pr.ProductGroupNo'
      ''
      
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
      'WHERE'
      'LS.ShippingPlanNo = :LONo'
      'AND PIP.OwnerNo = :OwnerNo'
      'AND PT.ProductNo = :ProductNo'
      ''
      'AND LD.PackageNo IN'
      '(Select PN.PackageNo'
      ' From  dbo.PackageNumber PN'
      'WHERE'
      'PN.Status = 1'
      'AND PN.SupplierCode = LD.SupplierCode'
      ''
      ' )'
      ' '
      ' '
      '')
    Left = 48
    Top = 128
    ParamData = <
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPkgsByLONoPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 150
    end
    object sq_GetPkgsByLONoPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      Required = True
    end
    object sq_GetPkgsByLONoPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
    end
    object sq_GetPkgsByLONoSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_GetPkgsByLONoM3_NET: TFloatField
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
    end
    object sq_GetPkgsByLONoPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
    end
    object sq_GetPkgsByLONoM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
    end
    object sq_GetPkgsByLONoKVM: TFloatField
      FieldName = 'KVM'
      Origin = 'KVM'
    end
    object sq_GetPkgsByLONoLOPM: TFloatField
      FieldName = 'LOPM'
      Origin = 'LOPM'
    end
    object sq_GetPkgsByLONoPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
    end
    object sq_GetPkgsByLONoINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Origin = 'INVENTORY'
      ReadOnly = True
      Size = 101
    end
    object sq_GetPkgsByLONoONSTICKS: TIntegerField
      FieldName = 'ONSTICKS'
      Origin = 'ONSTICKS'
    end
    object sq_GetPkgsByLONoPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Origin = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_GetPkgsByLONoOWNER: TStringField
      FieldName = 'OWNER'
      Origin = 'OWNER'
      Size = 80
    end
    object sq_GetPkgsByLONoOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
      Origin = 'OWNERNO'
    end
    object sq_GetPkgsByLONoLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
      Origin = 'LOG_INVENTORY_NO'
    end
    object sq_GetPkgsByLONoBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Origin = 'BAR_CODE'
      FixedChar = True
    end
    object sq_GetPkgsByLONoBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
      Origin = 'BARCODE_ID'
    end
    object sq_GetPkgsByLONoGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
      Origin = 'GRADE_STAMP'
      FixedChar = True
    end
    object sq_GetPkgsByLONoGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
      Origin = 'GRADESTAMPNO'
    end
    object sq_GetPkgsByLONoPKG_HEIGHT: TIntegerField
      FieldName = 'PKG_HEIGHT'
      Origin = 'PKG_HEIGHT'
    end
    object sq_GetPkgsByLONoPKGWIDTH: TIntegerField
      FieldName = 'PKGWIDTH'
      Origin = 'PKGWIDTH'
    end
    object sq_GetPkgsByLONoMINI_BUNDLE: TIntegerField
      FieldName = 'MINI_BUNDLE'
      Origin = 'MINI_BUNDLE'
    end
    object sq_GetPkgsByLONoSHRINK_WRAP: TIntegerField
      FieldName = 'SHRINK_WRAP'
      Origin = 'SHRINK_WRAP'
    end
    object sq_GetPkgsByLONoWRAP_TYPE: TStringField
      FieldName = 'WRAP_TYPE'
      Origin = 'WRAP_TYPE'
      FixedChar = True
      Size = 15
    end
    object sq_GetPkgsByLONoWRAPTYPENO: TIntegerField
      FieldName = 'WRAPTYPENO'
      Origin = 'WRAPTYPENO'
    end
    object sq_GetPkgsByLONoSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Origin = 'SUPPLIERNO'
    end
    object sq_GetPkgsByLONoOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
      Origin = 'OLD_PACKAGETYPENO'
    end
    object sq_GetPkgsByLONoLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetPkgsByLONoSupplierNo_1: TIntegerField
      FieldName = 'SupplierNo_1'
      Origin = 'SupplierNo'
      Required = True
    end
    object sq_GetPkgsByLONoShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetPkgsByLONoPackageNo_1: TIntegerField
      FieldName = 'PackageNo_1'
      Origin = 'PackageNo'
      Required = True
    end
    object sq_GetPkgsByLONoSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      FixedChar = True
      Size = 3
    end
    object sq_GetPkgsByLONoCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object sq_GetPkgsByLONoSUPPLIER: TStringField
      FieldName = 'SUPPLIER'
      Origin = 'SUPPLIER'
      Size = 80
    end
    object sq_GetPkgsByLONoLOC_CUST: TStringField
      FieldName = 'LOC_CUST'
      Origin = 'LOC_CUST'
      Size = 80
    end
    object sq_GetPkgsByLONoObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
    end
    object sq_GetPkgsByLONoAvrop_CustomerNo: TIntegerField
      FieldName = 'Avrop_CustomerNo'
      Origin = 'Avrop_CustomerNo'
      ReadOnly = True
      Required = True
    end
    object sq_GetPkgsByLONoLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      Required = True
    end
    object sq_GetPkgsByLONoShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
    end
    object sq_GetPkgsByLONoLOADING_LOCATION: TStringField
      FieldName = 'LOADING_LOCATION'
      Origin = 'LOADING_LOCATION'
      Size = 50
    end
    object sq_GetPkgsByLONoSHIP_TO: TStringField
      FieldName = 'SHIP_TO'
      Origin = 'SHIP_TO'
      Size = 50
    end
    object sq_GetPkgsByLONoSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
  end
  object sq_OnePkgDetailData: TADQuery
    Connection = dmsConnector.ADConnection1
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
      
        '        Cy.CityName+'#39'/'#39'+LIP.LogicalInventoryName                ' +
        '     AS INVENTORY,'
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
      '        PG.SurfacingNo'
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
      
        '        INNER JOIN dbo.ProductGroup PG  ON PG.ProductGroupNo    ' +
        ' = Pr.ProductGroupNo'
      
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
      'WHERE     PN.PackageNo >= :First_PackageNo'
      'AND PN.PackageNo <= :Last_PackageNo'
      'AND PN.Status = 1'
      'AND PIP.OwnerNo = :OwnerNo'
      ''
      'AND PIP.PhyInvPointNameNo in'
      '(Select PhyInvPointNameNo from'
      'PHYSICALINVENTORYPOINT'
      'where OwnerNo = :UserCompanyLoggedIn)'
      'Order by PN.PackageNo'
      ' '
      ' '
      '')
    Left = 48
    Top = 184
    ParamData = <
      item
        Name = 'FIRST_PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LAST_PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERCOMPANYLOGGEDIN'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_OnePkgDetailDataPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 150
    end
    object sq_OnePkgDetailDataPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_OnePkgDetailDataPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
    end
    object sq_OnePkgDetailDataSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_OnePkgDetailDataM3_NET: TFloatField
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
    end
    object sq_OnePkgDetailDataPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
    end
    object sq_OnePkgDetailDataM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
    end
    object sq_OnePkgDetailDataKVM: TFloatField
      FieldName = 'KVM'
      Origin = 'KVM'
    end
    object sq_OnePkgDetailDataLOPM: TFloatField
      FieldName = 'LOPM'
      Origin = 'LOPM'
    end
    object sq_OnePkgDetailDataPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
    end
    object sq_OnePkgDetailDataINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Origin = 'INVENTORY'
      ReadOnly = True
      Size = 101
    end
    object sq_OnePkgDetailDataPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Origin = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OnePkgDetailDataOWNER: TStringField
      FieldName = 'OWNER'
      Origin = 'OWNER'
      Size = 80
    end
    object sq_OnePkgDetailDataOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
      Origin = 'OWNERNO'
    end
    object sq_OnePkgDetailDataLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
      Origin = 'LOG_INVENTORY_NO'
    end
    object sq_OnePkgDetailDataBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Origin = 'BAR_CODE'
      FixedChar = True
    end
    object sq_OnePkgDetailDataBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
      Origin = 'BARCODE_ID'
    end
    object sq_OnePkgDetailDataGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
      Origin = 'GRADE_STAMP'
      FixedChar = True
    end
    object sq_OnePkgDetailDataGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
      Origin = 'GRADESTAMPNO'
    end
    object sq_OnePkgDetailDataSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Origin = 'SUPPLIERNO'
    end
    object sq_OnePkgDetailDataOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
      Origin = 'OLD_PACKAGETYPENO'
    end
    object sq_OnePkgDetailDataSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object sq_OnePkgDetailDataPKG_HEIGHT: TIntegerField
      FieldName = 'PKG_HEIGHT'
      Origin = 'PKG_HEIGHT'
    end
    object sq_OnePkgDetailDataPKGWIDTH: TIntegerField
      FieldName = 'PKGWIDTH'
      Origin = 'PKGWIDTH'
    end
    object sq_OnePkgDetailDataMINI_BUNDLE: TIntegerField
      FieldName = 'MINI_BUNDLE'
      Origin = 'MINI_BUNDLE'
    end
    object sq_OnePkgDetailDataSHRINK_WRAP: TIntegerField
      FieldName = 'SHRINK_WRAP'
      Origin = 'SHRINK_WRAP'
    end
    object sq_OnePkgDetailDataWRAP_TYPE: TStringField
      FieldName = 'WRAP_TYPE'
      Origin = 'WRAP_TYPE'
      FixedChar = True
      Size = 15
    end
    object sq_OnePkgDetailDataWRAPTYPENO: TIntegerField
      FieldName = 'WRAPTYPENO'
      Origin = 'WRAPTYPENO'
    end
    object sq_OnePkgDetailDataONSTICKS: TIntegerField
      FieldName = 'ONSTICKS'
      Origin = 'ONSTICKS'
    end
  end
  object sq_OneUniquePkg: TADQuery
    Connection = dmsConnector.ADConnection1
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
      
        '        Cy.CityName+'#39'/'#39'+LIP.LogicalInventoryName                ' +
        '     AS INVENTORY,'
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
      '        PIP.OwnerNo                     AS SUPPLIERNO,'
      '        PN.PackageTypeNo'#9'        AS OLD_PACKAGETYPENO,'
      '        PIP.PhysicalInventoryPointNo    AS PIP,'
      '        PN.Status,'
      '        PG.SurfacingNo,'
      '        PG.ActualThicknessMM,'
      '        PG.ActualWidthMM,'
      '        PG.NominalThicknessMM,'
      '        PG.NominalWidthMM'
      ''
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
      
        '        INNER JOIN dbo.ProductGroup PG  ON PG.ProductGroupNo    ' +
        ' = Pr.ProductGroupNo'
      
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
      'AND ((PN.Status = 1) or (PN.Status = :Status))'
      'AND PIP.OwnerNo = :OwnerNo'
      ''
      'AND PIP.PhyInvPointNameNo in'
      '(Select PhyInvPointNameNo from'
      'PHYSICALINVENTORYPOINT'
      'where OwnerNo = :UserCompanyLoggedIn)')
    Left = 48
    Top = 240
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
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
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
      ReadOnly = True
      Size = 101
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
    object sq_OneUniquePkgSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Origin = 'SUPPLIERNO'
    end
    object sq_OneUniquePkgOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
      Origin = 'OLD_PACKAGETYPENO'
    end
    object sq_OneUniquePkgSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object sq_OneUniquePkgPIP: TIntegerField
      FieldName = 'PIP'
      Origin = 'PIP'
      Required = True
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
    object sq_OneUniquePkgStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object sq_OneUniquePkgONSTICKS: TIntegerField
      FieldName = 'ONSTICKS'
      Origin = 'ONSTICKS'
    end
    object sq_OneUniquePkgActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object sq_OneUniquePkgActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object sq_OneUniquePkgNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object sq_OneUniquePkgNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
  end
  object sq_PkgInLoad: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'SELECT LD.LoadNo AS LastNr, LD.ShippingPlanNo AS LO'
      'FROM '
      'dbo.Loaddetail LD '
      'where LD.PackageNo = :PackageNo'
      'AND LD.SupplierCode = :SupplierCode'
      '')
    Left = 48
    Top = 296
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
    object sq_PkgInLoadLastNr: TIntegerField
      FieldName = 'LastNr'
      Origin = 'LastNr'
      Required = True
    end
    object sq_PkgInLoadLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
    end
  end
  object sq_OnePkg: TADQuery
    Connection = dmsConnector.ADConnection1
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
      '        PN.PackageTypeNo'#9'        AS OLD_PACKAGETYPENO'
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
      'AND PIP.OwnerNo = :OwnerNo'
      ''
      'AND PIP.PhyInvPointNameNo in '
      '(Select PhyInvPointNameNo from '
      'PHYSICALINVENTORYPOINT'
      'where OwnerNo = :UserCompanyLoggedIn)'
      '')
    Left = 48
    Top = 360
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
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERCOMPANYLOGGEDIN'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_OnePkgPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 150
    end
    object sq_OnePkgPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_OnePkgPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
    end
    object sq_OnePkgSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_OnePkgM3_NET: TFloatField
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
    end
    object sq_OnePkgPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
    end
    object sq_OnePkgM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
    end
    object sq_OnePkgKVM: TFloatField
      FieldName = 'KVM'
      Origin = 'KVM'
    end
    object sq_OnePkgLOPM: TFloatField
      FieldName = 'LOPM'
      Origin = 'LOPM'
    end
    object sq_OnePkgPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
    end
    object sq_OnePkgINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Origin = 'INVENTORY'
      Size = 50
    end
    object sq_OnePkgONSTICKS: TIntegerField
      FieldName = 'ONSTICKS'
      Origin = 'ONSTICKS'
    end
    object sq_OnePkgPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Origin = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OnePkgOWNER: TStringField
      FieldName = 'OWNER'
      Origin = 'OWNER'
      Size = 80
    end
    object sq_OnePkgOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
      Origin = 'OWNERNO'
    end
    object sq_OnePkgLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
      Origin = 'LOG_INVENTORY_NO'
    end
    object sq_OnePkgBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Origin = 'BAR_CODE'
      FixedChar = True
    end
    object sq_OnePkgBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
      Origin = 'BARCODE_ID'
    end
    object sq_OnePkgGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
      Origin = 'GRADE_STAMP'
      FixedChar = True
    end
    object sq_OnePkgGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
      Origin = 'GRADESTAMPNO'
    end
    object sq_OnePkgPKG_HEIGHT: TIntegerField
      FieldName = 'PKG_HEIGHT'
      Origin = 'PKG_HEIGHT'
    end
    object sq_OnePkgPKGWIDTH: TIntegerField
      FieldName = 'PKGWIDTH'
      Origin = 'PKGWIDTH'
    end
    object sq_OnePkgMINI_BUNDLE: TIntegerField
      FieldName = 'MINI_BUNDLE'
      Origin = 'MINI_BUNDLE'
    end
    object sq_OnePkgSHRINK_WRAP: TIntegerField
      FieldName = 'SHRINK_WRAP'
      Origin = 'SHRINK_WRAP'
    end
    object sq_OnePkgWRAP_TYPE: TStringField
      FieldName = 'WRAP_TYPE'
      Origin = 'WRAP_TYPE'
      FixedChar = True
      Size = 15
    end
    object sq_OnePkgWRAPTYPENO: TIntegerField
      FieldName = 'WRAPTYPENO'
      Origin = 'WRAPTYPENO'
    end
    object sq_OnePkgSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Origin = 'SUPPLIERNO'
    end
    object sq_OnePkgOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
      Origin = 'OLD_PACKAGETYPENO'
    end
  end
  object sp_PackageTypes: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vis_PkgType_II'
    Left = 728
    Top = 16
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
  object sp_NewPackageType: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vis_NewPkgType'
    Left = 728
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
  object sp_NewPackageDetail: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_NewPackageDetail'
    Left = 736
    Top = 152
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
  object sp_ExtMovePkg: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_ExtMovePkg'
    Left = 616
    Top = 456
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
        Name = '@NewLogicalInventoryPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@OldLogicalInventoryPointNo'
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
        Name = '@RegistrationPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@OLD_PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@OldSupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@NewSupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_changePkgInventering: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_changePkgInventering'
    Left = 616
    Top = 384
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
  object sp_MovePkg: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_MovePkg'
    Left = 880
    Top = 472
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
      end>
  end
  object sp_updateFelReg: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_updateFelReg_IIII'
    Left = 880
    Top = 424
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
      end
      item
        Position = 12
        Name = '@RunNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@Package_Size'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 14
        Name = '@SkiftLagNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_Del_PkgProd: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'Vida_Del_PkgProd'
    Left = 616
    Top = 200
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
        DataType = ftString
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
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object sp_ChangePkg: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_ChangePackage_II'
    Left = 880
    Top = 240
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
  object sp_ChgPkgVard: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_ChgPkgVard_II'
    Left = 880
    Top = 368
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
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@Package_Size'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_StandardLengths: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_StandardLengths'
    Left = 480
    Top = 464
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
  object sp_ProdLeng: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.VIDA_ProdLeng'
    Left = 480
    Top = 400
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
  object sp_PkgInfo: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_OnePackage_Info'
    Left = 480
    Top = 336
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
  object sp_PackageTotals: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_PackageTotals'
    Left = 480
    Top = 264
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
  object sp_NewPackageNo: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_NewPackageNo_II'
    Left = 480
    Top = 200
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
      end>
  end
  object sp_Populate_One_PkgTypeLengths: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_Populate_One_PackageTypeLengths'
    Left = 480
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
        Name = '@SearchPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PackageTypeDetail: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_PackageTypeDetail'
    Left = 480
    Top = 56
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
  object sp_VardaBortPaket: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_Removepkg'
    Left = 344
    Top = 360
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
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@LogicalInventoryPointNo'
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
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@MatPunktAgareNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_RemovePackageFromInventory: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vis_AvregPkg_III'
    Left = 192
    Top = 352
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
      end
      item
        Position = 6
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@MatPunktAgareNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@RunNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@TerminalNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@LogicalInventoryPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@SkiftLagNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_DeletePackage: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_DeletePackage'
    Left = 192
    Top = 400
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
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@LogicalInventoryPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PaRegPaket: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_PaRegistreraPaket'
    Left = 192
    Top = 456
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
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@LogicalInventoryPointNo'
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
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@MatPunktAgareNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_AktiveraPktExt: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vis_AktiveraPktExt'
    Left = 192
    Top = 520
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
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@LogicalInventoryPointNo'
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
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@MatPunktAgareNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_OnePackageNo: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_OnePackageNo'
    Left = 48
    Top = 480
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
  object sp_vida_updateProdStat: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_updateProdStat'
    Left = 728
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
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@RunNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@ShiftNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PaRegPaket_II: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vida_PaRegistreraPaket_II'
    Left = 192
    Top = 584
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
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@LogicalInventoryPointNo'
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
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@MatPunktAgareNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
