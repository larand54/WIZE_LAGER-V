unit dmcVidaOrder;

interface

uses
  SysUtils,
  Classes,
  DB,
  Forms,
  Controls,
  Vidatype, Variants, SqlTimSt, kbmMemTable, DateUtils,
  uADStanIntf, uADStanOption, uADStanParam, uADStanError, uADDatSManager,
  uADPhysIntf, uADDAptIntf, uADStanAsync, uADDAptManager, uADCompClient,
  uADCompDataSet ;
const
 Const_SupplierShippingPlan = 'SupplierShippingPlan' ;
 Const_Booking                  = 'Booking' ;

type
  TdmcOrder = class(TDataModule)

    dsrcLoadsForLO: TDataSource;
    dsrcBooking: TDataSource;
    ds_Producer: TDataSource;
    ds_RegPoint: TDataSource;
    ds_AOUserRP: TDataSource;
    ds_RegPointUser: TDataSource;
    ds_volunit: TDataSource;
    dsrcSawmillLoadOrders: TDataSource;
    cdsSawmillLoadOrders: TADQuery;
    cdsSawmillLoadOrdersKONTRAKTSBESKRIVNING: TStringField;
    cdsSawmillLoadOrdersShippersShipDate: TSQLTimeStampField;
    cdsSawmillLoadOrdersREADYDATE: TStringField;
    cdsSawmillLoadOrdersINITIALS: TStringField;
    cdsSawmillLoadOrdersShippingPlanStatus: TIntegerField;
    cdsSawmillLoadOrdersLONumber: TIntegerField;
    cdsSawmillLoadOrdersPKGCode: TStringField;
    cdsSawmillLoadOrdersProduct: TStringField;
    cdsSawmillLoadOrdersLength: TStringField;
    cdsSawmillLoadOrdersFromWeek: TIntegerField;
    cdsSawmillLoadOrdersToWeek: TIntegerField;
    cdsSawmillLoadOrdersVolume: TFloatField;
    cdsSawmillLoadOrdersSupplierShipPlanObjectNo: TIntegerField;
    cdsSawmillLoadOrdersShowInGrid: TIntegerField;
    cdsSawmillLoadOrdersOrderNo: TStringField;
    cdsSawmillLoadOrdersUnitName: TStringField;
    cdsSawmillLoadOrdersDestination: TStringField;
    cdsSawmillLoadOrdersClientName: TStringField;
    cdsSawmillLoadOrdersMARKNAD: TStringField;
    cdsSawmillLoadOrdersReference: TStringField;
    cdsSawmillLoadOrdersSupplier: TIntegerField;
    cdsSawmillLoadOrdersCHCustomerNo: TIntegerField;
    cdsSawmillLoadOrdersSPCustomerNO: TIntegerField;
    cdsSawmillLoadOrdersCustomerPrice: TFloatField;
    cdsSawmillLoadOrdersCustomerShowInGrid: TIntegerField;
    cdsSawmillLoadOrdersSUPP_NAME: TStringField;
    cdsSawmillLoadOrdersLOCAL_CUST: TStringField;
    cdsSawmillLoadOrdersObjectType: TIntegerField;
    cdsSawmillLoadOrdersORDERTYPE: TIntegerField;
    cdsSawmillLoadOrdersSHIPTO: TStringField;
    cdsSawmillLoadOrdersLOADING: TStringField;
    cdsSawmillLoadOrdersDelivery_WeekNo: TIntegerField;
    cdsSawmillLoadOrdersCSH_CustomerNo: TIntegerField;
    cdsSawmillLoadOrdersShipToInvPointNo: TIntegerField;
    cdsSawmillLoadOrdersLoadingLocationNo: TIntegerField;
    cdsSawmillLoadOrdersBarCode: TStringField;
    cdsSawmillLoadOrdersREFERENS: TStringField;
    cdsSawmillLoadOrdersSKAPAD: TSQLTimeStampField;
    cdsSawmillLoadOrdersNT: TFloatField;
    cdsSawmillLoadOrdersNB: TFloatField;
    cdsSawmillLoadOrdersAT: TFloatField;
    cdsSawmillLoadOrdersAB: TFloatField;
    cdsSawmillLoadOrdersTT: TStringField;
    cdsSawmillLoadOrdersTB: TStringField;
    cdsSawmillLoadOrdersTS: TStringField;
    cdsSawmillLoadOrdersUT: TStringField;
    cdsSawmillLoadOrdersKV: TStringField;
    cdsSawmillLoadOrdersPK: TStringField;
    cdsSawmillLoadOrdersINTLÄNGD: TStringField;
    cdsSawmillLoadOrdersRADREFERENS: TStringField;
    cdsSawmillLoadOrdersPkgCodePPNo: TIntegerField;
    cdsSawmillLoadOrdersVolumeUnitNo: TIntegerField;
    cdsBooking: TADQuery;
    cdsBookingCarrierName: TStringField;
    cdsBookingETD: TSQLTimeStampField;
    cdsBookingBookingNo: TIntegerField;
    cdsBookingShippersShipDate: TSQLTimeStampField;
    cdsBookingShippersShipTime: TSQLTimeStampField;
    cdsBookingShippingCompanyBookingID: TStringField;
    cdsBookingSupplierReference: TStringField;
    cdsBookingPreliminaryRequestedPeriod: TStringField;
    cdsBookingClientName: TStringField;
    cdsBookingshippingplanno: TIntegerField;
    cdsBookingPanic_Note: TStringField;
    sq_Product: TADQuery;
    sq_ProductAT: TFloatField;
    sq_ProductAB: TFloatField;
    sq_ProductPkgCodePPNo: TIntegerField;
    sq_ProductPackageTypeNo: TIntegerField;
    sq_ProductProductNo: TIntegerField;
    sq_ProductProductDisplayName: TStringField;
    sq_ProductProdSort: TStringField;
    sq_ProductLANGD: TStringField;
    sq_ProductoThickness: TStringField;
    sq_ProductoWidth: TStringField;
    sq_ProductGradeName: TStringField;
    sq_ProductSpeciesName: TStringField;
    sq_ProductSurfacingName: TStringField;
    sq_ProductBarCodeID: TStringField;
    sq_ProductGradeStamp: TStringField;
    sq_ProductExternkod: TStringField;
    sq_ProductSöknamn: TStringField;
    sq_ProductPcsPerPkg: TIntegerField;
    cds_ProducerUser: TADQuery;
    cds_ProducerUserClientNo: TIntegerField;
    cds_ProducerUserClientName: TStringField;
    cds_ProducerUserSearchName: TStringField;
    cds_RegPointUser: TADQuery;
    cds_RegPointUserClientNo: TIntegerField;
    cds_RegPointUserRegPointNo: TIntegerField;
    cds_RegPointUserRegPointName: TStringField;
    cds_AOUserRP: TADQuery;
    cds_AOUserRPUserID: TIntegerField;
    cds_AOUserRPProducerNo: TIntegerField;
    cds_AOUserRPRegPointNo: TIntegerField;
    cds_AOUserRPDateCreated: TSQLTimeStampField;
    cds_AOUserRPDateModified: TSQLTimeStampField;
    cds_AOUserRPModifiedUser: TIntegerField;
    cds_AOUserRPStandardRegPoint: TIntegerField;
    cds_AOUserRPVolUnitNo: TIntegerField;
    cds_AOUserRPStringField: TStringField;
    cds_AOUserRPStringField2: TStringField;
    cds_AOUserRPStringField3: TStringField;
    cds_RegPoint: TADQuery;
    cds_RegPointClientNo: TIntegerField;
    cds_RegPointRegPointNo: TIntegerField;
    cds_RegPointRegPointName: TStringField;
    cds_Producer: TADQuery;
    cds_ProducerUserID: TIntegerField;
    cds_ProducerClientNo: TIntegerField;
    cds_ProducerClientName: TStringField;
    cds_ProducerSearchName: TStringField;
    cds_User: TADQuery;
    cds_UserUserID: TIntegerField;
    cds_UserUserName: TStringField;
    cds_volunit: TADQuery;
    cds_volunitVolumeUnit_No: TIntegerField;
    cds_volunitVolumeUnitName: TStringField;
    cds_volunitDateCreated: TSQLTimeStampField;
    cds_volunitCreatedUser: TSmallintField;
    cds_volunitModifiedUser: TSmallintField;
    cds_volunitSequenceNo: TIntegerField;
    cdsLoadsForLO: TADStoredProc;
    cdsLoadsForLOFS: TStringField;
    cdsLoadsForLOShippingPlanNo: TIntegerField;
    cdsLoadsForLOLoadNo: TIntegerField;
    cdsLoadsForLOLoadID: TStringField;
    cdsLoadsForLOLoadedDate: TSQLTimeStampField;
    cdsLoadsForLOSenderLoadStatus: TIntegerField;
    cdsLoadsForLOPcs: TIntegerField;
    cdsLoadsForLOActualM3: TFloatField;
    cdsLoadsForLONominalM3: TFloatField;
    cdsLoadsForLOLinealMeter: TFloatField;
    cdsLoadsForLOMFBM: TFloatField;
    cdsLoadsForLOVERK: TStringField;
    cdsLoadsForLOANTPKT: TIntegerField;
    sq_SearchALOByMainLO: TADQuery;
    sq_SearchALOByMainLOShippingPlanNo: TIntegerField;
    sq_FindLONo: TADQuery;
    sq_FindLONoLONo: TIntegerField;
    sq_SetLOStatus: TADQuery;
    SQLQuery1: TADQuery;
    SQLQuery1READYDATE: TStringField;
    SQLQuery1INITIALS: TStringField;
    SQLQuery1ShippingPlanStatus: TIntegerField;
    SQLQuery1LONumber: TIntegerField;
    SQLQuery1PKGCode: TStringField;
    SQLQuery1Product: TStringField;
    SQLQuery1Length: TStringField;
    SQLQuery1FromWeek: TIntegerField;
    SQLQuery1ToWeek: TIntegerField;
    SQLQuery1Volume: TFloatField;
    SQLQuery1SupplierShipPlanObjectNo: TIntegerField;
    SQLQuery1ShowInGrid: TIntegerField;
    SQLQuery1OrderNo: TStringField;
    SQLQuery1UnitName: TStringField;
    SQLQuery1Destination: TStringField;
    SQLQuery1ClientName: TStringField;
    SQLQuery1Reference: TStringField;
    SQLQuery1Supplier: TIntegerField;
    SQLQuery1CHCustomerNo: TIntegerField;
    SQLQuery1SPCustomerNO: TIntegerField;
    SQLQuery1CustomerPrice: TFloatField;
    SQLQuery1CustomerShowInGrid: TIntegerField;
    SQLQuery1SUPP_NAME: TStringField;
    SQLQuery1LOCAL_CUST: TStringField;
    SQLQuery1ObjectType: TIntegerField;
    SQLQuery1ORDERTYPE: TIntegerField;
    SQLQuery1SHIPTO: TStringField;
    SQLQuery1LOADING: TStringField;
    SQLQuery1Delivery_WeekNo: TIntegerField;
    SQLQuery1CSH_CustomerNo: TIntegerField;
    SQLQuery1ShipToInvPointNo: TIntegerField;
    SQLQuery1LoadingLocationNo: TIntegerField;
    procedure provSawMillLoadOrdersGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);


  private

    FLastLOChecked : Integer;
    FLoadOrdersAfterScroll : TDataSetNotifyEvent;
//    procedure ShowLoadsForLO2(LONo: Integer;OrderType: Integer;CustomerNo:Integer;SupplierNo: Integer);
    procedure ShowLoadsForLO_II(const LONo: Integer);
  public
    SupplierNo : Integer ;
    Shipping : Integer ; //Deliver or Receiving selected by user in fLoadForm

    procedure RefrehLOs(const Value: integer);
    procedure ShowLoadsForLO    (const LONo : Integer);
    procedure IsolateLoads;   // disconnect LO afterscroll
    procedure ReConnectLoads; // reinstate LO afterscroll
    Procedure SetLOStatus (const sspNo, Status : Integer) ;
    Function  GetLONoForLoadNo (const LoadNo : Integer) : Integer ;
    function  Does_SearchedLONo_Have_ALO_Connected (const SupplierNo, LO_NO : Integer) : Integer ;

  end;

var
  dmcOrder: TdmcOrder;

implementation

{$R *.dfm}

uses
  Dialogs,
  dmsVidaContact,
  VidaConst, VidaUser , dmsDataConn, dmsVidaSystem ;

procedure TdmcOrder.ShowLoadsForLO(const LONo: Integer);
Var  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  cdsLoadsForLO.Close;
  ShowLoadsForLO_II(cdsSawmillLoadOrdersLONumber.AsInteger) ;
  cdsLoadsForLO.Open;
  FLastLOChecked := LONo;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TdmcOrder.ShowLoadsForLO_II(const LONo: Integer);
begin
//  sp_LoadsForLO_II.Close;
  cdsLoadsForLO.ParamByName('@LONo').AsInteger        := LONo;
  cdsLoadsForLO.ParamByName('@SupplierNo').AsInteger  := SupplierNo ;
  cdsLoadsForLO.ParamByName('@Shipping').AsInteger    := Shipping ;
//  sp_LoadsForLO_II.Open;
end;

procedure TdmcOrder.IsolateLoads;
begin
  FLoadOrdersAfterScroll := cdsSawmillLoadOrders.AfterScroll;
  cdsSawmillLoadOrders.AfterScroll := nil;
end;

procedure TdmcOrder.ReConnectLoads;
begin
 cdsSawmillLoadOrders.AfterScroll := FLoadOrdersAfterScroll;
end;

procedure TdmcOrder.provSawMillLoadOrdersGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName := 'SupplierShippingPlan' ;
end;

procedure TdmcOrder.RefrehLOs(const Value: integer);
// Accessor method for SupplierNo property.
// Set by Load Orders form to ensure supplier shipping plans are retrieved
// for the appropriate supplier.
begin
  cdsSawmillLoadOrders.Active := False ;
  cdsSawmillLoadOrders.Active := True ;
end;

Procedure TdmcOrder.SetLOStatus (const sspNo, Status : Integer) ;
Begin
 sq_SetLOStatus.ParamByName('sspNo').AsInteger:= sspNo ;
 sq_SetLOStatus.ParamByName('Status').AsInteger:= Status ;
 sq_SetLOStatus.ExecSQL ;
End ;

Function TdmcOrder.GetLONoForLoadNo (const LoadNo : Integer) : Integer ;
Begin
 sq_FindLONo.ParamByName('LoadNo').AsInteger:= LoadNo ;
 Try
  sq_FindLONo.Open ;
  Result:= sq_FindLONoLONo.AsInteger ;
 Finally
  sq_FindLONo.Close ;
 End ;
End ;

function TdmcOrder.Does_SearchedLONo_Have_ALO_Connected (const SupplierNo, LO_NO : Integer) : Integer ;
Begin
  sq_SearchALOByMainLO.ParamByName('SupplierNo').AsInteger:= SupplierNo ;
  sq_SearchALOByMainLO.ParamByName('LO_NO').AsInteger:= LO_NO ;
  sq_SearchALOByMainLO.Open ;
  Result:= sq_SearchALOByMainLOShippingPlanNo.AsInteger ;
  sq_SearchALOByMainLO.Close ;
End ;

end.
