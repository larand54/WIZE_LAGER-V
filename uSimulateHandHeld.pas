unit uSimulateHandHeld;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ExtCtrls, Vcl.ActnList, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxLabel, cxTextEdit;

type
  TfSimulateHandHeld = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdSimulateHandHeldDBTableView1: TcxGridDBTableView;
    grdSimulateHandHeldLevel1: TcxGridLevel;
    grdSimulateHandHeld: TcxGrid;
    grdSimulateHandHeldDBTableView1Id: TcxGridDBColumn;
    grdSimulateHandHeldDBTableView1PackageNo: TcxGridDBColumn;
    grdSimulateHandHeldDBTableView1Status: TcxGridDBColumn;
    grdSimulateHandHeldDBTableView1Quantity: TcxGridDBColumn;
    grdSimulateHandHeldDBTableView1IC_grpno: TcxGridDBColumn;
    grdSimulateHandHeldDBTableView1Prefix: TcxGridDBColumn;
    grdSimulateHandHeldDBTableView1PdaId: TcxGridDBColumn;
    grdSimulateHandHeldDBTableView1Iuser: TcxGridDBColumn;
    grdSimulateHandHeldDBTableView1Idate: TcxGridDBColumn;
    grdSimulateHandHeldDBTableView1LengthSpecNo: TcxGridDBColumn;
    grdSimulateHandHeldDBTableView1Produkt: TcxGridDBColumn;
    grdSimulateHandHeldDBTableView1LengthDesc: TcxGridDBColumn;
    grdSimulateHandHeldDBTableView1AvgLength: TcxGridDBColumn;
    ActionList1: TActionList;
    acClose: TAction;
    cxButton1: TcxButton;
    acDeleteRow: TAction;
    cxButton2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure acDeleteRowExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acDeleteRowUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSimulateHandHeld: TfSimulateHandHeld;

implementation

{$R *.dfm}

uses dmcInvCtrl;

procedure TfSimulateHandHeld.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfSimulateHandHeld.acDeleteRowExecute(Sender: TObject);
Begin
 With dmInvCtrl do
 Begin
  sp_SimulateHandHeld.Delete ;
 End;
end;

procedure TfSimulateHandHeld.acDeleteRowUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acDeleteRow.Enabled := (sp_SimulateHandHeld.Active)
  and (sp_SimulateHandHeld.RecordCount > 0) ;
 End;
end;

procedure TfSimulateHandHeld.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree ;
end;

procedure TfSimulateHandHeld.FormCloseQuery(Sender: TObject;
var CanClose: Boolean);
var Save_Cursor : TCursor;
begin
 With dmInvCtrl do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  Try

    sp_SimulateHandHeld.Active  := False ;
  finally
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End;

end;

procedure TfSimulateHandHeld.FormDestroy(Sender: TObject);
begin
 fSimulateHandHeld := nil ;
end;

procedure TfSimulateHandHeld.FormShow(Sender: TObject);
var Save_Cursor : TCursor;
begin
 With dmInvCtrl do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  Try
    sp_SimulateHandHeld.Active  := False ;
    sp_SimulateHandHeld.ParamByName('@ic_grpno').AsInteger  := cds_InvCtrlGrpIC_grpno.AsInteger ;
    sp_SimulateHandHeld.Active  := True ;
  finally
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End;

end;

end.
