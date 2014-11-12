unit uMultiplaShippers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, Buttons, ExtCtrls, DB,
  dxDBTLCl, dxGrClms, dxExEdtr ;

type
  TfMultiplaShippers = class(TForm)
    grdShippers: TdxDBGrid;
    Panel1: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    grdShippersShippersInvoiceNo: TdxDBGridMaskColumn;
    Panel2: TPanel;
    bTaBortRad: TButton;
    Memo1: TMemo;
    grdShippersShipperNo: TdxDBGridMaskColumn;
    grdShippersAvrakningsNr: TdxDBGridMaskColumn;
    grdShippersShipper: TdxDBGridLookupColumn;
    procedure bTaBortRadClick(Sender: TObject);
    procedure bbOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fMultiplaShippers: TfMultiplaShippers;

implementation

uses UnitdmModule1;

{$R *.dfm}

procedure TfMultiplaShippers.bTaBortRadClick(Sender: TObject);
begin
 with dmModule1 do
  mtShippers.Delete ;
end;

procedure TfMultiplaShippers.bbOKClick(Sender: TObject);
begin
 with dmModule1 do
 Begin
  if mtShippers.State in [dsEdit, dsInsert] then
   mtShippers.Post ;
 End ;
end;

end.
