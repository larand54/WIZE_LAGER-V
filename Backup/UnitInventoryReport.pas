unit UnitInventoryReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, ImgList, OleServer, OleCtrls,
  Menus, CRAXDDRT_TLB, DB, ActnList,
  CrystalActiveXReportViewerLib11_TLB, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxLabel, cxCheckBox,
  cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, Buttons, cxCalc,
  cxCurrencyEdit, cxGridExportLink, cxSplitter,
  cxGridCustomPopupMenu, cxGridPopupMenu, kbmMemTable, FMTBcd, DBClient,
  Provider, SqlExpr, cxCheckComboBox, cxDBCheckComboBox,
  cxLookAndFeelPainters, cxButtons, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, cxDBEdit,
  cxCalendar, cxImageComboBox, cxDBLabel, cxVariants, cxListBox, cxMemo;


type
  TfrmInventoryReport = class(TForm)
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    Application1: TApplication;
    lbPkgNoReport: TdxBarLargeButton;
    lbPcsPerLengthReport: TdxBarLargeButton;
    lbPkgTypeReport: TdxBarLargeButton;
    lbInventoryCount: TdxBarLargeButton;
    lbHideFilterPanel: TdxBarLargeButton;
    bbSummaryReport: TdxBarLargeButton;
    ActionList1: TActionList;
    acPkgCode: TAction;
    acPkgNoList: TAction;
    acPkgSummary: TAction;
    pmFormShortcuts: TPopupMenu;
    F1PktNrrapport1: TMenuItem;
    F2Antallngdrapport1: TMenuItem;
    F3Pktkodrapport1: TMenuItem;
    F4PktNrlista1: TMenuItem;
    F5Lagersummering1: TMenuItem;
    acClose: TAction;
    Stng1: TMenuItem;
    pcInventory: TcxPageControl;
    tsReport: TcxTabSheet;
    CRViewer91: TCrystalActiveXReportViewer;
    tsInvSum: TcxTabSheet;
    grdInvSum: TcxGrid;
    grdInvSumDBTableView1: TcxGridDBTableView;
    grdInvSumDBTableView1LAGERSTLLE: TcxGridDBColumn;
    grdInvSumDBTableView1TS: TcxGridDBColumn;
    grdInvSumDBTableView1KV: TcxGridDBColumn;
    grdInvSumDBTableView1ATMM: TcxGridDBColumn;
    grdInvSumDBTableView1ABMM: TcxGridDBColumn;
    grdInvSumDBTableView1UT: TcxGridDBColumn;
    grdInvSumDBTableView1AM3: TcxGridDBColumn;
    grdInvSumDBTableView1ProductNo: TcxGridDBColumn;
    grdInvSumDBTableView1PIPNo: TcxGridDBColumn;
    grdInvSumLevel1: TcxGridLevel;
    tsTABELL: TcxTabSheet;
    Memo1: TMemo;
    acPackageTable: TAction;
    acInvSummary: TAction;
    acCRPkgNoReport: TAction;
    acCRAntalPerLangd: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel2: TPanel;
    PakettabellF81: TMenuItem;
    LagersumtabellF71: TMenuItem;
    Panel4: TPanel;
    BitBtn9: TBitBtn;
    acPrintPkgTable: TAction;
    acPkgTableSetup: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    acPkgInfo: TAction;
    pmPkgTable: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    acChangePkgTableLayout: TAction;
    dxBarButton2: TdxBarButton;
    acExpandPkgTableGroup: TAction;
    acCollapseAllPkgTableGroup: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    acRemovePkg: TAction;
    acChangePkg: TAction;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    BitBtn11: TBitBtn;
    Skrivut1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    acPaketLogg: TAction;
    dxBarButton7: TdxBarButton;
    tsPcsPerLength: TcxTabSheet;
    Panel5: TPanel;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    acStyckPerLangdTabell: TAction;
    grdPcsPerLengthDBTableView1: TcxGridDBTableView;
    grdPcsPerLengthLevel1: TcxGridLevel;
    grdPcsPerLength: TcxGrid;
    acPrintPcsPerLengthTable: TAction;
    grdPcsPerLengthDBTableView1AKTUELLNGD: TcxGridDBColumn;
    grdPcsPerLengthDBTableView1STYCK: TcxGridDBColumn;
    grdPcsPerLengthDBTableView1AM3: TcxGridDBColumn;
    grdPcsPerLengthDBTableView1PAKET: TcxGridDBColumn;
    grdPcsPerLengthDBTableView1TOTAL_AM3: TcxGridDBColumn;
    dxComponentPrinter1Link2: TdxGridReportLink;
    grdPcsPerLengthDBTableView1PercentOfTotal: TcxGridDBColumn;
    AntlngdF91: TMenuItem;
    acPrintSummartTable: TAction;
    dxComponentPrinter1Link3: TdxGridReportLink;
    grdInvSumDBTableView1MFBM: TcxGridDBColumn;
    grdInvSumDBTableView1STYCK: TcxGridDBColumn;
    acExport: TAction;
    acPkgTypeTable: TAction;
    SummeringF61: TMenuItem;
    grdInvSumDBTableView1IMP: TcxGridDBColumn;
    pcPktNrAndTorkSats: TcxPageControl;
    tsPaketnr: TcxTabSheet;
    tsTorksats: TcxTabSheet;
    cxGridPopupMenu1: TcxGridPopupMenu;
    grdPkgNoTbl: TcxGrid;
    grdPkgNoTblDBBandedTableView1: TcxGridDBBandedTableView;
    grdPkgNoTblDBBandedTableView1SPEC_ProductDisplayName: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_PackageNo: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_SupplierCode: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_ActualThicknessMM: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_ActualWidthMM: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_TotalNoOfPieces: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_ActualM3: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_NominalM3: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_LinealMeter: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_MFBMNominal: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_SQMofActualWidth: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1PKT: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_CreatedDate: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_Species: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1PC: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_IntGrade: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_SurfacingName: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_STD_Length: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_ProductNo: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1SPEC_PackageTypeNo: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1FREEForm: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L1: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L2: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L3: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L4: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L5: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L6: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L7: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L8: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L9: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L10: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L11: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L12: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L13: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L14: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L15: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L16: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L17: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L18: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L19: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L20: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L21: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L22: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L23: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L24: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L25: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L26: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L27: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L28: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L29: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L30: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L31: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L32: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L33: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L34: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L35: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L36: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L37: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L38: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L39: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L40: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L41: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L42: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L43: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L44: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1L45: TcxGridDBBandedColumn;
    grdPkgNoTblLevel1: TcxGridLevel;
    dxBarDockControl2: TdxBarDockControl;
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
    sq_verk: TSQLQuery;
    dsp_verk: TDataSetProvider;
    cds_Verk: TClientDataSet;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkSearchName: TStringField;
    cds_VerkSalesRegionNo: TIntegerField;
    ds_Verk: TDataSource;
    mtUserPropVolumeUnitNo: TIntegerField;
    mtUserPropForm: TStringField;
    mtUserPropUserID: TIntegerField;
    cxSplitter2: TcxSplitter;
    GridPMPkgNos: TcxGridPopupMenu;
    cxSplitter1: TcxSplitter;
    acRegistreraPaket: TAction;
    acChangePackages: TAction;
    acAvRegistreraPaket: TAction;
    Panel9: TPanel;
    mtPkgNos: TkbmMemTable;
    mtPkgNosPackageNo: TIntegerField;
    mtPkgNosSupp_Code: TStringField;
    mtPkgNosOwnerNo: TIntegerField;
    acSkrivUtPkgNos: TAction;
    dxComponentPrinter1Link4: TdxGridReportLink;
    acExportPkgNos: TAction;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    pmPkgNos: TdxBarPopupMenu;
    acChangeLayoutPkgNos: TAction;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    acNewTorkSats: TAction;
    acTabortTorkSats: TAction;
    acSaveTorkSats: TAction;
    acCancelChangesTorkSats: TAction;
    acGetTorkSats: TAction;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    acPrintTorkSats: TAction;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    acColAutoWidthSortiment: TAction;
    Panel10: TPanel;
    dxBarDockControl3: TdxBarDockControl;
    Panel11: TPanel;
    lcLengthGroup: TcxDBLookupComboBox;
    lcLengthFormat: TcxDBLookupComboBox;
    lcLengthVolUnit: TcxDBLookupComboBox;
    Label7: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    acGroupByBox: TAction;
    mtUserPropGroupByBox: TIntegerField;
    mtUserPropGroupSummary: TIntegerField;
    acGroupSummary: TAction;
    dxBarButton27: TdxBarButton;
    grdPkgNoTblDBBandedTableView1Lager: TcxGridDBBandedColumn;
    dxBarButton13: TdxBarButton;
    acPkgInfoPkgNosTable: TAction;
    cxStyle3: TcxStyle;
    mtPkgNosLIPNo: TIntegerField;
    mtPkgNosPIPNo: TIntegerField;
    acMovePkgsInternt: TAction;
    dxBarButton28: TdxBarButton;
    cbHideZeroColumns: TcxCheckBox;
    Button1: TButton;
    Button2: TButton;
    cxEditStyleController1: TcxEditStyleController;
    cxEditStyleController2: TcxEditStyleController;
    cxEditStyleController3: TcxEditStyleController;
    Panel6: TPanel;
    Panel12: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    deStartTime: TcxDBDateEdit;
    deEndTime: TcxDBDateEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    mePlannedDuration: TcxDBMaskEdit;
    lcTork: TcxDBLookupComboBox;
    cxLabel20: TcxLabel;
    grdKilnPkgsDBTableView1: TcxGridDBTableView;
    grdKilnPkgsLevel1: TcxGridLevel;
    grdKilnPkgs: TcxGrid;
    cxStyle4: TcxStyle;
    cxLabel21: TcxLabel;
    deCreatedDate: TcxDBDateEdit;
    dxBarDockControl4: TdxBarDockControl;
    bbAddPkgsToKilnCharge: TdxBarButton;
    acAddKilnRow: TAction;
    icStatus: TcxDBImageComboBox;
    cxLabel22: TcxLabel;
    acRemoveKilnRow: TAction;
    dxBarButton30: TdxBarButton;
    grdKilnPkgsDBTableView1Produkt: TcxGridDBColumn;
    grdKilnPkgsDBTableView1Antalperlngd: TcxGridDBColumn;
    grdKilnPkgsDBTableView1Paket: TcxGridDBColumn;
    grdKilnPkgsDBTableView1AM3: TcxGridDBColumn;
    grdKilnPkgsDBTableView1KilnChargeNo: TcxGridDBColumn;
    pmKilnPkgs: TdxBarPopupMenu;
    acRemoveKilnPkgs: TAction;
    dxBarButton29: TdxBarButton;
    acMovePkgsFromKilnToAfterKiln: TAction;
    dxBarButton31: TdxBarButton;
    acKilnChargeNote: TAction;
    dxBarButton32: TdxBarButton;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PRODUKT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PKTNR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1LEVKOD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1STYCK: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1STYCKPERLNGD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TILLVERKAD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KV: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1UT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1STD_Length: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AM3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NM3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AM1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1MFBM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AM2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L7: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L8: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L9: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L10: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L11: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L12: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L13: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L14: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L15: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L16: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L17: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L18: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L19: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L20: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L21: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L22: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L23: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L24: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L25: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L26: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L27: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L28: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L29: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L30: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L31: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L32: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L33: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L34: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L35: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L36: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L37: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L38: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L39: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L40: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L41: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L42: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L43: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L44: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L45: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PKT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PC: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OwnerNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Lager: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1LIPNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PIPNo: TcxGridDBBandedColumn;
    cxImageList1: TcxImageList;
    ImageList1: TImageList;
    dxBarButton33: TdxBarButton;
    acSummary: TAction;
    sq_InvCtrlList: TSQLQuery;
    dsp_InvCtrlList: TDataSetProvider;
    cds_InvCtrlList: TClientDataSet;
    cds_InvCtrlListINVENTERINGSNR: TIntegerField;
    cds_InvCtrlListINVENTERINGSDATUM: TSQLTimeStampField;
    cds_InvCtrlListSTATUS: TStringField;
    cds_InvCtrlListMAXDATUM: TSQLTimeStampField;
    cds_InvCtrlListNAMN: TStringField;
    ds_InvCtrlList: TDataSource;
    acAvregistreraMotInventering: TAction;
    dxBarButton34: TdxBarButton;
    cxStyleAktivePkg: TcxStyle;
    cxStyleINAktivePkg: TcxStyle;
    grdPkgNoTblDBBandedTableView1Status: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Status: TcxGridDBBandedColumn;
    dxComponentPrinter1Link5: TdxGridReportLink;
    cxDBLabel1: TcxDBLabel;
    mtUserPropAgentNo: TIntegerField;
    mtUserPropKilnNo: TIntegerField;
    mtUserPropTork: TStringField;
    lcFilterTork: TcxDBLookupComboBox;
    cxLabel25: TcxLabel;
    Bevel2: TBevel;
    mtUserPropTEST: TStringField;
    acShowDeActivatedPkgs: TAction;
    bbVisaAvAktiverade: TdxBarButton;
    mtPkgNosStatus: TIntegerField;
    acVardaLagret: TAction;
    dxBarButton35: TdxBarButton;
    sq_PLIP: TSQLQuery;
    dsp_PLIP: TDataSetProvider;
    cds_PLIP: TClientDataSet;
    cds_PLIPPLIP: TStringField;
    ds_PLIP: TDataSource;
    acInputOption: TAction;
    dxBarButton36: TdxBarButton;
    mtUserPropShipperNo: TIntegerField;
    cds_VerkPktNrLevKod: TStringField;
    acVardaBortPaket: TAction;
    dxBarButton37: TdxBarButton;
    acAndraPktVard: TAction;
    dxBarButton38: TdxBarButton;
    cds_PLIPInvCode: TStringField;
    acPrintPcsPerLength: TAction;
    acResetGrid: TAction;
    dxBarButton39: TdxBarButton;
    pgInventory: TcxPageControl;
    tsFakturaSpec: TcxTabSheet;
    tsInventering: TcxTabSheet;
    tsLagret: TcxTabSheet;
    Panel3: TPanel;
    Bevel1: TBevel;
    lcPIPNAME: TcxDBLookupComboBox;
    lcSR: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    ccbAT: TcxCheckComboBox;
    ccbAB: TcxCheckComboBox;
    ccbAL: TcxCheckComboBox;
    ccbTS2: TcxCheckComboBox;
    ccbKV2: TcxCheckComboBox;
    ccbSU2: TcxCheckComboBox;
    ccbIMP: TcxCheckComboBox;
    ccbBC: TcxCheckComboBox;
    ccbGS: TcxCheckComboBox;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel14: TcxLabel;
    cbLIP: TcxCheckComboBox;
    cbOwner: TcxCheckComboBox;
    eAT: TcxTextEdit;
    eAB: TcxTextEdit;
    eAL: TcxTextEdit;
    eTS: TcxTextEdit;
    eKV: TcxTextEdit;
    eSU: TcxTextEdit;
    eIMP: TcxTextEdit;
    cbShowSingleLengthPkgs: TCheckBox;
    cxLabel26: TcxLabel;
    cbInvoiceType: TcxComboBox;
    cxLabel27: TcxLabel;
    cxLabel23: TcxLabel;
    lcInventering: TcxDBLookupComboBox;
    cxLabel24: TcxLabel;
    cbInvLista: TcxComboBox;
    acSaveGridLayout: TAction;
    acLoadGridLayout: TAction;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    mInvNos: TcxMemo;
    tsLoadOrderSpec: TcxTabSheet;
    mLONos: TcxMemo;
    cxLabel28: TcxLabel;
    mtUserPropStartPeriod: TDateTimeField;
    mtUserPropEndPeriod: TDateTimeField;
    acExportToExcel: TAction;
    dxBarButton42: TdxBarButton;
    cbInklNotInvoiced: TcxCheckBox;
    cbInklEjFakt: TcxComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure acPkgCodeExecute(Sender: TObject);
    procedure acPkgNoListExecute(Sender: TObject);
    procedure acPkgSummaryExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acPackageTableExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure acCRPkgNoReportExecute(Sender: TObject);
    procedure acCRAntalPerLangdExecute(Sender: TObject);
    procedure acInvSummaryExecute(Sender: TObject);
    procedure grdPkgTblDBBandedTableView1L1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure acPrintPkgTableExecute(Sender: TObject);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acChangePkgTableLayoutExecute(Sender: TObject);
    procedure acExpandPkgTableGroupExecute(Sender: TObject);
    procedure acCollapseAllPkgTableGroupExecute(Sender: TObject);
    procedure acStyckPerLangdTabellExecute(Sender: TObject);
    procedure acPrintSummartTableExecute(Sender: TObject);
    procedure pcInventoryChange(Sender: TObject);
    procedure acChangePkgUpdate(Sender: TObject);
    procedure acRemovePkgUpdate(Sender: TObject);
    procedure cbHideZeroColumnsClick(Sender: TObject);
    procedure acExportExecute(Sender: TObject);
    procedure acPkgTypeTableExecute(Sender: TObject);
    procedure mtUserPropAfterInsert(DataSet: TDataSet);
    procedure mtUserPropOwnerNoChange(Sender: TField);
    procedure mtUserPropPIPNoChange(Sender: TField);
    procedure mtUserPropSalesRegionNoChange(Sender: TField);
    procedure grdPkgNoTblDBBandedTableView1L1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure acRegistreraPaketExecute(Sender: TObject);
    procedure acChangePackagesExecute(Sender: TObject);
    procedure acAvRegistreraPaketExecute(Sender: TObject);
    procedure acSkrivUtPkgNosExecute(Sender: TObject);
    procedure acExportPkgNosExecute(Sender: TObject);
    procedure acChangeLayoutPkgNosExecute(Sender: TObject);
    procedure acGroupByBoxExecute(Sender: TObject);
    procedure acGroupSummaryExecute(Sender: TObject);
    procedure acColAutoWidthSortimentExecute(Sender: TObject);
    procedure acPkgInfoPkgNosTableExecute(Sender: TObject);
    procedure acMovePkgsInterntExecute(Sender: TObject);
    procedure cxLabel14Click(Sender: TObject);
    procedure cxLabel15Click(Sender: TObject);
    procedure acNewTorkSatsExecute(Sender: TObject);
    procedure acTabortTorkSatsExecute(Sender: TObject);
    procedure acSaveTorkSatsExecute(Sender: TObject);
    procedure acCancelChangesTorkSatsExecute(Sender: TObject);
    procedure acGetTorkSatsExecute(Sender: TObject);
    procedure acPrintTorkSatsExecute(Sender: TObject);
    procedure acTabortTorkSatsUpdate(Sender: TObject);
    procedure acSaveTorkSatsUpdate(Sender: TObject);
    procedure acNewTorkSatsUpdate(Sender: TObject);
    procedure acCancelChangesTorkSatsUpdate(Sender: TObject);
    procedure acAddKilnRowExecute(Sender: TObject);
    procedure acRemoveKilnRowExecute(Sender: TObject);
    procedure acAddKilnRowUpdate(Sender: TObject);
    procedure acRemoveKilnPkgsExecute(Sender: TObject);
    procedure acMovePkgsFromKilnToAfterKilnUpdate(Sender: TObject);
    procedure acKilnChargeNoteExecute(Sender: TObject);
    procedure acRemoveKilnPkgsUpdate(Sender: TObject);
    procedure cxGrid1DBBandedTableView1L1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure cxGrid1DBBandedTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBBandedTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxGrid1DBBandedTableView1InitEdit(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit);
    procedure acKilnChargeNoteUpdate(Sender: TObject);
    procedure acSummaryExecute(Sender: TObject);
    procedure acRemoveKilnRowUpdate(Sender: TObject);
    procedure mtUserPropNewItemRowChange(Sender: TField);
    procedure acAvregistreraMotInventeringUpdate(Sender: TObject);
    procedure acAvregistreraMotInventeringExecute(Sender: TObject);
    procedure acRegistreraPaketUpdate(Sender: TObject);
    procedure acChangePackagesUpdate(Sender: TObject);
    procedure acAvRegistreraPaketUpdate(Sender: TObject);
    procedure acMovePkgsInterntUpdate(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure grdPkgNoTblDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cbInvListaPropertiesChange(Sender: TObject);
    procedure mtUserPropKilnNoChange(Sender: TField);
    procedure lcFilterTorkPropertiesCloseUp(Sender: TObject);
    procedure acShowDeActivatedPkgsExecute(Sender: TObject);
    procedure acSkrivUtPkgNosUpdate(Sender: TObject);
    procedure acExportPkgNosUpdate(Sender: TObject);
    procedure acVardaLagretExecute(Sender: TObject);
    procedure acVardaLagretUpdate(Sender: TObject);
    procedure cbOwnerPropertiesChange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ccbATPropertiesClickCheck(Sender: TObject;
      ItemIndex: Integer; var AllowToggle: Boolean);
    procedure eATExit(Sender: TObject);
    procedure eABExit(Sender: TObject);
    procedure eALExit(Sender: TObject);
    procedure acInputOptionExecute(Sender: TObject);
    procedure acVardaBortPaketExecute(Sender: TObject);
    procedure acVardaBortPaketUpdate(Sender: TObject);
    procedure acAndraPktVardExecute(Sender: TObject);
    procedure acPrintPcsPerLengthExecute(Sender: TObject);
    procedure eTSExit(Sender: TObject);
    procedure eKVExit(Sender: TObject);
    procedure eSUExit(Sender: TObject);
    procedure eIMPExit(Sender: TObject);
    procedure acAndraPktVardUpdate(Sender: TObject);
    procedure acResetGridExecute(Sender: TObject);
    procedure acShowDeActivatedPkgsUpdate(Sender: TObject);
    procedure pgInventoryPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure pcInventoryPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure acSaveGridLayoutExecute(Sender: TObject);
    procedure acLoadGridLayoutExecute(Sender: TObject);
    procedure mInvNosEnter(Sender: TObject);
    procedure mInvNosExit(Sender: TObject);
    procedure FormUnDock(Sender: TObject; Client: TControl;
      NewTarget: TWinControl; var Allow: Boolean);
    procedure acExportToExcelExecute(Sender: TObject);

  private
    { Private declarations }
    AT                    : String ;
    report                : IReport ;
    FilterString          : Widestring ;
    AterStallLayout       : Integer ;
    ShowDeActivatedPkgs,
    RightButton,
    ClickedF10            : Boolean ;
    CurrentNoOfPkgs,
    SelectedProductNo     : Integer ;
    SelectedLength        : String ;
    function  ControlInvDate(Sender: TObject) : Boolean ;
    Function  SelectedOwnersOK : Boolean ;
    procedure SelectedPkgsOfPkgNosTable ;
    procedure SelectedPkgsOfPkgTbl ;
    procedure FormatLengthColumns ;
    Procedure MakePkgNo_SQL(Sender : TObject) ;
    procedure MakePkgNoList (Sender: TObject);
    Procedure MakeSQL_VolByLength(Sender : TObject) ;
    procedure MakePkgByPkgCODE_SQL (Sender: TObject) ;
    function  InitiateReport(AOwner: TComponent; ReportName: String) : Boolean ;
    procedure SaveFilterSettings (Sender: TObject) ;
    procedure GenPkgNoNotInvoicedTable_SQL(Sender: TObject);
    procedure GenPkgNoTable_SQL(Sender: TObject);
    procedure GenFakturaSpecPkgNoTable_SQL(Sender: TObject);
    procedure GenPkgSumTable_SQL(Sender: TObject);
    procedure GenNotInvoicedTable_SQL(Sender: TObject);

    procedure GenInvoicePkgSpec(Sender: TObject);

    procedure GenDeActivatedPkgSumTable_SQL(Sender: TObject);

    procedure SetKolumnNameAndHideNonUsedKolumns(Sender: TObject);
    procedure SetKolumnNameAndHideNonUsedKolumnsInPkgNoTable (Sender: TObject);
    procedure MakeInvSum(Sender: TObject);
    procedure BuildSQLPcsPerLength(Sender: TObject);
    procedure SetComponents ;
    procedure RemovePackageFrom_grdPkgTbl(Sender: TObject);
    procedure GenPkgNosDetailTable_SQL(Sender: TObject);
    procedure GetPkgNo(Sender: TObject);
    procedure ExportPkgNoTables(Sender: TObject);
    function  ExportToHTML(const pFilNamn : String;grd: TcxGrid) : String ;
    procedure ExportPkgTables(Sender: TObject);
    procedure SetCheckComboBoxes ;
    Function  GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
    Function  CheckIfAnyCheckedItemsInComboFilter(combo : TcxCheckComboBox) : Boolean ;

    Function  ComboBoxFilterChecked(const Kolumn : String;combo : TcxCheckComboBox) : Boolean ;
    Function  GetComboFilterText(const Kolumn : String;combo : TcxCheckComboBox) : String ;
    procedure ClearProductFilter ;
    function  KilnDataSaved : Boolean ;

    procedure AddRowPerSortiment(Sender: TObject);
    procedure AddRowPerPaketNr(Sender: TObject);
    procedure VardaPerSortiment(Sender: TObject);
    procedure OpenStandardMall(Sender: TObject);
    procedure GenLoadOrderPkgSpec(Sender: TObject);
    procedure GenLoadOrderSpecPkgNoTable_SQL(Sender: TObject);
  public
    { Public declarations }
    Procedure CreateCo(Sender: TObject;CompanyNo: Integer);
  end;

var
  frmInventoryReport: TfrmInventoryReport;

implementation

uses VidaType, dmsDataConn, VidaUser, dm_Inventory, dmsVidaContact, VidaConst,
  dmcVidaSystem , uGridSetting, UnitPkgInfo, //dmcPkgs,
  uPkgLog, uSinglePkgEntry, dmc_UserProps, dmsVidaSystem, UnitPkgEntry,
  dmsVidaPkg, UfelRegPkg, UnitRemovePkg, UnitMovePkgs, uSendMapiMail ,
  dmc_DryKiln, uEntryField, uKilnCharges, uKilnChargeNote, uKilnWizard,
  uVardaBortPkt, uchgPkgVard, uSokAvropMall;

{$R *.dfm}

function TfrmInventoryReport.KilnDataSaved : Boolean ;
begin
 Result:= True ;
 With dm_DryKiln do
 Begin
  if (cds_KilnChargeHdr.Active) and (cds_KilnChargeRow.Active) then
  Begin
   if cds_KilnChargeHdr.State in [dsEdit, dsInsert] then
    Result:= False ;
   if cds_KilnChargeHdr.ChangeCount > 0 then
    Result:= False ;

   if cds_KilnChargeRow.State in [dsEdit, dsInsert] then
    Result:= False ;
   if cds_KilnChargeRow.ChangeCount > 0 then
    Result:= False ;
  End ;
 End ;
end;

procedure TfrmInventoryReport.ClearProductFilter ;
Begin
 cbShowSingleLengthPkgs.Checked:= False ;

 eAT.Text := '' ;
 eAB.Text := '' ;
 eAL.Text := '' ;
 eTS.Text := '' ;
 eKV.Text := '' ;
 eSU.Text := '' ;
 eIMP.Text:= '' ;

 ccbAB.Clear ;
 ccbAT.Clear ;
 ccbAL.Clear ;
 ccbTS2.Clear ;
 ccbKV2.Clear ;
 ccbSU2.Clear ;
 ccbIMP.Clear ;
 ccbBC.Clear ;
 ccbGS.Clear ;
End ;

procedure TfrmInventoryReport.SetCheckComboBoxes ;
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

  ccbKV2.Properties.Items.Clear ;
  sq_Grade.Active:= True ;
  While not sq_Grade.Eof do
  Begin
   ccbKV2.Properties.Items.AddCheckItem(sq_Grade.FieldByName('gradeName').AsString, sq_Grade.FieldByName('gradecode').AsString) ;
   sq_Grade.Next ;
  End ;
  sq_Grade.Active:= False ;

  ccbSU2.Properties.Items.Clear ;
  sq_Surfacing.Open ;
  While not sq_Surfacing.Eof do
  Begin
   ccbSU2.Properties.Items.AddCheckItem(sq_Surfacing.FieldByName('SurfacingName').AsString, sq_Surfacing.FieldByName('SurfacingCode').AsString) ;
   sq_Surfacing.Next ;
  End ;
  sq_Surfacing.Close ;

  ccbIMP.Properties.Items.Clear ;
  sq_PC.Open ;
  While not sq_PC.Eof do
  Begin
   ccbIMP.Properties.Items.AddCheckItem(sq_PC.FieldByName('ProductCategoryName').AsString, sq_PC.FieldByName('ImpCode').AsString) ;
   sq_PC.Next ;
  End ;
  sq_PC.Close ;

  sq_BarCode.Open ;
  While not sq_BarCode.Eof do
  Begin
   ccbBC.Properties.Items.AddCheckItem(sq_BarCode.FieldByName('BarCode').AsString, sq_BarCode.FieldByName('BarCodeID').AsString) ;
   sq_BarCode.Next ;
  End ;
  sq_BarCode.Close ;

  sq_GradeStamp.Open ;
  While not sq_GradeStamp.Eof do
  Begin
   ccbGS.Properties.Items.AddCheckItem(sq_GradeStamp.FieldByName('GradeStamp').AsString, sq_GradeStamp.FieldByName('GradeStampID').AsString) ;
   sq_GradeStamp.Next ;
  End ;
  sq_GradeStamp.Close ;

  sq_AT.Open ;
  While not sq_AT.Eof do
  Begin
   ccbAT.Properties.Items.AddCheckItem(sq_AT.FieldByName('AT').AsString, sq_AT.FieldByName('AT').AsString) ;
   sq_AT.Next ;
  End ;
  sq_AT.Close ;

  sq_AB.Open ;
  While not sq_AB.Eof do
  Begin
   ccbAB.Properties.Items.AddCheckItem(sq_AB.FieldByName('AB').AsString, sq_AB.FieldByName('AB').AsString) ;
   sq_AB.Next ;
  End ;
  sq_AB.Close ;

  sq_AL.Open ;
  While not sq_AL.Eof do
  Begin
   ccbAL.Properties.Items.AddCheckItem(sq_AL.FieldByName('AL').AsString, sq_AL.FieldByName('AL').AsString) ;
   sq_AL.Next ;
  End ;
  sq_AL.Close ;

 End ;//With
End ;

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

Procedure TfrmInventoryReport.CreateCo(Sender: TObject;CompanyNo: Integer);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  ShowDeActivatedPkgs:= False ;
  SetCheckComboBoxes ;
  dmInventory.cds_PkgList.Active:= True ;
  dm_UserProps.LoadUserProps (Self.Name, mtuserprop) ;
  if mtUserPropRunNo.AsInteger <> 1 then
  Begin
//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+cxGrid1.Name, cxGrid1DBBandedTableView1) ;
   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdPkgNoTbl.Name, grdPkgNoTblDBBandedTableView1) ;

  End ;
  AterStallLayout:= mtUserPropRunNo.AsInteger ;
  mtUserProp.Edit ;
  mtUserPropNewItemRow.AsInteger  := -1 ;
  mtUserPropRunNo.AsInteger       := 0 ;
  mtUserProp.Post ;

  cds_InvCtrlList.Active:= False ;
  sq_InvCtrlList.ParamByName('VerkNo').AsInteger:= ThisUser.CompanyNo ;
  cds_InvCtrlList.Active:= True ;

  if mtUserPropRoleType.AsInteger = cInternal_Mill then
  Begin
   lcSR.Enabled     := False ;
//   lcOWNER.Enabled  := False ;
//   lcPIPNAME.Enabled:= True ;
  End ;

  if mtUserPropRoleType.AsInteger = cLego then
  Begin
   lcSR.Enabled     := False ;
//   lcOWNER.Enabled  := False ;
//   lcPIPNAME.Enabled:= False ;
  End ;  

  if mtUserPropShipperNo.AsInteger = 1 then
  Begin
   ccbAT.Visible  := True ;
   ccbAB.Visible  := True ;
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
   acInputOption.Checked:= False ;
  End
  else
  Begin
   eAT.Visible    := True ;
   eAB.Visible    := True ;
   eAL.Visible    := True ;
//   eKV.Visible    := True ;
//   eTS.Visible    := True ;
//   eSU.Visible    := True ;
//   eIMP.Visible   := True ;

   ccbAT.Visible  := False ;
   ccbAB.Visible  := False ;
   ccbAL.Visible  := False ;
//   ccbTS2.Visible := False ;
//   ccbKV2.Visible := False ;
//   ccbSU2.Visible := False ;
//   ccbIMP.Visible := False ;

   acInputOption.Checked:= True ;
  End ;


  if mtUserPropAutoColWidth.AsInteger = 0 then
  Begin
   acColAutoWidthSortiment.Checked:= False ;
   cxGrid1DBBandedTableView1.OptionsView.ColumnAutoWidth:= False ;
  End
   else
   Begin
    acColAutoWidthSortiment.Checked:= True ;
    cxGrid1DBBandedTableView1.OptionsView.ColumnAutoWidth:= True ;
   End ;


  if mtUserPropGroupSummary.AsInteger = 0 then
  Begin
   acGroupSummary.Checked:= False ;
   cxGrid1DBBandedTableView1.OptionsView.GroupFooters:= gfInvisible ;
  End
   else
   Begin
    acGroupSummary.Checked:= False ;
    cxGrid1DBBandedTableView1.OptionsView.GroupFooters:= gfAlwaysVisible ;
   End ;

  if mtUserPropGroupByBox.AsInteger = 0 then
  Begin
   acGroupByBox.Checked:= False ;
   cxGrid1DBBandedTableView1.OptionsView.GroupByBox:= False ;
  End
   else
   Begin
    acGroupByBox.Checked:= True ;
    cxGrid1DBBandedTableView1.OptionsView.GroupByBox:= True ;
   End ;

  acSummary.Checked:= cxGrid1DBBandedTableView1.OptionsView.Footer ;

 if (ThisUser.UserID = 85) or (ThisUser.UserID = 5) or (ThisUser.UserID = 8) then
 Begin
  bbVisaAvAktiverade.Visible:= ivAlways ;
 End
 else
 bbVisaAvAktiverade.Visible:= ivNever ;

 With dm_DryKiln do
 Begin
  cds_Kilns.Active          := False ;
  sq_Kilns.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
  cds_Kilns.Active          := True ;

  cds_KilnChargeHdr.Active  := False ;
  sq_KilnChargeHdr.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
  cds_KilnChargeHdr.Active  := True ;

  cds_KilnChargeHdr.Locate('KilnChargeNo', mtUserPropAgentNo.AsInteger, []) ;


  //  Get_LastKilnChNo ;

//  cds_KilnChargeRow.Active  := False ;
//  sq_KilnChargeRows.ParamByName('KilnChargeNo').AsInteger:= cds_KilnChargeHdrKilnChargeNo.AsInteger ;
  cds_KilnChargeRow.Active  := False ;
  cds_KilnChargeRow.Active  := True ;

  cds_SumKilnChargeRows.Active  := False ;
  cds_SumKilnChargeRows.Active  := True ;

  cds_KilnProps.Active:= False ;
  sq_KilnProps.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
  cds_KilnProps.Active:= True ;

  cds_KilnChargeHdr.Filter   := 'Status = 0' ;
  cds_KilnChargeHdr.Filtered:= True ;

 End ;

 OpenStandardMall(Sender) ;
//  HtmlExportPath := GetUserExportDir(0, ThisUser.UserID, Self.Name) ;

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

function TfrmInventoryReport.InitiateReport(AOwner: TComponent; ReportName: String) : Boolean ;
  var HostName, Database, UserName, Password, spath: String ;
begin
 dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath) ;
 Result:= True ;
 if not(FileExists(sPath+ReportName)) then
 Begin
  ShowMessage('Saknar crystal reports fil.  Sökväg och filnamn : '+sPath+ReportName) ;
  Result:= False ;
  Exit ;
 End ;

 report := Application1.OpenReport(sPath+ReportName, crOpenReportByTempCopy) ;
 report.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);
 Caption:= sPath+ReportName ;
End;

procedure TfrmInventoryReport.MakePkgNo_SQL(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

  sq_Temp_Inventory.SQL.Add('DELETE dbo.Inv_By_Pkg') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('Spec_UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;

  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.Inv_By_Pkg') ;
  sq_Temp_Inventory.SQL.Add('(Spec_UserID,') ;
  sq_Temp_Inventory.SQL.Add('Spec_URI,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_PhyInvPointNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_PhyInvPointName,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_LogicalInvName,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_OwnerNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_OwnerCode,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ProductNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ProductDisplayName,') ;

  sq_Temp_Inventory.SQL.Add('SPEC_PackageTypeNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_PackageNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_SupplierCode,') ;

  sq_Temp_Inventory.SQL.Add('SPEC_ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ActualWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_NominalThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_NominalWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_TotalNoOfPieces,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_FreeForm,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_1800,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_2100,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_2400,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_2700,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3000,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3300,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3600,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3900,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_4200,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_4500,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_4800,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_5100,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_5400,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_5700,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_6000,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ActualM3,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_NominalM3,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_LinealMeter,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_MFBMNominal,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_SQMofActualWidth,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_CreatedDate)') ;

  sq_Temp_Inventory.SQL.Add('Select distinct ') ;


  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add('PTL.STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('pip.PhyInvPointNameNo,') ;
  sq_Temp_Inventory.SQL.Add('Cy.CityName,') ;
  sq_Temp_Inventory.SQL.Add('LIP.LogicalInventoryName,') ;
  sq_Temp_Inventory.SQL.Add('pip.OwnerNo,') ;
  sq_Temp_Inventory.SQL.Add('Verk.ClientCode,') ;
  sq_Temp_Inventory.SQL.Add('pd.ProductNo,') ;
  sq_Temp_Inventory.SQL.Add('pd.ProductDisplayName,') ;
  sq_Temp_Inventory.SQL.Add('pt.PackageTypeNo,') ;
  sq_Temp_Inventory.SQL.Add('pn.PackageNo,') ;
  sq_Temp_Inventory.SQL.Add('pn.SupplierCode,') ;

  sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.NominalThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.NominalWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('pt.TotalNoOfPieces,') ;
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
  sq_Temp_Inventory.SQL.Add('pn.DateCreated') ;


  sq_Temp_Inventory.SQL.Add('FROM  Client Verk') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;

  sq_Temp_Inventory.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.packageTypeLengths PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SUR.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('				AND Gr.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_Temp_Inventory.SQL.Add('				AND imp.LanguageCode = 1') ;



  sq_Temp_Inventory.SQL.Add('Inner Join dbo.City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;

  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.Client cl ON cl.ClientNo = pip.OwnerNo') ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  sq_Temp_Inventory.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  sq_Temp_Inventory.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;


//  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
//  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;

  sq_Temp_Inventory.SQL.Add('WHERE pn.Status = 1') ;
  sq_Temp_Inventory.SQL.Add('AND PIP.SequenceNo = 1 AND LIP.SequenceNo = 1') ;


  if mtUserPropSalesRegionNo.AsInteger <> -1 then
  sq_Temp_Inventory.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

//  if mtUserPropPIPNo.AsInteger > 0 then  sq_Temp_Inventory.SQL.Add('AND pip.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then sq_Temp_Inventory.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;

  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

//  if mtUserPropOwnerNo.AsInteger > 0 then
//  sq_Temp_Inventory.SQL.Add('AND Verk.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  if cbShowSingleLengthPkgs.Checked then
    sq_Temp_Inventory.SQL.Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

//  if ccAvgLengthRegPkt.Checked then   sq_Temp_Inventory.SQL.Add('and pn.AvgLengthType > 1') ;

  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

//  if thisuser.UserID = 8 then  sq_Temp_Inventory.SQL.SaveToFile('sq_Inv_By_PkgNo.txt');
  sq_Temp_Inventory.ExecSQL(False) ;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.MakeSQL_VolByLength (Sender: TObject);
Var Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

  sq_Temp_Inventory.SQL.Add('DELETE dbo.Inv_By_Length') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;


  sq_Temp_Inventory.SQL.Clear ;
  sq_Temp_Inventory.SQL.Add('DELETE dbo.Inv_By_LengthFilter') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;

  sq_Temp_Inventory.SQL.Clear ;
  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.Inv_By_LengthFilter (Userid, Filter)') ;
  sq_Temp_Inventory.SQL.Add('Values ('+IntToStr(Thisuser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr(FilterString)+')') ;
//  if thisuser.UserID = 8 then    sq_Temp_Inventory.SQL.SaveToFile('Inv_By_LengthFilter.txt');
  sq_Temp_Inventory.ExecSQL(True) ;


  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.Inv_By_Length') ;
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
  sq_Temp_Inventory.SQL.Add('KVM)') ;

  sq_Temp_Inventory.SQL.Add('Select distinct ') ;


  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;

  sq_Temp_Inventory.SQL.Add('0,') ;

  sq_Temp_Inventory.SQL.Add('pdl.ActualLengthMM,') ;
  sq_Temp_Inventory.SQL.Add('pdl.ActualLengthMM,') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr('0')+',') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr('0')+',') ;

  sq_Temp_Inventory.SQL.Add('SUM(ptd.NoOfPieces),') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.m3Actual) ,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.m3Nominal),') ;

  sq_Temp_Inventory.SQL.Add('SUM(ptd.LinealMeterActualLength),') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.MFBMNominal),') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.SQMofActualWidth)') ;

  sq_Temp_Inventory.SQL.Add('FROM  dbo.Client Verk') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;

  sq_Temp_Inventory.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.productLength PDL ON PDL.ProductLengthNo = ptd.ProductLengthNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_Temp_Inventory.SQL.Add('				AND imp.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SUR.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('				AND Gr.LanguageCode = 1') ;


  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  sq_Temp_Inventory.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  sq_Temp_Inventory.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;

{  if mt_GradeStamp.RecordCount > 0 then
  sq_Temp_Inventory.SQL.Add('Inner JOIN GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if mt_BarCode.RecordCount > 0 then
  sq_Temp_Inventory.SQL.Add('Inner JOIN BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ; }



  sq_Temp_Inventory.SQL.Add('WHERE pn.Status = 1 AND LIP.SequenceNo = 1') ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
  sq_Temp_Inventory.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

//  if mtUserPropPIPNo.AsInteger > 0 then  sq_Temp_Inventory.SQL.Add('AND pip.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then  sq_Temp_Inventory.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;

//  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'LIP.LogicalInventoryPointNo', cbLIP)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;


//  if mtUserPropOwnerNo.AsInteger > 0 then
//  sq_Temp_Inventory.SQL.Add('AND Verk.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;


  if cbShowSingleLengthPkgs.Checked then
    sq_Temp_Inventory.SQL.Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

//  if ccAvgLengthRegPkt.Checked then   sq_Temp_Inventory.SQL.Add('and pn.AvgLengthType > 1') ;

  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'PDL.ActualLengthMM', ccbAL)) ;

   sq_Temp_Inventory.SQL.Add('group by pdl.ActualLengthMM') ;
   sq_Temp_Inventory.SQL.Add('Order by pdl.ActualLengthMM') ;

//  if ThisUser.UserID = 8 then  sq_Temp_Inventory.SQL.SaveToFile('sq_Inv_By_Length.txt');
  sq_Temp_Inventory.ExecSQL(False) ;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree ;
end;

procedure TfrmInventoryReport.FormCreate(Sender: TObject);
begin
 if not Assigned(dmInventory) then
  dmInventory:= TdmInventory.Create(Nil);
 if not Assigned(dm_DryKiln) then
  dm_DryKiln:= Tdm_DryKiln.Create(Nil);

//LARS Kolla upp det här peLengthFormat.ItemIndex:= 0 ;
// OLD_peLengthFormat:= peLengthFormat.ItemIndex ;


  if ThisUser.UserID <> 8 then
   Begin
    Button2.Visible:= False ;
    Button1.Visible:= False ;
   End ;

 With dmInventory do
 Begin
  mtRemovedPkg.Active   := True ;
 End ;


end;

procedure TfrmInventoryReport.FormDestroy(Sender: TObject);
begin
 if Assigned(dmInventory) then
 FreeAndNil(dmInventory);

 if Assigned(dm_DryKiln) then
 FreeAndNil(dm_DryKiln);

 Report:= Nil ;
 Application1:= Nil ;
 frmInventoryReport:= NIL ;
end;

procedure TfrmInventoryReport.MakePkgByPkgCODE_SQL (Sender: TObject) ;
Var Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 With dmInventory do
 Begin
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

  sq_Temp_Inventory.SQL.Add('DELETE dbo.INV_BY_PKGTYPE') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;

  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.INV_BY_PKGTYPE') ;
  sq_Temp_Inventory.SQL.Add('(UserID,') ;

  sq_Temp_Inventory.SQL.Add('INVENTORY,') ;
  sq_Temp_Inventory.SQL.Add('SUPPCODE,') ;
  sq_Temp_Inventory.SQL.Add('INTERN_CODE,') ;
  sq_Temp_Inventory.SQL.Add('EXTERN_CODE,') ;
  sq_Temp_Inventory.SQL.Add('PRODUCT,') ;
  sq_Temp_Inventory.SQL.Add('NOOFPKGS,') ;
  sq_Temp_Inventory.SQL.Add('PCSPERPKG,') ;

  sq_Temp_Inventory.SQL.Add('GRADESTAMP,') ;
  sq_Temp_Inventory.SQL.Add('BARCODE,') ;
  sq_Temp_Inventory.SQL.Add('SPECIES,') ;

  sq_Temp_Inventory.SQL.Add('SURFACING,') ;
  sq_Temp_Inventory.SQL.Add('GRADE,') ;
  sq_Temp_Inventory.SQL.Add('PCSPERLENGTH,') ;
  sq_Temp_Inventory.SQL.Add('SLENGTH,') ;
  sq_Temp_Inventory.SQL.Add('TOT_PCS,') ;
  sq_Temp_Inventory.SQL.Add('TOT_AM3,') ;
  sq_Temp_Inventory.SQL.Add('TOT_NM3,') ;
  sq_Temp_Inventory.SQL.Add('TOT_ALPM,') ;
  sq_Temp_Inventory.SQL.Add('TOT_MFBM,') ;
  sq_Temp_Inventory.SQL.Add('TOT_KVM,') ;
  sq_Temp_Inventory.SQL.Add('ATHICK,') ;
  sq_Temp_Inventory.SQL.Add('AWIDTH,') ;
  sq_Temp_Inventory.SQL.Add('ALENGTH,') ;
  sq_Temp_Inventory.SQL.Add('PACKAGETYPENO,') ;
  sq_Temp_Inventory.SQL.Add('STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('PRODUCTLENGTHNO,') ;
  sq_Temp_Inventory.SQL.Add('PCS_PER_LENGTH)') ;

  sq_Temp_Inventory.SQL.Add('Select distinct ') ;

  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add('CASE WHEN RTRIM(LIP.LogicalInventoryName) = RTRIM(Cy.CityName) THEN Cy.CityName ') ;
  sq_Temp_Inventory.SQL.Add('ELSE RTRIM(Cy.CityName)  +'+QuotedStr(' / ')+'+ RTRIM(LIP.LogicalInventoryName) END AS INVENTORY,') ;
  sq_Temp_Inventory.SQL.Add('pn.SupplierCode,') ;
  sq_Temp_Inventory.SQL.Add('PC.PackageCodeNo,') ; //InternCode
//  sq_Temp_Inventory.SQL.Add('(Select TOP 1 PC.PackageCodeNo FROM dbo.PkgVarCode PC WHERE PC.PackageTypeNo = pt.PackageTypeNo) AS PackageCodeNo,') ;
  sq_Temp_Inventory.SQL.Add('PC.PackageMainCode,') ;//Externcode
//  sq_Temp_Inventory.SQL.Add('(Select TOP 1 PC.PackageMainCode FROM dbo.PkgVarCode PC WHERE PC.PackageTypeNo = pt.PackageTypeNo) AS PackageMainCode,') ;
  sq_Temp_Inventory.SQL.Add('pd.ProductDisplayName,') ;


  //sq_Temp_Inventory.SQL.Add('(Select count(*) from dbo.PackageNumber pn2 WHERE pn2.PackageTypeNo = pt.PackageTypeNo AND pn2.SupplierCode ') ;
//  sq_Temp_Inventory.SQL.Add('= pn.SupplierCode AND pn2.LogicalInventoryPointNo = lip.LogicalInventoryPointNo AND pn2.Status = 1) AS NOOFPKGS,') ;
{  sq_Temp_Inventory.SQL.Add('(Select count(*) from dbo.PackageNumber pn2') ;
  sq_Temp_Inventory.SQL.Add('INNER JOIN dbo.PkgTypePPNo ptp2 ON ptp2.PackageTypeNo = pn2.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('ptp2.PkgCodePPNo = ptp.PkgCodePPNo') ;
  sq_Temp_Inventory.SQL.Add('AND pn2.SupplierCode = pn.SupplierCode') ;
  sq_Temp_Inventory.SQL.Add('AND pn2.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
  sq_Temp_Inventory.SQL.Add('AND pn2.Status = 1) AS NOOFPKGS, ') ; }

  sq_Temp_Inventory.SQL.Add('count(pn.PackageNo)  AS NOOFPKGS2,') ;


  sq_Temp_Inventory.SQL.Add('pt.TotalNoOfPieces AS PCSPERPKG,') ;
  sq_Temp_Inventory.SQL.Add('gs.GradeStamp,') ;
  sq_Temp_Inventory.SQL.Add('bc.BarCode,') ;
  sq_Temp_Inventory.SQL.Add('SPE.SpeciesName, ') ;
  sq_Temp_Inventory.SQL.Add('SUR.SurfacingName, ') ;
  sq_Temp_Inventory.SQL.Add('Gr.GradeName,') ;
  sq_Temp_Inventory.SQL.Add('PTL.PcsPerLength,') ;

  sq_Temp_Inventory.SQL.Add('CASE WHEN 0 = 0 THEN RTRIM(CONVERT(varchar(10), pdl.ActualLengthMM)) +'+QuotedStr(' Amm')) ;
  sq_Temp_Inventory.SQL.Add(' WHEN '+IntToStr(mtUserPropLengthFormatNo.AsInteger) +' = 1 THEN RTRIM(CONVERT(varchar(10), pdl.NominalLengthMM)) +'+QuotedStr(' Nmm')) ;
  sq_Temp_Inventory.SQL.Add(' WHEN '+IntToStr(mtUserPropLengthFormatNo.AsInteger) +' = 2 THEN ') ;
  sq_Temp_Inventory.SQL.Add(' CASE WHEN RTRIM( pdl.ActualLengthINCH) > '+QuotedStr(' ')+' THEN ') ;
  sq_Temp_Inventory.SQL.Add('   RTRIM(CONVERT(varchar(10), pdl.ActualLengthINCH))+'+QuotedStr(' inch')) ;
  sq_Temp_Inventory.SQL.Add('  ELSE ') ;
  sq_Temp_Inventory.SQL.Add('  CASE WHEN pdl.NominalLengthFEET > 0 THEN ') ;
  sq_Temp_Inventory.SQL.Add('  RTRIM(CONVERT(varchar(10), pdl.NominalLengthFEET)) +'+QuotedStr('  feet')) ;
  sq_Temp_Inventory.SQL.Add('  ELSE ') ;
  sq_Temp_Inventory.SQL.Add(' RTRIM(CONVERT(varchar(10), pdl.ActualLengthMM))+'+QuotedStr(' Amm')+'  END') ;
  sq_Temp_Inventory.SQL.Add('  END ') ;

  sq_Temp_Inventory.SQL.Add('  END AS SLENGTH, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.NoOfPieces) AS TOT_PCS, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.m3Actual)  AS TOT_AM3, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.m3Nominal) AS TOT_NM3, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.LinealMeterActualLength) AS TOT_ALPM, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.MFBMNominal) AS TOT_MFBM, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.SQMofActualWidth) AS TOT_KVM, ') ;


  sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('pdl.ActualLengthMM,') ;
  sq_Temp_Inventory.SQL.Add('pps.PackageTypeNo AS PackageTypeNo,') ;
  sq_Temp_Inventory.SQL.Add('PTL.STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('PDL.ProductLengthNo,') ;
  sq_Temp_Inventory.SQL.Add('ptd.NoOfPieces') ;


  sq_Temp_Inventory.SQL.Add('FROM  dbo.Client Verk') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;
  sq_Temp_Inventory.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;

//  sq_Temp_Inventory.SQL.Add('INNER JOIN dbo.PkgTypePPNo ptp ON ptp.PackageTypeNo = pn.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Left Outer JOIN dbo.Packagecode_printparams	PPs ON pps.PkgCodePPNo = pt.ShrinkWrap') ;
  sq_Temp_Inventory.SQL.Add('Left Outer Join dbo.PkgVarCode PC ON PC.PkgCodePPNo = pps.PkgCodePPNo') ;

//  sq_Temp_Inventory.SQL.Add('INNER JOIN dbo.Packagecode_printparams	PPs ON pps.PkgCodePPNo = ptp.PkgCodePPNo') ;
//  sq_Temp_Inventory.SQL.Add('Left Outer Join dbo.PkgVarCode PC ON PC.PackageTypeNo = pps.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.packageTypeLengths PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.productLength PDL ON PDL.ProductLengthNo = ptd.ProductLengthNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SUR.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('				AND Gr.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_Temp_Inventory.SQL.Add('				AND imp.LanguageCode = 1') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;

  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.Client cl ON cl.ClientNo = pip.OwnerNo') ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
   sq_Temp_Inventory.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp')
    else
     sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;

  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
   sq_Temp_Inventory.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID')
    else
     sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;


  sq_Temp_Inventory.SQL.Add('WHERE pn.Status = 1') ;
  sq_Temp_Inventory.SQL.Add('AND PIP.SequenceNo = 1 AND LIP.SequenceNo = 1') ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
  sq_Temp_Inventory.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

//  if mtUserPropPIPNo.AsInteger > 0 then  sq_Temp_Inventory.SQL.Add('AND pip.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then  sq_Temp_Inventory.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;
//  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'LIP.LogicalInventoryPointNo', cbLIP)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;


//  if mtUserPropOwnerNo.AsInteger > 0 then
//  sq_Temp_Inventory.SQL.Add('AND Verk.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;

  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'PDL.ActualLengthMM', ccbAL)) ;


  sq_Temp_Inventory.SQL.Add('GROUP BY PTL.STD_Length, PTL.PcsPerLength,  ') ;
  sq_Temp_Inventory.SQL.Add('PDL.ProductLengthNo, pd.ProductDisplayName, pg.ActualThicknessMM, pg.ActualWidthMM, ') ;
  sq_Temp_Inventory.SQL.Add('pdl.ActualLengthMM, pdl.NominalLengthMM, pdl.NominalLengthFEET, pdl.ActualLengthINCH,  ') ;
  sq_Temp_Inventory.SQL.Add('lip.LogicalInventoryPointNo, pt.TotalNoOfPieces, pn.SupplierCode, ') ;
  sq_Temp_Inventory.SQL.Add('gs.GradeStamp, bc.BarCode, SPE.SpeciesName, SUR.SurfacingName, Gr.GradeName, ') ;
  sq_Temp_Inventory.SQL.Add('Cy.CityName, LIP.LogicalInventoryName, ptd.NoOfPieces, PC.PackageCodeNo, PC.PackageMainCode, pps.PackageTypeNo ') ;
//  if ThisUser.UserID = 8 then sq_Temp_Inventory.SQL.SaveToFile('sq_INV_BY_PKGTYPE.txt');
  sq_Temp_Inventory.ExecSQL(False) ;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.MakePkgNoList (Sender: TObject);
Var Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

  sq_Temp_Inventory.SQL.Add('DELETE dbo.Inv_By_Pkg') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('Spec_UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;

  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.Inv_By_Pkg') ;
  sq_Temp_Inventory.SQL.Add('(Spec_UserID,') ;
  sq_Temp_Inventory.SQL.Add('Spec_URI,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_PhyInvPointNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_PhyInvPointName,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_LogicalInvName,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_OwnerNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_OwnerCode,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ProductNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ProductDisplayName,') ;

  sq_Temp_Inventory.SQL.Add('SPEC_PackageTypeNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_PackageNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_SupplierCode,') ;

  sq_Temp_Inventory.SQL.Add('SPEC_ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ActualWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_NominalThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_NominalWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_TotalNoOfPieces,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_FreeForm,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_1800,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_2100,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_2400,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_2700,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3000,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3300,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3600,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3900,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_4200,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_4500,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_4800,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_5100,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_5400,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_5700,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_6000,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ActualM3,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_NominalM3,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_LinealMeter,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_MFBMNominal,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_SQMofActualWidth,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_CreatedDate,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_IntGrade,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_Species,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_SurfacingName)') ;

  sq_Temp_Inventory.SQL.Add('Select distinct ') ;


  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add('PTL.STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('pip.PhyInvPointNameNo,') ;
  sq_Temp_Inventory.SQL.Add('Cy.CityName,') ;
  sq_Temp_Inventory.SQL.Add('LIP.LogicalInventoryName,') ;
  sq_Temp_Inventory.SQL.Add('pip.OwnerNo,') ;
  sq_Temp_Inventory.SQL.Add('Verk.ClientCode,') ;
  sq_Temp_Inventory.SQL.Add('pd.ProductNo,') ;
  sq_Temp_Inventory.SQL.Add('pd.ProductDisplayName,') ;
  sq_Temp_Inventory.SQL.Add('pt.PackageTypeNo,') ;
  sq_Temp_Inventory.SQL.Add('pn.PackageNo,') ;
  sq_Temp_Inventory.SQL.Add('pn.SupplierCode,') ;

  sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.NominalThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.NominalWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('pt.TotalNoOfPieces,') ;
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
  sq_Temp_Inventory.SQL.Add('pn.DateCreated,') ;
  sq_Temp_Inventory.SQL.Add('GR.GradeName AS MainGradeName,') ;
  sq_Temp_Inventory.SQL.Add('SPE.SpeciesName,') ;
  sq_Temp_Inventory.SQL.Add('SUR.SurfacingName') ;

  sq_Temp_Inventory.SQL.Add('FROM  dbo.Client Verk') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;

  sq_Temp_Inventory.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.packageTypeLengths PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SUR.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('				AND Gr.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_Temp_Inventory.SQL.Add('				AND imp.LanguageCode = 1') ;

  sq_Temp_Inventory.SQL.Add('Inner Join City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;

  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.Client cl ON cl.ClientNo = pip.OwnerNo') ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  sq_Temp_Inventory.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  sq_Temp_Inventory.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;




  sq_Temp_Inventory.SQL.Add('WHERE pn.Status = 1') ;
  sq_Temp_Inventory.SQL.Add('AND PIP.SequenceNo = 1 AND LIP.SequenceNo = 1') ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
  sq_Temp_Inventory.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

//  if mtUserPropPIPNo.AsInteger > 0 then  sq_Temp_Inventory.SQL.Add('AND pip.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then  sq_Temp_Inventory.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;

//  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'LIP.LogicalInventoryPointNo', cbLIP)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;


//  if mtUserPropOwnerNo.AsInteger > 0 then
//  sq_Temp_Inventory.SQL.Add('AND Verk.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  if cbShowSingleLengthPkgs.Checked then
    sq_Temp_Inventory.SQL.Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

//  if ccAvgLengthRegPkt.Checked then   sq_Temp_Inventory.SQL.Add('and pn.AvgLengthType > 1') ;

  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

//  if thisuser.UserID = 8 then  sq_Temp_Inventory.SQL.SaveToFile('sq_Temp_Inventory.txt');
  sq_Temp_Inventory.ExecSQL(False) ;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;

end;

procedure TfrmInventoryReport.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmInventoryReport.SaveFilterSettings (Sender: TObject) ;
begin
 With dmInventory do
 Begin

//  FilterString:= '[Lagerställe: '+lcPIPNAME.Text ;
//  FilterString:= FilterString +' Grupp:'+ lcLIPName.Text + ']' ;


  FilterString:= FilterString + GetComboFilterText(' [AT: ', ccbAT) ;
  FilterString:= FilterString + GetComboFilterText(' AB: ', ccbAB) ;
  FilterString:= FilterString + GetComboFilterText(' AL: ', ccbAL) ;
  FilterString:= FilterString + GetComboFilterText(' TS: ', ccbTS2) ;
  FilterString:= FilterString + GetComboFilterText(' UT: ', ccbSU2) ;
  FilterString:= FilterString + GetComboFilterText(' KV: ', ccbKV2) ;
  FilterString:= FilterString + GetComboFilterText(' IMP: ', ccbIMP) ;
  FilterString:= FilterString + GetComboFilterText(' Stamp: ', ccbGS) ;
  FilterString:= FilterString + GetComboFilterText(' Streckkod: ', ccbBC) ;

  if cbShowSingleLengthPkgs.Checked then
   FilterString := FilterString + ' Endast LP paket ' ;

//  if ccAvgLengthRegPkt.Checked then   FilterString := FilterString + ' Endast ML-Reg.paket ' ;

  FilterString:= Copy(FilterString, 1, 255) ;

 End ; //with
End ;

procedure TfrmInventoryReport.acPkgCodeExecute(Sender: TObject);
begin
 pcInventory.ActivePage:= tsReport ;
 MakePkgByPkgCODE_SQL(Sender) ;
 if not InitiateReport(Self, 'INV_BY_PKG_CODE.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
end;

procedure TfrmInventoryReport.acPkgNoListExecute(Sender: TObject);
begin
 pcInventory.ActivePage:= tsReport ;
 MakePkgNoList (Sender) ;

 if not InitiateReport(Self, 'PKGNOLIST_I.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
end;

procedure TfrmInventoryReport.acPkgSummaryExecute(Sender: TObject);
begin
 pcInventory.ActivePage:= tsReport ;
 MakePkgNo_SQL(Sender) ;

 if not InitiateReport(Self, 'INV_BY_PKGNo_Summ.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
end;

procedure TfrmInventoryReport.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmInventoryReport.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + cxGrid1.Name, cxGrid1DBBandedTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgNoTbl.Name, grdPkgNoTblDBBandedTableView1) ;

 mtUserProp.Edit ;
 if acColAutoWidthSortiment.Checked then
  mtUserPropAutoColWidth.AsInteger:= 1
   else
    mtUserPropAutoColWidth.AsInteger:= 0 ;

 if acInputOption.Checked then
  mtUserPropShipperNo.AsInteger:= 0
   else
    mtUserPropShipperNo.AsInteger:= 1 ;

 if acGroupSummary.Checked then
  mtUserPropGroupSummary.AsInteger := 1
   else
    mtUserPropGroupSummary.AsInteger := 0 ;

 if acGroupByBox.Checked then
  mtUserPropGroupByBox.AsInteger := 1
   else
    mtUserPropGroupByBox.AsInteger := 0 ;


 mtUserPropAgentNo.AsInteger:=  dm_DryKiln.cds_KilnChargeHdrKilnChargeNo.AsInteger ;

 mtUserProp.Post ;

 dm_UserProps.SaveUserProps (Self.Name, mtUserProp) ;

 With dmInventory do
 Begin
  mtRemovedPkg.Active := False ;
  cds_PkgList.Active  := False ;
  cds_PkgNoList.Active:= False ;
 End ;

 With dm_DryKiln do
 Begin
  cds_Kilns.Active          := False ;
  cds_KilnChargeHdr.Active  := False ;
  cds_KilnChargeRow.Active  := False ;
 End ;

 cds_InvCtrlList.Active:= False ;

 CanClose := True ;
end;

//Paketnr
procedure TfrmInventoryReport.acPackageTableExecute(Sender: TObject);
Var PackageNo   : Integer ;
    Supp_Code   : String ;
    Save_Cursor : TCursor;
begin
 ShowDeActivatedPkgs:= False ;
 if mtUserProp.State in [dsEdit, dsInsert] then
 mtUserProp.Post ;
 ClickedF10 := False ;
 acAddKilnRow.Caption:= 'Lägg paket till torksats' ;
 bbAddPkgsToKilnCharge.Caption:= 'Lägg paket till torksats' ;
 With dmInventory do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
//  if cbVolUnitLengths.ItemIndex = 3 then    cbVolUnitLengths.ItemIndex:= 0 ;
  cds_PkgList.DisableControls ;
  cxGrid1DBBandedTableView1.BeginUpdate ;
  cxGrid1DBBandedTableView1.DataController.KeyFieldNames:= 'PKTNR;LEVKOD;Status;LIPNo' ;
//  cxGrid1DBBandedTableView1.DataController.KeyFieldNames:= 'PKTNR;LEVKOD' ;
  cxGrid1DBBandedTableView1.Bands[0].Visible:= True ;
  cxGrid1DBBandedTableView1.Bands[0].FixedKind:= fkLeft ;
  cxGrid1DBBandedTableView1.Bands[1].FixedKind:= fkNone ;
  Try
   cds_PkgList.Active:= False ;
   pcInventory.ActivePage:= tsTABELL ;
   if pgInventory.ActivePage = tsFakturaSpec then
   Begin
    cds_PkgList.Active:= False ;
    GenFakturaSpecPkgNoTable_SQL(Sender) ;
    cds_PkgList.Active:= True ;
   End
   else
   if pgInventory.ActivePage = tsLoadOrderSpec then
   Begin
    cds_PkgList.Active:= False ;
    GenLoadOrderSpecPkgNoTable_SQL(Sender) ;
    cds_PkgList.Active:= True ;
   End
   else
   if (pgInventory.ActivePage = tsLagret) or (pgInventory.ActivePage = tsInventering) then
   Begin
    if CheckIfAnyCheckedItemsInComboFilter(cbLIP) = False then
    Begin
     if MessageDlg('Alla lager är med i frågan! Frågan kan ta lång tid när alla lager är med. Vill du fortsätta med frågan',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     Begin
      cds_PkgList.Active:= False ;
      GenPkgNoTable_SQL(Sender) ;
      cds_PkgList.Active:= True ;
     End
     else
     Exit ;
    End
    else
     Begin
      cds_PkgList.Active:= False ;
      GenPkgNoTable_SQL(Sender) ;
      cds_PkgList.Active:= True ;
     End
   End ;

   if cds_PkgList.Active then
   Begin
    PackageNo:=  cds_PkgListPKTNR.AsInteger ;
    Supp_Code:=  cds_PkgListLEVKOD.AsString ;

    if cds_PkgList.Locate('PKTNR;LEVKOD', VarArrayOf([PackageNo, Supp_Code]),[]) then ;
    SetKolumnNameAndHideNonUsedKolumns(Sender) ;
    cxGrid1DBBandedTableView1.Columns[65].Visible  := True ;
    cxGrid1DBBandedTableView1.Columns[65].Caption  := 'ÖVRIGA' ;
   End ;

  Finally
   cxGrid1DBBandedTableView1.EndUpdate ;
   cds_PkgList.EnableControls ;
   cxGrid1DBBandedTableView1.Bands[2].ApplyBestFit ;
   Screen.Cursor := Save_Cursor ;
  End ;
 End ;
end;

procedure TfrmInventoryReport.GenPkgNoTable_SQL(Sender: TObject);
Var Save_Cursor:TCursor;
    y, x: Byte ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormatLengthColumns ;
 Try
 With dmInventory do
 Begin
 if cbInklEjFakt.ItemIndex = 2 then
 Begin
  sq_PkgList.Close ;
  sq_PkgList.SQL.Clear ;
  GenNotInvoicedTable_SQL(Sender) ;
  Exit ;
 End ;

  sq_PkgList.Close ;
  sq_PkgList.SQL.Clear ;

  sq_PkgList.SQL.Add('Select distinct 1 AS PKT,') ;

  sq_PkgList.SQL.Add('pd.ProductNo,') ;
  sq_PkgList.SQL.Add('pd.ProductDisplayName AS PRODUKT,') ;
  sq_PkgList.SQL.Add('pt.PackageTypeNo,') ;
  sq_PkgList.SQL.Add('pn.PackageNo AS PKTNR,') ;
  sq_PkgList.SQL.Add('pn.SupplierCode AS LEVKOD,') ;

  sq_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  sq_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  sq_PkgList.SQL.Add('pt.TotalNoOfPieces AS STYCK,') ;

  sq_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN PTL.PcsPerLength') ;
  sq_PkgList.SQL.Add('ELSE '+QuotedStr('')) ;
  sq_PkgList.SQL.Add('END AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
  Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

  For y:= x to 45 do
  sq_PkgList.SQL.Add('0.0 AS L'+inttostr(y)+', ') ;

  sq_GroupLengths.Close ;



  sq_PkgList.SQL.Add('pt.Totalm3Actual AS AM3,') ;
  sq_PkgList.SQL.Add('pt.Totalm3Nominal AS NM3,') ;
  sq_PkgList.SQL.Add('pt.TotalLinealMeterActualLength AS AM1,') ;
  sq_PkgList.SQL.Add('pt.TotalMFBMNominal AS MFBM,') ;
  sq_PkgList.SQL.Add('pt.TotalSQMofActualWidth AS AM2,') ;
  sq_PkgList.SQL.Add('pn.DateCreated AS TILLVERKAD,') ;


  sq_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  sq_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  sq_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  sq_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  sq_PkgList.SQL.Add('PTL.STD_Length, Verk.ClientNo AS OwnerNo, Cy.CityName+'+QuotedStr('/')+'+lip.LogicalInventoryName AS Lager,') ;
  sq_PkgList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  sq_PkgList.SQL.Add(',isnull(avrPkg.Status,1) AS Status')
  else
  sq_PkgList.SQL.Add(',1 AS Status') ;



  sq_PkgList.SQL.Add('FROM  dbo.Client Verk') ;

  sq_PkgList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;

//  sq_PkgList.SQL.Add('INNER JOIN PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;

  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
   if cbInvLista.ItemIndex = 0 then
   Begin
    sq_PkgList.SQL.Add('INNER JOIN dbo.InvControlrow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    sq_PkgList.SQL.Add('Left Outer Join dbo.AvrPkgInInvCtrl avrPkg on avrPkg.IC_GrpNo = invctrlrow.IC_GrpNo') ;
    sq_PkgList.SQL.Add('AND avrPkg.PackageNo = invctrlrow.PackageNo') ;
    sq_PkgList.SQL.Add('AND avrPkg.SupplierCode = invctrlrow.SupplierCode') ;
    sq_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    sq_PkgList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
   End
   else
   Begin
    sq_PkgList.SQL.Add('INNER JOIN dbo.InvenRow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    sq_PkgList.SQL.Add('INNER JOIN PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    sq_PkgList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
   End ;
  End
  else
   Begin
    sq_PkgList.SQL.Add('INNER JOIN PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
   End ;

//  sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;

//  if (mtActLengthMM.RecordCount > 0) or (cbShowSingleLengthPkgs.Checked) then
  Begin
   sq_PkgList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
   sq_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  End ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'ANTAL PER LÄNGD' ;
       End ;
   1 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'AM3 PER LÄNGD' ;
       End ;
   2 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'NM3 PER LÄNGD' ;
       End ;
   3 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'ANTAL PER LÄNGD' ;
       End ;
  End ;



  sq_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  sq_PkgList.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_PkgList.SQL.Add('				AND imp.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_PkgList.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_PkgList.SQL.Add('				AND SUR.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_PkgList.SQL.Add('				AND Gr.LanguageCode = 1') ;

  sq_PkgList.SQL.Add('Inner Join City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;


  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  sq_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  sq_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;

{  if mt_GradeStamp.RecordCount > 0 then
  sq_PkgList.SQL.Add('Inner JOIN GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if mt_BarCode.RecordCount > 0 then
  sq_PkgList.SQL.Add('Inner JOIN BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ; }


  sq_PkgList.SQL.Add('WHERE LIP.SequenceNo = 1') ; //SequenceNo = Active "property"

  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
   sq_PkgList.SQL.Add('AND invctrlrow.IC_GrpNo = '+mtUserPropNewItemRow.AsString);
  End
   else
    sq_PkgList.SQL.Add('AND pn.Status = 1') ;



  if mtUserPropSalesRegionNo.AsInteger > 0 then
  sq_PkgList.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

//  if mtUserPropPIPNo.AsInteger > 0 then  sq_PkgList.SQL.Add('AND pip.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then sq_PkgList.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;
//  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'LIP.LogicalInventoryPointNo', cbLIP)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

//  if mtUserPropOwnerNo.AsInteger > 0 then
//  sq_PkgList.SQL.Add('AND Verk.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;


  if cbShowSingleLengthPkgs.Checked then
    sq_PkgList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;


  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

  sq_PkgList.SQL.Add('Group by pd.ProductNo, pd.ProductDisplayName, pt.PackageTypeNo, pn.PackageNo, pn.SupplierCode, pg.ActualThicknessMM,') ;
  sq_PkgList.SQL.Add('pg.ActualWidthMM, pt.TotalNoOfPieces, PTL.STD_Length, PTL.PcsPerLength, pt.Totalm3Actual, pt.Totalm3Nominal,') ;
  sq_PkgList.SQL.Add('pt.TotalLinealMeterActualLength, pt.TotalMFBMNominal, pt.TotalSQMofActualWidth, pn.DateCreated, SPE.SpeciesName, imp.ProductCategoryName,') ;
  sq_PkgList.SQL.Add('Gr.GradeName, SUR.SurfacingName, ') ;
  sq_PkgList.SQL.Add('Verk.ClientNo , Cy.CityName, lip.LogicalInventoryName,') ;
  sq_PkgList.SQL.Add('lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  sq_PkgList.SQL.Add(',isnull(avrPkg.Status,1)') ;

  if cbInklEjFakt.ItemIndex = 1 then
  Begin
   sq_PkgList.SQL.Add('UNION') ;
   GenPkgNoNotInvoicedTable_SQL(Sender) ;
  End ;


//  if thisuser.UserID = 8 then
 sq_PkgList.SQL.SaveToFile('sq_PkgList.txt');

 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.GenPkgNoNotInvoicedTable_SQL(Sender: TObject);
Var Save_Cursor : TCursor;
    y, x        : Byte ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormatLengthColumns ;
 Try
 With dmInventory do
 Begin
//  sq_PkgList.Close ;
//  sq_PkgList.SQL.Clear ;

  sq_PkgList.SQL.Add('Select distinct 1 AS PKT,') ;

  sq_PkgList.SQL.Add('pd.ProductNo,') ;
  sq_PkgList.SQL.Add('pd.ProductDisplayName AS PRODUKT,') ;
  sq_PkgList.SQL.Add('pt.PackageTypeNo,') ;
  sq_PkgList.SQL.Add('pn.PackageNo AS PKTNR,') ;
  sq_PkgList.SQL.Add('pn.SupplierCode AS LEVKOD,') ;

  sq_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  sq_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  sq_PkgList.SQL.Add('pt.TotalNoOfPieces AS STYCK,') ;

  sq_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN PTL.PcsPerLength') ;
  sq_PkgList.SQL.Add('ELSE '+QuotedStr('')) ;
  sq_PkgList.SQL.Add('END AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
  Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

  For y:= x to 45 do
  sq_PkgList.SQL.Add('0.0 AS L'+inttostr(y)+', ') ;

  sq_GroupLengths.Close ;



  sq_PkgList.SQL.Add('pt.Totalm3Actual AS AM3,') ;
  sq_PkgList.SQL.Add('pt.Totalm3Nominal AS NM3,') ;
  sq_PkgList.SQL.Add('pt.TotalLinealMeterActualLength AS AM1,') ;
  sq_PkgList.SQL.Add('pt.TotalMFBMNominal AS MFBM,') ;
  sq_PkgList.SQL.Add('pt.TotalSQMofActualWidth AS AM2,') ;
  sq_PkgList.SQL.Add('pn.DateCreated AS TILLVERKAD,') ;


  sq_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  sq_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  sq_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  sq_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  sq_PkgList.SQL.Add('PTL.STD_Length, Verk.ClientNo AS OwnerNo, Cy.CityName+'+QuotedStr('/')+'+lip.LogicalInventoryName AS Lager,') ;
  sq_PkgList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  sq_PkgList.SQL.Add(',isnull(avrPkg.Status,1) AS Status')
  else
  sq_PkgList.SQL.Add(',1 AS Status') ;



//  sq_PkgList.SQL.Add('FROM  dbo.Client Verk') ;
//  sq_PkgList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
//  sq_PkgList.SQL.Add('Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;
//  sq_PkgList.SQL.Add('INNER JOIN PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
//  sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;


  sq_PkgList.SQL.Add('FROM  dbo.Client Verk') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Loads L on L.SupplierNo = Verk.ClientNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo') ;
//  sq_PkgList.SQL.Add('Inner Join dbo.CustomerShippingPlanDetails csd on csd.CustShipPlanDetailObjectNo = LD.DefaultCustShipObjectNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.CustomerShippingPlanHeader csh on csh.ShippingPlanNo = LD.ShippingPlanNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Orders oh on oh.OrderNo = csh.OrderNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventoryPointNo = LD.LIPNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo and pn.SupplierCode = LD.SupplierCode') ;
  sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = LD.PackageTypeNo') ;


  Begin
   sq_PkgList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = LD.PackageTypeNo') ;
   sq_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  End ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = LD.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'ANTAL PER LÄNGD' ;
       End ;
   1 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = LD.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'AM3 PER LÄNGD' ;
       End ;
   2 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = LD.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'NM3 PER LÄNGD' ;
       End ;
   3 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = LD.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'ANTAL PER LÄNGD' ;
       End ;
  End ;



  sq_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  sq_PkgList.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_PkgList.SQL.Add('				AND imp.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_PkgList.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_PkgList.SQL.Add('				AND SUR.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_PkgList.SQL.Add('				AND Gr.LanguageCode = 1') ;

  sq_PkgList.SQL.Add('Inner Join City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;


  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  sq_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  sq_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;

{  if mt_GradeStamp.RecordCount > 0 then
  sq_PkgList.SQL.Add('Inner JOIN GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if mt_BarCode.RecordCount > 0 then
  sq_PkgList.SQL.Add('Inner JOIN BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ; }


  sq_PkgList.SQL.Add('WHERE oh.OrderType = 0') ; //SequenceNo = Active "property"
  sq_PkgList.SQL.Add('AND pn.Status = 0') ;

  sq_PkgList.SQL.Add('AND L.LoadedDate > ' + QuotedStr('2008-06-01')) ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
  sq_PkgList.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;


  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  if cbShowSingleLengthPkgs.Checked then
    sq_PkgList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;


  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

  sq_PkgList.SQL.Add('AND L.LoadNo not in (Select inl.LoadNo FROM dbo.Invoiced_Load inl') ;
  sq_PkgList.SQL.Add('Inner Join dbo.InvoiceNumber invno on invno.InternalInvoiceNo = inl.InternalInvoiceNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = inl.InternalInvoiceNo') ;
  sq_PkgList.SQL.Add('WHERE inl.LoadNo = L.LoadNo)') ;

  sq_PkgList.SQL.Add('AND L.LoadNo not in (Select inl2.LoadNo FROM dbo.Invoiced_Load inl2') ;
  sq_PkgList.SQL.Add('Inner Join dbo.ProformaInvoiceNumber invno on invno.InternalInvoiceNo = inl2.InternalInvoiceNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = inl2.InternalInvoiceNo') ;
  sq_PkgList.SQL.Add('WHERE inl2.LoadNo = L.LoadNo)') ;

  sq_PkgList.SQL.Add('Group by pd.ProductNo, pd.ProductDisplayName, pt.PackageTypeNo, pn.PackageNo, pn.SupplierCode, pg.ActualThicknessMM,') ;
  sq_PkgList.SQL.Add('pg.ActualWidthMM, pt.TotalNoOfPieces, PTL.STD_Length, PTL.PcsPerLength, pt.Totalm3Actual, pt.Totalm3Nominal,') ;
  sq_PkgList.SQL.Add('pt.TotalLinealMeterActualLength, pt.TotalMFBMNominal, pt.TotalSQMofActualWidth, pn.DateCreated, SPE.SpeciesName, imp.ProductCategoryName,') ;
  sq_PkgList.SQL.Add('Gr.GradeName, SUR.SurfacingName, ') ;
  sq_PkgList.SQL.Add('Verk.ClientNo , Cy.CityName, lip.LogicalInventoryName,') ;
  sq_PkgList.SQL.Add('lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  sq_PkgList.SQL.Add(',isnull(avrPkg.Status,1)') ;


//  if thisuser.UserID = 8 then sq_PkgList.SQL.SaveToFile('sq_PkgList.txt');

 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.SetKolumnNameAndHideNonUsedKolumns (Sender: TObject);
Var x, y  : Integer ;
    AItem : TcxDataSummaryItem;
Begin
 With dmInventory do
 Begin
  For x := 0 to 44 do
  Begin
   AItem := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryItems.ItemOfItemLink(cxGrid1DBBandedTableView1.Columns[x+21]) ;
    if mtUserPropLengthVolUnitNo.AsInteger = 0 then
   AItem.Format:= '########'
   else
   if mtUserPropLengthVolUnitNo.AsInteger = 1 then
   AItem.Format:= '########.0'
   else
   AItem.Format:= '########' ;
  End ;

  x := 21 ;

  For y := x to 65 do
   cxGrid1DBBandedTableView1.Columns[y].Caption:= 'L' ;

  cds_ProductLengthInGroup.Active:= False ;
  sq_ProductLengthInGroup.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  cds_ProductLengthInGroup.Active:= True ;
  cds_ProductLengthInGroup.First ;

  While not cds_ProductLengthInGroup.Eof do
  Begin

   Case mtUserPropLengthFormatNo.AsInteger of
     cAKT_MM      : cxGrid1DBBandedTableView1.Columns[x].Caption:= cds_ProductLengthInGroupALMM.AsString ;
     cNOM_MM      : cxGrid1DBBandedTableView1.Columns[x].Caption:= cds_ProductLengthInGroupNLMM.AsString ;
     cFOT         : cxGrid1DBBandedTableView1.Columns[x].Caption:= cds_ProductLengthInGroupFOT.AsString ;
     cTUM         : cxGrid1DBBandedTableView1.Columns[x].Caption:= cds_ProductLengthInGroupTUM.AsString ;
     cAKT_NOM_MM  : cxGrid1DBBandedTableView1.Columns[x].Caption:= cds_ProductLengthInGroupALMM.AsString+' ('+cds_ProductLengthInGroupNLMM.AsString+')' ;
     cFOT_TUM     : cxGrid1DBBandedTableView1.Columns[x].Caption:= cds_ProductLengthInGroupFOT.AsString+' ('+Trim(cds_ProductLengthInGroupTUM.AsString)+')' ;
     cFOT_AKTMM   : cxGrid1DBBandedTableView1.Columns[x].Caption:= cds_ProductLengthInGroupFOT.AsString+' ('+cds_ProductLengthInGroupALMM.AsString+')' ;
   End ;


   cxGrid1DBBandedTableView1.Columns[x].Visible:= True ;
   x:= succ(x) ;
   cds_ProductLengthInGroup.Next ;
  End ;//While

   if (pgInventory.ActivePage = tsFakturaSpec) or (pgInventory.ActivePage = tsLoadOrderSpec) then
   Begin
    cxGrid1DBBandedTableView1Lager.Caption  := 'LONr' ;
    cxGrid1DBBandedTableView1.Bands.Items[5].Caption:= 'LASTORDER' ;
   End
   else
   Begin
    cxGrid1DBBandedTableView1Lager.Caption  := 'Lager' ;
    cxGrid1DBBandedTableView1.Bands.Items[5].Caption:= 'LAGER' ;
   End ;


//  x:= x-1 ;
//Sätt övriga kolumner till osynliga
  For y := x to 64 do //Kolumn 65 är en numera en summering av antal paket
  cxGrid1DBBandedTableView1.Columns[y].Visible:= False ;

  cds_ProductLengthInGroup.Active:= False ;
 End ;//with
End ;

procedure TfrmInventoryReport.Button2Click(Sender: TObject);
begin
 Memo1.Visible:= not Memo1.Visible ;
end;

procedure TfrmInventoryReport.Button1Click(Sender: TObject);
var
  x : Integer ;
begin
 Memo1.Lines.Clear ;
  For x := 0 to 64 do
  Begin
   Memo1.Lines.Add(cxGrid1DBBandedTableView1.Columns[x].Caption+'      x = '+inttostr(x)) ;
//   cxGrid1DBBandedTableView1.Columns[x].Visible:= False ;
  End ;
end;

//Skapar data för fliken PaketSummering
procedure TfrmInventoryReport.MakeInvSum(Sender: TObject);
Var Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 With dmInventory do
 Begin
//  sq_InvSum.Close ;
  sq_InvSum.SQL.Clear ;
  sq_InvSum.SQL.Add('Select distinct ') ;

  sq_InvSum.SQL.Add(IntToStr(ThisUser.UserID)+',') ;
  sq_InvSum.SQL.Add('Cy.CityName AS LAGERSTÄLLE,') ;
  sq_InvSum.SQL.Add('SPE.SpeciesName AS TS,') ;
  sq_InvSum.SQL.Add('IMP.ProductCategoryName AS IMP,') ;
  sq_InvSum.SQL.Add('Gr.GradeName AS KV,') ;
  sq_InvSum.SQL.Add('pg.ActualThicknessMM AS ATMM, pg.ActualWidthMM AS ABMM,') ;
  sq_InvSum.SQL.Add('SUR.SurfacingName AS UT,') ;
  sq_InvSum.SQL.Add('SUM(pt.Totalm3Actual) AS AM3,') ;
  sq_InvSum.SQL.Add('SUM(pt.TotalMFBMNominal) AS MFBM,') ;
  sq_InvSum.SQL.Add('SUM(pt.TotalNoOfPieces) AS STYCK,') ;
  sq_InvSum.SQL.Add('count(pn.PackageNo) AS PAKET,') ;
  sq_InvSum.SQL.Add('pt.ProductNo,') ;
  sq_InvSum.SQL.Add('lip.PhysicalInventoryPointNo AS PIPNo') ;

  sq_InvSum.SQL.Add('FROM  dbo.Client Verk') ;
  sq_InvSum.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  sq_InvSum.SQL.Add('Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;
  sq_InvSum.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
  sq_InvSum.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;
//  sq_InvSum.SQL.Add('Inner Join dbo.PackageTypeDetail ptd ON ptd.PackageTypeNo = pn.PackageTypeNo') ;
//  sq_InvSum.SQL.Add('Inner Join dbo.ProductLength pl ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  sq_InvSum.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_InvSum.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  sq_InvSum.SQL.Add('Inner Join dbo.ProductCategory	IMP	ON IMP.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_InvSum.SQL.Add('				AND IMP.LanguageCode = 1') ;
  sq_InvSum.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_InvSum.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_InvSum.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_InvSum.SQL.Add('				AND SUR.LanguageCode = 1') ;
  sq_InvSum.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_InvSum.SQL.Add('				AND Gr.LanguageCode = 1') ;


  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  sq_InvSum.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  sq_InvSum.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;

  sq_InvSum.SQL.Add('Inner Join City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;

  sq_InvSum.SQL.Add('WHERE pn.Status = 1 AND LIP.SequenceNo = 1') ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
  sq_InvSum.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

//  if mtUserPropPIPNo.AsInteger > 0 then  sq_InvSum.SQL.Add('AND pip.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then   sq_InvSum.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;
//  sq_InvSum.SQL.Add(GetSQLofComboFilter(1, 'LIP.LogicalInventoryPointNo', cbLIP)) ;
  sq_InvSum.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

//  if mtUserPropOwnerNo.AsInteger > 0 then
//  sq_InvSum.SQL.Add('AND Verk.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;
  sq_InvSum.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;


  if cbShowSingleLengthPkgs.Checked then
    sq_InvSum.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

  sq_InvSum.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  sq_InvSum.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  sq_InvSum.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
  sq_InvSum.SQL.Add(GetSQLofComboFilter(0, 'IMP.ImpCode', ccbIMP)) ;
  sq_InvSum.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  sq_InvSum.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  sq_InvSum.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  sq_InvSum.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  sq_InvSum.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

  sq_InvSum.SQL.Add(' Group by SPE.SpeciesName, Gr.GradeName, pg.ActualThicknessMM, pg.ActualWidthMM, SUR.SurfacingName,') ;
  sq_InvSum.SQL.Add(' pt.ProductNo, lip.LogicalInventoryPointNo, Cy.CityName, lip.PhysicalInventoryPointNo, IMP.ProductCategoryName') ;
//  if thisuser.UserID = 8 then sq_InvSum.SQL.SaveToFile('sq_InvSum.txt');
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;

end;

procedure TfrmInventoryReport.acCRPkgNoReportExecute(Sender: TObject);
begin
 pcInventory.ActivePage:= tsReport ;
 MakePkgNo_SQL(Sender) ;

 if not InitiateReport(Self, 'INV_BY_PKGNo.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
end;

procedure TfrmInventoryReport.acCRAntalPerLangdExecute(Sender: TObject);
begin
 pcInventory.ActivePage:= tsReport ;
 SaveFilterSettings (Sender) ;
 MakeSQL_VolByLength (Sender) ;

 if not InitiateReport(Self, 'INV_BY_LENGTH.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
end;

procedure TfrmInventoryReport.acInvSummaryExecute(Sender: TObject);
Var Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 With dmInventory do
 Begin
  pcInventory.ActivePage:= tsInvSum ;
  cds_InvSum.Active:= False ;
  MakeInvSum(Sender);
  cds_InvSum.Active:= True ;
 End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.grdPkgTblDBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;

procedure TfrmInventoryReport.acPrintPkgTableExecute(Sender: TObject);
Var FilterString : String ;
begin
  FilterString:= FilterString + GetComboFilterText(' [', cbLIP) ;

//  GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)

  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
  if (cbInvLista.ItemIndex = 0) then
   dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Kontrollista inventeringnr: '+mtUserPropNewItemRow.AsString)
   else
     dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Resultatlista inventeringnr: '+mtUserPropNewItemRow.AsString) ;
  End
  else
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Lagerlista ' + FilterString) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;

  dxComponentPrinter1Link1.PrinterPage.Orientation    := poLandscape ;
  dxComponentPrinter1Link1.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;

  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link1) ;
end;

procedure TfrmInventoryReport.acPkgInfoExecute(Sender: TObject);
var frmPkgInfo: TfrmPkgInfo;
begin
 With dmInventory do
 Begin
  frmPkgInfo:= TfrmPkgInfo.Create(Nil);
  Try
   if ClickedF10 = False then
   Begin
    frmPkgInfo.PackageNo   := cds_PkgListPKTNR.AsInteger ;
    frmPkgInfo.SupplierCode:= cds_PkgListLEVKOD.AsString ;
   End ;
   frmPkgInfo.ShowModal ;
  Finally
   FreeAndNil(frmPkgInfo) ;
  End ;
 End ;
end;

procedure TfrmInventoryReport.acChangePkgTableLayoutExecute(
  Sender: TObject);
begin
//Change pkgtable layout
  if cxGrid1.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(cxGrid1.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfrmInventoryReport.acExpandPkgTableGroupExecute(Sender: TObject);
begin
 cxGrid1DBBandedTableView1.ViewData.Expand(True);
end;

procedure TfrmInventoryReport.acCollapseAllPkgTableGroupExecute(
  Sender: TObject);
begin
 cxGrid1DBBandedTableView1.ViewData.Collapse(True);
end;

procedure TfrmInventoryReport.BuildSQLPcsPerLength(Sender: TObject);
Var Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 With dmInventory do
 Begin
//  sq_InvSum.Close ;
  sq_PcsPerLen.SQL.Clear ;
  sq_PcsPerLen.SQL.Add('Select distinct ') ;

  sq_PcsPerLen.SQL.Add('pdl.ActualLengthMM AS AKTUELLÄNGD,') ;
  sq_PcsPerLen.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;
  sq_PcsPerLen.SQL.Add('SUM(ptd.m3Actual) AS AM3,') ;

  sq_PcsPerLen.SQL.Add('(Select COUNT(pn2.PackageNo) FROM dbo.productLength PDL2') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.PackageTypeDetail ptd2 	ON ptd2.ProductLengthNo = pdl2.ProductLengthNo') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.PackageType pt2 	ON pt2.PackageTypeNo = ptd2.PackageTypeNo') ;
  sq_PcsPerLen.SQL.Add('INNER JOIN dbo.PackageNumber pn2 ON pn2.PackageTypeNo = pt2.PackageTypeNo') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip2 ON Lip2.LogicalInventoryPointNo = pn2.LogicalInventoryPointNo') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip2 ON pip2.PhysicalInventoryPointNo = lip2.PhysicalInventoryPointNo') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.Client Verk2 ON verk2.ClientNo = pip2.OwnerNo') ;

  sq_PcsPerLen.SQL.Add('Inner Join dbo.Product pd2 ON pd2.ProductNo = pt2.ProductNo ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.ProductGroup pg2 ON pg2.ProductGroupNo = pd2.ProductGroupNo ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg2.ProductCategoryNo') ;
  sq_PcsPerLen.SQL.Add('				AND imp.LanguageCode = 1') ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  sq_PcsPerLen.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  sq_PcsPerLen.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;


  sq_PcsPerLen.SQL.Add('WHERE') ;
  sq_PcsPerLen.SQL.Add('pdl2.ActualLengthMM = pdl.ActualLengthMM' ) ;
  sq_PcsPerLen.SQL.Add('AND pn2.Status = 1 AND LIP2.SequenceNo = 1') ;

//  sq_PcsPerLen.SQL.Add('AND pip2.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then  sq_PcsPerLen.SQL.Add('AND LIP2.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;
//  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'LIP2.LogicalInventoryPointNo', cbLIP)) ;
  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'LIP2.InvCode', cbLIP)) ;


//  if mtUserPropSalesRegionNo.AsInteger <> -1 then
  if mtUserPropSalesRegionNo.AsInteger <> -1 then
   sq_PcsPerLen.SQL.Add('AND Verk2.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;
//  if mtUserPropOwnerNo.AsInteger > 0 then
//  sq_PcsPerLen.SQL.Add('AND Verk2.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;

  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'Verk2.PktNrLevKod', cbOwner)) ;

  if cbShowSingleLengthPkgs.Checked then
  sq_PcsPerLen.SQL.Add('AND 1 = (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = pt2.PackageTypeNo)') ;
  sq_PcsPerLen.SQL.Add(') AS PAKET,') ;

  sq_PcsPerLen.SQL.Add('(Select SUM(ptd2.m3Actual) FROM ') ;
  sq_PcsPerLen.SQL.Add('dbo.productLength PDL2 ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.PackageTypeDetail ptd2 	ON ptd2.ProductLengthNo = pdl2.ProductLengthNo ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.PackageType pt2 	ON pt2.PackageTypeNo = ptd2.PackageTypeNo ') ;
  sq_PcsPerLen.SQL.Add('INNER JOIN dbo.PackageNumber pn2 ON pn2.PackageTypeNo = pt2.PackageTypeNo ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip2 ON Lip2.LogicalInventoryPointNo = pn2.LogicalInventoryPointNo ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip2 ON pip2.PhysicalInventoryPointNo = lip2.PhysicalInventoryPointNo ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.Client Verk2 ON verk2.ClientNo = pip2.OwnerNo') ;


  sq_PcsPerLen.SQL.Add('Inner Join dbo.Product pd2 ON pd2.ProductNo = pt2.ProductNo ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.ProductGroup pg2 ON pg2.ProductGroupNo = pd2.ProductGroupNo ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg2.ProductCategoryNo') ;
  sq_PcsPerLen.SQL.Add('				AND imp.LanguageCode = 1') ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  sq_PcsPerLen.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  sq_PcsPerLen.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;

  sq_PcsPerLen.SQL.Add('WHERE ') ;
  sq_PcsPerLen.SQL.Add('pn2.Status = 1 AND LIP2.SequenceNo = 1') ;

//  if mtUserPropPIPNo.AsInteger > 0 then  sq_PcsPerLen.SQL.Add('AND pip2.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then  sq_PcsPerLen.SQL.Add('AND LIP2.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;
//  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'LIP2.LogicalInventoryPointNo', cbLIP)) ;
  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'LIP2.InvCode', cbLIP)) ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
   sq_PcsPerLen.SQL.Add('AND Verk2.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;
//  if mtUserPropOwnerNo.AsInteger > 0 then
//  sq_PcsPerLen.SQL.Add('AND Verk2.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;

  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'Verk2.PktNrLevKod', cbOwner)) ;


  if cbShowSingleLengthPkgs.Checked then
  sq_PcsPerLen.SQL.Add('AND 1 = (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd2.PackageTypeNo) ') ;
  sq_PcsPerLen.SQL.Add(') AS TOTAL_AM3 ') ;

  sq_PcsPerLen.SQL.Add('FROM  dbo.Client Verk ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo ') ;
  sq_PcsPerLen.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.productLength PDL ON PDL.ProductLengthNo = ptd.ProductLengthNo ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo ') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_PcsPerLen.SQL.Add('				AND imp.LanguageCode = 1') ;

  sq_PcsPerLen.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_PcsPerLen.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_PcsPerLen.SQL.Add('				AND SUR.LanguageCode = 1') ;
  sq_PcsPerLen.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_PcsPerLen.SQL.Add('				AND Gr.LanguageCode = 1') ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  sq_PcsPerLen.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  sq_PcsPerLen.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;

  sq_PcsPerLen.SQL.Add('WHERE pn.Status = 1 AND LIP.SequenceNo = 1') ;
  if mtUserPropSalesRegionNo.AsInteger > 0 then
   sq_PcsPerLen.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

//  if mtUserPropPIPNo.AsInteger > 0 then  sq_PcsPerLen.SQL.Add('AND pip.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then sq_PcsPerLen.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;

//  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'LIP.LogicalInventoryPointNo', cbLIP)) ;
  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

//  if mtUserPropOwnerNo.AsInteger > 0 then
//  sq_PcsPerLen.SQL.Add('AND Verk.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;

  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  if cbShowSingleLengthPkgs.Checked then
  sq_PcsPerLen.SQL.Add('AND 1 = (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo) ') ;

  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  sq_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'PDL.ActualLengthMM', ccbAL)) ;


  sq_PcsPerLen.SQL.Add(' group by pdl.ActualLengthMM Order by pdl.ActualLengthMM') ;
//  if thisuser.UserID = 8 then sq_PcsPerLen.SQL.SaveToFile('sq_PcsPerLen.txt');
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.acStyckPerLangdTabellExecute(
  Sender: TObject);
Var Save_Cursor : TCursor;
begin
 With dmInventory do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  cds_PcsPerLen.DisableControls ;
  grdPcsPerLengthDBTableView1.BeginUpdate ;
  Try
   cds_PcsPerLen.Active:= False ;
   pcInventory.ActivePage:= tsPcsPerLength ;
   BuildSQLPcsPerLength(Sender) ;

   cds_PcsPerLen.Active:= True ;
   if cbShowSingleLengthPkgs.Checked then
   Begin
    grdPcsPerLengthDBTableView1PAKET.Visible:= True ;
   End
   else
   Begin
    grdPcsPerLengthDBTableView1PAKET.Visible:= False ;   
   End ;

   Finally
    grdPcsPerLengthDBTableView1.EndUpdate ;
    cds_PcsPerLen.EnableControls ;
    Screen.Cursor := Save_Cursor ;
   End ;
 End ; //with
end;


procedure TfrmInventoryReport.acPrintSummartTableExecute(Sender: TObject);
begin
  dxComponentPrinter1Link3.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.CenterTitle.Add('Paketsummering') ;

//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Add(grdPkgNoTblDBBandedTableView1Lager.EditValue) ;

  dxComponentPrinter1Link3.PrinterPage.Orientation    := poPortrait ;
  dxComponentPrinter1Link3.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link3.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link3.PrinterPage.ApplyToPrintDevice ;

  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link3) ;
end;

procedure TfrmInventoryReport.SetComponents ;
Begin
 if pcInventory.ActivePage = tsTABELL then
 Begin
  lcLengthGroup.Enabled     := True ;
//  cbLengthFormat.Enabled    := True ;
//  cbVolUnitLengths.Enabled  := True ;
 End
 else
 Begin
  lcLengthGroup.Enabled     := False ;
//  cbLengthFormat.Enabled    := False ;
//LARS!!   cbVolUnitLengths.Enabled  := False ;
 End ;
End ;

procedure TfrmInventoryReport.pcInventoryChange(Sender: TObject);
begin
 SetComponents ;
end;

procedure TfrmInventoryReport.RemovePackageFrom_grdPkgTbl(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 With dmInventory do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  cds_PkgList.DisableControls ;
  cxGrid1DBBandedTableView1.BeginUpdate ;
  Try
  mtPkgNos.First ;
  While not mtPkgNos.Eof do
  Begin
   if cds_PkgList.FindKey([mtPkgNosPackageNo.AsInteger, mtPkgNosSupp_Code.AsString]) then
   cds_PkgList.Delete ;
   mtPkgNos.Next ;
  End ;
//  mtPkgNos.Active:= False ;
//  mtPkgNos.Active:= True ;
  Finally
   cxGrid1DBBandedTableView1.EndUpdate ;
   cds_PkgList.EnableControls ;
//   cxGrid1DBBandedTableView1.Bands[2].ApplyBestFit ;
   Screen.Cursor := Save_Cursor ;
  End ;
 End ;//with
end;


procedure TfrmInventoryReport.acChangePkgUpdate(Sender: TObject);
begin
 with dmInventory do
 acChangePkg.Enabled:= cds_PkgList.RecordCount > 0 ;
end;

procedure TfrmInventoryReport.acRemovePkgUpdate(Sender: TObject);
begin
 with dmInventory do
 acRemovePkg.Enabled:= cds_PkgList.RecordCount > 0 ;
end;

procedure TfrmInventoryReport.cbHideZeroColumnsClick(Sender: TObject);
var x           : Integer ;
    Save_Cursor : TCursor;
begin
//  if cbHideZeroColumns.Checked then
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 cxGrid1DBBandedTableView1.BeginUpdate ;
 Try
  For x := 0 to 44 do
  if (cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[x] = 0) then
   cxGrid1DBBandedTableView1.Columns[x+21].Visible:= not cbHideZeroColumns.Checked ;
//   else
//    cxGrid1DBBandedTableView1.Columns[x+20].Visible:= True ;

  For x := 0 to 44 do
  if cxGrid1DBBandedTableView1.Columns[x+21].Caption = 'L' then
   cxGrid1DBBandedTableView1.Columns[x+21].Visible:= False ;
 Finally
  cxGrid1DBBandedTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmInventoryReport.acExportExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  ExportPkgTables(Sender) ;

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

//Sortiment
procedure TfrmInventoryReport.acPkgTypeTableExecute(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 ShowDeActivatedPkgs:= False ;
 if mtUserProp.State in [dsEdit, dsInsert] then
 mtUserProp.Post ;

 ClickedF10 := True ;
 acAddKilnRow.Caption:= 'Lägg paket till torksats' ;
 bbAddPkgsToKilnCharge.Caption:= 'Lägg paket till torksats' ;
 With dmInventory do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  cds_PkgList.DisableControls ;
  cxGrid1DBBandedTableView1.BeginUpdate ;
  cxGrid1DBBandedTableView1.DataController.KeyFieldNames:= 'ProductNo;Status;LIPNo' ;
//  cxGrid1DBBandedTableView1.DataController.KeyFieldNames:= 'ProductNo;PackageTypeNo' ;
  cxGrid1DBBandedTableView1.Bands[0].Visible:= False ;
  cxGrid1DBBandedTableView1.Bands[1].FixedKind:= fkLeft ;

  Try
   cds_PkgList.Active:= False ;
   pcInventory.ActivePage:= tsTABELL ;
   if pgInventory.ActivePage = tsFakturaSpec then
   Begin
    cxGrid1DBBandedTableView1.DataController.KeyFieldNames:= 'PRODUKT;Status;LIPNo' ;
    cds_PkgList.Active:= False ;
    GenInvoicePkgSpec(Sender) ;
    cds_PkgList.Active:= True ;
   End
   else
   if pgInventory.ActivePage = tsLoadOrderSpec then
   Begin
    cxGrid1DBBandedTableView1.DataController.KeyFieldNames:= 'PRODUKT;Status;LIPNo' ;
    cds_PkgList.Active:= False ;
    GenLoadOrderPkgSpec(Sender) ;
    cds_PkgList.Active:= True ;
   End
   else
   if (pgInventory.ActivePage = tsLagret) or (pgInventory.ActivePage = tsInventering) then
   Begin
    if CheckIfAnyCheckedItemsInComboFilter(cbLIP) = False then
    Begin
     if MessageDlg('Alla lager är med i frågan! Frågan kan ta lång tid när alla lager är med. Vill du fortsätta med frågan',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     Begin
      cds_PkgList.Active:= False ;
      GenPkgSUMTable_SQL(Sender) ;
      cds_PkgList.Active:= True ;
     End
     else
     Exit ;
    End
    else
     Begin
      cds_PkgList.Active:= False ;
      GenPkgSUMTable_SQL(Sender) ;
      cds_PkgList.Active:= True ;
     End
   End ;


   if cds_PkgList.Active then
   Begin
    SetKolumnNameAndHideNonUsedKolumns(Sender) ;
    cxGrid1DBBandedTableView1.Columns[65].Visible  := True ;
    cxGrid1DBBandedTableView1.Columns[65].Caption   := 'ÖVRIGA' ;
   End ;
  Finally
   cxGrid1DBBandedTableView1.EndUpdate ;
   cds_PkgList.EnableControls ;
   cxGrid1DBBandedTableView1.Bands[2].ApplyBestFit ;
   Screen.Cursor := Save_Cursor ;
  End ;
 End ;
end;

Function TfrmInventoryReport.GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
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
        if AddORToSQL then
         Result:= Result + ' OR '
          else
           Result:= ' AND (' ;
        if dType = 0 then
         Result:= Result + ' '+Kolumn+' = '+QuotedStr(Properties.Items[x].ShortDescription)
          else
           Result:= Result + ' '+Kolumn+' = '+ReplaceCommas(Properties.Items[x].ShortDescription) ;

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

Function TfrmInventoryReport.SelectedOwnersOK : Boolean ;
Var
    VidaWood      : Boolean ;
    NoOfSelections, x             : Integer ;
Begin
NoOfSelections:= 0 ;
 VidaWood:= False ;
  For x := 0 to cbOwner.Properties.Items.Count - 1 do
  Begin
   if (cbOwner.Properties.Items.Items[x].ShortDescription = '10') and (cbOwner.States[x] = cbsChecked) then
    VidaWood:= True ;
   if cbOwner.States[x] = cbsChecked then
    NoOfSelections:= Succ(NoOfSelections) ;
//    cbOwner.SetItemState(x, cbsChecked) ;
  End ;

 if (VidaWood) and (NoOfSelections > 1) then
  For x := 0 to cbOwner.Properties.Items.Count - 1 do
  Begin
   if cbOwner.Properties.Items.Items[x].ShortDescription = '10' then
   cbOwner.SetItemState(x, cbsUnChecked) ;
//   cbOwner.States[x]:= cbsChecked ;
//    cbOwner.SetItemState(x, cbsChecked) ;
  End ;

 if (VidaWood) and (NoOfSelections = 1) then
 Result:= True
 else
 Result:= False ;

End ;


Function TfrmInventoryReport.GetComboFilterText(const Kolumn : String;combo : TcxCheckComboBox) : String ;
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

Function TfrmInventoryReport.ComboBoxFilterChecked(const Kolumn : String;combo : TcxCheckComboBox) : Boolean ;
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

procedure TfrmInventoryReport.GenPkgSumTable_SQL(Sender: TObject);
Var Save_Cursor   : TCursor;
    x, y          : Integer ;
begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormatLengthColumns ;
 Try

 With dmInventory do
 Begin

 if cbInklEjFakt.ItemIndex = 2 then
 Begin
  sq_PkgList.Close ;
  sq_PkgList.SQL.Clear ;
  GenNotInvoicedTable_SQL(Sender) ;
  Exit ;
 End ;

  sq_PkgList.Close ;
  sq_PkgList.SQL.Clear ;

  sq_PkgList.SQL.Add('Select distinct Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS PKT,') ;

  sq_PkgList.SQL.Add('pd.ProductNo,') ;
  sq_PkgList.SQL.Add('pd.ProductDisplayName AS PRODUKT,') ;
  sq_PkgList.SQL.Add('0 AS PackageTypeNo,') ;
  sq_PkgList.SQL.Add('0 AS PKTNR,') ;
  sq_PkgList.SQL.Add(QuotedStr('xxx')+' AS LEVKOD,') ;

  sq_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  sq_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  sq_PkgList.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;

  sq_PkgList.SQL.Add('RTRIM('+QuotedStr(' ')+') AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
//    3 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
//        +' THEN ptd.NoOfPieces/avgp.AvgPcs ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;

    3 : sq_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' AND PTL.STD_Length = 1'
        +' AND ls.NoOfLengths = 1'
        +' THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L'+inttostr(x)+', ') ;

//CAST(count(Distinct CASE WHEN PTL.STD_Length = 1 AND pl.ActualLengthMM
// = 4500 AND ls.NoOfLengths = 1 THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L14,

//    3 : sq_PkgList.SQL.Add('CAST(COUNT(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
//        +' THEN pn.PackageTypeNo ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

//Lägg till resten av kolumnerna...
  For y:= x to 44 do
  sq_PkgList.SQL.Add('0.0 AS L'+inttostr(y)+', ') ;

//Kolumn 65 är en numera en summering av antal paket
  sq_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN PTL.STD_Length = 0 OR ls.NoOfLengths > 1 THEN Str(pn.PackageNo)+pn.SupplierCode') ;
  sq_PkgList.SQL.Add('END)  AS Float)  AS L45,') ;

{  sq_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 1 THEN') ;
  sq_PkgList.SQL.Add(' CASE WHEN ls.NoOfLengths > 1 THEN Cast(Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS Decimal(12,2) )') ;
  sq_PkgList.SQL.Add(' else  0.0 END') ;
  sq_PkgList.SQL.Add('WHEN PTL.STD_Length = 0 THEN') ;
  sq_PkgList.SQL.Add('Cast(Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS Decimal(12,2) )') ;
  sq_PkgList.SQL.Add('ELSE 0.0 END AS L45,') ; }

{  sq_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN') ;
  sq_PkgList.SQL.Add('Cast(Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS Decimal(12,2) )') ;
  sq_PkgList.SQL.Add('ELSE') ;
  sq_PkgList.SQL.Add('0.0 END AS L45,') ; }

  sq_GroupLengths.Close ;


  sq_PkgList.SQL.Add('SUM(ptd.m3Actual) AS AM3,') ;
  sq_PkgList.SQL.Add('SUM(ptd.m3Nominal) AS NM3,') ;
  sq_PkgList.SQL.Add('SUM(ptd.LinealMeterActualLength) AS AM1,') ;
  sq_PkgList.SQL.Add('SUM(ptd.MFBMNominal) AS MFBM,') ;
  sq_PkgList.SQL.Add('SUM(ptd.SQMofActualWidth) AS AM2,') ;
  sq_PkgList.SQL.Add('GetDate() AS TILLVERKAD,') ;


  sq_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  sq_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  sq_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  sq_PkgList.SQL.Add('0 AS STD_Length,') ;
  sq_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  sq_PkgList.SQL.Add('Verk.ClientNo AS OwnerNo, Cy.CityName+'+QuotedStr('/')+'+lip.LogicalInventoryName AS Lager,') ;
  sq_PkgList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  sq_PkgList.SQL.Add(',isnull(avrPkg.Status,1) AS Status')
  else
  sq_PkgList.SQL.Add(',1 AS Status') ;

  sq_PkgList.SQL.Add('FROM  dbo.Client Verk') ;

  sq_PkgList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;

//  sq_PkgList.SQL.Add('INNER JOIN PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;

  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
   if cbInvLista.ItemIndex = 0 then
   Begin
    sq_PkgList.SQL.Add('INNER JOIN dbo.InvControlrow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    sq_PkgList.SQL.Add('Left Outer Join dbo.AvrPkgInInvCtrl avrPkg on avrPkg.IC_GrpNo = invctrlrow.IC_GrpNo') ;
    sq_PkgList.SQL.Add('AND avrPkg.PackageNo = invctrlrow.PackageNo') ;
    sq_PkgList.SQL.Add('AND avrPkg.SupplierCode = invctrlrow.SupplierCode') ;
    sq_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    sq_PkgList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
    sq_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End
   else
   Begin
    sq_PkgList.SQL.Add('INNER JOIN dbo.InvenRow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    sq_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    sq_PkgList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
    sq_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;    
   End ;
  End
  else
   Begin
    sq_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
    sq_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End ;

//  sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;

//  if (mtActLengthMM.RecordCount > 0) or (cbShowSingleLengthPkgs.Checked) then
  Begin
   sq_PkgList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
   sq_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  End ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'STYCK PER LÄNGD' ;
       End ;
   1 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'AM3 PER LÄNGD' ;
       End ;
   2 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'PAKET PER LÄNGD' ;
       End ;
   3 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'PAKET PER LÄNGD' ;
       End ;
  End ;


  sq_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  sq_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;


  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  sq_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  sq_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;


  sq_PkgList.SQL.Add('WHERE LIP.SequenceNo = 1 ') ;//AND PTL.STD_Length = 1

  sq_PkgList.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('				AND imp.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('				AND SUR.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('				AND Gr.LanguageCode = 1') ;

  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
   sq_PkgList.SQL.Add('AND invctrlrow.IC_GrpNo = '+mtUserPropNewItemRow.AsString);
  End
   else
    sq_PkgList.SQL.Add('AND pn.Status = 1') ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
  sq_PkgList.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

//  if mtUserPropPIPNo.AsInteger > 0 then  sq_PkgList.SQL.Add('AND pip.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;


//  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'LIP.LogicalInventoryPointNo', cbLIP)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then
//  sq_PkgList.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;

//  if mtUserPropOwnerNo.AsInteger > 0 then
//  sq_PkgList.SQL.Add('AND Verk.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;

  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;


  if cbShowSingleLengthPkgs.Checked then
    sq_PkgList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;


  sq_PkgList.SQL.Add('Group By pd.ProductNo, pd.ProductDisplayName, pg.ActualThicknessMM, pg.ActualWidthMM,') ;
  sq_PkgList.SQL.Add('SPE.SpeciesName, Gr.GradeName, SUR.SurfacingName, imp.ProductCategoryName, Verk.ClientNo, ') ;
  sq_PkgList.SQL.Add('Cy.CityName, lip.LogicalInventoryName, lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
   sq_PkgList.SQL.Add(',isnull(avrPkg.Status,1)') ;


  if cbInklEjFakt.ItemIndex = 1 then
  Begin
   sq_PkgList.SQL.Add('UNION') ;
   GenNotInvoicedTable_SQL(Sender) ;
  End ;

//  if thisuser.UserID = 8 then sq_PkgList.SQL.SaveToFile('sq_PkgSumList.txt');
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.GenNotInvoicedTable_SQL(Sender: TObject);
Var Save_Cursor   : TCursor;
    x, y          : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormatLengthColumns ;
 Try

 With dmInventory do
 Begin
//  sq_PkgList.Close ;
//  sq_PkgList.SQL.Clear ;
  sq_PkgList.SQL.Add('Select distinct Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS PKT,') ;

  sq_PkgList.SQL.Add('pd.ProductNo,') ;
  sq_PkgList.SQL.Add('pd.ProductDisplayName AS PRODUKT,') ;
  sq_PkgList.SQL.Add('0 AS PackageTypeNo,') ;
  sq_PkgList.SQL.Add('0 AS PKTNR,') ;
  sq_PkgList.SQL.Add(QuotedStr('xxx')+' AS LEVKOD,') ;

  sq_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  sq_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  sq_PkgList.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;

  sq_PkgList.SQL.Add('RTRIM('+QuotedStr(' ')+') AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
//    3 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
//        +' THEN ptd.NoOfPieces/avgp.AvgPcs ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;

    3 : sq_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' AND PTL.STD_Length = 1'
        +' AND ls.NoOfLengths = 1'
        +' THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L'+inttostr(x)+', ') ;

//CAST(count(Distinct CASE WHEN PTL.STD_Length = 1 AND pl.ActualLengthMM
// = 4500 AND ls.NoOfLengths = 1 THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L14,

//    3 : sq_PkgList.SQL.Add('CAST(COUNT(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
//        +' THEN pn.PackageTypeNo ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

//Lägg till resten av kolumnerna...
  For y:= x to 44 do
  sq_PkgList.SQL.Add('0.0 AS L'+inttostr(y)+', ') ;

//Kolumn 65 är en numera en summering av antal paket
  sq_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN PTL.STD_Length = 0 OR ls.NoOfLengths > 1 THEN Str(pn.PackageNo)+pn.SupplierCode') ;
  sq_PkgList.SQL.Add('END)  AS Float)  AS L45,') ;

{  sq_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 1 THEN') ;
  sq_PkgList.SQL.Add(' CASE WHEN ls.NoOfLengths > 1 THEN Cast(Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS Decimal(12,2) )') ;
  sq_PkgList.SQL.Add(' else  0.0 END') ;
  sq_PkgList.SQL.Add('WHEN PTL.STD_Length = 0 THEN') ;
  sq_PkgList.SQL.Add('Cast(Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS Decimal(12,2) )') ;
  sq_PkgList.SQL.Add('ELSE 0.0 END AS L45,') ; }

{  sq_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN') ;
  sq_PkgList.SQL.Add('Cast(Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS Decimal(12,2) )') ;
  sq_PkgList.SQL.Add('ELSE') ;
  sq_PkgList.SQL.Add('0.0 END AS L45,') ; }

  sq_GroupLengths.Close ;


  sq_PkgList.SQL.Add('SUM(ptd.m3Actual) AS AM3,') ;
  sq_PkgList.SQL.Add('SUM(ptd.m3Nominal) AS NM3,') ;
  sq_PkgList.SQL.Add('SUM(ptd.LinealMeterActualLength) AS AM1,') ;
  sq_PkgList.SQL.Add('SUM(ptd.MFBMNominal) AS MFBM,') ;
  sq_PkgList.SQL.Add('SUM(ptd.SQMofActualWidth) AS AM2,') ;
  sq_PkgList.SQL.Add('GetDate() AS TILLVERKAD,') ;


  sq_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  sq_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  sq_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  sq_PkgList.SQL.Add('0 AS STD_Length,') ;
  sq_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  sq_PkgList.SQL.Add('Verk.ClientNo AS OwnerNo, Cy.CityName+'+QuotedStr('/')+'+lip.LogicalInventoryName AS Lager,') ;
  sq_PkgList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  sq_PkgList.SQL.Add(',isnull(avrPkg.Status,1) AS Status')
  else
  sq_PkgList.SQL.Add(',1 AS Status') ;

  sq_PkgList.SQL.Add('FROM  dbo.Client Verk') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Loads L on L.SupplierNo = Verk.ClientNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo') ;
//  sq_PkgList.SQL.Add('Inner Join dbo.CustomerShippingPlanDetails csd on csd.CustShipPlanDetailObjectNo = LD.DefaultCustShipObjectNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.CustomerShippingPlanHeader csh on csh.ShippingPlanNo = LD.ShippingPlanNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Orders oh on oh.OrderNo = csh.OrderNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventoryPointNo = LD.LIPNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo and pn.SupplierCode = LD.SupplierCode') ;

    sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = LD.PackageTypeNo') ;
    sq_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;


//  if (mtActLengthMM.RecordCount > 0) or (cbShowSingleLengthPkgs.Checked) then
    Begin
    sq_PkgList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
    sq_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
    End ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'STYCK PER LÄNGD' ;
       End ;
   1 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'AM3 PER LÄNGD' ;
       End ;
   2 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'PAKET PER LÄNGD' ;
       End ;
   3 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'PAKET PER LÄNGD' ;
       End ;
  End ;


  sq_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  sq_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;


  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  sq_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  sq_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;


  sq_PkgList.SQL.Add('WHERE L.LoadedDate > ' + QuotedStr('2008-06-01')) ;
  sq_PkgList.SQL.Add('AND oh.OrderType = 0') ;//

  sq_PkgList.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('				AND imp.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('				AND SUR.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('				AND Gr.LanguageCode = 1') ;

  sq_PkgList.SQL.Add('AND pn.Status = 0') ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
  sq_PkgList.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;


  if cbShowSingleLengthPkgs.Checked then
    sq_PkgList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;


  sq_PkgList.SQL.Add('AND L.LoadNo not in (Select inl.LoadNo FROM dbo.Invoiced_Load inl') ;
  sq_PkgList.SQL.Add('Inner Join dbo.InvoiceNumber invno on invno.InternalInvoiceNo = inl.InternalInvoiceNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = inl.InternalInvoiceNo') ;
  sq_PkgList.SQL.Add('WHERE inl.LoadNo = L.LoadNo)') ;

  sq_PkgList.SQL.Add('AND L.LoadNo not in (Select inl2.LoadNo FROM dbo.Invoiced_Load inl2') ;
  sq_PkgList.SQL.Add('Inner Join dbo.ProformaInvoiceNumber invno on invno.InternalInvoiceNo = inl2.InternalInvoiceNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = inl2.InternalInvoiceNo') ;
  sq_PkgList.SQL.Add('WHERE inl2.LoadNo = L.LoadNo)') ;

  sq_PkgList.SQL.Add('Group By pd.ProductNo, pd.ProductDisplayName, pg.ActualThicknessMM, pg.ActualWidthMM,') ;
  sq_PkgList.SQL.Add('SPE.SpeciesName, Gr.GradeName, SUR.SurfacingName, imp.ProductCategoryName, Verk.ClientNo, ') ;
  sq_PkgList.SQL.Add('Cy.CityName, lip.LogicalInventoryName, lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
   sq_PkgList.SQL.Add(',isnull(avrPkg.Status,1)') ;

//  if thisuser.UserID = 8 then sq_PkgList.SQL.SaveToFile('sq_PkgSumList.txt');
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.FormatLengthColumns ;
//    Save_Cursor : TCursor;
{Styck
AM3
NM3
PAKET}
Var x : Integer ;
Begin
 With dmInventory do
 Begin
  With cds_PkgList do
  Begin
   For x:= 1 to 45 do
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : TFloatField(FieldByName('L'+inttostr(x))).DisplayFormat:='######';
    1,2 : TFloatField(FieldByName('L'+inttostr(x))).DisplayFormat:='###,###,###.0';
    3 : TFloatField(FieldByName('L'+inttostr(x))).DisplayFormat:='###,###,###';
   End ;//case

  End ; //With cds_PkgList do
 End ; //With dmInventory do
End ;

procedure TfrmInventoryReport.GenPkgNosDetailTable_SQL(Sender: TObject);
Var Save_Cursor : TCursor;
    y, x        : Byte ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormatLengthColumns ;
 Try
 With dmInventory do
 Begin
  sq_PkgNoList.Close ;
  sq_PkgNoList.SQL.Clear ;

  sq_PkgNoList.SQL.Add('Select distinct 1 AS PKT,') ;
  sq_PkgNoList.SQL.Add('pd.ProductNo,') ;
  sq_PkgNoList.SQL.Add('pd.ProductDisplayName AS PRODUKT,') ;
  sq_PkgNoList.SQL.Add('pt.PackageTypeNo,') ;
  sq_PkgNoList.SQL.Add('pn.PackageNo AS PKTNR,') ;
  sq_PkgNoList.SQL.Add('pn.SupplierCode AS LEVKOD,') ;

  sq_PkgNoList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  sq_PkgNoList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  sq_PkgNoList.SQL.Add('pt.TotalNoOfPieces AS STYCK,') ;

  sq_PkgNoList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN PTL.PcsPerLength') ;
  sq_PkgNoList.SQL.Add('ELSE '+QuotedStr('')) ;
  sq_PkgNoList.SQL.Add('END AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : sq_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : sq_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : sq_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : sq_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case

   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

  For y:= x to 45 do
  sq_PkgNoList.SQL.Add('0.0 AS L'+inttostr(y)+', ') ;

  sq_GroupLengths.Close ;



  sq_PkgNoList.SQL.Add('pt.Totalm3Actual AS AM3,') ;
  sq_PkgNoList.SQL.Add('pt.Totalm3Nominal AS NM3,') ;
  sq_PkgNoList.SQL.Add('pt.TotalLinealMeterActualLength AS AM1,') ;
  sq_PkgNoList.SQL.Add('pt.TotalMFBMNominal AS MFBM,') ;
  sq_PkgNoList.SQL.Add('pt.TotalSQMofActualWidth AS AM2,') ;
  sq_PkgNoList.SQL.Add('pn.DateCreated AS TILLVERKAD,') ;


  sq_PkgNoList.SQL.Add('SPE.SpeciesName AS TS,') ;
  sq_PkgNoList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  sq_PkgNoList.SQL.Add('Gr.GradeName AS KV,') ;
  sq_PkgNoList.SQL.Add('SUR.SurfacingName AS UT,') ;
  sq_PkgNoList.SQL.Add('PTL.STD_Length, Verk.ClientNo AS OwnerNo, Cy.CityName+'+QuotedStr('/')+'+lip.LogicalInventoryName AS Lager,') ;
  sq_PkgNoList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  sq_PkgNoList.SQL.Add(',isnull(avrPkg.Status,1) AS Status')
  else
  Begin
   sq_PkgNoList.SQL.Add(',pn.Status AS Status') ;
  End ;


  sq_PkgNoList.SQL.Add('FROM  dbo.Client Verk') ;

  sq_PkgNoList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  sq_PkgNoList.SQL.Add('Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;


  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
   if cbInvLista.ItemIndex = 0 then
   Begin
    sq_PkgNoList.SQL.Add('INNER JOIN dbo.InvControlrow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    sq_PkgNoList.SQL.Add('Left Outer Join dbo.AvrPkgInInvCtrl avrPkg on avrPkg.IC_GrpNo = invctrlrow.IC_GrpNo') ;
    sq_PkgNoList.SQL.Add('AND avrPkg.PackageNo = invctrlrow.PackageNo') ;
    sq_PkgNoList.SQL.Add('AND avrPkg.SupplierCode = invctrlrow.SupplierCode') ;
    sq_PkgNoList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    sq_PkgNoList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    sq_PkgNoList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
    sq_PkgNoList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End
   else
   Begin
    sq_PkgNoList.SQL.Add('INNER JOIN dbo.InvenRow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    sq_PkgNoList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    sq_PkgNoList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    sq_PkgNoList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
    sq_PkgNoList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End ;
  End
  else
   Begin
    sq_PkgNoList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    if dmInventory.cds_PkgListStatus.AsInteger = 0 then
    Begin
     sq_PkgList.SQL.Add('INNER JOIN dbo.Package_Production pp ON pp.PackageNo = pn.PackageNo') ;
     sq_PkgList.SQL.Add('AND pp.SupplierCode = pn.SupplierCode') ;
    End ;
    sq_PkgNoList.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
    sq_PkgNoList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;    
   End ;


//  if (mtActLengthMM.RecordCount > 0) or (cbShowSingleLengthPkgs.Checked) then
  Begin
   sq_PkgNoList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
   sq_PkgNoList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  End ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        sq_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'STYCK PER LÄNGD' ;
       End ;
   1 : Begin
        sq_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'AM3 PER LÄNGD' ;
       End ;
   2 : Begin
        sq_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'NM3 PER LÄNGD' ;
       End ;
   3 : Begin
        sq_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'ANTAL PER LÄNGD' ;
       End ;
  End ;


  sq_PkgNoList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_PkgNoList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  sq_PkgNoList.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_PkgNoList.SQL.Add('				AND imp.LanguageCode = 1') ;
  sq_PkgNoList.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_PkgNoList.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_PkgNoList.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_PkgNoList.SQL.Add('				AND SUR.LanguageCode = 1') ;

  sq_PkgNoList.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_PkgNoList.SQL.Add('				AND Gr.LanguageCode = 1') ;

  sq_PkgNoList.SQL.Add('Inner Join City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  sq_PkgNoList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  sq_PkgNoList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;



  sq_PkgNoList.SQL.Add('WHERE LIP.SequenceNo = 1') ;
  if StrToFloatDef(SelectedLength,0) > 0 then
  Begin
   sq_PkgNoList.SQL.Add('AND pl.ActualLengthMM = '+SelectedLength) ;
   sq_PkgNoList.SQL.Add('AND PTL.STD_Length = 1') ;
  End
  else
  if SelectedLength = 'ÖVRIGA' then
  Begin
   sq_PkgNoList.SQL.Add('AND (PTL.STD_Length = 0 or ls.NoOfLengths > 1)') ;
  End ;

//  sq_PkgNoList.SQL.Add('AND pn.Status = '+IntToStr(cds_PkgListStatus.AsInteger)) ;

  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
   sq_PkgNoList.SQL.Add('AND invctrlrow.IC_GrpNo = '+mtUserPropNewItemRow.AsString);

   if (cds_PkgListStatus.AsInteger = 0) and (cbInvLista.ItemIndex = 0) then
   Begin
    sq_PkgNoList.SQL.Add('AND invctrlrow.PackageNo IN (Select avrPkg.PackageNo FROM dbo.AvrPkgInInvCtrl avrPkg ') ;
    sq_PkgNoList.SQL.Add('WHERE avrPkg.IC_GrpNo = invctrlrow.IC_GrpNo') ;
    sq_PkgNoList.SQL.Add('AND avrPkg.SupplierCode = invctrlrow.SupplierCode)') ;
   end
   else
   if (cds_PkgListStatus.AsInteger = 1) and (cbInvLista.ItemIndex = 0) then
   Begin
    sq_PkgNoList.SQL.Add('AND invctrlrow.PackageNo NOT IN (Select avrPkg.PackageNo FROM dbo.AvrPkgInInvCtrl avrPkg ') ;
    sq_PkgNoList.SQL.Add('WHERE avrPkg.IC_GrpNo = invctrlrow.IC_GrpNo') ;
//    sq_PkgNoList.SQL.Add('AND avrPkg.PackageNo = invctrlrow.PackageNo') ;
    sq_PkgNoList.SQL.Add('AND avrPkg.SupplierCode = invctrlrow.SupplierCode)') ;
   end ;
  End
  else
  Begin
   sq_PkgNoList.SQL.Add('AND pn.Status = '+dmInventory.cds_PkgListStatus.AsString) ;
   if dmInventory.cds_PkgListStatus.AsInteger = 0 then
   Begin
    sq_PkgNoList.SQL.Add('AND pn.PackageNo not in (Select pp.PackageNo From dbo.Package_Production pp') ;
    sq_PkgNoList.SQL.Add('Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = pp.ProductionUnitNo') ;
    sq_PkgNoList.SQL.Add('WHERE pp.PackageNo = pn.PackageNo') ;
    sq_PkgNoList.SQL.Add('AND pp.SupplierCode = pn.SupplierCode') ;
    sq_PkgNoList.SQL.Add('AND pp.Operation = 3') ;
    sq_PkgNoList.SQL.Add('AND rp.SequenceNo = 1)') ;
   End ;
  End ;

  sq_PkgNoList.SQL.Add('AND pt.ProductNo = '+cds_PkgListProductNo.AsString) ;
  sq_PkgNoList.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(cds_PkgListLIPNo.AsInteger)) ;



  if mtUserPropSalesRegionNo.AsInteger > 0 then
  sq_PkgNoList.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

//  if mtUserPropPIPNo.AsInteger > 0 then  sq_PkgNoList.SQL.Add('AND pip.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then sq_PkgNoList.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;
//  sq_PkgNoList.SQL.Add(GetSQLofComboFilter(1, 'LIP.LogicalInventoryPointNo', cbLIP)) ;
//  sq_PkgNoList.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

//  if mtUserPropOwnerNo.AsInteger > 0 then
//  sq_PkgNoList.SQL.Add('AND Verk.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;

  if cbShowSingleLengthPkgs.Checked then
    sq_PkgNoList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

  sq_PkgNoList.SQL.Add('Group by pd.ProductNo, pd.ProductDisplayName, pt.PackageTypeNo, pn.PackageNo, pn.SupplierCode, pg.ActualThicknessMM,') ;
  sq_PkgNoList.SQL.Add('pg.ActualWidthMM, pt.TotalNoOfPieces, PTL.STD_Length, PTL.PcsPerLength, pt.Totalm3Actual, pt.Totalm3Nominal,') ;
  sq_PkgNoList.SQL.Add('pt.TotalLinealMeterActualLength, pt.TotalMFBMNominal, pt.TotalSQMofActualWidth, pn.DateCreated, SPE.SpeciesName,imp.ProductCategoryName,') ;
  sq_PkgNoList.SQL.Add('Gr.GradeName, SUR.SurfacingName, Verk.ClientNo, Cy.CityName, lip.LogicalInventoryName, lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo ') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  sq_PkgNoList.SQL.Add(',isnull(avrPkg.Status,1)')
  else
  sq_PkgNoList.SQL.Add(',pn.Status') ;



//  if thisuser.UserID = 8 then
// sq_PkgNoList.SQL.SaveToFile('sq_PkgNoList.txt');

 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.GetPkgNo(Sender: TObject);
Var PackageNo : Integer ; Supp_Code : String ;
    Save_Cursor : TCursor;
begin
 With dmInventory do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
//  if cbVolUnitLengths.ItemIndex = 3 then cbVolUnitLengths.ItemIndex:= 0 ;
  cds_PkgNoList.DisableControls ;
  grdPkgNoTblDBBandedTableView1.BeginUpdate ;
  grdPkgNoTblDBBandedTableView1.DataController.KeyFieldNames:= 'PKTNR;LEVKOD' ;
  grdPkgNoTblDBBandedTableView1.Bands[0].Visible:= True ;
  grdPkgNoTblDBBandedTableView1.Bands[0].FixedKind:= fkLeft ;
  grdPkgNoTblDBBandedTableView1.Bands[1].FixedKind:= fkNone ;

  Try
   cds_PkgNoList.Active:= False ;
//   pcInventory.ActivePage:= tsTABELL ;
   GenPkgNosDetailTable_SQL(Sender) ;

   PackageNo:=  cds_PkgNoListPKTNR.AsInteger ;
   Supp_Code:=  cds_PkgNoListLEVKOD.AsString ;
   cds_PkgNoList.Active:= True ;

   if cds_PkgNoList.Locate('PKTNR;LEVKOD', VarArrayOf([PackageNo, Supp_Code]),[]) then ;

   SetKolumnNameAndHideNonUsedKolumnsInPkgNoTable(Sender) ;

   if StrToFloatDef(SelectedLength,0) > 0 then
   grdPkgNoTblDBBandedTableView1.Bands[2].Caption:= cds_PkgListPRODUKT.AsString+'  '+SelectedLength
   else
   if SelectedLength = 'ÖVRIGA' then
   grdPkgNoTblDBBandedTableView1.Bands[2].Caption:= cds_PkgListPRODUKT.AsString +'  TP paket + ej std längder'
   else
   grdPkgNoTblDBBandedTableView1.Bands[2].Caption:= cds_PkgListPRODUKT.AsString ;

  Finally
   grdPkgNoTblDBBandedTableView1.EndUpdate ;
   cds_PkgNoList.EnableControls ;
   grdPkgNoTblDBBandedTableView1.Bands[2].ApplyBestFit ;
   Screen.Cursor := Save_Cursor ;
  End ;
 End ;
end;

procedure TfrmInventoryReport.SetKolumnNameAndHideNonUsedKolumnsInPkgNoTable (Sender: TObject);
Var x, y  : Integer ;
    AItem : TcxDataSummaryItem;
begin
 With dmInventory do
 Begin
  For x := 0 to 44 do
  Begin
   AItem := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryItems.ItemOfItemLink(cxGrid1DBBandedTableView1.Columns[x+21]) ;
    if mtUserPropLengthVolUnitNo.AsInteger = 0 then
   AItem.Format:= '########'
   else
   if mtUserPropLengthVolUnitNo.AsInteger = 1 then
   AItem.Format:= '########.0'
   else
   AItem.Format:= '########' ;
  End ;


 x := 21 ;

  For y := x to 65 do
   grdPkgNoTblDBBandedTableView1.Columns[y].Caption:= 'L' ;

  cds_ProductLengthInGroup.Active:= False ;
  sq_ProductLengthInGroup.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  cds_ProductLengthInGroup.Active:= True ;
  cds_ProductLengthInGroup.First ;
  While not cds_ProductLengthInGroup.Eof do
  Begin

   Case mtUserPropLengthFormatNo.AsInteger of
     cAKT_MM      : grdPkgNoTblDBBandedTableView1.Columns[x].Caption:= cds_ProductLengthInGroupALMM.AsString ;
     cNOM_MM      : grdPkgNoTblDBBandedTableView1.Columns[x].Caption:= cds_ProductLengthInGroupNLMM.AsString ;
     cFOT         : grdPkgNoTblDBBandedTableView1.Columns[x].Caption:= cds_ProductLengthInGroupFOT.AsString ;
     cTUM         : grdPkgNoTblDBBandedTableView1.Columns[x].Caption:= cds_ProductLengthInGroupTUM.AsString ;
     cAKT_NOM_MM  : grdPkgNoTblDBBandedTableView1.Columns[x].Caption:= cds_ProductLengthInGroupALMM.AsString+' ('+cds_ProductLengthInGroupNLMM.AsString+')' ;
     cFOT_TUM     : grdPkgNoTblDBBandedTableView1.Columns[x].Caption:= cds_ProductLengthInGroupFOT.AsString+' ('+Trim(cds_ProductLengthInGroupTUM.AsString)+')' ;
     cFOT_AKTMM   : grdPkgNoTblDBBandedTableView1.Columns[x].Caption:= cds_ProductLengthInGroupFOT.AsString+' ('+cds_ProductLengthInGroupALMM.AsString+')' ;
   End ;


   grdPkgNoTblDBBandedTableView1.Columns[x].Visible:= True ;
   x:= succ(x) ;
   cds_ProductLengthInGroup.Next ;
  End ;//While

//  x:= x-1 ;
  For y := x to 65 do
   grdPkgNoTblDBBandedTableView1.Columns[y].Visible:= False ;

  cds_ProductLengthInGroup.Active:= False ;
 End ;//with
End ;

procedure TfrmInventoryReport.mtUserPropAfterInsert(DataSet: TDataSet);
begin
 mtUserPropRegDate.AsDateTime           := Now ;
// mtUserPropProductGroupNo.AsInteger     := -1 ;
 mtUserPropProductNo.AsInteger          := -1 ;
 mtUserPropProductDescription.AsString  := 'Ingen ändring' ;
 mtUserPropLIPChange.AsInteger          := 0 ;
 mtUserPropVerkNo.AsInteger             := 0 ;
end;

procedure TfrmInventoryReport.mtUserPropOwnerNoChange(Sender: TField);
begin
// With dm_UserProps do
// Begin

{  cds_PLIP.Active:= False ;
  sq_PLIP.ParamByName('OwnerNo').AsInteger:= mtUserPropOwnerNo.AsInteger ;
  if mtUserPropRoleType.AsInteger = cLego then
  sq_PLIP.ParamByName('LegoOwnerNo').AsInteger:= mtUserPropOwnerNo.AsInteger
  else
  sq_PLIP.ParamByName('LegoOwnerNo').AsInteger:= mtUserPropOwnerNo.AsInteger ;
  cds_PLIP.Active:= True ;

  cbLIP.Properties.Items.Clear ;
  While not cds_PLIP.Eof do
  Begin
   cbLIP.Properties.Items.AddCheckItem(cds_PLIP.FieldByName('PLIP').AsString, cds_PLIP.FieldByName('InvCode').AsString) ;
   cds_PLIP.Next ;
  End ;
  cds_PLIP.Active:= False ; }


{  cds_PIP2.Active:= False ;
  sq_PIP2.ParamByName('OwnerNo').AsInteger:= mtUserPropOwnerNo.AsInteger ;
  if mtUserPropRoleType.AsInteger = cLego then
  sq_PIP2.ParamByName('LegoOwnerNo').AsInteger:= mtUserPropOwnerNo.AsInteger
  else
  sq_PIP2.ParamByName('LegoOwnerNo').AsInteger:= mtUserPropOwnerNo.AsInteger ;
  cds_PIP2.Active:= True ;
  cds_PIP2.InsertRecord([-1, '*ALLA']);
  cds_PIP2.First ;
  mtUserPropPIPNo.AsInteger:= cds_PIP2PIPNO.AsInteger ; }
// End ;
end;

procedure TfrmInventoryReport.mtUserPropPIPNoChange(Sender: TField);
begin
 With dm_UserProps do
 Begin

{
  cds_LIP2.Active:= False ;
  sq_LIP2.ParamByName('PIPNo').AsInteger:= mtUserPropPIPNo.AsInteger ;
  cds_LIP2.Active:= True ;

  cbLIP.Properties.Items.Clear ;
  While not cds_LIP2.Eof do
  Begin
   cbLIP.Properties.Items.AddCheckItem(cds_LIP2.FieldByName('LIPName').AsString, cds_LIP2.FieldByName('LIPNo').AsString) ;
   cds_LIP2.Next ;
  End ;
  cds_LIP2.Active:= False ; }

{
  cds_LIP2.Active:= False ;
  sq_LIP2.ParamByName('PIPNo').AsInteger:= mtUserPropPIPNo.AsInteger ;
  cds_LIP2.Active:= True ;
  cds_LIP2.InsertRecord([-1, '*ALLA']);
  cds_LIP2.First ;
  mtUserPropLIPNo.AsInteger:= cds_LIP2LIPNo.AsInteger ; }
 End ;
end;

procedure TfrmInventoryReport.mtUserPropSalesRegionNoChange(
  Sender: TField);
Var x : Integer ;
begin
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


(*
// With dm_UserProps do
// Begin
  if mtUserPropSalesRegionNo.AsInteger > 0 then
   cds_Verk.Filter:= 'SalesRegionNo = '+mtUserPropSalesRegionNo.AsString
    else
     cds_Verk.Filter:= 'SalesRegionNo = -1' ;
  cds_Verk.Filtered:= True ;
  if not cds_Verk.Locate('ClientName;SalesRegionNo', VarArrayOf(['*ALLA', mtUserPropSalesRegionNo.AsInteger]), []) then
  cds_Verk.InsertRecord([-1, '*ALLA', '*ALLA', mtUserPropSalesRegionNo.AsInteger]);
// End ;
*)
end;

procedure TfrmInventoryReport.grdPkgNoTblDBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;

procedure TfrmInventoryReport.acRegistreraPaketExecute(Sender: TObject);
Var frmPkgEntry : TfrmPkgEntry ;
begin
 if ThisUser.CanView[dcAdd_packagesSec] then
 Begin
  dmsPkg:= TdmsPkg.Create(Nil) ;
  frmPkgEntry:= TfrmPkgEntry.Create(Nil);
  Try
   frmPkgEntry.ShowModal ;
  Finally
   dmsPkg.mtpackages.Active:= False ;
   FreeAndNil(frmPkgEntry) ;
   FreeAndNil(dmsPkg) ;
  End ;
 End ;
end ;

procedure TfrmInventoryReport.SelectedPkgsOfPkgNosTable ;
 Var i, RecIDX  : Integer ;
 RecID          : Variant ;
 ADATASET       : TDATASET;
 Save_Cursor    : TCursor;
begin
 Save_Cursor  := Screen.Cursor;
 Screen.Cursor:= crSQLWait;    { Show hourglass cursor }
 grdPkgNoTblDBBandedTableView1.BeginUpdate ;
 grdPkgNoTblDBBandedTableView1.DataController.BeginLocate ;
 Try
   ADataSet := grdPkgNoTblDBBandedTableView1.DataController.DataSource.DataSet ;
   For I := 0 to grdPkgNoTblDBBandedTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdPkgNoTblDBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdPkgNoTblDBBandedTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('PKTNR;LEVKOD', RecID,[]) ;

    mtPkgNos.Insert ;
    mtPkgNosPackageNo.AsInteger := ADataSet.FieldByName('PKTNR').AsInteger ;
    mtPkgNosSupp_Code.AsString  := ADataSet.FieldByName('LEVKOD').AsString ;
    mtPkgNosOwnerNo.AsInteger   := ADataSet.FieldByName('OwnerNo').AsInteger ;
    mtPkgNosPIPNo.AsInteger     := ADataSet.FieldByName('PIPNo').AsInteger ;
    mtPkgNosLIPNo.AsInteger     := ADataSet.FieldByName('LIPNo').AsInteger ;
    mtPkgNosStatus.AsInteger    := ADataSet.FieldByName('Status').AsInteger ;
    mtPkgNos.Post ;
   End ;

 Finally
  grdPkgNoTblDBBandedTableView1.DataController.EndLocate ;
  grdPkgNoTblDBBandedTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmInventoryReport.SelectedPkgsOfPkgTbl ;
 Var i, RecIDX  : Integer ;
 RecID          : Variant ;
 ADATASET       : TDATASET;
 Save_Cursor    : TCursor;
begin
 Save_Cursor  := Screen.Cursor;
 Screen.Cursor:= crSQLWait;    { Show hourglass cursor }
 cxGrid1DBBandedTableView1.BeginUpdate ;
 cxGrid1DBBandedTableView1.DataController.BeginLocate ;
 Try
   ADataSet := cxGrid1DBBandedTableView1.DataController.DataSource.DataSet ;
   For I := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := cxGrid1DBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := cxGrid1DBBandedTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('PKTNR;LEVKOD', RecID,[]) ;

    mtPkgNos.Insert ;
    mtPkgNosPackageNo.AsInteger := ADataSet.FieldByName('PKTNR').AsInteger ;
    mtPkgNosSupp_Code.AsString  := ADataSet.FieldByName('LEVKOD').AsString ;
    mtPkgNosOwnerNo.AsInteger   := ADataSet.FieldByName('OwnerNo').AsInteger ;
    mtPkgNosPIPNo.AsInteger     := ADataSet.FieldByName('PIPNo').AsInteger ;
    mtPkgNosLIPNo.AsInteger     := ADataSet.FieldByName('LIPNo').AsInteger ;
    mtPkgNos.Post ;
   End ;

 Finally
  cxGrid1DBBandedTableView1.DataController.EndLocate ;
  cxGrid1DBBandedTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmInventoryReport.acChangePackagesExecute(Sender: TObject);
Var ffelRegPkg : TffelRegPkg ;
begin
 mtPkgNos.Active:= True ;
 Try
 SelectedPkgsOfPkgNosTable ;
 if mtPkgNos.RecordCount > 0 then
 Begin
  ffelRegPkg:= TffelRegPkg.Create(Nil);
  Try
   ffelRegPkg.CreateCo ;
   ffelRegPkg.RemotePkgEntry(mtPkgNos) ;
   ffelRegPkg.ShowModal ;
  Finally
   FreeAndNil(ffelRegPkg) ;
  End ;
 End ;
 Finally
  mtPkgNos.Active:= False ;
 End ;
end;

procedure TfrmInventoryReport.acAvRegistreraPaketExecute(Sender: TObject);
begin
 mtPkgNos.Active:= True ;
 Try
 SelectedPkgsOfPkgNosTable ;
 if ThisUser.CanView[dcAdd_packagesSec] then
 Begin
  frmRemovePkg:= TfrmRemovePkg.Create(Nil);
  Try
   frmRemovePkg.RemotePkgEntry(mtPkgNos) ;
   frmRemovePkg.CreateCo ;
   frmRemovePkg.ShowModal ;
  Finally
   FreeAndNil(frmRemovePkg) ;
  End ;
 End ;
 Finally
  mtPkgNos.Active:= False ;
 End ;
end;

procedure TfrmInventoryReport.acSkrivUtPkgNosExecute(Sender: TObject);
begin
  dxComponentPrinter1Link4.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Clear ;
  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
  if (cbInvLista.ItemIndex = 0) then
   dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Add('Kontrollista inventeringnr: '+mtUserPropNewItemRow.AsString)
    else
     dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Add('Resultatlista inventeringnr: '+mtUserPropNewItemRow.AsString) ;
  End
  else
  dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Add('Lagerlista') ;
  dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Add(grdPkgNoTblDBBandedTableView1.Bands[2].Caption) ;
//  dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  dxComponentPrinter1Link4.PrinterPage.PageHeader.LeftTitle.Add(grdPkgNoTblDBBandedTableView1Lager.EditValue) ;

  dxComponentPrinter1Link4.PrinterPage.Orientation    := poLandscape ;
  dxComponentPrinter1Link4.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link4.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link4.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link4) ;
end;

procedure TfrmInventoryReport.acExportPkgNosExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  ExportPkgNoTables(Sender) ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmInventoryReport.ExportPkgNoTables(Sender: TObject);
const
  LF = #10;
Var 
    A                       : Array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : Array of String ;
    MailToAddress           : String ;
    Subject                 : String ;
    InfogadHTMLFil          : String ;
begin
 Subject:= 'Paketspecifikation' ;

 InfogadHTMLFil:= ExportToHTML('paketspec', grdPkgNoTbl) ;

 MailToAddress:= 'ange@address.se' ;

 SetLength(Attach, 1);
 Attach[0]:= InfogadHTMLFil ;
// Attach[1]:= ExtractFilePath(Forms.Application.ExeName) + '\'+'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 dm_SendMapiMail:= Tdm_SendMapiMail.Create(nil);
 Try

  dm_SendMapiMail.SendMail(Subject,
  'Paketspecifikation inkluderad. '
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +'Lars',//dmsContact.GetFirstAndLastName(ThisUser.UserID),
  'lars.makiaho@falubo.se',
  MailToAddress,
  InfogadHTMLFil,
  Attach) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
end;

procedure TfrmInventoryReport.ExportPkgTables(Sender: TObject);
const
  LF = #10;
Var 
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : Array of String ;
    MailToAddress           : String ;
    Subject                 : String ;
    InfogadHTMLFil          : String ;
begin
 Subject:= 'Paketspecifikation' ;

 InfogadHTMLFil:= ExportToHTML('paketspec', cxGrid1) ;

 MailToAddress:= 'ange@address.se';//'lars.makiaho@gmail.com' ;

 SetLength(Attach, 1);
 Attach[0]:= InfogadHTMLFil ;
// Attach[1]:= ExtractFilePath(Forms.Application.ExeName) + '\'+'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 dm_SendMapiMail         := Tdm_SendMapiMail.Create(nil);
 Try

  dm_SendMapiMail.SendMail(Subject,
  'Paketspecifikation inkluderad. '
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +'Lars',//dmsContact.GetFirstAndLastName(ThisUser.UserID),
  'lars.makiaho@falubo.se',
  MailToAddress,
  InfogadHTMLFil,
  Attach) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;

end;

function TfrmInventoryReport.ExportToHTML(const pFilNamn : String;grd: TcxGrid) : String ;
Var FilNamn       : String ;
    ProdExportMap : String ;
    Title         : String ;
begin

 Title:= pFilNamn ;
// FilNamn:= 'paketspec' ;
 ProdExportMap:= dmsSystem.Get_SystemDir(ThisUser.UserID, 'Global', 'UserDir') ;
 FilNamn:= ProdExportMap+pFilNamn;
 ExportGridToHTML(FilNamn, grd, False, False,'html');

// cxExportPivotGridToHTML(FilNamn ,  pivProduction, True, 'html');
 FilNamn:= FilNamn+'.html' ;
// Memo1.Lines.Clear ;
// Memo1.Lines.LoadFromFile(FilNamn);

{ For x := 0 to Memo1.Lines.Count - 1 do
 Begin
  if Memo1.Lines.Strings[x] = '<BODY>' then
  Begin
   Memo1.Lines.Insert(x+1,'<p align="center">'+Title+'</p>');
   Break ;
  End ;
 End ; }

// Memo1.Lines.SaveToFile(FilNamn);
 Result:= FilNamn ;
end;

procedure TfrmInventoryReport.acChangeLayoutPkgNosExecute(Sender: TObject);
begin
  if grdPkgNoTbl.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdPkgNoTbl.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfrmInventoryReport.acGroupByBoxExecute(Sender: TObject);
begin
 acGroupByBox.Checked := not acGroupByBox.Checked ;
 cxGrid1DBBandedTableView1.OptionsView.GroupByBox:= acGroupByBox.Checked ;
end;

procedure TfrmInventoryReport.acGroupSummaryExecute(Sender: TObject);
begin
 acGroupSummary.Checked:= not acGroupSummary.Checked ;
 if acGroupSummary.Checked then
  cxGrid1DBBandedTableView1.OptionsView.GroupFooters:= gfAlwaysVisible
   else
    cxGrid1DBBandedTableView1.OptionsView.GroupFooters:= gfInvisible ;
end;

procedure TfrmInventoryReport.acColAutoWidthSortimentExecute(
  Sender: TObject);
begin
 acColAutoWidthSortiment.Checked                          := not acColAutoWidthSortiment.Checked ;
 cxGrid1DBBandedTableView1.OptionsView.ColumnAutoWidth  := acColAutoWidthSortiment.Checked ;
end;

procedure TfrmInventoryReport.acPkgInfoPkgNosTableExecute(Sender: TObject);
var frmPkgInfo: TfrmPkgInfo;
begin
 With dmInventory do
 Begin
  frmPkgInfo:= TfrmPkgInfo.Create(Nil);
  Try
   frmPkgInfo.PackageNo     := cds_PkgNoListPKTNR.AsInteger ;
   frmPkgInfo.SupplierCode  := cds_PkgNoListLEVKOD.AsString ;
   frmPkgInfo.ShowModal ;
  Finally
   FreeAndNil(frmPkgInfo) ;
  End ;
 End ;
end;

procedure TfrmInventoryReport.acMovePkgsInterntExecute(Sender: TObject);
begin
 mtPkgNos.Active:= True ;
 Try
 SelectedPkgsOfPkgNosTable ;
 if ThisUser.CanView[dcAdd_packagesSec] then
 Begin
  frmMovePkgs:= TfrmMovePkgs.Create(Nil);
  Try
   frmMovePkgs.RemotePkgEntry(mtPkgNos) ;
   frmMovePkgs.CreateCo(False) ;
   frmMovePkgs.ShowModal ;
  Finally
   FreeAndNil(frmMovePkgs) ;
  End ;
 End ;
 Finally
  mtPkgNos.Active:= False ;
 End ;
end;

procedure TfrmInventoryReport.cxLabel14Click(Sender: TObject);
begin
 Close ;
end;

procedure TfrmInventoryReport.cxLabel15Click(Sender: TObject);
begin
 ClearProductFilter ;
end;

procedure TfrmInventoryReport.acNewTorkSatsExecute(Sender: TObject);
var fKilnWizard   : TfKilnWizard;
    NewKilnChargeNo, KilnChargeNo  : Integer ;
begin
 With dm_DryKiln do
 Begin
  KilnChargeNo:= -1 ;
  fKilnWizard:= TfKilnWizard.Create(nil) ;
  Try
   cds_KilnChargeHdr.ReadOnly:= False ;
   cds_KilnChargeHdr.Insert ;
   NewKilnChargeNo:= cds_KilnChargeHdrKilnChargeNo.AsInteger ;
   if fKilnWizard.ShowModal = mrOK then
   Begin
    //Get previous kilnchargeno for selected newly kilnNo where status is aktiv
    KilnChargeNo:= GetPrevKilnChargeNo(cds_KilnChargeHdrKilnNo.AsInteger) ;
    if KilnChargeNo > 0 then
     MoveToAfterKilnAndSetKilnToComplete(KilnChargeNo, cds_KilnChargeHdrStartTime.AsSQLTimeStamp) ;
    cds_KilnChargeHdr.Post ;
    acSaveTorkSatsExecute(Sender) ;
    cds_KilnChargeHdr.Refresh ;
    cds_KilnChargeHdr.Locate('KilnChargeNo', NewKilnChargeNo, []) ;

   End
   else
   Begin
    cds_KilnChargeHdr.Cancel ;
   End ;

  Finally
   FreeAndNil(fKilnWizard) ;
  End ;
 End ;
end;

procedure TfrmInventoryReport.acTabortTorkSatsExecute(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  //Kolla att alla rader är borta först
  if MessageDlg('Är du säker',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   cds_KilnChargeHdr.Delete ;
   acSaveTorkSatsExecute(Sender) ;
  End ; 
 End ;
end;

procedure TfrmInventoryReport.acSaveTorkSatsExecute(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  if cds_KilnChargeHdr.State in [dsEdit, dsInsert] then
   cds_KilnChargeHdr.Post ;
  if cds_KilnChargeHdr.ChangeCount > 0 then
   cds_KilnChargeHdr.ApplyUpdates(0) ;

  if cds_KilnChargeRow.State in [dsEdit, dsInsert] then
   cds_KilnChargeRow.Post ;
  if cds_KilnChargeRow.ChangeCount > 0 then
   cds_KilnChargeRow.ApplyUpdates(0) ;
 End ;
end;

procedure TfrmInventoryReport.acCancelChangesTorkSatsExecute(
  Sender: TObject);
begin
 if MessageDlg('Är du säker',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dm_DryKiln do
 Begin
  if cds_KilnChargeHdr.State in [dsEdit, dsInsert] then
   cds_KilnChargeHdr.Cancel ;
  if cds_KilnChargeHdr.ChangeCount > 0 then
   cds_KilnChargeHdr.CancelUpdates ;

  if cds_KilnChargeRow.State in [dsEdit, dsInsert] then
   cds_KilnChargeRow.Cancel ;
  if cds_KilnChargeRow.ChangeCount > 0 then
   cds_KilnChargeRow.CancelUpdates ;
 End ;
end;

procedure TfrmInventoryReport.acGetTorkSatsExecute(Sender: TObject);
var fKilnCharges: TfKilnCharges ;
begin
 fKilnCharges:= TfKilnCharges.Create(nil);
 try
  fKilnCharges.ShowModal ;
 finally
  FreeAndNil(fKilnCharges) ;
 end;
end;

procedure TfrmInventoryReport.acPrintTorkSatsExecute(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  dxComponentPrinter1Link5.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link5.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link5.PrinterPage.PageHeader.CenterTitle.Add('Torksats: '+deStartTime.Text+' - '+deEndTime.Text) ;
  dxComponentPrinter1Link5.PrinterPage.PageHeader.CenterTitle.Add('Tork: '+lcTork.Text) ;
  dxComponentPrinter1Link5.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  dxComponentPrinter1Link5.PrinterPage.PageHeader.CenterTitle.Add(cds_KilnChargeHdrNote.AsString) ;

//  dxComponentPrinter1Link5.PrinterPage.PageHeader.LeftTitle.Add('Löpnr: '+cds_InvCtrlGrpIC_grpno.AsString) ;

  dxComponentPrinter1Link5.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link5.ShrinkToPageWidth:= True ;
  dxComponentPrinter1Link5.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1Link5.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link5) ;
 End ;
end;

procedure TfrmInventoryReport.acTabortTorkSatsUpdate(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  acTabortTorkSats.Enabled:= (cds_KilnChargeHdr.Active) and (cds_KilnChargeRow.RecordCount = 0)
  and (cds_KilnChargeHdr.RecordCount > 0) ;
 End ;
end;

procedure TfrmInventoryReport.acSaveTorkSatsUpdate(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  acSaveTorkSats.Enabled:= Not KilnDataSaved ;
 End ;
end;

procedure TfrmInventoryReport.acNewTorkSatsUpdate(Sender: TObject);
begin
 acNewTorkSats.Enabled:= KilnDataSaved ;
end;

procedure TfrmInventoryReport.acCancelChangesTorkSatsUpdate(
  Sender: TObject);
begin
 acCancelChangesTorkSats.Enabled:= not KilnDataSaved ;
end;

procedure TfrmInventoryReport.acAddKilnRowExecute(Sender: TObject);
begin
 if ClickedF10 then
 AddRowPerSortiment(Sender)
 else
 AddRowPerPaketNr(Sender);
end;

procedure TfrmInventoryReport.acRemoveKilnRowExecute(Sender: TObject);
var NoOfPkgs    : Integer ;
begin
 With dm_DryKiln do
 Begin
  Self.mtPkgNos.Active:= False ;
  Self.mtPkgNos.Active:= True ;
  Try
  NoOfPkgs:= cds_SumKilnChargeRowsPaket.AsInteger ;
   //Now add pkgs to torksats!
  GetPkgNosOfKilnChargePackageNo(NoOfPkgs, Self.mtPkgNos) ;
  RemovePkgsFromKilnRow(Self.mtPkgNos) ;
  cds_SumKilnChargeRows.Active  := False ;
  cds_SumKilnChargeRows.Active  := True ;
  dmInventory.cds_PkgList.Active:= False ;
  dmInventory.cds_PkgList.Active:= True ;

  cds_KilnChargeRow.Active  := False ;
  cds_KilnChargeRow.Active  := True ;

  Finally
   Self.mtPkgNos.Active:= False ;
  End ;
 End ;//with
end;


procedure TfrmInventoryReport.acAddKilnRowUpdate(Sender: TObject);
begin
 acAddKilnRow.Enabled:=
 (pcPktNrAndTorkSats.ActivePage = tsTorkSats)
 AND (
 (ClickedF10) and (Length(SelectedLength) > 0) and (SelectedProductNo > 0)
 and (CurrentNoOfPkgs > 0)
 and (dmInventory.cds_PkgList.Active)
 and (dmInventory.cds_PkgList.RecordCount > 0)
 and (dm_DryKiln.cds_KilnChargeHdr.Active)
 and (KilnDataSaved)
 and (dm_DryKiln.cds_KilnChargeHdr.RecordCount > 0)
 and (dm_DryKiln.cds_KilnChargeHdrStatus.AsInteger = 0)
 and (not dm_DryKiln.cds_KilnPropsBeforeKiln_LIPNo.IsNull)
 and (not dm_DryKiln.cds_KilnPropsKiln_LIPNo.IsNull)
 and (mtUserPropNewItemRow.AsInteger < 1)
 )

 OR

 (
 (not ClickedF10)
 and (cxGrid1DBBandedTableView1.Controller.SelectedRecordCount > 0)
 and (dmInventory.cds_PkgList.Active)
 and (dmInventory.cds_PkgList.RecordCount > 0)
 and (dm_DryKiln.cds_KilnChargeHdr.Active)
 and (KilnDataSaved)
 and (dm_DryKiln.cds_KilnChargeHdr.RecordCount > 0)
 and (dm_DryKiln.cds_KilnChargeHdrStatus.AsInteger = 0)
 and (not dm_DryKiln.cds_KilnPropsBeforeKiln_LIPNo.IsNull)
 and (not dm_DryKiln.cds_KilnPropsKiln_LIPNo.IsNull)
 and (mtUserPropNewItemRow.AsInteger < 1)
 )
end;

procedure TfrmInventoryReport.AddRowPerSortiment(Sender: TObject);
var fEntryField   : TfEntryField;
    NoOfPkgs      : Integer ;
    Save_Cursor   : TCursor ;
    LengthChoosen : String ;
begin
 With dm_DryKiln do
 Begin
  acSaveTorkSatsExecute(Sender) ;
  if (cds_KilnPropsBeforeKiln_LIPNo.AsInteger <> dmInventory.cds_PkgListLIPNo.AsInteger)
//  or (cds_KilnPropsBeforeKiln_LIPNo.AsInteger <> mtUserPropLIPNo.AsInteger)
  then
  Begin
   ShowMessage('Paket kan bara läggas till en torksats från lagergruppen som är definerad som "Före tork".') ;
   Exit ;
  End ;
{  if dmInventory.cds_PkgListSTD_Length.AsInteger = 0 then
  Begin
   ShowMessage('Växla till paketnummer vy (F8) för att lägga till paket med speciallängder') ;
   Exit ;
  End ; }
  Try

//  if (cds_KilnChargeHdr.Active) and (cds_KilnChargeHdrKilnChargeNo.AsInteger > 0) then
//   Begin
   fEntryField := TfEntryField.Create(nil);
   Try
    fEntryField.LExtraInfo.Caption:= 'Lägg paket till torksats' ;
    if SelectedLength = 'ÖVRIGA' then
    Begin
     fEntryField.Caption:= 'Ange antal av ' + dmInventory.cds_PkgListPRODUKT.AsString+' och välj längd.' ;
     fEntryField.PanelLength.Visible  := True ;
     dmInventory.Open_sq_OtherLengths(dmInventory.cds_PkgListOwnerNo.AsInteger, SelectedProductNo, dmInventory.cds_PkgListLIPNo.AsInteger, mtUserPropLengthGroupNo.AsInteger) ;
    End
     else
      Begin
       fEntryField.Caption:= 'Ange antal av ' + dmInventory.cds_PkgListPRODUKT.AsString + ' / ' + SelectedLength ;
       fEntryField.PanelLength.Visible  := False ;
      End ;
    if fEntryField.ShowModal = mrOK then
    Begin
     if SelectedLength = 'ÖVRIGA' then
      LengthChoosen:= dmInventory.Selected_sq_OtherLengths
       else
        LengthChoosen:= SelectedLength ;
     if LengthChoosen <> 'Not valid' then
     Begin
      NoOfPkgs:= fEntryField.seAntalPaket.Value ;// strtointdef(fEntryField.eValue.Text,-1) ;
      if CurrentNoOfPkgs >= NoOfPkgs then
      Begin

    //Now add pkgs to torksats!
       AddPkgsToTorkSatsTablePerSortiment (mtUserPropLengthGroupNo.AsInteger, SelectedProductNo, NoOfPkgs, LengthChoosen, dmInventory.cds_PkgListPRODUKT.AsString) ;

       Save_Cursor    := Screen.Cursor;
       Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
       Try
        cds_SumKilnChargeRows.Active  := False ;
        Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
        cds_SumKilnChargeRows.Active  := True ;
        Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
        dmInventory.cds_PkgList.Active:= False ;
        Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
        dmInventory.cds_PkgList.Active:= True ;
        Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
       Finally
        Screen.Cursor := Save_Cursor;  { Always restore to normal }
       End ;
      End
       else
        ShowMessage('Angivet antal paket överstiger antal paket i lager.');
     End
      else
       ShowMessage('Paket med flera längder registreras paketnr vis.');
    End ;

   Finally
     FreeAndNil(fEntryField) ;
   End ;

//   End ;
  Except

  End ;
 End ;//with

end;

procedure TfrmInventoryReport.AddRowPerPaketNr(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  acSaveTorkSatsExecute(Sender) ;
  if (cds_KilnPropsBeforeKiln_LIPNo.AsInteger <> dmInventory.cds_PkgListLIPNo.AsInteger)
//  or (cds_KilnPropsBeforeKiln_LIPNo.AsInteger <> mtUserPropLIPNo.AsInteger)
  then
  Begin
   ShowMessage('Paket kan bara läggas till en torksats från lagergruppen som är definerad som "Före tork".') ;
   Exit ;
  End ;

  Self.mtPkgNos.Active:= True ;
  Try
   Try
   SelectedPkgsOfPkgTbl ;
   AddPkgsToTorkSatsTablePerPaketNr(Self.mtPkgNos) ;
   RemovePackageFrom_grdPkgTbl(Sender) ;
   cds_SumKilnChargeRows.Active  := False ;
   cds_SumKilnChargeRows.Active  := True ;
   dmInventory.cds_PkgList.Active:= False ;
   dmInventory.cds_PkgList.Active:= True ;
   Except
   End ;
  Finally
   Self.mtPkgNos.Active:= False ;
  End ;

 End ;//with
end;

procedure TfrmInventoryReport.acRemoveKilnPkgsExecute(Sender: TObject);
var fEntryField : TfEntryField;
    NoOfPkgs    : Integer ;
begin
 With dm_DryKiln do
 Begin
  Self.mtPkgNos.Active:= True ;
  fEntryField := TfEntryField.Create(nil);
  Try
   fEntryField.LExtraInfo.Caption:= 'Lägg paket tillbaka till lager före tork' ;
   fEntryField.Caption:= 'Ange antal av ' + cds_SumKilnChargeRowsProdukt.AsString+' / '+cds_SumKilnChargeRowsAntalperlngd.AsString ;
   if fEntryField.ShowModal = mrOK then
   Begin
    NoOfPkgs:= fEntryField.seAntalPaket.Value ;// strtointdef(fEntryField.eValue.Text,-1) ;
   //Now add pkgs to torksats!
    if cds_SumKilnChargeRowsPaket.AsInteger >= NoOfPkgs then
    Begin
     GetPkgNosOfKilnChargePackageNo(NoOfPkgs, Self.mtPkgNos) ;
     RemovePkgsFromKilnRow(Self.mtPkgNos) ;
     cds_SumKilnChargeRows.Active   := False ;
     cds_SumKilnChargeRows.Active   := True ;
     dmInventory.cds_PkgList.Active := False ;
     dmInventory.cds_PkgList.Active := True ;
     cds_KilnChargeRow.Active       := False ;
     cds_KilnChargeRow.Active       := True ;
    End ;
   End ;

  Finally
   FreeAndNil(fEntryField) ;
   Self.mtPkgNos.Active:= False ;
  End ;
 End ;//with
end;

procedure TfrmInventoryReport.acMovePkgsFromKilnToAfterKilnUpdate(
  Sender: TObject);
begin
 acMovePkgsFromKilnToAfterKiln.Enabled :=
  (dm_DryKiln.cds_KilnChargeHdr.Active)
 and (KilnDataSaved)
 and (dm_DryKiln.cds_KilnChargeHdr.RecordCount > 0)
 and (dm_DryKiln.cds_KilnChargeHdrStatus.AsInteger = 0)
 and (not dm_DryKiln.cds_KilnPropsAfterKiln_LIPNo.IsNull) ;
end;

procedure TfrmInventoryReport.acKilnChargeNoteExecute(Sender: TObject);
var   fKilnChargeNote           : TfKilnChargeNote;
      cds_KilnChargeHdrREADONLY : Boolean ;
begin
 dm_DryKiln.ds_KilnChargeHdr.OnDataChange:= nil ;
 fKilnChargeNote:= TfKilnChargeNote.Create(nil);
 Try
  if dm_DryKiln.cds_KilnChargeHdr.ReadOnly then
  Begin
   cds_KilnChargeHdrREADONLY              := dm_DryKiln.cds_KilnChargeHdr.ReadOnly ;
   dm_DryKiln.cds_KilnChargeHdr.ReadOnly  := False ;
  End ;
  if fKilnChargeNote.ShowModal = mrOK then
  Begin
   acSaveTorkSatsExecute(Sender) ;
   if cds_KilnChargeHdrREADONLY then
    dm_DryKiln.cds_KilnChargeHdr.ReadOnly:= cds_KilnChargeHdrREADONLY ;
  End ;
 Finally
  FreeAndNil(fKilnChargeNote) ;
  dm_DryKiln.ds_KilnChargeHdr.OnDataChange:= dm_DryKiln.ds_KilnChargeHdrDataChange ;
 End ;
end;

procedure TfrmInventoryReport.acRemoveKilnPkgsUpdate(Sender: TObject);
begin
 acRemoveKilnPkgs.Enabled :=
  (dm_DryKiln.cds_KilnChargeHdr.Active)
 and (KilnDataSaved)
 and (dm_DryKiln.cds_KilnChargeHdr.RecordCount > 0)
 and (dm_DryKiln.cds_KilnChargeHdrStatus.AsInteger = 0) ;
end;

procedure TfrmInventoryReport.cxGrid1DBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;

procedure TfrmInventoryReport.cxGrid1DBBandedTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if pcPktNrAndTorkSats.ActivePage <> tsTorkSats then
 Begin
  if RightButton then
  pmPkgTable.PopupFromCursorPos ;
  SelectedLength     := ACellViewInfo.Item.Caption ;
  SelectedProductNo  := cxGrid1DBBandedTableView1.DataController.DataSource.DataSet.FieldByName('ProductNo').AsInteger ;
  Try
  CurrentNoOfPkgs    := ACellViewInfo.Value ;
  Except
  End ;
  Exit ;
 End ;
 AHandled:= True ;
// if cxGrid1DBBandedTableView1.DataController.DataSource.DataSet.FieldByName('STD_Length').AsInteger = 1 then
// Begin
  SelectedProductNo  := cxGrid1DBBandedTableView1.DataController.DataSource.DataSet.FieldByName('ProductNo').AsInteger ;
  SelectedLength     := ACellViewInfo.Item.Caption ;
  Try
  CurrentNoOfPkgs    := ACellViewInfo.Value ;
  Except
  End ;
{ End
 else
 Begin
  SelectedProductNo  := -1 ;
  SelectedLength     := '' ;
  CurrentNoOfPkgs    := 0 ;
 End ; }
 if RightButton then
 pmPkgTable.PopupFromCursorPos ;
end;

procedure TfrmInventoryReport.cxGrid1DBBandedTableView1DblClick(
  Sender: TObject);
begin
 if pcPktNrAndTorkSats.ActivePage <> tsTorkSats then
  GetPkgNo(Sender) ;
END ;

procedure TfrmInventoryReport.cxGrid1DBBandedTableView1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
 if Button = mbRight then
  RightButton := True
   else
    RightButton := False ;
end;

procedure TfrmInventoryReport.cxGrid1DBBandedTableView1InitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
begin
// AEdit.OnDblClick := grdPkgTblDBBandedTableView1DblClick ;
end;

procedure TfrmInventoryReport.acKilnChargeNoteUpdate(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  acKilnChargeNote.Enabled:= (cds_KilnChargeHdr.Active) and (cds_KilnChargeHdr.RecordCount > 0) ;
 End ;
end;

procedure TfrmInventoryReport.acSummaryExecute(Sender: TObject);
begin
 acSummary.Checked                          := not acSummary.Checked ;
 cxGrid1DBBandedTableView1.OptionsView.Footer  := acSummary.Checked ;
end;

procedure TfrmInventoryReport.acRemoveKilnRowUpdate(Sender: TObject);
begin
 acRemoveKilnRow.Enabled :=
 (dm_DryKiln.cds_KilnChargeHdr.Active)
 and (KilnDataSaved)
 and (dm_DryKiln.cds_KilnChargeHdr.RecordCount > 0)
 and (dm_DryKiln.cds_KilnChargeHdrStatus.AsInteger = 0) ;
end;

procedure TfrmInventoryReport.mtUserPropNewItemRowChange(Sender: TField);
Var Save_Cursor : TCursor;
begin
 With dmInventory do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try
  cds_PkgList.DisableControls ;
  cds_PkgNoList.DisableControls ;
//  if cbVolUnitLengths.ItemIndex = 3 then    cbVolUnitLengths.ItemIndex:= 0 ;
  cds_PkgList.Active:= False ;
  cds_PkgList.Active:= True ;
  cds_PkgList.EmptyDataSet ;
  cds_PkgNoList.Active:= False ;
  cds_PkgNoList.Active:= True ;
  cds_PkgNoList.EmptyDataSet ;

  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
   pcPktNrAndTorkSats.ActivePage:= tsPaketnr ;
   pcPktNrAndTorkSats.HideTabs  := True ;
   cbInvLista.Enabled           := True ;
//   cxGrid1DBBandedTableView1.Styles.Content:= cxStyle5 ;
  End
  else
   Begin
    pcPktNrAndTorkSats.HideTabs  := False ;
    cbInvLista.Enabled           := False ;    
//    cxGrid1DBBandedTableView1.Styles.Content:= nil ;
   End ;

  Finally
   cds_PkgNoList.EnableControls ;
   cds_PkgList.EnableControls ;
   Screen.Cursor := Save_Cursor ;
  End ;
 End ;//with
end;

procedure TfrmInventoryReport.acAvregistreraMotInventeringUpdate(
  Sender: TObject);
begin
 With dmInventory do
 Begin
  acAvregistreraMotInventering.Enabled:= (mtUserPropNewItemRow.AsInteger > 0)
  and (cds_PkgNoList.Active)
  and (cds_PkgNoList.RecordCount > 0)
  and (cds_PkgNoListStatus.AsInteger = 1) ;    
 End ;//with
end;

procedure TfrmInventoryReport.acAvregistreraMotInventeringExecute(
  Sender: TObject);
begin
//
end;

procedure TfrmInventoryReport.acRegistreraPaketUpdate(Sender: TObject);
begin
 acRegistreraPaket.Enabled:= mtUserPropNewItemRow.AsInteger < 1 ;
end;

procedure TfrmInventoryReport.acChangePackagesUpdate(Sender: TObject);
begin
 acChangePackages.Enabled:= (mtUserPropNewItemRow.AsInteger < 1)
// and  (ShowDeActivatedPkgs = False)
 and ((dmInventory.cds_PkgNoList.Active) and (dmInventory.cds_PkgNoList.RecordCount > 0)) ;
end;

procedure TfrmInventoryReport.acAvRegistreraPaketUpdate(Sender: TObject);
begin
 acAvRegistreraPaket.Enabled:= (mtUserPropNewItemRow.AsInteger < 1)
 and  (ShowDeActivatedPkgs = False)
 and ((dmInventory.cds_PkgNoList.Active) and (dmInventory.cds_PkgNoList.RecordCount > 0)) ;
end;

procedure TfrmInventoryReport.acMovePkgsInterntUpdate(Sender: TObject);
begin
 acMovePkgsInternt.Enabled:= (mtUserPropNewItemRow.AsInteger < 1)
 and  (ShowDeActivatedPkgs = False)
 and ((dmInventory.cds_PkgNoList.Active) and (dmInventory.cds_PkgNoList.RecordCount > 0)) ; 
end;

procedure TfrmInventoryReport.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
{var
  V: Variant;
  C: TdxDBTreeListColumn; }
begin
{  if ANode.HasChildren or ASelected then
    Exit;

  C := (Sender as TdxDBGrid).ColumnByFieldName('Status');
  V := ANode.Values[C.Index];

  if V = 1 then
  begin
    AColor := clAqua;
    AFont.Color := clBlue;
    AFont.Style := AFont.Style + [fsBold];
  end
  else
    if V = Date - 1 then
      AColor := clInfoBk
    else
      if V = Date - 2 then
        AFont.Color := clGray;

 }
end;

procedure TfrmInventoryReport.cxGrid1DBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);

var
  aColumn: TcxCustomGridTableItem;
  aValue: Variant;
begin
//  AItem:= (Sender AS TcxGridDBBandedTableView).GetColumnByFieldName('Status') ;

  aColumn :=(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('Status');
  aValue := ARecord.Values[aColumn.Index];
//  if not VarIsSoftNull(aValue) and (VarToDateTime(aValue) > Date-14) then
//    AStyle := cxStyleLastWeek;

{ if (ARecord.Values[AItem.Index] <> null) AND (ARecord.Values[AItem.Index] = 1) and (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger > 0) then
  AStyle:= cxStyleAktivePkg
   else
   if (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger > 0) then
    AStyle:= cxStyleINAktivePkg ; }

  if (aValue = '1') and (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger > 0) then
   AStyle:= cxStyleAktivePkg
   else
   if (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger > 0) then
    AStyle:= cxStyleINAktivePkg ;
end;

(*

Var
 Status : Integer ;
begin
 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Status').Index] <> null then
 Status:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Status').Index] ;

 if (Status = 1) and (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger > 0) then
  AStyle:= cxStyleAktivePkg
  else
   if (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger > 0) then
    AStyle:= cxStyleINAktivePkg ;
end;
*)

procedure TfrmInventoryReport.grdPkgNoTblDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
Var
 Status : Integer ;
begin
 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Status').Index] <> null then
 Status:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Status').Index] ;

 if (Status = 1) and (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger > 0) then
  AStyle:= cxStyleAktivePkg
  else
   if (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger > 0) then
    AStyle:= cxStyleINAktivePkg ;
end;


procedure TfrmInventoryReport.cbInvListaPropertiesChange(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 With dmInventory do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try
  cds_PkgList.DisableControls ;
  cds_PkgNoList.DisableControls ;
  cds_PkgList.Active:= False ;
  cds_PkgList.Active:= True ;
  if cds_PkgList.RecordCount > 0 then
  cds_PkgList.EmptyDataSet ;
  cds_PkgNoList.Active:= False ;
  cds_PkgNoList.Active:= True ;
  if cds_PkgNoList.RecordCount > 0 then
  cds_PkgNoList.EmptyDataSet ;

  Finally
   cds_PkgNoList.EnableControls ;
   cds_PkgList.EnableControls ;
   Screen.Cursor := Save_Cursor ;
  End ;
 End ;//with
end;

procedure TfrmInventoryReport.mtUserPropKilnNoChange(Sender: TField);
begin
 if KilnDataSaved = True then
 With dm_DryKiln do
 Begin
  if cds_KilnChargeHdr.Locate('KilnNo;Status', VarArrayOf([mtUserPropKilnNo.AsInteger, 0]), []) then ;
 End ;
end;

procedure TfrmInventoryReport.lcFilterTorkPropertiesCloseUp(
  Sender: TObject);
begin
 mtUserPropKilnNo.OnChange:= nil ;
 Try
 mtUserProp.Edit ;
 mtUserPropKilnNo.AsInteger:= -1 ;
 mtUserProp.Post ;
 Finally
  mtUserPropKilnNo.OnChange:= mtUserPropKilnNoChange ;
 End ;
end;

procedure TfrmInventoryReport.acShowDeActivatedPkgsExecute(
  Sender: TObject);
Var Save_Cursor : TCursor;
begin
 ShowDeActivatedPkgs:= True ;
 if mtUserProp.State in [dsEdit, dsInsert] then
 mtUserProp.Post ;

 ClickedF10 := True ;
 acAddKilnRow.Caption:= 'Lägg paket till torksats' ;
 bbAddPkgsToKilnCharge.Caption:= 'Lägg paket till torksats' ;
 With dmInventory do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  cds_PkgList.DisableControls ;
  cxGrid1DBBandedTableView1.BeginUpdate ;
  cxGrid1DBBandedTableView1.DataController.KeyFieldNames:= 'ProductNo;Status;LIPNo' ;
//  cxGrid1DBBandedTableView1.DataController.KeyFieldNames:= 'ProductNo;PackageTypeNo' ;
  cxGrid1DBBandedTableView1.Bands[0].Visible:= False ;
  cxGrid1DBBandedTableView1.Bands[1].FixedKind:= fkLeft ;

  Try
   cds_PkgList.Active:= False ;
   pcInventory.ActivePage:= tsTABELL ;
   GenDeActivatedPkgSumTable_SQL(Sender) ;
   cds_PkgList.Active:= True ;
   SetKolumnNameAndHideNonUsedKolumns(Sender) ;
   cxGrid1DBBandedTableView1.Columns[65].Visible  := True ;
   cxGrid1DBBandedTableView1.Columns[65].Caption   := 'ÖVRIGA' ;
  Finally
   cxGrid1DBBandedTableView1.EndUpdate ;
   cds_PkgList.EnableControls ;
   cxGrid1DBBandedTableView1.Bands[2].ApplyBestFit ;
   Screen.Cursor := Save_Cursor ;
  End ;
 End ;
end;

procedure TfrmInventoryReport.GenDeActivatedPkgSumTable_SQL(Sender: TObject);
Var Save_Cursor   : TCursor;
    x, y          : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormatLengthColumns ;
 Try

 With dmInventory do
 Begin
  sq_PkgList.Close ;
  sq_PkgList.SQL.Clear ;

  sq_PkgList.SQL.Add('Select distinct Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS PKT,') ;

  sq_PkgList.SQL.Add('pd.ProductNo,') ;
  sq_PkgList.SQL.Add('pd.ProductDisplayName AS PRODUKT,') ;
  sq_PkgList.SQL.Add('0 AS PackageTypeNo,') ;
  sq_PkgList.SQL.Add('0 AS PKTNR,') ;
  sq_PkgList.SQL.Add(QuotedStr('xxx')+' AS LEVKOD,') ;

  sq_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  sq_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  sq_PkgList.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;

  sq_PkgList.SQL.Add('RTRIM('+QuotedStr(' ')+') AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
//    3 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
//        +' THEN ptd.NoOfPieces/avgp.AvgPcs ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;

    3 : sq_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' AND PTL.STD_Length = 1'
        +' AND ls.NoOfLengths = 1'
        +' THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L'+inttostr(x)+', ') ;

//CAST(count(Distinct CASE WHEN PTL.STD_Length = 1 AND pl.ActualLengthMM
// = 4500 AND ls.NoOfLengths = 1 THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L14,

//    3 : sq_PkgList.SQL.Add('CAST(COUNT(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
//        +' THEN pn.PackageTypeNo ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

//Lägg till resten av kolumnerna...
  For y:= x to 44 do
  sq_PkgList.SQL.Add('0.0 AS L'+inttostr(y)+', ') ;

//Kolumn 65 är en numera en summering av antal paket
  sq_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN PTL.STD_Length = 0 OR ls.NoOfLengths > 1 THEN Str(pn.PackageNo)+pn.SupplierCode') ;
  sq_PkgList.SQL.Add('END)  AS Float)  AS L45,') ;

{  sq_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 1 THEN') ;
  sq_PkgList.SQL.Add(' CASE WHEN ls.NoOfLengths > 1 THEN Cast(Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS Decimal(12,2) )') ;
  sq_PkgList.SQL.Add(' else  0.0 END') ;
  sq_PkgList.SQL.Add('WHEN PTL.STD_Length = 0 THEN') ;
  sq_PkgList.SQL.Add('Cast(Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS Decimal(12,2) )') ;
  sq_PkgList.SQL.Add('ELSE 0.0 END AS L45,') ; }

{  sq_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN') ;
  sq_PkgList.SQL.Add('Cast(Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS Decimal(12,2) )') ;
  sq_PkgList.SQL.Add('ELSE') ;
  sq_PkgList.SQL.Add('0.0 END AS L45,') ; }

  sq_GroupLengths.Close ;


  sq_PkgList.SQL.Add('SUM(ptd.m3Actual) AS AM3,') ;
  sq_PkgList.SQL.Add('SUM(ptd.m3Nominal) AS NM3,') ;
  sq_PkgList.SQL.Add('SUM(ptd.LinealMeterActualLength) AS AM1,') ;
  sq_PkgList.SQL.Add('SUM(ptd.MFBMNominal) AS MFBM,') ;
  sq_PkgList.SQL.Add('SUM(ptd.SQMofActualWidth) AS AM2,') ;
  sq_PkgList.SQL.Add('GetDate() AS TILLVERKAD,') ;


  sq_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  sq_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  sq_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  sq_PkgList.SQL.Add('0 AS STD_Length,') ;
  sq_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  sq_PkgList.SQL.Add('Verk.ClientNo AS OwnerNo, Cy.CityName+'+QuotedStr('/')+'+lip.LogicalInventoryName AS Lager,') ;
  sq_PkgList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;
//  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
//  sq_PkgList.SQL.Add(',isnull(avrPkg.Status,1) AS Status')
//  else
  sq_PkgList.SQL.Add(',0 AS Status') ;

  sq_PkgList.SQL.Add('FROM  dbo.Client Verk') ;

  sq_PkgList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;

//  sq_PkgList.SQL.Add('INNER JOIN PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;

    sq_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
    sq_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
    sq_PkgList.SQL.Add('INNER JOIN dbo.Package_Production pp ON pp.PackageNo = pn.PackageNo') ;
    sq_PkgList.SQL.Add('AND pp.SupplierCode = pn.SupplierCode') ;

{  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
   if cbInvLista.ItemIndex = 0 then
   Begin
    sq_PkgList.SQL.Add('INNER JOIN dbo.InvControlrow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    sq_PkgList.SQL.Add('Left Outer Join dbo.AvrPkgInInvCtrl avrPkg on avrPkg.IC_GrpNo = invctrlrow.IC_GrpNo') ;
    sq_PkgList.SQL.Add('AND avrPkg.PackageNo = invctrlrow.PackageNo') ;
    sq_PkgList.SQL.Add('AND avrPkg.SupplierCode = invctrlrow.SupplierCode') ;

    sq_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    sq_PkgList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
    sq_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End
   else
   Begin
    sq_PkgList.SQL.Add('INNER JOIN dbo.InvenRow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    sq_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    sq_PkgList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
    sq_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End ;
  End
  else
   Begin
    sq_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
    sq_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End ; }

//  sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;

//  if (mtActLengthMM.RecordCount > 0) or (cbShowSingleLengthPkgs.Checked) then
  Begin
   sq_PkgList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
   sq_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  End ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'STYCK PER LÄNGD' ;
       End ;
   1 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'AM3 PER LÄNGD' ;
       End ;
   2 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'PAKET PER LÄNGD' ;
       End ;
   3 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'PAKET PER LÄNGD' ;
       End ;
  End ;


  sq_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

{ if mtUserPropLengthVolUnitNo.AsInteger = 3 then
  Begin
   if mtUserPropNewItemRow.AsInteger > 0 then
   Begin
    if (cbInvLista.ItemIndex = 0) then
    Begin
     sq_PkgList.SQL.Add('Inner Join dbo.AvgPcsPerProdInv avgp on avgp.ProductNo = pd.ProductNo') ;
     sq_PkgList.SQL.Add('AND avgp.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
     sq_PkgList.SQL.Add('AND avgp.IC_GrpNo = '+mtUserPropNewItemRow.AsString) ;
    End
    else
    Begin
     sq_PkgList.SQL.Add('Inner Join dbo.AvgPcsPerProdInvRes avgp on avgp.ProductNo = pd.ProductNo') ;
     sq_PkgList.SQL.Add('AND avgp.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
     sq_PkgList.SQL.Add('AND avgp.IC_GrpNo = '+mtUserPropNewItemRow.AsString) ;
    End ;
   End
   else
   Begin
    sq_PkgList.SQL.Add('Inner Join dbo.AvgPcsPerProduct avgp on avgp.ProductNo = pd.ProductNo') ;
    sq_PkgList.SQL.Add('AND avgp.LogicalInventoryPointNo = pn.LogicalInventoryPointNo') ;
   End ;
  End ;
  }

  sq_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;


  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  sq_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  sq_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;


  sq_PkgList.SQL.Add('WHERE LIP.SequenceNo = 1 ') ;//AND PTL.STD_Length = 1

  sq_PkgList.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('				AND imp.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('				AND SUR.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('				AND Gr.LanguageCode = 1') ;

   sq_PkgList.SQL.Add('AND pn.PackageNo not in (Select pp.PackageNo From dbo.Package_Production pp') ;
   sq_PkgList.SQL.Add('Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = pp.ProductionUnitNo') ;
   sq_PkgList.SQL.Add('WHERE pp.PackageNo = pn.PackageNo') ;
   sq_PkgList.SQL.Add('AND pp.SupplierCode = pn.SupplierCode') ;
   sq_PkgList.SQL.Add('AND pp.Operation = 3') ;
   sq_PkgList.SQL.Add('AND rp.SequenceNo = 1)') ;

//  if mtUserPropNewItemRow.AsInteger > 0 then
//  Begin
//   sq_PkgList.SQL.Add('AND invctrlrow.IC_GrpNo = '+mtUserPropNewItemRow.AsString);
//  End
//   else
    sq_PkgList.SQL.Add('AND pn.Status = 0') ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
  sq_PkgList.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

//  if mtUserPropPIPNo.AsInteger > 0 then  sq_PkgList.SQL.Add('AND pip.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;


//  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'LIP.LogicalInventoryPointNo', cbLIP)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then
//  sq_PkgList.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;

//  if mtUserPropOwnerNo.AsInteger > 0 then
//  sq_PkgList.SQL.Add('AND Verk.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;

  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  sq_PkgList.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;


  if cbShowSingleLengthPkgs.Checked then
    sq_PkgList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;


  sq_PkgList.SQL.Add('Group By pd.ProductNo, pd.ProductDisplayName, pg.ActualThicknessMM, pg.ActualWidthMM,') ;
  sq_PkgList.SQL.Add('SPE.SpeciesName, Gr.GradeName, SUR.SurfacingName, imp.ProductCategoryName, Verk.ClientNo, ') ;
  sq_PkgList.SQL.Add('Cy.CityName, lip.LogicalInventoryName, lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo') ;
//  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
//   sq_PkgList.SQL.Add(',isnull(avrPkg.Status,1)') ;


//  if thisuser.UserID = 8 then  sq_PkgList.SQL.SaveToFile('sq_PkgSumList.txt');
//  sq_PkgList.ExecSQL(False) ;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.acSkrivUtPkgNosUpdate(Sender: TObject);
begin
 acSkrivUtPkgNos.Enabled:= ((dmInventory.cds_PkgNoList.Active) and (dmInventory.cds_PkgNoList.RecordCount > 0)) ;
end;

procedure TfrmInventoryReport.acExportPkgNosUpdate(Sender: TObject);
begin
 acExportPkgNos.Enabled:= ((dmInventory.cds_PkgNoList.Active) and (dmInventory.cds_PkgNoList.RecordCount > 0)) ;
end;

procedure TfrmInventoryReport.acVardaLagretExecute(Sender: TObject);
begin
 if ControlInvDate(Sender) then
 Begin
  if ClickedF10 then
  VardaPerSortiment(Sender) ;
 End
 else
 ShowMessage('Paketvård är inte tillgängligt för tillfället pga att aktuelltdatum är före maxdatum i en inventering där lagergruppen ingår.') ;
// else
// VardaPerPaketNr(Sender);
end;

procedure TfrmInventoryReport.VardaPerSortiment(Sender: TObject);
var fEntryField   : TfEntryField;
    NoOfPkgs      : Integer ;
    Save_Cursor   : TCursor ;
    LengthChoosen : String ;
begin
 With dm_DryKiln do
 Begin
  if Length(SelectedLength) = 0 then
  Begin
   ShowMessage('fick inte med längden, prova att högerklicka igen') ;
   Exit ;
  End ;
//  acSaveTorkSatsExecute(Sender) ;
{  if dmInventory.cds_PkgListSTD_Length.AsInteger = 0 then
  Begin
   ShowMessage('Växla till paketnummer vy (F8) för att lägga till paket med speciallängder') ;
   Exit ;
  End ; }
  Try

//  if (cds_KilnChargeHdr.Active) and (cds_KilnChargeHdrKilnChargeNo.AsInteger > 0) then
//   Begin
   fEntryField := TfEntryField.Create(nil);
   Try
    fEntryField.seAntalPaket.Properties.MinValue:= -100 ;
    fEntryField.seAntalPaket.Properties.MaxValue:= 100 ;
    fEntryField.LExtraInfo.Caption:= 'Vårda lager, ange negativt antal för att minska antal paket resp. positivt antal för att öka.' ;
    if SelectedLength = 'ÖVRIGA' then
    Begin
     fEntryField.Caption:= 'Ange antal pkt av ' + dmInventory.cds_PkgListPRODUKT.AsString + ' och välj längd.' ;
     fEntryField.PanelLength.Visible  := True ;
     dmInventory.Open_sq_OtherLengths(dmInventory.cds_PkgListOwnerNo.AsInteger, SelectedProductNo, dmInventory.cds_PkgListLIPNo.AsInteger, mtUserPropLengthGroupNo.AsInteger) ;
    End
      else
       Begin
        fEntryField.Caption:= 'Ange antal av ' + dmInventory.cds_PkgListPRODUKT.AsString + ' / ' + SelectedLength ;
        fEntryField.PanelLength.Visible  := False ;
       End ;
    if fEntryField.ShowModal = mrOK then
    Begin
     if SelectedLength = 'ÖVRIGA' then
      LengthChoosen:= dmInventory.Selected_sq_OtherLengths
       else
        LengthChoosen:= SelectedLength ;
     if LengthChoosen <> 'Not valid' then
     Begin
      NoOfPkgs:= fEntryField.seAntalPaket.Value ;// strtointdef(fEntryField.eValue.Text,-1) ;
      if (CurrentNoOfPkgs + NoOfPkgs) >= 0 then
    //   10 >= -10
      Begin
     //Now add pkgs to torksats!
       if MessageDlg('Vill du ändra antal paket med '+inttostr(NoOfPkgs)+' för produkt '+dmInventory.cds_PkgListPRODUKT.AsString
       +' Längd ' + LengthChoosen
       ,  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       Begin
        if dmInventory.VardaLager (dmInventory.cds_PkgListOwnerNo.AsInteger, dmInventory.cds_PkgListLIPNo.AsInteger, mtUserPropLengthGroupNo.AsInteger, SelectedProductNo, NoOfPkgs, LengthChoosen, dmInventory.cds_PkgListPRODUKT.AsString) then
        Begin
         Save_Cursor    := Screen.Cursor;
         Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
         Try
          dmInventory.cds_PkgList.Active := False ;
          Screen.Cursor                  := crSQLWait;    { Show hourglass cursor }
          dmInventory.cds_PkgList.Active := True ;
         Finally
          Screen.Cursor := Save_Cursor;  { Always restore to normal }
         End ;
        End ;//if dmInventory.VardaLager (dmInvento
       End ;//if MessageDlg
      End
       else
        ShowMessage('Angivet antal paket överstiger antal paket i lager.');
     End
      else
       ShowMessage('Paket med flera längder registreras paketnr vis.');
    End ;

   Finally
     FreeAndNil(fEntryField) ;
   End ;

//   End ;
  Except

  End ;
 End ;//with

end;

procedure TfrmInventoryReport.acVardaLagretUpdate(Sender: TObject);
begin
 acVardaLagret.Enabled:= pcPktNrAndTorkSats.ActivePage = tsTorkSats ;
end;

{Function TfrmInventoryReport.GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
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
        if AddORToSQL then
         Result:= Result + ' OR '
          else
           Result:= ' AND (' ;
        if dType = 0 then
         Result:= Result + ' '+Kolumn+' = '+QuotedStr(Properties.Items[x].ShortDescription)
          else
           Result:= Result + ' '+Kolumn+' = '+ReplaceCommas(Properties.Items[x].ShortDescription) ;

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
End ; }

procedure TfrmInventoryReport.cbOwnerPropertiesChange(Sender: TObject);
Var VidaWood : Boolean ;
begin
 VidaWood:= SelectedOwnersOK ;

 cds_PLIP.Active:= False ;
 sq_PLIP.SQL.Clear ;
 if VidaWood then
 sq_PLIP.SQL.Add('SELECT Distinct CY.CITYNAME, CY.CITYNAME +' + QuotedStr('/') + '+RTRIM(LIP.LogicalInventoryName) AS PLIP,')
 else
 sq_PLIP.SQL.Add('SELECT Distinct isNull(LIP.InvCode, '+QuotedStr('') + ')+' + QuotedStr('/') + '+RTRIM(LIP.LogicalInventoryName) AS PLIP,') ;

// sq_PLIP.SQL.Add('LIP.LogicalInventoryPointNo AS LIPNo, PH.PhysicalInventoryPointNo AS PIPNO, CY.CITYNAME,') ;
 sq_PLIP.SQL.Add('LIP.InvCode, LIP.LogicalInventoryName') ;
 sq_PLIP.SQL.Add('FROM') ;
 sq_PLIP.SQL.Add('dbo.PHYSICALINVENTORYPOINT PH') ;
 sq_PLIP.SQL.Add('Inner Join dbo.LOGICALINVENTORYPOINT LIP on LIP.PhysicalInventoryPointNo = PH.PhysicalInventoryPointNo') ;
 sq_PLIP.SQL.Add('Inner Join dbo.CITY CY ON CY.CITYNO = PH.PhyInvPointNameNo') ;
 sq_PLIP.SQL.Add('Inner Join dbo.ClientRole CR ON CR.ClientNo = PH.OwnerNo') ;
 sq_PLIP.SQL.Add('Inner Join dbo.Client C ON C.ClientNo = PH.OwnerNo') ;
 sq_PLIP.SQL.Add('WHERE') ;
 sq_PLIP.SQL.Add('LIP.SequenceNo = 1') ;
 sq_PLIP.SQL.Add('AND PH.SequenceNo = 1') ;
 sq_PLIP.SQL.Add(GetSQLofComboFilter(1, 'C.PktNrLevKod', cbOwner)) ;
 if VidaWood then
 sq_PLIP.SQL.Add('Order By  CY.CITYNAME, LIP.LogicalInventoryName')
 else
 sq_PLIP.SQL.Add('Order By  LIP.InvCode, LIP.LogicalInventoryName') ;
// sq_PLIP.SQL.SaveToFile('sq_PLIP.txt');
 cds_PLIP.Active:= True ;

  cbLIP.Properties.Items.Clear ;
  While not cds_PLIP.Eof do
  Begin
   cbLIP.Properties.Items.AddCheckItem(cds_PLIP.FieldByName('PLIP').AsString, cds_PLIP.FieldByName('InvCode').AsString) ;
   cds_PLIP.Next ;
  End ;
  cds_PLIP.Active:= False ;
end;

procedure TfrmInventoryReport.Button3Click(Sender: TObject);
Var
    APCheckStates : ^TcxCheckStates;
    AddORToSQL    : Boolean ;
    x             : Integer ;

Begin
(*
  New(APCheckStates);
  try
    with ccbAT do
    begin
     CalculateCheckStates(Value, Properties.Items,Properties.EditValueFormat , APCheckStates^);
     APCheckStates^[x]:= cbsChecked ;
     if Properties.Items.Count > 0 then
     Begin
      for x := 0 to Properties.Items.Count - 1 do
      Begin
       if APCheckStates^[x] = cbsChecked then
       Begin

       End ;//if..
      End ;//for..

     End ;
    end;//With
  finally
    Dispose(APCheckStates)
  end; *)
End ;

procedure TfrmInventoryReport.ccbATPropertiesClickCheck(Sender: TObject;
  ItemIndex: Integer; var AllowToggle: Boolean);
begin
 TcxCheckComboBox(Sender).DroppedDown := False;
end;

procedure TfrmInventoryReport.eATExit(Sender: TObject);
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

procedure TfrmInventoryReport.eABExit(Sender: TObject);
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

procedure TfrmInventoryReport.eALExit(Sender: TObject);
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

procedure TfrmInventoryReport.acInputOptionExecute(Sender: TObject);
begin
 acInputOption.Checked:= not acInputOption.Checked ;
 if acInputOption.Checked = False then
  Begin
   ccbAT.Visible  := True ;
   ccbAB.Visible  := True ;
   ccbAL.Visible  := True ;
//   ccbTS2.Visible := True ;
//   ccbKV2.Visible := True ;
//   ccbSU2.Visible := True ;
//   ccbIMP.Visible := True ;

   eAT.Visible    := False ;
   eAB.Visible    := False ;
   eAL.Visible    := False ;
//   eTS.Visible    := False ;
//   eKV.Visible    := False ;
//   eSU.Visible    := False ;
//   eIMP.Visible   := False ;
  End
  else
  Begin
   ClearProductFilter ;

   eAT.Visible    := True ;
   eAB.Visible    := True ;
   eAL.Visible    := True ;
//   eTS.Visible    := True ;
//   eKV.Visible    := True ;
//   eSU.Visible    := True ;
//   eIMP.Visible   := True ;

   ccbAT.Visible  := False ;
   ccbAB.Visible  := False ;
   ccbAL.Visible  := False ;
//   ccbTS2.Visible := False ;
//   ccbKV2.Visible := False ;
//   ccbSU2.Visible := False ;
//   ccbIMP.Visible := False ;   
  End ;

end;

procedure TfrmInventoryReport.acVardaBortPaketExecute(Sender: TObject);
begin
 mtPkgNos.Active:= True ;
 Try
 SelectedPkgsOfPkgNosTable ;
 if ThisUser.CanView[dcAdd_packagesSec] then
 Begin
  fVardaBortPkt:= TfVardaBortPkt.Create(Nil);
  Try
   fVardaBortPkt.RemotePkgEntry(mtPkgNos) ;
   fVardaBortPkt.CreateCo ;
   fVardaBortPkt.ShowModal ;
  Finally
   FreeAndNil(fVardaBortPkt) ;
  End ;
 End ;
 Finally
  mtPkgNos.Active:= False ;
 End ;
end;

procedure TfrmInventoryReport.acVardaBortPaketUpdate(Sender: TObject);
begin
 acVardaBortPaket.Enabled:= (mtUserPropNewItemRow.AsInteger < 1)
 and  (ShowDeActivatedPkgs = False)
 and ((dmInventory.cds_PkgNoList.Active) and (dmInventory.cds_PkgNoList.RecordCount > 0)) ;
end;

procedure TfrmInventoryReport.acAndraPktVardExecute(Sender: TObject);
Var fchgPkgVard : TfchgPkgVard ;
begin
 mtPkgNos.Active:= True ;
 Try
 SelectedPkgsOfPkgNosTable ;
 if mtPkgNos.RecordCount > 0 then
 Begin
  fchgPkgVard:= TfchgPkgVard.Create(Nil);
  Try
   fchgPkgVard.CreateCo ;
   fchgPkgVard.RemotePkgEntry(mtPkgNos) ;
   fchgPkgVard.ShowModal ;
  Finally
   FreeAndNil(fchgPkgVard) ;
  End ;
 End ;
 Finally
  mtPkgNos.Active:= False ;
 End ;
end;

procedure TfrmInventoryReport.acPrintPcsPerLengthExecute(Sender: TObject);
begin
  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add('Antal/längd') ;


//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Add(grdPkgNoTblDBBandedTableView1Lager.EditValue) ;

  dxComponentPrinter1Link2.PrinterPage.Orientation    := poPortrait ;
  dxComponentPrinter1Link2.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link2.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link2.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link2) ;

end;

procedure TfrmInventoryReport.eTSExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccBTS2.Clear ;
 Found := False ;
  For x := 0 to ccBTS2.Properties.Items.Count - 1 do
  Begin
   if (ccBTS2.Properties.Items.Items[x].ShortDescription = eTS.Text) and (Length(eTS.Text) > 0) then
   Begin
    ccBTS2.SetItemState(x, cbsChecked) ;
     Found:= True ;
   End ;
  End ;
 if Found = False then
  eTS.Text := '' ;
end;

procedure TfrmInventoryReport.eKVExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccBKV2.Clear ;
 Found := False ;
  For x := 0 to ccBKV2.Properties.Items.Count - 1 do
  Begin
   if (ccBKV2.Properties.Items.Items[x].ShortDescription = eKV.Text) and (Length(eKV.Text) > 0) then
   Begin
    ccBKV2.SetItemState(x, cbsChecked) ;
     Found:= True ;
   End ;
  End ;
 if Found = False then
  eKV.Text := '' ;
end;

procedure TfrmInventoryReport.eSUExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccBSU2.Clear ;
 Found := False ;
  For x := 0 to ccBSU2.Properties.Items.Count - 1 do
  Begin
   if (ccBSU2.Properties.Items.Items[x].ShortDescription = eSU.Text) and (Length(eSU.Text) > 0) then
   Begin
    ccBSU2.SetItemState(x, cbsChecked) ;
     Found:= True ;
   End ;
  End ;
 if Found = False then
  eSU.Text := '' ;
end;

procedure TfrmInventoryReport.eIMPExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccbIMP.Clear ;
 Found := False ;
  For x := 0 to ccbIMP.Properties.Items.Count - 1 do
  Begin
   if (ccbIMP.Properties.Items.Items[x].ShortDescription = eIMP.Text) and (Length(eIMP.Text) > 0) then
   Begin
    ccbIMP.SetItemState(x, cbsChecked) ;
     Found:= True ;
   End ;
  End ;
 if Found = False then
  eIMP.Text := '' ;
end;

procedure TfrmInventoryReport.acAndraPktVardUpdate(Sender: TObject);
begin
 acAndraPktVard.Enabled:= (mtUserPropNewItemRow.AsInteger < 1)
 and  (ShowDeActivatedPkgs = False)
 and ((dmInventory.cds_PkgNoList.Active) and (dmInventory.cds_PkgNoList.RecordCount > 0)) ;
end;

procedure TfrmInventoryReport.acResetGridExecute(Sender: TObject);
begin
 mtUserProp.Edit ;
 mtUserPropRunNo.AsInteger:= 1 ;
 mtUserProp.Post ;
end;

procedure TfrmInventoryReport.acShowDeActivatedPkgsUpdate(Sender: TObject);
begin
 acShowDeActivatedPkgs.Enabled:= ThisUser.CompanyNo = 76 ;
end;

procedure TfrmInventoryReport.GenInvoicePkgSpec(Sender: TObject);
Var Save_Cursor   : TCursor;
    x, y          : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormatLengthColumns ;
 Try

 With dmInventory do
 Begin
  sq_PkgList.Close ;
  sq_PkgList.SQL.Clear ;
  sq_PkgList.SQL.Add('Select distinct Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS PKT,') ;
  sq_PkgList.SQL.Add('0 AS ProductNo,') ;
  sq_PkgList.SQL.Add('OL.OrderLineDescription AS PRODUKT,') ;
  sq_PkgList.SQL.Add('0 AS PackageTypeNo,') ;
  sq_PkgList.SQL.Add('0 AS PKTNR,') ;
  sq_PkgList.SQL.Add(QuotedStr('xxx')+' AS LEVKOD,') ;

  sq_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  sq_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  sq_PkgList.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;

  sq_PkgList.SQL.Add('RTRIM('+QuotedStr(' ')+') AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : sq_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' AND PTL.STD_Length = 1'
        +' AND ls.NoOfLengths = 1'
        +' THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

//Lägg till resten av kolumnerna...
  For y:= x to 44 do
  sq_PkgList.SQL.Add('0.0 AS L'+inttostr(y)+', ') ;

//Kolumn 65 är en numera en summering av antal paket
  sq_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN PTL.STD_Length = 0 OR ls.NoOfLengths > 1 THEN Str(pn.PackageNo)+pn.SupplierCode') ;
  sq_PkgList.SQL.Add('END)  AS Float)  AS L45,') ;
  sq_GroupLengths.Close ;


  sq_PkgList.SQL.Add('SUM(ptd.m3Actual) AS AM3,') ;
  sq_PkgList.SQL.Add('SUM(ptd.PriceVolume) AS NM3,') ;
  sq_PkgList.SQL.Add('SUM(ptd.LinealMeterActualLength) AS AM1,') ;
  sq_PkgList.SQL.Add('SUM(ptd.MFBMNominal) AS MFBM,') ;
  sq_PkgList.SQL.Add('SUM(ptd.SQMofActualWidth) AS AM2,') ;
  sq_PkgList.SQL.Add('GetDate() AS TILLVERKAD,') ;


  sq_PkgList.SQL.Add(QuotedStr('N/A') + ' AS TS,') ;
  sq_PkgList.SQL.Add(QuotedStr('N/A') + ' AS PC,') ;
  sq_PkgList.SQL.Add(QuotedStr('N/A') + ' KV,') ;
  sq_PkgList.SQL.Add('0 AS STD_Length,') ;
  sq_PkgList.SQL.Add(QuotedStr('N/A') + ' UT,') ;
//  sq_PkgList.SQL.Add('IH.InternalInvoiceNo AS OwnerNo, ' + 'Cast(IL.SHIPPINGPLANNO AS Varchar(101)) AS Lager,') ;
  sq_PkgList.SQL.Add('0 AS OwnerNo, ' + 'Cast(0 AS Varchar(101)) AS Lager,') ;
  sq_PkgList.SQL.Add('-1 AS PIPNo,') ;

{  sq_PkgList.SQL.Add('CASE') ;
  sq_PkgList.SQL.Add('WHEN IH.InvoiceType = 0 THEN') ;
  sq_PkgList.SQL.Add('(Select INO.InvoiceNo FROM dbo.InvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  sq_PkgList.SQL.Add('WHEN IH.InvoiceType = 1 THEN') ;
  sq_PkgList.SQL.Add('(Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  sq_PkgList.SQL.Add('WHEN IH.InvoiceType = 2 THEN') ;
  sq_PkgList.SQL.Add('(Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  sq_PkgList.SQL.Add('WHEN IH.InvoiceType = 3 THEN') ;
  sq_PkgList.SQL.Add('(Select INO.PO_InvoiceNo FROM dbo.InvoiceNumber_PO INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  sq_PkgList.SQL.Add('WHEN IH.InvoiceType = 4 THEN') ;
  sq_PkgList.SQL.Add('(Select INO.InvoiceNo FROM dbo.InvoiceNo_USA INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  sq_PkgList.SQL.Add('WHEN IH.InvoiceType = 5 THEN') ;
  sq_PkgList.SQL.Add('(Select INO.InvoiceNo FROM dbo.InvNo_FW INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  sq_PkgList.SQL.Add('END AS LIPNo,') ; }
  sq_PkgList.SQL.Add('0 AS LIPNo,') ;

  sq_PkgList.SQL.Add('1 AS Status') ;

  sq_PkgList.SQL.Add('FROM dbo.InvoiceHeader IH ') ;

  sq_PkgList.SQL.Add('INNER JOIN dbo.InvoiceLO     IL 	ON  IH.InternalInvoiceNo = IL.InternalInvoiceNo') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.Invoiced_Load	ILo	ON Ilo.InternalInvoiceNo = IL.InternalInvoiceNo') ;
  sq_PkgList.SQL.Add('AND Ilo.SHIPPINGPLANNO    = IL.SHIPPINGPLANNO') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.Loaddetail    LD 	ON  Ilo.LoadNo            = LD.LoadNo') ;
  sq_PkgList.SQL.Add('AND Ilo.SHIPPINGPLANNO    = LD.SHIPPINGPLANNO') ;

  sq_PkgList.SQL.Add('INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipPlanDetailObjectNo =  LD.DefaultCustShipObjectNo') ;

  sq_PkgList.SQL.Add('INNER JOIN DBO.ORDERLINE	OL	ON CSD.ORDERNO = OL.ORDERNO') ;
  sq_PkgList.SQL.Add('AND CSD.ORDERLINENO = OL.ORDERLINENO') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo') ;
  sq_PkgList.SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;
  sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = LD.PackageTypeNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;

  sq_PkgList.SQL.Add('inner JOIN dbo.Client C			ON C.ClientNo = PN.SupplierNo') ;

  sq_PkgList.SQL.Add('INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitNo') ;

  sq_PkgList.SQL.Add('Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.PackageTypeNo') ;
  sq_PkgList.SQL.Add('AND PTD.InternalInvoiceNo = IH.InternalInvoiceNo') ;
  sq_PkgList.SQL.Add('AND PTD.LoadNo = ILO.LoadNo') ;
  sq_PkgList.SQL.Add('AND PTD.LoadDetailNo = LD.LoadDetailNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;


  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'STYCK PER LÄNGD' ;
       End ;
   1 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'AM3 PER LÄNGD' ;
       End ;
   2 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'PAKET PER LÄNGD' ;
       End ;
   3 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'PAKET PER LÄNGD' ;
       End ;
  End ;


  sq_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  sq_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_PkgList.SQL.Add('				AND imp.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_PkgList.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_PkgList.SQL.Add('				AND SUR.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_PkgList.SQL.Add('				AND Gr.LanguageCode = 1') ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  sq_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  sq_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;


  sq_PkgList.SQL.Add('WHERE ') ; //SequenceNo = Active "property"

  For x := 0 to mInvNos.Lines.Count - 1 do
  Begin
  if StrToIntDef(mInvNos.Lines.Strings[x],0) > 0 then
  Begin
   if x > 0 then
   sq_PkgList.SQL.Add(' OR ' + mInvNos.Lines.Strings[x])
    else
     sq_PkgList.SQL.Add(mInvNos.Lines.Strings[x]);
  Case cbInvoiceType.ItemIndex of
   0 : Begin
        sq_PkgList.SQL.Add( ' IN (Select INO.InvoiceNo FROM dbo.InvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   1 : Begin
        sq_PkgList.SQL.Add( ' IN (Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   2 : Begin
        sq_PkgList.SQL.Add( ' IN (Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   3 : Begin
        sq_PkgList.SQL.Add( ' IN (Select INO.PO_InvoiceNo FROM dbo.InvoiceNumber_PO INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   4 : Begin
        sq_PkgList.SQL.Add( ' IN (Select INO.InvoiceNo FROM dbo.InvoiceNo_USA INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   5 : Begin
        sq_PkgList.SQL.Add( ' IN (Select INO.InvoiceNo FROM dbo.InvNo_FW INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
  End ;//case
  End ;//if...
  End ;

  sq_PkgList.SQL.Add('Group By OL.OrderLineDescription, pg.ActualThicknessMM, pg.ActualWidthMM,') ;
//  sq_PkgList.SQL.Add('SPE.SpeciesName, Gr.GradeName, SUR.SurfacingName, imp.ProductCategoryName, ') ;
  sq_PkgList.SQL.Add('IH.InvoiceType') ;
//  if thisuser.UserID = 8 then sq_PkgList.SQL.SaveToFile('sq_PkgList_FakturaSpec.txt');
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.GenFakturaSpecPkgNoTable_SQL(Sender: TObject);
Var Save_Cursor:TCursor;
    y, x: Byte ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormatLengthColumns ;
 Try
 With dmInventory do
 Begin
  sq_PkgList.Close ;
  sq_PkgList.SQL.Clear ;

  sq_PkgList.SQL.Add('Select distinct 1 AS PKT,') ;

  sq_PkgList.SQL.Add('pd.ProductNo,') ;
  sq_PkgList.SQL.Add('OL.OrderLineDescription AS PRODUKT,') ;
  sq_PkgList.SQL.Add('pt.PackageTypeNo,') ;
  sq_PkgList.SQL.Add('pn.PackageNo AS PKTNR,') ;
  sq_PkgList.SQL.Add('pn.SupplierCode AS LEVKOD,') ;

  sq_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  sq_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  sq_PkgList.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;

  sq_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN PTL.PcsPerLength') ;
  sq_PkgList.SQL.Add('ELSE '+QuotedStr('')) ;
  sq_PkgList.SQL.Add('END AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
  Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

  For y:= x to 45 do
  sq_PkgList.SQL.Add('0.0 AS L'+inttostr(y)+', ') ;

  sq_GroupLengths.Close ;


  sq_PkgList.SQL.Add('SUM(ptd.m3Actual) AS AM3,') ;
  sq_PkgList.SQL.Add('SUM(ptd.PriceVolume) AS NM3,') ;
  sq_PkgList.SQL.Add('SUM(ptd.LinealMeterActualLength) AS AM1,') ;
  sq_PkgList.SQL.Add('SUM(ptd.MFBMNominal) AS MFBM,') ;
  sq_PkgList.SQL.Add('SUM(ptd.SQMofActualWidth) AS AM2,') ;
  sq_PkgList.SQL.Add('pn.DateCreated AS TILLVERKAD,') ;
  sq_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  sq_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  sq_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  sq_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  sq_PkgList.SQL.Add('PTL.STD_Length,') ;
  sq_PkgList.SQL.Add('IH.InternalInvoiceNo AS OwnerNo, ' + 'Cast(IL.SHIPPINGPLANNO AS Varchar(101)) AS Lager,') ;
//  sq_PkgList.SQL.Add('0 AS OwnerNo, ' + 'Cast(0 AS Varchar(101)) AS Lager,') ;
  sq_PkgList.SQL.Add('IH.InvoiceType AS PIPNo,') ;

  sq_PkgList.SQL.Add('CASE') ;
  sq_PkgList.SQL.Add('WHEN IH.InvoiceType = 0 THEN') ;
  sq_PkgList.SQL.Add('(Select INO.InvoiceNo FROM dbo.InvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  sq_PkgList.SQL.Add('WHEN IH.InvoiceType = 1 THEN') ;
  sq_PkgList.SQL.Add('(Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  sq_PkgList.SQL.Add('WHEN IH.InvoiceType = 2 THEN') ;
  sq_PkgList.SQL.Add('(Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  sq_PkgList.SQL.Add('WHEN IH.InvoiceType = 3 THEN') ;
  sq_PkgList.SQL.Add('(Select INO.PO_InvoiceNo FROM dbo.InvoiceNumber_PO INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  sq_PkgList.SQL.Add('WHEN IH.InvoiceType = 4 THEN') ;
  sq_PkgList.SQL.Add('(Select INO.InvoiceNo FROM dbo.InvoiceNo_USA INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  sq_PkgList.SQL.Add('WHEN IH.InvoiceType = 5 THEN') ;
  sq_PkgList.SQL.Add('(Select INO.InvoiceNo FROM dbo.InvNo_FW INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  sq_PkgList.SQL.Add('END AS LIPNo,') ;

  sq_PkgList.SQL.Add('1 AS Status') ;


  sq_PkgList.SQL.Add('FROM dbo.InvoiceHeader IH ') ;

  sq_PkgList.SQL.Add('INNER JOIN dbo.InvoiceLO     IL 	ON  IH.InternalInvoiceNo = IL.InternalInvoiceNo') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.Invoiced_Load	ILo	ON Ilo.InternalInvoiceNo = IL.InternalInvoiceNo') ;
  sq_PkgList.SQL.Add('AND Ilo.SHIPPINGPLANNO    = IL.SHIPPINGPLANNO') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.Loaddetail    LD 	ON  Ilo.LoadNo            = LD.LoadNo') ;
  sq_PkgList.SQL.Add('AND Ilo.SHIPPINGPLANNO    = LD.SHIPPINGPLANNO') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipPlanDetailObjectNo =  LD.DefaultCustShipObjectNo') ;
  sq_PkgList.SQL.Add('INNER JOIN DBO.ORDERLINE	OL	ON CSD.ORDERNO = OL.ORDERNO') ;
  sq_PkgList.SQL.Add('AND CSD.ORDERLINENO = OL.ORDERLINENO') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo') ;
  sq_PkgList.SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;
  sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = LD.PackageTypeNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
  sq_PkgList.SQL.Add('inner JOIN dbo.Client C			ON C.ClientNo = PN.SupplierNo') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.PackageTypeNo') ;

  sq_PkgList.SQL.Add('AND PTD.InternalInvoiceNo = IH.InternalInvoiceNo') ;
  sq_PkgList.SQL.Add('AND PTD.LoadNo = ILO.LoadNo') ;
  sq_PkgList.SQL.Add('AND PTD.LoadDetailNo = LD.LoadDetailNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  sq_PkgList.SQL.Add('') ;
  sq_PkgList.SQL.Add('') ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'ANTAL PER LÄNGD' ;
       End ;
   1 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'AM3 PER LÄNGD' ;
       End ;
   2 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'NM3 PER LÄNGD' ;
       End ;
   3 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'ANTAL PER LÄNGD' ;
       End ;
  End ;



  sq_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  sq_PkgList.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_PkgList.SQL.Add('				AND imp.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_PkgList.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_PkgList.SQL.Add('				AND SUR.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_PkgList.SQL.Add('				AND Gr.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('WHERE ') ; //SequenceNo = Active "property"

  For x := 0 to mInvNos.Lines.Count - 1 do
  Begin
  if StrToIntDef(mInvNos.Lines.Strings[x],0) > 0 then
  Begin
   if x > 0 then
   sq_PkgList.SQL.Add(' OR ' + mInvNos.Lines.Strings[x])
    else
     sq_PkgList.SQL.Add(mInvNos.Lines.Strings[x]);
  Case cbInvoiceType.ItemIndex of
   0 : Begin
        sq_PkgList.SQL.Add( ' IN (Select INO.InvoiceNo FROM dbo.InvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   1 : Begin
        sq_PkgList.SQL.Add( ' IN (Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   2 : Begin
        sq_PkgList.SQL.Add( ' IN (Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   3 : Begin
        sq_PkgList.SQL.Add( ' IN (Select INO.PO_InvoiceNo FROM dbo.InvoiceNumber_PO INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   4 : Begin
        sq_PkgList.SQL.Add( ' IN (Select INO.InvoiceNo FROM dbo.InvoiceNo_USA INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   5 : Begin
        sq_PkgList.SQL.Add( ' IN (Select INO.InvoiceNo FROM dbo.InvNo_FW INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
  End ;//case
  End ;//if...
  End ;

  sq_PkgList.SQL.Add('Group by pd.ProductNo, OL.OrderLineDescription, pt.PackageTypeNo, pn.PackageNo, pn.SupplierCode, pg.ActualThicknessMM,') ;
  sq_PkgList.SQL.Add('pg.ActualWidthMM, PTL.STD_Length, PTL.PcsPerLength, ') ;
  sq_PkgList.SQL.Add('pn.DateCreated, SPE.SpeciesName, imp.ProductCategoryName,') ;
  sq_PkgList.SQL.Add('Gr.GradeName, SUR.SurfacingName, ') ;
  sq_PkgList.SQL.Add('IH.InvoiceType, IH.InternalInvoiceNo, IL.SHIPPINGPLANNO') ;

//  if thisuser.UserID = 8 then

sq_PkgList.SQL.SaveToFile('sq_PkgListNo_FakturaSpec.txt');

 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.pgInventoryPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
 if (NewPage = tsFakturaSpec) or (NewPage = tsInventering) then
 pcInventory.ActivePage := tsTABELL ;
end;

procedure TfrmInventoryReport.pcInventoryPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
 if (NewPage <> tsTABELL) then
 pgInventory.ActivePage := tsLagret ;
end;

procedure TfrmInventoryReport.acSaveGridLayoutExecute(Sender: TObject);
Var x                 : Integer ;
    fSokAvropMall     : TfSokAvropMall;
begin
 With dmInventory do
 Begin
  cds_Props.Active:= False ;
  sq_Props.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  sq_Props.ParamByName('Name').AsString     := 'InventoryReport' ;
  cds_Props.Active:= True ;
 fSokAvropMall:= TfSokAvropMall.Create(nil) ;
 Try
  if (fSokAvropMall.ShowModal = mrOK) and (cds_Props.RecordCount > 0) AND (cds_PropsName.AsString > '') then
  Begin
   dmsSystem.StoreGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsName.AsString+'/'+cds_PropsForm.AsString, cxGrid1DBBandedTableView1, 'frmInventoryReport') ;

   if cds_Props.State in [dsBrowse] then
    cds_Props.Edit ;
//   LastUsedTemplate:= OvcIniFileStore1.FileName ;
//   lCurrentTemplate.Caption:= LastUsedTemplate ;

{   cds_PropsVerkSupplierNo.AsInteger    := integer(peSupplier.Properties.Items.Objects[peSupplier.ItemIndex]) ;
   cds_PropsLoadingLocationNo.AsInteger := integer(peLoadingLocation.Properties.Items.Objects[peLoadingLocation.ItemIndex]) ;
   cds_PropsShipperNo.AsInteger         := integer(peShipper.Properties.Items.Objects[peShipper.ItemIndex]) ;
   cds_PropsBookingTypeNo.AsInteger     := integer(peBookingType.Properties.Items.Objects[peBookingType.ItemIndex]) ;
   cds_PropsMarketRegionNo.AsInteger    := integer(peMarketRegion.Properties.Items.Objects[peMarketRegion.ItemIndex]) ;
   cds_PropsCustomerNo.AsInteger        := integer(peCustomer.Properties.Items.Objects[peCustomer.ItemIndex]) ;
   cds_PropsAgentNo.AsInteger           := integer(peAgent.Properties.Items.Objects[peAgent.ItemIndex]) ;

   cds_PropsPIPNo.AsInteger             := StrToIntDef(Trim(meFromWeekNo.Text),0) ;
   cds_PropsLIPNo.AsInteger             := StrToIntDef(Trim(meToWeekNo.Text),0) ;

   if cbFilterInvoiceDate.Checked then
    cds_PropsInputOption.AsInteger:= 1
     else
      cds_PropsInputOption.AsInteger:= 0 ;

   cds_PropsStartPeriod.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(esStart.Date) ;
   cds_PropsEndPeriod.AsSQLTimeStamp    := DateTimeToSQLTimeStamp(esEnd.Date) ;


  if cbShowProduct.Checked then
   cds_PropsRegPointNo.AsInteger := 1
    else
     cds_PropsRegPointNo.AsInteger:= 0 ;

  cds_PropsCopyPcs.AsInteger:= cbAvropStatus.ItemIndex ;

  cds_PropsOrderTypeNo.AsInteger:= peOrderType.ItemIndex ; }

   cds_Props.Post ;
   if cds_Props.ChangeCount > 0 then
    cds_Props.ApplyUpdates(0) ;
  End ;//if fSokAvropMall.ShowModal = mrOK then
  Finally
   FreeAndNil(fSokAvropMall) ;
  End ;
 End ;//With...
end;

procedure TfrmInventoryReport.acLoadGridLayoutExecute(Sender: TObject);
Var x,SupplierNo,
    LoadingLocationNo,
    ShipperNo,
    BookingTypeNo,
    MarketRegionNo,
    CustomerNo,
    AgentNo           : Integer ;
    fSokAvropMall     : TfSokAvropMall;
begin
 With dmInventory do
 Begin
  cds_Props.Active:= False ;
  sq_Props.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  sq_Props.ParamByName('Name').AsString     := 'InventoryReport' ;
  cds_Props.Active:= True ;
  fSokAvropMall:= TfSokAvropMall.Create(nil) ;
  Try
   if (fSokAvropMall.ShowModal = mrOK) and (cds_Props.RecordCount > 0) AND (cds_PropsName.AsString > '') then
   Begin
//    Application.ProcessMessages ;
    dmsSystem.LoadGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsName.AsString + '/' + cds_PropsForm.AsString, cxGrid1DBBandedTableView1,'frmInventoryReport') ;



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

procedure TfrmInventoryReport.OpenStandardMall(Sender: TObject);
Var x,SupplierNo,
    LoadingLocationNo,
    ShipperNo,
    BookingTypeNo,
    MarketRegionNo,
    CustomerNo,
    AgentNo           : Integer ;
    fSokAvropMall     : TfSokAvropMall;
begin
 With dmInventory do
 Begin
  if AterStallLayout <> 1 then
  Begin
  cds_Props.Active:= False ;
  sq_Props.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  sq_Props.ParamByName('Name').AsString     := 'InventoryReport' ;
  cds_Props.Active:= True ;
  cds_Props.Filter:= 'LOObjectType = 1' ; //Default
  cds_Props.Filtered:= True ;
  Try
   if (cds_Props.RecordCount > 0) AND (cds_PropsName.AsString > '') then
   Begin
    dmsSystem.LoadGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsName.AsString+'/'+cds_PropsForm.AsString, cxGrid1DBBandedTableView1, 'frmInventoryReport') ;
   End //if (cds_Props.RecordCount > 0) AND (cds_PropsName.AsString > '') then
    else
     Begin
      dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+cxGrid1.Name, cxGrid1DBBandedTableView1) ;
     End ;
  Finally
   cds_Props.Filtered:= False ;
   cds_Props.Active:= False ;
  End ;
  End ;//if AterStallLayout <> 1 then
 End ;//With dm_SokFormular do
end;

procedure TfrmInventoryReport.mInvNosEnter(Sender: TObject);
begin
 dmsSystem.MemoInAction:= True ;
end;

procedure TfrmInventoryReport.mInvNosExit(Sender: TObject);
begin
 dmsSystem.MemoInAction:= False ;
end;

procedure TfrmInventoryReport.GenLoadOrderPkgSpec(Sender: TObject);
Var Save_Cursor   : TCursor;
    x, y          : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormatLengthColumns ;
 Try

 With dmInventory do
 Begin
  For x := 0 to mLONos.Lines.Count - 1 do
  Begin
   if StrToIntDef(mLONos.Lines.Strings[x],0) > 0 then
   dmInventory.Generate_PkgType_InvoiceByCSD(StrToInt(mLONos.Lines.Strings[x])) ;
  End ;


  sq_PkgList.Close ;
  sq_PkgList.SQL.Clear ;
  sq_PkgList.SQL.Add('Select distinct Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS PKT,') ;
  sq_PkgList.SQL.Add('0 AS ProductNo,') ;
  sq_PkgList.SQL.Add('OL.OrderLineDescription AS PRODUKT,') ;
  sq_PkgList.SQL.Add('0 AS PackageTypeNo,') ;
  sq_PkgList.SQL.Add('0 AS PKTNR,') ;
  sq_PkgList.SQL.Add(QuotedStr('xxx')+' AS LEVKOD,') ;

  sq_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  sq_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  sq_PkgList.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;

  sq_PkgList.SQL.Add('RTRIM('+QuotedStr(' ')+') AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : sq_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' AND PTL.STD_Length = 1'
        +' AND ls.NoOfLengths = 1'
        +' THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

//Lägg till resten av kolumnerna...
  For y:= x to 44 do
  sq_PkgList.SQL.Add('0.0 AS L'+inttostr(y)+', ') ;

//Kolumn 65 är en numera en summering av antal paket
  sq_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN PTL.STD_Length = 0 OR ls.NoOfLengths > 1 THEN Str(pn.PackageNo)+pn.SupplierCode') ;
  sq_PkgList.SQL.Add('END)  AS Float)  AS L45,') ;
  sq_GroupLengths.Close ;


  sq_PkgList.SQL.Add('SUM(ptd.m3Actual) AS AM3,') ;
  sq_PkgList.SQL.Add('SUM(ptd.PriceVolume) AS NM3,') ;
  sq_PkgList.SQL.Add('SUM(ptd.LinealMeterActualLength) AS AM1,') ;
  sq_PkgList.SQL.Add('SUM(ptd.MFBMNominal) AS MFBM,') ;
  sq_PkgList.SQL.Add('SUM(ptd.SQMofActualWidth) AS AM2,') ;
  sq_PkgList.SQL.Add('GetDate() AS TILLVERKAD,') ;


  sq_PkgList.SQL.Add(QuotedStr('N/A') + ' AS TS,') ;
  sq_PkgList.SQL.Add(QuotedStr('N/A') + ' AS PC,') ;
  sq_PkgList.SQL.Add(QuotedStr('N/A') + ' KV,') ;
  sq_PkgList.SQL.Add(QuotedStr('N/A') + ' UT,') ;

//  sq_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
//  sq_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
//  sq_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  sq_PkgList.SQL.Add('0 AS STD_Length,') ;
//  sq_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  sq_PkgList.SQL.Add('-1 AS OwnerNo, ' + 'Cast(0 AS Varchar(101)) AS Lager,') ;
  sq_PkgList.SQL.Add('-1 AS OwnerNo, ' + '0 AS Lager,') ;
  sq_PkgList.SQL.Add('-1 AS PIPNo,') ;

  sq_PkgList.SQL.Add('-1 AS LIPNo,') ;

  sq_PkgList.SQL.Add('1 AS Status') ;

  sq_PkgList.SQL.Add('FROM dbo.CustomerShippingPlanHeader CSH ') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.LoadShippingPlan	LSP	ON LSP.ShippingPlanNo = CSH.ShippingPlanNo') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.Loaddetail    LD 	ON  LD.LoadNo            = LSP.LoadNo') ;
  sq_PkgList.SQL.Add('AND LD.SHIPPINGPLANNO    = LSP.SHIPPINGPLANNO') ;

  sq_PkgList.SQL.Add('INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipPlanDetailObjectNo =  LD.DefaultCustShipObjectNo') ;

  sq_PkgList.SQL.Add('INNER JOIN DBO.ORDERLINE	OL	ON CSD.ORDERNO = OL.ORDERNO') ;
  sq_PkgList.SQL.Add('AND CSD.ORDERLINENO = OL.ORDERLINENO') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo') ;
  sq_PkgList.SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;
  sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = LD.PackageTypeNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;

  sq_PkgList.SQL.Add('inner JOIN dbo.Client C			ON C.ClientNo = PN.SupplierNo') ;

  sq_PkgList.SQL.Add('INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitNo') ;

  sq_PkgList.SQL.Add('Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.PackageTypeNo') ;
  sq_PkgList.SQL.Add('AND PTD.InternalInvoiceNo = -1') ;
  sq_PkgList.SQL.Add('AND PTD.LoadNo = LSP.LoadNo') ;
  sq_PkgList.SQL.Add('AND PTD.LoadDetailNo = LD.LoadDetailNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;


  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'STYCK PER LÄNGD' ;
       End ;
   1 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'AM3 PER LÄNGD' ;
       End ;
   2 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'PAKET PER LÄNGD' ;
       End ;
   3 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'PAKET PER LÄNGD' ;
       End ;
  End ;


  sq_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  sq_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_PkgList.SQL.Add('				AND imp.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_PkgList.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_PkgList.SQL.Add('				AND SUR.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_PkgList.SQL.Add('				AND Gr.LanguageCode = 1') ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  sq_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  sq_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;


  sq_PkgList.SQL.Add('WHERE ') ; //SequenceNo = Active "property"

  For x := 0 to mLONos.Lines.Count - 1 do
  Begin
  if StrToIntDef(mLONos.Lines.Strings[x],0) > 0 then
  Begin
   if x > 0 then
   sq_PkgList.SQL.Add(' OR CSH.ShippingPlanNo = ' + mLONos.Lines.Strings[x] )
    else
     sq_PkgList.SQL.Add('CSH.ShippingPlanNo = ' + mLONos.Lines.Strings[x]);
  End ;
  End ;//for x..

  sq_PkgList.SQL.Add('Group By OL.OrderLineDescription, pg.ActualThicknessMM, pg.ActualWidthMM') ;
//  sq_PkgList.SQL.Add('SPE.SpeciesName, Gr.GradeName, SUR.SurfacingName, imp.ProductCategoryName ') ;
//  sq_PkgList.SQL.Add('CSH.SHIPPINGPLANNO') ;
//  if thisuser.UserID = 8 then  sq_PkgList.SQL.SaveToFile('sq_PkgList_FakturaSpec.txt');
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.GenLoadOrderSpecPkgNoTable_SQL(Sender: TObject);
Var Save_Cursor:TCursor;
    y, x: Byte ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 FormatLengthColumns ;
 Try
 With dmInventory do
 Begin
  For x := 0 to mLONos.Lines.Count - 1 do
  Begin
   if StrToIntDef(mLONos.Lines.Strings[x],0) > 0 then
   dmInventory.Generate_PkgType_InvoiceByCSD(StrToInt(mLONos.Lines.Strings[x])) ;
  End ;

  sq_PkgList.Close ;
  sq_PkgList.SQL.Clear ;

  sq_PkgList.SQL.Add('Select distinct 1 AS PKT,') ;

  sq_PkgList.SQL.Add('pd.ProductNo,') ;
  sq_PkgList.SQL.Add('OL.OrderLineDescription AS PRODUKT,') ;
  sq_PkgList.SQL.Add('pt.PackageTypeNo,') ;
  sq_PkgList.SQL.Add('pn.PackageNo AS PKTNR,') ;
  sq_PkgList.SQL.Add('pn.SupplierCode AS LEVKOD,') ;

  sq_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  sq_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  sq_PkgList.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;

  sq_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN PTL.PcsPerLength') ;
  sq_PkgList.SQL.Add('ELSE '+QuotedStr('')) ;
  sq_PkgList.SQL.Add('END AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
  Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : sq_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

  For y:= x to 45 do
  sq_PkgList.SQL.Add('0.0 AS L'+inttostr(y)+', ') ;

  sq_GroupLengths.Close ;


  sq_PkgList.SQL.Add('SUM(ptd.m3Actual) AS AM3,') ;
  sq_PkgList.SQL.Add('SUM(ptd.PriceVolume) AS NM3,') ;
  sq_PkgList.SQL.Add('SUM(ptd.LinealMeterActualLength) AS AM1,') ;
  sq_PkgList.SQL.Add('SUM(ptd.MFBMNominal) AS MFBM,') ;
  sq_PkgList.SQL.Add('SUM(ptd.SQMofActualWidth) AS AM2,') ;
  sq_PkgList.SQL.Add('pn.DateCreated AS TILLVERKAD,') ;
  sq_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  sq_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  sq_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  sq_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  sq_PkgList.SQL.Add('PTL.STD_Length,') ;
  sq_PkgList.SQL.Add('-1 AS OwnerNo, ' + 'Cast(CSH.ShippingPlanNo AS Varchar(101)) AS Lager,') ;
  sq_PkgList.SQL.Add('-1 AS PIPNo,') ;

  sq_PkgList.SQL.Add('-1 AS LIPNo,') ;
  sq_PkgList.SQL.Add('1 AS Status') ;

  sq_PkgList.SQL.Add('FROM dbo.CustomerShippingPlanHeader CSH ') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.LoadShippingPlan	LSP	ON LSP.ShippingPlanNo = CSH.ShippingPlanNo') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.Loaddetail    LD 	ON  LD.LoadNo            = LSP.LoadNo') ;
  sq_PkgList.SQL.Add('AND LD.SHIPPINGPLANNO    = LSP.SHIPPINGPLANNO') ;

  sq_PkgList.SQL.Add('INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipPlanDetailObjectNo =  LD.DefaultCustShipObjectNo') ;
  sq_PkgList.SQL.Add('INNER JOIN DBO.ORDERLINE	OL	ON CSD.ORDERNO = OL.ORDERNO') ;
  sq_PkgList.SQL.Add('AND CSD.ORDERLINENO = OL.ORDERLINENO') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo') ;
  sq_PkgList.SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;
  sq_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = LD.PackageTypeNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
  sq_PkgList.SQL.Add('inner JOIN dbo.Client C			ON C.ClientNo = PN.SupplierNo') ;
  sq_PkgList.SQL.Add('INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.PackageTypeNo') ;

  sq_PkgList.SQL.Add('AND PTD.InternalInvoiceNo = -1') ;
  sq_PkgList.SQL.Add('AND PTD.LoadNo = LSP.LoadNo') ;
  sq_PkgList.SQL.Add('AND PTD.LoadDetailNo = LD.LoadDetailNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  sq_PkgList.SQL.Add('') ;
  sq_PkgList.SQL.Add('') ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'ANTAL PER LÄNGD' ;
       End ;
   1 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'AM3 PER LÄNGD' ;
       End ;
   2 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'NM3 PER LÄNGD' ;
       End ;
   3 : Begin
        sq_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        sq_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        sq_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= 'ANTAL PER LÄNGD' ;
       End ;
  End ;



  sq_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  sq_PkgList.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_PkgList.SQL.Add('				AND imp.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_PkgList.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_PkgList.SQL.Add('				AND SUR.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_PkgList.SQL.Add('				AND Gr.LanguageCode = 1') ;
  sq_PkgList.SQL.Add('WHERE ') ; //SequenceNo = Active "property"

  For x := 0 to mLONos.Lines.Count - 1 do
  Begin
  if StrToIntDef(mLONos.Lines.Strings[x],0) > 0 then
  Begin
   if x > 0 then
   sq_PkgList.SQL.Add(' OR CSH.ShippingPlanNo = ' + mLONos.Lines.Strings[x] )
    else
     sq_PkgList.SQL.Add('CSH.ShippingPlanNo = ' + mLONos.Lines.Strings[x]);
  End ;
  End ;//for x..

  sq_PkgList.SQL.Add('Group by pd.ProductNo, OL.OrderLineDescription, pt.PackageTypeNo, pn.PackageNo, pn.SupplierCode, pg.ActualThicknessMM,') ;
  sq_PkgList.SQL.Add('pg.ActualWidthMM, PTL.STD_Length, PTL.PcsPerLength, ') ;
  sq_PkgList.SQL.Add('pn.DateCreated, SPE.SpeciesName, imp.ProductCategoryName,') ;
  sq_PkgList.SQL.Add('Gr.GradeName, SUR.SurfacingName, ') ;
  sq_PkgList.SQL.Add('CSH.SHIPPINGPLANNO') ;

//  if thisuser.UserID = 8 then  sq_PkgList.SQL.SaveToFile('sq_PkgListNo_FakturaSpec.txt');

 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

Function TfrmInventoryReport.CheckIfAnyCheckedItemsInComboFilter(combo : TcxCheckComboBox) : Boolean ;
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

procedure TfrmInventoryReport.FormUnDock(Sender: TObject; Client: TControl;
  NewTarget: TWinControl; var Allow: Boolean);
begin
 //frmInventoryReport.Align:= alNone ;
end;

procedure TfrmInventoryReport.acExportToExcelExecute(Sender: TObject);
Var FileName  : String ;
begin
 SaveDialog1.Filter := 'Excel files (*.xls)|*.xls';
 SaveDialog1.DefaultExt:= 'xls';
// SaveDialog1.InitialDir:= ExcelDir ;
 if SaveDialog1.Execute then
 Begin
  FileName:= SaveDialog1.FileName ;
  Try
   ExportGridToExcel(FileName, cxGrid1, False, False, True,'xls');
  ShowMessage('Tabell exporterad till excel fil ' + FileName);
  Except
  End ;
 End ;

end;

function TfrmInventoryReport.ControlInvDate(Sender: TObject) : Boolean ;
const
  LF = #10;
Var
    LastInvNr   : Integer ;
    InvDate     : TDateTime ;
    MaxDateMsg  : String ;
Begin
 With dmInventory do
 Begin
  Result  := True ;
  LastInvNr  := dmsSystem.IsRegDateBeforeMaxDate(cds_PkgListLIPNo.AsInteger, Now, InvDate, MaxDateMsg) ;
  if LastInvNr > -1 then
  Begin
   Result  := False ;
  End ;
 End ;//With
end;

End.


