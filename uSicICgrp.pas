unit USicICgrp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxDBLookupComboBox, cxTextEdit, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, siComp, siLngLnk;

type
  TfSicICgrp = class(TForm)
    Panel1: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    grdSicICgrpsDBTableView1: TcxGridDBTableView;
    grdSicICgrpsLevel1: TcxGridLevel;
    grdSicICgrps: TcxGrid;
    grdSicICgrpsDBTableView1Sic_No: TcxGridDBColumn;
    grdSicICgrpsDBTableView1IC_grpno: TcxGridDBColumn;
    grdSicICgrpsDBTableView1Column1: TcxGridDBColumn;
    siLangLinked_fSicICgrp: TsiLangLinked;
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var   fSicICgrp: TfSicICgrp;

implementation

uses dmcInvCtrl;

{$R *.dfm}

procedure TfSicICgrp.dxBarLargeButton3Click(Sender: TObject);
begin
 with dmInvCtrl do
 Begin
  cds_Sic_IC_grp.Insert ;
 End ;
end;

procedure TfSicICgrp.dxBarLargeButton2Click(Sender: TObject);
begin
 with dmInvCtrl do
 Begin
  if cds_Sic_IC_grp.State in [dsEdit, dsInsert] then
   cds_Sic_IC_grp.Post ;

  if cds_Sic_IC_grp.ChangeCount > 0 then
   cds_Sic_IC_grp.ApplyUpdates(0) ;
 End ;
end;

procedure TfSicICgrp.dxBarLargeButton1Click(Sender: TObject);
begin
 Close ;
end;

end.
