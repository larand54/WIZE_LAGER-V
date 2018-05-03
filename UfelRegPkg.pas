unit UfelRegPkg ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, VidaType, db, 
  kbmMemTable, StdCtrls, ImgList, SqlTimSt, Buttons, ComCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ActnList, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit,
  cxDBEdit, cxLabel, cxGridBandedTableView, cxGridDBBandedTableView,
  dxStatusBar, dxBar, dxBarExtItems, Menus, cxLookAndFeelPainters,
  cxButtons, cxGridCustomPopupMenu, cxGridPopupMenu, cxCheckBox, FMTBcd,
  SqlExpr, cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  siComp, siLngLnk, System.Actions ;

  Const
    CM_MOVEIT = WM_USER + 1;

type
  TffelRegPkg = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    lbSaveLoad: TdxBarLargeButton;
    lbClose: TdxBarLargeButton;
    pmPkgs: TdxBarPopupMenu;
    lbAddPackage: TdxBarLargeButton;
    lbRemovePackage: TdxBarLargeButton;
    ImageList1: TImageList;
    images1616: TImageList;
    lbPkgInfo: TdxBarLargeButton;
    lbPkgNoSerie: TdxBarLargeButton;
    bbCustomPkgGrid: TdxBarButton;
    pLoadHead: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    bbClearLengths: TdxBarButton;
    bbPkgNoByLO: TdxBarLargeButton;
    Label14: TLabel;
    Label15: TLabel;
    Label3: TLabel;
    eRunNr: TcxTextEdit;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    acSearchRunNo: TAction;
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
    mtUserPropLengthGroup: TStringField;
    mtUserPropLIPName: TStringField;
    mtUserPropPIPNAME: TStringField;
    mtUserPropREGPOINT: TStringField;
    mtUserPropPRODUCER: TStringField;
    mtUserPropOWNER: TStringField;
    mtUserPropVERK: TStringField;
    mtUserPropRoleType: TIntegerField;
    lcOWNER: TcxDBLookupComboBox;
    dsUserProp: TDataSource;
    lcPIPNAME: TcxDBLookupComboBox;
    lcLIPName: TcxDBLookupComboBox;
    lcPRODUCER: TcxDBLookupComboBox;
    lcREGPOINT: TcxDBLookupComboBox;
    lcGradestamp: TcxDBLookupComboBox;
    lcBarcode: TcxDBLookupComboBox;
    mtUserPropGradeStampNo: TIntegerField;
    mtUserPropBarCodeNo: TIntegerField;
    mtUserPropGradestamp: TStringField;
    mtUserPropBarcode: TStringField;
    deRegDate: TcxDBDateEdit;
    beProduct: TcxDBButtonEdit;
    mtUserPropProductDescription: TStringField;
    mtUserPropProductNo: TIntegerField;
    mtUserPropProductGroupNo: TIntegerField;
    acSave: TAction;
    acPkgNoSerie: TAction;
    acPkgNoFrom_LO: TAction;
    acClose: TAction;
    acAppendPkg: TAction;
    acCleanPkgs: TAction;
    Panel6: TPanel;
    grdPaket: TcxGrid;
    grdPaketDBTableView1: TcxGridDBTableView;
    grdPaketDBTableView1PACKAGENO: TcxGridDBColumn;
    grdPaketDBTableView1PRODUCT: TcxGridDBColumn;
    grdPaketDBTableView1PACKAGETYPENO: TcxGridDBColumn;
    grdPaketDBTableView1SUPP_CODE: TcxGridDBColumn;
    grdPaketDBTableView1M3_NET: TcxGridDBColumn;
    grdPaketDBTableView1PCS: TcxGridDBColumn;
    grdPaketDBTableView1M3_NOM: TcxGridDBColumn;
    grdPaketDBTableView1KVM: TcxGridDBColumn;
    grdPaketDBTableView1LOPM: TcxGridDBColumn;
    grdPaketDBTableView1ProductNo: TcxGridDBColumn;
    grdPaketDBTableView1INVENTORY: TcxGridDBColumn;
    grdPaketDBTableView1PCS_PER_LENGTH: TcxGridDBColumn;
    grdPaketDBTableView1OWNER: TcxGridDBColumn;
    grdPaketDBTableView1OWNERNO: TcxGridDBColumn;
    grdPaketDBTableView1LOG_INVENTORY_NO: TcxGridDBColumn;
    grdPaketDBTableView1BAR_CODE: TcxGridDBColumn;
    grdPaketDBTableView1BARCODE_ID: TcxGridDBColumn;
    grdPaketDBTableView1GRADE_STAMP: TcxGridDBColumn;
    grdPaketDBTableView1GRADESTAMPNO: TcxGridDBColumn;
    grdPaketDBTableView1SUPPLIERNO: TcxGridDBColumn;
    grdPaketDBTableView1Old_PackageTypeNo: TcxGridDBColumn;
    grdPaketDBTableView1SurfacingNo: TcxGridDBColumn;
    grdPaketDBTableView1PIP: TcxGridDBColumn;
    grdPaketDBTableView1LoadDetailNo: TcxGridDBColumn;
    grdPaketDBTableView1ACTTHICK: TcxGridDBColumn;
    grdPaketDBTableView1ACTWIDTH: TcxGridDBColumn;
    grdPaketDBTableView1NOMTHICK: TcxGridDBColumn;
    grdPaketDBTableView1NOMWIDTH: TcxGridDBColumn;
    grdPaketDBTableView1ROWNO: TcxGridDBColumn;
    grdPaketDBTableView1Status: TcxGridDBColumn;
    grdPaketDBTableView1StatusText: TcxGridDBColumn;
    grdPaketDBBandedTableView1: TcxGridDBBandedTableView;
    grdPaketDBBandedTableView1PACKAGENO: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1SUPP_CODE: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1ROWNO: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1PRODUCT: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1PCS_PER_LENGTH: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1BAR_CODE: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1GRADE_STAMP: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1M3_NET: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1PCS: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1M3_NOM: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1KVM: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1LOPM: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1Status: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1INVENTORY: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1OWNER: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1PACKAGETYPENO: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1OWNERNO: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1LOG_INVENTORY_NO: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1BARCODE_ID: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1GRADESTAMPNO: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1SUPPLIERNO: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1Old_PackageTypeNo: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1PIP: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1LoadDetailNo: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1ACTTHICK: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1ACTWIDTH: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1NOMTHICK: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1NOMWIDTH: TcxGridDBBandedColumn;
    grdPaketDBBandedTableView1StatusText: TcxGridDBBandedColumn;
    grdPaketLevel1: TcxGridLevel;
    dxStatusBar1: TdxStatusBar;
    Panel2: TPanel;
    bbClearPkgGrid: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    bcLengthOption: TcxComboBox;
    lcLengthGroup: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    grdLengths: TcxGrid;
    grdLengthsDBTableView1: TcxGridDBTableView;
    grdLengthsDBBandedTableView1: TcxGridDBBandedTableView;
    grdLengthsLevel1: TcxGridLevel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxButton1: TcxButton;
    acCleanPcs: TAction;
    acRemoveRow: TAction;
    acPkgInfo: TAction;
    mtUserPropLIPChange: TIntegerField;
    cbLIPChange: TcxDBCheckBox;
    lcVERK: TcxDBLookupComboBox;
    Label4: TLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Bevel1: TBevel;
    cxLabel5: TcxLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    acResetChangeValues: TAction;
    cxButton2: TcxButton;
    mtUserPropSalesRegionNo: TIntegerField;
    mtUserPropVolumeUnitNo: TIntegerField;
    mtUserPropLengthFormatNo: TIntegerField;
    mtUserPropForm: TStringField;
    mtUserPropUserID: TIntegerField;
    mtUserPropLengthVolUnitNo: TIntegerField;
    cdAutoColWidth: TcxDBCheckBox;
    acGetDefaultProduct: TAction;
    mtUserPropSurfacingNo: TIntegerField;
    mtUserPropNOMTHICK: TFloatField;
    mtUserPropGroupByBox: TIntegerField;
    mtUserPropGroupSummary: TIntegerField;
    BitBtn3: TBitBtn;
    acAddLengthColumn: TAction;
    Bevel4: TBevel;
    mtUserPropAgentNo: TIntegerField;
    mtUserPropShipperNo: TIntegerField;
    cxButton3: TcxButton;
    mtUserPropStartPeriod: TDateTimeField;
    mtUserPropEndPeriod: TDateTimeField;
    grdPaketDBBandedTableView1InvNr: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleRedBg: TcxStyle;
    mtUserPropALMM: TFloatField;
    Label5: TLabel;
    lcSkiftLag: TcxDBLookupComboBox;
    cbRegpoint: TcxDBCheckBox;
    cbRegDate: TcxDBCheckBox;
    cbSkiftLag: TcxDBCheckBox;
    mtUserPropSkiftLag: TStringField;
    cbNotUseRule: TcxDBCheckBox;
    cbUpdateProductionStatistics: TcxDBCheckBox;
    cxLabel6: TcxLabel;
    lcPackage_Size: TcxDBLookupComboBox;
    mtUserPropPackage_Size: TStringField;
    mtUserPropFilter1: TStringField;
    mtUserPropFilter2: TStringField;
    siLangLinked_ffelRegPkg: TsiLangLinked;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bcStdLenGrpChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acSearchRunNoExecute(Sender: TObject);
    procedure mtUserPropPIPNoChange(Sender: TField);
    procedure mtUserPropProducerNoChange(Sender: TField);
    procedure beProductPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure mtUserPropAfterInsert(DataSet: TDataSet);
    procedure acSaveExecute(Sender: TObject);
    procedure acPkgNoSerieExecute(Sender: TObject);
    procedure acPkgNoFrom_LOExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acAppendPkgExecute(Sender: TObject);
    procedure acCleanPkgsExecute(Sender: TObject);
    procedure lcLengthGroupPropertiesChange(Sender: TObject);
    procedure grdPaketDBBandedTableView1PACKAGENOPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure grdLengthsDBBandedTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCleanPkgsUpdate(Sender: TObject);
    procedure grdLengthsDBBandedTableView1Editing(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure acCleanPcsExecute(Sender: TObject);
    procedure acRemoveRowExecute(Sender: TObject);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acAppendPkgUpdate(Sender: TObject);
    procedure cbLIPChangePropertiesChange(Sender: TObject);
    procedure mtUserPropVerkNoChange(Sender: TField);
    procedure acResetChangeValuesExecute(Sender: TObject);
    procedure lcOWNERPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cdAutoColWidthPropertiesChange(Sender: TObject);
    procedure acRemoveRowUpdate(Sender: TObject);
    procedure acAddLengthColumnExecute(Sender: TObject);
    procedure grdPaketDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxDBCheckBox1PropertiesChange(Sender: TObject);
    procedure cbRegDatePropertiesChange(Sender: TObject);
    procedure cbSkiftLagPropertiesChange(Sender: TObject);
  private
    { Private declarations }

     fFirstLengthColumn, ManuellLengthColumn : Integer ;
     Unique_No : Integer ; //Used as unique key for package grid
     function  ControlInvDate(Sender: TObject) : Boolean ;
     Function  LengthExistInGrid (const ManLength : String) : Boolean ;
     procedure AddDefaultProduct(Sender: TObject) ;
     procedure AddProduct(Sender: TObject) ;
     procedure RemoveProduct(Sender: TObject) ;
     procedure ReLoadPackageColumnsWithAllLengths(Sender: TObject);
     procedure CloseDataSets;
     procedure InsertPkgSerie(Sender: TObject) ;
     Procedure CreateFieldsInmtPackagesTable(Sender : TObject) ;
     procedure AddPkgsByLONumber (Sender: TObject; const ProductNo, LONo : Integer ) ;
     function IdentifyPackageSupplier(
          const PkgNo : Integer ;
          var PkgSupplierCode: String3;
          Var ProductNo : Integer;
          Var Res_UserName : String) : TEditAction;
    procedure AddPkgToGrid(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer) ;
    procedure CMMoveIt(var Msg: TMessage); message CM_MOVEIT;
  Protected
      procedure ResolvePkgNoAmbiguity(
      Sender : TObject;
      ADataSource : TDataSource;
      var Choice : String3;
      var SupplierNo : Integer;
      var ProductNo : Integer
      );

  public
    { Public declarations }
    procedure  CreateCo ;
    procedure  RemotePkgEntry (PkgNos : TkbmMemTable) ;
  end;

//var  ffelRegPkg: TffelRegPkg;

implementation

uses dmcPkgs, VidaConst, dlgPickPkg_II,
  dmsVidaContact, dmsVidaProduct, 
  VidaUser,  UnitPkgInfo,
  UnitPkgNoSeries, dmcVidaSystem, //UnitGetProduct,
  dmsVidaSystem,
  UnitLONumber, dmsDataConn , uSearchRunNo, dmc_UserProps,
  uAddSpecialLengths, UnitGetProd_II;

{$R *.dfm}

procedure TffelRegPkg.CMMoveIt(var Msg: TMessage);
var AGoForward: Boolean;
begin
   AGoForward := Boolean(Msg.WParam);
   grdLengthsDBBandedTableView1.Controller.EditingController.HideEdit(True);
   grdLengthsDBBandedTableView1.Controller.FocusNextCell(AGoForward)
end;

procedure TffelRegPkg.CreateCo ;
begin
// With dmPkgs do
// Begin
//  mtProdSpecificLengths.Active:= True ;
// End ; //with

  if ThisUser.CompanyNo = 741 then
   cbLIPChange.Enabled  := True
   else
   cbLIPChange.Enabled  := False ;

  if mtUserPropRoleType.AsInteger = cLego then
  Begin
   lcOwner.Enabled    := False ;
   lcPRODUCER.Enabled := False ;
   lcVerk.Enabled     := False ;
   lcPIPNAME.Enabled  := False ;
   lcLIPNAME.Enabled  := False ;
  End ;

  if mtUserPropRoleType.AsInteger = cInternal_Mill then
  Begin
   lcOwner.Enabled    := False ;
   lcPRODUCER.Enabled := False ;
   lcVerk.Enabled     := False ;
   lcPIPNAME.Enabled  := False ;
   lcLIPNAME.Enabled  := False ;
  End ;

  if mtUserPropRoleType.AsInteger = cSalesRegion then
  Begin
   lcOwner.Enabled    := True ;
   lcPRODUCER.Enabled := True ;
   lcVerk.Enabled     := False ;
   lcPIPNAME.Enabled  := False ;
   lcLIPNAME.Enabled  := False ;
  End ;


 bcLengthOption.ItemIndex:= 1 ;
end;

procedure TffelRegPkg.CloseDataSets;
begin
   With dmPkgs do
   Begin
    mtLoadPackages.Active:= False ;
   End ;
end;

procedure TffelRegPkg.FormCreate(Sender: TObject);
begin
  dmPkgs:= TdmPkgs.Create(Nil);
  With dmPkgs do
  Begin
   mtLoadPackages.Active:= True ;
  End ; //with

  dmsSystem.cds_Package_Size.Active := False ;
  dmsSystem.cds_Package_Size.ParamByName('LANGUAGECODE').AsInteger  :=  ThisUser.LanguageID ;
  dmsSystem.cds_Package_Size.Active := True ;
  dmsSystem.cds_Package_Size.Insert ;
  dmsSystem.cds_Package_SizePackageSizeName.AsString  := siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_0' (* 'Ingen ändring' *) ) ;
  dmsSystem.cds_Package_SizePackageSizeNo.AsInteger   := -1 ;
  dmsSystem.cds_Package_Size.Post ;

  dm_UserProps.LoadUserProps (Self.Name, mtuserprop) ;
  mtUserProp.Edit ;
  mtUserPropVerkNo.AsInteger  := mtUserPropOwnerNo.AsInteger ;

  if mtUserPropVolumeUnitNo.AsInteger = 0 then
  Begin
   mtUserPropRegPointNo.Clear ;
   lcREGPOINT.Enabled := False ;
  End;

  if mtUserPropLengthFormatNo.AsInteger = 0 then
  Begin
   mtUserPropRegDate.Clear ;
   deRegDate.Enabled  := False;
  End;

  if mtUserPropAgentNo.AsInteger = 0 then
  Begin
   mtUserPropGroupByBox.Clear ;
   lcSkiftLag.Enabled := False ;
  End;

  // mtUserPropNewItemRow.Clear ;
  mtUserPropNewItemRow.AsInteger  := -1 ;

  mtUserProp.Post ;

  fFirstLengthColumn:= 2 ;
end ;


procedure TffelRegPkg.ResolvePkgNoAmbiguity(
  Sender: TObject;
  ADataSource : TDataSource;
  var Choice : String3;
  var SupplierNo : Integer;
  var ProductNo : Integer
  );
// User has added a package to a load by specifying the package number.
// More than one package with this number is located in inventories owned by the supplier
// of this load. This event handler allows the user to select which of these packages they
// want to add to the load. The supplier code for their choice is returned in the Choice
// arguement, which is set to an empty string if the user declines to make a choice.
begin
  with TfrmPackagePicker_II.Create(Self) do try
    DataSource := ADataSource;
    ShowModal;
    if ModalResult = mrOK then begin
      Choice     := SupplierCodeForSelectedPkg;
      SupplierNo := SupplierNoForSelectedpkg;
      ProductNo  := ProductNoForSelectedpkg ;
      end
    else
      Choice := '';
  finally
    free;
    end;
end;

procedure TffelRegPkg.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
//Var dResult: Integer ;
begin

(*  if FIsModified = True then
   dResult:= MessageDlg('Ändringar är inte sparade, vill du spara nu?',
    mtConfirmation, [mbYes, mbNo,mbCancel], 0)
    else
    dResult:= mrNo ;

    if dResult = mrYes then
    Begin
     lbSaveLoadClick(Sender) ;
     CanClose := True ;
    End
    else
    if dResult = mrNo then
     CanClose := True
     else
      CanClose := False ;
  *)
// if CanClose then
// Begin
   //Remove entries in Pkgs_Res
  With dmsSystem do
  Begin
   Delete_ReservedPkgs (Self.Name) ;
  End ;
  CloseDataSets;
// End ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdPaket.Name, grdPaketDBBandedTableView1) ;
 dm_UserProps.SaveUserProps (Self.Name, mtUserProp) ;
end;

procedure TffelRegPkg.InsertPkgSerie(Sender: TObject) ;
Var     NoOfPkgsInSerie, x : Integer ;
        ResultButton : word ;
        Save_Cursor:TCursor;
        Res_UserName : String ;
        frmPkgNoSeries : TfrmPkgNoSeries ;
begin
 ResultButton:= mrYes ;

 With dmPkgs do
 Begin
  mtLoadPackages.IndexName:= 'mtLoadPackagesIndex5' ;
  mtLoadPackages.DisableControls ;
  frmPkgNoSeries:= TfrmPkgNoSeries.Create(Nil) ;
  Try
   if frmPkgNoSeries.ShowModal = mrOk then
   Begin
    NoOfPkgsInSerie:= StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text))-
    StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;

    if NoOfPkgsInSerie > 100 then
    ResultButton:= MessageDlg(siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_1' (* 'Upp till ' *) )+IntToStr(NoOfPkgsInSerie)+siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_2' (* ' paket kanske hämtas, är det korrekt?' *) ),
    mtConfirmation, [mbYes, mbNo, mbCancel], 0) ;

    if ResultButton = mrYes then
    Begin
     Save_Cursor := Screen.Cursor;
     Screen.Cursor := crSQLWait;    { Show hourglass cursor }
     Try
     sq_OnePkgDetailData.Close ;
     sq_OnePkgDetailData.ParamByName('First_PackageNo').AsInteger:= StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;
     sq_OnePkgDetailData.ParamByName('Last_PackageNo').AsInteger:= StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text)) ;
     sq_OnePkgDetailData.ParamByName('OwnerNo').AsInteger:= mtUserPropOwnerNo.AsInteger ;
     sq_OnePkgDetailData.ParamByName('UserCompanyLoggedIn').AsInteger:= ThisUser.CompanyNo ;

     sq_OnePkgDetailData.Open ;
     While not sq_OnePkgDetailData.Eof do
     Begin
     if dmsSystem.Pkg_Reserved(
          sq_OnePkgDetailDataPACKAGENO.AsInteger,
          sq_OnePkgDetailDataSUPP_CODE.AsString, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
     begin

     if not mtLoadPackages.FindKey([sq_OnePkgDetailDataPACKAGENO.AsInteger, sq_OnePkgDetailDataSUPP_CODE.AsString]) then
     Begin
      Try

      mtLoadPackages.Insert ;
      For x := 0 to 21 do
       mtLoadPackages.Fields.Fields[x].AsVariant:= sq_OnePkgDetailData.Fields.Fields[x].AsVariant ;
      mtLoadPackagesLoadDetailNo.AsInteger:= Unique_No ;
      mtLoadPackages.Post ;
      Unique_No:= Succ(Unique_No) ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ;

      End ; //if mtLoadPackages.FindKey(

      End  //if dmsSystem.Pkg_Reserved(
      else
      Begin
       ShowMessage(siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+sq_OnePkgDetailDataPACKAGENO.AsString+'/'+sq_OnePkgDetailDataSUPP_CODE.AsString+siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_4' (* ' är reserverat av ' *) )+Res_UserName) ;
      End ;

      sq_OnePkgDetailData.Next ;
     End ;
     sq_OnePkgDetailData.Close ;
     Finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
     End ;
    End ;//mrYes
   End ;
  Finally
   FreeAndNil(frmPkgNoSeries) ;//.Free ;
   mtLoadPackages.IndexName:= 'mtLoadPackagesIndex6' ;
   mtLoadPackages.EnableControls ;
  End ;
 End ; // with
End ;

Procedure TffelRegPkg.CreateFieldsInmtPackagesTable(Sender : TObject) ;
Var x                 : Integer ;
    LengthTitle       : String ;
    Save_Cursor       : TCursor;
    Properties        : TcxTextEditProperties;
Begin
 grdLengthsDBBandedTableView1.BeginUpdate ;
 Try
 With dmPkgs do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  if mtPackages.Active then
  mtPackages.Active:= False ;
  Try
   mtPackages.DeleteIndex('IndexRecId') ;
   mtPackages.DeleteIndex('PkgID') ;

   For x:= mtPackages.Fields.Count - 1 downto 0 do
   Begin
    mtPackages.Fields.Remove(mtPackages.Fields.Fields[x]) ;
   End ;

   mtPackages.FieldDefs.Clear ;

   mtPackages.FieldDefs.Add('RecId',ftInteger,0,False) ;
   mtPackages.FieldDefs[cRECID].CreateField(nil);
   mtPackages.FieldByName('RecId').DisplayLabel:= siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_5' (* 'ROWNO' *) ) ;

//1
   mtPackages.FieldDefs.Add('TotalPcs',ftInteger,0,False) ;
   mtPackages.FieldDefs[1].CreateField(nil);
   mtPackages.FieldByName('TotalPcs').DisplayLabel:= siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_6' (* 'STYCKETAL' *) ) ;

   X:= 2 ;//fFirstLengthColumn  ;
   grdLengthsDBBandedTableView1.Bands[0].Visible:= True ;


//        if (mtUserPropProductGroupNo.AsInteger <> -1) then
//         Begin
          if mtUserPropLengthGroupNo.AsInteger > 0 then
           MakeLengthQuery_STD_Lengths (mtUserPropLengthGroupNo.AsInteger)
            else
             Begin
              Exit ;
             End ;
//         End
//          else
//           exit ;
  sq_ProductLengths.Open ;

  While not sq_ProductLengths.Eof do
  Begin
   mtPackages.FieldDefs.Add(sq_ProductLengthsActualLengthMM.AsString,ftInteger,0,False) ;
   mtPackages.FieldDefs[x].CreateField(nil);
   LengthTitle:= Trim(sq_ProductLengthsActualLengthMM.AsString) ;
   mtPackages.FieldByName(sq_ProductLengthsActualLengthMM.AsString).DisplayLabel:= LengthTitle ;
   X:= Succ(x) ;

   sq_ProductLengths.Next ;
  End ;
  sq_ProductLengths.Close ;

  mtPackages.AddIndex('IndexRecId','RecId',[]) ;
  mtPackages.IndexName:= 'IndexRecId' ;

 //Create columns in the grid
  grdLengthsDBBandedTableView1.ClearItems ;
  grdLengthsDBBandedTableView1.DataController.CreateAllItems ;


  For x := 0 to grdLengthsDBBandedTableView1.ColumnCount - 1 do
  Begin
   grdLengthsDBBandedTableView1.Columns[x].Options.Filtering  := False ;
   grdLengthsDBBandedTableView1.Columns[x].Position.BandIndex := 0 ;
   grdLengthsDBBandedTableView1.Columns[x].Width              := 50 ;
   grdLengthsDBBandedTableView1.Columns[x].PropertiesClass    :=  TcxTextEditProperties;
   Properties := grdLengthsDBBandedTableView1.Columns[x].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= False ;
  End ;
  grdLengthsDBBandedTableView1.Columns[0].Visible:= False ;

  grdLengthsDBBandedTableView1.OptionsView.ColumnAutoWidth:= mtUserPropAutoColWidth.AsInteger = 1 ;

  //Set length column props
(*  For x := 0 to grdLengthsDBBandedTableView1.ColumnCount - 1 do
  Begin
//   grdLengthsDBBandedTableView1.Columns[x].PropertiesClass:=  TcxTextEditProperties;
   Properties := grdLengthsDBBandedTableView1.Columns[x].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= False ;
   grdLengthsDBBandedTableView1.Columns[x].Width:= 40 ;
  End ; *)

//  grdPkgs.DestroyColumns ;
//  grdPkgs.KeyField:= 'RecId' ;

//  grdPkgs.CreateDefaultColumns(mtPackages, Self) ;

//  grdPkgs.OptionsDB:=   [edgoCancelOnExit,edgoCanDelete,edgoCanNavigation,edgoConfirmDelete,edgoUseBookmarks, edgoLoadAllRecords] ;

{ For x:= 0 to grdPkgs.ColumnCount - 1 do
 Begin
  grdPkgs.Columns[x].ReadOnly:= False ;
  grdPkgs.Columns[x].Width:= OvcIniFileStore1.ReadInteger('grdPkgs',IntToStr(x), 45) ;
 End ;

 grdPkgs.Columns[cRECID].Visible:= True ;
 grdPkgs.Columns[cRECID].ReadOnly:= True ; }

  mtPackages.Active:= True ;
  mtPackages.Insert ;
  mtPackages.FieldByName('RecId').AsInteger:= 1 ;
  mtPackages.Post ;

 Finally
  dsmtPackages.DataSet:= mtPackages ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ; //with
 Finally
  grdLengthsDBBandedTableView1.EndUpdate ;
 End ;
End ;

procedure TffelRegPkg.cxDBCheckBox1PropertiesChange(Sender: TObject);
begin
 if mtUserPropVolumeUnitNo.AsInteger = 0 then
 Begin
  mtUserPropRegPointNo.Clear ;
  lcREGPOINT.Enabled := False ;
 End
 else
 lcREGPOINT.Enabled := True ;
end;

procedure TffelRegPkg.bcStdLenGrpChange(Sender: TObject);
begin
  dmPkgs.LoadGroupLengths(mtUserPropLengthGroupNo.AsInteger);
  ReLoadPackageColumnsWithAllLengths (Sender) ;
end;

procedure TffelRegPkg.AddPkgsByLONumber (Sender: TObject;const ProductNo, LONo : Integer ) ;
Var x : Integer ;
    Save_Cursor:TCursor;
    Res_UserName : String ;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 With dmPkgs do
 Begin
  if mtLoadPackages.State in [dsEdit, dsInsert] then
  mtLoadPackages.Post ;

 Try
  mtLoadPackages.IndexName:= 'mtLoadPackagesIndex5' ;
  sq_GetPkgsByLONo.Close ;
  sq_GetPkgsByLONo.ParamByName('LONo').AsInteger      := LONo ;
  sq_GetPkgsByLONo.ParamByName('OwnerNo').AsInteger   := mtUserPropOwnerNo.AsInteger ;
  sq_GetPkgsByLONo.ParamByName('ProductNo').AsInteger := ProductNo ;
  sq_GetPkgsByLONo.Open ;
  While not sq_GetPkgsByLONo.Eof do
  Begin
    if dmsSystem.Pkg_Reserved(
    sq_GetPkgsByLONoPACKAGENO.AsInteger,
          sq_GetPkgsByLONoSUPP_CODE.AsString, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
   Begin
   if not mtLoadPackages.FindKey([sq_GetPkgsByLONoPACKAGENO.AsInteger, sq_GetPkgsByLONoSUPP_CODE.AsString]) then
   Begin


    Try
     mtLoadPackages.Insert ;
     For x := 0 to 21 do
      mtLoadPackages.Fields.Fields[x].AsVariant:= sq_GetPkgsByLONo.Fields.Fields[x].AsVariant ;
     mtLoadPackagesLoadDetailNo.AsInteger:= Unique_No ;
     mtLoadPackages.Post ;
     Unique_No:= Succ(Unique_No) ;
    Except
     on eDatabaseError do
     Begin
      Raise ;
      mtLoadPackages.Cancel ;
     End ;
    End ;
   End ; //   if not mtLoadPackages.FindKey(
   End  //if
   else
    ShowMessage(siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+sq_GetPkgsByLONoPACKAGENO.AsString+'/'+sq_GetPkgsByLONoSUPP_CODE.AsString+siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_9' (* '  är reserverat av ' *) )+Res_UserName) ;
   sq_GetPkgsByLONo.Next ;
  End ; //While
  sq_GetPkgsByLONo.Close ;

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
  mtLoadPackages.IndexName:= 'mtLoadPackagesIndex6' ;
  sq_GetPkgsByLONo.Close ;
 End ;

 End ; //With 
End ;

procedure TffelRegPkg.FormDestroy(Sender: TObject);
begin
 FreeAndNil(dmPkgs) ;
end;

function TffelRegPkg.IdentifyPackageSupplier(
  const PkgNo : Integer;
  var PkgSupplierCode: String3;
  Var ProductNo : Integer;
  Var Res_UserName : String) : TEditAction;
const
  NO_USER_HAS_THIS_PACKAGE_RESERVED = '0' ;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
begin
 //check that package is available in inventory and Get supplier code
    PkgSupplierCode := dmsSystem.PkgNoToSuppCode(PkgNo, mtUserPropOwnerNo.AsInteger, ThisUser.CompanyNo, ProductNo);
    if PkgSupplierCode = '' then
    Begin
      Result := eaREJECT;
    End
    else
//check that no user has reserved the package
        if dmsSystem.Pkg_Reserved(
          PkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Result := eaACCEPT ;
          end
        else
        begin
          MessageBeep(MB_ICONEXCLAMATION);
          Result := eaReserved ; //eaREJECT;
        end;
end;

procedure TffelRegPkg.AddPkgToGrid(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer)  ;
var
 x : Integer ;
 Res_UserName : String ;
Begin
 With dmPkgs do
 Begin
  Try
     sq_OneUniquePkg.Close ;
     sq_OneUniquePkg.ParamByName('PackageNo').AsInteger           := PkgNo ;
     sq_OneUniquePkg.ParamByName('SupplierCode').AsString         := PkgSupplierCode ;
     sq_OneUniquePkg.ParamByName('OwnerNo').AsInteger             := mtUserPropOwnerNo.AsInteger ;
     sq_OneUniquePkg.ParamByName('UserCompanyLoggedIn').AsInteger := ThisUser.CompanyNo ;
     sq_OneUniquePkg.ParamByName('LanguageID').AsInteger          := ThisUser.LanguageID ;
     sq_OneUniquePkg.ParamByName('Status').AsInteger              := 1 ;
     sq_OneUniquePkg.Open ;
     if not sq_OneUniquePkg.Eof then
     Begin
     if dmsSystem.Pkg_Reserved(
          sq_OneUniquePkgPACKAGENO.AsInteger,
          sq_OneUniquePkgSUPP_CODE.AsString, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
     begin

      Try
      For x := 0 to 21 do
       mtLoadPackages.Fields.Fields[x].AsVariant  := sq_OneUniquePkg.Fields.Fields[x].AsVariant ;
      mtLoadPackagesLoadDetailNo.AsInteger        := Unique_No ;
//      mtLoadPackages.Post ;
      Unique_No:= Succ(Unique_No) ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ;

      End  //if..
      else
      Begin
       ShowMessage(siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+sq_OnePkgDetailDataPACKAGENO.AsString+'/'+sq_OnePkgDetailDataSUPP_CODE.AsString+siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_9' (* '  är reserverat av ' *) )+Res_UserName) ;
      End ;
     End ; //if not...
     sq_OneUniquePkg.Close ;

  Finally

  End ;
 End ; //with
end;

procedure TffelRegPkg.ReLoadPackageColumnsWithAllLengths(Sender: TObject);
Begin
   if dmPkgs.mtPackages.Active then
   if dmPkgs.mtPackages.RecordCount > 0 then
    Begin
    End ;
   CreateFieldsInmtPackagesTable(Sender) ;
   bcLengthOption.Enabled:= True ;
   lcLengthGroup.Enabled:= True ;
End ;

procedure TffelRegPkg.acSearchRunNoExecute(Sender: TObject);
var fSearchRunNo: TfSearchRunNo;
begin
 fSearchRunNo:= TfSearchRunNo.Create(nil);
 Try
 fSearchRunNo.mtProps.Edit ;
 fSearchRunNo.mtPropsRegPointNo.AsInteger := mtUserPropRegPointNo.AsInteger ;
 fSearchRunNo.mtPropsSupplierNo.AsInteger := mtUserPropProducerNo.AsInteger ;
 fSearchRunNo.mtProps.Post ;
 if fSearchRunNo.ShowModal = mrOK then
 Begin
  eRunNr.Text:= fSearchRunNo.cds_RunNosKrnr.AsString ;
{  dmsPkg.mtProps.Edit ;
  dmsPkg.mtPropsRunNo.AsInteger:= fSearchRunNo.cds_RunNosKrnr.AsInteger ;
  dmsPkg.mtProps.Post ; }
 End ;
 Finally
  FreeAndNil(fSearchRunNo) ;
 End ;
end;

procedure TffelRegPkg.mtUserPropPIPNoChange(Sender: TField);
begin
 With dm_UserProps do
 Begin
  cds_LIP.Active:= False ;
  cds_LIP.ParamByName('PIPNo').AsInteger:= mtUserPropPIPNo.AsInteger ;
  cds_LIP.Active:= True ;
  cds_LIP.First ;
  mtUserPropLIPNo.AsInteger:= cds_LIPLIPNo.AsInteger ;
 End ;
end;

procedure TffelRegPkg.mtUserPropProducerNoChange(Sender: TField);
begin
 With dm_UserProps do
 Begin
  mtUserPropSupplierCode.AsString:= dmsContact.GetClientCode(mtUserPropProducerNo.AsInteger) ;

  cds_RegPoint.Active:= False ;
  cds_RegPoint.ParamByName('ClientNo').AsInteger:= mtUserPropProducerNo.AsInteger ;
  cds_RegPoint.Active:= True ;
  cds_RegPoint.First ;
  mtUserPropRegPointNo.AsInteger:= cds_RegPointRegistrationPointNo.AsInteger ;
 End ;
end;

procedure TffelRegPkg.beProductPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
 if AButtonIndex = 0 then
  AddProduct(Sender)
   else
    if AButtonIndex = 1 then
     RemoveProduct(Sender)
      else
       AddDefaultProduct(Sender) ;
end;

procedure TffelRegPkg.AddDefaultProduct(Sender: TObject) ;
Begin
 With dmPkgs do
 Begin
    mtUserProp.Edit ;
    mtUserPropProductDescription.AsString := mtLoadPackagesPRODUCT.AsString ;
    mtUserPropProductNo.AsInteger         := mtLoadPackagesProductNo.AsInteger ;
//    mtUserPropProductGroupNo.AsInteger    := dmcSystem.cds_ProductsProductGroupNo.AsInteger ;
    mtUserPropSurfacingNo.AsInteger       := mtLoadPackagesSurfacingNo.AsInteger ;
    mtUserProp.Post ;
//    if mtUserPropProductNo.AsInteger > 0 then     CreateFieldsInmtPackagesTable(Sender) ;
 End ;//with
End ;

procedure TffelRegPkg.AddProduct(Sender: TObject) ;
//Var frmGetProduct : TfrmGetProduct ;
    var frmGetProd_II: TfrmGetProd_II;
begin
 //Get product
 With dmPkgs do
 Begin
   frmGetProd_II:= TfrmGetProd_II.Create(Nil);
   Try
   frmGetProd_II.PageControl.HideTabs := True ;
   if frmGetProd_II.ShowModal = mrOk then
   Begin
    if mtUserProp.State in [dsBrowse] then
     mtUserProp.Edit ;
    Try
    mtUserPropProductNo.AsInteger          := dmsSystem.mtMarkedProdProductNo.AsInteger ;
    mtUserPropProductDescription.AsString  := dmsSystem.mtMarkedProdPRODUKTDESC.AsString ;
    mtUserPropProductGroupNo.AsInteger     := dmsSystem.mtMarkedProdProductGroupNo.AsInteger ;

    if dmsSystem.mtMarkedProdSequenceNo.AsInteger = 3 {Ramar} then
    Begin
     mtUserPropInputOption.AsInteger  := INPUT_RAMAR ;
     mtUserPropALMM.AsFloat           := dmsSystem.mtMarkedProdAT.AsFloat * 2 + dmsSystem.mtMarkedProdAW.AsFloat ;
     grdLengths.Enabled := False ;
//     mtLoadPackagesALMM.AsFloat
    End
    else
    Begin
     if mtUserPropInputOption.AsInteger = INPUT_RAMAR then
      mtUserPropInputOption.AsInteger := INPUT_PIECES ;
     mtUserPropALMM.AsFloat := 0 ;
     grdLengths.Enabled := True ;
    End ;

    mtUserProp.Post ;

    Except
      on eDatabaseError do
      Raise ;
    End ;
   End ;
   Finally
    dmsSystem.mtMarkedProd.Active:= False ;
    FreeAndNil(frmGetProd_II) ;
   End ;
 End ;//with
end;

(*
 //Add product
 With dmPkgs do
 Begin
   frmGetProduct:= TfrmGetProduct.Create(Nil);
   Try
   if frmGetProduct.ShowModal = mrOk then
   Begin
    mtUserProp.Edit ;
    mtUserPropProductDescription.AsString := dmcSystem.cds_ProductsProductDisplayName.AsString ;
    mtUserPropProductNo.AsInteger         := dmcSystem.cds_ProductsProductNo.AsInteger ;
    mtUserPropProductGroupNo.AsInteger    := dmcSystem.cds_ProductsProductGroupNo.AsInteger ;
    mtUserProp.Post ;
//    CreateFieldsInmtPackagesTable(Sender) ;
   End ;
   Finally
    dmcSystem.cds_Products.Active:= False ;
    FreeAndNil(frmGetProduct) ;
   End ;
 End ;//with
end;
*)

procedure TffelRegPkg.RemoveProduct(Sender: TObject) ;
begin
 With dmPkgs do
 Begin
  mtUserProp.Edit ;
  mtUserPropProductDescription.AsString := siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_0' (* 'Ingen ändring' *) ) ;
  mtUserPropProductNo.AsInteger         := -1 ;
  mtUserPropProductGroupNo.AsInteger    := -1 ;
  mtUserProp.Post ;
 End ;//with
end;

procedure TffelRegPkg.mtUserPropAfterInsert(DataSet: TDataSet);
begin
 mtUserPropRegDate.AsDateTime           := Now ;
 mtUserPropProductGroupNo.AsInteger     := -1 ;
 mtUserPropProductNo.AsInteger          := -1 ;
 mtUserPropProductDescription.AsString  := siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_0' (* 'Ingen ändring' *) ) ;
 mtUserPropLIPChange.AsInteger          := 0 ;
 mtUserPropVerkNo.AsInteger             := 0 ;
 mtUserPropNewItemRow.AsInteger         := -1 ;
end;

procedure TffelRegPkg.acSaveExecute(Sender: TObject);
const
  LF = #10;
var
  Save_Cursor : TCursor;
  MsgString   : String ;
Begin
 if mtUserPropLengthGroupNo.AsInteger = -1 then
 Begin
  ShowMessage(siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_14' (* 'Du måste välja en längdgrupp (även om inte längder eller antal ändras)' *) ));
  Exit ;
 End ;

 if mtUserPropRegDate.AsDateTime > Now then
 Begin
  ShowMessage(siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_15' (* 'Registreringsdatum får inte vara större än aktuellt datum' *) ));
  Exit ;
 End ;

 if ControlInvDate(Sender) then
 Begin
  if mtUserProp.State in [dsEdit, dsInsert] then
   mtUserProp.Post ;
  MsgString:= siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_16' (* 'Ändra paket mot mätpunkt: ' *) )
  +Trim(lcPRODUCER.Text)
  +'/'+Trim(mtUserPropREGPOINT.AsString) ;

  if mtUserPropLIPChange.AsInteger = 1 then
  MsgString:= MsgString + LF + siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_17' (* 'Ägare:' *) ) + Trim(lcVERK.Text)
  + LF + siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_18' (* 'Lagerplats: ' *) ) + Trim(lcPIPNAME.Text) + '/' + Trim(lcLIPName.Text) ;

  MsgString:= MsgString +LF+siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_19' (* 'Datum: ' *) )+deRegDate.Text ;

 if MessageDlg(MsgString,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  try
   With dmPkgs do
    Begin
     if mtLoadPackages.State in [dsEdit, dsInsert] then
      mtLoadPackages.Post ;
     if ((mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0)) then
     Begin
     if mtPackages.State in [dsEdit, dsInsert] then
      mtPackages.Post ;
      if SaveFelRegPkgs(mtUserProp) then
      Begin
       ShowMessage(siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_20' (* 'Paket ändrade.' *) )) ;
       acCleanPkgsExecute(Sender) ;
      End
      else
      ShowMessage(siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_21' (* 'Problem ändra paket.' *) )) ;
     End
     else
     ShowMessage(siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_22' (* 'Välj paketnr.' *) )) ;

    End ; //with
  finally
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ; //if...

 End //if ControlInvDate(Sender) then
  else
   ShowMessage(siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_23' (* 'Paket, markerade med röd färg, kan inte ändras pga att registreringsdatum är före inventerings eller maxdatum i en inventering där lagergruppen ingår.' *) )) ;
end;

procedure TffelRegPkg.acPkgNoSerieExecute(Sender: TObject);
Begin
 With dmPkgs do
 Begin
  Begin
  if mtLoadPackages.State <> dsBrowse then
   Try
   mtLoadPackages.Post ;
   Except
    on eDatabaseError do
    Begin
     Raise ;
    End ;
   End ;
   InsertPkgSerie(Sender) ;
  End ;
 End ;
End ;

procedure TffelRegPkg.acPkgNoFrom_LOExecute(Sender: TObject);
Var ProductNo : Integer ;
    fLONumber: TfLONumber;
begin
 fLONumber:= TfLONumber.Create(Nil);
 Try
 if fLONumber.ShowModal = mrOK then
 Begin
  ProductNo := dmPkgs.cds_Prod_In_LOPRODUCTNO.AsInteger ;
  AddPkgsByLONumber (Sender, ProductNo, StrToIntDef(Trim(fLONumber.eLONo.Text),0) ) ;
 End ;
 Finally
  FreeAndNil(fLONumber) ;
 End ;
end;

procedure TffelRegPkg.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TffelRegPkg.acAppendPkgExecute(Sender: TObject);
begin
 dmPkgs.mtLoadPackages.Append ;
 grdPaket.SetFocus ;
end;

procedure TffelRegPkg.acCleanPkgsExecute(Sender: TObject);
begin
 With dmPkgs do
 Begin
  mtLoadPackages.Active:= False ;
  mtLoadPackages.Active:= True ;
  ROWNO:= 1 ;
 End ;
end;

procedure TffelRegPkg.lcLengthGroupPropertiesChange(Sender: TObject);
begin
 CreateFieldsInmtPackagesTable(Sender) ;
end;

procedure TffelRegPkg.grdPaketDBBandedTableView1PACKAGENOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  NewValue: string;
  PkgSupplierCode: String3;
  Action: TEditAction;
  ProductNo : Integer ;
  Save_Cursor:TCursor;
  Res_UserName : String ;
begin

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }
   NewValue := DisplayValue ;// TdxTreeList((Sender as TdxTreeListColumn).TreeList).EditingText;

   Action := IdentifyPackageSupplier(
      StrToInt(NewValue),
      PkgSupplierCode,
      ProductNo, Res_UserName );


  if Action = eaACCEPT then
  Begin
   AddPkgToGrid(Sender, StrToInt(NewValue),PkgSupplierCode, ProductNo) ;
   Error:= False ;
{   if mtUserPropProductNo.AsInteger = -1 then
   Begin
    mtUserProp.Edit ;
    mtUserPropProductDescription.AsString := dmcSystem.GetProductDescProductDisplayName (dmPkgs.mtLoadPackagesProductNo.AsInteger, dmPkgs.fProductGroupNo) ;
    mtUserPropProductNo.AsInteger         := dmcSystem.cds_ProductsProductNo.AsInteger ;
    mtUserPropProductGroupNo.AsInteger    := dmcSystem.cds_ProductsProductGroupNo.AsInteger ;
    mtUserProp.Post ;

    CreateFieldsInmtPackagesTable(Sender) ;
   End ; }
  End
   else
   if Action = eaREJECT then
    Begin
     ErrorText:= siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_24' (* 'Package number ' *) )+NewValue+siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_25' (* ' does not exist' *) ) ;
     Error:= True ;
    End
    else
   if Action = eaReserved then
    Begin
     ErrorText:= siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_24' (* 'Package number ' *) )+NewValue+siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_27' (* ' is reserved by ' *) )+Res_UserName ;
     Error:= True ;
    End ;

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   end; 
end;

procedure TffelRegPkg.grdLengthsDBBandedTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
 Try
  if AEdit is TcxCustomTextEdit then
    with TcxCustomTextEdit(AEdit) do begin
      if (Key = VK_RIGHT) and (CursorPos=Length(TcxCustomTextEdit(AEdit).Text)) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(True), 0)
      else if (Key = VK_LEFT) and (CursorPos=0) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(False), 0);
    end;
 Except
 End ;
end;

procedure TffelRegPkg.acSaveUpdate(Sender: TObject);
begin
 With dmPkgs do
 Begin
  acSave.Enabled:= (mtLoadPackages.Active) and ((mtLoadPackages.RecordCount > 0)
  or (mtLoadPackages.State in [dsEdit, dsInsert])) ;
 End ;
end;

procedure TffelRegPkg.acCleanPkgsUpdate(Sender: TObject);
begin
 With dmPkgs do
 Begin
  acCleanPkgs.Enabled:= (mtLoadPackages.Active) and ((mtLoadPackages.RecordCount > 0)
  or (mtLoadPackages.State in [dsEdit, dsInsert])) ;
 End ;
end;

procedure TffelRegPkg.grdLengthsDBBandedTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
 dmPkgs.SummarizePkg ;
end;

procedure TffelRegPkg.acCleanPcsExecute(Sender: TObject);
begin
 With dmPkgs do
 Begin
  if mtPackages.Active then
  Begin
   mtPackages.Active:= False ;
   mtPackages.Active:= True ;
  End
  else
  mtPackages.Active:= True ;

  mtPackages.Insert ;
  mtPackages.FieldByName('RecId').AsInteger := 1 ;
  mtPackages.Post ;
 End ;
end;

procedure TffelRegPkg.acRemoveRowExecute(Sender: TObject);
begin
 With dmPkgs do
 Begin
  if (mtLoadPackages.Active) and (mtLoadPackages.RecordCount > 0) then
  mtLoadPackages.Delete ;
 End ;
end;

procedure TffelRegPkg.acPkgInfoExecute(Sender: TObject);
Var frmPkgInfo : TfrmPkgInfo ;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo:= dmPkgs.mtLoadPackagesPackageNo.AsInteger ;
  frmPkgInfo.SupplierCode:= dmPkgs.mtLoadPackagesSUPP_CODE.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
end;

procedure TffelRegPkg.FormShow(Sender: TObject);
begin
 dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdPaket.Name, grdPaketDBBandedTableView1) ;
 CreateFieldsInmtPackagesTable(Sender) ;
end;

procedure TffelRegPkg.acAppendPkgUpdate(Sender: TObject);
begin
 acAppendPkg.Enabled:= (mtUserProp.Active) and (mtUserPropOwnerNo.AsInteger > 0)
 and (mtUserPropProducerNo.AsInteger > 0) ;// and (mtUserPropRegPointNo.AsInteger > 0) ;
end;

procedure TffelRegPkg.cbLIPChangePropertiesChange(Sender: TObject);
begin
 if cbLIPChange.Checked then
 Begin
  if mtUserPropRoleType.AsInteger = cLego then
  Begin
   lcVerk.Enabled     := False ;
   lcPIPNAME.Enabled  := False ;
   lcLIPNAME.Enabled  := True ;
  End
  else
  Begin
   lcPIPNAME.Enabled := True ;
   lcLIPName.Enabled := True ;
   lcVERK.Enabled    := True ;
  End ;
 End
 else
 Begin
  lcPIPNAME.Enabled := False ;
  lcLIPName.Enabled := False ;
  lcVERK.Enabled    := False ;
 End ;
end;

procedure TffelRegPkg.cbRegDatePropertiesChange(Sender: TObject);
begin
 if mtUserPropLengthFormatNo.AsInteger = 0 then
 Begin
  mtUserPropRegDate.Clear ;
  deRegDate.Enabled  := False ;
 End
 else
 deRegDate.Enabled  := True ;
end;

procedure TffelRegPkg.cbSkiftLagPropertiesChange(Sender: TObject);
begin
 if mtUserPropAgentNo.AsInteger = 0 then
 Begin
  mtUserPropGroupByBox.Clear ;
  lcSkiftLag.Enabled := False ;
 End
  else
   lcSkiftLag.Enabled := True ;
end;

procedure TffelRegPkg.mtUserPropVerkNoChange(Sender: TField);
begin
{ if mtUserPropVerkNo.AsInteger <> mtUserPropOwnerNo.AsInteger  then
 Begin
  cbLIPChange.Checked:= True ;
 End ; }

 With dm_UserProps do
 Begin
  cds_PIP.Active:= False ;
  cds_PIP.ParamByName('OwnerNo').AsInteger:= mtUserPropVerkNo.AsInteger ;
  if mtUserPropRoleType.AsInteger = cLego then
  cds_PIP.ParamByName('LegoOwnerNo').AsInteger:= mtUserPropVerkNo.AsInteger
  else
  cds_PIP.ParamByName('LegoOwnerNo').AsInteger:= mtUserPropVerkNo.AsInteger ;

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
  mtUserPropPIPNo.AsInteger:= cds_PIPPIPNO.AsInteger ;
 End ;
end;

procedure TffelRegPkg.acResetChangeValuesExecute(Sender: TObject);
begin
 if mtUserProp.State in [dsBrowse] then
 mtUserProp.Edit ;
 mtUserPropVerkNo.AsInteger             := mtUserPropOwnerNo.AsInteger ;
 mtUserPropGradeStampNo.AsInteger       := 0 ;
 mtUserPropBarCodeNo.AsInteger          := 0 ;
 mtUserPropLIPChange.AsInteger          := 0 ;
 mtUserPropProductDescription.AsString  := siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_0' (* 'Ingen ändring' *) ) ;
 mtUserPropProductNo.AsInteger          := -1 ;
 mtUserPropProductGroupNo.AsInteger     := -1 ;
 mtUserPropNewItemRow.AsInteger         := -1 ;
 mtUserProp.Post ;
end;

procedure TffelRegPkg.lcOWNERPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
 With dmPkgs do
 Begin
  if (mtLoadPackages.Active) and (mtLoadPackages.RecordCount > 0) then
  Begin
   Error := True ;
   ErrorText:= siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_29' (* 'Får inte ändra ägare om paket finns i tabellen' *) ) ;
  End
   else
    Error := False ;
 End ;
end;

procedure TffelRegPkg.RemotePkgEntry (PkgNos : TkbmMemTable) ;
Var     //NoOfPkgsInSerie,
        x                   : Integer ;
        ResultButton        : word ;
        Save_Cursor         : TCursor;
        Res_UserName        : String ;
begin
 ResultButton:= mrYes ;
 With dmPkgs do
 Begin
  mtUserProp.Edit ;
  mtUserPropOwnerNo.AsInteger     := PkgNos.FieldByName('OwnerNo').AsInteger ;
//  mtUserPropProducerNo.AsInteger  := PkgNos.FieldByName('OwnerNo').AsInteger ;
//  mtUserPropPIPNo.AsInteger:= PkgNos.FieldByName('PIPNo').AsInteger ;
  mtUserProp.Post ;
  mtLoadPackages.IndexName    := 'mtLoadPackagesIndex5' ;
  mtLoadPackages.DisableControls ;
  Try
   Save_Cursor := Screen.Cursor;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   Try

   PkgNos.First ;
   While not PkgNos.Eof do
   Begin
    if dmsSystem.Pkg_Reserved(
          PkgNos.FieldByName('PACKAGENO').AsInteger,
          PkgNos.FieldByName('SUPP_CODE').AsString, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
    Begin
     if not mtLoadPackages.FindKey([PkgNos.FieldByName('PACKAGENO').AsInteger, PkgNos.FieldByName('SUPP_CODE').AsString]) then
     Begin
      Try

      sq_OneUniquePkg.Close ;
      sq_OneUniquePkg.ParamByName('PackageNo').AsInteger           := PkgNos.FieldByName('PACKAGENO').AsInteger ;
      sq_OneUniquePkg.ParamByName('SupplierCode').AsString         := PkgNos.FieldByName('SUPP_CODE').AsString ;
      sq_OneUniquePkg.ParamByName('OwnerNo').AsInteger             := PkgNos.FieldByName('OwnerNo').AsInteger ;
      sq_OneUniquePkg.ParamByName('UserCompanyLoggedIn').AsInteger := ThisUser.CompanyNo ;
      sq_OneUniquePkg.ParamByName('LanguageID').AsInteger          := ThisUser.LanguageID ;
      sq_OneUniquePkg.ParamByName('Status').AsInteger              := PkgNos.FieldByName('Status').AsInteger ;
      sq_OneUniquePkg.Open ;
      if not sq_OneUniquePkg.Eof then
      Begin
        mtLoadPackages.Insert ;
        For x := 0 to 21 do
         mtLoadPackages.Fields.Fields[x].AsVariant  := sq_OneUniquePkg.Fields.Fields[x].AsVariant ;
        mtLoadPackagesLoadDetailNo.AsInteger        := Unique_No ;
        mtLoadPackages.Post ;
      End;
      Unique_No := Succ(Unique_No) ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ;

     End ; //if mtLoadPackages.FindKey(

    End  //if dmsSystem.Pkg_Reserved(
     else
     Begin
      ShowMessage(siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+PkgNos.FieldByName('PACKAGENO').AsString+'/'+PkgNos.FieldByName('SUPP_CODE').AsString+siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_31' (* ' är reserverad av ' *) )+Res_UserName) ;
     End ;

    PkgNos.Next ;
   End ;//While
   Finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   End ;

  Finally
   mtLoadPackages.IndexName:= 'mtLoadPackagesIndex6' ;
   mtLoadPackages.EnableControls ;
  End ;
 End ; // with
End ;

procedure TffelRegPkg.cdAutoColWidthPropertiesChange(Sender: TObject);
begin
 grdLengthsDBBandedTableView1.OptionsView.ColumnAutoWidth:= mtUserPropAutoColWidth.AsInteger = 1 ;
end;

procedure TffelRegPkg.acRemoveRowUpdate(Sender: TObject);
begin
 With dmPkgs do
 Begin
  acRemoveRow.Enabled:= (mtLoadPackages.Active) and ((mtLoadPackages.RecordCount > 0)
  or (mtLoadPackages.State in [dsEdit, dsInsert])) ;
 End ;
end;

Function TffelRegPkg.LengthExistInGrid (const ManLength : String) : Boolean ;
Var x : Integer ;
Begin
 Result:= False ;
 With dmPkgs do
 Begin For x := fFirstLengthColumn to mtPackages.FieldCount - 1 do
  Begin
   if mtPackages.Fields.Fields[x].DisplayLabel = ManLength then
    Result:= True ;
  End ;
 End ;//With
End ;

procedure TffelRegPkg.acAddLengthColumnExecute(Sender: TObject);
Var AColumn             : TcxGridDBBandedColumn;
    fAddSpecialLengths  : TfAddSpecialLengths;
    x                   : Byte ;
    s                   : String ;
    CurrentLengths      : TStringList ;


function Pad(const s : String) : String ;
Var Dec : Byte ;
Begin
 //1234.4
 //999
 Dec:= Pos(',',S) ;
 if Pos(',',S) > 0 then
 Begin
  if Length(Copy(S,1,Dec-1)) < 4 then
  Result:= '0'+S
  else
  Result:= S ;
 End
 else
 Begin
  if Length(S) < 4 then
  Result:= '0'+S
  else
  Result:= S ;
 End ;

End ;

begin
// With dmsPkg do
 With dmPkgs do
 Begin
  CurrentLengths:= TStringList.Create ;
  Try

  fAddSpecialLengths:= TfAddSpecialLengths.Create(nil);

  For x := fFirstLengthColumn to mtPackages.FieldCount - 1 do
   fAddSpecialLengths.lbSpecialLengths.Items.Add(Pad(mtPackages.Fields.Fields[x].DisplayLabel)) ;

  For x := fFirstLengthColumn to mtPackages.FieldCount - 1 do
   CurrentLengths.Add(Pad(mtPackages.Fields.Fields[x].DisplayLabel)) ;

  CreateFieldsInmtPackagesTable(Sender) ;

  For x := mtPackages.FieldCount - 1 downto fFirstLengthColumn do
  Begin
   mtPackages.Fields.Remove(mtPackages.Fields.Fields[x]) ;
   mtPackages.FieldDefs[x].Free ;

   grdLengthsDBBandedTableView1.Columns[x].Free ;
  End ;


  mtPackages.Active:= False ;
  ManuellLengthColumn:= fFirstLengthColumn ;
  Try
   if fAddSpecialLengths.ShowModal = mrOK then
   Begin
    For x := 0 to fAddSpecialLengths.lbSpecialLengths.Items.Count - 1 do
    Begin
     s := fAddSpecialLengths.lbSpecialLengths.Items[x] ;
     if not LengthExistInGrid (s {fAddSpecialLengths.lbSpecialLengths.Items[x]}) then
     Begin
      mtPackages.FieldDefs.Add(S,ftInteger,0,False) ;
      mtPackages.FieldDefs[ManuellLengthColumn+x].CreateField(nil);

      AColumn                       := grdLengthsDBBandedTableView1.CreateColumn ;
      AColumn.Options.Filtering     := False ;
      AColumn.DataBinding.FieldName := S ;
      AColumn.Position.BandIndex    := 0 ;
     End
      else
       ShowMessage(siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_32' (* 'Längd ' *) )+fAddSpecialLengths.lbSpecialLengths.Items[x]+siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_33' (* ' finns redan i tabellen.' *) )) ;
    End ;//x
   End //if fAddSpecialLengths
   else
   Begin
    For x := 0 to CurrentLengths.Count - 1 do
    Begin
     s := CurrentLengths.Strings[x] ;
     if not LengthExistInGrid (s {fAddSpecialLengths.lbSpecialLengths.Items[x]}) then
     Begin
      mtPackages.FieldDefs.Add(S,ftInteger,0,False) ;
      mtPackages.FieldDefs[ManuellLengthColumn+x].CreateField(nil);

      AColumn                       := grdLengthsDBBandedTableView1.CreateColumn ;
      AColumn.Options.Filtering     := False ;
      AColumn.DataBinding.FieldName := S ;
      AColumn.Position.BandIndex    := 0 ;
     End
      else
       ShowMessage(siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_32' (* 'Längd ' *) )+CurrentLengths.Strings[x]+siLangLinked_ffelRegPkg.GetTextOrDefault('IDS_33' (* ' finns redan i tabellen.' *) )) ;
    End ;//x
   End ;//else


  Finally
   FreeAndNil(fAddSpecialLengths) ;
  End ;

  mtPackages.Active:= True ;
  mtPackages.Insert ;
  mtPackages.FieldByName('RecId').AsInteger:= 1 ;
  mtPackages.Post ;  

  Finally
   CurrentLengths.Free ;
  End ;
 End ;//With
end;

function TffelRegPkg.ControlInvDate(Sender: TObject) : Boolean ;
const
  LF = #10;
Var
    LastInvNr   : Integer ;
    InvDate     : TDateTime ;
    MaxDateMsg  : String ;
Begin
 With dmPkgs do
 Begin
  mtLoadPackages.DisableControls ;
  Try
  if mtLoadPackages.State in [dsEdit, dsInsert] then
  mtLoadPackages.Post ;

  Result  := True ;

  if mtUserPropShipperNo.AsInteger = 1 then
  Begin
    mtLoadPackages.First ;
    While not mtLoadPackages.Eof do
    Begin
     LastInvNr  := dmsSystem.IsRegDateBeforeInvDate(mtLoadPackagesLOG_INVENTORY_NO.AsInteger, Self.mtUserPropRegDate.AsDateTime, InvDate, MaxDateMsg) ;
     if LastInvNr > -1 then
     Begin
      mtLoadPackages.Edit ;
      mtLoadPackagesInvNr.AsInteger := LastInvNr ;
      mtLoadPackages.Post ;
      Result  := False ;
     End ;
     mtLoadPackages.Next ;
    End ;
  End;

  Finally
   mtLoadPackages.EnableControls ;
  End ;
 End ;//With
end;

procedure TffelRegPkg.grdPaketDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  aColumn : TcxCustomGridTableItem;
  aValue  : Variant;
begin
 aColumn :=(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('InvNr');
 if (ARecord.Values[aColumn.Index] <> null) and (AItem <> nil) then
 Begin
  aValue := ARecord.Values[aColumn.Index];

  if (aValue > 0)  then
  AStyle:= cxStyleRedBg ;
 End ;
end;

end.
