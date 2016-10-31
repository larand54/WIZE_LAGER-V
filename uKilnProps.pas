unit uKilnProps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons, ActnList, dxBar, dxBarExtItems, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, cxImageComboBox,
  dxSkinsdxBarPainter, Vcl.Menus, cxButtons, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, System.Actions, siComp, siLngLnk, cxDBEdit;

type
  TfKilnProps = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    grdKilnsDBTableView1: TcxGridDBTableView;
    grdKilnsLevel1: TcxGridLevel;
    grdKilns: TcxGrid;
    grdKilnsDBTableView1KilnNo: TcxGridDBColumn;
    grdKilnsDBTableView1KilnName: TcxGridDBColumn;
    grdKilnsDBTableView1ClientNo: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    ActionList1: TActionList;
    acAddKiln: TAction;
    acDeleteKiln: TAction;
    acSave: TAction;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    dxBarDockControl3: TdxBarDockControl;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    acClose: TAction;
    grdKilnsDBTableView1NoOfVagnar: TcxGridDBColumn;
    grdKilnsDBTableView1TypeOfKiln: TcxGridDBColumn;
    Panel10: TPanel;
    Panel11: TPanel;
    cxButton1: TcxButton;
    acAddChannel: TAction;
    acRemoveChannel: TAction;
    cxButton2: TcxButton;
    grdChannelsDBTableView1: TcxGridDBTableView;
    grdChannelsLevel1: TcxGridLevel;
    grdChannels: TcxGrid;
    grdChannelsDBTableView1ClientNo: TcxGridDBColumn;
    grdChannelsDBTableView1KilnChargeNo: TcxGridDBColumn;
    grdChannelsDBTableView1KilnNo: TcxGridDBColumn;
    grdChannelsDBTableView1StartTime: TcxGridDBColumn;
    grdChannelsDBTableView1EndTime: TcxGridDBColumn;
    grdChannelsDBTableView1PlannedDuration: TcxGridDBColumn;
    grdChannelsDBTableView1CreatedDate: TcxGridDBColumn;
    grdChannelsDBTableView1CreatedUser: TcxGridDBColumn;
    grdChannelsDBTableView1Status: TcxGridDBColumn;
    grdChannelsDBTableView1Note: TcxGridDBColumn;
    grdChannelsDBTableView1Info: TcxGridDBColumn;
    grdKilnsDBTableView1NoOfVagnarBefore: TcxGridDBColumn;
    siLangLinked_fKilnProps: TsiLangLinked;
    grdKilnsDBTableView1TypeOfLine: TcxGridDBColumn;
    dxBarLargeButton6: TdxBarLargeButton;
    acAddKilnGroup: TAction;
    Panel12: TPanel;
    lcVerk: TcxDBLookupComboBox;
    lcLagerstlleItork: TcxDBLookupComboBox;
    lcFretork: TcxDBLookupComboBox;
    lcI_tork: TcxDBLookupComboBox;
    lcEfterTork: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    teGroupName: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    Panel13: TPanel;
    Panel14: TPanel;
    grdLagerGrupperDBTableView1: TcxGridDBTableView;
    grdLagerGrupperLevel1: TcxGridLevel;
    grdLagerGrupper: TcxGrid;
    grdLagerGrupperDBTableView1ClientNo: TcxGridDBColumn;
    grdLagerGrupperDBTableView1Kiln_PIPNo: TcxGridDBColumn;
    grdLagerGrupperDBTableView1BeforeKiln_LIPNo: TcxGridDBColumn;
    grdLagerGrupperDBTableView1Kiln_LIPNo: TcxGridDBColumn;
    grdLagerGrupperDBTableView1AfterKiln_LIPNo: TcxGridDBColumn;
    grdLagerGrupperDBTableView1Lagerstlle: TcxGridDBColumn;
    grdLagerGrupperDBTableView1Fretork: TcxGridDBColumn;
    grdLagerGrupperDBTableView1I_tork: TcxGridDBColumn;
    grdLagerGrupperDBTableView1EfterTork: TcxGridDBColumn;
    grdLagerGrupperDBTableView1Verk: TcxGridDBColumn;
    grdLagerGrupperDBTableView1KilnPropsID: TcxGridDBColumn;
    grdLagerGrupperDBTableView1GroupName: TcxGridDBColumn;
    lcLagerstalleBeforeKiln: TcxDBLookupComboBox;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    lcLagerstalleAfterKiln: TcxDBLookupComboBox;
    cxLabel10: TcxLabel;
    grdLagerGrupperDBTableView1BeforeKiln_PIPNo: TcxGridDBColumn;
    grdLagerGrupperDBTableView1AfterKiln_PIPNo: TcxGridDBColumn;
    grdLagerGrupperDBTableView1LagerstlleBeforeKiln: TcxGridDBColumn;
    grdLagerGrupperDBTableView1LagerstlleAfterKiln: TcxGridDBColumn;
    grdChannelsDBTableView1KilnPropsID: TcxGridDBColumn;
    dxBarLargeButton7: TdxBarLargeButton;
    acCancelChanges: TAction;
    grdKilnsDBTableView1KilnPropsID: TcxGridDBColumn;
    grdKilnsDBTableView1DefaultDuration: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acAddKilnExecute(Sender: TObject);
    procedure acDeleteKilnExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acAddKilnUpdate(Sender: TObject);
    procedure acDeleteKilnUpdate(Sender: TObject);
    procedure acRemoveChannelUpdate(Sender: TObject);
    procedure acAddChannelUpdate(Sender: TObject);
    procedure acAddChannelExecute(Sender: TObject);
    procedure acAddKilnGroupExecute(Sender: TObject);
    procedure acAddKilnGroupUpdate(Sender: TObject);
    procedure lcFretorkEnter(Sender: TObject);
    procedure lcFretorkExit(Sender: TObject);
    procedure lcI_torkEnter(Sender: TObject);
    procedure lcEfterTorkEnter(Sender: TObject);
    procedure lcI_torkExit(Sender: TObject);
    procedure lcEfterTorkExit(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    Delete_dm_DryKiln : Boolean ;
    function DataSaved : Boolean ;
  public
    { Public declarations }
  end;

//var fKilnProps: TfKilnProps;

implementation

uses dmc_DryKiln, dmsDataConn, VidaUser ;

{$R *.dfm}

function TfKilnProps.DataSaved : Boolean ;
begin
 Result := True ;
 With dm_DryKiln do
 Begin
  if cds_Kilns.State in [dsEdit, dsInsert] then
    Result:= False ;
  if cds_Kilns.ChangeCount > 0 then
    Result:= False ;

  if cds_KilnProps.State in [dsEdit, dsInsert] then
    Result:= False ;
  if cds_KilnProps.ChangeCount > 0 then
    Result:= False ;

  if cds_KilnChargeHeader.State in [dsEdit, dsInsert] then
    Result:= False ;
  if cds_KilnChargeHeader.ChangeCount > 0 then
    Result:= False ;

 End ;//with
end;

procedure TfKilnProps.FormCreate(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  if not Assigned(dm_DryKiln) then
  Begin
   dm_DryKiln:= Tdm_DryKiln.Create(Nil);
   Delete_dm_DryKiln:= True ;
  End
   else
    Delete_dm_DryKiln:= False ;


   cds_KilnProps.Active:= False ;
   cds_KilnProps.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
   cds_KilnProps.Active:= True ;

//  if not cds_Kilns.Active then
//  Begin
{
     cds_Kilns.Active          := False ;
     cds_Kilns.ParamByName('KilnPropsID').AsInteger:= cds_KilnPropsKilnPropsID.AsInteger ;
     cds_Kilns.Active          := True ;
}
//  End ;


  cds_KilnChargeHeader.Active := True ;


//  if not cds_KilnProps.Active then
//  Begin

//  End ;

{    cds_PIP.Active:= False ;
    sq_PIP.ParamByName('OwnerNo').AsInteger:= cds_KilnPropsClientNo.AsInteger ;
    cds_PIP.Active:= True ;
    cds_LIP.Active:= False ;
    sq_LIP.ParamByName('PIPNo').AsInteger:= cds_KilnPropsKiln_PIPNo.AsInteger ;
    cds_LIP.Active:= True ; }

   if cds_KilnProps.RecordCount = 0 then
   Begin
    cds_KilnProps.Insert ;
    cds_KilnPropsClientNo.AsInteger:= ThisUser.CompanyNo ;
    cds_KilnProps.Post ;
   End  ;
{
     else
     Begin
      if cds_KilnPropsClientNo.AsInteger > 0 then
      Begin
       cds_PIP.Filter   := 'OwnerNo = ' + cds_KilnPropsClientNo.AsString ;
       cds_PIP.Filtered := True ;
       if cds_KilnPropsKiln_PIPNo.AsInteger > 0 then
        cds_LIP.Filter   := 'PIPNo = ' + cds_KilnPropsKiln_PIPNo.AsString
         else
          cds_LIP.Filter   := 'PIPNo = -1' ;
       cds_LIP.Filtered := True ;
      End
      else
      Begin
       cds_PIP.Filter   := 'OwnerNo = -1' ;
       cds_PIP.Filtered := True ;
       cds_LIP.Filter   := 'PIPNo = -1' ;
       cds_LIP.Filtered := True ;
      End;
     End ;
}
  End ;

end;

procedure TfKilnProps.FormDestroy(Sender: TObject);
begin
 if Delete_dm_DryKiln then
 Begin
//  if Assigned(dm_DryKiln) then
//   FreeAndNil(dm_DryKiln);
 End ;
end;

procedure TfKilnProps.FormShow(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  if cds_KilnPropsClientNo.AsInteger > 0 then
    Begin
     cds_PIP.Filter   := 'OwnerNo = ' + cds_KilnPropsClientNo.AsString ;
     cds_PIP.Filtered := True ;
    End;
 End;
end;

procedure TfKilnProps.lcEfterTorkEnter(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  if cds_KilnPropsClientNo.AsInteger > 0 then
    Begin
     if cds_KilnPropsAfterKiln_PIPNo.AsInteger > 0 then
      cds_LIP.Filter   := 'PIPNo = ' + cds_KilnPropsAfterKiln_PIPNo.AsString
       else
        cds_LIP.Filter   := 'PIPNo = -1' ;
     cds_LIP.Filtered := True ;
    End
    else
    Begin
     cds_LIP.Filter   := 'PIPNo = -1' ;
     cds_LIP.Filtered := True ;
    End;
 End;
end;

procedure TfKilnProps.lcEfterTorkExit(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  cds_LIP.Filtered := False ;
 End;
end;

procedure TfKilnProps.lcFretorkEnter(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  if cds_KilnPropsClientNo.AsInteger > 0 then
    Begin
     if cds_KilnPropsBeforeKiln_PIPNo.AsInteger > 0 then
      cds_LIP.Filter   := 'PIPNo = ' + cds_KilnPropsBeforeKiln_PIPNo.AsString
       else
        cds_LIP.Filter   := 'PIPNo = -1' ;
     cds_LIP.Filtered := True ;
    End
    else
    Begin
     cds_LIP.Filter   := 'PIPNo = -1' ;
     cds_LIP.Filtered := True ;
    End;
 End;
end;

procedure TfKilnProps.lcFretorkExit(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  cds_LIP.Filtered := False ;
 End;
end;

procedure TfKilnProps.lcI_torkEnter(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
 if cds_KilnPropsClientNo.AsInteger > 0 then
    Begin
     if cds_KilnPropsKiln_PIPNo.AsInteger > 0 then
      cds_LIP.Filter   := 'PIPNo = ' + cds_KilnPropsKiln_PIPNo.AsString
       else
        cds_LIP.Filter   := 'PIPNo = -1' ;
     cds_LIP.Filtered := True ;
    End
    else
    Begin
     cds_LIP.Filter   := 'PIPNo = -1' ;
     cds_LIP.Filtered := True ;
    End;
 End;
end;

procedure TfKilnProps.lcI_torkExit(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  cds_LIP.Filtered := False ;
 End;
end;

procedure TfKilnProps.acAddChannelExecute(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  cds_KilnChargeHeader.Insert ;
  grdChannels.SetFocus ;
 End
end;

procedure TfKilnProps.acAddChannelUpdate(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  acAddChannel.Enabled  :=  (cds_Kilns.Active) and (cds_Kilns.RecordCount > 0)  ;
 End
end;

procedure TfKilnProps.acAddKilnExecute(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  cds_Kilns.Insert  ;
 End ;//with
end;

procedure TfKilnProps.acAddKilnGroupExecute(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
    cds_KilnProps.Insert ;
    cds_KilnPropsClientNo.AsInteger:= ThisUser.CompanyNo ;
    cds_KilnProps.Post ;
{

      if cds_KilnPropsClientNo.AsInteger > 0 then
      Begin
       cds_PIP.Filter   := 'OwnerNo = ' + cds_KilnPropsClientNo.AsString ;
       cds_PIP.Filtered := True ;
       if cds_KilnPropsKiln_PIPNo.AsInteger > 0 then
        cds_LIP.Filter   := 'PIPNo = ' + cds_KilnPropsKiln_PIPNo.AsString
         else
          cds_LIP.Filter   := 'PIPNo = -1' ;
       cds_LIP.Filtered := True ;
      End
      else
      Begin
       cds_PIP.Filter   := 'OwnerNo = -1' ;
       cds_PIP.Filtered := True ;
       cds_LIP.Filter   := 'PIPNo = -1' ;
       cds_LIP.Filtered := True ;
      End;
}
 End;//with
end;

procedure TfKilnProps.acAddKilnGroupUpdate(Sender: TObject);
begin
  acAddKilnGroup.Enabled  := DataSaved ;
end;

procedure TfKilnProps.acDeleteKilnExecute(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  cds_Kilns.Delete ;
 End ;//with
end;

procedure TfKilnProps.acSaveExecute(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  if cds_Kilns.State in [dsEdit, dsInsert] then
  cds_Kilns.Post ;
  if cds_Kilns.ChangeCount > 0 then
  Begin
   cds_Kilns.ApplyUpdates(0) ;
   cds_Kilns.CommitUpdates ;
  End;

  if cds_KilnProps.State in [dsEdit, dsInsert] then
   cds_KilnProps.Post ;
  if cds_KilnProps.ChangeCount > 0 then
  Begin
   cds_KilnProps.ApplyUpdates(0) ;
   cds_KilnProps.CommitUpdates ;
  End;

  if cds_KilnChargeHeader.State in [dsEdit, dsInsert] then
   cds_KilnChargeHeader.Post ;
  if cds_KilnChargeHeader.ChangeCount > 0 then
  Begin
   cds_KilnChargeHeader.ApplyUpdates(0) ;
   cds_KilnChargeHeader.CommitUpdates ;
  End;

 End ;//with
end;

procedure TfKilnProps.acCancelChangesExecute(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  if cds_Kilns.State in [dsEdit, dsInsert] then
  cds_Kilns.Cancel ;

  if cds_Kilns.ChangeCount > 0 then
  Begin
   cds_Kilns.CancelUpdates ;
  End;

  if cds_KilnProps.State in [dsEdit, dsInsert] then
   cds_KilnProps.Cancel ;
  if cds_KilnProps.ChangeCount > 0 then
  Begin
   cds_KilnProps.CancelUpdates ;
  End;

  if cds_KilnChargeHeader.State in [dsEdit, dsInsert] then
   cds_KilnChargeHeader.Cancel ;
  if cds_KilnChargeHeader.ChangeCount > 0 then
  Begin
   cds_KilnChargeHeader.CancelUpdates ;
  End;


 End;
end;

procedure TfKilnProps.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled:= not DataSaved ;
end;

procedure TfKilnProps.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfKilnProps.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled:= not DataSaved ;
end;

procedure TfKilnProps.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose:= True ;
 if DataSaved = False then
 Begin
  if MessageDlg(siLangLinked_fKilnProps.GetTextOrDefault('IDS_3' (* 'Data är inte sparat, vill du avsluta?' *) ),
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   CanClose := True
    else
     CanClose := False ;
 End ;
end;

procedure TfKilnProps.acAddKilnUpdate(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  acAddKiln.Enabled:= (cds_KilnProps.RecordCount > 0)
  and (cds_KilnPropsClientNo.AsInteger > 0) ;
 End ;
end;

procedure TfKilnProps.acDeleteKilnUpdate(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  acDeleteKiln.Enabled:= (cds_Kilns.RecordCount > 0)
  or (cds_Kilns.State in [dsEdit, dsInsert]) ;
 End ;
end;

procedure TfKilnProps.acRemoveChannelUpdate(Sender: TObject);
begin
 With dm_DryKiln do
 Begin
  acRemoveChannel.Enabled := (cds_KilnChargeHeader.Active) and (cds_KilnChargeHeader.RecordCount > 0) ;
 End;
end;

end.
