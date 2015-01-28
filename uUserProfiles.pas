unit uUserProfiles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxImageComboBox, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, ExtCtrls, ActnList, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxNavigator, siComp, siLngLnk, System.Actions;

type
  TfUserProfiles = class(TForm)
    Panel1: TPanel;
    PanelStatus: TPanel;
    cxLabel2: TcxLabel;
    lcPRODUCER: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    lcOwner: TcxDBLookupComboBox;
    grdProfilesDBTableView1: TcxGridDBTableView;
    grdProfilesLevel1: TcxGridLevel;
    grdProfiles: TcxGrid;
    Panel2: TPanel;
    grdProfilesDBTableView1VerkNo: TcxGridDBColumn;
    grdProfilesDBTableView1OwnerNo: TcxGridDBColumn;
    grdProfilesDBTableView1UserID: TcxGridDBColumn;
    grdProfilesDBTableView1Form: TcxGridDBColumn;
    grdProfilesDBTableView1Name: TcxGridDBColumn;
    grdProfilesDBTableView1Producer: TcxGridDBColumn;
    grdProfilesDBTableView1Owner: TcxGridDBColumn;
    grdProfilesDBTableView1NewItemRow: TcxGridDBColumn;
    ActionList1: TActionList;
    acNewProfile: TAction;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    acDeleteProfile: TAction;
    cxButton3: TcxButton;
    acSaveProfile: TAction;
    acClose: TAction;
    lcPIP: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    lcLIP: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    grdProfilesDBTableView1PIPNo: TcxGridDBColumn;
    grdProfilesDBTableView1LIPNo: TcxGridDBColumn;
    grdProfilesDBTableView1RegPointNo: TcxGridDBColumn;
    grdProfilesDBTableView1PIP: TcxGridDBColumn;
    grdProfilesDBTableView1LIP: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    grdProfilesDBTableView1ProducerNo: TcxGridDBColumn;
    teName: TcxDBTextEdit;
    Label1: TLabel;
    cxButton4: TcxButton;
    lcRawPIP: TcxDBLookupComboBox;
    cxLabel9: TcxLabel;
    siLangLinked_fUserProfiles: TsiLangLinked;
    procedure acNewProfileExecute(Sender: TObject);
    procedure acDeleteProfileExecute(Sender: TObject);
    procedure acSaveProfileExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acSaveProfileUpdate(Sender: TObject);
    procedure acDeleteProfileUpdate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure lcPIPEnter(Sender: TObject);
    procedure lcPIPExit(Sender: TObject);
    procedure lcLIPEnter(Sender: TObject);
    procedure lcLIPExit(Sender: TObject);
    procedure lcRawPIPEnter(Sender: TObject);
    procedure lcRawPIPExit(Sender: TObject);
    procedure lcRawLIPEnter(Sender: TObject);
    procedure lcRawLIPExit(Sender: TObject);
  private
    { Private declarations }
    function  SavedOK : Boolean ;
  public
    { Public declarations }
  end;

//var fUserProfiles: TfUserProfiles;

implementation

uses dmsDataConn, dmsVidaContact, VidaUser, vidaconst,  dmcVidaSystem;

{$R *.dfm}
function TfUserProfiles.SavedOK : Boolean ;
Begin
 with dmcSystem do
 Begin
  Result := True ;
  if cds_UserProfile.State in [dsEdit, dsInsert] then
   Result := False ;
  if cds_UserProfile.ChangeCount > 0 then
   Result := False ;
 End ;
End ;

procedure TfUserProfiles.acNewProfileExecute(Sender: TObject);
begin
 with dmcSystem do
 Begin
  cds_UserProfile.Insert ;

  cds_UserProfileName.AsString            := siLangLinked_fUserProfiles.GetTextOrDefault('IDS_0' (* 'Ange profilnamn här' *) ) ;
  cds_UserProfileForm.AsString            := 'frmMain' ;
  cds_UserProfileUserID.AsInteger         := ThisUser.UserID ;

  cds_UserProfileStatus.AsInteger         := 10 ;

//  cds_UserProfileAutoColWidth.AsInteger   :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
  cds_UserProfileVerkNo.AsInteger         :=  ThisUser.CompanyNo ;

//  if cds_UserProfileAutoColWidth.AsInteger = cLego then
//  Begin
   cds_UserProfileOwnerNo.AsInteger       :=  VIDA_WOOD_COMPANY_NO ;
//   cds_UserProfilePIPNo.AsInteger         :=  dmsContact.GetPIPByClientNoPIPNO(ThisUser.CompanyNo) ;
//  End
//  else
  cds_UserProfileOwnerNo.AsInteger        :=  ThisUser.CompanyNo ;

  cds_UserProfileInputOption.AsInteger    :=  0 ;
  cds_UserProfileRegDate.AsDateTime       :=  Now ;
  cds_UserProfileCopyPcs.AsInteger        :=  1 ;
  cds_UserProfileRunNo.AsInteger          :=  -1 ;
  cds_UserProfileProducerNo.AsInteger     :=  ThisUser.CompanyNo ;
  cds_UserProfileAutoColWidth.AsInteger   :=  1 ;
  cds_UserProfileSupplierCode.AsString    := dmsContact.GetClientCode(cds_UserProfileProducerNo.AsInteger) ;
//  cds_UserProfileLengthGroupNo.AsInteger  := 1 ;

  teName.SetFocus ;
 End ;
end;

procedure TfUserProfiles.acDeleteProfileExecute(Sender: TObject);
begin
 with dmcSystem do
 Begin
  cds_UserProfile.Delete ;
 End ;
end;

procedure TfUserProfiles.acSaveProfileExecute(Sender: TObject);
begin
 with dmcSystem do
 Begin
  if cds_UserProfile.State in [dsEdit, dsInsert] then
   cds_UserProfile.Post ;
  if cds_UserProfile.ChangeCount > 0 then
  Begin
   cds_UserProfile.ApplyUpdates(0) ;
   cds_UserProfile.CommitUpdates ;
  End ;
//  frmSortOrder.SaveAllUserProfileGrids ;
 End ;
end;

procedure TfUserProfiles.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfUserProfiles.acSaveProfileUpdate(Sender: TObject);
begin
 acSaveProfile.Enabled  := not SavedOK ;
end;

procedure TfUserProfiles.acDeleteProfileUpdate(Sender: TObject);
begin
 with dmcSystem do
 Begin
  acDeleteProfile.Enabled := (cds_UserProfile.Active) and
   (cds_UserProfile.RecordCount > 0) ;
 End ;
end;

procedure TfUserProfiles.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if not SavedOK then
 Begin
  if MessageDlg(siLangLinked_fUserProfiles.GetTextOrDefault('IDS_2' (* 'Ändringar är inte sparade, vill du stänga?' *) ) ,
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  CanClose := True
   else
    CanClose := False ;
 End
 else
 CanClose := True ;
end;

procedure TfUserProfiles.lcPIPEnter(Sender: TObject);
begin
 With dmcSystem do
 Begin
  if (cds_UserProfile.Active) and (not cds_UserProfileOwnerNo.IsNull) then
  cds_PIP.Filter  := 'OwnerNo = ' + cds_UserProfileOwnerNo.AsString
  else
  cds_PIP.Filter    := 'OwnerNo = -1' ;
  cds_PIP.Filtered  := True ;
 End ;
end;

procedure TfUserProfiles.lcPIPExit(Sender: TObject);
begin
 With dmcSystem do
 Begin
  cds_PIP.Filtered  := False ;
 End ;
end;

procedure TfUserProfiles.lcLIPEnter(Sender: TObject);
begin
 With dmcSystem do
 Begin
  if (cds_UserProfile.Active) and (not cds_UserProfilePIPNo.IsNull) then
  cds_LIP.Filter  := 'PIPNo = ' + cds_UserProfilePIPNo.AsString
  else
  cds_LIP.Filter    := 'PIPNo = -1';
  cds_LIP.Filtered  := True ;
 End ;
end;

procedure TfUserProfiles.lcLIPExit(Sender: TObject);
begin
 With dmcSystem do
 Begin
  cds_LIP.Filtered  := False ;
 End ;
end;

procedure TfUserProfiles.lcRawPIPEnter(Sender: TObject);
begin
 With dmcSystem do
 Begin
  if (cds_UserProfile.Active) and (not cds_UserProfileProducerNo.IsNull) then
  cds_PhysInv.Filter  := 'OwnerNo = ' + cds_UserProfileProducerNo.AsString
  else
  cds_PhysInv.Filter    := 'OwnerNo = -1' ;
  cds_PhysInv.Filtered  := True ;
 End ;
end;

procedure TfUserProfiles.lcRawPIPExit(Sender: TObject);
begin
 With dmcSystem do
 Begin
  cds_PhysInv.Filtered  := False ;
 End ;
end;

procedure TfUserProfiles.lcRawLIPEnter(Sender: TObject);
begin
 With dmcSystem do
 Begin
  if (cds_UserProfile.Active) and (not cds_UserProfileBarCodeNo.IsNull) then
  cds_LIP.Filter  := 'PIPNo = ' + cds_UserProfileBarCodeNo.AsString
  else
  cds_LIP.Filter    := 'PIPNo = -1';
  cds_LIP.Filtered  := True ;
 End ;
end;

procedure TfUserProfiles.lcRawLIPExit(Sender: TObject);
begin
 With dmcSystem do
 Begin
  cds_LIP.Filtered  := False ;
 End ;
end;

end.
