unit uPigNames;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ImgList, ActnList, dxBar, dxBarExtItems,
  ExtCtrls, cxTextEdit, cxCheckBox, cxLabel, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, siComp, siLngLnk,
  System.Actions;

type
  TfPigNames = class(TForm)
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
    grdPigNamesDBTableView1: TcxGridDBTableView;
    grdPigNamesLevel1: TcxGridLevel;
    grdPigNames: TcxGrid;
    grdPigNamesDBTableView1PigNo: TcxGridDBColumn;
    grdPigNamesDBTableView1PigName: TcxGridDBColumn;
    acNew: TAction;
    acSave: TAction;
    acCancelChanges: TAction;
    grdPigNamesDBTableView1Active: TcxGridDBColumn;
    siLangLinked_fPigNames: TsiLangLinked;
    procedure acCloseExecute(Sender: TObject);
    procedure acNewExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
  private
    { Private declarations }
    function  DataSaved : Boolean ;
  public
    { Public declarations }
  end;

//var fPigNames: TfPigNames;

implementation

uses dmcLoadPlan;

{$R *.dfm}

function TfPigNames.DataSaved : Boolean ;
begin
 With dmLoadPlan do
 Begin
  Result:= True ;
  if cds_PigNames.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_PigNames.ChangeCount > 0 then
   Result:= False ;
 End ;
end;


procedure TfPigNames.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfPigNames.acNewExecute(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  cds_PigNames.Append ;
 End ;
end;

procedure TfPigNames.acSaveExecute(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if cds_PigNames.State in [dsEdit, dsInsert] then
   cds_PigNames.Post ;
  if cds_PigNames.ChangeCount > 0 then
   cds_PigNames.ApplyUpdates(0) ;
 End ;
end;

procedure TfPigNames.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= True ;
  if DataSaved = False then
   if MessageDlg('Data är inte sparat, vill du avsluta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    CanClose:= True
    else
    CanClose:= False ;
end;

procedure TfPigNames.acCancelChangesExecute(Sender: TObject);
begin
 With dmLoadPlan do
 Begin
  if cds_PigNames.State in [dsEdit, dsInsert] then
   cds_PigNames.Cancel ;
  if cds_PigNames.ChangeCount > 0 then
   cds_PigNames.CancelUpdates ;
 End ;
end;

procedure TfPigNames.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled:= not DataSaved ;
end;

procedure TfPigNames.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled:= not DataSaved ;
end;

end.
