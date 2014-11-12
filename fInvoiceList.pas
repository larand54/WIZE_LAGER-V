unit fInvoiceList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, Menus, dxDBTLCl, dxGrClms, SqlTimSt, dxEditor, dxExEdtr, dxEdLib,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar,   DateUtils ;

type
  TfrmInvoiceList = class(TfrmDBForm)
    grdInvoice: TdxDBGrid;
    ToolbtnOpenInvoice: TToolButton;
    ToolButton2: TToolButton;
    ToolbtnRefresh: TToolButton;
    Panel1: TPanel;
    rgConfirmed: TRadioGroup;
    ToolButton1: TToolButton;
    ToolbtnQuickInvoice: TToolButton;
    ToolButton3: TToolButton;
    ToolbtnDeleteInvoice: TToolButton;
    ToolButton4: TToolButton;
    ToolbtnPrintInvoice: TToolButton;
    ToolButton5: TToolButton;
    ToolButtonCreditInvoice: TToolButton;
    atOpen: TAction;
    grdInvoiceINT_INVNO: TdxDBGridMaskColumn;
    grdInvoiceAGENT: TdxDBGridMaskColumn;
    grdInvoiceSHIPPER: TdxDBGridMaskColumn;
    grdInvoiceCUSTOMER: TdxDBGridMaskColumn;
    grdInvoiceLO: TdxDBGridMaskColumn;
    grdInvoiceINVOICE_NO: TdxDBGridMaskColumn;
    grdInvoiceINVOICE_TYPE: TdxDBGridMaskColumn;
    grdInvoiceINVOICE_KONTO: TdxDBGridMaskColumn;
    grdInvoiceTO_BE_PAID: TdxDBGridMaskColumn;
    grdInvoiceCURRENCY: TdxDBGridMaskColumn;
    Label3: TLabel;
    PopupMenu1: TPopupMenu;
    FakturaSvensk1: TMenuItem;
    FakturaEngelsk1: TMenuItem;
    FakturaEngelskLength1: TMenuItem;
    FakturaEngelskKP1: TMenuItem;
    FakturaSvenskutanmoms1: TMenuItem;
    grdInvoiceINV_DATE: TdxDBGridDateColumn;
    grdInvoiceColumn12: TdxDBGridMaskColumn;
    ToolButton6: TToolButton;
    tbInvoiceGroup: TToolButton;
    lbLO_To_Invoice: TListBox;
    peInvoiceType: TdxPickEdit;
    ToolButton7: TToolButton;
    tlbAttestServices: TToolButton;
    Label1: TLabel;
    PopupMenu2: TPopupMenu;
    TaBortFaktura: TMenuItem;
    TRPBREV1: TMenuItem;
    SpecifikationEngelskVer2: TMenuItem;
    SpecifikationSvenskVer2: TMenuItem;
    SpecifikationEngelskmedproducentVer21: TMenuItem;
    SpecifikationEngelskAktuelldimensionVer21: TMenuItem;
    SpecifikationUtanPktNr: TMenuItem;
    SpecifikationIdahostyle1: TMenuItem;
    Angraproformafaktura: TMenuItem;
    FakturaEngelskfrAgust1: TMenuItem;
    FakturaEngelskLengthNM31: TMenuItem;
    FakturaEngelskLngdperpakettyp1: TMenuItem;
    nfSearchLO: TcxTextEdit;
    nfSearchInvoiceNo: TcxTextEdit;
    Label2: TLabel;
    acPrintClientInvoice: TAction;
    Kundspecifikfaktura1: TMenuItem;
    acClientPkgSpec: TAction;
    Klientpaketspecifikation1: TMenuItem;
    fomDate: TcxDateEdit;
    nfSearchLastNr: TcxTextEdit;
    Label4: TLabel;
    FakturaDanskutanmoms1: TMenuItem;
    SpecifikationDansk1: TMenuItem;
    FakturaEngelskdk1: TMenuItem;
    SpecifikatikonEngelskdk1: TMenuItem;
    EST1: TMenuItem;
    grdInvoiceAM3: TdxDBGridMaskColumn;
    grdInvoiceNM3: TdxDBGridMaskColumn;
    grdInvoiceKUND_NM3: TdxDBGridMaskColumn;
    procedure ToolbtnRefreshClick(Sender: TObject);
    procedure rgConfirmedClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolbtnQuickInvoiceClick(Sender: TObject);
    procedure ToolbtnDeleteInvoiceClick(Sender: TObject);
    procedure ToolButtonCreditInvoiceClick(Sender: TObject);
    procedure atOpenExecute(Sender: TObject);
    procedure nfSearchLOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FakturaSvensk1Click(Sender: TObject);
    procedure FakturaEngelsk1Click(Sender: TObject);
    procedure FakturaEngelskLength1Click(Sender: TObject);
    procedure FakturaEngelskKP1Click(Sender: TObject);
    procedure FakturaSvenskutanmoms1Click(Sender: TObject);
    procedure atExitExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tbInvoiceGroupClick(Sender: TObject);
    procedure peInvoiceTypeChange(Sender: TObject);
    procedure tlbAttestServicesClick(Sender: TObject);
    procedure nfSearchInvoiceNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TaBortFakturaClick(Sender: TObject);
    procedure TRPBREV1Click(Sender: TObject);
    procedure SpecifikationEngelskVer2Click(Sender: TObject);
    procedure SpecifikationSvenskVer2Click(Sender: TObject);
    procedure SpecifikationEngelskmedproducentVer21Click(Sender: TObject);
    procedure SpecifikationEngelskAktuelldimensionVer21Click(
      Sender: TObject);
    procedure SpecifikationUtanPktNrClick(Sender: TObject);
    procedure SpecifikationIdahostyle1Click(Sender: TObject);
    procedure AngraproformafakturaClick(Sender: TObject);
    procedure FakturaEngelskfrAgust1Click(Sender: TObject);
    procedure FakturaEngelskLengthNM31Click(Sender: TObject);
    procedure FakturaEngelskLngdperpakettyp1Click(Sender: TObject);
    procedure acPrintClientInvoiceExecute(Sender: TObject);
    procedure acClientPkgSpecExecute(Sender: TObject);
    procedure nfSearchLastNrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FakturaDanskutanmoms1Click(Sender: TObject);
    procedure SpecifikationDansk1Click(Sender: TObject);
    procedure FakturaEngelskdk1Click(Sender: TObject);
    procedure SpecifikatikonEngelskdk1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    ExitOption : Integer ;
    procedure RefreshInvoice(Sender: TObject;const InvoiceNo, LONo, InternalInvoiceNo : Integer);
    procedure DeleteInvoiceNoAndInvoice(Sender: TObject);
    procedure printSamlingsFaktura (const InvoiceGroupNo : Integer) ;
  public
    { Public declarations }
    constructor CreateCo(AOwner: TComponent; CompanyNo : Integer);
    destructor  Destroy; override;
  end;

var
  frmInvoiceList: TfrmInvoiceList;

implementation

uses
  VidaConst,
  VidaUser,
  VidaUtils, fInvoice, dmsDataConn, UnitCRViewReport, dmcVidaInvoice,
  uConfirmCodeDialog, dmsVidaContact, fAttestInvoice,
  UnitCRPrintReport;

{$R *.dfm}

destructor TfrmInvoiceList.Destroy;
begin
  grdInvoice.SaveToIniFile(dmsConnector.InifilesMap+'VisInvoiceList'+'.'+ThisUser.UserName);

  inherited;
end;

constructor TfrmInvoiceList.CreateCo(AOwner: TComponent; CompanyNo: Integer);
begin
end;


procedure TfrmInvoiceList.ToolbtnRefreshClick(Sender: TObject);
Var
 Save_Cursor:TCursor;
begin
  inherited;
 RefreshInvoice (Sender,-1, -1, -1) ;

end;

procedure TfrmInvoiceList.rgConfirmedClick(Sender: TObject);
begin
  inherited;
{ if rgConfirmed.ItemIndex = 0 then
  fomDate.Enabled:= False
   else
    fomDate.Enabled:= True ; }
 ToolbtnRefreshClick(Sender) ;
end;

procedure TfrmInvoiceList.FormShow(Sender: TObject);
begin
  inherited;
  ToolbtnRefreshClick(Sender) ;
end;

procedure TfrmInvoiceList.ToolbtnQuickInvoiceClick(Sender: TObject);
Var y  : Integer ;
    frmInvoice : TfrmInvoice ;
begin
  inherited;
 Try
 with  dmVidaInvoice do
 Begin
//Check and Compare that LO are valid to be invoiced together, if OK then
//Insert InvoiceHeader

  cdsInvoiceHead.Active:= True ;
  cdsInvoiceLO.Active:= True ;
  cdsInvoiceDetail.Active:= True ;
//  cdsOneLoad.Active:= True ;



//Insert Invoice Head
  cdsInvoiceHead.Insert ;
  cdsInvoiceHeadQuickInvoice.AsInteger:= 1 ;
  cdsInvoiceHeadInternalInvoiceNo.AsInteger                     := dmsConnector.NextMaxNo('InvoiceHeader'); 

  cdsInvoiceHeadDebit_Credit.AsInteger:= 0 ;

  cdsInvoiceHeadInvoiceType.AsInteger                           := 0 ;
  cdsInvoiceHeadInvoiceDate.AsSQLTimeStamp                      := DateTimeToSQLTimeStamp(date) ;
  cdsInvoiceHeadSupplierNo.AsInteger                            := VIDA_WOOD_CLIENTNO ; //Vida Wood
  cdsInvoiceHeadCustomerNo.AsInteger                            := -1 ;
  cdsInvoiceHeadAgentNo.AsInteger                               := -1 ;
  cdsInvoiceHeadAgentCommission.AsFloat                         := 0 ;
  cdsInvoiceHeadSendInvoiceToAgent.AsInteger                    := -1 ;
  cdsInvoiceHeadPaymentTermsNo.AsInteger                        := -1 ;
  cdsInvoiceHeadCommissionPaidByCustomer.AsInteger              := -1 ;
  cdsInvoiceHeadFreightInDiscount.AsInteger                     := -1 ;
  cdsInvoiceHeadFreightInCommission.AsInteger                   := -1 ;
  cdsInvoiceHeadDiscount1.AsFloat                               := 1 ;
  cdsInvoiceHeadCurrencyName.AsString                           := '' ;

  cdsInvoiceHeadDeliveryTermsNo.AsInteger                       := -1 ;
  cdsInvoiceHeadDestinationNo.AsInteger                         := -1 ;
  cdsInvoiceHeadStatus.AsInteger                                := 0 ;
  cdsInvoiceHeadVAT_OnInvoice.AsInteger                         := 0 ;
{  cdsInvoiceHeadInvoiceText.AsVariant                           := sq_GetInvoiceHeadDataInvoiceText.AsVariant ;
  cdsInvoiceHeadPaymentText.AsVariant                           := sq_GetInvoiceHeadDataPaymentText.AsVariant ;

  cdsInvoiceHeadCurrencyNo.AsInteger                            := sq_GetInvoiceHeadDataCurrencyNo.AsInteger ;
  cdsInvoiceHeadIncome_Account.AsString                         := '' ;
  cdsInvoiceHeadCustomerRecivablesAccount.AsString              := '' ;
  cdsInvoiceHeadVAT_OnInvoice.AsInteger                         := 0 ;
  cdsInvoiceHeadCarrierName.AsString                            := sq_GetInvoiceHeadDataCarrierName.AsString ;
  cdsInvoiceHeadETD.AsSQLTimeStamp                              := sq_GetInvoiceHeadDataETD.AsSQLTimeStamp ;
  cdsInvoiceHeadETA.AsSQLTimeStamp                              := sq_GetInvoiceHeadDataETA.AsSQLTimeStamp ;
  cdsInvoiceHeadDestinationNo.AsInteger                         := sq_GetInvoiceHeadDataDestinationNo.AsInteger ;
  cdsInvoiceHeadClientBillingAddressNo.AsInteger                := sq_GetInvoiceHeadDataClientBillingAddressNo.AsInteger ;
  cdsInvoiceHeadAddressName.AsString                            := sq_GetInvoiceHeadDataBILL_ADDRESS_NAME.AsString ;
  cdsInvoiceHeadAddressLine1.AsString                           := sq_GetInvoiceHeadDataAddressLine1.AsString ;
  cdsInvoiceHeadAddressLine2.AsString                           := sq_GetInvoiceHeadDataAddressLine2.AsString ;
  cdsInvoiceHeadAddressLine3.AsString                           := sq_GetInvoiceHeadDataAddressLine3.AsString ;
  cdsInvoiceHeadAddressLine4.AsString                           := sq_GetInvoiceHeadDataAddressLine4.AsString ;
  cdsInvoiceHeadStateOrProvince.AsString                        := sq_GetInvoiceHeadDataStateOrProvince.AsString ;
  cdsInvoiceHeadPostalCode.AsString                             := sq_GetInvoiceHeadDataPostalCode.AsString ;
  cdsInvoiceHeadCityName.AsString                               := sq_GetInvoiceHeadDataAddressCity.AsString ;
  cdsInvoiceHeadCountryName.AsString                            := sq_GetInvoiceHeadDataAddressCountry.AsString ;

  cdsInvoiceHeadAgentName.AsString                              := sq_GetInvoiceHeadDataAgentName.AsString ;
  cdsInvoiceHeadShipper.AsString                                := sq_GetInvoiceHeadDataShipper.AsString ;
  cdsInvoiceHeadCustomerName.AsString                           := sq_GetInvoiceHeadDataCustomerName.AsString ;
  cdsInvoiceHeadDeliveryTerm.AsString                           := sq_GetInvoiceHeadDataDeliveryTerm.AsString ;
  cdsInvoiceHeadPaymentDescription.AsString                     := sq_GetInvoiceHeadDataPayDesc.AsString ;
}
  cdsInvoiceHeadLanguageCode.AsInteger                          := 1 ;
//  cdsInvoiceHeadDestination.AsString                            := sq_GetInvoiceHeadDataDestination.AsString ;

  cdsInvoiceHeadCreatedUser.AsInteger                           := 2 ;
  cdsInvoiceHeadModifiedUser.AsInteger                          := 2 ;
  cdsInvoiceHeadDateCreated.AsSQLTimeStamp                      := DateTimeToSQLTimeStamp(Now) ;

{  cdsInvoiceHeadST_AddressName.AsString                         := sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESS_NAME.AsString ;
  cdsInvoiceHeadST_AddressLine1.AsString                        := sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE1.AsString ;
  cdsInvoiceHeadST_AddressLine2.AsString                        := sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE2.AsString ;
  cdsInvoiceHeadST_AddressLine3.AsString                        := sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE3.AsString ;
  cdsInvoiceHeadST_AddressLine4.AsString                        := sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE4.AsString ;
  cdsInvoiceHeadST_StateOrProvince.AsString                     := sq_GetInvoiceHeadDataAVROP_SHIPTO_PROVINCE.AsString ;
  cdsInvoiceHeadST_PostalCode.AsString                          := sq_GetInvoiceHeadDataAVROP_SHIPTO_POSTALCODE.AsString ;
  cdsInvoiceHeadST_CityName.AsString                            := sq_GetInvoiceHeadDataAVROP_SHIPTO_CITY.AsString ;
  cdsInvoiceHeadST_CountryName.AsString                         := sq_GetInvoiceHeadDataAVROP_SHIPTO_COUNTRY.AsString ;

  cdsInvoiceHeadAGENT_ADDRESS_NAME.AsString                     := sq_GetInvoiceHeadDataAGENT_ADDRESS_NAME.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE1.AsString              := sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE1.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE2.AsString              := sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE2.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE3.AsString              := sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE3.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE4.AsString              := sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE4.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_PROVINCE.AsString                  := sq_GetInvoiceHeadDataAGENT_SHIPTO_PROVINCE.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_POSTALCODE.AsString                := sq_GetInvoiceHeadDataAGENT_SHIPTO_POSTALCODE.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_CITY.AsString                      := sq_GetInvoiceHeadDataAGENT_SHIPTO_CITY.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_COUNTRY.AsString                   := sq_GetInvoiceHeadDataAGENT_SHIPTO_COUNTRY.AsString ;
 }
  cdsInvoiceHead.Post ;

//  sq_GetInvoiceHeadData.Next ;

 // sq_GetInvoiceHeadData.Close ;

    cdsInvoiceLO.Insert ;
    cdsInvoiceLOInternalInvoiceNo.AsInteger              := cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
    cdsInvoiceLOShippingPlanNo.AsInteger                 := -1 ;

    cdsInvoiceLOOrderNoText.AsString                     := '' ;
    cdsInvoiceLOReference.AsString                       := '' ;
    cdsInvoiceLOOurReference.AsString                    := '' ;
    cdsInvoiceLOSalesMan.AsString                        := 'Exe' ;
    cdsInvoiceLOBookingNo.AsInteger                      := -1 ;
    cdsInvoiceLOTotalFreightCost.AsFloat                 := 0 ;
    cdsInvoiceLOFreightCostPerUnit.AsFloat               := 0 ;
    cdsInvoiceLOInvoiceAdditionAmount.AsFloat := 0 ;
    cdsInvoiceLOInvoiceAdditionUnitNo.AsInteger          := 0 ;
    cdsInvoiceLOInvoiceAdditionDescription.AsString      := '' ;

    cdsInvoiceLOCreatedUser.AsInteger                    := 2 ;
    cdsInvoiceLOModifiedUser.AsInteger                   := 2 ;
    cdsInvoiceLODateCreated.AsSQLTimeStamp               := DateTimeToSQLTimeStamp(Now) ;
    cdsInvoiceLO.Post ;


    y:= 1 ;

    cdsInvoiceDetail.Insert ;
    cdsInvoiceDetailInternalInvoiceNo.AsInteger         := cdsInvoiceLOInternalInvoiceNo.AsInteger ;
    cdsInvoiceDetailShippingPlanNo.AsInteger            := cdsInvoiceLOShippingPlanNo.AsInteger ;
    cdsInvoiceDetailInvoiceDetailNo.AsInteger           := y ;
    cdsInvoiceDetailTypeOfRow.AsInteger                 := 2 ; //Additonal cost
    cdsInvoiceDetail.Post ;



 frmInvoice:= TfrmInvoice.Create(Nil);
 Try
  cdsInvoiceLO.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = -1' ;
  cdsInvoiceLO.Filtered:= True ;
  cdsInvoiceDetail.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = -1' ;
  cdsInvoiceDetail.Filtered:= True ;

  frmInvoice.TabControl1.Tabs.Clear ;

// for x := 0 to ListBox1.Count - 1 do
  frmInvoice.TabControl1.Tabs.Add('-1') ;

  frmInvoice.rgDebitCredit.Enabled:= True ;
  frmInvoice.ShowModal ;
 Finally
  FreeAndNil(frmInvoice) ;
  cdsInvoiceLO.Filtered:= False ;
  cdsInvoiceLO.Active:= False ;
  cdsInvoiceDetail.Filtered:= False ;
  cdsInvoiceDetail.Active:= False ;
  cdsInvoiceShipTo.Active:= False ;
 End ;

  sq_GetLOData.Close ;
 End ; //with dmVidaInvoice do

 Finally
//   dmVidaInvoice.Free ;
 End ;


End;

procedure TfrmInvoiceList.ToolbtnDeleteInvoiceClick(Sender: TObject);
Var TransNo : Cardinal ;
begin
  inherited;

 if MessageDlg('Attester gjorda mot fakturan försvinner om fakturan tas bort, vill du fortsätta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
     Exit ;
 With dmVidaInvoice do
 Begin

 Try

 if MessageDlg('Är du säker på att du vill ta bort fakturan?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    cdsInvoiceNumber.Active:= True ;
    if not cdsInvoiceNumber.Locate('InternalInvoiceNo',cdsInvoiceListINT_INVNO.AsInteger, []) then
    Begin
     TransNo := dmsConnector.StartTransaction ;
     Try
// taken care of by Invoiced_Load     sq_SetLSInvoicedStatus.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListInternalInvoiceNo.AsInteger ;
//     sq_SetLSInvoicedStatus.ExecSQL(false) ;
     sq_DeleteInvoice.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListINT_INVNO.AsInteger ;
     sq_DeleteInvoice.ExecSQL(false) ;
     dmsConnector.Commit(TransNo) ;
     Except
      dmsConnector.Rollback(TransNo) ;
     End ;
     cdsInvoiceList.Active:= False ;
     cdsInvoiceList.Active:= True ;
    End
    else
    ShowMessage('Cannot delete, Invoice number assigned!') ;
   End ;
 Finally
  cdsInvoiceNumber.Active:= False ;
//   dmVidaInvoice.Free ;
 End ;
  End ;//With  
end;

procedure TfrmInvoiceList.ToolButtonCreditInvoiceClick(Sender: TObject);
Var Credit_Int_Inv_No : Integer ;
begin
  inherited;
 with dmVidaInvoice do
 Begin

 Credit_Int_Inv_No:= 0 ;
 if MessageDlg('Vill du kreditera faktura nr '+
 cdsInvoiceListINVOICE_NO.AsString+' ? Obs ändring! Notera att faktura numret genererar ni lika som för debit fakturor, i faktura formuläret.',
    mtConfirmation, [mbYes, mbNo, mbCancel], 0)
  = mrYes then
   Begin
 if cdsInvoiceListINVOICE_KONTO.AsString = 'DEBIT' then
 Begin
 Try
  sq_Invoice_Credited.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListINT_INVNO.AsInteger ;
  cdsInvoice_Credited.Active:= True ;
  cdsInvoiceNumber.Active:= True ;
 if cdsInvoiceNumber.Locate('InternalInvoiceNo',cdsInvoiceListINT_INVNO.AsInteger, []) then
  Begin
   fInternalInvoiceNo:= cdsInvoiceListINT_INVNO.AsInteger ;
  if cdsInvoice_Credited.Locate('InternalInvoiceNo',cdsInvoiceListINT_INVNO.AsInteger, []) then
      ShowMessage('Invoice already Credited by user '+cdsInvoice_CreditedCreatedUser.AsString+'  See internal invoice no : '+cdsInvoice_CreditedNewInternalInvoiceNo.AsString)
      else
        Credit_Int_Inv_No:= CreateCreditInvoiceByCopyDebitInvoice(cdsInvoiceListINT_INVNO.AsInteger) ;

  End
  else
   ShowMessage('Invoice number must be generated before a credit invoice can be done.') ;

 Finally

  cdsInvoiceLO.Filtered:= False ;
  cdsInvoiceLO.Active:= False ;
  cdsInvoiceDetail.Filtered:= False ;
  cdsInvoiceDetail.Filter:= '';
  cdsInvoiceDetail.Active:= False ;
  cdsInvoice_Credited.Active:= False ;
  cdsInvoiceNumber.Active:= False ;
  cdsInvoiceShipTo.Active:= False ;
//  dmVidaInvoice.Free ;
  if Credit_Int_Inv_No > 0 then
  Begin
   rgConfirmed.ItemIndex:= 0 ;
   ToolbtnRefreshClick(Sender) ;
   if cdsInvoiceList.FindKey([Credit_Int_Inv_No]) then
    atOpenExecute(Sender) ;
  End ;
 End ;

 End
  else
   ShowMessage('This is a Credit Invoice, cannot credit a credit invoice!') ;
 End ;
 End ;// with
end;

procedure TfrmInvoiceList.atOpenExecute(Sender: TObject);
Var frmInvoice : TfrmInvoice ;
begin
  inherited;
 with dmVidaInvoice do
 Begin

 frmInvoice:= TfrmInvoice.Create(NIL);
 Try


  cdsInvoiceShipTo.Active:= True ;
  frmInvoice.TabControl1.Tabs.Clear ;
  cdsInvoiceHead.Active:= False ;
  sq_InvoiceHead.Close ;
  sq_InvoiceHead.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListINT_INVNO.AsInteger ;
  sq_InvoiceHead.Open ;
  cdsInvoiceHead.Active:= True ;
  sq_InvoiceLO.Close ;
  sq_InvoiceLO.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListINT_INVNO.AsInteger ;
//  cdsInvoiceLO.Active:= False ;
//  cdsInvoiceLO.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString ;
//  cdsInvoiceLO.Filtered:= True ;

  cdsInvoiceLO.Active:= True ;

  cdsInvoiceLO.First ;
  While not cdsInvoiceLO.Eof do
  Begin
   frmInvoice.TabControl1.Tabs.Add(cdsInvoiceLOShippingPlanNo.AsString) ;
   cdsInvoiceLO.Next ;
  End ;

  cdsInvoiceLO.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = '+frmInvoice.TabControl1.Tabs[0] ;
  cdsInvoiceLO.Filtered:= True ;

  sq_InvoiceDetail.Close ;
  sq_InvoiceDetail.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListINT_INVNO.AsInteger ;
//  cdsInvoiceDetail.Active:= True ;
//  cdsInvoiceDetail.Active:= False ;
  cdsInvoiceDetail.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = '+frmInvoice.TabControl1.Tabs[0] ;
  cdsInvoiceDetail.Filtered:= True ;
  cdsInvoiceDetail.Active:= True ;

 frmInvoice.ShowModal ;

 Finally
  fInternalInvoiceNo:= -1 ;

  sq_InvoiceDetail.Close ;
  cdsInvoiceLO.Filtered:= False ;
  cdsInvoiceLO.Active:= False ;
  cdsInvoiceDetail.Filtered:= False ;
  cdsInvoiceDetail.Filter:= '';
  cdsInvoiceDetail.Active:= False ;
  cdsInvoiceShipTo.Active:= False ;
  frmInvoice.Free ;
//  dmVidaInvoice.Free ;
 End ;
 End ; // with
end;

procedure TfrmInvoiceList.nfSearchLOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 inherited;
 if Key <> VK_RETURN then Exit;
 With dmVidaInvoice do
 Begin
  RefreshInvoice(Sender, -1, StrToIntDef(nfSearchLO.Text,0), -1);
  cdsInvoiceList.Locate('LO', StrToIntDef(nfSearchLO.Text,0), []) ;
 End ; //with
end;

procedure TfrmInvoiceList.FakturaSvensk1Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_NOTE.RPT') ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;

procedure TfrmInvoiceList.FakturaEngelsk1Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ; 
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;

procedure TfrmInvoiceList.FakturaEngelskLength1Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_längd_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ; 
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;

procedure TfrmInvoiceList.FakturaEngelskKP1Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_KP_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ; 
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.FakturaSvenskutanmoms1Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_u_moms_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ; 
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;

procedure TfrmInvoiceList.atExitExecute(Sender: TObject);
begin
 ExitOption:= 1 ; //Kill the form
  inherited;

end;

procedure TfrmInvoiceList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:= caFree ;
end;

procedure TfrmInvoiceList.FormCreate(Sender: TObject);
begin
  inherited;
 dmVidaInvoice:= TdmVidaInvoice.Create(Nil) ;
 ExitOption:= 0 ;
 peInvoiceType.ItemIndex:= 0 ;
 fomDate.Date:= Date - 15 ;
 grdInvoice.LoadFromIniFile(dmsConnector.InifilesMap+'VisInvoiceList'+'.'+ThisUser.UserName);
end;

procedure TfrmInvoiceList.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmVidaInvoice) ;//.Free ;
  frmInvoiceList:= Nil ;
end;

procedure TfrmInvoiceList.tbInvoiceGroupClick(Sender: TObject);
Var
    Roll_Back: Boolean ;
    TransactionNo : LongWord;
    Save_Cursor:TCursor;
    Duplicate : Boolean ;
    InvoiceGroupNo, y,x : Integer ;
begin
  inherited;
 Roll_Back:= False ;

 with grdInvoice, dmVidaInvoice do
 begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  Try

  lbLO_To_Invoice.Items.Clear ;
  DataSource.DataSet.DisableControls;
//Insert LO # to ListBox list
  for x := 0 to (SelectedCount - 1) do
  begin
   Duplicate := False ;
//  DataSource.DataSet.Bookmark := SelectedRows[x]; //1st variant
   DataSource.DataSet.GotoBookmark(Pointer(SelectedRows[x])); //2nd variant
   For y := 0 to lbLO_To_Invoice.Items.Count - 1 do
   Begin
    if cdsInvoiceListINVOICE_NO.AsString = lbLO_To_Invoice.Items[y] then
    Duplicate := True ;
   End ;
   if Duplicate = False then
   Begin
    lbLO_To_Invoice.Items.Add(cdsInvoiceListINT_INVNO.AsString) ;
   End ;
  end; //for..

  if lbLO_To_Invoice.Items.Count < 1 then
   Begin
    ShowMessage('Måste vara minst en faktura vald') ;
    Exit ;
   End ;
   Try
   InvoiceGroupNo := dmsConnector.NextMaxNo('InvoiceGroup') ;//dmsConnector.NextIDinTable('InvoiceGroup') ;
   TransactionNo := dmsConnector.StartTransaction;
   Try
   cds_InvoiceInGroup.Active:= True ;
   cds_InvoiceGroup.Active:= True ;
   cds_InvoiceGroup.Insert ;
   cds_InvoiceGroupInvoiceGroupNo.AsInteger:= InvoiceGroupNo ;//dmsConnector.NextMaxNo('InvoiceGroup');//dmsConnector.NextIDinTable('InvoiceGroup') ;
   cds_InvoiceGroupCreatedUser.AsInteger:= ThisUser.UserID ;
   cds_InvoiceGroupModifiedUser.AsInteger:= ThisUser.UserID ;
   cds_InvoiceGroupCreatedDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
   cds_InvoiceGroupModifiedDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
//   cds_InvoiceGroupNote.AsVariant:= '' ;
   cds_InvoiceGroup.Post ;

   For x:= 0 to lbLO_To_Invoice.Items.Count-1 do
   Begin
    cds_InvoiceInGroup.Insert ;
    cds_InvoiceInGroupInvoiceGroupNo.AsInteger:= cds_InvoiceGroupInvoiceGroupNo.AsInteger ;
    cds_InvoiceInGroupInternalInvoiceNo.AsInteger:= StrToInt(lbLO_To_Invoice.Items[x]) ;
    cds_InvoiceInGroup.Post;
   End ;

   if cds_InvoiceGroup.ChangeCount > 0 then
    Roll_Back:=  cds_InvoiceGroup.ApplyUpdates(0) > 0 ;

   if cds_InvoiceInGroup.ChangeCount > 0 then
    Roll_Back:= cds_InvoiceInGroup.ApplyUpdates(0) > 0 ;

   sp_vida_Populate_SamFaktura.ParamByName('InvGroupNo').AsInteger:= InvoiceGroupNo ;
   sp_vida_Populate_SamFaktura.ExecProc ;


   if Roll_Back then
   Begin
    dmsConnector.Rollback(TransactionNo) ;
    ShowMessage('Error skapa samlingsfaktura, rolling back.') ;
   End
   else
   Begin
    dmsConnector.Commit(TransactionNo);
    if MessageDlg('SamlingsfakturaNr '+cds_InvoiceGroupInvoiceGroupNo.AsString+' skapad. Vill du skriva ut?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     printSamlingsFaktura (InvoiceGroupNo) ;
   End ;

   except
    dmsConnector.Rollback(TransactionNo);
    raise;
   end;
   Finally
    cds_InvoiceInGroup.Active:= False ;
    cds_InvoiceGroup.Active:= False ;
   End ;


   Finally
    DataSource.DataSet.EnableControls;
    grdInvoice.ClearSelection ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
//    dmVidaInvoice.Free ;
   End ;
 End ; //with
end;

procedure TfrmInvoiceList.peInvoiceTypeChange(Sender: TObject);
begin
  inherited;
 ToolbtnRefreshClick(Sender) ;
end;

procedure TfrmInvoiceList.tlbAttestServicesClick(Sender: TObject);
Var x : Integer ;
 Save_Cursor:TCursor;
 frmAttestInvoice: TfrmAttestInvoice;
begin
  inherited;

 with dmVidaInvoice do
 Begin

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//ta bort next och prior, ladda inte allt, går det att undvika
 frmAttestInvoice:= TfrmAttestInvoice.Create(Nil);
 Try

  if peInvoiceType.ItemIndex = 3 then
   frmAttestInvoice.LCustomer.Caption:= 'Leverantör:'
    else
     frmAttestInvoice.LCustomer.Caption:= 'Kund:' ;

  frmAttestInvoice.peFaktTyp.ItemIndex:= peInvoiceType.ItemIndex ;
  frmAttestInvoice.peFaktTyp.ReadOnly:= True ;
  mt_AttestRow.Active:= True ;
  mt_InvDtl_Att.Active:= True ;
  cdsInvoiceShipTo.Active:= True ;
  frmAttestInvoice.TabControl1.Tabs.Clear ;

  sq_InvoiceHead_II.ParamByName('InvoiceType').AsInteger:= peInvoiceType.ItemIndex ;
  cdsInvoiceHead_II.Active:= True ;
//  cdsInvoiceHead_II.Filter:= 'InvoiceType = '+IntToStr(peInvoiceType.ItemIndex) ;
//  cdsInvoiceHead_II.Filtered:= True ;  
  if cdsInvoiceHead_II.FindKey([cdsInvoiceListINT_INVNO.AsInteger]) then
  Begin
  sq_InvoiceLO.Close ;
  sq_InvoiceLO.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceHead_IIInternalInvoiceNo.AsInteger ;


  cdsInvoiceLO.Active:= True ;

  cdsInvoiceLO.First ;
  While not cdsInvoiceLO.Eof do
  Begin
   frmAttestInvoice.TabControl1.Tabs.Add(cdsInvoiceLOShippingPlanNo.AsString) ;
   cdsInvoiceLO.Next ;
  End ;

  cdsInvoiceLO.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHead_IIInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = '+frmAttestInvoice.TabControl1.Tabs[0] ;
  cdsInvoiceLO.Filtered:= True ;



  dmVidaInvoice.cds_Att_Ext_ServicesII.Active:= False ;
  dmVidaInvoice.sq_Att_Ext_ServicesII.ParamByName('InternalInvoiceNo').AsInteger:= dmVidaInvoice.cdsInvoiceHead_IIInternalInvoiceNo.AsInteger ;
  dmVidaInvoice.cds_Att_Ext_ServicesII.Active:= True ;

  dmVidaInvoice.sq_InvDtl_Att.Close ;
  dmVidaInvoice.sq_InvDtl_Att.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceHead_IIInternalInvoiceNo.AsInteger ;
//  dmVidaInvoice.sq_InvDtl_Att.ParamByName('ShippingPlanNo').AsInteger:= StrToInt(frmAttestInvoice.TabControl1.Tabs[frmAttestInvoice.TabControl1.TabIndex]) ;
//  dmVidaInvoice.sq_InvDtl_Att.ParamByName('Sequensno').AsInteger:=
  dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger ;
  cds_InvDtl_Att.Active:= True ;
  While not cds_InvDtl_Att.Eof do
  Begin
   mt_InvDtl_Att.Insert ;
   For x := 0 to 15 do
   mt_InvDtl_Att.Fields.Fields[x].AsVariant:= cds_InvDtl_Att.Fields.Fields[x].AsVariant ;
   mt_InvDtl_AttSequensNo.AsInteger:= 0 ;
   mt_InvDtl_AttChecked.AsInteger:= 0 ;
   mt_InvDtl_Att.Post ;
   cds_InvDtl_Att.next ;
  End ;

  sq_GetAttestRow.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceHead_IIInternalInvoiceNo.AsInteger ;
  sq_GetAttestRow.Open ;
  While not sq_GetAttestRow.Eof do
  Begin
   mt_AttestRow.Insert ;
   For x := 0 to 3 do
    mt_AttestRow.Fields.Fields[x].AsVariant:= sq_GetAttestRow.Fields.Fields[x].AsVariant ;
    mt_AttestRow.Post ;
   sq_GetAttestRow.Next ;
  End ;

  sq_GetAttestRow.Close ;


  frmAttestInvoice.ShowModal ;

  End
   else
    ShowMessage('Kan inte fokusera internal fakturanr '+cdsInvoiceListINT_INVNO.AsString) ;

 Finally
  fInternalInvoiceNo:= -1 ;

  sq_InvDtl_Att.Close ;
  cdsInvoiceLO.Filtered:= False ;
  cdsInvoiceLO.Active:= False ;
  cds_InvDtl_Att.Active:= False ;
  cdsInvoiceShipTo.Active:= False ;
  mt_InvDtl_Att.Active:= False ;
  mt_AttestRow.Active:= False ;
  FreeAndNil(frmAttestInvoice) ;//.Free ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ; // with
end;

procedure TfrmInvoiceList.DeleteInvoiceNoAndInvoice(Sender: TObject);
Var TransNo : Cardinal ;
begin
  inherited;
 Try
 if dmVidaInvoice.cdsInvoiceListINVOICE_KONTO.AsString  = 'DEBIT' then
 Begin
 if MessageDlg('Är du säker på att du vill ta bort fakturan?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   With dmVidaInvoice do
   Begin
     TransNo := dmsConnector.StartTransaction ;
     Try
// taken care of by Invoiced_Load     sq_SetLSInvoicedStatus.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListInternalInvoiceNo.AsInteger ;
//     sq_SetLSInvoicedStatus.ExecSQL(false) ;
     sq_DeleteInvoice.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListINT_INVNO.AsInteger ;
     sq_DeleteInvoice.ExecSQL(false) ;
     dmsConnector.Commit(TransNo) ;
     Except
      dmsConnector.Rollback(TransNo) ;
     End ;
     cdsInvoiceList.Active:= False ;
     cdsInvoiceList.Active:= True ;

   End ;
  End ;
 End
 else
  ShowMessage('Kan inte ta bort kredit faktura.') ;
 Finally
//   dmVidaInvoice.Free ;
 End ;
end;

procedure TfrmInvoiceList.nfSearchInvoiceNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 inherited;
 rgConfirmed.ItemIndex:= 1 ;
 if Key <> VK_RETURN then Exit;
 With dmVidaInvoice do
 Begin
  RefreshInvoice(Sender, StrToIntDef(nfSearchInvoiceNo.Text,0),-1, -1);
  cdsInvoiceList.Locate('INVOICE_NO', StrToIntDef(nfSearchInvoiceNo.Text,0), []) ;
 End ; //with
end;

procedure TfrmInvoiceList.TaBortFakturaClick(Sender: TObject);
var frmConfirmCodeDialog: TfrmConfirmCodeDialog;
begin
  inherited;

 if MessageDlg('Attester gjorda mot fakturan försvinner om fakturan tas bort, vill du fortsätta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
     Exit ;

 frmConfirmCodeDialog:= TfrmConfirmCodeDialog.Create(Nil) ;
 Try
 if frmConfirmCodeDialog.ShowModal = mrOk then
 Begin
  if Trim(frmConfirmCodeDialog.eConfirmationCode.Text) = '22x075' then
  Begin
   if rgConfirmed.ItemIndex = 1 then
   Begin
    if MessageDlg('Fakturan har ett nummer tilldelad, vill du ta bort det och fakturan?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    DeleteInvoiceNoAndInvoice(Sender) ;
   End
   else
    DeleteInvoiceNoAndInvoice(Sender) ;
  End
   else
    ShowMessage('Wrong confirmation code, please ask your supervisor for help.') ;
 End ;
 Finally
  FreeAndNil(frmConfirmCodeDialog) ;//.Free ;
 End ;
end;

procedure TfrmInvoiceList.TRPBREV1Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
  
  if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 dmsContact.InsertUserIssueReport (ThisUser.UserID, dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger) ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('TRP_BREV.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ; 
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.printSamlingsFaktura (const InvoiceGroupNo : Integer) ;
Var FormCRViewReport : TFormCRViewReport ;
begin
 inherited;
 if InvoiceGroupNo < 1 then exit ;

// dmsContact.InsertUserIssueReport (ThisUser.UserID, dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger) ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SAML_FAKT.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(InvoiceGroupNo);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ; 
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.SpecifikationEngelskVer2Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_VER2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ; 
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;

procedure TfrmInvoiceList.SpecifikationSvenskVer2Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_SV_VER2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;

procedure TfrmInvoiceList.SpecifikationEngelskmedproducentVer21Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_PROD_VER2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ; 
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.SpecifikationEngelskAktuelldimensionVer21Click(
  Sender: TObject);
  Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPEC_ACT_VER2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.SpecifikationUtanPktNrClick(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPEC_NOPKGNO.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ; 
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.SpecifikationIdahostyle1Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_IDAHO_VER2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ; 
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.AngraproformafakturaClick(Sender: TObject);
begin
  inherited;
//Ångra proforma faktura
end;

procedure TfrmInvoiceList.FakturaEngelskfrAgust1Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_IDAHO_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.FakturaEngelskLengthNM31Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_längd_plus_NM3_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ; 
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.FakturaEngelskLngdperpakettyp1Click(
  Sender: TObject);
 Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_PKTTYP_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.acPrintClientInvoiceExecute(Sender: TObject);
Var param1, param2, param3 : Integer ;
    FormCRPrintReport: TFormCRPrintReport;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRPrintReport:= TFormCRPrintReport.Create(Nil);
 Try
  param1:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger ;
  param2:= 0 ;
  param3:= 0 ;
  FormCRPrintReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cFaktura,
                param1, param2, param3) ;

 Finally
  FreeAndNil(FormCRPrintReport) ; //.Free ;
 End ;

end;

procedure TfrmInvoiceList.acClientPkgSpecExecute(Sender: TObject);
Var param1, param2, param3 : Integer ;
    FormCRPrintReport: TFormCRPrintReport;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
 FormCRPrintReport:= TFormCRPrintReport.Create(Nil);
 Try
  param1:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger ;
  param2:= 0 ;
  param3:= 0 ;

  FormCRPrintReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec,
                param1, param2, param3) ;
 Finally
  FreeAndNil(FormCRPrintReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoiceList.RefreshInvoice(Sender: TObject;const InvoiceNo, LONo, InternalInvoiceNo : Integer);
Var
 Save_Cursor:TCursor;
begin
  inherited;

  fomDate.Date:= RecodeHour(fomDate.Date,0) ;
  fomDate.Date:= RecodeMinute(fomDate.Date,0) ;
  fomDate.Date:= RecodeSecond(fomDate.Date,0) ;
    
  if rgConfirmed.ItemIndex = 1 then
  Begin
   tlbAttestServices.Enabled:= True ;
   ToolbtnDeleteInvoice.Enabled:= False ;
   if peInvoiceType.ItemIndex = 0 then
    ToolButtonCreditInvoice.Enabled:= True
    else
     ToolButtonCreditInvoice.Enabled:= False ;
  End
  else
  Begin
   ToolbtnDeleteInvoice.Enabled:= True ;
   ToolButtonCreditInvoice.Enabled:= False ;
   tlbAttestServices.Enabled:= False ;
  End ;



// with daMoLM1 do
 with  dmVidaInvoice do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  grdInvoice.DataSource.DataSet.DisableControls ;
  Try

  cdsInvoiceList.Active:= False ;
  sq_InvoiceList.Close ;
  sq_InvoiceList.SQL.Clear ;

   tbInvoiceGroup.Enabled:= True ;
   sq_InvoiceList.SQL.Add('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO,') ;
   Case peInvoiceType.ItemIndex of
    0 :   if rgConfirmed.ItemIndex = 1 then
           sq_InvoiceList.SQL.Add('INO.InvoiceNo AS INVOICE_NO,')
            else
             sq_InvoiceList.SQL.Add('-1 AS INVOICE_NO,') ;
    1 :   if rgConfirmed.ItemIndex = 1 then
            sq_InvoiceList.SQL.Add('INO.ProformaInvoiceNo AS INVOICE_NO,')
             else
              sq_InvoiceList.SQL.Add('-1 AS INVOICE_NO,') ;
    2 :   if rgConfirmed.ItemIndex = 1 then
            sq_InvoiceList.SQL.Add('INO.ProformaInvoiceNo AS INVOICE_NO,')
             else
              sq_InvoiceList.SQL.Add('-1 AS INVOICE_NO,') ;
    3 :   if rgConfirmed.ItemIndex = 1 then
            sq_InvoiceList.SQL.Add('INO.PO_InvoiceNo AS INVOICE_NO,')
             else
              sq_InvoiceList.SQL.Add('-1 AS INVOICE_NO,') ;
    4 :   if rgConfirmed.ItemIndex = 1 then
            sq_InvoiceList.SQL.Add('INO.InvoiceNo AS INVOICE_NO,')
             else
              sq_InvoiceList.SQL.Add('-1 AS INVOICE_NO,') ;
    5 :   if rgConfirmed.ItemIndex = 1 then
            sq_InvoiceList.SQL.Add('INO.InvoiceNo AS INVOICE_NO,')
             else
              sq_InvoiceList.SQL.Add('-1 AS INVOICE_NO,') ;

    6 :   if rgConfirmed.ItemIndex = 1 then
            sq_InvoiceList.SQL.Add('INO.InvoiceNo AS INVOICE_NO,')
             else
              sq_InvoiceList.SQL.Add('-1 AS INVOICE_NO,') ;
   End ;//Case


   Case peInvoiceType.ItemIndex of
    0 :    sq_InvoiceList.SQL.Add(QuotedStr('NORMAL')+'AS INVOICE_TYPE,') ;
    1 :    sq_InvoiceList.SQL.Add(QuotedStr('PROFORMA, INVOICE LATER')+'AS INVOICE_TYPE,') ;
    2 :    sq_InvoiceList.SQL.Add(QuotedStr('PROFORMA')+'AS INVOICE_TYPE,') ;
    3 :    sq_InvoiceList.SQL.Add(QuotedStr('PROFORMA')+'AS INVOICE_TYPE,') ;
    4 :    sq_InvoiceList.SQL.Add(QuotedStr('USA')+'AS INVOICE_TYPE,') ;
    5 :    sq_InvoiceList.SQL.Add(QuotedStr('FW')+'AS INVOICE_TYPE,') ;
   End ;


   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN '+'''DEBIT''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN '+'''CREDIT''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_KONTO,') ;

   sq_InvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,') ;
   sq_InvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID, IH.CustomerNo,') ;
//   sq_InvoiceList.SQL.Add('spi.SHIPPED_NOMM3 AS NM3, spi.SHIPPED_ACTM3 AS AM3,') ;

   sq_InvoiceList.SQL.Add('SUM(PT.totalm3Nominal) as NM3, SUM(PT.totalm3Actual) as AM3,') ;

   sq_InvoiceList.SQL.Add('dpi.KUND_NM3, dpi.KONT_UNIT') ;

   sq_InvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH') ;
   sq_InvoiceList.SQL.Add('Inner Join dbo.InvoiceLO IL ON IL.InternalInvoiceNo = IH.InternalInvoiceNo') ;
//   sq_InvoiceList.SQL.Add('Left Outer Join dbo.shippedPerInvoice spi on spi.InternalInvoiceNo = IH.InternalInvoiceNo') ;
   sq_InvoiceList.SQL.Add('Left Outer Join dbo.DelVolInvoice dpi on dpi.InternalInvoiceNo = IH.InternalInvoiceNo') ;

   sq_InvoiceList.SQL.Add('LEFT OUTER JOIN dbo.Invoiced_Load ILD ') ;
   sq_InvoiceList.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.LoadNo = ILD.LoadNo AND') ;
   sq_InvoiceList.SQL.Add('                      LD.ShippingPlanNo = ILD.SHIPPINGPLANNO') ;
   sq_InvoiceList.SQL.Add('INNER JOIN dbo.PackageType PT ON PT.PackageTypeNo = LD.PackageTypeNo') ;
   sq_InvoiceList.SQL.Add('ON ILD.InternalInvoiceNo = IL.InternalInvoiceNo') ;
   sq_InvoiceList.SQL.Add('                     AND ILD.ShippingPlanNo = IL.SHIPPINGPLANNO') ;



   if rgConfirmed.ItemIndex = 1 then
   Case peInvoiceType.ItemIndex of
    0 : sq_InvoiceList.SQL.Add('Inner Join dbo.InvoiceNumber INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
    1 : sq_InvoiceList.SQL.Add('Inner Join dbo.ProformaInvoiceNumber INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
    2 : sq_InvoiceList.SQL.Add('Inner Join dbo.ProformaInvoiceNumber INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
    3 : sq_InvoiceList.SQL.Add('Inner Join dbo.InvoiceNumber_PO INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
    4 : sq_InvoiceList.SQL.Add('Inner Join dbo.InvoiceNo_USA INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
    5 : sq_InvoiceList.SQL.Add('Inner Join dbo.InvNo_FW INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
   End ;

   sq_InvoiceList.SQL.Add('WHERE IH.InvoiceType = '+IntToStr(peInvoiceType.ItemIndex)) ;
   if InvoiceNo <> -1 then
   Begin
   if rgConfirmed.ItemIndex = 1 then
   Case peInvoiceType.ItemIndex of
    0 : sq_InvoiceList.SQL.Add('AND INO.InvoiceNo = '+IntToStr(InvoiceNo)) ;
    1 : sq_InvoiceList.SQL.Add('AND INO.ProformaInvoiceNo = '+IntToStr(InvoiceNo)) ;
    2 : sq_InvoiceList.SQL.Add('AND INO.ProformaInvoiceNo = '+IntToStr(InvoiceNo)) ;
    3 : sq_InvoiceList.SQL.Add('AND INO.PO_InvoiceNo = '+IntToStr(InvoiceNo)) ;
    4 : sq_InvoiceList.SQL.Add('AND INO.InvoiceNo = '+IntToStr(InvoiceNo)) ;
    5 : sq_InvoiceList.SQL.Add('AND INO.InvoiceNo = '+IntToStr(InvoiceNo)) ;
   End ;
   End ;

   if LONo <> -1 then
    sq_InvoiceList.SQL.Add('AND IL.ShippingPlanNo = '+IntToStr(LONo)) ;

   if  (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
//   and (rgConfirmed.ItemIndex = 1) then
   sq_InvoiceList.SQL.Add('AND IH.InvoiceDate >= '+QuotedStr(DateToStr(fomDate.Date)) ) ;

   if InternalInvoiceNo  <> -1 then
    sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo = '+IntToStr(InternalInvoiceNo)) ;

   if rgConfirmed.ItemIndex = 0 then
   Case peInvoiceType.ItemIndex of
    0 : sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo NOT IN (SELECT InternalInvoiceNo FROM dbo.InvoiceNumber)') ;
    1 : sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo NOT IN (SELECT InternalInvoiceNo FROM dbo.ProformaInvoiceNumber)') ;
    2 : sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo NOT IN (SELECT InternalInvoiceNo FROM dbo.ProformaInvoiceNumber)') ;
    3 : sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo NOT IN (SELECT InternalInvoiceNo FROM dbo.InvoiceNumber_PO)') ;
    4 : sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo NOT IN (SELECT InternalInvoiceNo FROM dbo.InvoiceNo_USA)') ;
    5 : sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo NOT IN (SELECT InternalInvoiceNo FROM dbo.InvNo_FW)') ;
   End ;


   sq_InvoiceList.SQL.Add('Group by IH.InternalInvoiceNo, IH.InvoiceDate, IH.AgentName, IL.Shipper,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName, IL.ShippingPlanNo,') ;

   Case peInvoiceType.ItemIndex of
    0 :   if rgConfirmed.ItemIndex = 1 then
           sq_InvoiceList.SQL.Add('INO.InvoiceNo,') ;
    1 :   if rgConfirmed.ItemIndex = 1 then
            sq_InvoiceList.SQL.Add('INO.ProformaInvoiceNo,') ;
    2 :   if rgConfirmed.ItemIndex = 1 then
            sq_InvoiceList.SQL.Add('INO.ProformaInvoiceNo,') ;
    3 :   if rgConfirmed.ItemIndex = 1 then
            sq_InvoiceList.SQL.Add('INO.PO_InvoiceNo,') ;
    4 :   if rgConfirmed.ItemIndex = 1 then
            sq_InvoiceList.SQL.Add('INO.InvoiceNo,') ;
    5 :   if rgConfirmed.ItemIndex = 1 then
            sq_InvoiceList.SQL.Add('INO.InvoiceNo,') ;
    6 :   if rgConfirmed.ItemIndex = 1 then
            sq_InvoiceList.SQL.Add('INO.InvoiceNo,') ;
   End ;//Case

   sq_InvoiceList.SQL.Add('IH.Debit_Credit,') ;
   sq_InvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid,') ;
   sq_InvoiceList.SQL.Add('IH.CurrencyName, IH.CustomerNo, dpi.KUND_NM3, dpi.KONT_UNIT') ;


   sq_InvoiceList.SQL.Add('ORDER BY InvoiceDate desc') ;
 if thisuser.UserID = 8 then
  sq_InvoiceList.SQL.SaveToFile('sq_InvoiceList.TXT');

  sq_InvoiceList.Open ;
  cdsInvoiceList.Active:= True ;

   Finally
    grdInvoice.DataSource.DataSet.EnableControls ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   End ;
 End ; // with
end;

procedure TfrmInvoiceList.nfSearchLastNrKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var  InvoiceType, InternalInvoiceNo : Integer ;
begin
  inherited;
 rgConfirmed.ItemIndex:= 1 ;
 if Key <> VK_RETURN then Exit;
 With dmVidaInvoice do
 Begin
  InternalInvoiceNo:= Get_InternalInvoiceNo (InvoiceType, StrToIntDef(nfSearchLastNr.Text,0)) ;
  if InternalInvoiceNo <> -1 then
  Begin
   peInvoiceType.ItemIndex:= InvoiceType ;
   RefreshInvoice(Sender, -1, -1, InternalInvoiceNo);
  End
  else
   ShowMessage('No match') ;
 End ; //with
end;

procedure TfrmInvoiceList.FakturaDanskutanmoms1Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_u_moms_NOTE_dk.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.SpecifikationDansk1Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_SV_VER2_dk.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.FakturaEngelskdk1Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_NOTE_dk.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.SpecifikatikonEngelskdk1Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_VER2_dk.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  grdInvoice.SaveToIniFile(dmsConnector.InifilesMap+'VisInvoiceList'+'.'+ThisUser.UserName);
  CanClose:= True ;
end;

end.
