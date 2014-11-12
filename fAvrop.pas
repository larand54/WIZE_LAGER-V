unit fAvrop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, Math, dxDBTLCl, dxGrClms, StdCtrls,
  IniFiles, Menus, DBXpress, DB, DBCtrls, SqlTimSt, dxBarExtItems, dxBar,
  dxEditor,
  dxExEdtr,
  dxDBEdtr,
  dxDBELib,
  Grids,
  DBGrids,

  DBClient, FMTBcd, SqlExpr, Provider, dxEdLib,
  Buttons, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit ;

type
  TfrmAvrop = class(TForm) 
    grdAvrop: TdxDBGrid;
    grdAvropLO: TdxDBGridMaskColumn;
    grdAvropORDERNUMBER: TdxDBGridMaskColumn;
    grdAvropREFERENCE: TdxDBGridMaskColumn;
    grdAvropFROMWEEK: TdxDBGridMaskColumn;
    grdAvropTOWEEK: TdxDBGridMaskColumn;
    grdAvropCLIENT: TdxDBGridMaskColumn;
    grdAvropAGENT: TdxDBGridMaskColumn;
    grdAvropMARK: TdxDBGridMaskColumn;
    grdAvropPRODUCT: TdxDBGridMaskColumn;
    grdAvropLENGTH: TdxDBGridMaskColumn;
    grdAvropVOLUME: TdxDBGridMaskColumn;
    grdAvropVOLUNIT: TdxDBGridMaskColumn;
    grdAvropDESTINATION: TdxDBGridMaskColumn;
    grdAvropORDERNO: TdxDBGridMaskColumn;
    grdAvropCLIENTNO: TdxDBGridMaskColumn;
    grdAvropDESTINATIONNO: TdxDBGridMaskColumn;
    grdAvropUNIQUERECORDNO: TdxDBGridMaskColumn;
    grdAvropSALESREGIONNO: TdxDBGridMaskColumn;
    Panel1: TPanel;
    Splitter1: TSplitter;
    pLoadOrder: TPanel;
    pLoads: TPanel;
    Splitter2: TSplitter;
    grdNormalLO: TdxDBGrid;
    grdNormalLOLO: TdxDBGridMaskColumn;
    grdNormalLOUNIQUERECORDNO: TdxDBGridMaskColumn;
    grdNormalLOSUPPLIER: TdxDBGridMaskColumn;
    grdNormalLOPRODUCT: TdxDBGridMaskColumn;
    grdNormalLOLENGTH: TdxDBGridMaskColumn;
    grdNormalLOM3: TdxDBGridMaskColumn;
    grdNormalLOVOLUME: TdxDBGridMaskColumn;
    grdNormalLODELIVERED: TdxDBGridMaskColumn;
    grdNormalLOVOLUNIT: TdxDBGridMaskColumn;
    grdNormalLOCURRENCY: TdxDBGridMaskColumn;
    grdNormalLOPRICE: TdxDBGridMaskColumn;
    grdNormalLOPRICEUNIT: TdxDBGridMaskColumn;
    grdNormalLOSUPPLIERNO: TdxDBGridMaskColumn;
    grdNormalLOPKGCODE: TdxDBGridMaskColumn;
    grdNormalLOFROMWEEK: TdxDBGridMaskColumn;
    grdNormalLOTOWEEK: TdxDBGridMaskColumn;
    grdNormalLOSHIPTO: TdxDBGridMaskColumn;
    grdNormalLODESTINATION: TdxDBGridMaskColumn;
    grdNormalLOCUSTPLANOBJECTNO: TdxDBGridMaskColumn;
    grdNormalLOOBJECTTYPE: TdxDBGridMaskColumn;
    grdNormalLOSHIPTYPE: TdxDBGridMaskColumn;
    Splitter3: TSplitter;
    Panel2: TPanel;
    grdExtraLO: TdxDBGrid;
    Panel3: TPanel;
    grdLoads: TdxDBGrid;
    PanelAvropLoad: TPanel;
    grdNormalLOColumn23: TdxDBGridColumn;
    pmInvoice: TPopupMenu;
    OpenLoad1: TMenuItem;
    grdLoadsLO: TdxDBGridMaskColumn;
    grdLoadsLOADNO: TdxDBGridMaskColumn;
    grdLoadsFS: TdxDBGridMaskColumn;
    grdLoadsLOADEDDATE: TdxDBGridColumn;
    grdLoadsLOAD_ID: TdxDBGridMaskColumn;
    grdLoadsINTERNAL_INVOICENO: TdxDBGridMaskColumn;
    pmNormalLO: TPopupMenu;
    LoadOrderdittverk2: TMenuItem;
    LoadOrderAllaverk2: TMenuItem;
    pmExtraLO: TPopupMenu;
    LoadOrderdittverk3: TMenuItem;
    LoadOrderAllaverk3: TMenuItem;
    pmgrdAvrop: TPopupMenu;
    Cancel1: TMenuItem;
    Progress1: TMenuItem;
    Complete1: TMenuItem;
    grdAvropSTATUS2: TdxDBGridImageColumn;
    grdNormalLOSTATUS: TdxDBGridImageColumn;
    grdExtraLOLO: TdxDBGridMaskColumn;
    grdExtraLOUNIQUERECORDNO: TdxDBGridMaskColumn;
    grdExtraLOSUPPLIER: TdxDBGridMaskColumn;
    grdExtraLOPRODUCT: TdxDBGridMaskColumn;
    grdExtraLOLENGTH: TdxDBGridMaskColumn;
    grdExtraLOM3: TdxDBGridMaskColumn;
    grdExtraLOVOLUME: TdxDBGridMaskColumn;
    grdExtraLOVOLUNIT: TdxDBGridMaskColumn;
    grdExtraLOCURRENCY: TdxDBGridMaskColumn;
    grdExtraLOPRICE: TdxDBGridMaskColumn;
    grdExtraLOPRICEUNIT: TdxDBGridMaskColumn;
    grdExtraLOSUPPLIERNO: TdxDBGridMaskColumn;
    grdExtraLOPKGCODE: TdxDBGridMaskColumn;
    grdExtraLOFROMWEEK: TdxDBGridMaskColumn;
    grdExtraLOTOWEEK: TdxDBGridMaskColumn;
    grdExtraLOSHIPTO: TdxDBGridMaskColumn;
    grdExtraLODESTINATION: TdxDBGridMaskColumn;
    grdExtraLOOBJECTTYPE: TdxDBGridMaskColumn;
    grdExtraLODELIVERED: TdxDBGridMaskColumn;
    grdExtraLOCUSTOMER: TdxDBGridMaskColumn;
    grdExtraLOSTATUS: TdxDBGridImageColumn;
    grdLoadsACT_M3: TdxDBGridMaskColumn;
    DeleteLoad1: TMenuItem;
    NewLoad1: TMenuItem;
    grdLoadsSTATUS: TdxDBGridImageColumn;
    grdLoadsINVOICENO: TdxDBGridMaskColumn;
    grdLoadsPO_INVOICENO: TdxDBGridMaskColumn;
    ActionList1: TActionList;
    ac_Exit: TAction;
    ac_customizeLayout: TAction;
    ac_Booking: TAction;
    ac_MakeInvoice: TAction;
    ac_Refresh: TAction;
    imglistActions: TImageList;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    lbMakeInvoice: TdxBarLargeButton;
    lbBooking: TdxBarLargeButton;
    lbPrint: TdxBarLargeButton;
    ppmPrintReports: TdxBarPopupMenu;
    acPrintLoad: TAction;
    acPrintContract: TAction;
    acPrintLO: TAction;
    acPrintTrpOrder: TAction;
    Space: TdxBarStatic;
    CustomizegrdNormalLO: TMenuItem;
    CustomizegrdExtraLO: TMenuItem;
    CustomizegrdLoads: TMenuItem;
    CustomizegrdAvrop: TMenuItem;
    bbPrintOrder: TdxBarButton;
    bbPrintLO: TdxBarButton;
    bbPrintLoad: TdxBarButton;
    bbPrintTrpOrder: TdxBarButton;
    grdLoadsPROFORMA_INVOICENO: TdxDBGridMaskColumn;
    grdLoadsFOLJESEDEL: TdxDBGridMaskColumn;
    bbTally_Ver2: TdxBarButton;
    mLog: TMemo;
    Edit2: TEdit;
    Label1: TLabel;
    Panel4: TPanel;
    cbStatus: TcxComboBox;
    Label2: TLabel;
    bcMarketRegions: TcxComboBox;
    Label3: TLabel;
    bcSalesRegions: TcxComboBox;
    Label4: TLabel;
    cbLoadsNotInvoiced: TCheckBox;
    rgOrderType: TRadioGroup;
    cbFilter: TCheckBox;
    Edit1: TEdit;
    Label5: TLabel;
    cbClient: TcxComboBox;
    LabelKlient: TLabel;
    PopupMenu1: TPopupMenu;
    pmShortCuts: TPopupMenu;
    Booking1: TMenuItem;
    Stng1: TMenuItem;
    Skapafaktura1: TMenuItem;
    Uppdatera1: TMenuItem;
    acOpenLoad: TAction;
    acNewLoad: TAction;
    acDeleteLoad: TAction;
    acChangeLoadLayout: TAction;
    Nylast1: TMenuItem;
    ppnalast1: TMenuItem;
    procedure grdAvropCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure LoadOrderdittverk2Click(Sender: TObject);
    procedure LoadOrderAllaverk2Click(Sender: TObject);
    procedure LoadOrderdittverk3Click(Sender: TObject);
    procedure LoadOrderAllaverk3Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Progress1Click(Sender: TObject);
    procedure Complete1Click(Sender: TObject);
    procedure grdLoadsCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure rgOrderTypeClick(Sender: TObject);
    procedure grdLoadsDblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ac_customizeLayoutExecute(Sender: TObject);
    procedure ac_ExitExecute(Sender: TObject);
    procedure ac_BookingExecute(Sender: TObject);
    procedure ac_RefreshExecute(Sender: TObject);
    procedure ac_MakeInvoiceExecute(Sender: TObject);
    procedure acPrintContractExecute(Sender: TObject);
    procedure acPrintLOExecute(Sender: TObject);
    procedure acPrintTrpOrderExecute(Sender: TObject);
    procedure cbFilterClick(Sender: TObject);
    procedure CustomizegrdNormalLOClick(Sender: TObject);
    procedure CustomizegrdExtraLOClick(Sender: TObject);
    procedure CustomizegrdAvropClick(Sender: TObject);
    procedure bbTally_Ver2Click(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure acOpenLoadExecute(Sender: TObject);
    procedure acNewLoadExecute(Sender: TObject);
    procedure acDeleteLoadExecute(Sender: TObject);
    procedure acChangeLoadLayoutExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    ClientNo,
    MarknadNo,
    RegionNo,
    GlobalLONo,
    UNIQUERECORDNO: Integer ;

    function  BackgroundColor(iStatus: integer): TColor;

    Function  ConvertFreightCostToCurrencyFromSEK({Freight cost}FreightCost: Double;{Convert from}ToCurrencyNo:Integer) : Double ;
    Function  ConvertFreightCostFromCurrencyToSEK({Freight cost}FreightCost: Double;{Convert from}FromCurrencyNo:Integer) : Double ;
    procedure Summarize(Sender: TObject);
    procedure setStatus(const Value: integer);
//    function  FindAvrop(Sender : TObject) : Boolean ;
    procedure MakeInvoice(Sender: TObject);
    procedure Refresh_Avrop(Sender: TObject;const LONo : Integer);
    procedure GotoMyBookmark(Sender: TObject);
    procedure SetMyBookmark(Sender: TObject);
    procedure BuildAvropSQL (const LONo : Integer) ;
  public
    { Public declarations }
    AppName: String ;
    procedure CreateCo(CompanyNo : Integer);
  end;

var
  frmAvrop: TfrmAvrop;

implementation

{$R *.dfm}

uses
  VidaConst,
  VidaUser,
  VidaUtils, fInvoice, dmsDataConn, UnitdmModule1, dmLM1, UnitBookingForm,
  UnitCRViewReport, fConfirmLoad, dmcVidaInvoice, UnitLoadEntry, dmBooking,
  dmsVidaContact, dmcVidaSystem;


procedure TfrmAvrop.CreateCo(CompanyNo: Integer);
begin
  // Load column widths set last time.
  grdAvrop.LoadFromIniFile(dmsConnector.InifilesMap+'VisAvrop'+'.'+ThisUser.UserName);
  grdNormalLO.LoadFromIniFile(dmsConnector.InifilesMap+'VisAvrop'+'.'+ThisUser.UserName);
  grdExtraLO.LoadFromIniFile(dmsConnector.InifilesMap+'VisAvrop'+'.'+ThisUser.UserName);
  grdLoads.LoadFromIniFile(dmsConnector.InifilesMap+'VisAvrop'+'.'+ThisUser.UserName);


  dmsContact.LoadRegions(bcSalesRegions.Properties.Items);
  bcSalesRegions.Properties.Items.Insert(0,'ALLA');
  if bcSalesRegions.Properties.Items.Count > 0 then
   bcSalesRegions.ItemIndex:= 0 ;

  dmsContact.LoadMarketRegions(bcMarketRegions.Properties.Items) ;
  if bcMarketRegions.Properties.Items.Count > 0 then
   bcMarketRegions.ItemIndex:= 0 ;
  grdAvropLO.Sorted:= csDown ;
end;

procedure TfrmAvrop.Refresh_Avrop(Sender: TObject;const LONo : Integer);
var
  Save_Cursor : TCursor;
begin
 if daMoLM1.cdsSetAvrop.ChangeCount > 0 then
  daMoLM1.cdsSetAvrop.ApplyUpdates(0) ;

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try

  With daMoLM1 do
  Begin
   cdsAvrop.DisableControls ;
   Try
   cdsAvrop.Active:= False ;
   BuildAvropSQL (LONo) ;
   cdsAvrop.Active:= True ;
   cdsNormalLO.Active:= False ;
   cdsNormalLO.Active:= True ;
   Finally
    cdsAvrop.EnableControls ;
   End ;
  End ;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmAvrop.grdAvropCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  iStatusColumn : Integer;
  iStatus : integer;
begin

  if ColumnIsGrouped(AColumn,grdAvrop) then
    Exit;

  // get the status of this LO
  iStatusColumn := grdAvrop.ColumnByName('grdAvropStatus2').Index;
  iStatus := ANode.Values[iStatusColumn];


  // Set the color for this row, based on LO status
  if ANode.Values[iStatusColumn] <> null then
   AColor := BackgroundColor(iStatus);
end;

function TfrmAvrop.BackgroundColor(iStatus: integer): TColor;
begin
  assert( iStatus in [STATUS_PRELIMINARY..STATUS_COMPLETE], 'Invalid Status');
  case iStatus of
{    STATUS_PRELIMINARY : Result := ThisUser.clBackPreliminaryLO;
    STATUS_NEW         : Result := ThisUser.clBackNewLO;
    STATUS_REJECTED    : Result := ThisUser.clBackRejectedLO;
    STATUS_ACCEPTED    : Result := ThisUser.clBackAcceptedLO;
    STATUS_COMPLETE    : Result := ThisUser.clBackCompletedLO; }

    STATUS_PRELIMINARY:  Result := ThisUser.clBackPreliminaryLO;
            STATUS_NEW:  Result := $00BFFFFF;
       STATUS_REJECTED:  Result := $00B0AAFB;
       STATUS_ACCEPTED:  Result := $00EBFDEA;
       STATUS_COMPLETE:  Result := $00C6FDCB;

    else
      result := clWindow;
    end;
end;


procedure TfrmAvrop.MakeInvoice(Sender: TObject);
Var y, x : Integer ;
    FreightCost, M3Net, M3Nom, LopM_ACT : Double ;
    InternalInvoiceNo,
    NoOfPieces : Integer ;
    CURRMisMatch, CustomerMisMatch, Duplicate : Boolean ;
    Trans1 : TTransactionDesc ;
    Save_Cursor:TCursor;
    DeleteTdmVidaInvoice : Boolean ;
    CURR_String, CustNo_String, LO_String   : TStrings ;
    frmInvoice : TfrmInvoice ;


Procedure AddInvoiceHead ;
Begin
 with dmVidaInvoice do
 begin
  if not sq_GetInvoiceHeadData.Eof then
  Begin
   if ThisUser.UserID = 8 then
    mLog.Lines.Add('Before cdsInvoiceHead.Insert') ;
   cdsInvoiceHead.Insert ;
   cdsInvoiceHeadQuickInvoice.AsInteger:= 0 ;
   cdsInvoiceHeadInternalInvoiceNo.AsInteger                     := InternalInvoiceNo ;//dmsConnector.NextMaxNo('InvoiceHeader'); //dmsConnector.NextIDinTable('InvoiceHeader') ;

   if rgOrderType.ItemIndex = 0 then
   cdsInvoiceHeadInvoiceType.AsInteger                           := 0  //Normal invoice as default
   else
   cdsInvoiceHeadInvoiceType.AsInteger                           := 3 ; //Purhcase invoice as

   cdsInvoiceHeadDebit_Credit.AsInteger                          := cDebit ; //Debit invoice as default
   cdsInvoiceHeadInvoiceDate.AsSQLTimeStamp                      := DateTimeToSQLTimeStamp(date) ;
   cdsInvoiceHeadSupplierNo.AsInteger                            := VIDA_WOOD_CLIENTNO ; //Vida Wood
   cdsInvoiceHeadCustomerNo.AsInteger                            := sq_GetInvoiceHeadDataCustomerNo.AsInteger ;
   cdsInvoiceHeadAgentNo.AsInteger                               := sq_GetInvoiceHeadDataAgentNo.AsInteger ;
   cdsInvoiceHeadAgentCommission.AsFloat                         := sq_GetInvoiceHeadDataAgentCommission.AsFloat ;
   cdsInvoiceHeadSendInvoiceToAgent.AsInteger                    := sq_GetInvoiceHeadDataSendInvoiceToAgent.AsInteger ;
   cdsInvoiceHeadPaymentTermsNo.AsInteger                        := sq_GetInvoiceHeadDataPaymentTermsNo.AsInteger ;
   cdsInvoiceHeadCommissionPaidByCustomer.AsInteger              := sq_GetInvoiceHeadDataCommissionPaidByCustomer.AsInteger ;
   cdsInvoiceHeadFreightInDiscount.AsInteger                     := sq_GetInvoiceHeadDataFreightInDiscount.AsInteger ;
   cdsInvoiceHeadFreightInCommission.AsInteger                   := sq_GetInvoiceHeadDataFreightInCommission.AsInteger ;
   cdsInvoiceHeadDiscount1.AsFloat                               := sq_GetInvoiceHeadDataDiscount1.AsFloat ;
   cdsInvoiceHeadCurrencyName.AsString                           := sq_GetInvoiceHeadDataCurrencyName.AsString ;

   cdsInvoiceHeadDeliveryTermsNo.AsInteger                       := sq_GetInvoiceHeadDataDeliveryTermsNo.AsInteger ;
   cdsInvoiceHeadDestinationNo.AsInteger                         := sq_GetInvoiceHeadDataDestinationNo.AsInteger ;
   cdsInvoiceHeadStatus.AsInteger                                := 0 ;
   if ThisUser.UserID = 8 then
    mLog.Lines.Add('before cdsInvoiceHeadInvoiceText.AsVariant') ;
   cdsInvoiceHeadInvoiceText.AsVariant                           := GetInvoiceDocTextByOrderNo (sq_GetInvoiceHeadDataOrderNo.AsInteger) ;
//   sq_GetInvoiceHeadDataInvoiceText.AsVariant ;


   if ThisUser.UserID = 8 then
    mLog.Lines.Add('after cdsInvoiceHeadInvoiceText.AsVariant') ;

   cdsInvoiceHeadPaymentText.AsVariant                           := sq_GetInvoiceHeadDataPaymentText.AsVariant ;

   if sq_GetInvoiceHeadDataCustomerNoOH.AsInteger = sq_GetInvoiceHeadDataCustomerNo.AsInteger then
   Begin
    cdsInvoiceHeadPaymentDescription.AsString                     := sq_GetInvoiceHeadDataPayDescOH.AsString ;
    cdsInvoiceHeadDeliveryTerm.AsString                           := sq_GetInvoiceHeadDataDeliveryTermOH.AsString ;
   End
   else
   Begin
    cdsInvoiceHeadPaymentDescription.AsString                     := sq_GetInvoiceHeadDataPayDesc.AsString ;
    cdsInvoiceHeadDeliveryTerm.AsString                           := sq_GetInvoiceHeadDataDeliveryTerm.AsString ;
   End ;



   cdsInvoiceHeadCurrencyNo.AsInteger                            := sq_GetInvoiceHeadDataCurrencyNo.AsInteger ;
   cdsInvoiceHeadIncome_Account.AsString                         := '' ;
   cdsInvoiceHeadCustomerRecivablesAccount.AsString              := '' ;
   cdsInvoiceHeadVAT_OnInvoice.AsInteger                         := sq_GetInvoiceHeadDataVAT_ONINVOICE.AsInteger ;
   if cdsInvoiceHeadVAT_OnInvoice.AsInteger = Null then
   cdsInvoiceHeadVAT_OnInvoice.AsInteger:= 0 ;

//   if cdsInvoiceHeadCurrencyNo.AsInteger = 10001 then    cdsInvoiceHeadVAT_OnInvoice.AsInteger:= 1 ;



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

   cdsInvoiceHeadCustomerName.AsString                           := sq_GetInvoiceHeadDataCustomerName.AsString ;
   cdsInvoiceHeadSearchName.AsString                             := sq_GetInvoiceHeadDataSearchName.AsString ;


   cdsInvoiceHeadLanguageCode.AsInteger                          := sq_GetInvoiceHeadDataLanguageCode.AsInteger ;
   cdsInvoiceHeadDestination.AsString                            := sq_GetInvoiceHeadDataDestination.AsString ;

   cdsInvoiceHeadCreatedUser.AsInteger                           := ThisUser.UserID ;
   cdsInvoiceHeadModifiedUser.AsInteger                          := ThisUser.UserID ;
   cdsInvoiceHeadDateCreated.AsSQLTimeStamp                      := DateTimeToSQLTimeStamp(Now) ;

   cdsInvoiceHeadST_AddressName.AsString                         := sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESS_NAME.AsString ;
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
   cdsInvoiceHeadVAT.AsString                                    := sq_GetInvoiceHeadDataVAT.AsString ;
   cdsInvoiceHeadSalesOrgNo.AsString                             := sq_GetInvoiceHeadDataSalesOrgNo.AsString ;

   if ThisUser.UserID = 8 then
    mLog.Lines.Add('Before cdsInvoiceHead.Post') ;
   cdsInvoiceHead.Post ;
   if ThisUser.UserID = 8 then
    mLog.Lines.Add('After cdsInvoiceHead.Post') ;
   if cdsInvoiceHead.ChangeCount > 0 then
    cdsInvoiceHead.ApplyUpdates(-1) ;
   if ThisUser.UserID = 8 then
    mLog.Lines.Add('After cdsInvoiceHead.ApplyUpdates(-1)') ;

  End  //while sq_GetInvoiceHeadData.
  else
   Begin
    ShowMessage('Inga laster att fakturera.') ;
   // Exit ;
   End ;
 End ; //with
End ;

procedure AddLOData ;
Begin
 with dmVidaInvoice do
 begin
   sq_GetLOData.Close ;
   sq_GetLOData.ParamByName('ShippingPlanNo').AsInteger:= StrToInt(LO_String[x]) ;
//   sq_GetLOData.ParamByName('ShippingPlanNo').AsInteger:= StrToInt(lbLO_To_Invoice.Items[x]) ;
   sq_GetLOData.ParamByName('CustomerNo').AsInteger:= cdsInvoiceHeadCustomerNo.AsInteger ; // cdsAvropCLIENTNO.AsInteger ; // Avrop customerNo
   sq_GetLOData.Open ;
   if ThisUser.UserID = 8 then
    mLog.Lines.Add('sq_GetLOData.Open') ;


//Insert Invoice LO
   if not sq_GetLOData.Eof then
   Begin
    cdsInvoiceLO.Insert ;
   if ThisUser.UserID = 8 then
    mLog.Lines.Add('After cdsInvoiceLO.Insert') ;

    cdsInvoiceLOInternalInvoiceNo.AsInteger              := cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
    cdsInvoiceLOShippingPlanNo.AsInteger                 := StrToInt(LO_String[x]) ;
    cdsInvoiceLOOrderNoText.AsString                     := sq_GetLODataORDERNUMBER.AsString ;
    cdsInvoiceLOReference.AsString                       := sq_GetLODataReference.AsString ;
    cdsInvoiceLOOurReference.AsString                    := sq_GetLODataOurReference.AsString ;
    cdsInvoiceLOSalesMan.AsString                        := sq_GetLODataSalesMan.AsString ;
    cdsInvoiceLOBookingNo.AsInteger                      := sq_GetLODataBookingNo.AsInteger ;
    cdsInvoiceLOTotalFreightCost.AsFloat                 := 0 ; //Get total freight cost
    cdsInvoiceLOFreightCostPerUnit.AsFloat               := 0 ; //Get freight cost per unit
    cdsInvoiceLOInvoiceAdditionAmount.AsFloat            := sq_GetLODataADDITION_AMOUNT.AsFloat ;
    cdsInvoiceLOInvoiceAdditionUnitNo.AsInteger          := sq_GetLODataADDITION_UNITNO.AsInteger ;
    cdsInvoiceLOInvoiceAdditionDescription.AsString      := sq_GetLODataADDITION_DESC.AsString ;
    cdsInvoiceLOCreatedUser.AsInteger                    := ThisUser.UserID ;
    cdsInvoiceLOModifiedUser.AsInteger                   := ThisUser.UserID ;
    cdsInvoiceLODateCreated.AsSQLTimeStamp               := DateTimeToSQLTimeStamp(Now) ;

    cdsInvoiceLOCarrierName.AsString                     := sq_GetLODataCarrierName.AsString ;
    cdsInvoiceLOETD.AsSQLTimeStamp                       := sq_GetLODataETD.AsSQLTimeStamp ;
    cdsInvoiceLOETA.AsSQLTimeStamp                       := sq_GetLODataETA.AsSQLTimeStamp ;
    cdsInvoiceLOShipper.AsString                         := sq_GetLODataShipper.AsString ;
    cdsInvoiceLOTrpID.AsString                           := sq_GetLODataTrpID.AsString ;

   if ThisUser.UserID = 8 then
    mLog.Lines.Add('Before cdsInvoiceLO.Post') ;
    cdsInvoiceLO.Post ;
   if ThisUser.UserID = 8 then
    mLog.Lines.Add('After cdsInvoiceLO.Post') ;
   End ;
 End ; //with
End ;


//ADD FREIGHT COST IN TO  INVOICE DETAIL if Booking exist for current LO Number
Procedure AddFreigthCost ;
Begin
 with dmVidaInvoice do
 begin
   sq_GetFreightCost.Close ;
   sq_GetFreightCost.ParamByName('ShippingPlanNo').AsInteger:= cdsInvoiceLOShippingPlanNo.AsInteger ;
   sq_GetFreightCost.Open ;
    if ThisUser.UserID = 8 then
     mLog.Lines.Add('After add freight cost sq_GetFreightCost.Open') ;
   if not sq_GetFreightCost.Eof then
   Begin
    cdsInvoiceDetail.Insert ;
    if ThisUser.UserID = 8 then
     mLog.Lines.Add('After add freight cdsInvoiceDetail.Insert') ;
    if ThisUser.UserID = 8 then
     mLog.Lines.Add('After cdsInvoiceDetail.Insert') ;
    cdsInvoiceDetailInternalInvoiceNo.AsInteger         := cdsInvoiceLOInternalInvoiceNo.AsInteger ;
    cdsInvoiceDetailShippingPlanNo.AsInteger            := cdsInvoiceLOShippingPlanNo.AsInteger ;
    cdsInvoiceDetailInvoiceDetailNo.AsInteger           := y ;
    cdsInvoiceDetailTypeOfRow.AsInteger                 := 3 ; //Freigth cost
    cdsInvoiceDetailProductDescription.AsString         := 'Freight Cost' ;
    cdsInvoiceDetailPriceUnit.AsString                  := sq_GetFreightCostTemplateUnitName.AsString ;
//    sq_GetFreightCostFreightCostVolUnit.AsString ;//Get unit name ;
//    cdsInvoiceDetailVolumeUnit.AsString                 := sq_GetFreightCostFreightCostVolUnit.AsString ;//Get unit name ;

    if sq_GetFreightCostFreightCostCurrency.AsInteger <> cdsInvoiceHeadCurrencyNo.AsInteger then
    Begin
     if cdsInvoiceHeadCurrencyNo.AsInteger = 10001{SEK} then
      Begin
       FreightCost:= ConvertFreightCostFromCurrencyToSEK({Freight cost}sq_GetFreightCostFreightCost.AsFloat,{Convert from}sq_GetFreightCostFreightCostCurrency.AsInteger) ;
       cdsInvoiceDetailPrice.AsFloat:= RoundTo(FreightCost,-2) ;
      End
      else
      Begin
       if sq_GetFreightCostFreightCostCurrency.AsInteger <> 10001{SEK} then
       Begin
        FreightCost:= ConvertFreightCostFromCurrencyToSEK({Freight cost}sq_GetFreightCostFreightCost.AsFloat,{Convert from}sq_GetFreightCostFreightCostCurrency.AsInteger) ;
        FreightCost:= ConvertFreightCostToCurrencyFromSEK({Freight cost}FreightCost,cdsInvoiceHeadCurrencyNo.AsInteger) ;
       End
       else
        FreightCost:= ConvertFreightCostToCurrencyFromSEK({Freight cost}sq_GetFreightCostFreightCost.AsFloat,cdsInvoiceHeadCurrencyNo.AsInteger) ;
       cdsInvoiceDetailPrice.AsFloat:= RoundTo(FreightCost,-2) ;
      End ;
    End
    else
    cdsInvoiceDetailPrice.AsFloat:= sq_GetFreightCostFreightCost.AsFloat ;

   sq_GetFreightCost.Close ;

    if cdsInvoiceDetailPriceUnit.AsString = 'm3 FDxaL' then
     Begin
      cdsInvoiceDetailProductValue.AsFloat:= RoundTo(M3Net*cdsInvoiceDetailPrice.AsFloat, -3) ;
//      cdsInvoiceDetailProductValue.AsFloat                := M3Net *  cdsInvoiceDetailPrice.AsFloat ;
     End
     else
     if cdsInvoiceDetailPriceUnit.AsString = 'm3 nDxnL' then
     Begin
      cdsInvoiceDetailProductValue.AsFloat:= RoundTo(M3Nom*cdsInvoiceDetailPrice.AsFloat, -2) ;
//      cdsInvoiceDetailProductValue.AsFloat                := M3Nom *  cdsInvoiceDetailPrice.AsFloat ;
     End
     else
     if cdsInvoiceDetailPriceUnit.AsString = 'Stycketal' then
     Begin
//      cdsInvoiceDetailProductValue.AsFloat                := NoOfPieces *  cdsInvoiceDetailPrice.AsFloat ;
      cdsInvoiceDetailProductValue.AsFloat:= RoundTo(NoOfPieces*cdsInvoiceDetailPrice.AsFloat, -2) ;
     End
     else
     Begin
      cdsInvoiceDetailProductValue.AsFloat                := cdsInvoiceDetailPrice.AsFloat ;
     End ;

    cdsInvoiceDetailCreatedUser.AsInteger               := ThisUser.UserID ;
    cdsInvoiceDetailModifiedUser.AsInteger              := ThisUser.UserID ;
    cdsInvoiceDetailDateCreated.AsSQLTimeStamp          := DateTimeToSQLTimeStamp(Now) ;
    if ThisUser.UserID = 8 then
     mLog.Lines.Add('Before add freight cost cdsInvoiceDetail.Post') ;
    cdsInvoiceDetail.Post ;
    if ThisUser.UserID = 8 then
     mLog.Lines.Add('After add freight cost cdsInvoiceDetail.Post') ;
//    if dmVidaInvoice.cdsInvoiceDetail.ChangeCount > 0 then   dmVidaInvoice.cdsInvoiceDetail.ApplyUpdates(-1) ;
    y:= Succ(y) ;
   End ;
 End ; //with
End ;

//ADD INVOICE DETAIL for an Additional costs if such exist for current LO Number
procedure  AddAdditionalCost ;
//Var FreightCost: Double ;
Begin
 with dmVidaInvoice do
 begin
   if (cdsInvoiceLOInvoiceAdditionAmount.AsFloat > 0) //then
    or    (cdsInvoiceLOInvoiceAdditionAmount.AsFloat < 0) then
   Begin
    cdsInvoiceDetail.Insert ;
   if ThisUser.UserID = 8 then
    mLog.Lines.Add('After add cost cdsInvoiceDetail.Insert ') ;
    cdsInvoiceDetailInternalInvoiceNo.AsInteger         := cdsInvoiceLOInternalInvoiceNo.AsInteger ;
    cdsInvoiceDetailShippingPlanNo.AsInteger            := cdsInvoiceLOShippingPlanNo.AsInteger ;
    cdsInvoiceDetailInvoiceDetailNo.AsInteger           := y ;
    cdsInvoiceDetailTypeOfRow.AsInteger                 := 2 ; //Additional cost
    cdsInvoiceDetailPriceUnit.AsString                  := sq_GetLODataADDITION_PRICEUNIT.AsString ;

    cdsInvoiceDetailProductDescription.AsString         := cdsInvoiceLOInvoiceAdditionDescription.AsString ;
    cdsInvoiceDetailPrice.AsFloat                       := cdsInvoiceLOInvoiceAdditionAmount.AsFloat ;
    cdsInvoiceDetailVolumeUnit.AsString                 := cdsInvoiceLOInvoiceAdditionUnitNo.AsString ;//Get unit name ;
//    cdsInvoiceDetailProductValue.AsFloat                := cdsInvoiceLOInvoiceAdditionAmount.AsFloat ;

    if cdsInvoiceDetailPriceUnit.AsString = 'm3 FDxaL' then
     Begin
      cdsInvoiceDetailProductValue.AsFloat:= RoundTo(M3Net*cdsInvoiceDetailPrice.AsFloat, -2) ;
//      cdsInvoiceDetailProductValue.AsFloat                := M3Net *  cdsInvoiceDetailPrice.AsFloat ;
     End
     else
    if cdsInvoiceDetailPriceUnit.AsString = 'm3 nDxnL' then
     Begin
      cdsInvoiceDetailProductValue.AsFloat:= RoundTo(M3Nom*cdsInvoiceDetailPrice.AsFloat, -2) ;
//      cdsInvoiceDetailProductValue.AsFloat                := M3Nom *  cdsInvoiceDetailPrice.AsFloat ;
     End
     else
    if cdsInvoiceDetailPriceUnit.AsString = 'Stycketal' then
     Begin
      cdsInvoiceDetailProductValue.AsFloat:= RoundTo(NoOfPieces*cdsInvoiceDetailPrice.AsFloat, -2) ;
//      cdsInvoiceDetailProductValue.AsFloat                := NoOfPieces *  cdsInvoiceDetailPrice.AsFloat ;
     End
     else
     Begin
      cdsInvoiceDetailProductValue.AsFloat:= RoundTo(cdsInvoiceDetailPrice.AsFloat, -2) ;
//      cdsInvoiceDetailProductValue.AsFloat                := cdsInvoiceDetailPrice.AsFloat ;
     End ;

    cdsInvoiceDetailCreatedUser.AsInteger               := ThisUser.UserID ;
    cdsInvoiceDetailModifiedUser.AsInteger              := ThisUser.UserID ;
    cdsInvoiceDetailDateCreated.AsSQLTimeStamp          := DateTimeToSQLTimeStamp(Now) ;
   if ThisUser.UserID = 8 then
    mLog.Lines.Add('Before add cost cdsInvoiceDetail.Post ') ;
    cdsInvoiceDetail.Post ;
   if ThisUser.UserID = 8 then
    mLog.Lines.Add('After add cost cdsInvoiceDetail.Post ') ;
//    if daMoLM1.cdsInvoiceDetail.ChangeCount > 0 then   daMoLM1.cdsInvoiceDetail.ApplyUpdates(-1) ;
    y:= Succ(y) ;
   End ;
   sq_GetLOData.Close ;
 End ; //with
End ;

function ReplaceCommas(S : String) : String ;
begin
  { Convert commas to period }
{  while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
 Result:= S ; }

  { Convert period to commas}
  while Pos('.', S) > 0 do
    S[Pos('.', S)] := ',';
 Result:= S ;
end;


//For each LO # ADD INVOICE DETAIL - Products from Loads
Procedure AddProductData ;
Var TempVol, TempACT_M3, TempNOM_M3, TempLineMet_ACT : Extended ;
    ThicknessINCH, WidthINCH : String ;
//    FThicknessINCH, FWidthINCH : Double ;
    n : Cardinal ;
Begin
 with dmVidaInvoice do
 begin
   n := 1 ;
   LopM_ACT:= 0 ;
   M3Net:= 0 ;
   M3Nom:= 0 ;
   NoOfPieces := 0 ;
   TempACT_M3:= 0 ; TempNOM_M3:= 0 ; TempLineMet_ACT:= 0 ;

   sq_GetInvoiceDetailData.Close ;
   sq_GetInvoiceDetailData.ParamByName('CustomerNo').AsInteger:= cdsInvoiceHeadCustomerNo.AsInteger ; //daMoLM1.cdsAvropCLIENTNO.AsInteger ; // Avrop customerNo
   sq_GetInvoiceDetailData.ParamByName('ShippingPlanNo').AsInteger:= cdsInvoiceLOShippingPlanNo.AsInteger ;
   sq_GetInvoiceDetailData.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
   sq_GetInvoiceDetailData.Open ;
   if ThisUser.UserID = 8 then
    mLog.Lines.Add('After sq_GetInvoiceDetailData.Open') ;
   While not sq_GetInvoiceDetailData.Eof do
   Begin
    cdsInvoiceDetail.Insert ;
   if ThisUser.UserID = 8 then
    mLog.Lines.Add('After cdsInvoiceDetail.Insert') ;
    cdsInvoiceDetailCustShipPlanDetailObjectNo.AsInteger:= sq_GetInvoiceDetailDataCustShipPlanDetailObjectNo.AsInteger ;
    cdsInvoiceDetailInternalInvoiceNo.AsInteger         := cdsInvoiceLOInternalInvoiceNo.AsInteger ;
    cdsInvoiceDetailShippingPlanNo.AsInteger            := cdsInvoiceLOShippingPlanNo.AsInteger ;
    cdsInvoiceDetailInvoiceDetailNo.AsInteger           := y ;
    cdsInvoiceDetailTypeOfRow.AsInteger                 := 1 ; //Product
//    cdsInvoiceDetailLoadNo.AsInteger                    := sq_GetInvoiceDetailDataLOADNO.AsInteger ;
//    cdsInvoiceDetailLoadID.AsString                     := sq_GetInvoiceDetailDataLOADID.AsString ;

    cdsInvoiceDetailOrderLineNo.AsInteger               := sq_GetInvoiceDetailDataORDERLINENO.AsInteger ;
    cdsInvoiceDetailReference.AsString                  := sq_GetInvoiceDetailDataREFERENCE.AsString ;
    cdsInvoiceDetailProductDescription.AsString         := sq_GetInvoiceDetailDataPRODUCTDESCRIPTION.AsString ;
    cdsInvoiceDetailProductNo.AsInteger                 := sq_GetInvoiceDetailDataPRODUCTNO.AsInteger ;
    cdsInvoiceDetailLengthDescription.AsString          := sq_GetInvoiceDetailDataLENGTHDESCRIPTION.AsString ;
    cdsInvoiceDetailProductLengthNo.AsInteger           := sq_GetInvoiceDetailDataPRODUCTLENGTHNO.AsInteger ;
    cdsInvoiceDetailPrice.AsFloat                       := sq_GetInvoiceDetailDataPRICE.AsFloat ;
    cdsInvoiceDetailVolumeUnit.AsString                 := sq_GetInvoiceDetailDataVOLUMEUNIT.AsString ;
    cdsInvoiceDetailPriceUnit.AsString                  := sq_GetInvoiceDetailDataPRICEUNIT.AsString ;

    cdsInvoiceDetailActualThicknessMM.AsFloat           := sq_GetInvoiceDetailDataActualThicknessMM.AsFloat ;
    cdsInvoiceDetailActualWidthMM.AsFloat               := sq_GetInvoiceDetailDataActualWidthMM.AsFloat ;

    cdsInvoiceDetailNominalThicknessMM.AsFloat          := sq_GetInvoiceDetailDataNominalThicknessMM.AsFloat ;
    cdsInvoiceDetailNominalWidthMM.AsFloat              := sq_GetInvoiceDetailDataNominalWidthMM.AsFloat ;

    cdsInvoiceDetailNominalLengthMM.AsFloat             := sq_GetInvoiceDetailDataNominalLengthMM.AsFloat ;


   if ThisUser.UserID = 8 then
     mLog.Lines.Add('Before ThicknessINCH') ;

    ThicknessINCH := sq_GetInvoiceDetailDataNominalThicknessINCH.AsString ;
    WidthINCH := sq_GetInvoiceDetailDataNominalWidthINCH.AsString ;

    ThicknessINCH :=  ReplaceCommas(ThicknessINCH) ;
    WidthINCH :=  ReplaceCommas(WidthINCH) ;

   if ThisUser.UserID = 8 then
     mLog.Lines.Add('After ThicknessINCH='+ThicknessINCH) ;
   if ThisUser.UserID = 8 then
     mLog.Lines.Add('After WidthINCH='+WidthINCH) ;

   if ThisUser.UserID = 8 then
     mLog.Lines.Add('After ThicknessINCH') ;
   Try
    cdsInvoiceDetailNominalThicknessINCH.AsString       := ThicknessINCH ;
   Except
   End ;
   if ThisUser.UserID = 8 then
     mLog.Lines.Add('cdsInvoiceDetailNominalThicknessINCH.AsString='+cdsInvoiceDetailNominalThicknessINCH.AsString) ;
//    sq_GetInvoiceDetailDataNominalThicknessINCH.AsString ;
   Try
    cdsInvoiceDetailNominalWidthINCH.AsString           := WidthINCH ;
   Except
   End ;


   if ThisUser.UserID = 8 then
     mLog.Lines.Add('cdsInvoiceDetailNominalWidthINCH.AsString='+cdsInvoiceDetailNominalWidthINCH.AsString) ;
    //sq_GetInvoiceDetailDataNominalWidthINCH.AsString ;

    TempACT_M3:= RoundTo(sq_GetInvoiceDetailDataM3ACTUAL.AsFloat , -3) ;
    TempNOM_M3:= RoundTo(sq_GetInvoiceDetailDataM3NOMINAL.AsFloat , -3) ;
    TempLineMet_ACT:= RoundTo(sq_GetInvoiceDetailDataACTUAL_LINEALMETER.AsFloat , -3) ;
   if ThisUser.UserID = 8 then
     mLog.Lines.Add('After TempLineMet_ACT') ;

    cdsInvoiceDetailActualNetM3.AsFloat                 := TempACT_M3 ; //sq_GetInvoiceDetailDataM3ACTUAL.AsFloat ;
    cdsInvoiceDetailLinealMeter.AsFloat                 := TempLineMet_ACT ; //sq_GetInvoiceDetailDataACTUAL_LINEALMETER.AsFloat ;

    cdsInvoiceDetailNominalM3.AsFloat                   := TempNOM_M3 ; //sq_GetInvoiceDetailDataM3NOMINAL.AsFloat ;
    cdsInvoiceDetailNoOfPieces.AsInteger                := sq_GetInvoiceDetailDataNOOFPIECES.AsInteger ;
    cdsInvoiceDetailNoOfPkgs.AsInteger:= sq_GetInvoiceDetailDataNoOfPkgs.AsInteger ;
    cdsInvoiceDetailOL_Reference.AsString:= sq_GetInvoiceDetailDataOL_Reference.AsString ;


    TempVol:= RoundTo(sq_GetInvoiceDetailDataVOLUME_ORDERUNIT.AsFloat, -3) ;
    cdsInvoiceDetailVolume_OrderUnit.AsFloat            := TempVol ;
   if ThisUser.UserID = 8 then
     mLog.Lines.Add('After cdsInvoiceDetailVolume_OrderUnit.AsFloat') ;


    cdsInvoiceDetailProductValue.AsFloat:= RoundTo(TempVol*sq_GetInvoiceDetailDataPRICE.AsFloat, -2) ;

    cdsInvoiceDetailCreatedUser.AsInteger               := ThisUser.UserID ;
    cdsInvoiceDetailModifiedUser.AsInteger              := ThisUser.UserID ;
    cdsInvoiceDetailDateCreated.AsSQLTimeStamp          := DateTimeToSQLTimeStamp(Now) ;


    M3Net:= M3Net + cdsInvoiceDetailActualNetM3.AsFloat ;
    M3Nom:= M3Nom + cdsInvoiceDetailNominalM3.AsFloat ;
    NoOfPieces := NoOfPieces + cdsInvoiceDetailNoOfPieces.AsInteger ;
    LopM_ACT:= LopM_ACT + cdsInvoiceDetailLinealMeter.AsFloat ;
   if ThisUser.UserID = 8 then
     mLog.Lines.Add('After LopM_ACT') ;


   if ThisUser.UserID = 8 then
    mLog.Lines.Add('Before cdsInvoiceDetail.Post ') ;
    cdsInvoiceDetail.Post ;
   if ThisUser.UserID = 8 then
    mLog.Lines.Add('After cdsInvoiceDetail.Post ') ;
    sq_GetInvoiceDetailData.Next ;
    y:= Succ(y) ;
   End ; //While not sq_GetInvoiceDetailData.Eof do
   sq_GetInvoiceDetailData.Close ;
 End ; //with
End ;


//Main block MakeInvoice
BEGIN
 DeleteTdmVidaInvoice:= False ;
 if grdAvrop.SelectedCount  > 0 then
 Begin
 Save_Cursor := Screen.Cursor;
 CustNo_String:= TStringList.Create ;
 CURR_String:= TStringList.Create ;
 LO_String:= TStringList.Create ;
     if ThisUser.UserID = 8 then
    mLog.Lines.Clear ;

 Try

 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 LockWindowUpdate(frmAvrop.Handle);
 if ThisUser.UserID = 8 then
  mLog.Lines.Add('if not Assigned(dmVidaInvoice) then') ;
 if not Assigned(dmVidaInvoice) then
  Begin
   DeleteTdmVidaInvoice:= True ;
   dmVidaInvoice:= TdmVidaInvoice.Create(Nil) ;
  End ;

 with grdAvrop, dmVidaInvoice do
 begin

  Try
  //Get Next InternalInvoiceNo
  InternalInvoiceNo := dmsConnector.NextMaxNo('InvoiceHeader') ;
 if ThisUser.UserID = 8 then
  mLog.Lines.Add('InternalInvoiceNo='+inttostr(InternalInvoiceNo)) ;
//  lbLO_To_Invoice.Items.Clear ;
  DataSource.DataSet.DisableControls;
//Insert LO # to ListBox list
//Check that customers and currency are the same
  for x := 0 to (SelectedCount - 1) do
  begin
   Duplicate := False ;
   CustomerMisMatch := False ;
   CURRMisMatch:= False ;
//  DataSource.DataSet.Bookmark := SelectedRows[x]; //1st variant
   DataSource.DataSet.GotoBookmark(Pointer(SelectedRows[x])); //2nd variant
   For y := 0 to LO_String.Count - 1 do
   Begin
    if daMoLM1.cdsAvropLO.AsString = LO_String[y] then
    Duplicate := True ;
    if CustNo_String[y] <> daMoLM1.cdsAvropCLIENTNO.AsString then
    CustomerMisMatch := True ;
    if CURR_String[y] <> daMoLM1.cdsAvropCurrencyNo.AsString then
    CURRMisMatch := True ;
   End ;
   if Duplicate = False then
   Begin
    //Check if there is some loads to invoice for these parameters
    sq_AnyLoadsToInvoice.ParamByName('SupplierNo').AsInteger:= VIDA_WOOD_CLIENTNO ;
    sq_AnyLoadsToInvoice.ParamByName('ShippingPlanNo').AsInteger:= daMoLM1.cdsAvropLO.AsInteger ;
    sq_AnyLoadsToInvoice.ParamByName('CustomerNo').AsInteger:= daMoLM1.cdsAvropCLIENTNO.AsInteger ; // Avrop customerNo
    sq_AnyLoadsToInvoice.Open ;
    if not sq_AnyLoadsToInvoice.Eof then
     Begin
      LO_String.Add(daMoLM1.cdsAvropLO.AsString) ;
      CustNo_String.Add(daMoLM1.cdsAvropCLIENTNO.AsString) ;
      CURR_String.Add(daMoLM1.cdsAvropCurrencyNo.AsString) ;
     End ;

//    lbLO_To_Invoice.Items.Add(daMoLM1.cdsAvropLO.AsString) ;
    sq_AnyLoadsToInvoice.Close ;

//    sq_PkgType_Invoice.Close ;
    sq_PkgType_Invoice.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
    sq_PkgType_Invoice.ParamByName('SupplierNo').AsInteger:= VIDA_WOOD_CLIENTNO ;
    sq_PkgType_Invoice.ParamByName('ShippingPlanNo').AsInteger:= daMoLM1.cdsAvropLO.AsInteger ;
    sq_PkgType_Invoice.ParamByName('CustomerNo').AsInteger:= daMoLM1.cdsAvropCLIENTNO.AsInteger ; // Avrop customerNo
    sq_PkgType_Invoice.ExecSQL(False) ;
    if ThisUser.UserID = 8 then
    mLog.Lines.Add('sq_PkgType_Invoice.ExecSQL(False)') ;
   End ;
  end;

  if CustomerMisMatch = True then
  Begin
   ShowMessage('Valda avrop måste ha samma kund/leverantör.') ;
   Exit ;
  End ;
  if CURRMisMatch = True then
  Begin
   ShowMessage('Valda avrop måste ha samma valuta i resp. kontrakt.') ;
   Exit ;
  End ;
 //check if anything to invoice
//  if lbLO_To_Invoice.Items.Count < 1 then
  if LO_String.Count < 1 then
  Begin
   ShowMessage('Laster är redan fakturerade eller laststatus är inte OK.') ;
   Exit ;
  End ;

 with dm_Booking do
 Begin
  sq_GetLoadID.ParamByName('SupplierNo').AsInteger:= VIDA_WOOD_CLIENTNO ;
  sq_GetLoadID.ParamByName('ShippingPlanNo').AsInteger:= daMoLM1.cdsAvropLO.AsInteger ;
  sq_GetLoadID.ParamByName('CustomerNo').AsInteger:= daMoLM1.cdsAvropCLIENTNO.AsInteger ; // Avrop customerNo
  sq_GetLoadID.Open ;
  if ThisUser.UserID = 8 then
    mLog.Lines.Add('sq_GetLoadID.Open') ;

  cdsBooking.Active:= False ;
  sq_Booking.ParamByName('ShippingPlanNo').AsInteger:= daMoLM1.cdsAvropLO.AsInteger ;
  cdsBooking.Active:= True ;

  if cdsBooking.RecordCount > 0 then
  Begin
   cdsBooking.Edit ;
   cdsBookingSupplierReference.AsString:= sq_GetLoadIDLoadID.AsString ;
   cdsBooking.Post ;
   if cdsBooking.ChangeCount > 0 then
    cdsBooking.ApplyUpdates(0) ;
    if ThisUser.UserID = 8 then
    mLog.Lines.Add('cdsBooking.ApplyUpdates(0)') ;
  End ;

  sq_GetLoadID.Close ;
  cdsBooking.Active:= False ;
 End ;


 //Start Transaction
  Trans1.TransactionID:= 1 ;
  Trans1.IsolationLevel:= xilREADCOMMITTED ;
  dmsConnector.SQLConnection.StartTransaction(Trans1);
  Try
  if ThisUser.UserID = 8 then
    mLog.Lines.Add('StartTransaction(Trans1)') ;


//Check and Compare that LO are valid to be invoiced together, if OK then continue


   cdsInvoiceHead.Active:= True ;
   cdsInvoiceLO.Active:= True ;
   cdsInvoiceDetail.Active:= True ;
   cdsInvoiceShipTo.Active:= True ;
  if ThisUser.UserID = 8 then
    mLog.Lines.Add('Active datasets') ;


   cdsInvoiceHead.EmptyDataSet ;
   cdsInvoiceLO.EmptyDataSet ;
   cdsInvoiceDetail.EmptyDataSet ;
   cdsInvoiceShipTo.EmptyDataSet ;
  if ThisUser.UserID = 8 then
    mLog.Lines.Add('EmptyDataSet') ;



  x:= 0 ;
  Repeat
   sq_GetInvoiceHeadData.Close ;
//   sq_GetInvoiceHeadData.ParamByName('ShippingPlanNo').AsInteger:= StrToInt(lbLO_To_Invoice.Items[x]) ;
   sq_GetInvoiceHeadData.ParamByName('ShippingPlanNo').AsInteger:= StrToInt(LO_String[x]) ;

   sq_GetInvoiceHeadData.ParamByName('CustomerNo').AsInteger:= daMoLM1.cdsAvropCLIENTNO.AsInteger ; // Avrop customerNo
   sq_GetInvoiceHeadData.Open ;
  if ThisUser.UserID = 8 then
    mLog.Lines.Add('sq_GetInvoiceHeadData.Open') ;


   x:= Succ(x) ;
  Until (x = LO_String.Count) or (not sq_GetInvoiceHeadData.Eof) ;

//Insert Invoice Head
   AddInvoiceHead ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }


//Go through all LO # items in listbox, Get LO data and insert to csdInvoiceLO
//  For x:= 0 to lbLO_To_Invoice.Count - 1 do
  For x:= 0 to LO_String.Count - 1 do
  Begin
   AddLOData ;

   y:= 1 ; //use this for InvoiceDetailNo
//ADD INVOICE DETAIL for an Additional costs if such exist for current LO Number


//For each LO # ADD INVOICE DETAIL - Products from Loads
   AddProductData ;
   AddAdditionalCost ;

   //Get and Insert ship to address
   sq_GetShipToAddress.ParamByName('ShippingPlanNo').AsInteger:= StrToInt(LO_String[x]) ;
   sq_GetShipToAddress.Open ;
   if ThisUser.UserID = 8 then
    mLog.Lines.Add('After sq_GetShipToAddress.Open') ;
   While not sq_GetShipToAddress.Eof do
   Begin
    cdsInvoiceShipTo.Insert ;
    cdsInvoiceShipToReference.AsString:= sq_GetShipToAddressReference.AsString ;
    cdsInvoiceShipToInternalInvoiceNo.AsInteger:= cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
    cdsInvoiceShipToShippingPlanNo.AsInteger:= sq_GetShipToAddressShippingPlanNo.AsInteger ;
    cdsInvoiceShipToAddressNo.AsInteger:= sq_GetShipToAddressAddressNo.AsInteger ;
    cdsInvoiceShipTo.Post ;
    if ThisUser.UserID = 8 then
     mLog.Lines.Add('After cdsInvoiceShipTo.Post') ;
    sq_GetShipToAddress.Next ;
   End ;

  sq_GetShipToAddress.Close ;

//ADD FREIGHT COST IN TO  INVOICE DETAIL if Booking exist for current LO Number
   AddFreigthCost ;

//Insert loadNo and ShippingPlanNo to Invoice_Load table.
// the entry to Invoice_Load makes it impossible to invoice a load twice.

    if ThisUser.UserID = 8 then
     mLog.Lines.Add('Before sq_Invoiced_Load.ExecSQL(False)') ;
   sq_Invoiced_Load.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
   sq_Invoiced_Load.ParamByName('SupplierNo').AsInteger:= VIDA_WOOD_CLIENTNO ;
   sq_Invoiced_Load.ParamByName('CustomerNo').AsInteger:= daMoLM1.cdsAvropCLIENTNO.AsInteger ; // Avrop customerNo
   sq_Invoiced_Load.ParamByName('ShippingPlanNo').AsInteger:= cdsInvoiceLOShippingPlanNo.AsInteger ;
   sq_Invoiced_Load.ExecSQL(False) ;
    if ThisUser.UserID = 8 then
     mLog.Lines.Add('After sq_Invoiced_Load.ExecSQL(False)') ;
  End ; //For x:= 0 to lbLO_To_Invoice.Count - 1 do

   if ThisUser.UserID = 8 then
     mLog.Lines.Add('Before Summarize(Sender)') ;
   Summarize(Sender) ;
   if ThisUser.UserID = 8 then
     mLog.Lines.Add('After Summarize(Sender)') ;


   if cdsInvoiceLO.ChangeCount > 0 then   cdsInvoiceLO.ApplyUpdates(0) ;
   if cdsInvoiceDetail.ChangeCount > 0 then   cdsInvoiceDetail.ApplyUpdates(0) ;
   if cdsInvoiceShipTo.ChangeCount > 0 then   cdsInvoiceShipTo.ApplyUpdates(0) ;
   if ThisUser.UserID = 8 then
     mLog.Lines.Add('After Applyupdates') ;

//Insert to InvPkgDtl
//   sq_updInvPkgDtl.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
//   sq_updInvPkgDtl.ExecSQL(False) ;


   dmsConnector.SQLConnection.Commit(Trans1) ;
  Except
   dmsConnector.SQLConnection.Rollback(Trans1);
   Exit ;
  End ;



 frmInvoice:= TfrmInvoice.Create(Nil);
     LockWindowUpdate(0);
 Try
  cdsInvoiceLO.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString+
//  ' AND ShippingPlanNo = '+lbLO_To_Invoice.Items[0] ;
' AND ShippingPlanNo = '+LO_String[0] ;
  cdsInvoiceLO.Filtered:= True ;
  cdsInvoiceDetail.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString+
//  ' AND ShippingPlanNo = '+lbLO_To_Invoice.Items[0] ;
 ' AND ShippingPlanNo = '+LO_String[0] ;

  cdsInvoiceDetail.Filtered:= True ;

  frmInvoice.TabControl1.Tabs.Clear ;

//  frmInvoice.TabControl1.Tabs:= lbLO_To_Invoice.Items ;
  frmInvoice.TabControl1.Tabs:= LO_String ;


 frmInvoice.NewInvoice:= True ;
  frmInvoice.ShowModal ;
 Finally
  FreeAndNil(frmInvoice) ;
 End ;

 Finally
  DataSource.DataSet.EnableControls;
  if cdsInvoiceHead.Active then
  cdsInvoiceHead.EmptyDataSet ;
  if cdsInvoiceLO.Active then
  cdsInvoiceLO.EmptyDataSet ;
  if cdsInvoiceDetail.Active then
  cdsInvoiceDetail.EmptyDataSet ;
  if cdsInvoiceShipTo.Active then
  cdsInvoiceShipTo.EmptyDataSet ;

  cdsInvoiceHead.Active:= False ;

  sq_InvoiceDetail.Close ;
  cdsInvoiceLO.Filtered:= False ;
  cdsInvoiceLO.Active:= False ;
  cdsInvoiceDetail.Filtered:= False ;
  cdsInvoiceDetail.Filter:= '';
  cdsInvoiceDetail.Active:= False ;
  cdsInvoiceShipTo.Active:= False ;


//  dmVidaInvoice.Free ;
  grdAvrop.ClearSelection ;


 End ;
End ; //with grdAvrop do, //with daMoLM1 do

 Finally
  if DeleteTdmVidaInvoice = True then
  Begin
   FreeAndNil(dmVidaInvoice) ;//.Free ;
//   dmVidaInvoice:= Nil ;
  End ;

  CustNo_String.Free ;
  CURR_String.Free ;
  LO_String.Free ;
  LockWindowUpdate(0);
  Screen.Cursor := Save_Cursor;  { Always restore to normal }

 End ; //Finally
End ; //if lbLO_To_Invoice.Items.Count > 0 then
End;

procedure TfrmAvrop.Summarize(Sender: TObject);
Begin
 with dmVidaInvoice do
 Begin
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
 if cdsInvoiceHeadFreightInDiscount.AsInteger  = 0 then
// if cbFreightInDiscount.Checked = False then
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

// if cbCommissionPaidByCustomer.Checked then
 if cdsInvoiceHeadCommissionPaidByCustomer.AsInteger = 1 then
 Begin
  if cdsInvoiceHeadFreightInCommission.AsInteger = 0 then
//  if cbFreightInComm.Checked = False then
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

// if cbCommissionPaidByCustomer.Checked = False then
 if cdsInvoiceHeadCommissionPaidByCustomer.AsInteger = 0 then
 //Show commission VW is paying
 Begin
    if cdsInvoiceHeadFreightInCommission.AsInteger = 0 then
//   if cbFreightInComm.Checked = False then
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



//Calculate VAT if Country is SWEDEN cbVAT  is checked
 if Trim(cdsInvoiceHeadCountryName.AsString) = 'SWEDEN' then
// if cdsInvoiceHeadCurrencyNo.AsInteger = 10001{SEK} then
 Begin
  if cdsInvoiceHeadVAT_OnInvoice.AsInteger = 0 then
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
 End ; //finally
 End ; //with
End ;





Function TfrmAvrop.ConvertFreightCostFromCurrencyToSEK({Freight cost}FreightCost: Double;{Convert from}FromCurrencyNo:Integer) : Double ;
Var ConvertFromXRate : Double ;
Begin // us to sek for example or SEK to US
 dmModule1.sq_GetXRate.ParamByName('CurrencyNo').AsInteger:= FromCurrencyNo ;
 dmModule1.sq_GetXRate.Open ;
 ConvertFromXRate:= dmModule1.sq_GetXRateEXCHANGERATE.AsFloat ;

 Result:= FreightCost * ConvertFromXRate ;
 dmModule1.sq_GetXRate.Close ;
End ;

Function TfrmAvrop.ConvertFreightCostToCurrencyFromSEK({Freight cost}FreightCost: Double;{Convert from}ToCurrencyNo:Integer) : Double ;
Var ConvertToXRate : Double ;
Begin // us to sek for example or SEK to US
 Result:= 0 ;
 dmModule1.sq_GetXRate.ParamByName('CurrencyNo').AsInteger:= ToCurrencyNo ;
 dmModule1.sq_GetXRate.Open ;
 ConvertToXRate:= dmModule1.sq_GetXRateEXCHANGERATE.AsFloat ;

 if ConvertToXRate > 0 then
 Result:= FreightCost / ConvertToXRate ;
 dmModule1.sq_GetXRate.Close ;
End ;


procedure TfrmAvrop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfrmAvrop.FormCreate(Sender: TObject);
begin
 UNIQUERECORDNO:= 0 ;
 cbStatus.ItemIndex:= 1 ;
 if thisUser.UserID = 8 then
  mLog.Visible:= True
   else
    mLog.Visible:= False ;
end;

procedure TfrmAvrop.FormDestroy(Sender: TObject);
begin
 frmAvrop:= NIL ;
end;

procedure TfrmAvrop.LoadOrderdittverk2Click(Sender: TObject);
Var FormCRViewReport: TFormCRViewReport ;
begin
 if grdNormalLO.DataSource.DataSet.FieldByName('LO').AsInteger < 1 then exit ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 FormCRViewReport.CreateCo('LASTORDER_NOTE.RPT') ;

  if FormCRViewReport.ReportFound then
  Begin
   FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdNormalLO.DataSource.DataSet.FieldByName('LO').AsInteger);
   FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(grdNormalLO.DataSource.DataSet.FieldByName('SUPPLIERNO').AsInteger);
   FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
   FormCRViewReport.CRViewer91.ViewReport ;
   FormCRViewReport.ShowModal ;
  End ;
 Finally
  FreeAndNil(FormCRViewReport) ;
 End ;

end;

procedure TfrmAvrop.LoadOrderAllaverk2Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if grdNormalLO.DataSource.DataSet.FieldByName('SUPPLIERNO').AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('LASTORDER_NOTE.RPT') ;
  if FormCRViewReport.ReportFound then
  Begin                 
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdNormalLO.DataSource.DataSet.FieldByName('LO').AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(-1);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
  End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;

procedure TfrmAvrop.LoadOrderdittverk3Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if grdExtraLO.DataSource.DataSet.FieldByName('LO').AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE.RPT') ;

  if FormCRViewReport.ReportFound then
  Begin
   FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdExtraLO.DataSource.DataSet.FieldByName('LO').AsInteger);
   FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(grdExtraLO.DataSource.DataSet.FieldByName('SUPPLIERNO').AsInteger);
   FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
   FormCRViewReport.CRViewer91.ViewReport ;
  End ;
  FormCRViewReport.ShowModal ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;

procedure TfrmAvrop.LoadOrderAllaverk3Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin

 if grdExtraLO.DataSource.DataSet.FieldByName('SUPPLIERNO').AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE.RPT') ;
  if FormCRViewReport.ReportFound then
  Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdExtraLO.DataSource.DataSet.FieldByName('LO').AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(-1);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
  End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;

procedure TfrmAvrop.setStatus(const Value: integer);
var
  SelectedLO : Integer;
  LOCol : Integer;
  Save_Cursor : TCursor;
begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 if (daMoLM1.cdsAvrop.Active) and (daMoLM1.cdsAvrop.RecordCount > 0) then
 Begin

   if daMoLM1.cdsSetAvrop.Active = False then
    daMoLM1.cdsSetAvrop.Active:= True ;

        LOCol := grdAvrop.ColumnByFieldName('LO').Index;
        SelectedLO := grdAvrop.FocusedNode.Values[LOCol];

        if daMoLM1.cdsSetAvrop.FindKey([SelectedLO]) then
        Begin
         daMoLM1.cdsSetAvrop.Edit ;
         daMoLM1.cdsSetAvropShippingPlanStatus.AsInteger:= Value;
         daMoLM1.cdsSetAvrop.Post ;

         Try
//         daMoLM1.cdsAvrop.IndexName:= 'cdsAvropIndex5' ;
         daMoLM1.cdsAvrop.Edit ;
         daMoLM1.cdsAvropSTATUS.AsInteger:= Value ;
         daMoLM1.cdsAvrop.Post ;

         Finally
//          daMoLM1.cdsAvrop.IndexName:= 'cdsAvropIndex4' ;
         End ;
        End ;


 End ;//if
 Finally
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmAvrop.Cancel1Click(Sender: TObject);
begin
 SetStatus(STATUS_LO_CANCEL) ;
end;

procedure TfrmAvrop.Progress1Click(Sender: TObject);
begin

 SetStatus(STATUS_LO_PROGRESS) ;
end;

procedure TfrmAvrop.Complete1Click(Sender: TObject);
begin

 SetStatus(STATUS_LO_COMPLETE) ;
end;



procedure TfrmAvrop.grdLoadsCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  iInvNoColumn, InvoiceColumn, POInvoiceColumn : Integer;
  PROFORMA_INVOICENO, PROFORMA_INVOICENOColumn,
  iInvNo, InvoiceNo, POInvoiceNo : integer;
begin

  if ColumnIsGrouped(AColumn,grdLoads) then
    Exit;

  // get the status of this LO
  iInvNoColumn := grdLoads.ColumnByName('grdLoadsINTERNAL_INVOICENO').Index;
  iInvNo := ANode.Values[iInvNoColumn];

  InvoiceColumn := grdLoads.ColumnByName('grdLoadsINVOICENO').Index;
  InvoiceNo := ANode.Values[InvoiceColumn];

  POInvoiceColumn := grdLoads.ColumnByName('grdLoadsPO_INVOICENO').Index;
  POInvoiceNo := ANode.Values[POInvoiceColumn];

  PROFORMA_INVOICENOColumn := grdLoads.ColumnByName('grdLoadsPROFORMA_INVOICENO').Index;
  PROFORMA_INVOICENO := ANode.Values[PROFORMA_INVOICENOColumn];





  // Set the color for this row, based on LO status
  if (InvoiceNo <> -1) or (POInvoiceNo <> -1) or (PROFORMA_INVOICENO <> -1) then
  AColor := clSilver
  else
  if iInvNo <> -1 then
  AColor := clBlue ;
end;

procedure TfrmAvrop.rgOrderTypeClick(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 LockWindowUpdate(frmAvrop.Handle);
 Try
 if rgOrderType.ItemIndex = 0 then
  Begin
   PanelAvropLoad.Caption:= 'UTLEVERANSER' ;
   grdAvropCLIENT.Caption:= 'KUND' ;
//   toolbtn_Invoice.Enabled:= True ;
//   Refresh_Avrop(Sender, -1);
   LabelKlient.Caption:= 'Kund:' ;

   cbClient.Properties.Items.Clear ;
   dmsContact.LoadClients(cbClient.Properties.Items, 1);
   cbClient.Properties.Items.Insert(0,'ALLA');
   if cbClient.Properties.Items.Count > 0 then
    cbClient.ItemIndex:= 0 ;
  End
  else
  Begin
   grdAvropCLIENT.Caption:= 'LEVERANTÖR' ;
   PanelAvropLoad.Caption:= 'INLEVERANSER' ;
//   toolbtn_Invoice.Enabled:= False ;
//   Refresh_Avrop(Sender, -1);
   LabelKlient.Caption:= 'Leverantör:' ;
   cbClient.Properties.Items.Clear ;
   dmsContact.LoadClients(cbClient.Properties.Items, 2);
   cbClient.Properties.Items.Insert(0,'ALLA');
   if cbClient.Properties.Items.Count > 0 then
    cbClient.ItemIndex:= 0 ;
  End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
  LockWindowUpdate(0);
 end;
end;

procedure TfrmAvrop.grdLoadsDblClick(Sender: TObject);
begin
 acOpenLoadExecute(Sender) ;
end;

procedure TfrmAvrop.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Status : Integer ;
begin
 if Key <> VK_RETURN then
  Exit;
 cbFilter.Checked:= False ;
 cbLoadsNotInvoiced.Checked:= False ;
 With daMoLM1 do
 Begin
//  if cdsAvrop.Active = False then
   Refresh_Avrop(Sender, StrToIntDef(Trim(Edit1.Text),0)) ;

  cdsAvrop.DisableControls ;
  Try

  if cdsAvropORDERTYPE.AsInteger > -1 then
  rgOrderType.ItemIndex:= cdsAvropORDERTYPE.AsInteger ;

  Status := -1 ;
//  cdsAvrop.Filtered:= False ;

  sq_Get_CSH_Status.Close ;
  sq_Get_CSH_Status.ParamByName('ShippingPlanNo').AsInteger:= StrToIntDef(Trim(Edit1.Text),0) ;
  sq_Get_CSH_Status.Open ;
  if sq_Get_CSH_Status.Eof = False then
  Status := IntegerField2.AsInteger ;
  sq_Get_CSH_Status.Close ;

  if Status = -1 then
  Begin
   ShowMessage('No match') ;
   Edit1.Text:= '' ;
   Edit1.SetFocus ;

   Exit ;
  End
  else
  cbStatus.ItemIndex:= Status ;


{   if bcStatus.ItemIndex = Status then
    Begin
     Refresh_Avrop(Sender, StrToIntDef(Trim(Edit1.Text),0)) ;
     if FindAvrop(Sender) = false then ;
    End
    else
    Begin
     bcStatus.ItemIndex:= Status ;
     Refresh_Avrop(Sender, StrToIntDef(Trim(Edit1.Text),0)) ;
     if FindAvrop(Sender) = false then ;
    End ;


  if cbFilter.Checked then
  Begin
  cdsAvrop.Filter:= 'LO = '+Edit1.Text ;
  cdsAvrop.Filtered:= True ;
  End
  else
  Begin
   cdsAvrop.Filter:= 'LO = '+Edit1.Text ;
  End ; }



  Edit1.Text:= '' ;
  Edit1.SetFocus ;

  Finally
   cdsAvrop.EnableControls ;
  End ;
 End ; //with


end;

{function TfrmAvrop.FindAvrop(Sender : TObject) : Boolean ;
Var ShippingPlanNo : Integer ;
Begin
 With daMoLM1 do
  if not cdsAvrop.FindKey([StrToIntDef(Trim(Edit1.Text),0)])  then
  Begin
   Result:= False ;
   ShowMessage('No Match') ;
  End
  else
  Begin
   Result:= True ;
   ShippingPlanNo := cdsAvropLO.AsInteger ;
   While (ShippingPlanNo = cdsAvropLO.AsInteger) and
   (cdsAvrop.Eof = False) do
   Begin
    cdsAvrop.Next ;
   End ; //while
//   if not cdsAvrop.Eof then
   cdsAvrop.Prior ;
  End ;
End ; }

procedure TfrmAvrop.ac_customizeLayoutExecute(Sender: TObject);
begin
 grdAvrop.ColumnsCustomizing ;
end;

procedure TfrmAvrop.ac_ExitExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmAvrop.ac_BookingExecute(Sender: TObject);
var FormBookingForm: TFormBookingForm;
begin
 if (daMoLM1.cdsAvrop.Active) and (daMoLM1.cdsAvrop.RecordCount > 0) then
 Begin

  FormBookingForm:= TFormBookingForm.Create(Nil) ;
  try
  FormBookingForm.CreateCo(grdAvrop.DataSource.DataSet.FieldByName('LO').AsInteger) ;
  FormBookingForm.ShowModal ;
  finally
    FreeAndNil(FormBookingForm) ;
  end;

 End ;
end;

procedure TfrmAvrop.ac_RefreshExecute(Sender: TObject);
begin
 SetMyBookMark(Sender) ;
 Refresh_Avrop(Sender, GlobalLONo) ;
 GotoMyBookmark(Sender) ;
end;

procedure TfrmAvrop.ac_MakeInvoiceExecute(Sender: TObject);
begin
 MakeInvoice(Sender) ;
end;

procedure TfrmAvrop.acPrintContractExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if Length(daMoLM1.cdsAvropORDERNUMBER.AsString) <= 0 then exit ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
  FormCRViewReport.CreateCo('CONTRACT_NOTE.RPT')
   else
     FormCRViewReport.CreateCo('INCONTRACT_NOTE.RPT') ;

  if FormCRViewReport.ReportFound then
  Begin
   FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(daMoLM1.cdsAvropORDERNUMBER.AsString);
   FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
   FormCRViewReport.CRViewer91.ViewReport ;
   FormCRViewReport.ShowModal ;
  End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmAvrop.acPrintLOExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if daMoLM1.cdsAvropLO.AsInteger < 1 then exit ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
   FormCRViewReport.CreateCo('LASTORDER_NOTE.RPT')
    else
     FormCRViewReport.CreateCo('LASTORDER_INKOP_NOTE.RPT') ;
  if FormCRViewReport.ReportFound then
  Begin
   FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(daMoLM1.cdsAvropLO.AsInteger);
   FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
   FormCRViewReport.CRViewer91.ViewReport ;
   FormCRViewReport.ShowModal ;
  End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmAvrop.acPrintTrpOrderExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

  if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
   FormCRViewReport.CreateCo('TRP_ORDER_NOTE.RPT')
    else
      FormCRViewReport.CreateCo('TRP_ORDER_INKOP_NOTE.RPT') ;
      
  if FormCRViewReport.ReportFound then
  Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(daMoLM1.cdsAvropLO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;

  End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmAvrop.cbFilterClick(Sender: TObject);
begin
 With daMoLM1 do
 Begin
  if cbFilter.Checked then
  Begin
//   cdsAvrop.Filtered:= True ;
   GlobalLONo:= -1 ;
  End ;
//   else
//    cdsAvrop.Filtered:= False ;
 End ;
end;

procedure TfrmAvrop.CustomizegrdNormalLOClick(Sender: TObject);
begin
 grdNormalLO.ColumnsCustomizing ;
end;

procedure TfrmAvrop.CustomizegrdExtraLOClick(Sender: TObject);
begin
 grdExtraLO.ColumnsCustomizing ;
end;

procedure TfrmAvrop.CustomizegrdAvropClick(Sender: TObject);
begin
 grdAvrop.ColumnsCustomizing ;
end;

procedure TfrmAvrop.SetMyBookMark(Sender: TObject);
begin
 With daMoLM1 do
 Begin
  UNIQUERECORDNO:= cdsAvropUNIQUERECORDNO.AsInteger
 End ;
end;

procedure TfrmAvrop.GotoMyBookmark(Sender: TObject);
begin
 With daMoLM1 do
 Begin
  if UNIQUERECORDNO > 0 then
  Begin
   cdsAvrop.IndexName:= 'cdsAvropIndex5' ;
   Try
    if cdsAvrop.FindKey([UNIQUERECORDNO]) then ;
   Finally
    cdsAvrop.IndexName:= 'cdsAvropIndex4' ;
   End ;
  End ;
 End ;
end;

procedure TfrmAvrop.bbTally_Ver2Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if daMoLM1.cdsLoadsLOADNO.AsInteger < 1 then exit ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  dmcSystem.sq_PkgType_Invoice.ParamByName('LoadNo').AsInteger:= daMoLM1.cdsLoadsLOADNO.AsInteger ;
  dmcSystem.sq_PkgType_Invoice.ExecSQL(False) ;
  if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
   FormCRViewReport.CreateCo('TALLY_VER2_NOTE.RPT')
    else
     FormCRViewReport.CreateCo('TALLY_VER2_INKOP_NOTE.RPT') ;

  if FormCRViewReport.ReportFound then
  Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(daMoLM1.cdsLoadsLOADNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
  End ;
  dmcSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= daMoLM1.cdsLoadsLOADNO.AsInteger ;
  dmcSystem.sq_DelPkgType.ExecSQL(False) ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
End ;

procedure TfrmAvrop.BuildAvropSQL (const LONo : Integer) ;
Var intLONO : Integer ;
Begin
 IntLONo:= LONo ;
{ if cbFilter.Checked = True then
  IntLONo := -1
   else
    if LONo > -1 then
     IntLONo:= LONo
      else
       IntLONo:= -2 ; }
With daMoLM1.sq_Avrop do
Begin
 SQL.Clear ;
 SQL.Add('SELECT') ;
 SQL.Add('OH.CurrencyNo,') ;
 SQL.Add('CSH.ShippingPlanStatus				AS STATUS,') ;
 SQL.Add('CSH.ShippingPlanNo 				AS LO,') ;
 SQL.Add('OH.OrderNoText					AS ORDERNUMBER,') ;
 SQL.Add('isNull(CSH.Reference,'+QuotedStr(' ')+')			AS REFERENCE,') ;
 SQL.Add('isnull(CSH.ETDYearWeek,-1) 			AS FROMWEEK,') ;
 SQL.Add('isnull(CSH.ETDWeekEnd,-1) 			AS TOWEEK,') ;
 SQL.Add('C.ClientName 					AS CLIENT, ') ;
 SQL.Add('isNull(AG.ClientName,'+QuotedStr(' ')+')			AS AGENT,') ;
 SQL.Add('isNull(CSD.Reference,'+QuotedStr(' ')+')			AS MARK,') ;
 SQL.Add('OL.OrderLineDescription 			AS PRODUCT,') ;
 SQL.Add('CSD.LengthDescription 				AS LENGTH,') ;
 SQL.Add('isnull(CSD.NoOfUnits,0) 			AS VOLUME ,') ;

 SQL.Add('VU.VolumeUnitName				AS VOLUNIT,') ;

 SQL.Add('isNull(Cy.CityName,'+QuotedStr(' ')+')			AS DESTINATION,') ;

 SQL.Add('CSH.OrderNo 					AS ORDERNO,') ;
 SQL.Add('CSH.CustomerNo					AS CLIENTNO,') ;
 SQL.Add('CSH.DestinationNo				AS DESTINATIONNO,') ;
 SQL.Add('CSD.CustShipPlanDetailObjectNo 			AS UNIQUERECORDNO,') ;
 SQL.Add('OH.SalesRegionNo				AS SALESREGIONNO,') ;
 SQL.Add('OH.OrderType					AS ORDERTYPE') ;

 SQL.Add('FROM dbo.CustomerShippingPlanHeader CSH') ;
 SQL.Add('	INNER JOIN dbo.CustomerShippingPlanDetails CSD 	ON  	CSD.ShippingPlanNo 	= CSH.ShippingPlanNo') ;
 SQL.Add('	LEFT OUTER JOIN ShippingPlan_ShippingAddress SSAD') ;
 SQL.Add('	INNER JOIN Address	ADDR			ON	ADDR.ADDRESSNO	= SSAD.ADDRESSNO') ;
 SQL.Add('	Left Outer JOIN dbo.City		Cy 		ON  	ADDR.CityNo	= Cy.CityNo') ;
 SQL.Add('								ON SSAD.ShippingPlanNo = CSD.ShippingPlanNo') ;
 SQL.Add('								AND SSAD.Reference	= CSD.REFERENCE') ;

 SQL.Add('	INNER JOIN dbo.Client 			C	ON 	C.ClientNo		= CSH.CustomerNo') ;
 SQL.Add('	INNER JOIN dbo.Orders 			OH	ON	OH.OrderNo 		= CSH.OrderNo') ;
 SQL.Add('	INNER JOIN dbo.OrderLine 		OL	ON	OL.OrderNo 		= CSD.OrderNo') ;
 SQL.Add('							AND 	OL.OrderLineNo 		= CSD.OrderLineNo') ;
 SQL.Add('	INNER JOIN dbo.UnitName 		VU	ON 	VU.VolumeUnit_No 	= OL.VolumeUnitNo') ;

 SQL.Add('	LEFT  OUTER JOIN dbo.Client		AG	ON  	OH.AgentNo	       	= AG.ClientNo') ;


 SQL.Add('WHERE') ;
// if cbFilter.Checked = False then
// Begin

 if IntLONo < 0 then
 SQL.Add('CSH.SHIPPINGPLANSTATUS = '+IntToStr(cbStatus.ItemIndex))
 else
  SQL.Add('CSH.ShippingPlanNo = '+IntToStr(IntLONo)) ;
// End

// else
// SQL.Add('CSH.SHIPPINGPLANSTATUS = '+IntToStr(bcStatus.ItemIndex)) ;


// if (cbFilter.Checked = True) then
//  SQL.Add('AND OH.OrderType = '+IntToStr(rgOrderType.ItemIndex)) ;
 if (IntLONo < 0) then
 SQL.Add('AND OH.OrderType = '+IntToStr(rgOrderType.ItemIndex)) ;

 if (IntLONo < 0) then
 if bcSalesRegions.ItemIndex > 0 then
 SQL.Add('AND OH.SalesRegionNo = '+IntToStr(integer(bcSalesRegions.Properties.Items.Objects[bcSalesRegions.ItemIndex]))) ;

 if (IntLONo < 0) then
 if bcMarketRegions.ItemIndex > 0 then
 SQL.Add('AND C.MarketRegionNo = '+IntToStr(integer(bcMarketRegions.Properties.Items.Objects[bcMarketRegions.ItemIndex]))) ;

 if (IntLONo < 0) then
 if cbClient.ItemIndex > 0 then
 SQL.Add('AND CSH.CustomerNo = '+IntToStr(integer(cbClient.Properties.Items.Objects[cbClient.ItemIndex]))) ;


 if cbLoadsNotInvoiced.Checked then
 Begin
  SQL.Add('AND CSH.CustomerNo in (Select LNI.CustomerNo') ;
  SQL.Add('FROM dbo.VIS_LoadsNotInvoiced LNI') ;
  SQL.Add('WHERE LNI.ShippingPlanNo = CSH.ShippingPlanNo)') ;
 End ;

 GlobalLONo := IntLONo ;

 if thisuser.UserID = 8 then
  SQL.SaveToFile('sq_Avrop.TXT');
End ;//with
end;

procedure TfrmAvrop.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var Status, LONo : Integer ;
begin
 if Key <> VK_RETURN then
  Exit;
 cbFilter.Checked:= False ;
 cbLoadsNotInvoiced.Checked:= False ;
 With daMoLM1 do
 Begin
  LONo:= GetLONoForLoadNo (StrToIntDef(Trim(Edit2.Text),0)) ;
//  if cdsAvrop.Active = False then
   Refresh_Avrop(Sender, LONo) ;

  if not cdsLoads.Locate('LoadNo', StrToIntDef(Trim(Edit2.Text),0), []) then
  if not cdsLoads.Locate('FOLJESEDEL', StrToIntDef(Trim(Edit2.Text),0), []) then ;
//  ShowMessage('found') ;

//  cdsAvrop.DisableControls ;
  Try

  if cdsAvropORDERTYPE.AsInteger > -1 then
  rgOrderType.ItemIndex:= cdsAvropORDERTYPE.AsInteger ;

  Status := -1 ;
//  cdsAvrop.Filtered:= False ;

  sq_Get_CSH_Status.Close ;
  sq_Get_CSH_Status.ParamByName('ShippingPlanNo').AsInteger:= LONo ;
  sq_Get_CSH_Status.Open ;
  if sq_Get_CSH_Status.Eof = False then
  Status := IntegerField2.AsInteger ;
  sq_Get_CSH_Status.Close ;

  if Status = -1 then
  Begin
   ShowMessage('No match') ;
   Edit2.Text:= '' ;
   Edit2.SetFocus ;

   Exit ;
  End
  else
  cbStatus.ItemIndex:= Status ;


{   if bcStatus.ItemIndex = Status then
    Begin
     Refresh_Avrop(Sender, LONo) ;
     if FindAvrop(Sender) = false then ;
    End
    else
    Begin
     bcStatus.ItemIndex:= Status ;
     Refresh_Avrop(Sender,  LONo) ;
     if FindAvrop(Sender) = false then ;
    End ; }


{  if cbFilter.Checked then
  Begin
  cdsAvrop.Filter:= 'LO = '+Edit2.Text ;
  cdsAvrop.Filtered:= True ;
  End
  else
  Begin
   cdsAvrop.Filter:= 'LO = '+Edit2.Text ;
  End ; }



  Edit2.Text:= '' ;
  Edit2.SetFocus ;

  Finally
//   cdsAvrop.EnableControls ;
  End ;
 End ; //with


end;

procedure TfrmAvrop.FormShow(Sender: TObject) ;
Var x : Integer ;
begin
 with TIniFile.Create(dmsConnector.InifilesMap+'VisAvrop'+'.'+ThisUser.UserName) do
 try
  ClientNo:= ReadInteger ('Avrop', 'ClientNo', 0);
  MarknadNo:=ReadInteger ('Avrop', 'MarknadNo', 0);
  RegionNo:= ReadInteger ('Avrop', 'RegionNo', 0);
  rgOrderType.ItemIndex:=  ReadInteger ('Avrop', 'OrderType', 0) ;
  cbFilter.Checked:=  ReadBool ('Avrop', 'VisaAlla', False) ;
  cbLoadsNotInvoiced.Checked:=  ReadBool ('Avrop', 'EjFakt', False) ;


//Index of skulle vara bra
  For x:= 0 to cbClient.Properties.Items.Count -1 do
  if integer(cbClient.Properties.Items.Objects[x]) = ClientNo then
   cbClient.ItemIndex:= x ;

  For x:= 0 to bcSalesRegions.Properties.Items.Count -1 do
  if integer(bcSalesRegions.Properties.Items.Objects[x]) = RegionNo then
   bcSalesRegions.ItemIndex:= x ;

  For x:= 0 to bcMarketRegions.Properties.Items.Count -1 do
  if integer(bcMarketRegions.Properties.Items.Objects[x]) = MarknadNo then
   bcMarketRegions.ItemIndex:= x ;

 Finally
  Free ;
 End ;
end;

procedure TfrmAvrop.acOpenLoadExecute(Sender: TObject);
begin
 if (daMoLM1.cdsAvrop.Active) and (daMoLM1.cdsAvrop.RecordCount > 0) then
 Begin

  LockWindowUpdate(grdLoads.Handle);

  try
//    LoadBM := grdLoads.DataSource.DataSet.Bookmark;
    try
      with TfLoadEntry.CreateWithExistingLoad(
        Self,
        daMoLM1.cdsAvropCLIENTNO.AsInteger,

        grdLoads.DataSource.DataSet.FieldByName('LoadNo').AsInteger,
        daMoLM1.cdsAvropSALESREGIONNO.AsInteger) do try
        ShowModal;
      finally
        Free ;
        daMoLM1.RefreshAvropLoads(Sender);
      end;
    finally
      try
//        grdLoads.DataSource.DataSet.Bookmark := LoadBM;
      except
        on E:Exception do
          {Nothing};
        end;
      end;
  finally
    LockWindowUpdate(0);
    end;
 End ;
end;

procedure TfrmAvrop.acNewLoadExecute(Sender: TObject);
begin
 if (daMoLM1.cdsAvrop.Active) and (daMoLM1.cdsAvrop.RecordCount > 0) then
 Begin
  with TfLoadEntry.CreateWithNewLoad(Self, daMoLM1.cdsAvropCLIENTNO.AsInteger,
   VIDA_WOOD_COMPANY_NO,
   daMoLM1.cdsAvropSALESREGIONNO.AsInteger) do try
    ShowModal;
  finally
   daMoLM1.RefreshAvropLoads(Sender);
   Free
  end;
 End ;
end;

procedure TfrmAvrop.acDeleteLoadExecute(Sender: TObject);
begin
 ShowMessage('Öppna lasten för att ta bort den.') ;
end;

procedure TfrmAvrop.acChangeLoadLayoutExecute(Sender: TObject);
begin
 grdLoads.ColumnsCustomizing ;
end;

procedure TfrmAvrop.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  grdAvrop.SaveToIniFile(dmsConnector.InifilesMap+'VisAvrop'+'.'+ThisUser.UserName);
  grdNormalLO.SaveToIniFile(dmsConnector.InifilesMap+'VisAvrop'+'.'+ThisUser.UserName);
  grdExtraLO.SaveToIniFile(dmsConnector.InifilesMap+'VisAvrop'+'.'+ThisUser.UserName);
  grdLoads.SaveToIniFile(dmsConnector.InifilesMap+'VisAvrop'+'.'+ThisUser.UserName);

 with TIniFile.Create(dmsConnector.InifilesMap+'VisAvrop'+'.'+ThisUser.UserName) do
 try

  if cbClient.Properties.Items.Count > 0 then
  WriteInteger ('Avrop', 'ClientNo', integer(cbClient.Properties.Items.Objects[cbClient.ItemIndex])) ;

  if bcMarketRegions.Properties.Items.Count > 0 then
  WriteInteger ('Avrop', 'MarknadNo', integer(bcMarketRegions.Properties.Items.Objects[bcMarketRegions.ItemIndex])) ;

  if bcSalesRegions.Properties.Items.Count > 0 then
  WriteInteger ('Avrop', 'RegionNo', integer(bcSalesRegions.Properties.Items.Objects[bcSalesRegions.ItemIndex])) ;

  WriteInteger ('Avrop', 'OrderType', rgOrderType.ItemIndex) ;
  WriteBool ('Avrop', 'VisaAlla', cbFilter.Checked) ;
  WriteBool ('Avrop', 'EjFakt', cbLoadsNotInvoiced.Checked) ;


 Finally
  Free ;
 End ;

  if daMoLM1.cdsAvrop.Active = True then
  Begin
   daMoLM1.cdsAvrop.EmptyDataSet ;
   daMoLM1.cdsAvrop.Active:= False ;
  End ;
 if daMoLM1.cdsSetAvrop.ChangeCount > 0 then
  daMoLM1.cdsSetAvrop.ApplyUpdates(0) ;
 CanClose:= True ;  
end;

End.


