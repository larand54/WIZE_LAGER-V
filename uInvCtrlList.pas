unit uInvCtrlList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons, ExtCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLabel, cxMemo, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, kbmMemTable, SqlTimSt, ActnList, Menus,
  cxLookAndFeelPainters, cxButtons, cxLookAndFeels, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator ;

type
  TfInvCtrlList = class(TForm)
    grdInvCtrlListDBTableView1: TcxGridDBTableView;
    grdInvCtrlListLevel1: TcxGridLevel;
    grdInvCtrlList: TcxGrid;
    grdInvCtrlListDBTableView1IC_grpno: TcxGridDBColumn;
    grdInvCtrlListDBTableView1Inventeringsdatum: TcxGridDBColumn;
    grdInvCtrlListDBTableView1Note: TcxGridDBColumn;
    grdInvCtrlListDBTableView1Status: TcxGridDBColumn;
    grdInvCtrlListDBTableView1MaxDatum: TcxGridDBColumn;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    Panel2: TPanel;
    grdInvCtrlListDBTableView1Lager: TcxGridDBColumn;
    grdInvCtrlListDBTableView1SkapadAv: TcxGridDBColumn;
    Panel1: TPanel;
    mtUserProp: TkbmMemTable;
    mtUserPropVerkNo: TIntegerField;
    mtUserPropOwnerNo: TIntegerField;
    mtUserPropPIPNo: TIntegerField;
    mtUserPropLIPNo: TIntegerField;
    mtUserPropInputOption: TIntegerField;
    mtUserPropRegPointNo: TIntegerField;
    mtUserPropRegDate: TDateTimeField;
    mtUserPropCopyPcs: TIntegerField;
    mtUserPropRunNo: TIntegerField;
    mtUserPropProducerNo: TIntegerField;
    mtUserPropAutoColWidth: TIntegerField;
    mtUserPropSupplierCode: TStringField;
    mtUserPropLengthOption: TIntegerField;
    mtUserPropLengthGroupNo: TIntegerField;
    mtUserPropNewItemRow: TIntegerField;
    mtUserPropGradeStampNo: TIntegerField;
    mtUserPropBarCodeNo: TIntegerField;
    mtUserPropLengthGroup: TStringField;
    mtUserPropLIPName: TStringField;
    mtUserPropPIPNAME: TStringField;
    mtUserPropREGPOINT: TStringField;
    mtUserPropPRODUCER: TStringField;
    mtUserPropOWNER: TStringField;
    mtUserPropVERK: TStringField;
    mtUserPropRoleType: TIntegerField;
    mtUserPropGradestamp: TStringField;
    mtUserPropBarcode: TStringField;
    mtUserPropProductDescription: TStringField;
    mtUserPropProductNo: TIntegerField;
    mtUserPropProductGroupNo: TIntegerField;
    mtUserPropLIPChange: TIntegerField;
    mtUserPropSalesRegionNo: TIntegerField;
    mtUserPropVolumeUnitNo: TIntegerField;
    mtUserPropLengthFormatNo: TIntegerField;
    mtUserPropForm: TStringField;
    mtUserPropUserID: TIntegerField;
    mtUserPropLengthVolUnitNo: TIntegerField;
    mtUserPropSurfacingNo: TIntegerField;
    mtUserPropNOMTHICK: TFloatField;
    mtUserPropGroupByBox: TIntegerField;
    mtUserPropGroupSummary: TIntegerField;
    mtUserPropAgentNo: TIntegerField;
    mtUserPropShipperNo: TIntegerField;
    mtUserPropStartPeriod: TDateTimeField;
    mtUserPropEndPeriod: TDateTimeField;
    dsUserProp: TDataSource;
    deEndPeriod: TcxDBDateEdit;
    deStartPeriod: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    ActionList1: TActionList;
    acRefreshList: TAction;
    cxButton1: TcxButton;
    mtUserPropFilter1: TStringField;
    mtUserPropFilter2: TStringField;
    procedure grdInvCtrlListDBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure acRefreshListExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    VerkNoForList : Integer ;
  end;

//var fInvCtrlList: TfInvCtrlList;

implementation

uses dmcInvCtrl, dmc_UserProps, dmsDataConn;

{$R *.dfm}

procedure TfInvCtrlList.grdInvCtrlListDBTableView1DblClick(
  Sender: TObject);
begin
 ModalResult:= mrOK ;
end;

procedure TfInvCtrlList.FormCreate(Sender: TObject);
begin
  dm_UserProps.LoadUserProps (Self.Name, mtuserprop) ;
  mtUserProp.Edit ;
  mtUserPropVerkNo.AsInteger:= mtUserPropOwnerNo.AsInteger ;
  mtUserProp.Post ;
//  if Self.mtUserPropStartPeriod.AsDateTime
end;

procedure TfInvCtrlList.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dm_UserProps.SaveUserProps (Self.Name, mtUserProp) ;
end;

procedure TfInvCtrlList.FormDestroy(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_InvCtrlList.Active:= False ;
 End ;//With
end;

procedure TfInvCtrlList.acRefreshListExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_InvCtrlList.Active:= False ;
  cds_InvCtrlList.ParamByName('VerkNo').AsInteger          := VerkNoForList ;
  cds_InvCtrlList.ParamByName('StartDate').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Self.mtUserPropStartPeriod.AsDateTime) ;
  cds_InvCtrlList.ParamByName('EndDate').AsSQLTimeStamp    := DateTimeToSQLTimeStamp(Self.mtUserPropEndPeriod.AsDateTime) ;
  cds_InvCtrlList.Active:= True ;
 End ;//With
end;

procedure TfInvCtrlList.FormShow(Sender: TObject);
begin
  acRefreshListExecute(Sender) ;
end;

end.
