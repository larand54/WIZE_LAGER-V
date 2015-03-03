unit uProductionReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, ImgList, OleServer, OleCtrls,
  Menus, DB, ActnList, SqlTimSt,
  cxStyles, cxCustomData, cxGraphics,
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
  FireDAC.Comp.Client, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  dxSkinsdxBarPainter, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxPivotGridLnk, dxPScxSSLnk, dxSkinsdxRibbonPainter, cxNavigator,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxBarBuiltInMenu,
  System.Actions, siComp, siLngLnk, CrystalActiveXReportViewerLib11_TLB;


type
  TfProductionReport = class(TForm)
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
    dxComponentPrinter1Link1: TdxGridReportLink;
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
    grdProdPaketNrDBBandedTableView1Operation: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1PRODUKT: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1PaketNr: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1Prefix: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1AT: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1AB: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1NT: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1NB: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1NomDim: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1AktDim: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1STYCK: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1AM3: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1NM3: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1AM1: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1MFBM: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1AM2: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1TILLVERKAD: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1TS: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1PC: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1KV: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1UT: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1OwnerNo: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1AvgLength: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1ShiftTeamName: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1RegPointName: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1MP_SkiftLag: TcxGridDBBandedColumn;
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
    cxButton15: TcxButton;
    acPrintPaketnr: TAction;
    dxComponentPrinter1Link2: TdxGridReportLink;
    acPrintProdSUM: TAction;
    cxButton16: TcxButton;
    cbExpandedProdSum: TcxCheckBox;
    cbExpandedPaketnr: TcxCheckBox;
    sq_UserProfileInputOption: TIntegerField;
    sq_UserProfileCopyPcs: TIntegerField;
    sq_UserProfileAutoColWidth: TIntegerField;
    tsCRReports: TcxTabSheet;
    Panel1: TPanel;
    acPkgNo: TAction;
    acPcsPerLength: TAction;
    acUtfallKorning: TAction;
    CRViewer91: TCrystalActiveXReportViewer;
    cbShowSingleLengthPkgs: TCheckBox;
    ccAvgLengthRegPkt: TCheckBox;
    cxButton17: TcxButton;
    cxButton18: TcxButton;
    cxButton19: TcxButton;
    Application1: TApplication;
    deDBStartPeriod: TcxDBDateEdit;
    deDBEndPeriod: TcxDBDateEdit;
    cbInclTime: TcxDBCheckBox;
    mtUserPropFilter1: TStringField;
    mtUserPropFilter2: TStringField;
    PaketnrF21: TMenuItem;
    AntalstlngdF31: TMenuItem;
    siLangLinked_fProductionReport: TsiLangLinked;
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
    procedure mtUserPropSalesRegionNoChange(Sender: TField);
    procedure grdPkgNoTblDBBandedTableView1L1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure acPkgInfoPkgNosTableExecute(Sender: TObject);
    procedure ccbATPropertiesClickCheck(Sender: TObject;
      ItemIndex: Integer; var AllowToggle: Boolean);
    procedure eATExit(Sender: TObject);
    procedure eABExit(Sender: TObject);
    procedure eALExit(Sender: TObject);
    procedure acLoadGridLayoutExecute(Sender: TObject);
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
    procedure acRefreshProdSUMExecute(Sender: TObject);
    procedure acDeleteProdPaketNrMallExecute(Sender: TObject);
    procedure acDeleteProdSUMMallExecute(Sender: TObject);
    procedure acCollapseAllProdPaketNrExecute(Sender: TObject);
    procedure acCollapseAllProdSumExecute(Sender: TObject);
    procedure acExpandAllProdSUMExecute(Sender: TObject);
    procedure acPrintPaketnrExecute(Sender: TObject);
    procedure acPrintProdSUMExecute(Sender: TObject);
    procedure cbExpandedPaketnrPropertiesChange(Sender: TObject);
    procedure cbExpandedProdSumPropertiesChange(Sender: TObject);
    procedure grdProdSUMDBBandedTableView1DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure grdProdPaketNrDBBandedTableView1DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure acPkgNoExecute(Sender: TObject);
    procedure acPcsPerLengthExecute(Sender: TObject);
    procedure acUtfallKorningExecute(Sender: TObject);
    procedure cbInclTimePropertiesChange(Sender: TObject);

  private
    { Private declarations }
    report : IReport ;
    Procedure MakeSQL_PROD_By_Length (Sender : TObject) ;
    procedure Make_PROD_BY_PKG_SQL (Sender: TObject) ;
    procedure Make_PROD_BY_RUN_SQL(Sender: TObject) ;
    function  InitiateReport(const ReportName: String) : Boolean ;
    procedure SaveFilterSettings (Sender: TObject) ;
    procedure LoadCheckBoxWithVerk ;
    procedure SaveUserProfileProdSUM ;
    procedure SaveUserProfilePaketnr ;
    procedure Open_UserProfilePaketNr ;
    procedure Open_UserProfileProdSUM ;
    procedure Build_ProductionByProduct ;
    procedure PopulateCheckBoxMallarProdSUM ;
    procedure OpenProdSUMMall ;
    procedure OpenProdPaketNrMall ;
    procedure PopulateCheckBoxMallar ;

    procedure Build_ProductionByPackageNo ;
    procedure SetCheckComboBoxes_Where_PktNrLevKod_Required (const PktNrLevKod : String) ;
    procedure CheckAllItems ;

    Function  SelectedOwnersOK : Boolean ;


    procedure SetCheckComboBoxes ;
    Function  GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
    Function  CheckIfAnyCheckedItemsInComboFilter(combo : TcxCheckComboBox) : Boolean ;

    Function  ComboBoxFilterChecked(const Kolumn : String;combo : TcxCheckComboBox) : Boolean ;
    Function  GetComboFilterText(const Kolumn : String;combo : TcxCheckComboBox) : String ;
    procedure ClearProductFilter ;

    procedure OpenStandardMall(Sender: TObject);
  public
    { Public declarations }
    Filterstring : String ;
    Procedure CreateCo(Sender: TObject;CompanyNo: Integer);
  end;

var
  fProductionReport: TfProductionReport;

implementation

uses VidaType, dmsDataConn, VidaUser, dm_Inventory, dmsVidaContact, VidaConst,
  dmcVidaSystem , uGridSetting, UnitPkgInfo, //dmcPkgs,
  dmc_UserProps, dmsVidaSystem,
  dmsVidaPkg,  uSendMapiMail ,
  uEntryField, uSokAvropMall , uAngeNyMall;

{$R *.dfm}

procedure TfProductionReport.LoadCheckBoxWithVerk ;
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


procedure TfProductionReport.PopulateCheckBoxMallar ;
Begin
 cbProdPaketNr.Properties.Items.Clear ;
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := fProductionReport.Name + '1' ;
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

procedure TfProductionReport.PopulateCheckBoxMallarProdSUM ;
Begin
 cbProdSUM.Properties.Items.Clear ;

 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := fProductionReport.Name + '2' ;
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


procedure TfProductionReport.ClearProductFilter ;
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
End ;

procedure TfProductionReport.SetCheckComboBoxes ;
Begin
 With dmInventory do
 Begin
  ccbTS2.Properties.BeginUpdate ;
  Try
  ccbTS2.Properties.Items.Clear ;
  sq_Specie.Active:= True ;
  While not sq_Specie.Eof do
  Begin
   ccbTS2.Properties.Items.AddCheckItem(sq_Specie.FieldByName('speciesName').AsString, sq_Specie.FieldByName('speciescode').AsString) ;
   sq_Specie.Next ;
  End ;
  sq_Specie.Active:= False ;
  Finally
    ccbTS2.Properties.EndUpdate;
  End;

  ccbAT.Properties.BeginUpdate ;
  Try
  ccbAT.Properties.Items.Clear ;
  sq_AT.Open ;
  While not sq_AT.Eof do
  Begin
   ccbAT.Properties.Items.AddCheckItem(sq_AT.FieldByName('AT').AsString, sq_AT.FieldByName('AT').AsString) ;
   sq_AT.Next ;
  End ;
  sq_AT.Close ;
  Finally
    ccbAT.Properties.EndUpdate ;
  End;

  ccbAB.Properties.BeginUpdate ;
  Try
  ccbAB.Properties.Items.Clear ;
  sq_AB.Open ;
  While not sq_AB.Eof do
  Begin
   ccbAB.Properties.Items.AddCheckItem(sq_AB.FieldByName('AB').AsString, sq_AB.FieldByName('AB').AsString) ;
   sq_AB.Next ;
  End ;
  sq_AB.Close ;
  Finally
    ccbAB.Properties.EndUpdate ;
  End;

  ccbNT.Properties.BeginUpdate ;
  Try
  ccbNT.Properties.Items.Clear ;
  sq_NT.Open ;
  While not sq_NT.Eof do
  Begin
   ccbNT.Properties.Items.AddCheckItem(sq_NT.FieldByName('NT').AsString, sq_NT.FieldByName('NT').AsString) ;
   sq_NT.Next ;
  End ;
  sq_NT.Close ;
  Finally
    ccbNT.Properties.EndUpdate ;
  End;

  ccbNB.Properties.BeginUpdate ;
  Try
  ccbNB.Properties.Items.Clear ;
  sq_NB.Open ;
  While not sq_NB.Eof do
  Begin
   ccbNB.Properties.Items.AddCheckItem(sq_NB.FieldByName('NB').AsString, sq_NB.FieldByName('NB').AsString) ;
   sq_NB.Next ;
  End ;
  sq_NB.Close ;
  Finally
    ccbNB.Properties.EndUpdate ;
  End;

  ccbAL.Properties.BeginUpdate ;
  Try
  ccbAL.Properties.Items.Clear ;
  sq_AL.Open ;
  While not sq_AL.Eof do
  Begin
   ccbAL.Properties.Items.AddCheckItem(sq_AL.FieldByName('AL').AsString, sq_AL.FieldByName('AL').AsString) ;
   sq_AL.Next ;
  End ;
  sq_AL.Close ;
  Finally
    ccbAL.Properties.EndUpdate ;
  End;

  ccVarugrupp.Properties.BeginUpdate ;
  Try
  ccVarugrupp.Properties.Items.Clear ;
  sq_Varugrupp.Open ;
  While not sq_Varugrupp.Eof do
  Begin
   ccVarugrupp.Properties.Items.AddCheckItem(sq_Varugrupp.FieldByName('Varugruppnamn').AsString, sq_Varugrupp.FieldByName('VarugruppID').AsString) ;
   sq_Varugrupp.Next ;
  End ;
  sq_Varugrupp.Close ;
  Finally
    ccVarugrupp.Properties.EndUpdate ;
  End;

 End ;//With
End ;

procedure TfProductionReport.SetCheckComboBoxes_Where_PktNrLevKod_Required (const PktNrLevKod : String) ;
Begin
 With dmInventory do
 Begin
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

procedure TfProductionReport.sq_UserProfileAfterInsert(DataSet: TDataSet);
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

Procedure TfProductionReport.CreateCo(Sender: TObject;CompanyNo: Integer);
var
  Save_Cursor : TCursor;
  PktNrLevKod : String ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  PktNrLevKod :=  dmsContact.Get_PktNrLevKod(ThisUser.CompanyNo) ;

  LoadCheckBoxWithVerk ;

  SetCheckComboBoxes ;
  SetCheckComboBoxes_Where_PktNrLevKod_Required(PktNrLevKod) ;
//  dmInventory.cds_PkgList.Active:= True ;
  dm_UserProps.LoadUserProps (Self.Name, mtuserprop) ;

  if (mtuserpropGradeStampNo.AsInteger = 0) or (mtuserpropGradeStampNo.IsNull) then
  Begin
    deDBStartPeriod.Properties.Kind := ckDate ;
    deDBEndPeriod.Properties.Kind   := ckDate ;
  End
  else
  Begin
    deDBStartPeriod.Properties.Kind := ckDateTime ;
    deDBEndPeriod.Properties.Kind   := ckDateTime ;
  End;


//  if mtUserPropRunNo.AsInteger <> 1 then
//  Begin
//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+cxGrid1.Name, cxGrid1DBBandedTableView1) ;
//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgNoTbl.Name, grdPkgNoTblDBBandedTableView1) ;

//  End ;

{  mtUserProp.Edit ;
  mtUserPropNewItemRow.AsInteger  := -1 ;
  mtUserPropRunNo.AsInteger       := 0 ;
  mtUserProp.Post ;

  if mtUserPropRoleType.AsInteger = cInternal_Mill then
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

{  if mtUserPropShipperNo.AsInteger = 1 then
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

  PopulateCheckBoxMallarProdSUM ;

  if not mtUserPropGroupByBox.IsNull then
   pcInventory.ActivePageIndex  := mtUserPropGroupByBox.AsInteger ;



// OpenStandardMall(Sender) ;

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfProductionReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree ;
end;

procedure TfProductionReport.FormCreate(Sender: TObject);
begin
// if not Assigned(dmInventory) then
//  dmInventory:= TdmInventory.Create(Nil);

end;

procedure TfProductionReport.FormDestroy(Sender: TObject);
begin
// if Assigned(dmInventory) then
// FreeAndNil(dmInventory);
 fProductionReport    := NIL ;
end;

procedure TfProductionReport.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfProductionReport.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfProductionReport.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
// dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgNoTbl.Name, grdPkgNoTblDBBandedTableView1) ;

 if (mtUserProp.Active) and (mtUserProp.State in [dsEdit, dsInsert]) then
   mtUserPropGroupByBox.AsInteger :=  pcInventory.ActivePageIndex
   else
   Begin
    mtUserProp.Edit ;
    mtUserPropGroupByBox.AsInteger :=  pcInventory.ActivePageIndex ;
   end;

 if (mtUserProp.Active) and (mtUserProp.State in [dsEdit, dsInsert]) then
 mtUserProp.Post ;

 dm_UserProps.SaveUserProps (Self.Name, mtUserProp) ;

 With dmInventory do
 Begin
  mtRemovedPkg.Active := False ;
 // cds_PkgList.Active  := False ;
 // cds_PkgNoList.Active:= False ;
 End ;

 CanClose := True ;
end;

procedure TfProductionReport.grdPkgTblDBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;



procedure TfProductionReport.grdProdPaketNrDBBandedTableView1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
  procedure CalcFooterSummary;
  var
    V1, V2, AResult: Variant;
  begin
    V1 := ASender.FooterSummaryValues[ASender.FooterSummaryItems.IndexOfItemLink(grdProdPaketNrDBBandedTableView1STYCK)];
    V2 := ASender.FooterSummaryValues[ASender.FooterSummaryItems.IndexOfItemLink(grdProdPaketNrDBBandedTableView1AM1)];
    AResult := 0;
    if (V1 > 0) then
      AResult :=  V2 / V1;  //LPM / Styck
    ASender.FooterSummaryValues[
      ASender.FooterSummaryItems.IndexOfItemLink(grdProdPaketNrDBBandedTableView1AvgLength)] := AResult;
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
        ASummaryItems.IndexOfItemLink(grdProdPaketNrDBBandedTableView1STYCK)];
      V2 := ASender.GroupSummaryValues[ADataGroupIndex,
        ASummaryItems.IndexOfItemLink(grdProdPaketNrDBBandedTableView1AM1)];
      AResult := 0;
      if (V1 > 0) then
        AResult :=  V2 / V1;
      ASender.GroupSummaryValues[ADataGroupIndex,
        ASummaryItems.IndexOfItemLink(grdProdPaketNrDBBandedTableView1AvgLength)] := AResult;
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


procedure TfProductionReport.grdProdSUMDBBandedTableView1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);

  procedure CalcFooterSummary;
  var
    V1, V2, AResult: Variant;
  begin
    V1 := ASender.FooterSummaryValues[ASender.FooterSummaryItems.IndexOfItemLink(grdProdSUMDBBandedTableView1STYCK)];
    V2 := ASender.FooterSummaryValues[ASender.FooterSummaryItems.IndexOfItemLink(grdProdSUMDBBandedTableView1AM1)];
    AResult := 0;
    if (V1 > 0) then
      AResult :=  V2 / V1;  //LPM / Styck
    ASender.FooterSummaryValues[
      ASender.FooterSummaryItems.IndexOfItemLink(grdProdSUMDBBandedTableView1AvgLength)] := AResult;
  end;

  procedure CalcGropSummaries;

    function Groups: TcxDataControllerGroups;
    begin
      Result := grdProdSUMDBBandedTableView1.DataController.Groups;
    end;

    procedure CalcGroupSummary(ADataGroupIndex: Integer);
    var
      V1, V2, AResult: Variant;
      ASummaryItems: TcxDataSummaryItems;
    begin
      ASummaryItems := ASender.GroupSummaryItems[Groups.Level[ADataGroupIndex]];
      V1 := ASender.GroupSummaryValues[ADataGroupIndex,
        ASummaryItems.IndexOfItemLink(grdProdSUMDBBandedTableView1STYCK)];
      V2 := ASender.GroupSummaryValues[ADataGroupIndex,
        ASummaryItems.IndexOfItemLink(grdProdSUMDBBandedTableView1AM1)];
      AResult := 0;
      if (V1 > 0) then
        AResult :=  V2 / V1;
      ASender.GroupSummaryValues[ADataGroupIndex,
        ASummaryItems.IndexOfItemLink(grdProdSUMDBBandedTableView1AvgLength)] := AResult;
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


procedure TfProductionReport.acPcsPerLengthExecute(Sender: TObject);
begin
 SaveFilterSettings (Sender) ;
// CleanDimensionFilter (Sender) ;
// if (FilterChanged) or (Vol_By_Length_Gen = False) then
// Begin
  MakeSQL_PROD_By_Length (Sender) ;
//  Vol_By_Length_Gen:= True ;
// End ;

 if not InitiateReport('PROD_BY_LENGTH.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
end;

procedure TfProductionReport.acPkgInfoExecute(Sender: TObject);
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

procedure TfProductionReport.acCollapseAllProdPaketNrExecute(Sender: TObject);
begin
 grdProdPaketNrDBBandedTableView1.ViewData.Collapse(True);
end;

procedure TfProductionReport.acCollapseAllProdSumExecute(Sender: TObject);
begin
 grdProdSUMDBBandedTableView1.ViewData.Collapse(True);
end;

procedure TfProductionReport.acDeleteProdPaketNrMallExecute(Sender: TObject);
begin
 With dmInventory do
 Begin
  if cbProdPaketNr.ItemIndex > -1 then
  Begin
   sq_UserProfile.Active := False ;
   sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
   sq_UserProfile.ParamByName('Form').AsString    := fProductionReport.Name + '1' ;
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

procedure TfProductionReport.acDeleteProdSUMMallExecute(Sender: TObject);
begin
 With dmInventory do
 Begin
  if cbProdSUM.ItemIndex > -1 then
  Begin
   sq_UserProfile.Active := False ;
   sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
   sq_UserProfile.ParamByName('Form').AsString    := fProductionReport.Name + '2' ;
   sq_UserProfile.ParamByName('Name').AsString    := cbProdSUM.Properties.Items.Strings[cbProdSUM.ItemIndex] ;
   sq_UserProfile.Active := True ;
   Try
   if not sq_UserProfile.Eof then
    sq_UserProfile.Delete ;
   Finally
    sq_UserProfile.Active     := False ;
   End;
   PopulateCheckBoxMallarProdSUM ;
  End;
 End;
end;

procedure TfProductionReport.acExpandAllProdPaketNrExecute(Sender: TObject);
begin
 grdProdPaketNrDBBandedTableView1.ViewData.Expand(True);
end;

procedure TfProductionReport.acExpandAllProdSUMExecute(Sender: TObject);
begin
 grdProdSUMDBBandedTableView1.ViewData.Expand(True);
end;

procedure TfProductionReport.acExportExecute(Sender: TObject);
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
procedure TfProductionReport.CheckAllItems ;
Var I : Integer ;
    OneItemIsChecked  : Boolean ;
Begin


End ;

Function TfProductionReport.GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
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

Function TfProductionReport.SelectedOwnersOK : Boolean ;
Var
    VidaWood            : Boolean ;
    NoOfSelections, x   : Integer ;
Begin
 NoOfSelections:= 0 ;
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


Function TfProductionReport.GetComboFilterText(const Kolumn : String;combo : TcxCheckComboBox) : String ;
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

Function TfProductionReport.ComboBoxFilterChecked(const Kolumn : String;combo : TcxCheckComboBox) : Boolean ;
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



procedure TfProductionReport.mtUserPropAfterInsert(DataSet: TDataSet);
begin
 mtUserPropRegDate.AsDateTime           := Now ;
// mtUserPropProductGroupNo.AsInteger     := -1 ;
 mtUserPropProductNo.AsInteger          := -1 ;
 mtUserPropProductDescription.AsString  := 'Ingen ändring' ;
 mtUserPropLIPChange.AsInteger          := 0 ;
 mtUserPropVerkNo.AsInteger             := 0 ;
end;

procedure TfProductionReport.mtUserPropSalesRegionNoChange(
  Sender: TField);
Var x : Integer ;
begin
(*
 cds_Verk.Active := not cds_Verk.Active ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
   cds_Verk.Filter:= 'SalesRegionNo = '+mtUserPropSalesRegionNo.AsString
    else
     cds_Verk.Filter:= 'SalesRegionNo = -1' ;
  cds_Verk.Filtered:= True ;
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
  *)
end;

procedure TfProductionReport.acNewProdSUMMallExecute(Sender: TObject);
var  fAngeNyMall  : TfAngeNyMall;
     NewIndex     : Integer ;
begin
 fAngeNyMall  := TfAngeNyMall.Create(nil);
 Try
  if fAngeNyMall.ShowModal = mrOK then
  Begin
   if not sq_UserProfile.Active then sq_UserProfile.Active  := True ;
   sq_UserProfile.Insert ;
   sq_UserProfileName.AsString    := fAngeNyMall.teMall.Text ;
   sq_UserProfileForm.AsString    := fProductionReport.Name + '2' ;
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

procedure TfProductionReport.grdPkgNoTblDBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;

procedure TfProductionReport.acPkgInfoPkgNosTableExecute(Sender: TObject);
var frmPkgInfo: TfrmPkgInfo;
begin
 With dmInventory do
 Begin
  frmPkgInfo:= TfrmPkgInfo.Create(Nil);
  Try
//   frmPkgInfo.PackageNo     := cds_PkgNoListPKTNR.AsInteger ;
//   frmPkgInfo.SupplierCode  := cds_PkgNoListLEVKOD.AsString ;
   frmPkgInfo.ShowModal ;
  Finally
   FreeAndNil(frmPkgInfo) ;
  End ;
 End ;
end;

procedure TfProductionReport.acPkgNoExecute(Sender: TObject);
Var  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 SaveFilterSettings (Sender) ;
// CleanDimensionFilter (Sender) ;
// if (FilterChanged) or (Vol_By_PkgNo = False) then
// Begin
  Make_PROD_BY_PKG_SQL(Sender) ;
//  Vol_By_PkgNo:= True ;
// End ;

 if not InitiateReport('PROD_BY_PKGNo.RPT') then Exit ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 CRViewer91.ViewReport ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfProductionReport.acPrintPaketnrExecute(Sender: TObject);
Var FilterString : String ;
begin

 // dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Produktion') ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(DateTimeToStr(deDBStartPeriod.Date) + ' - ' + DateTimeToStr(deDBEndPeriod.Date) ) ;

  dxComponentPrinter1Link1.PrinterPage.Orientation    := poLandscape ;
  dxComponentPrinter1Link1.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1) ;
end;

procedure TfProductionReport.acPrintProdSUMExecute(Sender: TObject);
Var FilterString : String ;
begin
//  FilterString:= FilterString;

 // dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Clear ;

  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add('Produktion') ;

  dxComponentPrinter1Link2.PrinterPage.Orientation    := poLandscape ;
  dxComponentPrinter1Link2.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link2.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link2.PrinterPage.ApplyToPrintDevice ;

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link2) ;
end;

procedure TfProductionReport.acRefreshProdPaketNrExecute(Sender: TObject);
begin
 //Refresh ProdPaketNr
 With dmInventory do
 Begin
  if not SelectedOwnersOK then
  Begin
   ShowMessage('Välj minst ett Verk!');
   Exit ;
  End;

  cds_ProductionByPackageNo.Active  := False ;

  Build_ProductionByPackageNo ;

  cds_ProductionByPackageNo.Active  := True ;
 End;
end;

procedure TfProductionReport.acRefreshProdSUMExecute(Sender: TObject);
begin
 With dmInventory do
 Begin
  if not SelectedOwnersOK then
  Begin
   ShowMessage('Välj minst ett Verk!');
   Exit ;
  End;

  cds_ProductionByProduct.Active  := False ;
  Build_ProductionByProduct ;
  cds_ProductionByProduct.Active  := True ;
 End;
end;

procedure TfProductionReport.ccbATPropertiesClickCheck(Sender: TObject;
  ItemIndex: Integer; var AllowToggle: Boolean);
begin
 TcxCheckComboBox(Sender).DroppedDown := False;
end;

procedure TfProductionReport.eATExit(Sender: TObject);
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

procedure TfProductionReport.eABExit(Sender: TObject);
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

procedure TfProductionReport.eALExit(Sender: TObject);
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

procedure TfProductionReport.acSaveProdPaketNrMallExecute(Sender: TObject);
begin
 if cbProdPaketNr.ItemIndex > -1 then
 Begin
  dmsSystem.StoreGridLayout_Special( ThisUser.UserID,   fProductionReport.Name + '1',

  cbProdPaketNr.Properties.Items.Strings[cbProdPaketNr.ItemIndex]

  + '/' +

  fProductionReport.Name + '1'
//  sq_UserProfileForm.AsString

  ,grdProdPaketNrDBBandedTableView1,'fProductionReport') ;

  SaveUserProfilePaketnr ;
 End;

// dmsSystem.StoreGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsName.AsString + '/' + cds_PropsForm.AsString, cxGrid1DBBandedTableView1, 'frmInventoryReport') ;
end;

procedure TfProductionReport.acSaveProdSUMMallExecute(Sender: TObject);
begin
 if cbProdSUM.ItemIndex > -1 then
 Begin
  dmsSystem.StoreGridLayout_Special( ThisUser.UserID,   fProductionReport.Name + '2',

  cbProdSUM.Properties.Items.Strings[cbProdSUM.ItemIndex]

  + '/' +

  fProductionReport.Name + '2'
//  sq_UserProfileForm.AsString

  ,grdProdSUMDBBandedTableView1,'fProductionReport') ;

  SaveUserProfileProdSUM ;
 End;
end;

procedure TfProductionReport.acUtfallKorningExecute(Sender: TObject);
Var  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 SaveFilterSettings (Sender) ;
// CleanDimensionFilter (Sender) ;
// if (FilterChanged) or (Vol_By_PkgNo = False) then
// Begin
  Make_PROD_BY_RUN_SQL(Sender) ;
//  Vol_By_PkgNo:= True ;
// End ;

 if not InitiateReport('UtfallKorning.rpt') then Exit ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 CRViewer91.ViewReport ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfProductionReport.acLoadGridLayoutExecute(Sender: TObject);
Var //x,
//    SupplierNo,
//    LoadingLocationNo,
//    ShipperNo,
//    BookingTypeNo,
//    MarketRegionNo,
//    CustomerNo,
//    AgentNo           : Integer ;
    fSokAvropMall     : TfSokAvropMall;
begin
 With dmInventory do
 Begin
  cds_Props.Active:= False ;
  cds_Props.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  cds_Props.ParamByName('Name').AsString     := 'InventoryReport' ;
  cds_Props.Active:= True ;
  fSokAvropMall:= TfSokAvropMall.Create(nil) ;
  Try
   if (fSokAvropMall.ShowModal = mrOK) and (cds_Props.RecordCount > 0) AND (cds_PropsName.AsString > '') then
   Begin
//    Application.ProcessMessages ;
//    dmsSystem.LoadGridLayout_Special( ThisUser.UserID, Self.Name, cds_PropsName.AsString + '/' + cds_PropsForm.AsString, cxGrid1DBBandedTableView1,'frmInventoryReport') ;
//    dmsSystem.StoreGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsName.AsString + '/' + cds_PropsForm.AsString, cxGrid1DBBandedTableView1, 'frmInventoryReport') ;


{  SupplierNo := cds_PropsVerkSupplierNo.AsInteger ;
  For x:= 0 to PeSupplier.Properties.Items.Count-1 do
  Begin
   if SupplierNo = integer(peSupplier.Properties.Items.Objects[x]) then
    PeSupplier.ItemIndex:= x ;
  End ;


  LoadingLocationNo := cds_PropsLoadingLocationNo.AsInteger ;
  For x:= 0 to PeLoadingLocation.Properties.Items.Count-1 do
  Begin
   if LoadingLocationNo = integer(peLoadingLocation.Properties.Items.Objects[x]) then
    PeLoadingLocation.ItemIndex:= x ;
  End ;

  ShipperNo := cds_PropsShipperNo.AsInteger ;
  For x:= 0 to PeShipper.Properties.Items.Count-1 do
  Begin
   if ShipperNo = integer(peShipper.Properties.Items.Objects[x]) then
    PeShipper.ItemIndex:= x ;
  End ;

  BookingTypeNo := cds_PropsBookingTypeNo.AsInteger ;
  For x:= 0 to PeBookingType.Properties.Items.Count-1 do
  Begin
   if BookingTypeNo = integer(peBookingType.Properties.Items.Objects[x]) then
    PeBookingType.ItemIndex:= x ;
  End ;

  MarketRegionNo := cds_PropsMarketRegionNo.AsInteger ;
  For x:= 0 to PeMarketRegion.Properties.Items.Count-1 do
  Begin
   if MarketRegionNo = integer(peMarketRegion.Properties.Items.Objects[x]) then
    PeMarketRegion.ItemIndex:= x ;
  End ;

  CustomerNo := cds_PropsCustomerNo.AsInteger ;
  For x:= 0 to PeCustomer.Properties.Items.Count-1 do
  Begin
   if CustomerNo = integer(peCustomer.Properties.Items.Objects[x]) then
    peCustomer.ItemIndex:= x ;
  End ;

  AgentNo := cds_PropsAgentNo.AsInteger ;
  For x:= 0 to PeAgent.Properties.Items.Count-1 do
  Begin
   if AgentNo = integer(peAgent.Properties.Items.Objects[x]) then
    peAgent.ItemIndex:= x ;
  End ;

  meFromWeekNo.Text := cds_PropsPIPNo.AsString ;
  meToWeekNo.Text   := cds_PropsLIPNo.AsString ;
  if cds_PropsInputOption.AsInteger = 1 then
  cbFilterInvoiceDate.Checked:= True
   else
    cbFilterInvoiceDate.Checked:= False ;

  Try
  esStart.Date  := SQLTimeStampToDateTime(cds_PropsStartPeriod.AsSQLTimeStamp) ;
  esEnd.Date    := SQLTimeStampToDateTime(cds_PropsEndPeriod.AsSQLTimeStamp) ;
  Except
  End ;

  if cds_PropsRegPointNo.AsInteger = 1 then
   cbShowProduct.Checked:= True
    else
     cbShowProduct.Checked:= False ;

  cbAvropStatus.ItemIndex                       := cds_PropsCopyPcs.AsInteger ;
  peOrderType.ItemIndex                         := cds_PropsOrderTypeNo.AsInteger ;
 }
 End ;//If ShowModal..
  Finally
   FreeAndNil(fSokAvropMall) ;
   cds_Props.Active:= False ;
  End ;
 End ;//With dm_SokFormular do
end;

procedure TfProductionReport.acNewProdPaketNrMallExecute(Sender: TObject);
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
   sq_UserProfileForm.AsString    := fProductionReport.Name + '1' ;
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

procedure TfProductionReport.OpenStandardMall(Sender: TObject);
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

procedure TfProductionReport.mInvNosEnter(Sender: TObject);
begin
 dmsSystem.MemoInAction:= True ;
end;

procedure TfProductionReport.mInvNosExit(Sender: TObject);
begin
 dmsSystem.MemoInAction:= False ;
end;


Function TfProductionReport.CheckIfAnyCheckedItemsInComboFilter(combo : TcxCheckComboBox) : Boolean ;
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

procedure TfProductionReport.acExportToExcelExecute(Sender: TObject);
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

procedure TfProductionReport.cbExpandedPaketnrPropertiesChange(Sender: TObject);
begin
 if cbExpandedPaketNr.Checked then
  grdProdPaketNrDBBandedTableView1.ViewData.Expand(True)
   else
    grdProdPaketNrDBBandedTableView1.ViewData.Collapse(True) ;
end;

procedure TfProductionReport.cbExpandedProdSumPropertiesChange(Sender: TObject);
begin
 if cbExpandedProdSum.Checked then
  grdProdSUMDBBandedTableView1.ViewData.Expand(True)
   else
    grdProdSUMDBBandedTableView1.ViewData.Collapse(True) ;
end;

procedure TfProductionReport.cbInclTimePropertiesChange(Sender: TObject);
begin
  if (mtuserpropGradeStampNo.AsInteger = 0) or (mtuserpropGradeStampNo.IsNull) then
  Begin
    deDBStartPeriod.Properties.Kind := ckDate ;
    deDBEndPeriod.Properties.Kind   := ckDate ;
  End
  else
  Begin
    deDBStartPeriod.Properties.Kind := ckDateTime ;
    deDBEndPeriod.Properties.Kind   := ckDateTime ;
  End;
end;

procedure TfProductionReport.cbOwnerPropertiesCloseUp(Sender: TObject);
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

procedure TfProductionReport.cbProdPaketNrPropertiesChange(Sender: TObject);
begin
//Open paketnr grid Mall
 OpenProdPaketNrMall ;
 Open_UserProfilePaketNr ;
end;

procedure TfProductionReport.cbProdSUMPropertiesChange(Sender: TObject);
begin
//Open prod sum grid Mall
 OpenProdSUMMall ;
 Open_UserProfileProdSUM ;
end;

procedure TfProductionReport.Open_UserProfilePaketNr ;
Begin
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := fProductionReport.Name + '1' ;
 sq_UserProfile.ParamByName('Name').AsString    := cbProdPaketNr.Text ;
 sq_UserProfile.Active  := True ;
 Try
 if not sq_UserProfile.Eof then
 Begin
  if sq_UserProfileInputOption.AsInteger = 1 then
  cbExpandedPaketnr.Checked := True
  else
  cbExpandedPaketnr.Checked := False ;


  if sq_UserProfileCopyPcs.AsInteger = 1 then
  cbPaReg.Checked := True
  else
  cbPaReg.Checked := False ;

  if sq_UserProfileAutoColWidth.AsInteger = 1 then
  cbAvReg.Checked := True
  else
  cbAvReg.Checked := False ;
 End;
 Finally
  sq_UserProfile.Active  := False ;
 End;
End;

procedure TfProductionReport.Open_UserProfileProdSUM ;
Begin
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := fProductionReport.Name + '2' ;
 sq_UserProfile.ParamByName('Name').AsString    := cbProdSUM.Text ;
 sq_UserProfile.Active  := True ;
 Try
 if not sq_UserProfile.Eof then
 Begin
  if sq_UserProfileInputOption.AsInteger = 1 then
   cbExpandedProdSUM.Checked  := True
   else
   cbExpandedProdSUM.Checked  := False ;
 End;
 Finally
  sq_UserProfile.Active  := False ;
 End;
End;


procedure TfProductionReport.OpenProdPaketNrMall ;
begin
//Open Mall
 if cbProdPaketNr.ItemIndex > -1 then
 Begin
  dmsSystem.LoadGridLayout_Special( ThisUser.UserID, fProductionReport.Name + '1',
  cbProdPaketNr.Properties.Items.Strings[cbProdPaketNr.ItemIndex]
  + '/' + fProductionReport.Name + '1', grdProdPaketNrDBBandedTableView1,'fProductionReport') ;
 End;
end;

procedure TfProductionReport.OpenProdSUMMall ;
begin
//Open Mall
 if cbProdSUM.ItemIndex > -1 then
 Begin
  dmsSystem.LoadGridLayout_Special( ThisUser.UserID, fProductionReport.Name + '2',
  cbProdSUM.Properties.Items.Strings[cbProdSUM.ItemIndex]
  + '/' + fProductionReport.Name + '2', grdProdSUMDBBandedTableView1,'fProductionReport') ;
 End;
end;

procedure TfProductionReport.cxButton1Click(Sender: TObject);
begin
 Close ;
end;

procedure TfProductionReport.cxButton2Click(Sender: TObject);
begin
 ClearProductFilter ;
end;

procedure TfProductionReport.eNTExit(Sender: TObject);
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

procedure TfProductionReport.eNBExit(Sender: TObject);
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

procedure TfProductionReport.Build_ProductionByPackageNo ;
Begin
 With dmInventory do
 Begin
  With cds_ProductionByPackageNo do
  Begin
    SQL.Clear ;
    SQL.Add('Select distinct') ;
    SQL.Add('CASE') ;
    SQL.Add('WHEN pp.Operation = 0 THEN ' + QuotedStr('PÅREGISTRERAT')) ;
    SQL.Add('WHEN pp.Operation = 3 THEN ' + QuotedStr('AVREGISTRERAT')) ;
    SQL.Add('END AS Operation,') ;
    SQL.Add('pd.ProductNo,') ;
    SQL.Add('pd.ProductDisplayName AS PRODUKT,') ;
    SQL.Add('pt.PackageTypeNo,') ;



    SQL.Add('pp.PackageNo AS PaketNr,') ;
    SQL.Add('RTRIM(pp.SupplierCode) AS Prefix,') ;
    SQL.Add('pg.ActualThicknessMM AS AT,') ;
    SQL.Add('pg.ActualWidthMM AS AB,        ') ;
    SQL.Add('pg.NominalThicknessMM AS NT,') ;
    SQL.Add('pg.NominalWidthMM AS NB,') ;
    SQL.Add('CAST(pg.NominalThicknessMM AS VARCHAR(10)) +' + QuotedStr('x') + '+ CAST(pg.NominalWidthMM AS VARCHAR(10)) AS NomDim,') ;
    SQL.Add('CAST(pg.ActualThicknessMM AS VARCHAR(10)) +' + QuotedStr('x') + '+ CAST(pg.ActualWidthMM AS VARCHAR(10)) AS AktDim,') ;
    SQL.Add('pt.TotalNoOfPieces AS STYCK,') ;
    SQL.Add('pt.Totalm3Actual AS AM3,') ;
    SQL.Add('pt.Totalm3Nominal AS NM3,') ;
    SQL.Add('pt.TotalLinealMeterActualLength AS AM1,') ;
    SQL.Add('pt.TotalMFBMNominal AS MFBM,') ;
    SQL.Add('pt.TotalSQMofActualWidth AS AM2,') ;
    SQL.Add('DATEADD(dd, DATEDIFF(dd, 0, pp.ProductionDate), 0) AS TILLVERKAD,') ;
    SQL.Add('SPE.SpeciesName AS TS,') ;
    SQL.Add('imp.ProductCategoryName AS PC,') ;
    SQL.Add('Gr.GradeName AS KV,') ;
    SQL.Add('SUR.SurfacingName AS UT,') ;
    SQL.Add('pp.SupplierNo AS OwnerNo,') ;
    SQL.Add('CASE WHEN pt.TotalNoOfPieces > 0 THEN') ;
    SQL.Add('pt.TotalLinealMeterActualLength / pt.TotalNoOfPieces') ;
    SQL.Add('ELSE') ;
    SQL.Add('0.0') ;
    SQL.Add('END AS AvgLength,') ;
    SQL.Add('st.ShiftTeamName, rp.RegPointName,') ;
    SQL.Add('ISNULL(RTRIM(rp.RegPointName),' + QuotedStr('') + ') + ' + QuotedStr('/') + ' + ISNULL(st.ShiftTeamName,' + QuotedStr('NA') +  ') AS MP_SkiftLag') ;
    SQL.Add('FROM dbo.Package_Production pp') ;
    SQL.Add('Inner join  dbo.Client Verk on Verk.ClientNo = pp.SupplierNo') ;
    SQL.Add('Left join dbo.ShiftTeam st ON st.ShiftTeamNo = pp.ShiftNo') ;
    SQL.Add('Inner join dbo.RegistrationPoint rp on rp.RegPointNo = pp.ProductionUnitNo') ;
    SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pp.PackageTypeNo') ;
//    SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
    SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
    SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
    SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
    SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
    SQL.Add('				AND imp.LanguageCode = 1') ;
    SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
    SQL.Add('				AND SPE.LanguageCode = 1') ;
    SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
				    SQL.Add('AND SUR.LanguageCode = 1') ;
    SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
				    SQL.Add('AND Gr.LanguageCode = 1') ;


//    if deStartPeriod.EditValue > 0 then
//    SQL.Add('WHERE pp.ProductionDate >= ' + QuotedStr(DateTimeToStr(deStartPeriod.Date))) ;

    SQL.Add('WHERE DATEADD(dd, DATEDIFF(dd, 0, pp.ProductionDate), 0) >= ' + QuotedStr(DateTimeToStr(deDBStartPeriod.Date))) ;




    if deDBEndPeriod.EditValue > 0 then
//    SQL.Add('AND pp.ProductionDate <= ' + QuotedStr(DateTimeToStr(deDBEndPeriod.Date))) ;
    SQL.Add('AND DATEADD(dd, DATEDIFF(dd, 0, pp.ProductionDate), 0) <= ' + QuotedStr(DateTimeToStr(deDBEndPeriod.Date))) ;


    if cbPaReg.Checked <> cbAvreg.Checked then
    Begin
     if cbPaReg.Checked then
      SQL.Add('AND pp.Operation = 0') ;
     if cbAvreg.Checked then
      SQL.Add('AND pp.Operation = 3') ;
    End;



    SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;


    SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
    SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
    SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
    SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;
    SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;

    SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
    SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
    SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

    SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
    SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;

    SQL.Add(GetSQLofComboFilter(1, 'rp.RegPointNo', ccMatpunkt)) ;
    SQL.Add(GetSQLofComboFilter(1, 'pp.ShiftNo', ccSkiftLag)) ;


//SQL.SaveToFile('c:\test\cds_ProductionByPackageNo.txt') ;
  End;

  End;
End ;


procedure TfProductionReport.Build_ProductionByProduct ;
Begin
 With dmInventory do
 Begin
  With cds_ProductionByProduct do
  Begin
    SQL.Clear ;
    SQL.Add('Select distinct') ;
    SQL.Add('CASE') ;
    SQL.Add('WHEN pp.Operation = 0 THEN ' + QuotedStr('PÅREGISTRERAT')) ;
    SQL.Add('WHEN pp.Operation = 3 THEN ' + QuotedStr('AVREGISTRERAT')) ;
    SQL.Add('END AS Operation,') ;
    SQL.Add('pd.ProductNo,') ;
    SQL.Add('pd.ProductDisplayName AS PRODUKT,') ;
//    SQL.Add('pt.PackageTypeNo,') ;



    SQL.Add('0 AS PaketNr,') ;
    SQL.Add(QuotedStr('') + ' AS Prefix,') ;
    SQL.Add('pg.ActualThicknessMM AS AT,') ;
    SQL.Add('pg.ActualWidthMM AS AB,        ') ;
    SQL.Add('pg.NominalThicknessMM AS NT,') ;
    SQL.Add('pg.NominalWidthMM AS NB,') ;
    SQL.Add('CAST(pg.NominalThicknessMM AS VARCHAR(10)) +' + QuotedStr('x') + '+ CAST(pg.NominalWidthMM AS VARCHAR(10)) AS NomDim,') ;
    SQL.Add('CAST(pg.ActualThicknessMM AS VARCHAR(10)) +' + QuotedStr('x') + '+ CAST(pg.ActualWidthMM AS VARCHAR(10)) AS AktDim,') ;
    SQL.Add('SUM(pt.TotalNoOfPieces) AS STYCK,') ;
    SQL.Add('SUM(pt.Totalm3Actual) AS AM3,') ;
    SQL.Add('SUM(pt.Totalm3Nominal) AS NM3,') ;
    SQL.Add('SUM(pt.TotalLinealMeterActualLength) AS AM1,') ;
    SQL.Add('SUM(pt.TotalMFBMNominal) AS MFBM,') ;
    SQL.Add('SUM(pt.TotalSQMofActualWidth) AS AM2,') ;
//    SQL.Add('CAST(pp.ProductionDate AS DATE) AS TILLVERKAD,') ;
    SQL.Add('SPE.SpeciesName AS TS,') ;
    SQL.Add('imp.ProductCategoryName AS PC,') ;
    SQL.Add('Gr.GradeName AS KV,') ;
    SQL.Add('SUR.SurfacingName AS UT,') ;
    SQL.Add('pp.SupplierNo AS OwnerNo,') ;

    SQL.Add('CASE') ;
    SQL.Add('WHEN SUM(pt.TotalNoOfPieces) > 0 THEN') ;
    SQL.Add('SUM(pt.TotalLinealMeterActualLength) / SUM(pt.TotalNoOfPieces)') ;
    SQL.Add('ELSE') ;
    SQL.Add('0') ;
    SQL.Add('END AS AvgLength,') ;

    SQL.Add('st.ShiftTeamName, rp.RegPointName,') ;
    SQL.Add('ISNULL(RTRIM(rp.RegPointName),' + QuotedStr('') + ') + ' + QuotedStr('/') + ' + ISNULL(st.ShiftTeamName,' + QuotedStr('NA') +  ') AS MP_SkiftLag') ;
    SQL.Add('FROM dbo.Package_Production pp') ;
    SQL.Add('Inner join  dbo.Client Verk on Verk.ClientNo = pp.SupplierNo') ;
    SQL.Add('Left join dbo.ShiftTeam st ON st.ShiftTeamNo = pp.ShiftNo') ;
    SQL.Add('Inner join dbo.RegistrationPoint rp on rp.RegPointNo = pp.ProductionUnitNo') ;
    SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pp.PackageTypeNo') ;
//    SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
    SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
    SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
    SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
    SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
    SQL.Add('				AND imp.LanguageCode = 1') ;
    SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
    SQL.Add('				AND SPE.LanguageCode = 1') ;
    SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
				    SQL.Add('AND SUR.LanguageCode = 1') ;
    SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
				    SQL.Add('AND Gr.LanguageCode = 1') ;


//    SQL.Add('WHERE pp.ProductionDate >= ' + QuotedStr(DateTimeToStr(deDBStartPeriod.Date))) ;
    SQL.Add('WHERE DATEADD(dd, DATEDIFF(dd, 0, pp.ProductionDate), 0) >= ' + QuotedStr(DateTimeToStr(deDBStartPeriod.Date))) ;


    if deDBEndPeriod.EditValue > 0 then
//    SQL.Add('AND pp.ProductionDate <= ' + QuotedStr(DateTimeToStr(deDBEndPeriod.Date))) ;
    SQL.Add('AND DATEADD(dd, DATEDIFF(dd, 0, pp.ProductionDate), 0) <= ' + QuotedStr(DateTimeToStr(deDBEndPeriod.Date))) ;

    if cbPaReg.Checked <> cbAvreg.Checked then
    Begin
     if cbPaReg.Checked then
      SQL.Add('AND pp.Operation = 0') ;
     if cbAvreg.Checked then
      SQL.Add('AND pp.Operation = 3') ;
    End;




    SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;


    SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
    SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
    SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
    SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;
    SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;

    SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
    SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
    SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

    SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
    SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;

    SQL.Add(GetSQLofComboFilter(1, 'rp.RegPointNo', ccMatpunkt)) ;
    SQL.Add(GetSQLofComboFilter(1, 'pp.ShiftNo', ccSkiftLag)) ;

    SQL.Add('Group by pd.ProductNo, pd.ProductDisplayName, pg.ActualThicknessMM,pg.ActualWidthMM, SPE.SpeciesName, imp.ProductCategoryName,') ;
    SQL.Add('Gr.GradeName, SUR.SurfacingName, va.VarugruppNamn, pp.SupplierNo, pg.NominalThicknessMM, pg.NominalWidthMM,') ;
    SQL.Add('st.ShiftTeamName, rp.RegPointName, pp.Operation') ;


//    SQL.SaveToFile('c:\test\cds_ProductionByProduct.txt') ;
  End;

  End;
End ;

procedure TfProductionReport.SaveUserProfilePaketnr ;
Begin
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := fProductionReport.Name + '1' ;
 sq_UserProfile.ParamByName('Name').AsString    := cbProdPaketNr.Text ;
 sq_UserProfile.Active  := True ;
 Try
 if not sq_UserProfile.Eof then
 Begin
  sq_UserProfile.Edit ;
  if cbExpandedPaketNr.Checked then
  sq_UserProfileInputOption.AsInteger := 1
  else
  sq_UserProfileInputOption.AsInteger := 0 ;


  if cbPaReg.Checked then
  sq_UserProfileCopyPcs.AsInteger := 1
  else
  sq_UserProfileCopyPcs.AsInteger := 0 ;

  if cbAvReg.Checked then
  sq_UserProfileAutoColWidth.AsInteger := 1
  else
  sq_UserProfileAutoColWidth.AsInteger := 0 ;



  sq_UserProfile.Post ;
 End;
 Finally
  sq_UserProfile.Active  := False ;
 End;
End;

procedure TfProductionReport.SaveUserProfileProdSUM ;
Begin
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := fProductionReport.Name + '2' ;
 sq_UserProfile.ParamByName('Name').AsString    := cbProdPaketNr.Text ;
 sq_UserProfile.Active  := True ;
 Try
 if not sq_UserProfile.Eof then
 Begin
  sq_UserProfile.Edit ;
  if cbExpandedProdSUM.Checked then
  sq_UserProfileInputOption.AsInteger := 1
  else
  sq_UserProfileInputOption.AsInteger := 0 ;


  if cbPaReg.Checked then
  sq_UserProfileCopyPcs.AsInteger := 1
  else
  sq_UserProfileCopyPcs.AsInteger := 0 ;

  if cbAvReg.Checked then
  sq_UserProfileAutoColWidth.AsInteger := 1
  else
  sq_UserProfileAutoColWidth.AsInteger := 0 ;


  sq_UserProfile.Post ;
 End;
 Finally
  sq_UserProfile.Active  := False ;
 End;
End;

procedure TfProductionReport.SaveFilterSettings (Sender: TObject) ;
begin
{  if mtSpecies.State in [dsInsert, dsEdit] then mtSpecies.Post ;
  if mtSurfacing.State in [dsInsert, dsEdit] then mtSurfacing.Post ;
  if mtGrade.State in [dsInsert, dsEdit] then mtGrade.Post ;
  if mtActThick.State in [dsInsert, dsEdit] then mtActThick.Post ;
  if mtAWidthMM.State in [dsInsert, dsEdit] then mtAWidthMM.Post ;
  if mtActLengthMM.State in [dsInsert, dsEdit] then mtActLengthMM.Post ;

  FilterString:= '' ;


  if mtActThick.RecordCount > 0 then
   FilterString:= FilterString + ' AT: ';
  mtActThick.First ;
  While not mtActThick.Eof do
  Begin
   FilterString:= FilterString + mtActThickThickness.AsString+', ' ;
   mtActThick.Next ;
  End ;

  if mtAWidthMM.RecordCount > 0 then
   FilterString:= FilterString+' AB: ';
  mtAWidthMM.First ;
  While not mtAWidthMM.Eof do
  Begin
   FilterString:= FilterString + mtAWidthMMWidth.AsString+', ' ;
   mtAWidthMM.Next ;
  End ;

  if mtActLengthMM.RecordCount > 0 then
   FilterString:= FilterString+' AL: ';
  mtActLengthMM.First ;
  While not mtActLengthMM.Eof do
  Begin
   FilterString:= FilterString + mtActLengthMMActLengthMM.AsString+', ' ;
   mtActLengthMM.Next ;
  End ;

  if mtSpecies.RecordCount > 0 then
   FilterString := FilterString+' TS: ' ;
  mtSpecies.First ;
  While not mtSpecies.Eof do
  Begin
   FilterString := FilterString + Trim(mtSpeciesSpeciesName.AsString)+', ' ;
   mtSpecies.Next ;
  End ;

  if mtSurfacing.RecordCount > 0 then
   FilterString := FilterString+' UT: ' ;
  mtSurfacing.First ;
  While not mtSurfacing.Eof do
  Begin
   FilterString := FilterString + Trim(mtSurfacingSurfacingName.AsString)+', ' ;
   mtSurfacing.Next ;
  End ;

  if mtGrade.RecordCount > 0 then
   FilterString := FilterString+' KV: ' ;
  mtGrade.First ;
  While not mtGrade.Eof do
  Begin
   FilterString := FilterString + Trim(mtGradeGradeName.AsString)+', ' ;
   mtGrade.Next ;
  End ;

  if cbShowSingleLengthPkgs.Checked then
   FilterString := FilterString + ' Endast LP paket ' ;

  if ccAvgLengthRegPkt.Checked then
   FilterString := FilterString + ' Endast ML-Reg.paket ' ; }
End ;

function TfProductionReport.InitiateReport(const ReportName: String) : Boolean ;
  var HostName, Database, UserName, Password, spath: String ;
      Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath) ;

 Result:= True ;
 if not(FileExists(sPath+ReportName)) then
 Begin
  ShowMessage('Saknar crystal reports fil.  Sökväg och filnamn : '+sPath+ReportName) ;
  Result:= False ;
  Exit ;
 End ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 report := Application1.OpenReport(sPath+ReportName, crOpenReportByTempCopy) ;
 report.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);
 Caption:= sPath+ReportName ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
End;

procedure TfProductionReport.MakeSQL_PROD_By_Length (Sender: TObject);
Var //NomThick, NomWidth : Double ;
    Save_Cursor:TCursor;
    x: Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

  sq_Temp_Inventory.SQL.Add('DELETE dbo.PROD_By_Length') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL ;
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Clear ;
  sq_Temp_Inventory.SQL.Add('DELETE dbo.Prod_By_LengthFilter') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL ;

  sq_Temp_Inventory.SQL.Clear ;
  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.Prod_By_LengthFilter (Userid, Filter)') ;
  sq_Temp_Inventory.SQL.Add('Values ('+IntToStr(Thisuser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr(FilterString)+')') ;
//  if thisuser.UserID = 8 then sq_Temp_Inventory.SQL.SaveToFile('prod_By_LengthFilter.txt');
  sq_Temp_Inventory.ExecSQL ;

  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.PROD_By_Length') ;
  sq_Temp_Inventory.SQL.Add('(UserID,') ;
  sq_Temp_Inventory.SQL.Add('ProductLengthNo,') ;

  sq_Temp_Inventory.SQL.Add('ACT_L,') ;
  sq_Temp_Inventory.SQL.Add('NOM_L,') ;
  sq_Temp_Inventory.SQL.Add('FEET,') ;
  sq_Temp_Inventory.SQL.Add('INCH,') ;
  sq_Temp_Inventory.SQL.Add('PCS,') ;
  sq_Temp_Inventory.SQL.Add('AM3,') ;
  sq_Temp_Inventory.SQL.Add('NM3,') ;

  sq_Temp_Inventory.SQL.Add('LPM,') ;
  sq_Temp_Inventory.SQL.Add('MFBM,') ;
  sq_Temp_Inventory.SQL.Add('KVM,') ;
  sq_Temp_Inventory.SQL.Add('FilterDateStart,') ;
  sq_Temp_Inventory.SQL.Add('FilterDateEnd,') ;
  sq_Temp_Inventory.SQL.Add('Operation,') ;
  sq_Temp_Inventory.SQL.Add('ClientName,') ;
  sq_Temp_Inventory.SQL.Add('ProductionUnitName)') ;

  sq_Temp_Inventory.SQL.Add('Select Distinct ') ;


  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;

  sq_Temp_Inventory.SQL.Add('PDL.ProductLengthNo,') ;
  sq_Temp_Inventory.SQL.Add('pdl.ActualLengthMM,') ;
  sq_Temp_Inventory.SQL.Add('pdl.NominalLengthMM,') ;
  sq_Temp_Inventory.SQL.Add('pdl.NominalLengthFEET,') ;
  sq_Temp_Inventory.SQL.Add('pdl.ActualLengthINCH,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.NoOfPieces),') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.m3Actual) ,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.m3Nominal),') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.LinealMeterActualLength),') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.MFBMNominal),') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.SQMofActualWidth),') ;

  sq_Temp_Inventory.SQL.Add(QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss', DateTimeToSQLTimeStamp(deDBStartPeriod.Date)))+',') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss', DateTimeToSQLTimeStamp(deDBEndPeriod.Date)))+',') ;
  sq_Temp_Inventory.SQL.Add('pp.Operation,');
  sq_Temp_Inventory.SQL.Add('Verk.ClientName,') ;
  sq_Temp_Inventory.SQL.Add('PU.RegPointName AS ProductionUnitName') ;


  sq_Temp_Inventory.SQL.Add('FROM  dbo.Package_Production PP') ;
  sq_Temp_Inventory.SQL.Add('Inner Join PackageNumber pn 	ON pn.PackageNo = PP.PackageNo') ;
  sq_Temp_Inventory.SQL.Add('AND pn.SupplierCode = PP.SupplierCode') ;
  sq_Temp_Inventory.SQL.Add('Inner Join Client Verk ON Verk.ClientNo = PP.SupplierNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.RegistrationPoint PU ON PU.RegPointNo = PP.ProductionUnitNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pp.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.productLength PDL ON PDL.ProductLengthNo = ptd.ProductLengthNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Grade G ON G.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('  AND G.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;


  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_Temp_Inventory.SQL.Add('				AND imp.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_Temp_Inventory.SQL.Add('AND SUR.LanguageCode = 1') ;


//  sq_Temp_Inventory.SQL.Add('WHERE pp.ProductionDate >= :StartDate') ;
//  sq_Temp_Inventory.SQL.Add('AND pp.ProductionDate <= :EndDate') ;

  sq_Temp_Inventory.SQL.Add('WHERE pp.ProductionDate >= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(deDBStartPeriod.Date)))) ;
  sq_Temp_Inventory.SQL.Add('AND pp.ProductionDate <= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(deDBEndPeriod.Date)))) ;



  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'PU.RegPointNo', ccMatpunkt)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pp.ShiftNo', ccSkiftLag)) ;
//  if peRegPoint.Text <> 'ALL' then
//  sq_Temp_Inventory.SQL.Add('AND PU.RegPointNo = '+IntToStr(integer(peRegPoint.Items.Objects[peRegPoint.ItemIndex]))) ;


//  if peSupplier.Text <> 'ALL' then
//  sq_Temp_Inventory.SQL.Add('AND PP.SupplierNo  = '+IntToStr(integer(peSupplier.Items.Objects[peSupplier.ItemIndex]))) ;

  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;


    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'G.GradeCode', ccbKV2)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;

    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;


    if cbPaReg.Checked <> cbAvreg.Checked then
    Begin
     if cbPaReg.Checked then
      sq_Temp_Inventory.SQL.Add('AND pp.Operation = 0') ;
     if cbAvreg.Checked then
      sq_Temp_Inventory.SQL.Add('AND pp.Operation = 3') ;
    End;


  if cbShowSingleLengthPkgs.Checked then
    sq_Temp_Inventory.SQL.Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

  if ccAvgLengthRegPkt.Checked then
   sq_Temp_Inventory.SQL.Add('and pn.AvgLengthType > 1') ;




    sq_Temp_Inventory.SQL.Add('group by pdl.ActualLengthMM, PDL.ProductLengthNo, pdl.NominalLengthMM, pdl.NominalLengthFEET,  pdl.ActualLengthINCH, ') ;
    sq_Temp_Inventory.SQL.Add('pp.Operation, Verk.ClientName, PU.RegPointName') ;

    sq_Temp_Inventory.SQL.Add('Order by pdl.ActualLengthMM') ;

//  if thisuser.UserID = 8 then  sq_Temp_Inventory.SQL.SaveToFile('sq_PROD_By_Length.txt') ;

  sq_Temp_Inventory.ExecSQL ;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfProductionReport.Make_PROD_BY_PKG_SQL(Sender: TObject) ;
Var //NomThick, NomWidth : Double ;
    Save_Cursor:TCursor;
    x: Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

  sq_Temp_Inventory.SQL.Add('DELETE dbo.PROD_BY_PKG') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL ;

  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.PROD_BY_PKG') ;
  sq_Temp_Inventory.SQL.Add('(UserID,') ;
  sq_Temp_Inventory.SQL.Add('ProductionDate,') ;
  sq_Temp_Inventory.SQL.Add('ClientName,') ;
  sq_Temp_Inventory.SQL.Add('ProductionUnitName,') ;
  sq_Temp_Inventory.SQL.Add('STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('ProductDisplayName,') ;

  sq_Temp_Inventory.SQL.Add('PackageNo,') ;
  sq_Temp_Inventory.SQL.Add('SupplierCode,') ;

  sq_Temp_Inventory.SQL.Add('ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('ActualWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('NominalThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('NominalWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('PcsPerLength,') ;
  sq_Temp_Inventory.SQL.Add('L1800,') ;
  sq_Temp_Inventory.SQL.Add('L2100,') ;
  sq_Temp_Inventory.SQL.Add('L2400,') ;
  sq_Temp_Inventory.SQL.Add('L2700,') ;
  sq_Temp_Inventory.SQL.Add('L3000,') ;
  sq_Temp_Inventory.SQL.Add('L3300,') ;
  sq_Temp_Inventory.SQL.Add('L3600,') ;
  sq_Temp_Inventory.SQL.Add('L3900,') ;
  sq_Temp_Inventory.SQL.Add('L4200,') ;
  sq_Temp_Inventory.SQL.Add('L4500,') ;
  sq_Temp_Inventory.SQL.Add('L4800,') ;
  sq_Temp_Inventory.SQL.Add('L5100,') ;
  sq_Temp_Inventory.SQL.Add('L5400,') ;
  sq_Temp_Inventory.SQL.Add('L5700,') ;
  sq_Temp_Inventory.SQL.Add('L6000,') ;
  sq_Temp_Inventory.SQL.Add('ActualM3,') ;
  sq_Temp_Inventory.SQL.Add('NominalM3,') ;
  sq_Temp_Inventory.SQL.Add('LinealMeter,') ;
  sq_Temp_Inventory.SQL.Add('MFBMNominal,') ;
  sq_Temp_Inventory.SQL.Add('SQMofActualWidth,') ;
  sq_Temp_Inventory.SQL.Add('TotalNoOfPieces,') ;
  sq_Temp_Inventory.SQL.Add('FilterDateStart,') ;
  sq_Temp_Inventory.SQL.Add('FilterDateEnd,') ;
  sq_Temp_Inventory.SQL.Add('Operation)') ;

  sq_Temp_Inventory.SQL.Add('Select Distinct ') ;


  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add('pp.ProductionDate,') ;
  sq_Temp_Inventory.SQL.Add('Verk.ClientName,') ;
  sq_Temp_Inventory.SQL.Add('PU.RegPointName AS ProductionUnitName,') ;
  sq_Temp_Inventory.SQL.Add('PTL.STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('pd.ProductDisplayName,') ;
  sq_Temp_Inventory.SQL.Add('PP.PackageNo,') ;
  sq_Temp_Inventory.SQL.Add('PP.SupplierCode,') ;
  sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM,') ;

  sq_Temp_Inventory.SQL.Add('pg.NominalThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.NominalWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('PTL.PcsPerLength,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L18,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L21,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L24,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L27,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L30,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L33,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L36,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L39,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L42,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L45,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L48,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L51,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L54,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L57,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L60,') ;
  sq_Temp_Inventory.SQL.Add('pt.Totalm3Actual,') ;
  sq_Temp_Inventory.SQL.Add('pt.Totalm3Nominal,') ;
  sq_Temp_Inventory.SQL.Add('pt.TotalLinealMeterActualLength,') ;
  sq_Temp_Inventory.SQL.Add('pt.TotalMFBMNominal,') ;
  sq_Temp_Inventory.SQL.Add('pt.TotalSQMofActualWidth,') ;
  sq_Temp_Inventory.SQL.Add('pt.TotalNoOfPieces,') ;
//  sq_Temp_Inventory.SQL.Add(':StartDate,');
//  sq_Temp_Inventory.SQL.Add(':EndDate,');
  sq_Temp_Inventory.SQL.Add(QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(deDBStartPeriod.Date)))+',') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(deDBEndPeriod.Date)))+',') ;
  sq_Temp_Inventory.SQL.Add('pp.Operation');

  sq_Temp_Inventory.SQL.Add('FROM  Package_Production PP') ;
  sq_Temp_Inventory.SQL.Add('Inner Join PackageNumber pn 	ON pn.PackageNo = PP.PackageNo') ;
  sq_Temp_Inventory.SQL.Add('AND pn.SupplierCode = PP.SupplierCode') ;
  sq_Temp_Inventory.SQL.Add('Inner Join RegistrationPoint PU ON PU.RegPointNo = PP.ProductionUnitNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join Client Verk ON Verk.ClientNo = PP.SupplierNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join PackageType pt 	ON pt.PackageTypeNo = PP.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join packageTypeLengths PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Grade G ON G.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('AND G.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_Temp_Inventory.SQL.Add('				AND imp.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_Temp_Inventory.SQL.Add('AND SUR.LanguageCode = 1') ;





  sq_Temp_Inventory.SQL.Add('WHERE pp.ProductionDate >= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(deDBStartPeriod.Date)))) ;
  sq_Temp_Inventory.SQL.Add('AND pp.ProductionDate <= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(deDBEndPeriod.Date)))) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'PU.RegPointNo', ccMatpunkt)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pp.ShiftNo', ccSkiftLag)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;


    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'G.GradeCode', ccbKV2)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;

    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;


    if cbPaReg.Checked <> cbAvreg.Checked then
    Begin
     if cbPaReg.Checked then
      sq_Temp_Inventory.SQL.Add('AND pp.Operation = 0') ;
     if cbAvreg.Checked then
      sq_Temp_Inventory.SQL.Add('AND pp.Operation = 3') ;
    End;


  if cbShowSingleLengthPkgs.Checked then
    sq_Temp_Inventory.SQL.Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

  if ccAvgLengthRegPkt.Checked then
   sq_Temp_Inventory.SQL.Add('and pn.AvgLengthType > 1') ;



//  if thisuser.UserID = 8 then sq_Temp_Inventory.SQL.SaveToFile('sq_prod_By_Pkgno.txt');
//  sq_Temp_Inventory.ParamByName('StartDate').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(StartDate.Date) ;
//  sq_Temp_Inventory.ParamByName('EndDate').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(EndDate.Date) ;
  sq_Temp_Inventory.ExecSQL ;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;

end;

procedure TfProductionReport.Make_PROD_BY_RUN_SQL(Sender: TObject) ;
Var //NomThick, NomWidth : Double ;
    Save_Cursor:TCursor;
    x: Integer ;
begin
(*
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

//========================== get RunNos
  sq_Temp_Inventory.SQL.Add('Delete from dbo.Runnos') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL ;

  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert into dbo.Runnos') ;
  sq_Temp_Inventory.SQL.Add('(UserID,') ;
  sq_Temp_Inventory.SQL.Add('Runno)') ;

  sq_Temp_Inventory.SQL.Add('Select Distinct ') ;
  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add('pp.RunNo') ;


  sq_Temp_Inventory.SQL.Add('FROM dbo.Package_Production PP') ;
  sq_Temp_Inventory.SQL.Add('Inner Join Client Verk ON Verk.ClientNo = PP.SupplierNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageNumber pn 	ON pn.PackageNo = PP.PackageNo') ;
  sq_Temp_Inventory.SQL.Add('AND pn.SupplierCode = PP.SupplierCode') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = PP.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;



  sq_Temp_Inventory.SQL.Add('WHERE pp.ProductionDate >= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(deDBStartPeriod.Date)))) ;
  sq_Temp_Inventory.SQL.Add('AND pp.ProductionDate <= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(deDBEndPeriod.Date)))) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'PP.ProductionUnitNo', ccMatpunkt)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;


    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'G.GradeCode', ccbKV2)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;

    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
    sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;


  sq_Temp_Inventory.SQL.Add('AND pp.RunNo is not null') ;

    if cbPaReg.Checked <> cbAvreg.Checked then
    Begin
     if cbPaReg.Checked then
      sq_Temp_Inventory.SQL.Add('AND pp.Operation = 0') ;
     if cbAvreg.Checked then
      sq_Temp_Inventory.SQL.Add('AND pp.Operation = 3') ;
    End;


  sq_Temp_Inventory.ExecSQL ;

   if thisuser.UserID = 8 then
   sq_Temp_Inventory.SQL.SaveToFile('runnos.txt');

//========================== get volumes
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

  sq_Temp_Inventory.SQL.Add('Delete from dbo.PROD_BY_RUN') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL ;

  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert into dbo.PROD_BY_RUN') ;
{  sq_Temp_Inventory.SQL.Add('(UserID,') ;
  sq_Temp_Inventory.SQL.Add('ProductionDate,') ;
  sq_Temp_Inventory.SQL.Add('ClientName,') ;
  sq_Temp_Inventory.SQL.Add('ProductionUnitName,') ;
  sq_Temp_Inventory.SQL.Add('STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('ProductDisplayName,') ;

  sq_Temp_Inventory.SQL.Add('PackageNo,') ;
  sq_Temp_Inventory.SQL.Add('SupplierCode,') ;

  sq_Temp_Inventory.SQL.Add('ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('ActualWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('NominalThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('NominalWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('PcsPerLength,') ;
  sq_Temp_Inventory.SQL.Add('L1800,') ;
  sq_Temp_Inventory.SQL.Add('L2100,') ;
  sq_Temp_Inventory.SQL.Add('L2400,') ;
  sq_Temp_Inventory.SQL.Add('L2700,') ;
  sq_Temp_Inventory.SQL.Add('L3000,') ;
  sq_Temp_Inventory.SQL.Add('L3300,') ;
  sq_Temp_Inventory.SQL.Add('L3600,') ;
  sq_Temp_Inventory.SQL.Add('L3900,') ;
  sq_Temp_Inventory.SQL.Add('L4200,') ;
  sq_Temp_Inventory.SQL.Add('L4500,') ;
  sq_Temp_Inventory.SQL.Add('L4800,') ;
  sq_Temp_Inventory.SQL.Add('L5100,') ;
  sq_Temp_Inventory.SQL.Add('L5400,') ;
  sq_Temp_Inventory.SQL.Add('L5700,') ;
  sq_Temp_Inventory.SQL.Add('L6000,') ;
  sq_Temp_Inventory.SQL.Add('ActualM3,') ;
  sq_Temp_Inventory.SQL.Add('NominalM3,') ;
  sq_Temp_Inventory.SQL.Add('LinealMeter,') ;
  sq_Temp_Inventory.SQL.Add('MFBMNominal,') ;
  sq_Temp_Inventory.SQL.Add('SQMofActualWidth,') ;
  sq_Temp_Inventory.SQL.Add('TotalNoOfPieces,') ;
  sq_Temp_Inventory.SQL.Add('FilterDateStart,') ;
  sq_Temp_Inventory.SQL.Add('FilterDateEnd,') ;
  sq_Temp_Inventory.SQL.Add('Operation)') ; }

  sq_Temp_Inventory.SQL.Add('Select Distinct ') ;
  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add('isNull(pp.RunNo,-1)		AS Körnr,') ;
  sq_Temp_Inventory.SQL.Add('Verk.ClientName				AS VERK,') ;
  sq_Temp_Inventory.SQL.Add('PU.RegPointName 			AS MÄTPUNKT,') ;
  sq_Temp_Inventory.SQL.Add('pd.ProductDisplayName			AS PRODUKT,') ;
  sq_Temp_Inventory.SQL.Add('pl.ActualLengthMM			AS ALMM,') ;
  sq_Temp_Inventory.SQL.Add('pl.NominalLengthMM			AS NLMM,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.m3Actual) 			AS AM3,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.m3Nominal)			AS NM3,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.LinealMeterActualLength) 	AS AM1,') ;

  sq_Temp_Inventory.SQL.Add('SUM(ptd.MFBMNominal)			AS MFBM,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.SQMofActualWidth)		AS AM2,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.NoOfPieces)			AS STYCK,') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(deDBStartPeriod.Date)))+',') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(deDBEndPeriod.Date)))) ;


  sq_Temp_Inventory.SQL.Add('FROM  dbo.Runnos ro') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Package_Production PP on pp.RunNo = ro.RunNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageNumber pn 	ON pn.PackageNo = PP.PackageNo') ;
  sq_Temp_Inventory.SQL.Add('AND pn.SupplierCode = PP.SupplierCode') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.RegistrationPoint PU ON PU.RegPointNo = PP.ProductionUnitNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Client Verk ON Verk.ClientNo = PP.SupplierNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = PP.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;

//  sq_Temp_Inventory.SQL.Add('Inner Join packageTypeLengths PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
//  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Grade G ON G.GradeNo = pd.GradeNo') ;
//  sq_Temp_Inventory.SQL.Add('AND G.LanguageCode = 1') ;
//  sq_Temp_Inventory.SQL.Add('Inner Join ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;


  sq_Temp_Inventory.SQL.Add('WHERE ro.UserID = '+IntToStr(ThisUser.UserID)) ;

  if peRegPoint.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND PP.ProductionUnitNo = '+IntToStr(integer(peRegPoint.Items.Objects[peRegPoint.ItemIndex]))) ;


  if peSupplier.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND PP.SupplierNo = '+IntToStr(integer(peSupplier.Items.Objects[peSupplier.ItemIndex]))) ;


  if (peOperation.ItemIndex > 0) and (peOperation.ItemIndex <> 2) then
   sq_Temp_Inventory.SQL.Add('and Operation = '+IntToStr(peOperation.ItemIndex-1)) ;

//  if cbShowSingleLengthPkgs.Checked then
//    sq_Temp_Inventory.SQL.Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

//  if ccAvgLengthRegPkt.Checked then
//   sq_Temp_Inventory.SQL.Add('and pn.AvgLengthType > 1') ;


  sq_Temp_Inventory.SQL.Add('Group By pp.RunNo, Verk.ClientName, PU.RegPointName, pd.ProductDisplayName,') ;
  sq_Temp_Inventory.SQL.Add('pl.ActualLengthMM, pd.ProductNo, pl.NominalLengthMM') ;

  if thisuser.UserID = 8 then
   sq_Temp_Inventory.SQL.SaveToFile('sq_prod_By_Run.txt');
  sq_Temp_Inventory.ExecSQL ;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 *)
end;



End.


