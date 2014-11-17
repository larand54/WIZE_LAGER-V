unit uPickPkgNo ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Buttons,
  ActnList, DBActns, dxBar, dxBarExtItems, kbmMemTable, cxMaskEdit,
  cxCheckBox, cxCalendar, cxContainer,
  cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBEdit, cxLookAndFeels, cxLookAndFeelPainters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, cxNavigator, siComp, siLngLnk;

type
  TfPickPkgNo = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    ds_SelectedPkgNo: TDataSource;
    cxGrid1DBTableView1PAKETNR: TcxGridDBColumn;
    cxGrid1DBTableView1LEVKOD: TcxGridDBColumn;
    cxGrid1DBTableView1STYCKPERLNGD: TcxGridDBColumn;
    cxGrid1DBTableView1MARKERAD: TcxGridDBColumn;
    Panel2: TPanel;
    cxGrid1DBTableView1AM3: TcxGridDBColumn;
    cxGrid1DBTableView1STYCK: TcxGridDBColumn;
    cxGrid1DBTableView1REGISTRERAT: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    bbMarkAll: TBitBtn;
    bbUnMarkAll: TBitBtn;
    LabelPIPName: TLabel;
    Label1: TLabel;
    LabelNoOfPkgsMarked: TLabel;
    Label4: TLabel;
    ds_Products: TDataSource;
    mtFilter: TFDMemTable;
    mtFilterProductNo: TIntegerField;
    mtFilterProduct: TStringField;
    dsFilter: TDataSource;
    lcProduct: TcxDBLookupComboBox;
    BitBtn3: TBitBtn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleMarkedRow: TcxStyle;
    deProductNo: TcxDBTextEdit;
    Label5: TLabel;
    cxGrid1DBTableView1ColumnAngeAntalPkt: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    sq_GetPkgNo: TFDQuery;
    sq_GetInActive: TFDQuery;
    sq_GetAllProducts: TFDQuery;
    cds_Products: TFDQuery;
    sq_GetPkgNoPackageNo: TIntegerField;
    sq_GetPkgNoLEVKOD: TStringField;
    sq_GetPkgNoproductno: TIntegerField;
    sq_GetPkgNoPcsPerLength: TStringField;
    sq_GetPkgNoAM3: TFloatField;
    sq_GetPkgNoSTYCK: TIntegerField;
    sq_GetPkgNoDateCreated: TSQLTimeStampField;
    sq_GetInActivePackageNo: TIntegerField;
    sq_GetInActiveLEVKOD: TStringField;
    sq_GetInActiveProductNo: TIntegerField;
    sq_GetInActivePcsPerLength: TStringField;
    sq_GetInActiveAM3: TFloatField;
    sq_GetInActiveSTYCK: TIntegerField;
    sq_GetInActiveDateCreated: TSQLTimeStampField;
    sq_GetAllProductsProductDisplayName: TStringField;
    sq_GetAllProductsProductNo: TIntegerField;
    sq_GetAllProductsActualThicknessMM: TFloatField;
    sq_GetAllProductsActualWidthMM: TFloatField;
    sq_GetAllProductsGradeName: TStringField;
    sq_GetAllProductsSpeciesName: TStringField;
    sq_GetAllProductsSurfacingName: TStringField;
    cds_ProductsProductDisplayName: TStringField;
    cds_ProductsProductNo: TIntegerField;
    cds_ProductsActualThicknessMM: TFloatField;
    cds_ProductsActualWidthMM: TFloatField;
    cds_ProductsGradeName: TStringField;
    cds_ProductsSpeciesName: TStringField;
    cds_ProductsSurfacingName: TStringField;
    siLangLinked_fPickPkgNo: TsiLangLinked;
    procedure mtSelectedPkgNoAfterInsert(DataSet: TDataSet);
    procedure bbMarkAllClick(Sender: TObject);
    procedure bbUnMarkAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ds_SelectedPkgNoDataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure FormShow(Sender: TObject);
    procedure mtFilterProductNoChange(Sender: TField);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshPackageList ;
    procedure RefreshInventoryPackageList ;
    procedure RefreshInActivePackageList ;
  public
    { Public declarations }
   ProductNo, IC_GrpNo, LIPNo, PIPNo : Integer ;
  end;

//var fPickPkgNo: TfPickPkgNo;

implementation

uses dmsDataConn , dmcInvCtrl;

{$R *.dfm}


procedure TfPickPkgNo.mtSelectedPkgNoAfterInsert(DataSet: TDataSet);
begin
 dmInvCtrl.mtSelectedPkgNoMARKERAD.AsInteger:= 0 ;
end;

procedure TfPickPkgNo.bbMarkAllClick(Sender: TObject);
Var
 Save_Cursor  :  TCursor;
begin
 With dmInvCtrl do
 Begin
 MarkedPkgs:= 0 ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.DisableControls ;
 Try
 mtSelectedPkgNo.First ;
 While not mtSelectedPkgNo.Eof do
 Begin
  mtSelectedPkgNo.Edit ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 1 ;
  mtSelectedPkgNo.post ;
  mtSelectedPkgNo.Next ;
 End ;
 finally
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
End ;

procedure TfPickPkgNo.bbUnMarkAllClick(Sender: TObject);
Var
 Save_Cursor  :  TCursor;
begin
 With dmInvCtrl do
 Begin
 MarkedPkgs:= 0 ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.DisableControls ;
 Try
 mtSelectedPkgNo.First ;
 While not mtSelectedPkgNo.Eof do
 Begin
  mtSelectedPkgNo.Edit ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 0 ;
  mtSelectedPkgNo.post ;
  mtSelectedPkgNo.Next ;
 End ;
 finally
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
End ;

procedure TfPickPkgNo.FormCreate(Sender: TObject);
begin
 dmInvCtrl.MarkedPkgs         := 0 ;
 LabelNoOfPkgsMarked.Caption  := intToStr(dmInvCtrl.MarkedPkgs) ;
end;

procedure TfPickPkgNo.ds_SelectedPkgNoDataChange(Sender: TObject;
  Field: TField);
begin
 LabelNoOfPkgsMarked.Caption:= intToStr(dmInvCtrl.MarkedPkgs) ;
end;

procedure TfPickPkgNo.RefreshPackageList ;
begin
 if dmInvCtrl.InventoryPkgs then
  RefreshInventoryPackageList
   else
    RefreshInActivePackageList ;
end;

procedure TfPickPkgNo.RefreshInventoryPackageList ;
Var
    Save_Cursor  :  TCursor;
    x            : Integer ;
begin
 With dmInvCtrl do
 Begin
 Save_Cursor            := Screen.Cursor;
 Screen.Cursor          := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.Active := False ;
 mtSelectedPkgNo.Active := True ;
 mtSelectedPkgNo.DisableControls ;
 Try
 sq_GetPkgNo.Close ;
 sq_GetPkgNo.ParamByName('ProductNo').AsInteger := mtFilterProductNo.AsInteger ;
 sq_GetPkgNo.ParamByName('LIPNo').AsInteger     := LIPNo ;
 sq_GetPkgNo.ParamByName('ic_grpNo').AsInteger  := ic_grpNo ;
 sq_GetPkgNo.Open ;
 sq_GetPkgNo.First ;
 While not  sq_GetPkgNo.Eof do
 Begin
  mtSelectedPkgNo.insert ;
  For x := 0 to 5 do
   mtSelectedPkgNo.Fields.Fields[x].AsVariant:= sq_GetPkgNo.Fields.Fields[x].AsVariant ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 0 ;
  mtSelectedPkgNo.post ;
  sq_GetPkgNo.Next ;
 End ;
 finally
  sq_GetPkgNo.Close ;
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

procedure TfPickPkgNo.RefreshInActivePackageList ;
Var
    Save_Cursor  :  TCursor;
    x            : Integer ;
begin
 With dmInvCtrl do
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.Active:= False ;
 mtSelectedPkgNo.Active:= True ;
 mtSelectedPkgNo.DisableControls ;
 Try
 sq_GetInActive.Close ;
 sq_GetInActive.ParamByName('ProductNo').AsInteger  := mtFilterProductNo.AsInteger ;
 sq_GetInActive.ParamByName('PIPNo').AsInteger      := PIPNo ;
 sq_GetInActive.ParamByName('IC_GrpNo').AsInteger   := IC_GrpNo ;
 sq_GetInActive.Open ;
 sq_GetInActive.First ;
 While not sq_GetInActive.Eof do
 Begin
  mtSelectedPkgNo.insert ;
  For x := 0 to 6 do
   mtSelectedPkgNo.Fields.Fields[x].AsVariant:= sq_GetInActive.Fields.Fields[x].AsVariant ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 0 ;
  mtSelectedPkgNo.post ;
  sq_GetInActive.Next ;
 End ;
 finally
  sq_GetInActive.Close ;
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

procedure TfPickPkgNo.BitBtn3Click(Sender: TObject);
begin
 RefreshPackageList ;
end;

procedure TfPickPkgNo.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
//Var
// AColumn : TcxCustomGridTableItem;
begin
  AItem:= (Sender AS TcxGridDBTableView).GetColumnByFieldName('Markerad') ;
 if (ARecord.Values[AItem.Index] <> null) AND (ARecord.Values[AItem.Index] = 1) then
  AStyle:= cxStyleMarkedRow ;
end;

procedure TfPickPkgNo.FormShow(Sender: TObject);
Var
    Save_Cursor  :  TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 if dmInvCtrl.InventoryPkgs then
 Begin
  mtFilterProduct.LookupDataSet := cds_Products ;
  cxGrid1DBTableView1.DataController.KeyFieldNames    := 'PAKETNR;LEVKOD' ;
  cds_Products.Active                                 := False ;
//  ds_Products.DataSet                                 := sq_GetAllProducts ;
  cds_Products.ParamByName('ic_grpNo').AsInteger       := ic_grpNo ;
  cds_Products.ParamByName('LIPNo').AsInteger          := LIPNo ;
  cds_Products.ParamByName('PIPNo').AsInteger          := PIPNo ;
  cds_Products.Active                                 := True ;
  cxGrid1DBTableView1ColumnAngeAntalPkt.Visible       := False ;
 end
 else
 Begin
  cxGrid1DBTableView1.DataController.KeyFieldNames    := 'PAKETNR;LEVKOD' ;

{  bbMarkAll.Visible                                   := False ;
  bbUnMarkAll.Visible                                 := False ;
  Panel2.Height                                       := 35 ;
  cxGrid1DBTableView1.DataController.KeyFieldNames    := 'ProductNo' ; }
  mtFilterProduct.LookupDataSet := sq_GetAllProducts ;
  sq_GetAllProducts.Active                                 := False ;
//  ds_Products.DataSet                                 := sq_GetAllProducts ;
  sq_GetAllProducts.ParamByName('PIPNo').AsInteger    := PIPNo ;
  sq_GetAllProducts.Active                                 := True ;
{
//  cxGrid1DBTableView1MARKERAD.PropertiesClass         := TcxTextEdit ;
  cxGrid1DBTableView1MARKERAD.Visible                 := False ;
  cxGrid1DBTableView1PAKETNR.Caption                  := 'PAKET' ;
  cxGrid1DBTableView1REGISTRERAT.Visible              := False ;
  cxGrid1DBTableView1LEVKOD.Visible                   := False ;

  cxGrid1DBTableView1ColumnAngeAntalPkt.Visible       := True ; }
 end ;
  mtFilter.Active:= True ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfPickPkgNo.mtFilterProductNoChange(Sender: TField);
begin
  RefreshPackageList ;
end;

procedure TfPickPkgNo.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 With dmInvCtrl do
 Begin
//  if InventoryPkgs = False then  exit ;
  AHandled:= True ;
  if mtSelectedPkgNo.State = dsBrowse then
  mtSelectedPkgNo.Edit ;
  if mtSelectedPkgNomarkerad.AsInteger = 0 then
  mtSelectedPkgNomarkerad.AsInteger:= 1
  else
  mtSelectedPkgNomarkerad.AsInteger:= 0 ;
  mtSelectedPkgNo.Post ;
 End ;
end;

procedure TfPickPkgNo.FormDestroy(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  mtSelectedPkgNo.Active:= False ;
 End ;
end;

end.
