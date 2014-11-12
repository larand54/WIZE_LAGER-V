unit uAccInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid,  cxLabel,
  cxCalc, dxBar, dxBarExtItems, ActnList, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxSplitter, cxSSheet, Menus, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPSBaseGridLnk,

  dxPScxCommon, dxPScxSSLnk, StdCtrls, cxLookAndFeels,
  cxLookAndFeelPainters, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer,
  dxPScxCheckListBoxLnk, dxPSLbxLnk, dxPSTextLnk,
  SqlExpr, uADStanIntf, uADStanOption, uADStanParam, uADStanError,
  uADDatSManager, uADPhysIntf, uADDAptIntf, uADStanAsync, uADDAptManager,
  uADCompDataSet, uADCompClient, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxSkinscxPCPainter, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxPivotGridLnk, dxSkinsdxRibbonPainter ;

type
  TfAccInv = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    ActionList1: TActionList;
    acRefresh: TAction;
    cxGridPopupMenu1: TcxGridPopupMenu;
    acPrint: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    acClose: TAction;
    dxBarDockControl2: TdxBarDockControl;
    ssAccLager: TcxSpreadSheetBook;
    acParametrar: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    acExportToExcel: TAction;
    SaveDialog1: TSaveDialog;
    dxBarLargeButton5: TdxBarLargeButton;
    PopupMenu1: TPopupMenu;
    StngF121: TMenuItem;
    ExporteraexcelF101: TMenuItem;
    ParametrarF111: TMenuItem;
    Uppdatera1: TMenuItem;
    SkrivutF81: TMenuItem;
    UppdateraF61: TMenuItem;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxSpreadSheetBookReportLink;
    cds_AccInv: TADQuery;
    sq_InvWeeks: TADQuery;
    sq_StartPeriod: TADQuery;
    sq_AccInvParam: TADQuery;
    sq_AccInvParamClientNo: TIntegerField;
    sq_AccInvParamIngoingInv: TBCDField;
    sq_AccInvParamTrimFactor: TBCDField;
    sq_StartPeriodYearWeek: TIntegerField;
    sq_InvWeeksYearNo: TIntegerField;
    sq_InvWeeksWeekNo: TIntegerField;
    cds_AccInvClientNo: TIntegerField;
    cds_AccInvClientName: TStringField;
    cds_AccInvYearNo: TIntegerField;
    cds_AccInvWeekNo: TIntegerField;
    cds_AccInvSawProd: TBCDField;
    cds_AccInvIntInDel: TBCDField;
    cds_AccInvExtInDel: TBCDField;
    cds_AccInvExtUtlev: TBCDField;
    cds_AccInvInvoicedCust: TBCDField;
    cds_AccInvInvChange: TBCDField;
    cds_AccInvTotalInv: TBCDField;
    cds_AccInvTotalInvChangeMill: TBCDField;
    cds_AccInvTotalInvMill: TBCDField;
    cds_AccInvVW: TIntegerField;
    cds_AccInvTotal_Inköp: TFMTBCDField;
    cds_AccInvPeriod: TStringField;
    cds_AccInvBolag: TStringField;
    ds_AccInv: TDataSource;
    procedure acRefreshExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure acParametrarExecute(Sender: TObject);
    procedure acExportToExcelExecute(Sender: TObject);
  private
    { Private declarations }
    CurRow : Integer ;
    FirstSumRow : Integer ;
    Function  GetSawProdTrimFactor : String ;
    Function  GetInGoingInventory : String ;
    procedure PopulateVW(const FirstRec : Boolean) ;
    procedure PopulateVerk ;
    procedure PopulateVerkFirst ;
    procedure SetCellText(ACol, ARow : Integer; AText : String);
    procedure SetTitles ;
    procedure StepThruData ;
  public
    { Public declarations }
  end;

var fAccInv: TfAccInv;

implementation

uses dmsDataConn, uAccParams;

{$R *.dfm}

procedure TfAccInv.SetCellText(ACol, ARow : Integer; AText : String);
begin
  // get a cell object for the request col and row
  with ssAccLager.ActiveSheet.GetCellObject(ACol,ARow) do
  begin
    try
      Text := AText;
      Style.Format := $18;
    finally
      Free;                                                // and free it (important!)
    end;
  end;
end;


procedure TfAccInv.acRefreshExecute(Sender: TObject);
begin
  with ssAccLager.ActiveSheet.GetCellObject(0, 0) do
  try
    Style.Format := $18;
  finally
    Free;
  end;
 cds_AccInv.Active  := False ;
 cds_AccInv.Active  := True ;
 SetTitles ;
 StepThruData ;
end;

procedure TfAccInv.acPrintExecute(Sender: TObject);
begin
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Lagerförändring') ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;

  dxComponentPrinter1Link1.PrinterPage.Orientation    := poPortrait ;
  dxComponentPrinter1Link1.ShrinkToPageWidth          := True ;
//  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1) ;
end;

procedure TfAccInv.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfAccInv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree ;
end;

procedure TfAccInv.FormDestroy(Sender: TObject);
begin
 fAccInv  := nil ;
end;

procedure TfAccInv.StepThruData ;
Var FirstRec    : Boolean ;
    Save_Cursor : TCursor;
Begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
 FirstRec := True ;
 CurRow := 3 ;
 cds_AccInv.DisableControls ;
 ssAccLager.BeginUpdate ;
 Try
 sq_StartPeriod.Open ;
 sq_InvWeeks.ParamByName('YearWeek').AsInteger  := sq_StartPeriodYearWeek.AsInteger ;
 sq_InvWeeks.Open ;
 sq_InvWeeks.First ;
 While not sq_InvWeeks.Eof do
 Begin
  FirstSumRow  := CurRow + 1 ;
  cds_AccInv.Active := False ;
  cds_AccInv.ParamByName('YearNo').AsInteger := sq_InvWeeksYearNo.AsInteger ;
  cds_AccInv.ParamByName('WeekNo').AsInteger := sq_InvWeeksWeekNo.AsInteger ;
  cds_AccInv.Active := True ;

  cds_AccInv.First ;
  While not cds_AccInv.Eof do
  Begin
   if cds_AccInvClientNo.AsInteger <> 741 then
   Begin
    if FirstRec then
     PopulateVerkFirst
      else
       PopulateVerk ;
   End
   else
   Begin
    SetCellText(0,CurRow, 'Totalt Sågverken');
// SetCellText(2,CurRow,  '=SUM(C' + inttostr(4) +':C' + inttostr(CurRow) + ')');
// SetCellText(3,CurRow,  '=SUM(D' + inttostr(4) +':D' + inttostr(CurRow) + ')');
// SetCellText(4,CurRow,  '=SUM(E' + inttostr(4) +':E' + inttostr(CurRow) + ')');
// SetCellText(5,CurRow,  '=SUM(F' + inttostr(4) +':F' + inttostr(CurRow) + ')');
// SetCellText(6,CurRow,  '=SUM(G' + inttostr(4) +':F' + inttostr(CurRow) + ')');
// SetCellText(7,CurRow,  '=SUM(H' + inttostr(4) +':H' + inttostr(CurRow) + ')');


    SetCellText(8,CurRow,  '=SUM(I' + inttostr(FirstSumRow) +':I' + inttostr(CurRow) + ')');
    SetCellText(9,CurRow,  '=SUM(J' + inttostr(FirstSumRow) +':J' + inttostr(CurRow) + ')');
    CurRow  := succ(CurRow) ;

    PopulateVW(FirstRec) ;
   End ;
   cds_AccInv.Next ;
  End ;
   FirstRec := False ;
  sq_InvWeeks.Next ;
 End ;
 sq_InvWeeks.Close ;
 Finally
  cds_AccInv.Active := False ;
  sq_StartPeriod.Close ;
  ssAccLager.EndUpdate ;
  cds_AccInv.EnableControls ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ; 
End ;

Function TfAccInv.GetInGoingInventory : String ;
Begin
 Try
 sq_AccInvParam.ParamByName('ClientNo').AsInteger := cds_AccInvClientNo.AsInteger ;
 sq_AccInvParam.Open ;
 if not sq_AccInvParam.Eof then
  Result  := sq_AccInvParamIngoingInv.AsString
   else
    Result := '0' ;
 Finally
  sq_AccInvParam.Close ;
 End  ;
End ;

Function TfAccInv.GetSawProdTrimFactor : String ;
Var TrimFactor  : Double ;
Begin
 Try
 sq_AccInvParam.ParamByName('ClientNo').AsInteger := cds_AccInvClientNo.AsInteger ;
 sq_AccInvParam.Open ;
 if not sq_AccInvParam.Eof then
  TrimFactor  := sq_AccInvParamTrimFactor.AsFloat
   else
    TrimFactor := 1 ;
  Result  := FloatToStr(TrimFactor) ;
 Finally
  sq_AccInvParam.Close ;
 End  ;
End ;

procedure TfAccInv.PopulateVerkFirst ;
Begin
  SetCellText(0,CurRow,  cds_AccInvClientName.AsString);
  SetCellText(1,CurRow,  cds_AccInvPeriod.AsString);
  SetCellText(2,CurRow,  '=' + cds_AccInvSawProd.AsString + '*' + GetSawProdTrimFactor);

  SetCellText(3,CurRow,  cds_AccInvIntInDel.AsString);
  SetCellText(4,CurRow,  cds_AccInvExtInDel.AsString);
  SetCellText(5,CurRow,  '=D' + IntToStr(CurRow+1) + '+E' + IntToStr(CurRow+1) );
  SetCellText(6,CurRow,  cds_AccInvExtUtlev.AsString);
  SetCellText(7,CurRow,  cds_AccInvInvoicedCust.AsString);
  SetCellText(8,CurRow,  '=C' + IntToStr(CurRow+1) + '+F' + IntToStr(CurRow+1) + '+G' + IntToStr(CurRow+1) );
  SetCellText(9,CurRow,  '=' + GetInGoingInventory + '+I' + IntToStr(CurRow+1));

  SetCellText(10,CurRow,  '=I' + IntToStr(CurRow+1));
  SetCellText(10,CurRow+1,  '=I' + IntToStr(CurRow+2));
  SetCellText(10,CurRow+2,  '=I' + IntToStr(CurRow+3));
//  SetCellText(10,CurRow, cds_AccInvTotalInvMill.AsString);
//  SetCellText(11,CurRow, cds_AccInvBolag.AsString);

 CurRow  := succ(CurRow) ;
End ;

//procedure TfAccInv.SetCellText(ACol, ARow : Integer; AText : String);
procedure TfAccInv.PopulateVerk ;
Begin
  SetCellText(0,CurRow,  cds_AccInvClientName.AsString);
  SetCellText(1,CurRow,  cds_AccInvPeriod.AsString);
//  SetCellText(2,CurRow,  cds_AccInvSawProd.AsString);
  SetCellText(2,CurRow,  '=' + cds_AccInvSawProd.AsString + '*' + GetSawProdTrimFactor);
  SetCellText(3,CurRow,  cds_AccInvIntInDel.AsString);
  SetCellText(4,CurRow,  cds_AccInvExtInDel.AsString);
  SetCellText(5,CurRow,  '=D' + IntToStr(CurRow+1) + '+E' + IntToStr(CurRow+1) );
  SetCellText(6,CurRow,  cds_AccInvExtUtlev.AsString);
  SetCellText(7,CurRow,  cds_AccInvInvoicedCust.AsString);
  SetCellText(8,CurRow,  '=C' + IntToStr(CurRow+1) + '+F' + IntToStr(CurRow+1) + '+G' + IntToStr(CurRow+1) );

 {  
  SetCellText(9,CurRow,  '=J' + IntToStr(CurRow - 12) + '+I' + IntToStr(CurRow+1));
  SetCellText(10,CurRow,  '=K' + IntToStr(CurRow - 12) + '+I' + IntToStr(CurRow+1));
  SetCellText(10,CurRow+1,  '=K' + IntToStr(CurRow - 11) + '+I' + IntToStr(CurRow+2));
  SetCellText(10,CurRow+2,  '=K' + IntToStr(CurRow - 10) + '+I' + IntToStr(CurRow+3));
      }

  SetCellText(9,CurRow,  '=J' + IntToStr(CurRow - 13) + '+I' + IntToStr(CurRow+1));
  SetCellText(10,CurRow,  '=K' + IntToStr(CurRow - 13) + '+I' + IntToStr(CurRow+1));
  SetCellText(10,CurRow+1,  '=K' + IntToStr(CurRow - 12) + '+I' + IntToStr(CurRow+2));
  SetCellText(10,CurRow+2,  '=K' + IntToStr(CurRow - 11) + '+I' + IntToStr(CurRow+3));




  //  SetCellText(10,CurRow, cds_AccInvTotalInvChangeMill.AsString);
//  SetCellText(11,CurRow, cds_AccInvTotalInvMill.AsString);
//  SetCellText(11,CurRow, cds_AccInvBolag.AsString);

 CurRow  := succ(CurRow) ;
End ;

procedure TfAccInv.PopulateVW (const FirstRec : Boolean) ;
Begin
// cds_AccInv.First ;
// While not cds_AccInv.Eof do
// Begin
  SetCellText(0,CurRow,  cds_AccInvClientName.AsString);
  SetCellText(1,CurRow,  cds_AccInvPeriod.AsString);
//  SetCellText(2,CurRow,  cds_AccInvSawProd.AsString);
//  SetCellText(3,CurRow,  cds_AccInvIntInDel.AsString);
  SetCellText(4,CurRow,  cds_AccInvExtInDel.AsString);
//  SetCellText(5,CurRow,  cds_AccInvTotal_inkp.AsString);
//  SetCellText(6,CurRow,  cds_AccInvExtUtlev.AsString);
  SetCellText(7,CurRow,  cds_AccInvInvoicedCust.AsString);
  SetCellText(8,CurRow,  '=C' + IntToStr(CurRow+2) + '+E' + IntToStr(CurRow+2) + '+H' + IntToStr(CurRow+2) + '-I' + IntToStr(CurRow));


//Ändrat 12 feb 2012. Om firstRec = true körs
//   SetCellText(9,CurRow,  '=' + GetInGoingInventory + '+I' + IntToStr(CurRow+1))
// istället för
//  SetCellText(9,CurRow,  '=' + GetInGoingInventory)

  if FirstRec then
   SetCellText(9,CurRow,  '=' + GetInGoingInventory + '+I' + IntToStr(CurRow+1))
//  SetCellText(9,CurRow,  '=' + GetInGoingInventory)
  else
   SetCellText(9,CurRow,  '=I' + IntToStr(CurRow+1) + '+J' + IntToStr(CurRow-13)) ;


//  SetCellText(9,CurRow,  cds_AccInvTotalInvChangeMill.AsString);
//  SetCellText(10,CurRow,  cds_AccInvTotalInvMill.AsString);
//  SetCellText(11,CurRow,  cds_AccInvBolag.AsString);
//  cds_AccInv.Next ;
  CurRow  := succ(CurRow) ;
// End ;

 SetCellText(0,CurRow, 'Totalt');
 SetCellText(2,CurRow,  '=SUM(C' + inttostr(FirstSumRow) +':C' + inttostr(CurRow) + ')');
 SetCellText(3,CurRow,  '=SUM(D' + inttostr(FirstSumRow) +':D' + inttostr(CurRow) + ')');
 SetCellText(4,CurRow,  '=SUM(E' + inttostr(FirstSumRow) +':E' + inttostr(CurRow) + ')');
 SetCellText(5,CurRow,  '=SUM(F' + inttostr(FirstSumRow) +':F' + inttostr(CurRow) + ')');
 SetCellText(6,CurRow,  '=SUM(G' + inttostr(FirstSumRow) +':G' + inttostr(CurRow) + ')');
 SetCellText(7,CurRow,  '=SUM(H' + inttostr(FirstSumRow) +':H' + inttostr(CurRow) + ')');
//=I26+I27
 SetCellText(8,CurRow,  '=I' + IntToStr(CurRow-1) + '+I' + IntToStr(CurRow));


 SetCellText(9,CurRow,  '=J' + IntToStr(CurRow-1) + '+J' + IntToStr(CurRow));




 CurRow  := succ(CurRow) ;
 if FirstRec = False then
 Begin
  SetCellText(0,CurRow, 'Ackumelerad lagerminskning/ökning');
 // =I15+I28
//  SetCellText(8,CurRow,  '=I' + IntToStr(CurRow) + '+I' + IntToStr(CurRow-12));
  SetCellText(8,CurRow,  '=I' + IntToStr(CurRow) + '+I' + IntToStr(CurRow-13));
 End
 else
   SetCellText(8,CurRow,  '=I15'); //Bytt till I15 från I14
// else
// SetCellText(0,CurRow, '--');


 CurRow  := succ(CurRow) ;
 CurRow  := succ(CurRow) ;
End ;

procedure TfAccInv.SetTitles ;
Var x, CurRow : Integer ;
Begin
 CurRow := 1 ;
 SetCellText(2,CurRow, 'Sågprod');
 SetCellText(3,CurRow, 'Int/Inköp');
 SetCellText(4,CurRow, 'Ext/Inköp');
 SetCellText(5,CurRow, 'Total/Inköp');
 SetCellText(6,CurRow, 'Utleveranser');
 SetCellText(7,CurRow, 'Fakturerat kund');
 SetCellText(8,CurRow, 'Lagerförändring');
 SetCellText(9,CurRow, 'Tot Lager');

 SetCellText(10,CurRow, 'Lagerförändring per enhet totalt');

 CurRow := 2 ;
 SetCellText(0,CurRow, 'Verk');
 SetCellText(1,CurRow, 'Vecka');

 For x := 2 to 10 do
 SetCellText(x,CurRow, 'NM3');
End ;

procedure TfAccInv.acParametrarExecute(Sender: TObject);
var fAccParams: TfAccParams;
begin
 fAccParams:= TfAccParams.Create(nil) ;
 try
   fAccParams.ShowModal ;
   ssAccLager.Recalc ;
 finally
  FreeAndNil(fAccParams) ;
 end;
end;

procedure TfAccInv.acExportToExcelExecute(Sender: TObject);
Var FileName  : String ;
begin
 SaveDialog1.Filter := 'Excel files (*.xls)|*.xls';
 SaveDialog1.DefaultExt:= 'xls';
 if SaveDialog1.Execute then
 Begin
  FileName:= SaveDialog1.FileName ;
  Try
   ssAccLager.SaveToFile(FileName);
   ShowMessage('Exporterad till excel fil ' + FileName);
  Except
  End ;
 End ;
end;

end.
