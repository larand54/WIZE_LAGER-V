unit uInvCreateManyCtrlList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  cxLabel, cxCheckBox, Menus, cxLookAndFeelPainters, ActnList, StdCtrls,
  cxButtons, kbmMemTable, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, ImgList, SqlTimSt,
  cxGridCustomPopupMenu, cxGridPopupMenu, ComCtrls, cxImageComboBox,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  dxPScxCommon, cxCalc, cxGridExportLink,
  cxExport, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLookAndFeels, dxBar, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer,
  dxPScxCheckListBoxLnk, dxPSLbxLnk, dxPSTextLnk, cxCheckComboBox, dxSkinsCore,
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
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter , dxPScxPivotGridLnk, dxPScxSSLnk, dxCore, cxDateUtils,
  cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White ;

type
  TfInvCreateManyCtrlList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdCreateInvsLevel1: TcxGridLevel;
    grdCreateInvs: TcxGrid;
    grdCreateInvsView: TcxGridDBBandedTableView;
    grdCreateInvsViewInvNr: TcxGridDBBandedColumn;
    grdCreateInvsViewgare: TcxGridDBBandedColumn;
    grdCreateInvsViewLS: TcxGridDBBandedColumn;
    grdCreateInvsViewLG: TcxGridDBBandedColumn;
    grdCreateInvsViewKontrollistaPkt: TcxGridDBBandedColumn;
    grdCreateInvsViewKontrollistaNM3: TcxGridDBBandedColumn;
    grdCreateInvsViewResultalistaPkt: TcxGridDBBandedColumn;
    grdCreateInvsViewResultatlistaNM3: TcxGridDBBandedColumn;
    grdCreateInvsViewLIPNo: TcxGridDBBandedColumn;
    grdCreateInvsViewInventera: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    ActionList1: TActionList;
    acClose: TAction;
    acRefresh: TAction;
    cxButton2: TcxButton;
    deStartPeriod: TcxDBDateEdit;
    mtUserProp: TkbmMemTable;
    mtUserPropVerkNo: TIntegerField;
    mtUserPropOwnerNo: TIntegerField;
    mtUserPropPIPNo: TIntegerField;
    mtUserPropLIPNo: TIntegerField;
    mtUserPropInputOption: TIntegerField;
    mtUserPropRegPointNo: TIntegerField;
    mtUserPropRegDate: TDateTimeField;
    mtUserPropCopyPcs: TIntegerField;
    mtUserPropRunNo: TIntegerField;
    mtUserPropProducerNo: TIntegerField;
    mtUserPropAutoColWidth: TIntegerField;
    mtUserPropSupplierCode: TStringField;
    mtUserPropLengthOption: TIntegerField;
    mtUserPropLengthGroupNo: TIntegerField;
    mtUserPropNewItemRow: TIntegerField;
    mtUserPropGradeStampNo: TIntegerField;
    mtUserPropBarCodeNo: TIntegerField;
    mtUserPropLengthGroup: TStringField;
    mtUserPropLIPName: TStringField;
    mtUserPropPIPNAME: TStringField;
    mtUserPropREGPOINT: TStringField;
    mtUserPropPRODUCER: TStringField;
    mtUserPropOWNER: TStringField;
    mtUserPropVERK: TStringField;
    mtUserPropRoleType: TIntegerField;
    mtUserPropGradestamp: TStringField;
    mtUserPropBarcode: TStringField;
    mtUserPropProductDescription: TStringField;
    mtUserPropProductNo: TIntegerField;
    mtUserPropProductGroupNo: TIntegerField;
    mtUserPropLIPChange: TIntegerField;
    mtUserPropSalesRegionNo: TIntegerField;
    mtUserPropVolumeUnitNo: TIntegerField;
    mtUserPropLengthFormatNo: TIntegerField;
    mtUserPropForm: TStringField;
    mtUserPropUserID: TIntegerField;
    mtUserPropLengthVolUnitNo: TIntegerField;
    mtUserPropSurfacingNo: TIntegerField;
    mtUserPropNOMTHICK: TFloatField;
    mtUserPropGroupByBox: TIntegerField;
    mtUserPropGroupSummary: TIntegerField;
    mtUserPropAgentNo: TIntegerField;
    mtUserPropShipperNo: TIntegerField;
    dsUserProp: TDataSource;
    mtUserPropStartPeriod: TDateTimeField;
    mtUserPropEndPeriod: TDateTimeField;
    deEndPeriod: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    cxButton3: TcxButton;
    imglistActions: TImageList;
    acCreateMarkeradeInventeringar: TAction;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    grdCreateInvsViewIntVerk: TcxGridDBBandedColumn;
    cxLabel4: TcxLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1Inventering: TcxStyle;
    cxLabel5: TcxLabel;
    grdCreateInvsViewOwnerNo: TcxGridDBBandedColumn;
    grdCreateInvsViewPIPNo: TcxGridDBBandedColumn;
    grdCreateInvsViewInventeringsdatum: TcxGridDBBandedColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    StatusBar1: TStatusBar;
    cxButton4: TcxButton;
    grdCreateInvsViewStatus: TcxGridDBBandedColumn;
    cxButton5: TcxButton;
    acPrint: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxButton6: TcxButton;
    acExportToExcel: TAction;
    SaveDialog2: TSaveDialog;
    grdCreateInvsViewSkapadAv: TcxGridDBBandedColumn;
    grdCreateInvsViewmaxdatum: TcxGridDBBandedColumn;
    lcOWNER: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    acOpenInv: TAction;
    aUpdateAvgPrice: TAction;
    cxButton7: TcxButton;
    grdCreateInvsViewVrde: TcxGridDBBandedColumn;
    grdCreateInvsViewNM3: TcxGridDBBandedColumn;
    grdCreateInvsViewMedelpris: TcxGridDBBandedColumn;
    acSetAllToBeInventera: TAction;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    acSetMarkedAsConfirmed: TAction;
    FDm_SelectedRows: TkbmMemTable;
    FDm_SelectedRowsInventeringsNr: TIntegerField;
    acSetMarkedAsConfirmedAndPriceConfirmed: TAction;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    acSetMarkedRowsToBeInventerade: TAction;
    FDm_SelectedRowsLIPNo: TIntegerField;
    acCreateResult: TAction;
    dxBarButton5: TdxBarButton;
    FDm_SelectedRowsStatus: TIntegerField;
    icStatus: TcxDBImageComboBox;
    acExportInventory: TAction;
    cxButton8: TcxButton;
    mtUserPropFilter1: TStringField;
    mtUserPropFilter2: TStringField;
    cxButton9: TcxButton;
    acNewInvenSET: TAction;
    acSetMall: TAction;
    cxButton10: TcxButton;
    deMaxDatum: TcxDBDateEdit;
    teSETNo: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    acPriceGroups: TAction;
    cxButton11: TcxButton;
    acCollectPackageValues: TAction;
    acCopyCalcPriceToNM3: TAction;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    procedure acRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acCloseExecute(Sender: TObject);
    procedure grdCreateInvsDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdCreateInvsViewEditing(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure acCreateMarkeradeInventeringarExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acExportToExcelExecute(Sender: TObject);
    procedure acOpenInvExecute(Sender: TObject);
    procedure acOpenInvUpdate(Sender: TObject);
    procedure aUpdateAvgPriceExecute(Sender: TObject);
    procedure acSetAllToBeInventeraExecute(Sender: TObject);
    procedure acSetMarkedAsConfirmedExecute(Sender: TObject);
    procedure acSetMarkedAsConfirmedAndPriceConfirmedExecute(
      Sender: TObject);
    procedure acSetMarkedRowsToBeInventeradeExecute(Sender: TObject);
    procedure acCreateResultExecute(Sender: TObject);
    procedure acExportInventoryExecute(Sender: TObject);
    procedure acNewInvenSETExecute(Sender: TObject);
    procedure acSetMallExecute(Sender: TObject);
    procedure deMaxDatumExit(Sender: TObject);
    procedure deStartPeriodExit(Sender: TObject);
    procedure deEndPeriodExit(Sender: TObject);
    procedure acPriceGroupsExecute(Sender: TObject);
    procedure acCollectPackageValuesExecute(Sender: TObject);
    procedure acCopyCalcPriceToNM3Execute(Sender: TObject);
  private
    { Private declarations }
    procedure MarkeradeInventeringarOnlyTakeNonInventerade ;
    procedure MarkeradeInventeringar ;
    procedure SelectedInventeringar ;
    procedure CreateInventering ;
    procedure AddAllLGToInventering ;
//    procedure AddSelectedLGToInventering ;
  public
    { Public declarations }
  end;

//var fInvCreateManyCtrlList: TfInvCreateManyCtrlList;

implementation

uses dmcInvCtrl, dmc_UserProps, VidaUser , dmsVidaSystem, uInventeringsRapport,
  uSetMall, uCreateSicPriceGroups;

{$R *.dfm}

procedure TfInvCreateManyCtrlList.acRefreshExecute(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 With dmInvCtrl do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  cds_CreateInvs.DisableControls ;
  try
  cds_CreateInvs.Active := False ;

  if Self.mtUserPropLengthFormatNo.AsInteger = 5 then
   cds_CreateInvs.SQL.Text := sq_CI_All.SQL.Text
    else
     if Self.mtUserPropLengthFormatNo.AsInteger = 4 then
      cds_CreateInvs.SQL.Text := sq_CI_NotInven.SQL.Text
       else
        cds_CreateInvs.SQL.Text := sq_CI_Inven.SQL.Text ;

  cds_CreateInvs.ParamByName('StartDate').AsSQLTimeStamp := cds_InvCtrlSetStartFilterOnMaxDate.AsSQLTimeStamp ;// DateTimeToSQLTimeStamp(Self.mtUserPropStartPeriod.AsDateTime) ;
  cds_CreateInvs.ParamByName('EndDate').AsSQLTimeStamp   := cds_InvCtrlSetEndFilterOnMaxDate.AsSQLTimeStamp ;// DateTimeToSQLTimeStamp(Self.mtUserPropEndPeriod.AsDateTime) ;

  if (not Self.mtUserPropOwnerNo.IsNull) and (Self.mtUserPropOwnerNo.AsInteger > 0) then
  cds_CreateInvs.ParamByName('OwnerNo').AsInteger        := Self.mtUserPropOwnerNo.AsInteger
  else
  cds_CreateInvs.ParamByName('OwnerNo').AsInteger        := 0 ;

//  if (not Self.mtUserPropLengthFormatNo.IsNull) and (Self.mtUserPropLengthFormatNo.AsInteger > 0) then
  cds_CreateInvs.ParamByName('Status').AsInteger         := Self.mtUserPropLengthFormatNo.AsInteger ;
//  else
//  cds_CreateInvs.ParamByName('Status').AsInteger         := 5 ;

//  cds_CreateInvs.SQL.SaveToFile('cds_CreateInvs.txt');
  cds_CreateInvs.Active := True ;
  finally
   cds_CreateInvs.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;
end;

procedure TfInvCreateManyCtrlList.FormCreate(Sender: TObject);
begin
  dm_UserProps.LoadUserProps (Self.Name, mtuserprop) ;
  mtUserProp.Edit ;
  mtUserPropVerkNo.AsInteger:= mtUserPropOwnerNo.AsInteger ;
  mtUserProp.Post ;
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdCreateInvsView.Name, grdCreateInvsView) ;

  if dmInvCtrl.sp_SetMall.Active = False then
  Begin
    dmInvCtrl.cds_InvCtrlSet.Active := False ;
    dmInvCtrl.cds_InvCtrlSet.ParamByName('SetStatus').AsInteger  := 1 ;
    dmInvCtrl.cds_InvCtrlSet.Active := True ;

    dmInvCtrl.sp_SetMall.Active := False ;
    dmInvCtrl.sp_SetMall.Active := True ;
  End;
end;

procedure TfInvCreateManyCtrlList.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdCreateInvsView.Name, grdCreateInvsView) ;
 dm_UserProps.SaveUserProps (Self.Name, mtUserProp) ;
end;

procedure TfInvCreateManyCtrlList.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfInvCreateManyCtrlList.grdCreateInvsDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  aColumn : TcxCustomGridTableItem;
  aValue  : Variant;
begin
 aColumn :=(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('InvNr');
 if (ARecord.Values[aColumn.Index] <> null) and (AItem <> nil) then
 Begin
  aValue := ARecord.Values[aColumn.Index];

  if (aValue > 0)  then
  AStyle:= cxStyle1Inventering ;
 End ;
end;


procedure TfInvCreateManyCtrlList.grdCreateInvsViewEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
//var
//  aColumn : TcxCustomGridTableItem;
//  aValue  : Variant;
begin
 With dmInvCtrl do
 Begin
  if cds_CreateInvsInvNr.AsInteger = 0 then
  AAllow  := True
  else
  AAllow  := False ;  
 End ;
(* aColumn :=(Sender as TcxGridDBTableView).GetColumnByFieldName('InvNr');
 if (AItem.DataBinding.Values[aColumn.Index] <> null) and (AItem <> nil) then
 Begin
  aValue := ARecord.Values[aColumn.Index];

  if (aValue = 0)  then
  AAllow  := True
  else
  AAllow  := False ;
 End ; *)
end;

function IsDate(pDate: TDateTime): Boolean;
var
//  dt: TDateTime;
  S : String ;
begin
  Result := True;
  try
   s      := DateTimeToStr(pDate) ;
   pDate  := StrToDate(S);
  except
    Result := False;
  end;
end;

procedure TfInvCreateManyCtrlList.acCollectPackageValuesExecute(
  Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if MessageDlg('Vill du generera lagervärden för resultalistor? ' ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Exec_PackageCost (cds_InvCtrlSetIC_SETNo.AsInteger,cds_InvCtrlSetMaxDatum.AsSQLTimeStamp) ;
 End;
end;

procedure TfInvCreateManyCtrlList.acCopyCalcPriceToNM3Execute(Sender: TObject);
begin
   //dbo.vis_CopyToNM3Price
   with dmInvCtrl do
   Begin
    if MessageDlg('Vill du kopiera kalkylpris till NM3 pris i alla inventeringar? ' ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     CopyToNM3Price (cds_InvCtrlSetIC_SETNo.AsInteger) ;
   End;
end;

procedure TfInvCreateManyCtrlList.acCreateMarkeradeInventeringarExecute(
  Sender: TObject);
Var Save_Cursor : TCursor;
begin
 if IsDate(deMaxDatum.Date) = False then
 Begin
  ShowMessage('Fel maxdatum') ;
  Exit ;
 End ;

 if deMaxDatum.Date <= Now then
 Begin
  ShowMessage('Maxdatum måste vara större än inventeringsdatumet.') ;
  Exit ;
 End ;


 if MessageDlg('Vill du skapa nya inventeringar utifrån lagergrupper i mallen? ' ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
   Save_Cursor    := Screen.Cursor;
   Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
   try
   With dmInvCtrl do
   Begin
     //Lägger in mallens lagergrupper i inventeringen.
     InsertToInvenSetLIP (cds_InvCtrlSetIC_SETNo.AsInteger) ;

     cds_InvenSETLip.Active := False ;
     cds_InvenSETLip.ParamByName('IC_SetNo').AsInteger  := cds_InvCtrlSetIC_SETNo.AsInteger ;
     cds_InvenSETLip.Active := True ;
     Try
     cds_InvenSETLip.First ;
     While not cds_InvenSETLip.Eof do
     Begin
      Try
      CreateInventering ;
      cds_InvenSETLip.Edit ;
      cds_InvenSETLipGenerated.AsInteger  := 1 ;
      cds_InvenSETLip.Post ;
      cds_InvenSETLip.Next ;
      Except
       On E: Exception do
       Begin
        ShowMessage(E.Message) ;
        Raise ;
       End ;
      End;
     End ;//While
     cds_CreateInvs.Active  := False ;
     cds_CreateInvs.Active  := True ;
     Finally
      cds_InvenSETLip.Active := False ;
     End;
   End ;
   finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   end;
 End;

 (*

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try
 With dmInvCtrl do
 Begin
  cds_CreateInvs.Filter   := 'Inventera = 1 ' ;
  cds_CreateInvs.Filtered := True ;
  Try

   cds_CreateInvs.First ;
   While cds_CreateInvs.RecordCount > 0 do
   Begin
    if cds_CreateInvsIntVerk.AsInteger = 1 then
     cds_CreateInvs.Filter   := 'Inventera = 1 AND PIPNo = ' + cds_CreateInvsPIPNo.AsString
      else
       cds_CreateInvs.Filter   := 'Inventera = 1 AND LIPNo = ' + cds_CreateInvsLIPNo.AsString ;
    CreateInventering ;
    cds_CreateInvs.Filter   := 'Inventera = 1 ' ;
//    cds_CreateInvs.Next ;
   End ;//While

  Finally
   cds_CreateInvs.Filtered  := False ;
  End ;
 End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;      *)
end;


procedure TfInvCreateManyCtrlList.CreateInventering ;
Begin
 //1) Create cds_InvCtrlGrp
 //2) Create cds_InvCtrl_LagerStallen
 //3) Create cds_InvCtrlMetod
 //if verk then add all LG to cds_InvCtrlMetod for selected LS
 //Then go throug as usual
 With dmInvCtrl do
 Begin
  cds_InvCtrlGrp.Insert ;
  cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
  cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp           := DateTimeToSQLTimeStamp(deMaxDatum.Date) ;
  cds_InvCtrlGrpOwnerNo.AsInteger                 := cds_InvenSETLipOwnerNo.AsInteger ;//ThisUser.CompanyNo ;
  cds_InvCtrlGrpVerkNo.AsInteger                  := cds_InvenSETLipOwnerNo.AsInteger ;//ThisUser.CompanyNo ;
  cds_InvCtrlGrpStatus.AsInteger                  := 1 ;
//  if cds_CreateInvsIntVerk.AsInteger = 1 then
//  cds_InvCtrlGrpNamn.AsString                     := TRIM(cds_CreateInvsLS.AsString)
//  else
  cds_InvCtrlGrpNamn.AsString                     := TRIM(cds_InvenSETLipLagerstalle.AsString) + '/' + TRIM(cds_InvenSETLipLagergrupp.AsString) ;

  cds_InvCtrlGrp.Post ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  cds_InvCtrl_LagerStallen.Insert ;
  cds_InvCtrl_LagerStallenPhysicalInventoryPointNo.AsInteger  := cds_InvenSETLipPIPNo.AsInteger ;
  cds_InvCtrl_LagerStallenOwnerName.AsString                  := cds_InvenSETLipOwnerName.AsString ;
  cds_InvCtrl_LagerStallen.Post ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

//  if cds_CreateInvsIntVerk.AsInteger = 1 then
  StatusBar1.SimpleText := 'Skapar inventering för ' + cds_InvenSETLipOwnerName.AsString + ' ' + cds_InvenSETLipLagerstalle.AsString + '/' + cds_InvenSETLipLagergrupp.AsString ;
  Application.ProcessMessages ;

  AddAllLGToInventering ;

  Add_IC_GroupNo_To_Inven_Al_VW(cds_InvCtrlSetIC_SETNo.AsInteger, cds_InvCtrlGrpIC_GrpNo.AsInteger) ;
//    else
//     AddSelectedLGToInventering ;

  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  if cds_InvCtrlGrp.ChangeCount > 0 then
   cds_InvCtrlGrp.ApplyUpdates(0) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  if cds_InvCtrl_LagerStallen.ChangeCount > 0 then
   cds_InvCtrl_LagerStallen.ApplyUpdates(0) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  if cds_InvCtrlMetod.ChangeCount > 0 then
   cds_InvCtrlMetod.ApplyUpdates(0) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  SkapaKontrollistor ;
 End ;
End ;

procedure TfInvCreateManyCtrlList.deEndPeriodExit(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if cds_InvCtrlSet.State in [dsEdit, dsInsert] then
   cds_InvCtrlSet.Post ;
 End ;//With
end;

procedure TfInvCreateManyCtrlList.deMaxDatumExit(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if cds_InvCtrlSet.State in [dsEdit, dsInsert] then
   cds_InvCtrlSet.Post ;
 End ;//With
end;

procedure TfInvCreateManyCtrlList.deStartPeriodExit(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if cds_InvCtrlSet.State in [dsEdit, dsInsert] then
   cds_InvCtrlSet.Post ;
 End ;//With
end;

(*
procedure TfInvCreateManyCtrlList.CreateInventering ;
Begin
 //1) Create cds_InvCtrlGrp
 //2) Create cds_InvCtrl_LagerStallen
 //3) Create cds_InvCtrlMetod
 //if verk then add all LG to cds_InvCtrlMetod for selected LS
 //Then go throug as usual
 With dmInvCtrl do
 Begin
  cds_InvCtrlGrp.Insert ;
  cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
  cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp           := DateTimeToSQLTimeStamp(deMaxDatum.Date) ;
  cds_InvCtrlGrpOwnerNo.AsInteger                 := cds_CreateInvsOwnerNo.AsInteger ;//ThisUser.CompanyNo ;
  cds_InvCtrlGrpVerkNo.AsInteger                  := cds_CreateInvsOwnerNo.AsInteger ;//ThisUser.CompanyNo ;
  cds_InvCtrlGrpStatus.AsInteger                  := 1 ;
  if cds_CreateInvsIntVerk.AsInteger = 1 then
  cds_InvCtrlGrpNamn.AsString                     := TRIM(cds_CreateInvsLS.AsString)
  else
  cds_InvCtrlGrpNamn.AsString                     := TRIM(cds_CreateInvsLS.AsString) + '/' + TRIM(cds_CreateInvsLG.AsString) ;

  cds_InvCtrlGrp.Post ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  cds_InvCtrl_LagerStallen.Insert ;
  cds_InvCtrl_LagerStallenPhysicalInventoryPointNo.AsInteger  := cds_CreateInvsPIPNo.AsInteger ;
  cds_InvCtrl_LagerStallenOwnerName.AsString                  := cds_CreateInvsÄgare.AsString ;
  cds_InvCtrl_LagerStallen.Post ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

//  if cds_CreateInvsIntVerk.AsInteger = 1 then
  StatusBar1.SimpleText := 'Skapar inventering för ' + cds_CreateInvsÄgare.AsString + ' ' + cds_CreateInvsLS.AsString + '/' + cds_CreateInvsLG.AsString ;
  Application.ProcessMessages ;

  AddAllLGToInventering ;
//    else
//     AddSelectedLGToInventering ;

  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  if cds_InvCtrlGrp.ChangeCount > 0 then
   cds_InvCtrlGrp.ApplyUpdates(0) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  if cds_InvCtrl_LagerStallen.ChangeCount > 0 then
   cds_InvCtrl_LagerStallen.ApplyUpdates(0) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  if cds_InvCtrlMetod.ChangeCount > 0 then
   cds_InvCtrlMetod.ApplyUpdates(0) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  SkapaKontrollistor ;
 End ;
End ;  *)

{procedure TfInvCreateManyCtrlList.AddSelectedLGToInventering ;
Begin
 With dmInvCtrl do
 Begin
  cds_InvCtrlMetod.Insert ;
  cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger := cds_CreateInvsLIPNo.AsInteger ;
  cds_InvCtrlMetodInventeringsMetod.AsInteger       := 1 ;
  cds_InvCtrlMetodLogicalInventoryName.AsString     := cds_CreateInvsLG.AsString ;
  cds_InvCtrlMetodOwnerName.AsString                := cds_CreateInvsgare.AsString ;
  cds_InvCtrlMetodOwnerNo.AsInteger                 := cds_CreateInvsOwnerNo.AsInteger ;
  cds_InvCtrlMetodPIPNo.AsInteger                   := cds_CreateInvsPIPNo.AsInteger ;
// cds_InvCtrlMetodPIPNo
  cds_InvCtrlMetod.Post ;
 End ;//with
End ;}

procedure TfInvCreateManyCtrlList.AddAllLGToInventering ;
Begin
 With dmInvCtrl do
 Begin
//  if cds_CreateInvsIntVerk.AsInteger = 1 then
//   cds_CreateInvs.Filter   := 'PIPNo = ' + cds_InvenSETLipPIPNo.AsString
//    else
//     cds_InvenSETLip.Filter   := 'LIPNo = ' + cds_InvenSETLipLIPNo.AsString ;
//  cds_InvenSETLip.First ;
//  While not cds_InvenSETLip.Eof do
//  Begin
   cds_InvCtrlMetod.Insert ;
   cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger := cds_InvenSETLipLIPNo.AsInteger ;
   cds_InvCtrlMetodInventeringsMetod.AsInteger       := 1 ;
   cds_InvCtrlMetodLogicalInventoryName.AsString     := cds_InvenSETLipLagerGrupp.AsString ;
   cds_InvCtrlMetodOwnerName.AsString                := cds_InvenSETLipOwnerName.AsString ;
   cds_InvCtrlMetodOwnerNo.AsInteger                 := cds_InvenSETLipOwnerNo.AsInteger ;
   cds_InvCtrlMetodPIPNo.AsInteger                   := cds_InvenSETLipPIPNo.AsInteger ;
   cds_InvCtrlMetod.Post ;

 {  cds_CreateInvs.Edit ;
   cds_CreateInvsInventera.AsInteger              := cds_InvCtrlGrpIC_grpno.AsInteger;
   cds_CreateInvsInvNr.AsInteger                  := cds_InvCtrlGrpIC_grpno.AsInteger;
   cds_CreateInvsInventeringsdatum.AsSQLTimeStamp := cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp ;
   cds_CreateInvsStatus.AsInteger                 := 1 ;
   cds_CreateInvs.Post ;
   cds_CreateInvs.Next ; }
//  End ;
 End ;//with
End ;

procedure TfInvCreateManyCtrlList.acPriceGroupsExecute(Sender: TObject);
var fCreateSicPriceGroups : TfCreateSicPriceGroups;
begin
 With dmInvCtrl do
 Begin
   fCreateSicPriceGroups  := TfCreateSicPriceGroups.Create(nil) ;
   try
    fCreateSicPriceGroups.OwnerNo           := cds_CreateInvsOwnerNo.AsInteger ;
    fCreateSicPriceGroups.IC_grpno          := cds_CreateInvsInvNr.AsInteger ;
    fCreateSicPriceGroups.IC_SETno          := cds_InvCtrlSetIC_SETNo.AsInteger ;
    fCreateSicPriceGroups.Inventeringsdatum := cds_CreateInvsInventeringsdatum.AsSQLTimeStamp ;
    fCreateSicPriceGroups.Namn              := cds_CreateInvsLG.AsString ;
    fCreateSicPriceGroups.ShowModal ;
   finally
    FreeAndNil(fCreateSicPriceGroups) ;
   end;
 End;
end;

procedure TfInvCreateManyCtrlList.acPrintExecute(Sender: TObject);
begin
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Inventeringar/lager') ;
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
end;

procedure TfInvCreateManyCtrlList.acExportInventoryExecute(Sender: TObject);
//var fInventeringsRapport  : TfInventeringsRapport;

procedure SelectedInventeringarToExport ;
 Var i, RecIDX  : Integer ;
 RecID          : Variant ;
 ADATASET       : TDATASET;
 Save_Cursor    : TCursor;
begin
 Save_Cursor  := Screen.Cursor;
 Screen.Cursor:= crSQLWait;    { Show hourglass cursor }
 grdCreateInvsView.BeginUpdate ;
 grdCreateInvsView.DataController.BeginLocate ;
 Try
   ADataSet := grdCreateInvsView.DataController.DataSource.DataSet ;
   For I := 0 to grdCreateInvsView.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdCreateInvsView.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdCreateInvsView.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('InvNr;LIPNo', RecID,[]) ;

    dmsSystem.mtMarkedCodes.Insert ;
    dmsSystem.mtMarkedCodesPkgCodePPNo.AsInteger  := ADataSet.FieldByName('InvNr').AsInteger ;
    dmsSystem.mtMarkedCodesSSPNo.AsInteger        := ADataSet.FieldByName('LIPNo').AsInteger ;

//    dmInvCtrl.CalcInvAvgPrice(ADataSet.FieldByName('InvNr').AsInteger, ADataSet.FieldByName('LIPNo').AsInteger) ;

    dmsSystem.mtMarkedCodes.Post ;

   End ;

 Finally
  grdCreateInvsView.DataController.EndLocate ;
  grdCreateInvsView.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;


procedure LoadMemTable ;
Begin
 dmsSystem.mtMarkedCodes.Active := False ;
 dmsSystem.mtMarkedCodes.Active := True ;
End ;

//procedure TfInvCreateManyCtrlList.acExportInventoryExecute(Sender: TObject);
begin
  if (not  Assigned(fInventeringsRapport) )  then
  Begin
     fInventeringsRapport := TfInventeringsRapport.Create(Nil) ;
     LoadMemTable ;
     fInventeringsRapport.CreateCo( Sender,ThisUser.CompanyNo);

     SelectedInventeringarToExport ;
     fInventeringsRapport.acExportInventoryListExecute(Sender) ;
//    fInventeringsRapport.ManualDock(frmMain.panelBase, nil, alBottom) ;
//     fInventeringsRapport.Parent := panelBase;
     fInventeringsRapport.Show;
//     SelectedInventeringarToExport ;
//     if fInventeringsRapport.ccbAT.Visible then
//      fInventeringsRapport.ccbAT.SetFocus
//       else
//        fInventeringsRapport.eAT.SetFocus ;
//    Application.ProcessMessages ;
//    fInventeringsRapport.Height := fInventeringsRapport.Height - 2 ;
    End
    else
    begin
//     fInventeringsRapport.Parent := panelBase;
     LoadMemTable ;
     fInventeringsRapport.Show;
  End ;

end;


procedure TfInvCreateManyCtrlList.acExportToExcelExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
  FileName: String ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 SaveDialog2.Filter := 'Excel files (*.xls)|*.xls';
 SaveDialog2.DefaultExt:= 'xls';
 SaveDialog2.InitialDir:= 'H:\' ;
 if SaveDialog2.Execute then
 Begin
  FileName:= SaveDialog2.FileName ;

  Try
  ExportGridToExcel(FileName, grdCreateInvs, False, False, True,'xls');
  ShowMessage('Tabell exporterad till Excel fil '+FileName);
  Except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  End ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfInvCreateManyCtrlList.acNewInvenSETExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_InvCtrlSet.Insert ;
  cds_InvCtrlSet.Post ;
 End ;//With
end;

procedure TfInvCreateManyCtrlList.acOpenInvExecute(Sender: TObject);
begin
 ModalResult  := mrOK ;
end;

procedure TfInvCreateManyCtrlList.acOpenInvUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acOpenInv.Enabled  := (cds_CreateInvs.Active)
  and (cds_CreateInvsStatus.AsInteger <> -1) ;
 End ;//With
end;

procedure TfInvCreateManyCtrlList.aUpdateAvgPriceExecute(Sender: TObject);
begin
 if grdCreateInvsView.Controller.SelectedRecordCount = 0 then
  grdCreateInvsView.Controller.SelectAllRecords ;
 SelectedInventeringar ;
 acRefreshExecute(Sender) ;
end;

procedure TfInvCreateManyCtrlList.SelectedInventeringar ;
 Var i, RecIDX  : Integer ;
 RecID          : Variant ;
 ADATASET       : TDATASET;
 Save_Cursor    : TCursor;
begin
 Save_Cursor  := Screen.Cursor;
 Screen.Cursor:= crSQLWait;    { Show hourglass cursor }
 grdCreateInvsView.BeginUpdate ;
 grdCreateInvsView.DataController.BeginLocate ;
 Try
   ADataSet := grdCreateInvsView.DataController.DataSource.DataSet ;
   For I := 0 to grdCreateInvsView.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdCreateInvsView.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdCreateInvsView.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('InvNr;LIPNo', RecID,[]) ;

    //Uppdatera medelpris
    dmInvCtrl.CalcInvAvgPrice(ADataSet.FieldByName('InvNr').AsInteger, ADataSet.FieldByName('LIPNo').AsInteger) ;

   End ;

 Finally
  grdCreateInvsView.DataController.EndLocate ;
  grdCreateInvsView.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfInvCreateManyCtrlList.acSetAllToBeInventeraExecute(
  Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_CreateInvs.DisableControls ;
  Try
  grdCreateInvsView.DataController.SelectAll ;
  Finally
   cds_CreateInvs.EnableControls ;
  End ;
 End ;
end;

procedure TfInvCreateManyCtrlList.MarkeradeInventeringar ;
 Var i, RecIDX  : Integer ;
 RecID          : Variant ;
 ADATASET       : TDATASET;
 Save_Cursor    : TCursor;
begin
 Save_Cursor  := Screen.Cursor;
 Screen.Cursor:= crSQLWait;    { Show hourglass cursor }
 grdCreateInvsView.BeginUpdate ;
 grdCreateInvsView.DataController.BeginLocate ;
 Try
   ADataSet := grdCreateInvsView.DataController.DataSource.DataSet ;
   For I := 0 to grdCreateInvsView.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdCreateInvsView.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdCreateInvsView.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('InvNr;LIPNo', RecID,[]) ;
    if ADataSet.FieldByName('Inventera').AsInteger > 1 then
    Begin
     FDm_SelectedRows.Insert ;
     FDm_SelectedRowsInventeringsNr.AsInteger   := ADataSet.FieldByName('Inventera').AsInteger ;
     FDm_SelectedRowsLIPNo.AsInteger            := ADataSet.FieldByName('LIPNo').AsInteger ;
     FDm_SelectedRowsStatus.AsInteger           := ADataSet.FieldByName('Status').AsInteger ;
     FDm_SelectedRows.Post ;
    End ;

  //  dmInvCtrl.CalcInvAvgPrice(ADataSet.FieldByName('InvNr').AsInteger, ADataSet.FieldByName('LIPNo').AsInteger) ;

   End ;

 Finally
  grdCreateInvsView.DataController.EndLocate ;
  grdCreateInvsView.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfInvCreateManyCtrlList.MarkeradeInventeringarOnlyTakeNonInventerade ;
 Var i, RecIDX  : Integer ;
 RecID          : Variant ;
 ADATASET       : TDATASET;
 Save_Cursor    : TCursor;
begin
 Save_Cursor  := Screen.Cursor;
 Screen.Cursor:= crSQLWait;    { Show hourglass cursor }
 grdCreateInvsView.BeginUpdate ;
 grdCreateInvsView.DataController.BeginLocate ;
 Try
   ADataSet := grdCreateInvsView.DataController.DataSource.DataSet ;
   For I := 0 to grdCreateInvsView.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdCreateInvsView.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdCreateInvsView.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('InvNr;LIPNo', RecID,[]) ;
    if ADataSet.FieldByName('Inventera').AsInteger = 0 then
    Begin
     FDm_SelectedRows.Insert ;
     FDm_SelectedRowsInventeringsNr.AsInteger   := ADataSet.FieldByName('Inventera').AsInteger ;
     FDm_SelectedRowsLIPNo.AsInteger            := ADataSet.FieldByName('LIPNo').AsInteger ;
     FDm_SelectedRows.Post ;
    End ;

  //  dmInvCtrl.CalcInvAvgPrice(ADataSet.FieldByName('InvNr').AsInteger, ADataSet.FieldByName('LIPNo').AsInteger) ;

   End ;

 Finally
  grdCreateInvsView.DataController.EndLocate ;
  grdCreateInvsView.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfInvCreateManyCtrlList.acSetMarkedAsConfirmedExecute(
  Sender: TObject);
begin
 FDm_SelectedRows.Active  := False ;
 FDm_SelectedRows.Active  := True ;
 Try
 MarkeradeInventeringar ;

 FDm_SelectedRows.First ;
 While not FDm_SelectedRows.Eof do
 Begin
  dmInvCtrl.SetInvStatus(FDm_SelectedRowsInventeringsNr.AsInteger, 2) ;
  FDm_SelectedRows.Next ;
 End ;
 acRefreshExecute(Sender) ;
 Finally
  FDm_SelectedRows.Active  := False ;
 End ;
end;

procedure TfInvCreateManyCtrlList.acSetMallExecute(Sender: TObject);
var fSetMall: TfSetMall;
begin
 fSetMall := TfSetMall.Create(nil) ;
 Try
  dmInvCtrl.sp_SetMall.Active := False ;
  dmInvCtrl.sp_SetMall.Active := True ;
  fSetMall.ShowModal ;
 Finally
  dmInvCtrl.sp_SetMall.Active := False ;
  FreeAndNil(fSetMall) ;
 End;
end;

procedure TfInvCreateManyCtrlList.acSetMarkedAsConfirmedAndPriceConfirmedExecute(
  Sender: TObject);
begin
 FDm_SelectedRows.Active  := False ;
 FDm_SelectedRows.Active  := True ;
 Try
 MarkeradeInventeringar ;

 FDm_SelectedRows.First ;
 While not FDm_SelectedRows.Eof do
 Begin
  dmInvCtrl.SetInvStatus(FDm_SelectedRowsInventeringsNr.AsInteger, 3) ;
  FDm_SelectedRows.Next ;
 End ;
 acRefreshExecute(Sender) ;
 Finally
  FDm_SelectedRows.Active  := False ;
 End ;
end;

procedure TfInvCreateManyCtrlList.acSetMarkedRowsToBeInventeradeExecute(
  Sender: TObject);
begin
 With dmInvCtrl do
 Begin
 FDm_SelectedRows.Active  := False ;
 FDm_SelectedRows.Active  := True ;
 Try
 cds_CreateInvs.DisableControls ;
 MarkeradeInventeringarOnlyTakeNonInventerade ;


 FDm_SelectedRows.First ;
 While not FDm_SelectedRows.Eof do
 Begin
  if cds_CreateInvs.Locate('InvNr;LIPNo', VarArrayof([FDm_SelectedRowsInventeringsNr.AsInteger, FDm_SelectedRowsLIPNo.AsInteger]), []) then
  Begin
   cds_CreateInvs.Edit ;
   cds_CreateInvsInventera.AsInteger := 1 ;
   cds_CreateInvs.Post ;
  End ;
  FDm_SelectedRows.Next ;
 End ;

 Finally
  cds_CreateInvs.EnableControls ;
  FDm_SelectedRows.Active  := False ;
 End ;
 End ;
end;

procedure TfInvCreateManyCtrlList.acCreateResultExecute(Sender: TObject);
begin
 FDm_SelectedRows.Active  := False ;
 FDm_SelectedRows.Active  := True ;
 Try
 MarkeradeInventeringar ;

 FDm_SelectedRows.First ;
 While not FDm_SelectedRows.Eof do
 Begin
  if FDm_SelectedRowsStatus.AsInteger = 1 then
  Begin
   dmInvCtrl.Open_Inventering(FDm_SelectedRowsInventeringsNr.AsInteger) ;
   if dmInvCtrl.cds_InvCtrlGrp.RecordCount > 0 then
   dmInvCtrl.CreateResultList ;
  End ; 
  FDm_SelectedRows.Next ;
 End ;
 acRefreshExecute(Sender) ;
 Finally
  FDm_SelectedRows.Active  := False ;
 End ;
end;

end.
