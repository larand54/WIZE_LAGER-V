unit uKilnWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDropDownEdit, cxImageComboBox, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxCalendar, cxLabel, cxControls, cxContainer, cxEdit, cxCheckBox,
  StdCtrls, Buttons, ExtCtrls, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinXmas2008Blue, siComp, siLngLnk;

type
  TfKilnWizard = class(TForm)
    cxLabel20: TcxLabel;
    deStartTime: TcxDBDateEdit;
    cxLabel17: TcxLabel;
    cxLabel19: TcxLabel;
    mePlannedDuration: TcxDBMaskEdit;
    cxLabel22: TcxLabel;
    icStatus: TcxDBImageComboBox;
    lcTork: TcxDBLookupComboBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    siLangLinked_fKilnWizard: TsiLangLinked;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
     CancelClicked : Boolean ; 
  public
    { Public declarations }
  end;

//var fKilnWizard: TfKilnWizard;

implementation

uses dmc_DryKiln;

{$R *.dfm}

procedure TfKilnWizard.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 With dm_DryKiln do
 Begin
  if CancelClicked = False then
  Begin
   if cds_KilnChargeHdrKilnNo.AsInteger < 1 then
   Begin
    ShowMessage(siLangLinked_fKilnWizard.GetTextOrDefault('IDS_0' (* 'Tub saknas' *) )) ;
    CanClose:= False ;
   End ;
  End ;//if CancelClicked = False then
 End ;
end;

procedure TfKilnWizard.BitBtn2Click(Sender: TObject);
begin
 CancelClicked := True ;
end;

procedure TfKilnWizard.BitBtn1Click(Sender: TObject);
begin
 CancelClicked := False ;
end;

end.
