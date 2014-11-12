object dmModule1: TdmModule1
  OldCreateOrder = False
  Height = 642
  Width = 1059
  object SQLSPClient: TSQLStoredProc
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
        Name = 'RoleType'
        ParamType = ptInput
        Value = '1'
      end>
    StoredProcName = 'vida_Clients'
    Left = 544
    Top = 16
    object SQLSPClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      Required = True
    end
    object SQLSPClientClientName: TStringField
      FieldName = 'ClientName'
      Required = True
      Size = 80
    end
  end
  object dsClient: TDataSource
    DataSet = cdsClient
    Left = 544
    Top = 160
  end
  object dspClient: TDataSetProvider
    DataSet = SQLSPClient
    UpdateMode = upWhereChanged
    Left = 544
    Top = 64
  end
  object cdsClient: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClient'
    Left = 544
    Top = 112
    object cdsClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      Required = True
    end
    object cdsClientClientName: TStringField
      FieldName = 'ClientName'
      Required = True
      Size = 80
    end
  end
  object sq_ClientData: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTNO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      'CP.DefaultBillingAddressNo,'
      'C.ClientName,'
      'C.ClientNo,'
      'CP.InvoiceText,'
      'CP.LanguageCode,'
      'DT.DeliveryTerm,'
      'DT.DeliveryTerm_No,'
      ''
      'PayT.PaymentTermsNo,'
      'PT."Description" as PayDesc,'
      'PayT.FreightInDiscount,'
      'PayT.FreightInCommission ,'
      'PayT.CommissionPaidByCustomer,'
      'PayT.Discount1,'
      ''
      'CU.CurrencyNo,'
      ''
      'CU.CurrencyName'#9#9#9'AS CURRENCYNAME,'
      'FDR.AddressName'#9#9#9'AS BILL_ADDRESS_NAME,'
      'FDR.AddressLine1'#9#9'AS BILL_ADDRESSLINE1,'
      'FDR.AddressLine2'#9#9'AS BILL_ADDRESSLINE2,'
      'FDR.AddressLine3'#9#9'AS BILL_ADDRESSLINE3,'
      'FDR.AddressLine4'#9#9'AS BILL_ADDRESSLINE4,'
      'FDR.StateOrProvince'#9#9'AS BILL_STATEORPROVINCE,'
      'FDR.PostalCode'#9#9#9'AS BILL_POSTALCODE,'
      'FDrCY.CityName '#9#9#9'AS BILL_ADDRESSCITY,'
      'FDrCtry.CountryName '#9#9'AS BILL_ADDRESSCOUNTRY,'
      ''
      'ST_ADR.AddressName'#9#9#9'AS SHIPTO_ADDRESS_NAME,'
      'ST_ADR.AddressLine1'#9#9#9'AS SHIPTO_ADDRESSLINE1,'
      'ST_ADR.AddressLine2'#9#9#9'AS SHIPTO_ADDRESSLINE2,'#9
      'ST_ADR.AddressLine3'#9#9#9'AS SHIPTO_ADDRESSLINE3,'
      'ST_ADR.AddressLine4'#9#9#9'AS SHIPTO_ADDRESSLINE4,'
      'ST_ADR.StateOrProvince'#9#9#9'AS SHIPTO_PROVINCE,'
      'ST_ADR.PostalCode'#9#9#9'AS SHIPTO_POSTALCODE,'
      'ST_AdrCY.CityName '#9#9#9'AS SHIPTO_CITY,'
      'ST_AdrCtry.CountryName '#9#9#9'AS SHIPTO_COUNTRY'
      ''
      ''
      ''
      ''
      'FROM dbo.Client C'
      '       left outer join ClientPreference CP'
      ''
      
        #9'INNER JOIN dbo.Currency'#9#9#9'CU'#9'ON'#9'CU.CurrencyNo'#9#9'= CP.DefaultCurr' +
        'encyNo'
      ''
      
        #9'INNER JOIN dbo.DeliveryTerm'#9#9'DT'#9'ON'#9'DT.DeliveryTerm_No'#9'= CP.Defa' +
        'ultDeliveryTermsNo'
      ''
      
        #9'INNER JOIN dbo.PaymentTerms'#9#9'PayT'#9'ON'#9'PayT.PaymentTermsNo'#9'= CP.D' +
        'efaultPaymentTermsNo'
      ''
      
        #9'INNER JOIN dbo.PaymentTermDesc'#9#9'PT'#9'ON'#9'PT.PaymentTermsNo'#9'= CP.De' +
        'faultPaymentTermsNo'
      #9#9#9#9#9#9#9'AND '#9'PT.LanguageCode'#9#9'= CP.LanguageCode'
      ''
      ''
      
        #9'INNER JOIN dbo.Address '#9#9'FDR'#9#9'ON'#9'FDR.AddressNo'#9#9'= CP.DefaultBil' +
        'lingAddressNo'
      #9'INNER JOIN dbo.CITY'#9#9'FDrCY'#9#9'ON'#9'FDrCY.CityNo '#9#9'= FDR.CityNo'
      
        #9'INNER JOIN dbo.Country'#9#9'FDrCtry'#9#9'ON'#9'FDrCtry.CountryNo '#9'= FDR.Co' +
        'untryNo'
      ''
      #9'LEFT OUTER JOIN dbo.Address '#9#9'ST_ADR'#9#9
      
        #9'INNER JOIN dbo.CITY'#9#9'ST_AdrCY'#9'ON'#9'ST_AdrCY.CityNo '#9'= ST_ADR.City' +
        'No'
      
        #9'INNER JOIN dbo.Country'#9#9'ST_AdrCtry'#9'ON'#9'ST_AdrCtry.CountryNo '#9'= S' +
        'T_ADR.CountryNo'
      #9#9#9#9#9#9#9'ON'#9'ST_ADR.AddressNo'#9'= CP.DefaultShippingAddressNo'
      ''
      #9#9#9#9#9' '#9#9'ON'#9'CP.ClientNo = C.ClientNo'
      ''
      'WHERE'
      'C.CLIENTNO = :CLIENTNO ')
    Left = 624
    Top = 16
    object sq_ClientDataClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
    object sq_ClientDataClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object sq_ClientDataInvoiceText: TStringField
      FieldName = 'InvoiceText'
      Size = 250
    end
    object sq_ClientDataDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Size = 21
    end
    object sq_ClientDataPayDesc: TStringField
      FieldName = 'PayDesc'
      Size = 100
    end
    object sq_ClientDataFreightInDiscount: TIntegerField
      FieldName = 'FreightInDiscount'
    end
    object sq_ClientDataFreightInCommission: TIntegerField
      FieldName = 'FreightInCommission'
    end
    object sq_ClientDataCommissionPaidByCustomer: TIntegerField
      FieldName = 'CommissionPaidByCustomer'
    end
    object sq_ClientDataDiscount1: TFloatField
      FieldName = 'Discount1'
    end
    object sq_ClientDataCURRENCYNAME: TStringField
      FieldName = 'CURRENCYNAME'
      Size = 5
    end
    object sq_ClientDataBILL_ADDRESS_NAME: TStringField
      FieldName = 'BILL_ADDRESS_NAME'
      Size = 80
    end
    object sq_ClientDataBILL_ADDRESSLINE1: TStringField
      FieldName = 'BILL_ADDRESSLINE1'
      Size = 40
    end
    object sq_ClientDataBILL_ADDRESSLINE2: TStringField
      FieldName = 'BILL_ADDRESSLINE2'
      Size = 40
    end
    object sq_ClientDataBILL_ADDRESSLINE3: TStringField
      FieldName = 'BILL_ADDRESSLINE3'
      Size = 40
    end
    object sq_ClientDataBILL_ADDRESSLINE4: TStringField
      FieldName = 'BILL_ADDRESSLINE4'
      Size = 40
    end
    object sq_ClientDataBILL_STATEORPROVINCE: TStringField
      FieldName = 'BILL_STATEORPROVINCE'
      Size = 40
    end
    object sq_ClientDataBILL_POSTALCODE: TStringField
      FieldName = 'BILL_POSTALCODE'
    end
    object sq_ClientDataBILL_ADDRESSCITY: TStringField
      FieldName = 'BILL_ADDRESSCITY'
      Size = 50
    end
    object sq_ClientDataBILL_ADDRESSCOUNTRY: TStringField
      FieldName = 'BILL_ADDRESSCOUNTRY'
      Size = 30
    end
    object sq_ClientDataSHIPTO_ADDRESS_NAME: TStringField
      FieldName = 'SHIPTO_ADDRESS_NAME'
      Size = 80
    end
    object sq_ClientDataSHIPTO_ADDRESSLINE1: TStringField
      FieldName = 'SHIPTO_ADDRESSLINE1'
      Size = 40
    end
    object sq_ClientDataSHIPTO_ADDRESSLINE2: TStringField
      FieldName = 'SHIPTO_ADDRESSLINE2'
      Size = 40
    end
    object sq_ClientDataSHIPTO_ADDRESSLINE3: TStringField
      FieldName = 'SHIPTO_ADDRESSLINE3'
      Size = 40
    end
    object sq_ClientDataSHIPTO_ADDRESSLINE4: TStringField
      FieldName = 'SHIPTO_ADDRESSLINE4'
      Size = 40
    end
    object sq_ClientDataSHIPTO_PROVINCE: TStringField
      FieldName = 'SHIPTO_PROVINCE'
      Size = 40
    end
    object sq_ClientDataSHIPTO_POSTALCODE: TStringField
      FieldName = 'SHIPTO_POSTALCODE'
    end
    object sq_ClientDataSHIPTO_CITY: TStringField
      FieldName = 'SHIPTO_CITY'
      Size = 50
    end
    object sq_ClientDataSHIPTO_COUNTRY: TStringField
      FieldName = 'SHIPTO_COUNTRY'
      Size = 30
    end
    object sq_ClientDataDeliveryTerm_No: TIntegerField
      FieldName = 'DeliveryTerm_No'
    end
    object sq_ClientDataPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
    end
    object sq_ClientDataCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object sq_ClientDataDefaultBillingAddressNo: TIntegerField
      FieldName = 'DefaultBillingAddressNo'
    end
    object sq_ClientDataLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
    end
  end
  object sq_Destination: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end>
    StoredProcName = 'vida_Cities'
    Left = 704
    Top = 16
    object sq_DestinationCityNo: TIntegerField
      FieldName = 'CityNo'
      Required = True
    end
    object sq_DestinationCityName: TStringField
      FieldName = 'CityName'
      Required = True
      Size = 50
    end
  end
  object dspDestination: TDataSetProvider
    DataSet = sq_Destination
    UpdateMode = upWhereKeyOnly
    Left = 704
    Top = 64
  end
  object cdsDestination: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDestination'
    Left = 704
    Top = 112
    object cdsDestinationCityNo: TIntegerField
      FieldName = 'CityNo'
      Required = True
    end
    object cdsDestinationCityName: TStringField
      FieldName = 'CityName'
      Required = True
      Size = 50
    end
  end
  object dsDestination: TDataSource
    DataSet = cdsDestination
    Left = 704
    Top = 160
  end
  object sq_ClientAddress: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'AddressType'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ''
      'ST_ADR.AddressNo'#9#9#9'AS ADDRESS_NO,'
      'ST_ADR.AddressName'#9#9#9'AS ADDRESS_NAME,'
      'ST_ADR.AddressLine1'#9#9#9'AS ADDRESSLINE1,'
      'ST_ADR.AddressLine2'#9#9#9'AS ADDRESSLINE2,'
      'ST_ADR.AddressLine3'#9#9#9'AS ADDRESSLINE3,'
      'ST_ADR.AddressLine4'#9#9#9'AS ADDRESSLINE4,'
      'ST_ADR.StateOrProvince'#9#9#9'AS PROVINCE,'
      'ST_ADR.PostalCode'#9#9#9'AS POSTALCODE,'
      'ST_AdrCY.CityName '#9#9#9'AS CITY,'
      'ST_AdrCtry.CountryName '#9#9#9'AS COUNTRY'
      ''
      ''
      ''
      'FROM CompanyAddress ST'
      
        #9'INNER JOIN dbo.Address '#9#9'ST_ADR'#9#9'ON'#9'ST_ADR.AddressNo'#9'= ST.Addre' +
        'ssNo'
      
        #9'INNER JOIN dbo.CITY'#9#9'ST_AdrCY'#9'ON'#9'ST_AdrCY.CityNo '#9'= ST_ADR.City' +
        'No'
      
        #9'INNER JOIN dbo.Country'#9#9'ST_AdrCtry'#9'ON'#9'ST_AdrCtry.CountryNo '#9'= S' +
        'T_ADR.CountryNo'
      ''
      ''
      'WHERE'
      ' ST.ClientNo = :ClientNo'
      ' AND ST.AddressType = :AddressType'
      ''
      ''
      '')
    Left = 32
    Top = 232
    object sq_ClientAddressADDRESS_NO: TIntegerField
      FieldName = 'ADDRESS_NO'
    end
    object sq_ClientAddressADDRESS_NAME: TStringField
      FieldName = 'ADDRESS_NAME'
      Size = 80
    end
    object sq_ClientAddressADDRESSLINE1: TStringField
      FieldName = 'ADDRESSLINE1'
      Size = 40
    end
    object sq_ClientAddressADDRESSLINE2: TStringField
      FieldName = 'ADDRESSLINE2'
      Size = 40
    end
    object sq_ClientAddressADDRESSLINE3: TStringField
      FieldName = 'ADDRESSLINE3'
      Size = 40
    end
    object sq_ClientAddressADDRESSLINE4: TStringField
      FieldName = 'ADDRESSLINE4'
      Size = 40
    end
    object sq_ClientAddressPROVINCE: TStringField
      FieldName = 'PROVINCE'
      Size = 40
    end
    object sq_ClientAddressPOSTALCODE: TStringField
      FieldName = 'POSTALCODE'
    end
    object sq_ClientAddressCITY: TStringField
      FieldName = 'CITY'
      Size = 50
    end
    object sq_ClientAddressCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 30
    end
  end
  object dspClientAddress: TDataSetProvider
    DataSet = sq_ClientAddress
    UpdateMode = upWhereChanged
    Left = 32
    Top = 280
  end
  object cdsClientAddress: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientAddress'
    Left = 32
    Top = 328
    object cdsClientAddressADDRESS_NO: TIntegerField
      FieldName = 'ADDRESS_NO'
    end
    object cdsClientAddressADDRESS_NAME: TStringField
      FieldName = 'ADDRESS_NAME'
      Size = 80
    end
    object cdsClientAddressADDRESSLINE1: TStringField
      FieldName = 'ADDRESSLINE1'
      Size = 40
    end
    object cdsClientAddressADDRESSLINE2: TStringField
      FieldName = 'ADDRESSLINE2'
      Size = 40
    end
    object cdsClientAddressADDRESSLINE3: TStringField
      FieldName = 'ADDRESSLINE3'
      Size = 40
    end
    object cdsClientAddressADDRESSLINE4: TStringField
      FieldName = 'ADDRESSLINE4'
      Size = 40
    end
    object cdsClientAddressPROVINCE: TStringField
      FieldName = 'PROVINCE'
      Size = 40
    end
    object cdsClientAddressPOSTALCODE: TStringField
      FieldName = 'POSTALCODE'
    end
    object cdsClientAddressCITY: TStringField
      FieldName = 'CITY'
      Size = 50
    end
    object cdsClientAddressCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 30
    end
  end
  object dsClientAddress: TDataSource
    DataSet = cdsClientAddress
    Left = 32
    Top = 376
  end
  object sq_GetXRate: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CURRENCYNO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ER.EXCHANGERATE, MAX(VALIDFROM) AS VALIDFROM'
      'FROM dbo.Currency CU, dbo.ExchangeRate ER'
      'WHERE'
      'CU.CURRENCYNO = :CURRENCYNO'
      'and ER.CURRENCYNO = CU.CURRENCYNO'
      ''
      'GROUP BY ER.EXCHANGERATE')
    Left = 296
    Top = 488
    object sq_GetXRateEXCHANGERATE: TFloatField
      FieldName = 'EXCHANGERATE'
    end
    object sq_GetXRateVALIDFROM: TSQLTimeStampField
      FieldName = 'VALIDFROM'
    end
  end
  object sq_Currency: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CURRENCY')
    Left = 296
    Top = 296
    object sq_CurrencyCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object sq_CurrencyCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 5
    end
  end
  object dspCurrency: TDataSetProvider
    DataSet = sq_Currency
    UpdateMode = upWhereKeyOnly
    Left = 296
    Top = 344
  end
  object cdsCurrency: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCurrency'
    OnReconcileError = cdsCurrencyReconcileError
    Left = 296
    Top = 392
    object cdsCurrencyCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object cdsCurrencyCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 5
    end
  end
  object dsCurrency: TDataSource
    DataSet = cdsCurrency
    Left = 296
    Top = 440
  end
  object sq_DelTerms: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM'
      'DeliveryTerm')
    Left = 432
    Top = 296
  end
  object dspDelTerms: TDataSetProvider
    DataSet = sq_DelTerms
    UpdateMode = upWhereChanged
    Left = 432
    Top = 344
  end
  object cdsDelTerms: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDelTerms'
    Left = 432
    Top = 392
    object cdsDelTermsDeliveryTerm_No: TIntegerField
      FieldName = 'DeliveryTerm_No'
    end
    object cdsDelTermsDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Size = 21
    end
    object cdsDelTermsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cdsDelTermsCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cdsDelTermsModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cdsDelTermsSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
    object cdsDelTermsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
  end
  object dsDelTerms: TDataSource
    DataSet = cdsDelTerms
    Left = 432
    Top = 440
  end
  object sq_PaymentTerm: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LanguageCode'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select pt.PaymentTermsNo,  pt.PaymentTermName, pt.Discount1, pt.' +
        'FreightInDiscount, '
      'pt.FreightInCommission, pt.CommissionPaidByCustomer,'
      'ptd.Description, ptd.LanguageCode'
      'from dbo.PaymentTerms pt, dbo.PaymentTermDesc ptd'
      'where'
      'pt.PaymentTermsNo = ptd.PaymentTermsNo '
      'AND ptd.LanguageCode = :LanguageCode')
    Left = 528
    Top = 296
  end
  object dspPaymentTerm: TDataSetProvider
    DataSet = sq_PaymentTerm
    Left = 528
    Top = 344
  end
  object cdsPaymentTerm: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPaymentTerm'
    Left = 528
    Top = 392
    object cdsPaymentTermPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
    end
    object cdsPaymentTermPaymentTermName: TStringField
      FieldName = 'PaymentTermName'
      Size = 50
    end
    object cdsPaymentTermDiscount1: TFloatField
      FieldName = 'Discount1'
    end
    object cdsPaymentTermFreightInDiscount: TIntegerField
      FieldName = 'FreightInDiscount'
    end
    object cdsPaymentTermFreightInCommission: TIntegerField
      FieldName = 'FreightInCommission'
    end
    object cdsPaymentTermCommissionPaidByCustomer: TIntegerField
      FieldName = 'CommissionPaidByCustomer'
    end
    object cdsPaymentTermDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object cdsPaymentTermLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
    end
  end
  object dsPaymentTerm: TDataSource
    DataSet = cdsPaymentTerm
    Left = 528
    Top = 440
  end
  object sq_LoadFreightCost: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT'
      'Lo.LoadNo '#9#9#9'AS LOAD_NO, '
      'Lo.FS'#9#9#9#9'AS FS,'
      'Lo.LoadID'#9#9#9'AS LOAD_ID, '
      'Lo.LoadedDate'#9#9#9'AS LOADEDDATE,  '
      'shipper.clientname'#9#9'AS SHIPPER,'
      'FromPlace.CityName '#9#9'AS FROM_PLACE,'
      'ToPlace.CityName '#9#9'AS DESTINATION,'
      ''
      '(SELECT  SUM(PTD.m3Actual)'
      ' FROM  dbo.Loaddetail LD  '
      
        ' INNER JOIN dbo.PackageTypeDetail PTD ON PTD.PackageTypeNo = LD.' +
        'PackageTypeNo '
      ' WHERE LD.LoadNo = Lo.LoadNo) AS M3_NET,'
      ''
      'LFC.PricePerM3_NET'#9#9'AS PRICE,'
      'LFC.TotalSUM'#9#9#9'AS INVOICEAMOUNT,'
      'LFC.CreatedUser'#9#9#9'AS CREATEDUSER,'
      'LFC.ModifiedUser'#9#9'AS MODIFIEDUSER,'
      'LFC.DateCreated'#9#9#9'AS DATECREATED,'
      'LFC.DateModified'#9#9'AS DATEMODIFIED'
      ''
      'FROM Loads Lo'
      ''
      
        'left  outer join Client Shipper'#9'on shipper.clientno = lo.LocalSh' +
        'ippingCompanyNo'
      
        'left  outer  join City FromPlace'#9'on FromPlace.CityNo = lo.LocalL' +
        'oadingLocation'
      
        'left  outer  join City ToPlace'#9#9'on ToPlace.CityNo = lo.LocalDest' +
        'inationNo'
      ''
      'left join LoadFreightCost LFC'#9'on Lo.LoadNo = LFC.LoadNo'
      ''
      
        'Inner Join dbo.Confirmed_Load   CL ON CL.Confirmed_LoadNo = Lo.L' +
        'oadNo'
      'Inner Join ClientRole CR ON CR.ClientNo = Lo.CustomerNo'
      'AND CR.RoleType = 9'
      'AND Lo.LoadNo NOT IN (Select LoadNo FROM LoadFreightCost)'
      '')
    Left = 624
    Top = 128
    object sq_LoadFreightCostLOAD_NO: TIntegerField
      FieldName = 'LOAD_NO'
    end
    object sq_LoadFreightCostFS: TStringField
      FieldName = 'FS'
    end
    object sq_LoadFreightCostLOAD_ID: TStringField
      FieldName = 'LOAD_ID'
      Size = 50
    end
    object sq_LoadFreightCostLOADEDDATE: TSQLTimeStampField
      FieldName = 'LOADEDDATE'
    end
    object sq_LoadFreightCostSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object sq_LoadFreightCostFROM_PLACE: TStringField
      FieldName = 'FROM_PLACE'
      Size = 50
    end
    object sq_LoadFreightCostDESTINATION: TStringField
      FieldName = 'DESTINATION'
      Size = 50
    end
    object sq_LoadFreightCostM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_LoadFreightCostPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object sq_LoadFreightCostINVOICEAMOUNT: TFloatField
      FieldName = 'INVOICEAMOUNT'
    end
    object sq_LoadFreightCostCREATEDUSER: TIntegerField
      FieldName = 'CREATEDUSER'
    end
    object sq_LoadFreightCostMODIFIEDUSER: TIntegerField
      FieldName = 'MODIFIEDUSER'
    end
    object sq_LoadFreightCostDATECREATED: TSQLTimeStampField
      FieldName = 'DATECREATED'
    end
    object sq_LoadFreightCostDATEMODIFIED: TSQLTimeStampField
      FieldName = 'DATEMODIFIED'
    end
  end
  object dspLoadFreightCost: TDataSetProvider
    DataSet = sqLoadFreightCost
    UpdateMode = upWhereChanged
    Left = 848
    Top = 344
  end
  object cdsLoadFreightCost: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLoadFreightCost'
    OnReconcileError = cdsLoadFreightCostReconcileError
    Left = 848
    Top = 392
    object cdsLoadFreightCostAvrakningsNo: TIntegerField
      FieldName = 'AvrakningsNo'
    end
    object cdsLoadFreightCostLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object cdsLoadFreightCostM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object cdsLoadFreightCostPricePerM3_NET: TFloatField
      FieldName = 'PricePerM3_NET'
    end
    object cdsLoadFreightCostTotalSUM: TFloatField
      FieldName = 'TotalSUM'
    end
  end
  object dsLoadFreightCost: TDataSource
    DataSet = cdsLoadFreightCost
    Left = 848
    Top = 440
  end
  object sqLoadFreightCost: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from LoadFreightCost ')
    Left = 848
    Top = 296
    object sqLoadFreightCostAvrakningsNo: TIntegerField
      FieldName = 'AvrakningsNo'
    end
    object sqLoadFreightCostLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object sqLoadFreightCostM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sqLoadFreightCostPricePerM3_NET: TFloatField
      FieldName = 'PricePerM3_NET'
    end
    object sqLoadFreightCostTotalSUM: TFloatField
      FieldName = 'TotalSUM'
    end
    object sqLoadFreightCostCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sqLoadFreightCostModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sqLoadFreightCostDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sqLoadFreightCostDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
    end
  end
  object sq_GetAddressNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Reference'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * From ShippingPlan_ShippingAddress'
      'Where '
      'ShippingPlanNo = :ShippingPlanNo'
      'AND Reference = :Reference')
    Left = 112
    Top = 528
    object sq_GetAddressNoAddressNo: TIntegerField
      FieldName = 'AddressNo'
    end
  end
  object sq_PkgInfo: TSQLQuery
    MaxBlobSize = -1
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
      end>
    SQL.Strings = (
      'Select DISTINCT'
      ''
      'isNull(Us.UserName,'#39'NA'#39') AS PKG_CREATED_BY, '
      'PN.PackageNo AS PKG_NO, '
      'PN.DateCreated AS PKG_CREATED,'
      'PN.SupplierCode AS SUPP_CODE, '
      'PR.ProductDisplayName AS PRODUCT, '
      'C.ClientName AS INVENTORY_OWNER , '
      'Supp.ClientName AS PRODUCER, '
      'LOC.CityName AS INVENTORY,'
      'LIP.LogicalInventoryName AS INVENTORY_GROUP,'
      'CASE'
      ' WHEN PN.Status = 0 then '#39'PKG NOT AVAILABLE'#39
      ' WHEN PN.Status = 1 then '#39'PKG AVAILABLE'#39
      'END AS PKG_STATUS,'
      'BC.BarCode AS BARCODE,'
      'GS.GradeStamp AS GRADESTAMP,'
      'PT.PackageHeight AS PKG_HEIGHT,'
      'PT.PackageWidth AS PKG_WIDTH,'
      'CASE'
      'WHEN PT.MiniBundled = 0 THEN '#39'NO'#39
      'WHEN PT.MiniBundled = 1 THEN '#39'YES'#39
      'END AS MINI_BUNDLED,'
      ''
      'CASE '
      ' WHEN PT.OnSticks = 0 then '#39'NO'#39
      ' WHEN PT.OnSticks = 1 then '#39'YES'#39
      'END AS STICKS,'
      ''
      'WT.WrapType AS WRAP,'
      'CASE'
      'WHEN PT.ShrinkWrap = 0 THEN '#39'NO'#39
      'WHEN PT.ShrinkWrap = 1 THEN '#39'YES'#39
      'END AS SHRINK_WRAP,'
      ''
      'PT.Totalm3Actual AS M3_ACT, '
      'PT.Totalm3Nominal AS M3_NOM , '
      'PT.TotalNoOfPieces AS PIECES, '
      'PT.TotalMFBMNominal AS MFBM, '
      'PT.TotalLinealMeterActualLength AS ACT_LINEAL_METER,'
      'PT.m3Net AS NOM_LINEAL_METER,'
      'PT.TotalSQMofActualWidth AS M2,'
      'PT.PackageTypeNo AS PACKAGETYPENO,'
      'pc.PackageCodeNo AS KORTAKODEN,'
      'pp.PackageCode AS LANGAKODEN'
      ''
      'FROM dbo.PackageNumber PN'
      
        'Inner Join dbo.PackageType PT ON PT.PackageTypeNo = PN.PackageTy' +
        'peNo'
      
        'Left Outer Join dbo.PackageCode pc ON pc.PackageTypeNo = Pt.Pack' +
        'ageTypeNo'
      
        'Left Outer Join dbo.Packagecode_printparams pp on pp.PackageType' +
        'No = pc.PackageTypeNo'
      'Inner Join dbo.Product PR ON PR.ProductNo = PT.ProductNo'
      
        'Left Outer Join dbo.LogicalInventoryPoint LIP ON LIP.LogicalInve' +
        'ntoryPointNo = PN.LogicalInventoryPointNo'
      ''
      'Left Outer Join dbo.PhysicalInventoryPoint PIP'
      'Inner Join dbo.Client C ON C.ClientNo = PIP.OwnerNo'
      'Inner Join dbo.City LOC ON LOC.CityNo = PIP.PhyInvPointNameNo'
      'ON PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo'
      ''
      'Inner Join dbo.Client Supp ON Supp.ClientNo = PN.SupplierNo'
      'Left Outer Join dbo.Users Us ON'#9'Us.UserID = PN.CreatedUser'
      ''
      'Left Outer Join dbo.BarCode'#9'BC'#9'ON BC.BarCodeNo = PT.BarCodeID'
      
        'Left Outer Join dbo.GradeStamp GS'#9'ON GS.GradeStampNo = PT.GradeS' +
        'tamp'
      'left Outer Join dbo.WrapType WT'#9'ON WT.WrapTypeNo = PT.WrapType'
      ''
      'Left Outer Join dbo.LoadDetail LD'
      ' Inner Join dbo.Loads L ON L.LoadNo = LD.LoadNo'
      
        ' Left Outer Join dbo.Users Load_Us ON'#9'Load_Us.UserID = L.Created' +
        'User'
      ' Inner Join dbo.LoadShippingPlan LS ON LS.LoadNo = LD.LoadNo'
      #9#9#9#9'AND LS.ShippingPlanNo = LD.ShippingPlanNo'
      ' Inner Join dbo.Client LC ON LC.ClientNo = L.CustomerNo'
      ' Inner Join dbo.Client LSupp ON LSupp.ClientNo = L.SupplierNo'
      ''
      
        ' Left Outer Join dbo.CustomerShippingPlanDetails CSD ON CSD.Cust' +
        'ShipPlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      ' Left Outer Join dbo.Orders O'#9'ON O.OrderNo = CSD.OrderNo'
      
        ' Left Outer Join dbo.Client OrdCli'#9'ON OrdCli.ClientNo = O.Custom' +
        'erNo'
      ''
      'ON LD.PackageNo = PN.PackageNo'
      'AND LD.SupplierCode = PN.SupplierCode'
      ''
      'Left Outer Join dbo.Invoiced_Load IL'
      
        ' Inner Join dbo.InvoiceHeader IH ON IH.InternalInvoiceNo = IL.In' +
        'ternalInvoiceNo'
      
        ' Left Outer Join dbo.InvoiceNumber INO ON INO.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      ''
      
        ' Left Outer Join dbo.Users IN_Us ON'#9'IN_Us.UserID = INO.UserCreat' +
        'ed'
      'ON IL.LoadNo = LS.LoadNo'
      'AND   IL.ShippingPlanNo = LS.ShippingPlanNo'
      ''
      ''
      ''
      ''
      'Where'
      'PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      ''
      ' ')
    Left = 32
    Top = 24
  end
  object dsp_PkgInfo: TDataSetProvider
    DataSet = sq_PkgInfo
    Left = 32
    Top = 80
  end
  object cds_PkgInfo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PkgInfo'
    Left = 32
    Top = 128
    object cds_PkgInfoPKG_CREATED_BY: TStringField
      FieldName = 'PKG_CREATED_BY'
    end
    object cds_PkgInfoPKG_NO: TIntegerField
      FieldName = 'PKG_NO'
    end
    object cds_PkgInfoPKG_CREATED: TSQLTimeStampField
      FieldName = 'PKG_CREATED'
    end
    object cds_PkgInfoSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object cds_PkgInfoPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object cds_PkgInfoINVENTORY_OWNER: TStringField
      FieldName = 'INVENTORY_OWNER'
      Size = 80
    end
    object cds_PkgInfoPRODUCER: TStringField
      FieldName = 'PRODUCER'
      Size = 80
    end
    object cds_PkgInfoINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Size = 50
    end
    object cds_PkgInfoINVENTORY_GROUP: TStringField
      FieldName = 'INVENTORY_GROUP'
      Size = 50
    end
    object cds_PkgInfoPKG_STATUS: TStringField
      FieldName = 'PKG_STATUS'
      Size = 17
    end
    object cds_PkgInfoBARCODE: TStringField
      FieldName = 'BARCODE'
    end
    object cds_PkgInfoGRADESTAMP: TStringField
      FieldName = 'GRADESTAMP'
    end
    object cds_PkgInfoPKG_HEIGHT: TIntegerField
      FieldName = 'PKG_HEIGHT'
    end
    object cds_PkgInfoPKG_WIDTH: TIntegerField
      FieldName = 'PKG_WIDTH'
    end
    object cds_PkgInfoMINI_BUNDLED: TStringField
      FieldName = 'MINI_BUNDLED'
      Size = 3
    end
    object cds_PkgInfoSTICKS: TStringField
      FieldName = 'STICKS'
      Size = 3
    end
    object cds_PkgInfoWRAP: TStringField
      FieldName = 'WRAP'
      Size = 15
    end
    object cds_PkgInfoSHRINK_WRAP: TStringField
      FieldName = 'SHRINK_WRAP'
      Size = 3
    end
    object cds_PkgInfoM3_ACT: TFloatField
      FieldName = 'M3_ACT'
      DisplayFormat = '######.000'
    end
    object cds_PkgInfoM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      DisplayFormat = '######.000'
    end
    object cds_PkgInfoPIECES: TIntegerField
      FieldName = 'PIECES'
      DisplayFormat = '########'
    end
    object cds_PkgInfoMFBM: TFloatField
      FieldName = 'MFBM'
      DisplayFormat = '#####.000'
    end
    object cds_PkgInfoACT_LINEAL_METER: TFloatField
      FieldName = 'ACT_LINEAL_METER'
      DisplayFormat = '######.000'
    end
    object cds_PkgInfoNOM_LINEAL_METER: TFloatField
      FieldName = 'NOM_LINEAL_METER'
      DisplayFormat = '######.000'
    end
    object cds_PkgInfoM2: TFloatField
      FieldName = 'M2'
      DisplayFormat = '######.000'
    end
    object cds_PkgInfoPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object cds_PkgInfoKORTAKODEN: TStringField
      FieldName = 'KORTAKODEN'
      FixedChar = True
      Size = 40
    end
    object cds_PkgInfoLANGAKODEN: TStringField
      FieldName = 'LANGAKODEN'
      Size = 50
    end
  end
  object ds_PkgInfo: TDataSource
    DataSet = cds_PkgInfo
    Left = 32
    Top = 176
  end
  object sp_PcsPerLength: TSQLStoredProc
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
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PicesPerLength'
        ParamType = ptInputOutput
        Size = 8000
      end
      item
        DataType = ftString
        Name = 'NomPicesPerLength'
        ParamType = ptInputOutput
        Size = 8000
      end>
    StoredProcName = 'vida_GetPiecesPerLengthTEST'
    Left = 112
    Top = 432
  end
  object sq_LoadPkgInfo: TSQLQuery
    DataSource = ds_PkgInfo
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PKG_NO'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftString
        Name = 'SUPP_CODE'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      'Select DISTINCT'
      ''
      'LC.ClientName AS LOAD_CUSTOMER,'
      'LSupp.ClientName AS LOAD_SUPPLIER,'
      'L.LoadedDate AS LOAD_DATE,'
      'L.LoadNo AS LOAD_NO,'
      'LS.ShippingPlanNo AS LO_NUMBER,'
      'L.FS,'
      'isNull(Load_Us.UserName,'#39'NA'#39') AS LOAD_CREATED_BY,'
      'CASE'
      ' WHEN L.SenderLoadStatus  = 0 then '#39'Prelimin'#228'r'#39
      ' WHEN L.SenderLoadStatus  = 1 then '#39'Problem'#39
      ' WHEN L.SenderLoadStatus  = 2 then '#39'Avslutad'#39
      'END'
      'AS LOAD_STATUS,'
      ''
      'INO.InvoiceNo AS INVOICE_NO,'
      'isNull(IN_Us.Username,'#39'NA'#39') AS INV_CREATED_BY,'
      'IH.InvoiceDate AS INVOICE_DATE,'
      'IH.InternalInvoiceNo AS INT_INVOICE_NO,'
      'CASE'
      ' WHEN IH.InvoiceType = 0 then '#39'VW K1'#39
      ' WHEN IH.InvoiceType = 1 then '#39'PROFORMA I'#39
      ' WHEN IH.InvoiceType = 2 then '#39'PROFROMA II'#39
      ' WHEN IH.InvoiceType = 3 then '#39'INK'#214'P'#39
      ' WHEN IH.InvoiceType = 4 then '#39'USA K2'#39
      ' WHEN IH.InvoiceType = 5 then '#39'FW K3'#39
      ' WHEN IH.InvoiceType = 6 then '#39'AGENT'#39
      ' WHEN IH.InvoiceType = 3 then '#39'VTA'#39
      'END AS INVOICETYPE,'
      'CASE'
      ' WHEN IH.Debit_Credit = 0 then '#39'DEBET'#39
      ' WHEN IH.Debit_Credit = 1 then '#39'KREDIT'#39
      'END AS DEBIT_CREDIT,'
      'O.OrderNoText AS ORDER_NO,'
      'OrdCli.ClientName AS ORDER_CUSTOMER'
      ''
      'FROM dbo.LoadDetail LD'
      ' Inner Join dbo.Loads L ON L.LoadNo = LD.LoadNo'
      ''
      ' Inner Join dbo.LoadShippingPlan LS ON LS.LoadNo = LD.LoadNo'
      #9#9#9#9'AND LS.ShippingPlanNo = LD.ShippingPlanNo'
      
        ' Left Outer Join dbo.Users Load_Us ON'#9'Load_Us.UserID = LS.Create' +
        'dUser        '
      ' Inner Join dbo.Client LC ON LC.ClientNo = L.CustomerNo'
      ' Inner Join dbo.Client LSupp ON LSupp.ClientNo = L.SupplierNo'
      ''
      
        ' Left Outer Join dbo.CustomerShippingPlanDetails CSD ON CSD.Cust' +
        'ShipPlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      ' Left Outer Join dbo.Orders O'#9'ON O.OrderNo = CSD.OrderNo'
      
        ' Left Outer Join dbo.Client OrdCli'#9'ON OrdCli.ClientNo = O.Custom' +
        'erNo'
      ''
      ''
      'Left Outer Join dbo.Invoiced_Load IL'
      
        ' Inner Join dbo.InvoiceHeader IH ON IH.InternalInvoiceNo = IL.In' +
        'ternalInvoiceNo'
      
        ' Left Outer Join dbo.InvoiceNumber INO ON INO.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      ''
      
        ' Left Outer Join dbo.Users IN_Us ON'#9'IN_Us.UserID = INO.UserCreat' +
        'ed'
      'ON IL.LoadNo = LS.LoadNo'
      'AND   IL.ShippingPlanNo = LS.ShippingPlanNo'
      ''
      ''
      'Where'
      'LD.PackageNo = :PKG_NO'
      'AND LD.SupplierCode = :Supp_Code')
    Left = 120
    Top = 24
  end
  object dsp_LoadPkgInfo: TDataSetProvider
    DataSet = sq_LoadPkgInfo
    Left = 120
    Top = 72
  end
  object cds_LoadPkgInfo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LoadPkgInfo'
    Left = 120
    Top = 120
    object cds_LoadPkgInfoLOAD_CUSTOMER: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'LOAD_CUSTOMER'
      Size = 80
    end
    object cds_LoadPkgInfoLOAD_SUPPLIER: TStringField
      DisplayLabel = 'Leverant'#246'r'
      FieldName = 'LOAD_SUPPLIER'
      Size = 80
    end
    object cds_LoadPkgInfoLOAD_DATE: TSQLTimeStampField
      DisplayLabel = 'Utlastad'
      FieldName = 'LOAD_DATE'
    end
    object cds_LoadPkgInfoLOAD_NO: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LOAD_NO'
    end
    object cds_LoadPkgInfoLO_NUMBER: TIntegerField
      DisplayLabel = 'LONr'
      FieldName = 'LO_NUMBER'
    end
    object cds_LoadPkgInfoFS: TStringField
      FieldName = 'FS'
    end
    object cds_LoadPkgInfoLOAD_CREATED_BY: TStringField
      DisplayLabel = 'Skapad av'
      FieldName = 'LOAD_CREATED_BY'
    end
    object cds_LoadPkgInfoLOAD_STATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'LOAD_STATUS'
      Size = 16
    end
    object cds_LoadPkgInfoINVOICE_NO: TIntegerField
      DisplayLabel = 'FakturaNr'
      FieldName = 'INVOICE_NO'
    end
    object cds_LoadPkgInfoINV_CREATED_BY: TStringField
      DisplayLabel = 'Skapad av'
      FieldName = 'INV_CREATED_BY'
    end
    object cds_LoadPkgInfoINVOICE_DATE: TSQLTimeStampField
      DisplayLabel = 'Fakturerad'
      FieldName = 'INVOICE_DATE'
    end
    object cds_LoadPkgInfoINT_INVOICE_NO: TIntegerField
      DisplayLabel = 'IntfakturaNr'
      FieldName = 'INT_INVOICE_NO'
    end
    object cds_LoadPkgInfoINVOICETYPE: TStringField
      DisplayLabel = 'Fakturatyp'
      FieldName = 'INVOICETYPE'
      Size = 11
    end
    object cds_LoadPkgInfoDEBIT_CREDIT: TStringField
      DisplayLabel = 'Konto'
      FieldName = 'DEBIT_CREDIT'
      Size = 6
    end
    object cds_LoadPkgInfoORDER_NO: TStringField
      DisplayLabel = 'OrderNr'
      FieldName = 'ORDER_NO'
    end
    object cds_LoadPkgInfoORDER_CUSTOMER: TStringField
      DisplayLabel = 'Externkund'
      FieldName = 'ORDER_CUSTOMER'
      Size = 80
    end
  end
  object ds_LoadPkgInfo: TDataSource
    DataSet = cds_LoadPkgInfo
    Left = 120
    Top = 168
  end
  object tblLoadFreight: TFDMemTable
    AfterInsert = tblLoadFreightAfterInsert
    OnCalcFields = tblLoadFreightCalcFields
    IndexName = 'tblLoadFreightIndex1'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 624
    Top = 176
    object tblLoadFreightLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
    end
    object tblLoadFreightLOADNO: TIntegerField
      DisplayLabel = 'LASTNR'
      FieldName = 'LOADNO'
    end
    object tblLoadFreightFS: TStringField
      FieldName = 'FS'
    end
    object tblLoadFreightLOADID: TStringField
      DisplayLabel = 'LASTID'
      FieldName = 'LOADID'
      Size = 50
    end
    object tblLoadFreightLOADEDDATE: TDateTimeField
      DisplayLabel = 'UTLASTAD'
      FieldName = 'LOADEDDATE'
    end
    object tblLoadFreightSHIPPER: TStringField
      DisplayLabel = 'FRAKTF'#214'RARE'
      FieldName = 'SHIPPER'
      Size = 80
    end
    object tblLoadFreightFROM_PLACE: TStringField
      DisplayLabel = 'LASTST'#196'LLE'
      FieldName = 'FROM_PLACE'
      Size = 50
    end
    object tblLoadFreightDESTINATION: TStringField
      FieldName = 'DESTINATION'
      Size = 50
    end
    object tblLoadFreightM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      OnChange = tblLoadFreightM3_NETChange
      DisplayFormat = '########.000'
    end
    object tblLoadFreightPRICE: TFloatField
      DisplayLabel = 'PRIS'
      FieldName = 'PRICE'
      OnChange = tblLoadFreightPRICEChange
      DisplayFormat = '#,###,###,###.00'
    end
    object tblLoadFreightINVOICEAMOUNT: TFloatField
      DisplayLabel = 'FAKTURABELOPP'
      FieldName = 'INVOICEAMOUNT'
      OnChange = tblLoadFreightINVOICEAMOUNTChange
      DisplayFormat = '#,###,###,###.00'
    end
    object tblLoadFreightSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object tblLoadFreightTOTAL_AMOUNT: TFloatField
      DisplayLabel = 'TOTALTBELOPP'
      FieldKind = fkCalculated
      FieldName = 'TOTAL_AMOUNT'
      DisplayFormat = '#,###,###,###.00'
      Calculated = True
    end
    object tblLoadFreightChecked: TBooleanField
      DisplayLabel = 'R'#196'KNA AV'
      FieldName = 'Checked'
    end
    object tblLoadFreightLO: TIntegerField
      DisplayLabel = 'LONR'
      FieldName = 'LO'
    end
  end
  object sq_LoadFreightCostHeader: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * '
      'FROM'
      'dbo.LoadFreightCostHeader')
    Left = 280
    Top = 24
  end
  object dsp_LoadFreightCostHeader: TDataSetProvider
    DataSet = sq_LoadFreightCostHeader
    Left = 280
    Top = 72
  end
  object cds_LoadFreightCostHeader: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LoadFreightCostHeader'
    OnReconcileError = cds_LoadFreightCostHeaderReconcileError
    Left = 280
    Top = 120
    object cds_LoadFreightCostHeaderAvrakningsNo: TIntegerField
      FieldName = 'AvrakningsNo'
    end
    object cds_LoadFreightCostHeaderLocalShipperNo: TIntegerField
      FieldName = 'LocalShipperNo'
    end
    object cds_LoadFreightCostHeaderAvrakningsDate: TSQLTimeStampField
      FieldName = 'AvrakningsDate'
    end
    object cds_LoadFreightCostHeaderCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_LoadFreightCostHeaderModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_LoadFreightCostHeaderDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_LoadFreightCostHeaderDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
    end
    object cds_LoadFreightCostHeaderNote: TMemoField
      FieldName = 'Note'
      BlobType = ftMemo
    end
    object cds_LoadFreightCostHeaderStatus: TIntegerField
      FieldName = 'Status'
    end
    object cds_LoadFreightCostHeaderShippersInvoiceNo: TStringField
      FieldName = 'ShippersInvoiceNo'
      Size = 50
    end
    object cds_LoadFreightCostHeaderVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
  end
  object sp_LoadFreightCost: TSQLStoredProc
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
        Name = 'SHIPPERNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VerkNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_LoadsToAvrakna_V'
    Left = 624
    Top = 72
    object sp_LoadFreightCostLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
      Required = True
    end
    object sp_LoadFreightCostLOAD_NO: TIntegerField
      FieldName = 'LOAD_NO'
      Required = True
    end
    object sp_LoadFreightCostFS: TStringField
      FieldName = 'FS'
      Required = True
    end
    object sp_LoadFreightCostLOAD_ID: TStringField
      FieldName = 'LOAD_ID'
      Required = True
      Size = 50
    end
    object sp_LoadFreightCostLOADEDDATE: TSQLTimeStampField
      FieldName = 'LOADEDDATE'
      Required = True
    end
    object sp_LoadFreightCostSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Required = True
      Size = 80
    end
    object sp_LoadFreightCostFROM_PLACE: TStringField
      FieldName = 'FROM_PLACE'
      Required = True
      Size = 50
    end
    object sp_LoadFreightCostDESTINATION: TStringField
      FieldName = 'DESTINATION'
      Required = True
      Size = 50
    end
    object sp_LoadFreightCostM3_NET: TFloatField
      FieldName = 'M3_NET'
      Required = True
    end
    object sp_LoadFreightCostPRICE: TFloatField
      FieldName = 'PRICE'
      Required = True
    end
    object sp_LoadFreightCostINVOICEAMOUNT: TFloatField
      FieldName = 'INVOICEAMOUNT'
      Required = True
    end
    object sp_LoadFreightCostSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Required = True
    end
    object sp_LoadFreightCostCREATEDUSER: TIntegerField
      FieldName = 'CREATEDUSER'
      Required = True
    end
    object sp_LoadFreightCostMODIFIEDUSER: TIntegerField
      FieldName = 'MODIFIEDUSER'
      Required = True
    end
    object sp_LoadFreightCostDATECREATED: TSQLTimeStampField
      FieldName = 'DATECREATED'
      Required = True
    end
    object sp_LoadFreightCostDATEMODIFIED: TSQLTimeStampField
      FieldName = 'DATEMODIFIED'
      Required = True
    end
  end
  object ds_LoadFreightCostHeader: TDataSource
    DataSet = cds_LoadFreightCostHeader
    Left = 280
    Top = 168
  end
  object sq_LoadFreightCostHeader2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select LFCH.* , C.clientname as SHIPPER,'
      've.ClientName AS VERK,'
      'usr.UserName AS ANVANDARE'
      'FROM'
      'dbo.LoadFreightCostHeader LFCH'
      'Left Outer Join dbo.Client C On C.ClientNo = LFCH.LocalShipperNo'
      'Left Outer Join dbo.Client ve On ve.ClientNo = LFCH.VerkNo'
      'Left Outer Join dbo.Users usr on usr.UserID = LFCH.CreatedUser')
    Left = 160
    Top = 232
    object sq_LoadFreightCostHeader2AvrakningsNo: TIntegerField
      FieldName = 'AvrakningsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadFreightCostHeader2Status: TIntegerField
      FieldName = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadFreightCostHeader2LocalShipperNo: TIntegerField
      FieldName = 'LocalShipperNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadFreightCostHeader2AvrakningsDate: TSQLTimeStampField
      FieldName = 'AvrakningsDate'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadFreightCostHeader2CreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadFreightCostHeader2ModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadFreightCostHeader2DateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadFreightCostHeader2DateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadFreightCostHeader2Note: TMemoField
      FieldName = 'Note'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_LoadFreightCostHeader2ShippersInvoiceNo: TStringField
      FieldName = 'ShippersInvoiceNo'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_LoadFreightCostHeader2SHIPPER: TStringField
      FieldName = 'SHIPPER'
      ProviderFlags = []
      Size = 80
    end
    object sq_LoadFreightCostHeader2ANVANDARE: TStringField
      FieldName = 'ANVANDARE'
      ProviderFlags = []
    end
    object sq_LoadFreightCostHeader2VERK: TStringField
      FieldName = 'VERK'
      ProviderFlags = []
      Size = 80
    end
    object sq_LoadFreightCostHeader2VerkNo: TIntegerField
      FieldName = 'VerkNo'
      ProviderFlags = []
    end
  end
  object dsp_LoadFreightCostHeader2: TDataSetProvider
    DataSet = sq_LoadFreightCostHeader2
    Left = 160
    Top = 280
  end
  object cds_LoadFreightCostHeader2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LoadFreightCostHeader2'
    OnReconcileError = cds_LoadFreightCostHeader2ReconcileError
    Left = 160
    Top = 328
    object cds_LoadFreightCostHeader2AvrakningsNo: TIntegerField
      FieldName = 'AvrakningsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadFreightCostHeader2LocalShipperNo: TIntegerField
      FieldName = 'LocalShipperNo'
    end
    object cds_LoadFreightCostHeader2AvrakningsDate: TSQLTimeStampField
      FieldName = 'AvrakningsDate'
    end
    object cds_LoadFreightCostHeader2CreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_LoadFreightCostHeader2ModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_LoadFreightCostHeader2DateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_LoadFreightCostHeader2DateModified: TSQLTimeStampField
      FieldName = 'DateModified'
    end
    object cds_LoadFreightCostHeader2Note: TMemoField
      FieldName = 'Note'
      BlobType = ftMemo
    end
    object cds_LoadFreightCostHeader2Status: TIntegerField
      FieldName = 'Status'
    end
    object cds_LoadFreightCostHeader2ShippersInvoiceNo: TStringField
      FieldName = 'ShippersInvoiceNo'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_LoadFreightCostHeader2SHIPPER: TStringField
      FieldName = 'SHIPPER'
      ProviderFlags = []
      Size = 80
    end
    object cds_LoadFreightCostHeader2ANVANDARE: TStringField
      FieldName = 'ANVANDARE'
      ProviderFlags = []
    end
    object cds_LoadFreightCostHeader2VERK: TStringField
      FieldName = 'VERK'
      Size = 80
    end
    object cds_LoadFreightCostHeader2VerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
  end
  object ds_LoadFreightCostHeader2: TDataSource
    DataSet = cds_LoadFreightCostHeader2
    Left = 160
    Top = 376
  end
  object sq_LoadFreightCostDetails: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'AvrakningsNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      'LFC.AvrakningsNo,'
      'LFC.LoadNo, '
      'Lo.FS'#9','
      'Lo.LoadID'#9#9#9'AS LOAD_ID, '
      'Lo.LoadedDate'#9#9#9'AS LOADEDDATE,  '
      'shipper.clientname'#9#9'AS SHIPPER,'
      'FromPlace.CityName '#9#9'AS FROM_PLACE,'
      'ToPlace.CityName '#9#9'AS DESTINATION,'
      ''
      'LFC.M3_NET,'
      'LFC.PricePerM3_NET'#9#9','
      'LFC.TotalSUM'#9#9#9','
      'LFC.DateModified,'
      'LFC.ModifiedUser,'
      'LFC.Note'
      ''
      'FROM dbo.LoadFreightCost LFC'
      'Inner Join dbo.Loads Lo '#9'ON LO.LoadNo'#9'='#9'LFC.LoadNo'
      ''
      
        'left  outer join dbo.Client Shipper'#9'on shipper.clientno = lo.Loc' +
        'alShippingCompanyNo'
      
        'left  outer  join dbo.City FromPlace'#9'on FromPlace.CityNo = lo.Lo' +
        'calLoadingLocation'
      
        'left  outer  join dbo.City ToPlace'#9#9'on ToPlace.CityNo = lo.Local' +
        'DestinationNo'
      ''
      ''
      'WHERE LFC.AvrakningsNo = :AvrakningsNo'
      'Order by LFC.LoadNo desc')
    Left = 440
    Top = 24
    object sq_LoadFreightCostDetailsAvrakningsNo: TIntegerField
      FieldName = 'AvrakningsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadFreightCostDetailsFS: TStringField
      FieldName = 'FS'
      ProviderFlags = []
    end
    object sq_LoadFreightCostDetailsLOAD_ID: TStringField
      FieldName = 'LOAD_ID'
      ProviderFlags = []
      Size = 50
    end
    object sq_LoadFreightCostDetailsLOADEDDATE: TSQLTimeStampField
      FieldName = 'LOADEDDATE'
      ProviderFlags = []
    end
    object sq_LoadFreightCostDetailsSHIPPER: TStringField
      FieldName = 'SHIPPER'
      ProviderFlags = []
      Size = 80
    end
    object sq_LoadFreightCostDetailsFROM_PLACE: TStringField
      FieldName = 'FROM_PLACE'
      ProviderFlags = []
      Size = 50
    end
    object sq_LoadFreightCostDetailsDESTINATION: TStringField
      FieldName = 'DESTINATION'
      ProviderFlags = []
      Size = 50
    end
    object sq_LoadFreightCostDetailsLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadFreightCostDetailsM3_NET: TFloatField
      FieldName = 'M3_NET'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadFreightCostDetailsPricePerM3_NET: TFloatField
      FieldName = 'PricePerM3_NET'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadFreightCostDetailsTotalSUM: TFloatField
      FieldName = 'TotalSUM'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadFreightCostDetailsDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadFreightCostDetailsModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadFreightCostDetailsNote: TStringField
      FieldName = 'Note'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object dsp_LoadFreightCostDetails: TDataSetProvider
    DataSet = sq_LoadFreightCostDetails
    Left = 440
    Top = 72
  end
  object cds_LoadFreightCostDetails: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AvrakningsNo'
    MasterFields = 'AvrakningsNo'
    MasterSource = ds_LoadFreightCostHeader2
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsp_LoadFreightCostDetails'
    BeforePost = cds_LoadFreightCostDetailsBeforePost
    BeforeRefresh = cds_LoadFreightCostDetailsBeforeRefresh
    OnReconcileError = cds_LoadFreightCostDetailsReconcileError
    Left = 440
    Top = 120
    object cds_LoadFreightCostDetailsAvrakningsNo: TIntegerField
      FieldName = 'AvrakningsNo'
    end
    object cds_LoadFreightCostDetailsFS: TStringField
      FieldName = 'FS'
    end
    object cds_LoadFreightCostDetailsLOAD_ID: TStringField
      DisplayLabel = 'LASTID'
      FieldName = 'LOAD_ID'
      Size = 50
    end
    object cds_LoadFreightCostDetailsLOADEDDATE: TSQLTimeStampField
      DisplayLabel = 'UTLASTAD'
      FieldName = 'LOADEDDATE'
    end
    object cds_LoadFreightCostDetailsSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object cds_LoadFreightCostDetailsFROM_PLACE: TStringField
      DisplayLabel = 'LASTST'#196'LLE'
      FieldName = 'FROM_PLACE'
      Size = 50
    end
    object cds_LoadFreightCostDetailsDESTINATION: TStringField
      DisplayLabel = 'DEST'
      FieldName = 'DESTINATION'
      Size = 50
    end
    object cds_LoadFreightCostDetailsLoadNo: TIntegerField
      DisplayLabel = 'LASTNR'
      FieldName = 'LoadNo'
    end
    object cds_LoadFreightCostDetailsM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      DisplayFormat = '########.000'
    end
    object cds_LoadFreightCostDetailsPricePerM3_NET: TFloatField
      DisplayLabel = 'PRIS'
      FieldName = 'PricePerM3_NET'
      OnChange = cds_LoadFreightCostDetailsPricePerM3_NETChange
    end
    object cds_LoadFreightCostDetailsTotalSUM: TFloatField
      DisplayLabel = 'BELOPP'
      FieldName = 'TotalSUM'
      DisplayFormat = '########.00'
    end
    object cds_LoadFreightCostDetailsDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
    end
    object cds_LoadFreightCostDetailsModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_LoadFreightCostDetailsNote: TStringField
      DisplayLabel = 'NOTERING'
      FieldName = 'Note'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object ds_LoadFreightCostDetails: TDataSource
    DataSet = cds_LoadFreightCostDetails
    Left = 440
    Top = 168
  end
  object ds_tblLoadFreight3: TDataSource
    DataSet = tblLoadFreight
    Left = 624
    Top = 224
  end
  object sq_PaymentText: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CurrencyNo'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      'Select * from '
      'dbo.PaymentText'
      'where'
      'CurrencyNo = :CurrencyNo')
    Left = 616
    Top = 296
    object sq_PaymentTextCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PaymentTextLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PaymentTextPaymentText: TMemoField
      FieldName = 'PaymentText'
      BlobType = ftMemo
    end
    object sq_PaymentTextCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_PaymentTextModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_PaymentTextDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_PaymentTextCountryNo: TIntegerField
      FieldName = 'CountryNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsp_PaymentText: TDataSetProvider
    DataSet = sq_PaymentText
    UpdateMode = upWhereKeyOnly
    Left = 616
    Top = 344
  end
  object cds_PaymentText: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PaymentText'
    AfterInsert = cds_PaymentTextAfterInsert
    OnReconcileError = cds_PaymentTextReconcileError
    Left = 616
    Top = 392
    object cds_PaymentTextCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_PaymentTextLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PaymentTextPaymentText: TMemoField
      FieldName = 'PaymentText'
      BlobType = ftMemo
    end
    object cds_PaymentTextCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_PaymentTextModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_PaymentTextDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_PaymentTextCountryNo: TIntegerField
      FieldName = 'CountryNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PaymentTextLanguage: TStringField
      FieldKind = fkLookup
      FieldName = 'Language'
      LookupDataSet = cds_Language
      LookupKeyFields = 'LanguageNo'
      LookupResultField = 'LanguageName'
      KeyFields = 'LanguageCode'
      Lookup = True
    end
    object cds_PaymentTextCountry: TStringField
      FieldKind = fkLookup
      FieldName = 'Country'
      LookupDataSet = cds_Country
      LookupKeyFields = 'CountryNo'
      LookupResultField = 'CountryName'
      KeyFields = 'CountryNo'
      Size = 30
      Lookup = True
    end
  end
  object ds_PaymentText: TDataSource
    DataSet = cds_PaymentText
    Left = 616
    Top = 440
  end
  object sq_Curr: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CURRENCY')
    Left = 685
    Top = 296
    object sq_CurrCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object sq_CurrCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 5
    end
    object sq_CurrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_CurrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_CurrModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object dsp_curr: TDataSetProvider
    DataSet = sq_Curr
    UpdateMode = upWhereKeyOnly
    Left = 685
    Top = 344
  end
  object cds_curr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_curr'
    AfterInsert = cds_currAfterInsert
    OnReconcileError = cdsCurrencyReconcileError
    Left = 685
    Top = 392
    object cds_currCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object cds_currCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 5
    end
    object cds_currDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_currCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_currModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object ds_curr: TDataSource
    DataSet = cds_curr
    OnDataChange = ds_currDataChange
    Left = 685
    Top = 440
  end
  object sq_Language: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select LanguageNo, LanguageName'
      'FROM'
      'dbo.Language')
    Left = 776
    Top = 16
    object sq_LanguageLanguageNo: TIntegerField
      FieldName = 'LanguageNo'
    end
    object sq_LanguageLanguageName: TStringField
      FieldName = 'LanguageName'
    end
  end
  object dsp_Language: TDataSetProvider
    DataSet = sq_Language
    Left = 776
    Top = 64
  end
  object cds_Language: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Language'
    Left = 776
    Top = 112
    object cds_LanguageLanguageNo: TIntegerField
      FieldName = 'LanguageNo'
    end
    object cds_LanguageLanguageName: TStringField
      DisplayLabel = 'SPR'#197'K'
      FieldName = 'LanguageName'
    end
  end
  object sq_Country: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select CountryNo, CountryName'
      'FROM dbo.Country')
    Left = 528
    Top = 488
  end
  object dsp_Country: TDataSetProvider
    DataSet = sq_Country
    Left = 528
    Top = 536
  end
  object cds_Country: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Country'
    Left = 592
    Top = 528
    object cds_CountryCountryNo: TIntegerField
      FieldName = 'CountryNo'
    end
    object cds_CountryCountryName: TStringField
      FieldName = 'CountryName'
      Size = 30
    end
  end
  object sq_ExchangeRate: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CurrencyNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * From DBO.ExchangeRate'
      'WHERE CurrencyNo = :CurrencyNo')
    Left = 864
    Top = 16
    object sq_ExchangeRateCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_ExchangeRateExchangeRateNo: TIntegerField
      FieldName = 'ExchangeRateNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_ExchangeRateExchangeRate: TFloatField
      FieldName = 'ExchangeRate'
    end
    object sq_ExchangeRateValidFrom: TSQLTimeStampField
      FieldName = 'ValidFrom'
    end
    object sq_ExchangeRateCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_ExchangeRateModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_ExchangeRateDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
  end
  object dsp_ExchangeRate: TDataSetProvider
    DataSet = sq_ExchangeRate
    UpdateMode = upWhereKeyOnly
    Left = 864
    Top = 64
  end
  object cds_ExchangeRate: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_ExchangeRate'
    AfterInsert = cds_ExchangeRateAfterInsert
    Left = 864
    Top = 112
    object cds_ExchangeRateCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object cds_ExchangeRateExchangeRateNo: TIntegerField
      FieldName = 'ExchangeRateNo'
    end
    object cds_ExchangeRateExchangeRate: TFloatField
      FieldName = 'ExchangeRate'
      Required = True
    end
    object cds_ExchangeRateValidFrom: TSQLTimeStampField
      FieldName = 'ValidFrom'
      Required = True
    end
    object cds_ExchangeRateCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_ExchangeRateModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_ExchangeRateDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
  end
  object ds_ExchangeRate: TDataSource
    DataSet = cds_ExchangeRate
    Left = 864
    Top = 160
  end
  object sq_genfreight: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * FROM dbo.ShippingCosts')
    Left = 760
    Top = 296
    object sq_genfreightSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_genfreighttype: TStringField
      FieldName = 'type'
      ProviderFlags = [pfInUpdate]
    end
    object sq_genfreightValidFrom: TSQLTimeStampField
      FieldName = 'ValidFrom'
      ProviderFlags = [pfInUpdate]
    end
    object sq_genfreightCost: TFloatField
      FieldName = 'Cost'
      ProviderFlags = [pfInUpdate]
    end
    object sq_genfreightCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_genfreightVolunitNo: TIntegerField
      FieldName = 'VolunitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_genfreightDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_genfreightModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_genfreightscrow: TIntegerField
      FieldName = 'scrow'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsp_genfreight: TDataSetProvider
    DataSet = sq_genfreight
    UpdateMode = upWhereKeyOnly
    Left = 760
    Top = 344
  end
  object cds_genfreight: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_genfreight'
    AfterInsert = cds_genfreightAfterInsert
    OnReconcileError = cds_genfreightReconcileError
    Left = 760
    Top = 392
    object cds_genfreightSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object cds_genfreighttype: TStringField
      FieldName = 'type'
    end
    object cds_genfreightValidFrom: TSQLTimeStampField
      FieldName = 'ValidFrom'
    end
    object cds_genfreightCost: TFloatField
      FieldName = 'Cost'
    end
    object cds_genfreightCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object cds_genfreightVolunitNo: TIntegerField
      FieldName = 'VolunitNo'
    end
    object cds_genfreightDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_genfreightModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_genfreightVALUTA: TStringField
      FieldKind = fkLookup
      FieldName = 'VALUTA'
      LookupDataSet = cdsCurrency
      LookupKeyFields = 'CurrencyNo'
      LookupResultField = 'CurrencyName'
      KeyFields = 'CurrencyNo'
      Size = 5
      Lookup = True
    end
    object cds_genfreightENHET: TStringField
      FieldKind = fkLookup
      FieldName = 'ENHET'
      LookupDataSet = cdsVolUnit
      LookupKeyFields = 'TemplateUnitNo'
      LookupResultField = 'TemplateUnitName'
      KeyFields = 'VolunitNo'
      Lookup = True
    end
    object cds_genfreightscrow: TIntegerField
      FieldName = 'scrow'
    end
  end
  object ds_genfreight: TDataSource
    DataSet = cds_genfreight
    Left = 760
    Top = 440
  end
  object sq_VolUnit: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from PackUnit')
    Left = 360
    Top = 296
    object sq_VolUnitTemplateUnitNo: TIntegerField
      FieldName = 'TemplateUnitNo'
    end
    object sq_VolUnitTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
    end
  end
  object dspVolUnit: TDataSetProvider
    DataSet = sq_VolUnit
    Left = 360
    Top = 344
  end
  object cdsVolUnit: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVolUnit'
    Left = 360
    Top = 392
    object cdsVolUnitTemplateUnitNo: TIntegerField
      FieldName = 'TemplateUnitNo'
    end
    object cdsVolUnitTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
    end
  end
  object dsVolUnit: TDataSource
    DataSet = cdsVolUnit
    Left = 360
    Top = 440
  end
  object mtShippers: TFDMemTable
    IndexFieldNames = 'Shipper'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 688
    Top = 496
    object mtShippersShipper: TStringField
      FieldKind = fkLookup
      FieldName = 'Shipper'
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ShipperNo'
      Size = 80
      Lookup = True
    end
    object mtShippersShippersInvoiceNo: TStringField
      FieldName = 'ShippersInvoiceNo'
      Size = 50
    end
    object mtShippersShipperNo: TIntegerField
      FieldName = 'ShipperNo'
    end
    object mtShippersAvrakningsNr: TIntegerField
      FieldName = 'AvrakningsNr'
    end
  end
  object dsShippers: TDataSource
    DataSet = mtShippers
    Left = 688
    Top = 544
  end
  object sq_GetLoadNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select distinct LoadNo From dbo.LoadShippingPlan'
      'Where ShippingPlanNo = :LO')
    Left = 768
    Top = 504
    object sq_GetLoadNoLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
  end
  object sq_FindAvr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'LFC.AvrakningsNo, ve.ClientName AS VERK, LFCH.VerkNo'
      ''
      'FROM LoadFreightCost LFC'
      
        'Inner Join dbo.LoadFreightCostHeader LFCH ON LFCH.AvrakningsNo =' +
        ' LFC.AvrakningsNo'
      'Left Outer Join dbo.Client ve On ve.ClientNo = LFCH.VerkNo'
      'WHERE LFC.LoadNo = :LoadNo'
      ''
      '')
    Left = 848
    Top = 496
    object sq_FindAvrAvrakningsNo: TIntegerField
      FieldName = 'AvrakningsNo'
    end
    object sq_FindAvrVERK: TStringField
      FieldName = 'VERK'
      Size = 80
    end
    object sq_FindAvrVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
  end
  object sqLoadFC: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT distinct'
      'lo.LocalShippingCompanyNo,'
      'Lo.LoadNo '#9#9#9'AS LOAD_NO, '
      'Lo.FS'#9#9#9#9'AS FS,'
      'Lo.LoadID'#9#9#9'AS LOAD_ID, '
      'Lo.LoadedDate'#9#9#9'AS LOADEDDATE,  '
      'shipper.clientname'#9#9'AS SHIPPER,'
      'FromPlace.CityName '#9#9'AS FROM_PLACE,'
      'ToPlace.CityName '#9#9'AS DESTINATION,'
      'AM.AM3 AS M3_NET,'
      ''
      ''
      'LFC.PricePerM3_NET'#9#9'AS PRICE,'
      'LFC.TotalSUM'#9#9#9'AS INVOICEAMOUNT,'
      'LFC.CreatedUser'#9#9#9'AS CREATEDUSER,'
      'LFC.ModifiedUser'#9#9'AS MODIFIEDUSER,'
      'LFC.DateCreated'#9#9#9'AS DATECREATED,'
      'LFC.DateModified'#9#9'AS DATEMODIFIED,'
      'Lo.SupplierNo'#9#9#9'AS SUPPLIERNO'
      ''
      'FROM   dbo.Client_LoadingLocation     CLL'
      
        'INNER JOIN dbo.LoadShippingPlan LSP '#9#9'ON '#9'LSP.LoadingLocationNo ' +
        '= CLL.PhyInvPointNameNo'
      ''
      'INNER JOIN dbo.Loads LO '#9#9#9#9'ON'#9'LO.LoadNo '#9#9'= LSP.LoadNo'
      ''
      'inner join dbo.AM3_LOAD AM ON AM.LoadNo = LO.LoadNo'
      ''
      
        'left  outer join Client Shipper'#9'on shipper.clientno = lo.LocalSh' +
        'ippingCompanyNo'
      
        'left  outer  join City FromPlace'#9'on FromPlace.CityNo = lo.LocalL' +
        'oadingLocation'
      
        'left  outer  join City ToPlace'#9#9'on ToPlace.CityNo = lo.LocalDest' +
        'inationNo'
      ''
      'left join LoadFreightCost LFC'#9'on Lo.LoadNo = LFC.LoadNo'
      ''
      
        'Inner Join dbo.Confirmed_Load   CL ON CL.Confirmed_LoadNo = Lo.L' +
        'oadNo'
      'Inner Join ClientRole CR ON CR.ClientNo = Lo.CustomerNo'
      'AND CR.RoleType = 9'
      'where'
      'CLL.ClientNo          = -1'
      'AND  Lo.LoadNo NOT IN (Select LoadNo FROM LoadFreightCost)'
      'AND lo.LocalShippingCompanyNo IS NULL'
      ''
      'Order by Lo.LoadNo desc')
    Left = 32
    Top = 512
    object sqLoadFCLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
    end
    object sqLoadFCLOAD_NO: TIntegerField
      FieldName = 'LOAD_NO'
    end
    object sqLoadFCFS: TStringField
      FieldName = 'FS'
      FixedChar = True
    end
    object sqLoadFCLOAD_ID: TStringField
      FieldName = 'LOAD_ID'
      Size = 50
    end
    object sqLoadFCLOADEDDATE: TSQLTimeStampField
      FieldName = 'LOADEDDATE'
    end
    object sqLoadFCSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object sqLoadFCFROM_PLACE: TStringField
      FieldName = 'FROM_PLACE'
      Size = 50
    end
    object sqLoadFCDESTINATION: TStringField
      FieldName = 'DESTINATION'
      Size = 50
    end
    object sqLoadFCM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sqLoadFCPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object sqLoadFCINVOICEAMOUNT: TFloatField
      FieldName = 'INVOICEAMOUNT'
    end
    object sqLoadFCSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object sqLoadFCCREATEDUSER: TSmallintField
      FieldName = 'CREATEDUSER'
    end
    object sqLoadFCMODIFIEDUSER: TSmallintField
      FieldName = 'MODIFIEDUSER'
    end
    object sqLoadFCDATECREATED: TSQLTimeStampField
      FieldName = 'DATECREATED'
    end
    object sqLoadFCDATEMODIFIED: TSQLTimeStampField
      FieldName = 'DATEMODIFIED'
    end
  end
  object sqGetSupplierNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select distinct SupplierNo From dbo.Loads LO'
      
        'Inner Join dbo.Confirmed_Load   CL ON CL.Confirmed_LoadNo = Lo.L' +
        'oadNo'
      'Inner Join ClientRole CR ON CR.ClientNo = Lo.SupplierNo'
      'AND CR.RoleType = 9'
      'Where LoadNo = :LoadNo'
      '')
    Left = 112
    Top = 480
    object sqGetSupplierNoSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
  end
  object ds_Language: TDataSource
    DataSet = cds_Language
    Left = 776
    Top = 160
  end
  object sq_UpdateLoad: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LocalShippingCompanyNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Update dbo.Loads'
      'Set LocalShippingCompanyNo = :LocalShippingCompanyNo'
      'WHERE Loads.LoadNo = :LoadNo')
    Left = 296
    Top = 536
  end
end
