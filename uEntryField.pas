unit uEntryField;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxLabel,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, cxSpinEdit, cxGridDBTableView, ExtCtrls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxNavigator, siComp, siLngLnk;

type
  TfEntryField = class(TForm)
    bbok: TBitBtn;
    bbcancel: TBitBtn;
    LTitle: TLabel;
    seAntalPaket: TcxSpinEdit;
    LExtraInfo: TcxLabel;
    PanelLength: TPanel;
    grdOtherLengths: TcxGrid;
    grdOtherLengthsDBTableView1: TcxGridDBTableView;
    grdOtherLengthsDBTableView1ALMM: TcxGridDBColumn;
    grdOtherLengthsDBTableView1AntalLngder: TcxGridDBColumn;
    grdOtherLengthsLevel1: TcxGridLevel;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    siLangLinked_fEntryField: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  fEntryField: TfEntryField;

implementation

uses dm_Inventory;

{$R *.dfm}

end.
