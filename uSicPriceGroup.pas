unit uSicPriceGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ActnList, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, Buttons, cxLabel, cxTextEdit, cxCalc, cxCalendar,
  cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  TfSicPriceGroup = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ActionList1: TActionList;
    acAddPriceGroup: TAction;
    acRemovePriceGroup: TAction;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    grdPriceGroupDBTableView1: TcxGridDBTableView;
    grdPriceGroupLevel1: TcxGridLevel;
    grdPriceGroup: TcxGrid;
    grdPriceGroupDBTableView1PriceGroupNo: TcxGridDBColumn;
    grdPriceGroupDBTableView1PriceGroupName: TcxGridDBColumn;
    grdPriceGroupDBTableView1OwnerNo: TcxGridDBColumn;
    grdPriceGroupDBTableView1DateCreated: TcxGridDBColumn;
    grdPriceGroupDBTableView1CreatedUser: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    acSave: TAction;
    acCancelChanges: TAction;
    cxButton4: TcxButton;
    BitBtn1: TBitBtn;
    Panel7: TPanel;
    grdGroupPriceDBTableView1: TcxGridDBTableView;
    grdGroupPriceLevel1: TcxGridLevel;
    grdGroupPrice: TcxGrid;
    cxButton5: TcxButton;
    acRefreshAndUpdateGroupPrice: TAction;
    grdGroupPriceDBTableView1PriceGroupNo: TcxGridDBColumn;
    grdGroupPriceDBTableView1IC_GrpNo: TcxGridDBColumn;
    grdGroupPriceDBTableView1PricePerNM3: TcxGridDBColumn;
    grdGroupPriceDBTableView1MaxDatum: TcxGridDBColumn;
    siLangLinked_fSicPriceGroup: TsiLangLinked;
    procedure acAddPriceGroupExecute(Sender: TObject);
    procedure acRemovePriceGroupExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acRemovePriceGroupUpdate(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acRefreshAndUpdateGroupPriceExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function  DataSaved : Boolean ;
  public
    { Public declarations }
  end;

//var fSicPriceGroup: TfSicPriceGroup;

implementation

uses dmcInvCtrl, dmsDataConn;

{$R *.dfm}

function TfSicPriceGroup.DataSaved : Boolean ;
begin
 With dmInvCtrl do
 Begin
  Result  := True ;
  if cds_PriceGroup.State in [dsEdit, dsInsert] then
   Result := False ;
  if cds_PriceGroup.ChangeCount > 0 then
   Result := False ;

  if cds_GP.State in [dsEdit, dsInsert] then
   Result := False ;
  if cds_GP.ChangeCount > 0 then
   Result := False ;
 End ;
end;

procedure TfSicPriceGroup.acAddPriceGroupExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_PriceGroup.Insert ;
  grdPriceGroup.SetFocus ;
 End ;
end;

procedure TfSicPriceGroup.acRemovePriceGroupExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_PriceGroup.Delete ;
 End ;
end;

procedure TfSicPriceGroup.acSaveExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if cds_PriceGroup.State in [dsEdit, dsInsert] then
   cds_PriceGroup.Post ;
  if cds_PriceGroup.ChangeCount > 0 then
   cds_PriceGroup.ApplyUpdates(0) ;

  if cds_GP.State in [dsEdit, dsInsert] then
   cds_GP.Post ;
  if cds_GP.ChangeCount > 0 then
   cds_GP.ApplyUpdates(0) ;

  acRefreshAndUpdateGroupPriceExecute(Sender) ;
 End ;
end;

procedure TfSicPriceGroup.acCancelChangesExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if cds_GP.State in [dsEdit, dsInsert] then
   cds_GP.Cancel ;
  if cds_GP.ChangeCount > 0 then
   cds_GP.CancelUpdates ;

  if cds_PriceGroup.State in [dsEdit, dsInsert] then
   cds_PriceGroup.Cancel ;
  if cds_PriceGroup.ChangeCount > 0 then
   cds_PriceGroup.CancelUpdates ;
 End ;
end;

procedure TfSicPriceGroup.acRemovePriceGroupUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acRemovePriceGroup.Enabled  := (cds_PriceGroup.Active) and (cds_PriceGroup.RecordCount > 0) ;
 End ;
end;

procedure TfSicPriceGroup.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled := not DataSaved ;
end;

procedure TfSicPriceGroup.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled := not DataSaved ;
end;

procedure TfSicPriceGroup.acRefreshAndUpdateGroupPriceExecute(
  Sender: TObject);
begin
 With dmInvCtrl do
 Begin

  if cds_GP.State in [dsEdit, dsInsert] then
   cds_GP.Post ;
  if cds_GP.ChangeCount > 0 then
   cds_GP.ApplyUpdates(0) ;

  Try
  sq_updGroupPrice.ParamByName('OwnerNo').AsInteger   := cds_InvCtrlGrpOwnerNo.AsInteger ;
  sq_updGroupPrice.ParamByName('IC_GrpNo').AsInteger  := cds_InvCtrlGrpIC_grpno.AsInteger ;
  sq_updGroupPrice.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

  cds_GP.Active := False ;
  cds_GP.Active := True ;
 End ;//With
end;

procedure TfSicPriceGroup.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if DataSaved = False then
 if MessageDlg(siLangLinked_fSicPriceGroup.GetTextOrDefault('IDS_0' (* 'Vill du spara innan du stänger? ' *) )
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  Application.ProcessMessages ;
  acSaveExecute(Sender) ;
 End ;
end;

procedure TfSicPriceGroup.FormShow(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  Caption  := siLangLinked_fSicPriceGroup.GetTextOrDefault('IDS_1' (* 'Prisgrupper. Lagerinventering nr ' *) ) + IntToStr(cds_InvCtrlGrpIC_grpno.AsInteger) ;
 End ;
end;

end.
