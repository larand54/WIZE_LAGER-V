unit uSelectLoadPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons, ExtCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxImageComboBox, ImgList, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
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
  TfSelectLoadPlan = class(TForm)
    grdLoadHdrDBTableView1: TcxGridDBTableView;
    grdLoadHdrLevel1: TcxGridLevel;
    grdLoadHdr: TcxGrid;
    Panel1: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    grdLoadHdrDBTableView1LoadingNo: TcxGridDBColumn;
    grdLoadHdrDBTableView1Status: TcxGridDBColumn;
    grdLoadHdrDBTableView1ETD: TcxGridDBColumn;
    grdLoadHdrDBTableView1DateCreated: TcxGridDBColumn;
    grdLoadHdrDBTableView1PrintDate: TcxGridDBColumn;
    grdLoadHdrDBTableView1Note: TcxGridDBColumn;
    grdLoadHdrDBTableView1BT: TcxGridDBColumn;
    images1616: TImageList;
    siLangLinked_fSelectLoadPlan: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fSelectLoadPlan: TfSelectLoadPlan;

implementation

uses dmcLoadPlan;

{$R *.dfm}

end.
