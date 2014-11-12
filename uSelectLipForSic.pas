unit uSelectLipForSic;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, OKCANCL1;

type
  TfSelectLipForSic = class(TOKBottomDlg)
    procedure HelpBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSelectLipForSic: TfSelectLipForSic;

implementation

{$R *.dfm}

procedure TfSelectLipForSic.HelpBtnClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

end.
 
