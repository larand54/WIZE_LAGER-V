unit uLBCtrl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, SqlTimSt,
  Vcl.Menus, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  Vcl.StdCtrls, cxButtons ;

type
  TfrmLBCtrl = class(TForm)
    Panel1: TPanel;
    grdLBCtrlDBTableView1: TcxGridDBTableView;
    grdLBCtrlLevel1: TcxGridLevel;
    grdLBCtrl: TcxGrid;
    sp_LBCtrl: TFDStoredProc;
    ds_LBCtrl: TDataSource;
    sp_LBCtrlPackageNo: TIntegerField;
    sp_LBCtrlPrefix: TStringField;
    sp_LBCtrlLager: TStringField;
    sp_LBCtrlNr: TIntegerField;
    sp_LBCtrlMeddelande: TStringField;
    grdLBCtrlDBTableView1PackageNo: TcxGridDBColumn;
    grdLBCtrlDBTableView1Prefix: TcxGridDBColumn;
    grdLBCtrlDBTableView1Lager: TcxGridDBColumn;
    grdLBCtrlDBTableView1Nr: TcxGridDBColumn;
    grdLBCtrlDBTableView1Meddelande: TcxGridDBColumn;
    cxButton1: TcxButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxButton2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshLBCtrl(const MinDate, MaxDate : TDatetime;const PIPNo : Integer) ;
  end;

var
  frmLBCtrl: TfrmLBCtrl;

implementation

{$R *.dfm}

uses dmsDataConn;

procedure TfrmLBCtrl.cxButton1Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(self.caption) ;


  dxComponentPrinter1Link1.PrinterPage.Orientation      := poLandscape ;
  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers   := False ;
  dxComponentPrinter1Link1.ShrinkToPageWidth            := True ;
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1) ;
end;

procedure TfrmLBCtrl.cxButton2Click(Sender: TObject);
begin
 Close ;
end;

procedure TfrmLBCtrl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree ;
end;

procedure TfrmLBCtrl.FormDestroy(Sender: TObject);
begin
 frmLBCtrl  := nil ;
end;

procedure TfrmLBCtrl.RefreshLBCtrl(const MinDate, MaxDate : TDatetime;const PIPNo : Integer) ;
Begin
  if sp_LBCtrl.Active then
     sp_LBCtrl.Active  := False ;
  sp_LBCtrl.ParamByName('@MinDate').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(MinDate) ;
  sp_LBCtrl.ParamByName('@MaxDate').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(MaxDate) ;
  sp_LBCtrl.ParamByName('@PIPNo').AsInteger         := PIPNo ;
  sp_LBCtrl.Active  := True ;
End;

end.
