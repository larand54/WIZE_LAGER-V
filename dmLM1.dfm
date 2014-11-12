object daMoLM1: TdaMoLM1
  OldCreateOrder = False
  Left = 202
  Top = 109
  Height = 357
  Width = 791
  object cdsAvrop: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'STATUS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'LO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ORDERNUMBER'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REFERENCE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FROMWEEK'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TOWEEK'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLIENT'
        Attributes = [faRequired]
        DataType = ftString
        Size = 80
      end
      item
        Name = 'AGENT'
        Attributes = [faRequired]
        DataType = ftString
        Size = 80
      end
      item
        Name = 'MARK'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PRODUCT'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'LENGTH'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'VOLUME'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'VOLUNIT'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DESTINATION'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ORDERNO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLIENTNO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESTINATIONNO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'UNIQUERECORDNO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SALESREGIONNO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ORDERTYPE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CurrencyNo'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cdsAvropIndex4'
        Fields = 'LO'
      end
      item
        Name = 'cdsAvropIndex5'
        Fields = 'UNIQUERECORDNO'
      end>
    IndexName = 'cdsAvropIndex4'
    Params = <>
    ProviderName = 'dspAvrop'
    StoreDefs = True
    OnReconcileError = cdsAvropReconcileError
    Left = 24
    Top = 128
    object cdsAvropLO: TIntegerField
      FieldName = 'LO'
      Required = True
    end
    object cdsAvropORDERNUMBER: TStringField
      FieldName = 'ORDERNUMBER'
    end
    object cdsAvropREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Size = 30
    end
    object cdsAvropFROMWEEK: TIntegerField
      FieldName = 'FROMWEEK'
    end
    object cdsAvropTOWEEK: TIntegerField
      FieldName = 'TOWEEK'
    end
    object cdsAvropCLIENT: TStringField
      FieldName = 'CLIENT'
      Size = 80
    end
    object cdsAvropAGENT: TStringField
      FieldName = 'AGENT'
      Size = 80
    end
    object cdsAvropMARK: TStringField
      FieldName = 'MARK'
      Size = 30
    end
    object cdsAvropPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object cdsAvropLENGTH: TStringField
      FieldName = 'LENGTH'
      Size = 100
    end
    object cdsAvropVOLUME: TFloatField
      FieldName = 'VOLUME'
      DisplayFormat = '#.000'
    end
    object cdsAvropVOLUNIT: TStringField
      FieldName = 'VOLUNIT'
      Size = 10
    end
    object cdsAvropDESTINATION: TStringField
      FieldName = 'DESTINATION'
      Size = 50
    end
    object cdsAvropORDERNO: TIntegerField
      FieldName = 'ORDERNO'
    end
    object cdsAvropCLIENTNO: TIntegerField
      FieldName = 'CLIENTNO'
    end
    object cdsAvropDESTINATIONNO: TIntegerField
      FieldName = 'DESTINATIONNO'
    end
    object cdsAvropUNIQUERECORDNO: TIntegerField
      FieldName = 'UNIQUERECORDNO'
    end
    object cdsAvropSALESREGIONNO: TIntegerField
      FieldName = 'SALESREGIONNO'
    end
    object cdsAvropORDERTYPE: TIntegerField
      FieldName = 'ORDERTYPE'
    end
    object cdsAvropSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsAvropCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Required = True
    end
  end
  object dsrcAvrop: TDataSource
    DataSet = cdsAvrop
    OnDataChange = dsrcAvropDataChange
    Left = 24
    Top = 184
  end
  object sp_Avrop: TSQLStoredProc
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
        DataType = ftInteger
        Name = 'SHIPPINGPLANSTATUS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OrderType'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SalesRegionNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MarketRegionNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShowOnlyNotInvoiced'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_AVROP2'
    Left = 24
    Top = 256
    object sp_AvropSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object sp_AvropLO: TIntegerField
      FieldName = 'LO'
      Required = True
    end
    object sp_AvropORDERNUMBER: TStringField
      FieldName = 'ORDERNUMBER'
      Required = True
    end
    object sp_AvropREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Required = True
      Size = 30
    end
    object sp_AvropFROMWEEK: TIntegerField
      FieldName = 'FROMWEEK'
      Required = True
    end
    object sp_AvropTOWEEK: TIntegerField
      FieldName = 'TOWEEK'
      Required = True
    end
    object sp_AvropCLIENT: TStringField
      FieldName = 'CLIENT'
      Required = True
      Size = 80
    end
    object sp_AvropAGENT: TStringField
      FieldName = 'AGENT'
      Required = True
      Size = 80
    end
    object sp_AvropMARK: TStringField
      FieldName = 'MARK'
      Required = True
      Size = 30
    end
    object sp_AvropPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Required = True
      Size = 100
    end
    object sp_AvropLENGTH: TStringField
      FieldName = 'LENGTH'
      Required = True
      Size = 100
    end
    object sp_AvropVOLUME: TFloatField
      FieldName = 'VOLUME'
      Required = True
    end
    object sp_AvropVOLUNIT: TStringField
      FieldName = 'VOLUNIT'
      Required = True
      Size = 10
    end
    object sp_AvropDESTINATION: TStringField
      FieldName = 'DESTINATION'
      Required = True
      Size = 50
    end
    object sp_AvropORDERNO: TIntegerField
      FieldName = 'ORDERNO'
      Required = True
    end
    object sp_AvropCLIENTNO: TIntegerField
      FieldName = 'CLIENTNO'
      Required = True
    end
    object sp_AvropDESTINATIONNO: TIntegerField
      FieldName = 'DESTINATIONNO'
      Required = True
    end
    object sp_AvropUNIQUERECORDNO: TIntegerField
      FieldName = 'UNIQUERECORDNO'
      Required = True
    end
    object sp_AvropSALESREGIONNO: TIntegerField
      FieldName = 'SALESREGIONNO'
      Required = True
    end
    object sp_AvropORDERTYPE: TIntegerField
      FieldName = 'ORDERTYPE'
      Required = True
    end
    object sp_AvropCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Required = True
    end
  end
  object dspAvrop: TDataSetProvider
    DataSet = sq_Avrop
    UpdateMode = upWhereChanged
    Left = 24
    Top = 72
  end
  object sp_NormalLO: TSQLStoredProc
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
        DataType = ftInteger
        Name = 'CustShipPlanDetailObjectNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Avrop_NormalLO'
    Left = 96
    Top = 16
    object sp_NormalLOLO: TIntegerField
      FieldName = 'LO'
      Required = True
    end
    object sp_NormalLOUNIQUERECORDNO: TIntegerField
      FieldName = 'UNIQUERECORDNO'
      Required = True
    end
    object sp_NormalLOSUPPLIER: TStringField
      FieldName = 'SUPPLIER'
      Required = True
      Size = 80
    end
    object sp_NormalLOSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object sp_NormalLOPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Required = True
      Size = 100
    end
    object sp_NormalLOLENGTH: TStringField
      FieldName = 'LENGTH'
      Required = True
      Size = 100
    end
    object sp_NormalLOM3: TFloatField
      FieldName = 'M3'
      Required = True
    end
    object sp_NormalLOVOLUME: TFloatField
      FieldName = 'VOLUME'
      Required = True
    end
    object sp_NormalLOVOLUNIT: TStringField
      FieldName = 'VOLUNIT'
      Required = True
      Size = 10
    end
    object sp_NormalLOCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Required = True
      Size = 5
    end
    object sp_NormalLOPRICE: TFloatField
      FieldName = 'PRICE'
      Required = True
    end
    object sp_NormalLOPRICEUNIT: TStringField
      FieldName = 'PRICEUNIT'
      Required = True
    end
    object sp_NormalLOSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Required = True
    end
    object sp_NormalLOPKGCODE: TStringField
      FieldName = 'PKGCODE'
      Required = True
      Size = 10
    end
    object sp_NormalLOFROMWEEK: TIntegerField
      FieldName = 'FROMWEEK'
      Required = True
    end
    object sp_NormalLOTOWEEK: TIntegerField
      FieldName = 'TOWEEK'
      Required = True
    end
    object sp_NormalLOSHIPTO: TStringField
      FieldName = 'SHIPTO'
      Required = True
      Size = 50
    end
    object sp_NormalLODESTINATION: TStringField
      FieldName = 'DESTINATION'
      Required = True
      Size = 50
    end
    object sp_NormalLOCUSTPLANOBJECTNO: TIntegerField
      FieldName = 'CUSTPLANOBJECTNO'
      Required = True
    end
    object sp_NormalLOOBJECTTYPE: TIntegerField
      FieldName = 'OBJECTTYPE'
      Required = True
    end
    object sp_NormalLODELIVERED: TFloatField
      FieldName = 'DELIVERED'
      Required = True
    end
    object sp_NormalLOLOADING_LOCATION: TStringField
      FieldName = 'LOADING_LOCATION'
      Required = True
      Size = 50
    end
  end
  object dspNormalLO: TDataSetProvider
    DataSet = sp_NormalLO
    Left = 96
    Top = 72
  end
  object cdsNormalLO: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LO'
    Params = <>
    ProviderName = 'dspNormalLO'
    Left = 96
    Top = 128
    object cdsNormalLOLO: TIntegerField
      FieldName = 'LO'
      Required = True
    end
    object cdsNormalLOUNIQUERECORDNO: TIntegerField
      FieldName = 'UNIQUERECORDNO'
      Required = True
    end
    object cdsNormalLOSUPPLIER: TStringField
      FieldName = 'SUPPLIER'
      Required = True
      Size = 80
    end
    object cdsNormalLOSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsNormalLOPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Required = True
      Size = 100
    end
    object cdsNormalLOLENGTH: TStringField
      FieldName = 'LENGTH'
      Required = True
      Size = 100
    end
    object cdsNormalLOM3: TFloatField
      FieldName = 'M3'
      Required = True
      DisplayFormat = '#.000'
    end
    object cdsNormalLOVOLUME: TFloatField
      FieldName = 'VOLUME'
      Required = True
      DisplayFormat = '#.000'
    end
    object cdsNormalLOVOLUNIT: TStringField
      FieldName = 'VOLUNIT'
      Required = True
      Size = 10
    end
    object cdsNormalLOCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Required = True
      Size = 5
    end
    object cdsNormalLOPRICE: TFloatField
      FieldName = 'PRICE'
      Required = True
    end
    object cdsNormalLOPRICEUNIT: TStringField
      FieldName = 'PRICEUNIT'
      Required = True
    end
    object cdsNormalLOSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Required = True
    end
    object cdsNormalLOPKGCODE: TStringField
      FieldName = 'PKGCODE'
      Required = True
      Size = 10
    end
    object cdsNormalLOFROMWEEK: TIntegerField
      FieldName = 'FROMWEEK'
      Required = True
    end
    object cdsNormalLOTOWEEK: TIntegerField
      FieldName = 'TOWEEK'
      Required = True
    end
    object cdsNormalLOSHIPTO: TStringField
      FieldName = 'SHIPTO'
      Required = True
      Size = 50
    end
    object cdsNormalLODESTINATION: TStringField
      FieldName = 'DESTINATION'
      Required = True
      Size = 50
    end
    object cdsNormalLOCUSTPLANOBJECTNO: TIntegerField
      FieldName = 'CUSTPLANOBJECTNO'
      Required = True
    end
    object cdsNormalLOOBJECTTYPE: TIntegerField
      FieldName = 'OBJECTTYPE'
      Required = True
    end
    object cdsNormalLODELIVERED: TFloatField
      FieldName = 'DELIVERED'
      Required = True
      DisplayFormat = '#.000'
    end
    object cdsNormalLOLOADING_LOCATION: TStringField
      FieldName = 'LOADING_LOCATION'
      Required = True
      Size = 50
    end
  end
  object dsrcNormalLO: TDataSource
    DataSet = cdsNormalLO
    Left = 96
    Top = 184
  end
  object sp_ExtraLO: TSQLStoredProc
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
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
        Value = '13081'
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Avrop_ExtraLO'
    Left = 168
    Top = 16
  end
  object dspExtraLO: TDataSetProvider
    DataSet = sp_ExtraLO
    Left = 168
    Top = 72
  end
  object cdsExtraLO: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LO'
    Params = <>
    ProviderName = 'dspExtraLO'
    Left = 168
    Top = 128
    object cdsExtraLOLO: TIntegerField
      FieldName = 'LO'
      Required = True
    end
    object cdsExtraLOUNIQUERECORDNO: TIntegerField
      FieldName = 'UNIQUERECORDNO'
      Required = True
    end
    object cdsExtraLOSUPPLIER: TStringField
      FieldName = 'SUPPLIER'
      Required = True
      Size = 80
    end
    object cdsExtraLOSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsExtraLOPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Required = True
      Size = 100
    end
    object cdsExtraLOLENGTH: TStringField
      FieldName = 'LENGTH'
      Required = True
      Size = 100
    end
    object cdsExtraLOM3: TFloatField
      FieldName = 'M3'
      Required = True
      DisplayFormat = '#.000'
    end
    object cdsExtraLOVOLUME: TFloatField
      FieldName = 'VOLUME'
      Required = True
      DisplayFormat = '#.000'
    end
    object cdsExtraLOVOLUNIT: TStringField
      FieldName = 'VOLUNIT'
      Required = True
      Size = 10
    end
    object cdsExtraLOCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Required = True
      Size = 5
    end
    object cdsExtraLOPRICE: TFloatField
      FieldName = 'PRICE'
      Required = True
    end
    object cdsExtraLOPRICEUNIT: TStringField
      FieldName = 'PRICEUNIT'
      Required = True
    end
    object cdsExtraLOSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Required = True
    end
    object cdsExtraLOPKGCODE: TStringField
      FieldName = 'PKGCODE'
      Required = True
      Size = 10
    end
    object cdsExtraLOFROMWEEK: TIntegerField
      FieldName = 'FROMWEEK'
      Required = True
    end
    object cdsExtraLOTOWEEK: TIntegerField
      FieldName = 'TOWEEK'
      Required = True
    end
    object cdsExtraLOSHIPTO: TStringField
      FieldName = 'SHIPTO'
      Required = True
      Size = 50
    end
    object cdsExtraLODESTINATION: TStringField
      FieldName = 'DESTINATION'
      Required = True
      Size = 50
    end
    object cdsExtraLOOBJECTTYPE: TIntegerField
      FieldName = 'OBJECTTYPE'
      Required = True
    end
    object cdsExtraLODELIVERED: TFloatField
      FieldName = 'DELIVERED'
      Required = True
    end
    object cdsExtraLOCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Required = True
      Size = 80
    end
  end
  object dsrcExtraLO: TDataSource
    DataSet = cdsExtraLO
    Left = 168
    Top = 184
  end
  object dspLoads: TDataSetProvider
    DataSet = sp_Loads
    Left = 288
    Top = 80
  end
  object cdsLoads: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLoads'
    Left = 288
    Top = 136
    object cdsLoadsLO: TIntegerField
      FieldName = 'LO'
      Required = True
    end
    object cdsLoadsLOADNO: TIntegerField
      FieldName = 'LOADNO'
      Required = True
    end
    object cdsLoadsFS: TStringField
      FieldName = 'FS'
      Required = True
    end
    object cdsLoadsLOADEDDATE: TSQLTimeStampField
      FieldName = 'LOADEDDATE'
      Required = True
    end
    object cdsLoadsSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsLoadsLOAD_ID: TStringField
      FieldName = 'LOAD_ID'
      Required = True
      Size = 50
    end
    object cdsLoadsINTERNAL_INVOICENO: TIntegerField
      FieldName = 'INTERNAL_INVOICENO'
      Required = True
    end
    object cdsLoadsACT_M3: TFloatField
      FieldName = 'ACT_M3'
      Required = True
      DisplayFormat = '#######.000'
    end
    object cdsLoadsINVOICENO: TIntegerField
      FieldName = 'INVOICENO'
      Required = True
    end
    object cdsLoadsPO_INVOICENO: TIntegerField
      FieldName = 'PO_INVOICENO'
      Required = True
    end
    object cdsLoadsPROFORMA_INVOICENO: TIntegerField
      FieldName = 'PROFORMA_INVOICENO'
      Required = True
    end
    object cdsLoadsFOLJESEDEL: TIntegerField
      FieldName = 'FOLJESEDEL'
      Required = True
    end
  end
  object dsrcLoads: TDataSource
    DataSet = cdsLoads
    Left = 288
    Top = 184
  end
  object sp_Loads: TSQLStoredProc
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
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CustomerNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Avrop_Loads'
    Left = 288
    Top = 16
  end
  object sq_Order: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Str(od.OrderNo) + Str(ol.OrderLineNo) as PKValue, '
      'od.OrderNo,'
      'od.SalesRegionNo, '
      'ol.OrderLineNo, '
      'ol.ProductNo, '
      'ol.ProductLengthNo, '
      'od.OrderNoText,'
      'od.OrderStatus, '
      'od.OrderType, '
      'case od.OrderType'
      'when 0 then '#39'Sales'#39' '
      'when 1 then '#39'PO'#39
      'end as SalesType,'
      ''
      ''
      ''
      'od.CustomerNo, '
      'cl.ClientName, '
      'ol.OrderLineDescription,'
      'ol.NoOfUnits, '
      'ol.LengthDescription, '
      'ol.VolumeUnitNo, '
      'ol.PriceUnitNo,'
      'od.CurrencyNo, '
      'CU.CurrencyName,'
      'ol.Price, '
      'PU.TemplateUnitName,'
      'ol.OrderVolume, '
      'UN.VolumeUnit_No,'
      'ol.OrderLineValueSEK, '
      'ol.OrderLineValueCurrency'
      'FROM Orders od'
      'INNER JOIN dbo.OrderLine ol'#9#9'ON '#9'od.OrderNo = ol.OrderNo'#9
      'INNER JOIN dbo.Client cl'#9#9'ON'#9'od.CustomerNo = cl.ClientNo'
      
        'INNER JOIN dbo.UnitName'#9'UN'#9#9'ON'#9'UN.VolumeUnit_No = ol.VolumeUnitN' +
        'o'
      
        'INNER JOIN dbo.PackUnit PU'#9#9'ON'#9'PU.TemplateUnitNo = ol.PriceUnitN' +
        'o'
      'INNER JOIN dbo.Currency CU'#9#9'ON'#9'CU.CurrencyNo = od.CurrencyNo'
      ''
      '--WHERE od.OrderNo = ol.OrderNo and od.CustomerNo = cl.ClientNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 360
    Top = 24
    object sq_OrderPKValue: TStringField
      FieldName = 'PKValue'
    end
    object sq_OrderOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object sq_OrderSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object sq_OrderOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
    end
    object sq_OrderProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object sq_OrderProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object sq_OrderOrderNoText: TStringField
      FieldName = 'OrderNoText'
    end
    object sq_OrderOrderStatus: TIntegerField
      FieldName = 'OrderStatus'
    end
    object sq_OrderOrderType: TIntegerField
      FieldName = 'OrderType'
    end
    object sq_OrderCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object sq_OrderClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
    object sq_OrderOrderLineDescription: TStringField
      FieldName = 'OrderLineDescription'
      Size = 100
    end
    object sq_OrderNoOfUnits: TFloatField
      FieldName = 'NoOfUnits'
    end
    object sq_OrderLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Size = 100
    end
    object sq_OrderVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object sq_OrderPriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
    end
    object sq_OrderCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object sq_OrderPrice: TFloatField
      FieldName = 'Price'
    end
    object sq_OrderOrderVolume: TFloatField
      FieldName = 'OrderVolume'
    end
    object sq_OrderOrderLineValueSEK: TFloatField
      FieldName = 'OrderLineValueSEK'
    end
    object sq_OrderOrderLineValueCurrency: TFloatField
      FieldName = 'OrderLineValueCurrency'
    end
    object sq_OrderSalesType: TStringField
      FieldName = 'SalesType'
      Size = 5
    end
    object sq_OrderCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 5
    end
    object sq_OrderTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
    end
    object sq_OrderVolumeUnit_No: TIntegerField
      FieldName = 'VolumeUnit_No'
    end
  end
  object dsOrder: TDataSource
    DataSet = cdsOrder
    Left = 360
    Top = 168
  end
  object dspOrder: TDataSetProvider
    DataSet = sq_Order
    Left = 360
    Top = 72
  end
  object cdsOrder: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrder'
    Left = 360
    Top = 120
    object cdsOrderPKValue: TStringField
      FieldName = 'PKValue'
    end
    object cdsOrderOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object cdsOrderSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object cdsOrderOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
    end
    object cdsOrderProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object cdsOrderProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object cdsOrderOrderNoText: TStringField
      FieldName = 'OrderNoText'
    end
    object cdsOrderOrderStatus: TIntegerField
      FieldName = 'OrderStatus'
    end
    object cdsOrderOrderType: TIntegerField
      FieldName = 'OrderType'
    end
    object cdsOrderCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object cdsOrderClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
    object cdsOrderOrderLineDescription: TStringField
      FieldName = 'OrderLineDescription'
      Size = 100
    end
    object cdsOrderNoOfUnits: TFloatField
      FieldName = 'NoOfUnits'
    end
    object cdsOrderLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Size = 100
    end
    object cdsOrderVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object cdsOrderPriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
    end
    object cdsOrderCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object cdsOrderPrice: TFloatField
      FieldName = 'Price'
    end
    object cdsOrderOrderVolume: TFloatField
      FieldName = 'OrderVolume'
    end
    object cdsOrderOrderLineValueSEK: TFloatField
      FieldName = 'OrderLineValueSEK'
    end
    object cdsOrderOrderLineValueCurrency: TFloatField
      FieldName = 'OrderLineValueCurrency'
    end
    object cdsOrderSalesType: TStringField
      FieldName = 'SalesType'
      Size = 5
    end
    object cdsOrderCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 5
    end
    object cdsOrderTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
    end
    object cdsOrderVolumeUnit_No: TIntegerField
      FieldName = 'VolumeUnit_No'
    end
  end
  object sq_SetAvrop: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      ''
      'FROM dbo.CustomerShippingPlanHeader CSH'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 496
    Top = 16
    object sq_SetAvropShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_SetAvropShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
    end
  end
  object cdsSetAvrop: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'OrderNo'
        DataType = ftInteger
      end
      item
        Name = 'ShippingPlanNo'
        DataType = ftInteger
      end
      item
        Name = 'CustomerNo'
        DataType = ftInteger
      end
      item
        Name = 'DeliveryTermsNo'
        DataType = ftInteger
      end
      item
        Name = 'PaymentTermsNo'
        DataType = ftInteger
      end
      item
        Name = 'CurrencyNo'
        DataType = ftInteger
      end
      item
        Name = 'DestinationNo'
        DataType = ftInteger
      end
      item
        Name = 'ShippingPlanStatus'
        DataType = ftInteger
      end
      item
        Name = 'ETDYearWeek'
        DataType = ftInteger
      end
      item
        Name = 'ETDWeekEnd'
        DataType = ftInteger
      end
      item
        Name = 'NoteForLoadSheet'
        DataType = ftMemo
      end
      item
        Name = 'InternalNote'
        DataType = ftMemo
      end
      item
        Name = 'Reference'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MsgToShipper'
        DataType = ftMemo
      end
      item
        Name = 'InvoiceAdditionAmount'
        DataType = ftFloat
      end
      item
        Name = 'InvoiceAdditionUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'InvoiceAdditionDescription'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CreatedUser'
        DataType = ftInteger
      end
      item
        Name = 'ModifiedUser'
        DataType = ftInteger
      end
      item
        Name = 'DateCreated'
        DataType = ftTimeStamp
      end
      item
        Name = 'OurReference'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ClientBillingAddressNo'
        DataType = ftInteger
      end
      item
        Name = 'ShowInList'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cdsSetAvropIndex1'
        Fields = 'ShippingPlanNo'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'ShippingPlanNo'
    Params = <>
    ProviderName = 'dspSetAvrop'
    StoreDefs = True
    OnReconcileError = cdsSetAvropReconcileError
    Left = 496
    Top = 112
    object cdsSetAvropShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object cdsSetAvropShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
    end
  end
  object dspSetAvrop: TDataSetProvider
    DataSet = sq_SetAvrop
    UpdateMode = upWhereKeyOnly
    Left = 496
    Top = 64
  end
  object sq_InvoiceGroup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * '
      'From InvoiceGroup')
    SQLConnection = dmsConnector.SQLConnection
    Left = 600
    Top = 24
  end
  object dsp_InvoiceGroup: TDataSetProvider
    DataSet = sq_InvoiceGroup
    Left = 600
    Top = 72
  end
  object cds_InvoiceGroup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InvoiceGroup'
    Left = 600
    Top = 120
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
    object cds_InvoiceGroupNote: TMemoField
      FieldName = 'Note'
      BlobType = ftMemo
    end
  end
  object cds_InvoiceInGroup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InvoiceInGroup'
    Left = 696
    Top = 120
    object cds_InvoiceInGroupInvoiceGroupNo: TIntegerField
      FieldName = 'InvoiceGroupNo'
    end
    object cds_InvoiceInGroupInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
  end
  object dsp_InvoiceInGroup: TDataSetProvider
    DataSet = sq_InvoiceInGroup
    Left = 696
    Top = 72
  end
  object sq_InvoiceInGroup: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InvoiceGroupNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InvoiceGroupNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select *'
      'FROM InvoiceInGroup'
      'WHERE'
      'InvoiceGroupNo = :InvoiceGroupNo'
      ''
      ''
      
        'SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_' +
        'DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,'
      
        'IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, INO.Invoic' +
        'eNo AS INVOICE_NO,'
      'CASE'
      'WHEN IH.InvoiceType = 0 THEN '#39'NORMAL'#39
      'WHEN IH.InvoiceType = 1 THEN '#39'PROFORMA, INVOICE LATER'#39
      'WHEN IH.InvoiceType = 2 THEN '#39'PROFORMA'#39
      'END AS INVOICE_TYPE,'
      'CASE'
      'WHEN IH.Debit_Credit = 0 THEN '#39'DEBIT'#39
      'WHEN IH.Debit_Credit = 1 THEN '#39'CREDIT'#39
      'END AS INVOICE_KONTO,'
      'IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,'
      'IH.CurrencyName'#9'AS CURRENCY,'
      'RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+'
      'RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID'
      ''
      ''
      'FROM'
      
        'dbo.InvoiceHeader IH, dbo.InvoiceLO IL, dbo.InvoiceNumber INo, d' +
        'bo.InvoiceInGroup IG'
      'WHERE'
      'IG.InvoiceGroupNo = :InvoiceGroupNo'
      'AND INo.InvoiceNo = IG.InvoiceNo'
      'AND IH.InternalInvoiceNo = INo.InternalInvoiceNo'
      'AND IL.InternalInvoiceNo = IH.InternalInvoiceNo'
      ''
      'ORDER BY InvoiceDate'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 696
    Top = 24
  end
  object ds_InvoiceInGroup: TDataSource
    DataSet = cds_InvoiceInGroup
    Left = 696
    Top = 165
  end
  object ds_InvoiceGroup: TDataSource
    DataSet = cds_InvoiceGroup
    Left = 600
    Top = 168
  end
  object sq_Get_CSH_Status: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ShippingPlanStatus'
      ''
      'FROM dbo.CustomerShippingPlanHeader CSH'
      'Where ShippingPlanNo = :ShippingPlanNo'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 456
    Top = 208
    object IntegerField2: TIntegerField
      FieldName = 'ShippingPlanStatus'
    end
  end
  object sq_Avrop: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      'OH.CurrencyNo,'
      'CSH.ShippingPlanStatus'#9#9#9#9'AS STATUS, '#9#9'-- Integer '
      'CSH.ShippingPlanNo '#9#9#9#9'AS LO, '#9#9#9'-- Integer '
      'OH.OrderNoText'#9#9#9#9#9'AS ORDERNUMBER,'#9#9'-- CHAR 20 '
      'isNull(CSH.Reference,'#39' '#39')'#9#9#9'AS REFERENCE,'#9#9'-- VARCHAR 30'
      'isnull(CSH.ETDYearWeek,-1) '#9#9#9'AS FROMWEEK, '#9#9'-- Integer '
      'isnull(CSH.ETDWeekEnd,-1) '#9#9#9'AS TOWEEK, '#9#9'-- Integer '
      'C.ClientName '#9#9#9#9#9'AS CLIENT, '#9#9'-- CHAR 80'
      'isNull(AG.ClientName,'#39' '#39')'#9#9#9'AS AGENT,'#9#9'-- CHAR 80'
      'isNull(CSD.Reference,'#39' '#39')'#9#9#9'AS MARK,'#9#9'-- CHAR 30'
      'OL.OrderLineDescription '#9#9#9'AS PRODUCT,'#9#9'-- Integer'
      'CSD.LengthDescription '#9#9#9#9'AS LENGTH,'#9#9'-- CHAR 100 '
      'isnull(CSD.NoOfUnits,0) '#9#9#9'AS VOLUME ,'#9#9'-- FLOAT '
      ''
      'VU.VolumeUnitName'#9#9#9#9'AS VOLUNIT, '#9#9'-- CHAR 20'
      ''
      'isNull(Cy.CityName,'#39' '#39')'#9#9#9'AS DESTINATION,'#9#9'-- VARCHAR 50'
      ''
      'CSH.OrderNo '#9#9#9#9#9'AS ORDERNO,     '#9'-- Integer '
      'CSH.CustomerNo'#9#9#9#9#9'AS CLIENTNO, '#9#9'-- Integer '
      'CSH.DestinationNo'#9#9#9#9'AS DESTINATIONNO, '#9'-- Integer '
      'CSD.CustShipPlanDetailObjectNo '#9#9#9'AS UNIQUERECORDNO,'#9'-- Integer'
      'OH.SalesRegionNo'#9#9#9#9'AS SALESREGIONNO,'#9'-- Integer'
      'OH.OrderType'#9#9#9#9#9'AS ORDERTYPE'#9#9'-- INTEGER'
      ''
      'FROM dbo.CustomerShippingPlanHeader CSH'
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD '#9'ON  '#9'CSD.Shippi' +
        'ngPlanNo '#9'= CSH.ShippingPlanNo'
      #9'LEFT OUTER JOIN ShippingPlan_ShippingAddress SSAD'#9
      #9'INNER JOIN Address'#9'ADDR'#9#9#9'ON'#9'ADDR.ADDRESSNO'#9'= SSAD.ADDRESSNO'
      #9'Left Outer JOIN dbo.City'#9#9'Cy '#9#9'ON  '#9'ADDR.CityNo'#9'= Cy.CityNo '
      #9#9#9#9#9#9#9#9'ON SSAD.ShippingPlanNo = CSD.ShippingPlanNo '
      #9#9#9#9#9#9#9#9'AND SSAD.Reference'#9'= CSD.REFERENCE'
      ''
      #9'INNER JOIN dbo.Client '#9#9#9'C'#9'ON '#9'C.ClientNo'#9#9'= CSH.CustomerNo'
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= CSH.OrderNo'
      #9'INNER JOIN dbo.OrderLine '#9#9'OL'#9'ON'#9'OL.OrderNo '#9#9'= CSD.OrderNo'
      #9#9#9#9#9#9#9'AND '#9'OL.OrderLineNo '#9#9'= CSD.OrderLineNo'
      
        #9'INNER JOIN dbo.UnitName '#9#9'VU'#9'ON '#9'VU.VolumeUnit_No '#9'= OL.VolumeU' +
        'nitNo'
      ''
      
        #9'LEFT  OUTER JOIN dbo.Client'#9#9'AG'#9'ON  '#9'OH.AgentNo'#9'       '#9'= AG.Cl' +
        'ientNo '
      ''
      ''
      'WHERE'
      'CSH.SHIPPINGPLANSTATUS = -1'
      'AND OH.OrderType = -1'
      'AND OH.SalesRegionNo = -1'
      'AND C.MarketRegionNo = -1'
      'AND'
      'CSH.CustomerNo in (Select LNI.CustomerNo'
      'FROM dbo.VIS_LoadsNotInvoiced LNI'#9#9
      'WHERE LNI.ShippingPlanNo = CSH.ShippingPlanNo)'
      'AND CSH.ShippingPlanno = -1')
    SQLConnection = dmsConnector.SQLConnection
    Left = 24
    Top = 24
    object sq_AvropCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object sq_AvropSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object sq_AvropLO: TIntegerField
      FieldName = 'LO'
    end
    object sq_AvropORDERNUMBER: TStringField
      FieldName = 'ORDERNUMBER'
    end
    object sq_AvropREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Size = 30
    end
    object sq_AvropFROMWEEK: TIntegerField
      FieldName = 'FROMWEEK'
    end
    object sq_AvropTOWEEK: TIntegerField
      FieldName = 'TOWEEK'
    end
    object sq_AvropCLIENT: TStringField
      FieldName = 'CLIENT'
      Size = 80
    end
    object sq_AvropAGENT: TStringField
      FieldName = 'AGENT'
      Size = 80
    end
    object sq_AvropMARK: TStringField
      FieldName = 'MARK'
      Size = 30
    end
    object sq_AvropPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object sq_AvropLENGTH: TStringField
      FieldName = 'LENGTH'
      FixedChar = True
      Size = 100
    end
    object sq_AvropVOLUME: TFloatField
      FieldName = 'VOLUME'
    end
    object sq_AvropVOLUNIT: TStringField
      FieldName = 'VOLUNIT'
      Size = 10
    end
    object sq_AvropDESTINATION: TStringField
      FieldName = 'DESTINATION'
      Size = 50
    end
    object sq_AvropORDERNO: TIntegerField
      FieldName = 'ORDERNO'
    end
    object sq_AvropCLIENTNO: TIntegerField
      FieldName = 'CLIENTNO'
    end
    object sq_AvropDESTINATIONNO: TIntegerField
      FieldName = 'DESTINATIONNO'
    end
    object sq_AvropUNIQUERECORDNO: TIntegerField
      FieldName = 'UNIQUERECORDNO'
    end
    object sq_AvropSALESREGIONNO: TIntegerField
      FieldName = 'SALESREGIONNO'
    end
    object sq_AvropORDERTYPE: TIntegerField
      FieldName = 'ORDERTYPE'
    end
  end
  object sq_FindLONo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'LS.ShippingPlanNo AS LONo'
      ''
      'FROM LoadShippingPlan LS'
      'WHERE LS.LoadNo = :LoadNo'
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 169
    Top = 264
    object sq_FindLONoLONo: TIntegerField
      FieldName = 'LONo'
    end
  end
end
