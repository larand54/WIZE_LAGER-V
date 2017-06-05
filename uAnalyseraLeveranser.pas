unit uAnalyseraLeveranser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxClasses, cxGraphics, cxCustomData, cxStyles, FMTBcd,
  cxCustomPivotGrid,
  cxDBPivotGrid, cxControls, StdCtrls, Buttons, ExtCtrls, cxMaskEdit,
  cxInplaceContainer, cxTextEdit, cxPC, cxContainer,
  cxEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCalendar, cxDBEdit, ActnList, cxLabel, SqlTimSt, cxImageComboBox,
  cxExportPivotGridLink, cxCheckBox, cxSpinEdit, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  cxGroupBox, cxRadioGroup, cxLookAndFeelPainters,
  cxPivotGridChartConnection, cxGridCustomView, cxGridChartView,
  cxGridLevel, cxGrid, cxSplitter, dxPSContainerLnk,
  Menus, cxButtons, DateUtils, ImgList,
  cxLookAndFeels, cxCalc, cxCurrencyEdit, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPScxCheckListBoxLnk, dxPSLbxLnk,
  dxPSTextLnk, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, DB, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxPivotGridLnk, dxPScxSSLnk, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, frxClass, frxDBSet,
  cxNavigator, frxExportPDF, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxBarBuiltInMenu, System.Actions, siComp, siLngLnk ;

type
  TfAnalyseraLeveranser = class(TForm)
    ds_Data: TDataSource;
    Panel1: TPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pgMain: TcxPageControl;
    tsDeliveries: TcxTabSheet;
    pivLeveranser: TcxDBPivotGrid;
    fProdukt: TcxDBPivotGridField;
    fLngd: TcxDBPivotGridField;
    fAM3: TcxDBPivotGridField;
    fNM3: TcxDBPivotGridField;
    fVrde: TcxDBPivotGridField;
    fM_Pris: TcxDBPivotGridField;
    fYear: TcxDBPivotGridField;
    fQuarter: TcxDBPivotGridField;
    fMonth: TcxDBPivotGridField;
    fWeek: TcxDBPivotGridField;
    fMarknad: TcxDBPivotGridField;
    fLoadNo: TcxDBPivotGridField;
    ds_UserProps: TDataSource;
    lcVerk: TcxDBLookupComboBox;
    deStartPeriod: TcxDBDateEdit;
    deEndPeriod: TcxDBDateEdit;
    ds_verk: TDataSource;
    ActionList1: TActionList;
    acRefresh: TAction;
    acClose: TAction;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    fAT: TcxDBPivotGridField;
    fAB: TcxDBPivotGridField;
    fTS: TcxDBPivotGridField;
    fUT: TcxDBPivotGridField;
    fKV: TcxDBPivotGridField;
    cxLabel3: TcxLabel;
    cxStyleclMaroon: TcxStyle;
    cxStyleclWhite: TcxStyle;
    fIMP: TcxDBPivotGridField;
    tsProduction: TcxTabSheet;
    pivProduction: TcxDBPivotGrid;
    ds_ProdData: TDataSource;
    ds_RegPoint: TDataSource;
    fMtpunkt: TcxDBPivotGridField;
    fVerk: TcxDBPivotGridField;
    fProdAM3: TcxDBPivotGridField;
    fprodNM3: TcxDBPivotGridField;
    fProdPKT: TcxDBPivotGridField;
    fVeckoDag: TcxDBPivotGridField;
    acExport: TAction;
    cxStyle2: TcxStyle;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    acSendEmail: TAction;
    Memo1: TMemo;
    fProdSTYCK: TcxDBPivotGridField;
    fProdLPM: TcxDBPivotGridField;
    cxLabel5: TcxLabel;
    lcMtpunkt: TcxDBLookupComboBox;
    fCustomer: TcxDBPivotGridField;
    fSupplier: TcxDBPivotGridField;
    fFraktfrare: TcxDBPivotGridField;
    fLagerGrupp: TcxDBPivotGridField;
    acExportToXLS: TAction;
    SaveDialog1: TSaveDialog;
    fSituation: TcxDBPivotGridField;
    tsTorksatser: TcxTabSheet;
    Panel3: TPanel;
    ds_TorkSatser: TDataSource;
    pivKD: TcxDBPivotGrid;
    pivKDAM3: TcxDBPivotGridField;
    pivKDVerk: TcxDBPivotGridField;
    pivKDKilnName: TcxDBPivotGridField;
    pivKDKalkyleradTid: TcxDBPivotGridField;
    pivKDYear: TcxDBPivotGridField;
    pivKDKvartal: TcxDBPivotGridField;
    pivKDWeek: TcxDBPivotGridField;
    pivKDPlaneradTid: TcxDBPivotGridField;
    cxLabel6: TcxLabel;
    pivKDMonth: TcxDBPivotGridField;
    pivKDAT: TcxDBPivotGridField;
    pivKDAB: TcxDBPivotGridField;
    pivKDTS: TcxDBPivotGridField;
    pivKDKV: TcxDBPivotGridField;
    pivKDUT: TcxDBPivotGridField;
    pivKDIMP: TcxDBPivotGridField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    acPrint: TAction;
    cxStyleRepository2: TcxStyleRepository;
    cxPivotGridReportLinkStyleSheet1: TcxPivotGridReportLinkStyleSheet;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    dxComponentPrinter1Link2: TcxPivotGridReportLink;
    dxComponentPrinter1Link3: TcxPivotGridReportLink;
    acSendToAllMills: TAction;
    BitBtn7: TBitBtn;
    pnSettings: TPanel;
    lbSortBy: TLabel;
    lbShowTop: TLabel;
    lbValues: TLabel;
    cbxSortByField: TcxComboBox;
    speTopCount: TcxSpinEdit;
    cbxTopValuesShowOthers: TcxCheckBox;
    acSortByData: TAction;
    Button6: TButton;
    rgOrderType: TcxRadioGroup;
    Bevel1: TBevel;
    pivProduction_AB: TcxDBPivotGridField;
    pivProduction_ALMM: TcxDBPivotGridField;
    pivProduction_AT: TcxDBPivotGridField;
    pivProduction_IMP: TcxDBPivotGridField;
    pivProduction_KV: TcxDBPivotGridField;
    pivProduction_NLMM: TcxDBPivotGridField;
    pivProduction_Paketnr: TcxDBPivotGridField;
    pivProduction_Prefix: TcxDBPivotGridField;
    pivProduction_Produkt: TcxDBPivotGridField;
    pivProduction_TS: TcxDBPivotGridField;
    pivProduction_UT: TcxDBPivotGridField;
    pivProductionWeek: TcxDBPivotGridField;
    pivProductionMonth: TcxDBPivotGridField;
    pivProductionQuarter: TcxDBPivotGridField;
    pivProductionYear: TcxDBPivotGridField;
    pivProductionDatum: TcxDBPivotGridField;
    pivLeveranserTrading: TcxDBPivotGridField;
    pivLeveranserLO: TcxDBPivotGridField;
    pivLeveranserPriceExist: TcxDBPivotGridField;
    acSaveGridSettings: TAction;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    dxComponentPrinter1Link4: TcxPivotGridReportLink;
    dxComponentPrinter1Link5: TdxGridReportLink;
    tsOverview: TcxTabSheet;
    Panel4: TPanel;
    acPrintProdDiagram: TAction;
    dxComponentPrinter1Link7: TdxCompositionReportLink;
    dxComponentPrinter1Link6: TdxCustomContainerReportLink;
    Button2: TButton;
    ds_overview: TDataSource;
    acActualDay: TAction;
    acLastDay: TAction;
    acActualWeek: TAction;
    bToday: TcxButton;
    bYesterday: TcxButton;
    acToday: TAction;
    PopupMenu1: TPopupMenu;
    Idag1: TMenuItem;
    acYesterday: TAction;
    IgrF31: TMenuItem;
    pivLeveranserUtlastad: TcxDBPivotGridField;
    pivLeveranserClientName: TcxDBPivotGridField;
    Panel5: TPanel;
    cxButton1: TcxButton;
    cxButton5: TcxButton;
    acNyLeveransLayout: TAction;
    Panel6: TPanel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cbLevLayouter: TcxComboBox;
    acLoadLeveransLayout: TAction;
    acSaveLeveranserLayout: TAction;
    cxButton8: TcxButton;
    acRemoveLayout: TAction;
    acNyProdMall: TAction;
    acSaveProdMall: TAction;
    acRemoveProdMall: TAction;
    cbProdMallar: TcxComboBox;
    cxButton9: TcxButton;
    imglistActions: TImageList;
    bUppdatera: TcxButton;
    bPrint: TcxButton;
    bExportToXLS: TcxButton;
    bClose: TcxButton;
    pivProductionOperation: TcxDBPivotGridField;
    icOperation: TcxDBImageComboBox;
    cxLabelOperation: TcxLabel;
    pivProductionOrt: TcxDBPivotGridField;
    pivProductionUtfall: TcxDBPivotGridField;
    acExpandAll: TAction;
    acCollapseAll: TAction;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    tsKapStat: TcxTabSheet;
    Panel8: TPanel;
    cxButton4: TcxButton;
    cxButton10: TcxButton;
    cbKapStatMallar: TcxComboBox;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    ds_Kap: TDataSource;
    pvKapStat: TcxDBPivotGrid;
    cxDBPivotGrid1TONr: TcxDBPivotGridField;
    cxDBPivotGrid1Ravaru_Produkt: TcxDBPivotGridField;
    cxDBPivotGrid1Ravaru_Langd: TcxDBPivotGridField;
    cxDBPivotGrid1HF_Produkt: TcxDBPivotGridField;
    cxDBPivotGrid1HF_Langd: TcxDBPivotGridField;
    cxDBPivotGrid1PaRegAM3: TcxDBPivotGridField;
    cxDBPivotGrid1AvRegAM3: TcxDBPivotGridField;
    cxDBPivotGrid1Utbyte: TcxDBPivotGridField;
    cxDBPivotGrid1Producerat: TcxDBPivotGridField;
    cxDBPivotGrid1Year: TcxDBPivotGridField;
    cxDBPivotGrid1Kvartal: TcxDBPivotGridField;
    cxDBPivotGrid1Month: TcxDBPivotGridField;
    cxDBPivotGrid1Week: TcxDBPivotGridField;
    acNewKapMall: TAction;
    acSaveKapStatMall: TAction;
    acRemoveKapStatMall: TAction;
    acExpandKapStatAll: TAction;
    acCollapseKapStatAll: TAction;
    dxComponentPrinter1Link8: TcxPivotGridReportLink;
    cxImageList1: TcxImageList;
    meAT: TcxMaskEdit;
    meAB: TcxMaskEdit;
    Label2: TLabel;
    Label1: TLabel;
    pvKapStatSpillAM3: TcxDBPivotGridField;
    pvKapStatSpillNM3: TcxDBPivotGridField;
    pvKapStatPaRegNM3: TcxDBPivotGridField;
    pvKapStatUtbyteNM3: TcxDBPivotGridField;
    pvKapStatAvRegNM3: TcxDBPivotGridField;
    pvKapStatProdPcs: TcxDBPivotGridField;
    pvKapStatPlannedpcs: TcxDBPivotGridField;
    pvKapStatDiffPcs: TcxDBPivotGridField;
    pvKapStatgare: TcxDBPivotGridField;
    pvKapStatAT: TcxDBPivotGridField;
    pvKapStatAB: TcxDBPivotGridField;
    pvKapStatProduktPrefix: TcxDBPivotGridField;
    pvKapStatProducent: TcxDBPivotGridField;
    pvKapStatOrt: TcxDBPivotGridField;
    pivVarugruppNamn: TcxDBPivotGridField;
    pivAvgLength: TcxDBPivotGridField;
    cbUseProdSum: TcxCheckBox;
    cbTotals: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    pivVarugrupp: TcxDBPivotGridField;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    pivSkiftlag: TcxDBPivotGridField;
    cds_UserProps: TFDQuery;
    cds_verk: TFDQuery;
    cds_RegPoint: TFDQuery;
    cds_Data: TFDQuery;
    cds_ProdData: TFDQuery;
    sq_ProdDataSumII: TFDQuery;
    cds_UserPropsUserID: TIntegerField;
    cds_UserPropsForm: TStringField;
    cds_UserPropsVerkNo: TIntegerField;
    cds_UserPropsOwnerNo: TIntegerField;
    cds_UserPropsPIPNo: TIntegerField;
    cds_UserPropsLIPNo: TIntegerField;
    cds_UserPropsInputOption: TIntegerField;
    cds_UserPropsRegPointNo: TIntegerField;
    cds_UserPropsRegDate: TSQLTimeStampField;
    cds_UserPropsCopyPcs: TIntegerField;
    cds_UserPropsRunNo: TIntegerField;
    cds_UserPropsProducerNo: TIntegerField;
    cds_UserPropsAutoColWidth: TIntegerField;
    cds_UserPropsSupplierCode: TStringField;
    cds_UserPropsLengthOption: TIntegerField;
    cds_UserPropsLengthGroupNo: TIntegerField;
    cds_UserPropsNewItemRow: TIntegerField;
    cds_UserPropsSalesRegionNo: TIntegerField;
    cds_UserPropsMarketRegionNo: TIntegerField;
    cds_UserPropsOrderTypeNo: TIntegerField;
    cds_UserPropsStatus: TIntegerField;
    cds_UserPropsFilterOrderDate: TIntegerField;
    cds_UserPropsStartPeriod: TSQLTimeStampField;
    cds_UserPropsEndPeriod: TSQLTimeStampField;
    cds_UserPropsClientNo: TIntegerField;
    cds_UserPropsSalesPersonNo: TIntegerField;
    cds_UserPropsVerkSupplierNo: TIntegerField;
    cds_UserPropsVerkKundNo: TIntegerField;
    cds_UserPropsLOObjectType: TIntegerField;
    cds_UserPropsBarCodeNo: TIntegerField;
    cds_UserPropsGradeStampNo: TIntegerField;
    cds_UserPropsVolumeUnitNo: TIntegerField;
    cds_UserPropsLengthFormatNo: TIntegerField;
    cds_UserPropsLengthVolUnitNo: TIntegerField;
    cds_UserPropsGroupByBox: TIntegerField;
    cds_UserPropsGroupSummary: TIntegerField;
    cds_UserPropsAgentNo: TIntegerField;
    cds_UserPropsLoadingLocationNo: TIntegerField;
    cds_UserPropsShipperNo: TIntegerField;
    cds_UserPropsBookingTypeNo: TIntegerField;
    cds_UserPropsCustomerNo: TIntegerField;
    cds_UserPropsShowProduct: TIntegerField;
    cds_UserPropsName: TStringField;
    cds_UserPropsFilter1: TStringField;
    cds_UserPropsVerk: TStringField;
    cds_verkClientNo: TIntegerField;
    cds_verkClientName: TStringField;
    cds_verkSearchName: TStringField;
    cds_RegPointRegPointName: TStringField;
    cds_RegPointRegPointNo: TIntegerField;
    cds_UserPropsMätpunkt: TStringField;
    cds_DataSituation: TStringField;
    cds_DataMarknad: TStringField;
    cds_DataSupplier: TStringField;
    cds_DataCustomer: TStringField;
    cds_DataLagerGrupp: TStringField;
    cds_DataAT: TFloatField;
    cds_DataAB: TFloatField;
    cds_DataTS: TStringField;
    cds_DataKV: TStringField;
    cds_DataUT: TStringField;
    cds_DataIMP: TStringField;
    cds_DataNM3: TFloatField;
    cds_DataPrice: TFloatField;
    cds_DataVärde: TFloatField;
    cds_DataLängd: TFloatField;
    cds_DataProdukt: TStringField;
    cds_DataKvartal: TIntegerField;
    cds_DataÅr: TIntegerField;
    cds_DataMånad: TIntegerField;
    cds_DataVecka: TIntegerField;
    cds_DataFraktförare: TStringField;
    cds_DataLoadNo: TIntegerField;
    cds_DataUtlastad: TSQLTimeStampField;
    cds_DataAM3: TFloatField;
    cds_DataTrading: TIntegerField;
    cds_DataLO: TIntegerField;
    cds_DataPriceExist: TStringField;
    cds_DataClientName: TStringField;
    cds_DataVarugruppnamn: TStringField;
    cds_DataM_Pris: TBCDField;
    cds_ProdDataALMM: TFloatField;
    cds_ProdDataNLMM: TFloatField;
    cds_ProdDataProdukt: TStringField;
    cds_ProdDataPaketnr: TIntegerField;
    cds_ProdDataPrefix: TStringField;
    cds_ProdDataKörnr: TIntegerField;
    cds_ProdDataAT: TFloatField;
    cds_ProdDataAB: TFloatField;
    cds_ProdDataTS: TStringField;
    cds_ProdDataKV: TStringField;
    cds_ProdDataUT: TStringField;
    cds_ProdDataIMP: TStringField;
    cds_ProdDataDatum: TSQLTimeStampField;
    cds_ProdDataVerk: TStringField;
    cds_ProdDataMätpunkt: TStringField;
    cds_ProdDataAM3: TFloatField;
    cds_ProdDataNM3: TFloatField;
    cds_ProdDataSTYCK: TIntegerField;
    cds_ProdDataLPM: TFloatField;
    cds_ProdDataOperation: TStringField;
    cds_ProdDataOrt: TStringField;
    cds_ProdDataVarugruppNamn: TStringField;
    cds_ProdDataAvgLength: TBCDField;
    cds_ProdDataShiftTeamName: TStringField;
    cds_overview: TFDQuery;
    cds_overviewItem: TStringField;
    cds_overviewNM3: TFloatField;
    sq_ProdDataSumIIProdukt: TStringField;
    sq_ProdDataSumIIALMM: TFloatField;
    sq_ProdDataSumIINLMM: TFloatField;
    sq_ProdDataSumIIPaketnr: TIntegerField;
    sq_ProdDataSumIIPrefix: TStringField;
    sq_ProdDataSumIIAT: TFloatField;
    sq_ProdDataSumIIAB: TFloatField;
    sq_ProdDataSumIITS: TStringField;
    sq_ProdDataSumIIKV: TStringField;
    sq_ProdDataSumIIUT: TStringField;
    sq_ProdDataSumIIIMP: TStringField;
    sq_ProdDataSumIIDatum: TSQLTimeStampField;
    sq_ProdDataSumIIVerk: TStringField;
    sq_ProdDataSumIIMätpunkt: TStringField;
    sq_ProdDataSumIIAM3: TFloatField;
    sq_ProdDataSumIINM3: TFloatField;
    sq_ProdDataSumIISTYCK: TIntegerField;
    sq_ProdDataSumIILPM: TFloatField;
    sq_ProdDataSumIISupplierNo: TIntegerField;
    sq_ProdDataSumIIRegPointNo: TIntegerField;
    sq_ProdDataSumIIOperation: TStringField;
    sq_ProdDataSumIIOrt: TStringField;
    sq_ProdDataSumIIVarugruppNamn: TStringField;
    sq_ProdDataSumIIAvgLength: TFloatField;
    sq_ProdDataSumIIShiftTeamName: TStringField;
    sq_ProdDataSum: TFDQuery;
    sq_ProdDataSumProdukt: TStringField;
    sq_ProdDataSumALMM: TFloatField;
    sq_ProdDataSumNLMM: TFloatField;
    sq_ProdDataSumPaketnr: TIntegerField;
    sq_ProdDataSumPrefix: TStringField;
    sq_ProdDataSumKörnr: TIntegerField;
    sq_ProdDataSumAT: TFloatField;
    sq_ProdDataSumAB: TFloatField;
    sq_ProdDataSumTS: TStringField;
    sq_ProdDataSumKV: TStringField;
    sq_ProdDataSumUT: TStringField;
    sq_ProdDataSumIMP: TStringField;
    sq_ProdDataSumDatum: TSQLTimeStampField;
    sq_ProdDataSumVerk: TStringField;
    sq_ProdDataSumMätpunkt: TStringField;
    sq_ProdDataSumAM3: TFloatField;
    sq_ProdDataSumNM3: TFloatField;
    sq_ProdDataSumSTYCK: TIntegerField;
    sq_ProdDataSumLPM: TFloatField;
    sq_ProdDataSumSupplierNo: TIntegerField;
    sq_ProdDataSumRegPointNo: TIntegerField;
    sq_ProdDataSumOperation: TStringField;
    sq_ProdDataSumOrt: TStringField;
    sq_ProdDataSumVarugruppNamn: TStringField;
    sq_ProdDataSumAvgLength: TFloatField;
    sq_ProdDataSumShiftTeamName: TStringField;
    cds_Kap: TFDQuery;
    cds_KapProducerat: TSQLTimeStampField;
    cds_KapTONr: TIntegerField;
    cds_KapRavaru_Produkt: TStringField;
    cds_KapRavaru_Langd: TFloatField;
    cds_KapHF_Produkt: TStringField;
    cds_KapHF_Langd: TFloatField;
    cds_KapPaRegAM3: TFloatField;
    cds_KapAvRegAM3: TFloatField;
    cds_KapUtbyte: TFloatField;
    cds_KapSpillAM3: TFloatField;
    cds_KapSpillNM3: TFloatField;
    cds_KapPaRegNM3: TFloatField;
    cds_KapUtbyteNM3: TFloatField;
    cds_KapAvRegNM3: TFloatField;
    cds_KapProdPcs: TIntegerField;
    cds_KapPlannedpcs: TIntegerField;
    cds_KapDiffPcs: TIntegerField;
    cds_KapÄgare: TStringField;
    cds_KapAT: TFloatField;
    cds_KapAB: TFloatField;
    cds_KapProduktPrefix: TStringField;
    cds_KapProducent: TStringField;
    cds_KapOrt: TStringField;
    cds_KapUtbyteAM1: TFloatField;
    cds_KapPaRegAM1: TFloatField;
    cds_KapAvRegAM1: TFloatField;
    pvKapStatUtbyteAM1: TcxDBPivotGridField;
    pvKapStatPaRegAM1: TcxDBPivotGridField;
    pvKapStatAvRegAM1: TcxDBPivotGridField;
    cds_DataLoadingLocation: TStringField;
    cds_DataDestination: TStringField;
    pivLeveranserLaststalle: TcxDBPivotGridField;
    pivLeveranserDestination: TcxDBPivotGridField;
    cbExklEgnaLeveranser: TcxCheckBox;
    cds_DataInt_Destination: TStringField;
    cds_DataExt_Destination: TStringField;
    cds_DataOrderNoText: TStringField;
    pivLeveranserInt_Destination: TcxDBPivotGridField;
    pivLeveranserExt_Destination: TcxDBPivotGridField;
    pivLeveranserOrderNoText: TcxDBPivotGridField;
    pivLeveranserUtfall: TcxDBPivotGridField;
    tsStoppTid: TcxTabSheet;
    Panel7: TPanel;
    cxButton14: TcxButton;
    cxButton15: TcxButton;
    cbStoppTidMallar: TcxComboBox;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    cxButton18: TcxButton;
    cbStoppTidTotals: TcxCheckBox;
    cbStoppTidRowTotal: TcxCheckBox;
    pvStoppTid: TcxDBPivotGrid;
    acNewStoppTidMall: TAction;
    acSaveStoppTidMall: TAction;
    acRemoveStoppTidMall: TAction;
    cds_StoppTid: TFDQuery;
    ds_StoppTid: TDataSource;
    cds_StoppTidRegPointName: TStringField;
    cds_StoppTidStoppTidsNamn: TStringField;
    cds_StoppTidStoppStartWithTime: TSQLTimeStampField;
    cds_StoppTidKvitterat: TIntegerField;
    cds_StoppTidStoppOrsakNr: TIntegerField;
    cds_StoppTidDriftPlatsnr: TIntegerField;
    cds_StoppTidVerkNo: TIntegerField;
    cds_StoppTidNoOfStopps: TIntegerField;
    pvStoppTidRegPointName: TcxDBPivotGridField;
    pvStoppTidStoppTidsNamn: TcxDBPivotGridField;
    pvStoppTidStoppStartNoTime: TcxDBPivotGridField;
    pvStoppTidStoppStartWithTime: TcxDBPivotGridField;
    pvStoppTidKvitterat: TcxDBPivotGridField;
    pvStoppTidStoppOrsakNr: TcxDBPivotGridField;
    pvStoppTidStoppSeconds: TcxDBPivotGridField;
    pvStoppTidStoppMinutes: TcxDBPivotGridField;
    pvStoppTidStoppHours: TcxDBPivotGridField;
    pvStoppTidDriftPlatsnr: TcxDBPivotGridField;
    pvStoppTidVerkNo: TcxDBPivotGridField;
    pvStoppTidNoOfStopps: TcxDBPivotGridField;
    pvStoppTidUtfallTid: TcxDBPivotGridField;
    pvStoppTidUtfallAntalStopp: TcxDBPivotGridField;
    acExpandStoppTidAll: TAction;
    acMinimizeStoppTidAll: TAction;
    dxComponentPrinter1Link9: TcxPivotGridReportLink;
    cxPivotGridChartConnection1: TcxPivotGridChartConnection;
    grdStoppTidDBTableView1: TcxGridDBTableView;
    grdStoppTidLevel1: TcxGridLevel;
    grdStoppTid: TcxGrid;
    grdStoppTidChartView1: TcxGridChartView;
    cxSplitter3: TcxSplitter;
    pvStoppTidYear: TcxDBPivotGridField;
    pvStoppTidQuarter: TcxDBPivotGridField;
    pvStoppTidMonth: TcxDBPivotGridField;
    pvStoppTidVecka: TcxDBPivotGridField;
    acCalcWorkingTime: TAction;
    cdsStandardHours: TFDQuery;
    cdsStandardHoursDriftPlatsNr: TIntegerField;
    cdsStandardHoursType: TIntegerField;
    cdsStandardHoursTypeValue: TStringField;
    cdsStandardHoursWorkHours: TIntegerField;
    cdsStandardHoursStartTime: TSQLTimeStampField;
    cdsStandardHoursEndTime: TSQLTimeStampField;
    cdsStandardHoursNote: TStringField;
    cdsStandardHoursVeckoDag: TStringField;
    cdsStandardHoursTypAvDag: TStringField;
    cdsStandardHoursKindOfException: TIntegerField;
    cxButton19: TcxButton;
    lcProdUnit: TcxDBLookupComboBox;
    cxLabel4: TcxLabel;
    cds_ProdUnits: TFDQuery;
    cds_ProdUnitsRegPointName: TStringField;
    cds_ProdUnitsRegPointNo: TIntegerField;
    cds_ProdUnitsProductionUnitNo: TIntegerField;
    cds_UserPropsProdUnit: TStringField;
    acPrintSawcoStyleReport: TAction;
    frxReport1: TfrxReport;
    sp_StoppTid01: TFDStoredProc;
    frxDBDataset1: TfrxDBDataset;
    cxButton20: TcxButton;
    cxButton21: TcxButton;
    acStoppTidParam: TAction;
    cds_StoppSetup: TFDQuery;
    ds_StoppSetup: TDataSource;
    sp_StoppTid01Arbetstid: TStringField;
    sp_StoppTid01TotalArbetstidHours: TFloatField;
    sp_StoppTid01Kalendertid: TStringField;
    sp_StoppTid01TotalTimeHours: TFloatField;
    sp_StoppTid01LargeStop: TIntegerField;
    sp_StoppTid01ClientName: TStringField;
    sp_StoppTid01RegPointName: TStringField;
    sp_StoppTid01StoppOrsakNr: TIntegerField;
    sp_StoppTid01StoppTidsNamn: TStringField;
    sp_StoppTid01GroupNo: TIntegerField;
    sp_StoppTid01StartPeriod: TSQLTimeStampField;
    sp_StoppTid01EndPeriod: TSQLTimeStampField;
    sp_StoppTid01HuvudOrsak: TStringField;
    sp_StoppTid01AntalKortaStopp: TIntegerField;
    sp_StoppTid01TidKortaStopp: TFloatField;
    sp_StoppTid01TidKortaStoppHourMin: TStringField;
    sp_StoppTid01AntalLangaStopp: TIntegerField;
    sp_StoppTid01TidLangaStopp: TFloatField;
    sp_StoppTid01TidLangaStoppHourMin: TStringField;
    sp_StoppTid01TotaltAntalStopp: TIntegerField;
    sp_StoppTid01TotaltTidStoppHourMin: TStringField;
    sp_StoppTid01TotaltTidStopp: TIntegerField;
    sp_StoppTid01ProcentAvArbetsTid: TFloatField;
    sp_StoppTid01ProcentAvKalenderTid: TFloatField;
    sp_StoppTid01ProcentAvStoppTid: TFloatField;
    sp_StoppTid01PercentKortaStoppAvArbetstid: TFloatField;
    sp_StoppTid01PercentLangaStoppAvArbetstid: TFloatField;
    sp_StoppTid01PercentALLAStoppAvArbetstid: TFloatField;
    sp_StoppTid01TotaltKortaStoppTimmar: TFloatField;
    sp_StoppTid01TotaltLangaStoppTimmar: TFloatField;
    sp_StoppTid01KortaStoppTimmar: TFloatField;
    sp_StoppTid01LangaStoppTimmar: TFloatField;
    sp_StoppTid01TotaltStoppTimmar: TFloatField;
    frxPDFExport1: TfrxPDFExport;
    sp_StoppTid01Verkningsgrad: TFloatField;
    sp_StoppTid01TotaltALLAStoppAvArbetstid: TFloatField;
    Label3: TLabel;
    cbSortByFieldInStoppStat: TcxComboBox;
    dxComponentPrinter1Link10: TcxPivotGridReportLink;
    dxComponentPrinter1Link11: TdxGridReportLink;
    dxComponentPrinter1Link12: TdxCustomContainerReportLink;
    dxComponentPrinter1Link13: TdxCompositionReportLink;
    cbNearOrFarSum: TcxCheckBox;
    cds_DataPieces: TIntegerField;
    pivLeveranserPieces: TcxDBPivotGridField;
    cds_StoppTidProductNo: TIntegerField;
    cds_StoppTidKoNr: TIntegerField;
    cds_StoppTidProdukt: TStringField;
    pvStoppTidProdukt: TcxDBPivotGridField;
    pvStoppTidKoNr: TcxDBPivotGridField;
    cds_StoppTidSkift: TStringField;
    pvStoppTidSkift: TcxDBPivotGridField;
    cxButton22: TcxButton;
    cxButton23: TcxButton;
    cbKilnMallar: TcxComboBox;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
    cxButton26: TcxButton;
    cxLabel7: TcxLabel;
    cbVisaItork: TcxDBCheckBox;
    pivKDDIM_Grade: TcxDBPivotGridField;
    acNyTorkMall: TAction;
    acSaveKilnMall: TAction;
    acRemoveKilnMall: TAction;
    acExpandAllKiln: TAction;
    acCollapseAllKiln: TAction;
    pivKDDIM_Grade_Length: TcxDBPivotGridField;
    pivKDALMM: TcxDBPivotGridField;
    cbShowRowTotalsKiln: TcxCheckBox;
    pivKDDIM_Grade_Length_TS: TcxDBPivotGridField;
    pivKDInDate: TcxDBPivotGridField;
    pivKDNoOfPkgs: TcxDBPivotGridField;
    pivKDDateOnly: TcxDBPivotGridField;
    sq_ProdDataSumIIPKT: TFloatField;
    sq_ProdDataSumIISortingOrderNo: TIntegerField;
    sq_ProdDataSumIISortingOrderRowNo: TIntegerField;
    sq_ProdDataSumIIReferens: TStringField;
    sq_ProdDataSumIIHeadLO: TIntegerField;
    sq_ProdDataSumIIClientName: TStringField;
    sq_ProdDataSumPKT: TFloatField;
    sq_ProdDataSumSortingOrderNo: TIntegerField;
    sq_ProdDataSumSortingOrderRowNo: TIntegerField;
    sq_ProdDataSumReferens: TStringField;
    sq_ProdDataSumHeadLO: TIntegerField;
    sq_ProdDataSumClientName: TStringField;
    cds_ProdDatapkt: TFloatField;
    cds_ProdDataKöorderID: TIntegerField;
    cds_ProdDataKörorderRadID: TIntegerField;
    cds_ProdDataREFERENCE: TStringField;
    cds_ProdDataHeadLO: TIntegerField;
    cds_ProdDataClientName: TStringField;
    pivKoorderID: TcxDBPivotGridField;
    pivSortingOrderRowNo: TcxDBPivotGridField;
    pivReferens: TcxDBPivotGridField;
    pivLO: TcxDBPivotGridField;
    pivKund: TcxDBPivotGridField;
    siLangLinked_fAnalyseraLeveranser: TsiLangLinked;
    sq_ProdDataSumIIShiftScheduleName: TStringField;
    sq_ProdDataSumShiftScheduleName: TStringField;
    pivSkiftschema: TcxDBPivotGridField;
    cds_StoppTidFackNummer: TIntegerField;
    cds_StoppTidCentrum: TStringField;
    cds_StoppTidLangdIFack: TStringField;
    cds_StoppTidRunID: TIntegerField;
    cds_StoppTidExternID: TStringField;
    cds_StoppTidNotering: TStringField;
    pvStoppTidFackNummer: TcxDBPivotGridField;
    pvStoppTidCentrum: TcxDBPivotGridField;
    pvStoppTidLangdIFack: TcxDBPivotGridField;
    pvStoppTidRunID: TcxDBPivotGridField;
    pvStoppTidExternID: TcxDBPivotGridField;
    pvStoppTidNotering: TcxDBPivotGridField;
    cds_StoppTidStoppStartNoTime: TDateField;
    cds_StoppTidStoppSeconds: TFloatField;
    cds_StoppTidStoppMinutes: TBCDField;
    cds_StoppTidStoppHours: TFloatField;
    tsLOOrderstock: TcxTabSheet;
    Panel9: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Bevel2: TBevel;
    cxComboBox1: TcxComboBox;
    cxSpinEdit1: TcxSpinEdit;
    cxCheckBox4: TcxCheckBox;
    Button1: TButton;
    cxRadioGroup1: TcxRadioGroup;
    Panel10: TPanel;
    cxButton27: TcxButton;
    cxButton28: TcxButton;
    cbLOOrderstocklayouter: TcxComboBox;
    cxButton29: TcxButton;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    cds_LOOrderstock: TFDQuery;
    ds_LOOrderstock: TDataSource;
    cds_LOOrderstockOrderstockDate: TDateField;
    cds_LOOrderstockVerkNo: TIntegerField;
    cds_LOOrderstockSearchName: TStringField;
    cds_LOOrderstockLONo: TIntegerField;
    cds_LOOrderstockStartWeek: TIntegerField;
    cds_LOOrderstockEndWeek: TIntegerField;
    cds_LOOrderstockProdukt: TStringField;
    cds_LOOrderstockAT: TFloatField;
    cds_LOOrderstockAB: TFloatField;
    cds_LOOrderstockTS: TStringField;
    cds_LOOrderstockKV: TStringField;
    cds_LOOrderstockUT: TStringField;
    cds_LOOrderstockIMP: TStringField;
    cds_LOOrderstockLängd: TStringField;
    cds_LOOrderstockspid: TIntegerField;
    cds_LOOrderstockOrderNM3: TFloatField;
    cds_LOOrderstockOrderAM3: TFloatField;
    cds_LOOrderstockLevNM3: TFloatField;
    cds_LOOrderstockLevAM3: TFloatField;
    cds_LOOrderstockPrice: TFloatField;
    cds_LOOrderstockRestAM3: TFloatField;
    cds_LOOrderstockRestNM3: TFloatField;
    cds_LOOrderstockRestValue: TFloatField;
    cds_LOOrderstockAvgPricePerNM3: TFloatField;
    cds_LOOrderstockAvgPricePerAM3: TFloatField;
    pgLOOrderstock: TcxDBPivotGrid;
    pgLOOrderstockOrderstockDate: TcxDBPivotGridField;
    pgLOOrderstockVerkNo: TcxDBPivotGridField;
    pgLOOrderstockSearchName: TcxDBPivotGridField;
    pgLOOrderstockLONo: TcxDBPivotGridField;
    pgLOOrderstockStartWeek: TcxDBPivotGridField;
    pgLOOrderstockEndWeek: TcxDBPivotGridField;
    pgLOOrderstockProdukt: TcxDBPivotGridField;
    pgLOOrderstockAT: TcxDBPivotGridField;
    pgLOOrderstockAB: TcxDBPivotGridField;
    pgLOOrderstockTS: TcxDBPivotGridField;
    pgLOOrderstockKV: TcxDBPivotGridField;
    pgLOOrderstockUT: TcxDBPivotGridField;
    pgLOOrderstockIMP: TcxDBPivotGridField;
    pgLOOrderstockLngd: TcxDBPivotGridField;
    pgLOOrderstockspid: TcxDBPivotGridField;
    pgLOOrderstockOrderNM3: TcxDBPivotGridField;
    pgLOOrderstockOrderAM3: TcxDBPivotGridField;
    pgLOOrderstockLevNM3: TcxDBPivotGridField;
    pgLOOrderstockLevAM3: TcxDBPivotGridField;
    pgLOOrderstockRestAM3: TcxDBPivotGridField;
    pgLOOrderstockRestNM3: TcxDBPivotGridField;
    pgLOOrderstockRestValue: TcxDBPivotGridField;
    pgLOOrderstockAvgPricePerNM3: TcxDBPivotGridField;
    pgLOOrderstockAvgPricePerAM3: TcxDBPivotGridField;
    acNyLOOrderstockMall: TAction;
    acSaveLOOrderstockMall: TAction;
    dxComponentPrinter1Link14: TcxPivotGridReportLink;
    pivKDVagnNo: TcxDBPivotGridField;
    pivKDPaketnr: TcxDBPivotGridField;
    pivKDPrefix: TcxDBPivotGridField;
    pivKDNM3: TcxDBPivotGridField;
    pivKDKilnChargeNo: TcxDBPivotGridField;
    cds_TorkSatser: TFDStoredProc;
    cds_TorkSatser2: TFDQuery;
    cds_TorkSatser2Verk: TStringField;
    cds_TorkSatser2KilnName: TStringField;
    cds_TorkSatser2StartTime: TSQLTimeStampField;
    cds_TorkSatser2EndTime: TSQLTimeStampField;
    cds_TorkSatser2PlaneradTid: TFloatField;
    cds_TorkSatser2KalkyleradTid: TIntegerField;
    cds_TorkSatser2AM3: TFloatField;
    cds_TorkSatser2AT: TFloatField;
    cds_TorkSatser2AB: TFloatField;
    cds_TorkSatser2TS: TStringField;
    cds_TorkSatser2KV: TStringField;
    cds_TorkSatser2UT: TStringField;
    cds_TorkSatser2IMP: TStringField;
    cds_TorkSatser2DIM_Grade: TStringField;
    cds_TorkSatser2DIM_Grade_Length: TStringField;
    cds_TorkSatser2ALMM: TFloatField;
    cds_TorkSatser2DIM_Grade_Length_TS: TStringField;
    cds_TorkSatser2InDate: TSQLTimeStampField;
    cds_TorkSatser2NoOfPkgs: TIntegerField;
    cds_TorkSatser2DateOnly: TDateField;
    cds_TorkSatser2VagnNo: TIntegerField;
    cds_TorkSatser2Paketnr: TIntegerField;
    cds_TorkSatser2Prefix: TStringField;
    cds_TorkSatser2NM3: TFloatField;
    cds_TorkSatser2KilnChargeNo: TIntegerField;
    cds_TorkSatserREFERENCE: TStringField;
    cds_TorkSatserInfo2: TStringField;
    cds_TorkSatserKilnChargeNo: TIntegerField;
    cds_TorkSatserVagnNo: TIntegerField;
    cds_TorkSatserPaketnr: TIntegerField;
    cds_TorkSatserPrefix: TStringField;
    cds_TorkSatserVerk: TStringField;
    cds_TorkSatserKilnName: TStringField;
    cds_TorkSatserStartTime: TSQLTimeStampField;
    cds_TorkSatserEndTime: TSQLTimeStampField;
    cds_TorkSatserPlaneradTid: TFloatField;
    cds_TorkSatserKalkyleradTid: TIntegerField;
    cds_TorkSatserDiffTid: TFloatField;
    cds_TorkSatserNoOfPkgs: TIntegerField;
    cds_TorkSatserAM3: TFloatField;
    cds_TorkSatserNM3: TFloatField;
    cds_TorkSatserAT: TFloatField;
    cds_TorkSatserAB: TFloatField;
    cds_TorkSatserTS: TStringField;
    cds_TorkSatserKV: TStringField;
    cds_TorkSatserUT: TStringField;
    cds_TorkSatserIMP: TStringField;
    cds_TorkSatserDIM_Grade: TStringField;
    cds_TorkSatserDIM_Grade_Length: TStringField;
    cds_TorkSatserALMM: TFloatField;
    cds_TorkSatserDIM_Grade_Length_TS: TStringField;
    cds_TorkSatserInDate: TSQLTimeStampField;
    cds_TorkSatserDateOnly: TDateField;
    pivKDDiffTid: TcxDBPivotGridField;
    pivKDEndTime: TcxDBPivotGridField;
    pivKDREFERENCE: TcxDBPivotGridField;
    pivKDInfo2: TcxDBPivotGridField;
    cds_Datakg: TFloatField;
    pivLeveranserKG: TcxDBPivotGridField;
    pivDateAndTime: TcxDBPivotGridField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acRefreshExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cds_UserProps1CopyPcsChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure fM_PrisCalculateCustomSummary(Sender: TcxPivotGridField;
      ASummary: TcxPivotGridCrossCellSummary);
    procedure cds_UserProps1VerkNoChange(Sender: TField);
    procedure acSendEmailExecute(Sender: TObject);
    procedure cbTotalsPropertiesChange(Sender: TObject);
    procedure cbxSortFieldPropertiesChange(Sender: TObject);
    procedure cbxSortByFieldPropertiesChange(Sender: TObject);
    procedure speTopCountPropertiesChange(Sender: TObject);
    procedure cbxTopValuesShowOthersPropertiesChange(Sender: TObject);
    procedure acExportToXLSExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acSendToAllMillsExecute(Sender: TObject);
    procedure MedelCalculateCustomSummary(Sender: TcxPivotGridField;
      ASummary: TcxPivotGridCrossCellSummary);
    procedure acSortByDataExecute(Sender: TObject);
    procedure pivLeveranserClick(Sender: TObject);
    procedure rgOrderTypePropertiesChange(Sender: TObject);
    procedure acPrintProdDiagramExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure acTodayExecute(Sender: TObject);
    procedure acYesterdayExecute(Sender: TObject);
    procedure acNyLeveransLayoutExecute(Sender: TObject);
    procedure acLoadLeveransLayoutExecute(Sender: TObject);
    procedure cbLevLayouterPropertiesChange(Sender: TObject);
    procedure acSaveLeveranserLayoutExecute(Sender: TObject);
    procedure acRemoveLayoutExecute(Sender: TObject);
    procedure acNyProdMallExecute(Sender: TObject);
    procedure acSaveProdMallExecute(Sender: TObject);
    procedure acRemoveProdMallExecute(Sender: TObject);
    procedure cbProdMallarPropertiesChange(Sender: TObject);
    procedure acExpandAllExecute(Sender: TObject);
    procedure acCollapseAllExecute(Sender: TObject);
    procedure cxDBPivotGrid1UtbyteCalculateCustomSummary(
      Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
    procedure acNewKapMallExecute(Sender: TObject);
    procedure acSaveKapStatMallExecute(Sender: TObject);
    procedure cbKapStatMallarPropertiesChange(Sender: TObject);
    procedure acRemoveKapStatMallExecute(Sender: TObject);
    procedure acExpandKapStatAllExecute(Sender: TObject);
    procedure acCollapseKapStatAllExecute(Sender: TObject);
    procedure pvKapStatUtbyteNM3CalculateCustomSummary(
      Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
    procedure pvKapStatDiffPcsCalculateCustomSummary(
      Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
    procedure pivAvgLengthCalculateCustomSummary(Sender: TcxPivotGridField;
      ASummary: TcxPivotGridCrossCellSummary);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure cxCheckBox2PropertiesChange(Sender: TObject);
    procedure cxCheckBox3PropertiesChange(Sender: TObject);
    procedure pvKapStatUtbyteAM1CalculateCustomSummary(
      Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
    procedure acNewStoppTidMallExecute(Sender: TObject);
    procedure acSaveStoppTidMallExecute(Sender: TObject);
    procedure acRemoveStoppTidMallExecute(Sender: TObject);
    procedure cbStoppTidMallarPropertiesChange(Sender: TObject);
    procedure acExpandStoppTidAllExecute(Sender: TObject);
    procedure acMinimizeStoppTidAllExecute(Sender: TObject);
    procedure cbStoppTidTotalsPropertiesChange(Sender: TObject);
    procedure cbStoppTidRowTotalPropertiesChange(Sender: TObject);
    procedure pgMainPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure acCalcWorkingTimeExecute(Sender: TObject);
    procedure cds_UserPropsVerkNoChange(Sender: TField);
    procedure acPrintSawcoStyleReportExecute(Sender: TObject);
    procedure acStoppTidParamExecute(Sender: TObject);
    procedure cbSortByFieldInStoppStatPropertiesChange(Sender: TObject);
    procedure cbNearOrFarSumPropertiesChange(Sender: TObject);
    procedure acNyTorkMallExecute(Sender: TObject);
    procedure cbKilnMallarPropertiesChange(Sender: TObject);
    procedure acSaveKilnMallExecute(Sender: TObject);
    procedure acRemoveKilnMallExecute(Sender: TObject);
    procedure acExpandAllKilnExecute(Sender: TObject);
    procedure acCollapseAllKilnExecute(Sender: TObject);
    procedure cbShowRowTotalsKilnPropertiesChange(Sender: TObject);
    procedure pgLOOrderstockAvgPricePerNM3CalculateCustomSummary(
      Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
    procedure pgLOOrderstockAvgPricePerAM3CalculateCustomSummary(
      Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
    procedure acNyLOOrderstockMallExecute(Sender: TObject);
    procedure acSaveLOOrderstockMallExecute(Sender: TObject);
    procedure cbLOOrderstocklayouterPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FLocked: Boolean;

    procedure PrintLOOrderstock ;
    procedure RefreshLOOrderstock ;
    procedure LoadOrderstockLayoutExecute(Sender: TObject);
    procedure LoadLOOrderstockNamesToCombobox(const pMall : String) ;

    procedure LoadKilnLayoutExecute(Sender: TObject);
    procedure LoadKilnNamesToCombobox(const pMall : String) ;

    procedure SortByDataInStoppTid ;
    function  GetStoppTidParam : Integer ;
    procedure SaveStoppTidParam(const LargeStop : Integer) ;
    function  GetWorkingTimeMinutes : Double ;
    procedure PrintStoppTidStat ;
    procedure RefreshStoppTid ;
    procedure LoadStoppTidLayoutExecute(Sender: TObject);
    procedure LoadStoppTidNamesToCombobox(const pMall : String) ;
    procedure PrintTSKapStat ;
    procedure LoadKapStatLayoutExecute(Sender: TObject);
    procedure LoadKapStatNamesToCombobox(const pMall : String) ;
    procedure RefreshKapStat ;

    function  GetUserFilterSettings(const PivotGrid : TcxDBPivotGrid) : String ;
    procedure LoadProduktionsLayoutExecute(Sender: TObject);
    procedure LoadProduktionsNamesToCombobox(const pMall : String) ;
    procedure LoadLeveransNamesToCombobox(const pMall : String) ;
    procedure LoadGridLayoutExecute(const MallName : String;APivot: TcxCustomPivotGrid) ;
    procedure SaveGridLayoutExecute(const MallName : String;APivot: TcxCustomPivotGrid) ;
    Function  TOMDateFilterIsLargerORCurrentDay(const EndPeriod : TDateTime) : Boolean ;
    procedure initUserProps ;
    procedure RefreshDeliveries ;
    procedure RefreshProduction ;
    function  ExportToHTML(const pFilNamn : String) : String ;
    procedure RefreshTorkSatser ;
    procedure PrintTorkSatser ;
    procedure PrintProduction ;
    procedure PrintDeliveries ;
    procedure SetTopCountValues(const CField: TcxPivotGridField) ;
    procedure RefreshOverview ;
    procedure Expanding ;
  protected
    function CurrentFieldStoppTid: TcxPivotGridField;
    function GetPivotGrid: TcxCustomPivotGrid; virtual;
    function CurrentField: TcxPivotGridField;
//    function GetPivotGrid: TcxCustomPivotGrid; override;
  public
    { Public declarations }
    property PivotGrid: TcxCustomPivotGrid read GetPivotGrid;
  end;

var
  fAnalyseraLeveranser: TfAnalyseraLeveranser;

implementation

Uses VidaType, VidaUser , dmsDataConn, uSendMapiMail, dmsVidaContact, dmsVidaSystem,
  uConfirmCodeDialog, WorkMinutesU, UnitCRViewReport, uEnterFieldValue,
  udmLanguage;

{$R *.dfm}

function TfAnalyseraLeveranser.CurrentFieldStoppTid: TcxPivotGridField;
//  Result := PivotGrid.GetFieldByName(cbxSortField.Text);
Var x : Integer ;
begin
 for x := 0 to pvStoppTid.FieldCount-1 do
 Begin
  if pvStoppTid.Fields[x].Area = faRow then
   if pvStoppTid.Fields[x].AreaIndex = 0 then
    Begin
//     pivLeveranser.Fields[x].SortBySummaryInfo.Field        := fM_Pris ;
//     pivLeveranser.Fields[x].SortBySummaryInfo.SummaryType  := stCustom ;
     Result:= pvStoppTid.Fields[x] ;
     Exit ;
    End ;
 End ;
end;

function TfAnalyseraLeveranser.CurrentField: TcxPivotGridField;
//  Result := PivotGrid.GetFieldByName(cbxSortField.Text);
Var x : Integer ;
begin
 for x := 0 to pivLeveranser.FieldCount-1 do
 Begin
  if pivLeveranser.Fields[x].Area = faRow then
   if pivLeveranser.Fields[x].AreaIndex = 0 then
    Begin
//     pivLeveranser.Fields[x].SortBySummaryInfo.Field        := fM_Pris ;
//     pivLeveranser.Fields[x].SortBySummaryInfo.SummaryType  := stCustom ;
     Result:= pivLeveranser.Fields[x] ;
     Exit ;
    End ;
 End ;
end;

function TfAnalyseraLeveranser.GetPivotGrid: TcxCustomPivotGrid;
begin
 Result := pivLeveranser;
end;

procedure TfAnalyseraLeveranser.initUserProps ;
Begin
 cds_UserProps.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 cds_UserProps.ParamByName('Form').AsString    := Self.Name ;
 cds_UserProps.Active:= True ;
 if cds_UserProps.Eof then
 Begin
  cds_UserProps.Insert ;
  cds_UserPropsUserID.AsInteger           := ThisUser.UserID ;
  cds_UserPropsForm.AsString              := Self.Name ;
  cds_UserPropsVerkNo.AsInteger           := ThisUser.CompanyNo ;
  cds_UserPropsStartPeriod.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Date) ;
  cds_UserPropsEndPeriod.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Date) ;
  cds_UserPropsAutoColWidth.AsInteger     := 0 ;
  cds_UserPropsInputOption.AsInteger      := 0 ;
  cds_UserProps.Post ;
  if cds_UserProps.ChangeCount > 0 then
   cds_UserProps.ApplyUpdates(0) ;
 End ;

 if (cds_UserPropsInputOption.AsInteger < 0) or (cds_UserPropsInputOption.IsNull) then
 Begin
  cds_UserProps.Edit ;
  cds_UserPropsInputOption.AsInteger      := 0 ;
  cds_UserProps.Post ;
 End ;

 if not cds_UserPropsAutoColWidth.IsNull then
  pgMain.ActivePageIndex:= cds_UserPropsAutoColWidth.AsInteger ;
End ;

procedure TfAnalyseraLeveranser.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
// ClientDataSet1.Active:= False ;
 if cds_UserProps.State in [dsBrowse] then
  cds_UserProps.Edit ;
 cds_UserPropsAutoColWidth.AsInteger := pgMain.ActivePageIndex ;
 if cds_UserProps.State in [dsEdit, dsInsert] then
  cds_UserProps.Post ;
 if cds_UserProps.ChangeCount > 0 then
 Begin
  cds_UserProps.CommitUpdates ;
  cds_UserProps.ApplyUpdates(0) ;
 End;
  cds_ProdUnits.Active  := False ;
end;

procedure TfAnalyseraLeveranser.Expanding ;
var
  AGroupItem: TcxPivotGridGroupItem;
  I : Integer ;
begin
  // ...
  pivProduction.BeginUpdate;
  with pivProduction.ViewData do
  begin
    for I := 0 to RowCount - 1 do
    begin
      AGroupItem := Rows[I].GetGroupItemByField(fMtpunkt);
      if (AGroupItem <> nil) and (AGroupItem.Value = 1) then
      begin
        AGroupItem.Expanded := True;

        break;
      end;
    end;
  end;
  pivProduction.EndUpdate;
end;

procedure TfAnalyseraLeveranser.acRefreshExecute(Sender: TObject);
begin
 if pgMain.ActivePage = tsProduction then
  Begin
   RefreshProduction ;
  End
   else
    if pgMain.ActivePage = tsDeliveries then
    Begin
     RefreshDeliveries ;
     acSortByDataExecute(Sender) ;
    End
     else
      if pgMain.ActivePage = tsTorksatser then
        RefreshTorkSatser
         else
          if pgMain.ActivePage = tsOverview then
           RefreshOverview
            else
            if pgMain.ActivePage = tsKapStat then
             RefreshKapStat
              else
                if pgMain.ActivePage = tsStoppTid then
                  RefreshStoppTid
                   else
                    if pgMain.ActivePage = tsLOOrderstock then
                     RefreshLOOrderstock ;


end;



procedure TfAnalyseraLeveranser.RefreshLOOrderstock ;
var
  Save_Cursor : TCursor;
  AT, AB      : Double ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }


 Try
   cds_LOOrderstock.Active:= False ;
   cds_LOOrderstock.ParamByName('StartPeriod').AsSQLTimeStamp   := cds_UserPropsStartPeriod.AsSQLTimeStamp ;
   cds_LOOrderstock.ParamByName('EndPeriod').AsSQLTimeStamp     := cds_UserPropsEndPeriod.AsSQLTimeStamp ;
   cds_LOOrderstock.ParamByName('SupplierNo').AsInteger         := cds_UserPropsVerkNo.AsInteger ; ;
   cds_LOOrderstock.Active:= True ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfAnalyseraLeveranser.RefreshStoppTid ;
var
  Save_Cursor : TCursor;
  AT, AB      : Double ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }


 Try
   cds_StoppTid.Active:= False ;
   cds_StoppTid.ParamByName('StartPeriod').AsSQLTimeStamp   := cds_UserPropsStartPeriod.AsSQLTimeStamp ;
   cds_StoppTid.ParamByName('EndPeriod').AsSQLTimeStamp     := cds_UserPropsEndPeriod.AsSQLTimeStamp ;
   cds_StoppTid.ParamByName('VerkNo').AsInteger             := cds_UserPropsVerkNo.AsInteger ; ;
   cds_StoppTid.Active:= True ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfAnalyseraLeveranser.RefreshKapStat ;
var
  Save_Cursor : TCursor;
  AT, AB      : Double ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }

 if Length(meAT.Text) = 0 then meAT.Text  := '0' ;
 if Length(meAB.Text) = 0 then meAB.Text  := '0' ;

 Try
 AT:= StrToFloatDef(meAT.Text,0) ;
 Except
 End ;

 Try
 AB:= StrToFloatDef(meAB.Text,0) ;
 Except
 End ;

 Try
   cds_Kap.Active:= False ;
   cds_Kap.ParamByName('ATJ').AsFloat                  := AT ;
   cds_Kap.ParamByName('ABJ').AsFloat                  := AB ;
   cds_Kap.ParamByName('StartPeriod').AsSQLTimeStamp   := cds_UserPropsStartPeriod.AsSQLTimeStamp ;
   cds_Kap.ParamByName('EndPeriod').AsSQLTimeStamp     := cds_UserPropsEndPeriod.AsSQLTimeStamp ;
   cds_Kap.ParamByName('ProducerNo').AsInteger         := cds_UserPropsVerkNo.AsInteger ; ;
//   sq_KapData.ParamByName('Operation').AsInteger         := cds_UserPropsInputOption.AsInteger ;
   cds_Kap.Active:= True ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfAnalyseraLeveranser.RefreshOverview ;
var
  Save_Cursor:TCursor;
begin
{ Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;
 Try
   dbchart1.Title.Caption  := 'Översikt ' + deStartPeriod.Text + ' - ' + deEndPeriod.Text ;
   cds_overview.Active:= False ;
   sq_overview.ParamByName('SupplierNo').AsInteger        := cds_UserPropsVerkNo.AsInteger ;
   sq_overview.ParamByName('StartPeriod').AsSQLTimeStamp  := cds_UserPropsStartPeriod.AsSQLTimeStamp ;
   sq_overview.ParamByName('EndPeriod').AsSQLTimeStamp    := cds_UserPropsEndPeriod.AsSQLTimeStamp ;
   cds_overview.Active:= True ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
 }
end;

procedure TfAnalyseraLeveranser.RefreshTorkSatser ;
var
  Save_Cursor:TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;
 Try
  cds_TorkSatser.Active := False ;
  cds_TorkSatser.ParamByName('@SupplierNo').AsInteger        := cds_UserPropsVerkNo.AsInteger ;
  cds_TorkSatser.ParamByName('@StartPeriod').AsSQLTimeStamp  := cds_UserPropsStartPeriod.AsSQLTimeStamp ;
  cds_TorkSatser.ParamByName('@EndPeriod').AsSQLTimeStamp    := cds_UserPropsEndPeriod.AsSQLTimeStamp ;
  if cbVisaItork.Checked then
   cds_TorkSatser.ParamByName('@VagnStatus').AsInteger        := 1
    else
     cds_TorkSatser.ParamByName('@VagnStatus').AsInteger        := 2 ;
  cds_TorkSatser.Active := True ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;

end;

procedure TfAnalyseraLeveranser.RefreshDeliveries ;
var
  Save_Cursor:TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 Try
  cds_Data.Active:= False ;
  Case rgOrderType.ItemIndex of
   0 : Begin
        cds_Data.SQL.Clear ;
        cds_Data.SQL.Add('Select *, LoadingLocation,') ;
        cds_Data.SQL.Add('case when int_destination = ' + QuotedStr('STD') +  ' then ext_destination') ;
        cds_Data.SQL.Add('else int_destination end AS Destination, 0.0 AS M_Pris from dbo.LevSituationer_IIII') ;
        if lcVerk.Text = 'Alla' then
        Begin
         cds_verk.First ;
         cds_Data.SQL.Add('WHERE ((supplier = ' + QuotedStr(cds_verkSearchName.AsString) +')' ) ;
         While not cds_verk.Eof do
         Begin
          cds_verk.Next ;
          if not cds_verk.Eof then
          cds_Data.SQL.Add('OR (supplier = ' + QuotedStr(cds_verkSearchName.AsString) +')' ) ;
         End ;
         cds_Data.SQL.Add(')') ;
        End
        else
        cds_Data.SQL.Add('WHERE supplier = ' + QuotedStr(lcVerk.Text) ) ;

//        cds_Data.SQL.Add('WHERE ((supplier = :supplier) or (' + QuotedStr('Alla') + '= :supplier))') ;

        if cbExklEgnaLeveranser.Checked then
         cds_Data.SQL.Add('AND Customer <> Supplier ') ;

        cds_Data.SQL.Add('AND Utlastad >= :StartPeriod') ;
        cds_Data.SQL.Add('AND Utlastad <= :EndPeriod') ;
       End ;
   1 : Begin
        cds_Data.SQL.Clear ;
        cds_Data.SQL.Add('Select *, LoadingLocation,') ;
        cds_Data.SQL.Add('case when int_destination = ' + QuotedStr('STD') +  ' then ext_destination') ;
        cds_Data.SQL.Add('else int_destination end AS Destination, 0.0 AS M_Pris from dbo.LevSituationer_IIII') ;

        if lcVerk.Text = 'Alla' then
        Begin
         cds_verk.First ;
         cds_Data.SQL.Add('WHERE ((Customer = ' + QuotedStr(cds_verkSearchName.AsString) +')' ) ;
         While not cds_verk.Eof do
         Begin
          cds_verk.Next ;
          if not cds_verk.Eof then
          cds_Data.SQL.Add('OR (Customer = ' + QuotedStr(cds_verkSearchName.AsString) +')' ) ;
         End ;
         cds_Data.SQL.Add(')') ;
        End
         else
          cds_Data.SQL.Add('WHERE Customer = ' + QuotedStr(lcVerk.Text) ) ;

        if cbExklEgnaLeveranser.Checked then
         cds_Data.SQL.Add('AND Customer <> Supplier ') ;

//        cds_Data.SQL.Add('WHERE ((Customer = :supplier) or (' + QuotedStr('Alla') + '= :supplier))') ;
        cds_Data.SQL.Add('AND Utlastad >= :StartPeriod') ;
        cds_Data.SQL.Add('AND Utlastad <= :EndPeriod') ;
       End ;
  End ;
//  cds_Data.ParamByName('Supplier').AsString           := lcVerk.Text ;
  cds_Data.ParamByName('StartPeriod').AsSQLTimeStamp  := cds_UserPropsStartPeriod.AsSQLTimeStamp ;
  cds_Data.ParamByName('EndPeriod').AsSQLTimeStamp    := cds_UserPropsEndPeriod.AsSQLTimeStamp ;
//  cds_Data.SQL.SaveToFile('cds_Data.TXT') ;
  cds_Data.Active:= True ;

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

Function TfAnalyseraLeveranser.TOMDateFilterIsLargerORCurrentDay(const EndPeriod : TDateTime) : Boolean ;
var Year, Month, Day,
    nowYear, nowMonth, nowDay: Word ;
Begin
 DecodeDate(EndPeriod, Year, Month, Day) ;
 DecodeDate(Date, nowYear, nowMonth, nowDay) ;
 if (Year >= nowYear) and (Month >= nowMonth) and (Day >= nowDay) then
 Result := True
 else
 Result := False ;
End ;

procedure TfAnalyseraLeveranser.RefreshProduction ;
var
  Save_Cursor:TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 Try
 pivProduction.BeginUpdate ;
 Try


 // if (TOMDateFilterIsLargerORCurrentDay (SQLTimeStampToDateTime(cds_UserPropsEndPeriod.AsSQLTimeStamp)) = false)
//  and (not cbUseProdSum.Checked) then
//  Begin
   if cds_UserPropsVerkNo.AsInteger = 0 then
   Begin
    ds_ProdData.DataSet := sq_ProdDataSumII ;
    sq_ProdDataSumII.Active:= False ;
    sq_ProdDataSumII.ParamByName('SupplierNo').AsInteger        := cds_UserPropsVerkNo.AsInteger ;
    sq_ProdDataSumII.ParamByName('RegPointNo').AsInteger        := cds_UserPropsRegPointNo.AsInteger ;
    sq_ProdDataSumII.ParamByName('StartPeriod').AsSQLTimeStamp  := cds_UserPropsStartPeriod.AsSQLTimeStamp ;
    sq_ProdDataSumII.ParamByName('EndPeriod').AsSQLTimeStamp    := cds_UserPropsEndPeriod.AsSQLTimeStamp ;
    sq_ProdDataSumII.ParamByName('Operation').AsString          := icOperation.Text ;
    sq_ProdDataSumII.Active:= True ;
   End
   else
   Begin
    ds_ProdData.DataSet := sq_ProdDataSum ;
    sq_ProdDataSum.Active:= False ;
    sq_ProdDataSum.ParamByName('SupplierNo').AsInteger        := cds_UserPropsVerkNo.AsInteger ;
    sq_ProdDataSum.ParamByName('RegPointNo').AsInteger        := cds_UserPropsRegPointNo.AsInteger ;
    sq_ProdDataSum.ParamByName('StartPeriod').AsSQLTimeStamp  := cds_UserPropsStartPeriod.AsSQLTimeStamp ;
    sq_ProdDataSum.ParamByName('EndPeriod').AsSQLTimeStamp    := cds_UserPropsEndPeriod.AsSQLTimeStamp ;
    sq_ProdDataSum.ParamByName('Operation').AsString          := icOperation.Text ;
    sq_ProdDataSum.Active:= True ;
   End ;
{
    End //if TOMDateFilterIsLargerORCurrentDay (SQLTimeStampToDateTime(cds_UserPropsEndPeriod.AsSQLTimeStamp)) = false then
    else
    Begin
     ds_ProdData.DataSet := cds_ProdData ;
     cds_ProdData.Active:= False ;
     cds_ProdData.ParamByName('SupplierNo').AsInteger        := cds_UserPropsVerkNo.AsInteger ;
     cds_ProdData.ParamByName('RegPointNo').AsInteger        := cds_UserPropsRegPointNo.AsInteger ;
     cds_ProdData.ParamByName('StartPeriod').AsSQLTimeStamp  := cds_UserPropsStartPeriod.AsSQLTimeStamp ;
     cds_ProdData.ParamByName('EndPeriod').AsSQLTimeStamp    := cds_UserPropsEndPeriod.AsSQLTimeStamp ;
     cds_ProdData.ParamByName('Operation').AsInteger         := cds_UserPropsInputOption.AsInteger ;
     cds_ProdData.Active:= True ;
    End ;
}
 Finally
  pivProduction.EndUpdate ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfAnalyseraLeveranser.acCalcWorkingTimeExecute(Sender: TObject);
var
  fMs : Double;
begin
  inherited;
//  fMs := WorkMinutesU.WorkMinutes(cdsStandardHours, StrToDateTime('2008-01-01 07:00:00'),  StrToDateTime('2008-01-02 17:00:00') );



  cdsStandardHours.Active := False ;
  cdsStandardHours.ParamByName('DriftPlatsNr').AsInteger  := cds_UserPropsLengthOption.AsInteger ;
  cdsStandardHours.Active := True ;

  if not cdsStandardHours.Eof then
  Begin
    fMs := WorkMinutesU.WorkMinutes(cdsStandardHoursDriftPlatsNr.AsInteger,
    cdsStandardHours,

    SQLTimeStampToDateTime(cds_UserPropsStartPeriod.AsSQLTimeStamp),

    SQLTimeStampToDateTime(cds_UserPropsEndPeriod.AsSQLTimeStamp) );
    ShowMessage(FormatFloat(siLangLinked_fAnalyseraLeveranser.GetTextOrDefault('IDS_49' (* 'Arbetstid, minuter: #' *) ),  fMs ) );
  End
  else
  Begin
    ShowMessage(FormatFloat(siLangLinked_fAnalyseraLeveranser.GetTextOrDefault('IDS_50' (* 'Arbetsschema inte upplagt för vald mätpunkt.' *) ),  fMs ) );
  End;
end;

function TfAnalyseraLeveranser.GetWorkingTimeMinutes : Double ;
var
  fMs : Double;
begin
  inherited;
//  fMs := WorkMinutesU.WorkMinutes(cdsStandardHours, StrToDateTime('2008-01-01 07:00:00'),  StrToDateTime('2008-01-02 17:00:00') );



  cdsStandardHours.Active := False ;
  cdsStandardHours.ParamByName('DriftPlatsNr').AsInteger  := cds_UserPropsLengthOption.AsInteger ;
  cdsStandardHours.Active := True ;

  if not cdsStandardHours.Eof then
  Begin
    Result := WorkMinutesU.WorkMinutes(cdsStandardHoursDriftPlatsNr.AsInteger,
    cdsStandardHours,
    SQLTimeStampToDateTime(cds_UserPropsStartPeriod.AsSQLTimeStamp),
    SQLTimeStampToDateTime(cds_UserPropsEndPeriod.AsSQLTimeStamp) );
//    ShowMessage(FormatFloat('Arbetstid, minuter: #',  fMs ) );
  End
  else
  Begin
   Result := 0 ;
   // ShowMessage(FormatFloat('Arbetsschema inte upplagt för vald mätpunkt.',  fMs ) );
  End;
end;

procedure TfAnalyseraLeveranser.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfAnalyseraLeveranser.FormShow(Sender: TObject);
begin
// dmsSystem.LoadPivotLayout(ThisUser.userID, pivLeveranser.Name, pivLeveranser) ;
// dmsSystem.LoadPivotLayout(ThisUser.userID, pivProduction.Name, pivProduction) ;
// dmsSystem.LoadPivotLayout(ThisUser.userID, pivKD.Name, pivKD) ;

 cds_RegPoint.Active:= True ;
 cds_RegPoint.InsertRecord(['Alla', 0]);
// cds_RegPoint.Post ;

 cds_verk.Active:= True ;
 cds_verk.InsertRecord([0,'Alla','Alla']);
// cds_verk.Post ;

 initUserProps ;

 LoadLeveransNamesToCombobox('') ;
 acLoadLeveransLayoutExecute(Sender) ;

 if cbLevLayouter.Properties.Items.Count = 0 then
 LoadGridLayoutExecute('STD', pivLeveranser) ;

 LoadProduktionsNamesToCombobox('') ;
 LoadProduktionsLayoutExecute(Sender) ;

 LoadKapStatNamesToCombobox('') ;
 LoadKapStatLayoutExecute(Sender) ;

 LoadStoppTidNamesToCombobox('') ;
 LoadStoppTidLayoutExecute(Sender) ;

 LoadKilnNamesToCombobox('') ;
 LoadKilnLayoutExecute(Sender) ;

 LoadLOOrderstockNamesToCombobox('') ;
 LoadOrderstockLayoutExecute(Sender) ;



 if cbProdMallar.Properties.Items.Count = 0 then
 LoadGridLayoutExecute('STD', pivProduction) ;

 if ThisUser.UserID <> 8 then
 Begin
  Panel2.Visible    := False ;
//  pgMain.HideTabs:= True ;
//  pnSettings.Visible:= False ;
 End ;


  if ThisUser.CanModify[dcShowPrice] = false then
  Begin
   fM_Pris.Visible  := False ;
   fVrde.Visible    := False ;
  End ;


  cds_ProdUnits.Active  := False ;
  cds_ProdUnits.ParamByName('VerkNo').AsInteger :=  cds_UserPropsVerkNo.AsInteger ;
  cds_ProdUnits.Active  := True ;



  cds_StoppSetup.Active  := False ;
  cds_StoppSetup.ParamByName('VerkNo').AsInteger :=  cds_UserPropsVerkNo.AsInteger ;
  cds_StoppSetup.Active  := True ;

//  pivProduction.OptionsView.RowGrandTotals  := not pivProduction.OptionsView.RowGrandTotals ;
//  pivProduction.OptionsView.RowTotals       := not pivProduction.OptionsView.RowTotals ;

end;

procedure TfAnalyseraLeveranser.cds_UserProps1CopyPcsChange(Sender: TField);
begin
 Case cds_UserPropsCopyPcs.AsInteger of
  0 : pivLeveranser.OptionsDataField.Area:= dfaColumn ;
  1 : pivLeveranser.OptionsDataField.Area:= dfaNone ;
  2 : pivLeveranser.OptionsDataField.Area:= dfaRow ;
 End ;
end;

procedure TfAnalyseraLeveranser.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfAnalyseraLeveranser.FormDestroy(Sender: TObject);
begin
 fAnalyseraLeveranser:= NIL ;
end;

procedure TfAnalyseraLeveranser.fM_PrisCalculateCustomSummary(
  Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
Var SubSum, NM3, KG : Variant ;
begin
 if (ThisUser.CanModify[dcShowPrice] = True)
 and (fvrde.Visible) and (fNM3.Visible) then
 Begin
  SubSum  :=  ASummary.Owner.GetSummaryByField(fvrde,stSum) ;
  NM3     :=  ASummary.Owner.GetSummaryByField(fNM3,stSum) ;
  KG      :=  ASummary.Owner.GetSummaryByField(pivLeveranserKG,stSum) ;
  if KG > 0 then
    ASummary.Custom:= SubSum / KG
     else
      if NM3 > 0 then
        ASummary.Custom:= SubSum / NM3 else ASummary.Custom:= 0 ;
 End ;
//  ASummary.Custom:= NM3 ;
end;

procedure TfAnalyseraLeveranser.cds_UserProps1VerkNoChange(Sender: TField);
begin
//  cds_RegPoint.Filter:= '
end;

procedure TfAnalyseraLeveranser.cds_UserPropsVerkNoChange(Sender: TField);
begin
  cds_ProdUnits.Active  := False ;
  cds_ProdUnits.ParamByName('VerkNo').AsInteger :=  cds_UserPropsVerkNo.AsInteger ;
  cds_ProdUnits.Active  := True ;

  cds_StoppSetup.Active  := False ;
  cds_StoppSetup.ParamByName('VerkNo').AsInteger :=  cds_UserPropsVerkNo.AsInteger ;
  cds_StoppSetup.Active  := True ;
end;

procedure TfAnalyseraLeveranser.acSendEmailExecute(Sender: TObject);
const
  LF = #10;
Var //FormCRExportOneReport   : TFormCRExportOneReport ;
    A                       : Array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : Array of String ;
    MailToAddress           : String ;
    FilNamn                 : String ;
    Subject                 : String ;
    InfogadHTMLFil          : String ;
begin

(* MailToAddress:= dmsContact.GetEmailAddress(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger) ;
 if Length(MailToAddress) > 0 then
 Begin
 if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
 FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
 Try
  SetLength(A, 1);
  A[0]:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger ;
// const ClientNo, DocTyp : Integer;const A: array of variant);
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cFaktura, A, 'InvoiceNo '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
 Finally
  FreeAndNil(FormCRExportOneReport) ;//.Free ;
 End ;
//ExtractFilePath(Forms.Application.ExeName) + '\'+ExportFile+'.pdf';
*)

 pivProduction.OptionsView.DataFields   := False ;
 pivProduction.OptionsView.ColumnFields := False ;
 pivProduction.OptionsView.RowFields    := False ;
 Application.ProcessMessages ;
 Try

 Subject:= 'Produktion Verk-'+cds_UserPropsVerk.AsString
 +'  Mätpunkt-' + cds_UserPropsMätpunkt.AsString
 +'   Period ' +  SQLTimeStampToStr('yyyy-mm-dd', cds_UserPropsStartPeriod.AsSQLTimeStamp)
 +' tom  '  + SQLTimeStampToStr('yyyy-mm-dd', cds_UserPropsEndPeriod.AsSQLTimeStamp) ;

 InfogadHTMLFil:= ExportToHTML(Subject) ;

// Subject:= 'Tekniskt fel igår, därav utebliven rapport.  ' + Subject ;

 if cds_UserPropsVerkNo.AsInteger = 578 then
 Begin
  MailToAddress:=MailToAddress+'goran.fransson@vida.se' ;
  MailToAddress:=MailToAddress+';anders.eriksson@vida.se' ;
  MailToAddress:=MailToAddress+';fredrik.karlsson@vida.se' ;
  MailToAddress:=MailToAddress+';andreas.persson@vida.se' ;
  ;
 End
 else
 if cds_UserPropsVerkNo.AsInteger = 212 then
 Begin
  MailToAddress:=MailToAddress+'kjell.karlsson@vida.se' ;
 End
 else
 if cds_UserPropsVerkNo.AsInteger = 2878 then
 Begin
  MailToAddress:=MailToAddress+'ronny.helleljung@vida.se' ;
  MailToAddress:=MailToAddress+';thomas.hesselgren@vida.se' ;
  MailToAddress:=MailToAddress+';marcus.hugosson@vida.se' ;
  MailToAddress:=MailToAddress+';tony.jonsson@vida.se' ;
  MailToAddress:=MailToAddress+';Kenneth.Karlsson@vida.se' ;
 End
 else
 if cds_UserPropsVerkNo.AsInteger = 172 then
 Begin
  MailToAddress:=MailToAddress+'ronny.helleljung@vida.se' ;
  MailToAddress:=MailToAddress+';thomas.hesselgren@vida.se' ;
//  MailToAddress:=MailToAddress+';jakob.markusson@vida.se' ;
  MailToAddress:=MailToAddress+';marcus.hugosson@vida.se' ;
 End
 else
 if cds_UserPropsVerkNo.AsInteger = 25 then
 Begin
  MailToAddress:=MailToAddress+'jenny.carlsson@vida.se' ;
  MailToAddress:=MailToAddress+';tibor.fulop@vida.se' ;
  MailToAddress:=MailToAddress+';pg.lundmark@vida.se' ;
  MailToAddress:=MailToAddress+';robert.carlberg@vida.se' ;
 End
 else
 if cds_UserPropsVerkNo.AsInteger = 76 then
 Begin
  MailToAddress:='johan.lisemark@vida.se' ;
  MailToAddress:=MailToAddress+';stefan.frisk@vida.se' ;
  MailToAddress:=MailToAddress+';ove.sigvardsson@vida.se' ;
  MailToAddress:=MailToAddress+';nils.rydstrom@vida.se' ;
  MailToAddress:=MailToAddress+';anders.aronsson@vida.se' ;
 End
 else
 if cds_UserPropsVerkNo.AsInteger = 0 then
 Begin
  MailToAddress:='Christian.Drott@vida.se' ;
  MailToAddress:=MailToAddress+';christer.johansson@batten.se' ;
  MailToAddress:=MailToAddress+';Johan.Lisemark@vida.se' ;
  MailToAddress:=MailToAddress+';PG.Lundmark@vida.se' ;
  MailToAddress:=MailToAddress+';Karl.Lindow@vida.se' ;
  MailToAddress:=MailToAddress+';Magnus.Petersson@vida.se' ;
  MailToAddress:=MailToAddress+';jonas.axelsson@vida.se'
 End ;

 SetLength(Attach, 1);
 Attach[0]:= InfogadHTMLFil ;
// Attach[1]:= ExtractFilePath(Forms.Application.ExeName) + '\'+'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 dm_SendMapiMail         := Tdm_SendMapiMail.Create(nil);
 Try

  dm_SendMapiMail.SendMail(Subject,
  'Faktura och paketspecifikation bifogad. '
  +LF+''
  +'Invoice and package specification attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+'VIS'
  +'Lars',                                //dmsContact.GetFirstAndLastName(ThisUser.UserID),
  'lars.makiaho@falubo.se',
  MailToAddress,
  InfogadHTMLFil,
//  'lars.makiaho@falubo.se', //getinvoice emailaddress

  Attach) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;

 Finally
  pivProduction.OptionsView.DataFields   := True ;
  pivProduction.OptionsView.ColumnFields := True ;
  pivProduction.OptionsView.RowFields    := True ;
 End ;
// End
//  else
//   ShowMessage('Emailadress saknas för klienten!') ;
end;

function TfAnalyseraLeveranser.ExportToHTML(const pFilNamn : String) : String ;
Var FilNamn       : String ;
    x             : Integer ;
    ProdExportMap : String ;
    Title         : String ;
begin
 Title          := pFilNamn ;
 ProdExportMap  := dmsSystem.Get_SystemDir(ThisUser.UserID, 'Global', 'UserDir') ;//'C:\Projects\VIS\Lager\VIS 1211\EXE\' ;
 FilNamn        := ProdExportMap  + pFilNamn;

 cxExportPivotGridToHTML(FilNamn ,  pivProduction, True, 'html');
 FilNamn  := FilNamn+'.html' ;
 Memo1.Lines.Clear ;
 Memo1.Lines.LoadFromFile(FilNamn);

 For x := 0 to Memo1.Lines.Count - 1 do
 Begin
  if Memo1.Lines.Strings[x] = '<BODY>' then
  Begin
   Memo1.Lines.Insert(x+1,'<p align="center">'+Title+'</p>');
   Break ;
  End ;
 End ;

 Memo1.Lines.SaveToFile(FilNamn);
 Result:= FilNamn ;
end;

procedure TfAnalyseraLeveranser.cbTotalsPropertiesChange(Sender: TObject);
begin
 pivProduction.OptionsView.RowGrandTotals:= not pivProduction.OptionsView.RowGrandTotals ;
end;

procedure TfAnalyseraLeveranser.cbxSortFieldPropertiesChange(
  Sender: TObject);
begin
(*  FLocked := True;
  // sync settings with selected field
  if CurrentField.SortBySummaryInfo.Field = nil then
    cbxSortByField.ItemIndex := 0
  else
    cbxSortByField.Text := CurrentField.SortBySummaryInfo.Field.Caption;

{  speTopCount.Value := CurrentField.TopValueCount;
  speTopCount.Properties.MaxValue := CurrentField.GroupValueList.Count;
  cbxTopValuesShowOthers.Checked := CurrentField.TopValueShowOthers;}

  FLocked := False;
  *)
end;

procedure TfAnalyseraLeveranser.cbxSortByFieldPropertiesChange(
  Sender: TObject);
begin
 acSortByDataExecute(Sender) ;
//  if FLocked then Exit;
//  CurrentField.SortBySummaryInfo.Field := PivotGrid.GetFieldByName(cbxSortByField.Text);
end;

procedure TfAnalyseraLeveranser.speTopCountPropertiesChange(
  Sender: TObject);
begin
 if speTopCount.Value < 0 then
  speTopCount.Value:= 0 ;
  if FLocked then Exit;
  speTopCount.Properties.MaxValue := CurrentField.GroupValueList.Count;
  CurrentField.TopValueCount      := speTopCount.Value;
end;

procedure TfAnalyseraLeveranser.cbxTopValuesShowOthersPropertiesChange(
  Sender: TObject);
begin
  if FLocked then Exit;
  CurrentField.TopValueShowOthers := cbxTopValuesShowOthers.Checked;
end;

procedure TfAnalyseraLeveranser.acExportToXLSExecute(Sender: TObject);
Var FileName : String ;
begin
 SaveDialog1.Filter := 'XML files (*.xls)|*.xls';
 SaveDialog1.DefaultExt:= 'xls';
 if SaveDialog1.Execute then
 Begin
  FileName:= SaveDialog1.FileName ;
  Try
  if pgMain.ActivePage = tsProduction then
   cxExportPivotGridToXLSX(FileName, pivProduction, False, {AUseNativeFormat} True, 'xlsx')
    else
     if pgMain.ActivePage = tsDeliveries then
      cxExportPivotGridToXLSX(FileName, pivLeveranser, False, {AUseNativeFormat} True, 'xlsx')
//      cxExportPivotGridToExcel(FileName, pivLeveranser)
       else
        if pgMain.ActivePage = tsTorksatser then
         cxExportPivotGridToXLSX(FileName, pivKD, False, {AUseNativeFormat} True, 'xlsx')
          else
           if pgMain.ActivePage = tsKapStat then
            cxExportPivotGridToXLSX(FileName, pvKapStat, False, {AUseNativeFormat} True, 'xlsx')
            else
             if pgMain.ActivePage = tsStoppTid then
              cxExportPivotGridToXLSX(FileName, pvStoppTid, False, {AUseNativeFormat} True, 'xlsx')
                else
                 if pgMain.ActivePage = tsLOOrderstock then
                   cxExportPivotGridToXLSX(FileName, pgLOOrderstock, False, {AUseNativeFormat} True, 'xlsx') ;

  ShowMessage('Data exporterad till fil ' + FileName);
  Except
  End ;
 End ;
end;

procedure TfAnalyseraLeveranser.acPrintExecute(Sender: TObject);
begin
 if pgMain.ActivePage = tsProduction then
  PrintProduction
   else
    if pgMain.ActivePage = tsDeliveries then
     PrintDeliveries
      else
       if pgMain.ActivePage = tsTorksatser then
        PrintTorkSatser
         else
          if pgMain.ActivePage = tsKapStat then
           PrintTSKapStat
            else
             if pgMain.ActivePage = tsStoppTid then
              PrintStoppTidStat
                else
                    if pgMain.ActivePage = tsLOOrderstock then
                     PrintLOOrderstock ;

end;

procedure TfAnalyseraLeveranser.PrintLOOrderstock ;
begin
//  dxComponentPrinter1Link9.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link14.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link14.PrinterPage.PageHeader.CenterTitle.Add('LO orderstock') ;
  dxComponentPrinter1Link14.PrinterPage.PageHeader.CenterTitle.Add('Period: ' + deStartPeriod.Text + '-' + deEndPeriod.Text) ;
  dxComponentPrinter1Link14.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link9.PrinterPage.PageHeader.LeftTitle.Add('') ;

  dxComponentPrinter1Link14.PrinterPage.Orientation:= poLandscape ;
//  dxComponentPrinter1Link9.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1Link14.PrinterPage.ApplyToPrintDevice ;

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link14) ;
end;


procedure TfAnalyseraLeveranser.PrintStoppTidStat ;
begin
//  dxComponentPrinter1Link9.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link13.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link13.PrinterPage.PageHeader.CenterTitle.Add('Stopptidstatistik') ;
  dxComponentPrinter1Link13.PrinterPage.PageHeader.CenterTitle.Add('Period: ' + deStartPeriod.Text + '-' + deEndPeriod.Text) ;
  dxComponentPrinter1Link13.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link9.PrinterPage.PageHeader.LeftTitle.Add('') ;

  dxComponentPrinter1Link13.PrinterPage.Orientation:= poLandscape ;
//  dxComponentPrinter1Link9.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1Link13.PrinterPage.ApplyToPrintDevice ;

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link13) ;
end;

procedure TfAnalyseraLeveranser.PrintTSKapStat ;
begin
//  dxComponentPrinter1Link8.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link8.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link8.PrinterPage.PageHeader.CenterTitle.Add('Kapstatistik') ;
  dxComponentPrinter1Link8.PrinterPage.PageHeader.CenterTitle.Add('Period: ' + deStartPeriod.Text + '-' + deEndPeriod.Text) ;
  dxComponentPrinter1Link8.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link8.PrinterPage.PageHeader.LeftTitle.Add('') ;

  dxComponentPrinter1Link8.PrinterPage.Orientation:= poLandscape ;
//  dxComponentPrinter1Link8.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1Link8.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link8) ;
end;


function TfAnalyseraLeveranser.GetUserFilterSettings(const PivotGrid : TcxDBPivotGrid) : String ;
var
  I, J: Integer;
  FilterStr: string;
  AField: TcxDBPivotGridField;
begin
  FilterStr := '';
  for I := 0 to PivotGrid.FieldCount - 1 do
  begin
    AField := TcxDBPivotGridField(PivotGrid.Fields[I]);
    if AField.Filter.HasFilter then
    begin
      if Length(FilterStr) > 0 then
        FilterStr := FilterStr + ' AND ';
      FilterStr := FilterStr + AField.Caption + ' IN ['; //  .DataBinding.FieldName + ' IN [';
      for J := 0 to AField.Filter.Values.Count - 1 do
      begin
        if J > 0 then
          FilterStr := FilterStr + ', ';
        FilterStr := FilterStr + VarToStr(AField.Filter.Values[J]);
      end;
      FilterStr := FilterStr + ']';
      if AField.Filter.FilterType = ftExcluded then
        FilterStr := ' NOT ' + FilterStr;
    end;
  end;
 Result := FilterStr ; 
end;


procedure TfAnalyseraLeveranser.PrintDeliveries ;
Var FilterText  : String ;
begin
 FilterText := GetUserFilterSettings(pivLeveranser) ;
 dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Clear ;
 dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Add(FilterText) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Leveranser') ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Period: ' + deStartPeriod.Text + '-' + deEndPeriod.Text) ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add('') ;

  dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape ;
//  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1) ;
end;

procedure TfAnalyseraLeveranser.PrintProduction ;
Var FilterText  : String ;
begin
 FilterText := GetUserFilterSettings(pivProduction) ;
 dxComponentPrinter1Link2.PrinterPage.PageHeader.RightTitle.Clear ;
 dxComponentPrinter1Link2.PrinterPage.PageHeader.RightTitle.Add(FilterText) ;

//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add('Produktion') ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add('Period: ' + deStartPeriod.Text + '-' + deEndPeriod.Text) ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Add('') ;

  dxComponentPrinter1Link2.PrinterPage.Orientation:= poLandscape ;
//  dxComponentPrinter1Link2.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1Link2.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link2) ;
end;

procedure TfAnalyseraLeveranser.PrintTorkSatser ;
begin
//  dxComponentPrinter1Link3.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.CenterTitle.Add('Torksatser') ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.CenterTitle.Add('Period: ' + deStartPeriod.Text + '-' + deEndPeriod.Text) ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link3.PrinterPage.PageHeader.LeftTitle.Add('') ;

  dxComponentPrinter1Link3.PrinterPage.Orientation:= poLandscape ;
//  dxComponentPrinter1Link3.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1Link3.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link3) ;
end;


procedure TfAnalyseraLeveranser.acSendToAllMillsExecute(Sender: TObject);
begin
{VIDA HESTRA AB			25
VIDA ALVESTA AB			76
BRUZA TIMBER AB, HJÄLTEVAD	172
LJUNGBY TIMBER AB		212
VIDA VISLANDA AB		232
NEIKTER TIMBER AB		578
VIDA WOOD AB			741
BRUZA TIMBER AB, BELLÖ		2878
}
 cds_UserProps.Edit ;
 cds_UserPropsVerkNo.AsInteger:= 25 ;
 cds_UserProps.Post ;
 RefreshProduction ;
 acSendEmailExecute(Sender) ;

 cds_UserProps.Edit ;
 cds_UserPropsVerkNo.AsInteger:= 76 ;
 cds_UserProps.Post ;
 RefreshProduction ;
 acSendEmailExecute(Sender) ;

 cds_UserProps.Edit ;
 cds_UserPropsVerkNo.AsInteger:= 172 ;
 cds_UserProps.Post ;
 RefreshProduction ;
 acSendEmailExecute(Sender) ;

 {
 cds_UserProps.Edit ;
 cds_UserPropsVerkNo.AsInteger:= 212 ;
 cds_UserProps.Post ;
 RefreshProduction ;
 acSendEmailExecute(Sender) ;    }

{ cds_UserProps.Edit ;
 cds_UserPropsVerkNo.AsInteger:= 232 ;
 cds_UserProps.Post ;
 RefreshProduction ;
 acSendEmailExecute(Sender) ; }

 cds_UserProps.Edit ;
 cds_UserPropsVerkNo.AsInteger:= 578 ;
 cds_UserProps.Post ;
 RefreshProduction ;
 acSendEmailExecute(Sender) ;

 {cds_UserProps.Edit ;
 cds_UserPropsVerkNo.AsInteger:= 2878 ;
 cds_UserProps.Post ;
 RefreshProduction ;
 acSendEmailExecute(Sender) ;   }

 cds_UserProps.Edit ;
 cds_UserPropsVerkNo.AsInteger:= 0 ;
 cds_UserProps.Post ;
 RefreshProduction ;
 acSendEmailExecute(Sender) ;
end;

procedure TfAnalyseraLeveranser.MedelCalculateCustomSummary(
  Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
Var SubSum, NM3 : Variant ;
begin
 SubSum :=  ASummary.Owner.GetSummaryByField(fvrde,stSum) ;
 NM3    :=  ASummary.Owner.GetSummaryByField(fNM3,stSum) ;
 if NM3 > 0 then
  ASummary.Custom:= SubSum / NM3 else ASummary.Custom:= 0 ;
end;

procedure TfAnalyseraLeveranser.SetTopCountValues(const CField: TcxPivotGridField) ;
begin
  FLocked := True;
  // sync settings with selected field
{  if CurrentField.SortBySummaryInfo.Field = nil then
    cbxSortByField.ItemIndex := 0
  else
    cbxSortByField.Text := CurrentField.SortBySummaryInfo.Field.Caption;
    }
  speTopCount.Value               := CField.TopValueCount;
  speTopCount.Properties.MaxValue := CField.GroupValueList.Count;
  cbxTopValuesShowOthers.Checked  := CField.TopValueShowOthers;



  FLocked := False;
end;

procedure TfAnalyseraLeveranser.acSortByDataExecute(Sender: TObject);
Var x : Integer ;
begin
 if cbxSortByField.Text = 'AM3' then
 Begin
  CurrentField.SortBySummaryInfo.Field        := fAM3 ;
  CurrentField.SortBySummaryInfo.SummaryType  := stSum ;
 End
 else
 if cbxSortByField.Text = 'NM3' then
 Begin
  CurrentField.SortBySummaryInfo.Field        := fNM3 ;
  CurrentField.SortBySummaryInfo.SummaryType  := stSum ;
 End
 else
 if cbxSortByField.Text = 'Värde' then
 Begin
  CurrentField.SortBySummaryInfo.Field        := fvrde ;
  CurrentField.SortBySummaryInfo.SummaryType  := stSum ;
 End
 else
 if cbxSortByField.Text = 'M-Pris' then
 Begin
  CurrentField.SortBySummaryInfo.Field        := fM_Pris ;
  CurrentField.SortBySummaryInfo.SummaryType  := stCustom ;
 End
 else
 if cbxSortByField.Text = 'Kategori' then
 Begin
  CurrentField.SortBySummaryInfo.Field        := Nil ;
  CurrentField.SortBySummaryInfo.SummaryType  := stSum ;
 End ;
end;

procedure TfAnalyseraLeveranser.acStoppTidParamExecute(Sender: TObject);
var fEnterFieldValue: TfEnterFieldValue;
begin
 fEnterFieldValue:= TfEnterFieldValue.Create(nil) ;
 Try
  fEnterFieldValue.teFieldValue.Text  := IntToStr(GetStoppTidParam) ;
  if fEnterFieldValue.ShowModal = mrOK then
   SaveStoppTidParam(StrToIntDef(fEnterFieldValue.teFieldValue.Text,0)) ;
 Finally
  FreeAndNil(fEnterFieldValue) ;
 End;
end;

function TfAnalyseraLeveranser.GetStoppTidParam : Integer ;
Begin
 if not cds_StoppSetup.Eof then
 Begin
   Result := Round(cds_StoppSetup.FieldByName('LargeStop').AsInteger  / 60) ;
 End
 else
 Begin
   Result := 0 ;
 End;
End;

procedure TfAnalyseraLeveranser.SaveStoppTidParam(const LargeStop : Integer) ;
Begin
 if not cds_StoppSetup.Eof then
 Begin
   cds_StoppSetup.Edit ;
   cds_StoppSetup.FieldByName('LargeStop').AsInteger  := LargeStop * 60 ;
   cds_StoppSetup.Post ;
 End
 else
 Begin
   cds_StoppSetup.Insert ;
   cds_StoppSetup.FieldByName('VerkNo').AsInteger     := cds_UserPropsVerkNo.AsInteger ;
   cds_StoppSetup.FieldByName('LargeStop').AsInteger  := LargeStop * 60 ;
   cds_StoppSetup.Post ;
 End;
End;

procedure TfAnalyseraLeveranser.pivLeveranserClick(Sender: TObject);
var
  ACrossCell: TcxPivotGridCrossCell;
begin
  with pivLeveranser.HitTest do
   if HitAtDataCell then
     Caption := TcxPivotGridDataCellViewInfo(HitObject).DataField.Name
      else
       if HitAtField then
        Caption := TcxPivotGridField(Field).Caption;
//TcxPivotGridDataCellViewInfo(HitObject).DataField.Name ;

end;

procedure TfAnalyseraLeveranser.rgOrderTypePropertiesChange(
  Sender: TObject);
begin
 acRefreshExecute(Sender) ;
end;

procedure TfAnalyseraLeveranser.acPrintProdDiagramExecute(Sender: TObject);
begin
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add('Produktion') ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add('') ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Add('') ;

  dxComponentPrinter1Link2.PrinterPage.Orientation:= poLandscape ;
//  dxComponentPrinter1Link2.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1Link2.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link2) ;
end;

procedure TfAnalyseraLeveranser.acPrintSawcoStyleReportExecute(Sender: TObject);
Var //FormCRViewReport: TFormCRViewReport ;
    Save_Cursor : TCursor;
    workMinutes : Double ;
begin
//dmInvCtrl.ds_InvCtrlMetod
 Save_Cursor      := Screen.Cursor;
 Screen.Cursor    := crSQLWait;    { Show hourglass cursor }

 if (cds_StoppSetup.FieldByName('LargeStop').IsNull)
 or (cds_StoppSetup.FieldByName('LargeStop').AsInteger < 1) then
 ShowMessage(siLangLinked_fAnalyseraLeveranser.GetTextOrDefault('IDS_135' (* 'Info: Angivelse för hur lång tid korta stopp är saknas.' *) )) ;


 workMinutes  := GetWorkingTimeMinutes ;
 Try

 if workMinutes > 0 then
 Begin
   sp_StoppTid01.Active := False ;
   sp_StoppTid01.ParamByName('@TotalArbetstidHours').AsFloat  := workMinutes / 60 ;
   sp_StoppTid01.ParamByName('@StartPeriod').AsSQLTimeStamp   := cds_UserPropsStartPeriod.AsSQLTimeStamp ;
   sp_StoppTid01.ParamByName('@EndPeriod').AsSQLTimeStamp     := cds_UserPropsEndPeriod.AsSQLTimeStamp ;
   sp_StoppTid01.ParamByName('@DriftPlatsnr').AsInteger       := cds_UserPropsLengthOption.AsInteger ;
   sp_StoppTid01.Active := True ;

   frxReport1.ShowReport(true) ;
 End
 else
 showmessage(siLangLinked_fAnalyseraLeveranser.GetTextOrDefault('IDS_140' (* 'Arbetsschema saknas.' *) ));

 Finally
  sp_StoppTid01.Active  := False ;
  Screen.Cursor         := Save_Cursor;
 End;

     {
 FormCRViewReport := TFormCRViewReport.Create(Nil);
 Try
  FormCRViewReport.CreateCo('StoppTid_01.RPT') ;

  if FormCRViewReport.ReportFound then
  Begin
   Screen.Cursor := crSQLWait;
   FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(cds_UserPropsLengthOption.AsInteger) ;
   FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(TotalTimeHours) ;

   FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
   FormCRViewReport.CRViewer91.ViewReport ;
   Screen.Cursor := crSQLWait;
   FormCRViewReport.ShowModal ;
  End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
  Screen.Cursor := Save_Cursor;
 End ;         }
end;

function MinutesToDaysHoursMinutes(AMinutes: Integer): string;
const
  HOURSPERDAY = 8;    // wieviele Stunden hat der Tag? (Beispiel hier: 1 Arbeitstag)
var
  Days: Integer;
  Hours: Integer;
  Minutes: Integer;
begin
  if (AMinutes > 0) then
  begin
    Hours   := AMinutes div 60;
    Minutes := AMinutes mod 60;
    Days    := Hours div HOURSPERDAY;
    Hours   := Hours mod HOURSPERDAY;
  end
  else
  begin
    Hours   := 0;
    Minutes := 0;
    Days    := 0;
  end;

  Result := Format('%.2d:%.2d:%.2d', [Days, Hours, Minutes]);
end;

procedure TfAnalyseraLeveranser.Button2Click(Sender: TObject);
begin
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link6.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link6.PrinterPage.PageHeader.CenterTitle.Add('Produktion') ;
  dxComponentPrinter1Link6.PrinterPage.PageHeader.CenterTitle.Add('') ;
  dxComponentPrinter1Link6.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link6.PrinterPage.PageHeader.LeftTitle.Add('') ;

  dxComponentPrinter1Link6.PrinterPage.Orientation:= poLandscape ;
//  dxComponentPrinter1Link6.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1Link6.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link6) ;
end;

procedure TfAnalyseraLeveranser.acTodayExecute(Sender: TObject);
begin
 if cds_UserProps.State = dsBrowse then
  cds_UserProps.Edit ;
 cds_UserPropsStartPeriod.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Date) ;
 cds_UserPropsEndPeriod.AsSQLTimeStamp    := DateTimeToSQLTimeStamp(Now) ;
 cds_UserProps.Post ;
 acRefreshExecute(Sender) ;
end;

procedure TfAnalyseraLeveranser.acYesterdayExecute(Sender: TObject);
Var AYear, AMonth, FDay, AHour, AMinute, ASecond, AMilliSecond: Word;
    EndDate, StartDate : TDateTime ;
begin
 StartDate  := Date - 1 ;
 DecodeDateTime(StartDate, AYear, AMonth, FDay, AHour, AMinute, ASecond, AMilliSecond);
 TryEncodeDateTime(AYear, AMonth, FDay, 0, 0, 0, 0,  StartDate) ;

 EndDate  := Date - 1 ;
 DecodeDateTime(EndDate, AYear, AMonth, FDay, AHour, AMinute, ASecond, AMilliSecond);
 TryEncodeDateTime(AYear, AMonth, FDay, 23, 59, 59, 0,  EndDate) ;


 if cds_UserProps.State = dsBrowse then
  cds_UserProps.Edit ;
 cds_UserPropsStartPeriod.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(StartDate) ;
 cds_UserPropsEndPeriod.AsSQLTimeStamp    := DateTimeToSQLTimeStamp(EndDate) ;
 cds_UserProps.Post ;
 acRefreshExecute(Sender) ;
end;

procedure TfAnalyseraLeveranser.SaveGridLayoutExecute(const MallName : String;APivot: TcxCustomPivotGrid) ;
begin
 dmsSystem.StorePivotLayout(ThisUser.userID, APivot.Name, APivot, APivot.Name, MallName) ;
end;

procedure TfAnalyseraLeveranser.LoadGridLayoutExecute(const MallName : String;APivot: TcxCustomPivotGrid) ;
begin
 if dmsSystem.LoadPivotLayout(ThisUser.userID, APivot.Name, APivot, APivot.Name, MallName) = False then
 //Load Default layout
 dmsSystem.LoadPivotLayout(8, pivLeveranser.Name, pivLeveranser, pivLeveranser.Name, 'STD')
end;

procedure TfAnalyseraLeveranser.acNyLeveransLayoutExecute(
  Sender: TObject);
var frmConfirmCodeDialog: TfrmConfirmCodeDialog ;
begin
 frmConfirmCodeDialog:= TfrmConfirmCodeDialog.Create(Self) ;
 Try
  frmConfirmCodeDialog.LabelField.Caption := siLangLinked_fAnalyseraLeveranser.GetTextOrDefault('IDS_144' (* 'Ange mallnamn' *) ) ;
  if frmConfirmCodeDialog.Showmodal = mrOK then
  Begin
   if Length(frmConfirmCodeDialog.eConfirmationCode.Text) > 0 then
   Begin
    SaveGridLayoutExecute(frmConfirmCodeDialog.eConfirmationCode.Text, pivLeveranser) ;
    LoadLeveransNamesToCombobox(frmConfirmCodeDialog.eConfirmationCode.Text) ;
   End ;
  End ;
 Finally
  FreeAndNil(frmConfirmCodeDialog) ;
 End;
end;

procedure TfAnalyseraLeveranser.acNyLOOrderstockMallExecute(Sender: TObject);
var frmConfirmCodeDialog: TfrmConfirmCodeDialog ;
begin
 frmConfirmCodeDialog:= TfrmConfirmCodeDialog.Create(Self) ;
 Try
  frmConfirmCodeDialog.LabelField.Caption := siLangLinked_fAnalyseraLeveranser.GetTextOrDefault('IDS_144' (* 'Ange mallnamn' *) ) ;
  if frmConfirmCodeDialog.Showmodal = mrOK then
  Begin
   if Length(frmConfirmCodeDialog.eConfirmationCode.Text) > 0 then
   Begin
    SaveGridLayoutExecute(frmConfirmCodeDialog.eConfirmationCode.Text, pgLOOrderstock) ;
    LoadLOOrderstockNamesToCombobox(frmConfirmCodeDialog.eConfirmationCode.Text) ;
   End ;
  End ;
 Finally
  FreeAndNil(frmConfirmCodeDialog) ;
 End;
end;

procedure TfAnalyseraLeveranser.acLoadLeveransLayoutExecute(
  Sender: TObject);
begin
 if cbLevLayouter.ItemIndex <> -1 then
 LoadGridLayoutExecute(cbLevLayouter.Properties.Items.Strings[cbLevLayouter.ItemIndex], pivLeveranser) ;
end;

procedure TfAnalyseraLeveranser.acMinimizeStoppTidAllExecute(Sender: TObject);
var
  I: Integer;
begin
  // ...

  pvStoppTid.BeginUpdate;
  try
    for I := 0 to pvStoppTid.FieldCount - 1 do
      pvStoppTid.Fields[I].CollapseAll ;
  finally
    pvStoppTid.EndUpdate;
  end;
  // ...

end;


procedure TfAnalyseraLeveranser.LoadLeveransNamesToCombobox(const pMall : String) ;
Var Mall      : String ;
    ItemIndex : Integer ;
Begin
 cbLevLayouter.Properties.OnChange  := nil ;
 Try
 With dmsSystem do
 Begin
  if Length(pMall) = 0 then
  Begin
   if (cbLevLayouter.ItemIndex <> -1)
   and (Length(cbLevLayouter.Properties.Items.Strings[cbLevLayouter.ItemIndex]) > 0) then
    Mall := cbLevLayouter.Properties.Items.Strings[cbLevLayouter.ItemIndex] ;
  end
  else
  Mall  := pMall ;

  cbLevLayouter.Properties.Items.Clear ;

  sq_LayoutNames.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  sq_LayoutNames.ParamByName('Form').AsString     := pivLeveranser.Name ;
  sq_LayoutNames.Open ;
  Try
  sq_LayoutNames.First ;
  While not sq_LayoutNames.Eof do
  Begin
   cbLevLayouter.Properties.Items.Add(sq_LayoutNamesName.AsString) ;
   sq_LayoutNames.Next ;
  End ;

  if cbLevLayouter.Properties.Items.Count > 0 then
  Begin
   ItemIndex  := cbLevLayouter.Properties.Items.IndexOfName('Lars') ;
   if ItemIndex > -1 then
   cbLevLayouter.ItemIndex  := ItemIndex
   else
   cbLevLayouter.ItemIndex  := 0 ;
  End ;

  Finally
   sq_LayoutNames.Close ;
  End ;
 End ;//With
 Finally
  cbLevLayouter.Properties.OnChange  := cbLevLayouterPropertiesChange ;
 End ;
End ;



procedure TfAnalyseraLeveranser.cbLevLayouterPropertiesChange(
  Sender: TObject);
begin
 acLoadLeveransLayoutExecute(Sender) ;
end;

procedure TfAnalyseraLeveranser.cbLOOrderstocklayouterPropertiesChange(
  Sender: TObject);
begin
 LoadOrderstockLayoutExecute(Sender) ;

end;

procedure TfAnalyseraLeveranser.cbNearOrFarSumPropertiesChange(Sender: TObject);
begin
 if cbNearOrFarSum.Checked then
  pivProduction.OptionsView.ColumnTotalsLocation := ctlFar
   else
    pivProduction.OptionsView.ColumnTotalsLocation := ctlNear ;
end;

procedure TfAnalyseraLeveranser.acSaveLeveranserLayoutExecute(
  Sender: TObject);
begin
  if (cbLevLayouter.Properties.Items.Count > 0)
  and (Length(cbLevLayouter.Properties.Items.Strings[cbLevLayouter.ItemIndex]) > 0) then
   SaveGridLayoutExecute(cbLevLayouter.Properties.Items.Strings[cbLevLayouter.ItemIndex], pivLeveranser) ;
end;

procedure TfAnalyseraLeveranser.acSaveLOOrderstockMallExecute(Sender: TObject);
begin
  if (cbLOOrderstocklayouter.Properties.Items.Count > 0)
  and (Length(cbLOOrderstocklayouter.Properties.Items.Strings[cbLOOrderstocklayouter.ItemIndex]) > 0) then
   SaveGridLayoutExecute(cbLOOrderstocklayouter.Properties.Items.Strings[cbLOOrderstocklayouter.ItemIndex], pgLOOrderstock) ;
end;

procedure TfAnalyseraLeveranser.acRemoveLayoutExecute(Sender: TObject);
begin
  if cbLevLayouter.Properties.Items.Count > 0 then
  Begin
   if MessageDlg(siLangLinked_fAnalyseraLeveranser.GetTextOrDefault('IDS_146' (* 'Vill du ta bort mallen? ' *) ) + '[' + cbLevLayouter.Properties.Items.Strings[cbLevLayouter.ItemIndex] + ']'
  ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then

   With dmsSystem do
   Begin
    sq_DeleteLayout.ParamByName('ViewName').AsString  := pivLeveranser.Name + '/' + cbLevLayouter.Properties.Items.Strings[cbLevLayouter.ItemIndex] ;
    sq_DeleteLayout.ParamByName('UserID').AsInteger   := ThisUser.UserID ;
    sq_DeleteLayout.ParamByName('Form').AsString      := pivLeveranser.Name ;
    sq_DeleteLayout.ParamByName('Name').AsString      := cbLevLayouter.Properties.Items.Strings[cbLevLayouter.ItemIndex] ;
    Try
    sq_DeleteLayout.ExecSQL ;

    except
     On E: Exception do
     Begin
      ShowMessage(E.Message) ;
      Raise ;
     End ;
    end;

   cbLevLayouter.Properties.OnChange  := nil ;
   Try
   cbLevLayouter.Properties.Items.Delete(cbLevLayouter.ItemIndex) ;
   Finally
    cbLevLayouter.Properties.OnChange  := cbLevLayouterPropertiesChange ;
   End ;

    if cbLevLayouter.Properties.Items.Count > 0 then
     cbLevLayouter.ItemIndex  := 0 ;
   End ;//With
  End ;
end;

procedure TfAnalyseraLeveranser.acNyProdMallExecute(Sender: TObject);
var frmConfirmCodeDialog: TfrmConfirmCodeDialog ;
begin
 frmConfirmCodeDialog:= TfrmConfirmCodeDialog.Create(Self) ;
 Try
  frmConfirmCodeDialog.LabelField.Caption := siLangLinked_fAnalyseraLeveranser.GetTextOrDefault('IDS_144' (* 'Ange mallnamn' *) ) ;
  if frmConfirmCodeDialog.Showmodal = mrOK then
  Begin
   if Length(frmConfirmCodeDialog.eConfirmationCode.Text) > 0 then
   Begin
    SaveGridLayoutExecute(frmConfirmCodeDialog.eConfirmationCode.Text, pivProduction) ;
    LoadProduktionsNamesToCombobox(frmConfirmCodeDialog.eConfirmationCode.Text) ;
   End ;
  End ;
 Finally
  FreeAndNil(frmConfirmCodeDialog) ;
 End;
end;

procedure TfAnalyseraLeveranser.acNyTorkMallExecute(Sender: TObject);
var frmConfirmCodeDialog: TfrmConfirmCodeDialog ;
begin
 frmConfirmCodeDialog:= TfrmConfirmCodeDialog.Create(Self) ;
 Try
  frmConfirmCodeDialog.LabelField.Caption := siLangLinked_fAnalyseraLeveranser.GetTextOrDefault('IDS_144' (* 'Ange mallnamn' *) ) ;
  if frmConfirmCodeDialog.Showmodal = mrOK then
  Begin
   if Length(frmConfirmCodeDialog.eConfirmationCode.Text) > 0 then
   Begin
    SaveGridLayoutExecute(frmConfirmCodeDialog.eConfirmationCode.Text, pivKD) ;
    LoadKilnNamesToCombobox(frmConfirmCodeDialog.eConfirmationCode.Text) ;
   End ;
  End ;
 Finally
  FreeAndNil(frmConfirmCodeDialog) ;
 End;
end;

procedure TfAnalyseraLeveranser.acSaveProdMallExecute(Sender: TObject);
begin
  if (cbProdMallar.Properties.Items.Count > 0)
  and (Length(cbProdMallar.Properties.Items.Strings[cbProdMallar.ItemIndex]) > 0) then
   SaveGridLayoutExecute(cbProdMallar.Properties.Items.Strings[cbProdMallar.ItemIndex], pivProduction) ;
end;

procedure TfAnalyseraLeveranser.acSaveStoppTidMallExecute(Sender: TObject);
begin
  if (cbStoppTidMallar.Properties.Items.Count > 0)
  and (Length(cbStoppTidMallar.Properties.Items.Strings[cbStoppTidMallar.ItemIndex]) > 0) then
   SaveGridLayoutExecute(cbStoppTidMallar.Properties.Items.Strings[cbStoppTidMallar.ItemIndex], pvStoppTid) ;
end;

procedure TfAnalyseraLeveranser.acRemoveProdMallExecute(Sender: TObject);
begin
  if cbProdMallar.Properties.Items.Count > 0 then
  Begin
   if MessageDlg(siLangLinked_fAnalyseraLeveranser.GetTextOrDefault('IDS_146' (* 'Vill du ta bort mallen? ' *) ) + '[' + cbProdMallar.Properties.Items.Strings[cbProdMallar.ItemIndex] + ']'
  ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then

   With dmsSystem do
   Begin
    sq_DeleteLayout.ParamByName('ViewName').AsString  := pivProduction.Name + '/' + cbProdMallar.Properties.Items.Strings[cbProdMallar.ItemIndex] ;
    sq_DeleteLayout.ParamByName('UserID').AsInteger   := ThisUser.UserID ;
    sq_DeleteLayout.ParamByName('Form').AsString      := pivProduction.Name ;
    sq_DeleteLayout.ParamByName('Name').AsString      := cbProdMallar.Properties.Items.Strings[cbProdMallar.ItemIndex] ;
    Try
    sq_DeleteLayout.ExecSQL ;

    except
     On E: Exception do
     Begin
      ShowMessage(E.Message) ;
      Raise ;
     End ;
    end;

   cbProdMallar.Properties.OnChange  := nil ;
   Try
   cbProdMallar.Properties.Items.Delete(cbProdMallar.ItemIndex) ;
   Finally
    cbProdMallar.Properties.OnChange  := cbProdMallarPropertiesChange ;
   End ;

    if cbProdMallar.Properties.Items.Count > 0 then
     cbProdMallar.ItemIndex  := 0 ;
   End ;//With
  End ;
end;

procedure TfAnalyseraLeveranser.acRemoveStoppTidMallExecute(Sender: TObject);
begin
  if cbStoppTidMallar.Properties.Items.Count > 0 then
  Begin
   if MessageDlg(siLangLinked_fAnalyseraLeveranser.GetTextOrDefault('IDS_146' (* 'Vill du ta bort mallen? ' *) ) + '[' + cbStoppTidMallar.Properties.Items.Strings[cbStoppTidMallar.ItemIndex] + ']'
  ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then

   With dmsSystem do
   Begin
    sq_DeleteLayout.ParamByName('ViewName').AsString  := pvKapStat.Name + '/' + cbStoppTidMallar.Properties.Items.Strings[cbStoppTidMallar.ItemIndex] ;
    sq_DeleteLayout.ParamByName('UserID').AsInteger   := ThisUser.UserID ;
    sq_DeleteLayout.ParamByName('Form').AsString      := pvKapStat.Name ;
    sq_DeleteLayout.ParamByName('Name').AsString      := cbStoppTidMallar.Properties.Items.Strings[cbStoppTidMallar.ItemIndex] ;
    Try
    sq_DeleteLayout.ExecSQL ;

    except
     On E: Exception do
     Begin
      ShowMessage(E.Message) ;
      Raise ;
     End ;
    end;

   cbStoppTidMallar.Properties.OnChange  := nil ;
   Try
   cbStoppTidMallar.Properties.Items.Delete(cbStoppTidMallar.ItemIndex) ;
   Finally
    cbStoppTidMallar.Properties.OnChange  := cbStoppTidMallarPropertiesChange ;
   End ;

    if cbStoppTidMallar.Properties.Items.Count > 0 then
     cbStoppTidMallar.ItemIndex  := 0 ;
   End ;//With
  End ;
end;

procedure TfAnalyseraLeveranser.LoadProduktionsNamesToCombobox(const pMall : String) ;
Var Mall      : String ;
    ItemIndex : Integer ;
Begin
 cbProdMallar.Properties.OnChange  := nil ;
 Try
 With dmsSystem do
 Begin
  if Length(pMall) = 0 then
  Begin
   if (cbProdMallar.ItemIndex <> -1)
   and (Length(cbProdMallar.Properties.Items.Strings[cbProdMallar.ItemIndex]) > 0) then
    Mall := cbProdMallar.Properties.Items.Strings[cbProdMallar.ItemIndex] ;
  end
  else
  Mall  := pMall ;

  cbProdMallar.Properties.Items.Clear ;

  sq_LayoutNames.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  sq_LayoutNames.ParamByName('Form').AsString     := pivProduction.Name ;
  sq_LayoutNames.Open ;
  Try
  sq_LayoutNames.First ;
  While not sq_LayoutNames.Eof do
  Begin
   cbProdMallar.Properties.Items.Add(sq_LayoutNamesName.AsString) ;
   sq_LayoutNames.Next ;
  End ;

  if cbProdMallar.Properties.Items.Count > 0 then
  Begin
   ItemIndex  := cbProdMallar.Properties.Items.IndexOfName('Lars') ;
   if ItemIndex > -1 then
   cbProdMallar.ItemIndex  := ItemIndex
   else
   cbProdMallar.ItemIndex  := 0 ;
  End ;

  Finally
   sq_LayoutNames.Close ;
  End ;
 End ;//With
 Finally
  cbProdMallar.Properties.OnChange  := cbProdMallarPropertiesChange ;
 End ;
End ;

procedure TfAnalyseraLeveranser.LoadKapStatNamesToCombobox(const pMall : String) ;
Var Mall      : String ;
    x, ItemIndex : Integer ;
Begin
 cbKapStatMallar.Properties.OnChange  := nil ;
 Try
 With dmsSystem do
 Begin
  if Length(pMall) = 0 then
  Begin
   if (cbKapStatMallar.ItemIndex <> -1)
   and (Length(cbKapStatMallar.Properties.Items.Strings[cbKapStatMallar.ItemIndex]) > 0) then
    Mall := cbKapStatMallar.Properties.Items.Strings[cbKapStatMallar.ItemIndex] ;
  end
  else
  Mall  := pMall ;

  cbKapStatMallar.Properties.Items.Clear ;

  sq_LayoutNames.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  sq_LayoutNames.ParamByName('Form').AsString     := pvKapStat.Name ;
  sq_LayoutNames.Open ;
  Try
  sq_LayoutNames.First ;
  While not sq_LayoutNames.Eof do
  Begin
   cbKapStatMallar.Properties.Items.Add(sq_LayoutNamesName.AsString) ;
   sq_LayoutNames.Next ;
  End ;

  if cbKapStatMallar.Properties.Items.Count > 0 then
  Begin
   For x := 0 to cbKapStatMallar.Properties.Items.Count - 1 do
   Begin
    if pMall = cbKapStatMallar.Properties.Items.Strings[x] then
    cbKapStatMallar.ItemIndex  := x ;
   End ;//for x..
    if cbKapStatMallar.ItemIndex = -1 then
    cbKapStatMallar.ItemIndex  := 0 ;
  End ;

  Finally
   sq_LayoutNames.Close ;
  End ;
 End ;//With
 Finally
  cbKapStatMallar.Properties.OnChange  := cbKapStatMallarPropertiesChange ;
 End ;
End ;

procedure TfAnalyseraLeveranser.LoadProduktionsLayoutExecute(
  Sender: TObject);
begin
 if cbProdMallar.ItemIndex <> -1 then
 LoadGridLayoutExecute(cbProdMallar.Properties.Items.Strings[cbProdMallar.ItemIndex], pivProduction) ;
end;

procedure TfAnalyseraLeveranser.cbProdMallarPropertiesChange(
  Sender: TObject);
begin
 LoadProduktionsLayoutExecute(Sender) ;
end;

procedure TfAnalyseraLeveranser.cbShowRowTotalsKilnPropertiesChange(
  Sender: TObject);
begin
 pivKD.OptionsView.RowTotals:= not pivKD.OptionsView.RowTotals ;
end;

procedure TfAnalyseraLeveranser.cbSortByFieldInStoppStatPropertiesChange(
  Sender: TObject);
begin
 SortByDataInStoppTid ;
end;

procedure TfAnalyseraLeveranser.cbStoppTidMallarPropertiesChange(
  Sender: TObject);
begin
 LoadStoppTidLayoutExecute(Sender) ;
end;

procedure TfAnalyseraLeveranser.cbStoppTidRowTotalPropertiesChange(
  Sender: TObject);
begin
 pvStoppTid.OptionsView.RowTotals:= not pvStoppTid.OptionsView.RowTotals ;
end;

procedure TfAnalyseraLeveranser.cbStoppTidTotalsPropertiesChange(
  Sender: TObject);
begin
 pvStoppTid.OptionsView.RowGrandTotals:= not pvStoppTid.OptionsView.RowGrandTotals ;
end;

procedure TfAnalyseraLeveranser.acExpandAllExecute(Sender: TObject);
var
  I: Integer;
begin
  // ...

  pivProduction.BeginUpdate;
  try
    for I := 0 to pivProduction.FieldCount - 1 do
      pivProduction.Fields[I].ExpandAll ;
  finally
    pivProduction.EndUpdate;
  end;
  // ...

end;



procedure TfAnalyseraLeveranser.acExpandAllKilnExecute(Sender: TObject);
var
  I: Integer;
begin
  // ...

  pivkd.BeginUpdate;
  try
    for I := 0 to pivkd.FieldCount - 1 do
      pivkd.Fields[I].ExpandAll ;
  finally
    pivkd.EndUpdate;
  end;
  // ...

end;


procedure TfAnalyseraLeveranser.acCollapseAllExecute(Sender: TObject);
var
  I: Integer;
begin
  // ...

  pivProduction.BeginUpdate;
  try
    for I := 0 to pivProduction.FieldCount - 1 do
      pivProduction.Fields[I].CollapseAll ;
  finally
    pivProduction.EndUpdate;
  end;
  // ...

end;

procedure TfAnalyseraLeveranser.acCollapseAllKilnExecute(Sender: TObject);
 var
  I: Integer;
begin
  // ...

  pivkd.BeginUpdate;
  try
    for I := 0 to pivkd.FieldCount - 1 do
      pivkd.Fields[I].CollapseAll ;
  finally
    pivkd.EndUpdate;
  end;
  // ...
end;

procedure TfAnalyseraLeveranser.cxDBPivotGrid1UtbyteCalculateCustomSummary(
  Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
Var PaReg, AvReg  : Variant ;
begin
 if (cxDBPivotGrid1AvRegAM3.Visible) and (cxDBPivotGrid1PaRegAM3.Visible) then
 Begin
  PaReg     :=  ASummary.Owner.GetSummaryByField(cxDBPivotGrid1PaRegAM3,stSum) ;
  AvReg     :=  ASummary.Owner.GetSummaryByField(cxDBPivotGrid1AvRegAM3,stSum) ;
 if AvReg > 0 then
  ASummary.Custom:= PaReg / AvReg else ASummary.Custom:= 0 ;
 End ;
end;

procedure TfAnalyseraLeveranser.acNewKapMallExecute(Sender: TObject);
var frmConfirmCodeDialog: TfrmConfirmCodeDialog ;
begin
 frmConfirmCodeDialog:= TfrmConfirmCodeDialog.Create(Self) ;
 Try
  frmConfirmCodeDialog.LabelField.Caption := siLangLinked_fAnalyseraLeveranser.GetTextOrDefault('IDS_144' (* 'Ange mallnamn' *) ) ;
  if frmConfirmCodeDialog.Showmodal = mrOK then
  Begin
   if Length(frmConfirmCodeDialog.eConfirmationCode.Text) > 0 then
   Begin
    SaveGridLayoutExecute(frmConfirmCodeDialog.eConfirmationCode.Text, pvKapStat) ;
    LoadKapStatNamesToCombobox(frmConfirmCodeDialog.eConfirmationCode.Text) ;
   End ;
  End ;
 Finally
  FreeAndNil(frmConfirmCodeDialog) ;
 End;
end;

procedure TfAnalyseraLeveranser.acNewStoppTidMallExecute(Sender: TObject);
var frmConfirmCodeDialog: TfrmConfirmCodeDialog ;
begin
 frmConfirmCodeDialog:= TfrmConfirmCodeDialog.Create(Self) ;
 Try
  frmConfirmCodeDialog.LabelField.Caption := siLangLinked_fAnalyseraLeveranser.GetTextOrDefault('IDS_144' (* 'Ange mallnamn' *) ) ;
  if frmConfirmCodeDialog.Showmodal = mrOK then
  Begin
   if Length(frmConfirmCodeDialog.eConfirmationCode.Text) > 0 then
   Begin
    SaveGridLayoutExecute(frmConfirmCodeDialog.eConfirmationCode.Text, pvStoppTid) ;
    LoadStoppTidNamesToCombobox(frmConfirmCodeDialog.eConfirmationCode.Text) ;
   End ;
  End ;
 Finally
  FreeAndNil(frmConfirmCodeDialog) ;
 End;
end;

procedure TfAnalyseraLeveranser.LoadStoppTidLayoutExecute(Sender: TObject);
begin
 if cbStoppTidMallar.ItemIndex <> -1 then
 LoadGridLayoutExecute(cbStoppTidMallar.Properties.Items.Strings[cbStoppTidMallar.ItemIndex], pvStoppTid) ;
end;

procedure TfAnalyseraLeveranser.LoadStoppTidNamesToCombobox(const pMall : String) ;
Var Mall      : String ;
    x, ItemIndex : Integer ;
Begin
 cbStoppTidMallar.Properties.OnChange  := nil ;
 Try
 With dmsSystem do
 Begin
  if Length(pMall) = 0 then
  Begin
   if (cbStoppTidMallar.ItemIndex <> -1)
   and (Length(cbStoppTidMallar.Properties.Items.Strings[cbStoppTidMallar.ItemIndex]) > 0) then
    Mall := cbStoppTidMallar.Properties.Items.Strings[cbStoppTidMallar.ItemIndex] ;
  end
  else
  Mall  := pMall ;

  cbStoppTidMallar.Properties.Items.Clear ;

  sq_LayoutNames.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  sq_LayoutNames.ParamByName('Form').AsString     := pvStoppTid.Name ;
  sq_LayoutNames.Open ;
  Try
  sq_LayoutNames.First ;
  While not sq_LayoutNames.Eof do
  Begin
   cbStoppTidMallar.Properties.Items.Add(sq_LayoutNamesName.AsString) ;
   sq_LayoutNames.Next ;
  End ;

  if cbStoppTidMallar.Properties.Items.Count > 0 then
  Begin
   For x := 0 to cbStoppTidMallar.Properties.Items.Count - 1 do
   Begin
    if pMall = cbStoppTidMallar.Properties.Items.Strings[x] then
    cbStoppTidMallar.ItemIndex  := x ;
   End ;//for x..
    if cbStoppTidMallar.ItemIndex = -1 then
    cbStoppTidMallar.ItemIndex  := 0 ;
  End ;

  Finally
   sq_LayoutNames.Close ;
  End ;
 End ;//With
 Finally
  cbStoppTidMallar.Properties.OnChange  := cbStoppTidMallarPropertiesChange ;
 End ;
End ;


procedure TfAnalyseraLeveranser.acSaveKapStatMallExecute(Sender: TObject);
begin
  if (cbKapStatMallar.Properties.Items.Count > 0)
  and (Length(cbKapStatMallar.Properties.Items.Strings[cbKapStatMallar.ItemIndex]) > 0) then
   SaveGridLayoutExecute(cbKapStatMallar.Properties.Items.Strings[cbKapStatMallar.ItemIndex], pvKapStat) ;
end;

procedure TfAnalyseraLeveranser.acSaveKilnMallExecute(Sender: TObject);
begin
  if (cbKilnMallar.Properties.Items.Count > 0)
  and (Length(cbKilnMallar.Properties.Items.Strings[cbKilnMallar.ItemIndex]) > 0) then
   SaveGridLayoutExecute(cbKilnMallar.Properties.Items.Strings[cbKilnMallar.ItemIndex], pivKD) ;
end;

procedure TfAnalyseraLeveranser.cbKapStatMallarPropertiesChange(
  Sender: TObject);
begin
 LoadKapStatLayoutExecute(Sender) ;
end;

procedure TfAnalyseraLeveranser.cbKilnMallarPropertiesChange(Sender: TObject);
begin
 LoadKilnLayoutExecute(Sender) ;
end;

procedure TfAnalyseraLeveranser.acRemoveKapStatMallExecute(
  Sender: TObject);
begin
  if cbKapStatMallar.Properties.Items.Count > 0 then
  Begin
   if MessageDlg(siLangLinked_fAnalyseraLeveranser.GetTextOrDefault('IDS_146' (* 'Vill du ta bort mallen? ' *) ) + '[' + cbKapStatMallar.Properties.Items.Strings[cbKapStatMallar.ItemIndex] + ']'
  ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then

   With dmsSystem do
   Begin
    sq_DeleteLayout.ParamByName('ViewName').AsString  := pvKapStat.Name + '/' + cbKapStatMallar.Properties.Items.Strings[cbKapStatMallar.ItemIndex] ;
    sq_DeleteLayout.ParamByName('UserID').AsInteger   := ThisUser.UserID ;
    sq_DeleteLayout.ParamByName('Form').AsString      := pvKapStat.Name ;
    sq_DeleteLayout.ParamByName('Name').AsString      := cbKapStatMallar.Properties.Items.Strings[cbKapStatMallar.ItemIndex] ;
    Try
    sq_DeleteLayout.ExecSQL ;

    except
     On E: Exception do
     Begin
      ShowMessage(E.Message) ;
      Raise ;
     End ;
    end;

   cbKapStatMallar.Properties.OnChange  := nil ;
   Try
   cbKapStatMallar.Properties.Items.Delete(cbKapStatMallar.ItemIndex) ;
   Finally
    cbKapStatMallar.Properties.OnChange  := cbKapStatMallarPropertiesChange ;
   End ;

    if cbKapStatMallar.Properties.Items.Count > 0 then
     cbKapStatMallar.ItemIndex  := 0 ;
   End ;//With
  End ;
end;

procedure TfAnalyseraLeveranser.acRemoveKilnMallExecute(Sender: TObject);
begin
  if cbKilnMallar.Properties.Items.Count > 0 then
  Begin
   if MessageDlg(siLangLinked_fAnalyseraLeveranser.GetTextOrDefault('IDS_146' (* 'Vill du ta bort mallen? ' *) ) + '[' + cbKilnMallar.Properties.Items.Strings[cbKilnMallar.ItemIndex] + ']'
  ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then

   With dmsSystem do
   Begin
    sq_DeleteLayout.ParamByName('ViewName').AsString  := pivkd.Name + '/' + cbKilnMallar.Properties.Items.Strings[cbKilnMallar.ItemIndex] ;
    sq_DeleteLayout.ParamByName('UserID').AsInteger   := ThisUser.UserID ;
    sq_DeleteLayout.ParamByName('Form').AsString      := pivkd.Name ;
    sq_DeleteLayout.ParamByName('Name').AsString      := cbKilnMallar.Properties.Items.Strings[cbKilnMallar.ItemIndex] ;
    Try
    sq_DeleteLayout.ExecSQL ;

    except
     On E: Exception do
     Begin
      ShowMessage(E.Message) ;
      Raise ;
     End ;
    end;

   cbKilnMallar.Properties.OnChange  := nil ;
   Try
   cbKilnMallar.Properties.Items.Delete(cbKilnMallar.ItemIndex) ;
   Finally
    cbKilnMallar.Properties.OnChange  := cbKilnMallarPropertiesChange ;
   End ;

    if cbKilnMallar.Properties.Items.Count > 0 then
     cbKilnMallar.ItemIndex  := 0 ;
   End ;//With
  End ;
end;

procedure TfAnalyseraLeveranser.acExpandKapStatAllExecute(Sender: TObject);
var
  I: Integer;
begin
  // ...

  pvKapStat.BeginUpdate;
  try
    for I := 0 to pvKapStat.FieldCount - 1 do
      pvKapStat.Fields[I].ExpandAll ;
  finally
    pvKapStat.EndUpdate;
  end;
  // ...

end;

procedure TfAnalyseraLeveranser.acExpandStoppTidAllExecute(Sender: TObject);
var
  I: Integer;
begin
  // ...

  pvStoppTid.BeginUpdate;
  try
    for I := 0 to pvStoppTid.FieldCount - 1 do
      pvStoppTid.Fields[I].ExpandAll ;
  finally
    pvStoppTid.EndUpdate;
  end;
  // ...

end;

procedure TfAnalyseraLeveranser.acCollapseKapStatAllExecute(
  Sender: TObject);
var
  I: Integer;
begin
  // ...

  pvKapStat.BeginUpdate;
  try
    for I := 0 to pvKapStat.FieldCount - 1 do
      pvKapStat.Fields[I].CollapseAll ;
  finally
    pvKapStat.EndUpdate;
  end;
  // ...

end;

procedure TfAnalyseraLeveranser.LoadKapStatLayoutExecute(Sender: TObject);
begin
 if cbKapStatMallar.ItemIndex <> -1 then
 LoadGridLayoutExecute(cbKapStatMallar.Properties.Items.Strings[cbKapStatMallar.ItemIndex], pvKapStat) ;
end;

procedure TfAnalyseraLeveranser.pvKapStatUtbyteAM1CalculateCustomSummary(
  Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
Var PaReg, AvReg  : Variant ;
begin
 if (pvKapStatUtbyteAM1.Visible) and (pvKapStatPaRegAM1.Visible) then
 Begin
  PaReg     :=  ASummary.Owner.GetSummaryByField(pvKapStatPaRegAM1,stSum) ;
  AvReg     :=  ASummary.Owner.GetSummaryByField(pvKapStatAvRegAM1,stSum) ;
 if AvReg > 0 then
  ASummary.Custom:= PaReg / AvReg else ASummary.Custom:= 0 ;
 End ;
end;

procedure TfAnalyseraLeveranser.pvKapStatUtbyteNM3CalculateCustomSummary(
  Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
Var PaReg, AvReg  : Variant ;
begin
 if (pvKapStatAvRegNM3.Visible) and (pvKapStatPaRegNM3.Visible) then
 Begin
  PaReg     :=  ASummary.Owner.GetSummaryByField(pvKapStatPaRegNM3,stSum) ;
  AvReg     :=  ASummary.Owner.GetSummaryByField(pvKapStatAvRegNM3,stSum) ;
 if AvReg > 0 then
  ASummary.Custom:= PaReg / AvReg else ASummary.Custom:= 0 ;
 End ;
end;

procedure TfAnalyseraLeveranser.pvKapStatDiffPcsCalculateCustomSummary(
  Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
Var ProdPcs, PlanPcs  : Variant ;
begin
 if (pvKapStatProdPcs.Visible) and (pvKapStatPlannedpcs.Visible) then
 Begin
  ProdPcs     :=  ASummary.Owner.GetSummaryByField(pvKapStatProdPcs,stSum) ;
  PlanPcs     :=  ASummary.Owner.GetSummaryByField(pvKapStatPlannedpcs,stMax) ;
 if PlanPcs > 0 then
  ASummary.Custom:= PlanPcs - ProdPcs else ASummary.Custom:= 0 ;
 End ;
end;

procedure TfAnalyseraLeveranser.pgLOOrderstockAvgPricePerAM3CalculateCustomSummary(
  Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
Var SubSum, AM3 : Variant ;
begin
 if (ThisUser.CanModify[dcShowPrice] = True)
 and (pgLOOrderstockRestValue.Visible) and (pgLOOrderstockRestAM3.Visible) then
 Begin
  SubSum :=  ASummary.Owner.GetSummaryByField(pgLOOrderstockRestValue,stSum) ;
  AM3    :=  ASummary.Owner.GetSummaryByField(pgLOOrderstockRestAM3,stSum) ;
 if AM3 > 0 then
  ASummary.Custom:= SubSum / AM3 else ASummary.Custom:= 0 ;
 End ;
//  ASummary.Custom:= NM3 ;
end;

procedure TfAnalyseraLeveranser.pgLOOrderstockAvgPricePerNM3CalculateCustomSummary(
  Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
Var SubSum, NM3 : Variant ;
begin
 if (ThisUser.CanModify[dcShowPrice] = True)
 and (pgLOOrderstockRestValue.Visible) and (pgLOOrderstockRestNM3.Visible) then
 Begin
  SubSum :=  ASummary.Owner.GetSummaryByField(pgLOOrderstockRestValue,stSum) ;
  NM3    :=  ASummary.Owner.GetSummaryByField(pgLOOrderstockRestNM3,stSum) ;
 if NM3 > 0 then
  ASummary.Custom:= SubSum / NM3 else ASummary.Custom:= 0 ;
 End ;
//  ASummary.Custom:= NM3 ;
end;

procedure TfAnalyseraLeveranser.pgMainPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
 if NewPage = tsProduction then
 Begin
   icOperation.Visible      := True ;
   cxLabelOperation.Visible := True ;
 End
 else
 Begin
    icOperation.Visible       := False ;
    cxLabelOperation.Visible  := False ;
 End;
end;

procedure TfAnalyseraLeveranser.pivAvgLengthCalculateCustomSummary(
  Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
Var LPM, Styck  : Variant ;
begin
 if (fProdLPM.Area = faData) and (fProdLPM.Visible) and (fProdSTYCK.Area = faData) and (fProdSTYCK.Visible) then
 Begin
  LPM     :=  ASummary.Owner.GetSummaryByField(fProdLPM, stSum) ;
  Styck   :=  ASummary.Owner.GetSummaryByField(fProdSTYCK,stSum) ;
  if Styck > 0 then
   ASummary.Custom:= LPM / Styck else ASummary.Custom:= 0 ;
 End ;
end;

procedure TfAnalyseraLeveranser.cxCheckBox1PropertiesChange(
  Sender: TObject);
begin
 pivProduction.OptionsView.RowTotals:= not pivProduction.OptionsView.RowTotals ;
end;

procedure TfAnalyseraLeveranser.cxCheckBox2PropertiesChange(
  Sender: TObject);
begin
 pivLeveranser.OptionsView.RowGrandTotals:= not pivLeveranser.OptionsView.RowGrandTotals ;
end;

procedure TfAnalyseraLeveranser.cxCheckBox3PropertiesChange(
  Sender: TObject);
begin
 pivLeveranser.OptionsView.RowTotals:= not pivLeveranser.OptionsView.RowTotals ;
end;


procedure TfAnalyseraLeveranser.SortByDataInStoppTid ;
Var x : Integer ;
begin
 if cbSortByFieldInStoppStat.Text = 'Minuter' then
 Begin
  CurrentFieldStoppTid.SortBySummaryInfo.Field        := pvStoppTidStoppMinutes ;
  CurrentFieldStoppTid.SortBySummaryInfo.SummaryType  := stSum ;
 End
 else
 if cbSortByFieldInStoppStat.Text = 'Timmar' then
 Begin
  CurrentFieldStoppTid.SortBySummaryInfo.Field        := pvStoppTidStoppHours ;
  CurrentFieldStoppTid.SortBySummaryInfo.SummaryType  := stSum ;
 End
 else
 if cbSortByFieldInStoppStat.Text = 'Antal' then
 Begin
  CurrentFieldStoppTid.SortBySummaryInfo.Field        := pvStoppTidNoOfStopps ;
  CurrentFieldStoppTid.SortBySummaryInfo.SummaryType  := stSum ;
 End
 else
 if cbSortByFieldInStoppStat.Text = 'Utfall tid' then
 Begin
  CurrentFieldStoppTid.SortBySummaryInfo.Field        := pvStoppTidUtfallTid ;
  CurrentFieldStoppTid.SortBySummaryInfo.SummaryType  := stSum ;
 End
 else
 if cbSortByFieldInStoppStat.Text = 'Utfall antal' then
 Begin
  CurrentFieldStoppTid.SortBySummaryInfo.Field        := pvStoppTidUtfallAntalStopp ;
  CurrentFieldStoppTid.SortBySummaryInfo.SummaryType  := stSum ;
 End
 else
 if cbSortByFieldInStoppStat.Text = 'Kategori' then
 Begin
  CurrentFieldStoppTid.SortBySummaryInfo.Field        := Nil ;
  CurrentFieldStoppTid.SortBySummaryInfo.SummaryType  := stSum ;
 End ;

end;

procedure TfAnalyseraLeveranser.LoadKilnNamesToCombobox(const pMall : String) ;
Var Mall      : String ;
    ItemIndex : Integer ;
Begin
 cbKilnMallar.Properties.OnChange  := nil ;
 Try
 With dmsSystem do
 Begin
  if Length(pMall) = 0 then
  Begin
   if (cbKilnMallar.ItemIndex <> -1)
   and (Length(cbKilnMallar.Properties.Items.Strings[cbKilnMallar.ItemIndex]) > 0) then
    Mall := cbKilnMallar.Properties.Items.Strings[cbKilnMallar.ItemIndex] ;
  end
  else
  Mall  := pMall ;

  cbKilnMallar.Properties.Items.Clear ;

  sq_LayoutNames.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  sq_LayoutNames.ParamByName('Form').AsString     := pivKD.Name ;
  sq_LayoutNames.Open ;
  Try
  sq_LayoutNames.First ;
  While not sq_LayoutNames.Eof do
  Begin
   cbKilnMallar.Properties.Items.Add(sq_LayoutNamesName.AsString) ;
   sq_LayoutNames.Next ;
  End ;

  if cbKilnMallar.Properties.Items.Count > 0 then
  Begin
   ItemIndex  := cbKilnMallar.Properties.Items.IndexOfName('Lars') ;
   if ItemIndex > -1 then
   cbKilnMallar.ItemIndex  := ItemIndex
   else
   cbKilnMallar.ItemIndex  := 0 ;
  End ;

  Finally
   sq_LayoutNames.Close ;
  End ;
 End ;//With
 Finally
  cbKilnMallar.Properties.OnChange  := cbKilnMallarPropertiesChange ;
 End ;
End ;

procedure TfAnalyseraLeveranser.LoadKilnLayoutExecute(Sender: TObject);
begin
 if cbKilnMallar.ItemIndex <> -1 then
 LoadGridLayoutExecute(cbKilnMallar.Properties.Items.Strings[cbKilnMallar.ItemIndex], pivKD) ;
end;

procedure TfAnalyseraLeveranser.LoadOrderstockLayoutExecute(Sender: TObject);
begin
 if cbLOOrderstockLayouter.ItemIndex <> -1 then
  LoadGridLayoutExecute(cbLOOrderstockLayouter.Properties.Items.Strings[cbLOOrderstockLayouter.ItemIndex], pgLOOrderstock) ;
end;

procedure TfAnalyseraLeveranser.LoadLOOrderstockNamesToCombobox(const pMall : String) ;
Var Mall      : String ;
    ItemIndex : Integer ;
Begin
 cbLOOrderstockLayouter.Properties.OnChange  := nil ;
 Try
 With dmsSystem do
 Begin
  if Length(pMall) = 0 then
  Begin
   if (cbLOOrderstockLayouter.ItemIndex <> -1)
   and (Length(cbLOOrderstockLayouter.Properties.Items.Strings[cbLOOrderstockLayouter.ItemIndex]) > 0) then
    Mall := cbLOOrderstockLayouter.Properties.Items.Strings[cbLOOrderstockLayouter.ItemIndex] ;
  end
  else
  Mall  := pMall ;

  cbLOOrderstockLayouter.Properties.Items.Clear ;

  sq_LayoutNames.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  sq_LayoutNames.ParamByName('Form').AsString     := pgLOOrderstock.Name ;
  sq_LayoutNames.Open ;
  Try
  sq_LayoutNames.First ;
  While not sq_LayoutNames.Eof do
  Begin
   cbLOOrderstockLayouter.Properties.Items.Add(sq_LayoutNamesName.AsString) ;
   sq_LayoutNames.Next ;
  End ;

  if cbLOOrderstockLayouter.Properties.Items.Count > 0 then
  Begin
   ItemIndex  := cbLOOrderstockLayouter.Properties.Items.IndexOfName('Lars') ;
   if ItemIndex > -1 then
   cbLOOrderstockLayouter.ItemIndex  := ItemIndex
   else
   cbLOOrderstockLayouter.ItemIndex  := 0 ;
  End ;

  Finally
   sq_LayoutNames.Close ;
  End ;
 End ;//With
 Finally
  cbLOOrderstockLayouter.Properties.OnChange  := cbKilnMallarPropertiesChange ;
 End ;
End ;


End.
