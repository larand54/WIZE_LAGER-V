unit UnitdmModule1;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, kbmMemTable,
  dxmdaset, SqlTimSt, Dialogs, Controls, uADStanIntf, uADStanOption,
  uADStanParam, uADStanError, uADDatSManager, uADPhysIntf, uADDAptIntf,
  uADCompDataSet, uADCompClient ;

type
  TdmModule1 = class(TDataModule)
    SQLSPClient: TSQLStoredProc;
    SQLSPClientClientNo: TIntegerField;
    SQLSPClientClientName: TStringField;
    dsClient: TDataSource;
    dspClient: TDataSetProvider;
    cdsClient: TClientDataSet;
    cdsClientClientNo: TIntegerField;
    cdsClientClientName: TStringField;
    sq_ClientData: TSQLQuery;
    sq_ClientDataClientName: TStringField;
    sq_ClientDataClientNo: TIntegerField;
    sq_ClientDataInvoiceText: TStringField;
    sq_ClientDataDeliveryTerm: TStringField;
    sq_ClientDataPayDesc: TStringField;
    sq_ClientDataFreightInDiscount: TIntegerField;
    sq_ClientDataFreightInCommission: TIntegerField;
    sq_ClientDataCommissionPaidByCustomer: TIntegerField;
    sq_ClientDataDiscount1: TFloatField;
    sq_ClientDataCURRENCYNAME: TStringField;
    sq_ClientDataBILL_ADDRESS_NAME: TStringField;
    sq_ClientDataBILL_ADDRESSLINE1: TStringField;
    sq_ClientDataBILL_ADDRESSLINE2: TStringField;
    sq_ClientDataBILL_ADDRESSLINE3: TStringField;
    sq_ClientDataBILL_ADDRESSLINE4: TStringField;
    sq_ClientDataBILL_STATEORPROVINCE: TStringField;
    sq_ClientDataBILL_POSTALCODE: TStringField;
    sq_ClientDataBILL_ADDRESSCITY: TStringField;
    sq_ClientDataBILL_ADDRESSCOUNTRY: TStringField;
    sq_ClientDataSHIPTO_ADDRESS_NAME: TStringField;
    sq_ClientDataSHIPTO_ADDRESSLINE1: TStringField;
    sq_ClientDataSHIPTO_ADDRESSLINE2: TStringField;
    sq_ClientDataSHIPTO_ADDRESSLINE3: TStringField;
    sq_ClientDataSHIPTO_ADDRESSLINE4: TStringField;
    sq_ClientDataSHIPTO_PROVINCE: TStringField;
    sq_ClientDataSHIPTO_POSTALCODE: TStringField;
    sq_ClientDataSHIPTO_CITY: TStringField;
    sq_ClientDataSHIPTO_COUNTRY: TStringField;
    sq_ClientDataDeliveryTerm_No: TIntegerField;
    sq_ClientDataPaymentTermsNo: TIntegerField;
    sq_ClientDataCurrencyNo: TIntegerField;
    sq_ClientDataDefaultBillingAddressNo: TIntegerField;
    sq_Destination: TSQLStoredProc;
    sq_DestinationCityNo: TIntegerField;
    sq_DestinationCityName: TStringField;
    dspDestination: TDataSetProvider;
    cdsDestination: TClientDataSet;
    dsDestination: TDataSource;
    cdsDestinationCityNo: TIntegerField;
    cdsDestinationCityName: TStringField;
    sq_ClientAddress: TSQLQuery;
    sq_ClientAddressADDRESS_NAME: TStringField;
    sq_ClientAddressADDRESSLINE1: TStringField;
    sq_ClientAddressADDRESSLINE2: TStringField;
    sq_ClientAddressADDRESSLINE3: TStringField;
    sq_ClientAddressADDRESSLINE4: TStringField;
    sq_ClientAddressPROVINCE: TStringField;
    sq_ClientAddressPOSTALCODE: TStringField;
    sq_ClientAddressCITY: TStringField;
    sq_ClientAddressCOUNTRY: TStringField;
    sq_ClientAddressADDRESS_NO: TIntegerField;
    dspClientAddress: TDataSetProvider;
    cdsClientAddress: TClientDataSet;
    dsClientAddress: TDataSource;
    cdsClientAddressADDRESS_NO: TIntegerField;
    cdsClientAddressADDRESS_NAME: TStringField;
    cdsClientAddressADDRESSLINE1: TStringField;
    cdsClientAddressADDRESSLINE2: TStringField;
    cdsClientAddressADDRESSLINE3: TStringField;
    cdsClientAddressADDRESSLINE4: TStringField;
    cdsClientAddressPROVINCE: TStringField;
    cdsClientAddressPOSTALCODE: TStringField;
    cdsClientAddressCITY: TStringField;
    cdsClientAddressCOUNTRY: TStringField;
    sq_GetXRate: TSQLQuery;
    sq_GetXRateEXCHANGERATE: TFloatField;
    sq_GetXRateVALIDFROM: TSQLTimeStampField;
    sq_Currency: TSQLQuery;
    sq_CurrencyCurrencyNo: TIntegerField;
    sq_CurrencyCurrencyName: TStringField;
    dspCurrency: TDataSetProvider;
    cdsCurrency: TClientDataSet;
    dsCurrency: TDataSource;
    cdsCurrencyCurrencyNo: TIntegerField;
    cdsCurrencyCurrencyName: TStringField;
    sq_DelTerms: TSQLQuery;
    dspDelTerms: TDataSetProvider;
    cdsDelTerms: TClientDataSet;
    dsDelTerms: TDataSource;
    cdsDelTermsDeliveryTerm_No: TIntegerField;
    cdsDelTermsDeliveryTerm: TStringField;
    cdsDelTermsDateCreated: TSQLTimeStampField;
    cdsDelTermsCreatedUser: TIntegerField;
    cdsDelTermsModifiedUser: TIntegerField;
    cdsDelTermsSequenceNo: TIntegerField;
    cdsDelTermsDescription: TStringField;
    sq_PaymentTerm: TSQLQuery;
    dspPaymentTerm: TDataSetProvider;
    cdsPaymentTerm: TClientDataSet;
    dsPaymentTerm: TDataSource;
    cdsPaymentTermPaymentTermsNo: TIntegerField;
    cdsPaymentTermPaymentTermName: TStringField;
    cdsPaymentTermDiscount1: TFloatField;
    cdsPaymentTermFreightInDiscount: TIntegerField;
    cdsPaymentTermFreightInCommission: TIntegerField;
    cdsPaymentTermCommissionPaidByCustomer: TIntegerField;
    cdsPaymentTermDescription: TStringField;
    cdsPaymentTermLanguageCode: TIntegerField;
    sq_ClientDataLanguageCode: TIntegerField;
    sq_LoadFreightCost: TSQLQuery;
    dspLoadFreightCost: TDataSetProvider;
    cdsLoadFreightCost: TClientDataSet;
    dsLoadFreightCost: TDataSource;
    sqLoadFreightCost: TSQLQuery;
    sq_GetAddressNo: TSQLQuery;
    sq_GetAddressNoAddressNo: TIntegerField;
    sq_PkgInfo: TSQLQuery;
    dsp_PkgInfo: TDataSetProvider;
    cds_PkgInfo: TClientDataSet;
    ds_PkgInfo: TDataSource;
    sp_PcsPerLength: TSQLStoredProc;
    sq_LoadPkgInfo: TSQLQuery;
    dsp_LoadPkgInfo: TDataSetProvider;
    cds_LoadPkgInfo: TClientDataSet;
    ds_LoadPkgInfo: TDataSource;
    cds_LoadPkgInfoLOAD_CUSTOMER: TStringField;
    cds_LoadPkgInfoLOAD_SUPPLIER: TStringField;
    cds_LoadPkgInfoLOAD_DATE: TSQLTimeStampField;
    cds_LoadPkgInfoLOAD_NO: TIntegerField;
    cds_LoadPkgInfoLO_NUMBER: TIntegerField;
    cds_LoadPkgInfoFS: TStringField;
    cds_LoadPkgInfoLOAD_CREATED_BY: TStringField;
    cds_LoadPkgInfoLOAD_STATUS: TStringField;
    cds_LoadPkgInfoINVOICE_NO: TIntegerField;
    cds_LoadPkgInfoINV_CREATED_BY: TStringField;
    cds_LoadPkgInfoINVOICE_DATE: TSQLTimeStampField;
    cds_LoadPkgInfoINT_INVOICE_NO: TIntegerField;
    cds_LoadPkgInfoINVOICETYPE: TStringField;
    cds_LoadPkgInfoDEBIT_CREDIT: TStringField;
    cds_LoadPkgInfoORDER_NO: TStringField;
    cds_LoadPkgInfoORDER_CUSTOMER: TStringField;
    cds_PkgInfoPKG_CREATED_BY: TStringField;
    cds_PkgInfoPKG_NO: TIntegerField;
    cds_PkgInfoPKG_CREATED: TSQLTimeStampField;
    cds_PkgInfoSUPP_CODE: TStringField;
    cds_PkgInfoPRODUCT: TStringField;
    cds_PkgInfoINVENTORY_OWNER: TStringField;
    cds_PkgInfoPRODUCER: TStringField;
    cds_PkgInfoINVENTORY: TStringField;
    cds_PkgInfoINVENTORY_GROUP: TStringField;
    cds_PkgInfoPKG_STATUS: TStringField;
    cds_PkgInfoBARCODE: TStringField;
    cds_PkgInfoGRADESTAMP: TStringField;
    cds_PkgInfoPKG_HEIGHT: TIntegerField;
    cds_PkgInfoPKG_WIDTH: TIntegerField;
    cds_PkgInfoMINI_BUNDLED: TStringField;
    cds_PkgInfoSTICKS: TStringField;
    cds_PkgInfoWRAP: TStringField;
    cds_PkgInfoSHRINK_WRAP: TStringField;
    cds_PkgInfoM3_ACT: TFloatField;
    cds_PkgInfoM3_NOM: TFloatField;
    cds_PkgInfoPIECES: TIntegerField;
    cds_PkgInfoMFBM: TFloatField;
    cds_PkgInfoACT_LINEAL_METER: TFloatField;
    cds_PkgInfoNOM_LINEAL_METER: TFloatField;
    cds_PkgInfoM2: TFloatField;
    cds_PkgInfoPACKAGETYPENO: TIntegerField;
    sq_LoadFreightCostLOAD_NO: TIntegerField;
    sq_LoadFreightCostFS: TStringField;
    sq_LoadFreightCostLOAD_ID: TStringField;
    sq_LoadFreightCostLOADEDDATE: TSQLTimeStampField;
    sq_LoadFreightCostSHIPPER: TStringField;
    sq_LoadFreightCostFROM_PLACE: TStringField;
    sq_LoadFreightCostDESTINATION: TStringField;
    sq_LoadFreightCostM3_NET: TFloatField;
    sq_LoadFreightCostPRICE: TFloatField;
    sq_LoadFreightCostINVOICEAMOUNT: TFloatField;
    sq_LoadFreightCostCREATEDUSER: TIntegerField;
    sq_LoadFreightCostMODIFIEDUSER: TIntegerField;
    sq_LoadFreightCostDATECREATED: TSQLTimeStampField;
    sq_LoadFreightCostDATEMODIFIED: TSQLTimeStampField;
    tblLoadFreight: TADMemTable;
    tblLoadFreightLOADNO: TIntegerField;
    tblLoadFreightLOADID: TStringField;
    tblLoadFreightLOADEDDATE: TDateTimeField;
    tblLoadFreightFROM_PLACE: TStringField;
    tblLoadFreightDESTINATION: TStringField;
    tblLoadFreightSHIPPER: TStringField;
    tblLoadFreightFS: TStringField;
    tblLoadFreightM3_NET: TFloatField;
    tblLoadFreightPRICE: TFloatField;
    tblLoadFreightINVOICEAMOUNT: TFloatField;
    sq_LoadFreightCostHeader: TSQLQuery;
    dsp_LoadFreightCostHeader: TDataSetProvider;
    cds_LoadFreightCostHeader: TClientDataSet;
    sqLoadFreightCostAvrakningsNo: TIntegerField;
    sqLoadFreightCostLoadNo: TIntegerField;
    sqLoadFreightCostM3_NET: TFloatField;
    sqLoadFreightCostPricePerM3_NET: TFloatField;
    sqLoadFreightCostTotalSUM: TFloatField;
    sqLoadFreightCostCreatedUser: TIntegerField;
    sqLoadFreightCostModifiedUser: TIntegerField;
    sqLoadFreightCostDateCreated: TSQLTimeStampField;
    sqLoadFreightCostDateModified: TSQLTimeStampField;
    cdsLoadFreightCostAvrakningsNo: TIntegerField;
    cdsLoadFreightCostLoadNo: TIntegerField;
    cdsLoadFreightCostM3_NET: TFloatField;
    cdsLoadFreightCostPricePerM3_NET: TFloatField;
    cdsLoadFreightCostTotalSUM: TFloatField;
    cds_LoadFreightCostHeaderAvrakningsNo: TIntegerField;
    cds_LoadFreightCostHeaderLocalShipperNo: TIntegerField;
    cds_LoadFreightCostHeaderAvrakningsDate: TSQLTimeStampField;
    cds_LoadFreightCostHeaderCreatedUser: TIntegerField;
    cds_LoadFreightCostHeaderModifiedUser: TIntegerField;
    cds_LoadFreightCostHeaderDateCreated: TSQLTimeStampField;
    cds_LoadFreightCostHeaderDateModified: TSQLTimeStampField;
    cds_LoadFreightCostHeaderNote: TMemoField;
    sp_LoadFreightCost: TSQLStoredProc;
    sp_LoadFreightCostLOAD_NO: TIntegerField;
    sp_LoadFreightCostFS: TStringField;
    sp_LoadFreightCostLOAD_ID: TStringField;
    sp_LoadFreightCostLOADEDDATE: TSQLTimeStampField;
    sp_LoadFreightCostSHIPPER: TStringField;
    sp_LoadFreightCostFROM_PLACE: TStringField;
    sp_LoadFreightCostDESTINATION: TStringField;
    sp_LoadFreightCostM3_NET: TFloatField;
    sp_LoadFreightCostPRICE: TFloatField;
    sp_LoadFreightCostINVOICEAMOUNT: TFloatField;
    sp_LoadFreightCostCREATEDUSER: TIntegerField;
    sp_LoadFreightCostMODIFIEDUSER: TIntegerField;
    sp_LoadFreightCostDATECREATED: TSQLTimeStampField;
    sp_LoadFreightCostDATEMODIFIED: TSQLTimeStampField;
    ds_LoadFreightCostHeader: TDataSource;
    sq_LoadFreightCostHeader2: TSQLQuery;
    dsp_LoadFreightCostHeader2: TDataSetProvider;
    cds_LoadFreightCostHeader2: TClientDataSet;
    cds_LoadFreightCostHeader2AvrakningsNo: TIntegerField;
    cds_LoadFreightCostHeader2LocalShipperNo: TIntegerField;
    cds_LoadFreightCostHeader2AvrakningsDate: TSQLTimeStampField;
    cds_LoadFreightCostHeader2CreatedUser: TIntegerField;
    cds_LoadFreightCostHeader2ModifiedUser: TIntegerField;
    cds_LoadFreightCostHeader2DateCreated: TSQLTimeStampField;
    cds_LoadFreightCostHeader2DateModified: TSQLTimeStampField;
    cds_LoadFreightCostHeader2Note: TMemoField;
    ds_LoadFreightCostHeader2: TDataSource;
    sq_LoadFreightCostDetails: TSQLQuery;
    dsp_LoadFreightCostDetails: TDataSetProvider;
    cds_LoadFreightCostDetails: TClientDataSet;
    ds_LoadFreightCostDetails: TDataSource;
    cds_LoadFreightCostHeaderStatus: TIntegerField;
    cds_LoadFreightCostHeader2Status: TIntegerField;
    sp_LoadFreightCostSUPPLIERNO: TIntegerField;
    cds_LoadFreightCostHeaderShippersInvoiceNo: TStringField;
    cds_LoadFreightCostHeader2ShippersInvoiceNo: TStringField;
    tblLoadFreightSUPPLIERNO: TIntegerField;
    tblLoadFreightTOTAL_AMOUNT: TFloatField;
    tblLoadFreightChecked: TBooleanField;
    ds_tblLoadFreight3: TDataSource;
    sq_PaymentText: TSQLQuery;
    dsp_PaymentText: TDataSetProvider;
    cds_PaymentText: TClientDataSet;
    ds_PaymentText: TDataSource;
    cds_PaymentTextCurrencyNo: TIntegerField;
    cds_PaymentTextLanguageCode: TIntegerField;
    cds_PaymentTextPaymentText: TMemoField;
    cds_PaymentTextCreatedUser: TIntegerField;
    cds_PaymentTextModifiedUser: TIntegerField;
    cds_PaymentTextDateCreated: TSQLTimeStampField;
    cds_PaymentTextCountryNo: TIntegerField;
    sq_Curr: TSQLQuery;
    dsp_curr: TDataSetProvider;
    cds_curr: TClientDataSet;
    ds_curr: TDataSource;
    sq_CurrCurrencyNo: TIntegerField;
    sq_CurrCurrencyName: TStringField;
    sq_CurrDateCreated: TSQLTimeStampField;
    sq_CurrCreatedUser: TIntegerField;
    sq_CurrModifiedUser: TIntegerField;
    cds_currCurrencyNo: TIntegerField;
    cds_currCurrencyName: TStringField;
    cds_currDateCreated: TSQLTimeStampField;
    cds_currCreatedUser: TIntegerField;
    cds_currModifiedUser: TIntegerField;
    sq_Language: TSQLQuery;
    sq_LanguageLanguageNo: TIntegerField;
    sq_LanguageLanguageName: TStringField;
    cds_PaymentTextLanguage: TStringField;
    dsp_Language: TDataSetProvider;
    cds_Language: TClientDataSet;
    cds_LanguageLanguageNo: TIntegerField;
    cds_LanguageLanguageName: TStringField;
    sq_PaymentTextCurrencyNo: TIntegerField;
    sq_PaymentTextLanguageCode: TIntegerField;
    sq_PaymentTextPaymentText: TMemoField;
    sq_PaymentTextCreatedUser: TIntegerField;
    sq_PaymentTextModifiedUser: TIntegerField;
    sq_PaymentTextDateCreated: TSQLTimeStampField;
    sq_PaymentTextCountryNo: TIntegerField;
    sq_Country: TSQLQuery;
    dsp_Country: TDataSetProvider;
    cds_Country: TClientDataSet;
    cds_CountryCountryNo: TIntegerField;
    cds_CountryCountryName: TStringField;
    cds_PaymentTextCountry: TStringField;
    sq_ExchangeRate: TSQLQuery;
    dsp_ExchangeRate: TDataSetProvider;
    cds_ExchangeRate: TClientDataSet;
    ds_ExchangeRate: TDataSource;
    cds_ExchangeRateCurrencyNo: TIntegerField;
    cds_ExchangeRateExchangeRateNo: TIntegerField;
    cds_ExchangeRateExchangeRate: TFloatField;
    cds_ExchangeRateValidFrom: TSQLTimeStampField;
    cds_ExchangeRateCreatedUser: TIntegerField;
    cds_ExchangeRateModifiedUser: TIntegerField;
    cds_ExchangeRateDateCreated: TSQLTimeStampField;
    sq_ExchangeRateCurrencyNo: TIntegerField;
    sq_ExchangeRateExchangeRateNo: TIntegerField;
    sq_ExchangeRateExchangeRate: TFloatField;
    sq_ExchangeRateValidFrom: TSQLTimeStampField;
    sq_ExchangeRateCreatedUser: TIntegerField;
    sq_ExchangeRateModifiedUser: TIntegerField;
    sq_ExchangeRateDateCreated: TSQLTimeStampField;
    sq_genfreight: TSQLQuery;
    dsp_genfreight: TDataSetProvider;
    cds_genfreight: TClientDataSet;
    ds_genfreight: TDataSource;
    sq_genfreightSalesRegionNo: TIntegerField;
    sq_genfreighttype: TStringField;
    sq_genfreightValidFrom: TSQLTimeStampField;
    sq_genfreightCost: TFloatField;
    sq_genfreightCurrencyNo: TIntegerField;
    sq_genfreightVolunitNo: TIntegerField;
    sq_genfreightDateCreated: TSQLTimeStampField;
    sq_genfreightModifiedUser: TIntegerField;
    cds_genfreightSalesRegionNo: TIntegerField;
    cds_genfreighttype: TStringField;
    cds_genfreightValidFrom: TSQLTimeStampField;
    cds_genfreightCost: TFloatField;
    cds_genfreightCurrencyNo: TIntegerField;
    cds_genfreightVolunitNo: TIntegerField;
    cds_genfreightDateCreated: TSQLTimeStampField;
    cds_genfreightModifiedUser: TIntegerField;
    cds_genfreightVALUTA: TStringField;
    sq_VolUnit: TSQLQuery;
    sq_VolUnitTemplateUnitNo: TIntegerField;
    sq_VolUnitTemplateUnitName: TStringField;
    dspVolUnit: TDataSetProvider;
    cdsVolUnit: TClientDataSet;
    cdsVolUnitTemplateUnitNo: TIntegerField;
    cdsVolUnitTemplateUnitName: TStringField;
    dsVolUnit: TDataSource;
    cds_genfreightENHET: TStringField;
    sq_genfreightscrow: TIntegerField;
    cds_genfreightscrow: TIntegerField;
    mtShippers: TADMemTable;
    mtShippersShipper: TStringField;
    mtShippersShippersInvoiceNo: TStringField;
    dsShippers: TDataSource;
    mtShippersShipperNo: TIntegerField;
    sp_LoadFreightCostLocalShippingCompanyNo: TIntegerField;
    tblLoadFreightLocalShippingCompanyNo: TIntegerField;
    cds_LoadFreightCostHeader2SHIPPER: TStringField;
    mtShippersAvrakningsNr: TIntegerField;
    tblLoadFreightLO: TIntegerField;
    sq_GetLoadNo: TSQLQuery;
    sq_GetLoadNoLoadNo: TIntegerField;
    sq_LoadFreightCostHeader2AvrakningsNo: TIntegerField;
    sq_LoadFreightCostHeader2Status: TIntegerField;
    sq_LoadFreightCostHeader2LocalShipperNo: TIntegerField;
    sq_LoadFreightCostHeader2AvrakningsDate: TSQLTimeStampField;
    sq_LoadFreightCostHeader2CreatedUser: TIntegerField;
    sq_LoadFreightCostHeader2ModifiedUser: TIntegerField;
    sq_LoadFreightCostHeader2DateCreated: TSQLTimeStampField;
    sq_LoadFreightCostHeader2DateModified: TSQLTimeStampField;
    sq_LoadFreightCostHeader2Note: TMemoField;
    sq_LoadFreightCostHeader2ShippersInvoiceNo: TStringField;
    sq_LoadFreightCostHeader2SHIPPER: TStringField;
    sq_LoadFreightCostDetailsAvrakningsNo: TIntegerField;
    sq_LoadFreightCostDetailsFS: TStringField;
    sq_LoadFreightCostDetailsLOAD_ID: TStringField;
    sq_LoadFreightCostDetailsLOADEDDATE: TSQLTimeStampField;
    sq_LoadFreightCostDetailsSHIPPER: TStringField;
    sq_LoadFreightCostDetailsFROM_PLACE: TStringField;
    sq_LoadFreightCostDetailsDESTINATION: TStringField;
    sq_LoadFreightCostDetailsLoadNo: TIntegerField;
    sq_LoadFreightCostDetailsM3_NET: TFloatField;
    sq_LoadFreightCostDetailsPricePerM3_NET: TFloatField;
    sq_LoadFreightCostDetailsTotalSUM: TFloatField;
    cds_LoadFreightCostDetailsAvrakningsNo: TIntegerField;
    cds_LoadFreightCostDetailsFS: TStringField;
    cds_LoadFreightCostDetailsLOAD_ID: TStringField;
    cds_LoadFreightCostDetailsLOADEDDATE: TSQLTimeStampField;
    cds_LoadFreightCostDetailsSHIPPER: TStringField;
    cds_LoadFreightCostDetailsFROM_PLACE: TStringField;
    cds_LoadFreightCostDetailsDESTINATION: TStringField;
    cds_LoadFreightCostDetailsLoadNo: TIntegerField;
    cds_LoadFreightCostDetailsM3_NET: TFloatField;
    cds_LoadFreightCostDetailsPricePerM3_NET: TFloatField;
    cds_LoadFreightCostDetailsTotalSUM: TFloatField;
    sq_LoadFreightCostDetailsDateModified: TSQLTimeStampField;
    sq_LoadFreightCostDetailsModifiedUser: TIntegerField;
    cds_LoadFreightCostDetailsDateModified: TSQLTimeStampField;
    cds_LoadFreightCostDetailsModifiedUser: TIntegerField;
    sq_LoadFreightCostHeader2ANVANDARE: TStringField;
    cds_LoadFreightCostHeader2ANVANDARE: TStringField;
    sq_LoadFreightCostHeader2VERK: TStringField;
    sq_LoadFreightCostHeader2VerkNo: TIntegerField;
    cds_LoadFreightCostHeader2VERK: TStringField;
    cds_LoadFreightCostHeader2VerkNo: TIntegerField;
    cds_LoadFreightCostHeaderVerkNo: TIntegerField;
    sq_FindAvr: TSQLQuery;
    sq_FindAvrAvrakningsNo: TIntegerField;
    sq_FindAvrVERK: TStringField;
    sq_FindAvrVerkNo: TIntegerField;
    sqLoadFC: TSQLQuery;
    sqLoadFCLocalShippingCompanyNo: TIntegerField;
    sqLoadFCLOAD_NO: TIntegerField;
    sqLoadFCFS: TStringField;
    sqLoadFCLOAD_ID: TStringField;
    sqLoadFCLOADEDDATE: TSQLTimeStampField;
    sqLoadFCSHIPPER: TStringField;
    sqLoadFCFROM_PLACE: TStringField;
    sqLoadFCDESTINATION: TStringField;
    sqLoadFCM3_NET: TFloatField;
    sqLoadFCPRICE: TFloatField;
    sqLoadFCINVOICEAMOUNT: TFloatField;
    sqLoadFCCREATEDUSER: TSmallintField;
    sqLoadFCMODIFIEDUSER: TSmallintField;
    sqLoadFCDATECREATED: TSQLTimeStampField;
    sqLoadFCDATEMODIFIED: TSQLTimeStampField;
    sqLoadFCSUPPLIERNO: TIntegerField;
    sqGetSupplierNo: TSQLQuery;
    sqGetSupplierNoSupplierNo: TIntegerField;
    cds_PkgInfoKORTAKODEN: TStringField;
    cds_PkgInfoLANGAKODEN: TStringField;
    ds_Language: TDataSource;
    sq_UpdateLoad: TSQLQuery;
    sq_LoadFreightCostDetailsNote: TStringField;
    cds_LoadFreightCostDetailsNote: TStringField;
    procedure cdsPaymentHeadReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsPaymentLoadsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsLoadFreightCostReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure tblLoadFreight2CalcFields(DataSet: TDataSet);
    procedure tblLoadFreight2M3_NETChange(Sender: TField);
    procedure tblLoadFreight2PRICEChange(Sender: TField);
    procedure tblLoadFreight2AfterInsert(DataSet: TDataSet);
    procedure tblLoadFreight2INVOICEAMOUNTChange(Sender: TField);
    procedure tblLoadFreight2FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cds_LoadFreightCostHeader2ReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cds_LoadFreightCostHeaderReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure tblLoadFreightAfterInsert(DataSet: TDataSet);
    procedure tblLoadFreightCalcFields(DataSet: TDataSet);
    procedure tblLoadFreightM3_NETChange(Sender: TField);
    procedure tblLoadFreightPRICEChange(Sender: TField);
    procedure tblLoadFreightINVOICEAMOUNTChange(Sender: TField);
    procedure cdsCurrencyReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_PaymentTextReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ds_currDataChange(Sender: TObject; Field: TField);
    procedure cds_PaymentTextAfterInsert(DataSet: TDataSet);
    procedure cds_currAfterInsert(DataSet: TDataSet);
    procedure cds_ExchangeRateAfterInsert(DataSet: TDataSet);
    procedure cds_genfreightAfterInsert(DataSet: TDataSet);
    procedure cds_genfreightReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_LoadFreightCostDetailsReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cds_LoadFreightCostDetailsPricePerM3_NETChange(
      Sender: TField);
    procedure cds_LoadFreightCostDetailsBeforeRefresh(DataSet: TDataSet);
    procedure cds_LoadFreightCostDetailsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Function  GetFraktAvrakningsNoForLoadNo (const LoadNo : Integer;Var verk : String;Var VerkNo : Integer) : Integer ;
    function  GetSupplierNo(const LoadNo : Integer) : Integer ;
    procedure UpdateLoad(const LocalShippingCompanyNo, LoadNo : Integer) ;
  end;

var
  dmModule1: TdmModule1;

implementation

uses dmsDataConn, recerror, VidaUser, dmsVidaContact ;

{$R *.dfm}

procedure TdmModule1.cdsPaymentHeadReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmModule1.cdsPaymentLoadsReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmModule1.cdsLoadFreightCostReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmModule1.tblLoadFreight2CalcFields(DataSet: TDataSet);
begin
// tblLoadFreight2TOTAL_AMOUNT.AsFloat :=
// tblLoadFreight2PRICE.AsFloat * tblLoadFreight2M3_NET.AsFloat ;
end;

procedure TdmModule1.tblLoadFreight2M3_NETChange(Sender: TField);
begin
// tblLoadFreight2INVOICEAMOUNT.AsFloat:=
// tblLoadFreight2PRICE.AsFloat * tblLoadFreight2M3_NET.AsFloat ;
// tblLoadFreight2Checked.AsBoolean:= True ;
end;

procedure TdmModule1.tblLoadFreight2PRICEChange(Sender: TField);
begin
// tblLoadFreight2INVOICEAMOUNT.AsFloat:=
// tblLoadFreight2PRICE.AsFloat * tblLoadFreight2M3_NET.AsFloat ;
// tblLoadFreight2Checked.AsBoolean:= True ;
end;

procedure TdmModule1.tblLoadFreight2AfterInsert(DataSet: TDataSet);
begin
// tblLoadFreight2Checked.AsBoolean:= False ;
end;

procedure TdmModule1.tblLoadFreight2INVOICEAMOUNTChange(Sender: TField);
begin
// tblLoadFreight2Checked.AsBoolean:= True ;
end;

procedure TdmModule1.tblLoadFreight2FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
// if tblLoadFreight2Checked.AsBoolean = True then
//  Accept := True
//  else
//  Accept := False ;
end;

procedure TdmModule1.cds_LoadFreightCostHeader2ReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmModule1.cds_LoadFreightCostHeaderReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmModule1.tblLoadFreightAfterInsert(DataSet: TDataSet);
begin
 tblLoadFreightChecked.AsBoolean:= False ;
end;

procedure TdmModule1.tblLoadFreightCalcFields(DataSet: TDataSet);
begin
 tblLoadFreightTOTAL_AMOUNT.AsFloat := tblLoadFreightPRICE.AsFloat * tblLoadFreightM3_NET.AsFloat ;
end;

procedure TdmModule1.tblLoadFreightM3_NETChange(Sender: TField);
begin
 tblLoadFreightINVOICEAMOUNT.AsFloat:=
 tblLoadFreightPRICE.AsFloat * tblLoadFreightM3_NET.AsFloat ;
 tblLoadFreightChecked.AsBoolean:= True ;
end;

procedure TdmModule1.tblLoadFreightPRICEChange(Sender: TField);
begin
 tblLoadFreightINVOICEAMOUNT.AsFloat:=
 tblLoadFreightPRICE.AsFloat * tblLoadFreightM3_NET.AsFloat ;
 tblLoadFreightChecked.AsBoolean:= True ;
end;

procedure TdmModule1.tblLoadFreightINVOICEAMOUNTChange(Sender: TField);
begin
 tblLoadFreightChecked.AsBoolean:= True ;
end;

procedure TdmModule1.cdsCurrencyReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmModule1.cds_PaymentTextReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmModule1.ds_currDataChange(Sender: TObject; Field: TField);
begin
 cds_PaymentText.Active:= False ;
 sq_PaymentText.ParamByName('CurrencyNo').AsInteger:= cds_currCurrencyNo.AsInteger ;
 cds_PaymentText.Active:= True ;

 cds_ExchangeRate.Active:= False ;
 sq_ExchangeRate.ParamByName('CurrencyNo').AsInteger:= cds_currCurrencyNo.AsInteger ;
 cds_ExchangeRate.Active:= True ; 
end;

procedure TdmModule1.cds_PaymentTextAfterInsert(DataSet: TDataSet);
begin
 cds_PaymentTextCurrencyNo.AsInteger:= cds_currCurrencyNo.AsInteger ;
 cds_PaymentTextCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_PaymentTextModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_PaymentTextDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmModule1.cds_currAfterInsert(DataSet: TDataSet);
begin
 cds_currDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 cds_currCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_currModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_currCurrencyNo.AsInteger:= dmsConnector.NextMaxNo('Currency') ;
end;

procedure TdmModule1.cds_ExchangeRateAfterInsert(DataSet: TDataSet);
begin
 cds_ExchangeRateExchangeRateNo.AsInteger:= dmsConnector.NextMaxNo('ExchangeRate') ;
 cds_ExchangeRateCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_ExchangeRateModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_ExchangeRateDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 cds_ExchangeRateCurrencyNo.AsInteger:= cds_currCurrencyNo.AsInteger ;
end;

procedure TdmModule1.cds_genfreightAfterInsert(DataSet: TDataSet);
begin
 cds_genfreightDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 cds_genfreightModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_genfreightscrow.AsInteger:= dmsConnector.NextMaxNo('ShippingCosts') ;
end;

procedure TdmModule1.cds_genfreightReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmModule1.cds_LoadFreightCostDetailsReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmModule1.cds_LoadFreightCostDetailsPricePerM3_NETChange(
  Sender: TField);
begin
 cds_LoadFreightCostDetailsTotalSUM.AsFloat:=
  cds_LoadFreightCostDetailsPricePerM3_NET.AsFloat * cds_LoadFreightCostDetailsM3_NET.AsFloat ;
end;

procedure TdmModule1.cds_LoadFreightCostDetailsBeforeRefresh(
  DataSet: TDataSet);
begin
 if cds_LoadFreightCostDetails.State in [dsEdit, dsInsert] then
  cds_LoadFreightCostDetails.Post ;
 if cds_LoadFreightCostDetails.ChangeCount > 0 then
  if MessageDlg('Vill du spara ändringar i lastrader?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     cds_LoadFreightCostDetails.ApplyUpdates(0) ;
end;

procedure TdmModule1.cds_LoadFreightCostDetailsBeforePost(
  DataSet: TDataSet);
begin
 cds_LoadFreightCostDetailsModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_LoadFreightCostDetailsDateModified.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
end;

Function TdmModule1.GetFraktAvrakningsNoForLoadNo (const LoadNo : Integer;Var verk : String;Var VerkNo : Integer) : Integer ;
Begin
 sq_FindAvr.ParamByName('LoadNo').AsInteger:= LoadNo ;
 Try
  sq_FindAvr.Open ;
  Result:= sq_FindAvrAvrakningsNo.AsInteger ;
  Verk := sq_FindAvrVERK.AsString ;
  VerkNo := sq_FindAvrVerkNo.asInteger ;
 Finally
  sq_FindAvr.Close ;
 End ;
End ;

function TdmModule1.GetSupplierNo(const LoadNo : Integer) : Integer ;
Begin
 sqGetSupplierNo.Close ;
 sqGetSupplierNo.ParamByName('LoadNo').AsInteger:= LoadNo ;
 sqGetSupplierNo.Open ;
 if not sqGetSupplierNo.Eof then
  Result:= sqGetSupplierNoSupplierNo.AsInteger
   else
    Result:= -1 ;
 sqGetSupplierNo.Close ;
End ;

procedure TdmModule1.UpdateLoad(const LocalShippingCompanyNo, LoadNo : Integer) ;
Begin
 sq_UpdateLoad.ParamByName('LocalShippingCompanyNo').AsInteger:= LocalShippingCompanyNo ;
 sq_UpdateLoad.ParamByName('LoadNo').AsInteger:= LoadNo ;
 sq_UpdateLoad.ExecSQL(False) ;
End ;

end.
