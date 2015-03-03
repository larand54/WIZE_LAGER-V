unit uProductionUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, 
  StdCtrls, Buttons, DB, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, siComp, siLngLnk ;

type
  TfrmProductionUnit = class(TForm)
    Panel1: TPanel;
    bbInsert: TBitBtn;
    bbRemove: TBitBtn;
    bbCancelRow: TBitBtn;
    bbApplyChanges: TBitBtn;
    bbCancelChanges: TBitBtn;
    grdProductionUnitsDBTableView1: TcxGridDBTableView;
    grdProductionUnitsLevel1: TcxGridLevel;
    grdProductionUnits: TcxGrid;
    grdProductionUnitsDBTableView1ProductionUnitNo: TcxGridDBColumn;
    grdProductionUnitsDBTableView1ProductionUnitName: TcxGridDBColumn;
    grdProductionUnitsDBTableView1ClientNo: TcxGridDBColumn;
    grdProductionUnitsDBTableView1SequenceNo: TcxGridDBColumn;
    grdProductionUnitsDBTableView1CreatedUser: TcxGridDBColumn;
    grdProductionUnitsDBTableView1ModifiedUser: TcxGridDBColumn;
    grdProductionUnitsDBTableView1DateCreated: TcxGridDBColumn;
    grdProductionUnitsDBTableView1LogicalInventoryPointNo: TcxGridDBColumn;
    grdProductionUnitsDBTableView1RegistrationPointNo: TcxGridDBColumn;
    grdProductionUnitsDBTableView1RegPoint: TcxGridDBColumn;
    grdProductionUnitsDBTableView1OnSticks: TcxGridDBColumn;
    grdProductionUnitsDBTableView1SurfacingNo: TcxGridDBColumn;
    grdProductionUnitsDBTableView1DIM_DIV: TcxGridDBColumn;
    cmbClients: TcxComboBox;
    siLangLinked_frmProductionUnit: TsiLangLinked;
    procedure bbInsertClick(Sender: TObject);
    procedure bbRemoveClick(Sender: TObject);
    procedure bbCancelRowClick(Sender: TObject);
    procedure bbApplyChangesClick(Sender: TObject);
    procedure bbCancelChangesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbClients2Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    Procedure Filter_cds_ProductionUnit(ClientNo : Integer ) ;
  public
    { Public declarations }

  end;

//var frmProductionUnit: TfrmProductionUnit;

implementation

uses dmsVidaContact;

{$R *.dfm}
Procedure TfrmProductionUnit.Filter_cds_ProductionUnit(ClientNo : Integer ) ;
Begin
 With dmsContact do
 Begin
  if cmbClients.Properties.Items.Count > 0 then
  Begin
//  cds_LogInv.Filter:= 'OwnerNo = '+IntToStr(ClientNo);
//  cds_LogInv.Filtered:= True ;
   cds_ProductionUnit.Filter:= 'ClientNo = '+IntToStr(ClientNo);
   cds_ProductionUnit.Filtered:= True ;
  End ;
 End ;
End ;

procedure TfrmProductionUnit.bbInsertClick(Sender: TObject);
begin
 if cmbClients.Properties.Items.Count > 0 then
 Begin
  With dmsContact do
  Begin
   if cds_ProductionUnit.State in [dsInsert, dsEdit] then
   cds_ProductionUnit.Post ;
   cds_ProductionUnit.Insert ;
   cds_ProductionUnitClientNo.AsInteger:= integer(cmbClients.Properties.Items.Objects[cmbClients.ItemIndex] ) ;
  End ;
 End
 else
 ShowMessage(siLangLinked_frmProductionUnit.GetTextOrDefault('IDS_0' (* 'Välj ett verk' *) )) ;
end;

procedure TfrmProductionUnit.bbRemoveClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  cds_ProductionUnit.Delete ;
 End ;
end;

procedure TfrmProductionUnit.bbCancelRowClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  cds_ProductionUnit.Cancel ;
 End ;
end;

procedure TfrmProductionUnit.bbApplyChangesClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  if cds_ProductionUnit.State in [dsInsert, dsEdit] then
  cds_ProductionUnit.Post ;
  if cds_ProductionUnit.ChangeCount > 0 then
   cds_ProductionUnit.ApplyUpdates(0) ;
 End ;
end;

procedure TfrmProductionUnit.bbCancelChangesClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  if cds_ProductionUnit.State in [dsInsert, dsEdit] then
  cds_ProductionUnit.Post ;
  if cds_ProductionUnit.ChangeCount > 0 then
   cds_ProductionUnit.CancelUpdates ;
 End ;
end;

procedure TfrmProductionUnit.FormCreate(Sender: TObject);
begin
(* With dmsContact do
 Begin
  cds_ProductionUnit.Active:= True ;
  LoadMatPunktsAgare(cmbClients.Items);
  if cmbClients.Items.Count > 0 then
   cmbClients.ItemIndex:= 0 ;
  Filter_cds_ProductionUnit( integer(cmbClients.Items.Objects[cmbClients.ItemIndex] )) ;
 End ; *)
end;

procedure TfrmProductionUnit.cmbClients2Change(Sender: TObject);
begin
  Filter_cds_ProductionUnit( integer(cmbClients.Properties.Items.Objects[cmbClients.ItemIndex] )) ;
end;

procedure TfrmProductionUnit.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 With dmsContact do
 Begin
  cds_ProductionUnit.Active:= False ;
  cds_ProductionUnit.Filtered:= False ;
 End ;
 CanClose:= True ;
end;

end.
