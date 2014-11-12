unit uLastLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ImgList, StdCtrls, DB, Menus, SqlTimSt, dxDBTLCl,
  dxGrClms, Buttons, dxExEdtr, dxEdLib, dxEditor, ComCtrls, DateUtils,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar ;

type
  TfLastLista = class(TForm)
    grdVerkLast: TdxDBGrid;
    imglistActions: TImageList;
    Splitter1: TSplitter;
    grdLoadPkgs: TdxDBGrid;
    grdLoadPkgsLO: TdxDBGridMaskColumn;
    grdLoadPkgsPACKAGE_NO: TdxDBGridMaskColumn;
    grdLoadPkgsSUPPLIERCODE: TdxDBGridMaskColumn;
    grdLoadPkgsM3_NET: TdxDBGridMaskColumn;
    grdLoadPkgsPRODUCT_DESCRIPTION: TdxDBGridMaskColumn;
    grdLoadPkgsPCS: TdxDBGridMaskColumn;
    grdLoadPkgsPACKAGE_LOG: TdxDBGridMaskColumn;
    grdLoadPkgsM3_NOM: TdxDBGridMaskColumn;
    grdLoadPkgsLOAD_DETAILNO: TdxDBGridMaskColumn;
    PopupMenu2: TPopupMenu;
    PackageInfo1: TMenuItem;
    grdLoadPkgsPSCPERLENGTH: TdxDBGridMaskColumn;
    grdLoadPkgsMFBM: TdxDBGridMaskColumn;
    il_LastStatus: TImageList;
    grdLoadPkgsPACKAGEOK: TdxDBGridCheckColumn;
    lbLO_To_Invoice: TListBox;
    Panel1: TPanel;
    peCompany: TdxPickEdit;
    bbUppdatera: TBitBtn;
    peShipping: TdxPickEdit;
    grdVerkLastLASTNR: TdxDBGridMaskColumn;
    grdVerkLastFS: TdxDBGridMaskColumn;
    grdVerkLastDATUM: TdxDBGridColumn;
    grdVerkLastLOAD_ID: TdxDBGridMaskColumn;
    grdVerkLastINT_DEST: TdxDBGridMaskColumn;
    grdVerkLastLASTSTALLE: TdxDBGridMaskColumn;
    grdVerkLastVERK: TdxDBGridMaskColumn;
    grdVerkLastINT_KUND: TdxDBGridMaskColumn;
    Label1: TLabel;
    Label2: TLabel;
    bbSkrivut: TBitBtn;
    grdVerkLastSTATUS: TdxDBGridImageColumn;
    bbClose: TBitBtn;
    deFOM: TcxDateEdit;
    bbSkrivUtMedPktNr: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure PackageInfo1Click(Sender: TObject);
    procedure peCompanyChange(Sender: TObject);
    procedure bbUppdateraClick(Sender: TObject);
    procedure SkrivSamlingsSpecifikationClick(Sender: TObject);
    procedure bbSkrivutClick(Sender: TObject);
    procedure bbCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSkrivUtMedPktNrClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    SomethingChanged : Boolean ;
    fSupplierNo : Integer ;
    procedure RefreshLoads ;
    procedure SkrivUtLevLaster(Sender: TObject);
    procedure SkrivUtLevLasterPKTNR(Sender: TObject);
    procedure PrintSamlingsspecifikation(Sender: TObject;const SamLastNr : Integer);
    procedure PrintSamlingsspecifikationPKTNR(Sender: TObject;const SamLastNr : Integer);
    procedure BuildSQL ;
  public
    { Public declarations }
    Procedure CreateCo ;
  end;

var
  fLastLista: TfLastLista;

implementation

uses UnitCRViewReport, dmc_ArrivingLoads, VidaUtils, Vidauser,
  UnitPkgInfo, dmsVidaContact, dmcVidaSystem, dmsDataConn ;

{$R *.dfm}

Procedure TfLastLista.CreateCo ;
Var x : Integer ;
begin
  // Load column widths set last time.
  grdVerkLast.LoadFromIniFile(dmsConnector.InifilesMap+'VisLastLista'+'.'+ThisUser.UserName);
  grdLoadPkgs.LoadFromIniFile(dmsConnector.InifilesMap+'VisLastLista'+'.'+ThisUser.UserName);
  dmsContact.Load_Int_and_Lego(peCompany.Items) ;

  if ThisUser.CompanyNo = 741 then
    peCompany.ReadOnly:= False ;


  For x:= 0 to peCompany.Items.Count -1 do
  if ThisUser.CompanyNo = integer(peCompany.Items.Objects[x]) then
  Begin
   peCompany.ItemIndex:= x ;
   fSupplierNo:= integer(peCompany.Items.Objects[x]);
  End ;

 peShipping.ItemIndex:= 0 ;
end;


procedure TfLastLista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfLastLista.FormDestroy(Sender: TObject);
begin
 fLastLista:= NIL;
end;

procedure TfLastLista.RefreshLoads ;
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
// deFOM.Date:= RecodeHour(deFOM.Date,0) ;
// deFOM.Date:= RecodeMinute(deFOM.Date,0) ;
// deFOM.Date:= RecodeSecond(deFOM.Date,0) ;
// ShowMessage('deFOM.Date = '+DateTimeToStr(deFOM.Date)) ;
// ShowMessage('SQLTimedate'+SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(deFOM.Date))) ;
 With dmArrivingLoads do
 Begin
  cds_verkLaster.DisableControls ;
  ds_verkLaster.OnDataChange:= Nil ;

  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try

  if fSupplierNo > 0 then
  Begin
   cds_verkLaster.Active:= False ;
   BuildSQL ;
   cds_verkLaster.active:= True ;
  end ;
 finally
  cds_verkLaster.EnableControls ;
  ds_verkLaster.OnDataChange:= dmArrivingLoads.ds_verkLasterDataChange ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

procedure TfLastLista.PackageInfo1Click(Sender: TObject);
Var frmPkgInfo : TfrmPkgInfo ;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo:= dmArrivingLoads.cdsArrivingPackagesPACKAGE_NO.AsInteger ;
  frmPkgInfo.SupplierCode:= dmArrivingLoads.cdsArrivingPackagesSupplierCode.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
end;

procedure TfLastLista.SkrivUtLevLaster(Sender: TObject);
Var
    Roll_Back: Boolean ;
    Save_Cursor:TCursor;
    Duplicate : Boolean ;
    samLastnr, y,x : Integer ;
begin
  inherited;
 Roll_Back:= False ;

 with grdVerkLast, dmArrivingLoads do
 begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  Try

  ds_verkLaster.OnDataChange:= Nil ;

  lbLO_To_Invoice.Items.Clear ;
  DataSource.DataSet.DisableControls;
//Insert LO # to ListBox list
  for x := 0 to (SelectedCount - 1) do
  begin
   Duplicate := False ;
   DataSource.DataSet.GotoBookmark(Pointer(SelectedRows[x])); //2nd variant
   For y := 0 to lbLO_To_Invoice.Items.Count - 1 do
   Begin
    if cds_verkLasterLASTNR.AsString = lbLO_To_Invoice.Items[y] then
    Duplicate := True ;
   End ;
   if Duplicate = False then
   Begin
    lbLO_To_Invoice.Items.Add(cds_verkLasterLASTNR.AsString) ;
   End ;
  end; //for..

  if lbLO_To_Invoice.Items.Count < 1 then
   Begin
    ShowMessage('Måste markera minst en last') ;
    Exit ;
   End ;

   samLastnr := ThisUser.UserID ; //dmsConnector.NextMaxNo('SamLastReport') ;
   sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger:= samLastnr ;
   sq_deleteSamLaster.ExecSQL(False) ;
   For x:= 0 to lbLO_To_Invoice.Items.Count-1 do
   Begin
    sq_samLast.ParamByName('SamLastNr').AsInteger:= samLastNr ;
    sq_samLast.ParamByName('LoadNo').AsInteger:= StrToInt(lbLO_To_Invoice.Items[x]) ;
    sq_samLast.ExecSQL(False) ;
   End ;

    PrintSamlingsspecifikation(Sender, samLastNr) ;
   Finally
    DataSource.DataSet.EnableControls;
    ClearSelection ;
    ds_verkLaster.OnDataChange:= dmArrivingLoads.ds_verkLasterDataChange ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   End ;
 End ; //with
end;


procedure TfLastLista.SkrivUtLevLasterPKTNR(Sender: TObject);
Var
    Roll_Back: Boolean ;
    Save_Cursor:TCursor;
    Duplicate : Boolean ;
    samLastnr, y,x : Integer ;
begin
  inherited;
 Roll_Back:= False ;

 with grdVerkLast, dmArrivingLoads do
 begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  Try

  ds_verkLaster.OnDataChange:= Nil ;

  lbLO_To_Invoice.Items.Clear ;
  DataSource.DataSet.DisableControls;
//Insert LO # to ListBox list
  for x := 0 to (SelectedCount - 1) do
  begin
   Duplicate := False ;
   DataSource.DataSet.GotoBookmark(Pointer(SelectedRows[x])); //2nd variant
   For y := 0 to lbLO_To_Invoice.Items.Count - 1 do
   Begin
    if cds_verkLasterLASTNR.AsString = lbLO_To_Invoice.Items[y] then
    Duplicate := True ;
   End ;
   if Duplicate = False then
   Begin
    lbLO_To_Invoice.Items.Add(cds_verkLasterLASTNR.AsString) ;
   End ;
  end; //for..

  if lbLO_To_Invoice.Items.Count < 1 then
   Begin
    ShowMessage('Måste markera minst en last') ;
    Exit ;
   End ;

   samLastnr := ThisUser.UserID ; //dmsConnector.NextMaxNo('SamLastReport') ;
   sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger:= samLastnr ;
   sq_deleteSamLaster.ExecSQL(False) ;

   For x:= 0 to lbLO_To_Invoice.Items.Count-1 do
   Begin
    sq_samLast.ParamByName('SamLastNr').AsInteger:= samLastNr ;
    sq_samLast.ParamByName('LoadNo').AsInteger:= StrToInt(lbLO_To_Invoice.Items[x]) ;
    sq_samLast.ExecSQL(False) ;
   End ;

    PrintSamlingsspecifikationPKTNR(Sender, samLastNr) ;

   Finally
    DataSource.DataSet.EnableControls;
    ClearSelection ;
    ds_verkLaster.OnDataChange:= dmArrivingLoads.ds_verkLasterDataChange ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   End ;
 End ; //with
end;

procedure TfLastLista.PrintSamlingsspecifikation(Sender: TObject;const SamLastNr : Integer);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmArrivingLoads.cds_verkLasterLASTNR.AsInteger < 1 then exit ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  FormCRViewReport.CreateCo('SAM_LAST.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(SamLastNr) ;
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;
 End ;
end;


procedure TfLastLista.PrintSamlingsspecifikationPKTNR(Sender: TObject;const SamLastNr : Integer);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmArrivingLoads.cds_verkLasterLASTNR.AsInteger < 1 then exit ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  FormCRViewReport.CreateCo('SAM_LAST_PKTNR.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(SamLastNr) ;
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;
 End ;
end;

procedure TfLastLista.peCompanyChange(Sender: TObject);
begin
  SomethingChanged := True ;
  if peCompany.Items.Count > 0 then
   fSupplierNo:= integer(peCompany.Items.Objects[peCompany.ItemIndex]);
end;


procedure TfLastLista.bbUppdateraClick(Sender: TObject);
begin
 RefreshLoads ;
end;

procedure TfLastLista.SkrivSamlingsSpecifikationClick(Sender: TObject);
begin
 SkrivUtLevLaster(Sender);
end;

procedure TfLastLista.bbSkrivutClick(Sender: TObject);
begin
 SkrivUtLevLaster(Sender) ;
end;

procedure TfLastLista.bbCloseClick(Sender: TObject);
begin
 Close ;
end;

procedure TfLastLista.FormCreate(Sender: TObject);
begin
 deFOM.Date := Date - 30 ;
end;

procedure TfLastLista.bbSkrivUtMedPktNrClick(Sender: TObject);
begin
 SkrivUtLevLasterPKTNR(Sender) ;
end;

procedure TfLastLista.BuildSQL ;
Begin
 With dmArrivingLoads.sq_VerkLaster.SQL do
 Begin
  Clear ;
  Add('SELECT distinct') ;
  Add('L.LoadNo				AS	LASTNR,') ;
  Add('L.FS				AS	FS,') ;
  Add('L.LoadedDate			AS	DATUM,') ;
  Add('L.SenderLoadStatus		AS	STATUS,') ;
  Add('L.LoadID				AS	LOAD_ID,') ;
  Add('ShipTo.CityName                 	AS INT_DEST,') ;
  Add('Loading.CityName                 AS LASTSTALLE,') ;

  Add('SUPP.ClientName			AS VERK,') ;
  Add('CUST.ClientName			AS INT_KUND') ;
  Add('FROM dbo.Loads L') ;
  Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.LoadNo = L.LoadNo') ;
  Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShippingPlanNo = LSP.ShippingPlanNo') ;
  Add('					AND     L.supplierno 		= SP.SUPPLIERno') ;
  Add('					AND     L.CustomerNo 		= SP.CustomerNo') ;

  Add('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo') ;
  Add('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo') ;

  Add('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = L.SupplierNo') ;
  Add('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = L.CustomerNo') ;

  Add('WHERE  L.SupplierNo = '+IntToStr(fSupplierNo)) ;
  Add('AND L.LoadedDate >= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(deFOM.Date)))) ;
  if ThisUser.UserID = 8 then
   SaveToFile('sq_VerkLaster.txt') ;
 End ;

End ;

procedure TfLastLista.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 grdVerkLast.SaveToIniFile(dmsConnector.InifilesMap+'VisLastLista'+'.'+ThisUser.UserName);
 grdLoadPkgs.SaveToIniFile(dmsConnector.InifilesMap+'VisLastLista'+'.'+ThisUser.UserName);



 CanClose:= True ;
end;

end.
