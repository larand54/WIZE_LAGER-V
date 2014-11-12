unit dmcVidaPayment;

interface

uses
  SysUtils, Classes, DB, uADStanIntf,
  uADStanOption, uADStanParam, uADStanError, uADDatSManager, uADPhysIntf,
  uADDAptIntf, uADStanAsync, uADDAptManager, uADCompDataSet, uADCompClient ;


type
  TdmcPayment = class(TDataModule)
    dsrcArrivingLoads: TDataSource;
    dsrcArrivingPackages: TDataSource;
    dsPaymentHead: TDataSource;
    dsPaymentLoadList: TDataSource;
    dsPayHead: TDataSource;
    cds_LoadDetailPkgLength: TADQuery;
    sq_FindAvr: TADQuery;
    sq_FindAvrAVRAKNING_NO: TIntegerField;
    sq_FindAvrVerk: TStringField;
    sq_FindAvrVerkNo: TIntegerField;
    cds_LoadHead: TADQuery;
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
    cds_LoadHeadShippingPlanNo: TIntegerField;
    cds_LoadHeadPIPNo: TIntegerField;
    cds_LoadHeadLIPNo: TIntegerField;
    cds_LoadRemAvr: TADQuery;
    cds_LoadRemAvrLoadNo: TIntegerField;
    cds_LoadRemAvrDateCreated: TSQLTimeStampField;
    cds_LoadRemAvrCreatedUser: TSmallintField;
    sq_LO_Type: TADQuery;
    sq_LO_TypeObjectType: TIntegerField;
    sq_LO_TypeOrderType: TIntegerField;
    sq_LoadPackages: TADQuery;
    sq_LoadPackagesLogicalInventoryPointNo: TIntegerField;
    sq_LoadPackagesPackageNo: TIntegerField;
    sq_LoadPackagesSupplierCode: TStringField;
    sq_ChangeLOnrInPaymentLoad: TADQuery;
    sq_DelConPkgLog: TADQuery;
    sq_GetNewLIPno: TADQuery;
    sq_GetNewLIPnoNew_LogicalInventoryPointNo: TIntegerField;
    cds_IntOrderHead: TADQuery;
    cds_IntOrderHeadOrderNo: TIntegerField;
    cds_IntOrderHeadShippingPlanNo: TIntegerField;
    cds_IntOrderHeadCustomerNo: TIntegerField;
    cds_IntOrderHeadDestinationNo: TIntegerField;
    cds_IntOrderHeadDefaultShipToInvPointNo: TIntegerField;
    cds_IntOrderHeadStatus: TIntegerField;
    cds_IntOrderHeadOrderNoText: TStringField;
    cds_IntOrderHeadDefaultDeliveryTermsNo: TIntegerField;
    cds_IntOrderHeadDefaultPaymentTermsNo: TIntegerField;
    cds_IntOrderHeadDefaultCurrencyNo: TIntegerField;
    cds_IntOrderHeadOrderNote: TMemoField;
    cds_IntOrderHeadOrderType: TIntegerField;
    cds_IntOrderHeadProductDisplayFormat: TIntegerField;
    cds_IntOrderHeadDefaultVolumeUnitNo: TIntegerField;
    cds_IntOrderHeadVoyageNo: TIntegerField;
    cds_IntOrderHeadDefaultPriceUnitNo: TIntegerField;
    cds_IntOrderHeadDef_StartETDYearWeek: TIntegerField;
    cds_IntOrderHeadDef_StartETAYearWeek: TIntegerField;
    cds_IntOrderHeadSalesRegionNo: TIntegerField;
    cds_IntOrderHeadLengthFormat: TIntegerField;
    cds_IntOrderHeadLanguageCode: TIntegerField;
    cds_IntOrderHeadSequenceNo: TIntegerField;
    cds_IntOrderHeadCreatedUser: TIntegerField;
    cds_IntOrderHeadModifiedUser: TIntegerField;
    cds_IntOrderHeadDateCreated: TSQLTimeStampField;
    cds_IntOrderHeadLO_No: TIntegerField;
    cds_IntOrderHeadDefaultLIPNo: TIntegerField;
    cds_IntOrderHeadMarketRegionNo: TIntegerField;
    cds_IntOrderHeadPriceListNo: TIntegerField;
    cds_IntOrderHeadVatExempt: TIntegerField;
    cds_IntOrderHeadInternKundFrakt: TFloatField;
    cds_IntOrderHeadSupplierNo: TIntegerField;
    cds_IntOrderHeadDef_LoadingLocationNo: TIntegerField;
    cds_IntOrderHeadAutoPkgCode: TIntegerField;
    cds_IntOrderHeadMiniText: TStringField;
    cds_IntOrderHeadMiniTextFS: TIntegerField;
    cds_IntOrderHeadMiniTextLO: TIntegerField;
    cds_IntOrderHeadPeriod: TIntegerField;
    cds_IntOrderHeadObjecttype: TIntegerField;
    cds_IntOrderHeadOrderNoExt: TIntegerField;
    cds_IntOrderHeadCustomerNoExt: TIntegerField;
    sq_NoOfLoads_LO: TADQuery;
    sq_NoOfLoads_LONoOfLoads: TIntegerField;
    cds_LoadDetailPkgLengthSupplierShipPlanObjectNo: TIntegerField;
    cds_LoadDetailMatch: TADQuery;
    cds_LoadDetailMatchLoadNo: TIntegerField;
    cds_LoadDetailMatchLoadDetailNo: TIntegerField;
    cds_LoadDetailMatchSupplierShipPlanObjectNo: TIntegerField;
    cds_LoadDetailMatchPackageNo: TIntegerField;
    cds_LoadDetailMatchSupplierCode: TStringField;
    cds_LoadDetailMatchCustShipPlanDetailObjectNo: TIntegerField;
    cds_LoadDetail: TADQuery;
    cds_LoadDetailLoadDetailNo: TIntegerField;
    cds_LoadDetailLoadNo: TIntegerField;
    cds_LoadDetailShippingPlanNo: TIntegerField;
    cds_LoadDetailPackageNo: TIntegerField;
    cds_LoadDetailNoOfPackages: TIntegerField;
    cds_LoadDetailPackageTypeNo: TIntegerField;
    cds_LoadDetailSupplierCode: TStringField;
    cds_LoadDetailPackageOK: TIntegerField;
    cds_LoadDetailProblemPackageLog: TStringField;
    cds_LoadDetailCreatedUser: TIntegerField;
    cds_LoadDetailModifiedUser: TIntegerField;
    cds_LoadDetailDateCreated: TSQLTimeStampField;
    cds_LoadDetailDefaultCustShipObjectNo: TIntegerField;
    cds_LoadDetailOverrideMatch: TIntegerField;
    cds_LoadDetailLIPNo: TIntegerField;
    cds_LoadDetailDefsspno: TIntegerField;
    cds_LoadDetailOverrideRL: TIntegerField;
    cds_LoadDetailOldPackageTypeNo: TIntegerField;
    cds_LoadDetailCustomPcs: TIntegerField;
    cds_LS: TADQuery;
    cds_LSLoadNo: TIntegerField;
    cds_LSShippingPlanNo: TIntegerField;
    cds_LSConfirmedByReciever: TIntegerField;
    cds_LSConfirmedBySupplier: TIntegerField;
    cds_LSCreatedUser: TIntegerField;
    cds_LSModifiedUser: TIntegerField;
    cds_LSDateCreated: TSQLTimeStampField;
    cds_LSInvoiced: TIntegerField;
    cds_LSLoadingLocationNo: TIntegerField;
    cds_LSShipToInvPointNo: TIntegerField;
    cdsPaymentLoadList: TADQuery;
    cdsPaymentLoadListAVRAKNING_NO: TIntegerField;
    cdsPaymentLoadListINITIALS: TStringField;
    cdsPaymentLoadListVIS_FS: TIntegerField;
    cdsPaymentLoadListMILL_FS: TStringField;
    cdsPaymentLoadListLOAD_DATE: TSQLTimeStampField;
    cdsPaymentLoadListCUSTOMER: TStringField;
    cdsPaymentLoadListAKT_THICK: TFloatField;
    cdsPaymentLoadListAKT_WIDTH: TFloatField;
    cdsPaymentLoadListACT_M3: TFloatField;
    cdsPaymentLoadListNOM_LPM: TFloatField;
    cdsPaymentLoadListNOM_THICK: TFloatField;
    cdsPaymentLoadListNOM_WIDTH: TFloatField;
    cdsPaymentLoadListNOM_M3: TFloatField;
    cdsPaymentLoadListPRICE: TFloatField;
    cdsPaymentLoadListVALUE: TFloatField;
    cdsPaymentLoadListMOMS_VALUE: TFloatField;
    cdsPaymentLoadListSUPPCODE: TStringField;
    cdsPaymentLoadListCUSTOMER_1: TStringField;
    cdsPaymentLoadListCUSTOMERNO: TIntegerField;
    cdsPaymentLoadListCountryNo: TIntegerField;
    cdsPaymentLoadListGRADENAME: TStringField;
    cdsPaymentLoadListMILL_INVOICE_NO: TStringField;
    cdsPaymentHead: TADQuery;
    cdsPaymentHeadPaymentNo: TIntegerField;
    cdsPaymentHeadSenderStatus: TSmallintField;
    cdsPaymentHeadReceiverStatus: TSmallintField;
    cdsPaymentHeadCreatedUser: TSmallintField;
    cdsPaymentHeadModifiedUser: TSmallintField;
    cdsPaymentHeadDateCreated: TSQLTimeStampField;
    cdsPaymentHeadTypeOf: TSmallintField;
    cdsPaymentHeadSupplierNo: TIntegerField;
    cdsPaymentHeadCustomerNo: TIntegerField;
    cdsPaymentHeadMILL_InvoiceNo: TStringField;
    cdsPaymentHeadCustName: TStringField;
    cdsConfirmed_Load: TADQuery;
    cdsConfirmed_LoadConfirmed_LoadNo: TIntegerField;
    cdsConfirmed_LoadConfirmed_ShippingPlanNo: TIntegerField;
    cdsConfirmed_LoadNewLoadNo: TIntegerField;
    cdsConfirmed_LoadNewShippingPlanNo: TIntegerField;
    cdsConfirmed_LoadDateCreated: TSQLTimeStampField;
    cdsConfirmed_LoadCreatedUser: TIntegerField;
    cdsConfirmed_LoadModifiedUser: TIntegerField;
    cds_ConfLoad: TADQuery;
    cdsPayHead: TADQuery;
    cdsPayHeadPaymentNo: TIntegerField;
    cdsPayHeadSenderStatus: TSmallintField;
    cdsPayHeadReceiverStatus: TSmallintField;
    cdsPayHeadCreatedUser: TSmallintField;
    cdsPayHeadModifiedUser: TSmallintField;
    cdsPayHeadDateCreated: TSQLTimeStampField;
    cdsPayHeadTypeOf: TSmallintField;
    cdsPayHeadSupplierNo: TIntegerField;
    cdsPayHeadCustomerNo: TIntegerField;
    cdsPayHeadMILL_InvoiceNo: TStringField;
    cdsPaymentLoads: TADQuery;
    cdsPaymentLoadsPaymentNo: TIntegerField;
    cdsPaymentLoadsLoadNo: TIntegerField;
    cdsPaymentLoadsTypeOf: TSmallintField;
    cdsPaymentLoadsShippingPlanNo: TIntegerField;
    cdsPaymentLoadsCreatedUser: TSmallintField;
    cdsPaymentLoadsModifiedUser: TSmallintField;
    cdsPaymentLoadsDateCreated: TSQLTimeStampField;
    cdsPaymentLoadsPrice: TFloatField;
    cdsPaymentLoadsTotalm3Nominal: TFloatField;
    cdsPaymentLoadsTotalm3Actual: TFloatField;
    cdsPaymentLoadsTotalLinealMeterNominalLength: TFloatField;
    cdsPaymentLoadsACT_Thick: TFloatField;
    cdsPaymentLoadsACT_Width: TFloatField;
    cdsPaymentLoadsNOM_Thick: TFloatField;
    cdsPaymentLoadsNOM_Width: TFloatField;
    cdsPaymentLoadsGradeName: TStringField;
    cdsArrivingPackages: TADQuery;
    cdsArrivingPackagesLO: TIntegerField;
    cdsArrivingPackagesPACKAGE_NO: TIntegerField;
    cdsArrivingPackagesSUPPLIERCODE: TStringField;
    cdsArrivingPackagesM3_NET: TFloatField;
    cdsArrivingPackagesPRODUCT_DESCRIPTION: TStringField;
    cdsArrivingPackagesPCS: TIntegerField;
    cdsArrivingPackagesPACKAGEOK: TSmallintField;
    cdsArrivingPackagesPACKAGE_LOG: TStringField;
    cdsArrivingPackagesLOADNO: TIntegerField;
    cdsArrivingPackagesM3_NOM: TFloatField;
    cdsArrivingPackagesLOAD_DETAILNO: TIntegerField;
    cdsArrivingPackagesVALUE: TFloatField;
    cdsArrivingPackagesPRICE: TFloatField;
    cdsArrivingPackagesNOM_LINEAL_METER: TFloatField;
    cdsArrivingPackagesEND_CUSTOMER: TStringField;
    cdsArrivingLoads: TADQuery;
    cdsArrivingLoadsINVPOINTNO: TIntegerField;
    cdsArrivingLoadsINVPOINTNAME: TStringField;
    cdsArrivingLoadsINITIALS: TStringField;
    cdsArrivingLoadsVIS_FS: TIntegerField;
    cdsArrivingLoadsMILL_FS: TStringField;
    cdsArrivingLoadsLOAD_DATE: TSQLTimeStampField;
    cdsArrivingLoadsSUPPCODE: TStringField;
    cdsArrivingLoadsINT_CUSTOMER: TStringField;
    cdsArrivingLoadsCUSTOMERNO: TIntegerField;
    cdsArrivingLoadsSUPPLIER_NO: TIntegerField;
    cdsArrivingLoadsSKATTE_UPPLAG: TIntegerField;
    sq_SummaryLoadDetails: TADQuery;
    sq_SummaryLoadDetailsAKT_THICK: TFloatField;
    sq_SummaryLoadDetailsAKT_WIDTH: TFloatField;
    sq_SummaryLoadDetailsACT_M3: TFloatField;
    sq_SummaryLoadDetailsNOM_LPM: TFloatField;
    sq_SummaryLoadDetailsNOM_THICK: TFloatField;
    sq_SummaryLoadDetailsNOM_WIDTH: TFloatField;
    sq_SummaryLoadDetailsNOM_M3: TFloatField;
    sq_SummaryLoadDetailsLOADNO: TIntegerField;
    sq_SummaryLoadDetailsPRICE: TFloatField;
    sq_SummaryLoadDetailsLO: TIntegerField;
    sq_SummaryLoadDetailsGRADENAME: TStringField;
    sq_SSP_Exist: TADQuery;
    sq_SSP_ExistSupplierShipPlanObjectNo: TIntegerField;
    sq_INS_PaymentLoad_ST: TADQuery;
    procedure dsrcArrivingLoadsDataChange(Sender: TObject; Field: TField);
    procedure dsPaymentHeadDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    Lista : Integer ;
    AngraAvrakning : Boolean ;
    procedure ChangeLOno_In_PaymentLoad(const fLoadNo, Old_LO_No, New_LO_No : Integer) ;
    Function  GetFraktAvrakningsNoForLoadNo (const LoadNo : Integer;Var verk : String;Var VerkNo : Integer) : Integer ;
  end;

var
  dmcPayment: TdmcPayment;

implementation

Uses dmsDataConn, dmsVidaContact;

{$R *.dfm}

procedure TdmcPayment.dsrcArrivingLoadsDataChange(Sender: TObject;
  Field: TField);
begin
 cdsArrivingPackages.Active:= False ;
 cdsArrivingPackages.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsVIS_FS.AsInteger ;
 cdsArrivingPackages.ParamByName('Lista').AsInteger:= Lista ;
 cdsArrivingPackages.Active:= True ;
end;


procedure TdmcPayment.dsPaymentHeadDataChange(Sender: TObject;
  Field: TField);
begin
 cdsPaymentLoadList.Active:= False ;
 cdsPaymentLoadList.ParamByName('PaymentNo').AsInteger:= cdsPaymentHeadPaymentNo.AsInteger ;
 cdsPaymentLoadList.Active:= True ;
end;


procedure TdmcPayment.ChangeLOno_In_PaymentLoad(const fLoadNo, Old_LO_No, New_LO_No : Integer) ;
Begin
 sq_ChangeLOnrInPaymentLoad.ParamByName('LoadNo').AsInteger := fLoadNo ;
 sq_ChangeLOnrInPaymentLoad.ParamByName('OldLo').AsInteger  := Old_LO_No ;
 sq_ChangeLOnrInPaymentLoad.ParamByName('NewLo').AsInteger  := New_LO_No ;
 sq_ChangeLOnrInPaymentLoad.ExecSQL ;
End ;

Function TdmcPayment.GetFraktAvrakningsNoForLoadNo (const LoadNo : Integer;Var verk : String;Var VerkNo : Integer) : Integer ;
Begin
 sq_FindAvr.ParamByName('LoadNo').AsInteger:= LoadNo ;
 Try
  sq_FindAvr.Open ;
  Result    := sq_FindAvrAVRAKNING_NO.AsInteger ;
  Verk      := sq_FindAvrVERK.AsString ;
  VerkNo    := sq_FindAvrVerkNo.asInteger ;
 Finally
  sq_FindAvr.Close ;
 End ;
End ;





end.

