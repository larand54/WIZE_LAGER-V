unit uSelectInvPIG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxCalendar, StdCtrls, Buttons, cxLabel,
  cxRichEdit, cxImageComboBox, ImgList;

type
  TfSelectInvPIG = class(TForm)
    Panel1: TPanel;
    grdPigListDBTableView1: TcxGridDBTableView;
    grdPigListLevel1: TcxGridLevel;
    grdPigList: TcxGrid;
    grdPigListDBTableView1PIGGroupNo: TcxGridDBColumn;
    grdPigListDBTableView1LIPNo: TcxGridDBColumn;
    grdPigListDBTableView1PIPNo: TcxGridDBColumn;
    grdPigListDBTableView1InvDate: TcxGridDBColumn;
    grdPigListDBTableView1Note: TcxGridDBColumn;
    grdPigListDBTableView1DateCreated: TcxGridDBColumn;
    grdPigListDBTableView1CreatedUser: TcxGridDBColumn;
    grdPigListDBTableView1LAGERSTLLE: TcxGridDBColumn;
    grdPigListDBTableView1LAGERGRUPP: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grdPigListDBTableView1Status: TcxGridDBColumn;
    images1616: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fSelectInvPIG: TfSelectInvPIG;

implementation

uses dmcLoadPlan;

{$R *.dfm}

end.
