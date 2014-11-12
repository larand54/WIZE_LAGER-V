unit uSinglePkgEntry ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems,  Db, SqlTimSt,
  ImgList, idGlobal, StdCtrls, cxPC, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDropDownEdit,
  cxCalendar, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxLabel, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Buttons, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBEdit, cxCalc, ActnList, cxButtonEdit, cxLookAndFeels,
  cxLookAndFeelPainters;



type
  TfSinglePkgEntry = class(TForm)
    dxBarManager1: TdxBarManager;
    Panel1: TPanel;
    Splitter1: TSplitter;
    ImageList1: TImageList;
    pmProducts: TdxBarPopupMenu;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label7: TLabel;
    EditRunningMeter: TEdit;
    grdPcsPerLength: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Pieces: TcxGridDBColumn;
    cxGridDBTableView1ALMM: TcxGridDBColumn;
    cxGridDBTableView1NLMM: TcxGridDBColumn;
    cxGridDBTableView1GroupNo: TcxGridDBColumn;
    cxGridDBTableView1productLengthno: TcxGridDBColumn;
    cxGridDBTableView1FEET: TcxGridDBColumn;
    cxGridDBTableView1TUM: TcxGridDBColumn;
    cxGridDBTableView1AM3: TcxGridDBColumn;
    cxGridDBTableView1LPM: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel5: TPanel;
    Panel6: TPanel;
    grdLengthGroup: TcxGrid;
    grdLengthGroupDBTableView1: TcxGridDBTableView;
    grdLengthGroupDBTableView1GroupNo: TcxGridDBColumn;
    grdLengthGroupDBTableView1GroupName: TcxGridDBColumn;
    grdLengthGroupLevel1: TcxGridLevel;
    lcVerk: TcxDBLookupComboBox;
    lcOwner: TcxDBLookupComboBox;
    lcLagerStalle: TcxDBLookupComboBox;
    lcLagerGrupp: TcxDBLookupComboBox;
    deRegDate: TcxDBDateEdit;
    lcMatPunkt: TcxDBLookupComboBox;
    tePkgNo: TcxDBTextEdit;
    Label8: TLabel;
    teSupplierCode: TcxDBTextEdit;
    Label9: TLabel;
    lcBarCode: TcxDBLookupComboBox;
    lcGradeStamp: TcxDBLookupComboBox;
    Label10: TLabel;
    beProductDescription: TcxDBButtonEdit;
    ActionList1: TActionList;
    acClose: TAction;
    acGetProduct: TAction;
    acSave: TAction;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lcInputOption: TcxDBLookupComboBox;
    acClearPcs: TAction;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    bbOK: TBitBtn;
    BitBtn3: TBitBtn;
    tePcsPerLength: TcxTextEdit;
    Label1StyckPerLangd: TLabel;
    lcProducer: TcxDBLookupComboBox;
    Label14: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure lbCloseFormClick(Sender: TObject);
    procedure lbPkgNoIntClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tePkgNoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acGetProductExecute(Sender: TObject);
    procedure beProductDescriptionPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure acSaveExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acClearPcsExecute(Sender: TObject);

  private
    { Private declarations }
    FPackageNo : Integer ;
    Function  UnsavedPkgs : Boolean ;

//    procedure Add_LPM_LengthToProductGroup_And_ToPkg(Sender: TObject);
//    procedure Add_LPM_LengthToProductGroup_And_ToPkg_AVGLENGTH_INPUT(Sender: TObject);
//    procedure InsertPkgSerie(Sender: TObject);
    function  SavePkg(Sender: TObject) : Boolean ;
    function  GetProduct : Boolean ;
  public
    { Public declarations }
    SUPPLIERCODE  : String ;
    PackageNo     : Integer ;
//Operation 0 = new, 1 = change
    function SetParams(const PkgSupplierCode : String; const CallingFormType, IC_GrpNo, Operation, Status, PackageNo, OwnerNo, VerkNo, RegPointNo, PIPNo, LIPNo : Integer;const RegDate : TDateTime) : Boolean ;
  end;

//var  fSinglePkgEntry: TfSinglePkgEntry;

implementation

uses VidaConst, VidaUser, dmsDataConn, UnitPkgNoSeries,
      dmsVidaSystem,
     dmcVidaSystem, dmsVidaContact, dmsSinglePkg, UnitGetProd_II;

{$R *.dfm}

function TfSinglePkgEntry.SetParams(const PkgSupplierCode : String;const CallingFormType, IC_GrpNo, Operation, Status, PackageNo, OwnerNo, VerkNo, RegPointNo, PIPNo, LIPNo : Integer;const RegDate : TDateTime) : Boolean ;
Begin
//Operation = 0 = Nytt
//Operation = 1 = Ändra
 Result := False ;
 FPackageNo := PackageNo ;
// FRegDate   := RegDate ;
 With dm_SinglePkg do
 Begin
  if mtSinglePkg.State in [dsBrowse] then
  mtSinglePkg.Edit ;
  mtSinglePkgCallingFormType.AsInteger   := CallingFormType ; //1 from inventory form

  if Length(PkgSupplierCode) > 0 then
  mtSinglePkgSUPPLIERCODE.AsString       := PkgSupplierCode ;
  mtSinglePkgStatus.AsInteger            := Status ;
  
  mtSinglePkgIC_grpno.AsInteger          := IC_GrpNo ;
  mtSinglePkgOperation.AsInteger         := Operation ;
  mtSinglePkgInputOptionNo.AsInteger     := 0 ;
  mtSinglePkgSaved.AsBoolean             := False ;
  mtSinglePkgGradeStampNo.AsInteger      := 0 ;
  mtSinglePkgBarcodeID.AsInteger         := 0 ;

  mtSinglePkgPackageNo.AsInteger         := PackageNo ;
  mtSinglePkgOwnerNo.AsInteger           := OwnerNo ;
  mtSinglePkgVerkNo.AsInteger            := VerkNo ;
  mtSinglePkgProducerNo.AsInteger        := VerkNo ;
  mtSinglePkgPIPNo.AsInteger             := PIPNo ;
  mtSinglePkgLIPNo.AsInteger             := LIPNo ;
  mtSinglePkgRegDate.AsDateTime          := RegDate ;
  mtSinglePkgRegPointNo.AsInteger        := RegPointNo ;
  mtSinglePkgTotalPcs.AsInteger          := 0 ;

  mtSinglePkg.Post ;

//=============== operation 1 = ändra paket, 0 = nytt paket
  if Operation = 1 then
  Begin
   CopyProductData ;
   Caption:= 'Ändra paket' ;
   tePcsPerLength.Text:= GetPcsPerLength (mtSinglePkgOldPackageTypeNo.AsInteger) ;
   RefreshLengths ;//visar produktspecifikalängder inititalt
  End
   else
    Begin
     mtLengths.Active:= True ;
     Caption:= 'Registrera paket' ;
     Label1StyckPerLangd.Visible  := False ;
     tePcsPerLength.Visible       := False ;
     Result := GetProduct ;
    End ;
 End ; //with
End ;

procedure TfSinglePkgEntry.FormCreate(Sender: TObject);
begin
 With dm_SinglePkg do
 Begin
  dm_SinglePkg:= Tdm_SinglePkg.Create(nil);
  cdsLengthGroup.Active := True ;
  cdsProdLength.Active  := True ;
  mtSinglePkg.Active    := True ;
//  SavePkgs:= False ;

  Try
//   with TIniFile.Create(dmsConnector.InifilesMap+'VisPkgSingleEntry'+'.'+ThisUser.UserName) do
//   try
    mtSinglePkg.Insert ;
    mtSinglePkgInputOptionNo.AsInteger     := 0 ;
    mtSinglePkgSaved.AsBoolean             := False ;
    mtSinglePkgGradeStampNo.AsInteger      := 0 ;
    mtSinglePkgBarcodeID.AsInteger         := 0 ;

{    mtSinglePkgOwnerNo.AsInteger           := ReadInteger ('PkgEntry', 'Owner', 0) ;
    mtSinglePkgVerkNo.AsInteger            := ReadInteger ('PkgEntry', 'Verk', 0) ;
    mtSinglePkgPIPNo.AsInteger             := ReadInteger ('PkgEntry', 'PIP', 0);
    mtSinglePkgLIPNo.AsInteger             := ReadInteger ('PkgEntry', 'LIP', 0); }
    mtSinglePkgRegDate.AsDateTime          := Now ;
//    mtSinglePkgRegPointNo.AsInteger        := ReadInteger ('PkgEntry', 'RegPoint', 0);
    mtSinglePkgTotalPcs.AsInteger          := 0 ;

//   Finally
//    Free ;
//   End ;
   Except
   End ;
 End ;//with
end;

//procedure TfSinglePkgEntry.Add_LPM_LengthToProductGroup_And_ToPkg(Sender: TObject);
//Begin
{ With dm_SinglePkg do
 Begin
  dm_SinglePkg.mtpackages.AfterPost:= NIL ;
  Try
  cds_ProdLength.Active:= True ;
  cds_ProductGroupLength.Active:= True ;
  mtpackages.First ;
  While not mtpackages.Eof do
  Begin                   // LOOK FOR MATCH ON ACTUAL LENGTH
   if not cds_ProdLength.FindKey([NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1], NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]]) then
    Begin
     cds_ProdLength.Insert ;
     cds_ProdLengthProductLengthNo.AsInteger:= dmsConnector.NextMaxNo('ProductLength') ;
     cds_ProdLengthActualLengthMM.AsFloat:= NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1] ;
     cds_ProdLengthNominalLengthMM.AsFloat:= NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1] ;
     cds_ProdLengthNominalLengthFEET.AsFloat:= 0 ;
     cds_ProdLengthActualLengthINCH.AsString:= '';
     cds_ProdLengthPET.AsInteger:= 0 ;
     cds_ProdLengthFingerJoint.AsInteger:= 0 ;
     cds_ProdLengthCreatedUser.AsInteger:= ThisUser.UserID ;
     cds_ProdLengthModifiedUser.AsInteger:= ThisUser.UserID ;
     cds_ProdLengthDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
     cds_ProdLength.Post ;
    End ;

     if not cds_ProductGroupLength.FindKey([mtpackages.Fields[cPRODUCTGROUPNO].AsInteger,cds_ProdLengthProductLengthNo.AsInteger]) then
     Begin
      cds_ProductGroupLength.Insert ;
      cds_ProductGroupLengthProductGroupNo.AsInteger:= mtpackages.Fields[cPRODUCTGROUPNO].AsInteger ;
      cds_ProductGroupLengthProductLengthNo.AsInteger:= cds_ProdLengthProductLengthNo.AsInteger ;
      cds_ProductGroupLengthCreatedUser.AsInteger:= ThisUser.UserID ;
      cds_ProductGroupLengthModifiedUser.AsInteger:= ThisUser.UserID ;
      cds_ProductGroupLengthDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
      cds_ProductGroupLength.Post ;
     End ;
   mtpackages.Edit ;
   mtPackages.Fields.Fields[cLPM_PROD_LEGNTH_NO].AsInteger
   := cds_ProdLengthProductLengthNo.AsInteger ;
   mtpackages.Post ;

   mtpackages.Next ;
  End ;
  if cds_ProdLength.ChangeCount > 0 then
   cds_ProdLength.ApplyUpdates(0) ;
  if cds_ProductGroupLength.ChangeCount > 0 then
   cds_ProductGroupLength.ApplyUpdates(0) ;
  cds_ProdLength.Active:= False ;
  cds_ProdLength.Active:= False ;
  Finally
   dm_SinglePkg.mtpackages.AfterPost:= mtPackagesAfterPost ;
  End ;
 End ; //with }
//End ;

//procedure TfSinglePkgEntry.Add_LPM_LengthToProductGroup_And_ToPkg_AVGLENGTH_INPUT(Sender: TObject);
//Begin
{ With dm_SinglePkg do
 Begin
  dm_SinglePkg.mtpackages.AfterPost:= NIL ;
  Try
  cds_ProdLength.Active:= True ;
  cds_ProductGroupLength.Active:= True ;
  mtpackages.First ;
  While not mtpackages.Eof do
  Begin                   // LOOK FOR MATCH ON ACTUAL LENGTH
   if not cds_ProdLength.FindKey([NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]*1000,NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]*1000]) then
    Begin
     cds_ProdLength.Insert ;
     cds_ProdLengthProductLengthNo.AsInteger:= dmsConnector.NextMaxNo('ProductLength') ;
     cds_ProdLengthActualLengthMM.AsFloat:= NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]*1000 ;
     cds_ProdLengthNominalLengthMM.AsFloat:= NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]*1000 ;
     cds_ProdLengthNominalLengthFEET.AsFloat:= 0 ;
     cds_ProdLengthActualLengthINCH.AsString:= '';
     cds_ProdLengthPET.AsInteger:= 0 ;
     cds_ProdLengthFingerJoint.AsInteger:= 0 ;
     cds_ProdLengthCreatedUser.AsInteger:= ThisUser.UserID ;
     cds_ProdLengthModifiedUser.AsInteger:= ThisUser.UserID ;
     cds_ProdLengthDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
     cds_ProdLength.Post ;
    End ;

     if not cds_ProductGroupLength.FindKey([mtpackages.Fields[cPRODUCTGROUPNO].AsInteger,cds_ProdLengthProductLengthNo.AsInteger]) then
     Begin
      cds_ProductGroupLength.Insert ;
      cds_ProductGroupLengthProductGroupNo.AsInteger:= mtpackages.Fields[cPRODUCTGROUPNO].AsInteger ;
      cds_ProductGroupLengthProductLengthNo.AsInteger:= cds_ProdLengthProductLengthNo.AsInteger ;
      cds_ProductGroupLengthCreatedUser.AsInteger:= ThisUser.UserID ;
      cds_ProductGroupLengthModifiedUser.AsInteger:= ThisUser.UserID ;
      cds_ProductGroupLengthDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
      cds_ProductGroupLength.Post ;
     End ;
   mtpackages.Edit ;
   mtPackages.Fields.Fields[cLPM_PROD_LEGNTH_NO].AsInteger
   := cds_ProdLengthProductLengthNo.AsInteger ;
   mtpackages.Post ;

   mtpackages.Next ;
  End ;
  if cds_ProdLength.ChangeCount > 0 then
   cds_ProdLength.ApplyUpdates(0) ;
  if cds_ProductGroupLength.ChangeCount > 0 then
   cds_ProductGroupLength.ApplyUpdates(0) ;
  cds_ProdLength.Active:= False ;
  cds_ProdLength.Active:= False ;

  Finally
   dm_SinglePkg.mtpackages.AfterPost:= mtPackagesAfterPost ;
  End ;
 End ; //with }
//End ;

procedure TfSinglePkgEntry.lbCloseFormClick(Sender: TObject);
begin
 Close ;
end;

procedure TfSinglePkgEntry.lbPkgNoIntClick(Sender: TObject);
begin
{ With dm_SinglePkg do
 Begin
  mtpackages.DisableControls ;
  Try
  if mtpackages.Active then
  Begin
   if mtpackages.State <> dsBrowse then
    Try
    mtPackages.Post ;
    Except
     on eDatabaseError do
     Begin
      Raise ;
     End ;
    End ;

   if mtpackages.RecordCount = 0 then
   Begin
    ShowMessage('To use this function you must insert one package first') ;
    Exit ;
   End
    else
     InsertPkgSerie(Sender) ;
  End  //if
   else
    ShowMessage('To use this function you must insert one package first') ;
  Finally
   mtpackages.EnableControls ;
  End ;
 End ;// with }
end;

//procedure TfSinglePkgEntry.InsertPkgSerie(Sender: TObject) ;
{Var     NoOfPkgsInSerie, PkgNo : Integer ;
        ResultButton : word ;
        Save_Cursor : TCursor;
        Res_UserName : String ;
        frmPkgNoSeries : TfrmPkgNoSeries ; }
//begin
(* ResultButton:= mrYes ;
 With dm_SinglePkg do
 Begin
  mtpackages.DisableControls ;
  frmPkgNoSeries:= TfrmPkgNoSeries.Create(Nil) ;
  Try
   if frmPkgNoSeries.ShowModal = mrOk then
   Begin
    NoOfPkgsInSerie:= StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text))-
    StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;

    if NoOfPkgsInSerie > 100 then
    ResultButton:= MessageDlg(IntToStr(NoOfPkgsInSerie)+' paket kommer att läggas till, OK?',
    mtConfirmation, [mbYes, mbNo, mbCancel], 0) ;

    if ResultButton = mrYes then
    Begin
     Save_Cursor := Screen.Cursor;
     Screen.Cursor := crSQLWait;    { Show hourglass cursor }
     Try


    For PkgNo := StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) to
             StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text)) do
    Begin

    if mtDupPkgNo.FindKey([PkgNo,Trim(SupplierCode)]) then
    Begin
     MessageBeep(MB_ICONEXCLAMATION);
     ShowMessage('Duplicate Package number entered '+IntToStr(PkgNo)) ;
    End
    else
     if dmsSystem.Pkg_Reserved(
          PkgNo,
          SupplierCode, Self.Name, Res_UserName
          ) <> ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          ShowMessage('Package no is reserved by user '+ Res_UserName) ;
         End
     else
     if PackageNumberExists(PkgNo, SupplierCode) = False then
     Begin
      Try
       mtpackages.Insert ;
       mtpackages.Fields.Fields[cPACKAGENO].AsInteger:= PkgNo ;
       mtpackages.Post ;

      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtpackages.Cancel ;
       End ;
      End ;
     End //if..
      else
       ShowMessage('Package number  '+IntToStr(PkgNo)+' already exist, please change to different number') ;
    End ; //for
     Finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
     End ;

    End ;//mrYes
   End ;
  Finally
   FreeAndNil(frmPkgNoSeries) ;//.Free ;
   mtpackages.EnableControls ;
  End ;
 End ; // with
  *)
//End ;

procedure TfSinglePkgEntry.FormCloseQuery(Sender: TObject;var CanClose: Boolean);
Var   ResultButton  : word ;
//      x             : Integer ;
Begin
 if (UnsavedPkgs) then //and (SavePkgs = False) then
 Begin
  ResultButton:= MessageDlg('Paket är inte sparade, vill du spara?',
  mtConfirmation, [mbYes, mbNo, mbCancel], 0) ;
  if ResultButton = mrYes then
  Begin
   acSaveExecute(Sender) ;
   CanClose := True ;
  End
  else
  if ResultButton = mrCancel then
   CanClose:= False ;
 End ; // if (UnsavedPkgs) and (SavePkgs = False) then

 if CanClose = True then
 Begin
  With dm_SinglePkg do
  Begin
   dmsSystem.sqBarCode.Active:= False ;
   SUPPLIERCODE:= mtSinglePkgSUPPLIERCODE.AsString ;
   mtSinglePkg.Active:= False ;
  End ;//with

 With dmsSystem do
 Begin
  Delete_ReservedPkgs (Self.Name) ;
 End ;
 end;//if
end;

Function  TfSinglePkgEntry.UnsavedPkgs : Boolean ;
Begin
 Result := False ;
 With dm_SinglePkg do
 Begin

 End ;
End ;

procedure TfSinglePkgEntry.tePkgNoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  NewValue: string;
  PkgNo : Integer ;
  TestPkgNo : Int64 ;
  tAccept : Boolean ;
  SupplierCode,
  Res_UserName : String ;
begin
 tAccept:= True ;
 With dm_SinglePkg do
 Begin
  SupplierCode:= mtSinglePkgSUPPLIERCODE.AsString ;
  NewValue := DisplayValue ;

  TestPkgNo := StrToInt64(NewValue) ;
  if TestPkgNo > Const_MAX_PKG_NO then
  Begin
   ErrorText:= 'Max packageNo allowed is '+IntToStr(Const_MAX_PKG_NO) ;
   Error    := True ;
  End ;

  PkgNo := StrToIntDef(NewValue,0) ;

  if PackageNumberExists(PkgNo, SupplierCode) then
  Begin
   ErrorText:= 'Paketnr finns redan. '+ Pkg_Info(PkgNo, Trim(SupplierCode)) ;
   Error    := True ;
  End
  else
  if dmsSystem.Pkg_Reserved(
          PkgNo,
          SupplierCode, Self.Name, Res_UserName
          ) <> ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          ErrorText:= 'Package no is reserved by user '+ Res_UserName ;
          Error    := True ;
         End ;
//  Accept := tAccept ;
 End ; //with
end ;


procedure TfSinglePkgEntry.FormDestroy(Sender: TObject);
begin
 With dm_SinglePkg do
 Begin
  FreeAndNil(dm_SinglePkg) ;
 End ;
end;

procedure TfSinglePkgEntry.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfSinglePkgEntry.acGetProductExecute(Sender: TObject);
begin
 GetProduct ;
end;

function TfSinglePkgEntry.GetProduct : Boolean ;
Var //x : Integer ;
    //frmGetProduct: TfrmGetProduct;
    frmGetProd_II: TfrmGetProd_II;
begin
 //Get product

 Result := False ;
 With dm_SinglePkg do
 Begin
   frmGetProd_II:= TfrmGetProd_II.Create(Nil);
   Try
   frmGetProd_II.PageControl.HideTabs := True ;
   if frmGetProd_II.ShowModal = mrOk then
   Begin

  if dm_SinglePkg.mtSinglePkg.State in [dsBrowse] then
  dm_SinglePkg.mtSinglePkg.Edit ;
  Try
   dm_SinglePkg.mtSinglePkgProductNo.AsInteger          := dmsSystem.mtMarkedProdProductNo.AsInteger ;
   dm_SinglePkg.mtSinglePkgPRODUCTDESCRIPTION.AsString  := dmsSystem.mtMarkedProdPRODUKTDESC.AsString ;
   dm_SinglePkg.mtSinglePkgACT_THICK.AsFloat            := dmsSystem.mtMarkedProdAT.AsFloat ;
   dm_SinglePkg.mtSinglePkgACT_WIDTH.AsFloat            := dmsSystem.mtMarkedProdAW.AsFloat ;
   dm_SinglePkg.mtSinglePkgPRODUCTGROUPNO.AsInteger     := dmsSystem.mtMarkedProdProductGroupNo.AsInteger ;

   dm_SinglePkg.mtSinglePkgNOM_THICK.AsFloat            := dmsSystem.mtMarkedProdNT.AsFloat ;
   dm_SinglePkg.mtSinglePkgINCH_THICK.AsFloat           := dmsSystem.mtMarkedProdNIT.AsFloat ;
   dm_SinglePkg.mtSinglePkgINCH_WIDTH.AsFloat           := dmsSystem.mtMarkedProdNIW.AsFloat ;

   dm_SinglePkg.mtSinglePkgSurfacingNo.AsInteger        := dmsSystem.mtMarkedProdSurfacingNo.AsInteger ;

   dm_SinglePkg.mtSinglePkgGradeStampNo.AsInteger       := 0 ;
   dm_SinglePkg.mtSinglePkgBarCodeID.AsInteger          := 0 ;
   dm_SinglePkg.mtSinglePkg.Post ;
   dm_SinglePkg.RefreshLengths ;
   Result := True ;
  Except
   on eDatabaseError do
   Raise ;
  End ;


   End ;
   Finally
    dmsSystem.mtMarkedProd.Active:= False ;
    FreeAndNil(frmGetProd_II) ;
   End ;
 End ;//with
end;

(*
 Result := False ;
 frmGetProduct:= TfrmGetProduct.Create(Nil);
 Try
 if frmGetProduct.ShowModal = mrOk then
 Begin
  if dm_SinglePkg.mtSinglePkg.State in [dsBrowse] then
  dm_SinglePkg.mtSinglePkg.Edit ;
  Try
   dm_SinglePkg.mtSinglePkgProductNo.AsInteger          := dmcSystem.cds_ProductsProductNo.AsInteger ;
   dm_SinglePkg.mtSinglePkgPRODUCTDESCRIPTION.AsString  := dmcSystem.cds_ProductsProductDisplayName.AsString ;
   dm_SinglePkg.mtSinglePkgACT_THICK.AsFloat            := dmcSystem.cds_ProductsActualThicknessMM.AsFloat ;
   dm_SinglePkg.mtSinglePkgACT_WIDTH.AsFloat            := dmcSystem.cds_ProductsActualWidthMM.AsFloat ;
   dm_SinglePkg.mtSinglePkgPRODUCTGROUPNO.AsInteger     := dmcSystem.cds_ProductsProductGroupNo.AsInteger ;

   dm_SinglePkg.mtSinglePkgNOM_THICK.AsFloat            := dmcSystem.cds_ProductsNominalThicknessMM.AsFloat ;
   dm_SinglePkg.mtSinglePkgINCH_THICK.AsFloat           := StrToFloatDef(dmcSystem.cds_ProductsNominalThicknessINCH.AsString,0) ;
   dm_SinglePkg.mtSinglePkgINCH_WIDTH.AsFloat           := StrToFloatDef(dmcSystem.cds_ProductsNominalWidthINCH.AsString,0) ;

   dm_SinglePkg.mtSinglePkgSurfacingNo.AsInteger        := dmcSystem.cds_ProductsSurfacingNo.AsInteger ;

   dm_SinglePkg.mtSinglePkgGradeStampNo.AsInteger:= 0 ;
   dm_SinglePkg.mtSinglePkgBarCodeID.AsInteger:= 0 ;
   dm_SinglePkg.mtSinglePkg.Post ;
   dm_SinglePkg.RefreshLengths ;
   Result := True ;
  Except
   on eDatabaseError do
   Raise ;
  End ;

 End
  else
    Result := False ;
 Finally
  dmcSystem.cds_Products.Active:= False ;
  FreeAndNil(frmGetProduct) ;
 End ;

end;  *)

procedure TfSinglePkgEntry.beProductDescriptionPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
 acGetProductExecute(Sender) ;
end;

procedure TfSinglePkgEntry.acSaveExecute(Sender: TObject);
//const  LF = #10;
begin
// SavePkg(Sender) ;
 if SavePkg(Sender) = True then
  ModalResult:= mrOK
   else
    ModalResult:= mrNone ;
end;

procedure TfSinglePkgEntry.acSaveUpdate(Sender: TObject);
begin
 With dm_SinglePkg do
 Begin
  acSave.Enabled:=  (mtSinglePkg.Active) and
//  (mtSinglePkgTotalPcs.AsInteger > 0) and
  (mtSinglePkgProductNo.AsInteger > 0) and
  (mtSinglePkgPackageNo.AsInteger > 0) and
  (Length(mtSinglePkgSupplierCode.AsString) > 0) and
  (mtSinglePkgOwnerNo.AsInteger > 0) and
  (mtSinglePkgVerkNo.AsInteger > 0) and
  (mtSinglePkgRegPointNo.AsInteger > 0) and
  (mtSinglePkgPIPNo.AsInteger > 0) and
  (mtSinglePkgLIPNo.AsInteger > 0)  ;
 End ;
end;

procedure TfSinglePkgEntry.acClearPcsExecute(Sender: TObject);
begin
 With dm_SinglePkg do
 Begin
  cdsProdLength.Active:= False ;
  cdsProdLength.Active:= True ;
 End ;
end;

function TfSinglePkgEntry.SavePkg(Sender: TObject) : Boolean ;
const
  LF = #10;
begin
 Result:= False ;
 if MessageDlg('Spara paket mot mätpunkt: '+
 Trim(lcVerk.Text)
 +'/'+Trim(lcMatPunkt.Text)
 +LF+'Ägare:'+ Trim(lcOwner.Text)
 +LF+'Lagerställe: '+Trim(lcLagerStalle.Text)
 +'/'+ Trim(lcLagerGrupp.Text)
 +LF+'Datum: '+DateTimeToStr(dm_SinglePkg.mtSinglePkgRegDate.AsDateTime) ,  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin

 With dm_SinglePkg do
 Begin
  if mtSinglePkg.State in [dsInsert, dsEdit] then
  mtSinglePkg.Post ;
  mtSinglePkg.DisableControls ;
  Try
  if mtSinglePkg.RecordCount > 0 then
  Begin
//    if InputOption = INPUT_LOPM_TOTAL_LOPM then
//    Add_LPM_LengthToProductGroup_And_ToPkg(Sender)
//    else
//    Add_LPM_LengthToProductGroup_And_ToPkg_AVGLENGTH_INPUT(Sender) ;
   if SavePackages2 then
   Begin
    Result    := True ;
    PackageNo := StrToIntDef(tePkgNo.Text,0) ;

//    if MessageDlg('Paket sparade OK, vill du stänga?',
//    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 //   Begin
///     SavePkgs:= True ;
//     Close ;
//    End
   End//if SavePackages2 then
 End ;//with
 Finally
  mtSinglePkg.EnableControls ;
 End ;

 End ; //with
 End ;//if...
end;

end.
