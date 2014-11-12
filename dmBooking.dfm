object dm_Booking: Tdm_Booking
  OldCreateOrder = False
  Height = 580
  Width = 799
  object dsShippers: TDataSource
    DataSet = cdsShippers
    Left = 48
    Top = 80
  end
  object dsBooking: TDataSource
    DataSet = cdsBooking
    Left = 144
    Top = 80
  end
  object dsVoyageDestination: TDataSource
    DataSet = cdsVoyageDestination
    Left = 248
    Top = 80
  end
  object dsVoyage: TDataSource
    DataSet = cdsVoyage
    Left = 376
    Top = 80
  end
  object dsCurrency: TDataSource
    DataSet = cdsCurrency
    Left = 64
    Top = 248
  end
  object dsVolUnit: TDataSource
    DataSet = cdsVolUnit
    Left = 184
    Top = 248
  end
  object dsBookingType: TDataSource
    DataSet = cdsBookingType
    Left = 280
    Top = 248
  end
  object dsAvropInfo: TDataSource
    DataSet = cdsAvropInfo
    Left = 400
    Top = 248
  end
  object dsBookingProducts: TDataSource
    DataSet = cdsBookingProducts
    Left = 528
    Top = 248
  end
  object dsCarrier: TDataSource
    DataSet = cdsCarrier
    Left = 672
    Top = 248
  end
  object cdsCarrier: TADQuery
    AfterInsert = cdsCarrierAfterInsert
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Select *'
      'From dbo.Carrier'
      '')
    Left = 672
    Top = 192
    object cdsCarrierCarrierNo: TIntegerField
      FieldName = 'CarrierNo'
      Origin = 'CarrierNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCarrierCarrierName: TStringField
      FieldName = 'CarrierName'
      Origin = 'CarrierName'
      FixedChar = True
      Size = 50
    end
    object cdsCarrierSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cdsCarrierCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsCarrierModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsCarrierDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cdsBookingProducts: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'SELECT   '
      'SPSA.Reference'#9#9'AS REFERENCE, '
      'AD.AddressName'#9#9'AS DEL_ADDRESS, '
      'Supp.ClientName '#9'AS SUPPLIER, '
      'Loc.CityName '#9#9'AS LOADING_LOCATION,'
      'OL.OrderLineDescription'#9'AS PRODUCT_DESCRIPTION, '
      'CSD.LengthDescription'#9'AS LENGTH_DESCRIPTION, '
      'Su.NoOfUnits'#9#9'AS NOOFUNITS, '
      'Un.VolumeUnitName'#9'AS VOLUNIT,'
      'Su.ActualM3Net'#9#9'AS ACTM3,'
      'SPSA.AddressNo'#9#9'AS ADDRESS_NO,'
      'AD.CityNo'#9#9'AS CITY_NO,'
      'Cy.CityName             AS CITY_NAME,'
      'AD.PostalCode           AS POSTALCODE'
      ''
      'FROM dbo.CustomerShippingPlanHeader CSH'
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD  ON  CSD.Shippin' +
        'gPlanNo           = CSH.ShippingPlanNo'
      
        #9'INNER JOIN dbo.OrderLine OL  '#9#9#9'ON  OL.OrderNo           '#9'= CSD' +
        '.OrderNo'
      #9#9#9#9#9#9#9'AND OL.OrderLineNo           '#9'= CSD.OrderLineNo'
      ''
      'LEFT OUTER JOIN dbo.SupplierShippingPlan Su'
      #9'INNER JOIN dbo.Client'#9#9'Supp'#9#9'ON Supp.ClientNo'#9'='#9'Su.SupplierNo'
      
        #9'Left Outer JOIN dbo.UnitName'#9' Un'#9#9'ON Un.VolumeUnit_No'#9'='#9'Su.Volu' +
        'meUnitNo'
      
        #9'left outer JOIN dbo.City'#9' Loc'#9#9'ON Loc.CityNo'#9#9'='#9'Su.LoadingLocat' +
        'ionNo'
      
        'ON Su.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailObjectN' +
        'o'
      ''
      ''
      ''
      ''
      #9'LEFT OUTER JOIN dbo.ShippingPlan_ShippingAddress SPSA'
      ''
      
        #9'LEFT OUTER JOIN dbo.Address'#9'AD'#9#9#9#9'ON AD.AddressNo '#9'= SPSA.Addre' +
        'ssNo'
      #9'LEFT OUTER JOIN dbo.City'#9'Cy'#9#9#9#9'ON Cy.CityNo'#9#9'= AD.CityNo'
      
        #9'LEFT OUTER JOIN dbo.Country  Co'#9#9#9#9'        ON Co.CountryNo'#9#9'= A' +
        'D.CountryNo'
      ''
      
        #9#9#9#9#9#9#9'                ON  SPSA.ShippingPlanNo           = CSD.S' +
        'hippingPlanNo'
      
        '                                                                ' +
        '        AND SPSA.Reference'#9#9'= CSD.Reference'
      ''
      'WHERE  CSH.ShippingPlanNo = :ShippingPlanNo'
      ''
      ''
      '')
    Left = 528
    Top = 192
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsBookingProductsREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      FixedChar = True
      Size = 50
    end
    object cdsBookingProductsDEL_ADDRESS: TStringField
      FieldName = 'DEL_ADDRESS'
      Origin = 'DEL_ADDRESS'
      Size = 80
    end
    object cdsBookingProductsSUPPLIER: TStringField
      FieldName = 'SUPPLIER'
      Origin = 'SUPPLIER'
      Size = 80
    end
    object cdsBookingProductsLOADING_LOCATION: TStringField
      FieldName = 'LOADING_LOCATION'
      Origin = 'LOADING_LOCATION'
      Size = 50
    end
    object cdsBookingProductsPRODUCT_DESCRIPTION: TStringField
      FieldName = 'PRODUCT_DESCRIPTION'
      Origin = 'PRODUCT_DESCRIPTION'
      Size = 150
    end
    object cdsBookingProductsLENGTH_DESCRIPTION: TStringField
      FieldName = 'LENGTH_DESCRIPTION'
      Origin = 'LENGTH_DESCRIPTION'
      FixedChar = True
      Size = 100
    end
    object cdsBookingProductsNOOFUNITS: TFloatField
      FieldName = 'NOOFUNITS'
      Origin = 'NOOFUNITS'
    end
    object cdsBookingProductsVOLUNIT: TStringField
      FieldName = 'VOLUNIT'
      Origin = 'VOLUNIT'
      Size = 10
    end
    object cdsBookingProductsACTM3: TFloatField
      FieldName = 'ACTM3'
      Origin = 'ACTM3'
    end
    object cdsBookingProductsADDRESS_NO: TIntegerField
      FieldName = 'ADDRESS_NO'
      Origin = 'ADDRESS_NO'
    end
    object cdsBookingProductsCITY_NO: TIntegerField
      FieldName = 'CITY_NO'
      Origin = 'CITY_NO'
    end
    object cdsBookingProductsCITY_NAME: TStringField
      FieldName = 'CITY_NAME'
      Origin = 'CITY_NAME'
      Size = 50
    end
    object cdsBookingProductsPOSTALCODE: TStringField
      FieldName = 'POSTALCODE'
      Origin = 'POSTALCODE'
      FixedChar = True
    end
  end
  object cdsAvropInfo: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'SELECT '
      'CSH.ShippingPlanNo, '
      'O.OrderNoText, '
      'CSH.Reference, '
      'CSH.ETDYearWeek, '
      'CSH.ETDWeekEnd, '
      'Ag.ClientName AS Agent, '
      'Cu.ClientName AS Customer,'
      'O.LOText,'
      'CSH.NoteForLoadSheet,'
      'O.InvoiceText,'
      'O.OrderType'
      ''
      'FROM dbo.CustomerShippingPlanHeader CSH'
      'INNER JOIN dbo.Orders'#9'O'#9'ON O.OrderNo = CSH.OrderNo'
      'INNER JOIN dbo.Client'#9'Cu'#9'ON Cu.ClientNo = CSH.CustomerNo'
      'LEFT JOIN  dbo.Client'#9'Ag'#9'ON Ag.ClientNo = O.AgentNo'#9
      ''
      'WHERE'
      ' CSH.ShippingPlanNo = :ShippingPlanNo'
      '')
    Left = 400
    Top = 192
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsAvropInfoShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAvropInfoOrderNoText: TStringField
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
      Required = True
    end
    object cdsAvropInfoReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      Size = 30
    end
    object cdsAvropInfoETDYearWeek: TIntegerField
      FieldName = 'ETDYearWeek'
      Origin = 'ETDYearWeek'
    end
    object cdsAvropInfoETDWeekEnd: TIntegerField
      FieldName = 'ETDWeekEnd'
      Origin = 'ETDWeekEnd'
    end
    object cdsAvropInfoAgent: TStringField
      FieldName = 'Agent'
      Origin = 'Agent'
      Size = 80
    end
    object cdsAvropInfoCustomer: TStringField
      FieldName = 'Customer'
      Origin = 'Customer'
      Size = 80
    end
    object cdsAvropInfoLOText: TMemoField
      FieldName = 'LOText'
      Origin = 'LOText'
      BlobType = ftMemo
    end
    object cdsAvropInfoNoteForLoadSheet: TMemoField
      FieldName = 'NoteForLoadSheet'
      Origin = 'NoteForLoadSheet'
      BlobType = ftMemo
    end
    object cdsAvropInfoInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      BlobType = ftMemo
    end
    object cdsAvropInfoOrderType: TIntegerField
      FieldName = 'OrderType'
      Origin = 'OrderType'
    end
  end
  object cdsBookingType: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Select * from BookingType'
      '')
    Left = 280
    Top = 192
    object cdsBookingTypeBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBookingTypeBookingType: TStringField
      FieldName = 'BookingType'
      Origin = 'BookingType'
      FixedChar = True
      Size = 30
    end
    object cdsBookingTypeCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsBookingTypeModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsBookingTypeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsBookingTypeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
  end
  object cdsVolUnit: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Select * from PackUnit'
      '')
    Left = 184
    Top = 192
    object cdsVolUnitTemplateUnitNo: TIntegerField
      FieldName = 'TemplateUnitNo'
      Origin = 'TemplateUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVolUnitTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
      Origin = 'TemplateUnitName'
      Required = True
    end
    object cdsVolUnitDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsVolUnitCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsVolUnitModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsVolUnitSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
  end
  object cdsCurrency: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Select * from Currency'
      '')
    Left = 64
    Top = 192
    object cdsCurrencyCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCurrencyCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Origin = 'CurrencyName'
      Required = True
      Size = 5
    end
    object cdsCurrencyDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsCurrencyCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsCurrencyModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsCurrencySequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
  end
  object cdsVoyage: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Select * from Voyage'
      'Where VoyageNo = :VoyageNo'
      '')
    Left = 376
    Top = 32
    ParamData = <
      item
        Name = 'VOYAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsVoyageVoyageNo: TIntegerField
      FieldName = 'VoyageNo'
      Origin = 'VoyageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVoyageCarrierNo: TIntegerField
      FieldName = 'CarrierNo'
      Origin = 'CarrierNo'
    end
    object cdsVoyageETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
    end
    object cdsVoyageLoadingPortNo: TIntegerField
      FieldName = 'LoadingPortNo'
      Origin = 'LoadingPortNo'
    end
    object cdsVoyageSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cdsVoyageCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsVoyageModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsVoyageDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsVoyageETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
    end
  end
  object cdsVoyageDestination: TADQuery
    AfterInsert = cdsVoyageDestinationAfterInsert
    AfterEdit = cdsVoyageDestinationAfterEdit
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Select * from VoyageDestination'
      'Where BookingNo = :BookingNo'
      '')
    Left = 248
    Top = 32
    ParamData = <
      item
        Name = 'BOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsVoyageDestinationBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVoyageDestinationDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVoyageDestinationETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
    end
    object cdsVoyageDestinationStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cdsVoyageDestinationClearedDate: TSQLTimeStampField
      FieldName = 'ClearedDate'
      Origin = 'ClearedDate'
    end
    object cdsVoyageDestinationCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsVoyageDestinationModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsVoyageDestinationDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cdsBooking: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Select * from Booking'
      'Where ShippingPlanNo = :ShippingPlanNo'
      '')
    Left = 144
    Top = 32
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsBookingBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBookingShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object cdsBookingVoyageNo: TIntegerField
      FieldName = 'VoyageNo'
      Origin = 'VoyageNo'
    end
    object cdsBookingShippingCompanyNo: TIntegerField
      FieldName = 'ShippingCompanyNo'
      Origin = 'ShippingCompanyNo'
    end
    object cdsBookingDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
    end
    object cdsBookingShippingCompanyBookingID: TStringField
      FieldName = 'ShippingCompanyBookingID'
      Origin = 'ShippingCompanyBookingID'
    end
    object cdsBookingBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
    end
    object cdsBookingVolumeBooked: TFloatField
      FieldName = 'VolumeBooked'
      Origin = 'VolumeBooked'
    end
    object cdsBookingVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
    end
    object cdsBookingRequestedShipDate: TSQLTimeStampField
      FieldName = 'RequestedShipDate'
      Origin = 'RequestedShipDate'
    end
    object cdsBookingRequestedShipTime: TSQLTimeStampField
      FieldName = 'RequestedShipTime'
      Origin = 'RequestedShipTime'
    end
    object cdsBookingShippersShipDate: TSQLTimeStampField
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
    end
    object cdsBookingShippersShipTime: TSQLTimeStampField
      FieldName = 'ShippersShipTime'
      Origin = 'ShippersShipTime'
    end
    object cdsBookingSupplierReference: TStringField
      FieldName = 'SupplierReference'
      Origin = 'SupplierReference'
      Size = 50
    end
    object cdsBookingFreightCost: TFloatField
      FieldName = 'FreightCost'
      Origin = 'FreightCost'
    end
    object cdsBookingFreightCostVolUnit: TIntegerField
      FieldName = 'FreightCostVolUnit'
      Origin = 'FreightCostVolUnit'
    end
    object cdsBookingFreightCostCurrency: TIntegerField
      FieldName = 'FreightCostCurrency'
      Origin = 'FreightCostCurrency'
    end
    object cdsBookingSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cdsBookingCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsBookingModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsBookingDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsBookingStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cdsBookingPreliminaryRequestedPeriod: TStringField
      FieldName = 'PreliminaryRequestedPeriod'
      Origin = 'PreliminaryRequestedPeriod'
      Size = 30
    end
    object cdsBookingLOText: TMemoField
      FieldName = 'LOText'
      Origin = 'LOText'
      BlobType = ftMemo
    end
    object cdsBookingInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      BlobType = ftMemo
    end
    object cdsBookingNoteForLoadSheet: TMemoField
      FieldName = 'NoteForLoadSheet'
      Origin = 'NoteForLoadSheet'
      BlobType = ftMemo
    end
    object cdsBookingVesselOrPort: TStringField
      FieldName = 'VesselOrPort'
      Origin = 'VesselOrPort'
      Size = 50
    end
    object cdsBookingPanic_Note: TStringField
      FieldName = 'Panic_Note'
      Origin = 'Panic_Note'
      Size = 50
    end
  end
  object cdsShippers: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'vida_Shippers'
    Left = 48
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end>
    object cdsShippersClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object cdsShippersClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object SQLQuery1: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Select * from dbo.Booking'
      ''
      'WHERE'
      'BookingNo = :pBookingNo'
      '')
    Left = 672
    Top = 40
    ParamData = <
      item
        Name = 'PBOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object SQLQuery1BookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLQuery1ShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object SQLQuery1VoyageNo: TIntegerField
      FieldName = 'VoyageNo'
      Origin = 'VoyageNo'
    end
    object SQLQuery1ShippingCompanyNo: TIntegerField
      FieldName = 'ShippingCompanyNo'
      Origin = 'ShippingCompanyNo'
    end
    object SQLQuery1DestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
    end
    object SQLQuery1ShippingCompanyBookingID: TStringField
      FieldName = 'ShippingCompanyBookingID'
      Origin = 'ShippingCompanyBookingID'
    end
    object SQLQuery1BookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
    end
    object SQLQuery1VolumeBooked: TFloatField
      FieldName = 'VolumeBooked'
      Origin = 'VolumeBooked'
    end
    object SQLQuery1VolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
    end
    object SQLQuery1RequestedShipDate: TSQLTimeStampField
      FieldName = 'RequestedShipDate'
      Origin = 'RequestedShipDate'
    end
    object SQLQuery1RequestedShipTime: TSQLTimeStampField
      FieldName = 'RequestedShipTime'
      Origin = 'RequestedShipTime'
    end
    object SQLQuery1ShippersShipDate: TSQLTimeStampField
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
    end
    object SQLQuery1ShippersShipTime: TSQLTimeStampField
      FieldName = 'ShippersShipTime'
      Origin = 'ShippersShipTime'
    end
    object SQLQuery1SupplierReference: TStringField
      FieldName = 'SupplierReference'
      Origin = 'SupplierReference'
      Size = 50
    end
    object SQLQuery1FreightCost: TFloatField
      FieldName = 'FreightCost'
      Origin = 'FreightCost'
    end
    object SQLQuery1FreightCostVolUnit: TIntegerField
      FieldName = 'FreightCostVolUnit'
      Origin = 'FreightCostVolUnit'
    end
    object SQLQuery1FreightCostCurrency: TIntegerField
      FieldName = 'FreightCostCurrency'
      Origin = 'FreightCostCurrency'
    end
    object SQLQuery1SequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object SQLQuery1CreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object SQLQuery1ModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object SQLQuery1DateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object SQLQuery1Status: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object SQLQuery1PreliminaryRequestedPeriod: TStringField
      FieldName = 'PreliminaryRequestedPeriod'
      Origin = 'PreliminaryRequestedPeriod'
      Size = 30
    end
    object SQLQuery1LOText: TMemoField
      FieldName = 'LOText'
      Origin = 'LOText'
      BlobType = ftMemo
    end
    object SQLQuery1InvoiceText: TMemoField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      BlobType = ftMemo
    end
    object SQLQuery1NoteForLoadSheet: TMemoField
      FieldName = 'NoteForLoadSheet'
      Origin = 'NoteForLoadSheet'
      BlobType = ftMemo
    end
    object SQLQuery1VesselOrPort: TStringField
      FieldName = 'VesselOrPort'
      Origin = 'VesselOrPort'
      Size = 50
    end
    object SQLQuery1Panic_Note: TStringField
      FieldName = 'Panic_Note'
      Origin = 'Panic_Note'
      Size = 50
    end
  end
  object sp_Carriers: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'vida_Carriers'
    Left = 464
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end>
  end
  object sp_Cities: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'vida_Cities'
    Left = 552
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end>
  end
end
