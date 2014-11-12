unit uLipForSic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Buttons;

type
  TfLipForSic = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdLipForSicDBTableView1: TcxGridDBTableView;
    grdLipForSicLevel1: TcxGridLevel;
    grdLipForSic: TcxGrid;
    grdLipForSicDBTableView1LIPNo: TcxGridDBColumn;
    grdLipForSicDBTableView1LAGER: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grdLipForSicDBTableView1Column1: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  fLipForSic: TfLipForSic;

implementation

uses dmcInvCtrl;

{$R *.dfm}

end.
