unit UnitMovePkgs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, VidaType, db,
  kbmMemTable, StdCtrls, ImgList, SqlTimSt, Buttons, ComCtrls,
  cxPC, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxSpinEdit,
  cxGraphics, cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  ActnList, cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxBar, dxBarExtItems, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxLabel, Menus, cxLookAndFeelPainters, cxButtons,
  cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxCore,
  cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, siComp, siLngLnk,
  System.Actions ;

type
  TfrmMovePkgs = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    lbClose: TdxBarLargeButton;
    pmPkgs: TdxBarPopupMenu;
    lbAddPackage: TdxBarLargeButton;
    ImageList1: TImageList;
    lbPkgInfo: TdxBarLargeButton;
    lbPkgNoSerie: TdxBarLargeButton;
    bbCustomPkgGrid: TdxBarButton;
    bbRemoveAllRows: TdxBarButton;
    bbRemoveRow: TdxBarButton;
    lbInitBarCodeScanning: TdxBarLargeButton;
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
    dsUserProp: TDataSource;
    ActionList1: TActionList;
    acFlyttaPaket: TAction;
    Panel1: TPanel;
    grdPkgs: TcxGrid;
    grdPkgsDBBandedTableView1: TcxGridDBBandedTableView;
    grdPkgsDBBandedTableView1PACKAGENO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SUPP_CODE: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ROWNO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PRODUCT: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1BAR_CODE: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1GRADE_STAMP: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1M3_NET: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PCS: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1M3_NOM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1KVM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LOPM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1INVENTORY: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PCS_PER_LENGTH: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1OWNER: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1OWNERNO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LOG_INVENTORY_NO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1BARCODE_ID: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1GRADESTAMPNO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SUPPLIERNO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Old_PackageTypeNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PIP: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LoadDetailNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PACKAGETYPENO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ACTTHICK: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ACTWIDTH: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1NOMTHICK: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1NOMWIDTH: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Status: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1StatusText: TcxGridDBBandedColumn;
    grdPkgsLevel1: TcxGridLevel;
    Panel2: TPanel;
    bbClearPkgGrid: TBitBtn;
    BitBtn2: TBitBtn;
    acPkgNoSerie: TAction;
    acStartBarCodeScanning: TAction;
    acClose: TAction;
    acAddRow: TAction;
    acRemoveRow: TAction;
    acDeletePkgFromSystem: TAction;
    Panel3: TPanel;
    Label11: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    lcOWNER: TcxDBLookupComboBox;
    lcREGPOINT: TcxDBLookupComboBox;
    deRegDate: TcxDBDateEdit;
    ePktNr: TEdit;
    cxGridPopupMenu1: TcxGridPopupMenu;
    mtUserPropSalesRegionNo: TIntegerField;
    mtUserPropVolumeUnitNo: TIntegerField;
    mtUserPropLengthFormatNo: TIntegerField;
    mtUserPropForm: TStringField;
    mtUserPropUserID: TIntegerField;
    mtUserPropLengthVolUnitNo: TIntegerField;
    acSearchRunNo: TAction;
    mtUserPropGroupByBox: TIntegerField;
    mtUserPropGroupSummary: TIntegerField;
    Label2: TLabel;
    lcPIPNAME: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    lcLIPName: TcxDBLookupComboBox;
    cxButton1: TcxButton;
    Label1: TLabel;
    Bevel1: TBevel;
    acPkgInfo: TAction;
    acRemoveAllRows: TAction;
    BitBtn1: TBitBtn;
    cxLabel1: TcxLabel;
    lcVERK: TcxDBLookupComboBox;
    lcTO_PIPNAME: TcxDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    mtUserPropTO_PIPNAME: TStringField;
    mtUserPropTO_LIPNAME: TStringField;
    Bevel2: TBevel;
    mtUserPropAgentNo: TIntegerField;
    mtUserPropShipperNo: TIntegerField;
    mtUserPropStartPeriod: TDateTimeField;
    mtUserPropEndPeriod: TDateTimeField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleRedBg: TcxStyle;
    grdPkgsDBBandedTableView1InvNr: TcxGridDBBandedColumn;
    mtUserPropFilter1: TStringField;
    mtUserPropFilter2: TStringField;
    siLangLinked_frmMovePkgs: TsiLangLinked;
    procedure lbCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure ePktNrKeyPress(Sender: TObject; var Key: Char);
    procedure mtUserPropOwnerNoChange(Sender: TField);
    procedure mtUserPropPIPNoChange(Sender: TField);
    procedure mtUserPropProducerNoChange(Sender: TField);
    procedure mtUserPropAfterInsert(DataSet: TDataSet);
    procedure grdPkgsDBBandedTableView1PACKAGENOPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure acFlyttaPaketExecute(Sender: TObject);
    procedure acPkgNoSerieExecute(Sender: TObject);
    procedure acStartBarCodeScanningExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acAddRowExecute(Sender: TObject);
    procedure acRemoveRowExecute(Sender: TObject);
    procedure acRemoveRowUpdate(Sender: TObject);
    procedure acAddRowUpdate(Sender: TObject);
    procedure acFlyttaPaketUpdate(Sender: TObject);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acRemoveAllRowsExecute(Sender: TObject);
    procedure acRemoveAllRowsUpdate(Sender: TObject);
    procedure mtUserPropVerkNoChange(Sender: TField);
    procedure mtUserPropSalesRegionNoChange(Sender: TField);
    procedure grdPkgsDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
     FExternMove : Boolean ;
     EgenPkgSupplierCode :  String ;
     Unique_No : Integer ;
     FIsModified : Boolean ;
     StreckKodPkgNo : String ;
     function  ControlInvDateMotDetLagerDetFlyttasTill(Sender: TObject) : Boolean ;
     function  ControlInvDate(Sender: TObject) : Boolean ;
     procedure CloseDataSets;
     function IdentifyPackageSupplier(
          const PkgNo : Integer;
          var PkgSupplierCode: String3;
          Var ProductNo : Integer;
          Var Res_UserName : String) : TEditAction;
     procedure InsertPkgSerie(Sender: TObject) ;
     procedure AddPkgToGrid(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer) ;
     procedure RemoveAllSuccespkgs(Sender: TObject);
//     function  AddPkgTo_mtPackage(Sender: TObject;const LIP, PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer)  : TEditAction ;

  public
    { Public declarations }
     procedure CreateCo (const ExternMove : Boolean) ;
     procedure ScanningPkgNo(Sender: TObject; PkgNo : String) ;
     procedure ScanningEgnaPkgNo(Sender: TObject; PkgNo : String) ;
     procedure RemotePkgEntry (PkgNos : TkbmMemTable) ;
  end;

var frmMovePkgs: TfrmMovePkgs;

implementation

uses dmLM1, VidaConst, 
  dmsVidaContact, dmsVidaProduct,
  VidaUser, UnitPkgInfo,
  UnitPkgNoSeries, dmcVidaOrder, dmsVidaSystem, dmcPkgs, dmcVidaSystem,
  uScanPkgNo, dmsDataConn , dmc_UserProps;

{$R *.dfm}

procedure TfrmMovePkgs.CreateCo (const ExternMove : Boolean) ;
var
  Save_Cursor:TCursor;
begin
 FExternMove    := ExternMove ;
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 Try
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdPkgs.Name, grdPkgsDBBandedTableView1) ;
  grdPkgsDBBandedTableView1ROWNO.SortOrder:= soAscending ;

  if FExternMove = False then
  Begin
   mtUserProp.Edit ;
   mtUserPropVerkNo.AsInteger:= mtUserPropOwnerNo.AsInteger ;
   mtUserPropRegPointNo.AsInteger:= 7 ;//7 = Lager   
   mtUserProp.Post ;
   lcVERK.Enabled:= False ;
   lcTO_PIPNAME.Enabled:= False ;
  End
  else
  Begin
   mtUserProp.Edit ;
   mtUserPropRegPointNo.AsInteger:= 7 ;//7 = Lager
   mtUserProp.Post ;
  End ;

  if mtUserPropRoleType.AsInteger = cLego then
  Begin
   lcOWNER.Enabled    := False ;
   lcPIPNAME.Enabled  := False ;
  End ;

  if mtUserPropRoleType.AsInteger = cInternal_Mill then
  Begin
   lcOWNER.Enabled    := False ;
//   lcPIPNAME.Enabled  := False ;
   lcVERK.Enabled:= False ;
   lcTO_PIPNAME.Enabled:= False ;
  End ;
  grdPkgsDBBandedTableView1.Bands[2].Visible:= False ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmMovePkgs.CloseDataSets;
begin
   With dmPkgs do
   Begin
    mtLoadPackages.Active:= False ;
   End ;
end;

procedure TfrmMovePkgs.lbCloseClick(Sender: TObject);
begin
 Close ;
end;

procedure TfrmMovePkgs.AddPkgToGrid(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer)  ;
var
 x : Integer ;
 Res_UserName : String ;
Begin
 With dmPkgs do
 Begin
     sq_OneUniquePkg.Close ;
     sq_OneUniquePkg.ParamByName('PackageNo').AsInteger           := PkgNo ;
     sq_OneUniquePkg.ParamByName('SupplierCode').AsString         := PkgSupplierCode ;
     sq_OneUniquePkg.ParamByName('OwnerNo').AsInteger             := mtUserPropOwnerNo.AsInteger ;
     sq_OneUniquePkg.ParamByName('UserCompanyLoggedIn').AsInteger := ThisUser.CompanyNo ;
     sq_OneUniquePkg.ParamByName('Status').AsInteger              := 0 ;
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
       mtLoadPackages.Fields.Fields[x].AsVariant:= sq_OneUniquePkg.Fields.Fields[x].AsVariant ;
      mtLoadPackagesLoadDetailNo.AsInteger:= Unique_No ;
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
       ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+sq_OnePkgDetailDataPACKAGENO.AsString+'/'+sq_OnePkgDetailDataSUPP_CODE.AsString+siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_4' (* ' är reserverat av användare ' *) )+Res_UserName) ;
      End ;
     End  //if not...
     else
      Begin
       mtLoadPackages.Cancel ;
       ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+IntToStr(PkgNo)+'/'+PkgSupplierCode+siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_6' (* ' finns inte' *) )) ;
      End ;

     sq_OneUniquePkg.Close ;
 End ; //with
end;

function TfrmMovePkgs.IdentifyPackageSupplier(
  const PkgNo : Integer;
  var PkgSupplierCode: String3;
  Var ProductNo : Integer;
  Var Res_UserName : String) : TEditAction;
const
  NO_USER_HAS_THIS_PACKAGE_RESERVED = '0' ;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
Var SupplierNo : Integer;
begin
 //check that package is available in inventory and Get supplier code
    PkgSupplierCode := dmsSystem.PkgNoToSuppCode_III(PkgNo, mtUserPropPIPNo.AsInteger, mtUserPropOwnerNo.AsInteger, SupplierNo, ProductNo);
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

//After adding a package manually
procedure TfrmMovePkgs.FormCreate(Sender: TObject);
begin
 dmPkgs:= TdmPkgs.Create(Nil);
 Unique_No:= 1 ;
 dm_UserProps.LoadUserProps (Self.Name, mtuserprop) ;
 dmPkgs.mtLoadPackages.Active:= True ;
end;

procedure TfrmMovePkgs.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var dResult: Integer ;
//    OvcIniFileStore1 : TIniFile ;
begin
  if FIsModified = True then
   Begin
   dResult:= MessageDlg(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_7' (* 'Valda paket är inte avregistrerade, vill du avsluta?' *) ),
    mtConfirmation, [mbYes, mbNo], 0) ;
   End
    else
    dResult:= mrYes ;

    if dResult = mrYes then
     CanClose := True
    else
    if dResult = mrNo then
      CanClose := False ;

 if CanClose = True then
 begin

   //Remove entries in Pkgs_Res
  With dmsSystem do
  Begin
   Delete_ReservedPkgs (Self.Name) ;
  End ;

  CloseDataSets;
 end;

 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdPkgs.Name, grdPkgsDBBandedTableView1) ;
 dm_UserProps.SaveUserProps (Self.Name, mtUserProp) ;
end;

procedure TfrmMovePkgs.InsertPkgSerie(Sender: TObject) ;
Var     NoOfPkgsInSerie, x : Integer ;
        ResultButton : word ;
        Save_Cursor:TCursor;
        Res_UserName : String ;
        frmPkgNoSeries : TfrmPkgNoSeries ;
begin
 ResultButton:= mrYes ;
 With dmPkgs do
 Begin
  mtLoadPackages.DisableControls ;
  frmPkgNoSeries:= TfrmPkgNoSeries.Create(Nil) ;
  Try
   if frmPkgNoSeries.ShowModal = mrOk then
   Begin
    NoOfPkgsInSerie:= StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text))-
    StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;

    if NoOfPkgsInSerie > 100 then
    ResultButton:= MessageDlg(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_8' (* 'Upp till ' *) )+IntToStr(NoOfPkgsInSerie)+siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_9' (* ' paket kanske hämtas, är det korrekt?' *) ),
    mtConfirmation, [mbYes, mbNo, mbCancel], 0) ;

    if ResultButton = mrYes then
    Begin
     Save_Cursor    := Screen.Cursor;
     Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
     Try
//     mtLoadPackages.Active:= False ;
//     mtLoadPackages.Active:= True ;
     sq_OnePkgDetailData.Close ;
     sq_OnePkgDetailData.ParamByName('First_PackageNo').AsInteger     := StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;
     sq_OnePkgDetailData.ParamByName('Last_PackageNo').AsInteger      := StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text)) ;
     sq_OnePkgDetailData.ParamByName('OwnerNo').AsInteger             := mtUserPropOwnerNo.AsInteger ;
     sq_OnePkgDetailData.ParamByName('UserCompanyLoggedIn').AsInteger := ThisUser.CompanyNo ;
     sq_OnePkgDetailData.Open ;
     While not sq_OnePkgDetailData.Eof do
     Begin
     if dmsSystem.Pkg_Reserved(
          sq_OnePkgDetailDataPACKAGENO.AsInteger,
          sq_OnePkgDetailDataSUPP_CODE.AsString, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
     begin

      Try
      mtLoadPackages.Insert ;
      For x := 0 to 21 do
       mtLoadPackages.Fields.Fields[x].AsVariant    := sq_OnePkgDetailData.Fields.Fields[x].AsVariant ;
      mtLoadPackagesLoadDetailNo.AsInteger          := Unique_No ;
      mtLoadPackages.Post ;
      Unique_No := Succ(Unique_No) ;
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
       ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+sq_OnePkgDetailDataPACKAGENO.AsString+'/'+sq_OnePkgDetailDataSUPP_CODE.AsString+siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_4' (* ' är reserverat av användare ' *) )+Res_UserName) ;
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
   mtLoadPackages.EnableControls ;
  End ;
 End ; // with
End ;

procedure TfrmMovePkgs.FormDestroy(Sender: TObject);
begin
 FreeAndNil(dmPkgs) ; //Free ;
end;

procedure TfrmMovePkgs.RemoveAllSuccespkgs(Sender: TObject);
begin
 //Remove all rows
 With dmPkgs do
 Begin
  if (mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0) then
  Begin
   mtLoadPackages.Filter:= siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_16' (* 'Status = 0' *) ) ;
   mtLoadPackages.Filtered:= True ;
   Try
    mtLoadPackages.First ;
    While not mtLoadPackages.Eof do
     mtLoadPackages.Delete ;
   Finally
    mtLoadPackages.Filtered:= False ;
   End ;
  End ;
 End ;
end;

procedure TfrmMovePkgs.ePktNrKeyPress(Sender: TObject; var Key: Char);
begin
 With dmPkgs do
 Begin
  if Key = #13 then
  Begin
   ScanningPkgNo(Sender, StreckKodPkgNo) ;
   StreckKodPkgNo:= '' ;
   ePktNr.Text:= '' ;
  End
  else
   Begin
    if key in ['0','1','2','3','4','5','6','7','8','9'] then
    StreckKodPkgNo:= StreckKodPkgNo + Key ;
   End ;
 End ; //with
end;

procedure TfrmMovePkgs.ScanningPkgNo(Sender: TObject; PkgNo : String) ;
const
  LF = #10;
var
  NewPkgNo        : Integer ;
  PktNrLevKod     : String ;//Lev koden i paketnrsträngen
  PkgSupplierCode : String3;
  Action          : TEditAction;
  ProductNo       : Integer ;
  Save_Cursor     : TCursor;
  Res_UserName    : String ;
  RegPointName    : String ;
  ClientID        : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  NewPkgNo:= 0 ;
  if Length(Trim(PkgNo)) > 10 then
  Begin
//Notera att i den långa koden skall supplier koden finnas!
   Try
   ClientID := Copy(PkgNo, 1, 11) ;
   NewPkgNo := StrToInt(Trim(Copy(PkgNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr))) ;
    Except
     on E: EConvertError do
      ShowMessage(E.ClassName + LF + E.Message);
    End ;
    if NewPkgNo < 1 then
     Exit ;
    PktNrLevKod                     := Copy(PkgNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
    PkgSupplierCode                 := dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;
    dmPkgs.mtLoadPackages.IndexName := 'mtLoadPackagesIndex5' ;
  End
  else //Length < 11
  Begin
   NewPkgNo:= StrToIntDef(PkgNo,0) ;
   if NewPkgNo = 0 then
   Begin
    ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_18' (* 'Streckkoden kunde inte översättas till ett Paketnr' *) )) ;
    Exit ;
   End ;

   Action := IdentifyPackageSupplier(
      NewPkgNo,
      PkgSupplierCode,
      ProductNo,
      Res_UserName );
   if Length(Trim(PkgSupplierCode)) = 0 then
   Begin
    ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_19' (* 'Inget paket kunde identifieras' *) )) ;
    Exit ;
   End ;

//   PkgSupplierCode:= EgenPkgSupplierCode ;

  End ;

  //Ett paket kan inte avregistreras flera ggr mot en produktionsmätpunkt
  RegPointName:= dmPkgs.IsPkgAvregistrerat (NewPkgNo, mtUserPropOwnerNo.AsInteger, PkgSupplierCode) ;
  if RegPointName <>
{TSI:IGNORE ON}
	'NO'
{TSI:IGNORE OFF}
 then
  Begin
   Action:= eaAlreadyAvReg ;
  End
   else
    Action := eaAccept ;

  if Action = eaAccept then
  if dmPkgs.mtLoadPackages.Locate('PACKAGENO;SUPP_CODE', VarArrayOf([NewPkgNo, PkgSupplierCode]), []) then
  Begin
   Action:= eaDuplicate ;
  End
  else
  Action := eaAccept ;

  if Action = eaAccept then
        if dmsSystem.Pkg_Reserved(
          NewPkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Action := eaACCEPT ;
          end
          else
           Action := eaReserved ;

  if Action = eaACCEPT then
  Begin
   dmPkgs.mtLoadPackages.Insert ;
   Try
   AddPkgToGrid(Sender, NewPkgNo, PkgSupplierCode, ProductNo) ;
   Except
       on eDatabaseError do
       Begin
        Raise ;
        dmPkgs.mtLoadPackages.Cancel ;
       End ;
   End ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_6' (* ' finns inte' *) )) ;
    End
    else
     if Action = eaReserved then
      Begin
       ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_4' (* ' är reserverat av användare ' *) )+Res_UserName) ;
      End
      else
       if Action = eaAlreadyAvReg then
       Begin
        ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_27' (* ' är redan avregistrerat mot mätpunkt ' *) )+RegPointName) ;
       End ;

{    else
    if Action = eaDuplicate then
     ShowMessage('Paketnr '+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+' är redan inmatat') ; }

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    dmPkgs.mtLoadPackages.IndexName:= 'mtLoadPackagesIndex6' ;
  end;
end;

{function TfrmMovePkgs.AddPkgTo_mtPackage(Sender: TObject;const LIP, PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer) : TEditAction ;
var
 x : Integer ;
// Res_UserName : String ;
Begin
 With dmPkgs do
 Begin
     sq_OnePkg.Close ;
     sq_OnePkg.ParamByName('PackageNo').AsInteger:= PkgNo ;
     sq_OnePkg.ParamByName('SupplierCode').AsString:= PkgSupplierCode ;
     sq_OnePkg.ParamByName('OwnerNo').AsInteger:= mtUserPropOwnerNo.AsInteger ;
     sq_OnePkg.ParamByName('UserCompanyLoggedIn').AsInteger:= ThisUser.CompanyNo ;
     sq_OnePkg.Open ;
     if not sq_OnePkg.Eof then
     Begin

      Try
      For x := 0 to 21 do
       mtLoadPackages.Fields.Fields[x].AsVariant:= sq_OnePkg.Fields.Fields[x].AsVariant ;
      mtLoadPackagesLoadDetailNo.AsInteger:= Unique_No ;
      mtLoadPackagesLOG_INVENTORY_NO.AsInteger:= LIP ;
      mtLoadPackages.Post ;
      Result:= eaAccept ;
      Unique_No:= Succ(Unique_No) ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ; //Except

     End  //if not...
     else
      Begin
       mtLoadPackages.Cancel ;
       ShowMessage('Paketnr '+IntToStr(PkgNo)+'/'+PkgSupplierCode+' finns inte') ;
       Result:= eaREJECT ;
      End ;

     sq_OnePkg.Close ;
 End ; //with
end; }

procedure TfrmMovePkgs.ScanningEgnaPkgNo(Sender: TObject; PkgNo : String) ;
const
  LF = #10;
var
  NewPkgNo          : Integer ;
  PktNrLevKod       : String ;//Lev koden i paketnrsträngen
  PkgSupplierCode   : String3;
  Action            : TEditAction;
  ProductNo         : Integer ;
  Save_Cursor       : TCursor;
  Res_UserName      : String ;
  RegPointName      : String ;
  ClientID          : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  NewPkgNo:= 0 ;

  if Length(Trim(PkgNo)) > 10 then
  Begin
   Try
   ClientID := Copy(PkgNo, 1, 11) ;
   NewPkgNo := StrToInt(Trim(Copy(PkgNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr))) ;
   Except
    on E: EConvertError do
       ShowMessage(E.ClassName + LF + E.Message);
   End ;
   if NewPkgNo < 1 then
    Exit ;
   PktNrLevKod      := Copy(PkgNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
   PkgSupplierCode  := dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;
//   dmPkgs.mtLoadPackages.IndexName:= 'mtLoadPackagesIndex5' ;
  End
  else //Length < 11
  Begin
   NewPkgNo:= StrToIntDef(PkgNo,0) ;
   PkgSupplierCode:= EgenPkgSupplierCode ;
   if NewPkgNo = 0 then
   Begin
    ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_29' (* 'Koden kunde inte översättas till ett Paketnr' *) )) ;
    Exit ;
   End ;
  End ;


  //Ett paket kan inte avregistreras flera ggr mot en produktionsmätpunkt
  RegPointName:= dmPkgs.IsPkgAvregistrerat (NewPkgNo, mtUserPropOwnerNo.AsInteger, PkgSupplierCode) ;
  if RegPointName <>
{TSI:IGNORE ON}
	'NO'
{TSI:IGNORE OFF}
 then
  Begin
   Action:= eaAlreadyAvReg ;
  End
   else
    Action := eaAccept ;

  if Action = eaAccept then
  if dmPkgs.mtLoadPackages.Locate('PACKAGENO;SUPP_CODE', VarArrayOf([NewPkgNo, PkgSupplierCode]), []) then
  Begin
   Action:= eaDuplicate ;
  End
   else
    Action := eaAccept ;

  if Action = eaAccept then
        if dmsSystem.Pkg_Reserved(
          NewPkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Action := eaACCEPT ;
          end
          else
           Action := eaReserved ;

  if Action = eaACCEPT then
  Begin
   dmPkgs.mtLoadPackages.Insert ;
   Try
   AddPkgToGrid(Sender, NewPkgNo,PkgSupplierCode, ProductNo) ;
   Except
       on eDatabaseError do
       Begin
        Raise ;
        dmPkgs.mtLoadPackages.Cancel ;
       End ;
   End ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_6' (* ' finns inte' *) )) ;
    End
    else
     if Action = eaReserved then
     Begin
      ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_4' (* ' är reserverat av användare ' *) )+Res_UserName) ;
     End
      else
       if Action = eaAlreadyAvReg then
       Begin
        ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_27' (* ' är redan avregistrerat mot mätpunkt ' *) )+RegPointName) ;
       End ;

{    else
    if Action = eaDuplicate then
     ShowMessage('Paketnr '+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+' är redan inmatat') ; }

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    dmPkgs.mtLoadPackages.IndexName:= 'mtLoadPackagesIndex6' ;
  end;
end;

procedure TfrmMovePkgs.mtUserPropOwnerNoChange(Sender: TField);
begin
 With dm_UserProps do
 Begin
  cds_PIP.Active:= False ;
  cds_PIP.ParamByName('OwnerNo').AsInteger:= mtUserPropOwnerNo.AsInteger ;
  if mtUserPropRoleType.AsInteger = cLego then
  cds_PIP.ParamByName('LegoOwnerNo').AsInteger:= mtUserPropVerkNo.AsInteger
  else
  cds_PIP.ParamByName('LegoOwnerNo').AsInteger:= mtUserPropOwnerNo.AsInteger ;


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

procedure TfrmMovePkgs.mtUserPropPIPNoChange(Sender: TField);
begin
 if FExternMove = False then
 With dm_UserProps do
 Begin
  cds_LIP.Active:= False ;
  cds_LIP.ParamByName('PIPNo').AsInteger:= mtUserPropPIPNo.AsInteger ;
  cds_LIP.Active:= True ;
  cds_LIP.First ;
  mtUserPropLIPNo.AsInteger:= cds_LIPLIPNo.AsInteger ;

  acRemoveAllRowsExecute(Sender) ;
 End ;
end;

procedure TfrmMovePkgs.mtUserPropProducerNoChange(Sender: TField);
begin
{ With dm_UserProps do
 Begin
  mtUserPropSupplierCode.AsString:= dmsContact.GetClientCode(mtUserPropProducerNo.AsInteger) ;

  cds_RegPoint.Active:= False ;
  sq_RegPoint.ParamByName('ClientNo').AsInteger:= mtUserPropProducerNo.AsInteger ;
  cds_RegPoint.Active:= True ;
  cds_RegPoint.First ;
  mtUserPropRegPointNo.AsInteger:= cds_RegPointRegistrationPointNo.AsInteger ;
 End ; }
end;

procedure TfrmMovePkgs.mtUserPropAfterInsert(DataSet: TDataSet);
begin
 mtUserPropRegDate.AsDateTime           := Now ;
 mtUserPropProductGroupNo.AsInteger     := -1 ;
 mtUserPropProductNo.AsInteger          := -1 ;
 mtUserPropProductDescription.AsString  := siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_45' (* 'Ingen ändring' *) ) ;
end;

procedure TfrmMovePkgs.grdPkgsDBBandedTableView1PACKAGENOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  NewValue          : String;
  PkgSupplierCode   : String3;
  Action            : TEditAction;
  ProductNo         : Integer ;
  Save_Cursor       : TCursor;
  Res_UserName      : String ;
  RegPointName      : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  try
    { Do some lengthy operation }
   NewValue := DisplayValue ;//TdxTreeList((Sender as TdxTreeListColumn).TreeList).EditingText;

   Action := IdentifyPackageSupplier(
      StrToInt(NewValue),
      PkgSupplierCode,
      ProductNo,
      Res_UserName );

  if Action = eaACCEPT then
  Begin
   RegPointName:= dmPkgs.IsPkgAvregistrerat (StrToInt(NewValue), mtUserPropOwnerNo.AsInteger, PkgSupplierCode) ;
   if RegPointName <>
{TSI:IGNORE ON}
	'NO'
{TSI:IGNORE OFF}
 then
   Begin
    Action:= eaAlreadyAvReg ;
   End
    else
     Action := eaAccept ;
  End ;

  if Action = eaACCEPT then
  Begin
   AddPkgToGrid(Sender, StrToInt(NewValue),PkgSupplierCode, ProductNo) ;
   Error:= False ;
  End
   else
   if Action = eaREJECT then
    Begin
     ErrorText:= siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+NewValue+siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_6' (* ' finns inte' *) ) ;
     Error:= True ;
    End
    else
     if Action = eaReserved then
     Begin
      ErrorText:= siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+NewValue+siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_4' (* ' är reserverat av användare ' *) )+Res_UserName ;
      Error:= True ;
     End
      else
       if Action = eaAlreadyAvReg then
       Begin
        ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+NewValue+'/'+PkgSupplierCode+siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_27' (* ' är redan avregistrerat mot mätpunkt ' *) )+RegPointName) ;
       End ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfrmMovePkgs.acFlyttaPaketExecute(Sender: TObject);
const
  LF = #10;
Begin
 if mtUserPropRegDate.AsDateTime > Now then
 Begin
  ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_53' (* 'Registreringsdatum får inte vara större än aktuellt datum' *) ));
  Exit ;
 End ;

 With dmPkgs do
 Begin
  if mtLoadPackages.State in [dsEdit, dsInsert] then
  mtLoadPackages.Post ;
 End ;

 if ControlInvDate(Sender) then
 Begin
 if ControlInvDateMotDetLagerDetFlyttasTill(Sender) then
 Begin
  if mtUserProp.State in [dsEdit, dsInsert] then
   mtUserProp.Post ;
  if MessageDlg(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_54' (* 'Vill du flytta paket till lagergrupp: ' *) )
  +Trim(lcLIPName.Text)
  +LF+siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_55' (* 'Datum: ' *) )+deRegDate.Text
  ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   if FExternMove then
   Begin
    if dmPkgs.ExtFlyttaPaket(mtUserProp) then
     RemoveAllSuccespkgs(Sender) ;
   End
   else
   Begin
    if dmPkgs.FlyttaPaket(mtUserProp) then
     RemoveAllSuccespkgs(Sender) ;
   End ;
  End ; //if
 End //if ControlInvDateMotDetLagerDetFlyttasTill(Sender) then
  else
   ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_56' (* 'Paket, markerade med röd färg, kan inte flyttas pga att registreringsdatum är före inventerings eller maxdatum i en inventering där lagergruppen ingår.' *) )) ;
 End //if ControlInvDate(Sender) then
  else
   ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_56' (* 'Paket, markerade med röd färg, kan inte flyttas pga att registreringsdatum är före inventerings eller maxdatum i en inventering där lagergruppen ingår.' *) )) ;
end;

procedure TfrmMovePkgs.acPkgNoSerieExecute(Sender: TObject);
begin
 With dmPkgs do
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
end;

procedure TfrmMovePkgs.acStartBarCodeScanningExecute(Sender: TObject);
begin
//Proc GetPkgPos läser in paketnr posistioner och längder
 grdPkgsDBBandedTableView1ROWNO.SortOrder:= soAscending ;
 EgenPkgSupplierCode            := dmsSystem.GetPkgPos (ThisUser.CompanyNo) ;
 fScanPkgNo                     := TfScanPkgNo.Create(Self);
 Try
  fScanPkgNo.cbEgenLevKod.Caption:= siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_58' (* 'Scanna endast in paket med leverantörskod ' *) )+EgenPkgSupplierCode ;
  fScanPkgNo.ShowModal ;
 Finally
  fScanPkgNo.Free ;
 End ;
end;

procedure TfrmMovePkgs.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmMovePkgs.acAddRowExecute(Sender: TObject);
begin
 dmPkgs.mtLoadPackages.Append ;
 grdPkgs.SetFocus ;
end;

procedure TfrmMovePkgs.acRemoveRowExecute(Sender: TObject);
begin
 // remove one row
 With dmPkgs do
 if ((mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0))
 or ((mtLoadPackages.Active) AND (mtLoadPackages.State in [dsEdit, dsInsert])) then
 Begin
  mtLoadPackages.Delete ;
 End ;
end;

procedure TfrmMovePkgs.acRemoveRowUpdate(Sender: TObject);
begin
 // remove one row
 With dmPkgs do
  acRemoveRow.Enabled:= (mtLoadPackages.Active) and ((mtLoadPackages.RecordCount > 0)
  or (mtLoadPackages.State in [dsEdit, dsInsert])) ;
end;

procedure TfrmMovePkgs.acAddRowUpdate(Sender: TObject);
begin
 acAddRow.Enabled:= (mtUserProp.Active) and (mtUserPropOwnerNo.AsInteger > 0)
 and (mtUserPropProducerNo.AsInteger > 0) and (mtUserPropRegPointNo.AsInteger > 0) ;
end;

procedure TfrmMovePkgs.acFlyttaPaketUpdate(Sender: TObject);
begin
 With dmPkgs do
 Begin
  acFlyttaPaket.Enabled:= (mtLoadPackages.Active) and ((mtLoadPackages.RecordCount > 0)
  or (mtLoadPackages.State in [dsEdit, dsInsert])) ;
 End ;
end;

procedure TfrmMovePkgs.RemotePkgEntry (PkgNos : TkbmMemTable) ;
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
  mtUserPropOwnerNo.AsInteger := PkgNos.FieldByName('OwnerNo').AsInteger ;
  mtUserPropPIPNo.AsInteger   := PkgNos.FieldByName('PIPNo').AsInteger ;
  mtUserProp.Post ;
  mtLoadPackages.IndexName:= 'mtLoadPackagesIndex5' ;
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
      sq_OneUniquePkg.ParamByName('Status').AsInteger              := 1 ;
      sq_OneUniquePkg.Open ;
      mtLoadPackages.Insert ;
      For x := 0 to 21 do
       mtLoadPackages.Fields.Fields[x].AsVariant:= sq_OneUniquePkg.Fields.Fields[x].AsVariant ;
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
      ShowMessage(siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) )+PkgNos.FieldByName('PACKAGENO').AsString+'/'+PkgNos.FieldByName('SUPP_CODE').AsString+siLangLinked_frmMovePkgs.GetTextOrDefault('IDS_71' (* ' är reserverad av ' *) )+Res_UserName) ;
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

procedure TfrmMovePkgs.acPkgInfoExecute(Sender: TObject);
Var frmPkgInfo : TfrmPkgInfo ;
begin
 With dmPkgs do
 Begin
 if (mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0) then
 Begin
  frmPkgInfo:= TfrmPkgInfo.Create(Nil);
  Try
   frmPkgInfo.PackageNo:= dmPkgs.mtLoadPackagesPackageNo.AsInteger ;
   frmPkgInfo.SupplierCode:= dmPkgs.mtLoadPackagesSUPP_CODE.AsString ;
   frmPkgInfo.ShowModal ;
  Finally
   FreeAndNil(frmPkgInfo) ;
  End ;
 End ;
 End ; //with
end;

procedure TfrmMovePkgs.acRemoveAllRowsExecute(Sender: TObject);
begin
 //Remove all rows
 With dmPkgs do
 Begin
 if ((mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0))
 or ((mtLoadPackages.Active) AND (mtLoadPackages.State in [dsEdit, dsInsert])) then
  Begin
   mtLoadPackages.Active:= False ;
   mtLoadPackages.Active:= True ;
  End ;
 End ;
end;

procedure TfrmMovePkgs.acRemoveAllRowsUpdate(Sender: TObject);
begin
 // remove one row
 With dmPkgs do
  acRemoveAllRows.Enabled:= (mtLoadPackages.Active) and ((mtLoadPackages.RecordCount > 0)
  or (mtLoadPackages.State in [dsEdit, dsInsert])) ;
end;

procedure TfrmMovePkgs.mtUserPropVerkNoChange(Sender: TField);
begin
{ With dm_UserProps do
 Begin
  cds_PIP2.Active:= False ;
  sq_PIP2.ParamByName('OwnerNo').AsInteger:= mtUserPropVerkNo.AsInteger ;
  if mtUserPropRoleType.AsInteger = cLego then
  sq_PIP2.ParamByName('LegoOwnerNo').AsInteger:= mtUserPropVerkNo.AsInteger
  else
  sq_PIP2.ParamByName('LegoOwnerNo').AsInteger:= mtUserPropVerkNo.AsInteger ;

  cds_PIP2.Active:= True ;
  cds_PIP2.First ;
  mtUserPropSalesRegionNo.AsInteger:= cds_PIP2PIPNO.AsInteger ;
 End ; }
end;

procedure TfrmMovePkgs.mtUserPropSalesRegionNoChange(Sender: TField);
begin
{ With dm_UserProps do
 Begin
  cds_LIP.Active:= False ;
  sq_LIP.ParamByName('PIPNo').AsInteger:= mtUserPropSalesRegionNo.AsInteger ;
  cds_LIP.Active:= True ;
  cds_LIP.First ;
  mtUserPropProducerNo.AsInteger:= cds_LIPLIPNo.AsInteger ;
 End ; }
end;

function TfrmMovePkgs.ControlInvDate(Sender: TObject) : Boolean ;
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
  Finally
   mtLoadPackages.EnableControls ;
  End ;
 End ;//With
end;

function TfrmMovePkgs.ControlInvDateMotDetLagerDetFlyttasTill(Sender: TObject) : Boolean ;
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
  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   LastInvNr  := dmsSystem.IsRegDateBeforeInvDate(self.mtUserPropLIPNo.AsInteger, Self.mtUserPropRegDate.AsDateTime, InvDate, MaxDateMsg) ;
   if LastInvNr > -1 then
   Begin
    mtLoadPackages.Edit ;
    mtLoadPackagesInvNr.AsInteger := LastInvNr ;
    mtLoadPackages.Post ;
    Result  := False ;
   End ;
   mtLoadPackages.Next ;
  End ;
  Finally
   mtLoadPackages.EnableControls ;
  End ;
 End ;//With
end;

procedure TfrmMovePkgs.grdPkgsDBBandedTableView1StylesGetContentStyle(
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
