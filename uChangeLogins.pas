unit uChangeLogins;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, siComp, siLngLnk ;

type
  TOKHelpBottomDlg = class(TForm)
    EFD_Name: TEdit;
    Button1: TButton;
    Label1: TLabel;
    eDatabas: TEdit;
    Label2: TLabel;
    Button2: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    siLangLinked_OKHelpBottomDlg: TsiLangLinked;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cbDatabas: TComboBox;
    procedure HelpBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Label3DblClick(Sender: TObject);
    procedure Label6DblClick(Sender: TObject);
    procedure Label4DblClick(Sender: TObject);
    procedure Label5DblClick(Sender: TObject);
    procedure Label7DblClick(Sender: TObject);
    procedure Label8DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var OKHelpBottomDlg: TOKHelpBottomDlg;

implementation

uses dmsDataConn;

{$R *.dfm}

procedure TOKHelpBottomDlg.HelpBtnClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

procedure TOKHelpBottomDlg.Label3DblClick(Sender: TObject);
begin
  EFD_Name.Text  := Label3.Caption ;
end;

procedure TOKHelpBottomDlg.Label4DblClick(Sender: TObject);
begin
  EFD_Name.Text  := Label4.Caption ;
end;

procedure TOKHelpBottomDlg.Label5DblClick(Sender: TObject);
begin
  EFD_Name.Text  := Label5.Caption ;
end;

procedure TOKHelpBottomDlg.Label6DblClick(Sender: TObject);
begin
  EFD_Name.Text  := Label6.Caption ;
end;

procedure TOKHelpBottomDlg.Label7DblClick(Sender: TObject);
begin
  EFD_Name.Text  := Label7.Caption ;
end;

procedure TOKHelpBottomDlg.Label8DblClick(Sender: TObject);
begin
  EFD_Name.Text  := Label8.Caption ;
end;

procedure TOKHelpBottomDlg.Button1Click(Sender: TObject);
begin
  inherited;
 EFD_Name.Text:= dmsConnector.Get_AD_Name ;
end;

procedure TOKHelpBottomDlg.Button2Click(Sender: TObject);
begin
  inherited;
// eDatabas.Text  := dmsConnector.Org_DB_Name ;
 cbDatabas.Text := dmsConnector.Org_DB_Name ;
end;

end.

