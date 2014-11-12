object dmArrivingLoads: TdmArrivingLoads
  OldCreateOrder = False
  Left = 358
  Top = 68
  Height = 636
  Width = 833
  object sq_ArrivingPackages: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      'PTD.ProductLengthNo,'
      'LSP.LoadNo,'
      'LSP.ShippingPlanNo'#9#9'  AS'#9'LO,'
      'LD.PackageNo'#9#9#9'      AS'#9'PACKAGE_NO,'
      'LD.SUPPLIERCODE'#9#9#9'    AS '#9'SUPPLIERCODE,'
      'P.Totalm3Actual'#9#9#9'    AS '#9'M3_NET,'
      'P.Totalm3Nominal'#9#9'    AS '#9'M3_NOM,'
      'P.TotalMFBMNominal      AS      MFBM,'
      'P.TotalNoOfPieces'#9#9'    AS'#9'PCS,'
      'PR.ProductDisplayName   AS PRODUCT_DESCRIPTION,'
      'PTL.PcsPerLength,'
      'LD.PACKAGEOK'#9#9#9'      AS'#9'PACKAGEOK,'
      'LD.ProblemPackageLog'#9#9'AS'#9'PACKAGE_LOG,'
      'LD.LoadDetailNo         AS      LOAD_DETAILNO,'
      'BC.BarCode '#9#9#9'        AS '#9'BC,'
      'GS.GradeStamp '#9#9#9'    AS '#9'GS'
      ''
      'FROM dbo.Invoiced_Load IL'
      'Inner Join dbo.LoadShippingPlan LSP ON '#9'LSP.LoadNo = IL.LoadNo'
      #9#9#9#9#9#9'and LSP.ShippingPlanNo = IL.ShippingPlanNo'
      'INNER JOIN dbo.Loaddetail LD'#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'and LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.PackageType P'#9#9'ON '#9'P.PackageTypeNo = LD.PackageTy' +
        'peNo'
      
        'INNER JOIN dbo.PackageTypeDetail PTD'#9#9'ON '#9'PTD.PackageTypeNo = LD' +
        '.PackageTypeNo'
      
        'INNER JOIN dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      
        'INNER JOIN dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = p.P' +
        'ackageTypeNo'
      'Left Outer Join dbo.Barcode BC ON BC.BarCodeNo = p.BarCodeID'
      
        'Left Outer Join dbo.GradeStamp GS ON GS.GradeStampNo = p.GradeSt' +
        'amp'
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = P.ProductNo'
      ''
      ''
      'WHERE'
      'IL.InternalInvoiceNo = :InternalInvoiceNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 136
    Top = 24
  end
  object dspArrivingPackages: TDataSetProvider
    DataSet = sq_ArrivingPackages
    Left = 136
    Top = 72
  end
  object cdsArrivingPackages: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end
      item
        Name = 'LoadNo'
        DataType = ftInteger
      end
      item
        Name = 'LO'
        DataType = ftInteger
      end
      item
        Name = 'PACKAGE_NO'
        DataType = ftInteger
      end
      item
        Name = 'SUPPLIERCODE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
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
        Name = 'MFBM'
        DataType = ftFloat
      end
      item
        Name = 'PCS'
        DataType = ftInteger
      end
      item
        Name = 'PRODUCT_DESCRIPTION'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PcsPerLength'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'PACKAGEOK'
        DataType = ftInteger
      end
      item
        Name = 'PACKAGE_LOG'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LOAD_DETAILNO'
        DataType = ftInteger
      end
      item
        Name = 'BC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'GS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'cdsArrivingPackagesIndex1'
        Fields = 'PACKAGE_NO;SUPPLIERCODE'
      end>
    IndexName = 'cdsArrivingPackagesIndex1'
    Params = <>
    ProviderName = 'dspArrivingPackages'
    StoreDefs = True
    Left = 136
    Top = 120
    object cdsArrivingPackagesLO: TIntegerField
      FieldName = 'LO'
    end
    object cdsArrivingPackagesPACKAGE_NO: TIntegerField
      DisplayLabel = 'PAKETNR'
      FieldName = 'PACKAGE_NO'
    end
    object cdsArrivingPackagesSUPPLIERCODE: TStringField
      DisplayLabel = 'LEV.KOD'
      FieldName = 'SUPPLIERCODE'
      Size = 3
    end
    object cdsArrivingPackagesM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      DisplayFormat = '#.000'
    end
    object cdsArrivingPackagesPRODUCT_DESCRIPTION: TStringField
      DisplayLabel = 'PRODUKT'
      FieldName = 'PRODUCT_DESCRIPTION'
      Size = 100
    end
    object cdsArrivingPackagesPCS: TIntegerField
      DisplayLabel = 'STYCK'
      FieldName = 'PCS'
    end
    object cdsArrivingPackagesPACKAGEOK: TSmallintField
      DisplayLabel = 'STATUS'
      FieldName = 'PACKAGEOK'
    end
    object cdsArrivingPackagesPACKAGE_LOG: TStringField
      DisplayLabel = 'PKTLOG'
      FieldName = 'PACKAGE_LOG'
      Size = 50
    end
    object cdsArrivingPackagesM3_NOM: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'M3_NOM'
      DisplayFormat = '#.000'
    end
    object cdsArrivingPackagesLOAD_DETAILNO: TIntegerField
      DisplayLabel = 'RADNR'
      FieldName = 'LOAD_DETAILNO'
    end
    object cdsArrivingPackagesLoadNo: TIntegerField
      DisplayLabel = 'LASTNR'
      FieldName = 'LoadNo'
    end
    object cdsArrivingPackagesMFBM: TFloatField
      FieldName = 'MFBM'
      DisplayFormat = '#.000'
    end
    object cdsArrivingPackagesBC: TStringField
      FieldName = 'BC'
      FixedChar = True
    end
    object cdsArrivingPackagesGS: TStringField
      FieldName = 'GS'
      FixedChar = True
    end
  end
  object dsrcArrivingPackages: TDataSource
    DataSet = cdsArrivingPackages
    Left = 136
    Top = 176
  end
  object dspOneLoad: TDataSetProvider
    DataSet = sq_Load
    UpdateMode = upWhereChanged
    Left = 32
    Top = 312
  end
  object cdsOneLoad: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOneLoad'
    OnReconcileError = cdsOneLoadReconcileError
    Left = 32
    Top = 360
    object cdsOneLoadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOneLoadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object cdsOneLoadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
    end
    object cdsOneLoadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
    end
    object cdsOneLoadLoadID: TStringField
      FieldName = 'LoadID'
      Size = 50
    end
    object cdsOneLoadMsgToShipper: TMemoField
      FieldName = 'MsgToShipper'
      BlobType = ftMemo
    end
    object cdsOneLoadInternalNote: TMemoField
      FieldName = 'InternalNote'
      BlobType = ftMemo
    end
    object cdsOneLoadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
    end
    object cdsOneLoadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
    end
    object cdsOneLoadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
    end
    object cdsOneLoadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
    end
    object cdsOneLoadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cdsOneLoadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cdsOneLoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cdsOneLoadFS: TStringField
      FieldName = 'FS'
    end
    object cdsOneLoadOriginalSupplierNo: TIntegerField
      FieldName = 'OriginalSupplierNo'
    end
    object cdsOneLoadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object cdsOneLoadLoadOK: TIntegerField
      FieldName = 'LoadOK'
    end
    object cdsOneLoadLoadAR: TIntegerField
      FieldName = 'LoadAR'
    end
  end
  object sq_Load: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      ''
      'FROM   dbo.Loads'
      ''
      'WHERE LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 32
    Top = 264
    object sq_LoadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadLoadID: TStringField
      FieldName = 'LoadID'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_LoadMsgToShipper: TMemoField
      FieldName = 'MsgToShipper'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_LoadInternalNote: TMemoField
      FieldName = 'InternalNote'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_LoadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadFS: TStringField
      FieldName = 'FS'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadOriginalSupplierNo: TIntegerField
      FieldName = 'OriginalSupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadLoadOK: TIntegerField
      FieldName = 'LoadOK'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadLoadAR: TIntegerField
      FieldName = 'LoadAR'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_SetLoadAR: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Update dbo.Loads'
      'Set LoadAR = :LoadAR'
      'WHERE LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 152
    Top = 416
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 328
    Top = 248
    object mtUserPropVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtUserPropOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      OnChange = mtUserPropOwnerNoChange
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
  end
  object dsUserProp: TDataSource
    DataSet = mtUserProp
    Left = 328
    Top = 296
  end
  object sq_InvoiceList: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_' +
        'DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,'
      'IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO,'
      'CASE'
      'WHEN IH.InvoiceType = 0 THEN '
      
        '(Select INO.InvoiceNo FROM dbo.InvoiceNumber INo WHERE INo.Inter' +
        'nalInvoiceNo = IH.InternalInvoiceNo) '
      'WHEN IH.InvoiceType = 1 THEN '
      
        '(Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo' +
        ' WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo) '
      'WHEN IH.InvoiceType = 2 THEN '
      
        '(Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo' +
        ' WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo) '
      'WHEN IH.InvoiceType = 3 THEN '
      
        '(Select INO.PO_InvoiceNo FROM dbo.InvoiceNumber_PO INo WHERE INo' +
        '.InternalInvoiceNo = IH.InternalInvoiceNo) '
      'WHEN IH.InvoiceType = 4 THEN '
      
        '(Select INO.InvoiceNo FROM dbo.InvoiceNo_USA INo WHERE INo.Inter' +
        'nalInvoiceNo = IH.InternalInvoiceNo) '
      'WHEN IH.InvoiceType = 5 THEN '
      
        '(Select INO.InvoiceNo FROM dbo.InvNo_FW INo WHERE INo.InternalIn' +
        'voiceNo = IH.InternalInvoiceNo) '
      'END AS INVOICE_NO,'
      'CASE'
      'WHEN IH.InvoiceType = 0 THEN '#39'Vida K1'#39
      'WHEN IH.InvoiceType = 1 THEN '#39'Proforma, fakturera senare'#39
      'WHEN IH.InvoiceType = 2 THEN '#39'Proforma, flytta paket'#39
      'WHEN IH.InvoiceType = 3 THEN '#39'Ink'#246'p VW'#39
      'WHEN IH.InvoiceType = 4 THEN '#39'USA K2'#39
      'WHEN IH.InvoiceType = 5 THEN '#39'FW'#39
      'END AS INVOICE_TYPE,'
      'CASE'
      'WHEN IH.Debit_Credit = 0 THEN '#39'DEBIT'#39
      'WHEN IH.Debit_Credit = 1 THEN '#39'CREDIT'#39
      'END AS INVOICE_KONTO,'
      'IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,'
      'IH.CurrencyName'#9'AS CURRENCY,'
      'IH.CustomerNo,'
      'SUM(PT.totalm3Nominal) as NM3, SUM(PT.totalm3Actual) as AM3,'
      'dpi.KUND_NM3, dpi.KONT_UNIT,'
      
        'SR.ClientName AS F'#246'rs'#228'ljReg, sm.SalesGroupName AS S'#228'ljGrupp, IH.' +
        'InvoiceType,'
      'iar.ArDate, IsNull(iar.InternalInvoiceNo,0) AS IAR_IntInvNo'
      'FROM dbo.InvoiceHeader IH'
      'Inner join dbo.Client SR ON SR.ClientNo = IH.SupplierNo'
      'Left Outer Join dbo.SalesManGroupRow smg '
      
        'Inner Join dbo.SalesManGroup sm on sm.SalesGroupNo = smg.SalesGr' +
        'oupNo'
      'on smg.UserID = IH.ResponsibleSeller'
      
        'Inner Join dbo.InvoiceLO IL ON IL.InternalInvoiceNo = IH.Interna' +
        'lInvoiceNo'
      
        'Left Outer Join dbo.DelVolInvoice dpi on dpi.InternalInvoiceNo =' +
        ' IH.InternalInvoiceNo'
      
        'Left Outer Join dbo.Invoice_AR iar on iar.InternalInvoiceNo = IH' +
        '.InternalInvoiceNo'
      'LEFT OUTER JOIN dbo.Invoiced_Load ILD '
      'INNER JOIN dbo.Loaddetail LD ON LD.LoadNo = ILD.LoadNo AND'
      '                      LD.ShippingPlanNo = ILD.SHIPPINGPLANNO'
      
        'INNER JOIN dbo.PackageType PT ON PT.PackageTypeNo = LD.PackageTy' +
        'peNo'
      'ON ILD.InternalInvoiceNo = IL.InternalInvoiceNo'
      '                     AND ILD.ShippingPlanNo = IL.SHIPPINGPLANNO'
      'WHERE (IH.Debit_Credit = 0 OR IH.Debit_Credit = 1)'
      'AND IH.InvoiceType = 0'
      'AND IH.InvoiceDate >= '#39'2008-09-01'#39
      
        'Group by IH.InternalInvoiceNo, IH.InvoiceDate, IH.AgentName, IL.' +
        'Shipper,'
      
        'IH.CustomerName, IL.ShippingPlanNo, SR.ClientName, sm.SalesGroup' +
        'Name, '
      'IH.Debit_Credit,'
      'IH.Inv_Value_To_Be_Paid,'
      
        'IH.CurrencyName, IH.CustomerNo, dpi.KUND_NM3, dpi.KONT_UNIT, IH.' +
        'InvoiceType,'
      'iar.ArDate, iar.InternalInvoiceNo'
      'ORDER BY InvoiceDate desc'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 32
    Top = 24
    object sq_InvoiceListINT_INVNO: TIntegerField
      FieldName = 'INT_INVNO'
    end
    object sq_InvoiceListINV_DATE: TSQLTimeStampField
      FieldName = 'INV_DATE'
    end
    object sq_InvoiceListAGENT: TStringField
      FieldName = 'AGENT'
      Size = 80
    end
    object sq_InvoiceListSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object sq_InvoiceListCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Size = 80
    end
    object sq_InvoiceListLO: TIntegerField
      FieldName = 'LO'
    end
    object sq_InvoiceListINVOICE_NO: TIntegerField
      FieldName = 'INVOICE_NO'
    end
    object sq_InvoiceListINVOICE_TYPE: TStringField
      FieldName = 'INVOICE_TYPE'
      Size = 23
    end
    object sq_InvoiceListINVOICE_KONTO: TStringField
      FieldName = 'INVOICE_KONTO'
      Size = 6
    end
    object sq_InvoiceListTO_BE_PAID: TFloatField
      FieldName = 'TO_BE_PAID'
    end
    object sq_InvoiceListCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Size = 5
    end
    object sq_InvoiceListCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object sq_InvoiceListNM3: TFloatField
      FieldName = 'NM3'
    end
    object sq_InvoiceListAM3: TFloatField
      FieldName = 'AM3'
    end
    object sq_InvoiceListKUND_NM3: TFloatField
      FieldName = 'KUND_NM3'
    end
    object sq_InvoiceListKONT_UNIT: TFloatField
      FieldName = 'KONT_UNIT'
    end
    object sq_InvoiceListFrsljReg: TStringField
      FieldName = 'F'#246'rs'#228'ljReg'
      Size = 80
    end
    object sq_InvoiceListSljGrupp: TStringField
      FieldName = 'S'#228'ljGrupp'
      Size = 15
    end
    object sq_InvoiceListInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      ProviderFlags = []
    end
    object sq_InvoiceListArDate: TSQLTimeStampField
      FieldName = 'ArDate'
    end
    object sq_InvoiceListIAR_IntInvNo: TIntegerField
      FieldName = 'IAR_IntInvNo'
    end
  end
  object dspInvoiceList: TDataSetProvider
    DataSet = sq_InvoiceList
    Left = 32
    Top = 72
  end
  object cdsInvoiceList: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'INT_INVNO'
        DataType = ftInteger
      end
      item
        Name = 'INV_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'AGENT'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'SHIPPER'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'CUSTOMER'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'LO'
        DataType = ftInteger
      end
      item
        Name = 'INVOICE_NO'
        DataType = ftInteger
      end
      item
        Name = 'INVOICE_TYPE'
        DataType = ftString
        Size = 23
      end
      item
        Name = 'INVOICE_KONTO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TO_BE_PAID'
        DataType = ftFloat
      end
      item
        Name = 'CURRENCY'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CustomerNo'
        DataType = ftInteger
      end
      item
        Name = 'NM3'
        DataType = ftFloat
      end
      item
        Name = 'AM3'
        DataType = ftFloat
      end
      item
        Name = 'KUND_NM3'
        DataType = ftFloat
      end
      item
        Name = 'KONT_UNIT'
        DataType = ftFloat
      end
      item
        Name = 'F'#246'rs'#228'ljReg'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'S'#228'ljGrupp'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'InvoiceType'
        DataType = ftInteger
      end
      item
        Name = 'ArDate'
        DataType = ftTimeStamp
      end
      item
        Name = 'IAR_IntInvNo'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cdsInvoiceListIndex1'
        Fields = 'INT_INVNO'
      end>
    IndexName = 'cdsInvoiceListIndex1'
    Params = <>
    ProviderName = 'dspInvoiceList'
    StoreDefs = True
    Left = 32
    Top = 120
    object cdsInvoiceListINT_INVNO: TIntegerField
      DisplayLabel = 'Internnr'
      FieldName = 'INT_INVNO'
    end
    object cdsInvoiceListINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Fakturerad'
      FieldName = 'INV_DATE'
    end
    object cdsInvoiceListAGENT: TStringField
      DisplayLabel = 'Agent'
      FieldName = 'AGENT'
      Size = 80
    end
    object cdsInvoiceListSHIPPER: TStringField
      DisplayLabel = 'Spedit'#246'r'
      FieldName = 'SHIPPER'
      Size = 80
    end
    object cdsInvoiceListCUSTOMER: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'CUSTOMER'
      Size = 80
    end
    object cdsInvoiceListLO: TIntegerField
      FieldName = 'LO'
    end
    object cdsInvoiceListINVOICE_NO: TIntegerField
      DisplayLabel = 'Fakturanr'
      FieldName = 'INVOICE_NO'
    end
    object cdsInvoiceListINVOICE_TYPE: TStringField
      DisplayLabel = 'Serie'
      FieldName = 'INVOICE_TYPE'
      Size = 23
    end
    object cdsInvoiceListINVOICE_KONTO: TStringField
      DisplayLabel = 'Fakturakonto'
      FieldName = 'INVOICE_KONTO'
      Size = 6
    end
    object cdsInvoiceListTO_BE_PAID: TFloatField
      DisplayLabel = 'Belopp'
      FieldName = 'TO_BE_PAID'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceListCURRENCY: TStringField
      DisplayLabel = 'Valuta'
      FieldName = 'CURRENCY'
      Size = 5
    end
    object cdsInvoiceListCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object cdsInvoiceListNM3: TFloatField
      FieldName = 'NM3'
      DisplayFormat = '#,###,###,###.000'
    end
    object cdsInvoiceListAM3: TFloatField
      FieldName = 'AM3'
      DisplayFormat = '#,###,###,###.000'
    end
    object cdsInvoiceListKUND_NM3: TFloatField
      DisplayLabel = 'Kund NM3'
      FieldName = 'KUND_NM3'
      DisplayFormat = '#,###,###,###.000'
    end
    object cdsInvoiceListKONT_UNIT: TFloatField
      DisplayLabel = 'KONT.VOLYM'
      FieldName = 'KONT_UNIT'
      DisplayFormat = '#,###,###,###.000'
    end
    object cdsInvoiceListFrsljReg: TStringField
      DisplayLabel = 'F'#246'rs'#228'ljningsregion'
      FieldName = 'F'#246'rs'#228'ljReg'
      Size = 80
    end
    object cdsInvoiceListSljGrupp: TStringField
      DisplayLabel = 'S'#228'ljgrupp'
      FieldName = 'S'#228'ljGrupp'
      Size = 15
    end
    object cdsInvoiceListInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      ProviderFlags = []
    end
    object cdsInvoiceListArDate: TSQLTimeStampField
      DisplayLabel = 'AR'
      FieldName = 'ArDate'
    end
    object cdsInvoiceListIAR_IntInvNo: TIntegerField
      DisplayLabel = 'AR'
      FieldName = 'IAR_IntInvNo'
    end
  end
  object dsInvoiceList: TDataSource
    DataSet = cdsInvoiceList
    OnDataChange = dsInvoiceListDataChange
    Left = 32
    Top = 168
  end
  object sq_SearchLoadNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select ih.InvoiceType, ih.InternalInvoiceNo FROM Invoiced_Load i' +
        'l'
      
        'Inner  join invoiceheader ih on ih.InternalInvoiceNo = il.Intern' +
        'alInvoiceNo'
      'WHERE LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 152
    Top = 328
    object sq_SearchLoadNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object sq_SearchLoadNoInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
    end
  end
  object sp_AR_Invoice: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CreatedUser'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vis_AR_Load_Ext'
    Left = 152
    Top = 256
  end
  object sq_IsInvoiceConfirmed: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'Select iar.ARDate, anv.UserName, iar.InternalInvoiceNo FROM dbo.' +
        'Invoice_AR iar'
      'Inner Join dbo.Users anv on anv.UserID = iar.CreatedUser'
      'WHERE iar.InternalInvoiceNo = :InternalInvoiceNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 312
    Top = 24
    object sq_IsInvoiceConfirmedInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object sq_IsInvoiceConfirmedARDate: TSQLTimeStampField
      FieldName = 'ARDate'
    end
    object sq_IsInvoiceConfirmedUserName: TStringField
      FieldName = 'UserName'
    end
  end
  object sq_PIP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT Distinct PH.PhysicalInventoryPointNo AS PIPNO, CY.CITYNAM' +
        'E AS PIPNAME'
      'FROM'
      'dbo.PHYSICALINVENTORYPOINT PH'
      'Inner Join dbo.CITY CY on CY.CITYNO = PH.PhyInvPointNameNo'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      ''
      'Order By  CY.CITYNAME')
    SQLConnection = dmsConnector.SQLConnection
    Left = 464
    Top = 17
  end
  object sq_LIP: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT  Distinct LogicalInventoryPointNo AS LIPNo, LogicalInvent' +
        'oryName AS LIPName,'
      'PhysicalInventoryPointNo AS PIPNo'
      'FROM dbo.LOGICALINVENTORYPOINT'
      'WHERE'
      'SequenceNo = 1'
      ''
      'Order By LogicalInventoryName ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 552
    Top = 17
  end
  object dsp_PIP: TDataSetProvider
    DataSet = sq_PIP
    Left = 464
    Top = 64
  end
  object dsp_LIP: TDataSetProvider
    DataSet = sq_LIP
    Left = 552
    Top = 64
  end
  object cds_PIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PIP'
    Left = 464
    Top = 112
    object cds_PIPPIPNO: TIntegerField
      FieldName = 'PIPNO'
    end
    object cds_PIPPIPNAME: TStringField
      FieldName = 'PIPNAME'
      Size = 50
    end
  end
  object cds_LIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LIP'
    Left = 552
    Top = 112
    object cds_LIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object cds_LIPLIPName: TStringField
      FieldName = 'LIPName'
      Size = 50
    end
    object cds_LIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
  end
  object ds_PIP: TDataSource
    DataSet = cds_PIP
    Left = 464
    Top = 160
  end
  object ds_LIP: TDataSource
    DataSet = cds_LIP
    Left = 552
    Top = 160
  end
end
