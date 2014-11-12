unit uKilnCharges ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ImgList, ActnList, dxBar, dxBarExtItems,
  ExtCtrls, cxTextEdit, cxCheckBox, cxLabel, cxImageComboBox, cxRichEdit,
  cxCalendar, cxButtonEdit, cxContainer, cxGroupBox, cxRadioGroup, SqlTimSt ;

type
  TfKilnCharges = class(TForm)
    Panel6: TPanel;
    Panel2: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel3: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    Panel4: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    ActionList1: TActionList;
    acClose: TAction;
    imglistActions: TImageList;
    grdKilnChargesDBTableView1: TcxGridDBTableView;
    grdKilnChargesLevel1: TcxGridLevel;
    grdKilnCharges: TcxGrid;
    acNew: TAction;
    acSave: TAction;
    acCancelChanges: TAction;
    Panel1: TPanel;
    Panel5: TPanel;
    grdKilnChargesDBTableView1KilnChargeNo: TcxGridDBColumn;
    grdKilnChargesDBTableView1KilnNo: TcxGridDBColumn;
    grdKilnChargesDBTableView1StartTime: TcxGridDBColumn;
    grdKilnChargesDBTableView1EndTime: TcxGridDBColumn;
    grdKilnChargesDBTableView1PlannedDuration: TcxGridDBColumn;
    grdKilnChargesDBTableView1CreatedDate: TcxGridDBColumn;
    grdKilnChargesDBTableView1CreatedUser: TcxGridDBColumn;
    grdKilnChargesDBTableView1Tork: TcxGridDBColumn;
    grdKilnChargesDBTableView1ClientNo: TcxGridDBColumn;
    grdKilnChargesDBTableView1Status: TcxGridDBColumn;
    acMovePkgsToAfterKiln: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    grdKilnPkgsDBTableView1: TcxGridDBTableView;
    grdKilnPkgsLevel1: TcxGridLevel;
    grdKilnPkgs: TcxGrid;
    acDeleteKilnCharge: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    grdKilnPkgsDBTableView1Produkt: TcxGridDBColumn;
    grdKilnPkgsDBTableView1Antalperlngd: TcxGridDBColumn;
    grdKilnPkgsDBTableView1Paket: TcxGridDBColumn;
    grdKilnPkgsDBTableView1AM3: TcxGridDBColumn;
    grdKilnPkgsDBTableView1KilnChargeNo: TcxGridDBColumn;
    acKilnChargeNote: TAction;
    grdKilnChargesDBTableView1Note: TcxGridDBColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    Panel7: TPanel;
    acEditNote: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    rgStatus: TcxRadioGroup;
    acRefresh: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    procedure acCloseExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acSaveUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acMovePkgsToAfterKilnExecute(Sender: TObject);
    procedure acMovePkgsToAfterKilnUpdate(Sender: TObject);
    procedure acDeleteKilnChargeExecute(Sender: TObject);
    procedure acDeleteKilnChargeUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acKilnChargeNoteExecute(Sender: TObject);
    procedure acEditNoteExecute(Sender: TObject);
    procedure rgStatusPropertiesChange(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
  private
    { Private declarations }
    function  DataSaved : Boolean ;
  public
    { Public declarations }
  end;

//var fKilnCharges: TfKilnCharges ;

implementation

uses dmc_DryKiln, VidaUser , uKilnChargeNote;

{$R *.dfm}

function TfKilnCharges.DataSaved : Boolean ;
begin
 Result:= True ;
 With dm_DryKiln do
 Begin
  if (cds_KilnChargeRow.Active) and (cds_KilnChargeRow.Active) then
  Begin
   if cds_KilnChargeHdr.State in [dsEdit, dsInsert] then
    Result:= False ;
   if cds_KilnChargeHdr.ChangeCount > 0 then
    Result:= False ;

   if cds_KilnChargeRow.State in [dsEdit, dsInsert] then
    Result:= False ;
   if cds_KilnChargeRow.ChangeCount > 0 then
    Result:= False ;
  End ;
 End ;

end;

procedure TfKilnCharges.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfKilnCharges.acSaveExecute(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  if cds_KilnChargeHdr.State in [dsEdit, dsInsert] then
   cds_KilnChargeHdr.Post ;
  if cds_KilnChargeHdr.ChangeCount > 0 then
   cds_KilnChargeHdr.ApplyUpdates(0) ;

  if cds_KilnChargeRow.State in [dsEdit, dsInsert] then
   cds_KilnChargeRow.Post ;
  if cds_KilnChargeRow.ChangeCount > 0 then
   cds_KilnChargeRow.ApplyUpdates(0) ;
 End ;
end;

procedure TfKilnCharges.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= True ;
  if DataSaved = False then
   if MessageDlg('Data är inte sparat, vill du avsluta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    CanClose:= True
    else
    CanClose:= False ;
 With dm_DryKiln do
 Begin
  cds_KilnChargeHdr.Filter      := 'Status = 0' ;
  cds_KilnChargeHdr.Filtered    := True ;
 End ; 
end;

procedure TfKilnCharges.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled:= not DataSaved ;
end;

procedure TfKilnCharges.FormShow(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  cds_Kilns.Active          := False ;
  sq_Kilns.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
  cds_Kilns.Active          := True ;

  if cds_KilnChargeHdr.Active = False then
  Begin
   cds_KilnChargeHdr.Active:= True ;
    if cds_KilnChargeHdr.RecordCount = 0 then
    Begin
     cds_KilnChargeHdr.Active  := False ;
     sq_KilnChargeHdr.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
     cds_KilnChargeHdr.Active  := True ;
    End ;
  End
   else
    if cds_KilnChargeHdr.RecordCount = 0 then
    Begin
     cds_KilnChargeHdr.Active  := False ;
     sq_KilnChargeHdr.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
     cds_KilnChargeHdr.Active  := True ;
    End ;
  //  Get_LastKilnChNo ;

//  cds_KilnChargeRow.Active  := False ;
//  sq_KilnChargeRows.ParamByName('KilnChargeNo').AsInteger:= cds_KilnChargeHdrKilnChargeNo.AsInteger ;
  cds_KilnChargeRow.Active  := False ;
  cds_KilnChargeRow.Active  := True ;

  cds_SumKilnChargeRows.Active  := False ;
  cds_SumKilnChargeRows.Active  := True ;

  cds_KilnProps.Active:= False ;
  sq_KilnProps.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
  cds_KilnProps.Active:= True ;

  cds_KilnChargeHdr.Filter      := 'Status = 0' ;
  cds_KilnChargeHdr.Filtered    := True ;
 End ;
end;

procedure TfKilnCharges.FormCreate(Sender: TObject);
begin
 if not Assigned(dm_DryKiln) then
  dm_DryKiln:= Tdm_DryKiln.Create(Nil);
end;

procedure TfKilnCharges.acMovePkgsToAfterKilnExecute(Sender: TObject);
begin
 if dm_DryKiln.cds_KilnChargeHdrEndTime.IsNull then
 Begin
  ShowMessage('Sluttid saknas') ;
  Exit ;
 End ;
 if MessageDlg('Vill du flytta paket till efter tork och avsluta torksats?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  dm_DryKiln.MoveToAfterKilnAndSetKilnToComplete(dm_DryKiln.cds_KilnChargeHdrKilnChargeNo.AsInteger,
  DateTimeToSqlTimeStamp(dm_DryKiln.cds_KilnChargeHdrEndTime.AsDateTime)) ;
  dm_DryKiln.cds_KilnChargeHdr.Refresh ;
//  dm_DryKiln.cds_KilnChargeHdr.Post ;
//  acSaveExecute(Sender) ;
 End ;
end;

procedure TfKilnCharges.acMovePkgsToAfterKilnUpdate(Sender: TObject);
begin
 acMovePkgsToAfterKiln.Enabled :=
  (dm_DryKiln.cds_KilnChargeHdr.Active)
 and (DataSaved)
 and (dm_DryKiln.cds_KilnChargeHdr.RecordCount > 0)
 and (dm_DryKiln.cds_KilnChargeHdrStatus.AsInteger = 0)
 and (not dm_DryKiln.cds_KilnPropsAfterKiln_LIPNo.IsNull) ;
end;

procedure TfKilnCharges.acDeleteKilnChargeExecute(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  //Kolla att alla rader är borta först
  if MessageDlg('Är du säker',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  cds_KilnChargeHdr.Delete ;
 End ;
end;

procedure TfKilnCharges.acDeleteKilnChargeUpdate(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  acDeleteKilnCharge.Enabled:= (cds_KilnChargeHdr.Active) and (cds_KilnChargeRow.RecordCount = 0) ;
 End ;
end;

procedure TfKilnCharges.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled:= not DataSaved ;
end;

procedure TfKilnCharges.acCancelChangesExecute(Sender: TObject);
begin
 if MessageDlg('Är du säker',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dm_DryKiln do
 Begin
  if cds_KilnChargeHdr.State in [dsEdit, dsInsert] then
   cds_KilnChargeHdr.Cancel ;
  if cds_KilnChargeHdr.ChangeCount > 0 then
   cds_KilnChargeHdr.CancelUpdates ;

  if cds_KilnChargeRow.State in [dsEdit, dsInsert] then
   cds_KilnChargeRow.Cancel ;
  if cds_KilnChargeRow.ChangeCount > 0 then
   cds_KilnChargeRow.CancelUpdates ;
 End ;
end;

procedure TfKilnCharges.acKilnChargeNoteExecute(Sender: TObject);
var  fKilnChargeNote: TfKilnChargeNote;
begin
 fKilnChargeNote:= TfKilnChargeNote.Create(nil);
 Try
  fKilnChargeNote.ShowModal ;
 Finally
  FreeAndNil(fKilnChargeNote) ;
 End ;
end;

procedure TfKilnCharges.acEditNoteExecute(Sender: TObject);
var   fKilnChargeNote           : TfKilnChargeNote;
      cds_KilnChargeHdrREADONLY : Boolean ;
begin
 dm_DryKiln.ds_KilnChargeHdr.OnDataChange:= nil ;
 fKilnChargeNote:= TfKilnChargeNote.Create(nil);
 Try
  if dm_DryKiln.cds_KilnChargeHdr.ReadOnly then
  Begin
   cds_KilnChargeHdrREADONLY              := dm_DryKiln.cds_KilnChargeHdr.ReadOnly ;
   dm_DryKiln.cds_KilnChargeHdr.ReadOnly  := False ;
  End ;
  if fKilnChargeNote.ShowModal = mrOK then
  Begin
   acSaveExecute(Sender) ;
   if cds_KilnChargeHdrREADONLY then
    dm_DryKiln.cds_KilnChargeHdr.ReadOnly:= cds_KilnChargeHdrREADONLY ;
  End ;
//   else

 Finally
  FreeAndNil(fKilnChargeNote) ;
  dm_DryKiln.ds_KilnChargeHdr.OnDataChange:= dm_DryKiln.ds_KilnChargeHdrDataChange ;
 End ;
end;

procedure TfKilnCharges.rgStatusPropertiesChange(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  Case rgStatus.ItemIndex of
    0 : cds_KilnChargeHdr.Filtered:= False ;
    1 : Begin
         cds_KilnChargeHdr.Filter   := 'Status = 0' ;
         cds_KilnChargeHdr.Filtered := True ;
        End ;
    2 : Begin
         cds_KilnChargeHdr.Filter   := 'Status = 1' ;
         cds_KilnChargeHdr.Filtered:= True ;
        End ;
  End ;//Case
 End ;//with
end;

procedure TfKilnCharges.acRefreshExecute(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  cds_Kilns.Active                                  := False ;
  sq_Kilns.ParamByName('ClientNo').AsInteger        := ThisUser.CompanyNo ;
  cds_Kilns.Active                                  := True ;

  cds_KilnChargeHdr.Active                          := False ;
  sq_KilnChargeHdr.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
  cds_KilnChargeHdr.Active                          := True ;
 End ;
end;

end.
