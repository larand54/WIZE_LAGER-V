unit fInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, kbmMemTable,
  DBCtrls, StdCtrls, dxEditor, dxExEdtr, dxEdLib, dxDBELib, Mask, Menus,
  OleServer, IniFiles, dxDBEdtr,
  Buttons, dxDBTLCl, dxGrClms, DBClient, SqlTimSt, cxPC,
  cxControls, CRAXDDRT_TLB, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxRichEdit, cxDBRichEdit, cxLabel, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox ;

type
  TfrmInvoice = class(TForm)
    dxPageControl1: TcxPageControl;
    tsInvoiceHead: TcxTabSheet;
    tsShipToAddress: TcxTabSheet;
    tsAgent: TcxTabSheet;
    tsNotes: TcxTabSheet;
    panelLO: TPanel;
    TabControl1: TTabControl;
    grdInvoiceRows: TdxDBGrid;
    panelInvoiceTotal: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label8: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    dxDBDateEdit1: TdxDBDateEdit;
    DBText4: TDBText;
    DBText6: TDBText;
    txtCustomer: TDBText;
    Label12: TLabel;
    DBText18: TDBText;
    Label16: TLabel;
    DBText22: TDBText;
    Label17: TLabel;
    Label18: TLabel;
    DBText24: TDBText;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBText28: TDBText;
    DBText29: TDBText;
    Label23: TLabel;
    Label24: TLabel;
    DBText30: TDBText;
    Label25: TLabel;
    DBText31: TDBText;
    grdInvoiceRowsInternalInvoiceNo: TdxDBGridMaskColumn;
    grdInvoiceRowsShippingPlanNo: TdxDBGridMaskColumn;
    grdInvoiceRowsInvoiceDetailNo: TdxDBGridMaskColumn;
    grdInvoiceRowsTypeOfRow: TdxDBGridMaskColumn;
    grdInvoiceRowsLoadNo: TdxDBGridMaskColumn;
    grdInvoiceRowsLoadID: TdxDBGridMaskColumn;
    grdInvoiceRowsOrderLineNo: TdxDBGridMaskColumn;
    grdInvoiceRowsReference: TdxDBGridMaskColumn;
    grdInvoiceRowsProductDescription: TdxDBGridMaskColumn;
    grdInvoiceRowsProductNo: TdxDBGridMaskColumn;
    grdInvoiceRowsLengthDescription: TdxDBGridMaskColumn;
    grdInvoiceRowsProductLengthNo: TdxDBGridMaskColumn;
    grdInvoiceRowsPrice: TdxDBGridMaskColumn;
    grdInvoiceRowsProductValue: TdxDBGridMaskColumn;
    grdInvoiceRowsVolume_OrderUnit: TdxDBGridMaskColumn;
    grdInvoiceRowsActualThicknessMM: TdxDBGridMaskColumn;
    grdInvoiceRowsActualWidthMM: TdxDBGridMaskColumn;
    grdInvoiceRowsNominalThicknessMM: TdxDBGridMaskColumn;
    grdInvoiceRowsNominalWidthMM: TdxDBGridMaskColumn;
    grdInvoiceRowsNominalThicknessINCH: TdxDBGridMaskColumn;
    grdInvoiceRowsNominalWidthINCH: TdxDBGridMaskColumn;
    grdInvoiceRowsActualNetM3: TdxDBGridMaskColumn;
    grdInvoiceRowsNominalM3: TdxDBGridMaskColumn;
    grdInvoiceRowsLinealMeter: TdxDBGridMaskColumn;
    grdInvoiceRowsNoOfPieces: TdxDBGridMaskColumn;
    grdInvoiceRowsCreatedUser: TdxDBGridMaskColumn;
    grdInvoiceRowsModifiedUser: TdxDBGridMaskColumn;
    grdInvoiceRowsDateCreated: TdxDBGridColumn;
    cbFreightInComm: TDBCheckBox;
    cbFreightInDiscount: TDBCheckBox;
    cbCommissionPaidByCustomer: TDBCheckBox;
    Label26: TLabel;
    DBText32: TDBText;
    Label27: TLabel;
    DBText33: TDBText;
    Label28: TLabel;
    DBText34: TDBText;
    DBText35: TDBText;
    DBText37: TDBText;
    Label34: TLabel;
    DBText40: TDBText;
    DBEdit1: TDBEdit;
    DBText42: TDBText;
    Label35: TLabel;
    DBText45: TDBText;
    DBText46: TDBText;
    DBText47: TDBText;
    DBText48: TDBText;
    DBText49: TDBText;
    DBText50: TDBText;
    DBText51: TDBText;
    DBText52: TDBText;
    DBText61: TDBText;
    cbVAT: TDBCheckBox;
    Label38: TLabel;
    dcOrderNoText: TDBEdit;
    dcSalesMan: TDBEdit;
    dcCustRef: TDBEdit;
    dcOurRef: TDBEdit;
    pmInvoiceRow: TPopupMenu;
    AddRow1: TMenuItem;
    RemoveRow: TMenuItem;
    grdShipToAddress: TdxDBGrid;
    grdShipToAddressReference: TdxDBGridMaskColumn;
    grdShipToAddressAddressName: TdxDBGridMaskColumn;
    DBText44: TDBText;
    Shape2: TShape;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    DBText5: TDBText;
    Label4: TLabel;
    bbNewCarrier: TBitBtn;
    Label5: TLabel;
    grdShipToAddressADDR: TdxDBGridColumn;
    DBText21: TDBText;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    grdInvoiceRowsPriceUnit: TdxDBGridPickColumn;
    grdInvoiceRowsVolumeUnit: TdxDBGridPickColumn;
    PopupMenu2: TPopupMenu;
    AddShiptoaddress1: TMenuItem;
    DBText9: TDBText;
    Label37: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    rgDB_InvoiceType: TDBRadioGroup;
    rgDebitCredit: TDBRadioGroup;
    Shape3: TShape;
    pmPrint: TPopupMenu;
    Invoice1: TMenuItem;
    DBEdit2: TDBEdit;
    DBText7: TDBText;
    DBText8: TDBText;
    Label7: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    RemoveShipToAddress1: TMenuItem;
    FakturaEngelsk1: TMenuItem;
    FakturaEngelskLength1: TMenuItem;
    FakturaEngelskKP1: TMenuItem;
    FakturaSvenskutanmoms1: TMenuItem;
    Label9: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMaskEdit1: TdxDBMaskEdit;
    dxDBMaskEdit2: TdxDBMaskEdit;
    Label29: TLabel;
    DBText12: TDBText;
    Label30: TLabel;
    grdShipToAddressColumn4: TdxDBGridMaskColumn;
    DBCheckBox1: TDBCheckBox;
    tsStickyNote: TcxTabSheet;
    DBMemo2: TDBMemo;
    TRPBREV1: TMenuItem;
    SpecifikationSvenskVer2: TMenuItem;
    SpecEngVer2: TMenuItem;
    SpecifikationEngelskmedproducentver21: TMenuItem;
    SpecifikationEngelskAktuelldimensionVer21: TMenuItem;
    Specifikationutanpktnr1: TMenuItem;
    grdInvoiceRowsNoOfPkgs: TdxDBGridMaskColumn;
    SpecifikationIdahostyle1: TMenuItem;
    FakturaEngelskfrAgust1: TMenuItem;
    FakturaEngelskLengthNM31: TMenuItem;
    FakturaEngelskLngdperpakettyp1: TMenuItem;
    Label31: TLabel;
    DBText13: TDBText;
    Klientspecifikfaktura1: TMenuItem;
    Klientpaketspecifikation1: TMenuItem;
    FakturaSvenskutanmomsdk1: TMenuItem;
    FakturaEngelskdk1: TMenuItem;
    SpecifikationSvenskdk1: TMenuItem;
    SpecifikationEngelskdk1: TMenuItem;
    cxDBRichEdit1: TcxDBRichEdit;
    ActionList1: TActionList;
    acBooking: TAction;
    acGetInvoiceNo: TAction;
    acSave: TAction;
    acAddTab: TAction;
    acSummarize: TAction;
    ImageList1: TImageList;
    acPrintInvoices: TAction;
    acKlientInvoices: TAction;
    acClientPkgSpecar: TAction;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    acPrint: TAction;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    acClose: TAction;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    procedure TabControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolbtnAddTabClick(Sender: TObject);
    procedure Label16DblClick(Sender: TObject);
    procedure Label38DblClick(Sender: TObject);
    procedure AddRow1Click(Sender: TObject);
    procedure Label5DblClick(Sender: TObject);
    procedure RemoveRowClick(Sender: TObject);
    procedure grdInvoiceRowsEdited(Sender: TObject; Node: TdxTreeListNode);
    procedure bbNewCarrierClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure AddShiptoaddress1Click(Sender: TObject);
    procedure FakturaEngelsk1Click(Sender: TObject);
    procedure FakturaEngelskLength1Click(Sender: TObject);
    procedure FakturaEngelskKP1Click(Sender: TObject);
    procedure FakturaSvenskutanmoms1Click(Sender: TObject);
    procedure grdInvoiceRowsProductValueValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure TRPBREV1Click(Sender: TObject);
    procedure SpecifikationSvenskVer2Click(Sender: TObject);
    procedure SpecEngVer2Click(Sender: TObject);
    procedure SpecifikationEngelskmedproducentver21Click(Sender: TObject);
    procedure SpecifikationEngelskAktuelldimensionVer21Click(
      Sender: TObject);
    procedure Specifikationutanpktnr1Click(Sender: TObject);
    procedure SpecifikationIdahostyle1Click(Sender: TObject);
    procedure FakturaEngelskfrAgust1Click(Sender: TObject);
    procedure FakturaEngelskLengthNM31Click(Sender: TObject);
    procedure FakturaEngelskLngdperpakettyp1Click(Sender: TObject);
    procedure FakturaSvenskutanmomsdk1Click(Sender: TObject);
    procedure FakturaEngelskdk1Click(Sender: TObject);
    procedure SpecifikationSvenskdk1Click(Sender: TObject);
    procedure SpecifikationEngelskdk1Click(Sender: TObject);
    procedure acBookingExecute(Sender: TObject);
    procedure acGetInvoiceNoExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acAddTabExecute(Sender: TObject);
    procedure acSummarizeExecute(Sender: TObject);
    procedure acPrintInvoicesExecute(Sender: TObject);
    procedure acKlientInvoicesExecute(Sender: TObject);
    procedure acClientPkgSpecarExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure BitBtn2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acBookingUpdate(Sender: TObject);
    procedure cxLabel1Click(Sender: TObject);
    procedure cxLabel2Click(Sender: TObject);
    procedure cxLabel3Click(Sender: TObject);
    procedure cxLabel4Click(Sender: TObject);
    procedure cxLabel5Click(Sender: TObject);
    procedure cxLabel6Click(Sender: TObject);
  private
    { Private declarations }
    TrpID : String ;
    procedure DeleteInvoice(Sender: TObject);
    procedure GetBookingData(Sender: TObject;ShippingPlanNo : Integer);
    function  IsInvoiced(Sender: TObject) : Boolean ;
    function  GetNextInvoice_DetailNo(Sender: TObject) : Integer ;
  public
    { Public declarations }
    NewInvoice : Boolean ;
    procedure Summarize(Sender: TObject);
  end;

//var frmInvoice: TfrmInvoice;

// report : IReport ;

implementation

uses  VidaUser, dmsDataConn, UnitSelectClient, UnitdmModule1,
  UnitDestination, UnitAddress, UnitCurrency, UnitDelTerms,
  UnitPaymentTerms, UnitCRViewReport, UnitCarrier, dmBooking,
  dmcVidaInvoice, UnitBookingForm, dmsVidaContact, uStickyNote, VidaConst,
  UnitCRPrintReport, uLanguage;

{$R *.dfm}

procedure TfrmInvoice.TabControl1Change(Sender: TObject);
begin
   dmVidaInvoice.cdsInvoiceLO.Filter:= 'InternalInvoiceNo = '+dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = '+TabControl1.Tabs[TabControl1.TabIndex] ;
//  dmVidaInvoice.cdsInvoiceLO.Filtered:= True ;

  dmVidaInvoice.cdsInvoiceDetail.Filter:= 'InternalInvoiceNo = '+dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = '+TabControl1.Tabs[TabControl1.TabIndex] ;
//  dmVidaInvoice.cdsInvoiceDetail.Filtered:= True ;

  GetBookingData(Sender, StrToInt(TabControl1.Tabs[TabControl1.TabIndex])) ;

end;

procedure TfrmInvoice.Summarize(Sender: TObject);
Var
  SavePlace: TBookmark;
Begin
 with dmVidaInvoice do
 Begin
//  if cdsInvoiceDetail.State in [dsInsert, dsEdit] then cdsInvoiceDetail.Post ;
 cdsInvoiceDetail.DisableControls ;
 SavePlace:= cdsInvoiceDetail.GetBookmark ;
 Try
  if cdsInvoiceHead.State = dsBrowse then
  cdsInvoiceHead.Edit ;
  cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat:= 0 ;
  cdsInvoiceHeadSUM_FreigthCost.AsFloat:= 0 ;

  cdsInvoiceDetail.Filtered:= False ;
  cdsInvoiceDetail.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString ;
  cdsInvoiceDetail.Filtered:= True ;

 cdsInvoiceDetail.First ;
 While not cdsInvoiceDetail.Eof do
 Begin
  //SUM Product details
  if cdsInvoiceDetailTypeOfRow.AsInteger <> 3 then
   cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat:= cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat + cdsInvoiceDetailProductValue.AsFloat ;

  //SUM non product details as freight
  if cdsInvoiceDetailTypeOfRow.AsInteger = 3 then
   cdsInvoiceHeadSUM_FreigthCost.AsFloat := cdsInvoiceHeadSUM_FreigthCost.AsFloat + cdsInvoiceDetailProductValue.AsFloat ;


  cdsInvoiceDetail.Next ;
 End ;
  //Calculate
 cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat:=  cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat ;

//Calculate invoice value with no freight
 cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat:=
 cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat - cdsInvoiceHeadSUM_FreigthCost.AsFloat ;


// if cdsInvoiceHeadFreightInDiscount.AsInteger  = 0 then
 if cbFreightInDiscount.Checked = False then
  Begin
// Calculate Invoice value to be paid, Freight NOT included in discount calculation
   cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat -
   (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (cdsInvoiceHeadDiscount1.AsFloat/100)) ;

   cdsInvoiceHeadDiscount.AsFloat:=
   (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (cdsInvoiceHeadDiscount1.AsFloat/100)) ;
  End
  else
   Begin
// Calculate Invoice value to be paid, Freight Included in discount calculation
    cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat -
    (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (cdsInvoiceHeadDiscount1.AsFloat/100)) ;

    cdsInvoiceHeadDiscount.AsFloat:= (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (cdsInvoiceHeadDiscount1.AsFloat/100)) ;
   End ;

 if cbCommissionPaidByCustomer.Checked then
// if cdsInvoiceHeadCommissionPaidByCustomer.AsInteger = 1 then
 Begin
//  if cdsInvoiceHeadFreightInCommission.AsInteger = 0 then
  if cbFreightInComm.Checked = False then
   Begin
// Calculate Invoice value to be paid, Freight NOT included in Commission calculation
    cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
    (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
    cdsInvoiceHeadCommission.AsFloat:= (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
   End
   else
    Begin
// Calculate Invoice value to be paid, Freight included in Commission calculation
     cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
     (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;

     cdsInvoiceHeadCommission.AsFloat:=
    (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
   End ;
 End ;

 cdsInvoiceHeadCommission_and_Discount.AsFloat:= cdsInvoiceHeadCommission.AsFloat + cdsInvoiceHeadDiscount.AsFloat ;
 cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM.AsFloat:= cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat - cdsInvoiceHeadCommission_and_Discount.AsFloat ;
  
 if cbCommissionPaidByCustomer.Checked = False then
 //Show commission VW is paying
 Begin
   if cbFreightInComm.Checked = False then
//   if cdsInvoiceHeadFreightInCommission.AsInteger = 0 then
//  if cbFreightInComm.Checked = False then
   Begin
// Calculate Invoice value to be paid, Freight NOT included in Commission calculation
//    cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
//    (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
    cdsInvoiceHeadCommission.AsFloat:= (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
   End
   else
    Begin
// Calculate Invoice value to be paid, Freight included in Commission calculation
//     cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
//     (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;

     cdsInvoiceHeadCommission.AsFloat:=
    (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
   End ;
 End ;



//Calculate VAT if Country is SWEDEN and cbVAT (Skatteupplag) checked
 if Trim(cdsInvoiceHeadCountryName.AsString) = 'SWEDEN' then
// if cdsInvoiceHeadCurrencyNo.AsInteger = 10001{SEK} then
 Begin
  if cbVAT.Checked = False then
   Begin
    cdsInvoiceHeadVAT_Value.AsFloat:= cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat * 0.25 ;
    cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= Round(cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat+cdsInvoiceHeadVAT_Value.AsFloat) ;


    cdsInvoiceHeadVAT_Value.AsFloat:= cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat * 0.25 ;
    cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat:= Round(cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat+cdsInvoiceHeadVAT_Value.AsFloat) ;
   End
    else
    Begin
     cdsInvoiceHeadVAT_Value.AsFloat:= 0 ;
     cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= Round(cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat) ;
     cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat:= Round(cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat) ;
    End ;
 End ;

// Save to InvoiceHeader table
 cdsInvoiceHead.Post ;
 Finally
  cdsInvoiceDetail.Filtered:= False ;
   dmVidaInvoice.cdsInvoiceDetail.Filter:= 'InternalInvoiceNo = '+dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = '+TabControl1.Tabs[TabControl1.TabIndex] ;

  cdsInvoiceDetail.Filtered:= True ;
  cdsInvoiceDetail.GotoBookmark(SavePlace) ;
  cdsInvoiceDetail.EnableControls ;  
 End ; //finally
 End ; //with
End ;

(* procedure TfrmInvoice.Summarize(Sender: TObject);
Begin
 with dmVidaInvoice do
 Begin
 Try
  cdsInvoiceHead.Edit ;


  cdsInvoiceDetail.Filtered:= False ;
  cdsInvoiceDetail.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString ;
  cdsInvoiceDetail.Filtered:= True ;

 cdsInvoiceDetail.First ;
 tblInvSUM.Insert ;
 While not cdsInvoiceDetail.Eof do
 Begin
  //SUM Product details
  if cdsInvoiceDetailTypeOfRow.AsInteger <> 3 then
   tblInvSUMInvoiceValue.AsFloat:= tblInvSUMInvoiceValue.AsFloat + cdsInvoiceDetailProductValue.AsFloat ;

  //SUM non product details as freight 
  if cdsInvoiceDetailTypeOfRow.AsInteger = 3 then
   tblInvSUMTotalFreight.AsFloat := tblInvSUMTotalFreight.AsFloat + cdsInvoiceDetailProductValue.AsFloat ;
  cdsInvoiceDetail.Next ;
 End ;

 cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat:= tblInvSUMInvoiceValue.AsFloat ;

 //
 cdsInvoiceHeadSUM_FreigthCost.AsFloat:= tblInvSUMTotalFreight.AsFloat ;



 tblInvSUMInvoiceValueMINUSFREIGHT.AsFloat:= tblInvSUMInvoiceValue.AsFloat - tblInvSUMTotalFreight.AsFloat ;

//
 cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat:= tblInvSUMInvoiceValueMINUSFREIGHT.AsFloat ;

 tblInvSUMDiscountFREIGHT_EXC.AsFloat:= tblInvSUMInvoiceValueMINUSFREIGHT.AsFloat * (cdsInvoiceHeadDiscount1.AsFloat/100) ;
 tblInvSUMDiscountFREIGHT_INC.AsFloat:= tblInvSUMInvoiceValue.AsFloat * (cdsInvoiceHeadDiscount1.AsFloat/100) ;

 tblInvSUMCommissionFREIGHT_EXC.AsFloat:= tblInvSUMInvoiceValueMINUSFREIGHT.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100) ;
 tblInvSUMCommissionFREIGHT_INC.AsFloat:= tblInvSUMInvoiceValue.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100) ;

 tblInvSUMCommissionAND_DiscountEXC.AsFloat:= tblInvSUMDiscountFREIGHT_EXC.AsFloat + tblInvSUMCommissionFREIGHT_EXC.AsFloat ;
 tblInvSUMCommissionAND_DiscountINC.AsFloat:= tblInvSUMDiscountFREIGHT_INC.AsFloat + tblInvSUMCommissionFREIGHT_INC.AsFloat ;


 tblInvSUMInvValueDEDUCT_DIS_COMM_EXC.AsFloat:= tblInvSUMInvoiceValue.AsFloat - tblInvSUMCommissionAND_DiscountEXC.AsFloat ;
 tblInvSUMInvValueDEDUCT_DIS_COMM_INC.AsFloat:= tblInvSUMInvoiceValue.AsFloat - tblInvSUMCommissionAND_DiscountINC.AsFloat ;

// if cdsInvoiceHeadFreightInDiscount.AsInteger  = 0 then
 if cbFreightInDiscount.Checked = False then
  Begin
   tblInvSUMToBePaid.AsFloat:= tblInvSUMInvoiceValue.AsFloat - tblInvSUMDiscountFREIGHT_EXC.AsFloat ;
   cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= tblInvSUMInvoiceValue.AsFloat - tblInvSUMDiscountFREIGHT_EXC.AsFloat ;
   cdsInvoiceHeadDiscount.AsFloat:= tblInvSUMDiscountFREIGHT_EXC.AsFloat ;
  End
  else
   Begin
    tblInvSUMToBePaid.AsFloat:= tblInvSUMInvoiceValue.AsFloat -  tblInvSUMDiscountFREIGHT_INC.AsFloat ;
    cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= tblInvSUMInvoiceValue.AsFloat -  tblInvSUMDiscountFREIGHT_INC.AsFloat ;
    cdsInvoiceHeadDiscount.AsFloat:= tblInvSUMDiscountFREIGHT_INC.AsFloat ;
   End ;

 if cbCommissionPaidByCustomer.Checked then
// if cdsInvoiceHeadCommissionPaidByCustomer.AsInteger = 1 then
 Begin
//  if cdsInvoiceHeadFreightInCommission.AsInteger = 0 then
  if cbFreightInComm.Checked = False then
   Begin
    tblInvSUMToBePaid.AsFloat:= tblInvSUMToBePaid.AsFloat - tblInvSUMCommissionFREIGHT_EXC.AsFloat ;
    cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= tblInvSUMToBePaid.AsFloat - tblInvSUMCommissionFREIGHT_EXC.AsFloat ;
    cdsInvoiceHeadCommission.AsFloat:= tblInvSUMCommissionFREIGHT_EXC.AsFloat ;
   End
   else
    Begin
     tblInvSUMToBePaid.AsFloat:= tblInvSUMToBePaid.AsFloat - tblInvSUMCommissionFREIGHT_INC.AsFloat ;
     cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= tblInvSUMToBePaid.AsFloat - tblInvSUMCommissionFREIGHT_INC.AsFloat ;
     cdsInvoiceHeadCommission.AsFloat:= tblInvSUMCommissionFREIGHT_INC.AsFloat ;
    End ;
 End ;

 if cdsInvoiceHeadCurrencyNo.AsInteger = 10001{SEK} then
 Begin
  if cbVAT.Checked then
   Begin
    cdsInvoiceHeadVAT_Value.AsFloat:= tblInvSUMToBePaid.AsFloat * 0.25 ;
    tblInvSUMToBePaid.AsFloat := Round(tblInvSUMToBePaid.AsFloat+cdsInvoiceHeadVAT_Value.AsFloat)  ;
    cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= Round(cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat+cdsInvoiceHeadVAT_Value.AsFloat) ;
   End
    else
    Begin
     tblInvSUMToBePaid.AsFloat := Round(tblInvSUMToBePaid.AsFloat)  ;
     cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= Round(cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat) ;
    End ;
 End ;

 tblInvSUM.Post ;
 cdsInvoiceHead.Post ;
 Finally
  cdsInvoiceDetail.Filtered:= False ;
   dmVidaInvoice.cdsInvoiceDetail.Filter:= 'InternalInvoiceNo = '+dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = '+TabControl1.Tabs[TabControl1.TabIndex] ;

  cdsInvoiceDetail.Filtered:= True ;
 End ; //finally
 End ; //with
End ; *)

procedure TfrmInvoice.GetBookingData(Sender: TObject;ShippingPlanNo : Integer);
begin
 with dmVidaInvoice do
 Begin
  if ShippingPlanNo > 0 then
  Begin
   cdsBookingData.Active:= False ;
   sq_BookingData.ParamByName('ShippingPlanNo').AsInteger:= ShippingPlanNo ;
   cdsBookingData.Active:= True ;
   TrpID:= cdsBookingDataSUPP_REFERENCE.AsString ;
  End
   else
    cdsBookingData.Active:= False ;

 End ;
End ;

procedure TfrmInvoice.FormShow(Sender: TObject);
begin
// tblInvSUM.Active:= True ;
// Summarize(Sender) ;
  IsInvoiced(Sender) ;
 if not dmVidaInvoice.cdsInvoiceNumber.Locate('InternalInvoiceNo', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger,[]) then
 dmVidaInvoice.cdsInvoiceNumber.Active:= False ;

 if not dmVidaInvoice.cdsProformaInvNo.Locate('InternalInvoiceNo', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger,[]) then
 dmVidaInvoice.cdsProformaInvNo.Active:= False ;

 if not dmVidaInvoice.cds_PurchaseInvNo.Locate('InternalInvoiceNo', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger,[]) then
  dmVidaInvoice.cds_PurchaseInvNo.Active:= False ;



 dmVidaInvoice.cdsInvoiceShipToAddress.Active:= True ;


 GetBookingData(Sender, StrToInt(TabControl1.Tabs[TabControl1.TabIndex])) ;

 with dmVidaInvoice, dm_Booking do
 Begin
//  cdsVoyage.Active:= False ;
  cdsVoyage.Active:= True ;

  cdsCarrier.Active:= True ;
  cdsShippers.Active:= True ;

  cdsBooking.Active:= False ;
  sq_Booking.ParamByName('ShippingPlanNo').AsInteger:= StrToInt(TabControl1.Tabs[TabControl1.TabIndex]) ;
  cdsBooking.Active:= True ;

  if cdsBooking.Eof then
   Begin
    cdsBooking.Active:= False ;
    cdsCarrier.Active:= False ;
    cdsShippers.Active:= False ;
    cdsVoyage.Active:= False ;
   End
   else
   Begin
    cdsCarrier.Active:= True ;

    cdsVoyage.Active:= False ;
    cdsVoyage.Active:= True ;

//    cdsVoyageDestination.Active:= False ;
//    cdsVoyageDestination.Active:= True ;
   End ;

   Label42.Caption:= Trim(cdsInvoiceHeadAddressLine1.AsString)+', '+Trim(cdsInvoiceHeadAddressLine2.AsString)+', '+
   Trim(cdsInvoiceHeadAddressLine3.AsString)+', '+Trim(cdsInvoiceHeadAddressLine4.AsString)+', '+
   Trim(cdsInvoiceHeadCityName.AsString)+', '+Trim(cdsInvoiceHeadStateOrProvince.AsString)+', '+
   Trim(cdsInvoiceHeadPostalCode.AsString)+', '+Trim(cdsInvoiceHeadCountryName.AsString) ;

   Label43.Caption:= Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE1.AsString)+', '+Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE2.AsString)+', '+
   Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE3.AsString)+', '+Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE4.AsString)+', '+
   Trim(cdsInvoiceHeadAGENT_SHIPTO_CITY.AsString)+', '+Trim(cdsInvoiceHeadAGENT_SHIPTO_PROVINCE.AsString)+', '+
   Trim(cdsInvoiceHeadAGENT_SHIPTO_POSTALCODE.AsString)+', '+Trim(cdsInvoiceHeadAGENT_SHIPTO_COUNTRY.AsString) ;

  if Length(cdsInvoiceHeadStickyNote.AsString) > 0 then
  Begin
   frmStickyNote:= TfrmStickyNote.Create(Self);
   frmStickyNote.mStickyNote.Lines.Clear ;
   frmStickyNote.mStickyNote.Lines.Add(cdsInvoiceHeadStickyNote.AsString) ;
   frmStickyNote.Show ;
  End ;
 End ; //With
end;

function TfrmInvoice.IsInvoiced(Sender: TObject) : Boolean ;
Var Invoiced : Boolean ;
Begin
 Result:= False ;
 Invoiced := False ;
 with dmVidaInvoice do
 Begin

  if (cdsInvoiceNumber.Active) AND (cdsInvoiceNumber.Locate('InternalInvoiceNo',cdsInvoiceHeadInternalInvoiceNo.AsInteger,[])) then
   Invoiced:= True
   else
  if (cdsProformaInvNo.Active) AND ( cdsProformaInvNo.Locate('InternalInvoiceNo',cdsInvoiceHeadInternalInvoiceNo.AsInteger,[]) ) then
   Invoiced:= True
   else
  if (cds_PurchaseInvNo.Active) AND (cds_PurchaseInvNo.Locate('InternalInvoiceNo',cdsInvoiceHeadInternalInvoiceNo.AsInteger,[])) then
   Invoiced:= True ;

  if Invoiced then
  Begin
   Result:= True ;
   dmVidaInvoice.cdsInvoiceDetail.ReadOnly := True ;


//   toolbtn_DBForm_2.Enabled:= False ;
   acGetInvoiceNo.Enabled:= False ;
//   ToolbtnSave.Enabled:= False ;
   acAddTab.Enabled:= False ;
   acSummarize.Enabled:= False ;
//   ToolbtnRefresh.Enabled:= False ;
   tsInvoiceHead.Enabled:= False ;
   panelLO.Enabled:= False ;
//   grdInvoiceRows.Enabled:= False ;
   tsShipToAddress.Enabled:= False ;
   tsAgent.Enabled:= False ;
//   tsNotes.Enabled:= False ;
  end;
  acPrint.Enabled:= True ;
  acClose.Enabled:= True ;

 End ;
End ;

procedure TfrmInvoice.FormCreate(Sender: TObject);
begin
 with dmVidaInvoice do
 Begin
  TrpID:= '' ;
  if not dmModule1.cds_Language.Active then
  dmModule1.cds_Language.Active:= True ;

  cdsInvoiceNumber.Active:= True ;
  cdsProformaInvNo.Active:= True ;
  cds_PurchaseInvNo.Active:= True ;
  cdsInvoiceShipTo.Active:= True ;

  sq_VolUnit.Open ;
  While not sq_VolUnit.Eof do
  Begin
   grdInvoiceRowsVolumeUnit.Items.Add(sq_VolUnitVolumeUnitName.AsString) ;
   sq_VolUnit.Next ;
  End ;
  sq_VolUnit.Close ;

  sq_PriceUnit.Open ;
  While not sq_PriceUnit.Eof do
  Begin
   grdInvoiceRowsPriceUnit.Items.Add(sq_PriceUnitTemplateUnitName.AsString) ;
   sq_PriceUnit.Next ;
  End ;
  sq_PriceUnit.Close ;



 End ;
end;

procedure TfrmInvoice.ToolbtnAddTabClick(Sender: TObject);
Var MostNegativeNumber, x: Integer ;
begin
 MostNegativeNumber:= 0 ;
// GetNextTabNumber
 for x:= 0 to TabControl1.Tabs.Count - 1 do
  if StrToInt(TabControl1.Tabs[x]) < MostNegativeNumber then
   MostNegativeNumber:= StrToInt(TabControl1.Tabs[x]) ;

 MostNegativeNumber:= Pred(MostNegativeNumber) ;

 with dmVidaInvoice do
 Begin
    cdsInvoiceLO.Insert ;
    cdsInvoiceLOInternalInvoiceNo.AsInteger              := cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
    cdsInvoiceLOShippingPlanNo.AsInteger                 := MostNegativeNumber ;
    cdsInvoiceLOOrderNoText.AsString                     := '' ;
    cdsInvoiceLOReference.AsString                       := '' ;
    cdsInvoiceLOOurReference.AsString                    := '' ;
    cdsInvoiceLOSalesMan.AsString                        := dmsContact.GetFullUserName(ThisUser.UserID) ;

    cdsInvoiceLOBookingNo.AsInteger                      := -1 ;
    cdsInvoiceLOTotalFreightCost.AsFloat                 := 0 ; //Get total freight cost
    cdsInvoiceLOFreightCostPerUnit.AsFloat               := 0 ; //Get freight cost per unit
    dmVidaInvoice.cdsInvoiceLOInvoiceAdditionAmount.AsFloat := 0 ;
    cdsInvoiceLOInvoiceAdditionUnitNo.AsInteger          := 0 ;
    cdsInvoiceLOInvoiceAdditionDescription.AsString      := '' ;
    cdsInvoiceLOCreatedUser.AsInteger                    := ThisUser.UserID ;
    cdsInvoiceLOModifiedUser.AsInteger                   := ThisUser.UserID ;
    cdsInvoiceLODateCreated.AsSQLTimeStamp               := DateTimeToSQLTimeStamp(Now) ;
    cdsInvoiceLO.Post ;
 End ;
 TabControl1.Tabs.Add(IntToStr(MostNegativeNumber)) ;
end;

procedure TfrmInvoice.Label16DblClick(Sender: TObject);
Var FormSelectClient : TFormSelectClient ;
begin
 with dmVidaInvoice, dmModule1 do
 Begin
   FormSelectClient:= TFormSelectClient.Create(Nil);
   Try
    dmModule1.SQLSPClient.ParamByName('RoleType').AsInteger:= 3 ;
    dmModule1.SQLSPClient.Open ;

    dmModule1.cdsClient.Active:= True ;
    if FormSelectClient.ShowModal = mrOk then
    Begin
     if cdsInvoiceHead.State = dsBrowse then
      cdsInvoiceHead.Edit ;

     cdsInvoiceHeadAgentNo.AsInteger:= dmModule1.cdsClientClientNo.AsInteger ;
     cdsInvoiceHeadAgentName.AsString:= dmModule1.cdsClientClientName.AsString ;

    End ;
   Finally
    dmModule1.cdsClient.Active:= False ;
    dmModule1.SQLSPClient.Close ;
    FreeAndNil(FormSelectClient) ;//.Free ;
   End ;

 End ;

end;

procedure TfrmInvoice.Label38DblClick(Sender: TObject);
Var FormAddress : TFormAddress ;
begin
 with dmVidaInvoice, dmModule1 do
 Begin
  FormAddress := TFormAddress.Create(Nil);
  Try
  cdsClientAddress.Active:= False ;
  sq_ClientAddress.Close ;
  sq_ClientAddress.ParamByName('ClientNo').AsInteger:= cdsInvoiceHeadAgentNo.AsInteger ;
  sq_ClientAddress.ParamByName('AddressType').AsInteger:= 1 ;
  cdsClientAddress.Active:= True ;

  if FormAddress.ShowModal = mrOK then
  Begin
   if cdsInvoiceHead.State = dsBrowse then
    cdsInvoiceHead.Edit ;


//     cdsInvoiceHeadClientBillingAddressNo.AsInteger:= sq_ClientAddressADDRESS_NO.AsInteger ;

     cdsInvoiceHeadAGENT_ADDRESS_NAME.AsString:=  cdsClientAddressADDRESS_NAME.AsString ;
     cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE1.AsString:= cdsClientAddressADDRESSLINE1.AsString ;
     cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE2.AsString:= cdsClientAddressADDRESSLINE2.AsString ;
     cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE3.AsString:= cdsClientAddressADDRESSLINE3.AsString ;
     cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE4.AsString:= cdsClientAddressADDRESSLINE4.AsString ;
     cdsInvoiceHeadAGENT_SHIPTO_PROVINCE.AsString := cdsClientAddressPROVINCE.AsString ;
     cdsInvoiceHeadAGENT_SHIPTO_POSTALCODE.AsString := cdsClientAddressPOSTALCODE.AsString ;
     cdsInvoiceHeadAGENT_SHIPTO_CITY.AsString:= cdsClientAddressCITY.AsString ;
     cdsInvoiceHeadAGENT_SHIPTO_COUNTRY.AsString := cdsClientAddressCOUNTRY.AsString ;

   Label43.Caption:= Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE1.AsString)+', '+Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE2.AsString)+', '+
   Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE3.AsString)+', '+Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE4.AsString)+', '+
   Trim(cdsInvoiceHeadAGENT_SHIPTO_CITY.AsString)+', '+Trim(cdsInvoiceHeadAGENT_SHIPTO_PROVINCE.AsString)+', '+
   Trim(cdsInvoiceHeadAGENT_SHIPTO_POSTALCODE.AsString)+', '+Trim(cdsInvoiceHeadAGENT_SHIPTO_COUNTRY.AsString) ;

   cdsInvoiceHead.Post ;
 End ;


 Finally
  FreeAndNil(FormAddress) ;//.Free ;
 End ;

 End ; //with
end;

function TfrmInvoice.GetNextInvoice_DetailNo(Sender: TObject) : Integer ;
Var
  SavePlace: TBookmark;
  InvoiceDetailNo : Integer ;
Begin
 InvoiceDetailNo:= 0 ;
 with dmVidaInvoice do
 Begin
  SavePlace:= cdsInvoiceDetail.GetBookmark ;
  Try
   cdsInvoiceDetail.First ;
   While not cdsInvoiceDetail.Eof do
   Begin
    if InvoiceDetailNo < cdsInvoiceDetailInvoiceDetailNo.AsInteger then
    InvoiceDetailNo:= cdsInvoiceDetailInvoiceDetailNo.AsInteger ;
    cdsInvoiceDetail.Next ;
   End ; //While

  Finally
   Result:= InvoiceDetailNo + 1 ;
   cdsInvoiceDetail.GotoBookmark(SavePlace) ;
   cdsInvoiceDetail.FreeBookmark(SavePlace) ;
  End ; //finally

 End ; //With
End ;

procedure TfrmInvoice.AddRow1Click(Sender: TObject);
Var NextInvoiceDetailNo: Integer ;
begin

 With dmVidaInvoice do
 Begin
  NextInvoiceDetailNo:= GetNextInvoice_DetailNo(Sender) ;//cdsInvoiceDetail.RecordCount + 1 ;
  cdsInvoiceDetail.Append ;
  cdsInvoiceDetailInternalInvoiceNo.AsInteger         := cdsInvoiceLOInternalInvoiceNo.AsInteger ;
  cdsInvoiceDetailShippingPlanNo.AsInteger            := cdsInvoiceLOShippingPlanNo.AsInteger ;
  cdsInvoiceDetailInvoiceDetailNo.AsInteger           := NextInvoiceDetailNo ;
  cdsInvoiceDetailTypeOfRow.AsInteger                 := 2 ; //Additional
  cdsInvoiceDetailCreatedUser.AsInteger               := ThisUser.UserID ;
  cdsInvoiceDetailModifiedUser.AsInteger              := ThisUser.UserID ;
  cdsInvoiceDetailDateCreated.AsSQLTimeStamp          := DateTimeToSQLTimeStamp(Now) ;
  cdsInvoiceDetail.Post ;
 End ;
end;

procedure TfrmInvoice.Label5DblClick(Sender: TObject);
var FormDestination: TFormDestination;
begin
 with dmVidaInvoice, dmModule1 do
 Begin

 FormDestination:= TFormDestination.Create(Nil);
 Try
  cdsDestination.Active:= True ;
  if FormDestination.ShowModal = mrOk then
  Begin

   if cdsInvoiceHead.State = dsBrowse then
    cdsInvoiceHead.Edit ;
   cdsInvoiceHeadDestinationNo.AsInteger:= cdsDestinationCityNo.AsInteger ;
   cdsInvoiceHeadDestination.AsString:= cdsDestinationCityName.AsString ;
   cdsInvoiceHead.Post ;
  End ;
 Finally
  cdsDestination.Active:= False ;
  FreeAndNil(FormDestination) ;
 End ;
 End ;

end;

procedure TfrmInvoice.RemoveRowClick(Sender: TObject);
begin
 with dmVidaInvoice do
 Begin
//  if cdsInvoiceHeadQuickInvoice.AsInteger = 1 then
  if dmVidaInvoice.cdsInvoiceDetailTypeOfRow.AsInteger = 2 then
  cdsInvoiceDetail.Delete
  else
  ShowMessage('Kan inte ta bort fakturarader') ;
 End ;
end;

procedure TfrmInvoice.grdInvoiceRowsEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
 Summarize(Sender) ;
end;

procedure TfrmInvoice.bbNewCarrierClick(Sender: TObject);
var   FormCarrier: TFormCarrier;
begin
 if dm_Booking.cdsBooking.Active = True then
 Begin
  FormCarrier:= TFormCarrier.Create(Nil);
  Try
   FormCarrier.ShowModal ;
  Finally
   FreeAndNil(FormCarrier) ;//.Free ;
  End ;
 End ;
end;

procedure TfrmInvoice.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  CanClose := True ;

 if dmVidaInvoice.cdsInvoiceHead.State in [dsEdit, dsInsert] then
  dmVidaInvoice.cdsInvoiceHead.Post ;

 if dmVidaInvoice.cdsInvoiceLO.State in [dsEdit, dsInsert] then
  dmVidaInvoice.cdsInvoiceLO.Post ;

 if dmVidaInvoice.cdsInvoiceDetail.State in [dsEdit, dsInsert] then
  dmVidaInvoice.cdsInvoiceDetail.Post ;


 if (dmVidaInvoice.cdsInvoiceHead.ChangeCount > 0) or
 (dmVidaInvoice.cdsInvoiceLO.ChangeCount > 0) or
 (dmVidaInvoice.cdsInvoiceDetail.ChangeCount > 0) or
  (dmVidaInvoice.cdsInvoiceShipTo.ChangeCount > 0)  then
 Begin
  if MessageDlg('Fakturan är inte sparad, vill avsluta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
   CanClose := True ;
   if NewInvoice = True then
    DeleteInvoice(Sender) ;
    if (IsInvoiced(Sender) = False) and (rgDebitCredit.ItemIndex = 1) then
    Begin
     ShowMessage('Detta är en kredit faktura, Fakturanummer måste genereras innan du kan stänga formuläret.') ;
     CanClose:= False ;
    End ;

  end
  else
  Begin
   CanClose := False ;
  End
 End
  else
   Begin
    if NewInvoice = True then
     DeleteInvoice(Sender) ;
    if (IsInvoiced(Sender) = False) and (rgDebitCredit.ItemIndex = 1) then
    Begin
     ShowMessage('Detta är en kredit faktura, Fakturanummer måste genereras innan du kan stänga formuläret.') ;
     CanClose:= False ;
    End ;
   End ;

 if CanClose then
 Begin
  dm_Booking.sq_Booking.DataSource:= Nil ;

  dmVidaInvoice.cdsInvoiceDetail.ReadOnly:= False ;
  dm_Booking.cdsVoyage.Active:= False ;
//  dm_Booking.cdsVoyageDestination.Active:= False ;


  dm_Booking.cdsCarrier.Active:= True ;
  dm_Booking.cdsShippers.Active:= True ;

//  tblInvSUM.Active:= False ;
  dmVidaInvoice.cdsInvoiceShipToAddress.Active:= False ;
  dmVidaInvoice.cdsInvoiceNumber.Active:= False ;
  dmVidaInvoice.cdsProformaInvNo.Active:= False ;
  dmVidaInvoice.cds_PurchaseInvNo.Active:= False ;
  dmVidaInvoice.cdsInvoiceShipTo.Active:= True ;
  dmModule1.cds_Language.Active:= False ; 
 End ;
end;

procedure TfrmInvoice.DeleteInvoice(Sender: TObject);
Var TransNo : Cardinal ;
begin

   With dmVidaInvoice do
   Begin
    cdsInvoiceNumber.Active:= True ;
    if not cdsInvoiceNumber.Locate('InternalInvoiceNo',cdsInvoiceHeadInternalInvoiceNo.AsInteger, []) then
    Begin
     TransNo := dmsConnector.StartTransaction ;
     Try
// taken care of by Invoiced_Load     sq_SetLSInvoicedStatus.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListInternalInvoiceNo.AsInteger ;
//     sq_SetLSInvoicedStatus.ExecSQL(false) ;
{     While not cdsInvoiceDetail.Eof do
      cdsInvoiceDetail.Delete ;
     While not cdsInvoiceLO.Eof do
      cdsInvoiceLO.Delete ;
     While not cdsInvoiceShipTo.Eof do
      cdsInvoiceShipTo.Delete ;
     cdsInvoiceHead.Delete ;

   if dmVidaInvoice.cdsInvoiceHead.ChangeCount > 0 then   dmVidaInvoice.cdsInvoiceHead.ApplyUpdates(-1) ;


   if dmVidaInvoice.cdsInvoiceLO.ChangeCount > 0 then
   dmVidaInvoice.cdsInvoiceLO.ApplyUpdates(-1) ;


   if dmVidaInvoice.cdsInvoiceDetail.ChangeCount > 0 then
   dmVidaInvoice.cdsInvoiceDetail.ApplyUpdates(-1) ;

   if dmVidaInvoice.cdsInvoiceShipTo.ChangeCount > 0 then
   dmVidaInvoice.cdsInvoiceShipTo.ApplyUpdates(-1) ; }

     sq_DeleteInvoice.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
     sq_DeleteInvoice.ExecSQL(false) ;

    dmsConnector.Commit(TransNo) ;

     Except
      dmsConnector.Rollback(TransNo);
     End ;
//     cdsInvoiceList.Active:= False ;
//     cdsInvoiceList.Active:= True ;
    End
    else
    ShowMessage('Kan inte ta bort faktura som har tilldelats ett fakturanummer.') ;
   End ;
end;

procedure TfrmInvoice.AddShiptoaddress1Click(Sender: TObject);
var  FormAddress: TFormAddress;
begin
 with dmVidaInvoice, dmModule1 do
 Begin
  FormAddress := TFormAddress.Create(Nil);
  Try
  cdsClientAddress.Active:= False ;
  sq_ClientAddress.Close ;
  sq_ClientAddress.ParamByName('ClientNo').AsInteger:= cdsInvoiceHeadCustomerNo.AsInteger ;
  sq_ClientAddress.ParamByName('AddressType').AsInteger:= 2 ;
  cdsClientAddress.Active:= True ;


  if FormAddress.ShowModal = mrOK then
  Begin
    if cdsInvoiceShipTo.Locate('InternalInvoiceNo;ShippingPlanNo;Reference',
    VarArrayof([cdsInvoiceDetailInternalInvoiceNo.AsInteger, cdsInvoiceDetailShippingPlanNo.AsInteger, cdsInvoiceDetailReference.AsString]),[]) then
    Begin
{     cdsInvoiceShipTo.Edit ;
     cdsInvoiceShipToReference.AsString:= cdsInvoiceDetailReference.AsString ;
     cdsInvoiceShipToInternalInvoiceNo.AsInteger:= cdsInvoiceDetailInternalInvoiceNo.AsInteger ;
     cdsInvoiceShipToShippingPlanNo.AsInteger:= cdsInvoiceDetailShippingPlanNo.AsInteger ;
     cdsInvoiceShipToAddressNo.AsInteger:= cdsClientAddressADDRESS_NO.AsInteger ;
     cdsInvoiceShipTo.Post ;
}
     cdsInvoiceShipToAddress.Edit ;
     cdsInvoiceShipToAddressAddressName.AsString:= cdsClientAddressADDRESS_NAME.AsString ;
     cdsInvoiceShipToAddressReference.AsString:= cdsInvoiceDetailReference.AsString ;
     cdsInvoiceShipToAddressInternalInvoiceNo.AsInteger:= cdsInvoiceDetailInternalInvoiceNo.AsInteger ;
     cdsInvoiceShipToAddressShippingPlanNo.AsInteger:= cdsInvoiceDetailShippingPlanNo.AsInteger ;
     cdsInvoiceShipToAddressAddressNo.AsInteger:= cdsClientAddressADDRESS_NO.AsInteger ;
     cdsInvoiceShipToAddressADDR.AsString:=
     TRIM(cdsClientAddressADDRESSLINE1.AsString)
     +', '+TRIM(cdsClientAddressADDRESSLINE2.AsString)
     +', '+TRIM(cdsClientAddressADDRESSLINE3.AsString)
     +', '+TRIM(cdsClientAddressADDRESSLINE4.AsString)
     +', '+TRIM(cdsClientAddressCITY.AsString)
     +', '+TRIM(cdsClientAddressPOSTALCODE.AsString)
     +', '+TRIM(cdsClientAddressPOSTALCODE.AsString) ;
     cdsInvoiceShipToAddress.Post ;


    end
    else
    Begin
{     cdsInvoiceShipTo.Insert ;
     cdsInvoiceShipToReference.AsString:= cdsInvoiceDetailReference.AsString ;
     cdsInvoiceShipToInternalInvoiceNo.AsInteger:= cdsInvoiceDetailInternalInvoiceNo.AsInteger ;
     cdsInvoiceShipToShippingPlanNo.AsInteger:= cdsInvoiceDetailShippingPlanNo.AsInteger ;
     cdsInvoiceShipToAddressNo.AsInteger:= cdsClientAddressADDRESS_NO.AsInteger ;
     cdsInvoiceShipTo.Post ; }


     cdsInvoiceShipToAddress.Insert ;
     cdsInvoiceShipToAddressAddressName.AsString:= cdsClientAddressADDRESS_NAME.AsString ;
     cdsInvoiceShipToAddressReference.AsString:= cdsInvoiceDetailReference.AsString ;
     cdsInvoiceShipToAddressInternalInvoiceNo.AsInteger:= cdsInvoiceDetailInternalInvoiceNo.AsInteger ;
     cdsInvoiceShipToAddressShippingPlanNo.AsInteger:= cdsInvoiceDetailShippingPlanNo.AsInteger ;
     cdsInvoiceShipToAddressAddressNo.AsInteger:= cdsClientAddressADDRESS_NO.AsInteger ;
     cdsInvoiceShipToAddressADDR.AsString:=
     TRIM(cdsClientAddressADDRESSLINE1.AsString)
     +', '+TRIM(cdsClientAddressADDRESSLINE2.AsString)
     +', '+TRIM(cdsClientAddressADDRESSLINE3.AsString)
     +', '+TRIM(cdsClientAddressADDRESSLINE4.AsString)
     +', '+TRIM(cdsClientAddressCITY.AsString)
     +', '+TRIM(cdsClientAddressPOSTALCODE.AsString)
     +', '+TRIM(cdsClientAddressPOSTALCODE.AsString) ;


     cdsInvoiceShipToAddress.Post ;
//     cdsInvoiceShipToAddress.Active:= False ;
//     cdsInvoiceShipToAddress.Active:= True ;
    End ;
  End ;

{  if dmVidaInvoice.cdsInvoiceShipTo.ChangeCount > 0 then
  Begin
   dmVidaInvoice.cdsInvoiceShipTo.ApplyUpdates(0) ;
   cdsInvoiceShipToAddress.Active:= False ;
   cdsInvoiceShipToAddress.Active:= True ;
  End ; }


 Finally
  FreeAndNil(FormAddress) ;//.Free ;
 End ;

 End ; //with
end;

procedure TfrmInvoice.FakturaEngelsk1Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoice.FakturaEngelskLength1Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_längd_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoice.FakturaEngelskKP1Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_KP_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoice.FakturaSvenskutanmoms1Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_u_moms_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoice.grdInvoiceRowsProductValueValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
 if dmVidaInvoice.cdsInvoiceDetailTypeOfRow.AsInteger = 2 then
 Accept:= True
 else
 Begin
  Accept:= False ;
  ErrorText:= 'Cannot change this cell! (press Esc to undo)' ;
 End ;
end;

procedure TfrmInvoice.TRPBREV1Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin
  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then exit ;

 dmsContact.InsertUserIssueReport (ThisUser.UserID, dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger) ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('TRP_BREV.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoice.SpecifikationSvenskVer2Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin
 if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_SV_VER2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;

end;

procedure TfrmInvoice.SpecEngVer2Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin
 if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_VER2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;

end;

procedure TfrmInvoice.SpecifikationEngelskmedproducentver21Click(
  Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin

if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_PROD_VER2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoice.SpecifikationEngelskAktuelldimensionVer21Click(
  Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;  
begin

if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPEC_ACT_VER2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoice.Specifikationutanpktnr1Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin
if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPEC_NOPKGNO.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoice.SpecifikationIdahostyle1Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin                                    
if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_IDAHO_VER2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoice.FakturaEngelskfrAgust1Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin

if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_IDAHO_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoice.FakturaEngelskLengthNM31Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin

if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_längd_plus_NM3_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoice.FakturaEngelskLngdperpakettyp1Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin

 if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_PKTTYP_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoice.FakturaSvenskutanmomsdk1Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_u_moms_NOTE_dk.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;

end;

procedure TfrmInvoice.FakturaEngelskdk1Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_NOTE_dk.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;

end;

procedure TfrmInvoice.SpecifikationSvenskdk1Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_SV_VER2_dk.RPT') ;
 
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;

end;

procedure TfrmInvoice.SpecifikationEngelskdk1Click(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_VER2_dk.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;

end;

procedure TfrmInvoice.acBookingExecute(Sender: TObject);
var FormBookingForm: TFormBookingForm;
begin
  FormBookingForm:= TFormBookingForm.Create(Nil) ;
  try
  FormBookingForm.CreateCo(StrToInt(TabControl1.Tabs[TabControl1.TabIndex])) ;

  if acGetInvoiceNo.Enabled then
   FormBookingForm.ReadMeOnly:= False
    else
     FormBookingForm.ReadMeOnly:= True ;

    FormBookingForm.ShowModal ;
    if FormBookingForm.ReadMeOnly = False then
    Begin
     GetBookingData(Sender, StrToInt(TabControl1.Tabs[TabControl1.TabIndex])) ;
     ShowMessage('Om fraktkostnaden har ändrats: stäng fakturan utan att spara och skapa den åter i avropslistan. (är den sparad gå till fakturalistan och ta bort den)');
    End ;
  if TrpID <> dmVidaInvoice.cdsInvoiceLOTrpID.AsString then
  Begin
   dmVidaInvoice.cdsInvoiceLO.Edit ;
   dmVidaInvoice.cdsInvoiceLOTrpID.AsString:= TrpID ;
   dmVidaInvoice.cdsInvoiceLO.Post ;
  End ;

  finally
    FreeAndNil(FormBookingForm) ;
  end;

end;

procedure TfrmInvoice.acGetInvoiceNoExecute(Sender: TObject);
begin
 if (dmVidaInvoice.cdsInvoiceHead.ChangeCount > 0) or
 (dmVidaInvoice.cdsInvoiceLO.ChangeCount > 0) or
 (dmVidaInvoice.cdsInvoiceDetail.ChangeCount > 0) or
  (dmVidaInvoice.cdsInvoiceShipTo.ChangeCount > 0)  then
    Begin
     ShowMessage('Spara fakturan först.') ;
     Exit ;
    End ;


   with dmVidaInvoice do
   Begin
    cdsInvoiceNumber.Active:= True ;
    cdsProformaInvNo.Active:= True ;
    cds_PurchaseInvNo.Active:= True ;

    dmVidaInvoice.AssignInvoiceNumber(cdsInvoiceHeadInternalInvoiceNo.AsInteger) ;

//    if Status = 0 then showmessage('OK') else
//    if Status = 1 then    showmessage('Invoice number already generated and assigned');
      if not dmVidaInvoice.cdsInvoiceNumber.Locate('InternalInvoiceNo', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger,[]) then
        dmVidaInvoice.cdsInvoiceNumber.Active:= False ;

      if not dmVidaInvoice.cdsProformaInvNo.Locate('InternalInvoiceNo', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger,[]) then
        dmVidaInvoice.cdsProformaInvNo.Active:= False ;

      if not dmVidaInvoice.cds_PurchaseInvNo.Locate('InternalInvoiceNo', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger,[]) then
        dmVidaInvoice.cds_PurchaseInvNo.Active:= False ;
   End ;
end;

procedure TfrmInvoice.acSaveExecute(Sender: TObject);
begin
 if dmVidaInvoice.cdsInvoiceHeadSUM_FreigthCost.AsFloat > 0 then
 if dmVidaInvoice.cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat
 / dmVidaInvoice.cdsInvoiceHeadSUM_FreigthCost.AsFloat < 3.5 then
 ShowMessage('Är inte fraktkostnaden lite hög?') ;

 if (dmVidaInvoice.cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat > 0)
  and (dmVidaInvoice.cdsInvoiceHeadDebit_Credit.AsInteger = 1) then
  ShowMessage('Notera, fakturan är markerad som en kredit men beloppet är positivt.') ;

 if dmVidaInvoice.cdsInvoiceHeadCurrencyName.AsString <= '' then
 Begin
  ShowMessage('Kan inte spara innan en valuta är vald') ;
  Exit ;
 End ;
 if dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger < 1 then
 Begin
  ShowMessage('Kan inte spara innan en kund är vald') ;
  Exit ;
 End ;


 Summarize(Sender) ;
 if dmVidaInvoice.cdsInvoiceHead.State in [dsEdit, dsInsert] then
  dmVidaInvoice.cdsInvoiceHead.Post ;
 if dmVidaInvoice.cdsInvoiceHead.ChangeCount > 0 then
  dmVidaInvoice.cdsInvoiceHead.ApplyUpdates(0) ;

 if dmVidaInvoice.cdsInvoiceLO.State in [dsEdit, dsInsert] then
  dmVidaInvoice.cdsInvoiceLO.Post ;
 if dmVidaInvoice.cdsInvoiceLO.ChangeCount > 0 then
  dmVidaInvoice.cdsInvoiceLO.ApplyUpdates(0) ;

 if dmVidaInvoice.cdsInvoiceDetail.State in [dsEdit, dsInsert] then
  dmVidaInvoice.cdsInvoiceDetail.Post ;
 if dmVidaInvoice.cdsInvoiceDetail.ChangeCount > 0 then
  dmVidaInvoice.cdsInvoiceDetail.ApplyUpdates(0) ;

 if dmVidaInvoice.cdsInvoiceShipTo.State in [dsEdit, dsInsert] then
  dmVidaInvoice.cdsInvoiceShipTo.Post ;
 if dmVidaInvoice.cdsInvoiceShipTo.ChangeCount > 0 then
  dmVidaInvoice.cdsInvoiceShipTo.ApplyUpdates(0) ;

 if dmVidaInvoice.cdsInvoiceShipToAddress.ChangeCount > 0 then
  dmVidaInvoice.cdsInvoiceShipToAddress.ApplyUpdates(0) ;

  NewInvoice:= False ; //set to false if user save
end;

procedure TfrmInvoice.acAddTabExecute(Sender: TObject);
Var MostNegativeNumber, x: Integer ;
begin
 MostNegativeNumber:= 0 ;
// GetNextTabNumber
 for x:= 0 to TabControl1.Tabs.Count - 1 do
  if StrToInt(TabControl1.Tabs[x]) < MostNegativeNumber then
   MostNegativeNumber:= StrToInt(TabControl1.Tabs[x]) ;

 MostNegativeNumber:= Pred(MostNegativeNumber) ;

 with dmVidaInvoice do
 Begin
    cdsInvoiceLO.Insert ;
    cdsInvoiceLOInternalInvoiceNo.AsInteger              := cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
    cdsInvoiceLOShippingPlanNo.AsInteger                 := MostNegativeNumber ;
    cdsInvoiceLOOrderNoText.AsString                     := '' ;
    cdsInvoiceLOReference.AsString                       := '' ;
    cdsInvoiceLOOurReference.AsString                    := '' ;
    cdsInvoiceLOSalesMan.AsString                        := dmsContact.GetFullUserName(ThisUser.UserID) ;

    cdsInvoiceLOBookingNo.AsInteger                      := -1 ;
    cdsInvoiceLOTotalFreightCost.AsFloat                 := 0 ; //Get total freight cost
    cdsInvoiceLOFreightCostPerUnit.AsFloat               := 0 ; //Get freight cost per unit
    dmVidaInvoice.cdsInvoiceLOInvoiceAdditionAmount.AsFloat := 0 ;
    cdsInvoiceLOInvoiceAdditionUnitNo.AsInteger          := 0 ;
    cdsInvoiceLOInvoiceAdditionDescription.AsString      := '' ;
    cdsInvoiceLOCreatedUser.AsInteger                    := ThisUser.UserID ;
    cdsInvoiceLOModifiedUser.AsInteger                   := ThisUser.UserID ;
    cdsInvoiceLODateCreated.AsSQLTimeStamp               := DateTimeToSQLTimeStamp(Now) ;
    cdsInvoiceLO.Post ;
 End ;
 TabControl1.Tabs.Add(IntToStr(MostNegativeNumber)) ;
end;

procedure TfrmInvoice.acSummarizeExecute(Sender: TObject);
begin
 Summarize(Sender) ;
end;

procedure TfrmInvoice.acPrintInvoicesExecute(Sender: TObject);
var  FormCRViewReport: TFormCRViewReport;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_NOTE.RPT') ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;

 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoice.acKlientInvoicesExecute(Sender: TObject);
Var param1, param2, param3 : Integer ;
    FormCRPrintReport: TFormCRPrintReport;
begin
 if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then exit ;
 FormCRPrintReport:= TFormCRPrintReport.Create(Nil);

 Try
  param1:= dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
  param2:= 0 ;
  param3:= 0 ;

  FormCRPrintReport.CreateCo(dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger, cFaktura,
                param1, param2, param3) ;
 Finally
  FreeAndNil(FormCRPrintReport) ;//.Free ;
 End ;

end;



procedure TfrmInvoice.acClientPkgSpecarExecute(Sender: TObject);
Var param1, param2, param3 : Integer ;
    FormCRPrintReport: TFormCRPrintReport;
begin
 if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then exit ;
 FormCRPrintReport:= TFormCRPrintReport.Create(Nil);
 Try
  param1:= dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
  param2:= 0 ;
  param3:= 0 ;

  FormCRPrintReport.CreateCo(dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger, cPkgSpec,
                param1, param2, param3) ;
 Finally
  FreeAndNil(FormCRPrintReport) ;//.Free ;
 End ;

end;

procedure TfrmInvoice.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmInvoice.BitBtn2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 pmPrint.Popup(x,y);
end;

procedure TfrmInvoice.acBookingUpdate(Sender: TObject);
begin
 acBooking.Enabled:= StrToInt(TabControl1.Tabs[TabControl1.TabIndex]) > 0 ;
end;

procedure TfrmInvoice.cxLabel1Click(Sender: TObject);
var  FormCurrency: TFormCurrency;
begin
 with dmVidaInvoice, dmModule1 do
 Begin

 FormCurrency:= tFormCurrency.Create(Nil) ;
 Try
  cdsCurrency.Active:= True ;
  if FormCurrency.ShowModal = mrOk then
  Begin
   if cdsInvoiceHead.State = dsBrowse then
    cdsInvoiceHead.Edit ;

   cdsInvoiceHeadCurrencyNo.AsInteger:= cdsCurrencyCurrencyNo.AsInteger ;
   cdsInvoiceHeadCurrencyName.AsString:= cdsCurrencyCurrencyName.AsString ;
   cdsInvoiceHead.Post ;
  End ;

 Finally
  cdsCurrency.Active:= False ;
  FreeAndNil(FormCurrency) ;//.Free ;
 End ;
End ; //with
end;


procedure TfrmInvoice.cxLabel2Click(Sender: TObject);
var  FormSelectClient: TFormSelectClient;
begin
 with dmVidaInvoice, dmModule1 do
 Begin
  if cdsInvoiceHeadQuickInvoice.AsInteger = 1 then
  Begin
   FormSelectClient:= TFormSelectClient.Create(Nil);
   Try
    dmModule1.SQLSPClient.ParamByName('RoleType').AsInteger:= 1 ;
    dmModule1.SQLSPClient.Open ;

    dmModule1.cdsClient.Active:= True ;
    if FormSelectClient.ShowModal = mrOk then
    Begin
     if cdsInvoiceHead.State = dsBrowse then
      cdsInvoiceHead.Edit ;

     cdsInvoiceHeadCustomerNo.AsInteger:= dmModule1.cdsClientClientNo.AsInteger ;
     cdsInvoiceHeadCustomerName.AsString:= dmModule1.cdsClientClientName.AsString ;

     sq_ClientData.Close ;
     sq_ClientData.ParamByName('ClientNo').AsInteger:= dmModule1.cdsClientClientNo.AsInteger ;
     sq_ClientData.Open ;

     cdsInvoiceHeadLanguageCode.AsInteger:= sq_ClientDataLanguageCode.AsInteger ;

     cdsInvoiceHeadInvoiceText.AsVariant:=   GetInvoiceTextByClient (cdsInvoiceHeadCustomerNo.AsInteger) ;
     //sq_ClientDataInvoiceText.AsVariant ; //
     cdsInvoiceHeadDeliveryTerm.AsString:=  sq_ClientDataDeliveryTerm.AsString ;

     cdsInvoiceHeadDeliveryTermsNo.AsInteger:= sq_ClientDataDeliveryTerm_No.AsInteger ;

     cdsInvoiceHeadPaymentDescription.AsString:= sq_ClientDataPayDesc.AsString ;

//     cdsInvoiceHeadPaymentText.AsVariant:=

     cdsInvoiceHeadPaymentTermsNo.AsInteger:=  sq_ClientDataPaymentTermsNo.AsInteger ;

     cdsInvoiceHeadFreightInDiscount.AsInteger:=  sq_ClientDataFreightInDiscount.AsInteger ;
     cdsInvoiceHeadFreightInCommission.AsInteger:= sq_ClientDataFreightInCommission.AsInteger ;
     cdsInvoiceHeadCommissionPaidByCustomer.AsInteger:= sq_ClientDataCommissionPaidByCustomer.AsInteger ;
     cdsInvoiceHeadDiscount1.AsInteger:= sq_ClientDataDiscount1.AsInteger ;
     if (cdsInvoiceHeadCurrencyName.AsString <= '') and (cdsInvoiceHeadCurrencyNo.AsInteger < 1) then
     Begin
      cdsInvoiceHeadCurrencyName.AsString:= sq_ClientDataCURRENCYNAME.AsString ;
      cdsInvoiceHeadCurrencyNo.AsInteger:= sq_ClientDataCurrencyNo.AsInteger ;
     End ;

     cdsInvoiceHeadClientBillingAddressNo.AsInteger:= sq_ClientDataDefaultBillingAddressNo.AsInteger ;
     cdsInvoiceHeadAddressName.AsString:=  sq_ClientDataBILL_ADDRESS_NAME.AsString ;
     cdsInvoiceHeadAddressLine1.AsString:= sq_ClientDataBILL_ADDRESSLINE1.AsString ;
     cdsInvoiceHeadAddressLine2.AsString:= sq_ClientDataBILL_ADDRESSLINE2.AsString ;
     cdsInvoiceHeadAddressLine3.AsString:= sq_ClientDataBILL_ADDRESSLINE3.AsString ;
     cdsInvoiceHeadAddressLine4.AsString:= sq_ClientDataBILL_ADDRESSLINE4.AsString ;
     cdsInvoiceHeadStateOrProvince.AsString := sq_ClientDataBILL_STATEORPROVINCE.AsString ;
     cdsInvoiceHeadPostalCode.AsString := sq_ClientDataBILL_POSTALCODE.AsString ;
     cdsInvoiceHeadCityName.AsString:= sq_ClientDataBILL_ADDRESSCITY.AsString ;
     cdsInvoiceHeadCountryName.AsString := sq_ClientDataBILL_ADDRESSCOUNTRY.AsString ;

   Label42.Caption:= Trim(cdsInvoiceHeadAddressLine1.AsString)+', '+Trim(cdsInvoiceHeadAddressLine2.AsString)+', '+
   Trim(cdsInvoiceHeadAddressLine3.AsString)+', '+Trim(cdsInvoiceHeadAddressLine4.AsString)+', '+
   Trim(cdsInvoiceHeadCityName.AsString)+', '+Trim(cdsInvoiceHeadStateOrProvince.AsString)+', '+
   Trim(cdsInvoiceHeadPostalCode.AsString)+', '+Trim(cdsInvoiceHeadCountryName.AsString) ;



//     sq_ClientDataSHIPTO_ADDRESS_NAME.AsString :=
     cdsInvoiceHeadST_AddressLine1.AsString:= sq_ClientDataSHIPTO_ADDRESSLINE1.AsString ;
     cdsInvoiceHeadST_AddressLine2.AsString:= sq_ClientDataSHIPTO_ADDRESSLINE2.AsString ;
     cdsInvoiceHeadST_AddressLine3.AsString:= sq_ClientDataSHIPTO_ADDRESSLINE3.AsString ;
     cdsInvoiceHeadST_AddressLine4.AsString:= sq_ClientDataSHIPTO_ADDRESSLINE4.AsString ;
     cdsInvoiceHeadST_StateOrProvince.AsString:= sq_ClientDataSHIPTO_PROVINCE.AsString ;
     cdsInvoiceHeadST_PostalCode.AsString := sq_ClientDataSHIPTO_POSTALCODE.AsString ;
     cdsInvoiceHeadST_CityName.AsString := sq_ClientDataSHIPTO_CITY.AsString ;
     cdsInvoiceHeadST_CountryName.AsString := sq_ClientDataSHIPTO_COUNTRY.AsString ;

     cdsInvoiceHead.Post ;
     sq_ClientData.Close ;
    End ;
   Finally
    dmModule1.cdsClient.Active:= False ;
    dmModule1.SQLSPClient.Close ;
    FreeAndNil(FormSelectClient) ;//.Free ;
   End ;
  End //if..
  else
   ShowMessage('Kan inte ändra kund, (bara tillåtet i snabbfaktura)') ;
 End ; //with
end;


procedure TfrmInvoice.cxLabel3Click(Sender: TObject);
var   FormDelTerms: TFormDelTerms;
begin
 with dmVidaInvoice, dmModule1 do
 Begin

 FormDelTerms:= TFormDelTerms.Create(Nil);
 Try
  cdsDelTerms.Active:= True ;
  if FormDelTerms.ShowModal = mrOk then
  Begin

   if cdsInvoiceHead.State = dsBrowse then
    cdsInvoiceHead.Edit ;
   cdsInvoiceHeadDeliveryTermsNo.AsInteger:= cdsDelTermsDeliveryTerm_No.AsInteger ;
   cdsInvoiceHeadDeliveryTerm.AsString:= cdsDelTermsDeliveryTerm.AsString ;
   cdsInvoiceHead.Post ;
  End ;
 Finally
  cdsDelTerms.Active:= False ;
  FreeAndNil(FormDelTerms) ;//.Free ;
 End ;
 End ;

end;


procedure TfrmInvoice.cxLabel4Click(Sender: TObject);
var FormPaymentTerms: TFormPaymentTerms;
begin
 with dmVidaInvoice, dmModule1 do
 Begin

 FormPaymentTerms:= TFormPaymentTerms.Create(Nil);
 Try
//  sq_PaymentTerm.Close ;
  sq_PaymentTerm.ParamByName('LanguageCode').AsInteger:= cdsInvoiceHeadLanguageCode.AsInteger ;

  cdsPaymentTerm.Active:= True ;
  if FormPaymentTerms.ShowModal = mrOk then
  Begin

   if cdsInvoiceHead.State = dsBrowse then
    cdsInvoiceHead.Edit ;
   cdsInvoiceHeadPaymentDescription.AsString:= cdsPaymentTermDescription.AsString ;
   cdsInvoiceHeadPaymentTermsNo.AsInteger:= cdsPaymentTermPaymentTermsNo.AsInteger ;
   cdsInvoiceHeadFreightInDiscount.AsInteger:= cdsPaymentTermFreightInDiscount.AsInteger ;
   cdsInvoiceHeadFreightInCommission.AsInteger:= cdsPaymentTermFreightInCommission.AsInteger ;
   cdsInvoiceHeadDiscount1.AsInteger:= cdsPaymentTermDiscount1.AsInteger ;
   cdsInvoiceHeadCommissionPaidByCustomer.AsInteger:= cdsPaymentTermCommissionPaidByCustomer.AsInteger ;

   cdsInvoiceHead.Post ;
  End ;
 Finally
  cdsPaymentTerm.Active:= False ;
  FreeAndNil(FormPaymentTerms) ;//.Free ;
 End ;
 End ;

end;

procedure TfrmInvoice.cxLabel5Click(Sender: TObject);
var frmLanguage: TfrmLanguage ;
begin
 with dmVidaInvoice, dmModule1 do
 Begin

 frmLanguage:= TfrmLanguage.Create(Nil);
 Try
  if not cds_Language.Active then
  cds_Language.Active:= True ;
  if frmLanguage.ShowModal = mrOk then
  Begin

   if cdsInvoiceHead.State = dsBrowse then
    cdsInvoiceHead.Edit ;
   cdsInvoiceHeadLanguageCode.AsInteger:= cds_LanguageLanguageNo.AsInteger ;
   cdsInvoiceHead.Post ;
  End ;
 Finally
//  cds_Language.Active:= False ;
  FreeAndNil(frmLanguage) ;//.Free ;
 End ;
 End ;

end;

procedure TfrmInvoice.cxLabel6Click(Sender: TObject);
var  FormAddress: TFormAddress;
begin
 with dmVidaInvoice, dmModule1 do
 Begin
  FormAddress := TFormAddress.Create(Nil);
  Try
  cdsClientAddress.Active:= False ;
  sq_ClientAddress.Close ;
  sq_ClientAddress.ParamByName('ClientNo').AsInteger:= cdsInvoiceHeadCustomerNo.AsInteger ;
  sq_ClientAddress.ParamByName('AddressType').AsInteger:= 1 ;
  cdsClientAddress.Active:= True ;

  if FormAddress.ShowModal = mrOK then
  Begin
   if cdsInvoiceHead.State = dsBrowse then
    cdsInvoiceHead.Edit ;


     cdsInvoiceHeadClientBillingAddressNo.AsInteger:= cdsClientAddressADDRESS_NO.AsInteger ;
     cdsInvoiceHeadAddressName.AsString:=  cdsClientAddressADDRESS_NAME.AsString ;
     cdsInvoiceHeadAddressLine1.AsString:= cdsClientAddressADDRESSLINE1.AsString ;
     cdsInvoiceHeadAddressLine2.AsString:= cdsClientAddressADDRESSLINE2.AsString ;
     cdsInvoiceHeadAddressLine3.AsString:= cdsClientAddressADDRESSLINE3.AsString ;
     cdsInvoiceHeadAddressLine4.AsString:= cdsClientAddressADDRESSLINE4.AsString ;
     cdsInvoiceHeadStateOrProvince.AsString := cdsClientAddressPROVINCE.AsString ;
     cdsInvoiceHeadPostalCode.AsString := cdsClientAddressPOSTALCODE.AsString ;
     cdsInvoiceHeadCityName.AsString:= cdsClientAddressCITY.AsString ;
     cdsInvoiceHeadCountryName.AsString := cdsClientAddressCOUNTRY.AsString ;

   Label42.Caption:= Trim(cdsInvoiceHeadAddressLine1.AsString)+', '+Trim(cdsInvoiceHeadAddressLine2.AsString)+', '+
   Trim(cdsInvoiceHeadAddressLine3.AsString)+', '+Trim(cdsInvoiceHeadAddressLine4.AsString)+', '+
   Trim(cdsInvoiceHeadCityName.AsString)+', '+Trim(cdsInvoiceHeadStateOrProvince.AsString)+', '+
   Trim(cdsInvoiceHeadPostalCode.AsString)+', '+Trim(cdsInvoiceHeadCountryName.AsString) ;


   cdsInvoiceHead.Post ;
 End ;


 Finally
  FreeAndNil(FormAddress) ;//.Free ;
 End ;

 End ; //with

end;


end.
