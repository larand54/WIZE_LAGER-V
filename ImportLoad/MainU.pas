unit MainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, xmldom, XMLIntf, msxmldom, XMLDoc, PackageExportU,
  ComCtrls, ExtCtrls, Buttons, FMTBcd, DBClient, Provider, SqlExpr,
  cxShellBrowserDialog, ActnList, cxControls, cxContainer, cxEdit,
  cxCheckBox, clTcpClient, clFtp, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters;

type

  TXMLImportExport = class(TForm)
    ADOConnection1: TADOConnection;
    dsInfo: TADODataSet;
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    edtFileToImport: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    edtXSDFileName: TEdit;
    Label3: TLabel;
    edtConnectionString: TEdit;
    btnConnection: TButton;
    Label1: TLabel;
    btnImport: TButton;
    btnExport: TButton;
    btnValidateImportFile: TButton;
    btnValidateExportFile: TButton;
    edtFileToExport: TEdit;
    btnClearEmptyNode: TButton;
    SpeedButton1: TSpeedButton;
    opd: TOpenDialog;
    svd: TSaveDialog;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    opdxs: TOpenDialog;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    ActionList1: TActionList;
    acValidateImportFile: TAction;
    acImportPkgs: TAction;
    acExportPkgsToXMLFile: TAction;
    acValidateExportXMLFile: TAction;
    sq_GetLONos: TSQLQuery;
    sq_GetLONosDeliveryMessageNumber: TStringField;
    cbEmaila: TcxCheckBox;
    clFtp1: TclFtp;
    procedure btnImportClick(Sender: TObject);
    procedure ADOConnection1BeforeConnect(Sender: TObject);
    procedure btnConnectionClick(Sender: TObject);
    procedure btnClearEmptyNodeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);

    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acValidateImportFileExecute(Sender: TObject);
    procedure acImportPkgsExecute(Sender: TObject);
    procedure acExportPkgsToXMLFileExecute(Sender: TObject);
    procedure acValidateExportXMLFileExecute(Sender: TObject);
    procedure acValidateImportFileUpdate(Sender: TObject);
    procedure acImportPkgsUpdate(Sender: TObject);
    procedure acValidateExportXMLFileUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    WoodXDir, ImportDir, DelWoodMsg_XSD : String ;
    function  DoGetNo(ImpExpFunction: TImportExportFunctionGetDeliveryMessageNumber): String ;//Lars, Lars again changed to string of course!!!
    function  DoImportExport(sSQL: string; ImpExpFunction: TImportExportFunction): Boolean;
    procedure DoExport;
    procedure DoImport;
    procedure DoRelaxedImport;
    procedure LoadConfig;
    procedure SaveConfig;
    procedure EmailFakturaAndSpecExecute ;
   Public
    InternalInvoiceNo       : Integer ;
    DeliveryMessageNumber,
    FakturaNummer           : String ;
    ImportOK                : Boolean ;
  end;

var
  XMLImportExport: TXMLImportExport;

implementation

{$R *.dfm}

uses PackageImportU, ComObj, TypInfo, IniFiles, dmsVidaSystem, VidaUser ,
  dmsDataConn, dmsVidaContact,
  //uSendMapiMail,
  VidaConst ;


procedure TXMLImportExport.SaveConfig;
var
  i : Integer;
begin
  with TIniFile.Create(ChangeFileExt(ParamStr(0), '.ini')) do
  try
    for i := 0 to Self.ComponentCount - 1 do
    try

      if IsPublishedProp(Self.Components[i], 'Text') then
        WriteString('Config',  Self.Components[i].Name, TypInfo.GetStrProp(Self.Components[i], 'Text'));

    except
    end;

  finally
    Free;
  end;
end;

procedure TXMLImportExport.LoadConfig;
var
  i : Integer;
begin
 WoodXDir       := dmsSystem.Get_SystemDir(ThisUser.UserID, 'Woodx', 'WoodxDir') ;
 ImportDir      := dmsSystem.Get_SystemDir(ThisUser.UserID, 'Woodx', 'ImportDir') ;
 DelWoodMsg_XSD := dmsSystem.Get_SystemDir(-1, 'Woodx', 'DeliveryMessageWood_XSD') ;

{ if Length(WoodXDir) = 0 then
 Begin
  ShowMessage('Woodx huvudmapp saknas.');
  acExportPkgsToXMLFile.Enabled:= False ;
  Exit ;
 End ; }

 if Length(DelWoodMsg_XSD) = 0 then
 Begin
  ShowMessage('Mapp för woodx mallar saknas.');
  acExportPkgsToXMLFile.Enabled:= False ;
  Exit ;
 End ;

 if not DirectoryExists(WoodXDir+'FakturaNr_'+FakturaNummer) then
  if not CreateDir(WoodXDir+'FakturaNr_'+FakturaNummer) then
   raise Exception.Create('Cannot create '+WoodXDir+'FakturaNr_'+FakturaNummer);

 WoodXDir:= IncludeTrailingPathDelimiter(WoodXDir+'FakturaNr_'+FakturaNummer) ;
// edtFileToImport.Text := ImportDir ;
 edtXSDFileName.Text  := DelWoodMsg_XSD ;
 edtFileToExport.Text := WoodXDir ;

//edtConnectionString.Text       := 'Initial Catalog=vis_vwab;Provider=SQLOLEDB.1;uid=sa;pwd=sa;Persist Security Info=False;Data Source=carmak-m30' ;
// edtConnectionString.Text       := 'Initial Catalog=vis_vwab;Provider=SQLOLEDB.1;uid=sa;pwd=huggkubb;Persist Security Info=False;Data Source=vida912' ;
// if ThisUser.UserID = 8 then
// edtConnectionString.Text       := 'Provider=SQLOLEDB.1;Password=sa;Persist Security Info=True;User ID=sa;Initial Catalog=tt_sys;Data Source=carmak-m30'
// else


//Vis.Vida.se
  edtConnectionString.Text       := 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=vis_vida;Data Source=vis.vida.se;Extended Properties="uid=sa;"' ;

 //Lars
//  edtConnectionString.Text       := 'Provider=SQLOLEDB.1;Password=woods;Persist Security Info=True;User ID=sa;Initial Catalog=vis_vida;Data Source=CARMAK-hp8530w\SQLEXPRESS;Extended Properties="uid=sa;pwd=sa"' ;


 if ThisUser.UserID = 8 then
 Begin
  Label1.Visible              := True ;
  edtConnectionString.Visible := True ;
  btnConnection.Visible       := True ;
 End ;

{  with TIniFile.Create(ChangeFileExt(ParamStr(0), '.ini')) do
  try
    for i := 0 to Self.ComponentCount - 1 do
    try

      if IsPublishedProp(Self.Components[i], 'Text') then
        TypInfo.SetPropValue( Self.Components[i],
                              'Text',
                              ReadString('Config',  Self.Components[i].Name, TypInfo.GetStrProp(Self.Components[i], 'Text'))
                              );

    except
    end;
  finally
    Free;
  end; }
end;


procedure DoSetPropValue(Instance: TObject; const PropName: string;
  const Value: Variant);
begin
  try
    if IsPublishedProp(Instance, PropName) then
      TypInfo.SetPropValue(Instance, PropName, Value);

    Application.ProcessMessages;
  except
  end;
end;

function  DoValidate(xsdFile, xmlFile: string): Boolean;
var
  xmlMessage, SchemaCache: OleVariant;
begin
  Result := False;

  xmlMessage := CreateOleObject('MSXML2.FreeThreadedDOMDocument.4.0');
  SchemaCache := CreateOleObject('MSXML2.XMLSchemaCache.4.0');

  SchemaCache.Add('', xsdFile);

  xmlMessage.async := False;
  xmlMessage.validateOnParse := True;
  xmlMessage.resolveExternals := False;
  xmlMessage.schemas := SchemaCache;
  xmlMessage.Load(xmlFile);
  xmlMessage.Validate;

  if xmlMessage.parseError.errorCode = 0 Then
  begin
    MessageDlg('Validation Passed!', mtInformation, [mbOK], 0);
    Result := True;
  end
  else
    MessageDlg('Validation Error:'#13#10#13#10 + xmlMessage.parseError.reason, mtWarning, [mbOK], 0);

  xmlMessage := EmptyParam;
  SchemaCache := EmptyParam;
end;

function TXMLImportExport.DoImportExport(sSQL: string; ImpExpFunction: TImportExportFunction): Boolean;
begin
  Result := False;

  dsInfo.Close;
  dsInfo.CommandText := sSQL;
  dsInfo.Open;

  if Assigned(ImpExpFunction) then
    Result := ImpExpFunction(dsInfo);
end;

function TXMLImportExport.DoGetNo(ImpExpFunction: TImportExportFunctionGetDeliveryMessageNumber): String ;
begin
  Result := '-1';

  if Assigned(ImpExpFunction) then
    Result := ImpExpFunction;
end;

{-------------------------------------------------------------------------------
  Procedure: btnImportClick
  Author:    2006.08.31 14.01.42 By Zheng Jie (Gear1023@163.com)
  Function:  XML Import To DB
-------------------------------------------------------------------------------}
procedure TXMLImportExport.DoImport;

begin

  InPutPackageFileName := edtFileToImport.Text;
//Lars get GetDeliveryMessageNumber
//Delete old data
  ADOConnection1.Open;
  DeliveryMessageNumber:= DoGetNo(GetDeliveryMessageNumber) ;
  ADOQuery1.Close;
  ADOQuery1.SQL.Add('Delete From dbo.DeliveryMessageWoodHeader WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)) ;
  ADOQuery1.ExecSQL ;
  ADOConnection1.Close;

  ADOConnection1.Open;
  ADOConnection1.BeginTrans;
  try
      DoImportExport('select * from dbo.DeliveryMessageWoodHeader', ImportDeliveryWoordHeader);
      DoImportExport('select * from dbo.DeliveryMessageReference', ImportDeliveryMessageReference);
      DoImportExport('select * from dbo.PartyIdentifier', ImportPartyIdentifier);
      DoImportExport('select * from dbo.NameAddress', ImportNameAddress);

      DoImportExport('select * from dbo.DeliveryMessageShipment', ImportDeliveryMessageShipment);
      DoImportExport('select * from dbo.ProductIdentifier', ImportProductIdentifier);

      DoImportExport('select * from dbo.DeliveryShipmentDeliveryMessageReference', ImportDeliveryShipmentDeliveryMessageReference);
      DoImportExport('select * from dbo.TransportPackageInformation', ImportTransportPackageInformation);
      DoImportExport('select * from dbo.LengthSpecification', ImportLengthSpecification);
      DoImportExport('select * from dbo.InformationalQuantity', ImportInformationalQuantity);
      ADOConnection1.CommitTrans;
  except
      ADOConnection1.RollbackTrans;
  end;
end;

{-------------------------------------------------------------------------------
  Procedure: btnExportClick
  Author:    2006.08.31 13.25.55 By Zheng Jie (Gear1023@163.com)
  Function:  DB Export TO XML 

  // Only ONE record can be exported one time.
  // Some changes need to be done for multi reocrd export.

-------------------------------------------------------------------------------}
procedure TXMLImportExport.DoExport;
begin
 PackageExportU.InternalInvoiceNo:= InternalInvoiceNo ;
 sq_GetLONos.Close ;
 sq_GetLONos.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
 sq_GetLONos.Open ;
 While not sq_GetLONos.Eof do
 Begin
  DeliveryMessageNumber:= sq_GetLONosDeliveryMessageNumber.AsString ;
  OutPutPackageFileName := WoodXDir+'InvoicePackageSpec InvoiceNo_LoadOrderNo ' + FakturaNummer +'_'+ DeliveryMessageNumber +'.xml' ; //edtFileToExport.Text;
  CleareDoc;

   DoImportExport('select * from DeliveryMessageWoodHeader  WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)+' AND InternalInvoiceNo = '+inttostr(InternalInvoiceNo), ExportDeliveryWoordHeader);
// This function is called by prior function
////    DoImportExport('select * from DeliveryMessageReference, ExportDeliveryMessageReference);
////    DoImportExport('select * from DeliveryMessageShipment', ExportDeliveryMessageShipment);

//Lars switched order of these 2 calls
// 2006.11.26 20:02:44 By Zheng Jie (Gear1023@163.com)
// Changed Back By
   DoImportExport('select * from PartyIdentifier  WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)+' AND InternalInvoiceNo = '+inttostr(InternalInvoiceNo), ExportPartyIdentifier) ;
   DoImportExport('select * from NameAddress  WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)+' AND InternalInvoiceNo = '+inttostr(InternalInvoiceNo), ExportNameAddress) ;



// This function is called by prior function
////    DoImportExport('select * from ProductIdentifier', ExportProductIdentifier);
////    DoImportExport('select * from DeliveryShipmentDeliveryMessageReference', ExportDeliveryShipmentDeliveryMessageReference);

   DoImportExport('select * from TransportPackageInformation  WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)+' AND InternalInvoiceNo = '+inttostr(InternalInvoiceNo), ExportTransportPackageInformation);
////    DoImportExport('select * from LengthSpecification', ExportLengthSpecification);
////    DoImportExport('select * from InformationalQuantity', ExportInformationalQuantity);

   doClearEmptyNode;

   edtFileToExport.Text := OutPutPackageFileName;
  sq_GetLONos.Next ;
 End ;
 sq_GetLONos.Close ;
end;

{-------------------------------------------------------------------------------
   EVENT PROCEDURE
 ------------------------------------------------------------------------------
   EVENT PROCEDURE
-------------------------------------------------------------------------------}
procedure TXMLImportExport.btnClearEmptyNodeClick(Sender: TObject);
begin
  OutPutPackageFileName := edtFileToExport.Text;
  DoClearEmptyNode;
end;

procedure TXMLImportExport.btnImportClick(Sender: TObject);
begin
  DoSetPropValue(Sender, 'Enabled', False);
  try
    DoImport;
  finally
    DoSetPropValue(Sender, 'Enabled', True);
  end;
end;
         
procedure TXMLImportExport.ADOConnection1BeforeConnect(Sender: TObject);
begin
  ADOConnection1.ConnectionString := edtConnectionString.Text;
end;

procedure TXMLImportExport.btnConnectionClick(Sender: TObject);
begin
  edtConnectionString.Text := PromptDataSource(Handle, edtConnectionString.Text);
end;

procedure TXMLImportExport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  SaveConfig;
end;

procedure TXMLImportExport.FormCreate(Sender: TObject);
begin
//  LoadConfig;
end;

procedure TXMLImportExport.SpeedButton1Click(Sender: TObject);
begin
  opd.InitialDir  := ImportDir ;
  if opd.Execute then
  begin
   edtFileToImport.Text := opd.FileName;
   ImportDir            := ExtractFilePath(opd.FileName) ;
  end;
end;

procedure TXMLImportExport.SpeedButton2Click(Sender: TObject);
begin
  if cxShellBrowserDialog1.Execute then
  Begin
   WoodXDir            := IncludeTrailingBackslash(cxShellBrowserDialog1.Path) ;
   edtFileToExport.Text := IncludeTrailingBackslash(cxShellBrowserDialog1.Path) ;

  End ;

{  svd.FileName := edtFileToExport.Text;
  if svd.FileName = '' then
    svd.FileName := GetOutPutPackageFileName;
  if svd.Execute then
  begin
    edtFileToExport.Text := svd.FileName;
  end; }
end;

procedure TXMLImportExport.SpeedButton3Click(Sender: TObject);
begin
  opdxs.InitialDir:= ExtractFilePath(DelWoodMsg_XSD) ;
//  opdxs.FileName := edtXSDFileName.Text;
  if opdxs.Execute then
  begin
//    edtFileToImport.Text := opdxs.FileName;
    edtXSDFileName.Text := opdxs.FileName;
    DelWoodMsg_XSD      := opdxs.FileName;
  end;
end;

//Lars 28 nov
procedure TXMLImportExport.DoRelaxedImport;
var
  Save_Cursor : TCursor;
begin
  InPutPackageFileName := edtFileToImport.Text;
//Lars get GetDeliveryMessageNumber
//Delete old data
  ADOConnection1.Open;
  DeliveryMessageNumber:= DoGetNo(GetDeliveryMessageNumber) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear ;
  ADOQuery1.SQL.Add('Delete From dbo.DeliveryMessageWoodHeader2 WHERE DeliveryMessageNumber = ' + QuotedStr(DeliveryMessageNumber)) ;
  ADOQuery1.SQL.Add('Delete From dbo.ProductIdentifier2 WHERE DeliveryMessageNumber = ' + QuotedStr(DeliveryMessageNumber)) ;
  ADOQuery1.SQL.Add('Delete From dbo.PartyIdentifier2 WHERE DeliveryMessageNumber = ' + QuotedStr(DeliveryMessageNumber)) ;
  ADOQuery1.SQL.Add('Delete From dbo.NameAddress2 WHERE DeliveryMessageNumber = ' + QuotedStr(DeliveryMessageNumber)) ;
  ADOQuery1.SQL.Add('Delete From dbo.DeliveryShipmentDeliveryMessageReference2 WHERE DeliveryMessageNumber = ' + QuotedStr(DeliveryMessageNumber)) ;

  ADOQuery1.ExecSQL ;
  ADOConnection1.Close;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  ADOConnection1.Open;
  ADOConnection1.BeginTrans;
  try
      DoImportExport('select * from dbo.DeliveryMessageWoodHeader2', ImportDeliveryWoordHeader);
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//      DoImportExport('select * from DeliveryMessageReference', ImportDeliveryMessageReference);
      DoImportExport('select * from dbo.PartyIdentifier2', ImportPartyIdentifier);
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      DoImportExport('select * from dbo.NameAddress2', ImportNameAddress);
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }

      DoImportExport('select * from dbo.DeliveryMessageShipment2', ImportDeliveryMessageShipment);
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }

      DoImportExport('select * from dbo.DeliveryShipmentDeliveryMessageReference2', ImportDeliveryShipmentDeliveryMessageReference);
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      DoImportExport('select * from dbo.TransportPackageInformation2', RelaxedImportTransportPackageInformation);
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      DoImportExport('select * from dbo.LengthSpecification2', RelaxedImportLengthSpecification);
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      DoImportExport('select * from dbo.ProductIdentifier2', ImportProductIdentifier);//Moved after TransportPackageInformation2 beacuse it is related to it
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//      DoImportExport('select * from InformationalQuantity2', ImportInformationalQuantity);
      ADOConnection1.CommitTrans;
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      ShowMessage('Inläsning av woodxfil OK') ;

   except
      On E: Exception do
      Begin
       ADOConnection1.RollbackTrans ;
       dmsSystem.FDoLog(E.Message+' :DoRelaxedImport') ;
       ShowMessage('Error vid inläsning av woodxfil') ;
       Raise ;
      End ;
   end;
end;

procedure TXMLImportExport.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
// dmsSystem.SaveUserDir (ThisUser.UserID, Self.Name, WoodXDir, ImportDir, DelWoodMsg_XSD) ;
end;

procedure TXMLImportExport.acValidateImportFileExecute(Sender: TObject);
Var
 Save_Cursor  : TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  DoValidate(edtXSDFileName.Text, edtFileToImport.Text);
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TXMLImportExport.acImportPkgsExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  opd.InitialDir  := ImportDir ;

  if opd.Execute then
  Begin
   edtFileToImport.Text := opd.FileName;
   ImportDir            := ExtractFilePath(opd.FileName) ;

   if MessageDlg('Vill du importera woodxfil ' + edtFileToImport.Text,
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin

     DoSetPropValue(Sender, 'Enabled', False);
     try
      Try
      DoRelaxedImport;
      ImportOK := True ;
      Close ;
      except
        On E: Exception do
        Begin
         dmsSystem.FDoLog(E.Message+' :Import woodx failed') ;
         Raise ;
        End ;
      end;

     finally
      DoSetPropValue(Sender, 'Enabled', True);
     end;
    End ; //if MessageDlg('Vill du importera woodxfil ' + edtFileToImport.Text,
  End ;//if opd.Execute then
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TXMLImportExport.acExportPkgsToXMLFileExecute(Sender: TObject);
Var
 Save_Cursor  : TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  DoSetPropValue(Sender, 'Enabled', False);
  try
    DoExport;
  finally
    DoSetPropValue(Sender, 'Enabled', True);
  end;
 EmailFakturaAndSpecExecute ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TXMLImportExport.EmailFakturaAndSpecExecute ;
const
  LF = #10;
Var //FormCRExportOneReport   : TFormCRExportOneReport ;
    A                       : array of variant ;
//    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : array of String ;
    MailToAddress           : String ;
    x                       : Integer ;
begin
//LM if dmVidaInvoice.cdsInvoiceListINTFAKTNR.AsInteger < 1 then exit ;

// FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
// Try
//  dmVidaInvoice.SparaFakturaOchSpecSomPDF (1,  dmVidaInvoice.cdsInvoiceListINTFAKTNR.AsInteger,  dmVidaInvoice.cdsInvoiceListSupplierNo.AsInteger,  WoodXDir) ;//Svendska

//  SetLength(A, 1);
//  A[0]:= dmVidaInvoice.cdsInvoiceListINTFAKTNR.AsInteger ;
//  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cFaktura, A, WoodXDir + 'InvoiceNo '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
//  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, WoodXDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
// Finally
//  FreeAndNil(FormCRExportOneReport) ;//.Free ;
// End ;

(*
 if cbEmaila.Checked then
 Begin
 MailToAddress:= dmsContact.GetEmailAddress(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger) ;
 if Length(MailToAddress) > 0 then
 Begin
  SetLength(Attach, 2);
  Attach[0]:= WoodXDir + 'InvoiceNo '+dmVidaInvoice.cdsInvoiceListFAKTNR.AsString+'.pdf' ;
  Attach[1]:= WoodXDir + 'Specification '+dmVidaInvoice.cdsInvoiceListFAKTNR.AsString+'.pdf' ;

  x:= 1 ;

  sq_GetLONos.Close ;
  sq_GetLONos.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
  sq_GetLONos.Open ;
  sq_GetLONos.First ;
  While not sq_GetLONos.Eof do
  Begin
   x:= succ(x) ;
   SetLength(Attach, x+1);
   DeliveryMessageNumber:= sq_GetLONosDeliveryMessageNumber.AsString ;

   Attach[x]:= WoodXDir + 'InvoicePackageSpec InvoiceNo_LoadOrderNo ' + FakturaNummer +'_'+ DeliveryMessageNumber +'.xml' ;
   sq_GetLONos.Next ;
  End ;
 sq_GetLONos.Close ;

 dm_SendMapiMail         := Tdm_SendMapiMail.Create(nil);
 Try

  dm_SendMapiMail.SendMail('Faktura/specifikation. Fakturanr: '+dmVidaInvoice.cdsInvoiceListFAKTNR.AsString
  +' - Invoice/package specification. InvoiceNo: '+dmVidaInvoice.cdsInvoiceListFAKTNR.AsString,

  'Faktura, paketspecifikation och Woodx spec bifogad. '
  +LF+''
  +'Invoice, package specification and woodx package spec attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir(ThisUser.UserID, inttostr(ThisUser.UserID), 'MyEmailAddress'),
  MailToAddress,
  '', //InfogadHTMLFil
  Attach) ;


 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End //if cbEmaila.Checked then
  else
   ShowMessage('Emailadress saknas för klienten!') ;
 End ;
  *)
end;

procedure TXMLImportExport.acValidateExportXMLFileExecute(Sender: TObject);
begin
  DoValidate(edtXSDFileName.Text, edtFileToExport.Text);
end;

procedure TXMLImportExport.acValidateImportFileUpdate(Sender: TObject);
begin
 acValidateImportFile.Enabled:= Length(Trim(edtFileToImport.Text)) > 0 ;
end;

procedure TXMLImportExport.acImportPkgsUpdate(Sender: TObject);
begin
// acImportPkgs.Enabled:= Length(Trim(edtFileToImport.Text)) > 0 ;
end;

procedure TXMLImportExport.acValidateExportXMLFileUpdate(Sender: TObject);
begin
 acValidateExportXMLFile.Enabled:= Length(Trim(edtFileToExport.Text)) > 0 ;
end;

procedure TXMLImportExport.FormShow(Sender: TObject);
begin
 LoadConfig ;
 ImportOK := False ;
end;

end.
