unit StrInput;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  Vcl.StdCtrls, Vcl.Mask;

type
  TStrInputForm = class(TForm)
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StrInputForm: TStrInputForm;

implementation

{$R *.dfm}

procedure TStrInputForm.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  s: string;
  selstart : integer;
begin

  s := MaskEdit1.Text;
  selstart :=  maskEdit1.SelStart;
  { if (Key = VK_DELETE) then
    s[maskEdit1.SelStart+1]:='1';

    if (Key = VK_Back) then
    s[maskEdit1.SelStart-1]:='1';
  }

  {    if (Key = VK_DELETE)  then      begin
          s[maskEdit1.SelStart+1]:='0';
          MaskEdit1.Text:=s;
          MaskEdit1.SelStart := selstart+1;
          //MaskEdit1.SelLength := 1;

      end;         }



    if ((Key = VK_Back) and (MaskEdit1.SelStart = 0)) then
  begin
    MaskEdit3.SetFocus;
    MaskEdit3.SelStart := Length(MaskEdit3.Text);
    MaskEdit3.SelLength := 0;
  end;

  if ((Key = VK_Left) and (MaskEdit1.SelStart = 0)) then
  begin
    MaskEdit3.SetFocus;
    MaskEdit3.SelStart := Length(MaskEdit3.Text) - 1;
    MaskEdit3.SelLength := 1;
  end;
  if ((Key = VK_Right) and (MaskEdit1.SelStart = 9)) then
  begin
    MaskEdit2.SetFocus;
    MaskEdit2.SelStart := 0;
    MaskEdit2.SelLength := 1;
  end;

  if ((MaskEdit1.SelStart = 9) and (((47 < Key) and (Key < 58)) or (95 < Key)
    and (Key < 106))) then
  begin
    MaskEdit2.SetFocus;
    MaskEdit2.SelStart := 0;
    MaskEdit2.SelLength := 1;
  end;
  if Key = 13 then
  begin
    Label1.Caption := s;
    if MaskEdit2.Text = '' then
      Label1.Caption := Label1.Caption + ' 0'
    else
      Label1.Caption := Label1.Caption + ' ' + MaskEdit2.Text;
    Label1.Caption := Label1.Caption + ' ' + MaskEdit3.Text;
  end;
end;

procedure TStrInputForm.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  { if (Key = VK_DELETE) then
    Key := 0;
    if (Key = VK_Back) then
    Key := 0; }
     if ((Key = VK_Back) and (MaskEdit2.SelStart = 0)) then
  begin
    MaskEdit1.SetFocus;
    MaskEdit1.SelStart := Length(MaskEdit1.Text);
    MaskEdit1.SelLength := 0;
  end;



  if ((Key = VK_Right) and (MaskEdit2.SelStart = 18)) then
  begin
    MaskEdit3.SetFocus;
    MaskEdit3.SelStart := 0;
    MaskEdit3.SelLength := 1;
  end;
  if ((Key = VK_Left) and (MaskEdit2.SelStart = 0)) then
  begin
    MaskEdit1.SetFocus;
    MaskEdit1.SelStart := Length(MaskEdit1.Text) - 1;
    MaskEdit1.SelLength := 1;
  end;

  if ((MaskEdit2.SelStart = 18) and (((47 < Key) and (Key < 58)) or (95 < Key)
    and (Key < 106))) then
  begin
    MaskEdit3.SetFocus;
    MaskEdit3.SelStart := 0;
    MaskEdit3.SelLength := 1;
  end;
  if Key = 13 then
  begin
    Label1.Caption := MaskEdit1.Text;
    if MaskEdit2.Text = '' then
      Label1.Caption := Label1.Caption + ' 0'
    else
      Label1.Caption := Label1.Caption + ' ' + MaskEdit2.Text;
    Label1.Caption := Label1.Caption + ' ' + MaskEdit3.Text;
  end;

end;

procedure TStrInputForm.MaskEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  { if (Key = VK_DELETE) then
    Key := 0;
    if (Key = VK_Back) then
    Key := 0; }

  if ((Key = VK_Back) and (MaskEdit3.SelStart = 0)) then
  begin
    MaskEdit2.SetFocus;
    MaskEdit2.SelStart := Length(MaskEdit2.Text);
    MaskEdit2.SelLength := 0;
  end;

  if ((Key = VK_Left) and (MaskEdit3.SelStart = 0)) then
  begin
    MaskEdit2.SetFocus;
    MaskEdit2.SelStart := Length(MaskEdit2.Text) - 1;
    MaskEdit2.SelLength := 1;
  end;
  if ((Key = VK_Right) and (MaskEdit3.SelStart = 10)) then
  begin
    MaskEdit1.SetFocus;
    MaskEdit1.SelStart := 0;
    MaskEdit1.SelLength := 1;
  end;

  if (MaskEdit3.SelStart = 10) then
    if ((Key > 47) and (Key < 58)) or ((Key > 95) and (Key < 106)) then
    begin
      MaskEdit1.SetFocus;
      MaskEdit1.SelStart := 0;
      MaskEdit1.SelLength := 1;
    end;
  if Key = 13 then
  begin
    Label1.Caption := MaskEdit1.Text;
    if MaskEdit2.Text = '' then
      Label1.Caption := Label1.Caption + ' 0'
    else
      Label1.Caption := Label1.Caption + ' ' + MaskEdit2.Text;
    Label1.Caption := Label1.Caption + ' ' + MaskEdit3.Text;
  end;
end;

end.
