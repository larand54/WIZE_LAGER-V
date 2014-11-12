unit uGridSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxCheckBox, StdCtrls, Buttons,
  ExtCtrls, cxTextEdit, cxShellBrowserDialog;

type
  TfGridSetting = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    teSokVagPkgTableMallar: TcxTextEdit;
    bSelectFolder: TBitBtn;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    procedure bSelectFolderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  fGridSetting: TfGridSetting;

implementation

{$R *.dfm}

procedure TfGridSetting.bSelectFolderClick(Sender: TObject);
begin
 if cxShellBrowserDialog1.Execute then
  teSokVagPkgTableMallar.Text:= cxShellBrowserDialog1.Path ;
end;

end.
