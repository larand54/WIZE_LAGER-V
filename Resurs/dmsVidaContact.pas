unit dmsVidaContact;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient,
  VidaType, SqlTimSt ;

type
  TdmsContact = class(TDataModule)
    provSuppliers : TDataSetProvider;
    sp_Suppliers: TSQLStoredProc;
    sp_Regions: TSQLStoredProc;
    provRegions: TDataSetProvider;
    sp_Users: TSQLStoredProc;
    provUsers: TDataSetProvider;
    sp_Carriers: TSQLStoredProc;
    provCarriers: TDataSetProvider;
    sp_Clients: TSQLStoredProc;
    provClients: TDataSetProvider;
    sp_MarketRegions: TSQLStoredProc;
    provMarketRegions: TDataSetProvider;
    sp_Shippers: TSQLStoredProc;
    sp_ShippersClientNo: TIntegerField;
    sp_ShippersClientName: TStringField;
    provShippers: TDataSetProvider;
    cdsSuppliers: TClientDataSet;
    cdsSuppliersClientNo: TIntegerField;
    cdsSuppliersClientName: TStringField;
    dsrcSuppliers: TDataSource;
    cdsShippers: TClientDataSet;
    cdsShippersClientNo: TIntegerField;
    cdsShippersClientName: TStringField;
    dsrcShippers: TDataSource;
    cdsOwners: TClientDataSet;
    cdsOwnersClientNo: TIntegerField;
    cdsOwnersClientName: TStringField;
    cdsOwnersClientCode: TStringField;
    cdsOwnersSalesRegionNo: TIntegerField;
    dsrcOwners: TDataSource;
    cdsProducers: TClientDataSet;
    cdsProducersClientNo: TIntegerField;
    cdsProducersClientName: TStringField;
    dsrcProducers: TDataSource;
    sp_Owners: TSQLStoredProc;
    provOwners: TDataSetProvider;
    sp_Cities: TSQLStoredProc;
    sp_CitiesCityNo: TIntegerField;
    sp_CitiesCityName: TStringField;
    provCities: TDataSetProvider;
    cdsCities: TClientDataSet;
    cdsCitiesCityNo: TIntegerField;
    cdsCitiesCityName: TStringField;
    dsrcCities: TDataSource;
    sp_AddressAndReference: TSQLStoredProc;
    provAddressAndReference: TDataSetProvider;
    cdsAddressAndReference: TClientDataSet;
    cdsAddressAndReferenceAddress: TStringField;
    cdsAddressAndReferenceDestination: TStringField;
    cdsAddressAndReferenceReference: TStringField;
    dsrcAddressAndReference: TDataSource;
    sp_Producers: TSQLStoredProc;
    provProducers: TDataSetProvider;
    sp_ClientCode: TSQLStoredProc;
    sp_ClientCodeClientCode: TStringField;
    sp_Customers: TSQLStoredProc;
    provCustomers: TDataSetProvider;
    sp_BookingTypes: TSQLStoredProc;
    sp_SR_Supplier: TSQLStoredProc;
    sq_invOwner: TSQLQuery;
    sp_Int_and_Lego: TSQLStoredProc;
    sq_PhysInv: TSQLQuery;
    sq_PhysInvPhysicalInventoryPointNo: TIntegerField;
    sq_PhysInvCITYNAME: TStringField;
    sq_LogInv: TSQLQuery;
    sq_IsRoleType: TSQLQuery;
    sq_IsRoleTypeClientNo: TIntegerField;
    sp_PhysInvByCityNo: TSQLStoredProc;
    sq_GetUserName: TSQLQuery;
    sq_GetUserNameFullName: TStringField;
    sq_Clients: TSQLQuery;
    dspClients: TDataSetProvider;
    cdsClient: TClientDataSet;
    cdsClientClientNo: TIntegerField;
    cdsClientClientName: TStringField;
    dsClient: TDataSource;
    sq_City: TSQLQuery;
    dspCity: TDataSetProvider;
    cdsCity: TClientDataSet;
    dsCity: TDataSource;
    sp_LocalShippers: TSQLStoredProc;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    cds_LocalShipper: TClientDataSet;
    dsp_LocalShipper: TDataSetProvider;
    ds_LocalShipper: TDataSource;
    sq_verk: TSQLQuery;
    dsp_verk: TDataSetProvider;
    cds_Verk: TClientDataSet;
    ds_Verk: TDataSource;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    sp_GetPhysInv: TSQLStoredProc;
    sp_VidaClientSearchName: TSQLStoredProc;
    sq_GetLanguageID: TSQLQuery;
    sq_GetLanguageIDLanguageCode: TIntegerField;
    sq_IsClientRoleType: TSQLQuery;
    sq_IsClientRoleTypeClientNo: TIntegerField;
    sq_ClientToLL: TSQLQuery;
    sq_ClientToLLClientName: TStringField;
    sq_ClientToLLClientNo: TIntegerField;
    dsp_ClientToLL: TDataSetProvider;
    cds_ClientToLL: TClientDataSet;
    cds_ClientToLLClientName: TStringField;
    cds_ClientToLLClientNo: TIntegerField;
    ds_ClientToLL: TDataSource;
    sq_RegPoints: TSQLQuery;
    dsp_RegPoints: TDataSetProvider;
    cds_RegPoints: TClientDataSet;
    cds_RegPointsRegPointNo: TIntegerField;
    cds_RegPointsRegPointName: TStringField;
    sq_ProductionUnit: TSQLQuery;
    sq_ProductionUnitProductionUnitNo: TIntegerField;
    sq_ProductionUnitProductionUnitName: TStringField;
    sq_ProductionUnitClientNo: TIntegerField;
    sq_ProductionUnitSequenceNo: TIntegerField;
    sq_ProductionUnitCreatedUser: TIntegerField;
    sq_ProductionUnitModifiedUser: TIntegerField;
    sq_ProductionUnitDateCreated: TSQLTimeStampField;
    sq_ProductionUnitLogicalInventoryPointNo: TIntegerField;
    sq_ProductionUnitRegistrationPointNo: TIntegerField;
    sq_ProductionUnitOnSticks: TIntegerField;
    sq_ProductionUnitSurfacingNo: TIntegerField;
    sq_ProductionUnitDIM_DIV: TIntegerField;
    dsp_ProductionUnit: TDataSetProvider;
    cds_ProductionUnit: TClientDataSet;
    cds_ProductionUnitProductionUnitNo: TIntegerField;
    cds_ProductionUnitProductionUnitName: TStringField;
    cds_ProductionUnitClientNo: TIntegerField;
    cds_ProductionUnitSequenceNo: TIntegerField;
    cds_ProductionUnitCreatedUser: TIntegerField;
    cds_ProductionUnitModifiedUser: TIntegerField;
    cds_ProductionUnitDateCreated: TSQLTimeStampField;
    cds_ProductionUnitLogicalInventoryPointNo: TIntegerField;
    cds_ProductionUnitRegistrationPointNo: TIntegerField;
    cds_ProductionUnitRegPoint: TStringField;
    cds_ProductionUnitOnSticks: TIntegerField;
    cds_ProductionUnitSurfacingNo: TIntegerField;
    cds_ProductionUnitDIM_DIV: TIntegerField;
    ds_ProductionUnit: TDataSource;
    sq_RegPointsRegPointNo: TIntegerField;
    sq_RegPointsRegPointName: TStringField;
    sq_RegPointsCreatedUser: TIntegerField;
    sq_RegPointsModifiedUser: TIntegerField;
    sq_RegPointsDateCreated: TSQLTimeStampField;
    sq_RegPointsSequenceNo: TIntegerField;
    cds_RegPointsCreatedUser: TIntegerField;
    cds_RegPointsModifiedUser: TIntegerField;
    cds_RegPointsDateCreated: TSQLTimeStampField;
    cds_RegPointsSequenceNo: TIntegerField;
    ds_RegPoints: TDataSource;
    sp_MP_Agare: TSQLStoredProc;
    sq_IsLego: TSQLQuery;
    sq_IsLegoRoleType: TIntegerField;
    sq_PkgNoSerie: TSQLQuery;
    dsp_PkgNoSerie: TDataSetProvider;
    cds_PkgNoSerie: TClientDataSet;
    ds_PkgNoSerie: TDataSource;
    cds_PkgNoSerieClientNo: TIntegerField;
    cds_PkgNoSerieCurrentPkgNo: TIntegerField;
    cds_PkgNoSerieHighestPkgNo: TIntegerField;
    cds_PkgNoSerieVerk: TStringField;
    sq_PkgNoSerieClientNo: TIntegerField;
    sq_PkgNoSerieCurrentPkgNo: TIntegerField;
    sq_PkgNoSerieHighestPkgNo: TIntegerField;
    ds_VerkOchLego: TDataSource;
    cds_VerkOchLego: TClientDataSet;
    cds_VerkOchLegoClientNo: TIntegerField;
    cds_VerkOchLegoClientName: TStringField;
    dsp_verkOchLego: TDataSetProvider;
    sq_verkOchLego: TSQLQuery;
    sq_UserIssueReport: TSQLQuery;
    cdsClientClientCode: TStringField;
    cdsClientPktNrLevKod: TStringField;
    sq_ClientsClientNo: TIntegerField;
    sq_ClientsClientCode: TStringField;
    sq_ClientsClientName: TStringField;
    sq_ClientsPktNrLevKod: TStringField;
    sq_GetSuppCodeByPktLevKod: TSQLQuery;
    sq_GetSuppCodeByPktLevKodClientCode: TStringField;
    sqClientPrefDocs: TSQLQuery;
    sqClientPrefDocsClientNo: TIntegerField;
    sqClientPrefDocsDocType: TIntegerField;
    sqClientPrefDocsReportName: TStringField;
    sqClientPrefDocsNoOfCopy: TIntegerField;
    sqClientPrefDocspromptUser: TIntegerField;
    sqClientPrefDocscollated: TIntegerField;
    sqClientPrefDocsPrinterSetup: TIntegerField;
    sq_IsVerk: TSQLQuery;
    sq_IsVerkRoleType: TIntegerField;
    sq_ClientsPaketNoPos: TIntegerField;
    sq_ClientsPaketNoLength: TIntegerField;
    sq_ClientsSupplierCodePos: TIntegerField;
    sq_ClientsSupplierCodeLength: TIntegerField;
    cdsClientPaketNoPos: TIntegerField;
    cdsClientPaketNoLength: TIntegerField;
    cdsClientSupplierCodePos: TIntegerField;
    cdsClientSupplierCodeLength: TIntegerField;
    sq_GetPIPNo: TSQLQuery;
    sq_GetPIPNoPIPNO: TIntegerField;
    sq_Users: TSQLQuery;
    dsp_Users: TDataSetProvider;
    cds_Users: TClientDataSet;
    cds_UsersUserID: TSmallintField;
    cds_UsersNamn: TStringField;
    ds_Users: TDataSource;
    sq_SalesGrp: TSQLQuery;
    sq_SalesGrpSalesGroupNo: TIntegerField;
    sq_SalesGrpSalesGroupName: TStringField;
    dsp_SalesGrp: TDataSetProvider;
    cds_SalesGrp: TClientDataSet;
    cds_SalesGrpSalesGroupNo: TIntegerField;
    cds_SalesGrpSalesGroupName: TStringField;
    ds_SalesGrp: TDataSource;
    sq_SR: TSQLQuery;
    dsp_SR: TDataSetProvider;
    cds_SR: TClientDataSet;
    ds_SR: TDataSource;
    cds_SRClientName: TStringField;
    cds_SRClientNo: TIntegerField;
    sqGetEmailAdr: TSQLQuery;
    sqGetEmailAdrEmailAddress: TStringField;
    sqGetFirstAndLastName: TSQLQuery;
    sqGetFirstAndLastNameFullName: TStringField;
    sq_GetPIPByClientNo: TSQLQuery;
    sq_GetPIPByClientNoPIPNO: TIntegerField;
    sq_GetSpeditorEmail: TSQLQuery;
    sq_GetSpeditorEmailEmailAddress: TStringField;
    sq_Phys: TSQLQuery;
    dsp_PhysInvByCityNo: TDataSetProvider;
    cds_PhysInvByCityNo: TClientDataSet;
    cds_PhysInvByCityNoPhyInvPointNameNo: TIntegerField;
    cds_PhysInvByCityNoCITYNAME: TStringField;
    cds_PhysInvByCityNoOwnerNo: TIntegerField;
    ds_PhysInvByCityNo: TDataSource;
    cds_LL_Verk: TClientDataSet;
    cds_LL_VerkPhyInvPointNameNo: TIntegerField;
    cds_LL_VerkCITYNAME: TStringField;
    cds_LL_VerkOwnerNo: TIntegerField;
    ds_LL_Verk: TDataSource;
    sq_Market: TSQLQuery;
    sq_MarketMarketRegionNo: TIntegerField;
    sq_MarketMarketRegionName: TStringField;
    sq_MarketSequenceNo: TIntegerField;
    sq_MarketDateCreated: TSQLTimeStampField;
    sq_MarketCreatedUser: TIntegerField;
    sq_MarketModifiedUser: TIntegerField;
    dsp_Market: TDataSetProvider;
    cds_Market: TClientDataSet;
    cds_MarketMarketRegionNo: TIntegerField;
    cds_MarketMarketRegionName: TStringField;
    cds_MarketSequenceNo: TIntegerField;
    cds_MarketDateCreated: TSQLTimeStampField;
    cds_MarketCreatedUser: TIntegerField;
    cds_MarketModifiedUser: TIntegerField;
    ds_Market: TDataSource;
    sq_GetSR: TSQLQuery;
    sq_GetSRSalesRegionNo: TIntegerField;
    sq_Currency: TSQLQuery;
    sq_CurrencyCurrencyNo: TIntegerField;
    sq_CurrencyCurrencyName: TStringField;
    sq_CurrencyDateCreated: TSQLTimeStampField;
    sq_CurrencyCreatedUser: TIntegerField;
    sq_CurrencyModifiedUser: TIntegerField;
    dspCurrency: TDataSetProvider;
    cdsCurrency: TClientDataSet;
    cdsCurrencyCurrencyNo: TIntegerField;
    cdsCurrencyCurrencyName: TStringField;
    cdsCurrencyDateCreated: TSQLTimeStampField;
    cdsCurrencyCreatedUser: TIntegerField;
    cdsCurrencyModifiedUser: TIntegerField;
    dsCurrency: TDataSource;
    sq_DelTerms: TSQLQuery;
    sq_DelTermsDeliveryTerm_No: TIntegerField;
    sq_DelTermsDeliveryTerm: TStringField;
    sq_DelTermsDateCreated: TSQLTimeStampField;
    sq_DelTermsCreatedUser: TSmallintField;
    sq_DelTermsModifiedUser: TSmallintField;
    sq_DelTermsSequenceNo: TIntegerField;
    sq_DelTermsDescription: TStringField;
    dspDelTerms: TDataSetProvider;
    cdsDelTerms: TClientDataSet;
    cdsDelTermsDeliveryTerm_No: TIntegerField;
    cdsDelTermsDeliveryTerm: TStringField;
    cdsDelTermsDateCreated: TSQLTimeStampField;
    cdsDelTermsCreatedUser: TIntegerField;
    cdsDelTermsModifiedUser: TIntegerField;
    cdsDelTermsSequenceNo: TIntegerField;
    cdsDelTermsDescription: TStringField;
    dsDelTerms: TDataSource;
    sq_PaymentTerm: TSQLQuery;
    dspPaymentTerm: TDataSetProvider;
    cdsPaymentTerm: TClientDataSet;
    cdsPaymentTermPaymentTermsNo: TIntegerField;
    cdsPaymentTermPaymentTermName: TStringField;
    cdsPaymentTermDiscount1: TFloatField;
    cdsPaymentTermFreightInDiscount: TIntegerField;
    cdsPaymentTermFreightInCommission: TIntegerField;
    cdsPaymentTermCommissionPaidByCustomer: TIntegerField;
    cdsPaymentTermDescription: TStringField;
    cdsPaymentTermLanguageCode: TIntegerField;
    dsPaymentTerm: TDataSource;
    dsPriceUnit: TDataSource;
    ds_volunit: TDataSource;
    cds_volunit: TClientDataSet;
    cds_volunitVolumeUnit_No: TIntegerField;
    cds_volunitVolumeUnitName: TStringField;
    cdsPriceUnit: TClientDataSet;
    cdsPriceUnitTemplateUnitNo: TIntegerField;
    cdsPriceUnitTemplateUnitName: TStringField;
    dspPriceUnit: TDataSetProvider;
    sq_PriceUnit: TSQLQuery;
    sq_PriceUnitTemplateUnitNo: TIntegerField;
    sq_PriceUnitTemplateUnitName: TStringField;
    sq_volunit: TSQLQuery;
    sq_volunitVolumeUnit_No: TIntegerField;
    sq_volunitVolumeUnitName: TStringField;
    dsp_volunit: TDataSetProvider;
    sq_GetPrefixByClientNo: TSQLQuery;
    sq_GetPrefixByClientNoClientCode: TStringField;
    sq_LegoPris: TSQLQuery;
    sq_LegoPrisProductionUnitNo: TIntegerField;
    sq_LegoPrisATMM: TFloatField;
    sq_LegoPrisABMM: TFloatField;
    sq_LegoPrisNoOfSplit: TIntegerField;
    sq_LegoPrisCreatedUser: TIntegerField;
    sq_LegoPrisModifiedUser: TIntegerField;
    sq_LegoPrisDateCreated: TSQLTimeStampField;
    sq_LegoPrisDateModified: TSQLTimeStampField;
    sq_LegoPrisPrice: TFloatField;
    sq_LegoPrisPriceUnitNo: TIntegerField;
    sq_LegoPrisUserName: TStringField;
    dsp_LegoPris: TDataSetProvider;
    cds_LegoPris: TClientDataSet;
    cds_LegoPrisATMM: TFloatField;
    cds_LegoPrisABMM: TFloatField;
    cds_LegoPrisNoOfSplit: TIntegerField;
    cds_LegoPrisCreatedUser: TIntegerField;
    cds_LegoPrisModifiedUser: TIntegerField;
    cds_LegoPrisDateCreated: TSQLTimeStampField;
    cds_LegoPrisDateModified: TSQLTimeStampField;
    cds_LegoPrisPrice: TFloatField;
    cds_LegoPrisPriceUnitNo: TIntegerField;
    cds_LegoPrisUserName: TStringField;
    cds_LegoPrisPrisenhet: TStringField;
    cds_LegoPrisProductionUnitNo: TIntegerField;
    ds_LegoPris: TDataSource;
    sq_SOLegoCost: TSQLQuery;
    sq_SOLegoCostProductionUnitNo: TIntegerField;
    sq_SOLegoCostProductionUnitName: TStringField;
    sq_SOLegoCostClientNo: TIntegerField;
    sq_SOLegoCostSequenceNo: TIntegerField;
    sq_SOLegoCostCreatedUser: TSmallintField;
    sq_SOLegoCostModifiedUser: TSmallintField;
    sq_SOLegoCostDateCreated: TSQLTimeStampField;
    sq_SOLegoCostLogicalInventoryPointNo: TIntegerField;
    sq_SOLegoCostRegistrationPointNo: TIntegerField;
    sq_SOLegoCostOnSticks: TIntegerField;
    sq_SOLegoCostSurfacingNo: TIntegerField;
    sq_SOLegoCostDIM_DIV: TIntegerField;
    sq_SOLegoCostTerminalNo: TIntegerField;
    sq_SOLegoCostPhysicalInventoryPointNo: TIntegerField;
    sq_SOLegoCostLIPGroupNo: TIntegerField;
    sq_SOLegoCostCost: TFloatField;
    sq_SOLegoCostCapitalCost: TFloatField;
    sq_SOLegoCostOverheadCost: TFloatField;
    sq_SOLegoCostSalaryCost: TFloatField;
    sq_SOLegoCostLegoCostPerAM3: TFloatField;
    dsp_SOLegoCost: TDataSetProvider;
    cds_SOLegoCost: TClientDataSet;
    cds_SOLegoCostProductionUnitNo: TIntegerField;
    cds_SOLegoCostProductionUnitName: TStringField;
    cds_SOLegoCostClientNo: TIntegerField;
    cds_SOLegoCostSequenceNo: TIntegerField;
    cds_SOLegoCostCreatedUser: TSmallintField;
    cds_SOLegoCostModifiedUser: TSmallintField;
    cds_SOLegoCostDateCreated: TSQLTimeStampField;
    cds_SOLegoCostLogicalInventoryPointNo: TIntegerField;
    cds_SOLegoCostRegistrationPointNo: TIntegerField;
    cds_SOLegoCostOnSticks: TIntegerField;
    cds_SOLegoCostSurfacingNo: TIntegerField;
    cds_SOLegoCostDIM_DIV: TIntegerField;
    cds_SOLegoCostTerminalNo: TIntegerField;
    cds_SOLegoCostPhysicalInventoryPointNo: TIntegerField;
    cds_SOLegoCostLIPGroupNo: TIntegerField;
    cds_SOLegoCostCost: TFloatField;
    cds_SOLegoCostCapitalCost: TFloatField;
    cds_SOLegoCostOverheadCost: TFloatField;
    cds_SOLegoCostSalaryCost: TFloatField;
    cds_SOLegoCostLegoCostPerAM3: TFloatField;
    cds_SOLegoCostLegoverk: TStringField;
    cds_SOLegoCostMtpunkt: TStringField;
    ds_SOLegoCost: TDataSource;
    cds_LegoVerk: TClientDataSet;
    cds_LegoVerkClientNo: TIntegerField;
    cds_LegoVerkClientName: TStringField;
    dsp_LegoVerk: TDataSetProvider;
    sq_LegoVerk: TSQLQuery;
    sq_IsIntVerk: TSQLQuery;
    sq_IsIntVerkIntVerk: TIntegerField;
    procedure provSawMillLoadOrders1111GetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cds_ProductionUnitAfterInsert(DataSet: TDataSet);
    procedure cds_ProductionUnitReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cds_RegPointsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_RegPointsAfterInsert(DataSet: TDataSet);
    procedure cds_PkgNoSerieReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_PkgNoSeriePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure cds_SOLegoCostAfterInsert(DataSet: TDataSet);
    procedure cds_LegoPrisAfterInsert(DataSet: TDataSet);
    procedure cds_LegoPrisBeforePost(DataSet: TDataSet);

  private
    fClientNo : Integer ;
    Function  IsClientRoleType(const ClientNo, RoleType: Integer) : Boolean ;
    procedure GetPhysicalInventory(Strings : TStrings;const OwnerNo : Integer);
    procedure LoadPhysInventoryLookupTable(StoredProc: TSQLQUERY; StringFieldName: String;
                          CodeFieldName: String; Strings: TStrings; const InventoryOwner, LoggedInCompanyNo : Integer);
    function  ThisUserIsRoleType(const ClientNo, RoleType : Integer) : Boolean ;
    function  WhoBelongsToLoadingLocation(const LoadingLocationNo : Integer) : Integer ;

  public
    Function  ClientInterVerk(const CompanyNo : Integer) : Boolean ;
    function  GetSRByCompanyNo(const ClientNo : Integer) : Integer ;
    procedure Load_LoadingLocationsForVerk (const SalesRegionNo : Integer) ;
    procedure LoadLagerStallenPerSR (const SalesRegionNo : Integer) ;
    function  GetEmailAddressForSpeditorByLO (const LONo : Integer) : String ;
    function  GetEmailAddress (const ClientNo : Integer) : String ;
    function  GetPIPNo (const LIPNo : Integer) : Integer ;
    function  GetSuppliercodeByPktLevKod (const PktNrLevKod : String) : String ;
    function  GetPrefixByClientNo(const ClientNo : Integer) : String ;
    function  GetSupplierCode(const LoadingLocationNo : Integer) : String3;
    procedure LoadClientSearchName(Strings : TStrings;const RoleType : Integer);
    procedure LoadPhysInvByCityNoFilterByClientNo(Strings: TStrings; const OwnerNo : Integer);
    function  GetFullUserName(const UserID : Integer) : String ;
    function  GetFirstAndLastName(const UserID : Integer) : String ;
    procedure LoadPhysInvByCityNo(Strings: TStrings; const OwnerNo : Integer);
    procedure LoadPhysicalInventory(Strings : TStrings;const OwnerNo : Integer);
    procedure LoadPhysInventory(Strings: TStrings; const InventoryOwner, LoggedInCompanyNo : Integer);
    procedure LoadLogicalInventory(Strings: TStrings; const PhysicalInventoryPointNo: Integer);

    function  SuppNoToSuppCode(const SupplierNo : Integer) : String3;

    procedure LoadShippers (Strings: TStrings);

    function  GetClientCode(const ClientNo: Integer) : String3;
    procedure LoadClients(Strings : TStrings;RoleType : Integer);
    procedure LoadCarriers(Strings : TStrings);
    procedure LoadSuppliers(Strings : TStrings);
    procedure LoadMatPunktsAgare(Strings : TStrings);
    procedure Load_Suppliers_By_SR(const SalesRegionNo : Integer; Strings : TStrings);
    procedure LoadRegions(Strings : TStrings);
    procedure LoadMarketRegions(Strings : TStrings);
    procedure LoadCities(Strings: TStrings);
    procedure LoadBookingTypes(Strings: TStrings);
    procedure Load_InvOwner(Strings : TStrings;const VerkNo : Integer; Var RoleType : Integer);
    procedure Load_Int_and_Lego(Strings : TStrings) ;
    function  Client_Language (const ClientNo : Integer ) : Integer ;
    function  IsClientLego(const ClientNo : Integer) : Integer ;
    function  IsClientVerk(const ClientNo : Integer) : Integer ;
    procedure InsertUserIssueReport(const UserId, InternalInvoiceNo : Integer) ;
    procedure Load_ExtInvOwner(Strings : TStrings;const VerkNo : Integer; Var RoleType : Integer);
    Procedure GetClientDocPrefs (const ClientNo, DocType : Integer;Var ReportName : String; Var NoOfCopy, promptUser, collated : OleVariant;Var PrinterSetup : Integer) ;
    procedure Load_SalesGroups(Strings : TStrings);
    function  GetClientName(const ClientNo: Integer) : String;
    function  GetRoleType(const VerkNo : Integer) : Integer ;
    function  GetPIPByClientNoPIPNO (const OwnerNo : Integer) : Integer ;
  end;

var
  dmsContact : TdmsContact;

implementation

uses dmsDataConn, VidaConst, VidaUser, uChooseSupplier, recerror,  dmsVidaSystem;

{$R *.dfm}



{ TdmsContact }

function  TdmsContact.GetClientName(const ClientNo: Integer) : String;
Begin
 sp_ClientCode.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sp_ClientCode.Open ;
 if not sp_ClientCode.Eof then
  Result:= sp_ClientCodeClientCode.AsString
  else
   Result:= '' ;
 sp_ClientCode.Close ;
End ;



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
end;


procedure TdmsContact.LoadSuppliers(Strings : TStrings);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
  sp_Suppliers.ParamByName('Client').AsInteger:= - 1 ;
  sp_Suppliers.Open;
  try
    sp_Suppliers.First;
    while not sp_Suppliers.Eof do begin
      Strings.AddObject(
        sp_Suppliers.FieldByname('ClientName').AsString,
        TObject(sp_Suppliers.FieldByName('ClientNo').AsInteger)
        );
      sp_Suppliers.Next;
      end;
  finally
    sp_Suppliers.Close;
    end;
end;

procedure TdmsContact.provSawMillLoadOrders1111GetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName := 'SupplierShippingPlan';
end;

procedure TdmsContact.LoadRegions(Strings : TStrings);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
  sp_Regions.ParamByName('RoleType').AsInteger:= 7 ;
  sp_Regions.Open;
  try
    sp_Regions.First;
    while not sp_Regions.Eof do begin
      Strings.AddObject(
        sp_Regions.FieldByname('ClientName').AsString,
        TObject(sp_Regions.FieldByName('ClientNo').AsInteger)
        );
      sp_Regions.Next;
      end;
  finally
    sp_Regions.Close;
    end;
end;


procedure TdmsContact.LoadMarketRegions(Strings : TStrings);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
//  sp_MarketRegions.ParamByName('RoleType').AsInteger:= 7 ;
  sp_MarketRegions.Open;
  try
    sp_MarketRegions.First;
    while not sp_MarketRegions.Eof do begin
      Strings.AddObject(
        sp_MarketRegions.FieldByname('MarketRegionName').AsString,
        TObject(sp_MarketRegions.FieldByName('MarketRegionNo').AsInteger)
        );
      sp_MarketRegions.Next;
      end;
  finally
    sp_MarketRegions.Close;
    end;
end;

procedure TdmsContact.LoadCarriers(Strings : TStrings);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
  sp_Carriers.Open;
  try
    sp_Carriers.First;
    while not sp_Carriers.Eof do begin
      Strings.AddObject(
        sp_Carriers.FieldByname('CarrierName').AsString,
        TObject(sp_Carriers.FieldByName('CarrierNo').AsInteger)
        );
      sp_Carriers.Next;
      end;
  finally
    sp_Carriers.Close;
    end;
end;


procedure TdmsContact.LoadClients(Strings : TStrings;RoleType : Integer);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
  sp_Clients.ParamByName('RoleType').AsInteger:= RoleType ; //1 customer / kund
  sp_Clients.Open;
  try
    sp_Clients.First;
    while not sp_Clients.Eof do begin
      Strings.AddObject(
        sp_Clients.FieldByname('ClientName').AsString,
        TObject(sp_Clients.FieldByName('ClientNo').AsInteger)
        );
      sp_Clients.Next;
      end;
  finally
    sp_Clients.Close;
    end;
end;

procedure TdmsContact.LoadClientSearchName(Strings : TStrings;const RoleType : Integer);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
  sp_VidaClientSearchName.ParamByName('RoleType').AsInteger:= RoleType ; //1 customer / kund
  sp_VidaClientSearchName.Open;
  try
    sp_VidaClientSearchName.First;
    while not sp_VidaClientSearchName.Eof do begin
      Strings.AddObject(
        sp_VidaClientSearchName.FieldByname('SearchName').AsString,
        TObject(sp_VidaClientSearchName.FieldByName('ClientNo').AsInteger)
        );
      sp_VidaClientSearchName.Next;
      end;
  finally
    sp_VidaClientSearchName.Close;
    end;
end;

function  TdmsContact.GetClientCode(const ClientNo: Integer) : String3;
Begin
 sp_ClientCode.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sp_ClientCode.Open ;
 if not sp_ClientCode.Eof then
  Result:= sp_ClientCodeClientCode.AsString
  else
   Result:= '' ;
 sp_ClientCode.Close ;
End ;

procedure TdmsContact.LoadShippers(Strings: TStrings);
begin
  LoadLookupTable(sp_Shippers, 'ClientName', 'Clientno', Strings)
end;

function TdmsContact.SuppNoToSuppCode(const SupplierNo: Integer): String3;
begin
  sp_Suppliers.Close;
  sp_Suppliers.ParamByName('Client').AsInteger := SupplierNo;
  sp_Suppliers.Open;
  try
    sp_Suppliers.First;
    if not sp_Suppliers.Eof then
      Result := trim(sp_Suppliers.FieldValues['ClientCode'])
    else
      Result := '';
  finally
    sp_Suppliers.Close;
    end;
end;


procedure TdmsContact.LoadCities(Strings: TStrings);
begin
  LoadLookupTable(sp_Cities, 'CityName', 'CityNo', Strings)
end;

procedure TdmsContact.LoadBookingTypes(Strings: TStrings);
begin
  LoadLookupTable(sp_BookingTypes, 'BookingType', 'BookingTypeNo', Strings)
end;

procedure TdmsContact.Load_Suppliers_By_SR(const SalesRegionNo : Integer; Strings : TStrings);

//
begin
  sp_SR_Supplier.ParamByName('SalesRegionNo').AsInteger:= SalesRegionNo ;
  sp_SR_Supplier.Open;
  try
    sp_SR_Supplier.First;
    while not sp_SR_Supplier.Eof do begin
      Strings.AddObject(
        sp_SR_Supplier.FieldByname('ClientName').AsString,
        TObject(sp_SR_Supplier.FieldByName('ClientNo').AsInteger)
        );
      sp_SR_Supplier.Next;
      end;
  finally
    sp_SR_Supplier.Close;
    end;
end;

procedure TdmsContact.Load_InvOwner(Strings : TStrings;const VerkNo : Integer; Var RoleType : Integer);
begin
//  sq_invOwner.ParamByName('SalesRegionNo').AsInteger:= SalesRegionNo ;
 if IsClientRoleType(VerkNo, 9) then
  RoleType:= 9
  else
  if IsClientRoleType(VerkNo, 7) then
  RoleType:= 7
  else
  RoleType := 6 ;

 if VerkNo = VIDA_WOOD_COMPANY_NO then
 Begin
  sq_invOwner.Open;
  try
    sq_invOwner.First;
    while not sq_invOwner.Eof do
     begin
      Strings.AddObject(
        sq_invOwner.FieldByname('ClientName').AsString,
        TObject(sq_invOwner.FieldByName('ClientNo').AsInteger)
        );
      sq_invOwner.Next;
     end;
  finally
    sq_invOwner.Close;
   end;
  End
  else

   if RoleType = cInternal_Mill then
   Begin
    sq_invOwner.Open;
    try
     sq_invOwner.First;
     while not sq_invOwner.Eof do
      begin
        Strings.AddObject(
        sq_invOwner.FieldByname('ClientName').AsString,
        TObject(sq_invOwner.FieldByName('ClientNo').AsInteger) );
       sq_invOwner.Next;
      end;
    finally
     sq_invOwner.Close;
    end;
   End

   else

   if RoleType = cLego then
   Begin
    Strings.AddObject('VIDA WOOD AB', TObject(VIDA_WOOD_COMPANY_NO) );
   End
   else



   if RoleType = cSalesRegion then
   Begin
    sq_invOwner.Open;
    try
     sq_invOwner.First;
     while not sq_invOwner.Eof do
      begin
       if (sq_invOwner.FieldByName('ClientNo').AsInteger = VerkNo) OR (sq_invOwner.FieldByName('ClientNo').AsInteger = VIDA_WOOD_COMPANY_NO) then
       Begin
        Strings.AddObject(
        sq_invOwner.FieldByname('ClientName').AsString,
        TObject(sq_invOwner.FieldByName('ClientNo').AsInteger) );
       End ;
       sq_invOwner.Next;
      end;
    finally
     sq_invOwner.Close;
    end;
   End ;
end;

procedure TdmsContact.Load_Int_and_Lego(Strings : TStrings) ;
begin
  sp_Int_and_Lego.Open;
  try
    sp_Int_and_Lego.First;
    while not sp_Int_and_Lego.Eof do begin
      Strings.AddObject(
        sp_Int_and_Lego.FieldByname('ClientName').AsString,
        TObject(sp_Int_and_Lego.FieldByName('ClientNo').AsInteger)
        );
      sp_Int_and_Lego.Next;
      end;
  finally
    sp_Int_and_Lego.Close;
  end;
end;

procedure LoadInventoryLookupTable(StoredProc: TSQLQUERY; StringFieldName: String;
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
end;


procedure TdmsContact.LoadPhysInventory(Strings: TStrings;const InventoryOwner, LoggedInCompanyNo : Integer);
begin
  LoadPhysInventoryLookupTable(sq_PhysInv, 'CITYNAME', 'PhysicalInventoryPointNo', Strings, InventoryOwner, LoggedInCompanyNo) ;
end;

procedure TdmsContact.LoadLogicalInventory(Strings: TStrings; const PhysicalInventoryPointNo: Integer);
begin
  LoadInventoryLookupTable(sq_LogInv, 'LogicalInventoryName', 'LogicalInventoryPointNo', Strings, PhysicalInventoryPointNo)
end;

procedure TdmsContact.LoadPhysInventoryLookupTable(StoredProc: TSQLQUERY; StringFieldName: String;
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

procedure TdmsContact.GetPhysicalInventory(Strings : TStrings;const OwnerNo : Integer);

begin
  sq_PhysInv.ParamByName('Param1').AsInteger:= OwnerNo ; //1 customer / kund
  sq_PhysInv.Open;
  try
    sq_PhysInv.First;
    while not sq_PhysInv.Eof do begin
      Strings.AddObject(
        sq_PhysInv.FieldByname('CityName').AsString,
        TObject(sq_PhysInv.FieldByName('PhysicalInventoryPointNo').AsInteger)
        );
      sq_PhysInv.Next;
      end;
  finally
    sq_PhysInv.Close;
    end;
end;


Function TdmsContact.IsClientRoleType(const ClientNo, RoleType: Integer) : Boolean ;
Begin
 sq_IsRoleType.Close ;
 sq_IsRoleType.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sq_IsRoleType.ParamByName('RoleType').AsInteger:= RoleType ;
 sq_IsRoleType.Open ;
 if not sq_IsRoleType.Eof then
  Result:= True
  else
  Result:= False ;
 sq_IsRoleType.Close ;
End ;

procedure TdmsContact.LoadPhysicalInventory(Strings : TStrings;const OwnerNo : Integer);
begin
  GetPhysicalInventory(Strings,OwnerNo);
end;

procedure TdmsContact.LoadPhysInvByCityNo(Strings: TStrings; const OwnerNo : Integer);
begin
 sp_PhysInvByCityNo.ParamByName('SalesRegionNo').AsInteger:= OwnerNo ;
 sp_PhysInvByCityNo.Open ;

  try

  Strings.Clear ;
  sp_PhysInvByCityNo.First;
    while not sp_PhysInvByCityNo.Eof do
     begin
      Strings.AddObject(sp_PhysInvByCityNo.FieldByName('CITYNAME').AsString,
                        TObject(sp_PhysInvByCityNo.FieldByName('PhyInvPointNameNo').AsInteger));
      sp_PhysInvByCityNo.Next ;
     end;

  finally
    sp_PhysInvByCityNo.close
  end;
end;

procedure TdmsContact.LoadPhysInvByCityNoFilterByClientNo(Strings: TStrings; const OwnerNo : Integer);
begin
 sp_GetPhysInv.ParamByName('OwnerNo').AsInteger:= OwnerNo ;
 sp_GetPhysInv.Open ;

  try

  Strings.Clear ;
  sp_GetPhysInv.First;
    while not sp_GetPhysInv.Eof do
     begin
      Strings.AddObject(sp_GetPhysInv.FieldByName('CITYNAME').AsString,
                        TObject(sp_GetPhysInv.FieldByName('PhyInvPointNameNo').AsInteger));
      sp_GetPhysInv.Next ;
     end;

  finally
    sp_GetPhysInv.close
  end;
end;

function TdmsContact.GetFullUserName(const UserID : Integer) : String ;
Begin
 sq_GetUserName.ParamByName('UserID').AsInteger:= UserID ;
 sq_GetUserName.Open ;
 Result:= sq_GetUserNameFullName.AsString ;
 sq_GetUserName.Close ;
End ;

function TdmsContact.GetFirstAndLastName(const UserID : Integer) : String ;
Begin
 sqGetFirstAndLastName.ParamByName('UserID').AsInteger:= UserID ;
 sqGetFirstAndLastName.Open ;
 Result:= sqGetFirstAndLastNameFullName.AsString ;
 sqGetFirstAndLastName.Close ;
End ;

function  TdmsContact.Client_Language (const ClientNo : Integer ) : Integer ;
Begin
 Result:= -1 ;
 sq_GetLanguageID.Close ;
 sq_GetLanguageID.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sq_GetLanguageID.Open ;
 if not sq_GetLanguageID.Eof then
  Result:= sq_GetLanguageIDLanguageCode.AsInteger ;
 sq_GetLanguageID.Close ;
End ;

function TdmsContact.ThisUserIsRoleType(const ClientNo, RoleType : Integer) : Boolean ;
Begin
 Result:= False ;
 Try
 sq_IsClientRoleType.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sq_IsClientRoleType.ParamByName('RoleType').AsInteger:= RoleType ;
 sq_IsClientRoleType.Open ;
 if sq_IsClientRoleTypeClientNo.AsInteger = ClientNo then
  Result:= True
   else
    Result:= False ;
 Finally
  sq_IsClientRoleType.Close ;
 End ;
End ;

function TdmsContact.WhoBelongsToLoadingLocation(const LoadingLocationNo : Integer) : Integer ;
var frmChooseSupplier: TfrmChooseSupplier;
Begin
 sq_ClientToLL.ParamByName('LoadingLocationNo').AsInteger:= LoadingLocationNo ;
 cds_ClientToLL.Active:= True ;

 if cds_ClientToLL.RecordCount > 1 then
 Begin
  frmChooseSupplier:= TfrmChooseSupplier.Create(Nil);
  Try
   frmChooseSupplier.ShowModal ;
   Result:= cds_ClientToLLClientNo.AsInteger ;
  Finally
   FreeAndNil(frmChooseSupplier) ;
  End ;
 End
 else
  Begin
   if not cds_ClientToLL.Eof then
    Result:= cds_ClientToLLClientNo.AsInteger
     else
      Result:= -1 ;
  End ;
 cds_ClientToLL.Active:= False ;
End ;

function TdmsContact.GetSupplierCode(const LoadingLocationNo : Integer) : String3 ;
Var ClientNo : Integer ;
Begin
 ClientNo := -1 ;
 if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
 Begin
  ClientNo:= WhoBelongsToLoadingLocation(LoadingLocationNo) ;
  if ClientNo <> -1 then
   Result:= dmsContact.GetClientCode(ClientNo)
    else
     Result:= 'VWS' ;
 End
  else
   if ThisUserIsRoleType(ThisUser.CompanyNo, cInternal_Mill) then
     Result:= dmsContact.GetClientCode(ThisUser.CompanyNo)
      else
       if ThisUserIsRoleType(ThisUser.CompanyNo, cLego) then
        Result:= dmsContact.GetClientCode(ThisUser.CompanyNo) ;
End ;

procedure TdmsContact.cds_ProductionUnitAfterInsert(DataSet: TDataSet);
begin
 cds_ProductionUnitProductionUnitNo.AsInteger:= dmsConnector.NextMaxNo('ProductionUnit') ;
 cds_ProductionUnitCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_ProductionUnitModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_ProductionUnitDateCreated.AsSQLTimeStamp:= DateTimeToSqlTimeStamp(Date) ;
 cds_ProductionUnitClientNo.AsInteger:= fClientNo ;
 cds_ProductionUnitOnSticks.AsInteger:= 0 ;
end;

procedure TdmsContact.cds_ProductionUnitReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmsContact.cds_RegPointsReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmsContact.cds_RegPointsAfterInsert(DataSet: TDataSet);
begin
 cds_RegPointsRegPointNo.AsInteger:= dmsConnector.NextMaxNo('RegistrationPoint') ;
 cds_RegPointsCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_RegPointsModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_RegPointsDateCreated.AsSQLTimeStamp:= DateTimeToSqlTimeStamp(Date) ;
end;


procedure TdmsContact.LoadMatPunktsAgare(Strings : TStrings);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
  sp_MP_Agare.Open;
  try
    sp_MP_Agare.First;
    while not sp_MP_Agare.Eof do begin
      Strings.AddObject(
        sp_MP_Agare.FieldByname('ClientName').AsString,
        TObject(sp_MP_Agare.FieldByName('ClientNo').AsInteger)
        );
      sp_MP_Agare.Next;
      end;
  finally
    sp_MP_Agare.Close;
    end;
end;


function TdmsContact.IsClientVerk(const ClientNo : Integer) : Integer ;
Begin
 Result:= -1 ;
 sq_IsVerk.ParamByName('ClientNo').AsInteger := ClientNo ;
 sq_IsVerk.Open ;
 if not sq_IsVerk.Eof then
  Result:= sq_IsVerkRoleType.AsInteger
   else
    Result:= -1 ;
 sq_IsVerk.Close ;
End ;

function TdmsContact.IsClientLego(const ClientNo : Integer) : Integer ;
Begin
 Result:= -1 ;
 sq_IsLego.ParamByName('ClientNo').AsInteger := ClientNo ;
 sq_IsLego.Open ;
 if not sq_IsLego.Eof then
  Result:= sq_IsLegoRoleType.AsInteger
   else
    Result:= -1 ;
 sq_IsLego.Close ;
End ;

procedure TdmsContact.cds_PkgNoSerieReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
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

procedure TdmsContact.InsertUserIssueReport(const UserId, InternalInvoiceNo : Integer) ;
Begin
 Try
 sq_UserIssueReport.ParamByName('userId').AsInteger:= userId ;
 sq_UserIssueReport.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
 sq_UserIssueReport.ExecSQL(False) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

function TdmsContact.GetPrefixByClientNo(const ClientNo : Integer) : String ;
Begin
 sq_GetPrefixByClientNo.Close ;
 sq_GetPrefixByClientNo.ParamByName('ClientNo').AsInteger := ClientNo ;
 sq_GetPrefixByClientNo.Open ;
 if not sq_GetPrefixByClientNo.Eof then
  Result:= sq_GetPrefixByClientNoClientCode.AsString
   else
    Result:= '' ;
 sq_GetPrefixByClientNo.Close ;
End ;

function TdmsContact.GetSuppliercodeByPktLevKod (const PktNrLevKod : String) : String ;
Begin
 sq_GetSuppCodeByPktLevKod.Close ;
 sq_GetSuppCodeByPktLevKod.ParamByName('PktNrLevKod').AsString:= PktNrLevKod ;
 sq_GetSuppCodeByPktLevKod.Open ;
 if not sq_GetSuppCodeByPktLevKod.Eof then
  Result:= sq_GetSuppCodeByPktLevKodClientCode.AsString
   else
    Result:= '' ;
 sq_GetSuppCodeByPktLevKod.Close ;
End ;

procedure TdmsContact.Load_ExtInvOwner(Strings : TStrings;const VerkNo : Integer; Var RoleType : Integer);
begin
//  sq_invOwner.ParamByName('SalesRegionNo').AsInteger:= SalesRegionNo ;
 if IsClientRoleType(VerkNo, 9) then
  RoleType:= 9
  else
  if IsClientRoleType(VerkNo, 7) then
  RoleType:= 7
  else
  RoleType := 6 ;


   if RoleType = cInternal_Mill then
   Begin
    sq_invOwner.Open;
    try
     sq_invOwner.First;
     while not sq_invOwner.Eof do
      begin
       if (sq_invOwner.FieldByName('ClientNo').AsInteger = 172) or
       (sq_invOwner.FieldByName('ClientNo').AsInteger = 2878) then
        Strings.AddObject(
        sq_invOwner.FieldByname('ClientName').AsString,
        TObject(sq_invOwner.FieldByName('ClientNo').AsInteger) );
       sq_invOwner.Next;
      end;
    finally
     sq_invOwner.Close;
    end;
   End ;

end;

Procedure TdmsContact.GetClientDocPrefs (const ClientNo, DocType : Integer;Var ReportName : String; Var NoOfCopy, promptUser, collated : OleVariant;Var PrinterSetup : Integer) ;
Begin
 sqClientPrefDocs.Close ;
 sqClientPrefDocs.ParamByName('ClientNo').AsInteger := ClientNo ;
 sqClientPrefDocs.ParamByName('DocType').AsInteger  := DocType ;
 sqClientPrefDocs.Open ;
 if not sqClientPrefDocs.Eof then
 Begin
  ReportName     := sqClientPrefDocsReportName.AsString ;
  NoOfCopy       := sqClientPrefDocsNoOfCopy.AsInteger ;
  promptUser     := sqClientPrefDocspromptUser.AsInteger ;
  collated       := sqClientPrefDocscollated.AsInteger ;
  PrinterSetup   := sqClientPrefDocsPrinterSetup.AsInteger ;
 End
 else
 Begin
  sqClientPrefDocs.Close ;
  sqClientPrefDocs.ParamByName('ClientNo').AsInteger := 1 ;
  sqClientPrefDocs.ParamByName('DocType').AsInteger  := DocType ;
  sqClientPrefDocs.Open ;
  if not sqClientPrefDocs.Eof then
  Begin
   ReportName     := sqClientPrefDocsReportName.AsString ;
   NoOfCopy       := sqClientPrefDocsNoOfCopy.AsInteger ;
   promptUser     := sqClientPrefDocspromptUser.AsInteger ;
   collated       := sqClientPrefDocscollated.AsInteger ;
   PrinterSetup   := sqClientPrefDocsPrinterSetup.AsInteger ;
  End ;
 End ;
 sqClientPrefDocs.Close ;
End ;

function TdmsContact.GetPIPNo (const LIPNo : Integer) : Integer ;
Begin
 sq_GetPIPNo.Close ;
 sq_GetPIPNo.ParamByName('LIPNo').AsInteger:= LIPNo ;
 sq_GetPIPNo.Open ;
 if not sq_GetPIPNo.Eof then
  Result:= sq_GetPIPNoPIPNO.AsInteger
   else
    Result:= -1 ;
 sq_GetPIPNo.Close ;
End ;


function TdmsContact.GetEmailAddress (const ClientNo : Integer) : String ;
Begin
 Result:= '' ;
 sqGetEmailAdr.Close ;
 sqGetEmailAdr.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sqGetEmailAdr.Open ;
 sqGetEmailAdr.First ;
 While not sqGetEmailAdr.Eof do
 Begin
  Result:= Trim(sqGetEmailAdrEmailAddress.AsString)+';'+Result ;
  sqGetEmailAdr.Next ;
 End ;
 sqGetEmailAdr.Close ;
End ;

function TdmsContact.GetEmailAddressForSpeditorByLO (const LONo : Integer) : String ;
Begin
 Result:= '' ;
 sq_GetSpeditorEmail.Close ;
 sq_GetSpeditorEmail.ParamByName('LONumber').AsInteger:= LONo ;
 sq_GetSpeditorEmail.Open ;
 sq_GetSpeditorEmail.First ;
 While not sq_GetSpeditorEmail.Eof do
 Begin
  Result:= Trim(sq_GetSpeditorEmailEmailAddress.AsString)+';'+Result ;
  sq_GetSpeditorEmail.Next ;
 End ;
 sq_GetSpeditorEmail.Close ;
End ;

procedure TdmsContact.Load_SalesGroups(Strings : TStrings);
begin
 cds_SalesGrp.Active:= True ;
 try
  cds_SalesGrp.First;
     while not cds_SalesGrp.Eof do
      begin
        Strings.AddObject(
        cds_SalesGrp.FieldByname('SalesGroupName').AsString,
        TObject(cds_SalesGrp.FieldByName('SalesGroupNo').AsInteger) );
       cds_SalesGrp.Next;
      end;
    finally
     cds_SalesGrp.Active:= False ;
    end;
end;

function TdmsContact.GetRoleType(const VerkNo : Integer) : Integer ;
begin
 if IsClientRoleType(VerkNo, 9) then
  Result:= 9
  else
  if IsClientRoleType(VerkNo, 7) then
  Result:= 7
  else
  Result:= 6 ;
End ;

function TdmsContact.GetPIPByClientNoPIPNO (const OwnerNo : Integer) : Integer ;
Begin
 sq_GetPIPByClientNo.ParamByName('OwnerNo').AsInteger:= OwnerNo ;
 sq_GetPIPByClientNo.Open ;
 if not sq_GetPIPByClientNo.Eof then
  Result:= sq_GetPIPByClientNoPIPNO.AsInteger
   else
    Result:= -1 ;
 sq_GetPIPByClientNo.Close ;   
End ;

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

function TdmsContact.GetSRByCompanyNo(const ClientNo : Integer) : Integer ;
Begin
 sq_GetSR.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sq_GetSR.Open ;
 Try
 if not sq_GetSR.Eof then
  Result:= sq_GetSRSalesRegionNo.AsInteger
   else
    Result:= -1 ;
 Finally
  sq_GetSR.Close ;
 End ;
End ;

procedure TdmsContact.cds_SOLegoCostAfterInsert(DataSet: TDataSet);
begin
 cds_SOLegoCostProductionUnitNo.AsInteger := dmsConnector.NextMaxNo('ProductionUnit') ;
 cds_SOLegoCostCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_SOLegoCostModifiedUser.AsInteger     := ThisUser.UserID ;
 cds_SOLegoCostDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Date) ;
 cds_SOLegoCostClientNo.AsInteger         := -1 ;
end;

procedure TdmsContact.cds_LegoPrisAfterInsert(DataSet: TDataSet);
begin
 cds_LegoPrisNoOfSplit.AsInteger          := 1 ;
 cds_LegoPrisCreatedUser.AsInteger        := ThisUser.UserID ;
 cds_LegoPrisModifiedUser.AsInteger       := ThisUser.UserID ;
 cds_LegoPrisDateCreated.AsSQLTimeStamp   := DateTimeToSqlTimeStamp(Date) ;
 cds_LegoPrisDateModified.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Date) ;
 cds_LegoPrisPriceUnitNo.AsInteger        := 3 ;
end;

procedure TdmsContact.cds_LegoPrisBeforePost(DataSet: TDataSet);
begin
 cds_LegoPrisModifiedUser.AsInteger       := ThisUser.UserID ;
 cds_LegoPrisDateModified.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Date) ;
end;

Function TdmsContact.ClientInterVerk(const CompanyNo : Integer) : Boolean ;
Begin
 Try
 sq_IsIntVerk.ParamByName('ClientNo').AsInteger := CompanyNo ;
 sq_IsIntVerk.Open ;
 if not sq_IsIntVerk.Eof then
 Begin
  if sq_IsIntVerkIntVerk.AsInteger = 1 then
   Result := True
    else
     Result := False ;
 End
 else
 Result := False ;
 Finally
  sq_IsIntVerk.Close ;
 End ;
End ;


end.
