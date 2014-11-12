unit uLBperDay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBClient, Provider, SqlExpr,
  cxSplitter, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxGridBandedTableView, cxGridDBBandedTableView, SqlTimSt ;

type
  TfLBperDay = class(TForm)
    Panel1: TPanel;
    grdLBperDayLevel1: TcxGridLevel;
    grdLBperDay: TcxGrid;
    Panel2: TPanel;
    cxSplitter1: TcxSplitter;
    Panel3: TPanel;
    grdDetailPerDayDBTableView1: TcxGridDBTableView;
    grdDetailPerDayLevel1: TcxGridLevel;
    grdDetailPerDay: TcxGrid;
    sq_LBPerDay: TSQLQuery;
    dsp_LBPerDay: TDataSetProvider;
    cds_LBPerDay: TClientDataSet;
    ds_LBPerDay: TDataSource;
    cds_LBPerDayInvDate: TSQLTimeStampField;
    cds_LBPerDayPkt: TIntegerField;
    cds_LBPerDayNM3: TFloatField;
    grdLBperDayDBBandedTableView1: TcxGridDBBandedTableView;
    grdLBperDayDBBandedTableView1InvDate: TcxGridDBBandedColumn;
    grdLBperDayDBBandedTableView1Pkt: TcxGridDBBandedColumn;
    grdLBperDayDBBandedTableView1NM3: TcxGridDBBandedColumn;
    cds_LBPerDayHndelserPaket: TIntegerField;
    cds_LBPerDayHndelserNM3: TFloatField;
    grdLBperDayDBBandedTableView1HndelserPaket: TcxGridDBBandedColumn;
    grdLBperDayDBBandedTableView1HndelserNM3: TcxGridDBBandedColumn;
    sq_DtlPerDay: TSQLQuery;
    dsp_DtlPerDay: TDataSetProvider;
    cds_DtlPerDay: TClientDataSet;
    ds_DtlPerDay: TDataSource;
    cds_DtlPerDayGroupName: TStringField;
    cds_DtlPerDayItem: TStringField;
    cds_DtlPerDayID: TIntegerField;
    cds_DtlPerDayInvDate: TSQLTimeStampField;
    cds_DtlPerDayPaket: TIntegerField;
    cds_DtlPerDayNM3: TFloatField;
    grdDetailPerDayDBTableView1GroupName: TcxGridDBColumn;
    grdDetailPerDayDBTableView1Item: TcxGridDBColumn;
    grdDetailPerDayDBTableView1ID: TcxGridDBColumn;
    grdDetailPerDayDBTableView1InvDate: TcxGridDBColumn;
    grdDetailPerDayDBTableView1Paket: TcxGridDBColumn;
    grdDetailPerDayDBTableView1NM3: TcxGridDBColumn;
    cds_LBPerDayLogicalInventoryPointNo: TIntegerField;
    procedure ds_LBPerDayDataChange(Sender: TObject; Field: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Get_LBPerDay(const LIPNo : Integer;const StartDate, EndDate : TSQLTimeStamp) ;
    procedure Get_DtlPerDay(const LIPNo : Integer;const StartDate : TSQLTimeStamp) ;
  end;

//var fLBperDay: TfLBperDay;

implementation

uses dmsDataConn;

{$R *.dfm}

procedure TfLBperDay.Get_LBPerDay(const LIPNo : Integer;const StartDate, EndDate : TSQLTimeStamp) ;
Begin
 cds_LBPerDay.Active  := False ;
 sq_LBPerDay.ParamByName('LIPNo').AsInteger           := LIPNo ;
 sq_LBPerDay.ParamByName('StartDate').AsSQLTimeStamp  := StartDate ; 
 sq_LBPerDay.ParamByName('EndDate').AsSQLTimeStamp    := EndDate ;
 cds_LBPerDay.Active  := True ;
End ;

procedure TfLBperDay.Get_DtlPerDay(const LIPNo : Integer;const StartDate : TSQLTimeStamp) ;
Begin
 cds_DtlPerDay.Active  := False ;
 sq_DtlPerDay.ParamByName('LIPNo').AsInteger           := LIPNo ;
 sq_DtlPerDay.ParamByName('StartDate').AsSQLTimeStamp  := StartDate ;
 cds_DtlPerDay.Active  := True ;
End ;

procedure TfLBperDay.ds_LBPerDayDataChange(Sender: TObject; Field: TField);
begin
 Get_DtlPerDay(cds_LBPerDayLogicalInventoryPointNo.AsInteger, cds_LBPerDayInvDate.AsSQLTimeStamp) ;
end;

procedure TfLBperDay.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 cds_DtlPerDay.Active  := True ;
 cds_LBPerDay.Active  := False ;
end;

end.
