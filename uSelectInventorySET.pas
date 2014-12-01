unit uSelectInventorySET;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Menus,
  Vcl.StdCtrls, cxButtons;

type
  TfSelectInventorySET = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    grInventorySetDBTableView1: TcxGridDBTableView;
    grInventorySetLevel1: TcxGridLevel;
    grInventorySet: TcxGrid;
    grInventorySetDBTableView1IC_SETNo: TcxGridDBColumn;
    grInventorySetDBTableView1DateCreated: TcxGridDBColumn;
    grInventorySetDBTableView1CreatedUser: TcxGridDBColumn;
    grInventorySetDBTableView1Note: TcxGridDBColumn;
    grInventorySetDBTableView1MaxDatum: TcxGridDBColumn;
    grInventorySetDBTableView1StartFilterOnMaxDate: TcxGridDBColumn;
    grInventorySetDBTableView1EndFilterOnMaxDate: TcxGridDBColumn;
    grInventorySetDBTableView1SetStatus: TcxGridDBColumn;
    cxButton1: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fSelectInventorySET: TfSelectInventorySET;

implementation

{$R *.dfm}

uses dmcInvCtrl;

end.
