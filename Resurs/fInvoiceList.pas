unit fInvoiceList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, Menus, dxDBTLCl, dxGrClms, SqlTimSt, dxEditor, dxExEdtr, dxEdLib,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar,   DateUtils, dxBar, dxBarExtItems, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxLookAndFeels, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  cxCalc, Buttons, FMTBcd, DBClient, Provider, SqlExpr, clUtils ;

type
  TfrmInvoiceList = class(TForm)
    lbLO_To_Invoice: TListBox;
    ActionList1: TActionList;
    acOpenInvoice: TAction;
    acRefresh: TAction;
    acQuickInvoice: TAction;
    acDeleteInvoice: TAction;
    acCreditInvoice: TAction;
    acGroupedInvoice: TAction;
    acAttestInvoice: TAction;
    acDeleteInvoiceWithNumber: TAction;
    acPrintClientsInvoice: TAction;
    dxBarManager1: TdxBarManager;
    pmPrint: TdxBarPopupMenu;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    acClientPackageSpecification: TAction;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    pmInvoiceGrid: TdxBarPopupMenu;
    dxBarButton5: TdxBarButton;
    acFakturaSvensk: TAction;
    dxBarButton6: TdxBarButton;
    acFakturaEngelsk: TAction;
    dxBarButton7: TdxBarButton;
    acFakturaEngelskLangd: TAction;
    acSpecificationSvensk: TAction;
    acSpecificationEngelsk: TAction;
    acSpecificationEngelskMedProducent: TAction;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    acSpecifikationEngelskAktuellDimension: TAction;
    acTrpBrev: TAction;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    acSpecifikatinUtanPaketNr: TAction;
    acSpecifikationIdahoStyle: TAction;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    acFakturaEngelskAgust: TAction;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    acFakturaEngelskLengthPlusNM3: TAction;
    dxBarButton16: TdxBarButton;
    acFakturaEngelskLangdPerPakettyp: TAction;
    dxBarButton17: TdxBarButton;
    acFakturaSvenskUtanMoms_DK: TAction;
    dxBarButton18: TdxBarButton;
    acFakturaEngelsk_DK: TAction;
    dxBarButton19: TdxBarButton;
    acSpecifikationSvensk_DK: TAction;
    dxBarButton20: TdxBarButton;
    acSpecifikatikonEngelsk_DK: TAction;
    dxBarButton21: TdxBarButton;
    acTrpBrvTest: TAction;
    acClose: TAction;
    Panel2: TPanel;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    Panel6: TPanel;
    Panel4: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel7: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    nfSearchLO: TcxTextEdit;
    nfSearchInvoiceNo: TcxTextEdit;
    nfSearchLastNr: TcxTextEdit;
    rgConfirmed: TRadioGroup;
    fomDate: TcxDateEdit;
    peInvoiceType: TcxComboBox;
    Panel3: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    dxBarLargeButton8: TdxBarLargeButton;
    imglistActions: TImageList;
    Label5: TLabel;
    bcFakturaStatus: TcxComboBox;
    grdFakturaDBTableView1: TcxGridDBTableView;
    grdFakturaLevel1: TcxGridLevel;
    grdFaktura: TcxGrid;
    grdFakturaDBTableView1INT_INVNO: TcxGridDBColumn;
    grdFakturaDBTableView1INV_DATE: TcxGridDBColumn;
    grdFakturaDBTableView1AGENT: TcxGridDBColumn;
    grdFakturaDBTableView1SHIPPER: TcxGridDBColumn;
    grdFakturaDBTableView1CUSTOMER: TcxGridDBColumn;
    grdFakturaDBTableView1LO: TcxGridDBColumn;
    grdFakturaDBTableView1INVOICE_NO: TcxGridDBColumn;
    grdFakturaDBTableView1INVOICE_TYPE: TcxGridDBColumn;
    grdFakturaDBTableView1INVOICE_KONTO: TcxGridDBColumn;
    grdFakturaDBTableView1TO_BE_PAID: TcxGridDBColumn;
    grdFakturaDBTableView1CURRENCY: TcxGridDBColumn;
    grdFakturaDBTableView1CustomerNo: TcxGridDBColumn;
    grdFakturaDBTableView1NM3: TcxGridDBColumn;
    grdFakturaDBTableView1AM3: TcxGridDBColumn;
    grdFakturaDBTableView1KUND_NM3: TcxGridDBColumn;
    grdFakturaDBTableView1KONT_UNIT: TcxGridDBColumn;
    cxLookAndFeelController1: TcxLookAndFeelController;
    grdFakturaDBTableView1FrsljReg: TcxGridDBColumn;
    grdFakturaDBTableView1SljGrupp: TcxGridDBColumn;
    acChangeLayout: TAction;
    dxBarButton23: TdxBarButton;
    Label6: TLabel;
    Label7: TLabel;
    cbSalesGroup: TcxComboBox;
    pmShortCuts: TPopupMenu;
    Uppdatera1: TMenuItem;
    dxBarLargeButton9: TdxBarLargeButton;
    BitBtn1: TBitBtn;
    dxBarSubItem1: TdxBarSubItem;
    acPrintClientInvoiceAndSpecification: TAction;
    dxBarButton22: TdxBarButton;
    acEmailFakturaAndSpec: TAction;
    dxBarButton24: TdxBarButton;
    acPrintTRPOrder: TAction;
    acPrintTrpOrderAndSpec: TAction;
    dxBarButton25: TdxBarButton;
    Timer1: TTimer;
    acExportInvoiceSpec: TAction;
    dxBarLargeButton10: TdxBarLargeButton;
    acEmailaTrpBrev: TAction;
    dxBarButton26: TdxBarButton;
    acSpecSV_GroupByLoadNo: TAction;
    dxBarButton27: TdxBarButton;
    acPreViewInvoice: TAction;
    dxBarButton28: TdxBarButton;
    acPrintCreditInvoices: TAction;
    dxBarButton29: TdxBarButton;
    acPrintMeny: TAction;
    SnabbfakturaF21: TMenuItem;
    SnabbfakturaF22: TMenuItem;
    abortF51: TMenuItem;
    SkrivutF81: TMenuItem;
    KrediteraShiftF21: TMenuItem;
    SamlingsfakturaF101: TMenuItem;
    AttesteratjnsterShiftF101: TMenuItem;
    ExporterafakturaspecF111: TMenuItem;
    StngF121: TMenuItem;
    procedure rgConfirmedClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nfSearchLOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure nfSearchInvoiceNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nfSearchLastNrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acOpenInvoiceExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acQuickInvoiceExecute(Sender: TObject);
    procedure acDeleteInvoiceExecute(Sender: TObject);
    procedure acCreditInvoiceExecute(Sender: TObject);
    procedure acGroupedInvoiceExecute(Sender: TObject);
    procedure acAttestInvoiceExecute(Sender: TObject);
    procedure acDeleteInvoiceWithNumberExecute(Sender: TObject);
    procedure acPrintClientsInvoiceExecute(Sender: TObject);
    procedure acClientPackageSpecificationExecute(Sender: TObject);
    procedure acFakturaSvenskExecute(Sender: TObject);
    procedure acFakturaEngelskExecute(Sender: TObject);
    procedure acFakturaEngelskLangdExecute(Sender: TObject);
    procedure acSpecificationSvenskExecute(Sender: TObject);
    procedure acSpecificationEngelskExecute(Sender: TObject);
    procedure acSpecificationEngelskMedProducentExecute(Sender: TObject);
    procedure acSpecifikationEngelskAktuellDimensionExecute(Sender: TObject);
    procedure acTrpBrevExecute(Sender: TObject);
    procedure acSpecifikatinUtanPaketNrExecute(Sender: TObject);
    procedure acSpecifikationIdahoStyleExecute(Sender: TObject);
    procedure acFakturaEngelskAgustExecute(Sender: TObject);
    procedure acFakturaEngelskLengthPlusNM3Execute(Sender: TObject);
    procedure acFakturaEngelskLangdPerPakettypExecute(Sender: TObject);
    procedure acFakturaSvenskUtanMoms_DKExecute(Sender: TObject);
    procedure acFakturaEngelsk_DKExecute(Sender: TObject);
    procedure acSpecifikationSvensk_DKExecute(Sender: TObject);
    procedure acSpecifikatikonEngelsk_DKExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure peInvoiceTypePropertiesChange(Sender: TObject);
    procedure acCreditInvoiceUpdate(Sender: TObject);
    procedure acTrpBrvTestUpdate(Sender: TObject);
    procedure acAttestInvoiceUpdate(Sender: TObject);
    procedure acDeleteInvoiceUpdate(Sender: TObject);
    procedure acGroupedInvoiceUpdate(Sender: TObject);
    procedure acOpenInvoiceUpdate(Sender: TObject);
    procedure grdFakturaDBTableView1DblClick(Sender: TObject);
    procedure acChangeLayoutExecute(Sender: TObject);
    procedure acPrintClientInvoiceAndSpecificationExecute(Sender: TObject);
    procedure acEmailFakturaAndSpecExecute(Sender: TObject);
    procedure acPrintTRPOrderExecute(Sender: TObject);
    procedure acPrintTrpOrderAndSpecExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure acExportInvoiceSpecExecute(Sender: TObject);
    procedure acEmailaTrpBrevExecute(Sender: TObject);
    procedure acExportInvoiceSpecUpdate(Sender: TObject);
    procedure acSpecSV_GroupByLoadNoExecute(Sender: TObject);
    procedure acFakturaSvenskUpdate(Sender: TObject);
    procedure acFakturaEngelskUpdate(Sender: TObject);
    procedure acFakturaEngelskLangdUpdate(Sender: TObject);
    procedure acFakturaEngelskAgustUpdate(Sender: TObject);
    procedure acFakturaEngelskLengthPlusNM3Update(Sender: TObject);
    procedure acFakturaEngelskLangdPerPakettypUpdate(Sender: TObject);
    procedure acFakturaSvenskUtanMoms_DKUpdate(Sender: TObject);
    procedure acFakturaEngelsk_DKUpdate(Sender: TObject);
    procedure acPreViewInvoiceExecute(Sender: TObject);
    procedure acPrintCreditInvoicesExecute(Sender: TObject);
    procedure acPrintMenyExecute(Sender: TObject);
  private
    { Private declarations }
    ExcelDir : String ;
    procedure RefreshInvoice(Sender: TObject;const InvoiceNo, LONo, InternalInvoiceNo : Integer);
    procedure DeleteInvoiceNoAndInvoice(Sender: TObject);
    procedure printSamlingsFaktura (const InvoiceGroupNo : Integer) ;
    procedure GetMarkedInvoices ;
    procedure RemoveInvoiceFromList (const INT_INVNO : Integer) ;
    Procedure ExportToWoodx ;
    procedure EmailFakturaAndSpecExecute(const IntInvNo : Integer) ;
    procedure EmailaTrpBrevExecute(const IntInvNo : Integer) ;
  public
    { Public declarations }
  end;

var
  frmInvoiceList: TfrmInvoiceList;

implementation

uses
  VidaConst,
  VidaUser,
  VidaUtils, fInvoice, dmsDataConn, UnitCRViewReport, dmcVidaInvoice,
  uConfirmCodeDialog, dmsVidaContact, fAttestInvoice,
  UnitCRPrintReport, UnitCRExportOneReport, uSendMapiMail,
  UnitCRPrintOneReport, dmc_ImportWoodx, MainU, dmsVidaSystem,
  uInvoiceWizard;

{$R *.dfm}

procedure TfrmInvoiceList.rgConfirmedClick(Sender: TObject);
begin
{ if rgConfirmed.ItemIndex = 0 then
  fomDate.Enabled:= False
   else
    fomDate.Enabled:= True ; }
 acRefreshExecute(Sender) ;
end;

procedure TfrmInvoiceList.FormShow(Sender: TObject);
begin
// acRefreshExecute(Sender) ;
end;

procedure TfrmInvoiceList.nfSearchLOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key <> VK_RETURN then Exit;
 With dmVidaInvoice do
 Begin
  RefreshInvoice(Sender, -1, StrToIntDef(nfSearchLO.Text,0), -1);
  cdsInvoiceList.Locate('LO', StrToIntDef(nfSearchLO.Text,0), []) ;
  Timer1.Enabled:= True ;
 End ; //with
end;

procedure TfrmInvoiceList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfrmInvoiceList.FormCreate(Sender: TObject);
Var x, SalesGroup : Integer ;
begin
 SalesGroup               := -1 ;
 dmVidaInvoice            := TdmVidaInvoice.Create(Nil) ;
 peInvoiceType.ItemIndex  := 6 ;
 fomDate.Date             := Date - 15 ;
 if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdFaktura.Name, grdFakturaDBTableView1) = False then ;

 bcFakturaStatus.ItemIndex:= 0 ;

 dmsContact.Load_SalesGroups(cbSalesGroup.Properties.Items) ;
 cbSalesGroup.Properties.Items.Insert(0,'ALLA') ;
 if cbSalesGroup.Properties.Items.Count > 0 then
 cbSalesGroup.ItemIndex:= 0 ;

 ExcelDir          := dmsSystem.Get_Dir('ExcelDir') ;

 For x:= 0 to cbSalesGroup.Properties.Items.Count -1 do
 if integer(cbSalesGroup.Properties.Items.Objects[x]) = SalesGroup then
  cbSalesGroup.ItemIndex:= x ;
end;

procedure TfrmInvoiceList.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dmVidaInvoice) ;//.Free ;
  frmInvoiceList:= Nil ;
end;

procedure TfrmInvoiceList.DeleteInvoiceNoAndInvoice(Sender: TObject);
Var TransNo : Cardinal ;
begin
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
//Om Fakturan är av typ Proforma flytta paket
     if cdsInvoiceListInvoiceType.AsInteger = 2 then
     Begin
      sq_Delete_Confirmed_Load.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListINT_INVNO.AsInteger ;
      sq_Delete_Confirmed_Load.ExecSQL(False) ;

      sq_CghInv_PkgNos.ParamByName('InternalInvoiceNo').AsInteger  := cdsInvoiceListINT_INVNO.AsInteger ;
      sq_CghInv_PkgNos.ParamByName('Status').AsInteger             := 0 ;
      sq_CghInv_PkgNos.ExecSQL(False) ;
     End ;

     sq_DeleteInvoice.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListINT_INVNO.AsInteger ;
     sq_DeleteInvoice.ExecSQL(false) ;
     dmsConnector.Commit(TransNo) ;
     Except
      dmsConnector.Rollback(TransNo) ;
      ShowMessage('Misslyckades med att ta bort fakturan.') ;
     End ;
     cdsInvoiceList.Active:= False ;
     cdsInvoiceList.Active:= True ;

   End ;
  End ;
 End
 else
  ShowMessage('Kan inte ta bort kredit faktura.') ;
end;

procedure TfrmInvoiceList.nfSearchInvoiceNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 rgConfirmed.ItemIndex:= 1 ;
 if Key <> VK_RETURN then Exit;
 With dmVidaInvoice do
 Begin
  RefreshInvoice(Sender, StrToIntDef(nfSearchInvoiceNo.Text,0),-1, -1);
  cdsInvoiceList.Locate('INVOICE_NO', StrToIntDef(nfSearchInvoiceNo.Text,0), []) ;
 End ; //with
end;

procedure TfrmInvoiceList.printSamlingsFaktura (const InvoiceGroupNo : Integer) ;
Var FormCRViewReport : TFormCRViewReport ;
begin
 if InvoiceGroupNo < 1 then exit ;

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

procedure TfrmInvoiceList.RefreshInvoice(Sender: TObject;const InvoiceNo, LONo, InternalInvoiceNo : Integer);
Var
 Save_Cursor:TCursor;
begin
 fomDate.Date:= RecodeHour(fomDate.Date,0) ;
 fomDate.Date:= RecodeMinute(fomDate.Date,0) ;
 fomDate.Date:= RecodeSecond(fomDate.Date,0) ;
 with  dmVidaInvoice do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  grdFakturaDBTableView1.DataController.DataSet.DisableControls ;
  Try

  cdsInvoiceList.Active:= False ;
  sq_InvoiceList.Close ;
  sq_InvoiceList.SQL.Clear ;


   sq_InvoiceList.SQL.Add('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO,') ;
{   Case peInvoiceType.ItemIndex of
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
            sq_InvoiceList.SQL.Add('-1 AS INVOICE_NO,')
             else
              sq_InvoiceList.SQL.Add('-1 AS INVOICE_NO,') ;
   End ;//Case
   }

  sq_InvoiceList.SQL.Add('CASE') ;
  sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN ') ;
  sq_InvoiceList.SQL.Add('(Select INO.InvoiceNo FROM dbo.InvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo) ') ;
  sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN ') ;
  sq_InvoiceList.SQL.Add('(Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo) ') ;
  sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN ') ;
  sq_InvoiceList.SQL.Add('(Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo) ') ;
  sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 3 THEN ') ;
  sq_InvoiceList.SQL.Add('(Select INO.PO_InvoiceNo FROM dbo.InvoiceNumber_PO INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo) ') ;
  sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 4 THEN ') ;
  sq_InvoiceList.SQL.Add('(Select INO.InvoiceNo FROM dbo.InvoiceNo_USA INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo) ') ;
  sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 5 THEN ') ;
  sq_InvoiceList.SQL.Add('(Select INO.InvoiceNo FROM dbo.InvNo_FW INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo) ') ;
  sq_InvoiceList.SQL.Add('END AS INVOICE_NO,') ;


  sq_InvoiceList.SQL.Add('CASE') ;
  sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN ' + QuotedStr('Vida K1')) ;
  sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN ' + QuotedStr('Proforma, fakturera senare')) ;
  sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN ' + QuotedStr('Proforma, flytta paket')) ;
  sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 3 THEN ' + QuotedStr('Inköp VW')) ;
  sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 4 THEN ' + QuotedStr('USA K2')) ;
  sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 5 THEN ' + QuotedStr('FW')) ;
  sq_InvoiceList.SQL.Add('END AS INVOICE_TYPE,') ;

{   Case peInvoiceType.ItemIndex of
    0 :    sq_InvoiceList.SQL.Add(QuotedStr('Försäljning')+'AS INVOICE_TYPE,') ;
    1 :    sq_InvoiceList.SQL.Add(QuotedStr('PROFORMA, Fakturera senare')+'AS INVOICE_TYPE,') ;
    2 :    sq_InvoiceList.SQL.Add(QuotedStr('PROFORMA, flytta paket')+'AS INVOICE_TYPE,') ;
    3 :    sq_InvoiceList.SQL.Add(QuotedStr('PROFORMA')+'AS INVOICE_TYPE,') ;
    4 :    sq_InvoiceList.SQL.Add(QuotedStr('USA')+'AS INVOICE_TYPE,') ;
    5 :    sq_InvoiceList.SQL.Add(QuotedStr('FW')+'AS INVOICE_TYPE,') ;
    6 :    sq_InvoiceList.SQL.Add(QuotedStr('ALLA')+'AS INVOICE_TYPE,') ;
   End ; }

{   VIDA (K1)
PROFORMA (invoice later)
PROFORMA (move pkgs)
PURCHASE INVOICE
USA (K2)
FW
ALLA }


   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN '+'''DEBIT''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN '+'''CREDIT''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_KONTO,') ;

   sq_InvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,') ;
   sq_InvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,') ;
//   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+') ;
//   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID, IH.CustomerNo,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerNo,') ;
//   sq_InvoiceList.SQL.Add('spi.SHIPPED_NOMM3 AS NM3, spi.SHIPPED_ACTM3 AS AM3,') ;

   sq_InvoiceList.SQL.Add('SUM(PT.totalm3Nominal) as NM3, SUM(PT.totalm3Actual) as AM3,') ;

   sq_InvoiceList.SQL.Add('dpi.KUND_NM3, dpi.KONT_UNIT,') ;
   sq_InvoiceList.SQL.Add('SR.ClientName AS FörsäljReg, sm.SalesGroupName AS SäljGrupp, IH.InvoiceType') ;

   sq_InvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH') ;
   sq_InvoiceList.SQL.Add('Inner join dbo.Client SR ON SR.ClientNo = IH.SupplierNo') ;

   sq_InvoiceList.SQL.Add('Left Outer Join dbo.SalesManGroupRow smg ') ;
   sq_InvoiceList.SQL.Add('Inner Join dbo.SalesManGroup sm on sm.SalesGroupNo = smg.SalesGroupNo') ;
   sq_InvoiceList.SQL.Add('on smg.UserID = IH.ResponsibleSeller') ;

   sq_InvoiceList.SQL.Add('Inner Join dbo.InvoiceLO IL ON IL.InternalInvoiceNo = IH.InternalInvoiceNo') ;
//   sq_InvoiceList.SQL.Add('Left Outer Join dbo.shippedPerInvoice spi on spi.InternalInvoiceNo = IH.InternalInvoiceNo') ;
   sq_InvoiceList.SQL.Add('Left Outer Join dbo.DelVolInvoice dpi on dpi.InternalInvoiceNo = IH.InternalInvoiceNo') ;

   sq_InvoiceList.SQL.Add('LEFT OUTER JOIN dbo.Invoiced_Load ILD ') ;
   sq_InvoiceList.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.LoadNo = ILD.LoadNo AND') ;
   sq_InvoiceList.SQL.Add('                      LD.ShippingPlanNo = ILD.SHIPPINGPLANNO') ;
   sq_InvoiceList.SQL.Add('INNER JOIN dbo.PackageType PT ON PT.PackageTypeNo = LD.PackageTypeNo') ;
   sq_InvoiceList.SQL.Add('ON ILD.InternalInvoiceNo = IL.InternalInvoiceNo') ;
   sq_InvoiceList.SQL.Add('                     AND ILD.ShippingPlanNo = IL.SHIPPINGPLANNO') ;



{   if rgConfirmed.ItemIndex = 1 then
   Case peInvoiceType.ItemIndex of
    0 : sq_InvoiceList.SQL.Add('Inner Join dbo.InvoiceNumber INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
    1 : sq_InvoiceList.SQL.Add('Inner Join dbo.ProformaInvoiceNumber INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
    2 : sq_InvoiceList.SQL.Add('Inner Join dbo.ProformaInvoiceNumber INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
    3 : sq_InvoiceList.SQL.Add('Inner Join dbo.InvoiceNumber_PO INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
    4 : sq_InvoiceList.SQL.Add('Inner Join dbo.InvoiceNo_USA INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
    5 : sq_InvoiceList.SQL.Add('Inner Join dbo.InvNo_FW INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo') ;
   End ; }

   sq_InvoiceList.SQL.Add('WHERE (IH.Debit_Credit = 0 OR IH.Debit_Credit = 1)') ;
//   if peInvoiceType.ItemIndex = 6 then
   if (LONo = -1) and (InvoiceNo = -1) and (InternalInvoiceNo  = -1) and (peInvoiceType.ItemIndex < 6) then
   sq_InvoiceList.SQL.Add('AND IH.InvoiceType = ' + IntToStr(peInvoiceType.ItemIndex)) ;

//   sq_InvoiceList.SQL.Add('WHERE IH.InvoiceType > -1 ')
//   else
//   sq_InvoiceList.SQL.Add('WHERE IH.InvoiceType = '+IntToStr(peInvoiceType.ItemIndex)) ;

   if (cbSalesGroup.ItemIndex > 0) and (InvoiceNo = -1) and (LONo = -1) then
   sq_InvoiceList.SQL.Add('AND smg.SalesGroupNo = '+inttostr(integer(cbSalesGroup.Properties.Items.Objects[cbSalesGroup.ItemIndex]))) ;

   if InvoiceNo > -1 then
   Begin
    sq_InvoiceList.SQL.Add('AND (' + IntToStr(InvoiceNo) + ' in (Select INO.InvoiceNo FROM dbo.InvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
    sq_InvoiceList.SQL.Add(' OR ' + IntToStr(InvoiceNo) + ' in (Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
    sq_InvoiceList.SQL.Add(' OR ' + IntToStr(InvoiceNo) + ' in (Select INO.PO_InvoiceNo FROM dbo.InvoiceNumber_PO INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
    sq_InvoiceList.SQL.Add(' OR ' + IntToStr(InvoiceNo) + ' in (Select INO.InvoiceNo FROM dbo.InvoiceNo_USA INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
    sq_InvoiceList.SQL.Add(' OR ' + IntToStr(InvoiceNo) + ' in (Select INO.InvoiceNo FROM dbo.InvNo_FW INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
    sq_InvoiceList.SQL.Add(')') ;
   End ;
{   Begin
   if rgConfirmed.ItemIndex = 1 then
   Case peInvoiceType.ItemIndex of
    0 : sq_InvoiceList.SQL.Add('AND INO.InvoiceNo = '+IntToStr(InvoiceNo)) ;
    1 : sq_InvoiceList.SQL.Add('AND INO.ProformaInvoiceNo = '+IntToStr(InvoiceNo)) ;
    2 : sq_InvoiceList.SQL.Add('AND INO.ProformaInvoiceNo = '+IntToStr(InvoiceNo)) ;
    3 : sq_InvoiceList.SQL.Add('AND INO.PO_InvoiceNo = '+IntToStr(InvoiceNo)) ;
    4 : sq_InvoiceList.SQL.Add('AND INO.InvoiceNo = '+IntToStr(InvoiceNo)) ;
    5 : sq_InvoiceList.SQL.Add('AND INO.InvoiceNo = '+IntToStr(InvoiceNo)) ;
   End ;
   End ; }

   if LONo <> -1 then
    sq_InvoiceList.SQL.Add('AND IL.ShippingPlanNo = '+IntToStr(LONo)) ;

   if  (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
//   and (rgConfirmed.ItemIndex = 1) then
   sq_InvoiceList.SQL.Add('AND IH.InvoiceDate >= '+QuotedStr(DateToStr(fomDate.Date)) ) ;

   if InternalInvoiceNo  <> -1 then
    sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo = '+IntToStr(InternalInvoiceNo)) ;

{   if rgConfirmed.ItemIndex = 0 then
   Case peInvoiceType.ItemIndex of
    0 : sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo NOT IN (SELECT InternalInvoiceNo FROM dbo.InvoiceNumber)') ;
    1 : sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo NOT IN (SELECT InternalInvoiceNo FROM dbo.ProformaInvoiceNumber)') ;
    2 : sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo NOT IN (SELECT InternalInvoiceNo FROM dbo.ProformaInvoiceNumber)') ;
    3 : sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo NOT IN (SELECT InternalInvoiceNo FROM dbo.InvoiceNumber_PO)') ;
    4 : sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo NOT IN (SELECT InternalInvoiceNo FROM dbo.InvoiceNo_USA)') ;
    5 : sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo NOT IN (SELECT InternalInvoiceNo FROM dbo.InvNo_FW)') ;
   End ; }

  if bcFakturaStatus.ItemIndex = 1 then //DEL OCH OBETALDA
  Begin
   sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo not IN') ;
   sq_InvoiceList.SQL.Add('(Select  InternalInvoiceNo  FROM dbo.InvoicePayStatus WHERE Paid = 1)') ;
  End
  else
  if bcFakturaStatus.ItemIndex = 2 then //ENDAST DEL BETALDA
  Begin
   sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo IN') ;
   sq_InvoiceList.SQL.Add('(Select  InternalInvoiceNo  FROM dbo.InvoicePayStatus WHERE Paid = 0 AND AmountPaid > 0)') ;
  End
  else
  if bcFakturaStatus.ItemIndex = 3 then //FULL BETALDA
  Begin
   sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo IN') ;
   sq_InvoiceList.SQL.Add('(Select  InternalInvoiceNo  FROM dbo.InvoicePayStatus WHERE Paid = 1)') ;
  End ;

//  if bcFakturaStatus.ItemIndex = 4 then //FULL BETALDA
//   sq_InvoiceList.ParamByName('StartInvoiceDate').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(deFOM.Date) ;


   sq_InvoiceList.SQL.Add('Group by IH.InternalInvoiceNo, IH.InvoiceDate, IH.AgentName, IL.Shipper,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName, IL.ShippingPlanNo, SR.ClientName, sm.SalesGroupName, ') ;

{   Case peInvoiceType.ItemIndex of
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
//    6 :   if rgConfirmed.ItemIndex = 1 then
//            sq_InvoiceList.SQL.Add('INO.InvoiceNo,') ;
   End ;//Case
   }

   sq_InvoiceList.SQL.Add('IH.Debit_Credit,') ;
   sq_InvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid,') ;
   sq_InvoiceList.SQL.Add('IH.CurrencyName, IH.CustomerNo, dpi.KUND_NM3, dpi.KONT_UNIT, IH.InvoiceType') ;


   sq_InvoiceList.SQL.Add('ORDER BY InvoiceDate desc') ;
// if thisuser.UserID = 8 then sq_InvoiceList.SQL.SaveToFile('sq_InvoiceList.TXT');

  sq_InvoiceList.Open ;
  cdsInvoiceList.Active:= True ;

   Finally
    grdFakturaDBTableView1.DataController.DataSet.EnableControls ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   End ;
 End ; // with
end;

procedure TfrmInvoiceList.nfSearchLastNrKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
Var InvoiceType, InternalInvoiceNo : Integer ;
begin
// rgConfirmed.ItemIndex:= 1 ;
 if Key <> VK_RETURN then Exit;
 With dmVidaInvoice do
 Begin
  InternalInvoiceNo:= Get_InternalInvoiceNo (InvoiceType, StrToIntDef(nfSearchLastNr.Text,0)) ;
  if InternalInvoiceNo <> -1 then
  Begin
//   peInvoiceType.ItemIndex:= InvoiceType ;
   RefreshInvoice(Sender, -1, -1, InternalInvoiceNo);
  End
  else
   ShowMessage('No match') ;
 End ; //with
end;

procedure TfrmInvoiceList.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdFaktura.Name, grdFakturaDBTableView1) ;
 CanClose:= True ;
end;

procedure TfrmInvoiceList.acOpenInvoiceExecute(Sender: TObject);
Var frmInvoice  : TfrmInvoice ;
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 with dmVidaInvoice do
 Begin
  frmInvoice:= TfrmInvoice.Create(NIL);
  Try
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   cdsInvoiceShipTo.Active:= True ;
   frmInvoice.TabControl1.Tabs.Clear ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   cdsInvoiceHead.Active:= False ;
   sq_InvoiceHead.Close ;
   sq_InvoiceHead.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListINT_INVNO.AsInteger ;
   sq_InvoiceHead.Open ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   cdsInvoiceHead.Active:= True ;
   sq_InvoiceLO.Close ;
   sq_InvoiceLO.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListINT_INVNO.AsInteger ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//  cdsInvoiceLO.Active:= False ;
//  cdsInvoiceLO.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString ;
//  cdsInvoiceLO.Filtered:= True ;

   cdsInvoiceLO.Active:= True ;

   cds_PIP.Active:= False ;
   sq_PIP.ParamByName('OwnerNo').AsInteger:= cdsInvoiceHeadSupplierNo.AsInteger ;
   cds_PIP.Active:= True ;

   cds_IH_SpecLoad.Active:= False ;
   sq_IH_SpecLoad.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListINT_INVNO.AsInteger ;
   cds_IH_SpecLoad.Active:= True ;
   if cds_IH_SpecLoad.RecordCount = 0 then
   Begin
    cds_IH_SpecLoad.Insert ;
    cds_IH_SpecLoad.Post ;
   End ;


  cdsInvoiceLO.First ;
  While not cdsInvoiceLO.Eof do
  Begin
   frmInvoice.TabControl1.Tabs.Add(cdsInvoiceLOShippingPlanNo.AsString) ;
   cdsInvoiceLO.Next ;
  End ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  cdsInvoiceLO.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = '+frmInvoice.TabControl1.Tabs[0] ;
  cdsInvoiceLO.Filtered:= True ;
  sq_InvoiceDetail.Close ;
  sq_InvoiceDetail.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListINT_INVNO.AsInteger ;
  cdsInvoiceDetail.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = '+frmInvoice.TabControl1.Tabs[0] ;
  cdsInvoiceDetail.Filtered:= True ;
  cdsInvoiceDetail.Active:= True ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }  

 frmInvoice.ShowModal ;

  if dmVidaInvoice.cds_IH_SpecLoad.State in [dsEdit, dsInsert] then
   dmVidaInvoice.cds_IH_SpecLoad.Post ;
  if dmVidaInvoice.cds_IH_SpecLoad.ChangeCount > 0 then
   dmVidaInvoice.cds_IH_SpecLoad.ApplyUpdates(0) ;

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
 End ;
 End ; // with
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure TfrmInvoiceList.acRefreshExecute(Sender: TObject);
begin
 RefreshInvoice (Sender,-1, -1, -1) ;
 grdFaktura.Setfocus ;
end;

procedure TfrmInvoiceList.acQuickInvoiceExecute(Sender: TObject);
Var frmInvoice      : TfrmInvoice ;
//    fInvoiceWizard  : TfInvoiceWizard;
begin
 if MessageDlg('Vill skapa snabbfaktura? ',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 with  dmVidaInvoice do
 Begin
//Check and Compare that LO are valid to be invoiced together, if OK then
//Insert InvoiceHeader

  cdsInvoiceHead.Active:= True ;
  cdsInvoiceLO.Active:= True ;
  cdsInvoiceDetail.Active:= True ;
//  cdsOneLoad.Active:= True ;



//Insert Invoice Head
  dmVidaInvoice.cdsInvoiceHeadResponsibleSeller.OnChange := nil ;
  Try
  cdsInvoiceHead.Insert ;
  cdsInvoiceHeadResponsibleSeller.AsInteger                     := ThisUser.UserID ;
  Finally
   dmVidaInvoice.cdsInvoiceHeadResponsibleSeller.OnChange := dmVidaInvoice.cdsInvoiceHeadResponsibleSellerChange ;
  End ;
  cdsInvoiceHeadTrading.AsInteger                               := 0 ;
  cdsInvoiceHeadQuickInvoice.AsInteger                          := 1 ;
  cdsInvoiceHeadInternalInvoiceNo.AsInteger                     := dmsConnector.NextMaxNo('InvoiceHeader');

  cdsInvoiceHeadDebit_Credit.AsInteger                          := 0 ;

  cdsInvoiceHeadInvoiceType.AsInteger                           := 0 ;
  cdsInvoiceHeadInvoiceDate.AsSQLTimeStamp                      := DateTimeToSQLTimeStamp(now) ;
  cdsInvoiceHeadSupplierNo.AsInteger                            := VIDA_WOOD_COMPANY_NO ; //Vida Wood
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
    cdsInvoiceLOShippingPlanNo.AsInteger                 := dmsConnector.NextMinNo('LO_Neg') ; //Mars 18 2006

    cdsInvoiceLOOrderNoText.AsString                     := '' ;
    cdsInvoiceLOReference.AsString                       := '' ;
    cdsInvoiceLOOurReference.AsString                    := '' ;
    cdsInvoiceLOSalesMan.AsString                        := dmsContact.GetFullUserName(ThisUser.UserID) ;
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


    cdsInvoiceDetail.Insert ;
    cdsInvoiceDetailReference.AsString                  := '1' ;
    cdsInvoiceDetailInternalInvoiceNo.AsInteger         := cdsInvoiceLOInternalInvoiceNo.AsInteger ;
    cdsInvoiceDetailShippingPlanNo.AsInteger            := cdsInvoiceLOShippingPlanNo.AsInteger ;
    cdsInvoiceDetailInvoiceDetailNo.AsInteger           := 1 ;
    cdsInvoiceDetailTypeOfRow.AsInteger                 := 2 ; //Additonal cost
    cdsInvoiceDetail.Post ;

{    fInvoiceWizard:= TfInvoiceWizard.Create(nil) ;
    Try
     fInvoiceWizard.ShowModal ;
    Finally
     FreeAndNil(fInvoiceWizard) ;
    End ; }



 frmInvoice:= TfrmInvoice.Create(Nil);
 Try
  cdsInvoiceLO.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = '+cdsInvoiceLOShippingPlanNo.AsString ;
  cdsInvoiceLO.Filtered:= True ;
  cdsInvoiceDetail.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = '+cdsInvoiceLOShippingPlanNo.AsString ;
  cdsInvoiceDetail.Filtered:= True ;

  frmInvoice.TabControl1.Tabs.Clear ;

// for x := 0 to ListBox1.Count - 1 do
  frmInvoice.TabControl1.Tabs.Add(cdsInvoiceLOShippingPlanNo.AsString) ;

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
End;

procedure TfrmInvoiceList.RemoveInvoiceFromList (const INT_INVNO : Integer) ;
Begin
 With dmVidaInvoice do
 Begin
  cdsInvoiceList.Filter:= 'INT_INVNO = '+inttostr(INT_INVNO) ;
  cdsInvoiceList.Filtered:= True ;
  Try
  cdsInvoiceList.First ;
  While not cdsInvoiceList.Eof do
   cdsInvoiceList.Delete ;
  Finally
   cdsInvoiceList.Filtered:= False ;  
  End ;
 End ;
End ;

procedure TfrmInvoiceList.acDeleteInvoiceExecute(Sender: TObject);
Var TransNo : Cardinal ;
begin
 if MessageDlg('Attester gjorda mot fakturan försvinner om fakturan tas bort, vill du fortsätta?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
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
     RemoveInvoiceFromList (cdsInvoiceListINT_INVNO.AsInteger)
     Except
      dmsConnector.Rollback(TransNo) ;
     End ;
//     cdsInvoiceList.Active:= False ;
//     cdsInvoiceList.Active:= True ;
    End
    else
    ShowMessage('Cannot delete, Invoice number assigned!') ;
   End ;
 Finally
  cdsInvoiceNumber.Active:= False ;
 End ;
 End ;//With
end;


procedure TfrmInvoiceList.acCreditInvoiceExecute(Sender: TObject);
Var Credit_Int_Inv_No : Integer ;
begin
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
  if Credit_Int_Inv_No > 0 then
  Begin
//   rgConfirmed.ItemIndex:= 0 ;
   acRefreshExecute(Sender) ;
   if cdsInvoiceList.FindKey([Credit_Int_Inv_No]) then
    acOpenInvoiceExecute(Sender) ;
  End ;
 End ;

 End
  else
   ShowMessage('This is a Credit Invoice, cannot credit a credit invoice!') ;
 End ;
 End ;// with
end;

procedure TfrmInvoiceList.GetMarkedInvoices ;
 Var y, i, RecIDX   : Integer ;
 Save_Cursor        : TCursor;
 ColIdx             : Integer ;
 INT_INVNO          : Integer ;
 Duplicate          : Boolean ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 with dmVidaInvoice do
 Begin
  lbLO_To_Invoice.Items.Clear ;
  grdFakturaDBTableView1.BeginUpdate ;
  grdFakturaDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdFakturaDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdFakturaDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdFakturaDBTableView1.DataController.GetItemByFieldName('INT_INVNO').Index;
    INT_INVNO   := grdFakturaDBTableView1.DataController.Values[RecIdx, ColIdx];

    For y := 0 to lbLO_To_Invoice.Items.Count - 1 do
    Begin
     if IntToStr(INT_INVNO) = lbLO_To_Invoice.Items[y] then
     Duplicate := True ;
    End ;
    if Duplicate = False then
    Begin
     lbLO_To_Invoice.Items.Add(IntToStr(INT_INVNO)) ;
    End ;

   End ;//for y

 Finally
  grdFakturaDBTableView1.DataController.EndLocate ;
  grdFakturaDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;


procedure TfrmInvoiceList.acGroupedInvoiceExecute(Sender: TObject);
Var
    Roll_Back     : Boolean ;
    TransactionNo : LongWord;
    Save_Cursor   : TCursor;
    InvoiceGroupNo, x : Integer ;
begin
 if MessageDlg('Vill skapa samlingsfaktura? ',
 mtConfirmation, [mbYes, mbNo, mbCancel], 0) = mrYes then
 with dmVidaInvoice do
 begin
  Roll_Back:= False ;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  grdFakturaDBTableView1.DataController.DataSet.DisableControls ;
  Try
  GetMarkedInvoices ;

{  lbLO_To_Invoice.Items.Clear ;
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
  end; //for.. }

  if lbLO_To_Invoice.Items.Count < 1 then
   Begin
    ShowMessage('Minst en faktura måste väljas.') ;
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
    grdFakturaDBTableView1.DataController.DataSet.EnableControls ;
    grdFakturaDBTableView1.Controller.ClearSelection ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   End ;
 End ; //with
end;

procedure TfrmInvoiceList.acAttestInvoiceExecute(Sender: TObject);
Var x                 : Integer ;
    Save_Cursor       : TCursor;
    frmAttestInvoice  : TfrmAttestInvoice;
begin
 with dmVidaInvoice do
 Begin

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//ta bort next och prior, ladda inte allt, går det att undvika
 frmAttestInvoice:= TfrmAttestInvoice.Create(Nil);
 sq_InvoiceShipToAddress.DataSource:= dsrcInvoiceHead_II ;
 Try

//  if peInvoiceType.ItemIndex = 3 then
//   frmAttestInvoice.LCustomer.Caption:= 'Leverantör:'
//    else
//     frmAttestInvoice.LCustomer.Caption:= 'Kund:' ;
  if cdsInvoiceListInvoiceType.AsInteger = 3 then
   frmAttestInvoice.LCustomer.Caption:= 'Leverantör:'
    else
     frmAttestInvoice.LCustomer.Caption:= 'Kund:' ;

  frmAttestInvoice.cbInvoiceType.ItemIndex  := cdsInvoiceListInvoiceType.AsInteger ;
//  frmAttestInvoice.cbInvoiceType.ReadOnly   := True ;
  mt_AttestRow.Active                   := True ;
  mt_InvDtl_Att.Active                  := True ;
  cdsInvoiceShipTo.Active               := True ;
  frmAttestInvoice.TabControl1.Tabs.Clear ;

//  sq_InvoiceHead_II.ParamByName('InvoiceType').AsInteger:= peInvoiceType.ItemIndex ;
  cdsInvoiceHead_II.Active:= False ;
  OpenInvoiceHeaderForAttest(cdsInvoiceListINT_INVNO.AsInteger, cdsInvoiceListInvoiceType.AsInteger {peInvoiceType.ItemIndex}) ;
  cdsInvoiceHead_II.Active:= True ;
//  cdsInvoiceHead_II.Filter:= 'InvoiceType = '+IntToStr(peInvoiceType.ItemIndex) ;
//  cdsInvoiceHead_II.Filtered:= True ;
//  if cdsInvoiceHead_II.FindKey([cdsInvoiceListINT_INVNO.AsInteger]) then
  if cdsInvoiceHead_II.RecordCount > 0 then
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
  fInternalInvoiceNo                  := -1 ;
  sq_InvoiceShipToAddress.DataSource  := dsrcInvoiceHead ;
  sq_InvDtl_Att.Close ;
  cdsInvoiceLO.Filtered               := False ;
  cdsInvoiceLO.Active                 := False ;
  cds_InvDtl_Att.Active               := False ;
  cdsInvoiceShipTo.Active             := False ;
  mt_InvDtl_Att.Active                := False ;
  mt_AttestRow.Active                 := False ;
  FreeAndNil(frmAttestInvoice) ;
  Screen.Cursor                       := Save_Cursor;  { Always restore to normal }
 End ;

 End ; // with dmVidaInvoice do
end;


procedure TfrmInvoiceList.acDeleteInvoiceWithNumberExecute(
  Sender: TObject);
var frmConfirmCodeDialog: TfrmConfirmCodeDialog;
begin
 if MessageDlg('Attester gjorda mot fakturan försvinner om fakturan tas bort, vill du fortsätta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
     Exit ;

 frmConfirmCodeDialog:= TfrmConfirmCodeDialog.Create(Nil) ;
 Try
 if frmConfirmCodeDialog.ShowModal = mrOk then
 Begin
  if Trim(frmConfirmCodeDialog.eConfirmationCode.Text) = '47x147' then
  Begin
   //if rgConfirmed.ItemIndex = 1 then
   if dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsInteger > 0 then
   Begin
    if MessageDlg('Fakturan har ett nummer tilldelat, vill du ta bort det och fakturan?',
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


procedure TfrmInvoiceList.acPrintClientsInvoiceExecute(Sender: TObject);
Var FormCRPrintReport       : TFormCRPrintReport;
    A                       : array of variant;
    RoleType                : Integer ;
begin
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
 FormCRPrintReport:= TFormCRPrintReport.Create(Nil);
 RoleType:= 1 ;
 Try
  SetLength(A, 1) ;
  A[0]:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger ;
//const OverRideNoOfCopies, ClientNo, DocTyp : Integer;const A: array of variant);
  FormCRPrintReport.CreateCo(1, dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, RoleType, cFaktura, A) ;
 Finally
  FreeAndNil(FormCRPrintReport) ; //.Free ;
 End ;
end;

procedure TfrmInvoiceList.acClientPackageSpecificationExecute(Sender: TObject);
Var FormCRPrintReport   : TFormCRPrintReport;
    A                   : array of variant;
    RoleType                : Integer ;
begin
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
 FormCRPrintReport:= TFormCRPrintReport.Create(Nil);
 RoleType                := 1 ;
 Try
  SetLength(A, 1);
  A[0]:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger ;
  FormCRPrintReport.CreateCo(1,dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, RoleType, cPkgSpec, A) ;
 Finally
  FreeAndNil(FormCRPrintReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoiceList.acFakturaSvenskExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
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

procedure TfrmInvoiceList.acFakturaEngelskExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
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

procedure TfrmInvoiceList.acFakturaEngelskLangdExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
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


procedure TfrmInvoiceList.acSpecificationSvenskExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
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


procedure TfrmInvoiceList.acSpecificationEngelskExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
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


procedure TfrmInvoiceList.acSpecificationEngelskMedProducentExecute(
  Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
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


procedure TfrmInvoiceList.acSpecifikationEngelskAktuellDimensionExecute(Sender: TObject);
  Var FormCRViewReport : TFormCRViewReport ;
begin
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


procedure TfrmInvoiceList.acTrpBrevExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
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


procedure TfrmInvoiceList.acSpecifikatinUtanPaketNrExecute(
  Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
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

procedure TfrmInvoiceList.acSpecifikationIdahoStyleExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
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

procedure TfrmInvoiceList.acFakturaEngelskAgustExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
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


procedure TfrmInvoiceList.acFakturaEngelskLengthPlusNM3Execute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
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

procedure TfrmInvoiceList.acFakturaEngelskLangdPerPakettypExecute(Sender: TObject);
 Var FormCRViewReport : TFormCRViewReport ;
begin
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


procedure TfrmInvoiceList.acFakturaSvenskUtanMoms_DKExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
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

procedure TfrmInvoiceList.acFakturaEngelsk_DKExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
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

procedure TfrmInvoiceList.acSpecifikationSvensk_DKExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
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

procedure TfrmInvoiceList.acSpecifikatikonEngelsk_DKExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
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

procedure TfrmInvoiceList.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmInvoiceList.peInvoiceTypePropertiesChange(Sender: TObject);
begin
// acRefreshExecute(Sender) ;
end;

procedure TfrmInvoiceList.acCreditInvoiceUpdate(Sender: TObject);
begin
// acCreditInvoice.Enabled:= (peInvoiceType.ItemIndex = 0) and (rgConfirmed.ItemIndex = 1) ;
 With dmVidaInvoice do
 Begin
  acCreditInvoice.Enabled:=  (cdsInvoiceListInvoiceType.AsInteger = 0) and (cdsInvoiceListINVOICE_NO.AsInteger > 0) ;
 End ;
end;

procedure TfrmInvoiceList.acTrpBrvTestUpdate(Sender: TObject);
begin
 acTrpBrvTest.Enabled:= ThisUser.UserID = 8 ;
end;

procedure TfrmInvoiceList.acAttestInvoiceUpdate(Sender: TObject);
begin
 acAttestInvoice.Enabled:= //(rgConfirmed.ItemIndex = 1)
  ((dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsInteger > 0) or (dmVidaInvoice.cdsInvoiceListINVOICE_NO.IsNull = False))
 and (grdFakturaDBTableView1.DataController.DataSource.DataSet.Active)
 and (grdFakturaDBTableView1.DataController.DataSource.DataSet.RecordCount > 0) ;
end;

procedure TfrmInvoiceList.acDeleteInvoiceUpdate(Sender: TObject);
begin
 acDeleteInvoice.Enabled:= (grdFakturaDBTableView1.DataController.DataSource.DataSet.Active)
// and (rgConfirmed.ItemIndex = 0)
 AND ((dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsInteger < 1) or (dmVidaInvoice.cdsInvoiceListINVOICE_NO.IsNull))
 and (grdFakturaDBTableView1.DataController.DataSource.DataSet.RecordCount > 0) ;
end;

procedure TfrmInvoiceList.acGroupedInvoiceUpdate(Sender: TObject);
begin
 acGroupedInvoice.Enabled:= (grdFakturaDBTableView1.DataController.DataSource.DataSet.Active)
 and (grdFakturaDBTableView1.Controller.SelectedRecordCount > 0)
// and (grdFakturaDBTableView1.DataController.DataSource.DataSet.RecordCount > 0)
 AND ((dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsInteger > 0) AND (dmVidaInvoice.cdsInvoiceListINVOICE_NO.IsNull = False)) ;
// and (rgConfirmed.ItemIndex = 1) ;
end;

procedure TfrmInvoiceList.acOpenInvoiceUpdate(Sender: TObject);
begin
 acOpenInvoice.Enabled:= (grdFakturaDBTableView1.DataController.DataSource.DataSet.Active)
 and (grdFakturaDBTableView1.DataController.DataSource.DataSet.Active)
 and (grdFakturaDBTableView1.DataController.DataSource.DataSet.RecordCount > 0) ;
end;

procedure TfrmInvoiceList.grdFakturaDBTableView1DblClick(Sender: TObject);
begin
 acOpenInvoiceExecute(Sender) ;
end;

procedure TfrmInvoiceList.acChangeLayoutExecute(Sender: TObject);
begin
  if grdFaktura.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdFaktura.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfrmInvoiceList.acPrintClientInvoiceAndSpecificationExecute(Sender: TObject);
Var FormCRPrintReport       : TFormCRPrintReport;
    A                       : array of variant;
    RoleType                : Integer ;
begin
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
 FormCRPrintReport:= TFormCRPrintReport.Create(Nil);
 RoleType                := 1;
 Try
  SetLength(A, 1);
  A[0]:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger ;
//const OverRideNoOfCopies, ClientNo, DocTyp : Integer;const A: array of variant);
  FormCRPrintReport.CreateCo(0, dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger,     RoleType, cFaktura, A) ;
  FormCRPrintReport.CreateCo(0,dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger,     RoleType, cPkgSpec, A) ;
 Finally
  FreeAndNil(FormCRPrintReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoiceList.acEmailFakturaAndSpecExecute(Sender: TObject);
const
  LF = #10;
Var FormCRExportOneReport   : TFormCRExportOneReport ;
    A                       : array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : array of String ;
    MailToAddress           : String ;
    x                       : Integer ;
begin
 GetMarkedInvoices ;
 For x:= 0 to lbLO_To_Invoice.Items.Count-1 do
 Begin
  EmailFakturaAndSpecExecute(StrToInt(lbLO_To_Invoice.Items[x])) ;
 End ;

(* MailToAddress:= dmsContact.GetEmailAddress(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger) ;
 if Length(MailToAddress) = 0 then
 Begin
  MailToAddress:= 'ange@adress.nu' ;
  ShowMessage('Emailadress saknas för klienten, ange adressen i mailet(outlook)') ;
 End ;
 if Length(MailToAddress) > 0 then
 Begin
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
 FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
 Try
  SetLength(A, 1);
  A[0]:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cFaktura, A, ExcelDir + 'InvoiceNo '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
 Finally
  FreeAndNil(FormCRExportOneReport) ;//.Free ;
 End ;
 SetLength(Attach, 2);
 Attach[0]        := ExcelDir + 'InvoiceNo '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 Attach[1]        := ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 dm_SendMapiMail  := Tdm_SendMapiMail.Create(nil);
 Try
  dm_SendMapiMail.SendMail('Faktura/specifikation. Fakturanr: '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString
  +' - Invoice/package specification. InvoiceNo: '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString,
  'Faktura och paketspecifikation bifogad. '
  +LF+''
  +'Invoice and package specification attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir('MyEmailAddress'),
  MailToAddress,
  Attach) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End
  else
   ShowMessage('Emailadress saknas för klienten!') ;
   *)
end;

procedure TfrmInvoiceList.acPrintTRPOrderExecute(Sender: TObject);
var FormCRPrintOneReport  : TFormCRPrintOneReport;
    A : array of variant;
begin
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
 dmsContact.InsertUserIssueReport (ThisUser.UserID, dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger) ;

 FormCRPrintOneReport:= TFormCRPrintOneReport.Create(Nil);
 Try
//CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

  SetLength(A, 1);
  A[0]:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger ;
  FormCRPrintOneReport.CreateCo(1, False, False, A, 'TRP_BREV.RPT')

 Finally
  FreeAndNil(FormCRPrintOneReport)  ;
 End ;
end;

procedure TfrmInvoiceList.acPrintTrpOrderAndSpecExecute(Sender: TObject);
begin
 acPrintTRPOrderExecute(Sender) ;
 acClientPackageSpecificationExecute(Sender) ;
end;

procedure TfrmInvoiceList.Timer1Timer(Sender: TObject);
begin
 nfSearchLO.SetFocus ;
 Timer1.Enabled:= False ;
end;

procedure TfrmInvoiceList.acExportInvoiceSpecExecute(Sender: TObject);
begin
 dm_ImportWoodx:= Tdm_ImportWoodx.Create(nil);
 Try
 With dm_ImportWoodx do
 Begin
//  DeliveryMessageNumber:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsString ;
  Try
   ExportDeliveryWoodMessage(dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger) ;
   ExportToWoodx ;
  Except
  End ;
 End ;
 Finally
  FreeAndNil(dm_ImportWoodx) ;
 End ;
end;

Procedure TfrmInvoiceList.ExportToWoodx ;
//Var DeliveryMessageNumber : String ;
begin
 XMLImportExport:= TXMLImportExport.Create(nil);
 try
  XMLImportExport.InvoiceNo             := dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsInteger ;
  XMLImportExport.InternalInvoiceNo     := dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger ;
  XMLImportExport.CustomerNo            := dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger ;  
  XMLImportExport.TabSheet1.TabVisible  := False ;
   if XMLImportExport.ShowModal = mrOK then
   Begin
//    DeliveryMessageNumber:= XMLImportExport.DeliveryMessageNumber ;
   End ;
 finally
  FreeAndNil(XMLImportExport) ;
 end;
end;

procedure TfrmInvoiceList.acEmailaTrpBrevExecute(Sender: TObject);
const
  LF = #10;
Var FormCRExportOneReport   : TFormCRExportOneReport ;
    A                       : array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : array of String ;
    MailToAddress           : String ;
    x                       : Integer ;
begin
 GetMarkedInvoices ;
 For x:= 0 to lbLO_To_Invoice.Items.Count-1 do
 Begin
  EmailaTrpBrevExecute(StrToInt(lbLO_To_Invoice.Items[x])) ;
 End ;
(*
// MailToAddress:= dmsContact.GetEmailAddress(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger) ;
 MailToAddress:= dmsContact.GetEmailAddressForSpeditorByLO(dmVidaInvoice.cdsInvoiceListLO.AsInteger) ;
 if Length(MailToAddress) = 0 then
 Begin
  MailToAddress:= 'ange@adress.nu' ;
  ShowMessage('Emailadress saknas för klienten, ange adressen direkt i mailet(outlook)') ;
 End ;
 if Length(MailToAddress) > 0 then
 Begin


 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
 FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
 Try
  SetLength(A, 1);

  A[0]:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cTrpBrev, A, ExcelDir + 'Transportbrev '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
 Finally
  FreeAndNil(FormCRExportOneReport) ;//.Free ;
 End ;



 SetLength(Attach, 2);
 Attach[0]        := ExcelDir + 'Transportbrev '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 Attach[1]        := ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 dm_SendMapiMail  := Tdm_SendMapiMail.Create(nil);
 Try
  dm_SendMapiMail.SendMail('Transportbrev/Paketspec. Fakturanr: '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString,
  'Transportbrev/Paketspecifikation bifogad. '
  +LF+''
  +'Transport letter/Package specification attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir('MyEmailAddress'),
  MailToAddress,
  Attach) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End
  else
   ShowMessage('Emailadress saknas för klienten!') ;
   *)
end;

procedure TfrmInvoiceList.EmailFakturaAndSpecExecute(const IntInvNo : Integer) ;
const
  LF = #10;
Var FormCRExportOneReport   : TFormCRExportOneReport ;
    A                       : array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : array of String ;
    MailToAddress           : String ;
begin
 if dmVidaInvoice.cdsInvoiceList.Locate('INT_INVNO', IntInvNo, []) then
 Begin
 MailToAddress:= dmsContact.GetEmailAddress(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger) ;
 if Length(MailToAddress) = 0 then
 Begin
  MailToAddress:= 'ange@adress.nu' ;
  ShowMessage('Emailadress saknas för klienten, ange adressen i mailet(outlook)') ;
 End ;
 if Length(MailToAddress) > 0 then
 Begin
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
 FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
 Try
  SetLength(A, 1);
  A[0]:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cFaktura, A, ExcelDir + 'InvoiceNo '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
 Finally
  FreeAndNil(FormCRExportOneReport) ;//.Free ;
 End ;
 SetLength(Attach, 2);
 Attach[0]        := ExcelDir + 'InvoiceNo '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 Attach[1]        := ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 dm_SendMapiMail  := Tdm_SendMapiMail.Create(nil);
 Try
  dm_SendMapiMail.SendMail('Faktura/specifikation. Fakturanr: '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString
  +' - Invoice/package specification. InvoiceNo: '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString,
  'Faktura och paketspecifikation bifogad. '
  +LF+''
  +'Invoice and package specification attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir('MyEmailAddress'),
  MailToAddress,
  Attach) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End
  else
   ShowMessage('Emailadress saknas för klienten!') ;
 End ;//if dmVidaInvoice.cdsInvoiceList.Locate('INT_INVNO', IntInvNo, []) then
end;

procedure TfrmInvoiceList.EmailaTrpBrevExecute(const IntInvNo : Integer) ;
const
  LF = #10;
Var FormCRExportOneReport   : TFormCRExportOneReport ;
    A                       : array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : array of String ;
    MailToAddress           : String ;
begin
 if dmVidaInvoice.cdsInvoiceList.Locate('INT_INVNO', IntInvNo, []) then
 Begin
 MailToAddress:= dmsContact.GetEmailAddressForSpeditorByLO(dmVidaInvoice.cdsInvoiceListLO.AsInteger) ;
 if Length(MailToAddress) = 0 then
 Begin
  MailToAddress:= 'ange@adress.nu' ;
  ShowMessage('Emailadress saknas för klienten, ange adressen direkt i mailet(outlook)') ;
 End ;
 if Length(MailToAddress) > 0 then
 Begin


 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
 FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
 Try
  SetLength(A, 1);

  A[0]:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cTrpBrev, A, ExcelDir + 'Transportbrev '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
 Finally
  FreeAndNil(FormCRExportOneReport) ;//.Free ;
 End ;



 SetLength(Attach, 2);
 Attach[0]        := ExcelDir + 'Transportbrev '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 Attach[1]        := ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 dm_SendMapiMail  := Tdm_SendMapiMail.Create(nil);
 Try
  dm_SendMapiMail.SendMail('Transportbrev/Paketspec. Fakturanr: '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString,
  'Transportbrev/Paketspecifikation bifogad. '
  +LF+''
  +'Transport letter/Package specification attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir('MyEmailAddress'),
  MailToAddress,
  Attach) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End
  else
   ShowMessage('Emailadress saknas för klienten!') ;
 End ;//if dmVidaInvoice.cdsInvoiceList.Locate('INT_INVNO', IntInvNo, []) then
end;

procedure TfrmInvoiceList.acExportInvoiceSpecUpdate(Sender: TObject);
begin
 acExportInvoiceSpec.Enabled:= (grdFakturaDBTableView1.DataController.DataSource.DataSet.Active)
 and (grdFakturaDBTableView1.DataController.DataSource.DataSet.RecordCount > 0) ;
end;

procedure TfrmInvoiceList.acSpecSV_GroupByLoadNoExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  FormCRViewReport.CreateCo('SPECIFICATION_SV_GrpLast_VER2.rpt') ;
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

procedure TfrmInvoiceList.acFakturaSvenskUpdate(Sender: TObject);
begin
 acFakturaSvensk.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acFakturaEngelskUpdate(Sender: TObject);
begin
 acFakturaEngelsk.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acFakturaEngelskLangdUpdate(Sender: TObject);
begin
 acFakturaEngelskLangd.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acFakturaEngelskAgustUpdate(Sender: TObject);
begin
 acFakturaEngelskAgust.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acFakturaEngelskLengthPlusNM3Update(
  Sender: TObject);
begin
 acFakturaEngelskLengthPlusNM3.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acFakturaEngelskLangdPerPakettypUpdate(
  Sender: TObject);
begin
 acFakturaEngelskLangdPerPakettyp.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acFakturaSvenskUtanMoms_DKUpdate(
  Sender: TObject);
begin
 acFakturaSvenskUtanMoms_DK.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acFakturaEngelsk_DKUpdate(Sender: TObject);
begin
 acFakturaEngelsk_DK.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acPreViewInvoiceExecute(Sender: TObject);
var
  ReportName : String ;
  promptUser: OleVariant; numberOfCopy: OleVariant; collated: OleVariant;
  PrinterSetup : Integer ;
  FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

 dmsContact.GetClientDocPrefs ( dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cFaktura {DocTyp}, ReportName, numberOfCopy, promptUser, collated, PrinterSetup) ;
 if (Length(ReportName) < 4) then
 Begin
  ShowMessage('Rapporten finns inte upplagd på klienten') ;
  Exit ;
 End ; //if

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo(ReportName) ;

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



procedure TfrmInvoiceList.acPrintCreditInvoicesExecute(Sender: TObject);
Var FormCRPrintReport       : TFormCRPrintReport;
    IntInvNo, Client        : array of variant;
    x, RoleType             : Integer ;
begin
 x := 0 ;
 if MessageDlg('Vill du skriva ut alla kreditfakturor gjorda under 2008?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmVidaInvoice do
 Begin
  sq_CreditInv.Open ;
  Try
  sq_CreditInv.First ;
  While not sq_CreditInv.Eof do
  Begin
    SetLength(IntInvNo, x + 1) ;
    SetLength(Client, x + 1) ;
    IntInvNo[x] := sq_CreditInvInternalInvoiceNo.AsInteger ;
    Client[x]   := sq_CreditInvCustomerNo.AsInteger ;
    x := succ(x) ;
  sq_CreditInv.Next ;
  End ;//While
  Finally
   sq_CreditInv.Close ;
  End ;

  if High(IntInvNo) > 0 then
  Begin
   FormCRPrintReport:= TFormCRPrintReport.Create(Nil);
   RoleType:= 1 ;
   Try
    FormCRPrintReport.CreateCoForPrintMany(1, dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, RoleType, cFaktura, IntInvNo, Client) ;
   Finally
    FreeAndNil(FormCRPrintReport) ; //.Free ;
   End ;
  End ;

 End ;//With
end;

procedure TfrmInvoiceList.acPrintMenyExecute(Sender: TObject);
begin
 pmPrint.Popup(300,200) ;
end;

end.
