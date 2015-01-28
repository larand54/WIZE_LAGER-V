unit uCreateSicPriceGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  ActnList, StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxCurrencyEdit, cxCalc, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSCore, dxPScxCommon, SqlTimSt,
  cxLookAndFeels, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer,
  dxPScxCheckListBoxLnk, dxPSLbxLnk, dxPSTextLnk, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxPivotGridLnk, dxPScxSSLnk, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter,
  cxNavigator, cxTimeEdit, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  siComp, siLngLnk, System.Actions ;

type
  TfCreateSicPriceGroups = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdSixPriceGroupDBTableView1: TcxGridDBTableView;
    grdSixPriceGroupLevel1: TcxGridLevel;
    grdSixPriceGroup: TcxGrid;
    cxButton1: TcxButton;
    ActionList1: TActionList;
    acPriceGroups: TAction;
    acAddSelectedProductsToPriceGroup: TAction;
    grdSixPriceGroupDBTableView1PRODUKT: TcxGridDBColumn;
    grdSixPriceGroupDBTableView1STYCK: TcxGridDBColumn;
    grdSixPriceGroupDBTableView1AM3: TcxGridDBColumn;
    grdSixPriceGroupDBTableView1NM3: TcxGridDBColumn;
    grdSixPriceGroupDBTableView1Prisgrupp: TcxGridDBColumn;
    grdSixPriceGroupDBTableView1ProductNo: TcxGridDBColumn;
    grdSixPriceGroupDBTableView1IC_grpNo: TcxGridDBColumn;
    cxButton3: TcxButton;
    acRefresh: TAction;
    grdSixPriceGroupDBTableView1OwnerNo: TcxGridDBColumn;
    grdSixPriceGroupDBTableView1KV: TcxGridDBColumn;
    grdSixPriceGroupDBTableView1TS: TcxGridDBColumn;
    grdSixPriceGroupDBTableView1UT: TcxGridDBColumn;
    grdSixPriceGroupDBTableView1IMP: TcxGridDBColumn;
    grdSixPriceGroupDBTableView1AT: TcxGridDBColumn;
    grdSixPriceGroupDBTableView1AB: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    grdSixPriceGroupDBTableView1PrisPerNM3: TcxGridDBColumn;
    acSaveToStandardPriceGroup: TAction;
    cxButton4: TcxButton;
    grdSixPriceGroupDBTableView1RowValue: TcxGridDBColumn;
    cxButton5: TcxButton;
    acPrintTable: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    grdSixPriceGroupDBTableView1KalkylPris: TcxGridDBColumn;
    cxButton6: TcxButton;
    acShowPackageCost: TAction;
    acCopyKalkylPris: TAction;
    siLangLinked_fCreateSicPriceGroups: TsiLangLinked;
    procedure acPriceGroupsExecute(Sender: TObject);
    procedure acAddSelectedProductsToPriceGroupExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acSaveToStandardPriceGroupExecute(Sender: TObject);
    procedure acPrintTableExecute(Sender: TObject);
    procedure acShowPackageCostExecute(Sender: TObject);
    procedure grdSixPriceGroupDBTableView1DblClick(Sender: TObject);
    procedure acCopyKalkylPrisExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure CopyKalkylPrisTillPris ;
    procedure AssignSelectedProductAnPriceGroup(const PriceGroupNo : Integer) ;
    Function  SelectPriceGroup : Integer ;
    function  CalcAvgPrice(const TotalValue : Double) : Double ;
    function  CalcTotalValue : Double ;
//    procedure Set_ppnm_ProductNo ;
  public
    { Public declarations }
    OwnerNo, IC_grpno,
    IC_SETno          : Integer ;
    Inventeringsdatum : TSQLTimeStamp ;
    Namn  : String ;
  end;

//var fCreateSicPriceGroups: TfCreateSicPriceGroups;

implementation

uses dmcInvCtrl, uSicPriceGroup, VidaUser , dmsVidaSystem, dmsDataConn,
  uPackageCostPerPkg;

{$R *.dfm}

procedure TfCreateSicPriceGroups.acCopyKalkylPrisExecute(Sender: TObject);
begin
 CopyKalkylPrisTillPris ;
end;

procedure TfCreateSicPriceGroups.acPriceGroupsExecute(Sender: TObject);
var fSicPriceGroup: TfSicPriceGroup;
begin
 fSicPriceGroup:= TfSicPriceGroup.Create(nil) ;
 try
  fSicPriceGroup.ShowModal ;
 finally
  FreeAndNil(fSicPriceGroup) ;
 end;
end;

procedure TfCreateSicPriceGroups.acAddSelectedProductsToPriceGroupExecute(
  Sender: TObject);
Var PriceGroupNo : Integer ;
begin
 With dmInvCtrl do
 Begin
  mtSelectedPkgNo.Active  := True ;
  PriceGroupNo := SelectPriceGroup ;
  Application.ProcessMessages ;
  if PriceGroupNo > 0 then
   AssignSelectedProductAnPriceGroup(PriceGroupNo) ;
  mtSelectedPkgNo.Active  := False ;   
 End ;
end;

procedure TfCreateSicPriceGroups.FormShow(Sender: TObject);
Var Save_Cursor    : TCursor;
begin
 Save_Cursor  := Screen.Cursor;
 Screen.Cursor:= crSQLWait;    { Show hourglass cursor }
 Try
  With dmInvCtrl do
  Begin
   sp_SicPG.DisableControls ;
   Try
    cds_PriceGroup.Active := False ;
    cds_PriceGroup.ParamByName('OwnerNo').AsInteger  := OwnerNo ;
    cds_PriceGroup.Active := True ;

    sp_SicPG.Active  := False ;
    sp_SicPG.ParamByName('@IC_grpNo').AsInteger      := IC_grpno ;
    sp_SicPG.ParamByName('@IC_SetNo').AsInteger      := IC_SETno ;
    sp_SicPG.Active  := True ;

    cds_GP.Active := False ;
    cds_GP.Active := True ;
    Caption  := siLangLinked_fCreateSicPriceGroups.GetTextOrDefault('IDS_1' (* 'Tilldela produkter prisgrupper. Lagerinventering nr ' *) ) + IntToStr(IC_grpno) ;
   Finally
    sp_SicPG.EnableControls ;
   End ;
  End ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdSixPriceGroupDBTableView1.Name, grdSixPriceGroupDBTableView1) ;
end;

procedure TfCreateSicPriceGroups.grdSixPriceGroupDBTableView1DblClick(
  Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if (sp_SicPG.State in [dsBrowse]) then
   sp_SicPG.Edit ;
  sp_SicPGPricePerNM3.AsFloat := sp_SicPGKalkylPris.AsFloat ;
  sp_SicPG.Post ;
 End;
end;

procedure TfCreateSicPriceGroups.AssignSelectedProductAnPriceGroup(const PriceGroupNo : Integer) ;
 Var i, RecIDX  : Integer ;
 RecID          : Variant ;
 ADATASET       : TDATASET;
 Save_Cursor    : TCursor;
begin
 With dmInvCtrl do
 Begin
 Save_Cursor  := Screen.Cursor;
 Screen.Cursor:= crSQLWait;    { Show hourglass cursor }
 grdSixPriceGroupDBTableView1.BeginUpdate ;
 sp_SicPG.DisableControls ;
// grdSixPriceGroupDBTableView1.DataController.BeginLocate ;
 Try
   ADataSet := grdSixPriceGroupDBTableView1.DataController.DataSource.DataSet ;
   For I := 0 to grdSixPriceGroupDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdSixPriceGroupDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdSixPriceGroupDBTableView1.DataController.GetRecordId(RecIdx) ;
    if ADataSet.Locate('IC_grpNo;ProductNo;OwnerNo', RecID,[]) then
    Begin
     AssignProduktToPriceGroup(PriceGroupNo, sp_SicPGProductNo.AsInteger) ;
     sp_SicPG.Edit ;
     sp_SicPGPrisgrupp.AsString  := cds_PriceGroupPriceGroupName.AsString ;
     sp_SicPG.Post ;

     mtSelectedPkgNo.Insert ;
     mtSelectedPkgNoProductNo.AsInteger := sp_SicPGProductNo.AsInteger ;// ADataSet.FieldByName('ProductNo').AsInteger ;
     mtSelectedPkgNoPaketnr.AsInteger   := sp_SicPGIC_GrpNo.AsInteger ;//ADataSet.FieldByName('IC_grpNo').AsInteger ;
     mtSelectedPkgNo.Post ;

{     ADataSet.Edit ;
     ADataSet.FieldByName('Prisgrupp').AsString := cds_PriceGroupPriceGroupName.AsString ;
     ADataSet.Post ; }
    End ;
   End ;

{  mtSelectedPkgNo.First ;
  While not mtSelectedPkgNo.Eof do
  Begin
   if sp_SicPG.Locate('IC_GrpNo;ProductNo', VarArrayOf([mtSelectedPkgNoPaketnr.AsInteger, mtSelectedPkgNoProductNo.AsInteger]), []) then
   Begin
    sp_SicPG.Edit ;
    sp_SicPGPrisgrupp.AsString  := cds_PriceGroupPriceGroupName.AsString ;
    sp_SicPG.Post ;
   End ;
   mtSelectedPkgNo.Next ;
  End ;//While
 }
 Finally
//  grdSixPriceGroupDBTableView1.DataController.EndLocate ;
  sp_SicPG.EnableControls ;
  grdSixPriceGroupDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With
end;

Function TfCreateSicPriceGroups.SelectPriceGroup : Integer ;
var fSicPriceGroup: TfSicPriceGroup;
begin
 With dmInvCtrl do
 Begin
  fSicPriceGroup:= TfSicPriceGroup.Create(nil) ;
  try
   if fSicPriceGroup.ShowModal = mrOK then
    Result := cds_PriceGroupPriceGroupNo.AsInteger
     else
      Result  := -1 ;
  finally
   FreeAndNil(fSicPriceGroup) ;
  end;
 End ;
end;

procedure TfCreateSicPriceGroups.acRefreshExecute(Sender: TObject);
Var Save_Cursor    : TCursor;
begin
 Save_Cursor  := Screen.Cursor;
 Screen.Cursor:= crSQLWait;    { Show hourglass cursor }
 Try
  With dmInvCtrl do
  Begin
   sp_SicPG.DisableControls ;
   Try
    sp_SicPG.Active  := False ;
    sp_SicPG.ParamByName('@IC_grpNo').AsInteger      := IC_grpNo ;
    sp_SicPG.ParamByName('@IC_SetNo').AsInteger      := IC_SETno ;
    sp_SicPG.Active  := True ;
   Finally
    sp_SicPG.EnableControls ;
   End ;
  End ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfCreateSicPriceGroups.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdSixPriceGroupDBTableView1.Name, grdSixPriceGroupDBTableView1) ;
end;

procedure TfCreateSicPriceGroups.acSaveToStandardPriceGroupExecute(
  Sender: TObject);
Var TotalValue,
    AvgPrice      : Double ;
    PriceGroupNo  : Integer ;
begin
 TotalValue := 0 ;
 AvgPrice   := 0 ;
 With dmInvCtrl do
 Begin
  sp_SicPG.DisableControls ;
  Try
 //Räkna ut medelpris
   TotalValue := CalcTotalValue ;
   AvgPrice   := CalcAvgPrice(TotalValue) ;
   SavePricePerNM3 ; //Sparar manuellt inmatat pris till InvenPricePerNM3 som sparar pris per Inventering och produkt
   PriceGroupNo := SaveAvgPriceToStandardPriceGroup(AvgPrice) ; //Spara avgpris till standardgruppen för aktuell inventering, return = PriceGroupNo
   SetSTDkoppling(PriceGroupNo) ;  //Sätt kopplingen på alla produkter i inventeringen till standardgruppen
   acRefreshExecute(Sender) ;//Uppdatera gridden
//   Set_ppnm_ProductNo ;
  Finally
   sp_SicPG.EnableControls ;
  End ;
 End ;
end;

procedure TfCreateSicPriceGroups.acShowPackageCostExecute(Sender: TObject);
var fPackageCostPerPkg: TfPackageCostPerPkg;
begin
 With dmInvCtrl do
 Begin
   fPackageCostPerPkg := TfPackageCostPerPkg.Create(nil);
   Try
   RefreshPackageCost (sp_SicPGLogicalInventoryPointNo.AsInteger, sp_SicPGProductNo.AsInteger, IC_grpno, IC_Setno) ;
   fPackageCostPerPkg.ShowModal ;
   Finally
     FreeAndNil(fPackageCostPerPkg) ;
   End;
 end;
end;

{procedure TfCreateSicPriceGroups.Set_ppnm_ProductNo ;
Begin
 With dmInvCtrl do
 Begin
  sp_SicPG.First ;
  While not sp_SicPG.Eof do
  Begin
   sp_SicPG.Edit ;
   sp_SicPGppnm_ProductNo.AsInteger  := sp_SicPGProductNo.AsInteger ;
   sp_SicPG.Post ;

   //if sp_SicPGPrisgrupp.IsNull then


   sp_SicPG.Next ;
  End ;
 End ;
End ;
}

function TfCreateSicPriceGroups.CalcAvgPrice(const TotalValue : Double) : Double ;
Begin
 With dmInvCtrl do
 Begin
  Result  := 0 ;
  sp_SicPG.First ;
  While not sp_SicPG.Eof do
  Begin
   if (TotalValue) > 0 then
   Result  := Result + ((sp_SicPGRowValue.AsFloat / TotalValue) * sp_SicPGPricePerNM3.AsFloat) ;
   sp_SicPG.Next ;
  End ;
 End ;
End ;

function TfCreateSicPriceGroups.CalcTotalValue : Double ;
Begin
 With dmInvCtrl do
 Begin
  Result := 0 ;
  sp_SicPG.First ;
  While not sp_SicPG.Eof do
  Begin
   Result  := Result + sp_SicPGRowValue.AsFloat ;
   sp_SicPG.Next ;
  End ;
 End ;
End ;

procedure TfCreateSicPriceGroups.acPrintTableExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(siLangLinked_fCreateSicPriceGroups.GetTextOrDefault('IDS_4' (* 'Inventeringsvärde' *) )) ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(Namn) ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('.') ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Add(siLangLinked_fCreateSicPriceGroups.GetTextOrDefault('IDS_5' (* 'Löpnr: ' *) ) + inttostr(IC_grpno)) ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Add(siLangLinked_fCreateSicPriceGroups.GetTextOrDefault('IDS_6' (* 'Inventeringsdatum: ' *) ) + SQLTimeStampToStr('yyyy-mm-dd',Inventeringsdatum)) ;

  dxComponentPrinter1Link1.PrinterPage.DMPaper         := DMPAPER_A4 ;
  dxComponentPrinter1Link1.PrinterPage.Orientation     := poLandscape ;
  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers  := False ;
  dxComponentPrinter1Link1.ShrinkToPageWidth           := True ;
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1) ;
 End ;
end;

procedure TfCreateSicPriceGroups.CopyKalkylPrisTillPris ;
 Var i, RecIDX  : Integer ;
 RecID          : Variant ;
 ADATASET       : TDATASET;
 Save_Cursor    : TCursor;
begin
 With dmInvCtrl do
 Begin
 Save_Cursor  := Screen.Cursor;
 Screen.Cursor:= crSQLWait;    { Show hourglass cursor }
 grdSixPriceGroupDBTableView1.BeginUpdate ;
 sp_SicPG.DisableControls ;
// grdSixPriceGroupDBTableView1.DataController.BeginLocate ;
 Try
   ADataSet := grdSixPriceGroupDBTableView1.DataController.DataSource.DataSet ;
   For I := 0 to grdSixPriceGroupDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdSixPriceGroupDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdSixPriceGroupDBTableView1.DataController.GetRecordId(RecIdx) ;
    if ADataSet.Locate('IC_grpNo;ProductNo;OwnerNo', RecID,[]) then
    Begin
     sp_SicPG.Edit ;
     sp_SicPGPricePerNM3.AsFloat  := sp_SicPGKalkylPris.AsFloat ;
     sp_SicPG.Post ;

    End ;
   End ;

 Finally
//  grdSixPriceGroupDBTableView1.DataController.EndLocate ;
  sp_SicPG.EnableControls ;
  grdSixPriceGroupDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With
end;


end.
