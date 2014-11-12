object dmcOrder: TdmcOrder
  OldCreateOrder = False
  Height = 599
  Width = 1034
  object dsrcLoadsForLO: TDataSource
    DataSet = cdsLoadsForLO
    Left = 264
    Top = 88
  end
  object dsrcBooking: TDataSource
    DataSet = cdsBooking
    Left = 144
    Top = 88
  end
  object ds_Producer: TDataSource
    DataSet = cds_Producer
    Left = 160
    Top = 360
  end
  object ds_RegPoint: TDataSource
    DataSet = cds_RegPoint
    Left = 248
    Top = 360
  end
  object ds_AOUserRP: TDataSource
    DataSet = cds_AOUserRP
    Left = 400
    Top = 360
  end
  object ds_RegPointUser: TDataSource
    DataSet = cds_RegPointUser
    Left = 496
    Top = 360
  end
  object ds_volunit: TDataSource
    DataSet = cds_volunit
    Left = 24
    Top = 361
  end
  object dsrcSawmillLoadOrders: TDataSource
    DataSet = cdsSawmillLoadOrders
    Left = 40
    Top = 88
  end
  object cdsSawmillLoadOrders: TFDQuery
    IndexFieldNames = 'SupplierShipPlanObjectNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct'
      
        'OL.OrderLineDescription                     AS KONTRAKTSBESKRIVN' +
        'ING,'
      'bk.ShippersShipDate,'
      'bk.PreliminaryRequestedPeriod               AS READYDATE,'
      'USR.INITIALS,'
      'SP.ShippingPlanStatus,'
      'SP.ShippingPlanNo                           AS LONumber,'
      'OL.PackageCode                              AS PKGCode,'
      'SP.ProductDescription                       AS Product,'
      'SP.LengthDescription                        AS Length,'
      'IsNull(SP.StartETDYearWeek,-1)              AS FromWeek,'
      'IsNull(SP.EndETDYearWeek,-1)                AS ToWeek,'
      'SP.NoOfUnits                                AS Volume,'
      'SP.SupplierShipPlanObjectNo,'
      'SP.ShowInGrid,'
      'Od.OrderNoText                              AS OrderNo,'
      'UN.VolumeUnitName                           AS UnitName,'
      'Cy.CityName                                 AS Destination,'
      'CL.ClientName                               AS ClientName,'
      'mr.MarketRegionName                         AS MARKNAD,'
      'CSD.Reference                               AS Reference,'
      'SP.SupplierNo                               AS Supplier,'
      'CH.CustomerNo                               AS CHCustomerNo,'
      'SP.CustomerNo                               AS SPCustomerNO,'
      'SP.CustomerPrice,'
      'SP.CustomerShowInGrid,'
      'SUPP.ClientName'#9#9#9#9'                      AS SUPP_NAME,'
      'CUST.ClientName'#9#9#9#9'                      AS LOCAL_CUST,'
      'SP.ObjectType,'
      'CASE WHEN OD.OrderType = 1 then 1'#9'ELSE 0'#9'END AS ORDERTYPE,'
      'ShipTo.CityName                             AS SHIPTO,'
      'Loading.CityName                            AS LOADING,'
      'IsNull(SP.Delivery_WeekNo,-1)               AS Delivery_WeekNo,'
      'CH.CustomerNo                               AS CSH_CustomerNo,'
      'SP.ShipToInvPointNo,'
      'SP.LoadingLocationNo,'
      ''
      'BC.BarCode,'
      'CH.Reference                                AS REFERENS,'
      'SP.DateCreated                              AS SKAPAD,'
      'pli.NT,'
      'pli.NB,'
      'pli.AT,'
      'pli.AB,'
      'pli.TT,'
      'pli.TB,'
      'pli.TS,'
      'pli.UT,'
      'pli.KV,'
      'pli.PK,'
      'SP.lengthtyp                                AS INTL'#196'NGD,'
      'SP.Reference                                AS RADREFERENS,'
      'SP.PkgCodePPNo,'
      'SP.VolumeUnitNo'
      'FROM   dbo.Client_LoadingLocation     CLL'
      
        'INNER JOIN dbo.SupplierShippingPlan       SP    ON  SP.LoadingLo' +
        'cationNo       = CLL.PhyInvPointNameNo'
      
        'INNER JOIN dbo.PRODLIST_II pli                  ON pli.ProductNo' +
        ' = sp.ProductNo'
      
        'Left Outer Join dbo.Users USR'#9#9#9'              ON USR.UserID = SP' +
        '.ModifiedUser'
      
        'LEFT OUTER JOIN dbo.OrderLine    OL             ON  OL.OrderNo =' +
        ' SP.OrderNo'
      'AND OL.OrderLineNo = SP.OrderLineNo'
      
        'INNER JOIN dbo.Client                     SUPP  ON  SUPP.ClientN' +
        'o            = SP.SupplierNo            -- LARS'
      
        'INNER JOIN dbo.Client                     CUST  ON  CUST.ClientN' +
        'o            = SP.CustomerNo            -- LARS'
      
        'LEFT OUTER JOIN dbo.CITY         Shipto         ON ShipTo.CityNo' +
        ' '#9'           = SP.ShipToInvPointNo'
      
        'LEFT OUTER JOIN dbo.CITY        Loading         ON Loading.CityN' +
        'o '#9'           = SP.LoadingLocationNo'
      
        'LEFT OUTER JOIN dbo.Orders                 Od   ON  SP.OrderNo  ' +
        '               = Od.OrderNo'
      
        'LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH   ON  SP.Shipp' +
        'ingPlanNo          = CH.ShippingPlanNo      -- LARS'
      
        'LEFT OUTER JOIN dbo.Client                     CL   ON  CH.Custo' +
        'merNo              = CL.ClientNo            -- LARS'
      
        'LEFT OUTER JOIN dbo.MarketRegion mr ON mr.MarketRegionNo = cl.Ma' +
        'rketRegionNo'
      
        'INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnit' +
        'No            = UN.VolumeUnit_No'
      
        'LEFT OUTER JOIN dbo.CustomerShippingPlanDetails CSD   ON  SP.Cus' +
        'tShipPlanDetailObjectNo = CSD.CustShipPlanDetailObjectNo      --' +
        ' LARS'
      'LEFT OUTER JOIN ShippingPlan_ShippingAddress ST'
      
        'INNER JOIN dbo.Address '#9#9'             ST_ADR     ON ST_ADR.Addre' +
        'ssNo'#9'     = ST.AddressNo'
      
        'INNER JOIN dbo.CITY                     CY         ON CY.CityNo ' +
        #9'           = ST_ADR.CityNo'
      
        'INNER JOIN dbo.Country'#9#9'               ST_AdrCtry'#9'ON ST_AdrCtry.' +
        'CountryNo  = ST_ADR.CountryNo'
      'ON'#9'ST.ShippingPlanNo'#9'   = CSD.ShippingPlanNo'
      'AND'#9'ST.Reference'#9#9'     = CSD.Reference'
      
        'Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.Shippin' +
        'gPlanNo'
      'Left Outer Join dbo.ProdInstru PIS'
      'Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID'
      'ON PIS.ProdInstruNo = SP.ProdInstructNo'
      ''
      'WHERE  CLL.ClientNo       =   232'
      'AND SP.ShippingPlanStatus <>  0'
      'AND SP.ObjectType         =   2'
      'AND OD.OrderType          =   0'
      'AND SP.ShippingPlanStatus <>  4'
      ''
      'UNION'
      ''
      'SELECT distinct'
      '-- NYTT'
      #39'NA'#39' AS KONTRAKTSBESKRIVNING,'
      'bk.ShippersShipDate,'
      'bk.PreliminaryRequestedPeriod AS READYDATE,'
      'USR.INITIALS,'
      'SP.ShippingPlanStatus,'
      'SP.ShippingPlanNo                           AS LONumber,'
      'SP.PackageCode                              AS PKGCode,'
      'SP.ProductDescription                       AS Product,'
      'SP.LengthDescription                        AS Length,'
      
        'IsNull(SP.StartETDYearWeek,-1)              AS FromWeek,        ' +
        ' -- Integer'
      
        'IsNull(SP.EndETDYearWeek,-1)                AS ToWeek,          ' +
        ' -- Integer'
      
        'SP.NoOfUnits                                AS Volume,          ' +
        ' -- Float'
      'SP.SupplierShipPlanObjectNo,                     -- Integer'
      'SP.ShowInGrid,                                   -- SmallInt'
      
        #39#39'                                          AS OrderNo,         ' +
        ' -- VarChar 20'
      
        'UN.VolumeUnitName                           AS UnitName,        ' +
        ' -- VarChar 10'
      
        #39#39'                                          AS Destination,     ' +
        ' -- VarChar 50'
      
        'CL.ClientName                               AS ClientName,      ' +
        ' -- LARS VarChar 80'
      'mr.MarketRegionName                         AS MARKNAD,'
      
        #39#39'                                          AS Reference,       ' +
        '-- LARS'
      
        'SP.SupplierNo                               AS Supplier,        ' +
        '-- Integer'
      ''
      
        'CH.CustomerNo                               AS CHCustomerNo,    ' +
        '-- Integer'
      
        'SP.CustomerNo                               AS SPCustomerNO,    ' +
        '-- Integer'
      'SP.CustomerPrice,                               -- Float'
      'SP.CustomerShowInGrid,                           -- SmallInt'
      'SUPP.ClientName'#9#9#9#9'                      AS SUPP_NAME,'
      'CUST.ClientName'#9#9#9#9'                      AS LOCAL_CUST,'
      'SP.ObjectType,                                  -- Integer'
      '0                                           AS ORDERTYPE,'
      
        'ShipTo.CityName                             AS SHIPTO,      -- V' +
        'arChar 50'
      'Loading.CityName                            AS LOADING,'
      'ISNULL(SP.Delivery_WeekNo,-1)               AS Delivery_WeekNo,'
      '-1                                          AS CSH_CustomerNo,'
      'SP.ShipToInvPointNo,'
      'SP.LoadingLocationNo,'
      ''
      'BC.BarCode,'
      'CH.Reference                                AS REFERENS,'
      'SP.DateCreated                              AS SKAPAD,'
      'pli.NT,'
      'pli.NB,'
      'pli.AT,'
      'pli.AB,'
      'pli.TT,'
      'pli.TB,'
      'pli.TS,'
      'pli.UT,'
      'pli.KV,'
      'pli.PK,'
      'SP.lengthtyp                                AS INTL'#196'NGD,'
      'SP.Reference                                AS RADREFERENS,'
      'SP.PkgCodePPNo,'
      'SP.VolumeUnitNo'
      'FROM   dbo.Client_LoadingLocation     CLL'
      
        'INNER JOIN dbo.SupplierShippingPlan       SP    ON  SP.LoadingLo' +
        'cationNo       = CLL.PhyInvPointNameNo'
      
        'INNER JOIN dbo.PRODLIST_II pli                  ON pli.ProductNo' +
        ' = sp.ProductNo'
      '--NYTT'
      'LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH'
      
        'Inner JOIN dbo.Client                     CL    ON  CL.ClientNo ' +
        '= CH.CustomerNo'
      
        'LEFT OUTER JOIN dbo.MarketRegion mr             ON mr.MarketRegi' +
        'onNo = cl.MarketRegionNo'
      '  ON  CH.ShippingPlanNo          = SP.LO_No'
      ''
      
        'Left Outer Join dbo.Users USR'#9#9#9'              ON USR.UserID = SP' +
        '.ModifiedUser'
      
        'INNER JOIN dbo.Client                     SUPP  ON  SUPP.ClientN' +
        'o            = SP.SupplierNo            -- LARS'
      
        'INNER JOIN dbo.Client                     CUST  ON  CUST.ClientN' +
        'o            = SP.CustomerNo            -- LARS'
      
        'LEFT OUTER JOIN dbo.CITY         Shipto         ON ShipTo.CityNo' +
        ' '#9'           = SP.ShipToInvPointNo'
      
        'LEFT OUTER JOIN dbo.CITY         Loading        ON Loading.CityN' +
        'o '#9'           = SP.LoadingLocationNo'
      
        'INNER JOIN dbo.UnitName                   UN    ON  SP.VolumeUni' +
        'tNo            = UN.VolumeUnit_No'
      
        'Left Outer Join dbo.Booking Bk                  On BK.ShippingPl' +
        'anNo = SP.ShippingPlanNo'
      'Left Outer Join dbo.ProdInstru PIS'
      
        'Inner Join dbo.Barcode BC                       ON BC.BarCodeNo ' +
        '= PIS.BarCodeID'
      '  ON PIS.ProdInstruNo = SP.ProdInstructNo'
      ''
      'WHERE  CLL.ClientNo       =  232'
      'AND SP.ShippingPlanStatus <>  0'
      'AND SP.ObjectType         <   2'
      'AND SP.ShippingPlanStatus <>  4'
      'order by SP.ShippingPlanNo'
      ' '
      ' '
      ' '
      '')
    Left = 40
    Top = 40
    object cdsSawmillLoadOrdersKONTRAKTSBESKRIVNING: TStringField
      FieldName = 'KONTRAKTSBESKRIVNING'
      Origin = 'KONTRAKTSBESKRIVNING'
      ReadOnly = True
      Size = 150
    end
    object cdsSawmillLoadOrdersShippersShipDate: TSQLTimeStampField
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersREADYDATE: TStringField
      FieldName = 'READYDATE'
      Origin = 'READYDATE'
      ReadOnly = True
      Size = 30
    end
    object cdsSawmillLoadOrdersINITIALS: TStringField
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object cdsSawmillLoadOrdersShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersLONumber: TIntegerField
      FieldName = 'LONumber'
      Origin = 'LONumber'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersPKGCode: TStringField
      FieldName = 'PKGCode'
      Origin = 'PKGCode'
      ReadOnly = True
      FixedChar = True
    end
    object cdsSawmillLoadOrdersProduct: TStringField
      FieldName = 'Product'
      Origin = 'Product'
      ReadOnly = True
      FixedChar = True
      Size = 100
    end
    object cdsSawmillLoadOrdersLength: TStringField
      FieldName = 'Length'
      Origin = 'Length'
      ReadOnly = True
      FixedChar = True
      Size = 100
    end
    object cdsSawmillLoadOrdersFromWeek: TIntegerField
      FieldName = 'FromWeek'
      Origin = 'FromWeek'
      ReadOnly = True
      Required = True
    end
    object cdsSawmillLoadOrdersToWeek: TIntegerField
      FieldName = 'ToWeek'
      Origin = 'ToWeek'
      ReadOnly = True
      Required = True
    end
    object cdsSawmillLoadOrdersVolume: TFloatField
      FieldName = 'Volume'
      Origin = 'Volume'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ReadOnly = True
      Required = True
    end
    object cdsSawmillLoadOrdersShowInGrid: TIntegerField
      FieldName = 'ShowInGrid'
      Origin = 'ShowInGrid'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersOrderNo: TStringField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersUnitName: TStringField
      FieldName = 'UnitName'
      Origin = 'UnitName'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cdsSawmillLoadOrdersDestination: TStringField
      FieldName = 'Destination'
      Origin = 'Destination'
      ReadOnly = True
      Size = 50
    end
    object cdsSawmillLoadOrdersClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      ReadOnly = True
      Size = 80
    end
    object cdsSawmillLoadOrdersMARKNAD: TStringField
      FieldName = 'MARKNAD'
      Origin = 'MARKNAD'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object cdsSawmillLoadOrdersReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      ReadOnly = True
      Size = 30
    end
    object cdsSawmillLoadOrdersSupplier: TIntegerField
      FieldName = 'Supplier'
      Origin = 'Supplier'
      ReadOnly = True
      Required = True
    end
    object cdsSawmillLoadOrdersCHCustomerNo: TIntegerField
      FieldName = 'CHCustomerNo'
      Origin = 'CHCustomerNo'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersSPCustomerNO: TIntegerField
      FieldName = 'SPCustomerNO'
      Origin = 'SPCustomerNO'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersCustomerPrice: TFloatField
      FieldName = 'CustomerPrice'
      Origin = 'CustomerPrice'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersCustomerShowInGrid: TIntegerField
      FieldName = 'CustomerShowInGrid'
      Origin = 'CustomerShowInGrid'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersSUPP_NAME: TStringField
      FieldName = 'SUPP_NAME'
      Origin = 'SUPP_NAME'
      ReadOnly = True
      Size = 80
    end
    object cdsSawmillLoadOrdersLOCAL_CUST: TStringField
      FieldName = 'LOCAL_CUST'
      Origin = 'LOCAL_CUST'
      ReadOnly = True
      Size = 80
    end
    object cdsSawmillLoadOrdersObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersORDERTYPE: TIntegerField
      FieldName = 'ORDERTYPE'
      Origin = 'ORDERTYPE'
      ReadOnly = True
      Required = True
    end
    object cdsSawmillLoadOrdersSHIPTO: TStringField
      FieldName = 'SHIPTO'
      Origin = 'SHIPTO'
      ReadOnly = True
      Size = 50
    end
    object cdsSawmillLoadOrdersLOADING: TStringField
      FieldName = 'LOADING'
      Origin = 'LOADING'
      ReadOnly = True
      Size = 50
    end
    object cdsSawmillLoadOrdersDelivery_WeekNo: TIntegerField
      FieldName = 'Delivery_WeekNo'
      Origin = 'Delivery_WeekNo'
      ReadOnly = True
      Required = True
    end
    object cdsSawmillLoadOrdersCSH_CustomerNo: TIntegerField
      FieldName = 'CSH_CustomerNo'
      Origin = 'CSH_CustomerNo'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ReadOnly = True
      Required = True
    end
    object cdsSawmillLoadOrdersBarCode: TStringField
      FieldName = 'BarCode'
      Origin = 'BarCode'
      ReadOnly = True
      FixedChar = True
    end
    object cdsSawmillLoadOrdersREFERENS: TStringField
      FieldName = 'REFERENS'
      Origin = 'REFERENS'
      ReadOnly = True
      Size = 30
    end
    object cdsSawmillLoadOrdersSKAPAD: TSQLTimeStampField
      FieldName = 'SKAPAD'
      Origin = 'SKAPAD'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersTT: TStringField
      FieldName = 'TT'
      Origin = 'TT'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersTB: TStringField
      FieldName = 'TB'
      Origin = 'TB'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsSawmillLoadOrdersUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsSawmillLoadOrdersKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsSawmillLoadOrdersPK: TStringField
      FieldName = 'PK'
      Origin = 'PK'
      ReadOnly = True
      Size = 40
    end
    object cdsSawmillLoadOrdersINTLÄNGD: TStringField
      FieldName = 'INTL'#196'NGD'
      Origin = '[INTL'#196'NGD]'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersRADREFERENS: TStringField
      FieldName = 'RADREFERENS'
      Origin = 'RADREFERENS'
      ReadOnly = True
      Size = 50
    end
    object cdsSawmillLoadOrdersPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ReadOnly = True
    end
  end
  object cdsBooking: TFDQuery
    IndexFieldNames = 'shippingplanno'
    MasterFields = 'LONumber'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT'
      '         Cr.CarrierName            ,           -- Char 50'
      '         Vg.ETD                    ,              -- DateTime'
      '         Bk.BookingNo'#9#9'            ,'
      '         Bk.ShippersShipDate'#9','
      '         Bk.ShippersShipTime'#9','
      '         Bk.ShippingCompanyBookingID,'
      '         Bk.SupplierReference'#9','
      '         Bk.PreliminaryRequestedPeriod'#9','
      ''
      '        SC.ClientName           ,'
      '        Bk.shippingplanno,'
      'BK.Panic_Note'
      ''
      '        '
      'FROM   dbo.Booking  Bk'
      ''
      
        '  left outer JOIN dbo.Voyage  Vg  ON   Bk.VoyageNo           = V' +
        'g.VoyageNo'
      
        '  LEFT OUTER JOIN dbo.Client  SC  ON   Bk.ShippingCompanyNo  = S' +
        'C.ClientNo'
      
        '  left outer JOIN dbo.Carrier Cr  ON   Vg.CarrierNo          = C' +
        'r.CarrierNo'
      ''
      ''
      'WHERE  Bk.shippingplanno =  :LONumber'
      ''
      ''
      ''
      ''
      '')
    Left = 144
    Top = 32
    ParamData = <
      item
        Name = 'LONUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsBookingCarrierName: TStringField
      FieldName = 'CarrierName'
      Origin = 'CarrierName'
      FixedChar = True
      Size = 50
    end
    object cdsBookingETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
    end
    object cdsBookingBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBookingShippersShipDate: TSQLTimeStampField
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
    end
    object cdsBookingShippersShipTime: TSQLTimeStampField
      FieldName = 'ShippersShipTime'
      Origin = 'ShippersShipTime'
    end
    object cdsBookingShippingCompanyBookingID: TStringField
      FieldName = 'ShippingCompanyBookingID'
      Origin = 'ShippingCompanyBookingID'
    end
    object cdsBookingSupplierReference: TStringField
      FieldName = 'SupplierReference'
      Origin = 'SupplierReference'
      Size = 50
    end
    object cdsBookingPreliminaryRequestedPeriod: TStringField
      FieldName = 'PreliminaryRequestedPeriod'
      Origin = 'PreliminaryRequestedPeriod'
      Size = 30
    end
    object cdsBookingClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cdsBookingshippingplanno: TIntegerField
      FieldName = 'shippingplanno'
      Origin = 'shippingplanno'
    end
    object cdsBookingPanic_Note: TStringField
      FieldName = 'Panic_Note'
      Origin = 'Panic_Note'
      Size = 50
    end
  end
  object sq_Product: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.PktTypeByPP_SV pr'
      'WHERE'
      'pr.PkgCodePPNo = :PkgCodePPNo'
      '')
    Left = 392
    Top = 32
    ParamData = <
      item
        Name = 'PKGCODEPPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_ProductAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object sq_ProductAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object sq_ProductPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      Required = True
    end
    object sq_ProductPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      Required = True
    end
    object sq_ProductProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object sq_ProductProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      ReadOnly = True
      Size = 112
    end
    object sq_ProductProdSort: TStringField
      FieldName = 'ProdSort'
      Origin = 'ProdSort'
      ReadOnly = True
      Size = 102
    end
    object sq_ProductLANGD: TStringField
      FieldName = 'LANGD'
      Origin = 'LANGD'
      Size = 7
    end
    object sq_ProductoThickness: TStringField
      FieldName = 'oThickness'
      Origin = 'oThickness'
      Size = 7
    end
    object sq_ProductoWidth: TStringField
      FieldName = 'oWidth'
      Origin = 'oWidth'
      Size = 7
    end
    object sq_ProductGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object sq_ProductSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object sq_ProductSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object sq_ProductBarCodeID: TStringField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
      ReadOnly = True
      Required = True
      FixedChar = True
    end
    object sq_ProductGradeStamp: TStringField
      FieldName = 'GradeStamp'
      Origin = 'GradeStamp'
      ReadOnly = True
      Required = True
      FixedChar = True
    end
    object sq_ProductExternkod: TStringField
      FieldName = 'Externkod'
      Origin = 'Externkod'
    end
    object sq_ProductSöknamn: TStringField
      FieldName = 'S'#246'knamn'
      Origin = '[S'#246'knamn]'
      Required = True
      Size = 40
    end
    object sq_ProductPcsPerPkg: TIntegerField
      FieldName = 'PcsPerPkg'
      Origin = 'PcsPerPkg'
    end
  end
  object cds_ProducerUser: TFDQuery
    IndexFieldNames = 'ClientNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'select Distinct c.ClientNo, c.ClientName, c.SearchName from dbo.' +
        'client c'
      'Inner Join dbo.ClientRole cr on cr.ClientNo = c.ClientNo'
      'WHERE'
      'cr.RoleType = 6'
      'or cr.RoleType = 9'
      'Order By c.SearchName'
      '')
    Left = 624
    Top = 296
    object cds_ProducerUserClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProducerUserClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_ProducerUserSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object cds_RegPointUser: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select Distinct pu.ClientNo, rp.RegPointNo, rp.RegPointName FROM' +
        ' dbo.ProductionUnit pu '
      
        'Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = pu.Regist' +
        'rationPointNo'
      'Order By rp.RegPointName'
      '')
    Left = 496
    Top = 304
    object cds_RegPointUserClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_RegPointUserRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      Required = True
    end
    object cds_RegPointUserRegPointName: TStringField
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      FixedChar = True
      Size = 30
    end
  end
  object cds_AOUserRP: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.AOUserRegPoints '
      'WHERE UserID = :UserID'
      '')
    Left = 392
    Top = 304
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_AOUserRPUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AOUserRPProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AOUserRPRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AOUserRPDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_AOUserRPDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cds_AOUserRPModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_AOUserRPStandardRegPoint: TIntegerField
      FieldName = 'StandardRegPoint'
      Origin = 'StandardRegPoint'
    end
    object cds_AOUserRPVolUnitNo: TIntegerField
      FieldName = 'VolUnitNo'
      Origin = 'VolUnitNo'
    end
    object cds_AOUserRPStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'Producent'
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'SearchName'
      KeyFields = 'ProducerNo'
      Size = 80
      Lookup = True
    end
    object cds_AOUserRPStringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'M'#228'tpunkt'
      LookupKeyFields = 'RegPointNo'
      LookupResultField = 'RegPointName'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
    object cds_AOUserRPStringField3: TStringField
      DisplayLabel = 'Vol.enhet'
      FieldKind = fkLookup
      FieldName = 'VoEnhet'
      LookupKeyFields = 'VolumeUnit_No'
      LookupResultField = 'VolumeUnitName'
      KeyFields = 'VolUnitNo'
      Size = 10
      Lookup = True
    end
  end
  object cds_RegPoint: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select Distinct pu.ClientNo, rp.RegPointNo, rp.RegPointName FROM' +
        ' dbo.ProductionUnit pu '
      
        'Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = pu.Regist' +
        'rationPointNo'
      'WHERE'
      'pu.ClientNo = :ClientNo'
      'Order By rp.RegPointName'
      '')
    Left = 248
    Top = 320
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_RegPointClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_RegPointRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      Required = True
    end
    object cds_RegPointRegPointName: TStringField
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      FixedChar = True
      Size = 30
    end
  end
  object cds_Producer: TFDQuery
    IndexFieldNames = 'ClientNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      '--Show only producers linked to user'
      
        'select Distinct AOUser.UserID, c.ClientNo, c.ClientName, c.Searc' +
        'hName from dbo.client c'
      ''
      
        'Inner Join dbo.AOUserRegPoints AOUser on AOUser.ProducerNo = C.C' +
        'lientNo'
      '-- WHERE AOUser.UserID = :UserID'
      'Order By c.SearchName'
      '')
    Left = 160
    Top = 304
    object cds_ProducerUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      Required = True
    end
    object cds_ProducerClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProducerClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_ProducerSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object cds_User: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select UserID, UserName FROM dbo.Users'
      '')
    Left = 88
    Top = 296
    object cds_UserUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_UserUserName: TStringField
      FieldName = 'UserName'
      Origin = 'UserName'
      Required = True
    end
  end
  object cds_volunit: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.UnitName'
      '')
    Left = 24
    Top = 304
    object cds_volunitVolumeUnit_No: TIntegerField
      FieldName = 'VolumeUnit_No'
      Origin = 'VolumeUnit_No'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_volunitVolumeUnitName: TStringField
      FieldName = 'VolumeUnitName'
      Origin = 'VolumeUnitName'
      Required = True
      Size = 10
    end
    object cds_volunitDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_volunitCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_volunitModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_volunitSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
  end
  object cdsLoadsForLO: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_LoadsForLO_IIII'
    Left = 264
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
        Name = '@LONo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@Shipping'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsLoadsForLOFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object cdsLoadsForLOShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      Required = True
    end
    object cdsLoadsForLOLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      Required = True
    end
    object cdsLoadsForLOLoadID: TStringField
      FieldName = 'LoadID'
      Origin = 'LoadID'
      Size = 50
    end
    object cdsLoadsForLOLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      Origin = 'LoadedDate'
    end
    object cdsLoadsForLOSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
      Origin = 'SenderLoadStatus'
    end
    object cdsLoadsForLOPcs: TIntegerField
      FieldName = 'Pcs'
      Origin = 'Pcs'
      ReadOnly = True
    end
    object cdsLoadsForLOActualM3: TFloatField
      FieldName = 'ActualM3'
      Origin = 'ActualM3'
      ReadOnly = True
    end
    object cdsLoadsForLONominalM3: TFloatField
      FieldName = 'NominalM3'
      Origin = 'NominalM3'
      ReadOnly = True
    end
    object cdsLoadsForLOLinealMeter: TFloatField
      FieldName = 'LinealMeter'
      Origin = 'LinealMeter'
      ReadOnly = True
    end
    object cdsLoadsForLOMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      ReadOnly = True
    end
    object cdsLoadsForLOVERK: TStringField
      FieldName = 'VERK'
      Origin = 'VERK'
      Size = 80
    end
    object cdsLoadsForLOANTPKT: TIntegerField
      FieldName = 'ANTPKT'
      Origin = 'ANTPKT'
      ReadOnly = True
    end
  end
  object sq_SearchALOByMainLO: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct'
      'SP.ShippingPlanNo'
      ''
      'FROM   dbo.Client_LoadingLocation     CLL'
      
        'INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLoc' +
        'ationNo       = CLL.PhyInvPointNameNo'
      'WHERE SP.LO_NO = :LO_NO'
      ''
      'AND  CLL.ClientNo          =  :SupplierNo'
      ''
      '')
    Left = 144
    Top = 208
    ParamData = <
      item
        Name = 'LO_NO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_SearchALOByMainLOShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
  end
  object sq_FindLONo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT'
      'LS.ShippingPlanNo AS LONo'
      ''
      'FROM LoadShippingPlan LS'
      'WHERE LS.LoadNo = :LoadNo'
      ''
      ''
      '')
    Left = 144
    Top = 144
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_FindLONoLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      Required = True
    end
  end
  object sq_SetLOStatus: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.SupplierShippingPlan'
      'Set ShippingPlanStatus = :Status'
      'WHERE'
      'SupplierShipPlanObjectNo = :sspNo'
      ''
      '')
    Left = 24
    Top = 216
    ParamData = <
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SSPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SQLQuery1: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      '--Purchase'
      'SELECT distinct'
      'bk.PreliminaryRequestedPeriod AS READYDATE,'
      'USR.INITIALS,'
      'SP.ShippingPlanStatus,                           -- Integer'
      'SP.ShippingPlanNo           AS LONumber,         -- Integer'
      'SP.PackageCode              AS PKGCode,          -- Char 10'
      'SP.ProductDescription       AS Product,          -- Char 100'
      'SP.LengthDescription        AS Length,           -- Char 100'
      'SP.StartETDYearWeek         AS FromWeek,         -- Integer'
      'SP.EndETDYearWeek           AS ToWeek,           -- Integer'
      'SP.NoOfUnits                AS Volume,           -- Float'
      'SP.SupplierShipPlanObjectNo,                     -- Integer'
      'SP.ShowInGrid,                                   -- SmallInt'
      'Od.OrderNoText              AS OrderNo,          -- VarChar 20'
      'UN.VolumeUnitName           AS UnitName,         -- VarChar 10'
      'Cy.CityName                 AS Destination,      -- VarChar 50'
      
        'CL.ClientName               AS ClientName,       -- LARS VarChar' +
        ' 80'
      'CSD.Reference               AS Reference,       -- LARS'
      'SP.SupplierNo               AS Supplier,        -- Integer'
      'CH.CustomerNo               AS CHCustomerNo,    -- Integer'
      'SP.CustomerNo               AS SPCustomerNO,    -- Integer'
      'SP.CustomerPrice,                               -- Float'
      'SP.CustomerShowInGrid,                           -- SmallInt'
      'SUPP.ClientName'#9#9#9#9'AS SUPP_NAME,'
      'CUST.ClientName'#9#9#9#9'AS LOCAL_CUST,'
      'SP.ObjectType,                                  -- Integer'
      'CASE WHEN OD.OrderType = 1 then 1'#9'ELSE 0'#9'END AS ORDERTYPE,'
      'ShipTo.CityName                 AS SHIPTO,      -- VarChar 50'
      'Loading.CityName                 AS LOADING,'
      'SP.Delivery_WeekNo,'
      'CH.CustomerNo AS CSH_CustomerNo,'
      'SP.ShipToInvPointNo,'
      'SP.LoadingLocationNo'
      ''
      ''
      'FROM   dbo.Client_LoadingLocation     CLL'
      
        'INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvP' +
        'ointNo       = CLL.PhyInvPointNameNo'
      'Left Outer Join dbo.Users USR'#9#9#9'ON USR.UserID = SP.ModifiedUser'
      
        'INNER JOIN dbo.Client                     SUPP   ON  SUPP.Client' +
        'No            = SP.SupplierNo            -- LARS'
      
        'INNER JOIN dbo.Client                     CUST   ON  CUST.Client' +
        'No            = SP.CustomerNo            -- LARS'
      
        'LEFT OUTER JOIN dbo.CITY                     Shipto         ON S' +
        'hipTo.CityNo '#9'           = SP.ShipToInvPointNo'
      
        'LEFT OUTER JOIN dbo.CITY                     Loading         ON ' +
        'Loading.CityNo '#9'           = SP.LoadingLocationNo'
      ''
      
        'Inner JOIN dbo.CustomerShippingPlanHeader CH   ON  SP.ShippingPl' +
        'anNo          = CH.ShippingPlanNo      -- LARS'
      
        'Inner JOIN dbo.Orders                     Od   ON  Od.OrderNo'#9'= ' +
        'CH.OrderNo'
      
        'LEFT OUTER JOIN dbo.Client                     CL   ON  CH.Custo' +
        'merNo              = CL.ClientNo            -- LARS'
      
        'INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnit' +
        'No            = UN.VolumeUnit_No'
      
        'LEFT OUTER JOIN dbo.CustomerShippingPlanDetails CSD   ON  SP.Cus' +
        'tShipPlanDetailObjectNo = CSD.CustShipPlanDetailObjectNo      --' +
        ' LARS'
      'LEFT OUTER JOIN ShippingPlan_ShippingAddress ST'
      
        'INNER JOIN dbo.Address '#9#9'             ST_ADR     ON ST_ADR.Addre' +
        'ssNo'#9'     = ST.AddressNo'
      
        'INNER JOIN dbo.CITY                     CY         ON CY.CityNo ' +
        #9'           = ST_ADR.CityNo'
      
        'INNER JOIN dbo.Country'#9#9'               ST_AdrCtry'#9'ON ST_AdrCtry.' +
        'CountryNo  = ST_ADR.CountryNo'
      'ON'#9'ST.ShippingPlanNo'#9'   = CSD.ShippingPlanNo'
      'AND'#9'ST.Reference'#9#9'     = CSD.Reference'
      ''
      
        'Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.Shippin' +
        'gPlanNo'
      ''
      ''
      'WHERE  CLL.ClientNo          = 741'
      'AND SP.ShippingPlanStatus <> 0'
      'AND CH.ShippingPlanStatus = 1'
      'AND SP.ObjectType = 2'
      'AND OD.OrderType = 1'
      '--OR SP.ObjectType = 1 OR SP.ObjectType = 0)'
      ''
      
        'UNION --********************************************************' +
        '************************'
      ''
      'SELECT distinct'
      'bk.PreliminaryRequestedPeriod,'
      'USR.INITIALS,'
      'SP.ShippingPlanStatus,                           -- Integer'
      'SP.ShippingPlanNo           AS LONumber,         -- Integer'
      'SP.PackageCode              AS PKGCode,          -- Char 10'
      'SP.ProductDescription       AS Product,          -- Char 100'
      'SP.LengthDescription        AS Length,           -- Char 100'
      'SP.StartETDYearWeek         AS FromWeek,         -- Integer'
      'SP.EndETDYearWeek           AS ToWeek,           -- Integer'
      'SP.NoOfUnits                AS Volume,           -- Float'
      'SP.SupplierShipPlanObjectNo,                     -- Integer'
      'SP.ShowInGrid,                                   -- SmallInt'
      #39#39'              AS OrderNo,          -- VarChar 20'
      'UN.VolumeUnitName           AS UnitName,         -- VarChar 10'
      #39#39'                 AS Destination,      -- VarChar 50'
      #39#39'               AS ClientName,       -- LARS VarChar 80'
      #39#39'               AS Reference,       -- LARS'
      'SP.SupplierNo               AS Supplier,        -- Integer'
      '-1              AS CHCustomerNo,    -- Integer'
      'SP.CustomerNo               AS SPCustomerNO,    -- Integer'
      'SP.CustomerPrice,                               -- Float'
      'SP.CustomerShowInGrid,                           -- SmallInt'
      'SUPP.ClientName'#9#9#9#9'AS SUPP_NAME,'
      'CUST.ClientName'#9#9#9#9'AS LOCAL_CUST,'
      'SP.ObjectType,                                  -- Integer'
      '0 AS ORDERTYPE,'
      'ShipTo.CityName                 AS SHIPTO,      -- VarChar 50'
      'Loading.CityName                 AS LOADING,'
      'SP.Delivery_WeekNo,'
      '-1 AS CSH_CustomerNo,'
      'SP.ShipToInvPointNo,SP.LoadingLocationNo'
      ''
      'FROM   dbo.Client_LoadingLocation     CLL'
      
        'INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvP' +
        'ointNo = CLL.PhyInvPointNameNo'
      'Left Outer Join dbo.Users USR'#9#9#9'ON USR.UserID = SP.ModifiedUser'
      
        'INNER JOIN dbo.Client                     SUPP   ON  SUPP.Client' +
        'No            = SP.SupplierNo            -- LARS'
      
        'INNER JOIN dbo.Client                     CUST   ON  CUST.Client' +
        'No            = SP.CustomerNo            -- LARS'
      
        'LEFT OUTER JOIN dbo.CITY                     Shipto         ON S' +
        'hipTo.CityNo '#9'           = SP.ShipToInvPointNo'
      
        'LEFT OUTER JOIN dbo.CITY                     Loading         ON ' +
        'Loading.CityNo '#9'           = SP.LoadingLocationNo'
      
        'INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnit' +
        'No            = UN.VolumeUnit_No'
      ''
      
        'Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.Shippin' +
        'gPlanNo'
      ''
      ''
      ''
      'WHERE  CLL.ClientNo          = 741'
      'AND SP.ShippingPlanStatus <> 0'
      ''
      'AND SP.ObjectType < 2'
      '--AND OD.OrderType = 2'
      '--OR SP.ObjectType = 1 OR SP.ObjectType = 0)'
      ''
      '')
    Left = 32
    Top = 152
    object SQLQuery1READYDATE: TStringField
      FieldName = 'READYDATE'
      Origin = 'READYDATE'
      ReadOnly = True
      Size = 30
    end
    object SQLQuery1INITIALS: TStringField
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object SQLQuery1ShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
      ReadOnly = True
    end
    object SQLQuery1LONumber: TIntegerField
      FieldName = 'LONumber'
      Origin = 'LONumber'
      ReadOnly = True
    end
    object SQLQuery1PKGCode: TStringField
      FieldName = 'PKGCode'
      Origin = 'PKGCode'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object SQLQuery1Product: TStringField
      FieldName = 'Product'
      Origin = 'Product'
      ReadOnly = True
      FixedChar = True
      Size = 100
    end
    object SQLQuery1Length: TStringField
      FieldName = 'Length'
      Origin = 'Length'
      ReadOnly = True
      FixedChar = True
      Size = 100
    end
    object SQLQuery1FromWeek: TIntegerField
      FieldName = 'FromWeek'
      Origin = 'FromWeek'
      ReadOnly = True
    end
    object SQLQuery1ToWeek: TIntegerField
      FieldName = 'ToWeek'
      Origin = 'ToWeek'
      ReadOnly = True
    end
    object SQLQuery1Volume: TFloatField
      FieldName = 'Volume'
      Origin = 'Volume'
      ReadOnly = True
    end
    object SQLQuery1SupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ReadOnly = True
      Required = True
    end
    object SQLQuery1ShowInGrid: TIntegerField
      FieldName = 'ShowInGrid'
      Origin = 'ShowInGrid'
      ReadOnly = True
    end
    object SQLQuery1OrderNo: TStringField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ReadOnly = True
      Required = True
    end
    object SQLQuery1UnitName: TStringField
      FieldName = 'UnitName'
      Origin = 'UnitName'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object SQLQuery1Destination: TStringField
      FieldName = 'Destination'
      Origin = 'Destination'
      ReadOnly = True
      Size = 50
    end
    object SQLQuery1ClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      ReadOnly = True
      Size = 80
    end
    object SQLQuery1Reference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      ReadOnly = True
      Size = 30
    end
    object SQLQuery1Supplier: TIntegerField
      FieldName = 'Supplier'
      Origin = 'Supplier'
      ReadOnly = True
      Required = True
    end
    object SQLQuery1CHCustomerNo: TIntegerField
      FieldName = 'CHCustomerNo'
      Origin = 'CHCustomerNo'
      ReadOnly = True
    end
    object SQLQuery1SPCustomerNO: TIntegerField
      FieldName = 'SPCustomerNO'
      Origin = 'SPCustomerNO'
      ReadOnly = True
    end
    object SQLQuery1CustomerPrice: TFloatField
      FieldName = 'CustomerPrice'
      Origin = 'CustomerPrice'
      ReadOnly = True
    end
    object SQLQuery1CustomerShowInGrid: TIntegerField
      FieldName = 'CustomerShowInGrid'
      Origin = 'CustomerShowInGrid'
      ReadOnly = True
    end
    object SQLQuery1SUPP_NAME: TStringField
      FieldName = 'SUPP_NAME'
      Origin = 'SUPP_NAME'
      ReadOnly = True
      Size = 80
    end
    object SQLQuery1LOCAL_CUST: TStringField
      FieldName = 'LOCAL_CUST'
      Origin = 'LOCAL_CUST'
      ReadOnly = True
      Size = 80
    end
    object SQLQuery1ObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
      ReadOnly = True
    end
    object SQLQuery1ORDERTYPE: TIntegerField
      FieldName = 'ORDERTYPE'
      Origin = 'ORDERTYPE'
      ReadOnly = True
      Required = True
    end
    object SQLQuery1SHIPTO: TStringField
      FieldName = 'SHIPTO'
      Origin = 'SHIPTO'
      ReadOnly = True
      Size = 50
    end
    object SQLQuery1LOADING: TStringField
      FieldName = 'LOADING'
      Origin = 'LOADING'
      ReadOnly = True
      Size = 50
    end
    object SQLQuery1Delivery_WeekNo: TIntegerField
      FieldName = 'Delivery_WeekNo'
      Origin = 'Delivery_WeekNo'
      ReadOnly = True
    end
    object SQLQuery1CSH_CustomerNo: TIntegerField
      FieldName = 'CSH_CustomerNo'
      Origin = 'CSH_CustomerNo'
      ReadOnly = True
    end
    object SQLQuery1ShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
      ReadOnly = True
    end
    object SQLQuery1LoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ReadOnly = True
      Required = True
    end
  end
end
