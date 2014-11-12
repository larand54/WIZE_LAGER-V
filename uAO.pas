unit uAO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxLookAndFeels, cxPC, cxControls, cxSplitter,
  ActnList, dxBar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxBarExtItems, ImgList, cxSpinEdit,
  cxCheckBox, StdCtrls, cxLabel, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxImageComboBox, cxDBEdit, kbmMemTable, cxGridBandedTableView,
  cxGridDBBandedTableView, Buttons, cxMemo, dxCntner, dxExEdtr, dxEdLib,
  dxDBELib, cxCurrencyEdit, cxDBLabel, DateUtils ;

type
  TfAO = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel7: TPanel;
    cxSplitter1: TcxSplitter;
    cxPageControl1: TcxPageControl;
    tsLO: TcxTabSheet;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxBarManager1: TdxBarManager;
    ActionList1: TActionList;
    imglistActions: TImageList;
    acNewRunAndAO: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    grdAORowLevel1: TcxGridLevel;
    grdAORow: TcxGrid;
    dxBarDockControl3: TdxBarDockControl;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    Panel9: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel8: TPanel;
    cbShowAll: TcxCheckBox;
    seWeekNo: TcxSpinEdit;
    Panel6: TPanel;
    cxLabel2: TcxLabel;
    icStatus: TcxDBImageComboBox;
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    lcUser: TcxDBLookupComboBox;
    cbShowMainProduct: TcxDBCheckBox;
    mtFilter: TkbmMemTable;
    mtFilterStatus: TIntegerField;
    mtFilterUserID: TIntegerField;
    mtFilterWeekNo: TIntegerField;
    mtFilterShowMainProdOnly: TIntegerField;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    acClose: TAction;
    acSave: TAction;
    acCancelChanges: TAction;
    mtFilterProducerNo: TIntegerField;
    lcProducer: TcxDBLookupComboBox;
    dsFilter: TDataSource;
    cxLabel4: TcxLabel;
    mtFilterRegPointNo: TIntegerField;
    lcRegPoint: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    BitBtn1: TBitBtn;
    acRefresh: TAction;
    acChangeRun: TAction;
    acDeleteRun: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    pmAORow: TdxBarPopupMenu;
    acCopyAORow: TAction;
    grdAORowDBBandedTableView1: TcxGridDBBandedTableView;
    grdAORowDBBandedTableView1RunNo: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1RowNo: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Status: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1PkgCodePPNo: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1MainProduct: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1NoOfUnits: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1VolUnitNo: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1RunOrderNo: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1AT: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1AB: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1GradeName: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1SpeciesName: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1SurfacingName: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1BarCodeID: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1GradeStamp: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1LANGD: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1PcsPerPkg: TcxGridDBBandedColumn;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    Panel10: TPanel;
    dxBarDockControl4: TdxBarDockControl;
    dxBarButton3: TdxBarButton;
    acUserProps: TAction;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    mtFilterAnvndare: TStringField;
    acExpandAll: TAction;
    acCollapseAll: TAction;
    grdAORowDBBandedTableView1Producent: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Mtpunkt: TcxGridDBBandedColumn;
    dxBarLargeButton7: TdxBarLargeButton;
    tsRawMtrl: TcxTabSheet;
    tsOtherAORows: TcxTabSheet;
    tsProdInstructions: TcxTabSheet;
    tsResult: TcxTabSheet;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    acSummary: TAction;
    acChangeLayout: TAction;
    dxBarButton7: TdxBarButton;
    PanelProdInstru: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    ePet: TdxDBCheckEdit;
    eStressGrade: TdxDBCheckEdit;
    eFingerJoint: TdxDBCheckEdit;
    ePkgCut: TdxDBCheckEdit;
    eMiniBundle: TdxDBCheckEdit;
    eFohc: TcxDBTextEdit;
    seMiniBundleWidth: TcxDBSpinEdit;
    seMiniBundleHeight: TcxDBSpinEdit;
    sePiecesPerMiniBundle: TcxDBSpinEdit;
    sePackageWidth: TcxDBSpinEdit;
    sePackageHeight: TcxDBSpinEdit;
    seNoOfStraps: TcxDBSpinEdit;
    eHornSkydd: TcxDBComboBox;
    seAntalBand: TcxDBSpinEdit;
    lcWrapType: TcxDBLookupComboBox;
    lcImpregnering: TcxDBLookupComboBox;
    eExtraID: TcxDBTextEdit;
    EPET_Tolerance: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    ceShrinkWrap: TdxDBCheckEdit;
    lcPackage_Size: TcxDBLookupComboBox;
    lcPackageType: TcxDBLookupComboBox;
    Panel11: TPanel;
    Panel12: TPanel;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    acExpanderaAORows: TAction;
    dxBarButton10: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleSmallFont: TcxStyle;
    pmPrint: TdxBarPopupMenu;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    grdAORowDBBandedTableView1Column1: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Start: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Vecka: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Krtid: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Stopptid: TcxGridDBBandedColumn;
    Panel14: TPanel;
    grdAORaw: TcxGrid;
    grdAORawDBBandedTableView1: TcxGridDBBandedTableView;
    grdAORawDBBandedTableView1RunNo: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1AORmNo: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1RawOrderNo: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1PkgCodePPNo: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1DateCreated: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1DateModified: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1ModifiedUser: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1AT: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1AB: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1GradeName: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1SpeciesName: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1SurfacingName: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1BarcodeID: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1GradeStamp: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1Langd: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1PcsPerPkg: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1NoOfUnits: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1VolUnitNo: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1VolEnhet: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1Column1: TcxGridDBBandedColumn;
    grdAORawLevel1: TcxGridLevel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    Panel18: TPanel;
    grdAvRegPktDBTableView1: TcxGridDBTableView;
    grdAvRegPktLevel1: TcxGridLevel;
    grdAvRegPkt: TcxGrid;
    dxBarDockControl6: TdxBarDockControl;
    dxBarButton15: TdxBarButton;
    acSetAOToComplete: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    dxBarDockControl7: TdxBarDockControl;
    grdPaRegPkt: TcxGrid;
    cxGridDBTableViewPaRegPkt: TcxGridDBTableView;
    cxGridLevelPaRegPkt: TcxGridLevel;
    dxBarButton16: TdxBarButton;
    grdALLAORows: TcxGrid;
    cxGridDBBandedTableViewALLAORows: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridLevelALLAORows: TcxGridLevel;
    cxLabel6: TcxLabel;
    ldbRunNo: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    cxLabel7: TcxLabel;
    procedure acNewRunAndAOExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acUserPropsExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acChangeRunUpdate(Sender: TObject);
    procedure acChangeRunExecute(Sender: TObject);
    procedure grdAORowDBBandedTableView1NoOfUnitsGetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
      var AText: String);
    procedure acDeleteRunExecute(Sender: TObject);
    procedure acExpanderaAORowsExecute(Sender: TObject);
    procedure acChangeLayoutExecute(Sender: TObject);
    procedure cbShowAllClick(Sender: TObject);
    procedure seWeekNoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    function DataSaved : Boolean ;
    procedure SetAORowFilter ;
  public
    { Public declarations }
    Procedure init ;
  end;

var
  fAO: TfAO;

implementation

uses dmsDataConn, dmcVidaOrder, uAOWizard, uAOUser, VidaUser ;

{$R *.dfm}

procedure TfAO.SetAORowFilter ;
Begin
// if mtFilterShowMainProdOnly.AsInteger then ;
End ;

function TfAO.DataSaved : Boolean ;
begin
 With dmcOrder do
 Begin
  Result:= True ;
  if cds_AORun.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_AORun.ChangeCount > 0 then
   Result:= False ;

  if cds_AORow.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_AORow.ChangeCount > 0 then
   Result:= False ;

  if cds_AORaw.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_AORaw.ChangeCount > 0 then
   Result:= False ;
 End ;
end;

procedure TfAO.init ;
Var WeekNo, Year : String ;
Begin
 With dmcOrder do
 Begin
  Year:= Copy(IntToStr(YearOf(Date)),3,2) ;
  if WeekOfTheYear(Now) < 10 then
  WeekNo:= '0'+IntToStr(WeekOfTheYear(Now))
  else
  WeekNo:= IntToStr(WeekOfTheYear(Now)) ;
  seWeekNo.Value:= StrToInt(Year+WeekNo) ;

  cds_Producer.Active:= False ;
//  sq_Producer.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
  cds_Producer.Active:= True ;

  mtFilter.Active:= True ;
  mtFilter.Insert ;
  mtFilterUserID.AsInteger:= ThisUser.UserID ;
  mtFilterStatus.AsInteger:= -1 ;
  mtFilterShowMainProdOnly.AsInteger:= 1 ;
  mtFilter.Post ;

  if not cds_AORun.Active then
  cds_AORun.Active:= True ;

  if not cds_AORaw.Active then
  cds_AORaw.Active:= True ;

//User inställningar
  sq_AOUserRP.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
  cds_AOUserRP.Active:= True ;
 End ;
End ;

procedure TfAO.acNewRunAndAOExecute(Sender: TObject);
var fAOWizard : TfAOWizard;
    RunNo     : Integer ;
    OldFilter : String ;
    Filtered  : Boolean ;
begin
 With dmcOrder do
 Begin
  RunNo:= 0 ;
  cds_AORun.Insert ;
  fAOWizard           := TfAOWizard.Create(nil);
  OldFilter           := cds_AORow.Filter ;
  Filtered            := cds_AORow.Filtered ;
  cds_AORow.Filter    := 'RunNo = '+cds_AORunRunNo.AsString ;
  cds_AORow.Filtered  := True ;
  try
  if fAOWizard.ShowModal = mrOK then
  Begin
   Application.ProcessMessages ;
   RunNo:= cds_AORunRunNo.AsInteger ;
   acSaveExecute(Sender) ;
  End
   else
   Begin
    Application.ProcessMessages ;   
    acCancelChangesExecute(Sender) ;
   End ;
  finally
   FreeAndNil(fAOWizard) ;
   cds_AORow.Filtered  := False ;
   cds_AORow.Filter:= OldFilter ;
   cds_AORow.Filtered:= Filtered ;
   cds_AORow.Locate('RunNo', RunNo, []) ;
  end;
 End ;//with
end;

procedure TfAO.acSaveExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 With dmcOrder do
 Begin
  SaveAO ;
 End ;//with
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfAO.acCancelChangesExecute(Sender: TObject);
begin
 With dmcOrder do
 Begin
  CancelAOChanges ;
 End ;//with
end;

procedure TfAO.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfAO.acSaveUpdate(Sender: TObject);
begin
 With dmcOrder do
 Begin
  acSave.Enabled:= (cds_AORow.Active) and (not DataSaved) ;
 End ;
end;

procedure TfAO.acUserPropsExecute(Sender: TObject);
var fAOUser: TfAOUser;
begin
 fAOUser:= TfAOUser.Create(nil);
 try
 fAOUser.ShowModal ;
 finally
  FreeAndNil(fAOUser) ;
 end;
end;

procedure TfAO.acRefreshExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try

 With dmcOrder do
 Begin
  cds_AORow.Active:= False ;
  sq_AORow.ParamByName('UserID').AsInteger:= mtFilterUserID.AsInteger ;
  if cbShowAll.Checked then
  sq_AORow.ParamByName('StartYearWeekNo').AsString:= '-1'
  else
  sq_AORow.ParamByName('StartYearWeekNo').AsString:= '0'+inttostr(seWeekNo.Value) ;

  sq_AORow.ParamByName('Status').AsInteger:= mtFilterStatus.AsInteger ;


  if mtFilterShowMainProdOnly.AsInteger = 1 then
  Begin
   cds_AORow.Filter   := 'MainProduct = 1' ;
   cds_AORow.Filtered := True ;
  End
  else
  cds_AORow.Filtered := False ;


  cds_AORow.Active:= True ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ; 
end;

procedure TfAO.acCancelChangesUpdate(Sender: TObject);
begin
 With dmcOrder do
 Begin
  acCancelChanges.Enabled:= (cds_AORow.Active) and (not DataSaved) ;
 End ;
end;

procedure TfAO.acChangeRunUpdate(Sender: TObject);
begin
 With dmcOrder do
 Begin
  acChangeRun.Enabled:= (DataSaved) and (cds_AORow.Active) and (cds_AORow.RecordCount > 0) ;
 End ;
end;

procedure TfAO.acChangeRunExecute(Sender: TObject);
var fAOWizard : TfAOWizard;
    RunNo     : Integer ;
    OldFilter : String ;
    Filtered  : Boolean ;
begin
 With dmcOrder do
 Begin
  cds_RegPoint.Active:= False ;
  sq_RegPoint.ParamByName('ClientNo').AsInteger:= cds_AORowProducerNo.AsInteger ;
  cds_RegPoint.Active:= True ;

  cds_AORun.Active:= False ;
  sq_AORun.ParamByName('RunNo').AsInteger:= cds_AORowRunNo.AsInteger ;
  cds_AORun.Active:= True ;

  fAOWizard           := TfAOWizard.Create(nil);
  OldFilter           := cds_AORow.Filter ;
  Filtered            := cds_AORow.Filtered ;  
  cds_AORow.Filter    := 'RunNo = '+cds_AORowRunNo.AsString ;
  cds_AORow.Filtered  := True ;
  try
  if fAOWizard.ShowModal = mrOK then
  Begin
   Application.ProcessMessages ;
   RunNo:= cds_AORunRunNo.AsInteger ;
   acSaveExecute(Sender) ;
  End
   else
   Begin
    Application.ProcessMessages ;   
    acCancelChangesExecute(Sender) ;
   End ;
  finally
   FreeAndNil(fAOWizard) ;
   cds_AORow.Filtered  := False ;
   cds_AORow.Filter:= OldFilter ;
   cds_AORow.Filtered:= Filtered ;
   cds_AORow.Locate('RunNo', RunNo, []) ;
  end;
 End ;//with
end;

procedure TfAO.grdAORowDBBandedTableView1NoOfUnitsGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
  var AText: String);
begin
 With dmcOrder do
 Begin
  AText:= AText+' '+cds_AORowVolEnhet.AsString
 End ;
end;

procedure TfAO.acDeleteRunExecute(Sender: TObject);
begin
 With dmcOrder do
 Begin
  cds_AORun.Delete ;
  if cds_AORun.ChangeCount > 0 then
   cds_AORun.ApplyUpdates(0) ;
 End ;//with
end;

procedure TfAO.acExpanderaAORowsExecute(Sender: TObject);
begin
 With dmcOrder do
 Begin
  if acExpanderaAORows.Caption = 'Expandera' then
  Begin
   cds_AORow.Filter    := 'RunNo = '+cds_AORowRunNo.AsString ;
   acExpanderaAORows.Caption := 'Kollapsa' ;
  End
  else
  Begin
   cds_AORow.Filter   := 'MainProduct = 1' ;
//   cds_AORow.Filtered  := True ;
   acExpanderaAORows.Caption := 'Expandera'
  End ;
  try

  Except
   cds_AORow.Filtered  := False ;
  end;
 End ;//with
end;

procedure TfAO.acChangeLayoutExecute(Sender: TObject);
begin
  if grdAORow.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdAORow.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfAO.cbShowAllClick(Sender: TObject);
begin
 seWeekNo.Enabled:= not cbShowAll.Checked ;
end;

procedure TfAO.seWeekNoPropertiesChange(Sender: TObject);
begin
 acRefreshExecute(Sender) ;
end;

end.
