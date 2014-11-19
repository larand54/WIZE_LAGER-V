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
  FMTBcd, cxDBEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Buttons, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxBarPainter ;

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
    bbCustomizeLayout: TdxBarButton;
    pmPrint: TdxBarPopupMenu;
    il_LastStatus: TImageList;
    bbSamlingsspecifikation: TdxBarButton;
    lbLO_To_Invoice: TListBox;
    bbTally_Ver: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    grdPkgsDBTableView1: TcxGridDBTableView;
    grdPkgsLevel1: TcxGridLevel;
    grdPkgs: TcxGrid;
    grdPkgsDBTableView1LO: TcxGridDBColumn;
    grdPkgsDBTableView1PACKAGE_NO: TcxGridDBColumn;
    grdPkgsDBTableView1SUPPLIERCODE: TcxGridDBColumn;
    grdPkgsDBTableView1M3_NET: TcxGridDBColumn;
    grdPkgsDBTableView1PRODUCT_DESCRIPTION: TcxGridDBColumn;
    grdPkgsDBTableView1PCS: TcxGridDBColumn;
    grdPkgsDBTableView1PACKAGEOK: TcxGridDBColumn;
    grdPkgsDBTableView1PACKAGE_LOG: TcxGridDBColumn;
    grdPkgsDBTableView1M3_NOM: TcxGridDBColumn;
    grdPkgsDBTableView1LOAD_DETAILNO: TcxGridDBColumn;
    grdPkgsDBTableView1LoadNo: TcxGridDBColumn;
    grdPkgsDBTableView1MFBM: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    grdLoadsDBTableView1: TcxGridDBTableView;
    grdLoadsLevel1: TcxGridLevel;
    grdLoads: TcxGrid;
    grdLoadsDBTableView1LO: TcxGridDBColumn;
    grdLoadsDBTableView1LOADNO: TcxGridDBColumn;
    grdLoadsDBTableView1LOADEDDATE: TcxGridDBColumn;
    grdLoadsDBTableView1LOAD_STATUS: TcxGridDBColumn;
    grdLoadsDBTableView1LOAD_ID: TcxGridDBColumn;
    grdLoadsDBTableView1SUPPLIER: TcxGridDBColumn;
    grdLoadsDBTableView1DESTINATION: TcxGridDBColumn;
    grdLoadsDBTableView1INVPOINTNO: TcxGridDBColumn;
    grdLoadsDBTableView1INVPOINTNAME: TcxGridDBColumn;
    grdLoadsDBTableView1SUPPCODE: TcxGridDBColumn;
    grdLoadsDBTableView1OBJECTTYPE: TcxGridDBColumn;
    grdLoadsDBTableView1ORDER_NO: TcxGridDBColumn;
    grdLoadsDBTableView1CUSTOMERNO: TcxGridDBColumn;
    grdLoadsDBTableView1CUSTOMER: TcxGridDBColumn;
    grdLoadsDBTableView1SUPPLIERNO: TcxGridDBColumn;
    grdLoadsDBTableView1FS: TcxGridDBColumn;
    grdLoadsDBTableView1INITIALS: TcxGridDBColumn;
    grdLoadsDBTableView1AVROP_CUSTOMERNO: TcxGridDBColumn;
    grdLoadsDBTableView1AVROP_CUSTOMER: TcxGridDBColumn;
    grdLoadsDBTableView1OrderType: TcxGridDBColumn;
    grdLoadsDBTableView1CountryCode: TcxGridDBColumn;
    grdLoadsDBTableView1LOINI: TcxGridDBColumn;
    grdLoadsDBTableView1LASTSTLLE: TcxGridDBColumn;
    ActionList1: TActionList;
    acFS: TAction;
    acFS_DK: TAction;
    acPrintSamLast: TAction;
    acPrintSamLastMedPktNr: TAction;
    acPkgInfo: TAction;
    pmPkgs: TdxBarPopupMenu;
    acChangeLoadLayout: TAction;
    acChangePkgLayout: TAction;
    dxBarButton3: TdxBarButton;
    pmLoads: TdxBarPopupMenu;
    acSetLoadToConfirmed: TAction;
    acConfirmedLoad: TAction;
    Panel1: TPanel;
    Panel2: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel3: TPanel;
    Panel4: TPanel;
    dxBarDockControl3: TdxBarDockControl;
    bcConfirmed: TcxComboBox;
    acClose: TAction;
    acExportLoadsToExcel: TAction;
    acRefresh: TAction;
    cxLabel2: TcxLabel;
    acUndoAR: TAction;
    grdPkgsDBTableView1GS: TcxGridDBColumn;
    grdPkgsDBTableView1BC: TcxGridDBColumn;
    acShowGroupBox: TAction;
    dxBarButton4: TdxBarButton;
    acExpandAll: TAction;
    acCollapseAll: TAction;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    mtSelectedLoads: TkbmMemTable;
    mtSelectedLoadsLoadNo: TIntegerField;
    mtSelectedLoadsLONo: TIntegerField;
    mtSelectedLoadsLIPNo: TIntegerField;
    grdLoadsDBTableView1LipNo: TcxGridDBColumn;
    mtSelectedLoadsCustomerNo: TIntegerField;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_1: TcxStyle;
    cxStyle_0: TcxStyle;
    cxStyle_4: TcxStyle;
    cxLabel3: TcxLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    mtSelectedLoadsStatus: TIntegerField;
    cxStyle_Focus: TcxStyle;
    mtSelectedLoadsOBJECTTYPE: TIntegerField;
    mtSelectedLoadsOrderType: TIntegerField;
    grdLoadsDBTableView1TYP: TcxGridDBColumn;
    grdLoadsDBTableView1LOTYP: TcxGridDBColumn;
    acPrintTallyUSNote: TAction;
    acConfirmOneLoad: TAction;
    dxBarButton7: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    acPrintDirectFS: TAction;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    acPrintDirectFS_USA: TAction;
    acSamlingsFS_USA: TAction;
    dxBarButton11: TdxBarButton;
    Timer1: TTimer;
    Timer2: TTimer;
    acGetIntPrices: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    cbShowAll: TcxDBCheckBox;
    grdLoadsDBTableView1Trading: TcxGridDBColumn;
    grdLoadsDBTableView1LoadAR: TcxGridDBColumn;
    cxStyleLoadAR: TcxStyle;
    PopupMenu1: TPopupMenu;
    ndralayout1: TMenuItem;
    ndralayout2: TMenuItem;
    StngF121: TMenuItem;
    Kollapsaallagrupper1: TMenuItem;
    AnkomstregistreraF101: TMenuItem;
    Ankomstregistrera1: TMenuItem;
    Expanderaallagrupper1: TMenuItem;
    ExportxlsF111: TMenuItem;
    Frhandsgranska1: TMenuItem;
    FljesedelDK1: TMenuItem;
    UpdintprisersF61: TMenuItem;
    Paketinformation1: TMenuItem;
    Skrivutmarkeradelaster1: TMenuItem;
    Skrivutmarkeradelaster2: TMenuItem;
    Samlingsfljesedel1: TMenuItem;
    Samlingsfljesedelmedpktnr1: TMenuItem;
    Frhandsgranska2: TMenuItem;
    SetLoadtoConfirmed1: TMenuItem;
    Grupperingsrutan1: TMenuItem;
    ngraF41: TMenuItem;
    UppdateraF61: TMenuItem;
    acPrint: TAction;
    SkrivutF81: TMenuItem;
    cbAllaVerk: TcxCheckBox;
    lcOWNER: TcxDBLookupComboBox;
    lcPIPNAME: TcxDBLookupComboBox;
    lcLIPName: TcxDBLookupComboBox;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    deStartPeriod: TcxDBDateEdit;
    deEndPeriod: TcxDBDateEdit;
    grdLoadsDBTableView1AR_LoadNo: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);



    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure fomdate2Change(Sender: TObject);


    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure fomdatePropertiesChange(Sender: TObject);
    procedure tomdatePropertiesChange(Sender: TObject);
    procedure acFSExecute(Sender: TObject);
    procedure acFS_DKExecute(Sender: TObject);
    procedure acPrintSamLastExecute(Sender: TObject);
    procedure acPrintSamLastMedPktNrExecute(Sender: TObject);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acChangeLoadLayoutExecute(Sender: TObject);
    procedure acChangePkgLayoutExecute(Sender: TObject);
    procedure acSetLoadToConfirmedExecute(Sender: TObject);
    procedure acConfirmedLoadExecute(Sender: TObject);
    procedure acConfirmedLoadUpdate(Sender: TObject);
    procedure acPrintSamLastUpdate(Sender: TObject);
    procedure acPrintSamLastMedPktNrUpdate(Sender: TObject);
    procedure acFSUpdate(Sender: TObject);
    procedure acFS_DKUpdate(Sender: TObject);
    procedure acPkgInfoUpdate(Sender: TObject);
    procedure bcConfirmedPropertiesChange(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acExportLoadsToExcelExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acExportLoadsToExcelUpdate(Sender: TObject);
    procedure acUndoARExecute(Sender: TObject);
    procedure acUndoARUpdate(Sender: TObject);
    procedure acShowGroupBoxExecute(Sender: TObject);
    procedure acExpandAllExecute(Sender: TObject);
    procedure acCollapseAllExecute(Sender: TObject);
    procedure grdLoadsDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acPrintTallyUSNoteExecute(Sender: TObject);
    procedure acPrintDirectFSExecute(Sender: TObject);
    procedure acPrintDirectFS_USAExecute(Sender: TObject);
    procedure acSamlingsFS_USAExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure acGetIntPricesExecute(Sender: TObject);
    procedure acConfirmOneLoadUpdate(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure grdPkgsDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure lcLIPNameEnter(Sender: TObject);

  private
    { Private declarations }
    SomethingChanged : Boolean ;
    fSupplierNo : Integer ;
    procedure ConfirmManyINTADDLoads(Sender: TObject);
//    procedure ConfirmManySALESLoads(Sender: TObject);
//    procedure ConfirmManyPOLoads(Sender: TObject);
//    procedure ConfirmManyPOTRADINGLoads(Sender: TObject);
    Function IsLoadValid(LoadNo, ShippingPlanNo, ObjectType : Integer;Sender: TObject) : Boolean ;
    procedure RefreshLoads ;
    procedure LoadArrivalLoadQuery (const LONo, LoadNo : Integer) ;
    function  BackgroundColor(iObjectType: integer) : TColor;
    procedure SetConfirmed_Load_Table(Sender: TObject) ;

    procedure PrintSamlingsspecifikation(Sender: TObject;const SamLastNr : Integer);
    procedure PrintSamlingsspecifikation_USA(Sender: TObject;const SamLastNr : Integer);
    procedure PrintSamlingsspecifikationMedPktNr(Sender: TObject;const SamLastNr : Integer);
    procedure GetMarkedLoads (Sender: TObject) ;
//    procedure ConfirmedINTLoad(Sender: TObject);
//    procedure ConfirmedORDERLoad(Sender: TObject);
    procedure InsertMarkedLoadsToTempTable (Sender: TObject) ;
    procedure TaBortAnkomstRegistreradeLaster ;
    function  AreMarkedLoadsSameObjectTypeAndNotNormalLOType : Boolean ;
    function  AreMarkedLoadsSameObjectTypeAndNotIntORAddLOType : Boolean ;
    procedure PrintDirectFS(Sender: TObject);
    procedure PrintDirectFS_USA(Sender: TObject);
//    function  AreMarkedLoadsSameTRADINGType : Boolean ;
//    function  SelectAvropsNrAttSkapaSalesLoadMot(const POLONo : Integer) : Integer ;
  public
    { Public declarations }
    Procedure CreateCo(CompanyNo: Integer);
  end;

var
  frmLoadArrivals: TfrmLoadArrivals;

implementation

uses UnitCRViewReport, dmc_ArrivingLoads, //fConfirmLoad,
  VidaUtils, Vidauser,
  UnitPkgInfo, dmsVidaContact, dmcVidaSystem, dmsDataConn ,
//  fConfirmIntLoad,
//  fConfirmManyIntLoads, uSelectLIP,
  uAnkomstRegProgress, VidaConst ,
//  fConfirmManyNormalLoad,
  UnitCRPrintOneReport, dmsVidaSystem, dmc_Filter , dmc_UserProps;
//  uTradingLinkMult;

{$R *.dfm}

Procedure TfrmLoadArrivals.CreateCo(CompanyNo: Integer);
Var x : Integer ;
begin
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdLoads.Name, grdLoadsDBTableView1) = False then ;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdPkgs.Name, grdPkgsDBTableView1) = False then ;

{  grdLoadsDBTableView1INVPOINTNO.Visible        := False ;
  grdLoadsDBTableView1LipNo.Visible             := False ;
  grdLoadsDBTableView1SUPPLIERNO.Visible        := False ;
  grdLoadsDBTableView1OrderType.Visible         := False ;
  grdLoadsDBTableView1AVROP_CUSTOMERNO.Visible  := False ;
  grdLoadsDBTableView1CUSTOMERNO.Visible        := False ;
  grdLoadsDBTableView1OBJECTTYPE.Visible        := False ;
  grdLoadsDBTableView1ORDER_NO.Visible          := False ;

  dmsContact.Load_Int_and_Lego(bcCompany.Properties.Items) ;
  if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
    bcCompany.Properties.ReadOnly:= False ;

  For x:= 0 to bcCompany.Properties.Items.Count -1 do
  if ThisUser.CompanyNo = integer(bcCompany.Properties.Items.Objects[x]) then
  Begin
   bcCompany.ItemIndex:= x ;
   fSupplierNo:= integer(bcCompany.Properties.Items.Objects[x]);
  End ;

 cds_Props.Active:= False ;
 sq_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_Props.ParamByName('Form').AsString    := Self.Name ;
 cds_Props.Active:= True ;
 if cds_Props.Eof then
  cds_Props.Insert ;


 dmArrivingLoads.cdsArrivingLoads.Active:= True ;
 if (ThisUser.UserID = 4) OR (ThisUser.UserID = 8) then
  acSetLoadToConfirmed.Enabled:= True ;
 if cds_PropsNewItemRow.AsInteger = 1 then
 RefreshLoads ;
 }
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
  cds_PIP.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
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
  dmArrivingLoads       := TdmArrivingLoads.Create(nil) ;
  bcConfirmed.ItemIndex := 0 ;
  dmArrivingLoads.mtUserPropPIPNo.OnChange  := nil ;
  Try
  dm_UserProps.LoadUserProps (Self.Name, dmArrivingLoads.mtuserprop) ;

  dmArrivingLoads.mtUserProp.Edit ;
  dmArrivingLoads.mtUserPropVerkNo.AsInteger:=  dmArrivingLoads.mtUserPropOwnerNo.AsInteger ;
  dmArrivingLoads.mtUserProp.Post ;

  Finally
   dmArrivingLoads.mtUserPropPIPNo.OnChange  := dmArrivingLoads.mtUserPropPIPNoChange ;
  End ;

  SomethingChanged      := True ;
//  tomdate.Date          := now ;
//  fomdate.Date          := now ;
end;

procedure TfrmLoadArrivals.RefreshLoads ;
var
  Save_Cursor : TCursor;
  LoadNo      : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 SomethingChanged := True ;
 With dmArrivingLoads do
 Begin
 cdsArrivingLoads.DisableControls ;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 try
 dsrcArrivingLoads.DataSet:= Nil ;
 Try
  if mtUserPropOwnerNo.AsInteger > 0 then
  Begin
   LoadNo:= cdsArrivingLoadsLoadNo.AsInteger ;
   cdsArrivingLoads.Active      := False ;
   cdsArrivingLoads.Close ;
   if SomethingChanged = True then
   LoadArrivalLoadQuery (-1, -1) ;
   cdsArrivingLoads.Active      := True ;
//   cdsArrivingLoads.LogChanges  := False ;
   if LoadNo > 0 then
   cdsArrivingLoads.FindKey([LoadNo]) ;
  end
  else
  Begin
   cdsArrivingLoads.Active      := False ;
   cdsArrivingLoads.Active      := True ;
  End ;
 finally
  dsrcArrivingLoads.DataSet:= cdsArrivingLoads ;
 end;
 finally
  cdsArrivingLoads.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

Function TfrmLoadArrivals.IsLoadValid(LoadNo, ShippingPlanNo, ObjectType : Integer;Sender: TObject) : Boolean ;
begin
 Result := False ;
 With dmArrivingLoads do
 Begin
//  cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex1' ;

  cdsArrivingLoads.Filter:= 'LoadNo = '+IntToStr(LoadNo) ;
  cdsArrivingLoads.Filtered:= True ;
  cdsArrivingLoads.First ;
  Try
  While Not cdsArrivingLoads.Eof do
  Begin
   if cdsArrivingLoadsObjectType.AsInteger <> 2 then
   Begin
    sq_Check_CDS_Link.Close ;
    sq_Check_CDS_Link.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLoadNo.AsInteger ;
    sq_Check_CDS_Link.ParamByName('ShippingPlanNo').AsInteger:= cdsArrivingLoadsLO.AsInteger ;
    sq_Check_CDS_Link.Open ;
    if sq_Check_CDS_Link.Eof then
     Result:= True
     else
       ShowMessage('Kan inte AR lasten. Problem med LO# '+cdsArrivingLoadsLO.AsString+' länkning till LO, kolla att LO samt Last är OK ') ;
    sq_Check_CDS_Link.Close ;
   End ;
   if cdsArrivingLoadsObjectType.AsInteger = 2 then
   Begin
    sq_CheckObject2Link.Close ;
    sq_CheckObject2Link.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLoadNo.AsInteger ;
    sq_CheckObject2Link.ParamByName('ShippingPlanNo').AsInteger:= cdsArrivingLoadsLO.AsInteger ;
    sq_CheckObject2Link.Open ;
    if sq_CheckObject2Link.Eof then
     Result:= True
      else
       ShowMessage('Kan inte AR lasten. Problem med LO# '+cdsArrivingLoadsLO.AsString+' länkning till Avrop eller LO, kolla att AVROP / LO samt LAST är OK ') ;
    sq_CheckObject2Link.Close ;
   End ;
   cdsArrivingLoads.Next ;
  End ; //While
  cdsArrivingLoads.Filtered:= False ;
  if not cdsArrivingLoads.FindKey([LoadNo]) then
   Result:= False ;
  Finally
//   cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex2' ;
  End ;
 End ; //With
End ;

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

procedure TfrmLoadArrivals.LoadArrivalLoadQuery (const LONo, LoadNo : Integer) ;
Begin
with dmArrivingLoads do
Begin
 cdsArrivingLoads.SQL.Clear ;
 cdsArrivingLoads.SQL.Add('SELECT DISTINCT L.LoadAR,') ;
 cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,') ;

 cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,');
 cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,');
 cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,');
 cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
 cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
 cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
 cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
 cdsArrivingLoads.SQL.Add('Mill.ClientCode                         AS      SUPPCODE,');
 cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,');
 cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,');
 cdsArrivingLoads.SQL.Add('SP.ObjectType				AS	OBJECTTYPE,');
 cdsArrivingLoads.SQL.Add('isNull(SP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');
 cdsArrivingLoads.SQL.Add('isNull(IName.CityName, '+QuotedStr('')+')		AS	INVPOINTNAME,');
 cdsArrivingLoads.SQL.Add('SP.CustomerNo                           AS      CUSTOMERNO,');
 cdsArrivingLoads.SQL.Add('Cust.ClientCode                         AS      CUSTOMER,');
 cdsArrivingLoads.SQL.Add('SP.SupplierNo                           AS      SUPPLIERNO,');
 cdsArrivingLoads.SQL.Add('CSH.CustomerNo				AS	AVROP_CUSTOMERNO,');
 cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			AS	AVROP_CUSTOMER,');
 cdsArrivingLoads.SQL.Add(' SP.OBJECTTYPE,');

 cdsArrivingLoads.SQL.Add('(SELECT US.INITIALS');
 cdsArrivingLoads.SQL.Add(' FROM dbo.Confirmed_Load_EXT   CL, dbo.Users	US');
 cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo');
 cdsArrivingLoads.SQL.Add('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo');
 cdsArrivingLoads.SQL.Add('AND US.UserID = cl.CreatedUser) AS INITIALS,');

 cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,');
 cdsArrivingLoads.SQL.Add('CASE');
 cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN '+QuotedStr('SALES'));
 cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN '+QuotedStr('PO'));
 cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN '+QuotedStr('INTERN'));
 cdsArrivingLoads.SQL.Add('End AS TYP,');
 cdsArrivingLoads.SQL.Add('CASE');
 cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 2 THEN '+QuotedStr('LO'));
 cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 1 THEN '+QuotedStr('ADD'));
 cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 0 THEN '+QuotedStr('INT'));
 cdsArrivingLoads.SQL.Add('END AS LOTYP,');

 cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS') ;
 cdsArrivingLoads.SQL.Add('From dbo.SupplierShippingPlan sp2') ;
 cdsArrivingLoads.SQL.Add('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser') ;
 cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo)');
 cdsArrivingLoads.SQL.Add(' AS LOINI,') ;

 cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE, ') ;
 cdsArrivingLoads.SQL.Add('CASE WHEN LIP.LogicalInventoryName = ' + QuotedStr('STD') + ' THEN -1') ;
 cdsArrivingLoads.SQL.Add('ELSE isNull(SP.LipNo,-1) END AS LipNo,  isNull(OH.Trading,0) AS Trading,');
 cdsArrivingLoads.SQL.Add('IsNull(cl.Confirmed_LoadNo,0) AS AR_LoadNo') ;

 cdsArrivingLoads.SQL.Add('FROM dbo.SupplierShippingPlan       SP') ;
 cdsArrivingLoads.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SP.LIPNo') ;
 cdsArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	IName.CityNo = SP.ShipToInvPointNo') ;

 cdsArrivingLoads.SQL.Add('inner JOIN dbo.City Loading			ON	Loading.CityNo = SP.LoadingLocationNo') ;
 cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.ShippingPlanNo = SP.ShippingPlanNo');
 cdsArrivingLoads.SQL.Add(' AND LSP.LoadingLocationNo = SP.LoadingLocationNo') ;

 cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Confirmed_Load_EXT cl on ') ;

 cdsArrivingLoads.SQL.Add('cl.Confirmed_LoadNo = lsp.LoadNo AND cl.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo') ;

 cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Loads L ON	LSP.LoadNo 		= L.LoadNo');
 cdsArrivingLoads.SQL.Add('AND     L.supplierno 		= SP.SUPPLIERno');
 cdsArrivingLoads.SQL.Add('AND     L.CustomerNo 		= SP.CustomerNo');


 cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SP.SupplierNo');
 cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SP.CustomerNo');

 cdsArrivingLoads.SQL.Add('Left Outer JOIN dbo.CustomerShippingPlanDetails CSD');
 cdsArrivingLoads.SQL.Add('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = CSD.ShippingPlanNo');
 cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Orders	OH			ON OH.OrderNo = CSH.OrderNo');
 cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client AV_CUST			ON	AV_CUST.ClientNo 	=	CSH.CustomerNo');
 cdsArrivingLoads.SQL.Add('					ON    CSD.CustShipPlanDetailObjectNo = SP.CustShipPlanDetailObjectNo');

 cdsArrivingLoads.SQL.Add('	INNER JOIN dbo.ShippingPlan_ShippingAddress ST');
 cdsArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo');
 cdsArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo');
 cdsArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo');
 cdsArrivingLoads.SQL.Add('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo');
 cdsArrivingLoads.SQL.Add('							AND	ST.Reference		= CSD.Reference');
 cdsArrivingLoads.SQL.Add('Inner Join dbo.UserArrivalPoint uap on uap.PhyInvPointNameNo = ST_ADR.CityNo') ;


 cdsArrivingLoads.SQL.Add('WHERE');

 cdsArrivingLoads.SQL.Add('CSH.CustomerNo = ' +  mtUserPropOwnerNo.AsString) ;
  cdsArrivingLoads.SQL.Add('AND (L.SenderLoadStatus = 2)') ;
  cdsArrivingLoads.SQL.Add('AND uap.UserID = ' + IntToStr(ThisUser.UserID)) ;
 cdsArrivingLoads.SQL.Add('AND ST_ADR.CityNo = ' + IntToStr(dmsContact.GetCityNoOfPIPNo(mtUserPropPIPNo.AsInteger))) ;

 if LONo > -1 then
  cdsArrivingLoads.SQL.Add('AND SP.ShippingPlanNo = '+IntToStr(LONo)) ;
 if LoadNo > -1 then
  cdsArrivingLoads.SQL.Add('AND L.LoadNo = '+IntToStr(LoadNo)) ;


  if(LONo = -1) and (LoadNo = -1) then
  Begin
   cdsArrivingLoads.SQL.Add('AND LSP.LoadNo Not in (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2 ') ;
   cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
   cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo)') ;
  End ;


// if thisuser.UserID = 8 then cdsArrivingLoads.SQL.SaveToFile('cdsArrivingLoads.TXT');
  SomethingChanged := False ;
 End ;
End ;

//make an entry for the load that is confirmed
procedure TfrmLoadArrivals.SetConfirmed_Load_Table(Sender: TObject) ;
Begin
 if MessageDlg('This Confirmation does only insert a record in the Confirmed_Load_EXT table, Continue?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 begin

 with dmArrivingLoads do
 Begin
 Try
 cdsConfirmed_Load.Active:= True ;
 cdsArrivingLoads.Filter:= 'LOADNO = '+cdsArrivingLoadsLOADNO.AsString ;
 cdsArrivingLoads.Filtered:= True ;
  While not cdsArrivingLoads.Eof do
  Begin
   cdsConfirmed_Load.Insert ;
   cdsConfirmed_LoadConfirmed_LoadNo.AsInteger          := cdsArrivingLoadsLOADNO.AsInteger ;
   cdsConfirmed_LoadConfirmed_ShippingPlanNo.AsInteger  := cdsArrivingLoadsLO.AsInteger ;
   cdsConfirmed_LoadNewLoadNo.AsInteger                 := cdsArrivingLoadsLOADNO.AsInteger ;
   cdsConfirmed_LoadNewShippingPlanNo.AsInteger         := cdsArrivingLoadsLO.AsInteger ;
   cdsConfirmed_LoadDateCreated.AsSQLTimeStamp          := DateTimeToSQLTimeStamp(Now) ;
   cdsConfirmed_LoadCreatedUser.AsInteger               := ThisUser.UserID ;
   cdsConfirmed_LoadModifiedUser.AsInteger              := ThisUser.UserID ;
   cdsConfirmed_Load.Post ;
   cdsArrivingLoads.Next ;
  End ;
  if cdsConfirmed_Load.ChangeCount > 0 then
   if cdsConfirmed_Load.ApplyUpdates(0) > 0 then
    ShowMessage('Inmatning av post misslyckades, kontakta support med LO och LastNr.')
     else
      Begin
       cdsArrivingLoads.Refresh ;
       cdsArrivingLoads.Last ;
      End ;

 Finally
  cdsArrivingLoads.Filtered:= False ;
  cdsConfirmed_Load.Active:= False ;
 End ;
 End ; //with
 End ;
End ;

procedure TfrmLoadArrivals.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var //ShippingPlanNo : Integer ;
  Save_Cursor:TCursor;
begin
 if Key <> VK_RETURN then Exit;
 grdLoadsDBTableView1.Controller.ClearSelection ;
 With dmArrivingLoads do
 Begin
  cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex2' ;
  Save_Cursor := Screen.Cursor;
  Try
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
//  if not cdsArrivingLoads.FindKey([StrToIntDef(Trim(Edit1.Text),0)]) then
//  Begin
   cdsArrivingLoads.active:= False ;
   LoadArrivalLoadQuery (StrToIntDef(Trim(Edit1.Text),0), -1) ;
   cdsArrivingLoads.active:= True ;
//   cdsArrivingLoads. .LogChanges:= False ;
   if not cdsArrivingLoads.FindKey([StrToIntDef(Trim(Edit1.Text),0)]) then
   Begin
    ShowMessage('No luck') ;
    SomethingChanged := True ;
   End
   else
    Timer1.Enabled:= True ;
//  End
//  else
//  Timer1.Enabled:= True ;
{  else
  Begin
   ShippingPlanNo := cdsArrivingLoadsLO.AsInteger ;
   While (ShippingPlanNo = cdsArrivingLoadsLO.AsInteger) and
   (cdsArrivingLoads.Eof = False) do
   Begin
    cdsArrivingLoads.Next ;
   End ; //while
   if not cdsArrivingLoads.Eof then
   cdsArrivingLoads.Prior ;
  End ; }

//  Edit1.Text:= '' ;
//  Edit1.SetFocus ;
// Timer1.Enabled:= True ;

 Finally
  cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex1' ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ; //with
end;

procedure TfrmLoadArrivals.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var //LoadNo : Integer ;
  Save_Cursor:TCursor;
begin
 if Key <> VK_RETURN then Exit;
 grdLoadsDBTableView1.Controller.ClearSelection ;
 With dmArrivingLoads do
 Begin
//  cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex1' ;
  Save_Cursor := Screen.Cursor;
  Try
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
//  if not cdsArrivingLoads.FindKey([StrToIntDef(Trim(Edit2.Text),0)]) then
//  begin
   cdsArrivingLoads.Active:= False ;
   LoadArrivalLoadQuery (-1, StrToIntDef(Trim(Edit2.Text),0)) ;
   cdsArrivingLoads.active:= True ;
//   cdsArrivingLoads.LogChanges:= False ;
   if not cdsArrivingLoads.FindKey([StrToIntDef(Trim(Edit2.Text),0)]) then
   Begin
    ShowMessage('No luck') ;
    SomethingChanged := True ;
   End
   else
   Timer2.Enabled:= True ;
//  End
//  else
//  Timer2.Enabled:= True ;
{  else
  Begin
   LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
   While (LoadNo = cdsArrivingLoadsLoadNo.AsInteger) and
   (cdsArrivingLoads.Eof = False) do
   Begin
    cdsArrivingLoads.Next ;
   End ; //while
   if not cdsArrivingLoads.Eof then
   cdsArrivingLoads.Prior ;
  End ; }

//  Edit2.Text:= '' ;
//  Edit2.SetFocus ;
// Timer2.Enabled:= True ;
 Finally
//  cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex3' ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ; //with
end;

procedure TfrmLoadArrivals.PrintSamlingsspecifikation(Sender: TObject;const SamLastNr : Integer);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger < 1 then exit ;

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

procedure TfrmLoadArrivals.PrintSamlingsspecifikation_USA(Sender: TObject;const SamLastNr : Integer);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SAM_LAST_USA.RPT') ;
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

procedure TfrmLoadArrivals.PrintSamlingsspecifikationMedPktNr(Sender: TObject;const SamLastNr : Integer);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger < 1 then exit ;

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

procedure TfrmLoadArrivals.fomdate2Change(Sender: TObject);
begin
  SomethingChanged := True ;
end;

procedure TfrmLoadArrivals.GetMarkedLoads (Sender: TObject) ;
 Var i, RecIDX  : Integer ;
// RecID          : Variant ;
 Save_Cursor    : TCursor;
 Duplicate      : Boolean ;
 samLastnr, y,x : Integer ;
 OutPutVal      : Integer ;
 ColIdx         : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 lbLO_To_Invoice.Items.Clear ;
 with dmArrivingLoads do
 Begin
  grdLoadsDBTableView1.BeginUpdate ;
  grdLoadsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    Duplicate := False ;
    RecIDx:= grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName('LOADNO').Index;
    OutputVal := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];
//    lbPPNo.Items.Add(IntToStr(OutPutVal)) ;

    For y := 0 to lbLO_To_Invoice.Items.Count - 1 do
    Begin
     if IntToStr(OutPutVal) = lbLO_To_Invoice.Items[y] then
     Duplicate := True ;
    End ;
    if Duplicate = False then
    Begin
     lbLO_To_Invoice.Items.Add(IntToStr(OutPutVal)) ;
    End ;
   End ;//for y

  if lbLO_To_Invoice.Items.Count < 1 then
   Begin
    ShowMessage('Måste välja en last') ;
    Exit ;
   End ;

   samLastnr := ThisUser.UserID ; //dmsConnector.NextMaxNo('SamLastReport') ;
   Try
   sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger:= samLastnr ;
   sq_deleteSamLaster.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

   For x:= 0 to lbLO_To_Invoice.Items.Count-1 do
   Begin
    Try
    sq_samLast.ParamByName('SamLastNr').AsInteger := samLastNr ;
    sq_samLast.ParamByName('LoadNo').AsInteger    := StrToInt(lbLO_To_Invoice.Items[x]) ;
    sq_samLast.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
   End ;

 Finally
  grdLoadsDBTableView1.DataController.EndLocate ;
  grdLoadsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfrmLoadArrivals.InsertMarkedLoadsToTempTable (Sender: TObject) ;
 Var  i, RecIDX       : Integer ;
      Save_Cursor     : TCursor;
      ColIdx          : Integer ;
      LIPNo, LoadNo,
      LONo,
      CustomerNo,
      LOAD_STATUS     : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedLoads.Active:= False ;
 mtSelectedLoads.Active:= True ;
 with dmArrivingLoads do
 Begin
  grdLoadsDBTableView1.BeginUpdate ;
  grdLoadsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('LOADNO').Index;
    LoadNo      := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];
    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('LO').Index;
    LONo        := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];
    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('LIPNo').Index;

    if grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx] <> null then
    LIPNo       := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];
    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('CUSTOMERNO').Index;
    CustomerNo  := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('LOAD_STATUS').Index;
    LOAD_STATUS := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];


//    if not mtSelectedLoads.Locate('LoadNo;LONo', VarArrayOf([LoadNo, LONo]), []) then
    if (not mtSelectedLoads.Locate('LoadNo', LoadNo, [])) and (LOAD_STATUS = 2) then
    Begin
     mtSelectedLoads.Insert ;
     mtSelectedLoadsLoadNo.AsInteger    := LoadNo ;
     mtSelectedLoadsLONo.AsInteger      := LONo ;
     mtSelectedLoadsLIPNo.AsInteger     := LIPNo ;
     mtSelectedLoadsCustomerNo.AsInteger:= CustomerNo ;
     mtSelectedLoadsStatus.AsInteger    := 0 ;
     mtSelectedLoads.Post ;
    End ;
   End ;//for y

 Finally
  grdLoadsDBTableView1.DataController.EndLocate ;
  grdLoadsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfrmLoadArrivals.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{ if cds_Props.State in [dsEdit, dsInsert] then
 cds_Props.Post ;
 if cds_Props.ChangeCount > 0 then
 cds_Props.ApplyUpdates(0) ; }

 dm_UserProps.SaveUserProps (Self.Name, dmArrivingLoads.mtUserProp) ;

 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdLoads.Name, grdLoadsDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdPkgs.Name, grdPkgsDBTableView1) ;
 dmArrivingLoads.cdsArrivingLoads.Active  := False ;
 CanClose:= True ;
end;

procedure TfrmLoadArrivals.fomdatePropertiesChange(Sender: TObject);
begin
 SomethingChanged:= True ;
end;

procedure TfrmLoadArrivals.tomdatePropertiesChange(Sender: TObject);
begin
 SomethingChanged:= True ;
end;

procedure TfrmLoadArrivals.acFSExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger <> 2 then
 FormCRViewReport.CreateCo('TALLY_INTERNAL_VER2_NOTE.RPT') 
 else
 Begin
  Try
  dmcSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
  dmcSystem.sq_PkgType_InvoiceByLO.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  FormCRViewReport.CreateCo('TALLY_VER2_NOTE.RPT') ;
 End ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  Try
  dmcSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
  dmcSystem.sq_DelPkgType.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;


procedure TfrmLoadArrivals.acFS_DKExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger <> 2 then
 FormCRViewReport.CreateCo('TALLY_INTERNAL_VER2_NOTE_dk.RPT')
 else
 Begin
  Try
  dmcSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
  dmcSystem.sq_PkgType_InvoiceByLO.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  FormCRViewReport.CreateCo('TALLY_VER2_NOTE_dk.RPT') ;
 End ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  Try
  dmcSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
  dmcSystem.sq_DelPkgType.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;


procedure TfrmLoadArrivals.acPrintSamLastExecute(Sender: TObject);
begin
 GetMarkedLoads (Sender) ;
 if lbLO_To_Invoice.Items.Count > 0 then
  PrintSamlingsspecifikation(Sender, ThisUser.UserID) ;
end;

procedure TfrmLoadArrivals.acPrintSamLastMedPktNrExecute(Sender: TObject);
begin
 GetMarkedLoads (Sender) ;
 if lbLO_To_Invoice.Items.Count > 0 then
  PrintSamlingsspecifikationMedPktNr(Sender, ThisUser.UserID) ;
end;

procedure TfrmLoadArrivals.acPkgInfoExecute(Sender: TObject);
Var frmPkgInfo: TfrmPkgInfo ;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo:= dmArrivingLoads.cdsArrivingPackagesPACKAGE_NO.AsInteger ;
  frmPkgInfo.SupplierCode:= dmArrivingLoads.cdsArrivingPackagesSupplierCode.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
end;


procedure TfrmLoadArrivals.acChangeLoadLayoutExecute(Sender: TObject);
begin
  if grdLoads.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLoads.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfrmLoadArrivals.acChangePkgLayoutExecute(Sender: TObject);
begin
  if grdPkgs.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdPkgs.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfrmLoadArrivals.acSetLoadToConfirmedExecute(Sender: TObject);
begin
 SetConfirmed_Load_Table(Sender) ;
end;

procedure TfrmLoadArrivals.acConfirmedLoadExecute(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
//  if cdsArrivingLoadsObjectType.AsInteger = 2 then
//   ConfirmedORDERLoad(Sender)
//    else
//     Begin
      if grdLoadsDBTableView1.Controller.SelectedRecordCount > 0 then
      Begin
//       if AreMarkedLoadsSameObjectTypeAndNotNormalLOType then
        ConfirmManyINTADDLoads(Sender) ;
      End ;

{        else
         if AreMarkedLoadsSameObjectTypeAndNotIntORAddLOType then
         Begin
          if mtSelectedLoadsOrderType.AsInteger = 0 then
           ConfirmManySALESLoads(Sender)
            else
             Begin
              if AreMarkedLoadsSameTRADINGType then
              Begin
               if cdsArrivingLoadsTrading.AsInteger = 0 then
                ConfirmManyPOLoads(Sender)
                 else
                  ConfirmManyPOTRADINGLoads(Sender) ;
              End //if AreMarkedLoadsSameTRADINGType then
               else
                ShowMessage('Alla markerade laster måste antingen vara trading eller inte.') ;
             End ;
         End
         else
         ShowMessage('Markerade laster måste vara av samma LO typ, (LO, add LO eller interna LO) och samma ordertyp (sales, PO eller interna)');
      End
      else
       if cdsArrivingLoadsObjectType.AsInteger = 2 then
        ConfirmedORDERLoad(Sender)
         else
          ConfirmedINTLoad(Sender) ;
//     End ;
}
 End ; //with
end;

procedure TfrmLoadArrivals.acConfirmedLoadUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acConfirmedLoad.Enabled:= (bcConfirmed.ItemIndex = 0) and (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0)
  and (cdsArrivingLoadsAR_LoadNo.AsInteger = 0)
  and (cdsArrivingLoadsLOAD_STATUS.AsInteger = 2)
  and (grdLoadsDBTableView1.Controller.SelectedRecordCount > 0) ;
 End ;
end;

procedure TfrmLoadArrivals.acPrintSamLastUpdate(Sender: TObject);
begin
 acPrintSamLast.Enabled:= grdLoadsDBTableView1.Controller.SelectedRecordCount > 0 ;
end;

procedure TfrmLoadArrivals.acPrintSamLastMedPktNrUpdate(Sender: TObject);
begin
 acPrintSamLastMedPktNr.Enabled:= grdLoadsDBTableView1.Controller.SelectedRecordCount > 0 ;
end;

procedure TfrmLoadArrivals.acFSUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acFS.Enabled:= (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0) ;
 End ;
end;

procedure TfrmLoadArrivals.acFS_DKUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acFS_DK.Enabled:= (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0) ;
 End ;
end;

procedure TfrmLoadArrivals.acPkgInfoUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acPkgInfo.Enabled:= (cdsArrivingPackages.Active) and (cdsArrivingPackages.RecordCount > 0) ;
 End ; 
end;

procedure TfrmLoadArrivals.bcConfirmedPropertiesChange(Sender: TObject);
begin
 SomethingChanged := True ;
 if bcConfirmed.ItemIndex = 0 then
  Begin
   acConfirmedLoad.Enabled:= True ;
   acUndoAR.Enabled:= False ;
//   MittARDatum.Enabled:= False ;
//   fomdate.Enabled:= False ;
//   tomdate.Enabled:= False ;
  End
  else
  if bcConfirmed.ItemIndex = 1 then
   Begin
    acConfirmedLoad.Enabled:= False ;
    acUndoAR.Enabled:= True ;
//    MittARDatum.Enabled:= False ;
//    fomdate.Enabled:= True ;
//    tomdate.Enabled:= True ;
   End
   else
    Begin
     acConfirmedLoad.Enabled:= False ;
     acUndoAR.Enabled:= True ;
//     MittARDatum.Enabled:= True ;
//     fomdate.Enabled:= True ;
//     tomdate.Enabled:= True ;
    End ;

 acRefreshExecute(Sender) ;
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
  ExportGridToExcel(FileName, grdLoads, False, False, True,'xls');
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
 With dmArrivingLoads do
 Begin
  if mtUserProp.State in [dsEdit, dsInsert] then
   mtUserProp.Post ;
 if bcConfirmed.ItemIndex > 1 then
 Begin
  DecodeDate(mtUserPropStartPeriod.AsDateTime, Year, Month, Day);
  if IsValidDate(Year, Month, Day) = False then
  Begin
   ShowMessage('Ange ett FOM datum') ;
   Exit ;
  End ;
  DecodeDate(mtUserPropEndPeriod.AsDateTime, Year, Month, Day);
  if IsValidDate(Year, Month, Day) = False then
  Begin
   ShowMessage('Ange ett TOM datum') ;
   Exit ;
  End ;
 End ;
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
 RefreshLoads ;

 End ;//With
end;

procedure TfrmLoadArrivals.acExportLoadsToExcelUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acExportLoadsToExcel.Enabled:= (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0) ;
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
  Save_Cursor   := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  cdsArrivingLoads.DisableControls ;
  Try
  InsertMarkedLoadsToTempTable (Sender) ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    Try
    AR_Load(cdsArrivingLoadsLOADNO.AsInteger, 0{Status}, mtUserPropLIPNo.AsInteger, ThisUser.UserID) ;
//    if UndoConfirmLoad then
//    Begin
     mtSelectedLoads.Edit ;
     mtSelectedLoadsStatus.AsInteger  := 1 ;
     mtSelectedLoads.Post ;
    Except
    End ;     
//    End ; //if LoadConfirmedOK then
   End ;//if cdsArrivingLoads.Locate...
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do
 TaBortAnkomstRegistreradeLaster ;
 Finally
  cdsArrivingLoads.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With
end;

procedure TfrmLoadArrivals.acUndoARUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acUndoAR.Enabled:= (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0)
  and (cdsArrivingLoadsAR_LoadNo.AsInteger > 1)
  and (grdLoadsDBTableView1.Controller.SelectedRecordCount > 0) ;
 End ;
end;

(*
procedure TfrmLoadArrivals.ConfirmedINTLoad(Sender: TObject);
Var
  LoadNo, LONo        : Integer ;
  formConfirmINTLoad  : TformConfirmINTLoad;
begin
 With dmArrivingLoads do
 Begin
  if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
  Begin
   Exit ;
  End ;

  Try
  sq_IsLoadConfirmed.Close ;
  sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
  sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
  sq_IsLoadConfirmed.Open ;
  if sq_IsLoadConfirmed.Eof then
  Begin
   mtSelectedLoads.Active             := False ;
   mtSelectedLoads.Active             := True ;
   mtSelectedLoads.Insert ;
   mtSelectedLoadsLoadNo.AsInteger    := dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
   mtSelectedLoadsLONo.AsInteger      := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
   mtSelectedLoadsLIPNo.AsInteger     := -1 ;
   mtSelectedLoadsCustomerNo.AsInteger:= -1 ;
   mtSelectedLoadsStatus.AsInteger    := 0 ;
   mtSelectedLoads.Post ;
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmINTLoad:= TformConfirmINTLoad.Create(Nil);
      Try
       LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
       LONo   := cdsArrivingLoadsLO.AsInteger ;
       formConfirmINTLoad.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmINTLoad.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
       formConfirmINTLoad.ShowModal ;
       if LoadConfirmedOK then
       Begin
        GetIntPrice(-1, 0,-1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End ;
      Finally
       FreeAndNil(formConfirmINTLoad) ;
      End ;
      TaBortAnkomstRegistreradeLaster ;
     End
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
  End //check IS load confirmed
  else

   ShowMessage('Lasten är redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
   +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
  Finally
   sq_IsLoadConfirmed.Close ;
  End ;
 End ; //with
end;

procedure TfrmLoadArrivals.ConfirmedORDERLoad(Sender: TObject);
Var
  LoadNo          : Integer ;
  formConfirmLoad : TformConfirmLoad;
begin
 With dmArrivingLoads do
 Begin
  if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
  Begin
   Exit ;
  End ;

  Try
  sq_IsLoadConfirmed.Close ;
  sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger          := dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
  sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger  := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
  sq_IsLoadConfirmed.Open ;
  if sq_IsLoadConfirmed.Eof then
  Begin
   mtSelectedLoads.Active             := False ;
   mtSelectedLoads.Active             := True ;
   mtSelectedLoads.Insert ;
   mtSelectedLoadsLoadNo.AsInteger    := dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
   mtSelectedLoadsLONo.AsInteger      := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
   mtSelectedLoadsLIPNo.AsInteger     := -1 ;
   mtSelectedLoadsCustomerNo.AsInteger:= -1 ;
   mtSelectedLoadsStatus.AsInteger    := 0 ;
   mtSelectedLoads.Post ;
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmLoad:= TformConfirmLoad.Create(Nil);
      Try
       LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
       formConfirmLoad.OBJECTTYPE         :=  cdsArrivingLoadsOBJECTTYPE.AsInteger ;
       formConfirmLoad.LO_CUSTOMERNO      :=  cdsArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmLoad.LO_SUPPLIERNO      :=  cdsArrivingLoadsSUPPLIERNO.AsInteger ;
       formConfirmLoad.AVROP_CUSTOMERNO   :=  cdsArrivingLoadsAVROP_CUSTOMERNO.AsInteger ;
       formConfirmLoad.LoadNo             :=  cdsArrivingLoadsLOADNO.AsInteger ;
       formConfirmLoad.OrderType          :=  cdsArrivingLoadsOrderType.AsInteger ;
       formConfirmLoad.ShowModal ;
       if formConfirmLoad.dxBarConfirmLoad.Enabled = False then
       Begin
        GetIntPrice(-1, 0,-1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End ;
      Finally
       FreeAndNil(formConfirmLoad) ;
      End ;
      TaBortAnkomstRegistreradeLaster ;
     End
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
  End //check IS load confirmed
  else

   ShowMessage('Lasten är redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
   +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
  Finally
   sq_IsLoadConfirmed.Close ;
  End ;

 End ; //with
end;
  *)
procedure TfrmLoadArrivals.acShowGroupBoxExecute(Sender: TObject);
begin
 if grdLoadsDBTableView1.OptionsView.GroupByBox then
  grdLoadsDBTableView1.OptionsView.GroupByBox:= False
   else
    grdLoadsDBTableView1.OptionsView.GroupByBox:= True ;
end;

procedure TfrmLoadArrivals.acExpandAllExecute(Sender: TObject);
begin
 grdLoadsDBTableView1.ViewData.Expand(True);
end;

procedure TfrmLoadArrivals.acCollapseAllExecute(Sender: TObject);
begin
 grdLoadsDBTableView1.ViewData.Collapse(True);
end;

procedure TfrmLoadArrivals.ConfirmManyINTADDLoads(Sender: TObject);
Var
//  LIPNo                     : Integer ;
//  formConfirmManyIntLoads   : TformConfirmManyIntLoads ;
//  fSelectLIP                : TfSelectLIP ;
  fAnkomstRegProgress       : TfAnkomstRegProgress ;
  Save_Cursor               : TCursor ;
//  ChangeToIMPProduct        : Boolean ;
  ObjectType                : Integer ;
begin
 if MessageDlg('Vill du ankomstregistrera markerade laster till lager '
 + lcPIPNAME.Text + '/' + lcLIPNAME.Text
 + '?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmArrivingLoads do
 Begin
  if (mtUserPropLIPNo.AsInteger > 1) and (not mtUserPropLIPNo.IsNull) then
  Begin
  ObjectType:= mtSelectedLoadsOBJECTTYPE.AsInteger ;
{  if (ObjectType = 1) then // or (ObjectType = 0) then
  Begin
   if MessageDlg('Vill du ändra kvalitet till kvalitet + impregnerat på alla produkter? (i annat fall går varorna till lagret som de är)',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    ChangeToIMPProduct:= True
    else
    ChangeToIMPProduct:= False ;
  End
  else
  ChangeToIMPProduct:= False ; }

//  Save_Cursor := Screen.Cursor;
//  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  InsertMarkedLoadsToTempTable (Sender) ;
//  fSelectLIP:= TfSelectLIP.Create(nil);
  fAnkomstRegProgress:= TfAnkomstRegProgress.Create(nil);
  Try
  grdLoadsDBTableView1.DataController.DataSource:= Nil ;
//  cdsArrivingLoads.DisableControls ;
//  fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger ;
//  fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsCustomerNo.AsInteger ;
//  fSelectLIP.LoadDefaultLager ;
//  if fSelectLIP.ShowModal = mrOK then
//  Begin
//  LIPNo:= fSelectLIP.LIPNo ;
//  if LIPNo < 1 then
//  Begin
//   ShowMessage('Du måste välja ett lager!') ;
//   Exit ;
//  End ;

  fAnkomstRegProgress.Show ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage('Load is not valid.') ;
     Exit ;
    End ;

   Try
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger          := dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger  := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if sq_IsLoadConfirmed.Eof then
    Begin
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
//      formConfirmManyIntLoads:= TformConfirmManyIntLoads.Create(Nil);
      Try
       AR_Load(cdsArrivingLoadsLOADNO.AsInteger, 1{Status}, mtUserPropLIPNo.AsInteger, ThisUser.UserID) ;



//       formConfirmManyIntLoads.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
//       formConfirmManyIntLoads.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
//       formConfirmManyIntLoads.LIPNo              := LIPNo ;

       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;

//Sätt ett nytt datum för paketet
//        if MessageDlg('Vill du ange ett datum för när paket ankomstregistrerades? ',
//         mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//       dmArrivingLoads.SetDateCreatedPkgsVP(mtSelectedLoadsLONo.AsInteger) ;

//       formConfirmManyIntLoads.ConfirmThisLoad (ChangeToIMPProduct, ObjectType) ;
//       TformConfirmanyNormalLoad
//göra det här när alla laster är OK, med nadra ord flyta till efter loopen!
{       if LoadConfirmedOK then
       Begin
        GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End ; //if LoadConfirmedOK then
}

      Except
       On E: Exception do
       Begin
//       dmsSystem.FDoLog(E.Message) ;
        ShowMessage(E.Message);
//       Raise ;
       End ;
      End ;
     End //if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
    End //check IS load confirmed
      else
      ShowMessage('Lasten är redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
       +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsLoadConfirmed.Close ;
   End ;

   End ;//if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster ;
//  End ;//if fSelectLIP.ShowModal = mrOK then

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
//   FreeAndNil(fSelectLIP) ;
   grdLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
//   cdsArrivingLoads.EnableControls ;
//   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
  End
  else
  ShowMessage('Välj lagergrupp att lägga paketen till.') ;
 End ; //with
end;

(*
procedure TfrmLoadArrivals.ConfirmManySALESLoads(Sender: TObject);
Var
  LIPNo                     : Integer ;
  formConfirmanyNormalLoad  : TformConfirmanyNormalLoad ;
//  fSelectLIP                : TfSelectLIP ;
  fAnkomstRegProgress       : TfAnkomstRegProgress;
  Save_Cursor               : TCursor;
begin
 if MessageDlg('Vill du ankomstregistrera markerade laster?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmArrivingLoads do
 Begin
//  Save_Cursor := Screen.Cursor;
//  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  InsertMarkedLoadsToTempTable (Sender) ;

//  fSelectLIP:= TfSelectLIP.Create(nil);
  fAnkomstRegProgress:= TfAnkomstRegProgress.Create(nil);
  Try
  grdLoadsDBTableView1.DataController.DataSource:= Nil ;
//  cdsArrivingLoads.DisableControls ;
//  fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger ;
//  fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsCustomerNo.AsInteger ;
//  fSelectLIP.LoadDefaultLager ;

{  if fSelectLIP.ShowModal = mrOK then
  Begin
  LIPNo:= fSelectLIP.LIPNo ;
  if LIPNo < 1 then
  Begin
   ShowMessage('Du måste välja ett lager!') ;
   Exit ;
  End ; }

  fAnkomstRegProgress.Show ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage('Load is not valid.') ;
     Exit ;
    End ;

   Try
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger          := dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger  := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if sq_IsLoadConfirmed.Eof then
    Begin
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmanyNormalLoad:= TformConfirmanyNormalLoad.Create(Nil);
      Try
//       LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
//       LONo   := cdsArrivingLoadsLO.AsInteger ;
       formConfirmanyNormalLoad.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmanyNormalLoad.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
//Ändring. Nu tas LIPNo från lagergrupp angiven på LO för att den skall hamna i rätt lager i LagerBalansen.
       formConfirmanyNormalLoad.LIPNo              := cdsArrivingLoadsLipNo.AsInteger ;//isNull(SP.LipNo,-1)                     AS LipNo,

//       formConfirmManyIntLoads.Show ;
       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;
       formConfirmanyNormalLoad.ConfirmThisLoad (0 {0 = Not Trading}, -1, -1) ;
//       TformConfirmanyNormalLoad
//göra det här när alla laster är OK, med andra ord flyta till efter loopen!
       if LoadConfirmedOK then
       Begin
        GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End ; //if LoadConfirmedOK then

      Finally
       FreeAndNil(formConfirmanyNormalLoad) ;
      End ;
     End //if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
    End //check IS load confirmed
      else
      ShowMessage('Lasten är redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
       +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsLoadConfirmed.Close ;
   End ;

   End ;//if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster ;
//  End ;//if fSelectLIP.ShowModal = mrOK then

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
//   FreeAndNil(fSelectLIP) ;
   grdLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
//   cdsArrivingLoads.EnableControls ;
//   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;

 End ; //with
end;

procedure TfrmLoadArrivals.ConfirmManyPOLoads(Sender: TObject);
Var
  LIPNo                     : Integer ;
  formConfirmanyNormalLoad  : TformConfirmanyNormalLoad ;
  fSelectLIP                : TfSelectLIP ;
  fAnkomstRegProgress       : TfAnkomstRegProgress;
  Save_Cursor               : TCursor;
begin
 if MessageDlg('Vill du ankomstregistrera markerade laster?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmArrivingLoads do
 Begin
//  Save_Cursor := Screen.Cursor;
//  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  InsertMarkedLoadsToTempTable (Sender) ;
  fSelectLIP:= TfSelectLIP.Create(nil);
  fAnkomstRegProgress:= TfAnkomstRegProgress.Create(nil);
  Try
  grdLoadsDBTableView1.DataController.DataSource:= Nil ;
//  cdsArrivingLoads.DisableControls ;
  fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger ;
  fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsCustomerNo.AsInteger ;
  fSelectLIP.LoadDefaultLager ;

  if fSelectLIP.ShowModal = mrOK then
  Begin
  LIPNo:= fSelectLIP.LIPNo ;
  if LIPNo < 1 then
  Begin
   ShowMessage('Du måste välja ett lager!') ;
   Exit ;
  End ;

  fAnkomstRegProgress.Show ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage('Load is not valid.') ;
     Exit ;
    End ;

   Try
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if sq_IsLoadConfirmed.Eof then
    Begin
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmanyNormalLoad:= TformConfirmanyNormalLoad.Create(Nil);
      Try
//       LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
//       LONo   := cdsArrivingLoadsLO.AsInteger ;
       formConfirmanyNormalLoad.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmanyNormalLoad.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
       formConfirmanyNormalLoad.LIPNo              := LIPNo ;

//       formConfirmManyIntLoads.Show ;
       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;
       formConfirmanyNormalLoad.ConfirmThisLoad(0 {0 = Not Trading}, -1, -1) ;
//       TformConfirmanyNormalLoad
//göra det här när alla laster är OK, med nadra ord flyta till efter loopen!
       if LoadConfirmedOK then
       Begin
        GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End ; //if LoadConfirmedOK then

      Finally
       FreeAndNil(formConfirmanyNormalLoad) ;
      End ;
     End //if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
    End //check IS load confirmed
      else
      ShowMessage('Lasten är redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
       +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsLoadConfirmed.Close ;
   End ;

   End ;//if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster ;
  End ;//if fSelectLIP.ShowModal = mrOK then

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
   FreeAndNil(fSelectLIP) ;
   grdLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
//   cdsArrivingLoads.EnableControls ;
//   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;

 End ; //with
end;
  *)
(*
function TfrmLoadArrivals.SelectAvropsNrAttSkapaSalesLoadMot(const POLONo : Integer) : Integer ;
var fTradingLinkMult: TfTradingLinkMult;
Begin
 With dmArrivingLoads do
 Begin
  fTradingLinkMult:= TfTradingLinkMult.Create(nil) ;
  try
  fTradingLinkMult.POShippingPlanNo:= POLONo ;
  if fTradingLinkMult.ShowModal = mrOK then
   Result:= fTradingLinkMult.cds_AvropLinkAvropsnr.AsInteger
    else
     Result:= -1 ;
  finally
   FreeAndNil(fTradingLinkMult) ;
  end;
 End ;
End ;


procedure TfrmLoadArrivals.ConfirmManyPOTRADINGLoads(Sender: TObject);
Var
  LIPNo, NewLoadNo,
  Sales_LONo                : Integer ;
  formConfirmanyNormalLoad  : TformConfirmanyNormalLoad ;
  fSelectLIP                : TfSelectLIP ;
  fAnkomstRegProgress       : TfAnkomstRegProgress;
  Save_Cursor               : TCursor;
begin
 if MessageDlg('Vill du ankomstregistrera markerade trading laster?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmArrivingLoads do
 Begin
//  Save_Cursor := Screen.Cursor;
//  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  InsertMarkedLoadsToTempTable (Sender) ;
//  fSelectLIP:= TfSelectLIP.Create(nil);
  fAnkomstRegProgress:= TfAnkomstRegProgress.Create(nil);
  Try
  grdLoadsDBTableView1.DataController.DataSource:= Nil ;
//  cdsArrivingLoads.DisableControls ;
//  fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger ;
//  fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsCustomerNo.AsInteger ;
//  fSelectLIP.LoadDefaultLager ;

{  if fSelectLIP.ShowModal = mrOK then
  Begin
  LIPNo:= fSelectLIP.LIPNo ;
  if LIPNo < 1 then
  Begin
   ShowMessage('Du måste välja ett lager!') ;
   Exit ;
  End ; }


  fAnkomstRegProgress.Show ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   LIPNo:= 10206 ;//GetSTDLIP!
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage('Load is not valid.') ;
     Exit ;
    End ;

   Try
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if sq_IsLoadConfirmed.Eof then
    Begin
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmanyNormalLoad:= TformConfirmanyNormalLoad.Create(Nil);
      Try
//       LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
//       LONo   := cdsArrivingLoadsLO.AsInteger ;
       formConfirmanyNormalLoad.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmanyNormalLoad.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
       formConfirmanyNormalLoad.LIPNo              := LIPNo ;

       Sales_LONo:= SelectAvropsNrAttSkapaSalesLoadMot(cdsArrivingLoadsLO.AsInteger) ;

       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;
       if Sales_LONo > 1 then
       Begin
        formConfirmanyNormalLoad.ConfirmThisLoad(1 {1 = Trading}, Sales_LONo, mtSelectedLoadsLoadNo.AsInteger) ;
//       TformConfirmanyNormalLoad
//göra det här när alla laster är OK, med nadra ord flyta till efter loopen!
        if LoadConfirmedOK then
        Begin
         GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
         mtSelectedLoads.Edit ;
         mtSelectedLoadsStatus.AsInteger    := 1 ;
         mtSelectedLoads.Post ;
//         NewLoadNo:= dmsSystem.CopyPOLoadToSalesLoadAndSetPackagesAsNotAvailable(mtLoadShippingPlanNewLoadNo.AsInteger, Sales_LONo, mtSelectedLoadsLoadNo.AsInteger) ;
//         if NewLoadNo > 0 then
//          ShowMessage('Försäljningslastnr ' + inttostr(NewLoadNo) + ' skapad') ;
        End ; //if LoadConfirmedOK then
       End //if Sales_LONO..
       else
       Begin
        ShowMessage('Inköpskontrakt är markerat som trading men ingen länk till försäljningsavrop hittades');
        fSelectLIP:= TfSelectLIP.Create(nil);
        Try
        fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger ;
        fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsCustomerNo.AsInteger ;
        fSelectLIP.LoadDefaultLager ;

        if fSelectLIP.ShowModal = mrOK then
        Begin
          LIPNo:= fSelectLIP.LIPNo ;
          if LIPNo < 1 then
          Begin
           ShowMessage('Du måste välja ett lager!') ;
           Exit ;
          End ;
           formConfirmanyNormalLoad.LIPNo              := LIPNo ;
           formConfirmanyNormalLoad.ConfirmThisLoad(0 {0 = Not Trading}, -1, -1) ;
           if LoadConfirmedOK then
           Begin
            GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
            mtSelectedLoads.Edit ;
            mtSelectedLoadsStatus.AsInteger    := 1 ;
            mtSelectedLoads.Post ;
           End ; //if LoadConfirmedOK then
        End ;//if fSelectLIP.ShowModal = mrOK then
        Finally
         FreeAndNil(fSelectLIP) ;
        End ;
       End ;

      Finally
       FreeAndNil(formConfirmanyNormalLoad) ;
      End ;
     End //if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
    End //check IS load confirmed
      else
      ShowMessage('Lasten är redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
       +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsLoadConfirmed.Close ;
   End ;

   End ;//if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster ;
//  End ;//if fSelectLIP.ShowModal = mrOK then

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
//   FreeAndNil(fSelectLIP) ;
   grdLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
//   cdsArrivingLoads.EnableControls ;
//   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;

 End ; //with
end;
  *)
procedure TfrmLoadArrivals.TaBortAnkomstRegistreradeLaster ;
Begin
 With dmArrivingLoads do
 Begin
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo', mtSelectedLoadsLoadNo.AsInteger, []) then
    Begin
//     cdsArrivingLoads.Delete ;
     cdsArrivingLoads.Edit ;
     if cdsArrivingLoadsAR_LoadNo.AsInteger = 0 then
     cdsArrivingLoadsAR_LoadNo.AsInteger := cdsArrivingLoadsLoadNo.AsInteger
     else
     cdsArrivingLoadsAR_LoadNo.AsInteger := 0 ;
     cdsArrivingLoads.Post ;
    End ;

    mtSelectedLoads.Next ;
  End ;//while
 End ;//with
End ;

procedure TfrmLoadArrivals.grdLoadsDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  LoadAR : Integer ;
begin
 LoadAR := 0 ;
 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('AR_LoadNo').Index] <> null then
 LoadAR := ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('AR_LoadNo').Index] ;
 if LoadAR > 1 then
  AStyle := cxStyleLoadAR ;
end;

function TfrmLoadArrivals.AreMarkedLoadsSameObjectTypeAndNotNormalLOType : Boolean ;
 Var i, RecIDX  : Integer ;
 Save_Cursor    : TCursor;
 ColIdx         : Integer ;
 OBJECTTYPE     : Integer ;
begin
 Result:= False ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedLoads.Active:= False ;
 mtSelectedLoads.Active:= True ;
 with dmArrivingLoads do
 Begin
  grdLoadsDBTableView1.BeginUpdate ;
  grdLoadsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('OBJECTTYPE').Index;
    OBJECTTYPE  := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    if not mtSelectedLoads.Locate('OBJECTTYPE', OBJECTTYPE, []) then
    Begin
     mtSelectedLoads.Insert ;
     mtSelectedLoadsOBJECTTYPE.AsInteger    := OBJECTTYPE ;
     mtSelectedLoads.Post ;
    End ;
   End ;//for y
//Är det fler än en record är valda laster av olika "sort"
 if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1) then
  Result:= False
   else
    if mtSelectedLoadsOBJECTTYPE.AsInteger < 2 then
     Result:= True
      else
       Result:= False ;
 Finally
  grdLoadsDBTableView1.DataController.EndLocate ;
  grdLoadsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

function TfrmLoadArrivals.AreMarkedLoadsSameObjectTypeAndNotIntORAddLOType : Boolean ;
 Var
 i,
 RecIDX  : Integer ;
 Save_Cursor    : TCursor;
 ColIdx         : Integer ;
 OBJECTTYPE,
 OrderType      : Integer ;
begin
 Result:= False ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedLoads.Active:= False ;
 mtSelectedLoads.Active:= True ;
 with dmArrivingLoads do
 Begin
  grdLoadsDBTableView1.BeginUpdate ;
  grdLoadsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('OBJECTTYPE').Index;
    OBJECTTYPE  := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    RecIDx      := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('OrderType').Index;
    OrderType   := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    if not mtSelectedLoads.Locate('OBJECTTYPE;OrderType', VarArrayOf([OBJECTTYPE, OrderType]), []) then
    Begin
     mtSelectedLoads.Insert ;
     mtSelectedLoadsOBJECTTYPE.AsInteger  := OBJECTTYPE ;
     mtSelectedLoadsOrderType.AsInteger   := OrderType ;
     mtSelectedLoads.Post ;
    End ;
   End ;//for y

//Är det fler än en record är valda laster av olika "sort"
  if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1) then
  Result:= False
   else
    if mtSelectedLoadsOBJECTTYPE.AsInteger = 2 then
     Result:= True
      else
       Result:= False ;
 Finally
  grdLoadsDBTableView1.DataController.EndLocate ;
  grdLoadsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

(*
function TfrmLoadArrivals.AreMarkedLoadsSameTRADINGType : Boolean ;
 Var
 i,
 RecIDX  : Integer ;
 Save_Cursor    : TCursor;
 ColIdx         : Integer ;
 OBJECTTYPE,
 Trading      : Integer ;
begin
 Result:= False ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedLoads.Active:= False ;
 mtSelectedLoads.Active:= True ;
 with dmArrivingLoads do
 Begin
  grdLoadsDBTableView1.BeginUpdate ;
  grdLoadsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('OBJECTTYPE').Index;
    OBJECTTYPE  := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    RecIDx      := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('Trading').Index;
    Trading     := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    if not mtSelectedLoads.Locate('OrderType', Trading, []) then
    Begin
     mtSelectedLoads.Insert ;
     mtSelectedLoadsOBJECTTYPE.AsInteger  := OBJECTTYPE ;
     mtSelectedLoadsOrderType.AsInteger   := Trading ;
     mtSelectedLoads.Post ;
    End ;
   End ;//for y

//Är det fler än en record är valda laster av olika "sort"
  if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1) then
  Result:= False
   else
    if mtSelectedLoads.RecordCount = 1 then
     Result:= True ;

 Finally
  grdLoadsDBTableView1.DataController.EndLocate ;
  grdLoadsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;
  *)
procedure TfrmLoadArrivals.acPrintTallyUSNoteExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger < 1 then exit ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger <> 2 then
 FormCRViewReport.CreateCo('TALLY_INT_USA.RPT')
 else
 Begin
  Try
  dmcSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
  dmcSystem.sq_PkgType_InvoiceByLO.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  FormCRViewReport.CreateCo('TALLY_US_NOTE.RPT') ;
 End ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  Try
  dmcSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
  dmcSystem.sq_DelPkgType.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmLoadArrivals.PrintDirectFS(Sender: TObject);
var FormCRPrintOneReport  : TFormCRPrintOneReport;
    A : array of variant;
begin
 if dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger < 1 then exit ;
 FormCRPrintOneReport:= TFormCRPrintOneReport.Create(Nil);
 Try
//CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

 SetLength(A, 1);
 A[0]:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
 if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger <> 2 then
 FormCRPrintOneReport.CreateCo(1, False, False, A, 'TALLY_INTERNAL_VER2_NOTE.RPT')
 else
 Begin
  Try
  dmcSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
  dmcSystem.sq_PkgType_InvoiceByLO.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  FormCRPrintOneReport.CreateCo(1, False, False, A, 'TALLY_VER2_NOTE.RPT') ;
 End ;

  Try
  dmcSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
  dmcSystem.sq_DelPkgType.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 Finally
  FreeAndNil(FormCRPrintOneReport)  ;
 End ;
end;

procedure TfrmLoadArrivals.acPrintDirectFSExecute(Sender: TObject);
Var Save_Cursor  : TCursor;
begin
 with dmArrivingLoads do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  cdsArrivingLoads.DisableControls ;
  Try
  InsertMarkedLoadsToTempTable (Sender) ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    PrintDirectFS(Sender) ;
   End ;//if cdsArrivingLoads.Locate...
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do
 Finally
  cdsArrivingLoads.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With
end;

procedure TfrmLoadArrivals.PrintDirectFS_USA(Sender: TObject);
var FormCRPrintOneReport  : TFormCRPrintOneReport;
    A : array of variant;
begin
 if dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger < 1 then exit ;
 FormCRPrintOneReport:= TFormCRPrintOneReport.Create(Nil);
 Try
//CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

 SetLength(A, 1);
 A[0]:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
 if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger <> 2 then
 FormCRPrintOneReport.CreateCo(1, False, False, A, 'TALLY_INT_USA.RPT')
 else
 Begin
  Try
  dmcSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
  dmcSystem.sq_PkgType_InvoiceByLO.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  FormCRPrintOneReport.CreateCo(1, False, False, A, 'TALLY_US_NOTE.RPT') ;
 End ;

  Try
  dmcSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
  dmcSystem.sq_DelPkgType.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 Finally
  FreeAndNil(FormCRPrintOneReport)  ;
 End ;
end;

procedure TfrmLoadArrivals.acPrintDirectFS_USAExecute(Sender: TObject);
Var Save_Cursor  : TCursor;
begin
 with dmArrivingLoads do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  cdsArrivingLoads.DisableControls ;
  Try
  InsertMarkedLoadsToTempTable (Sender) ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    PrintDirectFS_USA(Sender) ;
   End ;//if cdsArrivingLoads.Locate...
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do
 Finally
  cdsArrivingLoads.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With
end;

procedure TfrmLoadArrivals.acSamlingsFS_USAExecute(Sender: TObject);
begin
 GetMarkedLoads (Sender) ;
 if lbLO_To_Invoice.Items.Count > 0 then
  PrintSamlingsspecifikation_USA(Sender, ThisUser.UserID) ;
end;

procedure TfrmLoadArrivals.Timer1Timer(Sender: TObject);
begin
// grdLoadsDBTableView1.Controller.FocusedRecord.Selected := True;
// grdLoadsDBTableView1.DataController.SetFocus ;
// grdLoads.SetFocus ;
 Edit1.SetFocus ;
 Timer1.Enabled:= False ;
end;

procedure TfrmLoadArrivals.Timer2Timer(Sender: TObject);
begin
// grdLoadsDBTableView1.Controller.FocusedRecord.Selected := True;
// grdLoadsDBTableView1.DataController.SetFocus ;
// grdLoads.SetFocus ;
 Edit2.SetFocus ;
 Timer2.Enabled:= False ;
end;

procedure TfrmLoadArrivals.acGetIntPricesExecute(Sender: TObject);
begin
 with dmArrivingLoads do
 Begin
  InsertMarkedLoadsToTempTable (Sender) ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
//   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
//   Begin
//    if UndoConfirmLoad then
//    Begin
     GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
//     mtSelectedLoads.Edit ;
//     mtSelectedLoadsStatus.AsInteger  := 1 ;
//     mtSelectedLoads.Post ;
//    End ; //if LoadConfirmedOK then
//   End ;//if cdsArrivingLoads.Locate...
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do
 cdsArrivingPackages.Active:= False ;
 cdsArrivingPackages.Close ;
 cdsArrivingPackages.ParamByName('LoadNo').AsInteger          := cdsArrivingLoadsLOADNO.AsInteger ;
 cdsArrivingPackages.ParamByName('ShippingPlanNo').AsInteger  := cdsArrivingLoadsLO.AsInteger ;
 cdsArrivingPackages.Open ;
 cdsArrivingPackages.Active:= True ;
 End ;
end;


procedure TfrmLoadArrivals.acConfirmOneLoadUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acConfirmOneLoad.Enabled:= (bcConfirmed.ItemIndex = 0) and (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0)
  and (cdsArrivingLoadsAR_LoadNo.AsInteger = 0)
  and (cdsArrivingLoadsLOAD_STATUS.AsInteger = 2) ;
 End ;
end;

procedure TfrmLoadArrivals.acPrintExecute(Sender: TObject);
begin
 pmPrint.Popup(300, 200) ;
end;

procedure TfrmLoadArrivals.grdPkgsDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
// Var  PRICE : Double ;
begin
// if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PRICE').Index] <> null then
// PRICE:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PRICE').Index] ;

// if Price = 0 then
// AStyle := cxStyleLoadAR ;

end;

procedure TfrmLoadArrivals.lcLIPNameEnter(Sender: TObject);
begin
 with  dmArrivingLoads do
 Begin
  if (cds_PIP.Active) and (cds_PIP.RecordCount > 0) then
  Begin
//   mtUserPropPIPNo.AsInteger := cds_PIPPIPNO.AsInteger ;
   cds_LIP.Active    := False ;
   cds_LIP.Filter    := 'PIPNo = ' + mtUserPropPIPNo.AsString ;
   cds_LIP.Filtered  := True ;
   cds_LIP.Active    := True ;
   if cds_LIP.RecordCount = 1 then
    Begin
     if mtUserProp.State in [dsBrowse] then
      mtUserProp.Edit ;
     mtUserPropLIPNo.AsInteger  := cds_LIPLIPNo.AsInteger ;
    End ;
  End ;
 End ;
end;

end.
