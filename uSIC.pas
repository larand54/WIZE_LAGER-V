unit uSIC ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ImgList, ActnList, dxBar, dxBarExtItems,
  ExtCtrls, cxTextEdit, cxCheckBox, cxLabel, cxImageComboBox, cxRichEdit,
  cxCalendar, cxButtonEdit, cxContainer, cxGroupBox, cxRadioGroup, SqlTimSt,
  StdCtrls, Buttons, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPScxCommon, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, cxDBEdit,
  cxSplitter, cxPC,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxCalc, cxLookAndFeels,
  cxLookAndFeelPainters, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, Menus, cxButtons,
  dxPScxCheckListBoxLnk, dxPSLbxLnk, dxPSTextLnk,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxPivotGridLnk, dxPScxSSLnk, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxBarBuiltInMenu, System.Actions ;

Const
    CM_MOVEIT = WM_USER + 1;
    CM_MOVEIT_II = WM_USER + 2;
type
  TfSIC = class(TForm)
    Panel6: TPanel;
    Panel2: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel3: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    Panel4: TPanel;
    ActionList1: TActionList;
    acClose: TAction;
    imglistActions: TImageList;
    grdSICHdrDBTableView1: TcxGridDBTableView;
    grdSICHdrLevel1: TcxGridLevel;
    grdSICHdr: TcxGrid;
    acNew: TAction;
    acSave: TAction;
    acCancelChanges: TAction;
    acDeleteSIC: TAction;
    Panel7: TPanel;
    acRefresh: TAction;
    grdSICHdrDBTableView1Sic_No: TcxGridDBColumn;
    grdSICHdrDBTableView1Verk: TcxGridDBColumn;
    grdSICHdrDBTableView1Description: TcxGridDBColumn;
    grdSICHdrDBTableView1DateCreated: TcxGridDBColumn;
    acAddInventeringarTillSammanstallning: TAction;
    acGenerateSammanstallning: TAction;
    acSplit: TAction;
    acCalculate: TAction;
    acPrint: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    acAddSicRow: TAction;
    acRemoveSicRow: TAction;
    grdSICHdrDBTableView1Status: TcxGridDBColumn;
    grdSICHdrDBTableView1InvYear: TcxGridDBColumn;
    grdSICHdrDBTableView1InvMonth: TcxGridDBColumn;
    lcVerk: TcxDBLookupComboBox;
    dsTempData: TDataSource;
    cxLabel1: TcxLabel;
    seYear: TcxDBSpinEdit;
    seMonth: TcxDBSpinEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cbAllaPerioder: TcxDBCheckBox;
    acPrintCRReport: TAction;
    eSetfocus: TEdit;
    pcDtls: TcxPageControl;
    tsSic: TcxTabSheet;
    tsSicPG: TcxTabSheet;
    Panel1: TPanel;
    Panel5: TPanel;
    grdSICRow: TcxGrid;
    grdSICRowDBTableView1: TcxGridDBTableView;
    grdSICRowDBTableView1Sic_No: TcxGridDBColumn;
    grdSICRowDBTableView1LIPGroupNo: TcxGridDBColumn;
    grdSICRowDBTableView1RowName: TcxGridDBColumn;
    grdSICRowDBTableView1NM3: TcxGridDBColumn;
    grdSICRowDBTableView1Price: TcxGridDBColumn;
    grdSICRowDBTableView1AdmCost: TcxGridDBColumn;
    grdSICRowDBTableView1PlanerShavingsCost: TcxGridDBColumn;
    grdSICRowDBTableView1PlaningCost: TcxGridDBColumn;
    grdSICRowDBTableView1SortingCost: TcxGridDBColumn;
    grdSICRowDBTableView1KilnDryingCost: TcxGridDBColumn;
    grdSICRowDBTableView1CalcPrice: TcxGridDBColumn;
    grdSICRowDBTableView1TotalValue: TcxGridDBColumn;
    grdSICRowLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    Panel8: TPanel;
    ds_InvenRow: TDataSource;
    Panel9: TPanel;
    grdProduct: TcxGrid;
    grdProductDBTableView1: TcxGridDBTableView;
    grdProductLevel1: TcxGridLevel;
    acRefreshSic_PG: TAction;
    grdProductDBTableView1Sic_No: TcxGridDBColumn;
    grdProductDBTableView1Price: TcxGridDBColumn;
    grdProductDBTableView1AdmCost: TcxGridDBColumn;
    grdProductDBTableView1PlanerShavingsCost: TcxGridDBColumn;
    grdProductDBTableView1PlaningCost: TcxGridDBColumn;
    grdProductDBTableView1SortingCost: TcxGridDBColumn;
    grdProductDBTableView1KilnDryingCost: TcxGridDBColumn;
    grdProductDBTableView1CalcPrice: TcxGridDBColumn;
    grdProductDBTableView1TotalValue: TcxGridDBColumn;
    grdProductDBTableView1LIPGroupNo: TcxGridDBColumn;
    grdProductDBTableView1NM3: TcxGridDBColumn;
    grdProductDBTableView1RowName: TcxGridDBColumn;
    grdProductDBTableView1PriceGroupNo: TcxGridDBColumn;
    grdProductDBTableView1PriceGroupName: TcxGridDBColumn;
    acCalculate_PG: TAction;
    acPrintSic_PG: TAction;
    dxComponentPrinter1Link2: TdxGridReportLink;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGridPopupMenu2: TcxGridPopupMenu;
    cxGridPopupMenu3: TcxGridPopupMenu;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    acExportPerLager: TAction;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    acExportPerLagerOchPrisGrupp: TAction;
    cds_InvenRow: TFDQuery;
    cds_InvenRowIC_GrpNo: TIntegerField;
    cds_InvenRowLogicalInventoryPointNo: TIntegerField;
    cds_InvenRowInventeringsMetod: TIntegerField;
    cds_InvenRowPackageNo: TIntegerField;
    cds_InvenRowSuppliercode: TStringField;
    cds_InvenRowPackageTypeNo: TIntegerField;
    cds_InvenRowNoOfPkgs: TIntegerField;
    cds_InvenRowAntalPaketILager: TIntegerField;
    cds_InvenRowLogicalInventoryName: TStringField;
    cds_InvenRowStatus: TIntegerField;
    cds_InvenRowOwnerNo: TIntegerField;
    cds_InvenRowLONo: TIntegerField;
    cds_InvenRowRes01: TIntegerField;
    cds_InvenRowANTPERLÄNGD: TStringField;
    cds_InvenRowPRODUKT: TStringField;
    cds_InvenRowSTYCK: TIntegerField;
    cds_InvenRowAM3: TFloatField;
    cds_InvenRowNM3: TFloatField;
    cds_InvenRowKälla: TStringField;
    procedure acCloseExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acSaveUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acDeleteSICExecute(Sender: TObject);
    procedure acDeleteSICUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acAddInventeringarTillSammanstallningExecute(
      Sender: TObject);
    procedure acNewExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acGenerateSammanstallningExecute(Sender: TObject);
    procedure acSplitExecute(Sender: TObject);
    procedure acAddInventeringarTillSammanstallningUpdate(Sender: TObject);
    procedure acCalculateExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acAddSicRowExecute(Sender: TObject);
    procedure acRemoveSicRowExecute(Sender: TObject);
    procedure grdSICRowDBTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure acCalculateUpdate(Sender: TObject);
    procedure acAddSicRowUpdate(Sender: TObject);
    procedure acRemoveSicRowUpdate(Sender: TObject);
    procedure acNewUpdate(Sender: TObject);
    procedure acRefreshUpdate(Sender: TObject);
    procedure dsTempDataDataChange(Sender: TObject; Field: TField);
    procedure cbAllaPerioderPropertiesChange(Sender: TObject);
    procedure acPrintCRReportExecute(Sender: TObject);
    procedure grdSICRowActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
    procedure acRefreshSic_PGExecute(Sender: TObject);
    procedure acCalculate_PGExecute(Sender: TObject);
    procedure grdProductDBTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure acPrintSic_PGExecute(Sender: TObject);
    procedure acExportPerLagerExecute(Sender: TObject);
    procedure acExportPerLagerOchPrisGruppExecute(Sender: TObject);
  private
    { Private declarations }
    procedure EmailaBifogadFil(const Pdf : String) ;
    procedure CopyCosts ;
    procedure OpenGridSettings ;
    procedure SaveGridSettings ;
    function  DataSaved : Boolean ;
    function  OpenSIC_Modify(const SicNo : Integer) : Integer ;
    procedure CMMoveIt(var Msg: TMessage); message CM_MOVEIT;
    procedure CMMoveIt_II(var Msg: TMessage); message CM_MOVEIT_II;
  public
    { Public declarations }
  end;

//var fSIC: TfSIC ;

implementation

uses VidaUser , dmcInvCtrl, uSicICgrp, uModifySIC, dmsVidaContact,
  UnitCRViewReport, dmsVidaSystem, uInvCtrl, uSendMapiMail , dmsDataConn;

{$R *.dfm}

procedure TfSIC.CMMoveIt(var Msg: TMessage);
var AGoForward: Boolean;
begin
   AGoForward := Boolean(Msg.WParam);
   grdSICRowDBTableView1.Controller.EditingController.HideEdit(True);
   grdSICRowDBTableView1.Controller.FocusNextCell(AGoForward)
end;

procedure TfSIC.CMMoveIt_II(var Msg: TMessage);
var AGoForward: Boolean;
begin
   AGoForward := Boolean(Msg.WParam);
   grdProductDBTableView1.Controller.EditingController.HideEdit(True);
   grdProductDBTableView1.Controller.FocusNextCell(AGoForward)
end;

function TfSIC.DataSaved : Boolean ;
begin
 Result:= True ;
 With dmInvCtrl do
 Begin
  if (cds_SicRow.Active) and (cds_SicHdr.Active) then
  Begin
   if cds_SicHdr.State in [dsEdit, dsInsert] then
    Result:= False ;
   if cds_SicHdr.ChangeCount > 0 then
    Result:= False ;

   if cds_SicRow.State in [dsEdit, dsInsert] then
    Result:= False ;
   if cds_SicRow.ChangeCount > 0 then
    Result:= False ;

   if cds_SicRow_PG.State in [dsEdit, dsInsert] then
    Result:= False ;
   if cds_SicRow_PG.ChangeCount > 0 then
    Result:= False ;
  End ;

 End ;//With
end;

procedure TfSIC.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfSIC.acSaveExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if cds_SicHdr.State in [dsEdit, dsInsert] then
   cds_SicHdr.Post ;
  if cds_SicHdr.ChangeCount > 0 then
  Begin
   cds_SicHdr.ApplyUpdates(0) ;
   cds_SicHdr.CommitUpdates ;
  End;

  if cds_Sic_IC_grp.State in [dsEdit, dsInsert] then
   cds_Sic_IC_grp.Post ;
  if cds_Sic_IC_grp.ChangeCount > 0 then
  Begin
   cds_Sic_IC_grp.ApplyUpdates(0) ;
   cds_Sic_IC_grp.CommitUpdates ;
  End;

  if cds_SicRow.State in [dsEdit, dsInsert] then
   cds_SicRow.Post ;
  if cds_SicRow.ChangeCount > 0 then
  Begin
   cds_SicRow.ApplyUpdates(0) ;
   cds_SicRow.CommitUpdates ;
  End;

  if cds_SicRow_PG.State in [dsEdit, dsInsert] then
   cds_SicRow_PG.Post ;
  if cds_SicRow_PG.ChangeCount > 0 then
  Begin
   cds_SicRow_PG.ApplyUpdates(0) ;
   cds_SicRow_PG.CommitUpdates ;
  End;
 End ;
end;

procedure TfSIC.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= True ;
  if DataSaved = False then
   if MessageDlg('Data är inte sparat, vill du avsluta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    CanClose:= True
    else
    CanClose:= False ;
 if CanClose then
 With dmInvCtrl do
 Begin
  cds_Sic_IC_grp.Active   := False ;
  cds_SicRow_PG.Active       := False ;
  cds_SicRow.Active       := False ;
  cds_SicHdr.Active       := False ;
//  cds_InvCtrlGrp.Active   := False ;
//  cds_InvCtrlGrp.Filtered := False ;
  mtTempData.Active       := False ;
 End ;
 SaveGridSettings ;
end;

procedure TfSIC.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled:= not DataSaved ;
end;

procedure TfSIC.FormShow(Sender: TObject);
begin
 With dmsContact do
 Begin
  cds_Verk.Active := False ;
  cds_Verk.Active := True ;
  cds_Verk.Insert ;
  cds_VerkClientNo.AsInteger  := 0 ;
  cds_VerkClientName.AsString := 'ALLA' ;
  cds_Verk.Post ;  
 End ;
 With dmInvCtrl do
 Begin
  tLIPGroupNo      := 1 ;
  mtTempData.Active := True ;
  mtTempData.Insert ;
  mtTempDataClientNo.AsInteger      := ThisUser.CompanyNo ;
  mtTempDatafiYear.AsInteger        := 2008 ;
  mtTempDatafiMonth.AsInteger       := 6 ;
  mtTempDataAllaPerioder.AsInteger  := 1 ;
  mtTempData.Post ;
  if cds_SicHdr.Active = False then
  Begin
   cds_SicHdr.Active:= True ;
    if cds_SicHdr.RecordCount = 0 then
    Begin
     cds_SicHdr.Active  := False ;
     cds_SicHdr.ParamByName('VerkNo').AsInteger:= mtTempDataClientNo.AsInteger ;
     cds_SicHdr.Active  := True ;
     cds_SicHdr.Last ;
    End ;
  End
   else
    if cds_SicHdr.RecordCount = 0 then
    Begin
     cds_SicHdr.Active  := False ;
     cds_SicHdr.ParamByName('VerkNo').AsInteger:= mtTempDataClientNo.AsInteger ;
     cds_SicHdr.Active  := True ;
     cds_SicHdr.Last ;
    End ;

   if cds_SicHdr.RecordCount > 0 then
    Begin
     cds_SicHdr.Last ;
    End;

//Controller.TopRecordIndex := AFocusedRecord.Index;

  cds_SicRow.Active  := False ;
  cds_SicRow.Active  := True ;

  cds_SicRow_PG.Active  := False ;
  cds_SicRow_PG.Active  := True ;

  cds_Sic_IC_grp.Active  := False ;
  cds_Sic_IC_grp.Active  := True ;

  cds_Sic_LIP.Active  := False ;
  cds_Sic_LIP.Active  := True ;

  cds_InvCtrlListSIC.Active:= False ;
  cds_InvCtrlListSIC.ParamByName('VerkNo').AsInteger  := mtTempDataClientNo.AsInteger ;
  cds_InvCtrlListSIC.Active:= True ;

  if ThisUser.CompanyNo <> 741 then
   lcVerk.Enabled := True ;
 End ;
 OpenGridSettings ;
end;

procedure TfSIC.FormCreate(Sender: TObject);
begin
 if not Assigned(dmInvCtrl) then
 dmInvCtrl:= TdmInvCtrl.Create(Nil);
end;

procedure TfSIC.acDeleteSICExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  //Kolla att alla rader är borta först
  if MessageDlg('Är du säker',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  cds_SicHdr.Delete ;
 End ;
end;

procedure TfSIC.acDeleteSICUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acDeleteSIC.Enabled:= (cds_SicHdr.Active) and (cds_SicHdr.RecordCount > 0) ;
 End ;
end;

procedure TfSIC.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled:= not DataSaved ;
end;

procedure TfSIC.acCancelChangesExecute(Sender: TObject);
begin
 if MessageDlg('Är du säker',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmInvCtrl do
 Begin
  if cds_SicHdr.State in [dsEdit, dsInsert] then
   cds_SicHdr.Cancel ;
  if cds_SicHdr.ChangeCount > 0 then
   cds_SicHdr.CancelUpdates ;

  if cds_SicRow.State in [dsEdit, dsInsert] then
   cds_SicRow.Cancel ;
  if cds_SicRow.ChangeCount > 0 then
   cds_SicRow.CancelUpdates ;

  if cds_SicRow_PG.State in [dsEdit, dsInsert] then
   cds_SicRow_PG.Cancel ;
  if cds_SicRow_PG.ChangeCount > 0 then
   cds_SicRow_PG.CancelUpdates ;
 End ;
end;

procedure TfSIC.acRefreshExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_SicHdr.Active                           := False ;
  cds_SicHdr.ParamByName('VerkNo').AsInteger   := mtTempDataClientNo.AsInteger ;
  if mtTempDataAllaPerioder.AsInteger = 1 then
  Begin
   cds_SicHdr.ParamByName('InvYear').AsInteger  := 0 ;
   cds_SicHdr.ParamByName('InvMonth').AsInteger := 0 ;
  End
  else
  Begin
   cds_SicHdr.ParamByName('InvYear').AsInteger  := mtTempDatafiYear.AsInteger ;
   cds_SicHdr.ParamByName('InvMonth').AsInteger := mtTempDatafiMonth.AsInteger ;
  End ;
  cds_SicHdr.Active                           := True ;

  cds_InvCtrlListSIC.Active:= False ;
  cds_InvCtrlListSIC.ParamByName('VerkNo').AsInteger  := mtTempDataClientNo.AsInteger ;
  cds_InvCtrlListSIC.Active:= True ;
 End ;
end;

procedure TfSIC.acAddInventeringarTillSammanstallningExecute(Sender: TObject);
begin
  if OpenSIC_Modify(dmInvCtrl.cds_SicHdrSic_No.AsInteger) > 0 then
  Begin
   acGenerateSammanstallningExecute(Sender) ;
   acRefreshExecute(Sender) ;
  End ;
end;

function TfSIC.OpenSIC_Modify(const SicNo : Integer) : Integer ;
var fModifySIC: TfModifySIC ;
begin
 With dmInvCtrl do
 Begin
  cds_Sic_IC_grp.Active := False ;
  cds_Sic_IC_grp.Active := True ;
  cds_Sic_LIP.Active    := False ;
  cds_Sic_LIP.Active    := True ;
  fModifySIC:= TfModifySIC.Create(nil) ;
  try
   fModifySIC.SicNo := SicNo ;
   fModifySIC.ShowModal ;
   Result := fModifySIC.SicNo ;
  finally
   FreeAndNil(fModifySIC) ;
  end;
 End ;//with..
end;

procedure TfSIC.acNewExecute(Sender: TObject);
Var pSicNo : Integer ;
begin
 With dmInvCtrl do
 Begin
  cds_SicHdr.Insert ;
  cds_SicHdr.Post ;
  acSaveExecute(Sender) ;
  cds_Sic_IC_grp.Active := False ;
  cds_Sic_IC_grp.Active := True ;
  cds_Sic_LIP.Active    := False ;
  cds_Sic_LIP.Active    := True ;
  pSicNo                := OpenSIC_Modify(0) ;
  if pSicNo > 0 then
  Begin
    acGenerateSammanstallningExecute(Sender) ;
    acRefreshExecute(Sender) ;
    if cds_SicHdr.Locate('Sic_No', pSicNo, []) then ;
  End ;
 End ;
end;

procedure TfSIC.FormDestroy(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  dxComponentPrinter1Link1.Free ; 
  dxComponentPrinter1Link2.Free ;
  if not Assigned(fInvCtrl) then
  FreeAndNil(dmInvCtrl) ;
 End ;
end;

procedure TfSIC.acGenerateSammanstallningExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  sq_SUM_SIC.ParamByName('Sic_No').AsInteger:= cds_SicHdrSic_No.AsInteger ;
  sq_SUM_SIC.ExecSQL ;
  cds_SicRow.Active := False ;
  cds_SicRow.Active := True ;
 End ;
end;

procedure TfSIC.acSplitExecute(Sender: TObject);
begin
 //
end;

procedure TfSIC.acAddInventeringarTillSammanstallningUpdate(
  Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acAddInventeringarTillSammanstallning.Enabled:= (cds_SicHdr.Active) and (cds_SicHdr.RecordCount > 0)
  and (cds_SicHdrStatus.AsInteger = 0) ;
 End ;
end;

procedure TfSIC.acCalculateExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_SicRow.First ;
  While not cds_SicRow.Eof do
  Begin
   cds_SicRow.Edit ;
   cds_SicRow.Post ;
   cds_SicRow.Next ;
  End ;
 End ;
end;

procedure TfSIC.acPrintExecute(Sender: TObject);
var
  ASettings: TdxPSPDFReportExportOptions;
begin
  ASettings := TdxPSPDFReportExportOptions.Create;
  Try
  ASettings.Title := 'Sammanställning inventering' ;

  dxComponentPrinter1Link1.ReportDocument.Caption  := 'Sammanställning inventering' ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Sammanställning inventering') ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(dmInvCtrl.cds_SicHdrDescription.AsString) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Lagerlista') ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;

//  dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link1.ShrinkToPageWidth:= True ;
  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1) ;

  finally
    ASettings.Free;
  end;
end;

procedure TfSIC.acAddSicRowExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_SicRow.Insert ;
 End ;
end;

procedure TfSIC.acRemoveSicRowExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_SicRow.Delete ;
 End ;
end;

procedure TfSIC.grdSICRowDBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
 Try
  if AEdit is TcxCustomTextEdit then
    with TcxCustomTextEdit(AEdit) do begin
      if (Key = VK_RIGHT) and (CursorPos=Length(TcxCustomTextEdit(AEdit).Text)) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(True), 0)
      else if (Key = VK_LEFT) and (CursorPos=0) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(False), 0);
    end;
 Except
 End ;
end;

procedure TfSIC.acCalculateUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acCalculate.Enabled:= (cds_SicHdr.Active) and (cds_SicHdr.RecordCount > 0)
  and (cds_SicHdrStatus.AsInteger = 0) ;
 End ;
end;

procedure TfSIC.acAddSicRowUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acAddSicRow.Enabled:= (cds_SicHdr.Active) and (cds_SicHdr.RecordCount > 0)
  and (cds_SicHdrStatus.AsInteger = 0) ;
 End ;
end;

procedure TfSIC.acRemoveSicRowUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acRemoveSicRow.Enabled:= (cds_SicHdr.Active) and (cds_SicHdr.RecordCount > 0)
  and (cds_SicHdrStatus.AsInteger = 0) ;
 End ; 
end;

procedure TfSIC.acNewUpdate(Sender: TObject);
begin
 acNew.Enabled:= DataSaved ;
end;

procedure TfSIC.acRefreshUpdate(Sender: TObject);
begin
 acRefresh.Enabled:= DataSaved ;
end;

procedure TfSIC.dsTempDataDataChange(Sender: TObject; Field: TField);
begin
 acRefreshExecute(Sender) ;
end;

procedure TfSIC.cbAllaPerioderPropertiesChange(Sender: TObject);
begin
 if cbAllaPerioder.Checked then
 Begin
  seYear.Enabled  := False ;
  seMonth.Enabled := False ;
 End
 else
 Begin
  seYear.Enabled  := True ;
  seMonth.Enabled := True ;
 End ;
end;

procedure TfSIC.acPrintCRReportExecute(Sender: TObject);
var FormCRViewReport: TFormCRViewReport ;
    Save_Cursor : TCursor;
begin
 With dmInvCtrl do
 Begin
  eSetfocus.SetFocus ;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  FormCRViewReport:= TFormCRViewReport.Create(Nil);
  Try
   FormCRViewReport.CreateCo('Sic.rpt') ;
   if FormCRViewReport.ReportFound then
   Begin
    Screen.Cursor := crSQLWait;    { Show hourglass cursor }

    FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(mtTempDataClientNo.AsInteger) ;

    if mtTempDataAllaPerioder.AsInteger = 0 then
    Begin
     FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(mtTempDatafiYear.AsInteger) ;
     FormCRViewReport.report.ParameterFields.Item[3].AddCurrentValue(mtTempDatafiMonth.AsInteger) ;
    End
    else
    Begin
     FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(0) ;
     FormCRViewReport.report.ParameterFields.Item[3].AddCurrentValue(0) ;
    End ;
 (*   FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
    FormCRViewReport.CRViewer91.ViewReport ;
    Screen.Cursor := crSQLWait;    { Show hourglass cursor }
    FormCRViewReport.ShowModal ;
*)   End ;
  Finally
   FreeAndNil(FormCRViewReport)  ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;

 End ;
end;

procedure TfSIC.grdSICRowActiveTabChanged(Sender: TcxCustomGrid;
  ALevel: TcxGridLevel);
begin
 //
end;

procedure TfSIC.acRefreshSic_PGExecute(Sender: TObject);
var Save_Cursor : TCursor;
begin
 if MessageDlg('Eventuella inmatade kostnader försvinner, vill du gå vidare?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 With dmInvCtrl do
 Begin
  sq_SUM_SIC_PG.ParamByName('Sic_No').AsInteger:= cds_SicHdrSic_No.AsInteger ;
  sq_SUM_SIC_PG.ExecSQL ;
  CopyManualSicRows(cds_SicHdrSic_No.AsInteger) ;
  cds_SicRow_PG.Active:= False ;
  cds_SicRow_PG.Active:= True ;
  CopyCosts ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//if..
end;

procedure TfSIC.acCalculate_PGExecute(Sender: TObject);
var Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 With dmInvCtrl do
 Begin
  cds_SicRow_PG.First ;
  While not cds_SicRow_PG.Eof do
  Begin
   cds_SicRow_PG.Edit ;
   cds_SicRow_PG.Post ;
   cds_SicRow_PG.Next ;
  End ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfSIC.grdProductDBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
 Try
  if AEdit is TcxCustomTextEdit then
    with TcxCustomTextEdit(AEdit) do begin
      if (Key = VK_RIGHT) and (CursorPos=Length(TcxCustomTextEdit(AEdit).Text)) then
        PostMessage(Self.Handle,CM_MOVEIT_II, Integer(True), 0)
      else if (Key = VK_LEFT) and (CursorPos=0) then
        PostMessage(Self.Handle,CM_MOVEIT_II, Integer(False), 0);
    end;
 Except
 End ;
end;

procedure TfSIC.acPrintSic_PGExecute(Sender: TObject);
var
  ASettings: TdxPSPDFReportExportOptions;
begin
  ASettings := TdxPSPDFReportExportOptions.Create;
  Try
  ASettings.Title := 'Sammanställning inventering' ;

  dxComponentPrinter1Link2.ReportDocument.Caption  := 'Sammanställning inventering' ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add('Sammanställning inventering') ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add(dmInvCtrl.cds_SicHdrDescription.AsString) ;
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add('Lagerlista') ;
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;

//  dxComponentPrinter1Link2.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link2.ShrinkToPageWidth:= True ;
  dxComponentPrinter1Link2.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1Link2.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link2) ;

  finally
    ASettings.Free;
  end;  

end;

procedure TfSIC.SaveGridSettings ;
Begin
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdSICHdrDBTableView1.Name, grdSICHdrDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdSICRowDBTableView1.Name, grdSICRowDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdProductDBTableView1.Name, grdProductDBTableView1) ;
End ;

procedure TfSIC.OpenGridSettings ;
Begin
 dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdSICHdrDBTableView1.Name, grdSICHdrDBTableView1) ;
 dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdSICRowDBTableView1.Name, grdSICRowDBTableView1) ;
 dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdProductDBTableView1.Name, grdProductDBTableView1) ;
End ;

//för över kostnader till prisgrupp grid
procedure TfSIC.CopyCosts ;
var Save_Cursor : TCursor;
    x : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  With dmInvCtrl do
  Begin
   Try
   cds_SicRow_PG.First ;
   While not cds_SicRow_PG.Eof do
   Begin
    cds_SicRow.Filter   := 'RowName = ' + QuotedStr(cds_SicRow_PGRowName.AsString) ;
    cds_SicRow.Filtered := True ;
    if cds_SicRow.RecordCount > 0 then
    Begin
     cds_SicRow_PG.Edit ;
     For x := 2 to 6 do
      cds_SicRow_PG.Fields.Fields[x].AsVariant  := cds_SicRow.Fields.Fields[x].AsVariant ;
     cds_SicRow_PG.Post ;
    End ;

    cds_SicRow_PG.Next ;
   End ;
   Finally
    cds_SicRow.Filtered := False ;
   End ;
  End ;//With

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure TfSIC.acExportPerLagerExecute(Sender: TObject);
var
  ASettings: TdxPSPDFReportExportOptions;
  ProdExportMap : String ;
begin
  ProdExportMap  := dmsSystem.Get_SystemDir(ThisUser.UserID, 'Global', 'UserDir') ;
  // Create default export settings
  ASettings := TdxPSPDFReportExportOptions.Create;
  try
    // Enable the content compression for a PDF document
    ASettings.CompressStreams := True;
    // Pass False as the second parameter to not display the PDF Export Options and Save As dialogs

    ProdExportMap  := ProdExportMap + 'LS.pdf' ;
    dxComponentPrinter1Link1.ShrinkToPageWidth:= True ;
    dxComponentPrinter1Link1.ExportToPDF(ProdExportMap, False, ASettings);

    EmailaBifogadFil(ProdExportMap) ;
  finally
    ASettings.Free;
  end;
end;



procedure TfSIC.acExportPerLagerOchPrisGruppExecute(Sender: TObject);
var
  ASettings: TdxPSPDFReportExportOptions;
  ProdExportMap : String ;
begin
  ProdExportMap  := dmsSystem.Get_SystemDir(ThisUser.UserID, 'Global', 'UserDir') ;
  // Create default export settings
  ASettings := TdxPSPDFReportExportOptions.Create;
  try
    // Enable the content compression for a PDF document
    ASettings.CompressStreams := True;
    // Pass False as the second parameter to not display the PDF Export Options and Save As dialogs

    ProdExportMap  := ProdExportMap + 'LS.pdf' ;
    dxComponentPrinter1Link2.ShrinkToPageWidth:= True ;
    dxComponentPrinter1Link2.ExportToPDF(ProdExportMap, False, ASettings);

    EmailaBifogadFil(ProdExportMap) ;
  finally
    ASettings.Free;
  end;
end;

procedure TfSIC.EmailaBifogadFil(const Pdf : String) ;
const
  LF = #10;
Var
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : Array of String ;
    MailToAddress           : String ;
    Subject                 : String ;
    InfogadHTMLFil          : String ;
begin
 Subject        := 'Lagersammanställning' ;

// InfogadHTMLFil := ExportToHTML('paketspec', cxGrid1) ;

 MailToAddress:= 'Jeanette.Regin@vida.se';//'lars.makiaho@gmail.com' ;

 SetLength(Attach, 1);
 Attach[0]  := Pdf ;
 dm_SendMapiMail         := Tdm_SendMapiMail.Create(nil);
 Try

  dm_SendMapiMail.SendMail(Subject,
  'Pdf bifogad. ',
  '',
//  +LF+''
//  +LF+'MVH/Best Regards, '
//  +LF+''
//  +'Lars',//dmsContact.GetFirstAndLastName(ThisUser.UserID),
//  'lars.makiaho@falubo.se',
  MailToAddress,
  InfogadHTMLFil,
  Attach) ;

//(const Subject, MessageText, MailFromAddress,
  //  MailToAddress, InfogadHTMLFil: String; const Attachments: array of String);
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;

end;



end.
