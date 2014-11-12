unit UnitCarrier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters;

type
  TFormCarrier = class(TForm)
    Panel1: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    grdCarrierDBTableView1: TcxGridDBTableView;
    grdCarrierLevel1: TcxGridLevel;
    grdCarrier: TcxGrid;
    grdCarrierDBTableView1CarrierName: TcxGridDBColumn;
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var   FormCarrier: TFormCarrier;

implementation

uses dmBooking;

{$R *.dfm}

procedure TFormCarrier.dxBarLargeButton3Click(Sender: TObject);
begin
 with dm_Booking do
 Begin
  cdsCarrier.Insert ;
 End ;
end;

procedure TFormCarrier.dxBarLargeButton2Click(Sender: TObject);
begin
 with dm_Booking do
 Begin
  if cdsCarrier.ChangeCount > 0 then
   cdsCarrier.ApplyUpdates(0) ;
 End ;
end;

procedure TFormCarrier.dxBarLargeButton1Click(Sender: TObject);
begin
 Close ;
end;

end.
