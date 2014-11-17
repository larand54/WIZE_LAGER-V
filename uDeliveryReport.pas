unit uDeliveryReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, ImgList, OleServer, OleCtrls,
  Menus, DB, ActnList,
  CrystalActiveXReportViewerLib11_5_TLB, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxLabel, cxCheckBox,
  cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, Buttons, cxCalc,
  cxCurrencyEdit, cxGridExportLink, cxSplitter,
  cxGridCustomPopupMenu, cxGridPopupMenu, kbmMemTable,
  cxCheckComboBox, cxDBCheckComboBox,
  cxLookAndFeelPainters, cxButtons, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSCore, dxPScxCommon, cxDBEdit,
  cxCalendar, cxImageComboBox, cxDBLabel, cxVariants, cxListBox, cxMemo,
  cxLookAndFeels, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer,
  dxPScxCheckListBoxLnk, dxPSLbxLnk, dxPSTextLnk, CRAXDRT_TLB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,


  Grids,
  DBGrids,
  cxGridDBDataDefinitions,

  cxGridCommon,
  ComCtrls, FMTBcd, SqlExpr, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  dxSkinsdxBarPainter, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxPivotGridLnk, dxPScxSSLnk, dxSkinsdxRibbonPainter, DateUtils, SqlTimSt,
  frxClass, frxDBSet, frxCross, cxNavigator, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxBarBuiltInMenu, System.Actions ;


type
  TfDeliveryReport = class(TForm)
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    lbPkgNoReport: TdxBarLargeButton;
    lbPcsPerLengthReport: TdxBarLargeButton;
    lbPkgTypeReport: TdxBarLargeButton;
    lbInventoryCount: TdxBarLargeButton;
    lbHideFilterPanel: TdxBarLargeButton;
    bbSummaryReport: TdxBarLargeButton;
    ActionList1: TActionList;
    pmFormShortcuts: TPopupMenu;
    acClose: TAction;
    Stng1: TMenuItem;
    pcInventory: TcxPageControl;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    dxComponentPrinter1: TdxComponentPrinter;
    acPkgInfo: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    Skrivut1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    dxBarButton7: TdxBarButton;
    AntlngdF91: TMenuItem;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
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
    dsUserProp: TDataSource;
    mtUserPropSalesRegionNo: TIntegerField;
    mtUserPropSR: TStringField;
    mtUserPropVolumeUniNo: TIntegerField;
    mtUserPropVU: TStringField;
    mtUserPropLengthFormatNo: TIntegerField;
    mtUserPropLengthFormat: TStringField;
    mtUserPropLengthVolUnitNo: TIntegerField;
    mtUserPropLengthVolUnit: TStringField;
    ds_Verk: TDataSource;
    mtUserPropVolumeUnitNo: TIntegerField;
    mtUserPropForm: TStringField;
    mtUserPropUserID: TIntegerField;
    cxSplitter2: TcxSplitter;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    mtUserPropGroupByBox: TIntegerField;
    mtUserPropGroupSummary: TIntegerField;
    dxBarButton27: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxStyle3: TcxStyle;
    dxBarButton28: TdxBarButton;
    cxEditStyleController1: TcxEditStyleController;
    cxEditStyleController2: TcxEditStyleController;
    cxEditStyleController3: TcxEditStyleController;
    cxStyle4: TcxStyle;
    bbAddPkgsToKilnCharge: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    cxImageList1: TcxImageList;
    ImageList1: TImageList;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    cxStyleAktivePkg: TcxStyle;
    cxStyleINAktivePkg: TcxStyle;
    mtUserPropAgentNo: TIntegerField;
    mtUserPropKilnNo: TIntegerField;
    mtUserPropTEST: TStringField;
    bbVisaAvAktiverade: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    mtUserPropShipperNo: TIntegerField;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    pgInventory: TcxPageControl;
    tsLagret: TcxTabSheet;
    Panel3: TPanel;
    Bevel1: TBevel;
    lcPIPNAME: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    ccbAT: TcxCheckComboBox;
    ccbAB: TcxCheckComboBox;
    ccbAL: TcxCheckComboBox;
    ccbTS2: TcxCheckComboBox;
    ccbKV2: TcxCheckComboBox;
    ccbSU2: TcxCheckComboBox;
    ccbIMP: TcxCheckComboBox;
    cbOwner: TcxCheckComboBox;
    eAT: TcxTextEdit;
    eAB: TcxTextEdit;
    eAL: TcxTextEdit;
    acSaveGridLayout: TAction;
    acLoadGridLayout: TAction;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    mtUserPropStartPeriod: TDateTimeField;
    mtUserPropEndPeriod: TDateTimeField;
    acExportToExcel: TAction;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    ccVarugrupp: TcxCheckComboBox;
    cxLabel29: TcxLabel;
    teREF: TcxTextEdit;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxStyleNormalAktivePkg: TcxStyle;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    ccMatpunkt: TcxCheckComboBox;
    ccbNT: TcxCheckComboBox;
    ccbNB: TcxCheckComboBox;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    eNT: TcxTextEdit;
    eNB: TcxTextEdit;
    ccSkiftLag: TcxCheckComboBox;
    cxButton1: TcxButton;
    cbPaReg: TcxCheckBox;
    cbAvreg: TcxCheckBox;
    cxButton2: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    tsProduktionPerPaketnr: TcxTabSheet;
    Panel7: TPanel;
    tsProduktionProduktSummary: TcxTabSheet;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cbProdPaketNr: TcxComboBox;
    Panel8: TPanel;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxButton14: TcxButton;
    cbProdSUM: TcxComboBox;
    cds_Verk: TFDQuery;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkSearchName: TStringField;
    cds_VerkSalesRegionNo: TIntegerField;
    cds_VerkPktNrLevKod: TStringField;
    grdProdPaketNrLevel1: TcxGridLevel;
    grdProdPaketNr: TcxGrid;
    cxLookupComboBox1: TcxLookupComboBox;
    sq_UserProfile: TFDQuery;
    sq_UserProfileUserID: TIntegerField;
    sq_UserProfileForm: TStringField;
    sq_UserProfileName: TStringField;
    acNewProdPaketNrMall: TAction;
    acDeleteProdPaketNrMall: TAction;
    acSaveProdPaketNrMall: TAction;
    acRefreshProdPaketNr: TAction;
    acExpandAllProdPaketNr: TAction;
    acCollapseAllProdPaketNr: TAction;
    acNewProdSUMMall: TAction;
    acSaveProdSUMMall: TAction;
    grdProdSUMLevel1: TcxGridLevel;
    grdProdSUM: TcxGrid;
    acRefreshProdSUM: TAction;
    acDeleteProdSUMMall: TAction;
    cxGridPopupMenu1: TcxGridPopupMenu;
    pmPkgNos: TdxBarPopupMenu;
    acCollapseAllProdSum: TAction;
    acExpandAllProdSUM: TAction;
    grdProdPaketNrDBBandedTableView1: TcxGridDBBandedTableView;
    grdProdSUMDBBandedTableView1: TcxGridDBBandedTableView;
    grdProdSUMDBBandedTableView1Operation: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1PRODUKT: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1Paketnr: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1Prefix: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1AT: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1AB: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1NT: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1NB: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1NomDim: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1AktDim: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1STYCK: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1AM3: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1NM3: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1AM1: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1MFBM: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1AM2: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1TS: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1PC: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1KV: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1UT: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1OwnerNo: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1AvgLength: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1ShiftTeamName: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1RegPointName: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1MP_SkiftLag: TcxGridDBBandedColumn;
    cxGridPopupMenu2: TcxGridPopupMenu;
    cxLabel37: TcxLabel;
    ccLand: TcxCheckComboBox;
    ccKund: TcxCheckComboBox;
    cxLabel38: TcxLabel;
    grdProdPaketNrDBBandedTableView1Kund: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1PRODUKT: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1AT: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1AB: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1NT: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1NB: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1NomDim: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1AktDim: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1AM3: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1NM3: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1PrisOK: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1TS: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1PC: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1KV: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1UT: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1OwnerNo: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1MEDELPRIS: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1NETTO: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1VarugruppNamn: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1LO: TcxGridDBBandedColumn;
    acPrint: TAction;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxButton15: TcxButton;
    cbExpanded: TcxCheckBox;
    sq_UserProfileInputOption: TIntegerField;
    sq_UserProfileStartPeriod: TSQLTimeStampField;
    sq_UserProfileEndPeriod: TSQLTimeStampField;
    cbExkluderaEgnaLeveranser: TcxCheckBox;
    grdProdPaketNrDBBandedTableView1Utlastad: TcxGridDBBandedColumn;
    deStartPeriod: TcxDBDateEdit;
    deEndPeriod: TcxDBDateEdit;
    cbInkTimeInDateFilter: TcxDBCheckBox;
    grdProdPaketNrDBBandedTableView1Supplier: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1Styck: TcxGridDBBandedColumn;
    frxDB_ST_Del_Stat: TfrxDBDataset;
    frxReport2: TfrxReport;
    acUlrikaRapport: TAction;
    cxButton16: TcxButton;
    sq_ST_Del_Stat: TFDQuery;
    frxCrossObject1: TfrxCrossObject;
    mtUserPropFilter1: TStringField;
    mtUserPropFilter2: TStringField;
    grdProdPaketNrDBBandedTableView1Lngd: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure acCloseExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure grdPkgTblDBBandedTableView1L1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acExportExecute(Sender: TObject);
    procedure mtUserPropAfterInsert(DataSet: TDataSet);
    procedure grdPkgNoTblDBBandedTableView1L1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure ccbATPropertiesClickCheck(Sender: TObject;
      ItemIndex: Integer; var AllowToggle: Boolean);
    procedure eATExit(Sender: TObject);
    procedure eABExit(Sender: TObject);
    procedure eALExit(Sender: TObject);
    procedure mInvNosEnter(Sender: TObject);
    procedure mInvNosExit(Sender: TObject);
    procedure acExportToExcelExecute(Sender: TObject);
    procedure cbOwnerPropertiesCloseUp(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure eNTExit(Sender: TObject);
    procedure eNBExit(Sender: TObject);
    procedure acNewProdPaketNrMallExecute(Sender: TObject);
    procedure sq_UserProfileAfterInsert(DataSet: TDataSet);
    procedure cbProdPaketNrPropertiesChange(Sender: TObject);
    procedure acSaveProdPaketNrMallExecute(Sender: TObject);
    procedure acRefreshProdPaketNrExecute(Sender: TObject);
    procedure acExpandAllProdPaketNrExecute(Sender: TObject);
    procedure acNewProdSUMMallExecute(Sender: TObject);
    procedure acSaveProdSUMMallExecute(Sender: TObject);
    procedure cbProdSUMPropertiesChange(Sender: TObject);
    procedure acDeleteProdPaketNrMallExecute(Sender: TObject);
    procedure acDeleteProdSUMMallExecute(Sender: TObject);
    procedure acCollapseAllProdPaketNrExecute(Sender: TObject);
    procedure acCollapseAllProdSumExecute(Sender: TObject);
    procedure acExpandAllProdSUMExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure cbExpandedPropertiesChange(Sender: TObject);
    procedure grdProdPaketNrDBBandedTableView1DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure acUlrikaRapportExecute(Sender: TObject);

  private
    { Private declarations }
    procedure Build_Ulrika_SQL ;
    procedure SetDateFields ;
    procedure LoadCheckBoxWithVerk ;
    procedure Open_UserProfile ;
    procedure SaveUserProfile ;
    procedure PopulateCheckBoxMallarProdSUM ;
    procedure OpenProdSUMMall ;
    procedure OpenProdPaketNrMall ;
    procedure PopulateCheckBoxMallar ;

    procedure Build_Delivery ;
    procedure SetCheckComboBoxes_Where_PktNrLevKod_Required (const PktNrLevKod : String) ;
    procedure CheckAllItems ;

    Function  SelectedOwnersOK : Boolean ;


    procedure SetCheckComboBoxes ;

    Function  CheckIfAnyCheckedItemsInComboFilter(combo : TcxCheckComboBox) : Boolean ;

    Function  ComboBoxFilterChecked(const Kolumn : String;combo : TcxCheckComboBox) : Boolean ;
    Function  GetComboFilterText(const Kolumn : String;combo : TcxCheckComboBox) : String ;
    procedure ClearProductFilter ;

    procedure OpenStandardMall(Sender: TObject);
  public
    { Public declarations }
    Function  GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
    Procedure CreateCo(Sender: TObject;CompanyNo: Integer);
  end;

var
  fDeliveryReport: TfDeliveryReport;

implementation

uses VidaType, dmsDataConn, VidaUser, dm_Inventory, dmsVidaContact, VidaConst,
  dmcVidaSystem , uGridSetting, UnitPkgInfo, //dmcPkgs,
  dmc_UserProps, dmsVidaSystem,
  dmsVidaPkg,  uSendMapiMail ,
  uEntryField, uSokAvropMall , uAngeNyMall, VidaDeliveryClass;

{$R *.dfm}

procedure TfDeliveryReport.PopulateCheckBoxMallar ;
Begin
 cbProdPaketNr.Properties.Items.Clear ;
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := fDeliveryReport.Name + '1' ;
 sq_UserProfile.ParamByName('Name').AsString    := 'ALL' ;
 sq_UserProfile.Active  := True ;
 sq_UserProfile.First ;
 while not sq_UserProfile.Eof do
 Begin
  cbProdPaketNr.Properties.Items.Add(sq_UserProfileName.AsString) ;
  sq_UserProfile.Next ;
 End;

 if cbProdPaketNr.Properties.Items.Count > 0 then
  cbProdPaketNr.ItemIndex  := 0 ;

End;

procedure TfDeliveryReport.PopulateCheckBoxMallarProdSUM ;
Begin
 cbProdSUM.Clear ;

 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := fDeliveryReport.Name + '2' ;
 sq_UserProfile.ParamByName('Name').AsString    := 'ALL' ;
 sq_UserProfile.Active  := True ;
 sq_UserProfile.First ;
 while not sq_UserProfile.Eof do
 Begin
  cbProdSUM.Properties.Items.Add(sq_UserProfileName.AsString) ;
  sq_UserProfile.Next ;
 End;

 if cbProdSUM.Properties.Items.Count > 0 then
  cbProdSUM.ItemIndex  := 0 ;

End;


procedure TfDeliveryReport.ClearProductFilter ;
Begin

 eAT.Text := '' ;
 eAB.Text := '' ;
 eAL.Text := '' ;

 ccbAB.Clear ;
 ccbAT.Clear ;
 ccbNB.Clear ;
 ccbNT.Clear ;

 ccbAL.Clear ;
 ccbTS2.Clear ;
 ccbKV2.Clear ;
 ccbSU2.Clear ;
 ccbIMP.Clear ;
 ccVarugrupp.Clear ;
 ccMatpunkt.Clear ;
 ccSkiftLag.Clear ;

 ccLand.Clear ;
 ccKund.Clear ;
End ;

procedure TfDeliveryReport.SetCheckComboBoxes ;
Begin
 With dmInventory do
 Begin
  ccbTS2.Properties.Items.Clear ;
  sq_Specie.Active:= True ;
  While not sq_Specie.Eof do
  Begin
   ccbTS2.Properties.Items.AddCheckItem(sq_Specie.FieldByName('speciesName').AsString, sq_Specie.FieldByName('speciescode').AsString) ;
   sq_Specie.Next ;
  End ;
  sq_Specie.Active:= False ;

  ccbAT.Properties.Items.Clear ;
  sq_AT.Open ;
  While not sq_AT.Eof do
  Begin
   ccbAT.Properties.Items.AddCheckItem(sq_AT.FieldByName('AT').AsString, sq_AT.FieldByName('AT').AsString) ;
   sq_AT.Next ;
  End ;
  sq_AT.Close ;

  ccbAB.Properties.Items.Clear ;
  sq_AB.Open ;
  While not sq_AB.Eof do
  Begin
   ccbAB.Properties.Items.AddCheckItem(sq_AB.FieldByName('AB').AsString, sq_AB.FieldByName('AB').AsString) ;
   sq_AB.Next ;
  End ;
  sq_AB.Close ;

  ccbNT.Properties.Items.Clear ;
  sq_NT.Open ;
  While not sq_NT.Eof do
  Begin
   ccbNT.Properties.Items.AddCheckItem(sq_NT.FieldByName('NT').AsString, sq_NT.FieldByName('NT').AsString) ;
   sq_NT.Next ;
  End ;
  sq_NT.Close ;

  ccbNB.Properties.Items.Clear ;
  sq_NB.Open ;
  While not sq_NB.Eof do
  Begin
   ccbNB.Properties.Items.AddCheckItem(sq_NB.FieldByName('NB').AsString, sq_NB.FieldByName('NB').AsString) ;
   sq_NB.Next ;
  End ;
  sq_NB.Close ;

  ccbAL.Properties.Items.Clear ;
  sq_AL.Open ;
  While not sq_AL.Eof do
  Begin
   ccbAL.Properties.Items.AddCheckItem(sq_AL.FieldByName('AL').AsString, sq_AL.FieldByName('AL').AsString) ;
   sq_AL.Next ;
  End ;
  sq_AL.Close ;

  ccVarugrupp.Properties.Items.Clear ;
  sq_Varugrupp.Open ;
  While not sq_Varugrupp.Eof do
  Begin
   ccVarugrupp.Properties.Items.AddCheckItem(sq_Varugrupp.FieldByName('Varugruppnamn').AsString, sq_Varugrupp.FieldByName('VarugruppID').AsString) ;
   sq_Varugrupp.Next ;
  End ;
  sq_Varugrupp.Close ;

 End ;//With dmInventory
End ;

procedure TfDeliveryReport.SetCheckComboBoxes_Where_PktNrLevKod_Required (const PktNrLevKod : String) ;
Begin
 With dmInventory do
 Begin

  ccKund.Properties.Items.Clear ;
  sq_Kund.ParamByName('PktNrLevKod').AsString  := PktNrLevKod ;
  sq_Kund.Open ;
  While not sq_Kund.Eof do
  Begin
   ccKund.Properties.Items.AddCheckItem(sq_Kund.FieldByName('ClientName').AsString, sq_Kund.FieldByName('ClientNo').AsString) ;
   sq_Kund.Next ;
  End ;
  sq_Kund.Close ;


  ccLand.Properties.Items.Clear ;
  sq_Land.ParamByName('PktNrLevKod').AsString  := PktNrLevKod ;
  sq_Land.Open ;
  While not sq_Land.Eof do
  Begin
   ccLand.Properties.Items.AddCheckItem(sq_Land.FieldByName('CountryName').AsString, sq_Land.FieldByName('CountryNo').AsString) ;
   sq_Land.Next ;
  End ;
  sq_Land.Close ;


  ccbKV2.Properties.Items.Clear ;
  sq_Grade.ParamByName('PktNrLevKod').AsString  := PktNrLevKod ;
  sq_Grade.Active:= True ;
  While not sq_Grade.Eof do
  Begin
   ccbKV2.Properties.Items.AddCheckItem(sq_Grade.FieldByName('gradeName').AsString, sq_Grade.FieldByName('gradecode').AsString) ;
   sq_Grade.Next ;
  End ;
  sq_Grade.Active:= False ;

  ccbSU2.Properties.Items.Clear ;
  sq_Surfacing.ParamByName('PktNrLevKod').AsString  := PktNrLevKod ;
  sq_Surfacing.Open ;
  While not sq_Surfacing.Eof do
  Begin
   ccbSU2.Properties.Items.AddCheckItem(sq_Surfacing.FieldByName('SurfacingName').AsString, sq_Surfacing.FieldByName('SurfacingCode').AsString) ;
   sq_Surfacing.Next ;
  End ;
  sq_Surfacing.Close ;

  ccbIMP.Properties.Items.Clear ;
  ccbIMP.Properties.BeginUpdate ;
  Try
  sq_PC2.Active := False ;
  //sq_PC2.ParamByName('PktNrLevKod').AsString  := PktNrLevKod ;
  sq_PC2.Active := True ;
  sq_PC2.First ;
  While not sq_PC2.Eof do
  Begin
//   ccbIMP.Properties.Items.Add.Description  := sq_PC2.FieldByName('ProductCategoryName').AsString ;
   ccbIMP.Properties.Items.AddCheckItem(sq_PC2.FieldByName('ProductCategoryName').AsString, sq_PC2.FieldByName('ImpCode').AsString) ;
   sq_PC2.Next ;
  End ;
  sq_PC2.Active := False ;
  Finally
   ccbIMP.Properties.EndUpdate ;
  End ;

  ccMatpunkt.Properties.Items.Clear ;
  sq_Matpunkt.ParamByName('PktNrLevKod').AsString  := PktNrLevKod ;
  sq_Matpunkt.Open ;
  While not sq_Matpunkt.Eof do
  Begin
   ccMatpunkt.Properties.Items.AddCheckItem(sq_Matpunkt.FieldByName('RegPointName').AsString, sq_Matpunkt.FieldByName('RegPointNo').AsString) ;
   sq_Matpunkt.Next ;
  End ;
  sq_Matpunkt.Close ;

  ccSkiftLag.Properties.Items.Clear ;
  sq_SkiftLag.ParamByName('PktNrLevKod').AsString  := PktNrLevKod ;
  sq_SkiftLag.Open ;
  While not sq_SkiftLag.Eof do
  Begin
   ccSkiftLag.Properties.Items.AddCheckItem(sq_SkiftLag.FieldByName('ShiftTeamName').AsString, sq_SkiftLag.FieldByName('ShiftTeamNo').AsString) ;
   sq_SkiftLag.Next ;
  End ;
  sq_SkiftLag.Close ;

 End ;//With
End ;

procedure TfDeliveryReport.sq_UserProfileAfterInsert(DataSet: TDataSet);
begin
 sq_UserProfileUserID.AsInteger := ThisUser.UserID ;
end;

function TaBortExtension(S : String) : String ;
begin
  { Convert commas to period }
  if Pos('.', S) > 0 then
   Delete(S, Pos('.', S), -1*(Pos('.', S)-(Length(S)+1) )) ;
 Result:= S ;
end;

function ReplaceCommas(S : String) : String ;
begin
  { Convert period to commas}
  while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
 Result:= S ;
end;

procedure TfDeliveryReport.LoadCheckBoxWithVerk ;
Var x : Integer ;
begin
  cds_Verk.Active := not cds_Verk.Active ;
  Try
  cbOwner.Properties.Items.Clear ;
  cds_Verk.First ;
  While not cds_Verk.Eof do
  Begin
   cbOwner.Properties.Items.AddCheckItem(cds_Verk.FieldByName('ClientName').AsString, cds_Verk.FieldByName('PktNrLevKod').AsString) ;
   cds_Verk.Next ;
  End ;

  For x := 0 to cbOwner.Properties.Items.Count - 1 do
  Begin
   if cbOwner.Properties.Items.Items[x].ShortDescription = dmsContact.Get_PktNrLevKod(ThisUser.CompanyNo) then
    cbOwner.SetItemState(x, cbsChecked) ;
  End ;
  Finally
    cds_Verk.Active := False ;
  End;
End ;

Procedure TfDeliveryReport.CreateCo(Sender: TObject;CompanyNo: Integer);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try

  LoadCheckBoxWithVerk ;

  SetCheckComboBoxes ;
  SetCheckComboBoxes_Where_PktNrLevKod_Required('18') ;
  dmInventory.cds_PkgList.Active:= True ;
  dm_UserProps.LoadUserProps (Self.Name, mtuserprop) ;

//  if mtUserPropRunNo.AsInteger <> 1 then
//  Begin
//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+cxGrid1.Name, cxGrid1DBBandedTableView1) ;
//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgNoTbl.Name, grdPkgNoTblDBBandedTableView1) ;

//  End ;

{  mtUserProp.Edit ;
  mtUserPropNewItemRow.AsInteger  := -1 ;
  mtUserPropRunNo.AsInteger       := 0 ;
  mtUserProp.Post ; }

{  if mtUserPropRoleType.AsInteger = cInternal_Mill then
  Begin
   lcSR.Enabled     := False ;
  End ;

  if mtUserPropRoleType.AsInteger = cLego then
  Begin
   lcSR.Enabled     := False ;
//   lcOWNER.Enabled  := False ;
//   lcPIPNAME.Enabled:= False ;
  End ;
  }

{
  if mtUserPropShipperNo.AsInteger = 1 then
  Begin
   ccbAT.Visible  := True ;
   ccbAB.Visible  := True ;
   ccbNT.Visible  := True ;
   ccbNB.Visible  := True ;

   ccbAL.Visible  := True ;

//   ccbTS2.Visible := True ;
//   ccbKV2.Visible := True ;
//   ccbSU2.Visible := True ;
//   ccbIMP.Visible := True ;

   eAT.Visible    := False ;
   eAB.Visible    := False ;
   eAL.Visible    := False ;
//   eKV.Visible    := False ;
//   eTS.Visible    := False ;
//   eSU.Visible    := False ;
//   eIMP.Visible   := False ;

  End
  else
  Begin
  }
   eAT.Visible    := True ;
   eAB.Visible    := True ;
   eNT.Visible    := True ;
   eNB.Visible    := True ;
   eAL.Visible    := True ;

//   eKV.Visible    := True ;
//   eTS.Visible    := True ;
//   eSU.Visible    := True ;
//   eIMP.Visible   := True ;

   ccbAT.Visible  := False ;
   ccbAB.Visible  := False ;
   ccbNT.Visible  := False ;
   ccbNB.Visible  := False ;
   ccbAL.Visible  := False ;
//   ccbTS2.Visible := False ;
//   ccbKV2.Visible := False ;
//   ccbSU2.Visible := False ;
//   ccbIMP.Visible := False ;


//  End ;


  PopulateCheckBoxMallar ;

//  PopulateCheckBoxMallarProdSUM ;

// OpenStandardMall(Sender) ;

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfDeliveryReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree ;
end;

procedure TfDeliveryReport.FormCreate(Sender: TObject);
begin
// if not Assigned(dmInventory) then
//  dmInventory:= TdmInventory.Create(Nil);

end;

procedure TfDeliveryReport.FormDestroy(Sender: TObject);
begin
// if Assigned(dmInventory) then
// FreeAndNil(dmInventory);
 fDeliveryReport    := NIL ;
end;

procedure TfDeliveryReport.FormKeyPress(Sender: TObject; var Key: Char);
begin
// if Sender is TcxMemo then
 if dmsSystem.MemoInAction then
 exit
 else
 if Key = #13 then
  begin
   Key := #0;
   Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfDeliveryReport.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfDeliveryReport.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
// dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgNoTbl.Name, grdPkgNoTblDBBandedTableView1) ;

// if (mtUserProp.Active) and (mtUserProp.State in [dsEdit, dsInsert]) then
// mtUserProp.Post ;

 dm_UserProps.SaveUserProps (Self.Name, mtUserProp) ;

 With dmInventory do
 Begin
  mtRemovedPkg.Active := False ;
//  cds_PkgList.Active  := False ;
//  cds_PkgNoList.Active:= False ;
 End ;

 CanClose := True ;
end;

procedure TfDeliveryReport.grdPkgTblDBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;

procedure TfDeliveryReport.grdProdPaketNrDBBandedTableView1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);

  procedure CalcFooterSummary;
  var
    V1, V2, AResult: Variant;
  begin
    V1 := ASender.FooterSummaryValues[ASender.FooterSummaryItems.IndexOfItemLink(grdProdPaketNrDBBandedTableView1NM3)];
    V2 := ASender.FooterSummaryValues[ASender.FooterSummaryItems.IndexOfItemLink(grdProdPaketNrDBBandedTableView1NETTO)];
    AResult := 0;
    if (V1 > 0) then
      AResult :=  V2 / V1;
    ASender.FooterSummaryValues[
      ASender.FooterSummaryItems.IndexOfItemLink(grdProdPaketNrDBBandedTableView1MEDELPRIS)] := AResult;
  end;

  procedure CalcGropSummaries;

    function Groups: TcxDataControllerGroups;
    begin
      Result := grdProdPaketNrDBBandedTableView1.DataController.Groups;
    end;

    procedure CalcGroupSummary(ADataGroupIndex: Integer);
    var
      V1, V2, AResult: Variant;
      ASummaryItems: TcxDataSummaryItems;
    begin
      ASummaryItems := ASender.GroupSummaryItems[Groups.Level[ADataGroupIndex]];
      V1 := ASender.GroupSummaryValues[ADataGroupIndex,
        ASummaryItems.IndexOfItemLink(grdProdPaketNrDBBandedTableView1NM3)];
      V2 := ASender.GroupSummaryValues[ADataGroupIndex,
        ASummaryItems.IndexOfItemLink(grdProdPaketNrDBBandedTableView1NETTO)];
      AResult := 0;
      if (V1 > 0) then
        AResult :=  V2 / V1;
      ASender.GroupSummaryValues[ADataGroupIndex,
        ASummaryItems.IndexOfItemLink(grdProdPaketNrDBBandedTableView1MEDELPRIS)] := AResult;
    end;

    procedure CalcGroupSummariesByDataGroupIndex(ADataGroupIndex: Integer);
    var
      I: Integer;
    begin
      if Groups.Level[ADataGroupIndex] >= Groups.GroupingItemCount - 1 then
        Exit;
      for I := 0 to Groups.ChildCount[ADataGroupIndex] - 1 do
      begin
        CalcGroupSummary(Groups.ChildDataGroupIndex[ADataGroupIndex, I]);
        CalcGroupSummariesByDataGroupIndex(Groups.ChildDataGroupIndex[ADataGroupIndex, I]);
      end;
    end;

  begin
    CalcGroupSummariesByDataGroupIndex(-1);
  end;


begin
  CalcFooterSummary;
  CalcGropSummaries;
end;

procedure TfDeliveryReport.acPkgInfoExecute(Sender: TObject);
var frmPkgInfo: TfrmPkgInfo;
begin
 With dmInventory do
 Begin
  frmPkgInfo:= TfrmPkgInfo.Create(Nil);
  Try
    frmPkgInfo.PackageNo   := cds_PkgListPackageNo.AsInteger ;
    frmPkgInfo.SupplierCode:= cds_PkgListSupplierCode.AsString ;
   frmPkgInfo.ShowModal ;
  Finally
   FreeAndNil(frmPkgInfo) ;
  End ;
 End ;
end;

procedure TfDeliveryReport.acCollapseAllProdPaketNrExecute(Sender: TObject);
begin
 grdProdPaketNrDBBandedTableView1.ViewData.Collapse(True);
end;

procedure TfDeliveryReport.acCollapseAllProdSumExecute(Sender: TObject);
begin
 grdProdSUMDBBandedTableView1.ViewData.Collapse(True);
end;

procedure TfDeliveryReport.acDeleteProdPaketNrMallExecute(Sender: TObject);
begin
 if MessageDlg('Vill du ta bort?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmInventory do
 Begin
  if cbProdPaketNr.ItemIndex > -1 then
  Begin
   sq_UserProfile.Active := False ;
   sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
   sq_UserProfile.ParamByName('Form').AsString    := fDeliveryReport.Name + '1' ;
   sq_UserProfile.ParamByName('Name').AsString    := cbProdPaketNr.Properties.Items.Strings[cbProdPaketNr.ItemIndex] ;
   sq_UserProfile.Active := True ;
   Try
   if not sq_UserProfile.Eof then
    sq_UserProfile.Delete ;
   Finally
    sq_UserProfile.Active     := False ;
   End;
   PopulateCheckBoxMallar ;
  End;
 End;
end;

procedure TfDeliveryReport.acDeleteProdSUMMallExecute(Sender: TObject);
begin
 With dmInventory do
 Begin
  if cbProdSUM.ItemIndex > -1 then
  Begin
   sq_UserProfile.Active := False ;
   sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
   sq_UserProfile.ParamByName('Form').AsString    := fDeliveryReport.Name + '2' ;
   sq_UserProfile.Active := True ;
   Try
   sq_UserProfile.Filter  := 'Name = ' + cbProdSUM.Properties.Items.Strings[cbProdSUM.ItemIndex] ;
   sq_UserProfile.Filtered  := True ;
   if not sq_UserProfile.Eof then
    sq_UserProfile.Delete ;
   Finally
    sq_UserProfile.Filtered   := False ;
    sq_UserProfile.Active     := False ;
   End;
  End;
 End;
end;

procedure TfDeliveryReport.acExpandAllProdPaketNrExecute(Sender: TObject);
begin
 cbExpanded.Properties.OnChange := nil ;
 Try
 grdProdPaketNrDBBandedTableView1.ViewData.Expand(True);
// cbExpanded.Checked := True ;
 Finally
  cbExpanded.Properties.OnChange := cbExpandedPropertiesChange ;
 End;
end;

procedure TfDeliveryReport.acExpandAllProdSUMExecute(Sender: TObject);
begin
 grdProdSUMDBBandedTableView1.ViewData.Expand(True);
end;

procedure TfDeliveryReport.acExportExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try


 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

//Sortiment
procedure TfDeliveryReport.CheckAllItems ;
Var I : Integer ;
    OneItemIsChecked  : Boolean ;
Begin


End ;

Function TfDeliveryReport.GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
Var
    APCheckStates : ^TcxCheckStates;
    AddORToSQL    : Boolean ;
    x             : Integer ;
Begin
 //För att inte ett VP företag skall se alla lager VP har skall alla synliga items checkas om man tittar på alla
 //I annat fall får man också med lager som är på andra orter.
 if (ThisUser.CompanyNo = cVidaPackaging) or
 (ThisUser.CompanyNo = cOsterlovsta) then
 CheckAllItems ;

 AddORToSQL:= False ;
 Result:= '' ;
  New(APCheckStates);
  try
    with Combo do
    begin
     CalculateCheckStates(Value, Properties.Items,Properties.EditValueFormat , APCheckStates^);
     if Properties.Items.Count > 0 then
     Begin
      for x := 0 to Properties.Items.Count - 1 do
      Begin
       if APCheckStates^[x] = cbsChecked then
       Begin
        if AddORToSQL then
         Result:= Result + ' OR '
          else
           Result:= ' AND (' ;
        if dType = 0 then
         Result:= Result + ' ' + Kolumn+' = ' + QuotedStr(Properties.Items[x].ShortDescription)
          else
           Result:= Result + ' ' + Kolumn+' = ' + ReplaceCommas(Properties.Items[x].ShortDescription) ;

        AddORToSQL:= True ;
       End ;//if..
      End ;//for..
      if Length(Result) > 0 then
      Result:= Result +' ) ' ;
     End ;
    end;//With
  finally
    Dispose(APCheckStates)
  end;
End ;

Function TfDeliveryReport.SelectedOwnersOK : Boolean ;
Var
    VidaWood            : Boolean ;
    NoOfSelections, x   : Integer ;
Begin
NoOfSelections:= 0 ;

{ VidaWood:= False ;
  For x := 0 to cbOwner.Properties.Items.Count - 1 do
  Begin
   if (cbOwner.Properties.Items.Items[x].ShortDescription = '10') and (cbOwner.States[x] = cbsChecked) then
    VidaWood:= True ;
   if cbOwner.States[x] = cbsChecked then
    NoOfSelections:= Succ(NoOfSelections) ;
//    cbOwner.SetItemState(x, cbsChecked) ;
  End ;
 }
// if (VidaWood) and (NoOfSelections > 1) then
  For x := 0 to cbOwner.Properties.Items.Count - 1 do
  Begin
   if (cbOwner.States[x] = cbsChecked) then
    NoOfSelections:= Succ(NoOfSelections) ;

//   if cbOwner.Properties.Items.Items[x].ShortDescription = '10' then
//   cbOwner.SetItemState(x, cbsUnChecked) ;
  End ;

 if (NoOfSelections >= 1) then
 Result:= True
 else
 Result:= False ;

End ;


Function TfDeliveryReport.GetComboFilterText(const Kolumn : String;combo : TcxCheckComboBox) : String ;
Var
    APCheckStates : ^TcxCheckStates;
    AddORToSQL    : Boolean ;
    x             : Integer ;
Begin
 AddORToSQL:= False ;
 Result:= '' ;
  New(APCheckStates);
  try
    with Combo do
    begin
     CalculateCheckStates(Value, Properties.Items,Properties.EditValueFormat , APCheckStates^);
     if Properties.Items.Count > 0 then
     Begin
      for x := 0 to Properties.Items.Count - 1 do
      Begin
       if APCheckStates^[x] = cbsChecked then
       Begin
        if AddORToSQL = False then
         Result:= Kolumn ;
         Result:= Result +Properties.Items[x].Description+', ' ;
        AddORToSQL:= True ;
       End ;//if..
      End ;//for..
      if Length(Result) > 1 then
      Begin
       Result:= Copy(Result, 1, Length(Result)-2) ;
       Result:= Result + '] ' ;
      End ;
     End ;
    end;//With
  finally
    Dispose(APCheckStates)
  end;
End ;

Function TfDeliveryReport.ComboBoxFilterChecked(const Kolumn : String;combo : TcxCheckComboBox) : Boolean ;
Var
    APCheckStates : ^TcxCheckStates;
    x             : Integer ;
Begin
 Result:= False ;
  New(APCheckStates);
  try
    with Combo do
    begin
     CalculateCheckStates(Value, Properties.Items,Properties.EditValueFormat , APCheckStates^);
     if Properties.Items.Count > 0 then
     Begin
      for x := 0 to Properties.Items.Count - 1 do
      Begin
       if APCheckStates^[x] = cbsChecked then
       Begin
        Result:= True ;
        Break ;
       End ;//if..
      End ;//for..
     End ;
    end;//With
  finally
    Dispose(APCheckStates)
  end;
End ;



procedure TfDeliveryReport.mtUserPropAfterInsert(DataSet: TDataSet);
begin
{ mtUserPropRegDate.AsDateTime           := Now ;
// mtUserPropProductGroupNo.AsInteger     := -1 ;
 mtUserPropProductNo.AsInteger          := -1 ;
 mtUserPropProductDescription.AsString  := 'Ingen ändring' ;
 mtUserPropLIPChange.AsInteger          := 0 ;
 mtUserPropVerkNo.AsInteger             := 0 ;
 }
end;

procedure TfDeliveryReport.acNewProdSUMMallExecute(Sender: TObject);
var  fAngeNyMall  : TfAngeNyMall;
     NewIndex     : Integer ;
begin
 fAngeNyMall  := TfAngeNyMall.Create(nil);
 Try
  if fAngeNyMall.ShowModal = mrOK then
  Begin
   sq_UserProfile.Insert ;
   sq_UserProfileName.AsString    := fAngeNyMall.teMall.Text ;
   sq_UserProfileForm.AsString    := fDeliveryReport.Name + '2' ;
   sq_UserProfile.Post ;

   cbProdSUM.Properties.Items.Add(fAngeNyMall.teMall.Text) ;

   NewIndex := cbProdSUM.Properties.Items.IndexOf(fAngeNyMall.teMall.Text) ;

   if NewIndex > -1 then
   Begin
    cbProdSUM.ItemIndex  :=  NewIndex ;
    acSaveProdSUMMallExecute(Sender) ;
   End;
  End;
 Finally
  FreeAndNil(fAngeNyMall) ;
 End;
end;

procedure TfDeliveryReport.grdPkgNoTblDBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;

procedure TfDeliveryReport.acPrintExecute(Sender: TObject);
Var FilterString : String ;
begin
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Leverans') ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(DateTimeToStr(deStartPeriod.Date) + ' - ' + DateTimeToStr(deEndPeriod.Date) ) ;

  dxComponentPrinter1Link1.PrinterPage.Orientation    := poLandscape ;
  dxComponentPrinter1Link1.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers := False ;
 // dxComponentPrinter1Link1.PrinterPage.DMPaper        := A4 210 x 297 mm
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1) ;
end;

procedure TfDeliveryReport.SetDateFields ;
Var AYear, AMonth, FDay, AHour, AMinute, ASecond, AMilliSecond: Word;
    EndDate, StartDate : TDateTime ;
begin
// StartDate  := Date - 1 ;
 DecodeDateTime(mtUserPropStartPeriod.AsDateTime, AYear, AMonth, FDay, AHour, AMinute, ASecond, AMilliSecond);
 TryEncodeDateTime(AYear, AMonth, FDay, 0, 0, 0, 0,  StartDate) ;

// EndDate  := Date - 1 ;
 DecodeDateTime(mtUserPropEndPeriod.AsDateTime, AYear, AMonth, FDay, AHour, AMinute, ASecond, AMilliSecond);
 TryEncodeDateTime(AYear, AMonth, FDay, 23, 59, 59, 0,  EndDate) ;

  mtUserProp.Edit ;
  mtUserPropStartPeriod.AsSQLTimeStamp    := DateTimeToSQLTimeStamp(StartDate) ;
  mtUserPropEndPeriod.AsSQLTimeStamp      := DateTimeToSQLTimeStamp(EndDate) ;
  mtUserProp.Post ;
End;

procedure TfDeliveryReport.acRefreshProdPaketNrExecute(Sender: TObject);
var
  Delivery : Delivery_Class;
begin
 //Refresh ProdPaketNr
 With dmInventory do
 Begin
  if not SelectedOwnersOK then
  Begin
   ShowMessage('Välj minst ett Verk!');
   Exit ;
  End;

  dmInventory.KeyField     := '' ;
//  if mtUserPropKilnNo.AsInteger = 0 then   SetDateFields ;

  cds_DeliveryStat.Active  := False ;

  Build_Delivery ;

  Delivery.gridview := grdProdPaketNrDBBandedTableView1;
  Delivery.LoadData;

  grdProdPaketNrDBBandedTableView1.DataController.KeyFieldNames := KeyField ;

  cds_DeliveryStat.Active  := True ;
 End;
end;

procedure TfDeliveryReport.ccbATPropertiesClickCheck(Sender: TObject;
  ItemIndex: Integer; var AllowToggle: Boolean);
begin
 TcxCheckComboBox(Sender).DroppedDown := False;
end;

procedure TfDeliveryReport.eATExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccbAT.Clear ; // .ClearSelection ;
 Found := False ;
  For x := 0 to ccbAT.Properties.Items.Count - 1 do
  Begin
   if (ccbAT.Properties.Items.Items[x].Description = eAT.Text) and (Length(eAT.Text) > 0) then
    Begin
     ccbAT.SetItemState(x, cbsChecked) ;
     Found:= True ;
    End ;
  End ;
 if Found = False then
  eAT.Text := '' ;
end;

procedure TfDeliveryReport.eABExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccbAB.Clear ;
 Found := False ;
  For x := 0 to ccbAB.Properties.Items.Count - 1 do
  Begin
   if (ccbAB.Properties.Items.Items[x].Description = eAB.Text) and (Length(eAB.Text) > 0) then
   Begin
    ccbAB.SetItemState(x, cbsChecked) ;
    Found:= True ;
   End ;
  End ;
 if Found = False then
  eAB.Text := '' ;
end;

procedure TfDeliveryReport.eALExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccbAL.Clear ;
 Found := False ;
  For x := 0 to ccbAL.Properties.Items.Count - 1 do
  Begin
   if (ccbAL.Properties.Items.Items[x].Description = eAL.Text) and (Length(eAL.Text) > 0) then
   Begin
    ccbAL.SetItemState(x, cbsChecked) ;
     Found:= True ;
   End ;
  End ;
 if Found = False then
  eAL.Text := '' ;
end;

procedure TfDeliveryReport.acSaveProdPaketNrMallExecute(Sender: TObject);
begin
 if cbProdPaketNr.ItemIndex > -1 then
 Begin
  dmsSystem.StoreGridLayout_Special( ThisUser.UserID,   fDeliveryReport.Name + '1',

  cbProdPaketNr.Properties.Items.Strings[cbProdPaketNr.ItemIndex]

  + '/' +

  fDeliveryReport.Name + '1'
//  sq_UserProfileForm.AsString

  ,grdProdPaketNrDBBandedTableView1,'fDeliveryReport') ;

  SaveUserProfile ;
 End;

// dmsSystem.StoreGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsName.AsString + '/' + cds_PropsForm.AsString, cxGrid1DBBandedTableView1, 'frmInventoryReport') ;
end;

procedure TfDeliveryReport.acSaveProdSUMMallExecute(Sender: TObject);
begin
 if cbProdSUM.ItemIndex > -1 then
 Begin
  dmsSystem.StoreGridLayout_Special( ThisUser.UserID,   fDeliveryReport.Name + '2',

  cbProdSUM.Properties.Items.Strings[cbProdSUM.ItemIndex]

  + '/' +

  fDeliveryReport.Name + '2'
//  sq_UserProfileForm.AsString

  ,grdProdSUMDBBandedTableView1,'fDeliveryReport') ;

 End;
end;

procedure TfDeliveryReport.acUlrikaRapportExecute(Sender: TObject);
begin
 sq_ST_Del_Stat.Active  := False ;
 Try
 Build_Ulrika_SQL ;
 sq_ST_Del_Stat.Active  := True ;
 frxReport2.ShowReport ;
 Finally
  sq_ST_Del_Stat.Active  := False ;
 End;
end;

procedure TfDeliveryReport.Build_Ulrika_SQL ;
Begin
  With sq_ST_Del_Stat do
  Begin
    SQL.Clear ;
    SQL.Add('select pc.ProductCode, st.CustomerNo, st.ProductNo, st.Utlastad, st.Produkt, st.Längd, SUM(st.NoOfPcs) AS Styck') ;
    SQL.Add('from  dbo.ST_Deliveries st') ;

    SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = st.ProductNo') ;
    SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
    SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
    SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
    SQL.Add('				AND imp.LanguageCode = 1') ;
    SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
    SQL.Add('				AND SPE.LanguageCode = 1') ;
    SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
    SQL.Add('				AND SUR.LanguageCode = 1') ;
    SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
    SQL.Add('				AND Gr.LanguageCode = 1') ;
    SQL.Add('Left outer join dbo.VaruGrupp vg on vg.VarugruppNo = pd.VarugruppNo') ;

    SQL.Add('Left join [dbo].[Product_code] pc on pc.ClientNo = st.CustomerNo') ;
    SQL.Add('and pc.ProductNo = st.ProductNo') ;
    SQL.Add('and pc.ALMM = st.Längd') ;

    SQL.Add('WHERE st.Utlastad >= ' + QuotedStr(DateTimeToStr(deStartPeriod.Date))) ;

    if deEndPeriod.EditValue > 0 then
    SQL.Add('AND st.Utlastad <= ' + QuotedStr(DateTimeToStr(deEndPeriod.Date))) ;

    SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
    SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
    SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
    SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;
    SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;

    SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
    SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;

    SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
    SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;


    SQL.Add(GetSQLofComboFilter(1, 'st.customerNo', ccKund)) ;

    SQL.Add('Group By st.Utlastad, st.Produkt, st.Längd, st.ProductNo, st.CustomerNo, pc.ProductCode') ;
   End ;
End;

procedure TfDeliveryReport.acNewProdPaketNrMallExecute(Sender: TObject);
var  fAngeNyMall: TfAngeNyMall;
     NewIndex : Integer ;
begin
 fAngeNyMall  := TfAngeNyMall.Create(nil);
 Try
  if fAngeNyMall.ShowModal = mrOK then
  Begin
   if not sq_UserProfile.Active then sq_UserProfile.Active  := True ;
   sq_UserProfile.Insert ;
   sq_UserProfileName.AsString    := fAngeNyMall.teMall.Text ;
   sq_UserProfileForm.AsString    := fDeliveryReport.Name + '1' ;

   if cbExpanded.Checked then
   sq_UserProfileInputOption.AsInteger := 1
   else
   sq_UserProfileInputOption.AsInteger := 0 ;

   sq_UserProfile.Post ;

   cbProdPaketNr.Properties.Items.Add(fAngeNyMall.teMall.Text) ;

   NewIndex := cbProdPaketNr.Properties.Items.IndexOf(fAngeNyMall.teMall.Text) ;

   if NewIndex > -1 then
   Begin
    cbProdPaketNr.ItemIndex  :=  NewIndex ;
    acSaveProdPaketNrMallExecute(Sender) ;
   End;




  End;
 Finally
  FreeAndNil(fAngeNyMall) ;
 End;
end;

procedure TfDeliveryReport.OpenStandardMall(Sender: TObject);
begin
 With dmInventory do
 Begin
  cds_Props.Active:= False ;
  cds_Props.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  cds_Props.ParamByName('Name').AsString     := 'InventoryReport' ;
  cds_Props.Active:= True ;
  cds_Props.Filter:= 'LOObjectType = 1' ; //Default
  cds_Props.Filtered:= True ;
  Try
   if (cds_Props.RecordCount > 0) AND (cds_PropsName.AsString > '') then
   Begin
//    dmsSystem.LoadGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsName.AsString+'/'+cds_PropsForm.AsString, cxGrid1DBBandedTableView1, 'frmInventoryReport') ;
   End //if (cds_Props.RecordCount > 0) AND (cds_PropsName.AsString > '') then
    else
     Begin
//      dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+cxGrid1.Name, cxGrid1DBBandedTableView1) ;
     End ;
  Finally
   cds_Props.Filtered:= False ;
   cds_Props.Active:= False ;
  End ;

 End ;//With dm_SokFormular do
end;

procedure TfDeliveryReport.mInvNosEnter(Sender: TObject);
begin
 dmsSystem.MemoInAction:= True ;
end;

procedure TfDeliveryReport.mInvNosExit(Sender: TObject);
begin
 dmsSystem.MemoInAction:= False ;
end;


Function TfDeliveryReport.CheckIfAnyCheckedItemsInComboFilter(combo : TcxCheckComboBox) : Boolean ;
Var
    APCheckStates : ^TcxCheckStates;
    x             : Integer ;
Begin
//(0, 'LIP.InvCode', cbLIP)) ;
 Result:= False ;
  New(APCheckStates);
  try
    with Combo do
    begin
     CalculateCheckStates(Value, Properties.Items,Properties.EditValueFormat , APCheckStates^);
     if Properties.Items.Count > 0 then
     Begin
      for x := 0 to Properties.Items.Count - 1 do
      Begin
       if APCheckStates^[x] = cbsChecked then
       Begin
        Result:= True ;
       End ;//if..
      End ;//for..
     End ;
    end;//With
  finally
    Dispose(APCheckStates)
  end;
End ;

procedure TfDeliveryReport.acExportToExcelExecute(Sender: TObject);
Var FileName  : String ;
begin
 SaveDialog1.Filter := 'Excel files (*.xls)|*.xls';
 SaveDialog1.DefaultExt:= 'xls';
// SaveDialog1.InitialDir:= ExcelDir ;
 if SaveDialog1.Execute then
 Begin
  FileName:= SaveDialog1.FileName ;
  Try
//   ExportGridToExcel(FileName, cxGrid1, False, False, True,'xls');
  ShowMessage('Tabell exporterad till excel fil ' + FileName);
  Except
  End ;
 End ;

end;

procedure TfDeliveryReport.cbExpandedPropertiesChange(Sender: TObject);
begin
 if cbExpanded.Checked then
  grdProdPaketNrDBBandedTableView1.ViewData.Expand(True)
   else
    grdProdPaketNrDBBandedTableView1.ViewData.Collapse(True) ;
end;

procedure TfDeliveryReport.cbOwnerPropertiesCloseUp(Sender: TObject);
Var x           : Integer ;
    PktNrLevKod : String ;
begin
 For x := 0 to cbOwner.Properties.Items.Count - 1 do
 Begin
//  if (cbOwner.Properties.Items.Items[x].ShortDescription = '10') and (cbOwner.States[x] = cbsChecked) then
//    VidaWood:= True ;
  if cbOwner.States[x] = cbsChecked then
  Begin
   PktNrLevKod  := cbOwner.Properties.Items.Items[x].ShortDescription ;
  End ;
//    NoOfSelections:= Succ(NoOfSelections) ;
//    cbOwner.SetItemState(x, cbsChecked) ;
 End ;

 SetCheckComboBoxes_Where_PktNrLevKod_Required(PktNrLevKod) ;
end;

procedure TfDeliveryReport.cbProdPaketNrPropertiesChange(Sender: TObject);
begin
//Open paketnr grid Mall
 OpenProdPaketNrMall ;
 Open_UserProfile ;
end;

procedure TfDeliveryReport.Open_UserProfile ;
Begin
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := fDeliveryReport.Name + '1' ;
 sq_UserProfile.ParamByName('Name').AsString    := cbProdPaketNr.Text ;
 sq_UserProfile.Active  := True ;
 Try
 if not sq_UserProfile.Eof then
 Begin
  if sq_UserProfileInputOption.AsInteger = 1 then
  cbExpanded.Checked  := True
  else
  cbExpanded.Checked  := False ;


 End;
 Finally
  sq_UserProfile.Active  := False ;
 End;
End;

procedure TfDeliveryReport.cbProdSUMPropertiesChange(Sender: TObject);
begin
//Open prod sum grid Mall
 OpenProdSUMMall ;
end;

procedure TfDeliveryReport.OpenProdPaketNrMall ;
begin
//Open Mall
 if cbProdPaketNr.ItemIndex > -1 then
 Begin
  dmsSystem.LoadGridLayout_Special( ThisUser.UserID, fDeliveryReport.Name + '1',
  cbProdPaketNr.Properties.Items.Strings[cbProdPaketNr.ItemIndex]
  + '/' + fDeliveryReport.Name + '1', grdProdPaketNrDBBandedTableView1,'fDeliveryReport') ;
 End;
end;

procedure TfDeliveryReport.OpenProdSUMMall ;
begin
//Open Mall
 if cbProdSUM.ItemIndex > -1 then
 Begin
  dmsSystem.LoadGridLayout_Special( ThisUser.UserID, fDeliveryReport.Name + '2',
  cbProdSUM.Properties.Items.Strings[cbProdSUM.ItemIndex]
  + '/' + fDeliveryReport.Name + '2', grdProdSUMDBBandedTableView1,'fDeliveryReport') ;
 End;
end;

procedure TfDeliveryReport.cxButton1Click(Sender: TObject);
begin
 Close ;
end;

procedure TfDeliveryReport.cxButton2Click(Sender: TObject);
begin
 ClearProductFilter ;
end;

procedure TfDeliveryReport.eNTExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccbNT.Clear ; // .ClearSelection ;
 Found := False ;
  For x := 0 to ccbNT.Properties.Items.Count - 1 do
  Begin
   if (ccbNT.Properties.Items.Items[x].Description = eNT.Text) and (Length(eNT.Text) > 0) then
    Begin
     ccbNT.SetItemState(x, cbsChecked) ;
     Found:= True ;
    End ;
  End ;
 if Found = False then
  eNT.Text := '' ;
end;

procedure TfDeliveryReport.eNBExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccbNB.Clear ; // .ClearSelection ;
 Found := False ;
  For x := 0 to ccbNB.Properties.Items.Count - 1 do
  Begin
   if (ccbNB.Properties.Items.Items[x].Description = eNB.Text) and (Length(eNB.Text) > 0) then
    Begin
     ccbNB.SetItemState(x, cbsChecked) ;
     Found:= True ;
    End ;
  End ;
 if Found = False then
  eNB.Text := '' ;
end;

procedure TfDeliveryReport.Build_Delivery ;
Begin
 With dmInventory do
 Begin
  With cds_DeliveryStat do
  Begin
    SQL.Clear ;
    SQL.Add('Select distinct Kund.ClientName AS Kund,') ;
    SQL.Add('pd.ProductNo,') ;
    SQL.Add('pd.ProductDisplayName AS PRODUKT,') ;
    SQL.Add('pg.ActualThicknessMM AS AT,') ;
    SQL.Add('pg.ActualWidthMM AS AB,') ;
    SQL.Add('pg.NominalThicknessMM AS NT,') ;
    SQL.Add('pg.NominalWidthMM AS NB,') ;

    SQL.Add('CAST(pg.NominalThicknessMM AS VARCHAR(10)) +' + QuotedStr('x') + '+ CAST(pg.NominalWidthMM AS VARCHAR(10)) AS NomDim,') ;
    SQL.Add('CAST(pg.ActualThicknessMM AS VARCHAR(10)) +' + QuotedStr('x') + '+ CAST(pg.ActualWidthMM AS VARCHAR(10)) AS AktDim,') ;

    SQL.Add('SUM(pp.AM3) AS AM3,') ;
    SQL.Add('SUM(pp.NM3) AS NM3,') ;
    SQL.Add('SUM(pp.NoOfPcs) AS Styck,') ;
    SQL.Add('pp.PriceExist AS PrisOK,') ;
    SQL.Add('SPE.SpeciesName AS TS,') ;
    SQL.Add('imp.ProductCategoryName AS PC,') ;
    SQL.Add('Gr.GradeName AS KV,') ;
    SQL.Add('SUR.SurfacingName AS UT,') ;
    SQL.Add('pp.VerkNo AS OwnerNo,') ;
    SQL.Add('CASE') ;
    SQL.Add('WHEN SUM(pp.NM3) <> 0 THEN') ;
    SQL.Add('SUM(pp.[Värde]) / SUM(pp.NM3)') ;
    SQL.Add('ELSE') ;
    SQL.Add('0') ;
    SQL.Add('END AS MEDELPRIS,') ;
    SQL.Add('SUM(pp.[Värde]) AS NETTO, vg.VarugruppNamn, pp.LO, pp.Utlastad AS Utlastad, pp.Längd') ;
    SQL.Add('FROM dbo.ST_Deliveries pp') ;
    SQL.Add('Inner Join dbo.Client Kund ON Kund.ClientNo = pp.customerNo') ;
    SQL.Add('Inner Join dbo.Client Verk ON Verk.ClientNo = pp.VerkNo') ;
    SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = PP.ProductNo') ;
    SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
    SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
    SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
    SQL.Add('				AND imp.LanguageCode = 1') ;
    SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
    SQL.Add('				AND SPE.LanguageCode = 1') ;
    SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
    SQL.Add('				AND SUR.LanguageCode = 1') ;
    SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
    SQL.Add('				AND Gr.LanguageCode = 1') ;
    SQL.Add('Left outer join dbo.VaruGrupp vg on vg.VarugruppNo = pd.VarugruppNo') ;
//    if deStartPeriod.EditValue > 0 then
    SQL.Add('WHERE pp.Utlastad >= ' + QuotedStr(DateTimeToStr(deStartPeriod.Date))) ;

    if deEndPeriod.EditValue > 0 then
    SQL.Add('AND pp.Utlastad <= ' + QuotedStr(DateTimeToStr(deEndPeriod.Date))) ;

    SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

    if cbExkluderaEgnaLeveranser.Checked then
    Begin
     SQL.Add('AND pp.VerkNo <> pp.customerNo') ;
    End;


    SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
    SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
    SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
    SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;
    SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;

    SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
    SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;

    SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
    SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;

//    SQL.Add(GetSQLofComboFilter(1, 'pp.Längd', ccbNB)) ;

    SQL.Add(GetSQLofComboFilter(1, 'ccbAL', ccbAL)) ;

  //  SQL.Add(GetSQLofComboFilter(1, 'rp.RegPointNo', ccMatpunkt)) ;
//    SQL.Add(GetSQLofComboFilter(1, 'pp.ShiftNo', ccSkiftLag)) ;

    SQL.Add(GetSQLofComboFilter(1, 'pp.customerNo', ccKund)) ;
//    SQL.Add(GetSQLofComboFilter(1, 'pp.LandNo', ccLand)) ;


    SQL.Add('Group by Kund.ClientName, pd.ProductNo, pd.ProductDisplayName, pg.ActualThicknessMM,') ;
    SQL.Add('pg.ActualWidthMM, SPE.SpeciesName, imp.ProductCategoryName, pp.VerkNo,') ;
    SQL.Add('Gr.GradeName, SUR.SurfacingName, va.VarugruppNamn, pp.CustomerNo, pg.NominalThicknessMM, pg.NominalWidthMM,') ;
    SQL.Add('pp.PriceExist, vg.VarugruppNamn, pp.LO, pp.Utlastad') ;



//SQL.SaveToFile('c:\test\cds_Delivery.txt') ;
  End;

  End;
End ;

procedure TfDeliveryReport.SaveUserProfile ;
Begin
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := fDeliveryReport.Name + '1' ;
 sq_UserProfile.ParamByName('Name').AsString    := cbProdPaketNr.Text ;
 sq_UserProfile.Active  := True ;
 Try
 if not sq_UserProfile.Eof then
 Begin
  sq_UserProfile.Edit ;
  if cbExpanded.Checked then
  sq_UserProfileInputOption.AsInteger := 1
  else
  sq_UserProfileInputOption.AsInteger := 0 ;
  sq_UserProfile.Post ;
 End;
 Finally
  sq_UserProfile.Active  := False ;
 End;
End;

End.


