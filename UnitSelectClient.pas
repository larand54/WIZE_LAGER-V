unit UnitSelectClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, ExtCtrls, dxTL, dxDBCtrl, dxDBGrid,
  DB, SqlExpr, dxCntner, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxLabel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxTextEdit;

type
  TFormSelectClient = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grdClientsDBTableView1: TcxGridDBTableView;
    grdClientsLevel1: TcxGridLevel;
    grdClients: TcxGrid;
    grdClientsDBTableView1ClientName: TcxGridDBColumn;
    Panel2: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  FormSelectClient: TFormSelectClient;

implementation

uses dmsDataConn, UnitdmModule1;

{$R *.dfm}

end.
