unit uLagerBalans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, kbmMemTable, ExtCtrls, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, FMTBcd, DBClient,
  Provider, SqlExpr, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxContainer, cxTextEdit, cxMaskEdit, cxCalendar,
  cxDBEdit, ActnList, SqlTimSt, DateUtils, cxLookAndFeels, cxLabel,
  cxCurrencyEdit, ImgList, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, cxSplitter,
  cxGridBandedTableView, cxGridDBBandedTableView ;

type
  TfLagerBalans = class(TForm)
    mtFilter: TkbmMemTable;
    mtFilterClientNo: TIntegerField;
    mtFilterStartDate: TDateField;
    mtFilterEndDate: TDateField;
    Panel3: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    StartDate: TcxDateEdit;
    EndDate: TcxDateEdit;
    lcSalesRegion: TcxDBLookupComboBox;
    lcVerk: TcxDBLookupComboBox;
    cbMonthStart: TcxComboBox;
    cbYearStart: TcxComboBox;
    cbYearEnd: TcxComboBox;
    cbMonthEnd: TcxComboBox;
    bbCurrentMonth: TBitBtn;
    bbPreviousMonth: TBitBtn;
    BitBtn1: TBitBtn;
    dsFilter: TDataSource;
    sq_Clients: TSQLQuery;
    sq_ClientsClientNo: TIntegerField;
    sq_ClientsClientName: TStringField;
    dspClients: TDataSetProvider;
    cdsClient: TClientDataSet;
    cdsClientClientNo: TIntegerField;
    cdsClientClientName: TStringField;
    dsClient: TDataSource;
    mtFilterVERK: TStringField;
    sq_PIP: TSQLQuery;
    dsp_PIP: TDataSetProvider;
    ds_PIP: TDataSource;
    sq_LIP: TSQLQuery;
    dsp_LIP: TDataSetProvider;
    ds_LIP: TDataSource;
    cds_PIP: TClientDataSet;
    cds_PIPPIPNo: TIntegerField;
    cds_PIPORT: TStringField;
    cds_LIP: TClientDataSet;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLAGERGRUPP: TStringField;
    cds_LIPPIPNo: TIntegerField;
    cds_PIPClientNo: TIntegerField;
    sq_LagBal: TSQLQuery;
    dsp_LagBal: TDataSetProvider;
    cds_LagBal: TClientDataSet;
    cds_LagBalITEM: TStringField;
    ds_LagBal: TDataSource;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    acRefresh: TAction;
    cds_LagBalGRUPP: TStringField;
    cxLookAndFeelController1: TcxLookAndFeelController;
    ImageList1: TImageList;
    BitBtn3: TBitBtn;
    acPrint: TAction;
    acGetCurrentMonth: TAction;
    acGetPrevMonth: TAction;
    acGetNextMonth: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    BitBtn4: TBitBtn;
    acDetailInformation: TAction;
    cds_LagBalSubTotal: TFloatField;
    BitBtn5: TBitBtn;
    acClose: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cds_LagBalNM3: TFloatField;
    cds_LagBalSortOrder: TIntegerField;
    cxSplitter1: TcxSplitter;
    sq_LagBalORT: TSQLQuery;
    dsp_LagBalORT: TDataSetProvider;
    cds_LagBalORT: TClientDataSet;
    ds_LagBalORT: TDataSource;
    cds_LagBalORTPIPNo: TIntegerField;
    cds_LagBalORTNM3_DIFF: TFloatField;
    sq_LagGrupp: TSQLQuery;
    dsp_LagGrupp: TDataSetProvider;
    cds_LagGrupp: TClientDataSet;
    ds_LagGrupp: TDataSource;
    cds_LagGruppGRPNAMN: TStringField;
    cds_LagGruppPIPNo: TIntegerField;
    cds_LagGruppLIPNo: TIntegerField;
    cds_LagBalORTORT: TStringField;
    cds_LagBalORTNM3_INGENDE: TFloatField;
    cds_LagBalORTNM3_RRELSE_IN: TFloatField;
    cds_LagBalORTNM3_RRELSE_UT: TFloatField;
    cds_LagBalORTNM3_UTGAENDE: TFloatField;
    Panel1: TPanel;
    PanelLagerNamn: TPanel;
    grdLagerBalans: TcxGrid;
    grdLagerBalansDBTableView1: TcxGridDBTableView;
    grdLagerBalansDBTableView1GRUPP: TcxGridDBColumn;
    grdLagerBalansDBTableView1ITEM: TcxGridDBColumn;
    grdLagerBalansDBTableView1NM3: TcxGridDBColumn;
    grdLagerBalansDBTableView1SubTotal: TcxGridDBColumn;
    grdLagerBalansLevel1: TcxGridLevel;
    sq_SalesRegion: TSQLQuery;
    dsp_SalesRegion: TDataSetProvider;
    cds_SalesRegion: TClientDataSet;
    ds_SalesRegion: TDataSource;
    mtFilterSalesRegionNo: TIntegerField;
    cds_SalesRegionClientNo: TIntegerField;
    cds_SalesRegionClientName: TStringField;
    mtFilterSalesRegion: TStringField;
    mtFilterLIPNo: TIntegerField;
    BitBtn6: TBitBtn;
    acInventoryMissing: TAction;
    sq_LBSR: TSQLQuery;
    dsp_LBSR: TDataSetProvider;
    cds_LBSR: TClientDataSet;
    ds_LBSR: TDataSource;
    Panel2: TPanel;
    grdLagerBalansORT: TcxGrid;
    grdLagerBalansORTDBTableView1: TcxGridDBTableView;
    grdLagerBalansORTDBTableView2: TcxGridDBTableView;
    grdLagerBalansORTDBTableView2GRPNAMN: TcxGridDBColumn;
    grdLagerBalansORTDBTableView2PIPNo: TcxGridDBColumn;
    grdLagerBalansORTDBTableView2LIPNo: TcxGridDBColumn;
    grdLagerBalansORTDBBandedTableView1: TcxGridDBBandedTableView;
    grdLagerBalansORTDBBandedTableView1PIPNo: TcxGridDBBandedColumn;
    grdLagerBalansORTDBBandedTableView1NM3_INGENDE: TcxGridDBBandedColumn;
    grdLagerBalansORTDBBandedTableView1NM3_UTGAENDE: TcxGridDBBandedColumn;
    grdLagerBalansORTDBBandedTableView1NM3_DIFF: TcxGridDBBandedColumn;
    grdLagerBalansORTDBBandedTableView1ORT: TcxGridDBBandedColumn;
    grdLagerBalansORTDBBandedTableView1NM3_RRELSE_IN: TcxGridDBBandedColumn;
    grdLagerBalansORTDBBandedTableView1NM3_RRELSE_UT: TcxGridDBBandedColumn;
    grdLagerBalansORTLevel1: TcxGridLevel;
    grdLagerBalansORTLevel2: TcxGridLevel;
    Panel4: TPanel;
    cxSplitter2: TcxSplitter;
    grdSalesRegionLevel1: TcxGridLevel;
    grdSalesRegion: TcxGrid;
    cds_LBSRREGION: TStringField;
    cds_LBSRNM3_INGENDE: TFloatField;
    cds_LBSRIN_NM3: TFloatField;
    cds_LBSRUT_NM3: TFloatField;
    cds_LBSRClientNo: TIntegerField;
    cds_LBSRNM3_UTGAENDE: TFloatField;
    grdSalesRegionDBBandedTableView1: TcxGridDBBandedTableView;
    grdSalesRegionDBBandedTableView1REGION: TcxGridDBBandedColumn;
    grdSalesRegionDBBandedTableView1NM3_INGENDE: TcxGridDBBandedColumn;
    grdSalesRegionDBBandedTableView1IN_NM3: TcxGridDBBandedColumn;
    grdSalesRegionDBBandedTableView1UT_NM3: TcxGridDBBandedColumn;
    grdSalesRegionDBBandedTableView1NM3_DIFF: TcxGridDBBandedColumn;
    grdSalesRegionDBBandedTableView1NM3_UTGAENDE: TcxGridDBBandedColumn;
    cds_LagBalORTOwnerNo: TIntegerField;
    cds_LagBalORTGARE: TStringField;
    grdLagerBalansORTDBBandedTableView1GARE: TcxGridDBBandedColumn;
    cds_LagBalVRDE: TFloatField;
    grdLagerBalansDBTableView1VRDE: TcxGridDBColumn;
    cds_LBSRNM3_DIFF: TFloatField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acGetCurrentMonthExecute(Sender: TObject);
    procedure acGetPrevMonthExecute(Sender: TObject);
    procedure acGetNextMonthExecute(Sender: TObject);
    procedure cbMonthStartPropertiesChange(Sender: TObject);
    procedure cbYearStartPropertiesChange(Sender: TObject);
    procedure cbMonthEndPropertiesChange(Sender: TObject);
    procedure cbYearEndPropertiesChange(Sender: TObject);
    procedure grdLagerBalansDBTableView1SubTotalGetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
      var AText: String);
    procedure grdLagerBalansDBTableView1SortOrderGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure acDetailInformationExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure cds_LagBalORTCalcFields(DataSet: TDataSet);
    procedure grdLagerBalansORTDBTableView2CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grdLagerBalansORTDBBandedTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure mtFilterSalesRegionNoChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure grdLagerBalansDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure acInventoryMissingExecute(Sender: TObject);
    procedure grdSalesRegionDBBandedTableView1DblClick(Sender: TObject);
    procedure cds_LBSRCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
   Year, Month, Day: Word ;
   procedure GetCurrentMonthAndYear(Sender: TObject);
   procedure CalcSubTotals ;
   procedure ShowLastDetails ;
   procedure ShowProductionDetails ;
   procedure ShowLagerVardDetails ;
   procedure RefreshClientToSR ;
  public
    { Public declarations }
  end;

var
  fLagerBalans: TfLagerBalans;
 
implementation

uses dmsDataConn, VidaUser , dmsVidaContact, uLagBalDtl, dmsVidaSystem,
  uMemoForm;

{$R *.dfm}
procedure TfLagerBalans.GetCurrentMonthAndYear(Sender: TObject);
begin
{ cbMonthStart.Properties.onChange:= nil ;
 Try }
 DecodeDate(Date, Year, Month, Day);
 cbYearStart.Text:= IntToStr(Year) ;
 cbMonthStart.Text:= IntToStr(Month) ;
 cbYearEnd.Text:= cbYearStart.Text ;
 cbMonthEnd.Text:= cbMonthStart.Text ;
{ Finally
  cbMonthStart.Properties.OnChange:= cbMonthStartPropertiesChange ;
 End ; }
end;

procedure TfLagerBalans.FormCreate(Sender: TObject);
begin
// cds_PIP.Active:= False ;
// sq_PIP.ParamByName('ClientNo').AsInteger:= 2878 ;
//sq_PIP.Open ;
// if not sq_PIP.Eof then
// cds_PIP.Active:= True ;
// cds_LIP.Active:= True ;

 Try
 mtFilterSalesRegionNo.OnChange:= Nil ;

 mtFilter.Active:= True ;
 mtFilter.Insert ;
 mtFilterSalesRegionNo.AsInteger  := dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;

 cdsClient.Active:= False ;
 sq_Clients.ParamByName('SalesRegionNo').AsInteger:= mtFilterSalesRegionNo.AsInteger ;
 cdsClient.Active:= True ;

 if thisuser.userid = 8 then
 Begin
  Button1.Visible:= True ;
  Button2.Visible:= True ;
  Button3.Visible:= True ;
 End ;

 mtFilterClientNo.AsInteger       := ThisUser.CompanyNo ;
 mtFilter.Post ;
 StartDate.Date:= Date - 30 ;
 EndDate.Date:= Date ;
 GetCurrentMonthAndYear(Sender) ;
 if ThisUser.CompanyNo <> 741 then
 Begin
  lcSalesRegion.Enabled := False ;
  lcVerk.Enabled        := False ;
 End ;
 Finally
  mtFilterSalesRegionNo.OnChange:= mtFilterSalesRegionNoChange ;
 End ;
end;

procedure TfLagerBalans.RefreshClientToSR ;
Var    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 StartDate.Date:= RecodeHour(StartDate.Date, 0);
 StartDate.Date:= RecodeMinute(StartDate.Date, 0);
 StartDate.Date:= RecodeSecond(StartDate.Date, 0);

 EndDate.Date:= RecodeHour(EndDate.Date, 23);
 EndDate.Date:= RecodeMinute(EndDate.Date, 59);
 EndDate.Date:= RecodeSecond(EndDate.Date, 59);


 cds_LagBalORT.Active:= False ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 sq_LagBalORT.ParamByName('ClientNo').AsInteger             := cds_LBSRClientNo.AsInteger ; //mtFilterClientNo.AsInteger ;
 sq_LagBalORT.ParamByName('StartDate').AsSQLTimeStamp       := DateTimeToSQLTimeStamp(StartDate.Date) ;
 sq_LagBalORT.ParamByName('EndDate').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(EndDate.Date) ;
 sq_LagBalORT.ParamByName('StartInBalDate').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(StartDate.Date) ;
 sq_LagBalORT.ParamByName('EndInBalDate').AsSQLTimeStamp    := DateTimeToSQLTimeStamp(StartDate.Date+1) ;
 cds_LagBalORT.Active:= True ;
 cds_LagBal.Active:= False ;

 cds_LagGrupp.Active:= False ;
 cds_LagGrupp.Active:= True ;
 //CalcSubTotals ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfLagerBalans.acRefreshExecute(Sender: TObject);
Var    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 StartDate.Date:= RecodeHour(StartDate.Date, 0);
 StartDate.Date:= RecodeMinute(StartDate.Date, 0);
 StartDate.Date:= RecodeSecond(StartDate.Date, 0);

 EndDate.Date:= RecodeHour(EndDate.Date, 23);
 EndDate.Date:= RecodeMinute(EndDate.Date, 59);
 EndDate.Date:= RecodeSecond(EndDate.Date, 59);


 cds_LBSR.Active:= False ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 sq_LBSR.ParamByName('StartDate').AsSQLTimeStamp       := DateTimeToSQLTimeStamp(StartDate.Date) ;
 sq_LBSR.ParamByName('EndDate').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(EndDate.Date) ;
 sq_LBSR.ParamByName('StartInBalDate').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(StartDate.Date) ;
 sq_LBSR.ParamByName('EndInBalDate').AsSQLTimeStamp    := DateTimeToSQLTimeStamp(StartDate.Date+1) ;
 cds_LBSR.Active:= True ;
 cds_LagBal.Active:= False ;

 cds_LagGrupp.Active:= False ;
 cds_LagGrupp.Active:= True ;
 //CalcSubTotals ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfLagerBalans.CalcSubTotals ;
Var x : Integer ;
    SubTotal : Double ;
    ITEM, Grupp : String ;
Begin
 cds_LagBal.Filtered:= True ;
 Try
 For x := 0 to 5 do
 Begin
 SubTotal:= 0 ;
 cds_LagBal.Filter:= 'SortOrder = '+inttostr(x) ;
 cds_LagBal.First ;
 While not cds_LagBal.Eof do
 Begin
  SubTotal  := SubTotal + cds_LagBalNM3.AsFloat ;
  ITEM      := cds_LagBalITEM.AsString ;
  Grupp     := cds_LagBalGRUPP.AsString ;
  cds_LagBal.Next ;
 End ;

 cds_LagBal.Insert ;
// cds_LagBalSortOrder.AsInteger  := x ;
 cds_LagBalITEM.AsString        := Item ;
 cds_LagBalGrupp.AsString       := Grupp ;
 cds_LagBalSubTotal.AsFloat     := SubTotal ;
 cds_LagBal.Post ;
 End ;//for x
 Finally
  cds_LagBal.Filtered:= False ;
 End ;
End ;

procedure TfLagerBalans.acPrintExecute(Sender: TObject);
begin
//  dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('LAGERBALANS ' + lcVerk.Text) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('') ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Period '
  +DateToStr(StartDate.Date)  + ' - ' +DateToStr(EndDate.Date)) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Ägare ' + lcVerk.Text) ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Add('Lager ' + PanelLagerNamn.Caption) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Add('Lagergrupp ' + mtFilterLIP.AsString) ;

  dxComponentPrinter1Link1.ShrinkToPageWidth:= True ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link1) ;
end;

procedure TfLagerBalans.acGetCurrentMonthExecute(Sender: TObject);
begin
  GetCurrentMonthAndYear(Sender) ;
end;

procedure TfLagerBalans.acGetPrevMonthExecute(Sender: TObject);
begin
{ cbMonthStart.Properties.onChange:= nil ;
 Try }
 if Month = 1 then
 Begin
  Month:= 12 ;
  Year:= Year - 1 ;
 End
 else
 Begin
  Month:= Month-1 ;
  Year:= Year ;
 End ;
 cbYearStart.Text:= IntToStr(Year) ;
 cbMonthStart.Text:= IntToStr(Month) ;
 cbYearEnd.Text:= cbYearStart.Text ;
 cbMonthEnd.Text:= cbMonthStart.Text ;
{ Finally
  cbMonthStart.Properties.OnChange:= cbMonthStartPropertiesChange ;
 End ;}
end;

procedure TfLagerBalans.acGetNextMonthExecute(Sender: TObject);
begin
{ cbMonthStart.Properties.onChange:= nil ;
 Try }
 if Month = 12 then
 Begin
  Month:= 1 ;
  Year:= Year + 1 ;
 End
 else
 Begin
  Month:= Month+1 ;
  Year:= Year ;
 End ;
 cbYearStart.Text:= IntToStr(Year) ;
 cbMonthStart.Text:= IntToStr(Month) ;
 cbYearEnd.Text:= cbYearStart.Text ;
 cbMonthEnd.Text:= cbMonthStart.Text ;
{ Finally
  cbMonthStart.Properties.OnChange:= cbMonthStartPropertiesChange ;
 End ;}
end;

procedure TfLagerBalans.cbMonthStartPropertiesChange(Sender: TObject);
begin
 StartDate.Date:= EncodeDate(StrToInt(cbYearStart.Text), StrToInt(cbMonthStart.Text), 1) ;
 Month:= StrToInt(cbMonthStart.Text) ;
// EndDate.Date:= EncodeDate(StrToInt(cbYearEnd.Text), StrToInt(cbMonthEnd.Text), DaysInAMonth(StrToInt(cbYearEnd.Text), StrToInt(cbMonthEnd.Text))) ;
end;

procedure TfLagerBalans.cbYearStartPropertiesChange(Sender: TObject);
begin
 StartDate.Date:= EncodeDate(StrToInt(cbYearStart.Text), StrToInt(cbMonthStart.Text), 1) ;
 Year:= StrToInt(cbYearStart.Text) ;
end;

procedure TfLagerBalans.cbMonthEndPropertiesChange(Sender: TObject);
begin
// cbMonthEnd.Text:= cbMonthStart.Text ;
// StartDate.Date:= EncodeDate(StrToInt(cbYearStart.Text), StrToInt(cbMonthStart.Text), 1) ;
 EndDate.Date:= EncodeDate(StrToInt(cbYearEnd.Text), StrToInt(cbMonthEnd.Text), DaysInAMonth(StrToInt(cbYearEnd.Text), StrToInt(cbMonthEnd.Text))) ;
end;

procedure TfLagerBalans.cbYearEndPropertiesChange(Sender: TObject);
begin
// cbMonthEnd.Text:= cbMonthStart.Text ;
// StartDate.Date:= EncodeDate(StrToInt(cbYearStart.Text), StrToInt(cbMonthStart.Text), 1) ;
 EndDate.Date:= EncodeDate(StrToInt(cbYearEnd.Text), StrToInt(cbMonthEnd.Text), DaysInAMonth(StrToInt(cbYearEnd.Text), StrToInt(cbMonthEnd.Text))) ;
end;

procedure TfLagerBalans.grdLagerBalansDBTableView1SubTotalGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
  var AText: String);
begin
 if AText = '0' then
  AText:= '' ;
end;

procedure TfLagerBalans.grdLagerBalansDBTableView1SortOrderGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
// atext:= '' ;
end;

procedure TfLagerBalans.acDetailInformationExecute(Sender: TObject);
begin
 ShowMessage('Synd, du har inte behörighet...') ;
end;

procedure TfLagerBalans.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfLagerBalans.cds_LagBalORTCalcFields(DataSet: TDataSet);
begin
 cds_LagBalORTNM3_UTGAENDE.AsFloat :=
 (cds_LagBalORTNM3_INGENDE.AsFloat + (cds_LagBalORTNM3_RRELSE_IN.AsFloat + cds_LagBalORTNM3_RRELSE_UT.AsFloat)) ;

 cds_LagBalORTNM3_DIFF.AsFloat := cds_LagBalORTNM3_UTGAENDE.AsFloat - cds_LagBalORTNM3_INGENDE.AsFloat ;
end;

procedure TfLagerBalans.grdLagerBalansORTDBTableView2CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
Var    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 StartDate.Date:= RecodeHour(StartDate.Date, 0);
 StartDate.Date:= RecodeMinute(StartDate.Date, 0);
 StartDate.Date:= RecodeSecond(StartDate.Date, 0);

 EndDate.Date:= RecodeHour(EndDate.Date, 23);
 EndDate.Date:= RecodeMinute(EndDate.Date, 59);
 EndDate.Date:= RecodeSecond(EndDate.Date, 59);

 PanelLagerNamn.Caption:= cds_LagBalORTORT.AsString+'/'+cds_LagGruppGRPNAMN.AsString ;


 mtFilter.Edit ;
 mtFilterLIPNo.AsInteger:= cds_LagGruppLIPNo.AsInteger ;
 mtFilter.Post ;

 cds_LagBal.Active:= False ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 sq_LagBal.ParamByName('PIPNo').AsInteger           := cds_LagBalORTPIPNo.AsInteger ;
 sq_LagBal.ParamByName('LIPNo').AsInteger           := cds_LagGruppLIPNo.AsInteger ;
 sq_LagBal.ParamByName('ClientNo').AsInteger        := cds_LagBalORTOwnerNo.AsInteger ; //mtFilterClientNo.AsInteger ;
 sq_LagBal.ParamByName('StartDate').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(StartDate.Date) ;
 sq_LagBal.ParamByName('EndDate').AsSQLTimeStamp    := DateTimeToSQLTimeStamp(EndDate.Date) ;
 sq_LagBal.ParamByName('StartInBalDate').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(StartDate.Date) ;
 sq_LagBal.ParamByName('EndInBalDate').AsSQLTimeStamp    := DateTimeToSQLTimeStamp(StartDate.Date+1) ;

// if thisuser.userid = 8 then sq_LagBal.sql.savetofile('sq_LagBal.txt') ;
 cds_LagBal.Active:= True ;
 grdLagerBalansDBTableView1.ViewData.Expand(False);

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfLagerBalans.grdLagerBalansORTDBBandedTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
Var    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 StartDate.Date:= RecodeHour(StartDate.Date, 0);
 StartDate.Date:= RecodeMinute(StartDate.Date, 0);
 StartDate.Date:= RecodeSecond(StartDate.Date, 0);

 EndDate.Date:= RecodeHour(EndDate.Date, 23);
 EndDate.Date:= RecodeMinute(EndDate.Date, 59);
 EndDate.Date:= RecodeSecond(EndDate.Date, 59);

 PanelLagerNamn.Caption:= cds_LagBalORTORT.AsString ;

 mtFilter.Edit ;
 mtFilterLIPNo.AsInteger:= -1 ;
 mtFilter.Post ;

 cds_LagBal.Active:= False ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 sq_LagBal.ParamByName('PIPNo').AsInteger                 := cds_LagBalORTPIPNo.AsInteger ;
 sq_LagBal.ParamByName('LIPNo').AsInteger                 := -1 ;//cds_LagBalORTLIPNo.AsInteger ;
 sq_LagBal.ParamByName('ClientNo').AsInteger              := cds_LagBalORTOwnerNo.AsInteger ; //mtFilterClientNo.AsInteger ;
 sq_LagBal.ParamByName('StartDate').AsSQLTimeStamp        := DateTimeToSQLTimeStamp(StartDate.Date) ;
 sq_LagBal.ParamByName('EndDate').AsSQLTimeStamp          := DateTimeToSQLTimeStamp(EndDate.Date) ;
 sq_LagBal.ParamByName('StartInBalDate').AsSQLTimeStamp   := DateTimeToSQLTimeStamp(StartDate.Date) ;
 sq_LagBal.ParamByName('EndInBalDate').AsSQLTimeStamp     := DateTimeToSQLTimeStamp(StartDate.Date+1) ;

// if thisuser.userid = 8 then sq_LagBal.sql.savetofile('sq_LagBal.txt') ;
 cds_LagBal.Active:= True ;
 grdLagerBalansDBTableView1.ViewData.Expand(False);

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfLagerBalans.mtFilterSalesRegionNoChange(Sender: TField);
begin
 Try
 mtFilterSalesRegionNo.OnChange:= Nil ;
 cdsClient.Active:= False ;
 sq_Clients.ParamByName('SalesRegionNo').AsInteger:= mtFilterSalesRegionNo.AsInteger ;
 cdsClient.Active:= True ;
 if cdsClient.RecordCount > 0 then
 Begin
  mtFilter.Edit ;
//  mtFilterSalesRegionNo.AsInteger  := GetSalesRegionNo(ThisUser.CompanyNo) ;
  mtFilterClientNo.AsInteger       := cdsClientClientNo.AsInteger ;
  mtFilter.Post ;
 End ;
 Finally
  mtFilterSalesRegionNo.OnChange:= mtFilterSalesRegionNoChange ;
 End ;
end;

procedure TfLagerBalans.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfLagerBalans.FormDestroy(Sender: TObject);
begin
 fLagerBalans:= NIL ;
end;

procedure TfLagerBalans.grdLagerBalansDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
Var   fLagBalDtl  : TfLagBalDtl;
      ExternLoad  : Boolean ;
begin
//'2) INLEVERANSER' AS GRUPP, '2.1) EXTERNA' AS ITEM,
//'2) INLEVERANSER' AS GRUPP, '2.2) INTERNA' AS ITEM,
//'2) INLEVERANSER' AS GRUPP, '2.3) INTERNA (TRANSIT)' AS ITEM,
//'6) UTLEVERANSER' AS GRUPP, '6.1) INTERNA' AS ITEM,
//'6) UTLEVERANSER' AS GRUPP, '6.2) EXTERNA' AS ITEM,
 if (cds_LagBalSortOrder.AsInteger = 21) or
    (cds_LagBalSortOrder.AsInteger = 22) or
    (cds_LagBalSortOrder.AsInteger = 23) or
    (cds_LagBalSortOrder.AsInteger = 61) or
    (cds_LagBalSortOrder.AsInteger = 62) then
    ShowLastDetails
    else
//'5) FÖRBRUKNING' AS GRUPP, PU.RegPointName AS ITEM, 31
//'5) FÖRBRUKNING' AS GRUPP, PU.RegPointName AS ITEM, 51
     if (cds_LagBalSortOrder.AsInteger = 31) or (cds_LagBalSortOrder.AsInteger = 51) then
      ShowProductionDetails
      else
//'4) LAGERVÅRD' AS GRUPP, '4.1) BORTTAGNA' AS ITEM,
//'4) LAGERVÅRD' AS GRUPP, '4.2) ÅTERSTÄLLDA' AS ITEM,
//'4) LAGERVÅRD' AS GRUPP, '4.3) ÄNDRADE PAKET' AS ITEM,
      if (cds_LagBalSortOrder.AsInteger = 41) or (cds_LagBalSortOrder.AsInteger = 42)
      or (cds_LagBalSortOrder.AsInteger = 43) then
       ShowLagerVardDetails ;
end;

procedure TfLagerBalans.ShowLagerVardDetails ;
Var   fLagBalDtl  : TfLagBalDtl;
      Operation   : Integer ;
begin
 fLagBalDtl:= TfLagBalDtl.Create(nil) ;
 try
  if (cds_LagBalSortOrder.AsInteger = 31)  then
   Operation:= 0
    else
     if (cds_LagBalSortOrder.AsInteger = 51) then
      Operation:= 3 ;  //3 = avregistrera
  //  RefreshProduction(const OwnerNo, PIPNo, LIPNo, RegPointNo, Operation : Integer;const StartPeriod, EndPeriod : TSQLTimeStamp) ;
  fLagBalDtl.RefreshProduction(
  cds_LagBalORTOwnerNo.AsInteger, //mtFilterClientNo.AsInteger ; //OwnerNo,
  cds_LagBalORTPIPNo.AsInteger, //PIPNo,
  mtFilterLIPNo.AsInteger, //LIPNo : Integer;
  dmsSystem.GetRegPointNoOfRegPointName(cds_LagBalITEM.AsString), //RegPointNo,
  Operation,  //Operation
  DateTimeToSQLTimeStamp(StartDate.Date), //StartDate,
  DateTimeToSQLTimeStamp(EndDate.Date) ) ; //EndDate : TSQLTimeStamp) ;
  fLagBalDtl.ShowModal ;
 finally
  FreeAndNil(fLagBalDtl) ;
 end;
end;

procedure TfLagerBalans.ShowProductionDetails ;
Var   fLagBalDtl  : TfLagBalDtl;
      Operation   : Integer ;
begin
 fLagBalDtl:= TfLagBalDtl.Create(nil) ;
 try
  if (cds_LagBalSortOrder.AsInteger = 31)  then
   Operation:= 0
    else
     if (cds_LagBalSortOrder.AsInteger = 51) then
      Operation:= 3 ;  //3 = avregistrera
  //  RefreshProduction(const OwnerNo, PIPNo, LIPNo, RegPointNo, Operation : Integer;const StartPeriod, EndPeriod : TSQLTimeStamp) ;
  fLagBalDtl.RefreshProduction(
  cds_LagBalORTOwnerNo.AsInteger, //mtFilterClientNo.AsInteger ; //OwnerNo,
  cds_LagBalORTPIPNo.AsInteger, //PIPNo,
  mtFilterLIPNo.AsInteger, //LIPNo : Integer;
  dmsSystem.GetRegPointNoOfRegPointName(cds_LagBalITEM.AsString), //RegPointNo,
  Operation,  //Operation
  DateTimeToSQLTimeStamp(StartDate.Date), //StartDate,
  DateTimeToSQLTimeStamp(EndDate.Date) ) ; //EndDate : TSQLTimeStamp) ;
  fLagBalDtl.ShowModal ;
 finally
  FreeAndNil(fLagBalDtl) ;
 end;
end;

procedure TfLagerBalans.ShowLastDetails ;
Var   fLagBalDtl  : TfLagBalDtl;
      ExternLoad  : Boolean ;
begin
 fLagBalDtl:= TfLagBalDtl.Create(nil) ;
 try
  if (cds_LagBalSortOrder.AsInteger = 21) or (cds_LagBalSortOrder.AsInteger = 62) then
   ExternLoad:= True
    else
     ExternLoad:= False ;
  fLagBalDtl.RefreshInternalDeliveries(
  ExternLoad, //ExternLoad
  cds_LagBalORTOwnerNo.AsInteger, //mtFilterClientNo.AsInteger ; //VerkNo,
  cds_LagBalSortOrder.AsInteger, //SortOrder,
  cds_LagBalORTPIPNo.AsInteger, //PIPNo,
  mtFilterLIPNo.AsInteger, //LIPNo : Integer;
  DateTimeToSQLTimeStamp(StartDate.Date), //StartDate,
  DateTimeToSQLTimeStamp(EndDate.Date) //EndDate : TSQLTimeStamp) ;
  ) ;
  fLagBalDtl.ShowModal ;
 finally
  FreeAndNil(fLagBalDtl) ;
 end;
end;



procedure TfLagerBalans.acInventoryMissingExecute(Sender: TObject);
Var    Save_Cursor : TCursor;
begin
 sq_LagBal.SQL.Clear ;
 sq_LagBal.SQL.Add('Select '+Quotedstr('1) INGÅENDE BALANS') +' AS GRUPP,') ;
 sq_LagBal.SQL.Add('CASE') ;
 sq_LagBal.SQL.Add('WHEN ins.RowNo = 11 THEN '+Quotedstr('1.1) I LAGER')) ;
 sq_LagBal.SQL.Add('END') ;
 sq_LagBal.SQL.Add('AS ITEM,') ;

 sq_LagBal.SQL.Add('0.0 AS AM3,') ;
 sq_LagBal.SQL.Add('0.0 AS NM3,') ;
 sq_LagBal.SQL.Add('0.0 AS SubTotal, 1 AS SortOrder') ;
 sq_LagBal.SQL.Add('FROM dbo.InvenStatusII ins') ;
 sq_LagBal.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = ins.PackageTypeNo') ;
 sq_LagBal.SQL.Add('Inner Join dbo.LogicalInventoryPoint AS LIP on lip.LogicalInventoryPointNo = ins.LogicalInventoryPointNo') ;
 sq_LagBal.SQL.Add('WHERE ins.InvDate >= :StartInBalDate') ;
 sq_LagBal.SQL.Add('AND ins.InvDate <= :EndInBalDate') ;
 sq_LagBal.SQL.Add('AND ins.OwnerNo = :ClientNo') ;
 sq_LagBal.SQL.Add('AND ((ins.LogicalInventoryPointNo = :LIPNo) or (-1 = :LIPNo))') ;
 sq_LagBal.SQL.Add('AND ((LIP.PhysicalInventoryPointNo = :PIPNo) or (-1 = :PIPNo))') ;
 sq_LagBal.SQL.Add('AND LIP.SequenceNo = 1') ;
 sq_LagBal.SQL.Add('Group By ins.RowNo') ;

 sq_LagBal.SQL.Add('UNION') ;

 sq_LagBal.SQL.Add('Select inv.GroupName, inv.Item, SUM(inv.AM3) AS AM3, SUM(inv.NM3) AS NM3, 0.0 AS SubTotal, inv.SortOrder') ;
 sq_LagBal.SQL.Add('FROM dbo.InvBalII inv') ;
 sq_LagBal.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint AS LIP on lip.LogicalInventoryPointNo = inv.LIPNo') ;
 sq_LagBal.SQL.Add('WHERE inv.[InvDate] >= :StartDate') ;
 sq_LagBal.SQL.Add('AND inv.[InvDate] <= :EndDate') ;
 sq_LagBal.SQL.Add('AND inv.VerkNo  = :ClientNo') ;
// sq_LagBal.SQL.Add('AND ((inv.LIPNo = :LIPNo) or (-1 = :LIPNo))') ;
 sq_LagBal.SQL.Add('AND ((-1 = :LIPNo) AND (inv.LIPNo is null))') ;
 sq_LagBal.SQL.Add('AND ((inv.PIPNo = :PIPNo) or (-1 = :PIPNo))') ;


// sq_LagBal.SQL.Add('AND LIP.SequenceNo = 1') ;
 sq_LagBal.SQL.Add('Group By inv.GroupName, inv.Item, inv.SortOrder') ;

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 StartDate.Date:= RecodeHour(StartDate.Date, 0);
 StartDate.Date:= RecodeMinute(StartDate.Date, 0);
 StartDate.Date:= RecodeSecond(StartDate.Date, 0);

 EndDate.Date:= RecodeHour(EndDate.Date, 23);
 EndDate.Date:= RecodeMinute(EndDate.Date, 59);
 EndDate.Date:= RecodeSecond(EndDate.Date, 59);

 PanelLagerNamn.Caption:= cds_LagBalORTORT.AsString+'/Ej bestämda lagergrupper' ;


 mtFilter.Edit ;
 mtFilterLIPNo.AsInteger:= cds_LagGruppLIPNo.AsInteger ;
 mtFilter.Post ;

 cds_LagBal.Active:= False ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 sq_LagBal.ParamByName('PIPNo').AsInteger               := cds_LagBalORTPIPNo.AsInteger ;
 sq_LagBal.ParamByName('LIPNo').AsInteger               := -1 ;
 sq_LagBal.ParamByName('ClientNo').AsInteger            := cds_LagBalORTOwnerNo.AsInteger ; //mtFilterClientNo.AsInteger ;
 sq_LagBal.ParamByName('StartDate').AsSQLTimeStamp      := DateTimeToSQLTimeStamp(StartDate.Date) ;
 sq_LagBal.ParamByName('EndDate').AsSQLTimeStamp        := DateTimeToSQLTimeStamp(EndDate.Date) ;
 sq_LagBal.ParamByName('StartInBalDate').AsSQLTimeStamp := DateTimeToSQLTimeStamp(StartDate.Date) ;
 sq_LagBal.ParamByName('EndInBalDate').AsSQLTimeStamp   := DateTimeToSQLTimeStamp(StartDate.Date+1) ;

// if thisuser.userid = 8 then sq_LagBal.sql.savetofile('sq_LagBal.txt') ;
 cds_LagBal.Active:= True ;
 grdLagerBalansDBTableView1.ViewData.Expand(False);

//Återställ SQL
 sq_LagBal.SQL.Clear ;
 sq_LagBal.SQL.Add('Select '+Quotedstr('1) INGÅENDE BALANS') +' AS GRUPP,') ;
 sq_LagBal.SQL.Add('CASE') ;
 sq_LagBal.SQL.Add('WHEN ins.RowNo = 11 THEN '+Quotedstr('1.1) I LAGER')) ;
 sq_LagBal.SQL.Add('WHEN ins.RowNo = 12 THEN '+Quotedstr('1.1) I LAGER')) ;
 sq_LagBal.SQL.Add('WHEN ins.RowNo = 13 THEN '+Quotedstr('1.3) I LAGER')) ;
 sq_LagBal.SQL.Add('WHEN ins.RowNo = 14 THEN '+Quotedstr('1.2) PRELIMINÄRA LASTER')) ;
 sq_LagBal.SQL.Add('WHEN ins.RowNo = 15 THEN '+Quotedstr('1.3) EJ FAKTURERADE LASTER')) ;
 sq_LagBal.SQL.Add('END') ;
 sq_LagBal.SQL.Add('AS ITEM,') ;

 sq_LagBal.SQL.Add('SUM(pt.Totalm3Actual*NoOfPkgs) AS AM3,') ;
 sq_LagBal.SQL.Add('SUM(pt.Totalm3Nominal*NoOfPkgs) AS NM3,') ;
 sq_LagBal.SQL.Add('0.0 AS SubTotal, 1 AS SortOrder') ;
 sq_LagBal.SQL.Add('FROM dbo.InvenStatusII ins') ;
 sq_LagBal.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = ins.PackageTypeNo') ;
 sq_LagBal.SQL.Add('Inner Join dbo.LogicalInventoryPoint AS LIP on lip.LogicalInventoryPointNo = ins.LogicalInventoryPointNo') ;
 sq_LagBal.SQL.Add('WHERE ins.InvDate >= :StartInBalDate') ;
 sq_LagBal.SQL.Add('AND ins.InvDate <= :EndInBalDate') ;
 sq_LagBal.SQL.Add('AND ins.OwnerNo = :ClientNo') ;
 sq_LagBal.SQL.Add('AND ((ins.LogicalInventoryPointNo = :LIPNo) or (-1 = :LIPNo))') ;
 sq_LagBal.SQL.Add('AND ((LIP.PhysicalInventoryPointNo = :PIPNo) or (-1 = :PIPNo))') ;
 sq_LagBal.SQL.Add('AND LIP.SequenceNo = 1') ;
 sq_LagBal.SQL.Add('Group By ins.RowNo') ;

 sq_LagBal.SQL.Add('UNION') ;

 sq_LagBal.SQL.Add('Select inv.GroupName, inv.Item, SUM(inv.AM3) AS AM3, SUM(inv.NM3) AS NM3, 0.0 AS SubTotal, inv.SortOrder') ;
 sq_LagBal.SQL.Add('FROM dbo.InvBalII inv') ;
 sq_LagBal.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint AS LIP on lip.LogicalInventoryPointNo = inv.LIPNo') ;
 sq_LagBal.SQL.Add('WHERE inv.[InvDate] >= :StartDate') ;
 sq_LagBal.SQL.Add('AND inv.[InvDate] <= :EndDate') ;
 sq_LagBal.SQL.Add('AND inv.VerkNo  = :ClientNo') ;
 sq_LagBal.SQL.Add('AND ((inv.LIPNo = :LIPNo) or (-1 = :LIPNo))') ;
 sq_LagBal.SQL.Add('AND ((inv.PIPNo = :PIPNo) or (-1 = :PIPNo))') ;
 sq_LagBal.SQL.Add('AND ((LIP.SequenceNo = 1) or (LIP.SequenceNo is null))') ;
 sq_LagBal.SQL.Add('Group By inv.GroupName, inv.Item, inv.SortOrder') ;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfLagerBalans.grdSalesRegionDBBandedTableView1DblClick(
  Sender: TObject);
begin
 RefreshClientToSR ;
end;

procedure TfLagerBalans.cds_LBSRCalcFields(DataSet: TDataSet);
begin
 cds_LBSRNM3_UTGAENDE.AsFloat :=
 (cds_LBSRNM3_INGENDE.AsFloat + (cds_LBSRIN_NM3.AsFloat + cds_LBSRUT_NM3.AsFloat)) ;

 cds_LBSRNM3_DIFF.AsFloat := cds_LBSRNM3_UTGAENDE.AsFloat - cds_LBSRNM3_INGENDE.AsFloat ;
end;

procedure TfLagerBalans.Button1Click(Sender: TObject);
Var fMemoForm : TfMemoForm ;
begin
 fMemoForm := TfMemoForm.Create(nil) ;
 try
 fMemoForm.Memo1.Text:= sq_LBSR.Sql.Text ;
 fMemoForm.ShowModal ;
 finally
  FreeAndNil(fMemoForm) ;
 end;
end;

procedure TfLagerBalans.Button2Click(Sender: TObject);
Var fMemoForm : TfMemoForm ;
begin
 fMemoForm := TfMemoForm.Create(nil) ;
 try
 fMemoForm.Memo1.Text:= sq_LagBalORT.Sql.Text ;
 fMemoForm.ShowModal ;
 finally
  FreeAndNil(fMemoForm) ;
 end;
end;


procedure TfLagerBalans.Button3Click(Sender: TObject);
Var fMemoForm : TfMemoForm ;
begin
 fMemoForm := TfMemoForm.Create(nil) ;
 try
 fMemoForm.Memo1.Text:= sq_LagBal.Sql.Text ;
 fMemoForm.ShowModal ;
 finally
  FreeAndNil(fMemoForm) ;
 end;
end;

end.
