unit dmsVidaContact;

interface

uses
  SysUtils, Classes,
  VidaType, SqlTimSt,  Dialogs, kbmMemTable, Variants, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, DB;


type
  TdmsContact = class(TDataModule)
    ds_Verk: TDataSource;
    ds_ProductionUnit: TDataSource;
    ds_RegPoints: TDataSource;
    ds_SR: TDataSource;
    ds_PhysInvByCityNo: TDataSource;
    dsCurrency: TDataSource;
    dsDelTerms: TDataSource;
    ds_PaymentText: TDataSource;
    dsPriceUnit: TDataSource;
    dsPaymentTerm: TDataSource;
    ds_volunit: TDataSource;
    ds_LL_Verk: TDataSource;
    ds_Client: TDataSource;
    ds_Agent: TDataSource;
    ds_Frakt: TDataSource;
    ds_Contact: TDataSource;
    dsClient: TDataSource;
    ds_ClientRole: TDataSource;
    ds_RoleType: TDataSource;
    ds_Pref: TDataSource;
    ds_Address: TDataSource;
    ds_CompAdr: TDataSource;
    ds_ClientList: TDataSource;
    ds_Country: TDataSource;
    ds_City: TDataSource;
    ds_AgentList: TDataSource;
    ds_CompDelAdr: TDataSource;
    ds_AdrLO: TDataSource;
    ds_ClientSearch: TDataSource;
    ds_AdrSearch: TDataSource;
    ds_Market: TDataSource;
    ds_PhysInv: TDataSource;
    ds_GrpInv: TDataSource;
    ds_AllAgent: TDataSource;
    ds_ClientLL: TDataSource;
    ds_points: TDataSource;
    ds_CliDoc: TDataSource;
    ds_PayDesc: TDataSource;
    ds_PayTerm: TDataSource;
    dsClientPrefDocs: TDataSource;
    mtReportTypes: TkbmMemTable;
    mtReportTypesReportType: TStringField;
    mtReportTypesDocType: TIntegerField;
    dsRptNames: TDataSource;
    dsExtPP: TDataSource;
    ds_ExchangeRate: TDataSource;
    ds_SalesGrp: TDataSource;
    ds_SalesGrpRow: TDataSource;
    dsContRoleType: TDataSource;
    dsContRole: TDataSource;
    cdscurrency: TFDQuery;
    cdscurrencyCurrencyNo: TIntegerField;
    cdscurrencyCurrencyName: TStringField;
    cdscurrencyDateCreated: TSQLTimeStampField;
    cdscurrencyCreatedUser: TSmallintField;
    cdscurrencyModifiedUser: TSmallintField;
    cdscurrencySequenceNo: TIntegerField;
    cdsDelTerms: TFDQuery;
    cdsDelTermsDeliveryTerm_No: TIntegerField;
    cdsDelTermsDeliveryTerm: TStringField;
    cdsDelTermsDateCreated: TSQLTimeStampField;
    cdsDelTermsCreatedUser: TSmallintField;
    cdsDelTermsModifiedUser: TSmallintField;
    cdsDelTermsSequenceNo: TIntegerField;
    cdsDelTermsDescription: TStringField;
    cdsDelTermsFreightIncluded: TIntegerField;
    cdsPaymentTerm: TFDQuery;
    cdsPaymentTermPaymentTermsNo: TIntegerField;
    cdsPaymentTermPaymentTermName: TStringField;
    cdsPaymentTermDiscount1: TFloatField;
    cdsPaymentTermFreightInDiscount: TSmallintField;
    cdsPaymentTermFreightInCommission: TSmallintField;
    cdsPaymentTermCommissionPaidByCustomer: TSmallintField;
    cdsPaymentTermDescription: TStringField;
    cdsPaymentTermLanguageCode: TIntegerField;
    cds_PaymentText: TFDQuery;
    cds_PaymentTextCurrencyNo: TIntegerField;
    cds_PaymentTextLanguageCode: TIntegerField;
    cds_PaymentTextPaymentText: TMemoField;
    cds_PaymentTextCreatedUser: TSmallintField;
    cds_PaymentTextModifiedUser: TSmallintField;
    cds_PaymentTextDateCreated: TSQLTimeStampField;
    cds_PaymentTextCountryNo: TIntegerField;
    cds_PaymentTextLanguage: TStringField;
    cds_PaymentTextCountry: TStringField;
    cds_Country: TFDQuery;
    cds_CountryCountryNo: TIntegerField;
    cds_CountryCountryName: TStringField;
    cds_CountryDateCreated: TSQLTimeStampField;
    cds_CountryModifiedUser: TSmallintField;
    cds_CountryCreatedUser: TSmallintField;
    cds_CountrySequenceNo: TIntegerField;
    cds_CountryCountryCode: TStringField;
    cds_CountryCountryPhoneCode: TStringField;
    cds_CountryMarketRegionNo: TIntegerField;
    cds_CountryISOCountryCode: TStringField;
    cds_volunit: TFDQuery;
    cds_volunitVolumeUnit_No: TIntegerField;
    cds_volunitVolumeUnitName: TStringField;
    cds_volunitDateCreated: TSQLTimeStampField;
    cds_volunitCreatedUser: TSmallintField;
    cds_volunitModifiedUser: TSmallintField;
    cds_volunitSequenceNo: TIntegerField;
    cdsPriceUnit: TFDQuery;
    cdsPriceUnitTemplateUnitNo: TIntegerField;
    cdsPriceUnitTemplateUnitName: TStringField;
    cdsPriceUnitDateCreated: TSQLTimeStampField;
    cdsPriceUnitCreatedUser: TSmallintField;
    cdsPriceUnitModifiedUser: TSmallintField;
    cdsPriceUnitSequenceNo: TIntegerField;
    cdsClientPrefDocs: TFDQuery;
    cdsClientPrefDocsClientNo: TIntegerField;
    cdsClientPrefDocsRoleType: TIntegerField;
    cdsClientPrefDocsDocType: TIntegerField;
    cdsClientPrefDocsNoOfCopy: TIntegerField;
    cdsClientPrefDocspromptUser: TIntegerField;
    cdsClientPrefDocscollated: TIntegerField;
    cdsClientPrefDocsPrinterSetup: TIntegerField;
    cdsClientPrefDocsReportNo: TIntegerField;
    cdsClientPrefDocsTYPAVRAPPORT: TStringField;
    cdsClientPrefDocsRAPPORT: TStringField;
    cdsRptNames: TFDQuery;
    cdsRptNamesReportNo: TIntegerField;
    cdsRptNamesDocType: TIntegerField;
    cdsRptNamesReportName: TStringField;
    cdsRptNamesBeskrivning: TStringField;
    cds_Agent: TFDQuery;
    cds_AgentClientNo: TIntegerField;
    cds_AgentClientName: TStringField;
    cds_AgentSearchName: TStringField;
    cds_AgentPercent_Commision: TFloatField;
    cds_AgentTerms_Commision: TIntegerField;
    cds_AgentDefaultBillingAddressNo: TIntegerField;
    cds_AgentSendInvoiceToAgent: TIntegerField;
    cds_AgentAskingClientNo: TIntegerField;
    cds_ProductionUnit: TFDQuery;
    cds_ProductionUnitProductionUnitNo: TIntegerField;
    cds_ProductionUnitProductionUnitName: TStringField;
    cds_ProductionUnitClientNo: TIntegerField;
    cds_ProductionUnitSequenceNo: TIntegerField;
    cds_ProductionUnitCreatedUser: TSmallintField;
    cds_ProductionUnitModifiedUser: TSmallintField;
    cds_ProductionUnitDateCreated: TSQLTimeStampField;
    cds_ProductionUnitLogicalInventoryPointNo: TIntegerField;
    cds_ProductionUnitRegistrationPointNo: TIntegerField;
    cds_ProductionUnitOnSticks: TIntegerField;
    cds_ProductionUnitSurfacingNo: TIntegerField;
    cds_ProductionUnitDIM_DIV: TIntegerField;
    cds_ProductionUnitTerminalNo: TIntegerField;
    cds_ProductionUnitPhysicalInventoryPointNo: TIntegerField;
    cds_ProductionUnitLIPGroupNo: TIntegerField;
    cds_ProductionUnitCost: TFloatField;
    cds_ProductionUnitCapitalCost: TFloatField;
    cds_ProductionUnitOverheadCost: TFloatField;
    cds_ProductionUnitSalaryCost: TFloatField;
    cds_ProductionUnitLegoCostPerAM3: TBCDField;
    cds_ProductionUnitProductionUnitCode: TStringField;
    cds_ProductionUnitPkgPrefix: TStringField;
    cds_ProductionUnitStoppOrsakFil: TStringField;
    cds_ProductionUnitStoppTidFil: TStringField;
    cds_ProductionUnitRegPoint: TStringField;
    cds_RegPoints: TFDQuery;
    cds_RegPointsRegPointNo: TIntegerField;
    cds_RegPointsRegPointName: TStringField;
    cds_RegPointsCreatedUser: TSmallintField;
    cds_RegPointsModifiedUser: TSmallintField;
    cds_RegPointsDateCreated: TSQLTimeStampField;
    cds_RegPointsSequenceNo: TIntegerField;
    cds_RoleType: TFDQuery;
    cds_RoleTypeRoleType: TIntegerField;
    cds_RoleTypeRoleDescription: TStringField;
    cds_RoleTypeCopytoXOR: TIntegerField;
    cds_RoleTypeSequenceNo: TIntegerField;
    cds_RoleTypeCreatedUser: TSmallintField;
    cds_RoleTypeModifiedUser: TSmallintField;
    cds_RoleTypeDateCreated: TSQLTimeStampField;
    cds_Market: TFDQuery;
    cds_MarketMarketRegionNo: TIntegerField;
    cds_MarketMarketRegionName: TStringField;
    cds_MarketSequenceNo: TIntegerField;
    cds_MarketDateCreated: TSQLTimeStampField;
    cds_MarketCreatedUser: TSmallintField;
    cds_MarketModifiedUser: TSmallintField;
    cds_City: TFDQuery;
    cds_CityCityNo: TIntegerField;
    cds_CityCityName: TStringField;
    cds_CitySequenceNo: TIntegerField;
    cds_CityDateCreated: TSQLTimeStampField;
    cds_CityModifiedUser: TSmallintField;
    cds_CityCreatedUser: TSmallintField;
    cds_CityImpVerk: TIntegerField;
    cds_SalesGrpRow: TFDQuery;
    cds_SalesGrpRowSalesGroupNo: TIntegerField;
    cds_SalesGrpRowUserID: TIntegerField;
    cds_SalesGrpRowDateCreated: TSQLTimeStampField;
    cds_SalesGrpRowCreatedUser: TIntegerField;
    cds_user: TFDQuery;
    cds_userUserID: TIntegerField;
    cds_userLastName: TStringField;
    cds_userUserName: TStringField;
    cds_userFirstName: TStringField;
    cds_SalesGrpRowFörnamn: TStringField;
    cds_SalesGrpRowEfternamn: TStringField;
    cds_CliDoc: TFDQuery;
    cds_CliDocClientNo: TIntegerField;
    cds_CliDocDocType: TIntegerField;
    cds_CliDocPrintOut: TIntegerField;
    cds_CliDocDocument: TStringField;
    cds_PayTerm: TFDQuery;
    cds_PayTermPaymentTermsNo: TIntegerField;
    cds_PayTermPaymentTermName: TStringField;
    cds_PayTermNoOfDaysDiscount1: TIntegerField;
    cds_PayTermNoOfDaysDiscount2: TIntegerField;
    cds_PayTermDiscount1: TFloatField;
    cds_PayTermDiscount2: TFloatField;
    cds_PayTermSequenceNo: TIntegerField;
    cds_PayTermCreatedUser: TSmallintField;
    cds_PayTermModifiedUser: TSmallintField;
    cds_PayTermDateCreated: TSQLTimeStampField;
    cds_PayTermFreightInDiscount: TSmallintField;
    cds_PayTermFreightInCommission: TSmallintField;
    cds_PayTermCommissionPaidByCustomer: TSmallintField;
    cds_PayDesc: TFDQuery;
    cds_PayDescPaymentTermsNo: TIntegerField;
    cds_PayDescLanguageCode: TIntegerField;
    cds_PayDescDescription: TStringField;
    cds_PayDescDateCreated: TSQLTimeStampField;
    cds_PayDescCreatedUser: TSmallintField;
    cds_PayDescModifiedUser: TSmallintField;
    cds_PayDescSPRAK: TStringField;
    cds_AdrLO: TFDQuery;
    cds_AdrLOAddressNo: TIntegerField;
    cds_AdrLOAddressName: TStringField;
    cds_AdrLOAddressLine1: TStringField;
    cds_AdrLOAddressLine2: TStringField;
    cds_AdrLOAddressLine3: TStringField;
    cds_AdrLOAddressLine4: TStringField;
    cds_AdrLOCityNo: TIntegerField;
    cds_AdrLOStateOrProvince: TStringField;
    cds_AdrLOCountryNo: TIntegerField;
    cds_AdrLOAddressType: TIntegerField;
    cds_AdrLOPhone1: TStringField;
    cds_AdrLOPhone2: TStringField;
    cds_AdrLOPhone3: TStringField;
    cds_AdrLOFax: TStringField;
    cds_AdrLOCreatedUser: TIntegerField;
    cds_AdrLOModifiedUser: TIntegerField;
    cds_AdrLODateCreated: TSQLTimeStampField;
    cds_AdrLOEmail: TStringField;
    cds_AdrLOPostalCode: TStringField;
    cds_AdrLOSequenceNo: TIntegerField;
    cds_AdrLOPartyIdentifier1: TStringField;
    cds_AdrLOPartyIdentifierType1: TStringField;
    cds_AdrLOCityName: TStringField;
    cds_AdrLOCountryName: TStringField;
    cds_Comp_DelAdr: TFDQuery;
    cds_Comp_DelAdrClientNo: TIntegerField;
    cds_Comp_DelAdrAddressNo: TIntegerField;
    cds_Comp_DelAdrAddressType: TIntegerField;
    cds_Comp_DelAdrCreatedUser: TSmallintField;
    cds_Comp_DelAdrModifiedUser: TSmallintField;
    cds_Comp_DelAdrDateCreated: TSQLTimeStampField;
    cds_Comp_DelAdrAddressNo_1: TIntegerField;
    cds_Comp_DelAdrAddressName: TStringField;
    cds_Comp_DelAdrAddressLine1: TStringField;
    cds_Comp_DelAdrAddressLine2: TStringField;
    cds_Comp_DelAdrAddressLine3: TStringField;
    cds_Comp_DelAdrAddressLine4: TStringField;
    cds_Comp_DelAdrCityNo: TIntegerField;
    cds_Comp_DelAdrStateOrProvince: TStringField;
    cds_Comp_DelAdrCountryNo: TIntegerField;
    cds_Comp_DelAdrAddressType_1: TIntegerField;
    cds_Comp_DelAdrPhone1: TStringField;
    cds_Comp_DelAdrPhone2: TStringField;
    cds_Comp_DelAdrPhone3: TStringField;
    cds_Comp_DelAdrFax: TStringField;
    cds_Comp_DelAdrCreatedUser_1: TIntegerField;
    cds_Comp_DelAdrModifiedUser_1: TIntegerField;
    cds_Comp_DelAdrDateCreated_1: TSQLTimeStampField;
    cds_Comp_DelAdrEmail: TStringField;
    cds_Comp_DelAdrPostalCode: TStringField;
    cds_Comp_DelAdrSequenceNo: TIntegerField;
    cds_Comp_DelAdrPartyIdentifier1: TStringField;
    cds_Comp_DelAdrPartyIdentifierType1: TStringField;
    cds_Comp_DelAdrCityName: TStringField;
    cds_Comp_DelAdrCountryName: TStringField;
    cds_CompAdr: TFDQuery;
    cds_CompAdrClientNo: TIntegerField;
    cds_CompAdrAddressNo: TIntegerField;
    cds_CompAdrAddressType: TIntegerField;
    cds_CompAdrCreatedUser: TSmallintField;
    cds_CompAdrModifiedUser: TSmallintField;
    cds_CompAdrDateCreated: TSQLTimeStampField;
    cds_CompAdrAddressNo_1: TIntegerField;
    cds_CompAdrAddressName: TStringField;
    cds_CompAdrAddressLine1: TStringField;
    cds_CompAdrAddressLine2: TStringField;
    cds_CompAdrAddressLine3: TStringField;
    cds_CompAdrAddressLine4: TStringField;
    cds_CompAdrCityNo: TIntegerField;
    cds_CompAdrStateOrProvince: TStringField;
    cds_CompAdrCountryNo: TIntegerField;
    cds_CompAdrAddressType_1: TIntegerField;
    cds_CompAdrPhone1: TStringField;
    cds_CompAdrPhone2: TStringField;
    cds_CompAdrPhone3: TStringField;
    cds_CompAdrFax: TStringField;
    cds_CompAdrCreatedUser_1: TIntegerField;
    cds_CompAdrModifiedUser_1: TIntegerField;
    cds_CompAdrDateCreated_1: TSQLTimeStampField;
    cds_CompAdrEmail: TStringField;
    cds_CompAdrPostalCode: TStringField;
    cds_CompAdrSequenceNo: TIntegerField;
    cds_CompAdrPartyIdentifier1: TStringField;
    cds_CompAdrPartyIdentifierType1: TStringField;
    cds_CompAdrCityName: TStringField;
    cds_CompAdrCountryName: TStringField;
    cds_Address: TFDQuery;
    cds_AddressAddressNo: TIntegerField;
    cds_AddressAddressName: TStringField;
    cds_AddressAddressLine1: TStringField;
    cds_AddressAddressLine2: TStringField;
    cds_AddressAddressLine3: TStringField;
    cds_AddressAddressLine4: TStringField;
    cds_AddressCityNo: TIntegerField;
    cds_AddressStateOrProvince: TStringField;
    cds_AddressCountryNo: TIntegerField;
    cds_AddressAddressType: TIntegerField;
    cds_AddressPhone1: TStringField;
    cds_AddressPhone2: TStringField;
    cds_AddressPhone3: TStringField;
    cds_AddressFax: TStringField;
    cds_AddressCreatedUser: TIntegerField;
    cds_AddressModifiedUser: TIntegerField;
    cds_AddressDateCreated: TSQLTimeStampField;
    cds_AddressEmail: TStringField;
    cds_AddressPostalCode: TStringField;
    cds_AddressSequenceNo: TIntegerField;
    cds_AddressPartyIdentifier1: TStringField;
    cds_AddressPartyIdentifierType1: TStringField;
    cds_AdrSearch: TFDQuery;
    cds_AdrSearchAddressNo: TIntegerField;
    cds_AdrSearchAddressName: TStringField;
    cds_AdrSearchAddressLine1: TStringField;
    cds_AdrSearchAddressLine2: TStringField;
    cds_AdrSearchAddressLine3: TStringField;
    cds_AdrSearchAddressLine4: TStringField;
    cds_AdrSearchCityNo: TIntegerField;
    cds_AdrSearchStateOrProvince: TStringField;
    cds_AdrSearchCountryNo: TIntegerField;
    cds_AdrSearchAddressType: TIntegerField;
    cds_AdrSearchPhone1: TStringField;
    cds_AdrSearchPhone2: TStringField;
    cds_AdrSearchPhone3: TStringField;
    cds_AdrSearchFax: TStringField;
    cds_AdrSearchCreatedUser: TIntegerField;
    cds_AdrSearchModifiedUser: TIntegerField;
    cds_AdrSearchDateCreated: TSQLTimeStampField;
    cds_AdrSearchEmail: TStringField;
    cds_AdrSearchPostalCode: TStringField;
    cds_AdrSearchSequenceNo: TIntegerField;
    cds_AdrSearchPartyIdentifier1: TStringField;
    cds_AdrSearchPartyIdentifierType1: TStringField;
    cds_AdrSearchCity: TStringField;
    cds_AdrSearchCountry: TStringField;
    cds_ClientSearch: TFDQuery;
    cds_ClientSearchClientNo: TIntegerField;
    cds_ClientSearchFöretagsnamn: TStringField;
    cds_ClientSearchKlientKod: TStringField;
    cds_ClientSearchSöknamn: TStringField;
    cds_ClientSearchAddressrad1: TStringField;
    cds_ClientSearchPostNr: TStringField;
    cds_ClientSearchVatNr: TStringField;
    cds_ClientSearchStad: TStringField;
    cds_AllAgent: TFDQuery;
    cds_AllAgentClientNo: TIntegerField;
    cds_AllAgentClientName: TStringField;
    cds_AllAgentSearchName: TStringField;
    cds_AllAgentPercent_Commision: TFloatField;
    cds_AllAgentTerms_Commision: TIntegerField;
    cds_AllAgentDefaultBillingAddressNo: TIntegerField;
    cds_AllAgentSendInvoiceToAgent: TIntegerField;
    cds_ClientLL: TFDQuery;
    cds_ClientLLClientNo: TIntegerField;
    cds_ClientLLPhyInvPointNameNo: TIntegerField;
    cds_ClientLLCreatedUser: TSmallintField;
    cds_ClientLLModifiedUser: TSmallintField;
    cds_ClientLLDateCreated: TSQLTimeStampField;
    cds_ClientLLStringField: TStringField;
    cds_ExchangeRate: TFDQuery;
    cds_ExchangeRateCurrencyNo: TIntegerField;
    cds_ExchangeRateExchangeRateNo: TIntegerField;
    cds_ExchangeRateExchangeRate: TFloatField;
    cds_ExchangeRateValidFrom: TSQLTimeStampField;
    cds_ExchangeRateCreatedUser: TSmallintField;
    cds_ExchangeRateModifiedUser: TSmallintField;
    cds_ExchangeRateDateCreated: TSQLTimeStampField;
    cdsExtPP: TFDQuery;
    cdsExtPPClientNo: TIntegerField;
    cdsExtPPRegPointNo: TIntegerField;
    cdsExtPPRowNo: TIntegerField;
    cdsExtPPDescription: TStringField;
    cdsExtPPPrintText: TStringField;
    cdsExtPPPrintParam: TStringField;
    cds_SalesGrp: TFDQuery;
    cds_SalesGrpSalesGroupNo: TIntegerField;
    cds_SalesGrpSalesGroupName: TStringField;
    cds_Contact: TFDQuery;
    cds_ContactClientNo: TIntegerField;
    cds_ContactContactNo: TIntegerField;
    cds_ContactLastName: TStringField;
    cds_ContactPhoneNo: TStringField;
    cds_ContactFaxNo: TStringField;
    cds_ContactEmailAddress: TStringField;
    cds_ContactCreatedUser: TSmallintField;
    cds_ContactModifiedUser: TSmallintField;
    cds_ContactDateCreated: TSQLTimeStampField;
    cds_ContactFirstName: TStringField;
    cds_ContactMobileNo: TStringField;
    cdsContRole: TFDQuery;
    cdsContRoleClientNo: TIntegerField;
    cdsContRoleContactNo: TIntegerField;
    cdsContRoleRoleType: TIntegerField;
    cdsContRoleCreatedUser: TSmallintField;
    cdsContRoleModifiedUser: TSmallintField;
    cdsContRoleDateCreated: TSQLTimeStampField;
    cdsContRoleStringField: TStringField;
    cdsContRoleType: TFDQuery;
    cdsContRoleTypeRoleType: TIntegerField;
    cdsContRoleTypeRoleDescription: TStringField;
    cdsContRoleTypeSequenceNo: TIntegerField;
    cdsContRoleTypeCreatedUser: TSmallintField;
    cdsContRoleTypeModifiedUser: TSmallintField;
    cdsContRoleTypeDateCreated: TSQLTimeStampField;
    cdsClient: TFDQuery;
    cdsClientClientNo: TIntegerField;
    cdsClientClientCode: TStringField;
    cdsClientSequenceNo: TIntegerField;
    cdsClientClientName: TStringField;
    cdsClientSalesRegionNo: TIntegerField;
    cdsClientPercent_Commision: TFloatField;
    cdsClientTerms_Commision: TIntegerField;
    cdsClientDateCreated: TSQLTimeStampField;
    cdsClientCreatedUser: TIntegerField;
    cdsClientModifiedUser: TIntegerField;
    cdsClientURL: TStringField;
    cdsClientVATNo: TStringField;
    cdsClientSpecialText: TMemoField;
    cdsClientSearchName: TStringField;
    cdsClientMarketRegionNo: TIntegerField;
    cdsClientPktNrLevKod: TStringField;
    cdsCliento5: TStringField;
    cdsClientPaketNoPos: TIntegerField;
    cdsClientPaketNoLength: TIntegerField;
    cdsClientSupplierCodePos: TIntegerField;
    cdsClientSupplierCodeLength: TIntegerField;
    cdsClientPartyIdentifier: TStringField;
    cdsClientAct: TIntegerField;
    cdsClientDateModified: TSQLTimeStampField;
    cdsClientIntVerk: TIntegerField;
    cdsClientClientID: TStringField;
    cdsClientAvgPrice: TFloatField;
    cdsClientAvgPriceCurrencyNo: TIntegerField;
    cdsClientPartyIdentifierType: TStringField;
    cdsClientPartyIdentifier1: TStringField;
    cdsClientPartyIdentifierType1: TStringField;
    cdsClientcid: TStringField;
    cdsClientStatistikLandNr: TIntegerField;
    cds_ClientRole: TFDQuery;
    cds_ClientRoleClientNo: TIntegerField;
    cds_ClientRoleRoleType: TIntegerField;
    cds_ClientRoleidXOR: TStringField;
    cds_ClientRoletypeXOR: TIntegerField;
    cds_ClientRoleCreatedUser: TIntegerField;
    cds_ClientRoleModifiedUser: TIntegerField;
    cds_ClientRoleDateCreated: TSQLTimeStampField;
    cds_ClientRoleStringField: TStringField;
    cds_Pref: TFDQuery;
    cds_PrefClientNo: TIntegerField;
    cds_PrefRoleType: TIntegerField;
    cds_PrefDefaultShippingAddressNo: TIntegerField;
    cds_PrefDefaultDeliveryTermsNo: TIntegerField;
    cds_PrefDefaultPaymentTermsNo: TIntegerField;
    cds_PrefDefaultCurrencyNo: TIntegerField;
    cds_PrefDefaultPriceUnitNo: TIntegerField;
    cds_PrefDefaultVolumeUnitNo: TIntegerField;
    cds_PrefInvoiceText: TStringField;
    cds_PrefDefaultAgentNo: TIntegerField;
    cds_PrefLoadingLocationNo: TIntegerField;
    cds_PrefLanguageCode: TIntegerField;
    cds_PrefProdDisplayFormat: TIntegerField;
    cds_PrefLengthFormat: TIntegerField;
    cds_PrefDefaultBillingAddressNo: TIntegerField;
    cds_PrefSequenceNo: TIntegerField;
    cds_PrefDateCreated: TSQLTimeStampField;
    cds_PrefCreatedUser: TIntegerField;
    cds_PrefModifiedUser: TIntegerField;
    cds_PrefPhone1: TStringField;
    cds_PrefPhone2: TStringField;
    cds_PrefPhone3: TStringField;
    cds_PrefFax: TStringField;
    cds_PrefEmail: TStringField;
    cds_PrefDefaultDestinationNo: TIntegerField;
    cds_PrefSendInvoiceToAgent: TIntegerField;
    cds_PrefVAT_OnInvoice: TIntegerField;
    cds_PrefCommisionInDiscount: TIntegerField;
    cds_PrefFreightInDiscount: TIntegerField;
    cds_PrefStringField: TStringField;
    cds_points: TFDQuery;
    cds_pointsCITYNO: TIntegerField;
    cds_pointsCITYNAME: TStringField;
    cds_GrpInv: TFDQuery;
    cds_GrpInvLogicalInventoryPointNo: TIntegerField;
    cds_GrpInvPhysicalInventoryPointNo: TIntegerField;
    cds_GrpInvLogicalInventoryName: TStringField;
    cds_GrpInvSequenceNo: TIntegerField;
    cds_GrpInvDateCreated: TSQLTimeStampField;
    cds_GrpInvModifiedUser: TIntegerField;
    cds_GrpInvCreatedUser: TIntegerField;
    cds_GrpInvInventoryType: TIntegerField;
    cds_GrpInvAvRegByPkg: TIntegerField;
    cds_GrpInvGrupp: TStringField;
    cds_GrpInvInvCode: TStringField;
    cds_PhysInv: TFDQuery;
    cds_PhysInvOwnerNo: TIntegerField;
    cds_PhysInvPhysicalInventoryPointNo: TIntegerField;
    cds_PhysInvTypeOfInventory: TIntegerField;
    cds_PhysInvPhyInvPointNameNo: TIntegerField;
    cds_PhysInvSequenceNo: TIntegerField;
    cds_PhysInvDateCreated: TSQLTimeStampField;
    cds_PhysInvModifiedUser: TSmallintField;
    cds_PhysInvCreatedUser: TSmallintField;
    cds_PhysInvORT: TStringField;
    cds_ClientList: TFDQuery;
    cds_ClientListUID: TStringField;
    cds_ClientListNAMN: TStringField;
    cds_ClientListSÖKNAMN: TStringField;
    cds_ClientListVAT: TStringField;
    cds_ClientListROLL: TStringField;
    cds_ClientListLAND: TStringField;
    cds_ClientListClientno: TIntegerField;
    cds_ClientListMARKNAD: TStringField;
    cds_ClientListADRESSRAD1: TStringField;
    cds_ClientListADRESSRAD2: TStringField;
    cds_ClientListADRESSRAD3: TStringField;
    cds_ClientListADRESSRAD4: TStringField;
    cds_ClientListORT: TStringField;
    cds_ClientListAGENT: TStringField;
    cds_ClientListTELE1: TStringField;
    cds_ClientListFAX: TStringField;
    cds_ClientListEMAIL: TStringField;
    cds_ClientListRoletype: TIntegerField;
    cds_AgentList: TFDQuery;
    cds_AgentListClientNo: TIntegerField;
    cds_AgentListAgentNo: TIntegerField;
    cds_AgentListDateCreated: TSQLTimeStampField;
    cds_AgentListCreatedUser: TSmallintField;
    cds_AgentListModifiedUser: TSmallintField;
    cds_AgentListStringField: TStringField;
    cds_LL_Verk: TFDQuery;
    cds_LL_VerkPhyInvPointNameNo: TIntegerField;
    cds_LL_VerkCITYNAME: TStringField;
    cds_LL_VerkOwnerNo: TIntegerField;
    cds_PhysInvByCityNo: TFDQuery;
    cds_PhysInvByCityNoPhyInvPointNameNo: TIntegerField;
    cds_PhysInvByCityNoCITYNAME: TStringField;
    cds_PhysInvByCityNoOwnerNo: TIntegerField;
    sq_ClientCode: TFDQuery;
    sq_ClientCodeClientNo: TIntegerField;
    sq_ClientCodeClientCode: TStringField;
    sq_ClientCodeSequenceNo: TIntegerField;
    sq_ClientCodeClientName: TStringField;
    sq_ClientCodeSalesRegionNo: TIntegerField;
    sq_ClientCodePercent_Commision: TFloatField;
    sq_ClientCodeTerms_Commision: TIntegerField;
    sq_ClientCodeDateCreated: TSQLTimeStampField;
    sq_ClientCodeCreatedUser: TIntegerField;
    sq_ClientCodeModifiedUser: TIntegerField;
    sq_ClientCodeURL: TStringField;
    sq_ClientCodeVATNo: TStringField;
    sq_ClientCodeSpecialText: TMemoField;
    sq_ClientCodeSearchName: TStringField;
    sq_ClientCodeMarketRegionNo: TIntegerField;
    sq_ClientCodePktNrLevKod: TStringField;
    sq_ClientCodeo5: TStringField;
    sq_ClientCodePaketNoPos: TIntegerField;
    sq_ClientCodePaketNoLength: TIntegerField;
    sq_ClientCodeSupplierCodePos: TIntegerField;
    sq_ClientCodeSupplierCodeLength: TIntegerField;
    sq_ClientCodePartyIdentifier: TStringField;
    sq_ClientCodeAct: TIntegerField;
    sq_ClientCodeDateModified: TSQLTimeStampField;
    sq_ClientCodeIntVerk: TIntegerField;
    sq_ClientCodeClientID: TStringField;
    sq_ClientCodeAvgPrice: TFloatField;
    sq_ClientCodeAvgPriceCurrencyNo: TIntegerField;
    sq_ClientCodePartyIdentifierType: TStringField;
    sq_ClientCodePartyIdentifier1: TStringField;
    sq_ClientCodePartyIdentifierType1: TStringField;
    sq_ClientCodecid: TStringField;
    sq_ClientCodeStatistikLandNr: TIntegerField;
    sq_name: TFDQuery;
    sq_nameClientNo: TIntegerField;
    sq_nameClientCode: TStringField;
    sq_nameSequenceNo: TIntegerField;
    sq_nameClientName: TStringField;
    sq_nameSalesRegionNo: TIntegerField;
    sq_namePercent_Commision: TFloatField;
    sq_nameTerms_Commision: TIntegerField;
    sq_nameDateCreated: TSQLTimeStampField;
    sq_nameCreatedUser: TIntegerField;
    sq_nameModifiedUser: TIntegerField;
    sq_nameURL: TStringField;
    sq_nameVATNo: TStringField;
    sq_nameSpecialText: TMemoField;
    sq_nameSearchName: TStringField;
    sq_nameMarketRegionNo: TIntegerField;
    sq_namePktNrLevKod: TStringField;
    sq_nameo5: TStringField;
    sq_namePaketNoPos: TIntegerField;
    sq_namePaketNoLength: TIntegerField;
    sq_nameSupplierCodePos: TIntegerField;
    sq_nameSupplierCodeLength: TIntegerField;
    sq_namePartyIdentifier: TStringField;
    sq_nameAct: TIntegerField;
    sq_nameDateModified: TSQLTimeStampField;
    sq_nameIntVerk: TIntegerField;
    sq_nameClientID: TStringField;
    sq_nameAvgPrice: TFloatField;
    sq_nameAvgPriceCurrencyNo: TIntegerField;
    sq_namePartyIdentifierType: TStringField;
    sq_namePartyIdentifier1: TStringField;
    sq_namePartyIdentifierType1: TStringField;
    sq_namecid: TStringField;
    sq_nameStatistikLandNr: TIntegerField;
    sq_Searchname: TFDQuery;
    sq_SearchnameClientNo: TIntegerField;
    sq_SearchnameClientCode: TStringField;
    sq_SearchnameSequenceNo: TIntegerField;
    sq_SearchnameClientName: TStringField;
    sq_SearchnameSalesRegionNo: TIntegerField;
    sq_SearchnamePercent_Commision: TFloatField;
    sq_SearchnameTerms_Commision: TIntegerField;
    sq_SearchnameDateCreated: TSQLTimeStampField;
    sq_SearchnameCreatedUser: TIntegerField;
    sq_SearchnameModifiedUser: TIntegerField;
    sq_SearchnameURL: TStringField;
    sq_SearchnameVATNo: TStringField;
    sq_SearchnameSpecialText: TMemoField;
    sq_SearchnameSearchName: TStringField;
    sq_SearchnameMarketRegionNo: TIntegerField;
    sq_SearchnamePktNrLevKod: TStringField;
    sq_Searchnameo5: TStringField;
    sq_SearchnamePaketNoPos: TIntegerField;
    sq_SearchnamePaketNoLength: TIntegerField;
    sq_SearchnameSupplierCodePos: TIntegerField;
    sq_SearchnameSupplierCodeLength: TIntegerField;
    sq_SearchnamePartyIdentifier: TStringField;
    sq_SearchnameAct: TIntegerField;
    sq_SearchnameDateModified: TSQLTimeStampField;
    sq_SearchnameIntVerk: TIntegerField;
    sq_SearchnameClientID: TStringField;
    sq_SearchnameAvgPrice: TFloatField;
    sq_SearchnameAvgPriceCurrencyNo: TIntegerField;
    sq_SearchnamePartyIdentifierType: TStringField;
    sq_SearchnamePartyIdentifier1: TStringField;
    sq_SearchnamePartyIdentifierType1: TStringField;
    sq_Searchnamecid: TStringField;
    sq_SearchnameStatistikLandNr: TIntegerField;
    sq_GetPIPByClientNo: TFDQuery;
    sq_GetPIPByClientNoPIPNO: TIntegerField;
    sq_GetSuppCodeByPktLevKod: TFDQuery;
    sq_GetSuppCodeByPktLevKodClientCode: TStringField;
    sq_Get_PktNrLevKod: TFDQuery;
    sq_Get_PktNrLevKodPktNrLevKod: TStringField;
    sq_GetCityNoPIPNo: TFDQuery;
    sq_GetCityNoPIPNoCityNO: TIntegerField;
    SQLQuery1: TFDQuery;
    SQLQuery1PhysicalInventoryPointNo: TIntegerField;
    SQLQuery1CITYNAME: TStringField;
    SQLQuery1RoleType: TIntegerField;
    sq_LogInv: TFDQuery;
    sq_LogInvLogicalInventoryPointNo: TIntegerField;
    sq_LogInvLogicalInventoryName: TStringField;
    sq_GetPIPNo: TFDQuery;
    sq_GetPIPNoPIPNO: TIntegerField;
    sq_InsCliEtik: TFDQuery;
    sq_GetSRNo: TFDQuery;
    sq_GetSRNoSalesRegionNo: TIntegerField;
    sq_DelCliEtik: TFDQuery;
    sqDelCompAdr: TFDQuery;
    sqAdrDepend: TFDQuery;
    sqAdrDependaddressNo: TIntegerField;
    sq_GetPkgPrefix: TFDQuery;
    sq_GetPkgPrefixPkgPrefix: TStringField;
    sq_AdrName: TFDQuery;
    sq_AdrNameAddressNo: TIntegerField;
    sq_AdrNameAddressName: TStringField;
    sq_AdrNameAddressLine1: TStringField;
    sq_AdrNameAddressLine2: TStringField;
    sq_AdrNameAddressLine3: TStringField;
    sq_AdrNameAddressLine4: TStringField;
    sq_AdrNameCityNo: TIntegerField;
    sq_AdrNameStateOrProvince: TStringField;
    sq_AdrNameCountryNo: TIntegerField;
    sq_AdrNameAddressType: TIntegerField;
    sq_AdrNamePhone1: TStringField;
    sq_AdrNamePhone2: TStringField;
    sq_AdrNamePhone3: TStringField;
    sq_AdrNameFax: TStringField;
    sq_AdrNameCreatedUser: TIntegerField;
    sq_AdrNameModifiedUser: TIntegerField;
    sq_AdrNameDateCreated: TSQLTimeStampField;
    sq_AdrNameEmail: TStringField;
    sq_AdrNamePostalCode: TStringField;
    sq_AdrNameSequenceNo: TIntegerField;
    sq_AdrNamePartyIdentifier1: TStringField;
    sq_AdrNamePartyIdentifierType1: TStringField;
    sqGetDocs: TFDQuery;
    sqGetDocsClientNo: TIntegerField;
    sqGetDocsRoleType: TIntegerField;
    sqGetDocsDocType: TIntegerField;
    sqGetDocsNoOfCopy: TIntegerField;
    sqGetDocspromptUser: TIntegerField;
    sqGetDocscollated: TIntegerField;
    sqGetDocsPrinterSetup: TIntegerField;
    sqGetDocsReportNo: TIntegerField;
    sqGetDocsReportNo_1: TIntegerField;
    sqGetDocsDocType_1: TIntegerField;
    sqGetDocsReportName: TStringField;
    sqGetDocsBeskrivning: TStringField;
    sq_GetCityNoFromPIP: TFDQuery;
    sq_GetCityNoFromPIPPhyInvPointNameNo: TIntegerField;
    sq_GetSalesRegionNo: TFDQuery;
    sq_GetSalesRegionNoClientNo: TIntegerField;
    sq_GetSalesRegionNoClientCode: TStringField;
    sq_GetSalesRegionNoSequenceNo: TIntegerField;
    sq_GetSalesRegionNoClientName: TStringField;
    sq_GetSalesRegionNoSalesRegionNo: TIntegerField;
    sq_GetSalesRegionNoPercent_Commision: TFloatField;
    sq_GetSalesRegionNoTerms_Commision: TIntegerField;
    sq_GetSalesRegionNoDateCreated: TSQLTimeStampField;
    sq_GetSalesRegionNoCreatedUser: TIntegerField;
    sq_GetSalesRegionNoModifiedUser: TIntegerField;
    sq_GetSalesRegionNoURL: TStringField;
    sq_GetSalesRegionNoVATNo: TStringField;
    sq_GetSalesRegionNoSpecialText: TMemoField;
    sq_GetSalesRegionNoSearchName: TStringField;
    sq_GetSalesRegionNoMarketRegionNo: TIntegerField;
    sq_GetSalesRegionNoPktNrLevKod: TStringField;
    sq_GetSalesRegionNoo5: TStringField;
    sq_GetSalesRegionNoPaketNoPos: TIntegerField;
    sq_GetSalesRegionNoPaketNoLength: TIntegerField;
    sq_GetSalesRegionNoSupplierCodePos: TIntegerField;
    sq_GetSalesRegionNoSupplierCodeLength: TIntegerField;
    sq_GetSalesRegionNoPartyIdentifier: TStringField;
    sq_GetSalesRegionNoAct: TIntegerField;
    sq_GetSalesRegionNoDateModified: TSQLTimeStampField;
    sq_GetSalesRegionNoIntVerk: TIntegerField;
    sq_GetSalesRegionNoClientID: TStringField;
    sq_GetSalesRegionNoAvgPrice: TFloatField;
    sq_GetSalesRegionNoAvgPriceCurrencyNo: TIntegerField;
    sq_GetSalesRegionNoPartyIdentifierType: TStringField;
    sq_GetSalesRegionNoPartyIdentifier1: TStringField;
    sq_GetSalesRegionNoPartyIdentifierType1: TStringField;
    sq_GetSalesRegionNocid: TStringField;
    sq_GetSalesRegionNoStatistikLandNr: TIntegerField;
    sq_DelClient: TFDQuery;
    sq_IsClientMarkedAsIntVerk: TFDQuery;
    sq_IsClientMarkedAsIntVerkIntVerk: TIntegerField;
    sq_GetLanguageID: TFDQuery;
    sq_GetLanguageIDLanguageCode: TIntegerField;
    sq_IsRoleType: TFDQuery;
    sq_IsRoleTypeClientNo: TIntegerField;
    sq_PhysInvForLIP: TFDQuery;
    sq_PhysInvForLIPPhysicalInventoryPointNo: TIntegerField;
    sq_PhysInvForLIPCITYNAME: TStringField;
    sq_PhysInvForLIPRoleType: TIntegerField;
    cds_Verk: TFDStoredProc;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkClientCode: TStringField;
    cds_SR: TFDStoredProc;
    cds_SRClientNo: TIntegerField;
    cds_SRClientName: TStringField;
    cds_SRSearchName: TStringField;
    cds_Client: TFDStoredProc;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    cds_Frakt: TFDStoredProc;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    sp_ClientCode: TFDStoredProc;
    sp_ClientCodeClientCode: TStringField;
    procedure cds_PkgNoSeriePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure dsp_CompAdrGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);

    procedure cdscurrencyAfterInsert(DataSet: TDataSet);
    procedure cdsDelTermsAfterInsert(DataSet: TDataSet);
    procedure cdsDelTermsBeforePost(DataSet: TDataSet);
    procedure cds_PaymentTextAfterInsert(DataSet: TDataSet);
    procedure cds_CountryAfterInsert(DataSet: TDataSet);
    procedure cdsClientPrefDocsAfterInsert(DataSet: TDataSet);
    procedure cds_RegPointsAfterInsert(DataSet: TDataSet);
    procedure cds_MarketAfterInsert(DataSet: TDataSet);
    procedure cds_CityAfterInsert(DataSet: TDataSet);
    procedure cds_SalesGrpRowAfterInsert(DataSet: TDataSet);
    procedure cds_PayTermAfterInsert(DataSet: TDataSet);
    procedure cds_PayDescAfterInsert(DataSet: TDataSet);
    procedure cds_Comp_DelAdrAfterInsert(DataSet: TDataSet);
    procedure cds_CompAdrAfterInsert(DataSet: TDataSet);
    procedure cds_AddressAfterInsert(DataSet: TDataSet);
    procedure cds_AdrSearchAfterInsert(DataSet: TDataSet);
    procedure cds_AdrSearchBeforePost(DataSet: TDataSet);
    procedure cds_ClientLLAfterInsert(DataSet: TDataSet);
    procedure cds_ExchangeRateAfterInsert(DataSet: TDataSet);
    procedure cdsExtPPAfterInsert(DataSet: TDataSet);
    procedure cds_SalesGrpAfterInsert(DataSet: TDataSet);
    procedure cds_ContactAfterInsert(DataSet: TDataSet);
    procedure cdsContRoleAfterInsert(DataSet: TDataSet);
    procedure cdsClientAfterInsert(DataSet: TDataSet);
    procedure cdsClientAfterPost(DataSet: TDataSet);
    procedure cds_ClientRoleAfterInsert(DataSet: TDataSet);

    procedure cds_ClientRoleBeforePost(DataSet: TDataSet);
    procedure cds_ClientRoleRoleTypeChange(Sender: TField);
    procedure cds_PrefAfterInsert(DataSet: TDataSet);
    procedure cds_GrpInvAfterInsert(DataSet: TDataSet);
    procedure cds_PhysInvAfterApplyUpdates(DataSet: TFDDataSet; AErrors: Integer);
    procedure cds_PhysInvAfterInsert(DataSet: TDataSet);
    procedure cds_ClientRoleBeforeDelete(DataSet: TDataSet);

  private
    function  FinnsClientName (const ClientName : String;const ClientNo : Integer) : Boolean ;
    function  FinnsSearchName (const SearchName : String;const ClientNo : Integer) : Boolean ;
    function  FinnsClientCode (const ClientCode : String;const ClientNo : Integer) : Boolean ;
    function  FinnsAddressName (const AddressNo : Integer;const AddressName : String) : Boolean ;
//    procedure LoadPhysInventoryLookupTable(StoredProc: TSQLQUERY; StringFieldName: String;
  //                        CodeFieldName: String; Strings: TStrings; const InventoryOwner, LoggedInCompanyNo : Integer);
  public
    FIsRollITypeInternVerk : Boolean ;
    AddressType : Integer ;
    Function  GetCityNoFromPIP(const PIPNo : Integer) :  Integer ;
    Function  IsClientMarkedAsIntVerk(const ClientNo : Integer) : Boolean ;
    function  GetCityNoOfPIPNo (const PIPNo : Integer) : Integer ;
    function  GetPIPNo (const LIPNo : Integer) : Integer ;
//    procedure LoadPhysInventory(Strings: TStrings; const InventoryOwner, LoggedInCompanyNo : Integer);
//    procedure LoadLogicalInventory(Strings: TStrings; const PhysicalInventoryPointNo: Integer);
    function  Get_PktNrLevKod(const ClientNo : Integer) : String ;
    function  GetSuppliercodeByPktLevKod (const PktNrLevKod : String) : String ;
    function  GetPIPByClientNoPIPNO (const OwnerNo : Integer) : Integer ;
    function  GetSalesRegionNo (const CompanyNo : Integer) : Integer ;
    function  GetRoleType(const VerkNo : Integer) : Integer ;
    Function  IsClientRoleType(const ClientNo, RoleType: Integer) : Boolean ;
    procedure DeleteClientEtikett (const userid : Integer) ;
    procedure InsertClientEtikett (const ClientNo, RoleType, userid : Integer) ;
    function  IsRollITypeInternVerk : Boolean ;
    function  DeleteClient (const clientno : Integer) : Boolean ;

    function  GetClientCode(ClientNo: Integer) : String3;


    function  Client_Language (const ClientNo : Integer ) : Integer ;
    procedure LoadLagerStallenPerSR (const SalesRegionNo : Integer) ;
    procedure Load_LoadingLocationsForVerk (const SalesRegionNo : Integer) ;
    procedure ClientSearch(CompanyName, AddressName,
              StateProvince, Phone1, Fax, PostalCode, AddressLine : String;
              CityNo, CountryNo: Integer);
    procedure AddDocTypeOrder ;
    Procedure GetClientDocPrefs (const ClientNo, RoleType, DocType : Integer;Var ReportName : String; Var NoOfCopy, promptUser, collated : OleVariant;Var PrinterSetup : Integer) ;
  end;

var
  dmsContact : TdmsContact;

implementation

uses dmsDataConn, VidaConst, VidaUser, dmsVidaSystem;

{$R *.dfm}



{ TdmsContact }


Function TdmsContact.GetCityNoFromPIP(const PIPNo : Integer) :  Integer ;
Begin
 Try
 sq_GetCityNoFromPIP.ParamByName('PhysicalInventoryPointNo').AsInteger  := PIPNo ;
 sq_GetCityNoFromPIP.Open ;
 if not sq_GetCityNoFromPIP.Eof then
  Result  := sq_GetCityNoFromPIPPhyInvPointNameNo.AsInteger
   else
    Result  := -1 ;
 Finally
  sq_GetCityNoFromPIP.Close ;
 End ;
End ;

(*procedure LoadInventoryLookupTable(StoredProc: TSQLQUERY; StringFieldName: String;
                          CodeFieldName: String; Strings: TStrings; PhysicalInventoryPointNo : Integer);
begin
  StoredProc.ParamByName('PARAM1').AsInteger:= PhysicalInventoryPointNo ;
  StoredProc.Open;
  try

  Strings.Clear ;
    StoredProc.First;
    while not StoredProc.Eof do begin
      Strings.AddObject(StoredProc.FieldByName(StringFieldName).AsString,
                        TObject(StoredProc.FieldByName(CodeFieldName).AsInteger));
      StoredProc.Next
      end;

  finally
    StoredProc.close
  end;
end; *)

function TdmsContact.GetPIPNo (const LIPNo : Integer) : Integer ;
Begin
 Try
 sq_GetPIPNo.Close ;
 sq_GetPIPNo.ParamByName('LIPNo').AsInteger:= LIPNo ;
 sq_GetPIPNo.Open ;
 if not sq_GetPIPNo.Eof then
  Result:= sq_GetPIPNoPIPNO.AsInteger
   else
    Result:= -1 ;
 Finally
  sq_GetPIPNo.Close ;
 End ;
End ;


(*procedure TdmsContact.LoadPhysInventoryLookupTable(StoredProc: TSQLQUERY; StringFieldName: String;
                          CodeFieldName: String; Strings: TStrings; const InventoryOwner, LoggedInCompanyNo : Integer);
begin
 StoredProc.SQL.Clear ;
 StoredProc.SQL.Add('SELECT PH.PhysicalInventoryPointNo, CY.CITYNAME');
 StoredProc.SQL.Add('FROM');
 StoredProc.SQL.Add('dbo.PHYSICALINVENTORYPOINT PH, CITY CY');
 StoredProc.SQL.Add('WHERE');
 StoredProc.SQL.Add('PH.OwnerNo = '+IntToStr(InventoryOwner));
 StoredProc.SQL.Add('AND CY.CITYNO = PH.PhyInvPointNameNo');
 StoredProc.SQL.Add('AND PH.SequenceNo = 1');
 StoredProc.SQL.Add('Order by CY.CITYNAME') ;

  StoredProc.Open;
  try

  Strings.Clear ;
    StoredProc.First;
    while not StoredProc.Eof do
     begin
      Strings.AddObject(StoredProc.FieldByName(StringFieldName).AsString,
                        TObject(StoredProc.FieldByName(CodeFieldName).AsInteger));
      StoredProc.Next
     end;

  finally
    StoredProc.close
  end;
end;

procedure TdmsContact.LoadPhysInventory(Strings: TStrings;const InventoryOwner, LoggedInCompanyNo : Integer);
begin
  LoadPhysInventoryLookupTable(sq_PhysInvForLIP, 'CITYNAME', 'PhysicalInventoryPointNo', Strings, InventoryOwner, LoggedInCompanyNo) ;
end;

procedure TdmsContact.LoadLogicalInventory(Strings: TStrings; const PhysicalInventoryPointNo: Integer);
begin
  LoadInventoryLookupTable(sq_LogInv, 'LogicalInventoryName', 'LogicalInventoryPointNo', Strings, PhysicalInventoryPointNo)
end;

procedure LoadLookupTable(StoredProc: TSQLStoredProc; StringFieldName: String;
                          CodeFieldName: String; Strings: TStrings);
begin
  StoredProc.Open;
  try

    StoredProc.First;
    while not StoredProc.Eof do begin
      Strings.AddObject(StoredProc.FieldByName(StringFieldName).AsString,
                        TObject(StoredProc.FieldByName(CodeFieldName).AsInteger));
      StoredProc.Next
      end;

  finally
    StoredProc.close
    end;
end; *)

function  TdmsContact.GetClientCode(ClientNo: Integer) : String3;
Begin
 Try
 sp_ClientCode.ParamByName('@ClientNo').AsInteger:= ClientNo ;
 sp_ClientCode.Open ;
 if not sp_ClientCode.Eof then
  Result:= sp_ClientCodeClientCode.AsString
  else
   Result:= '' ;
 Finally
  sp_ClientCode.Close ;
 End ;
End ;

function  TdmsContact.Client_Language (const ClientNo : Integer ) : Integer ;
Begin
 Result:= -1 ;
 Try
 sq_GetLanguageID.Close ;
 sq_GetLanguageID.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sq_GetLanguageID.Open ;
 if not sq_GetLanguageID.Eof then
  Result:= sq_GetLanguageIDLanguageCode.AsInteger ;
 Finally
  sq_GetLanguageID.Close ;
 End ;
End ;

procedure TdmsContact.cds_RegPointsAfterInsert(DataSet: TDataSet);
begin
cds_RegPointsRegPointNo.AsInteger:= dmsConnector.NextMaxNo('RegistrationPoint') ;
 cds_RegPointsCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_RegPointsModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_RegPointsDateCreated.AsSQLTimeStamp:= DateTimeToSqlTimeStamp(Date) ;
end;

procedure TdmsContact.cds_PkgNoSeriePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
if (E is EDatabaseError) then
//    if (E as EDatabaseError). .Errors[0].Errorcode = eKeyViol then
    begin
     if DataSet.FieldByName('CurrentPkgNo').AsInteger < 1 then
      E.Create('CurrentPkgNo måste ha ett värde');
     if DataSet.FieldByName('HighestPkgNo').AsInteger < 1 then
      E.Create('HighestPkgNo måste ha ett värde');
     if DataSet.FieldByName('ClientNo').AsInteger < 1 then
      E.Create('Du måste välja ett verk');
      Action := daFail;
    end;
end;

procedure TdmsContact.LoadLagerStallenPerSR (const SalesRegionNo : Integer) ;
Begin
 cds_PhysInvByCityNo.Active:= False ;
 cds_PhysInvByCityNo.Active:= True ;
 cds_PhysInvByCityNo.Filtered:= True ;
End ;

procedure TdmsContact.Load_LoadingLocationsForVerk (const SalesRegionNo : Integer) ;
Begin
 cds_LL_Verk.Active:= False ;
 cds_LL_Verk.Active:= True ;
End ;

procedure TdmsContact.DataModuleCreate(Sender: TObject);
begin
 mtReportTypes.Active:= True ;
 mtReportTypes.InsertRecord(['Kontrakt', 1]);
 mtReportTypes.InsertRecord(['Faktura', 2]);
 mtReportTypes.InsertRecord(['Paketspec', 7]);
end;

procedure TdmsContact.cds_PaymentTextAfterInsert(DataSet: TDataSet);
begin
 cds_PaymentTextCurrencyNo.AsInteger:= cdsCurrencyCurrencyNo.AsInteger ;
 cds_PaymentTextCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_PaymentTextModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_PaymentTextDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmsContact.DataModuleDestroy(Sender: TObject);
begin
 cdsCurrency.Active             := False ;
 cds_VolUnit.Active             := False ;
 cdsPriceUnit.Active            := False ;
 cdsDelTerms.Active             := False ;
 cdsPaymentTerm.Active          := False ;
 cds_SR.Active                  := False ;
 cds_Verk.Active                := False ;
 cds_PhysInvByCityNo.Filtered   := True ;
 cds_LL_Verk.Active             := False ;
 mtReportTypes.Active           := False ;
end;

procedure TdmsContact.cds_ClientRoleAfterInsert(DataSet: TDataSet);
begin
cds_ClientRoleClientNo.AsInteger:= cdsClientClientNo.AsInteger ;
end;


procedure TdmsContact.cds_ClientRoleBeforeDelete(DataSet: TDataSet);
begin
 if cds_ClientRole.RecordCount = 1 then
  Abort ;
end;

procedure TdmsContact.cds_ClientRoleBeforePost(DataSet: TDataSet);
begin
 if cds_ClientRoleRoleType.AsInteger = 1 then
  cds_ClientRoletypeXOR.AsInteger:= 1 ;
end;

procedure TdmsContact.cds_PrefAfterInsert(DataSet: TDataSet);
begin
 cds_PrefClientNo.AsInteger:= cdsClientClientNo.AsInteger ;
 cds_PrefSendInvoiceToAgent.AsInteger:= 0 ;
 cds_PrefVAT_OnInvoice.AsInteger:= 0 ;
 cds_PrefDateCreated.AsSQLTimeStamp:= DateTimeToSqlTimeStamp(Date) ;
 cds_PrefCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_PrefModifiedUser.AsInteger:= ThisUser.UserID ;
end;

procedure TdmsContact.cds_PhysInvAfterApplyUpdates(DataSet: TFDDataSet;
  AErrors: Integer);
begin
 ShowMessage('Kom ihåg att lägga upp lagerställen som lastställen!') ;
end;

procedure TdmsContact.cds_PhysInvAfterInsert(DataSet: TDataSet);
begin
 cds_PhysInvPhysicalInventoryPointNo.AsInteger  := dmsConnector.NextMaxNo('PhysicalInventoryPoint') ;
 cds_PhysInvDateCreated.AsSQLTimeStamp          := DateTimeToSqlTimeStamp(Date) ;
 cds_PhysInvModifiedUser.AsInteger              := ThisUser.UserID ;
 cds_PhysInvCreatedUser.AsInteger               := ThisUser.UserID ;
 cds_PhysInvTypeOfInventory.AsInteger           := 0 ;
 cds_PhysInvSequenceNo.AsInteger                := 1 ;
end;

procedure TdmsContact.cdsClientAfterInsert(DataSet: TDataSet);
begin
 cdsClientClientNo.AsInteger:= dmsConnector.NextMaxNo('Client') ;
 cdsClientModifiedUser.AsInteger:= ThisUser.UserID ;
 cdsClientCreatedUser.AsInteger:= ThisUser.UserID ;
 cdsClientDateCreated.AsSQLTimeStamp:= DateTimeToSqlTimeStamp(Date) ;
 cdsCliento5.AsString:= '99' ;
end;

procedure TdmsContact.cdsClientAfterPost(DataSet: TDataSet);
begin
 if cdsClientMarketRegionNo.IsNull then
  Begin
   ShowMessage('Varning, Marknadsregion  saknas');
  End ;

 if cdsClientClientName.IsNull then
  Begin
   ShowMessage('Företagsnamnet saknas, operation avbruten');
   Abort ;
  End ;

 if cdsClientSearchName.IsNull then
  Begin
   ShowMessage('Söknamn saknas, operation avbruten');
   Abort ;
  End ;

  if cds_ClientRole.RecordCount = 0 then
  Begin
//   ShowMessage('Företagsnamnet är taget, använd ett annat');
   raise Exception.Create('Välj minst en rolltyp.');
//   Abort ;
  End ;

end;

procedure TdmsContact.cds_AddressAfterInsert(DataSet: TDataSet);
begin
 cds_AddressAddressNo.AsInteger:= dmsConnector.NextMaxNo('Address') ;
 cds_AddressModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_AddressCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_AddressDateCreated.AsSQLTimeStamp:= DateTimeToSqlTimeStamp(Date) ;
 cds_AddressAddressType.AsInteger:= AddressType ;
end;

procedure TdmsContact.cds_CompAdrAfterInsert(DataSet: TDataSet);
begin
 cds_CompAdrAddressNo.AsInteger:= -1 ;
 cds_CompAdrAddressType.AsInteger:= 1 ; //AddressType ;
 cds_CompAdrClientNo.AsInteger:= cdsClientClientNo.AsInteger ;
 cds_CompAdrModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_CompAdrCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_CompAdrDateCreated.AsSQLTimeStamp:= DateTimeToSqlTimeStamp(Date) ;
end;

procedure TdmsContact.dsp_CompAdrGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName := 'CompanyAddress' ;
end;

procedure TdmsContact.cds_Comp_DelAdrAfterInsert(DataSet: TDataSet);
begin
 cds_Comp_DelAdrAddressNo.AsInteger         := -1 ;
 cds_Comp_DelAdrAddressType.AsInteger       := 2 ; //AddressType ;
 cds_Comp_DelAdrClientNo.AsInteger          := cdsClientClientNo.AsInteger ;
 cds_Comp_DelAdrModifiedUser.AsInteger      := ThisUser.UserID ;
 cds_Comp_DelAdrCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_Comp_DelAdrDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Date) ;
end;

procedure TdmsContact.ClientSearch(CompanyName, AddressName,
  StateProvince, Phone1, Fax, PostalCode, AddressLine : String;
  CityNo, CountryNo: Integer);
var
  bHaveOne: Boolean;
begin
  with cds_ClientSearch do
  begin
    //Close;
    cds_ClientSearch.Active:= False ;
    SQL.Clear;
//    SQL.Add('SELECT ClientNo, ClientName, ClientCode FROM Client WHERE ');
    SQL.Add('SELECT C.ClientNo, C.ClientName AS Företagsnamn, C.ClientCode AS KlientKod, C.SearchName AS Söknamn,');
    SQL.Add('FDR.AddressLine1 AS Addressrad1, FDR.PostalCode AS PostNr,');
    SQL.Add('C.VATNO AS VatNr, Cy.CityName AS Stad');
    SQL.Add('FROM dbo.Client C');
    SQL.Add('Left Outer Join dbo.CompanyAddress CA');
    SQL.Add('Inner Join dbo.Address FDR ON FDR.AddressNo = CA.AddressNo');
    SQL.Add('Inner Join dbo.City Cy on Cy.CityNo = FDR.CityNo');
    SQL.Add('on CA.ClientNo = C.ClientNo');

    SQL.Add('WHERE ');

    if trim(CompanyName) <> '' then
      SQL.Add('C.ClientName like ''%' + CompanyName + '%''');

    if ((trim(AddressName) <> '') or
        (trim(StateProvince) <> '') or
        (trim(Fax) <> '') or
        (trim(PostalCode) <> '') or
        (CityNo >= 0) or
        (CountryNo >= 0)) then
    begin
      if trim(CompanyName) <> '' then
        SQL.Add('AND C.ClientNo IN')
      else
        SQL.Add('C.ClientNo IN');
      SQL.Add('(SELECT ClientNo FROM CompanyAddress WHERE AddressNo IN');
      SQL.Add('(select AddressNo FROM Address WHERE');
    end;

    bHaveOne := False;
    if trim(AddressName) <> '' then
    begin
      SQL.Add(' AddressName like ''%' + AddressName + '%''');
      bHaveOne := True;
    end;

    if trim(AddressLine) <> '' then
       sql.Add(' and ( (AddressLine1 like ''%' + trim(AddressLine)
        + '%'') or ( AddressLine2 like ''%' + trim(AddressLine)
        +  '%'') or (AddressLine3 like ''%' + Trim(AddressLine) + '%'')) ' );

    if trim(StateProvince) <> '' then
    begin
      if bHaveOne then SQL.Add('AND') else bHaveOne := True;
      SQL.Add(' StateOrProvince like ''%' + StateProvince + '%''');
    end;

    if trim(Phone1) <> '' then
    begin
      if bHaveOne then SQL.Add('AND') else bHaveOne := True;
      SQL.Add('Phone1 like ''%' + Phone1 + '%''');
    end;

    if trim(Fax) <> '' then
    begin
      if bHaveOne then SQL.Add('AND') else bHaveOne := True;
      SQL.Add('Fax like ''%' + Fax + '%''');
    end;

    if trim(PostalCode) <> '' then
    begin
      if bHaveOne then SQL.Add('AND') else bHaveOne := True;
      SQL.Add('PostalCode like ''%' + PostalCode + '%''');
    end;

    if CityNo >= 0 then
    begin
      if bHaveOne then SQL.Add('AND') else bHaveOne := True;
      SQL.Add(' CityNo = ' + IntToStr(CityNo));
    end;

    if CountryNo >= 0 then
    begin
      if bHaveOne then SQL.Add('AND') else bHaveOne := True;
      SQL.Add(' CountryNo = ' + IntToStr(CountryNo));
    end;

    if bHaveOne then SQL.Add('))');

    SQL.Add('Order by C.ClientName') ;

//    SQL.SaveToFile('dataClientSearch.txt');
    try
     cds_ClientSearch.Active:= True ;
 //     Open;
    except
    end;
  end;
end;

procedure TdmsContact.cds_AdrSearchAfterInsert(DataSet: TDataSet);
begin
 cds_AdrSearchAddressNo.AsInteger:= dmsConnector.NextMaxNo('Address') ;
 cds_AdrSearchModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_AdrSearchCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_AdrSearchDateCreated.AsSQLTimeStamp:= DateTimeToSqlTimeStamp(Date) ;
 cds_AdrSearchAddressType.AsInteger:= 1 ; //AddressType är bara intressant i companyAddress ;
end;

procedure TdmsContact.cds_AdrSearchBeforePost(DataSet: TDataSet);
begin
 if cds_AdrSearchAddressName.IsNull then
  Begin
   ShowMessage('Adressnamn saknas');
   Abort ;
  End ;

 if cds_AdrSearchCityNo.IsNull then
  Begin
   ShowMessage('Ort saknas');
   Abort ;
  End ;

 if cds_AdrSearchCountryNo.IsNull then
  Begin
   ShowMessage('Land saknas');
   Abort ;
  End ;

 if FinnsAddressName (cds_AdrSearchAddressNo.AsInteger, cds_AdrSearchAddressName.AsString) = True then
  Begin
   ShowMessage('Varning, adressnamnet är taget');
//   Abort ;
  End ;
end;

procedure TdmsContact.cds_MarketAfterInsert(DataSet: TDataSet);
begin
 cds_MarketMarketRegionNo.AsInteger:= dmsConnector.NextMaxNo('MarketRegion') ;
 cds_MarketDateCreated.AsSQLTimeStamp:= DateTimeToSqlTimeStamp(Date) ;
 cds_MarketCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_MarketModifiedUser.AsInteger:= ThisUser.UserID ;
end;

procedure TdmsContact.cds_ClientLLAfterInsert(DataSet: TDataSet);
begin
 cds_ClientLLCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_ClientLLModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_ClientLLDateCreated.AsSQLTimeStamp:= DateTimeToSqlTimeStamp(Date) ;
end;

procedure TdmsContact.cds_CityAfterInsert(DataSet: TDataSet);
begin
 cds_CityCityNo.AsInteger:= dmsConnector.NextMaxNo('City') ;
 cds_CityDateCreated.AsSQLTimeStamp:= DateTimeToSqlTimeStamp(Date) ;
 cds_CityModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_CityCreatedUser.AsInteger:= ThisUser.UserID ;
end;

procedure TdmsContact.cds_CountryAfterInsert(DataSet: TDataSet);
begin
 cds_CountryCountryNo.AsInteger:= dmsConnector.NextMaxNo('Country') ;
 cds_CountryDateCreated.AsSQLTimeStamp:= DateTimeToSqlTimeStamp(Date) ;
 cds_CountryModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_CountryCreatedUser.AsInteger:= ThisUser.UserID ;
end;

procedure TdmsContact.cds_ContactAfterInsert(DataSet: TDataSet);
begin
 cds_ContactContactNo.Asinteger:= dmsConnector.NextSecondMaxNo('Contact', cdsClientClientNo.AsInteger) ;
end;

function TdmsContact.FinnsClientName (const ClientName : String;const ClientNo : Integer) : Boolean ;
Begin
 Try
 sq_name.ParamByName('ClientName').AsString:= ClientName ;
 sq_name.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sq_name.Open ;
 if not sq_name.Eof then
  Result:= True
   else
    Result:= False ;
 Finally
  sq_name.Close ;
 End ;
End ;

function TdmsContact.FinnsSearchName (const SearchName : String;const ClientNo : Integer) : Boolean ;
Begin
 Try
 sq_Searchname.ParamByName('SearchName').AsString:= SearchName ;
 sq_Searchname.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sq_Searchname.Open ;
 if not sq_Searchname.Eof then
  Result:= True
   else
    Result:= False ;
 Finally
  sq_Searchname.Close ;
 End ;
End ;

function TdmsContact.FinnsClientCode (const ClientCode : String;const ClientNo : Integer) : Boolean ;
Begin
 if Length(Trim(ClientCode)) > 0 then
 Begin
  Try
  sq_ClientCode.ParamByName('ClientCode').AsString:= ClientCode ;
  sq_ClientCode.ParamByName('ClientNo').AsInteger:= ClientNo ;
  sq_ClientCode.Open ;
  if not sq_ClientCode.Eof then
   Result:= True
    else
     Result:= False ;
  Finally
   sq_ClientCode.Close ;
  End ;
 End
  else
   Result:= False ;
End ;

function TdmsContact.FinnsAddressName (const AddressNo : Integer;const AddressName : String) : Boolean ;
Begin
 Try
 sq_AdrName.ParamByName('AddressName').AsString:= AddressName ;
 sq_AdrName.ParamByName('AddressNo').AsInteger:= AddressNo ;
 sq_AdrName.Open ;
 if not sq_AdrName.Eof then
  Result:= True
   else
    Result:= False ;
 Finally
  sq_AdrName.Close ;
 End ;
End ;

procedure TdmsContact.AddDocTypeOrder ;
Var x : Integer ;
begin
 For x := 1 to 7 do
 Begin
  cds_CliDoc.Insert ;
  cds_CliDocClientNo.AsInteger:= cdsClientClientNo.AsInteger ;  
  cds_CliDocDocType.AsInteger:= x ;
  cds_CliDocPrintOut.AsInteger:= 0 ;
  Case x of
   1 : cds_CliDocDocument.AsString:= 'Kontrakt' ;
   2 : cds_CliDocDocument.AsString:= 'Faktura' ;
   3 : cds_CliDocDocument.AsString:= 'Lastorder' ;
   4 : cds_CliDocDocument.AsString:= 'Följesedel' ;
   5 : cds_CliDocDocument.AsString:= 'Add LO' ;
   6 : cds_CliDocDocument.AsString:= 'Trporder' ;
   7 : cds_CliDocDocument.AsString:= 'Trpbrev' ;
  End ;//case
  cds_CliDoc.Post ;
 End ;
end;

procedure TdmsContact.cds_PayTermAfterInsert(DataSet: TDataSet);
begin
 cds_PayTermCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_PayTermModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_PayTermDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 cds_PayTermPaymentTermsNo.AsInteger:= dmsConnector.NextMaxNo('Paymentterms') ;
end;

procedure TdmsContact.cds_PayDescAfterInsert(DataSet: TDataSet);
begin
 cds_PayDescPaymentTermsNo.AsInteger:= cds_PayTermPaymentTermsNo.AsInteger ;
 cds_PayDescLanguageCode.AsInteger:= 2 ;
 cds_PayDescDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 cds_PayDescCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_PayDescModifiedUser.AsInteger:= ThisUser.UserID ;
end;

Procedure TdmsContact.GetClientDocPrefs (const ClientNo, RoleType, DocType : Integer;Var ReportName : String; Var NoOfCopy, promptUser, collated : OleVariant;Var PrinterSetup : Integer) ;
Begin
 sqGetDocs.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sqGetDocs.ParamByName('RoleType').AsInteger:= RoleType ;
 sqGetDocs.ParamByName('DocType').AsInteger:= DocType ;

 Try
 sqGetDocs.Open ;
 ReportName:= sqGetDocsReportName.AsString ;
 NoOfCopy:= sqGetDocsNoOfCopy.AsInteger ;
 promptUser:= sqGetDocspromptUser.AsInteger ;
 collated:= sqGetDocscollated.AsInteger ;
 PrinterSetup := sqGetDocsPrinterSetup.AsInteger ;
 Finally
  sqGetDocs.Close ;
 End ;
End ;

procedure TdmsContact.cdsClientPrefDocsAfterInsert(DataSet: TDataSet);
begin
 cdsClientPrefDocsClientNo.AsInteger:= cds_ClientRoleClientNo.AsInteger ;
 cdsClientPrefDocsRoleType.AsInteger:= cds_ClientRoleRoleType.AsInteger ;
 cdsClientPrefDocsNoOfCopy.AsInteger:= 1 ;
 cdsClientPrefDocscollated.AsInteger:= 1 ;
 cdsClientPrefDocsPrinterSetup.AsInteger:= 0 ;
 cdsClientPrefDocspromptUser.AsInteger:= 0 ;
end;

procedure TdmsContact.cdsExtPPAfterInsert(DataSet: TDataSet);
begin
 cdsExtPPClientNo.AsInteger:= cdsClientClientNo.AsInteger ;
 cdsExtPPRowNo.AsInteger:= dmsConnector.NextMaxNo('ExtraPrintParam') ;
 cdsExtPPRegPointNo.AsInteger:= cds_ProductionUnitRegistrationPointNo.AsInteger ;
end;

procedure TdmsContact.cds_ClientRoleRoleTypeChange(Sender: TField);
begin
 if cds_ClientRoleRoleType.AsInteger = 1 then
  cds_ClientRoletypeXOR.AsInteger:= 1
   else
    cds_ClientRoletypeXOR.AsInteger:= -1 ;
end;

procedure TdmsContact.cdsDelTermsAfterInsert(DataSet: TDataSet);
begin
 cdsDelTermsDeliveryTerm_No.AsInteger   := dmsConnector.NextMaxNo('DeliveryTerm') ;
 cdsDelTermsDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Date) ;
 cdsDelTermsCreatedUser.AsInteger       := ThisUser.UserID ;
end;

procedure TdmsContact.cdsDelTermsBeforePost(DataSet: TDataSet);
begin
  cdsDelTermsModifiedUser.AsInteger      := ThisUser.UserID ;
 if Length(cdsDelTermsDescription.AsString) = 0 then
 cdsDelTermsDescription.AsVariant:= Null ;
end;

function TdmsContact.DeleteClient (const clientno : Integer) : Boolean ;
Begin
 Result:= False ;
 sq_DelClient.ParamByName('Clientno').AsInteger:= ClientNo ;
 Try
 sq_DelClient.ExecSQL ;
 Result:= True ;
 Except
  Result:= False ;
 End ;
End ;

function TdmsContact.IsRollITypeInternVerk : Boolean ;
begin
 if (cds_ClientRole.Active) and (cdsClient.Active) then
 Begin
  Result:= False ;
  cds_ClientRole.First ;
  While not cds_ClientRole.Eof do
  Begin
   if cds_ClientRoleRoleType.AsInteger = 9 then
    Result:= True ;
   cds_ClientRole.Next ;
  End ;
 End ;
end;

procedure TdmsContact.cds_ExchangeRateAfterInsert(DataSet: TDataSet);
begin
 cds_ExchangeRateExchangeRateNo.AsInteger   := dmsConnector.NextMaxNo('ExchangeRate') ;
 cds_ExchangeRateCurrencyNo.AsInteger       := cdsCurrencyCurrencyNo.AsInteger ;
 cds_ExchangeRateCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_ExchangeRateModifiedUser.AsInteger     := ThisUser.UserID ;
 cds_ExchangeRateDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Date) ;
end;

procedure TdmsContact.cds_GrpInvAfterInsert(DataSet: TDataSet);
begin
 cds_GrpInvLogicalInventoryPointNo.AsInteger    := dmsConnector.NextMaxNo('LogicalInventoryPoint') ;
 cds_GrpInvDateCreated.AsSQLTimeStamp           := DateTimeToSqlTimeStamp(Date) ;
 cds_GrpInvModifiedUser.AsInteger               := ThisUser.UserID ;
 cds_GrpInvCreatedUser.AsInteger                := ThisUser.UserID ;
 cds_GrpInvLogicalInventoryName.AsString        := cds_PhysInvORT.AsString ;
 cds_GrpInvSequenceNo.AsInteger                 := 1 ;
 cds_GrpInvInventoryType.AsInteger              := 0 ;
 cds_GrpInvAvRegByPkg.AsInteger                 := 0 ;
end;

procedure TdmsContact.DeleteClientEtikett (const userid : Integer) ;
Begin
 sq_DelCliEtik.ParamByName('UserID').AsInteger:= UserID ;
 sq_DelCliEtik.ExecSQL ;
End ;

procedure TdmsContact.InsertClientEtikett (const ClientNo, RoleType, userid : Integer) ;
Begin
 sq_InsCliEtik.ParamByName('UserID').AsInteger    := UserID ;
 sq_InsCliEtik.ParamByName('ClientNo').AsInteger  := ClientNo ;
 sq_InsCliEtik.ParamByName('RoleType').AsInteger  := RoleType ;
 sq_InsCliEtik.ExecSQL ;
End ;

procedure TdmsContact.cds_SalesGrpAfterInsert(DataSet: TDataSet);
begin
 cds_SalesGrpSalesGroupNo.AsInteger:= dmsConnector.NextMaxNo('SalesmanGroup') ;
end;

procedure TdmsContact.cds_SalesGrpRowAfterInsert(DataSet: TDataSet);
begin
 cds_SalesGrpRowSalesGroupNo.AsInteger      := cds_SalesGrpSalesGroupNo.AsInteger ;
 cds_SalesGrpRowDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Date) ;
 cds_SalesGrpRowCreatedUser.AsInteger       := ThisUser.UserID ;
end;

procedure TdmsContact.cdsContRoleAfterInsert(DataSet: TDataSet);
begin
 cdsContRoleCreatedUser.AsInteger       := ThisUser.UserID ;
 cdsContRoleModifiedUser.AsInteger      := ThisUser.UserID ;
 cdsContRoleDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Date) ;
end;

procedure TdmsContact.cdscurrencyAfterInsert(DataSet: TDataSet);
begin
cdsCurrencyDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 cdsCurrencyCreatedUser.AsInteger:= ThisUser.UserID ;
 cdsCurrencyModifiedUser.AsInteger:= ThisUser.UserID ;
 cdsCurrencyCurrencyNo.AsInteger:= dmsConnector.NextMaxNo('Currency') ;
end;

function TdmsContact.GetRoleType(const VerkNo : Integer) : Integer ;
begin
 if IsClientRoleType(VerkNo, 7) then
 Result:= 7
 else
 if IsClientRoleType(VerkNo, 9) then
  Result:= 9
  else
  Result:= 6 ;
End ;

Function TdmsContact.IsClientRoleType(const ClientNo, RoleType: Integer) : Boolean ;
Begin
 Try
 sq_IsRoleType.Close ;
 sq_IsRoleType.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sq_IsRoleType.ParamByName('RoleType').AsInteger:= RoleType ;
 sq_IsRoleType.Open ;
 if not sq_IsRoleType.Eof then
  Result:= True
  else
  Result:= False ;
 Finally
  sq_IsRoleType.Close ;
 End ;
End ;

function TdmsContact.GetSalesRegionNo (const CompanyNo : Integer) : Integer ;
Begin
 sq_GetSRNo.ParamByName('ClientNo').AsInteger:= CompanyNo ;
 Try
 sq_GetSRNo.Open ;
 if not sq_GetSRNo.Eof then
  Result:= sq_GetSRNoSalesRegionNo.AsInteger
   else
    Result:= -1 ;
 Finally
  sq_GetSRNo.Close ;
 End ;
End ;

function TdmsContact.GetPIPByClientNoPIPNO (const OwnerNo : Integer) : Integer ;
Begin
 Try
 sq_GetPIPByClientNo.ParamByName('OwnerNo').AsInteger:= OwnerNo ;
 sq_GetPIPByClientNo.Open ;
 if not sq_GetPIPByClientNo.Eof then
  Result:= sq_GetPIPByClientNoPIPNO.AsInteger
   else
    Result:= -1 ;
 Finally
  sq_GetPIPByClientNo.Close ;
 End ;
End ;

function TdmsContact.GetSuppliercodeByPktLevKod (const PktNrLevKod : String) : String ;
Begin
 Try
 sq_GetPkgPrefix.ParamByName('ProductionUnitCode').AsString := PktNrLevKod ;
// sq_GetPkgPrefix.ParamByName('ClientID').AsString           := ClientID ;
 sq_GetPkgPrefix.Open ;
 if not sq_GetPkgPrefix.Eof then
  Result  := sq_GetPkgPrefixPkgPrefix.AsString
   else
    Result  := '' ;
 Finally
  sq_GetPkgPrefix.Close ;
 End ;

{ sq_GetSuppCodeByPktLevKod.Close ;
 sq_GetSuppCodeByPktLevKod.ParamByName('PktNrLevKod').AsString:= PktNrLevKod ;
 sq_GetSuppCodeByPktLevKod.Open ;
 if not sq_GetSuppCodeByPktLevKod.Eof then
  Result:= sq_GetSuppCodeByPktLevKodClientCode.AsString
   else
    Result:= '' ;
 sq_GetSuppCodeByPktLevKod.Close ; }
End ;

function TdmsContact.Get_PktNrLevKod(const ClientNo : Integer) : String ;
Begin
 Try
 sq_Get_PktNrLevKod.Close ;
 sq_Get_PktNrLevKod.ParamByName('ClientNo').AsInteger := ClientNo ;
 sq_Get_PktNrLevKod.Open ;
 if not sq_Get_PktNrLevKod.Eof then
  Result:= sq_Get_PktNrLevKodPktNrLevKod.AsString
   else
    Result:= '' ;
 Finally
  sq_Get_PktNrLevKod.Close ;
 End ;
End ;

function TdmsContact.GetCityNoOfPIPNo (const PIPNo : Integer) : Integer ;
Begin
 Try
 sq_GetCityNoPIPNo.Close ;
 sq_GetCityNoPIPNo.ParamByName('PIPNo').AsInteger:= PIPNo ;
 sq_GetCityNoPIPNo.Open ;
 if not sq_GetCityNoPIPNo.Eof then
  Result:= sq_GetCityNoPIPNoCityNO.AsInteger
   else
    Result:= -1 ;
 Finally
  sq_GetCityNoPIPNo.Close ;
 End ;
End ;

Function TdmsContact.IsClientMarkedAsIntVerk(const ClientNo : Integer) : Boolean ;
Begin
 sq_IsClientMarkedAsIntVerk.Close ;
 sq_IsClientMarkedAsIntVerk.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sq_IsClientMarkedAsIntVerk.Open ;
 Try
 if not sq_IsClientMarkedAsIntVerk.Eof then
 Begin
  if sq_IsClientMarkedAsIntVerkIntVerk.AsInteger = 1 then
   Result:= True
    else
     Result:= False ;
 End
 else
 Result := False ;
 Finally
  sq_IsClientMarkedAsIntVerk.Close ;
 End ; 
End ;


end.
