unit UnitLoadArrivals;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems,
  ImgList, StdCtrls, DB, Menus, SqlTimSt, 
  DateUtils, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLabel, cxSplitter, cxCalc, ActnList, cxImageComboBox,
  cxGridExportLink,  cxExport, kbmMemTable, cxLookAndFeels, cxCheckBox,
  FMTBcd, cxDBEdit, DBClient, Provider, SqlExpr, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGridCustomPopupMenu,
  cxGridPopupMenu ;

type
  TfrmLoadArrivals = class(TForm)
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    lbConfirmLoad: TdxBarLargeButton;
    lbPrintLoad: TdxBarLargeButton;
    lbUndoConfirm: TdxBarLargeButton;
    imglistActions: TImageList;
    DataSource1: TDataSource;
    lbPkgInfo: TdxBarLargeButton;
    lbExportToExcel: TdxBarLargeButton;
    il_LastStatus: TImageList;
    lbLO_To_Invoice: TListBox;
    grdFakturaPkgsDBTableView1: TcxGridDBTableView;
    grdFakturaPkgsLevel1: TcxGridLevel;
    grdFakturaPkgs: TcxGrid;
    grdFakturaPkgsDBTableView1LO: TcxGridDBColumn;
    grdFakturaPkgsDBTableView1PACKAGE_NO: TcxGridDBColumn;
    grdFakturaPkgsDBTableView1SUPPLIERCODE: TcxGridDBColumn;
    grdFakturaPkgsDBTableView1M3_NET: TcxGridDBColumn;
    grdFakturaPkgsDBTableView1PRODUCT_DESCRIPTION: TcxGridDBColumn;
    grdFakturaPkgsDBTableView1PCS: TcxGridDBColumn;
    grdFakturaPkgsDBTableView1PACKAGEOK: TcxGridDBColumn;
    grdFakturaPkgsDBTableView1PACKAGE_LOG: TcxGridDBColumn;
    grdFakturaPkgsDBTableView1M3_NOM: TcxGridDBColumn;
    grdFakturaPkgsDBTableView1LOAD_DETAILNO: TcxGridDBColumn;
    grdFakturaPkgsDBTableView1LoadNo: TcxGridDBColumn;
    grdFakturaPkgsDBTableView1MFBM: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    ActionList1: TActionList;
    acPkgInfo: TAction;
    pmPkgs: TdxBarPopupMenu;
    acChangeLoadLayout: TAction;
    acChangePkgLayout: TAction;
    acConfirmedLoad: TAction;
    Panel1: TPanel;
    Panel2: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel3: TPanel;
    Panel4: TPanel;
    dxBarDockControl3: TdxBarDockControl;
    acClose: TAction;
    acExportLoadsToExcel: TAction;
    acRefresh: TAction;
    cxLabel1: TcxLabel;
    acUndoAR: TAction;
    grdFakturaPkgsDBTableView1GS: TcxGridDBColumn;
    grdFakturaPkgsDBTableView1BC: TcxGridDBColumn;
    acShowGroupBox: TAction;
    acExpandAll: TAction;
    acCollapseAll: TAction;
    mtSelectedLoads: TkbmMemTable;
    mtSelectedLoadsLoadNo: TIntegerField;
    mtSelectedLoadsLONo: TIntegerField;
    mtSelectedLoadsLIPNo: TIntegerField;
    mtSelectedLoadsCustomerNo: TIntegerField;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_1: TcxStyle;
    cxStyle_AR: TcxStyle;
    cxStyle_4: TcxStyle;
    cxLabel6: TcxLabel;
    mtSelectedLoadsStatus: TIntegerField;
    cxStyle_Focus: TcxStyle;
    mtSelectedLoadsOBJECTTYPE: TIntegerField;
    mtSelectedLoadsOrderType: TIntegerField;
    cxStyleLoadAR: TcxStyle;
    PopupMenu1: TPopupMenu;
    ndralayout1: TMenuItem;
    ndralayout2: TMenuItem;
    StngF121: TMenuItem;
    Kollapsaallagrupper1: TMenuItem;
    AnkomstregistreraF101: TMenuItem;
    Expanderaallagrupper1: TMenuItem;
    ExportxlsF111: TMenuItem;
    Paketinformation1: TMenuItem;
    Grupperingsrutan1: TMenuItem;
    ngraF41: TMenuItem;
    UppdateraF61: TMenuItem;
    acPrint: TAction;
    SkrivutF81: TMenuItem;
    lcOWNER: TcxDBLookupComboBox;
    nfSearchLO: TcxTextEdit;
    nfSearchInvoiceNo: TcxTextEdit;
    nfSearchLastNr: TcxTextEdit;
    grdFaktura: TcxGrid;
    grdFakturaDBTableView1: TcxGridDBTableView;
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
    grdFakturaLevel1: TcxGridLevel;
    grdFakturaDBTableView1ArDate: TcxGridDBColumn;
    grdFakturaDBTableView1IAR_IntInvNo: TcxGridDBColumn;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    lcPIPNAME: TcxDBLookupComboBox;
    lcLIPName: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGridPopupMenu2: TcxGridPopupMenu;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acConfirmedLoadExecute(Sender: TObject);
    procedure acConfirmedLoadUpdate(Sender: TObject);
    procedure acPkgInfoUpdate(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acExportLoadsToExcelExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acExportLoadsToExcelUpdate(Sender: TObject);
    procedure acUndoARExecute(Sender: TObject);
    procedure acUndoARUpdate(Sender: TObject);
    procedure nfSearchLOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nfSearchInvoiceNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nfSearchLastNrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdFakturaDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure lcLIPNameEnter(Sender: TObject);

  private
    { Private declarations }
    SomethingChanged : Boolean ;
    procedure RefreshInvoice(Sender: TObject;const InvoiceNo, LONo, InternalInvoiceNo : Integer);
    procedure ConfirmManyINTADDLoads(Sender: TObject);
    function  BackgroundColor(iObjectType: integer) : TColor;
  public
    { Public declarations }
    Procedure CreateCo(CompanyNo: Integer);
  end;

var
  frmLoadArrivals: TfrmLoadArrivals;

implementation

uses UnitCRViewReport, dmc_ArrivingLoads, VidaUtils, Vidauser,
  UnitPkgInfo, dmsVidaContact, dmcVidaSystem, dmsDataConn ,
  uAnkomstRegProgress, VidaConst, dmsVidaSystem, dmc_Filter , dmc_UserProps ;

{$R *.dfm}

Procedure TfrmLoadArrivals.CreateCo(CompanyNo: Integer);
begin
 if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdFaktura.Name, grdFakturaDBTableView1) = False then ;
 if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdFakturaPkgs.Name, grdFakturaPkgsDBTableView1) = False then ;


 if (ThisUser.UserID = 4) OR (ThisUser.UserID = 8) then
 lcOWNER.Enabled  := True
 else
 lcOWNER.Enabled  := False ;

 With dmArrivingLoads do
 Begin
  mtUserProp.Edit ;
  mtUserPropOwnerNo.AsInteger := ThisUser.CompanyNo ;
  mtUserProp.Post ;


  cds_PIP.Active := False ;
//  if mtUserPropOwnerNo.AsInteger > 0 then
  sq_PIP.ParamByName('OwnerNo').AsInteger  := mtUserPropOwnerNo.AsInteger ;
  cds_PIP.Active := True ;
 End ; 
end;

procedure TfrmLoadArrivals.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfrmLoadArrivals.FormDestroy(Sender: TObject);
begin
 frmLoadArrivals := NIL;
 FreeAndNil(dmArrivingLoads) ;
end;

procedure TfrmLoadArrivals.FormCreate(Sender: TObject);
begin
  dmArrivingLoads:= TdmArrivingLoads.Create(nil) ;
  dm_UserProps.LoadUserProps (Self.Name, dmArrivingLoads.mtuserprop) ;
  dmArrivingLoads.mtUserProp.Edit ;
  dmArrivingLoads.mtUserPropVerkNo.AsInteger:=  dmArrivingLoads.mtUserPropOwnerNo.AsInteger ;
  dmArrivingLoads.mtUserProp.Post ;
  SomethingChanged      := True ;
end;



(*procedure TfrmLoadArrivals.grdLoadHeadCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  iObjectTypeColumn: integer;
  iObjectType: integer;
  iObjectTypeColumn2: integer;
  iObjectType2: integer;
begin
{ if ColumnIsGrouped(AColumn, grdLoadHead) then
    Exit;

  iObjectTypeColumn2 := grdLoadHead.ColumnByName('grdLoadHeadOBJECTTYPE').Index;
  iObjectType2 := ANode.Values[iObjectTypeColumn2];

  iObjectTypeColumn := grdLoadHead.ColumnByName('grdLoadHeadORDERTYPE').Index;
  iObjectType := ANode.Values[iObjectTypeColumn];

  if ANode.Values[iObjectTypeColumn] <> null then
  Begin
  // Set the color for this row, based on LO status
   if iObjectType2 = 1 then
   iObjectType := 4 ;
   if AColor <> clOlive then
   AColor := BackgroundColor(iObjectType);
  End ; }
end; *)

function TfrmLoadArrivals.BackgroundColor(iObjectType: integer) : TColor;
begin
 if iObjectType = 1 then
 Begin
   Result:= $00E6FFFF ;
 End
 else
 if iObjectType = 0 then
 Begin
   Result:= $00FFEEDD ;
 End
 else
 if iObjectType = 4 then
 Begin
   Result:= $0095FFFF ;
 End
  else
    Result := clWindow
end;


procedure TfrmLoadArrivals.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdFaktura.Name, grdFakturaDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdFakturaPkgs.Name, grdFakturaPkgsDBTableView1) ;
 dmArrivingLoads.cdsInvoiceList.Active  := False ;

 dm_UserProps.SaveUserProps (Self.Name, dmArrivingLoads.mtUserProp) ;

 CanClose:= True ;
end;

procedure TfrmLoadArrivals.acPkgInfoExecute(Sender: TObject);
Var frmPkgInfo: TfrmPkgInfo ;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo    := dmArrivingLoads.cdsArrivingPackagesPACKAGE_NO.AsInteger ;
  frmPkgInfo.SupplierCode := dmArrivingLoads.cdsArrivingPackagesSupplierCode.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
end;

procedure TfrmLoadArrivals.acConfirmedLoadExecute(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  if grdFakturaDBTableView1.Controller.SelectedRecordCount > 0 then
  Begin
   ConfirmManyINTADDLoads(Sender) ;
  End ;
 End ; //with
end;

procedure TfrmLoadArrivals.acConfirmedLoadUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acConfirmedLoad.Enabled:= (cdsInvoiceList.Active) and (cdsInvoiceList.RecordCount > 0)
  and (cdsInvoiceListIAR_IntInvNo.AsInteger = 0)
  and (grdFakturaDBTableView1.Controller.SelectedRecordCount > 0) ;
 End ;
end;

procedure TfrmLoadArrivals.acPkgInfoUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acPkgInfo.Enabled:= (cdsArrivingPackages.Active) and (cdsArrivingPackages.RecordCount > 0) ;
 End ;
end;

procedure TfrmLoadArrivals.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmLoadArrivals.acExportLoadsToExcelExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
  FileName    : String ;
begin
 if MessageDlg('Vill du exportera till excel?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
// SaveDialog2.Filter := 'Excel files (*.xls)|*.xls';
// SaveDialog2.DefaultExt:= 'xls';
// SaveDialog2.InitialDir:= ExcelDir ;
// if SaveDialog2.Execute then
// Begin
  FileName:= 'C:\AnkomstLast.XLS' ; //SaveDialog2.FileName ;

  Try
  ExportGridToExcel(FileName, grdFaktura, False, False, True,'xls');
  ShowMessage('Tabell exporterad till Excel fil '+FileName);
  Except
  End ;
// End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
 End ;
end;

procedure TfrmLoadArrivals.acRefreshExecute(Sender: TObject);
 var Year, Month, Day: Word ;
begin
 RefreshInvoice (Sender,-1, -1, -1) ;
// grdFaktura.Setfocus ;

{ if bcConfirmed.ItemIndex > 1 then
 Begin
  DecodeDate(fomdate.Date, Year, Month, Day);
  if IsValidDate(Year, Month, Day) = False then
  Begin
   ShowMessage('Ange ett FOM datum') ;
   Exit ;
  End ;
  DecodeDate(tomdate.Date, Year, Month, Day);
  if IsValidDate(Year, Month, Day) = False then
  Begin
   ShowMessage('Ange ett TOM datum') ;
   Exit ;
  End ;
 End ; }


{ else
 if bcConfirmed.ItemIndex = 2 then
 Begin
  DecodeDate(MittARDatum.Date, Year, Month, Day);
  if IsValidDate(Year, Month, Day) = False then
  Begin
   ShowMessage('Ange ett ditt datum') ;
   Exit ;
  End ;
 End ; }

end;

procedure TfrmLoadArrivals.acExportLoadsToExcelUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acExportLoadsToExcel.Enabled:= (cdsInvoiceList.Active) and (cdsInvoiceList.RecordCount > 0) ;
 End ;
end;

procedure TfrmLoadArrivals.acUndoARExecute(Sender: TObject);
Var LoadNo        : Integer ;
    Save_Cursor   : TCursor;
begin
 if MessageDlg('Vill du ångra ankomstregistreringen på markerade laster?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 with dmArrivingLoads do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  cdsInvoiceList.DisableControls ;
  Try
  Try
  AR_Invoice(cdsInvoiceListINT_INVNO.AsInteger, 0{Status}, -1{LIPNo}, ThisUser.UserID) ;
  except
   On E: Exception do
   Begin
//       dmsSystem.FDoLog(E.Message) ;
    ShowMessage(E.Message);
    Raise ;
   End ;
  end;

 Finally
  cdsInvoiceList.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With
end;

procedure TfrmLoadArrivals.acUndoARUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acUndoAR.Enabled:= (cdsInvoiceList.Active) and (cdsInvoiceList.RecordCount > 0)
  and (cdsInvoiceListIAR_IntInvNo.AsInteger > 1)
  and (grdFakturaDBTableView1.Controller.SelectedRecordCount > 0) ;
 End ;
end;

procedure TfrmLoadArrivals.ConfirmManyINTADDLoads(Sender: TObject);
Var
  LIPNo                     : Integer ;
  fAnkomstRegProgress       : TfAnkomstRegProgress ;
  Save_Cursor               : TCursor ;
  ObjectType                : Integer ;
begin
 With dmArrivingLoads do
 Begin
  if mtUserPropLIPNo.AsInteger < 1 then
  Begin
   ShowMessage('Du måste välja ett lager att ankomstregistrera paketen till.') ;
   Exit ;
  End ;
  if MessageDlg('Vill du ankomstregistrera markerad faktura till lager ' + lcPIPNAME.Text + '/' + lcLIPNAME.Text + '?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
  fAnkomstRegProgress:= TfAnkomstRegProgress.Create(nil);
  Try
//  cdsInvoiceList.DisableControls ;
   fAnkomstRegProgress.Show ;
   Try
    sq_IsInvoiceConfirmed.Close ;
    sq_IsInvoiceConfirmed.ParamByName('InternalInvoiceNo').AsInteger          := cdsInvoiceListINT_INVNO.AsInteger ;
    sq_IsInvoiceConfirmed.Open ;
    if sq_IsInvoiceConfirmed.Eof then
    Begin
     Try
     AR_Invoice(cdsInvoiceListINT_INVNO.AsInteger, 1{Status}, mtUserPropLIPNo.AsInteger, ThisUser.UserID) ;
     except
      On E: Exception do
      Begin
//       dmsSystem.FDoLog(E.Message) ;
      ShowMessage(E.Message);
//       Raise ;
      End ;
     end;
      //Add Packages To Selected Inventory
      //   Ändra status på AR faktura

    End //check IS load confirmed
     else
      ShowMessage('Fakturan är redan ankomstregistrerad av '+Trim(sq_IsInvoiceConfirmedUserName.AsString)
       +' den '+SQLTimeStampToStr('',sq_IsInvoiceConfirmedARDate.AsSQLTimeStamp)) ;
   Finally
    sq_IsInvoiceConfirmed.Close ;
   End ;



  Finally
   FreeAndNil(fAnkomstRegProgress) ;
//   grdFakturaDBTableView1.DataController.DataSource:= dsInvoiceList ;
//   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//if...
 End ; //with
end;

procedure TfrmLoadArrivals.RefreshInvoice(Sender: TObject;const InvoiceNo, LONo, InternalInvoiceNo : Integer);
Var
 Save_Cursor:TCursor;
begin
 with  dmArrivingLoads do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  grdFakturaDBTableView1.DataController.DataSet.DisableControls ;
  Try

  cdsInvoiceList.Active:= False ;
//  sq_InvoiceList.Close ;


  sq_InvoiceList.SQL.Clear ;


   sq_InvoiceList.SQL.Add('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO,') ;
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
   sq_InvoiceList.SQL.Add('IH.CustomerNo,') ;

   sq_InvoiceList.SQL.Add('SUM(PT.totalm3Nominal) as NM3, SUM(PT.totalm3Actual) as AM3,') ;

   sq_InvoiceList.SQL.Add('dpi.KUND_NM3, dpi.KONT_UNIT,') ;
   sq_InvoiceList.SQL.Add('SR.ClientName AS FörsäljReg, sm.SalesGroupName AS SäljGrupp, IH.InvoiceType,') ;
   sq_InvoiceList.SQL.Add('iar.ArDate, IsNull(iar.InternalInvoiceNo,0) AS IAR_IntInvNo') ;

   sq_InvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH') ;
   sq_InvoiceList.SQL.Add('Inner join dbo.Client SR ON SR.ClientNo = IH.SupplierNo') ;

   sq_InvoiceList.SQL.Add('Left Outer Join dbo.SalesManGroupRow smg ') ;
   sq_InvoiceList.SQL.Add('Inner Join dbo.SalesManGroup sm on sm.SalesGroupNo = smg.SalesGroupNo') ;
   sq_InvoiceList.SQL.Add('on smg.UserID = IH.ResponsibleSeller') ;

   sq_InvoiceList.SQL.Add('Inner Join dbo.InvoiceLO IL ON IL.InternalInvoiceNo = IH.InternalInvoiceNo') ;
   sq_InvoiceList.SQL.Add('Left Outer Join dbo.DelVolInvoice dpi on dpi.InternalInvoiceNo = IH.InternalInvoiceNo') ;
   sq_InvoiceList.SQL.Add('Left Outer Join dbo.Invoice_AR iar on iar.InternalInvoiceNo = IH.InternalInvoiceNo') ;

   sq_InvoiceList.SQL.Add('LEFT OUTER JOIN dbo.Invoiced_Load ILD ') ;
   sq_InvoiceList.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.LoadNo = ILD.LoadNo AND') ;
   sq_InvoiceList.SQL.Add('                      LD.ShippingPlanNo = ILD.SHIPPINGPLANNO') ;
   sq_InvoiceList.SQL.Add('INNER JOIN dbo.PackageType PT ON PT.PackageTypeNo = LD.PackageTypeNo') ;
   sq_InvoiceList.SQL.Add('ON ILD.InternalInvoiceNo = IL.InternalInvoiceNo') ;
   sq_InvoiceList.SQL.Add('                     AND ILD.ShippingPlanNo = IL.SHIPPINGPLANNO') ;



   sq_InvoiceList.SQL.Add('WHERE IH.Debit_Credit = 0') ;
   sq_InvoiceList.SQL.Add('AND IH.CustomerNo = ' + mtUserPropOwnerNo.AsString) ;


   if (LONo = -1) and (InvoiceNo = -1) and (InternalInvoiceNo  = -1) then
   Begin
    sq_InvoiceList.SQL.Add('AND IH.InvoiceType = ' + IntToStr(0)) ;
    sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo not in (Select iar.InternalInvoiceNo FROM dbo.Invoice_AR ') ;
    sq_InvoiceList.SQL.Add('WHERE iar.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
   End
   else
   Begin

   End ;

//   if (cbSalesGroup.ItemIndex > 0) and (InvoiceNo = -1) and (LONo = -1) then
//   sq_InvoiceList.SQL.Add('AND smg.SalesGroupNo = '+inttostr(integer(cbSalesGroup.Properties.Items.Objects[cbSalesGroup.ItemIndex]))) ;

   if InvoiceNo > -1 then
   Begin
    sq_InvoiceList.SQL.Add('AND (' + IntToStr(InvoiceNo) + ' in (Select INO.InvoiceNo FROM dbo.InvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
    sq_InvoiceList.SQL.Add(' OR ' + IntToStr(InvoiceNo) + ' in (Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
    sq_InvoiceList.SQL.Add(' OR ' + IntToStr(InvoiceNo) + ' in (Select INO.PO_InvoiceNo FROM dbo.InvoiceNumber_PO INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
    sq_InvoiceList.SQL.Add(' OR ' + IntToStr(InvoiceNo) + ' in (Select INO.InvoiceNo FROM dbo.InvoiceNo_USA INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
    sq_InvoiceList.SQL.Add(' OR ' + IntToStr(InvoiceNo) + ' in (Select INO.InvoiceNo FROM dbo.InvNo_FW INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
    sq_InvoiceList.SQL.Add(')') ;
   End ;

   if LONo <> -1 then
    sq_InvoiceList.SQL.Add('AND IL.ShippingPlanNo = '+IntToStr(LONo)) ;

   if  (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
   sq_InvoiceList.SQL.Add('AND IH.InvoiceDate >= ' + QuotedStr('2008-09-01') ) ;

   if InternalInvoiceNo  <> -1 then
    sq_InvoiceList.SQL.Add('AND IH.InternalInvoiceNo = '+IntToStr(InternalInvoiceNo)) ;

   sq_InvoiceList.SQL.Add('Group by IH.InternalInvoiceNo, IH.InvoiceDate, IH.AgentName, IL.Shipper,') ;
   sq_InvoiceList.SQL.Add('IH.CustomerName, IL.ShippingPlanNo, SR.ClientName, sm.SalesGroupName, ') ;
   sq_InvoiceList.SQL.Add('IH.Debit_Credit,') ;
   sq_InvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid,') ;
   sq_InvoiceList.SQL.Add('IH.CurrencyName, IH.CustomerNo, dpi.KUND_NM3, dpi.KONT_UNIT, IH.InvoiceType,') ;
   sq_InvoiceList.SQL.Add('iar.ArDate, iar.InternalInvoiceNo') ;


   sq_InvoiceList.SQL.Add('ORDER BY InvoiceDate desc') ;
// if thisuser.UserID = 8 then sq_InvoiceList.SQL.SaveToFile('sq_InvoiceList.TXT');

//  sq_InvoiceList.Open ;

   cdsInvoiceList.Active:= True ;

   Finally
    grdFakturaDBTableView1.DataController.DataSet.EnableControls ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   End ;
 End ; // with
end;


procedure TfrmLoadArrivals.nfSearchLOKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key <> VK_RETURN then Exit;
 With dmArrivingLoads do
 Begin
  RefreshInvoice(Sender, -1, StrToIntDef(nfSearchLO.Text,0), -1);
  
  cdsInvoiceList.Locate('LO', StrToIntDef(nfSearchLO.Text,0), []) ;

 End ; //with
end;

procedure TfrmLoadArrivals.nfSearchInvoiceNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

 if Key <> VK_RETURN then Exit;
 With dmArrivingLoads do
 Begin
  RefreshInvoice(Sender, StrToIntDef(nfSearchInvoiceNo.Text,0),-1, -1);
  cdsInvoiceList.Locate('INVOICE_NO', StrToIntDef(nfSearchInvoiceNo.Text,0), []) ;
 End ; //with
end;

procedure TfrmLoadArrivals.nfSearchLastNrKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var InvoiceType, InternalInvoiceNo : Integer ;
begin
// rgConfirmed.ItemIndex:= 1 ;
 if Key <> VK_RETURN then Exit;
 With dmArrivingLoads do
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

procedure TfrmLoadArrivals.grdFakturaDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
Var
  IAR_IntInvNo : Double ;
begin
 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('IAR_IntInvNo').Index] <> null then
 IAR_IntInvNo:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('IAR_IntInvNo').Index] ;

 if IAR_IntInvNo > 0 then
 AStyle := cxStyleLoadAR ;
end;

procedure TfrmLoadArrivals.lcLIPNameEnter(Sender: TObject);
begin
 with  dmArrivingLoads do
 Begin
  if cds_PIP.RecordCount > 0 then
  Begin
   mtUserPropPIPNo.AsInteger := cds_PIPPIPNO.AsInteger ;
   cds_LIP.Active    := False ;
   cds_LIP.Filter    := 'PIPNo = ' + mtUserPropPIPNo.AsString ;
   cds_LIP.Filtered  := True ;
   cds_LIP.Active    := True ;
   if cds_LIP.RecordCount = 1 then
    mtUserPropLIPNo.AsInteger  := cds_LIPLIPNo.AsInteger ;
  End ;
 End ; 
end;

end.
