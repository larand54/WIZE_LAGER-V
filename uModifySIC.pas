unit uModifySIC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxPC, cxControls, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ActnList, StdCtrls, Buttons, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, cxCalendar, cxDBEdit, cxLabel, cxLookAndFeels,
  cxDBLabel, ImgList, cxGroupBox, cxRadioGroup,
  SqlExpr, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxNavigator,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxBarBuiltInMenu, siComp,
  siLngLnk, System.Actions;

type
  TfModifySIC = class(TForm)
    pgPriceListGuide: TcxPageControl;
    tsInventeringar: TcxTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    tsSICLIP: TcxTabSheet;
    Panel4: TPanel;
    ActionList1: TActionList;
    acInsertSelectedInventering: TAction;
    acRemoveSelectedInventering: TAction;
    Panel6: TPanel;
    cxLookAndFeelController1: TcxLookAndFeelController;
    acNextPage: TAction;
    acPreviousPage: TAction;
    acSave: TAction;
    acCancelChanges: TAction;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    SpeedButton2: TSpeedButton;
    imglistActions: TImageList;
    SpeedButton1: TSpeedButton;
    Panel19: TPanel;
    Panel20: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grdSICLIPDBTableView1: TcxGridDBTableView;
    grdSICLIPLevel1: TcxGridLevel;
    grdSICLIP: TcxGrid;
    grdSICLIPDBTableView1Sic_No: TcxGridDBColumn;
    grdSICLIPDBTableView1LIPNo: TcxGridDBColumn;
    grdSICLIPDBTableView1LIPGroupNo: TcxGridDBColumn;
    grdSICLIPDBTableView1Lager: TcxGridDBColumn;
    grdSICLIPDBTableView1PercentShare: TcxGridDBColumn;
    grdSICLIPDBTableView1InventeratNM3: TcxGridDBColumn;
    grdSICLIPDBTableView1CalcNM3: TcxGridDBColumn;
    acSplitLIP: TAction;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    acMerge: TAction;
    BitBtn4: TBitBtn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Panel5: TPanel;
    Panel7: TPanel;
    grdInventeringar: TcxGrid;
    grdInventeringarDBTableView1: TcxGridDBTableView;
    grdInventeringarDBTableView1INVENTERINGSNR: TcxGridDBColumn;
    grdInventeringarDBTableView1INVENTERINGSDATUM: TcxGridDBColumn;
    grdInventeringarDBTableView1STATUS: TcxGridDBColumn;
    grdInventeringarDBTableView1MAXDATUM: TcxGridDBColumn;
    grdInventeringarDBTableView1NAMN: TcxGridDBColumn;
    grdInventeringarLevel1: TcxGridLevel;
    Panel8: TPanel;
    Panel9: TPanel;
    grdSelectedInvs: TcxGrid;
    grdSelectedInvsDBTableView1: TcxGridDBTableView;
    grdSelectedInvsDBTableView1Sic_No: TcxGridDBColumn;
    grdSelectedInvsDBTableView1IC_grpno: TcxGridDBColumn;
    grdSelectedInvsDBTableView1INVENTERINGSDATUM: TcxGridDBColumn;
    grdSelectedInvsDBTableView1MAXDATUM: TcxGridDBColumn;
    grdSelectedInvsDBTableView1NAMN: TcxGridDBColumn;
    grdSelectedInvsLevel1: TcxGridLevel;
    siLangLinked_fModifySIC: TsiLangLinked;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure pgPriceListGuidePageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure acNextPageExecute(Sender: TObject);
    procedure acPreviousPageExecute(Sender: TObject);
    procedure acPreviousPageUpdate(Sender: TObject);
    procedure acNextPageUpdate(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure acInsertSelectedInventeringExecute(Sender: TObject);
    procedure acSplitLIPExecute(Sender: TObject);
    procedure acRemoveSelectedInventeringExecute(Sender: TObject);
    procedure acMergeExecute(Sender: TObject);
    procedure acMergeUpdate(Sender: TObject);
    procedure acSplitLIPUpdate(Sender: TObject);
  private
    { Private declarations }
    Function  DataSaved : Boolean ;
    Procedure Save ;
    procedure Merge(const LipGroupNo, Lager : String) ;
  public
    { Public declarations }
    SicNo : Integer ;
  end;

//var fModifySIC: TfModifySIC ;

implementation

uses VidaUser , dmcInvCtrl, uLipForSic;

{$R *.dfm}
Procedure TfModifySIC.Save ;
Begin
 With dmInvCtrl do
 Begin
  SicNo := cds_SicHdrSic_No.AsInteger ;
  if cds_Sic_IC_grp.State in [dsEdit, dsInsert] then
   cds_Sic_IC_grp.Post ;
  if cds_Sic_IC_grp.ChangeCount > 0 then
  Begin
   cds_Sic_IC_grp.ApplyUpdates(0) ;
   cds_Sic_IC_grp.CommitUpdates ;
  End;

  if cds_Sic_LIP.State in [dsEdit, dsInsert] then
   cds_Sic_LIP.Post ;
  if cds_Sic_LIP.ChangeCount > 0 then
  Begin
   cds_Sic_LIP.ApplyUpdates(0) ;
   cds_Sic_LIP.CommitUpdates ;
  End;
 End ;
End ;

Function TfModifySIC.DataSaved : Boolean ;
Begin
 Result:= True ;
 with dmInvCtrl do
 Begin
   if cds_Sic_IC_grp.State in [dsEdit, dsInsert] then
    Result:= False ;
   if cds_Sic_IC_grp.ChangeCount > 0 then
    Result:= False ;
 End ;
End ;

(*

procedure TfModifySIC.CopyGradeToGroup(Sender: TObject);
 Var  i, RecIDX   : Integer ;
      RecID       : Variant ;
      ADATASET    : TDATASET;
      Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 with dmInvCtrl do
 Begin
  grdAvailGradesDBTableView1.BeginUpdate ;
  grdAvailGradesDBTableView1.DataController.BeginLocate ;
  grdSelectGradesDBTableView1.BeginUpdate ;
  Try
   ADataSet := grdAvailGradesDBTableView1.DataController.DataSource.DataSet ;

   For I := 0 to grdAvailGradesDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdAvailGradesDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdAvailGradesDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('GradeNo',RecID,[]) ;

    cds_SelectProd.Insert ;
    cds_SelectProdGradeNo.AsInteger   := ADataSet.FieldByName('GradeNo').AsInteger ;
    cds_SelectProdGradeName.AsString  := ADataSet.FieldByName('GradeName').AsString ;
    cds_SelectProd.Post ;
   End ;

  Finally
   grdSelectGradesDBTableView1.EndUpdate ;
   grdAvailGradesDBTableView1.DataController.EndLocate ;
   grdAvailGradesDBTableView1.EndUpdate ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;

 End ;//with
end;

procedure TfModifySIC.CopyLengthsToGroup(Sender: TObject);
 Var  i, RecIDX   : Integer ;
      RecID       : Variant ;
      ADATASET    : TDATASET;
      Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 with dmInvCtrl do
 Begin
  grdAvailLengthsDBTableView1.BeginUpdate ;
  grdAvailLengthsDBTableView1.DataController.BeginLocate ;
  grdSelectedLengthsDBTableView1.BeginUpdate ;
  Try
   ADataSet := grdAvailLengthsDBTableView1.DataController.DataSource.DataSet ;

   For I := 0 to grdAvailLengthsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdAvailLengthsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdAvailLengthsDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('ProductLengthNo',RecID,[]) ;

    cds_SelectLengths.Insert ;
    cds_SelectLengthsProductLengthNo.AsInteger  := ADataSet.FieldByName('ProductLengthNo').AsInteger ;
    cds_SelectLengthsALMM.AsFloat               := ADataSet.FieldByName('ALMM').AsFloat ;
    cds_SelectLengthsFOT.AsFloat                := ADataSet.FieldByName('FOT').AsFloat ;
    cds_SelectLengthsTUM.AsString               := ADataSet.FieldByName('TUM').AsString ;
    cds_SelectLengths.Post ;
   End ;

  Finally
   grdSelectedLengthsDBTableView1.EndUpdate ;
   grdAvailLengthsDBTableView1.DataController.EndLocate ;
   grdAvailLengthsDBTableView1.EndUpdate ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;

procedure TfModifySIC.RemoveFromPGGroup(Sender: TObject);
 Var  i, RecIDX   : Integer ;
      RecID       : Variant ;
      ADATASET    : TDATASET;
      Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 with dmInvCtrl do
 Begin
//  grdAvailPGDBTableView1.BeginUpdate ;
//  grdSelectedPGDBTableView1.DataController.BeginLocate ;
//  grdSelectedPGDBTableView1.BeginUpdate ;
  cds_SelectPG.DisableControls ;
  Try
//   ADataSet := grdSelectedPGDBTableView1.DataController.DataSource.DataSet ;
   For I := 0 to grdSelectedPGDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdSelectedPGDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdSelectedPGDBTableView1.DataController.GetRecordId(RecIdx) ;
//    ADataSet.Locate('ProductGroupNo',RecID,[]) ;
//    ADataSet.Delete ;
    if cds_SelectPG.Locate('ProductGroupNo',RecID,[]) then
     cds_SelectPG.Delete ;
   End ;

 Finally
//  grdSelectedPGDBTableView1.EndUpdate ;
//  grdSelectedPGDBTableView1.DataController.EndLocate ;
//  grdAvailPGDBTableView1.EndUpdate ;
  cds_SelectPG.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfModifySIC.RemoveGradeFromGroup(Sender: TObject);
 Var  i, RecIDX   : Integer ;
      RecID       : Variant ;
      ADATASET    : TDATASET;
      Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 with dmInvCtrl do
 Begin
//  grdSelectGradesDBTableView1.BeginUpdate ;
//  grdSelectGradesDBTableView1.DataController.BeginLocate ;
//  grdAvailGradesDBTableView1.BeginUpdate ;
  cds_SelectProd.DisableControls ;
  Try
//   ADataSet := grdSelectGradesDBTableView1.DataController.DataSource.DataSet ;

   For I := 0 to grdSelectGradesDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdSelectGradesDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdSelectGradesDBTableView1.DataController.GetRecordId(RecIdx) ;
    if cds_SelectProd.Locate('GradeNo',RecID,[]) then
     cds_SelectProd.Delete ;
//    ADataSet.Locate('GradeNo',RecID,[]) ;
//    ADataSet.Delete ;
   End ;

  Finally
//   grdAvailGradesDBTableView1.EndUpdate ;
//   grdSelectGradesDBTableView1.DataController.EndLocate ;
//   grdSelectGradesDBTableView1.EndUpdate ;
   cds_SelectProd.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;

 End ;//with
end;

procedure TfModifySIC.RemoveLengthsFromGroup(Sender: TObject);
 Var  i, RecIDX   : Integer ;
      RecID       : Variant ;
      ADATASET    : TDATASET;
      Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 with dmInvCtrl do
 Begin
  cds_SelectLengths.DisableControls ;
  Try
   For I := 0 to grdSelectedLengthsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdSelectedLengthsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdSelectedLengthsDBTableView1.DataController.GetRecordId(RecIdx) ;
    if cds_SelectLengths.Locate('ProductLengthNo',RecID,[]) then
     cds_SelectLengths.Delete ;
   End ;

  Finally
   cds_SelectLengths.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;
*)

procedure TfModifySIC.FormCreate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  SicNo := 0 ;
 End ;
end;

procedure TfModifySIC.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var MessageIndex : Word ;
begin
 CanClose:= True ;
 if DataSaved = False then
 Begin
  MessageIndex:= MessageDlg('Ändringar är inte sparade, vill du spara?',
  mtConfirmation, [mbYes, mbNo, mbCancel], 0);
  Case MessageIndex of
   mrYes     : Begin

               End ;
   mrNo      :  ;
   mrCancel  : CanClose:= False ;
  End ;
 End ;

end;

procedure TfModifySIC.FormShow(Sender: TObject);
begin
 With dmInvCtrl do
 Begin

 End ;
end;

procedure TfModifySIC.pgPriceListGuidePageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
 With dmInvCtrl do
 Begin
  if NewPage = tsSICLIP then
  Begin
   if DataSaved = False then
   Begin
    Save ;
    sq_GenSic_Lip.ParamByName('Sic_No').AsInteger:= cds_SicHdrSic_No.AsInteger ;
    sq_GenSic_Lip.ExecSQL ;
    cds_Sic_LIP.Active:= False ;
    cds_Sic_LIP.Active:= True ;
   End ;
  End ;
 End ;
end;

procedure TfModifySIC.acNextPageExecute(Sender: TObject);
begin
  if pgPriceListGuide.ActivePage = tsInventeringar then
   pgPriceListGuide.ActivePage:= tsSICLIP ;
end;

procedure TfModifySIC.acPreviousPageExecute(Sender: TObject);
begin
  if pgPriceListGuide.ActivePage = tsSICLIP then
   pgPriceListGuide.ActivePage:= tsInventeringar ;
end;

procedure TfModifySIC.acPreviousPageUpdate(Sender: TObject);
begin
 acPreviousPage.Enabled:= pgPriceListGuide.ActivePage <> tsInventeringar ;
end;

procedure TfModifySIC.acNextPageUpdate(Sender: TObject);
begin
 acNextPage.Enabled:= pgPriceListGuide.ActivePage <> tsSICLIP ;
end;

procedure TfModifySIC.acSaveExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  Save ;
//  ModalResult:= mrOK ;
  Close ;
 End ;
end;

procedure TfModifySIC.acCancelChangesExecute(Sender: TObject);
begin
 if MessageDlg('Vill du avbryta?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmInvCtrl do
 Begin
  if SicNo = 0 then
  Begin
   cds_Sic_IC_grp.Active := False ;
   cds_SicHdr.Delete ;
   if cds_SicHdr.ChangeCount > 0 then
   Begin
    cds_SicHdr.ApplyUpdates(0) ;
    cds_SicHdr.CommitUpdates ;
   End;
   cds_Sic_IC_grp.Active := True ;
  End ; 

  SicNo := 0 ;
  ModalResult:= mrCancel ;
  Close ;
 End ;
end;

procedure TfModifySIC.SpeedButton1Click(Sender: TObject);
begin
 With dmInvCtrl do
 Begin

 End ;
end;

procedure TfModifySIC.acInsertSelectedInventeringExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_Sic_IC_grp.Insert ;
  cds_Sic_IC_grpIC_grpno.AsInteger                := cds_InvCtrlListSICINVENTERINGSNR.AsInteger ;
  cds_Sic_IC_grpINVENTERINGSDATUM.AsSQLTimeStamp  := cds_InvCtrlListSICINVENTERINGSDATUM.AsSQLTimeStamp ;
  cds_Sic_IC_grpMAXDATUM.AsSQLTimeStamp           := cds_InvCtrlListSICMAXDATUM.AsSQLTimeStamp ;
  cds_Sic_IC_grpNAMN.AsString                     := cds_InvCtrlListSICNAMN.AsString ;

  cds_Sic_IC_grp.Post ;
 End ;
end;

procedure TfModifySIC.acSplitLIPExecute(Sender: TObject);
var  fLipForSic: TfLipForSic;
     flip : Array[0..7] of Variant ;
     x : Integer ;
begin
 With dmInvCtrl do
 Begin
  cds_LIP.Active:= False ;
  cds_LIP.ParamByName('OwnerNo').AsInteger:= cds_SicHdrVerkNo.AsInteger ;
  cds_LIP.Active:= True ;
  fLipForSic:= TfLipForSic.Create(nil);
  try
   if fLipForSic.ShowModal = mrOK then
   Begin
    For x := 0 to 7 do
     Flip[x]:= cds_Sic_LIP.Fields.Fields[x].AsVariant ;

    cds_Sic_LIP.Insert ;
    For x := 0 to 7 do
     cds_Sic_LIP.Fields.Fields[x].AsVariant:= Flip[x] ;
    cds_Sic_LIPLIPGroupNo.AsString  := cds_LIPKOD.AsString ;
    cds_Sic_LIPLIPNo.AsInteger      := cds_LIPLIPNo.AsInteger ;
    cds_Sic_LIPLager.AsString       := cds_LIPLAGER.AsString ;
    cds_Sic_LIP.Post ;
    Save ;
   End ;
  finally
   FreeAndNil(fLipForSic) ;
  end;
  cds_LIP.Active:= False ;
 end ;//with..
end;

procedure TfModifySIC.acRemoveSelectedInventeringExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_Sic_IC_grp.Delete ;
  Save ;
 End ;
end;

procedure TfModifySIC.Merge(const LipGroupNo, Lager : String) ;
 Var  i, RecIDX   : Integer ;
      RecID       : Variant ;
      ADATASET    : TDATASET;
      Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 with dmInvCtrl do
 Begin
  grdSICLIPDBTableView1.BeginUpdate ;
  grdSICLIPDBTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdSICLIPDBTableView1.DataController.DataSource.DataSet ;
//             Sic_No;LIPNo;LIPGroupNo
   For I := 1 to grdSICLIPDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdSICLIPDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdSICLIPDBTableView1.DataController.GetRecordId(RecIdx) ;
    if ADataSet.Locate('Sic_No;LIPNo;LIPGroupNo', RecID, []) then
    Begin
     ADataSet.Edit ;
     ADataSet.FieldByName('LIPGroupNo').AsString  := LIPGroupNo ;
     ADataSet.FieldByName('Lager').AsString       := Lager ;
     ADataSet.Post ;
    End ;

   End ;

  Finally
   grdSICLIPDBTableView1.DataController.EndLocate ;
   grdSICLIPDBTableView1.EndUpdate ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;

 End ;//with
end;

procedure TfModifySIC.acMergeExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  Merge(cds_Sic_LIPLIPGroupNo.AsString, cds_Sic_LIPLager.AsString) ;
  Save ;
 end ;//with..
end;

procedure TfModifySIC.acMergeUpdate(Sender: TObject);
begin
 acMerge.Enabled:= grdSICLIPDBTableView1.Controller.SelectedRecordCount > 1 ;
end;

procedure TfModifySIC.acSplitLIPUpdate(Sender: TObject);
begin
  acSplitLIP.Enabled:= grdSICLIPDBTableView1.Controller.SelectedRecordCount = 1 ;
end;

End.
