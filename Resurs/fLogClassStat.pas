unit fLogClassStat ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, dxEdLib, StdCtrls, dxCntner,
  dxEditor, dxExEdtr, ImgList, OleServer, OleCtrls,
  INIFiles, Menus, dxTL, dxTLClms, dxDBTLCl, dxGrClms,
  dxDBCtrl, dxDBGrid, SqlTimSt, CRAXDDRT_TLB, FMTBcd, DB, DBClient,
  Provider, SqlExpr, TeEngine, Series, TeeProcs, Chart, DbChart,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, kbmMemTable, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, TeeTools, cxLabel, Grids, TeeChartGrid,
  TeeURL, TeeOpenGL, TeeComma, ActnList, Buttons, DateUtils,
  cxGridBandedTableView, cxGridDBBandedTableView, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  cxCalc, cxCheckBox, cxSplitter ;

type
  TfrmLogClassStat = class(TForm)
    PanelFilterMain: TPanel;
    ImageList1: TImageList;
    pmSpecies: TPopupMenu;
    AddSpecies: TMenuItem;
    pmSorteringsKV: TPopupMenu;
    AddGrade: TMenuItem;
    RemoveGrade: TMenuItem;
    ClearGrade: TMenuItem;
    pmLogSupplier: TPopupMenu;
    AddThick: TMenuItem;
    RemoveThick: TMenuItem;
    ClearThicks: TMenuItem;
    pmLogClass: TPopupMenu;
    AddWidth: TMenuItem;
    RemoveWidth: TMenuItem;
    ClearWidths: TMenuItem;
    pmDiaClass: TPopupMenu;
    AddLength: TMenuItem;
    RemoveLength: TMenuItem;
    ClearLengths: TMenuItem;
    pmInmatningsKV: TPopupMenu;
    AddSurfacing: TMenuItem;
    RemoveSurfacing: TMenuItem;
    ClearSurfacing: TMenuItem;
    RemoveSpecies: TMenuItem;
    ClearSpecies: TMenuItem;
    PanelProdFilter: TPanel;
    grdSpecies: TdxDBGrid;
    grdSpeciesSpeciesName: TdxDBGridLookupColumn;
    grdSpeciesSpeciesNo: TdxDBGridMaskColumn;
    grdInmatningsKV: TdxDBGrid;
    grdSorteringsKV: TdxDBGrid;
    grdLogClass: TdxDBGrid;
    Panel3: TPanel;
    Splitter1: TSplitter;
    sq_LCStat: TSQLQuery;
    dsp_LCStat: TDataSetProvider;
    cds_LCStat: TClientDataSet;
    ds_LCStat: TDataSource;
    cds_LCStatLogClassNo: TIntegerField;
    cds_LCStatSTOCK: TIntegerField;
    cds_LCStatM3TO: TFloatField;
    cds_LCStatTK: TStringField;
    grdLogSupplier: TdxDBGrid;
    mtLogSupplier: TkbmMemTable;
    mtLogSupplierClientNo: TIntegerField;
    mtLogSupplierLEVERANTR: TStringField;
    dsLogSupplier: TDataSource;
    mtLogClass: TkbmMemTable;
    dsLogClass: TDataSource;
    grdLogSupplierLEVERANTR: TdxDBGridLookupColumn;
    mtSpecies: TkbmMemTable;
    mtSpeciesSpeciesNo: TIntegerField;
    mtSpeciesSpeciesName: TStringField;
    ds_Species: TDataSource;
    mtInmatningsKV: TkbmMemTable;
    mtInmatningsKVGradeName: TStringField;
    ds_InmatningsKV: TDataSource;
    mtInmatningsKVInmatningsKVNo: TIntegerField;
    mtSorteringsKV: TkbmMemTable;
    ds_SorteringsKV: TDataSource;
    mtSorteringsKVSorteringsKVNamn: TStringField;
    mtSorteringsKVSorteringsKVNo: TIntegerField;
    grdSorteringsKVSorteringsKVNamn: TdxDBGridLookupColumn;
    mtLogClassLogClassNo: TIntegerField;
    mtLogClassTIMMERKLASS: TStringField;
    sq_DiaClass: TSQLQuery;
    dsp_DiaClass: TDataSetProvider;
    cds_DiaClass: TClientDataSet;
    ds_DiaClass: TDataSource;
    grdDiaClass: TdxDBGrid;
    mtDiaClass: TkbmMemTable;
    mtDiaClassDiaClassNo: TIntegerField;
    cds_DiaClassDIA: TStringField;
    cds_DiaClassDiaClassNo: TIntegerField;
    mtDiaClassDIAMETERKLASS: TStringField;
    dsmtDiaClass: TDataSource;
    grdLogClassLogClassNo: TdxDBGridMaskColumn;
    grdLogClassTIMMERKLASS: TdxDBGridLookupColumn;
    grdDiaClassDiaClassNo: TdxDBGridMaskColumn;
    grdDiaClassDIAMETERKLASS: TdxDBGridLookupColumn;
    grdInmatningsKVGradeName: TdxDBGridLookupColumn;
    grdInmatningsKVInmatningsKVNo: TdxDBGridMaskColumn;
    cxPageControl1: TcxPageControl;
    tsTable: TcxTabSheet;
    tsDiagram: TcxTabSheet;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    grdLogStatLevel1: TcxGridLevel;
    grdLogStat: TcxGrid;
    cds_LCStatDiameterStart: TFMTBCDField;
    GridBandTool1: TGridBandTool;
    GridBandTool2: TGridBandTool;
    GridBandTool3: TGridBandTool;
    GridBandTool4: TGridBandTool;
    cxTabSheet1: TcxTabSheet;
    DBChart2: TDBChart;
    sq_DiaStat: TSQLQuery;
    dsp_DiaStat: TDataSetProvider;
    cds_DiaStat: TClientDataSet;
    cds_DiaStatSTOCK: TIntegerField;
    cds_DiaStatM3TO: TFloatField;
    cds_DiaStatTK: TStringField;
    cds_DiaStatMinDia: TFMTBCDField;
    ds_DiaStat: TDataSource;
    Series3: TBarSeries;
    GridBandTool5: TGridBandTool;
    Series4: TBarSeries;
    cds_LCStatDiameterEnd: TFMTBCDField;
    sq_TotLev: TSQLQuery;
    dsp_TotLev: TDataSetProvider;
    cds_TotLev: TClientDataSet;
    ds_TotLev: TDataSource;
    cds_TotLevLEV: TStringField;
    cds_TotLevM3TO: TFloatField;
    cds_TotLevSTOCK: TIntegerField;
    tsDiaTotPerLev: TcxTabSheet;
    DBChart3: TDBChart;
    cds_TotLevLogValue: TFloatField;
    cds_TotLevavgdia: TFloatField;
    cds_TotLevavgprice: TFloatField;
    TeeCommander1: TTeeCommander;
    GridBandTool6: TGridBandTool;
    grdTotLev: TcxGrid;
    grdTotLevDBTableView1: TcxGridDBTableView;
    grdTotLevDBTableView1LEV: TcxGridDBColumn;
    grdTotLevDBTableView1M3TO: TcxGridDBColumn;
    grdTotLevDBTableView1STOCK: TcxGridDBColumn;
    grdTotLevDBTableView1LogValue: TcxGridDBColumn;
    grdTotLevDBTableView1avgdia: TcxGridDBColumn;
    grdTotLevDBTableView1avgprice: TcxGridDBColumn;
    grdTotLevLevel1: TcxGridLevel;
    Series5: TPieSeries;
    GridBandTool7: TGridBandTool;
    GridBandTool8: TGridBandTool;
    GridBandTool9: TGridBandTool;
    GridBandTool10: TGridBandTool;
    Label3: TLabel;
    Label1: TLabel;
    cbMonthStart: TcxComboBox;
    cbYearStart: TcxComboBox;
    cbMonthEnd: TcxComboBox;
    cbYearEnd: TcxComboBox;
    Label2: TLabel;
    EndDate: TcxDateEdit;
    StartDate: TcxDateEdit;
    Label5: TLabel;
    bbCurrentMonth: TBitBtn;
    bbPreviousMonth: TBitBtn;
    BitBtn1: TBitBtn;
    ActionList1: TActionList;
    acRefresh: TAction;
    BitBtn2: TBitBtn;
    acClose: TAction;
    acHideFilter: TAction;
    cds_TotLevavglength: TFloatField;
    grdTotLevDBTableView1avglength: TcxGridDBColumn;
    bbNextMonth: TBitBtn;
    TeeCommander2: TTeeCommander;
    TeeCommander3: TTeeCommander;
    tsTabellPerDK: TcxTabSheet;
    grdDKStat: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    grdLogStatDBBandedTableView1: TcxGridDBBandedTableView;
    grdLogStatDBBandedTableView1LogClassNo: TcxGridDBBandedColumn;
    grdLogStatDBBandedTableView1STOCK: TcxGridDBBandedColumn;
    grdLogStatDBBandedTableView1M3TO: TcxGridDBBandedColumn;
    grdLogStatDBBandedTableView1TK: TcxGridDBBandedColumn;
    grdLogStatDBBandedTableView1DiameterStart: TcxGridDBBandedColumn;
    grdLogStatDBBandedTableView1DiameterEnd: TcxGridDBBandedColumn;
    grdLogStatDBBandedTableView1LogValue: TcxGridDBBandedColumn;
    grdLogStatDBBandedTableView1LogValueWithProd: TcxGridDBBandedColumn;
    sq_DKStat: TSQLQuery;
    dsp_DKStat: TDataSetProvider;
    cds_DKStat: TClientDataSet;
    ds_DKStat: TDataSource;
    cds_DKStatFOM: TFMTBCDField;
    cds_DKStatTOM: TFMTBCDField;
    cds_DKStatINMTNINGSKV: TStringField;
    cds_DKStatM3TO: TFloatField;
    cds_DKStatSTOCK: TIntegerField;
    grdDKStatDBBandedTableView1: TcxGridDBBandedTableView;
    cds_DKStatDiaClassNo: TIntegerField;
    grdDKStatDBBandedTableView1FOM: TcxGridDBBandedColumn;
    grdDKStatDBBandedTableView1TOM: TcxGridDBBandedColumn;
    grdDKStatDBBandedTableView1INMTNINGSKV: TcxGridDBBandedColumn;
    grdDKStatDBBandedTableView1M3TO: TcxGridDBBandedColumn;
    grdDKStatDBBandedTableView1STOCK: TcxGridDBBandedColumn;
    grdDKStatDBBandedTableView1TIMMER: TcxGridDBBandedColumn;
    grdDKStatDBBandedTableView1TIMMERPLUSPRODUKTION: TcxGridDBBandedColumn;
    grdDKStatDBBandedTableView1DiaClassNo: TcxGridDBBandedColumn;
    grdDKStatDBBandedTableView1TS: TcxGridDBBandedColumn;
    cds_DKStatTS: TStringField;
    cds_LCStatTS: TStringField;
    grdLogStatDBBandedTableView1TS: TcxGridDBBandedColumn;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    acPrintTabellPerTK: TAction;
    acPrintTabellPerDK: TAction;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    dxComponentPrinter1Link2: TdxGridReportLink;
    cds_DKStatTIMMER: TFloatField;
    cds_DKStatTIMMERPLUSPRODUKTION: TFloatField;
    cds_LCStatLogValue: TFloatField;
    cds_LCStatLogValueWithProd: TFloatField;
    cds_LCStatUtanProdKost: TFloatField;
    cds_LCStatMedProdKost: TFloatField;
    cds_LCStatMEDELLNGD: TFMTBCDField;
    grdLogStatDBBandedTableView1Column1: TcxGridDBBandedColumn;
    grdLogStatDBBandedTableView1Column2: TcxGridDBBandedColumn;
    grdLogStatDBBandedTableView1Column3: TcxGridDBBandedColumn;
    cds_LCStatMEDELDIA: TFMTBCDField;
    grdLogStatDBBandedTableView1Column4: TcxGridDBBandedColumn;
    cds_DKStatM3TOPris: TFloatField;
    cds_DKStatUtanProdKost: TFloatField;
    cds_DKStatMedProdKost: TFloatField;
    cds_DKStatMEDELLNGD: TFMTBCDField;
    cds_DKStatMEDELDIA: TFMTBCDField;
    cds_LCStatM3TOPris: TFloatField;
    grdLogStatDBBandedTableView1M3TOPris: TcxGridDBBandedColumn;
    grdDKStatDBBandedTableView1MEDELDIA: TcxGridDBBandedColumn;
    grdDKStatDBBandedTableView1MEDELLNGD: TcxGridDBBandedColumn;
    grdDKStatDBBandedTableView1MedProdKost: TcxGridDBBandedColumn;
    grdDKStatDBBandedTableView1UtanProdKost: TcxGridDBBandedColumn;
    grdDKStatDBBandedTableView1M3TOPris: TcxGridDBBandedColumn;
    cds_TotLevRealM3TO: TFloatField;
    cds_TotLevavgrealdia: TFloatField;
    cds_TotLevRealavglength: TFloatField;
    grdTotLevDBTableView1RealM3TO: TcxGridDBColumn;
    grdTotLevDBTableView1avgrealdia: TcxGridDBColumn;
    grdTotLevDBTableView1Realavglength: TcxGridDBColumn;
    cds_TotLevSortiment: TStringField;
    grdTotLevDBTableView1Sortiment: TcxGridDBColumn;
    cbGroupBySortiment: TcxCheckBox;
    cxSplitter1: TcxSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddSpeciesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AddThickClick(Sender: TObject);
    procedure RemoveThickClick(Sender: TObject);
    procedure ClearThicksClick(Sender: TObject);
    procedure RemoveSpeciesClick(Sender: TObject);
    procedure ClearSpeciesClick(Sender: TObject);
    procedure AddWidthClick(Sender: TObject);
    procedure RemoveWidthClick(Sender: TObject);
    procedure ClearWidthsClick(Sender: TObject);
    procedure AddLengthClick(Sender: TObject);
    procedure RemoveLengthClick(Sender: TObject);
    procedure ClearLengthsClick(Sender: TObject);
    procedure AddSurfacingClick(Sender: TObject);
    procedure RemoveSurfacingClick(Sender: TObject);
    procedure ClearSurfacingClick(Sender: TObject);
    procedure AddGradeClick(Sender: TObject);
    procedure RemoveGradeClick(Sender: TObject);
    procedure ClearGradeClick(Sender: TObject);
    procedure bbCurrentMonthClick(Sender: TObject);
    procedure bbPreviousMonthClick(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure cbMonthStartPropertiesChange(Sender: TObject);
    procedure cbYearStartPropertiesChange(Sender: TObject);
    procedure cbMonthEndPropertiesChange(Sender: TObject);
    procedure cbYearEndPropertiesChange(Sender: TObject);
    procedure acHideFilterExecute(Sender: TObject);
    procedure bbNextMonthClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acPrintTabellPerTKExecute(Sender: TObject);
    procedure acPrintTabellPerDKExecute(Sender: TObject);
  private
    { Private declarations }
    Year, Month, Day: Word ;
    Vol_By_PkgNo,
    Vol_By_Length_Gen : Boolean ;
    procedure BuildLogLogClassSQL ;
    procedure Build_DK_SQL ;
    procedure BuildDIASQL ;
    procedure BuildTotLevSQL ;
    procedure GetCurrentMonthAndYear(Sender: TObject);
  public
    { Public declarations }
    Procedure CreateCo(Sender: TObject;CompanyNo: Integer);
  end;

var
  frmLogClassStat: TfrmLogClassStat;

implementation

uses dmsDataConn, VidaUser, dm_Inventory, dmsVidaContact, VidaConst,
   dmsVidaSystem, dmsVidaProduct, dm_LogPrice, dm_SawOrder;

{$R *.dfm}

Procedure TfrmLogClassStat.CreateCo(Sender: TObject;CompanyNo: Integer);
var
  Save_Cursor:TCursor;
  x : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try

 Finally

  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmLogClassStat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree ;
end;

procedure TfrmLogClassStat.AddSpeciesClick(Sender: TObject);
begin
 mtSpecies.Insert ;
end;

procedure TfrmLogClassStat.FormCreate(Sender: TObject);
begin
 DecodeDate(Date, Year, Month, Day);
 Vol_By_Length_Gen:= False ;
 Vol_By_PkgNo:= False ;
 StartDate.Date:= Date ;
 EndDate.Date:= Date ;
 if not cds_DiaClass.Active then
  cds_DiaClass.Active:= True ;

  mtSpecies.Active:= True ;
  mtLogSupplier.Active:= True ;
  mtLogClass.Active:= True ;
  mtInmatningsKV.Active:= True ;

  mtSorteringsKV.Active:= True ;
  mtDiaClass.Active:= True ;

 With dmsContact do
 Begin
  cds_SchNameByRole.Active:= False ;
  sp_SchNameByRole.ParamByName('RoleType').AsInteger:= cLOG_SUPPLIER ;
  cds_SchNameByRole.Active:= True ;
 End ;

//  FilterChanged:= False ;
end;

procedure TfrmLogClassStat.FormDestroy(Sender: TObject);
begin
 frmLogClassStat:= NIL ;
end;

procedure TfrmLogClassStat.AddThickClick(Sender: TObject);
begin
  mtLogSupplier.Insert ;
end;

procedure TfrmLogClassStat.RemoveThickClick(Sender: TObject);
begin
  mtLogSupplier.Delete ;
end;

procedure TfrmLogClassStat.ClearThicksClick(Sender: TObject);
begin
   mtLogSupplier.Active:= False ;
   mtLogSupplier.Active:= True ;
end;

procedure TfrmLogClassStat.RemoveSpeciesClick(Sender: TObject);
begin
  mtSpecies.Delete ;
end;

procedure TfrmLogClassStat.ClearSpeciesClick(Sender: TObject);
begin
  mtSpecies.Active:= False ;
  mtSpecies.Active:= True ;
end;

procedure TfrmLogClassStat.BuildTotLevSQL ;
Var x : Integer ;
Begin
 With sq_TotLev.SQL do
 Begin
  Clear ;
  Add('Select C.SearchName AS LEV,') ;
  if cbGroupBySortiment.Checked then
  Add('LCS.Sortiment,')
  else
  Add(QuotedStr('  ')+' AS Sortiment,') ;


  Add('CONVERT(Float, SUM(LCS.Pricem3to)) as M3TO,') ;
  Add('CONVERT(Float, SUM(LCS.Realm3to)) as RealM3TO,') ;
  Add('SUM(LCS.NoOfLogs) AS STOCK,') ;
  Add('CONVERT(Float, SUM(LCS.Pricem3to * LCS.Price)) AS LogValue,') ;
  Add('CONVERT(Float, SUM(LCS.PriceDiameter * LCS.NoOfLogs) / SUM(LCS.NoOfLogs)) as avgdia,') ;
  Add('CONVERT(Float, SUM(LCS.RealDiameter * LCS.NoOfLogs) / SUM(LCS.NoOfLogs)) as avgrealdia,') ;
  Add('CONVERT(Float, SUM(LCS.Pricem3to * LCS.Price) / SUM(LCS.Pricem3to)) as avgprice,') ;
  Add('CONVERT(Float, SUM(LCS.Pricem3to * LCS.PriceLength) / SUM(LCS.Pricem3to)) as avglength,') ;
  Add('CONVERT(Float, SUM(LCS.Realm3to * LCS.RemaActualLength) / SUM(LCS.Realm3to)) as Realavglength') ;
  Add('FROM dbo.LogClassStatistics LCS') ;
  Add('Inner Join dbo.Client C on C.ClientNo = LCS.ClientNo') ;
  Add('WHERE LCS.ProdDate >= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(StartDate.Date)))) ;
  Add('AND LCS.ProdDate <= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(EndDate.Date)))) ;

  x:= 1 ;
  mtLogSupplier.First ;
  if mtLogSupplier.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtLogSupplier.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.ClientNo = '+mtLogSupplierClientNo.AsString) ;
    mtLogSupplier.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtLogClass.First ;
  if mtLogClass.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtLogClass.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.LogClassNo = '+mtLogClassLogClassNo.AsString) ;
    mtLogClass.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtDiaClass.First ;
  if mtDiaClass.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtDiaClass.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.DiaClassNo = '+mtDiaClassDiaClassNo.AsString) ;
    mtDiaClass.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtSpecies.First ;
  if mtSpecies.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtSpecies.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.SpeciesNo = '+mtSpeciesSpeciesNo.AsString) ;
    mtSpecies.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtInmatningsKV.First ;
  if mtInmatningsKV.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtInmatningsKV.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.InmatningsKV = '+mtInmatningsKVInmatningsKVNo.AsString) ;
    mtInmatningsKV.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtSorteringsKV.First ;
  if mtSorteringsKV.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtSorteringsKV.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.SorteringsKV = '+mtSorteringsKVSorteringsKVNo.AsString) ;
    mtSorteringsKV.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;


  Add('GROUP BY C.SearchName ') ;
  if cbGroupBySortiment.Checked then
  Add(', LCS.Sortiment') ;
//  Add('ORDER BY DiameterStart, DiameterEnd, LC.LogClassID, LCS.LogClassNo') ;
  if ThisUser.UserID = 8 then
   SaveToFile('sq_TotLev.txt') ;
 End ;
End ;

procedure TfrmLogClassStat.BuildLogLogClassSQL ;
Var x : Integer ;
Begin
 With sq_LCStat.SQL do
 Begin
  Clear ;
  Add('Select DiameterStart, DiameterEnd, RTRIM(LC.LogClassID)+'+QuotedStr(', ')+'+LTRIM(Str(DiameterStart))+'+QuotedStr('-')+'+LTRIM(Str(DiameterEnd)) AS TK,') ;
  Add('LCS.LogClassNo, CONVERT(Float, SUM(LCS.Realm3to)) as M3TO, SUM(LCS.NoOfLogs) AS STOCK,') ;
  Add('CONVERT(Float, SUM(LCS.Pricem3to)) as M3TOPris,') ;
  Add('SUM(LCS.PriceM3TO * LCS.Price) AS LogValue, SUM(LCS.PriceM3TO * (LCS.Price+LCS.ProductionCostPerPricem3To)) AS LogValueWithProd,') ;
  Add('S.SpeciesName AS TS,') ;
  Add('SUM(LCS.PriceM3TO * LCS.Price)/SUM(LCS.PriceM3TO) AS UtanProdKost,') ;
  Add('SUM(LCS.PriceM3TO * (LCS.Price+LCS.ProductionCostPerPricem3To))/SUM(LCS.PriceM3TO) AS MedProdKost,') ;
  Add('SUM(PriceLength)/SUM(LCS.NoOfLogs) AS MEDELLÄNGD,') ;
  Add('  SUM(PriceDiameter)/SUM(LCS.NoOfLogs) AS MEDELDIA') ;  
  Add('FROM dbo.LogClassStatistics LCS') ;
  Add('Inner Join dbo.LogClass LC ON LC.LogClassNo = LCS.LogClassNo') ;
  Add('Inner Join dbo.Species S ON S.LogSpeciesCode = LCS.SpeciesNo') ;
  Add('  			AND S.LanguageCode = 1') ;

  Add('WHERE LCS.ProdDate >= :ProdDateStart') ;
  Add('AND LCS.ProdDate <= :ProdDateEnd') ;

  x:= 1 ;
  mtLogSupplier.First ;
  if mtLogSupplier.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtLogSupplier.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.ClientNo = '+mtLogSupplierClientNo.AsString) ;
    mtLogSupplier.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtLogClass.First ;
  if mtLogClass.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtLogClass.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.LogClassNo = '+mtLogClassLogClassNo.AsString) ;
    mtLogClass.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtDiaClass.First ;
  if mtDiaClass.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtDiaClass.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.DiaClassNo = '+mtDiaClassDiaClassNo.AsString) ;
    mtDiaClass.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtSpecies.First ;
  if mtSpecies.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtSpecies.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.SpeciesNo = '+mtSpeciesSpeciesNo.AsString) ;
    mtSpecies.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtInmatningsKV.First ;
  if mtInmatningsKV.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtInmatningsKV.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.InmatningsKV = '+mtInmatningsKVInmatningsKVNo.AsString) ;
    mtInmatningsKV.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtSorteringsKV.First ;
  if mtSorteringsKV.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtSorteringsKV.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.SorteringsKV = '+mtSorteringsKVSorteringsKVNo.AsString) ;
    mtSorteringsKV.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;


  Add('GROUP BY DiameterStart, DiameterEnd, LC.LogClassID, LCS.LogClassNo, S.SpeciesName') ;
  Add('ORDER BY DiameterStart, DiameterEnd, LC.LogClassID, LCS.LogClassNo') ;
  if ThisUser.UserID = 8 then
   SaveToFile('sq_LCStat.txt') ;
 End ;
End ;

procedure TfrmLogClassStat.Build_DK_SQL ;
Var x : Integer ;
Begin
 With sq_DKStat.SQL do
 Begin
  Clear ;
  Add('Select DK.MinDia AS FOM, DK.MaxDia AS TOM,') ;
  Add('IK.KVNamn AS INMÄTNINGSKV, LCS.DiaClassNo,') ;
  Add('CONVERT(Float, SUM(LCS.Realm3to)) as M3TO,') ;
  Add('CONVERT(Float, SUM(LCS.PriceM3TO)) as M3TOPris,') ;
  Add('SUM(LCS.PriceM3TO * LCS.Price) AS TIMMER,') ;
  Add('SUM(LCS.PriceM3TO * (LCS.Price+LCS.ProductionCostPerPricem3To)) AS TIMMERPLUSPRODUKTION,') ;
  Add('SUM(LCS.NoOfLogs) AS STOCK,') ;
  Add('S.SpeciesName AS TS,') ;

  Add('SUM(LCS.PriceM3TO * LCS.Price)/SUM(LCS.PriceM3TO) AS UtanProdKost,') ;
  Add('SUM(LCS.PriceM3TO * (LCS.Price+LCS.ProductionCostPerPricem3To))/SUM(LCS.PriceM3TO) AS MedProdKost,') ;
  Add('SUM(LCS.PriceLength)/SUM(LCS.NoOfLogs) AS MEDELLÄNGD,') ;
  Add('SUM(LCS.PriceDiameter)/SUM(LCS.NoOfLogs) AS MEDELDIA') ;

  Add('FROM dbo.LogClassStatistics LCS') ;
  Add('Inner Join dbo.DiaClass DK ON DK.DiaClassNo = LCS.DiaClassNo') ;
  Add('Inner Join dbo.Species S ON S.LogSpeciesCode = LCS.SpeciesNo') ;
  Add('  			AND S.LanguageCode = 1') ;
  Add('Inner Join dbo.InmatningsKvalitet IK on IK.InmatningsKvalitetNo = LCS.InmatningsKV') ;


  Add('WHERE LCS.ProdDate >= :ProdDateStart') ;
  Add('AND LCS.ProdDate <= :ProdDateEnd') ;

  x:= 1 ;
  mtLogSupplier.First ;
  if mtLogSupplier.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtLogSupplier.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.ClientNo = '+mtLogSupplierClientNo.AsString) ;
    mtLogSupplier.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtLogClass.First ;
  if mtLogClass.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtLogClass.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.LogClassNo = '+mtLogClassLogClassNo.AsString) ;
    mtLogClass.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtDiaClass.First ;
  if mtDiaClass.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtDiaClass.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.DiaClassNo = '+mtDiaClassDiaClassNo.AsString) ;
    mtDiaClass.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtSpecies.First ;
  if mtSpecies.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtSpecies.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.SpeciesNo = '+mtSpeciesSpeciesNo.AsString) ;
    mtSpecies.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtInmatningsKV.First ;
  if mtInmatningsKV.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtInmatningsKV.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.InmatningsKV = '+mtInmatningsKVInmatningsKVNo.AsString) ;
    mtInmatningsKV.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtSorteringsKV.First ;
  if mtSorteringsKV.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtSorteringsKV.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.SorteringsKV = '+mtSorteringsKVSorteringsKVNo.AsString) ;
    mtSorteringsKV.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;


  Add('GROUP BY LCS.DiaClassNo, DK.MinDia, DK.MaxDia, IK.KVNamn, S.SpeciesName') ;
//  Add('ORDER BY DiameterStart, DiameterEnd, LC.LogClassID, LCS.LogClassNo') ;
  if ThisUser.UserID = 8 then
   SaveToFile('sq_DKStat.txt') ;
 End ;
End ;

procedure TfrmLogClassStat.BuildDIASQL ;
Var x : Integer ;
Begin
 With sq_DiaStat.SQL do
 Begin
  Clear ;
  Add('Select MinDia, RTRIM(LC.MinDia)+'+QuotedStr('- ')+'+LTRIM(Str(MaxDia)) AS TK,') ;
  Add('CONVERT(Float, SUM(LCS.Pricem3to)) as M3TO, SUM(LCS.NoOfLogs) AS STOCK') ;
  Add('FROM dbo.LogClassStatistics LCS') ;
  Add('Inner Join dbo.DiaClass LC ON LC.DiaClassNo = LCS.DiaClassNo') ;
  Add('WHERE LCS.ProdDate >= :ProdDateStart') ;
  Add('AND LCS.ProdDate <= :ProdDateEnd') ;

  x:= 1 ;
  mtLogSupplier.First ;
  if mtLogSupplier.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtLogSupplier.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.ClientNo = '+mtLogSupplierClientNo.AsString) ;
    mtLogSupplier.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtLogClass.First ;
  if mtLogClass.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtLogClass.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.LogClassNo = '+mtLogClassLogClassNo.AsString) ;
    mtLogClass.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtDiaClass.First ;
  if mtDiaClass.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtDiaClass.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.DiaClassNo = '+mtDiaClassDiaClassNo.AsString) ;
    mtDiaClass.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtSpecies.First ;
  if mtSpecies.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtSpecies.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.SpeciesNo = '+mtSpeciesSpeciesNo.AsString) ;
    mtSpecies.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtInmatningsKV.First ;
  if mtInmatningsKV.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtInmatningsKV.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.InmatningsKV = '+mtInmatningsKVInmatningsKVNo.AsString) ;
    mtInmatningsKV.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;

  x:= 1 ;
  mtSorteringsKV.First ;
  if mtSorteringsKV.RecordCount > 0 then
  Begin
   Add(' AND (') ;
   while not mtSorteringsKV.Eof do
   Begin
    if x>1 then Add(' OR ') ;
    Add('LCS.SorteringsKV = '+mtSorteringsKVSorteringsKVNo.AsString) ;
    mtSorteringsKV.Next ;
    x:= succ(x) ;
   End ;
    Add(' ) ') ;
  End ;


  Add('GROUP BY MinDia, MaxDia Order By MinDia') ;
//  Add('ORDER BY DiameterStart, DiameterEnd, LC.LogClassID, LCS.LogClassNo') ;  
  if ThisUser.UserID = 8 then
   SaveToFile('sq_DiaStat.txt') ;
 End ;
End ;

procedure TfrmLogClassStat.AddWidthClick(Sender: TObject);
begin
 mtLogClass.Insert ;
end;

procedure TfrmLogClassStat.RemoveWidthClick(Sender: TObject);
begin
 mtLogClass.Delete ;
end;

procedure TfrmLogClassStat.ClearWidthsClick(Sender: TObject);
begin
 mtLogClass.Active:= False ;
 mtLogClass.Active:= True ; 
end;

procedure TfrmLogClassStat.AddLengthClick(Sender: TObject);
begin
 mtDiaClass.Insert ;
end;

procedure TfrmLogClassStat.RemoveLengthClick(Sender: TObject);
begin
 mtDiaClass.Delete ;
end;

procedure TfrmLogClassStat.ClearLengthsClick(Sender: TObject);
begin
 mtDiaClass.Active:= False ;
 mtDiaClass.Active:= True ; 
end;

procedure TfrmLogClassStat.AddSurfacingClick(Sender: TObject);
begin
 mtInmatningsKV.Insert ;
end;

procedure TfrmLogClassStat.RemoveSurfacingClick(Sender: TObject);
begin
 mtInmatningsKV.Delete ;
end;

procedure TfrmLogClassStat.ClearSurfacingClick(Sender: TObject);
begin
 mtInmatningsKV.Active:= False ;
 mtInmatningsKV.Active:= True ;
end;

procedure TfrmLogClassStat.AddGradeClick(Sender: TObject);
begin
 mtSorteringsKV.Insert ;
end;

procedure TfrmLogClassStat.RemoveGradeClick(Sender: TObject);
begin
 mtSorteringsKV.Delete ;
end;

procedure TfrmLogClassStat.ClearGradeClick(Sender: TObject);
begin
 mtSorteringsKV.Active:= False ;
 mtSorteringsKV.Active:= True ; 
end;

procedure TfrmLogClassStat.bbCurrentMonthClick(Sender: TObject);
//Var Year, Month, Day: Word ;
begin
 GetCurrentMonthAndYear(Sender) ;
end;

procedure TfrmLogClassStat.GetCurrentMonthAndYear(Sender: TObject);
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



procedure TfrmLogClassStat.bbPreviousMonthClick(Sender: TObject);
//Var Year, Month, Day: Word ;
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


procedure TfrmLogClassStat.acRefreshExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 cds_LCStat.Active:= False ;
 BuildLogLogClassSQL ;
 sq_LCStat.ParamByName('ProdDateStart').AsDate:= StartDate.Date ;
 sq_LCStat.ParamByName('ProdDateEnd').AsDate:= EndDate.Date ;
 cds_LCStat.Active:= True ;

 BuildDIASQL ;
 cds_DiaStat.Active:= False ;
 sq_DiaStat.ParamByName('ProdDateStart').AsDate:= StartDate.Date ;
 sq_DiaStat.ParamByName('ProdDateEnd').AsDate:= EndDate.Date ;
 cds_DiaStat.Active:= True ;

 Build_DK_SQL ;
 cds_DKStat.Active:= False ;
 sq_DKStat.ParamByName('ProdDateStart').AsDate:= StartDate.Date ;
 sq_DKStat.ParamByName('ProdDateEnd').AsDate:= EndDate.Date ;
 cds_DKStat.Active:= True ;


 BuildTotLevSQL ;
 cds_TotLev.Active:= False ;
// t.ParamByName('ProdDateStart').AsDate:= StartDate.Date ;
// sq_DiaStat.ParamByName('ProdDateEnd').AsDate:= EndDate.Date ;
 cds_TotLev.Active:= True ;
 if cbGroupBySortiment.Checked then
  grdTotLevDBTableView1Sortiment.Visible:= True
   else
    grdTotLevDBTableView1Sortiment.Visible:= False ;

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmLogClassStat.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmLogClassStat.cbMonthStartPropertiesChange(Sender: TObject);
//Var Year, Month, Day: Word ;
begin
 StartDate.Date:= EncodeDate(StrToInt(cbYearStart.Text), StrToInt(cbMonthStart.Text), 1) ;
 Month:= StrToInt(cbMonthStart.Text) ;
// EndDate.Date:= EncodeDate(StrToInt(cbYearEnd.Text), StrToInt(cbMonthEnd.Text), DaysInAMonth(StrToInt(cbYearEnd.Text), StrToInt(cbMonthEnd.Text))) ;
end;


procedure TfrmLogClassStat.cbYearStartPropertiesChange(Sender: TObject);
begin
 cbYearEnd.Text:= cbYearStart.Text ;
 Year:= StrToInt(cbYearStart.Text) ; 
end;

procedure TfrmLogClassStat.cbMonthEndPropertiesChange(Sender: TObject);
//Var Year, Month, Day: Word ;
begin
// cbMonthEnd.Text:= cbMonthStart.Text ;
// StartDate.Date:= EncodeDate(StrToInt(cbYearStart.Text), StrToInt(cbMonthStart.Text), 1) ;
 EndDate.Date:= EncodeDate(StrToInt(cbYearEnd.Text), StrToInt(cbMonthEnd.Text), DaysInAMonth(StrToInt(cbYearEnd.Text), StrToInt(cbMonthEnd.Text))) ;
end;


procedure TfrmLogClassStat.cbYearEndPropertiesChange(Sender: TObject);
//Var Year, Month, Day: Word ;
begin
// cbMonthEnd.Text:= cbMonthStart.Text ;
// StartDate.Date:= EncodeDate(StrToInt(cbYearStart.Text), StrToInt(cbMonthStart.Text), 1) ;
 EndDate.Date:= EncodeDate(StrToInt(cbYearEnd.Text), StrToInt(cbMonthEnd.Text), DaysInAMonth(StrToInt(cbYearEnd.Text), StrToInt(cbMonthEnd.Text))) ;
end;


procedure TfrmLogClassStat.acHideFilterExecute(Sender: TObject);
begin
{ if lbHideFilterPanel.Caption = 'Göm filter' then
  Begin
   lbHideFilterPanel.Caption:= 'Visa filter' ;
   PanelFilterMain.Visible:= False ;
  End
  else
  Begin
   PanelFilterMain.Visible:= True ;
   lbHideFilterPanel.Caption:= 'Göm filter' ;
  End ; }
end;

procedure TfrmLogClassStat.bbNextMonthClick(Sender: TObject);
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

procedure TfrmLogClassStat.FormShow(Sender: TObject);
begin
 bbCurrentMonthClick(Sender) ;
end;

procedure TfrmLogClassStat.acPrintTabellPerTKExecute(Sender: TObject);
begin
  dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link1) ;
end;

procedure TfrmLogClassStat.acPrintTabellPerDKExecute(Sender: TObject);
begin
  dxComponentPrinter1Link2.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link2) ;
end;

end.


