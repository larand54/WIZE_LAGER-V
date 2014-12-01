unit uKilnHandling ;

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
  CrystalActiveXReportViewerLib11_TLB, cxStyles, cxCustomData, cxGraphics,
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
  CRAXDRT_TLB, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxBarBuiltInMenu, System.Actions ;


type
  TfkilnHandling = class(TForm)
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
    F1PktNrrapport1: TMenuItem;
    F2Antallngdrapport1: TMenuItem;
    F3Pktkodrapport1: TMenuItem;
    F4PktNrlista1: TMenuItem;
    F5Lagersummering1: TMenuItem;
    acClose: TAction;
    Stng1: TMenuItem;
    pcInventory: TcxPageControl;
    tsTABELL: TcxTabSheet;
    Memo1: TMemo;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    PakettabellF81: TMenuItem;
    LagersumtabellF71: TMenuItem;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    acPkgInfo: TAction;
    pmPkgTable: TdxBarPopupMenu;
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
    dxComponentPrinter1Link2: TdxGridReportLink;
    AntlngdF91: TMenuItem;
    dxComponentPrinter1Link3: TdxGridReportLink;
    acPkgTypeTable: TAction;
    SummeringF61: TMenuItem;
    pcPktNrAndTorkSats: TcxPageControl;
    cxGridPopupMenu1: TcxGridPopupMenu;
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
    GridPMPkgNos: TcxGridPopupMenu;
    cxSplitter1: TcxSplitter;
    mtPkgNos: TkbmMemTable;
    mtPkgNosPackageNo: TIntegerField;
    mtPkgNosSupp_Code: TStringField;
    mtPkgNosOwnerNo: TIntegerField;
    dxComponentPrinter1Link4: TdxGridReportLink;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    pmPkgNos: TdxBarPopupMenu;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    mtUserPropGroupByBox: TIntegerField;
    mtUserPropGroupSummary: TIntegerField;
    dxBarButton27: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxStyle3: TcxStyle;
    mtPkgNosLIPNo: TIntegerField;
    mtPkgNosPIPNo: TIntegerField;
    dxBarButton28: TdxBarButton;
    cxEditStyleController1: TcxEditStyleController;
    cxEditStyleController2: TcxEditStyleController;
    cxEditStyleController3: TcxEditStyleController;
    cxStyle4: TcxStyle;
    bbAddPkgsToKilnCharge: TdxBarButton;
    dxBarButton30: TdxBarButton;
    pmKilnPkgs: TdxBarPopupMenu;
    dxBarButton29: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxImageList1: TcxImageList;
    ImageList1: TImageList;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    cxStyleAktivePkg: TcxStyle;
    cxStyleINAktivePkg: TcxStyle;
    dxComponentPrinter1Link5: TdxGridReportLink;
    mtUserPropAgentNo: TIntegerField;
    mtUserPropKilnNo: TIntegerField;
    mtUserPropTEST: TStringField;
    bbVisaAvAktiverade: TdxBarButton;
    mtPkgNosStatus: TIntegerField;
    dxBarButton35: TdxBarButton;
    ds_PLIP: TDataSource;
    dxBarButton36: TdxBarButton;
    mtUserPropShipperNo: TIntegerField;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    pgInventory: TcxPageControl;
    tsLagret: TcxTabSheet;
    Panel3: TPanel;
    cxLabel2: TcxLabel;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    mtUserPropStartPeriod: TDateTimeField;
    mtUserPropEndPeriod: TDateTimeField;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    cxStyleNormalAktivePkg: TcxStyle;
    cds_Verk: TFDQuery;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkSearchName: TStringField;
    cds_VerkSalesRegionNo: TIntegerField;
    cds_VerkPktNrLevKod: TStringField;
    cds_PLIP: TFDQuery;
    cds_PLIPPLIP: TStringField;
    cds_PLIPInvCode: TStringField;
    sq_UserProfile: TFDQuery;
    sq_UserProfileUserID: TIntegerField;
    sq_UserProfileForm: TStringField;
    sq_UserProfileName: TStringField;
    sq_UserProfileCopyPcs: TIntegerField;
    Timer1: TTimer;
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
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    cxGrid1DBBandedTableView1Rad: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RowNo: TcxGridDBBandedColumn;
    GridBandedTableViewStyleSheetPumpkinlarge: TcxGridBandedTableViewStyleSheet;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyleBeforeKiln: TcxStyle;
    cxStyleInKiln: TcxStyle;
    cxStyleAfterKiln: TcxStyle;
    acAddVagn: TAction;
    mtUserPropKilnChargeNo: TIntegerField;
    mtUserPropProgressKiln: TStringField;
    acEditVagn: TAction;
    acMoveVagnIntoKiln: TAction;
    cxStyleRed: TcxStyle;
    acMoveFromKiln: TAction;
    cxLabelVagn: TcxLabel;
    lcProgressKiln: TcxDBLookupComboBox;
    cxButton9: TcxButton;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxButton6: TcxButton;
    cxButton5: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxButton4: TcxButton;
    acCancelMoveVagnIntoKiln: TAction;
    cbColAutoWidth: TcxCheckBox;
    cxButton7: TcxButton;
    acCancelMoveFromKiln: TAction;
    lcOWNER: TcxDBLookupComboBox;
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
    lNoOfVagnarKiln: TcxDBLabel;
    lAntalVagnarBefore: TcxDBLabel;
    mtUserPropFilter1: TStringField;
    mtUserPropFilter2: TStringField;
    mtUserPropMarketRegionNo: TIntegerField;
    mtUserPropOrderTypeNo: TIntegerField;
    mtUserPropStatus: TIntegerField;
    mtUserPropFilterOrderDate: TIntegerField;
    mtUserPropClientNo: TIntegerField;
    mtUserPropSalesPersonNo: TIntegerField;
    mtUserPropVerkSupplierNo: TIntegerField;
    mtUserPropVerkKundNo: TIntegerField;
    mtUserPropLOObjectType: TIntegerField;
    mtUserPropLoadingLocationNo: TIntegerField;
    mtUserPropBookingTypeNo: TIntegerField;
    mtUserPropCustomerNo: TIntegerField;
    mtUserPropShowProduct: TIntegerField;
    cxStyleContent: TcxStyle;
    seColWidth: TcxDBSpinEdit;
    cxLabel3: TcxLabel;
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
    cxButton8: TcxButton;
    acSaveProps: TAction;
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


    procedure acPkgTypeTableExecute(Sender: TObject);
    procedure mtUserPropAfterInsert(DataSet: TDataSet);
    procedure grdPkgNoTblDBBandedTableView1L1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure cxGrid1DBBandedTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBBandedTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxGrid1DBBandedTableView1InitEdit(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit);
    procedure sq_UserProfileAfterInsert(DataSet: TDataSet);
    procedure cxButton9Click(Sender: TObject);
    procedure acPkgTypeTableUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mtLayoutAfterInsert(DataSet: TDataSet);
    procedure cxGrid1DBBandedTableView1V1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acAddVagnExecute(Sender: TObject);
    procedure acEditVagnExecute(Sender: TObject);
    procedure acAddVagnUpdate(Sender: TObject);
    procedure acEditVagnUpdate(Sender: TObject);
    procedure acMoveVagnIntoKilnExecute(Sender: TObject);
    procedure cxGrid1DBBandedTableView1ColumnHeaderClick(
      Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure acMoveFromKilnExecute(Sender: TObject);
    procedure acMoveVagnIntoKilnUpdate(Sender: TObject);
    procedure acMoveFromKilnUpdate(Sender: TObject);
    procedure acCancelMoveVagnIntoKilnExecute(Sender: TObject);
    procedure acCancelMoveFromKilnExecute(Sender: TObject);
    procedure mtUserPropKilnChargeNoChange(Sender: TField);
    procedure mtUserPropOwnerNoChange(Sender: TField);
    procedure cbColAutoWidthPropertiesChange(Sender: TObject);
    procedure cxGrid1DBBandedTableView1V1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure acSavePropsExecute(Sender: TObject);

  private
    { Private declarations }
    FColumn               : TcxGridColumn ;
    ReportInProgress      : Boolean ;

    RightButton,
    ClickedF10            : Boolean ;
    SelectedVagnNo        : Integer ;
    SelectedLength        : String ;
    procedure GenKilnVagnarSQL(Sender: TObject);
    procedure SelectedPkgsOfPkgTbl_V2 ;

    procedure SetGridParamsAfterOpenLayout ;
    procedure SetKolumnNameAndHideNonUsedKolumns(Sender: TObject);

  public
    { Public declarations }
    Procedure CreateCo(Sender: TObject;CompanyNo: Integer);
  end;

var
  fkilnHandling: TfkilnHandling;

implementation

uses VidaType, dmsDataConn, VidaUser, dm_Inventory, dmsVidaContact, VidaConst,
  //dmcVidaSystem , //uGridSetting,
  UnitPkgInfo, //dmcPkgs,
  //uSinglePkgEntry,
  dmc_UserProps, dmsVidaSystem, //UnitPkgEntry,
  //dmsVidaPkg,
  //UfelRegPkg, UnitRemovePkg, UnitMovePkgs,
  uSendMapiMail ,
  uEntryField, //uKilnCharges, uKilnChargeNote, uKilnWizard, uVardaBortPkt,
  //uchgPkgVard, uSokAvropMall, uEntryPriceField, // uAngeNyMall ,
  uEnterKilnVagn;

{$R *.dfm}

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



Procedure TfkilnHandling.CreateCo(Sender: TObject;CompanyNo: Integer);
var
  Save_Cursor : TCursor;
  PktNrLevKod : String ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  PktNrLevKod :=  dmsContact.Get_PktNrLevKod(ThisUser.CompanyNo) ;

  dm_UserProps.LoadUserProps (Self.Name, mtuserprop) ;

  with dmInventory do
   Begin
    cds_SelectProgressKiln.Active := False ;
    cds_SelectProgressKiln.ParamByName('ClientNo').AsInteger  := mtUserPropOwnerNo.AsInteger ;
    cds_SelectProgressKiln.Active := True ;
   End;



  mtUserProp.Edit ;
  mtUserPropNewItemRow.AsInteger    := -1 ;
  mtUserPropRunNo.AsInteger         := 0 ;
  mtUserPropKilnChargeNo.AsInteger  := mtUserPropAgentNo.AsInteger ;
  if mtUserPropCopyPcs.AsInteger < 50 then
   mtUserPropCopyPcs.AsInteger  := 50 ;
  mtUserProp.Post ;


  if mtUserPropRoleType.AsInteger = cInternal_Mill then
  Begin
 //  lcOWNER.Enabled     := False ;
//   lcOWNER.Enabled  := False ;
//   lcPIPNAME.Enabled:= True ;
  End ;

  if mtUserPropRoleType.AsInteger = cLego then
  Begin
   lcOWNER.Enabled     := False ;
//   lcOWNER.Enabled  := False ;
//   lcPIPNAME.Enabled:= False ;
  End ;  


  if mtUserPropAutoColWidth.AsInteger = 0 then
  Begin
   cxGrid1DBBandedTableView1.OptionsView.ColumnAutoWidth:= False ;
  End
   else
   Begin
    cxGrid1DBBandedTableView1.OptionsView.ColumnAutoWidth:= True ;
   End ;






 (*
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

 End ;            *)


 {
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

  }

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;



procedure TfkilnHandling.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree ;
end;

procedure TfkilnHandling.FormCreate(Sender: TObject);
begin
// if not Assigned(dmInventory) then
//  dmInventory:= TdmInventory.Create(Nil);


//LARS Kolla upp det här peLengthFormat.ItemIndex:= 0 ;
// OLD_peLengthFormat:= peLengthFormat.ItemIndex ;



 SelectedVagnNo := -1 ;

end;

procedure TfkilnHandling.FormDestroy(Sender: TObject);
begin
// if Assigned(dmInventory) then
// FreeAndNil(dmInventory);

 fkilnHandling  := NIL ;
end;


procedure TfkilnHandling.FormKeyPress(Sender: TObject; var Key: Char);
begin
// if Sender is TcxMemo then
 {if dmsSystem.MemoInAction then
 exit
 else
 if Key = #13 then
  begin
   Key := #0;
   Perform(Wm_NextDlgCtl,0,0);
  end; }
end;

procedure TfkilnHandling.FormShow(Sender: TObject);
begin
  ReportInProgress  := False ;
 With dmInventory do
 Begin
  cds_KilnVagnar.Active := False ;
  cds_KilnVagnar.Active := True ;
 End;

  dmsSystem.LoadGridLayout_Special(ThisUser.UserID, Self.Name + '/' + cxGrid1DBBandedTableView1.Name, cxGrid1DBBandedTableView1.Name,
  cxGrid1DBBandedTableView1,'STD') ;

  dmsSystem.GetPkgPos (ThisUser.CompanyNo) ;

end;


//Move vagn tillbaka till i Tork
procedure TfkilnHandling.acCancelMoveFromKilnExecute(Sender: TObject);
Var VagnNo, MoveToLIPNo, NewVagnStatus : Integer ;
begin
 if MessageDlg('Sista vagnen inmatad till efter tork flyttas tillbaka till i tork(om det finns plats i torken), fortsätta?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
   With dmInventory do
   Begin
    if IsFreeSpaceInKiln(mtUserPropKilnChargeNo.AsInteger) then
    Begin
      KilnChargeNo  := mtUserPropKilnChargeNo.AsInteger ;
      Open_cds_KilnChargeHdr ;
      MoveToLIPNo   := cds_KilnChargeHdrKiln_LIPNo.AsInteger ;  //Flytta tillbaka vagn till "i Tork"
      VagnNo        := GetFirstVagnNoPerVagnStatus(mtUserPropKilnChargeNo.AsInteger, 2) ;
      NewVagnStatus := 1 ; //1 = i Tork
      if (KilnChargeNo > 0) and (VagnNo > -1) and (MoveToLIPNo > 0) then
      Begin
       FlyttaVagn(mtUserPropKilnChargeNo.AsInteger, VagnNo, MoveToLIPNo, NewVagnStatus) ;
      End
        else
         ShowMessage('KilnChargeNo = ' + inttostr(KilnChargeNo) + ' VagnNo = ' + inttostr(VagnNo) + ' MoveToLIPNo = ' + inttostr(MoveToLIPNo)) ;
    End
     else
      ShowMessage('Torken är full, det finns inte plats för mera vagnar.') ;
   End; //With
  acPkgTypeTableExecute(Sender) ;
 End;
end;

procedure TfkilnHandling.acCancelMoveVagnIntoKilnExecute(Sender: TObject);
Var VagnNo, MoveToLIPNo, NewVagnStatus : Integer ;
begin
 if MessageDlg('Sista vagnen inmatad till tork flyttas tillbaka till "In till tork", fortsätta?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
   With dmInventory do
   Begin
    KilnChargeNo  := mtUserPropKilnChargeNo.AsInteger ;
    Open_cds_KilnChargeHdr ;
    //Flytta tillbaka paket till lager före tork
    MoveToLIPNo   := cds_KilnChargeHdrBeforeKiln_LIPNo.AsInteger ;
    VagnNo        := GetFirstVagnNoPerVagnStatus(mtUserPropKilnChargeNo.AsInteger, 1) ;
    NewVagnStatus := 0 ; //0 = före Tork
    if (KilnChargeNo > 0) and (VagnNo > -1) and (MoveToLIPNo > 0) then
    Begin
     FlyttaVagn(mtUserPropKilnChargeNo.AsInteger, VagnNo, MoveToLIPNo, NewVagnStatus) ;
     //Om antal vagnar i tork nu är större än vad som ryms i torken så måste en vagn flyttas ut
    End
      else
       ShowMessage('Problem: KilnChargeNo = ' + inttostr(KilnChargeNo) + ' VagnNo = ' + inttostr(VagnNo) + ' MoveToLIPNo = ' + inttostr(MoveToLIPNo)) ;
   End;
  acPkgTypeTableExecute(Sender) ;
 End;
end;

procedure TfkilnHandling.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfkilnHandling.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
// dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + cxGrid1.Name, cxGrid1DBBandedTableView1) ;

// dmsSystem.StoreGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsName.AsString + '/' + cds_PropsForm.AsString, cxGrid1DBBandedTableView1, 'frmInventoryReport') ;

// dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgNoTbl.Name, grdPkgNoTblDBBandedTableView1) ;

 mtUserProp.Edit ;
 if cbColAutoWidth.Checked then
  mtUserPropAutoColWidth.AsInteger:= 1
   else
    mtUserPropAutoColWidth.AsInteger:= 0 ;



 mtUserPropAgentNo.AsInteger:=  mtUserPropKilnChargeNo.AsInteger ;

 mtUserProp.Post ;

 dm_UserProps.SaveUserProps (Self.Name, mtUserProp) ;

 CanClose := True ;
end;

procedure TfkilnHandling.SetGridParamsAfterOpenLayout ;
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
procedure TfkilnHandling.SetKolumnNameAndHideNonUsedKolumns (Sender: TObject);
Var x, y,
    TotalWidth  : Integer ;
    AItem       : TcxDataSummaryItem;
    OldFilter   : String ;
Begin
 With dmInventory do
 Begin
  For x := 1 to 45 do
  Begin
 //   cxGrid1DBBandedTableView1.Columns[x].Caption := inttostr(x) ;
  End ;

  y := 1 ;
  OldFilter               := cds_KilnVagnar.Filter ;
  cds_KilnVagnar.Filter   := 'RowNo = 91' ;
  cds_KilnVagnar.Filtered := True ;
  Try

  For Y := 1 to 45 do
  Begin
   cxGrid1DBBandedTableView1.Columns[y+1].Visible := True ;
  End;


  For Y := 1 to 45 do // cds_KilnVagnar.FieldCount - 1 do
  Begin
   if cds_KilnVagnar.FieldByName('L' + inttostr(Y)).AsString = '3' then
   Begin
     cxGrid1DBBandedTableView1.Columns[y+1].Visible := False ;
  //   cxGrid1DBBandedTableView1.Columns[y+1].Width   := seColWidth.Value ;
   End;
  End;

  TotalWidth := 0 ;

  For Y := 1 to 45 do // cds_KilnVagnar.FieldCount - 1 do
  Begin
 //  if cds_KilnVagnar.FieldByName('L' + inttostr(Y)).AsString = '3' then
 //  Begin
     if cxGrid1DBBandedTableView1.Columns[y].Visible then
     Begin
      cxGrid1DBBandedTableView1.Columns[y].Width  := seColWidth.Value ;
      TotalWidth := TotalWidth +  cxGrid1DBBandedTableView1.Columns[y].Width ;
     End;
 //  End;
  End;

  cxGrid1DBBandedTableView1.Bands[1].Width  :=  TotalWidth ;


  Finally
   cds_KilnVagnar.Filter    := OldFilter ;
  //  cds_KilnVagnar.Filtered := False ;
  End;


//Sätt övriga kolumner till osynliga
//  For y := x to 64 do //Kolumn 65 är en numera en summering av antal paket
//  cxGrid1DBBandedTableView1.Columns[y].Visible:= False ;

 End ;//with
End ;



procedure TfkilnHandling.grdPkgTblDBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;

procedure TfkilnHandling.SelectedPkgsOfPkgTbl_V2 ;
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


procedure TfkilnHandling.acPkgInfoExecute(Sender: TObject);
var frmPkgInfo: TfrmPkgInfo;
begin
 With dmInventory do
 Begin
  frmPkgInfo:= TfrmPkgInfo.Create(Nil);
  Try
   if ClickedF10 = False then
   Begin
    frmPkgInfo.PackageNo    := 1 ;
    frmPkgInfo.SupplierCode := '' ;
   End ;
   frmPkgInfo.ShowModal ;
  Finally
   FreeAndNil(frmPkgInfo) ;
  End ;
 End ;
end;

procedure TfkilnHandling.acEditVagnExecute(Sender: TObject);
var
  fEnterKilnVagn: TfEnterKilnVagn;
begin
 With dmInventory do
 Begin
   if SelectedVagnNo > -1 then
   Begin
    if IsVagnStatus0(SelectedVagnNo, mtUserPropKilnChargeNo.AsInteger) then
    Begin
     if mtUserPropKilnChargeNo.AsInteger > 0 then
     Begin
      fEnterKilnVagn  := TfEnterKilnVagn.Create(nil);
      Try
        dmInventory.EditVagn(mtUserPropKilnChargeNo.AsInteger, SelectedVagnNo) ;
        fEnterKilnVagn.ShowModal ;
        SelectedVagnNo := -1 ;
        acPkgTypeTableExecute(Sender) ;
      Finally
       FreeAndNil(fEnterKilnVagn) ;
      End;
     End;//if..
    End //if..
     else
      ShowMessage('Endast vagnar "In till tork" kan ändras.') ;
   End
    else
     ShowMessage('Välj en vagn att ändra.') ;
 End;
end;

procedure TfkilnHandling.acEditVagnUpdate(Sender: TObject);
begin
 acEditVagn.Enabled  := (mtUserProp.Active) and (mtUserProp.RecordCount > 0)
 and (mtUserPropKilnChargeNo.AsInteger > 0) and (SelectedVagnNo > -1) ;
end;

//Sortiment
procedure TfkilnHandling.acPkgTypeTableExecute(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 if mtUserPropKilnChargeNo.AsInteger > 0 then
 Begin
   if ReportInProgress then  Exit ;

   SelectedVagnNo := -1 ;
   cxLabelVagn.Caption      := 'Markerad vagn: ' + inttostr(SelectedVagnNo) ;

//   if mtUserProp.State in [dsEdit, dsInsert] then
//   mtUserProp.Post ;

   ClickedF10 := True ;

   With dmInventory do
   Begin
    Save_Cursor       := Screen.Cursor;
    Screen.Cursor     := crHourGlass;    { Show hourglass cursor }
    ReportInProgress  := True ;
    acPkgTypeTable.Enabled  := not ReportInProgress ;

    cds_KilnVagnar.Active  := False ;

    cds_KilnVagnar.DisableControls ;
  //  cxGrid1DBBandedTableView1.BeginUpdate ;

    cxGrid1DBBandedTableView1.DataController.KeyFieldNames    := 'RowNo' ;
  //  cxGrid1DBBandedTableView1.DataController.KeyFieldNames  := 'ProductNo;PackageTypeNo' ;
  //  cxGrid1DBBandedTableView1.Bands[0].Visible                := False ;
    cxGrid1DBBandedTableView1.Bands[0].FixedKind              := fkLeft ;

    Try
     cds_KilnVagnar.Active  := False ;
     pcInventory.ActivePage := tsTABELL ;


      cds_KilnVagnar.Active:= False ;
      GenKilnVagnarSQL(Sender) ;

      cds_KilnVagnar.Filter     := 'RowNo < 92' ;
      cds_KilnVagnar.Filtered   := True ;

      cds_KilnVagnar.Active:= True ;



     if cds_KilnVagnar.Active then
     Begin
      SetKolumnNameAndHideNonUsedKolumns(Sender) ;
  //    cxGrid1DBBandedTableView1.Columns[65].Visible  := True ;
  //    cxGrid1DBBandedTableView1.Columns[65].Caption   := 'ÖVRIGA' ;
     End ;

    cxGrid1DBBandedTableView1RowNo.Visible  := False ;

    Finally
  //   cxGrid1DBBandedTableView1.EndUpdate ;
     cds_KilnVagnar.EnableControls ;
  //   cxGrid1DBBandedTableView1.Bands[2].ApplyBestFit ;
     ReportInProgress   := False ;
     Screen.Cursor      := Save_Cursor ;
    End ;
   End ;
 End ;
end;

procedure TfkilnHandling.acPkgTypeTableUpdate(Sender: TObject);
begin
  acPkgTypeTable.Enabled  := (not ReportInProgress)
  and  (mtUserProp.Active) and (mtUserProp.RecordCount > 0)
 and (mtUserPropKilnChargeNo.AsInteger > 0) ;
end;



procedure TfkilnHandling.acSavePropsExecute(Sender: TObject);
begin
 dmsSystem.StoreGridLayout_Special(ThisUser.UserID, Self.Name + '/' + cxGrid1DBBandedTableView1.Name, cxGrid1DBBandedTableView1.Name,
 cxGrid1DBBandedTableView1,'STD') ;
end;

procedure TfkilnHandling.cbColAutoWidthPropertiesChange(Sender: TObject);
begin
 cxGrid1DBBandedTableView1.OptionsView.ColumnAutoWidth := cbColAutoWidth.Checked ;
end;

procedure TfkilnHandling.GenKilnVagnarSQL(Sender: TObject);
Var Save_Cursor   : TCursor;
    AntalStatus_0_Vagnar,
    AntalStatus_2_Vagnar,
    AntalStatus_1_Vagnar,
    KilnNo, VagnNo, MinVagnNo,
   // SistaVagnNo,
    x, y          : Integer ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
   KilnNo         := 1 ;
   VagnNo         := 1 ;
   MinVagnNo      := 0 ;

   MakeVagnSQL(mtUserPropKilnChargeNo.AsInteger) ;

   AntalStatus_0_Vagnar := Get_AntalVagnarPerStatus (mtUserPropKilnChargeNo.AsInteger, 0) ;

   AntalStatus_2_Vagnar := Get_AntalVagnarPerStatus (mtUserPropKilnChargeNo.AsInteger, 2) ;

   if AntalStatus_2_Vagnar > 2 then
    AntalStatus_2_Vagnar  := 2 ;

   AntalStatus_1_Vagnar   := Get_AntalVagnarPerStatus (mtUserPropKilnChargeNo.AsInteger, 1) ;// GetAntalVagnar(KilnNo) ;

//   TotaltAntalVagnar      := AntalStatus_0_Vagnar + AntalStatus_2_Vagnar + AntalStatus_1_Vagnar ;
                        // (3 + 2 + 18 = 23)
 //  SistaVagnNo            := GetSistaVagnNo(KilnNo) ;

   if AntalStatus_1_Vagnar = -1 then
   Begin
     ShowMessage('Antal vagnar för vald tork saknas') ;
     Exit ;
   End;


    cds_KilnVagnar.Active := False ;
    cds_KilnVagnar.SQL.Clear ;

    cds_KilnVagnar.SQL.Add('Select distinct ' + QuotedStr('Radnr') + ' + CAST(kcr.RowNo AS Varchar(2)) AS Rad, kcr.RowNo') ;


    cds_Vagnar.Active := False ;
    cds_Vagnar.ParamByName('KilnChargeNo').AsInteger  := mtUserPropKilnChargeNo.AsInteger ;
    cds_Vagnar.Active := True ;
    cds_Vagnar.First ;
    while not cds_Vagnar.Eof do
    Begin
      if (MinVagnNo = 0) OR (cds_VagnarVagnNo.AsInteger < MinVagnNo) then
       MinVagnNo  := cds_VagnarVagnNo.AsInteger ;
      cds_KilnVagnar.SQL.Add(',CAST(Max(CASE WHEN kcr.VagnNo = ' + cds_VagnarVagnNo.AsString + ' THEN Cast(kcr.PackageNo AS Varchar(7))+ '
      + QuotedStr('- ') + ' + CAST(gr.GradeName AS Varchar(5)) + '
      + QuotedStr('- ') + ' + Cast(pg.ActualThicknessMM AS Varchar(7))+ '
      + QuotedStr(' x') + ' + Cast(pg.ActualWidthMM AS Varchar(7))+ ' + QuotedStr(' x')
      + ' + Cast(ML.MaxLength AS Varchar(7)) ELSE ' + QuotedStr('') + '  END) AS VARCHAR(36)) AS L' + inttostr(VagnNo))  ;
      cds_Vagnar.Next ;
      VagnNo  := succ(VagnNo) ;
    End;

    cds_Vagnar.Active := False ;

  //Lägg till resten av kolumnerna...
    For y := VagnNo to 45 do
    Begin
     cds_KilnVagnar.SQL.Add(',CAST('  + QuotedStr('') + ' AS VARCHAR(15)) AS L' + inttostr(y)) ;
    End;

    cds_KilnVagnar.SQL.Add('FROM dbo.KilnChargeHdr KCH') ;

    cds_KilnVagnar.SQL.Add('Inner join dbo.Kilns K on K.KilnNo = KCH.KilnNo') ;
    cds_KilnVagnar.SQL.Add('Inner join dbo.KilnChargeRows kcr on kcr.KilnChargeNo = KCH.KilnChargeNo') ;
    cds_KilnVagnar.SQL.Add('inner JOIN dbo.PackageNumber pn ON pn.PackageNo = kcr.packageno') ;
    cds_KilnVagnar.SQL.Add('and pn.SupplierCode = kcr.SupplierCode') ;

    cds_KilnVagnar.SQL.Add('inner join dbo.KilnVagn KV on KV.KilnChargeNo = KCH.KilnChargeNo') ;
    cds_KilnVagnar.SQL.Add('and kv.VagnNo = kcr.VagnNo') ;

    cds_KilnVagnar.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
    cds_KilnVagnar.SQL.Add('inner join [dbo].[visv_GetMaxLength] ML on ML.PackageTypeNo = pn.PackageTypeNo') ;


    cds_KilnVagnar.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
    cds_KilnVagnar.SQL.Add('Inner Join dbo.Grade gr ON gr.GradeNo = pd.GradeNo') ;

    cds_KilnVagnar.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;


    cds_KilnVagnar.SQL.Add('WHERE') ;
    cds_KilnVagnar.SQL.Add('KCH.KilnChargeNo = ' + mtUserPropKilnChargeNo.AsString + ' and  KV.VagnNo >=  ' + inttostr(MinVagnNo)) ;

    cds_KilnVagnar.SQL.Add('GROUP BY kcr.RowNo') ;




    cds_KilnVagnar.SQL.Add('UNION') ;

  //  SistaVagnNo         := GetSistaVagnNo(KilnNo) ;
    VagnNo              := 1 ;


    cds_KilnVagnar.SQL.Add('Select distinct ' + QuotedStr('STATUS') + ',  91 AS RowNo') ;

    cds_Vagnar.Active := False ;
    cds_Vagnar.ParamByName('KilnChargeNo').AsInteger  := mtUserPropKilnChargeNo.AsInteger ;
    cds_Vagnar.Active := True ;
    cds_Vagnar.First ;
    while not cds_Vagnar.Eof do
    Begin
      cds_KilnVagnar.SQL.Add(',CAST(Max(CASE WHEN kcr.VagnNo = ' + cds_VagnarVagnNo.AsString + ' THEN Cast(KV.VagnStatus AS char(1)) '
      + '  END) AS VARCHAR(1)) AS L' + inttostr(VagnNo))  ;
      cds_Vagnar.Next ;
      VagnNo  := succ(VagnNo) ;
    End;

    cds_Vagnar.Active := False ;

  //Lägg till resten av kolumnerna...
    For y := VagnNo to 45 do
    Begin
     cds_KilnVagnar.SQL.Add(',CAST('  + QuotedStr('3') + ' AS VARCHAR(1)) AS L' + inttostr(y)) ;
    End;


    cds_KilnVagnar.SQL.Add('FROM dbo.KilnChargeHdr KCH') ;

    cds_KilnVagnar.SQL.Add('Inner join dbo.Kilns K on K.KilnNo = KCH.KilnNo') ;
    cds_KilnVagnar.SQL.Add('Inner join dbo.KilnChargeRows kcr on kcr.KilnChargeNo = KCH.KilnChargeNo') ;
    cds_KilnVagnar.SQL.Add('inner JOIN dbo.PackageNumber pn ON pn.PackageNo = kcr.packageno') ;
    cds_KilnVagnar.SQL.Add('and pn.SupplierCode = kcr.SupplierCode') ;

    cds_KilnVagnar.SQL.Add('inner join dbo.KilnVagn KV on KV.KilnChargeNo = KCH.KilnChargeNo') ;
    cds_KilnVagnar.SQL.Add('and kv.VagnNo = kcr.VagnNo') ;

    cds_KilnVagnar.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
    cds_KilnVagnar.SQL.Add('inner join [dbo].[visv_GetMaxLength] ML on ML.PackageTypeNo = pn.PackageTypeNo') ;


    cds_KilnVagnar.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

    cds_KilnVagnar.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;


    cds_KilnVagnar.SQL.Add('WHERE') ;
    cds_KilnVagnar.SQL.Add('KCH.KilnChargeNo = ' + mtUserPropKilnChargeNo.AsString) ;

    cds_KilnVagnar.SQL.Add('UNION') ;
  //  SistaVagnNo         := GetSistaVagnNo(KilnNo) ;
    VagnNo              := 1 ;
    cds_KilnVagnar.SQL.Add('Select distinct ' + QuotedStr('Indatum') + ',  90 AS RowNo') ;

    cds_Vagnar.Active := False ;
    cds_Vagnar.ParamByName('KilnChargeNo').AsInteger  := mtUserPropKilnChargeNo.AsInteger ;
    cds_Vagnar.Active := True ;
    cds_Vagnar.First ;
    while not cds_Vagnar.Eof do
    Begin
      cds_KilnVagnar.SQL.Add(',CAST(Max(CASE WHEN kcr.VagnNo = ' + cds_VagnarVagnNo.AsString + ' THEN Cast(KV.InDate AS char(19)) '
      + '  END) AS VARCHAR(19)) AS L' + inttostr(VagnNo))  ;
      cds_Vagnar.Next ;
      VagnNo  := succ(VagnNo) ;
    End;

    cds_Vagnar.Active := False ;

  //Lägg till resten av kolumnerna...
    For y := VagnNo to 45 do
    Begin
     cds_KilnVagnar.SQL.Add(',CAST('  + QuotedStr('3') + ' AS VARCHAR(6)) AS L' + inttostr(y)) ;
    End;

    cds_KilnVagnar.SQL.Add('FROM dbo.KilnChargeHdr KCH') ;
    cds_KilnVagnar.SQL.Add('Inner join dbo.Kilns K on K.KilnNo = KCH.KilnNo') ;
    cds_KilnVagnar.SQL.Add('Inner join dbo.KilnChargeRows kcr on kcr.KilnChargeNo = KCH.KilnChargeNo') ;
    cds_KilnVagnar.SQL.Add('inner JOIN dbo.PackageNumber pn ON pn.PackageNo = kcr.packageno') ;
    cds_KilnVagnar.SQL.Add('and pn.SupplierCode = kcr.SupplierCode') ;
    cds_KilnVagnar.SQL.Add('inner join dbo.KilnVagn KV on KV.KilnChargeNo = KCH.KilnChargeNo') ;
    cds_KilnVagnar.SQL.Add('and kv.VagnNo = kcr.VagnNo') ;
    cds_KilnVagnar.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
    cds_KilnVagnar.SQL.Add('inner join [dbo].[visv_GetMaxLength] ML on ML.PackageTypeNo = pn.PackageTypeNo') ;
    cds_KilnVagnar.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
    cds_KilnVagnar.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
    cds_KilnVagnar.SQL.Add('WHERE') ;
    cds_KilnVagnar.SQL.Add('KCH.KilnChargeNo = ' + mtUserPropKilnChargeNo.AsString) ;


    cds_KilnVagnar.SQL.Add('UNION') ;
 //   SistaVagnNo         := GetSistaVagnNo(KilnNo) ;
    VagnNo              := 1 ;
    cds_KilnVagnar.SQL.Add('Select distinct ' + QuotedStr('VagnID') + ',  92 AS RowNo') ;

    cds_Vagnar.Active := False ;
    cds_Vagnar.ParamByName('KilnChargeNo').AsInteger  := mtUserPropKilnChargeNo.AsInteger ;
    cds_Vagnar.Active := True ;
    cds_Vagnar.First ;
    while not cds_Vagnar.Eof do
    Begin
      cds_KilnVagnar.SQL.Add(',CAST(Max(CASE WHEN kcr.VagnNo = ' + cds_VagnarVagnNo.AsString + ' THEN Cast(KV.VagnNo AS char(6)) '
      + '  END) AS VARCHAR(6)) AS L' + inttostr(VagnNo))  ;
      cds_Vagnar.Next ;
      VagnNo  := succ(VagnNo) ;
    End;

    cds_Vagnar.Active := False ;

  //Lägg till resten av kolumnerna...
    For y := VagnNo to 45 do
    Begin
     cds_KilnVagnar.SQL.Add(',CAST('  + QuotedStr('3') + ' AS VARCHAR(6)) AS L' + inttostr(y)) ;
    End;

    cds_KilnVagnar.SQL.Add('FROM dbo.KilnChargeHdr KCH') ;
    cds_KilnVagnar.SQL.Add('Inner join dbo.Kilns K on K.KilnNo = KCH.KilnNo') ;
    cds_KilnVagnar.SQL.Add('Inner join dbo.KilnChargeRows kcr on kcr.KilnChargeNo = KCH.KilnChargeNo') ;
    cds_KilnVagnar.SQL.Add('inner JOIN dbo.PackageNumber pn ON pn.PackageNo = kcr.packageno') ;
    cds_KilnVagnar.SQL.Add('and pn.SupplierCode = kcr.SupplierCode') ;
    cds_KilnVagnar.SQL.Add('inner join dbo.KilnVagn KV on KV.KilnChargeNo = KCH.KilnChargeNo') ;
    cds_KilnVagnar.SQL.Add('and kv.VagnNo = kcr.VagnNo') ;
    cds_KilnVagnar.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
    cds_KilnVagnar.SQL.Add('inner join [dbo].[visv_GetMaxLength] ML on ML.PackageTypeNo = pn.PackageTypeNo') ;
    cds_KilnVagnar.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
    cds_KilnVagnar.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
    cds_KilnVagnar.SQL.Add('WHERE') ;
    cds_KilnVagnar.SQL.Add('KCH.KilnChargeNo = ' + mtUserPropKilnChargeNo.AsString) ;





//  if thisuser.UserID = 8 then cds_KilnVagnar.SQL.SaveToFile('cds_KilnVagnar.txt');
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;




procedure TfkilnHandling.mtLayoutAfterInsert(DataSet: TDataSet);
begin
 mtLayoutNoOfCopies.AsInteger := 1 ;
end;

procedure TfkilnHandling.mtUserPropAfterInsert(DataSet: TDataSet);
begin
 mtUserPropRegDate.AsDateTime           := Now ;
// mtUserPropProductGroupNo.AsInteger     := -1 ;
 mtUserPropProductNo.AsInteger          := -1 ;
 mtUserPropProductDescription.AsString  := 'Ingen ändring' ;
 mtUserPropLIPChange.AsInteger          := 0 ;
 mtUserPropVerkNo.AsInteger             := 0 ;
end;

procedure TfkilnHandling.mtUserPropKilnChargeNoChange(Sender: TField);
begin
 acPkgTypeTableExecute(Sender) ;
end;

procedure TfkilnHandling.mtUserPropOwnerNoChange(Sender: TField);
begin
  with dmInventory do
   Begin
    cds_SelectProgressKiln.Active := False ;
    cds_SelectProgressKiln.ParamByName('ClientNo').AsInteger  := mtUserPropOwnerNo.AsInteger ;
    cds_SelectProgressKiln.Active := True ;
   End;
end;

procedure TfkilnHandling.grdPkgNoTblDBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;

procedure TfkilnHandling.acAddVagnExecute(Sender: TObject);
var
  fEnterKilnVagn: TfEnterKilnVagn;
begin
 if mtUserPropKilnChargeNo.AsInteger > 0 then
 Begin
  fEnterKilnVagn  := TfEnterKilnVagn.Create(nil);
  Try
    dmInventory.AddVagn(mtUserPropKilnChargeNo.AsInteger) ;
    fEnterKilnVagn.ShowModal ;
    if dmInventory.VagnarBeforeKiln_Larger_Then_MaxVagnarBefore(mtUserPropKilnChargeNo.AsInteger) then
     acMoveVagnIntoKilnExecute(Sender) ;
    acPkgTypeTableExecute(Sender) ;
  Finally
   FreeAndNil(fEnterKilnVagn) ;
  End;
 End;//if..
end;

procedure TfkilnHandling.acAddVagnUpdate(Sender: TObject);
begin
 acAddVagn.Enabled  := (mtUserProp.Active) and (mtUserProp.RecordCount > 0)
 and (mtUserPropKilnChargeNo.AsInteger > 0) ;
end;

procedure TfkilnHandling.acMoveFromKilnExecute(Sender: TObject);
Var VagnNo, MoveToLIPNo, NewVagnStatus : Integer ;
begin
 if MessageDlg('En vagn stegas ut ur torken till lager efter tork, fortsätta?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
   With dmInventory do
   Begin
    KilnChargeNo  := mtUserPropKilnChargeNo.AsInteger ;
    Open_cds_KilnChargeHdr ;
    MoveToLIPNo   := cds_KilnChargeHdrAfterKiln_LIPNo.AsInteger ;
    VagnNo        := GetLastVagnNoPerVagnStatus(mtUserPropKilnChargeNo.AsInteger, 1) ;
    NewVagnStatus := 2 ; //2 = efter Tork
    if (KilnChargeNo > 0) and (VagnNo > -1) and (MoveToLIPNo > 0) then
    Begin
     FlyttaVagn(mtUserPropKilnChargeNo.AsInteger, VagnNo, MoveToLIPNo, NewVagnStatus) ;
    End
      else
       ShowMessage('KilnChargeNo = ' + inttostr(KilnChargeNo) + ' VagnNo = ' + inttostr(VagnNo) + ' MoveToLIPNo = ' + inttostr(MoveToLIPNo)) ;
   End;
  acPkgTypeTableExecute(Sender) ;
 End;
end;

procedure TfkilnHandling.acMoveFromKilnUpdate(Sender: TObject);
begin
 acMoveFromKiln.Enabled  := (mtUserProp.Active) and (mtUserProp.RecordCount > 0)
 and (mtUserPropKilnChargeNo.AsInteger > 0) ;
end;

procedure TfkilnHandling.cxButton9Click(Sender: TObject);
begin
 Close ;
end;

procedure TfkilnHandling.cxGrid1DBBandedTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
Var OldFilter : String ;
begin
{ if pcPktNrAndTorkSats.ActivePage <> tsTorkSats then
 Begin
  if RightButton then
  Begin
   pmPkgTable.PopupFromCursorPos ;
   Exit ;
  End ; }

  With dmInventory do
  Begin
   OldFilter                := cds_KilnVagnar.Filter ;
   SelectedLength           := ACellViewInfo.Item.Caption ;
   cds_KilnVagnar.Filter    := 'RowNo = 92' ;
   cds_KilnVagnar.Filtered  := True ;
   Try
   SelectedVagnNo           := StrToIntDef(Trim(cds_KilnVagnar.FieldByName(Trim(SelectedLength)).AsString),-1) ;
   cxLabelVagn.Caption      := 'Markerad vagn: ' + inttostr(SelectedVagnNo) ;
   Finally
    cds_KilnVagnar.Filter    := OldFilter ;
   // cds_KilnVagnar.Filtered  := False ;
   End ;
  End ;

 AHandled:= True ;


// if RightButton then
// pmPkgTable.PopupFromCursorPos ;
end;

procedure TfkilnHandling.cxGrid1DBBandedTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
  Var AFieldName : String ;
  OldFilter  : String ;
begin
  if FColumn <> nil then
    FColumn.Styles.Header := nil;
  Sender.OptionsBehavior.IncSearchItem := AColumn;
  AColumn.Styles.Header := cxStyleRed ;
  FColumn := AColumn;

  AFieldName := TcxGridDBColumn(AColumn).DataBinding.FieldName;

  With dmInventory do
  Begin
   OldFilter                := cds_KilnVagnar.Filter ;
   SelectedLength           := AFieldName ;
   cds_KilnVagnar.Filter    := 'RowNo = 92' ;
   cds_KilnVagnar.Filtered  := True ;
   Try
   SelectedVagnNo           := StrToIntDef(Trim(cds_KilnVagnar.FieldByName(Trim(SelectedLength)).AsString),-1) ;
   cxLabelVagn.Caption      := 'Markerad vagn: ' + inttostr(SelectedVagnNo) ;
   Finally
    cds_KilnVagnar.Filter   := OldFilter ;
   // cds_KilnVagnar.Filtered  := False ;
   End ;
  End ;
end;

procedure TfkilnHandling.cxGrid1DBBandedTableView1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
 if Button = mbRight then
  RightButton := True
   else
    RightButton := False ;
end;

procedure TfkilnHandling.cxGrid1DBBandedTableView1InitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
begin
// AEdit.OnDblClick := grdPkgTblDBBandedTableView1DblClick ;
end;

procedure TfkilnHandling.acMoveVagnIntoKilnExecute(Sender: TObject);
Var VagnNo, MoveToLIPNo, NewVagnStatus : Integer ;
begin
// if MessageDlg('En vagn stegas in i torken och en vagn stegas ut ur torken(om antal vagnar i torken överstiger torkens kapacitet), fortsätta?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
// Begin
   With dmInventory do
   Begin
    KilnChargeNo  := mtUserPropKilnChargeNo.AsInteger ;
    Open_cds_KilnChargeHdr ;
    MoveToLIPNo   := cds_KilnChargeHdrKiln_LIPNo.AsInteger ;
    VagnNo        := GetLastVagnNoPerVagnStatus(mtUserPropKilnChargeNo.AsInteger, 0) ;
    NewVagnStatus := 1 ; //1 = i Tork
    if (KilnChargeNo > 0) and (VagnNo > -1) and (MoveToLIPNo > 0) then
    Begin
     FlyttaVagn(mtUserPropKilnChargeNo.AsInteger, VagnNo, MoveToLIPNo, NewVagnStatus) ;
     //Om antal vagnar i tork nu är större än vad som ryms i torken så måste en vagn flyttas ut
     if IsNoOfVagnarInKilnBiggerThenMaxVagnar(mtUserPropKilnChargeNo.AsInteger) then //AntalVagnarITork > MaxVagnar then
     Begin
       MoveToLIPNo   := cds_KilnChargeHdrAfterKiln_LIPNo.AsInteger ;
       VagnNo        := GetLastVagnNoPerVagnStatus(mtUserPropKilnChargeNo.AsInteger, 1) ;
       NewVagnStatus := 2 ; //2 = efter Tork
       FlyttaVagn(mtUserPropKilnChargeNo.AsInteger, VagnNo, MoveToLIPNo, NewVagnStatus) ;
     End;
    End
      else
       ShowMessage('Problem: KilnChargeNo = ' + inttostr(KilnChargeNo) + ' VagnNo = ' + inttostr(VagnNo) + ' MoveToLIPNo = ' + inttostr(MoveToLIPNo)) ;
   End;
  acPkgTypeTableExecute(Sender) ;
// End;
end;

procedure TfkilnHandling.acMoveVagnIntoKilnUpdate(Sender: TObject);
begin
 acMoveVagnIntoKiln.Enabled  := (mtUserProp.Active) and (mtUserProp.RecordCount > 0)
 and (mtUserPropKilnChargeNo.AsInteger > 0) ;
end;

procedure TfkilnHandling.cxGrid1DBBandedTableView1V1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
 if AText = '0' then
  AText := 'In till Tork'
   else
    if AText = '1' then
     AText := 'i Tork'
      else
       if AText = '2' then
        AText := 'Efter Tork' ;
end;

procedure TfkilnHandling.cxGrid1DBBandedTableView1V1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
 // AStyle := cxStyleBeforeKiln

 if ARecord.Values[AItem.Index] = '0' then
   AStyle := cxStyleBeforeKiln
    else
     if ARecord.Values[AItem.Index] = '1' then
      AStyle := cxStyleInKiln
       else
        if ARecord.Values[AItem.Index] = '2' then
         AStyle := cxStyleAfterKiln ;


end;


procedure TfkilnHandling.sq_UserProfileAfterInsert(DataSet: TDataSet);
begin
 sq_UserProfileUserID.AsInteger := ThisUser.UserID ;
end;

End.


