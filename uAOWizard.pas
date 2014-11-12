unit uAOWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ActnList, cxLabel, cxSpinEdit, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxContainer, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, Buttons,
  cxPC, ExtCtrls, cxLookAndFeels, cxDBLabel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxImageComboBox, cxCurrencyEdit, cxCheckBox,
  cxMemo, dxCntner, dxExEdtr, dxEdLib, dxDBELib;

type
  TfAOWizard = class(TForm)
    Panel1: TPanel;
    pcWizard: TcxPageControl;
    tsAORun: TcxTabSheet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    lcProducer: TcxDBLookupComboBox;
    deStartDateTime: TcxDBDateEdit;
    lcMatPunkt: TcxDBLookupComboBox;
    seNoOfOperators: TcxDBSpinEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    tsAORows: TcxTabSheet;
    ActionList1: TActionList;
    acNext: TAction;
    bbNext: TBitBtn;
    BitBtn4: TBitBtn;
    acPrev: TAction;
    Panel2: TPanel;
    cxDBLabel1: TcxDBLabel;
    cxLabel5: TcxLabel;
    cxLookAndFeelController1: TcxLookAndFeelController;
    acGetPkgCodesFinProd: TAction;
    BitBtn5: TBitBtn;
    tsAORaw: TcxTabSheet;
    Panel3: TPanel;
    BitBtn6: TBitBtn;
    icStatus: TcxDBImageComboBox;
    cxLabel7: TcxLabel;
    lcVolUnit: TcxDBLookupComboBox;
    cxLabel8: TcxLabel;
    acGetPkgCodesRawMtrlProd: TAction;
    grdAORawLevel1: TcxGridLevel;
    grdAORaw: TcxGrid;
    grdAORawDBBandedTableView1: TcxGridDBBandedTableView;
    grdAORawDBBandedTableView1RunNo: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1AORmNo: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1NoOfUnits: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1VolUnitNo: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1RawOrderNo: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1PkgCodePPNo: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1DateCreated: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1DateModified: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1ModifiedUser: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1VolEnhet: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1AT: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1AB: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1GradeName: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1SpeciesName: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1SurfacingName: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1BarcodeID: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1GradeStamp: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1Langd: TcxGridDBBandedColumn;
    grdAORawDBBandedTableView1PcsPerPkg: TcxGridDBBandedColumn;
    grdAORow: TcxGrid;
    grdAORowDBBandedTableView1: TcxGridDBBandedTableView;
    grdAORowDBBandedTableView1RunNo: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1RowNo: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1RunOrderNo: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Status: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Start: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Vecka: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Krtid: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Stopptid: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1MainProduct: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1NoOfUnits: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1VolUnitNo: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Column1: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1PkgCodePPNo: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1AT: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1AB: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1GradeName: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1SpeciesName: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1SurfacingName: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1BarCodeID: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1GradeStamp: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1LANGD: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1PcsPerPkg: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Mtpunkt: TcxGridDBBandedColumn;
    grdAORowDBBandedTableView1Producent: TcxGridDBBandedColumn;
    grdAORowLevel1: TcxGridLevel;
    eRunTime: TcxDBMaskEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    eStopTime: TcxDBMaskEdit;
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
    procedure acNextExecute(Sender: TObject);
    procedure acGetPkgCodesFinProdExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acGetPkgCodesRawMtrlProdExecute(Sender: TObject);
    procedure pcWizardPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Procedure AddCodesToAO_RawMtrl ;
  public
    { Public declarations }
    Procedure AddCodesToAO_FinProd ;
    Procedure EditCodesToAO_FinProd ;
  end;

//var fAOWizard: TfAOWizard;

implementation

uses dmcVidaOrder, uPkgCodeTrf, dmcPkgCode, dmsDataConn, dmsVidaSystem;

{$R *.dfm}

procedure TfAOWizard.acNextExecute(Sender: TObject);
begin
 pcWizard.ActivePageIndex:= pcWizard.ActivePageIndex + 1 ;
 bbNext.SetFocus ;
end;

procedure TfAOWizard.acGetPkgCodesFinProdExecute(Sender: TObject);
Var fPkgCodeTrf: TfPkgCodeTrf;
begin
 with dmcOrder do
 Begin
 dmPkgCode:= TdmPkgCode.Create(nil);
 fPkgCodeTrf:= TfPkgCodeTrf.Create(nil);
 cds_AORow.DisableControls ;
 grdAORowDBBandedTableView1.DataController.BeginUpdate ;
 try
 if fPkgCodeTrf.ShowModal = mrOK then
 Begin
  Application.ProcessMessages ;
  AddCodesToAO_FinProd ;
 End
 else
 Application.ProcessMessages ;
 finally
  FreeAndNil(fPkgCodeTrf) ;
  FreeAndNil(dmPkgCode) ;
  grdAORowDBBandedTableView1.DataController.EndUpdate ;
  cds_AORow.EnableControls ;
 end;
 End ;
end;

Procedure TfAOWizard.AddCodesToAO_FinProd ;
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 with dmPkgCode, dmsSystem, dmcOrder  do
 Begin
  mtMarkedCodes.First ;
  While not mtMarkedCodes.Eof do
  Begin
   Screen.Cursor := crHourGlass;    { Show hourglass cursor }
   cds_AORow.Append ;
   cds_AORowPkgCodePPNo.AsInteger := mtMarkedCodesPkgCodePPNo.AsInteger ;
//   cds_AORowsspNo.AsInteger       := mtMarkedCodessspNo.AsInteger ;
   cds_AORowMainProduct.AsInteger := mtMarkedCodesMainProduct.AsInteger ;
   cds_AORowNoOfUnits.AsFloat     := mtMarkedCodesNoOfUnits.AsFloat ;

   cds_AORowVolUnitNo.AsInteger   := cds_AORunVolUnitNo.AsInteger ;
   cds_AORowProducent.AsString    := cds_AORunProducent.AsString ;

//   cds_AORowMtpunkt.AsString      := cds_AORunMtpunkt.AsString ;
   cds_AORowStart.AsSQLTimeStamp  := cds_AORunStartDateTime.AsSQLTimeStamp ;
   cds_AORowRunStatus.AsInteger   := cds_AORunStatus.AsInteger ;
   cds_AORowVecka.AsString        := cds_AORunStartYearWeekNo.AsString ;
    Screen.Cursor := crHourGlass;    { Show hourglass cursor }
   AddProductDataToAORow ;
//   if cds_AORow.State in [dsEdit, dsInsert] then
   cds_AORow.Post ;

   if mtMarkedCodesPkgCodePPNo.AsInteger <> -1 then
   Begin
    cds_LO_AO.Insert ;
    cds_LO_AORunNo.AsInteger:= cds_AORowRunNo.AsInteger ;
    cds_LO_AORowNo.AsInteger:= cds_AORowRowNo.AsInteger ;
    cds_LO_AOsspNo.AsInteger:= mtMarkedCodessspNo.AsInteger ;
    cds_LO_AO.Post ;
   End ;

   mtMarkedCodes.Next ;
  End ;//While
  mtMarkedCodes.Active:= False ;
 End ;//with
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
End ;

procedure TfAOWizard.FormCreate(Sender: TObject);
begin
 with dmcOrder do
 Begin
  if cds_AORunProducerNo.AsInteger > 0 then
  Begin
   cds_RegPoint.Active:= False ;
   sq_RegPoint.ParamByName('ClientNo').AsInteger:= cds_AORunProducerNo.AsInteger ;
   cds_RegPoint.Active:= True ;
  End ; //if
 End ;//with
end;

procedure TfAOWizard.acGetPkgCodesRawMtrlProdExecute(Sender: TObject);
Var fPkgCodeTrf: TfPkgCodeTrf;
begin
 with dmcOrder do
 Begin
 dmPkgCode:= TdmPkgCode.Create(nil);
 fPkgCodeTrf:= TfPkgCodeTrf.Create(nil);
 cds_AORaw.DisableControls ;
 try
 if fPkgCodeTrf.ShowModal = mrOK then
 Begin
  Application.ProcessMessages ;
  AddCodesToAO_RawMtrl ;
 End
 else
 Application.ProcessMessages ;
 finally
  FreeAndNil(fPkgCodeTrf) ;
  FreeAndNil(dmPkgCode) ;
  cds_AORaw.EnableControls ;
 end;
 End ;//with
end;

Procedure TfAOWizard.AddCodesToAO_RawMtrl ;
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 with dmPkgCode, dmcOrder, dmsSystem do
 Begin
  mtMarkedCodes.First ;
  While not mtMarkedCodes.Eof do
  Begin
   cds_AORaw.Append ;
   cds_AORawPkgCodePPNo.AsInteger := mtMarkedCodesPkgCodePPNo.AsInteger ;
   cds_AORawVolUnitNo.AsInteger   := cds_AORunVolUnitNo.AsInteger ;
   AddProductDataToAO_Raw ;
   if cds_AORaw.State in [dsEdit, dsInsert] then
   cds_AORaw.Post ;
   mtMarkedCodes.Next ;
  End ;//While
  mtMarkedCodes.Active:= False ;
 End ;//with
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
End ;

procedure TfAOWizard.pcWizardPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
 with dmcOrder, dmsSystem do
 Begin
  if NewPage = tsAORows then
  Begin
   if mtMarkedCodes.Active then
   Begin
    AddCodesToAO_FinProd ;
   End
   else
   if (cds_AORun.State in [dsEdit, dsInsert]) or (cds_AORun.ChangeCount > 0) then
    EditCodesToAO_FinProd ;
  End ;//if
 End ;//with
end;

Procedure TfAOWizard.EditCodesToAO_FinProd ;
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 with dmcOrder, dmsSystem do
 Begin
  cds_AORow.First ;
  While not mtMarkedCodes.Eof do
  Begin
   cds_AORow.Edit ;
   cds_AORowVolUnitNo.AsInteger   := cds_AORunVolUnitNo.AsInteger ;
   cds_AORowProducent.AsString    := cds_AORunProducent.AsString ;

   cds_AORowMtpunkt.AsString      := cds_AORunMtpunkt.AsString ;
   cds_AORowStart.AsSQLTimeStamp  := cds_AORunStartDateTime.AsSQLTimeStamp ;
   cds_AORowRunStatus.AsInteger   := cds_AORunStatus.AsInteger ;
   cds_AORowVecka.AsString        := cds_AORunStartYearWeekNo.AsString ;

   cds_AORow.Post ;
   cds_AORow.Next ;
  End ;//While
 End ;//with
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
End ;

procedure TfAOWizard.BitBtn4Click(Sender: TObject);
begin
 pcWizard.ActivePageIndex:= pcWizard.ActivePageIndex - 1 ;
end;

procedure TfAOWizard.FormShow(Sender: TObject);
begin
 Caption:= 'Körordernr '+dmcOrder.cds_AORunRunNo.AsString ;
end;

end.
