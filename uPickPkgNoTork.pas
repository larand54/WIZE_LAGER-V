unit uPickPkgNoTork ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Buttons,
  ActnList, DBActns, dxBar, dxBarExtItems, kbmMemTable, cxMaskEdit,
  cxCheckBox, cxCalendar, cxContainer,
  cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBEdit, cxLookAndFeels, cxLookAndFeelPainters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, VidaType,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, siComp, siLngLnk ;

type
  TfPickPkgNoTork = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    ds_SelectedPkgNo: TDataSource;
    cxGrid1DBTableView1PAKETNR: TcxGridDBColumn;
    cxGrid1DBTableView1LEVKOD: TcxGridDBColumn;
    cxGrid1DBTableView1STYCKPERLNGD: TcxGridDBColumn;
    cxGrid1DBTableView1MARKERAD: TcxGridDBColumn;
    Panel2: TPanel;
    cxGrid1DBTableView1AM3: TcxGridDBColumn;
    cxGrid1DBTableView1STYCK: TcxGridDBColumn;
    cxGrid1DBTableView1REGISTRERAT: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    bbMarkAll: TBitBtn;
    bbUnMarkAll: TBitBtn;
    LabelPIPName: TLabel;
    Label1: TLabel;
    LabelNoOfPkgsMarked: TLabel;
    Label4: TLabel;
    ds_Products: TDataSource;
    mtFilter: TFDMemTable;
    mtFilterProductNo: TIntegerField;
    mtFilterProduct: TStringField;
    dsFilter: TDataSource;
    lcProduct: TcxDBLookupComboBox;
    BitBtn3: TBitBtn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleMarkedRow: TcxStyle;
    deProductNo: TcxDBTextEdit;
    Label5: TLabel;
    cxGrid1DBTableView1ColumnAngeAntalPkt: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    sq_GetPkgNo: TFDQuery;
    sq_GetInActive: TFDQuery;
    sq_GetAllProducts: TFDQuery;
    cds_Products: TFDQuery;
    sq_GetPkgNoPackageNo: TIntegerField;
    sq_GetPkgNoLEVKOD: TStringField;
    sq_GetPkgNoproductno: TIntegerField;
    sq_GetPkgNoPcsPerLength: TStringField;
    sq_GetPkgNoAM3: TFloatField;
    sq_GetPkgNoSTYCK: TIntegerField;
    sq_GetPkgNoDateCreated: TSQLTimeStampField;
    sq_GetInActivePackageNo: TIntegerField;
    sq_GetInActiveLEVKOD: TStringField;
    sq_GetInActiveProductNo: TIntegerField;
    sq_GetInActivePcsPerLength: TStringField;
    sq_GetInActiveAM3: TFloatField;
    sq_GetInActiveSTYCK: TIntegerField;
    sq_GetInActiveDateCreated: TSQLTimeStampField;
    sq_GetAllProductsProductDisplayName: TStringField;
    sq_GetAllProductsProductNo: TIntegerField;
    sq_GetAllProductsActualThicknessMM: TFloatField;
    sq_GetAllProductsActualWidthMM: TFloatField;
    sq_GetAllProductsGradeName: TStringField;
    sq_GetAllProductsSpeciesName: TStringField;
    sq_GetAllProductsSurfacingName: TStringField;
    cds_ProductsProductDisplayName: TStringField;
    cds_ProductsProductNo: TIntegerField;
    cds_ProductsActualThicknessMM: TFloatField;
    cds_ProductsActualWidthMM: TFloatField;
    cds_ProductsGradeName: TStringField;
    cds_ProductsSpeciesName: TStringField;
    cds_ProductsSurfacingName: TStringField;
    tePackageNo: TcxTextEdit;
    mtFilterALMM: TFloatField;
    teALMM: TcxDBTextEdit;
    Label2: TLabel;
    sq_GetPkgNoMaxlangd: TFloatField;
    cxGrid1DBTableView1Maxlangd: TcxGridDBColumn;
    cxEditStyleController1: TcxEditStyleController;
    cxStyleRepository2: TcxStyleRepository;
    GridTableViewStyleSheetWindowsStandardlarge: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    siLangLinked_fPickPkgNoTork: TsiLangLinked;
    procedure mtSelectedPkgNoAfterInsert(DataSet: TDataSet);
    procedure bbMarkAllClick(Sender: TObject);
    procedure bbUnMarkAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ds_SelectedPkgNoDataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure FormShow(Sender: TObject);
    procedure mtFilterProductNoChange(Sender: TField);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure teALMMExit(Sender: TObject);
  private
    { Private declarations }
    TempEditString  : String ;
    function IdentifyPackageSupplier(
      const PkgNo : Integer;
      var PkgSupplierCode: String3;
      Var ProductNo : Integer;
      Var Res_UserName : String) : TEditAction ;
    procedure CreateFilter(const PackageNo : Integer;const SupplierCode  : String) ;
    function  GetProductNoByPackageNoEntered(Sender: TObject;const PackageNo : String) : Integer ;
    procedure RefreshPackageList ;
    procedure RefreshInventoryPackageList ;
    procedure RefreshInActivePackageList ;
  public
    { Public declarations }
   LIPNo, PIPNo : Integer ;
  end;

//var fPickPkgNoTork: TfPickPkgNoTork;

implementation

uses dmsDataConn, dm_Inventory, dmsVidaSystem, dmsVidaContact, VidaUser;

{$R *.dfm}


procedure TfPickPkgNoTork.mtSelectedPkgNoAfterInsert(DataSet: TDataSet);
begin
 dmInventory.mtSelectedPkgNoMARKERAD.AsInteger:= 0 ;
end;

procedure TfPickPkgNoTork.bbMarkAllClick(Sender: TObject);
Var
 Save_Cursor  :  TCursor;
begin
 With dmInventory do
 Begin
// MarkedPkgs:= 0 ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.DisableControls ;
 Try
 mtSelectedPkgNo.First ;
 While not mtSelectedPkgNo.Eof do
 Begin
  mtSelectedPkgNo.Edit ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 1 ;
  mtSelectedPkgNo.post ;
  mtSelectedPkgNo.Next ;
 End ;
 finally
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
End ;

procedure TfPickPkgNoTork.bbUnMarkAllClick(Sender: TObject);
Var
 Save_Cursor  :  TCursor;
begin
 With dmInventory do
 Begin
// MarkedPkgs:= 0 ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.DisableControls ;
 Try
 mtSelectedPkgNo.First ;
 While not mtSelectedPkgNo.Eof do
 Begin
  mtSelectedPkgNo.Edit ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 0 ;
  mtSelectedPkgNo.post ;
  mtSelectedPkgNo.Next ;
 End ;
 finally
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
End ;

procedure TfPickPkgNoTork.FormCreate(Sender: TObject);
begin
 dmInventory.MarkedPkgs       := 0 ;
 LabelNoOfPkgsMarked.Caption  := intToStr(dmInventory.MarkedPkgs) ;
end;

procedure TfPickPkgNoTork.ds_SelectedPkgNoDataChange(Sender: TObject;
  Field: TField);
begin
 LabelNoOfPkgsMarked.Caption:= intToStr(dmInventory.MarkedPkgs) ;
end;

procedure TfPickPkgNoTork.RefreshPackageList ;
begin
// if dmInventory.InventoryPkgs then
  RefreshInventoryPackageList ;
  dmInventory.mtSelectedPkgNo.First ;
//   else
  //  RefreshInActivePackageList ;
end;

procedure TfPickPkgNoTork.teALMMExit(Sender: TObject);
begin
  RefreshPackageList ;
end;

procedure TfPickPkgNoTork.RefreshInventoryPackageList ;
Var
    Save_Cursor  :  TCursor;
    x            : Integer ;
begin
 With dmInventory do
 Begin
 Save_Cursor            := Screen.Cursor;
 Screen.Cursor          := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.Active := False ;
 mtSelectedPkgNo.Active := True ;
 mtSelectedPkgNo.DisableControls ;
 Try
 sq_GetPkgNo.Close ;
 sq_GetPkgNo.ParamByName('ProductNo').AsInteger := mtFilterProductNo.AsInteger ;
 sq_GetPkgNo.ParamByName('LIPNo').AsInteger     := LIPNo ;
 if mtFilterALMM.AsFloat > 0 then
  sq_GetPkgNo.ParamByName('ALMM').AsFloat        := mtFilterALMM.AsFloat
   else
    sq_GetPkgNo.ParamByName('ALMM').AsFloat        := 0 ;
// sq_GetPkgNo.ParamByName('ic_grpNo').AsInteger  := ic_grpNo ;
 sq_GetPkgNo.Open ;
 sq_GetPkgNo.First ;
 While not  sq_GetPkgNo.Eof do
 Begin
  mtSelectedPkgNo.insert ;
  For x := 0 to 6 do
   mtSelectedPkgNo.Fields.Fields[x].AsVariant:= sq_GetPkgNo.Fields.Fields[x].AsVariant ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 0 ;
  mtSelectedPkgNo.post ;
  sq_GetPkgNo.Next ;
 End ;
 finally
  sq_GetPkgNo.Close ;
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

procedure TfPickPkgNoTork.RefreshInActivePackageList ;
Var
    Save_Cursor  :  TCursor;
    x            : Integer ;
begin
 With dmInventory do
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.Active:= False ;
 mtSelectedPkgNo.Active:= True ;
 mtSelectedPkgNo.DisableControls ;
 Try
 sq_GetInActive.Close ;
 sq_GetInActive.ParamByName('ProductNo').AsInteger  := mtFilterProductNo.AsInteger ;
 sq_GetInActive.ParamByName('PIPNo').AsInteger      := PIPNo ;
// sq_GetInActive.ParamByName('IC_GrpNo').AsInteger   := IC_GrpNo ;
 sq_GetInActive.Open ;
 sq_GetInActive.First ;
 While not sq_GetInActive.Eof do
 Begin
  mtSelectedPkgNo.insert ;
  For x := 0 to 6 do
   mtSelectedPkgNo.Fields.Fields[x].AsVariant:= sq_GetInActive.Fields.Fields[x].AsVariant ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 0 ;
  mtSelectedPkgNo.post ;
  sq_GetInActive.Next ;
 End ;
 finally
  sq_GetInActive.Close ;
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

procedure TfPickPkgNoTork.BitBtn3Click(Sender: TObject);
begin
 RefreshPackageList ;
end;

procedure TfPickPkgNoTork.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
//Var
// AColumn : TcxCustomGridTableItem;
begin
  AItem:= (Sender AS TcxGridDBTableView).GetColumnByFieldName('Markerad') ;
 if (ARecord.Values[AItem.Index] <> null) AND (ARecord.Values[AItem.Index] = 1) then
  AStyle:= cxStyleMarkedRow ;
end;

procedure TfPickPkgNoTork.FormShow(Sender: TObject);
Var
    Save_Cursor  :  TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
// if dmInventory.InventoryPkgs then
// Begin
  TempEditString                                      := '' ;
  mtFilterProduct.LookupDataSet := cds_Products ;
  cxGrid1DBTableView1.DataController.KeyFieldNames    := 'PAKETNR;LEVKOD' ;
  cds_Products.Active                                 := False ;
  cds_Products.ParamByName('LIPNo').AsInteger         := LIPNo ;
  cds_Products.ParamByName('PIPNo').AsInteger         := PIPNo ;
  cds_Products.Active                                 := True ;
  cxGrid1DBTableView1ColumnAngeAntalPkt.Visible       := False ;
{ end
 else
 Begin
  cxGrid1DBTableView1.DataController.KeyFieldNames    := 'PAKETNR;LEVKOD' ;
  mtFilterProduct.LookupDataSet := sq_GetAllProducts ;
  sq_GetAllProducts.Active                                 := False ;
  sq_GetAllProducts.ParamByName('PIPNo').AsInteger    := PIPNo ;
  sq_GetAllProducts.Active                                 := True ;
 end ; }

  mtFilter.Active:= True ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfPickPkgNoTork.mtFilterProductNoChange(Sender: TField);
begin
  RefreshPackageList ;
end;

procedure TfPickPkgNoTork.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 With dmInventory do
 Begin
//  if InventoryPkgs = False then  exit ;
  AHandled:= True ;
  if mtSelectedPkgNo.State = dsBrowse then
  mtSelectedPkgNo.Edit ;
  if mtSelectedPkgNomarkerad.AsInteger = 0 then
  mtSelectedPkgNomarkerad.AsInteger:= 1
  else
  mtSelectedPkgNomarkerad.AsInteger:= 0 ;
  mtSelectedPkgNo.Post ;
 End ;
end;

procedure TfPickPkgNoTork.FormDestroy(Sender: TObject);
begin
 With dmInventory do
 Begin
  mtSelectedPkgNo.Active:= False ;
 End ;
end;

procedure TfPickPkgNoTork.FormKeyPress(Sender: TObject; var Key: Char);
begin
// if LoadEnabled then
// Begin
  if (Key = #13) and (Length(tePackageNo.Text) > 0) then
  Begin
   Try
//    ScanningPkgNo(Sender, tePackageNo.Text) ;
    GetProductNoByPackageNoEntered(Sender, tePackageNo.Text) ;
   // SaveLoad ;
    tePackageNo.Text:= '' ;
   Except
    tePackageNo.Text:= '' ;
   End ;
  End//if (Key = #13) and (Length(tePackageNo.Text) > 0) then
  else
  if (Key = #8) and (Length(tePackageNo.Text) > 0) then
  Begin
   Try
    if Length(TempEditString) > 1 then
    TempEditString  := Copy(TempEditString, 1, Length(TempEditString) - 1)
    else
    TempEditString  := '' ;
    tePackageNo.Text  := TempEditString ;
   Except
//    tePackageNo.Text:= '' ;
   End ;
  End//if (Key = #13) and (Length(tePackageNo.Text) > 0) then

  else
   Begin
//    if (acStart.Caption = 'Stoppa inläsning med skanner F10') then
     if key in ['0','1','2','3','4','5','6','7','8','9'] then
      tePackageNo.Text:= tePackageNo.Text + Key ;
   End ;
//  End ;//if sender
// End ;



 TempEditString := tePackageNo.Text ;

end;

function TfPickPkgNoTork.IdentifyPackageSupplier(
  const PkgNo : Integer;
  var PkgSupplierCode: String3;
  Var ProductNo : Integer;
  Var Res_UserName : String) : TEditAction ;
const
  NO_USER_HAS_THIS_PACKAGE_RESERVED = '0' ;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
Var SupplierNo : Integer;
begin
 With dmInventory do
 Begin
 //check that package is available in inventory and Get supplier code
//                        ShowMessage('ThisUser.UserName+Self.Name ' + ThisUser.UserName+'/'+Self.Name);
    PkgSupplierCode := dmsSystem.PkgNoToSuppCode_ByLIPNo(PkgNo, cds_KilnChargeHdrBeforeKiln_LIPNo.AsInteger, SupplierNo, ProductNo);
    if PkgSupplierCode = '' then
    Begin
      Result := eaREJECT;
    End
    else
      Result := eaACCEPT ;
//check that no user has reserved the package
  {     if dmsSystem.Pkg_Reserved(
          PkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name then
          begin
           Result := eaACCEPT ;
          end
        else
         begin
          MessageBeep(MB_ICONEXCLAMATION);
          Result := eaReserved ; //eaREJECT;
        end;  }
 End;//With
end;


(*
procedure TfPickPkgNoTork.GetFull(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Error             : Boolean ;
  NewValue          : String;
  PkgSupplierCode   : String3;
  Action            : TEditAction;
  ProductNo         : Integer ;
  Save_Cursor       : TCursor;
  Res_UserName      : String ;
  ErrorText,
  RegPointName      : String ;
begin
 if Key <> VK_RETURN then
  Exit ;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }


  try
  Error := False ;
    { Do some lengthy operation }
//   NewValue := DisplayValue ;//TdxTreeList((Sender as TdxTreeListColumn).TreeList).EditingText;


   NewValue := IntToStr(StrToIntDef(mePackageNo.Text,0)) ;

   Action := IdentifyPackageSupplier(
      StrToInt(NewValue),
      PkgSupplierCode,
      ProductNo,
      Res_UserName );

  if Action = eaACCEPT then
  Begin
  // AddPkgsToVagn(Sender, StrToInt(NewValue),PkgSupplierCode, ProductNo) ;
   //dmPkgs.mtLoadPackages.Insert ;
   //AddPkgToGrid(Sender, StrToInt(NewValue),PkgSupplierCode, ProductNo) ;
   Error  := False ;
  End
   else
   if Action = eaREJECT then
    Begin
     Error     := True ;
     ErrorText  := 'Paketnr '+NewValue+' finns inte' ;
    End
    else
     if Action = eaReserved then
     Begin
      Error     := True ;
      ErrorText := 'Paketnr '+NewValue+' är reserverat av användare '+Res_UserName ;
     End
      else
       if Action = eaAlreadyAvReg then
       Begin
        Error     := True ;
        ErrorText := 'Paketnr ' + NewValue + '/' + PkgSupplierCode + ' är redan avregistrerat mot mätpunkt ' + RegPointName ;
       End ;

    if Error then
    begin
   //  if mtUserPropGroupByBox.AsInteger = 0 then
      ShowMessage(ErrorText) ;
    end;

  finally
    Screen.Cursor         := Save_Cursor;  { Always restore to normal }
  //  TAvRegPkgNo.Enabled   := True ;
  end;
end;
*)


procedure TfPickPkgNoTork.CreateFilter(const PackageNo : Integer;const SupplierCode  : String) ;
Var ProductNo : Integer ;
Begin
 With dmInventory do
 Begin
  ProductNo := GetProductNoByPackageNoproductno(PackageNo, SupplierCode) ;
  if ProductNo > -1 then
  Begin
    mtFilter.Edit ;
    mtFilterProductNo.AsInteger := ProductNo ;
    mtFilter.Post ;
  End;
 End;
End;

function TfPickPkgNoTork.GetProductNoByPackageNoEntered(Sender: TObject;const PackageNo : String) : Integer ;
var
  PkgSupplierCode   : String3;
  PkgSupplierNo     : Integer ;
  Action            : TEditAction;
  ProductNo         : Integer ;
  Save_Cursor       : TCursor;
  Res_UserName      : String ;
  ProductLengthNo   : Integer ;
  NoOfLengths       : Integer ;
  Error             : Boolean ;
  NewPkgNo          : Integer ;
  PktNrLevKod       : String3 ;//Lev koden i paketnrsträngen
begin
 With dmInventory do
 Begin
  NewPkgNo := 0 ;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }
   if Length(Trim(PackageNo)) > 0 then
   Begin
    if Length(Trim(PackageNo)) > 10 then
    Begin //LÅNGA KODEN
     Try
     NewPkgNo := StrToInt(Copy(PackageNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr)) ;
     Except
      on E: EConvertError do
         ShowMessage(E.ClassName + E.Message);
     End ;
     if NewPkgNo < 1 then
      Exit ;
     PktNrLevKod      := Copy(PackageNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
     PkgSupplierCode  := dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;

 //    if dmLoadEntrySSP.PkgExistInInventory(NewPkgNo, dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger, PkgSupplierCode) then
 //    Action := eaAccept
 //    else
 //    Action :=  eaABANDON ;

    End
     else //Length < 11
      Begin
       NewPkgNo:= StrToIntDef(PackageNo,0) ;
       if NewPkgNo = 0 then
       Begin
        ShowMessage(siLangLinked_fPickPkgNoTork.GetTextOrDefault('IDS_0' (* 'Koden kunde inte översättas till ett Paketnr' *) )) ;
        Exit ;
       End ;


        Action := IdentifyPackageSupplier(
        NewPkgNo,
        PkgSupplierCode,
        ProductNo, Res_UserName);
      End ;
   End ; //if StrToInt(Trim(PackageNo)) > 0 then

   if NewPkgNo > 0 then
   Begin




//Får inte använda post själv, det gör rutinen automatiskt
  if Action = eaACCEPT then
  Begin
   // AddPkgTo_cds_LoadPackages(Sender, NewPkgNo,PkgSupplierCode) ;
  //  AddPkgsToVagn(Sender, NewPkgNo,PkgSupplierCode, ProductNo) ;
   CreateFilter(NewPkgNo,PkgSupplierCode) ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage(siLangLinked_fPickPkgNoTork.GetTextOrDefault('IDS_1' (* 'Paketnr ' *) ) + IntToStr(NewPkgNo) + siLangLinked_fPickPkgNoTork.GetTextOrDefault('IDS_2' (* ' finns inte i lager ' *) ) ) ;
     Error      := True ;
    End
    else
     if Action = eaReserved then
      Begin
       ShowMessage(siLangLinked_fPickPkgNoTork.GetTextOrDefault('IDS_1' (* 'Paketnr ' *) ) + IntToStr(NewPkgNo) + siLangLinked_fPickPkgNoTork.GetTextOrDefault('IDS_4' (* ' är reserverat av ' *) ) + Res_UserName) ;
       Error      := True ;
      End
      else
       if Action = eaDuplicate then
        Begin
         ShowMessage(siLangLinked_fPickPkgNoTork.GetTextOrDefault('IDS_1' (* 'Paketnr ' *) ) + IntToStr(NewPkgNo) +siLangLinked_fPickPkgNoTork.GetTextOrDefault('IDS_6' (* ' är redan inmatat' *) )) ;
         Error      := True ;
        End ;
    End
     else
      Begin
       ShowMessage(siLangLinked_fPickPkgNoTork.GetTextOrDefault('IDS_7' (* 'Paketnr saknas.' *) )) ;
       Error      := True ;
      End ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;//With
end;

end.
