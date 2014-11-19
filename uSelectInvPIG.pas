unit uSelectInvPIG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxCalendar, StdCtrls, Buttons, cxLabel,
  cxRichEdit, cxImageComboBox, ImgList, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  TfSelectInvPIG = class(TForm)
    Panel1: TPanel;
    grdPigListDBTableView1: TcxGridDBTableView;
    grdPigListLevel1: TcxGridLevel;
    grdPigList: TcxGrid;
    grdPigListDBTableView1PIGGroupNo: TcxGridDBColumn;
    grdPigListDBTableView1LIPNo: TcxGridDBColumn;
    grdPigListDBTableView1PIPNo: TcxGridDBColumn;
    grdPigListDBTableView1InvDate: TcxGridDBColumn;
    grdPigListDBTableView1Note: TcxGridDBColumn;
    grdPigListDBTableView1DateCreated: TcxGridDBColumn;
    grdPigListDBTableView1CreatedUser: TcxGridDBColumn;
    grdPigListDBTableView1LAGERSTLLE: TcxGridDBColumn;
    grdPigListDBTableView1LAGERGRUPP: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grdPigListDBTableView1Status: TcxGridDBColumn;
    images1616: TImageList;
    siLangLinked_fSelectInvPIG: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fSelectInvPIG: TfSelectInvPIG;

implementation

uses dmcLoadPlan;

{$R *.dfm}

end.
