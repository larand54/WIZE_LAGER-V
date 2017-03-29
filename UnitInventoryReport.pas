unit UnitInventoryReport;

{procedure TfrmInventoryReport.FormUnDock(Sender: TObject; Client: TControl;
  NewTarget: TWinControl; var Allow: Boolean);
begin
 //frmInventoryReport.Align:= alNone ;
end;}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, ImgList, OleServer, OleCtrls,
  Menus, DB, ActnList,
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
  dxPScxCheckListBoxLnk, dxPSLbxLnk, dxPSTextLnk, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinsdxRibbonPainter, dxPScxPivotGridLnk, ComCtrls, dxCore, dxPScxSSLnk,
  cxNavigator, cxDateUtils, cxSpinEdit, cxButtonEdit, SqlTimSt,
  cxShellBrowserDialog, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxBarBuiltInMenu, System.Actions, CRAXDRT_TLB, siComp, siLngLnk,
  {CrystalActiveXReportViewerLib11_TLB,} CrystalActiveXReportViewerLib11_TLB;


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
    ds_PLIP: TDataSource;
    acInputOption: TAction;
    dxBarButton36: TdxBarButton;
    mtUserPropShipperNo: TIntegerField;
    acVardaBortPaket: TAction;
    dxBarButton37: TdxBarButton;
    acAndraPktVard: TAction;
    dxBarButton38: TdxBarButton;
    acPrintPcsPerLength: TAction;
    acResetGrid: TAction;
    dxBarButton39: TdxBarButton;
    pgInventory: TcxPageControl;
    tsFakturaSpec: TcxTabSheet;
    tsInventering: TcxTabSheet;
    tsLagret: TcxTabSheet;
    Panel3: TPanel;
    Bevel1: TBevel;
    lcSR: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
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
    cbLIP: TcxCheckComboBox;
    cbOwner: TcxCheckComboBox;
    eAT: TcxTextEdit;
    eAB: TcxTextEdit;
    eAL: TcxTextEdit;
    eTS: TcxTextEdit;
    eKV: TcxTextEdit;
    eSU: TcxTextEdit;
    eIMP: TcxTextEdit;
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
    cxGrid1DBBandedTableView1Pris: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Vrde: TcxGridDBBandedColumn;
    acSetPriceOnMarkedPkgs: TAction;
    dxBarButton43: TdxBarButton;
    cxGrid1DBBandedTableView1VarugruppNamn: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AvgLength: TcxGridDBBandedColumn;
    ccVarugrupp: TcxCheckComboBox;
    cxLabel29: TcxLabel;
    cbInklNotInvoiced: TcxCheckBox;
    cbHideZeroColumns: TcxCheckBox;
    deStartPeriod: TcxDateEdit;
    deEndPeriod: TcxDateEdit;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    grdPkgNoTblDBBandedTableView1VarugruppNamn: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1AvgLength: TcxGridDBBandedColumn;
    cxStyleNormalAktivePkg: TcxStyle;
    cxGrid1DBBandedTableView1REFERENCE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BL_NO: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1REFERENCE: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1BL_NO: TcxGridDBBandedColumn;
    cds_InvCtrlList: TFDQuery;
    cds_InvCtrlListINVENTERINGSNR: TIntegerField;
    cds_InvCtrlListINVENTERINGSDATUM: TSQLTimeStampField;
    cds_InvCtrlListSTATUS: TStringField;
    cds_InvCtrlListMAXDATUM: TSQLTimeStampField;
    cds_InvCtrlListNAMN: TStringField;
    cds_Verk: TFDQuery;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkSearchName: TStringField;
    cds_VerkSalesRegionNo: TIntegerField;
    cds_VerkPktNrLevKod: TStringField;
    cds_PLIP: TFDQuery;
    cds_PLIPPLIP: TStringField;
    cds_PLIPInvCode: TStringField;
    cxLabel14: TcxLabel;
    teInfo1: TcxTextEdit;
    cxLabel15: TcxLabel;
    teInfo2: TcxTextEdit;
    teREF: TcxTextEdit;
    cxLabel30: TcxLabel;
    cxGrid1DBBandedTableView1Info2: TcxGridDBBandedColumn;
    grdPkgNoTblDBBandedTableView1Info2: TcxGridDBBandedColumn;
    Panel7: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cbProdPaketNr: TcxComboBox;
    acNewMall: TAction;
    sq_UserProfile: TFDQuery;
    sq_UserProfileUserID: TIntegerField;
    sq_UserProfileForm: TStringField;
    sq_UserProfileName: TStringField;
    acDeleteMall: TAction;
    acSaveMall: TAction;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    eNB: TcxTextEdit;
    eNT: TcxTextEdit;
    ccbNT: TcxCheckComboBox;
    ccbNB: TcxCheckComboBox;
    cxLabel36: TcxLabel;
    cxLabel35: TcxLabel;
    cbShowSingleLengthPkgs: TcxCheckBox;
    sq_UserProfileCopyPcs: TIntegerField;
    cbReportInProgress: TcxCheckBox;
    Timer1: TTimer;
    tsPrintPkgTags: TcxTabSheet;
    Bevel3: TBevel;
    bPrintPkgSpecLapp: TcxButton;
    lcSizeFormatSpec: TcxDBLookupComboBox;
    lcLengthFormatSpec: TcxDBLookupComboBox;
    lcVolumeFormatSpec: TcxDBLookupComboBox;
    lcSprak: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    teKundReferens: TcxDBTextEdit;
    teArtikelKod: TcxDBTextEdit;
    Panel8: TPanel;
    Panel13: TPanel;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    grdLayout: TcxGrid;
    grdLayoutDBTableView1: TcxGridDBTableView;
    grdLayoutDBTableView1Layout: TcxGridDBColumn;
    grdLayoutDBTableView1AntalKopior: TcxGridDBColumn;
    grdLayoutLevel1: TcxGridLevel;
    cxLabel39: TcxLabel;
    bePath: TcxButtonEdit;
    sePrintDelay: TcxDBSpinEdit;
    cxLabel40: TcxLabel;
    cxLabel41: TcxLabel;
    acAddLayout: TAction;
    acRemoveLayout: TAction;
    mtSpecData: TkbmMemTable;
    mtSpecDataNoOfCopies: TIntegerField;
    mtSpecDataSizeFormatNo: TIntegerField;
    mtSpecDataLengthFormatNo: TIntegerField;
    mtSpecDataVolumeFormatNo: TIntegerField;
    mtSpecDataLanguageCode: TIntegerField;
    mtSpecDataSprk: TStringField;
    mtSpecDataSizeFormat: TStringField;
    mtSpecDataLengthFormat: TStringField;
    mtSpecDataVolumeFormat: TStringField;
    mtSpecDataArtikelKod: TStringField;
    mtSpecDataKundReferens: TStringField;
    mtLayout: TkbmMemTable;
    mtLayoutPackageLogLayoutNo: TIntegerField;
    mtLayoutLayout: TStringField;
    mtLayoutNoOfCopies: TIntegerField;
    dsLayout: TDataSource;
    dsSpecData: TDataSource;
    acPrintPkgSpec: TAction;
    sq_OnePkg: TFDQuery;
    sq_OnePkgPACKAGENO: TIntegerField;
    sq_OnePkgSUPP_CODE: TStringField;
    sq_OnePkgTotalPCS: TIntegerField;
    sq_OnePkgLOPM: TFloatField;
    sq_OnePkgoThickness: TStringField;
    sq_OnePkgoWidth: TStringField;
    sq_OnePkgKV: TStringField;
    sq_OnePkgSpeciesShortName: TStringField;
    sq_OnePkgUT: TStringField;
    sq_OnePkgoLength: TStringField;
    sq_OnePkgVolume: TFloatField;
    sq_OnePkgDateCreated: TSQLTimeStampField;
    Label1: TLabel;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    mtUserPropFilter1: TStringField;
    cds_PLIPLIPNo: TIntegerField;
    mtUserPropFilter2: TStringField;
    Label2: TLabel;
    Label4: TLabel;
    cbAlVWInventories: TcxCheckBox;
    tsPaketKostnader: TcxTabSheet;
    Panel14: TPanel;
    grdPackageCostDetails: TcxGrid;
    grdPackageCostDetailsDBTableView1: TcxGridDBTableView;
    grdPackageCostDetailsDBTableView1PackageNo: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1SupplierCode: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1LIPNo: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1LoadOrderNo: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1CostType: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1ArticleNo: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1DateCreated: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1CostPerAM3: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1KOSTTYP: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1Exclude: TcxGridDBColumn;
    grdPackageCostDetailsLevel1: TcxGridLevel;
    DataSource1: TDataSource;
    cxLabel42: TcxLabel;
    teSetNo: TcxTextEdit;
    siLangLinked_frmInventoryReport: TsiLangLinked;
    cbInklEjFakt2: TcxComboBox;
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
    procedure acGroupByBoxExecute(Sender: TObject);
    procedure acGroupSummaryExecute(Sender: TObject);
    procedure acColAutoWidthSortimentExecute(Sender: TObject);
    procedure acPkgInfoPkgNosTableExecute(Sender: TObject);
    procedure acMovePkgsInterntExecute(Sender: TObject);
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
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdPkgNoTblDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
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
    procedure acExportToExcelExecute(Sender: TObject);
    procedure acSetPriceOnMarkedPkgsExecute(Sender: TObject);
    procedure cbOwnerPropertiesCloseUp(Sender: TObject);
    procedure acNewMallExecute(Sender: TObject);
    procedure acDeleteMallExecute(Sender: TObject);
    procedure acSaveMallExecute(Sender: TObject);
    procedure sq_UserProfileAfterInsert(DataSet: TDataSet);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cbProdPaketNrPropertiesChange(Sender: TObject);
    procedure ccbNBExit(Sender: TObject);
    procedure eNTExit(Sender: TObject);
    procedure eNBExit(Sender: TObject);
    procedure acCRPkgNoReportUpdate(Sender: TObject);
    procedure acCRAntalPerLangdUpdate(Sender: TObject);
    procedure acPkgCodeUpdate(Sender: TObject);
    procedure acPkgNoListUpdate(Sender: TObject);
    procedure acPkgSummaryUpdate(Sender: TObject);
    procedure acInvSummaryUpdate(Sender: TObject);
    procedure acPrintSummartTableUpdate(Sender: TObject);
    procedure acStyckPerLangdTabellUpdate(Sender: TObject);
    procedure acPrintPcsPerLengthUpdate(Sender: TObject);
    procedure acPackageTableUpdate(Sender: TObject);
    procedure acPkgTypeTableUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acAddLayoutExecute(Sender: TObject);
    procedure acRemoveLayoutExecute(Sender: TObject);
    procedure acPrintPkgSpecExecute(Sender: TObject);
    procedure mtLayoutAfterInsert(DataSet: TDataSet);
    procedure bePathPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbInklEjFaktPropertiesChange(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);

  private
    { Private declarations }
//    AT                    : String ;
//    PktNrLevKod           : String ;
    ShowPackageSizeName   : Boolean ;
    cUserLipNoExists      : Boolean ;
    LanguageID            : String ;
    ReportInProgress      : Boolean ;
    report                : IReport ;
    FilterString          : Widestring ;
    AterStallLayout       : Integer ;
    ShowDeActivatedPkgs,
    RightButton,
    ClickedF10            : Boolean ;
    CurrentNoOfPkgs,
    SelectedProductNo     : Integer ;
    SelectedLength        : String ;
    procedure GenPkgNoPrelLoadsTable_SQL(Sender: TObject);
    procedure GenPkgNosDetailTable_SQL_PrelLoads(Sender: TObject);
    procedure GenPrelLoadsTable_SQL(Sender: TObject);
    Procedure SetPriceOnLIPSUM(const NewPrice : Double) ;
    procedure GenPkgNosDetailTable_SQL_EJFAKT(Sender: TObject);
    procedure SelectedPkgsOfPkgTbl_V2 ;
    procedure PrintPkg ;
    procedure SetGridParamsAfterOpenLayout ;
    procedure SaveUserProfile ;
    procedure Open_UserProfile ;
    procedure OpenProdPaketNrMall ;
    procedure PopulateCheckBoxMallar ;
    procedure SetCheckComboBoxes_Where_PktNrLevKod_Required ;
    procedure CheckAllItems ;
    procedure RefreshAfterChanges ;
    Procedure SetPriceOnEachPkg (const NewPrice : Double) ;
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
  uSinglePkgEntry, dmc_UserProps, dmsVidaSystem, UnitPkgEntry,
  dmsVidaPkg, UfelRegPkg, UnitRemovePkg, UnitMovePkgs, uSendMapiMail ,
  dmc_DryKiln, uEntryField, uKilnCharges, uKilnChargeNote, uKilnWizard,
  uVardaBortPkt, uchgPkgVard, uSokAvropMall, uEntryPriceField, uAngeNyMall ;

{$R *.dfm}

(*
function ReplaceStream(mmSrc: TStream; sTxt, sDest: string): Boolean;
var
    I, J, K: Integer;

    iMatched: Integer;
    iCount: Integer;
    buff: array[0..1023] of char;

    lst: array of Integer;
    mmDest: TMemoryStream;
begin
   mmSrc.Position := 0;
//     mmDest.Position := 0;
   iCount := mmSrc.Read(buff, SizeOf(Buff));
   j := 1;
   iMatched := 0;
   while iCount > 0 do
   begin
     i := 0;
     while i < iCount do
     begin
         if Buff[i] = sTxt[j] then
         begin
           if J = 1 then
//             K := mmSrc.Position - SizeOf(Buff) + I;// + 1;
//Changed by JC 2007-02-12
             K := mmSrc.Position - iCount + I; // SizeOf(Buff) + I;// + 1;
           Inc(J);
           Inc(iMatched);
         end else
         begin
           J := 1;
           iMatched := 0;
         end;

         Inc(i);
         if J > Length(sTxt) then
         begin
           J := 1;
           if iMatched = Length(sTxt) then
           begin
             SetLength(lst, High(lst) - Low(lst) + 1 + 1);
             lst[High(lst)] := K;
           end;
         end;
     end;
     iCount := mmSrc.Read(buff, SizeOf(Buff));
   end;
//   for i := Low(lst) to High(lst) do
//   begin
//     Memo1.Lines.Add(IntToStr(lst[i]));
//   end;

   mmDest := TMemoryStream.Create;
   try
       mmSrc.Position := 0;
       mmDest.Position := 0;
       for i := Low(lst) to High(lst) do
       begin
         mmDest.CopyFrom(mmSrc, lst[i] - mmSrc.Position);
         mmDest.Write(sDest[1], Length(sDest));
         mmSrc.Position := lst[i] + Length(sTxt);
       end;
       mmDest.CopyFrom(mmSrc, mmSrc.Size - mmSrc.Position);
       mmSrc.Size := 0;
       mmSrc.CopyFrom(mmDest, 0);
   finally
     mmDest.Free;
   end;
end;   *)


function ReplaceStream(mmSrc: TStream; sTxt, sDest: ansistring): Boolean;
var
    I, J, K: Integer;

    iMatched: Integer;
    iCount: Integer;
    buff: array[0..1023] of ansichar;

    lst: array of Integer;
    mmDest: TMemoryStream;
begin
   mmSrc.Position := 0;
//     mmDest.Position := 0;
   iCount := mmSrc.Read(buff, SizeOf(Buff));
   j := 1;
   iMatched := 0;
   while iCount > 0 do
   begin
     i := 0;
     while i < iCount do
     begin
         if Buff[i] = sTxt[j] then
         begin
           if J = 1 then
//             K := mmSrc.Position - SizeOf(Buff) + I;// + 1;
//Changed by JC 2007-02-12
             K := mmSrc.Position - iCount + I; // SizeOf(Buff) + I;// + 1;
           Inc(J);
           Inc(iMatched);
         end else
         begin
           J := 1;
           iMatched := 0;
         end;

         Inc(i);
         if J > Length(sTxt) then
         begin
           J := 1;
           if iMatched = Length(sTxt) then
           begin
             SetLength(lst, High(lst) - Low(lst) + 1 + 1);
             lst[High(lst)] := K;
           end;
         end;
     end;
     iCount := mmSrc.Read(buff, SizeOf(Buff));
   end;
//   for i := Low(lst) to High(lst) do
//   begin
//     Memo1.Lines.Add(IntToStr(lst[i]));
//   end;

   mmDest := TMemoryStream.Create;
   try
       mmSrc.Position := 0;
       mmDest.Position := 0;
       for i := Low(lst) to High(lst) do
       begin
         mmDest.CopyFrom(mmSrc, lst[i] - mmSrc.Position);
         mmDest.Write(sDest[1], Length(sDest));
         mmSrc.Position := lst[i] + Length(sTxt);
       end;
       mmDest.CopyFrom(mmSrc, mmSrc.Size - mmSrc.Position);
       mmSrc.Size := 0;
       mmSrc.CopyFrom(mmDest, 0);
   finally
     mmDest.Free;
   end;
end;


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

 eNT.Text := '' ;
 eNB.Text := '' ;

 eAL.Text := '' ;
 eTS.Text := '' ;
 eKV.Text := '' ;
 eSU.Text := '' ;
 eIMP.Text:= '' ;

 ccbAB.Clear ;
 ccbAT.Clear ;
 ccbNB.Clear ;
 ccbNT.Clear ;

 ccbAL.Clear ;
 ccbTS2.Clear ;
 ccbKV2.Clear ;
 ccbSU2.Clear ;
 ccbIMP.Clear ;
 ccbBC.Clear ;
 ccbGS.Clear ;
 ccVarugrupp.Clear ;
End ;

procedure TfrmInventoryReport.SetCheckComboBoxes ;
Begin
 With dmInventory do
 Begin
  ccbTS2.Properties.Items.Clear ;
  sq_Specie.ParamByName('LanguageCode').AsInteger    := ThisUser.LanguageID ;
  sq_Specie.Active:= True ;
  While not sq_Specie.Eof do
  Begin
   ccbTS2.Properties.Items.AddCheckItem(sq_Specie.FieldByName('speciesName').AsString, sq_Specie.FieldByName('speciescode').AsString) ;
   sq_Specie.Next ;
  End ;
  sq_Specie.Active:= False ;

  ccbBC.Properties.Items.Clear ;
  sq_BarCode.Open ;
  While not sq_BarCode.Eof do
  Begin
   ccbBC.Properties.Items.AddCheckItem(sq_BarCode.FieldByName('BarCode').AsString, sq_BarCode.FieldByName('BarCodeID').AsString) ;
   sq_BarCode.Next ;
  End ;
  sq_BarCode.Close ;

  ccbGS.Properties.Items.Clear ;
  sq_GradeStamp.Open ;
  While not sq_GradeStamp.Eof do
  Begin
   ccbGS.Properties.Items.AddCheckItem(sq_GradeStamp.FieldByName('GradeStamp').AsString, sq_GradeStamp.FieldByName('GradeStampID').AsString) ;
   sq_GradeStamp.Next ;
  End ;
  sq_GradeStamp.Close ;

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
  sq_Varugrupp.ParamByName('LanguageCode').AsInteger  := ThisUser.LanguageID ;
  sq_Varugrupp.Open ;
  While not sq_Varugrupp.Eof do
  Begin
   ccVarugrupp.Properties.Items.AddCheckItem(sq_Varugrupp.FieldByName('Varugruppnamn').AsString, sq_Varugrupp.FieldByName('VarugruppID').AsString) ;
   sq_Varugrupp.Next ;
  End ;
  sq_Varugrupp.Close ;

 End ;//With
End ;

procedure TfrmInventoryReport.SetCheckComboBoxes_Where_PktNrLevKod_Required  ;
Var PktNrLevKod : String ;

function getPktNrLevKod : String ;
Var x     : Integer ;
    First : Boolean ;
Begin
  First := False ;
  For x := 0 to cbOwner.Properties.Items.Count - 1 do
  Begin
   if cbOwner.States[x] = cbsChecked then
   Begin
    if First = False then
    Begin
     PktNrLevKod := cbOwner.Properties.Items.Items[x].ShortDescription ;
     First  := True ;
    End ;
     // else
       // PktNrLevKod := PktNrLevKod + ', ' + '' + cbOwner.Properties.Items.Items[x].ShortDescription + '' ;
   End;
  End ;
  if Length(PktNrLevKod) = 0 then
   Result  := '0'
    else
      Result  := PktNrLevKod ;

//  Result  := QuotedStr('18');
End;

Begin
 With dmInventory do
 Begin
  PktNrLevKod := getPktNrLevKod ;
  ccbKV2.Properties.Items.Clear ;
  sq_Grade.ParamByName('PktNrLevKod').AsString      := PktNrLevKod ;
  sq_Grade.ParamByName('LanguageCode').AsInteger    := ThisUser.LanguageID ;
  sq_Grade.Active:= True ;
  While not sq_Grade.Eof do
  Begin
   ccbKV2.Properties.Items.AddCheckItem(sq_Grade.FieldByName('gradeName').AsString, sq_Grade.FieldByName('gradecode').AsString) ;
   sq_Grade.Next ;
  End ;
  sq_Grade.Active:= False ;

  ccbSU2.Properties.Items.Clear ;
  sq_Surfacing.ParamByName('PktNrLevKod').AsString      := PktNrLevKod ;
  sq_Surfacing.ParamByName('LanguageCode').AsInteger    := ThisUser.LanguageID ;
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
  sq_PC2.ParamByName('LanguageCode').AsInteger    := ThisUser.LanguageID ;
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
  PktNrLevKod : String ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  PktNrLevKod :=  dmsContact.Get_PktNrLevKod(ThisUser.CompanyNo) ;
  ShowDeActivatedPkgs := False ;
  SetCheckComboBoxes ;

  dmInventory.cds_PkgList.Active  := True ;
  dm_UserProps.LoadUserProps (Self.Name, mtuserprop) ;
  if mtUserPropRunNo.AsInteger <> 1 then
  Begin
//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+cxGrid1.Name, cxGrid1DBBandedTableView1) ;
//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgNoTbl.Name, grdPkgNoTblDBBandedTableView1) ;

  End ;
  AterStallLayout := mtUserPropRunNo.AsInteger ;
  mtUserProp.Edit ;
  mtUserPropNewItemRow.AsInteger  := -1 ;
  mtUserPropRunNo.AsInteger       := 0 ;
  mtUserProp.Post ;


  if (not mtUserPropFilter1.IsNull) and (Length(mtUserPropFilter1.AsString) > 0) then
   cbOwner.EditValue := mtUserPropFilter1.AsString ;

  if (not mtUserPropFilter2.IsNull) and (Length(mtUserPropFilter2.AsString) > 0) then
   cbLIP.EditValue := mtUserPropFilter2.AsString ;

  cds_InvCtrlList.Active  := False ;
  cds_InvCtrlList.ParamByName('VerkNo').AsInteger := ThisUser.CompanyNo ;
  cds_InvCtrlList.Active  := True ;


  SetCheckComboBoxes_Where_PktNrLevKod_Required ;

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

   ccbNT.Visible  := True ;
   ccbNB.Visible  := True ;

   ccbAL.Visible  := True ;

   ccbNB.Visible  := True ;
   ccbNT.Visible  := True ;

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

 if (ThisUser.UserID = 85) or (ThisUser.UserID = 5) or (ThisUser.UserID = 8) then
 Begin
  bbVisaAvAktiverade.Visible:= ivAlways ;
 End
 else
 bbVisaAvAktiverade.Visible:= ivNever ;

{
   With dm_DryKiln do
   Begin
    cds_Kilns.Active          := False ;
    cds_Kilns.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
    cds_Kilns.Active          := True ;

    cds_KilnChargeHdr.Active  := False ;
    cds_KilnChargeHdr.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
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
    cds_KilnProps.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
    cds_KilnProps.Active:= True ;

    cds_KilnChargeHdr.Filter   := 'Status = 0' ;
    cds_KilnChargeHdr.Filtered:= True ;

   End ;
}

  mtSpecData.Active := True ;
  mtSpecData.Insert ;
  mtSpecDataSizeFormatNo.AsInteger        := 1 ;
  mtSpecDataLengthFormatNo.AsInteger      := 1 ;
  mtSpecDataVolumeFormatNo.AsInteger      := 1 ;
  mtSpecDataLanguageCode.AsInteger        := 1 ;
  mtSpecDataKundReferens.AsString         := ' ' ;
  mtSpecData.Post ;


  mtLayout.Active := True ;
  mtLayout.Insert ;
  mtLayoutPackageLogLayoutNo.AsInteger    := 19 ;
  mtLayout.Post ;

  mtLayout.Insert ;
  mtLayoutPackageLogLayoutNo.AsInteger    := 33 ;
  mtLayout.Post ;

  bePath.Text := dm_UserProps.GetUserExportDir(0, ThisUser.UserID, 'Vis_Lager_H') ;



  PopulateCheckBoxMallar ;
// OpenStandardMall(Sender) ;
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
  ShowMessage(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_0' (* 'Saknar crystal reports fil.  Sökväg och filnamn : ' *) )+sPath+ReportName) ;
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
  sq_Temp_Inventory.ExecSQL ;

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
  sq_Temp_Inventory.SQL.Add('pde.ProductDisplayName,') ;
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
  sq_Temp_Inventory.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  sq_Temp_Inventory.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  sq_Temp_Inventory.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  sq_Temp_Inventory.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  sq_Temp_Inventory.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  sq_Temp_Inventory.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;
  sq_Temp_Inventory.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_Temp_Inventory.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;



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

  if not cUserLipNoExists then
   sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  if cbShowSingleLengthPkgs.Checked then
    sq_Temp_Inventory.SQL.Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

//  if ccAvgLengthRegPkt.Checked then   sq_Temp_Inventory.SQL.Add('and pn.AvgLengthType > 1') ;

  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

  if (thisuser.UserID = 258)  then  sq_Temp_Inventory.SQL.SaveToFile('sq_Inv_By_PkgNo.txt');
  sq_Temp_Inventory.ExecSQL ;
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
  sq_Temp_Inventory.ExecSQL ;


  sq_Temp_Inventory.SQL.Clear ;
  sq_Temp_Inventory.SQL.Add('DELETE dbo.Inv_By_LengthFilter') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL ;

  sq_Temp_Inventory.SQL.Clear ;
  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.Inv_By_LengthFilter (Userid, Filter)') ;
  sq_Temp_Inventory.SQL.Add('Values ('+IntToStr(Thisuser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr(FilterString)+')') ;
  if thisuser.UserID = 258 then    sq_Temp_Inventory.SQL.SaveToFile('Inv_By_LengthFilter.txt');
  sq_Temp_Inventory.ExecSQL ;


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

  sq_Temp_Inventory.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  sq_Temp_Inventory.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  sq_Temp_Inventory.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  sq_Temp_Inventory.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_Temp_Inventory.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;
  sq_Temp_Inventory.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  sq_Temp_Inventory.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  sq_Temp_Inventory.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;


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
  if not cUserLipNoExists then
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;


  if cbShowSingleLengthPkgs.Checked then
    sq_Temp_Inventory.SQL.Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

//  if ccAvgLengthRegPkt.Checked then   sq_Temp_Inventory.SQL.Add('and pn.AvgLengthType > 1') ;

  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;

  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;

  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'PDL.ActualLengthMM', ccbAL)) ;

   sq_Temp_Inventory.SQL.Add('group by pdl.ActualLengthMM') ;
   sq_Temp_Inventory.SQL.Add('Order by pdl.ActualLengthMM') ;

  if ThisUser.UserID = 258 then  sq_Temp_Inventory.SQL.SaveToFile('sq_Inv_By_Length.txt');
  sq_Temp_Inventory.ExecSQL ;
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
 LanguageID := inttostr(ThisUser.LanguageID) ;
// if not Assigned(dmInventory) then
//  dmInventory:= TdmInventory.Create(Nil);
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
// if Assigned(dmInventory) then
// FreeAndNil(dmInventory);

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
  sq_Temp_Inventory.ExecSQL ;

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
  sq_Temp_Inventory.SQL.Add('pde.ProductDisplayName,') ;


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

  sq_Temp_Inventory.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  sq_Temp_Inventory.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  sq_Temp_Inventory.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  sq_Temp_Inventory.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  sq_Temp_Inventory.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  sq_Temp_Inventory.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;
  sq_Temp_Inventory.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_Temp_Inventory.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;

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

  if not cUserLipNoExists then
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;

  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;
  
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'PDL.ActualLengthMM', ccbAL)) ;


  sq_Temp_Inventory.SQL.Add('GROUP BY PTL.STD_Length, PTL.PcsPerLength,  ') ;
  sq_Temp_Inventory.SQL.Add('PDL.ProductLengthNo, pde.ProductDisplayName, pg.ActualThicknessMM, pg.ActualWidthMM, ') ;
  sq_Temp_Inventory.SQL.Add('pdl.ActualLengthMM, pdl.NominalLengthMM, pdl.NominalLengthFEET, pdl.ActualLengthINCH,  ') ;
  sq_Temp_Inventory.SQL.Add('lip.LogicalInventoryPointNo, pt.TotalNoOfPieces, pn.SupplierCode, ') ;
  sq_Temp_Inventory.SQL.Add('gs.GradeStamp, bc.BarCode, SPE.SpeciesName, SUR.SurfacingName, Gr.GradeName, ') ;
  sq_Temp_Inventory.SQL.Add('Cy.CityName, LIP.LogicalInventoryName, ptd.NoOfPieces, PC.PackageCodeNo, PC.PackageMainCode, pps.PackageTypeNo ') ;
  if ThisUser.UserID = 258 then sq_Temp_Inventory.SQL.SaveToFile('sq_INV_BY_PKGTYPE.txt');
  sq_Temp_Inventory.ExecSQL ;
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
  sq_Temp_Inventory.ExecSQL ;

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
  sq_Temp_Inventory.SQL.Add('pde.ProductDisplayName,') ;
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

  sq_Temp_Inventory.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  sq_Temp_Inventory.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  sq_Temp_Inventory.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  sq_Temp_Inventory.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  sq_Temp_Inventory.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  sq_Temp_Inventory.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;
  sq_Temp_Inventory.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  sq_Temp_Inventory.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;

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
  if not cUserLipNoExists then
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  if cbShowSingleLengthPkgs.Checked then
    sq_Temp_Inventory.SQL.Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

//  if ccAvgLengthRegPkt.Checked then   sq_Temp_Inventory.SQL.Add('and pn.AvgLengthType > 1') ;

  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;

  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;

  
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;
  sq_Temp_Inventory.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

  if thisuser.UserID = 258 then  sq_Temp_Inventory.SQL.SaveToFile('sq_Temp_Inventory.txt');
  sq_Temp_Inventory.ExecSQL ;
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

procedure TfrmInventoryReport.FormShow(Sender: TObject);
begin
  ReportInProgress  := False ;
end;

procedure TfrmInventoryReport.SaveFilterSettings (Sender: TObject) ;
begin
 With dmInventory do
 Begin

//  FilterString:= '[Lagerställe: '+lcPIPNAME.Text ;
//  FilterString:= FilterString +' Grupp:'+ lcLIPName.Text + ']' ;

  FilterString  := '' ;
  FilterString  := FilterString + GetComboFilterText(' [AT: ', ccbAT) ;
  FilterString  := FilterString + GetComboFilterText(' AB: ', ccbAB) ;

  FilterString  := FilterString + GetComboFilterText(' NT: ', ccbNT) ;
  FilterString  := FilterString + GetComboFilterText(' NB: ', ccbNB) ;

  FilterString  := FilterString + GetComboFilterText(' AL: ', ccbAL) ;
  FilterString  := FilterString + GetComboFilterText(' TS: ', ccbTS2) ;
  FilterString:= FilterString + GetComboFilterText(' UT: ', ccbSU2) ;
  FilterString:= FilterString + GetComboFilterText(' VG: ', ccVarugrupp) ;  
  FilterString:= FilterString + GetComboFilterText(' KV: ', ccbKV2) ;
  FilterString:= FilterString + GetComboFilterText(' IMP: ', ccbIMP) ;
  FilterString:= FilterString + GetComboFilterText(' Stamp: ', ccbGS) ;
  FilterString:= FilterString + GetComboFilterText(' Streckkod: ', ccbBC) ;

  if cbShowSingleLengthPkgs.Checked then
   FilterString := FilterString +
{TSI:IGNORE ON}
	' Endast LP paket '
{TSI:IGNORE OFF}
 ;

//  if ccAvgLengthRegPkt.Checked then   FilterString := FilterString + ' Endast ML-Reg.paket ' ;

  FilterString:= Copy(FilterString, 1, 255) ;

 End ; //with
End ;

procedure TfrmInventoryReport.acPkgCodeExecute(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 if ReportInProgress then  Exit ;
 Save_Cursor        := Screen.Cursor;
 Screen.Cursor      := crSQLWait;    { Show hourglass cursor }
 ReportInProgress   := True ;
 Try
 acPkgCode.Enabled := not ReportInProgress ;
 pcInventory.ActivePage:= tsReport ;
 MakePkgByPkgCODE_SQL(Sender) ;
 if not InitiateReport(Self, 'INV_BY_PKG_CODE.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
 Finally
  ReportInProgress  := False ;
  Screen.Cursor     := Save_Cursor;  { Always restore to normal }
 End;
end;

procedure TfrmInventoryReport.acPkgCodeUpdate(Sender: TObject);
begin
  acPkgCode.Enabled := not ReportInProgress ;
end;

procedure TfrmInventoryReport.acPkgNoListExecute(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 if ReportInProgress then  Exit ;
 Save_Cursor        := Screen.Cursor;
 Screen.Cursor      := crSQLWait;    { Show hourglass cursor }
 ReportInProgress   := True ;
 Try
 acPkgNoList.Enabled := not ReportInProgress ;
 pcInventory.ActivePage:= tsReport ;
 MakePkgNoList (Sender) ;

 if not InitiateReport(Self, 'PKGNOLIST_I.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
 Finally
  ReportInProgress  := False ;
  Screen.Cursor     := Save_Cursor;  { Always restore to normal }
 End;
end;

procedure TfrmInventoryReport.acPkgNoListUpdate(Sender: TObject);
begin
  acPkgNoList.Enabled := not ReportInProgress ;
end;

procedure TfrmInventoryReport.acPkgSummaryExecute(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 if ReportInProgress then  Exit ;
 Save_Cursor        := Screen.Cursor;
 Screen.Cursor      := crSQLWait;    { Show hourglass cursor }
 ReportInProgress   := True ;
 Try
 acPkgSummary.Enabled := not ReportInProgress ;
 pcInventory.ActivePage:= tsReport ;
 MakePkgNo_SQL(Sender) ;

 if not InitiateReport(Self, 'INV_BY_PKGNo_Summ.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;

 Finally
  ReportInProgress  := False ;
 Screen.Cursor      := Save_Cursor;  { Always restore to normal }
 End;
end;

procedure TfrmInventoryReport.acPkgSummaryUpdate(Sender: TObject);
begin
  acPkgSummary.Enabled := not ReportInProgress ;
end;

procedure TfrmInventoryReport.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmInventoryReport.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
// dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + cxGrid1.Name, cxGrid1DBBandedTableView1) ;

// dmsSystem.StoreGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsName.AsString + '/' + cds_PropsForm.AsString, cxGrid1DBBandedTableView1, 'frmInventoryReport') ;

// dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgNoTbl.Name, grdPkgNoTblDBBandedTableView1) ;

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


  mtUserPropAgentNo.AsInteger  :=  dm_DryKiln.cds_KilnChargeHdrKilnChargeNo.AsInteger ;

  mtUserPropFilter1.AsString   := cbOwner.EditValue ;

  mtUserPropFilter2.AsString   := cbLIP.EditValue ;

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

procedure TfrmInventoryReport.SetGridParamsAfterOpenLayout ;
Begin
 if not ClickedF10 then
 Begin
  cxGrid1DBBandedTableView1.Bands[0].Visible    := True ;
  cxGrid1DBBandedTableView1.Bands[0].FixedKind  := fkLeft ;
  cxGrid1DBBandedTableView1.Bands[1].FixedKind  := fkNone ;
 End
 else
 Begin
  cxGrid1DBBandedTableView1.Bands[0].Visible    := False ;
  cxGrid1DBBandedTableView1.Bands[0].FixedKind  := fkLeft ;
  cxGrid1DBBandedTableView1.Bands[1].FixedKind  := fkNone ;
 End ;
End;

//Paketnr
procedure TfrmInventoryReport.acPackageTableExecute(Sender: TObject);
Var PackageNo   : Integer ;
    Supp_Code   : String ;
    Save_Cursor : TCursor;
begin
 if ReportInProgress then  Exit ;
 ShowDeActivatedPkgs  := False ;
 deStartPeriod.PostEditValue ;
 deEndPeriod.PostEditValue ;
 teREF.PostEditValue ;
// eKV.PostEditValue ;

{ if eAT.Focused then
  eAB.SetFocus ;

 ccbAT.PostEditValue ;

 if eAB.Focused then
  eAL.SetFocus ;

 ccbAB.PostEditValue ;


 if eAB.Focused then
  eTSExit.SetFocus ;

 eAL.PostEditValue ;


 eTS.PostEditValue ;}

 if cUserLipNoExists then
  CheckAllItems ;


 if mtUserProp.State in [dsEdit, dsInsert] then
 mtUserProp.Post ;
 ClickedF10 := False ;
 acAddKilnRow.Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_2' (* 'Lägg paket till torksats' *) ) ;
 bbAddPkgsToKilnCharge.Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_2' (* 'Lägg paket till torksats' *) ) ;
 With dmInventory do
 Begin
  ReportInProgress    := True ;
  acPackageTable.Enabled  := not ReportInProgress ;
  Save_Cursor         := Screen.Cursor;
  Screen.Cursor       := crHourGlass;    { Show hourglass cursor }
  cds_PkgNoList.Active  := False ;
//  if cbVolUnitLengths.ItemIndex = 3 then    cbVolUnitLengths.ItemIndex:= 0 ;

//  cds_PkgList.DisableControls ;
  cxGrid1DBBandedTableView1.BeginUpdate ;

  cxGrid1DBBandedTableView1.DataController.KeyFieldNames:= 'PackageNo;SupplierCode;Status;LIPNo' ;
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
      cds_PkgList.Active:= False ;
      GenPkgNoTable_SQL(Sender) ;
      cds_PkgList.Active:= True ;
   End ;


   if cds_PkgList.Active then
   Begin
    PackageNo :=  cds_PkgListPackageNo.AsInteger ;
    Supp_Code :=  cds_PkgListSupplierCode.AsString ;

    if cds_PkgList.Locate('PackageNo;SupplierCode', VarArrayOf([PackageNo, Supp_Code]),[]) then ;
    SetKolumnNameAndHideNonUsedKolumns(Sender) ;
    cxGrid1DBBandedTableView1.Columns[65].Visible  := True ;
    cxGrid1DBBandedTableView1.Columns[65].Caption  := 'ÖVRIGA' ;
   End ;



  Finally
   cxGrid1DBBandedTableView1.EndUpdate ;
//   cds_PkgList.EnableControls ;
   cxGrid1DBBandedTableView1.Bands[2].ApplyBestFit ;
   ReportInProgress     := False ;
   Screen.Cursor        := Save_Cursor ;
  End ;
 End ;

 cbHideZeroColumnsClick(Sender) ;
end;

procedure TfrmInventoryReport.acPackageTableUpdate(Sender: TObject);
begin
  acPackageTable.Enabled  := not ReportInProgress ;
end;

procedure TfrmInventoryReport.GenPkgNoTable_SQL(Sender: TObject);
Var Save_Cursor : TCursor;
    y, x: Byte ;
    SetNo : String ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }

 SetNo  := IntToStr(StrToIntDef(teSetNo.Text, -1)) ;

 FormatLengthColumns ;
 Try
 With dmInventory do
 Begin

   if cbInklEjFakt2.ItemIndex = 2 then
   Begin
    cds_PkgList.Close ;
    cds_PkgList.SQL.Clear ;
    GenPkgNoNotInvoicedTable_SQL(Sender) ;
    Exit ;
   End ;

   if cbInklEjFakt2.ItemIndex = 4 then
   Begin
    cds_PkgList.Close ;
    cds_PkgList.SQL.Clear ;
    GenPkgNoPrelLoadsTable_SQL(Sender) ;
    Exit ;
   End ;


  cds_PkgList.Close ;
  cds_PkgList.SQL.Clear ;

  cds_PkgList.SQL.Add('Select distinct 1 AS PKT,') ;

  cds_PkgList.SQL.Add('pd.ProductNo,') ;
  cds_PkgList.SQL.Add('pde.ProductDisplayName AS PRODUKT,') ;
  cds_PkgList.SQL.Add('pt.PackageTypeNo,') ;
  cds_PkgList.SQL.Add('pn.PackageNo,') ;
  cds_PkgList.SQL.Add('RTRIM(pn.SupplierCode) AS SupplierCode,') ;

  cds_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  cds_PkgList.SQL.Add('pt.TotalNoOfPieces AS STYCK,') ;

  cds_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN PTL.PcsPerLength') ;
  cds_PkgList.SQL.Add('ELSE '+QuotedStr('')) ;
  cds_PkgList.SQL.Add('END AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
  Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0.0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0.0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0.0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0.0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

  For y:= x to 45 do
  cds_PkgList.SQL.Add('CAST(0.0 AS Float) AS L' + inttostr(y) + ', ') ;

  sq_GroupLengths.Close ;



  cds_PkgList.SQL.Add('pt.Totalm3Actual AS AM3,') ;
  cds_PkgList.SQL.Add('pt.Totalm3Nominal AS NM3,') ;
  cds_PkgList.SQL.Add('pt.TotalLinealMeterActualLength AS AM1,') ;
  cds_PkgList.SQL.Add('pt.TotalMFBMNominal AS MFBM,') ;
  cds_PkgList.SQL.Add('pt.TotalSQMofActualWidth AS AM2,') ;
  cds_PkgList.SQL.Add('pn.DateCreated AS TILLVERKAD,') ;


  cds_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  cds_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  cds_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  cds_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  cds_PkgList.SQL.Add('PTL.STD_Length, Verk.ClientNo AS OwnerNo, Cy.CityName+'+QuotedStr('/')+'+lip.LogicalInventoryName AS Lager,') ;
  cds_PkgList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  cds_PkgList.SQL.Add(',isnull(avrPkg.Status,1) AS Status,')
  else
  cds_PkgList.SQL.Add(',1 AS Status,') ;


  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
   if cbInvLista.ItemIndex = 0 then
   Begin
    cds_PkgList.SQL.Add('(Select ls.Avgprice from dbo.LIPSum ls') ;
    cds_PkgList.SQL.Add('WHERE ls.IC_SetNo = ' + SETNo) ;
    cds_PkgList.SQL.Add('and ls.PackageNo = pn.packageNo') ;
    cds_PkgList.SQL.Add('and ls.Suppliercode = pn.SupplierCode') ;
    cds_PkgList.SQL.Add('and ls.LIPNo = LIP.LogicalInventoryPointNo) AS Pris,') ;

    cds_PkgList.SQL.Add('(Select ls.Avgprice * ls.Volume from dbo.LIPSum ls') ;
    cds_PkgList.SQL.Add('WHERE ls.IC_SetNo = ' + SETNo) ;
    cds_PkgList.SQL.Add('and ls.PackageNo = pn.packageNo') ;
    cds_PkgList.SQL.Add('and ls.Suppliercode = pn.SupplierCode') ;
    cds_PkgList.SQL.Add('and ls.LIPNo = LIP.LogicalInventoryPointNo) AS Värde, va.VarugruppNamn,') ;
//    cds_PkgList.SQL.Add('pn.Original_Price * pt.Totalm3Nominal AS Värde, va.VarugruppNamn,') ;
   End
   else
   Begin
    cds_PkgList.SQL.Add('(Select ls.Avgprice from dbo.LIPSum ls') ;
    cds_PkgList.SQL.Add('WHERE ls.IC_SetNo = ' + SETNo) ;
    cds_PkgList.SQL.Add('and ls.PackageNo = pn.packageNo') ;
    cds_PkgList.SQL.Add('and ls.Suppliercode = pn.SupplierCode') ;
    cds_PkgList.SQL.Add('and ls.LIPNo = LIP.LogicalInventoryPointNo) AS Pris,') ;

    cds_PkgList.SQL.Add('(Select ls.Avgprice * ls.Volume from dbo.LIPSum ls') ;
    cds_PkgList.SQL.Add('WHERE ls.IC_SetNo = ' + SETNo) ;
    cds_PkgList.SQL.Add('and ls.PackageNo = pn.packageNo') ;
    cds_PkgList.SQL.Add('and ls.Suppliercode = pn.SupplierCode') ;
    cds_PkgList.SQL.Add('and ls.LIPNo = LIP.LogicalInventoryPointNo) AS Värde, va.VarugruppNamn,') ;
   End ;
  End
  else
   Begin
    cds_PkgList.SQL.Add('pn.Original_Price AS Pris,') ;
    cds_PkgList.SQL.Add('pn.Original_Price * pt.Totalm3Nominal AS Värde, va.VarugruppNamn,') ;
   End ;








  cds_PkgList.SQL.Add('CAST(pt.TotalLinealMeterActualLength / pt.TotalNoOfPieces AS Float) AS AvgLength, pn.REFERENCE, pn.BL_NO,  pn.Info2') ;




  cds_PkgList.SQL.Add('FROM  dbo.Client Verk') ;

  cds_PkgList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;

//  cds_PkgList.SQL.Add('INNER JOIN PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;

  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
   if cbInvLista.ItemIndex = 0 then
   Begin
    cds_PkgList.SQL.Add('INNER JOIN dbo.InvControlrow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    cds_PkgList.SQL.Add('Left Outer Join dbo.AvrPkgInInvCtrl avrPkg on avrPkg.IC_GrpNo = invctrlrow.IC_GrpNo') ;
    cds_PkgList.SQL.Add('AND avrPkg.PackageNo = invctrlrow.PackageNo') ;
    cds_PkgList.SQL.Add('AND avrPkg.SupplierCode = invctrlrow.SupplierCode') ;
    cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    cds_PkgList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
   End
   else
   Begin
    cds_PkgList.SQL.Add('INNER JOIN dbo.InvenRow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    cds_PkgList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
   End ;
  End
  else
   Begin
    cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
   End ;

//  cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;

//  if (mtActLengthMM.RecordCount > 0) or (cbShowSingleLengthPkgs.Checked) then
  Begin
   cds_PkgList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
   cds_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  End ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_4' (* 'ANTAL PER LÄNGD' *) ) ;
       End ;
   1 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_5' (* 'AM3 PER LÄNGD' *) ) ;
       End ;
   2 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_6' (* 'NM3 PER LÄNGD' *) ) ;
       End ;
   3 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_4' (* 'ANTAL PER LÄNGD' *) ) ;
       End ;
  End ;

//  cds_PkgList.SQL.Add('Left join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
//  cds_PkgList.SQL.Add('AND ps.LanguageCode = ' + inttostr(ThisUser.LanguageID)) ;


  cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;

  cds_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_PkgList.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_PkgList.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_PkgList.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_PkgList.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_PkgList.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_PkgList.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Inner Join City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;


  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;

{  if mt_GradeStamp.RecordCount > 0 then
  cds_PkgList.SQL.Add('Inner JOIN GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if mt_BarCode.RecordCount > 0 then
  cds_PkgList.SQL.Add('Inner JOIN BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ; }


  cds_PkgList.SQL.Add('WHERE LIP.SequenceNo = 1') ; //SequenceNo = Active "property"



  if Length(TRIM(teInfo1.Text)) > 0 then
  cds_PkgList.SQL.Add('AND pn.BL_NO LIKE ' + QuotedStr(teInfo1.Text)) ;

  if Length(TRIM(teInfo2.Text)) > 0 then
  cds_PkgList.SQL.Add('AND pn.Info2 LIKE ' + QuotedStr(teInfo2.Text)) ;


  if deStartPeriod.EditValue > 0 then
  cds_PkgList.SQL.Add('AND pn.DateCreated >= ' + QuotedStr(DateTimeToStr(deStartPeriod.Date))) ;

  if deEndPeriod.EditValue > 0 then
  cds_PkgList.SQL.Add('AND pn.DateCreated <= ' + QuotedStr(DateTimeToStr(deEndPeriod.Date))) ;




  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
   if cbAlVWInventories.Checked then
   Begin
    cds_PkgList.SQL.Add('AND EXISTS (Select * FROM dbo.Inven_Al_VW ia WHERE ia.IC_GroupNo = invctrlrow.IC_GrpNo and ia.IC_SetNo = ' + SETNo + ' )') ;
   End
   else
   cds_PkgList.SQL.Add('AND invctrlrow.IC_GrpNo = ' + mtUserPropNewItemRow.AsString);
  End
   else
    cds_PkgList.SQL.Add('AND pn.Status = 1') ;


  if deStartPeriod.EditValue > 0 then
  cds_PkgList.SQL.Add('AND pn.DateCreated >= ' + QuotedStr(DateTimeToStr(deStartPeriod.Date))) ;

  if deEndPeriod.EditValue > 0 then
  cds_PkgList.SQL.Add('AND pn.DateCreated <= ' + QuotedStr(DateTimeToStr(deEndPeriod.Date))) ;


  if Length(TRIM(teREF.Text)) > 0 then
  Begin
   cds_PkgList.SQL.Add('AND pn.REFERENCE LIKE ' + QuotedStr(TRIM(teREF.Text))) ;
  End ;

  if cbAlVWInventories.Checked = False then
  Begin
    if mtUserPropSalesRegionNo.AsInteger > 0 then
      cds_PkgList.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;
    cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;
    if not cUserLipNoExists then
    cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;
  End;

//  if mtUserPropOwnerNo.AsInteger > 0 then
//  cds_PkgList.SQL.Add('AND Verk.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;


  if cbShowSingleLengthPkgs.Checked then
    cds_PkgList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;


  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;

  cds_PkgList.SQL.Add('Group by pd.ProductNo, pde.ProductDisplayName, pt.PackageTypeNo, pn.PackageNo, pn.SupplierCode, pg.ActualThicknessMM,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM, pt.TotalNoOfPieces, PTL.STD_Length, PTL.PcsPerLength, pt.Totalm3Actual, pt.Totalm3Nominal,') ;
  cds_PkgList.SQL.Add('pt.TotalLinealMeterActualLength, pt.TotalMFBMNominal, pt.TotalSQMofActualWidth, pn.DateCreated, SPE.SpeciesName, imp.ProductCategoryName,') ;
  cds_PkgList.SQL.Add('Gr.GradeName, SUR.SurfacingName, va.VarugruppNamn, pn.REFERENCE, pn.BL_NO,  pn.Info2,') ;

  cds_PkgList.SQL.Add('pn.Original_Price,') ;

  cds_PkgList.SQL.Add('Verk.ClientNo , Cy.CityName, lip.LogicalInventoryName,') ;
  cds_PkgList.SQL.Add('lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  cds_PkgList.SQL.Add(',isnull(avrPkg.Status,1)') ;

//  if ShowPackageSizeName then
//  cds_PkgList.SQL.Add(', ps.PackageSizeName') ;

  if cbInklEjFakt2.ItemIndex = 1 then
  Begin
   cds_PkgList.SQL.Add('UNION') ;
   GenPkgNoNotInvoicedTable_SQL(Sender) ;
  End ;

   if cbInklEjFakt2.ItemIndex = 3 then
   Begin
    cds_PkgList.SQL.Add('UNION') ;
    GenPkgNoPrelLoadsTable_SQL(Sender) ;
   End ;


  if thisuser.UserID = 258 then cds_PkgList.SQL.SaveToFile('cds_PkgList_Lagervärde.txt');

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
  cds_PkgList.SQL.Add('Select distinct 1 AS PKT,') ;

  cds_PkgList.SQL.Add('pd.ProductNo,') ;
  cds_PkgList.SQL.Add('pde.ProductDisplayName AS PRODUKT,') ;
  cds_PkgList.SQL.Add('pt.PackageTypeNo,') ;
  cds_PkgList.SQL.Add('pn.PackageNo,') ;
  cds_PkgList.SQL.Add('pn.SupplierCode,') ;

  cds_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  cds_PkgList.SQL.Add('pt.TotalNoOfPieces AS STYCK,') ;

  cds_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN PTL.PcsPerLength') ;
  cds_PkgList.SQL.Add('ELSE '+QuotedStr('')) ;
  cds_PkgList.SQL.Add('END AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
  Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

  For y:= x to 45 do
  cds_PkgList.SQL.Add('CAST(0.0 AS Float) AS L' + inttostr(y) + ', ') ;

  sq_GroupLengths.Close ;



  cds_PkgList.SQL.Add('pt.Totalm3Actual AS AM3,') ;
  cds_PkgList.SQL.Add('pt.Totalm3Nominal AS NM3,') ;
  cds_PkgList.SQL.Add('pt.TotalLinealMeterActualLength AS AM1,') ;
  cds_PkgList.SQL.Add('pt.TotalMFBMNominal AS MFBM,') ;
  cds_PkgList.SQL.Add('pt.TotalSQMofActualWidth AS AM2,') ;
  cds_PkgList.SQL.Add('pn.DateCreated AS TILLVERKAD,') ;


  cds_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  cds_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  cds_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  cds_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  cds_PkgList.SQL.Add('PTL.STD_Length, Verk.ClientNo AS OwnerNo, Cy.CityName+'+QuotedStr('/')+'+lip.LogicalInventoryName AS Lager,') ;
  cds_PkgList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  cds_PkgList.SQL.Add(',isnull(avrPkg.Status,1) AS Status')
  else
  cds_PkgList.SQL.Add(',1 AS Status,') ;

  cds_PkgList.SQL.Add('pn.Original_Price AS Pris,') ;
  cds_PkgList.SQL.Add('pn.Original_Price * pt.Totalm3Nominal AS Värde, va.VarugruppNamn, CAST(pt.TotalLinealMeterActualLength / pt.TotalNoOfPieces AS Float) AS AvgLength, pn.REFERENCE, pn.BL_NO, pn.Info2') ;

  cds_PkgList.SQL.Add('FROM  dbo.Client Verk') ;
  cds_PkgList.SQL.Add('Inner Join dbo.Loads L on L.SupplierNo = Verk.ClientNo') ;

  cds_PkgList.SQL.Add('LEFT join dbo.Invoiced_Load inl') ;
  cds_PkgList.SQL.Add('inner join dbo.InvoiceNos nos on nos.InternalInvoiceNo = inl.InternalInvoiceNo') ;
  cds_PkgList.SQL.Add('on inl.LoadNo = L.LoadNo') ;

  cds_PkgList.SQL.Add('Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.CustomerShippingPlanDetails csd on csd.CustShipPlanDetailObjectNo = LD.DefaultCustShipObjectNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.CustomerShippingPlanHeader csh on csh.ShippingPlanNo = LD.ShippingPlanNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.Orders oh on oh.OrderNo = csh.OrderNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventoryPointNo = LD.LIPNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo and pn.SupplierCode = LD.SupplierCode') ;
  cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = LD.PackageTypeNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = LD.PackageTypeNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;


  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = LD.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_4' (* 'ANTAL PER LÄNGD' *) ) ;
       End ;
   1 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = LD.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_5' (* 'AM3 PER LÄNGD' *) ) ;
       End ;
   2 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = LD.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_6' (* 'NM3 PER LÄNGD' *) ) ;
       End ;
   3 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = LD.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_4' (* 'ANTAL PER LÄNGD' *) ) ;
       End ;
  End ;



  cds_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_PkgList.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_PkgList.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_PkgList.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_PkgList.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_PkgList.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_PkgList.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Inner Join City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;


  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;

  cds_PkgList.SQL.Add('WHERE oh.OrderType = 0') ; //SequenceNo = Active "property"
  cds_PkgList.SQL.Add('AND pn.Status = 0') ;

  cds_PkgList.SQL.Add('AND L.LoadedDate > ' + QuotedStr('2013-12-01')) ;

  cds_PkgList.SQL.Add('AND nos.InvoiceNo is null') ;

  if Length(TRIM(teREF.Text)) > 0 then
  Begin
   cds_PkgList.SQL.Add('AND pn.REFERENCE LIKE ' + QuotedStr(TRIM(teREF.Text))) ;
  End ;

  if Length(TRIM(teInfo1.Text)) > 0 then
  cds_PkgList.SQL.Add('AND pn.BL_NO LIKE ' + QuotedStr(teInfo1.Text)) ;

  if Length(TRIM(teInfo2.Text)) > 0 then
  cds_PkgList.SQL.Add('AND pn.Info2 LIKE ' + QuotedStr(teInfo2.Text)) ;


  if mtUserPropSalesRegionNo.AsInteger > 0 then
  cds_PkgList.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;


  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

  if not cUserLipNoExists then
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  if cbShowSingleLengthPkgs.Checked then
    cds_PkgList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;


  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;

  cds_PkgList.SQL.Add('Group by pd.ProductNo, pde.ProductDisplayName, pt.PackageTypeNo, pn.PackageNo, pn.SupplierCode, pg.ActualThicknessMM,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM, pt.TotalNoOfPieces, PTL.STD_Length, PTL.PcsPerLength, pt.Totalm3Actual, pt.Totalm3Nominal,') ;
  cds_PkgList.SQL.Add('pt.TotalLinealMeterActualLength, pt.TotalMFBMNominal, pt.TotalSQMofActualWidth, pn.DateCreated, SPE.SpeciesName, imp.ProductCategoryName,') ;

  cds_PkgList.SQL.Add('pn.Original_Price, pn.REFERENCE, pn.BL_NO,  pn.Info2,') ;

  cds_PkgList.SQL.Add('Gr.GradeName, SUR.SurfacingName, ') ;
  cds_PkgList.SQL.Add('Verk.ClientNo , Cy.CityName, lip.LogicalInventoryName,') ;
  cds_PkgList.SQL.Add('lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo, va.VarugruppNamn ') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  cds_PkgList.SQL.Add(',isnull(avrPkg.Status,1)') ;

  if thisuser.UserID = 258 then cds_PkgList.SQL.SaveToFile('cds_PkgList.txt');

 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.GenPkgNoPrelLoadsTable_SQL(Sender: TObject);
Var Save_Cursor : TCursor;
    y, x        : Byte ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormatLengthColumns ;
 Try
 With dmInventory do
 Begin
  cds_PkgList.SQL.Add('Select distinct 1 AS PKT,') ;

  cds_PkgList.SQL.Add('pd.ProductNo,') ;
  cds_PkgList.SQL.Add('pde.ProductDisplayName AS PRODUKT,') ;
  cds_PkgList.SQL.Add('pt.PackageTypeNo,') ;
  cds_PkgList.SQL.Add('pn.PackageNo,') ;
  cds_PkgList.SQL.Add('pn.SupplierCode,') ;

  cds_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  cds_PkgList.SQL.Add('pt.TotalNoOfPieces AS STYCK,') ;

  cds_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN PTL.PcsPerLength') ;
  cds_PkgList.SQL.Add('ELSE '+QuotedStr('')) ;
  cds_PkgList.SQL.Add('END AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
  Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

  For y:= x to 45 do
  cds_PkgList.SQL.Add('CAST(0.0 AS Float) AS L' + inttostr(y) + ', ') ;

  sq_GroupLengths.Close ;



  cds_PkgList.SQL.Add('pt.Totalm3Actual AS AM3,') ;
  cds_PkgList.SQL.Add('pt.Totalm3Nominal AS NM3,') ;
  cds_PkgList.SQL.Add('pt.TotalLinealMeterActualLength AS AM1,') ;
  cds_PkgList.SQL.Add('pt.TotalMFBMNominal AS MFBM,') ;
  cds_PkgList.SQL.Add('pt.TotalSQMofActualWidth AS AM2,') ;
  cds_PkgList.SQL.Add('pn.DateCreated AS TILLVERKAD,') ;


  cds_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  cds_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  cds_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  cds_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  cds_PkgList.SQL.Add('PTL.STD_Length, Verk.ClientNo AS OwnerNo, Cy.CityName+'+QuotedStr('/')+'+lip.LogicalInventoryName AS Lager,') ;
  cds_PkgList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  cds_PkgList.SQL.Add(',isnull(avrPkg.Status,1) AS Status')
  else
  cds_PkgList.SQL.Add(',1 AS Status,') ;

  cds_PkgList.SQL.Add('pn.Original_Price AS Pris,') ;
  cds_PkgList.SQL.Add('pn.Original_Price * pt.Totalm3Nominal AS Värde, va.VarugruppNamn, CAST(pt.TotalLinealMeterActualLength / pt.TotalNoOfPieces AS Float) AS AvgLength, pn.REFERENCE, pn.BL_NO, pn.Info2') ;

  cds_PkgList.SQL.Add('FROM  dbo.Client Verk') ;
  cds_PkgList.SQL.Add('Inner Join dbo.Loads L on L.SupplierNo = Verk.ClientNo') ;

//  cds_PkgList.SQL.Add('LEFT join dbo.Invoiced_Load inl') ;
//  cds_PkgList.SQL.Add('inner join dbo.InvoiceNos nos on nos.InternalInvoiceNo = inl.InternalInvoiceNo') ;
//  cds_PkgList.SQL.Add('on inl.LoadNo = L.LoadNo') ;

  cds_PkgList.SQL.Add('Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo') ;
//  cds_PkgList.SQL.Add('Inner Join dbo.CustomerShippingPlanDetails csd on csd.CustShipPlanDetailObjectNo = LD.DefaultCustShipObjectNo') ;
//  cds_PkgList.SQL.Add('Inner Join dbo.CustomerShippingPlanHeader csh on csh.ShippingPlanNo = LD.ShippingPlanNo') ;
//  cds_PkgList.SQL.Add('Inner Join dbo.Orders oh on oh.OrderNo = csh.OrderNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventoryPointNo = LD.LIPNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo and pn.SupplierCode = LD.SupplierCode') ;
  cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = LD.PackageTypeNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = LD.PackageTypeNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;


  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = LD.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_4' (* 'ANTAL PER LÄNGD' *) ) ;
       End ;
   1 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = LD.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_5' (* 'AM3 PER LÄNGD' *) ) ;
       End ;
   2 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = LD.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_6' (* 'NM3 PER LÄNGD' *) ) ;
       End ;
   3 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = LD.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_4' (* 'ANTAL PER LÄNGD' *) ) ;
       End ;
  End ;



  cds_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_PkgList.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_PkgList.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_PkgList.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_PkgList.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_PkgList.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_PkgList.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Inner Join City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;


  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;

//  cds_PkgList.SQL.Add('WHERE oh.OrderType = 0') ; //SequenceNo = Active "property"
  cds_PkgList.SQL.Add('WHERE pn.Status = 0') ;

  cds_PkgList.SQL.Add('AND L.LoadedDate > ' + QuotedStr('2013-12-01')) ;

//  cds_PkgList.SQL.Add('AND nos.InvoiceNo is null') ;
  cds_PkgList.SQL.Add('AND L.SenderLoadStatus <> 2') ;

  if Length(TRIM(teREF.Text)) > 0 then
  Begin
   cds_PkgList.SQL.Add('AND pn.REFERENCE LIKE ' + QuotedStr(TRIM(teREF.Text))) ;
  End ;

  if Length(TRIM(teInfo1.Text)) > 0 then
  cds_PkgList.SQL.Add('AND pn.BL_NO LIKE ' + QuotedStr(teInfo1.Text)) ;

  if Length(TRIM(teInfo2.Text)) > 0 then
  cds_PkgList.SQL.Add('AND pn.Info2 LIKE ' + QuotedStr(teInfo2.Text)) ;


  if mtUserPropSalesRegionNo.AsInteger > 0 then
  cds_PkgList.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;


  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

  if not cUserLipNoExists then
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  if cbShowSingleLengthPkgs.Checked then
    cds_PkgList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;


  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;

  cds_PkgList.SQL.Add('Group by pd.ProductNo, pde.ProductDisplayName, pt.PackageTypeNo, pn.PackageNo, pn.SupplierCode, pg.ActualThicknessMM,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM, pt.TotalNoOfPieces, PTL.STD_Length, PTL.PcsPerLength, pt.Totalm3Actual, pt.Totalm3Nominal,') ;
  cds_PkgList.SQL.Add('pt.TotalLinealMeterActualLength, pt.TotalMFBMNominal, pt.TotalSQMofActualWidth, pn.DateCreated, SPE.SpeciesName, imp.ProductCategoryName,') ;

  cds_PkgList.SQL.Add('pn.Original_Price, pn.REFERENCE, pn.BL_NO,  pn.Info2,') ;

  cds_PkgList.SQL.Add('Gr.GradeName, SUR.SurfacingName, ') ;
  cds_PkgList.SQL.Add('Verk.ClientNo , Cy.CityName, lip.LogicalInventoryName,') ;
  cds_PkgList.SQL.Add('lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo, va.VarugruppNamn ') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  cds_PkgList.SQL.Add(',isnull(avrPkg.Status,1)') ;

  if thisuser.UserID = 258 then cds_PkgList.SQL.SaveToFile('GenPkgNoPrelLoadsTable_SQL.txt');

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
   AItem := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryItems.ItemOfItemLink(cxGrid1DBBandedTableView1.Columns[x + 21]) ;
    if mtUserPropLengthVolUnitNo.AsInteger = 0 then
   AItem.Format:= '########'
   else
   if mtUserPropLengthVolUnitNo.AsInteger = 1 then
   AItem.Format:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_12' (* '########.0' *) )
   else
   AItem.Format:= '########' ;
  End ;

  x := 21 ;

  For y := x to 65 do
   cxGrid1DBBandedTableView1.Columns[y].Caption:= 'L' ;

  cds_ProductLengthInGroup.Active:= False ;
  cds_ProductLengthInGroup.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
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
    cxGrid1DBBandedTableView1Lager.Caption            := siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_13' (* 'LONr' *) ) ;
    cxGrid1DBBandedTableView1.Bands.Items[5].Caption  := siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_14' (* 'LASTORDER' *) ) ;
   End
   else
   Begin
    cxGrid1DBBandedTableView1Lager.Caption            := siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_15' (* 'Lager' *) ) ;
    cxGrid1DBBandedTableView1.Bands.Items[5].Caption  := siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_16' (* 'LAGER' *) ) ;
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
  cds_InvSum.SQL.Clear ;
  cds_InvSum.SQL.Add('Select distinct ') ;

  cds_InvSum.SQL.Add(IntToStr(ThisUser.UserID)+',') ;
  cds_InvSum.SQL.Add('Cy.CityName AS LAGERSTÄLLE,') ;
  cds_InvSum.SQL.Add('SPE.SpeciesName AS TS,') ;
  cds_InvSum.SQL.Add('IMP.ProductCategoryName AS IMP,') ;
  cds_InvSum.SQL.Add('Gr.GradeName AS KV,') ;
  cds_InvSum.SQL.Add('pg.ActualThicknessMM AS ATMM, pg.ActualWidthMM AS ABMM,') ;
  cds_InvSum.SQL.Add('SUR.SurfacingName AS UT,') ;
  cds_InvSum.SQL.Add('SUM(pt.Totalm3Actual) AS AM3,') ;
  cds_InvSum.SQL.Add('SUM(pt.TotalMFBMNominal) AS MFBM,') ;
  cds_InvSum.SQL.Add('SUM(pt.TotalNoOfPieces) AS STYCK,') ;
  cds_InvSum.SQL.Add('count(pn.PackageNo) AS PAKET,') ;
  cds_InvSum.SQL.Add('pt.ProductNo,') ;
  cds_InvSum.SQL.Add('lip.PhysicalInventoryPointNo AS PIPNo') ;

  cds_InvSum.SQL.Add('FROM  dbo.Client Verk') ;
  cds_InvSum.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  cds_InvSum.SQL.Add('Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;
  cds_InvSum.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
  cds_InvSum.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;
//  cds_InvSum.SQL.Add('Inner Join dbo.PackageTypeDetail ptd ON ptd.PackageTypeNo = pn.PackageTypeNo') ;
//  cds_InvSum.SQL.Add('Inner Join dbo.ProductLength pl ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  cds_InvSum.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  cds_InvSum.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_InvSum.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;


  cds_InvSum.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_InvSum.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_InvSum.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  cds_InvSum.SQL.Add('Left Join dbo.ProductCategory	IMP	ON IMP.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_InvSum.SQL.Add('				AND IMP.LanguageCode = ' + LanguageID) ;
  cds_InvSum.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_InvSum.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  cds_InvSum.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_InvSum.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  cds_InvSum.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_InvSum.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;


  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_InvSum.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_InvSum.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;

  cds_InvSum.SQL.Add('Inner Join City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;

  cds_InvSum.SQL.Add('WHERE pn.Status = 1 AND LIP.SequenceNo = 1') ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
  cds_InvSum.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

//  if mtUserPropPIPNo.AsInteger > 0 then  cds_InvSum.SQL.Add('AND pip.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then   cds_InvSum.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;
//  cds_InvSum.SQL.Add(GetSQLofComboFilter(1, 'LIP.LogicalInventoryPointNo', cbLIP)) ;
  cds_InvSum.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

//  if mtUserPropOwnerNo.AsInteger > 0 then
//  cds_InvSum.SQL.Add('AND Verk.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;
  if not cUserLipNoExists then
  cds_InvSum.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;


  if cbShowSingleLengthPkgs.Checked then
    cds_InvSum.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

  cds_InvSum.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  cds_InvSum.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  cds_InvSum.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;

  cds_InvSum.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;

  cds_InvSum.SQL.Add(GetSQLofComboFilter(0, 'IMP.ImpCode', ccbIMP)) ;
  cds_InvSum.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  cds_InvSum.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  cds_InvSum.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  cds_InvSum.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;

  cds_InvSum.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
  cds_InvSum.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;

  cds_InvSum.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

  cds_InvSum.SQL.Add(' Group by SPE.SpeciesName, Gr.GradeName, pg.ActualThicknessMM, pg.ActualWidthMM, SUR.SurfacingName,') ;
  cds_InvSum.SQL.Add(' pt.ProductNo, lip.LogicalInventoryPointNo, Cy.CityName, lip.PhysicalInventoryPointNo, IMP.ProductCategoryName') ;
  if thisuser.UserID = 258 then cds_InvSum.SQL.SaveToFile('cds_InvSum.txt');
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;

end;

procedure TfrmInventoryReport.acCRPkgNoReportExecute(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 cbReportInProgress.Checked := True ;
 if ReportInProgress then  Exit ;


 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
 ReportInProgress  := True ;

 acCRPkgNoReport.Enabled := not ReportInProgress ;


 pcInventory.ActivePage:= tsReport ;
 MakePkgNo_SQL(Sender) ;

 if not InitiateReport(Self, 'INV_BY_PKGNo.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
 Finally
  ReportInProgress  := False ;
  cbReportInProgress.Checked := False ;
  Screen.Cursor     := Save_Cursor;  { Always restore to normal }
 End;
end;

procedure TfrmInventoryReport.acCRPkgNoReportUpdate(Sender: TObject);
begin
  acCRPkgNoReport.Enabled := not cbReportInProgress.Checked ;// not ReportInProgress ;
end;

procedure TfrmInventoryReport.acDeleteMallExecute(Sender: TObject);
begin
 With dmInventory do
 Begin
  if cbProdPaketNr.ItemIndex > -1 then
  Begin
   sq_UserProfile.Active := False ;
   sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
   sq_UserProfile.ParamByName('Form').AsString    := frmInventoryReport.Name + '1' ;
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

procedure TfrmInventoryReport.acCRAntalPerLangdExecute(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 if ReportInProgress then  Exit ;

 Save_Cursor        := Screen.Cursor;
 Screen.Cursor      := crSQLWait;    { Show hourglass cursor }
 ReportInProgress   := True ;
 Try
 acCRAntalPerLangd.Enabled := not ReportInProgress ;
 pcInventory.ActivePage:= tsReport ;

 SaveFilterSettings (Sender) ;

 MakeSQL_VolByLength (Sender) ;

 if not InitiateReport(Self, 'INV_BY_LENGTH.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
 Finally
  ReportInProgress  := False ;
  Screen.Cursor     := Save_Cursor;  { Always restore to normal }
 End;
end;

procedure TfrmInventoryReport.acCRAntalPerLangdUpdate(Sender: TObject);
begin
  acCRAntalPerLangd.Enabled := not cbReportInProgress.Checked ;// not ReportInProgress ;
end;

procedure TfrmInventoryReport.acInvSummaryExecute(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 if ReportInProgress then  Exit ;
 Save_Cursor        := Screen.Cursor;
 Screen.Cursor      := crSQLWait;    { Show hourglass cursor }
 ReportInProgress   := True ;
 Try
 acInvSummary.Enabled := not ReportInProgress ;
 With dmInventory do
 Begin
  pcInventory.ActivePage  := tsInvSum ;
  cds_InvSum.Active       := False ;
  MakeInvSum(Sender);
  cds_InvSum.Active       := True ;
 End ;

 finally
  ReportInProgress  := False ;
  Screen.Cursor     := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.acInvSummaryUpdate(Sender: TObject);
begin
  acInvSummary.Enabled := not ReportInProgress ;
end;

procedure TfrmInventoryReport.grdPkgTblDBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;

procedure TfrmInventoryReport.acPrintPkgSpecExecute(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  Self.mtPkgNos.Active:= True ;
  Try
  if mtSpecData.State in [dsBrowse] then
   mtSpecData.Edit ;
  if Length(mtSpecDataKundReferens.AsString) = 0 then
   mtSpecDataKundReferens.AsString         := ' ' ;
  mtSpecData.Post ;

   Try
    SelectedPkgsOfPkgTbl_V2 ;
    PrintPkg ;
   Except
   End ;
  Finally
   Self.mtPkgNos.Active:= False ;
  End ;
 End ;//with
end;

procedure TfrmInventoryReport.SelectedPkgsOfPkgTbl_V2 ;
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
    ADataSet.Locate('PackageNo;SupplierCode', RecID,[]) ;

    mtPkgNos.Insert ;
    mtPkgNosPackageNo.AsInteger := ADataSet.FieldByName('PackageNo').AsInteger ;
    mtPkgNosSupp_Code.AsString  := ADataSet.FieldByName('SupplierCode').AsString ;
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

      (*
procedure TfrmInventoryReport.PrintPkg ;
Var S1              : AnsiString ;
    PaketnrString   : String ;
    PaketFilNamn    : String ;
    fWait           : TfWait;
    mms             : TMemoryStream ;
begin
 mms := TMemoryStream.Create;
 try

 PaketnrString  := '' ;
 fWait:= TfWait.Create(nil);
 Try
 fWait.cxLabel1.Caption := 'SKRIVER UT...' ;
 fWait.Show ;
 Application.ProcessMessages ;

 With dmInventory do
 Begin
  cds_SpecLayOut.Active:= False ;
  cds_SpecLayOut.ParamByName('PkgCodePPNo').AsInteger := StrToIntDef(cdsPkgPPNo.AsString, -1) ;
  cds_SpecLayOut.Active:= True ;


  cds_SpecLayOut.First ;
  Try
  While not cds_SpecLayOut.Eof do
  Begin
   Try
   mms.LoadFromFile(cds_MainParamsSpecLayoutMap.AsString + cds_SpecLayOutPrintFileName.AsString);

//Example   ReplaceStream(mms, '<VK>', '123456');

   ReplaceStream(mms, '<VK>', cdsPkgVerkKod.AsString);

   PaketnrString    :=  FormatpaketNrToSixCharLong(cdsPkgPackageNo.AsString) ;



   ReplaceStream(mms, '<PN>', PaketnrString);
   if sq_PkgCodeTrf_CSequenceNo.AsInteger <> 3 then
   Begin
     ReplaceStream(mms, '<TS>', cdsPkgSpeciesShortName.AsString);
     ReplaceStream(mms, '<UT>', cdsPkgSurfacingName.AsString);
     ReplaceStream(mms, '<KV>', cdsPkgGradeName.AsString);
     ReplaceStream(mms, '<KK>', TRIM(cdsPkgGradeCode.AsString));
     ReplaceStream(mms, '<ML>', cdsPkgoLength.AsString);
     ReplaceStream(mms, '<TL>', cdsPkgRunm.AsString);
     ReplaceStream(mms, '<TV>', cdsPkgVolume.AsString);
   End;

   ReplaceStream(mms, '<AT>', cdsPkgoThickness.AsString);
   ReplaceStream(mms, '<AB>', cdsPkgoWidth.AsString);



   ReplaceStream(mms, '<TI>', '');


   ReplaceStream(mms, '<TA>', cdsPkgTotalPieces.AsString);

   ReplaceStream(mms, '<AK>', cdsPkgArtikelKod.AsString);

   ReplaceStream(mms, '<KR>', cdsPkgKundReferens.AsString) ;


   Case cdsPkgCertified.AsInteger of
    0 : Begin
          ReplaceStream(mms, '<PEFC>', '');
          ReplaceStream(mms, '<PEFCnr>', '');
          ReplaceStream(mms, '<FSC>', '');
          ReplaceStream(mms, '<FSCnr>', '');
          ReplaceStream(mms, '<JAS>', '');
        End ;
    1 : Begin
          ReplaceStream(mms, '<PEFC>', 'PEFC');
          ReplaceStream(mms, '<PEFCnr>', '05-32-7/V037');
          ReplaceStream(mms, '<FSC>', '');
          ReplaceStream(mms, '<FSCnr>', '');
          ReplaceStream(mms, '<JAS>', '');
        End ;
    2 : Begin
          ReplaceStream(mms, '<FSC>', 'FSC');
          ReplaceStream(mms, '<FSCnr>', '');
          ReplaceStream(mms, '<JAS>', '');
          ReplaceStream(mms, '<PEFC>', '');
          ReplaceStream(mms, '<PEFCnr>', '');
        End ;
    3 : Begin
          ReplaceStream(mms, '<JAS>', 'JAS');
          ReplaceStream(mms, '<PEFC>', '');
          ReplaceStream(mms, '<PEFCnr>', '');
          ReplaceStream(mms, '<FSC>', '');
          ReplaceStream(mms, '<FSCnr>', '');
        End
        else
        Begin
          ReplaceStream(mms, '<PEFC>', '');
          ReplaceStream(mms, '<PEFCnr>', '');
          ReplaceStream(mms, '<FSC>', '');
          ReplaceStream(mms, '<FSCnr>', '');
          ReplaceStream(mms, '<JAS>', '');
        End ;
   End ;

   if cdsPkgKD.AsInteger = 1 then
    ReplaceStream(mms, '<KD>', GetKDText(sq_PkgCodeTrf_CVerkNr.AsInteger, sq_PkgCodeTrf_CRegPointNo.AsInteger))
     else
      ReplaceStream(mms, '<KD>', '') ;





   ReplaceStream(mms, '<DA>', FormatDateTime('yyyy/mm/dd',cdsPkgProduktionDate.AsDateTime));
   ReplaceStream(mms, '<PA>', cds_SpecLayOutAntalKopior.AsString) ;

//   FormatDateTime('"The meeting is on " dddd, mmmm d, yyyy, " at " hh:mm AM/PM', Now + 0.125);

   ReplaceStream(mms, '<L01>', '1.8');
   ReplaceStream(mms, '<L02>', '2.1');
   ReplaceStream(mms, '<L03>', '2.4');
   ReplaceStream(mms, '<L04>', '2.7');
   ReplaceStream(mms, '<L05>', '3.0');
   ReplaceStream(mms, '<L06>', '3.3');
   ReplaceStream(mms, '<L07>', '3.6');
   ReplaceStream(mms, '<L08>', '3.9');
   ReplaceStream(mms, '<L09>', '4.2');
   ReplaceStream(mms, '<L10>', '4.5');
   ReplaceStream(mms, '<L11>', '4.8');
   ReplaceStream(mms, '<L12>', '5.1');
   ReplaceStream(mms, '<L13>', '5.4');
   ReplaceStream(mms, '<L14>', '5.7');
   ReplaceStream(mms, '<L15>', '6.0');

   if Trim(cdsPkgoLength.AsString) = '1800' then
   ReplaceStream(mms, '<A01>', cdsPkgTotalPieces.AsString)
   else
   ReplaceStream(mms, '<A01>', '0');

   if Trim(cdsPkgoLength.AsString) = '2100' then
   ReplaceStream(mms, '<A02>', cdsPkgTotalPieces.AsString)
   else
   ReplaceStream(mms, '<A02>', '0');

   if Trim(cdsPkgoLength.AsString) = '2400' then
   ReplaceStream(mms, '<A03>', cdsPkgTotalPieces.AsString)
   else
   ReplaceStream(mms, '<A03>', '0');

   if Trim(cdsPkgoLength.AsString) = '2700' then
   ReplaceStream(mms, '<A04>', cdsPkgTotalPieces.AsString)
   else
   ReplaceStream(mms, '<A04>', '0');

   if Trim(cdsPkgoLength.AsString) = '3000' then
   ReplaceStream(mms, '<A05>', cdsPkgTotalPieces.AsString)
   else
   ReplaceStream(mms, '<A05>', '0');

   if Trim(cdsPkgoLength.AsString) = '3300' then
   ReplaceStream(mms, '<A06>', cdsPkgTotalPieces.AsString)
   else
   ReplaceStream(mms, '<A06>', '0');

   if Trim(cdsPkgoLength.AsString) = '3600' then
   ReplaceStream(mms, '<A07>', cdsPkgTotalPieces.AsString)
   else
   ReplaceStream(mms, '<A07>', '0') ;

   if Trim(cdsPkgoLength.AsString) = '3900' then
   ReplaceStream(mms, '<A08>', cdsPkgTotalPieces.AsString)
   else
   ReplaceStream(mms, '<A08>', '0');

   if Trim(cdsPkgoLength.AsString) = '4200' then
   ReplaceStream(mms, '<A09>', cdsPkgTotalPieces.AsString)
   else
   ReplaceStream(mms, '<A09>', '0');

   if Trim(cdsPkgoLength.AsString) = '4500' then
   ReplaceStream(mms, '<A10>', cdsPkgTotalPieces.AsString)
   else
   ReplaceStream(mms, '<A10>', '0');

   if Trim(cdsPkgoLength.AsString) = '4800' then
   ReplaceStream(mms, '<A11>', cdsPkgTotalPieces.AsString)
   else
   ReplaceStream(mms, '<A11>', '0');

   if Trim(cdsPkgoLength.AsString) = '5100' then
   ReplaceStream(mms, '<A12>', cdsPkgTotalPieces.AsString)
   else
   ReplaceStream(mms, '<A12>', '0');

   if Trim(cdsPkgoLength.AsString) = '5400' then
   ReplaceStream(mms, '<A13>', cdsPkgTotalPieces.AsString)
   else
   ReplaceStream(mms, '<A13>', '0');

   if Trim(cdsPkgoLength.AsString) = '5700' then
   ReplaceStream(mms, '<A14>', cdsPkgTotalPieces.AsString)
   else
   ReplaceStream(mms, '<A14>', '0') ;

   if Trim(cdsPkgoLength.AsString) = '6000' then
   ReplaceStream(mms, '<A15>', cdsPkgTotalPieces.AsString)
   else
   ReplaceStream(mms, '<A15>', '0');

   PaketFilNamn := cds_MainParamsSpecLayoutMap.AsString + 'Temp_' + PaketnrString + FormatDateTime('.yyyy.mm.dd_hh.nn.ss.zzz', now) + cds_SpecLayOutPrintFileName.AsString ;
   PaketFilNamn := Copy(PaketFilNamn, 1, Length(PaketFilNamn) - 4) + '.prn' ;
   S1           := 'PRINT ' + PaketFilNamn ;// cds_MainParamsSpecLayoutMap.AsString + 'Temp_' + cdsPkgPackageNo.AsString + FormatDateTime('.yyyy.mm.dd_hh.nn.ss.zzz', now) + cds_SpecLayOutPrintFileName.AsString ;

   mms.SaveToFile(PaketFilNamn) ;// (cds_MainParamsSpecLayoutMap.AsString + 'Temp_' + FormatDateTime('.yyyy.mm.dd_hh.nn.ss.zzz', now) + cds_SpecLayOutPrintFileName.AsString) ;
   Sleep(400);

   if cds_MainParamsPrintSpec.AsInteger = 1 then
   Begin
    if cds_MainParamsFtpPrint.AsInteger  = 1 then
    Begin
      CreateFtpScript(PaketFilNamn) ;
      CreateFtpCommand ;
      S1:= cds_MainParamsSpecLayoutMap.AsString + 'Do.Print.cmd' ;
      WinExec(Pansichar(S1), SW_HIDE) ;
    End
    else
    if cds_MainParamsFtpPrint.AsInteger  = 0 then
    Begin
     WinExec(Pansichar(S1), SW_HIDE) ;
    End ;

    Sleep(cds_MainParamsUserID.AsInteger);
    StatusBar1.SimpleText:= 'Skriver ut ' + S1 + '  ' + cds_SpecLayOutAntalKopior.AsString + ' kopior' ;
    Application.ProcessMessages ;
   End ; //if printspec = 1 then


   cds_SpecLayOut.Next ;
   Except
    On E: Exception do
    Begin
     FDoLog(E.Message+' :PrintPkg') ;
     Raise ;
    End ;
   End ;
  End ;//While


  if cds_SpecLayOut.RecordCount = 0 then
   ShowMessage('paketlayout saknas för paketkoden') ;
  Finally
//   cds_SpecLayOut.Filtered:= False ;
  End ;
 End ;
 Finally
  FreeAndNil(fWait) ;
 End ;
 finally
  mms.Free;
 end;
end;
*)

procedure TfrmInventoryReport.PrintPkg ;
Var S1          : AnsiString ;
    t,i,x       : Integer ;
    mms         : TMemoryStream;
    Save_Cursor : TCursor;
begin
 if mtUserProp.State in [dsEdit, dsInsert] then
  mtUserProp.Post ;

 mms := TMemoryStream.Create;
 mtLayout.DisableControls ;
 try

 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
// Application.ProcessMessages ;

 With dmInventory do
 Begin
  Self.mtPkgNos.First ;
  While not Self.mtPkgNos.Eof do
  Begin
  sq_OnePkg.Close ;
  sq_OnePkg.ParamByName('PackageNo').AsInteger    := Self.mtPkgNosPackageNo.AsInteger ;
  sq_OnePkg.ParamByName('SupplierCode').AsString  := Self.mtPkgNosSupp_Code.AsString ;
  sq_OnePkg.ParamByName('LanguageCode').AsInteger := Self.mtSpecDataLanguageCode.AsInteger ;
  sq_OnePkg.ParamByName('SizeFormat').AsInteger   := Self.mtSpecDataSizeFormatNo.AsInteger ;
  sq_OnePkg.ParamByName('LengthFormat').AsInteger := Self.mtSpecDataLengthFormatNo.AsInteger ;
  sq_OnePkg.ParamByName('VolumeFormat').AsInteger := Self.mtSpecDataVolumeFormatNo.AsInteger ;
  sq_OnePkg.Open ;
  if not sq_OnePkg.Eof then
  Begin

  mtLayout.First ;
  Try
  While not mtLayout.Eof do
  Begin
  if cds_SpecLayout.FindKey([mtLayoutPackageLogLayoutNo.AsInteger]) then
  Begin
   mms.LoadFromFile(bePath.Text + cds_SpecLayoutPrintFileName.AsString);
//   Memo1.Lines.LoadFromFile(cds_MainParamsSpecLayoutMap.AsString+cds_SpecLayOutPrintFileName.AsString);
//   S:= Memo1.Text ;

//Example   ReplaceStream(mms, '<VK>', '123456');

   ReplaceStream(mms, '<VK>', sq_OnePkgSUPP_CODE.AsString);
   ReplaceStream(mms, '<PN>', sq_OnePkgPACKAGENO.AsString);
   ReplaceStream(mms, '<TS>', sq_OnePkgSpeciesShortName.AsString);
   ReplaceStream(mms, '<UT>', sq_OnePkgUT.AsString);
   ReplaceStream(mms, '<AT>', sq_OnePkgoThickness.AsString);
   ReplaceStream(mms, '<AB>', sq_OnePkgoWidth.AsString);
   ReplaceStream(mms, '<KV>', sq_OnePkgKV.AsString);
   ReplaceStream(mms, '<TA>', sq_OnePkgTotalPCS.AsString);
   ReplaceStream(mms, '<ML>', sq_OnePkgoLength.AsString);
   ReplaceStream(mms, '<TL>', sq_OnePkgLOPM.AsString);
   ReplaceStream(mms, '<TV>', sq_OnePkgVolume.AsString);
   ReplaceStream(mms, '<AK>', mtSpecDataArtikelKod.AsString);
   ReplaceStream(mms, '<KR>', mtSpecDataKundReferens.AsString);
   ReplaceStream(mms, '<DA>', FormatDateTime('yyyy/mm/dd', SQLTimeStampToDateTime(sq_OnePkgDateCreated.AsSQLTimeStamp)));
   ReplaceStream(mms, '<PA>', mtLayoutNoOfCopies.AsString) ;


   ReplaceStream(mms, '!V', sq_OnePkgSUPP_CODE.AsString);
   ReplaceStream(mms, '!PNR', sq_OnePkgPACKAGENO.AsString);
   ReplaceStream(mms, '!F', sq_OnePkgSpeciesShortName.AsString);
   ReplaceStream(mms, '!Hyvlat', sq_OnePkgUT.AsString);
   ReplaceStream(mms, '!38', sq_OnePkgoThickness.AsString);
   ReplaceStream(mms, '!89', sq_OnePkgoWidth.AsString);
   ReplaceStream(mms, '!No2', sq_OnePkgKV.AsString);
   ReplaceStream(mms, '!200', sq_OnePkgTotalPCS.AsString);
   ReplaceStream(mms, '!2336', sq_OnePkgoLength.AsString);
   ReplaceStream(mms, '!200', sq_OnePkgLOPM.AsString);
   ReplaceStream(mms, '!4', sq_OnePkgVolume.AsString);
   ReplaceStream(mms, '!AK', mtSpecDataArtikelKod.AsString);
   ReplaceStream(mms, '!KR', mtSpecDataKundReferens.AsString);
   ReplaceStream(mms, '!PD', FormatDateTime('yyyy/mm/dd', SQLTimeStampToDateTime(sq_OnePkgDateCreated.AsSQLTimeStamp)));
   ReplaceStream(mms, '!PA', mtLayoutNoOfCopies.AsString) ;
//   ReplaceStream(mms, '99999999', cdsPkgVerkKod.AsString + cdsPkgPackageNo.AsString) ;

//   FormatDateTime('"The meeting is on " dddd, mmmm d, yyyy, " at " hh:mm AM/PM', Now + 0.125);

   ReplaceStream(mms, '<L01>', '1.8');
   ReplaceStream(mms, '<L02>', '2.1');
   ReplaceStream(mms, '<L03>', '2.4');
   ReplaceStream(mms, '<L04>', '2.7');
   ReplaceStream(mms, '<L05>', '3.0');
   ReplaceStream(mms, '<L06>', '3.3');
   ReplaceStream(mms, '<L07>', '3.6');
   ReplaceStream(mms, '<L08>', '3.9');
   ReplaceStream(mms, '<L09>', '4.2');
   ReplaceStream(mms, '<L10>', '4.5');
   ReplaceStream(mms, '<L11>', '4.8');
   ReplaceStream(mms, '<L12>', '5.1');
   ReplaceStream(mms, '<L13>', '5.4');
   ReplaceStream(mms, '<L14>', '5.7');
   ReplaceStream(mms, '<L15>', '6.0');

   if Trim(sq_OnePkgoLength.AsString) =
{TSI:IGNORE ON}
	'1800'
{TSI:IGNORE OFF}
 then
   ReplaceStream(mms, '<A01>', sq_OnePkgTotalPCS.AsString)
   else
   ReplaceStream(mms, '<A01>', '0');

   if Trim(sq_OnePkgoLength.AsString) =
{TSI:IGNORE ON}
	'2100'
{TSI:IGNORE OFF}
 then
   ReplaceStream(mms, '<A02>', sq_OnePkgTotalPCS.AsString)
   else
   ReplaceStream(mms, '<A02>', '0');

   if Trim(sq_OnePkgoLength.AsString) =
{TSI:IGNORE ON}
	'2400'
{TSI:IGNORE OFF}
 then
   ReplaceStream(mms, '<A03>', sq_OnePkgTotalPCS.AsString)
   else
   ReplaceStream(mms, '<A03>', '0');

   if Trim(sq_OnePkgoLength.AsString) =
{TSI:IGNORE ON}
	'2700'
{TSI:IGNORE OFF}
 then
   ReplaceStream(mms, '<A04>', sq_OnePkgTotalPCS.AsString)
   else
   ReplaceStream(mms, '<A04>', '0');

   if Trim(sq_OnePkgoLength.AsString) =
{TSI:IGNORE ON}
	'3000'
{TSI:IGNORE OFF}
 then
   ReplaceStream(mms, '<A05>', sq_OnePkgTotalPCS.AsString)
   else
   ReplaceStream(mms, '<A05>', '0');

   if Trim(sq_OnePkgoLength.AsString) =
{TSI:IGNORE ON}
	'3300'
{TSI:IGNORE OFF}
 then
   ReplaceStream(mms, '<A06>', sq_OnePkgTotalPCS.AsString)
   else
   ReplaceStream(mms, '<A06>', '0');

   if Trim(sq_OnePkgoLength.AsString) =
{TSI:IGNORE ON}
	'3600'
{TSI:IGNORE OFF}
 then
   ReplaceStream(mms, '<A07>', sq_OnePkgTotalPCS.AsString)
   else
   ReplaceStream(mms, '<A07>', '0') ;

   if Trim(sq_OnePkgoLength.AsString) =
{TSI:IGNORE ON}
	'3900'
{TSI:IGNORE OFF}
 then
   ReplaceStream(mms, '<A08>', sq_OnePkgTotalPCS.AsString)
   else
   ReplaceStream(mms, '<A08>', '0');

   if Trim(sq_OnePkgoLength.AsString) =
{TSI:IGNORE ON}
	'4200'
{TSI:IGNORE OFF}
 then
   ReplaceStream(mms, '<A09>', sq_OnePkgTotalPCS.AsString)
   else
   ReplaceStream(mms, '<A09>', '0');

   if Trim(sq_OnePkgoLength.AsString) =
{TSI:IGNORE ON}
	'4500'
{TSI:IGNORE OFF}
 then
   ReplaceStream(mms, '<A10>', sq_OnePkgTotalPCS.AsString)
   else
   ReplaceStream(mms, '<A10>', '0');

   if Trim(sq_OnePkgoLength.AsString) =
{TSI:IGNORE ON}
	'4800'
{TSI:IGNORE OFF}
 then
   ReplaceStream(mms, '<A11>', sq_OnePkgTotalPCS.AsString)
   else
   ReplaceStream(mms, '<A11>', '0');

   if Trim(sq_OnePkgoLength.AsString) =
{TSI:IGNORE ON}
	'5100'
{TSI:IGNORE OFF}
 then
   ReplaceStream(mms, '<A12>', sq_OnePkgTotalPCS.AsString)
   else
   ReplaceStream(mms, '<A12>', '0');

   if Trim(sq_OnePkgoLength.AsString) =
{TSI:IGNORE ON}
	'5400'
{TSI:IGNORE OFF}
 then
   ReplaceStream(mms, '<A13>', sq_OnePkgTotalPCS.AsString)
   else
   ReplaceStream(mms, '<A13>', '0');

   if Trim(sq_OnePkgoLength.AsString) =
{TSI:IGNORE ON}
	'5700'
{TSI:IGNORE OFF}
 then
   ReplaceStream(mms, '<A14>', sq_OnePkgTotalPCS.AsString)
   else
   ReplaceStream(mms, '<A14>', '0') ;

   if Trim(sq_OnePkgoLength.AsString) =
{TSI:IGNORE ON}
	'6000'
{TSI:IGNORE OFF}
 then
   ReplaceStream(mms, '<A15>', sq_OnePkgTotalPCS.AsString)
   else
   ReplaceStream(mms, '<A15>', '0');


//   Memo1.Text:= S ;
   S1:=
{TSI:IGNORE ON}
	'PRINT '
{TSI:IGNORE OFF}
 + bePath.Text +
{TSI:IGNORE ON}
	'Temp_'
{TSI:IGNORE OFF}
+cds_SpecLayOutPrintFileName.AsString ;

   mms.SaveToFile (bePath.Text +
{TSI:IGNORE ON}
	'Temp_'
{TSI:IGNORE OFF}
+cds_SpecLayOutPrintFileName.AsString);
   Sleep(400);
   Memo1.Lines.LoadFromFile(bePath.Text +
{TSI:IGNORE ON}
	'Temp_'
{TSI:IGNORE OFF}
+cds_SpecLayOutPrintFileName.AsString);


//    S1:= 'PRINT C:\Projects\VIS\Central Paket Hamtning\VIS_PAK_C\Layouter\Temp_vidastdl.txt' ;
    WinExec(Pansichar(S1), SW_HIDE) ;
    Sleep(mtUserPropCopyPcs.AsInteger);
//      Sleep(Sleeptime);
    Label1.Caption := siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_36' (* 'Skriver ut ' *) ) + S1 + '  ' + mtLayoutNoOfCopies.AsString + siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_37' (* ' kopior.  Paketnr ' *) ) + Self.mtPkgNosPackageNo.AsString + '/' + Self.mtPkgNosSupp_Code.AsString ;
    Forms.Application.ProcessMessages ;


  End //if cds_SpecLayout.FindKey([mtLayoutPackageLogLayoutNo.AsInteger]) then
   else
    ShowMessage(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_38' (* 'paketlayout saknas' *) )) ;
   mtLayOut.Next ;
  End ;

  Finally
   cds_SpecLayOut.Filtered:= False ;
  End ;
  End //if not sq_OnePkg.Eof then
   else
    ShowMessage(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_39' (* 'Kan inte lokalisera paketnr ' *) ) + Self.mtPkgNosPackageNo.AsString) ;
   Self.mtPkgNos.Next ;
  End ;//While not Self.mtPkgNos.Eof
 End ;//With

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 finally
  mtLayout.EnableControls ;
  mms.Free;
 end;
end;

procedure TfrmInventoryReport.acPrintPkgTableExecute(Sender: TObject);
Var FilterString : String ;
begin
 //sätt samma inställningar i del stat
  FilterString:= FilterString + GetComboFilterText(' [', cbLIP) ;

//  GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)

  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
  if (cbInvLista.ItemIndex = 0) then
   dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_40' (* 'Kontrollista inventeringnr: ' *) )+mtUserPropNewItemRow.AsString)
   else
     dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_41' (* 'Resultatlista inventeringnr: ' *) )+mtUserPropNewItemRow.AsString) ;
  End
  else
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_42' (* 'Lagerlista ' *) ) + FilterString) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;

  dxComponentPrinter1Link1.PrinterPage.Orientation    := poLandscape ;
  dxComponentPrinter1Link1.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1) ;
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
    frmPkgInfo.PackageNo   := cds_PkgListPackageNo.AsInteger ;
    frmPkgInfo.SupplierCode:= cds_PkgListSupplierCode.AsString ;
   End ;
   frmPkgInfo.ShowModal ;
  Finally
   FreeAndNil(frmPkgInfo) ;
  End ;
 End ;
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
//  cds_InvSum.Close ;
  cds_PcsPerLen.SQL.Clear ;
  cds_PcsPerLen.SQL.Add('Select distinct ') ;

  cds_PcsPerLen.SQL.Add('pdl.ActualLengthMM AS AKTUELLÄNGD,') ;
  cds_PcsPerLen.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;
  cds_PcsPerLen.SQL.Add('SUM(ptd.m3Actual) AS AM3,') ;

  cds_PcsPerLen.SQL.Add('(Select COUNT(pn2.PackageNo) FROM dbo.productLength PDL2') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.PackageTypeDetail ptd2 	ON ptd2.ProductLengthNo = pdl2.ProductLengthNo') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.PackageType pt2 	ON pt2.PackageTypeNo = ptd2.PackageTypeNo') ;
  cds_PcsPerLen.SQL.Add('INNER JOIN dbo.PackageNumber pn2 ON pn2.PackageTypeNo = pt2.PackageTypeNo') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip2 ON Lip2.LogicalInventoryPointNo = pn2.LogicalInventoryPointNo') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip2 ON pip2.PhysicalInventoryPointNo = lip2.PhysicalInventoryPointNo') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.Client Verk2 ON verk2.ClientNo = pip2.OwnerNo') ;

  cds_PcsPerLen.SQL.Add('Inner Join dbo.Product pd2 ON pd2.ProductNo = pt2.ProductNo ') ;

  cds_PcsPerLen.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt2.ProductNo') ;
  cds_PcsPerLen.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PcsPerLen.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD2.VarugruppNo') ;
  cds_PcsPerLen.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PcsPerLen.SQL.Add('Inner Join dbo.ProductGroup pg2 ON pg2.ProductGroupNo = pd2.ProductGroupNo ') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg2.ProductCategoryNo') ;
  cds_PcsPerLen.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_PcsPerLen.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_PcsPerLen.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;


  cds_PcsPerLen.SQL.Add('WHERE') ;
  cds_PcsPerLen.SQL.Add('pdl2.ActualLengthMM = pdl.ActualLengthMM' ) ;
  cds_PcsPerLen.SQL.Add('AND pn2.Status = 1 AND LIP2.SequenceNo = 1') ;

//  cds_PcsPerLen.SQL.Add('AND pip2.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then  cds_PcsPerLen.SQL.Add('AND LIP2.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;
//  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'LIP2.LogicalInventoryPointNo', cbLIP)) ;
  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'LIP2.InvCode', cbLIP)) ;


//  if mtUserPropSalesRegionNo.AsInteger <> -1 then
  if mtUserPropSalesRegionNo.AsInteger <> -1 then
   cds_PcsPerLen.SQL.Add('AND Verk2.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;
//  if mtUserPropOwnerNo.AsInteger > 0 then
//  cds_PcsPerLen.SQL.Add('AND Verk2.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;

  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'Verk2.PktNrLevKod', cbOwner)) ;

  if cbShowSingleLengthPkgs.Checked then
  cds_PcsPerLen.SQL.Add('AND 1 = (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = pt2.PackageTypeNo)') ;
  cds_PcsPerLen.SQL.Add(') AS PAKET,') ;

  cds_PcsPerLen.SQL.Add('(Select SUM(ptd2.m3Actual) FROM ') ;
  cds_PcsPerLen.SQL.Add('dbo.productLength PDL2 ') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.PackageTypeDetail ptd2 	ON ptd2.ProductLengthNo = pdl2.ProductLengthNo ') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.PackageType pt2 	ON pt2.PackageTypeNo = ptd2.PackageTypeNo ') ;
  cds_PcsPerLen.SQL.Add('INNER JOIN dbo.PackageNumber pn2 ON pn2.PackageTypeNo = pt2.PackageTypeNo ') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip2 ON Lip2.LogicalInventoryPointNo = pn2.LogicalInventoryPointNo ') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip2 ON pip2.PhysicalInventoryPointNo = lip2.PhysicalInventoryPointNo ') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.Client Verk2 ON verk2.ClientNo = pip2.OwnerNo') ;


  cds_PcsPerLen.SQL.Add('Inner Join dbo.Product pd2 ON pd2.ProductNo = pt2.ProductNo ') ;

  cds_PcsPerLen.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt2.ProductNo') ;
  cds_PcsPerLen.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PcsPerLen.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD2.VarugruppNo') ;
  cds_PcsPerLen.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PcsPerLen.SQL.Add('Inner Join dbo.ProductGroup pg2 ON pg2.ProductGroupNo = pd2.ProductGroupNo ') ;
  cds_PcsPerLen.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg2.ProductCategoryNo') ;
  cds_PcsPerLen.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_PcsPerLen.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_PcsPerLen.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;

  cds_PcsPerLen.SQL.Add('WHERE ') ;
  cds_PcsPerLen.SQL.Add('pn2.Status = 1 AND LIP2.SequenceNo = 1') ;

//  if mtUserPropPIPNo.AsInteger > 0 then  cds_PcsPerLen.SQL.Add('AND pip2.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then  cds_PcsPerLen.SQL.Add('AND LIP2.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;
//  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'LIP2.LogicalInventoryPointNo', cbLIP)) ;
  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'LIP2.InvCode', cbLIP)) ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
   cds_PcsPerLen.SQL.Add('AND Verk2.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;
//  if mtUserPropOwnerNo.AsInteger > 0 then
//  cds_PcsPerLen.SQL.Add('AND Verk2.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;

  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'Verk2.PktNrLevKod', cbOwner)) ;


  if cbShowSingleLengthPkgs.Checked then
  cds_PcsPerLen.SQL.Add('AND 1 = (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd2.PackageTypeNo) ') ;
  cds_PcsPerLen.SQL.Add(') AS TOTAL_AM3 ') ;

  cds_PcsPerLen.SQL.Add('FROM  dbo.Client Verk ') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo ') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo ') ;
  cds_PcsPerLen.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo ') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo ') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo ') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.productLength PDL ON PDL.ProductLengthNo = ptd.ProductLengthNo ') ;
  cds_PcsPerLen.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo ') ;

  cds_PcsPerLen.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_PcsPerLen.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PcsPerLen.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_PcsPerLen.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PcsPerLen.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo ') ;
  cds_PcsPerLen.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_PcsPerLen.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;

  cds_PcsPerLen.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_PcsPerLen.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  cds_PcsPerLen.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_PcsPerLen.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  cds_PcsPerLen.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_PcsPerLen.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_PcsPerLen.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_PcsPerLen.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;

  cds_PcsPerLen.SQL.Add('WHERE pn.Status = 1 AND LIP.SequenceNo = 1') ;
  if mtUserPropSalesRegionNo.AsInteger > 0 then
   cds_PcsPerLen.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

//  if mtUserPropPIPNo.AsInteger > 0 then  cds_PcsPerLen.SQL.Add('AND pip.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then cds_PcsPerLen.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;

//  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'LIP.LogicalInventoryPointNo', cbLIP)) ;
  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

//  if mtUserPropOwnerNo.AsInteger > 0 then
//  cds_PcsPerLen.SQL.Add('AND Verk.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;

  if not cUserLipNoExists then
  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  if cbShowSingleLengthPkgs.Checked then
  cds_PcsPerLen.SQL.Add('AND 1 = (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo) ') ;

  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;

  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;

  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;
  cds_PcsPerLen.SQL.Add(GetSQLofComboFilter(1, 'PDL.ActualLengthMM', ccbAL)) ;


  cds_PcsPerLen.SQL.Add(' group by pdl.ActualLengthMM Order by pdl.ActualLengthMM') ;
  if thisuser.UserID = 258 then cds_PcsPerLen.SQL.SaveToFile('cds_PcsPerLen.txt');
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.acStyckPerLangdTabellExecute(
  Sender: TObject);
Var Save_Cursor : TCursor;
begin
 if ReportInProgress then  Exit ;
 With dmInventory do
 Begin
  Save_Cursor         := Screen.Cursor;
  Screen.Cursor       := crHourGlass;    { Show hourglass cursor }
  ReportInProgress    := True ;
  cds_PcsPerLen.DisableControls ;
  grdPcsPerLengthDBTableView1.BeginUpdate ;
  Try
   acStyckPerLangdTabell.Enabled := not ReportInProgress ;
   cds_PcsPerLen.Active   := False ;
   pcInventory.ActivePage := tsPcsPerLength ;
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
    ReportInProgress    := False ;
    Screen.Cursor := Save_Cursor ;
   End ;
 End ; //with
end;


procedure TfrmInventoryReport.acStyckPerLangdTabellUpdate(Sender: TObject);
begin
  acStyckPerLangdTabell.Enabled := not ReportInProgress ;
end;

procedure TfrmInventoryReport.acPrintSummartTableExecute(Sender: TObject);
//Var Save_Cursor : TCursor;
begin
//  Save_Cursor := Screen.Cursor;
//  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  ReportInProgress  := True ;
  Try
  acPrintSummartTable.Enabled := not ReportInProgress ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.CenterTitle.Add(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_43' (* 'Paketsummering' *) )) ;

//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Add(grdPkgNoTblDBBandedTableView1Lager.EditValue) ;

  dxComponentPrinter1Link3.PrinterPage.Orientation    := poPortrait ;
  dxComponentPrinter1Link3.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link3.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link3.PrinterPage.ApplyToPrintDevice ;

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link3) ;
  Finally
    ReportInProgress  := False ;
//    Screen.Cursor := Save_Cursor ;
  End;
end;

procedure TfrmInventoryReport.acPrintSummartTableUpdate(Sender: TObject);
begin
  acPrintSummartTable.Enabled := not ReportInProgress ;
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
    PackageNo   : Integer ;
    Supp_Code   : String ;
begin
 With dmInventory do
 Begin
  Save_Cursor   := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  cds_PkgList.DisableControls ;
  cxGrid1DBBandedTableView1.BeginUpdate ;
  Try
  mtPkgNos.First ;
  While not mtPkgNos.Eof do
  Begin

  PackageNo :=  mtPkgNosPackageNo.AsInteger ;
  Supp_Code :=  TRIM(mtPkgNosSupp_Code.AsString) ;

  if cds_PkgList.Locate('PackageNo;SupplierCode', VarArrayOf([PackageNo, Supp_Code]),[]) then
//   if cds_PkgList.FindKey([mtPkgNosPackageNo.AsInteger, mtPkgNosSupp_Code.AsString]) then
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
 if ReportInProgress then Exit ;
 deStartPeriod.PostEditValue ;
 deEndPeriod.PostEditValue ;
 teREF.PostEditValue ;


{
   if cxGrid1DBBandedTableView1PackageSizeName.Visible then
   ShowPackageSizeName  :=  True
   else
   ShowPackageSizeName  :=  False ;

}
{ eKV.PostEditValue ;
 eAT.PostEditValue ;
 eAB.PostEditValue ;
 eAL.PostEditValue ;
 eTS.PostEditValue ; }

 if cUserLipNoExists then
  CheckAllItems ;

 ShowDeActivatedPkgs  := False ;
 if mtUserProp.State in [dsEdit, dsInsert] then
 mtUserProp.Post ;

 ClickedF10 := True ;
 acAddKilnRow.Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_2' (* 'Lägg paket till torksats' *) ) ;
 bbAddPkgsToKilnCharge.Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_2' (* 'Lägg paket till torksats' *) ) ;
 With dmInventory do                       //magnus
 Begin
  Save_Cursor       := Screen.Cursor;
  Screen.Cursor     := crHourGlass;    { Show hourglass cursor }
  ReportInProgress  := True ;
  acPkgTypeTable.Enabled  := not ReportInProgress ;

  cds_PkgNoList.Active  := False ;

  cds_PkgList.DisableControls ;
//  cxGrid1DBBandedTableView1.BeginUpdate ;

  cxGrid1DBBandedTableView1.DataController.KeyFieldNames:= 'ProductNo;Status;LIPNo' ;
//  cxGrid1DBBandedTableView1.DataController.KeyFieldNames:= 'ProductNo;PackageTypeNo' ;
  cxGrid1DBBandedTableView1.Bands[0].Visible:= False ;
  cxGrid1DBBandedTableView1.Bands[1].FixedKind:= fkLeft ;

  Try
   cds_PkgList.Active       := False ;
   pcInventory.ActivePage   := tsTABELL ;
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
      cds_PkgList.Active:= False ;
      GenPkgSUMTable_SQL(Sender) ;
      cds_PkgList.Active:= True ;
   End ;


   if cds_PkgList.Active then
   Begin
    SetKolumnNameAndHideNonUsedKolumns(Sender) ;
    cxGrid1DBBandedTableView1.Columns[65].Visible  := True ;
    cxGrid1DBBandedTableView1.Columns[65].Caption   := 'ÖVRIGA' ;
   End ;
  Finally
//   cxGrid1DBBandedTableView1.EndUpdate ;
   cds_PkgList.EnableControls ;
   cxGrid1DBBandedTableView1.Bands[2].ApplyBestFit ;
   ReportInProgress   := False ;
   Screen.Cursor      := Save_Cursor ;
  End ;
 End ;
 cbHideZeroColumnsClick(Sender) ; 
end;

procedure TfrmInventoryReport.acPkgTypeTableUpdate(Sender: TObject);
begin
  acPkgTypeTable.Enabled  := not ReportInProgress ;
end;

procedure TfrmInventoryReport.CheckAllItems ;
Var I : Integer ;
    OneItemIsChecked  : Boolean ;
Begin
  OneItemIsChecked  := False ;
  for I := 0 to cbLIP.Properties.Items.Count - 1 do
   if cbLIP.States[I] = cbsChecked then
    OneItemIsChecked  := True ;

  if OneItemIsChecked = False then
  for I := 0 to cbLIP.Properties.Items.Count - 1 do
    cbLIP.States[I] := cbsChecked;
End ;

Function TfrmInventoryReport.GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
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

Function TfrmInventoryReport.SelectedOwnersOK : Boolean ;
Var
    VidaWood            : Boolean ;
    NoOfSelections, x   : Integer ;
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

 if cbInklEjFakt2.ItemIndex = 2 then
 Begin
  cds_PkgList.Close ;
  cds_PkgList.SQL.Clear ;
  GenNotInvoicedTable_SQL(Sender) ;
  Exit ;
 End ;

 if cbInklEjFakt2.ItemIndex = 4 then
 Begin
  cds_PkgList.Close ;
  cds_PkgList.SQL.Clear ;
  GenPrelLoadsTable_SQL(Sender) ;
  Exit ;
 End ;

  cds_PkgList.Close ;
  cds_PkgList.SQL.Clear ;

  cds_PkgList.SQL.Add('Select distinct Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS PKT,') ;

  cds_PkgList.SQL.Add('pd.ProductNo,') ;
  cds_PkgList.SQL.Add('pde.ProductDisplayName AS PRODUKT,') ;
  cds_PkgList.SQL.Add('0 AS PackageTypeNo,') ;
  cds_PkgList.SQL.Add('0 AS PackageNo,') ;
  cds_PkgList.SQL.Add(QuotedStr('xxx')+' AS SupplierCode,') ;

  cds_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  cds_PkgList.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;

  cds_PkgList.SQL.Add('RTRIM('+QuotedStr(' ')+') AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
//    3 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
//        +' THEN ptd.NoOfPieces/avgp.AvgPcs ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;

    3 : cds_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN pl.ActualLengthMM = ' + sq_GroupLengthsActualLengthMM.AsString
        +' AND PTL.STD_Length = 1'
        +' AND ls.NoOfLengths = 1'
        +' THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L' + inttostr(x)+', ') ;

    4 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = ' + sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces * pl.ActualLengthMM ELSE 0 END) AS Float) AS L' + inttostr(x)+', ') ;

//CAST(count(Distinct CASE WHEN PTL.STD_Length = 1 AND pl.ActualLengthMM
// = 4500 AND ls.NoOfLengths = 1 THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L14,

//    3 : cds_PkgList.SQL.Add('CAST(COUNT(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
//        +' THEN pn.PackageTypeNo ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

//Lägg till resten av kolumnerna...
  For y:= x to 44 do
  cds_PkgList.SQL.Add('CAST(0.0 AS Float) AS L'+inttostr(y)+', ') ;

//Kolumn 65 är en numera en summering av antal paket
  cds_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN PTL.STD_Length = 0 OR ls.NoOfLengths > 1 THEN Str(pn.PackageNo)+pn.SupplierCode') ;
  cds_PkgList.SQL.Add('END)  AS Float)  AS L45,') ;

{  cds_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 1 THEN') ;
  cds_PkgList.SQL.Add(' CASE WHEN ls.NoOfLengths > 1 THEN Cast(Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS Decimal(12,2) )') ;
  cds_PkgList.SQL.Add(' else  0.0 END') ;
  cds_PkgList.SQL.Add('WHEN PTL.STD_Length = 0 THEN') ;
  cds_PkgList.SQL.Add('Cast(Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS Decimal(12,2) )') ;
  cds_PkgList.SQL.Add('ELSE 0.0 END AS L45,') ; }

{  cds_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN') ;
  cds_PkgList.SQL.Add('Cast(Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS Decimal(12,2) )') ;
  cds_PkgList.SQL.Add('ELSE') ;
  cds_PkgList.SQL.Add('0.0 END AS L45,') ; }

  sq_GroupLengths.Close ;


  cds_PkgList.SQL.Add('SUM(ptd.m3Actual) AS AM3,') ;
  cds_PkgList.SQL.Add('SUM(ptd.m3Nominal) AS NM3,') ;
  cds_PkgList.SQL.Add('SUM(ptd.LinealMeterActualLength) AS AM1,') ;
  cds_PkgList.SQL.Add('SUM(ptd.MFBMNominal) AS MFBM,') ;
  cds_PkgList.SQL.Add('SUM(ptd.SQMofActualWidth) AS AM2,') ;
  cds_PkgList.SQL.Add('GetDate() AS TILLVERKAD,') ;


  cds_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  cds_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  cds_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  cds_PkgList.SQL.Add('0 AS STD_Length,') ;
  cds_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  cds_PkgList.SQL.Add('Verk.ClientNo AS OwnerNo, Cy.CityName + ' + QuotedStr('/') + ' + lip.LogicalInventoryName AS Lager,') ;
  cds_PkgList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  cds_PkgList.SQL.Add(',isnull(avrPkg.Status,1) AS Status,')
  else
  cds_PkgList.SQL.Add(',1 AS Status,') ;

//  cds_PkgList.SQL.Add('SUM(pn.Original_Price * ptd.m3Nominal) / SUM(ptd.m3Nominal) AS Pris,') ;

  cds_PkgList.SQL.Add('CASE WHEN SUM(ptd.m3Nominal) > 0 THEN') ;
  cds_PkgList.SQL.Add('SUM(pn.Original_Price * ptd.m3Nominal) / SUM(ptd.m3Nominal)') ;
  cds_PkgList.SQL.Add('END AS Pris,') ;


  cds_PkgList.SQL.Add('SUM(pn.Original_Price * ptd.m3Nominal) AS Värde, va.VarugruppNamn, CAST((SUM(ptd.LinealMeterActualLength) / SUM(ptd.NoOfPieces)) AS Float) AS AvgLength, '
  + QuotedStr('                              ') +
{TSI:IGNORE ON}
	' AS REFERENCE, '
{TSI:IGNORE OFF}
 + QuotedStr('                              ') +
{TSI:IGNORE ON}
	' AS BL_NO, '
{TSI:IGNORE OFF}
 + QuotedStr('                              ') +
{TSI:IGNORE ON}
	' AS Info2'
{TSI:IGNORE OFF}
) ;

//  if ShowPackageSizeName then
//  cds_PkgList.SQL.Add(' ps.PackageSizeName')
//  else
//  cds_PkgList.SQL.Add(QuotedStr('                              ') + ' AS PackageSizeName') ;

  cds_PkgList.SQL.Add('FROM  dbo.Client Verk') ;

  cds_PkgList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;

//  cds_PkgList.SQL.Add('INNER JOIN PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;

  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin

   if cbInvLista.ItemIndex = 0 then
   Begin
    cds_PkgList.SQL.Add('INNER JOIN dbo.InvControlrow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    cds_PkgList.SQL.Add('Left Outer Join dbo.AvrPkgInInvCtrl avrPkg on avrPkg.IC_GrpNo = invctrlrow.IC_GrpNo') ;
    cds_PkgList.SQL.Add('AND avrPkg.PackageNo = invctrlrow.PackageNo') ;
    cds_PkgList.SQL.Add('AND avrPkg.SupplierCode = invctrlrow.SupplierCode') ;
    cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    cds_PkgList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
    cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End
   else
   Begin
    cds_PkgList.SQL.Add('INNER JOIN dbo.InvenRow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    cds_PkgList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
    cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End ;

  End
  else
   Begin
    cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
    cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End ;

//  cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;

//    cds_PkgList.SQL.Add('Left join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
//    cds_PkgList.SQL.Add('AND ps.LanguageCode = ' + inttostr(ThisUser.LanguageID)) ;

//  if (mtActLengthMM.RecordCount > 0) or (cbShowSingleLengthPkgs.Checked) then
//  Begin
   cds_PkgList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
   cds_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
//  End ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_49' (* 'STYCK PER LÄNGD' *) ) ;
       End ;
   1 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_5' (* 'AM3 PER LÄNGD' *) ) ;
       End ;
   2 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_51' (* 'NM3 PER LÄNGD' *) ) ;
       End ;
   3 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_51' (* 'PAKET PER LÄNGD' *) ) ;
       End ;
   4 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = 3') ; //+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_49' (* 'KG PER SÄCKTYP' *) ) ;
       End;
  End ; //Case


  cds_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  cds_PkgList.SQL.Add('Inner Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_PkgList.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_PkgList.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_PkgList.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_PkgList.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_PkgList.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_PkgList.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Inner Join dbo.City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;


  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;


  cds_PkgList.SQL.Add('WHERE LIP.SequenceNo = 1 ') ;

  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
   cds_PkgList.SQL.Add('AND invctrlrow.IC_GrpNo = ' + mtUserPropNewItemRow.AsString);
  End
   else
    cds_PkgList.SQL.Add('AND pn.Status = 1') ;


  if Length(TRIM(teInfo1.Text)) > 0 then
  cds_PkgList.SQL.Add('AND pn.BL_NO LIKE ' + QuotedStr(teInfo1.Text)) ;

  if Length(TRIM(teInfo2.Text)) > 0 then
  cds_PkgList.SQL.Add('AND pn.Info2 LIKE ' + QuotedStr(teInfo2.Text)) ;

  if Length(TRIM(teREF.Text)) > 0 then
  Begin
   cds_PkgList.SQL.Add('AND pn.REFERENCE LIKE ' + QuotedStr(TRIM(teREF.Text))) ;
  End ;

  if deStartPeriod.EditValue > 0 then
  cds_PkgList.SQL.Add('AND pn.DateCreated >= ' + QuotedStr(DateTimeToStr(deStartPeriod.Date))) ;

  if deEndPeriod.EditValue > 0 then
  cds_PkgList.SQL.Add('AND pn.DateCreated <= ' + QuotedStr(DateTimeToStr(deEndPeriod.Date))) ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
  cds_PkgList.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

//  if mtUserPropPIPNo.AsInteger > 0 then  cds_PkgList.SQL.Add('AND pip.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;


//  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'LIP.LogicalInventoryPointNo', cbLIP)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then
//  cds_PkgList.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;

//  if mtUserPropOwnerNo.AsInteger > 0 then
//  cds_PkgList.SQL.Add('AND Verk.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;

  if not cUserLipNoExists then
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;


  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;


  if cbShowSingleLengthPkgs.Checked then
    cds_PkgList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;


  cds_PkgList.SQL.Add('Group By pd.ProductNo, pde.ProductDisplayName, pg.ActualThicknessMM, pg.ActualWidthMM,') ;
  cds_PkgList.SQL.Add('SPE.SpeciesName, Gr.GradeName, SUR.SurfacingName, imp.ProductCategoryName, Verk.ClientNo, ') ;
  cds_PkgList.SQL.Add('Cy.CityName, lip.LogicalInventoryName, lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo, va.VarugruppNamn') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
   cds_PkgList.SQL.Add(',isnull(avrPkg.Status,1)') ;

//  if ShowPackageSizeName then
//  cds_PkgList.SQL.Add(', ps.PackageSizeName') ;


  if cbInklEjFakt2.ItemIndex = 1 then
  Begin
   cds_PkgList.SQL.Add('UNION') ;
   GenNotInvoicedTable_SQL(Sender) ;
  End ;

  if cbInklEjFakt2.ItemIndex = 4 then
  Begin
   cds_PkgList.SQL.Add('UNION') ;
   GenPrelLoadsTable_SQL(Sender) ;
  End ;

 //if thisuser.UserID = 258 then cds_PkgList.SQL.SaveToFile('cds_PkgList_5262.txt');
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
  cds_PkgList.SQL.Add('Select distinct Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS PKT,') ;

  cds_PkgList.SQL.Add('pd.ProductNo,') ;
  cds_PkgList.SQL.Add('pde.ProductDisplayName AS PRODUKT,') ;
  cds_PkgList.SQL.Add('0 AS PackageTypeNo,') ;
  cds_PkgList.SQL.Add('0 AS PackageNo,') ;
  cds_PkgList.SQL.Add(QuotedStr('xxx')+' AS SupplierCode,') ;

  cds_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  cds_PkgList.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;

  cds_PkgList.SQL.Add('RTRIM('+QuotedStr(' ')+') AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;

    3 : cds_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' AND PTL.STD_Length = 1'
        +' AND ls.NoOfLengths = 1'
        +' THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

//Lägg till resten av kolumnerna...
  For y:= x to 44 do
  cds_PkgList.SQL.Add('CAST(0.0 AS Float) AS L'+inttostr(y)+', ') ;

//Kolumn 65 är en numera en summering av antal paket
  cds_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN PTL.STD_Length = 0 OR ls.NoOfLengths > 1 THEN Str(pn.PackageNo)+pn.SupplierCode') ;
  cds_PkgList.SQL.Add('END)  AS Float)  AS L45,') ;

  sq_GroupLengths.Close ;


  cds_PkgList.SQL.Add('SUM(ptd.m3Actual) AS AM3,') ;
  cds_PkgList.SQL.Add('SUM(ptd.m3Nominal) AS NM3,') ;
  cds_PkgList.SQL.Add('SUM(ptd.LinealMeterActualLength) AS AM1,') ;
  cds_PkgList.SQL.Add('SUM(ptd.MFBMNominal) AS MFBM,') ;
  cds_PkgList.SQL.Add('SUM(ptd.SQMofActualWidth) AS AM2,') ;
  cds_PkgList.SQL.Add('GetDate() AS TILLVERKAD,') ;


  cds_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  cds_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  cds_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  cds_PkgList.SQL.Add('0 AS STD_Length,') ;
  cds_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  cds_PkgList.SQL.Add('Verk.ClientNo AS OwnerNo, Cy.CityName+'+QuotedStr('/')+'+lip.LogicalInventoryName AS Lager,') ;
  cds_PkgList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;

  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  cds_PkgList.SQL.Add(',isnull(avrPkg.Status,1) AS Status,')
  else
  cds_PkgList.SQL.Add(',0 AS Status,') ;

  cds_PkgList.SQL.Add('SUM(pn.Original_Price * pt.Totalm3Nominal) / SUM(pt.Totalm3Nominal) AS Pris,') ;
  cds_PkgList.SQL.Add('SUM(pn.Original_Price * pt.Totalm3Nominal) AS Värde, va.VarugruppNamn, CAST((SUM(ptd.LinealMeterActualLength) / SUM(ptd.NoOfPieces)) AS Float) AS AvgLength,') ;
//  pn.REFERENCE, pn.BL_NO,  pn.Info2') ;
  cds_PkgList.SQL.Add(QuotedStr('                              ') + ' AS REFERENCE, '
  + QuotedStr('                              ') +
{TSI:IGNORE ON}
	' AS BL_NO, '
{TSI:IGNORE OFF}

  + QuotedStr('                              ') +
{TSI:IGNORE ON}
	' AS Info2'
{TSI:IGNORE OFF}
) ;



  cds_PkgList.SQL.Add('FROM  dbo.Client Verk') ;
  cds_PkgList.SQL.Add('Inner Join dbo.Loads L on L.SupplierNo = Verk.ClientNo') ;

  cds_PkgList.SQL.Add('LEFT join dbo.Invoiced_Load inl') ;
  cds_PkgList.SQL.Add('inner join dbo.InvoiceNos nos on nos.InternalInvoiceNo = inl.InternalInvoiceNo') ;
  cds_PkgList.SQL.Add('on inl.LoadNo = L.LoadNo') ;

  cds_PkgList.SQL.Add('Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.CustomerShippingPlanDetails csd on csd.CustShipPlanDetailObjectNo = LD.DefaultCustShipObjectNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.CustomerShippingPlanHeader csh on csh.ShippingPlanNo = csd.ShippingPlanNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.Orders oh on oh.OrderNo = csh.OrderNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventoryPointNo = LD.LIPNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo and pn.SupplierCode = LD.SupplierCode') ;

    cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = LD.PackageTypeNo') ;
    cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;

//  if (mtActLengthMM.RecordCount > 0) or (cbShowSingleLengthPkgs.Checked) then
    Begin
    cds_PkgList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
    cds_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
    End ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_49' (* 'STYCK PER LÄNGD' *) ) ;
       End ;
   1 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_5' (* 'AM3 PER LÄNGD' *) ) ;
       End ;
   2 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_51' (* 'PAKET PER LÄNGD' *) ) ;
       End ;
   3 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_51' (* 'PAKET PER LÄNGD' *) ) ;
       End ;
  End ;


  cds_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_PkgList.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_PkgList.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  cds_PkgList.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_PkgList.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_PkgList.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_PkgList.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_PkgList.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Inner Join dbo.City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;


  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;


  cds_PkgList.SQL.Add('WHERE L.LoadedDate > ' + QuotedStr('2013-12-01')) ;
  cds_PkgList.SQL.Add('AND oh.OrderType = 0') ;//

  cds_PkgList.SQL.Add('AND nos.InvoiceNo is null') ;

  if Length(TRIM(teInfo1.Text)) > 0 then
  cds_PkgList.SQL.Add('AND pn.BL_NO LIKE ' + QuotedStr(teInfo1.Text)) ;

  if Length(TRIM(teInfo2.Text)) > 0 then
  cds_PkgList.SQL.Add('AND pn.Info2 LIKE ' + QuotedStr(teInfo2.Text)) ;

  if Length(TRIM(teREF.Text)) > 0 then
  Begin
   cds_PkgList.SQL.Add('AND pn.REFERENCE LIKE ' + QuotedStr(TRIM(teREF.Text))) ;
  End ;

  cds_PkgList.SQL.Add('AND pn.Status = 0') ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
  cds_PkgList.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

  if not cUserLipNoExists then
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;
  
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;


  if cbShowSingleLengthPkgs.Checked then
    cds_PkgList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

  cds_PkgList.SQL.Add('Group By pd.ProductNo, pde.ProductDisplayName, pg.ActualThicknessMM, pg.ActualWidthMM,') ;
  cds_PkgList.SQL.Add('SPE.SpeciesName, Gr.GradeName, SUR.SurfacingName, imp.ProductCategoryName, Verk.ClientNo, ') ;
  cds_PkgList.SQL.Add('Cy.CityName, lip.LogicalInventoryName, lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo, va.VarugruppNamn') ;
   if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
   cds_PkgList.SQL.Add(',isnull(avrPkg.Status,1)') ;

  if thisuser.UserID = 258 then cds_PkgList.SQL.SaveToFile('sq_PkgSumListNOTInvoiced.txt');
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.GenPrelLoadsTable_SQL(Sender: TObject);
Var Save_Cursor   : TCursor;
    x, y          : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormatLengthColumns ;
 Try

 With dmInventory do
 Begin
  cds_PkgList.SQL.Add('Select distinct Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS PKT,') ;

  cds_PkgList.SQL.Add('pd.ProductNo,') ;
  cds_PkgList.SQL.Add('pde.ProductDisplayName AS PRODUKT,') ;
  cds_PkgList.SQL.Add('0 AS PackageTypeNo,') ;
  cds_PkgList.SQL.Add('0 AS PackageNo,') ;
  cds_PkgList.SQL.Add(QuotedStr('xxx')+' AS SupplierCode,') ;

  cds_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  cds_PkgList.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;

  cds_PkgList.SQL.Add('RTRIM('+QuotedStr(' ')+') AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;

    3 : cds_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' AND PTL.STD_Length = 1'
        +' AND ls.NoOfLengths = 1'
        +' THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

//Lägg till resten av kolumnerna...
  For y:= x to 44 do
  cds_PkgList.SQL.Add('CAST(0.0 AS Float) AS L'+inttostr(y)+', ') ;

//Kolumn 65 är en numera en summering av antal paket
  cds_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN PTL.STD_Length = 0 OR ls.NoOfLengths > 1 THEN Str(pn.PackageNo)+pn.SupplierCode') ;
  cds_PkgList.SQL.Add('END)  AS Float)  AS L45,') ;

  sq_GroupLengths.Close ;


  cds_PkgList.SQL.Add('SUM(ptd.m3Actual) AS AM3,') ;
  cds_PkgList.SQL.Add('SUM(ptd.m3Nominal) AS NM3,') ;
  cds_PkgList.SQL.Add('SUM(ptd.LinealMeterActualLength) AS AM1,') ;
  cds_PkgList.SQL.Add('SUM(ptd.MFBMNominal) AS MFBM,') ;
  cds_PkgList.SQL.Add('SUM(ptd.SQMofActualWidth) AS AM2,') ;
  cds_PkgList.SQL.Add('GetDate() AS TILLVERKAD,') ;


  cds_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  cds_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  cds_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  cds_PkgList.SQL.Add('0 AS STD_Length,') ;
  cds_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  cds_PkgList.SQL.Add('Verk.ClientNo AS OwnerNo, Cy.CityName+'+QuotedStr('/')+'+lip.LogicalInventoryName AS Lager,') ;
  cds_PkgList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;

  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  cds_PkgList.SQL.Add(',isnull(avrPkg.Status,1) AS Status,')
  else
  cds_PkgList.SQL.Add(',0 AS Status,') ;

  cds_PkgList.SQL.Add('SUM(pn.Original_Price * pt.Totalm3Nominal) / SUM(pt.Totalm3Nominal) AS Pris,') ;
  cds_PkgList.SQL.Add('SUM(pn.Original_Price * pt.Totalm3Nominal) AS Värde, va.VarugruppNamn, CAST((SUM(ptd.LinealMeterActualLength) / SUM(ptd.NoOfPieces)) AS Float) AS AvgLength,') ;
//  pn.REFERENCE, pn.BL_NO,  pn.Info2') ;
  cds_PkgList.SQL.Add(QuotedStr('                              ') + ' AS REFERENCE, '
  + QuotedStr('                              ') +
{TSI:IGNORE ON}
	' AS BL_NO, '
{TSI:IGNORE OFF}

  + QuotedStr('                              ') +
{TSI:IGNORE ON}
	' AS Info2'
{TSI:IGNORE OFF}
) ;



  cds_PkgList.SQL.Add('FROM  dbo.Client Verk') ;
  cds_PkgList.SQL.Add('Inner Join dbo.Loads L on L.SupplierNo = Verk.ClientNo') ;

{
    cds_PkgList.SQL.Add('LEFT join dbo.Invoiced_Load inl') ;
    cds_PkgList.SQL.Add('inner join dbo.InvoiceNos nos on nos.InternalInvoiceNo = inl.InternalInvoiceNo') ;
    cds_PkgList.SQL.Add('on inl.LoadNo = L.LoadNo') ;

}
  cds_PkgList.SQL.Add('Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo') ;
//  cds_PkgList.SQL.Add('Inner Join dbo.CustomerShippingPlanDetails csd on csd.CustShipPlanDetailObjectNo = LD.DefaultCustShipObjectNo') ;
//  cds_PkgList.SQL.Add('Inner Join dbo.CustomerShippingPlanHeader csh on csh.ShippingPlanNo = csd.ShippingPlanNo') ;
//  cds_PkgList.SQL.Add('Inner Join dbo.Orders oh on oh.OrderNo = csh.OrderNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventoryPointNo = LD.LIPNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo and pn.SupplierCode = LD.SupplierCode') ;

    cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = LD.PackageTypeNo') ;
    cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;

//  if (mtActLengthMM.RecordCount > 0) or (cbShowSingleLengthPkgs.Checked) then
    Begin
    cds_PkgList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
    cds_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
    End ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_49' (* 'STYCK PER LÄNGD' *) ) ;
       End ;
   1 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_5' (* 'AM3 PER LÄNGD' *) ) ;
       End ;
   2 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_51' (* 'PAKET PER LÄNGD' *) ) ;
       End ;
   3 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_51' (* 'PAKET PER LÄNGD' *) ) ;
       End ;
  End ;


  cds_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_PkgList.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_PkgList.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  cds_PkgList.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_PkgList.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_PkgList.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_PkgList.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_PkgList.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Inner Join dbo.City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;


  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;


  cds_PkgList.SQL.Add('WHERE L.LoadedDate > ' + QuotedStr('2013-12-01')) ;
  cds_PkgList.SQL.Add('AND L.SenderLoadStatus <> 2') ;
//  cds_PkgList.SQL.Add('AND oh.OrderType = 0') ;//

//  cds_PkgList.SQL.Add('AND nos.InvoiceNo is null') ;

  if Length(TRIM(teInfo1.Text)) > 0 then
  cds_PkgList.SQL.Add('AND pn.BL_NO LIKE ' + QuotedStr(teInfo1.Text)) ;

  if Length(TRIM(teInfo2.Text)) > 0 then
  cds_PkgList.SQL.Add('AND pn.Info2 LIKE ' + QuotedStr(teInfo2.Text)) ;

  if Length(TRIM(teREF.Text)) > 0 then
  Begin
   cds_PkgList.SQL.Add('AND pn.REFERENCE LIKE ' + QuotedStr(TRIM(teREF.Text))) ;
  End ;

  cds_PkgList.SQL.Add('AND pn.Status = 0') ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
  cds_PkgList.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

  if not cUserLipNoExists then
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;


  if cbShowSingleLengthPkgs.Checked then
    cds_PkgList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

  cds_PkgList.SQL.Add('Group By pd.ProductNo, pde.ProductDisplayName, pg.ActualThicknessMM, pg.ActualWidthMM,') ;
  cds_PkgList.SQL.Add('SPE.SpeciesName, Gr.GradeName, SUR.SurfacingName, imp.ProductCategoryName, Verk.ClientNo, ') ;
  cds_PkgList.SQL.Add('Cy.CityName, lip.LogicalInventoryName, lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo, va.VarugruppNamn') ;
   if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
   cds_PkgList.SQL.Add(',isnull(avrPkg.Status,1)') ;

  if thisuser.UserID = 258 then cds_PkgList.SQL.SaveToFile('GenPrelLoadsTable_SQL.txt');
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


  cds_PkgNoList.SQL.Add('Select distinct 1 AS PKT,') ;
  cds_PkgNoList.SQL.Add('pd.ProductNo,') ;
  cds_PkgNoList.SQL.Add('pde.ProductDisplayName AS PRODUKT,') ;
  cds_PkgNoList.SQL.Add('pt.PackageTypeNo,') ;
  cds_PkgNoList.SQL.Add('pn.PackageNo,') ;
  cds_PkgNoList.SQL.Add('pn.SupplierCode,') ;

  cds_PkgNoList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  cds_PkgNoList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  cds_PkgNoList.SQL.Add('pt.TotalNoOfPieces AS STYCK,') ;

  cds_PkgNoList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN PTL.PcsPerLength') ;
  cds_PkgNoList.SQL.Add('ELSE ' + QuotedStr('')) ;
  cds_PkgNoList.SQL.Add('END AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : cds_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : cds_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : cds_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : cds_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    4 : cds_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = ' + sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces * pl.ActualLengthMM ELSE 0 END) AS Float) AS L' + inttostr(x)+', ') ;
   End ;//case

   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

  For y:= x to 45 do
  cds_PkgNoList.SQL.Add('CAST(0.0 AS Float) AS L'+inttostr(y)+', ') ;

  sq_GroupLengths.Close ;



  cds_PkgNoList.SQL.Add('pt.Totalm3Actual AS AM3,') ;
  cds_PkgNoList.SQL.Add('pt.Totalm3Nominal AS NM3,') ;
  cds_PkgNoList.SQL.Add('pt.TotalLinealMeterActualLength AS AM1,') ;
  cds_PkgNoList.SQL.Add('pt.TotalMFBMNominal AS MFBM,') ;
  cds_PkgNoList.SQL.Add('pt.TotalSQMofActualWidth AS AM2,') ;
  cds_PkgNoList.SQL.Add('pn.DateCreated AS TILLVERKAD,') ;


  cds_PkgNoList.SQL.Add('SPE.SpeciesName AS TS,') ;
  cds_PkgNoList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  cds_PkgNoList.SQL.Add('Gr.GradeName AS KV,') ;
  cds_PkgNoList.SQL.Add('SUR.SurfacingName AS UT,') ;
  cds_PkgNoList.SQL.Add('PTL.STD_Length, Verk.ClientNo AS OwnerNo, Cy.CityName + ' + QuotedStr('/') + ' + lip.LogicalInventoryName AS Lager,') ;
  cds_PkgNoList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  cds_PkgNoList.SQL.Add(',isnull(avrPkg.Status,1) AS Status,')
  else
  Begin
   cds_PkgNoList.SQL.Add(',pn.Status AS Status,') ;
  End ;

  cds_PkgNoList.SQL.Add('va.VarugruppNamn, CAST(pt.TotalLinealMeterActualLength / pt.TotalNoOfPieces AS Float) AS AvgLength, pn.REFERENCE, pn.BL_NO,  pn.Info2') ;


  cds_PkgNoList.SQL.Add('FROM  dbo.Client Verk') ;

  cds_PkgNoList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;


  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
   if cbInvLista.ItemIndex = 0 then
   Begin
    cds_PkgNoList.SQL.Add('INNER JOIN dbo.InvControlrow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    cds_PkgNoList.SQL.Add('Left Outer Join dbo.AvrPkgInInvCtrl avrPkg on avrPkg.IC_GrpNo = invctrlrow.IC_GrpNo') ;
    cds_PkgNoList.SQL.Add('AND avrPkg.PackageNo = invctrlrow.PackageNo') ;
    cds_PkgNoList.SQL.Add('AND avrPkg.SupplierCode = invctrlrow.SupplierCode') ;
    cds_PkgNoList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    cds_PkgNoList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    cds_PkgNoList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
    cds_PkgNoList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End
   else
   Begin
    cds_PkgNoList.SQL.Add('INNER JOIN dbo.InvenRow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    cds_PkgNoList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    cds_PkgNoList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    cds_PkgNoList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
    cds_PkgNoList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End ;
  End
  else
   Begin
    cds_PkgNoList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    if dmInventory.cds_PkgListStatus.AsInteger = 0 then
    Begin
     cds_PkgNoList.SQL.Add('INNER JOIN dbo.Package_Production pp ON pp.PackageNo = pn.PackageNo') ;
     cds_PkgNoList.SQL.Add('AND pp.SupplierCode = pn.SupplierCode') ;
    End ;
    cds_PkgNoList.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
    cds_PkgNoList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End ;


//    cds_PkgNoList.SQL.Add('Left join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
//    cds_PkgNoList.SQL.Add('AND ps.LanguageCode = ' + inttostr(ThisUser.LanguageID)) ;

//  if (mtActLengthMM.RecordCount > 0) or (cbShowSingleLengthPkgs.Checked) then
  Begin
   cds_PkgNoList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
   cds_PkgNoList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  End ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        cds_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_49' (* 'STYCK PER LÄNGD' *) ) ;
       End ;
   1 : Begin
        cds_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_5' (* 'AM3 PER LÄNGD' *) ) ;
       End ;
   2 : Begin
        cds_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_6' (* 'NM3 PER LÄNGD' *) ) ;
       End ;
   3 : Begin
        cds_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_4' (* 'ANTAL PER LÄNGD' *) ) ;
       End ;

   4 : Begin
        cds_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgNoList.SQL.Add('AND PTL.VolumeType = 3') ; //+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_4' (* 'ANTAL PER LÄNGD' *) ) ;
       End ;


  End ;


  cds_PkgNoList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  cds_PkgNoList.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_PkgNoList.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PkgNoList.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_PkgNoList.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PkgNoList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  cds_PkgNoList.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_PkgNoList.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;
  cds_PkgNoList.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_PkgNoList.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  cds_PkgNoList.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_PkgNoList.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;

  cds_PkgNoList.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_PkgNoList.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;

  cds_PkgNoList.SQL.Add('Inner Join City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_PkgNoList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_PkgNoList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;



  cds_PkgNoList.SQL.Add('WHERE LIP.SequenceNo = 1') ;
  if StrToFloatDef(SelectedLength,0) > 0 then
  Begin
   cds_PkgNoList.SQL.Add('AND pl.ActualLengthMM = ' + SelectedLength) ;
   cds_PkgNoList.SQL.Add('AND PTL.STD_Length = 1') ;
  End
  else
  if SelectedLength = 'ÖVRIGA' then
  Begin
   cds_PkgNoList.SQL.Add('AND (PTL.STD_Length = 0 or ls.NoOfLengths > 1)') ;
  End ;

{  if ShowPackageSizeName then
  Begin
    if cds_PkgListPackageSizeName.AsString > '' then
      cds_PkgNoList.SQL.Add('AND PackageSizeName = ' + QuotedStr(cds_PkgListPackageSizeName.AsString)) ;
  End; }


  if deStartPeriod.EditValue > 0 then
  cds_PkgNoList.SQL.Add('AND pn.DateCreated >= ' + QuotedStr(DateTimeToStr(deStartPeriod.Date))) ;

  if deEndPeriod.EditValue > 0 then
  cds_PkgNoList.SQL.Add('AND pn.DateCreated <= ' + QuotedStr(DateTimeToStr(deEndPeriod.Date))) ;

  if Length(TRIM(teInfo1.Text)) > 0 then
  cds_PkgNoList.SQL.Add('AND pn.BL_NO LIKE ' + QuotedStr(teInfo1.Text)) ;

  if Length(TRIM(teInfo2.Text)) > 0 then
  cds_PkgNoList.SQL.Add('AND pn.Info2 LIKE ' + QuotedStr(teInfo2.Text)) ;


  if Length(TRIM(teREF.Text)) > 0 then
  Begin
   cds_PkgNoList.SQL.Add('AND pn.REFERENCE LIKE ' + QuotedStr(TRIM(teREF.Text))) ;
  End ;

//  cds_PkgNoList.SQL.Add('AND pn.Status = '+IntToStr(cds_PkgListStatus.AsInteger)) ;

  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
   cds_PkgNoList.SQL.Add('AND invctrlrow.IC_GrpNo = '+mtUserPropNewItemRow.AsString);

   if (cds_PkgListStatus.AsInteger = 0) and (cbInvLista.ItemIndex = 0) then
   Begin
    cds_PkgNoList.SQL.Add('AND invctrlrow.PackageNo IN (Select avrPkg.PackageNo FROM dbo.AvrPkgInInvCtrl avrPkg ') ;
    cds_PkgNoList.SQL.Add('WHERE avrPkg.IC_GrpNo = invctrlrow.IC_GrpNo') ;
    cds_PkgNoList.SQL.Add('AND avrPkg.SupplierCode = invctrlrow.SupplierCode)') ;
   end
   else
   if (cds_PkgListStatus.AsInteger = 1) and (cbInvLista.ItemIndex = 0) then
   Begin
    cds_PkgNoList.SQL.Add('AND invctrlrow.PackageNo NOT IN (Select avrPkg.PackageNo FROM dbo.AvrPkgInInvCtrl avrPkg ') ;
    cds_PkgNoList.SQL.Add('WHERE avrPkg.IC_GrpNo = invctrlrow.IC_GrpNo') ;
//    cds_PkgNoList.SQL.Add('AND avrPkg.PackageNo = invctrlrow.PackageNo') ;
    cds_PkgNoList.SQL.Add('AND avrPkg.SupplierCode = invctrlrow.SupplierCode)') ;
   end ;
  End
  else
  Begin
 //  if cbInklEjFakt2.ItemIndex = then
   cds_PkgNoList.SQL.Add('AND pn.Status = 1') ;
//   cds_PkgNoList.SQL.Add('AND pn.Status = ' + dmInventory.cds_PkgListStatus.AsString) ;
   if dmInventory.cds_PkgListStatus.AsInteger = 0 then
   Begin
    cds_PkgNoList.SQL.Add('AND pn.PackageNo not in (Select pp.PackageNo From dbo.Package_Production pp') ;
    cds_PkgNoList.SQL.Add('Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = pp.ProductionUnitNo') ;
    cds_PkgNoList.SQL.Add('WHERE pp.PackageNo = pn.PackageNo') ;
    cds_PkgNoList.SQL.Add('AND pp.SupplierCode = pn.SupplierCode') ;
    cds_PkgNoList.SQL.Add('AND pp.Operation = 3') ;
    cds_PkgNoList.SQL.Add('AND rp.SequenceNo = 1)') ;
   End ;
  End ;

  cds_PkgNoList.SQL.Add('AND pt.ProductNo = ' + cds_PkgListProductNo.AsString) ;
  cds_PkgNoList.SQL.Add('AND LIP.LogicalInventoryPointNo = '  + IntToStr(cds_PkgListLIPNo.AsInteger)) ;

  if True then
  if mtUserPropSalesRegionNo.AsInteger > 0 then
  cds_PkgNoList.SQL.Add('AND Verk.SalesRegionNo = ' + IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

  if cbShowSingleLengthPkgs.Checked then
    cds_PkgNoList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

  cds_PkgNoList.SQL.Add('Group by pd.ProductNo, pde.ProductDisplayName, pt.PackageTypeNo, pn.PackageNo, pn.SupplierCode, pg.ActualThicknessMM,') ;
  cds_PkgNoList.SQL.Add('pg.ActualWidthMM, pt.TotalNoOfPieces, PTL.STD_Length, PTL.PcsPerLength, pt.Totalm3Actual, pt.Totalm3Nominal,') ;
  cds_PkgNoList.SQL.Add('pt.TotalLinealMeterActualLength, pt.TotalMFBMNominal, pt.TotalSQMofActualWidth, pn.DateCreated, SPE.SpeciesName,imp.ProductCategoryName,') ;
  cds_PkgNoList.SQL.Add('Gr.GradeName, SUR.SurfacingName, Verk.ClientNo, Cy.CityName, lip.LogicalInventoryName, lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo, pn.REFERENCE, pn.BL_NO, pn.Info2') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  cds_PkgNoList.SQL.Add(',isnull(avrPkg.Status,1)')
  else
  cds_PkgNoList.SQL.Add(',pn.Status') ;

  cds_PkgNoList.SQL.Add(', va.VarugruppNamn ') ;



  if thisuser.UserID = 258 then cds_PkgNoList.SQL.SaveToFile('sq_PkgNoSUBList.txt');

 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.GenPkgNosDetailTable_SQL_EJFAKT(Sender: TObject);
Var Save_Cursor : TCursor;
    y, x        : Byte ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormatLengthColumns ;
 Try
 With dmInventory do
 Begin


  cds_PkgNoList.SQL.Add('Select distinct 1 AS PKT,') ;
  cds_PkgNoList.SQL.Add('pd.ProductNo,') ;
  cds_PkgNoList.SQL.Add('pde.ProductDisplayName AS PRODUKT,') ;
  cds_PkgNoList.SQL.Add('pt.PackageTypeNo,') ;
  cds_PkgNoList.SQL.Add('pn.PackageNo,') ;
  cds_PkgNoList.SQL.Add('pn.SupplierCode,') ;

  cds_PkgNoList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  cds_PkgNoList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  cds_PkgNoList.SQL.Add('pt.TotalNoOfPieces AS STYCK,') ;

  cds_PkgNoList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN PTL.PcsPerLength') ;
  cds_PkgNoList.SQL.Add('ELSE ' + QuotedStr('')) ;
  cds_PkgNoList.SQL.Add('END AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : cds_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : cds_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : cds_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : cds_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case

   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

  For y:= x to 45 do
  cds_PkgNoList.SQL.Add('CAST(0.0 AS Float) AS L'+inttostr(y)+', ') ;

  sq_GroupLengths.Close ;



  cds_PkgNoList.SQL.Add('pt.Totalm3Actual AS AM3,') ;
  cds_PkgNoList.SQL.Add('pt.Totalm3Nominal AS NM3,') ;
  cds_PkgNoList.SQL.Add('pt.TotalLinealMeterActualLength AS AM1,') ;
  cds_PkgNoList.SQL.Add('pt.TotalMFBMNominal AS MFBM,') ;
  cds_PkgNoList.SQL.Add('pt.TotalSQMofActualWidth AS AM2,') ;
  cds_PkgNoList.SQL.Add('pn.DateCreated AS TILLVERKAD,') ;


  cds_PkgNoList.SQL.Add('SPE.SpeciesName AS TS,') ;
  cds_PkgNoList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  cds_PkgNoList.SQL.Add('Gr.GradeName AS KV,') ;
  cds_PkgNoList.SQL.Add('SUR.SurfacingName AS UT,') ;
  cds_PkgNoList.SQL.Add('PTL.STD_Length, Verk.ClientNo AS OwnerNo, Cy.CityName + ' + QuotedStr('/') + ' + lip.LogicalInventoryName AS Lager,') ;
  cds_PkgNoList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  cds_PkgNoList.SQL.Add(',isnull(avrPkg.Status,1) AS Status,')
  else
  Begin
   cds_PkgNoList.SQL.Add(',pn.Status AS Status,') ;
  End ;

  cds_PkgNoList.SQL.Add('va.VarugruppNamn, CAST(pt.TotalLinealMeterActualLength / pt.TotalNoOfPieces AS Float) AS AvgLength, pn.REFERENCE, pn.BL_NO,  pn.Info2') ;

  cds_PkgNoList.SQL.Add('FROM  dbo.Client Verk') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.Loads L on L.SupplierNo = Verk.ClientNo') ;
  cds_PkgNoList.SQL.Add('LEFT join dbo.Invoiced_Load inl') ;
  cds_PkgNoList.SQL.Add('inner join dbo.InvoiceNos nos on nos.InternalInvoiceNo = inl.InternalInvoiceNo') ;
  cds_PkgNoList.SQL.Add('on inl.LoadNo = L.LoadNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.CustomerShippingPlanDetails csd on csd.CustShipPlanDetailObjectNo = LD.DefaultCustShipObjectNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.CustomerShippingPlanHeader csh on csh.ShippingPlanNo = LD.ShippingPlanNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.Orders oh on oh.OrderNo = csh.OrderNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventoryPointNo = LD.LIPNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;
  cds_PkgNoList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo and pn.SupplierCode = LD.SupplierCode') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = LD.PackageTypeNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = LD.PackageTypeNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;


  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        cds_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_49' (* 'STYCK PER LÄNGD' *) ) ;
       End ;
   1 : Begin
        cds_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_5' (* 'AM3 PER LÄNGD' *) ) ;
       End ;
   2 : Begin
        cds_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_6' (* 'NM3 PER LÄNGD' *) ) ;
       End ;
   3 : Begin
        cds_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_4' (* 'ANTAL PER LÄNGD' *) ) ;
       End ;
  End ;


  cds_PkgNoList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  cds_PkgNoList.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_PkgNoList.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PkgNoList.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_PkgNoList.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PkgNoList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  cds_PkgNoList.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_PkgNoList.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;
  cds_PkgNoList.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_PkgNoList.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  cds_PkgNoList.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_PkgNoList.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;

  cds_PkgNoList.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_PkgNoList.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;

  cds_PkgNoList.SQL.Add('Inner Join City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_PkgNoList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_PkgNoList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;



  cds_PkgNoList.SQL.Add('WHERE LIP.SequenceNo = 1') ;

  if StrToFloatDef(SelectedLength,0) > 0 then
  Begin
   cds_PkgNoList.SQL.Add('AND exists (Select * FROM dbo.PackageTypeDetail ptd2') ;
   cds_PkgNoList.SQL.Add('inner join dbo.ProductLength pl2 ON pl2.ProductLengthNo = ptd2.ProductLengthNo') ;
   cds_PkgNoList.SQL.Add('WHERE ptd2.PackageTypeNo = LD.PackageTypeNo') ;
   cds_PkgNoList.SQL.Add('AND pl2.ActualLengthMM = ' + SelectedLength + ')' ) ;
   cds_PkgNoList.SQL.Add('and ls.NoOfLengths = 1') ;
  End
  else
  if SelectedLength = 'ÖVRIGA' then
  Begin
   cds_PkgNoList.SQL.Add('AND (PTL.STD_Length = 0 or ls.NoOfLengths > 1)') ;
  End ;

  if deStartPeriod.EditValue > 0 then
  cds_PkgNoList.SQL.Add('AND pn.DateCreated >= ' + QuotedStr(DateTimeToStr(deStartPeriod.Date))) ;

  if deEndPeriod.EditValue > 0 then
  cds_PkgNoList.SQL.Add('AND pn.DateCreated <= ' + QuotedStr(DateTimeToStr(deEndPeriod.Date))) ;

  if Length(TRIM(teInfo1.Text)) > 0 then
    cds_PkgNoList.SQL.Add('AND pn.BL_NO LIKE ' + QuotedStr(teInfo1.Text)) ;

  if Length(TRIM(teInfo2.Text)) > 0 then
    cds_PkgNoList.SQL.Add('AND pn.Info2 LIKE ' + QuotedStr(teInfo2.Text)) ;


  if Length(TRIM(teREF.Text)) > 0 then
  Begin
   cds_PkgNoList.SQL.Add('AND pn.REFERENCE LIKE ' + QuotedStr(TRIM(teREF.Text))) ;
  End ;

  cds_PkgNoList.SQL.Add('AND pn.Status = 0') ;// + dmInventory.cds_PkgListStatus.AsString) ;

  cds_PkgNoList.SQL.Add('AND pt.ProductNo = ' + cds_PkgListProductNo.AsString) ;
  cds_PkgNoList.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(cds_PkgListLIPNo.AsInteger)) ;

  cds_PkgNoList.SQL.Add('AND nos.InvoiceNo is null') ;


  if cbShowSingleLengthPkgs.Checked then
    cds_PkgNoList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

  cds_PkgNoList.SQL.Add('Group by pd.ProductNo, pde.ProductDisplayName, pt.PackageTypeNo, pn.PackageNo, pn.SupplierCode, pg.ActualThicknessMM,') ;
  cds_PkgNoList.SQL.Add('pg.ActualWidthMM, pt.TotalNoOfPieces, PTL.STD_Length, PTL.PcsPerLength, pt.Totalm3Actual, pt.Totalm3Nominal,') ;
  cds_PkgNoList.SQL.Add('pt.TotalLinealMeterActualLength, pt.TotalMFBMNominal, pt.TotalSQMofActualWidth, pn.DateCreated, SPE.SpeciesName,imp.ProductCategoryName,') ;
  cds_PkgNoList.SQL.Add('Gr.GradeName, SUR.SurfacingName, Verk.ClientNo, Cy.CityName, lip.LogicalInventoryName, lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo, pn.REFERENCE, pn.BL_NO, pn.Info2') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  cds_PkgNoList.SQL.Add(',isnull(avrPkg.Status,1)')
  else
  cds_PkgNoList.SQL.Add(',pn.Status') ;

  cds_PkgNoList.SQL.Add(', va.VarugruppNamn ') ;

  if thisuser.UserID = 258 then cds_PkgNoList.SQL.SaveToFile('sq_PkgNoEJFAKT.txt');
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;


procedure TfrmInventoryReport.GenPkgNosDetailTable_SQL_PrelLoads(Sender: TObject);
Var Save_Cursor : TCursor;
    y, x        : Byte ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormatLengthColumns ;
 Try
 With dmInventory do
 Begin


  cds_PkgNoList.SQL.Add('Select distinct 1 AS PKT,') ;
  cds_PkgNoList.SQL.Add('pd.ProductNo,') ;
  cds_PkgNoList.SQL.Add('pde.ProductDisplayName AS PRODUKT,') ;
  cds_PkgNoList.SQL.Add('pt.PackageTypeNo,') ;
  cds_PkgNoList.SQL.Add('pn.PackageNo,') ;
  cds_PkgNoList.SQL.Add('pn.SupplierCode,') ;

  cds_PkgNoList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  cds_PkgNoList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  cds_PkgNoList.SQL.Add('pt.TotalNoOfPieces AS STYCK,') ;

  cds_PkgNoList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN PTL.PcsPerLength') ;
  cds_PkgNoList.SQL.Add('ELSE ' + QuotedStr('')) ;
  cds_PkgNoList.SQL.Add('END AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : cds_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : cds_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : cds_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : cds_PkgNoList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case

   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

  For y:= x to 45 do
  cds_PkgNoList.SQL.Add('CAST(0.0 AS Float) AS L'+inttostr(y)+', ') ;

  sq_GroupLengths.Close ;



  cds_PkgNoList.SQL.Add('pt.Totalm3Actual AS AM3,') ;
  cds_PkgNoList.SQL.Add('pt.Totalm3Nominal AS NM3,') ;
  cds_PkgNoList.SQL.Add('pt.TotalLinealMeterActualLength AS AM1,') ;
  cds_PkgNoList.SQL.Add('pt.TotalMFBMNominal AS MFBM,') ;
  cds_PkgNoList.SQL.Add('pt.TotalSQMofActualWidth AS AM2,') ;
  cds_PkgNoList.SQL.Add('pn.DateCreated AS TILLVERKAD,') ;


  cds_PkgNoList.SQL.Add('SPE.SpeciesName AS TS,') ;
  cds_PkgNoList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  cds_PkgNoList.SQL.Add('Gr.GradeName AS KV,') ;
  cds_PkgNoList.SQL.Add('SUR.SurfacingName AS UT,') ;
  cds_PkgNoList.SQL.Add('PTL.STD_Length, Verk.ClientNo AS OwnerNo, Cy.CityName + ' + QuotedStr('/') + ' + lip.LogicalInventoryName AS Lager,') ;
  cds_PkgNoList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  cds_PkgNoList.SQL.Add(',isnull(avrPkg.Status,1) AS Status,')
  else
  Begin
   cds_PkgNoList.SQL.Add(',pn.Status AS Status,') ;
  End ;

  cds_PkgNoList.SQL.Add('va.VarugruppNamn, CAST(pt.TotalLinealMeterActualLength / pt.TotalNoOfPieces AS Float) AS AvgLength, pn.REFERENCE, pn.BL_NO,  pn.Info2') ;

  cds_PkgNoList.SQL.Add('FROM  dbo.Client Verk') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.Loads L on L.SupplierNo = Verk.ClientNo') ;
//  cds_PkgNoList.SQL.Add('LEFT join dbo.Invoiced_Load inl') ;
//  cds_PkgNoList.SQL.Add('inner join dbo.InvoiceNos nos on nos.InternalInvoiceNo = inl.InternalInvoiceNo') ;
//  cds_PkgNoList.SQL.Add('on inl.LoadNo = L.LoadNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo') ;
//  cds_PkgNoList.SQL.Add('Inner Join dbo.CustomerShippingPlanDetails csd on csd.CustShipPlanDetailObjectNo = LD.DefaultCustShipObjectNo') ;
//  cds_PkgNoList.SQL.Add('Inner Join dbo.CustomerShippingPlanHeader csh on csh.ShippingPlanNo = LD.ShippingPlanNo') ;
//  cds_PkgNoList.SQL.Add('Inner Join dbo.Orders oh on oh.OrderNo = csh.OrderNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventoryPointNo = LD.LIPNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;
  cds_PkgNoList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo and pn.SupplierCode = LD.SupplierCode') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = LD.PackageTypeNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = LD.PackageTypeNo') ;
  cds_PkgNoList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;


  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        cds_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_49' (* 'STYCK PER LÄNGD' *) ) ;
       End ;
   1 : Begin
        cds_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_5' (* 'AM3 PER LÄNGD' *) ) ;
       End ;
   2 : Begin
        cds_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_6' (* 'NM3 PER LÄNGD' *) ) ;
       End ;
   3 : Begin
        cds_PkgNoList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgNoList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgNoList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_4' (* 'ANTAL PER LÄNGD' *) ) ;
       End ;
  End ;


  cds_PkgNoList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  cds_PkgNoList.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_PkgNoList.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PkgNoList.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_PkgNoList.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PkgNoList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  cds_PkgNoList.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_PkgNoList.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;
  cds_PkgNoList.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_PkgNoList.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  cds_PkgNoList.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_PkgNoList.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;

  cds_PkgNoList.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_PkgNoList.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;

  cds_PkgNoList.SQL.Add('Inner Join City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_PkgNoList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_PkgNoList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;



  cds_PkgNoList.SQL.Add('WHERE LIP.SequenceNo = 1') ;

  if StrToFloatDef(SelectedLength,0) > 0 then
  Begin
   cds_PkgNoList.SQL.Add('AND exists (Select * FROM dbo.PackageTypeDetail ptd2') ;
   cds_PkgNoList.SQL.Add('inner join dbo.ProductLength pl2 ON pl2.ProductLengthNo = ptd2.ProductLengthNo') ;
   cds_PkgNoList.SQL.Add('WHERE ptd2.PackageTypeNo = LD.PackageTypeNo') ;
   cds_PkgNoList.SQL.Add('AND pl2.ActualLengthMM = ' + SelectedLength + ')' ) ;
   cds_PkgNoList.SQL.Add('and ls.NoOfLengths = 1') ;
  End
  else
  if SelectedLength = 'ÖVRIGA' then
  Begin
   cds_PkgNoList.SQL.Add('AND (PTL.STD_Length = 0 or ls.NoOfLengths > 1)') ;
  End ;

  if deStartPeriod.EditValue > 0 then
  cds_PkgNoList.SQL.Add('AND pn.DateCreated >= ' + QuotedStr(DateTimeToStr(deStartPeriod.Date))) ;

  if deEndPeriod.EditValue > 0 then
  cds_PkgNoList.SQL.Add('AND pn.DateCreated <= ' + QuotedStr(DateTimeToStr(deEndPeriod.Date))) ;

  if Length(TRIM(teInfo1.Text)) > 0 then
    cds_PkgNoList.SQL.Add('AND pn.BL_NO LIKE ' + QuotedStr(teInfo1.Text)) ;

  if Length(TRIM(teInfo2.Text)) > 0 then
    cds_PkgNoList.SQL.Add('AND pn.Info2 LIKE ' + QuotedStr(teInfo2.Text)) ;


  if Length(TRIM(teREF.Text)) > 0 then
  Begin
   cds_PkgNoList.SQL.Add('AND pn.REFERENCE LIKE ' + QuotedStr(TRIM(teREF.Text))) ;
  End ;

  cds_PkgNoList.SQL.Add('AND pn.Status = 0') ;// + dmInventory.cds_PkgListStatus.AsString) ;

  cds_PkgNoList.SQL.Add('AND pt.ProductNo = ' + cds_PkgListProductNo.AsString) ;
  cds_PkgNoList.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(cds_PkgListLIPNo.AsInteger)) ;

//  cds_PkgNoList.SQL.Add('AND nos.InvoiceNo is null') ;
  cds_PkgNoList.SQL.Add('AND L.SenderLoadStatus <> 2') ;


  if cbShowSingleLengthPkgs.Checked then
    cds_PkgNoList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

  cds_PkgNoList.SQL.Add('Group by pd.ProductNo, pde.ProductDisplayName, pt.PackageTypeNo, pn.PackageNo, pn.SupplierCode, pg.ActualThicknessMM,') ;
  cds_PkgNoList.SQL.Add('pg.ActualWidthMM, pt.TotalNoOfPieces, PTL.STD_Length, PTL.PcsPerLength, pt.Totalm3Actual, pt.Totalm3Nominal,') ;
  cds_PkgNoList.SQL.Add('pt.TotalLinealMeterActualLength, pt.TotalMFBMNominal, pt.TotalSQMofActualWidth, pn.DateCreated, SPE.SpeciesName,imp.ProductCategoryName,') ;
  cds_PkgNoList.SQL.Add('Gr.GradeName, SUR.SurfacingName, Verk.ClientNo, Cy.CityName, lip.LogicalInventoryName, lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo, pn.REFERENCE, pn.BL_NO, pn.Info2') ;
  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
  cds_PkgNoList.SQL.Add(',isnull(avrPkg.Status,1)')
  else
  cds_PkgNoList.SQL.Add(',pn.Status') ;

  cds_PkgNoList.SQL.Add(', va.VarugruppNamn ') ;

  if thisuser.UserID = 258 then cds_PkgNoList.SQL.SaveToFile('GenPkgNosDetailTable_SQL_PrelLoads.txt');
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
  grdPkgNoTblDBBandedTableView1.DataController.KeyFieldNames:= 'PackageNo;SupplierCode' ;
  grdPkgNoTblDBBandedTableView1.Bands[0].Visible:= True ;
  grdPkgNoTblDBBandedTableView1.Bands[0].FixedKind:= fkLeft ;
  grdPkgNoTblDBBandedTableView1.Bands[1].FixedKind:= fkNone ;

  Try
   if cds_PkgNoList.Active then
   cds_PkgNoList.Active := False ;
//   pcInventory.ActivePage:= tsTABELL ;


  cds_PkgNoList.SQL.Clear ;

  if cbInklEjFakt2.ItemIndex = 4 then
  GenPkgNosDetailTable_SQL_PrelLoads(Sender)
   else
    if cbInklEjFakt2.ItemIndex = 2 then
     GenPkgNosDetailTable_SQL_EJFAKT(Sender)
      else
       if cbInklEjFakt2.ItemIndex = 0 then
         GenPkgNosDetailTable_SQL(Sender)
          else
          Begin
           GenPkgNosDetailTable_SQL(Sender) ;
           cds_PkgNoList.SQL.Add(' UNION ') ;
           GenPkgNosDetailTable_SQL_EJFAKT(Sender) ;
          End;

   PackageNo            :=  cds_PkgNoListPackageNo.AsInteger ;
   Supp_Code            :=  cds_PkgNoListSupplierCode.AsString ;
   cds_PkgNoList.Active := True ;

   if cds_PkgNoList.Locate('PackageNo;SupplierCode', VarArrayOf([PackageNo, Supp_Code]),[]) then ;

   SetKolumnNameAndHideNonUsedKolumnsInPkgNoTable(Sender) ;

   if StrToFloatDef(SelectedLength,0) > 0 then
   grdPkgNoTblDBBandedTableView1.Bands[2].Caption:= cds_PkgListPRODUKT.AsString+'  ' + SelectedLength
   else
   if SelectedLength = 'ÖVRIGA' then
   grdPkgNoTblDBBandedTableView1.Bands[2].Caption:= cds_PkgListPRODUKT.AsString +siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_67' (* '  TP paket + ej std längder' *) )
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
   AItem.Format:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_12' (* '########.0' *) )
   else
   AItem.Format:= '########' ;
  End ;


 x := 21 ;

  For y := x to 65 do
   grdPkgNoTblDBBandedTableView1.Columns[y].Caption:= 'L' ;

  cds_ProductLengthInGroup.Active:= False ;
  cds_ProductLengthInGroup.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
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

procedure TfrmInventoryReport.mtLayoutAfterInsert(DataSet: TDataSet);
begin
 mtLayoutNoOfCopies.AsInteger := 1 ;
end;

procedure TfrmInventoryReport.mtUserPropAfterInsert(DataSet: TDataSet);
begin
 mtUserPropRegDate.AsDateTime           := Now ;
// mtUserPropProductGroupNo.AsInteger     := -1 ;
 mtUserPropProductNo.AsInteger          := -1 ;
 mtUserPropProductDescription.AsString  := siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_69' (* 'Ingen ändring' *) ) ;
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
   For I    := 0 to grdPkgNoTblDBBandedTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdPkgNoTblDBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdPkgNoTblDBBandedTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('PackageNo;SupplierCode', RecID,[]) ;

    mtPkgNos.Insert ;
    mtPkgNosPackageNo.AsInteger := ADataSet.FieldByName('PackageNo').AsInteger ;
    mtPkgNosSupp_Code.AsString  := ADataSet.FieldByName('SupplierCode').AsString ;
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
    ADataSet.Locate('PackageNo;SupplierCode', RecID,[]) ;

    mtPkgNos.Insert ;
    mtPkgNosPackageNo.AsInteger := ADataSet.FieldByName('PackageNo').AsInteger ;
    mtPkgNosSupp_Code.AsString  := ADataSet.FieldByName('SupplierCode').AsString ;
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
   RefreshAfterChanges ;
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
{
     frmRemovePkg.mtUserProp.Edit ;
     if frmRemovePkg.mtUserPropProducerNo.AsInteger then

     frmRemovePkg.mtUserPropProducerNo.AsInteger  := 76 ;
     frmRemovePkg.mtUserProp.Post ;
}
   frmRemovePkg.ShowModal ;
   RefreshAfterChanges ;
  Finally
   FreeAndNil(frmRemovePkg) ;
  End ;
 End ;
 Finally
  mtPkgNos.Active:= False ;
 End ;
end;

procedure TfrmInventoryReport.RefreshAfterChanges ;
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
   With dmInventory do
   Begin
    cds_PkgNoList.Active  := False ;
    cds_PkgNoList.Active  := True ;
    cds_PkgList.Active    := False ;
    cds_PkgList.Active    := True ;
   End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
End ;

procedure TfrmInventoryReport.acSkrivUtPkgNosExecute(Sender: TObject);
begin
  dxComponentPrinter1Link4.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Clear ;
  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
  if (cbInvLista.ItemIndex = 0) then
   dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Add(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_40' (* 'Kontrollista inventeringnr: ' *) ) + mtUserPropNewItemRow.AsString)
    else
     dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Add(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_41' (* 'Resultatlista inventeringnr: ' *) ) + mtUserPropNewItemRow.AsString) ;
  End
  else
  dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Add(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_72' (* 'Lagerlista' *) )) ;
  dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Add(grdPkgNoTblDBBandedTableView1.Bands[2].Caption) ;
//  dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  dxComponentPrinter1Link4.PrinterPage.PageHeader.LeftTitle.Add(grdPkgNoTblDBBandedTableView1Lager.EditValue) ;

  dxComponentPrinter1Link4.PrinterPage.Orientation    := poLandscape ;
  dxComponentPrinter1Link4.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link4.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link4.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link4) ;
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
//    A                       : Array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : Array of String ;
    MailToAddress           : String ;
    Subject                 : String ;
    InfogadHTMLFil          : String ;
begin
 Subject:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_73' (* 'Paketspecifikation' *) ) ;

 InfogadHTMLFil:= ExportToHTML(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_74' (* 'paketspec' *) ), grdPkgNoTbl) ;

 MailToAddress:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_75' (* 'ange@address.se' *) ) ;

 SetLength(Attach, 1);
 Attach[0]:= InfogadHTMLFil ;
// Attach[1]:= ExtractFilePath(Forms.Application.ExeName) + '\'+'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 dm_SendMapiMail:= Tdm_SendMapiMail.Create(nil);
 Try

  dm_SendMapiMail.SendMail(Subject,
  siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_76' (* 'Paketspecifikation inkluderad. ' *) )
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
 Subject  := siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_73' (* 'Paketspecifikation' *) ) ;

 InfogadHTMLFil:= ExportToHTML(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_74' (* 'paketspec' *) ), cxGrid1) ;

 MailToAddress:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_75' (* 'ange@address.se' *) );//'lars.makiaho@gmail.com' ;

 SetLength(Attach, 1);
 Attach[0]:= InfogadHTMLFil ;
// Attach[1]:= ExtractFilePath(Forms.Application.ExeName) + '\'+'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 dm_SendMapiMail         := Tdm_SendMapiMail.Create(nil);
 Try

  dm_SendMapiMail.SendMail(Subject,
  siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_76' (* 'Paketspecifikation inkluderad. ' *) )
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
 ProdExportMap  := dmsSystem.Get_SystemDir(ThisUser.UserID, 'Global', 'UserDir') ;
 FilNamn        := ProdExportMap + pFilNamn;
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
   frmPkgInfo.PackageNo     := cds_PkgNoListPackageNo.AsInteger ;
   frmPkgInfo.SupplierCode  := cds_PkgNoListSupplierCode.AsString ;
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
   RefreshAfterChanges ;
  Finally
   FreeAndNil(frmMovePkgs) ;
  End ;
 End ;
 Finally
  mtPkgNos.Active:= False ;
 End ;
end;

procedure TfrmInventoryReport.cxLabel15Click(Sender: TObject);
begin
 ClearProductFilter ;
end;

procedure TfrmInventoryReport.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
 With dmInventory do
 Begin
  if pcPktNrAndTorkSats.ActivePageIndex = 2 then
  Begin
   cds_PkgCost.Active := False ;
   cds_PkgCost.ParamByName('SETNo').AsInteger       := strtointdef(teSetNo.Text,-1) ;
   cds_PkgCost.ParamByName('PackageNo').AsInteger   := cds_PkgListPackageNo.AsInteger ;
   cds_PkgCost.ParamByName('SupplierCode').AsString := cds_PkgListSuppliercode.AsString ;
   cds_PkgCost.Active := True ;
  End;
 End;
end;

procedure TfrmInventoryReport.acNewMallExecute(Sender: TObject);
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
   sq_UserProfileForm.AsString    := frmInventoryReport.Name + '1' ;
   sq_UserProfile.Post ;

   cbProdPaketNr.Properties.Items.Add(fAngeNyMall.teMall.Text) ;

   NewIndex := cbProdPaketNr.Properties.Items.IndexOf(fAngeNyMall.teMall.Text) ;

   if NewIndex > -1 then
   Begin
    cbProdPaketNr.ItemIndex  :=  NewIndex ;
    acSaveMallExecute(Sender) ;
   End;
  End;
 Finally
  FreeAndNil(fAngeNyMall) ;
 End;
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
   cds_KilnChargeHdr.UpdateOptions.ReadOnly:= False ;
   cds_KilnChargeHdr.Insert ;
   NewKilnChargeNo:= cds_KilnChargeHdrKilnChargeNo.AsInteger ;
   if fKilnWizard.ShowModal = mrOK then
   Begin
    //Get previous kilnchargeno for selected newly kilnNo where status is aktiv
    KilnChargeNo  := GetPrevKilnChargeNo(cds_KilnChargeHdrKilnNo.AsInteger) ;
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
  if MessageDlg(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_81' (* 'Är du säker' *) ),  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
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
  Begin
   cds_KilnChargeHdr.ApplyUpdates(0) ;
   cds_KilnChargeHdr.CommitUpdates ;
  End;

  if cds_KilnChargeRow.State in [dsEdit, dsInsert] then
   cds_KilnChargeRow.Post ;
  if cds_KilnChargeRow.ChangeCount > 0 then
  Begin
   cds_KilnChargeRow.ApplyUpdates(0) ;
   cds_KilnChargeRow.CommitUpdates ;
  End;
 End ;
end;

procedure TfrmInventoryReport.acCancelChangesTorkSatsExecute(
  Sender: TObject);
begin
 if MessageDlg(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_81' (* 'Är du säker' *) ),  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
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
  dxComponentPrinter1Link5.PrinterPage.PageHeader.CenterTitle.Add(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_83' (* 'Torksats: ' *) )+deStartTime.Text+' - '+deEndTime.Text) ;
  dxComponentPrinter1Link5.PrinterPage.PageHeader.CenterTitle.Add(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_84' (* 'Tork: ' *) )+lcTork.Text) ;
  dxComponentPrinter1Link5.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  dxComponentPrinter1Link5.PrinterPage.PageHeader.CenterTitle.Add(cds_KilnChargeHdrNote.AsString) ;

//  dxComponentPrinter1Link5.PrinterPage.PageHeader.LeftTitle.Add('Löpnr: '+cds_InvCtrlGrpIC_grpno.AsString) ;

  dxComponentPrinter1Link5.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link5.ShrinkToPageWidth:= True ;
  dxComponentPrinter1Link5.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1Link5.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link5) ;
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

procedure TfrmInventoryReport.acAddLayoutExecute(Sender: TObject);
begin
 mtLayout.Insert ;
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
   ShowMessage(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_85' (* 'Paket kan bara läggas till en torksats från lagergruppen som är definerad som "Före tork".' *) )) ;
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
    fEntryField.LExtraInfo.Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_2' (* 'Lägg paket till torksats' *) ) ;
    if SelectedLength = 'ÖVRIGA' then
    Begin
     fEntryField.Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_87' (* 'Ange antal av ' *) ) + dmInventory.cds_PkgListPRODUKT.AsString+siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_88' (* ' och välj längd.' *) ) ;
     fEntryField.PanelLength.Visible  := True ;
     dmInventory.Open_sq_OtherLengths(dmInventory.cds_PkgListOwnerNo.AsInteger, SelectedProductNo, dmInventory.cds_PkgListLIPNo.AsInteger, mtUserPropLengthGroupNo.AsInteger) ;
    End
     else
      Begin
       fEntryField.Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_87' (* 'Ange antal av ' *) ) + dmInventory.cds_PkgListPRODUKT.AsString + ' / ' + SelectedLength ;
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
        ShowMessage(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_91' (* 'Angivet antal paket överstiger antal paket i lager.' *) ));
     End
      else
       ShowMessage(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_92' (* 'Paket med flera längder registreras paketnr vis.' *) ));
    End ;

   Finally
     FreeAndNil(fEntryField) ;
   End ;

//   End ;
  Except

  End ;
 End ;//with

end;

procedure TfrmInventoryReport.bePathPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
 if cxShellBrowserDialog1.Execute then
 Begin
  dm_UserProps.SaveUserDir (ThisUser.UserID, 'Vis_Lager_H', cxShellBrowserDialog1.Path + '\', '', '') ;
  bePath.Text := cxShellBrowserDialog1.Path + '\' ;
 End ;
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
   ShowMessage(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_85' (* 'Paket kan bara läggas till en torksats från lagergruppen som är definerad som "Före tork".' *) )) ;
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
   fEntryField.LExtraInfo.Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_94' (* 'Lägg paket tillbaka till lager före tork' *) ) ;
   fEntryField.Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_87' (* 'Ange antal av ' *) ) + cds_SumKilnChargeRowsProdukt.AsString+' / ' + cds_SumKilnChargeRowsAntalperlängd.AsString ;
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
  if dm_DryKiln.cds_KilnChargeHdr.UpdateOptions.ReadOnly then
  Begin
   cds_KilnChargeHdrREADONLY              := dm_DryKiln.cds_KilnChargeHdr.UpdateOptions.ReadOnly ;
   dm_DryKiln.cds_KilnChargeHdr.UpdateOptions.ReadOnly  := False ;
  End ;
  if fKilnChargeNote.ShowModal = mrOK then
  Begin
   acSaveTorkSatsExecute(Sender) ;
   if cds_KilnChargeHdrREADONLY then
    dm_DryKiln.cds_KilnChargeHdr.UpdateOptions.ReadOnly:= cds_KilnChargeHdrREADONLY ;
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

procedure TfrmInventoryReport.cxButton8Click(Sender: TObject);
begin
 ClearProductFilter ;
end;

procedure TfrmInventoryReport.cxButton9Click(Sender: TObject);
begin
 Close ;
end;

procedure TfrmInventoryReport.cxGrid1DBBandedTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if pcPktNrAndTorkSats.ActivePage <> tsTorkSats then
 Begin
  if RightButton then
  Begin
   pmPkgTable.PopupFromCursorPos ;
   Exit ;
  End ;

  SelectedLength     := ACellViewInfo.Item.Caption ;
  SelectedProductNo  := cxGrid1DBBandedTableView1.DataController.DataSource.DataSet.FieldByName('ProductNo').AsInteger ;

  Try
  CurrentNoOfPkgs    := ACellViewInfo.Value ;
  Except
  End ;
  Exit ;
 End ; //if pcPktNrAndTorkSats.ActivePage <> tsTorkSats then
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
var
 AFocusedRow  : TcxCustomGridRecord;
 AFocusedItem : TcxCustomGridTableItem;
 AView        : TcxGridDBBandedTableView;
 ALMM         : Double ;
begin
  AView           := cxGrid1DBBandedTableView1 ;
  AFocusedItem    := AView.Controller.FocusedItem;
  AFocusedRow     := AView.Controller.FocusedRecord;
  if Assigned(AFocusedItem) and Assigned(AFocusedRow) then
  SelectedLength  := AFocusedItem.Caption ;//+ '/Recno: ' + IntToStr(AFocusedRow.Index);
  SelectedProductNo  := cxGrid1DBBandedTableView1.DataController.DataSource.DataSet.FieldByName('ProductNo').AsInteger ;

 if pcPktNrAndTorkSats.ActivePage <> tsTorkSats then
 Begin
  GetPkgNo(Sender) ;
 { if dmInventory.cds_PkgListStatus.AsInteger = 1 then
  GetPkgNo(Sender)
  else
  ShowMessage('N/A') ; }
 End ;
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

procedure TfrmInventoryReport.acRemoveKilnRowUpdate(Sender: TObject);
begin
 acRemoveKilnRow.Enabled :=
 (dm_DryKiln.cds_KilnChargeHdr.Active)
 and (KilnDataSaved)
 and (dm_DryKiln.cds_KilnChargeHdr.RecordCount > 0)
 and (dm_DryKiln.cds_KilnChargeHdrStatus.AsInteger = 0) ;
end;

procedure TfrmInventoryReport.acRemoveLayoutExecute(Sender: TObject);
begin
 mtLayout.Delete ;
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
//   pcPktNrAndTorkSats.HideTabs  := True ;
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
 acRegistreraPaket.Enabled  := (mtUserPropNewItemRow.AsInteger < 1)
 and (cbInklEjFakt2.ItemIndex = 0) ;
end;

procedure TfrmInventoryReport.acChangePackagesUpdate(Sender: TObject);
begin
 acChangePackages.Enabled:= (mtUserPropNewItemRow.AsInteger < 1)
// and  (ShowDeActivatedPkgs = False)
 and ((dmInventory.cds_PkgNoList.Active) and (dmInventory.cds_PkgNoList.RecordCount > 0))
 and (cbInklEjFakt2.ItemIndex = 0) ;
end;

procedure TfrmInventoryReport.acAvRegistreraPaketUpdate(Sender: TObject);
begin
 acAvRegistreraPaket.Enabled:= (mtUserPropNewItemRow.AsInteger < 1)
 and  (ShowDeActivatedPkgs = False)
 and ((dmInventory.cds_PkgNoList.Active) and (dmInventory.cds_PkgNoList.RecordCount > 0))
 and (cbInklEjFakt2.ItemIndex = 0) ;
end;

procedure TfrmInventoryReport.acMovePkgsInterntUpdate(Sender: TObject);
begin
 acMovePkgsInternt.Enabled:= (mtUserPropNewItemRow.AsInteger < 1)
 and  (ShowDeActivatedPkgs = False)
 and ((dmInventory.cds_PkgNoList.Active) and (dmInventory.cds_PkgNoList.RecordCount > 0))
 and (cbInklEjFakt2.ItemIndex = 0) ;
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
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);

var
  aColumn   : TcxCustomGridTableItem;
  aValue    : Variant;
begin
//  AItem:= (Sender AS TcxGridDBBandedTableView).GetColumnByFieldName('Status') ;

  aColumn :=(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('Status');
  aValue := ARecord.Values[aColumn.Index];

//  aColumn :=(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('Ejfakt');
//  EjFakt := ARecord.Values[aColumn.Index];
//  if not VarIsSoftNull(aValue) and (VarToDateTime(aValue) > Date-14) then
//    AStyle := cxStyleLastWeek;

{ if (ARecord.Values[AItem.Index] <> null) AND (ARecord.Values[AItem.Index] = 1) and (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger > 0) then
  AStyle:= cxStyleAktivePkg
   else
   if (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger > 0) then
    AStyle:= cxStyleINAktivePkg ; }


  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
  if (ARecord.Values[aColumn.Index] <> null) //and (AItem <> nil) and
//  (aValue = '1') and (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger > 0) then
   and (ARecord.Values[aColumn.Index] = 1) then
   AStyle:= cxStyleAktivePkg
   else
//   if (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger > 0) then
    AStyle:= cxStyleINAktivePkg ;
  End
  else
  Begin
   if (ARecord.Values[aColumn.Index] <> null) and (ARecord.Values[aColumn.Index] = 1) then
   AStyle:= cxStyleNormalAktivePkg
   else
    AStyle:= cxStyleINAktivePkg ;
  End ;
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
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var
 Status : Integer ;
begin
 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Status').Index] <> null then
 Status:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Status').Index] ;

{ if (Status = 1) and (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger > 0) then
  AStyle:= cxStyleAktivePkg
  else
   if (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger > 0) then
    AStyle:= cxStyleINAktivePkg ;
       }

  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
//  if (ARecord.Values[aColumn.Index] <> null) //and (AItem <> nil) and
//   and (ARecord.Values[aColumn.Index] = 1) then
if Status = 1 then
   AStyle:= cxStyleAktivePkg
   else
//   if (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger > 0) then
    AStyle:= cxStyleINAktivePkg ;
  End
  else
  Begin
//   if (ARecord.Values[aColumn.Index] <> null) and (ARecord.Values[aColumn.Index] = 1) then
if Status = 1 then
   AStyle:= cxStyleNormalAktivePkg
   else
    AStyle:= cxStyleINAktivePkg ;
  End ;
end;


procedure TfrmInventoryReport.cbInklEjFaktPropertiesChange(Sender: TObject);
begin
 dmInventory.cds_PkgNoList.Active   := False ;
 dmInventory.cds_PkgList.Active     := False ;
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
 acAddKilnRow.Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_2' (* 'Lägg paket till torksats' *) ) ;
 bbAddPkgsToKilnCharge.Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_2' (* 'Lägg paket till torksats' *) ) ;
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
  cds_PkgList.Close ;
  cds_PkgList.SQL.Clear ;

  cds_PkgList.SQL.Add('Select distinct Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS PKT,') ;

  cds_PkgList.SQL.Add('pd.ProductNo,') ;
  cds_PkgList.SQL.Add('pde.ProductDisplayName AS PRODUKT,') ;
  cds_PkgList.SQL.Add('0 AS PackageTypeNo,') ;
  cds_PkgList.SQL.Add('0 AS PackageNo,') ;
  cds_PkgList.SQL.Add(QuotedStr('xxx')+' AS SupplierCode,') ;

  cds_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  cds_PkgList.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;

  cds_PkgList.SQL.Add('RTRIM('+QuotedStr(' ')+') AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
//    3 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
//        +' THEN ptd.NoOfPieces/avgp.AvgPcs ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;

    3 : cds_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' AND PTL.STD_Length = 1'
        +' AND ls.NoOfLengths = 1'
        +' THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L'+inttostr(x)+', ') ;

//CAST(count(Distinct CASE WHEN PTL.STD_Length = 1 AND pl.ActualLengthMM
// = 4500 AND ls.NoOfLengths = 1 THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L14,

//    3 : cds_PkgList.SQL.Add('CAST(COUNT(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
//        +' THEN pn.PackageTypeNo ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

//Lägg till resten av kolumnerna...
  For y:= x to 44 do
  cds_PkgList.SQL.Add('CAST(0.0 AS Float) AS L'+inttostr(y)+', ') ;

//Kolumn 65 är en numera en summering av antal paket
  cds_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN PTL.STD_Length = 0 OR ls.NoOfLengths > 1 THEN Str(pn.PackageNo)+pn.SupplierCode') ;
  cds_PkgList.SQL.Add('END)  AS Float)  AS L45,') ;

{  cds_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 1 THEN') ;
  cds_PkgList.SQL.Add(' CASE WHEN ls.NoOfLengths > 1 THEN Cast(Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS Decimal(12,2) )') ;
  cds_PkgList.SQL.Add(' else  0.0 END') ;
  cds_PkgList.SQL.Add('WHEN PTL.STD_Length = 0 THEN') ;
  cds_PkgList.SQL.Add('Cast(Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS Decimal(12,2) )') ;
  cds_PkgList.SQL.Add('ELSE 0.0 END AS L45,') ; }

{  cds_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN') ;
  cds_PkgList.SQL.Add('Cast(Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS Decimal(12,2) )') ;
  cds_PkgList.SQL.Add('ELSE') ;
  cds_PkgList.SQL.Add('0.0 END AS L45,') ; }

  sq_GroupLengths.Close ;


  cds_PkgList.SQL.Add('SUM(ptd.m3Actual) AS AM3,') ;
  cds_PkgList.SQL.Add('SUM(ptd.m3Nominal) AS NM3,') ;
  cds_PkgList.SQL.Add('SUM(ptd.LinealMeterActualLength) AS AM1,') ;
  cds_PkgList.SQL.Add('SUM(ptd.MFBMNominal) AS MFBM,') ;
  cds_PkgList.SQL.Add('SUM(ptd.SQMofActualWidth) AS AM2,') ;
  cds_PkgList.SQL.Add('GetDate() AS TILLVERKAD,') ;


  cds_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  cds_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  cds_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  cds_PkgList.SQL.Add('0 AS STD_Length,') ;
  cds_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  cds_PkgList.SQL.Add('Verk.ClientNo AS OwnerNo, Cy.CityName+'+QuotedStr('/')+'+lip.LogicalInventoryName AS Lager,') ;
  cds_PkgList.SQL.Add('lip.LogicalInventoryPointNo AS LIPNo, pip.PhysicalInventoryPointNo AS PIPNo') ;
//  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
//  cds_PkgList.SQL.Add(',isnull(avrPkg.Status,1) AS Status')
//  else
  cds_PkgList.SQL.Add(',0 AS Status,') ;

  cds_PkgList.SQL.Add('SUM(pn.Original_Price * pt.Totalm3Nominal) / SUM(pt.Totalm3Nominal) AS Pris,') ;
  cds_PkgList.SQL.Add('SUM(pn.Original_Price * pt.Totalm3Nominal) AS Värde, va.VarugruppNamn, CAST(pt.TotalLinealMeterActualLength / pt.TotalNoOfPieces AS Float) AS AvgLength, pn.REFERENCE, pn.BL_NO, pn.Info2') ;


  cds_PkgList.SQL.Add('FROM  dbo.Client Verk') ;

  cds_PkgList.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.LogicalInventoryPoint Lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;

//  cds_PkgList.SQL.Add('INNER JOIN PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;

    cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
    cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
    cds_PkgList.SQL.Add('INNER JOIN dbo.Package_Production pp ON pp.PackageNo = pn.PackageNo') ;
    cds_PkgList.SQL.Add('AND pp.SupplierCode = pn.SupplierCode') ;


//    cds_PkgList.SQL.Add('Left join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
//    cds_PkgList.SQL.Add('AND ps.LanguageCode = ' + inttostr(ThisUser.LanguageID)) ;

{  if mtUserPropNewItemRow.AsInteger > 0 then
  Begin
   if cbInvLista.ItemIndex = 0 then
   Begin
    cds_PkgList.SQL.Add('INNER JOIN dbo.InvControlrow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    cds_PkgList.SQL.Add('Left Outer Join dbo.AvrPkgInInvCtrl avrPkg on avrPkg.IC_GrpNo = invctrlrow.IC_GrpNo') ;
    cds_PkgList.SQL.Add('AND avrPkg.PackageNo = invctrlrow.PackageNo') ;
    cds_PkgList.SQL.Add('AND avrPkg.SupplierCode = invctrlrow.SupplierCode') ;

    cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    cds_PkgList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
    cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End
   else
   Begin
    cds_PkgList.SQL.Add('INNER JOIN dbo.InvenRow invctrlrow ON invctrlrow.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = invctrlrow.PackageNo') ;
    cds_PkgList.SQL.Add('AND pn.SupplierCode = invctrlrow.SupplierCode') ;
    cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = invctrlrow.PackageTypeNo') ;
    cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End ;
  End
  else
   Begin
    cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
    cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
    cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
   End ; }

//  cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;

//  if (mtActLengthMM.RecordCount > 0) or (cbShowSingleLengthPkgs.Checked) then
  Begin
   cds_PkgList.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
   cds_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  End ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_49' (* 'STYCK PER LÄNGD' *) ) ;
       End ;
   1 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_5' (* 'AM3 PER LÄNGD' *) ) ;
       End ;
   2 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_51' (* 'PAKET PER LÄNGD' *) ) ;
       End ;
   3 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_51' (* 'PAKET PER LÄNGD' *) ) ;
       End ;
  End ;


  cds_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_PkgList.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_PkgList.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

{ if mtUserPropLengthVolUnitNo.AsInteger = 3 then
  Begin
   if mtUserPropNewItemRow.AsInteger > 0 then
   Begin
    if (cbInvLista.ItemIndex = 0) then
    Begin
     cds_PkgList.SQL.Add('Inner Join dbo.AvgPcsPerProdInv avgp on avgp.ProductNo = pd.ProductNo') ;
     cds_PkgList.SQL.Add('AND avgp.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
     cds_PkgList.SQL.Add('AND avgp.IC_GrpNo = '+mtUserPropNewItemRow.AsString) ;
    End
    else
    Begin
     cds_PkgList.SQL.Add('Inner Join dbo.AvgPcsPerProdInvRes avgp on avgp.ProductNo = pd.ProductNo') ;
     cds_PkgList.SQL.Add('AND avgp.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
     cds_PkgList.SQL.Add('AND avgp.IC_GrpNo = '+mtUserPropNewItemRow.AsString) ;
    End ;
   End
   else
   Begin
    cds_PkgList.SQL.Add('Inner Join dbo.AvgPcsPerProduct avgp on avgp.ProductNo = pd.ProductNo') ;
    cds_PkgList.SQL.Add('AND avgp.LogicalInventoryPointNo = pn.LogicalInventoryPointNo') ;
   End ;
  End ;
  }

  cds_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  cds_PkgList.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_PkgList.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_PkgList.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_PkgList.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_PkgList.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Inner Join dbo.City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;


  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;


  cds_PkgList.SQL.Add('WHERE LIP.SequenceNo = 1 ') ;//AND PTL.STD_Length = 1



   cds_PkgList.SQL.Add('AND pn.PackageNo not in (Select pp.PackageNo From dbo.Package_Production pp') ;
   cds_PkgList.SQL.Add('Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = pp.ProductionUnitNo') ;
   cds_PkgList.SQL.Add('WHERE pp.PackageNo = pn.PackageNo') ;
   cds_PkgList.SQL.Add('AND pp.SupplierCode = pn.SupplierCode') ;
   cds_PkgList.SQL.Add('AND pp.Operation = 3') ;
   cds_PkgList.SQL.Add('AND rp.SequenceNo = 1)') ;

//  if mtUserPropNewItemRow.AsInteger > 0 then
//  Begin
//   cds_PkgList.SQL.Add('AND invctrlrow.IC_GrpNo = '+mtUserPropNewItemRow.AsString);
//  End
//   else
    cds_PkgList.SQL.Add('AND pn.Status = 0') ;

  if mtUserPropSalesRegionNo.AsInteger > 0 then
  cds_PkgList.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(mtUserPropSalesRegionNo.AsInteger)) ;

//  if mtUserPropPIPNo.AsInteger > 0 then  cds_PkgList.SQL.Add('AND pip.PhysicalInventoryPointNo = '+IntToStr(mtUserPropPIPNo.AsInteger)) ;


//  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'LIP.LogicalInventoryPointNo', cbLIP)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'LIP.InvCode', cbLIP)) ;

//  if mtUserPropLIPNo.AsInteger > 0 then
//  cds_PkgList.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(mtUserPropLIPNo.AsInteger)) ;

//  if mtUserPropOwnerNo.AsInteger > 0 then
//  cds_PkgList.SQL.Add('AND Verk.ClientNo  = '+IntToStr(mtUserPropOwnerNo.AsInteger)) ;

  if not cUserLipNoExists then
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'Verk.PktNrLevKod', cbOwner)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SPE.SpeciesCode', ccbTS2)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'GR.GradeCode', ccbKV2)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'SUR.SurfacingCode', ccbSU2)) ;

  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'va.VaruGruppNo', ccVarugrupp)) ;

  
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'gs.GradeStampID', ccbGS)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(0, 'bc.BarCodeID', ccbBC)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualThicknessMM', ccbAT)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.ActualWidthMM', ccbAB)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalThicknessMM', ccbNT)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'pg.NominalWidthMM', ccbNB)) ;
  cds_PkgList.SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;


  if cbShowSingleLengthPkgs.Checked then
    cds_PkgList.SQL.Add('and 1= (Select Count(PackageTypeNo) From dbo.PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;


  cds_PkgList.SQL.Add('Group By pd.ProductNo, pde.ProductDisplayName, pg.ActualThicknessMM, pg.ActualWidthMM,') ;
  cds_PkgList.SQL.Add('SPE.SpeciesName, Gr.GradeName, SUR.SurfacingName, imp.ProductCategoryName, Verk.ClientNo, ') ;
  cds_PkgList.SQL.Add('Cy.CityName, lip.LogicalInventoryName, lip.LogicalInventoryPointNo, pip.PhysicalInventoryPointNo, pn.REFERENCE, pn.BL_NO, pn.Info2') ;
//  if (mtUserPropNewItemRow.AsInteger > 0) and (cbInvLista.ItemIndex = 0) then
//   cds_PkgList.SQL.Add(',isnull(avrPkg.Status,1)') ;

//  if ShowPackageSizeName then
//  cds_PkgList.SQL.Add(', ps.PackageSizeName') ;



  if thisuser.UserID = 258 then  cds_PkgList.SQL.SaveToFile('cds_PkgList.txt');
//  cds_PkgList.ExecSQL(False) ;
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
   ShowMessage(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_102' (* 'Paketvård är inte tillgängligt för tillfället pga att aktuelltdatum är före maxdatum i en inventering där lagergruppen ingår.' *) )) ;
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
   ShowMessage(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_103' (* 'fick inte med längden, prova att högerklicka igen' *) )) ;
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
    fEntryField.LExtraInfo.Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_104' (* 'Vårda lager, ange negativt antal för att minska antal paket resp. positivt antal för att öka.' *) ) ;
    if SelectedLength = 'ÖVRIGA' then
    Begin
     fEntryField.Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_105' (* 'Ange antal pkt av ' *) ) + dmInventory.cds_PkgListPRODUKT.AsString + siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_88' (* ' och välj längd.' *) ) ;
     fEntryField.PanelLength.Visible  := True ;
     dmInventory.Open_sq_OtherLengths(dmInventory.cds_PkgListOwnerNo.AsInteger, SelectedProductNo, dmInventory.cds_PkgListLIPNo.AsInteger, mtUserPropLengthGroupNo.AsInteger) ;
    End
      else
       Begin
        fEntryField.Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_87' (* 'Ange antal av ' *) ) + dmInventory.cds_PkgListPRODUKT.AsString + ' / ' + SelectedLength ;
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
       if MessageDlg(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_109' (* 'Vill du ändra antal paket med ' *) )+inttostr(NoOfPkgs)+siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_110' (* ' för produkt ' *) )+dmInventory.cds_PkgListPRODUKT.AsString
       +siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_111' (* ' Längd ' *) ) + LengthChoosen
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
        ShowMessage(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_91' (* 'Angivet antal paket överstiger antal paket i lager.' *) ));
     End
      else
       ShowMessage(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_92' (* 'Paket med flera längder registreras paketnr vis.' *) ));
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
    x : Integer ;
begin
 VidaWood:= SelectedOwnersOK ;

 cds_PLIP.Active:= False ;
 cds_PLIP.SQL.Clear ;

 if VidaWood then
 cds_PLIP.SQL.Add('SELECT Distinct CY.CITYNAME, CY.CITYNAME + ' + QuotedStr('/') + '  + RTRIM(LIP.LogicalInventoryName) AS PLIP,')
 else
 cds_PLIP.SQL.Add('SELECT Distinct isNull(LIP.InvCode, '  + QuotedStr('') + ')  + ' + QuotedStr('/') + '  + RTRIM(LIP.LogicalInventoryName) AS PLIP,') ;

(*
   if (ThisUser.CompanyNo = cVidaPackaging) or
      (ThisUser.CompanyNo = cOsterlovsta) then
   Begin
    cds_PLIP.SQL.Add('LIP.InvCode, LIP.LogicalInventoryName, LIP.LogicalInventoryPointNo AS LIPNo') ;
    cds_PLIP.SQL.Add('FROM') ;
    cds_PLIP.SQL.Add('dbo.PHYSICALINVENTORYPOINT PH') ;
    cds_PLIP.SQL.Add('Inner Join dbo.LOGICALINVENTORYPOINT LIP on LIP.PhysicalInventoryPointNo = PH.PhysicalInventoryPointNo') ;
    cds_PLIP.SQL.Add('Inner Join dbo.CITY CY ON CY.CITYNO = PH.PhyInvPointNameNo') ;
    cds_PLIP.SQL.Add('Inner Join dbo.UserArrivalPoint uap ON uap.PhyInvPointNameNo = PH.PhyInvPointNameNo') ;
    cds_PLIP.SQL.Add('Inner Join dbo.ClientRole CR ON CR.ClientNo = PH.OwnerNo') ;
    cds_PLIP.SQL.Add('Inner Join dbo.Client C ON C.ClientNo = PH.OwnerNo') ;
    cds_PLIP.SQL.Add('WHERE') ;
    cds_PLIP.SQL.Add('LIP.SequenceNo = 1') ;
    cds_PLIP.SQL.Add('AND PH.SequenceNo = 1') ;
    cds_PLIP.SQL.Add('AND PH.OwnerNo = ' + IntToStr(ThisUser.CompanyNo)) ;
    cds_PLIP.SQL.Add('AND uap.UserID = ' + IntToStr(ThisUser.UserID)) ;
  // cds_PLIP.SQL.Add(GetSQLofComboFilter(1, 'C.PktNrLevKod', cbOwner)) ;
   End
   else
*)
// Begin
  cds_PLIP.SQL.Add('LIP.InvCode, LIP.LogicalInventoryName, LIP.LogicalInventoryPointNo AS LIPNo') ;
  cds_PLIP.SQL.Add('FROM') ;
  cds_PLIP.SQL.Add('dbo.PHYSICALINVENTORYPOINT PH') ;
  cds_PLIP.SQL.Add('Inner Join dbo.LOGICALINVENTORYPOINT LIP on LIP.PhysicalInventoryPointNo = PH.PhysicalInventoryPointNo') ;
  cds_PLIP.SQL.Add('Inner Join dbo.CITY CY ON CY.CITYNO = PH.PhyInvPointNameNo') ;
  cds_PLIP.SQL.Add('Inner Join dbo.ClientRole CR ON CR.ClientNo = PH.OwnerNo') ;
  cds_PLIP.SQL.Add('Inner Join dbo.Client C ON C.ClientNo = PH.OwnerNo') ;
  cds_PLIP.SQL.Add('WHERE') ;
  cds_PLIP.SQL.Add('LIP.SequenceNo = 1') ;
  cds_PLIP.SQL.Add('AND PH.SequenceNo = 1') ;

  if dmInventory.UserLipNoExists then
  Begin
    cUserLipNoExists  := True ;
    cds_PLIP.SQL.Add('AND ((exists (Select * from dbo.UserLipNo ul') ;
    cds_PLIP.SQL.Add('WHERE ul.LIPNo = LIP.LogicalInventoryPointNo') ;
    cds_PLIP.SQL.Add('AND ul.UserID = ' + IntToStr(ThisUser.UserID) + ')))') ;

    cds_PLIP.SQL.Add(GetSQLofComboFilter(1, 'C.PktNrLevKod', cbOwner)) ;

{
      cds_PLIP.SQL.Add('OR (exists (Select * from dbo.UserArrivalPoint ua') ;
      cds_PLIP.SQL.Add('WHERE ua.PhyInvPointNameNo = PH.PhyInvPointNameNo') ;
      cds_PLIP.SQL.Add('AND ua.UserID = ' + IntToStr(ThisUser.UserID) + ')))') ;
}
  End
  else
  Begin
    cUserLipNoExists  := False ;
    cds_PLIP.SQL.Add('AND PH.PhyInvPointNameNo in (Select PH2.PhyInvPointNameNo') ;
    cds_PLIP.SQL.Add('FROM dbo.PHYSICALINVENTORYPOINT PH2') ;
    cds_PLIP.SQL.Add('WHERE PH2.OwnerNo = ' + inttostr(ThisUser.CompanyNo) +  ')') ;

    cds_PLIP.SQL.Add(GetSQLofComboFilter(1, 'C.PktNrLevKod', cbOwner)) ;

  End;
// End ;

 if VidaWood then
 cds_PLIP.SQL.Add('Order By  CY.CITYNAME, LIP.LogicalInventoryName')
 else
 cds_PLIP.SQL.Add('Order By  LIP.InvCode, LIP.LogicalInventoryName') ;


 if ThisUser.UserID = 258 then cds_PLIP.SQL.SaveToFile('cds_PLIP.txt');
 cds_PLIP.Active:= True ;

  cbLIP.Properties.Items.Clear ;
  While not cds_PLIP.Eof do
  Begin
   cbLIP.Properties.Items.AddCheckItem(cds_PLIP.FieldByName('PLIP').AsString,  cds_PLIP.FieldByName('InvCode').AsString) ;   //cds_PLIPLIPNo.AsString) ;//
   cds_PLIP.Next ;
  End ;
  cds_PLIP.Active := False ;
end;

procedure TfrmInventoryReport.Button3Click(Sender: TObject);
//Var
//    APCheckStates : ^TcxCheckStates;
//    AddORToSQL    : Boolean ;
//    x             : Integer ;

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

procedure TfrmInventoryReport.ccbNBExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccbNB.Clear ;
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

   ccbNT.Visible  := True ;
   ccbNB.Visible  := True ;

   ccbAL.Visible  := True ;
//   ccbTS2.Visible := True ;
//   ccbKV2.Visible := True ;
//   ccbSU2.Visible := True ;
//   ccbIMP.Visible := True ;

   eAT.Visible    := False ;
   eAB.Visible    := False ;
   eNT.Visible    := False ;
   eNB.Visible    := False ;
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
   eNT.Visible    := True ;
   eNB.Visible    := True ;
   eAL.Visible    := True ;
//   eTS.Visible    := True ;
//   eKV.Visible    := True ;
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
   RefreshAfterChanges ;


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
 and ((dmInventory.cds_PkgNoList.Active) and (dmInventory.cds_PkgNoList.RecordCount > 0))
 and (cbInklEjFakt2.ItemIndex = 0) ;
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
   RefreshAfterChanges ;
  Finally
   FreeAndNil(fchgPkgVard) ;
  End ;
 End ;
 Finally
  mtPkgNos.Active:= False ;
 End ;
end;

procedure TfrmInventoryReport.acPrintPcsPerLengthExecute(Sender: TObject);
//Var Save_Cursor : TCursor;
begin
 if ReportInProgress then  Exit ;
 //Save_Cursor        := Screen.Cursor;
 //Screen.Cursor      := crSQLWait;    { Show hourglass cursor }
 ReportInProgress   := False ;
 Try
  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add('Antal/längd') ;


//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Add(grdPkgNoTblDBBandedTableView1Lager.EditValue) ;

  dxComponentPrinter1Link2.PrinterPage.Orientation    := poPortrait ;
  dxComponentPrinter1Link2.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link2.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link2.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link2) ;
 Finally
  ReportInProgress  := False ;
 // Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End;
end;

procedure TfrmInventoryReport.acPrintPcsPerLengthUpdate(Sender: TObject);
begin
  acPrintPcsPerLength.Enabled := not ReportInProgress ;
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

procedure TfrmInventoryReport.eNBExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccbNB.Clear ;
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

procedure  TfrmInventoryReport.eNTExit(Sender: TObject);
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
 and ((dmInventory.cds_PkgNoList.Active) and (dmInventory.cds_PkgNoList.RecordCount > 0))
 and (cbInklEjFakt2.ItemIndex = 0) ;
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
  cds_PkgList.Close ;
  cds_PkgList.SQL.Clear ;
  cds_PkgList.SQL.Add('Select distinct Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS PKT,') ;
  cds_PkgList.SQL.Add('0 AS ProductNo,') ;
  cds_PkgList.SQL.Add('OL.OrderLineDescription AS PRODUKT,') ;
  cds_PkgList.SQL.Add('0 AS PackageTypeNo,') ;
  cds_PkgList.SQL.Add('0 AS PackageNo,') ;
  cds_PkgList.SQL.Add(QuotedStr('xxx')+' AS SupplierCode,') ;

  cds_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  cds_PkgList.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;

  cds_PkgList.SQL.Add('RTRIM('+QuotedStr(' ')+') AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : cds_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' AND PTL.STD_Length = 1'
        +' AND ls.NoOfLengths = 1'
        +' THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

//Lägg till resten av kolumnerna...
  For y:= x to 44 do
  cds_PkgList.SQL.Add('CAST(0.0 AS Float) AS L'+inttostr(y)+', ') ;

//Kolumn 65 är en numera en summering av antal paket
  cds_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN PTL.STD_Length = 0 OR ls.NoOfLengths > 1 THEN Str(pn.PackageNo)+pn.SupplierCode') ;
  cds_PkgList.SQL.Add('END)  AS Float)  AS L45,') ;
  sq_GroupLengths.Close ;


  cds_PkgList.SQL.Add('CAST(SUM(ptd.m3Actual) AS Float) AS AM3,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.PriceVolume) AS Float) AS NM3,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.LinealMeterActualLength) AS Float) AS AM1,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.MFBMNominal) AS Float) AS MFBM,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.SQMofActualWidth) AS Float) AS AM2,') ;
  cds_PkgList.SQL.Add('GetDate() AS TILLVERKAD,') ;


  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS TS,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS PC,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' KV,') ;
  cds_PkgList.SQL.Add('0 AS STD_Length,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' UT,') ;
//  cds_PkgList.SQL.Add('IH.InternalInvoiceNo AS OwnerNo, ' + 'Cast(IL.SHIPPINGPLANNO AS Varchar(101)) AS Lager,') ;
  cds_PkgList.SQL.Add('0 AS OwnerNo, ' + 'Cast(0 AS Varchar(101)) AS Lager,') ;
  cds_PkgList.SQL.Add('-1 AS PIPNo,') ;

{  cds_PkgList.SQL.Add('CASE') ;
  cds_PkgList.SQL.Add('WHEN IH.InvoiceType = 0 THEN') ;
  cds_PkgList.SQL.Add('(Select INO.InvoiceNo FROM dbo.InvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  cds_PkgList.SQL.Add('WHEN IH.InvoiceType = 1 THEN') ;
  cds_PkgList.SQL.Add('(Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  cds_PkgList.SQL.Add('WHEN IH.InvoiceType = 2 THEN') ;
  cds_PkgList.SQL.Add('(Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  cds_PkgList.SQL.Add('WHEN IH.InvoiceType = 3 THEN') ;
  cds_PkgList.SQL.Add('(Select INO.PO_InvoiceNo FROM dbo.InvoiceNumber_PO INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  cds_PkgList.SQL.Add('WHEN IH.InvoiceType = 4 THEN') ;
  cds_PkgList.SQL.Add('(Select INO.InvoiceNo FROM dbo.InvoiceNo_USA INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  cds_PkgList.SQL.Add('WHEN IH.InvoiceType = 5 THEN') ;
  cds_PkgList.SQL.Add('(Select INO.InvoiceNo FROM dbo.InvNo_FW INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  cds_PkgList.SQL.Add('END AS LIPNo,') ; }
  cds_PkgList.SQL.Add('0 AS LIPNo,') ;

  cds_PkgList.SQL.Add('1 AS Status,') ;

  cds_PkgList.SQL.Add('CAST(1.0 AS Float) AS Pris,') ;
  cds_PkgList.SQL.Add('CAST(1.0  AS Float) AS Värde,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS VarugruppNamn,') ;

  cds_PkgList.SQL.Add('CAST((SUM(ptd.LinealMeterActualLength) / SUM(ptd.NoOfPieces)) AS Float) AS AvgLength,') ;

  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS REFERENCE,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS BL_NO,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS Info2') ;



  cds_PkgList.SQL.Add('FROM dbo.InvoiceHeader IH ') ;

  cds_PkgList.SQL.Add('INNER JOIN dbo.InvoiceLO     IL 	ON  IH.InternalInvoiceNo = IL.InternalInvoiceNo') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.Invoiced_Load	ILo	ON Ilo.InternalInvoiceNo = IL.InternalInvoiceNo') ;
  cds_PkgList.SQL.Add('AND Ilo.SHIPPINGPLANNO    = IL.SHIPPINGPLANNO') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.Loaddetail    LD 	ON  Ilo.LoadNo            = LD.LoadNo') ;
  cds_PkgList.SQL.Add('AND Ilo.SHIPPINGPLANNO    = LD.SHIPPINGPLANNO') ;

  cds_PkgList.SQL.Add('INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipPlanDetailObjectNo =  LD.DefaultCustShipObjectNo') ;

  cds_PkgList.SQL.Add('INNER JOIN DBO.ORDERLINE	OL	ON CSD.ORDERNO = OL.ORDERNO') ;
  cds_PkgList.SQL.Add('AND CSD.ORDERLINENO = OL.ORDERLINENO') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo') ;
  cds_PkgList.SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;
  cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = LD.PackageTypeNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;

  cds_PkgList.SQL.Add('inner JOIN dbo.Client C			ON C.ClientNo = PN.SupplierNo') ;

  cds_PkgList.SQL.Add('INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitNo') ;

  cds_PkgList.SQL.Add('Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.PackageTypeNo') ;
  cds_PkgList.SQL.Add('AND PTD.InternalInvoiceNo = IH.InternalInvoiceNo') ;
  cds_PkgList.SQL.Add('AND PTD.LoadNo = ILO.LoadNo') ;
  cds_PkgList.SQL.Add('AND PTD.LoadDetailNo = LD.LoadDetailNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;


//  cds_PkgList.SQL.Add('Left join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
//  cds_PkgList.SQL.Add('AND ps.LanguageCode = ' + inttostr(ThisUser.LanguageID)) ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_49' (* 'STYCK PER LÄNGD' *) ) ;
       End ;
   1 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_5' (* 'AM3 PER LÄNGD' *) ) ;
       End ;
   2 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_51' (* 'PAKET PER LÄNGD' *) ) ;
       End ;
   3 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_51' (* 'PAKET PER LÄNGD' *) ) ;
       End ;
  End ;


  cds_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_PkgList.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_PkgList.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  cds_PkgList.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_PkgList.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_PkgList.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_PkgList.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_PkgList.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;


  cds_PkgList.SQL.Add('WHERE ') ; //SequenceNo = Active "property"

  For x := 0 to mInvNos.Lines.Count - 1 do
  Begin
  if StrToIntDef(mInvNos.Lines.Strings[x],0) > 0 then
  Begin
   if x > 0 then
   cds_PkgList.SQL.Add(' OR ' + mInvNos.Lines.Strings[x])
    else
     cds_PkgList.SQL.Add(mInvNos.Lines.Strings[x]);
  Case cbInvoiceType.ItemIndex of
   0 : Begin
        cds_PkgList.SQL.Add( ' IN (Select INO.InvoiceNo FROM dbo.InvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   1 : Begin
        cds_PkgList.SQL.Add( ' IN (Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   2 : Begin
        cds_PkgList.SQL.Add( ' IN (Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   3 : Begin
        cds_PkgList.SQL.Add( ' IN (Select INO.PO_InvoiceNo FROM dbo.InvoiceNumber_PO INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   4 : Begin
        cds_PkgList.SQL.Add( ' IN (Select INO.InvoiceNo FROM dbo.InvoiceNo_USA INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   5 : Begin
        cds_PkgList.SQL.Add( ' IN (Select INO.InvoiceNo FROM dbo.InvNo_FW INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
  End ;//case
  End ;//if...
  End ;

  cds_PkgList.SQL.Add('Group By OL.OrderLineDescription, pg.ActualThicknessMM, pg.ActualWidthMM,') ;
  cds_PkgList.SQL.Add('IH.InvoiceType') ;
//  if ShowPackageSizeName then
//  cds_PkgList.SQL.Add(', ps.PackageSizeName') ;
  if thisuser.UserID = 258 then cds_PkgList.SQL.SaveToFile('cds_PkgList_FakturaSpecSUM.txt');
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
  cds_PkgList.Close ;
  cds_PkgList.SQL.Clear ;

  cds_PkgList.SQL.Add('Select distinct 1 AS PKT,') ;

  cds_PkgList.SQL.Add('pd.ProductNo,') ;
  cds_PkgList.SQL.Add('OL.OrderLineDescription AS PRODUKT,') ;
  cds_PkgList.SQL.Add('pt.PackageTypeNo,') ;
  cds_PkgList.SQL.Add('pn.PackageNo,') ;
  cds_PkgList.SQL.Add('pn.SupplierCode,') ;

  cds_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  cds_PkgList.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;

  cds_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN PTL.PcsPerLength') ;
  cds_PkgList.SQL.Add('ELSE '+QuotedStr('')) ;
  cds_PkgList.SQL.Add('END AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
  Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

  For y:= x to 45 do
  cds_PkgList.SQL.Add('CAST(0.0 AS Float) AS L'+inttostr(y)+', ') ;

  sq_GroupLengths.Close ;


  cds_PkgList.SQL.Add('CAST(SUM(ptd.m3Actual) AS Float) AS AM3,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.PriceVolume) AS Float) AS NM3,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.LinealMeterActualLength) AS Float) AS AM1,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.MFBMNominal) AS Float) AS MFBM,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.SQMofActualWidth) AS Float) AS AM2,') ;
  cds_PkgList.SQL.Add('pn.DateCreated AS TILLVERKAD,') ;
  cds_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  cds_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  cds_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  cds_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  cds_PkgList.SQL.Add('PTL.STD_Length,') ;
  cds_PkgList.SQL.Add('IH.InternalInvoiceNo AS OwnerNo, ' + 'Cast(IL.SHIPPINGPLANNO AS Varchar(101)) AS Lager,') ;
//  cds_PkgList.SQL.Add('0 AS OwnerNo, ' + 'Cast(0 AS Varchar(101)) AS Lager,') ;
  cds_PkgList.SQL.Add('IH.InvoiceType AS PIPNo,') ;

  cds_PkgList.SQL.Add('CASE') ;
  cds_PkgList.SQL.Add('WHEN IH.InvoiceType = 0 THEN') ;
  cds_PkgList.SQL.Add('(Select INO.InvoiceNo FROM dbo.InvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  cds_PkgList.SQL.Add('WHEN IH.InvoiceType = 1 THEN') ;
  cds_PkgList.SQL.Add('(Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  cds_PkgList.SQL.Add('WHEN IH.InvoiceType = 2 THEN') ;
  cds_PkgList.SQL.Add('(Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  cds_PkgList.SQL.Add('WHEN IH.InvoiceType = 3 THEN') ;
  cds_PkgList.SQL.Add('(Select INO.PO_InvoiceNo FROM dbo.InvoiceNumber_PO INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  cds_PkgList.SQL.Add('WHEN IH.InvoiceType = 4 THEN') ;
  cds_PkgList.SQL.Add('(Select INO.InvoiceNo FROM dbo.InvoiceNo_USA INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  cds_PkgList.SQL.Add('WHEN IH.InvoiceType = 5 THEN') ;
  cds_PkgList.SQL.Add('(Select INO.InvoiceNo FROM dbo.InvNo_FW INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
  cds_PkgList.SQL.Add('END AS LIPNo,') ;

  cds_PkgList.SQL.Add('1 AS Status,') ;

  cds_PkgList.SQL.Add('CAST(1.0 AS Float) AS Pris,') ;
  cds_PkgList.SQL.Add('CAST(1.0 AS Float) AS Värde,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS VarugruppNamn, CAST(pt.TotalLinealMeterActualLength / pt.TotalNoOfPieces AS Float) AS AvgLength,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS REFERENCE,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS BL_NO,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS Info2') ;


  cds_PkgList.SQL.Add('FROM dbo.InvoiceHeader IH ') ;

  cds_PkgList.SQL.Add('INNER JOIN dbo.InvoiceLO     IL 	ON  IH.InternalInvoiceNo = IL.InternalInvoiceNo') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.Invoiced_Load	ILo	ON Ilo.InternalInvoiceNo = IL.InternalInvoiceNo') ;
  cds_PkgList.SQL.Add('AND Ilo.SHIPPINGPLANNO    = IL.SHIPPINGPLANNO') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.Loaddetail    LD 	ON  Ilo.LoadNo            = LD.LoadNo') ;
  cds_PkgList.SQL.Add('AND Ilo.SHIPPINGPLANNO    = LD.SHIPPINGPLANNO') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipPlanDetailObjectNo =  LD.DefaultCustShipObjectNo') ;
  cds_PkgList.SQL.Add('INNER JOIN DBO.ORDERLINE	OL	ON CSD.ORDERNO = OL.ORDERNO') ;
  cds_PkgList.SQL.Add('AND CSD.ORDERLINENO = OL.ORDERLINENO') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo') ;
  cds_PkgList.SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;
  cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = LD.PackageTypeNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
  cds_PkgList.SQL.Add('inner JOIN dbo.Client C			ON C.ClientNo = PN.SupplierNo') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.PackageTypeNo') ;

  cds_PkgList.SQL.Add('AND PTD.InternalInvoiceNo = IH.InternalInvoiceNo') ;
  cds_PkgList.SQL.Add('AND PTD.LoadNo = ILO.LoadNo') ;
  cds_PkgList.SQL.Add('AND PTD.LoadDetailNo = LD.LoadDetailNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  cds_PkgList.SQL.Add('') ;
  cds_PkgList.SQL.Add('') ;

//  cds_PkgList.SQL.Add('Left join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
//  cds_PkgList.SQL.Add('AND ps.LanguageCode = ' + inttostr(ThisUser.LanguageID)) ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_4' (* 'ANTAL PER LÄNGD' *) ) ;
       End ;
   1 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_5' (* 'AM3 PER LÄNGD' *) ) ;
       End ;
   2 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_6' (* 'NM3 PER LÄNGD' *) ) ;
       End ;
   3 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_4' (* 'ANTAL PER LÄNGD' *) ) ;
       End ;
  End ;



  cds_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_PkgList.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_PkgList.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_PkgList.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_PkgList.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_PkgList.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_PkgList.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('WHERE ') ; //SequenceNo = Active "property"

  For x := 0 to mInvNos.Lines.Count - 1 do
  Begin
  if StrToIntDef(mInvNos.Lines.Strings[x],0) > 0 then
  Begin
   if x > 0 then
   cds_PkgList.SQL.Add(' OR ' + mInvNos.Lines.Strings[x])
    else
     cds_PkgList.SQL.Add(mInvNos.Lines.Strings[x]);
  Case cbInvoiceType.ItemIndex of
   0 : Begin
        cds_PkgList.SQL.Add( ' IN (Select INO.InvoiceNo FROM dbo.InvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   1 : Begin
        cds_PkgList.SQL.Add( ' IN (Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   2 : Begin
        cds_PkgList.SQL.Add( ' IN (Select INO.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   3 : Begin
        cds_PkgList.SQL.Add( ' IN (Select INO.PO_InvoiceNo FROM dbo.InvoiceNumber_PO INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   4 : Begin
        cds_PkgList.SQL.Add( ' IN (Select INO.InvoiceNo FROM dbo.InvoiceNo_USA INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
   5 : Begin
        cds_PkgList.SQL.Add( ' IN (Select INO.InvoiceNo FROM dbo.InvNo_FW INo WHERE INo.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
       End ;
  End ;//case
  End ;//if...
  End ;

  cds_PkgList.SQL.Add('Group by pd.ProductNo, OL.OrderLineDescription, pt.PackageTypeNo, pn.PackageNo, pn.SupplierCode, pg.ActualThicknessMM,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM, PTL.STD_Length, PTL.PcsPerLength, ') ;
  cds_PkgList.SQL.Add('pn.DateCreated, SPE.SpeciesName, imp.ProductCategoryName,') ;
  cds_PkgList.SQL.Add('Gr.GradeName, SUR.SurfacingName, ') ;
  cds_PkgList.SQL.Add('IH.InvoiceType, IH.InternalInvoiceNo, IL.SHIPPINGPLANNO, pt.TotalLinealMeterActualLength, pt.TotalNoOfPieces ') ;
//    if ShowPackageSizeName then
//  cds_PkgList.SQL.Add(', ps.PackageSizeName') ;

  if thisuser.UserID = 258 then cds_PkgList.SQL.SaveToFile('cds_PkgListNo_FakturaSpec.txt');

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
Var //x                 : Integer ;
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
//   dmsSystem.StoreGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsName.AsString + '/' + cds_PropsForm.AsString, cxGrid1DBBandedTableView1, 'frmInventoryReport') ;

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
   Begin
    cds_Props.ApplyUpdates(0) ;
    cds_Props.CommitUpdates ;
   End;
  End ;//if fSokAvropMall.ShowModal = mrOK then
  Finally
   FreeAndNil(fSokAvropMall) ;
  End ;
 End ;//With...
end;

procedure TfrmInventoryReport.acSaveMallExecute(Sender: TObject);
begin
 if cbProdPaketNr.ItemIndex > -1 then
 Begin
  dmsSystem.StoreGridLayout_Special( ThisUser.UserID,   frmInventoryReport.Name + '1',
  cbProdPaketNr.Properties.Items.Strings[cbProdPaketNr.ItemIndex]  + '/' +
  frmInventoryReport.Name + '1', cxGrid1DBBandedTableView1,'frmInventoryReport') ;

  dmsSystem.StoreGridLayout_Special( ThisUser.UserID,   frmInventoryReport.Name + '2',
  cbProdPaketNr.Properties.Items.Strings[cbProdPaketNr.ItemIndex]  + '/' +
  frmInventoryReport.Name + '2', grdPkgNoTblDBBandedTableView1,'frmInventoryReport') ;


  SaveUserProfile ;
 End;
end;

procedure TfrmInventoryReport.acLoadGridLayoutExecute(Sender: TObject);
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

procedure TfrmInventoryReport.OpenStandardMall(Sender: TObject);
{Var x,SupplierNo,
    LoadingLocationNo,
    ShipperNo,
    BookingTypeNo,
    MarketRegionNo,
    CustomerNo,
    AgentNo           : Integer ; }
//    fSokAvropMall     : TfSokAvropMall;
begin
 With dmInventory do
 Begin
  if AterStallLayout <> 1 then
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


  cds_PkgList.Close ;
  cds_PkgList.SQL.Clear ;
  cds_PkgList.SQL.Add('Select distinct Count(Distinct Str(pn.PackageNo)+pn.SupplierCode) AS PKT,') ;
  cds_PkgList.SQL.Add('0 AS ProductNo,') ;
  cds_PkgList.SQL.Add('OL.OrderLineDescription AS PRODUKT,') ;
  cds_PkgList.SQL.Add('0 AS PackageTypeNo,') ;
  cds_PkgList.SQL.Add('0 AS PackageNo,') ;
  cds_PkgList.SQL.Add(QuotedStr('xxx')+' AS SupplierCode,') ;

  cds_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  cds_PkgList.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;

  cds_PkgList.SQL.Add('RTRIM('+QuotedStr(' ')+') AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
   Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : cds_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' AND PTL.STD_Length = 1'
        +' AND ls.NoOfLengths = 1'
        +' THEN Str(pn.PackageNo)+pn.SupplierCode END)  AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

//Lägg till resten av kolumnerna...
  For y:= x to 44 do
  cds_PkgList.SQL.Add('CAST(0.0 AS Float) AS L'+inttostr(y)+', ') ;

//Kolumn 65 är en numera en summering av antal paket
  cds_PkgList.SQL.Add('CAST(count(Distinct CASE WHEN PTL.STD_Length = 0 OR ls.NoOfLengths > 1 THEN Str(pn.PackageNo)+pn.SupplierCode') ;
  cds_PkgList.SQL.Add('END)  AS Float)  AS L45,') ;
  sq_GroupLengths.Close ;


  cds_PkgList.SQL.Add('CAST(SUM(ptd.m3Actual) AS Float) AS AM3,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.PriceVolume) AS Float) AS NM3,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.LinealMeterActualLength) AS Float) AS AM1,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.MFBMNominal) AS Float) AS MFBM,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.SQMofActualWidth) AS Float) AS AM2,') ;
  cds_PkgList.SQL.Add('GetDate() AS TILLVERKAD,') ;


  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS TS,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS PC,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' KV,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' UT,') ;

//  cds_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
//  cds_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
//  cds_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  cds_PkgList.SQL.Add('0 AS STD_Length,') ;
//  cds_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  cds_PkgList.SQL.Add('-1 AS OwnerNo, ' + 'Cast(0 AS Varchar(101)) AS Lager,') ;
  cds_PkgList.SQL.Add('-1 AS OwnerNo, ' + '0 AS Lager,') ;
  cds_PkgList.SQL.Add('-1 AS PIPNo,') ;

  cds_PkgList.SQL.Add('-1 AS LIPNo,') ;

  cds_PkgList.SQL.Add('1 AS Status,') ;
  cds_PkgList.SQL.Add('CAST(1.0 AS Float) AS Pris,') ;
  cds_PkgList.SQL.Add('CAST(1.0 AS Float) AS Värde,') ;
//  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS VarugruppNamn, 0.0 AS AvgLength, ' + QuotedStr('') + ' AS REFERENCE, ' + QuotedStr('') + ' AS BL_NO ' + QuotedStr('') + ' AS Info2') ;

  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS VarugruppNamn,') ;
  cds_PkgList.SQL.Add('CAST((SUM(ptd.LinealMeterActualLength) / SUM(ptd.NoOfPieces)) AS Float) AS AvgLength,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS REFERENCE,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS BL_NO,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS Info2') ;

  cds_PkgList.SQL.Add('FROM dbo.CustomerShippingPlanHeader CSH ') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.LoadShippingPlan	LSP	ON LSP.ShippingPlanNo = CSH.ShippingPlanNo') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.Loaddetail    LD 	ON  LD.LoadNo            = LSP.LoadNo') ;
  cds_PkgList.SQL.Add('AND LD.SHIPPINGPLANNO    = LSP.SHIPPINGPLANNO') ;

  cds_PkgList.SQL.Add('INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipPlanDetailObjectNo =  LD.DefaultCustShipObjectNo') ;

  cds_PkgList.SQL.Add('INNER JOIN DBO.ORDERLINE	OL	ON CSD.ORDERNO = OL.ORDERNO') ;
  cds_PkgList.SQL.Add('AND CSD.ORDERLINENO = OL.ORDERLINENO') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo') ;
  cds_PkgList.SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;
  cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = LD.PackageTypeNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;

  cds_PkgList.SQL.Add('inner JOIN dbo.Client C			ON C.ClientNo = PN.SupplierNo') ;

  cds_PkgList.SQL.Add('INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitNo') ;

  cds_PkgList.SQL.Add('Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.PackageTypeNo') ;
  cds_PkgList.SQL.Add('AND PTD.InternalInvoiceNo = -1') ;
  cds_PkgList.SQL.Add('AND PTD.LoadNo = LSP.LoadNo') ;
  cds_PkgList.SQL.Add('AND PTD.LoadDetailNo = LD.LoadDetailNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;


//  cds_PkgList.SQL.Add('Left join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
//  cds_PkgList.SQL.Add('AND ps.LanguageCode = ' + inttostr(ThisUser.LanguageID)) ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_49' (* 'STYCK PER LÄNGD' *) ) ;
       End ;
   1 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_5' (* 'AM3 PER LÄNGD' *) ) ;
       End ;
   2 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_51' (* 'PAKET PER LÄNGD' *) ) ;
       End ;
   3 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_51' (* 'PAKET PER LÄNGD' *) ) ;
       End ;
  End ;


  cds_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_PkgList.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_PkgList.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  cds_PkgList.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_PkgList.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_PkgList.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_PkgList.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_PkgList.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;

  if ComboBoxFilterChecked('gs.GradeStampID', ccbGS) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  if ComboBoxFilterChecked('gs.BarcodeID', ccbBC) then
  cds_PkgList.SQL.Add('Inner JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;


  cds_PkgList.SQL.Add('WHERE ') ; //SequenceNo = Active "property"

  For x := 0 to mLONos.Lines.Count - 1 do
  Begin
  if StrToIntDef(mLONos.Lines.Strings[x],0) > 0 then
  Begin
   if x > 0 then
   cds_PkgList.SQL.Add(' OR CSH.ShippingPlanNo = ' + mLONos.Lines.Strings[x] )
    else
     cds_PkgList.SQL.Add('CSH.ShippingPlanNo = ' + mLONos.Lines.Strings[x]);
  End ;
  End ;//for x..

  cds_PkgList.SQL.Add('Group By OL.OrderLineDescription, pg.ActualThicknessMM, pg.ActualWidthMM') ;
//    if ShowPackageSizeName then
//  cds_PkgList.SQL.Add(', ps.PackageSizeName') ;

//  cds_PkgList.SQL.Add('SPE.SpeciesName, Gr.GradeName, SUR.SurfacingName, imp.ProductCategoryName ') ;
//  cds_PkgList.SQL.Add('CSH.SHIPPINGPLANNO') ;
  if thisuser.UserID = 258 then cds_PkgList.SQL.SaveToFile('GenLoadOrderPkgSpec.txt');
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

  cds_PkgList.Close ;
  cds_PkgList.SQL.Clear ;

  cds_PkgList.SQL.Add('Select distinct 1 AS PKT,') ;

  cds_PkgList.SQL.Add('pd.ProductNo,') ;
  cds_PkgList.SQL.Add('OL.OrderLineDescription AS PRODUKT,') ;
  cds_PkgList.SQL.Add('pt.PackageTypeNo,') ;
  cds_PkgList.SQL.Add('pn.PackageNo,') ;
  cds_PkgList.SQL.Add('pn.SupplierCode,') ;

  cds_PkgList.SQL.Add('pg.ActualThicknessMM AS AT,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM AS AB,') ;
  cds_PkgList.SQL.Add('SUM(ptd.NoOfPieces) AS STYCK,') ;

  cds_PkgList.SQL.Add('CASE WHEN PTL.STD_Length = 0 THEN PTL.PcsPerLength') ;
  cds_PkgList.SQL.Add('ELSE '+QuotedStr('')) ;
  cds_PkgList.SQL.Add('END AS STYCKPERLÄNGD,') ;

  sq_GroupLengths.ParamByName('GroupNo').AsInteger:= mtUserPropLengthGroupNo.AsInteger ;
  sq_GroupLengths.Open ;
  sq_GroupLengths.First ;
  x:= 1 ;
  While not sq_GroupLengths.Eof do
  Begin
  Case mtUserPropLengthVolUnitNo.AsInteger of
    0 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    1 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Actual ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    2 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.m3Nominal ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
    3 : cds_PkgList.SQL.Add('CAST(SUM(CASE WHEN pl.ActualLengthMM = '+sq_GroupLengthsActualLengthMM.AsString
        +' THEN ptd.NoOfPieces ELSE 0 END) AS Float) AS L'+inttostr(x)+', ') ;
   End ;//case
   sq_GroupLengths.Next ;
   x:= succ(x) ;
  End ;

  For y:= x to 45 do
  cds_PkgList.SQL.Add('CAST(0.0 AS Float) AS L'+inttostr(y)+', ') ;

  sq_GroupLengths.Close ;


  cds_PkgList.SQL.Add('CAST(SUM(ptd.m3Actual) AS Float) AS AM3,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.PriceVolume) AS Float) AS NM3,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.LinealMeterActualLength) AS Float) AS AM1,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.MFBMNominal) AS Float) AS MFBM,') ;
  cds_PkgList.SQL.Add('CAST(SUM(ptd.SQMofActualWidth) AS Float) AS AM2,') ;
  cds_PkgList.SQL.Add('pn.DateCreated AS TILLVERKAD,') ;
  cds_PkgList.SQL.Add('SPE.SpeciesName AS TS,') ;
  cds_PkgList.SQL.Add('imp.ProductCategoryName AS PC,') ;
  cds_PkgList.SQL.Add('Gr.GradeName AS KV,') ;
  cds_PkgList.SQL.Add('SUR.SurfacingName AS UT,') ;
  cds_PkgList.SQL.Add('PTL.STD_Length,') ;
  cds_PkgList.SQL.Add('-1 AS OwnerNo, ' + 'Cast(CSH.ShippingPlanNo AS Varchar(101)) AS Lager,') ;
  cds_PkgList.SQL.Add('-1 AS PIPNo,') ;

  cds_PkgList.SQL.Add('-1 AS LIPNo,') ;
  cds_PkgList.SQL.Add('1 AS Status,') ;

  cds_PkgList.SQL.Add('CAST(1.0 AS Float) AS Pris,') ;
  cds_PkgList.SQL.Add('CAST(1.0 AS Float) AS Värde,') ;
//  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS VarugruppNamn, 0.0 AS AvgLength, pn.REFERENCE, pn.BL_NO, pn.Info2') ;

  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS VarugruppNamn, CAST(pt.TotalLinealMeterActualLength / pt.TotalNoOfPieces AS Float) AS AvgLength,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS REFERENCE,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS BL_NO,') ;
  cds_PkgList.SQL.Add(QuotedStr('N/A') + ' AS Info2') ;

  cds_PkgList.SQL.Add('FROM dbo.CustomerShippingPlanHeader CSH ') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.LoadShippingPlan	LSP	ON LSP.ShippingPlanNo = CSH.ShippingPlanNo') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.Loaddetail    LD 	ON  LD.LoadNo            = LSP.LoadNo') ;
  cds_PkgList.SQL.Add('AND LD.SHIPPINGPLANNO    = LSP.SHIPPINGPLANNO') ;

  cds_PkgList.SQL.Add('INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipPlanDetailObjectNo =  LD.DefaultCustShipObjectNo') ;
  cds_PkgList.SQL.Add('INNER JOIN DBO.ORDERLINE	OL	ON CSD.ORDERNO = OL.ORDERNO') ;
  cds_PkgList.SQL.Add('AND CSD.ORDERLINENO = OL.ORDERLINENO') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo') ;
  cds_PkgList.SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;


//  cds_PkgList.SQL.Add('Left join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
//  cds_PkgList.SQL.Add('AND ps.LanguageCode = ' + inttostr(ThisUser.LanguageID)) ;

  cds_PkgList.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = LD.PackageTypeNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo') ;
  cds_PkgList.SQL.Add('inner JOIN dbo.Client C			ON C.ClientNo = PN.SupplierNo') ;
  cds_PkgList.SQL.Add('INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.PackageTypeNo') ;

  cds_PkgList.SQL.Add('AND PTD.InternalInvoiceNo = -1') ;
  cds_PkgList.SQL.Add('AND PTD.LoadNo = LSP.LoadNo') ;
  cds_PkgList.SQL.Add('AND PTD.LoadDetailNo = LD.LoadDetailNo') ;
  cds_PkgList.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  cds_PkgList.SQL.Add('') ;
  cds_PkgList.SQL.Add('') ;

  Case mtUserPropLengthVolUnitNo.AsInteger of
   0 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_4' (* 'ANTAL PER LÄNGD' *) ) ;
       End ;
   1 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_5' (* 'AM3 PER LÄNGD' *) ) ;
       End ;
   2 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_6' (* 'NM3 PER LÄNGD' *) ) ;
       End ;
   3 : Begin
        cds_PkgList.SQL.Add('Inner Join dbo.PkgTypeLengthDtl PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
        cds_PkgList.SQL.Add('AND PTL.LengthGroupNo = '+mtUserPropLengthGroupNo.AsString) ;
        cds_PkgList.SQL.Add('AND PTL.VolumeType = '+inttostr(mtUserPropLengthVolUnitNo.AsInteger)) ;
        cxGrid1DBBandedTableView1.Bands.Items[2].Caption:= siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_4' (* 'ANTAL PER LÄNGD' *) ) ;
       End ;
  End ;



  cds_PkgList.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo') ;
  cds_PkgList.SQL.Add('AND pde.LanguageID = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
  cds_PkgList.SQL.Add('AND va.LanguageCode = ' + LanguageID) ;

  cds_PkgList.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;

  cds_PkgList.SQL.Add('Left Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
  cds_PkgList.SQL.Add('				AND imp.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  cds_PkgList.SQL.Add('				AND SPE.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  cds_PkgList.SQL.Add('				AND SUR.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('Left Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  cds_PkgList.SQL.Add('				AND Gr.LanguageCode = ' + LanguageID) ;
  cds_PkgList.SQL.Add('WHERE ') ; //SequenceNo = Active "property"

  For x := 0 to mLONos.Lines.Count - 1 do
  Begin
  if StrToIntDef(mLONos.Lines.Strings[x],0) > 0 then
  Begin
   if x > 0 then
   cds_PkgList.SQL.Add(' OR CSH.ShippingPlanNo = ' + mLONos.Lines.Strings[x] )
    else
     cds_PkgList.SQL.Add('CSH.ShippingPlanNo = ' + mLONos.Lines.Strings[x]);
  End ;
  End ;//for x..

  cds_PkgList.SQL.Add('Group by pd.ProductNo, OL.OrderLineDescription, pt.PackageTypeNo, pn.PackageNo, pn.SupplierCode, pg.ActualThicknessMM,') ;
  cds_PkgList.SQL.Add('pg.ActualWidthMM, PTL.STD_Length, PTL.PcsPerLength, ') ;
  cds_PkgList.SQL.Add('pn.DateCreated, SPE.SpeciesName, imp.ProductCategoryName,') ;
  cds_PkgList.SQL.Add('Gr.GradeName, SUR.SurfacingName, ') ;
  cds_PkgList.SQL.Add('CSH.SHIPPINGPLANNO') ;
//  if ShowPackageSizeName then
//  cds_PkgList.SQL.Add(', ps.PackageSizeName') ;

  if thisuser.UserID = 258 then cds_PkgList.SQL.SaveToFile('GenLoadOrderSpecPkgNoTable_SQL.txt');

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
  ShowMessage(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_133' (* 'Tabell exporterad till excel fil ' *) ) + FileName);
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

procedure TfrmInventoryReport.acSetPriceOnMarkedPkgsExecute(Sender: TObject);
var fEntryPriceField: TfEntryPriceField;
    NewPrice  : Double ;
begin
 if ClickedF10 then
 Begin
  ShowMessage(siLangLinked_frmInventoryReport.GetTextOrDefault('IDS_134' (* 'Pris kan inte ändras i sortiments-vyn, visa paket i paketnr-vyn F8 för att ändra pris' *) )) ;
  Exit ;
 End
// AddRowPerSortiment(Sender)
 else
 Begin
  fEntryPriceField  := TfEntryPriceField.Create(nil) ;
  Try
   if fEntryPriceField.ShowModal = mrOK then
   Begin
    mtPkgNos.Active := True ;
    NewPrice  := StrToFloatDef(fEntryPriceField.mePriceField.Text,0) ;
    SelectedPkgsOfPkgTbl ;
    if (pgInventory.ActivePage = tsLagret) then
     SetPriceOnEachPkg(NewPrice)
      else
       if (pgInventory.ActivePage = tsInventering) then
        SetPriceOnLIPSUM(NewPrice) ;

    mtPkgNos.Active := False ;
   End ;
  Finally
   FreeAndNil(fEntryPriceField) ;
  End ;
 // AddRowPerPaketNr(Sender);
 End ;
end;

Procedure TfrmInventoryReport.SetPriceOnLIPSUM(const NewPrice : Double) ;
Var LIPNo,
    PackageNo   : Integer ;
    Supp_Code   : String ;
Begin
 dmInventory.cds_PkgList.DisableControls ;
 Try
 mtPkgNos.First ;
 While not mtPkgNos.Eof do
 Begin
  PackageNo :=  mtPkgNosPackageNo.AsInteger ;
  Supp_Code :=  TRIM(mtPkgNosSupp_Code.AsString) ;
  LIPNo     :=  mtPkgNosLIPNo.AsInteger ;

  if dmInventory.cds_PkgList.Locate('PackageNo;SupplierCode', VarArrayOf([PackageNo, Supp_Code]),[]) then
//  if dmInventory.cds_PkgList.FindKey([mtPkgNosPackageNo.AsInteger, TRIM(mtPkgNosSupp_Code.AsString)]) then
  Begin
   dmInventory.UpdateLIPSUMPrice(LIPNo, PackageNo, strtointdef(teSetNo.Text,-1), Supp_Code, NewPrice) ;

   //dmInventory.UpdatePackagePrice(mtPkgNosPackageNo.AsInteger, TRIM(mtPkgNosSupp_Code.AsString), NewPrice) ;
   dmInventory.cds_PkgList.Edit ;
   dmInventory.cds_PkgListPris.AsFloat   := NewPrice ;
   dmInventory.cds_PkgListVärde.AsFloat  := dmInventory.cds_PkgListNM3.AsFloat * NewPrice ;
   dmInventory.cds_PkgList.Post ;
  End ;
  mtPkgNos.Next ;
 End ;//While not mtPkgNos.Eof do
 Finally
  dmInventory.cds_PkgList.EnableControls ;
 End ;
End ;

Procedure TfrmInventoryReport.SetPriceOnEachPkg(const NewPrice : Double) ;
Var PackageNo   : Integer ;
    Supp_Code   : String ;
Begin
 dmInventory.cds_PkgList.DisableControls ;
 Try
 mtPkgNos.First ;
 While not mtPkgNos.Eof do
 Begin
  PackageNo :=  mtPkgNosPackageNo.AsInteger ;
  Supp_Code :=  TRIM(mtPkgNosSupp_Code.AsString) ;

  if dmInventory.cds_PkgList.Locate('PackageNo;SupplierCode', VarArrayOf([PackageNo, Supp_Code]),[]) then
//  if dmInventory.cds_PkgList.FindKey([mtPkgNosPackageNo.AsInteger, TRIM(mtPkgNosSupp_Code.AsString)]) then
  Begin
   dmInventory.UpdatePackagePrice(mtPkgNosPackageNo.AsInteger, TRIM(mtPkgNosSupp_Code.AsString), NewPrice) ;
   dmInventory.cds_PkgList.Edit ;
   dmInventory.cds_PkgListPris.AsFloat   := NewPrice ;
   dmInventory.cds_PkgListVärde.AsFloat  := dmInventory.cds_PkgListNM3.AsFloat * NewPrice ;
   dmInventory.cds_PkgList.Post ;
  End ;
  mtPkgNos.Next ;
 End ;//While not mtPkgNos.Eof do
 Finally
  dmInventory.cds_PkgList.EnableControls ;
 End ;
End ;

procedure TfrmInventoryReport.sq_UserProfileAfterInsert(DataSet: TDataSet);
begin
 sq_UserProfileUserID.AsInteger := ThisUser.UserID ;
end;

procedure TfrmInventoryReport.cbOwnerPropertiesCloseUp(Sender: TObject);
Var x           : Integer ;
    PktNrLevKod : String ;
    First       : Boolean ;
begin
 First  := False ;
 {For x := 0 to cbOwner.Properties.Items.Count - 1 do
 Begin
  if cbOwner.States[x] = cbsChecked then
  Begin
   PktNrLevKod  := cbOwner.Properties.Items.Items[x].ShortDescription ;
  End ;
 End ; }


{  For x := 0 to cbOwner.Properties.Items.Count - 1 do
  Begin
   if cbOwner.States[x] = cbsChecked then
   Begin
    if First = False then
    Begin
     PktNrLevKod := cbOwner.Properties.Items.Items[x].ShortDescription ;
     First  := True ;
    End
      else
        PktNrLevKod := PktNrLevKod + ', ' + cbOwner.Properties.Items.Items[x].ShortDescription ;
   End;
  End ; }



 SetCheckComboBoxes_Where_PktNrLevKod_Required ;
end;

procedure TfrmInventoryReport.cbProdPaketNrPropertiesChange(Sender: TObject);
begin
 OpenProdPaketNrMall ;
 Open_UserProfile ;
end;

procedure TfrmInventoryReport.Open_UserProfile ;
Begin
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := frmInventoryReport.Name + '1' ;
 sq_UserProfile.ParamByName('Name').AsString    := cbProdPaketNr.Text ;
 sq_UserProfile.Active  := True ;
 Try
 if not sq_UserProfile.Eof then
 Begin
  if sq_UserProfileCopyPcs.AsInteger = 1 then
  cbHideZeroColumns.Checked  := True
  else
  cbHideZeroColumns.Checked  := False ;
 End;
 Finally
  sq_UserProfile.Active  := False ;
 End;
End;


procedure TfrmInventoryReport.PopulateCheckBoxMallar ;
Begin
 cbProdPaketNr.Properties.Items.Clear ;
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := frmInventoryReport.Name + '1' ;
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

procedure TfrmInventoryReport.OpenProdPaketNrMall ;
begin
//Open Mall
 if cbProdPaketNr.ItemIndex > -1 then
 Begin
  dmsSystem.LoadGridLayout_Special( ThisUser.UserID, frmInventoryReport.Name + '1',
  cbProdPaketNr.Properties.Items.Strings[cbProdPaketNr.ItemIndex]
  + '/' + frmInventoryReport.Name + '1', cxGrid1DBBandedTableView1,'frmInventoryReport') ;

  dmsSystem.LoadGridLayout_Special( ThisUser.UserID, frmInventoryReport.Name + '2',
  cbProdPaketNr.Properties.Items.Strings[cbProdPaketNr.ItemIndex]
  + '/' + frmInventoryReport.Name + '2', grdPkgNoTblDBBandedTableView1,'frmInventoryReport') ;

  SetGridParamsAfterOpenLayout ;
 End;
end;

procedure TfrmInventoryReport.SaveUserProfile ;
Begin
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := frmInventoryReport.Name + '1' ;
 sq_UserProfile.ParamByName('Name').AsString    := cbProdPaketNr.Text ;
 sq_UserProfile.Active  := True ;
 Try
 if not sq_UserProfile.Eof then
 Begin
  sq_UserProfile.Edit ;
  if cbHideZeroColumns.Checked then
  sq_UserProfileCopyPcs.AsInteger := 1
  else
  sq_UserProfileCopyPcs.AsInteger := 0 ;
  sq_UserProfile.Post ;
 End;
 Finally
  sq_UserProfile.Active  := False ;
 End;
End;

End.


