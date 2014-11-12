unit dmcVidaInvoice;

interface


uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr,   Controls, Dialogs,
  DBXpress, SqlTimSt, kbmMemTable, ComCtrls, Variants, QExport3,
  QExport3XLS, QExport3ASCII ;



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
    dsInvoiceList: TDataSource;
    sq_Invoiced_Load: TSQLQuery;
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
    sq_InvoiceHeadTrading: TIntegerField;
    cdsInvoiceHeadTrading: TIntegerField;
    sq_GetInvoiceHeadDataTrading: TIntegerField;
    sq_GetPaymentText: TSQLQuery;
    sq_GetPaymentTextPaymentText: TMemoField;
    sq_InvoiceListFrsljReg: TStringField;
    sq_InvoiceListSljGrupp: TStringField;
    cdsInvoiceListFrsljReg: TStringField;
    cdsInvoiceListSljGrupp: TStringField;
    sq_InvoiceHeadResponsibleSeller: TIntegerField;
    cdsInvoiceHeadResponsibleSeller: TIntegerField;
    sq_GetInvoiceHeadDataResponsibleSeller: TIntegerField;
    mtInvoiceType: TkbmMemTable;
    mtInvoiceTypeInvoiceTypeNo: TIntegerField;
    mtInvoiceTypeInvoiceTypeName: TStringField;
    dsInvoiceType: TDataSource;
    cdsInvoiceHeadSR: TStringField;
    sq_GetInvoiceHeadDataDestinationText: TStringField;
    sq_InvoiceHeadDestinationText: TStringField;
    cdsInvoiceHeadDestinationText: TStringField;
    sqUSAInvNo: TSQLQuery;
    sqUSAInvNoInvoiceNo: TIntegerField;
    sqUSAInvNoInternalInvoiceNo: TIntegerField;
    dspUSAInvNo: TDataSetProvider;
    cdsUSAInvNo: TClientDataSet;
    cdsUSAInvNoInvoiceNo: TIntegerField;
    cdsUSAInvNoInternalInvoiceNo: TIntegerField;
    sq_NoOfInvoices: TSQLQuery;
    dsp_NoOfInvoices: TDataSetProvider;
    cds_NoOfInvoices: TClientDataSet;
    ds_NoOfInvoices: TDataSource;
    cds_NoOfInvoicesFakturnr: TIntegerField;
    cds_NoOfInvoicesLO: TIntegerField;
    cds_NoOfInvoicesFakturadatum: TSQLTimeStampField;
    cds_NoOfInvoicesInternalInvoiceNo: TIntegerField;
    sq_DelPkgTypeByIntInv: TSQLQuery;
    sp_GetNextProformaInvNo: TSQLStoredProc;
    sq_DeletePkgTypeLoad: TSQLQuery;
    sq_InvoiceHeadIncludeFreightCostInPrice: TIntegerField;
    cdsInvoiceHeadIncludeFreightCostInPrice: TIntegerField;
    sq_LoadPackages: TSQLQuery;
    sq_LoadPackagesLoadNo: TIntegerField;
    sq_LoadPackagesLoadDetailNo: TIntegerField;
    sq_LoadPackagesShippingPlanNo: TIntegerField;
    sq_LoadPackagesPRODUCT: TStringField;
    sq_LoadPackagesPACKAGENO: TIntegerField;
    sq_LoadPackagesNoOfPackages: TIntegerField;
    sq_LoadPackagesPACKAGETYPENO: TIntegerField;
    sq_LoadPackagesSupplierCode: TStringField;
    sq_LoadPackagesPackageOK: TWordField;
    sq_LoadPackagesProblemPackageLog: TStringField;
    sq_LoadPackagesCreatedUser: TIntegerField;
    sq_LoadPackagesModifiedUser: TIntegerField;
    sq_LoadPackagesDateCreated: TSQLTimeStampField;
    sq_LoadPackagesM3_NET: TFloatField;
    sq_LoadPackagesPCS: TIntegerField;
    sq_LoadPackagesM3_NOM: TFloatField;
    sq_LoadPackagesMFBM: TFloatField;
    sq_LoadPackagesKVM: TFloatField;
    sq_LoadPackagesLOPM: TFloatField;
    sq_LoadPackagesProductNo: TIntegerField;
    sq_LoadPackagesDefaultCustShipObjectNo: TIntegerField;
    sq_LoadPackagesPCS_PER_LENGTH: TStringField;
    sq_LoadPackagesNoOfLengths: TIntegerField;
    sq_LoadPackagesProductLengthNo: TIntegerField;
    sq_LoadPackagesALMM: TFloatField;
    sq_LoadPackagesActualThicknessMM: TFloatField;
    sq_LoadPackagesActualWidthMM: TFloatField;
    sq_LoadPackagesSurfacingNo: TIntegerField;
    sq_LoadPackagesSpeciesNo: TIntegerField;
    sq_LoadPackagesMainGradeNo: TIntegerField;
    sq_LoadPackagesOverrideMatch: TIntegerField;
    sq_LoadPackagesLIPNo: TIntegerField;
    sq_LoadPackagesPkg_State: TIntegerField;
    sq_LoadPackagesPkg_Function: TIntegerField;
    sq_LoadPackagesChanged: TIntegerField;
    sq_LoadPackagesDefsspno: TIntegerField;
    sq_LoadPackagesOverrideRL: TIntegerField;
    dsp_LoadPackages: TDataSetProvider;
    cds_LoadPackages: TClientDataSet;
    cds_LoadPackagesLoadNo: TIntegerField;
    cds_LoadPackagesLoadDetailNo: TIntegerField;
    cds_LoadPackagesShippingPlanNo: TIntegerField;
    cds_LoadPackagesPRODUCT: TStringField;
    cds_LoadPackagesPACKAGENO: TIntegerField;
    cds_LoadPackagesNoOfPackages: TIntegerField;
    cds_LoadPackagesPACKAGETYPENO: TIntegerField;
    cds_LoadPackagesSupplierCode: TStringField;
    cds_LoadPackagesPackageOK: TSmallintField;
    cds_LoadPackagesProblemPackageLog: TStringField;
    cds_LoadPackagesCreatedUser: TIntegerField;
    cds_LoadPackagesModifiedUser: TIntegerField;
    cds_LoadPackagesDateCreated: TSQLTimeStampField;
    cds_LoadPackagesM3_NET: TFloatField;
    cds_LoadPackagesPCS: TIntegerField;
    cds_LoadPackagesM3_NOM: TFloatField;
    cds_LoadPackagesMFBM: TFloatField;
    cds_LoadPackagesKVM: TFloatField;
    cds_LoadPackagesLOPM: TFloatField;
    cds_LoadPackagesProductNo: TIntegerField;
    cds_LoadPackagesDefaultCustShipObjectNo: TIntegerField;
    cds_LoadPackagesPCS_PER_LENGTH: TStringField;
    cds_LoadPackagesNoOfLengths: TIntegerField;
    cds_LoadPackagesProductLengthNo: TIntegerField;
    cds_LoadPackagesALMM: TFloatField;
    cds_LoadPackagesActualThicknessMM: TFloatField;
    cds_LoadPackagesActualWidthMM: TFloatField;
    cds_LoadPackagesSurfacingNo: TIntegerField;
    cds_LoadPackagesSpeciesNo: TIntegerField;
    cds_LoadPackagesMainGradeNo: TIntegerField;
    cds_LoadPackagesOverrideMatch: TIntegerField;
    cds_LoadPackagesLIPNo: TIntegerField;
    cds_LoadPackagesPkg_State: TIntegerField;
    cds_LoadPackagesPkg_Function: TIntegerField;
    cds_LoadPackagesChanged: TIntegerField;
    cds_LoadPackagesDefsspno: TIntegerField;
    cds_LoadPackagesOverrideRL: TIntegerField;
    ds_LoadPackages2: TDataSource;
    sq_CopyLSP: TSQLQuery;
    sq_CopyLSPLoadNo: TIntegerField;
    sq_CopyLSPShippingPlanNo: TIntegerField;
    sq_CopyLSPConfirmedByReciever: TIntegerField;
    sq_CopyLSPConfirmedBySupplier: TIntegerField;
    sq_CopyLSPCreatedUser: TIntegerField;
    sq_CopyLSPModifiedUser: TIntegerField;
    sq_CopyLSPDateCreated: TSQLTimeStampField;
    sq_CopyLSPInvoiced: TIntegerField;
    sq_CopyLSPLoadingLocationNo: TIntegerField;
    sq_CopyLSPShipToInvPointNo: TIntegerField;
    dsp_CopyLSP: TDataSetProvider;
    cds_CopyLSP: TClientDataSet;
    cds_CopyLSPLoadNo: TIntegerField;
    cds_CopyLSPShippingPlanNo: TIntegerField;
    cds_CopyLSPConfirmedByReciever: TIntegerField;
    cds_CopyLSPConfirmedBySupplier: TIntegerField;
    cds_CopyLSPCreatedUser: TIntegerField;
    cds_CopyLSPModifiedUser: TIntegerField;
    cds_CopyLSPDateCreated: TSQLTimeStampField;
    cds_CopyLSPInvoiced: TIntegerField;
    cds_CopyLSPLoadingLocationNo: TIntegerField;
    cds_CopyLSPShipToInvPointNo: TIntegerField;
    sq_CopyLD: TSQLQuery;
    sq_CopyLDLoadDetailNo: TIntegerField;
    sq_CopyLDLoadNo: TIntegerField;
    sq_CopyLDShippingPlanNo: TIntegerField;
    sq_CopyLDPackageNo: TIntegerField;
    sq_CopyLDNoOfPackages: TIntegerField;
    sq_CopyLDPackageTypeNo: TIntegerField;
    sq_CopyLDSupplierCode: TStringField;
    sq_CopyLDPackageOK: TIntegerField;
    sq_CopyLDProblemPackageLog: TStringField;
    sq_CopyLDCreatedUser: TIntegerField;
    sq_CopyLDModifiedUser: TIntegerField;
    sq_CopyLDDateCreated: TSQLTimeStampField;
    sq_CopyLDDefaultCustShipObjectNo: TIntegerField;
    sq_CopyLDOverrideMatch: TIntegerField;
    sq_CopyLDLIPNo: TIntegerField;
    sq_CopyLDDefsspno: TIntegerField;
    sq_CopyLDOverrideRL: TIntegerField;
    dsp_CopyLD: TDataSetProvider;
    cds_CopyLD: TClientDataSet;
    sq_LoadHead: TSQLQuery;
    sq_LoadHeadLoadNo: TIntegerField;
    sq_LoadHeadSupplierNo: TIntegerField;
    sq_LoadHeadLoadedDate: TSQLTimeStampField;
    sq_LoadHeadSenderLoadStatus: TIntegerField;
    sq_LoadHeadLoadID: TStringField;
    sq_LoadHeadMsgToShipper: TMemoField;
    sq_LoadHeadInternalNote: TMemoField;
    sq_LoadHeadPackageEntryOption: TIntegerField;
    sq_LoadHeadLocalShippingCompanyNo: TIntegerField;
    sq_LoadHeadLocalLoadingLocation: TIntegerField;
    sq_LoadHeadLocalDestinationNo: TIntegerField;
    sq_LoadHeadCreatedUser: TIntegerField;
    sq_LoadHeadModifiedUser: TIntegerField;
    sq_LoadHeadDateCreated: TSQLTimeStampField;
    sq_LoadHeadFS: TStringField;
    sq_LoadHeadOriginalSupplierNo: TIntegerField;
    sq_LoadHeadCustomerNo: TIntegerField;
    sq_LoadHeadNotering: TMemoField;
    sq_LoadHeadLoadOK: TIntegerField;
    sq_LoadHeadLoadAR: TIntegerField;
    dsp_LoadHead: TDataSetProvider;
    cds_LoadHead: TClientDataSet;
    cds_LoadHeadLoadNo: TIntegerField;
    cds_LoadHeadSupplierNo: TIntegerField;
    cds_LoadHeadLoadedDate: TSQLTimeStampField;
    cds_LoadHeadSenderLoadStatus: TIntegerField;
    cds_LoadHeadLoadID: TStringField;
    cds_LoadHeadMsgToShipper: TMemoField;
    cds_LoadHeadInternalNote: TMemoField;
    cds_LoadHeadPackageEntryOption: TIntegerField;
    cds_LoadHeadLocalShippingCompanyNo: TIntegerField;
    cds_LoadHeadLocalLoadingLocation: TIntegerField;
    cds_LoadHeadLocalDestinationNo: TIntegerField;
    cds_LoadHeadCreatedUser: TIntegerField;
    cds_LoadHeadModifiedUser: TIntegerField;
    cds_LoadHeadDateCreated: TSQLTimeStampField;
    cds_LoadHeadFS: TStringField;
    cds_LoadHeadOriginalSupplierNo: TIntegerField;
    cds_LoadHeadCustomerNo: TIntegerField;
    cds_LoadHeadNotering: TMemoField;
    cds_LoadHeadLoadOK: TIntegerField;
    cds_LoadHeadLoadAR: TIntegerField;
    cds_CopyLDLoadDetailNo: TIntegerField;
    cds_CopyLDLoadNo: TIntegerField;
    cds_CopyLDShippingPlanNo: TIntegerField;
    cds_CopyLDPackageNo: TIntegerField;
    cds_CopyLDNoOfPackages: TIntegerField;
    cds_CopyLDPackageTypeNo: TIntegerField;
    cds_CopyLDSupplierCode: TStringField;
    cds_CopyLDPackageOK: TIntegerField;
    cds_CopyLDProblemPackageLog: TStringField;
    cds_CopyLDCreatedUser: TIntegerField;
    cds_CopyLDModifiedUser: TIntegerField;
    cds_CopyLDDateCreated: TSQLTimeStampField;
    cds_CopyLDDefaultCustShipObjectNo: TIntegerField;
    cds_CopyLDOverrideMatch: TIntegerField;
    cds_CopyLDLIPNo: TIntegerField;
    cds_CopyLDDefsspno: TIntegerField;
    cds_CopyLDOverrideRL: TIntegerField;
    sq_GetNextLDNo: TSQLQuery;
    sq_GetNextLDNoNextLDNo: TIntegerField;
    sq_CheckLoadNo: TSQLQuery;
    sq_CheckLoadNoLoadNo: TIntegerField;
    sq_CopyLSPByLoNo: TSQLQuery;
    sq_CopyLSPByLoNoLoadNo: TIntegerField;
    sq_CopyLSPByLoNoShippingPlanNo: TIntegerField;
    sq_CopyLSPByLoNoConfirmedByReciever: TIntegerField;
    sq_CopyLSPByLoNoConfirmedBySupplier: TIntegerField;
    sq_CopyLSPByLoNoCreatedUser: TIntegerField;
    sq_CopyLSPByLoNoModifiedUser: TIntegerField;
    sq_CopyLSPByLoNoDateCreated: TSQLTimeStampField;
    sq_CopyLSPByLoNoInvoiced: TIntegerField;
    sq_CopyLSPByLoNoLoadingLocationNo: TIntegerField;
    sq_CopyLSPByLoNoShipToInvPointNo: TIntegerField;
    sq_IH_SpecLoad: TSQLQuery;
    sq_IH_SpecLoadInternalInvoiceNo: TIntegerField;
    sq_IH_SpecLoadPIPNo: TIntegerField;
    sq_IH_SpecLoadLIPNo: TIntegerField;
    sq_IH_SpecLoadSpecLoadNo: TIntegerField;
    dsp_IH_SpecLoad: TDataSetProvider;
    cds_IH_SpecLoad: TClientDataSet;
    cds_IH_SpecLoadInternalInvoiceNo: TIntegerField;
    cds_IH_SpecLoadPIPNo: TIntegerField;
    cds_IH_SpecLoadLIPNo: TIntegerField;
    cds_IH_SpecLoadSpecLoadNo: TIntegerField;
    ds_IH_SpecLoad: TDataSource;
    sq_PIP: TSQLQuery;
    sq_LIP: TSQLQuery;
    dsp_PIP: TDataSetProvider;
    dsp_LIP: TDataSetProvider;
    cds_PIP: TClientDataSet;
    cds_PIPPIPNO: TIntegerField;
    cds_PIPPIPNAME: TStringField;
    cds_LIP: TClientDataSet;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLIPName: TStringField;
    ds_PIP: TDataSource;
    ds_LIP: TDataSource;
    cds_LIPPIPNo: TIntegerField;
    cds_IH_SpecLoadPIPNAME: TStringField;
    cds_IH_SpecLoadLIPName: TStringField;
    sp_RemPkgFromLoad: TSQLStoredProc;
    sq_LONoInInvoice: TSQLQuery;
    sq_LONoInInvoiceShippingPlanNo: TIntegerField;
    sq_PkgType_Inv: TSQLQuery;
    sq_GetInvoiceDetailDataII: TSQLQuery;
    sq_GetInvoiceDetailDataIICustShipPlanDetailObjectNo: TIntegerField;
    sq_GetInvoiceDetailDataIIORDERLINENO: TIntegerField;
    sq_GetInvoiceDetailDataIIREFERENCE: TStringField;
    sq_GetInvoiceDetailDataIIPRODUCTDESCRIPTION: TStringField;
    sq_GetInvoiceDetailDataIIPRODUCTNO: TIntegerField;
    sq_GetInvoiceDetailDataIILENGTHDESCRIPTION: TStringField;
    sq_GetInvoiceDetailDataIIPRODUCTLENGTHNO: TIntegerField;
    sq_GetInvoiceDetailDataIIPRICE: TFloatField;
    sq_GetInvoiceDetailDataIIVOLUMEUNIT: TStringField;
    sq_GetInvoiceDetailDataIIPRICEUNIT: TStringField;
    sq_GetInvoiceDetailDataIIActualThicknessMM: TFloatField;
    sq_GetInvoiceDetailDataIIActualWidthMM: TFloatField;
    sq_GetInvoiceDetailDataIINominalThicknessMM_PG: TFloatField;
    sq_GetInvoiceDetailDataIINominalWidthMM_PG: TFloatField;
    sq_GetInvoiceDetailDataIINominalLengthMM_PL: TFloatField;
    sq_GetInvoiceDetailDataIIActualLengthMM_PL: TFloatField;
    sq_GetInvoiceDetailDataIINominalThicknessMM: TFloatField;
    sq_GetInvoiceDetailDataIINominalWidthMM: TFloatField;
    sq_GetInvoiceDetailDataIINominalLengthMM: TFloatField;
    sq_GetInvoiceDetailDataIINominalThicknessINCH: TStringField;
    sq_GetInvoiceDetailDataIINominalWidthINCH: TStringField;
    sq_GetInvoiceDetailDataIILO: TIntegerField;
    sq_GetInvoiceDetailDataIIVOLUME_ORDERUNIT: TFloatField;
    sq_GetInvoiceDetailDataIIM3ACTUAL: TFloatField;
    sq_GetInvoiceDetailDataIIM3NOMINAL: TFloatField;
    sq_GetInvoiceDetailDataIIACTUAL_LINEALMETER: TFloatField;
    sq_GetInvoiceDetailDataIINOOFPIECES: TIntegerField;
    sq_GetInvoiceDetailDataIINOOFPKGS: TIntegerField;
    sq_GetInvoiceDetailDataIIOL_Reference: TStringField;
    sq_LoadToInvoice: TSQLQuery;
    sq_LoadToInvoiceLoadNo: TIntegerField;
    sq_GetLODataII: TSQLQuery;
    sq_GetLODataIISTATUS: TIntegerField;
    sq_GetLODataIILO: TIntegerField;
    sq_GetLODataIIORDERNUMBER: TStringField;
    sq_GetLODataIIREFERENCE: TStringField;
    sq_GetLODataIIOURREFERENCE: TStringField;
    sq_GetLODataIISALESMAN: TStringField;
    sq_GetLODataIIBOOKINGNO: TIntegerField;
    sq_GetLODataIIADDITION_AMOUNT: TFloatField;
    sq_GetLODataIIADDITION_UNITNO: TIntegerField;
    sq_GetLODataIIADDITION_DESC: TStringField;
    sq_GetLODataIISHIPPER: TStringField;
    sq_GetLODataIICARRIERNAME: TStringField;
    sq_GetLODataIIETD: TSQLTimeStampField;
    sq_GetLODataIIETA: TSQLTimeStampField;
    sq_GetLODataIITrpID: TStringField;
    sq_GetLODataIIADDITION_PRICEUNIT: TStringField;
    sq_GetLoadIDII: TSQLQuery;
    sq_GetLoadIDIILoadID: TStringField;
    sq_KortSkeppFS: TSQLQuery;
    sq_LoadPackagesII: TSQLQuery;
    sq_LoadPackagesIILoadNo: TIntegerField;
    sq_LoadPackagesIILoadDetailNo: TIntegerField;
    sq_LoadPackagesIIShippingPlanNo: TIntegerField;
    sq_LoadPackagesIIPRODUCT: TStringField;
    sq_LoadPackagesIIPACKAGENO: TIntegerField;
    sq_LoadPackagesIINoOfPackages: TIntegerField;
    sq_LoadPackagesIIPACKAGETYPENO: TIntegerField;
    sq_LoadPackagesIISupplierCode: TStringField;
    sq_LoadPackagesIIPackageOK: TWordField;
    sq_LoadPackagesIIProblemPackageLog: TStringField;
    sq_LoadPackagesIICreatedUser: TIntegerField;
    sq_LoadPackagesIIModifiedUser: TIntegerField;
    sq_LoadPackagesIIDateCreated: TSQLTimeStampField;
    sq_LoadPackagesIIM3_NET: TFloatField;
    sq_LoadPackagesIIPCS: TIntegerField;
    sq_LoadPackagesIIM3_NOM: TFloatField;
    sq_LoadPackagesIIMFBM: TFloatField;
    sq_LoadPackagesIIKVM: TFloatField;
    sq_LoadPackagesIILOPM: TFloatField;
    sq_LoadPackagesIIProductNo: TIntegerField;
    sq_LoadPackagesIIDefaultCustShipObjectNo: TIntegerField;
    sq_LoadPackagesIIPCS_PER_LENGTH: TStringField;
    sq_LoadPackagesIINoOfLengths: TIntegerField;
    sq_LoadPackagesIIProductLengthNo: TIntegerField;
    sq_LoadPackagesIIALMM: TFloatField;
    sq_LoadPackagesIIActualThicknessMM: TFloatField;
    sq_LoadPackagesIIActualWidthMM: TFloatField;
    sq_LoadPackagesIISurfacingNo: TIntegerField;
    sq_LoadPackagesIISpeciesNo: TIntegerField;
    sq_LoadPackagesIIMainGradeNo: TIntegerField;
    sq_LoadPackagesIIOverrideMatch: TIntegerField;
    sq_LoadPackagesIILIPNo: TIntegerField;
    sq_LoadPackagesIIPkg_State: TIntegerField;
    sq_LoadPackagesIIPkg_Function: TIntegerField;
    sq_LoadPackagesIIChanged: TIntegerField;
    sq_LoadPackagesIIDefsspno: TIntegerField;
    sq_LoadPackagesIIOverrideRL: TIntegerField;
    dsp_LoadPackagesII: TDataSetProvider;
    cds_LoadPackagesII: TClientDataSet;
    cds_LoadPackagesIILoadNo: TIntegerField;
    cds_LoadPackagesIILoadDetailNo: TIntegerField;
    cds_LoadPackagesIIShippingPlanNo: TIntegerField;
    cds_LoadPackagesIIPRODUCT: TStringField;
    cds_LoadPackagesIIPACKAGENO: TIntegerField;
    cds_LoadPackagesIINoOfPackages: TIntegerField;
    cds_LoadPackagesIIPACKAGETYPENO: TIntegerField;
    cds_LoadPackagesIISupplierCode: TStringField;
    cds_LoadPackagesIIPackageOK: TSmallintField;
    cds_LoadPackagesIIProblemPackageLog: TStringField;
    cds_LoadPackagesIICreatedUser: TIntegerField;
    cds_LoadPackagesIIModifiedUser: TIntegerField;
    cds_LoadPackagesIIDateCreated: TSQLTimeStampField;
    cds_LoadPackagesIIM3_NET: TFloatField;
    cds_LoadPackagesIIPCS: TIntegerField;
    cds_LoadPackagesIIM3_NOM: TFloatField;
    cds_LoadPackagesIIMFBM: TFloatField;
    cds_LoadPackagesIIKVM: TFloatField;
    cds_LoadPackagesIILOPM: TFloatField;
    cds_LoadPackagesIIProductNo: TIntegerField;
    cds_LoadPackagesIIDefaultCustShipObjectNo: TIntegerField;
    cds_LoadPackagesIIPCS_PER_LENGTH: TStringField;
    cds_LoadPackagesIINoOfLengths: TIntegerField;
    cds_LoadPackagesIIProductLengthNo: TIntegerField;
    cds_LoadPackagesIIALMM: TFloatField;
    cds_LoadPackagesIIActualThicknessMM: TFloatField;
    cds_LoadPackagesIIActualWidthMM: TFloatField;
    cds_LoadPackagesIISurfacingNo: TIntegerField;
    cds_LoadPackagesIISpeciesNo: TIntegerField;
    cds_LoadPackagesIIMainGradeNo: TIntegerField;
    cds_LoadPackagesIIOverrideMatch: TIntegerField;
    cds_LoadPackagesIILIPNo: TIntegerField;
    cds_LoadPackagesIIPkg_State: TIntegerField;
    cds_LoadPackagesIIPkg_Function: TIntegerField;
    cds_LoadPackagesIIChanged: TIntegerField;
    cds_LoadPackagesIIDefsspno: TIntegerField;
    cds_LoadPackagesIIOverrideRL: TIntegerField;
    ds_LoadPackagesII: TDataSource;
    sq_LoadPackagesIII: TSQLQuery;
    sq_LoadPackagesIIILoadNo: TIntegerField;
    sq_LoadPackagesIIILoadDetailNo: TIntegerField;
    sq_LoadPackagesIIIShippingPlanNo: TIntegerField;
    sq_LoadPackagesIIIPRODUCT: TStringField;
    sq_LoadPackagesIIIPACKAGENO: TIntegerField;
    sq_LoadPackagesIIINoOfPackages: TIntegerField;
    sq_LoadPackagesIIIPACKAGETYPENO: TIntegerField;
    sq_LoadPackagesIIISupplierCode: TStringField;
    sq_LoadPackagesIIIPackageOK: TWordField;
    sq_LoadPackagesIIIProblemPackageLog: TStringField;
    sq_LoadPackagesIIICreatedUser: TIntegerField;
    sq_LoadPackagesIIIModifiedUser: TIntegerField;
    sq_LoadPackagesIIIDateCreated: TSQLTimeStampField;
    sq_LoadPackagesIIIM3_NET: TFloatField;
    sq_LoadPackagesIIIPCS: TIntegerField;
    sq_LoadPackagesIIIM3_NOM: TFloatField;
    sq_LoadPackagesIIIMFBM: TFloatField;
    sq_LoadPackagesIIIKVM: TFloatField;
    sq_LoadPackagesIIILOPM: TFloatField;
    sq_LoadPackagesIIIProductNo: TIntegerField;
    sq_LoadPackagesIIIDefaultCustShipObjectNo: TIntegerField;
    sq_LoadPackagesIIIPCS_PER_LENGTH: TStringField;
    sq_LoadPackagesIIINoOfLengths: TIntegerField;
    sq_LoadPackagesIIIProductLengthNo: TIntegerField;
    sq_LoadPackagesIIIALMM: TFloatField;
    sq_LoadPackagesIIIActualThicknessMM: TFloatField;
    sq_LoadPackagesIIIActualWidthMM: TFloatField;
    sq_LoadPackagesIIISurfacingNo: TIntegerField;
    sq_LoadPackagesIIISpeciesNo: TIntegerField;
    sq_LoadPackagesIIIMainGradeNo: TIntegerField;
    sq_LoadPackagesIIIOverrideMatch: TIntegerField;
    sq_LoadPackagesIIILIPNo: TIntegerField;
    sq_LoadPackagesIIIPkg_State: TIntegerField;
    sq_LoadPackagesIIIPkg_Function: TIntegerField;
    sq_LoadPackagesIIIChanged: TIntegerField;
    dsp_LoadPackagesIII: TDataSetProvider;
    cds_LoadPackagesIII: TClientDataSet;
    cds_LoadPackagesIIILoadNo: TIntegerField;
    cds_LoadPackagesIIILoadDetailNo: TIntegerField;
    cds_LoadPackagesIIIShippingPlanNo: TIntegerField;
    cds_LoadPackagesIIIPRODUCT: TStringField;
    cds_LoadPackagesIIIPACKAGENO: TIntegerField;
    cds_LoadPackagesIIINoOfPackages: TIntegerField;
    cds_LoadPackagesIIIPACKAGETYPENO: TIntegerField;
    cds_LoadPackagesIIISupplierCode: TStringField;
    cds_LoadPackagesIIIPackageOK: TSmallintField;
    cds_LoadPackagesIIIProblemPackageLog: TStringField;
    cds_LoadPackagesIIICreatedUser: TIntegerField;
    cds_LoadPackagesIIIModifiedUser: TIntegerField;
    cds_LoadPackagesIIIDateCreated: TSQLTimeStampField;
    cds_LoadPackagesIIIM3_NET: TFloatField;
    cds_LoadPackagesIIIPCS: TIntegerField;
    cds_LoadPackagesIIIM3_NOM: TFloatField;
    cds_LoadPackagesIIIMFBM: TFloatField;
    cds_LoadPackagesIIIKVM: TFloatField;
    cds_LoadPackagesIIILOPM: TFloatField;
    cds_LoadPackagesIIIProductNo: TIntegerField;
    cds_LoadPackagesIIIDefaultCustShipObjectNo: TIntegerField;
    cds_LoadPackagesIIIPCS_PER_LENGTH: TStringField;
    cds_LoadPackagesIIINoOfLengths: TIntegerField;
    cds_LoadPackagesIIIProductLengthNo: TIntegerField;
    cds_LoadPackagesIIIALMM: TFloatField;
    cds_LoadPackagesIIIActualThicknessMM: TFloatField;
    cds_LoadPackagesIIIActualWidthMM: TFloatField;
    cds_LoadPackagesIIISurfacingNo: TIntegerField;
    cds_LoadPackagesIIISpeciesNo: TIntegerField;
    cds_LoadPackagesIIIMainGradeNo: TIntegerField;
    cds_LoadPackagesIIIOverrideMatch: TIntegerField;
    cds_LoadPackagesIIILIPNo: TIntegerField;
    cds_LoadPackagesIIIPkg_State: TIntegerField;
    cds_LoadPackagesIIIPkg_Function: TIntegerField;
    cds_LoadPackagesIIIChanged: TIntegerField;
    ds_LoadPackagesIII: TDataSource;
    sq_LoadPackagesIIIInternalInvoiceNo: TIntegerField;
    cds_LoadPackagesIIIInternalInvoiceNo: TIntegerField;
    sq_LoadPackagesIIIPIPNo: TIntegerField;
    cds_LoadPackagesIIIPIPNo: TIntegerField;
    sq_LoadPackagesIIIDefsspno: TIntegerField;
    sq_LoadPackagesIIIOverrideRL: TIntegerField;
    cds_LoadPackagesIIIDefsspno: TIntegerField;
    cds_LoadPackagesIIIOverrideRL: TIntegerField;
    sq_DelIH: TSQLQuery;
    sq_DelIHEmptyLoads: TSQLQuery;
    sq_ExportTyp1: TSQLQuery;
    dsp_ExportTyp1: TDataSetProvider;
    cds_ExportTyp1: TClientDataSet;
    QExport3XLS1: TQExport3XLS;
    cds_ExportTyp1PackageNo: TStringField;
    cds_ExportTyp1NomThick: TFloatField;
    cds_ExportTyp1NomWidth: TFloatField;
    cds_ExportTyp1MAXLENGTH: TFloatField;
    cds_ExportTyp1MINLENGTH: TFloatField;
    cds_ExportTyp1Pcs: TIntegerField;
    cds_ExportTyp1Mark: TStringField;
    QExport3ASCII1: TQExport3ASCII;
    sq_CghInv_PkgNos: TSQLQuery;
    sq_Delete_Confirmed_Load: TSQLQuery;
    sq_InvoiceListInvoiceType: TIntegerField;
    cdsInvoiceListInvoiceType: TIntegerField;
    sq_CreditInv: TSQLQuery;
    sq_CreditInvInternalInvoiceNo: TIntegerField;
    sq_CreditInvCustomerNo: TIntegerField;
    sq_GetInvoiceType: TSQLQuery;
    sq_GetInvoiceTypeInvoiceType: TIntegerField;
    sq_GetIntInvNo: TSQLQuery;
    sq_GetIntInvNoInvoiceType: TIntegerField;
    sq_GetIntInvNoInternalInvoiceNo: TIntegerField;
    sq_GetProFormInvNo: TSQLQuery;
    sq_GetProFormInvNoProformaInvoiceNo: TIntegerField;
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
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsInvoiceHeadAfterInsert(DataSet: TDataSet);
    procedure cds_LoadPackagesReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dsp_LoadPackagesGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cds_IH_SpecLoadPIPNoChange(Sender: TField);
    procedure cds_IH_SpecLoadAfterInsert(DataSet: TDataSet);
    procedure cdsInvoiceHeadSupplierNoChange(Sender: TField);
    procedure dsp_LoadPackagesIIGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dsp_LoadPackagesIIIGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cds_LoadPackagesIIIReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure QExport3ASCII1BeforeExportRow(Sender: TObject;
      Row: TQExportRow; var Accept: Boolean);
    procedure cdsInvoiceHeadResponsibleSellerChange(Sender: TField);
  private
    { Private declarations }
    GlobalLoadDetailNo : Integer ;
    procedure AssignNormalInvoiceNumber(const InternalInvoiceNo : Integer) ;
    function  AssignProformaInvoiceNumber(const InternalInvoiceNo : Integer) : Integer ;
    function  AssignProFormaInvoiceNumberAndMovePkg(const InternalInvoiceNo : Integer) : Integer ;
    function  AssignPurchaseInvoiceNumber(const InternalInvoiceNo : Integer) : Integer ;
    function  checkIfMoreThanOneInvoiceOnLO (const LONo, InvoiceType : Integer) : Integer ;
    Procedure AddPackageToLoadDetail(const NewLoadNo : Integer) ;
    function  CheckIfLoadNoIsOK(const LoadNo : Integer) : Boolean ;
    procedure CopyLoad (const NewLoadNo, CopyLoadNo : Integer) ;
    function  SpecLoad (const CopyLoadNo : Integer) : Integer ;
    procedure AddLONoToLoadIfMissing (const ShippingPlanNo, CopyLoadNo, NewLoadNo : Integer) ;
    procedure RemovePkgFromLoad ;
    Procedure ExportToWoodx(const CustomerNo, IntInvNo : Integer;const InvoiceNo : String) ;
  public
    { Public declarations }
    AttestChanged           : Boolean ;
    Supplier_InvoiceNo      : String ;
    CurrencyNo, SupplierNo  : Integer ;
    Supplier_InvoiceDate    : TDateTime ;
    Description, Note       : String ;
    fInternalInvoiceNo      : Integer ;
    fActive                 : Integer ;
    Function  GetGetProFormInvNo (const InternalInvoiceNo : Integer) : Integer ;
    Function  GetInternalInvoiceNoByINVOICENO (const InvoiceNo : Integer;Var InvoiceType : Integer) : Integer ;
    Function  GetInvoiceTypeByLONo (const LONo : Integer) : Integer ;
    procedure PrepareExportFiles(const InvoiceNo : String;const CustomerNo, InternalInvoiceNo, CET : Integer) ;
    procedure ExportInvoiceSpecWoodxExecute(const CustomerNo, IntInvNo : Integer;const InvoiceNo : String) ;
    procedure EmailaTrpBrevExecute(const IntInvNo, InvoiceNo, CustomerNo, LONo : Integer) ;
    procedure ExportTyp1(const InvoiceNo, InternalInvoiceNo, CET : Integer) ;
    function  SaveInvoiceSpecChanges(const InternalInvoiceNo : Integer) : Boolean ;
    function  SaveInvoiceSpecToInventory(const InternalInvoiceNo : Integer) : Boolean ;
    procedure OpenInvoiceSpec(const InternalInvoiceNo : Integer) ;
    procedure OpenKortSkeppFS (const InternalInvoiceNo : Integer) ;
    procedure OpenPkgsRemovedToInventory (const InternalInvoiceNo : Integer) ;
    function  GetInvoiceNo (const InternalInvoiceNo, InvoiceType : Integer) : Integer ;
    Function  Get_InternalInvoiceNo (Var InvoiceType : Integer;const LoadNo : Integer) : Integer ;
    function  CreateCreditInvoiceByCopyDebitInvoice(const InternalInvoiceNo : Integer) : Integer ;
    procedure AssignInvoiceNumber(const InternalInvoiceNo : Integer) ;
    procedure RefreshCHECKED ;
    procedure AllRows ;
    procedure AllLORows ;
    function  InvoiceAttested(const Quick_InvoiceNo : Integer) : Integer ;
    function  SearchLONo(const LONo : Integer;Var InvoiceType : Integer) : Integer ;
    Function  GetInvoiceDocTextByOrderNo(const OrderNo : Integer;RichEdit1 : TRichEdit) : Variant ;
    Function  GetInvoiceTextByClient(const ClientNo : Integer) : Variant ;
    function  GetPaymentText (const CurrencyNo, LanguageCode, AddressNo : Integer) : String ;
    procedure OpenInvoiceHeaderForAttest (const InvoiceNo, InvoiceType : Integer) ;
    function  NextProformaNo (const InternalInvoiceNo : Integer) : Integer ;
    procedure DeletePreliminaryInvoice(const InternalInvoiceNo : Integer) ;
    procedure DeleteEmptyLoadsForInternalInvoiceNo(const InternalInvoiceNo : Integer) ;
  end;

var
  dmVidaInvoice: TdmVidaInvoice;

implementation

Uses dmsDataConn, recerror, UnitEnterInvoiceNo,   VidaConst, VidaUser,
  fMoveInvPkgToInventory, dmc_ArrivingLoads,
  dmsVidaContact , uSelectMultInvoice, dmsVidaSystem, VidaUtils ,
  UnitCRExportOneReport, uSendMapiMail , MainU, dmc_ImportWoodx;
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

     cdsInvoiceNumberInvoiceNo.AsInteger        := StrToInt(FormEnterInvoiceNo.Edit1.Text) ;
     cdsInvoiceNumberUserCreated.AsInteger      := ThisUser.UserID ;
     cdsInvoiceNumberUserModified.AsInteger     := ThisUser.UserID ;
     cdsInvoiceNumberDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
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

     cdsInvoiceNumberInvoiceNo.AsInteger        := GetInvNo ;
     cdsInvoiceNumberUserCreated.AsInteger      := ThisUser.UserID ;
     cdsInvoiceNumberUserModified.AsInteger     := ThisUser.UserID ;
     cdsInvoiceNumberDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
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
//formfMoveInvPkgToInventory: TformfMoveInvPkgToInventory ;
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
//    formfMoveInvPkgToInventory:= TformfMoveInvPkgToInventory.Create(Nil);
    if not Assigned(dmArrivingLoads) then
    Begin
     TdmArrivingLoadsWasAssigned:= False ;
     dmArrivingLoads:= TdmArrivingLoads.Create(Nil);
    End ;
    Try
//    formfMoveInvPkgToInventory.InternalInvoiceNo:= InternalInvoiceNo ;
//    formfMoveInvPkgToInventory.ShowModal ;

    FormEnterInvoiceNo.Caption:= 'Enter Proforma Invoice number' ;
    if FormEnterInvoiceNo.ShowModal = MrOK then
    Begin;

     cdsProformaInvNo.Insert ;
     cdsProformaInvNoInternalInvoiceNo.AsInteger:= InternalInvoiceNo ;

     cdsProformaInvNoProformaInvoiceNo.AsInteger  := StrToInt(FormEnterInvoiceNo.Edit1.Text) ;
     cdsProformaInvNoUserCreated.AsInteger        := ThisUser.UserID ;
     cdsProformaInvNoUserModified.AsInteger       := ThisUser.UserID ;
     cdsProformaInvNoDateCreated.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
     cdsProformaInvNo.Post ;
     cdsProformaInvNo.ApplyUpdates(-1) ;

     Result:= 0 ;
    End ;
    Finally
//     FreeAndNil(formfMoveInvPkgToInventory) ;//.Free ;
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
  formfMoveInvPkgToInventory  : TformfMoveInvPkgToInventory ;
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
    formfMoveInvPkgToInventory.InternalInvoiceNo  := InternalInvoiceNo ;
    formfMoveInvPkgToInventory.LO_CUSTOMERNO      := cdsInvoiceHeadCustomerNo.AsInteger ;
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
  cdsInvoiceHeadInvoiceDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
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


  Try
  sq_RemoveFrom_InvLoad.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
  sq_RemoveFrom_InvLoad.ExecSQL(False) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

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
 mtInvoiceType.Active:= True ;
 mtInvoiceType.InsertRecord([5,'FW']);
 mtInvoiceType.InsertRecord([4,'USA (K2)']);
 mtInvoiceType.InsertRecord([3,'Purchase Invoice']); 
 mtInvoiceType.InsertRecord([2,'Proforma, (move pkgs to inventory)']);
 mtInvoiceType.InsertRecord([1,'Proforma, (Invoice later)']);
 mtInvoiceType.InsertRecord([0,'VIDA (K1)']);
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

function TdmVidaInvoice.SearchLONo(const LONo : Integer;Var InvoiceType : Integer) : Integer ;
Begin
 InvoiceType  := GetInvoiceTypeByLONo(LONo) ;
 if InvoiceType > -1 then
  Result:= checkIfMoreThanOneInvoiceOnLO(LONo, InvoiceType)
   else
    Result  := -1 ;

{  sq_SearchLONo.ParamByName('ShippingPlanNo').AsInteger:= LONo ;
  sq_SearchLONo.ParamByName('InvoiceType').AsInteger:= InvoiceType ;
  sq_SearchLONo.Open ;
  if sq_SearchLONoInternalInvoiceNo.AsInteger > 0 then
  Result:= sq_SearchLONoInternalInvoiceNo.AsInteger
  else
  Result:= -1 ;
  sq_SearchLONo.Close ; }
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

Function TdmVidaInvoice.GetInvoiceDocTextByOrderNo(const OrderNo : Integer;RichEdit1 : TRichEdit) : Variant ;
Begin
 Result:= '' ;
 sq_GetInvTexts.Close ;
 sq_GetInvTexts.ParamByName('OrderNo').AsInteger:= OrderNo ;
 sq_GetInvTexts.Open ;
 sq_GetInvTexts.First ;
 While not sq_GetInvTexts.Eof do
 Begin
  RichEdit1.Lines.Add(sq_GetInvTextsDocText.AsVariant) ;
  Result:= Result + sq_GetInvTextsDocText.AsVariant ;
  sq_GetInvTexts.Next;
 End ;
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

function TdmVidaInvoice.GetPaymentText (const CurrencyNo, LanguageCode, AddressNo : Integer) : String ;
Begin
 sq_GetPaymentText.Close ;
 sq_GetPaymentText.ParamByName('CurrencyNo').AsInteger:= CurrencyNo ;
 sq_GetPaymentText.ParamByName('LanguageCode').AsInteger:= LanguageCode ;
 sq_GetPaymentText.ParamByName('AddressNo').AsInteger:= AddressNo ;
 sq_GetPaymentText.Open ;
 if not sq_GetPaymentText.Eof then
  Result:= sq_GetPaymentTextPaymentText.AsString
   else
    Result:= '' ;
 sq_GetPaymentText.Close ;
End ;

procedure TdmVidaInvoice.DataModuleDestroy(Sender: TObject);
begin
 mtInvoiceType.Active:= False ;
end;

procedure TdmVidaInvoice.OpenInvoiceHeaderForAttest (const InvoiceNo, InvoiceType : Integer) ;
Begin
 sq_InvoiceHead_II.SQL.Clear ;
 sq_InvoiceHead_II.SQL.Add('Select * FROM InvoiceHeader IH') ;
 Case InvoiceType of
  0 : Begin
      sq_InvoiceHead_II.SQL.Add('Inner Join dbo.InvoiceNumber invNo on invNo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
      End ;
  1,2 : sq_InvoiceHead_II.SQL.Add('Inner Join dbo.ProformaInvoiceNumber invNo on invNo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
  3 :   sq_InvoiceHead_II.SQL.Add('Inner Join dbo.InvoiceNumber_PO invNo on invNo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
  4 :   sq_InvoiceHead_II.SQL.Add('Inner Join dbo.InvoiceNo_USA invNo on invNo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
  5 :   sq_InvoiceHead_II.SQL.Add('Inner Join dbo.InvNo_FW invNo on invNo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
 End ;
 sq_InvoiceHead_II.SQL.Add('WHERE') ;
 sq_InvoiceHead_II.SQL.Add('IH.InvoiceType = '+inttostr(InvoiceType)) ;
 sq_InvoiceHead_II.SQL.Add('AND IH.InternalInvoiceNo = '+inttostr(InvoiceNo)) ;
// if thisuser.UserID = 8 then  sq_InvoiceHead_II.SQL.SaveToFile('sq_InvoiceHead_II.txt');
End ;
{ Case InvoiceType of
  0 : sq_InvoiceHead_II.SQL.Add('invNo.InvoiceNo = '+inttostr(InvoiceNo)) ;
  1,2 : sq_InvoiceHead_II.SQL.Add('invNo.ProformaInvoiceNo = '+inttostr(InvoiceNo)) ;
  3 : sq_InvoiceHead_II.SQL.Add('invNo.PO_InvoiceNo = '+inttostr(InvoiceNo)) ;
  4 : sq_InvoiceHead_II.SQL.Add('invNo.InvoiceNo = '+inttostr(InvoiceNo)) ;
  5 : sq_InvoiceHead_II.SQL.Add('invNo.InvoiceNo = '+inttostr(InvoiceNo)) ;
 End ; }

{0 VIDA (K1)
1 PROFORMA (invoice later)
2 PROFORMA (move pkgs)
3 PURCHASE INVOICE
4 USA (K2)
5 FW
ALLA }



{((IH.InvoiceType = 0) OR (IH.InvoiceType = 1) OR (IH.InvoiceType = 2) OR (IH.InvoiceType = 3)  OR (IH.InvoiceType = 4)
  OR (IH.InvoiceType = 5))
AND IH.Debit_Credit = 0
-- AND ((IH.QuickInvoice <> 1) OR (IH.QuickInvoice is null))
AND (
(IH.InternalInvoiceNo	IN (Select InternalInvoiceNo	 FROM InvoiceNumber))
OR
(IH.InternalInvoiceNo	IN (Select InternalInvoiceNo	 FROM InvoiceNumber_PO))

OR
(IH.InternalInvoiceNo	IN (Select InternalInvoiceNo	 FROM ProformaInvoiceNumber))

OR
(IH.InternalInvoiceNo	IN (Select InternalInvoiceNo	 FROM InvoiceNo_USA))
OR
(IH.InternalInvoiceNo	IN (Select InternalInvoiceNo	 FROM InvNo_FW)) ) }

function TdmVidaInvoice.GetInvoiceNo (const InternalInvoiceNo, InvoiceType : Integer) : Integer ;
begin
 With dmVidaInvoice do
 Begin
  Case InvoiceType of
   0    :  if (cdsInvoiceNumber.Active) AND (cdsInvoiceNumber.Locate('InternalInvoiceNo', InternalInvoiceNo, [])) then
            Result:= cdsInvoiceNumberInvoiceNo.AsInteger
            else
            Result:= -1 ;
   1,2  :  if (cdsProformaInvNo.Active) AND ( cdsProformaInvNo.Locate('InternalInvoiceNo', InternalInvoiceNo, []) ) then
            Result:= cdsProformaInvNoProformaInvoiceNo.AsInteger
            else
            Result:= -1 ;

    3   :   if (cds_PurchaseInvNo.Active) AND (cds_PurchaseInvNo.Locate('InternalInvoiceNo', InternalInvoiceNo, [])) then
            Result:= cds_PurchaseInvNoPO_InvoiceNo.AsInteger
            else
            Result:= -1 ;
    4   :   if (cdsUSAInvNo.Active) AND (cdsUSAInvNo.Locate('InternalInvoiceNo',cdsInvoiceHeadInternalInvoiceNo.AsInteger,[])) then
            Result:= cdsUSAInvNoInvoiceNo.AsInteger
            else
            Result:= -1 ;
    5   :   if (cdsFWInvNo.Active) AND (cdsFWInvNo.Locate('InternalInvoiceNo',cdsInvoiceHeadInternalInvoiceNo.AsInteger,[])) then
            Result:= cdsFWInvNoInvoiceNo.AsInteger
            else
            Result:= 0 ;
  End ;//case§
 End ;// With dmVidaInvoice do
End ;

function TdmVidaInvoice.checkIfMoreThanOneInvoiceOnLO (const LONo, InvoiceType : Integer) : Integer ;
var
  fSelectMultInvoice: TfSelectMultInvoice;
Begin
 sq_NoOfInvoices.SQL.Clear ;
 sq_NoOfInvoices.SQL.Add('SELECT distinct') ;
 Case InvoiceType of
  0 :   sq_NoOfInvoices.SQL.Add('INO.InvoiceNo AS Fakturnr,') ;
  1 :   sq_NoOfInvoices.SQL.Add('INO.ProformaInvoiceNo AS Fakturnr,') ;
  2 :   sq_NoOfInvoices.SQL.Add('INO.ProformaInvoiceNo AS Fakturnr,') ;
  3 :   sq_NoOfInvoices.SQL.Add('INO.PO_InvoiceNo AS Fakturnr,') ;
  4 :   sq_NoOfInvoices.SQL.Add('INO.InvoiceNo AS Fakturnr,') ;
  5 :   sq_NoOfInvoices.SQL.Add('INO.InvoiceNo AS Fakturnr,') ;
 End ;//Case
 sq_NoOfInvoices.SQL.Add('IL.ShippingPlanNo AS LO, IH.InvoiceDate AS Fakturadatum, IL.InternalInvoiceNo') ;
 sq_NoOfInvoices.SQL.Add('FROM') ;
 sq_NoOfInvoices.SQL.Add('dbo.InvoiceLO IL') ;
 sq_NoOfInvoices.SQL.Add('Inner Join dbo.InvoiceHeader IH ON IH.InternalInvoiceNo = IL.InternalInvoiceNo') ;
 Case InvoiceType of
  0 : sq_NoOfInvoices.SQL.Add('Inner Join dbo.InvoiceNumber INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
  1 : sq_NoOfInvoices.SQL.Add('Inner Join dbo.ProformaInvoiceNumber INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
  2 : sq_NoOfInvoices.SQL.Add('Inner Join dbo.ProformaInvoiceNumber INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
  3 : sq_NoOfInvoices.SQL.Add('Inner Join dbo.InvoiceNumber_PO INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
  4 : sq_NoOfInvoices.SQL.Add('Inner Join dbo.InvoiceNo_USA INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
  5 : sq_NoOfInvoices.SQL.Add('Inner Join dbo.InvNo_FW INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
 End ;

 sq_NoOfInvoices.SQL.Add('WHERE IL.ShippingPlanNo = '+IntToStr(LONo)) ;

 cds_NoOfInvoices.Active:= True ;

 if cds_NoOfInvoices.RecordCount > 1 then
 Begin
  fSelectMultInvoice:= TfSelectMultInvoice.Create(nil);
  try
   fSelectMultInvoice.ShowModal ;
   Result:= cds_NoOfInvoicesInternalInvoiceNo.AsInteger ;
  finally
   FreeAndNil(fSelectMultInvoice) ;
  end;
 End
 else
 if cds_NoOfInvoices.RecordCount = 1 then
 Result:= cds_NoOfInvoicesInternalInvoiceNo.AsInteger
 else
 Result:= -1 ;
 cds_NoOfInvoices.Active:= False ;
End ;

function TdmVidaInvoice.NextProformaNo (const InternalInvoiceNo : Integer) : Integer ;
begin
  Try
  sp_GetNextProformaInvNo.ParamByName('InternalInvoiceNo').AsInteger  := InternalInvoiceNo ;
  sp_GetNextProformaInvNo.ParamByName('UserID').AsInteger             := ThisUser.UserID ;
  sp_GetNextProformaInvNo.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  try
//   Result := sp_GetNextProformaInvNo.ParamByName('MaxNo').AsInteger;
  finally
   sp_GetNextProformaInvNo.Close;
  end;
end;

procedure TdmVidaInvoice.cdsInvoiceHeadAfterInsert(DataSet: TDataSet);
begin
 cdsInvoiceHeadIncludeFreightCostInPrice.AsInteger:= 1 ;
end;

procedure TdmVidaInvoice.OpenInvoiceSpec(const InternalInvoiceNo : Integer) ;
Begin
 cds_LoadPackages.Active    := False ;
// dsp_LoadPackages.DataSet   := sq_LoadPackages ;
 sq_LoadPackages.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
 cds_LoadPackages.Active    := True ;
 cds_LoadPackages.ReadOnly  := False ;
End ;

procedure TdmVidaInvoice.OpenKortSkeppFS (const InternalInvoiceNo : Integer) ;
begin
  cds_LoadPackagesII.Active   := False ;
  sq_LoadPackagesII.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
  cds_LoadPackagesII.Active   := True ;
end;

procedure TdmVidaInvoice.OpenPkgsRemovedToInventory (const InternalInvoiceNo : Integer) ;
begin
  cds_LoadPackagesIII.Active   := False ;
  sq_LoadPackagesIII.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
  cds_LoadPackagesIII.Active   := True ;
end;

//check if SpecLoad exist otherwise create a new specload
function TdmVidaInvoice.SpecLoad (const CopyLoadNo : Integer) : Integer ;
Var NewLoadNo : Integer ;

function GetNextLDNo : Integer ;
Begin
 sq_GetNextLDNo.ParamByName('LoadNo').AsInteger:= NewLoadNo ;
 sq_GetNextLDNo.Open ;
 Try
 if not sq_GetNextLDNo.Eof then
  Result:= sq_GetNextLDNoNextLDNo.AsInteger
   else
    Result:= 1 ;
 Finally
  sq_GetNextLDNo.Close ;
 End ;
End ;

Function PackagesMovedToSpecLoad : Boolean ;
Begin
 Result:= False ;
 cds_LoadPackagesII.First ;
 if cds_LoadPackagesII.RecordCount > 0 then
  Result:= True ;
End ;

Begin
 NewLoadNo:= 0 ;
// if (PackagesMovedToSpecLoad) and
 if ((cds_IH_SpecLoadSpecLoadNo.AsInteger < 1) or (cds_IH_SpecLoadSpecLoadNo.IsNull)) then
 Begin
  NewLoadNo:= dmsConnector.NextMaxNo('Loads') ;
  GlobalLoadDetailNo:= 1 ;
  if CheckIfLoadNoIsOK(NewLoadNo) = False then
  Begin
   NewLoadNo:= dmsConnector.NextMaxNo('Loads') ;
  End ;
  if cds_IH_SpecLoad.State in [dsBrowse] then
  cds_IH_SpecLoad.Edit ;
  cds_IH_SpecLoadSpecLoadNo.AsInteger:= NewLoadNo ;
  cds_IH_SpecLoad.Post ;
  CopyLoad(NewLoadNo, CopyLoadNo) ; //Making a new Load by copying a load attached to invoice
 End//if (PackagesMovedToSpecLoad) and ((cds_IH_SpecLoadSpecLoadNo.AsInteger < 1) or (cds_IH_SpecLoadSpecLoadNo.IsNull)) then
  else //Use existing load, pickup next LoadDetailNo
   Begin
    NewLoadNo := cds_IH_SpecLoadSpecLoadNo.AsInteger ;
    if CheckIfLoadNoIsOK(NewLoadNo) = True then //Lite bakvänt här... OM lasten finns returneras FALSE
    Begin
      NewLoadNo:= dmsConnector.NextMaxNo('Loads') ;
      GlobalLoadDetailNo:= 1 ;
      if CheckIfLoadNoIsOK(NewLoadNo) = False then
      Begin
       NewLoadNo:= dmsConnector.NextMaxNo('Loads') ;
      End ;
      if cds_IH_SpecLoad.State in [dsBrowse] then
      cds_IH_SpecLoad.Edit ;
      cds_IH_SpecLoadSpecLoadNo.AsInteger:= NewLoadNo ;
      cds_IH_SpecLoad.Post ;
      CopyLoad(NewLoadNo, CopyLoadNo) ; //Making a new Load by copying a load attached to invoice
    End
    else
    Begin
     if GlobalLoadDetailNo = 0 then
      GlobalLoadDetailNo:= GetNextLDNo ;

    //Open existing Load
     cds_LoadHead.Active:= False ;
     sq_LoadHead.ParamByName('LoadNo').AsInteger:= NewLoadNo ;
     cds_LoadHead.Active:= True ;

     cds_CopyLSP.Active:= False ;
     sq_CopyLSP.ParamByName('LoadNo').AsInteger:= NewLoadNo ;
     cds_CopyLSP.Active:= True ;


     cds_CopyLD.Active:= False ;
     sq_CopyLD.ParamByName('LoadNo').AsInteger:= NewLoadNo ;
     cds_CopyLD.Active:= True ;
    End ;
   End ;//else //Use existing load, pickup next LoadDetailNo
 Result:= NewLoadNo ;
End ;

//Executed when user save the spec from the invoice
function TdmVidaInvoice.SaveInvoiceSpecChanges(const InternalInvoiceNo : Integer) : Boolean ;
Var Trans1                          : TTransactionDesc ;
Begin
 cds_LoadPackagesII.First ;
 cds_LoadPackagesII.Filter:= 'NoOfPackages = 2' ;
 cds_LoadPackagesII.Filtered:= True ;
 Try

 if cds_LoadPackagesII.RecordCount > 0 then
 Begin

 cds_LoadHead.Active  := False ;
 cds_CopyLSP.Active   := False ;
 cds_CopyLD.Active    := False ;

 cds_LoadHead.Active  := True ;
 cds_CopyLSP.Active   := True ;
 cds_CopyLD.Active    := True ;

//START A TRANSACTION
 Trans1.TransactionID:= 1 ;
 Trans1.IsolationLevel:= xilREADCOMMITTED ;
 dmsConnector.SQLConnection.StartTransaction(Trans1);
 Try

 GlobalLoadDetailNo:= 0 ;

//check if SpecLoad exist otherwise create a new specload
 SpecLoad(cds_LoadPackagesIILoadNo.AsInteger) ;



 While not cds_LoadPackagesII.Eof do
 Begin
  if cds_LoadPackages.Locate('PackageNo;SupplierCode', VarArrayOf([cds_LoadPackagesIIPackageNo.AsInteger, cds_LoadPackagesIISupplierCode.AsString]), []) then
  cds_LoadPackages.Delete ;
  AddLONoToLoadIfMissing (cds_LoadPackagesIIShippingPlanNo.AsInteger, cds_LoadPackagesIILoadNo.AsInteger, cds_LoadHeadLoadNo.AsInteger) ;
  AddPackageToLoadDetail(cds_LoadHeadLoadNo.AsInteger); //cds_LoadHeadLoadNo is NewLoadNo
  GlobalLoadDetailNo:= succ(GlobalLoadDetailNo) ;
  cds_LoadPackagesII.Edit ;
  cds_LoadPackagesIINoOfPackages.AsInteger:= 1 ;
  cds_LoadPackagesII.Post ;
//  cds_LoadPackagesII.Delete ;
 End ;

 if cds_IH_SpecLoad.ChangeCount > 0 then
  cds_IH_SpecLoad.ApplyUpdates(0) ;
 if cds_LoadHead.ChangeCount > 0 then
  cds_LoadHead.ApplyUpdates(0) ;
 if cds_CopyLSP.ChangeCount > 0 then
  cds_CopyLSP.ApplyUpdates(0) ;
 if cds_CopyLD.ChangeCount > 0 then
  cds_CopyLD.ApplyUpdates(0) ;
 if cds_LoadPackages.ChangeCount > 0 then
  cds_LoadPackages.ApplyUpdates(0) ;

 dmsConnector.SQLConnection.Commit(Trans1) ;
 Result:= True ;
 Except
  if cds_IH_SpecLoad.ChangeCount > 0 then
   cds_IH_SpecLoad.CancelUpdates ;
  if cds_LoadHead.ChangeCount > 0 then
   cds_LoadHead.CancelUpdates ;
  if cds_CopyLSP.ChangeCount > 0 then
   cds_CopyLSP.CancelUpdates ;
  if cds_CopyLD.ChangeCount > 0 then
   cds_CopyLD.CancelUpdates ;
  if cds_LoadPackagesII.ChangeCount > 0 then
   cds_LoadPackagesII.CancelUpdates ;
  dmsConnector.SQLConnection.Rollback(Trans1);
  Result:= False ;
  ShowMessage('Failed to save packages to spec, operation rollbacked') ;
 End ;
 End //if cds_LoadPackages.RecordCount > 0 then
  else
   Begin
    Result:= False ;
//    ShowMessage('Inga åtgärder gjorda...') ;
   End ;
 Finally
  cds_LoadPackagesII.Filtered:= False ;
 End ;
End ;

function TdmVidaInvoice.SaveInvoiceSpecToInventory(const InternalInvoiceNo : Integer) : Boolean ;
Var Trans1                          : TTransactionDesc ;
Begin
 cds_LoadPackagesIII.First ;
 cds_LoadPackagesIII.Filter:= 'NoOfPackages = 2' ;
 cds_LoadPackagesIII.Filtered:= True ;
 Try

 if cds_LoadPackagesIII.RecordCount > 0 then
 Begin

//START A TRANSACTION
 Trans1.TransactionID:= 1 ;
 Trans1.IsolationLevel:= xilREADCOMMITTED ;
 dmsConnector.SQLConnection.StartTransaction(Trans1);
 Try

// GlobalLoadDetailNo:= 0 ;

//check if SpecLoad exist otherwise create a new specload
// SpecLoad(cds_LoadPackagesLoadNo.AsInteger) ;


 cds_LoadPackagesIII.First ;
 While not cds_LoadPackagesIII.Eof do
 Begin
  //1) Remove package from current load to the inventory selected by user (PIPNo, LIPNo stored in IH_SpecLoad)
  RemovePkgFromLoad ;
//  GlobalLoadDetailNo:= succ(GlobalLoadDetailNo) ;
  cds_LoadPackagesIII.Edit ;
  cds_LoadPackagesIIINoOfPackages.AsInteger:= 1 ;
  cds_LoadPackagesIII.Post ;
//  cds_LoadPackages.Next ;
 End ;

  if cds_IH_SpecLoad.State in [dsEdit, dsInsert] then
   cds_IH_SpecLoad.Post ;
  if cds_IH_SpecLoad.ChangeCount > 0 then
   cds_IH_SpecLoad.ApplyUpdates(0) ;

// if cds_CopyLSP.ChangeCount > 0 then
//  cds_CopyLSP.ApplyUpdates(0) ;
// if cds_CopyLD.ChangeCount > 0 then
//  cds_CopyLD.ApplyUpdates(0) ;
 if cds_LoadPackages.ChangeCount > 0 then
  cds_LoadPackages.ApplyUpdates(0) ;
 if cds_LoadPackagesIII.ChangeCount > 0 then
  cds_LoadPackagesIII.ApplyUpdates(0) ;

 dmsConnector.SQLConnection.Commit(Trans1) ;
 Result:= True ;
 Except
  if cds_IH_SpecLoad.ChangeCount > 0 then
   cds_IH_SpecLoad.CancelUpdates ;
  if cds_LoadHead.ChangeCount > 0 then
   cds_LoadHead.CancelUpdates ;
  if cds_CopyLSP.ChangeCount > 0 then
   cds_CopyLSP.CancelUpdates ;
  if cds_CopyLD.ChangeCount > 0 then
   cds_CopyLD.CancelUpdates ;
  if cds_LoadPackages.ChangeCount > 0 then
   cds_LoadPackages.CancelUpdates ;
  if cds_LoadPackagesIII.ChangeCount > 0 then
   cds_LoadPackagesIII.CancelUpdates ;
  dmsConnector.SQLConnection.Rollback(Trans1);
  Result:= False ;
  ShowMessage('Failed to move packages to inventory, operation rollbacked') ;
 End ;
 End //if cds_LoadPackages.RecordCount > 0 then
  else
   Begin
    Result:= False ;
//    ShowMessage('Inga åtgärder gjorda...') ;
   End ;
 Finally
  cds_LoadPackagesIII.Filtered:= False ;
 End ;
End ;

//1) Remove package from current load
//2) Add Package to new load, if a load does not exist then create a load
Procedure TdmVidaInvoice.AddPackageToLoadDetail(const NewLoadNo : Integer) ;
Begin
 if not cds_CopyLD.Locate('PackageNo;SupplierCode', VarArrayOf([cds_LoadPackagesIIPACKAGENO.AsInteger, cds_LoadPackagesIISupplierCode.AsString]), []) then
 Begin
  cds_CopyLD.Insert ;
  cds_CopyLDLoadNo.AsInteger                   := NewLoadNo ;
  cds_CopyLDLoadDetailNo.AsInteger             := GlobalLoadDetailNo ;
  cds_CopyLDShippingPlanNo.AsInteger           := cds_LoadPackagesIIShippingPlanNo.AsInteger ;
  cds_CopyLDPackageNo.AsInteger                := cds_LoadPackagesIIPACKAGENO.AsInteger ;
  cds_CopyLDNoOfPackages.AsInteger             := 1 ;
  cds_CopyLDPackageTypeNo.AsInteger            := cds_LoadPackagesIIPACKAGETYPENO.AsInteger ;
  cds_CopyLDSupplierCode.AsString              := cds_LoadPackagesIISupplierCode.AsString ;
  cds_CopyLDPackageOK.AsInteger                := cds_LoadPackagesIIPackageOK.AsInteger ;
  cds_CopyLDProblemPackageLog.AsString         := cds_LoadPackagesIIProblemPackageLog.AsString ;
  cds_CopyLDCreatedUser.AsInteger              := ThisUser.UserID ;
  cds_CopyLDModifiedUser.AsInteger             := ThisUser.UserID ;
  cds_CopyLDDateCreated.AsSQLTimeStamp         := DateTimeToSQLTimeStamp(Now) ;
  cds_CopyLDDefaultCustShipObjectNo.AsInteger  := cds_LoadPackagesIIDefaultCustShipObjectNo.AsInteger ;
  cds_CopyLDOverrideMatch.AsInteger            := cds_LoadPackagesIIOverrideMatch.AsInteger ;
  cds_CopyLDLIPNo.AsInteger                    := cds_LoadPackagesIILIPNo.AsInteger ;
  cds_CopyLDDefsspno.AsInteger                 := cds_LoadPackagesIIDefsspno.AsInteger ;
  cds_CopyLDOverrideRL.AsInteger               := cds_LoadPackagesIIOverrideRL.AsInteger ;
  cds_CopyLD.Post ;
 End ;//if..
End ;

procedure TdmVidaInvoice.CopyLoad (const NewLoadNo, CopyLoadNo : Integer) ;
Var LoadShippingPlan    : Array of array of variant ;
    Load                : Array of variant ;
    x, i                : Integer ;
Begin
  //copy Load
  cds_LoadHead.Active:= False ;
  sq_LoadHead.ParamByName('LoadNo').AsInteger:= CopyLoadNo ;
  cds_LoadHead.Active:= True ;
  cds_LoadHead.First ;
  SetLength(Load, cds_LoadHead.FieldCount) ;
  for i:= 0 to cds_LoadHead.FieldCount-1 do
  Begin
   Load[i]:= cds_LoadHead.Fields[i].Value ;
  End ;

  //copy LoadShippingPlan
  cds_CopyLSP.Active:= False ;
  sq_CopyLSP.ParamByName('LoadNo').AsInteger:= CopyLoadNo ;
  cds_CopyLSP.Active:= True ;
  cds_CopyLSP.First ;
  x:= 1 ;
  While not cds_CopyLSP.Eof do
  Begin
   SetLength(LoadShippingPlan, x) ;
   SetLength(LoadShippingPlan[x-1], cds_CopyLSP.FieldCount) ;
   for i:= 0 to cds_CopyLSP.FieldCount-1 do
   Begin
    LoadShippingPlan[x-1,i]:= cds_CopyLSP.Fields[i].Value ;
   End ;
   x:= succ(x) ;

   cds_CopyLSP.Next ;
  End ;

//===================================== Insert New Load =====================
  cds_LoadHead.Active:= False ;
  sq_LoadHead.ParamByName('LoadNo').AsInteger:= -1 ;
  cds_LoadHead.Active:= True ;

  cds_CopyLSP.Active:= False ;
  sq_CopyLSP.ParamByName('LoadNo').AsInteger:= -1 ;
  cds_CopyLSP.Active:= True ;

  //Insert Load
  cds_LoadHead.Insert ;
//  LoadNo := cds_LoadHeadLoadNo.AsInteger ;
  For i := 0 to cds_LoadHead.FieldCount-1 do
  cds_LoadHead.Fields[i].Value := Load[i] ;
  cds_LoadHeadLoadNo.AsInteger              := NewLoadNo ;
  cds_LoadHeadSenderLoadStatus.AsInteger    := 0 ;
  cds_LoadHeadLoadAR.AsInteger              := 1 ;
  cds_LoadHeadCreatedUser.AsInteger         := ThisUser.UserID ;
  cds_LoadHeadModifiedUser.AsInteger        := ThisUser.UserID ;
  cds_LoadHeadDateCreated.AsSQLTimeStamp    := DateTimeToSqlTimeStamp(Now) ;
  cds_LoadHeadLoadedDate.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;
  cds_LoadHeadFS.AsString                   := 'LO:' + VarToStr(LoadShippingPlan[0,1]) ;
  cds_LoadHead.Post ;


//Insert LoadShippingPlan
  For x := Low(LoadShippingPlan) to High(LoadShippingPlan) do
  Begin
   cds_CopyLSP.Insert ;
   For i := 0 to cds_CopyLSP.FieldCount-1 do
   cds_CopyLSP.Fields[i].Value:= LoadShippingPlan[x,i] ;
   cds_CopyLSPLoadNo.AsInteger            := NewLoadNo ;
//   cds_CopyLSPConfirmedByReciever.AsInteger:= 0 ;
//   cds_CopyLSPConfirmedBySupplier.AsInteger:= 0 ;
   cds_CopyLSPCreatedUser.AsInteger       := ThisUser.UserID ;
   cds_CopyLSPModifiedUser.AsInteger      := ThisUser.UserID ;
   cds_CopyLSPDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
   cds_CopyLSP.Post ;
  End ;
End ;

//Om lasten finns returneras FALSE
function TdmVidaInvoice.CheckIfLoadNoIsOK(const LoadNo : Integer) : Boolean ;
Begin
 sq_CheckLoadNo.Close ;
 sq_CheckLoadNo.ParamByName('LoadNo').AsInteger:= LoadNo ;
 sq_CheckLoadNo.Open ;
 Try
 if sq_CheckLoadNoLoadNo.AsInteger = LoadNo then
 Result := False
 else
 Result := True ;
 Finally
  sq_CheckLoadNo.Close ;
 End ;
End ;

procedure TdmVidaInvoice.AddLONoToLoadIfMissing (const ShippingPlanNo, CopyLoadNo, NewLoadNo : Integer) ;
Var LoadShippingPlan    : Array of array of variant ;
//    Load                : Array of variant ;
    x, i                : Integer ;
Begin
  //copy LoadShippingPlan
 if not cds_CopyLSP.Locate('ShippingPlanNo', ShippingPlanNo, []) then
 Begin
  sq_CopyLSPByLoNo.ParamByName('LoadNo').AsInteger          := CopyLoadNo ;
  sq_CopyLSPByLoNo.ParamByName('ShippingPlanNo').AsInteger  := ShippingPlanNo ;
  sq_CopyLSPByLoNo.Open ;
  sq_CopyLSPByLoNo.First ;
  x:= 1 ;
  While not sq_CopyLSPByLoNo.Eof do
  Begin
   SetLength(LoadShippingPlan, x) ;
   SetLength(LoadShippingPlan[x-1], sq_CopyLSPByLoNo.FieldCount) ;
   for i:= 0 to sq_CopyLSPByLoNo.FieldCount-1 do
   Begin
    LoadShippingPlan[x-1,i]:= sq_CopyLSPByLoNo.Fields[i].Value ;
   End ;
   x:= succ(x) ;

   sq_CopyLSPByLoNo.Next ;
  End ;

//===================================== Insert New LoadShippingPlan =====================
  For x := Low(LoadShippingPlan) to High(LoadShippingPlan) do
  Begin
   cds_CopyLSP.Insert ;
   For i := 0 to cds_CopyLSP.FieldCount-1 do
   cds_CopyLSP.Fields[i].Value:= LoadShippingPlan[x,i] ;
   cds_CopyLSPLoadNo.AsInteger            := NewLoadNo ;
//   cds_CopyLSPConfirmedByReciever.AsInteger:= 0 ;
//   cds_CopyLSPConfirmedBySupplier.AsInteger:= 0 ;
   cds_CopyLSPCreatedUser.AsInteger       := ThisUser.UserID ;
   cds_CopyLSPModifiedUser.AsInteger      := ThisUser.UserID ;
   cds_CopyLSPDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
   cds_CopyLSP.Post ;
  End ;
 End ; //if not cds_CopyLSP.Locate('ShippingPlanNo', ShippingPlanNo, []) then
End ;

procedure TdmVidaInvoice.cds_LoadPackagesReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmVidaInvoice.dsp_LoadPackagesGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'LoadDetail' ;
end;

procedure TdmVidaInvoice.cds_IH_SpecLoadPIPNoChange(Sender: TField);
begin
 with dmVidaInvoice do
 Begin
  cds_LIP.Filter    := 'PIPNo = ' + cds_IH_SpecLoadPIPNo.AsString ;
  cds_LIP.Filtered  := True ;
  if cds_LIP.RecordCount = 1 then
   cds_IH_SpecLoadLIPNo.AsInteger:= cds_LIPLIPNo.AsInteger
    else
     cds_IH_SpecLoadLIPNo.AsInteger:= -1 ;
 End ;//With
end;

procedure TdmVidaInvoice.RemovePkgFromLoad ;
Begin
     Try
      sp_RemPkgFromLoad.Close ;
      sp_RemPkgFromLoad.ParamByName('PackageNo').AsInteger                := cds_LoadPackagesIIIPACKAGENO.AsInteger ;
      sp_RemPkgFromLoad.ParamByName('SupplierCode').AsString              := cds_LoadPackagesIIISupplierCode.AsString ;
      sp_RemPkgFromLoad.ParamByName('RegistrationPointNo').AsInteger      := -1 ; // -1 ingen mätpunkt
      sp_RemPkgFromLoad.ParamByName('PackageTypeNo').AsInteger            := cds_LoadPackagesIIIPACKAGETYPENO.AsInteger ;
      sp_RemPkgFromLoad.ParamByName('LogicalInventoryPointNo').AsInteger  := cds_IH_SpecLoadLIPNo.AsInteger ; //cds_LoadPackagesLIPNo.AsInteger ;
      sp_RemPkgFromLoad.ParamByName('UserID').AsInteger                   := ThisUser.UserID ;
      sp_RemPkgFromLoad.ParamByName('Status').AsInteger                   := status_Pkg_IN_Inventory ;
      sp_RemPkgFromLoad.ParamByName('Operation').AsInteger                := oper_Remove_From_Load ;
//      sp_RemPkgFromLoad.ParamByName('LoadNo').AsInteger:= LoadNo ;
      sp_RemPkgFromLoad.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmVidaInvoice.cds_IH_SpecLoadAfterInsert(DataSet: TDataSet);
begin
 cds_IH_SpecLoadInternalInvoiceNo.AsInteger:= cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
end;

procedure TdmVidaInvoice.cdsInvoiceHeadSupplierNoChange(Sender: TField);
begin
  cds_PIP.Active:= False ;
  sq_PIP.ParamByName('OwnerNo').AsInteger:= cdsInvoiceHeadSupplierNo.AsInteger ;
  cds_PIP.Active:= True ;
end;

procedure TdmVidaInvoice.dsp_LoadPackagesIIGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'LoadDetail' ;
end;

procedure TdmVidaInvoice.dsp_LoadPackagesIIIGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'IH_PkgsRem' ;
end;

procedure TdmVidaInvoice.cds_LoadPackagesIIIReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmVidaInvoice.DeleteEmptyLoadsForInternalInvoiceNo(const InternalInvoiceNo : Integer) ;
Begin
 Try
 sq_DelIHEmptyLoads.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
 sq_DelIHEmptyLoads.ExecSQL(False) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmVidaInvoice.DeletePreliminaryInvoice(const InternalInvoiceNo : Integer) ;
Begin
 Try
 sq_DelIH.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
 sq_DelIH.ExecSQL(False) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmVidaInvoice.ExportTyp1(const InvoiceNo, InternalInvoiceNo, CET : Integer) ;
const
  LF = #10;
Var FileName, FileNameExcel : String ;
Begin
 FileName       := dmsSystem.Get_Dir('ExcelDir') + 'InvoiceNo ' + IntToStr(InvoiceNo) + '.csv' ;
 FileNameExcel  := dmsSystem.Get_Dir('ExcelDir') + 'InvoiceNo ' + IntToStr(InvoiceNo) + '.xls' ;
 sq_ExportTyp1.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
 sq_ExportTyp1.ParamByName('CET').AsInteger := CET ;
 cds_ExportTyp1.Active:= True ;
 Try
 QExport3ASCII1.FileName:= FileName ;
 QExport3ASCII1.Execute ;
 QExport3XLS1.FileName:= FileNameExcel ;
 QExport3XLS1.Execute ;
 ShowMessage('Filerna exporterade till ' + FileName + ' resp. ' + FileNameExcel
 + LF + ''
 + LF + '' 
 + '  OBS!Kontrollera filerna innan du skickar dem!') ;
 Finally
  cds_ExportTyp1.Active:= False ;
 End ;
End ;

procedure TdmVidaInvoice.QExport3ASCII1BeforeExportRow(Sender: TObject;
  Row: TQExportRow; var Accept: Boolean);
  var
  i: integer;
begin
{ for i := 0 to Row.Count - 1 do begin
  if (Row[i].Name = 'MINLENGTH') then
   if Row[i].Value = '0' then
    Row[i].Value:= '0000' ;
// Row[i].Value:=  ReplaceCommas(Row[i].Value) ;
 Accept := True ;
//     if (AnsiCompareText(Row[i].Value, '') = 0)
//    AND ((Row[i].Name = 'Customer') or (Row[i].Name = 'AddressName'))
//    then begin
//        Accept := false;
//        Exit;
//    end;
 End ; }
end;

procedure TdmVidaInvoice.cdsInvoiceHeadResponsibleSellerChange(
  Sender: TField);
begin

 With dmVidaInvoice do
 Begin
  if cdsInvoiceLO.Active then
  Begin
   if cdsInvoiceLO.State in [dsBrowse] then
   cdsInvoiceLO.Edit ;
   cdsInvoiceLOSalesMan.AsString:= dmsContact.GetFullUserName(cdsInvoiceHeadResponsibleSeller.AsInteger) ;
   cdsInvoiceLO.Post ;
  End ;
 End ;
end;


procedure TdmVidaInvoice.EmailaTrpBrevExecute(const IntInvNo, InvoiceNo, CustomerNo, LONo : Integer) ;
const
  LF = #10;
Var FormCRExportOneReport   : TFormCRExportOneReport ;
    A                       : array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : array of String ;
    MailToAddress,
    ExcelDir                : String ;
begin
// if dmVidaInvoice.cdsInvoiceList.Locate('INT_INVNO', IntInvNo, []) then
// Begin
  ExcelDir          := dmsSystem.Get_Dir('ExcelDir') ;
 MailToAddress:= dmsContact.GetEmailAddressForSpeditorByLO(LONo) ;
 if Length(MailToAddress) = 0 then
 Begin
  MailToAddress:= 'ange@adress.nu' ;
  ShowMessage('Emailadress saknas för klienten, ange adressen direkt i mailet(outlook)') ;
 End ;
 if Length(MailToAddress) > 0 then
 Begin


 FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
 Try
  SetLength(A, 1);

  A[0]:= INTINVNO ;
  FormCRExportOneReport.CreateCo(CustomerNo, cTrpBrev, A, ExcelDir + 'Transportbrev ' + IntToStr(INVOICENO)) ;
  FormCRExportOneReport.CreateCo(CustomerNo, cPkgSpec, A, ExcelDir + 'Specification ' + IntToStr(INVOICENO)) ;
 Finally
  FreeAndNil(FormCRExportOneReport) ;//.Free ;
 End ;



 SetLength(Attach, 2);
 Attach[0]        := ExcelDir + 'Transportbrev ' + IntToStr(INVOICENO) + '.pdf' ;
 Attach[1]        := ExcelDir + 'Specification ' + IntToStr(INVOICENO) + '.pdf' ;
 dm_SendMapiMail  := Tdm_SendMapiMail.Create(nil);
 Try
  dm_SendMapiMail.SendMail('Transportbrev/Paketspec. Fakturanr: ' + IntToStr(INVOICENO),
  'Transportbrev/Paketspecifikation bifogad. '
  +LF+''
  +'Transport letter/Package specification attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir('MyEmailAddress'),
  MailToAddress,
  Attach) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End
  else
   ShowMessage('Emailadress saknas för klienten!') ;
// End ;//if dmVidaInvoice.cdsInvoiceList.Locate('INT_INVNO', IntInvNo, []) then
end;

Procedure TdmVidaInvoice.ExportToWoodx(const CustomerNo, IntInvNo : Integer;const InvoiceNo : String) ;
//Var DeliveryMessageNumber : String ;
begin
 XMLImportExport:= TXMLImportExport.Create(nil);
 try
  XMLImportExport.InvoiceNo             := StrToIntDef(InvoiceNo,0) ;
  XMLImportExport.InternalInvoiceNo     := IntInvNo ;
  XMLImportExport.CustomerNo            := CustomerNo ;  
  XMLImportExport.TabSheet1.TabVisible  := False ;
   if XMLImportExport.ShowModal = mrOK then
   Begin
//    DeliveryMessageNumber:= XMLImportExport.DeliveryMessageNumber ;
   End ;
 finally
  FreeAndNil(XMLImportExport) ;
 end;
end;

procedure TdmVidaInvoice.ExportInvoiceSpecWoodxExecute(const CustomerNo, IntInvNo : Integer;const InvoiceNo : String) ;
begin
 dm_ImportWoodx:= Tdm_ImportWoodx.Create(nil);
 Try
 With dm_ImportWoodx do
 Begin
//  DeliveryMessageNumber:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsString ;
  Try
   ExportDeliveryWoodMessage(IntInvNo) ;
   ExportToWoodx(CustomerNo, IntInvNo, InvoiceNo) ;
  Except
  End ;
 End ;
 Finally
  FreeAndNil(dm_ImportWoodx) ;
 End ;
end;

procedure TdmVidaInvoice.PrepareExportFiles(const InvoiceNo : String;const CustomerNo, InternalInvoiceNo, CET : Integer) ;
const
  LF = #10;
Var FileName,
    FileNameExcel,
    Stext,
    Subject,
    MailToAddress   : String ;
    Attach          : array of String ;
Begin
 FileName       := dmsSystem.Get_Dir('ExcelDir') + 'InvoiceNo ' + InvoiceNo + '.csv' ;
 FileNameExcel  := dmsSystem.Get_Dir('ExcelDir') + 'InvoiceNo ' + InvoiceNo + '.xls' ;
 sq_ExportTyp1.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
 sq_ExportTyp1.ParamByName('CET').AsInteger := CET ;
 cds_ExportTyp1.Active:= True ;
 Try
 QExport3ASCII1.FileName:= FileName ;
 QExport3ASCII1.Execute ;
 QExport3XLS1.FileName:= FileNameExcel ;
 QExport3XLS1.Execute ;

 SetLength(Attach, 2);
 Attach[0]:= FileName ;
 Attach[1]:= FileNameExcel ;

 Subject := 'Faktura/paketspecifikation. Fakturanr: ' + InvoiceNo
  +' - Invoice/package specification. InvoiceNo: ' + InvoiceNo ;
 Stext :=  'Exportfil paketspecifikation bifogad. '
  +LF+''
  +'Export file package specification attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +dmsContact.GetFirstAndLastName(ThisUser.UserID) ;

 MailToAddress:= dmsContact.GetEmailAddress(CustomerNo) ;
 dmsSystem.Email_Attachments(Attach, MailToAddress, Subject, Stext);
// ShowMessage('Filerna exporterade till ' + FileName + ' resp. ' + FileNameExcel  + LF + ''  + LF + ''  + '  OBS!Kontrollera filerna innan du skickar dem!') ;
 Finally
  cds_ExportTyp1.Active:= False ;
 End ;
End ;

Function TdmVidaInvoice.GetInvoiceTypeByLONo (const LONo : Integer) : Integer ;
Begin
 sq_GetInvoiceType.ParamByName('LONo').AsInteger  := LONo ;
 sq_GetInvoiceType.Open ;
 Try
 if not sq_GetInvoiceType.Eof then
  Result := sq_GetInvoiceTypeInvoiceType.AsInteger
   else
    Result  := -1 ;
 Finally
  sq_GetInvoiceType.Close ;
 End ;
End ;

Function TdmVidaInvoice.GetInternalInvoiceNoByINVOICENO (const InvoiceNo : Integer;Var InvoiceType : Integer) : Integer ;
Begin
 sq_GetIntInvNo.ParamByName('InvoiceNo').AsInteger  := InvoiceNo ;
 sq_GetIntInvNo.Open ;
 Try
 if not sq_GetIntInvNo.Eof then
 Begin
  Result      := sq_GetIntInvNoInternalInvoiceNo.AsInteger ;
  InvoiceType := sq_GetIntInvNoInvoiceType.AsInteger ;
 End
  else
   Begin
    Result      := -1 ;
    InvoiceType := -1 ;
   End;
 Finally
  sq_GetIntInvNo.Close ;
 End ;
End ;

Function TdmVidaInvoice.GetGetProFormInvNo (const InternalInvoiceNo : Integer) : Integer ;
Begin
 sq_GetProFormInvNo.ParamByName('InternalInvoiceNo').AsInteger  := InternalInvoiceNo ;
 sq_GetProFormInvNo.Open ;
 Try
 if not sq_GetProFormInvNo.Eof then
  Result  := sq_GetProFormInvNoProformaInvoiceNo.AsInteger
   else
    Result  := -1 ;
 Finally
  sq_GetProFormInvNo.Close ;
 End ;
End ;

end.
