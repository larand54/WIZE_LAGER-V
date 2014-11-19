unit uDistDupPkgsToLoadPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxCalc, cxCurrencyEdit,
  cxCalendar, StdCtrls, Buttons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ExtCtrls, cxContainer,
  cxDBLookupComboBox, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, siComp, siLngLnk;

type
  TfDistDupPkgsToLoadPlan = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdLoadPlan: TcxGrid;
    grdLoadPlanDBBandedTableView1: TcxGridDBBandedTableView;
    grdLoadPlanDBBandedTableView1LAGERSTLLE: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1LAGERGRUPP: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1PRODUKT: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1LNGD: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1BARCODE: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1GRADESTAMP: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1SKNAMN: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1NoOfPkgsNoOfPkgsLastInv: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1NoOfPkgsARAfterDate: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1TotalLager: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1NoOfPkgsConfirmedDest: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1NoOfPkgsDiffDest: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1DateCreated: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1CreatedUser: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1LoadPlanDestRowNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1LoadingNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1NoOfPkgsPlanned: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1Tot: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1NoOfPkgsLoaded: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1NoOfPkgsLeft: TcxGridDBBandedColumn;
    grdLoadPlanLevel1: TcxGridLevel;
    BitBtn1: TBitBtn;
    cxLabel1: TcxLabel;
    grdLoadPlanDBBandedTableView1PPP: TcxGridDBBandedColumn;
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2: TcxGridDBBandedTableView;
    grdLoadPlanDBBandedTableView2LoadingNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2LoadPlanDestRowNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2PackageTypeNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsPlanned: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsBeforeDate: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsLoaded: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsARAfterDate: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsAfterDate: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsConfirmedDest: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsDiffDest: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2CreatedUser: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2LAGERSTLLE: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2LAGERGRUPP: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2PRODUKT: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2BARCODE: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2SKNAMN: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2LNGD: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2GRADESTAMP: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2SALDO: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2PaketDifferens: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsLeft: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2NoOfPkgsLastInv: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2TotalLager: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2DateCreated: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2LastInvCount: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2AR: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView2TotLager: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    siLangLinked_fDistDupPkgsToLoadPlan: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDistDupPkgsToLoadPlan: TfDistDupPkgsToLoadPlan;

implementation

uses dmcLoadPlan;

{$R *.dfm}

end.
