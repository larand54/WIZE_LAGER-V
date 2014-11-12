unit UnitShippingInstruction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, SqlTimSt, Menus, dxExEdtr,
  DateUtils, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit ;

type
  TfrmShippingInstruction = class(TfrmDBForm)
    grdShipInstruct: TdxDBGrid;
    grdShipInstructETD: TdxDBGridColumn;
    grdShipInstructCarrierName: TdxDBGridMaskColumn;
    grdShipInstructINVOICENO: TdxDBGridMaskColumn;
    grdShipInstructBOOKING: TdxDBGridMaskColumn;
    grdShipInstructCONTAINERNO: TdxDBGridMaskColumn;
    grdShipInstructWEIGHT: TdxDBGridMaskColumn;
    grdShipInstructPKGS: TdxDBGridMaskColumn;
    grdShipInstructSEK_VALUE: TdxDBGridMaskColumn;
    grdShipInstructM3_ACT: TdxDBGridMaskColumn;
    toolbtnRefresh: TToolButton;
    Panel1: TPanel;
    StartDate: TDateTimePicker;
    EndDate: TDateTimePicker;
    ToolButton1: TToolButton;
    toolbtnPrint: TToolButton;
    acCustomizegrdShipInstruct: TAction;
    pmgrdShipInstruct: TPopupMenu;
    CustomizeLayout1: TMenuItem;
    acRefresh: TAction;
    acPrint: TAction;
    pmShortcut: TPopupMenu;
    Skrivut1: TMenuItem;
    Uppdatera1: TMenuItem;
    Stng1: TMenuItem;
    cbCarrier: TcxComboBox;
    procedure toolbtnRefreshClick(Sender: TObject);
    procedure acCustomizegrdShipInstructExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbCarrierPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    CarrierNo : Integer ;
  public
    { Public declarations }
     AppName: String ;
    constructor CreateCo(CompanyNo: Integer);
    destructor  Destroy;
  end;

var
  frmShippingInstruction: TfrmShippingInstruction;

implementation

uses dmcVidaPayment,   VidaConst,   VidaUser,  VidaUtils,
  UnitCRViewReport , dmsVidaContact, dmsDataConn;

{$R *.dfm}

constructor TfrmShippingInstruction.CreateCo(CompanyNo: Integer);

begin
  inherited ; // Create(AOwner);

  // Load column widths set last time.
  grdShipInstruct.LoadFromIniFile(dmsConnector.InifilesMap+'VisShipInstr'+'.'+ThisUser.UserName);

  // Populate the combo box with names of suppliers from the database
  dmsContact.LoadCarriers(cbCarrier.Properties.Items);
end;

destructor TfrmShippingInstruction.Destroy;
begin
  inherited;

end;

procedure TfrmShippingInstruction.toolbtnRefreshClick(Sender: TObject) ;
var
  Save_Cursor:TCursor;
begin
 inherited;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

  StartDate.Datetime:= RecodeHour(StartDate.Date,0) ;
  StartDate.Datetime:= RecodeMinute(StartDate.Date,0) ;
  StartDate.Datetime:= RecodeSecond(StartDate.Date,0) ;

  EndDate.Datetime:= RecodeHour(EndDate.Date,23) ;
  EndDate.Datetime:= RecodeMinute(EndDate.Date,59) ;
  EndDate.Datetime:= RecodeSecond(EndDate.Date,59) ;

  with dmcPayment do
  Begin
   cdsShippingInstruction.Active:= False ;
   sp_ShippingInstruction.close ;
   sp_ShippingInstruction.ParamByName('StartDate').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(StartDate.DateTime) ;
   sp_ShippingInstruction.ParamByName('EndDate').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(EndDate.DateTime) ;
   sp_ShippingInstruction.ParamByName('CarrierNo').AsInteger:= CarrierNo ;
   sp_ShippingInstruction.Open ;
   cdsShippingInstruction.Active:= True ;
  End ;

 Finally
  Screen.Cursor:= Save_Cursor ;
 End ;
end;

procedure TfrmShippingInstruction.acCustomizegrdShipInstructExecute(
  Sender: TObject);
begin
  inherited;
 grdShipInstruct.ColumnsCustomizing ;
end;

procedure TfrmShippingInstruction.FormDestroy(Sender: TObject);
begin
 frmShippingInstruction:= Nil ;
  inherited;
end;

procedure TfrmShippingInstruction.acRefreshExecute(Sender: TObject);
var 
  Save_Cursor:TCursor;
begin
 inherited;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

  StartDate.Datetime:= RecodeHour(StartDate.Date,0) ;
  StartDate.Datetime:= RecodeMinute(StartDate.Date,0) ;
  StartDate.Datetime:= RecodeSecond(StartDate.Date,0) ;

  EndDate.Datetime:= RecodeHour(EndDate.Date,23) ;
  EndDate.Datetime:= RecodeMinute(EndDate.Date,59) ;
  EndDate.Datetime:= RecodeSecond(EndDate.Date,59) ;

  with dmcPayment do
  Begin
   cdsShippingInstruction.Active:= False ;
   sp_ShippingInstruction.close ;
   sp_ShippingInstruction.ParamByName('StartDate').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(StartDate.DateTime) ;
   sp_ShippingInstruction.ParamByName('EndDate').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(EndDate.DateTime) ;
   sp_ShippingInstruction.ParamByName('CarrierNo').AsInteger:= CarrierNo ;
   sp_ShippingInstruction.Open ;
   cdsShippingInstruction.Active:= True ;
  End ;

 Finally
  Screen.Cursor:= Save_Cursor ;
 End ;
end;


procedure TfrmShippingInstruction.acPrintExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SHIPPING_INSTRUCT.RPT') ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(StartDate.DateTime);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(EndDate.DateTime);
  FormCRViewReport.report.ParameterFields.Item[3].AddCurrentValue(CarrierNo);

  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
   FreeAndNil(FormCRViewReport)  ;
 End ;


end;

procedure TfrmShippingInstruction.FormShow(Sender: TObject);
begin
  inherited;
 StartDate.SetFocus ;
end;

procedure TfrmShippingInstruction.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
   grdShipInstruct.SaveToIniFile(dmsConnector.InifilesMap+'VisShipInstr'+'.'+ThisUser.UserName);
   CanClose:= True ;
end;

procedure TfrmShippingInstruction.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 Action:= CaFree ;
end;

procedure TfrmShippingInstruction.cbCarrierPropertiesChange(
  Sender: TObject);
begin
  inherited;
 CarrierNo:= integer(cbCarrier.Properties.Items.Objects[cbCarrier.ItemIndex]);
end;

end.
