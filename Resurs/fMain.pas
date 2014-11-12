unit fMain;

interface

uses
  fAvrop,
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
  dxCntner, cxShellBrowserDialog, cxPropertiesStore ;




type
  TfrmMain = class(TForm)
    ActionList1: TActionList;
    atDataCountry: TAction;
    atDeliveryTerm: TAction;
    atPaymentTerm: TAction;
    atCurrency: TAction;
    atPackUnit: TAction;
    atUnitName: TAction;
    atExit: TAction;
    atPackageCode: TAction;
    atAbout: TAction;
    atMarketRegion: TAction;
    atStatisticalCode: TAction;
    atLanguage: TAction;
    dxSideBar1: TdxSideBar;
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
    cxPropertiesStore1: TcxPropertiesStore;
    acPortArrivals: TAction;
    acBytAnvandare: TAction;
    Timer1: TTimer;
    acAttestLegoRun: TAction;
    procedure FormCreate(Sender: TObject);
    procedure dxSideBar1ItemClick(Sender: TObject; Item: TdxSideBarItem);
    procedure atExitExecute(Sender: TObject);
    procedure atAboutExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure bbPkgInfoClick(Sender: TObject);
    procedure bbAddPackageClick(Sender: TObject);
    procedure acUserPreferenceExecute(Sender: TObject);
    procedure bbCurrencyClick(Sender: TObject);
    procedure bbGeneralShippingCostClick(Sender: TObject);
    procedure bbMatPunkterVerkClick(Sender: TObject);
    procedure bbBasMatPunkterClick(Sender: TObject);
    procedure bbMainGradeClick(Sender: TObject);
    procedure bbPkgNoSerieClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bbPktNrPositionerClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acBytAnvandareExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    a : String ;
    function  FormOpen : Boolean ;
    procedure AppException(Sender: TObject; E: Exception);
    procedure PaketInmatningPerPktKod (Sender: TObject);
    procedure CleanUpForms(Sender: TObject);
    procedure GetIniFileMap(Sender: TObject) ;
    procedure CheckMappar ;
    procedure CheckDrive ;
    procedure GetPropIniStores(Sender: TObject) ;
    Procedure InitOnStartOfProgram ;
  public
  end;

var
  FrmMain: TfrmMain;



implementation

uses
  Dialogs,


  VidaConst,
  VidaType,
  VidaUser,  fInvoiceList, 
  dmcVidaSystem, UnitSetup, UnitCRViewReport,
  dmLM1, UnitShippingInstruction, UnitKP_List, UnitMaintenance,
  fLoadOrder, dmcVidaOrder, UnitAboutBox,
  UnitLoadArrivals, UnitPkgInfo, dmsDataConn,
  UnitInventoryReport,
  UnitSokAvropFormular,
  UnitAvrakningar, dmsVidaProduct, UnitPkgEntry, dmsVidaPkg, UnitChangePkg,
  UnitRemovePkg, dmsVidaSystem, uFreightLoad, uUserPreference, Ucurrency,
  uPkgLog, UnitCRPrintReport, UnitProdRep, uGenShipCost, uProductionUnit, uBasMatPunkter,
  UfelRegPkg, UMovePkg, UnotInvoicedReport, uPkgNoSeries,
  uSamlingsfaktura, uLastLista,
  uPktNrPos, uPkgNoPos, UnitPkgsByPktType, UExtMovePkg,
  dm_Inventory, uEncode , fAvrakningar, fSkapaAvrakning,
  UPortArrivals, uChangeLogins , uChkAvrLoads, dmc_UserProps,
  uAttestLegoRun, fRunAttester, fSkapaRunAttest, uLegoCost,
  uFreightExternLoad;



{$R *.DFM}

function TfrmMain.FormOpen : Boolean ;
Begin
  Result:= False ;
  if Assigned(fLastLista) then
   Result:= True ;
  if Assigned(fnotInvoicedReport) then
   Result:= True ;
  if Assigned(frmAvrakningar) then
   Result:= True ;
  if Assigned(frmGjordaAvrakningar) then
   Result:= True ;
  if Assigned(frmLoadArrivals) then
   Result:= True ;

  if Assigned(fChkAvrLoads) then
   Result:= True ;

//  if Assigned(frmPayment) then
//   Result:= True ;
  if Assigned(frmFreightLoad) then
   Result:= True ;
  if Assigned(fSamlingsfaktura) then
   Result:= True ;
  if Assigned(frmInvoiceList) then
   Result:= True ;
  if Assigned(frmAvrop) then
   Result:= True ;
  if Assigned(frmProdRep) then
   Result:= True ;
  if Assigned(frmInventoryReport) then
   Result:= True ;
//  if Assigned(frmCreatePayment) then
//   Result:= True ;

  if Assigned(frmSkapaAvrakning) then
   Result:= True ;
  if Assigned(frmSokAvropFormular) then
   Result:= True ;
  if Assigned(frmLoadOrder) then
   Result:= True ;

  if Assigned(frmPortArrivals) then
   Result:= True ;
  if Assigned(frmKP_List) then
   Result:= True ;
  if Assigned(frmShippingInstruction) then
   Result:= True ;

  if Assigned(frmShippingInstruction) then
   Result:= True ;

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
 IncludeTrailingBackslash(dmsConnector.DriveLetter) ;
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


//--------------------------------------------------------------------
procedure TfrmMain.dxSideBar1ItemClick(Sender: TObject; Item: TdxSideBarItem);
Var fChangePkg : TfChangePkg ;
    ffelRegPkg: TffelRegPkg;
    fMovePkg: TfMovePkg;
    fExtMovePkg: TfExtMovePkg;
    fPkgLog: TfPkgLog ;
begin

  case Item.Tag of

  const_PaketInmatningPerPaketKod :
  PaketInmatningPerPktKod (Sender) ;

  const_VerkLaster :
  if ThisUser.CanView[dcUtlastningSec] then
  Begin
  if  not  Assigned(fLastLista) then
  Begin
     fLastLista := TfLastLista.Create(Nil) ;
     fLastLista.CreateCo ;
     fLastLista.Parent := panelBase;
     fLastLista.Show;
    End
    else
    begin
     fLastLista.Parent := panelBase;
     fLastLista.Show;
  End ;
  End ;

  const_EjFaktureratRapport :
  if ThisUser.CanView[dcFakturaSec] then
  Begin
  if not Assigned(fnotInvoicedReport) then
  Begin
     fnotInvoicedReport := TfnotInvoicedReport.Create(Nil) ;
     fnotInvoicedReport.CreateCo( Sender,ThisUser.CompanyNo);
     fnotInvoicedReport.Parent := panelBase;
     fnotInvoicedReport.Show;
     fnotInvoicedReport.de_TOM.Setfocus ;
    End
    else
    Begin
     fnotInvoicedReport.Parent := panelBase;
     fnotInvoicedReport.Show;
     fnotInvoicedReport.de_TOM.Setfocus ;
    End ;
  End ;

  const_INVENTORY_REPORT :
  if ThisUser.CanView[dcInventorySection] then
  Begin
  if (not  Assigned(frmInventoryReport) )  then
  Begin
     frmInventoryReport := TfrmInventoryReport.Create(Nil) ;
     frmInventoryReport.CreateCo( Sender,ThisUser.CompanyNo);
     frmInventoryReport.Parent := panelBase;
     frmInventoryReport.Show;
     frmInventoryReport.grdActThick.SetFocus ;
    End
    else
    begin
     frmInventoryReport.Parent := panelBase;
     frmInventoryReport.Show;
     frmInventoryReport.grdActThick.SetFocus ;
  End ;
  End ;

  const_ProductionReport :
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

  const_samlingsfaktura :
  if ThisUser.CanView[dcFakturaSec] then
  Begin
  if not Assigned(fSamlingsfaktura) then
  Begin
   fSamlingsfaktura := TfSamlingsfaktura.Create(Nil) ;
   fSamlingsfaktura.Parent := panelBase;
   fSamlingsfaktura.Show;
   fSamlingsfaktura.grdSamlingsFaktura.Setfocus ;
  End
   else
    begin
     fSamlingsfaktura.Parent := panelBase;
     fSamlingsfaktura.Show;
     fSamlingsfaktura.grdSamlingsFaktura.Setfocus ;
    End ;
  End ;

  const_SOKAVROP :
  if ThisUser.CanView[dcAvropSec] then
  Begin
  if not Assigned(frmSokAvropFormular) then
  Begin
   frmSokAvropFormular := TfrmSokAvropFormular.Create(Nil) ;
   frmSokAvropFormular.CreateCo( Sender,ThisUser.CompanyNo);
   frmSokAvropFormular.Parent := panelBase;
   frmSokAvropFormular.Show;
   frmSokAvropFormular.cbFR.SetFocus ;
  End
   else
    begin
     frmSokAvropFormular.Parent := panelBase;
     frmSokAvropFormular.Show;
     frmSokAvropFormular.cbFR.SetFocus ;
  End ;
  End ;


 const_ShipMill_Delivery           :  //if ThisUser.CanView[dcOrderSection] then
 if ThisUser.CanView[dcUtlastningSec] then
 Begin
 if not Assigned(frmLoadOrder) then
  Begin
   frmLoadOrder := TfrmLoadOrder.Create(Nil) ;
   frmLoadOrder.CreateCo( Sender,ThisUser.CompanyNo);
   frmLoadOrder.Parent := panelBase;
   frmLoadOrder.Show;
   frmLoadOrder.teSearchLONo.SetFocus ;
  End
  else
    begin
     frmLoadOrder.Parent := panelBase;
     frmLoadOrder.Show;
     frmLoadOrder.teSearchLONo.SetFocus ;
    end ;
 End ;


  const_ShipMill_Freight_Avrakningar :
 if (ThisUser.CanView[dcFrakt_AvrakningSec]) or (ThisUser.UserID = 37) then
  Begin
   if not Assigned(frmAvrakningar) then
    Begin
     frmAvrakningar := TfrmAvrakningar.Create(Nil) ;
     frmAvrakningar.Align:= alClient ;
     frmAvrakningar.BorderStyle:= bsNone ;
     frmAvrakningar.ButtonPanel.Visible:= False ;
     frmAvrakningar.CreateCo(  ThisUser.CompanyNo);

     frmAvrakningar.Parent := panelBase;
     frmAvrakningar.Show;
     frmAvrakningar.grdFraktAvr.SetFocus ;
    End
    else
    begin
     frmAvrakningar.Parent := panelBase;
     frmAvrakningar.Show;
     frmAvrakningar.grdFraktAvr.SetFocus ;     
    end ;
  End ;

  const_ShipVW_Delivery             : //17
  if ThisUser.CanView[dcAvropSec] then
  Begin
  if not Assigned(frmAvrop) then
   Begin
    frmAvrop :=  TfrmAvrop.Create(Nil) ;
    frmAvrop.CreateCo(ThisUser.CompanyNo);
    frmAvrop.Parent := panelBase;
    frmAvrop.Show;
    frmAvrop.eSearchLONr.SetFocus ;
   End
   else
   begin
    frmAvrop.Parent := panelBase;
    frmAvrop.Show;
    frmAvrop.eSearchLONr.SetFocus ;
   end ;
  End ;

  const_ShipVW_AnkomstRegistrering : //20
  if ThisUser.CanView[dcARSec] then
  Begin
   if not Assigned(frmLoadArrivals) then
    Begin
     frmLoadArrivals := TfrmLoadArrivals.Create(Nil) ;
     frmLoadArrivals.CreateCo(  ThisUser.CompanyNo);
     frmLoadArrivals.Parent := panelBase;
     frmLoadArrivals.Show;
     frmLoadArrivals.Edit1.Setfocus ;
    End
    else
    begin
     frmLoadArrivals.Parent := panelBase;
     frmLoadArrivals.Show;
     frmLoadArrivals.Edit1.Setfocus ;     
    end ;

  End ;

  const_CheckLoadsAreReadyForAvrakning : //57
//  if ThisUser.CanView[dcARSec] then
  if (Trim(dmsConnector.Get_AD_Name) = 'VIDA\micmor') or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\larmak')
  or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\admin')
  or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\jenjoh')
  or (Trim(dmsConnector.Get_AD_Name) = 'sa') then
  Begin
   if not Assigned(fChkAvrLoads) then
    Begin
     fChkAvrLoads := TfChkAvrLoads.Create(Nil) ;
     fChkAvrLoads.CreateCo(  ThisUser.CompanyNo);
     fChkAvrLoads.Parent := panelBase;
     fChkAvrLoads.Show;
    End
    else
    begin
     fChkAvrLoads.Parent := panelBase;
     fChkAvrLoads.Show;
    end ;
  End ;

 const_KP_LIST               :          //35
  if ThisUser.CanView[dcKP_ListaSec] then
  Begin
   if not Assigned(frmKP_List) then
    Begin
     frmKP_List := TfrmKP_List.Create(Nil) ;
     frmKP_List.CreateCo(  ThisUser.CompanyNo);
     frmKP_List.Parent := panelBase;
     frmKP_List.Show;
     frmKP_List.cbClients.Setfocus ;
    End
    else
    begin
     frmKP_List.Parent := panelBase;
     frmKP_List.Show;
     frmKP_List.cbClients.Setfocus ;
    end ;
   End ;

  const_Shipping_Instruction       :         //34
  if ThisUser.CanView[dcSkeppInstrSec] then
  Begin
   if not Assigned(frmShippingInstruction) then
    Begin
     frmShippingInstruction := TfrmShippingInstruction.Create(Nil) ;
     frmShippingInstruction.CreateCo(  ThisUser.CompanyNo);
     frmShippingInstruction.Parent := panelBase;
     frmShippingInstruction.Show;
     frmShippingInstruction.StartDate.Setfocus ;
    End
    else
    begin
     frmShippingInstruction.Parent := panelBase;
     frmShippingInstruction.Show;
     frmShippingInstruction.StartDate.Setfocus ;
    end ;
   End ;

  const_Invoice_VWInvoice           :
  if ThisUser.CanView[dcFakturaSec] then
  Begin
  if not Assigned(frmInvoiceList) then
  Begin
    frmInvoiceList        := TfrmInvoiceList.Create(Nil) ;
    frmInvoiceList.Parent := panelBase ;
    frmInvoiceList.Show ;
    frmInvoiceList.nfSearchLO.SetFocus ;
  End
  else
   begin
    frmInvoiceList.Parent := panelBase ;
    frmInvoiceList.Show ;
    frmInvoiceList.nfSearchLO.SetFocus ;
   end ;
  End ;

(*  const_Invoice_CreatePayment       :       {22}
  if ThisUser.CanView[dcAvrakningSec] then
  Begin
  if not Assigned(frmCreatePayment) then
   Begin
    frmCreatePayment:= TfrmCreatePayment.Create(Nil);
    frmCreatePayment.CreateCo(ThisUser.CompanyNo, 0 {Avrakning});
    frmCreatePayment.Parent:= panelBase ;
    frmCreatePayment.Show ;
   End
   else
   begin
    frmCreatePayment.Parent := panelBase;
    frmCreatePayment.Show;
   end ;
  End ; *)


  const_SkapaAvrakning       :
  if ThisUser.CanView[dcAvrakningSec] then
  Begin
  if not Assigned(frmSkapaAvrakning) then
   Begin
    frmSkapaAvrakning:= TfrmSkapaAvrakning.Create(Nil);
    frmSkapaAvrakning.CreateCo(ThisUser.CompanyNo, 0 {Avrakning});
    frmSkapaAvrakning.Parent:= panelBase ;
    frmSkapaAvrakning.Show ;
    frmSkapaAvrakning.bcCompany.Setfocus ;
   End
   else
   begin
    frmSkapaAvrakning.Parent := panelBase;
    frmSkapaAvrakning.Show;
    frmSkapaAvrakning.bcCompany.Setfocus ;    
   end ;
  End ;

  const_GjordaAvrakningar :
  if ThisUser.CanView[dcAvrakningSec] then
  Begin
  if not Assigned(frmGjordaAvrakningar) then
   Begin
    frmGjordaAvrakningar:= TfrmGjordaAvrakningar.Create(Nil);
    frmGjordaAvrakningar.CreateCo( ThisUser.CompanyNo, 0 {Avrakning});
    frmGjordaAvrakningar.Parent:= panelBase ;
    frmGjordaAvrakningar.Show ;
    frmGjordaAvrakningar.bcCompany.Setfocus ;
   End
   else
   begin
    frmGjordaAvrakningar.Parent := panelBase;
    frmGjordaAvrakningar.Show;
    frmGjordaAvrakningar.bcCompany.Setfocus ;    
   end ;
  End ;



  const_SkapaRunAttest       :
  if ThisUser.CanView[dcAvrakningSec] then
  Begin
  if not Assigned(frmSkapaRunAttest) then
   Begin
    frmSkapaRunAttest:= TfrmSkapaRunAttest.Create(Nil);
    frmSkapaRunAttest.CreateCo(ThisUser.CompanyNo);
    frmSkapaRunAttest.Parent:= panelBase ;
    frmSkapaRunAttest.Show ;
   End
   else
   begin
    frmSkapaRunAttest.Parent := panelBase;
    frmSkapaRunAttest.Show;
   end ;
  End ;


  const_RunAttester :
  if ThisUser.CanView[dcAvrakningSec] then
  Begin
  if not Assigned(frmRunAttester) then
   Begin
    frmRunAttester:= TfrmRunAttester.Create(Nil);
    frmRunAttester.CreateCo(ThisUser.CompanyNo);
    frmRunAttester.Parent:= panelBase ;
    frmRunAttester.Show ;
   End
   else
   begin
    frmRunAttester.Parent := panelBase;
    frmRunAttester.Show;
   end ;
  End ;

(*  const_Invoice_Payments            :
  if ThisUser.CanView[dcAvrakningSec] then
  Begin
  if not Assigned(frmPayment) then
   Begin
    frmPayment:= TfrmPayment.Create(Nil);
    frmPayment.CreateCo( ThisUser.CompanyNo, 0 {Avrakning});
    frmPayment.Parent:= panelBase ;
    frmPayment.Show ;
   End
   else
   begin
    frmPayment.Parent := panelBase;
    frmPayment.Show;
   end ;
  End ; *)

  const_Add_package                 :
  if ThisUser.CanView[dcAdd_packagesSec] then
   bbAddPackageClick(Sender) ;

  const_Ask_package                 :
  if ThisUser.CanView[dcAsk_packagesSec] then
   bbPkgInfoClick(Sender) ;


  const_Change_Package :
  if ThisUser.CanView[dcAdd_packagesSec] then
  Begin
     fChangePkg := TfChangePkg.Create(Nil) ;
     Try
     fChangePkg.CreateCo ;
     fChangePkg.ShowModal;
     Finally
      FreeAndNil(fChangePkg) ;
     End ;
  End ;


  const_ChangeFelRegPkg :
  if ThisUser.CanView[dcAdd_packagesSec] then
  Begin
     ffelRegPkg := TffelRegPkg.Create(Nil) ;
     Try
     ffelRegPkg.CreateCo ;
     ffelRegPkg.ShowModal;
     Finally
      FreeAndNil(ffelRegPkg) ;
     End ;
  End ;

  const_FlyttaPaket                  :
  if ThisUser.CanView[dcAdd_packagesSec] then
  Begin
     fMovePkg := TfMovePkg.Create(Nil) ;
     Try
     fMovePkg.CreateCo ;
     fMovePkg.ShowModal;
     Finally
      FreeAndNil(fMovePkg) ;
     End ;
  End ;



  const_LegoPrislista                  :
  if ThisUser.CanView[dcAdd_packagesSec] then
  Begin
   TfLegoCost.Execute ;
  End ;


  const_ExtMovePkg                 :
  if (ThisUser.CanView[dcAdd_packagesSec])
  and ((ThisUser.CompanyNo = 2878) or (ThisUser.CompanyNo = 172)) then
  Begin
     fExtMovePkg := TfExtMovePkg.Create(Nil) ;
     Try
     fExtMovePkg.CreateCo ;
     fExtMovePkg.ShowModal;
     Finally
      FreeAndNil(fExtMovePkg) ;
     End ;
  End
  else
  ShowMessage('Behörighet saknas') ;

  const_Remove_Package :
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

  const_PkgLog :
  if ThisUser.CanView[dcAdd_packagesSec] then
  Begin
   fPkgLog:= TfPkgLog.Create(Nil);
   Try
   fPkgLog.ShowModal ;
   Finally
    FreeAndNil(fPkgLog) ;
   End ;
  End ;

 const_ShipMill_FreightInvoice     :
 if ThisUser.CanView[dcFrakt_AvrakningSec] then
 Begin
  if not Assigned(frmFreightLoad) then
  Begin
   frmFreightLoad := TfrmFreightLoad.Create(Application) ;
   frmFreightLoad.CreateCo ;
//   frmFreightLoad.Parent := panelBase;
   frmFreightLoad.Show;
   frmFreightLoad.bcVerk.Setfocus ;
  End
  else
    begin
//     frmFreightLoad.Parent := panelBase;
     frmFreightLoad.Show;
     frmFreightLoad.bcVerk.Setfocus ;     
    end ;
 End ;

  const_ShipMill_FreightExternInvoice     :
 if ThisUser.CanView[dcFrakt_AvrakningSec] then
 Begin
  if not Assigned(frmFreightExternLoad) then
  Begin
   frmFreightExternLoad := TfrmFreightExternLoad.Create(Application) ;
   frmFreightExternLoad.CreateCo ;
//   frmFreightExternLoad.Parent := panelBase;
   frmFreightExternLoad.Show;
   frmFreightExternLoad.bcVerk.Setfocus ;
  End
  else
    begin
//     frmFreightExternLoad.Parent := panelBase;
     frmFreightExternLoad.Show;
     frmFreightExternLoad.bcVerk.Setfocus ;
    end ;
 End ;

 const_AnkomnaHamn :
 if ThisUser.CanView[dcARSec] then
  Begin
   if not Assigned(frmPortArrivals) then
    Begin
     frmPortArrivals := TfrmPortArrivals.Create(Nil) ;
     frmPortArrivals.CreateCo(  ThisUser.CompanyNo);
     frmPortArrivals.Parent := panelBase;
     frmPortArrivals.Show;
    End
    else
    begin
     frmPortArrivals.Parent := panelBase;
     frmPortArrivals.Show;
    end ;
  End ;// if ThisUser.CanView[dcARSec] then


 end; //Case
end;



//-------------------------------------------------------------
procedure TfrmMain.atAboutExecute(Sender: TObject);
begin
 TAboutBox.Execute ;
end;

procedure TfrmMain.CheckMappar ;
Var EditCRFolder, EditIniFiles, eUserDir, eExcelDir, eLODir : String ;
Begin
 if DirectoryExists(dmsConnector.DriveLetter) then
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
 End ;
{ if not FileExists(dmsConnector.DriveLetter+'VIS\KONFIG\VIS.INI') then
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
  End }
End ;


//-------------------------------------------------------------
procedure TfrmMain.FormShow(Sender: TObject);
var Height, Width, Top, Left : Integer ;
begin
 dmsConnector.DriveLetter:= 'h:\' ;
 CheckMappar ;
// ThisUser.Database:= 'carmak-m30\sqlexpress:vis_vida' ;
 ThisUser.Database:= 'vis.vida.se:vis_vida' ;
 dmsConnector.Org_DB_Name:= ThisUser.HostName + ':' + ThisUser.Database ;
   if not ThisUser.Logon then
    Close
     else
      if dmsConnector.SQLConnection.Connected then
      Begin
       Caption:= Application.Title+'/'+dmsConnector.GetCompanyName (ThisUser.CompanyNo) +'/' + ThisUser.UserName +' ver '+GetVersion
       +' - '+dmsConnector.SQLConnection.Params.Values['HostName']
       +'/'+dmsConnector.SQLConnection.Params.Values['Database']+' ' ;
       InitOnStartOfProgram ;
      End
      else
      Begin
       Close ;
      End ;
 dm_UserProps.GetAppFormSize(frmMain.Name, Height, Width, Top, Left) ;
 if (Height > 0) and (Width > 0) then //and (Top > 0) and (Left > 0) then
 Begin
  frmMain.Height  := Height ;
  frmMain.Width   := Width ;
  frmMain.Top     := Top ;
  frmMain.Left    := Left ;
 End ;
end;

Procedure TfrmMain.InitOnStartOfProgram ;
Begin
 if ThisUser.CompanyNo <> VIDA_WOOD_COMPANY_NO then
 dxSideBar1.Groups.Items[1].MakeActive ;
End ;

//Sparas centralt
procedure TfrmMain.dxBarButton13Click(Sender: TObject);
begin
 if (ThisUser.UserID = 8) or (ThisUser.UserID = 4) or (ThisUser.UserID = 5) then
 Begin
  TFormSetup.Execute ;
 End ;
end;

procedure TfrmMain.dxBarButton16Click(Sender: TObject);
var frmMaintenance: TfrmMaintenance;
begin
 if (ThisUser.UserID = 8) then
 Begin
  frmMaintenance:= TfrmMaintenance.Create(Nil);
  Try
   frmMaintenance.ShowModal ;
  Finally
   FreeAndNil(frmMaintenance) ;
  End ;
 End ;
end;

procedure TfrmMain.bbPkgInfoClick(Sender: TObject);
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

//initialization
  //UseDelphiDateTimeFormats := True;
procedure TfrmMain.bbAddPackageClick(Sender: TObject);
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


procedure TfrmMain.acUserPreferenceExecute(Sender: TObject);
begin
 TfUserPreference.Execute ;
end;

procedure TfrmMain.bbCurrencyClick(Sender: TObject);
begin
 if ThisUser.CanView[dcFakturaSec] then
  TfCurrency.Execute ;
end;

procedure TfrmMain.bbGeneralShippingCostClick(Sender: TObject);
var frmGenShipCost: TfrmGenShipCost;
begin
 if ThisUser.CanView[dcFakturaSec] then
 Begin
 frmGenShipCost:= TfrmGenShipCost.Create(Nil);
 Try
  frmGenShipCost.ShowModal ;
 Finally
  FreeAndNil(frmGenShipCost) ;
 End ;
 End ;
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

procedure TfrmMain.bbMainGradeClick(Sender: TObject);
//var fMainGrade: TfMainGrade;
begin
 //Bas kvalitet
{ if ThisUser.CanView[dcFakturaSec] then
 Begin
 fMainGrade:= TfMainGrade.Create(Nil);
 Try
  fMainGrade.ShowModal ;
 Finally
  FreeAndNil(fMainGrade) ;
 End ;
 End ; }
end;

procedure TfrmMain.bbPkgNoSerieClick(Sender: TObject);
var fPkgNoSeries: TfPkgNoSeries;
begin
 if (ThisUser.UserID = 8) or (ThisUser.UserID = 4) or
 (ThisUser.UserID = 5) then
 Begin
  fPkgNoSeries:= TfPkgNoSeries.Create(Nil);
  Try
   fPkgNoSeries.ShowModal ;
  Finally
   FreeAndNil(fPkgNoSeries);
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

procedure TfrmMain.bbPktNrPositionerClick(Sender: TObject);
var fPktNrPos : TfPktNrPos;
begin
 if ThisUser.CanView[dcFakturaSec] then
 Begin
 fPktNrPos:= TfPktNrPos.Create(Nil);
 Try
  fPktNrPos.ShowModal ;
 Finally
  FreeAndNil(fPktNrPos) ;
 End ;
 End ;
end;

procedure TfrmMain.PaketInmatningPerPktKod (Sender: TObject);
Begin
 if ThisUser.CanView[dcInventorySection] then
  Begin
   TfrmPkgsByPktType.StartProc ;
  End ;
End ;

procedure TfrmMain.CleanUpForms(Sender: TObject);
begin
 if Assigned(fLastLista) then
  FreeAndNil(fLastLista) ;

 if Assigned(fnotInvoicedReport) then
  FreeAndNil(fnotInvoicedReport) ;

 if Assigned(frmAvrakningar) then
  FreeAndNil(frmAvrakningar) ;


 if Assigned(frmRunAttester) then
  FreeAndNil(frmRunAttester) ;

 if Assigned(frmGjordaAvrakningar) then
  FreeAndNil(frmGjordaAvrakningar) ;

 if Assigned(frmLoadArrivals) then
  FreeAndNil(frmLoadArrivals) ;

 if Assigned(fChkAvrLoads) then
  FreeAndNil(fChkAvrLoads) ;

// if Assigned(frmPayment) then
//  FreeAndNil(frmPayment);

 if Assigned(frmFreightLoad) then
 Begin
//  frmFreightLoad.Close ;
  FreeAndNil(frmFreightLoad) ;
 End ;

 if Assigned(frmFreightExternLoad) then
 Begin
//  frmFreightLoad.Close ;
  FreeAndNil(frmFreightExternLoad) ;
 End ;

 if Assigned(fSamlingsfaktura) then
  FreeAndNil(fSamlingsfaktura) ;

 if Assigned(frmInvoiceList) then
 Begin
  frmInvoiceList.Close ;
  FreeAndNil(frmInvoiceList) ;
 End ;

 if Assigned(frmAvrop) then
 Begin
  frmAvrop.Close ;
  FreeAndNil(frmAvrop) ;
 End ;

 if Assigned(frmProdRep) then
 Begin
  frmProdRep.Close ;
  FreeAndNil(frmProdRep) ;
 End ;

 if Assigned(frmInventoryReport) then
 Begin
  frmInventoryReport.Close ;
  FreeAndNil(frmInventoryReport) ;
 End ;

// if Assigned(frmCreatePayment) then
//  FreeAndNil(frmCreatePayment) ;

 if Assigned(frmSkapaRunAttest) then
  FreeAndNil(frmSkapaRunAttest) ;

 if Assigned(frmSkapaAvrakning) then
  FreeAndNil(frmSkapaAvrakning) ;

 if Assigned(frmSokAvropFormular) then
  FreeAndNil(frmSokAvropFormular) ;

 if Assigned(frmLoadOrder) then
  FreeAndNil(frmLoadOrder) ;

 if Assigned(frmPortArrivals) then
  FreeAndNil(frmPortArrivals) ;

 if Assigned(frmKP_List) then
  FreeAndNil(frmKP_List) ;

 if Assigned(frmShippingInstruction) then
  FreeAndNil(frmShippingInstruction) ;

  if Assigned(dmInventory) then
  dmInventory:= TdmInventory.Create(Nil);
end;

//Hämtas från användarens lokala "H"
procedure TfrmMain.GetIniFileMap(Sender: TObject) ;
begin
 with TIniFile.Create(dmsConnector.DriveLetter+'\VIS\KONFIG\VIS.INI') do
 try
 //tog bort vis.ini
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

 dm_UserProps.SetAppFormSize(frmMain.Name, frmMain.Height, frmMain.Width, frmMain.Top, frmMain.Left) ;

 Try
 ThisUser.Free ;
 Except
 End ;
 CanClose := True ;
end;

procedure TfrmMain.GetPropIniStores(Sender: TObject) ;
begin
 with TIniFile.Create(dmsConnector.DriveLetter+'\VIS\KONFIG\VIS.INI') do
 try
  cxPropertiesStore1.StorageName:= dmsConnector.DriveLetter+'\VIS\KONFIG\propstore.ini' ;
  cxPropertiesStore1.Active:= True ;
  cxPropertiesStore1.RestoreFrom ;
 Finally
  Free ;
 End ;
end;

procedure TfrmMain.acBytAnvandareExecute(Sender: TObject);
var OKHelpBottomDlg: TOKHelpBottomDlg;
begin
 if (Trim(dmsConnector.Get_AD_Name) = 'VIDA\micmor')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\larmak')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\admin')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\marhug')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\krikuh')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\jenjoh')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\marhug')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\annjon') 
 or (Trim(dmsConnector.Get_AD_Name) = 'sa')
 then
 Begin
 if FormOpen then
 Begin
  ShowMessage('Stäng alla formulär först!');
  Exit ;
 End ;
 OKHelpBottomDlg:= TOKHelpBottomDlg.Create(nil);
 try
 if OKHelpBottomDlg.ShowModal = mrOK then
 Begin
  dmsConnector.SQLConnection.CloseDataSets ;
  dmsConnector.SQLConnection.Connected:= False ;
  if Length(OKHelpBottomDlg.eAD_Name.Text) > 0 then
  ThisUser.DBUserName:= OKHelpBottomDlg.eAD_Name.Text ;
  if Length(OKHelpBottomDlg.eDatabas.Text) > 0 then
  ThisUser.Database:= OKHelpBottomDlg.eDatabas.Text ;

   if not ThisUser.Logon then
    Close
     else
      if dmsConnector.SQLConnection.Connected then
      Begin
       if ((dmsConnector.Get_AD_Name <> OKHelpBottomDlg.eAD_Name.Text) and (Length(OKHelpBottomDlg.eAD_Name.Text) > 0) )
       or ((OKHelpBottomDlg.eDatabas.Text <> dmsConnector.Org_DB_Name) and (Length(OKHelpBottomDlg.eDatabas.Text) > 0)) then
       Begin
        InitOnStartOfProgram ;
        Timer1.Enabled:= True ;
        dmsConnector.LoginChanged:= True ;
//        dxNavBar1.DefaultStyles.Background.BackColor:= clGreen ;
        dxSideBar1.Color:= clGreen ;
        dxSideBar1.BkGround.BeginColor:= clGreen ;
        dxSideBar1.BkGround.EndColor:= clGreen ;
        Application.Title:= 'VIS' ;
        a:= Application.Title+'/'+dmsConnector.GetCompanyName (ThisUser.CompanyNo) +'/' + ThisUser.UserName +' ver '+GetVersion
        +' - '+dmsConnector.SQLConnection.Params.Values['HostName']
        +'/'+dmsConnector.SQLConnection.Params.Values['Database']+' ' ;
       End
       else
       Begin
        InitOnStartOfProgram ;
        dmsConnector.LoginChanged:= False ;
        Timer1.Enabled:= False ;
//        dxNavBar1.DefaultStyles.Background.BackColor:= clWhite ;
        dxSideBar1.Color:= clMaroon ;
        dxSideBar1.BkGround.BeginColor:= clMaroon ;
        dxSideBar1.BkGround.EndColor:= clMaroon ;
        Application.Title:= 'VIS' ;
        frmMain.Caption:= Application.Title+'/'+dmsConnector.GetCompanyName (ThisUser.CompanyNo) +'/' + ThisUser.UserName +' ver '+GetVersion
        +' - '+dmsConnector.SQLConnection.Params.Values['HostName']
        +'/'+dmsConnector.SQLConnection.Params.Values['Database']+' ' ;
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
   ShowMessage('No access');
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
var
  i: Integer;
begin
  Application.Title   := a;
  frmMain.Caption     := a;
  for i := 1 to (Length(a) - 1) do
    a[i] := Application.Title[i + 1];
  a[Length(a)] := Application.Title[1];
end;


end.
