unit umainform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses dmsDataConn;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 With dmsConnector do
 Begin
  LogOnToDatabase ('alvesql01', 'VIS_VIDA', '', '')
 End ;
end;

procedure TForm1.Button2Click(Sender: TObject);
Var UserName, UserPswd : String ;
begin
 With dmsConnector do
 Begin
//  GetUserNameLoggedIn(UserName, UserPswd) ;
 End ;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 With dmsConnector do
 Begin
  LogOnToDatabase ('alvesql01', 'Northwind', '', '')
 End ;
end;

end.
