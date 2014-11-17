unit uPackageCostPerPkg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxSplitter,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxCheckBox, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, siComp, siLngLnk;

type
  TfPackageCostPerPkg = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxSplitter1: TcxSplitter;
    Panel5: TPanel;
    Panel6: TPanel;
    grdPackageCostDBTableView1: TcxGridDBTableView;
    grdPackageCostLevel1: TcxGridLevel;
    grdPackageCost: TcxGrid;
    grdPackageCostDetailsDBTableView1: TcxGridDBTableView;
    grdPackageCostDetailsLevel1: TcxGridLevel;
    grdPackageCostDetails: TcxGrid;
    grdPackageCostDBTableView1LIPNo: TcxGridDBColumn;
    grdPackageCostDBTableView1PackageNo: TcxGridDBColumn;
    grdPackageCostDBTableView1Suppliercode: TcxGridDBColumn;
    grdPackageCostDBTableView1Cost: TcxGridDBColumn;
    grdPackageCostDBTableView1Volume: TcxGridDBColumn;
    grdPackageCostDBTableView1avgprice: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1PackageNo: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1SupplierCode: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1LIPNo: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1LoadOrderNo: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1CostType: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1ArticleNo: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1DateCreated: TcxGridDBColumn;
    grdPackageCostDetailsDBTableView1CostPerAM3: TcxGridDBColumn;
    cxButton1: TcxButton;
    grdPackageCostDetailsDBTableView1KOSTTYP: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetRedWhiteandBlueVGA: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    GridTableViewStyleSheetWindowsStandardlarge: TcxGridTableViewStyleSheet;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    grdPackageCostDetailsDBTableView1Exclude: TcxGridDBColumn;
    siLangLinked_fPackageCostPerPkg: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fPackageCostPerPkg: TfPackageCostPerPkg;

implementation

{$R *.dfm}

uses dmcInvCtrl;

end.
