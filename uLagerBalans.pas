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
  dxPSCore, dxPScxCommon, cxSplitter,
  cxGridBandedTableView, cxGridDBBandedTableView, Menus,
  cxLookAndFeelPainters, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer,
  dxPScxCheckListBoxLnk, dxPSLbxLnk, dxPSTextLnk, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, cxNavigator, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxPivotGridLnk, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, uADStanIntf,
  uADStanOption, uADStanParam, uADStanError, uADDatSManager, uADPhysIntf,
  uADDAptIntf, uADStanAsync, uADDAptManager, uADCompDataSet, uADCompClient  ;

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
    sq_Clients2: TSQLQuery;
    sq_Clients2ClientNo: TIntegerField;
    sq_Clients2ClientName: TStringField;
    dspClients: TDataSetProvider;
    cdsClient2: TClientDataSet;
    cdsClient2ClientNo: TIntegerField;
    cdsClient2ClientName: TStringField;
    dsClient: TDataSource;
    mtFilterVERK: TStringField;
    sq_PIP2: TSQLQuery;
    dsp_PIP: TDataSetProvider;
    ds_PIP: TDataSource;
    sq_LIP2: TSQLQuery;
    dsp_LIP: TDataSetProvider;
    ds_LIP: TDataSource;
    cds_PIP2: TClientDataSet;
    cds_PIP2PIPNo: TIntegerField;
    cds_PIP2ORT: TStringField;
    cds_LIP2: TClientDataSet;
    cds_LIP2LIPNo: TIntegerField;
    cds_LIP2LAGERGRUPP: TStringField;
    cds_LIP2PIPNo: TIntegerField;
    cds_PIP2ClientNo: TIntegerField;
    sq_LagBal2: TSQLQuery;
    dsp_LagBal: TDataSetProvider;
    cds_LagBal2: TClientDataSet;
    cds_LagBal2ITEM: TStringField;
    ds_LagBal: TDataSource;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    acRefresh: TAction;
    cds_LagBal2GRUPP: TStringField;
    cxLookAndFeelController1: TcxLookAndFeelController;
    ImageList1: TImageList;
    BitBtn3: TBitBtn;
    acPrint: TAction;
    acGetCurrentMonth: TAction;
    acGetPrevMonth: TAction;
    acGetNextMonth: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    acDetailInformation: TAction;
    cds_LagBal2SubTotal: TFloatField;
    BitBtn5: TBitBtn;
    acClose: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cds_LagBal2NM3: TFloatField;
    cds_LagBal2SortOrder: TIntegerField;
    cxSplitter1: TcxSplitter;
    sq_LagBalORT2: TSQLQuery;
    dsp_LagBalORT: TDataSetProvider;
    cds_LagBalORT2: TClientDataSet;
    ds_LagBalORT: TDataSource;
    cds_LagBalORT2PIPNo: TIntegerField;
    cds_LagBalORT2NM3_DIFF: TFloatField;
    sq_LagGrupp2: TSQLQuery;
    dsp_LagGrupp: TDataSetProvider;
    cds_LagGrupp2: TClientDataSet;
    ds_LagGrupp: TDataSource;
    cds_LagGrupp2GRPNAMN: TStringField;
    cds_LagGrupp2PIPNo: TIntegerField;
    cds_LagGrupp2LIPNo: TIntegerField;
    cds_LagBalORT2ORT: TStringField;
    cds_LagBalORT2NM3_INGENDE: TFloatField;
    cds_LagBalORT2NM3_RRELSE_IN: TFloatField;
    cds_LagBalORT2NM3_RRELSE_UT: TFloatField;
    cds_LagBalORT2NM3_UTGAENDE: TFloatField;
    Panel1: TPanel;
    PanelLagerNamn: TPanel;
    grdLagerBalans: TcxGrid;
    grdLagerBalansDBTableView1: TcxGridDBTableView;
    grdLagerBalansDBTableView1GRUPP: TcxGridDBColumn;
    grdLagerBalansDBTableView1ITEM: TcxGridDBColumn;
    grdLagerBalansDBTableView1NM3: TcxGridDBColumn;
    grdLagerBalansDBTableView1SubTotal: TcxGridDBColumn;
    grdLagerBalansLevel1: TcxGridLevel;
    sq_SalesRegion2: TSQLQuery;
    dsp_SalesRegion: TDataSetProvider;
    cds_SalesRegion2: TClientDataSet;
    ds_SalesRegion: TDataSource;
    mtFilterSalesRegionNo: TIntegerField;
    cds_SalesRegion2ClientNo: TIntegerField;
    cds_SalesRegion2ClientName: TStringField;
    mtFilterSalesRegion: TStringField;
    mtFilterLIPNo: TIntegerField;
    BitBtn6: TBitBtn;
    acInventoryMissing: TAction;
    sq_LBSR2: TSQLQuery;
    dsp_LBSR: TDataSetProvider;
    cds_LBSR2: TClientDataSet;
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
    cds_LBSR2REGION: TStringField;
    cds_LBSR2NM3_INGENDE: TFloatField;
    cds_LBSR2IN_NM3: TFloatField;
    cds_LBSR2UT_NM3: TFloatField;
    cds_LBSR2ClientNo: TIntegerField;
    cds_LBSR2NM3_UTGAENDE: TFloatField;
    grdSalesRegionDBBandedTableView1: TcxGridDBBandedTableView;
    grdSalesRegionDBBandedTableView1REGION: TcxGridDBBandedColumn;
    grdSalesRegionDBBandedTableView1NM3_INGENDE: TcxGridDBBandedColumn;
    grdSalesRegionDBBandedTableView1IN_NM3: TcxGridDBBandedColumn;
    grdSalesRegionDBBandedTableView1UT_NM3: TcxGridDBBandedColumn;
    grdSalesRegionDBBandedTableView1NM3_DIFF: TcxGridDBBandedColumn;
    grdSalesRegionDBBandedTableView1NM3_UTGAENDE: TcxGridDBBandedColumn;
    cds_LagBalORT2OwnerNo: TIntegerField;
    cds_LagBalORT2GARE: TStringField;
    grdLagerBalansORTDBBandedTableView1GARE: TcxGridDBBandedColumn;
    cds_LagBal2VRDE: TFloatField;
    grdLagerBalansDBTableView1VRDE: TcxGridDBColumn;
    cds_LBSR2NM3_DIFF: TFloatField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    acLBPerDay: TAction;
    pmLBPerDay: TPopupMenu;
    acLBPerDay1: TMenuItem;
    cds_Lip: TADQuery;
    cds_LipLIPNo: TIntegerField;
    cds_LipLAGERGRUPP: TStringField;
    cds_LipPIPNo: TIntegerField;
    cds_PIP: TADQuery;
    cds_LagBal: TADQuery;
    cdsClient: TADQuery;
    cds_SalesRegion: TADQuery;
    cds_LagGrupp: TADQuery;
    cds_PIPPIPNo: TIntegerField;
    cds_PIPORT: TStringField;
    cds_PIPClientNo: TIntegerField;
    cds_LagBalGRUPP: TStringField;
    cds_LagBalITEM: TStringField;
    cds_LagBalAM3: TFloatField;
    cds_LagBalNM3: TFloatField;
    cds_LagBalSubTotal: TBCDField;
    cds_LagBalSortOrder: TIntegerField;
    cds_LagBalVÄRDE: TBCDField;
    cdsClientClientNo: TIntegerField;
    cdsClientClientName: TStringField;
    cds_SalesRegionClientNo: TIntegerField;
    cds_SalesRegionClientName: TStringField;
    cds_LagGruppGRPNAMN: TStringField;
    cds_LagGruppPIPNo: TIntegerField;
    cds_LagGruppLIPNo: TIntegerField;
    cds_LagBalORT: TADQuery;
    cds_LagBalORTOwnerNo: TIntegerField;
    cds_LagBalORTÄGARE: TStringField;
    cds_LagBalORTORT: TStringField;
    cds_LagBalORTPIPNo: TIntegerField;
    cds_LagBalORTNM3_INGÅENDE: TFloatField;
    cds_LagBalORTNM3_RÖRELSE_IN: TFloatField;
    cds_LagBalORTNM3_RÖRELSE_UT: TFloatField;
    cds_LagBalORTNM3_DIFF: TFloatField;
    cds_LagBalORTNM3_UTGAENDE: TFloatField;
    cds_LBSR: TADQuery;
    cds_LBSRClientNo: TIntegerField;
    cds_LBSRREGION: TStringField;
    cds_LBSRNM3_INGÅENDE: TFloatField;
    cds_LBSRIN_NM3: TFloatField;
    cds_LBSRUT_NM3: TFloatField;
    cds_LBSRNM3_UTGAENDE: TFloatField;
    cds_LBSRNM3_DIFF: TFloatField;
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
    procedure acCloseExecute(Sender: TObject);
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
    procedure cds_LBSR2CalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure acLBPerDayExecute(Sender: TObject);
    procedure cds_LagBalORTCalcFields(DataSet: TDataSet);
    procedure cds_LBSRCalcFields(DataSet: TDataSet);
    procedure grdLagerBalansORTDBTableView2DataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: string;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
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
  uMemoForm, uLBperDay;

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
 cdsClient.ParamByName('SalesRegionNo').AsInteger:= mtFilterSalesRegionNo.AsInteger ;
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
 cds_LagBalORT.ParamByName('ClientNo').AsInteger             := cds_LBSRClientNo.AsInteger ; //mtFilterClientNo.AsInteger ;
 cds_LagBalORT.ParamByName('StartDate').AsSQLTimeStamp       := DateTimeToSQLTimeStamp(StartDate.Date) ;
 cds_LagBalORT.ParamByName('EndDate').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(EndDate.Date) ;
 cds_LagBalORT.ParamByName('StartInBalDate').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(StartDate.Date) ; //tog bort -1
 cds_LagBalORT.ParamByName('EndInBalDate').AsSQLTimeStamp    := DateTimeToSQLTimeStamp(StartDate.Date) ; //tog bort + 1 : ändrade till EndDate.Date från StartDate.Date
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
 cds_LBSR.ParamByName('StartDate').AsSQLTimeStamp       := DateTimeToSQLTimeStamp(StartDate.Date) ;
 cds_LBSR.ParamByName('EndDate').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(EndDate.Date) ;
 cds_LBSR.ParamByName('StartInBalDate').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(StartDate.Date) ;
 cds_LBSR.ParamByName('EndInBalDate').AsSQLTimeStamp    := DateTimeToSQLTimeStamp(StartDate.Date) ;//tog bort  + 1  : ändrade till EndDate.Date från StartDate
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
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;  
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1) ;
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

procedure TfLagerBalans.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfLagerBalans.cds_LagBalORTCalcFields(DataSet: TDataSet);
begin
cds_LagBalORTNM3_UTGAENDE.AsFloat :=
 (cds_LagBalORTNM3_INGÅENDE.AsFloat + (cds_LagBalORTNM3_RÖRELSE_IN.AsFloat + cds_LagBalORTNM3_RÖRELSE_UT.AsFloat)) ;

 cds_LagBalORTNM3_DIFF.AsFloat := cds_LagBalORTNM3_UTGAENDE.AsFloat - cds_LagBalORTNM3_INGÅENDE.AsFloat ;
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
 cds_LagBal.ParamByName('PIPNo').AsInteger           := cds_LagBalORTPIPNo.AsInteger ;
 cds_LagBal.ParamByName('LIPNo').AsInteger           := cds_LagGruppLIPNo.AsInteger ;
 cds_LagBal.ParamByName('ClientNo').AsInteger        := cds_LagBalORTOwnerNo.AsInteger ; //mtFilterClientNo.AsInteger ;
 cds_LagBal.ParamByName('StartDate').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(StartDate.Date) ;
 cds_LagBal.ParamByName('EndDate').AsSQLTimeStamp    := DateTimeToSQLTimeStamp(EndDate.Date) ;
 cds_LagBal.ParamByName('StartInBalDate').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(StartDate.Date - 1) ;
 cds_LagBal.ParamByName('EndInBalDate').AsSQLTimeStamp    := DateTimeToSQLTimeStamp(StartDate.Date) ;//tog bort  + 1

// if thisuser.userid = 8 then cds_LagBal.sql.savetofile('cds_LagBal.txt') ;
 cds_LagBal.Active:= True ;
 grdLagerBalansDBTableView1.ViewData.Expand(False);

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfLagerBalans.grdLagerBalansORTDBTableView2DataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: string;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  with (ADataSet as TADQuery) do
  begin
    if ParamByName('PIPNo').Value = AMasterDetailKeyValues then

    begin
      First;
      Exit;
    end;
    DisableControls;
    try
      Active := False;
      ParamByName(AMasterDetailKeyFieldNames).Value := AMasterDetailKeyValues;
      Active := True;
    finally
      EnableControls;
    end;
    AReopened := True;
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
 cds_LagBal.ParamByName('PIPNo').AsInteger                 := cds_LagBalORTPIPNo.AsInteger ;
 cds_LagBal.ParamByName('LIPNo').AsInteger                 := -1 ;//cds_LagBalORTLIPNo.AsInteger ;
 cds_LagBal.ParamByName('ClientNo').AsInteger              := cds_LagBalORTOwnerNo.AsInteger ; //mtFilterClientNo.AsInteger ;
 cds_LagBal.ParamByName('StartDate').AsSQLTimeStamp        := DateTimeToSQLTimeStamp(StartDate.Date) ;
 cds_LagBal.ParamByName('EndDate').AsSQLTimeStamp          := DateTimeToSQLTimeStamp(EndDate.Date) ;
 cds_LagBal.ParamByName('StartInBalDate').AsSQLTimeStamp   := DateTimeToSQLTimeStamp(StartDate.Date) ;
 cds_LagBal.ParamByName('EndInBalDate').AsSQLTimeStamp     := DateTimeToSQLTimeStamp(StartDate.Date) ; //tog bort + 1!

// if thisuser.userid = 8 then cds_LagBal.sql.savetofile('cds_LagBal.txt') ;
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
 cdsClient.ParamByName('SalesRegionNo').AsInteger:= mtFilterSalesRegionNo.AsInteger ;
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
//'2) INLEVERANSER' AS GRUPP, '2.4) EXTERNA' AS ITEM,
//'2) INLEVERANSER' AS GRUPP, '2.2) INTERNA' AS ITEM,
//'2) INLEVERANSER' AS GRUPP, '2.3) INTERNA (TRANSIT)' AS ITEM,
//'2) INLEVERANSER' AS GRUPP, '2.5) EXTERNA (TRANSIT)' AS ITEM,
//'6) UTLEVERANSER' AS GRUPP, '6.1) INTERNA' AS ITEM,
//'6) UTLEVERANSER' AS GRUPP, '6.2) AVROP EXTERNA' AS ITEM,
//'6) UTLEVERANSER' AS GRUPP, '6.4) LO EXTERNA' AS ITEM,
//'7) UTLEVERANSER' AS GRUPP, '7.1) PRELIMINÄRA LASTER' AS ITEM,
//'7) UTLEVERANSER' AS GRUPP, '7.2) EJ FAKT' AS ITEM,
 if (cds_LagBalSortOrder.AsInteger = 21) or
    (cds_LagBalSortOrder.AsInteger = 22) or
    (cds_LagBalSortOrder.AsInteger = 23) or
    (cds_LagBalSortOrder.AsInteger = 24) or
    (cds_LagBalSortOrder.AsInteger = 25) or
    (cds_LagBalSortOrder.AsInteger = 61) or
    (cds_LagBalSortOrder.AsInteger = 62) or
    (cds_LagBalSortOrder.AsInteger = 64) or    
    (cds_LagBalSortOrder.AsInteger = 72) or
    (cds_LagBalSortOrder.AsInteger = 71) then
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

  fLagBalDtl.pgMain.ActivePageIndex := 1 ;
  fLagBalDtl.Caption  := cds_LagBalGRUPP.AsString + '/' + cds_LagBalItem.AsString
  + '      ' + DateTimeToStr(StartDate.Date) + ' - ' + DateTimeToStr(EndDate.Date) ;

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
  if (cds_LagBalSortOrder.AsInteger = 72) or (cds_LagBalSortOrder.AsInteger = 62) then
   ExternLoad:= True
    else
     ExternLoad:= False ;

{  if Pos('EXTERNA', cds_LagBalItem.AsString) = 0 then
  ExternLoad:= False
  else
  ExternLoad:= True ; }


  fLagBalDtl.pgMain.ActivePageIndex := 0 ;
  fLagBalDtl.Caption  := cds_LagBalGRUPP.AsString + '/' + cds_LagBalItem.AsString
  + '      ' + DateTimeToStr(StartDate.Date) + ' - ' + DateTimeToStr(EndDate.Date) ;

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
 cds_LagBal.SQL.Clear ;
 cds_LagBal.SQL.Add('Select '+Quotedstr('1) INGÅENDE BALANS') +' AS GRUPP,') ;
// cds_LagBal.SQL.Add('CASE') ;
 cds_LagBal.SQL.Add(Quotedstr('1.1) I LAGER') ) ;
// cds_LagBal.SQL.Add('END') ;
 cds_LagBal.SQL.Add(' AS ITEM,') ;

 cds_LagBal.SQL.Add('0.0 AS AM3,') ;
 cds_LagBal.SQL.Add('0.0 AS NM3,') ;
 cds_LagBal.SQL.Add('0.0 AS SubTotal, 1 AS SortOrder') ;
 cds_LagBal.SQL.Add('FROM dbo.InvenStatusII ins') ;
// cds_LagBal.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = ins.PackageTypeNo') ;
 cds_LagBal.SQL.Add('Inner Join dbo.LogicalInventoryPoint AS LIP on lip.LogicalInventoryPointNo = ins.LogicalInventoryPointNo') ;
 cds_LagBal.SQL.Add('WHERE ins.InvDate >= :StartInBalDate') ;
 cds_LagBal.SQL.Add('AND ins.InvDate <= :EndInBalDate') ;
 cds_LagBal.SQL.Add('AND ins.OwnerNo = :ClientNo') ;
 cds_LagBal.SQL.Add('AND ((ins.LogicalInventoryPointNo = :LIPNo) or (-1 = :LIPNo))') ;
 cds_LagBal.SQL.Add('AND ((LIP.PhysicalInventoryPointNo = :PIPNo) or (-1 = :PIPNo))') ;
 cds_LagBal.SQL.Add('AND LIP.SequenceNo = 1') ;
// cds_LagBal.SQL.Add('Group By ins.RowNo') ;

 cds_LagBal.SQL.Add('UNION') ;

 cds_LagBal.SQL.Add('Select inv.GroupName, inv.Item, SUM(inv.AM3) AS AM3, SUM(inv.NM3) AS NM3, 0.0 AS SubTotal, inv.SortOrder') ;
 cds_LagBal.SQL.Add('FROM dbo.InvBalII inv') ;
 cds_LagBal.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint AS LIP on lip.LogicalInventoryPointNo = inv.LIPNo') ;
 cds_LagBal.SQL.Add('WHERE inv.[InvDate] >= :StartDate') ;
 cds_LagBal.SQL.Add('AND inv.[InvDate] <= :EndDate') ;
 cds_LagBal.SQL.Add('AND inv.VerkNo  = :ClientNo') ;
// cds_LagBal.SQL.Add('AND ((inv.LIPNo = :LIPNo) or (-1 = :LIPNo))') ;
 cds_LagBal.SQL.Add('AND ((-1 = :LIPNo) AND (inv.LIPNo is null))') ;
 cds_LagBal.SQL.Add('AND ((inv.PIPNo = :PIPNo) or (-1 = :PIPNo))') ;


// cds_LagBal.SQL.Add('AND LIP.SequenceNo = 1') ;
 cds_LagBal.SQL.Add('Group By inv.GroupName, inv.Item, inv.SortOrder') ;

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
 cds_LagBal.ParamByName('PIPNo').AsInteger               := cds_LagBalORTPIPNo.AsInteger ;
 cds_LagBal.ParamByName('LIPNo').AsInteger               := -1 ;
 cds_LagBal.ParamByName('ClientNo').AsInteger            := cds_LagBalORTOwnerNo.AsInteger ; //mtFilterClientNo.AsInteger ;
 cds_LagBal.ParamByName('StartDate').AsSQLTimeStamp      := DateTimeToSQLTimeStamp(StartDate.Date) ;
 cds_LagBal.ParamByName('EndDate').AsSQLTimeStamp        := DateTimeToSQLTimeStamp(EndDate.Date) ;
 cds_LagBal.ParamByName('StartInBalDate').AsSQLTimeStamp := DateTimeToSQLTimeStamp(StartDate.Date - 1) ;
 cds_LagBal.ParamByName('EndInBalDate').AsSQLTimeStamp   := DateTimeToSQLTimeStamp(StartDate.Date) ; ////tog bort  + 1

// if thisuser.userid = 8 then cds_LagBal.sql.savetofile('cds_LagBal.txt') ;
 cds_LagBal.Active:= True ;
 grdLagerBalansDBTableView1.ViewData.Expand(False);

//Återställ SQL
 cds_LagBal.SQL.Clear ;
 cds_LagBal.SQL.Add('Select '+Quotedstr('1) INGÅENDE BALANS') +' AS GRUPP,') ;
 cds_LagBal.SQL.Add('CASE') ;
 cds_LagBal.SQL.Add('WHEN ins.RowNo = 11 THEN '+Quotedstr('1.1) I LAGER')) ;
 cds_LagBal.SQL.Add('WHEN ins.RowNo = 12 THEN '+Quotedstr('1.1) I LAGER')) ;
 cds_LagBal.SQL.Add('WHEN ins.RowNo = 13 THEN '+Quotedstr('1.3) I LAGER')) ;
 cds_LagBal.SQL.Add('WHEN ins.RowNo = 14 THEN '+Quotedstr('1.2) PRELIMINÄRA LASTER')) ;
 cds_LagBal.SQL.Add('WHEN ins.RowNo = 15 THEN '+Quotedstr('1.3) EJ FAKTURERADE LASTER')) ;
 cds_LagBal.SQL.Add('END') ;
 cds_LagBal.SQL.Add('AS ITEM,') ;

 cds_LagBal.SQL.Add('SUM(ins.AM3) AS AM3,') ;
 cds_LagBal.SQL.Add('SUM(ins.NM3) AS NM3,') ;
 cds_LagBal.SQL.Add('0.0 AS SubTotal, 1 AS SortOrder') ;
 cds_LagBal.SQL.Add('FROM dbo.InvenStatusII ins') ;
// cds_LagBal.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = ins.PackageTypeNo') ;
 cds_LagBal.SQL.Add('Inner Join dbo.LogicalInventoryPoint AS LIP on lip.LogicalInventoryPointNo = ins.LogicalInventoryPointNo') ;
 cds_LagBal.SQL.Add('WHERE ins.InvDate >= :StartInBalDate') ;
 cds_LagBal.SQL.Add('AND ins.InvDate <= :EndInBalDate') ;
 cds_LagBal.SQL.Add('AND ins.OwnerNo = :ClientNo') ;
 cds_LagBal.SQL.Add('AND ((ins.LogicalInventoryPointNo = :LIPNo) or (-1 = :LIPNo))') ;
 cds_LagBal.SQL.Add('AND ((LIP.PhysicalInventoryPointNo = :PIPNo) or (-1 = :PIPNo))') ;
 cds_LagBal.SQL.Add('AND LIP.SequenceNo = 1') ;
 cds_LagBal.SQL.Add('Group By ins.RowNo') ;

 cds_LagBal.SQL.Add('UNION') ;

 cds_LagBal.SQL.Add('Select inv.GroupName, inv.Item, SUM(inv.AM3) AS AM3, SUM(inv.NM3) AS NM3, 0.0 AS SubTotal, inv.SortOrder') ;
 cds_LagBal.SQL.Add('FROM dbo.InvBalII inv') ;
 cds_LagBal.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint AS LIP on lip.LogicalInventoryPointNo = inv.LIPNo') ;
 cds_LagBal.SQL.Add('WHERE inv.[InvDate] >= :StartDate') ;
 cds_LagBal.SQL.Add('AND inv.[InvDate] <= :EndDate') ;
 cds_LagBal.SQL.Add('AND inv.VerkNo  = :ClientNo') ;
 cds_LagBal.SQL.Add('AND ((inv.LIPNo = :LIPNo) or (-1 = :LIPNo))') ;
 cds_LagBal.SQL.Add('AND ((inv.PIPNo = :PIPNo) or (-1 = :PIPNo))') ;
 cds_LagBal.SQL.Add('AND ((LIP.SequenceNo = 1) or (LIP.SequenceNo is null))') ;
 cds_LagBal.SQL.Add('Group By inv.GroupName, inv.Item, inv.SortOrder') ;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfLagerBalans.grdSalesRegionDBBandedTableView1DblClick(
  Sender: TObject);
begin
 RefreshClientToSR ;
end;

procedure TfLagerBalans.cds_LBSR2CalcFields(DataSet: TDataSet);
begin
 cds_LBSRNM3_UTGAENDE.AsFloat :=
 (cds_LBSRNM3_INGÅENDE.AsFloat + (cds_LBSRIN_NM3.AsFloat + cds_LBSRUT_NM3.AsFloat)) ;

 cds_LBSRNM3_DIFF.AsFloat := cds_LBSRNM3_UTGAENDE.AsFloat - cds_LBSRNM3_INGÅENDE.AsFloat ;
end;

procedure TfLagerBalans.cds_LBSRCalcFields(DataSet: TDataSet);
begin
 cds_LBSRNM3_UTGAENDE.AsFloat :=
 (cds_LBSRNM3_INGÅENDE.AsFloat + (cds_LBSRIN_NM3.AsFloat + cds_LBSRUT_NM3.AsFloat)) ;

 cds_LBSRNM3_DIFF.AsFloat := cds_LBSRNM3_UTGAENDE.AsFloat - cds_LBSRNM3_INGÅENDE.AsFloat ;
end;

procedure TfLagerBalans.Button1Click(Sender: TObject);
Var fMemoForm : TfMemoForm ;
begin
 fMemoForm := TfMemoForm.Create(nil) ;
 try
 fMemoForm.Memo1.Text:= cds_LagBal.Sql.Text ;
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
 fMemoForm.Memo1.Text:= cds_LagBalORT.Sql.Text ;
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
 fMemoForm.Memo1.Text:= cds_LagBal.Sql.Text ;
 fMemoForm.ShowModal ;
 finally
  FreeAndNil(fMemoForm) ;
 end;
end;

procedure TfLagerBalans.acLBPerDayExecute(Sender: TObject);
var fLBperDay: TfLBperDay;
begin
  fLBperDay:= TfLBperDay.Create(nil) ;
  Try
   fLBperDay.Get_LBPerDay(cds_LagGruppLIPNo.AsInteger, DateTimeToSQLTimeStamp(StartDate.Date - 1),
   DateTimeToSQLTimeStamp(EndDate.Date)) ;
   fLBperDay.Caption := 'Lagerbalans logg ' + cds_LagGruppGRPNAMN.AsString
   +' / '+ DateTimeToStr(StartDate.Date)
   +' - '+ DateTimeToStr(EndDate.Date) ;
   fLBperDay.ShowModal ;
  Finally
   FreeAndNil(fLBperDay) ;
  End ;
end;

end.
