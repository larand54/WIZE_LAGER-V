unit dmBooking;

interface

uses
  SysUtils, Classes, DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, SQLTimst ;

type
  Tdm_Booking = class(TDataModule)
    dsShippers: TDataSource;
    dsBooking: TDataSource;
    dsVoyageDestination: TDataSource;
    dsVoyage: TDataSource;
    dsCurrency: TDataSource;
    dsVolUnit: TDataSource;
    dsBookingType: TDataSource;
    dsAvropInfo: TDataSource;
    dsBookingProducts: TDataSource;
    dsCarrier: TDataSource;
    cdsCarrier: TFDQuery;
    cdsCarrierCarrierNo: TIntegerField;
    cdsCarrierCarrierName: TStringField;
    cdsCarrierSequenceNo: TIntegerField;
    cdsCarrierCreatedUser: TSmallintField;
    cdsCarrierModifiedUser: TSmallintField;
    cdsCarrierDateCreated: TSQLTimeStampField;
    cdsBookingProducts: TFDQuery;
    cdsBookingProductsREFERENCE: TStringField;
    cdsBookingProductsDEL_ADDRESS: TStringField;
    cdsBookingProductsSUPPLIER: TStringField;
    cdsBookingProductsLOADING_LOCATION: TStringField;
    cdsBookingProductsPRODUCT_DESCRIPTION: TStringField;
    cdsBookingProductsLENGTH_DESCRIPTION: TStringField;
    cdsBookingProductsNOOFUNITS: TFloatField;
    cdsBookingProductsVOLUNIT: TStringField;
    cdsBookingProductsACTM3: TFloatField;
    cdsBookingProductsADDRESS_NO: TIntegerField;
    cdsBookingProductsCITY_NO: TIntegerField;
    cdsBookingProductsCITY_NAME: TStringField;
    cdsBookingProductsPOSTALCODE: TStringField;
    cdsAvropInfo: TFDQuery;
    cdsAvropInfoShippingPlanNo: TIntegerField;
    cdsAvropInfoOrderNoText: TStringField;
    cdsAvropInfoReference: TStringField;
    cdsAvropInfoETDYearWeek: TIntegerField;
    cdsAvropInfoETDWeekEnd: TIntegerField;
    cdsAvropInfoAgent: TStringField;
    cdsAvropInfoCustomer: TStringField;
    cdsAvropInfoLOText: TMemoField;
    cdsAvropInfoNoteForLoadSheet: TMemoField;
    cdsAvropInfoInvoiceText: TMemoField;
    cdsAvropInfoOrderType: TIntegerField;
    cdsBookingType: TFDQuery;
    cdsBookingTypeBookingTypeNo: TIntegerField;
    cdsBookingTypeBookingType: TStringField;
    cdsBookingTypeCreatedUser: TSmallintField;
    cdsBookingTypeModifiedUser: TSmallintField;
    cdsBookingTypeDateCreated: TSQLTimeStampField;
    cdsBookingTypeSequenceNo: TIntegerField;
    cdsVolUnit: TFDQuery;
    cdsVolUnitTemplateUnitNo: TIntegerField;
    cdsVolUnitTemplateUnitName: TStringField;
    cdsVolUnitDateCreated: TSQLTimeStampField;
    cdsVolUnitCreatedUser: TSmallintField;
    cdsVolUnitModifiedUser: TSmallintField;
    cdsVolUnitSequenceNo: TIntegerField;
    cdsCurrency: TFDQuery;
    cdsCurrencyCurrencyNo: TIntegerField;
    cdsCurrencyCurrencyName: TStringField;
    cdsCurrencyDateCreated: TSQLTimeStampField;
    cdsCurrencyCreatedUser: TSmallintField;
    cdsCurrencyModifiedUser: TSmallintField;
    cdsCurrencySequenceNo: TIntegerField;
    cdsVoyage: TFDQuery;
    cdsVoyageVoyageNo: TIntegerField;
    cdsVoyageCarrierNo: TIntegerField;
    cdsVoyageETD: TSQLTimeStampField;
    cdsVoyageLoadingPortNo: TIntegerField;
    cdsVoyageSequenceNo: TIntegerField;
    cdsVoyageCreatedUser: TSmallintField;
    cdsVoyageModifiedUser: TSmallintField;
    cdsVoyageDateCreated: TSQLTimeStampField;
    cdsVoyageETA: TSQLTimeStampField;
    cdsVoyageDestination: TFDQuery;
    cdsVoyageDestinationBookingNo: TIntegerField;
    cdsVoyageDestinationDestinationNo: TIntegerField;
    cdsVoyageDestinationETA: TSQLTimeStampField;
    cdsVoyageDestinationStatus: TIntegerField;
    cdsVoyageDestinationClearedDate: TSQLTimeStampField;
    cdsVoyageDestinationCreatedUser: TSmallintField;
    cdsVoyageDestinationModifiedUser: TSmallintField;
    cdsVoyageDestinationDateCreated: TSQLTimeStampField;
    cdsBooking: TFDQuery;
    cdsBookingBookingNo: TIntegerField;
    cdsBookingShippingPlanNo: TIntegerField;
    cdsBookingVoyageNo: TIntegerField;
    cdsBookingShippingCompanyNo: TIntegerField;
    cdsBookingDestinationNo: TIntegerField;
    cdsBookingShippingCompanyBookingID: TStringField;
    cdsBookingBookingTypeNo: TIntegerField;
    cdsBookingVolumeBooked: TFloatField;
    cdsBookingVolumeUnitNo: TIntegerField;
    cdsBookingRequestedShipDate: TSQLTimeStampField;
    cdsBookingRequestedShipTime: TSQLTimeStampField;
    cdsBookingShippersShipDate: TSQLTimeStampField;
    cdsBookingShippersShipTime: TSQLTimeStampField;
    cdsBookingSupplierReference: TStringField;
    cdsBookingFreightCost: TFloatField;
    cdsBookingFreightCostVolUnit: TIntegerField;
    cdsBookingFreightCostCurrency: TIntegerField;
    cdsBookingSequenceNo: TIntegerField;
    cdsBookingCreatedUser: TSmallintField;
    cdsBookingModifiedUser: TSmallintField;
    cdsBookingDateCreated: TSQLTimeStampField;
    cdsBookingStatus: TIntegerField;
    cdsBookingPreliminaryRequestedPeriod: TStringField;
    cdsBookingLOText: TMemoField;
    cdsBookingInvoiceText: TMemoField;
    cdsBookingNoteForLoadSheet: TMemoField;
    cdsBookingVesselOrPort: TStringField;
    cdsBookingPanic_Note: TStringField;
    cdsShippers: TFDStoredProc;
    cdsShippersClientNo: TIntegerField;
    cdsShippersClientName: TStringField;
    SQLQuery1: TFDQuery;
    SQLQuery1BookingNo: TIntegerField;
    SQLQuery1ShippingPlanNo: TIntegerField;
    SQLQuery1VoyageNo: TIntegerField;
    SQLQuery1ShippingCompanyNo: TIntegerField;
    SQLQuery1DestinationNo: TIntegerField;
    SQLQuery1ShippingCompanyBookingID: TStringField;
    SQLQuery1BookingTypeNo: TIntegerField;
    SQLQuery1VolumeBooked: TFloatField;
    SQLQuery1VolumeUnitNo: TIntegerField;
    SQLQuery1RequestedShipDate: TSQLTimeStampField;
    SQLQuery1RequestedShipTime: TSQLTimeStampField;
    SQLQuery1ShippersShipDate: TSQLTimeStampField;
    SQLQuery1ShippersShipTime: TSQLTimeStampField;
    SQLQuery1SupplierReference: TStringField;
    SQLQuery1FreightCost: TFloatField;
    SQLQuery1FreightCostVolUnit: TIntegerField;
    SQLQuery1FreightCostCurrency: TIntegerField;
    SQLQuery1SequenceNo: TIntegerField;
    SQLQuery1CreatedUser: TSmallintField;
    SQLQuery1ModifiedUser: TSmallintField;
    SQLQuery1DateCreated: TSQLTimeStampField;
    SQLQuery1Status: TIntegerField;
    SQLQuery1PreliminaryRequestedPeriod: TStringField;
    SQLQuery1LOText: TMemoField;
    SQLQuery1InvoiceText: TMemoField;
    SQLQuery1NoteForLoadSheet: TMemoField;
    SQLQuery1VesselOrPort: TStringField;
    SQLQuery1Panic_Note: TStringField;
    sp_Carriers: TFDStoredProc;
    sp_Cities: TFDStoredProc;
    procedure cdsCarrierAfterInsert(DataSet: TDataSet);
    procedure cdsVoyageDestinationAfterEdit(DataSet: TDataSet);
    procedure cdsVoyageDestinationAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure dmsLoadCarriers(Strings : TStrings);
    procedure dmsLoadLoadingLocations(Strings : TStrings);
  end;

var
  dm_Booking: Tdm_Booking;

implementation

uses dmsDataConn, VidaUser;

{$R *.dfm}


procedure Tdm_Booking.cdsCarrierAfterInsert(DataSet: TDataSet);
begin
 cdsCarrierCarrierNo.AsInteger:= dmsConnector.NextMaxNo('Carrier') ;
end;

procedure Tdm_Booking.dmsLoadCarriers(Strings : TStrings);
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

procedure Tdm_Booking.dmsLoadLoadingLocations(Strings : TStrings);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
  sp_Cities.Open;
  try
    sp_Cities.First;
    while not sp_Cities.Eof do begin
      Strings.AddObject(
        sp_Cities.FieldByname('CityName').AsString,
        TObject(sp_Cities.FieldByName('CityNo').AsInteger)
        );
      sp_Cities.Next;
      end;
  finally
    sp_Cities.Close;
  end;
end;

procedure Tdm_Booking.cdsVoyageDestinationAfterEdit(DataSet: TDataSet);
begin
 cdsVoyageDestinationModifiedUser.AsInteger     := ThisUser.UserID ;
 cdsVoyageDestinationDestinationNo.AsInteger    := -1 ;
 cdsVoyageDestinationStatus.AsInteger           := 1 ;
 cdsVoyageDestinationClearedDate.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
end;

procedure Tdm_Booking.cdsVoyageDestinationAfterInsert(DataSet: TDataSet);
begin
 cdsVoyageDestinationBookingNo.AsInteger:= cdsBookingBookingNo.AsInteger ;
 cdsVoyageDestinationDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 cdsVoyageDestinationCreatedUser.AsInteger:= ThisUser.UserID ;
 cdsVoyageDestinationModifiedUser.AsInteger:= ThisUser.UserID ;
 cdsVoyageDestinationDestinationNo.AsInteger:= -1 ;
 cdsVoyageDestinationStatus.AsInteger:= 1 ;
 cdsVoyageDestinationClearedDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
end;

end.
