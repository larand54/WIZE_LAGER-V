unit uSelectLIP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, StdCtrls, Buttons, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, DB, cxLookAndFeels,
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
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, siComp,
  siLngLnk;

type
  TfSelectLIP = class(TForm)
    lcLAGERSTALLE: TcxDBLookupComboBox;
    lcLAGERGRUPP: TcxDBLookupComboBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    lcInventeringstyp: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    siLangLinked_fSelectLIP: TsiLangLinked;
    procedure lcLAGERSTALLEPropertiesCloseUp(Sender: TObject);
    procedure lcLAGERSTALLEPropertiesInitPopup(Sender: TObject);
    procedure lcLAGERGRUPPPropertiesCloseUp(Sender: TObject);
    procedure lcLAGERGRUPPPropertiesInitPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  fSelectLIP: TfSelectLIP;

implementation

uses dmcLoadPlan;

{$R *.dfm}

procedure TfSelectLIP.lcLAGERSTALLEPropertiesCloseUp(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if cds_PigHdr.UpdateOptions.ReadOnly = False then
  Begin
   if cds_PigHdr.State = dsBrowse then
   cds_PigHdr.Edit ;
   cds_PigHdrLIPNo.AsVariant:= null ;
  End ;

  cds_PhysInv.Filtered:= False ;
 End ;
end;

procedure TfSelectLIP.lcLAGERSTALLEPropertiesInitPopup(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
//  if not cds_LoadPlanDestSalesRegionNo.IsNull then
  Begin
   cds_PhysInv.Filter:= 'OwnerNo = 741' ;
   cds_PhysInv.Filtered:= True ;
  End ;
 End ;
end;

procedure TfSelectLIP.lcLAGERGRUPPPropertiesCloseUp(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
//  if not cds_PigHdrPIPNo.IsNull then
  Begin
   cds_LogInv.Filtered:= False ;
  End ;
 End ;
end;

procedure TfSelectLIP.lcLAGERGRUPPPropertiesInitPopup(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if not cds_PigHdrPIPNo.IsNull then
  Begin
   cds_LogInv.Filter:= 'PIPNo = '+cds_PigHdrPIPNo.AsString ;
   cds_LogInv.Filtered:= True ;
  End ;
 End ;
end;

end.
