object dmPkgs: TdmPkgs
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 212
  Top = 152
  Height = 571
  Width = 806
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
        Name = 'ON_STICKS'
        DataType = ftInteger
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
        Name = 'PKG_HEIGHT'
        DataType = ftInteger
      end
      item
        Name = 'PKG_WIDTH'
        DataType = ftInteger
      end
      item
        Name = 'MINI_BUNDLE'
        DataType = ftInteger
      end
      item
        Name = 'SHRINK_WRAP'
        DataType = ftInteger
      end
      item
        Name = 'WRAP_TYPE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'WRAPTYPENO'
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
        Name = 'LoadDetailNo'
        DataType = ftInteger
      end
      item
        Name = 'NOOFPKG'
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
      end>
    IndexName = 'mtLoadPackagesIndex6'
    IndexDefs = <
      item
        Name = 'mtLoadPackagesIndex5'
        Fields = 'PACKAGENO;SUPP_CODE'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'mtLoadPackagesIndex6'
        Fields = 'ROWNO'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterInsert = mtLoadPackagesAfterInsert
    Left = 48
    Top = 24
    object mtLoadPackagesPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object mtLoadPackagesPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object mtLoadPackagesPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object mtLoadPackagesSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object mtLoadPackagesM3_NET: TFloatField
      FieldName = 'M3_NET'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesPCS: TIntegerField
      FieldName = 'PCS'
    end
    object mtLoadPackagesM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesKVM: TFloatField
      FieldName = 'KVM'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesLOPM: TFloatField
      FieldName = 'LOPM'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtLoadPackagesINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Size = 50
    end
    object mtLoadPackagesON_STICKS: TIntegerField
      FieldName = 'ON_STICKS'
    end
    object mtLoadPackagesPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object mtLoadPackagesOWNER: TStringField
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
      FieldName = 'BAR_CODE'
    end
    object mtLoadPackagesBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object mtLoadPackagesGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
    end
    object mtLoadPackagesGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object mtLoadPackagesPKG_HEIGHT: TIntegerField
      FieldName = 'PKG_HEIGHT'
    end
    object mtLoadPackagesPKG_WIDTH: TIntegerField
      FieldName = 'PKG_WIDTH'
    end
    object mtLoadPackagesMINI_BUNDLE: TIntegerField
      FieldName = 'MINI_BUNDLE'
    end
    object mtLoadPackagesSHRINK_WRAP: TIntegerField
      FieldName = 'SHRINK_WRAP'
    end
    object mtLoadPackagesWRAP_TYPE: TStringField
      FieldName = 'WRAP_TYPE'
      Size = 15
    end
    object mtLoadPackagesWRAPTYPENO: TIntegerField
      FieldName = 'WRAPTYPENO'
    end
    object mtLoadPackagesSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object mtLoadPackagesOld_PackageTypeNo: TIntegerField
      FieldName = 'Old_PackageTypeNo'
    end
    object mtLoadPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
    end
    object mtLoadPackagesNOOFPKG: TIntegerField
      FieldName = 'NOOFPKG'
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
      FieldName = 'ROWNO'
    end
  end
  object ds_LoadPackages: TDataSource
    DataSet = mtLoadPackages
    Left = 48
    Top = 72
  end
  object sp_DeletePackage: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_DeletePackage'
    Left = 192
    Top = 416
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
    FilterOptions = []
    Version = '4.08b'
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
  object sq_ProductLengths: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      
        'SELECT Distinct PL.ProductLengthNo, PL.ActualLengthMM, PL.Nomina' +
        'lLengthMM, PL.NominalLengthFEET ,'
      'PL.ActualLengthINCH , PL.PET , PL.FingerJoint'
      
        'FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL O' +
        'N PL.ProductLengthNo = PGL.ProductLengthNo'
      ''
      ''
      'Where PL.ActualLengthMM < 20000')
    Left = 240
    Top = 24
    object sq_ProductLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object sq_ProductLengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
    end
    object sq_ProductLengthsNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
    end
    object sq_ProductLengthsNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
    end
    object sq_ProductLengthsActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Size = 15
    end
    object sq_ProductLengthsPET: TIntegerField
      FieldName = 'PET'
    end
    object sq_ProductLengthsFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
    end
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
    IndexFieldNames = 'ProductGroupNo'
    IndexName = 'mtProdSpecificLengthsIndex1'
    IndexDefs = <
      item
        Name = 'mtProdSpecificLengthsIndex1'
        Fields = 'ProductGroupNo'
      end
      item
        Name = 'mtProdSpecificLengthsIndex2'
        Fields = 'ProductGroupNo;ProductLengthNo'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
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
  object sp_ProdLeng: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'ProductGroupNo'
        ParamType = ptInput
      end>
    StoredProcName = 'VIDA_ProdLeng'
    Left = 480
    Top = 384
    object sp_ProdLengProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Required = True
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
    IndexFieldNames = 'ProductLengthNo'
    IndexName = 'mtStandardLengthsIndex1'
    IndexDefs = <
      item
        Name = 'mtStandardLengthsIndex1'
        Fields = 'ProductLengthNo'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 368
    Top = 432
    object mtStandardLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
  end
  object sp_StandardLengths: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'LengthGroupNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_StandardLengths'
    Left = 480
    Top = 432
    object sp_StandardLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Required = True
    end
  end
  object sq_OnePkgDetailData: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'First_PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Last_PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserCompanyLoggedIn'
        ParamType = ptInput
      end>
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
      'WHERE     PN.PackageNo >= :First_PackageNo'
      'AND PN.PackageNo <= :Last_PackageNo'
      'AND PN.Status = 1'
      'AND PIP.OwnerNo = :OwnerNo'
      ''
      'AND PIP.PhyInvPointNameNo in'
      '(Select PhyInvPointNameNo from'
      'PHYSICALINVENTORYPOINT'
      'where OwnerNo = :UserCompanyLoggedIn)'
      'Order by PN.PackageNo')
    Left = 48
    Top = 192
    object sq_OnePkgDetailDataPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object sq_OnePkgDetailDataPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object sq_OnePkgDetailDataPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object sq_OnePkgDetailDataSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object sq_OnePkgDetailDataM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_OnePkgDetailDataPCS: TIntegerField
      FieldName = 'PCS'
    end
    object sq_OnePkgDetailDataM3_NOM: TFloatField
      FieldName = 'M3_NOM'
    end
    object sq_OnePkgDetailDataKVM: TFloatField
      FieldName = 'KVM'
    end
    object sq_OnePkgDetailDataLOPM: TFloatField
      FieldName = 'LOPM'
    end
    object sq_OnePkgDetailDataPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object sq_OnePkgDetailDataINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Size = 50
    end
    object sq_OnePkgDetailDataONSTICKS: TIntegerField
      FieldName = 'ONSTICKS'
    end
    object sq_OnePkgDetailDataPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OnePkgDetailDataOWNER: TStringField
      FieldName = 'OWNER'
      Size = 80
    end
    object sq_OnePkgDetailDataOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
    end
    object sq_OnePkgDetailDataLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
    end
    object sq_OnePkgDetailDataBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
    end
    object sq_OnePkgDetailDataBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object sq_OnePkgDetailDataGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
    end
    object sq_OnePkgDetailDataGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object sq_OnePkgDetailDataPKG_HEIGHT: TIntegerField
      FieldName = 'PKG_HEIGHT'
    end
    object sq_OnePkgDetailDataPKGWIDTH: TIntegerField
      FieldName = 'PKGWIDTH'
    end
    object sq_OnePkgDetailDataMINI_BUNDLE: TIntegerField
      FieldName = 'MINI_BUNDLE'
    end
    object sq_OnePkgDetailDataSHRINK_WRAP: TIntegerField
      FieldName = 'SHRINK_WRAP'
    end
    object sq_OnePkgDetailDataWRAP_TYPE: TStringField
      FieldName = 'WRAP_TYPE'
      Size = 15
    end
    object sq_OnePkgDetailDataWRAPTYPENO: TIntegerField
      FieldName = 'WRAPTYPENO'
    end
    object sq_OnePkgDetailDataSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object sq_OnePkgDetailDataOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
    end
  end
  object sp_PackageTypeDetail: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_PackageTypeDetail'
    Left = 480
    Top = 32
  end
  object sp_NewPackageType: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BarCodeID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GradeStamp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'WrapType'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageHeight'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageWidth'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Minibundled'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShrinkWrap'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OnSticks'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TotalNoOfPieces'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_NewPackageType'
    Left = 712
    Top = 88
  end
  object sp_PackageTypes: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ProductNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BarCodeID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GradeStamp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'WrapType'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageHeight'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageWidth'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Minibundled'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShrinkWrap'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OnSticks'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TotalPieces'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_PackageTypes'
    Left = 712
    Top = 32
  end
  object sp_NewPackageDetail: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductLengthNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NoOfPieces'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_NewPackageDetail'
    Left = 712
    Top = 136
  end
  object sp_NewPackageNo: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CreatedOfPkgStr'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_NewPackageNo'
    Left = 616
    Top = 32
  end
  object sp_PackageTotals: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PkgNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_PackageTotals'
    Left = 480
    Top = 264
  end
  object sp_Populate_One_PkgTypeLengths: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'SearchPackageTypeNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_Populate_One_PackageTypeLengths'
    Left = 480
    Top = 88
  end
  object sp_PkgInfo: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end
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
    StoredProcName = 'vida_OnePackage_Info'
    Left = 480
    Top = 320
    object sp_PkgInfoCREATED: TSQLTimeStampField
      FieldName = 'CREATED'
      Required = True
    end
    object sp_PkgInfoCREATED_BY: TStringField
      FieldName = 'CREATED_BY'
      Required = True
    end
    object sp_PkgInfoOWNER: TStringField
      FieldName = 'OWNER'
      Required = True
      Size = 80
    end
    object sp_PkgInfoPKG_STATUS: TIntegerField
      FieldName = 'PKG_STATUS'
      Required = True
    end
    object sp_PkgInfoINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Required = True
      Size = 50
    end
  end
  object sp_ChangePkg: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OLD_PackageTypeNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_ChangePackage'
    Left = 616
    Top = 88
  end
  object sq_GetPkgsByLONo: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'LONo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductNo'
        ParamType = ptInput
      end>
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
      'ShipTo.CityName AS SHIP_TO'
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
      ' )')
    Left = 48
    Top = 144
    object sq_GetPkgsByLONoPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object sq_GetPkgsByLONoPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object sq_GetPkgsByLONoPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object sq_GetPkgsByLONoSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object sq_GetPkgsByLONoM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_GetPkgsByLONoPCS: TIntegerField
      FieldName = 'PCS'
    end
    object sq_GetPkgsByLONoM3_NOM: TFloatField
      FieldName = 'M3_NOM'
    end
    object sq_GetPkgsByLONoKVM: TFloatField
      FieldName = 'KVM'
    end
    object sq_GetPkgsByLONoLOPM: TFloatField
      FieldName = 'LOPM'
    end
    object sq_GetPkgsByLONoPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object sq_GetPkgsByLONoINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Size = 50
    end
    object sq_GetPkgsByLONoONSTICKS: TIntegerField
      FieldName = 'ONSTICKS'
    end
    object sq_GetPkgsByLONoPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_GetPkgsByLONoOWNER: TStringField
      FieldName = 'OWNER'
      Size = 80
    end
    object sq_GetPkgsByLONoOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
    end
    object sq_GetPkgsByLONoLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
    end
    object sq_GetPkgsByLONoBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
    end
    object sq_GetPkgsByLONoBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object sq_GetPkgsByLONoGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
    end
    object sq_GetPkgsByLONoGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object sq_GetPkgsByLONoPKG_HEIGHT: TIntegerField
      FieldName = 'PKG_HEIGHT'
    end
    object sq_GetPkgsByLONoPKGWIDTH: TIntegerField
      FieldName = 'PKGWIDTH'
    end
    object sq_GetPkgsByLONoMINI_BUNDLE: TIntegerField
      FieldName = 'MINI_BUNDLE'
    end
    object sq_GetPkgsByLONoSHRINK_WRAP: TIntegerField
      FieldName = 'SHRINK_WRAP'
    end
    object sq_GetPkgsByLONoWRAP_TYPE: TStringField
      FieldName = 'WRAP_TYPE'
      Size = 15
    end
    object sq_GetPkgsByLONoWRAPTYPENO: TIntegerField
      FieldName = 'WRAPTYPENO'
    end
    object sq_GetPkgsByLONoSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object sq_GetPkgsByLONoOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
    end
  end
  object sp_SetPkgStatus: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_SetPkgStatus'
    Left = 480
    Top = 152
  end
  object sq_OneUniquePkg: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
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
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserCompanyLoggedIn'
        ParamType = ptInput
      end>
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
      'AND PN.Status = 1'
      'AND PIP.OwnerNo = :OwnerNo'
      ''
      'AND PIP.PhyInvPointNameNo in '
      '(Select PhyInvPointNameNo from '
      'PHYSICALINVENTORYPOINT'
      'where OwnerNo = :UserCompanyLoggedIn)')
    Left = 48
    Top = 248
    object sq_OneUniquePkgPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object sq_OneUniquePkgPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object sq_OneUniquePkgPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object sq_OneUniquePkgSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object sq_OneUniquePkgM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_OneUniquePkgPCS: TIntegerField
      FieldName = 'PCS'
    end
    object sq_OneUniquePkgM3_NOM: TFloatField
      FieldName = 'M3_NOM'
    end
    object sq_OneUniquePkgKVM: TFloatField
      FieldName = 'KVM'
    end
    object sq_OneUniquePkgLOPM: TFloatField
      FieldName = 'LOPM'
    end
    object sq_OneUniquePkgPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object sq_OneUniquePkgINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Size = 50
    end
    object sq_OneUniquePkgONSTICKS: TIntegerField
      FieldName = 'ONSTICKS'
    end
    object sq_OneUniquePkgPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OneUniquePkgOWNER: TStringField
      FieldName = 'OWNER'
      Size = 80
    end
    object sq_OneUniquePkgOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
    end
    object sq_OneUniquePkgLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
    end
    object sq_OneUniquePkgBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
    end
    object sq_OneUniquePkgBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object sq_OneUniquePkgGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
    end
    object sq_OneUniquePkgGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object sq_OneUniquePkgPKG_HEIGHT: TIntegerField
      FieldName = 'PKG_HEIGHT'
    end
    object sq_OneUniquePkgPKGWIDTH: TIntegerField
      FieldName = 'PKGWIDTH'
    end
    object sq_OneUniquePkgMINI_BUNDLE: TIntegerField
      FieldName = 'MINI_BUNDLE'
    end
    object sq_OneUniquePkgSHRINK_WRAP: TIntegerField
      FieldName = 'SHRINK_WRAP'
    end
    object sq_OneUniquePkgWRAP_TYPE: TStringField
      FieldName = 'WRAP_TYPE'
      Size = 15
    end
    object sq_OneUniquePkgWRAPTYPENO: TIntegerField
      FieldName = 'WRAPTYPENO'
    end
    object sq_OneUniquePkgSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object sq_OneUniquePkgOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
    end
  end
  object sp_RemovePackageFromInventory: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CreatedUser'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_RemovePkgFromInventory'
    Left = 192
    Top = 368
  end
  object sq_Prod_In_LO: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'LONo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end>
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
      ' )')
    Left = 160
    Top = 144
  end
  object dsp_Prod_In_LO: TDataSetProvider
    DataSet = sq_Prod_In_LO
    Constraints = True
    Left = 160
    Top = 192
  end
  object cds_Prod_In_LO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Prod_In_LO'
    ReadOnly = True
    Left = 160
    Top = 248
    object cds_Prod_In_LOPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object cds_Prod_In_LOPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
  end
  object ds_Prod_In_LO: TDataSource
    DataSet = cds_Prod_In_LO
    Left = 160
    Top = 296
  end
end
