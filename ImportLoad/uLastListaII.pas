unit uLastListaII;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  Math, StdCtrls,
  IniFiles, Menus, DB, DBCtrls, SqlTimSt, dxBarExtItems, dxBar,
  Grids,  DBGrids,

  DBClient, FMTBcd, SqlExpr, Provider,
  Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxImageComboBox, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxDBLookupComboBox, cxCheckBox, cxLabel, cxSplitter, cxDropDownEdit,
  cxContainer, cxCalendar, cxDBEdit, kbmMemTable, cxLookupEdit,
  cxDBLookupEdit, cxGridCustomPopupMenu, cxGridPopupMenu, cxLookAndFeels,
  cxLookAndFeelPainters ;

type
  TfLastListaII = class(TForm)
    Panel1: TPanel;
    pLoads: TPanel;
    PanelAvropLoad: TPanel;
    pmgrdAvrop: TPopupMenu;
    Cancel1: TMenuItem;
    Progress1: TMenuItem;
    Complete1: TMenuItem;
    ActionList1: TActionList;
    ac_Exit: TAction;
    ac_Refresh: TAction;
    imglistActions: TImageList;
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    lbPrint: TdxBarLargeButton;
    ppmPrintReports: TdxBarPopupMenu;
    acPrintLoad: TAction;
    CustomizegrdAvrop: TMenuItem;
    bbPrintLoad: TdxBarButton;
    panelTitelLaster: TPanel;
    acNewLoad: TAction;
    acOpenLoad: TAction;
    bbNewLoad: TdxBarButton;
    siPrint: TdxBarSubItem;
    bbTally: TdxBarButton;
    bbOpenLoad: TdxBarButton;
    acChangeLoadTable: TAction;
    cxSplitter1: TcxSplitter;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleOrange: TcxStyle;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarDockControl3: TdxBarDockControl;
    dxBarDockControl4: TdxBarDockControl;
    cxLabel3: TcxLabel;
    grdLasterDBTableView1: TcxGridDBTableView;
    grdLasterLevel1: TcxGridLevel;
    grdLaster: TcxGrid;
    grdLasterDBTableView1LO: TcxGridDBColumn;
    grdLasterDBTableView1LASTNR: TcxGridDBColumn;
    grdLasterDBTableView1FS: TcxGridDBColumn;
    grdLasterDBTableView1UTLASTAD: TcxGridDBColumn;
    grdLasterDBTableView1STATUS: TcxGridDBColumn;
    grdLasterDBTableView1LAST_ID: TcxGridDBColumn;
    grdLasterDBTableView1AM3: TcxGridDBColumn;
    grdLasterDBTableView1ANTPKT: TcxGridDBColumn;
    images1616: TImageList;
    dspLoads: TDataSetProvider;
    cdsLoads: TClientDataSet;
    cdsLoadsLO: TIntegerField;
    cdsLoadsLASTNR: TIntegerField;
    cdsLoadsFS: TStringField;
    cdsLoadsUTLASTAD: TSQLTimeStampField;
    cdsLoadsSTATUS: TIntegerField;
    cdsLoadsLAST_ID: TStringField;
    cdsLoadsANTPKT: TIntegerField;
    dsrcLoads: TDataSource;
    sqLoads: TSQLQuery;
    Panel6: TPanel;
    Panel7: TPanel;
    grdLasterDBTableView1NM3: TcxGridDBColumn;
    dxBarLargeButton1: TdxBarLargeButton;
    cdsLoadsKund: TStringField;
    cdsLoadsLeverantr: TStringField;
    grdLasterDBTableView1Kund: TcxGridDBColumn;
    grdLasterDBTableView1Leverantr: TcxGridDBColumn;
    grdPackagesDBTableView1: TcxGridDBTableView;
    grdPackagesLevel1: TcxGridLevel;
    grdPackages: TcxGrid;
    sq_LoadPackages: TSQLQuery;
    dsp_LoadPackages: TDataSetProvider;
    cds_LoadPackages: TClientDataSet;
    ds_LoadPackages: TDataSource;
    cds_LoadPackagesLastnr: TIntegerField;
    cds_LoadPackagesProdukt: TStringField;
    cds_LoadPackagesLoadDetailNo: TIntegerField;
    cds_LoadPackagesPACKAGENO: TIntegerField;
    cds_LoadPackagesPrefix: TStringField;
    cds_LoadPackagesStyck: TIntegerField;
    cds_LoadPackagesPCS_PER_LENGTH: TStringField;
    grdPackagesDBTableView1Produkt: TcxGridDBColumn;
    grdPackagesDBTableView1LoadDetailNo: TcxGridDBColumn;
    grdPackagesDBTableView1PACKAGENO: TcxGridDBColumn;
    grdPackagesDBTableView1Prefix: TcxGridDBColumn;
    grdPackagesDBTableView1AM3: TcxGridDBColumn;
    grdPackagesDBTableView1Styck: TcxGridDBColumn;
    grdPackagesDBTableView1NM3: TcxGridDBColumn;
    grdPackagesDBTableView1LOPM: TcxGridDBColumn;
    grdPackagesDBTableView1PCS_PER_LENGTH: TcxGridDBColumn;
    cdsLoadsStyck: TIntegerField;
    grdLasterDBTableView1AM1: TcxGridDBColumn;
    grdLasterDBTableView1Styck: TcxGridDBColumn;
    Edit1: TEdit;
    cxLabel4: TcxLabel;
    cdsLoadsCustomerNo: TIntegerField;
    cdsLoadsSupplierNo: TIntegerField;
    PopupMenu1: TPopupMenu;
    ExitF121: TMenuItem;
    UppdateraF61: TMenuItem;
    Fljesedel1: TMenuItem;
    cdsLoadsAM1: TFloatField;
    cdsLoadsAM3: TFloatField;
    cdsLoadsNM3: TFloatField;
    acImportWoodxLoad: TAction;
    acAngraImport: TAction;
    Label1: TLabel;
    lcOWNER: TcxDBLookupComboBox;
    Label12: TLabel;
    lcPIPNAME: TcxDBLookupComboBox;
    mtUserProp: TkbmMemTable;
    mtUserPropVerkNo: TIntegerField;
    mtUserPropOwnerNo: TIntegerField;
    mtUserPropPIPNo: TIntegerField;
    mtUserPropLIPNo: TIntegerField;
    mtUserPropInputOption: TIntegerField;
    mtUserPropRegPointNo: TIntegerField;
    mtUserPropRegDate: TDateTimeField;
    mtUserPropCopyPcs: TIntegerField;
    mtUserPropRunNo: TIntegerField;
    mtUserPropProducerNo: TIntegerField;
    mtUserPropAutoColWidth: TIntegerField;
    mtUserPropSupplierCode: TStringField;
    mtUserPropLengthOption: TIntegerField;
    mtUserPropLengthGroupNo: TIntegerField;
    mtUserPropNewItemRow: TIntegerField;
    mtUserPropGradeStampNo: TIntegerField;
    mtUserPropBarCodeNo: TIntegerField;
    mtUserPropLengthGroup: TStringField;
    mtUserPropLIPName: TStringField;
    mtUserPropPIPNAME: TStringField;
    mtUserPropREGPOINT: TStringField;
    mtUserPropPRODUCER: TStringField;
    mtUserPropOWNER: TStringField;
    mtUserPropVERK: TStringField;
    mtUserPropRoleType: TIntegerField;
    mtUserPropGradestamp: TStringField;
    mtUserPropBarcode: TStringField;
    mtUserPropProductDescription: TStringField;
    mtUserPropProductNo: TIntegerField;
    mtUserPropProductGroupNo: TIntegerField;
    mtUserPropLIPChange: TIntegerField;
    mtUserPropSalesRegionNo: TIntegerField;
    mtUserPropVolumeUnitNo: TIntegerField;
    mtUserPropLengthFormatNo: TIntegerField;
    mtUserPropForm: TStringField;
    mtUserPropUserID: TIntegerField;
    mtUserPropLengthVolUnitNo: TIntegerField;
    mtUserPropSurfacingNo: TIntegerField;
    mtUserPropNOMTHICK: TFloatField;
    mtUserPropGroupByBox: TIntegerField;
    mtUserPropGroupSummary: TIntegerField;
    mtUserPropMCClassNo: TIntegerField;
    mtUserPropExLog: TStringField;
    mtUserPropAgentNo: TIntegerField;
    mtUserPropShipperNo: TIntegerField;
    mtUserPropStartPeriod: TDateTimeField;
    mtUserPropEndPeriod: TDateTimeField;
    dsUserProp: TDataSource;
    deStartPeriod: TcxDBDateEdit;
    cds_LoadPackagesAM3: TFloatField;
    cds_LoadPackagesNM3: TFloatField;
    cds_LoadPackagesLOPM: TFloatField;
    dxBarLargeButton3: TdxBarLargeButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGridPopupMenu2: TcxGridPopupMenu;
    cdsLoadsRegistrerad: TSQLTimeStampField;
    grdLasterDBTableView1Registrerad: TcxGridDBColumn;
    Importerawoodx1: TMenuItem;
    sq_delLoadAndPkgs: TSQLStoredProc;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ac_ExitExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acOpenLoadUpdate(Sender: TObject);
    procedure acPrintLoadUpdate(Sender: TObject);
    procedure acNewLoadUpdate(Sender: TObject);
    procedure grdLasterDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ac_RefreshExecute(Sender: TObject);
    procedure dsrcLoadsDataChange(Sender: TObject; Field: TField);
    procedure cbOrderTypePropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure deFomPropertiesChange(Sender: TObject);
    procedure acImportWoodxLoadExecute(Sender: TObject);
    procedure acAngraImportExecute(Sender: TObject);
    procedure mtUserPropOwnerNoChange(Sender: TField);
    procedure grdLasterDBTableView1DblClick(Sender: TObject);
    procedure acAngraImportUpdate(Sender: TObject);
  private
    { Private declarations }
    procedure ShowAndLinkPackages (Sender: TObject;const DeliveryMessageNumber : String);
    Procedure DeleteLoadAndPackages(const LO, LoadNo  : Integer) ;
  public
    { Public declarations }
    procedure CreateCo(CompanyNo : Integer);
  end;

var fLastListaII: TfLastListaII;

implementation

{$R *.dfm}

uses
  VidaConst,
  VidaUser,
  VidaUtils, dmsDataConn,
  dmsVidaContact, dmsVidaSystem, MainU, dmsVidaProduct,
  dmcLoadNoLO, dmc_ImportWoodx, uImportedPackages , dmc_UserProps;//, uPrintModule;

procedure TfLastListaII.CreateCo(CompanyNo: Integer);
Var x : Integer ;
begin

end;


procedure TfLastListaII.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfLastListaII.FormCreate(Sender: TObject);
begin
// if not Assigned(daMoLM1) then  daMoLM1:= TdaMoLM1.Create(Nil) ;
end;

procedure TfLastListaII.FormDestroy(Sender: TObject);
begin
// if Assigned(daMoLM1) then  FreeAndNil(daMoLM1) ;
// Report       := Nil ;
 fLastListaII := Nil ;
end;

procedure TfLastListaII.ac_ExitExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfLastListaII.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdLaster.Name, grdLasterDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdPackages.Name, grdPackagesDBTableView1) ;
 dm_UserProps.SaveUserProps (Self.Name, mtUserProp) ;
 CanClose:= True ;
end;

procedure TfLastListaII.acOpenLoadUpdate(Sender: TObject);
begin
  acOpenLoad.Enabled:= (cdsLoads.Active) and (cdsLoads.RecordCount > 0) ;
end;

procedure TfLastListaII.acPrintLoadUpdate(Sender: TObject);
begin
 acPrintLoad.Enabled:= (cdsLoads.Active) and (cdsLoads.RecordCount > 0) ;
end;

procedure TfLastListaII.acNewLoadUpdate(Sender: TObject);
begin
 acNewLoad.Enabled:= (cdsLoads.Active) ;
end;

procedure TfLastListaII.grdLasterDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  iInvNoColumn, InvoiceColumn, POInvoiceColumn : Integer;
  iInvNo, InvoiceNo, POInvoiceNo : integer;
begin
{
  if ColumnIsGrouped(AColumn,grdLoads) then
    Exit;

  // get the status of this LO
  iInvNoColumn := grdLoads.ColumnByName('grdLoadsINTFAKTURANR').Index;
  iInvNo := ANode.Values[iInvNoColumn];

  InvoiceColumn := grdLoads.ColumnByName('grdLoadsFAKTURANR').Index;
  InvoiceNo := ANode.Values[InvoiceColumn];

  POInvoiceColumn := grdLoads.ColumnByName('grdLoadsPO_FAKTURANR').Index;
  POInvoiceNo := ANode.Values[POInvoiceColumn];

  // Set the color for this row, based on LO status
  if (InvoiceNo <> -1) or (POInvoiceNo <> -1) //or(PROFORMA_INVOICENO <> -1)
  then
  AColor := clSilver
  else
  if iInvNo <> -1 then
  AColor := clBlue ;
  }
end;


procedure TfLastListaII.ac_RefreshExecute(Sender: TObject) ;
Var Save_Cursor   : TCursor ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  cdsLoads.Active:= False ;
  sqLoads.ParamByName('LoadedDate').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(mtUserPropStartPeriod.AsDateTime) ;
  sqLoads.ParamByName('CustomerNo').AsInteger       := mtUserPropOwnerNo.AsInteger  ;
  sqLoads.ParamByName('ShipToInvPointNo').AsInteger := dmsContact.GetCityNoFromPIP(mtUserPropPIPNo.AsInteger) ;
  cdsLoads.Active:= True ;
  if cdsLoads.RecordCount > 0 then
   cdsLoads.Last ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfLastListaII.dsrcLoadsDataChange(Sender: TObject;
  Field: TField);
begin
 cds_LoadPackages.Active:= False ;
 sq_LoadPackages.ParamByName('LoadNo').AsInteger:= cdsLoadsLASTNR.AsInteger ;
 cds_LoadPackages.Active:= True ;
end;

procedure TfLastListaII.cbOrderTypePropertiesChange(Sender: TObject);
begin
 ac_RefreshExecute(Sender) ;
end;

procedure TfLastListaII.FormShow(Sender: TObject);
begin
 dm_UserProps.LoadUserProps (Self.Name, mtuserprop) ;
 dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdLaster.Name, grdLasterDBTableView1) ;
 dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdPackages.Name, grdPackagesDBTableView1) ;

 mtUserProp.Edit ;
// mtUserPropVerkNo.AsInteger      := cds_ImpClientMapClientNo.AsInteger ;
 mtUserPropProducerNo.AsInteger  := ThisUser.CompanyNo ;
 mtUserPropOwnerNo.AsInteger     := ThisUser.CompanyNo ;
 mtUserProp.Post ;

 ac_RefreshExecute(Sender) ;
end;

procedure TfLastListaII.deFomPropertiesChange(Sender: TObject);
begin
 ac_RefreshExecute(Sender) ;
end;

procedure TfLastListaII.acImportWoodxLoadExecute(Sender: TObject);
Var DeliveryMessageNumber : String ;
begin
 XMLImportExport:= TXMLImportExport.Create(nil);
 try
  XMLImportExport.FakturaNummer:= 'Paketspec' ;
  if ThisUser.UserID <> 8 then
  XMLImportExport.TabSheet2.TabVisible:= False ;

//   if XMLImportExport.ShowModal = mrOK then
  XMLImportExport.ShowModal ;
  if XMLImportExport.ImportOK then
   Begin
    DeliveryMessageNumber:= XMLImportExport.DeliveryMessageNumber ;
    ShowAndLinkPackages (Sender, DeliveryMessageNumber);
//    acSaveLoadExecute(Sender) ;
   End ;
 finally
  FreeAndNil(XMLImportExport) ;
 end;
end;

procedure TfLastListaII.ShowAndLinkPackages (Sender: TObject;const DeliveryMessageNumber : String);
var fImportedPackages: TfImportedPackages;
Begin
 dmsProduct:= TdmsProduct.Create(Nil);
 Try
 fImportedPackages:= TfImportedPackages.Create(nil);
 try
  fImportedPackages.DeliveryMessageNumber                               := DeliveryMessageNumber ;
  dmsProduct.SupplierNo                                                 := dmLoadNoLO.cds_LoadHeadSupplierNo.AsInteger ;
//  dmsProduct.SupplierNo                                                 := dmLoadNoLO.FSalesRegionNo ;//FOrderClientNo ;

//  fImportedPackages.SupplierNo                                          := dmLoadNoLO.cds_LoadHeadCustomerNo.AsInteger ;


//  dmsProduct.SupplierCode                                               := dmsContact.GetClientCode(dmLoadNoLO.FSalesRegionNo) ;

//  dmsProduct.OrderType                                                  := c_Purchase ;
//  dmsProduct.InventoryOwnerNo                                           := VIDA_WOOD_COMPANY_NO ;
//  dmsProduct.InventoryNo                                                := 4 ;

{  dmsSystem.sq_GetInventoryNo.Close ;
  dmsSystem.sq_GetInventoryNo.ParamByName('OwnerNo').AsInteger          := VIDA_WOOD_COMPANY_NO ;
  dmsSystem.sq_GetInventoryNo.ParamByName('PhyInvPointNameNo').AsInteger:= dmLoadNoLO.cds_LSPLoadingLocationNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Open ;
  dmsProduct.InventoryNo                                                := dmsSystem.sq_GetInventoryNoPhysicalInventoryPointNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Close ; }

  dm_ImportWoodx.mtLoadProducts.Active:= True ;
{LÖSA PÅ ANNAT SÄTT  dmLoadNoLO.cdsLORows.First ;
  While not dmLoadNoLO.cdsLORows.Eof do
  Begin
   dm_ImportWoodx.mtLoadProducts.Insert ;
   dm_ImportWoodx.mtLoadProductsProductDisplayName.AsString := dmLoadNoLO.cdsLORowsPRODUCTDESCRIPTION.AsString ;
   dm_ImportWoodx.mtLoadProductsProductNo.AsInteger         := dmLoadNoLO.cdsLORowsPRODUCTNo.AsInteger ;
   dm_ImportWoodx.mtLoadProducts.Post ;
   dmLoadNoLO.cdsLORows.Next ;
  End ; }

  fImportedPackages.ShowModal ;
  if fImportedPackages.SavedImportedPkgsOK then
  Begin
   ac_RefreshExecute(Sender) ;
    //Save packages is done in previous form

    //Done! refresh and show the imported load in the list.
  End ;


  Application.ProcessMessages ;
//  if (fImportedPackages.acCreatePkgs.Enabled) and (fImportedPackages.SavedImportedPkgsOK) then
//   InsertImportedPkgs(Sender) ;

 finally
  FreeAndNil(fImportedPackages) ;
 end;
 Finally
  FreeAndNil(dmsProduct) ;
 End ;
End ;

procedure TfLastListaII.acAngraImportExecute(Sender: TObject);
begin
 //Ångra import av last.
 //Kan bara utföras om inga paket ändrats eller avregistrerats.
 if MessageDlg('Vill du ångra import av markerad leverans?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   DeleteLoadAndPackages(cdsLoadsLO.AsInteger, cdsLoadsLASTNR.AsInteger) ;
   ac_RefreshExecute(Sender) ;
  End ;  
end;

Procedure TfLastListaII.DeleteLoadAndPackages(const LO, LoadNo  : Integer) ;
Begin
 Try
 sq_delLoadAndPkgs.ParamByName('LoadNo').AsInteger  := LoadNo ;
 sq_delLoadAndPkgs.ParamByName('LONo').AsInteger    := LO ;
 sq_delLoadAndPkgs.ExecProc ;
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message+' :sq_Ins_wx_prod_trsl.ExecSQL') ;
   Raise ;
  End ;
 end;
End ;

procedure TfLastListaII.mtUserPropOwnerNoChange(Sender: TField);
begin
 With dm_UserProps do
 Begin
  cds_PIP.Active:= False ;
  cds_PIP.ParamByName('OwnerNo').AsInteger     := mtUserPropOwnerNo.AsInteger ;
  cds_PIP.ParamByName('LegoOwnerNo').AsInteger := mtUserPropOwnerNo.AsInteger ;

 if (ThisUser.CompanyNo = cVidaPackaging) or
 (ThisUser.CompanyNo = cOsterlovsta) then
  Begin
   cds_PIP.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
  End
  else
  Begin
   cds_PIP.ParamByName('UserID').AsInteger:= -1 ;
  End ;

  cds_PIP.Active:= True ;
  cds_PIP.First ;
  if cds_PIP.RecordCount > 0 then
   mtUserPropPIPNo.AsInteger:= cds_PIPPIPNO.AsInteger ;

  cds_RegPoint.Active:= False ;
  cds_RegPoint.ParamByName('ClientNo').AsInteger:= mtUserPropOwnerNo.AsInteger ;
  cds_RegPoint.Active:= True ;
  cds_RegPoint.First ;
  if cds_RegPoint.RecordCount > 0 then
   mtUserPropRegPointNo.AsInteger:= cds_RegPointRegistrationPointNo.AsInteger ;
 End ;
end;

procedure TfLastListaII.grdLasterDBTableView1DblClick(Sender: TObject);
begin
 //
end;

procedure TfLastListaII.acAngraImportUpdate(Sender: TObject);
begin
 acAngraImport.Enabled  := (cdsLoads.Active) and (cdsLoads.RecordCount > 0) ;
end;

End.

