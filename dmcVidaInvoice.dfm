object dmVidaInvoice: TdmVidaInvoice
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 244
  Top = 106
  Height = 657
  Width = 1005
  object sq_InvoiceHead: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM InvoiceHeader '
      'WHERE '
      'InternalInvoiceNo = :InternalInvoiceNo')
    Left = 64
    Top = 16
    object sq_InvoiceHeadInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvoiceHeadInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
    end
    object sq_InvoiceHeadInvoiceDate: TSQLTimeStampField
      FieldName = 'InvoiceDate'
    end
    object sq_InvoiceHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object sq_InvoiceHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object sq_InvoiceHeadAgentNo: TIntegerField
      FieldName = 'AgentNo'
    end
    object sq_InvoiceHeadAgentCommission: TFloatField
      FieldName = 'AgentCommission'
    end
    object sq_InvoiceHeadSendInvoiceToAgent: TIntegerField
      FieldName = 'SendInvoiceToAgent'
    end
    object sq_InvoiceHeadPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
    end
    object sq_InvoiceHeadCommissionPaidByCustomer: TIntegerField
      FieldName = 'CommissionPaidByCustomer'
    end
    object sq_InvoiceHeadDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
    end
    object sq_InvoiceHeadDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
    end
    object sq_InvoiceHeadStatus: TIntegerField
      FieldName = 'Status'
    end
    object sq_InvoiceHeadNote: TMemoField
      FieldName = 'Note'
      BlobType = ftMemo
    end
    object sq_InvoiceHeadInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      BlobType = ftMemo
    end
    object sq_InvoiceHeadPaymentText: TMemoField
      FieldName = 'PaymentText'
      BlobType = ftMemo
    end
    object sq_InvoiceHeadCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object sq_InvoiceHeadIncome_Account: TStringField
      FieldName = 'Income_Account'
      Size = 6
    end
    object sq_InvoiceHeadCustomerRecivablesAccount: TStringField
      FieldName = 'CustomerRecivablesAccount'
      Size = 6
    end
    object sq_InvoiceHeadVAT_OnInvoice: TIntegerField
      FieldName = 'VAT_OnInvoice'
    end
    object sq_InvoiceHeadClientBillingAddressNo: TIntegerField
      FieldName = 'ClientBillingAddressNo'
    end
    object sq_InvoiceHeadAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Size = 40
    end
    object sq_InvoiceHeadAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Size = 40
    end
    object sq_InvoiceHeadAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Size = 40
    end
    object sq_InvoiceHeadAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Size = 40
    end
    object sq_InvoiceHeadStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Size = 40
    end
    object sq_InvoiceHeadPostalCode: TStringField
      FieldName = 'PostalCode'
    end
    object sq_InvoiceHeadCityName: TStringField
      FieldName = 'CityName'
      Size = 50
    end
    object sq_InvoiceHeadCountryName: TStringField
      FieldName = 'CountryName'
      Size = 30
    end
    object sq_InvoiceHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_InvoiceHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_InvoiceHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_InvoiceHeadAgentName: TStringField
      FieldName = 'AgentName'
      Size = 80
    end
    object sq_InvoiceHeadCustomerName: TStringField
      FieldName = 'CustomerName'
      Size = 80
    end
    object sq_InvoiceHeadDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Size = 21
    end
    object sq_InvoiceHeadPaymentDescription: TStringField
      FieldName = 'PaymentDescription'
      Size = 100
    end
    object sq_InvoiceHeadLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
    end
    object sq_InvoiceHeadDestination: TStringField
      FieldName = 'Destination'
      Size = 50
    end
    object sq_InvoiceHeadFreightInDiscount: TIntegerField
      FieldName = 'FreightInDiscount'
    end
    object sq_InvoiceHeadFreightInCommission: TIntegerField
      FieldName = 'FreightInCommission'
    end
    object sq_InvoiceHeadDiscount1: TFloatField
      FieldName = 'Discount1'
    end
    object sq_InvoiceHeadCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 5
    end
    object sq_InvoiceHeadAddressName: TStringField
      FieldName = 'AddressName'
      Size = 80
    end
    object sq_InvoiceHeadST_AddressName: TStringField
      FieldName = 'ST_AddressName'
      Size = 80
    end
    object sq_InvoiceHeadST_AddressLine1: TStringField
      FieldName = 'ST_AddressLine1'
      Size = 40
    end
    object sq_InvoiceHeadST_AddressLine2: TStringField
      FieldName = 'ST_AddressLine2'
      Size = 40
    end
    object sq_InvoiceHeadST_AddressLine3: TStringField
      FieldName = 'ST_AddressLine3'
      Size = 40
    end
    object sq_InvoiceHeadST_AddressLine4: TStringField
      FieldName = 'ST_AddressLine4'
      Size = 40
    end
    object sq_InvoiceHeadST_StateOrProvince: TStringField
      FieldName = 'ST_StateOrProvince'
      Size = 40
    end
    object sq_InvoiceHeadST_PostalCode: TStringField
      FieldName = 'ST_PostalCode'
    end
    object sq_InvoiceHeadST_CityName: TStringField
      FieldName = 'ST_CityName'
      Size = 50
    end
    object sq_InvoiceHeadST_CountryName: TStringField
      FieldName = 'ST_CountryName'
      Size = 30
    end
    object sq_InvoiceHeadAGENT_ADDRESS_NAME: TStringField
      FieldName = 'AGENT_ADDRESS_NAME'
      Size = 80
    end
    object sq_InvoiceHeadAGENT_SHIPTO_ADDRESSLINE1: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE1'
      Size = 40
    end
    object sq_InvoiceHeadAGENT_SHIPTO_ADDRESSLINE2: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE2'
      Size = 40
    end
    object sq_InvoiceHeadAGENT_SHIPTO_ADDRESSLINE3: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE3'
      Size = 40
    end
    object sq_InvoiceHeadAGENT_SHIPTO_ADDRESSLINE4: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE4'
      Size = 40
    end
    object sq_InvoiceHeadAGENT_SHIPTO_PROVINCE: TStringField
      FieldName = 'AGENT_SHIPTO_PROVINCE'
      Size = 40
    end
    object sq_InvoiceHeadAGENT_SHIPTO_POSTALCODE: TStringField
      FieldName = 'AGENT_SHIPTO_POSTALCODE'
    end
    object sq_InvoiceHeadAGENT_SHIPTO_CITY: TStringField
      FieldName = 'AGENT_SHIPTO_CITY'
      Size = 50
    end
    object sq_InvoiceHeadAGENT_SHIPTO_COUNTRY: TStringField
      FieldName = 'AGENT_SHIPTO_COUNTRY'
      Size = 30
    end
    object sq_InvoiceHeadSearchName: TStringField
      FieldName = 'SearchName'
      Size = 80
    end
    object sq_InvoiceHeadTot_Inv_Inc_Freight_Extras: TFloatField
      FieldName = 'Tot_Inv_Inc_Freight_Extras'
    end
    object sq_InvoiceHeadSUM_FreigthCost: TFloatField
      FieldName = 'SUM_FreigthCost'
    end
    object sq_InvoiceHeadTotal_Product_Value_No_Freight: TFloatField
      FieldName = 'Total_Product_Value_No_Freight'
    end
    object sq_InvoiceHeadDiscount: TFloatField
      FieldName = 'Discount'
    end
    object sq_InvoiceHeadCommission: TFloatField
      FieldName = 'Commission'
    end
    object sq_InvoiceHeadCommission_and_Discount: TFloatField
      FieldName = 'Commission_and_Discount'
    end
    object sq_InvoiceHeadInv_Value_Deduct_Com_Dis: TFloatField
      FieldName = 'Inv_Value_Deduct_Com_Dis'
    end
    object sq_InvoiceHeadVAT_Value: TFloatField
      FieldName = 'VAT_Value'
    end
    object sq_InvoiceHeadInv_Value_To_Be_Paid: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid'
    end
    object sq_InvoiceHeadDebit_Credit: TIntegerField
      FieldName = 'Debit_Credit'
    end
    object sq_InvoiceHeadInv_Value_After_Deduct_DIS_COMM: TFloatField
      FieldName = 'Inv_Value_After_Deduct_DIS_COMM'
    end
    object sq_InvoiceHeadVAT: TStringField
      FieldName = 'VAT'
    end
    object sq_InvoiceHeadInv_Value_To_Be_Paid_2: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid_2'
    end
    object sq_InvoiceHeadQuickInvoice: TIntegerField
      FieldName = 'QuickInvoice'
    end
    object sq_InvoiceHeadStickyNote: TStringField
      FieldName = 'StickyNote'
      Size = 255
    end
    object sq_InvoiceHeadSalesOrgNo: TStringField
      FieldName = 'SalesOrgNo'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object dspInvoiceHead: TDataSetProvider
    DataSet = sq_InvoiceHead
    Constraints = True
    UpdateMode = upWhereChanged
    Left = 64
    Top = 64
  end
  object cdsInvoiceHead: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'InternalInvoiceNo'
        DataType = ftInteger
      end
      item
        Name = 'InvoiceType'
        DataType = ftInteger
      end
      item
        Name = 'InvoiceDate'
        DataType = ftTimeStamp
      end
      item
        Name = 'SupplierNo'
        DataType = ftInteger
      end
      item
        Name = 'CustomerNo'
        DataType = ftInteger
      end
      item
        Name = 'AgentNo'
        DataType = ftInteger
      end
      item
        Name = 'AgentCommission'
        DataType = ftFloat
      end
      item
        Name = 'SendInvoiceToAgent'
        DataType = ftInteger
      end
      item
        Name = 'PaymentTermsNo'
        DataType = ftInteger
      end
      item
        Name = 'CommissionPaidByCustomer'
        DataType = ftInteger
      end
      item
        Name = 'DeliveryTermsNo'
        DataType = ftInteger
      end
      item
        Name = 'DestinationNo'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end
      item
        Name = 'Note'
        DataType = ftMemo
      end
      item
        Name = 'InvoiceText'
        DataType = ftMemo
      end
      item
        Name = 'PaymentText'
        DataType = ftMemo
      end
      item
        Name = 'CurrencyNo'
        DataType = ftInteger
      end
      item
        Name = 'Income_Account'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CustomerRecivablesAccount'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VAT_OnInvoice'
        DataType = ftInteger
      end
      item
        Name = 'ClientBillingAddressNo'
        DataType = ftInteger
      end
      item
        Name = 'AddressLine1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AddressLine2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AddressLine3'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AddressLine4'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'StateOrProvince'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PostalCode'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CityName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CountryName'
        DataType = ftString
        Size = 30
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
        Name = 'AgentName'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'CustomerName'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DeliveryTerm'
        DataType = ftString
        Size = 21
      end
      item
        Name = 'PaymentDescription'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'LanguageCode'
        DataType = ftInteger
      end
      item
        Name = 'Destination'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FreightInDiscount'
        DataType = ftInteger
      end
      item
        Name = 'FreightInCommission'
        DataType = ftInteger
      end
      item
        Name = 'Discount1'
        DataType = ftFloat
      end
      item
        Name = 'CurrencyName'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'AddressName'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'ST_AddressName'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'ST_AddressLine1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ST_AddressLine2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ST_AddressLine3'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ST_AddressLine4'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ST_StateOrProvince'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ST_PostalCode'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ST_CityName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ST_CountryName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'AGENT_ADDRESS_NAME'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'AGENT_SHIPTO_ADDRESSLINE1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AGENT_SHIPTO_ADDRESSLINE2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AGENT_SHIPTO_ADDRESSLINE3'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AGENT_SHIPTO_ADDRESSLINE4'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AGENT_SHIPTO_PROVINCE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AGENT_SHIPTO_POSTALCODE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AGENT_SHIPTO_CITY'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'AGENT_SHIPTO_COUNTRY'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SearchName'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Tot_Inv_Inc_Freight_Extras'
        DataType = ftFloat
      end
      item
        Name = 'SUM_FreigthCost'
        DataType = ftFloat
      end
      item
        Name = 'Total_Product_Value_No_Freight'
        DataType = ftFloat
      end
      item
        Name = 'Discount'
        DataType = ftFloat
      end
      item
        Name = 'Commission'
        DataType = ftFloat
      end
      item
        Name = 'Commission_and_Discount'
        DataType = ftFloat
      end
      item
        Name = 'Inv_Value_Deduct_Com_Dis'
        DataType = ftFloat
      end
      item
        Name = 'VAT_Value'
        DataType = ftFloat
      end
      item
        Name = 'Inv_Value_To_Be_Paid'
        DataType = ftFloat
      end
      item
        Name = 'Debit_Credit'
        DataType = ftInteger
      end
      item
        Name = 'Inv_Value_After_Deduct_DIS_COMM'
        DataType = ftFloat
      end
      item
        Name = 'VAT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Inv_Value_To_Be_Paid_2'
        DataType = ftFloat
      end
      item
        Name = 'QuickInvoice'
        DataType = ftInteger
      end
      item
        Name = 'StickyNote'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'SalesOrgNo'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspInvoiceHead'
    StoreDefs = True
    OnReconcileError = cdsInvoiceHeadReconcileError
    Left = 64
    Top = 112
    object cdsInvoiceHeadInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInvoiceHeadInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
    end
    object cdsInvoiceHeadInvoiceDate: TSQLTimeStampField
      FieldName = 'InvoiceDate'
    end
    object cdsInvoiceHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object cdsInvoiceHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object cdsInvoiceHeadAgentNo: TIntegerField
      FieldName = 'AgentNo'
    end
    object cdsInvoiceHeadAgentCommission: TFloatField
      FieldName = 'AgentCommission'
    end
    object cdsInvoiceHeadSendInvoiceToAgent: TIntegerField
      FieldName = 'SendInvoiceToAgent'
    end
    object cdsInvoiceHeadPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
    end
    object cdsInvoiceHeadCommissionPaidByCustomer: TIntegerField
      FieldName = 'CommissionPaidByCustomer'
    end
    object cdsInvoiceHeadDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
    end
    object cdsInvoiceHeadDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
    end
    object cdsInvoiceHeadStatus: TIntegerField
      FieldName = 'Status'
    end
    object cdsInvoiceHeadNote: TMemoField
      FieldName = 'Note'
      BlobType = ftMemo
    end
    object cdsInvoiceHeadInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      BlobType = ftMemo
    end
    object cdsInvoiceHeadPaymentText: TMemoField
      FieldName = 'PaymentText'
      BlobType = ftMemo
    end
    object cdsInvoiceHeadCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object cdsInvoiceHeadIncome_Account: TStringField
      FieldName = 'Income_Account'
      Size = 6
    end
    object cdsInvoiceHeadCustomerRecivablesAccount: TStringField
      FieldName = 'CustomerRecivablesAccount'
      Size = 6
    end
    object cdsInvoiceHeadVAT_OnInvoice: TIntegerField
      FieldName = 'VAT_OnInvoice'
    end
    object cdsInvoiceHeadClientBillingAddressNo: TIntegerField
      FieldName = 'ClientBillingAddressNo'
    end
    object cdsInvoiceHeadAddressName: TStringField
      FieldName = 'AddressName'
      Size = 80
    end
    object cdsInvoiceHeadAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Size = 40
    end
    object cdsInvoiceHeadAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Size = 40
    end
    object cdsInvoiceHeadAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Size = 40
    end
    object cdsInvoiceHeadAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Size = 40
    end
    object cdsInvoiceHeadStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Size = 40
    end
    object cdsInvoiceHeadPostalCode: TStringField
      FieldName = 'PostalCode'
    end
    object cdsInvoiceHeadCityName: TStringField
      FieldName = 'CityName'
      Size = 50
    end
    object cdsInvoiceHeadCountryName: TStringField
      FieldName = 'CountryName'
      Size = 30
    end
    object cdsInvoiceHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cdsInvoiceHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cdsInvoiceHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cdsInvoiceHeadAgentName: TStringField
      FieldName = 'AgentName'
      Size = 80
    end
    object cdsInvoiceHeadCustomerName: TStringField
      FieldName = 'CustomerName'
      Size = 80
    end
    object cdsInvoiceHeadDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Size = 21
    end
    object cdsInvoiceHeadPaymentDescription: TStringField
      FieldName = 'PaymentDescription'
      Size = 100
    end
    object cdsInvoiceHeadLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
    end
    object cdsInvoiceHeadDestination: TStringField
      FieldName = 'Destination'
      Size = 50
    end
    object cdsInvoiceHeadFreightInDiscount: TIntegerField
      FieldName = 'FreightInDiscount'
    end
    object cdsInvoiceHeadFreightInCommission: TIntegerField
      FieldName = 'FreightInCommission'
    end
    object cdsInvoiceHeadDiscount1: TFloatField
      FieldName = 'Discount1'
    end
    object cdsInvoiceHeadCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 5
    end
    object cdsInvoiceHeadST_AddressName: TStringField
      FieldName = 'ST_AddressName'
      Size = 80
    end
    object cdsInvoiceHeadST_AddressLine1: TStringField
      FieldName = 'ST_AddressLine1'
      Size = 40
    end
    object cdsInvoiceHeadST_AddressLine2: TStringField
      FieldName = 'ST_AddressLine2'
      Size = 40
    end
    object cdsInvoiceHeadST_AddressLine3: TStringField
      FieldName = 'ST_AddressLine3'
      Size = 40
    end
    object cdsInvoiceHeadST_AddressLine4: TStringField
      FieldName = 'ST_AddressLine4'
      Size = 40
    end
    object cdsInvoiceHeadST_StateOrProvince: TStringField
      FieldName = 'ST_StateOrProvince'
      Size = 40
    end
    object cdsInvoiceHeadST_PostalCode: TStringField
      FieldName = 'ST_PostalCode'
    end
    object cdsInvoiceHeadST_CityName: TStringField
      FieldName = 'ST_CityName'
      Size = 50
    end
    object cdsInvoiceHeadST_CountryName: TStringField
      FieldName = 'ST_CountryName'
      Size = 30
    end
    object cdsInvoiceHeadAGENT_ADDRESS_NAME: TStringField
      FieldName = 'AGENT_ADDRESS_NAME'
      Size = 80
    end
    object cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE1: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE1'
      Size = 40
    end
    object cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE2: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE2'
      Size = 40
    end
    object cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE3: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE3'
      Size = 40
    end
    object cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE4: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE4'
      Size = 40
    end
    object cdsInvoiceHeadAGENT_SHIPTO_PROVINCE: TStringField
      FieldName = 'AGENT_SHIPTO_PROVINCE'
      Size = 40
    end
    object cdsInvoiceHeadAGENT_SHIPTO_POSTALCODE: TStringField
      FieldName = 'AGENT_SHIPTO_POSTALCODE'
    end
    object cdsInvoiceHeadAGENT_SHIPTO_CITY: TStringField
      FieldName = 'AGENT_SHIPTO_CITY'
      Size = 50
    end
    object cdsInvoiceHeadAGENT_SHIPTO_COUNTRY: TStringField
      FieldName = 'AGENT_SHIPTO_COUNTRY'
      Size = 30
    end
    object cdsInvoiceHeadSearchName: TStringField
      FieldName = 'SearchName'
      Size = 80
    end
    object cdsInvoiceHeadTot_Inv_Inc_Freight_Extras: TFloatField
      FieldName = 'Tot_Inv_Inc_Freight_Extras'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHeadSUM_FreigthCost: TFloatField
      FieldName = 'SUM_FreigthCost'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHeadTotal_Product_Value_No_Freight: TFloatField
      FieldName = 'Total_Product_Value_No_Freight'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHeadDiscount: TFloatField
      FieldName = 'Discount'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHeadCommission: TFloatField
      FieldName = 'Commission'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHeadCommission_and_Discount: TFloatField
      FieldName = 'Commission_and_Discount'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHeadInv_Value_Deduct_Com_Dis: TFloatField
      FieldName = 'Inv_Value_Deduct_Com_Dis'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHeadVAT_Value: TFloatField
      FieldName = 'VAT_Value'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHeadInv_Value_To_Be_Paid: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHeadDebit_Credit: TIntegerField
      FieldName = 'Debit_Credit'
    end
    object cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM: TFloatField
      FieldName = 'Inv_Value_After_Deduct_DIS_COMM'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHeadVAT: TStringField
      FieldName = 'VAT'
    end
    object cdsInvoiceHeadInv_Value_To_Be_Paid_2: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid_2'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHeadQuickInvoice: TIntegerField
      FieldName = 'QuickInvoice'
    end
    object cdsInvoiceHeadStickyNote: TStringField
      FieldName = 'StickyNote'
      Size = 255
    end
    object cdsInvoiceHeadSalesOrgNo: TStringField
      FieldName = 'SalesOrgNo'
      Size = 10
    end
  end
  object dsrcInvoiceHead: TDataSource
    DataSet = cdsInvoiceHead
    Left = 64
    Top = 160
  end
  object sq_GetInvoiceHeadData: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
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
    SQL.Strings = (
      'SELECT'
      'CSH.ShippingPlanNo,'
      'CSH.CustomerNo,'
      'OH.CustomerNo AS CustomerNoOH,'
      'OH.AgentNo,'
      'C.VATNO AS      VAT,'
      'OH.AgentCommission,'
      'OH.SendInvoiceToAgent,'
      ''
      'OH.PaymentTermsNo AS PaymentTermsNo, '
      'OH.DeliveryTermsNo AS DeliveryTermsNo,'
      'CSH.DestinationNo,'
      'Cy.CityName as Destination,'
      'OH.InvoiceText,'
      'OH.OrderNoText,'
      'PayText.PaymentText,'
      'OH.CurrencyNo,'
      ''
      'OH.ClientBillingAddressNo,'
      'FDR.AddressName'#9#9#9'AS BILL_ADDRESS_NAME,'
      'FDR.AddressLine1,'
      'FDR.AddressLine2,'
      'FDR.AddressLine3,'
      'FDR.AddressLine4,'
      'FDR.StateOrProvince,'
      'FDR.PostalCode,'
      'FDrCY.CityName as AddressCity,'
      'FDrCtry.CountryName as AddressCountry,'
      ''
      ''
      'C.ClientName as CustomerName,'
      'C.SearchName as SearchName,'
      'Ag.ClientName as AgentName,'
      'OH.LanguageCode,'
      ''
      'DT.DeliveryTerm,'
      'PT."Description" as PayDesc,'
      ''
      'DTOH.DeliveryTerm as DeliveryTermOH,'
      'PTOH."Description" as PayDescOH,'
      ''
      'PayT.FreightInDiscount,'
      'PayT.FreightInCommission ,'
      'PayT.CommissionPaidByCustomer,'
      'PayT.Discount1,'
      'CU.CurrencyName'#9#9#9#9'AS CURRENCYNAME,'
      ''
      'ST_ADR.AddressName'#9#9#9'AS AVROP_SHIPTO_ADDRESS_NAME,'
      'ST_ADR.AddressLine1'#9#9#9'AS AVROP_SHIPTO_ADDRESSLINE1,'
      'ST_ADR.AddressLine2'#9#9#9'AS AVROP_SHIPTO_ADDRESSLINE2,'
      'ST_ADR.AddressLine3'#9#9#9'AS AVROP_SHIPTO_ADDRESSLINE3,'
      'ST_ADR.AddressLine4'#9#9#9'AS AVROP_SHIPTO_ADDRESSLINE4,'
      'ST_ADR.StateOrProvince'#9#9#9'AS AVROP_SHIPTO_PROVINCE,'
      'ST_ADR.PostalCode'#9#9#9'AS AVROP_SHIPTO_POSTALCODE,'
      'ST_AdrCY.CityName '#9#9#9'AS AVROP_SHIPTO_CITY,'
      'ST_AdrCtry.CountryName '#9#9#9'AS AVROP_SHIPTO_COUNTRY,'
      ''
      'Agent_ADR.AddressName'#9#9#9'AS AGENT_ADDRESS_NAME,'
      'Agent_ADR.AddressLine1'#9#9#9'AS AGENT_SHIPTO_ADDRESSLINE1,'
      'Agent_ADR.AddressLine2'#9#9#9'AS AGENT_SHIPTO_ADDRESSLINE2,'
      'Agent_ADR.AddressLine3'#9#9#9'AS AGENT_SHIPTO_ADDRESSLINE3,'
      'Agent_ADR.AddressLine4'#9#9#9'AS AGENT_SHIPTO_ADDRESSLINE4,'
      'Agent_ADR.StateOrProvince'#9#9'AS AGENT_SHIPTO_PROVINCE,'
      'Agent_ADR.PostalCode'#9#9#9'AS AGENT_SHIPTO_POSTALCODE,'
      'Agent_CY.CityName '#9#9#9'AS AGENT_SHIPTO_CITY,'
      'Agent_Ctry.CountryName '#9#9#9'AS AGENT_SHIPTO_COUNTRY,'
      'Vat_OnInvoice                           AS VAT_ONINVOICE ,'
      'OH.SalesOrgNo,'
      'OH.OrderNo'
      ''
      ''
      'FROM dbo.CustomerShippingPlanHeader CSH'
      ''
      
        #9'INNER JOIN dbo.LoadShippingPlan'#9#9'LS'#9'ON'#9'LS.ShippingPlanNo'#9'= CSH.' +
        'ShippingPlanNo'
      ''
      #9'INNER JOIN dbo.Loads'#9#9#9'LO'#9'ON'#9'LO.LoadNo'#9#9'= LS.LoadNo'
      ''
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD '#9'ON CSD.Shipping' +
        'PlanNo'#9#9'= CSH.ShippingPlanNo'
      ''
      #9'LEFT OUTER JOIN ShippingPlan_ShippingAddress ST'
      
        #9'INNER JOIN dbo.Address '#9#9'ST_ADR'#9#9'ON'#9'ST_ADR.AddressNo'#9'= ST.Addre' +
        'ssNo'
      
        #9'INNER JOIN dbo.CITY'#9#9'ST_AdrCY'#9'ON'#9'ST_AdrCY.CityNo '#9'= ST_ADR.City' +
        'No'
      
        #9'INNER JOIN dbo.Country'#9#9'ST_AdrCtry'#9'ON'#9'ST_AdrCtry.CountryNo '#9'= S' +
        'T_ADR.CountryNo'
      #9#9#9#9#9#9#9'ON'#9'ST.ShippingPlanNo'#9'= CSD.ShippingPlanNo'
      #9#9#9#9#9#9#9'AND'#9'ST.Reference'#9#9'= CSD.Reference'
      ''
      #9'INNER JOIN dbo.Client '#9#9#9'C'#9'ON '#9'C.ClientNo'#9#9'= CSH.CustomerNo'
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= CSH.OrderNo'
      ''
      ''
      #9'LEFT OUTER JOIN dbo.Address '#9#9'FDR'
      #9'INNER JOIN dbo.CITY'#9#9#9'FDrCY'#9'ON'#9'FDrCY.CityNo '#9#9'= FDR.CityNo'
      
        #9'INNER JOIN dbo.Country'#9#9#9'FDrCtry'#9'ON'#9'FDrCtry.CountryNo '#9'= FDR.Co' +
        'untryNo'
      #9#9#9#9#9#9#9'ON'#9'FDR.AddressNo'#9#9'= CSH.ClientBillingAddressNo'
      ''
      
        '        LEFT OUTER Join dbo.PaymentText PayText                 ' +
        'ON      PayText.CurrencyNo = OH.CurrencyNo'
      
        '                                                        AND     ' +
        'PayText.LanguageCode = OH.LanguageCode'
      
        '                                                        AND     ' +
        'PayText.CountryNo = FDR.CountryNo'
      ''
      #9'LEFT OUTER JOIN dbo.Address '#9#9'Agent_ADR'
      
        #9'INNER JOIN dbo.CITY'#9#9#9'Agent_CY ON Agent_CY.CityNo '#9#9'= Agent_ADR' +
        '.CityNo'
      
        #9'INNER JOIN dbo.Country'#9#9#9'Agent_Ctry ON Agent_Ctry.CountryNo '#9'= ' +
        'Agent_ADR.CountryNo'
      #9#9#9#9#9#9#9'ON'#9'Agent_ADR.AddressNo'#9'= OH.AgentBillingAddressNo'
      ''
      ''
      
        #9'INNER JOIN dbo.Users'#9' '#9#9'US'#9'ON'#9'US.UserID '#9#9'= OH.ResponsibleSelle' +
        'r'
      ''
      ''
      ''
      
        #9'LEFT  OUTER JOIN dbo.City'#9#9'Cy '#9'ON  '#9'CSH.DestinationNo       = C' +
        'y.CityNo'
      
        #9'LEFT  OUTER JOIN dbo.Client'#9#9'AG'#9'ON  '#9'OH.AgentNo'#9'       '#9'= AG.Cl' +
        'ientNo'
      ''
      
        '        LEFT OUTER JOIN dbo.ClientPreference    cp      ON      ' +
        'cp.clientNo             = CSH.CustomerNo'
      
        '                                                        AND     ' +
        'cp.RoleType             = 1'
      
        #9'LEFT OUTER JOIN dbo.Currency'#9#9#9'CU'#9'ON'#9'CU.CurrencyNo'#9#9'= OH.Curren' +
        'cyNo'
      ''
      
        #9'LEFT OUTER JOIN dbo.DeliveryTerm'#9#9'DT'#9'ON'#9'DT.DeliveryTerm_No'#9'= OH' +
        '.DeliveryTermsNo'
      ''
      
        #9'LEFT OUTER JOIN dbo.PaymentTerms'#9#9'PayT'#9'ON'#9'PayT.PaymentTermsNo'#9'=' +
        ' OH.PaymentTermsNo'
      ''
      
        #9'LEFT OUTER JOIN dbo.PaymentTermDesc'#9#9'PT'#9'ON'#9'PT.PaymentTermsNo'#9'= ' +
        'OH.PaymentTermsNo'
      #9#9#9#9#9#9#9#9'AND '#9'PT.LanguageCode'#9#9'= OH.LanguageCode'
      ''
      
        #9'LEFT OUTER JOIN dbo.DeliveryTerm'#9#9'DTOH'#9'ON'#9'DTOH.DeliveryTerm_No'#9 +
        '= OH.DeliveryTermsNo'
      ''
      
        #9'LEFT OUTER JOIN dbo.PaymentTerms'#9#9'PayTOH'#9'ON'#9'PayTOH.PaymentTerms' +
        'No'#9'= OH.PaymentTermsNo'
      ''
      
        #9'LEFT OUTER JOIN dbo.PaymentTermDesc'#9#9'PTOH'#9'ON'#9'PTOH.PaymentTermsN' +
        'o'#9'= OH.PaymentTermsNo'
      #9#9#9#9#9#9#9#9'AND '#9'PTOH.LanguageCode'#9#9'= OH.LanguageCode'
      ''
      ''
      ''
      
        '        LEFT OUTER JOIN dbo.Invoiced_Load IL'#9'ON IL.LoadNo = LS.L' +
        'oadNo'
      #9#9#9#9'AND IL.ShippingPlanNo = LS.ShippingPlanNo'
      ''
      ''
      ''
      'WHERE'
      ' CSH.ShippingPlanNo = :ShippingPlanNo'
      'AND '#9'LO.CustomerNo = :CustomerNo'
      'AND LO.SenderLoadStatus = 2'
      'AND IL.InternalInvoiceNo IS NULL'
      ''
      ''
      '')
    Left = 64
    Top = 216
    object sq_GetInvoiceHeadDataShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object sq_GetInvoiceHeadDataCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object sq_GetInvoiceHeadDataAgentNo: TIntegerField
      FieldName = 'AgentNo'
    end
    object sq_GetInvoiceHeadDataAgentCommission: TFloatField
      FieldName = 'AgentCommission'
    end
    object sq_GetInvoiceHeadDataSendInvoiceToAgent: TIntegerField
      FieldName = 'SendInvoiceToAgent'
    end
    object sq_GetInvoiceHeadDataPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
    end
    object sq_GetInvoiceHeadDataDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
    end
    object sq_GetInvoiceHeadDataDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
    end
    object sq_GetInvoiceHeadDataDestination: TStringField
      FieldName = 'Destination'
      Size = 50
    end
    object sq_GetInvoiceHeadDataInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      BlobType = ftMemo
    end
    object sq_GetInvoiceHeadDataPaymentText: TMemoField
      FieldName = 'PaymentText'
      BlobType = ftMemo
    end
    object sq_GetInvoiceHeadDataCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object sq_GetInvoiceHeadDataClientBillingAddressNo: TIntegerField
      FieldName = 'ClientBillingAddressNo'
    end
    object sq_GetInvoiceHeadDataAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Size = 40
    end
    object sq_GetInvoiceHeadDataStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Size = 40
    end
    object sq_GetInvoiceHeadDataPostalCode: TStringField
      FieldName = 'PostalCode'
    end
    object sq_GetInvoiceHeadDataAddressCity: TStringField
      FieldName = 'AddressCity'
      Size = 50
    end
    object sq_GetInvoiceHeadDataAddressCountry: TStringField
      FieldName = 'AddressCountry'
      Size = 30
    end
    object sq_GetInvoiceHeadDataCustomerName: TStringField
      FieldName = 'CustomerName'
      Size = 80
    end
    object sq_GetInvoiceHeadDataAgentName: TStringField
      FieldName = 'AgentName'
      Size = 80
    end
    object sq_GetInvoiceHeadDataDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Size = 21
    end
    object sq_GetInvoiceHeadDataLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
    end
    object sq_GetInvoiceHeadDataPayDesc: TStringField
      FieldName = 'PayDesc'
      Size = 100
    end
    object sq_GetInvoiceHeadDataFreightInDiscount: TIntegerField
      FieldName = 'FreightInDiscount'
    end
    object sq_GetInvoiceHeadDataFreightInCommission: TIntegerField
      FieldName = 'FreightInCommission'
    end
    object sq_GetInvoiceHeadDataCommissionPaidByCustomer: TIntegerField
      FieldName = 'CommissionPaidByCustomer'
    end
    object sq_GetInvoiceHeadDataDiscount1: TFloatField
      FieldName = 'Discount1'
    end
    object sq_GetInvoiceHeadDataCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 5
    end
    object sq_GetInvoiceHeadDataBILL_ADDRESS_NAME: TStringField
      FieldName = 'BILL_ADDRESS_NAME'
      Size = 80
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE1: TStringField
      FieldName = 'AVROP_SHIPTO_ADDRESSLINE1'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE2: TStringField
      FieldName = 'AVROP_SHIPTO_ADDRESSLINE2'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE3: TStringField
      FieldName = 'AVROP_SHIPTO_ADDRESSLINE3'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE4: TStringField
      FieldName = 'AVROP_SHIPTO_ADDRESSLINE4'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_PROVINCE: TStringField
      FieldName = 'AVROP_SHIPTO_PROVINCE'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_POSTALCODE: TStringField
      FieldName = 'AVROP_SHIPTO_POSTALCODE'
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_CITY: TStringField
      FieldName = 'AVROP_SHIPTO_CITY'
      Size = 50
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_COUNTRY: TStringField
      FieldName = 'AVROP_SHIPTO_COUNTRY'
      Size = 30
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESS_NAME: TStringField
      FieldName = 'AVROP_SHIPTO_ADDRESS_NAME'
      Size = 80
    end
    object sq_GetInvoiceHeadDataOrderNoText: TStringField
      FieldName = 'OrderNoText'
    end
    object sq_GetInvoiceHeadDataAGENT_ADDRESS_NAME: TStringField
      FieldName = 'AGENT_ADDRESS_NAME'
      Size = 80
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE1: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE1'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE2: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE2'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE3: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE3'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE4: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE4'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_PROVINCE: TStringField
      FieldName = 'AGENT_SHIPTO_PROVINCE'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_POSTALCODE: TStringField
      FieldName = 'AGENT_SHIPTO_POSTALCODE'
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_CITY: TStringField
      FieldName = 'AGENT_SHIPTO_CITY'
      Size = 50
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_COUNTRY: TStringField
      FieldName = 'AGENT_SHIPTO_COUNTRY'
      Size = 30
    end
    object sq_GetInvoiceHeadDataSearchName: TStringField
      FieldName = 'SearchName'
      Size = 80
    end
    object sq_GetInvoiceHeadDataVAT_ONINVOICE: TIntegerField
      FieldName = 'VAT_ONINVOICE'
    end
    object sq_GetInvoiceHeadDataVAT: TStringField
      FieldName = 'VAT'
    end
    object sq_GetInvoiceHeadDataCustomerNoOH: TIntegerField
      FieldName = 'CustomerNoOH'
    end
    object sq_GetInvoiceHeadDataDeliveryTermOH: TStringField
      FieldName = 'DeliveryTermOH'
      Size = 21
    end
    object sq_GetInvoiceHeadDataPayDescOH: TStringField
      FieldName = 'PayDescOH'
      Size = 100
    end
    object sq_GetInvoiceHeadDataSalesOrgNo: TStringField
      FieldName = 'SalesOrgNo'
      Size = 10
    end
    object sq_GetInvoiceHeadDataOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
  end
  object sq_InvoiceLO: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM INVOICELO ILO'
      'WHERE '
      'ILO.InternalInvoiceNo = :InternalInvoiceNo')
    Left = 168
    Top = 8
    object sq_InvoiceLOInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvoiceLOShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvoiceLOOrderNoText: TStringField
      FieldName = 'OrderNoText'
    end
    object sq_InvoiceLOReference: TStringField
      FieldName = 'Reference'
      Size = 30
    end
    object sq_InvoiceLOOurReference: TStringField
      FieldName = 'OurReference'
      Size = 30
    end
    object sq_InvoiceLOSalesMan: TStringField
      FieldName = 'SalesMan'
      Size = 30
    end
    object sq_InvoiceLOBookingNo: TIntegerField
      FieldName = 'BookingNo'
    end
    object sq_InvoiceLOTotalFreightCost: TFloatField
      FieldName = 'TotalFreightCost'
    end
    object sq_InvoiceLOFreightCostPerUnit: TFloatField
      FieldName = 'FreightCostPerUnit'
    end
    object sq_InvoiceLOInvoiceAdditionAmount: TFloatField
      FieldName = 'InvoiceAdditionAmount'
    end
    object sq_InvoiceLOInvoiceAdditionUnitNo: TIntegerField
      FieldName = 'InvoiceAdditionUnitNo'
    end
    object sq_InvoiceLOInvoiceAdditionDescription: TStringField
      FieldName = 'InvoiceAdditionDescription'
      Size = 40
    end
    object sq_InvoiceLOCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_InvoiceLOModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_InvoiceLODateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_InvoiceLOShipper: TStringField
      FieldName = 'Shipper'
      Size = 80
    end
    object sq_InvoiceLOCarrierName: TStringField
      FieldName = 'CarrierName'
      Size = 50
    end
    object sq_InvoiceLOETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object sq_InvoiceLOETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object sq_InvoiceLOTrpID: TStringField
      FieldName = 'TrpID'
      Size = 50
    end
  end
  object dspInvoiceLO: TDataSetProvider
    DataSet = sq_InvoiceLO
    Constraints = True
    UpdateMode = upWhereChanged
    Left = 168
    Top = 64
  end
  object cdsInvoiceLO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInvoiceLO'
    OnReconcileError = cdsInvoiceLOReconcileError
    Left = 168
    Top = 112
    object cdsInvoiceLOInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInvoiceLOShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInvoiceLOOrderNoText: TStringField
      FieldName = 'OrderNoText'
    end
    object cdsInvoiceLOReference: TStringField
      FieldName = 'Reference'
      Size = 30
    end
    object cdsInvoiceLOOurReference: TStringField
      FieldName = 'OurReference'
      Size = 30
    end
    object cdsInvoiceLOSalesMan: TStringField
      FieldName = 'SalesMan'
      Size = 30
    end
    object cdsInvoiceLOBookingNo: TIntegerField
      FieldName = 'BookingNo'
    end
    object cdsInvoiceLOTotalFreightCost: TFloatField
      FieldName = 'TotalFreightCost'
    end
    object cdsInvoiceLOFreightCostPerUnit: TFloatField
      FieldName = 'FreightCostPerUnit'
    end
    object cdsInvoiceLOInvoiceAdditionAmount: TFloatField
      FieldName = 'InvoiceAdditionAmount'
    end
    object cdsInvoiceLOInvoiceAdditionUnitNo: TIntegerField
      FieldName = 'InvoiceAdditionUnitNo'
    end
    object cdsInvoiceLOInvoiceAdditionDescription: TStringField
      FieldName = 'InvoiceAdditionDescription'
      Size = 40
    end
    object cdsInvoiceLOCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cdsInvoiceLOModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cdsInvoiceLODateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cdsInvoiceLOShipper: TStringField
      FieldName = 'Shipper'
      Size = 80
    end
    object cdsInvoiceLOCarrierName: TStringField
      FieldName = 'CarrierName'
      Size = 50
    end
    object cdsInvoiceLOETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object cdsInvoiceLOETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object cdsInvoiceLOTrpID: TStringField
      FieldName = 'TrpID'
      Size = 50
    end
  end
  object dsrcInvoiceLO: TDataSource
    DataSet = cdsInvoiceLO
    Left = 168
    Top = 160
  end
  object sq_GetLOData: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
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
    SQL.Strings = (
      'SELECT distinct'
      'CSH.ShippingPlanStatus'#9#9#9#9'AS STATUS, '#9#9'-- Integer '
      'CSH.ShippingPlanNo '#9#9#9#9'AS LO, '#9#9#9'-- Integer '
      'OH.OrderNoText'#9#9#9#9#9'AS ORDERNUMBER,'#9#9'-- CHAR 20 '
      'isNull(CSH.Reference,'#39'Non'#39')'#9#9#9'AS REFERENCE,'#9#9'-- VARCHAR 30'
      'isNull(CSH.OurReference,'#39'Non'#39')'#9#9#9'AS OURREFERENCE,'#9'-- VARCHAR 30'
      'RTRIM(US.FirstName)+'#39' '#39'+RTRIM(US.LastName)     AS SALESMAN,'
      'Bk.BookingNo'#9#9#9#9#9'AS BOOKINGNO,'
      'CSH.InvoiceAdditionAmount'#9#9#9'AS ADDITION_AMOUNT,'
      'CSH.InvoiceAdditionUnitNo'#9#9#9'AS ADDITION_UNITNO,'
      'CSH.InvoiceAdditionDescription'#9#9#9'AS ADDITION_DESC,'
      'SC.ClientName                                   AS SHIPPER,'
      'ISNULL(Cr.CarrierName,'#39'Non'#39')                    AS CARRIERNAME,'
      'isNull(Vg.ETD,000000)                           AS ETD,'
      'isNull(Vg.ETA,000000)                           AS ETA,'
      'Bk.SupplierReference                            AS TrpID,'
      
        'PU.TemplateUnitName                             AS ADDITION_PRIC' +
        'EUNIT'
      ''
      ''
      ''
      ''
      'FROM dbo.LoadShippingPlan'#9#9'LS'
      
        #9'INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON'#9'LS.ShippingPla' +
        'nNo'#9'= CSH.ShippingPlanNo'
      #9'INNER JOIN dbo.Loads'#9#9#9'LO'#9'ON '#9'LO.LoadNo'#9#9'= LS.LoadNo'
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= CSH.OrderNo'
      
        #9'INNER JOIN dbo.Users'#9' '#9#9'US'#9'ON'#9'US.UserID '#9#9'= OH.ResponsibleSelle' +
        'r'
      
        '        Left Outer Join PackUnit                PU      ON      ' +
        'PU.TemplateUnitNo       = CSH.InvoiceAdditionUnitNo'
      ''
      '       '#9'LEFT OUTER JOIN dbo.Booking'#9#9'Bk'
      ''
      ''
      #9'LEFT OUTER JOIN dbo.Voyage'#9#9'Vg '#9'ON  '#9'Bk.VoyageNo'#9#9'= Vg.VoyageNo'
      
        #9'LEFT OUTER JOIN dbo.Client'#9#9'SC '#9'ON  '#9'Bk.ShippingCompanyNo '#9'= SC' +
        '.ClientNo'
      
        #9'LEFT OUTER JOIN dbo.Carrier            '#9'Cr '#9'ON  '#9'Vg.CarrierNo  ' +
        '  '#9'= Cr.CarrierNo'
      #9#9#9#9#9#9#9'ON  '#9'Bk.ShippingPlanNo '#9'= CSH.ShippingPlanNo'
      ''
      'WHERE LS.ShippingPlanNo = :ShippingPlanNo'
      'AND LO.CustomerNo = :CustomerNo'
      'AND LO.SenderLoadStatus = 2'
      ''
      ''
      'and LO.LoadNo not in'
      '(Select LoadNo'
      'From'
      'dbo.Invoiced_Load'
      'where ShippingPlanNo = LS.ShippingPlanNo )'
      ''
      '--and LO.LoadNo in'
      '--(Select Confirmed_LoadNo'
      '--From'
      '--dbo.Confirmed_Load )'
      ''
      ''
      '')
    Left = 168
    Top = 216
    object sq_GetLODataSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object sq_GetLODataLO: TIntegerField
      FieldName = 'LO'
    end
    object sq_GetLODataORDERNUMBER: TStringField
      FieldName = 'ORDERNUMBER'
    end
    object sq_GetLODataREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Size = 30
    end
    object sq_GetLODataOURREFERENCE: TStringField
      FieldName = 'OURREFERENCE'
      Size = 30
    end
    object sq_GetLODataSALESMAN: TStringField
      FieldName = 'SALESMAN'
      Size = 3
    end
    object sq_GetLODataBOOKINGNO: TIntegerField
      FieldName = 'BOOKINGNO'
    end
    object sq_GetLODataADDITION_AMOUNT: TFloatField
      FieldName = 'ADDITION_AMOUNT'
    end
    object sq_GetLODataADDITION_UNITNO: TIntegerField
      FieldName = 'ADDITION_UNITNO'
    end
    object sq_GetLODataADDITION_DESC: TStringField
      FieldName = 'ADDITION_DESC'
      Size = 40
    end
    object sq_GetLODataSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object sq_GetLODataCARRIERNAME: TStringField
      FieldName = 'CARRIERNAME'
      Size = 50
    end
    object sq_GetLODataETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object sq_GetLODataETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object sq_GetLODataTrpID: TStringField
      FieldName = 'TrpID'
      Size = 50
    end
    object sq_GetLODataADDITION_PRICEUNIT: TStringField
      FieldName = 'ADDITION_PRICEUNIT'
    end
  end
  object sq_InvoiceDetail: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM InvoiceDetail'
      'WHERE '
      'InternalInvoiceNo = :InternalInvoiceNo')
    Left = 256
    Top = 8
    object sq_InvoiceDetailInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvoiceDetailShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvoiceDetailInvoiceDetailNo: TIntegerField
      FieldName = 'InvoiceDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvoiceDetailTypeOfRow: TIntegerField
      FieldName = 'TypeOfRow'
    end
    object sq_InvoiceDetailLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object sq_InvoiceDetailLoadID: TStringField
      FieldName = 'LoadID'
      Size = 50
    end
    object sq_InvoiceDetailOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
    end
    object sq_InvoiceDetailReference: TStringField
      FieldName = 'Reference'
      Size = 30
    end
    object sq_InvoiceDetailProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object sq_InvoiceDetailProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object sq_InvoiceDetailLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Size = 255
    end
    object sq_InvoiceDetailProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object sq_InvoiceDetailPrice: TFloatField
      FieldName = 'Price'
    end
    object sq_InvoiceDetailVolumeUnit: TStringField
      FieldName = 'VolumeUnit'
      Size = 10
    end
    object sq_InvoiceDetailPriceUnit: TStringField
      FieldName = 'PriceUnit'
      Size = 10
    end
    object sq_InvoiceDetailProductValue: TFloatField
      FieldName = 'ProductValue'
    end
    object sq_InvoiceDetailVolume_OrderUnit: TFloatField
      FieldName = 'Volume_OrderUnit'
    end
    object sq_InvoiceDetailActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
    end
    object sq_InvoiceDetailActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
    end
    object sq_InvoiceDetailNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
    end
    object sq_InvoiceDetailNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
    end
    object sq_InvoiceDetailNominalThicknessINCH: TFloatField
      FieldName = 'NominalThicknessINCH'
    end
    object sq_InvoiceDetailNominalWidthINCH: TFloatField
      FieldName = 'NominalWidthINCH'
    end
    object sq_InvoiceDetailActualNetM3: TFloatField
      FieldName = 'ActualNetM3'
    end
    object sq_InvoiceDetailNominalM3: TFloatField
      FieldName = 'NominalM3'
    end
    object sq_InvoiceDetailLinealMeter: TFloatField
      FieldName = 'LinealMeter'
    end
    object sq_InvoiceDetailNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
    end
    object sq_InvoiceDetailCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_InvoiceDetailModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_InvoiceDetailDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_InvoiceDetailNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
    end
    object sq_InvoiceDetailCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
    end
    object sq_InvoiceDetailNoOfPkgs: TIntegerField
      FieldName = 'NoOfPkgs'
    end
    object sq_InvoiceDetailOL_Reference: TStringField
      FieldName = 'OL_Reference'
      Size = 50
    end
  end
  object dspInvoiceDetail: TDataSetProvider
    DataSet = sq_InvoiceDetail
    Constraints = True
    UpdateMode = upWhereChanged
    Left = 256
    Top = 64
  end
  object cdsInvoiceDetail: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'InternalInvoiceNo'
        DataType = ftInteger
      end
      item
        Name = 'ShippingPlanNo'
        DataType = ftInteger
      end
      item
        Name = 'InvoiceDetailNo'
        DataType = ftInteger
      end
      item
        Name = 'TypeOfRow'
        DataType = ftInteger
      end
      item
        Name = 'LoadNo'
        DataType = ftInteger
      end
      item
        Name = 'LoadID'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'OrderLineNo'
        DataType = ftInteger
      end
      item
        Name = 'Reference'
        DataType = ftString
        Size = 30
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
        Name = 'LengthDescription'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end
      item
        Name = 'Price'
        DataType = ftFloat
      end
      item
        Name = 'VolumeUnit'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PriceUnit'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ProductValue'
        DataType = ftFloat
      end
      item
        Name = 'Volume_OrderUnit'
        DataType = ftFloat
      end
      item
        Name = 'ActualThicknessMM'
        DataType = ftFloat
      end
      item
        Name = 'ActualWidthMM'
        DataType = ftFloat
      end
      item
        Name = 'NominalThicknessMM'
        DataType = ftFloat
      end
      item
        Name = 'NominalWidthMM'
        DataType = ftFloat
      end
      item
        Name = 'NominalThicknessINCH'
        DataType = ftFloat
      end
      item
        Name = 'NominalWidthINCH'
        DataType = ftFloat
      end
      item
        Name = 'ActualNetM3'
        DataType = ftFloat
      end
      item
        Name = 'NominalM3'
        DataType = ftFloat
      end
      item
        Name = 'LinealMeter'
        DataType = ftFloat
      end
      item
        Name = 'NoOfPieces'
        DataType = ftInteger
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
        Name = 'NominalLengthMM'
        DataType = ftFloat
      end
      item
        Name = 'CustShipPlanDetailObjectNo'
        DataType = ftInteger
      end
      item
        Name = 'NoOfPkgs'
        DataType = ftInteger
      end
      item
        Name = 'OL_Reference'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'cdsInvoiceDetailIndex1'
        Fields = 'InvoiceDetailNo'
      end>
    IndexFieldNames = 'InvoiceDetailNo'
    Params = <>
    ProviderName = 'dspInvoiceDetail'
    StoreDefs = True
    OnReconcileError = cdsInvoiceDetailReconcileError
    Left = 256
    Top = 112
    object cdsInvoiceDetailInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInvoiceDetailShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInvoiceDetailInvoiceDetailNo: TIntegerField
      FieldName = 'InvoiceDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInvoiceDetailTypeOfRow: TIntegerField
      FieldName = 'TypeOfRow'
    end
    object cdsInvoiceDetailLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object cdsInvoiceDetailLoadID: TStringField
      FieldName = 'LoadID'
      Size = 50
    end
    object cdsInvoiceDetailOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
    end
    object cdsInvoiceDetailReference: TStringField
      FieldName = 'Reference'
      Size = 30
    end
    object cdsInvoiceDetailProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object cdsInvoiceDetailProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object cdsInvoiceDetailLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Size = 255
    end
    object cdsInvoiceDetailProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object cdsInvoiceDetailPrice: TFloatField
      FieldName = 'Price'
      OnChange = cdsInvoiceDetailVolume_OrderUnitChange
    end
    object cdsInvoiceDetailVolumeUnit: TStringField
      FieldName = 'VolumeUnit'
      Size = 10
    end
    object cdsInvoiceDetailPriceUnit: TStringField
      FieldName = 'PriceUnit'
      Size = 10
    end
    object cdsInvoiceDetailProductValue: TFloatField
      FieldName = 'ProductValue'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceDetailVolume_OrderUnit: TFloatField
      FieldName = 'Volume_OrderUnit'
      OnChange = cdsInvoiceDetailVolume_OrderUnitChange
      DisplayFormat = '#.000'
    end
    object cdsInvoiceDetailActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
    end
    object cdsInvoiceDetailActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
    end
    object cdsInvoiceDetailNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
    end
    object cdsInvoiceDetailNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
    end
    object cdsInvoiceDetailNominalThicknessINCH: TFloatField
      FieldName = 'NominalThicknessINCH'
    end
    object cdsInvoiceDetailNominalWidthINCH: TFloatField
      FieldName = 'NominalWidthINCH'
    end
    object cdsInvoiceDetailActualNetM3: TFloatField
      FieldName = 'ActualNetM3'
      DisplayFormat = '#.000'
    end
    object cdsInvoiceDetailNominalM3: TFloatField
      FieldName = 'NominalM3'
      DisplayFormat = '#.000'
    end
    object cdsInvoiceDetailLinealMeter: TFloatField
      FieldName = 'LinealMeter'
      DisplayFormat = '#.000'
    end
    object cdsInvoiceDetailNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
    end
    object cdsInvoiceDetailCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cdsInvoiceDetailModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cdsInvoiceDetailDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cdsInvoiceDetailNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
    end
    object cdsInvoiceDetailCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
    end
    object cdsInvoiceDetailNoOfPkgs: TIntegerField
      FieldName = 'NoOfPkgs'
    end
    object cdsInvoiceDetailOL_Reference: TStringField
      FieldName = 'OL_Reference'
      Size = 50
    end
    object cdsInvoiceDetailTotalInvoice: TAggregateField
      FieldName = 'TotalInvoice'
      Visible = True
      Active = True
      DisplayFormat = '#.00'
      Expression = 'SUM(ProductValue)'
    end
  end
  object dsrcInvoiceDetail: TDataSource
    DataSet = cdsInvoiceDetail
    Left = 256
    Top = 160
  end
  object sq_GetInvoiceDetailData: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CustomerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      'CSD.CustShipPlanDetailObjectNo,'
      'OL.OrderLineNo'#9#9#9'AS'#9'ORDERLINENO,'
      'CSD.Reference'#9#9#9'AS'#9'REFERENCE,'
      ' '
      'OL.OrderLineDescription'#9#9'AS'#9'PRODUCTDESCRIPTION,'
      'CSD.ProductNo'#9#9#9'AS'#9'PRODUCTNO,'
      'CSD.LengthDescription'#9#9'AS'#9'LENGTHDESCRIPTION,'
      'CSD.ProductLengthNo'#9#9'AS'#9'PRODUCTLENGTHNO,'
      'OL.Price'#9#9#9'AS'#9'PRICE,'
      'VU.VolumeUnitName'#9#9'AS'#9'VOLUMEUNIT,'
      'PU.TemplateUnitName'#9#9'AS'#9'PRICEUNIT,'
      ''
      ''
      ''
      'PG.ActualThicknessMM,'
      'PG.ActualWidthMM,'
      'PG.NominalThicknessMM           AS      NominalThicknessMM_PG,'
      'PG.NominalWidthMM               AS      NominalWidthMM_PG,'
      'PL.NominalLengthMM              AS      NominalLengthMM_PL,'
      'PL.ActualLengthMM               AS      ActualLengthMM_PL,'
      ''
      'OL.NominalThicknessMM,'
      'OL.NominalWidthMM,'
      'OL.NominalLengthMM,'
      ''
      'PG.NominalThicknessINCH,'
      'PG.NominalWidthINCH,'
      'LSP.ShippingPlanNo'#9#9'AS'#9'LO,'
      ''
      'M3_NOM.VOLUME_ORDERUNIT,'
      ''
      'M3_NOM.PRODUCTVALUE,'
      'M3_NOM.M3ACTUAL,'
      ''
      'M3_NOM.M3NOMINAL,'
      ''
      'M3_NOM.ACTUAL_LINEALMETER,'
      ''
      'M3_NOM.NOOFPIECES,'
      'M3_NOM.NOOFPKGS,'
      'OL.Reference AS OL_Reference'
      ''
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.Loaddetail LD'#9#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'INNER JOIN dbo.LoadDetailPkgLength LDP'#9#9'ON '#9'LDP.LoadDetailNo = L' +
        'D.LoadDetailNo'
      #9#9#9#9#9#9'AND '#9'LDP.LoadNo = LD.LoadNo'
      
        'INNER JOIN dbo.PackageTypeDetail PTD'#9#9'ON '#9'PTD.ProductLengthNo = ' +
        'LDP.ProductLengthNo'
      #9#9#9#9#9#9'AND '#9'PTD.PackageTypeNo = LD.PackageTypeNo'
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON '#9'CSD.CustShipP' +
        'lanDetailObjectNo = LDP.CustShipPlanDetailObjectNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON '#9'CSH.ShippingPl' +
        'anNo = CSD.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.OrderLine OL'#9#9#9'ON '#9'OL.OrderLineNo = CSD.OrderLine' +
        'No'
      #9#9#9#9#9#9'AND '#9'OL.OrderNo = CSD.OrderNo'
      
        'INNER JOIN dbo.ProductLength PL '#9#9'ON '#9'PL.ProductLengthNo = CSD.P' +
        'roductLengthNo'
      
        'INNER JOIN dbo.UnitName VU'#9#9#9'ON '#9'VU.VolumeUnit_No = OL.VolumeUni' +
        'tNo'
      ''
      ''
      
        'INNER JOIN dbo.PackUnit PU'#9#9#9'ON '#9'PU.TemplateUnitNo = OL.PriceUni' +
        'tNo'
      
        'INNER JOIN dbo.ProductGroup PG'#9#9#9'ON '#9'PG.ProductGroupNo = OL.Prod' +
        'uctGroupNo'
      ''
      
        'Inner Join dbo.VIS_LoadVolume M3_NOM ON M3_NOM.CustomerNo = LO.C' +
        'ustomerNo'
      'AND M3_NOM.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'AND M3_NOM.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailOb' +
        'jectNo'
      'AND M3_NOM.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'WHERE'
      'LO.CustomerNo = :CustomerNo'
      'AND LSP.ShippingPlanNo = :ShippingPlanNo'
      'AND LO.SenderLoadStatus = 2'
      ''
      ''
      ''
      'and LO.LoadNo not in'
      '(Select LoadNo'
      'From'
      'dbo.Invoiced_Load'
      'where ShippingPlanNo = LSP.ShippingPlanNo)'
      ''
      ''
      ''
      '')
    Left = 256
    Top = 216
    object sq_GetInvoiceDetailDataORDERLINENO: TIntegerField
      FieldName = 'ORDERLINENO'
    end
    object sq_GetInvoiceDetailDataREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Size = 30
    end
    object sq_GetInvoiceDetailDataPRODUCTDESCRIPTION: TStringField
      FieldName = 'PRODUCTDESCRIPTION'
      Size = 100
    end
    object sq_GetInvoiceDetailDataPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object sq_GetInvoiceDetailDataLENGTHDESCRIPTION: TStringField
      FieldName = 'LENGTHDESCRIPTION'
      Size = 100
    end
    object sq_GetInvoiceDetailDataPRODUCTLENGTHNO: TIntegerField
      FieldName = 'PRODUCTLENGTHNO'
    end
    object sq_GetInvoiceDetailDataPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object sq_GetInvoiceDetailDataVOLUMEUNIT: TStringField
      FieldName = 'VOLUMEUNIT'
      Size = 10
    end
    object sq_GetInvoiceDetailDataPRICEUNIT: TStringField
      FieldName = 'PRICEUNIT'
    end
    object sq_GetInvoiceDetailDataVOLUME_ORDERUNIT: TFloatField
      FieldName = 'VOLUME_ORDERUNIT'
    end
    object sq_GetInvoiceDetailDataPRODUCTVALUE: TFloatField
      FieldName = 'PRODUCTVALUE'
    end
    object sq_GetInvoiceDetailDataActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
    end
    object sq_GetInvoiceDetailDataActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
    end
    object sq_GetInvoiceDetailDataNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
    end
    object sq_GetInvoiceDetailDataNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
    end
    object sq_GetInvoiceDetailDataNominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
    end
    object sq_GetInvoiceDetailDataNominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
    end
    object sq_GetInvoiceDetailDataLO: TIntegerField
      FieldName = 'LO'
    end
    object sq_GetInvoiceDetailDataNOOFPIECES: TIntegerField
      FieldName = 'NOOFPIECES'
    end
    object sq_GetInvoiceDetailDataNominalThicknessMM_PG: TFloatField
      FieldName = 'NominalThicknessMM_PG'
    end
    object sq_GetInvoiceDetailDataNominalWidthMM_PG: TFloatField
      FieldName = 'NominalWidthMM_PG'
    end
    object sq_GetInvoiceDetailDataNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
    end
    object sq_GetInvoiceDetailDataNominalLengthMM_PL: TFloatField
      FieldName = 'NominalLengthMM_PL'
    end
    object sq_GetInvoiceDetailDataActualLengthMM_PL: TFloatField
      FieldName = 'ActualLengthMM_PL'
    end
    object sq_GetInvoiceDetailDataCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
    end
    object sq_GetInvoiceDetailDataNOOFPKGS: TIntegerField
      FieldName = 'NOOFPKGS'
    end
    object sq_GetInvoiceDetailDataOL_Reference: TStringField
      FieldName = 'OL_Reference'
      Size = 50
    end
    object sq_GetInvoiceDetailDataM3ACTUAL: TFloatField
      FieldName = 'M3ACTUAL'
    end
    object sq_GetInvoiceDetailDataM3NOMINAL: TFloatField
      FieldName = 'M3NOMINAL'
    end
    object sq_GetInvoiceDetailDataACTUAL_LINEALMETER: TFloatField
      FieldName = 'ACTUAL_LINEALMETER'
    end
  end
  object sq_InvoiceShipTo: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from dbo.InvoiceShipToAddress'
      'WHERE '
      'InternalInvoiceNo = :InternalInvoiceNo')
    Left = 360
    Top = 16
    object sq_InvoiceShipToInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvoiceShipToShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvoiceShipToReference: TStringField
      FieldName = 'Reference'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object sq_InvoiceShipToAddressNo: TIntegerField
      FieldName = 'AddressNo'
    end
  end
  object dspInvoiceShipTo: TDataSetProvider
    DataSet = sq_InvoiceShipTo
    Constraints = True
    UpdateMode = upWhereChanged
    Left = 360
    Top = 64
  end
  object cdsInvoiceShipTo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInvoiceShipTo'
    OnReconcileError = cdsInvoiceShipToReconcileError
    Left = 360
    Top = 112
    object cdsInvoiceShipToInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInvoiceShipToShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInvoiceShipToReference: TStringField
      FieldName = 'Reference'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object cdsInvoiceShipToAddressNo: TIntegerField
      FieldName = 'AddressNo'
    end
  end
  object dsInvoiceShipTo: TDataSource
    DataSet = cdsInvoiceShipTo
    Left = 360
    Top = 160
  end
  object sq_InvoiceShipToAddress: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    DataSource = dsrcInvoiceHead
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      'Select'
      'IST.InternalInvoiceNo,'
      'IST.ShippingPlanNo,'
      'IST.Reference,'
      'IST.AddressNo,'
      ''
      'Addr.AddressName,'
      ''
      
        'isNull(RTRIM(Addr.AddressLine1),'#39#39')+'#39', '#39'+isNull(RTRIM(Addr.Addre' +
        'ssLine2),'#39#39')+'#39', '#39'+isNull(RTRIM(Addr.AddressLine3),'#39#39')+'#39', '#39'+isNul' +
        'l(RTRIM(Addr.AddressLine4),'#39#39')'
      
        '+'#39', '#39'+isNull(RTRIM(FDrCY.CityName),'#39#39')+'#39', '#39'+isNull(RTRIM(Addr.Po' +
        'stalCode),'#39#39')+'#39', '#39'+isNull(RTRIM(Addr.StateOrProvince),'#39#39')+'#39', '#39'+i' +
        'sNull(RTRIM( FDrCtry.CountryName ),'#39#39') as ADDR,'
      ''
      'Addr.AddressLine1,'
      'Addr.AddressLine2,'
      'Addr.AddressLine3,'
      'Addr.AddressLine4,'
      'Addr.StateOrProvince    AS STATE,'
      'Addr.PostalCode         AS POSTAL_CODE,'
      'FDrCY.CityName'#9'        AS CITY,'
      'FDrCtry.CountryName'#9'AS COUNTRY'
      ''
      'from dbo.InvoiceShipToAddress IST'
      ' Left Outer Join dbo.Address Addr'#9
      ' '#9'INNER JOIN dbo.CITY'#9#9#9'FDrCY'#9'ON'#9'FDrCY.CityNo '#9#9'= Addr.CityNo'
      
        #9'INNER JOIN dbo.Country'#9#9#9'FDrCtry'#9'ON'#9'FDrCtry.CountryNo '#9'= Addr.C' +
        'ountryNo'
      '  ON Addr.AddressNo = IST.AddressNo'
      ''
      'WHERE IST.InternalInvoiceNo = :InternalInvoiceNo')
    Left = 472
    Top = 16
    object sq_InvoiceShipToAddressInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvoiceShipToAddressShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvoiceShipToAddressReference: TStringField
      FieldName = 'Reference'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object sq_InvoiceShipToAddressAddressNo: TIntegerField
      FieldName = 'AddressNo'
    end
    object sq_InvoiceShipToAddressAddressName: TStringField
      FieldName = 'AddressName'
      ProviderFlags = []
      Size = 80
    end
    object sq_InvoiceShipToAddressADDR: TStringField
      FieldName = 'ADDR'
      ProviderFlags = []
      Size = 314
    end
    object sq_InvoiceShipToAddressAddressLine1: TStringField
      FieldName = 'AddressLine1'
      ProviderFlags = []
      Size = 40
    end
    object sq_InvoiceShipToAddressAddressLine2: TStringField
      FieldName = 'AddressLine2'
      ProviderFlags = []
      Size = 40
    end
    object sq_InvoiceShipToAddressAddressLine3: TStringField
      FieldName = 'AddressLine3'
      ProviderFlags = []
      Size = 40
    end
    object sq_InvoiceShipToAddressAddressLine4: TStringField
      FieldName = 'AddressLine4'
      ProviderFlags = []
      Size = 40
    end
    object sq_InvoiceShipToAddressSTATE: TStringField
      FieldName = 'STATE'
      ProviderFlags = []
      Size = 40
    end
    object sq_InvoiceShipToAddressPOSTAL_CODE: TStringField
      FieldName = 'POSTAL_CODE'
      ProviderFlags = []
    end
    object sq_InvoiceShipToAddressCITY: TStringField
      FieldName = 'CITY'
      ProviderFlags = []
      Size = 50
    end
    object sq_InvoiceShipToAddressCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      ProviderFlags = []
      Size = 30
    end
  end
  object dspInvoiceShipToAddress: TDataSetProvider
    DataSet = sq_InvoiceShipToAddress
    Constraints = True
    UpdateMode = upWhereChanged
    OnGetTableName = dspInvoiceShipToAddressGetTableName
    Left = 472
    Top = 64
  end
  object cdsInvoiceShipToAddress: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInvoiceShipToAddress'
    OnReconcileError = cdsInvoiceShipToAddressReconcileError
    Left = 472
    Top = 112
    object cdsInvoiceShipToAddressReference: TStringField
      FieldName = 'Reference'
      Size = 30
    end
    object cdsInvoiceShipToAddressAddressName: TStringField
      FieldName = 'AddressName'
      Size = 80
    end
    object cdsInvoiceShipToAddressAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Size = 40
    end
    object cdsInvoiceShipToAddressAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Size = 40
    end
    object cdsInvoiceShipToAddressAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Size = 40
    end
    object cdsInvoiceShipToAddressAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Size = 40
    end
    object cdsInvoiceShipToAddressSTATE: TStringField
      FieldName = 'STATE'
      Size = 40
    end
    object cdsInvoiceShipToAddressPOSTAL_CODE: TStringField
      FieldName = 'POSTAL_CODE'
    end
    object cdsInvoiceShipToAddressCITY: TStringField
      FieldName = 'CITY'
      Size = 50
    end
    object cdsInvoiceShipToAddressADDR: TStringField
      FieldName = 'ADDR'
      Size = 314
    end
    object cdsInvoiceShipToAddressCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 30
    end
    object cdsInvoiceShipToAddressInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object cdsInvoiceShipToAddressShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object cdsInvoiceShipToAddressAddressNo: TIntegerField
      FieldName = 'AddressNo'
    end
  end
  object dsInvoiceShipToAddress: TDataSource
    DataSet = cdsInvoiceShipToAddress
    Left = 472
    Top = 160
  end
  object sq_InvoiceNumber: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'SELECT * FROM InvoiceNumber')
    Left = 584
    Top = 16
    object sq_InvoiceNumberInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object sq_InvoiceNumberInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object sq_InvoiceNumberUserCreated: TIntegerField
      FieldName = 'UserCreated'
    end
    object sq_InvoiceNumberUserModified: TIntegerField
      FieldName = 'UserModified'
    end
    object sq_InvoiceNumberDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
  end
  object dspInvoiceNumber: TDataSetProvider
    DataSet = sq_InvoiceNumber
    Constraints = True
    UpdateMode = upWhereChanged
    Left = 584
    Top = 64
  end
  object cdsInvoiceNumber: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsInvoiceNumberIndex1'
        Fields = 'InvoiceNo'
      end>
    IndexName = 'cdsInvoiceNumberIndex1'
    Params = <>
    ProviderName = 'dspInvoiceNumber'
    StoreDefs = True
    OnReconcileError = cdsInvoiceNumberReconcileError
    Left = 584
    Top = 112
    object cdsInvoiceNumberInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object cdsInvoiceNumberInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object cdsInvoiceNumberUserCreated: TIntegerField
      FieldName = 'UserCreated'
    end
    object cdsInvoiceNumberUserModified: TIntegerField
      FieldName = 'UserModified'
    end
    object cdsInvoiceNumberDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
  end
  object dsrcInvoiceNumber: TDataSource
    DataSet = cdsInvoiceNumber
    Left = 584
    Top = 160
  end
  object sq_AnyLoadsToInvoice: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CustomerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT LO.LoadNo'
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      '--INNER JOIN dbo.Loads L'#9#9'ON'#9'L.LoadNo = LSP.LoadNo'
      ''
      'WHERE'
      'LO.SupplierNo = :SupplierNo'
      'AND LO.SenderLoadStatus = 2'
      'AND LO.CustomerNo = :CustomerNo'
      'AND LSP.ShippingPlanNo = :ShippingPlanNo'
      ''
      ''
      'AND NOT EXISTS'
      '   (SELECT *'
      '   FROM dbo.Invoiced_Load'
      '   WHERE LoadNo = LSP.LoadNo'
      'AND ShippingPlanNo = LSP.ShippingPlanNo)'
      ''
      '')
    Left = 637
    Top = 304
  end
  object sq_DeleteInvoice: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete dbo.InvoiceHeader'
      'where'
      'InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'Delete dbo.PkgType_Invoice'
      'WHERE '
      'InternalInvoiceNo = :InternalInvoiceNo')
    Left = 637
    Top = 448
  end
  object sq_GetFreightCost: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      'Bk.ShippingPlanNo,'
      'Bk.BookingNo,'
      'Bk.FreightCost,'
      'Bk.FreightCostVolUnit,'
      'Bk.FreightCostCurrency,'
      'PU.TemplateUnitName'
      ''
      'FROM dbo.Booking Bk, PackUnit PU'
      'WHERE Bk.ShippingPlanNo = :ShippingPlanNo'
      'and PU.TemplateUnitNo = Bk.FreightCostVolUnit')
    Left = 637
    Top = 401
    object sq_GetFreightCostFreightCost: TFloatField
      FieldName = 'FreightCost'
    end
    object sq_GetFreightCostFreightCostVolUnit: TIntegerField
      FieldName = 'FreightCostVolUnit'
    end
    object sq_GetFreightCostFreightCostCurrency: TIntegerField
      FieldName = 'FreightCostCurrency'
    end
    object sq_GetFreightCostTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
    end
  end
  object sq_RemoveFrom_InvLoad: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete from dbo.Invoiced_Load '
      'Where'
      'InternalInvoiceNo = :InternalInvoiceNo')
    Left = 144
    Top = 496
  end
  object sq_ProformaInvNo: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'Select * '
      'From ProformaInvoiceNumber')
    Left = 680
    Top = 16
    object sq_ProformaInvNoProformaInvoiceNo: TIntegerField
      FieldName = 'ProformaInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_ProformaInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object sq_ProformaInvNoUserCreated: TIntegerField
      FieldName = 'UserCreated'
    end
    object sq_ProformaInvNoUserModified: TIntegerField
      FieldName = 'UserModified'
    end
    object sq_ProformaInvNoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
  end
  object dspProformaInvNo: TDataSetProvider
    DataSet = sq_ProformaInvNo
    Constraints = True
    UpdateMode = upWhereChanged
    Left = 680
    Top = 64
  end
  object cdsProformaInvNo: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsProformaInvNoIndex1'
        Fields = 'ProformaInvoiceNo'
      end>
    IndexFieldNames = 'ProformaInvoiceNo'
    Params = <>
    ProviderName = 'dspProformaInvNo'
    StoreDefs = True
    Left = 680
    Top = 112
    object cdsProformaInvNoProformaInvoiceNo: TIntegerField
      FieldName = 'ProformaInvoiceNo'
    end
    object cdsProformaInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object cdsProformaInvNoUserCreated: TIntegerField
      FieldName = 'UserCreated'
    end
    object cdsProformaInvNoUserModified: TIntegerField
      FieldName = 'UserModified'
    end
    object cdsProformaInvNoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
  end
  object sq_GetInvoicedPkgs: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'DISTINCT  IH.InternalInvoiceNo,'
      '          OL.OrderLineDescription               AS DESCRIPTION,'
      '          LD.PackageNo                          AS PKGNO,'
      '          LD.SupplierCode                       AS SUPPCODE,'
      '          PT.PackageTypeNo                      AS PKGTYPENO,'
      '          PT.TotalNoOfPieces                    AS NOOFPCS,'
      ''
      '          PT.TotalLinealMeterActualLength       AS LINEAL_MET,'
      '          PT.Totalm3Actual                      AS M3_ACT,'
      '          LD.LoadNo,'
      '          LD.LoadDetailNo,'
      '          PTL.PcsPerLength AS PCS_PER_LENGTH          '
      ''
      'FROM    dbo.InvoiceHeader IH'
      
        '          INNER JOIN dbo.Invoiced_Load ILoad '#9'ON  ILoad.Internal' +
        'InvoiceNo = IH.InternalInvoiceNo'
      ''
      
        '          INNER JOIN dbo.Loaddetail    LD '#9'ON  LD.LoadNo        ' +
        '    = ILoad.LoadNo'
      '       '#9#9#9#9#9#9'AND LD.SHIPPINGPLANNO    = ILoad.SHIPPINGPLANNO'
      ''
      
        '          INNER JOIN dbo.LoadDetailPkgLength    LDP ON  LDP.Load' +
        'No            = LD.LoadNo'
      
        #9#9'                                    AND LDP.LoadDetailNo    = ' +
        'LD.LoadDetailNo'
      ''
      
        '          INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.' +
        'CustShipPlanDetailObjectNo = LDP.CustShipPlanDetailObjectNo'
      '     '#9#9#9#9#9#9'AND CSD.SHIPPINGPLANNO    = ILoad.SHIPPINGPLANNO'
      ''
      
        '          INNER JOIN dbo.OrderLine'#9'OL'#9'ON OL.OrderNo = CSD.OrderN' +
        'o'
      #9#9#9#9#9#9'AND OL.OrderLineNo = CSD.OrderLineNo'
      ''
      
        '          INNER JOIN dbo.Packagetype   PT ON  PT.PackageTypeNo  ' +
        '   = LD.PackageTypeNo'
      ''
      
        '          Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageTy' +
        'peNo = PT.PackageTypeNo'
      ''
      'WHERE     IH.InternalInvoiceNo   =:InternalInvoiceNo'
      ''
      ''
      ''
      ''
      'ORDER BY  LD.LoadNo, LD.LoadDetailNo, PT.PackageTypeNo')
    Left = 600
    Top = 488
  end
  object sqInvoice_Load: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'SELECT * FROM DBO.Invoiced_Load')
    Left = 560
    Top = 280
    object sqInvoice_LoadInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqInvoice_LoadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqInvoice_LoadShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqInvoice_LoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sqInvoice_LoadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sqInvoice_LoadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object dspInvoice_Load: TDataSetProvider
    DataSet = sqInvoice_Load
    Constraints = True
    UpdateMode = upWhereChanged
    Left = 560
    Top = 328
  end
  object cdsInvoice_Load: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInvoice_Load'
    OnReconcileError = cdsInvoice_LoadReconcileError
    Left = 560
    Top = 376
    object cdsInvoice_LoadInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object cdsInvoice_LoadLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object cdsInvoice_LoadShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object cdsInvoice_LoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cdsInvoice_LoadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cdsInvoice_LoadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object sq_GetInvoicedLods: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select IL.LoadNo, IL.ShippingPlanNo'
      'From dbo.Invoiced_Load  IL'
      ''
      'Where'
      'IL.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'and not exists ('
      'Select * from dbo.Confirmed_Load CL'#9
      'where CL.Confirmed_LoadNo = IL.LoadNo)')
    Left = 328
    Top = 576
    object sq_GetInvoicedLodsLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object sq_GetInvoicedLodsShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
  end
  object dsProformaInvNo: TDataSource
    DataSet = cdsProformaInvNo
    Left = 680
    Top = 160
  end
  object sq_Invoice_Credited: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from Invoice_Credited'
      'Where InternalInvoiceNo = :InternalInvoiceNo')
    Left = 400
    Top = 312
    object sq_Invoice_CreditedInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_Invoice_CreditedNewInternalInvoiceNo: TIntegerField
      FieldName = 'NewInternalInvoiceNo'
    end
    object sq_Invoice_CreditedDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_Invoice_CreditedCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_Invoice_CreditedModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object dspInvoice_Credited: TDataSetProvider
    DataSet = sq_Invoice_Credited
    Constraints = True
    UpdateMode = upWhereChanged
    Left = 400
    Top = 360
  end
  object cdsInvoice_Credited: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInvoice_Credited'
    OnReconcileError = cdsInvoice_CreditedReconcileError
    Left = 400
    Top = 408
    object cdsInvoice_CreditedInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object cdsInvoice_CreditedNewInternalInvoiceNo: TIntegerField
      FieldName = 'NewInternalInvoiceNo'
    end
    object cdsInvoice_CreditedDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cdsInvoice_CreditedCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cdsInvoice_CreditedModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object sq_GetShipToAddress: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select ShippingPlanNo, AddressNo, Reference'
      'FROM'
      'ShippingPlan_ShippingAddress'
      'WHERE'
      'ShippingPlanNo = :ShippingPlanNo')
    Left = 472
    Top = 216
    object sq_GetShipToAddressShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object sq_GetShipToAddressAddressNo: TIntegerField
      FieldName = 'AddressNo'
    end
    object sq_GetShipToAddressReference: TStringField
      FieldName = 'Reference'
      Size = 50
    end
  end
  object sq_GetNextInvoiceNo: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'SELECT MAX(InvoiceNo) + 1 AS NEXT_INVNO FROM InvoiceNumber')
    Left = 584
    Top = 208
    object sq_GetNextInvoiceNoNEXT_INVNO: TIntegerField
      FieldName = 'NEXT_INVNO'
    end
  end
  object sq_InvoiceGroup: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'Select * '
      'From InvoiceGroup')
    Left = 144
    Top = 312
  end
  object dsp_InvoiceGroup: TDataSetProvider
    DataSet = sq_InvoiceGroup
    Constraints = True
    Left = 144
    Top = 360
  end
  object cds_InvoiceGroup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InvoiceGroup'
    Left = 144
    Top = 408
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
    object cds_InvoiceGroupOriginalInvNos: TStringField
      FieldName = 'OriginalInvNos'
      ProviderFlags = []
      Size = 255
    end
    object cds_InvoiceGroupOrdernos: TStringField
      FieldName = 'Ordernos'
      ProviderFlags = []
      Size = 255
    end
    object cds_InvoiceGroupInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      ProviderFlags = []
      BlobType = ftMemo
    end
    object cds_InvoiceGroupAddressName: TStringField
      FieldName = 'AddressName'
      ProviderFlags = []
      Size = 80
    end
    object cds_InvoiceGroupAddressLine1: TStringField
      FieldName = 'AddressLine1'
      ProviderFlags = []
      Size = 40
    end
    object cds_InvoiceGroupAddressLine2: TStringField
      FieldName = 'AddressLine2'
      ProviderFlags = []
      Size = 40
    end
    object cds_InvoiceGroupAddressLine3: TStringField
      FieldName = 'AddressLine3'
      ProviderFlags = []
      Size = 40
    end
    object cds_InvoiceGroupAddressLine4: TStringField
      FieldName = 'AddressLine4'
      ProviderFlags = []
      Size = 40
    end
    object cds_InvoiceGroupStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      ProviderFlags = []
      Size = 40
    end
    object cds_InvoiceGroupPostalCode: TStringField
      FieldName = 'PostalCode'
      ProviderFlags = []
    end
    object cds_InvoiceGroupCityName: TStringField
      FieldName = 'CityName'
      ProviderFlags = []
      Size = 50
    end
    object cds_InvoiceGroupCountryName: TStringField
      FieldName = 'CountryName'
      ProviderFlags = []
      Size = 30
    end
    object cds_InvoiceGroupCustomerName: TStringField
      FieldName = 'CustomerName'
      ProviderFlags = []
      Size = 80
    end
    object cds_InvoiceGroupAgentname: TStringField
      FieldName = 'Agentname'
      ProviderFlags = []
      Size = 80
    end
    object cds_InvoiceGroupST_AddressName: TStringField
      FieldName = 'ST_AddressName'
      ProviderFlags = []
      Size = 80
    end
    object cds_InvoiceGroupST_CityName: TStringField
      FieldName = 'ST_CityName'
      ProviderFlags = []
      Size = 50
    end
    object cds_InvoiceGroupCarrierName: TStringField
      FieldName = 'CarrierName'
      ProviderFlags = []
      Size = 50
    end
    object cds_InvoiceGroupETD: TSQLTimeStampField
      FieldName = 'ETD'
      ProviderFlags = []
    end
    object cds_InvoiceGroupETA: TSQLTimeStampField
      FieldName = 'ETA'
      ProviderFlags = []
    end
    object cds_InvoiceGroupPaymentText: TMemoField
      FieldName = 'PaymentText'
      ProviderFlags = []
      BlobType = ftMemo
    end
    object cds_InvoiceGroupDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      ProviderFlags = []
      Size = 21
    end
    object cds_InvoiceGroupPaymentDescription: TStringField
      FieldName = 'PaymentDescription'
      ProviderFlags = []
      Size = 100
    end
    object cds_InvoiceGroupCurrencyName: TStringField
      FieldName = 'CurrencyName'
      ProviderFlags = []
      Size = 5
    end
    object cds_InvoiceGroupSearchName: TStringField
      FieldName = 'SearchName'
      ProviderFlags = []
      Size = 80
    end
    object cds_InvoiceGroupSUM_FreigthCost: TFloatField
      FieldName = 'SUM_FreigthCost'
      ProviderFlags = []
    end
    object cds_InvoiceGroupTotal_Product_Value_No_Freight: TFloatField
      FieldName = 'Total_Product_Value_No_Freight'
      ProviderFlags = []
    end
    object cds_InvoiceGroupInv_Value_To_Be_Paid_2: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid_2'
      ProviderFlags = []
    end
  end
  object cds_InvoiceInGroup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InvoiceInGroup'
    Left = 240
    Top = 408
    object cds_InvoiceInGroupInvoiceGroupNo: TIntegerField
      FieldName = 'InvoiceGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_InvoiceInGroupInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsp_InvoiceInGroup: TDataSetProvider
    DataSet = sq_InvoiceInGroup
    Constraints = True
    Left = 240
    Top = 360
  end
  object sq_InvoiceInGroup: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InvoiceGroupNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select *'
      'FROM dbo.InvoiceInGroup'
      'WHERE '
      'InvoiceGroupNo = :InvoiceGroupNo')
    Left = 240
    Top = 312
    object sq_InvoiceInGroupInvoiceGroupNo: TIntegerField
      FieldName = 'InvoiceGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvoiceInGroupInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object sq_BookingData: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select'
      'Bk.ShippingCompanyBookingID AS BOOKING_ID,'
      'Bk.SupplierReference AS SUPP_REFERENCE,'
      ''
      'SC.ClientName'#9#9#9#9#9'AS SHIPPER,'#9#9
      'isNull(Bk.PreliminaryRequestedPeriod,'#39'Non'#39')'#9'AS READYDATE,'#9#9
      'isNull(Cr.CarrierName,'#39'Non'#39')'#9#9#9'AS VESSEL,'#9#9
      'isNull(Vg.ETD,000000)'#9#9#9#9'AS ETD,'#9#9#9
      'isNull(Vd.ETA,000000)'#9#9#9#9'AS ETA,'
      'BK.FreightCost'#9#9#9#9#9'AS FREIGHTCOST,'
      'UNBo.VolumeUnitName'#9#9#9#9'AS FREIGHT_UNIT,'
      'CUBo.CurrencyName'#9#9#9#9'AS FREIGHT_CURRENCY'
      'From'
      '       '#9'dbo.Booking'#9#9'Bk'
      
        '       '#9'LEFT OUTER JOIN dbo.UnitName'#9#9#9'UNBo'#9'ON'#9'UNBo.VolumeUnit_N' +
        'o'#9'= BK.FreightCostVolUnit'
      
        '       '#9'LEFT OUTER JOIN dbo.Currency'#9#9#9'CUBo'#9'ON'#9'CUBo.CurrencyNo'#9#9 +
        '= BK.FreightCostCurrency'
      ''
      
        '       '#9'LEFT OUTER JOIN dbo.VoyageDestination'#9'VD '#9#9'ON'#9'Bk.Booking' +
        'No'#9#9'= VD.BookingNo'
      
        '       '#9'LEFT OUTER JOIN dbo.Voyage'#9#9#9'Vg '#9'ON  '#9'Bk.VoyageNo'#9#9'= Vg.' +
        'VoyageNo'
      
        '       '#9'LEFT OUTER JOIN dbo.Client'#9#9#9'SC '#9'ON  '#9'Bk.ShippingCompany' +
        'No '#9'= SC.ClientNo'
      
        #9'LEFT OUTER JOIN dbo.Carrier            '#9'Cr '#9#9'ON  '#9'Vg.CarrierNo ' +
        '   '#9'= Cr.CarrierNo'
      ''
      'WHERE'
      'Bk.ShippingPlanNo = :ShippingPlanNo')
    Left = 320
    Top = 296
  end
  object dsp_BookingData: TDataSetProvider
    DataSet = sq_BookingData
    Constraints = True
    Left = 320
    Top = 344
  end
  object cdsBookingData: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_BookingData'
    OnReconcileError = cdsBookingDataReconcileError
    Left = 320
    Top = 392
    object cdsBookingDataBOOKING_ID: TStringField
      FieldName = 'BOOKING_ID'
    end
    object cdsBookingDataSUPP_REFERENCE: TStringField
      FieldName = 'SUPP_REFERENCE'
      Size = 50
    end
    object cdsBookingDataSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object cdsBookingDataREADYDATE: TStringField
      FieldName = 'READYDATE'
      Size = 30
    end
    object cdsBookingDataVESSEL: TStringField
      FieldName = 'VESSEL'
      Size = 50
    end
    object cdsBookingDataETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object cdsBookingDataETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object cdsBookingDataFREIGHTCOST: TFloatField
      FieldName = 'FREIGHTCOST'
    end
    object cdsBookingDataFREIGHT_UNIT: TStringField
      FieldName = 'FREIGHT_UNIT'
      Size = 10
    end
    object cdsBookingDataFREIGHT_CURRENCY: TStringField
      FieldName = 'FREIGHT_CURRENCY'
      Size = 5
    end
  end
  object ds_BookingData: TDataSource
    DataSet = cdsBookingData
    Left = 320
    Top = 440
  end
  object sq_Att_Ext_ServicesII: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select AES.InternalInvoiceNo,'
      'AES.ShippingPlanNo,'
      'AES.SequensNo,'
      'AES.Description,'
      'AES.Supplier_InvoiceNo,'
      'AES.Supplier_InvoiceDate,'
      'AES.Amount,'
      'AES.CurrencyNo,'
      'AES.SupplierNo,'
      'AES.Note,'
      'AES.CreatedDate,'
      'AES.CreatedUser,'
      'AES.ModifiedDate,'
      'AES.ModifiedUser,'
      'AES.Quick_InvoiceNo'
      'FROM dbo.Att_Ext_Services AES'
      'WHERE AES.InternalInvoiceNo = :InternalInvoiceNo')
    Left = 848
    Top = 352
    object sq_Att_Ext_ServicesIIInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object sq_Att_Ext_ServicesIISequensNo: TIntegerField
      FieldName = 'SequensNo'
    end
    object sq_Att_Ext_ServicesIIDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object sq_Att_Ext_ServicesIISupplier_InvoiceNo: TStringField
      FieldName = 'Supplier_InvoiceNo'
      Size = 50
    end
    object sq_Att_Ext_ServicesIISupplier_InvoiceDate: TSQLTimeStampField
      FieldName = 'Supplier_InvoiceDate'
    end
    object sq_Att_Ext_ServicesIIAmount: TFloatField
      FieldName = 'Amount'
    end
    object sq_Att_Ext_ServicesIICurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object sq_Att_Ext_ServicesIISupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object sq_Att_Ext_ServicesIINote: TMemoField
      FieldName = 'Note'
      BlobType = ftMemo
    end
    object sq_Att_Ext_ServicesIICreatedDate: TSQLTimeStampField
      FieldName = 'CreatedDate'
    end
    object sq_Att_Ext_ServicesIICreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_Att_Ext_ServicesIIModifiedDate: TSQLTimeStampField
      FieldName = 'ModifiedDate'
    end
    object sq_Att_Ext_ServicesIIModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_Att_Ext_ServicesIIShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object sq_Att_Ext_ServicesIIQuick_InvoiceNo: TIntegerField
      FieldName = 'Quick_InvoiceNo'
    end
  end
  object dsp_Att_Ext_ServicesII: TDataSetProvider
    DataSet = sq_Att_Ext_ServicesII
    Constraints = True
    Left = 848
    Top = 400
  end
  object cds_Att_Ext_ServicesII: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Att_Ext_ServicesII'
    AfterInsert = cds_Att_Ext_ServicesIIAfterInsert
    BeforeDelete = cds_Att_Ext_ServicesIIBeforeDelete
    AfterScroll = cds_Att_Ext_ServicesIIAfterScroll
    OnPostError = cds_Att_Ext_ServicesIIPostError
    OnReconcileError = cds_Att_Ext_ServicesIIReconcileError
    Left = 849
    Top = 448
    object cds_Att_Ext_ServicesIIInternalInvoiceNo: TIntegerField
      DisplayLabel = 'IINT.INV.NO'
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_Att_Ext_ServicesIISequensNo: TIntegerField
      DisplayLabel = 'SEK.NO'
      FieldName = 'SequensNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_Att_Ext_ServicesIIDescription: TStringField
      DisplayLabel = 'DESCRIPTION'
      FieldName = 'Description'
      Size = 100
    end
    object cds_Att_Ext_ServicesIISupplier_InvoiceNo: TStringField
      DisplayLabel = 'SUPP. INVOICE NO'
      FieldName = 'Supplier_InvoiceNo'
      Size = 50
    end
    object cds_Att_Ext_ServicesIISupplier_InvoiceDate: TSQLTimeStampField
      DisplayLabel = 'SUPP. INVOICE DATE'
      FieldName = 'Supplier_InvoiceDate'
    end
    object cds_Att_Ext_ServicesIIAmount: TFloatField
      DisplayLabel = 'AMOUNT'
      FieldName = 'Amount'
    end
    object cds_Att_Ext_ServicesIICurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object cds_Att_Ext_ServicesIISupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object cds_Att_Ext_ServicesIINote: TMemoField
      DisplayLabel = 'NOTE'
      FieldName = 'Note'
      BlobType = ftMemo
    end
    object cds_Att_Ext_ServicesIICreatedDate: TSQLTimeStampField
      DisplayLabel = 'CREATED DATE'
      FieldName = 'CreatedDate'
    end
    object cds_Att_Ext_ServicesIICreatedUser: TIntegerField
      DisplayLabel = 'CREATED BY'
      FieldName = 'CreatedUser'
    end
    object cds_Att_Ext_ServicesIIModifiedDate: TSQLTimeStampField
      DisplayLabel = 'MODIFIED DATE'
      FieldName = 'ModifiedDate'
    end
    object cds_Att_Ext_ServicesIIModifiedUser: TIntegerField
      DisplayLabel = 'MODIFIED BY'
      FieldName = 'ModifiedUser'
    end
    object cds_Att_Ext_ServicesIISUPPLIER: TStringField
      FieldKind = fkLookup
      FieldName = 'SUPPLIER'
      LookupDataSet = dmsContact.cdsClient
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SupplierNo'
      Size = 80
      Lookup = True
    end
    object cds_Att_Ext_ServicesIIShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
    end
    object cds_Att_Ext_ServicesIICURRENCY: TStringField
      FieldKind = fkLookup
      FieldName = 'CURRENCY'
      LookupDataSet = cds_Currency
      LookupKeyFields = 'CurrencyNo'
      LookupResultField = 'CurrencyName'
      KeyFields = 'CurrencyNo'
      Size = 5
      Lookup = True
    end
    object cds_Att_Ext_ServicesIIQuick_InvoiceNo: TIntegerField
      FieldName = 'Quick_InvoiceNo'
    end
  end
  object ds_Att_Ext_ServicesII: TDataSource
    DataSet = cds_Att_Ext_ServicesII
    Left = 848
    Top = 496
  end
  object sq_Currency: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'Select *'
      'FROM dbo.Currency')
    Left = 832
    Top = 16
    object sq_CurrencyCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object sq_CurrencyCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 5
    end
    object sq_CurrencyDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_CurrencyCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_CurrencyModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_CurrencySequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
  end
  object dsp_Currency: TDataSetProvider
    DataSet = sq_Currency
    Constraints = True
    Left = 832
    Top = 64
  end
  object cds_Currency: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Currency'
    Left = 832
    Top = 112
    object cds_CurrencyCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object cds_CurrencyCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 5
    end
    object cds_CurrencyDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_CurrencyCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_CurrencyModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_CurrencySequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
  end
  object ds_Currency: TDataSource
    DataSet = cds_Currency
    Left = 832
    Top = 160
  end
  object dsp_PurchaseInvNo: TDataSetProvider
    DataSet = sq_PurchaseInvNo
    Constraints = True
    Left = 40
    Top = 368
  end
  object cds_PurchaseInvNo: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cds_PurchaseInvNoIndex1'
        Fields = 'PO_InvoiceNo'
      end>
    IndexFieldNames = 'PO_InvoiceNo'
    Params = <>
    ProviderName = 'dsp_PurchaseInvNo'
    StoreDefs = True
    Left = 40
    Top = 416
    object cds_PurchaseInvNoPO_InvoiceNo: TIntegerField
      FieldName = 'PO_InvoiceNo'
    end
    object cds_PurchaseInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object cds_PurchaseInvNoUserCreated: TIntegerField
      FieldName = 'UserCreated'
    end
    object cds_PurchaseInvNoUserModified: TIntegerField
      FieldName = 'UserModified'
    end
    object cds_PurchaseInvNoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
  end
  object sq_PurchaseInvNo: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'Select * '
      'From dbo.InvoiceNumber_PO')
    Left = 48
    Top = 312
    object sq_PurchaseInvNoPO_InvoiceNo: TIntegerField
      FieldName = 'PO_InvoiceNo'
    end
    object sq_PurchaseInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object sq_PurchaseInvNoUserCreated: TIntegerField
      FieldName = 'UserCreated'
    end
    object sq_PurchaseInvNoUserModified: TIntegerField
      FieldName = 'UserModified'
    end
    object sq_PurchaseInvNoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
  end
  object ds_PurchaseInvNo: TDataSource
    DataSet = cds_PurchaseInvNo
    Left = 40
    Top = 464
  end
  object sq_GetLoadID: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CustomerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT LO.LoadNo, LO.LoadID'
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      '--INNER JOIN dbo.Loads L'#9#9'ON'#9'L.LoadNo = LSP.LoadNo'
      ''
      'WHERE'
      'LO.SupplierNo = :SupplierNo'
      'AND LO.SenderLoadStatus = 2'
      'AND LO.CustomerNo = :CustomerNo'
      'AND LSP.ShippingPlanNo = :ShippingPlanNo'
      ''
      ''
      'AND NOT EXISTS'
      '   (SELECT *'
      '   FROM dbo.Invoiced_Load'
      '   WHERE LoadNo = LSP.LoadNo'
      'AND ShippingPlanNo = LSP.ShippingPlanNo)'
      ''
      '')
    Left = 453
    Top = 272
    object sq_GetLoadIDLoadID: TStringField
      FieldName = 'LoadID'
      Size = 50
    end
  end
  object sq_VolUnit: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'Select * from UnitName')
    Left = 896
    Top = 16
    object sq_VolUnitVolumeUnit_No: TIntegerField
      FieldName = 'VolumeUnit_No'
    end
    object sq_VolUnitVolumeUnitName: TStringField
      FieldName = 'VolumeUnitName'
      Size = 10
    end
  end
  object sq_PriceUnit: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'Select * from PackUnit')
    Left = 896
    Top = 64
    object sq_PriceUnitTemplateUnitNo: TIntegerField
      FieldName = 'TemplateUnitNo'
    end
    object sq_PriceUnitTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
    end
  end
  object sq_InvoiceList: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      
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
      'RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID,'
      'IH.CustomerNo,'
      
        'spi.SHIPPED_NOMM3 AS NM3, spi.SHIPPED_ACTM3 AS AM3, dpi.KUND_NM3' +
        ', dpi.KONT_UNIT'
      ''
      'FROM'
      'dbo.InvoiceHeader IH'
      
        'Inner Join dbo.InvoiceLO IL ON IL.InternalInvoiceNo = IH.Interna' +
        'lInvoiceNo'
      
        'Inner Join dbo.InvoiceNumber INo ON INo.InternalInvoiceNo = IH.I' +
        'nternalInvoiceNo'
      
        'Left Outer Join dbo.shippedPerInvoice spi on spi.InternalInvoice' +
        'No = IH.InternalInvoiceNo'
      
        'Left Outer Join dbo.DelVolInvoice dpi on dpi.InternalInvoiceNo =' +
        ' IH.InternalInvoiceNo'
      ''
      'WHERE'
      'IH.InternalInvoiceNo = -1'
      'ORDER BY InvoiceDate')
    Left = 944
    Top = 352
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
    object sq_InvoiceListLine_ID: TStringField
      FieldName = 'Line_ID'
      Size = 60
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
  end
  object dspInvoiceList: TDataSetProvider
    DataSet = sq_InvoiceList
    Constraints = True
    Left = 944
    Top = 400
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
        Name = 'Line_ID'
        DataType = ftString
        Size = 60
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
    Left = 939
    Top = 448
    object cdsInvoiceListINT_INVNO: TIntegerField
      FieldName = 'INT_INVNO'
    end
    object cdsInvoiceListINV_DATE: TSQLTimeStampField
      FieldName = 'INV_DATE'
    end
    object cdsInvoiceListAGENT: TStringField
      FieldName = 'AGENT'
      Size = 80
    end
    object cdsInvoiceListSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object cdsInvoiceListCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Size = 80
    end
    object cdsInvoiceListLO: TIntegerField
      FieldName = 'LO'
    end
    object cdsInvoiceListINVOICE_NO: TIntegerField
      FieldName = 'INVOICE_NO'
    end
    object cdsInvoiceListINVOICE_TYPE: TStringField
      FieldName = 'INVOICE_TYPE'
      Size = 23
    end
    object cdsInvoiceListINVOICE_KONTO: TStringField
      FieldName = 'INVOICE_KONTO'
      Size = 6
    end
    object cdsInvoiceListTO_BE_PAID: TFloatField
      FieldName = 'TO_BE_PAID'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceListCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Size = 5
    end
    object cdsInvoiceListLine_ID: TStringField
      FieldName = 'Line_ID'
      Size = 60
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
      FieldName = 'KUND_NM3'
      DisplayFormat = '#,###,###,###.000'
    end
    object cdsInvoiceListKONT_UNIT: TFloatField
      FieldName = 'KONT_UNIT'
      DisplayFormat = '#,###,###,###.000'
    end
  end
  object dsInvoiceList: TDataSource
    DataSet = cdsInvoiceList
    Left = 944
    Top = 496
  end
  object sq_Invoiced_Load: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'CustomerNo'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'INSERT INTO dbo.Invoiced_Load'
      '(InternalInvoiceNo,'
      'LoadNo,'
      'ShippingPlanNo,'
      'DateCreated,'
      'CreatedUser,'
      'ModifiedUser)'
      ''
      'SELECT DISTINCT'
      ':InternalInvoiceNo, LO.LoadNo,LSP.ShippingPlanNo, GetDate(), 8,8'
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.Loaddetail LD'#9#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'INNER JOIN dbo.LoadDetailPkgLength LDP'#9#9'ON '#9'LDP.LoadDetailNo = L' +
        'D.LoadDetailNo'
      #9#9#9#9#9#9'AND '#9'LDP.LoadNo = LD.LoadNo'
      
        'INNER JOIN dbo.PackageTypeDetail PTD'#9#9'ON '#9'PTD.ProductLengthNo = ' +
        'LDP.ProductLengthNo'
      #9#9#9#9#9#9'AND '#9'PTD.PackageTypeNo = LD.PackageTypeNo'
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON '#9'CSD.CustShipP' +
        'lanDetailObjectNo = LDP.CustShipPlanDetailObjectNo'
      
        'INNER JOIN dbo.OrderLine OL'#9#9#9'ON '#9'OL.OrderLineNo = CSD.OrderLine' +
        'No'
      #9#9#9#9#9#9'AND '#9'OL.OrderNo = CSD.OrderNo'
      
        'INNER JOIN dbo.ProductLength PL '#9#9'ON '#9'PL.ProductLengthNo = OL.Pr' +
        'oductLengthNo'
      
        'INNER JOIN dbo.UnitName UN'#9#9#9'ON '#9'UN.VolumeUnit_No = OL.VolumeUni' +
        'tNo'
      ''
      
        'INNER JOIN dbo.PackUnit PU'#9#9#9'ON '#9'PU.TemplateUnitNo = OL.PriceUni' +
        'tNo'
      
        'INNER JOIN dbo.ProductGroup PG'#9#9#9'ON '#9'PG.ProductGroupNo = OL.Prod' +
        'uctGroupNo'
      ''
      'WHERE'
      'LO.SupplierNo = :SupplierNo'
      'AND LSP.ShippingPlanNo = :ShippingPlanNo'
      'AND LO.CustomerNo = :CustomerNo'
      'AND LO.SenderLoadStatus = 2'
      'AND LO.LoadNo not in'
      '(Select LoadNo'
      'From'
      'dbo.Invoiced_Load'
      'WHERE ShippingPlanNo = LSP.ShippingPlanNo)'
      ''
      '')
    Left = 637
    Top = 352
  end
  object sp_DeleteST_Data: TSQLStoredProc
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
        Name = 'fInternalInvoiceNo'
        ParamType = ptInput
      end>
    StoredProcName = 'ST_DeleteST_Data'
    Left = 904
    Top = 128
  end
  object sq_PkgType_Invoice: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CustomerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      ''
      ''
      'Insert into PkgType_Invoice'
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
      'LinealMeterNominalLength)'
      ''
      'SELECT DISTINCT'
      'LD.PackageTypeNo,'
      'PTD.ProductLengthNo,'
      ':InternalInvoiceNo,'
      'LD.LoadNo,'
      'LD.LoadDetailNo,'
      'PTD.NoOfPieces ,'
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) AS M3Actual,'
      ''
      
        '--ROUND(CAST((       PTD.m3Actual )   As decimal(10,3)),3) AS M3' +
        'Actual,'
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) AS M3NOMINAL,'
      
        'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3) AS M' +
        'FBMNominal,'
      
        'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)' +
        ' AS SQMofActualWidth,'
      ''
      'PTD.SQMofCoveringWidth,'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3) AS LinealMeterActualLength,'
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) AS m3ActualSizeNomLength,'
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) AS m3NomSizeActualLength,'
      ''
      '--PTD.m3ActualSizeNomLength,'
      '--PTD.m3NomSizeActualLength,'
      'PTD.CreatedUser,'
      'PTD.ModifiedUser,'
      'PTD.DateCreated,'
      'ROUND(CAST((       PTD.m3Net )   As decimal(10,3)),3) AS m3Net'
      ''
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.LoadDetail LD'#9#9'ON'#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      'Inner Join dbo.LoadDetailPkgLength LDP ON LDP.LoadNo = LD.LoadNo'
      #9#9#9#9#9#9'AND LDP.LoadDetailNo = LD.LoadDetailNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail'#9'PTD ON PTD.PackageTypeNo = LD.P' +
        'ackageTypeNo'
      #9#9#9#9#9#9'AND PTD.ProductLengthNo = LDP.ProductLengthNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD2 ON CSD2.CustShip' +
        'PlanDetailObjectNo = LDP.CustShipPlanDetailObjectNo'
      
        'INNER JOIN dbo.OrderLine OL ON OL.OrderLineNo = CSD2.OrderLineNo' +
        ' AND OL.OrderNo = CSD2.OrderNo'
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = LDP.Prod' +
        'uctLengthNo'
      
        'INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = OL.Product' +
        'GroupNo'
      ''
      'WHERE'
      'LO.SupplierNo = :SupplierNo'
      'AND LO.SenderLoadStatus = 2'
      ''
      'AND LO.CustomerNo = :CustomerNo'
      'AND LSP.ShippingPlanNo = :ShippingPlanNo'
      ''
      ''
      'AND NOT EXISTS'
      '   (SELECT *'
      '   FROM dbo.Invoiced_Load'
      '   WHERE LoadNo = LSP.LoadNo'
      'AND ShippingPlanNo = LSP.ShippingPlanNo)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 632
    Top = 256
  end
  object sq_InvDtl_Att: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM dbo.InvoiceDetail IND'
      'WHERE  IND.InternalInvoiceNo = :InternalInvoiceNo')
    Left = 736
    Top = 232
    object sq_InvDtl_AttInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvDtl_AttShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvDtl_AttInvoiceDetailNo: TIntegerField
      FieldName = 'InvoiceDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvDtl_AttTypeOfRow: TIntegerField
      FieldName = 'TypeOfRow'
    end
    object sq_InvDtl_AttLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object sq_InvDtl_AttLoadID: TStringField
      FieldName = 'LoadID'
      Size = 50
    end
    object sq_InvDtl_AttOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
    end
    object sq_InvDtl_AttReference: TStringField
      FieldName = 'Reference'
      Size = 30
    end
    object sq_InvDtl_AttProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object sq_InvDtl_AttProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object sq_InvDtl_AttLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Size = 255
    end
    object sq_InvDtl_AttProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object sq_InvDtl_AttPrice: TFloatField
      FieldName = 'Price'
    end
    object sq_InvDtl_AttVolumeUnit: TStringField
      FieldName = 'VolumeUnit'
      Size = 10
    end
    object sq_InvDtl_AttPriceUnit: TStringField
      FieldName = 'PriceUnit'
      Size = 10
    end
    object sq_InvDtl_AttProductValue: TFloatField
      FieldName = 'ProductValue'
    end
    object sq_InvDtl_AttVolume_OrderUnit: TFloatField
      FieldName = 'Volume_OrderUnit'
    end
    object sq_InvDtl_AttActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
    end
    object sq_InvDtl_AttActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
    end
    object sq_InvDtl_AttNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
    end
    object sq_InvDtl_AttNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
    end
    object sq_InvDtl_AttNominalThicknessINCH: TFloatField
      FieldName = 'NominalThicknessINCH'
    end
    object sq_InvDtl_AttNominalWidthINCH: TFloatField
      FieldName = 'NominalWidthINCH'
    end
    object sq_InvDtl_AttActualNetM3: TFloatField
      FieldName = 'ActualNetM3'
    end
    object sq_InvDtl_AttNominalM3: TFloatField
      FieldName = 'NominalM3'
    end
    object sq_InvDtl_AttLinealMeter: TFloatField
      FieldName = 'LinealMeter'
    end
    object sq_InvDtl_AttNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
    end
    object sq_InvDtl_AttCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_InvDtl_AttModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_InvDtl_AttDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_InvDtl_AttNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
    end
    object sq_InvDtl_AttCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
    end
  end
  object dsp_InvDtl_Att: TDataSetProvider
    DataSet = sq_InvDtl_Att
    Constraints = True
    UpdateMode = upWhereChanged
    Left = 736
    Top = 280
  end
  object cds_InvDtl_Att: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'InternalInvoiceNo'
        DataType = ftInteger
      end
      item
        Name = 'ShippingPlanNo'
        DataType = ftInteger
      end
      item
        Name = 'InvoiceDetailNo'
        DataType = ftInteger
      end
      item
        Name = 'TypeOfRow'
        DataType = ftInteger
      end
      item
        Name = 'LoadNo'
        DataType = ftInteger
      end
      item
        Name = 'LoadID'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'OrderLineNo'
        DataType = ftInteger
      end
      item
        Name = 'Reference'
        DataType = ftString
        Size = 30
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
        Name = 'LengthDescription'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end
      item
        Name = 'Price'
        DataType = ftFloat
      end
      item
        Name = 'VolumeUnit'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PriceUnit'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ProductValue'
        DataType = ftFloat
      end
      item
        Name = 'Volume_OrderUnit'
        DataType = ftFloat
      end
      item
        Name = 'ActualThicknessMM'
        DataType = ftFloat
      end
      item
        Name = 'ActualWidthMM'
        DataType = ftFloat
      end
      item
        Name = 'NominalThicknessMM'
        DataType = ftFloat
      end
      item
        Name = 'NominalWidthMM'
        DataType = ftFloat
      end
      item
        Name = 'NominalThicknessINCH'
        DataType = ftFloat
      end
      item
        Name = 'NominalWidthINCH'
        DataType = ftFloat
      end
      item
        Name = 'ActualNetM3'
        DataType = ftFloat
      end
      item
        Name = 'NominalM3'
        DataType = ftFloat
      end
      item
        Name = 'LinealMeter'
        DataType = ftFloat
      end
      item
        Name = 'NoOfPieces'
        DataType = ftInteger
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
        Name = 'NominalLengthMM'
        DataType = ftFloat
      end
      item
        Name = 'CustShipPlanDetailObjectNo'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cdsInvoiceDetailIndex1'
        Fields = 'InvoiceDetailNo'
      end>
    IndexFieldNames = 'InvoiceDetailNo'
    Params = <>
    ProviderName = 'dsp_InvDtl_Att'
    StoreDefs = True
    Left = 736
    Top = 328
    object cds_InvDtl_AttInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_InvDtl_AttShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_InvDtl_AttInvoiceDetailNo: TIntegerField
      FieldName = 'InvoiceDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_InvDtl_AttTypeOfRow: TIntegerField
      FieldName = 'TypeOfRow'
    end
    object cds_InvDtl_AttReference: TStringField
      FieldName = 'Reference'
      Size = 30
    end
    object cds_InvDtl_AttProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object cds_InvDtl_AttLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Size = 255
    end
    object cds_InvDtl_AttPrice: TFloatField
      FieldName = 'Price'
    end
    object cds_InvDtl_AttVolumeUnit: TStringField
      FieldName = 'VolumeUnit'
      Size = 10
    end
    object cds_InvDtl_AttPriceUnit: TStringField
      FieldName = 'PriceUnit'
      Size = 10
    end
    object cds_InvDtl_AttProductValue: TFloatField
      FieldName = 'ProductValue'
      DisplayFormat = '#.00'
    end
    object cds_InvDtl_AttVolume_OrderUnit: TFloatField
      FieldName = 'Volume_OrderUnit'
      DisplayFormat = '#.000'
    end
    object cds_InvDtl_AttActualNetM3: TFloatField
      FieldName = 'ActualNetM3'
      DisplayFormat = '#.000'
    end
    object cds_InvDtl_AttNominalM3: TFloatField
      FieldName = 'NominalM3'
      DisplayFormat = '#.000'
    end
    object cds_InvDtl_AttLinealMeter: TFloatField
      FieldName = 'LinealMeter'
      DisplayFormat = '#.000'
    end
    object cds_InvDtl_AttNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
    end
    object cds_InvDtl_AttTotalInvoice: TAggregateField
      FieldName = 'TotalInvoice'
      Visible = True
      Active = True
      DisplayFormat = '#.00'
      Expression = 'SUM(ProductValue)'
    end
  end
  object ds_InvDtl_Att: TDataSource
    DataSet = mt_InvDtl_Att
    Left = 736
    Top = 472
  end
  object sq_AttestRow: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'Select * FROM'
      'dbo.AttestRow')
    Left = 904
    Top = 184
    object sq_AttestRowInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_AttestRowShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_AttestRowSequensNo: TIntegerField
      FieldName = 'SequensNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_AttestRowinvoicedetailno: TIntegerField
      FieldName = 'invoicedetailno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsp_AttestRow: TDataSetProvider
    DataSet = sq_AttestRow
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 904
    Top = 232
  end
  object cds_AttestRow: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_AttestRow'
    OnReconcileError = cds_AttestRowReconcileError
    Left = 904
    Top = 280
    object cds_AttestRowInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object cds_AttestRowShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object cds_AttestRowSequensNo: TIntegerField
      FieldName = 'SequensNo'
    end
    object cds_AttestRowinvoicedetailno: TIntegerField
      FieldName = 'invoicedetailno'
    end
  end
  object sq_Ins_AttestRow: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'internalinvoiceno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sequensno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'invoicedetailno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Insert  INTO dbo.Attestrow'
      'Values( :internalinvoiceno, '
      ':ShippingPlanNo, '
      ':sequensno, :invoicedetailno )')
    Left = 816
    Top = 224
  end
  object sq_Del_AttestRow: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'internalinvoiceno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete FROM dbo.Attestrow'
      'WHERE '
      'internalinvoiceno = :internalinvoiceno')
    Left = 816
    Top = 272
  end
  object mt_InvDtl_Att: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexName = 'mt_InvDtl_AttIndex1'
    IndexDefs = <
      item
        Name = 'mt_InvDtl_AttIndex1'
        Fields = 'InternalInvoiceNo;ShippingPlanNo;InvoiceDetailNo'
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
    Left = 736
    Top = 424
    object mt_InvDtl_AttInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object mt_InvDtl_AttShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object mt_InvDtl_AttInvoiceDetailNo: TIntegerField
      FieldName = 'InvoiceDetailNo'
    end
    object mt_InvDtl_AttTypeOfRow: TIntegerField
      FieldName = 'TypeOfRow'
    end
    object mt_InvDtl_AttReference: TStringField
      FieldName = 'Reference'
      Size = 30
    end
    object mt_InvDtl_AttProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object mt_InvDtl_AttLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Size = 255
    end
    object mt_InvDtl_AttPrice: TFloatField
      FieldName = 'Price'
    end
    object mt_InvDtl_AttVolumeUnit: TStringField
      FieldName = 'VolumeUnit'
      Size = 10
    end
    object mt_InvDtl_AttPriceUnit: TStringField
      FieldName = 'PriceUnit'
      Size = 10
    end
    object mt_InvDtl_AttProductValue: TFloatField
      FieldName = 'ProductValue'
      DisplayFormat = '#.00'
    end
    object mt_InvDtl_AttVolume_OrderUnit: TFloatField
      FieldName = 'Volume_OrderUnit'
      DisplayFormat = '#.000'
    end
    object mt_InvDtl_AttActualNetM3: TFloatField
      FieldName = 'ActualNetM3'
      DisplayFormat = '#.000'
    end
    object mt_InvDtl_AttNominalM3: TFloatField
      FieldName = 'NominalM3'
      DisplayFormat = '#.000'
    end
    object mt_InvDtl_AttLinealMeter: TFloatField
      FieldName = 'LinealMeter'
      DisplayFormat = '#.000'
    end
    object mt_InvDtl_AttNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
    end
    object mt_InvDtl_AttSequensNo: TIntegerField
      FieldName = 'SequensNo'
    end
    object mt_InvDtl_AttChecked: TIntegerField
      FieldName = 'Checked'
    end
  end
  object mt_AttestRow: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexName = 'mt_AttestRowIndex1'
    IndexDefs = <
      item
        Name = 'mt_AttestRowIndex1'
        Fields = 'InternalInvoiceNo;ShippingPlanNo;SequensNo;InvoiceDetailNo'
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
    Left = 736
    Top = 520
    object mt_AttestRowInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object mt_AttestRowShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object mt_AttestRowSequensNo: TIntegerField
      FieldName = 'SequensNo'
    end
    object mt_AttestRowInvoiceDetailNo: TIntegerField
      FieldName = 'InvoiceDetailNo'
    end
  end
  object sq_GetAttestRow: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM dbo.Attestrow A '
      'WHERE  A.InternalInvoiceNo = :InternalInvoiceNo')
    Left = 624
    Top = 560
    object sq_GetAttestRowInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object sq_GetAttestRowShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object sq_GetAttestRowSequensNo: TIntegerField
      FieldName = 'SequensNo'
    end
    object sq_GetAttestRowinvoicedetailno: TIntegerField
      FieldName = 'invoicedetailno'
    end
  end
  object ds_mt_AttestRow: TDataSource
    DataSet = mt_AttestRow
    Left = 736
    Top = 560
  end
  object sq_InvAttested: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'Quick_InvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select SequensNo'
      'FROM dbo.Att_Ext_Services'
      'WHERE Quick_InvoiceNo = :Quick_InvoiceNo')
    Left = 848
    Top = 544
    object sq_InvAttestedSequensNo: TIntegerField
      FieldName = 'SequensNo'
    end
  end
  object sq_SearchLONo: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InvoiceType'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT IL.InternalInvoiceNo'
      'FROM'
      ' dbo.InvoiceLO IL'
      
        'Inner Join dbo.InvoiceHeader IH ON IH.InternalInvoiceNo = IL.Int' +
        'ernalInvoiceNo'
      'WHERE'
      'IH.InvoiceType = :InvoiceType'
      'AND IL.ShippingPlanNo = :ShippingPlanNo')
    Left = 320
    Top = 512
    object sq_SearchLONoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
  end
  object sq_InvoiceHead_II: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InvoiceType'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM InvoiceHeader IH'
      'WHERE'
      'IH.InvoiceType = :InvoiceType'
      'AND IH.InvoiceDate >= '#39'01/01/2005'#39
      'AND '
      ''
      
        '((IH.InvoiceType = 0) OR (IH.InvoiceType = 1) OR (IH.InvoiceType' +
        ' = 2) OR (IH.InvoiceType = 3)  OR (IH.InvoiceType = 4)'
      '  OR (IH.InvoiceType = 5))'
      'AND IH.Debit_Credit = 0'
      '-- AND ((IH.QuickInvoice <> 1) OR (IH.QuickInvoice is null))'
      'AND ( '
      
        '(IH.InternalInvoiceNo'#9'IN (Select InternalInvoiceNo'#9' FROM Invoice' +
        'Number))'
      'OR '
      
        '(IH.InternalInvoiceNo'#9'IN (Select InternalInvoiceNo'#9' FROM Invoice' +
        'Number_PO))'
      ''
      'OR '
      
        '(IH.InternalInvoiceNo'#9'IN (Select InternalInvoiceNo'#9' FROM Proform' +
        'aInvoiceNumber))'
      ''
      'OR'
      
        '(IH.InternalInvoiceNo'#9'IN (Select InternalInvoiceNo'#9' FROM Invoice' +
        'No_USA))'
      'OR'
      
        '(IH.InternalInvoiceNo'#9'IN (Select InternalInvoiceNo'#9' FROM InvNo_F' +
        'W)) )')
    Left = 496
    Top = 424
    object sq_InvoiceHead_IIInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvoiceHead_IIInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
    end
    object sq_InvoiceHead_IIInvoiceDate: TSQLTimeStampField
      FieldName = 'InvoiceDate'
    end
    object sq_InvoiceHead_IISupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object sq_InvoiceHead_IICustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object sq_InvoiceHead_IIAgentNo: TIntegerField
      FieldName = 'AgentNo'
    end
    object sq_InvoiceHead_IIAgentCommission: TFloatField
      FieldName = 'AgentCommission'
    end
    object sq_InvoiceHead_IISendInvoiceToAgent: TIntegerField
      FieldName = 'SendInvoiceToAgent'
    end
    object sq_InvoiceHead_IIPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
    end
    object sq_InvoiceHead_IICommissionPaidByCustomer: TIntegerField
      FieldName = 'CommissionPaidByCustomer'
    end
    object sq_InvoiceHead_IIDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
    end
    object sq_InvoiceHead_IIDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
    end
    object sq_InvoiceHead_IIStatus: TIntegerField
      FieldName = 'Status'
    end
    object sq_InvoiceHead_IINote: TMemoField
      FieldName = 'Note'
      BlobType = ftMemo
    end
    object sq_InvoiceHead_IIInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      BlobType = ftMemo
    end
    object sq_InvoiceHead_IIPaymentText: TMemoField
      FieldName = 'PaymentText'
      BlobType = ftMemo
    end
    object sq_InvoiceHead_IICurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object sq_InvoiceHead_IIIncome_Account: TStringField
      FieldName = 'Income_Account'
      Size = 6
    end
    object sq_InvoiceHead_IICustomerRecivablesAccount: TStringField
      FieldName = 'CustomerRecivablesAccount'
      Size = 6
    end
    object sq_InvoiceHead_IIVAT_OnInvoice: TIntegerField
      FieldName = 'VAT_OnInvoice'
    end
    object sq_InvoiceHead_IIClientBillingAddressNo: TIntegerField
      FieldName = 'ClientBillingAddressNo'
    end
    object sq_InvoiceHead_IIAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Size = 40
    end
    object sq_InvoiceHead_IIAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Size = 40
    end
    object sq_InvoiceHead_IIAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Size = 40
    end
    object sq_InvoiceHead_IIAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Size = 40
    end
    object sq_InvoiceHead_IIStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Size = 40
    end
    object sq_InvoiceHead_IIPostalCode: TStringField
      FieldName = 'PostalCode'
    end
    object sq_InvoiceHead_IICityName: TStringField
      FieldName = 'CityName'
      Size = 50
    end
    object sq_InvoiceHead_IICountryName: TStringField
      FieldName = 'CountryName'
      Size = 30
    end
    object sq_InvoiceHead_IICreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_InvoiceHead_IIModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_InvoiceHead_IIDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_InvoiceHead_IIAgentName: TStringField
      FieldName = 'AgentName'
      Size = 80
    end
    object sq_InvoiceHead_IICustomerName: TStringField
      FieldName = 'CustomerName'
      Size = 80
    end
    object sq_InvoiceHead_IIDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Size = 21
    end
    object sq_InvoiceHead_IIPaymentDescription: TStringField
      FieldName = 'PaymentDescription'
      Size = 100
    end
    object sq_InvoiceHead_IILanguageCode: TIntegerField
      FieldName = 'LanguageCode'
    end
    object sq_InvoiceHead_IIDestination: TStringField
      FieldName = 'Destination'
      Size = 50
    end
    object sq_InvoiceHead_IIFreightInDiscount: TIntegerField
      FieldName = 'FreightInDiscount'
    end
    object sq_InvoiceHead_IIFreightInCommission: TIntegerField
      FieldName = 'FreightInCommission'
    end
    object sq_InvoiceHead_IIDiscount1: TFloatField
      FieldName = 'Discount1'
    end
    object sq_InvoiceHead_IICurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 5
    end
    object sq_InvoiceHead_IIAddressName: TStringField
      FieldName = 'AddressName'
      Size = 80
    end
    object sq_InvoiceHead_IIST_AddressName: TStringField
      FieldName = 'ST_AddressName'
      Size = 80
    end
    object sq_InvoiceHead_IIST_AddressLine1: TStringField
      FieldName = 'ST_AddressLine1'
      Size = 40
    end
    object sq_InvoiceHead_IIST_AddressLine2: TStringField
      FieldName = 'ST_AddressLine2'
      Size = 40
    end
    object sq_InvoiceHead_IIST_AddressLine3: TStringField
      FieldName = 'ST_AddressLine3'
      Size = 40
    end
    object sq_InvoiceHead_IIST_AddressLine4: TStringField
      FieldName = 'ST_AddressLine4'
      Size = 40
    end
    object sq_InvoiceHead_IIST_StateOrProvince: TStringField
      FieldName = 'ST_StateOrProvince'
      Size = 40
    end
    object sq_InvoiceHead_IIST_PostalCode: TStringField
      FieldName = 'ST_PostalCode'
    end
    object sq_InvoiceHead_IIST_CityName: TStringField
      FieldName = 'ST_CityName'
      Size = 50
    end
    object sq_InvoiceHead_IIST_CountryName: TStringField
      FieldName = 'ST_CountryName'
      Size = 30
    end
    object sq_InvoiceHead_IIAGENT_ADDRESS_NAME: TStringField
      FieldName = 'AGENT_ADDRESS_NAME'
      Size = 80
    end
    object sq_InvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE1: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE1'
      Size = 40
    end
    object sq_InvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE2: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE2'
      Size = 40
    end
    object sq_InvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE3: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE3'
      Size = 40
    end
    object sq_InvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE4: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE4'
      Size = 40
    end
    object sq_InvoiceHead_IIAGENT_SHIPTO_PROVINCE: TStringField
      FieldName = 'AGENT_SHIPTO_PROVINCE'
      Size = 40
    end
    object sq_InvoiceHead_IIAGENT_SHIPTO_POSTALCODE: TStringField
      FieldName = 'AGENT_SHIPTO_POSTALCODE'
    end
    object sq_InvoiceHead_IIAGENT_SHIPTO_CITY: TStringField
      FieldName = 'AGENT_SHIPTO_CITY'
      Size = 50
    end
    object sq_InvoiceHead_IIAGENT_SHIPTO_COUNTRY: TStringField
      FieldName = 'AGENT_SHIPTO_COUNTRY'
      Size = 30
    end
    object sq_InvoiceHead_IISearchName: TStringField
      FieldName = 'SearchName'
      Size = 80
    end
    object sq_InvoiceHead_IITot_Inv_Inc_Freight_Extras: TFloatField
      FieldName = 'Tot_Inv_Inc_Freight_Extras'
    end
    object sq_InvoiceHead_IISUM_FreigthCost: TFloatField
      FieldName = 'SUM_FreigthCost'
    end
    object sq_InvoiceHead_IITotal_Product_Value_No_Freight: TFloatField
      FieldName = 'Total_Product_Value_No_Freight'
    end
    object sq_InvoiceHead_IIDiscount: TFloatField
      FieldName = 'Discount'
    end
    object sq_InvoiceHead_IICommission: TFloatField
      FieldName = 'Commission'
    end
    object sq_InvoiceHead_IICommission_and_Discount: TFloatField
      FieldName = 'Commission_and_Discount'
    end
    object sq_InvoiceHead_IIInv_Value_Deduct_Com_Dis: TFloatField
      FieldName = 'Inv_Value_Deduct_Com_Dis'
    end
    object sq_InvoiceHead_IIVAT_Value: TFloatField
      FieldName = 'VAT_Value'
    end
    object sq_InvoiceHead_IIInv_Value_To_Be_Paid: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid'
    end
    object sq_InvoiceHead_IIDebit_Credit: TIntegerField
      FieldName = 'Debit_Credit'
    end
    object sq_InvoiceHead_IIInv_Value_After_Deduct_DIS_COMM: TFloatField
      FieldName = 'Inv_Value_After_Deduct_DIS_COMM'
    end
    object sq_InvoiceHead_IIVAT: TStringField
      FieldName = 'VAT'
    end
    object sq_InvoiceHead_IIInv_Value_To_Be_Paid_2: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid_2'
    end
    object sq_InvoiceHead_IIQuickInvoice: TIntegerField
      FieldName = 'QuickInvoice'
    end
    object sq_InvoiceHead_IIStickyNote: TStringField
      FieldName = 'StickyNote'
      Size = 255
    end
  end
  object dspInvoiceHead_II: TDataSetProvider
    DataSet = sq_InvoiceHead_II
    Constraints = True
    UpdateMode = upWhereChanged
    Left = 496
    Top = 472
  end
  object cdsInvoiceHead_II: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'InternalInvoiceNo'
        DataType = ftInteger
      end
      item
        Name = 'InvoiceType'
        DataType = ftInteger
      end
      item
        Name = 'InvoiceDate'
        DataType = ftTimeStamp
      end
      item
        Name = 'SupplierNo'
        DataType = ftInteger
      end
      item
        Name = 'CustomerNo'
        DataType = ftInteger
      end
      item
        Name = 'AgentNo'
        DataType = ftInteger
      end
      item
        Name = 'AgentCommission'
        DataType = ftFloat
      end
      item
        Name = 'SendInvoiceToAgent'
        DataType = ftInteger
      end
      item
        Name = 'PaymentTermsNo'
        DataType = ftInteger
      end
      item
        Name = 'CommissionPaidByCustomer'
        DataType = ftInteger
      end
      item
        Name = 'DeliveryTermsNo'
        DataType = ftInteger
      end
      item
        Name = 'DestinationNo'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end
      item
        Name = 'Note'
        DataType = ftMemo
      end
      item
        Name = 'InvoiceText'
        DataType = ftMemo
      end
      item
        Name = 'PaymentText'
        DataType = ftMemo
      end
      item
        Name = 'CurrencyNo'
        DataType = ftInteger
      end
      item
        Name = 'Income_Account'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CustomerRecivablesAccount'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VAT_OnInvoice'
        DataType = ftInteger
      end
      item
        Name = 'ClientBillingAddressNo'
        DataType = ftInteger
      end
      item
        Name = 'AddressLine1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AddressLine2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AddressLine3'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AddressLine4'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'StateOrProvince'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PostalCode'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CityName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CountryName'
        DataType = ftString
        Size = 30
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
        Name = 'AgentName'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'CustomerName'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DeliveryTerm'
        DataType = ftString
        Size = 21
      end
      item
        Name = 'PaymentDescription'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'LanguageCode'
        DataType = ftInteger
      end
      item
        Name = 'Destination'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FreightInDiscount'
        DataType = ftInteger
      end
      item
        Name = 'FreightInCommission'
        DataType = ftInteger
      end
      item
        Name = 'Discount1'
        DataType = ftFloat
      end
      item
        Name = 'CurrencyName'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'AddressName'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'ST_AddressName'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'ST_AddressLine1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ST_AddressLine2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ST_AddressLine3'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ST_AddressLine4'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ST_StateOrProvince'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ST_PostalCode'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ST_CityName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ST_CountryName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'AGENT_ADDRESS_NAME'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'AGENT_SHIPTO_ADDRESSLINE1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AGENT_SHIPTO_ADDRESSLINE2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AGENT_SHIPTO_ADDRESSLINE3'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AGENT_SHIPTO_ADDRESSLINE4'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AGENT_SHIPTO_PROVINCE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AGENT_SHIPTO_POSTALCODE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AGENT_SHIPTO_CITY'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'AGENT_SHIPTO_COUNTRY'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SearchName'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Tot_Inv_Inc_Freight_Extras'
        DataType = ftFloat
      end
      item
        Name = 'SUM_FreigthCost'
        DataType = ftFloat
      end
      item
        Name = 'Total_Product_Value_No_Freight'
        DataType = ftFloat
      end
      item
        Name = 'Discount'
        DataType = ftFloat
      end
      item
        Name = 'Commission'
        DataType = ftFloat
      end
      item
        Name = 'Commission_and_Discount'
        DataType = ftFloat
      end
      item
        Name = 'Inv_Value_Deduct_Com_Dis'
        DataType = ftFloat
      end
      item
        Name = 'VAT_Value'
        DataType = ftFloat
      end
      item
        Name = 'Inv_Value_To_Be_Paid'
        DataType = ftFloat
      end
      item
        Name = 'Debit_Credit'
        DataType = ftInteger
      end
      item
        Name = 'Inv_Value_After_Deduct_DIS_COMM'
        DataType = ftFloat
      end
      item
        Name = 'VAT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Inv_Value_To_Be_Paid_2'
        DataType = ftFloat
      end
      item
        Name = 'QuickInvoice'
        DataType = ftInteger
      end
      item
        Name = 'StickyNote'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 'cdsInvoiceHead_IIIndex1'
        Fields = 'InternalInvoiceNo'
      end>
    IndexFieldNames = 'InternalInvoiceNo'
    Params = <>
    ProviderName = 'dspInvoiceHead_II'
    StoreDefs = True
    Left = 496
    Top = 520
    object cdsInvoiceHead_IIInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInvoiceHead_IIInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
    end
    object cdsInvoiceHead_IIInvoiceDate: TSQLTimeStampField
      FieldName = 'InvoiceDate'
    end
    object cdsInvoiceHead_IISupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object cdsInvoiceHead_IICustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object cdsInvoiceHead_IIAgentNo: TIntegerField
      FieldName = 'AgentNo'
    end
    object cdsInvoiceHead_IIAgentCommission: TFloatField
      FieldName = 'AgentCommission'
    end
    object cdsInvoiceHead_IISendInvoiceToAgent: TIntegerField
      FieldName = 'SendInvoiceToAgent'
    end
    object cdsInvoiceHead_IIPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
    end
    object cdsInvoiceHead_IICommissionPaidByCustomer: TIntegerField
      FieldName = 'CommissionPaidByCustomer'
    end
    object cdsInvoiceHead_IIDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
    end
    object cdsInvoiceHead_IIDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
    end
    object cdsInvoiceHead_IIStatus: TIntegerField
      FieldName = 'Status'
    end
    object cdsInvoiceHead_IINote: TMemoField
      FieldName = 'Note'
      BlobType = ftMemo
    end
    object cdsInvoiceHead_IIInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      BlobType = ftMemo
    end
    object cdsInvoiceHead_IIPaymentText: TMemoField
      FieldName = 'PaymentText'
      BlobType = ftMemo
    end
    object cdsInvoiceHead_IICurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object cdsInvoiceHead_IIIncome_Account: TStringField
      FieldName = 'Income_Account'
      Size = 6
    end
    object cdsInvoiceHead_IICustomerRecivablesAccount: TStringField
      FieldName = 'CustomerRecivablesAccount'
      Size = 6
    end
    object cdsInvoiceHead_IIVAT_OnInvoice: TIntegerField
      FieldName = 'VAT_OnInvoice'
    end
    object cdsInvoiceHead_IIClientBillingAddressNo: TIntegerField
      FieldName = 'ClientBillingAddressNo'
    end
    object cdsInvoiceHead_IIAddressName: TStringField
      FieldName = 'AddressName'
      Size = 80
    end
    object cdsInvoiceHead_IIAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Size = 40
    end
    object cdsInvoiceHead_IIAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Size = 40
    end
    object cdsInvoiceHead_IIAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Size = 40
    end
    object cdsInvoiceHead_IIAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Size = 40
    end
    object cdsInvoiceHead_IIStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Size = 40
    end
    object cdsInvoiceHead_IIPostalCode: TStringField
      FieldName = 'PostalCode'
    end
    object cdsInvoiceHead_IICityName: TStringField
      FieldName = 'CityName'
      Size = 50
    end
    object cdsInvoiceHead_IICountryName: TStringField
      FieldName = 'CountryName'
      Size = 30
    end
    object cdsInvoiceHead_IICreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cdsInvoiceHead_IIModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cdsInvoiceHead_IIDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cdsInvoiceHead_IIAgentName: TStringField
      FieldName = 'AgentName'
      Size = 80
    end
    object cdsInvoiceHead_IICustomerName: TStringField
      FieldName = 'CustomerName'
      Size = 80
    end
    object cdsInvoiceHead_IIDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Size = 21
    end
    object cdsInvoiceHead_IIPaymentDescription: TStringField
      FieldName = 'PaymentDescription'
      Size = 100
    end
    object cdsInvoiceHead_IILanguageCode: TIntegerField
      FieldName = 'LanguageCode'
    end
    object cdsInvoiceHead_IIDestination: TStringField
      FieldName = 'Destination'
      Size = 50
    end
    object cdsInvoiceHead_IIFreightInDiscount: TIntegerField
      FieldName = 'FreightInDiscount'
    end
    object cdsInvoiceHead_IIFreightInCommission: TIntegerField
      FieldName = 'FreightInCommission'
    end
    object cdsInvoiceHead_IIDiscount1: TFloatField
      FieldName = 'Discount1'
    end
    object cdsInvoiceHead_IICurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 5
    end
    object cdsInvoiceHead_IIST_AddressName: TStringField
      FieldName = 'ST_AddressName'
      Size = 80
    end
    object cdsInvoiceHead_IIST_AddressLine1: TStringField
      FieldName = 'ST_AddressLine1'
      Size = 40
    end
    object cdsInvoiceHead_IIST_AddressLine2: TStringField
      FieldName = 'ST_AddressLine2'
      Size = 40
    end
    object cdsInvoiceHead_IIST_AddressLine3: TStringField
      FieldName = 'ST_AddressLine3'
      Size = 40
    end
    object cdsInvoiceHead_IIST_AddressLine4: TStringField
      FieldName = 'ST_AddressLine4'
      Size = 40
    end
    object cdsInvoiceHead_IIST_StateOrProvince: TStringField
      FieldName = 'ST_StateOrProvince'
      Size = 40
    end
    object cdsInvoiceHead_IIST_PostalCode: TStringField
      FieldName = 'ST_PostalCode'
    end
    object cdsInvoiceHead_IIST_CityName: TStringField
      FieldName = 'ST_CityName'
      Size = 50
    end
    object cdsInvoiceHead_IIST_CountryName: TStringField
      FieldName = 'ST_CountryName'
      Size = 30
    end
    object cdsInvoiceHead_IIAGENT_ADDRESS_NAME: TStringField
      FieldName = 'AGENT_ADDRESS_NAME'
      Size = 80
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE1: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE1'
      Size = 40
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE2: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE2'
      Size = 40
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE3: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE3'
      Size = 40
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE4: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE4'
      Size = 40
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_PROVINCE: TStringField
      FieldName = 'AGENT_SHIPTO_PROVINCE'
      Size = 40
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_POSTALCODE: TStringField
      FieldName = 'AGENT_SHIPTO_POSTALCODE'
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_CITY: TStringField
      FieldName = 'AGENT_SHIPTO_CITY'
      Size = 50
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_COUNTRY: TStringField
      FieldName = 'AGENT_SHIPTO_COUNTRY'
      Size = 30
    end
    object cdsInvoiceHead_IISearchName: TStringField
      FieldName = 'SearchName'
      Size = 80
    end
    object cdsInvoiceHead_IITot_Inv_Inc_Freight_Extras: TFloatField
      FieldName = 'Tot_Inv_Inc_Freight_Extras'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHead_IISUM_FreigthCost: TFloatField
      FieldName = 'SUM_FreigthCost'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHead_IITotal_Product_Value_No_Freight: TFloatField
      FieldName = 'Total_Product_Value_No_Freight'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHead_IIDiscount: TFloatField
      FieldName = 'Discount'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHead_IICommission: TFloatField
      FieldName = 'Commission'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHead_IICommission_and_Discount: TFloatField
      FieldName = 'Commission_and_Discount'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHead_IIInv_Value_Deduct_Com_Dis: TFloatField
      FieldName = 'Inv_Value_Deduct_Com_Dis'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHead_IIVAT_Value: TFloatField
      FieldName = 'VAT_Value'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHead_IIInv_Value_To_Be_Paid: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHead_IIDebit_Credit: TIntegerField
      FieldName = 'Debit_Credit'
    end
    object cdsInvoiceHead_IIInv_Value_After_Deduct_DIS_COMM: TFloatField
      FieldName = 'Inv_Value_After_Deduct_DIS_COMM'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHead_IIVAT: TStringField
      FieldName = 'VAT'
    end
    object cdsInvoiceHead_IIInv_Value_To_Be_Paid_2: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid_2'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceHead_IIQuickInvoice: TIntegerField
      FieldName = 'QuickInvoice'
    end
    object cdsInvoiceHead_IIStickyNote: TStringField
      FieldName = 'StickyNote'
      Size = 255
    end
  end
  object dsrcInvoiceHead_II: TDataSource
    DataSet = cdsInvoiceHead_II
    Left = 496
    Top = 568
  end
  object sq_updInvPkgDtl: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Insert into dbo.invPkgDtl'
      '('
      'InternalInvoiceNo,'
      'ShippingPlanNo,'
      'InvoiceDetailNo,'
      'ProductValue,'
      'Volume_OrderUnit,'
      'ActualNetM3,'
      'NominalM3,'
      'LinealMeter,'
      'MFBM,'
      'NoOfPieces,'
      'PcsPerPkg,'
      'NoOfPkgs'
      ')'
      'select distinct'
      'Inde.InternalInvoiceNo,'
      'Inde.ShippingPlanNo,'
      'Inde.InvoiceDetailNo,'
      
        'ROUND(CAST(( M3_NOM.PRODUCTVALUE ) As decimal(18,2)), 2) AS PROD' +
        'UCTVALUE,'
      
        'ROUND(CAST(( M3_NOM.VOLUME_ORDERUNIT ) As decimal(18,3)), 3) AS ' +
        'VOLUME_ORDERUNIT,'
      'M3_NOM.M3ACTUAL,'
      'M3_NOM.M3NOMINAL,'
      'M3_NOM.ACTUAL_LINEALMETER,'
      'M3_NOM.MFBM,'
      'M3_NOM.NOOFPIECES,'
      'M3_NOM.PCSPERPKG,'
      'M3_NOM.NOOFPKGS'
      ''
      'FROM '
      'dbo.InvoiceHeader IH '
      
        'INNER JOIN dbo.Invoiced_Load INVD ON INVD.InternalInvoiceNo = IH' +
        '.InternalInvoiceNo'
      ''
      'INNER JOIN dbo.Loads LO ON INVD.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.Loaddetail LD'#9#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'INNER JOIN dbo.LoadDetailPkgLength LDP'#9#9'ON '#9'LDP.LoadDetailNo = L' +
        'D.LoadDetailNo'
      #9#9#9#9#9#9'AND '#9'LDP.LoadNo = LD.LoadNo'
      
        'INNER JOIN dbo.PackageTypeDetail PTD'#9#9'ON '#9'PTD.ProductLengthNo = ' +
        'LDP.ProductLengthNo'
      #9#9#9#9#9#9'AND '#9'PTD.PackageTypeNo = LD.PackageTypeNo'
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON '#9'CSD.CustShipP' +
        'lanDetailObjectNo = LDP.CustShipPlanDetailObjectNo'
      ''
      
        'Inner join dbo.InvoiceDetail Inde on Inde.InternalInvoiceNo = IN' +
        'VD.InternalInvoiceNo'
      'and Inde.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'and  inde.CustShipPlanDetailObjectNo = csd.CustShipPlanDetailObj' +
        'ectNo'
      ''
      ''
      
        'Inner Join dbo.VIS_LoadVolume_Pkg M3_NOM ON M3_NOM.CustomerNo = ' +
        'LO.CustomerNo'
      'AND M3_NOM.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'AND M3_NOM.CustShipPlanDetailObjectNo = csd.CustShipPlanDetailOb' +
        'jectNo'
      'AND M3_NOM.InternalInvoiceNo = INVD.InternalInvoiceNo'
      ''
      ''
      'WHERE'
      'IH.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      '')
    Left = 368
    Top = 232
  end
  object sp_vida_Populate_SamFaktura: TSQLStoredProc
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
        Name = 'InvGroupNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_Populate_SamFaktura'
    Left = 144
    Top = 552
  end
  object ds_InvoiceGroup: TDataSource
    DataSet = cds_InvoiceGroup
    Left = 144
    Top = 456
  end
  object sqFWInvNo: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'Select * '
      'From InvNo_FW')
    Left = 760
    Top = 16
    object sqFWInvNoInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object sqFWInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
  end
  object dspFWInvNo: TDataSetProvider
    DataSet = sqFWInvNo
    Constraints = True
    UpdateMode = upWhereChanged
    Left = 760
    Top = 64
  end
  object cdsFWInvNo: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'InvoiceNo'
        DataType = ftInteger
      end
      item
        Name = 'InternalInvoiceNo'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cdsFWInvNoIndex2'
        Fields = 'InvoiceNo'
      end>
    IndexFieldNames = 'InvoiceNo'
    Params = <>
    ProviderName = 'dspFWInvNo'
    StoreDefs = True
    Left = 760
    Top = 112
    object cdsFWInvNoInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object cdsFWInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
  end
  object sq_SearchLoadNo: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
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
    Left = 112
    Top = 272
    object sq_SearchLoadNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object sq_SearchLoadNoInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
    end
  end
  object sq_GetInvTexts: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'OrderNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select DT.DocText FROM'
      'dbo.DocumentText DT '
      'Inner Join dbo.DocTypeOrder DTO on DTO.OrderNo = DT.OrderNo'
      'AND DTO.DocTextNo =DT.DocTextNo'
      ''
      'WHERE '
      ' DT.OrderNo = :OrderNo'
      'AND DTO.DocType = 2 -- Faktura'
      'AND DTO.PrintOut = 1'
      'Order by DT.SortNo')
    Left = 32
    Top = 528
    object sq_GetInvTextsDocText: TMemoField
      FieldName = 'DocText'
      BlobType = ftMemo
    end
  end
  object sq_GetClientInvTexts: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select DT.DocText FROM'
      'dbo.DocumentTextClient DT '
      
        'Inner Join dbo.DocTypeOrderClient DTO on DTO.ClientNo = DT.Clien' +
        'tNo'
      'AND DTO.DocTextNo =DT.DocTextNo'
      ''
      'WHERE '
      ' DT.ClientNo = :ClientNo'
      'AND DTO.DocType = 2 -- Faktura'
      '-- AND DTO.PrintOut = 1'
      'Order by DT.SortNo')
    Left = 240
    Top = 488
    object sq_GetClientInvTextsDocText: TMemoField
      FieldName = 'DocText'
      BlobType = ftMemo
    end
  end
end
