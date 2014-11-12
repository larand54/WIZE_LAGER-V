unit uInvCtrl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, dxBar, ImgList, dxBarExtItems, ExtCtrls,
  StdCtrls, 
  DB, Buttons, SqlTimSt,
  Grids, DBGrids, VidaType, cxPC, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, cxMemo, 
  
  cxDBLookupComboBox, cxCheckBox, cxLookAndFeels, cxLookupEdit,
  cxDBLookupEdit, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPScxCommon, dxCntner, dxEditor, dxEdLib,
  dxDBELib, FMTBcd, SqlExpr, DBClient, Provider, dxPScxGrid6Lnk, ComCtrls,
  cxCurrencyEdit, cxCalc, cxImageComboBox, Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu ;

type
  TfInvCtrl = class(TForm)
    dxBarManager1: TdxBarManager;
    ActionList1: TActionList;
    imglistActions: TImageList;
    acExit: TAction;
    lbExit: TdxBarLargeButton;
    acNew: TAction;
    lbNew: TdxBarLargeButton;
    acSave: TAction;
    lbSpara: TdxBarLargeButton;
    acSearch: TAction;
    lbSearch: TdxBarLargeButton;
    acCancelUpdate: TAction;
    lbCancelUpdates: TdxBarLargeButton;
    dxPageControl1: TcxPageControl;
    tsSkapaKontrollistor: TcxTabSheet;
    acGenInvLists: TAction;
    lbGenInvList: TdxBarLargeButton;
    acDelete: TAction;
    lbDelete: TdxBarLargeButton;
    tsUnregisteredPackages: TcxTabSheet;
    acPrintInvListPerLG: TAction;
    acGenFinalList: TAction;
    acAvRegPkt: TAction;
    acPaRegPkt: TAction;
    acAndraPkt: TAction;
    MiddlePanel: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    PanelLagerStalle: TPanel;
    bbHamtaAlla: TBitBtn;
    bbTaBortLagerStalle: TBitBtn;
    bbAddLagerStalle: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    PanelLagerGrupp: TPanel;
    bbGetInvGroups: TBitBtn;
    bbTaBortLagerGrupp: TBitBtn;
    pAndraPaket: TPanel;
    bbAvregistreraPaket: TBitBtn;
    bbPaRegistreraPaket: TBitBtn;
    tsDeRegisteredPackages: TcxTabSheet;
    Panel6: TPanel;
    Panel7: TPanel;
    tsChangedPackages: TcxTabSheet;
    grdAvregDBTableView1: TcxGridDBTableView;
    grdAvregLevel1: TcxGridLevel;
    grdAvreg: TcxGrid;
    tsSkapaLagerListor: TcxTabSheet;
    Panel9: TPanel;
    Panel10: TPanel;
    grdAvregDBTableView1IC_GrpNo: TcxGridDBColumn;
    grdAvregDBTableView1PackageNo: TcxGridDBColumn;
    grdAvregDBTableView1SupplierCode: TcxGridDBColumn;
    grdAvregDBTableView1Operation: TcxGridDBColumn;
    grdAvregDBTableView1DateCreated: TcxGridDBColumn;
    acAvRegPkg: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    acPaRegPkg: TAction;
    bbGenFinalList: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    tsPkgsShippedBeforeMaxDate: TcxTabSheet;
    Panel11: TPanel;
    acAngraAvRegPkg: TAction;
    cbEgenSupplierCode: TCheckBox;
    cbEgenSupplierCode2: TCheckBox;
    acAngraPaRegPkg: TAction;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    grdLevPktDBTableView1: TcxGridDBTableView;
    grdLevPktLevel1: TcxGridLevel;
    grdLevPkt: TcxGrid;
    acGetPkgDelivered: TAction;
    BitBtn7: TBitBtn;
    tsInleveranser: TcxTabSheet;
    Panel12: TPanel;
    BitBtn8: TBitBtn;
    acGetInLeveranser: TAction;
    grdInLevDBTableView1: TcxGridDBTableView;
    grdInLevLevel1: TcxGridLevel;
    grdInLev: TcxGrid;
    grdInLevDBTableView1IC_GrpNo: TcxGridDBColumn;
    grdInLevDBTableView1PackageNo: TcxGridDBColumn;
    grdInLevDBTableView1SupplierCode: TcxGridDBColumn;
    grdInLevDBTableView1Operation: TcxGridDBColumn;
    grdInLevDBTableView1DateCreated: TcxGridDBColumn;
    grdLevPktDBTableView1IC_GrpNo: TcxGridDBColumn;
    grdLevPktDBTableView1PackageNo: TcxGridDBColumn;
    grdLevPktDBTableView1SupplierCode: TcxGridDBColumn;
    grdLevPktDBTableView1Operation: TcxGridDBColumn;
    grdLevPktDBTableView1DateCreated: TcxGridDBColumn;
    tsProduced: TcxTabSheet;
    Panel13: TPanel;
    BitBtn9: TBitBtn;
    acGetProduction: TAction;
    grdPrdDBTableView1: TcxGridDBTableView;
    grdPrdLevel1: TcxGridLevel;
    grdPrd: TcxGrid;
    grdPrdDBTableView1IC_GrpNo: TcxGridDBColumn;
    grdPrdDBTableView1PackageNo: TcxGridDBColumn;
    grdPrdDBTableView1SupplierCode: TcxGridDBColumn;
    grdPrdDBTableView1Operation: TcxGridDBColumn;
    grdPrdDBTableView1DateCreated: TcxGridDBColumn;
    ds_InvCtrlGrp: TDataSource;
    ds_InvCtrlMetod: TDataSource;
    Memo1: TMemo;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    acPriceList: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    tsSummaryReport: TcxTabSheet;
    Panel14: TPanel;
    BitBtn11: TBitBtn;
    acPrintSummaryReport: TAction;
    acGetNormalAvReg: TAction;
    acRemoveLagerGruppRad: TAction;
    acHamtaAllaLG: TAction;
    acRemoveLagerStalle: TAction;
    acAddLS: TAction;
    acHamtaAllaLS: TAction;
    acCreateNewPkg: TAction;
    BitBtn10: TBitBtn;
    grdAvregDBTableView1PRODUKT: TcxGridDBColumn;
    grdAvregDBTableView1ANTPERLNGD: TcxGridDBColumn;
    grdAvregDBTableView1STYCK: TcxGridDBColumn;
    grdAvregDBTableView1AM3: TcxGridDBColumn;
    grdLevPktDBTableView1PRODUKT: TcxGridDBColumn;
    grdLevPktDBTableView1ANTPERLNGD: TcxGridDBColumn;
    grdLevPktDBTableView1STYCK: TcxGridDBColumn;
    grdLevPktDBTableView1AM3: TcxGridDBColumn;
    grdInLevDBTableView1PRODUKT: TcxGridDBColumn;
    grdInLevDBTableView1ANTPERLNGD: TcxGridDBColumn;
    grdInLevDBTableView1STYCK: TcxGridDBColumn;
    grdInLevDBTableView1AM3: TcxGridDBColumn;
    grdPrdDBTableView1PRODUKT: TcxGridDBColumn;
    grdPrdDBTableView1ANTPERLNGD: TcxGridDBColumn;
    grdPrdDBTableView1STYCK: TcxGridDBColumn;
    grdPrdDBTableView1AM3: TcxGridDBColumn;
    acSparaPaRegRefresh: TAction;
    acRefreshAvRegPkg: TAction;
    Memo2: TMemo;
    grdAvregDBTableView1Lager: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    acPrintAvReg: TAction;
    dxComponentPrinter1Link1: TdxGridReportLink;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    acPrintPaReg: TAction;
    dxComponentPrinter1Link2: TdxGridReportLink;
    acPrintPriceListKontroll: TAction;
    BitBtn18: TBitBtn;
    Label12: TLabel;
    Label11: TLabel;
    grdAvregDBTableView1Sortorderno: TcxGridDBColumn;
    grdLSDBTableView1: TcxGridDBTableView;
    grdLSLevel1: TcxGridLevel;
    grdLS: TcxGrid;
    grdLSDBTableView1IC_grpno: TcxGridDBColumn;
    grdLSDBTableView1PhysicalInventoryPointNo: TcxGridDBColumn;
    grdLSDBTableView1LAGERSTALLE: TcxGridDBColumn;
    grdLSDBTableView1OwnerName: TcxGridDBColumn;
    grdLGDBTableView1: TcxGridDBTableView;
    grdLGLevel1: TcxGridLevel;
    grdLG: TcxGrid;
    grdLGDBTableView1IC_grpNo: TcxGridDBColumn;
    grdLGDBTableView1LogicalInventoryPointNo: TcxGridDBColumn;
    grdLGDBTableView1InventeringsMetod: TcxGridDBColumn;
    grdLGDBTableView1LogicalInventoryName: TcxGridDBColumn;
    grdLGDBTableView1OwnerName: TcxGridDBColumn;
    grdLGDBTableView1Metod: TcxGridDBColumn;
    grdLGDBTableView1OwnerNo: TcxGridDBColumn;
    grdLGDBTableView1PIPNo: TcxGridDBColumn;
    eNoOfPkgs: TcxTextEdit;
    cxLookAndFeelController1: TcxLookAndFeelController;
    ePkgNo: TcxTextEdit;
    BitBtn19: TBitBtn;
    acPrintInLev: TAction;
    dxComponentPrinter1Link3: TdxGridReportLink;
    BitBtn20: TBitBtn;
    acPrintUtLev: TAction;
    dxComponentPrinter1Link4: TdxGridReportLink;
    BitBtn21: TBitBtn;
    acPrintProducedPkgs: TAction;
    dxComponentPrinter1Link5: TdxGridReportLink;
    grdPaRegPkg: TcxGrid;
    grdPaRegPkgDBTableView1: TcxGridDBTableView;
    grdPaRegPkgLevel1: TcxGridLevel;
    grdPaRegPkgDBTableView1IC_GrpNo: TcxGridDBColumn;
    grdPaRegPkgDBTableView1PackageNo: TcxGridDBColumn;
    grdPaRegPkgDBTableView1SupplierCode: TcxGridDBColumn;
    grdPaRegPkgDBTableView1Operation: TcxGridDBColumn;
    grdPaRegPkgDBTableView1DateCreated: TcxGridDBColumn;
    grdPaRegPkgDBTableView1LogicalInventoryPointNo: TcxGridDBColumn;
    grdPaRegPkgDBTableView1ANTPERLNGD: TcxGridDBColumn;
    grdPaRegPkgDBTableView1PRODUKT: TcxGridDBColumn;
    grdPaRegPkgDBTableView1STYCK: TcxGridDBColumn;
    grdPaRegPkgDBTableView1AM3: TcxGridDBColumn;
    grdPaRegPkgDBTableView1Lager: TcxGridDBColumn;
    grdPaRegPkgDBTableView1Sortorderno: TcxGridDBColumn;
    tsUnRegInProduction: TcxTabSheet;
    grdChanged: TcxGrid;
    grdChangedDBTableView1: TcxGridDBTableView;
    grdChangedLevel1: TcxGridLevel;
    acAddChgPkg: TAction;
    grdChangedDBTableView1IC_GrpNo: TcxGridDBColumn;
    grdChangedDBTableView1PackageNo: TcxGridDBColumn;
    grdChangedDBTableView1SupplierCode: TcxGridDBColumn;
    grdChangedDBTableView1Operation: TcxGridDBColumn;
    grdChangedDBTableView1DateCreated: TcxGridDBColumn;
    grdChangedDBTableView1LogicalInventoryPointNo: TcxGridDBColumn;
    grdChangedDBTableView1Sortorderno: TcxGridDBColumn;
    grdChangedDBTableView1ANTPERLNGD: TcxGridDBColumn;
    grdChangedDBTableView1PRODUKT: TcxGridDBColumn;
    grdChangedDBTableView1STYCK: TcxGridDBColumn;
    grdChangedDBTableView1AM3: TcxGridDBColumn;
    grdChangedDBTableView1Lager: TcxGridDBColumn;
    acUndoChangePkg: TAction;
    acChangePkg: TAction;
    BitBtn22: TBitBtn;
    Panel1: TPanel;
    Label7: TLabel;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    grdAvRegProd: TcxGrid;
    grdAvRegProdDBTableView1: TcxGridDBTableView;
    grdAvRegProdLevel1: TcxGridLevel;
    BitBtn12: TBitBtn;
    acPrintChangedPkgs: TAction;
    dxComponentPrinter1Link6: TdxGridReportLink;
    acPrintAvRegIProduction: TAction;
    dxComponentPrinter1Link7: TdxGridReportLink;
    grdAvRegProdDBTableView1IC_GrpNo: TcxGridDBColumn;
    grdAvRegProdDBTableView1PackageNo: TcxGridDBColumn;
    grdAvRegProdDBTableView1SupplierCode: TcxGridDBColumn;
    grdAvRegProdDBTableView1Operation: TcxGridDBColumn;
    grdAvRegProdDBTableView1DateCreated: TcxGridDBColumn;
    grdAvRegProdDBTableView1ANTPERLNGD: TcxGridDBColumn;
    grdAvRegProdDBTableView1PRODUKT: TcxGridDBColumn;
    grdAvRegProdDBTableView1STYCK: TcxGridDBColumn;
    grdAvRegProdDBTableView1AM3: TcxGridDBColumn;
    cbEgenSupplierCode3: TCheckBox;
    acPrintKontrollista: TAction;
    acPrintAllLG: TAction;
    BitBtn13: TBitBtn;
    acCreateInventeringsLista_II: TAction;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    acChangePaRegPkg: TAction;
    BitBtn25: TBitBtn;
    grdAvRegProdDBTableView1Lager: TcxGridDBColumn;
    grdInLevDBTableView1Lager: TcxGridDBColumn;
    grdPrdDBTableView1Lager: TcxGridDBColumn;
    acConfirmInventering: TAction;
    cxPageControl1: TcxPageControl;
    tsInvHdr: TcxTabSheet;
    tsNote: TcxTabSheet;
    TopPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    eGrpNp: TdxDBEdit;
    deMaxDatum: TcxDBDateEdit;
    deInventeringsDatum: TcxDBDateEdit;
    leVerk: TcxDBLookupComboBox;
    lcPriceList: TcxDBLookupComboBox;
    teNamn: TcxDBTextEdit;
    mNote: TcxDBMemo;
    acGenSummary: TAction;
    BitBtn26: TBitBtn;
    pmAvReg: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    acPkgInfoAvReg: TAction;
    acPkgInfoPaReg: TAction;
    pmPaReg: TdxBarPopupMenu;
    bbPaReg: TdxBarButton;
    pmAndraPkt: TdxBarPopupMenu;
    acPkgInfoAndraPkt: TAction;
    dxBarButton3: TdxBarButton;
    pmAvRegIProd: TdxBarPopupMenu;
    acPkgInfoAvRegIProd: TAction;
    dxBarButton4: TdxBarButton;
    pmUtlev: TdxBarPopupMenu;
    acPkgInfoUtlev: TAction;
    acPkgInfoInLev: TAction;
    acPkgInfoProd: TAction;
    pmInLev: TdxBarPopupMenu;
    pmProducerat: TdxBarPopupMenu;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    acPktLoggAvReg: TAction;
    acPktLoggPaReg: TAction;
    acPktLoggAndra: TAction;
    acPktLoggAvRegIProd: TAction;
    acPktLoggUtLev: TAction;
    acPktLoggInLev: TAction;
    acPktLoggProducerat: TAction;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    BitBtn27: TBitBtn;
    acPickPkgNos: TAction;
    acPrintInvListaII: TAction;
    BitBtn28: TBitBtn;
    tsAvregBeforeInvDate: TcxTabSheet;
    Panel8: TPanel;
    Label13: TLabel;
    BitBtn29: TBitBtn;
    BitBtn30: TBitBtn;
    grdAvregBeforeInvDateDBTableView1: TcxGridDBTableView;
    grdAvregBeforeInvDateLevel1: TcxGridLevel;
    grdAvregBeforeInvDate: TcxGrid;
    grdAvregBeforeInvDateDBTableView1PackageNo: TcxGridDBColumn;
    grdAvregBeforeInvDateDBTableView1SupplierCode: TcxGridDBColumn;
    grdAvregBeforeInvDateDBTableView1Operation: TcxGridDBColumn;
    grdAvregBeforeInvDateDBTableView1ANTPERLNGD: TcxGridDBColumn;
    grdAvregBeforeInvDateDBTableView1PRODUKT: TcxGridDBColumn;
    grdAvregBeforeInvDateDBTableView1STYCK: TcxGridDBColumn;
    grdAvregBeforeInvDateDBTableView1AM3: TcxGridDBColumn;
    grdAvregBeforeInvDateDBTableView1Lager: TcxGridDBColumn;
    acAvregBeforeInvDateAndExistInKL: TAction;
    dxComponentPrinter1Link8: TdxGridReportLink;
    acPrintAvregBeforeInvDateAndExistInKL: TAction;
    acGetProductionBeforeInvDate: TAction;
    tsProductionBeforeInvDate: TcxTabSheet;
    Panel15: TPanel;
    Label14: TLabel;
    BitBtn31: TBitBtn;
    BitBtn32: TBitBtn;
    acPrintProductionBeforeInvDate: TAction;
    grdProductionBeforeInvDateDBTableView1: TcxGridDBTableView;
    grdProductionBeforeInvDateLevel1: TcxGridLevel;
    grdProductionBeforeInvDate: TcxGrid;
    grdProductionBeforeInvDateDBTableView1PackageNo: TcxGridDBColumn;
    grdProductionBeforeInvDateDBTableView1SupplierCode: TcxGridDBColumn;
    grdProductionBeforeInvDateDBTableView1ANTPERLNGD: TcxGridDBColumn;
    grdProductionBeforeInvDateDBTableView1PRODUKT: TcxGridDBColumn;
    grdProductionBeforeInvDateDBTableView1STYCK: TcxGridDBColumn;
    grdProductionBeforeInvDateDBTableView1AM3: TcxGridDBColumn;
    grdProductionBeforeInvDateDBTableView1Lager: TcxGridDBColumn;
    dxComponentPrinter1Link9: TdxGridReportLink;
    pmAvregBeforeInvDate: TdxBarPopupMenu;
    pmProductionBeforeInvDate: TdxBarPopupMenu;
    acPktLoggAvregBeforeInvDate: TAction;
    acPktLoggProductionBeforeInvDate: TAction;
    acPkgInfoSAvregBeforeInvDate: TAction;
    acPkgInfoProductionBeforeInvDate: TAction;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    acPrintInvCtrlByPkgNo: TAction;
    acPickInActivePkgsNos: TAction;
    BitBtn34: TBitBtn;
    tmrFlash: TTimer;
    grdAvRegProdDBTableView1NM3: TcxGridDBColumn;
    grdAvregDBTableView1NM3: TcxGridDBColumn;
    grdPaRegPkgDBTableView1NM3: TcxGridDBColumn;
    grdChangedDBTableView1NM3: TcxGridDBColumn;
    grdAvregBeforeInvDateDBTableView1NM3: TcxGridDBColumn;
    grdLevPktDBTableView1NM3: TcxGridDBColumn;
    grdInLevDBTableView1NM3: TcxGridDBColumn;
    grdPrdDBTableView1NM3: TcxGridDBColumn;
    grdProductionBeforeInvDateDBTableView1NM3: TcxGridDBColumn;
    icStatus: TcxDBImageComboBox;
    bbLogs: TBitBtn;
    acLoggs: TAction;
    Memo3: TMemo;
    Panel16: TPanel;
    bbGenInvLista: TBitBtn;
    BitBtn33: TBitBtn;
    grdCtrlListDBTableView1: TcxGridDBTableView;
    grdCtrlListLevel1: TcxGridLevel;
    grdCtrlList: TcxGrid;
    bbSkrivEn: TBitBtn;
    BitBtn35: TBitBtn;
    acRefreshKontrollista: TAction;
    grdCtrlListDBTableView1IC_GrpNo: TcxGridDBColumn;
    grdCtrlListDBTableView1LogicalInventoryPointNo: TcxGridDBColumn;
    grdCtrlListDBTableView1InventeringsMetod: TcxGridDBColumn;
    grdCtrlListDBTableView1PackageNo: TcxGridDBColumn;
    grdCtrlListDBTableView1Suppliercode: TcxGridDBColumn;
    grdCtrlListDBTableView1PackageTypeNo: TcxGridDBColumn;
    grdCtrlListDBTableView1NoOfPkgs: TcxGridDBColumn;
    grdCtrlListDBTableView1AntalPaketILager: TcxGridDBColumn;
    grdCtrlListDBTableView1LogicalInventoryName: TcxGridDBColumn;
    grdCtrlListDBTableView1Status: TcxGridDBColumn;
    grdCtrlListDBTableView1OwnerNo: TcxGridDBColumn;
    grdCtrlListDBTableView1ANTPERLNGD: TcxGridDBColumn;
    grdCtrlListDBTableView1PRODUKT: TcxGridDBColumn;
    grdCtrlListDBTableView1STYCK: TcxGridDBColumn;
    grdCtrlListDBTableView1AM3: TcxGridDBColumn;
    grdCtrlListDBTableView1NM3: TcxGridDBColumn;
    BitBtn36: TBitBtn;
    acRemovePackageFromCtrlList: TAction;
    acPrintCtrlListWysiwyg: TAction;
    dxComponentPrinter1Link10: TdxGridReportLink;
    BitBtn37: TBitBtn;
    acExpandAllCtrlList: TAction;
    BitBtn38: TBitBtn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_1_Lager: TcxStyle;
    cxStyle_2_PrelLOLast: TcxStyle;
    cxStyle_3_PrelAvropLast: TcxStyle;
    cxStyle_4_NotInvoiced: TcxStyle;
    pmCtrlList: TdxBarPopupMenu;
    acPkgInfoCtrlList: TAction;
    acPkgStatusInInventering: TAction;
    PopupMenu1: TPopupMenu;
    NyF21: TMenuItem;
    SparaF31: TMenuItem;
    ngraF41: TMenuItem;
    abortF51: TMenuItem;
    Stng1: TMenuItem;
    ppnaF91: TMenuItem;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    dxBarDockControl3: TdxBarDockControl;
    Panel20: TPanel;
    teSearchPackageNo: TcxTextEdit;
    cxLabel1: TcxLabel;
    grdCtrlListDBTableView1Klla: TcxGridDBColumn;
    grdResultatDBTableView1: TcxGridDBTableView;
    grdResultatLevel1: TcxGridLevel;
    grdResultat: TcxGrid;
    acRefreshResultList: TAction;
    BitBtn39: TBitBtn;
    grdResultatDBTableView1IC_GrpNo: TcxGridDBColumn;
    grdResultatDBTableView1LogicalInventoryPointNo: TcxGridDBColumn;
    grdResultatDBTableView1InventeringsMetod: TcxGridDBColumn;
    grdResultatDBTableView1PackageNo: TcxGridDBColumn;
    grdResultatDBTableView1Suppliercode: TcxGridDBColumn;
    grdResultatDBTableView1PackageTypeNo: TcxGridDBColumn;
    grdResultatDBTableView1NoOfPkgs: TcxGridDBColumn;
    grdResultatDBTableView1AntalPaketILager: TcxGridDBColumn;
    grdResultatDBTableView1LogicalInventoryName: TcxGridDBColumn;
    grdResultatDBTableView1Status: TcxGridDBColumn;
    grdResultatDBTableView1OwnerNo: TcxGridDBColumn;
    grdResultatDBTableView1ANTPERLNGD: TcxGridDBColumn;
    grdResultatDBTableView1PRODUKT: TcxGridDBColumn;
    grdResultatDBTableView1STYCK: TcxGridDBColumn;
    grdResultatDBTableView1AM3: TcxGridDBColumn;
    grdResultatDBTableView1NM3: TcxGridDBColumn;
    grdResultatDBTableView1Klla: TcxGridDBColumn;
    dxBarButton18: TdxBarButton;
    BitBtn40: TBitBtn;
    acPrintResultListWysiwyg: TAction;
    dxComponentPrinter1Link11: TdxGridReportLink;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxStyle1GroupSummary: TcxStyle;
    acPkgInfoInomInventeringen: TAction;
    dxBarButton19: TdxBarButton;
    tePaRegPkgNo: TcxTextEdit;
    cxLabel2: TcxLabel;
    procedure acExitExecute(Sender: TObject);
    procedure acNewExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acSearchExecute(Sender: TObject);
    procedure acCancelUpdateExecute(Sender: TObject);
    procedure acGenInvListsExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acPrintInvListPerLGExecute(Sender: TObject);
    procedure acGenFinalListExecute(Sender: TObject);
    procedure acAvRegPktExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure grdAvregDBTableView1PackageNoPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure acAvRegPkgExecute(Sender: TObject);
    procedure acAngraAvRegPkgExecute(Sender: TObject);
    procedure acPaRegPkgExecute(Sender: TObject);
    procedure grdPaRegPkgDBTableView1PackageNoPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cbEgenSupplierCode2Click(Sender: TObject);
    procedure cbEgenSupplierCodeClick(Sender: TObject);
    procedure acAngraPaRegPkgExecute(Sender: TObject);
    procedure acGetInLeveranserExecute(Sender: TObject);
    procedure acGetPkgDeliveredExecute(Sender: TObject);
    procedure acGetProductionExecute(Sender: TObject);
    procedure acDeleteUpdate(Sender: TObject);
    procedure ds_InvCtrlMetodDataChange(Sender: TObject; Field: TField);
    procedure acAvRegPktUpdate(Sender: TObject);
    procedure acPaRegPktUpdate(Sender: TObject);
    procedure acAndraPktUpdate(Sender: TObject);
    procedure acAvRegPkgUpdate(Sender: TObject);
    procedure acPaRegPkgUpdate(Sender: TObject);
    procedure acAngraAvRegPkgUpdate(Sender: TObject);
    procedure acAngraPaRegPkgUpdate(Sender: TObject);
    procedure acPriceListExecute(Sender: TObject);
    procedure acGetNormalAvRegExecute(Sender: TObject);
    procedure acPrintSummaryReportExecute(Sender: TObject);
    procedure acPrintSummaryReportUpdate(Sender: TObject);
    procedure acPrintInvListPerLGUpdate(Sender: TObject);
    procedure acGenFinalListUpdate(Sender: TObject);
    procedure acGenInvListsUpdate(Sender: TObject);
    procedure acRemoveLagerGruppRadExecute(Sender: TObject);
    procedure acRemoveLagerGruppRadUpdate(Sender: TObject);
    procedure acHamtaAllaLGExecute(Sender: TObject);
    procedure acHamtaAllaLGUpdate(Sender: TObject);
    procedure acRemoveLagerStalleExecute(Sender: TObject);
    procedure acAddLSExecute(Sender: TObject);
    procedure acRemoveLagerStalleUpdate(Sender: TObject);
    procedure acAddLSUpdate(Sender: TObject);
    procedure acHamtaAllaLSExecute(Sender: TObject);
    procedure acHamtaAllaLSUpdate(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelUpdateUpdate(Sender: TObject);
    procedure acGetPkgDeliveredUpdate(Sender: TObject);
    procedure acGetInLeveranserUpdate(Sender: TObject);
    procedure acGetProductionUpdate(Sender: TObject);
    procedure acCreateNewPkgUpdate(Sender: TObject);
    procedure acPrintAvRegExecute(Sender: TObject);
    procedure acPrintPaRegExecute(Sender: TObject);
    procedure acPrintPriceListKontrollExecute(Sender: TObject);
    procedure acPrintPriceListKontrollUpdate(Sender: TObject);
    procedure grdAvregDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure leVerkPropertiesChange(Sender: TObject);
    procedure acPrintInLevExecute(Sender: TObject);
    procedure acPrintUtLevExecute(Sender: TObject);
    procedure acPrintProducedPkgsExecute(Sender: TObject);
    procedure grdPaRegPkgDBTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure grdPaRegPkgDBTableView1KeyPress(Sender: TObject;
      var Key: Char);
    procedure acAddChgPkgExecute(Sender: TObject);
    procedure grdChangedDBTableView1PackageNoPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure acUndoChangePkgExecute(Sender: TObject);
    procedure acChangePkgExecute(Sender: TObject);
    procedure acPrintChangedPkgsExecute(Sender: TObject);
    procedure acPrintAvRegIProductionExecute(Sender: TObject);
    procedure acUndoChangePkgUpdate(Sender: TObject);
    procedure acChangePkgUpdate(Sender: TObject);
    procedure cbEgenSupplierCode3Click(Sender: TObject);
    procedure acPrintKontrollistaExecute(Sender: TObject);
    procedure acPrintAllLGExecute(Sender: TObject);
    procedure acPrintAvRegUpdate(Sender: TObject);
    procedure acPrintKontrollistaUpdate(Sender: TObject);
    procedure acPrintPaRegUpdate(Sender: TObject);
    procedure acPrintChangedPkgsUpdate(Sender: TObject);
    procedure acPrintAllLGUpdate(Sender: TObject);
    procedure acPrintAvRegIProductionUpdate(Sender: TObject);
    procedure acPrintUtLevUpdate(Sender: TObject);
    procedure acPrintInLevUpdate(Sender: TObject);
    procedure acPrintProducedPkgsUpdate(Sender: TObject);
    procedure acCreateInventeringsLista_IIExecute(Sender: TObject);
    procedure acChangePaRegPkgExecute(Sender: TObject);
    procedure acConfirmInventeringExecute(Sender: TObject);
    procedure acConfirmInventeringUpdate(Sender: TObject);
    procedure acChangePaRegPkgUpdate(Sender: TObject);
    procedure acCreateInventeringsLista_IIUpdate(Sender: TObject);
    procedure acGenSummaryExecute(Sender: TObject);
    procedure acGenSummaryUpdate(Sender: TObject);
    procedure acPaRegPktExecute(Sender: TObject);
    procedure acGetNormalAvRegUpdate(Sender: TObject);
    procedure grdAvregDBTableView1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure grdPaRegPkgDBTableView1Editing(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure grdChangedDBTableView1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure acPkgInfoAvRegExecute(Sender: TObject);
    procedure acPkgInfoPaRegExecute(Sender: TObject);
    procedure acPkgInfoAndraPktExecute(Sender: TObject);
    procedure acPkgInfoAvRegIProdExecute(Sender: TObject);
    procedure acPkgInfoUtlevExecute(Sender: TObject);
    procedure acPkgInfoInLevExecute(Sender: TObject);
    procedure acPkgInfoProdExecute(Sender: TObject);
    procedure acPktLoggPaRegExecute(Sender: TObject);
    procedure acPktLoggAvRegExecute(Sender: TObject);
    procedure acPktLoggAndraExecute(Sender: TObject);
    procedure acPktLoggAvRegIProdExecute(Sender: TObject);
    procedure acPktLoggUtLevExecute(Sender: TObject);
    procedure acPktLoggInLevExecute(Sender: TObject);
    procedure acPktLoggProduceratExecute(Sender: TObject);
    procedure lcPriceListPropertiesInitPopup(Sender: TObject);
    procedure lcPriceListPropertiesCloseUp(Sender: TObject);
    procedure acPickPkgNosExecute(Sender: TObject);
    procedure acPickPkgNosUpdate(Sender: TObject);
    procedure acPrintInvListaIIExecute(Sender: TObject);
    procedure acPrintInvListaIIUpdate(Sender: TObject);
    procedure acPrintAvregBeforeInvDateAndExistInKLExecute(Sender: TObject);
    procedure acAvregBeforeInvDateAndExistInKLExecute(Sender: TObject);
    procedure acPrintAvregBeforeInvDateAndExistInKLUpdate(Sender: TObject);
    procedure acAvregBeforeInvDateAndExistInKLUpdate(Sender: TObject);
    procedure acGetProductionBeforeInvDateExecute(Sender: TObject);
    procedure acPrintProductionBeforeInvDateExecute(Sender: TObject);
    procedure acGetProductionBeforeInvDateUpdate(Sender: TObject);
    procedure acPrintProductionBeforeInvDateUpdate(Sender: TObject);
    procedure acPktLoggAvregBeforeInvDateExecute(Sender: TObject);
    procedure acPktLoggProductionBeforeInvDateExecute(Sender: TObject);
    procedure acPkgInfoSAvregBeforeInvDateExecute(Sender: TObject);
    procedure acPkgInfoProductionBeforeInvDateExecute(Sender: TObject);
    procedure acPrintInvCtrlByPkgNoExecute(Sender: TObject);
    procedure acPickInActivePkgsNosExecute(Sender: TObject);
    procedure acPickInActivePkgsNosUpdate(Sender: TObject);
    procedure grdLGDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tmrFlashTimer(Sender: TObject);
    procedure acLoggsExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acRemovePackageFromCtrlListExecute(Sender: TObject);
    procedure acRefreshKontrollistaExecute(Sender: TObject);
    procedure acRemovePackageFromCtrlListUpdate(Sender: TObject);
    procedure acPrintCtrlListWysiwygExecute(Sender: TObject);
    procedure acExpandAllCtrlListExecute(Sender: TObject);
    procedure grdCtrlListDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure acPkgInfoCtrlListExecute(Sender: TObject);
    procedure acPkgStatusInInventeringExecute(Sender: TObject);
    procedure teSearchPackageNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acRefreshResultListExecute(Sender: TObject);
    procedure acRefreshKontrollistaUpdate(Sender: TObject);
    procedure acRefreshResultListUpdate(Sender: TObject);
    procedure acPrintResultListWysiwygExecute(Sender: TObject);
    procedure acPkgInfoInomInventeringenExecute(Sender: TObject);
    procedure tePaRegPkgNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    IsHighLighted: Boolean;
    EgenLevKod : String3 ;
    procedure PaketStatusInomInventeringen(const PackageNo : Integer;const Prefix : String) ;
    procedure PaRegistreraPaketMetod_PktTYP(Sender: TObject);
    procedure AvRegPktMetod_PktTYP(Sender: TObject);
    function  DataInteSparad : Boolean ;
    procedure PrintSammanstallning(Sender: TObject);
    function  InventeringPresent : Boolean;
    function  CreateNewPkg(Var PackageNo : Integer) : String ;
    procedure SparaLagerListor_Local ;
    procedure SetOnOff ;
    procedure ChangePkg(const PackageNo : Integer;const PkgSupplierCode : String);
    procedure SetInventeringReadOnly ;
    procedure PkgInfo(const PackageNo : Integer;const SupplierCode : String);
    procedure PaketLogg(const PackageNo : Integer;const SupplierCode : String) ;
    procedure AddMarkedPkgsTo_AvRegPkgsTable ;
    procedure AddMarkedPkgsTo_PaRegPkgsTable ;
  public
    { Public declarations }
    procedure SattKnappStatus ;
  end;

//var fInvCtrl: TfInvCtrl;

implementation

uses dmcInvCtrl, dmsVidaContact, VidaUser, UnitCRViewReport, //UnitRemovePkg, //VidaType,
  dmcVidaSystem, dmcPkgs,
  dmsDataConn,
  uEntryField,
  dmsVidaSystem, dmsVidaPkg, //UnitPkgEntry,
  VidaConst, uInvCtrlList , uInvPriceList, uSinglePkgEntry ,
  dm_Inventory, UnitPkgInfo, uPkgLog, uPickPkgNo, uInvLogs, dmsSinglePkg;

{$R *.dfm}

const
  FlashColors: array [Boolean] of TColor = (clWindow, clRed);

function TfInvCtrl.InventeringPresent : Boolean;
begin
 With dmInvCtrl do
 Begin
  Result:= cds_InvCtrlMetod.RecordCount > 0 ;
 End ;
End ;                                               

procedure TfInvCtrl.acExitExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfInvCtrl.acNewExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
//  if thisuser.UserID = 8 then showmessage('cds_InvCtrlGrp.Insert ;');
  cds_InvCtrlGrp.Insert ;
//  if thisuser.UserID = 8 then showmessage('cds_InvCtrlGrpVerkNo.AsInteger:= ThisUser.CompanyNo ;');
  cds_InvCtrlGrpVerkNo.AsInteger:= ThisUser.CompanyNo ;
//  if thisuser.UserID = 8 then showmessage('cds_InvCtrl_LagerStallen.Refresh ;');
//  cds_InvCtrl_LagerStallen.Refresh ;
//  if thisuser.UserID = 8 then showmessage('cds_InvCtrlMetod.Refresh ;');
//  cds_InvCtrlMetod.Refresh ;
//  if thisuser.UserID = 8 then showmessage('OppnaLagerStallen ;');
  OppnaLagerStallen ;
//  if thisuser.UserID = 8 then showmessage('cds_InvCtrlGrp.Post ;');
  cds_InvCtrlGrp.Post ;


    cds_InvCtrl_LagerStallen.Refresh ;
    cds_InvCtrlMetod.Refresh ;
    cds_InvCtrl_Pkgs.Refresh ;
    cds_InvCtrl_PaReg.Refresh ;
    cds_ChgPkg.Refresh ;
    cds_InLev.Refresh ;
    cds_UtLev.Refresh ;
    cds_GetPrd.Refresh ;
    cds_GetPrdBefore.Refresh ;
    cds_GetAvrRegPrd.Refresh ;
    cds_GetAvrBefore.Refresh ;
    GetCurrentSortordernos ;

    cds_PriceListGrp.Active:= False ;
    //sq_PriceListGrp.ParamByName('ClientNo').AsInteger:= cds_InvCtrlGrpVerkNo.AsInteger ;
    sq_PriceListGrp.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
    cds_PriceListGrp.Active:= True ;
    SetInventeringReadOnly ;
    acRefreshKontrollistaExecute(Sender) ;
    acRefreshResultListExecute(Sender) ;
 End ;//With..
end;

procedure TfInvCtrl.FormCreate(Sender: TObject);
begin
  IsHighLighted := False;
  tmrFlash.Interval := 681 ;

 EgenLevKod:= dmsContact.GetClientCode(ThisUser.CompanyNo) ;
 Memo1.Align:= alClient ;
 With dmInvCtrl do
 Begin
  dmInvCtrl:= TdmInvCtrl.Create(Nil);
  OppnaLagerStallen ;
  dmsContact.cds_Verk.Active      := True ;
  cds_PhysInv.Active              := True ;
  cds_InvCtrlGrp.Active           := True ;
  cds_InvCtrlMetod.Active         := True ;
  cds_InvCtrl_LagerStallen.Active := True ;
  cds_InvCtrl_Pkgs.Active         := True ;
  cds_InvCtrl_PaReg.Active        := True ;
  cds_ChgPkg.Active               := True ;
  cds_InLev.Active                := True ;
  cds_UtLev.Active                := True ;
  cds_GetPrd.Active               := True ;
  cds_GetPrdBefore.Active         := True ;
  cds_GetAvrRegPrd.Active         := True ;
  cds_GetAvrBefore.Active         := True ;
 End ;
end;

procedure TfInvCtrl.FormDestroy(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  FreeAndNil(dmInvCtrl) ;
 End ;
// fInvCtrl:= Nil ; 
end;

procedure TfInvCtrl.acSaveExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
   if dmInvCtrl.cds_InvCtrlGrpMaxDatum.IsNull then
  Begin
   ShowMessage('Ange Maxdatum!') ;
   Exit ;
  End ;

  if (ThisUser.CompanyNo = 741) and (cds_InvCtrlMetod.RecordCount > 1) then
  Begin
   ShowMessage('Du får endast ange max en(1) lagergrupp per inventering!') ;
   Exit ;
  End ;

  if dmInvCtrl.cds_InvCtrlGrpMaxDatum.AsDateTime < dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsDateTime then
  Begin
   ShowMessage('Maxdatum måste vara senare än inventeringsdatum, var vänlig justera!') ;
   Exit ;
  End ;

  if cds_InvCtrlGrp.State in [dsEdit, dsInsert] then
   cds_InvCtrlGrp.Post ;
  if cds_InvCtrlGrp.ChangeCount > 0 then
   cds_InvCtrlGrp.ApplyUpdates(0) ;

  if cds_InvCtrl_LagerStallen.State in [dsEdit, dsInsert] then
   cds_InvCtrl_LagerStallen.Post ;
  if cds_InvCtrl_LagerStallen.ChangeCount > 0 then
   cds_InvCtrl_LagerStallen.ApplyUpdates(0) ;

  if cds_InvCtrlMetod.State in [dsEdit, dsInsert] then
   cds_InvCtrlMetod.Post ;
  if cds_InvCtrlMetod.ChangeCount > 0 then
   cds_InvCtrlMetod.ApplyUpdates(0) ;

{  if cds_InvCtrl_Pkgs.State in [dsEdit, dsInsert] then
   cds_InvCtrl_Pkgs.Post ;
  if cds_InvCtrl_Pkgs.ChangeCount > 0 then
   cds_InvCtrl_Pkgs.ApplyUpdates(0) ;

  if cds_InvCtrl_PaReg.State in [dsEdit, dsInsert] then
   cds_InvCtrl_PaReg.Post ;
  if cds_InvCtrl_PaReg.ChangeCount > 0 then
   cds_InvCtrl_PaReg.ApplyUpdates(0) ; }

  SetOnOff ;
 End ;
end;

procedure TfInvCtrl.acSearchExecute(Sender: TObject);
var fInvCtrlList: TfInvCtrlList;
    Save_Cursor : TCursor;
begin
 if DataInteSparad = True then
 Begin
  ShowMessage('Spara eller ångra ändringar först.') ;
  Exit ;
 End ;

 With dmInvCtrl do
 Begin
  cds_InvCtrl_Pkgs.Cancel ;
  cds_InvCtrl_PaReg.Cancel ;
  cds_ChgPkg.Cancel ;

  fInvCtrlList:= TfInvCtrlList.Create(Nil) ;
  cds_InvCtrlList.Active:= False ;
  sq_InvCtrlList.ParamByName('VerkNo').AsInteger:= ThisUser.CompanyNo ;
  cds_InvCtrlList.Active:= True ;
  try
   if fInvCtrlList.ShowModal = mrok then
   Begin
    Application.ProcessMessages ;
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;    { Show hourglass cursor }
    try
     cds_PriceListGrp.Active:= False ;
    //sq_PriceListGrp.ParamByName('ClientNo').AsInteger:= cds_InvCtrlGrpVerkNo.AsInteger ;
     sq_PriceListGrp.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
     cds_PriceListGrp.Active:= True ;
     Screen.Cursor := crSQLWait;

     cds_InvCtrlGrp.Active:= False ;
     sq_InvCtrlGrp.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlListINVENTERINGSNR.AsInteger ;
     cds_InvCtrlGrp.Active:= True ;

     acRefreshKontrollistaExecute(Sender) ;
     acRefreshResultListExecute(Sender) ;

     Screen.Cursor := crSQLWait;
     cds_InvCtrl_LagerStallen.Refresh ;
     cds_InvCtrlMetod.Refresh ;
     cds_InvCtrl_Pkgs.Refresh ;
     cds_InvCtrl_PaReg.Refresh ;
     cds_ChgPkg.Refresh ;
     cds_InLev.Refresh ;
     cds_UtLev.Refresh ;
     cds_GetPrd.Refresh ;
     cds_GetPrdBefore.Refresh ;
     cds_GetAvrRegPrd.Refresh ;
     cds_GetAvrBefore.Refresh ;
     GetCurrentSortordernos ;
     SetInventeringReadOnly ;
    finally
     Screen.Cursor := Save_Cursor;  { Always restore to normal }
    end;
   End ;
  dxPageControl1.ActivePage:= tsSkapaLagerListor ;
  SetOnOff ;
  finally
   cds_InvCtrlList.Active:= False ;
   FreeAndNil(fInvCtrlList) ;
  end;
 End ; //With
end;

procedure TfInvCtrl.acCancelUpdateExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if cds_InvCtrlGrp.State in [dsEdit, dsInsert] then
   cds_InvCtrlGrp.Cancel ;
  if cds_InvCtrlGrp.ChangeCount > 0 then
   cds_InvCtrlGrp.CancelUpdates ;

  if cds_InvCtrl_LagerStallen.State in [dsEdit, dsInsert] then
   cds_InvCtrl_LagerStallen.Cancel ;
  if cds_InvCtrl_LagerStallen.ChangeCount > 0 then
   cds_InvCtrl_LagerStallen.CancelUpdates ;

  if cds_InvCtrlMetod.State in [dsEdit, dsInsert] then
   cds_InvCtrlMetod.Cancel ;
  if cds_InvCtrlMetod.ChangeCount > 0 then
   cds_InvCtrlMetod.CancelUpdates ;

   cds_InvCtrl_LagerStallen.Refresh ;
   cds_InvCtrlMetod.Refresh ;
   SetOnOff ;   
 End ;
end;

procedure TfInvCtrl.acGenInvListsExecute(Sender: TObject);
Const
 LF = #10 ;
var
  Save_Cursor : TCursor;
begin
  if (ThisUser.CompanyNo = 741) and (dmInvCtrl.cds_InvCtrlMetod.RecordCount > 1) then
  Begin
   ShowMessage('Du får endast ange max en(1) lagergrupp per inventering!') ;
   Exit ;
  End ;
 if  dmInvCtrl.cds_InvCtrlGrp.State in [dsEdit, dsInsert] then
  dmInvCtrl.cds_InvCtrlGrp.Post ;
 if  dmInvCtrl.cds_InvCtrlGrp.ChangeCount > 0 then
  dmInvCtrl.cds_InvCtrlGrp.ApplyUpdates(0) ;
  if dmInvCtrl.cds_InvCtrlGrpMaxDatum.IsNull then
  Begin
   ShowMessage('Ange Maxdatum!') ;
   Exit ;
  End ;

//  if  dmInvCtrl.cds_InvCtrlGrpMaxDatum.AsDateTime < dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsDateTime then
  if Now > dmInvCtrl.cds_InvCtrlGrpMaxDatum.AsDateTime then
  Begin
   ShowMessage('Maxdatum måste vara senare än inventeringsdatum, var vänlig justera!') ;
   Exit ;
  End ;

 //Skapa kontrollistor
 if MessageDlg('Vill du skapa kontrollistor? (tidigare gjorda kontrollistor makuleras)'
 +LF+LF+' Har du valt rätt METOD.'
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  Application.ProcessMessages ;

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try

 With dmInvCtrl do
 Begin
  Try
  acSaveExecute(Sender) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  SkapaKontrollistor ;

  cds_InvCtrlGrp.Edit ;
  cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
  cds_InvCtrlGrpStatus.AsInteger                  := 1 ; //Lagerlistor är genererade
  cds_InvCtrlGrp.Post ;

  acSaveExecute(Sender) ;
  SetInventeringReadOnly ;

  Except
  End ;
 End ;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

procedure TfInvCtrl.acDeleteExecute(Sender: TObject);
const
  LF = #10;
begin
 if MessageDlg('Vill du ta bort inventeringen ? '+LF+'Alla ändringar gjorda i lagren kvarstår.'
 +LF+'Obs, du kan inte ångra denna operation!'
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  Application.ProcessMessages ;
  if MessageDlg('Är du säker?',    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  Exit ;
 With dmInvCtrl do
 Begin
//   Try
   cds_InvCtrlGrp.ReadOnly            := False ;
   cds_InvCtrlGrp.Delete ;
   if cds_InvCtrlGrp.ChangeCount > 0 then
   cds_InvCtrlGrp.ApplyUpdates(0) ;

   cds_InvCtrl_LagerStallen.Active:= False ;
   cds_InvCtrl_LagerStallen.Active:= True ;
   cds_InvCtrl_LagerStallen.Refresh ;
   cds_InvCtrlMetod.Active:= False ;
   cds_InvCtrlMetod.Active:= True ;
   cds_InvCtrlMetod.Refresh ;
   cds_GetAvrRegPrd.Active:= False ;
   cds_GetAvrRegPrd.Active:= True ;

   cds_GetAvrBefore.Active:= False ;
   cds_GetAvrBefore.Active:= True ;

   cds_ChgPkg.Active:= False ;
   cds_ChgPkg.Active:= True ;

   cds_GetPrd.Active:= False ;
   cds_GetPrd.Active:= True ;

   cds_GetPrdBefore.Active:= False ;
   cds_GetPrdBefore.Active:= True ;

   cds_UtLev.Active:= False ;
   cds_UtLev.Active:= True ;

   cds_InLev.Active:= False ;
   cds_InLev.Active:= True ;

   cds_InvCtrl_PaReg.Active:= False ;
   cds_InvCtrl_PaReg.Active:= True ;

   cds_InvCtrl_Pkgs.Active:= False ;
   cds_InvCtrl_Pkgs.Active:= True ;
//  Except
//   End ;
 End ;

 End ;
end;

procedure TfInvCtrl.acPrintInvListPerLGExecute(Sender: TObject);
Var FormCRViewReport: TFormCRViewReport ;
    Save_Cursor : TCursor;
begin
//dmInvCtrl.ds_InvCtrlMetod
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
// if dmInvCtrl.cds_InvCtrlGrpStatus.AsInteger < 3 then
 Begin
  if dmInvCtrl.cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
   FormCRViewReport.CreateCo('InvListLGPktNr.RPT')
    else
      FormCRViewReport.CreateCo('InventeringPerPktTyp.RPT') ;
 End ;
{ else
 Begin
  if dmInvCtrl.cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
   FormCRViewReport.CreateCo('InvenLagerListaPktNr.RPT')
    else
      FormCRViewReport.CreateCo('InvenLagerListaPktTyp.RPT') ;
 End ; }

  if FormCRViewReport.ReportFound then
  Begin
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmInvCtrl.cds_InvCtrlMetodIC_grpNo.AsInteger);
   FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(dmInvCtrl.cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger);
   FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
   FormCRViewReport.CRViewer91.ViewReport ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }   
   FormCRViewReport.ShowModal ;
  End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfInvCtrl.acGenFinalListExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 memo3.Lines.Clear ;
  if dmInvCtrl.cds_InvCtrlGrpMaxDatum.IsNull then
  Begin
   ShowMessage('Ange Maxdatum!') ;
   Exit ;
  End ;

  if dmInvCtrl.cds_InvCtrlGrpMaxDatum.AsDateTime < dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsDateTime then
  Begin
   ShowMessage('Maxdatum måste vara senare än inventeringsdatum, var vänlig justera!') ;
   Exit ;
  End ;
  
 //Skapa lager listor
 if MessageDlg('Vill du skapa inventeringslistan med händelser?'
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  Application.ProcessMessages ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try

 With dmInvCtrl do
 Begin
  Try
   acSaveExecute(Sender) ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   if cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
   Begin


   //Inleveranser, laster som har ett lastdatum mindre än maxdatum
   //och är ankomstregistrerad
   //och finns ej i ICR
  Memo2.Lines.Clear ;
  Memo2.Clear ;
  Memo2.Lines.Add('Start') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;

  //Markera bort paket som är avregistrerade före maxdatum
  acGetNormalAvRegExecute(Sender) ;
  Memo2.Lines.Add('acGetNormalAvRegExecute(Sender)') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  //Markera bort paket som är levererade före maxdatum
  acGetPkgDeliveredExecute(Sender) ;
  Memo2.Lines.Add('acGetPkgDeliveredExecute(Sender)') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  acGetInLeveranserExecute(Sender) ;
  Memo2.Lines.Add('acGetInLeveranserExecute(Sender)') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  //Lägg till paket producerade efter inventeringsdatum och ej avregistrerat eller utlastat före maxdatum
  acGetProductionExecute(Sender) ;
  Memo2.Lines.Add('acGetProductionExecute(Sender)') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }


  //Lägg till paket producerade före inventeringsdatum och ej med i kontrollistan
  acGetProductionBeforeInvDateExecute(Sender) ;
  Memo2.Lines.Add('acGetProductionBeforeInvDateExecute(Sender)') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;

  Screen.Cursor := crSQLWait;  


//Plockar bort den här funktionen för att den skapar problem på Alvesta
  //Ta bort paket som är avregistrerade före inventeringsdatum och med i kontrollistan
{  acAvregBeforeInvDateAndExistInKLExecute(Sender) ;
  Memo2.Lines.Add('acAvregBeforeInvDateAndExistInKLExecute(Sender)') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;
  Screen.Cursor := crSQLWait;
 }


  Memo2.Lines.Add('Generera inventeringslistor') ;
  GenerateInventeringsListan ;
//   SparaLagerListor_Local ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;
  Memo2.Lines.Add('Klart') ;
  End ;//if...
  Except
  End ;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

procedure TfInvCtrl.SparaLagerListor_Local ;
Begin
 with dmInvCtrl do
 Begin
// cds_InvCtrlMetod.First ;
// While not cds_InvCtrlMetod.Eof do
// Begin
//  if cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
//  Begin
  //Markera alla som 1
  //Deleta 3 , 4 och 5 och lägg till i nästa steg
  //3) Inleveranser, 4) : Ny Producerat, 5a) : Gamla paket påregistrerade, 5b) : Nya paket påregistrerade
  sq_CleanICR.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  sq_CleanICR.ExecSQL(False) ;
  Memo2.Lines.Add('sq_CleanICR.ExecSQL(False)') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;

  //Add 3) Inleveranser, 4) : Ny Producerat, 5a) : Gamla paket påregistrerade, 5b) : Nya paket påregistrerade
   sq_AddToICR.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
   sq_AddToICR.ExecSQL(False) ;
  Memo2.Lines.Add('sq_AddToICR.ExecSQL(False)') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;

  //Markera bort 0 avreg och 2 utleverans och 6 normal avreg
  sq_RemFromICR.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  sq_RemFromICR.ExecSQL(False) ;
  Memo2.Lines.Add('sq_RemFromICR.ExecSQL(False)') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;

  //Ändra packagetype och LIP på de paket i ICR som har ändrats före maxdatum
  //Hämta
  sq_GetChangesToPackages.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  sq_GetChangesToPackages.ExecSQL(False) ;
  Memo2.Lines.Add('sq_GetChangesToPackages.ExecSQL(False)') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;

{   sq_SaveInvLista_PktNr.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
   sq_SaveInvLista_PktNr.ParamByName('LogicalInventoryPointNo').AsInteger:= cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
   sq_SaveInvLista_PktNr.ParamByName('InventeringsMetod').AsInteger:= cds_InvCtrlMetodInventeringsMetod.AsInteger ;
   sq_SaveInvLista_PktNr.ParamByName('MaxDatum').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(cds_InvCtrlGrpMaxDatum.AsDateTime) ;
   sq_SaveInvLista_PktNr.ExecSQL(False) ; }
{  End
  else
  Begin
   sq_SaveInvListaPktTyp.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
   sq_SaveInvListaPktTyp.ParamByName('LogicalInventoryPointNo').AsInteger:= cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
   sq_SaveInvListaPktTyp.ParamByName('InventeringsMetod').AsInteger:= cds_InvCtrlMetodInventeringsMetod.AsInteger ;
   sq_SaveInvListaPktTyp.ExecSQL(False) ;
  End ;
  cds_InvCtrlMetod.Next ;
 End ; }
 End ;//with
End ;

procedure TfInvCtrl.acAvRegPktExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if StrToIntDef(Trim(ePkgNo.Text),0) > 0 then
  Begin
  if StrToIntDef(Trim(eNoOfPkgs.Text),0) > 0 then
  Begin
   if dmInvCtrl.cds_InvCtrlMetodInventeringsMetod.AsInteger <> 1 then
   Begin
    acSaveExecute(Sender) ;
    AvRegPktMetod_PktTYP(Sender) ;
   End ;
  End
  else
   ShowMessage('Ange antal paket') ;
  End
  else
   ShowMessage('Ange en pakettypid') ;
 End ;
end;

procedure TfInvCtrl.PaRegistreraPaketMetod_PktTYP(Sender: TObject);
const
  LF = #10;
Var TransactionNo : LongWord;
    Save_Cursor:TCursor;
    PKT_DESC : AnsiString ;
begin
 if dmsSystem.Get_PkgTypeInfo (StrToInt(Trim(ePkgNo.Text)), PKT_DESC) then
 if MessageDlg('Vill du påregistrera '+eNoOfPkgs.Text+' paket?'+LF
 +PKT_DESC+LF
 +' till lagergrupp: '+Trim(dmInvCtrl.cds_InvCtrlMetodLogicalInventoryName.AsString)+LF
 +' Datum: '+DatetimeToStr(SqLTimeStampToDateTime(dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then

 Begin
 dmPkgs:= TdmPkgs.Create(Nil);
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try
 With dmPkgs do
 Begin
  SupplierCode:= dmsContact.GetClientCode(dmInvCtrl.cds_InvCtrlGrpVerkNo.AsInteger) ;
  mtLoadPackages.Active:= True ;
  if Preparera_mtLoadPackages (SupplierCode, dmInvCtrl.cds_InvCtrlGrpVerkNo.AsInteger,
  dmInvCtrl.cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger,
  StrToInt(Trim(ePkgNo.Text)),//PackageTypeno
  StrToInt(eNoOfPkgs.Text)) then
  Begin
  //Spara paket
  TransactionNo := dmsConnector.StartTransaction;
  try
   if AddPkgsByPktType (5,// 5 = InvDiff
   SqLTimeStampToDateTime(dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp) ) then
   //Change InvCtrlrowPkt antalpaket
      dmInvCtrl.SetNoOfPkgs_PKTTYP (dmInvCtrl.cds_InvCtrlMetodLogicalInventoryName.AsString,
      dmInvCtrl.cds_InvCtrlMetodOwnerNo.AsInteger,
      dmInvCtrl.cds_InvCtrlMetodIC_grpNo.AsInteger,
      StrToInt(Trim(eNoOfPkgs.Text)),
      StrToInt(Trim(ePkgNo.Text)),
      dmInvCtrl.cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger) ;

   dmsConnector.Commit(TransactionNo);

  except
   dmsConnector.Rollback(TransactionNo);
   ShowMessage('Påregistrering misslyckades') ;
  end;
 End  //if
  else
   ShowMessage('Påregistrering misslyckades, kolla att valt VERK har en paketnr serie.') ;
 End ; //with
 Finally
  FreeAndNil(dmPkgs) ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ; //if
end;

procedure TfInvCtrl.AvRegPktMetod_PktTYP(Sender: TObject);
const
  LF = #10;
Var  TransactionNo : LongWord ;
PKT_DESC : AnsiString ;
begin                                                     
//Avregistrera ett antal paketnr (äldsta) från valt lager.
 if dmsSystem.Get_PkgTypeInfo (StrToInt(Trim(ePkgNo.Text)), PKT_DESC) then
 if MessageDlg('Vill du avregistrera '+eNoOfPkgs.Text+' paket?'+LF
 +PKT_DESC+LF
 +' från lagergrupp: '+Trim(dmInvCtrl.cds_InvCtrlMetodLogicalInventoryName.AsString)+LF
 +' Datum: '+DatetimeToStr(SqLTimeStampToDateTime(dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then


// if MessageDlg('Vill du avregistrera '+eNoOfPkgs.Text+' paket?  Lagergrupp: '
// +Trim(dmInvCtrl.cds_InvCtrlMetodLogicalInventoryName.AsString)
// +' - Datum: '+DatetimeToStr(SqLTimeStampToDateTime(dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))
// ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
 dmPkgs:= TdmPkgs.Create(Nil);
 Try
  dmPkgs.mtLoadPackages.Active:= True ;
  if dmPkgs.GetAvailablePkgNos (dmInvCtrl.cds_InvCtrlMetodOwnerNo.AsInteger,
  StrToInt(Trim(ePkgNo.Text)),
  dmInvCtrl.cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger,
  StrToInt(Trim(eNoOfPkgs.Text))  )  then
  Begin
   TransactionNo := dmsConnector.StartTransaction;
   try
    if dmPkgs.RemovePkgsFromInventering (dmInvCtrl.cds_InvCtrlMetodOwnerNo.AsInteger,
    5, //InvDiff code
    SqLTimeStampToDateTime(dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp)) = False then
    ShowMessage('Misslyckades med att avregistrera paket')
     else
      dmInvCtrl.SetNoOfPkgs_PKTTYP (
      dmInvCtrl.cds_InvCtrlMetodLogicalInventoryName.AsString,
      dmInvCtrl.cds_InvCtrlMetodOwnerNo.AsInteger,
      dmInvCtrl.cds_InvCtrlMetodIC_grpNo.AsInteger,
      StrToInt(Trim(eNoOfPkgs.Text))*(-1),
      StrToInt(Trim(ePkgNo.Text)),
      dmInvCtrl.cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger) ;
    dmsConnector.Commit(TransactionNo);
   except
    dmsConnector.Rollback(TransactionNo);
    ShowMessage('Avregistreringen misslyckades') ;
   end;
 End ;
  dmPkgs.mtLoadPackages.Active:= False ;
 Finally
  FreeAndNil(dmPkgs) ;
 End ;
 End ;
end;

procedure  TfInvCtrl.SattKnappStatus ;
Begin
 With dmInvCtrl do
 Begin
  if cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
  Begin
   bbPaRegistreraPaket.Enabled:= True ;
   bbAvregistreraPaket.Enabled:= True ;
   ePkgNo.Enabled:= True ;
   eNoOfPkgs.Enabled:= False ;
  End
  else
  Begin
   bbPaRegistreraPaket.Enabled:= True ;
   bbAvregistreraPaket.Enabled:= True ;
   ePkgNo.Enabled:= True ;
   eNoOfPkgs.Enabled:= True ;
  End ;
 End ;
End ;

procedure TfInvCtrl.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if DataInteSparad = True then
 if MessageDlg('Vill du spara inventeringen innan du stänger? '
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  Application.ProcessMessages ;
  acSaveExecute(Sender) ;
 End ;

 With dmInvCtrl do
 Begin
  cds_GetAvrRegPrd.Active         := False ;
  cds_GetAvrBefore.Active         := False ;
  cds_GetPrd.Active               := False ;
  cds_GetPrdBefore.Active         := False ;
  cds_InLev.Active                := False ;
  cds_UtLev.Active                := False ;
  cds_InvCtrl_PaReg.Active        := False ;
  cds_ChgPkg.Active               := False ;
  cds_InvCtrl_Pkgs.Active         := False ;
  cds_InvCtrl_LagerStallen.Active := False ;
  cds_InvCtrlGrp.Active           := False ;
  cds_InvCtrlMetod.Active         := False ;
  cds_PhysInv.Active              := False ;
  dmsContact.cds_Verk.Active      := False ;
  cds_CtrlList.Active             := False ;
 End ;

 Canclose:= True ;
end;

function TfInvCtrl.DataInteSparad : Boolean ;
begin
 With dmInvCtrl do
 Begin
  Result:= False ;

{  if cds_InvCtrl_PaReg.State in [dsEdit, dsInsert] then
   Result:= True ;
  if cds_InvCtrl_PaReg.ChangeCount > 0 then
   Result:= True ;

  if cds_InvCtrl_Pkgs.State in [dsEdit, dsInsert] then
   Result:= True ;
  if cds_InvCtrl_Pkgs.ChangeCount > 0 then
   Result:= True ; }

  if cds_InvCtrlGrp.State in [dsEdit, dsInsert] then
   Result:= True ;
  if cds_InvCtrlGrp.ChangeCount > 0 then
   Result:= True ;

  if cds_InvCtrl_LagerStallen.State in [dsEdit, dsInsert] then
   Result:= True ;
  if cds_InvCtrl_LagerStallen.ChangeCount > 0 then
   Result:= True ;

  if cds_InvCtrlMetod.State in [dsEdit, dsInsert] then
   Result:= True ;
  if cds_InvCtrlMetod.ChangeCount > 0 then
   Result:= True ;
 End ;
end;

procedure TfInvCtrl.grdAvregDBTableView1PackageNoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  NewValue              : string;
  PkgSupplierCode       : String3;
  PkgSupplierNo         : Integer ;
  Action                : TEditAction;
  ProductNo             : Integer ;
  Save_Cursor           : TCursor;
  Res_UserName          : String ;
  PkgNo                 : Integer ;
  AskingStatus          : Integer ;
  HelpStringText        : String ;
begin
 HelpStringText:= '' ;
 With dmInvCtrl do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
   NewValue:= DisplayValue ;
   PkgNo:= StrToInt(NewValue) ;
   if cbEgenSupplierCode.Checked = False then
    PkgSupplierCode := dmsSystem.PkgNoToSuppCode_Inv(PkgNo, cds_InvCtrlGrpIC_grpno.AsInteger, PkgSupplierNo, ProductNo)
     else
      Begin
       PkgSupplierCode := EgenLevKod ;

       AskingStatus := CheckIfPkgExistInKontrollist(cds_InvCtrlGrpIC_grpno.AsInteger, PkgNo, PkgSupplierCode) ;
{       if AskingStatus <> -1 then
        if CheckIfPkgIsOwnedByCurrentSupplier(PkgNo, PkgSupplierCode) = False then
         AskingStatus:= 2 ; }

       Case AskingStatus of
        -1 : Begin
//              ErrorText:= 'Paketnr '+NewValue+' finns inte' ;
//              Error:= True ;
              ErrorText:='Paketnr ' + inttostr(PkgNo)+'/'+PkgSupplierCode+' finns ej i kontrollistan.' ;
              Action := eaREJECT ;
              PkgSupplierCode := '' ;
             End ;
        0,1  : Begin
                HelpStringText:= CheckIfPkgExistInHLP(cds_InvCtrlGrpIC_grpno.AsInteger, PkgNo, PkgSupplierCode) ;
                if Length(HelpStringText) > 0 then
                Begin
                 ErrorText:= HelpStringText ;
                 Action := eaREJECT ;
                 PkgSupplierCode := '' ;
//                 Error:= True ;
                End
                else
                Begin
                 PkgSupplierCode := EgenLevKod ;
                End ;
               End ;
{        2  : Begin
              ErrorText:='Ni är inte längre ägare till paketnr '+inttostr(PkgNo)+'/'+PkgSupplierCode ;
              Action := eaREJECT ;
              PkgSupplierCode := '' ;
             End ; }
       End ;//Case
      End ; //ELSE BEGIN

    if PkgSupplierCode = '' then
    Begin
      Action := eaREJECT;
    End
    else
//check that no user has reserved the package
        if dmsSystem.Pkg_Reserved(
          PkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Action := eaACCEPT ;
          end ;


  if Action = eaACCEPT then
  Begin
   if cds_InvCtrl_Pkgs.State in [dsBrowse] then
    cds_InvCtrl_Pkgs.Edit ;
   cds_InvCtrl_PkgsPackageNo.AsInteger:= PkgNo ;
   cds_InvCtrl_PkgsSupplierCode.AsString:= PkgSupplierCode ;
   if GetPackageAttr(cds_InvCtrl_PkgsPackageNo.AsInteger, cds_InvCtrl_PkgsSupplierCode.AsString) then
   Begin
    cds_InvCtrl_PkgsANTPERLNGD.AsString  := sq_OnePkgPCS_PER_LENGTH.AsString ;
    cds_InvCtrl_PkgsPRODUKT.AsString     := sq_OnePkgPRODUCT.AsString ;
    cds_InvCtrl_PkgsSTYCK.AsInteger      := sq_OnePkgPCS.AsInteger ;
    cds_InvCtrl_PkgsAM3.AsFloat          := sq_OnePkgM3_NET.AsFloat ;
    cds_InvCtrl_PkgsLager.AsString       := sq_OnePkgLager.AsString ;
    sq_OnePkg.Close ;
   End ;
//   cds_InvCtrl_Pkgs.Post ;
   Error:= False ;
  End
   else
   if Action = eaREJECT then
    Begin
     ErrorText:= 'Finns inga paket med paketnr ' + NewValue + ' inom inventeringen som är aktiva, det kanske är redan är avregistrerat, eller avregistrerat i produktionen eller utlastat efter att inventeringen skapades.' ;
     Error:= True ;
    End
    else
   if Action = eaReserved then
    Begin
     ErrorText:= 'Paketnr '+NewValue+' är reserverat av användare '+Res_UserName ;
     Error:= True ;
    End ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;
end;

procedure TfInvCtrl.acAvRegPkgExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if dmInvCtrl.cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
   cds_InvCtrl_Pkgs.Insert
    else
     AvRegPktMetod_PktTYP(Sender) ;
//  cds_InvCtrl_PkgsOperation.AsInteger:= 0 ; //ta bort
 End ;
end;

procedure TfInvCtrl.acAngraAvRegPkgExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_InvCtrl_Pkgs.Delete ;
  if cds_InvCtrl_Pkgs.State in [dsEdit, dsInsert] then
   cds_InvCtrl_Pkgs.Post ;
  if cds_InvCtrl_Pkgs.ChangeCount > 0 then
   cds_InvCtrl_Pkgs.ApplyUpdates(0) ;
 End ;
end;

procedure TfInvCtrl.acPaRegPkgExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if dmInvCtrl.cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
   cds_InvCtrl_PaReg.Insert
    else
     PaRegistreraPaketMetod_PktTYP(Sender) ;
 End ;
end;

procedure TfInvCtrl.grdPaRegPkgDBTableView1PackageNoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  NewValue              : string;
  PkgSupplierCode       : String3;
  PkgSupplierNo         : Integer ;
  Action                : TEditAction;
  ProductNo             : Integer ;
  Save_Cursor           : TCursor;
  Res_UserName          : String ;
  PkgNo                 : Integer ;
  AskingStatus,
  AskingStatus2         : Integer ;
  HelpStringText        : String ;
begin
{ NewValue:= DisplayValue ;
 if (Length(NewValue) > 0) and (dmInvCtrl.cds_InvCtrl_PaRegSupplierCode.AsString > '') then
  Error := False
   else
    Error:= True ; }

(* HelpStringText:= '' ;
 With dmInvCtrl do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
   NewValue:= DisplayValue ;
   PkgNo:= StrToInt(NewValue) ;
   if cbEgenSupplierCode2.Checked = False then
    PkgSupplierCode := dmsSystem.PkgNoNotInInvenToSuppCode(PkgNo, cds_InvCtrlGrpIC_grpno.AsInteger, PkgSupplierNo, ProductNo)
     else
      PkgSupplierCode := EgenLevKod ;
//      Begin

       AskingStatus := CheckIfPkgExist(cds_InvCtrlGrpIC_grpno.AsInteger, PkgNo, PkgSupplierCode) ;
       Case AskingStatus of
        -1 : Begin
              ErrorText:= 'Paketet finns i kontrollistan' ;
              Action := eaREJECT ;
              PkgSupplierCode := '' ;
              Error:= True ;
             End ;

        -2 : Begin
              ErrorText:= 'Paketet är aktivt '+ dmsSystem.Pkg_Info(PkgNo, Trim(PkgSupplierCode)) ;
//              ErrorText:= 'Paketnr '+inttostr(PkgNo)+'/'+PkgSupplierCode+' är redan aktivt.' ;
              Action := eaREJECT ;
              PkgSupplierCode := '' ;
              Error:= True ;
             End ;

        -3 : Begin
              ErrorText:= 'Paketnr '+inttostr(PkgNo)+'/'+PkgSupplierCode+' finns ej' ;

              if (Length(PkgSupplierCode) > 0) and (MessageDlg('Paketnr ' + inttostr(PkgNo) + '/' + PkgSupplierCode + ' finns ej, '+' vill du skapa ett nytt paket? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
              Begin
               PkgSupplierCode:= CreateNewPkg(StrToInt(NewValue));
               AskingStatus2 :=  CheckIfPkgExist(cds_InvCtrlGrpIC_grpno.AsInteger, PkgNo, PkgSupplierCode) ;
               if AskingStatus2 <> 1 then
               Begin
                Action := eaREJECT ;
                PkgSupplierCode := '' ;
                Error:= True ;
               End
               else
               Begin
                PkgSupplierCode := PkgSupplierCode ; //EgenLevKod ;
                Error:= False ;
               End ;
              End //if MessageDlg('Paketnr '+inttostr(PkgNo)+'/'+PkgSupplierCode+' finns ej, '+' vill du skapa ett nytt paket? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              else
              Begin
               Action := eaREJECT ;
               PkgSupplierCode := '' ;
//               ErrorText:= 'Du har bestämt att inte gå vidare och skapa nytt paket, tack.' ;
//               Error:= True ;
              End ;
             End ;

        1  : Begin
              HelpStringText:= CheckIfPkgExistInHLP(cds_InvCtrlGrpIC_grpno.AsInteger, PkgNo, PkgSupplierCode) ;
              if Length(HelpStringText) > 0 then
              Begin
               ErrorText:= HelpStringText ;
               Action := eaREJECT ;
               PkgSupplierCode := '' ;
               Error:= True ;
              End
              else
              Begin
               PkgSupplierCode := PkgSupplierCode ; //EgenLevKod ;
               Error:= False ;
              End ;
             End ;
       End ;//Case
//      End ;

   if PkgSupplierCode = '' then
   Begin
    Action := eaREJECT;
   End
   else
//check that no user has reserved the package
    if dmsSystem.Pkg_Reserved(PkgNo,
        PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
    begin
     Action := eaACCEPT ;
    end ;


  if Action = eaACCEPT then
  Begin
   if cds_InvCtrl_PaReg.State in [dsBrowse] then
    cds_InvCtrl_PaReg.Edit ;
   cds_InvCtrl_PaRegPackageNo.AsInteger:= PkgNo ;
   cds_InvCtrl_PaRegSupplierCode.AsString:= PkgSupplierCode ;
   if GetPackageAttr(cds_InvCtrl_PaRegPackageNo.AsInteger, cds_InvCtrl_PaRegSupplierCode.AsString) then
   Begin
    cds_InvCtrl_PaRegANTPERLNGD.AsString  := sq_OnePkgPCS_PER_LENGTH.AsString ;
    cds_InvCtrl_PaRegPRODUKT.AsString     := sq_OnePkgPRODUCT.AsString ;
    cds_InvCtrl_PaRegSTYCK.AsInteger      := sq_OnePkgPCS.AsInteger ;
    cds_InvCtrl_PaRegAM3.AsFloat          := sq_OnePkgM3_NET.AsFloat ;
//    cds_InvCtrl_PaReg.Post ;
    sq_OnePkg.Close ;
   End ;
//   GetPkgAttr ;
//   cds_InvCtrl_PaReg.Post ;
   Error:= False ;
  End
   else
   if Action = eaREJECT then
    Begin
{     ErrorText:= 'Paketnr '+NewValue+' finns inte' ;
     Error:= True ;
     if MessageDlg('Vill du skapa ett nytt paket? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      CreateNewPkg(StrToInt(NewValue)); }
    End
    else
   if Action = eaReserved then
    Begin
     ErrorText:= 'Paketnr '+NewValue+' är reserverat av användare '+Res_UserName ;
     Error:= True ;
    End ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;
 *)
end;

procedure TfInvCtrl.cbEgenSupplierCode2Click(Sender: TObject);
begin
 cbEgenSupplierCode.Checked:= cbEgenSupplierCode2.Checked ;
 cbEgenSupplierCode3.Checked:= cbEgenSupplierCode2.Checked ;
end;

procedure TfInvCtrl.cbEgenSupplierCodeClick(Sender: TObject);
begin
 cbEgenSupplierCode2.Checked:= cbEgenSupplierCode.Checked ;
 cbEgenSupplierCode3.Checked:= cbEgenSupplierCode.Checked ; 
end;

procedure TfInvCtrl.acAngraPaRegPkgExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_InvCtrl_PaReg.Delete ;
  if cds_InvCtrl_PaReg.State in [dsEdit, dsInsert] then
   cds_InvCtrl_PaReg.Post ;
  if cds_InvCtrl_PaReg.ChangeCount > 0 then
   cds_InvCtrl_PaReg.ApplyUpdates(0) ;
 End ;
end;

procedure TfInvCtrl.acGetInLeveranserExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
  S : TStrings ;
  x : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 S:= TStringList.Create ;
 try
  With dmInvCtrl do
  Begin
   cds_InLev.Active:= False ;
   memo3.Lines.Add('######## GetInLeveranser(S) ==============================') ;
   GetInLeveranser(S) ;
   For x := 0 to S.Count - 1 do
   memo3.Lines.Add(S.Strings[x]) ;
   memo3.Lines.Add('================================================') ;
   memo3.Lines.Add('') ;
//   memo3.Lines.Add('######## GetInLeveranserAVROP(S) =========================') ;
//   GetInLeveranserAVROP(S) ;
//   For x := 0 to S.Count - 1 do
//   memo3.Lines.Add(S.Strings[x]) ;
   memo3.Lines.Add('================================================') ;
   memo3.Lines.Add('') ;
   memo3.Lines.Add('######## GetInLeveranserAVROP_Proforma(S) ================') ;
   GetInLeveranserAVROP_Proforma(S) ;
   For x := 0 to S.Count - 1 do
   memo3.Lines.Add(S.Strings[x]) ;
   memo3.Lines.Add('================================================') ;
   memo3.Lines.Add('') ;
   cds_InLev.Active:= True ;
  End ;
 finally
  S.Free ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfInvCtrl.acGetPkgDeliveredExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
  S           : TStrings ;
  x           : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 S:= TStringList.Create ;
 try
  With dmInvCtrl do
  Begin
   cds_UtLev.Active:= False ;
   memo3.Lines.Add('######## GetUTLeveranser(S) ==============================') ;
   GetUTLeveranser(S) ;
   For x := 0 to S.Count - 1 do
   memo3.Lines.Add(S.Strings[x]) ;
   memo3.Lines.Add('================================================') ;
   memo3.Lines.Add('') ;
   memo3.Lines.Add('######## GetUTLeveranserAvropsLevel(S) ===================') ;
   GetUTLeveranserAvropsLevel(S) ;
   For x := 0 to S.Count - 1 do
   memo3.Lines.Add(S.Strings[x]) ;
   memo3.Lines.Add('') ;
   cds_UtLev.Active:= True ;
  End ;
 finally
  S.Free ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfInvCtrl.acGetProductionExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try
  With dmInvCtrl do
  Begin
   cds_GetPrd.Active:= False ;
   GetProduction ;
   cds_GetPrd.Active:= True ;
  End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfInvCtrl.acDeleteUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acDelete.Enabled:= (cds_InvCtrlGrp.RecordCount > 0) ;
//    and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
  End ;
end;

procedure TfInvCtrl.ds_InvCtrlMetodDataChange(Sender: TObject;
  Field: TField);
begin
// SattKnappStatus ;
end;

procedure TfInvCtrl.acAvRegPktUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acAvRegPkt.Enabled:= (cds_InvCtrlGrp.RecordCount > 0)
       and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
  End ;
end;

procedure TfInvCtrl.acPaRegPktUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acPaRegPkt.Enabled:= (cds_InvCtrlGrp.RecordCount > 0)
    and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
  End ;
end;

procedure TfInvCtrl.acAndraPktUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acAndraPkt.Enabled:= cds_InvCtrl_LagerStallen.RecordCount > 0 ;
  End ;
end;

procedure TfInvCtrl.acAvRegPkgUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acAvRegPkg.Enabled:=  InventeringPresent ;
  End ;
end;

procedure TfInvCtrl.acPaRegPkgUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acPaRegPkg.Enabled:= InventeringPresent ;
  End ;
end;

procedure TfInvCtrl.acAngraAvRegPkgUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acAngraAvRegPkg.Enabled:= (InventeringPresent) and (cds_InvCtrl_Pkgs.RecordCount > 0)
   and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
  End ;
end;

procedure TfInvCtrl.acAngraPaRegPkgUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acAngraPaRegPkg.Enabled:= (InventeringPresent) and (cds_InvCtrl_PaReg.RecordCount > 0)
   and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
  End ;
end;

procedure TfInvCtrl.acPriceListExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_PriceListGrp.Filtered  := False ;
  TfInvPriceList.Execute ;
  cds_PriceListGrp.Active:= False ;
  sq_PriceListGrp.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
  cds_PriceListGrp.Active:= True ;
 End ;
end;

procedure TfInvCtrl.acGetNormalAvRegExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try
  With dmInvCtrl do
  Begin
//   cds_InvCtrl_Pkgs.Active:= False ;
   GetAvRegIProduction ;
//   cds_InvCtrl_Pkgs.Active:= True ;
   cds_GetAvrRegPrd.Refresh ;
  End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfInvCtrl.acPrintSummaryReportExecute(Sender: TObject);
begin
  PrintSammanstallning(Sender) ;
end;

procedure TfInvCtrl.PrintSammanstallning(Sender: TObject);
Var FormCRViewReport: TFormCRViewReport ;
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  FormCRViewReport.CreateCo('InvenSummary.RPT') ;
  if FormCRViewReport.ReportFound then
  Begin
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmInvCtrl.cds_InvCtrlGrpIC_grpno.AsInteger);
   FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
   FormCRViewReport.CRViewer91.ViewReport ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   FormCRViewReport.ShowModal ;
  End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfInvCtrl.acPrintSummaryReportUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acPrintSummaryReport.Enabled:= (InventeringPresent)
  and (cds_InvCtrlGrpStatus.AsInteger > 0) ;
 End ;
end;

procedure TfInvCtrl.acPrintInvListPerLGUpdate(Sender: TObject);
begin
 acPrintInvListPerLG.Enabled:= InventeringPresent ;
end;

procedure TfInvCtrl.acGenFinalListUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acGenFinalList.Enabled:= (InventeringPresent)
  and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
 End ;
end;

procedure TfInvCtrl.acGenInvListsUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acGenInvLists.Enabled:= (InventeringPresent)
  and (cds_InvCtrl_Pkgs.RecordCount = 0)
  and (cds_InvCtrl_PaReg.RecordCount = 0)
  and (cds_ChgPkg.RecordCount = 0)
  and (cds_InvCtrlGrpStatus.AsInteger = 0) ;
 End ;
end;

procedure TfInvCtrl.acRemoveLagerGruppRadExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_InvCtrlMetod.Delete ;
 End ;
end;

procedure TfInvCtrl.acRemoveLagerGruppRadUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acRemoveLagerGruppRad.Enabled:= (cds_InvCtrlMetod.RecordCount > 0)
  and (InventeringPresent)
  and (cds_InvCtrlGrpStatus.AsInteger = 0) ;
 End ;
end;

procedure TfInvCtrl.acHamtaAllaLGExecute(Sender: TObject);
begin
//Hämta lagergrupper
 With dmInvCtrl do
 Begin

  if cds_InvCtrlGrp.State in [dsEdit, dsInsert] then
   cds_InvCtrlGrp.Post ;
  if cds_InvCtrlGrp.ChangeCount > 0 then
   cds_InvCtrlGrp.ApplyUpdates(0) ;

  if cds_InvCtrl_LagerStallen.State in [dsEdit, dsInsert] then
   cds_InvCtrl_LagerStallen.Post ;
  if cds_InvCtrl_LagerStallen.ChangeCount > 0 then
   cds_InvCtrl_LagerStallen.ApplyUpdates(0) ;


  if cds_InvCtrlGrpVerkNo.AsInteger > 0 then
  Begin
   GetLagerGrupper ;
   //GetLagerStallen ;
  End ;
 End ;
end;

procedure TfInvCtrl.acHamtaAllaLGUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acHamtaAllaLG.Enabled:= (cds_InvCtrl_LagerStallen.RecordCount > 0)
  and (cds_InvCtrlGrpStatus.AsInteger = 0) ;
 End ;
end;

procedure TfInvCtrl.acRemoveLagerStalleExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_InvCtrl_LagerStallen.Delete ;
 End ;
end;

procedure TfInvCtrl.acAddLSExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if cds_InvCtrlGrpVerkNo.AsInteger > 0 then
  Begin
   cds_InvCtrl_LagerStallen.Insert ;
  End ;
 End ;
end;

procedure TfInvCtrl.acRemoveLagerStalleUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acRemoveLagerStalle.Enabled:= (cds_InvCtrl_LagerStallen.RecordCount > 0)
  and (cds_InvCtrlGrpStatus.AsInteger = 0) ;
 End ;
end;

procedure TfInvCtrl.acAddLSUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acAddLS.Enabled:= (cds_InvCtrlGrp.RecordCount > 0)
  and (cds_InvCtrlGrpStatus.AsInteger = 0) ;
 End ;
end;

procedure TfInvCtrl.acHamtaAllaLSExecute(Sender: TObject);
begin
//Hämta lagergrupper
 With dmInvCtrl do
 Begin
  if cds_InvCtrlGrpVerkNo.AsInteger > 0 then
  Begin
   GetLagerStallen ;
  End ;
 End ;
end;

procedure TfInvCtrl.acHamtaAllaLSUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acHamtaAllaLS.Enabled:= (cds_InvCtrlGrp.RecordCount > 0)
  and (cds_InvCtrlGrpStatus.AsInteger = 0) AND (ThisUser.CompanyNo <> 741);
 End ;
end;

procedure TfInvCtrl.acSaveUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acSave.Enabled:= (DataInteSparad)
  and (cds_InvCtrlGrpStatus.AsInteger < 2) ;
 End ;
end;

procedure TfInvCtrl.acCancelUpdateUpdate(Sender: TObject);
begin
 acCancelUpdate.Enabled:=  DataInteSparad ;
end;

procedure TfInvCtrl.acGetPkgDeliveredUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acGetPkgDelivered.Enabled:= (InventeringPresent) and (cds_InvCtrlGrpStatus.AsInteger <> 2) ;
 End ;
end;

procedure TfInvCtrl.acGetInLeveranserUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acGetInLeveranser.Enabled:= (InventeringPresent) and (cds_InvCtrlGrpStatus.AsInteger <> 2) ;
 End ;
end;

procedure TfInvCtrl.acGetProductionUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acGetProduction.Enabled:= (InventeringPresent) and (cds_InvCtrlGrpStatus.AsInteger <> 2) ;
 End ;
end;

procedure TfInvCtrl.acCreateNewPkgUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acCreateNewPkg.Enabled:= cds_InvCtrl_LagerStallen.RecordCount > 0 ;
  End ;
end;

function TfInvCtrl.CreateNewPkg(Var PackageNo : Integer) : String ;
var fSinglePkgEntry : TfSinglePkgEntry ;
begin
 //Create packages
 Result:= '' ;
 With dmInvCtrl do
 Begin
  if cds_InvCtrlGrpMaxDatum.IsNull then
  Begin
   ShowMessage('Ange maxdatum') ;
   Exit ;
  End ;
  fSinglePkgEntry   := TfSinglePkgEntry.Create(nil);
  try
   fSinglePkgEntry.lcLagerStalle.Enabled := False ;
   fSinglePkgEntry.lcLagerGrupp.Enabled  := False ;
   if fSinglePkgEntry.SetParams(
   '', //Suppliercode
   1, //1 = InventoryForm CallingFormType
   cds_InvCtrlGrpIC_grpno.AsInteger,
   0, //Operation 0 = ny
   0, //Status,
   PackageNo,
   cds_InvCtrlGrpVerkNo.AsInteger,
   cds_InvCtrlGrpVerkNo.AsInteger,
   5 {RegPoint},//Invneteringsdiff
   cds_InvCtrlMetodPIPNo.AsInteger ,
   cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger,
   cds_InvCtrlGrpInventeringsdatum.AsDateTime) = True then
   Begin
    if fSinglePkgEntry.ShowModal = mrOK then
    Begin
     Result     := fSinglePkgEntry.SUPPLIERCODE ;
     PackageNo  := fSinglePkgEntry.PackageNo ;
    End
    else
    Begin
     Result     := '' ;
     PackageNo  := 0 ;
    End ;
   End
   else
   Result:= '' ;
  finally
   FreeAndNil(fSinglePkgEntry) ;
  end;
 End ;
end;

procedure TfInvCtrl.acPrintAvRegExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Avregistrerade paket') ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Inventeringsdatum: '+SQLTimeStampToStr('yyyy-mm-dd',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp)) ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add('Löpnr: '+cds_InvCtrlGrpIC_grpno.AsString) ;

  dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link1) ;
 End ;
end;

procedure TfInvCtrl.acPrintPaRegExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add('Påregistrerade paket') ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add('Inventeringsdatum: '+SQLTimeStampToStr('yyyy-mm-dd',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp)) ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Add('Löpnr: '+cds_InvCtrlGrpIC_grpno.AsString) ;

  dxComponentPrinter1Link2.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link2.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link2) ;
 End ;
end;

procedure TfInvCtrl.acPrintPriceListKontrollExecute(Sender: TObject);
Var FormCRViewReport: TFormCRViewReport ;
    Save_Cursor : TCursor;
begin
  if dmInvCtrl.cds_InvCtrlGrpMaxDatum.IsNull then
  Begin
   ShowMessage('Ange Maxdatum!') ;
   Exit ;
  End ;

  if dmInvCtrl.cds_InvCtrlGrpMaxDatum.AsDateTime < dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsDateTime then
  Begin
   ShowMessage('Maxdatum måste vara senare än inventeringsdatum, var vänlig justera!') ;
   Exit ;
  End ;

 if dmInvCtrl.cds_InvCtrlGrpPriceListNo.IsNull then
 Begin
  ShowMessage('Välj en prislista!') ;
  Exit ;
 End ;
 acSaveExecute(Sender) ; 
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  FormCRViewReport.CreateCo('ChkPriceList.RPT') ;
  if FormCRViewReport.ReportFound then
  Begin
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmInvCtrl.cds_InvCtrlGrpIC_grpno.AsInteger);
   FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
   FormCRViewReport.CRViewer91.ViewReport ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   FormCRViewReport.ShowModal ;
  End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfInvCtrl.acPrintPriceListKontrollUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acPrintPriceListKontroll.Enabled:= (InventeringPresent) and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
 End ;
end;

procedure TfInvCtrl.SetOnOff ;
Begin
 With dmInvCtrl do
 Begin
  if (dmInvCtrl.cds_InvCtrlMetod.Active) and (dmInvCtrl.cds_InvCtrlMetod.RecordCount > 0) then
  Begin
  if dmInvCtrl.cds_InvCtrlMetodInventeringsMetod.AsInteger <> 1 then
  Begin
   Memo1.Align:= alClient ;
   Memo1.Visible:= False ;
   tsUnregisteredPackages.Enabled:= False ;
   tsDeRegisteredPackages.Enabled:= False ;
   tsChangedPackages.Enabled:= False ;
  End
  else
  Begin
   Memo1.Align:= alClient ;
   Memo1.Visible:= True ;
   tsUnregisteredPackages.Enabled:= True ;
   tsDeRegisteredPackages.Enabled:= True ;
   tsChangedPackages.Enabled:= True ;
  End ;
 End ;
 End ;//with
End ;

procedure TfInvCtrl.grdAvregDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 With dmInvCtrl do
 Begin
  if Key = VK_DOWN then
  Begin
   if cds_InvCtrl_Pkgs.State in [dsInsert, dsEdit] then
   cds_InvCtrl_Pkgs.Insert ;
  End
   else
    if Key = VK_RETURN then
     if cds_InvCtrl_Pkgs.State in [dsInsert] then ;
 End ;//with
end;


procedure TfInvCtrl.leVerkPropertiesChange(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  OppnaLagerStallen ;
 End ;
end;

procedure TfInvCtrl.acPrintInLevExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  dxComponentPrinter1Link3.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.CenterTitle.Add('Inlevererade paket') ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.CenterTitle.Add('Inventeringsdatum: '+SQLTimeStampToStr('yyyy-mm-dd',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp)) ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.LeftTitle.Add('Löpnr: '+cds_InvCtrlGrpIC_grpno.AsString) ;

  dxComponentPrinter1Link3.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link3.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link3) ;
 End ;
end;

procedure TfInvCtrl.acPrintUtLevExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  dxComponentPrinter1Link4.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Add('Utlevererade paket') ;
  dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Add('Inventeringsdatum: '+SQLTimeStampToStr('yyyy-mm-dd',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp)) ;
  dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  dxComponentPrinter1Link4.PrinterPage.PageHeader.LeftTitle.Add('Löpnr: '+cds_InvCtrlGrpIC_grpno.AsString) ;

  dxComponentPrinter1Link4.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link4.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link4) ;
 End ;
end;

procedure TfInvCtrl.acPrintProducedPkgsExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  dxComponentPrinter1Link5.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link5.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link5.PrinterPage.PageHeader.CenterTitle.Add('Producerade paket') ;
  dxComponentPrinter1Link5.PrinterPage.PageHeader.CenterTitle.Add('Inventeringsdatum: '+SQLTimeStampToStr('yyyy-mm-dd',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp)) ;
  dxComponentPrinter1Link5.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  dxComponentPrinter1Link5.PrinterPage.PageHeader.LeftTitle.Add('Löpnr: '+cds_InvCtrlGrpIC_grpno.AsString) ;

  dxComponentPrinter1Link5.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link5.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link5) ;
 End ;
end;

procedure TfInvCtrl.grdPaRegPkgDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var Action                : TEditAction;
begin
 With dmInvCtrl do
 Begin
  if Key = VK_DOWN then
  Begin
   if cds_InvCtrl_PaReg.State in [dsInsert, dsEdit] then
   cds_InvCtrl_PaReg.Insert ;
  End
   else
    if Key = VK_RETURN then
     if cds_InvCtrl_PaReg.State in [dsInsert] then ;
 End ;//with
end;

procedure TfInvCtrl.grdPaRegPkgDBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
// ShowMessage('Key = '+key) ;
end;

procedure TfInvCtrl.acAddChgPkgExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if dmInvCtrl.cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
   cds_ChgPkg.Insert ;
 End ;
end;

procedure TfInvCtrl.grdChangedDBTableView1PackageNoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  NewValue              : string;
  PkgSupplierCode       : String3;
  PkgSupplierNo         : Integer ;
  Action                : TEditAction;
  ProductNo             : Integer ;
  Save_Cursor           : TCursor;
  Res_UserName          : String ;
  PkgNo                 : Integer ;
  AskingStatus,
  AskingStatus2         : Integer ;
begin
{ NewValue:= DisplayValue ;
 if (Length(NewValue) > 0) and (dmInvCtrl.cds_ChgPkgSupplierCode.AsString > '') then
  Error := False
   else
    Error:= True ; }

 With dmInvCtrl do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
   NewValue:= DisplayValue ;
   PkgNo:= StrToInt(NewValue) ;
   if cbEgenSupplierCode2.Checked = False then
    PkgSupplierCode := dmsSystem.PkgNoToSuppCode_II(PkgNo, PkgSupplierNo, ProductNo)
     else
      PkgSupplierCode := EgenLevKod ;
//      Begin
       AskingStatus := CheckIfPkgExistInKontrollistAndInInventory(cds_InvCtrlGrpIC_grpno.AsInteger, PkgNo, PkgSupplierCode) ;
       Case AskingStatus of
        -1 : Begin
              ErrorText:= 'Paketnr '+inttostr(PkgNo)+'/'+PkgSupplierCode+' finns ej i kontrollistan.' ;
              Action := eaREJECT ;
              PkgSupplierCode := '' ;
              Error:= True ;
             End ;
        0 : Begin
              ErrorText:= 'Paketnr '+inttostr(PkgNo)+'/'+PkgSupplierCode+' är Ej aktivt.' ;
              Action := eaREJECT ;
              PkgSupplierCode := '' ;
              Error:= True ;
             End ;

        1  : Begin
              PkgSupplierCode := PkgSupplierCode ; //EgenLevKod ;
              Error:= False ;
             End ;
       End ;//Case
//      End ;

   if PkgSupplierCode = '' then
   Begin
    Action := eaREJECT;
   End
   else
//check that no user has reserved the package
    if dmsSystem.Pkg_Reserved(PkgNo,
        PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
    begin
     Action := eaACCEPT ;
    end ;


  if Action = eaACCEPT then
  Begin
   if cds_ChgPkg.State in [dsBrowse] then
    cds_ChgPkg.Edit ;
   cds_ChgPkgPackageNo.AsInteger    := PkgNo ;
   cds_ChgPkgSupplierCode.AsString  := PkgSupplierCode ;
   if GetPackageAttr(cds_ChgPkgPackageNo.AsInteger, cds_ChgPkgSupplierCode.AsString) then
   Begin
    cds_ChgPkgANTPERLNGD.AsString  := sq_OnePkgPCS_PER_LENGTH.AsString ;
    cds_ChgPkgPRODUKT.AsString     := sq_OnePkgPRODUCT.AsString ;
    cds_ChgPkgSTYCK.AsInteger      := sq_OnePkgPCS.AsInteger ;
    cds_ChgPkgAM3.AsFloat          := sq_OnePkgM3_NET.AsFloat ;
    cds_ChgPkgLogicalInventoryPointNo.AsInteger := sq_OnePkgLOG_INVENTORY_NO.AsInteger ;
    cds_ChgPkgLager.AsString        := sq_OnePkgLager.AsString ;
//    cds_ChgPkg.Post ;
    sq_OnePkg.Close ;
   End ;
//   GetPkgAttr ;
//   cds_ChgPkg.Post ;
   Error:= False ;
  End
   else
   if Action = eaREJECT then
    Begin
{     ErrorText:= 'Paketnr '+NewValue+' finns inte' ;
     Error:= True ;
     if MessageDlg('Vill du skapa ett nytt paket? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      CreateNewPkg(StrToInt(NewValue)); }
    End
    else
   if Action = eaReserved then
    Begin
     ErrorText:= 'Paketnr '+NewValue+' är reserverat av användare '+Res_UserName ;
     Error:= True ;
    End ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;
end;

procedure TfInvCtrl.ChangePkg(const PackageNo : Integer;const PkgSupplierCode : String);
var fSinglePkgEntry : TfSinglePkgEntry ;
begin
 //Create packages
 With dmInvCtrl do
 Begin
  if cds_InvCtrlGrpMaxDatum.IsNull then
  Begin
   ShowMessage('Ange maxdatum') ;
   Exit ;
  End ;
//  dm_SinglePkg  := Tdm_SinglePkg.Create(Nil) ;
  fSinglePkgEntry   := TfSinglePkgEntry.Create(nil);

  try
  fSinglePkgEntry.SetParams(
  PkgSupplierCode, //Suppliercode
  1, //1 = InventoryForm CallingFormType
  cds_InvCtrlGrpIC_grpno.AsInteger,
  1, //Operation 1 = Ändra
  0, //Status,
  PackageNo,
  cds_InvCtrlGrpVerkNo.AsInteger,
  cds_InvCtrlGrpVerkNo.AsInteger,
  5 {RegPoint},//Invneteringsdiff
  cds_InvCtrlMetodPIPNo.AsInteger ,
  cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger,
  cds_InvCtrlGrpMaxDatum.AsDateTime) ;
  fSinglePkgEntry.ShowModal ;

  finally
   FreeAndNil(fSinglePkgEntry) ;
//   FreeAndNil(dmsPkg) ;
  end;
 End ;
end;

procedure TfInvCtrl.acUndoChangePkgExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_ChgPkg.Delete ;
  if cds_ChgPkg.ChangeCount > 0 then
   cds_ChgPkg.ApplyUpdates(0) ;
 End ;
end;

procedure TfInvCtrl.acChangePkgExecute(Sender: TObject);
Var SupplierCode  : String ;
    PackageNo     : Integer ;
begin
 With dmInvCtrl do
 Begin
  PackageNo     := cds_ChgPkgPackageNo.AsInteger ;
  SupplierCode  := cds_ChgPkgSupplierCode.AsString ;
  ChangePkg(cds_ChgPkgPackageNo.AsInteger, cds_ChgPkgSupplierCode.AsString);
  UpdLIPCtrlPkg (cds_InvCtrlGrpIC_grpno.AsInteger, PackageNo, 8{Ändra Operation }, SupplierCode) ;
  cds_ChgPkg.Refresh ;
  if cds_ChgPkg.Locate('PackageNo;SupplierCode', VarArrayOf([PackageNo, SupplierCode]),[]) then ;
//  cds_ChgPkgDateCreated.AsSQLTimeStamp        := DateTimeToSQLTimeStamp(Now) ;
 End ;
end;

procedure TfInvCtrl.acPrintChangedPkgsExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  dxComponentPrinter1Link6.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link6.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link6.PrinterPage.PageHeader.CenterTitle.Add('Ändrade paket') ;
  dxComponentPrinter1Link6.PrinterPage.PageHeader.CenterTitle.Add('Inventeringsdatum: '+SQLTimeStampToStr('yyyy-mm-dd',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp)) ;
  dxComponentPrinter1Link6.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  dxComponentPrinter1Link6.PrinterPage.PageHeader.LeftTitle.Add('Löpnr: '+cds_InvCtrlGrpIC_grpno.AsString) ;

  dxComponentPrinter1Link6.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link6.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link6) ;
 End ;
end;

procedure TfInvCtrl.acPrintAvRegIProductionExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  dxComponentPrinter1Link7.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link7.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link7.PrinterPage.PageHeader.CenterTitle.Add('Avregistrerade i produktion') ;
  dxComponentPrinter1Link7.PrinterPage.PageHeader.CenterTitle.Add('Inventeringsdatum: '+SQLTimeStampToStr('yyyy-mm-dd',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp)) ;
  dxComponentPrinter1Link7.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  dxComponentPrinter1Link7.PrinterPage.PageHeader.LeftTitle.Add('Löpnr: '+cds_InvCtrlGrpIC_grpno.AsString) ;

  dxComponentPrinter1Link7.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link7.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link7) ;
 End ;
end;

procedure TfInvCtrl.acUndoChangePkgUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acUndoChangePkg.Enabled:= (cds_ChgPkg.RecordCount > 0)
  and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
 End ;
end;

procedure TfInvCtrl.acChangePkgUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acChangePkg.Enabled:= (cds_ChgPkg.RecordCount > 0)
  and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
 End ;
end;

procedure TfInvCtrl.cbEgenSupplierCode3Click(Sender: TObject);
begin
 cbEgenSupplierCode.Checked:= cbEgenSupplierCode3.Checked ;
 cbEgenSupplierCode2.Checked:= cbEgenSupplierCode3.Checked ;
end;

procedure TfInvCtrl.acPrintKontrollistaExecute(Sender: TObject);
Var FormCRViewReport: TFormCRViewReport ;
    Save_Cursor : TCursor;
begin
//dmInvCtrl.ds_InvCtrlMetod
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
// if dmInvCtrl.cds_InvCtrlGrpStatus.AsInteger < 3 then
 Begin
  if dmInvCtrl.cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
   FormCRViewReport.CreateCo('InventeringPerPktNr.rpt')
    else
      FormCRViewReport.CreateCo('InventeringPerPktTyp.RPT') ;

 End ;
{ else
 Begin
  if dmInvCtrl.cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
   FormCRViewReport.CreateCo('InvenLagerListaPktNr.RPT')
    else
      FormCRViewReport.CreateCo('InvenLagerListaPktTyp.RPT') ;
 End ; }

  if FormCRViewReport.ReportFound then
  Begin
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmInvCtrl.cds_InvCtrlMetodIC_grpNo.AsInteger);
   FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(dmInvCtrl.cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger);
   FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
   FormCRViewReport.CRViewer91.ViewReport ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }   
   FormCRViewReport.ShowModal ;
  End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfInvCtrl.acPrintAllLGExecute(Sender: TObject);
Var FormCRViewReport: TFormCRViewReport ;
    Save_Cursor : TCursor;
begin
//dmInvCtrl.ds_InvCtrlMetod
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
// if dmInvCtrl.cds_InvCtrlGrpStatus.AsInteger < 3 then
 Begin
  if dmInvCtrl.cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
   FormCRViewReport.CreateCo('InvListPktNr.RPT')
    else
      FormCRViewReport.CreateCo('InventeringPerPktTyp.RPT') ;
 End ;
{ else
 Begin
  if dmInvCtrl.cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
   FormCRViewReport.CreateCo('InvenLagerListaPktNr.RPT')
    else
      FormCRViewReport.CreateCo('InvenLagerListaPktTyp.RPT') ; 
 End ; }

  if FormCRViewReport.ReportFound then
  Begin
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmInvCtrl.cds_InvCtrlMetodIC_grpNo.AsInteger);
//  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(dmInvCtrl.cds_InvCtrlMetodLogicalInventoryName.AsString);
   FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
   FormCRViewReport.CRViewer91.ViewReport ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   FormCRViewReport.ShowModal ;
  End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfInvCtrl.acPrintAvRegUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acPrintAvReg.Enabled:= cds_InvCtrl_Pkgs.RecordCount > 0 ;
 End ;
end;

procedure TfInvCtrl.acPrintKontrollistaUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acPrintKontrollista.Enabled:= InventeringPresent ;
 End ;
end;

procedure TfInvCtrl.acPrintPaRegUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acPrintPaReg.Enabled:= cds_InvCtrl_PaReg.RecordCount > 0 ;
 End ;
end;

procedure TfInvCtrl.acPrintChangedPkgsUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acPrintChangedPkgs.Enabled:= cds_ChgPkg.RecordCount > 0 ;
 End ;
end;

procedure TfInvCtrl.acPrintAllLGUpdate(Sender: TObject);
begin
 acPrintAllLG.Enabled:= InventeringPresent ;
end;

procedure TfInvCtrl.acPrintAvRegIProductionUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acPrintAvRegIProduction.Enabled:= cds_GetAvrRegPrd.RecordCount > 0 ;
  End ;
end;

procedure TfInvCtrl.acPrintUtLevUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acPrintUtLev.Enabled:= cds_UtLev.RecordCount > 0 ;
  End ;
end;

procedure TfInvCtrl.acPrintInLevUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acPrintInLev.Enabled:= cds_InLev.RecordCount > 0 ;
  End ;
end;

procedure TfInvCtrl.acPrintProducedPkgsUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acPrintProducedPkgs.Enabled:= cds_GetPrd.RecordCount > 0 ;
  End ;
end;

procedure TfInvCtrl.acCreateInventeringsLista_IIExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
  if dmInvCtrl.cds_InvCtrlGrpMaxDatum.IsNull then
  Begin
   ShowMessage('Ange Maxdatum!') ;
   Exit ;
  End ;

  if dmInvCtrl.cds_InvCtrlGrpMaxDatum.AsDateTime < dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsDateTime then
  Begin
   ShowMessage('Maxdatum måste vara senare än inventeringsdatum, var vänlig justera!') ;
   Exit ;
  End ;
  
 //Skapa lager listor
 if MessageDlg('Vill du skapa inventeringslistan utan händelser som avreg i production, utleveranser, inleveranser och producerat?'
 ,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
 Application.ProcessMessages ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try

 With dmInvCtrl do
 Begin
  Try
   acSaveExecute(Sender) ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   if cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
   Begin


   //Inleveranser, laster som har ett lastdatum mindre än maxdatum
   //och är ankomstregistrerad
   //och finns ej i ICR
  Memo2.Lines.Clear ;
  Memo2.Clear ;
  Memo2.Lines.Add('Start') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  (*
   //Markera bort paket som är avregistrerade före maxdatum
   acGetNormalAvRegExecute(Sender) ;
  Memo2.Lines.Add('acGetNormalAvRegExecute(Sender)') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;

   //Markera bort paket som är levererade före maxdatum
   acGetPkgDeliveredExecute(Sender) ;
  Memo2.Lines.Add('acGetPkgDeliveredExecute(Sender)') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;

   acGetInLeveranserExecute(Sender) ;
  Memo2.Lines.Add('acGetInLeveranserExecute(Sender)') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;

   //Lägg till paket producerade efter inventeringsdatum och ej avregistrerat före maxdatum
   acGetProductionExecute(Sender) ;
  Memo2.Lines.Add('acGetProductionExecute(Sender)') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ; *)


  Memo2.Lines.Add('Generera inventeringslistor utan händelser') ;
  GenerateInventeringsListan_II ;
//   SparaLagerListor_Local ;

  Memo2.Lines.Add(DateTimeToStr(now)) ;
  Memo2.Lines.Add('Klart') ;

  End ;//if...
  Except
  End ;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;


procedure TfInvCtrl.acChangePaRegPkgExecute(Sender: TObject);
Var SupplierCode  : String ;
    PackageNo     : Integer ;
begin
 With dmInvCtrl do
 Begin
  PackageNo     := cds_InvCtrl_PaRegPackageNo.AsInteger ;
  SupplierCode  := cds_InvCtrl_PaRegSupplierCode.AsString ;
  cds_InvCtrl_PaReg.AfterPost:= nil ;
  Try
  ChangePkg(cds_InvCtrl_PaRegPackageNo.AsInteger, cds_InvCtrl_PaRegSupplierCode.AsString) ;
  cds_InvCtrl_PaReg.Refresh ;
  UpdLIPCtrlPkg (cds_InvCtrlGrpIC_grpno.AsInteger, PackageNo, 5{PåReg Operation }, SupplierCode) ;
  if cds_InvCtrl_PaReg.Locate('PackageNo;SupplierCode', VarArrayOf([PackageNo, SupplierCode]),[]) then ;
  Finally
   cds_InvCtrl_PaReg.AfterPost:= cds_InvCtrl_PaRegAfterPost ;
  End ;
 End ;
end;

procedure TfInvCtrl.acConfirmInventeringExecute(Sender: TObject);
begin
 if MessageDlg('Vill du godkänna inventeringen? '
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmInvCtrl do
 Begin
  Application.ProcessMessages ;
  if cds_InvCtrlGrp.State = dsBrowse then
  cds_InvCtrlGrp.Edit ;
//  cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
  cds_InvCtrlGrpStatus.AsInteger := 2 ;
  cds_InvCtrlGrp.Post ;
  acSaveExecute(Sender) ;
  SetInventeringReadOnly ;
 End ;
end;

procedure TfInvCtrl.acConfirmInventeringUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acConfirmInventering.Enabled:= (InventeringPresent)
  and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
 End ;
end;

procedure TfInvCtrl.SetInventeringReadOnly ;
begin
 With dmInvCtrl do
 Begin
  if cds_InvCtrlGrpStatus.AsInteger = 2 then
  Begin
   cds_InvCtrlGrp.ReadOnly            := True ;
   cds_InvCtrl_Pkgs.ReadOnly          := True ;
   cds_InvCtrl_PaReg.ReadOnly         := True ;
   cds_ChgPkg.ReadOnly                := True ;
   cds_InvCtrl_LagerStallen.ReadOnly  := True ;
   cds_InvCtrlMetod.ReadOnly          := True ;
  End
  else
  if cds_InvCtrlGrpStatus.AsInteger = 1 then
  Begin
   cds_InvCtrlGrp.ReadOnly            := False ;
   cds_InvCtrl_Pkgs.ReadOnly          := False ;
   cds_InvCtrl_PaReg.ReadOnly         := False ;
   cds_ChgPkg.ReadOnly                := False ;
   cds_InvCtrl_LagerStallen.ReadOnly  := True ;
   cds_InvCtrlMetod.ReadOnly          := True ;
  End
  else
  if cds_InvCtrlGrpStatus.AsInteger = 0 then
  Begin
   cds_InvCtrlGrp.ReadOnly            := False ;
   cds_InvCtrl_Pkgs.ReadOnly          := True ;
   cds_InvCtrl_PaReg.ReadOnly         := True ;
   cds_ChgPkg.ReadOnly                := True ;
   cds_InvCtrl_LagerStallen.ReadOnly  := False ;
   cds_InvCtrlMetod.ReadOnly          := False ;
  End ;
 End ;//with
end;

procedure TfInvCtrl.acChangePaRegPkgUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acChangePaRegPkg.Enabled:= (InventeringPresent) and (cds_InvCtrl_PaReg.RecordCount > 0)
   and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
  End ;
end;

procedure TfInvCtrl.acCreateInventeringsLista_IIUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acCreateInventeringsLista_II.Enabled:= (InventeringPresent) and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
  End ;
end;

procedure TfInvCtrl.acGenSummaryExecute(Sender: TObject);
Var Save_Cursor : TCursor;
begin
  if dmInvCtrl.cds_InvCtrlGrpMaxDatum.IsNull then
  Begin
   ShowMessage('Ange Maxdatum!') ;
   Exit ;
  End ;

  if dmInvCtrl.cds_InvCtrlGrpMaxDatum.AsDateTime < dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsDateTime then
  Begin
   ShowMessage('Maxdatum måste vara senare än inventeringsdatum, var vänlig justera!') ;
   Exit ;
  End ;

 if dmInvCtrl.cds_InvCtrlGrpPriceListNo.IsNull then
 Begin
  ShowMessage('Välj en prislista!') ;
  Exit ;
 End ;

 acSaveExecute(Sender) ;
 
 if MessageDlg('Vill du skapa sammanställningen?'
 ,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
 Application.ProcessMessages ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  With dmInvCtrl do
  Begin
   if cds_InvCtrlGrpIC_grpno.AsInteger < 1 then
    Exit ;
   sp_GenInvenSummary.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
   sp_GenInvenSummary.ExecProc ;
  End ;//With...
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;
end;

procedure TfInvCtrl.acGenSummaryUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acGenSummary.Enabled:= (InventeringPresent) and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
 End ;
end;

procedure TfInvCtrl.acPaRegPktExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if StrToIntDef(Trim(ePkgNo.Text),0) > 0 then
  Begin
  if StrToIntDef(Trim(eNoOfPkgs.Text),0) > 0 then
  Begin
   if dmInvCtrl.cds_InvCtrlMetodInventeringsMetod.AsInteger <> 1 then
    PaRegistreraPaketMetod_PktTYP(Sender) ;
  End
  else
   ShowMessage('Ange antal paket') ;
  End
  else
   ShowMessage('Ange en pakettypid') ;
 End ;
end;

procedure TfInvCtrl.acGetNormalAvRegUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acGetNormalAvReg.Enabled:=  (InventeringPresent) and (cds_InvCtrlGrpStatus.AsInteger <> 2) ;
 End ;
end;

procedure TfInvCtrl.grdAvregDBTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  AAllow := grdAvregDBTableView1.Controller.NewItemRecordFocused;
end;

procedure TfInvCtrl.grdPaRegPkgDBTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
   AAllow := grdPaRegPkgDBTableView1.Controller.NewItemRecordFocused;
end;

procedure TfInvCtrl.grdChangedDBTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
   AAllow := grdChangedDBTableView1.Controller.NewItemRecordFocused;
end;

procedure TfInvCtrl.acPkgInfoAvRegExecute(Sender: TObject);
begin
 PkgInfo(
 grdAvregDBTableView1PackageNo.DataBinding.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdAvregDBTableView1SupplierCode.DataBinding.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.PkgInfo(const PackageNo : Integer;const SupplierCode : String);
var frmPkgInfo: TfrmPkgInfo;
begin
 With dmInventory do
 Begin
  frmPkgInfo:= TfrmPkgInfo.Create(Nil);
  Try
//   grdChangedDBTableView1PackageNo.DataBinding.DataController.Values
//   [grdChangedDBTableView1PackageNo.DataBinding.DataController.FocusedRecordIndex,2] ;

//   ShowMessage('Sender.ClassName = '+Sender.ClassName);
{   if Sender is TcxGridDBTableView then ShowMessage('TcxGridDBTableView');
   if Sender is TcxGrid then ShowMessage('TcxGrid');

   PackageNo:= (Sender as TcxGridDBColumn).DataBinding.DataController.Values
   [(Sender as TcxGridDBColumn).DataBinding.DataController.FocusedRecordIndex,2] ; }

   frmPkgInfo.PackageNo:= PackageNo ;
   frmPkgInfo.SupplierCode:= SupplierCode ;

   frmPkgInfo.ShowModal ;
  Finally
   FreeAndNil(frmPkgInfo) ;
  End ;
 End ;
end;


procedure TfInvCtrl.acPkgInfoPaRegExecute(Sender: TObject);
begin
 PkgInfo(
 grdPaRegPkgDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdPaRegPkgDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPkgInfoAndraPktExecute(Sender: TObject);
begin
 PkgInfo(
 grdChangedDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdChangedDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPkgInfoAvRegIProdExecute(Sender: TObject);
begin
 PkgInfo(
 grdAvRegProdDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdAvRegProdDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPkgInfoUtlevExecute(Sender: TObject);
begin
 PkgInfo(
 grdLevPktDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdLevPktDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPkgInfoInLevExecute(Sender: TObject);
begin
 PkgInfo(
 grdInLevDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdInLevDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPkgInfoProdExecute(Sender: TObject);
begin
 PkgInfo(
 grdPrdDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdPrdDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.PaketLogg(const PackageNo : Integer;const SupplierCode : String) ;
Var fPkgLog : TfPkgLog ;
begin
 With dmInventory do
 Begin
  if ThisUser.CanView[dcAdd_packagesSec] then
  Begin
   fPkgLog:= TfPkgLog.Create(Nil);
   Try
   fPkgLog.PackageNo:= PackageNo ;
   fPkgLog.SupplierCode:= SupplierCode ;
   fPkgLog.ShowModal ;
   Finally
    FreeAndNil(fPkgLog) ;
   End ;
  End ;
 End ;//with
end;


procedure TfInvCtrl.acPktLoggPaRegExecute(Sender: TObject);
begin
 PaketLogg(
 grdPaRegPkgDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdPaRegPkgDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPktLoggAvRegExecute(Sender: TObject);
begin
 PaketLogg(
 grdAvregDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdAvregDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPktLoggAndraExecute(Sender: TObject);
begin
 PaketLogg(
 grdChangedDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdChangedDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPktLoggAvRegIProdExecute(Sender: TObject);
begin
 PaketLogg(
 grdAvRegProdDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdAvRegProdDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPktLoggUtLevExecute(Sender: TObject);
begin
 PaketLogg(
 grdLevPktDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdLevPktDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPktLoggInLevExecute(Sender: TObject);
begin
 PaketLogg(
 grdInLevDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdInLevDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPktLoggProduceratExecute(Sender: TObject);
begin
 PaketLogg(
 grdPrdDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdPrdDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.lcPriceListPropertiesInitPopup(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if cds_InvCtrlMetodOwnerNo.AsInteger = 741 then
  Begin
   cds_PriceListGrp.Filter    := 'LIPNo = '+cds_InvCtrlMetodLogicalInventoryPointNo.AsString ;
   cds_PriceListGrp.Filtered  := True ;
  End ;
 End ;
end;

procedure TfInvCtrl.lcPriceListPropertiesCloseUp(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if cds_InvCtrlMetodOwnerNo.AsInteger = 741 then
  Begin
   cds_PriceListGrp.Filtered  := False ;
  End ;
 End ;
end;

procedure TfInvCtrl.acPickPkgNosExecute(Sender: TObject);
var fPickPkgNo: TfPickPkgNo;
begin
 With dmInvCtrl do
 Begin
  cds_InvCtrl_Pkgs.DisableControls ;
  fPickPkgNo:= TfPickPkgNo.Create(nil);
  try
   fPickPkgNo.Caption               := 'Ange paket att avregistrera' ;
   dmInvCtrl.InventoryPkgs          := True ;
   fPickPkgNo.LIPNo                 := cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
   fPickPkgNo.PIPNo                 := cds_InvCtrlMetodPIPNo.AsInteger ;   
   fPickPkgNo.ic_GrpNo              := cds_InvCtrlMetodIC_grpNo.AsInteger ;
   fPickPkgNo.LabelPIPName.Caption  := cds_InvCtrlMetodLogicalInventoryName.AsString ;
   if fPickPkgNo.ShowModal = mrOK then
   Begin
    Application.ProcessMessages ;
    AddMarkedPkgsTo_AvRegPkgsTable ;
   End ;
  finally
   FreeAndNil(fPickPkgNo) ;
   cds_InvCtrl_Pkgs.EnableControls ;
  end;
 End ;
end;

procedure TfInvCtrl.AddMarkedPkgsTo_PaRegPkgsTable ;
var
  Action                : TEditAction;
  Save_Cursor           : TCursor;
  Res_UserName          : String ;
  AskingStatus          : Integer ;
  HelpStringText        : String ;
begin
 With dmInvCtrl do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  mtSelectedPkgNo.Filter    := 'Markerad = 1' ;
  mtSelectedPkgNo.Filtered  := True ;
  mtSelectedPkgNo.Last ;
  While not mtSelectedPkgNo.Bof do
  Begin
       AskingStatus := CheckIfPkgExist(cds_InvCtrlGrpIC_grpno.AsInteger, mtSelectedPkgNoPAKETNR.AsInteger, mtSelectedPkgNoLEVKOD.AsString) ;
       Case AskingStatus of
        -1 : Begin
              ShowMessage('Paketet finns i kontrollistan') ;
              Action := eaREJECT ;
             End ;
        -2 : Begin
              ShowMessage('Paketet är aktivt '+ dmsSystem.Pkg_Info(mtSelectedPkgNoPAKETNR.AsInteger, Trim(mtSelectedPkgNoLEVKOD.AsString))) ;
              Action := eaREJECT ;
             End ;

        -3 : Begin
              ShowMessage('Paketnr '+inttostr(mtSelectedPkgNoPAKETNR.AsInteger)+'/'+mtSelectedPkgNoLEVKOD.AsString+' finns ej') ;
              Action := eaREJECT ;
             End ;

        1  : Begin
              HelpStringText:= CheckIfPkgExistInHLP(cds_InvCtrlGrpIC_grpno.AsInteger, mtSelectedPkgNoPAKETNR.AsInteger, mtSelectedPkgNoLEVKOD.AsString) ;
              if Length(HelpStringText) > 0 then
              Begin
               ShowMessage(HelpStringText) ;
               Action := eaREJECT ;
              End   ;
             End ;
       End ;//Case

//check that no user has reserved the package
    if dmsSystem.Pkg_Reserved(mtSelectedPkgNoPAKETNR.AsInteger,
        mtSelectedPkgNoLEVKOD.AsString, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
    begin
     Action := eaACCEPT ;
    end ;


  if Action = eaACCEPT then
  Begin
   cds_InvCtrl_PaReg.Insert ;
   cds_InvCtrl_PaRegPackageNo.AsInteger   := mtSelectedPkgNoPAKETNR.AsInteger ;
   cds_InvCtrl_PaRegSupplierCode.AsString := mtSelectedPkgNoLEVKOD.AsString ;
   if GetPackageAttr(cds_InvCtrl_PaRegPackageNo.AsInteger, cds_InvCtrl_PaRegSupplierCode.AsString) then
   Begin
    cds_InvCtrl_PaRegANTPERLNGD.AsString  := sq_OnePkgPCS_PER_LENGTH.AsString ;
    cds_InvCtrl_PaRegPRODUKT.AsString     := sq_OnePkgPRODUCT.AsString ;
    cds_InvCtrl_PaRegSTYCK.AsInteger      := sq_OnePkgPCS.AsInteger ;
    cds_InvCtrl_PaRegAM3.AsFloat          := sq_OnePkgM3_NET.AsFloat ;
    sq_OnePkg.Close ;
   End ;
   cds_InvCtrl_PaReg.Post ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage('Paketnr '+mtSelectedPkgNoPAKETNR.AsString+' finns inte längre') ;
    End
    else
   if Action = eaReserved then
    Begin
     ShowMessage('Paketnr '+mtSelectedPkgNoPAKETNR.AsString+' är reserverat av användare '+Res_UserName) ;
    End ;
   mtSelectedPkgNo.Prior ;
  End ;//While not mtSelectedPkgNo.Bof do

  finally
   mtSelectedPkgNo.Filtered  := False ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;//with
end;

procedure TfInvCtrl.AddMarkedPkgsTo_AvRegPkgsTable ;
var
  Action                : TEditAction;
  Save_Cursor           : TCursor;
  Res_UserName          : String ;
begin
 With dmInvCtrl do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  mtSelectedPkgNo.Filter    := 'Markerad = 1' ;
  mtSelectedPkgNo.Filtered  := True ;
  mtSelectedPkgNo.Last ;
  While not mtSelectedPkgNo.Bof do
  Begin
   Screen.Cursor := crHourGlass;    { Show hourglass cursor }
   Action := eaReserved ;
//check that no user has reserved the package
   if dmsSystem.Pkg_Reserved(
    mtSelectedPkgNoPAKETNR.AsInteger,
    mtSelectedPkgNoLEVKOD.AsString, Self.Name, Res_UserName
    ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
    Begin
     Action := eaACCEPT ;
    End ;

    if Action = eaACCEPT then
    Begin
     cds_InvCtrl_Pkgs.Insert ;
     cds_InvCtrl_PkgsPackageNo.AsInteger    := mtSelectedPkgNoPAKETNR.AsInteger ;
     cds_InvCtrl_PkgsSupplierCode.AsString  := mtSelectedPkgNoLEVKOD.AsString ;
     if GetPackageAttr(cds_InvCtrl_PkgsPackageNo.AsInteger, cds_InvCtrl_PkgsSupplierCode.AsString) then
     Begin
      cds_InvCtrl_PkgsANTPERLNGD.AsString  := sq_OnePkgPCS_PER_LENGTH.AsString ;
      cds_InvCtrl_PkgsPRODUKT.AsString     := sq_OnePkgPRODUCT.AsString ;
      cds_InvCtrl_PkgsSTYCK.AsInteger      := sq_OnePkgPCS.AsInteger ;
      cds_InvCtrl_PkgsAM3.AsFloat          := sq_OnePkgM3_NET.AsFloat ;
      cds_InvCtrl_PkgsLager.AsString       := sq_OnePkgLager.AsString ;
      sq_OnePkg.Close ;
     End ;
     cds_InvCtrl_Pkgs.Post ;
    End//if Action = eaACCEPT then
     else
     if Action = eaREJECT then
      Begin
       ShowMessage('Paketnr '+mtSelectedPkgNoPAKETNR.AsString+' finns inte längre') ;
      End
       else
        if Action = eaReserved then
        Begin
         ShowMessage('Paketnr '+mtSelectedPkgNoPAKETNR.AsString+' är reserverat av användare '+Res_UserName) ;
        End ;
   mtSelectedPkgNo.Prior ;
  End ;//While
  finally
   mtSelectedPkgNo.Filtered  := False ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;//With..
end;

procedure TfInvCtrl.acPickPkgNosUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acPickPkgNos.Enabled:= (InventeringPresent)
  and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
 End ;
end;

procedure TfInvCtrl.acPrintInvListaIIExecute(Sender: TObject);
var FormCRViewReport: TFormCRViewReport ;
    Save_Cursor : TCursor;
begin
 With dmInvCtrl do
 Begin
  GenInvListaII ;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  FormCRViewReport:= TFormCRViewReport.Create(Nil);
  Try
   FormCRViewReport.CreateCo('INVENT_BY_PKGNo.rpt') ;
   if FormCRViewReport.ReportFound then
   Begin
    Screen.Cursor := crSQLWait;    { Show hourglass cursor }
    FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
    FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
    FormCRViewReport.CRViewer91.ViewReport ;
    Screen.Cursor := crSQLWait;    { Show hourglass cursor }
    FormCRViewReport.ShowModal ;
   End ;
  Finally
   FreeAndNil(FormCRViewReport)  ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;

 End ;
end;

procedure TfInvCtrl.acPrintInvListaIIUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acPrintInvListaII.Enabled:= (InventeringPresent)
  and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
 End ;
end;

procedure TfInvCtrl.acPrintAvregBeforeInvDateAndExistInKLExecute(Sender: TObject);
Begin
 With dmInvCtrl do
 Begin
  dxComponentPrinter1Link8.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link8.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link8.PrinterPage.PageHeader.CenterTitle.Add('Avregistrerade före inventeringsdatum (och med på kontrollistan)') ;
  dxComponentPrinter1Link8.PrinterPage.PageHeader.CenterTitle.Add('Inventeringsdatum: '+SQLTimeStampToStr('yyyy-mm-dd',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp)) ;
  dxComponentPrinter1Link8.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  dxComponentPrinter1Link8.PrinterPage.PageHeader.LeftTitle.Add('Löpnr: '+cds_InvCtrlGrpIC_grpno.AsString) ;

  dxComponentPrinter1Link8.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link8.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link8) ;
 End ;
End ;

procedure TfInvCtrl.acAvregBeforeInvDateAndExistInKLExecute(
  Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try
  With dmInvCtrl do
  Begin
   GetAvRegBeforeInventoryDateAndExistInKL ;
   cds_GetAvrBefore.Refresh ;
  End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfInvCtrl.acPrintAvregBeforeInvDateAndExistInKLUpdate(
  Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acPrintAvregBeforeInvDateAndExistInKL.Enabled:= cds_GetAvrBefore.RecordCount > 0 ;
  End ;
end;

procedure TfInvCtrl.acAvregBeforeInvDateAndExistInKLUpdate(
  Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acAvregBeforeInvDateAndExistInKL.Enabled:= (InventeringPresent) and (cds_InvCtrlGrpStatus.AsInteger <> 2) ;
  End ;
end;

procedure TfInvCtrl.acGetProductionBeforeInvDateExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try
  With dmInvCtrl do
  Begin
   cds_GetPrdBefore.Active:= False ;
   GetProductionBefore ;
   cds_GetPrdBefore.Active:= True ;
  End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfInvCtrl.acPrintProductionBeforeInvDateExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  dxComponentPrinter1Link9.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link9.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link9.PrinterPage.PageHeader.CenterTitle.Add('Paket producerade före inventeringsdatum (ej med på kontrollistan)') ;
  dxComponentPrinter1Link9.PrinterPage.PageHeader.CenterTitle.Add('Inventeringsdatum: '+SQLTimeStampToStr('yyyy-mm-dd',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp)) ;
  dxComponentPrinter1Link9.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  dxComponentPrinter1Link9.PrinterPage.PageHeader.LeftTitle.Add('Löpnr: '+cds_InvCtrlGrpIC_grpno.AsString) ;

  dxComponentPrinter1Link9.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link9.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link9) ;
 End ;
end;

procedure TfInvCtrl.acGetProductionBeforeInvDateUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acGetProductionBeforeInvDate.Enabled:= (InventeringPresent) and (cds_InvCtrlGrpStatus.AsInteger <> 2) ;
 End ;
end;

procedure TfInvCtrl.acPrintProductionBeforeInvDateUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acPrintProductionBeforeInvDate.Enabled:= cds_GetPrdBefore.RecordCount > 0 ;
  End ;
end;

procedure TfInvCtrl.acPktLoggAvregBeforeInvDateExecute(Sender: TObject);
begin
 PaketLogg(
 grdAvregBeforeInvDateDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdAvregBeforeInvDateDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPktLoggProductionBeforeInvDateExecute(
  Sender: TObject);
begin
 PaketLogg(
 grdProductionBeforeInvDateDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdProductionBeforeInvDateDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPkgInfoSAvregBeforeInvDateExecute(Sender: TObject);
begin
 PkgInfo(
 grdAvregBeforeInvDateDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdAvregBeforeInvDateDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPkgInfoProductionBeforeInvDateExecute(
  Sender: TObject);
begin
 PkgInfo(
 grdProductionBeforeInvDateDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdProductionBeforeInvDateDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPrintInvCtrlByPkgNoExecute(Sender: TObject);
var FormCRViewReport: TFormCRViewReport ;
    Save_Cursor : TCursor;
begin
 With dmInvCtrl do
 Begin
  GetCtrlPkgs ;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  FormCRViewReport:= TFormCRViewReport.Create(Nil);
  Try
   FormCRViewReport.CreateCo('InvCtrlByPkgNo.rpt') ;
   if FormCRViewReport.ReportFound then
   Begin
    Screen.Cursor := crSQLWait;    { Show hourglass cursor }
    FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
    FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
    FormCRViewReport.CRViewer91.ViewReport ;
    Screen.Cursor := crSQLWait;    { Show hourglass cursor }
    FormCRViewReport.ShowModal ;
   End ;
  Finally
   FreeAndNil(FormCRViewReport)  ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;

 End ;
end;

procedure TfInvCtrl.acPickInActivePkgsNosExecute(Sender: TObject);
var fPickPkgNo: TfPickPkgNo;
begin
 With dmInvCtrl do
 Begin
  cds_InvCtrl_Pkgs.DisableControls ;
  fPickPkgNo:= TfPickPkgNo.Create(nil);
  try
   fPickPkgNo.Caption               := 'Plocka paket att påregistrera' ;
   dmInvCtrl.InventoryPkgs          := False ;
   fPickPkgNo.LIPNo                 := 0 ;//cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
   fPickPkgNo.PIPNo                 := cds_InvCtrlMetodPIPNo.AsInteger ;
   fPickPkgNo.ic_GrpNo              := cds_InvCtrlMetodIC_grpNo.AsInteger ;
   fPickPkgNo.LabelPIPName.Caption  := dmInvCtrl.cds_InvCtrl_LagerStallenLagerstalle.AsString+'/'+dmInvCtrl.cds_InvCtrlMetodLogicalInventoryName.AsString ;
   if fPickPkgNo.ShowModal = mrOK then
   Begin
    Application.ProcessMessages ;
    AddMarkedPkgsTo_PaRegPkgsTable ;
   End ;
  finally
   FreeAndNil(fPickPkgNo) ;
   cds_InvCtrl_Pkgs.EnableControls ;
  end;
 End ;
end;

procedure TfInvCtrl.acPickInActivePkgsNosUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acPickInActivePkgsNos.Enabled:= (InventeringPresent)
  and (cds_InvCtrlGrpStatus.AsInteger = 1) ;
 End ;
end;

procedure TfInvCtrl.grdLGDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  with AViewInfo.GridRecord do
  begin
    if (Focused or Selected) then
    ACanvas.Brush.Color := FlashColors[IsHighLighted];

{    if not (Focused or Selected) and
      (Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Continent').Index] = 'South America') then
    ACanvas.Brush.Color := FlashColors[IsHighLighted]; }
  end;
end;


procedure TfInvCtrl.tmrFlashTimer(Sender: TObject);
var
  CellsRect: TRect;
begin
  tmrFlash.Interval := 681 ;//trbFlashInterval.Position;
  IsHighLighted := not IsHighLighted;
  grdLG.Invalidate;
{
  // A simpler solution if a single View is used
  CellsRect := viewCountry.ViewInfo.RecordsViewInfo.ContentBounds;
  InvalidateRect(viewCountry.Site.Handle, @CellsRect, False);
}
end;


procedure TfInvCtrl.acLoggsExecute(Sender: TObject);
var  fInvLogs: TfInvLogs;
begin
 fInvLogs:= TfInvLogs.Create(nil) ;
 try
  fInvLogs.Memo1.Text := memo3.Text ;
  fInvLogs.ShowModal ;
 finally
  FreeAndNil(fInvLogs) ;
 end;
end;

procedure TfInvCtrl.FormShow(Sender: TObject);
begin
 if ThisUser.userid = 8 then
 Begin
  bbLogs.Visible  := True ;
  Memo3.Visible   := True ;
 End
 else
 Begin
  bbLogs.Visible  := False ;
  Memo3.Visible   := False ;
 End ;
end;

procedure TfInvCtrl.acRemovePackageFromCtrlListExecute(Sender: TObject);
begin
 if MessageDlg('Är du säker på att du vill ta bort paketet från kontrollistan? '
 , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmInvCtrl do
 Begin
   if cds_CtrlList.State in [dsBrowse] then
   cds_CtrlList.Edit ;
   if cds_CtrlListStatus.AsInteger = 1 then
   cds_CtrlListStatus.AsInteger := 0
   else
   cds_CtrlListStatus.AsInteger := 1 ;
   cds_CtrlList.Post ;
   if cds_CtrlList.ChangeCount > 0 then
    cds_CtrlList.ApplyUpdates(0) ;
 End ;
end;

procedure TfInvCtrl.acRefreshKontrollistaExecute(Sender: TObject);
var Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try
 With dmInvCtrl do
 Begin
  cds_CtrlList.Active := False ;
  sq_CtrlList.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  cds_CtrlList.Active := True ;
 End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfInvCtrl.acRemovePackageFromCtrlListUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acRemovePackageFromCtrlList.Enabled := (cds_CtrlList.Active) and (cds_CtrlList.RecordCount > 0) ;

  if (acRemovePackageFromCtrlList.Enabled) and (cds_CtrlListStatus.AsInteger = 0) then
  Begin
   acRemovePackageFromCtrlList.Caption    := 'Återställ paket' ;
//   acRemovePackageFromCtrlList.ImageIndex := 13 ;
  End
  else
  if (acRemovePackageFromCtrlList.Enabled) and (cds_CtrlListStatus.AsInteger = 1) then
  Begin
   acRemovePackageFromCtrlList.Caption := 'Ta bort paket' ;
//   acRemovePackageFromCtrlList.ImageIndex := 11 ;
//   BitBtn36.Glyph.Assign();
  End ;
 End ;
end;

procedure TfInvCtrl.acPrintCtrlListWysiwygExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  dxComponentPrinter1Link10.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link10.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link10.PrinterPage.PageHeader.CenterTitle.Add('Kontrollista') ;
  dxComponentPrinter1Link10.PrinterPage.PageHeader.CenterTitle.Add('Inventeringsdatum: '+SQLTimeStampToStr('yyyy-mm-dd',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp)) ;
  dxComponentPrinter1Link10.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  dxComponentPrinter1Link10.PrinterPage.PageHeader.LeftTitle.Add('Löpnr: '+cds_InvCtrlGrpIC_grpno.AsString) ;

  dxComponentPrinter1Link10.PrinterPage.DMPaper         := DMPAPER_A4 ;
  dxComponentPrinter1Link10.PrinterPage.Orientation     := poLandscape ;
  dxComponentPrinter1Link10.OptionsOnEveryPage.Footers  := False ;
  dxComponentPrinter1Link10.ShrinkToPageWidth           := True ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link10) ;
 End ;
end;

procedure TfInvCtrl.acExpandAllCtrlListExecute(Sender: TObject);
begin
 grdCtrlListDBTableView1.ViewData.Expand(True);
end;

procedure TfInvCtrl.grdCtrlListDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aColumn: TcxCustomGridTableItem;
  aValue: Variant;

begin

 aColumn :=(Sender as TcxGridDBTableView).GetColumnByFieldName('AntalPaketILager');
 if (ARecord.Values[aColumn.Index] <> null) and (AItem <> nil) then
 Begin
  aValue := ARecord.Values[aColumn.Index];

  if (aValue = 1)  then
  AStyle:= cxStyle_1_Lager
  else
  if (aValue = 2)  then
  AStyle:= cxStyle_2_PrelLOLast
  else
  if (aValue = 3)  then
  AStyle:= cxStyle_3_PrelAvropLast
  else
  if (aValue = 4)  then
  AStyle:= cxStyle_4_NotInvoiced ;
 End ;
end;

procedure TfInvCtrl.acPkgInfoCtrlListExecute(Sender: TObject);
begin
 PkgInfo(
 grdCtrlListDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdCtrlListDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.acPkgStatusInInventeringExecute(Sender: TObject);
var
  NewValue              : string;
  PkgSupplierCode       : String3;
  PkgSupplierNo         : Integer ;
  Action                : TEditAction;
  ProductNo             : Integer ;
  Save_Cursor           : TCursor;
  Res_UserName          : String ;
  PkgNo                 : Integer ;
  AskingStatus          : Integer ;
  HelpStringText        : String ;
begin
 With dmInvCtrl do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
//   NewValue:= DisplayValue ;
//   PkgNo:= StrToInt(NewValue) ;
//   if cbEgenSupplierCode2.Checked = False then
//    PkgSupplierCode := dmsSystem.PkgNoToSuppCode_II(PkgNo, PkgSupplierNo, ProductNo)
//     else
//      PkgSupplierCode := EgenLevKod ;
  Except
  End ;
 End ;
end;

procedure TfInvCtrl.teSearchPackageNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var PkgSupplierCode, S : String ;
    PkgNo, PkgSupplierNo, ProductNo : Integer ;
begin
 if Key <> VK_RETURN then
  Exit;
 if (dmInvCtrl.cds_InvCtrlGrp.Active) and (dmInvCtrl.cds_InvCtrlGrpIC_grpno.AsInteger > 0) then
 Begin
 PkgNo  := StrToIntDef(teSearchPackageNo.Text,0) ;
 if PkgNo > 0 then
 Begin
  PkgSupplierCode := dmsSystem.PkgNoToSuppCode_II(PkgNo, PkgSupplierNo, ProductNo) ;
  if Length(PkgSupplierCode) > 0 then
  Begin
   S  := dmInvCtrl.CheckIfPkgExistInHLP_II(dmInvCtrl.cds_InvCtrlGrpIC_grpno.AsInteger, PkgNo, PkgSupplierCode) ;
   if Length(S) > 0 then
    ShowMessage(S)
    else
    ShowMessage('Finns ej i inventeringen.') ;
  End ;
 End
  else
   ShowMessage('Paketnr ' + teSearchPackageNo.text + ' innehåller otillåtna tecken') ;
 End ;
end;

procedure TfInvCtrl.PaketStatusInomInventeringen(const PackageNo : Integer;const Prefix : String) ;
Var PkgSupplierCode, S : String ;
    PkgNo, PkgSupplierNo, ProductNo : Integer ;
begin
 if (dmInvCtrl.cds_InvCtrlGrp.Active) and (dmInvCtrl.cds_InvCtrlGrpIC_grpno.AsInteger > 0) then
 Begin
 PkgNo  := PackageNo ;
 if PkgNo > 0 then
 Begin
  PkgSupplierCode := Prefix ;
  if Length(PkgSupplierCode) > 0 then
  Begin
   S  := dmInvCtrl.CheckIfPkgExistInHLP_II(dmInvCtrl.cds_InvCtrlGrpIC_grpno.AsInteger, PkgNo, PkgSupplierCode) ;
   if Length(S) > 0 then
    ShowMessage(S)
    else
    ShowMessage('Finns ej i inventeringen.') ;
  End ;
 End
  else
   ShowMessage('Paketnr ' + teSearchPackageNo.text + ' innehåller otillåtna tecken') ;
 End ;
end;

procedure TfInvCtrl.acRefreshResultListExecute(Sender: TObject);
var Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try
 With dmInvCtrl do
 Begin
  cds_InvenRow.Active := False ;
  sq_InvenRow.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  cds_InvenRow.Active := True ;
 End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfInvCtrl.acRefreshKontrollistaUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acRefreshKontrollista.Enabled := (cds_InvCtrlGrp.Active) and (cds_InvCtrlGrp.RecordCount > 0)
  and (cds_InvCtrlGrpIC_grpno.AsInteger > 0) ;
 End ;
end;

procedure TfInvCtrl.acRefreshResultListUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acRefreshResultList.Enabled := (cds_InvCtrlGrp.Active) and (cds_InvCtrlGrp.RecordCount > 0)
  and (cds_InvCtrlGrpIC_grpno.AsInteger > 0) ;
 End ;
end;

procedure TfInvCtrl.acPrintResultListWysiwygExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  dxComponentPrinter1Link11.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link11.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link11.PrinterPage.PageHeader.CenterTitle.Add('Resultatlista') ;
  dxComponentPrinter1Link11.PrinterPage.PageHeader.CenterTitle.Add('Inventeringsdatum: '+SQLTimeStampToStr('yyyy-mm-dd',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp)) ;
  dxComponentPrinter1Link11.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  dxComponentPrinter1Link11.PrinterPage.PageHeader.LeftTitle.Add('Löpnr: '+cds_InvCtrlGrpIC_grpno.AsString) ;

  dxComponentPrinter1Link11.PrinterPage.DMPaper         := DMPAPER_A4 ;
  dxComponentPrinter1Link11.PrinterPage.Orientation     := poLandscape ;
  dxComponentPrinter1Link11.OptionsOnEveryPage.Footers  := False ;
  dxComponentPrinter1Link11.ShrinkToPageWidth           := True ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link11) ;
 End ;
end;

procedure TfInvCtrl.acPkgInfoInomInventeringenExecute(Sender: TObject);
begin
 PaketStatusInomInventeringen(
 grdCtrlListDBTableView1.DataController.DataSet.FieldByName('PackageNo').AsInteger,
 grdCtrlListDBTableView1.DataController.DataSet.FieldByName('SupplierCode').AsString) ;
end;

procedure TfInvCtrl.tePaRegPkgNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  NewValue              : string;
  PkgSupplierCode       : String3;
  PkgSupplierNo         : Integer ;
  Action                : TEditAction;
  ProductNo             : Integer ;
  Save_Cursor           : TCursor;
  Res_UserName          : String ;
  PkgNo                 : Integer ;
  AskingStatus,
  AskingStatus2         : Integer ;
  HelpStringText        : String ;
  ErrorText             : String ;
  Error                 : Boolean ;
begin
{ NewValue:= DisplayValue ;
 if (Length(NewValue) > 0) and (dmInvCtrl.cds_InvCtrl_PaRegSupplierCode.AsString > '') then
  Error := False
   else
    Error:= True ; }

 if Key <> VK_RETURN then
  Exit ;
 HelpStringText:= '' ;
 With dmInvCtrl do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
   NewValue:= tePaRegPkgNo.Text ;
   PkgNo:= StrToIntDef(NewValue,0) ;
   if cbEgenSupplierCode2.Checked = False then
    PkgSupplierCode := dmsSystem.PkgNoNotInInvenToSuppCode(PkgNo, cds_InvCtrlGrpIC_grpno.AsInteger, PkgSupplierNo, ProductNo)
     else
      PkgSupplierCode := EgenLevKod ;
//     if Length(PkgSupplierCode) = 0 then Exit ;
//      Begin

//       AskingStatus := CheckIfPkgExist(cds_InvCtrlGrpIC_grpno.AsInteger, PkgNo, PkgSupplierCode) ;
       AskingStatus := CheckIfPkgExistInKontrollistAndInInventory(cds_InvCtrlGrpIC_grpno.AsInteger, PkgNo, PkgSupplierCode) ;
       Case AskingStatus of
        -1 : Begin
              ErrorText:= 'Paketet finns i kontrollistan' ;
              Action := eaREJECT ;
              PkgSupplierCode := '' ;
              Error:= True ;
             End ;

        -2 : Begin
              ErrorText:= 'Paketet är aktivt '+ dmsSystem.Pkg_Info(PkgNo, Trim(PkgSupplierCode)) ;
//              ErrorText:= 'Paketnr '+inttostr(PkgNo)+'/'+PkgSupplierCode+' är redan aktivt.' ;
              Action := eaREJECT ;
              PkgSupplierCode := '' ;
              Error:= True ;
             End ;

        -3 : Begin
              ErrorText:= 'Paketnr '+inttostr(PkgNo)+'/'+PkgSupplierCode+' finns ej' ;
                 //(Length(PkgSupplierCode) > 0) and
              if (MessageDlg('Paketnr ' + inttostr(PkgNo) + '/' + PkgSupplierCode + ' finns ej, '+' vill du skapa ett nytt paket? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
              Begin
               PkgSupplierCode:= CreateNewPkg(PkgNo);
               AskingStatus2 :=  CheckIfPkgExist(cds_InvCtrlGrpIC_grpno.AsInteger, PkgNo, PkgSupplierCode) ;
               if AskingStatus2 <> 1 then
               Begin
                Action := eaREJECT ;
                PkgSupplierCode := '' ;
                Error:= True ;
               End
               else
               Begin
                PkgSupplierCode := PkgSupplierCode ; //EgenLevKod ;
                Error:= False ;
               End ;
              End //if MessageDlg('Paketnr '+inttostr(PkgNo)+'/'+PkgSupplierCode+' finns ej, '+' vill du skapa ett nytt paket? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              else
              Begin
               Action := eaREJECT ;
               PkgSupplierCode := '' ;
//               ErrorText:= 'Du har bestämt att inte gå vidare och skapa nytt paket, tack.' ;
//               Error:= True ;
              End ;
             End ;

        1  : Begin
              ShowMessage('Paketnr ');
              HelpStringText:= CheckIfPkgExistInHLP(cds_InvCtrlGrpIC_grpno.AsInteger, PkgNo, PkgSupplierCode) ;
              if Length(HelpStringText) > 0 then
              Begin
               ErrorText:= HelpStringText ;
               Action := eaREJECT ;
               PkgSupplierCode := '' ;
               Error:= True ;
              End
              else
              Begin
               PkgSupplierCode := PkgSupplierCode ; //EgenLevKod ;
               Error:= False ;
              End ;
             End ;
       End ;//Case
//      End ;

   if PkgSupplierCode = '' then
   Begin
    Action := eaREJECT;
   End
   else
//check that no user has reserved the package
    if dmsSystem.Pkg_Reserved(PkgNo,
        PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
    begin
     Action := eaACCEPT ;
    end ;


  if Action = eaACCEPT then
  Begin
   if cds_InvCtrl_PaReg.State in [dsBrowse] then
    cds_InvCtrl_PaReg.Insert ;
   cds_InvCtrl_PaRegPackageNo.AsInteger   := PkgNo ;
   cds_InvCtrl_PaRegSupplierCode.AsString := PkgSupplierCode ;
   if GetPackageAttr(cds_InvCtrl_PaRegPackageNo.AsInteger, cds_InvCtrl_PaRegSupplierCode.AsString) then
   Begin
    cds_InvCtrl_PaRegANTPERLNGD.AsString  := sq_OnePkgPCS_PER_LENGTH.AsString ;
    cds_InvCtrl_PaRegPRODUKT.AsString     := sq_OnePkgPRODUCT.AsString ;
    cds_InvCtrl_PaRegSTYCK.AsInteger      := sq_OnePkgPCS.AsInteger ;
    cds_InvCtrl_PaRegAM3.AsFloat          := sq_OnePkgM3_NET.AsFloat ;
    cds_InvCtrl_PaReg.Post ;
    sq_OnePkg.Close ;
   End ;
//   GetPkgAttr ;
//   cds_InvCtrl_PaReg.Post ;
   Error:= False ;
  End
   else
   if Action = eaREJECT then
    Begin
{     ErrorText:= 'Paketnr '+NewValue+' finns inte' ;
     Error:= True ;
     if MessageDlg('Vill du skapa ett nytt paket? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      CreateNewPkg(StrToInt(NewValue)); }
    End
    else
   if Action = eaReserved then
    Begin
     ErrorText:= 'Paketnr '+NewValue+' är reserverat av användare '+Res_UserName ;
     Error:= True ;
    End ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;
end;

End.
