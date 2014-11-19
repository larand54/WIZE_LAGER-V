unit uInventeraPIG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  ActnList, ImgList, dxBar, dxBarExtItems, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSCore, dxPScxCommon, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxDBLookupComboBox, cxCalc,
  cxMemo, cxRichEdit, cxDBRichEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxContainer, cxTextEdit, cxMaskEdit, cxCalendar, cxDBEdit,
  cxLookAndFeels, cxLabel, cxCurrencyEdit, cxImageComboBox, cxCheckBox,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxNavigator,
  dxPScxExtDBEditorLnks, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxSkinsdxRibbonPainter, dxPSContainerLnk ;

Const
    CM_MOVEIT = WM_USER + 1;

type
  TfInventeraPIG = class(TForm)
    Panel1: TPanel;
    grdPIGLevel1: TcxGridLevel;
    grdPIG: TcxGrid;
    grdPIGDBBandedTableView1: TcxGridDBBandedTableView;
    ActionList1: TActionList;
    acNewInventering: TAction;
    grdPIGDBBandedTableView1PIGGroupNo: TcxGridDBBandedColumn;
    grdPIGDBBandedTableView1Produkt: TcxGridDBBandedColumn;
    grdPIGDBBandedTableView1LNGD: TcxGridDBBandedColumn;
    grdPIGDBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn;
    grdPIGDBBandedTableView1PigNoPkgs1: TcxGridDBBandedColumn;
    grdPIGDBBandedTableView1PigNoPkgs2: TcxGridDBBandedColumn;
    grdPIGDBBandedTableView1PigNoPkgs3: TcxGridDBBandedColumn;
    grdPIGDBBandedTableView1PigNoPkgs4: TcxGridDBBandedColumn;
    grdPIGDBBandedTableView1PigNoPkgs5: TcxGridDBBandedColumn;
    grdPIGDBBandedTableView1PigNoPkgs6: TcxGridDBBandedColumn;
    grdPIGDBBandedTableView1PigNoPkgs7: TcxGridDBBandedColumn;
    grdPIGDBBandedTableView1PigNoPkgs8: TcxGridDBBandedColumn;
    grdPIGDBBandedTableView1PigNoPkgs9: TcxGridDBBandedColumn;
    grdPIGDBBandedTableView1PigNoPkgs10: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    acClose: TAction;
    imglistActions: TImageList;
    grdPIGDBBandedTableView1SumCountedPkgs: TcxGridDBBandedColumn;
    grdPIGDBBandedTableView1SumSystemPkgs: TcxGridDBBandedColumn;
    acWysiwyg: TAction;
    acAddPigNames: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel2: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel3: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    Panel4: TPanel;
    deDateCreated: TcxDBDateEdit;
    lcLAGERSTALLE: TcxDBLookupComboBox;
    lcLAGERGRUPP: TcxDBLookupComboBox;
    reNote: TcxDBRichEdit;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    acSave: TAction;
    acCancelChanges: TAction;
    cxLookAndFeelController1: TcxLookAndFeelController;
    acOpen: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    teInvNr: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    grdPIGDBBandedTableView1BARCODE: TcxGridDBBandedColumn;
    grdPIGDBBandedTableView1GRADESTAMP: TcxGridDBBandedColumn;
    pmGrid: TdxBarPopupMenu;
    acChangeLayout: TAction;
    dxBarButton1: TdxBarButton;
    grdPIGDBBandedTableView1LoadedPkgs: TcxGridDBBandedColumn;
    images1616: TImageList;
    icStatus: TcxDBImageComboBox;
    cxLabel5: TcxLabel;
    acDeletePig: TAction;
    cbHideNullColumns: TcxCheckBox;
    grdPIGDBBandedTableView1PPP: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleclMaroon: TcxStyle;
    cxStyleclBtnFace: TcxStyle;
    lcInventeringstyp: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    acAdjustInventory: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    addRow: TAction;
    dxBarButton2: TdxBarButton;
    grdPIGDBBandedTableView1TotalAM3: TcxGridDBBandedColumn;
    acShowGroupBox: TAction;
    acGroupSummary: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    acExpandAll: TAction;
    acCollapseAll: TAction;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    procedure FormCreate(Sender: TObject);
    procedure acWysiwygExecute(Sender: TObject);
    procedure grdPIGDBBandedTableView1PigNoPkgs1CustomDrawHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure acCloseExecute(Sender: TObject);
    procedure acNewInventeringExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acAddPigNamesExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acNewInventeringUpdate(Sender: TObject);
    procedure acOpenUpdate(Sender: TObject);
    procedure acOpenExecute(Sender: TObject);
    procedure acWysiwygUpdate(Sender: TObject);
    procedure grdPIGDBBandedTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lcLAGERSTALLEPropertiesInitPopup(Sender: TObject);
    procedure lcLAGERSTALLEPropertiesCloseUp(Sender: TObject);
    procedure lcLAGERGRUPPPropertiesInitPopup(Sender: TObject);
    procedure lcLAGERGRUPPPropertiesCloseUp(Sender: TObject);
    procedure acChangeLayoutExecute(Sender: TObject);
    procedure acDeletePigExecute(Sender: TObject);
    procedure cbHideNullColumnsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lcInventeringstypPropertiesChange(Sender: TObject);
    procedure acAdjustInventoryExecute(Sender: TObject);
    procedure acAdjustInventoryUpdate(Sender: TObject);
    procedure addRowExecute(Sender: TObject);
    procedure addRowUpdate(Sender: TObject);
    procedure acShowGroupBoxExecute(Sender: TObject);
    procedure acGroupSummaryExecute(Sender: TObject);
    procedure acExpandAllExecute(Sender: TObject);
    procedure acCollapseAllExecute(Sender: TObject);
  private
    { Private declarations }
    function  DataSaved : Boolean ;
    procedure initGrid ;
    procedure SetAllColumnsVisible ;
    procedure CMMoveIt(var Msg: TMessage); message CM_MOVEIT;
    procedure SetKolumnName ;
  public
    { Public declarations }
  end;

var
  fInventeraPIG: TfInventeraPIG;

implementation

uses dmcLoadPlan, uSelectLIP, uPigNames, uSelectInvPIG, dmsDataConn, VidaUser ,
  uEntryField , dmsVidaSystem;

{$R *.dfm}

procedure TfInventeraPIG.CMMoveIt(var Msg: TMessage);
var AGoForward: Boolean;
begin
   AGoForward := Boolean(Msg.WParam);
   grdPIGDBBandedTableView1.Controller.EditingController.HideEdit(True);
   grdPIGDBBandedTableView1.Controller.FocusNextCell(AGoForward)
end;


function TfInventeraPIG.DataSaved : Boolean ;
begin
 With dmLoadPlan do
 Begin
  if cds_PigHdr.Active then
  Begin
   Result:= True ;
   if cds_PigHdr.State in [dsEdit, dsInsert] then
    Result:= False ;
   if cds_PigHdr.ChangeCount > 0 then
    Result:= False ;

   if (cds_PigEntry.Active) and (cds_PigEntry.State in [dsEdit, dsInsert]) then
    Result:= False ;
   if (cds_PigEntry.Active) and (cds_PigEntry.ChangeCount > 0) then
    Result:= False ;
  End ;
 End ;
end;

procedure TfInventeraPIG.FormCreate(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  cds_PigEntry.BeforeScroll:= nil ;
  Try
  SetAllColumnsVisible ;
  cds_PigHdr.Active:= True ;
  cds_PigHdr.Last ;
  SetKolumnName ;
  cds_PigEntry.Active:= True ;
//  initGrid ; //58893
  Finally
//   Screen.Cursor := Save_Cursor ;
   cds_PigEntry.BeforeScroll:= cds_PigEntryBeforeScroll ;
  End ;
 End ;//WITH
end;

procedure TfInventeraPIG.SetKolumnName ;
Begin
 With dmLoadPlan do
 Begin
  if cds_PigHdrInvTypeNo.AsInteger = 1 then
  grdPIGDBBandedTableView1LoadedPkgs.Caption:= 'Differens'
  else
  grdPIGDBBandedTableView1LoadedPkgs.Caption:= 'Utlastade' ;
 End ;
End ;

procedure TfInventeraPIG.SetAllColumnsVisible ;
Var x : Integer ;
begin
 For x := 7 to grdPIGDBBandedTableView1.ColumnCount - 4 do
  grdPIGDBBandedTableView1.Columns[x].Visible:= False ;
 x := 7 ;
 With dmLoadPlan do
 Begin
  cds_PigNames.Filter   := 'Active = 1' ;
  cds_PigNames.Filtered := True ;
  Try
  cds_PigNames.Active:= True ;
   cds_PigNames.First ;
  While not cds_PigNames.Eof do
  Begin
   grdPIGDBBandedTableView1.Columns[x].Caption          := cds_PigNamesPigName.AsString ;
   grdPIGDBBandedTableView1.Columns[x].Visible          := True ;
   grdPIGDBBandedTableView1.Columns[x].Options.Filtering:= False ;
   grdPIGDBBandedTableView1.Columns[x].Width            := 30 ;
   cds_PigNames.Next ;
   x:= succ(x) ;
  End ;
  grdPIGDBBandedTableView1.Bands[1].Width:= 30 * (x-7) ;
  Finally
   cds_PigNames.Filtered := False ;
  End ;
 End ;//WITH
end;

procedure TfInventeraPIG.initGrid ;
Var  AColumn : TcxGridDBBandedColumn;
     I : integer ;
Begin
{        AColumn := grdPIGDBBandedTableView1.CreateColumn;
        AColumn.DataBinding.FieldName := GlobalSettings.Items[i];
        AColumn.Visible := false;
        AColumn.Options.Filtering := false;
        AColumn.Position.BandIndex := 1; }
 grdPIGDBBandedTableView1.BeginUpdate ;
 Try
 For I := 0 to grdPIGDBBandedTableView1.Bands.Items[1].ColumnCount -1 do
  with grdPIGDBBandedTableView1.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
              Column := grdPIGDBBandedTableView1.Columns[I] ;
              Kind := skSum;
              Format := '####';
            end
          ;
        ;
 Finally
  grdPIGDBBandedTableView1.EndUpdate ;
 End ;
End ;

procedure TfInventeraPIG.acWysiwygExecute(Sender: TObject);
begin
 dxComponentPrinter1Link1.ReportTitleText:= 'Inventering '+DateToStr(dmLoadPlan.cds_PigHdrInvDate.AsDateTime) ;
 dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape ;
// dxComponentPrinter1Link2.PreviewWindow.ZoomFactor:= 200 ;
 dxComponentPrinter1Link1.ShrinkToPageWidth:= True ;
 dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;
 dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfInventeraPIG.grdPIGDBBandedTableView1PigNoPkgs1CustomDrawHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
var
  Size: TSize;
  OldFont, LogFont: TLogFont;
  ABounds, ATextRect: TRect;
  AFilterRect: TRect;
  I: Integer;
  AButtonState: TcxButtonState;
  ATextColor, ABkColor: TColor;
  ADate: TDateTime;
begin
  GetObject(ACanvas.Font.Handle, SizeOf(OldFont), @OldFont);
  LogFont := OldFont;
  with LogFont do
  begin
    lfEscapement := 900;
    lfOrientation := lfEscapement;
    lfOutPrecision := OUT_TT_ONLY_PRECIS;
  end;
  ACanvas.Font.Handle := CreateFontIndirect(LogFont);

  ABounds := AViewInfo.Bounds;

  ATextRect := ABounds;
  InflateRect(ATextRect, -1, -4);

  ADate := AViewInfo.Column.Tag;

{  if DayOfTheWeek(ADate) >= DaySaturday then
  begin
    ATextColor := clWhite;
    ABkColor := clGray;
  end
  else
  begin
    ATextColor := clBlack;
    ABkColor := clSilver;
  end; }

    ATextColor := clBlack;
    ABkColor := clYellow;

  ACanvas.Canvas.Brush.Color := ABkColor;
  ACanvas.Canvas.Brush.Style := bsSolid;
  ACanvas.Font.Color := ATextColor;

  Sender.Painter.LookAndFeelPainter.DrawHeader(
      ACanvas,                   // The Canvas
      ABounds,                   // Bounds
      ATextRect,                 // TextAreaBounds
      AViewInfo.Neighbors,
      AViewInfo.Borders,
      cxbsNormal,                // (Button) State
      taCenter,                  // Horz. Alignment
      vaCenter,                  // Vert. Alignment
      False,                     // Multiline
      False,                     // ShowEndEllipsis
      '',  // Text
      ACanvas.Font,              // Font
      ATextColor,                // TextColor
      ABkColor                   // BackgroundColor
      );

  ACanvas.Canvas.Brush.Color := clYellow ;//ABkColor;
      ACanvas.Canvas.TextRect(
      ATextRect,
      ATextRect.Left,
      ATextRect.Bottom,
      AViewInfo.Column.Caption
      );

  { Restore/free used stuff }
  DeleteObject(ACanvas.Font.Handle);
  ACanvas.Font.Handle := CreateFontIndirect(OldFont);

  ADone := True;
end;

procedure TfInventeraPIG.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfInventeraPIG.acNewInventeringExecute(Sender: TObject);
var
  fSelectLIP: TfSelectLIP;
  Save_Cursor:TCursor;
begin
 With dmLoadPlan do
 Begin
  Save_Cursor := Screen.Cursor;
  cds_PigEntry.BeforeScroll:= nil ;  
  cds_PigHdr.UpdateOptions.ReadOnly:= False ;
  cds_PigHdr.Insert ;
  cds_PigEntry.DisableControls ;
  if cds_PigHdr.State in [dsEdit, dsInsert] then
   cds_PigHdr.Post ;
  fSelectLIP:= TfSelectLIP.Create(nil);
  Try
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  if fSelectLIP.ShowModal = mrOK then
   Begin
    AddPkgCodesInInventory ;
    acSaveExecute(Sender) ;
    cds_PigEntry.Refresh ;
    SetAllColumnsVisible ;
   end
    else
     cds_PigHdr.Cancel ;
   Application.ProcessMessages ;
  Finally
   FreeAndNil(fSelectLIP) ;
   cds_PigEntry.EnableControls ;
   Screen.Cursor := Save_Cursor ;
   cds_PigEntry.BeforeScroll:= cds_PigEntryBeforeScroll ;
  End ;
 End ;
end;

procedure TfInventeraPIG.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= True ;
  if DataSaved = False then
   if MessageDlg('Data är inte sparat i inventeringen, vill du spara ändringar?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
     acSaveExecute(Sender) ;
    End ;

 CanClose:= True ;

 if CanClose then
 With dmLoadPlan do
 Begin
  cds_PigHdr.Active:= False ;
  cds_PigEntry.Active:= False ;
  dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdPIGDBBandedTableView1.Name, grdPIGDBBandedTableView1) ;
 End ;
end;

procedure TfInventeraPIG.acAddPigNamesExecute(Sender: TObject);
var fPigNames: TfPigNames;
begin
 fPigNames:= TfPigNames.Create(nil) ;
 Try
  fPigNames.ShowModal ;
  Application.ProcessMessages ;
 Finally
  FreeAndNil(fPigNames) ;
 End ;
end;

procedure TfInventeraPIG.acSaveExecute(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if cds_PigHdr.State in [dsEdit, dsInsert] then
   cds_PigHdr.Post ;
  if cds_PigHdr.ChangeCount > 0 then
  Begin
   cds_PigHdr.ApplyUpdates(0) ;
   cds_PigHdr.CommitUpdates ;
  End;

  if cds_PigEntry.State in [dsEdit, dsInsert] then
   cds_PigEntry.Post ;
  if cds_PigEntry.ChangeCount > 0 then
  Begin
   cds_PigEntry.ApplyUpdates(0) ;
   cds_PigEntry.CommitUpdates ;
  End;

 End ;
end;

procedure TfInventeraPIG.acCancelChangesExecute(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if cds_PigEntry.State in [dsEdit, dsInsert] then
   cds_PigEntry.Cancel ;
  if cds_PigEntry.ChangeCount > 0 then
   cds_PigEntry.CancelUpdates ;

  if cds_PigHdr.State in [dsEdit, dsInsert] then
   cds_PigHdr.Cancel ;
  if cds_PigHdr.ChangeCount > 0 then
   cds_PigHdr.CancelUpdates ;
 End ;
end;

procedure TfInventeraPIG.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled:= not DataSaved ;
end;

procedure TfInventeraPIG.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled:= not DataSaved ;
end;

procedure TfInventeraPIG.acNewInventeringUpdate(Sender: TObject);
begin
 acNewInventering.Enabled:= DataSaved ;
end;

procedure TfInventeraPIG.acOpenUpdate(Sender: TObject);
Var vals : double ;
begin
 acOpen.Enabled:= DataSaved ;
end;

procedure TfInventeraPIG.acOpenExecute(Sender: TObject);
var fSelectInvPIG: TfSelectInvPIG;
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 grdPIGDBBandedTableView1.BeginUpdate ;
 Try
 With dmLoadPlan do
 Begin
 fSelectInvPIG:= TfSelectInvPIG.Create(nil);
 dmLoadPlan.cds_PigEntry.DisableControls ;
 Try
  cds_PigHdrList.Active := False ;
  cds_PigHdrList.Active := True ;
  if fSelectInvPIG.ShowModal = mrOK then
  Begin
   Application.ProcessMessages ;
   cds_PigHdr.Active    := False ;
   cds_PigHdr.ParamByName('PIGGroupNo').AsInteger  := cds_PigHdrListPIGGroupNo.AsInteger ;
   cds_PigHdr.Active    := True ;
   cds_PigEntry.Active  := False ;
   cds_PigEntry.Active  := True ;
   SetKolumnName ;
  End ;
 Finally
  cds_PigHdrList.Active := False ;
  FreeAndNil(fSelectInvPIG) ;
  dmLoadPlan.cds_PigEntry.EnableControls ;
 End ;
 End ;//With
 Finally
  grdPIGDBBandedTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfInventeraPIG.acWysiwygUpdate(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  acWysiwyg.Enabled:= (cds_PigEntry.Active) and (cds_PigEntry.RecordCount > 0) ;
 End ;
end;

procedure TfInventeraPIG.grdPIGDBBandedTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
 Try
  if AEdit is TcxCustomTextEdit then
    with TcxCustomTextEdit(AEdit) do begin
      if (Key = VK_RIGHT) and (CursorPos=Length(TcxCustomTextEdit(AEdit).Text)) then
        PostMessage(fInventeraPIG.Handle,CM_MOVEIT, Integer(True), 0)
      else if (Key = VK_LEFT) and (CursorPos=0) then
        PostMessage(fInventeraPIG.Handle,CM_MOVEIT, Integer(False), 0);
    end;
 Except
 End ;
end;

procedure TfInventeraPIG.FormDestroy(Sender: TObject);
begin
 fInventeraPIG:= Nil ;
end;

procedure TfInventeraPIG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfInventeraPIG.lcLAGERSTALLEPropertiesInitPopup(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
//  if not cds_LoadPlanDestSalesRegionNo.IsNull then
  Begin
   cds_PhysInv.Filter:= 'OwnerNo = '+cds_PigHdrSalesRegionNo.AsString ;
   cds_PhysInv.Filtered:= True ;
  End ;
 End ;
end;

procedure TfInventeraPIG.lcLAGERSTALLEPropertiesCloseUp(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if cds_PigHdr.UpdateOptions.ReadOnly = False then
  Begin
   if cds_PigHdr.State = dsBrowse then
   cds_PigHdr.Edit ;
   cds_PigHdrLIPNo.AsVariant:= null ;
  End ;

  cds_PhysInv.Filtered:= False ;
 End ;
end;

procedure TfInventeraPIG.lcLAGERGRUPPPropertiesInitPopup(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if not cds_PigHdrPIPNo.IsNull then
  Begin
   cds_LogInv.Filter:= 'PIPNo = '+cds_PigHdrPIPNo.AsString ;
   cds_LogInv.Filtered:= True ;
  End ;
 End ;
end;

procedure TfInventeraPIG.lcLAGERGRUPPPropertiesCloseUp(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
//  if not cds_PigHdrPIPNo.IsNull then
  Begin
   cds_LogInv.Filtered:= False ;
  End ;
 End ;
end;

procedure TfInventeraPIG.acChangeLayoutExecute(Sender: TObject);
begin
  if grdPig.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdPig.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfInventeraPIG.acDeletePigExecute(Sender: TObject);
begin
 if MessageDlg('Är du säker?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmLoadPlan do
 Begin
  cds_PigHdr.Delete ;
  if cds_PigHdr.ChangeCount > 0 then
   cds_PigHdr.ApplyUpdates(0) ;
 End ;
end;

procedure TfInventeraPIG.cbHideNullColumnsClick(Sender: TObject);
Var I,x         : Integer ;
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 grdPIGDBBandedTableView1.BeginUpdate ;
 x:= 0 ;
 Try
 if cbHideNullColumns.Checked then
 Begin
  For I := 7 to grdPIGDBBandedTableView1.ColumnCount - 4 do
   if grdPIGDBBandedTableView1.DataController.Summary.FooterSummaryValues[
   grdPIGDBBandedTableView1.DataController.Summary.FooterSummaryItems.IndexOfItemLink(grdPIGDBBandedTableView1.Columns[I])] = 0 then
   Begin
    grdPIGDBBandedTableView1.Columns[I].Visible:= False  ;
    x := succ(x) ;
   End ;

  grdPIGDBBandedTableView1.Bands[1].ApplyBestFit(False, False);
 End
 else
 Begin
  SetAllColumnsVisible ;
 End ;

 Finally
  grdPIGDBBandedTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfInventeraPIG.FormShow(Sender: TObject);
Var PackageTypeNo : Integer ;
begin
 dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdPIGDBBandedTableView1.Name, grdPIGDBBandedTableView1) ;
 grdPIGDBBandedTableView1.ViewData.Expand(True);

(*  with TIniFile.Create(dmsConnector.DriveLetter+'VIS\KONFIG\VIS_dmLoadPlan.INI') do
  try
 //  WriteInteger('Locate', 'PackageTypeNo', cds_PigEntryPackageTypeNo.AsInteger) ;
   PackageTypeNo  := ReadInteger ('Locate', 'PackageTypeNo', -1) ;
  Finally
   Free ;
  End ;

 With dmLoadPlan do
 Begin
  if PackageTypeNo > -1 then
  cds_PigEntry.Locate('PackageTypeNo', PackageTypeNo, []) ;
 End ; *)
end;

procedure TfInventeraPIG.lcInventeringstypPropertiesChange(
  Sender: TObject);
begin
 SetKolumnName ;
end;

procedure TfInventeraPIG.acAdjustInventoryExecute(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  cds_PigEntry.DisableControls ;
  cds_PigHdr.UpdateOptions.ReadOnly:= False ;
  Try
  Try
  AdjustInventoryAccordingToDifference ;
  if cds_PigHdr.State = dsBrowse then
  cds_PigHdr.Edit ;
  cds_PigHdrStatus.AsInteger:= 3 ;
  cds_PigHdr.Post ;
  acSaveExecute(Sender) ;
  Except
    On E: Exception do
     ShowMessage(E.Message) ;
  End ;

  Finally
   cds_PigHdr.UpdateOptions.ReadOnly:= True ;
   cds_PigEntry.EnableControls ;
  End ;
 End ;
end;

procedure TfInventeraPIG.acAdjustInventoryUpdate(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  acAdjustInventory.Enabled:= (cds_PigHdr.Active) and (cds_PigHdrInvTypeNo.AsInteger = 1)
  AND (cds_PigHdrStatus.AsInteger = 2)
  AND (DataSaved) ;
 End ;
end;

procedure TfInventeraPIG.addRowExecute(Sender: TObject);
Var fEntryField   : TfEntryField;
    PackageTypeNo : Integer ;
begin
 With dmLoadPlan do
 Begin
  fEntryField:= TfEntryField.Create(nil);
//  fEntryField.eValue.Properties.EditMask:= '' ;
  fEntryField.LTitle.Caption:= 'Paketkod:' ;
  fEntryField.Caption:= 'Ange paketkod' ;
  fEntryField.PanelLength.Visible  := False ;
  Try
  if fEntryField.ShowModal = mrOK then
  Begin
   PackageTypeNo := fEntryField.seAntalPaket.Value ;//  dmsSystem.GetPackageTypeNoByPkgcode(fEntryField.eValue.Text);
   if PackageTypeNo > 0 then
   Begin
    if not cds_PigEntry.Locate('PackageTypeNo', PackageTypeNo, []) then
    Begin
     Try
     cds_PigEntry.Append ;
     cds_PigEntryPackageTypeNo.AsInteger:= PackageTypeNo ;
     cds_PigEntry.Post ;
     cds_PigEntry.Refresh ;
     if PackageTypeNo > -1 then
      cds_PigEntry.Locate('PackageTypeNo', PackageTypeNo, []) ;
     Except
      on EDataBaseError do
       cds_PigEntry.Cancel ;
     End ;
    End
     else
      ShowMessage('Paketkoden finns redan i listan!') ;
   End
    else
     ShowMessage(inttostr(fEntryField.seAntalPaket.Value)+' är inte en paketkod.') ;
  End ;
  Finally
   FreeAndNil(fEntryField) ;
  End ;
 End ;
end;

procedure TfInventeraPIG.addRowUpdate(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  addRow.Enabled:= cds_PigHdrStatus.AsInteger = 1 ;
 End ;
end;

procedure TfInventeraPIG.acShowGroupBoxExecute(Sender: TObject);
begin
 grdPIGDBBandedTableView1.OptionsView.GroupByBox:= not grdPIGDBBandedTableView1.OptionsView.GroupByBox ;
end;

procedure TfInventeraPIG.acGroupSummaryExecute(Sender: TObject);
begin
 if grdPIGDBBandedTableView1.OptionsView.GroupFooters = gfInvisible then
  grdPIGDBBandedTableView1.OptionsView.GroupFooters:= gfAlwaysVisible
   else
    grdPIGDBBandedTableView1.OptionsView.GroupFooters:= gfInvisible ;
end;

procedure TfInventeraPIG.acExpandAllExecute(Sender: TObject);
begin
 grdPIGDBBandedTableView1.ViewData.Expand(True);
end;

procedure TfInventeraPIG.acCollapseAllExecute(Sender: TObject);
begin
 grdPIGDBBandedTableView1.ViewData.Collapse(True);
end;

end.
