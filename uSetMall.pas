unit uSetMall;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxCheckBox;

type
  TfSetMall = class(TForm)
    Panel1: TPanel;
    grdSetMallDBTableView1: TcxGridDBTableView;
    grdSetMallLevel1: TcxGridLevel;
    grdSetMall: TcxGrid;
    grdSetMallDBTableView1Owner: TcxGridDBColumn;
    grdSetMallDBTableView1clientno: TcxGridDBColumn;
    grdSetMallDBTableView1PIP: TcxGridDBColumn;
    grdSetMallDBTableView1LIP: TcxGridDBColumn;
    grdSetMallDBTableView1PIPNo: TcxGridDBColumn;
    grdSetMallDBTableView1Act: TcxGridDBColumn;
    grdSetMallDBTableView1SetMall: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetWindowsClassiclarge: TcxGridTableViewStyleSheet;
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
    grdSetMallDBTableView1LogicalInventoryPointNo: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fSetMall: TfSetMall;

implementation

{$R *.dfm}

uses dmcInvCtrl;

end.
