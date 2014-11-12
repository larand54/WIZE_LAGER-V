unit uPktNrPos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxLabel, cxLookAndFeels, cxLookAndFeelPainters, uADStanIntf, uADStanOption,
  uADStanParam, uADStanError, uADDatSManager, uADPhysIntf, uADDAptIntf,
  uADStanAsync, uADDAptManager, uADCompDataSet, uADCompClient, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxNavigator ;

type
  TfPktNrPos = class(TForm)
    Panel1: TPanel;
    bbApplyChanges: TBitBtn;
    bbCancelChanges: TBitBtn;
    ds_Verk: TDataSource;
    grdLevPaketkoder: TcxGrid;
    grdLevPaketkoderDBTableView1: TcxGridDBTableView;
    grdLevPaketkoderDBTableView1ClientNo: TcxGridDBColumn;
    grdLevPaketkoderDBTableView1ROLL: TcxGridDBColumn;
    grdLevPaketkoderDBTableView1ClientName: TcxGridDBColumn;
    grdLevPaketkoderDBTableView1PktNrLevKod: TcxGridDBColumn;
    grdLevPaketkoderDBTableView1PaketNoPos: TcxGridDBColumn;
    grdLevPaketkoderDBTableView1PaketNoLength: TcxGridDBColumn;
    grdLevPaketkoderDBTableView1SupplierCodePos: TcxGridDBColumn;
    grdLevPaketkoderDBTableView1SupplierCodeLength: TcxGridDBColumn;
    grdLevPaketkoderLevel1: TcxGridLevel;
    cds_Verk: TADQuery;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkPktNrLevKod: TStringField;
    cds_VerkPaketNoPos: TIntegerField;
    cds_VerkPaketNoLength: TIntegerField;
    cds_VerkSupplierCodePos: TIntegerField;
    cds_VerkSupplierCodeLength: TIntegerField;
    cds_VerkROLL: TStringField;
    procedure bbApplyChangesClick(Sender: TObject);
    procedure bbCancelChangesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var fPktNrPos: TfPktNrPos;

implementation

uses dmsVidaContact, dmsDataConn, VidaUser ;

{$R *.dfm}

procedure TfPktNrPos.bbApplyChangesClick(Sender: TObject);
begin
  if cds_Verk.State in [dsInsert, dsEdit] then
  cds_Verk.Post ;
  if cds_Verk.ChangeCount > 0 then
   cds_Verk.ApplyUpdates(0) ;
end;

procedure TfPktNrPos.bbCancelChangesClick(Sender: TObject);
begin
  if cds_Verk.State in [dsInsert, dsEdit] then
  cds_Verk.Post ;
  if cds_Verk.ChangeCount > 0 then
   cds_Verk.CancelUpdates ;
end;

procedure TfPktNrPos.FormCreate(Sender: TObject);
begin
 cds_Verk.Active:= False ;
 cds_Verk.Active:= True ;

end;

procedure TfPktNrPos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 cds_Verk.Active:= False ;
 CanClose:= True ;
end;

end.
