unit UTestDecimal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls;

type
  TfrmTestDecimal = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestDecimal: TfrmTestDecimal;

implementation

uses dmsDataConn;

{$R *.dfm}

procedure TfrmTestDecimal.FormCreate(Sender: TObject);
begin
 dmsConnector.ClientDataSet1.Active:= True ;
end;

procedure TfrmTestDecimal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 dmsConnector.ClientDataSet1.Active:= False ;
end;

procedure TfrmTestDecimal.Button1Click(Sender: TObject);
begin
dmsConnector.ClientDataSet1.ApplyUpdates(0);
end;

end.
