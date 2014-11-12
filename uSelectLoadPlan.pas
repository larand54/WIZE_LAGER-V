unit uSelectLoadPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons, ExtCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxImageComboBox, ImgList;

type
  TfSelectLoadPlan = class(TForm)
    grdLoadHdrDBTableView1: TcxGridDBTableView;
    grdLoadHdrLevel1: TcxGridLevel;
    grdLoadHdr: TcxGrid;
    Panel1: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    grdLoadHdrDBTableView1LoadingNo: TcxGridDBColumn;
    grdLoadHdrDBTableView1Status: TcxGridDBColumn;
    grdLoadHdrDBTableView1ETD: TcxGridDBColumn;
    grdLoadHdrDBTableView1DateCreated: TcxGridDBColumn;
    grdLoadHdrDBTableView1PrintDate: TcxGridDBColumn;
    grdLoadHdrDBTableView1Note: TcxGridDBColumn;
    grdLoadHdrDBTableView1BT: TcxGridDBColumn;
    images1616: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fSelectLoadPlan: TfSelectLoadPlan;

implementation

uses dmcLoadPlan;

{$R *.dfm}

end.
