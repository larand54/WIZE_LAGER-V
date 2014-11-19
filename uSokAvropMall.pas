unit uSokAvropMall;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ActnList, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, Buttons, cxCheckBox, cxLookAndFeels, dxSkinsCore,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, siComp, siLngLnk,
  System.Actions;

type
  TfSokAvropMall = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdMallDBTableView1: TcxGridDBTableView;
    grdMallLevel1: TcxGridLevel;
    grdMall: TcxGrid;
    grdMallDBTableView1Form: TcxGridDBColumn;
    grdMallDBTableView1UserID: TcxGridDBColumn;
    grdMallDBTableView1Column1: TcxGridDBColumn;
    ActionList1: TActionList;
    acNew: TAction;
    acSave: TAction;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    acDelete: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grdMallDBTableView1LOObjectType: TcxGridDBColumn;
    ds_Props: TDataSource;
    siLangLinked_fSokAvropMall: TsiLangLinked;
    procedure acNewExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fSokAvropMall: TfSokAvropMall;

implementation

uses dm_Inventory, dmsVidaSystem;

{$R *.dfm}

procedure TfSokAvropMall.acNewExecute(Sender: TObject);
begin
 With dmInventory do
 Begin
  cds_Props.Insert ;
 End ;
end;

procedure TfSokAvropMall.acDeleteExecute(Sender: TObject);
begin
 With dmInventory do
 Begin
  cds_Props.Delete ;
  if cds_Props.ChangeCount > 0 then
   cds_Props.ApplyUpdates(0) ;
 End ;
end;

procedure TfSokAvropMall.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 With dmInventory do
 Begin
  if cds_Props.State in [dsEdit, dsInsert] then
   cds_Props.Post ;
 End ;
end;

end.
