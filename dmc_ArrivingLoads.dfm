object dmArrivingLoads: TdmArrivingLoads
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 787
  Width = 1239
  object dsrcArrivingLoads: TDataSource
    DataSet = cdsArrivingLoads
    OnDataChange = dsrcArrivingLoadsDataChange
    Left = 40
    Top = 176
  end
  object dsrcArrivingPackages: TDataSource
    DataSet = cdsArrivingPackages
    Left = 136
    Top = 176
  end
  object dsConfirmed_Load: TDataSource
    DataSet = cdsConfirmed_Load
    Left = 240
    Top = 176
  end
  object ds_LoadPackages: TDataSource
    DataSet = mtLoadPackages
    Left = 424
    Top = 504
  end
  object ds_verkLaster: TDataSource
    DataSet = cds_verkLaster
    OnDataChange = ds_verkLasterDataChange
    Left = 328
    Top = 176
  end
  object ds_VerkLastPkgs: TDataSource
    DataSet = cds_VerkLastPkgs
    Left = 416
    Top = 176
  end
  object ds_LoadRow: TDataSource
    DataSet = cds_LoadRow
    Left = 320
    Top = 560
  end
  object dsrcPortArrivingLoads: TDataSource
    DataSet = cdsPortArrivingLoads
    OnDataChange = dsrcPortArrivingLoadsDataChange
    Left = 1016
    Top = 72
  end
  object dsrcPortArrivingPackages: TDataSource
    DataSet = cdsPortArrivingPackages
    Left = 1032
    Top = 344
  end
  object ds_PksByInventoryPlace: TDataSource
    DataSet = cds_PksByInventoryPlace
    Left = 904
    Top = 568
  end
  object dsUserProp: TDataSource
    DataSet = mtUserProp
    Left = 1184
    Top = 280
  end
  object ds_LIP: TDataSource
    DataSet = cds_LIP
    Left = 1184
    Top = 64
  end
  object ds_PIP: TDataSource
    DataSet = cds_PIP
    Left = 1120
    Top = 64
  end
  object cdsArrivingLoads: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      'L.LoadAR,'
      'ST_AdrCtry.CountryCode,'
      ''
      'LSP.ShippingPlanNo'#9#9#9'                AS'#9'LO,'
      'L.LoadNo'#9#9#9#9'                        AS'#9'LOADNO,'
      'L.FS'#9#9#9#9'                            AS'#9'FS,'
      'L.LoadedDate'#9#9#9#9'                    AS'#9'LOADEDDATE,'
      'L.SenderLoadStatus'#9#9#9'                AS'#9'LOAD_STATUS,'
      'L.LoadID'#9#9#9#9'                        AS'#9'LOAD_ID,'
      'Mill.ClientName'#9#9#9#9'                  AS '#9'SUPPLIER,'
      'Mill.ClientCode                         AS  SUPPCODE,'
      'ST_AdrCY.CityName'#9#9#9'                  AS'#9'DESTINATION,'
      'OH.OrderNoText'#9#9#9#9'                  AS '#9'ORDER_NO,'
      'SP.ObjectType'#9#9#9#9'                    AS'#9'OBJECTTYPE,'
      'isNull(SP.ShipToInvPointNo,-1)'#9#9'      AS'#9'INVPOINTNO,'
      'isNull(IName.CityName, '#39#39')'#9#9'          AS'#9'INVPOINTNAME,'
      'SP.CustomerNo                           AS      CUSTOMERNO,'
      'Cust.ClientCode                         AS      CUSTOMER,'
      'SP.SupplierNo                           AS      SUPPLIERNO,'
      'CSH.CustomerNo'#9#9#9#9'                  AS'#9'AVROP_CUSTOMERNO,'
      'AV_CUST.ClientName'#9#9#9'                AS'#9'AVROP_CUSTOMER,'
      'SP.OBJECTTYPE,'
      '(SELECT US.INITIALS'
      ' FROM dbo.Confirmed_Load   CL, dbo.Users'#9'US'
      'WHERE CL.Confirmed_LoadNo = LSP.LoadNo'
      'AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo'
      'AND US.UserID = cl.CreatedUser)         AS INITIALS,'
      'isNull(OH.OrderType,-1)                 AS ORDERTYPE,'
      'CASE'
      'WHEN isNull(OH.OrderType,-1) = 0 THEN '#39'SALES'#39
      'WHEN isNull(OH.OrderType,-1) = 1 THEN '#39'PO'#39
      'WHEN isNull(OH.OrderType,-1) = -1 THEN '#39'INTERN'#39
      'End AS TYP,'
      'CASE '
      'WHEN isNull(SP.ObjectType,-1) = 2 THEN '#39'LO'#39
      'WHEN isNull(SP.ObjectType,-1) = 1 THEN '#39'ADD'#39
      'WHEN isNull(SP.ObjectType,-1) = 0 THEN '#39'INT'#39
      'END AS LOTYP,'
      'US.INITIALS                             AS LOINI,'
      'Loading.CityName                        AS LASTST'#196'LLE,'
      'CASE'
      'WHEN LIP.LogicalInventoryName = '#39'STD'#39' THEN -1'
      'ELSE'
      'isNull(SP.LipNo,-1)'
      'END AS LipNo,'
      'OH.Trading,'
      '-1 AS AR_LoadNo'
      ''
      ''
      'FROM'
      'dbo.Client_LoadingLocation     CLL'
      
        'inner JOIN dbo.City IName'#9#9#9'ON'#9'CLL.PhyInvPointNameNo = IName.Cit' +
        'yNo'
      ''
      
        'INNER JOIN dbo.SupplierShippingPlan       SP   '#9'ON'#9'CLL.PhyInvPoi' +
        'ntNameNo = SP.ShipToInvPointNo'
      'Left Outer Join dbo.Users US ON US.UserID = SP.CreatedUser'
      
        'Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInve' +
        'ntoryPointNo = SP.LIPNo'
      ''
      
        'inner JOIN dbo.City Loading'#9#9#9'ON'#9'Loading.CityNo = SP.LoadingLoca' +
        'tionNo'
      ''
      
        'INNER JOIN dbo.LoadShippingPlan LSP '#9#9'ON '#9'LSP.ShippingPlanNo = S' +
        'P.ShippingPlanNo'
      ''
      'INNER JOIN dbo.Loads L '#9#9#9#9'ON'#9'LSP.LoadNo '#9#9'= L.LoadNo'
      #9#9#9#9#9#9'AND     L.supplierno '#9#9'= SP.SUPPLIERno'
      #9#9#9#9#9#9'AND     L.CustomerNo '#9#9'= SP.CustomerNo'
      ''
      'INNER JOIN dbo.Client Mill'#9#9#9'ON'#9'Mill.ClientNo '#9#9'= SP.SupplierNo'
      ''
      'INNER JOIN dbo.Client Cust'#9#9#9'ON'#9'Cust.ClientNo '#9#9'= SP.CustomerNo'
      ''
      ''
      ''
      'Left Outer JOIN dbo.CustomerShippingPlanDetails CSD'
      
        'INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON CSH.ShippingPla' +
        'nNo = CSD.ShippingPlanNo'
      'INNER JOIN dbo.Orders'#9'OH'#9#9#9'ON OH.OrderNo = CSH.OrderNo'
      
        'INNER JOIN dbo.Client AV_CUST'#9#9#9'ON'#9'AV_CUST.ClientNo '#9'='#9'CSH.Custo' +
        'merNo'
      
        #9#9#9#9#9#9'ON    CSD.CustShipPlanDetailObjectNo = SP.CustShipPlanDeta' +
        'ilObjectNo'
      ''
      ''
      #9'LEFT OUTER JOIN ShippingPlan_ShippingAddress ST'
      
        #9'LEFT OUTER JOIN dbo.Address '#9#9'ST_ADR'#9#9'ON'#9'ST_ADR.AddressNo'#9'= ST.' +
        'AddressNo'
      
        #9'LEFT OUTER JOIN dbo.CITY'#9#9'ST_AdrCY'#9'ON'#9'ST_AdrCY.CityNo '#9'= ST_ADR' +
        '.CityNo'
      
        #9'LEFT OUTER JOIN dbo.Country'#9#9'ST_AdrCtry'#9'ON'#9'ST_AdrCtry.CountryNo' +
        ' '#9'= ST_ADR.CountryNo'
      #9#9#9#9#9#9#9'ON'#9'ST.ShippingPlanNo'#9'= CSD.ShippingPlanNo'
      #9#9#9#9#9#9#9'AND'#9'ST.Reference'#9#9'= CSD.Reference'
      ''
      ''
      'WHERE'
      'CLL.ClientNo          = -1'
      'and'
      '(L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)'
      'AND SP.ObjectType <> 1'
      ''
      
        'AND L.LOADNO NOT IN (SELECT Confirmed_LoadNo FROM dbo.Confirmed_' +
        'Load )'
      ''
      ''
      ''
      ' '
      '')
    Left = 40
    Top = 120
    object cdsArrivingLoadsLoadAR: TIntegerField
      FieldName = 'LoadAR'
      Origin = 'LoadAR'
    end
    object cdsArrivingLoadsCountryCode: TStringField
      FieldName = 'CountryCode'
      Origin = 'CountryCode'
      FixedChar = True
      Size = 5
    end
    object cdsArrivingLoadsLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
    object cdsArrivingLoadsLOADNO: TIntegerField
      FieldName = 'LOADNO'
      Origin = 'LOADNO'
      Required = True
    end
    object cdsArrivingLoadsFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object cdsArrivingLoadsLOADEDDATE: TSQLTimeStampField
      FieldName = 'LOADEDDATE'
      Origin = 'LOADEDDATE'
    end
    object cdsArrivingLoadsLOAD_STATUS: TIntegerField
      FieldName = 'LOAD_STATUS'
      Origin = 'LOAD_STATUS'
    end
    object cdsArrivingLoadsLOAD_ID: TStringField
      FieldName = 'LOAD_ID'
      Origin = 'LOAD_ID'
      Size = 50
    end
    object cdsArrivingLoadsSUPPLIER: TStringField
      FieldName = 'SUPPLIER'
      Origin = 'SUPPLIER'
      Size = 80
    end
    object cdsArrivingLoadsSUPPCODE: TStringField
      FieldName = 'SUPPCODE'
      Origin = 'SUPPCODE'
      FixedChar = True
      Size = 3
    end
    object cdsArrivingLoadsDESTINATION: TStringField
      FieldName = 'DESTINATION'
      Origin = 'DESTINATION'
      Size = 50
    end
    object cdsArrivingLoadsORDER_NO: TStringField
      FieldName = 'ORDER_NO'
      Origin = 'ORDER_NO'
    end
    object cdsArrivingLoadsOBJECTTYPE: TIntegerField
      FieldName = 'OBJECTTYPE'
      Origin = 'OBJECTTYPE'
    end
    object cdsArrivingLoadsINVPOINTNO: TIntegerField
      FieldName = 'INVPOINTNO'
      Origin = 'INVPOINTNO'
      ReadOnly = True
      Required = True
    end
    object cdsArrivingLoadsINVPOINTNAME: TStringField
      FieldName = 'INVPOINTNAME'
      Origin = 'INVPOINTNAME'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsArrivingLoadsCUSTOMERNO: TIntegerField
      FieldName = 'CUSTOMERNO'
      Origin = 'CUSTOMERNO'
    end
    object cdsArrivingLoadsCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      FixedChar = True
      Size = 3
    end
    object cdsArrivingLoadsSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Origin = 'SUPPLIERNO'
      Required = True
    end
    object cdsArrivingLoadsAVROP_CUSTOMERNO: TIntegerField
      FieldName = 'AVROP_CUSTOMERNO'
      Origin = 'AVROP_CUSTOMERNO'
    end
    object cdsArrivingLoadsAVROP_CUSTOMER: TStringField
      FieldName = 'AVROP_CUSTOMER'
      Origin = 'AVROP_CUSTOMER'
      Size = 80
    end
    object cdsArrivingLoadsOBJECTTYPE_1: TIntegerField
      FieldName = 'OBJECTTYPE_1'
      Origin = 'OBJECTTYPE'
    end
    object cdsArrivingLoadsINITIALS: TStringField
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object cdsArrivingLoadsORDERTYPE: TIntegerField
      FieldName = 'ORDERTYPE'
      Origin = 'ORDERTYPE'
      ReadOnly = True
      Required = True
    end
    object cdsArrivingLoadsTYP: TStringField
      FieldName = 'TYP'
      Origin = 'TYP'
      ReadOnly = True
      Size = 6
    end
    object cdsArrivingLoadsLOTYP: TStringField
      FieldName = 'LOTYP'
      Origin = 'LOTYP'
      ReadOnly = True
      Size = 3
    end
    object cdsArrivingLoadsLOINI: TStringField
      FieldName = 'LOINI'
      Origin = 'LOINI'
      FixedChar = True
      Size = 3
    end
    object cdsArrivingLoadsLASTSTÄLLE: TStringField
      FieldName = 'LASTST'#196'LLE'
      Origin = '[LASTST'#196'LLE]'
      Size = 50
    end
    object cdsArrivingLoadsLipNo: TIntegerField
      FieldName = 'LipNo'
      Origin = 'LipNo'
      ReadOnly = True
      Required = True
    end
    object cdsArrivingLoadsTrading: TIntegerField
      FieldName = 'Trading'
      Origin = 'Trading'
    end
    object cdsArrivingLoadsAR_LoadNo: TIntegerField
      FieldName = 'AR_LoadNo'
      Origin = 'AR_LoadNo'
      ReadOnly = True
      Required = True
    end
  end
  object cdsArrivingPackages: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      'LSP.LoadNo,'
      'LSP.ShippingPlanNo'#9#9'AS'#9'LO,'
      'LD.PackageNo'#9#9#9'AS'#9'PACKAGE_NO,'
      'LD.SUPPLIERCODE'#9#9#9'AS '#9'SUPPLIERCODE,'
      'P.Totalm3Actual'#9#9#9'AS '#9'M3_NET,'
      'P.Totalm3Nominal'#9#9'AS '#9'M3_NOM,'
      'P.TotalMFBMNominal  AS      MFBM,'
      'P.TotalNoOfPieces'#9#9'AS'#9'PCS,'
      'PR.ProductDisplayName AS PRODUCT_DESCRIPTION,'
      'LD.PACKAGEOK'#9#9#9'AS'#9'PACKAGEOK,'
      'LD.ProblemPackageLog'#9#9'AS'#9'PACKAGE_LOG,'
      'LD.LoadDetailNo                 AS      LOAD_DETAILNO,'
      'BC.BarCode '#9#9#9'AS '#9'BC,'
      'GS.GradeStamp '#9#9#9'AS '#9'GS'
      ''
      'FROM dbo.LoadShippingPlan LSP'
      'INNER JOIN dbo.Loaddetail LD'#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'and LD.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'Left Outer Join dbo.SupplierShippingPlan SSP on SSP.SupplierShip' +
        'PlanObjectNo = LD.defsspno'
      
        'INNER JOIN dbo.PackageType P'#9#9'ON '#9'P.PackageTypeNo = LD.PackageTy' +
        'peNo'
      
        'INNER JOIN dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = p.P' +
        'ackageTypeNo'
      'Left Outer Join dbo.Barcode BC ON BC.BarCodeNo = p.BarCodeID'
      
        'Left Outer Join dbo.GradeStamp GS ON GS.GradeStampNo = p.GradeSt' +
        'amp'
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = P.ProductNo'
      ''
      'WHERE'
      'LSP.LoadNo = :LoadNo'
      'and LSP.ShippingPlanNo = :ShippingPlanNo'
      '')
    Left = 136
    Top = 120
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsArrivingPackagesLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsArrivingPackagesLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
    object cdsArrivingPackagesPACKAGE_NO: TIntegerField
      FieldName = 'PACKAGE_NO'
      Origin = 'PACKAGE_NO'
      Required = True
    end
    object cdsArrivingPackagesSUPPLIERCODE: TStringField
      FieldName = 'SUPPLIERCODE'
      Origin = 'SUPPLIERCODE'
      FixedChar = True
      Size = 3
    end
    object cdsArrivingPackagesM3_NET: TFloatField
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
    end
    object cdsArrivingPackagesM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
    end
    object cdsArrivingPackagesMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
    end
    object cdsArrivingPackagesPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
    end
    object cdsArrivingPackagesPRODUCT_DESCRIPTION: TStringField
      FieldName = 'PRODUCT_DESCRIPTION'
      Origin = 'PRODUCT_DESCRIPTION'
      Size = 150
    end
    object cdsArrivingPackagesPACKAGEOK: TIntegerField
      FieldName = 'PACKAGEOK'
      Origin = 'PACKAGEOK'
    end
    object cdsArrivingPackagesPACKAGE_LOG: TStringField
      FieldName = 'PACKAGE_LOG'
      Origin = 'PACKAGE_LOG'
      Size = 50
    end
    object cdsArrivingPackagesLOAD_DETAILNO: TIntegerField
      FieldName = 'LOAD_DETAILNO'
      Origin = 'LOAD_DETAILNO'
      Required = True
    end
    object cdsArrivingPackagesBC: TStringField
      FieldName = 'BC'
      Origin = 'BC'
      FixedChar = True
    end
    object cdsArrivingPackagesGS: TStringField
      FieldName = 'GS'
      Origin = 'GS'
      FixedChar = True
    end
  end
  object cdsConfirmed_Load: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select * '
      'from Confirmed_Load_EXT'
      'WHERE Confirmed_LoadNo = -1'
      '')
    Left = 240
    Top = 120
    object cdsConfirmed_LoadConfirmed_LoadNo: TIntegerField
      FieldName = 'Confirmed_LoadNo'
      Origin = 'Confirmed_LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConfirmed_LoadConfirmed_ShippingPlanNo: TIntegerField
      FieldName = 'Confirmed_ShippingPlanNo'
      Origin = 'Confirmed_ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConfirmed_LoadNewLoadNo: TIntegerField
      FieldName = 'NewLoadNo'
      Origin = 'NewLoadNo'
    end
    object cdsConfirmed_LoadNewShippingPlanNo: TIntegerField
      FieldName = 'NewShippingPlanNo'
      Origin = 'NewShippingPlanNo'
    end
    object cdsConfirmed_LoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsConfirmed_LoadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsConfirmed_LoadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
  end
  object cds_verkLaster: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct'
      ''
      'L.LoadNo'#9#9#9#9'AS'#9'LASTNR,'
      'L.FS'#9#9#9#9'        '#9'AS'#9'FS,'
      'L.LoadedDate'#9#9#9#9'AS'#9'DATUM,'
      'L.SenderLoadStatus'#9#9#9'AS'#9'STATUS,'
      'L.LoadID'#9#9#9#9'AS'#9'LOAD_ID,'
      'ShipTo.CityName                 '#9#9'AS INT_DEST,'
      'Loading.CityName                 '#9#9'AS LASTSTALLE,'
      '    '
      'SUPP.ClientName'#9#9#9'AS VERK,'
      'CUST.ClientName'#9#9#9'AS INT_KUND'
      ''
      ''
      'FROM'
      'dbo.LoadShippingPlan LSP'
      'INNER JOIN dbo.Loads L  '#9#9'ON '#9'L.LoadNo = LSP.LoadNo'
      'INNER JOIN dbo.Loaddetail LD ON LD.LoadNo = LSP.LoadNo'
      #9#9#9#9'AND LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.SupplierSh' +
        'ipPlanObjectNo = LD.defsspno'
      #9#9#9#9#9'AND     L.supplierno '#9#9'= SP.SUPPLIERno'
      #9#9#9#9#9'AND     L.CustomerNo '#9#9'= SP.CustomerNo'
      ''
      
        'LEFT OUTER JOIN dbo.CITY                     Shipto         ON S' +
        'hipTo.CityNo '#9'           = SP.ShipToInvPointNo'
      
        'LEFT OUTER JOIN dbo.CITY                     Loading         ON ' +
        'Loading.CityNo '#9'           = SP.LoadingLocationNo'
      ''
      
        'INNER JOIN dbo.Client                     SUPP   ON  SUPP.Client' +
        'No            = L.SupplierNo            -- LARS'
      
        'INNER JOIN dbo.Client                     CUST   ON  CUST.Client' +
        'No            = L.CustomerNo            -- LARS'
      ''
      'WHERE  L.SupplierNo = -1'
      '')
    Left = 328
    Top = 120
    object cds_verkLasterLASTNR: TIntegerField
      FieldName = 'LASTNR'
      Origin = 'LASTNR'
      Required = True
    end
    object cds_verkLasterFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object cds_verkLasterDATUM: TSQLTimeStampField
      FieldName = 'DATUM'
      Origin = 'DATUM'
    end
    object cds_verkLasterSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object cds_verkLasterLOAD_ID: TStringField
      FieldName = 'LOAD_ID'
      Origin = 'LOAD_ID'
      Size = 50
    end
    object cds_verkLasterINT_DEST: TStringField
      FieldName = 'INT_DEST'
      Origin = 'INT_DEST'
      Size = 50
    end
    object cds_verkLasterLASTSTALLE: TStringField
      FieldName = 'LASTSTALLE'
      Origin = 'LASTSTALLE'
      Size = 50
    end
    object cds_verkLasterVERK: TStringField
      FieldName = 'VERK'
      Origin = 'VERK'
      Size = 80
    end
    object cds_verkLasterINT_KUND: TStringField
      FieldName = 'INT_KUND'
      Origin = 'INT_KUND'
      Size = 80
    end
  end
  object cds_VerkLastPkgs: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      'LSP.LoadNo,'
      'LSP.ShippingPlanNo'#9#9'AS'#9'LO,'
      'LD.PackageNo'#9#9#9'AS'#9'PACKAGE_NO,'
      'LD.SUPPLIERCODE'#9#9#9'AS '#9'SUPPLIERCODE,'
      'P.Totalm3Actual'#9#9#9'AS '#9'M3_NET,'
      'P.Totalm3Nominal'#9#9'AS '#9'M3_NOM,'
      'P.TotalMFBMNominal              AS      MFBM,'
      'PR.ProductDisplayName'#9#9'AS'#9'PRODUCT_DESCRIPTION,'
      'P.TotalNoOfPieces'#9#9'AS'#9'PCS,'
      'LD.PACKAGEOK'#9#9#9'AS'#9'PACKAGEOK,'
      'LD.ProblemPackageLog'#9#9'AS'#9'PACKAGE_LOG,'
      'LD.LoadDetailNo                 AS      LOAD_DETAILNO,'
      'ptl.pcsperlength as PSCPERLENGTH'
      ''
      'FROM dbo.LoadShippingPlan LSP'
      'INNER JOIN dbo.Loaddetail LD'#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'and LD.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'INNER JOIN dbo.PackageType P'#9#9'ON '#9'P.PackageTypeNo = LD.PackageTy' +
        'peNo'
      
        'INNER JOIN dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = p.P' +
        'ackageTypeNo'
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = P.ProductNo'
      'WHERE'
      'LSP.LoadNo = :LoadNo'
      ''
      '')
    Left = 416
    Top = 120
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_VerkLastPkgsLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VerkLastPkgsLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
    object cds_VerkLastPkgsPACKAGE_NO: TIntegerField
      FieldName = 'PACKAGE_NO'
      Origin = 'PACKAGE_NO'
      Required = True
    end
    object cds_VerkLastPkgsSUPPLIERCODE: TStringField
      FieldName = 'SUPPLIERCODE'
      Origin = 'SUPPLIERCODE'
      FixedChar = True
      Size = 3
    end
    object cds_VerkLastPkgsM3_NET: TFloatField
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
    end
    object cds_VerkLastPkgsM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
    end
    object cds_VerkLastPkgsMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
    end
    object cds_VerkLastPkgsPRODUCT_DESCRIPTION: TStringField
      FieldName = 'PRODUCT_DESCRIPTION'
      Origin = 'PRODUCT_DESCRIPTION'
      Size = 150
    end
    object cds_VerkLastPkgsPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
    end
    object cds_VerkLastPkgsPACKAGEOK: TIntegerField
      FieldName = 'PACKAGEOK'
      Origin = 'PACKAGEOK'
    end
    object cds_VerkLastPkgsPACKAGE_LOG: TStringField
      FieldName = 'PACKAGE_LOG'
      Origin = 'PACKAGE_LOG'
      Size = 50
    end
    object cds_VerkLastPkgsLOAD_DETAILNO: TIntegerField
      FieldName = 'LOAD_DETAILNO'
      Origin = 'LOAD_DETAILNO'
      Required = True
    end
    object cds_VerkLastPkgsPSCPERLENGTH: TStringField
      FieldName = 'PSCPERLENGTH'
      Origin = 'PSCPERLENGTH'
      Size = 255
    end
  end
  object cdsOneLoad: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT *'
      ''
      'FROM   dbo.Loads'
      ''
      'WHERE LoadNo = :LoadNo'
      '')
    Left = 416
    Top = 32
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsOneLoadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOneLoadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
    object cdsOneLoadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      Origin = 'LoadedDate'
    end
    object cdsOneLoadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
      Origin = 'SenderLoadStatus'
    end
    object cdsOneLoadLoadID: TStringField
      FieldName = 'LoadID'
      Origin = 'LoadID'
      Size = 50
    end
    object cdsOneLoadMsgToShipper: TMemoField
      FieldName = 'MsgToShipper'
      Origin = 'MsgToShipper'
      BlobType = ftMemo
    end
    object cdsOneLoadInternalNote: TMemoField
      FieldName = 'InternalNote'
      Origin = 'InternalNote'
      BlobType = ftMemo
    end
    object cdsOneLoadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
      Origin = 'PackageEntryOption'
    end
    object cdsOneLoadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
      Origin = 'LocalShippingCompanyNo'
    end
    object cdsOneLoadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
      Origin = 'LocalLoadingLocation'
    end
    object cdsOneLoadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
      Origin = 'LocalDestinationNo'
    end
    object cdsOneLoadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsOneLoadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsOneLoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsOneLoadFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object cdsOneLoadOriginalSupplierNo: TIntegerField
      FieldName = 'OriginalSupplierNo'
      Origin = 'OriginalSupplierNo'
    end
    object cdsOneLoadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cdsOneLoadNotering: TMemoField
      FieldName = 'Notering'
      Origin = 'Notering'
      BlobType = ftMemo
    end
    object cdsOneLoadLoadOK: TIntegerField
      FieldName = 'LoadOK'
      Origin = 'LoadOK'
    end
    object cdsOneLoadLoadAR: TIntegerField
      FieldName = 'LoadAR'
      Origin = 'LoadAR'
    end
    object cdsOneLoadShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object cdsOneLoadPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object cdsOneLoadLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
  end
  object cdsCurrentLoadDetails: TFDQuery
    Connection = dmsConnector.FDConnection1
    Left = 600
    Top = 64
  end
  object sq_UpdatePkgStatus: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'UPDATE dbo.PackageNumber'
      
        'SET STATUS = 0, LogicalInventoryPointNo = CPL.Old_LogicalInvento' +
        'ryPointNo,'
      'PackageTypeNo = CPL.PackageTypeNo'
      ''
      'FROM dbo.Confirmed_Package_Log_EXT CPL'
      
        '   INNER JOIN dbo.PackageNumber  PN  ON PN.PackageNo     = CPL.P' +
        'ackageNo'
      #9#9#9#9#9'AND PN.SupplierCode = CPL.SupplierCode'
      ''
      'WHERE'
      'CPL.Confirmed_LoadNo = :LoadNo'
      ''
      ''
      ''
      '')
    Left = 600
    Top = 24
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_Confirmed_Pkg_Log: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * From'
      'dbo.Confirmed_Package_Log_EXT CPL'
      'WHERE '
      'CPL.Confirmed_LoadNo = :LoadNo'
      '')
    Left = 56
    Top = 304
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_Confirmed_Pkg_LogPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Confirmed_Pkg_LogSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_Confirmed_Pkg_LogConfirmed_LoadNo: TIntegerField
      FieldName = 'Confirmed_LoadNo'
      Origin = 'Confirmed_LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Confirmed_Pkg_LogConfirmed_ShippingPlanNo: TIntegerField
      FieldName = 'Confirmed_ShippingPlanNo'
      Origin = 'Confirmed_ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Confirmed_Pkg_LogNewLoadNo: TIntegerField
      FieldName = 'NewLoadNo'
      Origin = 'NewLoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Confirmed_Pkg_LogNewShippingPlanNo: TIntegerField
      FieldName = 'NewShippingPlanNo'
      Origin = 'NewShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Confirmed_Pkg_LogLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Confirmed_Pkg_LogPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Confirmed_Pkg_LogPackageStatus: TIntegerField
      FieldName = 'PackageStatus'
      Origin = 'PackageStatus'
    end
    object cds_Confirmed_Pkg_LogOperation: TIntegerField
      FieldName = 'Operation'
      Origin = 'Operation'
    end
    object cds_Confirmed_Pkg_LogOld_LogicalInventoryPointNo: TIntegerField
      FieldName = 'Old_LogicalInventoryPointNo'
      Origin = 'Old_LogicalInventoryPointNo'
    end
  end
  object sq_RevertPkgs: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.packagenumber'
      'Set PackageTypeNo = dbo.LoadDetail.PackageTypeNo,'
      'LogicalInventoryPointNo = dbo.LoadDetail.LIPNo,'
      'Status = 0'
      'FROM dbo.LoadDetail'
      
        'Inner Join dbo.packagenumber on dbo.packagenumber.PackageNo = db' +
        'o.LoadDetail.PackageNo'
      'and dbo.packagenumber.SupplierCode = dbo.LoadDetail.SupplierCode'
      'WHERE      dbo.LoadDetail.LoadNo = :LoadNo'
      '')
    Left = 128
    Top = 232
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cdsMovePkgNumber: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT distinct pn.PackageNo, pn.SupplierCode, pn.LogicalInvento' +
        'ryPointNo, pn.Status'
      'FROM'
      ''
      ''
      'dbo.InvoiceHeader IH'
      
        'INNER JOIN dbo.Invoiced_Load ILoad '#9'ON  ILoad.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        'INNER JOIN dbo.Loads    L '#9'ON  L.LoadNo            = ILoad.LoadN' +
        'o'
      
        '                                        AND L.CustomerNo = IH.Cu' +
        'stomerNo'
      
        'INNER JOIN dbo.Loadshippingplan    LS '#9'ON  LS.LoadNo            ' +
        '= L.LoadNo'
      ''
      
        'INNER JOIN dbo.Loaddetail    LD '#9'ON  LD.LoadNo            = LS.L' +
        'oadNo'
      '                '#9#9#9'AND LD.SHIPPINGPLANNO    = LS.SHIPPINGPLANNO'
      ''
      
        'INNER JOIN dbo.PACKAGENUMBER pn         ON pn.PackageNo         ' +
        '= LD.PackageNo'
      
        '                                        AND pn.SupplierCode     ' +
        '= LD.SupplierCode'
      ''
      'WHERE     IH.InternalInvoiceNo   =:InternalInvoiceNo'
      ''
      ''
      ''
      '')
    Left = 200
    Top = 304
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsMovePkgNumberPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object cdsMovePkgNumberSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsMovePkgNumberLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object cdsMovePkgNumberStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
  end
  object cds_LoadDtlVal: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.LoadDtlVal'
      'WHERE LoadNo = :LoadNo'
      '')
    Left = 424
    Top = 296
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadDtlValLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadDtlValLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadDtlValProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadDtlValPrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
    end
    object cds_LoadDtlValSubsum: TFloatField
      FieldName = 'Subsum'
      Origin = 'Subsum'
    end
    object cds_LoadDtlValNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
    end
    object cds_LoadDtlValPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
      Origin = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadDtlValPaymentType: TIntegerField
      FieldName = 'PaymentType'
      Origin = 'PaymentType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadDtlValPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cds_LoadDtlValSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadDtlValLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      Origin = 'LoadedDate'
    end
    object cds_LoadDtlValOldPrice: TFloatField
      FieldName = 'OldPrice'
      Origin = 'OldPrice'
    end
    object cds_LoadDtlValVerk_FS: TStringField
      FieldName = 'Verk_FS'
      Origin = 'Verk_FS'
    end
    object cds_LoadDtlValCredited: TIntegerField
      FieldName = 'Credited'
      Origin = 'Credited'
    end
  end
  object cdsLoadDetails: TFDQuery
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.Loaddetail'
    SQL.Strings = (
      'SELECT'
      'LD.LoadNo,'
      'LD.LoadDetailNo,'
      'LD.ShippingPlanNo,'
      'LD.PackageNo,'
      'LD.SupplierCode,'
      'LD.PackageOK,'
      'LD.ProblemPackageLog,'
      'Pr.ProductDisplayName,'
      'PT.TotalNoOfPieces,'
      'PT.Totalm3Actual,'
      'LD.PackageTypeNo,'
      'LD.NoOfPackages,'
      'LD.CreatedUser,'
      'LD.ModifiedUser,'
      'LD.DateCreated,'
      'LD.DefaultCustShipObjectNo,'
      'LD.OverrideMatch,'
      'LD.LIPNo,'
      'LD.Defsspno,'
      'LD.OverrideRL'
      ''
      'FROM   dbo.Loaddetail LD'
      
        #9'INNER JOIN dbo.PackageNumber PN '#9'ON '#9'PN.PackageNo = LD.PackageN' +
        'o'
      #9#9#9#9#9#9#9'AND PN.SupplierCode = LD.SupplierCode'
      
        '       INNER JOIN dbo.PackageType PT  ON PN.PackageTypeNo = PT.P' +
        'ackageTypeNo'
      
        '       INNER JOIN dbo.Product     Pr  ON PT.ProductNo     = Pr.P' +
        'roductNo'
      ''
      ''
      'WHERE LD.LOADNO = :LOADNO'
      ''
      'ORDER BY LD.PACKAGENO'
      '')
    Left = 528
    Top = 296
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsLoadDetailsLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLoadDetailsLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLoadDetailsShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadDetailsPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadDetailsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsLoadDetailsPackageOK: TIntegerField
      FieldName = 'PackageOK'
      Origin = 'PackageOK'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadDetailsProblemPackageLog: TStringField
      FieldName = 'ProblemPackageLog'
      Origin = 'ProblemPackageLog'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsLoadDetailsProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      ProviderFlags = []
      Size = 150
    end
    object cdsLoadDetailsTotalNoOfPieces: TIntegerField
      FieldName = 'TotalNoOfPieces'
      Origin = 'TotalNoOfPieces'
      ProviderFlags = []
    end
    object cdsLoadDetailsTotalm3Actual: TFloatField
      FieldName = 'Totalm3Actual'
      Origin = 'Totalm3Actual'
      ProviderFlags = []
    end
    object cdsLoadDetailsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadDetailsNoOfPackages: TIntegerField
      FieldName = 'NoOfPackages'
      Origin = 'NoOfPackages'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadDetailsCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadDetailsModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadDetailsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadDetailsDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      Origin = 'DefaultCustShipObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadDetailsOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
      Origin = 'OverrideMatch'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadDetailsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadDetailsDefsspno: TIntegerField
      FieldName = 'Defsspno'
      Origin = 'Defsspno'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadDetailsOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
      Origin = 'OverrideRL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsLoadShippingPlan: TFDQuery
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.LoadShippingPlan'
    SQL.Strings = (
      'SELECT   DISTINCT'
      #9' LP.LoadNo,                     --  Int'
      '         LP.ShippingPlanNo,             --  Int'
      '         LP.ConfirmedByReciever,        --  tinyint'
      '         LP.ConfirmedBySupplier,        --  tinyint'
      '         LP.Invoiced,                   --  smallint'
      '         LP.CreatedUser,                 --  smallint'
      '         LP.ModifiedUser,                --  smallint'
      '         LP.DateCreated                 --  datetime'
      ''
      'FROM     dbo.LoadShippingPlan LP'
      'WHERE LP.LOADNO = :LOADNO'
      ''
      ''
      '')
    Left = 632
    Top = 296
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsLoadShippingPlanLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLoadShippingPlanShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLoadShippingPlanConfirmedByReciever: TIntegerField
      FieldName = 'ConfirmedByReciever'
      Origin = 'ConfirmedByReciever'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadShippingPlanConfirmedBySupplier: TIntegerField
      FieldName = 'ConfirmedBySupplier'
      Origin = 'ConfirmedBySupplier'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadShippingPlanInvoiced: TIntegerField
      FieldName = 'Invoiced'
      Origin = 'Invoiced'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadShippingPlanCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadShippingPlanModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadShippingPlanDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsPkgNumber: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM'
      'dbo.LoadDetail LD'
      'Inner Join dbo.PACKAGENUMBER pn on PN.PackageNo = LD.PackageNo'
      'AND pn.SupplierCode = LD.SupplierCode'
      'Where '
      'LD.LoadNo = :LoadNo'
      ''
      '')
    Left = 744
    Top = 296
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsPkgNumberLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPkgNumberLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPkgNumberShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object cdsPkgNumberPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object cdsPkgNumberNoOfPackages: TIntegerField
      FieldName = 'NoOfPackages'
      Origin = 'NoOfPackages'
    end
    object cdsPkgNumberPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cdsPkgNumberSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      FixedChar = True
      Size = 3
    end
    object cdsPkgNumberPackageOK: TIntegerField
      FieldName = 'PackageOK'
      Origin = 'PackageOK'
    end
    object cdsPkgNumberProblemPackageLog: TStringField
      FieldName = 'ProblemPackageLog'
      Origin = 'ProblemPackageLog'
      Size = 50
    end
    object cdsPkgNumberCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsPkgNumberModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsPkgNumberDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsPkgNumberDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      Origin = 'DefaultCustShipObjectNo'
    end
    object cdsPkgNumberOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
      Origin = 'OverrideMatch'
    end
    object cdsPkgNumberLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cdsPkgNumberDefsspno: TIntegerField
      FieldName = 'Defsspno'
      Origin = 'Defsspno'
    end
    object cdsPkgNumberOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
      Origin = 'OverrideRL'
    end
    object cdsPkgNumberOldPackageTypeNo2: TIntegerField
      FieldName = 'OldPackageTypeNo'
      Origin = 'OldPackageTypeNo'
    end
    object cdsPkgNumberCustomPcs: TIntegerField
      FieldName = 'CustomPcs'
      Origin = 'CustomPcs'
    end
    object cdsPkgNumberPackageNo_1: TIntegerField
      FieldName = 'PackageNo_1'
      Origin = 'PackageNo'
      Required = True
    end
    object cdsPkgNumberPackageTypeNo_1: TIntegerField
      FieldName = 'PackageTypeNo_1'
      Origin = 'PackageTypeNo'
    end
    object cdsPkgNumberSupplierCode_1: TStringField
      FieldName = 'SupplierCode_1'
      Origin = 'SupplierCode'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsPkgNumberLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object cdsPkgNumberSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cdsPkgNumberStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cdsPkgNumberSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cdsPkgNumberCreatedUser_1: TSmallintField
      FieldName = 'CreatedUser_1'
      Origin = 'CreatedUser'
    end
    object cdsPkgNumberModifiedUser_1: TSmallintField
      FieldName = 'ModifiedUser_1'
      Origin = 'ModifiedUser'
    end
    object cdsPkgNumberDateCreated_1: TSQLTimeStampField
      FieldName = 'DateCreated_1'
      Origin = 'DateCreated'
    end
    object cdsPkgNumberOriginal_Price: TFloatField
      FieldName = 'Original_Price'
      Origin = 'Original_Price'
    end
    object cdsPkgNumberOriginal_In_Date: TSQLTimeStampField
      FieldName = 'Original_In_Date'
      Origin = 'Original_In_Date'
    end
    object cdsPkgNumberUpdate_Price: TFloatField
      FieldName = 'Update_Price'
      Origin = 'Update_Price'
    end
    object cdsPkgNumberUpdate_Price_Date: TSQLTimeStampField
      FieldName = 'Update_Price_Date'
      Origin = 'Update_Price_Date'
    end
    object cdsPkgNumberCreatedOfPkgStr: TIntegerField
      FieldName = 'CreatedOfPkgStr'
      Origin = 'CreatedOfPkgStr'
    end
    object cdsPkgNumberAvgLengthType: TIntegerField
      FieldName = 'AvgLengthType'
      Origin = 'AvgLengthType'
    end
    object cdsPkgNumberREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      Size = 30
    end
    object cdsPkgNumberBL_NO: TStringField
      FieldName = 'BL_NO'
      Origin = 'BL_NO'
      Size = 30
    end
    object cdsPkgNumberPkgArticleNo: TIntegerField
      FieldName = 'PkgArticleNo'
      Origin = 'PkgArticleNo'
    end
  end
  object cds_LoadRow: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      'LSP.LoadNo,'
      'LD.LoadDetailNo,'
      'LSP.ShippingPlanNo,'
      'LD.PackageNo,'
      'LD.SUPPLIERCODE,'
      'Ptd.m3Actual,'
      'Ptd.m3Nominal,'
      'Ptd.MFBMNominal,'
      'Ptd.NoOfPieces,'
      'Ptd.ProductLengthNo,'
      'P.ProductNo,'
      'L.LoadedDate,'
      'LD.defsspno,'
      'SSP.ObjectType,'
      'SSP.Price AS Price,'
      'SSP.PriceListNo,'
      'LD.PackageTypeNo,'
      'L.SupplierNo,'
      'SSP.SupplierNo  AS SSP_SupplierNo,'
      'SSP.CustomerNo  AS SSP_CustomerNo,'
      'L.FS,'
      'isnull(SSP.InternKundFrakt,0) AS InternKundFrakt'
      ''
      'FROM'
      'dbo.Loads L'
      'INNER JOIN dbo.LoadShippingPlan LSP ON '#9'LSP.LoadNo = L.LoadNo'
      'INNER JOIN dbo.Loaddetail LD  ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'and LD.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'INNER JOIN dbo.SupplierShippingPlan SSP'#9'ON'#9'SSP.SupplierShipPlanO' +
        'bjectNo = LD.defsspno'
      
        'INNER JOIN dbo.PackageTypeDetail Ptd'#9#9'ON Ptd.PackageTypeNo = LD.' +
        'PackageTypeNo'
      
        'INNER JOIN dbo.PackageType P'#9#9'ON '#9'P.PackageTypeNo = LD.PackageTy' +
        'peNo'
      ''
      'WHERE'
      'L.LoadNo = :LoadNo'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      '')
    Left = 320
    Top = 512
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadRowLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadRowLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
      Required = True
    end
    object cds_LoadRowShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      Required = True
    end
    object cds_LoadRowPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object cds_LoadRowSUPPLIERCODE: TStringField
      FieldName = 'SUPPLIERCODE'
      Origin = 'SUPPLIERCODE'
      FixedChar = True
      Size = 3
    end
    object cds_LoadRowm3Actual: TFloatField
      FieldName = 'm3Actual'
      Origin = 'm3Actual'
    end
    object cds_LoadRowm3Nominal: TFloatField
      FieldName = 'm3Nominal'
      Origin = 'm3Nominal'
    end
    object cds_LoadRowMFBMNominal: TFloatField
      FieldName = 'MFBMNominal'
      Origin = 'MFBMNominal'
    end
    object cds_LoadRowNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
      Origin = 'NoOfPieces'
    end
    object cds_LoadRowProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      Required = True
    end
    object cds_LoadRowProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cds_LoadRowLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      Origin = 'LoadedDate'
    end
    object cds_LoadRowdefsspno: TIntegerField
      FieldName = 'defsspno'
      Origin = 'defsspno'
    end
    object cds_LoadRowObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
    end
    object cds_LoadRowPrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
    end
    object cds_LoadRowPriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
    end
    object cds_LoadRowPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cds_LoadRowSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
    object cds_LoadRowSSP_SupplierNo: TIntegerField
      FieldName = 'SSP_SupplierNo'
      Origin = 'SSP_SupplierNo'
      Required = True
    end
    object cds_LoadRowSSP_CustomerNo: TIntegerField
      FieldName = 'SSP_CustomerNo'
      Origin = 'SSP_CustomerNo'
    end
    object cds_LoadRowFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object cds_LoadRowInternKundFrakt: TFloatField
      FieldName = 'InternKundFrakt'
      Origin = 'InternKundFrakt'
      ReadOnly = True
      Required = True
    end
  end
  object cds_PksByInventoryPlace: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      ''
      'SELECT distinct PN.PackageNo,'
      '       PN.SupplierCode,'
      '       PN.SupplierNo,'
      
        '       dbo.vida_LengthDescription(PN.PackageTypeNo) AS LengthDes' +
        'cription,'
      '       Pr.ProductDisplayName, Pr.ProductNo'
      ''
      'FROM   dbo.PackageNumber          PN'
      
        '       INNER       JOIN  dbo.PackageType            PT ON  PT.Pa' +
        'ckageTypeNo            = PN.PackageTypeNo'
      
        '       INNER       JOIN  dbo.LoadDetail            LD ON  LD.Pac' +
        'kageNo            = PN.PackageNo'
      
        '                                                  AND LD.Supplie' +
        'rCode = PN.SupplierCode'
      
        '       INNER       JOIN  dbo.Product                Pr ON  Pr.Pr' +
        'oductNo                = PT.ProductNo'
      ''
      
        '       INNER        JOIN  dbo.LogicalInventoryPoint  LI ON  LI.L' +
        'ogicalInventoryPointNo  = PN.LogicalInventoryPointNo'
      
        '       INNER       JOIN  dbo.PhysicalInventoryPoint PIP ON  PIP.' +
        'PhysicalInventoryPointNo = LI.PhysicalInventoryPointNo'
      ''
      
        '       INNER       JOIN  dbo.Client                 Cl ON  Cl.Cl' +
        'ientNo = PN.SupplierNo'
      ''
      ''
      ''
      'WHERE  PN.PackageNo = :PkgNo'
      ''
      ' '
      '')
    Left = 904
    Top = 520
    ParamData = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PksByInventoryPlacePackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PksByInventoryPlaceSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PksByInventoryPlaceSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cds_PksByInventoryPlaceLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ReadOnly = True
      Size = 255
    end
    object cds_PksByInventoryPlaceProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object cds_PksByInventoryPlaceProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
  end
  object cdsPortArrivingLoads: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      'ST_AdrCtry.CountryCode,'
      ''
      'LSP.ShippingPlanNo'#9#9#9'                AS'#9'LO,'
      'L.LoadNo'#9#9#9#9'                        AS'#9'LOADNO,'
      '-1                                      AS Verk_LoadNo,'
      'L.FS'#9#9#9#9'                            AS'#9'FS,'
      'L.LoadedDate'#9#9#9#9'                    AS'#9'LOADEDDATE,'
      'L.SenderLoadStatus'#9#9#9'                AS'#9'LOAD_STATUS,'
      'L.LoadID'#9#9#9#9'                        AS'#9'LOAD_ID,'
      'Mill.ClientName'#9#9#9#9'                  AS '#9'SUPPLIER,'
      'Mill.ClientCode                         AS  SUPPCODE,'
      'ST_AdrCY.CityName'#9#9#9'                  AS'#9'DESTINATION,'
      'OH.OrderNoText'#9#9#9#9'                  AS '#9'ORDER_NO,'
      'SP.ObjectType'#9#9#9#9'                    AS'#9'OBJECTTYPE,'
      'isNull(SP.ShipToInvPointNo,-1)'#9#9'      AS'#9'INVPOINTNO,'
      'isNull(IName.CityName, '#39#39')'#9#9'          AS'#9'INVPOINTNAME,'
      'SP.CustomerNo                           AS      CUSTOMERNO,'
      'Cust.ClientCode                         AS      CUSTOMER,'
      'SP.SupplierNo                           AS      SUPPLIERNO,'
      'CSH.CustomerNo'#9#9#9#9'                  AS'#9'AVROP_CUSTOMERNO,'
      'AV_CUST.ClientName'#9#9#9'                AS'#9'AVROP_CUSTOMER,'
      'SP.OBJECTTYPE,'
      '(SELECT US.INITIALS'
      ' FROM dbo.Confirmed_Load   CL, dbo.Users'#9'US'
      'WHERE CL.Confirmed_LoadNo = LSP.LoadNo'
      'AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo'
      'AND US.UserID = cl.CreatedUser)         AS INITIALS,'
      'isNull(OH.OrderType,-1)                 AS ORDERTYPE,'
      'CASE'
      'WHEN isNull(OH.OrderType,-1) = 0 THEN '#39'SALES'#39
      'WHEN isNull(OH.OrderType,-1) = 1 THEN '#39'PO'#39
      'WHEN isNull(OH.OrderType,-1) = -1 THEN '#39'INTERN'#39
      'End AS TYP,'
      'CASE'
      'WHEN isNull(SP.ObjectType,-1) = 2 THEN '#39'LO'#39
      'WHEN isNull(SP.ObjectType,-1) = 1 THEN '#39'ADD'#39
      'WHEN isNull(SP.ObjectType,-1) = 0 THEN '#39'INT'#39
      'END AS LOTYP,'
      'US.INITIALS                             AS LOINI,'
      'Loading.CityName                        AS LASTST'#196'LLE,'
      'isNull(SP.LipNo,-1)                     AS LipNo,'
      'OL.Reference AS M'#196'RKNING'
      ''
      'FROM'
      'dbo.Client_LoadingLocation     CLL'
      
        'inner JOIN dbo.City IName'#9#9#9'ON'#9'CLL.PhyInvPointNameNo = IName.Cit' +
        'yNo'
      ''
      
        'INNER JOIN dbo.SupplierShippingPlan       SP   '#9'ON'#9'CLL.PhyInvPoi' +
        'ntNameNo = SP.ShipToInvPointNo'
      'Left Outer Join dbo.Users US ON US.UserID = SP.CreatedUser'
      ''
      
        'inner JOIN dbo.City Loading'#9#9#9'ON'#9'Loading.CityNo = SP.LoadingLoca' +
        'tionNo'
      ''
      
        'INNER JOIN dbo.LoadShippingPlan LSP '#9#9'ON '#9'LSP.ShippingPlanNo = S' +
        'P.ShippingPlanNo'
      ''
      'INNER JOIN dbo.Loads L '#9#9#9#9'ON'#9'LSP.LoadNo '#9#9'= L.LoadNo'
      #9#9#9#9#9#9'AND     L.supplierno '#9#9'= SP.SUPPLIERno'
      #9#9#9#9#9#9'AND     L.CustomerNo '#9#9'= SP.CustomerNo'
      ''
      'INNER JOIN dbo.Client Mill'#9#9#9'ON'#9'Mill.ClientNo '#9#9'= SP.SupplierNo'
      ''
      'INNER JOIN dbo.Client Cust'#9#9#9'ON'#9'Cust.ClientNo '#9#9'= SP.CustomerNo'
      ''
      'Left Outer JOIN dbo.CustomerShippingPlanDetails CSD'
      
        'INNER JOIN dbo.OrderLine'#9'OL'#9#9#9'ON OL.OrderNo = CSD.OrderNo AND OL' +
        '.OrderLineNo = CSD.OrderLineNo'
      
        'INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON CSH.ShippingPla' +
        'nNo = CSD.ShippingPlanNo'
      'INNER JOIN dbo.Orders'#9'OH'#9#9#9'ON OH.OrderNo = CSH.OrderNo'
      
        'INNER JOIN dbo.Client AV_CUST'#9#9#9'ON'#9'AV_CUST.ClientNo '#9'='#9'CSH.Custo' +
        'merNo'
      
        #9#9#9#9#9#9'ON    CSD.CustShipPlanDetailObjectNo = SP.CustShipPlanDeta' +
        'ilObjectNo'
      ''
      #9'LEFT OUTER JOIN ShippingPlan_ShippingAddress ST'
      
        #9'LEFT OUTER JOIN dbo.Address '#9#9'ST_ADR'#9#9'ON'#9'ST_ADR.AddressNo'#9'= ST.' +
        'AddressNo'
      
        #9'LEFT OUTER JOIN dbo.CITY'#9#9'ST_AdrCY'#9'ON'#9'ST_AdrCY.CityNo '#9'= ST_ADR' +
        '.CityNo'
      
        #9'LEFT OUTER JOIN dbo.Country'#9#9'ST_AdrCtry'#9'ON'#9'ST_AdrCtry.CountryNo' +
        ' '#9'= ST_ADR.CountryNo'
      #9#9#9#9#9#9#9'ON'#9'ST.ShippingPlanNo'#9'= CSD.ShippingPlanNo'
      #9#9#9#9#9#9#9'AND'#9'ST.Reference'#9#9'= CSD.Reference'
      ''
      'WHERE'
      'CLL.ClientNo          = -1'
      'AND (L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)'
      'AND SP.ObjectType <> 1'
      
        'AND L.LOADNO NOT IN (SELECT Confirmed_LoadNo FROM dbo.Confirmed_' +
        'Load )'
      ''
      ''
      ''
      ''
      '')
    Left = 1016
    Top = 24
    object cdsPortArrivingLoadsCountryCode: TStringField
      FieldName = 'CountryCode'
      Origin = 'CountryCode'
      FixedChar = True
      Size = 5
    end
    object cdsPortArrivingLoadsLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
    object cdsPortArrivingLoadsLOADNO: TIntegerField
      FieldName = 'LOADNO'
      Origin = 'LOADNO'
      Required = True
    end
    object cdsPortArrivingLoadsVerk_LoadNo: TIntegerField
      FieldName = 'Verk_LoadNo'
      Origin = 'Verk_LoadNo'
      ReadOnly = True
      Required = True
    end
    object cdsPortArrivingLoadsFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object cdsPortArrivingLoadsLOADEDDATE: TSQLTimeStampField
      FieldName = 'LOADEDDATE'
      Origin = 'LOADEDDATE'
    end
    object cdsPortArrivingLoadsLOAD_STATUS: TIntegerField
      FieldName = 'LOAD_STATUS'
      Origin = 'LOAD_STATUS'
    end
    object cdsPortArrivingLoadsLOAD_ID: TStringField
      FieldName = 'LOAD_ID'
      Origin = 'LOAD_ID'
      Size = 50
    end
    object cdsPortArrivingLoadsSUPPLIER: TStringField
      FieldName = 'SUPPLIER'
      Origin = 'SUPPLIER'
      Size = 80
    end
    object cdsPortArrivingLoadsSUPPCODE: TStringField
      FieldName = 'SUPPCODE'
      Origin = 'SUPPCODE'
      FixedChar = True
      Size = 3
    end
    object cdsPortArrivingLoadsDESTINATION: TStringField
      FieldName = 'DESTINATION'
      Origin = 'DESTINATION'
      Size = 50
    end
    object cdsPortArrivingLoadsORDER_NO: TStringField
      FieldName = 'ORDER_NO'
      Origin = 'ORDER_NO'
    end
    object cdsPortArrivingLoadsOBJECTTYPE: TIntegerField
      FieldName = 'OBJECTTYPE'
      Origin = 'OBJECTTYPE'
    end
    object cdsPortArrivingLoadsINVPOINTNO: TIntegerField
      FieldName = 'INVPOINTNO'
      Origin = 'INVPOINTNO'
      ReadOnly = True
      Required = True
    end
    object cdsPortArrivingLoadsINVPOINTNAME: TStringField
      FieldName = 'INVPOINTNAME'
      Origin = 'INVPOINTNAME'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsPortArrivingLoadsCUSTOMERNO: TIntegerField
      FieldName = 'CUSTOMERNO'
      Origin = 'CUSTOMERNO'
    end
    object cdsPortArrivingLoadsCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      FixedChar = True
      Size = 3
    end
    object cdsPortArrivingLoadsSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Origin = 'SUPPLIERNO'
      Required = True
    end
    object cdsPortArrivingLoadsAVROP_CUSTOMERNO: TIntegerField
      FieldName = 'AVROP_CUSTOMERNO'
      Origin = 'AVROP_CUSTOMERNO'
    end
    object cdsPortArrivingLoadsAVROP_CUSTOMER: TStringField
      FieldName = 'AVROP_CUSTOMER'
      Origin = 'AVROP_CUSTOMER'
      Size = 80
    end
    object cdsPortArrivingLoadsOBJECTTYPE_1: TIntegerField
      FieldName = 'OBJECTTYPE_1'
      Origin = 'OBJECTTYPE'
    end
    object cdsPortArrivingLoadsINITIALS: TStringField
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object cdsPortArrivingLoadsORDERTYPE: TIntegerField
      FieldName = 'ORDERTYPE'
      Origin = 'ORDERTYPE'
      ReadOnly = True
      Required = True
    end
    object cdsPortArrivingLoadsTYP: TStringField
      FieldName = 'TYP'
      Origin = 'TYP'
      ReadOnly = True
      Size = 6
    end
    object cdsPortArrivingLoadsLOTYP: TStringField
      FieldName = 'LOTYP'
      Origin = 'LOTYP'
      ReadOnly = True
      Size = 3
    end
    object cdsPortArrivingLoadsLOINI: TStringField
      FieldName = 'LOINI'
      Origin = 'LOINI'
      FixedChar = True
      Size = 3
    end
    object cdsPortArrivingLoadsLASTSTÄLLE: TStringField
      FieldName = 'LASTST'#196'LLE'
      Origin = '[LASTST'#196'LLE]'
      Size = 50
    end
    object cdsPortArrivingLoadsLipNo: TIntegerField
      FieldName = 'LipNo'
      Origin = 'LipNo'
      ReadOnly = True
      Required = True
    end
    object cdsPortArrivingLoadsMÄRKNING: TStringField
      FieldName = 'M'#196'RKNING'
      Origin = '[M'#196'RKNING]'
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
      
        'Inner Join dbo.UserArrivalPoint uap on uap.PhyInvPointNameNo = P' +
        'H.PhyInvPointNameNo'
      'Inner Join dbo.CITY CY on CY.CITYNO = PH.PhyInvPointNameNo'
      'WHERE'
      'uap.UserID = :UserID'
      'AND PH.OwnerNo = :OwnerNo'
      ''
      'Order By  CY.CITYNAME'
      '')
    Left = 1120
    Top = 24
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
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
  object cds_LIP: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT  Distinct LogicalInventoryPointNo AS LIPNo, LogicalInvent' +
        'oryName AS LIPName,'
      'PhysicalInventoryPointNo AS PIPNo'
      'FROM dbo.LOGICALINVENTORYPOINT'
      'WHERE'
      'SequenceNo = 1'
      ''
      'Order By LogicalInventoryName '
      '')
    Left = 1184
    Top = 24
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
    object cds_LIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
  end
  object sq_GetDefaultCSObjectNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select CustShipPlanDetailObjectNo'
      'FROM'
      'dbo.SupplierShippingPlan'
      'WHERE'
      'SupplierShipPlanObjectNo = :SupplierShipPlanObjectNo'
      '')
    Left = 320
    Top = 240
    ParamData = <
      item
        Name = 'SUPPLIERSHIPPLANOBJECTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetDefaultCSObjectNoCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
    end
  end
  object sq_GetPriceOfPriceList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      ''
      
        'Select dbo.VIS_GetPriceFloat_II( :LoadedDate, :PriceListNo, :Pro' +
        'ductNo, :ProductLengthNo, :SupplierNo)'
      '')
    Left = 320
    Top = 288
    ParamData = <
      item
        Name = 'LOADEDDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'PRICELISTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTLENGTHNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPriceOfPriceListUnnamed1: TFloatField
      FieldName = 'Unnamed1'
      Origin = 'Unnamed1'
      ReadOnly = True
    end
  end
  object sq_GetOLPrice: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select ol.InternalPrice, ol.PriceListNo '
      'FROM dbo.SupplierShippingPlan ssp'
      
        'Inner Join dbo.CustomerShippingPlanDetails csd on csd.CustShipPl' +
        'anDetailObjectNo = ssp.CustShipPlanDetailObjectNo'
      'Inner Join dbo.OrderLine OL on OL.OrderNo = csd.OrderNo '
      #9#9#9'and OL.OrderLineNo = csd.OrderLineNo'
      'WHERE ssp.SupplierShipPlanObjectNo = :defsspNo'
      ' '
      '')
    Left = 320
    Top = 344
    ParamData = <
      item
        Name = 'DEFSSPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetOLPriceInternalPrice: TFloatField
      FieldName = 'InternalPrice'
      Origin = 'InternalPrice'
    end
    object sq_GetOLPricePriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
    end
  end
  object sq_CheckIfConfirmedPkgsValidInLoad: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        '--check if package is where it was when it was confirmed to a lo' +
        'FD'
      'SELECT distinct'
      'LD.LoadNo,'
      'LD.ShippingPlanNo AS LONo,'
      'PR.ProductDisplayName AS PRODUCT,'
      '           LD.LoadDetailNo,'
      '           LD.PackageNo'#9#9'AS PACKAGENO,'
      '           LD.NoOfPackages'#9'AS NOOFPKG,'
      '           LD.PackageTypeNo'#9'AS PACKAGETYPENO,'
      '           LD.SupplierCode'#9'AS SUPP_CODE,'
      '           LD.PackageOK'#9#9'AS PKG_OK,'
      '           LD.ProblemPackageLog'#9'AS PKGLOG,'
      '           LD.CreatedUser,'
      '           LD.ModifiedUser,'
      '           LD.DateCreated,'
      '           PR.ProductNo,'
      #9'   LD.DefaultCustShipObjectNo,'
      #9'   PN.LogicalInventoryPointNo'
      ''
      'FROM       dbo.LoadDetail              LD'
      ''
      
        '           INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo ' +
        '= LD.PackageTypeNo'
      
        '         INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = P' +
        't.ProductNo'
      
        '         INNER JOIN dbo.PackageNumber  PN  ON PN.PackageNo     =' +
        ' LD.PackageNo'
      #9#9#9#9#9'AND PN.SupplierCode = LD.SupplierCode'
      ''
      'WHERE      PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      'AND LD.LoadNo = :LoadNo -- New LoadNo'
      'AND LD.ShippingPlanNo = :ShippingPlanNo'
      ''
      'AND PN.PackageTypeNo = :PackageTypeNo'
      'AND PN.Status = :Status'
      '')
    Left = 88
    Top = 416
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
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_CheckIfConfirmedPkgsValidInLoadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_CheckIfConfirmedPkgsValidInLoadLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
    end
    object sq_CheckIfConfirmedPkgsValidInLoadPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 150
    end
    object sq_CheckIfConfirmedPkgsValidInLoadLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_CheckIfConfirmedPkgsValidInLoadPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      Required = True
    end
    object sq_CheckIfConfirmedPkgsValidInLoadNOOFPKG: TIntegerField
      FieldName = 'NOOFPKG'
      Origin = 'NOOFPKG'
    end
    object sq_CheckIfConfirmedPkgsValidInLoadPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
    end
    object sq_CheckIfConfirmedPkgsValidInLoadSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      FixedChar = True
      Size = 3
    end
    object sq_CheckIfConfirmedPkgsValidInLoadPKG_OK: TIntegerField
      FieldName = 'PKG_OK'
      Origin = 'PKG_OK'
    end
    object sq_CheckIfConfirmedPkgsValidInLoadPKGLOG: TStringField
      FieldName = 'PKGLOG'
      Origin = 'PKGLOG'
      Size = 50
    end
    object sq_CheckIfConfirmedPkgsValidInLoadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object sq_CheckIfConfirmedPkgsValidInLoadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object sq_CheckIfConfirmedPkgsValidInLoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_CheckIfConfirmedPkgsValidInLoadProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object sq_CheckIfConfirmedPkgsValidInLoadDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      Origin = 'DefaultCustShipObjectNo'
    end
    object sq_CheckIfConfirmedPkgsValidInLoadLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
  end
  object sq_CheckPkgLog: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * From'
      'dbo.Confirmed_Package_Log_EXT CPL'
      'WHERE '
      'CPL.Confirmed_LoadNo = :LoadNo'
      '')
    Left = 88
    Top = 464
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_CheckPkgLogPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_CheckPkgLogSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_CheckPkgLogConfirmed_LoadNo: TIntegerField
      FieldName = 'Confirmed_LoadNo'
      Origin = 'Confirmed_LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_CheckPkgLogConfirmed_ShippingPlanNo: TIntegerField
      FieldName = 'Confirmed_ShippingPlanNo'
      Origin = 'Confirmed_ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_CheckPkgLogNewLoadNo: TIntegerField
      FieldName = 'NewLoadNo'
      Origin = 'NewLoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_CheckPkgLogNewShippingPlanNo: TIntegerField
      FieldName = 'NewShippingPlanNo'
      Origin = 'NewShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_CheckPkgLogLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_CheckPkgLogPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_CheckPkgLogPackageStatus: TIntegerField
      FieldName = 'PackageStatus'
      Origin = 'PackageStatus'
    end
    object sq_CheckPkgLogOperation: TIntegerField
      FieldName = 'Operation'
      Origin = 'Operation'
    end
    object sq_CheckPkgLogOld_LogicalInventoryPointNo: TIntegerField
      FieldName = 'Old_LogicalInventoryPointNo'
      Origin = 'Old_LogicalInventoryPointNo'
    end
  end
  object sq_Get_LoadShippingPlan: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      #9'  LP.LoadNo,'
      '    LP.ShippingPlanNo,'
      '    CSH.CustomerNo          AS AVROP_CustomerNo,'
      '    SP.CustomerNo           AS LO_CustomerNo,'
      '    SP.ObjectType,'
      '    IsNull(OH.OrderType,0)  AS OrderType,'
      '    SP.LIPNo'
      ''
      'FROM  dbo.Loads Ld'
      
        'INNER JOIN dbo.LoadShippingPlan LP  '#9#9'ON  Ld.LoadNo         = LP' +
        '.LoadNo'
      
        'INNER JOIN dbo.LoadDetail LDS  '#9#9'ON  LDS.LoadNo         = LP.Loa' +
        'dNo'
      #9#9#9#9#9#9'and LDS.ShippingPlanNo = LP.ShippingPlanNo'
      ''
      
        '-- INNER JOIN dbo.LoadDetailPkgLength LDP'#9#9'ON'#9'LDP.LoadNo'#9'= Ld.Lo' +
        'FDNo'
      '--'#9#9#9#9#9#9#9'and LDP.LoadDetailNo = LDS.LoadDetailNo'
      ''
      
        'INNER JOIN dbo.SupplierShippingPlan SP'#9#9'ON'#9'SP.SupplierShipPlanOb' +
        'jectNo = LDS.DefsspNo'
      ''
      'Left Outer JOIN dbo.CustomerShippingPlanDetails CSD'
      
        'Inner JOIN dbo.CustomerShippingPlanHeader CSH   ON CSH.ShippingP' +
        'lanNo = CSD.ShippingPlanNo'
      
        '         ON  CSD.CustShipPlanDetailObjectNo = SP.CustShipPlanDet' +
        'ailObjectNo'
      
        'Left Outer Join dbo.Orders                   OH      ON      OH.' +
        'OrderNo =  CSH.OrderNo'
      ''
      'WHERE LD.LOADNO = :LOADNO'
      ''
      'Order by LP.ShippingPlanNo'
      ' '
      ' '
      ' '
      '')
    Left = 88
    Top = 512
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_Get_LoadShippingPlanLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_Get_LoadShippingPlanShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      Required = True
    end
    object sq_Get_LoadShippingPlanAVROP_CustomerNo: TIntegerField
      FieldName = 'AVROP_CustomerNo'
      Origin = 'AVROP_CustomerNo'
    end
    object sq_Get_LoadShippingPlanLO_CustomerNo: TIntegerField
      FieldName = 'LO_CustomerNo'
      Origin = 'LO_CustomerNo'
    end
    object sq_Get_LoadShippingPlanObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
    end
    object sq_Get_LoadShippingPlanOrderType: TIntegerField
      FieldName = 'OrderType'
      Origin = 'OrderType'
      ReadOnly = True
      Required = True
    end
    object sq_Get_LoadShippingPlanLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
  end
  object sq_CheckIfConfirmedPkgsValidInInventory: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        '--check if package is where it was when it was confirmed to a lo' +
        'FD'
      'SELECT distinct'
      '   PN.LogicalInventoryPointNo'
      'FROM       dbo.PackageNumber  PN'
      ''
      'WHERE      PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      'AND PN.LogicalInventoryPointNo = :LogicalInventoryPointNo'
      'AND PN.PackageTypeNo = :PackageTypeNo'
      'AND PN.Status = :Status'
      '')
    Left = 88
    Top = 568
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
        Name = 'LOGICALINVENTORYPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_CheckIfConfirmedPkgsValidInInventoryLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
  end
  object sq_Get_VWLIPNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select (Select Top 1 LIP2.LogicalInventoryPointNo FROM'
      'dbo.LogicalInventoryPoint LIP2'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP2 on PIP2.PhysicalInven' +
        'toryPointNo = LIP2.PhysicalInventoryPointNo'
      'WHERE'
      'pip2.PhyInvPointNameNo = pip.PhyInvPointNameNo'
      'AND PIP2.OwnerNo = 741'
      ') AS VW_LIPNo'
      'from LogicalInventoryPoint LIP'
      
        'Inner Join PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPo' +
        'intNo = LIP.PhysicalInventoryPointNo'
      ''
      'WHERE LIP.LogicalInventoryPointNo = :LIPNo'
      ' '
      '')
    Left = 240
    Top = 600
    ParamData = <
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_Get_VWLIPNoVW_LIPNo: TIntegerField
      FieldName = 'VW_LIPNo'
      Origin = 'VW_LIPNo'
      ReadOnly = True
    end
  end
  object sq_GetVWCost: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select dbo.VIS_Getvwcost( :LoadedDate)'
      '')
    Left = 240
    Top = 552
    ParamData = <
      item
        Name = 'LOADEDDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object sq_GetVWCostUnnamed1: TFloatField
      FieldName = 'Unnamed1'
      Origin = 'Unnamed1'
      ReadOnly = True
    end
  end
  object sp_ArrivingLoads: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_ARRIVING_LOADS_II'
    Left = 240
    Top = 416
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
        Name = '@ClientNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Confirmed'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_VerkLaster: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_VerkLaster'
    Left = 240
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
        Name = '@Verk'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Fom'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object sq_LoadPackages: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct'
      'LD.LoadNo,'
      'LD.ShippingPlanNo AS LONo,'
      'PR.ProductDisplayName AS PRODUCT,'
      'LD.LoadDetailNo,'
      'LD.PackageNo'#9#9'AS PACKAGENO,'
      'LD.NoOfPackages'#9'AS NOOFPKG,'
      'LD.PackageTypeNo'#9'AS PACKAGETYPENO,'
      'LD.SupplierCode'#9'AS SUPP_CODE,'
      'LD.PackageOK'#9#9'AS PKG_OK,'
      'LD.ProblemPackageLog'#9'AS PKGLOG,'
      'LD.CreatedUser,'
      'LD.ModifiedUser,'
      'LD.DateCreated,'
      'PT.OnSticks,'
      'PT.Totalm3Actual       AS  M3_NET,'
      'PT.TotalNoOfPieces     AS  PCS,'
      'PT.Totalm3Nominal'#9#9'AS M3_NOM,'
      'PT.TotalSQMofActualWidth'#9'AS KVM,'
      'PT.TotalLinealMeterActualLength AS LOPM,'
      'PR.ProductNo,'
      'LD.DefaultCustShipObjectNo,'
      'PN.LogicalInventoryPointNo,'
      'PTL.PcsPerLength AS PCS_PER_LENGTH,'
      'LD.OverrideMatch,'
      'isNull(PT.BarCodeID,-1) AS BarCodeID,'
      'isNull(PT.GradeStamp,-1) AS GradeStamp,'
      ''
      'IsNull(OL.ProductNo, -1) AS NEWPRODUCTNO,'
      ''
      'LD.DefsspNo,'
      ''
      '-1 AS NEWPackageTypeNo,'
      ''
      'LD.OverrideRL'
      ''
      'FROM  dbo.LoadDetail              LD'
      
        'INNER JOIN dbo.PackageNumber  PN  ON PN.PackageNo     = LD.Packa' +
        'geNo'
      'AND PN.SupplierCode = LD.SupplierCode'
      
        'INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = LD.Packag' +
        'eTypeNo'
      
        'INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt.Product' +
        'No'
      
        'Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageTypeNo = PT.' +
        'PackageTypeNo'
      
        'Inner Join dbo.SupplierShippingPlan SSP on SSP.SupplierShipPlanO' +
        'bjectNo = LD.Defsspno'
      ''
      
        'Left Outer Join dbo.OrderLine OL on OL.OrderNo = ssp.OrderNo and' +
        ' OL.OrderLineNo = ssp.OrderLineNo'
      ''
      
        'Left Outer Join dbo.Packagecode_printparams ppLD on ppLD.PkgCode' +
        'PPNo = SSP.PkgCodePPNo'
      
        #9#9'                                  AND ppLD.PackageTypeNo = LD.' +
        'PackageTypeNo'
      ''
      ''
      'WHERE      LD.LoadNo = :LoadNo'
      ''
      'ORDER BY   LD.LoadDetailNo DESC'
      ' '
      ' '
      '')
    Left = 424
    Top = 560
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LoadPackagesLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_LoadPackagesLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
    end
    object sq_LoadPackagesPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 150
    end
    object sq_LoadPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_LoadPackagesPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      Required = True
    end
    object sq_LoadPackagesNOOFPKG: TIntegerField
      FieldName = 'NOOFPKG'
      Origin = 'NOOFPKG'
    end
    object sq_LoadPackagesPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
    end
    object sq_LoadPackagesSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      FixedChar = True
      Size = 3
    end
    object sq_LoadPackagesPKG_OK: TIntegerField
      FieldName = 'PKG_OK'
      Origin = 'PKG_OK'
    end
    object sq_LoadPackagesPKGLOG: TStringField
      FieldName = 'PKGLOG'
      Origin = 'PKGLOG'
      Size = 50
    end
    object sq_LoadPackagesCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object sq_LoadPackagesModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object sq_LoadPackagesDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_LoadPackagesOnSticks: TIntegerField
      FieldName = 'OnSticks'
      Origin = 'OnSticks'
    end
    object sq_LoadPackagesM3_NET: TFloatField
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
    end
    object sq_LoadPackagesPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
    end
    object sq_LoadPackagesM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
    end
    object sq_LoadPackagesKVM: TFloatField
      FieldName = 'KVM'
      Origin = 'KVM'
    end
    object sq_LoadPackagesLOPM: TFloatField
      FieldName = 'LOPM'
      Origin = 'LOPM'
    end
    object sq_LoadPackagesProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object sq_LoadPackagesDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      Origin = 'DefaultCustShipObjectNo'
    end
    object sq_LoadPackagesLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object sq_LoadPackagesPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Origin = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_LoadPackagesOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
      Origin = 'OverrideMatch'
    end
    object sq_LoadPackagesBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
      ReadOnly = True
      Required = True
    end
    object sq_LoadPackagesGradeStamp: TIntegerField
      FieldName = 'GradeStamp'
      Origin = 'GradeStamp'
      ReadOnly = True
      Required = True
    end
    object sq_LoadPackagesNEWPRODUCTNO: TIntegerField
      FieldName = 'NEWPRODUCTNO'
      Origin = 'NEWPRODUCTNO'
      ReadOnly = True
      Required = True
    end
    object sq_LoadPackagesDefsspNo: TIntegerField
      FieldName = 'DefsspNo'
      Origin = 'DefsspNo'
    end
    object sq_LoadPackagesNEWPackageTypeNo: TIntegerField
      FieldName = 'NEWPackageTypeNo'
      Origin = 'NEWPackageTypeNo'
      ReadOnly = True
      Required = True
    end
    object sq_LoadPackagesOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
      Origin = 'OverrideRL'
    end
  end
  object sq_IsLoadInvoiced: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      'CL.NewLoadNo AS LoadNo,'
      'CL.NewShippingPlanNo AS ShippingPlanNo,'
      'IL.InternalInvoiceNo --, L.OriginalSupplierNo'
      ''
      'FROM'
      'dbo.Confirmed_Load_EXT  CL'
      ''
      
        '--INNER JOIN dbo.LoadShippingPlan LSP ON LSP.LoadNo = CL.Confirm' +
        'ed_LoadNo'
      ''
      '--INNER JOIN dbo.Loads    L       ON L.LoadNo = LSP.LoadNo'
      ''
      'INNER JOIN dbo.Invoiced_Load IL'#9'ON IL.LoadNo = CL.NewLoadNo'
      '        AND IL.ShippingPlanNo = CL.NewShippingPlanNo'
      ''
      'WHERE'
      'CL.Confirmed_LoadNo =:LoadNo'
      '--AND IL.InternalInvoiceNo IS NULL'
      '')
    Left = 536
    Top = 496
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_IsLoadInvoicedLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
    end
    object sq_IsLoadInvoicedShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object sq_IsLoadInvoicedInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      Required = True
    end
  end
  object sq_DeleteNewLoadByOldLoadNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'DELETE dbo.Loads'
      'FROM dbo.Loads L, Confirmed_Load CL'
      ''
      'WHERE'
      'CL.Confirmed_LoadNo = :LoadNo'
      'AND L.LoadNo = CL.NewLoadNo'
      'AND CL.Confirmed_LoadNo <> CL.NewLoadNo'
      '')
    Left = 528
    Top = 576
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_vis_SetDateCreatedPkgsVP: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_SetDateCreatedPkgsVP'
    Left = 768
    Top = 600
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
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_samLast: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Insert INTO dbo.samLastReport'
      '(SamNr, LoadNo)'
      'Values (:SamLastNr, :LoadNo)'
      '')
    Left = 648
    Top = 384
    ParamData = <
      item
        Name = 'SAMLASTNR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_deleteSamLaster: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete From dbo.samLastReport'
      'WHERE SamNr =:SamLastNr'
      '')
    Left = 648
    Top = 432
    ParamData = <
      item
        Name = 'SAMLASTNR'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_IsLoadAvraknad: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT PL.PaymentNo,'
      'PL.LoadNo'
      'FROM'
      'dbo.LastAvrDtl PL'
      'WHERE'
      'PL.LoadNo =:LoadNo'
      '')
    Left = 648
    Top = 480
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_IsLoadAvraknadPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
      Origin = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_IsLoadAvraknadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_DeleteConfirmed_Load_Entry: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.Confirmed_Load_EXT'
      'where'
      'Confirmed_LoadNo = :LoadNo'
      '')
    Left = 648
    Top = 528
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_SearchPkgNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      'CSH.ShippingPlanNo'#9#9#9'AS'#9'LO,'
      'LSP.LoadNo,'
      
        '(Select Top 1 isNull(cl.Confirmed_LoadNo, LSP.LoadNo) FROM dbo.C' +
        'onfirmed_Load cl '
      'WHERE cl.NewLoadNo = LSP.LoadNo'
      'AND cl.NewShippingPlanNo = LSP.ShippingPlanNo) AS LOADNO,'
      ''
      'OL.Reference AS M'#196'RKNING'
      'FROM  dbo.Booking'#9#9'Bk'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON CSH.ShippingPla' +
        'nNo = Bk.ShippingPlanNo'
      'INNER JOIN dbo.Orders'#9'OH'#9#9#9'ON OH.OrderNo = CSH.OrderNo'
      ''
      
        'INNER JOIN dbo.LoadShippingPlan LSP '#9#9'ON '#9'LSP.ShippingPlanNo = C' +
        'SH.ShippingPlanNo'
      'INNER JOIN dbo.Loaddetail LD'#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'and LD.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD '#9'ON CSD.CustShipP' +
        'lanDetailObjectNo = LD.DefaultCustShipObjectNo'
      
        'INNER JOIN dbo.OrderLine'#9'OL ON OL.OrderNo = CSD.OrderNo AND OL.O' +
        'rderLineNo = CSD.OrderLineNo'
      ''
      'WHERE Bk.ShippingCompanyNo          = 132'
      'AND LD.PackageNo = :PackageNo'
      ''
      '')
    Left = 768
    Top = 408
    ParamData = <
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_SearchPkgNoLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
    object sq_SearchPkgNoLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      Required = True
    end
    object sq_SearchPkgNoLOADNO_1: TIntegerField
      FieldName = 'LOADNO_1'
      Origin = 'LOADNO'
      ReadOnly = True
    end
    object sq_SearchPkgNoMÄRKNING: TStringField
      FieldName = 'M'#196'RKNING'
      Origin = '[M'#196'RKNING]'
      Size = 50
    end
  end
  object sp_ProcessPkgAND_Log: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_ProcessPkg'
    Left = 768
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
        DataType = ftString
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
        Name = '@CreatedUser'
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
        Name = '@Status'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@Operation'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_CompareDetails: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT Count(*) AS Matching_LD'
      ''
      'FROM '
      'LoadDetail LD'
      'Where '
      'LD.LoadNo = :LoadNo'
      'AND LD.ShippingPlanNo = :ShippingPlanNo'
      ''
      'AND PackageNo IN (SELECT '
      'LD2.PackageNo'#9
      ''
      'FROM dbo.Loaddetail LD2, Confirmed_Load_EXT CL'
      ''
      'WHERE'
      'CL.Confirmed_LoadNo = LD.LoadNo'
      'AND CL.Confirmed_ShippingPlanNo = LD.ShippingPlanNo'
      'AND LD2.LoadNo = CL.NewLoadNo'
      'AND LD2.ShippingPlanNo = CL.NewShippingPlanNo'
      'AND LD2.SupplierCode = LD.SupplierCode)'
      ' '
      '')
    Left = 768
    Top = 504
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_CompareDetailsMatching_LD: TIntegerField
      FieldName = 'Matching_LD'
      Origin = 'Matching_LD'
      ReadOnly = True
    end
  end
  object sq_DelNewLoads: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'DELETE dbo.Loads'
      'FROM dbo.Loads'
      
        'Inner Join dbo.Confirmed_Package_Log_EXT  on dbo.Confirmed_Packa' +
        'ge_Log_EXT.NewLoadNo = dbo.Loads.LoadNo'
      'WHERE'
      'dbo.Confirmed_Package_Log_EXT.Confirmed_LoadNo = :LoadNo'
      
        'AND dbo.Confirmed_Package_Log_EXT.Confirmed_LoadNo <> dbo.Confir' +
        'med_Package_Log_EXT.NewLoadNo'
      'AND dbo.Confirmed_Package_Log_EXT.NewLoadNo <> -1'
      '')
    Left = 768
    Top = 552
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cdsPortArrivingPackages: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      'LSP.LoadNo,'
      '-1 AS Verk_LoadNo,'
      'LSP.ShippingPlanNo'#9#9'AS'#9'LO,'
      'LD.PackageNo'#9#9#9'AS'#9'PACKAGE_NO,'
      'LD.SUPPLIERCODE'#9#9#9'AS '#9'SUPPLIERCODE,'
      'P.Totalm3Actual'#9#9#9'AS '#9'M3_NET,'
      'P.Totalm3Nominal'#9#9'AS '#9'M3_NOM,'
      'P.TotalMFBMNominal              AS      MFBM,'
      ''
      'CASE'
      'WHEN isnull(ptbypp.ProductDisplayName,'#39#39') = '#39#39' THEN'
      'PR.ProductDisplayName'
      'else'
      'ptbypp.ProductDisplayName'
      'END'
      'AS PRODUCT_DESCRIPTION,'
      ''
      ''
      ''
      'P.TotalNoOfPieces'#9#9'AS'#9'PCS,'
      'LD.PACKAGEOK'#9#9#9'AS'#9'PACKAGEOK,'
      'LD.ProblemPackageLog'#9#9'AS'#9'PACKAGE_LOG,'
      'LD.LoadDetailNo                 AS      LOAD_DETAILNO,'
      ''
      
        'CASE WHEN isnull(ptbypp.PackageTypeNo, 0) = 0 THEN PTL.PcsPerLen' +
        'gth'
      ' WHEN ptbypp.Langd = '#39'0'#39' THEN PTL.PcsPerLength'
      'ELSE'
      
        'CAST( p.TotalNoOfPieces  As varchar(5))+'#39' / '#39'+CAST( ptbypp.Langd' +
        '  As varchar(15))'
      'END'
      'AS '#9'PSCPERLENGTH,'
      ''
      ''
      'BC.BarCode '#9#9#9'AS '#9'BC,'
      'GS.GradeStamp '#9#9#9'AS '#9'GS,'
      'p.TotalNoOfPieces AS PPP,'
      'OL.Reference AS M'#196'RKNING'
      ''
      'FROM dbo.LoadShippingPlan LSP'
      'INNER JOIN dbo.Loaddetail LD'#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'and LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        ' INNER JOIN dbo.CustomerShippingPlanDetails CSD '#9'ON CSD.CustShip' +
        'PlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      
        ' INNER JOIN dbo.OrderLine'#9'OL ON OL.OrderNo = CSD.OrderNo AND OL.' +
        'OrderLineNo = CSD.OrderLineNo'
      ''
      
        'Left Outer Join dbo.SupplierShippingPlan SSP on SSP.SupplierShip' +
        'PlanObjectNo = LD.defsspno'
      
        'INNER JOIN dbo.PackageType P'#9#9'ON '#9'P.PackageTypeNo = LD.PackageTy' +
        'peNo'
      
        'INNER JOIN dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = p.P' +
        'ackageTypeNo'
      'Left Outer Join dbo.Barcode BC ON BC.BarCodeNo = p.BarCodeID'
      
        'Left Outer Join dbo.GradeStamp GS ON GS.GradeStampNo = p.GradeSt' +
        'amp'
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = P.ProductNo'
      ''
      
        'LEFT OUTER JOIN dbo.PktTypeByPP ptbypp on ptbypp.PkgCodePPNo = S' +
        'SP.PkgCodePPNo'
      
        '                                      AND ptbypp.PackageTypeNo =' +
        ' LD.PackageTypeNo'
      'WHERE'
      'LSP.LoadNo = :LoadNo'
      'and LSP.ShippingPlanNo = :ShippingPlanNo'
      'AND OL.Reference = :Reference'
      ''
      '')
    Left = 1032
    Top = 296
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REFERENCE'
        DataType = ftString
        ParamType = ptInput
      end>
    object cdsPortArrivingPackagesLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPortArrivingPackagesVerk_LoadNo: TIntegerField
      FieldName = 'Verk_LoadNo'
      Origin = 'Verk_LoadNo'
      ReadOnly = True
      Required = True
    end
    object cdsPortArrivingPackagesLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
    object cdsPortArrivingPackagesPACKAGE_NO: TIntegerField
      FieldName = 'PACKAGE_NO'
      Origin = 'PACKAGE_NO'
      Required = True
    end
    object cdsPortArrivingPackagesSUPPLIERCODE: TStringField
      FieldName = 'SUPPLIERCODE'
      Origin = 'SUPPLIERCODE'
      FixedChar = True
      Size = 3
    end
    object cdsPortArrivingPackagesM3_NET: TFloatField
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
    end
    object cdsPortArrivingPackagesM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
    end
    object cdsPortArrivingPackagesMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
    end
    object cdsPortArrivingPackagesPRODUCT_DESCRIPTION: TStringField
      FieldName = 'PRODUCT_DESCRIPTION'
      Origin = 'PRODUCT_DESCRIPTION'
      ReadOnly = True
      Size = 150
    end
    object cdsPortArrivingPackagesPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
    end
    object cdsPortArrivingPackagesPACKAGEOK: TIntegerField
      FieldName = 'PACKAGEOK'
      Origin = 'PACKAGEOK'
    end
    object cdsPortArrivingPackagesPACKAGE_LOG: TStringField
      FieldName = 'PACKAGE_LOG'
      Origin = 'PACKAGE_LOG'
      Size = 50
    end
    object cdsPortArrivingPackagesLOAD_DETAILNO: TIntegerField
      FieldName = 'LOAD_DETAILNO'
      Origin = 'LOAD_DETAILNO'
      Required = True
    end
    object cdsPortArrivingPackagesPSCPERLENGTH: TStringField
      FieldName = 'PSCPERLENGTH'
      Origin = 'PSCPERLENGTH'
      ReadOnly = True
      Size = 255
    end
    object cdsPortArrivingPackagesBC: TStringField
      FieldName = 'BC'
      Origin = 'BC'
      FixedChar = True
    end
    object cdsPortArrivingPackagesGS: TStringField
      FieldName = 'GS'
      Origin = 'GS'
      FixedChar = True
    end
    object cdsPortArrivingPackagesPPP: TIntegerField
      FieldName = 'PPP'
      Origin = 'PPP'
    end
    object cdsPortArrivingPackagesMÄRKNING: TStringField
      FieldName = 'M'#196'RKNING'
      Origin = '[M'#196'RKNING]'
      Size = 50
    end
  end
  object sq_SearchLoadNoByPkgNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      'CSH.ShippingPlanNo'#9#9#9'AS'#9'LO,'
      'LSP.LoadNo'#9#9#9#9'AS'#9'LOADNO,'
      
        ' (Select Top 1 isNull(cl.Confirmed_LoadNo, L.LoadNo) FROM dbo.Co' +
        'nfirmed_Load cl'
      'WHERE cl.NewLoadNo = LSP.LoadNo'
      'AND cl.NewShippingPlanNo = LSP.ShippingPlanNo) AS VERK_LOADNO,'
      'OL.Reference AS M'#196'RKNING'
      'FROM  dbo.Booking'#9#9'Bk'
      
        'INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON CSH.ShippingPla' +
        'nNo = Bk.ShippingPlanNo'
      'INNER JOIN dbo.Orders'#9'OH'#9#9#9'ON OH.OrderNo = CSH.OrderNo'
      ''
      
        'INNER JOIN dbo.LoadShippingPlan LSP '#9#9'ON '#9'LSP.ShippingPlanNo = C' +
        'SH.ShippingPlanNo'
      'INNER JOIN dbo.Loaddetail LD'#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'and LD.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD '#9'ON CSD.CustShipP' +
        'lanDetailObjectNo = LD.DefaultCustShipObjectNo'
      
        'INNER JOIN dbo.OrderLine'#9'OL ON OL.OrderNo = CSD.OrderNo AND OL.O' +
        'rderLineNo = CSD.OrderLineNo'
      'INNER JOIN dbo.Loads L ON'#9'LSP.LoadNo '#9#9'= L.LoadNo'
      ''
      'WHERE Bk.ShippingCompanyNo          = :ShippingCompanyNo'
      '-- AND LSP.LoadNo = 62425'
      'AND LD.PackageNo = :PackageNo'
      'AND LD.SupplierCode = :SupplierCode'
      
        'AND LSP.LOADNO NOT IN (SELECT IL.LoadNo FROM dbo.Invoiced_Load I' +
        'L'
      'WHERE IL.LoadNo = LSP.LoadNo'
      'AND IL.ShippingPlanNo = LSP.ShippingPlanNo)'
      
        'AND (L.CustomerNo <> 741 AND L.CustomerNo <> 25 AND L.CustomerNo' +
        ' <> 76'
      
        'AND L.CustomerNo <> 172 AND L.CustomerNo <> 212 AND L.CustomerNo' +
        ' <> 232'
      'AND L.CustomerNo <> 578 AND L.CustomerNo <> 2878)'
      '')
    Left = 1040
    Top = 448
    ParamData = <
      item
        Name = 'SHIPPINGCOMPANYNO'
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
    object sq_SearchLoadNoByPkgNoLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
    object sq_SearchLoadNoByPkgNoLOADNO: TIntegerField
      FieldName = 'LOADNO'
      Origin = 'LOADNO'
      Required = True
    end
    object sq_SearchLoadNoByPkgNoVERK_LOADNO: TIntegerField
      FieldName = 'VERK_LOADNO'
      Origin = 'VERK_LOADNO'
      ReadOnly = True
    end
    object sq_SearchLoadNoByPkgNoMÄRKNING: TStringField
      FieldName = 'M'#196'RKNING'
      Origin = '[M'#196'RKNING]'
      Size = 50
    end
  end
  object sq_getMTSLLLipNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select'
      '(Select Top 1 lip.LogicalInventoryPointNo From'
      'dbo.LogicalInventoryPoint LIP WHERE'
      
        'LIP.PhysicalInventoryPointNo = PIP.PhysicalInventoryPointNo) AS ' +
        'LIPNo'
      ''
      'FROM dbo.SupplierShippingPlan SSP'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhyInvPointName' +
        'No = SSP.LoadingLocationNo'
      ''
      'WHERE SSP.ShippingPlanNo = :LONo'
      'AND PIP.OwnerNo = 741 --SSP.SupplierNo'
      '')
    Left = 1040
    Top = 504
    ParamData = <
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_getMTSLLLipNoLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ReadOnly = True
    end
  end
  object sp_AR_Invoice: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_AR_Load_Ext'
    Left = 1040
    Top = 568
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Status'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@LIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@CreatedUser'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_InsertPkgNoLogg: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'INSERT INTO    dbo.PackageNumberLog'
      '        ('
      '        PackageNo,'
      ' '#9'SupplierCode,'
      #9'DateCreated,'
      #9'Operation,'
      #9'RegistrationPointNo,'
      '        CreatedUser,'
      '        PackageTypeNo,'
      '        OldPackageTypeNo,          '
      '        LogicalInventoryPointNo,'
      #9'EventDate,'
      #9'ShiftNo'
      '         '
      '        )'
      
        'Select distinct CPL.PackageNo, CPL.SupplierCode, GetDate(), 14, ' +
        '--Regret ar'
      
        '-1, :UserID, CPL.PackageTypeNo, PN.PackageTypeNo, CPL.LogicalInv' +
        'entoryPointNo, GetDate(),'
      'CPL.Confirmed_LoadNo'
      'FROM dbo.Confirmed_Package_Log_EXT CPL'
      
        '   INNER JOIN dbo.PackageNumber  PN  ON PN.PackageNo     = CPL.P' +
        'ackageNo'
      #9#9#9#9#9'AND PN.SupplierCode = CPL.SupplierCode'
      ''
      'WHERE'
      'CPL.Confirmed_LoadNo = :LoadNo'
      '')
    Left = 1160
    Top = 544
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_PkgInvoiced: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct MAX(LD.LoadNo) AS LoadNo, IL.InternalInvoiceNo'
      'FROM       dbo.LoadDetail              LD'
      'Inner Join dbo.Invoiced_Load IL on IL.LoadNo = LD.LoadNo'
      ''
      'WHERE      LD.PackageNo = :PackageNo'
      'AND LD.SupplierCode = :SupplierCode'
      ''
      'Group By IL.InternalInvoiceNo'
      '')
    Left = 1160
    Top = 496
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
    object sq_PkgInvoicedLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sq_PkgInvoicedInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      Required = True
    end
  end
  object sq_ChkPkgs: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        '--check if package is on a load larger thanwhere it was when it ' +
        'was confirmed to a load'
      'SELECT MAX(LD.LoadNo) AS LoadNo,'
      'MAX(pkl.NewLoadNo) AS LoggLoadNo'
      'FROM       dbo.LoadDetail              LD'
      
        'Inner Join dbo.Confirmed_Package_Log_EXT pkl on pkl.PackageNo = ' +
        'LD.PackageNo'
      #9#9#9#9#9#9#9#9#9#9'and pkl.SupplierCode = LD.SupplierCode'
      ''
      'WHERE      LD.PackageNo = :PackageNo'
      'AND LD.SupplierCode = :SupplierCode'
      '')
    Left = 1160
    Top = 448
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
    object sq_ChkPkgsLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sq_ChkPkgsLoggLoadNo: TIntegerField
      FieldName = 'LoggLoadNo'
      Origin = 'LoggLoadNo'
      ReadOnly = True
    end
  end
  object sq_Check_CDS_Link: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      '--Check ObjectType 0 and 1'
      'SELECT DISTINCT'
      'IsNull(LD.DefsspNo,-1) AS SupplierShipPlanObjectNo,'
      
        'IsNull(LD.DefaultCustShipObjectNo,-1) AS CustShipPlanDetailObjec' +
        'tNo'
      ''
      'FROM dbo.Loaddetail LD'
      ''
      
        '-- INNER JOIN dbo.LoadDetailPkgLength LDP'#9'ON '#9'LDP.LoadNo = LD.Lo' +
        'FDNo'
      '--'#9#9#9#9#9'AND '#9'LDP.LoadDetailNo = LD.LoadDetailNo'
      ''
      'WHERE'
      'LD.LoadNo = :LoadNo'
      'AND LD.ShippingPlanNo = :ShippingPlanNo'
      'AND'
      'LD.DefsspNo NOT IN (Select SP.SupplierShipPlanObjectNo'
      'FROM dbo.SupplierShippingPlan SP)'
      ''
      ''
      ' '
      '')
    Left = 880
    Top = 376
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_Check_CDS_LinkSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ReadOnly = True
      Required = True
    end
    object sq_Check_CDS_LinkCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
      ReadOnly = True
      Required = True
    end
  end
  object sq_IsLoadConfirmed: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select CL.Confirmed_LoadNo, CL.Confirmed_ShippingPlanNo,'
      'CL.NewLoadNo, CL.NewShippingPlanNo, CL.DateCreated,'
      'U.UserName'
      ' from'
      'dbo.Confirmed_Load_EXT CL'
      'Left Outer Join Users U ON U.UserID = CL.CreatedUser'
      'Where'
      'CL.Confirmed_LoadNo = :LoadNo'
      ''
      'AND CL.Confirmed_ShippingPlanNo = :ShippingPlanNo'
      '')
    Left = 880
    Top = 328
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_IsLoadConfirmedConfirmed_LoadNo: TIntegerField
      FieldName = 'Confirmed_LoadNo'
      Origin = 'Confirmed_LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_IsLoadConfirmedConfirmed_ShippingPlanNo: TIntegerField
      FieldName = 'Confirmed_ShippingPlanNo'
      Origin = 'Confirmed_ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_IsLoadConfirmedNewLoadNo: TIntegerField
      FieldName = 'NewLoadNo'
      Origin = 'NewLoadNo'
    end
    object sq_IsLoadConfirmedNewShippingPlanNo: TIntegerField
      FieldName = 'NewShippingPlanNo'
      Origin = 'NewShippingPlanNo'
    end
    object sq_IsLoadConfirmedDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_IsLoadConfirmedUserName: TStringField
      FieldName = 'UserName'
      Origin = 'UserName'
    end
  end
  object sq_CheckObject2Link: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      'IsNull(LD.DefsspNo,-1) AS SupplierShipPlanObjectNo,'
      
        'IsNull(LD.DefaultCustShipObjectNo,-1) AS CustShipPlanDetailObjec' +
        'tNo'
      ''
      'FROM dbo.Loaddetail LD'
      ''
      'WHERE'
      'LD.LoadNo = :LoadNo'
      'AND LD.ShippingPlanNo = :ShippingPlanNo'
      ''
      'AND LD.DefsspNo NOT IN (Select SP.SupplierShipPlanObjectNo'
      'FROM dbo.SupplierShippingPlan SP)'
      ''
      
        '-- OR (LD.DefaultCustShipObjectNo NOT IN (Select CSD.CustShipPla' +
        'nDetailObjectNo'
      '-- FROM dbo.CustomerShippingPlanDetails CSD) ))'
      ' '
      ' '
      '')
    Left = 880
    Top = 280
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_CheckObject2LinkSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ReadOnly = True
      Required = True
    end
    object sq_CheckObject2LinkCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
      ReadOnly = True
      Required = True
    end
  end
  object sq_SetLoadAR: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.Loads'
      'Set LoadAR = :LoadAR'
      'WHERE LoadNo = :LoadNo'
      '')
    Left = 880
    Top = 232
    ParamData = <
      item
        Name = 'LOADAR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PackageTypeDetail: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_PackageTypeDetail'
    Left = 872
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
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_Populate_One_PkgTypeLengths: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_Populate_One_PackageTypeLengths'
    Left = 872
    Top = 72
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
        Name = '@SearchPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PackageTotals: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_PackageTotals'
    Left = 872
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
        Name = '@PkgNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_ChangePkg: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_ChangePackage_II'
    Left = 728
    Top = 184
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
  object sp_NewPackageDetail: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_NewPackageDetail'
    Left = 728
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
    StoredProcName = 'vis_NewPkgType'
    Left = 728
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
  object sp_PackageTypes: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_PkgType'
    Left = 728
    Top = 40
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
  object mtLoadPackages: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'LoadNo'
        DataType = ftInteger
      end
      item
        Name = 'LoadDetailNo'
        DataType = ftInteger
      end
      item
        Name = 'LONo'
        DataType = ftInteger
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
      end
      item
        Name = 'SUPP_CODE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PKG_OK'
        DataType = ftWord
      end
      item
        Name = 'PKGLOG'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
      end
      item
        Name = 'NOOFPKG'
        DataType = ftInteger
      end
      item
        Name = 'PRODUCT'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PCS'
        DataType = ftInteger
      end
      item
        Name = 'M3_NET'
        DataType = ftFloat
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
        Name = 'DefaultCustShipObjectNo'
        DataType = ftInteger
      end
      item
        Name = 'PcsPerLength'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'Removed'
        DataType = ftBoolean
      end>
    IndexFieldNames = 'PACKAGENO;SUPP_CODE'
    IndexName = 'mtLoadPackagesIndex2'
    IndexDefs = <
      item
        Name = 'mtLoadPackagesIndex2'
        Fields = 'PACKAGENO;SUPP_CODE'
        Options = [ixPrimary, ixUnique]
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
    Left = 424
    Top = 456
    object mtLoadPackagesLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object mtLoadPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
    end
    object mtLoadPackagesLONo: TIntegerField
      FieldName = 'LONo'
    end
    object mtLoadPackagesPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object mtLoadPackagesSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object mtLoadPackagesPKG_OK: TWordField
      FieldName = 'PKG_OK'
    end
    object mtLoadPackagesPKGLOG: TStringField
      FieldName = 'PKGLOG'
      Size = 50
    end
    object mtLoadPackagesPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object mtLoadPackagesNOOFPKG: TIntegerField
      FieldName = 'NOOFPKG'
    end
    object mtLoadPackagesPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object mtLoadPackagesPCS: TIntegerField
      FieldName = 'PCS'
    end
    object mtLoadPackagesM3_NET: TFloatField
      FieldName = 'M3_NET'
      DisplayFormat = '#######.000'
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
    object mtLoadPackagesDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
    end
    object mtLoadPackagesLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object mtLoadPackagesPcsPerLength: TStringField
      FieldName = 'PcsPerLength'
      Size = 250
    end
    object mtLoadPackagesOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
    end
    object mtLoadPackagesDefsspNo: TIntegerField
      FieldName = 'DefsspNo'
    end
    object mtLoadPackagesBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object mtLoadPackagesGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object mtLoadPackagesNEWPRODUCTNO: TIntegerField
      FieldName = 'NEWPRODUCTNO'
    end
    object mtLoadPackagesNEWPackageTypeNo: TIntegerField
      FieldName = 'NEWPackageTypeNo'
    end
    object mtLoadPackagesOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
    end
    object mtLoadPackagesRemoved: TBooleanField
      FieldName = 'Removed'
    end
  end
  object mtNewPackages: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
      end
      item
        Name = 'LogicalInventoryPointNo'
        DataType = ftInteger
      end
      item
        Name = 'NoOfPackages'
        DataType = ftInteger
      end>
    IndexFieldNames = 'PACKAGETYPENO;LogicalInventoryPointNo'
    IndexName = 'mtNewPackagesIndex2'
    IndexDefs = <
      item
        Name = 'mtNewPackagesIndex2'
        Fields = 'PACKAGETYPENO;LogicalInventoryPointNo'
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
    Left = 424
    Top = 408
    object mtNewPackagesPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object mtNewPackagesLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object mtNewPackagesNoOfPackages: TIntegerField
      FieldName = 'NoOfPackages'
    end
  end
  object mtLoadShippingPlan: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'LoadNo'
        DataType = ftInteger
      end
      item
        Name = 'ShippingPlanNo'
        DataType = ftInteger
      end
      item
        Name = 'Avrop_CustomerNo'
        DataType = ftInteger
      end
      item
        Name = 'LO_CustomerNo'
        DataType = ftInteger
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
    Left = 536
    Top = 408
    object mtLoadShippingPlanLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object mtLoadShippingPlanShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object mtLoadShippingPlanAvrop_CustomerNo: TIntegerField
      FieldName = 'Avrop_CustomerNo'
    end
    object mtLoadShippingPlanLO_CustomerNo: TIntegerField
      FieldName = 'LO_CustomerNo'
    end
    object mtLoadShippingPlanObjectType: TIntegerField
      FieldName = 'ObjectType'
    end
    object mtLoadShippingPlanOrderType: TIntegerField
      FieldName = 'OrderType'
    end
    object mtLoadShippingPlanLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtLoadShippingPlanNewLoadNo: TIntegerField
      FieldName = 'NewLoadNo'
    end
  end
  object mtLoadRemovedPackages: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'LONo'
        DataType = ftInteger
      end
      item
        Name = 'PRODUCT'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'LoadDetailNo'
        DataType = ftInteger
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
      end
      item
        Name = 'NOOFPKG'
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
        Name = 'PKG_OK'
        DataType = ftWord
      end
      item
        Name = 'PKGLOG'
        DataType = ftString
        Size = 50
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
        Name = 'DefaultCustShipObjectNo'
        DataType = ftInteger
      end
      item
        Name = 'PcsPerLength'
        DataType = ftString
        Size = 250
      end>
    IndexFieldNames = 'PACKAGENO;SUPP_CODE'
    IndexName = 'mtLoadPackagesIndex2'
    IndexDefs = <
      item
        Name = 'mtLoadPackagesIndex2'
        Fields = 'PACKAGENO;SUPP_CODE'
        Options = [ixPrimary, ixUnique]
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
    Left = 536
    Top = 456
    object mtLoadRemovedPackagesLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object mtLoadRemovedPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
    end
    object mtLoadRemovedPackagesLONo: TIntegerField
      FieldName = 'LONo'
    end
    object mtLoadRemovedPackagesPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object mtLoadRemovedPackagesSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object mtLoadRemovedPackagesPKG_OK: TWordField
      FieldName = 'PKG_OK'
    end
    object mtLoadRemovedPackagesPKGLOG: TStringField
      FieldName = 'PKGLOG'
      Size = 50
    end
    object mtLoadRemovedPackagesPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object mtLoadRemovedPackagesNOOFPKG: TIntegerField
      FieldName = 'NOOFPKG'
    end
    object mtLoadRemovedPackagesPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object mtLoadRemovedPackagesPCS: TIntegerField
      FieldName = 'PCS'
    end
    object mtLoadRemovedPackagesM3_NET: TFloatField
      FieldName = 'M3_NET'
      DisplayFormat = '#######.000'
    end
    object mtLoadRemovedPackagesM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      DisplayFormat = '#######.000'
    end
    object mtLoadRemovedPackagesKVM: TFloatField
      FieldName = 'KVM'
      DisplayFormat = '#######.000'
    end
    object mtLoadRemovedPackagesLOPM: TFloatField
      FieldName = 'LOPM'
      DisplayFormat = '#######.000'
    end
    object mtLoadRemovedPackagesProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtLoadRemovedPackagesDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
    end
    object mtLoadRemovedPackagesLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object mtLoadRemovedPackagesPcsPerLength: TStringField
      FieldName = 'PcsPerLength'
      Size = 250
    end
    object mtLoadRemovedPackagesOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
    end
    object mtLoadRemovedPackagesBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object mtLoadRemovedPackagesGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object mtLoadRemovedPackagesPkgsRemoved: TBooleanField
      FieldName = 'PkgsRemoved'
    end
  end
  object mtUserProp: TkbmMemTable
    DesignActivation = True
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
        Name = 'SurfacingNo'
        DataType = ftInteger
      end
      item
        Name = 'NOMTHICK'
        DataType = ftFloat
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
    Left = 1184
    Top = 232
    object mtUserPropVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtUserPropOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object mtUserPropPIPNo: TIntegerField
      FieldName = 'PIPNo'
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
      LookupDataSet = cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropPIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PIPNAME'
      LookupDataSet = cds_PIP
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
      LookupDataSet = dm_UserProps.cds_Customer
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
    object mtUserPropSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtUserPropNOMTHICK: TFloatField
      FieldName = 'NOMTHICK'
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
    object mtUserPropFilter1: TStringField
      FieldName = 'Filter1'
      Size = 50
    end
    object mtUserPropFilter2: TStringField
      FieldName = 'Filter2'
      Size = 255
    end
  end
end
