unit fMain;

interface

uses
  ActnList,
  Classes,
  Controls,
  dxBar,
  dxsbar,
  ExtCtrls,
  Forms,
  ImgList,
  SysUtils,
  Windows, ShellApi,   inifiles, StdCtrls, jpeg, Graphics,
  printers, ComCtrls, Messages,
  ExceptionLog, ECore, ETypes,
  dxCntner, cxShellBrowserDialog, dxNavBarCollns, dxNavBarBase, dxNavBar,
  cxStyles, dxNavBarStyles, cxControls, cxSplitter, cxClasses ;




type
  TfrmMain = class(TForm)
    ActionList1: TActionList;
    atExit: TAction;
    atAbout: TAction;
    imglOutbar_large: TImageList;
    dxBarManager1: TdxBarManager;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    bbPkgInfo: TdxBarButton;
    bbAddPackage: TdxBarButton;
    bbUserPreference: TdxBarButton;
    acUserPreference: TAction;
    bbCurrency: TdxBarButton;
    test: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Panel1: TPanel;
    panelBase: TPanel;
    bbGeneralShippingCost: TdxBarButton;
    bbMarketPriceTemplates: TdxBarButton;
    bbMarketPrices: TdxBarButton;
    bbMatPunkterVerk: TdxBarButton;
    bbBasMatPunkter: TdxBarButton;
    bbMainGrade: TdxBarButton;
    bbPkgNoSerie: TdxBarButton;
    bbProductCodes: TdxBarButton;
    bbInternalSpeciesCodes: TdxBarButton;
    bbInternalSurfacingCodes: TdxBarButton;
    bbPktNrPositioner: TdxBarButton;
    bbPaketNrPos_INI: TdxBarButton;
    bbAndraPkt: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    dxNavBar1: TdxNavBar;
    nvgLager: TdxNavBarGroup;
    nbiLager: TdxNavBarItem;
    acLager: TAction;
    acFragaPaket: TAction;
    nviFragaPaket: TdxNavBarItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxNavBar1StyleItem1: TdxNavBarStyleItem;
    cxSplitter1: TcxSplitter;
    dxBarButton6: TdxBarButton;
    KilnProps: TdxBarButton;
    nvgLagerControl: TdxNavBarGroupControl;
    procedure FormCreate(Sender: TObject);
    procedure atExitExecute(Sender: TObject);
    procedure atAboutExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure acUserPreferenceExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acLagerExecute(Sender: TObject);
    procedure acFragaPaketExecute(Sender: TObject);
  private
    procedure AppException(Sender: TObject; E: Exception);
    procedure CleanUpForms(Sender: TObject);
    procedure GetIniFileMap(Sender: TObject) ;
    procedure CheckMappar ;
    procedure CheckDrive ;
    procedure ClearForms ;
  public
  end;

var
  FrmMain: TfrmMain;



implementation

uses
  Dialogs,


  VidaConst,
  VidaType,
  VidaUser,
  dmcVidaSystem, UnitSetup, UnitCRViewReport,
  dmcVidaOrder, UnitAboutBox,
  UnitPkgInfo, dmsDataConn,
  UnitInventoryReport,

  dmsVidaSystem, uUserPreference,
  uPkgLog, UnitCRPrintReport, //UnitProdRep, uProductionUnit, uBasMatPunkter,

//  uPktNrPos, uPkgNoPos, uInvCtrl,
  dm_Inventory, VidaSecureStore, uEncode , //uInvPriceList,
//  fLoadPlan, uInventeraPIG, uAnalyseraLeveranser , UnitPkgEntry,
  dmsVidaPkg, dmcPkgs, //UfelRegPkg, UnitRemovePkg, UnitMovePkgs,
  dmc_UserProps ; //dmc_DryKiln, uKilnProps, uKilnCharges;



{$R *.DFM}
procedure TfrmMain.ClearForms ;
Begin

End ;

procedure TfrmMain.CheckDrive ;
Begin
  if not DirectoryExists('h:\') then
  Begin
   cxShellBrowserDialog1.Title:= 'Disk drive H: finns ej, ange en annan.' ;
   cxShellBrowserDialog1.Execute ;
   dmsConnector.DriveLetter:= cxShellBrowserDialog1.Path ;
  End
   else
    dmsConnector.DriveLetter:= 'h:\';
End ;




//---------------------------------------------------------------------
procedure TfrmMain.AppException(Sender: TObject; E: Exception);
begin
  if Pos('547', E.Message) > 0 then
    ShowMessage('The system can not insert record due to data conflict!')
  else
    if Pos('2601', E.Message) > 0 then
      ShowMessage('The system can not insert record due to data duplication!')
    else
      if Pos('10015', E.Message) > 0 then
        ShowMessage('The system can not insert record due to data duplication!')
      else
        ShowMessage('System Error. Original Message: ' + E.Message)
end;


//---------------------------------------------------------------------
procedure TfrmMain.FormCreate(Sender: TObject);
begin
// ExceptionNotify := MyNotify; // Assign ExceptionNotify variable to MyNotify procedure.
  Application.OnException := AppException;
end;

//---------------------------------------------------------------------
procedure TfrmMain.atExitExecute(Sender: TObject);
begin
  close
end;

//-------------------------------------------------------------
procedure TfrmMain.atAboutExecute(Sender: TObject);
begin
 TAboutBox.Execute ;
end;

procedure TfrmMain.CheckMappar ;
Var EditCRFolder, EditIniFiles, eUserDir, eExcelDir, eLODir : String ;
Begin
  if not DirectoryExists(dmsConnector.DriveLetter+'VIS') then
    if not CreateDir(dmsConnector.DriveLetter+'VIS') then
    raise Exception.Create('Cannot create '+dmsConnector.DriveLetter+'VIS');

  if not DirectoryExists(dmsConnector.DriveLetter+'VIS\KONFIG') then
    if not CreateDir(dmsConnector.DriveLetter+'VIS\KONFIG') then
    raise Exception.Create('Cannot create '+dmsConnector.DriveLetter+'VIS\KONFIG');

  if not DirectoryExists(dmsConnector.DriveLetter+'VIS\MALL') then
    if not CreateDir(dmsConnector.DriveLetter+'VIS\MALL') then
    raise Exception.Create('Cannot create '+dmsConnector.DriveLetter+'VIS\MALL');

  if not DirectoryExists(dmsConnector.DriveLetter+'VIS\TEMP') then
    if not CreateDir(dmsConnector.DriveLetter+'VIS\TEMP') then
    raise Exception.Create('Cannot create '+dmsConnector.DriveLetter+'VIS\TEMP');

 if not FileExists(dmsConnector.DriveLetter+'VIS\KONFIG\VIS.INI') then
 with TIniFile.Create(dmsConnector.DriveLetter+'VIS\KONFIG\VIS.INI') do
    try
     EditCRFolder:= ReadString ('Security', 'CRPath', '\\vida912\E\Microsoft SQL Server\MSSQL\Program\VISRAPPORTER\') ;
     EditIniFiles:= ReadString ('Security', 'InifilesMap', dmsConnector.DriveLetter+'VIS\KONFIG\') ;
     eUserDir:= ReadString ('Setup', 'UserDir', dmsConnector.DriveLetter+'VIS\MALL');
     eExcelDir:= ReadString ('Setup', 'ExcelDir', dmsConnector.DriveLetter+'VIS\TEMP');
     eLODir:= ReadString ('Setup', 'LODir', dmsConnector.DriveLetter+'VIS\MALL');

     WriteString('Setup','UserDir', eUserDir);
     WriteString('Setup','ExcelDir', eExcelDir);
     WriteString('Setup','LODir', eLODir);
     WriteString ('Security', 'CRPath', EditCRFolder) ;
     WriteString ('Security', 'InifilesMap', EditIniFiles) ;
     dmsConnector.InifilesMap:= EditIniFiles ;
  Finally
   Free ;
  End
End ;


//-------------------------------------------------------------
procedure TfrmMain.FormShow(Sender: TObject);
begin
   if not ThisUser.Logon then
    Close
     else
      if dmsConnector.SQLConnection.Connected then
      Begin
       Caption:= 'VIS LAGER ALVE / '+dmsConnector.GetCompanyName (ThisUser.CompanyNo)+' Version 2.1.1.1' ;
       dm_UserProps:= Tdm_UserProps.Create(nil);
      End
      else
      Begin
       Close ;
      End ;


{CheckDrive ;
if DirectoryExists(dmsConnector.DriveLetter) then
 Begin
  CheckMappar ;
  GetIniFileMap(Sender) ;
   if not ThisUser.Logon then
    Close
     else
      if dmsConnector.SQLConnection.Connected then
      Begin
       Caption:= 'VIS LAGER / '+dmsConnector.GetCompanyName (ThisUser.CompanyNo)+' Version 1.1.13.45' ;
       dm_UserProps:= Tdm_UserProps.Create(nil);
      End
      else
      Begin
       Close ;
      End ;
 End
  else
   Close ; }
end;

//Sparas centralt
procedure TfrmMain.dxBarButton13Click(Sender: TObject);
begin
 if (ThisUser.UserID = 8) or (ThisUser.UserID = 4) or (ThisUser.UserID = 5) then
 Begin
  TFormSetup.Execute ;
 End ;
end;

procedure TfrmMain.acUserPreferenceExecute(Sender: TObject);
begin
 TfUserPreference.Execute ;
end;

procedure TfrmMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then begin
    Key := #0;
//    if (Sender is TdxdBGrid) then
//      TdxdBGrid(Sender).Perform(WM_KeyDown,VK_Tab,0)
//    else
      Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfrmMain.CleanUpForms(Sender: TObject);
begin
  if  Assigned(frmInventoryReport) then
  FreeAndNil(frmInventoryReport) ;

  if Assigned(dmInventory) then
  FreeAndNil(dmInventory);
end;

//Hämtas centralt
procedure TfrmMain.GetIniFileMap(Sender: TObject) ;
begin
// with TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI')) do
 with TIniFile.Create(dmsConnector.DriveLetter+'VIS\KONFIG\VIS.INI') do
 try
  dmsConnector.InifilesMap:= ReadString ('Security', 'InifilesMap', 'H:\VIS\KONFIG\') ;
 Finally
  Free ;
 End ;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Try
 With dmsSystem do
 Begin
  Try
//  dxNavBar1.SaveToIniFile(dmsConnector.DriveLetter+'VIS\KONFIG\NAVBAR.INI', True);
  if dmsConnector.SQLConnection.Connected then
  Delete_UserReservedPkgs ;
  Except
  End ;
 End ;
 Finally
  Try
  CleanUpForms(Sender) ;
  Except
  End ;
 End ;

 FreeAndNil(dm_UserProps) ;

 Try
 ThisUser.Free ;
 Except
 End ;
 CanClose := True ;
end;

procedure TfrmMain.acLagerExecute(Sender: TObject);
begin
  if ThisUser.CanView[dcInventorySection] then
  Begin
  if (not  Assigned(frmInventoryReport) )  then
  Begin
     frmInventoryReport := TfrmInventoryReport.Create(Nil) ;
     frmInventoryReport.CreateCo( Sender,ThisUser.CompanyNo);
     frmInventoryReport.Parent := panelBase;
     frmInventoryReport.Show;
     frmInventoryReport.ccbAT.SetFocus ;
    End
    else
    begin
     frmInventoryReport.Parent := panelBase;
     frmInventoryReport.Show;
     frmInventoryReport.ccbAT.SetFocus ;
  End ;
  End ;
end;

procedure TfrmMain.acFragaPaketExecute(Sender: TObject);
Var frmPkgInfo : TfrmPkgInfo ;
begin
 if ThisUser.CanView[dcAsk_packagesSec] then
 Begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo:= 0 ;
  frmPkgInfo.SupplierCode:= '';
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
 End ;
end;


end.
