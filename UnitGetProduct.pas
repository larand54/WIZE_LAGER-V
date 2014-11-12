unit UnitGetProduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems,
  ImgList, DB, kbmMemTable, StdCtrls, Buttons, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxSplitter, cxPC, cxLookAndFeels, cxLabel, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Menus,
  cxLookAndFeelPainters, ActnList, cxButtons, cxGroupBox, cxRadioGroup,
  cxDBEdit, cxGridCustomPopupMenu, cxGridPopupMenu ;

type
  TfrmGetProduct = class(TForm)
    Panel2: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    Panel1: TPanel;
    bbSok: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    meAT: TcxTextEdit;
    meAB: TcxTextEdit;
    PageControl: TcxPageControl;
    tsProduktLista: TcxTabSheet;
    tsAnpassadLista: TcxTabSheet;
    grdProdList: TcxGrid;
    grdProdListDBTableView1: TcxGridDBTableView;
    grdProdListDBTableView1ProductNo: TcxGridDBColumn;
    grdProdListDBTableView1ProductGroupNo: TcxGridDBColumn;
    grdProdListDBTableView1GradeName: TcxGridDBColumn;
    grdProdListDBTableView1SpeciesName: TcxGridDBColumn;
    grdProdListDBTableView1SurfacingName: TcxGridDBColumn;
    grdProdListDBTableView1ProductCategoryName: TcxGridDBColumn;
    grdProdListDBTableView1ActualThicknessMM: TcxGridDBColumn;
    grdProdListDBTableView1ActualWidthMM: TcxGridDBColumn;
    grdProdListDBTableView1NominalThicknessMM: TcxGridDBColumn;
    grdProdListDBTableView1NominalWidthMM: TcxGridDBColumn;
    grdProdListDBTableView1ProductDisplayName: TcxGridDBColumn;
    grdProdListDBTableView1GradeNo: TcxGridDBColumn;
    grdProdListDBTableView1SpeciesNo: TcxGridDBColumn;
    grdProdListDBTableView1ProductCategoryNo: TcxGridDBColumn;
    grdProdListDBTableView1SurfacingNo: TcxGridDBColumn;
    grdProdListDBTableView1NominalThicknessINCH: TcxGridDBColumn;
    grdProdListDBTableView1NominalWidthINCH: TcxGridDBColumn;
    grdProdListLevel1: TcxGridLevel;
    grdCustDimProdDBTableView1: TcxGridDBTableView;
    grdCustDimProdLevel1: TcxGridLevel;
    grdCustDimProd: TcxGrid;
    grdCustDimProdDBTableView1ProductNo: TcxGridDBColumn;
    grdCustDimProdDBTableView1ProductGroupNo: TcxGridDBColumn;
    grdCustDimProdDBTableView1GradeName: TcxGridDBColumn;
    grdCustDimProdDBTableView1SpeciesName: TcxGridDBColumn;
    grdCustDimProdDBTableView1SurfacingName: TcxGridDBColumn;
    grdCustDimProdDBTableView1ProductCategoryName: TcxGridDBColumn;
    grdCustDimProdDBTableView1ActualThicknessMM: TcxGridDBColumn;
    grdCustDimProdDBTableView1ActualWidthMM: TcxGridDBColumn;
    grdCustDimProdDBTableView1NominalThicknessMM: TcxGridDBColumn;
    grdCustDimProdDBTableView1NominalWidthMM: TcxGridDBColumn;
    grdCustDimProdDBTableView1ProductDisplayName: TcxGridDBColumn;
    grdCustDimProdDBTableView1GradeNo: TcxGridDBColumn;
    grdCustDimProdDBTableView1SpeciesNo: TcxGridDBColumn;
    grdCustDimProdDBTableView1ProductCategoryNo: TcxGridDBColumn;
    grdCustDimProdDBTableView1SurfacingNo: TcxGridDBColumn;
    grdCustDimProdDBTableView1NominalThicknessINCH: TcxGridDBColumn;
    grdCustDimProdDBTableView1NominalWidthINCH: TcxGridDBColumn;
    grdCustDimProdDBTableView1NT: TcxGridDBColumn;
    grdCustDimProdDBTableView1NW: TcxGridDBColumn;
    cxLookAndFeelController1: TcxLookAndFeelController;
    bbProdReg: TBitBtn;
    tsKundProdukter: TcxTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    grdClientProd: TcxGrid;
    grdClientProdDBTableView1: TcxGridDBTableView;
    grdClientProdDBTableView1PRODUKT: TcxGridDBColumn;
    grdClientProdDBTableView1LNGD: TcxGridDBColumn;
    grdClientProdDBTableView1PKTKOD: TcxGridDBColumn;
    grdClientProdDBTableView1INTPRODUKT: TcxGridDBColumn;
    grdClientProdDBTableView1ClientNo: TcxGridDBColumn;
    grdClientProdDBTableView1ProductNo: TcxGridDBColumn;
    grdClientProdDBTableView1ProductGroupNo: TcxGridDBColumn;
    grdClientProdDBTableView1ProductLengthNo: TcxGridDBColumn;
    grdClientProdDBTableView1CustomThickness: TcxGridDBColumn;
    grdClientProdDBTableView1CustomWidth: TcxGridDBColumn;
    grdClientProdDBTableView1CustomLength: TcxGridDBColumn;
    grdClientProdDBTableView1PcsPerPkg: TcxGridDBColumn;
    grdClientProdDBTableView1PriceUnitNo: TcxGridDBColumn;
    grdClientProdDBTableView1VolumeUnitNo: TcxGridDBColumn;
    grdClientProdDBTableView1PackageTypeNo: TcxGridDBColumn;
    grdClientProdDBTableView1ProdInstruNo: TcxGridDBColumn;
    grdClientProdLevel1: TcxGridLevel;
    PanelSelectedProducts: TPanel;
    Panel6: TPanel;
    mtLager: TkbmMemTable;
    mtLagerProductLengthNo: TIntegerField;
    dsLager: TDataSource;
    cxLabel3: TcxLabel;
    dsMarkedProd: TDataSource;
    grdSelectedProductsDBTableView1: TcxGridDBTableView;
    grdSelectedProductsLevel1: TcxGridLevel;
    grdSelectedProducts: TcxGrid;
    grdSelectedProductsDBTableView1ProductNo: TcxGridDBColumn;
    grdSelectedProductsDBTableView1Produkt: TcxGridDBColumn;
    cxButton1: TcxButton;
    ActionList1: TActionList;
    acDeleteSelectedProduct: TAction;
    mtProduct: TkbmMemTable;
    mtProductProductNo: TIntegerField;
    mtProductGradeStampNo: TIntegerField;
    mtProductBarCodeNo: TIntegerField;
    mtProductTotalPcs: TIntegerField;
    mtProductProductGroupNo: TIntegerField;
    mtProductAT: TFloatField;
    mtProductAB: TFloatField;
    mtProductSpeciesNo: TIntegerField;
    mtProductSurfacingNo: TIntegerField;
    mtProductGradeNo: TIntegerField;
    mtProductNT: TFloatField;
    mtProductNB: TFloatField;
    mtProductProductCategoryNo: TIntegerField;
    mtProductMarketRegionNo: TIntegerField;
    mtProductTagNo: TIntegerField;
    mtProductMarknadsRegion: TStringField;
    mtProductActive: TIntegerField;
    mtProductSizeFormat: TIntegerField;
    mtProductLengthFormat: TIntegerField;
    mtProductVolumeFormat: TIntegerField;
    mtProductLanguageCode: TIntegerField;
    dsProduct: TDataSource;
    lcGrade: TcxDBLookupComboBox;
    lcSpecies: TcxDBLookupComboBox;
    lcSurfacing: TcxDBLookupComboBox;
    lcImpreg: TcxDBLookupComboBox;
    Label6: TLabel;
    grdSelectedProductsDBTableView1ProductLengthNo: TcxGridDBColumn;
    grdSelectedProductsDBTableView1Tab: TcxGridDBColumn;
    grdSelectedProductsDBTableView1ProductGroupNo: TcxGridDBColumn;
    grdSelectedProductsDBTableView1NT: TcxGridDBColumn;
    grdSelectedProductsDBTableView1NB: TcxGridDBColumn;
    grdSelectedProductsDBTableView1PRODUKTDESC: TcxGridDBColumn;
    grdSelectedProductsDBTableView1LengthDesc: TcxGridDBColumn;
    acSearch: TAction;
    acProductRegister: TAction;
    acOK: TAction;
    acClearFilter: TAction;
    bbClearFilter: TBitBtn;
    cxSplitter1: TcxSplitter;
    rgSequenceNo: TcxDBRadioGroup;
    mtProductVaruSlag: TIntegerField;
    PopupMenu1: TPopupMenu;
    GtillATfltet1: TMenuItem;
    acCreateProduct: TAction;
    bbSkapaProdukt: TBitBtn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    acEditProdukt: TAction;
    pmProduktList: TdxBarPopupMenu;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    mtLagerLengthSpec: TStringField;
    mtLagerALMM: TFloatField;
    cbLengthSpec: TcxDBComboBox;
    procedure grdProductListDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdProdListDBTableView1DblClick(Sender: TObject);
    procedure grdClientProdDBTableView1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure grdCustDimProdDBTableView1DblClick(Sender: TObject);
    procedure acDeleteSelectedProductExecute(Sender: TObject);
    procedure acDeleteSelectedProductUpdate(Sender: TObject);
    procedure acSearchExecute(Sender: TObject);
    procedure acProductRegisterExecute(Sender: TObject);
    procedure acClearFilterExecute(Sender: TObject);
    procedure grdProdListDBTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure acOKUpdate(Sender: TObject);
    procedure bbOKClick(Sender: TObject);
    procedure rgSequenceNoPropertiesChange(Sender: TObject);
    procedure GtillATfltet1Click(Sender: TObject);
    procedure acCreateProductExecute(Sender: TObject);
    procedure acCreateProductUpdate(Sender: TObject);
    procedure acProductRegisterUpdate(Sender: TObject);
    procedure acEditProduktExecute(Sender: TObject);
    procedure acEditProduktUpdate(Sender: TObject);
    procedure mtLagerLengthSpecChange(Sender: TField);
  private
    { Private declarations }
    SQLText : AnsiString ;
    procedure LoadLengthGroupNames ;
    procedure BuildSQL(Sender: TObject);
    procedure BuildCustomDimSQL(Sender: TObject);
    procedure BuildClientProductSQL(Sender: TObject);
    procedure InsertToSelectedProducts(const ProductNo, ProductGroupNo, ProductLengthNo, Tab : Integer;
              const AT,AB, NT, NB, NL  : Double;
              const Produkt, LengthDesc : String;
              const SequenceNo, CheckAktiv : Integer) ;
  public
    { Public declarations }
    ClientNo : Integer ;
    EnableProductRegisterButton : Boolean ;
    procedure RefreshSok(Sender: TObject);
  end;

//var frmGetProduct: TfrmGetProduct;

implementation

uses dmcProduct, VidaUtils, VidaConst, VidaUser, dmsDataConn ,
  dmsVidaSystem, uProductForm;

{$R *.dfm}

function ReplaceCommas_II(S : String) : String ;
begin
  { Convert commas to period }
// if StrToFloatDef(S,0) = 0 then
  while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
 if StrToFloatDef(S,0) = 0 then
  while Pos('.', S) > 0 do
    S[Pos('.', S)] := ',';
 Result:= S ;
end;


procedure TfrmGetProduct.grdProductListDblClick(Sender: TObject);
begin
 ModalResult:= mrOk;
end;

procedure TfrmGetProduct.BuildSQL(Sender: TObject);
Var AT, AB : Double ;
 TS, kv, ut : String ;
 sAND : Boolean ;
begin
 sAnd:= False ;
 Try
 AT:= StrToFloatDef(meAT.Text,0) ;
 Except
 End ;

 Try
 AB:= StrToFloatDef(meAB.Text,0) ;
 Except
 End ;

{ Try
 kv:= Trim(meKV.Text) ;
 Except
 End ;

 Try
 TS:= Trim(meTS.Text) ;
 Except
 End ;

 Try
 UT:= Trim(meUT.Text) ;
 Except
 End ;
 }

 With dmProduct do
 Begin
  cds_ProdList.SQL.Clear ;
  cds_ProdList.SQL.Add('SELECT pd.ProductNo, pg.ProductGroupNo, gd.GradeName,') ;
  cds_ProdList.SQL.Add('sc.SpeciesName, sf.SurfacingName, pc.ProductCategoryName,') ;
  cds_ProdList.SQL.Add('pg.ActualThicknessMM, pg.ActualWidthMM, pg.NominalThicknessMM, pg.NominalWidthMM,') ;
  cds_ProdList.SQL.Add('pd.ProductDisplayName, pd.GradeNo, pg.SpeciesNo, pg.ProductCategoryNo,') ;
  cds_ProdList.SQL.Add('pg.SurfacingNo, pg.NominalThicknessINCH, pg.NominalWidthINCH, pg.SequenceNo,') ;
  cds_ProdList.SQL.Add('pd.Act AS ProductAct, pg.Act AS ProductGroupAct, sc.Act AS SpeciesAct,') ;
  cds_ProdList.SQL.Add('sf.Act AS SurfacingAct, pc.Act AS ImpAct, gd.Act AS GradeAct') ;

  cds_ProdList.SQL.Add('FROM dbo.ProductGroup pg') ;
  cds_ProdList.SQL.Add('Left Outer JOIN  dbo.Product pd ON pd.ProductGroupNo = pg.ProductGroupNo') ;
//  cds_ProdList.SQL.Add('Left Outer JOIN  dbo.Grade gd2 ON gd2.GradeNo = pd.GradeNo') ;
//  cds_ProdList.SQL.Add('AND gd2.LanguageCode = 1 AND gd2.Act = 1') ;
  cds_ProdList.SQL.Add('Inner Join dbo.Grade gd ON gd.GradeNo = pd.GradeNo') ;
  cds_ProdList.SQL.Add('AND gd.LanguageCode = 1 AND gd.Act = 1 ') ;
  if mtProductGradeNo.AsInteger > 0 then
   cds_ProdList.SQL.Add('AND gd.GradeNo = ' + mtProductGradeNo.AsString) ;

  cds_ProdList.SQL.Add('INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCategoryNo = pc.ProductCategoryNo') ;
  cds_ProdList.SQL.Add('AND pc.LanguageCode = 1') ;
  cds_ProdList.SQL.Add('INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo') ;
  cds_ProdList.SQL.Add('AND sc.LanguageCode = 1') ;

  cds_ProdList.SQL.Add('INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.SurfacingNo') ;
  cds_ProdList.SQL.Add('AND sf.LanguageCode = 1') ;


  cds_ProdList.SQL.Add('WHERE ') ;
  cds_ProdList.SQL.Add('pg.SequenceNo = ' + mtProductVaruSlag.AsString) ;
  cds_ProdList.SQL.Add('AND pd.Act = 1 AND pg.Act = 1 AND sc.Act = 1 AND sf.Act = 1 AND pc.Act = 1') ;
//  cds_ProdList.SQL.Add('AND ((pd.ProductNo=:ProductNo) OR (0 =:ProductNo))') ;
//  cds_ProdList.SQL.Add('AND sf.LanguageCode=:LanguageCode') ;



  if mtProductSpeciesNo.AsInteger > 0 then  cds_ProdList.SQL.Add('AND Pg.SpeciesNo = ' + mtProductSpeciesNo.AsString) ;
  if mtProductSurfacingNo.AsInteger > 0 then  cds_ProdList.SQL.Add('AND Pg.SurfacingNo = ' + mtProductSurfacingNo.AsString) ;
  if mtProductProductCategoryNo.AsInteger > 0 then  cds_ProdList.SQL.Add('AND Pg.ProductCategoryNo = ' + mtProductProductCategoryNo.AsString) ;

  if AT > 0 then  cds_ProdList.SQL.Add('AND pg.ActualThicknessMM = '+ReplaceCommas(meAT.Text)) ;
  if AB > 0 then  cds_ProdList.SQL.Add('AND pg.ActualWidthMM = '+ReplaceCommas(meAB.Text)) ;

//  if ThisUser.UserID = 8 then cds_ProdList.SQL.SaveToFile('cds_ProdList.txt') ;

 End ; //with
End ;

procedure TfrmGetProduct.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then begin
    Key := #0;
//    if (Sender is TdxdBGrid) then
//      TdxdBGrid(Sender).Perform(WM_KeyDown,VK_Tab,0)
//    else
      Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfrmGetProduct.FormCreate(Sender: TObject);
begin
 EnableProductRegisterButton  := True ;
 Try                                                          
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdProdListDBTableView1.Name, grdProdListDBTableView1) ;
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdCustDimProdDBTableView1.Name, grdCustDimProdDBTableView1) ;
 Except
 End ;
 With dmProduct do
 Begin
  SQLText:=  cds_ProdList.SQL.Text ;
 End ;
 LoadLengthGroupNames ;
end;

procedure TfrmGetProduct.LoadLengthGroupNames ;
Begin
 With dmsSystem do
 Begin
  cbLengthSpec.Properties.Items.Clear ;
  TcxComboBoxProperties(grdSelectedProductsDBTableView1LengthDesc.Properties).Items.Clear ;
//  TcxComboBoxProperties(grdAvropRowTVLengthSpec.Properties).Items.Clear ;
  with ad_LenGrpName do
  begin
//    DisableControls;
    Active  := True ;
    Try
    First;
    while not Eof do
    begin
      TcxComboBoxProperties(grdSelectedProductsDBTableView1LengthDesc.Properties).Items.Add(FieldByName('GroupName').AsString);
//      TcxComboBoxProperties(grdAvropRowTVLengthSpec.Properties).Items.Add(FieldByName('GroupName').AsString);
      cbLengthSpec.Properties.Items.Add(FieldByName('GroupName').AsString);
      Next;
    end;
    Finally
     Active  := False ;
    End ;
//    EnableControls;
  end;
 End ;//With dmcOrder do
End ;

procedure TfrmGetProduct.FormShow(Sender: TObject);
begin

  With dmProduct do
   begin
    cds_Species.Filter          := 'LanguageCode = 1 AND ACT = 1' ;
    cds_Species.Filtered        := True ;
    cds_grade.Filter            := 'LanguageCode = 1 AND ACT = 1' ;
    cds_grade.Filtered          := True ;
    cds_Surfacing.Filter        := 'LanguageCode = 1 AND ACT = 1' ;
    cds_Surfacing.Filtered      := True ;
    cds_ProdCatg.Filter         := 'LanguageCode = 1 AND ACT = 1' ;
    cds_ProdCatg.Filtered       := True ;
{
    cds_ProductLength.Active    := False ;
    cds_ProductLength.Active    := True ; }
    cds_ProdCatg.Active         := False ;
    cds_ProdCatg.Active         := True ;
    cds_Surfacing.Active        := False ;
    cds_Surfacing.Active        := True ;
    cds_Species.Active          := False ;
    cds_Species.Active          := True ;
    cds_StatCode.Active         := False ;
    cds_StatCode.Active         := True ;
    cds_grade.Active            := False;
    cds_grade.Active            := True ;

   End ;//With

 mtLager.Active   := True ;
 mtLager.Insert ;
// mtLagerProductLengthNo.AsInteger := 533 ;
 mtLagerLengthSpec.AsString       := '3-DM' ;
 mtLager.Post ;
 
 mtProduct.Active := True ;
 mtProduct.Insert ;
 mtProductVaruSlag.AsInteger  := 0 ;
 mtProduct.Post ;
 With dmProduct do
 Begin
  cds_grade.Active      := False ;
  cds_grade.Active      := True ;
  mtMarkedProd.Active   := False ;
  mtMarkedProd.Active   := True ;
 End ;

  dmProduct.cds_ProdList.Active:= False ;
//  dmProduct.cds_ProdList.ParamByName('LanguageCode').AsInteger := 1 ;
//  dmProduct.cds_ProdList.ParamByName('ProductNo').AsInteger    := -1 ;
//  SQL:= dmProduct.cds_ProdList.SQL.Text ;
//  BuildSQL(Sender) ;

//  dmProduct.cds_ProdList.Active:= True ;

  meAT.SetFocus ;
end;

procedure TfrmGetProduct.grdProdListDBTableView1DblClick(Sender: TObject);
begin
 With dmProduct do
 Begin
  if cds_ProdListGradeNo.AsInteger > 1 then
  Begin
  if PageControl.HideTabs = True then
  Begin
   mtMarkedProd.Active:= False ;
   mtMarkedProd.Active:= True ;
  End ;                        

  InsertToSelectedProducts(
  cds_ProdListProductNo.AsInteger,
  cds_ProdListProductGroupNo.AsInteger,
  mtLagerProductLengthNo.AsInteger,
  1,
  cds_ProdListActualThicknessMM.AsFloat,
  cds_ProdListActualWidthMM.AsFloat,

  cds_ProdListNominalThicknessMM.AsFloat,
  cds_ProdListNominalWidthMM.AsFloat,

  mtLagerALMM.AsFloat,
  cds_ProdListProductDisplayName.AsString,
  mtLagerLengthSpec.AsString,
  cds_ProdListSequenceNo.AsInteger,
  1
  ) ;
  End ;
 End ;

end;

procedure TfrmGetProduct.grdClientProdDBTableView1DblClick(
  Sender: TObject);
begin
 With dmProduct do
 Begin
  InsertToSelectedProducts(
  cds_CliProdListProductNo.AsInteger,
  cds_CliProdListProductGroupNo.AsInteger,
  cds_CliProdListProductLengthNo.AsInteger,
  3,
  cds_CliProdListActualThicknessMM.AsFloat,
  cds_CliProdListActualWidthMM.AsFloat,

  cds_CliProdListCustomThickness.AsFloat,
  cds_CliProdListCustomWidth.AsFloat,

  cds_CliProdListCustomLength.AsFloat,
  cds_CliProdListPRODUKT.AsString,
  cds_CliProdListCustomLength.AsString,
  cds_ProdListSequenceNo.AsInteger,
  1) ;
 End ;
end;

procedure TfrmGetProduct.BuildClientProductSQL(Sender: TObject);
Var AT, AB : Double ;
 TS, kv, ut : String ;
 sAND : Boolean ;
begin
 sAnd:= False ;
 Try
 AT:= StrToFloatDef(meAT.Text,0) ;
 Except
 End ;

 Try
 AB:= StrToFloatDef(meAB.Text,0) ;
 Except
 End ;

{ Try
 kv:= Trim(meKV.Text) ;
 Except
 End ;

 Try
 TS:= Trim(meTS.Text) ;
 Except
 End ;

 Try
 UT:= Trim(meUT.Text) ;
 Except
 End ;
 }



 With dmProduct do
 Begin

  cds_CliProdList.SQL.Clear ;
  cds_CliProdList.SQL.Add('Select cpd.ClientProductDisplayText AS PRODUKT,') ;
  cds_CliProdList.SQL.Add('cpd.LengthDescription AS LÄNGD,') ;
  cds_CliProdList.SQL.Add('pc.PackageCodeno AS PKTKOD,') ;
  cds_CliProdList.SQL.Add('p.ProductDisplayName AS INTPRODUKT,') ;
  cds_CliProdList.SQL.Add('cpd.ClientNo,') ;
  cds_CliProdList.SQL.Add('cpd.ProductNo,') ;
  cds_CliProdList.SQL.Add('cpd.ProductGroupNo,') ;
  cds_CliProdList.SQL.Add('cpd.ProductLengthNo,') ;
  cds_CliProdList.SQL.Add('cpd.CustomThickness,') ;
  cds_CliProdList.SQL.Add('cpd.CustomWidth,') ;
  cds_CliProdList.SQL.Add('cpd.CustomLength,') ;
  cds_CliProdList.SQL.Add('cpd.PcsPerPkg,') ;
  cds_CliProdList.SQL.Add('cpd.PriceUnitNo,') ;
  cds_CliProdList.SQL.Add('cpd.VolumeUnitNo,') ;
  cds_CliProdList.SQL.Add('cpd.PackageTypeNo,') ;
  cds_CliProdList.SQL.Add('cpd.ProdInstruNo,') ;
  cds_CliProdList.SQL.Add('cpd.LengthTyp, pg.ActualThicknessMM, pg.ActualWidthMM') ;

  cds_CliProdList.SQL.Add('From dbo.ClientProductDescription cpd') ;
  cds_CliProdList.SQL.Add('Inner Join dbo.Product p on p.ProductNo = cpd.ProductNo') ;
  cds_CliProdList.SQL.Add('Left Outer Join dbo.PackageCode pc on pc.PackageTypeNo = cpd.packagetypeno') ;

  cds_CliProdList.SQL.Add('INNER JOIN      dbo.ProductGroup pg ON p.ProductGroupNo = pg.ProductGroupNo') ;
  cds_CliProdList.SQL.Add('INNER JOIN      dbo.Grade gd ON p.GradeNo = gd.GradeNo') ;
  cds_CliProdList.SQL.Add('AND gd.LanguageCode = 1') ;

  cds_CliProdList.SQL.Add('INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo') ;
  cds_CliProdList.SQL.Add('AND sc.LanguageCode = 1') ;

  cds_CliProdList.SQL.Add('INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.SurfacingNo') ;
  cds_CliProdList.SQL.Add('AND sf.LanguageCode = 1') ;

//  cds_CliProdList.SQL.Add('WHERE ') ;
  cds_CliProdList.SQL.Add('WHERE cpd.ClientNo = :ClientNo') ;
  cds_CliProdList.SQL.Add('AND p.Act = 1 AND pg.Act = 1 AND sc.Act = 1 AND sf.Act = 1 AND gd.Act = 1') ;
//  cds_CliProdList.SQL.Add('((pd.ProductNo=:ProductNo) OR (0 =:ProductNo))') ;
//  cds_CliProdList.SQL.Add('AND sf.LanguageCode=:LanguageCode') ;
  Sand := True ;

{   if kv > ' ' then cds_CliProdList.SQL.Add('AND Gd.GradeCode = '+QuotedStr(Kv)) ;

   if TS > ' ' then  cds_CliProdList.SQL.Add('AND SC.SpeciesCode = '+QuotedStr(TS)) ;

   if UT > ' ' then  cds_CliProdList.SQL.Add('AND Sf.SurfacingCode = '+QuotedStr(UT)) ; }

  if mtProductGradeNo.AsInteger > 0 then cds_CliProdList.SQL.Add('AND P.GradeNo = ' + mtProductGradeNo.AsString) ;
  if mtProductSpeciesNo.AsInteger > 0 then  cds_CliProdList.SQL.Add('AND Pg.SpeciesNo = ' + mtProductSpeciesNo.AsString) ;
  if mtProductSurfacingNo.AsInteger > 0 then  cds_CliProdList.SQL.Add('AND Pg.SurfacingNo = ' + mtProductSurfacingNo.AsString) ;
  if mtProductProductCategoryNo.AsInteger > 0 then  cds_CliProdList.SQL.Add('AND Pg.ProductCategoryNo = ' + mtProductProductCategoryNo.AsString) ;

   if AT > 0 then  cds_CliProdList.SQL.Add('AND pg.ActualThicknessMM = '+ReplaceCommas(meAT.Text)) ;
   if AB > 0 then  cds_CliProdList.SQL.Add('AND pg.ActualWidthMM = '+ReplaceCommas(meAB.Text)) ;


//  cds_CliProdList.SQL.SaveToFile('cds_CliProdList.txt') ;

 End ; //with
End ;

procedure TfrmGetProduct.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
//Kolla så att inte
 Try
// grdProdListDBTableView1.StoreToIniFile(dmsConnector.InifilesMap+'ViskGetProduct'+'.'+ThisUser.UserName,False,[],'');
// grdCustDimProdDBTableView1.StoreToIniFile(dmsConnector.InifilesMap+'ViskGetProduct'+'.'+ThisUser.UserName,False,[],'');

 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdProdListDBTableView1.Name, grdProdListDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdCustDimProdDBTableView1.Name, grdCustDimProdDBTableView1) ;
 Except
 End ;
 With dmProduct do
 Begin
  cds_ProdList.SQL.Text:= SQLText ;
 End ;
// mtLager.Active:= False ;


  With dmProduct do
   begin
{
    cds_ProductLength.Active    := False ;
    cds_ProductLength.Active    := True ; }
//    cds_ProdCatg.Active         := False ;

{    cds_Surfacing.Active        := False ;

    cds_Species.Active          := False ;

    cds_StatCode.Active         := False ;

    cds_grade.Active            := False;}
   End ;//With

 CanClose:= True ;
end;

procedure TfrmGetProduct.BuildCustomDimSQL(Sender: TObject);
Var AT, AB : Double ;
 TS, kv, ut : String ;
 sAND : Boolean ;
begin
 sAnd:= False ;
 Try
 AT:= StrToFloatDef(meAT.Text,0) ;
 Except
 End ;

 Try
 AB:= StrToFloatDef(meAB.Text,0) ;
 Except
 End ;

{ Try
 kv:= Trim(meKV.Text) ;
 Except
 End ;

 Try
 TS:= Trim(meTS.Text) ;
 Except
 End ;

 Try
 UT:= Trim(meUT.Text) ;
 Except
 End ;               }


 With dmProduct do
 Begin
  cds_CliProdList.SQL.Clear ;
  cds_CliProdList.SQL.Add('SELECT CSDLR.NT, CSDLR.NW, pd.ProductNo, pg.ProductGroupNo, gd.GradeName,') ;
  cds_CliProdList.SQL.Add('sc.SpeciesName, sf.SurfacingName, pc.ProductCategoryName,') ;
  cds_CliProdList.SQL.Add('pg.ActualThicknessMM, pg.ActualWidthMM, pg.NominalThicknessMM, pg.NominalWidthMM,') ;
  cds_CliProdList.SQL.Add('pd.ProductDisplayName, pd.GradeNo, pg.SpeciesNo, pg.ProductCategoryNo,') ;
  cds_CliProdList.SQL.Add('pg.SurfacingNo, pg.NominalThicknessINCH, pg.NominalWidthINCH') ;
  cds_CliProdList.SQL.Add('FROM dbo.Product pd') ;
  cds_CliProdList.SQL.Add('INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.ProductGroupNo') ;

  cds_CliProdList.SQL.Add('INNER JOIN dbo.Users usr on usr.userid = '+inttostr(thisuser.UserID) ) ;
  cds_CliProdList.SQL.Add('INNER JOIN dbo.CustomSalesDimListRows CSDLR on CSDLR.ProductNo = pd.ProductNo') ;
  cds_CliProdList.SQL.Add('AND CSDLR.CustomSalesDimListNo = usr.CustomSalesDimListNo') ;

  cds_CliProdList.SQL.Add('INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo') ;
  cds_CliProdList.SQL.Add('AND gd.LanguageCode = 1') ;

  cds_CliProdList.SQL.Add('INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCategoryNo = pc.ProductCategoryNo') ;
  cds_CliProdList.SQL.Add('AND pc.LanguageCode = 1') ;
  cds_CliProdList.SQL.Add('INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo') ;
  cds_CliProdList.SQL.Add('AND sc.LanguageCode = 1') ;

  cds_CliProdList.SQL.Add('INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.SurfacingNo') ;
  cds_CliProdList.SQL.Add('AND sf.LanguageCode = 1') ;


  cds_CliProdList.SQL.Add('WHERE ') ;
  cds_CliProdList.SQL.Add('pd.Act = 1 AND pg.Act = 1 AND sc.Act = 1 AND sf.Act = 1 AND gd.Act = 1') ;

//  cds_CliProdList.SQL.Add('AND ((pd.ProductNo=:ProductNo) OR (0 =:ProductNo))') ;
//  cds_CliProdList.SQL.Add('AND sf.LanguageCode=:LanguageCode') ;


{  if kv > ' ' then cds_CliProdList.SQL.Add('AND GD.GradeCode = '+QuotedStr(Kv)) ;
  if TS > ' ' then  cds_CliProdList.SQL.Add('AND SC.SpeciesCode = '+QuotedStr(TS)) ;
  if UT > ' ' then  cds_CliProdList.SQL.Add('AND SF.SurfacingCode = '+QuotedStr(UT)) ; }

  if mtProductGradeNo.AsInteger > 0 then cds_CliProdList.SQL.Add('AND Pd.GradeNo = ' + mtProductGradeNo.AsString) ;
  if mtProductSpeciesNo.AsInteger > 0 then  cds_CliProdList.SQL.Add('AND Pg.SpeciesNo = ' + mtProductSpeciesNo.AsString) ;
  if mtProductSurfacingNo.AsInteger > 0 then  cds_CliProdList.SQL.Add('AND PG.SurfacingNo = ' + mtProductSurfacingNo.AsString) ;
  if mtProductProductCategoryNo.AsInteger > 0 then  cds_CliProdList.SQL.Add('AND PG.ProductCategoryNo = ' + mtProductProductCategoryNo.AsString) ;

  if AT > 0 then  cds_CliProdList.SQL.Add('AND pg.ActualThicknessMM = '+ReplaceCommas(meAT.Text)) ;
  if AB > 0 then  cds_CliProdList.SQL.Add('AND pg.ActualWidthMM = '+ReplaceCommas(meAB.Text)) ;

//  if ThisUser.UserID = 8 then   cds_CliProdList.SQL.SaveToFile('cds_CliProdList.txt') ;

 End ; //with
End ;


procedure TfrmGetProduct.grdCustDimProdDBTableView1DblClick(
  Sender: TObject);
begin
 With dmProduct do
 Begin
  InsertToSelectedProducts(
  cds_ProdListCustProductNo.AsInteger,
  cds_ProdListCustProductGroupNo.AsInteger,
  mtLagerProductLengthNo.AsInteger,
  2,
  cds_ProdListActualThicknessMM.AsFloat,
  cds_ProdListActualWidthMM.AsFloat,

  cds_ProdListCustNT.AsFloat,
  cds_ProdListCustNW.AsFloat,

  mtLagerALMM.AsFloat,
  cds_ProdListCustProductDisplayName.AsString,
  mtLagerLengthSpec.AsString,
  cds_ProdListSequenceNo.AsInteger,
  1) ;

 End ;

end;

procedure TfrmGetProduct.RefreshSok(Sender: TObject);
Var
 Save_Cursor : TCursor;
 SQL : AnsiString ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

  dmProduct.cds_ProdList.Active:= False ;
  SQL:= dmProduct.cds_ProdList.SQL.Text ;
  BuildSQL(Sender) ;
  dmProduct.cds_ProdList.Active:= True ;


 Finally
  dmProduct.cds_ProdList.SQL.Text:= SQL ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmGetProduct.acDeleteSelectedProductExecute(Sender: TObject);
begin
 With dmProduct do
 Begin
  mtMarkedProd.Delete ;
 End ;
end;

procedure TfrmGetProduct.acDeleteSelectedProductUpdate(Sender: TObject);
begin
 With dmProduct do
 Begin
  acDeleteSelectedProduct.Enabled:= (mtMarkedProd.Active) and (mtMarkedProd.RecordCount > 0) ;
 End ;
end;

procedure TfrmGetProduct.InsertToSelectedProducts(const ProductNo, ProductGroupNo, ProductLengthNo, Tab : Integer;
const AT, AB, NT, NB, NL  : Double;
const Produkt, LengthDesc : String;
const SequenceNo, CheckAktiv : Integer) ;
begin
 With dmProduct do
 Begin
  if CheckAktiv = 1 then
  Begin
  if cds_ProdListProductAct.AsInteger <> 1 then
  Begin
   ShowMessage('Produkten är avaktiverad');
   Exit ;
  End ;

  if cds_ProdListProductGroupAct.AsInteger <> 1 then
  Begin
   ShowMessage('Produktgruppen är avaktiverad');
   Exit ;
  End ;

  if cds_ProdListSpeciesAct.AsInteger <> 1 then
  Begin
   ShowMessage('Träslaget är avaktiverad');
   Exit ;
  End ;

  if cds_ProdListSurfacingAct.AsInteger <> 1 then
  Begin
   ShowMessage('Utförandet är avaktiverad');
   Exit ;
  End ;

  if cds_ProdListImpAct.AsInteger <> 1 then
  Begin
   ShowMessage('Impregneringstypen är avaktiverad');
   Exit ;
  End ;

  if cds_ProdListGradeAct.AsInteger <> 1 then
  Begin
   ShowMessage('Kvaliteten är avaktiverad');
   Exit ;
  End ;
  End ;//CheckAktiv


  if not mtMarkedProd.Locate('ProductNo;ProductLengthNo', VarArrayOf([ProductNo, ProductLengthNo]), []) then
  Begin
   mtMarkedProd.Insert ;
   mtMarkedProdProductNo.AsInteger        := ProductNo ;
   mtMarkedProdProductLengthNo.AsInteger  := ProductLengthNo ;
   mtMarkedProdProductGroupNo.AsInteger   := ProductGroupNo ;
   mtMarkedProdAT.AsFloat                 := AT ;
   mtMarkedProdAW.AsFloat                 := AB ;
   mtMarkedProdNT.AsFloat                 := NT ;
   mtMarkedProdNB.AsFloat                 := NB ;
   mtMarkedProdTab.AsInteger              := Tab ;
   mtMarkedProdPRODUKTDESC.AsString       := Produkt ;
   if SequenceNo = 0 then
   mtMarkedProdLengthDesc.AsString        := LengthDesc ;
   mtMarkedProdNL.AsFloat                 := NL ;
   mtMarkedProd.Post ;
  End ;
 End ;//With dmProduct
End ;


procedure TfrmGetProduct.acSearchExecute(Sender: TObject);
Var
 Save_Cursor : TCursor;
 SQL : AnsiString ;
begin

  if mtProductVaruSlag.IsNull then
  Begin
   ShowMessage('Välj ett varuslag!');
   Exit ;
  End ;

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 if (PageControl.ActivePage = tsProduktLista)
  or (PageControl.ActivePage = tsKundProdukter) then
 Begin
  dmProduct.cds_ProdList.Active:= False ;
  SQL:= dmProduct.cds_ProdList.SQL.Text ;
  BuildSQL(Sender) ;
  dmProduct.cds_ProdList.Active:= True ;
  if (dmProduct.cds_ProdList.RecordCount > 0) and (mtProductGradeNo.AsInteger > 0) then
   if not dmProduct.cds_ProdList.Locate('GradeNo', mtProductGradeNo.AsInteger, []) then
    ShowMessage('Kvalitet ' + lcGrade.Text + ' hittades inte, klicka på ProduktRegister knappen för att skapa den');

  dmProduct.cds_CliProdList.Active:= False ;
  BuildClientProductSQL(Sender) ;
  dmProduct.cds_CliProdList.ParamByName('ClientNo').AsInteger:= ClientNo ;
  dmProduct.cds_CliProdList.Active:= True ;

  if (PageControl.ActivePage = tsProduktLista) and (dmProduct.cds_ProdList.RecordCount > 0) then
  Begin
   grdProdList.SetFocus ;
  End
   else
     if (PageControl.ActivePage = tsKundProdukter) and (dmProduct.cds_CliProdList.RecordCount > 0) then
    Begin
     grdClientProd.SetFocus ;
    End ;
 End // if PageControl.ActivePage = tsProduktLista then
 else
 Begin
  dmProduct.cds_ProdListCust.Active:= False ;
  BuildCustomDimSQL(Sender) ;
  dmProduct.cds_ProdListCust.Active:= True ;
{  if (dmProduct.cds_ProdListCust.RecordCount > 0) then
  Begin
   grdCustDimProd.SetFocus ;
  End
   else
    Begin
     meAT.SetFocus ;
    End ; }
 End ;

 Finally
//  dmProduct.cds_ProdList.SQL.Text:= SQL ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;


procedure TfrmGetProduct.acProductRegisterExecute(Sender: TObject);
var fProductForm    : TfProductForm ;
    ProductGroupNo  : Integer ;
    NT, NB          : Double;
begin
 With dmProduct do
 Begin
  if mtProductVaruSlag.IsNull then
  Begin
   ShowMessage('Varuslag saknas');
   Exit ;
  End ;

  if StrToFloatDef(ReplaceCommas_II(meAT.Text),0) < 1 then
  Begin
   ShowMessage('Tjocklek saknas');
   Exit ;
  End ;

  if StrToFloatDef(ReplaceCommas_II(meAB.Text),0) < 1 then
  Begin
   ShowMessage('Bredd saknas');
   Exit ;
  End ;

  if mtProductSpeciesNo.AsInteger < 1 then
  Begin
   ShowMessage('Träslag saknas');
   Exit ;
  End ;

  if mtProductSurfacingNo.AsInteger < 1 then
  Begin
   ShowMessage('Utförande saknas');
   Exit ;
  End ;

  if mtProductProductCategoryNo.AsInteger < 1 then
  Begin
   ShowMessage('"IMP" saknas');
   Exit ;
  End ;

 ProductGroupNo:= GetProductGroupNo (mtProductVaruSlag.AsInteger, NT, NB,
 StrToFloatDef(ReplaceCommas_II(meAT.Text),0),
 StrToFloatDef(ReplaceCommas_II(meAB.Text),0),
 mtProductSpeciesNo.AsInteger,
 mtProductSurfacingNo.AsInteger,
 mtProductProductCategoryNo.AsInteger) ;

 fProductForm:= TfProductForm.Create(Nil);
 Try
  fProductForm.ShowSearchProduct:= False ;
  fProductForm.cds_PrdGrp.Active  := False ;
  fProductForm.cds_PrdGrp.ParamByName('ProductGroupNo').AsInteger := ProductGroupNo ;
  fProductForm.cds_PrdGrp.Active  := True ;
//  if (ProductGroupNo > -1) and (fProductForm.cds_PrdGrp.FindKey([ProductGroupNo])) then
  if fProductForm.cds_PrdGrp.RecordCount > 0 then
   Begin
    fProductForm.cds_Products.Active                       := False ;
    fProductForm.cds_Products.Active                       := True ;
//    cds_ProductGroupLengths.Active            := False ;
//    cds_ProductGroupLengths.Active            := True ;

    if not fProductForm.cds_Products.Locate('GradeNo', mtProductGradeNo.AsInteger, []) then
    Begin
     fProductForm.cds_Products.Insert ;
     fProductForm.cds_ProductsGradeNo.AsInteger             := mtProductGradeNo.AsInteger ;
     fProductForm.cds_Products.Post ;
    End ;
   End
   else
   Begin
    fProductForm.cds_Products.Active                       := False ;
    fProductForm.cds_Products.Active                       := True ;
//    cds_ProductGroupLengths.Active            := False ;
//    cds_ProductGroupLengths.Active            := True ;
    fProductForm.cds_PrdGrp.Insert ;
    fProductForm.cds_PrdGrpActualThicknessMM.AsFloat       := StrToFloatDef(ReplaceCommas_II(meAT.Text),0) ;
    fProductForm.cds_PrdGrpActualWidthMM.AsFloat           := StrToFloatDef(ReplaceCommas_II(meAB.Text),0) ;
    fProductForm.cds_PrdGrpSpeciesNo.AsInteger             := mtProductSpeciesNo.AsInteger ;
    fProductForm.cds_PrdGrpSurfacingNo.AsInteger           := mtProductSurfacingNo.AsInteger ;
    fProductForm.cds_PrdGrpProductCategoryNo.AsInteger     := mtProductProductCategoryNo.AsInteger ;

    fProductForm.cds_Products.Insert ;
    fProductForm.cds_ProductsGradeNo.AsInteger             := mtProductGradeNo.AsInteger ;
    fProductForm.cds_Products.Post ;
   End ;

  fProductForm.ShowModal ;
  acSearchExecute(Sender) ;
 Finally
  FreeAndNil(fProductForm) ;
 End ;
 End ; //with
End;

procedure TfrmGetProduct.acClearFilterExecute(Sender: TObject);
Var Varuslag : Integer ;
begin
 rgSequenceNo.Properties.OnChange:= nil ;
 Try
 Varuslag         := mtProductVaruSlag.AsInteger ;

 mtProduct.Active := False ;
 mtProduct.Active := True ;

 mtProduct.Insert ;
 mtProductVaruSlag.AsInteger  := Varuslag ;
 mtProduct.Post ;

 meAT.Text        := '' ;
 meAB.Text        := '' ;
 Finally
  rgSequenceNo.Properties.OnChange:= rgSequenceNoPropertiesChange ;
 End ;
end;

procedure TfrmGetProduct.grdProdListDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 //ShowMessage(inttostr(key));
 if Key = 32 then
 With dmProduct do
 Begin
  if PageControl.HideTabs = True then
  Begin
   mtMarkedProd.Active:= False ;
   mtMarkedProd.Active:= True ;
  End ;

  InsertToSelectedProducts(
  cds_ProdListProductNo.AsInteger,
  cds_ProdListProductGroupNo.AsInteger,
  mtLagerProductLengthNo.AsInteger,
  1,
  cds_ProdListActualThicknessMM.AsFloat,
  cds_ProdListActualWidthMM.AsFloat,

  cds_ProdListNominalThicknessMM.AsFloat,
  cds_ProdListNominalWidthMM.AsFloat,

  mtLagerALMM.AsFloat,
  cds_ProdListProductDisplayName.AsString,
  mtLagerLengthSpec.AsString,
  cds_ProdListSequenceNo.AsInteger,
  1  ) ;
 End ;//with
end;

procedure TfrmGetProduct.acOKUpdate(Sender: TObject);
begin
 With dmProduct do
 Begin
  acOK.Enabled:= (cds_ProdList.Active) and (cds_ProdListGradeNo.AsInteger > 1) ;
 End ;
end;

procedure TfrmGetProduct.bbOKClick(Sender: TObject);
begin
 With dmProduct do
 Begin
  if PageControl.HideTabs = True then
  Begin
   mtMarkedProd.Active:= False ;
   mtMarkedProd.Active:= True ;

  if PageControl.ActivePage = tsProduktLista then
  InsertToSelectedProducts(
  cds_ProdListProductNo.AsInteger,
  cds_ProdListProductGroupNo.AsInteger,
  mtLagerProductLengthNo.AsInteger,
  1,
  cds_ProdListActualThicknessMM.AsFloat,
  cds_ProdListActualWidthMM.AsFloat,

  cds_ProdListNominalThicknessMM.AsFloat,
  cds_ProdListNominalWidthMM.AsFloat,

  mtLagerALMM.AsFloat,
  cds_ProdListProductDisplayName.AsString,
  mtLagerLengthSpec.AsString,
  cds_ProdListSequenceNo.AsInteger,
  0  ) ;
  End ;

(*  if PageControl.ActivePage = tsProduktLista then
  InsertToSelectedProducts(
  cds_ProdListProductNo.AsInteger,
  cds_ProdListProductGroupNo.AsInteger,
  mtLagerProductLengthNo.AsInteger,
  1,
  cds_ProdListNominalThicknessMM.AsFloat,
  cds_ProdListNominalWidthMM.AsFloat,
  mtLagerNLMM.AsFloat,
  cds_ProdListProductDisplayName.AsString,
  mtLagerALMM.AsString
  )
  else
  if PageControl.ActivePage = tsKundProdukter then
  InsertToSelectedProducts(
  cds_CliProdListProductNo.AsInteger,
  cds_CliProdListProductGroupNo.AsInteger,
  cds_CliProdListProductLengthNo.AsInteger,
  3,
  cds_CliProdListCustomThickness.AsFloat,
  cds_CliProdListCustomWidth.AsFloat,
  cds_CliProdListCustomLength.AsFloat,
  cds_CliProdListPRODUKT.AsString,
  cds_CliProdListCustomLength.AsString) 

  else
  if PageControl.ActivePage = tsAnpassadLista then
  InsertToSelectedProducts(
  cds_ProdListCustProductNo.AsInteger,
  cds_ProdListCustProductGroupNo.AsInteger,
  mtLagerProductLengthNo.AsInteger,
  2,
  cds_ProdListCustNT.AsFloat,
  cds_ProdListCustNW.AsFloat,
  mtLagerNLMM.AsFloat,
  cds_ProdListCustProductDisplayName.AsString,
  mtLagerALMM.AsString) ;
  *)
 End ;
end;

procedure TfrmGetProduct.rgSequenceNoPropertiesChange(Sender: TObject);
begin
 Case mtProductVaruSlag.AsInteger of
  0 : Begin
       grdProdListDBTableView1ActualThicknessMM.Caption     := 'AT' ;
       grdProdListDBTableView1ActualWidthMM.Caption         := 'AB' ;
       grdProdListDBTableView1NominalThicknessMM.Visible    := True ;
       grdProdListDBTableView1NominalWidthMM.Visible        := True ;
       grdProdListDBTableView1NominalThicknessINCH.Visible  := True ;
       grdProdListDBTableView1NominalWidthINCH.Visible      := True ;
       grdProdListDBTableView1ActualThicknessMM.Visible     := True ;
       grdProdListDBTableView1ActualWidthMM.Visible         := True ;       
      End ;
  1 : Begin
       grdProdListDBTableView1ActualThicknessMM.Caption     := 'Diameter(cm)' ;
       grdProdListDBTableView1ActualWidthMM.Caption         := 'Längd(cm)' ;
       grdProdListDBTableView1NominalThicknessMM.Visible    := False ;
       grdProdListDBTableView1NominalWidthMM.Visible        := False ;
       grdProdListDBTableView1NominalThicknessINCH.Visible  := False ;
       grdProdListDBTableView1NominalWidthINCH.Visible      := False ;
       grdProdListDBTableView1ActualThicknessMM.Visible     := True ;
       grdProdListDBTableView1ActualWidthMM.Visible         := True ;
      End ;
  2 : Begin
       grdProdListDBTableView1ActualThicknessMM.Caption     := 'Bredd(cm)' ;
       grdProdListDBTableView1ActualWidthMM.Caption         := 'Längd(cm)' ;
       grdProdListDBTableView1ActualThicknessMM.Visible     := False ;
       grdProdListDBTableView1ActualWidthMM.Visible         := False ;

       grdProdListDBTableView1NominalThicknessMM.Visible    := False ;
       grdProdListDBTableView1NominalWidthMM.Visible        := False ;
       grdProdListDBTableView1NominalThicknessINCH.Visible  := False ;
       grdProdListDBTableView1NominalWidthINCH.Visible      := False ;
      End ;
 End ;
 acSearchExecute(Sender) ;
end;

procedure TfrmGetProduct.GtillATfltet1Click(Sender: TObject);
begin
 meAT.SetFocus ;
end;

procedure TfrmGetProduct.acCreateProductExecute(Sender: TObject);
var //fProductForm    : TfProductForm ;
    ProductGroupNo  : Integer ;
    NT, NB          : Double;
begin
 With dmProduct do
 Begin
  if mtProductVaruSlag.IsNull then
  Begin
   ShowMessage('Varuslag saknas');
   Exit ;
  End ;

  if StrToFloatDef(ReplaceCommas_II(meAT.Text),0) < 1 then
  Begin
   ShowMessage('Tjocklek saknas');
   Exit ;
  End ;

  if StrToFloatDef(ReplaceCommas_II(meAB.Text),0) < 1 then
  Begin
   ShowMessage('Bredd saknas');
   Exit ;
  End ;

  if mtProductSpeciesNo.AsInteger < 1 then
  Begin
   ShowMessage('Träslag saknas');
   Exit ;
  End ;

  if mtProductSurfacingNo.AsInteger < 1 then
  Begin
   ShowMessage('Utförande saknas');
   Exit ;
  End ;

  if mtProductProductCategoryNo.AsInteger < 1 then
  Begin
   ShowMessage('"IMP" saknas');
   Exit ;
  End ;

    if dmProduct.mtMarkedProd.state in [dsBrowse] then
     dmProduct.mtMarkedProd.Edit ;
    dmProduct.mtMarkedProdProductGroupNo.AsInteger  := -1 ;
    dmProduct.mtMarkedProd.Post ;

 ProductGroupNo:= GetProductGroupNo (mtProductVaruSlag.AsInteger, NT, NB,
 StrToFloatDef(ReplaceCommas_II(meAT.Text),0),
 StrToFloatDef(ReplaceCommas_II(meAB.Text),0),
 mtProductSpeciesNo.AsInteger,
 mtProductSurfacingNo.AsInteger,
 mtProductProductCategoryNo.AsInteger) ;








{  if (ProductGroupNo > -1) and (cds_PrdGrp.FindKey([ProductGroupNo])) then
   Begin
    cds_Products.Active                       := False ;
    cds_Products.Active                       := True ;
    if not cds_Products.Locate('GradeNo', mtProductGradeNo.AsInteger, []) then
    Begin
     cds_Products.Insert ;
     cds_ProductsGradeNo.AsInteger             := mtProductGradeNo.AsInteger ;
     cds_Products.Post ;
    End ;
   End
   else
   Begin
    cds_Products.Active                       := False ;
    cds_Products.Active                       := True ;
    cds_PrdGrp.Insert ;
    cds_PrdGrpActualThicknessMM.AsFloat       := StrToFloatDef(ReplaceCommas_II(meAT.Text),0) ;
    cds_PrdGrpActualWidthMM.AsFloat           := StrToFloatDef(ReplaceCommas_II(meAB.Text),0) ;
    cds_PrdGrpSpeciesNo.AsInteger             := mtProductSpeciesNo.AsInteger ;
    cds_PrdGrpSurfacingNo.AsInteger           := mtProductSurfacingNo.AsInteger ;
    cds_PrdGrpProductCategoryNo.AsInteger     := mtProductProductCategoryNo.AsInteger ;

    cds_Products.Insert ;
    cds_ProductsGradeNo.AsInteger             := mtProductGradeNo.AsInteger ;
    cds_Products.Post ;
   End ; }


//  Close ;

 End ; //with
End;

procedure TfrmGetProduct.acCreateProductUpdate(Sender: TObject);
begin
 With dmProduct do
 Begin
  acCreateProduct.Enabled:= (cds_ProdList.Active) and (cds_ProdList.RecordCount = 0) ;
 End ;
end;

procedure TfrmGetProduct.acProductRegisterUpdate(Sender: TObject);
begin
 acProductRegister.Enabled  := EnableProductRegisterButton ;
end;

procedure TfrmGetProduct.acEditProduktExecute(Sender: TObject);
var fProductForm    : TfProductForm ;
    ProductGroupNo  : Integer ;
begin
 With dmProduct do
 Begin

 ProductGroupNo:= cds_ProdListProductGroupNo.AsInteger ;

 fProductForm:= TfProductForm.Create(Nil);
 Try
  fProductForm.ShowSearchProduct:= False ;
  if (ProductGroupNo > -1) and (fProductForm.cds_PrdGrp.FindKey([ProductGroupNo])) then
   Begin
    fProductForm.cds_Products.Active                       := False ;
    fProductForm.cds_Products.Active                       := True ;
//    cds_ProductGroupLengths.Active            := False ;
//    cds_ProductGroupLengths.Active            := True ;

    if not fProductForm.cds_Products.Locate('GradeNo', cds_ProdListGradeNo.AsInteger, []) then
    Begin
     Abort ;
    End ;
   End ;

  fProductForm.ShowModal ;
//  acSearchExecute(Sender) ;
 Finally
  FreeAndNil(fProductForm) ;
 End ;
 End ; //with
End;

procedure TfrmGetProduct.acEditProduktUpdate(Sender: TObject);
begin
 With dmProduct do
 Begin
  acEditProdukt.Enabled:= (cds_ProdList.Active) and (cds_ProdList.RecordCount > 0)
  and (EnableProductRegisterButton) ;
 End ;
end;

procedure TfrmGetProduct.mtLagerLengthSpecChange(Sender: TField);
Var rLength         : String ;
    ProductLengthNo : Integer ;
begin
// With dmcOrder do
// Begin
//  Error  := False ;
  //Get Productlength for entered ALMM
  Try
   rLength  := (Sender AS TField).AsString ;


//   ProductLengthNo  := dmsSystem.GetProductLengthNoByUserLengthSpec(rLength) ;
// Get ProductLengthNo for mm, fot eller tum längd. Finns inte längden för fot och tum
// måste user ange mm längden.
//Beroende på vilken längd som anges skall den enhet user matade in längden i också sparas för att presentera
//eller kanske bättre att man har ett nytt fält där texten sparas till, tror det.

//   ProductLengthNo  := dmsSystem.GetProductLengthNoByALMM(rLength) ;
   ProductLengthNo  := dmsSystem.GetProductLengthNoByUserLengthSpec(TRIM(rLength)) ;
{   if ProductLengthNo = -1 then
   Begin
    ProductLengthNo := dmProduct.CreateNewLength(rLength) ;
    dmProduct.cds_Prod_Lengths.Active := False ;
    dmProduct.cds_Prod_Lengths.Active := True ;
    dmProduct.cds_PL.Active           := False ;
    dmProduct.cds_PL.Active           := True ;
    mtLagerALMM.RefreshLookupList ;
   End ; }
   if ProductLengthNo > -1 then
   Begin
    mtLagerALMM.AsFloat               := dmsSystem.GetALMMByProductLengthNo(ProductLengthNo) ;
    mtLagerProductLengthNo.AsInteger  := ProductLengthNo ;
   End

  Except
   //Error := True ;
  End ;
// End ;//With
end;

end.


