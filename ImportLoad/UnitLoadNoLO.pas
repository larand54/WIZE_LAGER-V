unit UnitLoadNoLO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxCntner,

  VidaType, db,
  kbmMemTable, StdCtrls, ImgList, SqlTimSt, cxPC, cxControls,
  Grids, DBGrids, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, ActnList, cxGraphics, cxLabel,
  cxImageComboBox, cxLookAndFeels, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo,
  dxBarExtItems, cxGroupBox, cxRadioGroup, Buttons, Menus,
  cxLookAndFeelPainters, cxButtons ;

type
  TfLoadNoLO = class(TForm)
    dxBarManager1: TdxBarManager;
    lbSaveLoad: TdxBarLargeButton;
    lbClose: TdxBarLargeButton;
    pmPkgs: TdxBarPopupMenu;
    lbAddPackage: TdxBarLargeButton;
    lbRemovePackage: TdxBarLargeButton;
    lbDeleteLoad: TdxBarLargeButton;
    pmLONumber: TdxBarPopupMenu;
    ImageList1: TImageList;
    images1616: TImageList;
    siPrint: TdxBarSubItem;
    lbFS: TdxBarLargeButton;
    lbDeletePkg: TdxBarLargeButton;
    lbRemoveAllPkgs: TdxBarLargeButton;
    lbDeleteALLPkgs: TdxBarLargeButton;
    lbUndo: TdxBarLargeButton;
    lbPkgInfo: TdxBarLargeButton;
    bbCustomPkgGrid: TdxBarButton;
    ppmenuLO_Lines: TdxBarPopupMenu;
    bbPickPkgNos: TdxBarButton;
    ActionList1: TActionList;
    acInsertPkgToInventory: TAction;
    acInsertAllPkgsToInventory: TAction;
    acRemovePkgFromSystem: TAction;
    acRemoveAllPkgsFromSystem: TAction;
    acUndoPkgOperation: TAction;
    acPkgInfo: TAction;
    acAddPkg: TAction;
    acPickPkgNos: TAction;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    PanelPackages: TPanel;
    Panel2: TPanel;
    acSaveLoad: TAction;
    Panel6: TPanel;
    Panel7: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    cxLookAndFeelController1: TcxLookAndFeelController;
    grdPkgsLevel1: TcxGridLevel;
    grdPkgs: TcxGrid;
    grdPkgsDBBandedTableView1: TcxGridDBBandedTableView;
    grdPkgsDBBandedTableView1LoadNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LoadDetailNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PRODUCT: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PACKAGENO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1NoOfPackages: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PACKAGETYPENO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SupplierCode: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PackageOK: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ProblemPackageLog: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1CreatedUser: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ModifiedUser: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1DateCreated: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1M3_NET: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PCS: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1M3_NOM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1MFBM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1KVM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LOPM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1DefaultCustShipObjectNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PCS_PER_LENGTH: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1NoOfLengths: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ALMM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ActualThicknessMM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ActualWidthMM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1MainGradeNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1OverrideMatch: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Pkg_State: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Pkg_Function: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Changed: TcxGridDBBandedColumn;
    acDeleteLoad: TAction;
    acPrintFS: TAction;
    acPktNrSerie: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleYellow: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleAqua: TcxStyle;
    cxStyleBlue: TcxStyle;
    acChangePKGLayout: TAction;
    cxStyleSilver: TcxStyle;
    grdPkgsDBBandedTableView1Defsspno: TcxGridDBBandedColumn;
    dxBarLargeButton1: TdxBarLargeButton;
    acInmatningsrad: TAction;
    dxBarButton1: TdxBarButton;
    acImportPkgs: TAction;
    acMakeInkopsPaket: TAction;
    dxBarButton2: TdxBarButton;
    dxPageControl1: TcxPageControl;
    tsLoadData: TcxTabSheet;
    pLoadHead: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    detLoaded: TcxDBDateEdit;
    imgcbStatus: TcxDBImageComboBox;
    teLoadID: TcxDBTextEdit;
    bcPhysInventory: TcxDBLookupComboBox;
    eLoadNo: TcxDBTextEdit;
    tsLoadNote: TcxTabSheet;
    lcLeverantr: TcxDBLookupComboBox;
    lcKUND: TcxDBLookupComboBox;
    Label6: TLabel;
    Label9: TLabel;
    acAddClient: TAction;
    acGetAdrText: TAction;
    acEditClient: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    acClose: TAction;
    PopupMenu1: TPopupMenu;
    Lggtillklient1: TMenuItem;
    Lggtillpaket1: TMenuItem;
    ndralayout1: TMenuItem;
    StngF121: TMenuItem;
    abortlastF21: TMenuItem;
    ppnaklient1: TMenuItem;
    A1: TMenuItem;
    Importerawoodx1: TMenuItem;
    Inmatningsrad1: TMenuItem;
    Lggallapakettilllagret1: TMenuItem;
    Lggmarkeradepakettillbakstilllager1: TMenuItem;
    SkapainkpspaketF101: TMenuItem;
    PlockapaketnrF91: TMenuItem;
    Paketinformation1: TMenuItem;
    Pktnrserie1: TMenuItem;
    Fljesedel1: TMenuItem;
    abortallapaketfrnsystemet1: TMenuItem;
    abortpaketetfrnsystemet1: TMenuItem;
    SparaF31: TMenuItem;
    ngra1: TMenuItem;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    acAddAddress: TAction;
    dxBarLargeButton5: TdxBarLargeButton;


    procedure lbRemovePackageClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);


    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acInsertPkgToInventoryExecute(Sender: TObject);
    procedure acInsertAllPkgsToInventoryExecute(Sender: TObject);
    procedure acRemovePkgFromSystemExecute(Sender: TObject);
    procedure acRemoveAllPkgsFromSystemExecute(Sender: TObject);
    procedure acUndoPkgOperationExecute(Sender: TObject);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acAddPkgExecute(Sender: TObject);
    procedure acInsertPkgToInventoryUpdate(Sender: TObject);
    procedure acInsertAllPkgsToInventoryUpdate(Sender: TObject);
    procedure acRemovePkgFromSystemUpdate(Sender: TObject);
    procedure acRemoveAllPkgsFromSystemUpdate(Sender: TObject);
    procedure acUndoPkgOperationUpdate(Sender: TObject);
    procedure acPkgInfoUpdate(Sender: TObject);
    procedure acAddPkgUpdate(Sender: TObject);
    procedure acPickPkgNosUpdate(Sender: TObject);
    procedure acSaveLoadExecute(Sender: TObject);
    procedure grdPkgsDBBandedTableView1PACKAGENOPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure acSaveLoadUpdate(Sender: TObject);
    procedure acDeleteLoadExecute(Sender: TObject);
    procedure acDeleteLoadUpdate(Sender: TObject);
    procedure acPrintFSUpdate(Sender: TObject);
    procedure acPktNrSerieUpdate(Sender: TObject);
    procedure grdPkgsDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure acChangePKGLayoutExecute(Sender: TObject);
    procedure grdPkgsDBBandedTableView1Editing(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure acInmatningsradExecute(Sender: TObject);
    procedure grdPkgsDBBandedTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure acImportPkgsExecute(Sender: TObject);
    procedure acImportPkgsUpdate(Sender: TObject);
    procedure lcDelAdrEnter(Sender: TObject);
    procedure lcDelAdrExit(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);

  private
    { Private declarations }
     LoadEnabled, AddingPkgsFromPkgEntry : Boolean ;
     procedure SetPackageEntryOption ;
//     procedure InsertImportedPkgs(Sender: TObject) ;
     procedure ScanningEgnaPkgNo(Sender: TObject; PkgNo, EgenPkgSupplierCode : String) ;
     procedure InsertScannedPkgNo(Sender : TObject;const PkgNo : Integer;const PkgSupplierCode : String) ;

     procedure ShowAndLinkPackages (Sender: TObject;const DeliveryMessageNumber : String);
     procedure SetLoadEnabled ;

     function  DataSaved : Boolean ;
     procedure GetMarkedPkgs ;
     procedure SetLoadRowToChanged ;
     procedure InsertPkgNo(Sender: TObject) ;
     procedure CloseDataSets;

     function IdentifyPackageSupplier(
          const PkgNo : Integer;
//          SupplierNo: Integer;
          var PkgSupplierCode: String3;
//          var PkgSupplierNo: Integer;
          Var ProductNo : Integer;
          Var Res_UserName : String;
          Var ProductLengthNo, NoOfLengths : Integer) : TEditAction;


     procedure InsertPkgSerie(Sender: TObject) ;
//     function  ValidatePkgInSerie(Sender: TObject; const PkgNo: Integer) : TEditAction ;

     function AddPkgTo_cds_LoadPackages(Sender: TObject;
        const PkgNo : Integer;
        const PkgSupplierCode : String3) : TEditAction ;

     function IsPkgReserved(
     const PkgNo : Integer;
     var PkgSupplierCode: String3;
     Var Res_UserName : String) : TEditAction;

     procedure ValidatePkgNoSuppCode(Sender: TObject; const PkgNo: Integer;
            PkgSupplierCode: String3; const ProductNo, ProductLengthNo : Integer);

  Protected
      procedure ResolvePkgNoAmbiguity(
      Sender : TObject;
      ADataSource : TDataSource;
      var Choice : String3;
      var SupplierNo : Integer;
      var ProductNo : Integer;
      Var ProductLengthNo : Integer;
      Var NoOfLengths : Integer
      );

  public
    { Public declarations }
//    FOrderClientNo, FShipping, FShipToInvPointNo, FLoadingLocationNo : Integer ;


    constructor CreateWithNewLoad      (AOwner: TComponent; const CustomerNo, SalesRegionNo, LoadNo, LO_NO, OrderType : Integer);
    constructor CreateWithExistingLoad (AOwner: TComponent; const CustomerNo, LoadNo, SalesRegionNo : Integer );
    destructor Destroy; override;
    function AfterAddedPkgNo(Sender: TObject;const PkgNo : Integer;const PkgSupplierCode : String3;const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;
  end;

 var  fLoadNoLO: TfLoadNoLO;

implementation

uses  VidaConst, dlgPickPkg,
      dmsVidaContact, VidaUser, UnitPkgInfo,
      UnitPkgNoSeries, dmcVidaOrder, dmsVidaSystem,
      uEntryField, dmsDataConn, MainU, dmsVidaProduct,
      uImportedPackages, //UPkgEntry, dmsVidaPkg,
      dmc_ImportWoodx, dmcLoadNoLO,
      //uPickPkgNoLoadNoLO,
      dmc_UserProps ;
      //uPrintModule,
      //uClientForm,
  //uShipToAddressLoadForm;//, uSelectLoadPlanDest ;

{$R *.dfm}

{ TfrmLoadEntry }

procedure TfLoadNoLO.SetLoadEnabled ;
Begin
 With dmLoadNoLO do
 Begin
   dmsSystem.sp_OneLoad.Close ;
   dmsSystem.sp_OneLoad.ParamByName('LoadNo').AsInteger := cds_LoadHeadLoadNo.AsInteger ;//LoadNo;
   dmsSystem.sp_OneLoad.Open ;
   LoadEnabled:= True ;
//  if (dmsSystem.sp_OneLoadConfirmed.AsInteger > 0) or (dmsSystem.sp_OneLoadInvoiced.AsInteger > 0) then
  if (dmsSystem.sp_OneLoadInvoiced.AsInteger > 0) then
  Begin
   if ThisUser.UserID in [8] then
   Begin
    LoadEnabled:= True ;
    Caption := 'Lasten kan inte ändras, den är fakturerad.' ;

   End
   else
   Begin
    MessageBeep(MB_ICONEXCLAMATION);
    Caption                                               := 'Lasten kan inte ändras, den är fakturerad.' ;
    LoadEnabled                                           := False ;
    cds_LoadHead.ReadOnly                                 := True ;
    cds_LSP.ReadOnly                                      := True ;
    cds_LoadPackages.ReadOnly                             := True ;
   End ;
  End ;

   if ThisUser.UserID in [8] then
   Begin
//    LoadEnabled:= True ;
//    Caption := 'Lasten kan inte ändras, den är fakturerad.' ;
    grdPkgsDBBandedTableView1Defsspno.Visible                 := True ;
    grdPkgsDBBandedTableView1DefaultCustShipObjectNo.Visible  := True ;
    grdPkgsDBBandedTableView1Defsspno.Hidden                  := False ;
    grdPkgsDBBandedTableView1DefaultCustShipObjectNo.Hidden   := False ;
   End ;

  dmsSystem.sp_OneLoad.Close ;
 End ;//with 
End ;

function TfLoadNoLO.DataSaved : Boolean ;
Begin
 With dmLoadNoLO do
 Begin
  Result:= True ;
  if cds_LoadHead.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_LoadHead.ChangeCount > 0 then
   Result:= False ;

  if cds_LSP.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_LSP.ChangeCount > 0 then
   Result:= False ;

  if cds_LoadPackages.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_LoadPackages.ChangeCount > 0 then
   Result:= False ;
 End ;
End ;

constructor TfLoadNoLO.CreateWithExistingLoad(
  AOwner   : TComponent;
  const CustomerNo ,
  LoadNo   ,
  SalesRegionNo : Integer );
var
  Save_Cursor:TCursor;

  Procedure OpenLoadHead ;
  Begin
   With dmLoadNoLO do
   Begin
    cds_LoadHead.Active:= False ;
    sq_LoadHead.ParamByName('LoadNo').AsInteger:= LoadNo ;
    sq_LoadHead.Open ;
    cds_LoadHead.Active:= True ;
   End ;
  End ;


 Procedure Get_LoadPackages ;
 Begin
   With dmLoadNoLO do
   Begin
    cds_LoadPackages.DisableControls ;
    cds_LoadPackages.IndexName:= 'cds_LoadPackagesIndex2' ;//LoadDetailNo
    Try
     cds_LoadPackages.Active:= False ;
     sq_LoadPackages.ParamByName('LoadNo').AsInteger:= LoadNo ;
     cds_LoadPackages.Active:= True ;
     cds_LoadPackages.Last ;
     GlobalLoadDetailNo := cds_LoadPackagesLoadDetailNo.AsInteger + 1 ;
    Finally
     cds_LoadPackages.IndexName:= 'cds_LoadPackagesIndex1' ;//PkgNo och SuppCode
     cds_LoadPackages.EnableControls ;
    End ;
   End ;//with
 End ;

//Begin with procedure CreateWithExistingLoad(
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  CreateWithNewLoad(AOwner, 0, SalesRegionNo, LoadNo, 0 {LO_NO}, -1);

  With dmLoadNoLO do
  Begin
   ds_LoadPackages2.Enabled:= False ;
   OpenLoadHead ;
   LoadStatus      := cds_LoadHeadSenderLoadStatus.AsInteger ;

   cds_LSP.Active:= False ;
   sq_LSP.ParamByName('LoadNo').AsInteger:= cds_LoadHeadLoadNo.AsInteger ;
   cds_LSP.Active:= True ;

   Get_LoadPackages ;

   ds_LoadPackages2.Enabled:= True ;

   SetLoadEnabled ;

   SetPackageEntryOption ;
 End ; //with
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

constructor TfLoadNoLO.CreateWithNewLoad(AOwner: TComponent; const CustomerNo, SalesRegionNo, LoadNo, LO_NO, OrderType : Integer);
begin
  inherited Create(AOwner);
  dmLoadNoLO:= TdmLoadNoLO.Create(Nil);

  LoadEnabled:= True ;
  With dmLoadNoLO do
  Begin
   cds_LoadPackages.Active                  := True ;
//   dmsContact.sp_Cities.Open ;
//   dmsContact.cdsCities.Active              := True ;
//   dmsContact.cds_LocalShipper.Active       := True ;

   cds_LoadHead.Active                      := True ;

   if LoadNo < 1 then
   Begin
    cds_LoadHead.Insert ;
    cds_LoadHeadSenderLoadStatus.AsInteger    := 0 ;
    cds_LoadHeadLoadedDate.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;
    cds_LoadHeadPackageEntryOption.AsInteger  := OrderType ;
    if cds_LoadHeadPackageEntryOption.AsInteger = 0 then
     cds_LoadHeadSupplierNo.AsInteger:= 1 ; //WoodSupport som std om sales.
    if cds_LoadHeadPackageEntryOption.AsInteger = 1 then
     cds_LoadHeadCustomerNo.AsInteger:= 1 ; //WoodSupport som std om sales.
    cds_LoadHead.Post ;

    cds_LSP.Active:= True ;
    cds_LSP.Insert ;
    cds_LSP.Post ;
   End ;
  End ; //with
end;

destructor TfLoadNoLO.Destroy;
begin
  CloseDataSets;
  dmLoadNoLO.Free ;
  inherited
end;

procedure TfLoadNoLO.CloseDataSets;
begin
   With dmLoadNoLO do
   Begin
    cds_LoadHead.Active                 := False ;
    sq_LoadHead.Close ;
    cds_LoadPackages.Active             := False ;
//    dmsContact.sp_Cities.Close ;
//    dmsContact.cdsCities.Active         := False ;
//    dmsContact.cds_LocalShipper.Active  := False ;
   End ;
end;

function TfLoadNoLO.AfterAddedPkgNo(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3;
const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;
var
  CustCdsNo             : Integer;
  ValidPackage          : Integer;
  PkgLog                : String ;
  LO_Number             : Integer ;
Begin
 With dmLoadNoLO do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;
  cds_LoadPackages.DisableControls ;

  Try
  Result:= eaACCEPT ;
  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;

  Begin
  //Default LO number in case there is no match the LoadDetail must get a value

   LO_Number:= 1 ;

  //LOLine is SuppShipPlanObjectNo

//   cds_LoadPackagesDefaultsspObjectNo.AsInteger         := 1 ;
   cds_LoadPackagesDefaultCustShipObjectNo.AsInteger    := 1 ;
   cds_LoadPackagesShippingPlanNo.AsInteger                       := LO_Number ;

    Try
//    cds_LoadPackages.Post ;
    Except
//     On E : DatabaseError('Duplicate package number', cds_LoadPackages) ;
     on eDatabaseError do
     Begin
      Raise ;
     ShowMessage('Paketnr finns redan i lasten.') ;
     cds_LoadPackages.Cancel ;
     End ;

    End ;
   end ;

  Finally
   cds_LoadPackages.EnableControls ;
  End ;
 End ; //with
end;

function TfLoadNoLO.IdentifyPackageSupplier(
  const PkgNo : Integer;
  var PkgSupplierCode: String3;
//  var PkgSupplierNo: Integer;
  Var ProductNo : Integer;
  Var Res_UserName : String;
  Var ProductLengthNo, NoOfLengths : Integer) : TEditAction;
const
  NO_USER_HAS_THIS_PACKAGE_RESERVED = '0' ;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
begin
 //check that package is available in inventory and Get supplier code
    PkgSupplierCode := dmLoadNoLO.PkgNoToSuppCode(
    dmLoadNoLO.cds_LoadHeadLocalLoadingLocation.AsInteger,
    PkgNo,
//    SupplierNo,
//    PkgSupplierNo,
    ProductNo,
    ProductLengthNo, NoOfLengths);
    if PkgSupplierCode = '' then
    Begin
     Result := eaREJECT;
    End
    else

//check that no user has reserved the package
        if dmsSystem.Pkg_Reserved(PkgNo,
        PkgSupplierCode,
        'TfLoadEntrySSP', //Self.Name,
        Res_UserName          ) = ThisUser.UserName+'/'+'TfLoadEntrySSP' //{ NO_USER_HAS_THIS_PACKAGE_RESERVED }
        then begin
          Result := eaACCEPT ;
          end
        else

        begin
          MessageBeep(MB_ICONEXCLAMATION);
          Result := eaReserved ; //eaREJECT;
        end;
end;

procedure TfLoadNoLO.lbRemovePackageClick(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  dmLoadNoLO.ds_LoadPackages2.OnDataChange:= NIL ;

  if dmLoadNoLO.cds_LoadPackagesPkg_State.AsInteger =  NEW_PACKAGE then
   dmLoadNoLO.cds_LoadPackages.Delete
   else
   Begin
    if dmLoadNoLO.cds_LoadPackages.State = dsBrowse then
    dmLoadNoLO.cds_LoadPackages.Edit ;
    dmLoadNoLO.cds_LoadPackagesPkg_Function.AsInteger := REMOVE_PKG_FROM_LOAD ;
    dmLoadNoLO.cds_LoadPackagesChanged.AsInteger      := 1 ;
    dmLoadNoLO.cds_LoadPackages.Post ;
   End ;

  Finally
   dmLoadNoLO.ds_LoadPackages2.OnDataChange:= dmLoadNoLO.ds_LoadPackages2DataChange ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
end;


procedure TfLoadNoLO.FormCreate(Sender: TObject);
begin
  dmLoadNoLO.OnAmbiguousPkgNo := ResolvePkgNoAmbiguity;
  AddingPkgsFromPkgEntry:= False ;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdPkgs.Name, grdPkgsDBBandedTableView1) = False then ;
//  dm_UserProps.LoadUserProps (Self.Name, mtuserprop) ;
end;

procedure TfLoadNoLO.ResolvePkgNoAmbiguity(
  Sender: TObject;
  ADataSource : TDataSource;
  var Choice : String3;
  var SupplierNo : Integer;
  var ProductNo : Integer;
  Var ProductLengthNo : Integer;
  Var NoOfLengths : Integer
  );
// User has added a package to a load by specifying the package number.
// More than one package with this number is located in inventories owned by the supplier
// of this load. This event handler allows the user to select which of these packages they
// want to add to the load. The supplier code for their choice is returned in the Choice
// arguement, which is set to an empty string if the user declines to make a choice.
begin
  with TfrmPackagePicker.Create(Self) do try
    DataSource := ADataSource;
    ShowModal;
    if ModalResult = mrOK then
     begin
      Choice     := SupplierCodeForSelectedPkg;
      SupplierNo := SupplierNoForSelectedpkg;
      ProductNo  := ProductNoForSelectedpkg ;
      NoOfLengths := NoOfLengthsForSelectedpkg ;
      ProductLengthNo := ProductLengthNoForSelectedpkg ;
     end
    else
      Choice := '';
  finally
    free;
    end;
end;

procedure TfLoadNoLO.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var dResult: Integer ;
begin
  if DataSaved = False then
   Begin
   dResult:= MessageDlg('Ändringar är inte sparade, vill du spara?',
    mtConfirmation, [mbYes, mbNo,mbCancel], 0) ;
   End
    else
    dResult:= mrNo ;

    if dResult = mrYes then
    Begin
     acSaveLoadExecute(Sender) ;
     CanClose := True ;
    End
    else
    if dResult = mrNo then
     Begin
      CanClose := True ;
     End
     else
      CanClose := False ;

 //Remove entries in Pkgs_Res
 if CanClose = True then
 Begin
  With dmsSystem do
  Begin
   Delete_ReservedPkgs ('TfLoadEntrySSP') ;
   dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdPkgs.Name, grdPkgsDBBandedTableView1) ;
//   dm_UserProps.SaveUserProps (Self.Name, mtUserProp) ;
  End ;
 End ;
end;

procedure TfLoadNoLO.InsertPkgSerie(Sender: TObject) ;
Var     NoOfPkgsInSerie, PkgNo : Integer ;
        ResultButton : word ;
        Save_Cursor:TCursor;
        frmPkgNoSeries : TfrmPkgNoSeries ;
begin
 ResultButton:= mrYes ;
 With dmLoadNoLO do
 Begin
  cds_LoadPackages.DisableControls ;
  frmPkgNoSeries:= TfrmPkgNoSeries.Create(Nil) ;
  Try
   if frmPkgNoSeries.ShowModal = mrOk then
   Begin
    NoOfPkgsInSerie:= StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text))-
    StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;

    if NoOfPkgsInSerie > 100 then
    ResultButton:= MessageDlg(IntToStr(NoOfPkgsInSerie)+' paket läggs till lasten, vill du fortsätta?',
    mtConfirmation, [mbYes, mbNo, mbCancel], 0) ;

    if ResultButton = mrYes then
    Begin
     Save_Cursor := Screen.Cursor;
     Screen.Cursor := crSQLWait;    { Show hourglass cursor }
     Try


    For PkgNo := StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) to
             StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text)) do
    Begin
      Try
       cds_LoadPackages.Insert ;
       cds_LoadPackagesPackageNo.AsInteger:= PkgNo ;
//       if ValidatePkgInSerie(Sender, PkgNo) <> eaACCEPT then     cds_LoadPackages.Cancel ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        cds_LoadPackages.Cancel ;
       End ;
      End ;

    End ;//for
    if cds_LoadPackages.State in [dsEdit, dsInsert] then
     cds_LoadPackages.Post ;
     Finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
     End ;

    End ;//mrYes
   End ;
  Finally
   FreeAndNil(frmPkgNoSeries) ;//.Free ;
   cds_LoadPackages.EnableControls ;
  End ;
 End ; // with
End ;

function TfLoadNoLO.AddPkgTo_cds_LoadPackages(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3) : TEditAction ;
var
  SuppShipPlanObjectNo  : Integer;
  LO_Number             : Integer ;
Begin
 With dmLoadNoLO do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;

  Try
  Result:= eaACCEPT ;

  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;


  //Default LO number in case there is no match the LoadDetail must get a value

   LO_Number            := 1 ;
   SuppShipPlanObjectNo := 1 ;



//     cds_LoadPackagesDefaultsspObjectNo.AsInteger       := -1 ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
     sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger   := PkgNo ;
     sq_OnePkgDetailData.ParamByName('SupplierCode').AsString := PkgSupplierCode ;
     sq_OnePkgDetailData.Open ;
     if not sq_OnePkgDetailData.Eof then
     Begin
      cds_LoadPackagesShippingPlanNo.AsInteger            := LO_Number ;
      cds_LoadPackagesProductNo.AsInteger       := sq_OnePkgDetailDataProductNo.AsInteger ;
      cds_LoadPackagesPRODUCT.AsString          := sq_OnePkgDetailDataPRODUCT.AsString ;
      cds_LoadPackagesPACKAGENO.AsInteger       := sq_OnePkgDetailDataPackageNo.AsInteger ;
//      cds_LoadPackagesNoOfPackages.AsInteger    := -1 ;
      cds_LoadPackagesPACKAGETYPENO.AsInteger   := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesSupplierCode.AsString     := Trim(PkgSupplierCode) ;
      cds_LoadPackagesM3_NET.AsFloat            := sq_OnePkgDetailDataM3_NET.AsFloat ;
      cds_LoadPackagesM3_NOM.AsFloat            := sq_OnePkgDetailDataM3_NOM.AsFloat ;
//      cds_LoadPackagesKVM.AsFloat               := sq_OnePkgDetailDataKVM.AsFloat ;
      cds_LoadPackagesLopM.AsFloat              := sq_OnePkgDetailDataLopM.AsFloat ;
      cds_LoadPackagesPCS.AsInteger             := sq_OnePkgDetailDataPCS.AsInteger ;
      cds_LoadPackagesPCS_PER_LENGTH.AsString   := sq_OnePkgDetailDataPCS_PER_LENGTH.AsString ;
      cds_LoadPackagesNoOfLengths.AsInteger     := sq_OnePkgDetailDataNoOfLengths.AsInteger ;
      cds_LoadPackagesProductLengthNo.AsInteger := sq_OnePkgDetailDataProductLengthNo.AsInteger ;

      cds_LoadPackagesATMM.AsFloat              := sq_OnePkgDetailDataActualThicknessMM.AsFloat ;
      cds_LoadPackagesABMM.AsFloat              := sq_OnePkgDetailDataActualWidthMM.AsFloat ;
      cds_LoadPackagesSurfacingNo.AsInteger     := sq_OnePkgDetailDataSurfacingNo.AsInteger ;
      cds_LoadPackagesSpeciesNo.AsInteger       := sq_OnePkgDetailDataSpeciesNo.AsInteger ;
      cds_LoadPackagesMainGradeNo.AsInteger     := sq_OnePkgDetailDataMainGradeNo.AsInteger ;
      cds_LoadPackagesALMM.AsFloat              := sq_OnePkgDetailDataALMM.AsFloat ;
      cds_LoadPackagesDefsspNo.AsInteger           := sq_OnePkgDetailDataLIPNo.AsInteger ;
      cds_LoadPackagesOverrideMatch.AsInteger       := sq_OnePkgDetailDataPCS.AsInteger ; //sq_OnePkgDetailDataMCClassNo.AsInteger ;
//      cds_LoadPackagesExLog.AsString            := sq_OnePkgDetailDataExLog.AsString ;
//      cds_LoadPackagesProcessNo.AsInteger       := sq_OnePkgDetailDataProcessNo.AsInteger ;

      sq_OnePkgDetailData.Close ;
     End ;

    Try
//    cds_LoadPackages.Post ;
//    if cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then ;
    Except
//     On E : DatabaseError('Duplicate package number', cds_LoadPackages) ;
     on eDatabaseError do
     Begin
      Raise ;
     ShowMessage('Paketnr finns redan i lasten.') ;
     cds_LoadPackages.Cancel ;
     End ;
    End ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
  End ;
 End ; //with
end;

procedure TfLoadNoLO.ValidatePkgNoSuppCode(Sender: TObject; const PkgNo: Integer;
PkgSupplierCode: String3; const ProductNo, ProductLengthNo : Integer);
var
//  PkgSupplierNo: Integer ;
  Action: TEditAction;
  Save_Cursor : TCursor;
  Res_UserName : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }
    Action := IsPkgReserved(
     PkgNo,
      PkgSupplierCode,
      Res_UserName );

  if Action = eaACCEPT then
  Begin
   AddPkgTo_cds_LoadPackages(Sender, PkgNo,PkgSupplierCode) ;
   if dmLoadNoLO.cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then

    if AfterAddedPkgNo(Sender, PkgNo,PkgSupplierCode, ProductNo, ProductLengthNo, 1 {NoOfLengths}) <> eaACCEPT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager '
     +Trim(bcPhysInventory.Text)
    + '/' + Trim(bcPhysInventory.Text)) ;
    End ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager '
     +Trim(bcPhysInventory.Text)
    +'/' + bcPhysInventory.Text) ;
    End
   else
   if Action = eaReserved then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' är reserverat av '+Res_UserName) ;
    End
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

function TfLoadNoLO.IsPkgReserved(
  const PkgNo : Integer;
  var PkgSupplierCode: String3;
  Var Res_UserName : String) : TEditAction;
const
  NO_LOAD_HAS_THIS_PACKAGE = -1;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
begin
    if PkgSupplierCode = '' then
    Begin
      Result := eaREJECT;
    End
    else
        if dmsSystem.Pkg_Reserved(
          PkgNo,
          PkgSupplierCode, 'TfLoadEntrySSP', Res_UserName
          ) = ThisUser.UserName+'/'+'TfLoadEntrySSP' { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Result := eaACCEPT ;
          end
        else

        begin
          MessageBeep(MB_ICONEXCLAMATION);
          Result := eaReserved ; //eaREJECT;
        end;
end;

procedure TfLoadNoLO.InsertPkgNo(Sender: TObject) ;
begin
 With dmLoadNoLO do
 Begin
  cds_LoadPackages.DisableControls ;
  Try
    mtPkgNos.First ;
    While not mtPkgNos.Eof do
    Begin
      Try
       cds_LoadPackages.Insert ;
       cds_LoadPackagesPackageNo.AsInteger    := mtPkgNospackageno.AsInteger ;
       cds_LoadPackagesSupplierCode.AsString  := mtPkgNosSuppliercode.AsString ;
       ValidatePkgNoSuppCode(Sender, mtPkgNospackageno.AsInteger,
        mtPkgNosSuppliercode.AsString,
        mtPkgNosproductno.AsInteger,
        mtPkgNosproductlengthno.AsInteger);
      Except
       on eDatabaseError do
       Begin
        Raise ;
        cds_LoadPackages.Cancel ;
       End ;
      End ;
     mtPkgNos.Next ;
    End ; //While
   if cds_LoadPackages.State in [dsEdit, dsInsert] then
    cds_LoadPackages.Post ;
  Finally
   cds_LoadPackages.EnableControls ;
  End ;
 End ; // with
End ;

procedure TfLoadNoLO.acInsertPkgToInventoryExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
 With dmLoadNoLO do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  mtLoadPackages.Active:= True ;
  GetMarkedPkgs ;

  try
  ds_LoadPackages2.OnDataChange:= NIL ;

  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([cds_LoadHeadLoadNo.AsInteger, mtLoadPackagesLoadDetailNo.AsInteger]),[]) then
   Begin
    if cds_LoadPackagesPkg_State.AsInteger =  NEW_PACKAGE then
     cds_LoadPackages.Delete
     else
     Begin
      if cds_LoadPackages.State = dsBrowse then
      cds_LoadPackages.Edit ;
      cds_LoadPackagesPkg_Function.AsInteger := REMOVE_PKG_FROM_LOAD ;
      cds_LoadPackagesChanged.AsInteger      := 1 ;
      cds_LoadPackages.Post ;
     End ;
   End ;
   mtLoadPackages.Next ;
  End ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
   mtLoadPackages.Active:= False ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;

procedure TfLoadNoLO.acInsertAllPkgsToInventoryExecute(
  Sender: TObject);
Var Save_Cursor : TCursor ;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 dmLoadNoLO.cds_LoadPackages.DisableControls ;
 Try
  dmLoadNoLO.ds_LoadPackages2.OnDataChange:= NIL ;
  dmLoadNoLO.cds_LoadPackages.First ;
  While not dmLoadNoLO.cds_LoadPackages.Eof do
  Begin
   dmLoadNoLO.cds_LoadPackages.Edit ;
   dmLoadNoLO.cds_LoadPackagesPkg_Function.AsInteger  := REMOVE_PKG_FROM_LOAD ;
   dmLoadNoLO.cds_LoadPackagesChanged.AsInteger       := 1 ;
   dmLoadNoLO.cds_LoadPackages.Post ;
   dmLoadNoLO.cds_LoadPackages.Next ;
//April 22 2004
   Application.ProcessMessages ;
  End ;
 Finally
  dmLoadNoLO.ds_LoadPackages2.OnDataChange:= dmLoadNoLO.ds_LoadPackages2DataChange ;
  dmLoadNoLO.cds_LoadPackages.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfLoadNoLO.acRemovePkgFromSystemExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
 if MessageDlg('Är du säker? markerade paket kommer att fösvinna från systemet!',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmLoadNoLO do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  mtLoadPackages.Active:= True ;
  GetMarkedPkgs ;
  Try
  dmLoadNoLO.ds_LoadPackages2.OnDataChange:= NIL ;

  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([cds_LoadHeadLoadNo.AsInteger, mtLoadPackagesLoadDetailNo.AsInteger]),[]) then
   Begin
    dmLoadNoLO.cds_LoadPackages.Edit ;
    dmLoadNoLO.cds_LoadPackagesPkg_Function.AsInteger  := DELETE_PKG ;
    dmLoadNoLO.cds_LoadPackagesChanged.AsInteger       := 1 ;
    dmLoadNoLO.cds_LoadPackages.Post ;
   End ;
   mtLoadPackages.Next ;
  End ;//While..

 Finally
  dmLoadNoLO.ds_LoadPackages2.OnDataChange:= dmLoadNoLO.ds_LoadPackages2DataChange ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With..
end;

procedure TfLoadNoLO.acRemoveAllPkgsFromSystemExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
  if MessageDlg('Är du säker? paketen kommer att fösvinna från systemet!',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  dmLoadNoLO.cds_LoadPackages.DisableControls ;
 Try
  dmLoadNoLO.ds_LoadPackages2.OnDataChange:= NIL ;

  dmLoadNoLO.cds_LoadPackages.First ;
  While not dmLoadNoLO.cds_LoadPackages.Eof do
  Begin
   dmLoadNoLO.cds_LoadPackages.Edit ;
   dmLoadNoLO.cds_LoadPackagesPkg_Function.AsInteger  := DELETE_PKG ;
   dmLoadNoLO.cds_LoadPackagesChanged.AsInteger       := 1 ;
   dmLoadNoLO.cds_LoadPackages.Post ;
   dmLoadNoLO.cds_LoadPackages.Next ;
  End ;

  Finally
   dmLoadNoLO.ds_LoadPackages2.OnDataChange:= dmLoadNoLO.ds_LoadPackages2DataChange ;
   dmLoadNoLO.cds_LoadPackages.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ; //if
end;

procedure TfLoadNoLO.acUndoPkgOperationExecute(Sender: TObject);
begin
//Undo
 Try
 dmLoadNoLO.ds_LoadPackages2.OnDataChange:= NIL ;

 Case dmLoadNoLO.cds_LoadPackagesPkg_Function.AsInteger of
  DELETE_PKG            :
  Begin
   dmLoadNoLO.cds_LoadPackages.Edit ;
   dmLoadNoLO.cds_LoadPackagesPkg_Function.AsInteger  := ADD_PKG_TO_LOAD ;
   dmLoadNoLO.cds_LoadPackagesChanged.AsInteger       := 0 ;
   dmLoadNoLO.cds_LoadPackages.Post ;
  End ;
  REMOVE_PKG_FROM_LOAD  :
  Begin
   dmLoadNoLO.cds_LoadPackages.Edit ;
   dmLoadNoLO.cds_LoadPackagesPkg_Function.AsInteger  := ADD_PKG_TO_LOAD ;
   dmLoadNoLO.cds_LoadPackagesChanged.AsInteger       := 0 ;
   dmLoadNoLO.cds_LoadPackages.Post ;
  End ;
 End ; //case
 Finally
  dmLoadNoLO.ds_LoadPackages2.OnDataChange:= dmLoadNoLO.ds_LoadPackages2DataChange ;
 End ;
end;

procedure TfLoadNoLO.acPkgInfoExecute(Sender: TObject);
var frmPkgInfo : TfrmPkgInfo;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo:= dmLoadNoLO.cds_LoadPackagesPackageNo.AsInteger ;
  frmPkgInfo.SupplierCode:= dmLoadNoLO.cds_LoadPackagesSupplierCode.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
end;

procedure TfLoadNoLO.acAddPkgExecute(Sender: TObject);
begin
 if dmLoadNoLO.cds_LoadHeadLoadNo.AsInteger > 0 then
 Begin
  dmLoadNoLO.cds_LoadPackages.Append ;
  grdPkgs.SetFocus ;
 End
   else
    ShowMessage('Spara lasten först.') ;
end;

procedure TfLoadNoLO.acInsertPkgToInventoryUpdate(Sender: TObject);
begin
 acInsertPkgToInventory.Enabled:=  (dmLoadNoLO.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadNoLO.acInsertAllPkgsToInventoryUpdate(Sender: TObject);
begin
 acInsertAllPkgsToInventory.Enabled:=  (dmLoadNoLO.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadNoLO.acRemovePkgFromSystemUpdate(Sender: TObject);
begin
 acRemovePkgFromSystem.Enabled:=  (dmLoadNoLO.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadNoLO.acRemoveAllPkgsFromSystemUpdate(Sender: TObject);
begin
 acRemoveAllPkgsFromSystem.Enabled:=  (dmLoadNoLO.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadNoLO.acUndoPkgOperationUpdate(Sender: TObject);
begin
 acUndoPkgOperation.Enabled:=  (dmLoadNoLO.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadNoLO.acPkgInfoUpdate(Sender: TObject);
begin
 acPkgInfo.Enabled:=  dmLoadNoLO.cds_LoadPackages.RecordCount > 0 ;
end;

procedure TfLoadNoLO.acAddPkgUpdate(Sender: TObject);
begin
 With dmLoadNoLO do
 Begin
  acAddPkg.Enabled:= (LoadEnabled) ;
 End ;
end;

procedure TfLoadNoLO.acPickPkgNosUpdate(Sender: TObject);
begin
 With dmLoadNoLO do
 Begin
  acPickPkgNos.Enabled:= (LoadEnabled) and (cds_LSP.Active) ;
 End ;
end;

procedure TfLoadNoLO.acSaveLoadExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
Begin
 With dmLoadNoLO do
 Begin
//  if IS_Packages_OK then
  Begin
 if cds_LoadHeadCustomerNo.IsNull then
 Begin
  ShowMessage('Kund saknas!') ;
  Abort ;
 End ;
 if cds_LoadHeadSupplierNo.IsNull then
 Begin
  ShowMessage('Leverantör saknas!') ;
  Abort ;
 End ;

   if cds_LoadHeadLocalLoadingLocation.isnull then
   Begin
    ShowMessage('Välj lagerställe...') ;
    Exit ;
   End ;
   if cds_LoadHead.State in [dsEdit, dsInsert] then
   cds_LoadHead.Post ;
   if cds_LoadPackages.State in [dsEdit, dsInsert] then
   cds_LoadPackages.Post ;     
   cds_LoadPackages.DisableControls ;
   cds_LSP.DisableControls ;
   cds_LoadHead.DisableControls ;

   Save_Cursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;    { Show hourglass cursor }
   try
    if (cds_LSP.Active) AND (cds_LSP.RecordCount > 0) then
    Begin
     SaveLOData(cds_LoadHeadLoadNo.AsInteger, Sender) ;
     SetPackageEntryOption ;
    End  
     else
      ShowMessage('Lägg till minst en LO.') ;
    if (cds_LoadHeadSenderLoadStatus.AsInteger = 1) and (cds_LoadPackages.RecordCount > 0) then
    ShowMessage('Alla paket matchar inte, status kan inte sättas till OK.') ;
   finally
    cds_LoadPackages.EnableControls ;
    cds_LSP.EnableControls ;
    cds_LoadHead.EnableControls ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   end;
  End ;
 End ;
end;

procedure TfLoadNoLO.SetLoadRowToChanged ;
Begin
 With dmLoadNoLO do
 Begin
  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;
  cds_LoadPackagesChanged.AsInteger   := 1 ;
  cds_LoadPackagesPackageOK.AsInteger := BAD_PKG ;
  cds_LoadPackages.Post ;
 End ;
End ;

procedure TfLoadNoLO.grdPkgsDBBandedTableView1PACKAGENOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  NewValue          : string;
  PkgSupplierCode   : String3;
  PkgSupplierNo     : Integer ;
  Action            : TEditAction;
  ProductNo         : Integer ;
  Save_Cursor       : TCursor;
  Res_UserName      : String ;
  ProductLengthNo   : Integer ;
  NoOfLengths       : Integer ;
begin
 With dmLoadNoLO do
 Begin
 if cds_LoadPackagesPkg_State.AsInteger = EXISTING_PACKAGE then
 Begin
  ErrorText:= 'Inte tillåtet att skriva över paketnr som redan är sparade till lasten' ;
  Error:= True ;
  Exit ;
 End ;
 End ;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }
   NewValue := DisplayValue ;

   Action := IdentifyPackageSupplier(
      StrToInt(NewValue),
//      dmLoadNoLO.FSalesRegionNo,
      PkgSupplierCode,
//      PkgSupplierNo,
      ProductNo, Res_UserName, ProductLengthNo, NoOfLengths );


  if Action = eaACCEPT then
  Begin
    AddPkgTo_cds_LoadPackages(Sender, StrToInt(NewValue),PkgSupplierCode) ;
//Långsamt här
    if AfterAddedPkgNo(Sender, StrToInt(NewValue),PkgSupplierCode, ProductNo, ProductLengthNo, NoOfLengths ) <> eaACCEPT then
    Begin
     ErrorText:= 'Package number '+NewValue+' does not exist' ;
     Error:= True ;
    End
    else
    Begin
     Error:= False ;
    End ;
  End
   else
   if Action = eaREJECT then
    Begin
     ErrorText:= 'Paketnr '+NewValue+' finns inte' ;
     Error:= True ;
    End
    else
   if Action = eaReserved then
    Begin
     ErrorText:= 'Paketnr '+NewValue+' är reserverat av '+Res_UserName ;
     Error:= True ;
    End ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadNoLO.GetMarkedPkgs ;
 Var
 LoadDetailNo,
 i,
 RecIDX,
 ColIdx         : Integer ;
 Save_Cursor    : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 With dmLoadNoLO do
 Begin
  grdPkgsDBBandedTableView1.BeginUpdate ;
  grdPkgsDBBandedTableView1.DataController.BeginLocate ;
  ds_LoadPackages2.OnDataChange:= nil ;
  Try
   For I := 0 to grdPkgsDBBandedTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx          := grdPkgsDBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx          := grdPkgsDBBandedTableView1.DataController.GetItemByFieldName('LoadDetailNo').Index;
    LoadDetailNo    := grdPkgsDBBandedTableView1.DataController.Values[RecIdx, ColIdx];

    mtLoadPackages.Insert ;
    mtLoadPackagesLoadDetailNo.AsInteger              := LoadDetailNo ;
//    mtLoadPackagesSupplierShipPlanObjectNo.AsInteger  := 1 ;
    mtLoadPackagesCustcdsNo.AsInteger                 := 1 ;
    mtLoadPackages.Post ;
   End ;//for

 Finally
  grdPkgsDBBandedTableView1.DataController.EndLocate ;
  grdPkgsDBBandedTableView1.EndUpdate ;
  ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//with
end;

procedure TfLoadNoLO.acSaveLoadUpdate(Sender: TObject);
begin
 acSaveLoad.Enabled:= (not DataSaved) and (LoadEnabled) ; 
end;

procedure TfLoadNoLO.acDeleteLoadExecute(Sender: TObject);
begin
 if dmLoadNoLO.cds_LoadPackages.RecordCount > 0 then
  Begin
   ShowMessage('Ta bort paketen från lasten först.') ;
  End
  else
  Begin
   if MessageDlg('Är du säker?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    dmLoadNoLO.DeleteOneLoad(dmLoadNoLO.cds_LoadHeadLoadNo.AsInteger) ;
   Close ;
  End ;
end;

procedure TfLoadNoLO.acDeleteLoadUpdate(Sender: TObject);
begin
 acDeleteLoad.Enabled:= (dmLoadNoLO.cds_LoadPackages.Active) and (dmLoadNoLO.cds_LoadPackages.RecordCount = 0) ;
end;

procedure TfLoadNoLO.acPrintFSUpdate(Sender: TObject);
begin
 acPrintFS.Enabled:= DataSaved ;
end;

procedure TfLoadNoLO.acPktNrSerieUpdate(Sender: TObject);
begin
 With dmLoadNoLO do
 Begin
  acPktNrSerie.Enabled:= False ;//(cds_LoadHeadLoadNo.AsInteger > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadNoLO.grdPkgsDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
//  PackageOK,
  Pkg_Function : Integer;
begin
{ if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PackageOK').Index] <> null then
 PackageOK:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PackageOK').Index] ;
 Case PackageOK of
  1,2,3,4,5,6,7,8,9,10,11,12,14 : AStyle := cxStyleRed ;
  VP_LengthNotInLengthGroup     : AStyle := cxStyleYellow ;
 End ; }

 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Pkg_Function').Index] <> null then
 Pkg_Function:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Pkg_Function').Index] ;
 Case Pkg_Function of
   REMOVE_PKG_FROM_LOAD : AStyle := cxStyleBlue ;
   DELETE_PKG           : AStyle := cxStyleAqua ;
 End ;
end;

procedure TfLoadNoLO.acChangePKGLayoutExecute(Sender: TObject);
begin
  if grdPkgs.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdPkgs.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfLoadNoLO.grdPkgsDBBandedTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
 if grdPkgsDBBandedTableView1.OptionsView.NewItemRow then
 AAllow := grdPkgsDBBandedTableView1.Controller.NewItemRecordFocused
 else
 AAllow:= True ;
end;

procedure TfLoadNoLO.acInmatningsradExecute(Sender: TObject);
begin
 grdPkgsDBBandedTableView1.OptionsView.NewItemRow:= not grdPkgsDBBandedTableView1.OptionsView.NewItemRow ;
end;

procedure TfLoadNoLO.grdPkgsDBBandedTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 With dmLoadNoLO do
 Begin
  if Key = VK_DOWN then
  Begin
   if grdPkgsDBBandedTableView1.Controller.NewItemRecordFocused then
   if cds_LoadPackages.State in [dsInsert, dsEdit] then
//   cds_LoadPackages.Post ;
   cds_LoadPackages.Insert ;
  End
   else
    if Key = VK_RETURN then
     if cds_LoadPackages.State in [dsInsert] then ;
 End ;//with
end;

procedure TfLoadNoLO.acImportPkgsExecute(Sender: TObject);
Var DeliveryMessageNumber : String ;
begin
 XMLImportExport:= TXMLImportExport.Create(nil);
 try
  XMLImportExport.FakturaNummer:= 'Paketspec' ;
//  XMLImportExport.TabSheet2.TabVisible:= False ;
   if XMLImportExport.ShowModal = mrOK then
   Begin
    DeliveryMessageNumber:= XMLImportExport.DeliveryMessageNumber ;
    ShowAndLinkPackages (Sender, DeliveryMessageNumber);
//    acSaveLoadExecute(Sender) ;
   End ;
 finally
  FreeAndNil(XMLImportExport) ;
 end;
end;

procedure TfLoadNoLO.ShowAndLinkPackages (Sender: TObject;const DeliveryMessageNumber : String);
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

(*procedure TfLoadNoLO.InsertImportedPkgs(Sender: TObject) ;
Var Save_Cursor : TCursor;
begin
 With dmLoadNoLO, dmsProduct do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  Try
  cds_LoadPackages.DisableControls ;
   Try
    mtPackages.First ;
    While not mtPackages.Eof do
    Begin
     ScanningEgnaPkgNo(Sender, mtPackages.Fields[cPACKAGENO].AsString, Trim(mtPackages.Fields[cSUPPLIERCODE].AsString)) ;
     mtPackages.Next ;
    End ;//While

   Finally
    cds_LoadPackages.EnableControls ;
   End ;
  Finally
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ; // with
End ;
*)

procedure TfLoadNoLO.acImportPkgsUpdate(Sender: TObject);
begin
{ With dmLoadNoLO do
 Begin
  acImportPkgs.Enabled:= (DataSaved) and (LoadEnabled) and (cds_LSP.Active)
  and (cds_LoadHead.Active) and (cds_LoadHeadPackageEntryOption.AsInteger = 1) ;
 End ; }
end;

procedure TfLoadNoLO.SetPackageEntryOption ;
Begin

End ;

procedure TfLoadNoLO.lcDelAdrEnter(Sender: TObject);
begin
 With dmLoadNoLO do
 Begin
  if not cds_LoadHeadCustomerNo.IsNull then
  Begin
   cds_Comp_DelAdr.Filter   := 'ClientNo = ' + cds_LoadHeadCustomerNo.AsString ;
   cds_Comp_DelAdr.Filtered := True ;
  end
  else
  Begin
   cds_Comp_DelAdr.Filter   := 'ClientNo = -1' ;
   cds_Comp_DelAdr.Filtered := True ;
  End ;
 End ;
end;

procedure TfLoadNoLO.lcDelAdrExit(Sender: TObject);
begin
 With dmLoadNoLO do
 Begin
  cds_Comp_DelAdr.Filtered := False ;
 End ;
end;

procedure TfLoadNoLO.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfLoadNoLO.ScanningEgnaPkgNo(Sender: TObject; PkgNo, EgenPkgSupplierCode : String) ;
const
  LF = #10;
var
  NewPkgNo        : Integer ;
  PktNrLevKod     : String3 ;//Lev koden i paketnrsträngen
  PkgSupplierCode : String3;
  Action          : TEditAction;
//  ProductNo : Integer ;
  Save_Cursor     :TCursor;
  Res_UserName    : String ;
  ClientID        : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  NewPkgNo:= 0 ;
  if Length(Trim(PkgNo)) > 10 then
  Begin
   Try
   NewPkgNo:= StrToInt(Copy(PkgNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr)) ;
   ClientID := Copy(PkgNo, 1, 11) ;
   Except
    on E: EConvertError do
       ShowMessage(E.ClassName + LF + E.Message);
   End ;
   if NewPkgNo < 1 then
    Exit ;
   PktNrLevKod:= Copy(PkgNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
   PkgSupplierCode:= dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod, ClientID) ;
  End
   else //Length < 11
    Begin
     NewPkgNo:= StrToIntDef(PkgNo,0) ;
     PkgSupplierCode:= EgenPkgSupplierCode ;
     if NewPkgNo = 0 then
     Begin
      ShowMessage('Koden kunde inte översättas till ett Paketnr') ;
      Exit ;
     End ;
    End ;

  if dmLoadNoLO.cds_LoadPackages.FindKey([NewPkgNo, PkgSupplierCode]) then
  Begin
   Action:= eaDuplicate ;
  End
  else
  Action := eaAccept ;

  if Action = eaAccept then
        if dmsSystem.Pkg_Reserved(
          NewPkgNo,
          PkgSupplierCode, 'TfLoadEntrySSP', Res_UserName
          ) = ThisUser.UserName+'/'+'TfLoadEntrySSP' { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Action := eaACCEPT ;
          end
          else
           Action := eaReserved ;

    if Action = eaACCEPT then
     InsertScannedPkgNo(Sender, NewPkgNo, PkgSupplierCode)
      else
       if Action = eaReserved then
        ShowMessage('Paketnr '+IntToStr(NewPkgNo)+' är reserverat av '+Res_UserName) 
         else
          ShowMessage('Paketnr '+IntToStr(NewPkgNo)+' finns inte') ;

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadNoLO.InsertScannedPkgNo(Sender : TObject;const PkgNo : Integer;const PkgSupplierCode : String) ;
Var
  CustcdsNo,
  LO_Number : Integer ;
begin
 With dmLoadNoLO do
 Begin
  Try
   LO_Number            := 1 ;
   CustcdsNo            := 1 ;


     sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger:= PkgNo ;
     sq_OnePkgDetailData.ParamByName('SupplierCode').AsString:= PkgSupplierCode ;
     sq_OnePkgDetailData.Open ;
     if not sq_OnePkgDetailData.Eof then
     Begin
      cds_LoadPackages.Insert ;
//      cds_LoadPackagesDefaultsspObjectNo.AsInteger      := -1 ;//SuppShipPlanObjectNo ;
      cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := CustcdsNo ;
      cds_LoadPackagesShippingPlanNo.AsInteger                    := LO_Number ;
      cds_LoadPackagesProductNo.AsInteger               := sq_OnePkgDetailDataProductNo.AsInteger ;
      cds_LoadPackagesPRODUCT.AsString                  := sq_OnePkgDetailDataPRODUCT.AsString ;
      cds_LoadPackagesPACKAGENO.AsInteger               := sq_OnePkgDetailDataPackageNo.AsInteger ;
//      cds_LoadPackagesNoOfPackages.AsInteger            := -1 ;
      cds_LoadPackagesPACKAGETYPENO.AsInteger           := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesSupplierCode.AsString             := Trim(PkgSupplierCode) ;
      cds_LoadPackagesM3_NET.AsFloat                    := sq_OnePkgDetailDataM3_NET.AsFloat ;
      cds_LoadPackagesM3_NOM.AsFloat                    := sq_OnePkgDetailDataM3_NOM.AsFloat ;
//      cds_LoadPackagesKVM.AsFloat                       := sq_OnePkgDetailDataKVM.AsFloat ;
      cds_LoadPackagesLopM.AsFloat                      := sq_OnePkgDetailDataLopM.AsFloat ;
      cds_LoadPackagesPCS.AsInteger                     := sq_OnePkgDetailDataPCS.AsInteger ;
      cds_LoadPackagesPCS_PER_LENGTH.AsString           := sq_OnePkgDetailDataPCS_PER_LENGTH.AsString ;
      cds_LoadPackagesNoOfLengths.AsInteger             := sq_OnePkgDetailDataNoOfLengths.AsInteger ;
      cds_LoadPackagesProductLengthNo.AsInteger         := sq_OnePkgDetailDataProductLengthNo.AsInteger ;

      cds_LoadPackagesOverrideMatch.AsInteger               := sq_OnePkgDetailDataPCS.AsInteger ; //sq_OnePkgDetailDataMCClassNo.AsInteger ;      

      cds_LoadPackagesATMM.AsFloat                      := sq_OnePkgDetailDataActualThicknessMM.AsFloat ;
      cds_LoadPackagesABMM.AsFloat                      := sq_OnePkgDetailDataActualWidthMM.AsFloat ;
      cds_LoadPackagesSurfacingNo.AsInteger             := sq_OnePkgDetailDataSurfacingNo.AsInteger ;
      cds_LoadPackagesSpeciesNo.AsInteger               := sq_OnePkgDetailDataSpeciesNo.AsInteger ;
      cds_LoadPackagesMainGradeNo.AsInteger             := sq_OnePkgDetailDataMainGradeNo.AsInteger ;
      cds_LoadPackagesALMM.AsFloat                      := sq_OnePkgDetailDataALMM.AsFloat ;
      cds_LoadPackagesDefsspNo.AsInteger      := sq_OnePkgDetailDataLIPNo.AsInteger ;

      cds_LoadPackagesPkg_State.AsInteger               := NEW_PACKAGE ;
      cds_LoadPackagesPkg_Function.AsInteger            := ADD_PKG_TO_LOAD ;
      cds_LoadPackagesChanged.AsInteger                 := 1 ;
      cds_LoadPackagesPackageOK.AsInteger               := BAD_PKG ;
//      cds_LoadPackagesProcessNo.AsInteger               := sq_OnePkgDetailDataProcessNo.AsInteger ;


      sq_OnePkgDetailData.Close ;
      cds_LoadPackages.Post ;
     End
      else
       ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte') ;

      Except
       on eDatabaseError do
       Begin
        Raise ;
        cds_LoadPackages.Cancel ;
       End ;
      End ;
 End ; // with
End ;

end.
