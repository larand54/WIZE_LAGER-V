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
    acInventoryPriceList: TAction;
    dxBarButton5: TdxBarButton;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    dxNavBar1: TdxNavBar;
    nvgLager: TdxNavBarGroup;
    nbiLager: TdxNavBarItem;
    acLager: TAction;
    nvgUtlastning: TdxNavBarGroup;
    nbiUtlastning: TdxNavBarItem;
    acUtlastning: TAction;
    acAnkomstRegistrera: TAction;
    nbiAnkomstRegistrera: TdxNavBarItem;
    acLevereradeLaster: TAction;
    acFragaAvrop: TAction;
    acSkapaAvrakning: TAction;
    acAvrakningar: TAction;
    acSkapaFraktAvrakningar: TAction;
    acFraktAvrakningar: TAction;
    acRegistreraPaket: TAction;
    acFragaPaket: TAction;
    acAndraPaketHuvudEgenskaper: TAction;
    acAvregistreraPaket: TAction;
    acAndraFelRegPaket: TAction;
    acFlyttaPaket: TAction;
    acInventering: TAction;
    acPaketInmatningPerPaketKod: TAction;
    acFlyttaExternt: TAction;
    acProduktion: TAction;
    nviAndraFelRegPaket: TdxNavBarItem;
    nviAndraPaketHuvudEgenskaper: TdxNavBarItem;
    nviAvrakningar: TdxNavBarItem;
    nviacAvregistreraPaket: TdxNavBarItem;
    nviFlyttaExternt: TdxNavBarItem;
    nviFlyttaPaket: TdxNavBarItem;
    nviFragaAvrop: TdxNavBarItem;
    nviFragaPaket: TdxNavBarItem;
    nviFraktAvrakningar: TdxNavBarItem;
    nviInventering: TdxNavBarItem;
    nviInventoryPriceList: TdxNavBarItem;
    nviLevereradeLaster: TdxNavBarItem;
    nviPaketInmatningPerPaketKod: TdxNavBarItem;
    nviProduktion: TdxNavBarItem;
    nviRegistreraPaket: TdxNavBarItem;
    nviSkapaAvrakning: TdxNavBarItem;
    nviSkapaFraktAvrakningar: TdxNavBarItem;
    nvgAvrakning: TdxNavBarGroup;
    nvgProduktion: TdxNavBarGroup;
    nvgInventering: TdxNavBarGroup;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxNavBar1StyleItem1: TdxNavBarStyleItem;
    nvgUtlastningControl: TdxNavBarGroupControl;
    cxSplitter1: TcxSplitter;
    acSinglePkgEntry: TAction;
    nviPkgEntry: TdxNavBarItem;
    acLoadPlan: TAction;
    nviLoadPlan: TdxNavBarItem;
    nvgLastplan: TdxNavBarGroup;
    acInvCount: TAction;
    nviInvCount: TdxNavBarItem;
    acAO: TAction;
    nvgAO: TdxNavBarGroup;
    nviAO: TdxNavBarItem;
    nvgMyFavs: TdxNavBarGroup;
    dxBarButton6: TdxBarButton;
    acAnalyzeLoads: TAction;
    nviacAnalyzeLoads: TdxNavBarItem;
    KilnProps: TdxBarButton;
    acKilnProps: TAction;
    nviKilnProps: TdxNavBarItem;
    nvgTork: TdxNavBarGroup;
    nviTorkar: TdxNavBarItem;
    nvgLagerControl: TdxNavBarGroupControl;
    acKilnCharges: TAction;
    procedure FormCreate(Sender: TObject);
    procedure atExitExecute(Sender: TObject);
    procedure atAboutExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure acUserPreferenceExecute(Sender: TObject);

    procedure bbMatPunkterVerkClick(Sender: TObject);
    procedure bbBasMatPunkterClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acInventoryPriceListExecute(Sender: TObject);
    procedure acLagerExecute(Sender: TObject);
    procedure acAnkomstRegistreraExecute(Sender: TObject);
    procedure acFragaPaketExecute(Sender: TObject);
    procedure acInventeringExecute(Sender: TObject);
    procedure acProduktionExecute(Sender: TObject);
    procedure acLoadPlanExecute(Sender: TObject);
    procedure acInvCountExecute(Sender: TObject);
    procedure acAnalyzeLoadsExecute(Sender: TObject);
    procedure acRegistreraPaketExecute(Sender: TObject);
    procedure acAndraFelRegPaketExecute(Sender: TObject);
    procedure acAvregistreraPaketExecute(Sender: TObject);
    procedure acFlyttaPaketExecute(Sender: TObject);
    procedure acFlyttaExterntExecute(Sender: TObject);
    procedure acKilnPropsExecute(Sender: TObject);
    procedure acKilnChargesExecute(Sender: TObject);
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
  uPkgLog, UnitCRPrintReport, UnitProdRep, uProductionUnit, uBasMatPunkter,

  uPktNrPos, uPkgNoPos, uInvCtrl,
  dm_Inventory, VidaSecureStore, uEncode , uInvPriceList,
  fLoadPlan, uInventeraPIG, uAnalyseraLeveranser , UnitPkgEntry,
  dmsVidaPkg, dmcPkgs, UfelRegPkg, UnitRemovePkg, UnitMovePkgs,
  dmc_UserProps, dmc_DryKiln, uKilnProps, uKilnCharges;



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



(*procedure MyNotify(ExcRecord: TEurekaExceptionRecord; var Handled: Boolean);
begin
{ if DebugHook <> 0 then
  Handled := False
   else
    Handled:= True ; }
 Handled := not (ExcRecord.ExceptionObject is EdxEditInvalidInput) ;
end;*)

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
// CheckDrive ;
// if DirectoryExists(dmsConnector.DriveLetter) then
// Begin
//  CheckMappar ;
//  GetIniFileMap(Sender) ;
   if not ThisUser.Logon then
    Close
     else
      if dmsConnector.SQLConnection.Connected then
      Begin
       Caption:= 'VIS LAGER / '+dmsConnector.GetCompanyName (ThisUser.CompanyNo) + '/' + ThisUser.UserName + ' Version 2.1.1.1' ;
       dm_UserProps:= Tdm_UserProps.Create(nil);
      End
      else
      Begin
       Close ;
      End ;

  if ThisUser.CompanyNo = 132 then
  Begin
   nvgLastplan.Expanded   := True ;
   nvgLager.Expanded      := False ;
   nvgInventering.Expanded:= False ;
  End
  else
  Begin
   nvgLastplan.Expanded   := False ;
   nvgLager.Expanded      := False ;
   nvgInventering.Expanded:= True ;
  End ;
//  if FileExists(dmsConnector.DriveLetter+'VIS\KONFIG\NAVBAR.INI') then
//   dxNavBar1.LoadFromIniFile(dmsConnector.DriveLetter+'VIS\KONFIG\NAVBAR.INI', True);
// End
//  else
//   Close ;
end;

//Sparas centralt
procedure TfrmMain.dxBarButton13Click(Sender: TObject);
begin
 if (ThisUser.UserID = 8) or (ThisUser.UserID = 4) or (ThisUser.UserID = 5) then
 Begin
  TFormSetup.Execute ;
 End ;
end;

procedure TfrmMain.dxBarButton14Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('PKGCODE.RPT') ;

 FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmMain.acUserPreferenceExecute(Sender: TObject);
begin
 TfUserPreference.Execute ;
end;

procedure TfrmMain.bbMatPunkterVerkClick(Sender: TObject);
var frmProductionUnit: TfrmProductionUnit;
begin
 if ThisUser.CanView[dcFakturaSec] then
 Begin
 frmProductionUnit := TfrmProductionUnit.Create(Nil);
 Try
  frmProductionUnit.ShowModal ;
 Finally
  FreeAndNil(frmProductionUnit) ;
 End ;
 End ;
end;

procedure TfrmMain.bbBasMatPunkterClick(Sender: TObject);
var fBasMatPunkter: TfBasMatPunkter;
begin
 if ThisUser.CanView[dcFakturaSec] then
 Begin
 fBasMatPunkter:= TfBasMatPunkter.Create(Nil);
 Try
  fBasMatPunkter.ShowModal ;
 Finally
  FreeAndNil(fBasMatPunkter) ;
 End ;
 End ;
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
 if Assigned(fInventeraPIG) then
 Begin
  fInventeraPIG.Close ;
  if Assigned(fInventeraPIG) then
  FreeAndNil(fInventeraPIG) ;
 End ;

 if Assigned(frmLoadPlan) then
 Begin
  frmLoadPlan.Close ;
  if Assigned(frmLoadPlan) then
  FreeAndNil(frmLoadPlan) ;
 End ;


 if Assigned(frmProdRep) then
  FreeAndNil(frmProdRep) ;

{ if Assigned(fInvCtrl) then
  Begin
   fInvCtrl.Close ;
   FreeAndNil(fInvCtrl) ;
  End ; }

  if  Assigned(frmInventoryReport) then
  FreeAndNil(frmInventoryReport) ;

  if Assigned(dmInventory) then
  FreeAndNil(dmInventory);

  if Assigned(dm_DryKiln) then
  FreeAndNil(dm_DryKiln);

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

procedure TfrmMain.acInventoryPriceListExecute(Sender: TObject);
begin
 TfInvPriceList.Execute ;
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

procedure TfrmMain.acAnkomstRegistreraExecute(Sender: TObject);
begin
{  if ThisUser.CanView[dcARSec] then
  Begin
   if not Assigned(frmLoadArrivals) then
    Begin
     frmLoadArrivals := TfrmLoadArrivals.Create(Nil) ;
     frmLoadArrivals.CreateCo(  ThisUser.CompanyNo);
     frmLoadArrivals.Parent := panelBase;
     frmLoadArrivals.Show;
    End
    else
    begin
     frmLoadArrivals.Parent := panelBase;
     frmLoadArrivals.Show;
    end ;
  End ; }
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


procedure TfrmMain.acInventeringExecute(Sender: TObject);
var fInvCtrl: TfInvCtrl;
Begin
if ThisUser.CanView[dcInventorySection] then
 Try
  fInvCtrl := TfInvCtrl.Create(NIL) ;
  fInvCtrl.ShowModal ;
 Finally
  FreeAndNil(fInvCtrl) ;
 End ;
End ;


procedure TfrmMain.acProduktionExecute(Sender: TObject);
begin
  if ThisUser.CanView[dcInventorySection] then
  Begin
  if not Assigned(frmProdRep) then
  Begin
     frmProdRep := TfrmProdRep.Create(Nil) ;
     frmProdRep.CreateCo( Sender,ThisUser.CompanyNo);
     frmProdRep.Parent := panelBase;
     frmProdRep.Show;
     frmProdRep.grdActThick.SetFocus ;
    End
    else
    begin
     frmProdRep.Parent := panelBase;
     frmProdRep.Show;
     frmProdRep.grdActThick.SetFocus ;
    End ;
  End ;
end;

procedure TfrmMain.acLoadPlanExecute(Sender: TObject);
begin
 if (ThisUser.CompanyNo = 132) or (ThisUser.CompanyNo = 741) then
 Begin
 if not Assigned(frmLoadPlan) then
  Begin
   frmLoadPlan := TfrmLoadPlan.Create(Nil) ;
   frmLoadPlan.Parent := panelBase;
   frmLoadPlan.Show;
//   frmLoadPlan.Edit1.SetFocus ;
  End
  else
    begin
     frmLoadPlan.Parent := panelBase;
     frmLoadPlan.Show;
//     frmLoadPlan.Edit1.SetFocus ;
    end ;
 End ;
end;

procedure TfrmMain.acInvCountExecute(Sender: TObject);
//var  fInventeraPIG: TfInventeraPIG;
begin
 if (ThisUser.CompanyNo = 132) or (ThisUser.CompanyNo = 741) then
 Begin
 if not Assigned(fInventeraPIG) then
  Begin
   fInventeraPIG := TfInventeraPIG.Create(Nil) ;
   fInventeraPIG.Parent := panelBase;
   fInventeraPIG.Show;
//   fInventeraPIG.Edit1.SetFocus ;
  End
  else
    begin
     fInventeraPIG.Parent := panelBase;
     fInventeraPIG.Show;
//     fInventeraPIG.Edit1.SetFocus ;
    end ;
 End ;



end;

procedure TfrmMain.acAnalyzeLoadsExecute(Sender: TObject);
begin
  if ThisUser.CanView[dcInventorySection] then
  Begin
  if not Assigned(fAnalyseraLeveranser) then
  Begin
     fAnalyseraLeveranser := TfAnalyseraLeveranser.Create(Nil) ;
     fAnalyseraLeveranser.Parent := panelBase;
     fAnalyseraLeveranser.Show;
//     fAnalyseraLeveranser.grdActThick.SetFocus ;
    End
    else
    begin
     fAnalyseraLeveranser.Parent := panelBase;
     fAnalyseraLeveranser.Show;
//     fAnalyseraLeveranser.grdActThick.SetFocus ;
    End ;
  End ;
end;

procedure TfrmMain.acRegistreraPaketExecute(Sender: TObject);
Var frmPkgEntry : TfrmPkgEntry ;
begin
 if ThisUser.CanView[dcAdd_packagesSec] then
 Begin
  dmsPkg:= TdmsPkg.Create(Nil) ;
//  dmsPkg.ThisCurrentCompanyNo:= ThisUser.CompanyNo ;
  frmPkgEntry:= TfrmPkgEntry.Create(Nil);
  Try
   frmPkgEntry.ShowModal ;
  Finally
   dmsPkg.mtpackages.Active:= False ;
   FreeAndNil(frmPkgEntry) ;
   FreeAndNil(dmsPkg) ;
  End ;
 End ;
end ;

procedure TfrmMain.acAndraFelRegPaketExecute(Sender: TObject);
Var ffelRegPkg : TffelRegPkg ;
begin
 if ThisUser.CanView[dcAdd_packagesSec] then
 Begin
  ffelRegPkg:= TffelRegPkg.Create(Nil);
  Try
   ffelRegPkg.CreateCo ;
   ffelRegPkg.ShowModal ;
  Finally
   FreeAndNil(ffelRegPkg) ;
  End ;
 End ;
end ;

procedure TfrmMain.acAvregistreraPaketExecute(Sender: TObject);
//var frmRemovePkg: TfrmRemovePkg;
begin
 if ThisUser.CanView[dcAdd_packagesSec] then
 Begin
  frmRemovePkg:= TfrmRemovePkg.Create(Nil);
  Try
   frmRemovePkg.CreateCo ;
   frmRemovePkg.ShowModal ;
  Finally
   FreeAndNil(frmRemovePkg) ;
  End ;
 End ;
end;

procedure TfrmMain.acFlyttaPaketExecute(Sender: TObject);
begin
 if ThisUser.CanView[dcAdd_packagesSec] then
 Begin
  frmMovePkgs:= TfrmMovePkgs.Create(Nil);
  Try
   frmMovePkgs.CreateCo (False) ;
   frmMovePkgs.ShowModal ;
  Finally
   FreeAndNil(frmMovePkgs) ;
  End ;
 End ;
end;

procedure TfrmMain.acFlyttaExterntExecute(Sender: TObject);
begin
 if ThisUser.CanView[dcAdd_packagesSec] then
 Begin
  frmMovePkgs:= TfrmMovePkgs.Create(Nil);
  Try
   frmMovePkgs.CreateCo (True) ;
   frmMovePkgs.ShowModal ;
  Finally
   FreeAndNil(frmMovePkgs) ;
  End ;
 End ;
end;

procedure TfrmMain.acKilnPropsExecute(Sender: TObject);
var fKilnProps: TfKilnProps;
begin
 fKilnProps:= TfKilnProps.Create(nil);
 try
  fKilnProps.ShowModal ;
 finally
  FreeAndNil(fKilnProps) ;
 end;
end;

procedure TfrmMain.acKilnChargesExecute(Sender: TObject);
var fKilnCharges: TfKilnCharges ;
begin
 fKilnCharges:= TfKilnCharges.Create(nil);
 try
  fKilnCharges.ShowModal ;
 finally
  FreeAndNil(fKilnCharges) ;
 end;
end;

end.
