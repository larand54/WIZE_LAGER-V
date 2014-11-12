unit fSelectInvoice;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls,
  Menus, dxDBTLCl, dxGrClms, SqlTimSt, dxEditor, dxExEdtr, dxEdLib,
  Buttons, FMTBcd, DB, DBClient, Provider, SqlExpr, cxControls,
  cxContainer, cxEdit, cxTextEdit ;

type
  TfrmSelectInvoice = class(TForm)
    grdInvoice: TdxDBGrid;
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
    PopupMenu1: TPopupMenu;
    FakturaSvensk1: TMenuItem;
    FakturaEngelsk1: TMenuItem;
    Specification1: TMenuItem;
    SpecificationEngelsk1: TMenuItem;
    FakturaEngelskLength1: TMenuItem;
    FakturaEngelskKP1: TMenuItem;
    FakturaSvenskutanmoms1: TMenuItem;
    SpecificationEngelskmedproducent2: TMenuItem;
    grdInvoiceINV_DATE: TdxDBGridDateColumn;
    grdInvoiceColumn12: TdxDBGridMaskColumn;
    Exit1: TMenuItem;
    SpecificationEngelskAktuellDimension1: TMenuItem;
    Panel2: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    Panel3: TPanel;
    peInvoiceType: TdxPickEdit;
    rgConfirmed: TRadioGroup;
    Label3: TLabel;
    Label1: TLabel;
    bbRefresh: TBitBtn;
    sq_InvoiceList: TSQLQuery;
    sq_InvoiceListINT_INVNO: TIntegerField;
    sq_InvoiceListINV_DATE: TSQLTimeStampField;
    sq_InvoiceListAGENT: TStringField;
    sq_InvoiceListSHIPPER: TStringField;
    sq_InvoiceListCUSTOMER: TStringField;
    sq_InvoiceListLO: TIntegerField;
    sq_InvoiceListINVOICE_NO: TIntegerField;
    sq_InvoiceListINVOICE_TYPE: TStringField;
    sq_InvoiceListINVOICE_KONTO: TStringField;
    sq_InvoiceListTO_BE_PAID: TFloatField;
    sq_InvoiceListCURRENCY: TStringField;
    sq_InvoiceListLine_ID: TStringField;
    dspInvoiceList: TDataSetProvider;
    cdsInvoiceList: TClientDataSet;
    cdsInvoiceListINT_INVNO: TIntegerField;
    cdsInvoiceListINV_DATE: TSQLTimeStampField;
    cdsInvoiceListAGENT: TStringField;
    cdsInvoiceListSHIPPER: TStringField;
    cdsInvoiceListCUSTOMER: TStringField;
    cdsInvoiceListLO: TIntegerField;
    cdsInvoiceListINVOICE_NO: TIntegerField;
    cdsInvoiceListINVOICE_TYPE: TStringField;
    cdsInvoiceListINVOICE_KONTO: TStringField;
    cdsInvoiceListTO_BE_PAID: TFloatField;
    cdsInvoiceListCURRENCY: TStringField;
    cdsInvoiceListLine_ID: TStringField;
    dsInvoiceList: TDataSource;
    cbShowQuickInvoice: TCheckBox;
    sq_InvoiceListInv_Value_After_Deduct_DIS_COMM: TFloatField;
    sq_InvoiceListCurrencyNo: TIntegerField;
    sq_InvoiceListCustomerNo: TIntegerField;
    cdsInvoiceListInv_Value_After_Deduct_DIS_COMM: TFloatField;
    cdsInvoiceListCurrencyNo: TIntegerField;
    cdsInvoiceListCustomerNo: TIntegerField;
    cbHideAttestedInvoices: TCheckBox;
    cbShowCreditOnly: TCheckBox;
    nfSearchLO: TcxTextEdit;
    nfSearchInvoiceNo: TcxTextEdit;
    procedure nfSearchLOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure peInvoiceTypeChange(Sender: TObject);
    procedure nfSearchInvoiceNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure Refresh(Sender: TObject);
  public
    { Public declarations }
  end;

//var frmSelectInvoice: TfrmSelectInvoice;

implementation

uses
  VidaConst,
  VidaUser,
  VidaUtils, fInvoice, dmsDataConn, dmcVidaInvoice,
  dmsVidaContact ;

{$R *.dfm}


procedure TfrmSelectInvoice.nfSearchLOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key <> VK_RETURN then Exit;
// With dmVidaInvoice do
// Begin
  cdsInvoiceList.Locate('LO',StrToIntDef(nfSearchLO.Text,0), []) ;
// End ; //with
end;

procedure TfrmSelectInvoice.FormCreate(Sender: TObject);
begin
 grdInvoice.LoadFromIniFile(dmsConnector.InifilesMap+'VisSelectInvoice'+'.'+ThisUser.UserName);
 peInvoiceType.ItemIndex:= 0 ;
end;

procedure TfrmSelectInvoice.peInvoiceTypeChange(Sender: TObject);
begin
 Refresh(Sender) ;
end;


procedure TfrmSelectInvoice.nfSearchInvoiceNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key <> VK_RETURN then Exit;
// With dmVidaInvoice do
// Begin
  cdsInvoiceList.Locate('INVOICE_NO',StrToIntDef(nfSearchInvoiceNo.Text,0), []) ;
// End ; //with

end;


procedure TfrmSelectInvoice.Refresh(Sender: TObject);
Var
 Save_Cursor:TCursor;
begin
// with  dmVidaInvoice do
// Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  grdInvoice.DataSource.DataSet.DisableControls ;
  Try

  cdsInvoiceList.Active:= False ;
  sq_InvoiceList.Close ;
  sq_InvoiceList.SQL.Clear ;

  if peInvoiceType.ItemIndex = 0 then
  Begin
  if rgConfirmed.ItemIndex = 1 then
  Begin
   sq_InvoiceList.SQL.Add('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, INO.InvoiceNo AS INVOICE_NO,') ;

   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN '+'''NORMAL''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN '+'''PROFORMA, INVOICE LATER''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN '+'''PROFORMA''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_TYPE,') ;
   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN '+'''DEBIT''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN '+'''CREDIT''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_KONTO,') ;
   sq_InvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,') ;
   sq_InvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID') ;
   sq_InvoiceList.SQL.Add(',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo') ;


//   sq_InvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');


   sq_InvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL, dbo.InvoiceNumber INo') ;
   sq_InvoiceList.SQL.Add('WHERE IL.InternalInvoiceNo = IH.InternalInvoiceNo') ;
   sq_InvoiceList.SQL.Add('AND IH.InvoiceType = 0') ;
   if cbShowCreditOnly.Checked = True then
    sq_InvoiceList.SQL.Add('AND IH.Inv_Value_After_Deduct_DIS_COMM < 0') ;
   if cbShowQuickInvoice.Checked = True then
   sq_InvoiceList.SQL.Add('AND IH.QuickInvoice = 1') ;
   if cbHideAttestedInvoices.Checked = True then
   Begin
    sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo not in (Select Quick_InvoiceNo From dbo.Att_Ext_Services') ;
    sq_InvoiceList.SQL.Add('WHERE Quick_InvoiceNo =  IH.InternalInvoiceNo)') ;
   End ;

   sq_InvoiceList.SQL.Add('AND INo.InternalInvoiceNo = IH.InternalInvoiceNo ORDER BY InvoiceDate desc') ;
  End
  else
  Begin
   sq_InvoiceList.SQL.Add('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, -1 AS INVOICE_NO,') ;

   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN '+'''NORMAL''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN '+'''PROFORMA, INVOICE LATER''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN '+'''PROFORMA''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_TYPE,') ;
   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN '+'''DEBIT''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN '+'''CREDIT''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_KONTO,') ;
   sq_InvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,') ;
   sq_InvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID') ;
   sq_InvoiceList.SQL.Add(',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo') ;
//   sq_InvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');

   sq_InvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL') ;
   sq_InvoiceList.SQL.Add('WHERE IH.InvoiceType = 0') ;
   if cbShowQuickInvoice.Checked = True then
   sq_InvoiceList.SQL.Add('AND IH.QuickInvoice = 1') ;

   sq_InvoiceList.SQL.Add('AND IL.InternalInvoiceNo = IH.InternalInvoiceNo AND IH.InternalInvoiceNo NOT IN') ;
   sq_InvoiceList.SQL.Add('(SELECT INO.InternalInvoiceNo FROM dbo.InvoiceNumber INo ) ORDER BY InvoiceDate desc') ;
  End ;
  End
  else
  if peInvoiceType.ItemIndex = 1 then
  Begin
  if rgConfirmed.ItemIndex = 1 then
  Begin
   sq_InvoiceList.SQL.Add('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, INO.ProformaInvoiceNo AS INVOICE_NO,') ;

   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN '+'''NORMAL''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN '+'''PROFORMA, INVOICE LATER''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN '+'''PROFORMA''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_TYPE,') ;
   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN '+'''DEBIT''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN '+'''CREDIT''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_KONTO,') ;
   sq_InvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,') ;
   sq_InvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID') ;
   sq_InvoiceList.SQL.Add(',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo') ;
//   sq_InvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');


   sq_InvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL, dbo.ProformaInvoiceNumber INo') ;
   sq_InvoiceList.SQL.Add('WHERE IL.InternalInvoiceNo = IH.InternalInvoiceNo') ;
   sq_InvoiceList.SQL.Add('AND IH.InvoiceType = 1') ;
   if cbShowQuickInvoice.Checked = True then
   sq_InvoiceList.SQL.Add('AND IH.QuickInvoice = 1') ;

   sq_InvoiceList.SQL.Add('AND INo.InternalInvoiceNo = IH.InternalInvoiceNo ORDER BY InvoiceDate desc') ;
  End
  else
  Begin
   sq_InvoiceList.SQL.Add('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, -1 AS INVOICE_NO,') ;

   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN '+'''NORMAL''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN '+'''PROFORMA, INVOICE LATER''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN '+'''PROFORMA''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_TYPE,') ;
   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN '+'''DEBIT''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN '+'''CREDIT''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_KONTO,') ;
   sq_InvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,') ;
   sq_InvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID') ;
   sq_InvoiceList.SQL.Add(',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo') ;
//   sq_InvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');

   sq_InvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL') ;
   sq_InvoiceList.SQL.Add('WHERE IH.InvoiceType = 1') ;
   if cbShowQuickInvoice.Checked = True then
   sq_InvoiceList.SQL.Add('AND IH.QuickInvoice = 1') ;

   sq_InvoiceList.SQL.Add('AND IL.InternalInvoiceNo = IH.InternalInvoiceNo AND IH.InternalInvoiceNo NOT IN') ;

   sq_InvoiceList.SQL.Add('(SELECT INO.InternalInvoiceNo FROM dbo.ProformaInvoiceNumber INo ) ORDER BY InvoiceDate desc') ;
  End ;
  End
  else
  if peInvoiceType.ItemIndex = 2 then
  Begin
  if rgConfirmed.ItemIndex = 1 then
  Begin
   sq_InvoiceList.SQL.Add('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, INO.ProformaInvoiceNo AS INVOICE_NO,') ;

   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN '+'''NORMAL''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN '+'''PROFORMA, INVOICE LATER''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN '+'''PROFORMA''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_TYPE,') ;
   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN '+'''DEBIT''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN '+'''CREDIT''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_KONTO,') ;
   sq_InvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,') ;
   sq_InvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID') ;
   sq_InvoiceList.SQL.Add(',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo') ;
//   sq_InvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');


   sq_InvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL, dbo.ProformaInvoiceNumber INo') ;
   sq_InvoiceList.SQL.Add('WHERE IL.InternalInvoiceNo = IH.InternalInvoiceNo') ;
   sq_InvoiceList.SQL.Add('AND IH.InvoiceType = 2') ;
   if cbShowQuickInvoice.Checked = True then
   sq_InvoiceList.SQL.Add('AND IH.QuickInvoice = 1') ;

   sq_InvoiceList.SQL.Add('AND INo.InternalInvoiceNo = IH.InternalInvoiceNo ORDER BY InvoiceDate desc') ;
  End
  else
  Begin
   sq_InvoiceList.SQL.Add('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, -1 AS INVOICE_NO,') ;

   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN '+'''NORMAL''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN '+'''PROFORMA, INVOICE LATER''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN '+'''PROFORMA''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_TYPE,') ;
   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN '+'''DEBIT''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN '+'''CREDIT''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_KONTO,') ;
   sq_InvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,') ;
   sq_InvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID') ;
   sq_InvoiceList.SQL.Add(',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo') ;
//   sq_InvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');

   sq_InvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL') ;
   sq_InvoiceList.SQL.Add('WHERE IH.InvoiceType = 2') ;
   if cbShowQuickInvoice.Checked = True then
   sq_InvoiceList.SQL.Add('AND IH.QuickInvoice = 1') ;

   sq_InvoiceList.SQL.Add('AND IL.InternalInvoiceNo = IH.InternalInvoiceNo AND IH.InternalInvoiceNo NOT IN') ;

   sq_InvoiceList.SQL.Add('(SELECT INO.InternalInvoiceNo FROM dbo.ProformaInvoiceNumber INo ) ORDER BY InvoiceDate desc') ;
  End ;
  End

  else

  if peInvoiceType.ItemIndex = 3 then
  Begin
  if rgConfirmed.ItemIndex = 1 then
  Begin
   sq_InvoiceList.SQL.Add('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, INO.PO_InvoiceNo AS INVOICE_NO,') ;

   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN '+'''NORMAL''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN '+'''PROFORMA, INVOICE LATER''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN '+'''PROFORMA''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_TYPE,') ;
   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN '+'''DEBIT''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN '+'''CREDIT''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_KONTO,') ;
   sq_InvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,') ;
   sq_InvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID') ;
   sq_InvoiceList.SQL.Add(',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo') ;
//   sq_InvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');


   sq_InvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL, dbo.InvoiceNumber_PO INo') ;
   sq_InvoiceList.SQL.Add('WHERE IL.InternalInvoiceNo = IH.InternalInvoiceNo') ;
   sq_InvoiceList.SQL.Add('AND IH.InvoiceType = 3') ;
   if cbShowQuickInvoice.Checked = True then
   sq_InvoiceList.SQL.Add('AND IH.QuickInvoice = 1') ;

   sq_InvoiceList.SQL.Add('AND INo.InternalInvoiceNo = IH.InternalInvoiceNo ORDER BY InvoiceDate desc') ;
  End
  else
  Begin
   sq_InvoiceList.SQL.Add('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, -1 AS INVOICE_NO,') ;

   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN '+'''NORMAL''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN '+'''PROFORMA, INVOICE LATER''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN '+'''PROFORMA''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_TYPE,') ;
   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN '+'''DEBIT''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN '+'''CREDIT''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_KONTO,') ;
   sq_InvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,') ;
   sq_InvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID') ;
   sq_InvoiceList.SQL.Add(',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo') ;
//   sq_InvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');

   sq_InvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL') ;
   sq_InvoiceList.SQL.Add('WHERE IH.InvoiceType = 3') ;
   if cbShowQuickInvoice.Checked = True then
   sq_InvoiceList.SQL.Add('AND IH.QuickInvoice = 1') ;

   sq_InvoiceList.SQL.Add('AND IL.InternalInvoiceNo = IH.InternalInvoiceNo AND IH.InternalInvoiceNo NOT IN') ;

   sq_InvoiceList.SQL.Add('(SELECT INO.InternalInvoiceNo FROM dbo.InvoiceNumber_PO INo ) ORDER BY InvoiceDate desc') ;
  End ;
  End


  else

  if peInvoiceType.ItemIndex = 4 then
  Begin
  if rgConfirmed.ItemIndex = 1 then
  Begin
   sq_InvoiceList.SQL.Add('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, INO.InvoiceNo AS INVOICE_NO,') ;

   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN '+'''NORMAL''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN '+'''PROFORMA, INVOICE LATER''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN '+'''PROFORMA''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_TYPE,') ;
   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN '+'''DEBIT''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN '+'''CREDIT''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_KONTO,') ;
   sq_InvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,') ;
   sq_InvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID') ;
   sq_InvoiceList.SQL.Add(',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo') ;
//   sq_InvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');


   sq_InvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL, dbo.InvoiceNo_USA INo') ;
   sq_InvoiceList.SQL.Add('WHERE IL.InternalInvoiceNo = IH.InternalInvoiceNo') ;
   sq_InvoiceList.SQL.Add('AND IH.InvoiceType = 4') ;
   if cbShowQuickInvoice.Checked = True then
   sq_InvoiceList.SQL.Add('AND IH.QuickInvoice = 1') ;

   sq_InvoiceList.SQL.Add('AND INo.InternalInvoiceNo = IH.InternalInvoiceNo ORDER BY InvoiceDate desc') ;
  End
  else
  Begin
   sq_InvoiceList.SQL.Add('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, -1 AS INVOICE_NO,') ;

   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN '+'''NORMAL''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN '+'''PROFORMA, INVOICE LATER''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN '+'''PROFORMA''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_TYPE,') ;
   sq_InvoiceList.SQL.Add('CASE') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN '+'''DEBIT''') ;
   sq_InvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN '+'''CREDIT''') ;
   sq_InvoiceList.SQL.Add('END AS INVOICE_KONTO,') ;
   sq_InvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,') ;
   sq_InvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+') ;
   sq_InvoiceList.SQL.Add('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID') ;
   sq_InvoiceList.SQL.Add(',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo') ;
//   sq_InvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');

   sq_InvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL') ;
   sq_InvoiceList.SQL.Add('WHERE IH.InvoiceType = 4') ;
   if cbShowQuickInvoice.Checked = True then
   sq_InvoiceList.SQL.Add('AND IH.QuickInvoice = 1') ;

   sq_InvoiceList.SQL.Add('AND IL.InternalInvoiceNo = IH.InternalInvoiceNo AND IH.InternalInvoiceNo NOT IN') ;

   sq_InvoiceList.SQL.Add('(SELECT INO.InternalInvoiceNo FROM dbo.InvoiceNo_USA INo ) ORDER BY InvoiceDate desc') ;
  End ;
  End ;

 if ThisUser.UserID = 8 then
  sq_InvoiceList.SQL.SaveToFile('Select_sq_InvoiceList.TXT');

//  sq_InvoiceList.ParamByName('Status').AsInteger:=
  sq_InvoiceList.Open ;
  cdsInvoiceList.Active:= True ;

   Finally
    grdInvoice.DataSource.DataSet.EnableControls ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }

   End ;


// End ; // with
end;

procedure TfrmSelectInvoice.bbRefreshClick(Sender: TObject);
begin
 Refresh(Sender) ;
end;

procedure TfrmSelectInvoice.FormShow(Sender: TObject);
begin
 Refresh(Sender) ;
end;

procedure TfrmSelectInvoice.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  grdInvoice.SaveToIniFile(dmsConnector.InifilesMap+'VisSelectInvoice'+'.'+ThisUser.UserName);
  CanClose:= True ;
end;

end.
