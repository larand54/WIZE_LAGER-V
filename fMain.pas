unit fMain;

interface

uses
  ActnList,
  Classes,
  Controls,
  dxBar,

  ExtCtrls,
  Forms,
  ImgList,
  SysUtils,
  Windows, ShellApi,   StdCtrls, jpeg, Graphics,
  printers, ComCtrls, Messages,
  cxShellBrowserDialog, dxNavBarCollns, dxNavBarBase, dxNavBar,
  cxStyles, dxNavBarStyles, cxControls, cxSplitter, cxClasses,
  OleServer, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinsdxNavBarPainter, dxSkinsdxBarPainter, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, Vcl.Menus,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxButtons,
  cxGridLevel, cxGridCustomView, cxGrid, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  System.Actions, siComp, siLngLnk, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit  ;




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
    acRegistreraPaket: TAction;
    acFragaPaket: TAction;
    acAvregistreraPaket: TAction;
    acAndraFelRegPaket: TAction;
    acFlyttaPaket: TAction;
    acInventering: TAction;
    acFlyttaExternt: TAction;
    nviAndraFelRegPaket: TdxNavBarItem;
    nviacAvregistreraPaket: TdxNavBarItem;
    nviFlyttaExternt: TdxNavBarItem;
    nviFlyttaPaket: TdxNavBarItem;
    nviFragaPaket: TdxNavBarItem;
    nviInventering: TdxNavBarItem;
    nviInventoryPriceList: TdxNavBarItem;
    nviRegistreraPaket: TdxNavBarItem;
    nvgAvrakning: TdxNavBarGroup;
    nvgProduktion: TdxNavBarGroup;
    nvgInventering: TdxNavBarGroup;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxNavBar1StyleItem1: TdxNavBarStyleItem;
    nvgUtlastningControl: TdxNavBarGroupControl;
    cxSplitter1: TcxSplitter;
    acLoadPlan: TAction;
    nviLoadPlan: TdxNavBarItem;
    nvgLastplan: TdxNavBarGroup;
    acInvCount: TAction;
    nviInvCount: TdxNavBarItem;
    nvgAO: TdxNavBarGroup;
    nvgMyFavs: TdxNavBarGroup;
    dxBarButton6: TdxBarButton;
    acAnalyzeLoads: TAction;
    nviacAnalyzeLoads: TdxNavBarItem;
    acKilnProps: TAction;
    nviKilnProps: TdxNavBarItem;
    nvgTork: TdxNavBarGroup;
    nviTorkar: TdxNavBarItem;
    nvgLagerControl: TdxNavBarGroupControl;
    acKilnCharges: TAction;
    acSIC: TAction;
    nviSIC: TdxNavBarItem;
    acLagerBalans: TAction;
    nviLagerbalans: TdxNavBarItem;
    acPaRegistrera: TAction;
    nviPaRegistrera: TdxNavBarItem;
    acBytAnvandare: TAction;
    Timer1: TTimer;
    acVardaBortPkt: TAction;
    nvgLagerVard: TdxNavBarGroup;
    nviVardaBortPkt: TdxNavBarItem;
    acAndraPaketVard: TAction;
    nviAndraPaketVard: TdxNavBarItem;
    acHelp: TAction;
    dxBarButton7: TdxBarButton;
    acARLoadsExtCustomer: TAction;
    nviARLoadsExtCustomer: TdxNavBarItem;
    acAccInv: TAction;
    nviAccInv: TdxNavBarItem;
    acAterstallPaketExt: TAction;
    nviAterstallPaketExt: TdxNavBarItem;
    acImportLoads: TAction;
    nviImportLoads: TdxNavBarItem;
    nviProductionStatistics: TdxNavBarItem;
    nviDeliveryStatistics: TdxNavBarItem;
    acProductionStatistics: TAction;
    acDeliveryStatistics: TAction;
    acUserProfile: TAction;
    dxBarButton8: TdxBarButton;
    acStopptimereport: TAction;
    nviStoppTid: TdxNavBarItem;
    acProgressKiln: TAction;
    nviProgressKiln: TdxNavBarItem;
    acChangeLanguage: TAction;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    siLangLinked1: TsiLangLinked;
    procedure FormCreate(Sender: TObject);
    procedure atExitExecute(Sender: TObject);
    procedure atAboutExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure bbMatPunkterVerkClick(Sender: TObject);
    procedure bbBasMatPunkterClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acLagerExecute(Sender: TObject);
    procedure acFragaPaketExecute(Sender: TObject);
    procedure acInventeringExecute(Sender: TObject);
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
    procedure acSICExecute(Sender: TObject);
    procedure acLagerBalansExecute(Sender: TObject);
    procedure acPaRegistreraExecute(Sender: TObject);
    procedure acBytAnvandareExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure acVardaBortPktExecute(Sender: TObject);
    procedure acAndraPaketVardExecute(Sender: TObject);
    procedure acHelpExecute(Sender: TObject);
    procedure acARLoadsExtCustomerExecute(Sender: TObject);
    procedure acAccInvExecute(Sender: TObject);
    procedure acAterstallPaketExtExecute(Sender: TObject);
    procedure acImportLoadsExecute(Sender: TObject);
    procedure acProductionStatisticsExecute(Sender: TObject);
    procedure acDeliveryStatisticsExecute(Sender: TObject);
    procedure acUserProfileExecute(Sender: TObject);
    procedure acStopptimereportExecute(Sender: TObject);
    procedure panelBaseClick(Sender: TObject);
    procedure acProgressKilnExecute(Sender: TObject);
    procedure acChangeLanguageExecute(Sender: TObject);
  private
    a : String ;
    procedure AppException(Sender: TObject; E: Exception);
    procedure CleanUpForms(Sender: TObject);
    function  FormOpen : Boolean ;
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
  dmcVidaSystem,
  dmcVidaOrder, UnitAboutBox,
  UnitPkgInfo, dmsDataConn,
  UnitInventoryReport,

  dmsVidaSystem, 
    uProductionUnit, uBasMatPunkter,

  uPktNrPos, uPkgNoPos, uInvCtrl,
  dm_Inventory,
  uInventeraPIG, uAnalyseraLeveranser , UnitPkgEntry,
  dmsVidaPkg, dmcPkgs, UfelRegPkg, UnitRemovePkg, UnitMovePkgs,
  dmc_UserProps, dmc_DryKiln, uKilnProps, uKilnCharges, uSIC,
  uInvCare, uVardaBortPkt, uchgPkgVard, UnitLoadArrivals,
  uAccInv, uExtAterstall, //uLastListaII,
  uChangeLogins, UProductionReport, uDeliveryReport, uUserProfiles,
  uStopptidReport, fLoadPlan, uKilnHandling, uLagerBalans, udmLanguage,
  ufrmChangeLanguage;



{$R *.DFM}

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

function TfrmMain.FormOpen : Boolean ;
Begin
  Result:= False ;
//  if Assigned(fLagerBalans) then
//   Result:= True ;
  if Assigned(fAnalyseraLeveranser) then
   Result:= True ;
  if Assigned(frmInventoryReport) then
   Result:= True ;
//  if Assigned(frmLoadPlan) then
//   Result:= True ;
End ;

function GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;


//---------------------------------------------------------------------
procedure TfrmMain.FormCreate(Sender: TObject);
begin
// ExceptionNotify := MyNotify; // Assign ExceptionNotify variable to MyNotify procedure.
  Forms.Application.OnException := AppException;
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


//-------------------------------------------------------------
procedure TfrmMain.FormShow(Sender: TObject);
Var LanguageNo  : Integer ;
begin
 dmsConnector.DriveLetter:= 'H:\' ;
 if dmsConnector.DriveLetter = 'C:\' then
  showmessage(siLangLinked1.GetTextOrDefault('Change to H:\'));

ThisUser.Database:= 'carmak-speed\sqlexpress:woodsupport' ;

{$IFDEF DEBUG}
  if (Pos('CARMAK',GetEnvironmentVariable('COMPUTERNAME')) > 0) then begin
    dmsConnector.DriveLetter := 'C:\';
    ThisUser.Database:= 'carmak-speed\sqlexpress:woodsupport' ;
      with dmsConnector.FDConnection1 do begin
        Params.Clear;
        Params.Add('carmak-speed\sqlexpress:woodsupport') ;
        Params.Add('Server=carmak-speed\sqlexpress');
        Params.Add('Database=woodsupport');
        Params.Add('OSAuthent=No');
        Params.add('MetaDefCatalog=woodsupport');
        Params.Add('MetaDefSchema=dbo');
        Params.Add('User_Name=sa');
        Params.Add('Password=woods2011');
        Params.Add('DriverID=MSSQL');
        Params.Add('ApplicationName=VIS_LAGER');
      end;
  end
  else begin
    ThisUser.Database:= 'VPS-NET-RDS-004\WOODSUPPORT:woodsupport' ;
  end;
{$ELSE}
  ThisUser.Database:= 'VPS-NET-RDS-004\WOODSUPPORT:woodsupport' ;
{$ENDIF}


 dmsConnector.Org_DB_Name:= ThisUser.HostName + ':' + ThisUser.Database ;
   if not ThisUser.Logon then
    Close
     else
      if dmsConnector.FDConnection1.Connected then
      Begin
       Caption  := Forms.Application.Title + '/' + dmsConnector.GetCompanyName (ThisUser.CompanyNo) +'/' + ThisUser.UserName +' ver '+GetVersion
       + ' - ' + dmsConnector.FDConnection1.Params.Values['Server']
       + '/' + dmsConnector.FDConnection1.Params.Values['Database'] + ' ' ;

       dm_UserProps:= Tdm_UserProps.Create(nil);
       dmcSystem.OpenUserProfile ;
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

  LanguageNo  :=  dmsSystem.GetLanguageNo ;
  if LanguageNo > -1 then
  Begin
   dmLanguage.siLangDispatcher1.ActiveLanguage := LanguageNo ;
   dmLanguage.siLangDispatcher1.LoadAllFromFile(dmLanguage.siLangDispatcher1.FileName);
  End;

end;



procedure TfrmMain.panelBaseClick(Sender: TObject);
begin

end;

//Sparas centralt
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
 if dmsSystem.MemoInAction then
 exit
 else
 if Key = #13 then begin
    Key := #0;
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

{ if Assigned(frmLoadPlan) then
 Begin
  frmLoadPlan.Close ;
  if Assigned(frmLoadPlan) then
  FreeAndNil(frmLoadPlan) ;
 End ;
 }


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


procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Try
 With dmsSystem do
 Begin
  Try
  if dmsConnector.FDConnection1.Connected then
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
//    frmInventoryReport.ManualDock(frmMain.panelBase, nil, alBottom) ;
     frmInventoryReport.Parent := panelBase;
     frmInventoryReport.Show;
     if frmInventoryReport.ccbAT.Visible then
      frmInventoryReport.ccbAT.SetFocus
       else
        frmInventoryReport.eAT.SetFocus ;
//    Application.ProcessMessages ;
//    frmInventoryReport.Height := frmInventoryReport.Height - 2 ;
    End
    else
    begin
     frmInventoryReport.Parent := panelBase;
     frmInventoryReport.Show;
//     if frmInventoryReport.ccbAT.Visible then
//      frmInventoryReport.ccbAT.SetFocus
//       else
//        frmInventoryReport.eAT.SetFocus ;
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


procedure TfrmMain.acInventeringExecute(Sender: TObject);
//var fInvCtrl: TfInvCtrl;
Begin
(* if ThisUser.CanView[dcInventorySection] then
 Try
  fInvCtrl := TfInvCtrl.Create(NIL) ;
  fInvCtrl.ShowModal ;
 Finally
  FreeAndNil(fInvCtrl) ;
 End ; *)


if ThisUser.CanView[dcInventorySection] then
 Begin
 if not Assigned(fInvCtrl) then
  Begin
   fInvCtrl := TfInvCtrl.Create(Nil) ;
   fInvCtrl.Parent := panelBase;
   fInvCtrl.Show;
//   fInvCtrl.Edit1.SetFocus ;
  End
  else
    begin
     fInvCtrl.Parent := panelBase;
     fInvCtrl.Show;
//     fInvCtrl.Edit1.SetFocus ;
    end ;
 End ;
End ;


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
 if (ThisUser.CompanyNo = 132) or (ThisUser.CompanyNo = 741)
 or (thisuser.UserName = 'Lars') then
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
     fAnalyseraLeveranser.bToday.SetFocus ;
//     fAnalyseraLeveranser.grdActThick.SetFocus ;
    End
    else
    begin
     fAnalyseraLeveranser.Parent := panelBase;
     fAnalyseraLeveranser.Show;
     fAnalyseraLeveranser.bToday.SetFocus ;     
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
   frmMovePkgs.CreateCo (True) ;
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

procedure TfrmMain.acSICExecute(Sender: TObject);
var fSIC: TfSIC ;
begin
// if not Assigned(fInvCtrl) then
// Begin
  fSIC:= TfSIC.Create(nil) ;
  try
   fSIC.ShowModal ;
  finally
   FreeAndNil(fSIC) ;
  end;
// end  else showmessage('Var vänlig och stäng inventeringsformuläret först.'); 
end;

procedure TfrmMain.acStopptimereportExecute(Sender: TObject);
begin
  if ThisUser.CanView[dcInventorySection] then
  Begin
  if (not Assigned(fStopptidReport) )  then
    Begin
     fStopptidReport  := TfStopptidReport.Create(nil);
     fStopptidReport.CreateCo( Sender, ThisUser.CompanyNo);
     fStopptidReport.Parent := panelBase;
     fStopptidReport.Show;
//     fStopptidReport.lcPIPNAME.SetFocus ;
    End
    else
    begin
     fStopptidReport.Parent := panelBase;
     fStopptidReport.Show;
//     fStopptidReport.lcPIPNAME.SetFocus ;
    End ;
  End ;
end;

procedure TfrmMain.acUserProfileExecute(Sender: TObject);
var fUserProfiles: TfUserProfiles;
begin
 fUserProfiles  := TfUserProfiles.Create(nil);
 Try
  fUserProfiles.ShowModal ;
 Finally
  FreeAndNil(fUserProfiles) ;
 End;
end;

procedure TfrmMain.acLagerBalansExecute(Sender: TObject);
begin

  if ThisUser.CanView[dcInventorySection] then
  Begin
  if (not Assigned(fLagerBalans) )  then
  Begin
     fLagerBalans := TfLagerBalans.Create(Nil) ;
//     fLagerBalans.CreateCo( Sender,ThisUser.CompanyNo);
     fLagerBalans.Parent := panelBase;
     fLagerBalans.Show;
//     fLagerBalans.ccbAT.SetFocus ;
    End
    else
    begin
     fLagerBalans.Parent := panelBase;
     fLagerBalans.Show;
//     fLagerBalans.ccbAT.SetFocus ;
  End ;
  End ;

end;

procedure TfrmMain.acPaRegistreraExecute(Sender: TObject);
var fuInvCare: TfuInvCare;
begin
 fuInvCare:= TfuInvCare.Create(nil);
 try
  fuInvCare.ShowModal ;
 finally
  FreeAndNil(fuInvCare) ;
 end;
end;

procedure TfrmMain.acProductionStatisticsExecute(Sender: TObject);
begin
  if ThisUser.CanView[dcInventorySection] then
  Begin
  if (not  Assigned(fProductionReport) )  then
  Begin
     fProductionReport := TfProductionReport.Create(Nil) ;
     fProductionReport.CreateCo( Sender,ThisUser.CompanyNo);
//    frmInventoryReport.ManualDock(frmMain.panelBase, nil, alBottom) ;
     fProductionReport.Parent := panelBase;
     fProductionReport.Show;
     if fProductionReport.ccbAT.Visible then
      fProductionReport.ccbAT.SetFocus
       else
        fProductionReport.eAT.SetFocus ;
//    Application.ProcessMessages ;
//    frmInventoryReport.Height := frmInventoryReport.Height - 2 ;
    End
    else
    begin
     fProductionReport.Parent := panelBase;
     fProductionReport.Show;
//     if frmInventoryReport.ccbAT.Visible then
//      frmInventoryReport.ccbAT.SetFocus
//       else
//        frmInventoryReport.eAT.SetFocus ;
  End ;
  End ;

end;

procedure TfrmMain.acProgressKilnExecute(Sender: TObject);
begin
if ThisUser.CanView[dcInventorySection] then
 Begin
 if not Assigned(fkilnHandling) then
  Begin
   fkilnHandling        := TfkilnHandling.Create(Nil) ;
   fkilnHandling.CreateCo( Sender,ThisUser.CompanyNo);
   fkilnHandling.Parent := panelBase;
   fkilnHandling.Show;
//   fkilnHandling.Edit1.SetFocus ;
  End
  else
    begin
     fkilnHandling.Parent := panelBase;
     fkilnHandling.Show;
//     fInvCtrl.Edit1.SetFocus ;
    end ;
 End ;
end;

procedure TfrmMain.acBytAnvandareExecute(Sender: TObject);
var OKHelpBottomDlg: TOKHelpBottomDlg;
begin
 if (Trim(dmsConnector.Get_AD_Name) = 'VIDA\larmak')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\annjoh')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\ulalun')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\ulrlun')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\ronand')

 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\torgus')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\matsjo')

 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\admin')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\johlis')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\jenjoh')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\krikuh')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\marhug')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\annjon')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\jencar')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\madjoh')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\chrdro')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\kritom')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\claarv')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\lidgus')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\joshel')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\carhol')
 or (Trim(dmsConnector.Get_AD_Name) = 'Lars')
 or (Trim(dmsConnector.Get_AD_Name) = 'sa')
 or (Trim(dmsConnector.Get_AD_Name) = 'vida\adminlarmak')
 or (Trim(dmsConnector.Get_AD_Name) = 'adminlarmak')
 then
 Begin
 if FormOpen then
 Begin
  ShowMessage(siLangLinked1.GetTextOrDefault('IDS_25' (* 'Stäng alla formulär först!' *) ));
  Exit ;
 End ;
 OKHelpBottomDlg:= TOKHelpBottomDlg.Create(nil);
 try
 if OKHelpBottomDlg.ShowModal = mrOK then
 Begin

  dmsConnector.FDConnection1.Connected:= False ;
  if Length(OKHelpBottomDlg.EFD_Name.Text) > 0 then
  ThisUser.DBUserName:= OKHelpBottomDlg.EFD_Name.Text ;
  if Length(OKHelpBottomDlg.cbDatabas.Text) > 0 then
  ThisUser.Database:= OKHelpBottomDlg.cbDatabas.Text ;

   if not ThisUser.Logon then
    Close
     else
      if dmsConnector.FDConnection1.Connected then
      Begin
       if ((dmsConnector.Get_AD_Name <> OKHelpBottomDlg.EFD_Name.Text) and (Length(OKHelpBottomDlg.EFD_Name.Text) > 0) )
       or ((OKHelpBottomDlg.cbDatabas.Text <> dmsConnector.Org_DB_Name) and (Length(OKHelpBottomDlg.cbDatabas.Text) > 0)) then
       Begin
        Timer1.Enabled:= True ;
        dmsConnector.LoginChanged:= True ;
        dxNavBar1.DefaultStyles.Background.BackColor:= clGreen ;
        Forms.Application.Title:= 'VIS_LAGER' ;
        a:= Forms.Application.Title+'/'+dmsConnector.GetCompanyName (ThisUser.CompanyNo) +'/' + ThisUser.UserName +' ver '+GetVersion
        +' - '+dmsConnector.FDConnection1.Params.Values['Server']
        +'/'+dmsConnector.FDConnection1.Params.Values['Database']+' ' ;
         dmcSystem.OpenUserProfile ;
       End
       else
       Begin
        dmsConnector.LoginChanged:= False ;
        Timer1.Enabled:= False ;
        dxNavBar1.DefaultStyles.Background.BackColor:= clWhite ;
        Forms.Application.Title:= 'VIS_LAGER' ;
        frmMain.Caption:= Forms.Application.Title+'/'+dmsConnector.GetCompanyName (ThisUser.CompanyNo) +'/' + ThisUser.UserName +' ver '+GetVersion
        +' - '+dmsConnector.FDConnection1.Params.Values['Server']
        +'/'+dmsConnector.FDConnection1.Params.Values['Database']+' ' ;
         dmcSystem.OpenUserProfile ;
       End ;

      End
      else
      Begin
       Close ;
      End ;
 End ;

 finally
  FreeAndNil(OKHelpBottomDlg) ;
 end;
 End
  else
   ShowMessage(siLangLinked1.GetTextOrDefault('IDS_34' (* 'No access' *) ));
end;

procedure TfrmMain.acChangeLanguageExecute(Sender: TObject);
var
  frm: TfrmChangeLanguage;
begin
  try
    frm := TfrmChangeLanguage.Create(nil);
    if (frm <> nil) then
    begin
      if (frm.ShowModal = mrOk) then
      Begin
        dmLanguage.siLangDispatcher1.LoadAllFromFile(dmLanguage.siLangDispatcher1.FileName);
        dmsSystem.SaveLanguage(dmLanguage.siLangDispatcher1.ActiveLanguage) ;
      End;
    end;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TfrmMain.acDeliveryStatisticsExecute(Sender: TObject);
begin
  if ThisUser.CanView[dcInventorySection] then
  Begin
  if (not  Assigned(fDeliveryReport) )  then
  Begin
     fDeliveryReport := TfDeliveryReport.Create(Nil) ;
     fDeliveryReport.CreateCo( Sender,ThisUser.CompanyNo);
//    frmInventoryReport.ManualDock(frmMain.panelBase, nil, alBottom) ;
     fDeliveryReport.Parent := panelBase;
     fDeliveryReport.Show;
     if fDeliveryReport.ccbAT.Visible then
      fDeliveryReport.ccbAT.SetFocus
       else
        fDeliveryReport.eAT.SetFocus ;
//    Application.ProcessMessages ;
//    frmInventoryReport.Height := frmInventoryReport.Height - 2 ;
    End
    else
    begin
     fDeliveryReport.Parent := panelBase;
     fDeliveryReport.Show;
//     if frmInventoryReport.ccbAT.Visible then
//      frmInventoryReport.ccbAT.SetFocus
//       else
//        frmInventoryReport.eAT.SetFocus ;
  End ;
  End ;

end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
var
  i: Integer;
begin
  Forms.Application.Title   := a;
  frmMain.Caption     := a;
  for i := 1 to (Length(a) - 1) do
    a[i] := Forms.Application.Title[i + 1];
  a[Length(a)] := Forms.Application.Title[1];
end;

procedure TfrmMain.acVardaBortPktExecute(Sender: TObject);
//var fVardaBortPkt: TfVardaBortPkt;
begin
 if ThisUser.CanView[dcAdd_packagesSec] then
 Begin
  fVardaBortPkt:= TfVardaBortPkt.Create(Nil);
  Try
   fVardaBortPkt.CreateCo ;
   fVardaBortPkt.ShowModal ;
  Finally
   FreeAndNil(fVardaBortPkt) ;
  End ;
 End ;
end;

procedure TfrmMain.acAndraPaketVardExecute(Sender: TObject);
var  fchgPkgVard: TfchgPkgVard;
begin
 fchgPkgVard:= TfchgPkgVard.Create(nil) ;
 try
  fchgPkgVard.ShowModal ;
 finally
  FreeAndNil(fchgPkgVard) ;
 end;
end;

procedure TfrmMain.acHelpExecute(Sender: TObject);
begin
   //helprouter1.HelpContent;
end;

procedure TfrmMain.acARLoadsExtCustomerExecute(Sender: TObject);
begin
  if ThisUser.CanView[dcInventorySection] then
  Begin
  if (not Assigned(frmLoadArrivals) )  then
    Begin
     frmLoadArrivals := TfrmLoadArrivals.Create(Nil) ;
     frmLoadArrivals.CreateCo(  ThisUser.CompanyNo);
     frmLoadArrivals.Parent := panelBase;
     frmLoadArrivals.Show;
     frmLoadArrivals.lcPIPNAME.SetFocus ;
    End
    else
    begin
     frmLoadArrivals.Parent := panelBase;
     frmLoadArrivals.Show;
     frmLoadArrivals.lcPIPNAME.SetFocus ;
    End ;
  End ;
end;

//fAccInv: TfAccInv;
procedure TfrmMain.acAccInvExecute(Sender: TObject);
begin
 if (ThisUser.CompanyNo = 741) then
 Begin
 if not Assigned(fAccInv) then
  Begin
   fAccInv := TfAccInv.Create(Nil) ;
   fAccInv.Parent := panelBase;
   fAccInv.Show;
//   fAccInv.Edit1.SetFocus ;
  End
  else
    begin
     fAccInv.Parent := panelBase;
     fAccInv.Show;
//     fAccInv.Edit1.SetFocus ;
    end ;
 End ;
end;

procedure TfrmMain.acAterstallPaketExtExecute(Sender: TObject);
var fExtAterstall: TfExtAterstall;
begin
 if (ThisUser.CompanyNo = cVidaPackaging)
 or (ThisUser.CompanyNo = cOsterlovsta)
 or (ThisUser.UserID = 8) then
 Begin
  fExtAterstall:= TfExtAterstall.Create(nil) ;
  try
   fExtAterstall.ShowModal ;
  finally
   FreeAndNil(fExtAterstall) ;
  end;
 End
 else
 ShowMessage(siLangLinked1.GetTextOrDefault('IDS_35' (* 'Behörighet saknas.' *) )) ;
end;

procedure TfrmMain.acImportLoadsExecute(Sender: TObject);
//var fLastListaII: TfLastListaII;
begin
{
 if (ThisUser.CompanyNo = cVidaPackaging)
 or (ThisUser.CompanyNo = cOsterlovsta)
 or (ThisUser.UserID = 8) then
 Begin
 if not Assigned(fLastListaII) then
  Begin
   fLastListaII := TfLastListaII.Create(Nil) ;
   fLastListaII.Parent := panelBase;
   fLastListaII.Show;
//   fLastListaII.Edit1.SetFocus ;
  End
  else
    begin
     fLastListaII.Parent := panelBase;
     fLastListaII.Show;
//     fLastListaII.Edit1.SetFocus ;
    end ;
 End ;
 }
end;

end.
