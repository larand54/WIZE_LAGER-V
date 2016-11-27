{$IFDEF PROFILE} {$WARNINGS OFF} {$ENDIF }
unit UnitGetProd_II;

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
  cxDBEdit, cxGridCustomPopupMenu, cxGridPopupMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cxImageComboBox, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxNavigator,
  dxSkinsdxBarPainter, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxBarBuiltInMenu, siComp, siLngLnk, System.Actions {$IFNDEF PROFILE};{$ELSE}{},Profint;{$ENDIF}

type
  TfrmGetProd_II = class(TForm)
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
    acSearch: TAction;
    acProductRegister: TAction;
    acOK: TAction;
    acClearFilter: TAction;
    bbClearFilter: TBitBtn;
    cxSplitter1: TcxSplitter;
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
    ds_Species: TDataSource;
    ds_grade: TDataSource;
    ds_Surfacing: TDataSource;
    ds_ProdCatg: TDataSource;
    ds_ProdList: TDataSource;
    cds_ProdList: TFDQuery;
    cds_Species: TFDQuery;
    cds_Grade: TFDQuery;
    cds_Surfacing: TFDQuery;
    cds_ProdCatg: TFDQuery;
    cds_GradeGradeNo: TIntegerField;
    cds_GradeGradeName: TStringField;
    cds_GradeGradeCode: TStringField;
    cds_GradeGradeCodeName: TStringField;
    cds_SurfacingSurfacingNo: TIntegerField;
    cds_SurfacingSurfacingName: TStringField;
    cds_SurfacingSurfacingCodeName: TStringField;
    cds_ProdCatgProductCategoryNo: TIntegerField;
    cds_ProdCatgProductCategoryName: TStringField;
    cds_ProdCatgImpCodeName: TStringField;
    cds_SpeciesSpeciesNo: TIntegerField;
    cds_SpeciesSpeciesName: TStringField;
    cds_SpeciesSpeciesCodeName: TStringField;
    cds_ProdListSequenceNo: TIntegerField;
    cds_ProdListProductNo: TIntegerField;
    cds_ProdListProductGroupNo: TIntegerField;
    cds_ProdListGradeName: TStringField;
    cds_ProdListSpeciesName: TStringField;
    cds_ProdListSurfacingName: TStringField;
    cds_ProdListActualThicknessMM: TFloatField;
    cds_ProdListActualWidthMM: TFloatField;
    cds_ProdListNominalThicknessMM: TFloatField;
    cds_ProdListNominalWidthMM: TFloatField;
    cds_ProdListProductDisplayName: TStringField;
    cds_ProdListGradeNo: TIntegerField;
    cds_ProdListSpeciesNo: TIntegerField;
    cds_ProdListProductCategoryNo: TIntegerField;
    cds_ProdListSurfacingNo: TIntegerField;
    cds_ProdListNominalThicknessINCH: TStringField;
    cds_ProdListNominalWidthINCH: TStringField;
    cds_ProdListProductCategoryName: TStringField;
    cds_ProdListProductAct: TIntegerField;
    cds_ProdListProductGroupAct: TIntegerField;
    cds_ProdListSpeciesAct: TIntegerField;
    cds_ProdListSurfacingAct: TIntegerField;
    cds_ProdListImpAct: TIntegerField;
    cds_ProdListGradeAct: TIntegerField;
    Label7: TLabel;
    icVaruslag: TcxDBImageComboBox;
    siLangLinked_frmGetProd_II: TsiLangLinked;
    cds_GetVaruSlagNo: TFDQuery;
    cds_GetVaruSlagNoSalesRegionNo: TIntegerField;
    cds_GetVaruSlagNoVaruslagNo: TIntegerField;
    procedure grdProductListDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdProdListDBTableView1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acDeleteSelectedProductExecute(Sender: TObject);
    procedure acDeleteSelectedProductUpdate(Sender: TObject);
    procedure acSearchExecute(Sender: TObject);
    procedure acProductRegisterExecute(Sender: TObject);
    procedure acClearFilterExecute(Sender: TObject);
    procedure grdProdListDBTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure acOKUpdate(Sender: TObject);
    procedure bbOKClick(Sender: TObject);
    procedure GtillATfltet1Click(Sender: TObject);
    procedure acCreateProductExecute(Sender: TObject);
    procedure acCreateProductUpdate(Sender: TObject);
    procedure acProductRegisterUpdate(Sender: TObject);
    procedure acEditProduktExecute(Sender: TObject);
    procedure acEditProduktUpdate(Sender: TObject);
    procedure icVaruslagPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    LanguageCode  : String ;
    function  GetVaruSlagNo (const SalesRegionNo : Integer) : Integer ;
    procedure BuildSQL(Sender: TObject);
    procedure InsertToSelectedProducts(const ProductNo, ProductGroupNo : Integer;
              const AT,AB, NT, NB : Double;
              const Produkt : String;
              const SequenceNo, CheckAktiv : Integer;
              const NIT, NIW  : String) ;
  public
    { Public declarations }
    ClientNo : Integer ;
    EnableProductRegisterButton : Boolean ;
    procedure RefreshSok(Sender: TObject);
  end;

//var frmGetProd_II: TfrmGetProd_II;

implementation

uses VidaUtils, VidaConst, VidaUser, dmsDataConn ,
     dmsVidaSystem , dmsVidaContact;//, uProductForm;

{$R *.dfm}

function ReplaceCommas_II(S : String) : String ;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1828 or $6ECA0000; xor eax,eax; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
  { Convert commas to period }
// if StrToFloatDef(S,0) = 0 then
  while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
 if StrToFloatDef(S,0) = 0 then
  while Pos('.', S) > 0 do
    S[Pos('.', S)] := ',';
 Result:= S ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1828; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;


procedure TfrmGetProd_II.grdProductListDblClick(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1829 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 ModalResult:= mrOk;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1829; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmGetProd_II.BuildSQL(Sender: TObject);
Var AT, AB : Double ;
 TS, kv, ut : String ;
 sAND : Boolean ;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1830 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
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

// With dmProduct do
// Begin
  cds_ProdList.SQL.Clear ;
  cds_ProdList.SQL.Add('SELECT pd.ProductNo, pg.ProductGroupNo, gd.GradeName,') ;
  cds_ProdList.SQL.Add('sc.SpeciesName, sf.SurfacingName, pc.ProductCategoryName,') ;
  cds_ProdList.SQL.Add('pg.ActualThicknessMM, pg.ActualWidthMM, pg.NominalThicknessMM, pg.NominalWidthMM,') ;
  cds_ProdList.SQL.Add('pde.ProductDisplayName, pd.GradeNo, pg.SpeciesNo, pg.ProductCategoryNo,') ;
  cds_ProdList.SQL.Add('pg.SurfacingNo, pg.NominalThicknessINCH, pg.NominalWidthINCH, pg.SequenceNo,') ;
  cds_ProdList.SQL.Add('pd.Act AS ProductAct, pg.Act AS ProductGroupAct, sc.Act AS SpeciesAct,') ;
  cds_ProdList.SQL.Add('sf.Act AS SurfacingAct, pc.Act AS ImpAct, gd.Act AS GradeAct') ;

  cds_ProdList.SQL.Add('FROM dbo.ProductGroup pg') ;
  cds_ProdList.SQL.Add('Left Outer JOIN  dbo.Product pd ON pd.ProductGroupNo = pg.ProductGroupNo') ;
  cds_ProdList.SQL.Add('Left Outer JOIN  dbo.ProductDesc pde ON pde.ProductNo = pd.ProductNo') ;
  cds_ProdList.SQL.Add('AND pde.LanguageID = ' + LanguageCode) ;
//  cds_ProdList.SQL.Add('Left Outer JOIN  dbo.Grade gd2 ON gd2.GradeNo = pd.GradeNo') ;
//  cds_ProdList.SQL.Add('AND gd2.LanguageCode = 1 AND gd2.Act = 1') ;
  cds_ProdList.SQL.Add('Inner Join dbo.Grade gd ON gd.GradeNo = pd.GradeNo') ;
  cds_ProdList.SQL.Add('AND gd.LanguageCode = ' + LanguageCode) ;// AND gd.Act = 1 ') ;
  if mtProductGradeNo.AsInteger > 0 then
   cds_ProdList.SQL.Add('AND gd.GradeNo = ' + mtProductGradeNo.AsString) ;

  cds_ProdList.SQL.Add('INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCategoryNo = pc.ProductCategoryNo') ;
  cds_ProdList.SQL.Add('AND pc.LanguageCode = ' + LanguageCode) ;
  cds_ProdList.SQL.Add('INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo') ;
  cds_ProdList.SQL.Add('AND sc.LanguageCode = ' + LanguageCode) ;

  cds_ProdList.SQL.Add('INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.SurfacingNo') ;
  cds_ProdList.SQL.Add('AND sf.LanguageCode = ' + LanguageCode) ;


  cds_ProdList.SQL.Add('WHERE ') ;
  cds_ProdList.SQL.Add('pg.SequenceNo = ' + mtProductVaruSlag.AsString) ;
  cds_ProdList.SQL.Add('AND pd.Act = 1 AND pg.Act = 1 AND sc.Act = 1 AND sf.Act = 1 AND pc.Act = 1 AND gd.Act = 1') ;
//  cds_ProdList.SQL.Add('AND ((pd.ProductNo=:ProductNo) OR (0 =:ProductNo))') ;
//  cds_ProdList.SQL.Add('AND sf.LanguageCode=:LanguageCode') ;



  if mtProductSpeciesNo.AsInteger > 0 then  cds_ProdList.SQL.Add('AND Pg.SpeciesNo = ' + mtProductSpeciesNo.AsString) ;
  if mtProductSurfacingNo.AsInteger > 0 then  cds_ProdList.SQL.Add('AND Pg.SurfacingNo = ' + mtProductSurfacingNo.AsString) ;
  if mtProductProductCategoryNo.AsInteger > 0 then  cds_ProdList.SQL.Add('AND Pg.ProductCategoryNo = ' + mtProductProductCategoryNo.AsString) ;

  if AT > 0 then  cds_ProdList.SQL.Add('AND pg.ActualThicknessMM = '+ReplaceCommas(meAT.Text)) ;
  if AB > 0 then  cds_ProdList.SQL.Add('AND pg.ActualWidthMM = '+ReplaceCommas(meAB.Text)) ;

//  if ThisUser.UserID = 8 then cds_ProdList.SQL.SaveToFile('cds_ProdList.txt') ;

// End ; //with
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1830; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
End ;

procedure TfrmGetProd_II.FormKeyPress(Sender: TObject; var Key: Char);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1831 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
if Key = #13 then begin
    Key := #0;
//    if (Sender is TdxdBGrid) then
//      TdxdBGrid(Sender).Perform(WM_KeyDown,VK_Tab,0)
//    else
      Perform(Wm_NextDlgCtl,0,0);
  end;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1831; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmGetProd_II.FormCreate(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1832 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}

 LanguageCode := inttostr(ThisUser.LanguageID) ;
 EnableProductRegisterButton  := True ;
 Try
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdProdListDBTableView1.Name, grdProdListDBTableView1) ;
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdCustDimProdDBTableView1.Name, grdCustDimProdDBTableView1) ;
 Except
 End ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1832; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

function TfrmGetProd_II.GetVaruSlagNo (const SalesRegionNo : Integer) : Integer ;
Begin
  cds_GetVaruSlagNo.ParamByName('SalesRegionNo').AsInteger  := SalesRegionNo ;
  cds_GetVaruSlagNo.Active  := True ;
  Try
  if not cds_GetVaruSlagNo.Eof then
   Result := cds_GetVaruSlagNoVaruslagNo.AsInteger
    else
     Result := -1 ;
  Finally
    cds_GetVaruSlagNo.Active  := False ;
  End;
End;

procedure TfrmGetProd_II.FormShow(Sender: TObject);
Var VaruSlagNo : integer ;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1833 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}

 VaruSlagNo := GetVaruSlagNo(dmsContact.GetSalesRegionNo(ThisUser.CompanyNo)) ;

 mtProduct.Active := True ;
 mtProduct.Insert ;
 if VaruSlagNo > -1 then
  mtProductVaruSlag.AsInteger  := VaruSlagNo
   else
    mtProductVaruSlag.AsInteger  := 0 ;
 mtProduct.Post ;
// With dmProduct do
// Begin
  cds_grade.Active      := False ;
  cds_grade.ParamByName('LanguageCode').AsInteger  :=  ThisUser.LanguageID ;
  cds_grade.Active      := True ;

  cds_Species.Active      := False ;
  cds_Species.ParamByName('LanguageCode').AsInteger  :=  ThisUser.LanguageID ;
  cds_Species.Active      := True ;

  cds_Surfacing.Active      := False ;
  cds_Surfacing.ParamByName('LanguageCode').AsInteger  :=  ThisUser.LanguageID ;
  cds_Surfacing.Active      := True ;

  cds_ProdCatg.Active      := False ;
  cds_ProdCatg.ParamByName('LanguageCode').AsInteger  :=  ThisUser.LanguageID ;
  cds_ProdCatg.Active      := True ;

  dmsSystem.mtMarkedProd.Active   := False ;
  dmsSystem.mtMarkedProd.Active   := True ;

// End ;

  cds_ProdList.Active:= False ;

  meAT.SetFocus ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1833; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmGetProd_II.grdProdListDBTableView1DblClick(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1834 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
// With dmProduct do
// Begin
  if cds_ProdListGradeNo.AsInteger > 1 then
  Begin
  if PageControl.HideTabs = True then
  Begin
   dmsSystem.mtMarkedProd.Active:= False ;
   dmsSystem.mtMarkedProd.Active:= True ;
  End ;

  InsertToSelectedProducts(
  cds_ProdListProductNo.AsInteger,
  cds_ProdListProductGroupNo.AsInteger,

  cds_ProdListActualThicknessMM.AsFloat,
  cds_ProdListActualWidthMM.AsFloat,

  cds_ProdListNominalThicknessMM.AsFloat,
  cds_ProdListNominalWidthMM.AsFloat,

  cds_ProdListProductDisplayName.AsString,
  cds_ProdListSequenceNo.AsInteger,
  1,
  cds_ProdListNominalThicknessINCH.AsString,
  cds_ProdListNominalWidthINCH.AsString
  ) ;
  End ;
// End ; //With...

{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1834; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmGetProd_II.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1837 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
//Kolla så att inte
 Try

 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdProdListDBTableView1.Name, grdProdListDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdCustDimProdDBTableView1.Name, grdCustDimProdDBTableView1) ;
 Except
 End ;

 CanClose:= True ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1837; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmGetProd_II.RefreshSok(Sender: TObject);
Var
 Save_Cursor : TCursor;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1840 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

  cds_ProdList.Active:= False ;
  BuildSQL(Sender) ;
  cds_ProdList.Active:= True ;


 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1840; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmGetProd_II.acDeleteSelectedProductExecute(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1841 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
// With dmProduct do
// Begin
  dmsSystem.mtMarkedProd.Delete ;
// End ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1841; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmGetProd_II.acDeleteSelectedProductUpdate(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1842 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
// With dmProduct do
// Begin
  acDeleteSelectedProduct.Enabled:= (dmsSystem.mtMarkedProd.Active) and (dmsSystem.mtMarkedProd.RecordCount > 0) ;
// End ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1842; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmGetProd_II.InsertToSelectedProducts(const ProductNo, ProductGroupNo : Integer;
const AT, AB, NT, NB  : Double;
const Produkt : String;
const SequenceNo, CheckAktiv : Integer;
const NIT, NIW  : String) ;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1843 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
// With dmProduct do
// Begin
  if CheckAktiv = 1 then
  Begin
  if cds_ProdListProductAct.AsInteger <> 1 then
  Begin
   ShowMessage(siLangLinked_frmGetProd_II.GetTextOrDefault('IDS_0' (* 'Produkten är avaktiverad' *) ));
   Exit ;
  End ;

  if cds_ProdListProductGroupAct.AsInteger <> 1 then
  Begin
   ShowMessage(siLangLinked_frmGetProd_II.GetTextOrDefault('IDS_1' (* 'Produktgruppen är avaktiverad' *) ));
   Exit ;
  End ;

  if cds_ProdListSpeciesAct.AsInteger <> 1 then
  Begin
   ShowMessage(siLangLinked_frmGetProd_II.GetTextOrDefault('IDS_2' (* 'Träslaget är avaktiverad' *) ));
   Exit ;
  End ;

  if cds_ProdListSurfacingAct.AsInteger <> 1 then
  Begin
   ShowMessage(siLangLinked_frmGetProd_II.GetTextOrDefault('IDS_3' (* 'Utförandet är avaktiverad' *) ));
   Exit ;
  End ;

  if cds_ProdListImpAct.AsInteger <> 1 then
  Begin
   ShowMessage(siLangLinked_frmGetProd_II.GetTextOrDefault('IDS_4' (* 'Impregneringstypen är avaktiverad' *) ));
   Exit ;
  End ;

  if cds_ProdListGradeAct.AsInteger <> 1 then
  Begin
   ShowMessage(siLangLinked_frmGetProd_II.GetTextOrDefault('IDS_5' (* 'Kvaliteten är avaktiverad' *) ));
   Exit ;
  End ;
  End ;//CheckAktiv


  With dmsSystem do
  Begin
  if not mtMarkedProd.Locate('ProductNo', ProductNo, []) then
  Begin
   mtMarkedProd.Insert ;
   mtMarkedProdProductNo.AsInteger        := ProductNo ;
//   mtMarkedProdProductLengthNo.AsInteger  := ProductLengthNo ;
   mtMarkedProdProductGroupNo.AsInteger   := ProductGroupNo ;
   mtMarkedProdSurfacingNo.AsInteger      := cds_ProdListSurfacingNo.AsInteger ;
   mtMarkedProdAT.AsFloat                 := AT ;
   mtMarkedProdAW.AsFloat                 := AB ;
   mtMarkedProdNT.AsFloat                 := NT ;
   mtMarkedProdNB.AsFloat                 := NB ;
//   mtMarkedProdTab.AsInteger              := Tab ;
   mtMarkedProdNIT.AsFloat                := StrToFloatDef(NIT,0) ;
   mtMarkedProdNIW.AsFloat                := StrToFloatDef(NIW,0) ;
   mtMarkedProdPRODUKTDESC.AsString       := Produkt ;

   mtMarkedProdSequenceNo.AsInteger       := SequenceNo ;

   mtMarkedProdVaruSlagNo.AsInteger       := mtProductVaruSlag.AsInteger ;

//   if SequenceNo = 0 then
//   mtMarkedProdLengthDesc.AsString        := LengthDesc ;
//   mtMarkedProdNL.AsFloat                 := NL ;
   mtMarkedProd.Post ;
  End ;
  End ;//dmsSystem
// End ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1843; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
End ;


procedure TfrmGetProd_II.acSearchExecute(Sender: TObject);
Var
 Save_Cursor : TCursor;
 SQL : AnsiString ;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1844 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}

  if mtProductVaruSlag.IsNull then
  Begin
   ShowMessage(siLangLinked_frmGetProd_II.GetTextOrDefault('IDS_6' (* 'Välj ett varuslag!' *) ));
   Exit ;
  End ;

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 if (PageControl.ActivePage = tsProduktLista)
  or (PageControl.ActivePage = tsKundProdukter) then
 Begin
  cds_ProdList.Active:= False ;
  BuildSQL(Sender) ;
  cds_ProdList.Active:= True ;
//  if (cds_ProdList.RecordCount > 0) and (mtProductGradeNo.AsInteger > 0) then
//   if not cds_ProdList.Locate('GradeNo', mtProductGradeNo.AsInteger, []) then
//    ShowMessage('Kvalitet ' + lcGrade.Text + ' hittades inte, klicka på ProduktRegister knappen för att skapa den');

  if (PageControl.ActivePage = tsProduktLista) and (cds_ProdList.RecordCount > 0) then
  Begin
   grdProdList.SetFocus ;
  End ;

 End ;// if PageControl.ActivePage = tsProduktLista then

 Finally
//  dmProduct.cds_ProdList.SQL.Text:= SQL ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1844; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmGetProd_II.acProductRegisterExecute(Sender: TObject);
//var fProductForm    : TfProductForm ;
//    ProductGroupNo  : Integer ;
//    NT, NB          : Double;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1845 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
// With dmProduct do
(*
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
  if (ProductGroupNo > -1) and (fProductForm.cds_PrdGrp.FindKey([ProductGroupNo])) then
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
 *)
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1845; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
End;

procedure TfrmGetProd_II.acClearFilterExecute(Sender: TObject);
Var Varuslag : Integer ;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1846 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 icvaruslag.Properties.OnChange:= nil ;
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
  icvaruslag.Properties.OnChange:= icVaruSlagPropertiesChange ;
 End ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1846; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmGetProd_II.grdProdListDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1847 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 //ShowMessage(inttostr(key));
 if Key = 32 then
// With dmProduct do
 Begin

  if PageControl.HideTabs = True then
  Begin
   dmsSystem.mtMarkedProd.Active:= False ;
   dmsSystem.mtMarkedProd.Active:= True ;
  End ;

  InsertToSelectedProducts(
  cds_ProdListProductNo.AsInteger,
  cds_ProdListProductGroupNo.AsInteger,
  cds_ProdListActualThicknessMM.AsFloat,
  cds_ProdListActualWidthMM.AsFloat,

  cds_ProdListNominalThicknessMM.AsFloat,
  cds_ProdListNominalWidthMM.AsFloat,


  cds_ProdListProductDisplayName.AsString,

  cds_ProdListSequenceNo.AsInteger,
  1,
  cds_ProdListNominalThicknessINCH.AsString,
  cds_ProdListNominalWidthINCH.AsString    ) ;
  End ;

{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1847; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmGetProd_II.acOKUpdate(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1848 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
// With dmProduct do
// Begin
  acOK.Enabled:= (cds_ProdList.Active) and (cds_ProdListGradeNo.AsInteger > 1) ;
// End ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1848; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmGetProd_II.bbOKClick(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1849 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
// With dmProduct do
 Begin
  if PageControl.HideTabs = True then
  Begin
   dmsSystem.mtMarkedProd.Active:= False ;
   dmsSystem.mtMarkedProd.Active:= True ;

  if PageControl.ActivePage = tsProduktLista then
  InsertToSelectedProducts(
  cds_ProdListProductNo.AsInteger,
  cds_ProdListProductGroupNo.AsInteger,

  cds_ProdListActualThicknessMM.AsFloat,
  cds_ProdListActualWidthMM.AsFloat,

  cds_ProdListNominalThicknessMM.AsFloat,
  cds_ProdListNominalWidthMM.AsFloat,

  cds_ProdListProductDisplayName.AsString,
  cds_ProdListSequenceNo.AsInteger,
  0,
  cds_ProdListNominalThicknessINCH.AsString,
  cds_ProdListNominalWidthINCH.AsString  ) ;
  End ;
 End ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1849; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmGetProd_II.GtillATfltet1Click(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1851 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 meAT.SetFocus ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1851; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmGetProd_II.icVaruslagPropertiesChange(Sender: TObject);
begin
 Case mtProductVaruSlag.AsInteger of
  0,3,4 : Begin
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
       grdProdListDBTableView1ActualThicknessMM.Caption     := siLangLinked_frmGetProd_II.GetTextOrDefault('IDS_7' (* 'Diameter(cm)' *) ) ;
       grdProdListDBTableView1ActualWidthMM.Caption         := siLangLinked_frmGetProd_II.GetTextOrDefault('IDS_8' (* 'Längd(cm)' *) ) ;
       grdProdListDBTableView1NominalThicknessMM.Visible    := False ;
       grdProdListDBTableView1NominalWidthMM.Visible        := False ;
       grdProdListDBTableView1NominalThicknessINCH.Visible  := False ;
       grdProdListDBTableView1NominalWidthINCH.Visible      := False ;
       grdProdListDBTableView1ActualThicknessMM.Visible     := True ;
       grdProdListDBTableView1ActualWidthMM.Visible         := True ;
      End ;
  2 : Begin
       grdProdListDBTableView1ActualThicknessMM.Caption     := siLangLinked_frmGetProd_II.GetTextOrDefault('IDS_9' (* 'Bredd(cm)' *) ) ;
       grdProdListDBTableView1ActualWidthMM.Caption         := siLangLinked_frmGetProd_II.GetTextOrDefault('IDS_8' (* 'Längd(cm)' *) ) ;
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

procedure TfrmGetProd_II.acCreateProductExecute(Sender: TObject);
//var //fProductForm    : TfProductForm ;
//    ProductGroupNo  : Integer ;
//    NT, NB          : Double;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1852 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
// With dmProduct do
(* Begin
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

    if dmsSystem.mtMarkedProd.state in [dsBrowse] then
     dmsSystem.mtMarkedProd.Edit ;
    dmsSystem.mtMarkedProdProductGroupNo.AsInteger  := -1 ;
    dmsSystem.mtMarkedProd.Post ;

 ProductGroupNo:= GetProductGroupNo (mtProductVaruSlag.AsInteger, NT, NB,
 StrToFloatDef(ReplaceCommas_II(meAT.Text),0),
 StrToFloatDef(ReplaceCommas_II(meAB.Text),0),
 mtProductSpeciesNo.AsInteger,
 mtProductSurfacingNo.AsInteger,
 mtProductProductCategoryNo.AsInteger) ;
 End ; //with
 *)
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1852; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
End;

procedure TfrmGetProd_II.acCreateProductUpdate(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1853 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
// With dmProduct do
// Begin
  acCreateProduct.Enabled:= (cds_ProdList.Active) and (cds_ProdList.RecordCount = 0) ;
// End ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1853; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmGetProd_II.acProductRegisterUpdate(Sender: TObject);
begin
 acProductRegister.Enabled  := EnableProductRegisterButton ;
end;

procedure TfrmGetProd_II.acEditProduktExecute(Sender: TObject);
//var fProductForm    : TfProductForm ;
//    ProductGroupNo  : Integer ;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1845 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
(* With dmProduct do
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
 *)
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1845; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
End;

procedure TfrmGetProd_II.acEditProduktUpdate(Sender: TObject);
begin
{ With dmProduct do
 Begin
  acEditProdukt.Enabled:= (cds_ProdList.Active) and (cds_ProdList.RecordCount > 0)
  and (EnableProductRegisterButton) ;
 End ;
 }
end;

end.


