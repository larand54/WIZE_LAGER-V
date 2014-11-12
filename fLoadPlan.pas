unit fLoadPlan;

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
  Grids,
  StdCtrls,
  Menus,
  dxBar, dxBarExtItems,
  Buttons,


  SqlTimSt, DB,
  cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxImageComboBox, cxTextEdit,
  cxGridExportLink,
  cxExport, cxLabel, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, cxCalendar, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPScxCommon, 
  dxPSCore, cxCalc,
  cxCurrencyEdit, cxLookAndFeels, cxLookAndFeelPainters,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer,
  dxPScxCheckListBoxLnk, dxPSLbxLnk, dxPSTextLnk, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxSkinsdxRibbonPainter ;

Const
    CM_MOVEIT = WM_USER + 1;

type
  TfrmLoadPlan = class(TForm)

    pnlBottomGrid: TPanel;
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    lbOpenLoad: TdxBarLargeButton;
    lbNewLoad: TdxBarLargeButton;
    imglistActions: TImageList;
    ActionList_DBForm: TActionList;
    atRefresh: TAction;
    atNewLoadPlan: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    pmPrint: TdxBarPopupMenu;
    images1616: TImageList;
    lbApplyUpdates: TdxBarLargeButton;
    lbCancelUpdates: TdxBarLargeButton;
    lbNewLoadWithLO: TdxBarLargeButton;
    dxComponentPrinter1: TdxComponentPrinter;
    grdLoadPlanLevel1: TcxGridLevel;
    grdLoadPlan: TcxGrid;
    dxComponentPrinter1Link2: TdxGridReportLink;
    acChangeLOLayout: TAction;
    acSaveChanges: TAction;
    acCancelChanges: TAction;
    pmLOGrid: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    dxBarButton11: TdxBarButton;
    acShowLOGroupByBox: TAction;
    dxBarButton12: TdxBarButton;
    acPrintLOWYSWYG: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    acExpandAll: TAction;
    acCollapseAll: TAction;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    acExportToXLS: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    SaveDialog2: TSaveDialog;
    acClose: TAction;
    pmShortcuts: TPopupMenu;
    Stng1: TMenuItem;
    ppnalast1: TMenuItem;
    WYSIWYG1: TMenuItem;
    Spara1: TMenuItem;
    Uppdatera1: TMenuItem;
    Panel3: TPanel;
    grdLoadPlanDBBandedTableView1: TcxGridDBBandedTableView;
    grdDestinationerLevel1: TcxGridLevel;
    grdDestinationer: TcxGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel5: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    dxBarDockControl3: TdxBarDockControl;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    acNewDestination: TAction;
    dxBarButton15: TdxBarButton;
    grdLoadPlanDBBandedTableView1LoadingNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1LoadPlanDestRowNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1NoOfPkgsNoOfPkgsLastInv: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1NoOfPkgsConfirmedDest: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1NoOfPkgsDiffDest: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1PRODUKT: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1BARCODE: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1SKNAMN: TcxGridDBBandedColumn;
    acAddRow: TAction;
    acSelectPkgTypes: TAction;
    grdDestinationerDBBandedTableView1: TcxGridDBBandedTableView;
    grdDestinationerDBBandedTableView1LoadingNo: TcxGridDBBandedColumn;
    grdDestinationerDBBandedTableView1LoadPlanDestRowNo: TcxGridDBBandedColumn;
    grdDestinationerDBBandedTableView1PIPNo: TcxGridDBBandedColumn;
    grdDestinationerDBBandedTableView1LIPNo: TcxGridDBBandedColumn;
    grdDestinationerDBBandedTableView1DateCreated: TcxGridDBBandedColumn;
    grdDestinationerDBBandedTableView1CreatedUser: TcxGridDBBandedColumn;
    grdDestinationerDBBandedTableView1ETA: TcxGridDBBandedColumn;
    grdDestinationerDBBandedTableView1SalesRegionNo: TcxGridDBBandedColumn;
    grdDestinationerDBBandedTableView1Frsljningsregion: TcxGridDBBandedColumn;
    grdDestinationerDBBandedTableView1LAGERSTLLE: TcxGridDBBandedColumn;
    grdDestinationerDBBandedTableView1LAGERGRUPP: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1LNGD: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1GRADESTAMP: TcxGridDBBandedColumn;
    Panel6: TPanel;
    Label11: TLabel;
    lcLastStalle: TcxDBLookupComboBox;
    lcLagergrupp: TcxDBLookupComboBox;
    Label12: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    teLoadPlanNo: TcxDBTextEdit;
    dePrintDate: TcxDBDateEdit;
    Label1: TLabel;
    icStatus: TcxDBImageComboBox;
    lcVessel: TcxDBLookupComboBox;
    deETD: TcxDBDateEdit;
    lcMarketRegion: TcxDBLookupComboBox;
    Label6: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    acSelectLoadPlan: TAction;
    acDeleteLastPlan: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    acDeleteRow: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    grdLoadPlanDBBandedTableView1NoOfPkgsARAfterDate: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1TotalLager: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1NoOfPkgsPlanned: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1NoOfPkgsLoaded: TcxGridDBBandedColumn;
    Label7: TLabel;
    Label8: TLabel;
    grdLoadPlanDBBandedTableView1NoOfPkgsLeft: TcxGridDBBandedColumn;
    acGetLeftPkgs: TAction;
    dxBarLargeButton9: TdxBarLargeButton;
    grdLoadPlanDBBandedTableView2: TcxGridDBBandedTableView;
    grdLoadPlanDBBandedTableView2LoadingNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2LoadPlanDestRowNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2PackageTypeNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsPlanned: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsBeforeDate: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsLoaded: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsARAfterDate: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsAfterDate: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsConfirmedDest: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsDiffDest: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2CreatedUser: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2LAGERSTLLE: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2LAGERGRUPP: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2PRODUKT: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2BARCODE: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2SKNAMN: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2LNGD: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2GRADESTAMP: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2SALDO: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2PaketDifferens: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsLeft: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsLastInv: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2TotalLager: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2DateCreated: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2LastInvCount: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2AR: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2TotLager: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1PPP: TcxGridDBBandedColumn;
    Bevel1: TBevel;
    teInvStartNo: TcxDBTextEdit;
    teInvEndNo: TcxDBTextEdit;
    procedure atNewLoadPlanExecute     (Sender: TObject);

    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


    procedure Visagrupperingsrutan1Click(Sender: TObject);
    procedure acChangeLOLayoutExecute(Sender: TObject);
    procedure acSaveChangesExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acShowLOGroupByBoxExecute(Sender: TObject);
    procedure acPrintLOWYSWYGExecute(Sender: TObject);
    procedure acExpandAllExecute(Sender: TObject);
    procedure acCollapseAllExecute(Sender: TObject);
    procedure acExportToXLSExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acNewDestinationExecute(Sender: TObject);
    procedure lcLastStallePropertiesInitPopup(Sender: TObject);
    procedure lcLastStallePropertiesCloseUp(Sender: TObject);
    procedure lcLagergruppPropertiesInitPopup(Sender: TObject);
    procedure lcLagergruppPropertiesCloseUp(Sender: TObject);
    procedure acAddRowExecute(Sender: TObject);
    procedure acSelectPkgTypesExecute(Sender: TObject);
    procedure grdDestinationerDBBandedTableView1LAGERSTLLEPropertiesCloseUp(
      Sender: TObject);
    procedure grdDestinationerDBBandedTableView1LAGERSTLLEPropertiesInitPopup(
      Sender: TObject);
    procedure grdDestinationerDBBandedTableView1LAGERGRUPPPropertiesCloseUp(
      Sender: TObject);
    procedure grdDestinationerDBBandedTableView1LAGERGRUPPPropertiesInitPopup(
      Sender: TObject);
    procedure atRefreshExecute(Sender: TObject);
    procedure acSelectLoadPlanExecute(Sender: TObject);
    procedure acSaveChangesUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acSelectLoadPlanUpdate(Sender: TObject);
    procedure acNewDestinationUpdate(Sender: TObject);
    procedure acSelectPkgTypesUpdate(Sender: TObject);
    procedure grdLoadPlanDBBandedTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure grdLoadPlanDBBandedTableView1NoOfPkgsNoOfPkgsLastInvGetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
      var AText: String);
    procedure grdLoadPlanDBBandedTableView1NoOfPkgsLoadedGetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
      var AText: String);
    procedure grdLoadPlanDBBandedTableView1NoOfPkgsPlannedGetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
      var AText: String);
    procedure grdLoadPlanDBBandedTableView1NoOfPkgsConfirmedDestGetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
      var AText: String);
    procedure grdLoadPlanDBBandedTableView1NoOfPkgsDiffDestGetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
      var AText: String);
    procedure acDeleteLastPlanExecute(Sender: TObject);
    procedure acDeleteRowExecute(Sender: TObject);
    procedure acDeleteRowUpdate(Sender: TObject);
    procedure atRefreshUpdate(Sender: TObject);
    procedure grdLoadPlanDBBandedTableView1NoOfPkgsLoadedStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure grdLoadPlanDBBandedTableView1TotStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure acGetLeftPkgsExecute(Sender: TObject);
    procedure acGetLeftPkgsUpdate(Sender: TObject);
    procedure atNewLoadPlanUpdate(Sender: TObject);
    procedure grdDestinationerDBBandedTableView1Editing(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure grdDestinationerDBBandedTableView1FrsljningsregionGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);


  private
    { Private declarations }
    procedure CloseDataSet ;
    function  DataSaved : Boolean ;
    procedure RefreshLoadOrders(Sender: TObject);
    procedure PrintCReport(Sender: TObject);

    procedure CMMoveIt(var Msg: TMessage); message CM_MOVEIT;


  protected

    procedure LoadUserPreferences;
    procedure SaveUserPreferences;

  public
    { Public declarations }
  end;

var
  frmLoadPlan: TfrmLoadPlan;
  OriginalPos : String;

implementation

{$R *.dfm}

uses
  recerror,
  VidaConst,
  VidaType,
  VidaUser,
  VidaUtils, UnitCRViewReport,
  dmsVidaContact, dmcVidaSystem,
  dmsDataConn, uEntryField , dmcLoadPlan, uSelectPkgTypes, uSelectLoadPlan,
  dmsVidaSystem;


procedure TfrmLoadPlan.CMMoveIt(var Msg: TMessage);
var AGoForward: Boolean;
begin
   AGoForward := Boolean(Msg.WParam);
   grdLoadPlanDBBandedTableView1.Controller.EditingController.HideEdit(True);
   grdLoadPlanDBBandedTableView1.Controller.FocusNextCell(AGoForward)
end;

procedure TfrmLoadPlan.CloseDataSet ;
Begin
 With dmLoadPlan do
 Begin
  if cds_LoadPlanHdr.Active then cds_LoadPlanHdr.Active:= False ;
  cds_LoadPlanHdr.Active:= False ;
  cds_LoadPlanDest.Active:= False ;
  cds_LoadPlanRow.Active:= False ;
 End ; //with
End ;

procedure TfrmLoadPlan.LoadUserPreferences;
begin
 dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdLoadPlan.Name, grdLoadPlanDBBandedTableView1) ;
end;

procedure TfrmLoadPlan.SaveUserPreferences;
begin
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdLoadPlan.Name, grdLoadPlanDBBandedTableView1) ;
end;

procedure TfrmLoadPlan.atNewLoadPlanExecute(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if cds_LoadPlanHdr.Active = False then
   cds_LoadPlanHdr.Active:= True ;
  if not cds_LoadPlanDest.Active then
   cds_LoadPlanDest.Active:= True ;


  cds_LoadPlanHdr.Insert ;
  AddTotalMarker ;
//  cds_LoadPlanDest.Active:= True ;
  cds_LoadPlanRow.Active:= False ;
  cds_LoadPlanRow.Active:= True ;  
 End ;
end;

procedure TfrmLoadPlan.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= False ;
  if DataSaved = False then
  Begin
   if MessageDlg('Data är inte sparat i lastplan, vill du spara ändringar?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
    acSaveChangesExecute(Sender) ;
//    FreeAndNil(dmLoadPlan) ;//.free ;
    CanClose:= True ;
   end
    else
     CanClose:= True ;
  End
   else
    CanClose:= True ;

 if CanClose then
 With dmLoadPlan do
 Begin
  Self.CloseDataSet ;
//  SaveUserPreferences;
  cds_LoadPlanRow.Filtered  := False ;
  cds_LoadPlanRow.Active    := False ;
  cds_LoadPlanDest.Active   := False ;
  cds_LoadPlanHdr.Active    := False ;
 End ;
end;

procedure TfrmLoadPlan.FormCreate(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  cdsCarrier.Active:= True ;

{  cds_LoadPlanHdr.Active    := True ;
  if ThisUser.CompanyNo = 741 then
  Begin
   cds_LoadPlanHdr.Filter    := 'Status = 1' ;
   cds_LoadPlanHdr.Filtered  := False ;
  End
  else
  Begin
   cds_LoadPlanHdr.Filter    := 'Status = 1' ;
   cds_LoadPlanHdr.Filtered  := True ;
  End ;

  cds_LoadPlanHdr.Last ;
  cds_LoadPlanDest.Active:= True ;
  cds_LoadPlanRow.Active:= True ;
 }

{  if not cds_PigHdr.Active then
  cds_PigHdr.Active:= True ;
  cds_PigHdr.Last ;  }
//  if not cds_PigEntry.Active then
//  cds_PigEntry.Active:= True ;
 End ; //with dmLoadPlan
// LoadUserPreferences;
end;

procedure TfrmLoadPlan.RefreshLoadOrders(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try

    try

    except
      on EStringListError do begin
        // Nothing
        end;
    end;

  finally
//    LockWindowUpdate(0);
    Screen.Cursor := Save_Cursor ;
  end;
end;

procedure TfrmLoadPlan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree ;
end;

function TfrmLoadPlan.DataSaved : Boolean ;
Begin

 Result:= True ;
 With dmLoadPlan do
 Begin
  if cds_LoadPlanHdr.Active then
  Begin
   if cds_LoadPlanHdr.State in [dsEdit, dsInsert] then
    Result:= False ;
   if cds_LoadPlanHdr.ChangeCount > 0 then
    Result:= False ;

   if (cds_LoadPlanRow.Active) and (cds_LoadPlanRow.State in [dsEdit, dsInsert]) then
    Result:= False ;
   if (cds_LoadPlanRow.Active) and (cds_LoadPlanRow.ChangeCount > 0) then
    Result:= False ;

   if (cds_LoadPlanDest.Active) and (cds_LoadPlanDest.State in [dsEdit, dsInsert]) then
    Result:= False ;
   if (cds_LoadPlanDest.Active) and (cds_LoadPlanDest.ChangeCount > 0) then
    Result:= False ;
  End ;
 End ;
End ; 


procedure TfrmLoadPlan.Visagrupperingsrutan1Click(Sender: TObject);
begin
{ if grdLO1.ShowGroupPanel = False then
   grdLO1.ShowGroupPanel:= True
    else
     grdLO1.ShowGroupPanel:= False ; }
end;

procedure TfrmLoadPlan.acChangeLOLayoutExecute(Sender: TObject);
begin
  if grdLoadPlan.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLoadPlan.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfrmLoadPlan.acSaveChangesExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try

 With dmLoadPlan do
 Begin
  if cds_LoadPlanHdr.State in [dsEdit, dsInsert] then
   cds_LoadPlanHdr.Post ;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  if cds_LoadPlanHdr.ChangeCount > 0 then
  Begin
   cds_LoadPlanHdr.ApplyUpdates(0) ;
   cds_LoadPlanHdr.CommitUpdates ;
  End;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  if cds_LoadPlanDest.State in [dsEdit, dsInsert] then
   cds_LoadPlanDest.Post ;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  if cds_LoadPlanDest.ChangeCount > 0 then
  Begin
   cds_LoadPlanDest.ApplyUpdates(0) ;
   cds_LoadPlanDest.CommitUpdates ;
  End;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  if cds_LoadPlanRow.State in [dsEdit, dsInsert] then
   cds_LoadPlanRow.Post ;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  if cds_LoadPlanRow.ChangeCount > 0 then
  Begin
   cds_LoadPlanRow.ApplyUpdates(0) ;
   cds_LoadPlanRow.CommitUpdates ;
  End;

  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmLoadPlan.acCancelChangesExecute(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if cds_LoadPlanHdr.State in [dsEdit, dsInsert] then
   cds_LoadPlanHdr.Cancel ;
  if cds_LoadPlanHdr.ChangeCount > 0 then
   cds_LoadPlanHdr.CancelUpdates ;

  if cds_LoadPlanRow.State in [dsEdit, dsInsert] then
   cds_LoadPlanRow.Cancel ;
  if cds_LoadPlanRow.ChangeCount > 0 then
   cds_LoadPlanRow.CancelUpdates ;

  if cds_LoadPlanDest.State in [dsEdit, dsInsert] then
   cds_LoadPlanDest.Cancel ;
  if cds_LoadPlanDest.ChangeCount > 0 then
   cds_LoadPlanDest.CancelUpdates ;
 End ;
end;

procedure TfrmLoadPlan.acShowLOGroupByBoxExecute(Sender: TObject);
begin
 if grdLoadPlanDBBandedTableView1.OptionsView.GroupByBox then
  grdLoadPlanDBBandedTableView1.OptionsView.GroupByBox:= False
   else
    grdLoadPlanDBBandedTableView1.OptionsView.GroupByBox:= True ;
end;

procedure TfrmLoadPlan.acPrintLOWYSWYGExecute(Sender: TObject);
begin
 dxComponentPrinter1Link2.ReportTitleText:= 'Lastplannr '+dmLoadPlan.cds_LoadPlanHdrLoadingNo.AsString ;
 dxComponentPrinter1Link2.PrinterPage.Orientation:= poPortrait ;
// dxComponentPrinter1Link2.PreviewWindow.ZoomFactor:= 200 ;
 dxComponentPrinter1Link2.ShrinkToPageWidth:= True ;
 dxComponentPrinter1.Preview(True, dxComponentPrinter1Link2);
end;

procedure TfrmLoadPlan.acExpandAllExecute(Sender: TObject);
begin
 grdLoadPlanDBBandedTableView1.ViewData.Expand(True);
end;

procedure TfrmLoadPlan.acCollapseAllExecute(Sender: TObject);
begin
 grdLoadPlanDBBandedTableView1.ViewData.Collapse(True);
end;

procedure TfrmLoadPlan.acExportToXLSExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
  FileName: String ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 SaveDialog2.Filter := 'Excel files (*.xls)|*.xls';
 SaveDialog2.DefaultExt:= 'xls';
 SaveDialog2.InitialDir:= 'C:\' ;
 if SaveDialog2.Execute then
 Begin
  FileName:= SaveDialog2.FileName ;

  Try
  ExportGridToExcel(FileName, grdLoadPlan, False, False, True,'xls');
  ShowMessage('Tabell exporterad till Excel fil '+FileName);
  Except
  End ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmLoadPlan.PrintCReport(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if grdLoadPlanDBBandedTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_VERK_III.RPT') ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdLoadPlanDBBandedTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(grdLoadPlanDBBandedTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger);
  FormCRViewReport.report.ParameterFields.Item[3].AddCurrentValue(ThisUser.UserID);

  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmLoadPlan.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmLoadPlan.FormDestroy(Sender: TObject);
begin
 frmLoadPlan:= Nil ;
end;

procedure TfrmLoadPlan.acNewDestinationExecute(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  ds_LoadPlanDest.OnDataChange:= nil ;
  Try
  cds_LoadPlanDest.Insert ;
  Finally
   ds_LoadPlanDest.OnDataChange:= ds_LoadPlanDestDataChange ;
  End ;
 End ;
end;

procedure TfrmLoadPlan.lcLastStallePropertiesInitPopup(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if not cds_LoadPlanHdrSalesRegionNo.IsNull then
  Begin
   cds_PhysInv.Filter:= 'OwnerNo = '+cds_LoadPlanHdrSalesRegionNo.AsString ;
   cds_PhysInv.Filtered:= True ;
  End ;
 End ;
end;

procedure TfrmLoadPlan.lcLastStallePropertiesCloseUp(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if cds_LoadPlanHdr.State = dsBrowse then
  cds_LoadPlanHdr.Edit ;
  cds_LoadPlanHdrLIPNo.AsVariant:= null ;
//  if not cds_LoadPlanDestSalesRegionNo.IsNull then
  Begin
   cds_PhysInv.Filtered:= False ;
  End ;
 End ;
end;

procedure TfrmLoadPlan.lcLagergruppPropertiesInitPopup(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if not cds_LoadPlanHdrPIPNo.IsNull then
  Begin
   cds_LogInv.Filter:= 'PIPNo = '+cds_LoadPlanHdrPIPNo.AsString ;
   cds_LogInv.Filtered:= True ;
  End ;
 End ;
end;

procedure TfrmLoadPlan.lcLagergruppPropertiesCloseUp(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
//  if not cds_LoadPlanHdrPIPNo.IsNull then
  Begin
   cds_LogInv.Filtered:= False ;
  End ;
 End ;
end;

procedure TfrmLoadPlan.acAddRowExecute(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  cds_LoadPlanRow.Insert ;
 End ;//With
end;

procedure TfrmLoadPlan.acSelectPkgTypesExecute(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  cds_LoadPlanRow.OnCalcFields := nil ;
  Try
  cds_LoadPlanRow.Filter    := 'LoadPlanDestRowNo = '+cds_LoadPlanDestLoadPlanDestRowNo.AsString ;
  cds_LoadPlanRow.Filtered  := True ;
  grdLoadPlanDBBandedTableView1.DataController.DataSource:= nil ;
  Try
  TfSelectPkgTypes.Execute (cds_LoadPlanDestFörsäljningsregion.AsString
  +'/'+cds_LoadPlanDestLagerStälle.AsString
  +'/'+cds_LoadPlanDestLagerGrupp.AsString) ;
  Application.ProcessMessages ;
  RefreshLoadPlanRows ;
  Finally
   cds_LoadPlanRow.Filtered  := False ;
   grdLoadPlanDBBandedTableView1.DataController.DataSource:= ds_LoadPlanRow ;
  End ;
  Finally
   cds_LoadPlanRow.OnCalcFields  := cds_LoadPlanRowCalcFields ;
  End ;
 End ;//with
end;

procedure TfrmLoadPlan.grdDestinationerDBBandedTableView1LAGERSTLLEPropertiesCloseUp(
  Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  cds_PhysInv.Filtered:= False ;
 End ;
end;

procedure TfrmLoadPlan.grdDestinationerDBBandedTableView1LAGERSTLLEPropertiesInitPopup(
  Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if not cds_LoadPlanDestSalesRegionNo.IsNull then
  Begin
   cds_PhysInv.Filter:= 'OwnerNo = '+cds_LoadPlanDestSalesRegionNo.AsString ;
   cds_PhysInv.Filtered:= True ;
  End ;
 End ;
end;

procedure TfrmLoadPlan.grdDestinationerDBBandedTableView1LAGERGRUPPPropertiesCloseUp(
  Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if not cds_PhysInvPIPNo.IsNull then
  Begin
   cds_LogInv.Filtered:= False ;
  End ;
 End ;
end;

procedure TfrmLoadPlan.grdDestinationerDBBandedTableView1LAGERGRUPPPropertiesInitPopup(
  Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if not cds_LoadPlanDestPIPNo.IsNull then
  Begin
   cds_LogInv.Filter:= 'PIPNo = '+cds_LoadPlanDestPIPNo.AsString ;
   cds_LogInv.Filtered:= True ;
  End ;
 End ;
end;

procedure TfrmLoadPlan.atRefreshExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 With dmLoadPlan do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  cds_LoadPlanRow.DisableControls ;
  Try
  UpdateARandPktKvarColumns ;
  cds_LoadPlanRow.Active:= False ;
  cds_LoadPlanRow.Active:= True ;
{  cds_LoadPlanRow.First ;
  While not cds_LoadPlanRow.Eof do
  Begin
   cds_LoadPlanRow.Edit ;
   cds_LoadPlanRow.Post ;
   cds_LoadPlanRow.Next ;
  End ; }
  Finally
   cds_LoadPlanRow.EnableControls ;
   Screen.Cursor := Save_Cursor ;
  End ;
 End ;
end;

procedure TfrmLoadPlan.acSelectLoadPlanExecute(Sender: TObject);
var fSelectLoadPlan : TfSelectLoadPlan;
    Save_Cursor     : TCursor;
begin
 With dmLoadPlan do
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 fSelectLoadPlan:= TfSelectLoadPlan.Create(nil);
 cds_LoadPlanRow.DisableControls ;
 ds_LoadPlanDest.OnDataChange:= nil ;

 cds_LoadPlanHdrList.Active := False ;
 cds_LoadPlanHdrList.Active := True ;
 try
  if fSelectLoadPlan.ShowModal = mrOK then
  Begin
   cds_LoadPlanHdr.Active := False ;
   cds_LoadPlanHdr.ParamByName('LoadingNo').AsInteger  := cds_LoadPlanHdrListLoadingNo.AsInteger ;
   cds_LoadPlanHdr.Active := True ;

   cds_LoadPlanDest.Active   := False ;
   cds_LoadPlanDest.Active   := True ;   

   Application.ProcessMessages ;

   //cds_LoadPlanRow.Refresh ;
   RefreshLoadPlanRows ;

  End
  else
  Application.ProcessMessages ;


 finally
  cds_LoadPlanHdrList.Active := False ;
  FreeAndNil(fSelectLoadPlan) ;
  cds_LoadPlanRow.EnableControls ;
  ds_LoadPlanDest.OnDataChange:= ds_LoadPlanDestDataChange ;
  Screen.Cursor := Save_Cursor ;
 end;
 End ; //with
end;

procedure TfrmLoadPlan.acSaveChangesUpdate(Sender: TObject);
begin
 acSaveChanges.Enabled:= not DataSaved ;
end;

procedure TfrmLoadPlan.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled:= not DataSaved ;
end;

procedure TfrmLoadPlan.acSelectLoadPlanUpdate(Sender: TObject);
begin
 acSelectLoadPlan.Enabled:= DataSaved ;
end;

procedure TfrmLoadPlan.acNewDestinationUpdate(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  acNewDestination.Enabled:= (cds_LoadPlanHdr.Active) and (cds_LoadPlanHdr.RecordCount > 0) ;
 End ;
end;

procedure TfrmLoadPlan.acSelectPkgTypesUpdate(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  acSelectPkgTypes.Enabled:= (cds_LoadPlanDest.Active)
  AND (cds_LoadPlanDest.RecordCount > 0)
  AND (DataSaved)
  AND (cds_LoadPlanDestLoadPlanDestRowNo.AsInteger > -1) ;
 End ;
end;

procedure TfrmLoadPlan.grdLoadPlanDBBandedTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
var AGoForward: Boolean;
begin
 Try
  if AEdit is TcxCustomTextEdit then
    with TcxCustomTextEdit(AEdit) do begin
      if (Key = VK_RIGHT) and (CursorPos=Length(TcxCustomTextEdit(AEdit).Text)) then
//      Begin
//         AGoForward := True ;//Boolean(Msg.WParam);
//   grdLoadPlanDBBandedTableView1.Controller.EditingController.HideEdit(True);
//   grdLoadPlanDBBandedTableView1.Controller.FocusNextCell(AGoForward)
//      End
        PostMessage(frmLoadPlan.Handle,CM_MOVEIT, Integer(True), 0)
      else if (Key = VK_LEFT) and (CursorPos=0) then
        PostMessage(frmLoadPlan.Handle,CM_MOVEIT, Integer(False), 0);
    end;
 Except
 End ;
end;

procedure TfrmLoadPlan.grdLoadPlanDBBandedTableView1NoOfPkgsNoOfPkgsLastInvGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
  var AText: String);
begin
 if AText = '0' then
  AText:= '' ;
end;

procedure TfrmLoadPlan.grdLoadPlanDBBandedTableView1NoOfPkgsLoadedGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
  var AText: String);
begin
 if AText = '0' then
  AText:= '' ;
end;

procedure TfrmLoadPlan.grdLoadPlanDBBandedTableView1NoOfPkgsPlannedGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
  var AText: String);
begin
 if AText = '0' then
  AText:= '' ;
end;

procedure TfrmLoadPlan.grdLoadPlanDBBandedTableView1NoOfPkgsConfirmedDestGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
  var AText: String);
begin
 if AText = '0' then
  AText:= '' ;
end;

procedure TfrmLoadPlan.grdLoadPlanDBBandedTableView1NoOfPkgsDiffDestGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
  var AText: String);
begin
 if AText = '0' then
  AText:= '' ;
end;

procedure TfrmLoadPlan.acDeleteLastPlanExecute(Sender: TObject);
begin
 if MessageDlg('Är du säker?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmLoadPlan do
 Begin
  cds_LoadPlanHdr.Delete ;
  if cds_LoadPlanHdr.ChangeCount > 0 then
  Begin
   cds_LoadPlanHdr.ApplyUpdates(0) ;
   cds_LoadPlanHdr.CommitUpdates ;
  End;
 End ;
end;

procedure TfrmLoadPlan.acDeleteRowExecute(Sender: TObject);
begin
 if MessageDlg('Är du säker?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmLoadPlan do
 Begin
  cds_LoadPlanRow.Delete ;
 End ;
end;

procedure TfrmLoadPlan.acDeleteRowUpdate(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  acDeleteRow.Enabled:= (cds_LoadPlanRow.RecordCount > 0) and
  (cds_LoadPlanHdrStatus.AsInteger <> 2) ;
 End ;
end;

procedure TfrmLoadPlan.atRefreshUpdate(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  atRefresh.Enabled:= (cds_LoadPlanHdr.Active) AND
  (cds_LoadPlanHdrLoadingNo.AsInteger > 0)
  AND (DataSaved) ;
 End ; 
end;

procedure TfrmLoadPlan.grdLoadPlanDBBandedTableView1NoOfPkgsLoadedStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
Var
 AColumn : TcxCustomGridTableItem;
 Tot, Plan, Utlastat : Integer ;
begin
{ if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('NoOfPkgsPlanned').Index] <> null then
 Plan:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('NoOfPkgsPlanned').Index] ;
 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('tot').Index] <> null then
 Tot:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('tot').Index] ;
 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('NoOfPkgsLoaded').Index] <> null then
 Utlastat:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('NoOfPkgsLoaded').Index]
 else
 Utlastat:= 0 ;

 if Utlastat > Plan then
   AStyle:= cxStyle1 ; }
end;

procedure TfrmLoadPlan.grdLoadPlanDBBandedTableView1TotStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
Var
 AColumn : TcxCustomGridTableItem;
 TotPlan, TotLager : Integer ;
begin
(* if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('tot').Index] <> null then
 TotPlan:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('tot').Index] ;
 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('TotLager').Index] <> null then
 TotLager:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('TotLager').Index]
 else
 TotLager:= 0 ;
//  AColumn:= (Sender AS TcxGridDBTableView).GetColumnByFieldName('NoOfPkgsPlanned') ;
// AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('grdLoadPlanDBBandedTableView1NoOfPkgsPlanned');

 if TotPlan > TotLager then
   AStyle:= cxStyle1 ;

// if ARecord.Values[AItem.Index] <= 0 then
//  AStyle:= cxStyle1 ; *)
end;

procedure TfrmLoadPlan.acGetLeftPkgsExecute(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  grdLoadPlanDBBandedTableView1.DataController.BeginUpdate ;
//  cds_LoadPlanRow.DisableControls ;
  cds_PigEntry.DisableControls ;
  Try
  AddLeftPkgsToLoadPlan ;
  Finally
   cds_PigEntry.EnableControls ;
//   cds_LoadPlanRow.EnableControls ;
   grdLoadPlanDBBandedTableView1.DataController.EndUpdate ;
  End ;
 End ;
end;

procedure TfrmLoadPlan.acGetLeftPkgsUpdate(Sender: TObject);
begin
 With dmLoadPlan do
  acGetLeftPkgs.Enabled:= (cds_LoadPlanHdr.Active) and (cds_LoadPlanHdrStatus.AsInteger = 1) ;
end;

procedure TfrmLoadPlan.atNewLoadPlanUpdate(Sender: TObject);
begin
 atNewLoadPlan.Enabled:= DataSaved ;
end;

procedure TfrmLoadPlan.grdDestinationerDBBandedTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
 With dmLoadPlan do
 Begin
  if cds_LoadPlanDestLoadPlanDestRowNo.AsInteger > -1 then
   AAllow:= True
    else
     AAllow:= False ;
 End ;
end;

procedure TfrmLoadPlan.grdDestinationerDBBandedTableView1FrsljningsregionGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if ARecord.Values[6]= -1 then AText:= 'TOTALT' ;
end;

end.

