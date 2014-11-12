object dmVidaInvoice: TdmVidaInvoice
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 66
  Top = 35
  Height = 715
  Width = 1229
  object sq_InvoiceHead: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 32
    Top = 16
    object sq_InvoiceHeadInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvoiceHeadInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadInvoiceDate: TSQLTimeStampField
      FieldName = 'InvoiceDate'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadAgentNo: TIntegerField
      FieldName = 'AgentNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadAgentCommission: TFloatField
      FieldName = 'AgentCommission'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadSendInvoiceToAgent: TIntegerField
      FieldName = 'SendInvoiceToAgent'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadCommissionPaidByCustomer: TIntegerField
      FieldName = 'CommissionPaidByCustomer'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadStatus: TIntegerField
      FieldName = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadNote: TMemoField
      FieldName = 'Note'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_InvoiceHeadInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_InvoiceHeadPaymentText: TMemoField
      FieldName = 'PaymentText'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_InvoiceHeadCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadIncome_Account: TStringField
      FieldName = 'Income_Account'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sq_InvoiceHeadCustomerRecivablesAccount: TStringField
      FieldName = 'CustomerRecivablesAccount'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sq_InvoiceHeadVAT_OnInvoice: TIntegerField
      FieldName = 'VAT_OnInvoice'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadClientBillingAddressNo: TIntegerField
      FieldName = 'ClientBillingAddressNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadAddressLine1: TStringField
      FieldName = 'AddressLine1'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceHeadAddressLine2: TStringField
      FieldName = 'AddressLine2'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceHeadAddressLine3: TStringField
      FieldName = 'AddressLine3'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceHeadAddressLine4: TStringField
      FieldName = 'AddressLine4'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceHeadStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceHeadPostalCode: TStringField
      FieldName = 'PostalCode'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadCityName: TStringField
      FieldName = 'CityName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_InvoiceHeadCountryName: TStringField
      FieldName = 'CountryName'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_InvoiceHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadAgentName: TStringField
      FieldName = 'AgentName'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sq_InvoiceHeadCustomerName: TStringField
      FieldName = 'CustomerName'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sq_InvoiceHeadDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      ProviderFlags = [pfInUpdate]
      Size = 21
    end
    object sq_InvoiceHeadPaymentDescription: TStringField
      FieldName = 'PaymentDescription'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sq_InvoiceHeadLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadDestination: TStringField
      FieldName = 'Destination'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_InvoiceHeadFreightInDiscount: TIntegerField
      FieldName = 'FreightInDiscount'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadFreightInCommission: TIntegerField
      FieldName = 'FreightInCommission'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadDiscount1: TFloatField
      FieldName = 'Discount1'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadCurrencyName: TStringField
      FieldName = 'CurrencyName'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sq_InvoiceHeadAddressName: TStringField
      FieldName = 'AddressName'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sq_InvoiceHeadST_AddressName: TStringField
      FieldName = 'ST_AddressName'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sq_InvoiceHeadST_AddressLine1: TStringField
      FieldName = 'ST_AddressLine1'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceHeadST_AddressLine2: TStringField
      FieldName = 'ST_AddressLine2'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceHeadST_AddressLine3: TStringField
      FieldName = 'ST_AddressLine3'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceHeadST_AddressLine4: TStringField
      FieldName = 'ST_AddressLine4'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceHeadST_StateOrProvince: TStringField
      FieldName = 'ST_StateOrProvince'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceHeadST_PostalCode: TStringField
      FieldName = 'ST_PostalCode'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadST_CityName: TStringField
      FieldName = 'ST_CityName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_InvoiceHeadST_CountryName: TStringField
      FieldName = 'ST_CountryName'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_InvoiceHeadAGENT_ADDRESS_NAME: TStringField
      FieldName = 'AGENT_ADDRESS_NAME'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sq_InvoiceHeadAGENT_SHIPTO_ADDRESSLINE1: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE1'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceHeadAGENT_SHIPTO_ADDRESSLINE2: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE2'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceHeadAGENT_SHIPTO_ADDRESSLINE3: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE3'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceHeadAGENT_SHIPTO_ADDRESSLINE4: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE4'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceHeadAGENT_SHIPTO_PROVINCE: TStringField
      FieldName = 'AGENT_SHIPTO_PROVINCE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceHeadAGENT_SHIPTO_POSTALCODE: TStringField
      FieldName = 'AGENT_SHIPTO_POSTALCODE'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadAGENT_SHIPTO_CITY: TStringField
      FieldName = 'AGENT_SHIPTO_CITY'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_InvoiceHeadAGENT_SHIPTO_COUNTRY: TStringField
      FieldName = 'AGENT_SHIPTO_COUNTRY'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_InvoiceHeadSearchName: TStringField
      FieldName = 'SearchName'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sq_InvoiceHeadTot_Inv_Inc_Freight_Extras: TFloatField
      FieldName = 'Tot_Inv_Inc_Freight_Extras'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadSUM_FreigthCost: TFloatField
      FieldName = 'SUM_FreigthCost'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadTotal_Product_Value_No_Freight: TFloatField
      FieldName = 'Total_Product_Value_No_Freight'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadDiscount: TFloatField
      FieldName = 'Discount'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadCommission: TFloatField
      FieldName = 'Commission'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadCommission_and_Discount: TFloatField
      FieldName = 'Commission_and_Discount'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadInv_Value_Deduct_Com_Dis: TFloatField
      FieldName = 'Inv_Value_Deduct_Com_Dis'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadVAT_Value: TFloatField
      FieldName = 'VAT_Value'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadInv_Value_To_Be_Paid: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadDebit_Credit: TIntegerField
      FieldName = 'Debit_Credit'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadInv_Value_After_Deduct_DIS_COMM: TFloatField
      FieldName = 'Inv_Value_After_Deduct_DIS_COMM'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadVAT: TStringField
      FieldName = 'VAT'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadInv_Value_To_Be_Paid_2: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid_2'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadQuickInvoice: TIntegerField
      FieldName = 'QuickInvoice'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadStickyNote: TStringField
      FieldName = 'StickyNote'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sq_InvoiceHeadSalesOrgNo: TStringField
      FieldName = 'SalesOrgNo'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sq_InvoiceHeadTrading: TIntegerField
      FieldName = 'Trading'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadResponsibleSeller: TIntegerField
      FieldName = 'ResponsibleSeller'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceHeadDestinationText: TStringField
      FieldName = 'DestinationText'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sq_InvoiceHeadIncludeFreightCostInPrice: TIntegerField
      FieldName = 'IncludeFreightCostInPrice'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspInvoiceHead: TDataSetProvider
    DataSet = sq_InvoiceHead
    UpdateMode = upWhereChanged
    Left = 32
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
      end
      item
        Name = 'Trading'
        DataType = ftInteger
      end
      item
        Name = 'ResponsibleSeller'
        DataType = ftInteger
      end
      item
        Name = 'DestinationText'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'IncludeFreightCostInPrice'
        DataType = ftInteger
      end
      item
        Name = 'SpecLoadNo'
        DataType = ftInteger
      end
      item
        Name = 'PIPNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspInvoiceHead'
    StoreDefs = True
    AfterInsert = cdsInvoiceHeadAfterInsert
    OnReconcileError = cdsInvoiceHeadReconcileError
    Left = 32
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
      OnChange = cdsInvoiceHeadSupplierNoChange
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
    object cdsInvoiceHeadTrading: TIntegerField
      FieldName = 'Trading'
    end
    object cdsInvoiceHeadResponsibleSeller: TIntegerField
      FieldName = 'ResponsibleSeller'
      OnChange = cdsInvoiceHeadResponsibleSellerChange
    end
    object cdsInvoiceHeadSR: TStringField
      FieldKind = fkLookup
      FieldName = 'SR'
      LookupDataSet = dmsContact.cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SupplierNo'
      Size = 80
      Lookup = True
    end
    object cdsInvoiceHeadDestinationText: TStringField
      FieldName = 'DestinationText'
      Size = 255
    end
    object cdsInvoiceHeadIncludeFreightCostInPrice: TIntegerField
      FieldName = 'IncludeFreightCostInPrice'
    end
  end
  object dsrcInvoiceHead: TDataSource
    DataSet = cdsInvoiceHead
    Left = 32
    Top = 160
  end
  object sq_GetInvoiceHeadData: TSQLQuery
    MaxBlobSize = -1
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
      'OH.OrderNo,'
      'OH.Trading,'
      'OH.ResponsibleSeller,'
      'OH.DestinationText'
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
      ''
      ' '
      ' '
      ' '
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 32
    Top = 208
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
    object sq_GetInvoiceHeadDataTrading: TIntegerField
      FieldName = 'Trading'
    end
    object sq_GetInvoiceHeadDataResponsibleSeller: TIntegerField
      FieldName = 'ResponsibleSeller'
    end
    object sq_GetInvoiceHeadDataDestinationText: TStringField
      FieldName = 'DestinationText'
      Size = 255
    end
  end
  object sq_InvoiceLO: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 120
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
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceLOReference: TStringField
      FieldName = 'Reference'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_InvoiceLOOurReference: TStringField
      FieldName = 'OurReference'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_InvoiceLOSalesMan: TStringField
      FieldName = 'SalesMan'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_InvoiceLOBookingNo: TIntegerField
      FieldName = 'BookingNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceLOTotalFreightCost: TFloatField
      FieldName = 'TotalFreightCost'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceLOFreightCostPerUnit: TFloatField
      FieldName = 'FreightCostPerUnit'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceLOInvoiceAdditionAmount: TFloatField
      FieldName = 'InvoiceAdditionAmount'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceLOInvoiceAdditionUnitNo: TIntegerField
      FieldName = 'InvoiceAdditionUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceLOInvoiceAdditionDescription: TStringField
      FieldName = 'InvoiceAdditionDescription'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_InvoiceLOCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceLOModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceLODateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceLOShipper: TStringField
      FieldName = 'Shipper'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sq_InvoiceLOCarrierName: TStringField
      FieldName = 'CarrierName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_InvoiceLOETD: TSQLTimeStampField
      FieldName = 'ETD'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceLOETA: TSQLTimeStampField
      FieldName = 'ETA'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceLOTrpID: TStringField
      FieldName = 'TrpID'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object dspInvoiceLO: TDataSetProvider
    DataSet = sq_InvoiceLO
    UpdateMode = upWhereChanged
    Left = 120
    Top = 64
  end
  object cdsInvoiceLO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInvoiceLO'
    OnReconcileError = cdsInvoiceLOReconcileError
    Left = 120
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
    Left = 120
    Top = 160
  end
  object sq_GetLOData: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 120
    Top = 208
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
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 208
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
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailLoadID: TStringField
      FieldName = 'LoadID'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_InvoiceDetailOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailReference: TStringField
      FieldName = 'Reference'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_InvoiceDetailProductDescription: TStringField
      FieldName = 'ProductDescription'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sq_InvoiceDetailProductNo: TIntegerField
      FieldName = 'ProductNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailLengthDescription: TStringField
      FieldName = 'LengthDescription'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sq_InvoiceDetailProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailPrice: TFloatField
      FieldName = 'Price'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailVolumeUnit: TStringField
      FieldName = 'VolumeUnit'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sq_InvoiceDetailPriceUnit: TStringField
      FieldName = 'PriceUnit'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sq_InvoiceDetailProductValue: TFloatField
      FieldName = 'ProductValue'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailVolume_OrderUnit: TFloatField
      FieldName = 'Volume_OrderUnit'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailNominalThicknessINCH: TFloatField
      FieldName = 'NominalThicknessINCH'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailNominalWidthINCH: TFloatField
      FieldName = 'NominalWidthINCH'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailActualNetM3: TFloatField
      FieldName = 'ActualNetM3'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailNominalM3: TFloatField
      FieldName = 'NominalM3'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailLinealMeter: TFloatField
      FieldName = 'LinealMeter'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailNoOfPkgs: TIntegerField
      FieldName = 'NoOfPkgs'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvoiceDetailOL_Reference: TStringField
      FieldName = 'OL_Reference'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object dspInvoiceDetail: TDataSetProvider
    DataSet = sq_InvoiceDetail
    UpdateMode = upWhereChanged
    Left = 208
    Top = 56
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
    Left = 208
    Top = 104
    object cdsInvoiceDetailInternalInvoiceNo: TIntegerField
      DisplayLabel = 'IntFaktNo'
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInvoiceDetailShippingPlanNo: TIntegerField
      DisplayLabel = 'LOnr'
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInvoiceDetailInvoiceDetailNo: TIntegerField
      DisplayLabel = 'Radnr'
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
      DisplayLabel = 'Referens'
      FieldName = 'Reference'
      Size = 30
    end
    object cdsInvoiceDetailProductDescription: TStringField
      DisplayLabel = 'Beskrivning'
      FieldName = 'ProductDescription'
      Size = 100
    end
    object cdsInvoiceDetailProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object cdsInvoiceDetailLengthDescription: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthDescription'
      Size = 255
    end
    object cdsInvoiceDetailProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object cdsInvoiceDetailPrice: TFloatField
      DisplayLabel = 'Pris'
      FieldName = 'Price'
      OnChange = cdsInvoiceDetailVolume_OrderUnitChange
    end
    object cdsInvoiceDetailVolumeUnit: TStringField
      DisplayLabel = 'Vol.enhet'
      FieldName = 'VolumeUnit'
      Size = 10
    end
    object cdsInvoiceDetailPriceUnit: TStringField
      DisplayLabel = 'Prisenhet'
      FieldName = 'PriceUnit'
      Size = 10
    end
    object cdsInvoiceDetailProductValue: TFloatField
      DisplayLabel = 'V'#228'rde'
      FieldName = 'ProductValue'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceDetailVolume_OrderUnit: TFloatField
      DisplayLabel = 'Vol./prisenhet'
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
      DisplayLabel = 'AM3'
      FieldName = 'ActualNetM3'
      DisplayFormat = '#.000'
    end
    object cdsInvoiceDetailNominalM3: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'NominalM3'
      DisplayFormat = '#.000'
    end
    object cdsInvoiceDetailLinealMeter: TFloatField
      DisplayLabel = 'AM1'
      FieldName = 'LinealMeter'
      DisplayFormat = '#.000'
    end
    object cdsInvoiceDetailNoOfPieces: TIntegerField
      DisplayLabel = 'Styck'
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
      DisplayLabel = 'Paket'
      FieldName = 'NoOfPkgs'
    end
    object cdsInvoiceDetailOL_Reference: TStringField
      DisplayLabel = 'KR-Referens'
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
    Left = 208
    Top = 152
  end
  object sq_GetInvoiceDetailData: TSQLQuery
    MaxBlobSize = -1
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
      'OL.OrderLineNo'#9#9#9'            AS'#9'ORDERLINENO,'
      'CSD.Reference'#9#9#9'              AS'#9'REFERENCE,'
      ''
      'OL.OrderLineDescription'#9#9'      AS'#9'PRODUCTDESCRIPTION,'
      'CSD.ProductNo'#9#9#9'              AS'#9'PRODUCTNO,'
      'CSD.LengthDescription'#9#9'        AS'#9'LENGTHDESCRIPTION,'
      'CSD.ProductLengthNo'#9#9'          AS'#9'PRODUCTLENGTHNO,'
      'OL.Price'#9#9#9'                  AS'#9'PRICE,'
      'VU.VolumeUnitName'#9#9'            AS'#9'VOLUMEUNIT,'
      'PU.TemplateUnitName'#9#9'          AS'#9'PRICEUNIT,'
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
      '-- M3_NOM.PRODUCTVALUE,'
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
      ''
      
        'INNER JOIN dbo.PackageTypeDetail PTD'#9#9'ON '#9'PTD.PackageTypeNo = LD' +
        '.PackageTypeNo'
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON '#9'CSD.CustShipP' +
        'lanDetailObjectNo = LD.DefaultCustShipObjectNo'
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
      ' '
      ' '
      ' '
      ' '
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 208
    Top = 200
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
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 304
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
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspInvoiceShipTo: TDataSetProvider
    DataSet = sq_InvoiceShipTo
    UpdateMode = upWhereChanged
    Left = 304
    Top = 64
  end
  object cdsInvoiceShipTo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInvoiceShipTo'
    OnReconcileError = cdsInvoiceShipToReconcileError
    Left = 304
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
    Left = 304
    Top = 160
  end
  object sq_InvoiceShipToAddress: TSQLQuery
    DataSource = dsrcInvoiceHead
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 416
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
      ProviderFlags = [pfInUpdate]
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
    UpdateMode = upWhereChanged
    OnGetTableName = dspInvoiceShipToAddressGetTableName
    Left = 416
    Top = 64
  end
  object cdsInvoiceShipToAddress: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInvoiceShipToAddress'
    OnReconcileError = cdsInvoiceShipToAddressReconcileError
    Left = 416
    Top = 112
    object cdsInvoiceShipToAddressReference: TStringField
      DisplayLabel = 'Referens'
      FieldName = 'Reference'
      Size = 30
    end
    object cdsInvoiceShipToAddressAddressName: TStringField
      DisplayLabel = 'Adressnamn'
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
      DisplayLabel = 'Adress'
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
      DisplayLabel = 'LONr'
      FieldName = 'ShippingPlanNo'
    end
    object cdsInvoiceShipToAddressAddressNo: TIntegerField
      FieldName = 'AddressNo'
    end
  end
  object dsInvoiceShipToAddress: TDataSource
    DataSet = cdsInvoiceShipToAddress
    Left = 416
    Top = 160
  end
  object sq_InvoiceNumber: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM InvoiceNumber')
    SQLConnection = dmsConnector.SQLConnection
    Left = 512
    Top = 32
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
    UpdateMode = upWhereChanged
    Left = 512
    Top = 80
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
    Left = 512
    Top = 128
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
    Left = 512
    Top = 176
  end
  object sq_AnyLoadsToInvoice: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 45
    Top = 624
  end
  object sq_DeleteInvoice: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 565
    Top = 584
  end
  object sq_GetFreightCost: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 37
    Top = 577
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
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 144
    Top = 536
  end
  object sq_ProformaInvNo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * '
      'From ProformaInvoiceNumber')
    SQLConnection = dmsConnector.SQLConnection
    Left = 592
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
    UpdateMode = upWhereChanged
    Left = 592
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
    Left = 592
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
  object sqInvoice_Load: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM DBO.Invoiced_Load')
    SQLConnection = dmsConnector.SQLConnection
    Left = 480
    Top = 288
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
    UpdateMode = upWhereChanged
    Left = 480
    Top = 336
  end
  object cdsInvoice_Load: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInvoice_Load'
    OnReconcileError = cdsInvoice_LoadReconcileError
    Left = 480
    Top = 384
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
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 376
    Top = 544
    object sq_GetInvoicedLodsLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object sq_GetInvoicedLodsShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
  end
  object dsProformaInvNo: TDataSource
    DataSet = cdsProformaInvNo
    Left = 592
    Top = 160
  end
  object sq_Invoice_Credited: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from Invoice_Credited'
      'Where InternalInvoiceNo = :InternalInvoiceNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 408
    Top = 264
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
    UpdateMode = upWhereChanged
    Left = 408
    Top = 312
  end
  object cdsInvoice_Credited: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInvoice_Credited'
    OnReconcileError = cdsInvoice_CreditedReconcileError
    Left = 408
    Top = 360
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
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 416
    Top = 208
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
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(InvoiceNo) + 1 AS NEXT_INVNO FROM dbo.InvoiceNumber')
    SQLConnection = dmsConnector.SQLConnection
    Left = 560
    Top = 224
    object sq_GetNextInvoiceNoNEXT_INVNO: TIntegerField
      FieldName = 'NEXT_INVNO'
    end
  end
  object sq_InvoiceGroup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * '
      'From InvoiceGroup')
    SQLConnection = dmsConnector.SQLConnection
    Left = 112
    Top = 296
  end
  object dsp_InvoiceGroup: TDataSetProvider
    DataSet = sq_InvoiceGroup
    Left = 144
    Top = 328
  end
  object cds_InvoiceGroup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InvoiceGroup'
    Left = 144
    Top = 376
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
    Top = 392
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
    Left = 240
    Top = 344
  end
  object sq_InvoiceInGroup: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 240
    Top = 296
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
    MaxBlobSize = -1
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
      'isNull(Vg.ETA,000000)'#9#9#9#9'AS ETA,'
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 336
    Top = 280
  end
  object dsp_BookingData: TDataSetProvider
    DataSet = sq_BookingData
    Left = 336
    Top = 328
  end
  object cdsBookingData: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_BookingData'
    OnReconcileError = cdsBookingDataReconcileError
    Left = 336
    Top = 376
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
    Left = 336
    Top = 424
  end
  object sq_Att_Ext_ServicesII: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 632
    Top = 280
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
    Left = 632
    Top = 328
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
    Left = 633
    Top = 376
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
    Left = 632
    Top = 424
  end
  object sq_Currency: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select *'
      'FROM dbo.Currency')
    SQLConnection = dmsConnector.SQLConnection
    Left = 736
    Top = 32
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
    Left = 736
    Top = 80
  end
  object cds_Currency: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Currency'
    Left = 736
    Top = 128
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
    Left = 736
    Top = 176
  end
  object dsp_PurchaseInvNo: TDataSetProvider
    DataSet = sq_PurchaseInvNo
    Left = 40
    Top = 328
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
    Top = 376
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
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * '
      'From dbo.InvoiceNumber_PO')
    SQLConnection = dmsConnector.SQLConnection
    Left = 40
    Top = 280
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
    Top = 424
  end
  object sq_GetLoadID: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 373
    Top = 592
    object sq_GetLoadIDLoadID: TStringField
      FieldName = 'LoadID'
      Size = 50
    end
  end
  object sq_VolUnit: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from UnitName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 472
    Top = 592
    object sq_VolUnitVolumeUnit_No: TIntegerField
      FieldName = 'VolumeUnit_No'
    end
    object sq_VolUnitVolumeUnitName: TStringField
      FieldName = 'VolumeUnitName'
      Size = 10
    end
  end
  object sq_PriceUnit: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from PackUnit')
    SQLConnection = dmsConnector.SQLConnection
    Left = 472
    Top = 640
    object sq_PriceUnitTemplateUnitNo: TIntegerField
      FieldName = 'TemplateUnitNo'
    end
    object sq_PriceUnitTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
    end
  end
  object sq_InvoiceList: TSQLQuery
    MaxBlobSize = -1
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
      'IH.CustomerNo,'
      
        'spi.SHIPPED_NOMM3 AS NM3, spi.SHIPPED_ACTM3 AS AM3, dpi.KUND_NM3' +
        ', dpi.KONT_UNIT,'
      'SR.ClientName AS F'#246'rs'#228'ljReg,'
      'SalesGroupName AS S'#228'ljGrupp,'
      'IH.InvoiceType'
      'FROM'
      'dbo.InvoiceHeader IH'
      'Inner join dbo.Client SR ON SR.ClientNo = IH.SupplierNo'
      'Left Outer Join dbo.SalesManGroupRow smg'
      
        'Inner Join dbo.SalesManGroup sm on sm.SalesGroupNo = smg.SalesGr' +
        'oupNo'
      'on smg.UserID = IH.ResponsibleSeller'
      ''
      
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 880
    Top = 32
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
  end
  object dspInvoiceList: TDataSetProvider
    DataSet = sq_InvoiceList
    Left = 880
    Top = 80
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
    Left = 880
    Top = 128
    object cdsInvoiceListINT_INVNO: TIntegerField
      DisplayLabel = 'INTFAKTNR'
      FieldName = 'INT_INVNO'
    end
    object cdsInvoiceListINV_DATE: TSQLTimeStampField
      DisplayLabel = 'FAKTURERAD'
      FieldName = 'INV_DATE'
    end
    object cdsInvoiceListAGENT: TStringField
      FieldName = 'AGENT'
      Size = 80
    end
    object cdsInvoiceListSHIPPER: TStringField
      DisplayLabel = 'SPEDIT'#214'R'
      FieldName = 'SHIPPER'
      Size = 80
    end
    object cdsInvoiceListCUSTOMER: TStringField
      DisplayLabel = 'KUND'
      FieldName = 'CUSTOMER'
      Size = 80
    end
    object cdsInvoiceListLO: TIntegerField
      FieldName = 'LO'
    end
    object cdsInvoiceListINVOICE_NO: TIntegerField
      DisplayLabel = 'FAKTURANR'
      FieldName = 'INVOICE_NO'
    end
    object cdsInvoiceListINVOICE_TYPE: TStringField
      DisplayLabel = 'SERIE'
      FieldName = 'INVOICE_TYPE'
      Size = 23
    end
    object cdsInvoiceListINVOICE_KONTO: TStringField
      DisplayLabel = 'FAKTURAKONTO'
      FieldName = 'INVOICE_KONTO'
      Size = 6
    end
    object cdsInvoiceListTO_BE_PAID: TFloatField
      DisplayLabel = 'BELOPP'
      FieldName = 'TO_BE_PAID'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceListCURRENCY: TStringField
      DisplayLabel = 'VALUTA'
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
      FieldName = 'KUND_NM3'
      DisplayFormat = '#,###,###,###.000'
    end
    object cdsInvoiceListKONT_UNIT: TFloatField
      DisplayLabel = 'KONT.VOLYM'
      FieldName = 'KONT_UNIT'
      DisplayFormat = '#,###,###,###.000'
    end
    object cdsInvoiceListFrsljReg: TStringField
      DisplayLabel = 'F'#214'RS'#196'LJREG'
      FieldName = 'F'#246'rs'#228'ljReg'
      Size = 80
    end
    object cdsInvoiceListSljGrupp: TStringField
      DisplayLabel = 'S'#196'LJGRUPP'
      FieldName = 'S'#228'ljGrupp'
      Size = 15
    end
    object cdsInvoiceListInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
    end
  end
  object dsInvoiceList: TDataSource
    DataSet = cdsInvoiceList
    Left = 880
    Top = 176
  end
  object sq_Invoiced_Load: TSQLQuery
    MaxBlobSize = -1
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
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON '#9'CSD.CustShipP' +
        'lanDetailObjectNo = LD.DefaultCustShipObjectNo'
      
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
      'WHERE ShippingPlanNo = LSP.ShippingPlanNo)')
    SQLConnection = dmsConnector.SQLConnection
    Left = 565
    Top = 456
  end
  object sq_PkgType_Invoice: TSQLQuery
    MaxBlobSize = -1
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
      end
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
      'Insert into dbo.PkgType_Invoice'
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
      'LinealMeterNominalLength,'
      'OrderVolume,'
      'PriceVolume)'
      ''
      'SELECT DISTINCT'
      'LD.PackageTypeNo,'
      'PTD.ProductLengthNo,'
      ':InternalInvoiceNo,'
      'LD.LoadNo,'
      'LD.LoadDetailNo,'
      'PTD.NoOfPieces ,'
      ''
      '-- m3 actual'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) '
      '-- Round Stolp'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces'
      
        '-- SET @m3Act = PI() * SQUARE (@ActThick/100/2) * @ActWidth / 10' +
        '0 * @NoOfPieces'
      'As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3) '
      ''
      'END AS M3Actual,'
      
        '-- PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.ActualWidthM' +
        'M/100) * PTD.NoOfPieces,'
      ''
      '-- M3NOMINAL *****************************************'
      'CASE WHEN PG.SequenceNo = 0 THEN '
      'CASE'
      '-- Random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'END'
      'WHEN PG.SequenceNo = 1 THEN '
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3) '
      'END AS M3NOMINAL,'
      ''
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS MFBMNominal,'
      ''
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS SQMofActualWidth,'
      ''
      'CASE WHEN PG.SequenceNo = 0 THEN PTD.SQMofCoveringWidth'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS SQMofCoveringWidth,'
      ''
      '--**********************************'
      '--**********************************'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3)'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST((PG.ActualWidthMM / 100 * PTD.NoOfPieces)   As decima' +
        'l(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS LinealMeterActualLength,'
      ''
      
        '-- ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal' +
        '(10,3)),3) AS LinealMeterActualLength,'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3)'
      ''
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      'END AS m3ActualSizeNomLength,'
      ''
      
        '-- m3NomSizeActualLength ***************************************' +
        '******'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST('
      '(PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)'
      ' As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS m3NomSizeActualLength,'
      ''
      'PTD.CreatedUser,'
      'PTD.ModifiedUser,'
      'PTD.DateCreated,'
      ''
      '--**********************************'
      '--**********************************'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'CASE '
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000)) As decima' +
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      'END --WHEN PG.SequenceNo = 0 THEN'
      ''
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST((PG.ActualWidthMM / 100 * PTD.NoOfPieces)   As decima' +
        'l(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      '--END'
      ''
      'END AS NM1,'
      ''
      '-- OrderVolume *************************************************'
      '-- OrderVolume *************************************************'
      '-- OrderVolume *************************************************'
      'CASE '
      ''
      '-- M3NOMINAL *****************************************'
      'WHEN VU.VolumeUnitName = '#39'm3 nDxnL'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      '-- Random length'
      'CASE'
      'WHEN PL_CSD.ProductLengthGroupNo > 0  AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      'END'
      '-- M3NOMINAL *****************************************'
      ''
      'WHEN VU.VolumeUnitName = '#39'kvm aB'#39' THEN'
      'CASE'
      
        'WHEN PG.SequenceNo = 0 THEN ROUND(CAST((       PTD.SQMofActualWi' +
        'dth )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN VU.VolumeUnitName = '#39'Lopm a'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      ''
      'WHEN VU.VolumeUnitName = '#39'Stycketal'#39' THEN PTD.NoOfPieces'
      ''
      'WHEN VU.VolumeUnitName = '#39'm3 FDxaL'#39' THEN'
      'CASE'
      ' WHEN PG.SequenceNo = 0 THEN'
      
        ' ROUND(CAST((PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWi' +
        'dthMM *'
      ' PL.ActualLengthMM) / (1000 * 1000 * 1000) As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 1 THEN'
      
        ' ROUND(CAST((pi() * SQUARE(PG.ActualWidthMM/100/2) * (PG.ActualT' +
        'hicknessMM/100) * PTD.NoOfPieces)  As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'WHEN VU.VolumeUnitName = '#39'Lopm n'#39' THEN'
      'CASE'
      'WHEN PG.SequenceNo = 0 THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000)) As decima' +
        'l(10,3)),3)'
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3)'
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3)'
      ''
      'END -- WHEN PG.SequenceNo = 0 THEN'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST((PG.ActualWidthMM / 100 * PTD.NoOfPieces)   As decima' +
        'l(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      ''
      'END --NM1'
      ''
      'WHEN VU.VolumeUnitName = '#39'MFBM Nom'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN VU.VolumeUnitName = '#39'Packages'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN 1'
      'WHEN PG.SequenceNo = 1 THEN 1'
      'WHEN PG.SequenceNo = 2 THEN 1'
      'END'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'WHEN VU.VolumeUnitName = '#39'm3 FDxnL'#39' THEN'
      'CASE'
      'WHEN PG.SequenceNo = 0 THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3)'
      ''
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      'END --AS m3ActualSizeNomLength,'
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      ''
      '-- m3 nDxaL *********************************************'
      ''
      '-- WHEN VU.VolumeUnitName = '#39'm3 nDxaL'#39' THEN'
      '-- CASE WHEN PG.SequenceNo = 1 THEN'
      '-- ROUND(CAST(('
      '-- PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '-- CASE WHEN 0 > 0.05'
      
        '-- THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * ' +
        '1000 * 1000)'
      '--  As decimal(10,3)),3) -- AS m3NomSizeActualLength,'
      '-- WHEN PG.SequenceNo = 1 THEN 0'
      '-- WHEN PG.SequenceNo = 2 THEN 0'
      '-- END'
      '-- m3 nDxaL *********************************************'
      'WHEN VU.VolumeUnitName = '#39'm3 nDxaL'#39' THEN'
      
        'CASE WHEN PG.SequenceNo = 0 THEN ROUND(CAST((PTD.NoOfPieces * OL' +
        '.NominalThicknessMM * OL.NominalWidthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)  As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      ''
      ''
      'END AS OrderVolume,'
      ''
      ''
      '--PriceVolume ********************************************'
      '--PriceVolume ********************************************'
      '--PriceVolume ********************************************'
      'CASE '
      ''
      '-- M3NOMINAL *****************************************'
      'WHEN PU.TemplateUnitName = '#39'm3 nDxnL'#39' THEN'
      'CASE'
      'WHEN PG.SequenceNo = 0 THEN '
      '-- Random length'
      'CASE'
      'WHEN PL_CSD.ProductLengthGroupNo > 0  AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3)'
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      'END--'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      '-- M3NOMINAL *****************************************'
      ''
      'WHEN PU.TemplateUnitName = '#39'kvm aB'#39' THEN '
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END '
      ''
      'WHEN PU.TemplateUnitName = '#39'Lopm a'#39' THEN '
      'CASE WHEN PG.SequenceNo = 0 THEN'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3)'
      
        ' WHEN PG.SequenceNo = 1 THEN ROUND(CAST((PG.ActualWidthMM / 100 ' +
        '* PTD.NoOfPieces)   As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN PU.TemplateUnitName = '#39'Stycketal'#39' THEN PTD.NoOfPieces'
      ''
      'WHEN PU.TemplateUnitName = '#39'm3 FDxaL'#39' THEN '
      'CASE WHEN PG.SequenceNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3)'
      
        ' WHEN PG.SequenceNo = 1 THEN ROUND(CAST(PI() * SQUARE (PG.Actual' +
        'ThicknessMM/100/2) * (PG.ActualWidthMM/100) * PTD.NoOfPieces As ' +
        'decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'WHEN PU.TemplateUnitName = '#39'Lopm n'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'CASE '
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000)) As decima' +
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      
        'WHEN PG.SequenceNo = 1 THEN ROUND(CAST((PG.ActualWidthMM / 100 *' +
        ' PTD.NoOfPieces)   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END '
      'END-- NM1'
      ''
      ''
      ''
      'WHEN PU.TemplateUnitName = '#39'MFBM Nom'#39' THEN '
      
        'CASE WHEN PG.SequenceNo = 0 THEN ROUND(CAST((       PTD.MFBMNomi' +
        'nal )   As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN PU.TemplateUnitName = '#39'Packages'#39' THEN 1'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'WHEN PU.TemplateUnitName = '#39'm3 FDxnL'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 1  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ' '
      'END --AS m3ActualSizeNomLength,'
      ''
      ''
      'WHEN PU.TemplateUnitName = '#39'm3 nDxaL'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0  THEN'
      
        'ROUND(CAST((PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalW' +
        'idthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)'
      ' As decimal(10,3)),3) -- AS m3NomSizeActualLength,'
      'WHEN PG.SequenceNo = 1  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'END AS PriceVolume'
      ''
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.LoadDetail LD'#9#9#9'ON'#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail'#9'PTD ON PTD.PackageTypeNo = LD.P' +
        'ackageTypeNo'
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD2 ON CSD2.CustShip' +
        'PlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      
        'INNER JOIN dbo.OrderLine OL ON OL.OrderLineNo = CSD2.OrderLineNo' +
        ' AND OL.OrderNo = CSD2.OrderNo'
      ''
      
        'Inner JOIN dbo.ProductLength PL_CSD ON PL_CSD.ProductLengthNo = ' +
        'CSD2.ProductLengthNo'
      ''
      
        'INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = OL.Product' +
        'GroupNo'
      'INNER JOIN dbo.UnitName VU ON VU.VolumeUnit_No = OL.VolumeUnitNo'
      'INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitNo'
      ''
      ''
      'WHERE'
      
        'LO.SupplierNo = :SupplierNo AND LO.SenderLoadStatus = 2 AND LO.C' +
        'ustomerNo = :CustomerNo AND LSP.ShippingPlanNo = :ShippingPlanNo'
      ''
      ''
      'AND NOT EXISTS'
      '   (SELECT *'
      '   FROM dbo.Invoiced_Load'
      '   WHERE LoadNo = LSP.LoadNo'
      'AND ShippingPlanNo = LSP.ShippingPlanNo)'
      ''
      'Delete dbo.PkgType_Load'
      'FROM dbo.PkgType_Load'
      
        'Inner Join dbo.PkgType_Invoice ptd on ptd.LoadNo = PkgType_Load.' +
        'LoadNo'
      'WHERE Ptd.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'Insert into dbo.PkgType_Load'
      'Select ptd.PackageTypeNo, ptd.LoadNo, ptd.LoadDetailNo,'
      'SUM(ptd.NoOfPieces),'
      'SUM(ptd.m3Actual),'
      'SUM(ptd.m3Nominal),'
      'SUM(ptd.MFBMNominal),'
      'SUM(ptd.SQMofActualWidth),'
      'SUM(ptd.SQMofCoveringWidth),'
      'SUM(ptd.LinealMeterActualLength),'
      'SUM(ptd.m3ActualSizeNomLength),'
      'SUM(ptd.m3NomSizeActualLength),'
      'SUM(ptd.LinealMeterNominalLength),'
      'SUM(ptd.OrderVolume),'
      'SUM(ptd.PriceVolume)'
      ''
      'FROM dbo.PkgType_Invoice ptd'
      ''
      'WHERE Ptd.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'Group By ptd.PackageTypeNo, ptd.LoadNo, ptd.LoadDetailNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 264
    Top = 536
  end
  object sq_InvDtl_Att: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 544
    Top = 272
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
    UpdateMode = upWhereChanged
    Left = 544
    Top = 320
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
    Left = 544
    Top = 368
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
    Left = 712
    Top = 320
  end
  object sq_AttestRow: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * FROM'
      'dbo.AttestRow')
    SQLConnection = dmsConnector.SQLConnection
    Left = 768
    Top = 256
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
    UpdateMode = upWhereKeyOnly
    Left = 768
    Top = 304
  end
  object cds_AttestRow: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_AttestRow'
    OnReconcileError = cds_AttestRowReconcileError
    Left = 768
    Top = 352
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
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 368
    Top = 640
  end
  object sq_Del_AttestRow: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 472
    Top = 496
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
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 712
    Top = 272
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
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 712
    Top = 368
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
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 568
    Top = 536
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
    Left = 712
    Top = 416
  end
  object sq_InvAttested: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 560
    Top = 632
    object sq_InvAttestedSequensNo: TIntegerField
      FieldName = 'SequensNo'
    end
  end
  object sq_SearchLONo: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 376
    Top = 496
    object sq_SearchLONoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
  end
  object sq_InvoiceHead_II: TSQLQuery
    MaxBlobSize = -1
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
        'W)) )'
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 832
    Top = 280
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
    UpdateMode = upWhereChanged
    Left = 832
    Top = 328
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
    Left = 832
    Top = 376
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
    Left = 832
    Top = 424
  end
  object sq_updInvPkgDtl: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 472
    Top = 544
  end
  object sp_vida_Populate_SamFaktura: TSQLStoredProc
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
        Name = 'InvGroupNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Populate_SamFaktura'
    Left = 144
    Top = 584
  end
  object ds_InvoiceGroup: TDataSource
    DataSet = cds_InvoiceGroup
    Left = 144
    Top = 424
  end
  object sqFWInvNo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * '
      'From InvNo_FW')
    SQLConnection = dmsConnector.SQLConnection
    Left = 664
    Top = 32
    object sqFWInvNoInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object sqFWInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
  end
  object dspFWInvNo: TDataSetProvider
    DataSet = sqFWInvNo
    UpdateMode = upWhereChanged
    Left = 664
    Top = 80
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
    Left = 664
    Top = 128
    object cdsFWInvNoInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object cdsFWInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
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
    Left = 272
    Top = 632
    object sq_SearchLoadNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object sq_SearchLoadNoInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
    end
  end
  object sq_GetInvTexts: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 288
    Top = 488
    object sq_GetInvTextsDocText: TMemoField
      FieldName = 'DocText'
      BlobType = ftMemo
    end
  end
  object sq_GetClientInvTexts: TSQLQuery
    MaxBlobSize = -1
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
      'AND DTO.PrintOut = 1'
      'Order by DT.SortNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 272
    Top = 584
    object sq_GetClientInvTextsDocText: TMemoField
      FieldName = 'DocText'
      BlobType = ftMemo
    end
  end
  object sq_GetPaymentText: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'AddressNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CurrencyNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LanguageCode'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'Select PaymentText FROM dbo.PaymentText PayText, dbo.Address '#9#9'A' +
        'DR'
      'WHERE'
      'FDR.AddressNo = :AddressNo'
      'AND PayText.CurrencyNo = :CurrencyNo'
      'AND     PayText.LanguageCode = :LanguageCode'
      'AND     PayText.CountryNo = FDR.CountryNo'
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 472
    Top = 448
    object sq_GetPaymentTextPaymentText: TMemoField
      FieldName = 'PaymentText'
      BlobType = ftMemo
    end
  end
  object mtInvoiceType: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 40
    Top = 480
    object mtInvoiceTypeInvoiceTypeNo: TIntegerField
      FieldName = 'InvoiceTypeNo'
    end
    object mtInvoiceTypeInvoiceTypeName: TStringField
      FieldName = 'InvoiceTypeName'
      Size = 40
    end
  end
  object dsInvoiceType: TDataSource
    DataSet = mtInvoiceType
    Left = 40
    Top = 528
  end
  object sqUSAInvNo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * '
      'From dbo.InvoiceNo_USA')
    SQLConnection = dmsConnector.SQLConnection
    Left = 808
    Top = 32
    object sqUSAInvNoInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object sqUSAInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
  end
  object dspUSAInvNo: TDataSetProvider
    DataSet = sqUSAInvNo
    UpdateMode = upWhereChanged
    Left = 808
    Top = 80
  end
  object cdsUSAInvNo: TClientDataSet
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
    ProviderName = 'dspUSAInvNo'
    StoreDefs = True
    Left = 808
    Top = 128
    object cdsUSAInvNoInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object cdsUSAInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
  end
  object sq_NoOfInvoices: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT distinct INO.InvoiceNo AS Fakturnr, IL.ShippingPlanNo AS ' +
        'LO, IH.InvoiceDate AS Fakturadatum, IL.InternalInvoiceNo'
      'FROM'
      'dbo.InvoiceLO IL'
      
        'Inner Join dbo.InvoiceHeader IH ON IH.InternalInvoiceNo = IL.Int' +
        'ernalInvoiceNo'
      
        'Inner Join dbo.InvoiceNumber INo ON INo.InternalInvoiceNo = IH.I' +
        'nternalInvoiceNo'
      'WHERE IL.ShippingPlanNo = 54549')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1008
    Top = 472
  end
  object dsp_NoOfInvoices: TDataSetProvider
    DataSet = sq_NoOfInvoices
    Left = 1008
    Top = 520
  end
  object cds_NoOfInvoices: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_NoOfInvoices'
    Left = 1008
    Top = 568
    object cds_NoOfInvoicesFakturnr: TIntegerField
      FieldName = 'Fakturnr'
    end
    object cds_NoOfInvoicesLO: TIntegerField
      FieldName = 'LO'
    end
    object cds_NoOfInvoicesFakturadatum: TSQLTimeStampField
      FieldName = 'Fakturadatum'
    end
    object cds_NoOfInvoicesInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
  end
  object ds_NoOfInvoices: TDataSource
    DataSet = cds_NoOfInvoices
    Left = 1008
    Top = 608
  end
  object sq_DelPkgTypeByIntInv: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete dbo.PkgType_Invoice'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 144
    Top = 632
  end
  object sp_GetNextProformaInvNo: TSQLStoredProc
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
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_GetMaxProformaNo'
    Left = 664
    Top = 224
  end
  object sq_DeletePkgTypeLoad: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete dbo.PkgType_Load'
      'FROM dbo.PkgType_Load '
      
        'Inner Join dbo.PkgType_Invoice ptd on ptd.LoadNo = PkgType_Load.' +
        'LoadNo'
      'WHERE Ptd.InternalInvoiceNo = :InternalInvoiceNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 144
    Top = 488
  end
  object sq_LoadPackages: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      '           LD.LoadNo, '
      '           LD.ShippingPlanNo,'
      '           PR.ProductDisplayName     AS PRODUCT,'
      '           LD.LoadDetailNo,'
      '           LD.PackageNo'#9#9'            AS PACKAGENO,'
      '           LD.NoOfPackages'#9'          ,'
      '           LD.PackageTypeNo'#9'          AS PACKAGETYPENO,'
      '           LD.SupplierCode'#9'          ,'
      '           LD.PackageOK'#9#9'            ,'
      '           LD.ProblemPackageLog'#9'      ,'
      '           LD.CreatedUser,'
      '           LD.ModifiedUser,'
      '           LD.DateCreated,'
      ''
      '           PT.Totalm3Actual           AS  M3_NET,'
      '           PT.TotalNoOfPieces         AS  PCS,'
      '      '#9'   PT.Totalm3Nominal'#9#9'      AS M3_NOM,'
      '           PT.TotalMFBMNominal        AS      MFBM,'
      '      '#9'   PT.TotalSQMofActualWidth'#9'  AS KVM,'
      '      '#9'   PT.TotalLinealMeterActualLength AS LOPM,'
      '           PR.ProductNo,'
      '           LD.DefaultCustShipObjectNo,'
      '           PTL.PcsPerLength           AS PCS_PER_LENGTH,'
      '          (Select Count(*) from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS NoOfL' +
        'engths,'
      ''
      '          (Select TOP 1 PTD.ProductLengthNo from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS Produ' +
        'ctLengthNo,'
      ''
      '          (Select TOP 1 PL.ActualLengthMM from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          Inner Join dbo.ProductLength PL ON PL.ProductLengthNo ' +
        '= PTD.ProductLengthNo'
      '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS ALMM,'
      ''
      ''
      '          PG.ActualThicknessMM,'
      '          PG.ActualWidthMM,'
      '          PG.SurfacingNo,'
      '          PG.SpeciesNo,'
      
        '          G.GradeNo                                     AS MainG' +
        'radeNo,'
      '          LD.OverrideMatch,'
      '          LD.LIPNo,'
      '          0 AS Pkg_State,'
      '          0 AS Pkg_Function,'
      '          0 AS Changed,'
      '          LD.Defsspno,'
      #9'LD.OverrideRL'
      ''
      ''
      'FROM dbo.Invoiced_Load INL'
      'Inner Join dbo.LoadDetail LD on LD.LoadNo = INL.LoadNo'
      
        ' INNER JOIN dbo.PackageType   PT  ON    PT.PackageTypeNo    = LD' +
        '.PackageTypeNo'
      
        ' INNER JOIN dbo.Product       Pr  ON    Pr.ProductNo        = Pt' +
        '.ProductNo'
      
        ' INNER JOIN dbo.ProductGroup  PG  ON    PG.ProductGroupNo   = Pr' +
        '.ProductGroupNo'
      
        ' INNER JOIN dbo.Grade         G   ON    G.GradeNo           = Pr' +
        '.GradeNo'
      '        '#9#9#9#9#9'                       AND g.LanguageCode = 1'
      
        ' Inner Join dbo.PackageTypeLengths PTL  ON PTL.PackageTypeNo  = ' +
        'PT.PackageTypeNo'
      ''
      'WHERE      INL.InternalInvoiceNo = :InternalInvoiceNo '
      ''
      'ORDER BY   LD.LoadDetailNo DESC')
    SQLConnection = dmsConnector.SQLConnection
    Left = 920
    Top = 472
    object sq_LoadPackagesLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadPackagesShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesPRODUCT: TStringField
      FieldName = 'PRODUCT'
      ProviderFlags = []
      Size = 100
    end
    object sq_LoadPackagesPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesNoOfPackages: TIntegerField
      FieldName = 'NoOfPackages'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesSupplierCode: TStringField
      FieldName = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sq_LoadPackagesPackageOK: TWordField
      FieldName = 'PackageOK'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesProblemPackageLog: TStringField
      FieldName = 'ProblemPackageLog'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_LoadPackagesCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesM3_NET: TFloatField
      FieldName = 'M3_NET'
      ProviderFlags = []
    end
    object sq_LoadPackagesPCS: TIntegerField
      FieldName = 'PCS'
      ProviderFlags = []
    end
    object sq_LoadPackagesM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      ProviderFlags = []
    end
    object sq_LoadPackagesMFBM: TFloatField
      FieldName = 'MFBM'
      ProviderFlags = []
    end
    object sq_LoadPackagesKVM: TFloatField
      FieldName = 'KVM'
      ProviderFlags = []
    end
    object sq_LoadPackagesLOPM: TFloatField
      FieldName = 'LOPM'
      ProviderFlags = []
    end
    object sq_LoadPackagesProductNo: TIntegerField
      FieldName = 'ProductNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      ProviderFlags = []
      Size = 255
    end
    object sq_LoadPackagesNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      ProviderFlags = []
    end
    object sq_LoadPackagesProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesALMM: TFloatField
      FieldName = 'ALMM'
      ProviderFlags = []
    end
    object sq_LoadPackagesActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      ProviderFlags = []
    end
    object sq_LoadPackagesActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      ProviderFlags = []
    end
    object sq_LoadPackagesSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesLIPNo: TIntegerField
      FieldName = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesPkg_State: TIntegerField
      FieldName = 'Pkg_State'
      ProviderFlags = []
    end
    object sq_LoadPackagesPkg_Function: TIntegerField
      FieldName = 'Pkg_Function'
      ProviderFlags = []
    end
    object sq_LoadPackagesChanged: TIntegerField
      FieldName = 'Changed'
      ProviderFlags = []
    end
    object sq_LoadPackagesDefsspno: TIntegerField
      FieldName = 'Defsspno'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_LoadPackages: TDataSetProvider
    DataSet = sq_LoadPackages
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dsp_LoadPackagesGetTableName
    Left = 920
    Top = 520
  end
  object cds_LoadPackages: TClientDataSet
    Aggregates = <>
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
        Name = 'ShippingPlanNo'
        DataType = ftInteger
      end
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
        Name = 'NoOfPackages'
        DataType = ftInteger
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PackageOK'
        DataType = ftSmallint
      end
      item
        Name = 'ProblemPackageLog'
        DataType = ftString
        Size = 50
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
        Name = 'MFBM'
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
        Name = 'PCS_PER_LENGTH'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'NoOfLengths'
        DataType = ftInteger
      end
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end
      item
        Name = 'ALMM'
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
        Name = 'SurfacingNo'
        DataType = ftInteger
      end
      item
        Name = 'SpeciesNo'
        DataType = ftInteger
      end
      item
        Name = 'MainGradeNo'
        DataType = ftInteger
      end
      item
        Name = 'OverrideMatch'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'Pkg_State'
        DataType = ftInteger
      end
      item
        Name = 'Pkg_Function'
        DataType = ftInteger
      end
      item
        Name = 'Changed'
        DataType = ftInteger
      end
      item
        Name = 'Defsspno'
        DataType = ftInteger
      end
      item
        Name = 'OverrideRL'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_LoadPackagesIndex1'
        Fields = 'PACKAGENO;SupplierCode'
        Options = [ixUnique]
      end
      item
        Name = 'cds_LoadPackagesIndex2'
        Fields = 'LoadNo;LoadDetailNo'
      end>
    IndexName = 'cds_LoadPackagesIndex1'
    Params = <>
    ProviderName = 'dsp_LoadPackages'
    StoreDefs = True
    OnReconcileError = cds_LoadPackagesReconcileError
    Left = 920
    Top = 568
    object cds_LoadPackagesLoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadPackagesShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesPRODUCT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCT'
      ProviderFlags = []
      Size = 100
    end
    object cds_LoadPackagesPACKAGENO: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PACKAGENO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesNoOfPackages: TIntegerField
      FieldName = 'NoOfPackages'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesSupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cds_LoadPackagesPackageOK: TSmallintField
      DisplayLabel = 'Status'
      FieldName = 'PackageOK'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesProblemPackageLog: TStringField
      DisplayLabel = 'Log'
      FieldName = 'ProblemPackageLog'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_LoadPackagesCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PCS'
      ProviderFlags = []
    end
    object cds_LoadPackagesM3_NOM: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'M3_NOM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesMFBM: TFloatField
      FieldName = 'MFBM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesKVM: TFloatField
      DisplayLabel = 'M2'
      FieldName = 'KVM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesLOPM: TFloatField
      DisplayLabel = 'M1'
      FieldName = 'LOPM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesProductNo: TIntegerField
      FieldName = 'ProductNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesDefaultCustShipObjectNo: TIntegerField
      DisplayLabel = 'DefaultObjectNo'
      FieldName = 'DefaultCustShipObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesPCS_PER_LENGTH: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'PCS_PER_LENGTH'
      ProviderFlags = []
      Size = 255
    end
    object cds_LoadPackagesNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      ProviderFlags = []
    end
    object cds_LoadPackagesProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesALMM: TFloatField
      DisplayLabel = 'F'#246'rstal'#228'ngd'
      FieldName = 'ALMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesOverrideMatch: TIntegerField
      DisplayLabel = 'Manuell koppling'
      FieldName = 'OverrideMatch'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesLIPNo: TIntegerField
      FieldName = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesPkg_State: TIntegerField
      FieldName = 'Pkg_State'
      ProviderFlags = []
    end
    object cds_LoadPackagesPkg_Function: TIntegerField
      DisplayLabel = #197'tg'#228'rd'
      FieldName = 'Pkg_Function'
      ProviderFlags = []
    end
    object cds_LoadPackagesChanged: TIntegerField
      FieldName = 'Changed'
      ProviderFlags = []
    end
    object cds_LoadPackagesDefsspno: TIntegerField
      FieldName = 'Defsspno'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesOverrideRL: TIntegerField
      DisplayLabel = 'Till'#229't alla l'#228'ngder'
      FieldName = 'OverrideRL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_LoadPackages2: TDataSource
    DataSet = cds_LoadPackages
    Left = 920
    Top = 616
  end
  object sq_CopyLSP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT LSP.*'
      ''
      ''
      'FROM dbo.LoadShippingPlan LSP'
      ''
      'WHERE'
      'LSP.LoadNo = :LoadNo'
      ''
      ''
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 656
    Top = 480
    object sq_CopyLSPLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_CopyLSPShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_CopyLSPConfirmedByReciever: TIntegerField
      FieldName = 'ConfirmedByReciever'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLSPConfirmedBySupplier: TIntegerField
      FieldName = 'ConfirmedBySupplier'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLSPCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLSPModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLSPDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLSPInvoiced: TIntegerField
      FieldName = 'Invoiced'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLSPLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLSPShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_CopyLSP: TDataSetProvider
    DataSet = sq_CopyLSP
    UpdateMode = upWhereKeyOnly
    Left = 656
    Top = 536
  end
  object cds_CopyLSP: TClientDataSet
    Aggregates = <>
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
        Name = 'ConfirmedByReciever'
        DataType = ftInteger
      end
      item
        Name = 'ConfirmedBySupplier'
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
        Name = 'Invoiced'
        DataType = ftInteger
      end
      item
        Name = 'LoadingLocationNo'
        DataType = ftInteger
      end
      item
        Name = 'ShipToInvPointNo'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_LSPIndex1'
        Fields = 'ShippingPlanNo'
      end>
    IndexName = 'cds_LSPIndex1'
    Params = <>
    ProviderName = 'dsp_CopyLSP'
    StoreDefs = True
    Left = 656
    Top = 584
    object cds_CopyLSPLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object cds_CopyLSPShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object cds_CopyLSPConfirmedByReciever: TIntegerField
      FieldName = 'ConfirmedByReciever'
    end
    object cds_CopyLSPConfirmedBySupplier: TIntegerField
      FieldName = 'ConfirmedBySupplier'
    end
    object cds_CopyLSPCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_CopyLSPModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_CopyLSPDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_CopyLSPInvoiced: TIntegerField
      FieldName = 'Invoiced'
    end
    object cds_CopyLSPLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
    end
    object cds_CopyLSPShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
    end
  end
  object sq_CopyLD: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT LD.*'
      ''
      'FROM dbo.LoadDetail LD'
      'WHERE      LD.LoadNo = :LoadNo'
      ''
      ''
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 728
    Top = 480
    object sq_CopyLDLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_CopyLDLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_CopyLDShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLDPackageNo: TIntegerField
      FieldName = 'PackageNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLDNoOfPackages: TIntegerField
      FieldName = 'NoOfPackages'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLDPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLDSupplierCode: TStringField
      FieldName = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sq_CopyLDPackageOK: TIntegerField
      FieldName = 'PackageOK'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLDProblemPackageLog: TStringField
      FieldName = 'ProblemPackageLog'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_CopyLDCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLDModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLDDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLDDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLDOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLDLIPNo: TIntegerField
      FieldName = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLDDefsspno: TIntegerField
      FieldName = 'Defsspno'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CopyLDOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_CopyLD: TDataSetProvider
    DataSet = sq_CopyLD
    UpdateMode = upWhereKeyOnly
    Left = 728
    Top = 536
  end
  object cds_CopyLD: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'LoadDetailNo'
        DataType = ftInteger
      end
      item
        Name = 'LoadNo'
        DataType = ftInteger
      end
      item
        Name = 'ShippingPlanNo'
        DataType = ftInteger
      end
      item
        Name = 'PackageNo'
        DataType = ftInteger
      end
      item
        Name = 'NoOfPackages'
        DataType = ftInteger
      end
      item
        Name = 'PackageTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PackageOK'
        DataType = ftInteger
      end
      item
        Name = 'ProblemPackageLog'
        DataType = ftString
        Size = 50
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
        Name = 'DefaultCustShipObjectNo'
        DataType = ftInteger
      end
      item
        Name = 'OverrideMatch'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'Defsspno'
        DataType = ftInteger
      end
      item
        Name = 'OverrideRL'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_LoadPackagesIndex1'
        Fields = 'PACKAGENO;SupplierCode'
        Options = [ixUnique]
      end
      item
        Name = 'cds_LoadPackagesIndex2'
        Fields = 'LoadNo;LoadDetailNo'
      end>
    IndexName = 'cds_LoadPackagesIndex1'
    Params = <>
    ProviderName = 'dsp_CopyLD'
    StoreDefs = True
    Left = 728
    Top = 592
    object cds_CopyLDLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
    end
    object cds_CopyLDLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object cds_CopyLDShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object cds_CopyLDPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object cds_CopyLDNoOfPackages: TIntegerField
      FieldName = 'NoOfPackages'
    end
    object cds_CopyLDPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object cds_CopyLDSupplierCode: TStringField
      FieldName = 'SupplierCode'
      FixedChar = True
      Size = 3
    end
    object cds_CopyLDPackageOK: TIntegerField
      FieldName = 'PackageOK'
    end
    object cds_CopyLDProblemPackageLog: TStringField
      FieldName = 'ProblemPackageLog'
      Size = 50
    end
    object cds_CopyLDCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_CopyLDModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_CopyLDDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_CopyLDDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
    end
    object cds_CopyLDOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
    end
    object cds_CopyLDLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object cds_CopyLDDefsspno: TIntegerField
      FieldName = 'Defsspno'
    end
    object cds_CopyLDOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
    end
  end
  object sq_LoadHead: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select *'
      'FROM dbo.Loads'
      'Where LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 824
    Top = 480
    object sq_LoadHeadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLoadID: TStringField
      FieldName = 'LoadID'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_LoadHeadMsgToShipper: TMemoField
      FieldName = 'MsgToShipper'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_LoadHeadInternalNote: TMemoField
      FieldName = 'InternalNote'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_LoadHeadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadFS: TStringField
      FieldName = 'FS'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadOriginalSupplierNo: TIntegerField
      FieldName = 'OriginalSupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadNotering: TMemoField
      FieldName = 'Notering'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_LoadHeadLoadOK: TIntegerField
      FieldName = 'LoadOK'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLoadAR: TIntegerField
      FieldName = 'LoadAR'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_LoadHead: TDataSetProvider
    DataSet = sq_LoadHead
    UpdateMode = upWhereChanged
    Left = 824
    Top = 536
  end
  object cds_LoadHead: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LoadHead'
    Left = 824
    Top = 592
    object cds_LoadHeadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object cds_LoadHeadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      Required = True
    end
    object cds_LoadHeadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
      Required = True
    end
    object cds_LoadHeadLoadID: TStringField
      FieldName = 'LoadID'
      Size = 50
    end
    object cds_LoadHeadMsgToShipper: TMemoField
      FieldName = 'MsgToShipper'
      BlobType = ftMemo
    end
    object cds_LoadHeadInternalNote: TMemoField
      FieldName = 'InternalNote'
      BlobType = ftMemo
    end
    object cds_LoadHeadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
    end
    object cds_LoadHeadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
    end
    object cds_LoadHeadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
    end
    object cds_LoadHeadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
    end
    object cds_LoadHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_LoadHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_LoadHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_LoadHeadFS: TStringField
      FieldName = 'FS'
    end
    object cds_LoadHeadOriginalSupplierNo: TIntegerField
      FieldName = 'OriginalSupplierNo'
    end
    object cds_LoadHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object cds_LoadHeadNotering: TMemoField
      FieldName = 'Notering'
      BlobType = ftMemo
    end
    object cds_LoadHeadLoadOK: TIntegerField
      FieldName = 'LoadOK'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadLoadAR: TIntegerField
      FieldName = 'LoadAR'
    end
  end
  object sq_GetNextLDNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(LD.LoadDetailNo) + 1 AS NextLDNo'
      ''
      'FROM dbo.LoadDetail LD'
      'WHERE      LD.LoadNo = :LoadNo'
      ''
      ''
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 728
    Top = 640
    object sq_GetNextLDNoNextLDNo: TIntegerField
      FieldName = 'NextLDNo'
    end
  end
  object sq_CheckLoadNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select *'
      'FROM dbo.Loads'
      'Where LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 824
    Top = 640
    object sq_CheckLoadNoLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
  end
  object sq_CopyLSPByLoNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT LSP.*'
      ''
      ''
      'FROM dbo.LoadShippingPlan LSP'
      ''
      'WHERE'
      'LSP.LoadNo = :LoadNo'
      'AND LSP.ShippingPlanNo = :ShippingPlanNo'
      ''
      ''
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 656
    Top = 632
    object sq_CopyLSPByLoNoLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object sq_CopyLSPByLoNoShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object sq_CopyLSPByLoNoConfirmedByReciever: TIntegerField
      FieldName = 'ConfirmedByReciever'
    end
    object sq_CopyLSPByLoNoConfirmedBySupplier: TIntegerField
      FieldName = 'ConfirmedBySupplier'
    end
    object sq_CopyLSPByLoNoCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_CopyLSPByLoNoModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_CopyLSPByLoNoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_CopyLSPByLoNoInvoiced: TIntegerField
      FieldName = 'Invoiced'
    end
    object sq_CopyLSPByLoNoLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
    end
    object sq_CopyLSPByLoNoShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
    end
  end
  object sq_IH_SpecLoad: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.IH_SpecLoad'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 968
    Top = 8
    object sq_IH_SpecLoadInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_IH_SpecLoadPIPNo: TIntegerField
      FieldName = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IH_SpecLoadLIPNo: TIntegerField
      FieldName = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IH_SpecLoadSpecLoadNo: TIntegerField
      FieldName = 'SpecLoadNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_IH_SpecLoad: TDataSetProvider
    DataSet = sq_IH_SpecLoad
    Left = 968
    Top = 56
  end
  object cds_IH_SpecLoad: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_IH_SpecLoad'
    AfterInsert = cds_IH_SpecLoadAfterInsert
    Left = 968
    Top = 104
    object cds_IH_SpecLoadInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object cds_IH_SpecLoadPIPNo: TIntegerField
      FieldName = 'PIPNo'
      OnChange = cds_IH_SpecLoadPIPNoChange
    end
    object cds_IH_SpecLoadLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object cds_IH_SpecLoadSpecLoadNo: TIntegerField
      FieldName = 'SpecLoadNo'
    end
    object cds_IH_SpecLoadPIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PIPNAME'
      LookupDataSet = cds_PIP
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object cds_IH_SpecLoadLIPName: TStringField
      FieldKind = fkLookup
      FieldName = 'LIPName'
      LookupDataSet = cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
  end
  object ds_IH_SpecLoad: TDataSource
    DataSet = cds_IH_SpecLoad
    Left = 968
    Top = 152
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
      'Inner Join dbo.CITY CY ON CY.CITYNO = PH.PhyInvPointNameNo'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND CY.CITYNAME <> '#39'Transfer'#39
      'AND PH.SequenceNo = 1'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 904
    Top = 257
  end
  object sq_LIP: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT  Distinct LIP.LogicalInventoryPointNo AS LIPNo, LIP.Logic' +
        'alInventoryName AS LIPName,'
      'LIP.PhysicalInventoryPointNo AS PIPNo'
      'FROM dbo.LOGICALINVENTORYPOINT LIP'
      'WHERE SequenceNo = 1')
    SQLConnection = dmsConnector.SQLConnection
    Left = 944
    Top = 257
  end
  object dsp_PIP: TDataSetProvider
    DataSet = sq_PIP
    Left = 904
    Top = 304
  end
  object dsp_LIP: TDataSetProvider
    DataSet = sq_LIP
    Left = 944
    Top = 304
  end
  object cds_PIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PIP'
    Left = 904
    Top = 352
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
    Left = 944
    Top = 352
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
    Left = 904
    Top = 400
  end
  object ds_LIP: TDataSource
    DataSet = cds_LIP
    Left = 944
    Top = 400
  end
  object sp_RemPkgFromLoad: TSQLStoredProc
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
      end
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Operation'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vis_remLoadPkg'
    Left = 808
    Top = 200
  end
  object sq_LONoInInvoice: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct LD.ShippingPlanNo'
      'FROM dbo.Invoiced_Load INL'
      'Inner Join dbo.LoadDetail LD on LD.LoadNo = INL.LoadNo'
      'WHERE      INL.InternalInvoiceNo = :InternalInvoiceNo'
      'ORDER BY   LD.ShippingPlanNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 240
    Top = 448
    object sq_LONoInInvoiceShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
  end
  object sq_PkgType_Inv: TSQLQuery
    MaxBlobSize = -1
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
      end
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
      'Insert into dbo.PkgType_Invoice'
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
      'LinealMeterNominalLength,'
      'OrderVolume,'
      'PriceVolume)'
      ''
      'SELECT DISTINCT'
      'LD.PackageTypeNo,'
      'PTD.ProductLengthNo,'
      ':InternalInvoiceNo,'
      'LD.LoadNo,'
      'LD.LoadDetailNo,'
      'PTD.NoOfPieces ,'
      ''
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) AS M3Actual,'
      ''
      '-- M3NOMINAL *****************************************'
      'CASE'
      '-- Random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      'END'
      'AS M3NOMINAL,'
      ''
      
        'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3) AS M' +
        'FBMNominal,'
      
        'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)' +
        ' AS SQMofActualWidth,'
      'PTD.SQMofCoveringWidth,'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3) AS LinealMeterActualLength,'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3) '
      ''
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'END AS m3ActualSizeNomLength,'
      ''
      
        '-- m3NomSizeActualLength ***************************************' +
        '******'
      'ROUND(CAST('
      '(PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)'
      ' As decimal(10,3)),3) AS m3NomSizeActualLength,'
      ''
      'PTD.CreatedUser,'
      'PTD.ModifiedUser,'
      'PTD.DateCreated,'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'CASE '
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000)) As decima' +
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      'END AS NM1,'
      ''
      '-- OrderVolume *************************************************'
      'CASE '
      ''
      '-- M3NOMINAL *****************************************'
      'WHEN VU.VolumeUnitName = '#39'm3 nDxnL'#39' THEN'
      '-- Random length'
      'CASE'
      'WHEN PL_CSD.ProductLengthGroupNo > 0  AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      'END'
      ''
      ''
      
        'WHEN VU.VolumeUnitName = '#39'kvm aB'#39' THEN ROUND(CAST((       PTD.SQ' +
        'MofActualWidth )   As decimal(10,3)),3)'
      
        'WHEN VU.VolumeUnitName = '#39'Lopm a'#39' THEN ROUND(CAST((       PTD.Li' +
        'nealMeterActualLength )   As decimal(10,3)),3)'
      'WHEN VU.VolumeUnitName = '#39'Stycketal'#39' THEN PTD.NoOfPieces'
      'WHEN VU.VolumeUnitName = '#39'm3 FDxaL'#39' THEN ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      ' PL.ActualLengthMM) / (1000 * 1000 * 1000) As decimal(10,3)),3)'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'WHEN VU.VolumeUnitName = '#39'Lopm n'#39' THEN'
      'CASE '
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000)) As decima' +
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      'END-- NM1'
      ''
      
        'WHEN VU.VolumeUnitName = '#39'MFBM Nom'#39' THEN ROUND(CAST((       PTD.' +
        'MFBMNominal )   As decimal(10,3)),3)'
      'WHEN VU.VolumeUnitName = '#39'Packages'#39' THEN 1 '
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'WHEN VU.VolumeUnitName = '#39'm3 FDxnL'#39' THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3) '
      ''
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'END --AS m3ActualSizeNomLength,'
      ''
      'WHEN VU.VolumeUnitName = '#39'm3 nDxaL'#39' THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) -- AS m3NomSizeActualLength,'
      ''
      'END AS OrderVolume,'
      ''
      '--PriceVolume ********************************************'
      'CASE '
      ''
      '-- M3NOMINAL *****************************************'
      'WHEN PU.TemplateUnitName = '#39'm3 nDxnL'#39' THEN'
      '-- Random length'
      'CASE'
      'WHEN PL_CSD.ProductLengthGroupNo > 0  AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3)'
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      'END'
      ''
      ''
      
        'WHEN PU.TemplateUnitName = '#39'kvm aB'#39' THEN ROUND(CAST((       PTD.' +
        'SQMofActualWidth )   As decimal(10,3)),3)'
      
        'WHEN PU.TemplateUnitName = '#39'Lopm a'#39' THEN ROUND(CAST((       PTD.' +
        'LinealMeterActualLength )   As decimal(10,3)),3)'
      'WHEN PU.TemplateUnitName = '#39'Stycketal'#39' THEN PTD.NoOfPieces'
      'WHEN PU.TemplateUnitName = '#39'm3 FDxaL'#39' THEN ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'WHEN PU.TemplateUnitName = '#39'Lopm n'#39' THEN'
      'CASE '
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000)) As decima' +
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      'END-- NM1'
      ''
      ''
      
        'WHEN PU.TemplateUnitName = '#39'MFBM Nom'#39' THEN ROUND(CAST((       PT' +
        'D.MFBMNominal )   As decimal(10,3)),3)'
      'WHEN PU.TemplateUnitName = '#39'Packages'#39' THEN 1'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'WHEN PU.TemplateUnitName = '#39'm3 FDxnL'#39' THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'END --AS m3ActualSizeNomLength,'
      ''
      ''
      'WHEN PU.TemplateUnitName = '#39'm3 nDxaL'#39' THEN'
      
        'ROUND(CAST((PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalW' +
        'idthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)'
      ' As decimal(10,3)),3) -- AS m3NomSizeActualLength,'
      'END AS PriceVolume'
      ''
      ''
      'FROM dbo.Invoiced_Load INL'
      'INNER JOIN dbo.Loads LO ON LO.LoadNo = INL.LoadNo'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.LoadDetail LD'#9#9#9'ON'#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail'#9'PTD ON PTD.PackageTypeNo = LD.P' +
        'ackageTypeNo'
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD2 ON CSD2.CustShip' +
        'PlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      
        'INNER JOIN dbo.OrderLine OL ON OL.OrderLineNo = CSD2.OrderLineNo' +
        ' AND OL.OrderNo = CSD2.OrderNo'
      ''
      
        'Inner JOIN dbo.ProductLength PL_CSD ON PL_CSD.ProductLengthNo = ' +
        'CSD2.ProductLengthNo'
      ''
      
        'INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = OL.Product' +
        'GroupNo'
      'INNER JOIN dbo.UnitName VU ON VU.VolumeUnit_No = OL.VolumeUnitNo'
      'INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitNo'
      'WHERE'
      'INL.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      ''
      'Delete dbo.PkgType_Load'
      'FROM dbo.PkgType_Load'
      
        'Inner Join dbo.PkgType_Invoice ptd on ptd.LoadNo = PkgType_Load.' +
        'LoadNo'
      'WHERE Ptd.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'Insert into dbo.PkgType_Load'
      'Select ptd.PackageTypeNo, ptd.LoadNo, ptd.LoadDetailNo,'
      'SUM(ptd.NoOfPieces),'
      'SUM(ptd.m3Actual),'
      'SUM(ptd.m3Nominal),'
      'SUM(ptd.MFBMNominal),'
      'SUM(ptd.SQMofActualWidth),'
      'SUM(ptd.SQMofCoveringWidth),'
      'SUM(ptd.LinealMeterActualLength),'
      'SUM(ptd.m3ActualSizeNomLength),'
      'SUM(ptd.m3NomSizeActualLength),'
      'SUM(ptd.LinealMeterNominalLength),'
      'SUM(ptd.OrderVolume),'
      'SUM(ptd.PriceVolume)'
      ''
      'FROM dbo.PkgType_Invoice ptd'
      ''
      'WHERE Ptd.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'Group By ptd.PackageTypeNo, ptd.LoadNo, ptd.LoadDetailNo'
      ''
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 968
    Top = 192
  end
  object sq_GetInvoiceDetailDataII: TSQLQuery
    MaxBlobSize = -1
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
      'SELECT DISTINCT'
      'CSD.CustShipPlanDetailObjectNo,'
      'OL.OrderLineNo'#9#9#9'            AS'#9'ORDERLINENO,'
      'CSD.Reference'#9#9#9'              AS'#9'REFERENCE,'
      ''
      'OL.OrderLineDescription'#9#9'      AS'#9'PRODUCTDESCRIPTION,'
      'CSD.ProductNo'#9#9#9'              AS'#9'PRODUCTNO,'
      'CSD.LengthDescription'#9#9'        AS'#9'LENGTHDESCRIPTION,'
      'CSD.ProductLengthNo'#9#9'          AS'#9'PRODUCTLENGTHNO,'
      'OL.Price'#9#9#9'                  AS'#9'PRICE,'
      'VU.VolumeUnitName'#9#9'            AS'#9'VOLUMEUNIT,'
      'PU.TemplateUnitName'#9#9'          AS'#9'PRICEUNIT,'
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
      '-- M3_NOM.PRODUCTVALUE,'
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
      'FROM dbo.Invoiced_Load INL'
      'INNER JOIN dbo.Loads LO ON LO.LoadNo = INL.LoadNo'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = INL.LoadNo'
      'INNER JOIN dbo.Loaddetail LD'#9#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.PackageTypeDetail PTD'#9#9'ON '#9'PTD.PackageTypeNo = LD' +
        '.PackageTypeNo'
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON '#9'CSD.CustShipP' +
        'lanDetailObjectNo = LD.DefaultCustShipObjectNo'
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
      
        'Inner Join dbo.VIS_LoadVolume_TEMP M3_NOM ON M3_NOM.CustomerNo =' +
        ' LO.CustomerNo'
      'AND M3_NOM.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'AND M3_NOM.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailOb' +
        'jectNo'
      'AND M3_NOM.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'WHERE'
      'INL.InternalInvoiceNo = :InternalInvoiceNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 256
    Top = 248
    object sq_GetInvoiceDetailDataIICustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
    end
    object sq_GetInvoiceDetailDataIIORDERLINENO: TIntegerField
      FieldName = 'ORDERLINENO'
    end
    object sq_GetInvoiceDetailDataIIREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Size = 30
    end
    object sq_GetInvoiceDetailDataIIPRODUCTDESCRIPTION: TStringField
      FieldName = 'PRODUCTDESCRIPTION'
      Size = 100
    end
    object sq_GetInvoiceDetailDataIIPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object sq_GetInvoiceDetailDataIILENGTHDESCRIPTION: TStringField
      FieldName = 'LENGTHDESCRIPTION'
      FixedChar = True
      Size = 100
    end
    object sq_GetInvoiceDetailDataIIPRODUCTLENGTHNO: TIntegerField
      FieldName = 'PRODUCTLENGTHNO'
    end
    object sq_GetInvoiceDetailDataIIPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object sq_GetInvoiceDetailDataIIVOLUMEUNIT: TStringField
      FieldName = 'VOLUMEUNIT'
      Size = 10
    end
    object sq_GetInvoiceDetailDataIIPRICEUNIT: TStringField
      FieldName = 'PRICEUNIT'
    end
    object sq_GetInvoiceDetailDataIIActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
    end
    object sq_GetInvoiceDetailDataIIActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
    end
    object sq_GetInvoiceDetailDataIINominalThicknessMM_PG: TFloatField
      FieldName = 'NominalThicknessMM_PG'
    end
    object sq_GetInvoiceDetailDataIINominalWidthMM_PG: TFloatField
      FieldName = 'NominalWidthMM_PG'
    end
    object sq_GetInvoiceDetailDataIINominalLengthMM_PL: TFloatField
      FieldName = 'NominalLengthMM_PL'
    end
    object sq_GetInvoiceDetailDataIIActualLengthMM_PL: TFloatField
      FieldName = 'ActualLengthMM_PL'
    end
    object sq_GetInvoiceDetailDataIINominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
    end
    object sq_GetInvoiceDetailDataIINominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
    end
    object sq_GetInvoiceDetailDataIINominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
    end
    object sq_GetInvoiceDetailDataIINominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
    end
    object sq_GetInvoiceDetailDataIINominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
    end
    object sq_GetInvoiceDetailDataIILO: TIntegerField
      FieldName = 'LO'
    end
    object sq_GetInvoiceDetailDataIIVOLUME_ORDERUNIT: TFloatField
      FieldName = 'VOLUME_ORDERUNIT'
    end
    object sq_GetInvoiceDetailDataIIM3ACTUAL: TFloatField
      FieldName = 'M3ACTUAL'
    end
    object sq_GetInvoiceDetailDataIIM3NOMINAL: TFloatField
      FieldName = 'M3NOMINAL'
    end
    object sq_GetInvoiceDetailDataIIACTUAL_LINEALMETER: TFloatField
      FieldName = 'ACTUAL_LINEALMETER'
    end
    object sq_GetInvoiceDetailDataIINOOFPIECES: TIntegerField
      FieldName = 'NOOFPIECES'
    end
    object sq_GetInvoiceDetailDataIINOOFPKGS: TIntegerField
      FieldName = 'NOOFPKGS'
    end
    object sq_GetInvoiceDetailDataIIOL_Reference: TStringField
      FieldName = 'OL_Reference'
      Size = 50
    end
  end
  object sq_LoadToInvoice: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT LO.LoadNo'
      ''
      'FROM dbo.Invoiced_Load INL'
      'INNER JOIN dbo.Loads LO ON LO.LoadNo = INL.LoadNo'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      ''
      'WHERE'
      'INL.InternalInvoiceNo = :InternalInvoiceNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1016
    Top = 240
    object sq_LoadToInvoiceLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
  end
  object sq_GetLODataII: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
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
    SQL.Strings = (
      'SELECT distinct'
      
        'CSH.ShippingPlanStatus'#9#9#9#9'                AS STATUS, '#9#9'-- Intege' +
        'r'
      'CSH.ShippingPlanNo '#9#9#9#9'                    AS LO, '#9#9#9'-- Integer'
      
        'OH.OrderNoText'#9#9#9#9#9'                      AS ORDERNUMBER,'#9#9'-- CHA' +
        'R 20'
      
        'isNull(CSH.Reference,'#39'Non'#39')'#9#9#9'              AS REFERENCE,'#9#9'-- VA' +
        'RCHAR 30'
      
        'isNull(CSH.OurReference,'#39'Non'#39')'#9#9#9'          AS OURREFERENCE,'#9'-- V' +
        'ARCHAR 30'
      'RTRIM(US.FirstName)+'#39' '#39'+RTRIM(US.LastName)    AS SALESMAN,'
      'Bk.BookingNo'#9#9#9#9#9'                        AS BOOKINGNO,'
      'CSH.InvoiceAdditionAmount'#9#9#9'                AS ADDITION_AMOUNT,'
      'CSH.InvoiceAdditionUnitNo'#9#9#9'                AS ADDITION_UNITNO,'
      'CSH.InvoiceAdditionDescription'#9#9#9'          AS ADDITION_DESC,'
      'SC.ClientName                                 AS SHIPPER,'
      'ISNULL(Cr.CarrierName,'#39'Non'#39')                  AS CARRIERNAME,'
      'isNull(Vg.ETD,000000)                         AS ETD,'
      'isNull(Vg.ETA,000000)                         AS ETA,'
      'Bk.SupplierReference                          AS TrpID,'
      
        'PU.TemplateUnitName                           AS ADDITION_PRICEU' +
        'NIT'
      ''
      'FROM dbo.Invoiced_Load INL'
      #9'INNER JOIN dbo.LoadShippingPlan'#9#9'LS ON LS.LoadNo = INL.LoadNo'
      '  AND LS.ShippingPlanNo'#9'= INL.ShippingPlanNo'
      
        #9'INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON'#9'LS.ShippingPla' +
        'nNo'#9'= CSH.ShippingPlanNo'
      #9'INNER JOIN dbo.Loads'#9#9#9'LO'#9'ON '#9'LO.LoadNo'#9#9'= LS.LoadNo'
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= CSH.OrderNo'
      
        #9'INNER JOIN dbo.Users'#9' '#9#9'US'#9'ON'#9'US.UserID '#9#9'= OH.ResponsibleSelle' +
        'r'
      
        '  Left Outer Join PackUnit                PU      ON      PU.Tem' +
        'plateUnitNo       = CSH.InvoiceAdditionUnitNo'
      ''
      '  LEFT OUTER JOIN dbo.Booking'#9#9'Bk'
      #9'LEFT OUTER JOIN dbo.Voyage'#9#9'Vg '#9'ON  '#9'Bk.VoyageNo'#9#9'= Vg.VoyageNo'
      
        #9'LEFT OUTER JOIN dbo.Client'#9#9'SC '#9'ON  '#9'Bk.ShippingCompanyNo '#9'= SC' +
        '.ClientNo'
      
        #9'LEFT OUTER JOIN dbo.Carrier            '#9'Cr '#9'ON  '#9'Vg.CarrierNo  ' +
        '  '#9'= Cr.CarrierNo'
      #9#9#9#9#9#9#9'ON  '#9'Bk.ShippingPlanNo '#9'= CSH.ShippingPlanNo'
      ''
      'WHERE INL.InternalInvoiceNo = :InternalInvoiceNo'
      'AND INL.ShippingPlanNo = :ShippingPlanNo'
      'AND LO.CustomerNo = :CustomerNo'
      '-- AND LO.SenderLoadStatus = 2')
    SQLConnection = dmsConnector.SQLConnection
    Left = 120
    Top = 256
    object sq_GetLODataIISTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object sq_GetLODataIILO: TIntegerField
      FieldName = 'LO'
    end
    object sq_GetLODataIIORDERNUMBER: TStringField
      FieldName = 'ORDERNUMBER'
    end
    object sq_GetLODataIIREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Size = 30
    end
    object sq_GetLODataIIOURREFERENCE: TStringField
      FieldName = 'OURREFERENCE'
      FixedChar = True
      Size = 30
    end
    object sq_GetLODataIISALESMAN: TStringField
      FieldName = 'SALESMAN'
      Size = 31
    end
    object sq_GetLODataIIBOOKINGNO: TIntegerField
      FieldName = 'BOOKINGNO'
    end
    object sq_GetLODataIIADDITION_AMOUNT: TFloatField
      FieldName = 'ADDITION_AMOUNT'
    end
    object sq_GetLODataIIADDITION_UNITNO: TIntegerField
      FieldName = 'ADDITION_UNITNO'
    end
    object sq_GetLODataIIADDITION_DESC: TStringField
      FieldName = 'ADDITION_DESC'
      FixedChar = True
      Size = 40
    end
    object sq_GetLODataIISHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object sq_GetLODataIICARRIERNAME: TStringField
      FieldName = 'CARRIERNAME'
      FixedChar = True
      Size = 50
    end
    object sq_GetLODataIIETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object sq_GetLODataIIETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object sq_GetLODataIITrpID: TStringField
      FieldName = 'TrpID'
      Size = 50
    end
    object sq_GetLODataIIADDITION_PRICEUNIT: TStringField
      FieldName = 'ADDITION_PRICEUNIT'
    end
  end
  object sq_GetLoadIDII: TSQLQuery
    MaxBlobSize = -1
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
      'SELECT DISTINCT LO.LoadNo, LO.LoadID'
      ''
      'FROM dbo.Invoiced_Load INL'
      'INNER JOIN dbo.Loads LO ON LO.LoadNo = INL.LoadNo'
      
        '-- INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadN' +
        'o'
      ''
      'WHERE'
      'INL.InternalInvoiceNo = :InternalInvoiceNo'
      'AND LO.SupplierNo = :SupplierNo'
      '-- AND LO.SenderLoadStatus = 2'
      'AND LO.CustomerNo = :CustomerNo'
      'AND INL.ShippingPlanNo = :ShippingPlanNo'
      ''
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 405
    Top = 416
    object sq_GetLoadIDIILoadID: TStringField
      FieldName = 'LoadID'
      Size = 50
    end
  end
  object sq_KortSkeppFS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      '           LD.LoadNo, '
      '           LD.ShippingPlanNo,'
      '           PR.ProductDisplayName     AS PRODUCT,'
      '           LD.LoadDetailNo,'
      '           LD.PackageNo'#9#9'            AS PACKAGENO,'
      '           LD.NoOfPackages'#9'          ,'
      '           LD.PackageTypeNo'#9'          AS PACKAGETYPENO,'
      '           LD.SupplierCode'#9'          ,'
      '           LD.PackageOK'#9#9'            ,'
      '           LD.ProblemPackageLog'#9'      ,'
      '           LD.CreatedUser,'
      '           LD.ModifiedUser,'
      '           LD.DateCreated,'
      ''
      '           PT.Totalm3Actual           AS  M3_NET,'
      '           PT.TotalNoOfPieces         AS  PCS,'
      '      '#9'   PT.Totalm3Nominal'#9#9'      AS M3_NOM,'
      '           PT.TotalMFBMNominal        AS      MFBM,'
      '      '#9'   PT.TotalSQMofActualWidth'#9'  AS KVM,'
      '      '#9'   PT.TotalLinealMeterActualLength AS LOPM,'
      '           PR.ProductNo,'
      '           LD.DefaultCustShipObjectNo,'
      '           PTL.PcsPerLength           AS PCS_PER_LENGTH,'
      '          (Select Count(*) from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS NoOfL' +
        'engths,'
      ''
      '          (Select TOP 1 PTD.ProductLengthNo from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS Produ' +
        'ctLengthNo,'
      ''
      '          (Select TOP 1 PL.ActualLengthMM from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          Inner Join dbo.ProductLength PL ON PL.ProductLengthNo ' +
        '= PTD.ProductLengthNo'
      '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS ALMM,'
      ''
      ''
      '          PG.ActualThicknessMM,'
      '          PG.ActualWidthMM,'
      '          PG.SurfacingNo,'
      '          PG.SpeciesNo,'
      
        '          G.GradeNo                                     AS MainG' +
        'radeNo,'
      '          LD.OverrideMatch,'
      '          LD.LIPNo,'
      '          0 AS Pkg_State,'
      '          0 AS Pkg_Function,'
      '          0 AS Changed,'
      '          LD.Defsspno,'
      #9'LD.OverrideRL'
      ''
      ''
      'FROM dbo.IH_SpecLoad INL'
      'Inner Join dbo.LoadDetail LD on LD.LoadNo = INL.SpecLoadNo'
      
        ' INNER JOIN dbo.PackageType   PT  ON    PT.PackageTypeNo    = LD' +
        '.PackageTypeNo'
      
        ' INNER JOIN dbo.Product       Pr  ON    Pr.ProductNo        = Pt' +
        '.ProductNo'
      
        ' INNER JOIN dbo.ProductGroup  PG  ON    PG.ProductGroupNo   = Pr' +
        '.ProductGroupNo'
      
        ' INNER JOIN dbo.Grade         G   ON    G.GradeNo           = Pr' +
        '.GradeNo'
      '        '#9#9#9#9#9'                       AND g.LanguageCode = 1'
      
        ' Inner Join dbo.PackageTypeLengths PTL  ON PTL.PackageTypeNo  = ' +
        'PT.PackageTypeNo'
      ''
      'WHERE      INL.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'ORDER BY   LD.LoadDetailNo DESC')
    SQLConnection = dmsConnector.SQLConnection
    Left = 944
    Top = 440
  end
  object sq_LoadPackagesII: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      '           LD.LoadNo, '
      '           LD.ShippingPlanNo,'
      '           PR.ProductDisplayName     AS PRODUCT,'
      '           LD.LoadDetailNo,'
      '           LD.PackageNo'#9#9'            AS PACKAGENO,'
      
        '           1                          AS NoOfPackages'#9'          ' +
        ','
      '           LD.PackageTypeNo'#9'          AS PACKAGETYPENO,'
      '           LD.SupplierCode'#9'          ,'
      '           LD.PackageOK'#9#9'            ,'
      '           LD.ProblemPackageLog'#9'      ,'
      '           LD.CreatedUser,'
      '           LD.ModifiedUser,'
      '           LD.DateCreated,'
      ''
      '           PT.Totalm3Actual           AS  M3_NET,'
      '           PT.TotalNoOfPieces         AS  PCS,'
      '      '#9'   PT.Totalm3Nominal'#9#9'      AS M3_NOM,'
      '           PT.TotalMFBMNominal        AS      MFBM,'
      '      '#9'   PT.TotalSQMofActualWidth'#9'  AS KVM,'
      '      '#9'   PT.TotalLinealMeterActualLength AS LOPM,'
      '           PR.ProductNo,'
      '           LD.DefaultCustShipObjectNo,'
      '           PTL.PcsPerLength           AS PCS_PER_LENGTH,'
      '          (Select Count(*) from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS NoOfL' +
        'engths,'
      ''
      '          (Select TOP 1 PTD.ProductLengthNo from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS Produ' +
        'ctLengthNo,'
      ''
      '          (Select TOP 1 PL.ActualLengthMM from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          Inner Join dbo.ProductLength PL ON PL.ProductLengthNo ' +
        '= PTD.ProductLengthNo'
      '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS ALMM,'
      ''
      ''
      '          PG.ActualThicknessMM,'
      '          PG.ActualWidthMM,'
      '          PG.SurfacingNo,'
      '          PG.SpeciesNo,'
      
        '          G.GradeNo                                     AS MainG' +
        'radeNo,'
      '          LD.OverrideMatch,'
      '          LD.LIPNo,'
      '          0 AS Pkg_State,'
      '          0 AS Pkg_Function,'
      '          0 AS Changed,'
      '          LD.Defsspno,'
      #9'LD.OverrideRL'
      ''
      ''
      'FROM dbo.IH_SpecLoad INL'
      'Inner Join dbo.LoadDetail LD on LD.LoadNo = INL.SpecLoadNo'
      
        ' INNER JOIN dbo.PackageType   PT  ON    PT.PackageTypeNo    = LD' +
        '.PackageTypeNo'
      
        ' INNER JOIN dbo.Product       Pr  ON    Pr.ProductNo        = Pt' +
        '.ProductNo'
      
        ' INNER JOIN dbo.ProductGroup  PG  ON    PG.ProductGroupNo   = Pr' +
        '.ProductGroupNo'
      
        ' INNER JOIN dbo.Grade         G   ON    G.GradeNo           = Pr' +
        '.GradeNo'
      '        '#9#9#9#9#9'                       AND g.LanguageCode = 1'
      
        ' Inner Join dbo.PackageTypeLengths PTL  ON PTL.PackageTypeNo  = ' +
        'PT.PackageTypeNo'
      ''
      'WHERE      INL.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'ORDER BY   LD.LoadDetailNo DESC')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1016
    Top = 288
    object sq_LoadPackagesIILoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadPackagesIILoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadPackagesIIShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesIIPRODUCT: TStringField
      FieldName = 'PRODUCT'
      ProviderFlags = []
      Size = 100
    end
    object sq_LoadPackagesIIPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesIINoOfPackages: TIntegerField
      FieldName = 'NoOfPackages'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesIIPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesIISupplierCode: TStringField
      FieldName = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sq_LoadPackagesIIPackageOK: TWordField
      FieldName = 'PackageOK'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesIIProblemPackageLog: TStringField
      FieldName = 'ProblemPackageLog'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_LoadPackagesIICreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesIIModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesIIDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesIIM3_NET: TFloatField
      FieldName = 'M3_NET'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIPCS: TIntegerField
      FieldName = 'PCS'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIMFBM: TFloatField
      FieldName = 'MFBM'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIKVM: TFloatField
      FieldName = 'KVM'
      ProviderFlags = []
    end
    object sq_LoadPackagesIILOPM: TFloatField
      FieldName = 'LOPM'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIProductNo: TIntegerField
      FieldName = 'ProductNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesIIPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      ProviderFlags = []
      Size = 255
    end
    object sq_LoadPackagesIINoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIALMM: TFloatField
      FieldName = 'ALMM'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      ProviderFlags = []
    end
    object sq_LoadPackagesIISurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesIISpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesIILIPNo: TIntegerField
      FieldName = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesIIPkg_State: TIntegerField
      FieldName = 'Pkg_State'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIPkg_Function: TIntegerField
      FieldName = 'Pkg_Function'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIChanged: TIntegerField
      FieldName = 'Changed'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIDefsspno: TIntegerField
      FieldName = 'Defsspno'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesIIOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_LoadPackagesII: TDataSetProvider
    DataSet = sq_LoadPackagesII
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dsp_LoadPackagesIIGetTableName
    Left = 1016
    Top = 336
  end
  object cds_LoadPackagesII: TClientDataSet
    Aggregates = <>
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
        Name = 'ShippingPlanNo'
        DataType = ftInteger
      end
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
        Name = 'NoOfPackages'
        DataType = ftInteger
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PackageOK'
        DataType = ftSmallint
      end
      item
        Name = 'ProblemPackageLog'
        DataType = ftString
        Size = 50
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
        Name = 'MFBM'
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
        Name = 'PCS_PER_LENGTH'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'NoOfLengths'
        DataType = ftInteger
      end
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end
      item
        Name = 'ALMM'
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
        Name = 'SurfacingNo'
        DataType = ftInteger
      end
      item
        Name = 'SpeciesNo'
        DataType = ftInteger
      end
      item
        Name = 'MainGradeNo'
        DataType = ftInteger
      end
      item
        Name = 'OverrideMatch'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'Pkg_State'
        DataType = ftInteger
      end
      item
        Name = 'Pkg_Function'
        DataType = ftInteger
      end
      item
        Name = 'Changed'
        DataType = ftInteger
      end
      item
        Name = 'Defsspno'
        DataType = ftInteger
      end
      item
        Name = 'OverrideRL'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_LoadPackagesIndex1'
        Fields = 'PACKAGENO;SupplierCode'
        Options = [ixUnique]
      end
      item
        Name = 'cds_LoadPackagesIndex2'
        Fields = 'LoadNo;LoadDetailNo'
      end>
    IndexName = 'cds_LoadPackagesIndex1'
    Params = <>
    ProviderName = 'dsp_LoadPackagesII'
    StoreDefs = True
    Left = 1016
    Top = 384
    object cds_LoadPackagesIILoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadPackagesIILoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadPackagesIIShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIIPRODUCT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCT'
      ProviderFlags = []
      Size = 100
    end
    object cds_LoadPackagesIIPACKAGENO: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PACKAGENO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIINoOfPackages: TIntegerField
      DisplayLabel = #196'ndrad'
      FieldName = 'NoOfPackages'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIIPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIISupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cds_LoadPackagesIIPackageOK: TSmallintField
      DisplayLabel = 'Status'
      FieldName = 'PackageOK'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIIProblemPackageLog: TStringField
      DisplayLabel = 'Log'
      FieldName = 'ProblemPackageLog'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_LoadPackagesIICreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIIModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIIDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIIM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesIIPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PCS'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIM3_NOM: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'M3_NOM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesIIMFBM: TFloatField
      FieldName = 'MFBM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesIIKVM: TFloatField
      DisplayLabel = 'M2'
      FieldName = 'KVM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesIILOPM: TFloatField
      DisplayLabel = 'M1'
      FieldName = 'LOPM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesIIProductNo: TIntegerField
      FieldName = 'ProductNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIDefaultCustShipObjectNo: TIntegerField
      DisplayLabel = 'DefaultObjectNo'
      FieldName = 'DefaultCustShipObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIIPCS_PER_LENGTH: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'PCS_PER_LENGTH'
      ProviderFlags = []
      Size = 255
    end
    object cds_LoadPackagesIINoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIALMM: TFloatField
      DisplayLabel = 'F'#246'rstal'#228'ngd'
      FieldName = 'ALMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesIISurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIISpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIOverrideMatch: TIntegerField
      DisplayLabel = 'Manuell koppling'
      FieldName = 'OverrideMatch'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIILIPNo: TIntegerField
      FieldName = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIIPkg_State: TIntegerField
      FieldName = 'Pkg_State'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIPkg_Function: TIntegerField
      DisplayLabel = #197'tg'#228'rd'
      FieldName = 'Pkg_Function'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIChanged: TIntegerField
      FieldName = 'Changed'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIDefsspno: TIntegerField
      FieldName = 'Defsspno'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIIOverrideRL: TIntegerField
      DisplayLabel = 'Till'#229't alla l'#228'ngder'
      FieldName = 'OverrideRL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_LoadPackagesII: TDataSource
    DataSet = cds_LoadPackagesII
    Left = 1016
    Top = 432
  end
  object sq_LoadPackagesIII: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      '           0 AS LoadNo,'
      '           0 AS ShippingPlanNo,'
      '           PR.ProductDisplayName     AS PRODUCT,'
      '           0 AS LoadDetailNo,'
      '           INL.PackageNo'#9#9'            AS PACKAGENO,'
      
        '           1                          AS NoOfPackages'#9'          ' +
        ','
      '           PN.PackageTypeNo'#9'          AS PACKAGETYPENO,'
      '           INL.SupplierCode'#9'          ,'
      '           0 AS PackageOK'#9#9'            ,'
      '           '#39#39' AS ProblemPackageLog'#9'      ,'
      '           PN.CreatedUser,'
      '           PN.ModifiedUser,'
      '           PN.DateCreated,'
      ''
      '           PT.Totalm3Actual           AS  M3_NET,'
      '           PT.TotalNoOfPieces         AS  PCS,'
      '      '#9'   PT.Totalm3Nominal'#9#9'      AS M3_NOM,'
      '           PT.TotalMFBMNominal        AS      MFBM,'
      '      '#9'   PT.TotalSQMofActualWidth'#9'  AS KVM,'
      '      '#9'   PT.TotalLinealMeterActualLength AS LOPM,'
      '           PR.ProductNo,'
      '           0 AS DefaultCustShipObjectNo,'
      '           PTL.PcsPerLength           AS PCS_PER_LENGTH,'
      '          (Select Count(*) from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = PN.PackageTypeNo) AS NoOfL' +
        'engths,'
      ''
      '          (Select TOP 1 PTD.ProductLengthNo from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = PN.PackageTypeNo) AS Produ' +
        'ctLengthNo,'
      ''
      '          (Select TOP 1 PL.ActualLengthMM from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          Inner Join dbo.ProductLength PL ON PL.ProductLengthNo ' +
        '= PTD.ProductLengthNo'
      '          WHERE   PTD.PackageTypeNo = PN.PackageTypeNo) AS ALMM,'
      ''
      ''
      '          PG.ActualThicknessMM,'
      '          PG.ActualWidthMM,'
      '          PG.SurfacingNo,'
      '          PG.SpeciesNo,'
      
        '          G.GradeNo                                     AS MainG' +
        'radeNo,'
      '          0 AS OverrideMatch,'
      '          INL.LIPNo,'
      '          0 AS Pkg_State,'
      '          0 AS Pkg_Function,'
      '          0 AS Changed,'
      '          0 AS Defsspno,'
      #9'        0 AS OverrideRL,'
      '          INL.PIPNo,'
      #9'        INL.InternalInvoiceNo'
      ''
      ''
      'FROM dbo.IH_PkgsRem INL'
      'Inner Join dbo.PackageNumber PN on PN.PackageNo = INL.PackageNo'
      
        '                              AND PN.SupplierCode = INL.Supplier' +
        'Code'
      
        ' INNER JOIN dbo.PackageType   PT  ON    PT.PackageTypeNo    = PN' +
        '.PackageTypeNo'
      
        ' INNER JOIN dbo.Product       Pr  ON    Pr.ProductNo        = Pt' +
        '.ProductNo'
      
        ' INNER JOIN dbo.ProductGroup  PG  ON    PG.ProductGroupNo   = Pr' +
        '.ProductGroupNo'
      
        ' INNER JOIN dbo.Grade         G   ON    G.GradeNo           = Pr' +
        '.GradeNo'
      '        '#9#9#9#9#9'                       AND g.LanguageCode = 1'
      
        ' Inner Join dbo.PackageTypeLengths PTL  ON PTL.PackageTypeNo  = ' +
        'PT.PackageTypeNo'
      ''
      'WHERE      INL.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'ORDER BY   INL.PackageNo DESC')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1112
    Top = 256
    object sq_LoadPackagesIIILoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIILoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIPRODUCT: TStringField
      FieldName = 'PRODUCT'
      ProviderFlags = []
      Size = 100
    end
    object sq_LoadPackagesIIIPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadPackagesIIINoOfPackages: TIntegerField
      FieldName = 'NoOfPackages'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIISupplierCode: TStringField
      FieldName = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 3
    end
    object sq_LoadPackagesIIIPackageOK: TWordField
      FieldName = 'PackageOK'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIProblemPackageLog: TStringField
      FieldName = 'ProblemPackageLog'
      ProviderFlags = []
      Size = 1
    end
    object sq_LoadPackagesIIICreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIM3_NET: TFloatField
      FieldName = 'M3_NET'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIPCS: TIntegerField
      FieldName = 'PCS'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIMFBM: TFloatField
      FieldName = 'MFBM'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIKVM: TFloatField
      FieldName = 'KVM'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIILOPM: TFloatField
      FieldName = 'LOPM'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIProductNo: TIntegerField
      FieldName = 'ProductNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      ProviderFlags = []
      Size = 255
    end
    object sq_LoadPackagesIIINoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIALMM: TFloatField
      FieldName = 'ALMM'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIISurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIISpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIILIPNo: TIntegerField
      FieldName = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesIIIPkg_State: TIntegerField
      FieldName = 'Pkg_State'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIPkg_Function: TIntegerField
      FieldName = 'Pkg_Function'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIChanged: TIntegerField
      FieldName = 'Changed'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIDefsspno: TIntegerField
      FieldName = 'Defsspno'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
      ProviderFlags = []
    end
    object sq_LoadPackagesIIIInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadPackagesIIIPIPNo: TIntegerField
      FieldName = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_LoadPackagesIII: TDataSetProvider
    DataSet = sq_LoadPackagesIII
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dsp_LoadPackagesIIIGetTableName
    Left = 1112
    Top = 304
  end
  object cds_LoadPackagesIII: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LoadPackagesIII'
    OnReconcileError = cds_LoadPackagesIIIReconcileError
    Left = 1112
    Top = 352
    object cds_LoadPackagesIIILoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIILoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIPRODUCT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCT'
      ProviderFlags = []
      Size = 100
    end
    object cds_LoadPackagesIIIPACKAGENO: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PACKAGENO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadPackagesIIINoOfPackages: TIntegerField
      DisplayLabel = #196'ndrad'
      FieldName = 'NoOfPackages'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIISupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 3
    end
    object cds_LoadPackagesIIIPackageOK: TSmallintField
      DisplayLabel = 'Status'
      FieldName = 'PackageOK'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIProblemPackageLog: TStringField
      DisplayLabel = 'Log'
      FieldName = 'ProblemPackageLog'
      ProviderFlags = []
      Size = 1
    end
    object cds_LoadPackagesIIICreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesIIIPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PCS'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIM3_NOM: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'M3_NOM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesIIIMFBM: TFloatField
      FieldName = 'MFBM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesIIIKVM: TFloatField
      DisplayLabel = 'M2'
      FieldName = 'KVM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesIIILOPM: TFloatField
      DisplayLabel = 'M1'
      FieldName = 'LOPM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesIIIProductNo: TIntegerField
      FieldName = 'ProductNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIDefaultCustShipObjectNo: TIntegerField
      DisplayLabel = 'DefaultObjectNo'
      FieldName = 'DefaultCustShipObjectNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIPCS_PER_LENGTH: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'PCS_PER_LENGTH'
      ProviderFlags = []
      Size = 255
    end
    object cds_LoadPackagesIIINoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIALMM: TFloatField
      DisplayLabel = 'F'#246'rstal'#228'ngd'
      FieldName = 'ALMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIISurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIISpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIOverrideMatch: TIntegerField
      DisplayLabel = 'Manuell koppling'
      FieldName = 'OverrideMatch'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIILIPNo: TIntegerField
      FieldName = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIIIPkg_State: TIntegerField
      FieldName = 'Pkg_State'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIPkg_Function: TIntegerField
      DisplayLabel = #197'tg'#228'rd'
      FieldName = 'Pkg_Function'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIChanged: TIntegerField
      FieldName = 'Changed'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIDefsspno: TIntegerField
      FieldName = 'Defsspno'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadPackagesIIIPIPNo: TIntegerField
      FieldName = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_LoadPackagesIII: TDataSource
    DataSet = cds_LoadPackagesIII
    Left = 1112
    Top = 400
  end
  object sq_DelIH: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete dbo.InvoiceHeader'
      'WHERE'
      'InternalInvoiceNo = :InternalInvoiceNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1128
    Top = 8
  end
  object sq_DelIHEmptyLoads: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete dbo.Loads'
      'FROM dbo.Loads'
      
        'Inner Join dbo.Invoiced_Load on Invoiced_Load.LoadNo = Loads.Loa' +
        'dNo'
      ''
      'WHERE'
      'Invoiced_Load.InternalInvoiceNo = :InternalInvoiceNo'
      'AND Loads.LoadNo not in (Select LoadDetail.LoadNo'
      'FROM dbo.LoadDetail '
      'WHERE Loads.LoadNo = LoadDetail.LoadNo)')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1128
    Top = 56
  end
  object sq_ExportTyp1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CET'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select DISTINCT'
      
        '-- isNull(Cast(C.pktnrlevkod AS Varchar(3)),'#39#39')+'#39' '#39'+Cast(LD.Pack' +
        'ageNo AS Varchar(10)) AS SPEC_PackageNo,'
      'CASE WHEN :CET = 0 then'
      
        'isNull(Cast(C.pktnrlevkod AS Varchar(3)),'#39#39')+'#39#39'+Cast(LD.PackageN' +
        'o AS Varchar(10))'
      'else'
      
        #39'C'#39'+isNull(Cast(C.pktnrlevkod AS Varchar(3)),'#39#39')+'#39#39'+Cast(LD.Pack' +
        'ageNo AS Varchar(10))'
      'End AS PackageNo,'
      'OL.NominalThicknessMM AS NomThick,'
      'OL.NominalWidthMM AS NomWidth,'
      ''
      
        '(Select Max(ActualLengthMM)/100 FROM dbo.PackageTypeDetail    PT' +
        'D'
      
        'INNER JOIN dbo.ProductLength   PL '#9'ON  PL.ProductLengthNo       ' +
        '     = PTD.ProductLengthNo'
      
        'WHERE  PTD.PackageTypeNo            = LD.PackageTypeNo) AS MAXLE' +
        'NGTH,'
      ''
      '(CASE'
      'WHEN LS.NoOfLengths > 1 THEN'
      '(Select MIN(ActualLengthMM) FROM dbo.PackageTypeDetail    PTD'
      
        'INNER JOIN dbo.ProductLength   PL '#9'ON  PL.ProductLengthNo       ' +
        '     = PTD.ProductLengthNo'
      'WHERE  PTD.PackageTypeNo            = LD.PackageTypeNo)'
      'ELSE'
      '0'
      'END)'
      'AS MINLENGTH,'
      'PT.TotalNoOfPieces AS Pcs,'
      'OL.Reference AS Mark'
      ''
      ''
      'FROM   dbo.InvoiceHeader IH '
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNumber INV'#9'ON'#9'INV.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.SHIPPINGPLANNO    = IL.SHIPPINGPLANNO'
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      
        #9'                                  '#9'AND Ilo.SHIPPINGPLANNO    = ' +
        'LD.SHIPPINGPLANNO'
      ''
      
        #9'INNER JOIN dbo.PackageType    PT '#9'ON  PT.PackageTypeNo         ' +
        '   = LD.PackageTypeNo'
      
        #9'INNER JOIN dbo.LengthSpec    LS '#9'ON  LS.LengthSpecNo           ' +
        ' = PT.LengthSpecNo'
      ''
      '    '#9
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipP' +
        'lanDetailObjectNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      #9'inner join dbo.packagenumber PN ON PN.PackageNo = LD.packageNo'
      #9#9#9#9#9'AND RTrim(PN.SupplierCode) = RTrim(LD.SupplierCode)'
      ''
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = PN.SupplierNo'
      ''
      'WHERE     (IH.InternalInvoiceNo   =  :InternalInvoiceNo)'
      ''
      '  AND     (IL.ShippingPlanNo      <> -1                )'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1112
    Top = 448
  end
  object dsp_ExportTyp1: TDataSetProvider
    DataSet = sq_ExportTyp1
    Left = 1112
    Top = 496
  end
  object cds_ExportTyp1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_ExportTyp1'
    Left = 1112
    Top = 544
    object cds_ExportTyp1PackageNo: TStringField
      FieldName = 'PackageNo'
      Size = 14
    end
    object cds_ExportTyp1NomThick: TFloatField
      FieldName = 'NomThick'
      DisplayFormat = '###'
    end
    object cds_ExportTyp1NomWidth: TFloatField
      FieldName = 'NomWidth'
      DisplayFormat = '###'
    end
    object cds_ExportTyp1MAXLENGTH: TFloatField
      FieldName = 'MAXLENGTH'
      DisplayFormat = '###'
    end
    object cds_ExportTyp1MINLENGTH: TFloatField
      FieldName = 'MINLENGTH'
      DisplayFormat = '####'
    end
    object cds_ExportTyp1Pcs: TIntegerField
      FieldName = 'Pcs'
      DisplayFormat = '####'
    end
    object cds_ExportTyp1Mark: TStringField
      FieldName = 'Mark'
      Size = 50
    end
  end
  object QExport3XLS1: TQExport3XLS
    DataSet = cds_ExportTyp1
    ExportedFields.Strings = (
      'PackageNo'
      'NomThick'
      'NomWidth'
      'MAXLENGTH'
      'MINLENGTH'
      'Pcs'
      'Mark')
    About = '(About EMS FDvancedExport)'
    _Version = '3.40'
    FileName = 'C:\Projects\VIS\VIS Trusted III\VIS 1211\TestExport.xls'
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.CaptionsFormat.Font.Style = [xfsBold]
    Options.HyperlinkFormat.Font.Color = clrBlue
    Options.HyperlinkFormat.Font.Underline = fulSingle
    Options.NoteFormat.Alignment.Horizontal = halLeft
    Options.NoteFormat.Alignment.Vertical = valTop
    Options.NoteFormat.Font.Size = 8
    Options.NoteFormat.Font.Style = [xfsBold]
    Options.NoteFormat.Font.Name = 'Tahoma'
    FieldFormats = <>
    StripStyles = <>
    Hyperlinks = <>
    Notes = <>
    Charts = <>
    Sheets = <>
    Pictures = <>
    Images = <>
    Cells = <>
    MergedCells = <>
    Left = 1072
    Top = 600
  end
  object QExport3ASCII1: TQExport3ASCII
    DataSet = cds_ExportTyp1
    ExportedFields.Strings = (
      'PackageNo'
      'NomThick'
      'NomWidth'
      'MAXLENGTH'
      'MINLENGTH'
      'Pcs'
      'Mark')
    About = '(About EMS FDvancedExport)'
    _Version = '3.40'
    OnBeforeExportRow = QExport3ASCII1BeforeExportRow
    UserFormats.Strings = (
      'NomThick=###.#'
      'NomWidth=###.#'
      'MAXLENGTH=##'
      'MINLENGTH=####'
      'Pcs=####')
    ExportType = etCSV
    CSVComma = ','
    CSVQuoteStrings = False
    Left = 1152
    Top = 600
  end
  object sq_CghInv_PkgNos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Update dbo.PackageNumber'
      'Set Status = :Status,'
      'LogicalInventoryPointNo = LD.LIPNo'
      'FROM    dbo.InvoiceHeader IH'
      
        '          INNER JOIN dbo.Invoiced_Load ILoad '#9'ON  ILoad.Internal' +
        'InvoiceNo = IH.InternalInvoiceNo'
      
        '          INNER JOIN dbo.Loaddetail    LD '#9'ON  LD.LoadNo        ' +
        '    = ILoad.LoadNo'
      '       '#9#9#9#9#9#9'AND LD.SHIPPINGPLANNO    = ILoad.SHIPPINGPLANNO'
      
        '          INNER JOIN dbo.PackageNumber on dbo.PackageNumber.Pack' +
        'ageNo = LD.PackageNo'
      #9#9#9#9#9#9#9'AND dbo.PackageNumber.SupplierCode = LD.SupplierCode'
      ''
      'WHERE     IH.InternalInvoiceNo   =:InternalInvoiceNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1097
    Top = 109
  end
  object sq_Delete_Confirmed_Load: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete dbo.Confirmed_Load'
      'From dbo.Invoiced_Load  IL'
      
        'Inner Join dbo.Confirmed_Load on Confirmed_Load.Confirmed_LoadNo' +
        ' = IL.LoadNo'
      
        #9#9#9#9#9#9'AND dbo.Confirmed_Load.Confirmed_ShippingPlanNo = IL.Shipp' +
        'ingPlanNo'
      'Where'
      'IL.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1097
    Top = 165
  end
  object sq_CreditInv: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select InternalInvoiceNo, CustomerNo from dbo.InvoiceHeader'
      'where Debit_Credit = 1'
      'and InvoiceDate > '#39'2007-12-31'#39
      'and InvoiceType = 0')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1056
    Top = 64
    object sq_CreditInvInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object sq_CreditInvCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
  end
  object sq_GetInvoiceType: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LONo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select Top 1 InvoiceType from dbo.InvoiceHeader IH'
      
        'Inner Join dbo.InvoiceLO IL on IL.InternalInvoiceNo = IH.Interna' +
        'lInvoiceNo'
      'WHERE IL.ShippingPlanNo = :LONo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1160
    Top = 216
    object sq_GetInvoiceTypeInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
    end
  end
  object sq_GetIntInvNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select Top 1 invno.InternalInvoiceNo, ih.InvoiceType'
      'from dbo.InvoiceNumber invno'
      
        'Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = invno.' +
        'InternalInvoiceNo'
      'WHERE invno.InvoiceNo = :InvoiceNo'
      ''
      'UNION'
      ''
      'Select Top 1 invno.InternalInvoiceNo, ih.InvoiceType'
      'from dbo.InvoiceNo_USA invno'
      
        'Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = invno.' +
        'InternalInvoiceNo'
      'WHERE invno.InvoiceNo = :InvoiceNo'
      ''
      'UNION'
      ''
      'Select Top 1 invno.InternalInvoiceNo, ih.InvoiceType'
      'from dbo.InvNo_FW invno'
      
        'Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = invno.' +
        'InternalInvoiceNo'
      'WHERE invno.InvoiceNo = :InvoiceNo'
      ''
      'UNION'
      ''
      'Select Top 1 invno.InternalInvoiceNo, ih.InvoiceType'
      'from dbo.ProformaInvoiceNumber invno'
      
        'Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = invno.' +
        'InternalInvoiceNo'
      'WHERE invno.proformaInvoiceNo = :InvoiceNo'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1176
    Top = 264
    object sq_GetIntInvNoInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
    end
    object sq_GetIntInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
  end
  object sq_GetProFormInvNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ProformaInvoiceNo'
      'FROM dbo.ProformaInvoiceNumber'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 664
    Top = 176
    object sq_GetProFormInvNoProformaInvoiceNo: TIntegerField
      FieldName = 'ProformaInvoiceNo'
    end
  end
end
