unit UnitAvrakningar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, dxBar, dxBarExtItems, dxDBTLCl, dxGrClms, dxDBGrid,
  dxTL, dxDBCtrl, ExtCtrls, dxCntner, StdCtrls, Buttons, DB, dxExEdtr,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ActnList, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPScxCommon, dxPScxGridLnk, cxTextEdit, cxLabel, SqlTimSt ;

type
  TfrmAvrakningar = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    lbPrint: TdxBarLargeButton;
    lbExit: TdxBarLargeButton;
    lbDeleteAvrakning: TdxBarLargeButton;
    ImageList1: TImageList;
    grdHead: TdxDBGrid;
    Panel1: TPanel;
    Splitter1: TSplitter;
    grdHeadAvrakningsNo: TdxDBGridMaskColumn;
    grdHeadLocalShipperNo: TdxDBGridMaskColumn;
    grdHeadAvrakningsDate: TdxDBGridColumn;
    grdHeadCreatedUser: TdxDBGridMaskColumn;
    grdHeadModifiedUser: TdxDBGridMaskColumn;
    grdHeadDateCreated: TdxDBGridColumn;
    grdHeadDateModified: TdxDBGridColumn;
    grdHeadStatus: TdxDBGridImageColumn;
    ImageList2: TImageList;
    icStatus: TdxBarImageCombo;
    lbRefresh: TdxBarLargeButton;
    lbApplyChanges: TdxBarLargeButton;
    lbCancelChanges: TdxBarLargeButton;
    grdHeadShippersInvoiceNo: TdxDBGridMaskColumn;
    grdHeadSHIPPER: TdxDBGridMaskColumn;
    ButtonPanel: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    grdHeadVERK: TdxDBGridMaskColumn;
    grdHeadANVANDARE: TdxDBGridMaskColumn;
    bcVerk: TdxBarCombo;
    lbFindAvrNo: TdxBarLargeButton;
    lbSearchAvrNr: TdxBarLargeButton;
    grdLoadsDBTableView1: TcxGridDBTableView;
    grdLoadsLevel1: TcxGridLevel;
    grdLoads: TcxGrid;
    grdLoadsDBTableView1AvrakningsNo: TcxGridDBColumn;
    grdLoadsDBTableView1FS: TcxGridDBColumn;
    grdLoadsDBTableView1LOAD_ID: TcxGridDBColumn;
    grdLoadsDBTableView1LOADEDDATE: TcxGridDBColumn;
    grdLoadsDBTableView1SHIPPER: TcxGridDBColumn;
    grdLoadsDBTableView1FROM_PLACE: TcxGridDBColumn;
    grdLoadsDBTableView1DESTINATION: TcxGridDBColumn;
    grdLoadsDBTableView1LoadNo: TcxGridDBColumn;
    grdLoadsDBTableView1M3_NET: TcxGridDBColumn;
    grdLoadsDBTableView1PricePerM3_NET: TcxGridDBColumn;
    grdLoadsDBTableView1TotalSUM: TcxGridDBColumn;
    grdLoadsDBTableView1DateModified: TcxGridDBColumn;
    grdLoadsDBTableView1ModifiedUser: TcxGridDBColumn;
    ActionList1: TActionList;
    acSave: TAction;
    acCancelChanges: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    acPrintLoads: TAction;
    acAddRow: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    acRemoveRow: TAction;
    BitBtn3: TBitBtn;
    grdLoadsDBTableView1Note: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbExitClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure icStatusChange(Sender: TObject);
    procedure lbRefreshClick(Sender: TObject);
    procedure lbDeleteAvrakningClick(Sender: TObject);
    procedure lbPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bcVerkChange(Sender: TObject);
    procedure lbFindAvrNoClick(Sender: TObject);
    procedure lbSearchAvrNrClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acPrintLoadsExecute(Sender: TObject);
    procedure acAddRowExecute(Sender: TObject);
    procedure acRemoveRowExecute(Sender: TObject);
  private
    { Private declarations }
    ExitOption : Integer ;
    procedure BuildSQL (Const AvrakningsNr : Integer) ;
    function  DataSparat : Boolean ;
  public
    { Public declarations }
    constructor CreateCo(CompanyNo: Integer);
  end;

var frmAvrakningar: TfrmAvrakningar;

implementation

uses UnitdmModule1, UnitCRViewReport, VidaUser, dmsVidaContact, VidaConst,
     uEntryField, dmsDataConn ;

{$R *.dfm}


function TfrmAvrakningar.DataSparat : Boolean ;
begin
 Result:= True ;
   With dmModule1 do
   Begin
    if cds_LoadFreightCostHeader2.State in [dsEdit, dsInsert] then
     Result:= False ;
    if cds_LoadFreightCostHeader2.ChangeCount > 0 then
     Result:= False ;

    if cds_LoadFreightCostDetails.State in [dsEdit, dsInsert] then
     Result:= False ;
    if cds_LoadFreightCostDetails.ChangeCount > 0 then
     Result:= False ;
   End ;
end;

constructor TfrmAvrakningar.CreateCo(CompanyNo: Integer);
var x : integer;
begin
//  inherited Create(AOwner);

  With dmModule1 do
  Begin
   cds_LoadFreightCostHeader2.Filter:= 'STATUS = '+IntToStr(icStatus.ItemIndex) ;
   cds_LoadFreightCostHeader2.Filtered:= True ;
  End ;

 ExitOption:= 0 ;
 dmsContact.LoadSuppliers(bcVerk.Items) ;

  if bcVerk.Items.Count > 0 then
  For x:= 0 to bcVerk.Items.Count -1 do
  if ThisUser.CompanyNo = integer(bcVerk.Items.Objects[x]) then
  Begin
   bcVerk.ItemIndex:= x ;
//   dmcOrder.SupplierNo:= integer(bcVerk.Items.Objects[x]);
  End ;
  if ThisUser.CompanyNo <> VIDA_WOOD_COMPANY_NO then
  Begin
   bcVerk.ReadOnly:= True ;
   grdHeadStatus.ReadOnly:= True ;
  End ;

  if ThisUser.CompanyNo <> VIDA_WOOD_COMPANY_NO then
   grdHeadStatus.ReadOnly:= True
    else
     grdHeadStatus.ReadOnly:= False ;

 grdHeadANVANDARE.ReadOnly:= True ;    
end;

procedure TfrmAvrakningar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfrmAvrakningar.lbExitClick(Sender: TObject);
begin
 Close ;
end;

procedure TfrmAvrakningar.FormDestroy(Sender: TObject);
begin
  With dmModule1 do
  Begin
   cds_LoadFreightCostHeader2.Active:= False ;
   cds_LoadFreightCostDetails.Active:= False ;
  End ;
 frmAvrakningar:= NIL ;
end;

procedure TfrmAvrakningar.icStatusChange(Sender: TObject);
begin
  With dmModule1 do
   cds_LoadFreightCostHeader2.Filter:= 'STATUS = '+IntToStr(icStatus.ItemIndex) ;
//   cds_LoadFreightCostHeader2.Filtered:= True ;
end;

procedure TfrmAvrakningar.lbRefreshClick(Sender: TObject);
begin
  With dmModule1 do
   Begin
    BuildSQL (-1) ;
   End ;
end;

procedure TfrmAvrakningar.BuildSQL (Const AvrakningsNr : Integer) ;
begin
  With dmModule1.sq_LoadFreightCostHeader2 do
  Begin
   dmModule1.cds_LoadFreightCostDetails.Active:= False ;
   dmModule1.cds_LoadFreightCostHeader2.Active:= False ;
   SQL.Clear ;
   SQL.Add('Select LFCH.* , C.clientname as SHIPPER, ve.ClientName AS VERK, usr.UserName AS ANVANDARE') ;
   SQL.Add('FROM') ;
   SQL.Add('dbo.LoadFreightCostHeader LFCH') ;
   SQL.Add('Left Outer Join dbo.Client C On C.ClientNo = LFCH.LocalShipperNo') ;
   SQL.Add('Left Outer Join dbo.Client ve On ve.ClientNo = LFCH.VerkNo') ;
   SQL.Add('Left Outer Join dbo.Users usr on usr.UserID = LFCH.CreatedUser') ;

   if AvrakningsNr <> -1 then
    SQL.Add('WHERE LFCH.AvrakningsNo = '+IntToStr(AvrakningsNr))
    else
     if bcVerk.Items.Count > 0 then
      if VIDA_WOOD_COMPANY_NO <> integer(bcVerk.Items.Objects[bcVerk.ItemIndex]) then
       SQL.Add('WHERE LFCH.VerkNo = '+IntToStr(integer(bcVerk.Items.Objects[bcVerk.ItemIndex]))) ;

   dmModule1.cds_LoadFreightCostHeader2.Active:= True ;
   dmModule1.cds_LoadFreightCostDetails.Active:= True ;
  End ; //with
End ;


procedure TfrmAvrakningar.lbDeleteAvrakningClick(Sender: TObject);
begin
  if MessageDlg('Är du säker? du kan även ångra genom att klicka på "ångra ändringar". Klickar du däremot'
  +' på "spara ändringar" sen går det inte att ångra ändringar. Du måste alltså klicka "spara ändringar" '
  +' för att spara de ändringar som är gjorda.',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

  With dmModule1 do
   Begin
    cds_LoadFreightCostHeader2.Delete ;
  //  lbApplyChanges.Enabled:= True ;
   End ;
  End ;
end;

procedure TfrmAvrakningar.lbPrintClick(Sender: TObject);
var FormCRViewReport: TFormCRViewReport;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FRAKT_AVRAKNING.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmModule1.cds_LoadFreightCostHeader2AvrakningsNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;
 End ;

end;

procedure TfrmAvrakningar.FormCreate(Sender: TObject);
begin
 grdHead.LoadFromIniFile(dmsConnector.InifilesMap+'VisAvrakningar'+'.'+ThisUser.UserName);

// grdDetails.LoadFromIniFile(dmsConnector.InifilesMap+'VisAvrakningar'+'.'+ThisUser.UserName);
 grdHeadAvrakningsNo.ReadOnly:= True ;
 grdHeadLocalShipperNo.ReadOnly:= True ;
 grdHeadAvrakningsDate.ReadOnly:= True ;
 grdHeadCreatedUser.ReadOnly:= True ;
 grdHeadModifiedUser.ReadOnly:= True ;
 grdHeadDateCreated.ReadOnly:= True ;
 grdHeadDateModified.ReadOnly:= True ;
// grdHeadStatus.ReadOnly:= True ;
// grdHeadShippersInvoiceNo.ReadOnly:= True ;
 grdHeadSHIPPER.ReadOnly:= True ;

{ grdDetailsAvrakningsNo.ReadOnly:= True ;
 grdDetailsFS.ReadOnly:= True ;
 grdDetailsLOAD_ID.ReadOnly:= True ;
 grdDetailsLOADEDDATE.ReadOnly:= True ;
 grdDetailsFROM_PLACE.ReadOnly:= True ;
 grdDetailsDESTINATION.ReadOnly:= True ;
 grdDetailsLoadNo.ReadOnly:= True ;
 grdDetailsM3_NET.ReadOnly:= True ; }

 grdLoadsDBTableView1.RestoreFromIniFile(dmsConnector.InifilesMap+'VisAvrakningar'+'.'+ThisUser.UserName,False,False,[],'');
end;

procedure TfrmAvrakningar.bcVerkChange(Sender: TObject);
begin
lbRefreshClick(Sender) ;
end;

procedure TfrmAvrakningar.lbFindAvrNoClick(Sender: TObject);
Var AvrNo  : Integer ;
    verk   : String;
    VerkNo : Integer ;
    fEntryField : TfEntryField ;
begin
 With dmModule1 do
 Begin
  fEntryField:= TfEntryField.Create(Nil);
  fEntryField.Caption:= 'Ange LastNr' ;
  fEntryField.LTitle.Caption:= 'LastNr:' ;
  Try
   if fEntryField.ShowModal = mrOK then
   Begin
    AvrNo:= GetFraktAvrakningsNoForLoadNo(StrToIntDef(Trim(fEntryField.eValue.Text),0), Verk, VerkNo) ;
    if AvrNo > 0 then
    Begin
     BuildSQL (AvrNo) ;
     cds_LoadFreightCostDetails.Locate('LoadNo',StrToIntDef(Trim(fEntryField.eValue.Text),0), []) ;
    End
    else
    ShowMessage('Hittar ej lastnr.') ;
   End ;
  Finally
   FreeAndNil(fEntryField) ;//.Free ;
  End ;
 End ;
end;

procedure TfrmAvrakningar.lbSearchAvrNrClick(Sender: TObject);
Var //AvrNo  : Integer ;
//    verk   : String;
//    VerkNo : Integer ;
    fEntryField : TfEntryField ;
begin
 With dmModule1 do
 Begin
  fEntryField:= TfEntryField.Create(Nil);
  fEntryField.Caption:= 'Ange Avr.Nr' ;
  fEntryField.LTitle.Caption:= 'Avr.Nr:' ;
  Try
   if fEntryField.ShowModal = mrOK then
   Begin
    BuildSQL (StrToIntDef(Trim(fEntryField.eValue.Text),0)) ;
   End ;
  Finally
   FreeAndNil(fEntryField) ;//.Free ;
  End ;
 End ;
end;


procedure TfrmAvrakningar.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose:= True ;
 if DataSparat = False then
  if MessageDlg('Ändringar är inte sparade, vill du stänga?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
    CanClose:= True ;
    grdHead.SaveToIniFile(dmsConnector.InifilesMap+'VisAvrakningar'+'.'+ThisUser.UserName);
//    grdDetails.SaveToIniFile(dmsConnector.InifilesMap+'VisAvrakningar'+'.'+ThisUser.UserName);
   End
   else
   CanClose:= False ;
 if CanClose then
  grdLoadsDBTableView1.StoreToIniFile(dmsConnector.InifilesMap+'VisAvrakningar'+'.'+ThisUser.UserName,False,[],'');
end;

procedure TfrmAvrakningar.acSaveExecute(Sender: TObject);
begin
  if MessageDlg('Är du säker du vill spara de ändringar du gjort?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   With dmModule1 do
   Begin
    if cds_LoadFreightCostHeader2.State in [dsEdit, dsInsert] then
     cds_LoadFreightCostHeader2.Post ;
    if cds_LoadFreightCostHeader2.ChangeCount > 0 then
    Begin
     cds_LoadFreightCostHeader2.ApplyUpdates(0) ;
//     lbApplyChanges.Enabled:= False ;
    End ;
    if cds_LoadFreightCostDetails.State in [dsEdit, dsInsert] then
     cds_LoadFreightCostDetails.Post ;
    if cds_LoadFreightCostDetails.ChangeCount > 0 then
     cds_LoadFreightCostDetails.ApplyUpdates(0) ;
   End ;
  End ;
end;

procedure TfrmAvrakningar.acCancelChangesExecute(Sender: TObject);
begin
  With dmModule1 do
   Begin
    if cds_LoadFreightCostHeader2.State in [dsEdit, dsInsert] then
     cds_LoadFreightCostHeader2.Cancel ;
    if cds_LoadFreightCostHeader2.ChangeCount > 0 then
    Begin
     cds_LoadFreightCostHeader2.CancelUpdates ;
    End ;

    if cds_LoadFreightCostDetails.State in [dsEdit, dsInsert] then
     cds_LoadFreightCostDetails.Cancel ;
    if cds_LoadFreightCostDetails.ChangeCount > 0 then
     cds_LoadFreightCostDetails.CancelUpdates ;

    if (cds_LoadFreightCostDetails.ChangeCount = 0)
    AND (cds_LoadFreightCostHeader2.ChangeCount = 0) then
    Begin
     lbApplyChanges.Enabled:= False ;
     lbCancelChanges.Enabled:= False ;
    End ;
   End ;
end;

procedure TfrmAvrakningar.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled:= not DataSparat ;
end;

procedure TfrmAvrakningar.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled:= not DataSparat ;
end;

procedure TfrmAvrakningar.acPrintLoadsExecute(Sender: TObject);
begin
 with dmModule1 do
 Begin
// dxComponentPrinter1.PrintTitle:= 'AvräkningNr: '+cds_LoadFreightCostHeader2AvrakningsNo.AsString ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add('Avräkningsnr: '+cds_LoadFreightCostHeader2AvrakningsNo.AsString) ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add('Avräknad: '+SQLTimeStampToStr('yyyy-mm-dd',cds_LoadFreightCostHeader2AvrakningsDate.AsSQLTimeStamp)) ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Fakturanr: '+cds_LoadFreightCostHeader2ShippersInvoiceNo.AsString) ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Fraktförare: '+cds_LoadFreightCostHeader2SHIPPER.AsString) ;

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
 End ;
end;

procedure TfrmAvrakningar.acAddRowExecute(Sender: TObject);
begin
 with dmModule1 do
 Begin
  if not cds_LoadFreightCostDetails.Locate('LoadNo', -1, []) then
  Begin
   cds_LoadFreightCostDetails.Insert ;
   cds_LoadFreightCostDetailsLoadNo.AsInteger:= -1 ;
  End
   else
    ShowMessage('Det finns redan en extra rad.') ;
 End ;
end;

procedure TfrmAvrakningar.acRemoveRowExecute(Sender: TObject);
begin
  if MessageDlg('Är du säker ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   With dmModule1 do
   Begin
    cds_LoadFreightCostDetails.Delete ;
   End ;
  End ;
end;

end.
