unit UnitBookingForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxCntner, dxEdLib,
  db, StdCtrls, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, dxBar, dxBarExtItems,
  Buttons, ImgList, SqlTimSt, dxExGrEd, dxExELib ;

type
  TFormBookingForm = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarClose: TdxBarLargeButton;
    dxBarSave: TdxBarLargeButton;
    Panel1: TPanel;
    Panel2: TPanel;
    grdBooking: TdxDBGrid;
    Label1: TLabel;
    dbeditBookingNo: TdxDBEdit;
    Label2: TLabel;
    dbeditOrder: TdxDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    dbeditCustReference: TdxDBEdit;
    dbeditPeriod: TdxDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    dbeditCustomer: TdxDBEdit;
    dbeditAgent: TdxDBEdit;
    Label14: TLabel;
    Label9: TLabel;
    dbeditReadyDay: TdxDBEdit;
    Label3: TLabel;
    dblookcombShipper: TdxDBLookupEdit;
    Label16: TLabel;
    dblookcombFreightCurrency: TdxDBLookupEdit;
    dbeditFreightCost: TdxDBEdit;
    dblookcombFreightUnitName: TdxDBLookupEdit;
    Label7: TLabel;
    dbcombBookingType: TdxDBLookupEdit;
    Label4: TLabel;
    dbeditLoNo: TdxDBEdit;
    dbmemoLOText: TdxDBMemo;
    Label17: TLabel;
    Label18: TLabel;
    dbmemoInvoiceText: TdxDBMemo;
    dbmemoNote: TdxDBMemo;
    Label19: TLabel;
    dxBarPrint: TdxBarLargeButton;
    dbePeriodEnd: TdxDBEdit;
    PanelConfirm: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    dxDBEditShipCompBookID: TdxDBEdit;
    Label8: TLabel;
    grdBookingREFERENCE: TdxDBGridMaskColumn;
    grdBookingDEL_ADDRESS: TdxDBGridMaskColumn;
    grdBookingSUPPLIER: TdxDBGridMaskColumn;
    grdBookingLOADING_LOCATION: TdxDBGridMaskColumn;
    grdBookingPRODUCT_DESCRIPTION: TdxDBGridMaskColumn;
    grdBookingLENGTH_DESCRIPTION: TdxDBGridMaskColumn;
    grdBookingNOOFUNITS: TdxDBGridMaskColumn;
    grdBookingVOLUNIT: TdxDBGridMaskColumn;
    grdBookingACTM3: TdxDBGridMaskColumn;
    grdBookingADDRESS_NO: TdxDBGridMaskColumn;
    grdBookingCITY_NO: TdxDBGridMaskColumn;
    dxDBDateShipLoadDate: TdxDBDateEdit;
    Label15: TLabel;
    dxDBTimeShipLoadTime: TdxDBTimeEdit;
    Label20: TLabel;
    dxDBTrpID: TdxDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    deETA: TdxDBDateEdit;
    bbNewCarrier: TBitBtn;
    bbAddVessel: TBitBtn;
    dxDBEdit3: TdxDBEdit;
    grdBookingCITY_NAME: TdxDBGridColumn;
    ImageList1: TImageList;
    cmbCarrier: TdxPickEdit;
    deETD: TdxDateEdit;
    cmbLoadingLocation: TdxPickEdit;
    grdBookingPOSTALCODE: TdxDBGridMaskColumn;
    dbePanic_Note: TdxDBEdit;
    Label26: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure dxBarSaveClick(Sender: TObject);
    procedure dxBarCloseClick(Sender: TObject);
    procedure bbNewCarrierClick(Sender: TObject);
    procedure bbAddVesselClick(Sender: TObject);
    procedure dxBarPrintClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cmbCarrierChange(Sender: TObject);
    procedure deETDChange(Sender: TObject);
    procedure cmbLoadingLocationChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    OrderType : Integer ;
    procedure SetCarrierItemIndex ;
    procedure SetLoadingLocationItemIndex ;
  public
    { Public declarations }
    ReadMeOnly : Boolean ;
    procedure CreateCo(const ShippingPlanNo: Integer);
  end;

//var FormBookingForm: TFormBookingForm;

implementation

uses   VidaConst,
  VidaUser,
dmBooking, dmsDataConn, UnitCarrier, UnitCRViewReport;

{$R *.dfm}


procedure TFormBookingForm.CreateCo(const ShippingPlanNo: Integer);

begin
 grdBooking.LoadFromIniFile(dmsConnector.InifilesMap+'VisBooking'+'.'+ThisUser.UserName);
 with dm_Booking do
 Begin
  cdsVoyage.Active:= True ;

  dmsLoadCarriers(cmbCarrier.Items);

  dmsLoadLoadingLocations(cmbLoadingLocation.Items) ;

  cdsAvropInfo.Active:= False ;
  sq_AvropInfo.ParamByName('ShippingPlanNo').AsInteger:= ShippingPlanNo ;
  cdsAvropInfo.Active:= True ;
  OrderType := cdsAvropInfoOrderType.AsInteger ;

  cdsBookingProducts.Active:= False ;
  sq_BookingProducts.ParamByName('ShippingPlanNo').AsInteger:= ShippingPlanNo ;
  cdsBookingProducts.Active:= True ;

  cdsBooking.Active:= False ;
  sq_Booking.ParamByName('ShippingPlanNo').AsInteger:= ShippingPlanNo ;
  cdsBooking.Active:= True ;


  if not cdsBooking.Eof then
  Begin
//Existing booking found
   cdsVoyage.Active:= False ;
   sq_Voyage.ParamByName('VoyageNo').AsInteger:= cdsBookingVoyageNo.AsInteger ;
   cdsVoyage.Active:= True ;

   if cdsVoyage.RecordCount = 0 then
   Begin
    cdsVoyage.Insert ;
    cdsVoyageVoyageNo.AsInteger:= dmsConnector.NextMaxNo('Voyage') ;
    cdsVoyageCarrierNo.AsInteger:= 0 ;
    cdsVoyageCreatedUser.AsInteger:= ThisUser.UserID ;
    cdsVoyageModifiedUser.AsInteger:= ThisUser.UserID ;
    cdsVoyageDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
    cdsVoyage.Post ;

    cdsBooking.Edit ;
    cdsBookingVoyageNo.AsInteger:= cdsVoyageVoyageNo.AsInteger ;
    cdsBooking.Post ;

   End
   else
    Begin
      deETD.Date:= SQLTimeStampToDateTime(cdsVoyageETD.AsSQLTimeStamp) ;
    End ;

   SetCarrierItemIndex ;
   SetLoadingLocationItemIndex ;

  End
  else
  Begin
   cdsVoyage.Insert ;
   cdsVoyageVoyageNo.AsInteger:= dmsConnector.NextMaxNo('Voyage') ;
   cdsVoyageCarrierNo.AsInteger:= 0 ;
   cdsVoyageCreatedUser.AsInteger:= ThisUser.UserID ;
   cdsVoyageModifiedUser.AsInteger:= ThisUser.UserID ;
   cdsVoyageDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
   cdsVoyage.Post ;

   cdsBooking.Insert ;
   cdsBookingBookingNo.AsInteger:= dmsConnector.NextMaxNo('Booking') ;
   cdsBookingShippingPlanNo.AsInteger:= ShippingPlanNo ;
   cdsBookingLOText.AsVariant:= cdsAvropInfoLOText.AsVariant ;
   cdsBookingInvoiceText.AsVariant:= cdsAvropInfoInvoiceText.AsVariant ;
   cdsBookingNoteForLoadSheet.AsVariant:= cdsAvropInfoNoteForLoadSheet.AsVariant ;
   cdsBookingVoyageNo.AsInteger:= cdsVoyageVoyageNo.AsInteger ;
   cdsBooking.Post ;
  End ;
 End ; //with

end;


procedure TFormBookingForm.SetCarrierItemIndex ;
Var x : integer ;
Begin
 with dm_Booking do
 Begin

 For x := 0 to cmbCarrier.Items.Count -1 do
 Begin
  if integer(cmbCarrier.Items.Objects[x]) = cdsVoyageCarrierNo.AsInteger then
  cmbCarrier.ItemIndex:= x ;
 End ;

 End ;//with
End ;

procedure TFormBookingForm.SetLoadingLocationItemIndex ;
Var x : integer ;
Begin
 with dm_Booking do
 Begin

 For x := 0 to cmbLoadingLocation.Items.Count -1 do
 Begin
  if integer(cmbLoadingLocation.Items.Objects[x]) = cdsVoyageLoadingPortNo.AsInteger then
  cmbLoadingLocation.ItemIndex:= x ;
 End ;

 End ;//with
End ;

procedure TFormBookingForm.FormCreate(Sender: TObject);
begin
 with dm_Booking do
 Begin
  cdsCarrier.Active:= True ;
  cdsBookingType.Active:= True ;
  cdsVolUnit.Active:= True ;
  cdsCurrency.Active:= True ;

  cdsBooking.Active:= True ;
  cdsShippers.Active:= True ;
  cdsVoyage.Active:= True ;
 End ;
 ReadMeOnly:= False ;
end;

procedure TFormBookingForm.dxBarSaveClick(Sender: TObject);
begin
 with dm_Booking do
 Begin
  if cdsBooking.State in [dsEdit, dsInsert] then
   cdsBooking.Post ;

//  if cdsVoyageDestination.State in [dsEdit, dsInsert] then
//   cdsVoyageDestination.Post ;

  if cdsVoyage.State in  [dsEdit, dsInsert] then
   cdsVoyage.Post ;
  if cdsVoyage.ChangeCount > 0 then
   Begin
    cdsVoyage.ApplyUpdates(0) ;
   End ;

  if cdsBooking.ChangeCount > 0 then
   cdsBooking.ApplyUpdates(0) ;
   
//  if cdsVoyageDestination.ChangeCount > 0 then
//   cdsVoyageDestination.ApplyUpdates(0) ;
 End ;
end;

procedure TFormBookingForm.dxBarCloseClick(Sender: TObject);
begin
 Close ;
end;

procedure TFormBookingForm.bbNewCarrierClick(Sender: TObject);
Var FormCarrier : TFormCarrier ;
begin
 FormCarrier:= TFormCarrier.Create(Nil);
 Try
  FormCarrier.ShowModal ;
  with dm_Booking do
  Begin
   cmbCarrier.Items.Clear ;
   dmsLoadCarriers(cmbCarrier.Items);
   SetCarrierItemIndex ;
  End ;
 Finally
  FreeAndNil(FormCarrier) ;//.Free ;
 End ;
end;

procedure TFormBookingForm.bbAddVesselClick(Sender: TObject);
begin
 with dm_Booking do
 Begin
  if not cdsVoyage.Locate('VoyageNo',cdsBookingVoyageNo.AsInteger,[]) then
  Begin
   cdsVoyage.Insert ;
   cdsVoyageVoyageNo.AsInteger:= dmsConnector.NextMaxNo('Voyage') ;
   cdsVoyage.Post ;

   if not (cdsBooking.State in [dsEdit, dsInsert]) then
    cdsBooking.Edit ;
   cdsBookingVoyageNo.AsInteger:= cdsVoyageVoyageNo.AsInteger ;
   cdsBooking.Post ;
  End
  else
  Begin
   cdsVoyage.Edit ;
  End ;

 End ;
end;

procedure TFormBookingForm.dxBarPrintClick(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 if OrderType = 0 then
 FormCRViewReport.CreateCo('TRP_ORDER_NOTE.RPT') 
 else
  FormCRViewReport.CreateCo('trp_order_inkop_NOTE.RPT') ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dm_Booking.cdsBookingShippingPlanNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;
 End ;
end;

procedure TFormBookingForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 with dm_Booking do
 Begin
  if ((cdsVoyage.ChangeCount > 0) or (cdsBooking.ChangeCount > 0)) and  (ReadMeOnly = False) then
  Begin
   if MessageDlg('Data ej sparad, vill du avsluta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     CanClose:= True
    else
     CanClose:= False ;
  End ;

 if CanClose then
 Begin
  cdsCarrier.Active:= False ;
  cdsBookingType.Active:= False ;
  cdsVolUnit.Active:= False ;
  cdsCurrency.Active:= False ;

  cdsBooking.Active:= False ;
  cdsShippers.Active:= False ;
  cdsVoyage.Active:= False ;
  cdsAvropInfo.Active:= False ;
  grdBooking.SaveToIniFile(dmsConnector.InifilesMap+'VisBooking'+'.'+ThisUser.UserName);
 End ;
 End ; //with
end;

procedure TFormBookingForm.cmbCarrierChange(Sender: TObject);
begin
 with dm_Booking do
 Begin
  Try
  if cdsVoyage.State in [dsEdit, dsInsert] then
  Begin
   cdsVoyageCarrierNo.AsInteger := integer(cmbCarrier.Items.Objects[cmbCarrier.ItemIndex]);
   cdsVoyage.Post ;
  End
  else
  Begin
   cdsVoyage.Edit ;
   cdsVoyageCarrierNo.AsInteger := integer(cmbCarrier.Items.Objects[cmbCarrier.ItemIndex]);
   cdsVoyage.Post ;

  End ;
  Except
   cmbCarrier.ItemIndex:= -1 ;
  End ;
 End ;
end;

procedure TFormBookingForm.deETDChange(Sender: TObject);
begin
 with dm_Booking do
 Begin

  if cdsVoyage.State in [dsEdit, dsInsert] then
  Begin
   cdsVoyageETD.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(deETD.Date) ;
   cdsVoyage.Post ;
  End
  else
  Begin
   cdsVoyage.Edit ;
   cdsVoyageETD.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(deETD.Date) ;
   cdsVoyage.Post ;
  End ;
 End ;
end;

procedure TFormBookingForm.cmbLoadingLocationChange(Sender: TObject);
begin
 with dm_Booking do
 Begin
  Try
  if cdsVoyage.State in [dsEdit, dsInsert] then
  Begin
   cdsVoyageLoadingPortNo.AsInteger := integer(cmbLoadingLocation.Items.Objects[cmbLoadingLocation.ItemIndex]);
   cdsVoyage.Post ;
  End
  else
  Begin
   cdsVoyage.Edit ;
   cdsVoyageLoadingPortNo.AsInteger := integer(cmbLoadingLocation.Items.Objects[cmbLoadingLocation.ItemIndex]);
   cdsVoyage.Post ;

  End ;
  Except
  End ;
 End ; //with
end;

procedure TFormBookingForm.FormShow(Sender: TObject);
begin
 if ReadMeOnly = True then
 Begin
  Panel1.Enabled:= False ;
  dbmemoLOText.ReadOnly:= True ;
  dbmemoInvoiceText.ReadOnly:= True ;
  dbmemoNote.ReadOnly:= True ;
  PanelConfirm.Enabled:= False ;
  dxBarSave.Enabled:= False ;
 end ;

end;

end.
