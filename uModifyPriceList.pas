unit uModifyPriceList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxPC, cxControls, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ActnList, StdCtrls, Buttons, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, cxCalendar, cxDBEdit, cxLabel, cxLookAndFeels,
  cxDBLabel, ImgList, cxGroupBox, cxRadioGroup;

type
  TfModifyPriceList = class(TForm)
    pgPriceListGuide: TcxPageControl;
    tsPriceListHdr: TcxTabSheet;
    tsGrade: TcxTabSheet;
    tsLength: TcxTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    tsProductGroup: TcxTabSheet;
    lcCurrency: TcxDBLookupComboBox;
    lcPriceUnit: TcxDBLookupComboBox;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    acInsertSelectedPG: TAction;
    acRemoveSelectedPG: TAction;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Panel16: TPanel;
    Panel17: TPanel;
    grdAvailPGDBTableView1: TcxGridDBTableView;
    grdAvailPGLevel1: TcxGridLevel;
    grdAvailPG: TcxGrid;
    grdSelectedPGDBTableView1: TcxGridDBTableView;
    grdSelectedPGLevel1: TcxGridLevel;
    grdSelectedPG: TcxGrid;
    grdAvailPGDBTableView1ProductGroupNo: TcxGridDBColumn;
    grdAvailPGDBTableView1AT: TcxGridDBColumn;
    grdAvailPGDBTableView1AB: TcxGridDBColumn;
    grdAvailPGDBTableView1TS: TcxGridDBColumn;
    grdAvailPGDBTableView1UT: TcxGridDBColumn;
    grdAvailPGDBTableView1IMP: TcxGridDBColumn;
    grdAvailPGDBTableView1TT: TcxGridDBColumn;
    grdAvailPGDBTableView1TB: TcxGridDBColumn;
    grdSelectedPGDBTableView1ProductGroupNo: TcxGridDBColumn;
    grdSelectedPGDBTableView1AT: TcxGridDBColumn;
    grdSelectedPGDBTableView1AB: TcxGridDBColumn;
    grdSelectedPGDBTableView1TS: TcxGridDBColumn;
    grdSelectedPGDBTableView1UT: TcxGridDBColumn;
    grdSelectedPGDBTableView1IMP: TcxGridDBColumn;
    grdSelectedPGDBTableView1TT: TcxGridDBColumn;
    grdSelectedPGDBTableView1TB: TcxGridDBColumn;
    grdAvailGradesDBTableView1: TcxGridDBTableView;
    grdAvailGradesLevel1: TcxGridLevel;
    grdAvailGrades: TcxGrid;
    cxLookAndFeelController1: TcxLookAndFeelController;
    grdAvailGradesDBTableView1GradeName: TcxGridDBColumn;
    grdAvailGradesDBTableView1ProductNo: TcxGridDBColumn;
    grdSelectGradesDBTableView1: TcxGridDBTableView;
    grdSelectGradesLevel1: TcxGridLevel;
    grdSelectGrades: TcxGrid;
    grdSelectGradesDBTableView1GradeName: TcxGridDBColumn;
    grdSelectGradesDBTableView1GradeNo: TcxGridDBColumn;
    grdSelectGradesDBTableView1templateno: TcxGridDBColumn;
    acInsertSelectedGrades: TAction;
    acRemoveSelectedGrades: TAction;
    Panel18: TPanel;
    grdAvailLengthsDBTableView1: TcxGridDBTableView;
    grdAvailLengthsLevel1: TcxGridLevel;
    grdAvailLengths: TcxGrid;
    grdSelectedLengthsDBTableView1: TcxGridDBTableView;
    grdSelectedLengthsLevel1: TcxGridLevel;
    grdSelectedLengths: TcxGrid;
    lcLengthGroups: TcxDBLookupComboBox;
    grdAvailLengthsDBTableView1ProductLengthNo: TcxGridDBColumn;
    grdAvailLengthsDBTableView1ALMM: TcxGridDBColumn;
    grdAvailLengthsDBTableView1FOT: TcxGridDBColumn;
    grdAvailLengthsDBTableView1TUM: TcxGridDBColumn;
    grdSelectedLengthsDBTableView1ProductLengthNo: TcxGridDBColumn;
    grdSelectedLengthsDBTableView1ALMM: TcxGridDBColumn;
    grdSelectedLengthsDBTableView1FOT: TcxGridDBColumn;
    grdSelectedLengthsDBTableView1TUM: TcxGridDBColumn;
    acInsertSelectedLengths: TAction;
    acRemoveSelectedLengths: TAction;
    acNextPage: TAction;
    acPreviousPage: TAction;
    acSave: TAction;
    acCancelChanges: TAction;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    tePriceListName: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    ltemplateno: TcxDBLabel;
    cxLabel2: TcxLabel;
    SpeedButton2: TSpeedButton;
    imglistActions: TImageList;
    SpeedButton1: TSpeedButton;
    rgDefaultPeriod: TcxDBRadioGroup;
    procedure acInsertSelectedPGExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure pgPriceListGuidePageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure acInsertSelectedGradesExecute(Sender: TObject);
    procedure acInsertSelectedLengthsExecute(Sender: TObject);
    procedure acNextPageExecute(Sender: TObject);
    procedure acPreviousPageExecute(Sender: TObject);
    procedure acPreviousPageUpdate(Sender: TObject);
    procedure acNextPageUpdate(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acRemoveSelectedPGExecute(Sender: TObject);
    procedure acRemoveSelectedGradesExecute(Sender: TObject);
    procedure acRemoveSelectedLengthsExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure grdAvailPGDBTableView1DblClick(Sender: TObject);
    procedure grdSelectedPGDBTableView1DblClick(Sender: TObject);
    procedure grdAvailGradesDBTableView1DblClick(Sender: TObject);
    procedure grdSelectGradesDBTableView1DblClick(Sender: TObject);
    procedure grdAvailLengthsDBTableView1DblClick(Sender: TObject);
    procedure grdSelectedLengthsDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure CopyGradeToGroup(Sender: TObject);
    procedure CopyToGroup(Sender: TObject);
    procedure CopyLengthsToGroup(Sender: TObject);
    procedure LoadAvailGrades ;
    procedure RemoveFromPGGroup(Sender: TObject);
    procedure RemoveGradeFromGroup(Sender: TObject);
    procedure RemoveLengthsFromGroup(Sender: TObject);
    Function  AllSelected : Boolean ;
    Function  DataSaved : Boolean ;
  public
    { Public declarations }
  end;

//var fModifyPriceList: TfModifyPriceList;

implementation

uses dmc_marketprice, VidaUser ;

{$R *.dfm}
Function TfModifyPriceList.DataSaved : Boolean ;
Begin
 Result:= True ;
 with dm_marketprice do
 Begin
  if cds_SaveProd.ChangeCount > 0 then
   Result:= False ;
  if cds_PriceHdr.ChangeCount > 0 then
   Result:= False ;
  if cds_PriceHdr.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_SelectLengths.ChangeCount > 0 then
   Result:= False ;
  if cds_SelectPG.ChangeCount > 0 then
   Result:= False ;
  if AllSelected = False then
   Result:= True ; 
 End ;
End ;

Function TfModifyPriceList.AllSelected : Boolean ;
Begin
 with dm_marketprice do
 Begin
  if (cds_SelectPG.RecordCount = 0) or (cds_SelectProd.RecordCount = 0) or (cds_SelectLengths.RecordCount = 0) then
   Result:= False
    else
     Result:= True ;
 End ;
End ;

procedure TfModifyPriceList.CopyToGroup(Sender: TObject);
 Var i, RecIDX   : Integer ;
     RecID       : Variant ;
     ADATASET    : TDATASET;
     Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 with dm_marketprice do
 Begin
  grdAvailPGDBTableView1.BeginUpdate ;
  grdAvailPGDBTableView1.DataController.BeginLocate ;
  grdSelectedPGDBTableView1.BeginUpdate ;
  Try
   ADataSet := grdAvailPGDBTableView1.DataController.DataSource.DataSet ;
   For I := 0 to grdAvailPGDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdAvailPGDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdAvailPGDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('ProductGroupNo',RecID,[]) ;

    cds_SelectPG.Insert ;
    cds_SelectPGProductGroupNo.AsInteger  := ADataSet.FieldByName('ProductGroupNo').AsInteger ;
    cds_SelectPGAT.AsFloat                := ADataSet.FieldByName('AT').AsFloat ;
    cds_SelectPGAB.AsFloat                := ADataSet.FieldByName('AB').AsFloat ;
    cds_SelectPGTS.AsString               := ADataSet.FieldByName('TS').AsString ;
    cds_SelectPGUT.AsString               := ADataSet.FieldByName('UT').AsString ;
    cds_SelectPGIMP.AsString              := ADataSet.FieldByName('IMP').AsString ;
    cds_SelectPGTT.AsString               := ADataSet.FieldByName('TT').AsString ;
    cds_SelectPGTB.AsString               := ADataSet.FieldByName('TB').AsString ;
    cds_SelectPG.Post ;
   End ;

 Finally
  grdSelectedPGDBTableView1.EndUpdate ;
  grdAvailPGDBTableView1.DataController.EndLocate ;
  grdAvailPGDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfModifyPriceList.CopyGradeToGroup(Sender: TObject);
 Var  i, RecIDX   : Integer ;
      RecID       : Variant ;
      ADATASET    : TDATASET;
      Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 with dm_marketprice do
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

procedure TfModifyPriceList.CopyLengthsToGroup(Sender: TObject);
 Var  i, RecIDX   : Integer ;
      RecID       : Variant ;
      ADATASET    : TDATASET;
      Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 with dm_marketprice do
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

procedure TfModifyPriceList.RemoveFromPGGroup(Sender: TObject);
 Var  i, RecIDX   : Integer ;
      RecID       : Variant ;
      ADATASET    : TDATASET;
      Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 with dm_marketprice do
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

procedure TfModifyPriceList.RemoveGradeFromGroup(Sender: TObject);
 Var  i, RecIDX   : Integer ;
      RecID       : Variant ;
      ADATASET    : TDATASET;
      Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 with dm_marketprice do
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

procedure TfModifyPriceList.RemoveLengthsFromGroup(Sender: TObject);
 Var  i, RecIDX   : Integer ;
      RecID       : Variant ;
      ADATASET    : TDATASET;
      Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 with dm_marketprice do
 Begin
//  grdSelectedLengthsDBTableView1.BeginUpdate ;
//  grdSelectedLengthsDBTableView1.DataController.BeginLocate ;
//  grdAvailLengthsDBTableView1.BeginUpdate ;
  cds_SelectLengths.DisableControls ;
  Try
//   ADataSet := grdSelectedLengthsDBTableView1.DataController.DataSource.DataSet ;

   For I := 0 to grdSelectedLengthsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdSelectedLengthsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdSelectedLengthsDBTableView1.DataController.GetRecordId(RecIdx) ;
//    ADataSet.Locate('ProductLengthNo',RecID,[]) ;
//    ADataSet.Delete ;
    if cds_SelectLengths.Locate('ProductLengthNo',RecID,[]) then
     cds_SelectLengths.Delete ;
   End ;

  Finally
//   grdAvailLengthsDBTableView1.EndUpdate ;
   cds_SelectLengths.EnableControls ;
//   grdSelectedLengthsDBTableView1.DataController.EndLocate ;
//   grdSelectedLengthsDBTableView1.EndUpdate ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;

procedure TfModifyPriceList.acInsertSelectedPGExecute(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  cds_AvailPG.Filtered:= False ;
  CopyToGroup(Sender) ;
  cds_AvailPG.Filtered:= True ;
 End ;
end;

procedure TfModifyPriceList.FormCreate(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  PriceTemplateModified:= False ;
  if ThisUser.UserID <> 8 then
  Begin
   pgPriceListGuide.HideTabs:= True ;
   grdAvailGradesDBTableView1ProductNo.Visible            := False ;
   grdSelectGradesDBTableView1GradeNo.Visible             := False ;
   grdSelectGradesDBTableView1templateno.Visible          := False ;
   grdAvailLengthsDBTableView1ProductLengthNo.Visible     := False ;
   grdSelectedLengthsDBTableView1ProductLengthNo.Visible  := False ;
   ltemplateno.Visible                                    := False ;
  End ;
  cds_SelectPG.Active:= False ;
  sq_SelectPG.ParamByName('TemplateNo').AsInteger:= cds_PriceHdrtemplateno.AsInteger ;
  cds_SelectPG.Active:= True ;

  cds_AvailPG.Filter        := '' ;
  cds_AvailPG.Active        := False ;
  sq_AvailPG.ParamByName('CurrentTemplateNo').AsInteger:= cds_PriceHdrtemplateno.AsInteger ;
  cds_AvailPG.Active        := True ;
  cds_AvailPG.Filtered      := True ;

//  grdAvailPGDBTableView1.DataController.Filter.Clear ;

  cds_AvailLengths.Filtered := True ;

  cds_SelectProd.Active     := False ;
  sq_SelectProd.ParamByName('templateno').AsInteger:= cds_PriceHdrtemplateno.AsInteger ;
  cds_SelectProd.Active     := True ;
//  cds_SelectProd.Filtered   := True ;

  cds_SelectLengths.Active  := False ;
  sq_SelectLengths.ParamByName('templateno').AsInteger:= cds_PriceHdrtemplateno.AsInteger ;
  cds_SelectLengths.Active  := True ;
//  cds_SelectLengths.Filtered:= True ;

 End ;
end;

procedure TfModifyPriceList.FormCloseQuery(Sender: TObject;
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
                dm_marketprice.SavePriceTemplateData ;
               End ;
   mrNo      : dm_marketprice.CancelPriceTemplateData ;
   mrCancel  : CanClose:= False ;
  End ;
 End ;

 if CanClose then
 With dm_marketprice do
 Begin
  cds_AvailPG.Active        := False ;
  cds_SelectPG.Active       := False ;
  cds_SelectLengths.Active  := False ;
  cds_SelectProd.Active     := False ;
 End ;
end;

procedure TfModifyPriceList.FormShow(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  cds_AvailPG.Filtered      := True ;
  cds_AvailLengths.Filtered := True ;
 End ;
end;

procedure TfModifyPriceList.pgPriceListGuidePageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
 With dm_marketprice do
 Begin
  if NewPage = tsGrade then
  Begin
   cds_AvailProd.Active   := False ;
   LoadAvailGrades ;
   cds_AvailProd.Active   := True ;
   cds_AvailProd.Filtered := False ;
   cds_AvailProd.Filtered := True ;
  End
  else
  if NewPage = tsLength then
  Begin
   cds_AvailLengths.Filtered:= False ;
   cds_AvailLengths.Filtered:= True ;
  End ;
 End ;
end;

procedure TfModifyPriceList.LoadAvailGrades ;
Var Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try

  With dm_marketprice do
  Begin
   sq_AvailProd.SQL.Clear ;
   sq_AvailProd.SQL.Add('Select Distinct G.GradeName, G.GradeNo FROM dbo.Product P') ;
   sq_AvailProd.SQL.Add('Inner Join dbo.Grade G ON G.GradeNo = P.GradeNo') ;
   sq_AvailProd.SQL.Add('AND G.LanguageCode = 1') ;

   cds_SelectPG.First ;
   if not cds_SelectPG.Eof then
   sq_AvailProd.SQL.Add('WHERE p.ProductGroupNo = '+cds_SelectPGProductGroupNo.AsString)
   else
   sq_AvailProd.SQL.Add('WHERE p.ProductGroupNo = -1') ;
   cds_SelectPG.Next ;
   While not cds_SelectPG.Eof do
   Begin
    sq_AvailProd.SQL.Add('or p.ProductGroupNo = '+cds_SelectPGProductGroupNo.AsString) ;
    cds_SelectPG.Next ;
   End ;
  End ;//With

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure TfModifyPriceList.acInsertSelectedGradesExecute(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  cds_AvailProd.Filtered:= False ;
  CopyGradeToGroup(Sender) ;
  cds_AvailProd.Filtered:= True ;  
 End ;
end;

procedure TfModifyPriceList.acInsertSelectedLengthsExecute(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  cds_AvailLengths.Filtered:= False ;
  CopyLengthsToGroup(Sender) ;
  cds_AvailLengths.Filtered:= True ;
 End ;
end;

procedure TfModifyPriceList.acNextPageExecute(Sender: TObject);
begin
  if pgPriceListGuide.ActivePage = tsPriceListHdr then
   pgPriceListGuide.ActivePage:= tsProductGroup
    else
     if pgPriceListGuide.ActivePage = tsProductGroup then
      pgPriceListGuide.ActivePage:= tsGrade
       else
        if pgPriceListGuide.ActivePage = tsGrade then
         pgPriceListGuide.ActivePage:= tsLength ;
end;

procedure TfModifyPriceList.acPreviousPageExecute(Sender: TObject);
begin
  if pgPriceListGuide.ActivePage = tsLength then
   pgPriceListGuide.ActivePage:= tsGrade
    else
     if pgPriceListGuide.ActivePage = tsGrade then
      pgPriceListGuide.ActivePage:= tsProductGroup
       else
        if pgPriceListGuide.ActivePage = tsProductGroup then
         pgPriceListGuide.ActivePage:= tsPriceListHdr ;
end;

procedure TfModifyPriceList.acPreviousPageUpdate(Sender: TObject);
begin
 acPreviousPage.Enabled:= pgPriceListGuide.ActivePage <> tsPriceListHdr ;
end;

procedure TfModifyPriceList.acNextPageUpdate(Sender: TObject);
begin
 acNextPage.Enabled:= pgPriceListGuide.ActivePage <> tsLength ;
end;

procedure TfModifyPriceList.acSaveExecute(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  SavePriceTemplateData ;
  PriceTemplateModified:= True ;
//  ModalResult:= mrOK ;
  Close ;
 End ;
end;

procedure TfModifyPriceList.acCancelChangesExecute(Sender: TObject);
begin
 if MessageDlg('Vill du avbryta?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dm_marketprice do
 Begin
  CancelPriceTemplateData ;
  ModalResult:= mrCancel ;
  Close ;  
 End ; 
end;

procedure TfModifyPriceList.acRemoveSelectedPGExecute(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  cds_AvailPG.Filtered:= False ;
  RemoveFromPGGroup(Sender);
  cds_AvailPG.Filtered:= True ;
 End ;
end;

procedure TfModifyPriceList.acRemoveSelectedGradesExecute(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  cds_AvailProd.Filtered:= False ;
  RemoveGradeFromGroup(Sender) ;
  cds_AvailProd.Filtered:= True ;
 End ;
end;

procedure TfModifyPriceList.acRemoveSelectedLengthsExecute(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  cds_AvailLengths.Filtered:= False ;
  RemoveLengthsFromGroup(Sender) ;
  cds_AvailLengths.Filtered:= True ;
 End ;
end;

procedure TfModifyPriceList.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled:= AllSelected ;
end;

procedure TfModifyPriceList.SpeedButton1Click(Sender: TObject);
begin
 With dm_marketprice do
 Begin
  SavePriceTemplateData ;
//  ModalResult:= mrOK ;
//  Close ;
 End ;
end;

procedure TfModifyPriceList.grdAvailPGDBTableView1DblClick(
  Sender: TObject);
begin
 acInsertSelectedPGExecute(Sender) ;     
end;

procedure TfModifyPriceList.grdSelectedPGDBTableView1DblClick(
  Sender: TObject);
begin
 acRemoveSelectedPGExecute(Sender) ;
end;

procedure TfModifyPriceList.grdAvailGradesDBTableView1DblClick(
  Sender: TObject);
begin
 acInsertSelectedGradesExecute(Sender) ;
end;

procedure TfModifyPriceList.grdSelectGradesDBTableView1DblClick(
  Sender: TObject);
begin
 acRemoveSelectedGradesExecute(Sender) ;
end;

procedure TfModifyPriceList.grdAvailLengthsDBTableView1DblClick(
  Sender: TObject);
begin
 acInsertSelectedLengthsExecute(Sender) ;
end;

procedure TfModifyPriceList.grdSelectedLengthsDBTableView1DblClick(
  Sender: TObject);
begin
 acRemoveSelectedLengthsExecute(Sender) ;
end;

End.
