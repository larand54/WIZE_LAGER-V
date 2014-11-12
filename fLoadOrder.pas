unit fLoadOrder;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  fDBForm,
  ActnList,
  ImgList,
  ComCtrls,
  ExtCtrls,
  ToolWin,
  dxCntner,
  dxEditor,
  dxExEdtr,
  dxDBEdtr,
  dxDBELib,
  Grids,
  DBGrids,
  dxTL,
  dxDBCtrl,
  dxDBGrid,
  dxDBTLCl,
  dxGrClms,
  DBCtrls,
  StdCtrls,
  Menus,
  DBClient, dxBar, dxBarExtItems, FMTBcd, SqlExpr, Provider, dxEdLib,
  Buttons,
  IniFiles,

  SqlTimSt, DB, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxImageComboBox, cxTextEdit, dxPScxCommon, dxPScxGrid6Lnk,
  cxGridExportLink,
  cxExport, cxLabel, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxLookAndFeels, cxDBEdit, cxSplitter, cxPC, cxCheckBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox  ;


type
  TfrmLoadOrder = class(TForm)

    pnlBottomGrid: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    lbOpenLoad: TdxBarLargeButton;
    lbNewLoad: TdxBarLargeButton;
    bPrintHyvelOrder: TdxBarButton;
    bPrintLOAllVerk: TdxBarButton;
    bPrintLODittVerk: TdxBarButton;
    bAllaLasterPerLO: TdxBarButton;
    imglistActions: TImageList;
    ActionList_DBForm: TActionList;
    atRefresh: TAction;
    atAcceptLoadOrder: TAction;
    atRejectLoadOrder: TAction;
    atCompletedLoadOrder: TAction;
    atRemoveLoadOrder: TAction;
    atShowLO: TAction;
    atNewLoad: TAction;
    atDeleteLoad: TAction;
    atSetToONHOLD: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    pmPrint: TdxBarPopupMenu;
    atProductionComplete: TAction;
    atPreliminary: TAction;
    images1616: TImageList;
    lbApplyUpdates: TdxBarLargeButton;
    lbCancelUpdates: TdxBarLargeButton;
    ImageList1: TImageList;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxBarStatic1: TdxBarStatic;
    acSetToNEW: TAction;
    lbNewLoadWithLO: TdxBarLargeButton;
    bbAvropVerk: TdxBarButton;
    ccShowAll: TdxBarControlContainerItem;
    bbTallyUSA: TdxBarButton;
    bbTallyVer2: TdxBarButton;
    bbTally_USA: TdxBarButton;
    lbLO_To_Invoice: TListBox;
    bbAvrakningSpecVer2: TdxBarButton;
    bbChangeLayout: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxDBGridReportLink;
    grdLODBTableView1: TcxGridDBTableView;
    grdLOLevel1: TcxGridLevel;
    grdLO: TcxGrid;
    acSamlingFS: TAction;
    dxBarButton1: TdxBarButton;
    dxComponentPrinter1Link2: TdxGridReportLink;
    acChangeLOLayout: TAction;
    acSaveChanges: TAction;
    acCancelChanges: TAction;
    grdLODBTableView1Supplier: TcxGridDBColumn;
    grdLODBTableView1ShippingPlanStatus: TcxGridDBColumn;
    grdLODBTableView1LONumber: TcxGridDBColumn;
    grdLODBTableView1PKGCode: TcxGridDBColumn;
    grdLODBTableView1Product: TcxGridDBColumn;
    grdLODBTableView1Length: TcxGridDBColumn;
    grdLODBTableView1FromWeek: TcxGridDBColumn;
    grdLODBTableView1ToWeek: TcxGridDBColumn;
    grdLODBTableView1Volume: TcxGridDBColumn;
    grdLODBTableView1SupplierShipPlanObjectNo: TcxGridDBColumn;
    grdLODBTableView1ShipTo: TcxGridDBColumn;
    grdLODBTableView1OrderNo: TcxGridDBColumn;
    grdLODBTableView1UnitName: TcxGridDBColumn;
    grdLODBTableView1Destination: TcxGridDBColumn;
    grdLODBTableView1ClientName: TcxGridDBColumn;
    grdLODBTableView1SPCustomerNo: TcxGridDBColumn;
    grdLODBTableView1CustomerPrice: TcxGridDBColumn;
    grdLODBTableView1CustomerShowInGrid: TcxGridDBColumn;
    grdLODBTableView1ObjectType: TcxGridDBColumn;
    grdLODBTableView1CHCustomerNo: TcxGridDBColumn;
    grdLODBTableView1SUPP_NAME: TcxGridDBColumn;
    grdLODBTableView1OrderType: TcxGridDBColumn;
    grdLODBTableView1LOADING: TcxGridDBColumn;
    grdLODBTableView1LOCAL_CUST: TcxGridDBColumn;
    grdLODBTableView1Delivery_WeekNo: TcxGridDBColumn;
    grdLODBTableView1INITIALS: TcxGridDBColumn;
    grdLODBTableView1CSH_CustomerNo: TcxGridDBColumn;
    grdLODBTableView1ShipToInvPointNo: TcxGridDBColumn;
    grdLODBTableView1LoadingLocationNo: TcxGridDBColumn;
    grdLODBTableView1READYDATE: TcxGridDBColumn;
    grdLODBTableView1ShippersShipDate: TcxGridDBColumn;
    grdLODBTableView1BarCode: TcxGridDBColumn;
    grdLODBTableView1REFERENS: TcxGridDBColumn;
    grdLODBTableView1SKAPAD: TcxGridDBColumn;
    grdLODBTableView1Reference: TcxGridDBColumn;
    grdLODBTableView1NT: TcxGridDBColumn;
    grdLODBTableView1NB: TcxGridDBColumn;
    grdLODBTableView1AT: TcxGridDBColumn;
    grdLODBTableView1AB: TcxGridDBColumn;
    grdLODBTableView1TT: TcxGridDBColumn;
    grdLODBTableView1TB: TcxGridDBColumn;
    grdLODBTableView1TS: TcxGridDBColumn;
    grdLODBTableView1UT: TcxGridDBColumn;
    grdLODBTableView1KV: TcxGridDBColumn;
    grdLODBTableView1PK: TcxGridDBColumn;
    pmLOGrid: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    acConfirmCancel: TAction;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    acShowLOGroupByBox: TAction;
    dxBarButton12: TdxBarButton;
    acChangeLoadLayout: TAction;
    pmLoadGrid: TdxBarPopupMenu;
    acNewLoadWithLO: TAction;
    acOpenLoad: TAction;
    acPrintLOWYSWYG: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    acOpenMall: TAction;
    acSaveMall: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    Panel2: TPanel;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    acExpandAll: TAction;
    acCollapseAll: TAction;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    acExportToXLS: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    SaveDialog2: TSaveDialog;
    acSearchLoadNo: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    PopupMenu1: TPopupMenu;
    Ny1: TMenuItem;
    grdLODBTableView1INTLNGD: TcxGridDBColumn;
    grdLODBTableView1RADREFERENS: TcxGridDBColumn;
    bcLastLoadNoOpen: TdxBarCombo;
    bbGoToLoad: TdxBarButton;
    acAddToLastLoadList: TAction;
    dxBarButton16: TdxBarButton;
    acSpec_ALLA_Laster: TAction;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    grdLODBTableView1KONTRAKTSBESKRIVNING: TcxGridDBColumn;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    acClose: TAction;
    acBooking: TAction;
    pmShortcuts: TPopupMenu;
    Bokning1: TMenuItem;
    Stng1: TMenuItem;
    NyLastmotLOnr1: TMenuItem;
    ppnalast1: TMenuItem;
    WYSIWYG1: TMenuItem;
    Spara1: TMenuItem;
    Uppdatera1: TMenuItem;
    Panel3: TPanel;
    Edit1: TEdit;
    Label9: TLabel;
    Edit2: TEdit;
    Label10: TLabel;
    cbSupplier: TcxComboBox;
    Label11: TLabel;
    bcStatus: TcxImageComboBox;
    Label12: TLabel;
    cbShowAll: TCheckBox;
    BitBtn2: TBitBtn;
    cbOrderType: TcxComboBox;
    grdLODBTableView1MARKNAD: TcxGridDBColumn;
    cbLastOpenLoads: TcxComboBox;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    cxLookAndFeelController1: TcxLookAndFeelController;
    Timer1: TTimer;
    cxPageControl1: TcxPageControl;
    tsLoads: TcxTabSheet;
    tsAO: TcxTabSheet;
    Panel1: TPanel;
    grdFS: TcxGrid;
    grdFSDBTableView1: TcxGridDBTableView;
    grdFSDBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdFSDBTableView1LoadNo: TcxGridDBColumn;
    grdFSDBTableView1LoadID: TcxGridDBColumn;
    grdFSDBTableView1LoadedDate: TcxGridDBColumn;
    grdFSDBTableView1SenderLoadStatus: TcxGridDBColumn;
    grdFSDBTableView1Pcs: TcxGridDBColumn;
    grdFSDBTableView1ActualM3: TcxGridDBColumn;
    grdFSDBTableView1NominalM3: TcxGridDBColumn;
    grdFSDBTableView1LinealMeter: TcxGridDBColumn;
    grdFSDBTableView1MFBM: TcxGridDBColumn;
    grdFSDBTableView1FS: TcxGridDBColumn;
    grdFSDBTableView1VERK: TcxGridDBColumn;
    grdFSDBTableView1ANTPKT: TcxGridDBColumn;
    grdFSLevel1: TcxGridLevel;
    pnlLowerGridHdr: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    bbBookingForm: TBitBtn;
    dbePanic_Note: TdxDBEdit;
    BitBtn1: TBitBtn;
    cxSplitter1: TcxSplitter;
    Panel4: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    dxBarButton15: TdxBarButton;
    dxBarButton24: TdxBarButton;
    acAddLOToAO: TAction;
    acRemoveAORow: TAction;
    grdAORow: TcxGrid;
    grdAORowDBBandedTableView1: TcxGridDBBandedTableView;
    grdAORowDBBandedTableView1RunNo: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1RowNo: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1RunOrderNo: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Status: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Start: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Vecka: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Krtid: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Stopptid: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1MainProduct: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1NoOfUnits: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1VolUnitNo: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Column1: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1PkgCodePPNo: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1AT: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1AB: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1GradeName: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1SpeciesName: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1SurfacingName: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1BarCodeID: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1GradeStamp: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1LANGD: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1PcsPerPkg: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Mtpunkt: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Producent: TcxGridDBBandedColumn;
    grdAORowLevel1: TcxGridLevel;
    cbShowNotInAO: TCheckBox;
    acCreateNewRun: TAction;
    dxBarButton25: TdxBarButton;
    grdLODBTableView1PkgCodePPNo: TcxGridDBColumn;
    grdLODBTableView1VolumeUnitNo: TcxGridDBColumn;
    acSaveAO: TAction;
    dxBarButton26: TdxBarButton;
    acCancelAOChanges: TAction;
    Panel5: TPanel;
    cxLabel3: TcxLabel;
    icStatus: TcxDBImageComboBox;
    lcUser: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    acDeleteRun: TAction;
    dxBarButton29: TdxBarButton;
    pmAORow: TdxBarPopupMenu;
    dxBarButton30: TdxBarButton;
    acFilterAOonDim: TAction;
    acFilterAOonLO: TAction;
    acFilterAOonNothing: TAction;
    acLinkLOtoAO: TAction;
    dxBarButton31: TdxBarButton;

    procedure atAcceptLoadOrderExecute(Sender: TObject);
    procedure atRejectLoadOrderExecute(Sender: TObject);
    procedure atCompletedLoadOrderExecute(Sender: TObject);
    procedure atRefreshExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure atSetToONHOLDExecute(Sender: TObject);
    procedure bPrintHyvelOrderClick(Sender: TObject);
    procedure bPrintLOAllVerkClick(Sender: TObject);
    procedure bPrintLODittVerkClick(Sender: TObject);
    procedure bAllaLasterPerLOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure atProductionCompleteExecute(Sender: TObject);
    procedure atPreliminaryExecute(Sender: TObject);
    procedure grdLO1ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acSetToNEWExecute(Sender: TObject);
    procedure bbAvropVerkClick(Sender: TObject);
    procedure dxDBEdit2Exit(Sender: TObject);
    procedure Visagrupperingsrutan1Click(Sender: TObject);
    procedure bbTallyVer2Click(Sender: TObject);
    procedure bbTally_USAClick(Sender: TObject);
    procedure bbAvrakningSpecVer2Click(Sender: TObject);
    procedure acSamlingFSExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure acChangeLOLayoutExecute(Sender: TObject);
    procedure acSaveChangesExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acConfirmCancelExecute(Sender: TObject);
    procedure acShowLOGroupByBoxExecute(Sender: TObject);
    procedure acChangeLoadLayoutExecute(Sender: TObject);
    procedure acOpenMallExecute(Sender: TObject);
    procedure acSaveMallExecute(Sender: TObject);
    procedure acPrintLOWYSWYGExecute(Sender: TObject);
    procedure acExpandAllExecute(Sender: TObject);
    procedure acCollapseAllExecute(Sender: TObject);
    procedure acExportToXLSExecute(Sender: TObject);
    procedure acSearchLoadNoExecute(Sender: TObject);
    procedure bbGoToLoadClick(Sender: TObject);
    procedure acAddToLastLoadListExecute(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acSpec_ALLA_LasterExecute(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure cbSupplierPropertiesCloseUp(Sender: TObject);
    procedure cbOrderTypePropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure acCreateNewRunExecute(Sender: TObject);
    procedure acCreateNewRunUpdate(Sender: TObject);
    procedure acSaveChangesUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acSaveAOExecute(Sender: TObject);
    procedure acAddLOToAOExecute(Sender: TObject);
    procedure acFilterAOonDimExecute(Sender: TObject);
    procedure acFilterAOonLOExecute(Sender: TObject);
    procedure acFilterAOonNothingExecute(Sender: TObject);
    procedure acAddLOToAOUpdate(Sender: TObject);
    procedure acSaveAOUpdate(Sender: TObject);

  private
    { Private declarations }
    LastUsedLOTemplate,
    ExcelDir, LODir : String ;
//    CurrentMall : String ;
    SearchOneLO : Boolean ;
    SupplierShipPlanObjectNo : Integer ;
    OrderTypeChanged   : Boolean ;
//    FIsModified : Boolean ;
//    FLiveThreads : TList;
    FStatusChanging : Boolean;

//    ExitOption: Integer ;
    procedure CloseDataSet ;

    procedure ProtectTheData;
    procedure BuildLOSQL(Sender: TObject);
//    procedure BuildSQL_Get_One_LO (Sender: TObject; const LO_No : String);
    procedure CheckIfChangesUnSaved(Sender:TObject) ;
    procedure RefreshLoadOrders(Sender: TObject);
    procedure GotoMyBookmark(Sender: TObject) ;
    procedure SetMyBookmark(Sender: TObject) ;
    procedure BuildGetOne_LO_SQL(Sender: TObject);
    procedure GetOneLO(Sender: TObject);
    procedure PrintSamlingsspecifikation(Sender: TObject;const SamLastNr : Integer);
    procedure PrintSamlingsspecifikationMedPktnr(Sender: TObject;const SamLastNr : Integer);
    procedure GenerateSamlingFS_2(Sender: TObject);
    procedure GenerateSamlingFS_MedPktNr(Sender: TObject);
    function  GetSelectedLOLines(Sender: TObject) : Boolean ;
    procedure SetShippingPlanStatus(const Status : Integer) ;
    procedure AddLoadNoToList(const LoadNo, LONo : Integer);
    procedure Generate_samLastDataForMarkedLoads(Sender: TObject);
    procedure Generate_AllLoads_samLastData(Sender: TObject);
    procedure SPEC_ALLA_LASTER_VERK(Sender: TObject);
    procedure SPEC_ALLA_LASTER_VERK_MARKERADE(Sender: TObject);
    procedure SPEC_ALLA_LASTER_MARKERADE(Sender: TObject);
    function  DataSaved : Boolean ;

  protected

    procedure LoadUserPreferences;
    procedure SaveUserPreferences;

  public
    { Public declarations }
//    destructor Destroy; override;
    Procedure CreateCo(Sender: TObject;CompanyNo: Integer);
  end;

var
  frmLoadOrder: TfrmLoadOrder;
  OriginalPos : String;

implementation

{$R *.dfm}

uses
  recerror,
  dmcVidaOrder,
  VidaConst,
  VidaType,
  VidaUser,
  VidaUtils, UnitCRViewReport,
  dmsVidaContact, dmcVidaSystem,
  dmsDataConn, uEntryField, dmLM1, uAOWizard, dmsVidaSystem;

function TfrmLoadOrder.DataSaved : Boolean ;
begin
 Result:= True ;
 if dmcOrder.cdsBooking.State = dsEdit then
  Result:= False ;
 if dmcOrder.cdsSawmillLoadOrders.State = dsEdit then
  Result:= False ;

 if dmcOrder.cdsSawmillLoadOrders.ChangeCount > 0 then
  Result:= False ;
 if dmcOrder.cdsBooking.ChangeCount > 0 then
  Result:= False ;
end;

Procedure TfrmLoadOrder.CreateCo(Sender: TObject;CompanyNo: Integer);
var
  Save_Cursor:TCursor;
  x : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 dmcOrder.Shipping:= 0 ;
 dmcOrder.cds_AOR_LO.Active:= True ;

 OrderTypeChanged:= True ;
 cbSupplier.Properties.OnChange:= Nil ;
 cbOrderType.Properties.OnChange:= NIL ;

 cbOrderType.ItemIndex:= 0 ;
 Try
  For x:= 0 to cbSupplier.Properties.Items.Count -1 do
  if ThisUser.CompanyNo = integer(cbSupplier.Properties.Items.Objects[x]) then
  Begin
   cbSupplier.ItemIndex:= x ;
   dmcOrder.SupplierNo:= integer(cbSupplier.Properties.Items.Objects[x]);
  End ;

  SupplierShipPlanObjectNo:= 0 ;
  dmcOrder.cdsBooking.Active    := True ;
  dmcOrder.cds_AOR_LO.Active  := True ;

 Finally
  cbSupplier.Properties.OnChange:= cbSupplierPropertiesCloseUp ;
  cbOrderType.Properties.OnChange:= cbOrderTypePropertiesChange ;
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmLoadOrder.atRefreshExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 LockWindowUpdate(grdLO.Handle);
 try
// SetMyBookMark(Sender) ;
// CheckIfChangesUnSaved(Sender) ;
 if cbShowAll.Checked then
  Begin
   dmcOrder.cdsSawmillLoadOrders.Active:= False ;
   BuildLOSQL(Sender) ;
   dmcOrder.cdsSawmillLoadOrders.Active:= True ;
//   RefreshLoadOrders(Sender);
  End
  else
  if dmcOrder.cdsSawmillLoadOrders.Active then
  RefreshLoadOrders(Sender);

// if ( OrderTypeChanged ) or ( SearchOneLO ) then
//   BuildLOSQL(Sender) ;
//  RefreshLoadOrders(Sender);
// GotoMyBookMark(Sender) ;
// dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger);
// SearchOneLO:= False ;
  finally
    LockWindowUpdate(0);
    Screen.Cursor := Save_Cursor ;
  end;
end;

procedure TfrmLoadOrder.atAcceptLoadOrderExecute(Sender: TObject);
begin
 GetSelectedLOLines(Sender);
 SetShippingPlanStatus(STATUS_ACCEPTED) ;
end;

procedure TfrmLoadOrder.atRejectLoadOrderExecute(Sender: TObject);
begin
 GetSelectedLOLines(Sender);
 SetShippingPlanStatus(STATUS_REJECTED) ;
end;

procedure TfrmLoadOrder.atCompletedLoadOrderExecute(Sender: TObject);
begin
 GetSelectedLOLines(Sender);
 SetShippingPlanStatus(STATUS_COMPLETE) ;
end;



{destructor TfrmLoadOrder.Destroy;
begin

end; }

procedure TfrmLoadOrder.CloseDataSet ;
Begin
With dmcOrder do
Begin
 if cdsSawmillLoadOrders.Active then cdsSawmillLoadOrders.Close ;
// if cdsCities.Active then cdsCities.Close ;
 if cdsLoadsForLO.Active then cdsLoadsForLO.Close ;
 if cdsBooking.Active then cdsBooking.Active:= False ;
 if cds_AOR_LO.Active then cds_AOR_LO.Active:= False ;
End ; //with
End ;


(*function TfrmLoadOrder.BackgroundColor(iStatus: integer) : TColor;
begin
  assert(iStatus in [STATUS_PRELIMINARY..STATUS_PRODUCTION_COMPLETE], 'Invalid Status');
  case iStatus of
{    STATUS_PRELIMINARY:  Result := ThisUser.clBackPreliminaryLO;
            STATUS_NEW:  Result := ThisUser.clBackNewLO;
       STATUS_REJECTED:  Result := ThisUser.clBackRejectedLO;
       STATUS_ACCEPTED:  Result := ThisUser.clBackAcceptedLO;
       STATUS_COMPLETE:  Result := ThisUser.clBackCompletedLO; }

    STATUS_PRELIMINARY:  Result := ThisUser.clBackPreliminaryLO;
            STATUS_NEW:  Result := $00BFFFFF;
       STATUS_REJECTED:  Result := $00B0AAFB;
       STATUS_ACCEPTED:  Result := $00EBFDEA;
       STATUS_COMPLETE:  Result := $00C6FDCB;
       STATUS_ONHOLD  :  Result := $00FFD8B0;
       STATUS_PRODUCTION_COMPLETE : Result :=  $00ECFFEC;
  else
    Result := clWindow
  end;
end;

  *)
procedure TfrmLoadOrder.LoadUserPreferences;
var
  iniUserStore: TIniFile;
  LoadNo : String ;
  x      : Integer ;
begin
//Hämtas centralt
 iniUserStore := TIniFile.Create(dmsConnector.DriveLetter+'VIS\KONFIG\VIS.INI');
 Try
  LODir:= iniUserStore.ReadString ('Setup', 'LODir', '');
  ExcelDir:= iniUserStore.ReadString ('Setup', 'ExcelDir', '');
  LastUsedLOTemplate:= iniUserStore.ReadString ('Setup', 'LastUsedLOTemplate', '');
  Panel2.Caption:= LastUsedLOTemplate ;

  cbLastOpenLoads.Properties.Items.Clear ;
  For x := 0 to 7 do
  Begin
   LoadNo:= iniUserStore.ReadString ('LastLoadNo', 'LoadNo'+IntToStr(x), ' ');
   cbLastOpenLoads.Properties.Items.Add(LoadNo) ;
  End ;

  if cbLastOpenLoads.Properties.Items.Count > 0 then
   cbLastOpenLoads.ItemIndex:= 0 ;


  grdLODBTableView1.RestoreFromIniFile(dmsConnector.InifilesMap+'VisLoadOrder'+'.'+ThisUser.UserName,False,False,[],'');
  grdFSDBTableView1.RestoreFromIniFile(dmsConnector.InifilesMap+'VisLoadOrder'+'.'+ThisUser.UserName,False,False,[],'');

  // Load position of horizontal split between the two grids.
  pnlBottomGrid.Height := ThisUser.fLoadOrderHSplit ;

  grdLODBTableView1Supplier.Visible:= False ;
  grdLODBTableView1OrderNo.Visible:= False ;
  grdLODBTableView1CustomerShowInGrid.Visible:= False ;
  grdLODBTableView1Delivery_WeekNo.Visible:= False ;
  grdLODBTableView1CSH_CustomerNo.Visible:= False ;
  grdLODBTableView1ShipToInvPointNo.Visible:= False ;
  grdLODBTableView1LoadingLocationNo.Visible:= False ;
  grdLODBTableView1CHCustomerNo.Visible:= False ;
  grdLODBTableView1SPCustomerNo.Visible:= False ;
  grdLODBTableView1ObjectType.Visible:= False ;
  grdLODBTableView1SupplierShipPlanObjectNo.Visible:= False ;
  grdLODBTableView1OrderType.Visible:= False ;



 Finally
  iniUserStore.Free ;
 End ;
end;

procedure TfrmLoadOrder.SaveUserPreferences;
var
  iniUserStore  : TIniFile;
  x             : Integer ;
begin
  // Save column widths so we can use same ones next time.
 grdLODBTableView1.StoreToIniFile(dmsConnector.InifilesMap+'VisLoadOrder'+'.'+ThisUser.UserName,False,[],'');
 grdFSDBTableView1.StoreToIniFile(dmsConnector.InifilesMap+'VisLoadOrder'+'.'+ThisUser.UserName,False,[],'');

 iniUserStore := TIniFile.Create(dmsConnector.DriveLetter+'VIS\KONFIG\VIS.INI' );
 Try
  iniUserStore.WriteString ('Setup', 'LastUsedLOTemplate', LastUsedLOTemplate) ;

  For x := 0 to 7 do
  Begin
   iniUserStore.WriteString ('LastLoadNo', 'LoadNo'+IntToStr(x),      cbLastOpenLoads.Properties.Items[x]) ;
  End ;

 Finally
  iniUserStore.Free ;
 End ;
end;

procedure TfrmLoadOrder.ProtectTheData;
//var   iCol: integer;
begin
  if ThisUser.CanModify[dcEditLoadOrder] = false then
  begin
   atAcceptLoadOrder.Enabled:= False ;
   atAcceptLoadOrder.Enabled:= False ;
   atRejectLoadOrder.Enabled:= False ;
   atCompletedLoadOrder.Enabled:= False ;
   atSetToONHOLD.Enabled:= False ;
   atSetToONHOLD.Enabled:= False ;
   atPreliminary.Enabled:= False ;
   acSetToNEW.Enabled:= False ;
   acConfirmCancel.Enabled:= False ;
   atProductionComplete.Enabled:= False ;
  End ;
end;


procedure TfrmLoadOrder.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  // If any threads are still running, make sure they don't try and call us when they
  // terminate - we won't be here any more.
  // It is OK to do this because the only reason we were interested in when they
  // finished was so this form could update its display, and as we are closing the
  // form we won't need to do that.

  CheckIfChangesUnSaved(Sender) ;
  SaveUserPreferences;
  CloseDataSet;
//  FreeAndNil(dmcOrder) ;//.free ;
  CanClose:= True ;


(*  if assigned(FLiveThreads) then
    while FLiveThreads.Count > 0 do begin
      TLO_OpThread(FLiveThreads[0]).OnTerminate := nil;
      FLiveThreads.Delete(0);
      end; *)
end;

procedure TfrmLoadOrder.FormCreate(Sender: TObject);

begin
//  dmcOrder:= TdmcOrder.Create(Nil);
  bcStatus.ItemIndex:= 1 ;
  Caption := 'Testing';
//  ExitOption:= 0 ;
  SearchOneLO:= False ;

  LoadUserPreferences;

  // Populate the combo box with names of suppliers from the database
  dmsContact.Load_Int_and_Lego(cbSupplier.Properties.Items) ;
  if cbSupplier.Properties.Items.Count > 0 then
   cbSupplier.ItemIndex:= 0 ;
//  dmcContact.LoadSuppliers(cbSupplier.Items);



  // Set the supplier to be the company with which this user is associated
  ProtectTheData;

  // Open the Customers data set ready for when we populate the grid
//  dmcContact.LoadCustomers;

  FStatusChanging := FALSE;

end;

procedure TfrmLoadOrder.atSetToONHOLDExecute(Sender: TObject);
begin
 GetSelectedLOLines(Sender);
 SetShippingPlanStatus(STATUS_ONHOLD) ;
end;

procedure TfrmLoadOrder.bPrintHyvelOrderClick(Sender: TObject);
var FormCRViewReport: TFormCRViewReport;
begin
 if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('HYVEL_ORDER.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;

end;

procedure TfrmLoadOrder.bPrintLOAllVerkClick(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger < 1 then exit ;


 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

  if (dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 1) and (dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2) then
  FormCRViewReport.CreateCo('Lastorder_inkop_NOTE.RPT') 
  else
 Begin
  if dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2 then
   FormCRViewReport.CreateCo('LASTORDER_NOTE.RPT') 
   else
   FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE.RPT') ;
 End ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(-1);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmLoadOrder.bPrintLODittVerkClick(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 if (dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 1) and (dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2) then
  FormCRViewReport.CreateCo('Lastorder_inkop_NOTE.RPT') 
 else
 Begin
  if dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2 then
   FormCRViewReport.CreateCo('LASTORDER_NOTE.RPT') 
   else
   FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE.RPT') ;
 End ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmLoadOrder.bAllaLasterPerLOClick(Sender: TObject);
begin
// Generate_AllLoads_samLastData(Sender);
//gammal rapport
 Generate_AllLoads_samLastData(Sender) ;
 SPEC_ALLA_LASTER_VERK(Sender);
end;

procedure TfrmLoadOrder.Generate_AllLoads_samLastData(Sender: TObject);
begin

end;

procedure TfrmLoadOrder.RefreshLoadOrders(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 LockWindowUpdate(grdFS.Handle);
  try
    if cbSupplier.ItemIndex = NO_SELECTION then
      Exit;

    try
      dmcOrder.SupplierNo := integer(cbSupplier.Properties.Items.Objects[cbSupplier.ItemIndex]);
      dmcOrder.RefrehLOs(dmcOrder.SupplierNo) ;

    except
      on EStringListError do begin
        // Nothing
        end;
    end;
    if dmcOrder.cdsLoadsForLO.Active then
    Begin
     atShowLO.Enabled     := grdFSDBTableView1.DataController.DataSet.RecordCount > 0;
//     acOpenLoad.Enabled     := grdFSDBTableView1.DataController.DataSet.RecordCount > 0;
     atDeleteLoad.Enabled := grdFSDBTableView1.DataController.DataSet.RecordCount > 0;
    End ;
    atNewLoad.Enabled    := grdLODBTableView1.DataController.DataSet.RecordCount > 0 ;
//    acNewLoadWithLO.Enabled := atNewLoad.Enabled ;
  finally
    LockWindowUpdate(0);
    Screen.Cursor := Save_Cursor ;
  end;

 dmcOrder.cdsBooking.Active:= False ;
 dmcOrder.cdsBooking.Active:= True ;
end;

procedure TfrmLoadOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree ;
end;

procedure TfrmLoadOrder.atProductionCompleteExecute(Sender: TObject);
begin
 GetSelectedLOLines(Sender);
 SetShippingPlanStatus(STATUS_PRODUCTION_COMPLETE) ;
end;

procedure TfrmLoadOrder.atPreliminaryExecute(Sender: TObject);
begin
 GetSelectedLOLines(Sender);
 SetShippingPlanStatus(STATUS_PRELIMINARY) ;
end;

procedure TfrmLoadOrder.BuildLOSQL(Sender: TObject);
//Local proc
Procedure AddFilter ;
Begin
 With dmcOrder do
 Begin

  Case bcStatus.ItemIndex of
  0 : Begin //ALLA
//       sp_SawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus <> 4 ' ) ;
      End ;
  1 : Begin //all except complete, ALLA UTOM KLAR OCH ANNULERING BEKRÄFTAD
       sp_SawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus <> 4 AND SP.ShippingPlanStatus <> 8' ) ;
      End ;

  2 : Begin //complete KLAR OCH ANNULERING BEKRÄFTAD
       sp_SawmillLoadOrders.SQL.Add('  AND (SP.ShippingPlanStatus = 4 OR SP.ShippingPlanStatus = 8)' ) ;
      End ;

  3 : Begin //NEW AND ANNULERAD
       sp_SawmillLoadOrders.SQL.Add('  AND (SP.ShippingPlanStatus = 1 OR SP.ShippingPlanStatus = 7) ' ) ;
      End ;
  4 : Begin //reject
       sp_SawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 2 ' ) ;
      End ;
  5 : Begin
       sp_SawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 3 ' ) ;
      End ;
  6 : Begin
       sp_SawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 5 ' ) ;
      End ;
  7 : Begin
       sp_SawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 6 ' ) ;
      End ;

  8 : Begin
       sp_SawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 0 ' ) ;
      End ;
  9 : Begin
       sp_SawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 7 ' ) ;
      End ;
 10 : Begin  //ANNULERING BEKRÄFTAD
       sp_SawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 8 ' ) ;
      End ;
  End ; //case
 End ;
End ;

begin
 CheckIfChangesUnSaved(Sender) ;

// icStatusChange(Sender) ;
 With dmcOrder do
 Begin
  sp_SawmillLoadOrders.SQL.Clear ;

  sp_SawmillLoadOrders.SQL.Add('SELECT distinct OL.OrderLineDescription AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
  sp_SawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod AS READYDATE,');
  sp_SawmillLoadOrders.SQL.Add('USR.INITIALS,');
    sp_SawmillLoadOrders.SQL.Add('SP.ShippingPlanStatus,                           ');
      sp_SawmillLoadOrders.SQL.Add('SP.ShippingPlanNo           AS LONumber,        ');
        sp_SawmillLoadOrders.SQL.Add('OL.PackageCode              AS PKGCode,       ');
    sp_SawmillLoadOrders.SQL.Add('SP.ProductDescription       AS Product,          -- Char 100');
      sp_SawmillLoadOrders.SQL.Add('SP.LengthDescription        AS Length,           -- Char 100');
      sp_SawmillLoadOrders.SQL.Add('IsNull(SP.StartETDYearWeek,-1)         AS FromWeek,         -- Integer');
      sp_SawmillLoadOrders.SQL.Add('IsNull(SP.EndETDYearWeek,-1)           AS ToWeek,           -- Integer');
      sp_SawmillLoadOrders.SQL.Add('SP.NoOfUnits                AS Volume,           -- Float');
      sp_SawmillLoadOrders.SQL.Add('SP.SupplierShipPlanObjectNo,                     -- Integer');
      sp_SawmillLoadOrders.SQL.Add('SP.ShowInGrid,                                   -- SmallInt');

      sp_SawmillLoadOrders.SQL.Add('Od.OrderNoText              AS OrderNo,          -- VarChar 20');
      sp_SawmillLoadOrders.SQL.Add('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
      sp_SawmillLoadOrders.SQL.Add('Cy.CityName                 AS Destination,      -- VarChar 50');
      sp_SawmillLoadOrders.SQL.Add('CL.ClientName               AS ClientName,       -- LARS VarChar 80');
      sp_SawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,') ;

      sp_SawmillLoadOrders.SQL.Add('CSD.Reference               AS Reference,       -- LARS');

      sp_SawmillLoadOrders.SQL.Add('SP.SupplierNo               AS Supplier,        -- Integer');


  sp_SawmillLoadOrders.SQL.Add('CH.CustomerNo               AS CHCustomerNo,    -- Integer');

   sp_SawmillLoadOrders.SQL.Add('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
     sp_SawmillLoadOrders.SQL.Add('SP.CustomerPrice,                               -- Float');
     sp_SawmillLoadOrders.SQL.Add('SP.CustomerShowInGrid,                           -- SmallInt');

     sp_SawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
     sp_SawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
     sp_SawmillLoadOrders.SQL.Add('SP.ObjectType,                                  -- Integer');
     sp_SawmillLoadOrders.SQL.Add('CASE WHEN OD.OrderType = 1 then 1	ELSE 0	END AS ORDERTYPE,');
     sp_SawmillLoadOrders.SQL.Add('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
     sp_SawmillLoadOrders.SQL.Add('Loading.CityName                 AS LOADING,');
     sp_SawmillLoadOrders.SQL.Add('IsNull(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,              ');
     sp_SawmillLoadOrders.SQL.Add('CH.CustomerNo AS CSH_CustomerNo, SP.ShipToInvPointNo,SP.LoadingLocationNo,');
     sp_SawmillLoadOrders.SQL.Add('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
     sp_SawmillLoadOrders.SQL.Add('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,') ;
     sp_SawmillLoadOrders.SQL.Add('SP.PkgCodePPNo, SP.VolumeUnitNo') ;



  sp_SawmillLoadOrders.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL');
  if cbOrderType.ItemIndex = 0 then
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo')
  else
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo') ;

  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo') ;
  sp_SawmillLoadOrders.SQL.Add('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser') ;

  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SP.OrderNo');
  sp_SawmillLoadOrders.SQL.Add('AND OL.OrderLineNo = SP.OrderLineNo');

  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.Orders                     Od   ON  SP.OrderNo                 = Od.OrderNo');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH   ON  SP.ShippingPlanNo          = CH.ShippingPlanNo      -- LARS');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.Client                     CL   ON  CH.CustomerNo              = CL.ClientNo            -- LARS');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo') ;
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CustomerShippingPlanDetails CSD   ON  SP.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailObjectNo      -- LARS');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN ShippingPlan_ShippingAddress ST');
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.Address 		             ST_ADR     ON ST_ADR.AddressNo	     = ST.AddressNo');
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.CITY                     CY         ON CY.CityNo 	           = ST_ADR.CityNo');
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.Country		               ST_AdrCtry	ON ST_AdrCtry.CountryNo  = ST_ADR.CountryNo');
    sp_SawmillLoadOrders.SQL.Add('ON	ST.ShippingPlanNo	   = CSD.ShippingPlanNo');
      sp_SawmillLoadOrders.SQL.Add('AND	ST.Reference		     = CSD.Reference');
sp_SawmillLoadOrders.SQL.Add('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo') ;

  sp_SawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS') ;
  sp_SawmillLoadOrders.SQL.Add('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID') ;
  sp_SawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo') ;


  sp_SawmillLoadOrders.SQL.Add('WHERE  CLL.ClientNo          =  '+IntToStr(integer(cbSupplier.Properties.Items.Objects[cbSupplier.ItemIndex])));
  sp_SawmillLoadOrders.SQL.Add('AND CH.ShippingPlanStatus <> 3') ;
  sp_SawmillLoadOrders.SQL.Add('AND SP.ShippingPlanStatus <> 0');
  sp_SawmillLoadOrders.SQL.Add('AND SP.ObjectType = 2');
  if cbOrderType.ItemIndex = 0 then
  sp_SawmillLoadOrders.SQL.Add('AND OD.OrderType = 0')
  else
  sp_SawmillLoadOrders.SQL.Add('AND OD.OrderType = 1') ;
  AddFilter ;


  sp_SawmillLoadOrders.SQL.Add('UNION');

  sp_SawmillLoadOrders.SQL.Add('SELECT distinct '+QuotedStr('NA')+' AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
  sp_SawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod AS READYDATE,');


  sp_SawmillLoadOrders.SQL.Add('USR.INITIALS,');
    sp_SawmillLoadOrders.SQL.Add('SP.ShippingPlanStatus,                           -- Integer');
      sp_SawmillLoadOrders.SQL.Add('SP.ShippingPlanNo           AS LONumber,         -- Integer');
        sp_SawmillLoadOrders.SQL.Add('SP.PackageCode              AS PKGCode,          -- Char 10');
    sp_SawmillLoadOrders.SQL.Add('SP.ProductDescription       AS Product,          -- Char 100');
      sp_SawmillLoadOrders.SQL.Add('SP.LengthDescription        AS Length,           -- Char 100');
      sp_SawmillLoadOrders.SQL.Add('IsNull(SP.StartETDYearWeek,-1)         AS FromWeek,         -- Integer');
      sp_SawmillLoadOrders.SQL.Add('IsNull(SP.EndETDYearWeek,-1)           AS ToWeek,           -- Integer');
      sp_SawmillLoadOrders.SQL.Add('SP.NoOfUnits                AS Volume,           -- Float');
      sp_SawmillLoadOrders.SQL.Add('SP.SupplierShipPlanObjectNo,                     -- Integer');
      sp_SawmillLoadOrders.SQL.Add('SP.ShowInGrid,                                   -- SmallInt');

      sp_SawmillLoadOrders.SQL.Add('''''           AS OrderNo,          -- VarChar 20');
      sp_SawmillLoadOrders.SQL.Add('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
      sp_SawmillLoadOrders.SQL.Add('''''              AS Destination,      -- VarChar 50');

      sp_SawmillLoadOrders.SQL.Add('CL.ClientName               AS ClientName,');
      sp_SawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,') ;
      sp_SawmillLoadOrders.SQL.Add('''''              AS Reference,       -- LARS');
      sp_SawmillLoadOrders.SQL.Add('SP.SupplierNo               AS Supplier,        -- Integer');


     sp_SawmillLoadOrders.SQL.Add('CH.CustomerNo               AS CHCustomerNo,');

   sp_SawmillLoadOrders.SQL.Add('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
     sp_SawmillLoadOrders.SQL.Add('SP.CustomerPrice,                               -- Float');
     sp_SawmillLoadOrders.SQL.Add('SP.CustomerShowInGrid,                           -- SmallInt');

     sp_SawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
     sp_SawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
//     sp_SawmillLoadOrders.SQL.Add('SC.ClientName                           AS SHIPPER,');
     sp_SawmillLoadOrders.SQL.Add('SP.ObjectType,                                  -- Integer');
     if cbOrderType.ItemIndex = 0 then
     sp_SawmillLoadOrders.SQL.Add('0 AS ORDERTYPE,')
     else
     sp_SawmillLoadOrders.SQL.Add('1 AS ORDERTYPE,');
     sp_SawmillLoadOrders.SQL.Add('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
     sp_SawmillLoadOrders.SQL.Add('Loading.CityName                 AS LOADING,');
     sp_SawmillLoadOrders.SQL.Add('ISNULL(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,');
     sp_SawmillLoadOrders.SQL.Add('-1 AS CSH_CustomerNo, SP.ShipToInvPointNo,SP.LoadingLocationNo,');
     sp_SawmillLoadOrders.SQL.Add('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
     sp_SawmillLoadOrders.SQL.Add('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,') ;
     sp_SawmillLoadOrders.SQL.Add('SP.PkgCodePPNo, SP.VolumeUnitNo') ;


  sp_SawmillLoadOrders.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL');
  if cbOrderType.ItemIndex = 0 then
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo')
  else
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo') ;
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo') ;
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH') ;
  sp_SawmillLoadOrders.SQL.Add('Inner JOIN dbo.Client                     CL   ON  CL.ClientNo = CH.CustomerNo') ;
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo') ;
  sp_SawmillLoadOrders.SQL.Add('ON  CH.ShippingPlanNo          = SP.LO_No') ;
  sp_SawmillLoadOrders.SQL.Add('  AND CH.ShippingPlanStatus <> 3') ;


  sp_SawmillLoadOrders.SQL.Add('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser') ;

  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');



  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');

  sp_SawmillLoadOrders.SQL.Add('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo') ;

  sp_SawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS') ;
  sp_SawmillLoadOrders.SQL.Add('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID') ;
  sp_SawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo') ;

  sp_SawmillLoadOrders.SQL.Add('WHERE  CLL.ClientNo          =  '+IntToStr(integer(cbSupplier.Properties.Items.Objects[cbSupplier.ItemIndex])));
//  sp_SawmillLoadOrders.SQL.Add('AND CH.ShippingPlanStatus <> 3') ;
  sp_SawmillLoadOrders.SQL.Add('AND SP.ShippingPlanStatus <> 0');
  sp_SawmillLoadOrders.SQL.Add('AND SP.ObjectType < 2');
//sp_SawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus <> 4 ' ) ;
  AddFilter ;
//  sp_SawmillLoadOrders.Prepared:= True ;

 if ThisUser.UserID = 8 then
  sp_SawmillLoadOrders.SQL.SaveToFile('sp_SawmillLoadOrders.txt');
  OrderTypeChanged := False ;
 End ;
end;

procedure TfrmLoadOrder.grdLO1ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
 if grdFSDBTableView1.DataController.DataSet.RecordCount > 0 then
 Begin
  atShowLO.Enabled     := True ;
  acOpenLoad.Enabled   := True ;
  atDeleteLoad.Enabled := True ;
  atNewLoad.Enabled    := True ;
 End ;
end;

procedure TfrmLoadOrder.CheckIfChangesUnSaved(Sender:TObject) ;
Begin
 if dmcOrder.cdsBooking.State = dsEdit then
  dmcOrder.cdsBooking.Post ;
 if dmcOrder.cdsSawmillLoadOrders.State = dsEdit then
  dmcOrder.cdsSawmillLoadOrders.Post ;

 if (dmcOrder.cdsSawmillLoadOrders.ChangeCount > 0) OR (dmcOrder.cdsBooking.ChangeCount > 0) then
 if MessageDlg('Vill du spara ändringar?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   acSaveChangesExecute(Sender)
    else
     acCancelChangesExecute(Sender) ;
End ;

procedure TfrmLoadOrder.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//Var ShippingPlanNo : Integer ;
begin
 if Key <> VK_RETURN then Exit;
 With dmcOrder do
 Begin
  dmcOrder.cdsSawmillLoadOrders.IndexName:= 'cdsSawmillLoadOrdersLONo' ;
  Try
   GetOneLO(Sender) ;
   Timer1.Enabled:= True ;
   Edit1.Text:= '' ;
  Finally
   dmcOrder.cdsSawmillLoadOrders.IndexName:= 'indexSupplierShipPlanObjectNo' ;
  End ;
 End ; //with
end;

procedure TfrmLoadOrder.SetMyBookmark(Sender: TObject) ;
begin
 SupplierShipPlanObjectNo := dmcOrder.cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger ;
end;

procedure TfrmLoadOrder.GotoMyBookmark(Sender: TObject) ;
begin
  if SupplierShipPlanObjectNo > 0 then
  Begin

    dmcOrder.cdsSawmillLoadOrders.IndexName:= 'indexSupplierShipPlanObjectNo' ;
      try

        if dmcOrder.cdsSawmillLoadOrders.FindKey([SupplierShipPlanObjectNo]) then
        Begin
        End ;

    finally
    end;
  End ; //if
end;


procedure TfrmLoadOrder.acSetToNEWExecute(Sender: TObject);
begin
 GetSelectedLOLines(Sender);
 SetShippingPlanStatus(STATUS_NEW) ;
end;

procedure TfrmLoadOrder.bbAvropVerkClick(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 if cbOrderType.ItemIndex = 0 then
 FormCRViewReport.CreateCo('SOKAVROP_VERK_DIM.RPT') 
 else
  FormCRViewReport.CreateCo('SOKAVROP_VERK_DIM_PO.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmcOrder.SupplierNo) ;
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ; 
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmLoadOrder.GetOneLO(Sender: TObject);
Var ShippingPlanNo : Integer ;
begin
 if StrToIntDef(Trim(Edit1.Text),0) > 0 then
  BuildGetOne_LO_SQL (Sender)
  else
  Exit ;

 dmcOrder.cdsSawmillLoadOrders.Active:= False ;
 CheckIfChangesUnSaved(Sender) ;
 RefreshLoadOrders(Sender);
 if (dmcOrder.cdsSawmillLoadOrders.Active) and (dmcOrder.cdsSawmillLoadOrders.RecordCount = 0) then
  Begin
//   RefreshLoadOrders(Sender);
   ShippingPlanNo:= dmcOrder.Does_SearchedLONo_Have_ALO_Connected (integer(cbSupplier.Properties.Items.Objects[cbSupplier.ItemIndex]), StrToIntDef(Trim(Edit1.Text),0) ) ;
   if ShippingPlanNo > 1 then
   if MessageDlg('Hittade inte LONr '+Trim(Edit1.Text)+', det finns däremot en add LO nr '+IntToStr(ShippingPlanNo)+' kopplad till den, vill du visa den?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
     Edit1.Text:= IntToStr(ShippingPlanNo) ;
     dmcOrder.cdsSawmillLoadOrders.Active:= False ;
     BuildGetOne_LO_SQL (Sender) ;
     RefreshLoadOrders(Sender);
    End ;
   dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger);
  End ;

 SearchOneLO:= True ;
// GotoMyBookMark(Sender) ;
// dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger);
 Edit1.Text:= '' ;
 Edit1.SetFocus ;
end;


procedure TfrmLoadOrder.BuildGetOne_LO_SQL(Sender: TObject);
begin
 CheckIfChangesUnSaved(Sender) ;

// icStatusChange(Sender) ;
 With dmcOrder do
 Begin
  sp_SawmillLoadOrders.SQL.Clear ;

  sp_SawmillLoadOrders.SQL.Add('SELECT distinct OL.OrderLineDescription AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
  sp_SawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod AS READYDATE,');

  sp_SawmillLoadOrders.SQL.Add('USR.INITIALS,');
    sp_SawmillLoadOrders.SQL.Add('SP.ShippingPlanStatus,                           -- Integer');
      sp_SawmillLoadOrders.SQL.Add('SP.ShippingPlanNo           AS LONumber,         -- Integer');
        sp_SawmillLoadOrders.SQL.Add('OL.PackageCode              AS PKGCode,          -- Char 10');
    sp_SawmillLoadOrders.SQL.Add('SP.ProductDescription       AS Product,          -- Char 100');
      sp_SawmillLoadOrders.SQL.Add('SP.LengthDescription        AS Length,           -- Char 100');
      sp_SawmillLoadOrders.SQL.Add('IsNull(SP.StartETDYearWeek,-1)         AS FromWeek,         -- Integer');
      sp_SawmillLoadOrders.SQL.Add('IsNull(SP.EndETDYearWeek,-1)           AS ToWeek,           -- Integer');
      sp_SawmillLoadOrders.SQL.Add('SP.NoOfUnits                AS Volume,           -- Float');
      sp_SawmillLoadOrders.SQL.Add('SP.SupplierShipPlanObjectNo,                     -- Integer');
      sp_SawmillLoadOrders.SQL.Add('SP.ShowInGrid,                                   -- SmallInt');

      sp_SawmillLoadOrders.SQL.Add('Od.OrderNoText              AS OrderNo,          -- VarChar 20');
      sp_SawmillLoadOrders.SQL.Add('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
      sp_SawmillLoadOrders.SQL.Add('Cy.CityName                 AS Destination,      -- VarChar 50');
      sp_SawmillLoadOrders.SQL.Add('CL.ClientName               AS ClientName,       -- LARS VarChar 80');
      sp_SawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,') ;

      sp_SawmillLoadOrders.SQL.Add('CSD.Reference               AS Reference,       -- LARS');
      sp_SawmillLoadOrders.SQL.Add('SP.SupplierNo               AS Supplier,        -- Integer');


     sp_SawmillLoadOrders.SQL.Add('CH.CustomerNo               AS CHCustomerNo,    -- Integer');

     sp_SawmillLoadOrders.SQL.Add('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
     sp_SawmillLoadOrders.SQL.Add('SP.CustomerPrice,                               -- Float');
     sp_SawmillLoadOrders.SQL.Add('SP.CustomerShowInGrid,                           -- SmallInt');

     sp_SawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
     sp_SawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
     sp_SawmillLoadOrders.SQL.Add('SP.ObjectType,                                  -- Integer');
     sp_SawmillLoadOrders.SQL.Add('CASE WHEN OD.OrderType = 1 then 1	ELSE 0	END AS ORDERTYPE,');
     sp_SawmillLoadOrders.SQL.Add('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
     sp_SawmillLoadOrders.SQL.Add('Loading.CityName                 AS LOADING,');
     sp_SawmillLoadOrders.SQL.Add('IsNull(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,              ');
     sp_SawmillLoadOrders.SQL.Add('CH.CustomerNo AS CSH_CustomerNo, SP.ShipToInvPointNo,SP.LoadingLocationNo,');
     sp_SawmillLoadOrders.SQL.Add('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
     sp_SawmillLoadOrders.SQL.Add('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,') ;
     sp_SawmillLoadOrders.SQL.Add('SP.PkgCodePPNo, SP.VolumeUnitNo') ;



  sp_SawmillLoadOrders.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL');
  if cbOrderType.ItemIndex = 0 then
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo')
  else
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo') ;

  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo') ;
  sp_SawmillLoadOrders.SQL.Add('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser') ;

  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SP.OrderNo');
  sp_SawmillLoadOrders.SQL.Add('AND OL.OrderLineNo = SP.OrderLineNo');

  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.Orders                     Od   ON  SP.OrderNo                 = Od.OrderNo');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH   ON  SP.ShippingPlanNo          = CH.ShippingPlanNo      -- LARS');

  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.Client                     CL   ON  CH.CustomerNo              = CL.ClientNo            -- LARS');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo') ;
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CustomerShippingPlanDetails CSD   ON  SP.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailObjectNo      -- LARS');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN ShippingPlan_ShippingAddress ST');
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.Address 		             ST_ADR     ON ST_ADR.AddressNo	     = ST.AddressNo');
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.CITY                     CY         ON CY.CityNo 	           = ST_ADR.CityNo');
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.Country		               ST_AdrCtry	ON ST_AdrCtry.CountryNo  = ST_ADR.CountryNo');
    sp_SawmillLoadOrders.SQL.Add('ON	ST.ShippingPlanNo	   = CSD.ShippingPlanNo');
      sp_SawmillLoadOrders.SQL.Add('AND	ST.Reference		     = CSD.Reference');

sp_SawmillLoadOrders.SQL.Add('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo') ;
  sp_SawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS') ;
  sp_SawmillLoadOrders.SQL.Add('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID') ;
  sp_SawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo') ;


 sp_SawmillLoadOrders.SQL.Add('WHERE  SP.ShippingPlanNo = '+Edit1.Text);
 sp_SawmillLoadOrders.SQL.Add('AND CLL.ClientNo          =  '+IntToStr(integer(cbSupplier.Properties.Items.Objects[cbSupplier.ItemIndex])));
 sp_SawmillLoadOrders.SQL.Add('AND SP.ShippingPlanStatus <> 0');
 sp_SawmillLoadOrders.SQL.Add('AND CH.ShippingPlanStatus <> 3');
 sp_SawmillLoadOrders.SQL.Add('AND SP.ObjectType = 2');
  if cbOrderType.ItemIndex = 0 then
  sp_SawmillLoadOrders.SQL.Add('AND OD.OrderType = 0')
  else
  sp_SawmillLoadOrders.SQL.Add('AND OD.OrderType = 1') ;

sp_SawmillLoadOrders.SQL.Add('UNION');
  sp_SawmillLoadOrders.SQL.Add('SELECT distinct '+QuotedStr('NA')+' AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
  sp_SawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod AS READYDATE,');

  sp_SawmillLoadOrders.SQL.Add('USR.INITIALS,');
    sp_SawmillLoadOrders.SQL.Add('SP.ShippingPlanStatus,                           -- Integer');
      sp_SawmillLoadOrders.SQL.Add('SP.ShippingPlanNo           AS LONumber,         -- Integer');
        sp_SawmillLoadOrders.SQL.Add('SP.PackageCode              AS PKGCode,          -- Char 10');
    sp_SawmillLoadOrders.SQL.Add('SP.ProductDescription       AS Product,          -- Char 100');
      sp_SawmillLoadOrders.SQL.Add('SP.LengthDescription        AS Length,           -- Char 100');
      sp_SawmillLoadOrders.SQL.Add('IsNull(SP.StartETDYearWeek,-1)         AS FromWeek,         -- Integer');
      sp_SawmillLoadOrders.SQL.Add('IsNull(SP.EndETDYearWeek,-1)           AS ToWeek,           -- Integer');
      sp_SawmillLoadOrders.SQL.Add('SP.NoOfUnits                AS Volume,           -- Float');
      sp_SawmillLoadOrders.SQL.Add('SP.SupplierShipPlanObjectNo,                     -- Integer');
      sp_SawmillLoadOrders.SQL.Add('SP.ShowInGrid,                                   -- SmallInt');

      sp_SawmillLoadOrders.SQL.Add('''''           AS OrderNo,          -- VarChar 20');
      sp_SawmillLoadOrders.SQL.Add('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
      sp_SawmillLoadOrders.SQL.Add('''''              AS Destination,      -- VarChar 50');

//      sp_SawmillLoadOrders.SQL.Add('''''               AS ClientName,       -- LARS VarChar 80');
      sp_SawmillLoadOrders.SQL.Add('CL.ClientName               AS ClientName,');
      sp_SawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,') ;

      sp_SawmillLoadOrders.SQL.Add('''''              AS Reference,       -- LARS');
      sp_SawmillLoadOrders.SQL.Add('SP.SupplierNo               AS Supplier,        -- Integer');

  sp_SawmillLoadOrders.SQL.Add('CH.CustomerNo               AS CHCustomerNo,');
//  sp_SawmillLoadOrders.SQL.Add('-1              AS CHCustomerNo,');

   sp_SawmillLoadOrders.SQL.Add('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
     sp_SawmillLoadOrders.SQL.Add('SP.CustomerPrice,                               -- Float');
     sp_SawmillLoadOrders.SQL.Add('SP.CustomerShowInGrid,                           -- SmallInt');

     sp_SawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
     sp_SawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
//     sp_SawmillLoadOrders.SQL.Add('SC.ClientName                           AS SHIPPER,');
     sp_SawmillLoadOrders.SQL.Add('SP.ObjectType,                                  -- Integer');
     if cbOrderType.ItemIndex = 0 then
     sp_SawmillLoadOrders.SQL.Add('0 AS ORDERTYPE,')
     else
     sp_SawmillLoadOrders.SQL.Add('1 AS ORDERTYPE,');
     sp_SawmillLoadOrders.SQL.Add('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
     sp_SawmillLoadOrders.SQL.Add('Loading.CityName                 AS LOADING,');
     sp_SawmillLoadOrders.SQL.Add('ISNULL(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,');
     sp_SawmillLoadOrders.SQL.Add('-1 AS CSH_CustomerNo, SP.ShipToInvPointNo, SP.LoadingLocationNo,');
     sp_SawmillLoadOrders.SQL.Add('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
     sp_SawmillLoadOrders.SQL.Add('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,') ;
     sp_SawmillLoadOrders.SQL.Add('SP.PkgCodePPNo, SP.VolumeUnitNo') ;


  sp_SawmillLoadOrders.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL');
  if cbOrderType.ItemIndex = 0 then
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo')
  else
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo') ;
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo') ;

  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH') ;
  sp_SawmillLoadOrders.SQL.Add('Inner JOIN dbo.Client                     CL   ON  CL.ClientNo = CH.CustomerNo') ;
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo') ;
  sp_SawmillLoadOrders.SQL.Add('ON  CH.ShippingPlanNo          = SP.LO_No') ;
  sp_SawmillLoadOrders.SQL.Add('  AND CH.ShippingPlanStatus <> 3') ;
  
  sp_SawmillLoadOrders.SQL.Add('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser') ;

  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
  sp_SawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');



  sp_SawmillLoadOrders.SQL.Add('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');

  sp_SawmillLoadOrders.SQL.Add('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo') ;
  sp_SawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS') ;
  sp_SawmillLoadOrders.SQL.Add('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID') ;
  sp_SawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo') ;

  sp_SawmillLoadOrders.SQL.Add('WHERE  SP.ShippingPlanNo = '+Edit1.Text);
  sp_SawmillLoadOrders.SQL.Add('AND  CLL.ClientNo          =  '+IntToStr(integer(cbSupplier.Properties.Items.Objects[cbSupplier.ItemIndex])));
//  sp_SawmillLoadOrders.SQL.Add('AND SP.ShippingPlanStatus <> 0');
  sp_SawmillLoadOrders.SQL.Add('AND SP.ObjectType < 2');


 if ThisUser.UserID = 8 then
  sp_SawmillLoadOrders.SQL.SaveToFile('sp_SawmillLoadOrders.txt');
  OrderTypeChanged := False ;
 End ;
end;

procedure TfrmLoadOrder.dxDBEdit2Exit(Sender: TObject);
begin
(* With dmcOrder do
 Begin
  SetMyBookmark(Sender) ;
//  cdsSawmillLoadOrders.DisableControls ;
  dmcOrder.cdsSawmillLoadOrders.Filter:= 'LONumber = '+dmcOrder.cdsSawmillLoadOrdersLONumber.AsString ;
  dmcOrder.cdsSawmillLoadOrders.Filtered:= True ;
  IsolateLoads;
  Try
  dmcOrder.cdsSawmillLoadOrders.First ;
  While not dmcOrder.cdsSawmillLoadOrders.Eof do
  Begin
   if dmcOrder.cdsSawmillLoadOrders.State in [dsBrowse] then
    dmcOrder.cdsSawmillLoadOrders.Edit ;
   dmcOrder.cdsSawmillLoadOrdersReadyDate.AsString:= dxDBEdit2.Text ;
   dmcOrder.cdsSawmillLoadOrders.Post ;
   dmcOrder.cdsSawmillLoadOrders.Next ;
  End ;
  Finally
   dmcOrder.cdsSawmillLoadOrders.Filtered:= False ;
   GotoMyBookmark(Sender) ;
//   cdsSawmillLoadOrders.EnableControls ;
   ReConnectLoads;
  End ;
 End ; *)
end;

procedure TfrmLoadOrder.Visagrupperingsrutan1Click(Sender: TObject);
begin
{ if grdLO1.ShowGroupPanel = False then
   grdLO1.ShowGroupPanel:= True
    else
     grdLO1.ShowGroupPanel:= False ; }
end;

procedure TfrmLoadOrder.bbTallyVer2Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType').AsInteger <> 2 then
  FormCRViewReport.CreateCo('TALLY_INTERNAL_VER2_NOTE.RPT') 
  else
  Begin
   dmcSystem.sq_PkgType_Invoice.ParamByName('LoadNo').AsInteger:= grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger ;
   dmcSystem.sq_PkgType_Invoice.ExecSQL(False) ;
   if dmsContact.Client_Language(dmcOrder.cdsSawmillLoadOrdersCSH_CustomerNo.AsInteger) = cSwedish then
   FormCRViewReport.CreateCo('TALLY_VER2_NOTE.RPT')
   else
   FormCRViewReport.CreateCo('TALLY_eng_VER2_NOTE.RPT') ;

  End ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  dmcSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger ;
  dmcSystem.sq_DelPkgType.ExecSQL(False) ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmLoadOrder.bbTally_USAClick(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType').AsInteger <> 2 then
  FormCRViewReport.CreateCo('TALLY_INT_USA.RPT')
  else
  Begin
   dmcSystem.sq_PkgType_Invoice.ParamByName('LoadNo').AsInteger:= grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger ;
   dmcSystem.sq_PkgType_Invoice.ExecSQL(False) ;
   FormCRViewReport.CreateCo('TALLY_US_NOTE.RPT') ;
  End ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  dmcSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger ;
  dmcSystem.sq_DelPkgType.ExecSQL(False) ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmLoadOrder.PrintSamlingsspecifikation(Sender: TObject;const SamLastNr : Integer);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmcOrder.cdsLoadsForLOLoadNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SAM_LAST.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(SamLastNr) ;
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmLoadOrder.PrintSamlingsspecifikationMedPktNr(Sender: TObject;const SamLastNr : Integer);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmcOrder.cdsLoadsForLOLoadNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SAM_LAST_PKTNR.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(SamLastNr) ;
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmLoadOrder.bbAvrakningSpecVer2Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType').AsInteger <> 2 then
  FormCRViewReport.CreateCo('AVR_SPEC_TALLY_INTERNAL_VER2.RPT')
  else
  Begin
   dmcSystem.sq_PkgType_Invoice.ParamByName('LoadNo').AsInteger:= grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger ;
   dmcSystem.sq_PkgType_Invoice.ExecSQL(False) ;

   FormCRViewReport.CreateCo('AVR_SPEC_TALLY_VER2.RPT')
  End ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  dmcSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger ;
  dmcSystem.sq_DelPkgType.ExecSQL(False) ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmLoadOrder.acSamlingFSExecute(Sender: TObject);
begin
 GenerateSamlingFS_2(Sender) ;
end;

procedure TfrmLoadOrder.GenerateSamlingFS_2(Sender: TObject);
begin

end;

function TfrmLoadOrder.GetSelectedLOLines(Sender: TObject) : Boolean ;
 Var
 NoOfUnits    : Double ;
 ProducerNo,
 VolumeUnitNo,
 PkgCodePPNo,
 i,
 RecIDX,
 ColIdx       : Integer ;
 RecID        : Variant ;
 ADATASET     : TDATASET;
 Save_Cursor  : TCursor;
begin
 Result         := False ;
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 lbLO_To_Invoice.Items.Clear ;
 with dmcOrder, dmsSystem  do
 Begin
  mtMarkedCodes.Active:= False ;
  mtMarkedCodes.Active:= True ;
  grdLODBTableView1.BeginUpdate ;
  grdLODBTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdLODBTableView1.DataController.DataSource.DataSet ;
//   BKMSafe := ADataSet.Bookmark ;
   For I := 0 to grdLODBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdLODBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdLODBTableView1.DataController.GetRecordId(RecIdx) ;
    lbLO_To_Invoice.Items.Add(IntToStr(RecID)) ;


    ColIdx        := grdLODBTableView1.DataController.GetItemByFieldName('PkgCodePPNo').Index;
    if grdLODBTableView1.DataController.Values[RecIdx, ColIdx] <> null then
    PkgCodePPNo   := grdLODBTableView1.DataController.Values[RecIdx, ColIdx]
    else
    Begin
     ShowMessage('Variantnr saknas..') ;
     Exit ;
    End ;

    ColIdx        := grdLODBTableView1.DataController.GetItemByFieldName('Volume').Index;
    if grdLODBTableView1.DataController.Values[RecIdx, ColIdx] <> null then
    NoOfUnits     := grdLODBTableView1.DataController.Values[RecIdx, ColIdx]
    else
    NoOfUnits     := 0 ;

    ColIdx        := grdLODBTableView1.DataController.GetItemByFieldName('VolumeUnitNo').Index;
    if grdLODBTableView1.DataController.Values[RecIdx, ColIdx] <> null then
    VolumeUnitNo  := grdLODBTableView1.DataController.Values[RecIdx, ColIdx]
    else
    Begin
     ShowMessage('Volymenhet saknas..') ;
     Exit ;
    End ;


    ColIdx        := grdLODBTableView1.DataController.GetItemByFieldName('Supplier').Index;
    if grdLODBTableView1.DataController.Values[RecIdx, ColIdx] <> null then
    ProducerNo    := grdLODBTableView1.DataController.Values[RecIdx, ColIdx]
    else
    Begin
     ShowMessage('Verk saknas..') ;
     Exit ;
    End ;

    mtMarkedCodes.Insert ;
    mtMarkedCodessspNo.AsInteger        := RecID ;//sspNo
    mtMarkedCodesNoOfUnits.AsFloat      := NoOfUnits ;
    mtMarkedCodesVolUnitNo.AsInteger    := VolumeUnitNo ;
    mtMarkedCodesPkgCodePPNo.AsInteger  := PkgCodePPNo ;
    mtMarkedCodesMainProduct.AsInteger  := 1 ;
    mtMarkedCodesProducerNo.AsInteger   := ProducerNo ;
    mtMarkedCodes.Post ;

{    ADataSet.Edit ;
    ADataSet.FieldByName('ShippingPlanStatus').AsInteger:= Status ;
    ADataSet.Post ; }

//    GetSelectedLOLines (RecID, Status) ;

{    if dmcOrder.cdsSawmillLoadOrders.FindKey([RecID]) then
    Begin
     dmcOrder.cdsSawmillLoadOrders.Edit ;
     dmcOrder.cdsSawmillLoadOrdersShippingPlanStatus.AsInteger:= Status ;
     dmcOrder.cdsSawmillLoadOrders.Post ;
    End ; }
   End ;
  Result:= mtMarkedCodes.RecordCount > 0 ;

//  if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
//   ADataSet.Bookmark:= BkmSafe ;

 Finally
  grdLODBTableView1.DataController.EndLocate ;
  grdLODBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

// SetShippingPlanStatus(Status) ;
//   atRefreshExecute(Sender) ;

 End ;//with
end;


procedure TfrmLoadOrder.SetShippingPlanStatus(const Status : Integer) ;
Var x           : Integer ;
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 dmcOrder.cdsSawmillLoadOrders.DisableControls ;
 Try
 For x :=  0 to lbLO_To_Invoice.Items.Count - 1 do
 Begin
    if dmcOrder.cdsSawmillLoadOrders.FindKey([lbLO_To_Invoice.Items[x]]) then
    Begin
     dmcOrder.cdsSawmillLoadOrders.Edit ;
     dmcOrder.cdsSawmillLoadOrdersShippingPlanStatus.AsInteger:= Status ;
     dmcOrder.cdsSawmillLoadOrders.Post ;
    End ;
 End ;
 Finally
  dmcOrder.cdsSawmillLoadOrders.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmLoadOrder.Button2Click(Sender: TObject);
begin
 GetSelectedLOLines(Sender);
 SetShippingPlanStatus(STATUS_ACCEPTED) ;
end;

procedure TfrmLoadOrder.Button3Click(Sender: TObject);
begin
 GetSelectedLOLines(Sender);
 SetShippingPlanStatus(STATUS_NEW) ;
end;

procedure TfrmLoadOrder.acChangeLOLayoutExecute(Sender: TObject);
begin
  if grdLO.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLO.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;

end;

procedure TfrmLoadOrder.acSaveChangesExecute(Sender: TObject);
begin
 if dmcOrder.cdsBooking.State = dsEdit then
  dmcOrder.cdsBooking.Post ;
 if dmcOrder.cdsSawmillLoadOrders.State = dsEdit then
  dmcOrder.cdsSawmillLoadOrders.Post ;

  if dmcOrder.cdsSawmillLoadOrders.ChangeCount > 0 then
   dmcOrder.cdsSawmillLoadOrders.ApplyUpdates(0)  ;
  if dmcOrder.cdsBooking.ChangeCount > 0 then
   dmcOrder.cdsBooking.ApplyUpdates(0) ;
end;

procedure TfrmLoadOrder.acCancelChangesExecute(Sender: TObject);
begin
 if dmcOrder.cdsSawmillLoadOrders.ChangeCount > 0 then
     dmcOrder.cdsSawmillLoadOrders.CancelUpdates ;
  if dmcOrder.cdsBooking.ChangeCount > 0 then
     dmcOrder.cdsBooking.CancelUpdates ;
end;

procedure TfrmLoadOrder.acConfirmCancelExecute(Sender: TObject);
begin
 GetSelectedLOLines(Sender);
 SetShippingPlanStatus(STATUS_ANNULERAD_BEKRAFTAD) ;
end;

procedure TfrmLoadOrder.acShowLOGroupByBoxExecute(Sender: TObject);
begin
 if grdLODBTableView1.OptionsView.GroupByBox then
  grdLODBTableView1.OptionsView.GroupByBox:= False
   else
    grdLODBTableView1.OptionsView.GroupByBox:= True ;
end;

procedure TfrmLoadOrder.acChangeLoadLayoutExecute(Sender: TObject);
begin
  if grdFS.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdFS.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfrmLoadOrder.AddLoadNoToList(const LoadNo, LONo : Integer);
Var y, x : Integer ;
    Add : Boolean ;
Begin
 Add:= True ;
 For x := 0 to 7 do
 Begin
  if IntToStr(LoadNo)+' / '+IntToStr(LONo) =      cbLastOpenLoads.Properties.Items[x] then
   Begin
    Add := False ;
    y := x ;
   End ;
 End ;
 if Add = True then
 Begin
//  bcLastLoadNoOpen.Items.Delete(7);
  cbLastOpenLoads.Properties.Items.Delete(7) ;
  cbLastOpenLoads.Properties.Items.Insert(0,IntToStr(LoadNo)+' / '+IntToStr(LONo)) ;
//  bcLastLoadNoOpen.Items.Insert(0,IntToStr(LoadNo)+' / '+IntToStr(LONo)) ;
 End
  else
   cbLastOpenLoads.Properties.Items.Move(y,0);
//   bcLastLoadNoOpen.Items.Move(y,0);
// bcLastLoadNoOpen.ItemIndex:= 0 ;
 cbLastOpenLoads.ItemIndex:= 0 ;
End ;

procedure TfrmLoadOrder.acOpenMallExecute(Sender: TObject);
begin

 OpenDialog1.Filter := 'Mallar (*.ini)|*.ini';
 OpenDialog1.DefaultExt:= 'ini';
 OpenDialog1.InitialDir:= LODir ;
 if OpenDialog1.Execute then
 Begin
  LastUsedLOTemplate:= OpenDialog1.FileName ;
  grdLODBTableView1.RestoreFromIniFile(ChangeFileExt(LastUsedLOTemplate, '.' + 'INI'),False,False,[],'');
//  lbRefreshClick(Sender) ;

 End ; //OpenDialog1...
end;

procedure TfrmLoadOrder.acSaveMallExecute(Sender: TObject);
 Var //x : Integer ;
    OvcIniFileStore1 : TIniFile ;
Begin
 SaveDialog1.Filter := 'Mallar (*.ini)|*.ini';
 SaveDialog1.DefaultExt:= 'ini';
 SaveDialog1.InitialDir:= LODir ;
 if SaveDialog1.Execute then
 Begin
  OvcIniFileStore1 := TIniFile.Create( SaveDialog1.FileName );
  Try
   LastUsedLOTemplate:= OvcIniFileStore1.FileName ;
   Panel2.Caption:= LastUsedLOTemplate ;
   grdLODBTableView1.StoreToIniFile(ChangeFileExt(SaveDialog1.FileName, '.' + 'INI'),False,[],'');
  Finally
   OvcIniFileStore1.Free ;
  End ;
 End ;
end;


procedure TfrmLoadOrder.acPrintLOWYSWYGExecute(Sender: TObject);
begin
 dxComponentPrinter1.Preview(True, dxComponentPrinter1Link2);
end;

procedure TfrmLoadOrder.acExpandAllExecute(Sender: TObject);
begin
 grdLODBTableView1.ViewData.Expand(True);
end;

procedure TfrmLoadOrder.acCollapseAllExecute(Sender: TObject);
begin
 grdLODBTableView1.ViewData.Collapse(True);
end;

procedure TfrmLoadOrder.acExportToXLSExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
  FileName: String ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 SaveDialog2.Filter := 'Excel files (*.xls)|*.xls';
 SaveDialog2.DefaultExt:= 'xls';
 SaveDialog2.InitialDir:= ExcelDir ;
 if SaveDialog2.Execute then
 Begin
  FileName:= SaveDialog2.FileName ;

  Try
  ExportGridToExcel(FileName, grdLO, False, False, True,'xls');
  ShowMessage('Tabell exporterad till Excel fil '+FileName);
  Except
  End ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmLoadOrder.acSearchLoadNoExecute(Sender: TObject);
Var LONo  : Integer ;
fEntryField : TfEntryField ;
begin
 With dmcOrder do
 Begin
  LONo:= 0 ;
  fEntryField:= TfEntryField.Create(Nil);
  fEntryField.Caption:= 'Ange LastNr' ;
  fEntryField.LTitle.Caption:= 'LastNr:' ;
  Try
   if fEntryField.ShowModal = mrOK then
   Begin
    LONo:= GetLONoForLoadNo (StrToIntDef(Trim(fEntryField.eValue.Text),0)) ;
    if LONo > 0 then
    Begin
     Edit1.Text:= IntToStr(LONo) ;
     BuildGetOne_LO_SQL (Sender) ;
     dmcOrder.cdsSawmillLoadOrders.Active:= False ;
     CheckIfChangesUnSaved(Sender) ;
     RefreshLoadOrders(Sender);
     SearchOneLO:= True ;
     ShowLoadsForLO(cdsSawmillLoadOrdersLONumber.AsInteger);
     cdsLoadsForLO.Locate('LoadNo',StrToIntDef(Trim(fEntryField.eValue.Text),0),[]) ;
     grdFS.SetFocus ;
//     Edit1.Text:= '' ;
//     Edit1.SetFocus ;
    End ;

   End ;
  Finally
   FreeAndNil(fEntryField) ;//.Free ;
  End ;
 End ;
end;


procedure TfrmLoadOrder.bbGoToLoadClick(Sender: TObject);
Var LoadNo, LONo : Integer ;
begin
 With dmcOrder do
 Begin
//  if bcLastLoadNoOpen.Items.Count > 0 then
  if cbLastOpenLoads.Properties.Items.Count > 0 then
  Begin
   LONo:= 0 ;
   LoadNo:= StrToIntDef(Trim(Copy(cbLastOpenLoads.Properties.Items[cbLastOpenLoads.ItemIndex],1,5)),0) ;

   if LoadNo > 0 then
   Begin
    LONo:= GetLONoForLoadNo (LoadNo) ;
    if LONo > 0 then
    Begin
     Edit1.Text:= IntToStr(LONo) ;
     BuildGetOne_LO_SQL (Sender) ;
     dmcOrder.cdsSawmillLoadOrders.Active:= False ;
     CheckIfChangesUnSaved(Sender) ;
     RefreshLoadOrders(Sender);
     SearchOneLO:= True ;
     ShowLoadsForLO(cdsSawmillLoadOrdersLONumber.AsInteger);
     cdsLoadsForLO.Locate('LoadNo',LoadNo,[]) ;
     grdFS.SetFocus ;
//     Edit1.Text:= '' ;
//     Edit1.SetFocus ;
    End ;
  End ;
 End ;
 End ; //with
end;

procedure TfrmLoadOrder.acAddToLastLoadListExecute(Sender: TObject);
begin
    AddLoadNoToList(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger,
    grdFSDBTableView1.DataController.DataSet.FieldByName('ShippingPlanNo').AsInteger);
end;

procedure TfrmLoadOrder.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key <> VK_RETURN then Exit;
 With dmcOrder do
 Begin
  dmcOrder.cdsSawmillLoadOrders.IndexName:= 'cdsSawmillLoadOrdersLONo' ;
  Try
   Edit1.Text:= IntToStr(daMoLM1.GetLONoForLoadNo (StrToIntDef(Trim(Edit2.Text),0))) ;
   GetOneLO(Sender) ;
//   ShowLoadsForLO(cdsSawmillLoadOrdersLONumber.AsInteger);
   cdsLoadsForLO.Locate('LoadNo',StrToIntDef(Trim(Edit2.Text),0),[]) ;


  Finally
   dmcOrder.cdsSawmillLoadOrders.IndexName:= 'indexSupplierShipPlanObjectNo' ;
   Edit2.Text:= '' ;
   Edit2.SetFocus ;
  End ;
 End ; //with
end;

procedure TfrmLoadOrder.acSpec_ALLA_LasterExecute(Sender: TObject);
begin
 GenerateSamlingFS_MedPktNr(Sender) ;
end;

procedure TfrmLoadOrder.GenerateSamlingFS_MedPktNr(Sender: TObject);
begin

end;

procedure TfrmLoadOrder.dxBarButton18Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType').AsInteger <> 2 then
  FormCRViewReport.CreateCo('TALLY_INTERNAL_VER2_NOTE_dk.RPT') 
  else
  Begin
   dmcSystem.sq_PkgType_Invoice.ParamByName('LoadNo').AsInteger:= grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger ;
   dmcSystem.sq_PkgType_Invoice.ExecSQL(False) ;
   FormCRViewReport.CreateCo('TALLY_VER2_NOTE_dk.RPT') ;
  End ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  dmcSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger ;
  dmcSystem.sq_DelPkgType.ExecSQL(False) ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmLoadOrder.dxBarButton19Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger < 1 then exit ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

  if (dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 1) and (dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2) then
  FormCRViewReport.CreateCo('Lastorder_inkop_NOTE_dk.RPT') 
  else
 Begin
  if dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2 then
   FormCRViewReport.CreateCo('LASTORDER_NOTE_dk.RPT') 
   else
   FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_dk.RPT') ;
 End ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(-1);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmLoadOrder.dxBarButton20Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_VERK_dk.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

//Lägg in poster i SamLastReport tabell
procedure TfrmLoadOrder.Generate_samLastDataForMarkedLoads(Sender: TObject);
begin

end;



//Markerade laster
procedure TfrmLoadOrder.dxBarButton21Click(Sender: TObject);
begin
 Generate_samLastDataForMarkedLoads(Sender) ;
 //Ny rapport SPEC_ALLA_LASTER_VERK_II med parameter för UserID
 SPEC_ALLA_LASTER_VERK_MARKERADE(Sender) ;
end;

procedure TfrmLoadOrder.SPEC_ALLA_LASTER_VERK_MARKERADE(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_VERK_III.RPT') ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger);
  FormCRViewReport.report.ParameterFields.Item[3].AddCurrentValue(ThisUser.UserID);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

//Per LO
procedure TfrmLoadOrder.SPEC_ALLA_LASTER_MARKERADE(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_III.RPT') ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger);
//  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(ThisUser.UserID);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;


procedure TfrmLoadOrder.SPEC_ALLA_LASTER_VERK(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_VERK_III.RPT') ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger);
  FormCRViewReport.report.ParameterFields.Item[3].AddCurrentValue(ThisUser.UserID);

  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmLoadOrder.dxBarButton22Click(Sender: TObject);
begin
 //generera för markerade laster
 Generate_samLastDataForMarkedLoads(Sender) ;
 SPEC_ALLA_LASTER_MARKERADE(Sender) ;
end;

procedure TfrmLoadOrder.dxBarButton23Click(Sender: TObject);
begin
 //generera för alla laster
 Generate_AllLoads_samLastData(Sender) ;
 SPEC_ALLA_LASTER_MARKERADE(Sender) ;
end;

procedure TfrmLoadOrder.acCloseExecute(Sender: TObject);
begin
// ExitOption:= 1 ;
 Close ;
end;

procedure TfrmLoadOrder.cbSupplierPropertiesCloseUp(Sender: TObject);
begin
 if cbSupplier.Properties.Items.Count > 0 then
 Begin
 dmcOrder.SupplierNo := integer(cbSupplier.Properties.Items.Objects[cbSupplier.ItemIndex]);

 if cbShowAll.Checked then
  atRefreshExecute(Sender)
 else
 Begin
  dmcOrder.cdsSawmillLoadOrders.Active:= False ;
  dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger);
 End ;
 End ; 
end;

procedure TfrmLoadOrder.cbOrderTypePropertiesChange(Sender: TObject);
begin
 if cbShowAll.Checked then
 Begin
  dmcOrder.Shipping:= cbOrderType.ItemIndex ;// integer(cbOrderType.Items.Objects[cbOrderType.ItemIndex]);
  OrderTypeChanged:= True ;
  atRefreshExecute(Sender) ;
 End
 else
  Begin
   dmcOrder.Shipping:= cbOrderType.ItemIndex ;
   dmcOrder.cdsSawmillLoadOrders.Active:= False ;
   dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger);
  End ;
end;

procedure TfrmLoadOrder.FormDestroy(Sender: TObject);
begin
 frmLoadOrder:= Nil ;
end;

procedure TfrmLoadOrder.Timer1Timer(Sender: TObject);
begin
 Edit1.SetFocus ;
 Timer1.Enabled:= False ;
end;

procedure TfrmLoadOrder.acCreateNewRunExecute(Sender: TObject);
var fAOWizard : TfAOWizard;
    RunNo     : Integer ;
    OldFilter : String ;
    Filtered  : Boolean ;
begin
 With dmcOrder do
 Begin
  if GetSelectedLOLines(Sender) = False then
  Exit ;
  RunNo:= 0 ;
  if not cds_AORun.Active then
   cds_AORun.Active:= True ;
  if not cds_AORow.Active then
   cds_AORow.Active:= True ;
  if not cds_AORaw.Active then
   cds_AORaw.Active:= True ;
  if not cds_LO_AO.Active then
   cds_LO_AO.Active:= True ;

  cds_AORun.Insert ;
  //Set Producent, volumeunit,
  SetDefaultAORunValuesOfLOValues ;
//  cds_AORunProducerNo.AsInteger := cds_AOUserRPProducerNo.AsInteger ;
//  cds_AORunRegPointNo.AsInteger := cds_AOUserRPRegPointNo.AsInteger ;
//  cds_AORunVolUnitNo.AsInteger  := cds_AOUserRPVolUnitNo.AsInteger ;

  fAOWizard           := TfAOWizard.Create(nil);
  OldFilter           := cds_AORow.Filter ;
  Filtered            := cds_AORow.Filtered ;
  cds_AORow.Filter    := 'RunNo = '+cds_AORunRunNo.AsString ;
  cds_AORow.Filtered  := True ;
  try
  if fAOWizard.ShowModal = mrOK then
  Begin
   Application.ProcessMessages ;
   RunNo:= cds_AORunRunNo.AsInteger ;
   SaveAO ;


   RefreshAOLO ;
  End
   else
   Begin
//    acCancelChangesExecute(Sender) ;
    Application.ProcessMessages ;
    CancelAOChanges ;
   End ;
  finally
   FreeAndNil(fAOWizard) ;
   cds_AORow.Filtered  := False ;
   cds_AORow.Filter:= OldFilter ;
   cds_AORow.Filtered:= Filtered ;
   cds_AORow.Locate('RunNo', RunNo, []) ;
  end;
 End ;//with
end;

procedure TfrmLoadOrder.acCreateNewRunUpdate(Sender: TObject);
begin
 With dmcOrder do
 Begin
  acCreateNewRun.Enabled:= grdLODBTableView1.Controller.SelectedRecordCount > 0 ;
 End ;
end;

procedure TfrmLoadOrder.acSaveChangesUpdate(Sender: TObject);
begin
 acSaveChanges.Enabled:= not DataSaved ;
end;

procedure TfrmLoadOrder.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled:= not DataSaved ;
end;

procedure TfrmLoadOrder.acSaveAOExecute(Sender: TObject);
begin
 With dmcOrder do
 Begin
  SaveAO ;
 End ;//with
end;

procedure TfrmLoadOrder.acAddLOToAOExecute(Sender: TObject);
var fAOWizard : TfAOWizard;
    RunNo     : Integer ;
    OldFilter : String ;
    Filtered  : Boolean ;
begin
 With dmcOrder do
 Begin
  if GetSelectedLOLines(Sender) = False then
  Exit ; 
  if not cds_AORun.Active then
   cds_AORun.Active:= True ;
  if not cds_AORow.Active then
   cds_AORow.Active:= True ;
  if not cds_AORaw.Active then
   cds_AORaw.Active:= True ;
  if not cds_LO_AO.Active then
   cds_LO_AO.Active:= True ;
   
  cds_RegPoint.Active:= False ;
  sq_RegPoint.ParamByName('ClientNo').AsInteger:= cds_AOR_LOProducerNo.AsInteger ;
  cds_RegPoint.Active:= True ;

  cds_AORun.Active:= False ;
  sq_AORun.ParamByName('RunNo').AsInteger:= cds_AOR_LORunNo.AsInteger ;
  cds_AORun.Active:= True ;

  fAOWizard           := TfAOWizard.Create(nil);
  OldFilter           := cds_AORow.Filter ;
  Filtered            := cds_AORow.Filtered ;

  cds_AORow.Active:= False ;
  sq_AORow.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
  sq_AORow.ParamByName('StartYearWeekNo').AsInteger:= -1 ;
  sq_AORow.ParamByName('Status').AsInteger:= -1 ;
  cds_AORow.Filter    := 'RunNo = '+cds_AOR_LORunNo.AsString ;
  cds_AORow.Filtered  := True ;
  cds_AORow.Active:= True ;

  try
  if fAOWizard.ShowModal = mrOK then
  Begin
   Application.ProcessMessages ;
   RunNo:= cds_AORunRunNo.AsInteger ;
   SaveAO ;
   RefreshAOLO ;
  End
   else
   Begin
    Application.ProcessMessages ;   
    CancelAOChanges ;
   End ;
  finally
   FreeAndNil(fAOWizard) ;
   cds_AORow.Filtered  := False ;
   cds_AORow.Filter:= OldFilter ;
   cds_AORow.Filtered:= Filtered ;
   cds_AORow.Locate('RunNo', RunNo, []) ;
  end;
 End ;//with
end;

procedure TfrmLoadOrder.acFilterAOonDimExecute(Sender: TObject);
begin
 With dmcOrder do
 Begin
  AO_LO_Query_Param_Set:= 1 ;
  RefreshAOLO ;
 End ;
end;

procedure TfrmLoadOrder.acFilterAOonLOExecute(Sender: TObject);
begin
 With dmcOrder do
 Begin
  AO_LO_Query_Param_Set:= 0 ;
  RefreshAOLO ;
 End ;
end;

procedure TfrmLoadOrder.acFilterAOonNothingExecute(Sender: TObject);
begin
 With dmcOrder do
 Begin
  AO_LO_Query_Param_Set:= 2 ;
  RefreshAOLO ;
 End ;
end;

procedure TfrmLoadOrder.acAddLOToAOUpdate(Sender: TObject);
begin
 With dmcOrder do
 Begin
  acAddLOToAO.Enabled:= (grdLODBTableView1.Controller.SelectedRecordCount > 0)
  AND (cds_AOR_LO.Active) AND (cds_AOR_LO.RecordCount > 0) ;
 End ;
end;

procedure TfrmLoadOrder.acSaveAOUpdate(Sender: TObject);
begin
 With dmcOrder do
 Begin
  acSaveAO.Enabled:= not AODataSaved ;
 End ; 
end;

end.

