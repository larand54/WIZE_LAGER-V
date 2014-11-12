object dmcPayment: TdmcPayment
  OldCreateOrder = False
  Height = 670
  Width = 946
  object dsrcArrivingLoads: TDataSource
    DataSet = cdsArrivingLoads
    OnDataChange = dsrcArrivingLoadsDataChange
    Left = 56
    Top = 96
  end
  object dsrcArrivingPackages: TDataSource
    DataSet = cdsArrivingPackages
    Left = 168
    Top = 112
  end
  object dsPaymentHead: TDataSource
    DataSet = cdsPaymentHead
    OnDataChange = dsPaymentHeadDataChange
    Left = 48
    Top = 272
  end
  object dsPaymentLoadList: TDataSource
    DataSet = cdsPaymentLoadList
    Left = 168
    Top = 272
  end
  object dsPayHead: TDataSource
    DataSet = cdsPayHead
    Left = 376
    Top = 112
  end
  object cds_LoadDetailPkgLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select *'
      'FROM dbo.LoadDetailPkgLength'
      'Where'
      'LoadNo = :LoadNo'
      '')
    Left = 728
    Top = 480
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadDetailPkgLengthSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
    end
  end
  object sq_FindAvr: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      'PL.PaymentNo'#9#9#9#9'AS'#9'AVRAKNING_NO,'
      'OC.ClientName'#9#9#9#9'AS'#9'Verk,'
      'OC.ClientNo                           AS      VerkNo'
      ''
      ''
      'FROM  PaymentHead PH'
      'INNER JOIN PaymentLoad PL'#9#9#9'ON'#9'PL.PaymentNo'#9#9'= PH.PaymentNo'
      'INNER JOIN dbo.Client OC'#9#9#9#9'ON'#9'OC.ClientNo '#9#9'= PH.SupplierNo'
      ''
      'WHERE PL.LoadNo = :LoadNo'
      ''
      '')
    Left = 728
    Top = 544
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_FindAvrAVRAKNING_NO: TIntegerField
      FieldName = 'AVRAKNING_NO'
      Origin = 'AVRAKNING_NO'
      Required = True
    end
    object sq_FindAvrVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      Size = 80
    end
    object sq_FindAvrVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      Required = True
    end
  end
  object cds_LoadHead: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select *'
      'FROM dbo.Loads'
      'Where LoadNo = :LoadNo'
      '')
    Left = 584
    Top = 480
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadHeadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
    object cds_LoadHeadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      Origin = 'LoadedDate'
    end
    object cds_LoadHeadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
      Origin = 'SenderLoadStatus'
    end
    object cds_LoadHeadLoadID: TStringField
      FieldName = 'LoadID'
      Origin = 'LoadID'
      Size = 50
    end
    object cds_LoadHeadMsgToShipper: TMemoField
      FieldName = 'MsgToShipper'
      Origin = 'MsgToShipper'
      BlobType = ftMemo
    end
    object cds_LoadHeadInternalNote: TMemoField
      FieldName = 'InternalNote'
      Origin = 'InternalNote'
      BlobType = ftMemo
    end
    object cds_LoadHeadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
      Origin = 'PackageEntryOption'
    end
    object cds_LoadHeadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
      Origin = 'LocalShippingCompanyNo'
    end
    object cds_LoadHeadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
      Origin = 'LocalLoadingLocation'
    end
    object cds_LoadHeadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
      Origin = 'LocalDestinationNo'
    end
    object cds_LoadHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_LoadHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_LoadHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_LoadHeadFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object cds_LoadHeadOriginalSupplierNo: TIntegerField
      FieldName = 'OriginalSupplierNo'
      Origin = 'OriginalSupplierNo'
    end
    object cds_LoadHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cds_LoadHeadNotering: TMemoField
      FieldName = 'Notering'
      Origin = 'Notering'
      BlobType = ftMemo
    end
    object cds_LoadHeadLoadOK: TIntegerField
      FieldName = 'LoadOK'
      Origin = 'LoadOK'
    end
    object cds_LoadHeadLoadAR: TIntegerField
      FieldName = 'LoadAR'
      Origin = 'LoadAR'
    end
    object cds_LoadHeadShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object cds_LoadHeadPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object cds_LoadHeadLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
  end
  object cds_LoadRemAvr: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.LoadRemAvr'
      '')
    Left = 488
    Top = 480
    object cds_LoadRemAvrLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadRemAvrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_LoadRemAvrCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
  end
  object sq_LO_Type: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT distinct   ISNULL(SSP.ObjectType,-1) AS ObjectType,  OH.O' +
        'rderType'
      ''
      'FROM dbo.Loads L'
      
        '        Inner Join  dbo.LoadShippingPlan LS ON      LS.LoadNo = ' +
        'L.LoadNo'
      
        '        Inner Join dbo.SupplierShippingPlan SSP '#9'ON '#9'SSP.Shippin' +
        'gPlanNo = LS.ShippingPlanNo'
      ''
      ''
      'Left Outer Join dbo.CustomerShippingPlanHeader CSH '
      ' Inner Join dbo.Orders OH ON OH.OrderNo = CSH.OrderNo'
      'ON CSH.ShippingPlanNo = SSP.ShippingPlanNo'
      ''
      'WHERE'
      'L.LoadNo = :LoadNo'
      'AND L.CustomerNo = :CustomerNo'
      '')
    Left = 384
    Top = 424
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CUSTOMERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LO_TypeObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
      ReadOnly = True
      Required = True
    end
    object sq_LO_TypeOrderType: TIntegerField
      FieldName = 'OrderType'
      Origin = 'OrderType'
    end
  end
  object sq_LoadPackages: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct'
      'PN.LogicalInventoryPointNo , PN.PackageNo, PN.SupplierCode'
      ''
      'FROM       dbo.LoadDetail              LD'
      ''
      
        '         INNER JOIN dbo.PackageNumber  PN ON   PN.PackageNo = LD' +
        '.PackageNo'
      
        '                                        AND PN.SupplierCode = LD' +
        '.SupplierCode'
      ''
      'WHERE      LD.LoadNo = :LoadNo'
      '')
    Left = 384
    Top = 480
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LoadPackagesLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object sq_LoadPackagesPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object sq_LoadPackagesSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object sq_ChangeLOnrInPaymentLoad: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'UPDATE dbo.PaymentLoad'
      'SET ShippingPlanNo = :NewLO'
      'FROM dbo.PaymentLoad '
      'WHERE'
      'LoadNo = :LoadNo'
      'AND ShippingPlanNo = :OldLO'
      ''
      '')
    Left = 120
    Top = 528
    ParamData = <
      item
        Name = 'NEWLO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OLDLO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_DelConPkgLog: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.Confirmed_Package_Log'
      'Where Confirmed_LoadNo =:LoadNo'
      'AND Confirmed_ShippingPlanNo = :LO_No'
      '')
    Left = 120
    Top = 480
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LO_NO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetNewLIPno: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct'
      '(Select LIP2.LogicalInventoryPointNo'
      ' From dbo.PhysicalInventoryPoint PIP2'
      
        ' Inner Join dbo.LogicalInventoryPoint  LIP2 ON LIP2.PhysicalInve' +
        'ntoryPointNo = PIP2.PhysicalInventoryPointNo'
      ' WHERE'
      '  PIP2.OwnerNo = :New_OwnerNo'
      ' AND PIP2.PhyInvPointNameNo = PIP.PhyInvPointNameNo'
      
        ' AND LIP2.LogicalInventoryName = LIP.LogicalInventoryName) AS Ne' +
        'w_LogicalInventoryPointNo'
      ''
      'FROM dbo.LogicalInventoryPoint  LIP'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      ''
      
        'WHERE  LIP.LogicalInventoryPointNo = :Old_LogicalInventoryPointN' +
        'o'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 120
    Top = 432
    ParamData = <
      item
        Name = 'NEW_OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OLD_LOGICALINVENTORYPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetNewLIPnoNew_LogicalInventoryPointNo: TIntegerField
      FieldName = 'New_LogicalInventoryPointNo'
      Origin = 'New_LogicalInventoryPointNo'
      ReadOnly = True
    end
  end
  object cds_IntOrderHead: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * From '
      'dbo.InternalOrderHead'
      '')
    Left = 808
    Top = 216
    object cds_IntOrderHeadOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_IntOrderHeadShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      Required = True
    end
    object cds_IntOrderHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cds_IntOrderHeadDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
    end
    object cds_IntOrderHeadDefaultShipToInvPointNo: TIntegerField
      FieldName = 'DefaultShipToInvPointNo'
      Origin = 'DefaultShipToInvPointNo'
    end
    object cds_IntOrderHeadStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_IntOrderHeadOrderNoText: TStringField
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
      FixedChar = True
      Size = 40
    end
    object cds_IntOrderHeadDefaultDeliveryTermsNo: TIntegerField
      FieldName = 'DefaultDeliveryTermsNo'
      Origin = 'DefaultDeliveryTermsNo'
    end
    object cds_IntOrderHeadDefaultPaymentTermsNo: TIntegerField
      FieldName = 'DefaultPaymentTermsNo'
      Origin = 'DefaultPaymentTermsNo'
    end
    object cds_IntOrderHeadDefaultCurrencyNo: TIntegerField
      FieldName = 'DefaultCurrencyNo'
      Origin = 'DefaultCurrencyNo'
    end
    object cds_IntOrderHeadOrderNote: TMemoField
      FieldName = 'OrderNote'
      Origin = 'OrderNote'
      BlobType = ftMemo
    end
    object cds_IntOrderHeadOrderType: TIntegerField
      FieldName = 'OrderType'
      Origin = 'OrderType'
    end
    object cds_IntOrderHeadProductDisplayFormat: TIntegerField
      FieldName = 'ProductDisplayFormat'
      Origin = 'ProductDisplayFormat'
    end
    object cds_IntOrderHeadDefaultVolumeUnitNo: TIntegerField
      FieldName = 'DefaultVolumeUnitNo'
      Origin = 'DefaultVolumeUnitNo'
    end
    object cds_IntOrderHeadVoyageNo: TIntegerField
      FieldName = 'VoyageNo'
      Origin = 'VoyageNo'
    end
    object cds_IntOrderHeadDefaultPriceUnitNo: TIntegerField
      FieldName = 'DefaultPriceUnitNo'
      Origin = 'DefaultPriceUnitNo'
    end
    object cds_IntOrderHeadDef_StartETDYearWeek: TIntegerField
      FieldName = 'Def_StartETDYearWeek'
      Origin = 'Def_StartETDYearWeek'
    end
    object cds_IntOrderHeadDef_StartETAYearWeek: TIntegerField
      FieldName = 'Def_StartETAYearWeek'
      Origin = 'Def_StartETAYearWeek'
    end
    object cds_IntOrderHeadSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_IntOrderHeadLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
      Origin = 'LengthFormat'
    end
    object cds_IntOrderHeadLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
    object cds_IntOrderHeadSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_IntOrderHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_IntOrderHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_IntOrderHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_IntOrderHeadLO_No: TIntegerField
      FieldName = 'LO_No'
      Origin = 'LO_No'
    end
    object cds_IntOrderHeadDefaultLIPNo: TIntegerField
      FieldName = 'DefaultLIPNo'
      Origin = 'DefaultLIPNo'
    end
    object cds_IntOrderHeadMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
    object cds_IntOrderHeadPriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
    end
    object cds_IntOrderHeadVatExempt: TIntegerField
      FieldName = 'VatExempt'
      Origin = 'VatExempt'
    end
    object cds_IntOrderHeadInternKundFrakt: TFloatField
      FieldName = 'InternKundFrakt'
      Origin = 'InternKundFrakt'
    end
    object cds_IntOrderHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cds_IntOrderHeadDef_LoadingLocationNo: TIntegerField
      FieldName = 'Def_LoadingLocationNo'
      Origin = 'Def_LoadingLocationNo'
    end
    object cds_IntOrderHeadAutoPkgCode: TIntegerField
      FieldName = 'AutoPkgCode'
      Origin = 'AutoPkgCode'
    end
    object cds_IntOrderHeadMiniText: TStringField
      FieldName = 'MiniText'
      Origin = 'MiniText'
      Size = 255
    end
    object cds_IntOrderHeadMiniTextFS: TIntegerField
      FieldName = 'MiniTextFS'
      Origin = 'MiniTextFS'
    end
    object cds_IntOrderHeadMiniTextLO: TIntegerField
      FieldName = 'MiniTextLO'
      Origin = 'MiniTextLO'
    end
    object cds_IntOrderHeadPeriod: TIntegerField
      FieldName = 'Period'
      Origin = 'Period'
    end
    object cds_IntOrderHeadObjecttype: TIntegerField
      FieldName = 'Objecttype'
      Origin = 'Objecttype'
    end
    object cds_IntOrderHeadOrderNoExt: TIntegerField
      FieldName = 'OrderNoExt'
      Origin = 'OrderNoExt'
    end
    object cds_IntOrderHeadCustomerNoExt: TIntegerField
      FieldName = 'CustomerNoExt'
      Origin = 'CustomerNoExt'
    end
  end
  object sq_NoOfLoads_LO: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT  count(distinct Ld.LoadNo)AS NoOfLoads'
      ''
      'FROM dbo.LoadShippingPlan LS'
      
        '        Inner Join dbo.Loads L                          ON      ' +
        'L.LoadNo = LS.LoadNo'
      'Inner join dbo.LoadDetail LD ON LD.LoadNo = LS.LoadNo'
      'AND LD.ShippingPlanNo = LS.ShippingPlanNo'
      ''
      'Inner Join dbo.LoadDetailPkgLength LDP ON LDP.LoadNo = LD.LoadNo'
      #9'AND LDP.LoadDetailNo = LD.LoadDetailNo'
      ''
      
        '        Inner Join dbo.SupplierShippingPlan SSP '#9'ON '#9'SSP.Shippin' +
        'gPlanNo = LS.ShippingPlanNo'
      'AND SSP.SupplierShipPlanObjectNo = LDP.SupplierShipPlanObjectNo'
      '        '#9#9#9#9#9#9'AND '#9'SSP.SupplierNo = L.SupplierNo'
      
        '                                                        AND SSP.' +
        'LoadingLocationNo = LS.LoadingLocationNo'
      
        '                                                        AND SSP.' +
        'ShipToInvPointNo = LS.ShipToInvPointNo'
      ''
      'Where LS.ShippingPlanNo = :ShippingPlanNo'
      '')
    Left = 384
    Top = 536
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_NoOfLoads_LONoOfLoads: TIntegerField
      FieldName = 'NoOfLoads'
    end
  end
  object cds_LoadDetailMatch: TFDQuery
    IndexName = 'cds_LoadDetailMatchIndex1'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select *'
      'FROM dbo.LoadDetailMatch'
      'Where'
      'LoadNo = :LoadNo'
      '')
    Left = 696
    Top = 216
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadDetailMatchLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadDetailMatchLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadDetailMatchSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadDetailMatchPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object cds_LoadDetailMatchSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object cds_LoadDetailMatchCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cds_LoadDetail: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.LoadDetail'
      'WHERE '
      'LoadNo = :LoadNo'
      '')
    Left = 600
    Top = 216
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadDetailLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadDetailLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadDetailShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object cds_LoadDetailPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object cds_LoadDetailNoOfPackages: TIntegerField
      FieldName = 'NoOfPackages'
      Origin = 'NoOfPackages'
    end
    object cds_LoadDetailPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cds_LoadDetailSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      FixedChar = True
      Size = 3
    end
    object cds_LoadDetailPackageOK: TIntegerField
      FieldName = 'PackageOK'
      Origin = 'PackageOK'
    end
    object cds_LoadDetailProblemPackageLog: TStringField
      FieldName = 'ProblemPackageLog'
      Origin = 'ProblemPackageLog'
      Size = 50
    end
    object cds_LoadDetailCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_LoadDetailModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_LoadDetailDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_LoadDetailDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      Origin = 'DefaultCustShipObjectNo'
    end
    object cds_LoadDetailOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
      Origin = 'OverrideMatch'
    end
    object cds_LoadDetailLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_LoadDetailDefsspno: TIntegerField
      FieldName = 'Defsspno'
      Origin = 'Defsspno'
    end
    object cds_LoadDetailOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
      Origin = 'OverrideRL'
    end
    object cds_LoadDetailOldPackageTypeNo: TIntegerField
      FieldName = 'OldPackageTypeNo'
      Origin = 'OldPackageTypeNo'
    end
    object cds_LoadDetailCustomPcs: TIntegerField
      FieldName = 'CustomPcs'
      Origin = 'CustomPcs'
    end
  end
  object cds_LS: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from'
      'dbo.LoadShippingPlan'
      'Where LoadNo = :LoadNo'
      '')
    Left = 528
    Top = 216
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LSLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LSShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LSConfirmedByReciever: TIntegerField
      FieldName = 'ConfirmedByReciever'
      Origin = 'ConfirmedByReciever'
    end
    object cds_LSConfirmedBySupplier: TIntegerField
      FieldName = 'ConfirmedBySupplier'
      Origin = 'ConfirmedBySupplier'
    end
    object cds_LSCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_LSModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_LSDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_LSInvoiced: TIntegerField
      FieldName = 'Invoiced'
      Origin = 'Invoiced'
    end
    object cds_LSLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
    end
    object cds_LSShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
    end
  end
  object cdsPaymentLoadList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      'PL.PaymentNo'#9#9#9#9'AS'#9'AVRAKNING_NO,'
      'US.INITIALS,'
      ''
      'L.LoadNo'#9#9#9#9'AS'#9'VIS_FS,'
      'L.FS'#9#9#9#9#9'AS '#9'MILL_FS,'
      'L.LoadedDate'#9#9#9#9'AS'#9'LOAD_DATE,'
      'OC.ClientName'#9#9#9#9'AS'#9'CUSTOMER,'
      'PL.ACT_Thick'#9#9#9#9'AS'#9'AKT_THICK,'
      'PL.ACT_Width'#9#9#9#9'AS'#9'AKT_WIDTH,'
      'SUM(PL.Totalm3Actual)'#9#9#9'AS'#9'ACT_M3,'
      'SUM(PL.TotalLinealMeterNominalLength)'#9'AS'#9'NOM_LPM,'
      'PL.NOM_Thick'#9#9#9#9'AS'#9'NOM_THICK,'
      'PL.NOM_Width'#9#9#9#9'AS'#9'NOM_WIDTH,'
      'SUM(PL.Totalm3Nominal)'#9#9#9'AS'#9'NOM_M3,'
      'PL.Price'#9#9#9#9'AS '#9'PRICE,'
      'SUM(PL.Totalm3Nominal * PL.Price)'#9'AS'#9'VALUE,'
      'CASE'
      'WHEN PH.TypeOf = 0 THEN SUM(PL.Totalm3Nominal * PL.Price) * 0.25'
      'WHEN PH.TypeOf = 3 THEN SUM(PL.Totalm3Nominal * PL.Price) * 0.25'
      ''
      'ELSE'
      ' 0'
      'END AS MOMS_VALUE,'
      ''
      'Mill.ClientCode                         AS      SUPPCODE,'
      'Cust.ClientCode                         AS      CUSTOMER,'
      'Cust.ClientNo                           AS      CUSTOMERNO,'
      'A.CountryNo,'
      'PL.GradeName'#9#9#9'AS GRADENAME,'
      'PH.Mill_InvoiceNo'#9#9'AS MILL_INVOICE_NO'
      ''
      ''
      'FROM  PaymentHead PH'
      'INNER JOIN PaymentLoad PL'#9#9#9'ON'#9'PL.PaymentNo'#9#9'= PH.PaymentNo'
      'INNER JOIN dbo.Loads L'#9#9#9#9'ON'#9'L.LoadNo'#9#9'= PL.LoadNo'
      ''
      'INNER JOIN dbo.LoadShippingPlan LS'#9#9'ON'#9'LS.LoadNo'#9#9'= PL.LoadNo'
      '--'#9#9#9#9#9#9'AND '#9'LS.ShippingPlanNo'#9'= PL.ShippingPlanNo'
      ''
      'LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CSH'
      ' INNER JOIN dbo.Orders O'#9#9#9#9'ON'#9'O.OrderNo'#9#9'= CSH.OrderNo'
      ' INNER JOIN dbo.Client OC'#9#9#9#9'ON'#9'OC.ClientNo '#9#9'= O.CustomerNo'
      
        ' LEFT OUTER JOIN dbo.ClientPreference CP'#9#9'ON'#9'CP.ClientNo'#9#9'= O.Cu' +
        'stomerNo'
      '  '#9#9#9#9#9#9#9'AND '#9'CP.RoleType'#9#9'= 1'
      
        ' LEFT OUTER JOIN dbo.Address'#9'A'#9#9#9'ON'#9'A.AddressNo = CP.DefaultBill' +
        'ingAddressNo'
      'ON'#9'CSH.ShippingPlanNo'#9'= LS.ShippingPlanNo'
      ''
      ''
      ''
      ''
      ''
      ''
      'INNER JOIN dbo.Client Mill'#9#9#9'ON'#9'Mill.ClientNo '#9#9'= L.SupplierNo'
      'INNER JOIN dbo.Client Cust'#9#9#9'ON'#9'Cust.ClientNo '#9#9'= L.CustomerNo'
      ''
      'Left Outer Join dbo.Users'#9'US'#9'ON'#9'US.UserID = PH.CreatedUser'
      ''
      ''
      'WHERE PH.PaymentNo = :PaymentNo'
      ''
      ''
      'GROUP BY'
      'US.INITIALS,'
      'L.LoadNo'#9#9#9#9','
      'L.FS'#9#9#9#9#9','
      'L.LoadedDate'#9#9#9#9','
      'OC.ClientName'#9#9#9#9','
      'PL.ACT_Thick'#9#9#9#9','
      'PL.ACT_Width'#9#9#9#9','
      'PL.NOM_Thick'#9#9#9#9','
      'PL.NOM_Width'#9#9#9#9','
      'PL.Price'#9#9#9#9','
      ''
      'Mill.ClientCode                         ,'
      'Cust.ClientCode                         ,'
      'Cust.ClientNo                           ,'
      'A.CountryNo'#9#9#9#9','
      'PL.PaymentNo'#9#9#9#9','
      'PH.TypeOf'#9#9#9#9','
      'PL.GradeName'#9#9#9#9','
      'PH.Mill_InvoiceNo'
      ''
      ''
      '')
    Left = 168
    Top = 216
    ParamData = <
      item
        Name = 'PAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsPaymentLoadListAVRAKNING_NO: TIntegerField
      FieldName = 'AVRAKNING_NO'
      Origin = 'AVRAKNING_NO'
      Required = True
    end
    object cdsPaymentLoadListINITIALS: TStringField
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      FixedChar = True
      Size = 3
    end
    object cdsPaymentLoadListVIS_FS: TIntegerField
      FieldName = 'VIS_FS'
      Origin = 'VIS_FS'
      Required = True
    end
    object cdsPaymentLoadListMILL_FS: TStringField
      FieldName = 'MILL_FS'
      Origin = 'MILL_FS'
      FixedChar = True
    end
    object cdsPaymentLoadListLOAD_DATE: TSQLTimeStampField
      FieldName = 'LOAD_DATE'
      Origin = 'LOAD_DATE'
    end
    object cdsPaymentLoadListCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 80
    end
    object cdsPaymentLoadListAKT_THICK: TFloatField
      FieldName = 'AKT_THICK'
      Origin = 'AKT_THICK'
      Required = True
    end
    object cdsPaymentLoadListAKT_WIDTH: TFloatField
      FieldName = 'AKT_WIDTH'
      Origin = 'AKT_WIDTH'
      Required = True
    end
    object cdsPaymentLoadListACT_M3: TFloatField
      FieldName = 'ACT_M3'
      Origin = 'ACT_M3'
      ReadOnly = True
    end
    object cdsPaymentLoadListNOM_LPM: TFloatField
      FieldName = 'NOM_LPM'
      Origin = 'NOM_LPM'
      ReadOnly = True
    end
    object cdsPaymentLoadListNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
      Origin = 'NOM_THICK'
      Required = True
    end
    object cdsPaymentLoadListNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
      Origin = 'NOM_WIDTH'
      Required = True
    end
    object cdsPaymentLoadListNOM_M3: TFloatField
      FieldName = 'NOM_M3'
      Origin = 'NOM_M3'
      ReadOnly = True
    end
    object cdsPaymentLoadListPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      Required = True
    end
    object cdsPaymentLoadListVALUE: TFloatField
      FieldName = 'VALUE'
      Origin = '[VALUE]'
      ReadOnly = True
    end
    object cdsPaymentLoadListMOMS_VALUE: TFloatField
      FieldName = 'MOMS_VALUE'
      Origin = 'MOMS_VALUE'
      ReadOnly = True
    end
    object cdsPaymentLoadListSUPPCODE: TStringField
      FieldName = 'SUPPCODE'
      Origin = 'SUPPCODE'
      FixedChar = True
      Size = 3
    end
    object cdsPaymentLoadListCUSTOMER_1: TStringField
      FieldName = 'CUSTOMER_1'
      Origin = 'CUSTOMER'
      FixedChar = True
      Size = 3
    end
    object cdsPaymentLoadListCUSTOMERNO: TIntegerField
      FieldName = 'CUSTOMERNO'
      Origin = 'CUSTOMERNO'
      Required = True
    end
    object cdsPaymentLoadListCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object cdsPaymentLoadListGRADENAME: TStringField
      FieldName = 'GRADENAME'
      Origin = 'GRADENAME'
      Required = True
      Size = 50
    end
    object cdsPaymentLoadListMILL_INVOICE_NO: TStringField
      FieldName = 'MILL_INVOICE_NO'
      Origin = 'MILL_INVOICE_NO'
      Size = 50
    end
  end
  object cdsPaymentHead: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT * FROM PAYMENTHEAD'
      'WHERE SupplierNo = :SupplierNo'
      'AND SenderStatus = :SenderStatus'
      '')
    Left = 48
    Top = 224
    ParamData = <
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SENDERSTATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsPaymentHeadCustName: TStringField
      FieldKind = fkLookup
      FieldName = 'CustName'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'CustomerNo'
      Size = 80
      Lookup = True
    end
    object cdsPaymentHeadPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
      Origin = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentHeadSenderStatus: TSmallintField
      FieldName = 'SenderStatus'
      Origin = 'SenderStatus'
    end
    object cdsPaymentHeadReceiverStatus: TSmallintField
      FieldName = 'ReceiverStatus'
      Origin = 'ReceiverStatus'
    end
    object cdsPaymentHeadCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsPaymentHeadModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsPaymentHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsPaymentHeadTypeOf: TSmallintField
      FieldName = 'TypeOf'
      Origin = 'TypeOf'
    end
    object cdsPaymentHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cdsPaymentHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cdsPaymentHeadMILL_InvoiceNo: TStringField
      FieldName = 'MILL_InvoiceNo'
      Origin = 'MILL_InvoiceNo'
      Size = 50
    end
  end
  object cdsConfirmed_Load: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select * '
      'from Confirmed_Load'
      '')
    Left = 784
    Top = 48
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
  object cds_ConfLoad: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.Confirmed_Load'
      'SET Confirmed_ShippingPlanNo = :LO_No'
      'Where '
      'Confirmed_LoadNo = :LoadNo'
      '')
    Left = 456
    Top = 48
    ParamData = <
      item
        Name = 'LO_NO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cdsPayHead: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT * FROM PAYMENTHEAD'
      'WHERE PaymentNo = :PaymentNo'
      '')
    Left = 376
    Top = 48
    ParamData = <
      item
        Name = 'PAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsPayHeadPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
      Origin = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPayHeadSenderStatus: TSmallintField
      FieldName = 'SenderStatus'
      Origin = 'SenderStatus'
    end
    object cdsPayHeadReceiverStatus: TSmallintField
      FieldName = 'ReceiverStatus'
      Origin = 'ReceiverStatus'
    end
    object cdsPayHeadCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsPayHeadModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsPayHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsPayHeadTypeOf: TSmallintField
      FieldName = 'TypeOf'
      Origin = 'TypeOf'
    end
    object cdsPayHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cdsPayHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cdsPayHeadMILL_InvoiceNo: TStringField
      FieldName = 'MILL_InvoiceNo'
      Origin = 'MILL_InvoiceNo'
      Size = 50
    end
  end
  object cdsPaymentLoads: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT * FROM PaymentLoad'
      '')
    Left = 280
    Top = 48
    object cdsPaymentLoadsPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
      Origin = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentLoadsLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentLoadsTypeOf: TSmallintField
      FieldName = 'TypeOf'
      Origin = 'TypeOf'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentLoadsShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentLoadsCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsPaymentLoadsModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsPaymentLoadsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsPaymentLoadsPrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentLoadsTotalm3Nominal: TFloatField
      FieldName = 'Totalm3Nominal'
      Origin = 'Totalm3Nominal'
    end
    object cdsPaymentLoadsTotalm3Actual: TFloatField
      FieldName = 'Totalm3Actual'
      Origin = 'Totalm3Actual'
    end
    object cdsPaymentLoadsTotalLinealMeterNominalLength: TFloatField
      FieldName = 'TotalLinealMeterNominalLength'
      Origin = 'TotalLinealMeterNominalLength'
    end
    object cdsPaymentLoadsACT_Thick: TFloatField
      FieldName = 'ACT_Thick'
      Origin = 'ACT_Thick'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentLoadsACT_Width: TFloatField
      FieldName = 'ACT_Width'
      Origin = 'ACT_Width'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentLoadsNOM_Thick: TFloatField
      FieldName = 'NOM_Thick'
      Origin = 'NOM_Thick'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentLoadsNOM_Width: TFloatField
      FieldName = 'NOM_Width'
      Origin = 'NOM_Width'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentLoadsGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
  end
  object cdsArrivingPackages: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      'SSP.SupplierNo,'
      'SSP.CustomerPrice,'
      'LSP.ShippingPlanNo'#9#9'AS'#9'LO,'
      'LD.PackageNo'#9#9#9'AS'#9'PACKAGE_NO,'
      'LD.SUPPLIERCODE'#9#9#9'AS '#9'SUPPLIERCODE,'
      'P.Totalm3Actual'#9#9#9'AS '#9'M3_NET,'
      'P.Totalm3Nominal'#9#9'AS '#9'M3_NOM,'
      'PR.ProductDisplayName'#9#9'AS'#9'PRODUCT_DESCRIPTION,'
      'P.TotalNoOfPieces'#9#9'AS'#9'PCS,'
      'LD.PACKAGEOK'#9#9#9'AS'#9'PACKAGEOK,'
      'LD.ProblemPackageLog'#9#9'AS'#9'PACKAGE_LOG,'
      'LSP.LoadNo                      AS      LOADNO,'
      'LD.LoadDetailNo                 AS      LOAD_DETAILNO,'
      'CASE'
      'WHEN :Lista = 1 THEN P.Totalm3Nominal * SSP.CustomerPrice'
      'ELSE'
      'P.Totalm3Nominal * IP.Price'
      'END AS VALUE,'
      ''
      'CASE'
      'WHEN :Lista = 1 THEN SSP.CustomerPrice'
      'ELSE IP.Price                        '
      'END AS      PRICE,'
      'P.m3Net                    AS      NOM_LINEAL_METER,'
      'OC.ClientName'#9#9#9#9'AS'#9'END_CUSTOMER'
      ''
      ''
      'FROM dbo.LoadShippingPlan LSP'
      'INNER JOIN dbo.Loads L'#9#9#9'ON '#9'L.LoadNo = LSP.LoadNo'
      ''
      'INNER JOIN dbo.Loaddetail LD'#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'and LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'INNER JOIN '#9'dbo.LoadDetailPkgLength'#9'LPL ON '#9'LPL.LoadNo = LD.Load' +
        'No'
      #9#9#9#9#9#9'and LPL.LoadDetailNo = LD.LoadDetailNo'
      ''
      
        'INNER JOIN dbo.SupplierShippingPlan SSP ON SSP.SupplierShipPlanO' +
        'bjectNo = LPL.SupplierShipPlanObjectNo'
      ''
      
        'INNER JOIN dbo.PackageType P'#9#9'ON '#9'P.PackageTypeNo = LD.PackageTy' +
        'peNo'
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = P.ProductNo'
      
        'LEFT OUTER JOIN dbo.InteralPrice'#9'IP'#9'ON '#9'IP.InteralPriceGroupNo  ' +
        '= PR.InteralPriceGroupNo'
      #9#9#9#9#9'AND'#9'IP.SawMillNo'#9'= L.SupplierNo'
      ''
      'LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CSH'
      ''
      ' INNER JOIN dbo.Client OC'#9#9#9#9'ON'#9'OC.ClientNo '#9#9'= CSH.CustomerNo'
      ''
      'ON'#9'CSH.ShippingPlanNo'#9'= LSP.ShippingPlanNo'
      ''
      ''
      'WHERE'
      'LSP.LoadNo = :LoadNo'
      ''
      'GROUP BY'
      'LSP.ShippingPlanNo'#9#9','
      'LD.PackageNo'#9#9#9','
      'LD.SUPPLIERCODE'#9#9#9','
      'P.Totalm3Actual'#9#9#9','
      'P.Totalm3Nominal'#9#9','
      'PR.ProductDisplayName'#9#9','
      'P.TotalNoOfPieces'#9#9','
      'LD.PACKAGEOK'#9#9#9','
      'LD.ProblemPackageLog'#9#9','
      'LSP.LoadNo                      ,'
      'LD.LoadDetailNo                 ,'
      'IP.Price                        ,'
      'P.m3Net                         ,'
      'OC.ClientName, SSP.CustomerPrice, SSP.SupplierNo'
      ''
      '')
    Left = 168
    Top = 48
    ParamData = <
      item
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsArrivingPackagesLO: TIntegerField
      FieldName = 'LO'
    end
    object cdsArrivingPackagesPACKAGE_NO: TIntegerField
      FieldName = 'PACKAGE_NO'
    end
    object cdsArrivingPackagesSUPPLIERCODE: TStringField
      FieldName = 'SUPPLIERCODE'
      Size = 5
    end
    object cdsArrivingPackagesM3_NET: TFloatField
      FieldName = 'M3_NET'
      DisplayFormat = '#.000'
    end
    object cdsArrivingPackagesPRODUCT_DESCRIPTION: TStringField
      FieldName = 'PRODUCT_DESCRIPTION'
      Size = 100
    end
    object cdsArrivingPackagesPCS: TIntegerField
      FieldName = 'PCS'
    end
    object cdsArrivingPackagesPACKAGEOK: TSmallintField
      FieldName = 'PACKAGEOK'
    end
    object cdsArrivingPackagesPACKAGE_LOG: TStringField
      FieldName = 'PACKAGE_LOG'
      Size = 50
    end
    object cdsArrivingPackagesLOADNO: TIntegerField
      FieldName = 'LOADNO'
    end
    object cdsArrivingPackagesM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      DisplayFormat = '#.000'
    end
    object cdsArrivingPackagesLOAD_DETAILNO: TIntegerField
      FieldName = 'LOAD_DETAILNO'
    end
    object cdsArrivingPackagesVALUE: TFloatField
      FieldName = 'VALUE'
      DisplayFormat = '#.00'
    end
    object cdsArrivingPackagesPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object cdsArrivingPackagesNOM_LINEAL_METER: TFloatField
      FieldName = 'NOM_LINEAL_METER'
    end
    object cdsArrivingPackagesEND_CUSTOMER: TStringField
      FieldName = 'END_CUSTOMER'
      Size = 80
    end
  end
  object cdsArrivingLoads: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      'isNull(SSP.ShipToInvPointNo,-1)'#9#9'AS'#9'INVPOINTNO,'
      'isNull(IName.CityName, '#39#39')'#9#9'AS'#9'INVPOINTNAME,'
      'US.INITIALS,'
      'L.LoadNo'#9#9#9#9'AS'#9'VIS_FS,'
      'L.FS'#9#9#9#9'        AS'#9'MILL_FS,'
      'L.LoadedDate'#9#9#9#9'AS'#9'LOAD_DATE,'
      'Mill.ClientCode                         AS      SUPPCODE,'
      'Cust.ClientCode                         AS      INT_CUSTOMER,'
      'Cust.ClientNo                         AS      CUSTOMERNO,'
      'Mill.ClientNo                      AS       SUPPLIER_NO,'
      
        'IsNull(CP.VAT_OnInvoice,0)                        AS      SKATTE' +
        '_UPPLAG'
      'FROM '
      ' dbo.Client_LoadingLocation     CLL '#9
      
        'inner JOIN dbo.City IName'#9#9#9'ON'#9'CLL.PhyInvPointNameNo = IName.Cit' +
        'yNo'
      
        'INNER JOIN dbo.SupplierShippingPlan       SSP   '#9'ON'#9'CLL.PhyInvPo' +
        'intNameNo = SSP.ShipToInvPointNo'
      ''
      
        'INNER JOIN dbo.LoadShippingPlan LSP '#9#9'ON '#9'LSP.ShippingPlanNo = S' +
        'SP.ShippingPlanNo'
      'INNER JOIN dbo.Loads L '#9#9#9#9'ON'#9'LSP.LoadNo '#9#9'= L.LoadNo'
      #9#9#9#9#9#9'AND     L.supplierno '#9#9'= SSP.SUPPLIERno'
      #9#9#9#9#9#9'AND     L.CustomerNo '#9#9'= SSP.CustomerNo'
      ''
      ''
      '--dbo.Loads L '
      'INNER JOIN dbo.Client Mill'#9#9#9'ON'#9'Mill.ClientNo '#9#9'= L.SupplierNo'
      'INNER JOIN dbo.Client Cust'#9#9#9'ON'#9'Cust.ClientNo '#9#9'= L.CustomerNo'
      'INNER JOIN dbo.LoadShippingPlan LS'#9#9#9'ON'#9'LS.LoadNo'#9#9'= L.LoadNo'
      
        '--INNER JOIN dbo.SupplierShippingPlan SSP'#9#9'ON '#9'SSP.ShippingPlanN' +
        'o'#9'= LS.ShippingPlanNo'
      'LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CSH'
      ' INNER JOIN dbo.Orders O'#9#9#9#9'ON'#9'O.OrderNo'#9#9'= CSH.OrderNo'
      
        ' LEFT OUTER JOIN dbo.ClientPreference CP'#9#9'ON'#9'CP.ClientNo'#9#9'= O.Cu' +
        'stomerNo'
      
        ' LEFT OUTER JOIN dbo.Address'#9'A'#9#9#9'ON'#9'A.AddressNo = CSH.ClientBill' +
        'ingAddressNo'
      'ON'#9'CSH.ShippingPlanNo'#9'= SSP.ShippingPlanNo'
      'Inner Join dbo.Confirmed_Load   CL'
      'Left Outer join dbo.Users'#9'US'#9'ON'#9'US.UserID = cl.CreatedUser'
      'ON CL.Confirmed_LoadNo = L.LoadNo'
      'Inner Join ClientRole CR ON CR.ClientNo = L.CustomerNo'
      'AND CR.RoleType = 9'
      'WHERE'
      '--L.SupplierNo = 232'
      'CLL.ClientNo = 76'
      'AND l.SupplierNo <> l.CustomerNo'
      'AND ( CP.VAT_OnInvoice = 0 and A.CountryNo = 9  )'
      'AND'
      'L.LoadNo'
      'NOT IN (SELECT PL.LoadNo'
      'FROM PaymentLoad PL, PaymentHead PH'
      'WHERE'
      'PH.PaymentNo = PL.PaymentNo'
      'AND PH.SupplierNo = 76)'
      ''
      'UNION'
      ''
      'SELECT DISTINCT'
      'isNull(SSP.ShipToInvPointNo,-1)'#9#9'AS'#9'INVPOINTNO,'
      'isNull(IName.CityName, '#39#39')'#9#9'AS'#9'INVPOINTNAME,'
      'US.INITIALS,'
      'L.LoadNo'#9#9#9#9'AS'#9'VIS_FS,'
      'L.FS'#9#9#9#9'        AS'#9'MILL_FS,'
      'L.LoadedDate'#9#9#9#9'AS'#9'LOAD_DATE,'
      'Mill.ClientCode                         AS      SUPPCODE,'
      'Cust.ClientCode                         AS      INT_CUSTOMER,'
      'Cust.ClientNo                         AS      CUSTOMERNO,'
      'Mill.ClientNo                      AS       SUPPLIER_NO,'
      
        'IsNull(CP.VAT_OnInvoice,0)                        AS      SKATTE' +
        '_UPPLAG'
      'FROM '
      ' dbo.Client_LoadingLocation     CLL '#9
      
        'inner JOIN dbo.City IName'#9#9#9'ON'#9'CLL.PhyInvPointNameNo = IName.Cit' +
        'yNo'
      
        'INNER JOIN dbo.SupplierShippingPlan       SSP   '#9'ON'#9'CLL.PhyInvPo' +
        'intNameNo = SSP.ShipToInvPointNo'
      ''
      
        'INNER JOIN dbo.LoadShippingPlan LSP '#9#9'ON '#9'LSP.ShippingPlanNo = S' +
        'SP.ShippingPlanNo'
      'INNER JOIN dbo.Loads L '#9#9#9#9'ON'#9'LSP.LoadNo '#9#9'= L.LoadNo'
      #9#9#9#9#9#9'AND     L.supplierno '#9#9'= SSP.SUPPLIERno'
      #9#9#9#9#9#9'AND     L.CustomerNo '#9#9'= SSP.CustomerNo'
      ''
      '--dbo.Loads L '
      'INNER JOIN dbo.Client Mill'#9#9#9'ON'#9'Mill.ClientNo '#9#9'= L.SupplierNo'
      'INNER JOIN dbo.Client Cust'#9#9#9'ON'#9'Cust.ClientNo '#9#9'= L.CustomerNo'
      'INNER JOIN dbo.LoadShippingPlan LS'#9#9#9'ON'#9'LS.LoadNo'#9#9'= L.LoadNo'
      
        '--INNER JOIN dbo.SupplierShippingPlan SSP'#9#9'ON '#9'SSP.ShippingPlanN' +
        'o'#9'= LS.ShippingPlanNo'
      ''
      
        '--LEFT OUTER JOIN dbo.InternalOrderHead'#9'IOH'#9#9'ON'#9'IOH.ShippingPlan' +
        'No = SSP.ShippingPlanNo'
      ''
      'LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CSH'
      ' INNER JOIN dbo.Orders O'#9#9#9#9'ON'#9'O.OrderNo'#9#9'= CSH.OrderNo'
      
        ' LEFT OUTER JOIN dbo.ClientPreference CP'#9#9'ON'#9'CP.ClientNo'#9#9'= O.Cu' +
        'stomerNo'
      
        ' LEFT OUTER JOIN dbo.Address'#9'A'#9#9#9'ON'#9'A.AddressNo = CSH.ClientBill' +
        'ingAddressNo'
      'ON'#9'CSH.ShippingPlanNo'#9'= SSP.ShippingPlanNo'
      ''
      'Inner Join dbo.Confirmed_Load   CL'
      'Left Outer join dbo.Users'#9'US'#9'ON'#9'US.UserID = cl.CreatedUser'
      'ON CL.Confirmed_LoadNo = L.LoadNo'
      'Inner Join ClientRole CR ON CR.ClientNo = L.CustomerNo'
      'AND CR.RoleType = 9'
      'WHERE'
      'CLL.ClientNo = 76'
      ''
      'AND l.SupplierNo <> l.CustomerNo'
      
        'AND (  ( SSP.ObjectType = 1 AND ( CP.VAT_OnInvoice = 0 and A.Cou' +
        'ntryNo = 9  ))'
      'OR (SSP.ObjectType = 0))'
      'AND'
      'L.LoadNo'
      'NOT IN (SELECT PL.LoadNo'
      'FROM PaymentLoad PL, PaymentHead PH'
      'WHERE'
      'PH.PaymentNo = PL.PaymentNo'
      'AND PH.SupplierNo = 76)'
      ''
      ''
      '')
    Left = 56
    Top = 40
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
    object cdsArrivingLoadsINITIALS: TStringField
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object cdsArrivingLoadsVIS_FS: TIntegerField
      FieldName = 'VIS_FS'
      Origin = 'VIS_FS'
      ReadOnly = True
      Required = True
    end
    object cdsArrivingLoadsMILL_FS: TStringField
      FieldName = 'MILL_FS'
      Origin = 'MILL_FS'
      ReadOnly = True
      FixedChar = True
    end
    object cdsArrivingLoadsLOAD_DATE: TSQLTimeStampField
      FieldName = 'LOAD_DATE'
      Origin = 'LOAD_DATE'
      ReadOnly = True
    end
    object cdsArrivingLoadsSUPPCODE: TStringField
      FieldName = 'SUPPCODE'
      Origin = 'SUPPCODE'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object cdsArrivingLoadsINT_CUSTOMER: TStringField
      FieldName = 'INT_CUSTOMER'
      Origin = 'INT_CUSTOMER'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object cdsArrivingLoadsCUSTOMERNO: TIntegerField
      FieldName = 'CUSTOMERNO'
      Origin = 'CUSTOMERNO'
      ReadOnly = True
      Required = True
    end
    object cdsArrivingLoadsSUPPLIER_NO: TIntegerField
      FieldName = 'SUPPLIER_NO'
      Origin = 'SUPPLIER_NO'
      ReadOnly = True
      Required = True
    end
    object cdsArrivingLoadsSKATTE_UPPLAG: TIntegerField
      FieldName = 'SKATTE_UPPLAG'
      Origin = 'SKATTE_UPPLAG'
      ReadOnly = True
      Required = True
    end
  end
  object sq_SummaryLoadDetails: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      ''
      'PG.ActualThicknessMM'#9#9#9'AS'#9'AKT_THICK,'
      'PG.ActualWidthMM'#9#9#9'AS'#9'AKT_WIDTH,'
      'SUM(PTD.m3Actual)'#9#9#9'AS'#9'ACT_M3,'
      'SUM(PTD.LinealMeterNominalLength)'#9'AS'#9'NOM_LPM,'
      'PG.NominalThicknessMM'#9#9#9'AS'#9'NOM_THICK,'
      'PG.NominalWidthMM'#9#9#9'AS'#9'NOM_WIDTH,'
      'SUM(PTD.m3Nominal)'#9#9#9'AS'#9'NOM_M3,'
      'L.LoadNo'#9#9#9#9'AS'#9'LOADNO,'
      'ip.PRICE,'
      'LD.ShippingPlanNo'#9#9#9'AS'#9'LO,'
      'Gr.GradeName                            AS      GRADENAME'
      ''
      'FROM dbo.Loads L'
      ''
      'INNER JOIN dbo.LoadShippingPlan LSP'#9'ON LSP.LoadNo = L.LoadNo'
      'INNER JOIN dbo.LoadDetail LD'#9#9'ON LD.LoadNo = LSP.LoadNo'
      
        '                                        and LD.ShippingPlanNo = ' +
        'LSP.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.LoadDetailPkgLength  LPL ON '#9'LPL.LoadNo = LD.Load' +
        'No'
      #9#9#9#9#9#9'and LPL.LoadDetailNo = LD.LoadDetailNo'
      ''
      
        'INNER JOIN dbo.SupplierShippingPlan SSP ON SSP.SupplierShipPlanO' +
        'bjectNo = LPL.SupplierShipPlanObjectNo'
      ''
      
        'Left Outer JOIN dbo.IntPrice IP ON IP.SupplierShipPlanObjectNo =' +
        ' SSP.SupplierShipPlanObjectNo'
      'AND IP.PaymentNo = :PaymentNo'
      ''
      
        'INNER JOIN dbo.PkgType_Invoice'#9'PTD'#9#9'ON '#9'PTD.PackageTypeNo'#9'= LD.P' +
        'ackageTypeNo'
      #9#9#9#9#9#9#9#9#9'AND PTD.ProductLengthNo  =  LPL.ProductLengthNo'
      #9#9#9#9#9#9#9#9#9'AND PTD.LoadNo  =  LPL.LoadNo'
      #9#9#9#9#9#9#9#9#9'AND PTD.LoadDetailNo  =  LPL.LoadDetailNo'
      ''
      
        'INNER JOIN dbo.PackageType '#9#9'PT'#9#9'ON '#9'PT.PackageTypeNo'#9'= PTD.Pack' +
        'ageTypeNo'
      #9#9#9#9#9#9#9#9
      'INNER JOIN dbo.Product'#9#9#9'PR'#9#9'ON'#9'PR.ProductNo'#9#9'= PT.ProductNo'
      
        'INNER JOIN dbo.Grade                    Gr              ON      ' +
        'Gr.GradeNo              = PR.GradeNo'
      
        '                                                                ' +
        '             AND '#9'Gr.LanguageCode'#9#9'= 1'
      
        'INNER JOIN dbo.ProductGroup PG'#9#9#9#9'ON'#9'PG.ProductGroupNo'#9'= PR.Prod' +
        'uctGroupNo'
      ''
      'WHERE'
      'L.LoadNo = :LoadNo'
      ''
      ''
      'GROUP BY'
      'PG.ActualThicknessMM'#9#9#9','
      'PG.ActualWidthMM'#9#9#9','
      'PG.NominalThicknessMM'#9#9#9','
      'PG.NominalWidthMM'#9#9#9','
      'L.LoadNo'#9#9#9#9','
      'IP.Price                                ,'
      'LD.ShippingPlanNo                       ,'
      'Gr.GradeName,'
      'SSP.SupplierNo'
      ''
      ''
      '')
    Left = 728
    Top = 432
    ParamData = <
      item
        Name = 'PAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_SummaryLoadDetailsAKT_THICK: TFloatField
      FieldName = 'AKT_THICK'
    end
    object sq_SummaryLoadDetailsAKT_WIDTH: TFloatField
      FieldName = 'AKT_WIDTH'
    end
    object sq_SummaryLoadDetailsACT_M3: TFloatField
      FieldName = 'ACT_M3'
    end
    object sq_SummaryLoadDetailsNOM_LPM: TFloatField
      FieldName = 'NOM_LPM'
    end
    object sq_SummaryLoadDetailsNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
    end
    object sq_SummaryLoadDetailsNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
    end
    object sq_SummaryLoadDetailsNOM_M3: TFloatField
      FieldName = 'NOM_M3'
    end
    object sq_SummaryLoadDetailsLOADNO: TIntegerField
      FieldName = 'LOADNO'
    end
    object sq_SummaryLoadDetailsPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object sq_SummaryLoadDetailsLO: TIntegerField
      FieldName = 'LO'
    end
    object sq_SummaryLoadDetailsGRADENAME: TStringField
      FieldName = 'GRADENAME'
      Size = 30
    end
  end
  object sq_SSP_Exist: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT Distinct SSP.SupplierShipPlanObjectNo'
      ''
      'FROM dbo.SupplierShippingPlan SSP'
      'WHERE'
      'SSP.ShippingPlanNo = :ShippingPlanNo'
      'AND SSP.SupplierNo = :SupplierNo'
      'AND SSP.CustomerNo = :CustomerNo'
      'AND SSP.ObjectType = :ObjectType'
      ''
      'AND SSP.LoadingLocationNo = :LoadingLocationNo'
      'AND SSP.ShipToInvPointNo = :ShipToInvPointNo'
      'AND SSP.ProductNo = :ProductNo'
      'AND SSP.ProductLengthNo = :ProductLengthNo'
      ''
      '')
    Left = 280
    Top = 424
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CUSTOMERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OBJECTTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADINGLOCATIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPTOINVPOINTNO'
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
      end>
    object sq_SSP_ExistSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_INS_PaymentLoad_ST: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'INSERT INTO PaymentLoad_ST (PaymentNo, LoadNo, ProductNo, Produc' +
        'tLengthNo, Price)'
      ''
      'SELECT DISTINCT'
      'PL.PaymentNo,'
      'PL.LoadNo,'
      'PT.PRODUCTNO,'
      'LPL.ProductLengthNo,'
      'IP.Price'
      ''
      'FROM dbo.PaymentLoad PL'
      ''
      'INNER JOIN dbo.LoadDetail LD'#9#9'ON LD.LoadNo = PL.LoadNo'
      
        '                                        and LD.ShippingPlanNo = ' +
        'PL.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.LoadDetailPkgLength  LPL ON '#9'LPL.LoadNo = LD.Load' +
        'No'
      #9#9#9#9#9#9'and LPL.LoadDetailNo = LD.LoadDetailNo'
      ''
      
        'INNER JOIN dbo.SupplierShippingPlan SSP ON SSP.SupplierShipPlanO' +
        'bjectNo = LPL.SupplierShipPlanObjectNo'
      ''
      
        'INNER JOIN dbo.PackageTypeDetail '#9#9'PTD'#9#9'ON '#9'PTD.PackageTypeNo'#9'= ' +
        'LD.PackageTypeNo'
      #9#9#9#9#9#9#9#9#9'AND PTD.ProductLengthNo  =  LPL.ProductLengthNo'
      ''
      
        'INNER JOIN dbo.PackageType '#9#9'PT'#9#9'ON '#9'PT.PackageTypeNo'#9'= PTD.Pack' +
        'ageTypeNo'
      ''
      'INNER JOIN dbo.Product'#9#9#9'PR'#9#9'ON'#9'PR.ProductNo'#9#9'= PT.ProductNo'
      ''
      
        'Left Outer JOIN dbo.IntPrice IP ON IP.SupplierShipPlanObjectNo =' +
        ' SSP.SupplierShipPlanObjectNo'
      'AND IP.PaymentNo = PL.PaymentNo'
      ''
      'WHERE'
      'PL.PaymentNo = :PaymentNo'
      ''
      ''
      ''
      '')
    Left = 288
    Top = 216
    ParamData = <
      item
        Name = 'PAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
