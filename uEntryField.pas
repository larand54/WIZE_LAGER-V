unit uEntryField;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxLabel,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, cxSpinEdit, cxGridDBTableView, ExtCtrls,
  cxLookAndFeels, cxLookAndFeelPainters;

type
  TfEntryField = class(TForm)
    bbok: TBitBtn;
    bbcancel: TBitBtn;
    LTitle: TLabel;
    seAntalPaket: TcxSpinEdit;
    LExtraInfo: TcxLabel;
    PanelLength: TPanel;
    grdOtherLengths: TcxGrid;
    grdOtherLengthsDBTableView1: TcxGridDBTableView;
    grdOtherLengthsDBTableView1ALMM: TcxGridDBColumn;
    grdOtherLengthsDBTableView1AntalLngder: TcxGridDBColumn;
    grdOtherLengthsLevel1: TcxGridLevel;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  fEntryField: TfEntryField;

implementation

uses dm_Inventory;

{$R *.dfm}

end.
