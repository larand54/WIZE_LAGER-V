unit uAccParams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ActnList, cxPC, ExtCtrls, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxLabel, cxContainer,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit, cxCalc, cxLookAndFeels,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator, siComp,
  siLngLnk, System.Actions;

Const
    CM_MOVEIT = WM_USER + 1;

type
  TfAccParams = class(TForm)
    Panel1: TPanel;
    cxPageControl1: TcxPageControl;
    tsAccParams: TcxTabSheet;
    tsAccInv: TcxTabSheet;
    Panel2: TPanel;
    ActionList1: TActionList;
    Panel3: TPanel;
    grdAccParamsDBTableView1: TcxGridDBTableView;
    grdAccParamsLevel1: TcxGridLevel;
    grdAccParams: TcxGrid;
    grdAccInvDBTableView1: TcxGridDBTableView;
    grdAccInvLevel1: TcxGridLevel;
    grdAccInv: TcxGrid;
    grdAccParamsDBTableView1IngoingInv: TcxGridDBColumn;
    grdAccParamsDBTableView1TrimFactor: TcxGridDBColumn;
    grdAccInvDBTableView1ClientNo: TcxGridDBColumn;
    grdAccInvDBTableView1ClientName: TcxGridDBColumn;
    grdAccInvDBTableView1YearNo: TcxGridDBColumn;
    grdAccInvDBTableView1WeekNo: TcxGridDBColumn;
    grdAccInvDBTableView1SawProd: TcxGridDBColumn;
    grdAccInvDBTableView1IntInDel: TcxGridDBColumn;
    grdAccInvDBTableView1ExtInDel: TcxGridDBColumn;
    grdAccInvDBTableView1ExtUtlev: TcxGridDBColumn;
    grdAccInvDBTableView1InvoicedCust: TcxGridDBColumn;
    grdAccInvDBTableView1InvChange: TcxGridDBColumn;
    grdAccInvDBTableView1TotalInv: TcxGridDBColumn;
    grdAccInvDBTableView1TotalInvChangeMill: TcxGridDBColumn;
    grdAccInvDBTableView1TotalInvMill: TcxGridDBColumn;
    grdAccInvDBTableView1VW: TcxGridDBColumn;
    seYearNo: TcxDBSpinEdit;
    seWeekNo: TcxDBSpinEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxButton1: TcxButton;
    acSave: TAction;
    acCancelChanges: TAction;
    cxButton2: TcxButton;
    grdAccParamsDBTableView1ClientName: TcxGridDBColumn;
    cxButton3: TcxButton;
    acAddBorgstena: TAction;
    acRemoveBorgstena: TAction;
    cxButton4: TcxButton;
    siLangLinked_fAccParams: TsiLangLinked;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acAddBorgstenaExecute(Sender: TObject);
    procedure acRemoveBorgstenaExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure grdAccInvDBTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    function  DataSaved : Boolean ;
  public
    { Public declarations }
    procedure CMMoveIt(var Msg: TMessage); message CM_MOVEIT;
  end;

//var fAccParams: TfAccParams;

implementation

uses dmsVidaSystem;

{$R *.dfm}

procedure TfAccParams.CMMoveIt(var Msg: TMessage);
var AGoForward: Boolean;
begin
   AGoForward := Boolean(Msg.WParam);
   grdAccInvDBTableView1.Controller.EditingController.HideEdit(True);
   grdAccInvDBTableView1.Controller.FocusNextCell(AGoForward)
end;

function TfAccParams.DataSaved : Boolean ;
begin
 Result  := True ;
 With dmsSystem do
 Begin
  if sq_AccStart.State in [dsEdit, dsInsert] then
    Result  := False ;
  if sq_AccStart.ChangeCount > 0 then
    Result  := False ;

  if cds_AccInvParam.State in [dsEdit, dsInsert] then
    Result  := False ;
  if cds_AccInvParam.ChangeCount > 0 then
    Result  := False ;

  if cds_AccInv.State in [dsEdit, dsInsert] then
    Result  := False ;
  if cds_AccInv.ChangeCount > 0 then
    Result  := False ;
 End ;
end;

procedure TfAccParams.FormCreate(Sender: TObject);
begin
 With dmsSystem do
 Begin
  sq_AccStart.Active     := True ;
  cds_AccInvParam.Active  := True ;

  cds_AccInv.Active                           := False ;
  cds_AccInv.ParamByName('ClientNo').AsInteger := 830 ;
  cds_AccInv.Active                           := True ;
 End ;
end;

procedure TfAccParams.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if DataSaved = False then
 Begin
 if MessageDlg('Data är inte sparat, vill du stänga? '
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 CanClose := True
 else
 CanClose := False ;
 End
 else
 CanClose := True ;

 if CanClose then
 With dmsSystem do
 Begin
  sq_AccStart.Active     := False ;
  cds_AccInvParam.Active  := False ;
  cds_AccInv.Active       := False ;
 End ;
end;

procedure TfAccParams.acSaveExecute(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if sq_AccStart.State in [dsEdit, dsInsert] then
    sq_AccStart.Post ;
  if sq_AccStart.ChangeCount > 0 then
    sq_AccStart.Applyupdates(0) ;

  if cds_AccInvParam.State in [dsEdit, dsInsert] then
    cds_AccInvParam.Post ;
  if cds_AccInvParam.ChangeCount > 0 then
    cds_AccInvParam.Applyupdates(0) ;

  if cds_AccInv.State in [dsEdit, dsInsert] then
    cds_AccInv.Post ;
  if cds_AccInv.ChangeCount > 0 then
    cds_AccInv.Applyupdates(0) ;
 End ;
end;

procedure TfAccParams.acCancelChangesExecute(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if sq_AccStart.State in [dsEdit, dsInsert] then
    sq_AccStart.Cancel ;
  if sq_AccStart.ChangeCount > 0 then
    sq_AccStart.CancelUpdates ;

  if cds_AccInvParam.State in [dsEdit, dsInsert] then
    cds_AccInvParam.Cancel ;
  if cds_AccInvParam.ChangeCount > 0 then
    cds_AccInvParam.CancelUpdates ;

  if cds_AccInv.State in [dsEdit, dsInsert] then
    cds_AccInv.Cancel ;
  if cds_AccInv.ChangeCount > 0 then
    cds_AccInv.CancelUpdates ;
 End ;
end;

procedure TfAccParams.acAddBorgstenaExecute(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_AccInv.Insert ;
 End ;
end;

procedure TfAccParams.acRemoveBorgstenaExecute(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_AccInv.Delete ;
 End ;
end;

procedure TfAccParams.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled := not DataSaved ;
end;

procedure TfAccParams.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled := not DataSaved ;
end;

procedure TfAccParams.grdAccInvDBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
 Try
  if AEdit is TcxCustomTextEdit then
    with TcxCustomTextEdit(AEdit) do begin
      if (Key = VK_RIGHT) and (CursorPos=Length(TcxCustomTextEdit(AEdit).Text)) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(True), 0)
      else if (Key = VK_LEFT) and (CursorPos=0) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(False), 0);
    end;
 Except
 End ;
end;

end.
