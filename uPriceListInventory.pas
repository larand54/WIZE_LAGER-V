unit uPriceListInventory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls;

type
  TfPriceListInventory = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    grdPriceListInvDBTableView1: TcxGridDBTableView;
    grdPriceListInvLevel1: TcxGridLevel;
    grdPriceListInv: TcxGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPriceListInventory: TfPriceListInventory;

implementation

{$R *.dfm}

end.
