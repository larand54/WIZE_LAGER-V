unit dmcVidaInvoice;

interface


uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr,   Controls, Dialogs,
  DBXpress, SqlTimSt, kbmMemTable ;



type
  TdmVidaInvoice = class(TDataModule)
    sq_InvoiceHead: TSQLQuery;
    sq_InvoiceHeadInternalInvoiceNo: TIntegerField;
    sq_InvoiceHeadInvoiceType: TIntegerField;
    sq_InvoiceHeadInvoiceDate: TSQLTimeStampField;
    sq_InvoiceHeadSupplierNo: TIntegerField;
    sq_InvoiceHeadCustomerNo: TIntegerField;
    sq_InvoiceHeadAgentNo: TIntegerField;
    sq_InvoiceHeadAgentCommission: TFloatField;
    sq_InvoiceHeadSendInvoiceToAgent: TIntegerField;
    sq_InvoiceHeadPaymentTermsNo: TIntegerField;
    sq_InvoiceHeadCommissionPaidByCustomer: TIntegerField;
    sq_InvoiceHeadDeliveryTermsNo: TIntegerField;
    sq_InvoiceHeadDestinationNo: TIntegerField;
    sq_InvoiceHeadStatus: TIntegerField;
    sq_InvoiceHeadNote: TMemoField;
    sq_InvoiceHeadInvoiceText: TMemoField;
    sq_InvoiceHeadPaymentText: TMemoField;
    sq_InvoiceHeadCurrencyNo: TIntegerField;
    sq_InvoiceHeadIncome_Account: TStringField;
    sq_InvoiceHeadCustomerRecivablesAccount: TStringField;
    sq_InvoiceHeadVAT_OnInvoice: TIntegerField;
    sq_InvoiceHeadClientBillingAddressNo: TIntegerField;
    sq_InvoiceHeadAddressLine1: TStringField;
    sq_InvoiceHeadAddressLine2: TStringField;
    sq_InvoiceHeadAddressLine3: TStringField;
    sq_InvoiceHeadAddressLine4: TStringField;
    sq_InvoiceHeadStateOrProvince: TStringField;
    sq_InvoiceHeadPostalCode: TStringField;
    sq_InvoiceHeadCityName: TStringField;
    sq_InvoiceHeadCountryName: TStringField;
    sq_InvoiceHeadCreatedUser: TIntegerField;
    sq_InvoiceHeadModifiedUser: TIntegerField;
    sq_InvoiceHeadDateCreated: TSQLTimeStampField;
    sq_InvoiceHeadAgentName: TStringField;
    sq_InvoiceHeadCustomerName: TStringField;
    sq_InvoiceHeadDeliveryTerm: TStringField;
    sq_InvoiceHeadPaymentDescription: TStringField;
    sq_InvoiceHeadLanguageCode: TIntegerField;
    sq_InvoiceHeadDestination: TStringField;
    sq_InvoiceHeadFreightInDiscount: TIntegerField;
    sq_InvoiceHeadFreightInCommission: TIntegerField;
    sq_InvoiceHeadDiscount1: TFloatField;
    sq_InvoiceHeadCurrencyName: TStringField;
    sq_InvoiceHeadAddressName: TStringField;
    sq_InvoiceHeadST_AddressName: TStringField;
    sq_InvoiceHeadST_AddressLine1: TStringField;
    sq_InvoiceHeadST_AddressLine2: TStringField;
    sq_InvoiceHeadST_AddressLine3: TStringField;
    sq_InvoiceHeadST_AddressLine4: TStringField;
    sq_InvoiceHeadST_StateOrProvince: TStringField;
    sq_InvoiceHeadST_PostalCode: TStringField;
    sq_InvoiceHeadST_CityName: TStringField;
    sq_InvoiceHeadST_CountryName: TStringField;
    sq_InvoiceHeadAGENT_ADDRESS_NAME: TStringField;
    sq_InvoiceHeadAGENT_SHIPTO_ADDRESSLINE1: TStringField;
    sq_InvoiceHeadAGENT_SHIPTO_ADDRESSLINE2: TStringField;
    sq_InvoiceHeadAGENT_SHIPTO_ADDRESSLINE3: TStringField;
    sq_InvoiceHeadAGENT_SHIPTO_ADDRESSLINE4: TStringField;
    sq_InvoiceHeadAGENT_SHIPTO_PROVINCE: TStringField;
    sq_InvoiceHeadAGENT_SHIPTO_POSTALCODE: TStringField;
    sq_InvoiceHeadAGENT_SHIPTO_CITY: TStringField;
    sq_InvoiceHeadAGENT_SHIPTO_COUNTRY: TStringField;
    sq_InvoiceHeadSearchName: TStringField;
    sq_InvoiceHeadTot_Inv_Inc_Freight_Extras: TFloatField;
    sq_InvoiceHeadSUM_FreigthCost: TFloatField;
    sq_InvoiceHeadTotal_Product_Value_No_Freight: TFloatField;
    sq_InvoiceHeadDiscount: TFloatField;
    sq_InvoiceHeadCommission: TFloatField;
    sq_InvoiceHeadCommission_and_Discount: TFloatField;
    sq_InvoiceHeadInv_Value_Deduct_Com_Dis: TFloatField;
    sq_InvoiceHeadVAT_Value: TFloatField;
    sq_InvoiceHeadInv_Value_To_Be_Paid: TFloatField;
    sq_InvoiceHeadDebit_Credit: TIntegerField;
    sq_InvoiceHeadInv_Value_After_Deduct_DIS_COMM: TFloatField;
    dspInvoiceHead: TDataSetProvider;
    cdsInvoiceHead: TClientDataSet;
    cdsInvoiceHeadInternalInvoiceNo: TIntegerField;
    cdsInvoiceHeadInvoiceType: TIntegerField;
    cdsInvoiceHeadInvoiceDate: TSQLTimeStampField;
    cdsInvoiceHeadSupplierNo: TIntegerField;
    cdsInvoiceHeadCustomerNo: TIntegerField;
    cdsInvoiceHeadAgentNo: TIntegerField;
    cdsInvoiceHeadAgentCommission: TFloatField;
    cdsInvoiceHeadSendInvoiceToAgent: TIntegerField;
    cdsInvoiceHeadPaymentTermsNo: TIntegerField;
    cdsInvoiceHeadCommissionPaidByCustomer: TIntegerField;
    cdsInvoiceHeadDeliveryTermsNo: TIntegerField;
    cdsInvoiceHeadDestinationNo: TIntegerField;
    cdsInvoiceHeadStatus: TIntegerField;
    cdsInvoiceHeadNote: TMemoField;
    cdsInvoiceHeadInvoiceText: TMemoField;
    cdsInvoiceHeadPaymentText: TMemoField;
    cdsInvoiceHeadCurrencyNo: TIntegerField;
    cdsInvoiceHeadIncome_Account: TStringField;
    cdsInvoiceHeadCustomerRecivablesAccount: TStringField;
    cdsInvoiceHeadVAT_OnInvoice: TIntegerField;
    cdsInvoiceHeadClientBillingAddressNo: TIntegerField;
    cdsInvoiceHeadAddressLine1: TStringField;
    cdsInvoiceHeadAddressLine2: TStringField;
    cdsInvoiceHeadAddressLine3: TStringField;
    cdsInvoiceHeadAddressLine4: TStringField;
    cdsInvoiceHeadStateOrProvince: TStringField;
    cdsInvoiceHeadPostalCode: TStringField;
    cdsInvoiceHeadCityName: TStringField;
    cdsInvoiceHeadCountryName: TStringField;
    cdsInvoiceHeadCreatedUser: TIntegerField;
    cdsInvoiceHeadModifiedUser: TIntegerField;
    cdsInvoiceHeadDateCreated: TSQLTimeStampField;
    cdsInvoiceHeadAgentName: TStringField;
    cdsInvoiceHeadCustomerName: TStringField;
    cdsInvoiceHeadDeliveryTerm: TStringField;
    cdsInvoiceHeadPaymentDescription: TStringField;
    cdsInvoiceHeadLanguageCode: TIntegerField;
    cdsInvoiceHeadDestination: TStringField;
    cdsInvoiceHeadFreightInDiscount: TIntegerField;
    cdsInvoiceHeadFreightInCommission: TIntegerField;
    cdsInvoiceHeadDiscount1: TFloatField;
    cdsInvoiceHeadCurrencyName: TStringField;
    cdsInvoiceHeadAddressName: TStringField;
    cdsInvoiceHeadST_AddressName: TStringField;
    cdsInvoiceHeadST_AddressLine1: TStringField;
    cdsInvoiceHeadST_AddressLine2: TStringField;
    cdsInvoiceHeadST_AddressLine3: TStringField;
    cdsInvoiceHeadST_AddressLine4: TStringField;
    cdsInvoiceHeadST_StateOrProvince: TStringField;
    cdsInvoiceHeadST_PostalCode: TStringField;
    cdsInvoiceHeadST_CityName: TStringField;
    cdsInvoiceHeadST_CountryName: TStringField;
    cdsInvoiceHeadAGENT_ADDRESS_NAME: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE1: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE2: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE3: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE4: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_PROVINCE: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_POSTALCODE: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_CITY: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_COUNTRY: TStringField;
    cdsInvoiceHeadSearchName: TStringField;
    cdsInvoiceHeadTot_Inv_Inc_Freight_Extras: TFloatField;
    cdsInvoiceHeadSUM_FreigthCost: TFloatField;
    cdsInvoiceHeadTotal_Product_Value_No_Freight: TFloatField;
    cdsInvoiceHeadDiscount: TFloatField;
    cdsInvoiceHeadCommission: TFloatField;
    cdsInvoiceHeadCommission_and_Discount: TFloatField;
    cdsInvoiceHeadInv_Value_Deduct_Com_Dis: TFloatField;
    cdsInvoiceHeadVAT_Value: TFloatField;
    cdsInvoiceHeadInv_Value_To_Be_Paid: TFloatField;
    cdsInvoiceHeadDebit_Credit: TIntegerField;
    cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM: TFloatField;
    dsrcInvoiceHead: TDataSource;
    sq_GetInvoiceHeadData: TSQLQuery;
    sq_GetInvoiceHeadDataShippingPlanNo: TIntegerField;
    sq_GetInvoiceHeadDataCustomerNo: TIntegerField;
    sq_GetInvoiceHeadDataAgentNo: TIntegerField;
    sq_GetInvoiceHeadDataAgentCommission: TFloatField;
    sq_GetInvoiceHeadDataSendInvoiceToAgent: TIntegerField;
    sq_GetInvoiceHeadDataPaymentTermsNo: TIntegerField;
    sq_GetInvoiceHeadDataDeliveryTermsNo: TIntegerField;
    sq_GetInvoiceHeadDataDestinationNo: TIntegerField;
    sq_GetInvoiceHeadDataDestination: TStringField;
    sq_GetInvoiceHeadDataInvoiceText: TMemoField;
    sq_GetInvoiceHeadDataPaymentText: TMemoField;
    sq_GetInvoiceHeadDataCurrencyNo: TIntegerField;
    sq_GetInvoiceHeadDataClientBillingAddressNo: TIntegerField;
    sq_GetInvoiceHeadDataAddressLine1: TStringField;
    sq_GetInvoiceHeadDataAddressLine2: TStringField;
    sq_GetInvoiceHeadDataAddressLine3: TStringField;
    sq_GetInvoiceHeadDataAddressLine4: TStringField;
    sq_GetInvoiceHeadDataStateOrProvince: TStringField;
    sq_GetInvoiceHeadDataPostalCode: TStringField;
    sq_GetInvoiceHeadDataAddressCity: TStringField;
    sq_GetInvoiceHeadDataAddressCountry: TStringField;
    sq_GetInvoiceHeadDataCustomerName: TStringField;
    sq_GetInvoiceHeadDataAgentName: TStringField;
    sq_GetInvoiceHeadDataDeliveryTerm: TStringField;
    sq_GetInvoiceHeadDataLanguageCode: TIntegerField;
    sq_GetInvoiceHeadDataPayDesc: TStringField;
    sq_GetInvoiceHeadDataFreightInDiscount: TIntegerField;
    sq_GetInvoiceHeadDataFreightInCommission: TIntegerField;
    sq_GetInvoiceHeadDataCommissionPaidByCustomer: TIntegerField;
    sq_GetInvoiceHeadDataDiscount1: TFloatField;
    sq_GetInvoiceHeadDataCurrencyName: TStringField;
    sq_GetInvoiceHeadDataBILL_ADDRESS_NAME: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE1: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE2: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE3: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE4: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_PROVINCE: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_POSTALCODE: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_CITY: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_COUNTRY: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESS_NAME: TStringField;
    sq_GetInvoiceHeadDataOrderNoText: TStringField;
    sq_GetInvoiceHeadDataAGENT_ADDRESS_NAME: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE1: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE2: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE3: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE4: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_PROVINCE: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_POSTALCODE: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_CITY: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_COUNTRY: TStringField;
    sq_GetInvoiceHeadDataSearchName: TStringField;
    sq_GetInvoiceHeadDataVAT_ONINVOICE: TIntegerField;
    sq_InvoiceLO: TSQLQuery;
    sq_InvoiceLOInternalInvoiceNo: TIntegerField;
    sq_InvoiceLOShippingPlanNo: TIntegerField;
    sq_InvoiceLOOrderNoText: TStringField;
    sq_InvoiceLOReference: TStringField;
    sq_InvoiceLOOurReference: TStringField;
    sq_InvoiceLOSalesMan: TStringField;
    sq_InvoiceLOBookingNo: TIntegerField;
    sq_InvoiceLOTotalFreightCost: TFloatField;
    sq_InvoiceLOFreightCostPerUnit: TFloatField;
    sq_InvoiceLOInvoiceAdditionAmount: TFloatField;
    sq_InvoiceLOInvoiceAdditionUnitNo: TIntegerField;
    sq_InvoiceLOInvoiceAdditionDescription: TStringField;
    sq_InvoiceLOCreatedUser: TIntegerField;
    sq_InvoiceLOModifiedUser: TIntegerField;
    sq_InvoiceLODateCreated: TSQLTimeStampField;
    sq_InvoiceLOShipper: TStringField;
    sq_InvoiceLOCarrierName: TStringField;
    sq_InvoiceLOETD: TSQLTimeStampField;
    sq_InvoiceLOETA: TSQLTimeStampField;
    sq_InvoiceLOTrpID: TStringField;
    dspInvoiceLO: TDataSetProvider;
    cdsInvoiceLO: TClientDataSet;
    cdsInvoiceLOInternalInvoiceNo: TIntegerField;
    cdsInvoiceLOShippingPlanNo: TIntegerField;
    cdsInvoiceLOOrderNoText: TStringField;
    cdsInvoiceLOReference: TStringField;
    cdsInvoiceLOOurReference: TStringField;
    cdsInvoiceLOSalesMan: TStringField;
    cdsInvoiceLOBookingNo: TIntegerField;
    cdsInvoiceLOTotalFreightCost: TFloatField;
    cdsInvoiceLOFreightCostPerUnit: TFloatField;
    cdsInvoiceLOInvoiceAdditionAmount: TFloatField;
    cdsInvoiceLOInvoiceAdditionUnitNo: TIntegerField;
    cdsInvoiceLOInvoiceAdditionDescription: TStringField;
    cdsInvoiceLOCreatedUser: TIntegerField;
    cdsInvoiceLOModifiedUser: TIntegerField;
    cdsInvoiceLODateCreated: TSQLTimeStampField;
    cdsInvoiceLOShipper: TStringField;
    cdsInvoiceLOCarrierName: TStringField;
    cdsInvoiceLOETD: TSQLTimeStampField;
    cdsInvoiceLOETA: TSQLTimeStampField;
    cdsInvoiceLOTrpID: TStringField;
    dsrcInvoiceLO: TDataSource;
    sq_GetLOData: TSQLQuery;
    sq_GetLODataSTATUS: TIntegerField;
    sq_GetLODataLO: TIntegerField;
    sq_GetLODataORDERNUMBER: TStringField;
    sq_GetLODataREFERENCE: TStringField;
    sq_GetLODataOURREFERENCE: TStringField;
    sq_GetLODataSALESMAN: TStringField;
    sq_GetLODataBOOKINGNO: TIntegerField;
    sq_GetLODataADDITION_AMOUNT: TFloatField;
    sq_GetLODataADDITION_UNITNO: TIntegerField;
    sq_GetLODataADDITION_DESC: TStringField;
    sq_GetLODataSHIPPER: TStringField;
    sq_GetLODataCARRIERNAME: TStringField;
    sq_GetLODataETD: TSQLTimeStampField;
    sq_GetLODataETA: TSQLTimeStampField;
    sq_GetLODataTrpID: TStringField;
    sq_InvoiceDetail: TSQLQuery;
    sq_InvoiceDetailInternalInvoiceNo: TIntegerField;
    sq_InvoiceDetailShippingPlanNo: TIntegerField;
    sq_InvoiceDetailInvoiceDetailNo: TIntegerField;
    sq_InvoiceDetailTypeOfRow: TIntegerField;
    sq_InvoiceDetailLoadNo: TIntegerField;
    sq_InvoiceDetailLoadID: TStringField;
    sq_InvoiceDetailOrderLineNo: TIntegerField;
    sq_InvoiceDetailReference: TStringField;
    sq_InvoiceDetailProductDescription: TStringField;
    sq_InvoiceDetailProductNo: TIntegerField;
    sq_InvoiceDetailLengthDescription: TStringField;
    sq_InvoiceDetailProductLengthNo: TIntegerField;
    sq_InvoiceDetailPrice: TFloatField;
    sq_InvoiceDetailVolumeUnit: TStringField;
    sq_InvoiceDetailPriceUnit: TStringField;
    sq_InvoiceDetailProductValue: TFloatField;
    sq_InvoiceDetailVolume_OrderUnit: TFloatField;
    sq_InvoiceDetailActualThicknessMM: TFloatField;
    sq_InvoiceDetailActualWidthMM: TFloatField;
    sq_InvoiceDetailNominalThicknessMM: TFloatField;
    sq_InvoiceDetailNominalWidthMM: TFloatField;
    sq_InvoiceDetailNominalThicknessINCH: TFloatField;
    sq_InvoiceDetailNominalWidthINCH: TFloatField;
    sq_InvoiceDetailActualNetM3: TFloatField;
    sq_InvoiceDetailNominalM3: TFloatField;
    sq_InvoiceDetailLinealMeter: TFloatField;
    sq_InvoiceDetailNoOfPieces: TIntegerField;
    sq_InvoiceDetailCreatedUser: TIntegerField;
    sq_InvoiceDetailModifiedUser: TIntegerField;
    sq_InvoiceDetailDateCreated: TSQLTimeStampField;
    sq_InvoiceDetailNominalLengthMM: TFloatField;
    dspInvoiceDetail: TDataSetProvider;
    cdsInvoiceDetail: TClientDataSet;
    cdsInvoiceDetailInternalInvoiceNo: TIntegerField;
    cdsInvoiceDetailShippingPlanNo: TIntegerField;
    cdsInvoiceDetailInvoiceDetailNo: TIntegerField;
    cdsInvoiceDetailTypeOfRow: TIntegerField;
    cdsInvoiceDetailLoadNo: TIntegerField;
    cdsInvoiceDetailLoadID: TStringField;
    cdsInvoiceDetailOrderLineNo: TIntegerField;
    cdsInvoiceDetailReference: TStringField;
    cdsInvoiceDetailProductDescription: TStringField;
    cdsInvoiceDetailProductNo: TIntegerField;
    cdsInvoiceDetailLengthDescription: TStringField;
    cdsInvoiceDetailProductLengthNo: TIntegerField;
    cdsInvoiceDetailPrice: TFloatField;
    cdsInvoiceDetailVolumeUnit: TStringField;
    cdsInvoiceDetailPriceUnit: TStringField;
    cdsInvoiceDetailProductValue: TFloatField;
    cdsInvoiceDetailVolume_OrderUnit: TFloatField;
    cdsInvoiceDetailActualThicknessMM: TFloatField;
    cdsInvoiceDetailActualWidthMM: TFloatField;
    cdsInvoiceDetailNominalThicknessMM: TFloatField;
    cdsInvoiceDetailNominalWidthMM: TFloatField;
    cdsInvoiceDetailNominalThicknessINCH: TFloatField;
    cdsInvoiceDetailNominalWidthINCH: TFloatField;
    cdsInvoiceDetailActualNetM3: TFloatField;
    cdsInvoiceDetailNominalM3: TFloatField;
    cdsInvoiceDetailLinealMeter: TFloatField;
    cdsInvoiceDetailNoOfPieces: TIntegerField;
    cdsInvoiceDetailCreatedUser: TIntegerField;
    cdsInvoiceDetailModifiedUser: TIntegerField;
    cdsInvoiceDetailDateCreated: TSQLTimeStampField;
    cdsInvoiceDetailNominalLengthMM: TFloatField;
    cdsInvoiceDetailTotalInvoice: TAggregateField;
    dsrcInvoiceDetail: TDataSource;
    sq_GetInvoiceDetailData: TSQLQuery;
    sq_GetInvoiceDetailDataORDERLINENO: TIntegerField;
    sq_GetInvoiceDetailDataREFERENCE: TStringField;
    sq_GetInvoiceDetailDataPRODUCTDESCRIPTION: TStringField;
    sq_GetInvoiceDetailDataPRODUCTNO: TIntegerField;
    sq_GetInvoiceDetailDataLENGTHDESCRIPTION: TStringField;
    sq_GetInvoiceDetailDataPRODUCTLENGTHNO: TIntegerField;
    sq_GetInvoiceDetailDataPRICE: TFloatField;
    sq_GetInvoiceDetailDataVOLUMEUNIT: TStringField;
    sq_GetInvoiceDetailDataPRICEUNIT: TStringField;
    sq_GetInvoiceDetailDataVOLUME_ORDERUNIT: TFloatField;
    sq_GetInvoiceDetailDataPRODUCTVALUE: TFloatField;
    sq_GetInvoiceDetailDataActualThicknessMM: TFloatField;
    sq_GetInvoiceDetailDataActualWidthMM: TFloatField;
    sq_GetInvoiceDetailDataNominalThicknessMM: TFloatField;
    sq_GetInvoiceDetailDataNominalWidthMM: TFloatField;
    sq_GetInvoiceDetailDataNominalThicknessINCH: TStringField;
    sq_GetInvoiceDetailDataNominalWidthINCH: TStringField;
    sq_GetInvoiceDetailDataLO: TIntegerField;
    sq_GetInvoiceDetailDataNOOFPIECES: TIntegerField;
    sq_GetInvoiceDetailDataNominalThicknessMM_PG: TFloatField;
    sq_GetInvoiceDetailDataNominalWidthMM_PG: TFloatField;
    sq_GetInvoiceDetailDataNominalLengthMM: TFloatField;
    sq_GetInvoiceDetailDataNominalLengthMM_PL: TFloatField;
    sq_GetInvoiceDetailDataActualLengthMM_PL: TFloatField;
    sq_InvoiceShipTo: TSQLQuery;
    sq_InvoiceShipToInternalInvoiceNo: TIntegerField;
    sq_InvoiceShipToShippingPlanNo: TIntegerField;
    sq_InvoiceShipToReference: TStringField;
    sq_InvoiceShipToAddressNo: TIntegerField;
    dspInvoiceShipTo: TDataSetProvider;
    cdsInvoiceShipTo: TClientDataSet;
    cdsInvoiceShipToInternalInvoiceNo: TIntegerField;
    cdsInvoiceShipToShippingPlanNo: TIntegerField;
    cdsInvoiceShipToReference: TStringField;
    cdsInvoiceShipToAddressNo: TIntegerField;
    dsInvoiceShipTo: TDataSource;
    sq_InvoiceShipToAddress: TSQLQuery;
    sq_InvoiceShipToAddressInternalInvoiceNo: TIntegerField;
    sq_InvoiceShipToAddressShippingPlanNo: TIntegerField;
    sq_InvoiceShipToAddressReference: TStringField;
    sq_InvoiceShipToAddressAddressNo: TIntegerField;
    sq_InvoiceShipToAddressAddressName: TStringField;
    sq_InvoiceShipToAddressADDR: TStringField;
    sq_InvoiceShipToAddressAddressLine1: TStringField;
    sq_InvoiceShipToAddressAddressLine2: TStringField;
    sq_InvoiceShipToAddressAddressLine3: TStringField;
    sq_InvoiceShipToAddressAddressLine4: TStringField;
    sq_InvoiceShipToAddressSTATE: TStringField;
    sq_InvoiceShipToAddressPOSTAL_CODE: TStringField;
    sq_InvoiceShipToAddressCITY: TStringField;
    sq_InvoiceShipToAddressCOUNTRY: TStringField;
    dspInvoiceShipToAddress: TDataSetProvider;
    cdsInvoiceShipToAddress: TClientDataSet;
    cdsInvoiceShipToAddressReference: TStringField;
    cdsInvoiceShipToAddressAddressName: TStringField;
    cdsInvoiceShipToAddressAddressLine1: TStringField;
    cdsInvoiceShipToAddressAddressLine2: TStringField;
    cdsInvoiceShipToAddressAddressLine3: TStringField;
    cdsInvoiceShipToAddressAddressLine4: TStringField;
    cdsInvoiceShipToAddressSTATE: TStringField;
    cdsInvoiceShipToAddressPOSTAL_CODE: TStringField;
    cdsInvoiceShipToAddressCITY: TStringField;
    cdsInvoiceShipToAddressADDR: TStringField;
    cdsInvoiceShipToAddressCOUNTRY: TStringField;
    cdsInvoiceShipToAddressInternalInvoiceNo: TIntegerField;
    cdsInvoiceShipToAddressShippingPlanNo: TIntegerField;
    cdsInvoiceShipToAddressAddressNo: TIntegerField;
    dsInvoiceShipToAddress: TDataSource;
    sq_InvoiceNumber: TSQLQuery;
    sq_InvoiceNumberInvoiceNo: TIntegerField;
    sq_InvoiceNumberInternalInvoiceNo: TIntegerField;
    sq_InvoiceNumberUserCreated: TIntegerField;
    sq_InvoiceNumberUserModified: TIntegerField;
    sq_InvoiceNumberDateCreated: TSQLTimeStampField;
    dspInvoiceNumber: TDataSetProvider;
    cdsInvoiceNumber: TClientDataSet;
    cdsInvoiceNumberInvoiceNo: TIntegerField;
    cdsInvoiceNumberInternalInvoiceNo: TIntegerField;
    cdsInvoiceNumberUserCreated: TIntegerField;
    cdsInvoiceNumberUserModified: TIntegerField;
    cdsInvoiceNumberDateCreated: TSQLTimeStampField;
    dsrcInvoiceNumber: TDataSource;
    sq_AnyLoadsToInvoice: TSQLQuery;
    sq_DeleteInvoice: TSQLQuery;
    sq_GetFreightCost: TSQLQuery;
    sq_GetFreightCostFreightCost: TFloatField;
    sq_GetFreightCostFreightCostVolUnit: TIntegerField;
    sq_GetFreightCostFreightCostCurrency: TIntegerField;
    sq_GetFreightCostTemplateUnitName: TStringField;
    sq_RemoveFrom_InvLoad: TSQLQuery;
    sq_ProformaInvNo: TSQLQuery;
    dspProformaInvNo: TDataSetProvider;
    sq_ProformaInvNoProformaInvoiceNo: TIntegerField;
    sq_ProformaInvNoInternalInvoiceNo: TIntegerField;
    sq_ProformaInvNoUserCreated: TIntegerField;
    sq_ProformaInvNoUserModified: TIntegerField;
    sq_ProformaInvNoDateCreated: TSQLTimeStampField;
    cdsProformaInvNo: TClientDataSet;
    cdsProformaInvNoProformaInvoiceNo: TIntegerField;
    cdsProformaInvNoInternalInvoiceNo: TIntegerField;
    cdsProformaInvNoUserCreated: TIntegerField;
    cdsProformaInvNoUserModified: TIntegerField;
    cdsProformaInvNoDateCreated: TSQLTimeStampField;
    sq_GetInvoicedPkgs: TSQLQuery;
    sqInvoice_Load: TSQLQuery;
    sqInvoice_LoadInternalInvoiceNo: TIntegerField;
    sqInvoice_LoadLoadNo: TIntegerField;
    sqInvoice_LoadShippingPlanNo: TIntegerField;
    sqInvoice_LoadDateCreated: TSQLTimeStampField;
    sqInvoice_LoadCreatedUser: TIntegerField;
    sqInvoice_LoadModifiedUser: TIntegerField;
    dspInvoice_Load: TDataSetProvider;
    cdsInvoice_Load: TClientDataSet;
    cdsInvoice_LoadInternalInvoiceNo: TIntegerField;
    cdsInvoice_LoadLoadNo: TIntegerField;
    cdsInvoice_LoadShippingPlanNo: TIntegerField;
    cdsInvoice_LoadDateCreated: TSQLTimeStampField;
    cdsInvoice_LoadCreatedUser: TIntegerField;
    cdsInvoice_LoadModifiedUser: TIntegerField;
    sq_GetInvoicedLods: TSQLQuery;
    sq_GetInvoicedLodsLoadNo: TIntegerField;
    sq_GetInvoicedLodsShippingPlanNo: TIntegerField;
    dsProformaInvNo: TDataSource;
    sq_Invoice_Credited: TSQLQuery;
    dspInvoice_Credited: TDataSetProvider;
    cdsInvoice_Credited: TClientDataSet;
    cdsInvoice_CreditedInternalInvoiceNo: TIntegerField;
    cdsInvoice_CreditedNewInternalInvoiceNo: TIntegerField;
    cdsInvoice_CreditedDateCreated: TSQLTimeStampField;
    cdsInvoice_CreditedCreatedUser: TIntegerField;
    cdsInvoice_CreditedModifiedUser: TIntegerField;
    sq_Invoice_CreditedInternalInvoiceNo: TIntegerField;
    sq_Invoice_CreditedNewInternalInvoiceNo: TIntegerField;
    sq_Invoice_CreditedDateCreated: TSQLTimeStampField;
    sq_Invoice_CreditedCreatedUser: TIntegerField;
    sq_Invoice_CreditedModifiedUser: TIntegerField;
    sq_InvoiceHeadVAT: TStringField;
    cdsInvoiceHeadVAT: TStringField;
    sq_GetInvoiceHeadDataVAT: TStringField;
    sq_InvoiceHeadInv_Value_To_Be_Paid_2: TFloatField;
    cdsInvoiceHeadInv_Value_To_Be_Paid_2: TFloatField;
    sq_GetShipToAddress: TSQLQuery;
    sq_GetShipToAddressShippingPlanNo: TIntegerField;
    sq_GetShipToAddressAddressNo: TIntegerField;
    sq_GetShipToAddressReference: TStringField;
    sq_GetInvoiceHeadDataCustomerNoOH: TIntegerField;
    sq_GetInvoiceHeadDataDeliveryTermOH: TStringField;
    sq_GetInvoiceHeadDataPayDescOH: TStringField;
    sq_GetNextInvoiceNo: TSQLQuery;
    sq_GetNextInvoiceNoNEXT_INVNO: TIntegerField;
    sq_InvoiceGroup: TSQLQuery;
    dsp_InvoiceGroup: TDataSetProvider;
    cds_InvoiceGroup: TClientDataSet;
    cds_InvoiceGroupInvoiceGroupNo: TIntegerField;
    cds_InvoiceGroupCreatedUser: TIntegerField;
    cds_InvoiceGroupModifiedUser: TIntegerField;
    cds_InvoiceGroupCreatedDate: TSQLTimeStampField;
    cds_InvoiceGroupModifiedDate: TSQLTimeStampField;
    cds_InvoiceInGroup: TClientDataSet;
    cds_InvoiceInGroupInvoiceGroupNo: TIntegerField;
    dsp_InvoiceInGroup: TDataSetProvider;
    sq_InvoiceInGroup: TSQLQuery;
    sq_BookingData: TSQLQuery;
    dsp_BookingData: TDataSetProvider;
    cdsBookingData: TClientDataSet;
    ds_BookingData: TDataSource;
    sq_GetLODataADDITION_PRICEUNIT: TStringField;
    sq_InvoiceHeadQuickInvoice: TIntegerField;
    cdsInvoiceHeadQuickInvoice: TIntegerField;
    sq_Att_Ext_ServicesII: TSQLQuery;
    dsp_Att_Ext_ServicesII: TDataSetProvider;
    cds_Att_Ext_ServicesII: TClientDataSet;
    ds_Att_Ext_ServicesII: TDataSource;
    sq_Att_Ext_ServicesIIInternalInvoiceNo: TIntegerField;
    sq_Att_Ext_ServicesIISequensNo: TIntegerField;
    sq_Att_Ext_ServicesIIDescription: TStringField;
    sq_Att_Ext_ServicesIISupplier_InvoiceNo: TStringField;
    sq_Att_Ext_ServicesIISupplier_InvoiceDate: TSQLTimeStampField;
    sq_Att_Ext_ServicesIIAmount: TFloatField;
    sq_Att_Ext_ServicesIICurrencyNo: TIntegerField;
    sq_Att_Ext_ServicesIISupplierNo: TIntegerField;
    sq_Att_Ext_ServicesIINote: TMemoField;
    sq_Att_Ext_ServicesIICreatedDate: TSQLTimeStampField;
    sq_Att_Ext_ServicesIICreatedUser: TIntegerField;
    sq_Att_Ext_ServicesIIModifiedDate: TSQLTimeStampField;
    sq_Att_Ext_ServicesIIModifiedUser: TIntegerField;
    cds_Att_Ext_ServicesIIInternalInvoiceNo: TIntegerField;
    cds_Att_Ext_ServicesIISequensNo: TIntegerField;
    cds_Att_Ext_ServicesIIDescription: TStringField;
    cds_Att_Ext_ServicesIISupplier_InvoiceNo: TStringField;
    cds_Att_Ext_ServicesIISupplier_InvoiceDate: TSQLTimeStampField;
    cds_Att_Ext_ServicesIIAmount: TFloatField;
    cds_Att_Ext_ServicesIICurrencyNo: TIntegerField;
    cds_Att_Ext_ServicesIISupplierNo: TIntegerField;
    cds_Att_Ext_ServicesIINote: TMemoField;
    cds_Att_Ext_ServicesIICreatedDate: TSQLTimeStampField;
    cds_Att_Ext_ServicesIICreatedUser: TIntegerField;
    cds_Att_Ext_ServicesIIModifiedDate: TSQLTimeStampField;
    cds_Att_Ext_ServicesIIModifiedUser: TIntegerField;
    cds_Att_Ext_ServicesIISUPPLIER: TStringField;
    sq_Currency: TSQLQuery;
    dsp_Currency: TDataSetProvider;
    cds_Currency: TClientDataSet;
    sq_CurrencyCurrencyNo: TIntegerField;
    sq_CurrencyCurrencyName: TStringField;
    sq_CurrencyDateCreated: TSQLTimeStampField;
    sq_CurrencyCreatedUser: TIntegerField;
    sq_CurrencyModifiedUser: TIntegerField;
    sq_CurrencySequenceNo: TIntegerField;
    cds_CurrencyCurrencyNo: TIntegerField;
    cds_CurrencyCurrencyName: TStringField;
    cds_CurrencyDateCreated: TSQLTimeStampField;
    cds_CurrencyCreatedUser: TIntegerField;
    cds_CurrencyModifiedUser: TIntegerField;
    cds_CurrencySequenceNo: TIntegerField;
    ds_Currency: TDataSource;
    sq_Att_Ext_ServicesIIShippingPlanNo: TIntegerField;
    cds_Att_Ext_ServicesIIShippingPlanNo: TIntegerField;
    cds_Att_Ext_ServicesIICURRENCY: TStringField;
    dsp_PurchaseInvNo: TDataSetProvider;
    cds_PurchaseInvNo: TClientDataSet;
    sq_PurchaseInvNo: TSQLQuery;
    sq_PurchaseInvNoPO_InvoiceNo: TIntegerField;
    sq_PurchaseInvNoInternalInvoiceNo: TIntegerField;
    sq_PurchaseInvNoUserCreated: TIntegerField;
    sq_PurchaseInvNoUserModified: TIntegerField;
    sq_PurchaseInvNoDateCreated: TSQLTimeStampField;
    cds_PurchaseInvNoPO_InvoiceNo: TIntegerField;
    cds_PurchaseInvNoInternalInvoiceNo: TIntegerField;
    cds_PurchaseInvNoUserCreated: TIntegerField;
    cds_PurchaseInvNoUserModified: TIntegerField;
    cds_PurchaseInvNoDateCreated: TSQLTimeStampField;
    ds_PurchaseInvNo: TDataSource;
    sq_InvoiceInGroupInvoiceGroupNo: TIntegerField;
    sq_GetLoadID: TSQLQuery;
    sq_GetLoadIDLoadID: TStringField;
    sq_VolUnit: TSQLQuery;
    sq_VolUnitVolumeUnit_No: TIntegerField;
    sq_VolUnitVolumeUnitName: TStringField;
    sq_PriceUnit: TSQLQuery;
    sq_PriceUnitTemplateUnitNo: TIntegerField;
    sq_PriceUnitTemplateUnitName: TStringField;
    sq_InvoiceList: TSQLQuery;
    sq_InvoiceListINT_INVNO: TIntegerField;
    sq_InvoiceListINV_DATE: TSQLTimeStampField;
    sq_InvoiceListAGENT: TStringField;
    sq_InvoiceListSHIPPER: TStringField;
    sq_InvoiceListCUSTOMER: TStringField;
    sq_InvoiceListLO: TIntegerField;
    sq_InvoiceListINVOICE_NO: TIntegerField;
    sq_InvoiceListINVOICE_TYPE: TStringField;
    sq_InvoiceListINVOICE_KONTO: TStringField;
    sq_InvoiceListTO_BE_PAID: TFloatField;
    sq_InvoiceListCURRENCY: TStringField;
    sq_InvoiceListLine_ID: TStringField;
    dspInvoiceList: TDataSetProvider;
    cdsInvoiceList: TClientDataSet;
    cdsInvoiceListINT_INVNO: TIntegerField;
    cdsInvoiceListINV_DATE: TSQLTimeStampField;
    cdsInvoiceListAGENT: TStringField;
    cdsInvoiceListSHIPPER: TStringField;
    cdsInvoiceListCUSTOMER: TStringField;
    cdsInvoiceListLO: TIntegerField;
    cdsInvoiceListINVOICE_NO: TIntegerField;
    cdsInvoiceListINVOICE_TYPE: TStringField;
    cdsInvoiceListINVOICE_KONTO: TStringField;
    cdsInvoiceListTO_BE_PAID: TFloatField;
    cdsInvoiceListCURRENCY: TStringField;
    cdsInvoiceListLine_ID: TStringField;
    dsInvoiceList: TDataSource;
    sq_Invoiced_Load: TSQLQuery;
    sp_DeleteST_Data: TSQLStoredProc;
    sq_PkgType_Invoice: TSQLQuery;
    cdsBookingDataBOOKING_ID: TStringField;
    cdsBookingDataSUPP_REFERENCE: TStringField;
    cdsBookingDataSHIPPER: TStringField;
    cdsBookingDataREADYDATE: TStringField;
    cdsBookingDataVESSEL: TStringField;
    cdsBookingDataETD: TSQLTimeStampField;
    cdsBookingDataETA: TSQLTimeStampField;
    cdsBookingDataFREIGHTCOST: TFloatField;
    cdsBookingDataFREIGHT_UNIT: TStringField;
    cdsBookingDataFREIGHT_CURRENCY: TStringField;
    sq_InvoiceHeadStickyNote: TStringField;
    cdsInvoiceHeadStickyNote: TStringField;
    sq_GetInvoiceDetailDataCustShipPlanDetailObjectNo: TIntegerField;
    sq_InvoiceDetailCustShipPlanDetailObjectNo: TIntegerField;
    cdsInvoiceDetailCustShipPlanDetailObjectNo: TIntegerField;
    sq_InvDtl_Att: TSQLQuery;
    sq_InvDtl_AttInternalInvoiceNo: TIntegerField;
    sq_InvDtl_AttShippingPlanNo: TIntegerField;
    sq_InvDtl_AttInvoiceDetailNo: TIntegerField;
    sq_InvDtl_AttTypeOfRow: TIntegerField;
    sq_InvDtl_AttLoadNo: TIntegerField;
    sq_InvDtl_AttLoadID: TStringField;
    sq_InvDtl_AttOrderLineNo: TIntegerField;
    sq_InvDtl_AttReference: TStringField;
    sq_InvDtl_AttProductDescription: TStringField;
    sq_InvDtl_AttProductNo: TIntegerField;
    sq_InvDtl_AttLengthDescription: TStringField;
    sq_InvDtl_AttProductLengthNo: TIntegerField;
    sq_InvDtl_AttPrice: TFloatField;
    sq_InvDtl_AttVolumeUnit: TStringField;
    sq_InvDtl_AttPriceUnit: TStringField;
    sq_InvDtl_AttProductValue: TFloatField;
    sq_InvDtl_AttVolume_OrderUnit: TFloatField;
    sq_InvDtl_AttActualThicknessMM: TFloatField;
    sq_InvDtl_AttActualWidthMM: TFloatField;
    sq_InvDtl_AttNominalThicknessMM: TFloatField;
    sq_InvDtl_AttNominalWidthMM: TFloatField;
    sq_InvDtl_AttNominalThicknessINCH: TFloatField;
    sq_InvDtl_AttNominalWidthINCH: TFloatField;
    sq_InvDtl_AttActualNetM3: TFloatField;
    sq_InvDtl_AttNominalM3: TFloatField;
    sq_InvDtl_AttLinealMeter: TFloatField;
    sq_InvDtl_AttNoOfPieces: TIntegerField;
    sq_InvDtl_AttCreatedUser: TIntegerField;
    sq_InvDtl_AttModifiedUser: TIntegerField;
    sq_InvDtl_AttDateCreated: TSQLTimeStampField;
    sq_InvDtl_AttNominalLengthMM: TFloatField;
    sq_InvDtl_AttCustShipPlanDetailObjectNo: TIntegerField;
    dsp_InvDtl_Att: TDataSetProvider;
    cds_InvDtl_Att: TClientDataSet;
    cds_InvDtl_AttInternalInvoiceNo: TIntegerField;
    cds_InvDtl_AttShippingPlanNo: TIntegerField;
    cds_InvDtl_AttInvoiceDetailNo: TIntegerField;
    cds_InvDtl_AttTypeOfRow: TIntegerField;
    cds_InvDtl_AttReference: TStringField;
    cds_InvDtl_AttProductDescription: TStringField;
    cds_InvDtl_AttLengthDescription: TStringField;
    cds_InvDtl_AttPrice: TFloatField;
    cds_InvDtl_AttVolumeUnit: TStringField;
    cds_InvDtl_AttPriceUnit: TStringField;
    cds_InvDtl_AttProductValue: TFloatField;
    cds_InvDtl_AttVolume_OrderUnit: TFloatField;
    cds_InvDtl_AttActualNetM3: TFloatField;
    cds_InvDtl_AttNominalM3: TFloatField;
    cds_InvDtl_AttLinealMeter: TFloatField;
    cds_InvDtl_AttNoOfPieces: TIntegerField;
    cds_InvDtl_AttTotalInvoice: TAggregateField;
    ds_InvDtl_Att: TDataSource;
    sq_AttestRow: TSQLQuery;
    dsp_AttestRow: TDataSetProvider;
    cds_AttestRow: TClientDataSet;
    sq_AttestRowInternalInvoiceNo: TIntegerField;
    sq_AttestRowShippingPlanNo: TIntegerField;
    sq_AttestRowSequensNo: TIntegerField;
    sq_AttestRowinvoicedetailno: TIntegerField;
    cds_AttestRowInternalInvoiceNo: TIntegerField;
    cds_AttestRowShippingPlanNo: TIntegerField;
    cds_AttestRowSequensNo: TIntegerField;
    cds_AttestRowinvoicedetailno: TIntegerField;
    sq_Ins_AttestRow: TSQLQuery;
    sq_Del_AttestRow: TSQLQuery;
    mt_InvDtl_Att: TkbmMemTable;
    mt_InvDtl_AttInternalInvoiceNo: TIntegerField;
    mt_InvDtl_AttShippingPlanNo: TIntegerField;
    mt_InvDtl_AttInvoiceDetailNo: TIntegerField;
    mt_InvDtl_AttTypeOfRow: TIntegerField;
    mt_InvDtl_AttReference: TStringField;
    mt_InvDtl_AttProductDescription: TStringField;
    mt_InvDtl_AttLengthDescription: TStringField;
    mt_InvDtl_AttPrice: TFloatField;
    mt_InvDtl_AttVolumeUnit: TStringField;
    mt_InvDtl_AttPriceUnit: TStringField;
    mt_InvDtl_AttProductValue: TFloatField;
    mt_InvDtl_AttVolume_OrderUnit: TFloatField;
    mt_InvDtl_AttActualNetM3: TFloatField;
    mt_InvDtl_AttNominalM3: TFloatField;
    mt_InvDtl_AttLinealMeter: TFloatField;
    mt_InvDtl_AttNoOfPieces: TIntegerField;
    mt_AttestRow: TkbmMemTable;
    mt_AttestRowInternalInvoiceNo: TIntegerField;
    mt_AttestRowShippingPlanNo: TIntegerField;
    mt_AttestRowSequensNo: TIntegerField;
    mt_AttestRowInvoiceDetailNo: TIntegerField;
    mt_InvDtl_AttSequensNo: TIntegerField;
    mt_InvDtl_AttChecked: TIntegerField;
    sq_GetAttestRow: TSQLQuery;
    sq_GetAttestRowInternalInvoiceNo: TIntegerField;
    sq_GetAttestRowShippingPlanNo: TIntegerField;
    sq_GetAttestRowSequensNo: TIntegerField;
    sq_GetAttestRowinvoicedetailno: TIntegerField;
    ds_mt_AttestRow: TDataSource;
    sq_Att_Ext_ServicesIIQuick_InvoiceNo: TIntegerField;
    cds_Att_Ext_ServicesIIQuick_InvoiceNo: TIntegerField;
    sq_InvAttested: TSQLQuery;
    sq_InvAttestedSequensNo: TIntegerField;
    sq_SearchLONo: TSQLQuery;
    sq_SearchLONoInternalInvoiceNo: TIntegerField;
    sq_InvoiceHead_II: TSQLQuery;
    sq_InvoiceHead_IIInternalInvoiceNo: TIntegerField;
    sq_InvoiceHead_IIInvoiceType: TIntegerField;
    sq_InvoiceHead_IIInvoiceDate: TSQLTimeStampField;
    sq_InvoiceHead_IISupplierNo: TIntegerField;
    sq_InvoiceHead_IICustomerNo: TIntegerField;
    sq_InvoiceHead_IIAgentNo: TIntegerField;
    sq_InvoiceHead_IIAgentCommission: TFloatField;
    sq_InvoiceHead_IISendInvoiceToAgent: TIntegerField;
    sq_InvoiceHead_IIPaymentTermsNo: TIntegerField;
    sq_InvoiceHead_IICommissionPaidByCustomer: TIntegerField;
    sq_InvoiceHead_IIDeliveryTermsNo: TIntegerField;
    sq_InvoiceHead_IIDestinationNo: TIntegerField;
    sq_InvoiceHead_IIStatus: TIntegerField;
    sq_InvoiceHead_IINote: TMemoField;
    sq_InvoiceHead_IIInvoiceText: TMemoField;
    sq_InvoiceHead_IIPaymentText: TMemoField;
    sq_InvoiceHead_IICurrencyNo: TIntegerField;
    sq_InvoiceHead_IIIncome_Account: TStringField;
    sq_InvoiceHead_IICustomerRecivablesAccount: TStringField;
    sq_InvoiceHead_IIVAT_OnInvoice: TIntegerField;
    sq_InvoiceHead_IIClientBillingAddressNo: TIntegerField;
    sq_InvoiceHead_IIAddressLine1: TStringField;
    sq_InvoiceHead_IIAddressLine2: TStringField;
    sq_InvoiceHead_IIAddressLine3: TStringField;
    sq_InvoiceHead_IIAddressLine4: TStringField;
    sq_InvoiceHead_IIStateOrProvince: TStringField;
    sq_InvoiceHead_IIPostalCode: TStringField;
    sq_InvoiceHead_IICityName: TStringField;
    sq_InvoiceHead_IICountryName: TStringField;
    sq_InvoiceHead_IICreatedUser: TIntegerField;
    sq_InvoiceHead_IIModifiedUser: TIntegerField;
    sq_InvoiceHead_IIDateCreated: TSQLTimeStampField;
    sq_InvoiceHead_IIAgentName: TStringField;
    sq_InvoiceHead_IICustomerName: TStringField;
    sq_InvoiceHead_IIDeliveryTerm: TStringField;
    sq_InvoiceHead_IIPaymentDescription: TStringField;
    sq_InvoiceHead_IILanguageCode: TIntegerField;
    sq_InvoiceHead_IIDestination: TStringField;
    sq_InvoiceHead_IIFreightInDiscount: TIntegerField;
    sq_InvoiceHead_IIFreightInCommission: TIntegerField;
    sq_InvoiceHead_IIDiscount1: TFloatField;
    sq_InvoiceHead_IICurrencyName: TStringField;
    sq_InvoiceHead_IIAddressName: TStringField;
    sq_InvoiceHead_IIST_AddressName: TStringField;
    sq_InvoiceHead_IIST_AddressLine1: TStringField;
    sq_InvoiceHead_IIST_AddressLine2: TStringField;
    sq_InvoiceHead_IIST_AddressLine3: TStringField;
    sq_InvoiceHead_IIST_AddressLine4: TStringField;
    sq_InvoiceHead_IIST_StateOrProvince: TStringField;
    sq_InvoiceHead_IIST_PostalCode: TStringField;
    sq_InvoiceHead_IIST_CityName: TStringField;
    sq_InvoiceHead_IIST_CountryName: TStringField;
    sq_InvoiceHead_IIAGENT_ADDRESS_NAME: TStringField;
    sq_InvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE1: TStringField;
    sq_InvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE2: TStringField;
    sq_InvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE3: TStringField;
    sq_InvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE4: TStringField;
    sq_InvoiceHead_IIAGENT_SHIPTO_PROVINCE: TStringField;
    sq_InvoiceHead_IIAGENT_SHIPTO_POSTALCODE: TStringField;
    sq_InvoiceHead_IIAGENT_SHIPTO_CITY: TStringField;
    sq_InvoiceHead_IIAGENT_SHIPTO_COUNTRY: TStringField;
    sq_InvoiceHead_IISearchName: TStringField;
    sq_InvoiceHead_IITot_Inv_Inc_Freight_Extras: TFloatField;
    sq_InvoiceHead_IISUM_FreigthCost: TFloatField;
    sq_InvoiceHead_IITotal_Product_Value_No_Freight: TFloatField;
    sq_InvoiceHead_IIDiscount: TFloatField;
    sq_InvoiceHead_IICommission: TFloatField;
    sq_InvoiceHead_IICommission_and_Discount: TFloatField;
    sq_InvoiceHead_IIInv_Value_Deduct_Com_Dis: TFloatField;
    sq_InvoiceHead_IIVAT_Value: TFloatField;
    sq_InvoiceHead_IIInv_Value_To_Be_Paid: TFloatField;
    sq_InvoiceHead_IIDebit_Credit: TIntegerField;
    sq_InvoiceHead_IIInv_Value_After_Deduct_DIS_COMM: TFloatField;
    sq_InvoiceHead_IIVAT: TStringField;
    sq_InvoiceHead_IIInv_Value_To_Be_Paid_2: TFloatField;
    sq_InvoiceHead_IIQuickInvoice: TIntegerField;
    sq_InvoiceHead_IIStickyNote: TStringField;
    dspInvoiceHead_II: TDataSetProvider;
    cdsInvoiceHead_II: TClientDataSet;
    cdsInvoiceHead_IIInternalInvoiceNo: TIntegerField;
    cdsInvoiceHead_IIInvoiceType: TIntegerField;
    cdsInvoiceHead_IIInvoiceDate: TSQLTimeStampField;
    cdsInvoiceHead_IISupplierNo: TIntegerField;
    cdsInvoiceHead_IICustomerNo: TIntegerField;
    cdsInvoiceHead_IIAgentNo: TIntegerField;
    cdsInvoiceHead_IIAgentCommission: TFloatField;
    cdsInvoiceHead_IISendInvoiceToAgent: TIntegerField;
    cdsInvoiceHead_IIPaymentTermsNo: TIntegerField;
    cdsInvoiceHead_IICommissionPaidByCustomer: TIntegerField;
    cdsInvoiceHead_IIDeliveryTermsNo: TIntegerField;
    cdsInvoiceHead_IIDestinationNo: TIntegerField;
    cdsInvoiceHead_IIStatus: TIntegerField;
    cdsInvoiceHead_IINote: TMemoField;
    cdsInvoiceHead_IIInvoiceText: TMemoField;
    cdsInvoiceHead_IIPaymentText: TMemoField;
    cdsInvoiceHead_IICurrencyNo: TIntegerField;
    cdsInvoiceHead_IIIncome_Account: TStringField;
    cdsInvoiceHead_IICustomerRecivablesAccount: TStringField;
    cdsInvoiceHead_IIVAT_OnInvoice: TIntegerField;
    cdsInvoiceHead_IIClientBillingAddressNo: TIntegerField;
    cdsInvoiceHead_IIAddressName: TStringField;
    cdsInvoiceHead_IIAddressLine1: TStringField;
    cdsInvoiceHead_IIAddressLine2: TStringField;
    cdsInvoiceHead_IIAddressLine3: TStringField;
    cdsInvoiceHead_IIAddressLine4: TStringField;
    cdsInvoiceHead_IIStateOrProvince: TStringField;
    cdsInvoiceHead_IIPostalCode: TStringField;
    cdsInvoiceHead_IICityName: TStringField;
    cdsInvoiceHead_IICountryName: TStringField;
    cdsInvoiceHead_IICreatedUser: TIntegerField;
    cdsInvoiceHead_IIModifiedUser: TIntegerField;
    cdsInvoiceHead_IIDateCreated: TSQLTimeStampField;
    cdsInvoiceHead_IIAgentName: TStringField;
    cdsInvoiceHead_IICustomerName: TStringField;
    cdsInvoiceHead_IIDeliveryTerm: TStringField;
    cdsInvoiceHead_IIPaymentDescription: TStringField;
    cdsInvoiceHead_IILanguageCode: TIntegerField;
    cdsInvoiceHead_IIDestination: TStringField;
    cdsInvoiceHead_IIFreightInDiscount: TIntegerField;
    cdsInvoiceHead_IIFreightInCommission: TIntegerField;
    cdsInvoiceHead_IIDiscount1: TFloatField;
    cdsInvoiceHead_IICurrencyName: TStringField;
    cdsInvoiceHead_IIST_AddressName: TStringField;
    cdsInvoiceHead_IIST_AddressLine1: TStringField;
    cdsInvoiceHead_IIST_AddressLine2: TStringField;
    cdsInvoiceHead_IIST_AddressLine3: TStringField;
    cdsInvoiceHead_IIST_AddressLine4: TStringField;
    cdsInvoiceHead_IIST_StateOrProvince: TStringField;
    cdsInvoiceHead_IIST_PostalCode: TStringField;
    cdsInvoiceHead_IIST_CityName: TStringField;
    cdsInvoiceHead_IIST_CountryName: TStringField;
    cdsInvoiceHead_IIAGENT_ADDRESS_NAME: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE1: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE2: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE3: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE4: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_PROVINCE: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_POSTALCODE: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_CITY: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_COUNTRY: TStringField;
    cdsInvoiceHead_IISearchName: TStringField;
    cdsInvoiceHead_IITot_Inv_Inc_Freight_Extras: TFloatField;
    cdsInvoiceHead_IISUM_FreigthCost: TFloatField;
    cdsInvoiceHead_IITotal_Product_Value_No_Freight: TFloatField;
    cdsInvoiceHead_IIDiscount: TFloatField;
    cdsInvoiceHead_IICommission: TFloatField;
    cdsInvoiceHead_IICommission_and_Discount: TFloatField;
    cdsInvoiceHead_IIInv_Value_Deduct_Com_Dis: TFloatField;
    cdsInvoiceHead_IIVAT_Value: TFloatField;
    cdsInvoiceHead_IIInv_Value_To_Be_Paid: TFloatField;
    cdsInvoiceHead_IIDebit_Credit: TIntegerField;
    cdsInvoiceHead_IIInv_Value_After_Deduct_DIS_COMM: TFloatField;
    cdsInvoiceHead_IIVAT: TStringField;
    cdsInvoiceHead_IIInv_Value_To_Be_Paid_2: TFloatField;
    cdsInvoiceHead_IIQuickInvoice: TIntegerField;
    cdsInvoiceHead_IIStickyNote: TStringField;
    dsrcInvoiceHead_II: TDataSource;
    sq_InvoiceInGroupInternalInvoiceNo: TIntegerField;
    cds_InvoiceInGroupInternalInvoiceNo: TIntegerField;
    sq_InvoiceDetailNoOfPkgs: TIntegerField;
    cdsInvoiceDetailNoOfPkgs: TIntegerField;
    sq_GetInvoiceDetailDataNOOFPKGS: TIntegerField;
    sq_updInvPkgDtl: TSQLQuery;
    sp_vida_Populate_SamFaktura: TSQLStoredProc;
    cds_InvoiceGroupOriginalInvNos: TStringField;
    cds_InvoiceGroupOrdernos: TStringField;
    cds_InvoiceGroupInvoiceText: TMemoField;
    cds_InvoiceGroupAddressName: TStringField;
    cds_InvoiceGroupAddressLine1: TStringField;
    cds_InvoiceGroupAddressLine2: TStringField;
    cds_InvoiceGroupAddressLine3: TStringField;
    cds_InvoiceGroupAddressLine4: TStringField;
    cds_InvoiceGroupStateOrProvince: TStringField;
    cds_InvoiceGroupPostalCode: TStringField;
    cds_InvoiceGroupCityName: TStringField;
    cds_InvoiceGroupCountryName: TStringField;
    cds_InvoiceGroupCustomerName: TStringField;
    cds_InvoiceGroupAgentname: TStringField;
    cds_InvoiceGroupST_AddressName: TStringField;
    cds_InvoiceGroupST_CityName: TStringField;
    cds_InvoiceGroupCarrierName: TStringField;
    cds_InvoiceGroupETD: TSQLTimeStampField;
    cds_InvoiceGroupETA: TSQLTimeStampField;
    cds_InvoiceGroupPaymentText: TMemoField;
    cds_InvoiceGroupDeliveryTerm: TStringField;
    cds_InvoiceGroupPaymentDescription: TStringField;
    cds_InvoiceGroupCurrencyName: TStringField;
    cds_InvoiceGroupSearchName: TStringField;
    cds_InvoiceGroupSUM_FreigthCost: TFloatField;
    cds_InvoiceGroupTotal_Product_Value_No_Freight: TFloatField;
    cds_InvoiceGroupInv_Value_To_Be_Paid_2: TFloatField;
    ds_InvoiceGroup: TDataSource;
    sq_GetInvoiceDetailDataOL_Reference: TStringField;
    sq_InvoiceDetailOL_Reference: TStringField;
    cdsInvoiceDetailOL_Reference: TStringField;
    sq_GetInvoiceDetailDataM3ACTUAL: TFloatField;
    sq_GetInvoiceDetailDataM3NOMINAL: TFloatField;
    sq_GetInvoiceDetailDataACTUAL_LINEALMETER: TFloatField;
    sq_InvoiceHeadSalesOrgNo: TStringField;
    cdsInvoiceHeadSalesOrgNo: TStringField;
    sq_GetInvoiceHeadDataSalesOrgNo: TStringField;
    sqFWInvNo: TSQLQuery;
    dspFWInvNo: TDataSetProvider;
    cdsFWInvNo: TClientDataSet;
    sqFWInvNoInvoiceNo: TIntegerField;
    sqFWInvNoInternalInvoiceNo: TIntegerField;
    cdsFWInvNoInvoiceNo: TIntegerField;
    cdsFWInvNoInternalInvoiceNo: TIntegerField;
    sq_InvoiceListCustomerNo: TIntegerField;
    cdsInvoiceListCustomerNo: TIntegerField;
    sq_SearchLoadNo: TSQLQuery;
    sq_SearchLoadNoInternalInvoiceNo: TIntegerField;
    sq_SearchLoadNoInvoiceType: TIntegerField;
    sq_InvoiceListNM3: TFloatField;
    sq_InvoiceListAM3: TFloatField;
    sq_InvoiceListKUND_NM3: TFloatField;
    sq_InvoiceListKONT_UNIT: TFloatField;
    cdsInvoiceListNM3: TFloatField;
    cdsInvoiceListAM3: TFloatField;
    cdsInvoiceListKUND_NM3: TFloatField;
    cdsInvoiceListKONT_UNIT: TFloatField;
    sq_GetInvTexts: TSQLQuery;
    sq_GetInvTextsDocText: TMemoField;
    sq_GetInvoiceHeadDataOrderNo: TIntegerField;
    sq_GetClientInvTexts: TSQLQuery;
    sq_GetClientInvTextsDocText: TMemoField;
    procedure cdsInvoiceHeadReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsInvoiceLOReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsInvoiceDetailReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsInvoiceShipToReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsInvoiceNumberReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsInvoice_LoadReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsInvoice_CreditedReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cds_Att_Ext_ServicesIIAfterInsert(DataSet: TDataSet);
    procedure cds_Att_Ext_ServicesIIReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cds_Att_Ext_ServicesIIPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure cdsBookingDataReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DataModuleCreate(Sender: TObject);
    procedure cds_AttestRowReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_Att_Ext_ServicesIIAfterScroll(DataSet: TDataSet);
    procedure cds_Att_Ext_ServicesIIBeforeDelete(DataSet: TDataSet);
    procedure cdsInvoiceDetailVolume_OrderUnitChange(Sender: TField);
    procedure dspInvoiceShipToAddressGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cdsInvoiceShipToAddressReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
  private
    { Private declarations }
    procedure AssignNormalInvoiceNumber(const InternalInvoiceNo : Integer) ;
    function  AssignProformaInvoiceNumber(const InternalInvoiceNo : Integer) : Integer ;
    function  AssignProFormaInvoiceNumberAndMovePkg(const InternalInvoiceNo : Integer) : Integer ;
    function  AssignPurchaseInvoiceNumber(const InternalInvoiceNo : Integer) : Integer ;
  public
    { Public declarations }
    AttestChanged: Boolean ;
    Supplier_InvoiceNo : String ;
    CurrencyNo, SupplierNo : Integer ;
    Supplier_InvoiceDate : TDateTime ;
    Description, Note : String ;
    fInternalInvoiceNo : Integer ;
    fActive : Integer ;
    Function  Get_InternalInvoiceNo (Var InvoiceType : Integer;const LoadNo : Integer) : Integer ;
    function  CreateCreditInvoiceByCopyDebitInvoice(const InternalInvoiceNo : Integer) : Integer ;
    procedure AssignInvoiceNumber(const InternalInvoiceNo : Integer) ;
    procedure RefreshCHECKED ;
    procedure AllRows ;
    procedure AllLORows ;
    function  InvoiceAttested(const Quick_InvoiceNo : Integer) : Integer ;
    function  SearchLONo(const LONo, InvoiceType : Integer) : Integer ;
    Function  GetInvoiceDocTextByOrderNo(const OrderNo : Integer) : Variant ;
    Function  GetInvoiceTextByClient(const ClientNo : Integer) : Variant ;
  end;

var
  dmVidaInvoice: TdmVidaInvoice;

implementation

Uses dmsDataConn, recerror, UnitEnterInvoiceNo,   VidaConst, VidaUser,
  fMoveInvPkgToInventory, dmc_ArrivingLoads, 
  dmsVidaContact ;
{$R *.dfm}


procedure TdmVidaInvoice.cdsInvoiceHeadReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmVidaInvoice.cdsInvoiceLOReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmVidaInvoice.cdsInvoiceDetailReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmVidaInvoice.cdsInvoiceShipToReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmVidaInvoice.cdsInvoiceNumberReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmVidaInvoice.AssignInvoiceNumber(const InternalInvoiceNo : Integer) ;
Begin
 case cdsInvoiceHeadInvoiceType.AsInteger of
   NORMAL_INVOICE                       : AssignNormalInvoiceNumber(InternalInvoiceNo) ;
   PROFORMA_REAL_INVOICE_LATER          : AssignProFormaInvoiceNumber(InternalInvoiceNo) ;
   PROFORMA_MOVE_PKGS_TO_INVENTORY      : AssignProFormaInvoiceNumberAndMovePkg(InternalInvoiceNo) ;
   PURCHASE_INVOICE                     : AssignPurchaseInvoiceNumber(InternalInvoiceNo) ;
 End ;
End ;



procedure TdmVidaInvoice.AssignNormalInvoiceNumber(const InternalInvoiceNo : Integer) ;
Var mrResult : Word ;
FormEnterInvoiceNo : TFormEnterInvoiceNo ;

Function GetInvNo : Integer ;
Begin
 sq_GetNextInvoiceNo.Close ;
 sq_GetNextInvoiceNo.Open ;
 Result:= sq_GetNextInvoiceNoNEXT_INVNO.AsInteger ;
 sq_GetNextInvoiceNo.Close ;
End ;

Begin
// Result:= -1 ;
 with dmVidaInvoice do
 Begin

  if cdsInvoiceNumber.Locate('InternalInvoiceNo',InternalInvoiceNo,[]) then
  Begin
//   Result:= 1 ; //Invoice Number Record already exist
   showmessage('Invoice number already assigned');
   Exit ;
  End
  else
  Begin
   mrResult := MessageDlg('Klicka Yes för att generera Faktura numret automatiskt, klicka No för att mata in manuellt faktura nummer ',
    mtConfirmation, [mbYes, mbNo, mbCancel], 0) ;
  if mrResult = mrNo then
   Begin
    FormEnterInvoiceNo:= TFormEnterInvoiceNo.Create(Nil) ;
    Try
    FormEnterInvoiceNo.Caption:= 'Enter Invoice number' ;
    if FormEnterInvoiceNo.ShowModal = MrOK then
    Begin;
     cdsInvoiceNumber.Insert ;
     Try
     cdsInvoiceNumberInternalInvoiceNo.AsInteger:= InternalInvoiceNo ;

     cdsInvoiceNumberInvoiceNo.AsInteger:= StrToInt(FormEnterInvoiceNo.Edit1.Text) ;
     cdsInvoiceNumberUserCreated.AsInteger:= ThisUser.UserID ;
     cdsInvoiceNumberUserModified.AsInteger:= ThisUser.UserID ;
     cdsInvoiceNumberDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
     cdsInvoiceNumber.Post ;
     cdsInvoiceNumber.ApplyUpdates(0) ;
     Except
     End ;

//     Result:= 1 ;
    End ;
//     else
//      Result:= 0 ;

    Finally
     FormEnterInvoiceNo.Free ;
    End ;
   End //Manual invoice number entry
   else
   if mrResult = mrYes then
   Begin //Auto invoice number
    if MessageDlg('Automatiskt Faktura nummer, fortsätta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
     cdsInvoiceNumber.Insert ;
     Try
     cdsInvoiceNumberInternalInvoiceNo.AsInteger:= InternalInvoiceNo ;

     cdsInvoiceNumberInvoiceNo.AsInteger:= GetInvNo ;
     cdsInvoiceNumberUserCreated.AsInteger:= ThisUser.UserID ;
     cdsInvoiceNumberUserModified.AsInteger:= ThisUser.UserID ;
     cdsInvoiceNumberDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
     cdsInvoiceNumber.Post ;
     cdsInvoiceNumber.ApplyUpdates(0) ;
     Except

     End ;

//     Result:= 0 ;
//     Result:= 1 ;
    End ;
   End ;

  End ;//else

 End ; //with
End ;

function TdmVidaInvoice.AssignProFormaInvoiceNumber(const InternalInvoiceNo : Integer) : Integer ;
Var
TdmArrivingLoadsWasAssigned : Boolean ;
FormEnterInvoiceNo : TFormEnterInvoiceNo ;
formfMoveInvPkgToInventory: TformfMoveInvPkgToInventory ;
Begin
 Result:= -1 ;
 TdmArrivingLoadsWasAssigned:= True ;
 with dmVidaInvoice do
 Begin
  if cdsProformaInvNo.Locate('InternalInvoiceNo',InternalInvoiceNo,[]) then
  Begin
   Result:= 1 ; //Invoice Number Record already exist
   showmessage('Proforma Invoice number already generated and assigned');
   Exit ;
  End
  else
  Begin
    FormEnterInvoiceNo:= TFormEnterInvoiceNo.Create(Nil) ;
    formfMoveInvPkgToInventory:= TformfMoveInvPkgToInventory.Create(Nil);
    if not Assigned(dmArrivingLoads) then
    Begin
     TdmArrivingLoadsWasAssigned:= False ;
     dmArrivingLoads:= TdmArrivingLoads.Create(Nil);
    End ;
    Try
    formfMoveInvPkgToInventory.InternalInvoiceNo:= InternalInvoiceNo ;
    formfMoveInvPkgToInventory.ShowModal ;

    FormEnterInvoiceNo.Caption:= 'Enter Proforma Invoice number' ;
    if FormEnterInvoiceNo.ShowModal = MrOK then
    Begin;

     cdsProformaInvNo.Insert ;
     cdsProformaInvNoInternalInvoiceNo.AsInteger:= InternalInvoiceNo ;

     cdsProformaInvNoProformaInvoiceNo.AsInteger:= StrToInt(FormEnterInvoiceNo.Edit1.Text) ;
     cdsProformaInvNoUserCreated.AsInteger:= ThisUser.UserID ;
     cdsProformaInvNoUserModified.AsInteger:= ThisUser.UserID ;
     cdsProformaInvNoDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
     cdsProformaInvNo.Post ;
     cdsProformaInvNo.ApplyUpdates(-1) ;

     Result:= 0 ;
    End ;
    Finally
     FreeAndNil(formfMoveInvPkgToInventory) ;//.Free ;
     FreeAndNil(FormEnterInvoiceNo) ;//.Free ;
     if TdmArrivingLoadsWasAssigned = false then
     FreeAndNil(dmArrivingLoads) ;//.Free ;

    End ;
  End ;



 End ; //with
End ;

function TdmVidaInvoice.AssignPurchaseInvoiceNumber(const InternalInvoiceNo : Integer) : Integer ;
//Var TdmArrivingLoadsWasAssigned : Boolean ;
Var FormEnterInvoiceNo : TFormEnterInvoiceNo ;
Begin
 Result:= -1 ;
// TdmArrivingLoadsWasAssigned:= True ;
 with dmVidaInvoice do
 Begin
  if cds_PurchaseInvNo.Locate('InternalInvoiceNo',InternalInvoiceNo,[]) then
  Begin
   Result:= 1 ; //Invoice Number Record already exist
   showmessage('Purchase Invoice number already generated and assigned');
   Exit ;
  End
  else
  Begin
    FormEnterInvoiceNo:= TFormEnterInvoiceNo.Create(Nil) ;

    Try
    FormEnterInvoiceNo.Caption:= 'Enter Purchase Invoice number' ;
    if FormEnterInvoiceNo.ShowModal = MrOK then
    Begin;

     cds_PurchaseInvNo.Insert ;
     cds_PurchaseInvNoInternalInvoiceNo.AsInteger:= InternalInvoiceNo ;

     cds_PurchaseInvNoPO_InvoiceNo.AsInteger:= StrToInt(FormEnterInvoiceNo.Edit1.Text) ;
     cds_PurchaseInvNoUserCreated.AsInteger:= ThisUser.UserID ;
     cds_PurchaseInvNoUserModified.AsInteger:= ThisUser.UserID ;
     cds_PurchaseInvNoDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
     cds_PurchaseInvNo.Post ;
     cds_PurchaseInvNo.ApplyUpdates(-1) ;

     Result:= 0 ;
    End ;
    Finally
     FormEnterInvoiceNo.Free ;
    End ;
  End ;



 End ; //with
End ;

function TdmVidaInvoice.AssignProFormaInvoiceNumberAndMovePkg(const InternalInvoiceNo : Integer) : Integer ;
Var
TdmArrivingLoadsWasAssigned : Boolean ;
formfMoveInvPkgToInventory: TformfMoveInvPkgToInventory ;
Begin
 Result:= -1 ;
 TdmArrivingLoadsWasAssigned:= True ;
 with dmVidaInvoice do
 Begin
  if cdsProformaInvNo.Locate('InternalInvoiceNo',InternalInvoiceNo,[]) then
  Begin
   Result:= 1 ; //Invoice Number Record already exist
   showmessage('Proforma Invoice number already generated and assigned');
   Exit ;
  End
  else
  Begin
    if not Assigned(dmArrivingLoads) then
    Begin
     TdmArrivingLoadsWasAssigned:= False ;
     dmArrivingLoads:= TdmArrivingLoads.Create(Nil);
    End ;

    formfMoveInvPkgToInventory:= TformfMoveInvPkgToInventory.Create(Nil);
    Try
    formfMoveInvPkgToInventory.InternalInvoiceNo:= InternalInvoiceNo ;
    formfMoveInvPkgToInventory.LO_CUSTOMERNO := cdsInvoiceHeadCustomerNo.AsInteger ;
    formfMoveInvPkgToInventory.ShowModal ;

    Finally
     FreeAndNil(formfMoveInvPkgToInventory) ;//.Free ;
     if TdmArrivingLoadsWasAssigned = false then
     FreeAndNil(dmArrivingLoads) ;//.Free ;

//     FormEnterInvoiceNo.Free ;
    End ;
  End ;

 End ; //with
End ;

function TdmVidaInvoice.CreateCreditInvoiceByCopyDebitInvoice(const InternalInvoiceNo : Integer) : Integer ;
Var
 NewInternalInvoiceNo, i,x       : Integer ;
 InvoiceHead                     : Array of variant ;
 InvoiceLO                       : Array of array of variant ;
 InvoiceDetail                   : Array of array of variant ;
 InvoiceShipTo                   : Array of array of variant ;
 Trans1                          : TTransactionDesc ;
 myRollBack                      : Boolean ;
Begin
  Result:= -1 ;
  NewInternalInvoiceNo:= 0 ;
  myRollBack:= False ;
  cdsInvoiceNumber.Active:= True ;
  NewInternalInvoiceNo:= dmsConnector.NextMaxNo('InvoiceHeader') ;

//START A TRANSACTION
  Trans1.TransactionID:= 1 ;
  Trans1.IsolationLevel:= xilREADCOMMITTED ;
  dmsConnector.SQLConnection.StartTransaction(Trans1);
  Try

//  if AssignNormalInvoiceNumber(NewInternalInvoiceNo) = 1 then
//  Begin

  cdsInvoiceHead.Active:= False ;
  sq_InvoiceHead.Close ;
  sq_InvoiceHead.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
  sq_InvoiceHead.Open ;
  cdsInvoiceHead.Active:= True ;


  SetLength(InvoiceHead, cdsInvoiceHead.FieldCount) ;
  for i:= 0 to cdsInvoiceHead.FieldCount-1 do
  Begin
   InvoiceHead[i]:= cdsInvoiceHead.Fields[i].Value ;
  End ;


  cdsInvoiceHead.Append ;
  For i := 0 to cdsInvoiceHead.FieldCount-1 do
  cdsInvoiceHead.Fields[i].Value := InvoiceHead[i] ;
  cdsInvoiceHead.FieldByName('InternalInvoiceNo').AsInteger:= NewInternalInvoiceNo ; //dmsConnector.NextIDinTable('InvoiceHeader') ;
  cdsInvoiceHead.FieldByName('InvoiceType').AsInteger:= NORMAL_INVOICE ;
  cdsInvoiceHead.FieldByName('Debit_Credit').AsInteger:= cCredit ;
  cdsInvoiceHead.FieldByName('ModifiedUser').AsInteger:= ThisUser.UserID ;
  cdsInvoiceHead.FieldByName('CreatedUser').AsInteger:= ThisUser.UserID ;
  cdsInvoiceHead.FieldByName('DateCreated').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
  cdsInvoiceHeadInvoiceDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Date) ;
  cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat:= cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat * (-1) ;
  cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM.AsFloat:= cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM.AsFloat * (-1) ;
  cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat * (-1) ;
  cdsInvoiceHeadVAT_Value.AsFloat:= cdsInvoiceHeadVAT_Value.AsFloat * (-1) ;
  cdsInvoiceHeadCommission_and_Discount.AsFloat:= cdsInvoiceHeadCommission_and_Discount.AsFloat * (-1) ;
  cdsInvoiceHeadCommission.AsFloat:= cdsInvoiceHeadCommission.AsFloat * (-1) ;
  cdsInvoiceHeadDiscount.AsFloat:= cdsInvoiceHeadDiscount.AsFloat * (-1) ;
  cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat:= cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (-1) ;
  cdsInvoiceHeadSUM_FreigthCost.AsFloat:= cdsInvoiceHeadSUM_FreigthCost.AsFloat * (-1) ;
  cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat:= cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (-1) ;


  cdsInvoiceHead.Post ;


//copy and insert InvoiceLO
  sq_InvoiceLO.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
  cdsInvoiceLO.Active:= True ;
  cdsInvoiceLO.First ;
  x:= 1 ;
  While not cdsInvoiceLO.Eof do
  Begin
   SetLength(InvoiceLO, x) ;

   SetLength(InvoiceLO[x-1], cdsInvoiceLO.FieldCount) ;

   for i:= 0 to cdsInvoiceLO.FieldCount-1 do
   Begin
    InvoiceLO[x-1,i]:= cdsInvoiceLO.Fields[i].Value ;
   End ;
   x:= succ(x) ;
   cdsInvoiceLO.Next ;
  End ;

//  cdsInvoiceLO.Active:= True ;

  For x := Low(InvoiceLO) to High(InvoiceLO) do
  Begin
   cdsInvoiceLO.Append ;
   For i := 0 to cdsInvoiceLO.FieldCount-1 do
   cdsInvoiceLO.Fields[i].Value:= InvoiceLO[x,i] ;
   cdsInvoiceLO.FieldByName('InternalInvoiceNo').AsInteger:= cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
   cdsInvoiceLO.FieldByName('ModifiedUser').AsInteger:= ThisUser.UserID ;
   cdsInvoiceLO.FieldByName('CreatedUser').AsInteger:= ThisUser.UserID ;
   cdsInvoiceLO.FieldByName('DateCreated').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
   cdsInvoiceLO.Post ;
  End ;



//copy and insert InvoiceDetail
  sq_InvoiceDetail.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
  cdsInvoiceDetail.Active:= True ;
  cdsInvoiceDetail.First ;
  x:= 1 ;
  While not cdsInvoiceDetail.Eof do
  Begin
   SetLength(InvoiceDetail, x) ;

   SetLength(InvoiceDetail[x-1], cdsInvoiceDetail.FieldCount) ;

   for i:= 0 to cdsInvoiceDetail.FieldCount-1 do
   Begin
    InvoiceDetail[x-1,i]:= cdsInvoiceDetail.Fields[i].Value ;
   End ;
   x:= succ(x) ;
   cdsInvoiceDetail.Next ;
  End ;

  cdsInvoiceDetail.Active:= False ;
  cdsInvoiceDetail.Active:= True ;

  For x := Low(InvoiceDetail) to High(InvoiceDetail) do
  Begin
   cdsInvoiceDetail.Append ;
   For i := 0 to cdsInvoiceDetail.FieldCount-1 do
   cdsInvoiceDetail.Fields[i].Value:= InvoiceDetail[x,i] ;
   cdsInvoiceDetail.FieldByName('InternalInvoiceNo').AsInteger:= cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
   cdsInvoiceDetail.FieldByName('ModifiedUser').AsInteger:= ThisUser.UserID ;
   cdsInvoiceDetail.FieldByName('CreatedUser').AsInteger:= ThisUser.UserID ;
   cdsInvoiceDetail.FieldByName('DateCreated').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
   cdsInvoiceDetailProductValue.AsFloat:= cdsInvoiceDetailProductValue.AsFloat * (-1) ;
   cdsInvoiceDetail.Post ;
  End ;



//copy and insert InvoiceDetail
  sq_InvoiceShipTo.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
  cdsInvoiceShipTo.Active:= True ;
  cdsInvoiceShipTo.First ;
  x:= 1 ;
  While not cdsInvoiceShipTo.Eof do
  Begin
   SetLength(InvoiceShipTo, x) ;

   SetLength(InvoiceShipTo[x-1], cdsInvoiceShipTo.FieldCount) ;

   for i:= 0 to cdsInvoiceShipTo.FieldCount-1 do
   Begin
    InvoiceShipTo[x-1,i]:= cdsInvoiceShipTo.Fields[i].Value ;
   End ;
   x:= succ(x) ;
   cdsInvoiceShipTo.Next ;
  End ;

  For x := Low(InvoiceShipTo) to High(InvoiceShipTo) do
  Begin
   cdsInvoiceShipTo.Append ;
   For i := 0 to cdsInvoiceShipTo.FieldCount-1 do
   cdsInvoiceShipTo.Fields[i].Value:= InvoiceShipTo[x,i] ;
   cdsInvoiceShipTo.FieldByName('InternalInvoiceNo').AsInteger:= cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
   cdsInvoiceShipTo.Post ;
  End ;


  cdsInvoice_Credited.Active:= True ;
  cdsInvoice_Credited.Insert ;
  cdsInvoice_CreditedInternalInvoiceNo.AsInteger:= InternalInvoiceNo ;
  cdsInvoice_CreditedNewInternalInvoiceNo.AsInteger:= cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
  cdsInvoice_CreditedModifiedUser.AsInteger:= ThisUser.UserID ;
  cdsInvoice_CreditedCreatedUser.AsInteger:= ThisUser.UserID ;
  cdsInvoice_CreditedDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
  cdsInvoice_Credited.Post ;

  if cdsInvoiceHead.ChangeCount > 0 then
   if cdsInvoiceHead.ApplyUpdates(0) > 0 then myRollBack := True ;

  if cdsInvoiceLO.ChangeCount > 0 then
   if cdsInvoiceLO.ApplyUpdates(0) > 0 then myRollBack := True ;

  if cdsInvoiceDetail.ChangeCount > 0 then
   if cdsInvoiceDetail.ApplyUpdates(0) > 0 then myRollBack := True ;

  if cdsInvoiceShipTo.ChangeCount > 0 then
   if cdsInvoiceShipTo.ApplyUpdates(0) > 0 then myRollBack := True ;

  if cdsInvoice_Credited.ChangeCount > 0 then
   if cdsInvoice_Credited.ApplyUpdates(0) > 0 then myRollBack := True ;


  sq_RemoveFrom_InvLoad.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
  sq_RemoveFrom_InvLoad.ExecSQL(False) ;

  if myRollBack = True then
  Begin
   dmsConnector.SQLConnection.Rollback(Trans1) ;
   ShowMessage('Error confirming, operation rollbacked') ;
//   NewInternalInvoiceNo:= 0 ;
  End
  else
  Begin
   dmsConnector.SQLConnection.Commit(Trans1) ;
   Result:= NewInternalInvoiceNo ;
  End ;



  Except
   dmsConnector.SQLConnection.Rollback(Trans1);
//   NewInternalInvoiceNo:= 0 ;
  End ;


  cdsInvoiceNumber.Active:= False ;

end ;


procedure TdmVidaInvoice.cdsInvoice_LoadReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmVidaInvoice.cdsInvoice_CreditedReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmVidaInvoice.cds_Att_Ext_ServicesIIAfterInsert(
  DataSet: TDataSet);
begin
 cds_Att_Ext_ServicesIIInternalInvoiceNo.AsInteger:= cdsInvoiceHead_IIInternalInvoiceNo.AsInteger ;
 cds_Att_Ext_ServicesIIShippingPlanNo.AsInteger:= cdsInvoiceLOShippingPlanNo.AsInteger ;
 cds_Att_Ext_ServicesIISequensNo.AsInteger:= dmsConnector.NextMaxNo('Att_Ext_Services') ;
 cds_Att_Ext_ServicesIICreatedUser.AsInteger:= ThisUser.UserID ;
 cds_Att_Ext_ServicesIIModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_Att_Ext_ServicesIICreatedDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 cds_Att_Ext_ServicesIIModifiedDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 cds_Att_Ext_ServicesIICurrencyNo.AsInteger:= 10001 ;
end;

procedure TdmVidaInvoice.cds_Att_Ext_ServicesIIReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 if Dataset.FieldByName('CurrencyNo').AsInteger < 1 then
 Begin
  ShowMessage('Currency is required!') ;
  Action:= raSkip ;
//  frmAtt_Ext_Services.FocusControl(frmAtt_Ext_Services.dxDBLookupCURRENCY);
 End ;

 if Dataset.FieldByName('SupplierNo').AsInteger < 1 then
 Begin
  ShowMessage('Supplier is required!') ;
  Action:= raSkip ;
//  frmAtt_Ext_Services.FocusControl(frmAtt_Ext_Services.dxDBLookupSUPPLIER);
 End ;


end;

procedure TdmVidaInvoice.cds_Att_Ext_ServicesIIPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
 if Dataset.FieldByName('CurrencyNo').AsInteger < 1 then
 Begin
  ShowMessage('Currency is required!') ;
  Action:= daFail ;
 End ;

end;

procedure TdmVidaInvoice.cdsBookingDataReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmVidaInvoice.DataModuleCreate(Sender: TObject);
begin
 fInternalInvoiceNo:= -1 ;
end;

procedure TdmVidaInvoice.cds_AttestRowReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmVidaInvoice.cds_Att_Ext_ServicesIIAfterScroll(
  DataSet: TDataSet);
begin
 Try
  mt_InvDtl_Att.DisableControls ;
  RefreshCHECKED ;
 Finally
  mt_InvDtl_Att.EnableControls ;
 End ;
end;

//Uppdaterar SequensNo och Checked kolumn i invoice details
procedure TdmVidaInvoice.RefreshCHECKED ;
begin
 mt_InvDtl_Att.First ;
 While not mt_InvDtl_Att.Eof do
 Begin
  mt_InvDtl_Att.Edit ;
  mt_InvDtl_AttSequensNo.AsInteger:= 0 ;
  mt_InvDtl_AttChecked.AsInteger:= 0 ;
  mt_InvDtl_Att.Post ;
  mt_InvDtl_Att.Next ;
 End ;

{  dmVidaInvoice.cds_InvDtl_Att.Active:= False ;
  dmVidaInvoice.sq_InvDtl_Att.Close ;
  dmVidaInvoice.sq_InvDtl_Att.ParamByName('InternalInvoiceNo').AsInteger:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger ;
  dmVidaInvoice.sq_InvDtl_Att.ParamByName('ShippingPlanNo').AsInteger:= cds_Att_Ext_ServicesIIShippingPlanNo.AsInteger ;
  dmVidaInvoice.sq_InvDtl_Att.ParamByName('Sequensno').AsInteger:= dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger ;
  dmVidaInvoice.cds_InvDtl_Att.Active:= True ; }

  if dmVidaInvoice.cds_Att_Ext_ServicesII.RecordCount > 0 then
  Begin
   mt_AttestRow.Filter:= 'InternalInvoiceNo = '+dmVidaInvoice.cds_Att_Ext_ServicesIIInternalInvoiceNo.AsString+
   ' AND SequensNo = '+dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsString ;
   mt_AttestRow.Filtered:= True ;
   mt_AttestRow.First ;
   While not mt_AttestRow.Eof do
   Begin
    if mt_InvDtl_Att.FindKey([mt_AttestRowInternalInvoiceNo.AsInteger,
    mt_AttestRowShippingPlanNo.AsInteger,
    mt_AttestRowInvoiceDetailNo.AsInteger]) then
    Begin
     mt_InvDtl_Att.Edit ;
     mt_InvDtl_AttSequensNo.AsInteger:= mt_AttestRowSequensNo.AsInteger ;
     mt_InvDtl_AttChecked.AsInteger:= 1 ;
     mt_InvDtl_Att.Post ;
    End ;
    mt_AttestRow.Next ;
   End ; //while
 end;//if
end ;

procedure TdmVidaInvoice.cds_Att_Ext_ServicesIIBeforeDelete(
  DataSet: TDataSet);
begin
 Try
//  mt_AttestRow.Filter:= 'InternalInvoiceNo = '+mt_InvDtl_AttInternalInvoiceNo.AsString ;
//  mt_AttestRow.Filtered:= True ;
  mt_AttestRow.First ;
  While not mt_AttestRow.Eof do
   mt_AttestRow.Delete ;

 Finally
//    mt_AttestRow.Filter:= 'InternalInvoiceNo = '+dmVidaInvoice.cds_Att_Ext_ServicesIIInternalInvoiceNo.AsString+
//   ' AND SequensNo = '+dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsString ;
 End ;
end;

procedure TdmVidaInvoice.AllRows ;
begin
 With dmVidaInvoice do
 Begin
  Try
  mt_InvDtl_Att.Filter:= 'TypeOfRow = 1' ;
  mt_InvDtl_Att.Filtered:= True ;
  mt_InvDtl_Att.First ;

//  mt_AttestRow.Filter:= 'InternalInvoiceNo = '+mt_InvDtl_AttInternalInvoiceNo.AsString ;
//  mt_AttestRow.Filtered:= True ;
  mt_AttestRow.First ;
  While not mt_AttestRow.Eof do
   mt_AttestRow.Delete ;

  While not mt_InvDtl_Att.Eof do
  Begin
    mt_AttestRow.Insert ;
    mt_AttestRowInternalInvoiceNo.AsInteger:= mt_InvDtl_AttInternalInvoiceNo.AsInteger ;
    mt_AttestRowShippingPlanNo.AsInteger:= mt_InvDtl_AttShippingPlanNo.AsInteger ;
    mt_AttestRowSequensNo.AsInteger:= dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger ;
    mt_AttestRowInvoiceDetailNo.AsInteger:= mt_InvDtl_AttInvoiceDetailNo.AsInteger ;
    mt_AttestRow.Post ;
    mt_InvDtl_Att.Next ;
  End ;

  Finally
    dmVidaInvoice.mt_InvDtl_Att.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHead_IIInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = '+cdsInvoiceLOShippingPlanNo.AsString ;

    mt_InvDtl_Att.Filtered:= True ;
    RefreshCHECKED ;
    AttestChanged:= True ;
  End ;
 End ;//With
end;

procedure TdmVidaInvoice.AllLORows ;
begin
 With dmVidaInvoice do
 Begin
  Try
  mt_InvDtl_Att.Filter:= 'TypeOfRow = 1'+
  ' AND ShippingPlanNo = '+mt_InvDtl_AttShippingPlanNo.AsString ;
  mt_InvDtl_Att.Filtered:= True ;
  mt_InvDtl_Att.First ;

//  mt_AttestRow.Filter:= 'InternalInvoiceNo = '+mt_InvDtl_AttInternalInvoiceNo.AsString ;
//  mt_AttestRow.Filtered:= True ;
  mt_AttestRow.First ;
  While not mt_AttestRow.Eof do
   mt_AttestRow.Delete ;

  While not mt_InvDtl_Att.Eof do
  Begin
    mt_AttestRow.Insert ;
    mt_AttestRowInternalInvoiceNo.AsInteger:= mt_InvDtl_AttInternalInvoiceNo.AsInteger ;
    mt_AttestRowShippingPlanNo.AsInteger:= mt_InvDtl_AttShippingPlanNo.AsInteger ;
    mt_AttestRowSequensNo.AsInteger:= dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger ;
    mt_AttestRowInvoiceDetailNo.AsInteger:= mt_InvDtl_AttInvoiceDetailNo.AsInteger ;
    mt_AttestRow.Post ;
    mt_InvDtl_Att.Next ;
  End ;

  Finally
    dmVidaInvoice.mt_InvDtl_Att.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHead_IIInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = '+cdsInvoiceLOShippingPlanNo.AsString ;

    mt_InvDtl_Att.Filtered:= True ;
    RefreshCHECKED ;
    AttestChanged:= True ;
  End ;
 End ;//With
end;

function TdmVidaInvoice.InvoiceAttested(const Quick_InvoiceNo : Integer) : Integer ;
Begin
 sq_InvAttested.ParamByName('Quick_InvoiceNo').AsInteger:= Quick_InvoiceNo ;
 sq_InvAttested.Open ;
 Result := sq_InvAttestedSequensNo.AsInteger ;
 sq_InvAttested.Close ;
End ;

function TdmVidaInvoice.SearchLONo(const LONo, InvoiceType : Integer) : Integer ;
Begin
 sq_SearchLONo.ParamByName('ShippingPlanNo').AsInteger:= LONo ;
 sq_SearchLONo.ParamByName('InvoiceType').AsInteger:= InvoiceType ;
 sq_SearchLONo.Open ;
 if sq_SearchLONoInternalInvoiceNo.AsInteger > 0 then
 Result:= sq_SearchLONoInternalInvoiceNo.AsInteger
 else
 Result:= -1 ;
 sq_SearchLONo.Close ;
End ;

Function TdmVidaInvoice.Get_InternalInvoiceNo (Var InvoiceType : Integer;const LoadNo : Integer) : Integer ;
Begin
 sq_SearchLoadNo.Close ;
 sq_SearchLoadNo.ParamByName('LoadNo').AsInteger:= LoadNo ;
 sq_SearchLoadNo.Open ;
 if not sq_SearchLoadNo.Eof then
  Begin
   Result:= sq_SearchLoadNoInternalInvoiceNo.AsInteger ;
   InvoiceType:= sq_SearchLoadNoInvoiceType.AsInteger ;
  End
   else
    Begin
     Result:= -1 ;
     InvoiceType:= -1 ;
    End ;
 sq_SearchLoadNo.Close ;
End ;


procedure TdmVidaInvoice.cdsInvoiceDetailVolume_OrderUnitChange(
  Sender: TField);
begin
 if cdsInvoiceHeadQuickInvoice.AsInteger = 1 then
  cdsInvoiceDetailProductValue.AsFloat:= cdsInvoiceDetailVolume_OrderUnit.AsFloat * cdsInvoiceDetailPrice.AsFloat ;
end;

Function TdmVidaInvoice.GetInvoiceDocTextByOrderNo(const OrderNo : Integer) : Variant ;
Begin
 Result:= '' ;
 sq_GetInvTexts.Close ;
 sq_GetInvTexts.ParamByName('OrderNo').AsInteger:= OrderNo ;
 sq_GetInvTexts.Open ;
 if not sq_GetInvTexts.Eof then
  Result:= sq_GetInvTextsDocText.AsVariant ;
 sq_GetInvTexts.Close ;
End ;

Function TdmVidaInvoice.GetInvoiceTextByClient(const ClientNo : Integer) : Variant ;
Begin
 Result:= '' ;
 sq_GetClientInvTexts.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sq_GetClientInvTexts.Open ;
 sq_GetClientInvTexts.First ;
 if not sq_GetClientInvTexts.Eof then
  Result:= sq_GetClientInvTextsDocText.AsVariant ;
 sq_GetClientInvTexts.Close ;
End ;


procedure TdmVidaInvoice.dspInvoiceShipToAddressGetTableName(
  Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'InvoiceShipToAddress' ; 
end;

procedure TdmVidaInvoice.cdsInvoiceShipToAddressReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

end.
