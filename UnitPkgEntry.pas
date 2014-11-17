unit UnitPkgEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Db, SqlTimSt,
  ImgList, idGlobal, StdCtrls, cxPC, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDropDownEdit,
  cxCalendar, ActnList, cxGraphics, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeels, cxLabel, Buttons,
  cxGridBandedTableView, cxGridDBBandedTableView, cxCheckBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, cxImageComboBox,
  kbmMemTable, cxButtonEdit, cxGridCustomPopupMenu, cxGridPopupMenu, Menus,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxNavigator,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, siComp, siLngLnk,
  System.Actions;

Const
    CM_MOVEIT = WM_USER + 1;

type
  TfrmPkgEntry = class(TForm)
    dxBarManager1: TdxBarManager;
    lbAddPkg: TdxBarLargeButton;
    lbRemovePkg: TdxBarLargeButton;
    lbSavePkgs: TdxBarLargeButton;
    lbCloseForm: TdxBarLargeButton;
    Panel1: TPanel;
    ImageList1: TImageList;
    lbPkgNoInt: TdxBarLargeButton;
    pmProducts: TdxBarPopupMenu;
    bbAddProduct: TdxBarButton;
    lbSelectProduct: TdxBarLargeButton;
    pmPackages: TdxBarPopupMenu;
    bbRemoveAllPkgs: TdxBarButton;
    Panel2: TPanel;
    lbSaveToInven: TdxBarLargeButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dsmtPackages: TDataSource;
    ActionList1: TActionList;
    acAddPkg: TAction;
    acRensaProdukt: TAction;
    acPktNrSerie: TAction;
    acRemoveRow: TAction;
    acValjProdukt: TAction;
    grdPackagesLevel1: TcxGridLevel;
    grdPackages: TcxGrid;
    cxLookAndFeelController1: TcxLookAndFeelController;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    acAddLengthColumn: TAction;
    grdPackagesDBBandedTableView1: TcxGridDBBandedTableView;
    lcOwner: TcxDBLookupComboBox;
    lcVerk: TcxDBLookupComboBox;
    lcPIP: TcxDBLookupComboBox;
    lcLIP: TcxDBLookupComboBox;
    lcRegPoint: TcxDBLookupComboBox;
    icInputOption: TcxDBImageComboBox;
    deRegDate: TcxDBDateEdit;
    seRunNo: TcxDBSpinEdit;
    lcPRODUCER: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    teSupplierCode: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    icLengthOption: TcxDBImageComboBox;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    lcLengthGroup: TcxDBLookupComboBox;
    cbDB_CopyPcs: TcxDBCheckBox;
    cdAutoColWidth: TcxDBCheckBox;
    acSearchRunNo: TAction;
    acDeleteAllRows: TAction;
    acInmatningsrad: TAction;
    dxBarButton1: TdxBarButton;
    cbNewItemRow: TcxDBCheckBox;
    beProductDescription: TcxDBButtonEdit;
    dsUserProp: TDataSource;
    acSavePkgs: TAction;
    lcBarcode: TcxDBLookupComboBox;
    lcGradestamp: TcxDBLookupComboBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Panel4: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cbSaveToProduktionLogg: TcxDBCheckBox;
    acExit: TAction;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl3: TdxBarDockControl;
    dxBarManager1Bar3: TdxBar;
    PopupMenu1: TPopupMenu;
    cxLabel1: TcxLabel;
    meStdPris: TcxDBMaskEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleAlreadyExist: TcxStyle;
    cxStyleFailedToSave: TcxStyle;
    acPkgInfo: TAction;
    pmPkgTable: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    lcSkiftLag: TcxDBLookupComboBox;
    Label12: TLabel;
    lcPackage_Size: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    siLangLinked_frmPkgEntry: TsiLangLinked;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dsmtPackagesDataChange(Sender: TObject; Field: TField);
    procedure acAddPkgUpdate(Sender: TObject);
    procedure acAddPkgExecute(Sender: TObject);
    procedure acPktNrSerieExecute(Sender: TObject);
    procedure acRemoveRowExecute(Sender: TObject);
    procedure acRemoveRowUpdate(Sender: TObject);
    procedure acPktNrSerieUpdate(Sender: TObject);
    procedure grdPackagesDBTableView1Column1PropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure acAddLengthColumnExecute(Sender: TObject);
    procedure grdPackagesDBBandedTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure icLengthOptionPropertiesChange(Sender: TObject);
    procedure acAddLengthColumnUpdate(Sender: TObject);
    procedure lcLengthGroupPropertiesChange(Sender: TObject);
    procedure cdAutoColWidthPropertiesChange(Sender: TObject);
    procedure acSearchRunNoExecute(Sender: TObject);
    procedure icInputOptionPropertiesChange(Sender: TObject);
    procedure acDeleteAllRowsExecute(Sender: TObject);
    procedure acDeleteAllRowsUpdate(Sender: TObject);
    procedure grdPackagesDBBandedTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure grdPackagesDBBandedTableView1Editing(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure acInmatningsradExecute(Sender: TObject);
    procedure cbNewItemRowPropertiesChange(Sender: TObject);
    procedure beProductDescriptionPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure acSavePkgsExecute(Sender: TObject);
    procedure acSavePkgsUpdate(Sender: TObject);
    procedure acValjProduktExecute(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
    procedure grdPackagesDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acPkgInfoExecute(Sender: TObject);

  private
    { Private declarations }
    ManuellLengthColumn : Integer ;
    OKToSave : Boolean ;
    function  UnSavedPackages : Boolean ;
    Function  UnsavedPkgs : Boolean ;
    Procedure CreateFieldsInmtPackagesTable(Sender : TObject) ;

//    procedure Add_LPM_LengthToProductGroup_And_ToPkg(Sender: TObject);
//    procedure Add_LPM_LengthToProductGroup_And_ToPkg_AVGLENGTH_INPUT(Sender: TObject);
    procedure InsertPkgSerie(Sender: TObject);
    procedure RemoveSavedPkgsFromMemTable(Sender: TObject);
    procedure ReLoadPackageColumnsWithAllLengths(Sender: TObject);
    Function  LengthExistInGrid (const ManLength : String) : Boolean ;
    procedure RemoveProduct(Sender: TObject) ;
    procedure AddProduct(Sender: TObject) ;
    procedure CMMoveIt_Pkt(var Msg: TMessage); message CM_MOVEIT;

  public
    { Public declarations }
    SavePkgs  : Boolean ;
  end;

//var  frmPkgEntry: TfrmPkgEntry;




implementation

uses  dmsVidaPkg, VidaConst,   VidaUser, dmsDataConn,
      UnitPkgNoSeries,
      dmsVidaSystem,
      dmcVidaSystem, dmsVidaContact, uEntryField, uAddSpecialLengths,
      uSearchRunNo, dmc_UserProps, UnitGetProd_II, UnitPkgInfo ;

{$R *.dfm}

procedure TfrmPkgEntry.CMMoveIt_Pkt(var Msg: TMessage);
var AGoForward: Boolean;
begin
   AGoForward := Boolean(Msg.WParam);
   grdPackagesDBBandedTableView1.Controller.EditingController.HideEdit(True);
   grdPackagesDBBandedTableView1.Controller.FocusNextCell(AGoForward)
end;

Procedure TfrmPkgEntry.CreateFieldsInmtPackagesTable(Sender : TObject) ;
Var BandBredd, x      : Integer ;
    LengthTitle       : String ;
    Save_Cursor       : TCursor;
    Properties        : TcxTextEditProperties;
Begin
 grdPackagesDBBandedTableView1.BeginUpdate ;
 Try
 With dmsPkg do
 Begin
  if mtPackages.Active then
   if mtPackages.RecordCount > 0 then
    Begin
//     ShowMessage('Cannot swith when packages are present.');
     Exit ;
    End ;

 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }

 ManuellLengthColumn:= FirstLengthColumn ;

 if mtPackages.Active then
  mtPackages.Active:= False ;

 mtPackages.DisableControls ;
 Try
  mtPackages.DeleteIndex('IndexRecId') ;
  mtPackages.DeleteIndex('PkgID') ;

 For x:= mtPackages.Fields.Count - 1 downto 0 do
 Begin
  mtPackages.Fields.Remove(mtPackages.Fields.Fields[x]) ;
 End ;

 mtPackages.FieldDefs.Clear ;

   mtPackages.FieldDefs.Add('RecId',ftInteger,0,False) ;
   mtPackages.FieldDefs[cRECID].CreateField(nil);
   mtPackages.FieldByName('RecId').DisplayLabel:= 'Radnr' ;
   mtPackages.FieldByName('RecId').Visible:= True ;

//1
   mtPackages.FieldDefs.Add('Description',ftString,100,False) ;
   mtPackages.FieldDefs[CDESCRIPTION].CreateField(nil);
   mtPackages.FieldByName('Description').DisplayLabel:= 'Beskrivning' ;
   mtPackages.FieldByName('Description').Visible:= False ;
//2
   mtPackages.FieldDefs.Add('PackageNo',ftLargeInt,0,False) ;
   mtPackages.FieldDefs[cPACKAGENO].CreateField(nil);
   mtPackages.FieldByName('PackageNo').DisplayLabel:= 'Pktnr' ;

//3
   mtPackages.FieldDefs.Add('SupplierCode',ftString,3,False) ;
   mtPackages.FieldDefs[cSUPPLIERCODE].CreateField(nil);
   mtPackages.FieldByName('SupplierCode').DisplayLabel:= 'Prefix' ;
//4
   mtPackages.FieldDefs.Add('ProductNo',ftInteger,0,False) ;
   mtPackages.FieldDefs[cPRODUCTNO].CreateField(nil);
   mtPackages.FieldByName('ProductNo').Visible:= False ;
//5
   mtPackages.FieldDefs.Add('ProductGroupNo',ftInteger,0,False) ;
   mtPackages.FieldDefs[cPRODUCTGROUPNO].CreateField(nil);
   mtPackages.FieldByName('ProductGroupNo').Visible:= False ;
//6
   mtPackages.FieldDefs.Add('TotalPcs',ftInteger,0,False) ;
   mtPackages.FieldDefs[cTOTALPCS].CreateField(nil);
   mtPackages.FieldByName('TotalPcs').DisplayLabel:= 'Styck' ;
//7
   mtPackages.FieldDefs.Add('TotalActM3',ftFloat,0,False) ;
   mtPackages.FieldDefs[cTOTALACTM3].CreateField(nil);
   mtPackages.FieldByName('TotalActM3').DisplayLabel:= 'AM3' ;
   TFloatField(mtPackages.Fields[cTOTALACTM3]).DisplayFormat := '#######.000';
//8
   mtPackages.FieldDefs.Add('TotalNOMM3',ftFloat,0,False) ;
   mtPackages.FieldDefs[cTOTALNOMM3].CreateField(nil);
   TFloatField(mtPackages.Fields[cTOTALNOMM3]).DisplayFormat := '#######.000';
   mtPackages.FieldByName('TotalNOMM3').DisplayLabel:= 'NM3' ;
   mtPackages.FieldByName('TotalNOMM3').Visible:= False ;
//9
   mtPackages.FieldDefs.Add('TotalLpm',ftFloat,0,False) ;
   mtPackages.FieldDefs[cTOTALLPM].CreateField(nil);
   mtPackages.FieldByName('TotalLpm').DisplayLabel:= 'AM1' ;
   TFloatField(mtPackages.Fields[cTOTALLPM]).DisplayFormat := '#######.0000';

//10
{   mtPackages.FieldDefs.Add('Totalm2',ftFloat,0,False) ;
   mtPackages.FieldDefs[cTOTALM2].CreateField(nil);
   mtPackages.FieldByName('Totalm2').DisplayLabel:= 'AM2' ;
   TFloatField(mtPackages.Fields[cTOTALM2]).DisplayFormat := '#######.000';

}
//Använder AM2 till pris ett tag
   mtPackages.FieldDefs.Add('Totalm2',ftFloat,0,False) ;
   mtPackages.FieldDefs[cTOTALM2].CreateField(nil);
   mtPackages.FieldByName('Totalm2').DisplayLabel:= 'Pris/NM3' ;
   TFloatField(mtPackages.Fields[cTOTALM2]).DisplayFormat := '#######.00';

//11
   mtPackages.FieldDefs.Add('TotalMFBM',ftFloat,0,False) ;
   mtPackages.FieldDefs[cTOTALMFBM].CreateField(nil);
   TFloatField(mtPackages.Fields[cTOTALMFBM]).DisplayFormat := '#######.000';
   mtPackages.FieldByName('TotalMFBM').DisplayLabel:= 'MFBM' ;
   mtPackages.FieldByName('TotalMFBM').Visible:= False ;

//12
   mtPackages.FieldDefs.Add('GradeStampNo',ftInteger,0,False) ;
   mtPackages.FieldDefs[cGRADESTAMP].CreateField(nil);
   mtPackages.FieldByName('GradeStampNo').Visible:= False ;
//13
   mtPackages.FieldDefs.Add('BarCodeID',ftInteger,0,False) ;
   mtPackages.FieldDefs[cBARCODEID].CreateField(nil);
   mtPackages.FieldByName('BarCodeID').Visible:= False ;

(*//14
   mtPackages.FieldDefs.Add('OnSticks',ftInteger,0,False) ;
   mtPackages.FieldDefs[cONSTICKS].CreateField(nil);
//15
   mtPackages.FieldDefs.Add('PackageHeight',ftInteger,0,False) ;
   mtPackages.FieldDefs[cPKGHEIGTH].CreateField(nil);
//16
   mtPackages.FieldDefs.Add('PackageWidth',ftInteger,0,False) ;
   mtPackages.FieldDefs[cPKGWIDTH].CreateField(nil);
//17
   mtPackages.FieldDefs.Add('MiniBundled',ftInteger,0,False) ;
   mtPackages.FieldDefs[cMINIBUNDLED].CreateField(nil);
//18
   mtPackages.FieldDefs.Add('WrapTypeNo',ftInteger,0,False) ;
   mtPackages.FieldDefs[cWRAPTYPE].CreateField(nil);
//19
   mtPackages.FieldDefs.Add('ShrinkWrapNo',ftInteger,0,False) ;
   mtPackages.FieldDefs[cSHRINKWRAP].CreateField(nil); *)

//20
   mtPackages.FieldDefs.Add('ACT_THICK',ftFloat,0,False) ;
   mtPackages.FieldDefs[cACTTHICK].CreateField(nil);
   mtPackages.FieldByName('ACT_THICK').Visible:= False ;
//21
   mtPackages.FieldDefs.Add('ACT_WIDTH',ftFloat,0,False) ;
   mtPackages.FieldDefs[cACTWIDTH].CreateField(nil);
   mtPackages.FieldByName('ACT_WIDTH').Visible:= False ;
//22
   mtPackages.FieldDefs.Add('NOM_THICK',ftFloat,0,False) ;
   mtPackages.FieldDefs[cNOMTHICK].CreateField(nil);
   mtPackages.FieldByName('NOM_THICK').Visible:= False ;
//23
   mtPackages.FieldDefs.Add('NOM_WIDTH',ftFloat,0,False) ;
   mtPackages.FieldDefs[cNOMWIDTH].CreateField(nil);
   mtPackages.FieldByName('NOM_WIDTH').Visible:= False ;
//24
   mtPackages.FieldDefs.Add('LPM_PROD_LEGNTH_NO',ftInteger,0,False) ;
   mtPackages.FieldDefs[cLPM_PROD_LEGNTH_NO].CreateField(nil);
   mtPackages.FieldByName('LPM_PROD_LEGNTH_NO').Visible:= False ;
//25
   mtPackages.FieldDefs.Add('PackageTypeNo',ftLargeInt,0,False) ;
   mtPackages.FieldDefs[cPACKAGETYPENO].CreateField(nil);
   mtPackages.FieldByName('PackageTypeNo').DisplayLabel:= 'PKGTYPE NO' ;
   mtPackages.FieldByName('PackageTypeNo').Visible:= False ;
//26
   mtPackages.FieldDefs.Add('INCH_THICK',ftFloat,0,False) ;
   mtPackages.FieldDefs[cINCHTHICK].CreateField(nil);
   mtPackages.FieldByName('INCH_THICK').Visible:= False ;
//27
   mtPackages.FieldDefs.Add('INCH_WIDTH',ftFloat,0,False) ;
   mtPackages.FieldDefs[cINCHWIDTH].CreateField(nil);
   mtPackages.FieldByName('INCH_WIDTH').Visible:= False ;

//22
   mtPackages.FieldDefs.Add('SurfacingNo',ftInteger,0,False) ;
   mtPackages.FieldDefs[cSurfacingNo].CreateField(nil);
   mtPackages.FieldByName('SurfacingNo').Visible:= False ;

   X:= FirstLengthColumn  ;
   if dmsPkg.mtUserPropInputOption.AsInteger = INPUT_PIECES then
   Begin
    grdPackagesDBBandedTableView1.Bands[2].Visible:= True ;
//    if (bcLengthOption.ItemIndex = 0) then
//    MakeLengthQuery_II
//     else
//        if bcLengthOption.ItemIndex = 1 then
//         Begin
//          if bcStdLenGrp.Properties.Items.Count > 0 then
           MakeLengthQuery_STD_Lengths (dmsPkg.mtUserPropLengthGroupNo.AsInteger)  ;
//            else
//             Begin
//              Exit ;
//             End ;
//         End
//          else
//           Exit ;
   sq_ProductLengths.Open ;

  While not sq_ProductLengths.Eof do
  Begin
   mtPackages.FieldDefs.Add(sq_ProductLengthsActualLengthMM.AsString,ftInteger,0,False) ;
   mtPackages.FieldDefs[x].CreateField(nil);
   LengthTitle:= Trim(sq_ProductLengthsActualLengthMM.AsString) ;

//   if sq_ProductLengthsNominalLengthMM.AsString <> sq_ProductLengthsActualLengthMM.AsString then
//   LengthTitle:= LengthTitle + ' ('+sq_ProductLengthsNominalLengthMM.AsString+') ' ;
{   if sq_ProductLengthsPET.AsInteger = 1 then
   LengthTitle:= LengthTitle + 'P' ;
   if sq_ProductLengthsFingerJoint.AsInteger = 1 then
   LengthTitle:= LengthTitle + 'F' ; }

//   ActualLengthMMArray[x]:= sq_ProductLengthsActualLengthMM.AsFloat ;
//   NominalLengthMMArray[x]:= sq_ProductLengthsNominalLengthMM.AsFloat ;
//   FEET_Array[x]:= sq_ProductLengthsNominalLengthFEET.AsFloat ;

   mtPackages.FieldByName(sq_ProductLengthsActualLengthMM.AsString).DisplayLabel:= LengthTitle ;

//   ActualLengthMMArray[x]:= sq_ProductLengthsActualLengthMM.AsFloat ;
   X:= Succ(x) ;

   sq_ProductLengths.Next ;
  End ;
   sq_ProductLengths.Close ;
 End //   if mtPropsInputOption.AsInteger = INPUT_PIECES then
 else
 if dmsPkg.mtUserPropInputOption.AsInteger = INPUT_LOPM_TOTAL_LOPM then
  Begin
   grdPackagesDBBandedTableView1.Bands[2].Visible:= False ;
//   mtPackages.FieldDefs.Add('1',ftInteger,0,False) ;
//   mtPackages.FieldDefs[x].CreateField(nil);
//   mtPackages.FieldByName('1').DisplayLabel:= 'Pcs' ;
//   ActualLengthMMArray[x]:= 1 ;
//   NominalLengthMMArray[x]:= 1 ;
//   FEET_Array[x]:= 1 ;
  End
  else
  if dmsPkg.mtUserPropInputOption.AsInteger = INPUT_LOPM_AVERAGE_LENGTH then
  Begin
   grdPackagesDBBandedTableView1.Bands[2].Visible:= True ;
   mtPackages.FieldDefs.Add('1',ftFloat,0,False) ;
   mtPackages.FieldDefs[x].CreateField(nil);

   mtPackages.FieldByName('1').DisplayLabel:= 'Medellängd(Meter)' ;
   TFloatField(mtPackages.Fields[x]).DisplayFormat := '#######.0000';
  End
  else
  if dmsPkg.mtUserPropInputOption.AsInteger = INPUT_AM3_LENGTH then
  Begin
   grdPackagesDBBandedTableView1.Bands[2].Visible:= True ;
   mtPackages.FieldDefs.Add('1',ftFloat,0,False) ;
   mtPackages.FieldDefs[x].CreateField(nil);

   mtPackages.FieldByName('1').DisplayLabel:= 'Medellängd(Meter)' ;
   TFloatField(mtPackages.Fields[x]).DisplayFormat := '#######.0000';

  End
  else
  if dmsPkg.mtUserPropInputOption.AsInteger = INPUT_AM3_TOTALPCS then
  Begin
   grdPackagesDBBandedTableView1.Bands[2].Visible:= False ;
  End ;


  mtPackages.AddIndex('IndexRecId','RecId',[]) ;
  mtPackages.IndexName:= 'IndexRecId' ;
  mtPackages.AddIndex('PkgID','PackageNo;SupplierCode',[]) ;

 //Create all columns in the grid
  grdPackagesDBBandedTableView1.ClearItems ;
  grdPackagesDBBandedTableView1.DataController.CreateAllItems ;

//  grdPackagesDBTableView1.ClearItems ;
//  grdPackagesDBTableView1.DataController.CreateAllItems ;

//Set all column props
  For x := 0 to grdPackagesDBBandedTableView1.ColumnCount - 1 do
  Begin
   grdPackagesDBBandedTableView1.Columns[x].Options.Filtering := False ;
   grdPackagesDBBandedTableView1.Columns[x].Position.BandIndex:= 2 ;
   grdPackagesDBBandedTableView1.Columns[x].PropertiesClass   :=  TcxTextEditProperties;
   Properties := grdPackagesDBBandedTableView1.Columns[x].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= True ;
  End ;

//Set length column props
  For x := FirstLengthColumn to grdPackagesDBBandedTableView1.ColumnCount - 1 do
  Begin
//   grdPackagesDBBandedTableView1.Columns[x].PropertiesClass:=  TcxTextEditProperties;
   Properties := grdPackagesDBBandedTableView1.Columns[x].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= False ;
   grdPackagesDBBandedTableView1.Columns[x].Width:= 40 ;
  End ;

  if dmsPkg.mtUserPropInputOption.AsInteger = INPUT_LOPM_TOTAL_LOPM then
  Begin
   Properties := grdPackagesDBBandedTableView1.Columns[cTOTALLPM].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= False ;
  End
  else
  if dmsPkg.mtUserPropInputOption.AsInteger = INPUT_LOPM_AVERAGE_LENGTH then
  Begin
   Properties := grdPackagesDBBandedTableView1.Columns[cTOTALPCS].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= False ;
  End
  else
  if dmsPkg.mtUserPropInputOption.AsInteger = INPUT_AM3_LENGTH then
  Begin
   Properties := grdPackagesDBBandedTableView1.Columns[cTOTALACTM3].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= False ;
  End
  else
  if dmsPkg.mtUserPropInputOption.AsInteger = INPUT_AM3_TOTALPCS then
  Begin
   Properties := grdPackagesDBBandedTableView1.Columns[cTOTALPCS].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= True ;
   Properties := grdPackagesDBBandedTableView1.Columns[cTOTALLPM].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= True ;
   Properties := grdPackagesDBBandedTableView1.Columns[cTOTALPCS].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= True ;
   Properties := grdPackagesDBBandedTableView1.Columns[cTOTALACTM3].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= False ;
  End
  else
  if dmsPkg.mtUserPropInputOption.AsInteger = INPUT_RAMAR then
  Begin
   Properties := grdPackagesDBBandedTableView1.Columns[cTOTALPCS].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= False ;
   Properties := grdPackagesDBBandedTableView1.Columns[cTOTALLPM].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= True ;
//   Properties := grdPackagesDBBandedTableView1.Columns[cTOTALPCS].Properties AS TcxTextEditProperties;
//   Properties.ReadOnly:= True ;
   Properties := grdPackagesDBBandedTableView1.Columns[cTOTALACTM3].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= True ;
  End ;


   grdPackagesDBBandedTableView1.Columns[cPACKAGENO].Width:= 65 ;
   grdPackagesDBBandedTableView1.Columns[cPACKAGENO].Options.Filtering:= False ;
   grdPackagesDBBandedTableView1.Columns[cPACKAGENO].Position.BandIndex:= 0 ;
   Properties := grdPackagesDBBandedTableView1.Columns[cPACKAGENO].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= False ;
   Properties.OnValidate:= grdPackagesDBTableView1Column1PropertiesValidate ;


   grdPackagesDBBandedTableView1.Columns[cTOTALM2].Width:= 65 ;
   grdPackagesDBBandedTableView1.Columns[cTOTALM2].Options.Filtering:= False ;
   grdPackagesDBBandedTableView1.Columns[cTOTALM2].Position.BandIndex:= 0 ;
   Properties := grdPackagesDBBandedTableView1.Columns[cTOTALM2].Properties AS TcxTextEditProperties;
   Properties.ReadOnly:= False ;

   grdPackagesDBBandedTableView1.Columns[cRECID].Position.BandIndex := 0 ;
   grdPackagesDBBandedTableView1.Columns[cRECID].Width              := 35 ;

   grdPackagesDBBandedTableView1.Columns[cSUPPLIERCODE].Position.BandIndex  := 0 ;
   grdPackagesDBBandedTableView1.Columns[cSUPPLIERCODE].Width               := 35 ;

   grdPackagesDBBandedTableView1.Columns[cTotalPcs].Width   := 45 ;
   grdPackagesDBBandedTableView1.Columns[cTotalPcs].Position.BandIndex:= 1 ;

   grdPackagesDBBandedTableView1.Columns[cTOTALACTM3].Width := 45 ;
   grdPackagesDBBandedTableView1.Columns[cTOTALACTM3].Position.BandIndex:= 1 ;

   grdPackagesDBBandedTableView1.Columns[cTOTALLPM].Width   := 45 ;
   grdPackagesDBBandedTableView1.Columns[cTOTALLPM].Position.BandIndex:= 1 ;

   grdPackagesDBBandedTableView1.Columns[cTOTALM2].Width    := 45 ;
   grdPackagesDBBandedTableView1.Columns[cTOTALM2].Position.BandIndex:= 1 ;

//   grdPackagesDBBandedTableView1.Bands[1].ApplyBestFit(False, False);

{   BandBredd:= 0 ;
   For x := 0 to grdPackagesDBBandedTableView1.Bands[1].ColumnCount - 1 do
    BandBredd:= BandBredd + grdPackagesDBBandedTableView1.Bands[1].Columns[x].Width ;
   grdPackagesDBBandedTableView1.Bands[1].Width:= BandBredd ; }

{   BandBredd:= 0 ;
   For x := 0 to grdPackagesDBBandedTableView1.Bands[1].ColumnCount - 1 do
    BandBredd:= BandBredd + grdPackagesDBBandedTableView1.Bands[1].Columns[x].Width ;
   grdPackagesDBBandedTableView1.Bands[1].Width:= BandBredd ; }

//   grdPackagesDBBandedTableView1.Bands[1].ApplyBestFit(False, False);

//  grdPackagesDBBandedTableView1.Bands[2].ApplyBestFit(True, False);
  grdPackagesDBBandedTableView1.OptionsView.ColumnAutoWidth:= mtUserPropAutoColWidth.AsInteger = 1 ;
  grdPackagesDBBandedTableView1.Bands[0].Width:= 140 ;


 grdPackagesDBBandedTableView1.BeginUpdate ;
 Try
 For x := 0 to grdPackagesDBBandedTableView1.Bands.Items[2].ColumnCount -1 do
  with grdPackagesDBBandedTableView1.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
              if grdPackagesDBBandedTableView1.Bands.Items[2].Columns[x].Position.BandIndex = 2 then
              Begin
               Column := grdPackagesDBBandedTableView1.Bands.Items[2].Columns[x] ;
               Kind := skSum ;
               Format := '####';
              End ;
            end
          ;
        ;
 Finally
  grdPackagesDBBandedTableView1.EndUpdate ;
 End ;

 grdPackagesDBBandedTableView1.BeginUpdate ;
 Try
// For x := 0 to grdPackagesDBBandedTableView1.Bands.Items[0].ColumnCount -1 do
  with grdPackagesDBBandedTableView1.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
//              if grdPackagesDBBandedTableView1.Bands.Items[0]. .Columns[x].Position.BandIndex = 2 then
//              Begin
               Column := grdPackagesDBBandedTableView1.Bands.Items[0].Columns[2] ;
               Kind := skCount ;
               Format := '####';
//              End ;
            end ;

 Finally
  grdPackagesDBBandedTableView1.EndUpdate ;
 End ;


//Summary fields
(* grdPkgs.ColumnByFieldName('PackageNo').SummaryFooterField:= 'PackageNo' ;
 grdPkgs.ColumnByFieldName('PackageNo').SummaryFooterType:= cstCount ;
 grdPkgs.ColumnByFieldName('PackageNo').SummaryFooterFormat:= '#######' ;

 grdPkgs.ColumnByFieldName('TotalActM3').SummaryFooterField:= 'TotalActM3' ;
 grdPkgs.ColumnByFieldName('TotalActM3').SummaryFooterType:= cstSum ;
 grdPkgs.ColumnByFieldName('TotalActM3').SummaryFooterFormat:= '#######.000' ;

 grdPkgs.ColumnByFieldName('TotalNOMM3').Width:= 60 ;
 grdPkgs.ColumnByFieldName('TotalNOMM3').SummaryFooterField:= 'TotalNOMM3' ;
 grdPkgs.ColumnByFieldName('TotalNOMM3').SummaryFooterType:= cstSum ;
 grdPkgs.ColumnByFieldName('TotalNOMM3').SummaryFooterFormat:= '#######.000' ;

 grdPkgs.ColumnByFieldName('TotalMFBM').Width:= 60 ;
 grdPkgs.ColumnByFieldName('TotalMFBM').SummaryFooterField:= 'TotalMFBM' ;
 grdPkgs.ColumnByFieldName('TotalMFBM').SummaryFooterType:= cstSum ;
 grdPkgs.ColumnByFieldName('TotalMFBM').SummaryFooterFormat:= '#######.000' ;

 grdPkgs.ColumnByFieldName('TotalLpm').Width:= 60 ;
 grdPkgs.ColumnByFieldName('TotalLpm').SummaryFooterField:= 'TotalLpm' ;
 grdPkgs.ColumnByFieldName('TotalLpm').SummaryFooterType:= cstSum ;
 grdPkgs.ColumnByFieldName('TotalLpm').SummaryFooterFormat:= '#######.0' ;

 grdPkgs.ColumnByFieldName('Totalm2').Width:= 60 ;
 grdPkgs.ColumnByFieldName('Totalm2').SummaryFooterField:= 'Totalm2' ;
 grdPkgs.ColumnByFieldName('Totalm2').SummaryFooterType:= cstSum ;
 grdPkgs.ColumnByFieldName('Totalm2').SummaryFooterFormat:= '#######.000' ;

 grdPkgs.ColumnByFieldName('TotalPcs').Width:= 60 ;
 grdPkgs.ColumnByFieldName('TotalPcs').SummaryFooterField:= 'TotalPcs' ;
 grdPkgs.ColumnByFieldName('TotalPcs').SummaryFooterType:= cstSum ;
 grdPkgs.ColumnByFieldName('TotalPcs').SummaryFooterFormat:= '#######' ;


 For x:= 0 to grdPkgs.ColumnCount - 1 do
 Begin
  grdPkgs.Columns[x].ReadOnly:= True ;
  grdPkgs.Columns[x].Width:= OvcIniFileStore1.ReadInteger('unitPkgEntry',IntToStr(x), 145) ;
  if x in [0, 4,5, 12..27] then
   if ThisUser.UserName <> 'larmak' then
    grdPkgs.Columns[x].Visible:= False ;
 End ;

   grdPkgs.Columns[cPACKAGENO].ReadOnly:= False ;

  if dmsPkg.InputOption = INPUT_LOPM_TOTAL_LOPM then
   grdPkgs.Columns[cTOTALLPM].ReadOnly:= False
   else
   if dmsPkg.InputOption = INPUT_LOPM_AVERAGE_LENGTH then
   grdPkgs.Columns[cTOTALPCS].ReadOnly:= False ;
  grdPkgs.Columns[cRECID].Visible:= True ;
  grdPkgs.Columns[cLPM_PROD_LEGNTH_NO].Visible:= False ;

  seColWidth.Value:= OvcIniFileStore1.ReadInteger('unitPkgEntry','colwidthPE', 45) ;
//LARS  format float type decimals somehow.
 For x:= FirstLengthColumn to grdPkgs.ColumnCount - 1 do
 Begin
  grdPkgs.Columns[x].ReadOnly:= False ;
  grdPkgs.Columns[x].Width:= seColWidth.Value ;
  grdPkgs.Columns[x].BandIndex:= 1 ;
  grdPkgs.Columns[x].SummaryFooterField:= grdPkgs.Columns[x].Field.FieldName ;
  grdPkgs.Columns[x].SummaryFooterType:= cstSum ;
  grdPkgs.Columns[x].SummaryFooterFormat:= '#######' ;
 End ; *)

  mtPackages.Active:= True ;

 Finally
  mtPackages.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ; //with
 Finally
  grdPackagesDBBandedTableView1.EndUpdate ;
 End ;
End ;

procedure TfrmPkgEntry.FormCreate(Sender: TObject);
begin
 With dmsPkg do
 Begin
  dm_UserProps.LoadUserProps(Self.Name, dmsPkg.mtUserProp) ;

  mtUserProp.Edit ;
  mtUserPropAgentNo.AsInteger:= 1 ; //spara till produktionsloggen
  mtUserProp.Post ;

  if (mtUserPropRoleType.AsInteger = cLego) or (mtUserPropRoleType.AsInteger = cInternal_Mill) then
  Begin
   lcOwner.Enabled    := False ;
   lcPRODUCER.Enabled := False ;
   lcVerk.Enabled     := False ;
  End ;

  if (mtUserPropRoleType.AsInteger = cSalesRegion) then
  Begin
   lcOwner.Enabled    := True ;
   lcPRODUCER.Enabled := True ;
   lcVerk.Enabled     := True ;
  End ;

  ManuellLengthColumn:= 0 ;
  dmsSystem.sqBarCode.Active:= True ;

  mtProdSpecificLengths.Active:= True ;
  SavePkgs:= False ;
 End ;//with
end;

function TfrmPkgEntry.UnSavedPackages : Boolean ;
Begin
 With dmsPkg do
 Begin
  Result  := False ;
//  mtpackages.Filter    := 'PackageTypeNo = -1 OR PackageTypeNo = -2' ;
//  mtpackages.Filtered  := True ;
//  Try
  mtpackages.First ;
  While not mtpackages.Eof do
  Begin
  if (mtpackages.Fields.Fields[cPACKAGETYPENO].AsInteger < 0) then
  Begin
   Result  := True ;
   Break ;
  End
   else
    Result  := False ;
   mtpackages.Next ; 
  End ;
//  Finally
//   mtpackages.Filtered  := False ;
//  End ;
 End ;//With dmsPkg do
End ;

{
procedure TfrmPkgEntry.RemoveSavedPkgsFromMemTable(Sender: TObject);
Var
 x : Integer ;
Begin
 With dmsPkg do
 Begin
  mtDupPkgNo.Active:= False ;
  mtDupPkgNo.Active:= True ;

  mtpackages.Active:= False ;
  mtpackages.Active:= True ;
 For x := 0 to 300 do
  PcsPerLengthArray[x]:= 0 ;
 End ;//with
End ;
}
procedure TfrmPkgEntry.RemoveSavedPkgsFromMemTable(Sender: TObject);
Var
 x : Integer ;
Begin
 With dmsPkg do
 Begin
//  mtDupPkgNo.Active:= False ;
//  mtDupPkgNo.Active:= True ;

//  mtpackages.Filter    := 'PackageTypeNo > 0' ;
//  mtpackages.Filtered  := True ;
//  Try
   mtpackages.First ;
   While not mtpackages.Eof do
   Begin
    if (mtpackages.Fields.Fields[cPACKAGETYPENO].AsInteger > 0) then
    Begin
     if mtDupPkgNo.FindKey([mtpackages.Fields.Fields[cPACKAGENO].AsInteger,
     Trim(mtpackages.Fields.Fields[cSUPPLIERCODE].AsString)]) then
     mtDupPkgNo.Delete ;

     mtpackages.Delete ;
    End
     else
      mtpackages.Next ;
   End ;

//  Finally
//   mtpackages.Filtered  := False ;
//  End ;

  For x := 0 to 300 do
   PcsPerLengthArray[x]:= 0 ;
 End ;//with
End ;

(*procedure TfrmPkgEntry.Add_LPM_LengthToProductGroup_And_ToPkg(Sender: TObject);
Begin
 With dmsPkg do
 Begin
  dmsPkg.mtpackages.AfterPost:= NIL ;
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
   mtPackages.Fields.Fields[cLPM_PROD_LEGNTH_NO].AsInteger := cds_ProdLengthProductLengthNo.AsInteger ;
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
   dmsPkg.mtpackages.AfterPost:= mtPackagesAfterPost ;
  End ;
 End ; //with
End ;

procedure TfrmPkgEntry.Add_LPM_LengthToProductGroup_And_ToPkg_AVGLENGTH_INPUT(Sender: TObject);
Begin
 With dmsPkg do
 Begin
  dmsPkg.mtpackages.AfterPost:= NIL ;
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
   mtPackages.Fields.Fields[cLPM_PROD_LEGNTH_NO].AsInteger  := cds_ProdLengthProductLengthNo.AsInteger ;
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
   dmsPkg.mtpackages.AfterPost:= mtPackagesAfterPost ;
  End ;
 End ; //with
End ; *)



procedure TfrmPkgEntry.InsertPkgSerie(Sender: TObject) ;
Var     NoOfPkgsInSerie, PkgNo : Integer ;
        ResultButton : word ;
        Save_Cursor : TCursor;
        Res_UserName : String ;
        frmPkgNoSeries : TfrmPkgNoSeries ;
begin
 ResultButton:= mrYes ;
 With dmsPkg do
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

    if mtDupPkgNo.FindKey([PkgNo,Trim(mtUserPropSupplierCode.AsString)]) then
    Begin
     MessageBeep(MB_ICONEXCLAMATION);
     ShowMessage('Duplicate Package number entered '+IntToStr(PkgNo)) ;
    End
    else
     if dmsSystem.Pkg_Reserved(
          PkgNo,
          mtUserPropSupplierCode.AsString, Self.Name, Res_UserName
          ) <> ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          ShowMessage('Package no is reserved by user '+ Res_UserName) ;
         End
     else
     if PackageNumberExists(PkgNo, mtUserPropSupplierCode.AsString) = False then
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

End ;

procedure TfrmPkgEntry.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
Var ResultButton  : word ;
    x             : Integer ;
begin
 if (UnsavedPkgs) and (SavePkgs = False) then
 Begin
 ResultButton:= MessageDlg('Paket inte sparade, vill du avsluta?',
    mtConfirmation, [mbYes, mbNo], 0) ;
 if ResultButton = mrYes then
  begin
//   lbSavePkgsClick(Sender) ;

   CanClose:= True ;
  End
  else
  if ResultButton = mrNo then
   CanClose:= False ;
 End ;

 if CanClose = True then
 begin

  dm_UserProps.SaveUserProps (Self.Name, dmsPkg.mtUserProp) ;

  With dmsPkg do
  Begin
   dmsSystem.sqBarCode.Active:= False ;
  End ;//with

  With dmsSystem do
  Begin
   Delete_ReservedPkgs (Self.Name) ;
  End ;
 end;//if CanClose = True then
end;

Function  TfrmPkgEntry.UnsavedPkgs : Boolean ;
Begin
 Result := False ;
 With dmsPkg do
 Begin
  if mtPackages.Active then
   if mtPackages.RecordCount > 0 then
    Result := True ;
 End ;
End ;

procedure TfrmPkgEntry.ReLoadPackageColumnsWithAllLengths(Sender: TObject);
Begin
   if dmsPkg.mtPackages.Active then
   if dmsPkg.mtPackages.RecordCount > 0 then
    Begin
     ShowMessage('Kan inte byta när det finns paketrader.');
//     bcInputOption.ItemIndex:= dmsPkg.mtPropsInputOption.AsInteger  ;
     Exit ;
    End ;
   CreateFieldsInmtPackagesTable(Sender) ;

{   if bcInputOption.ItemIndex = 0 then
   Begin
    bcLengthOption.Enabled:= True ;
    bcStdLenGrp.Enabled:= True ;
   End
   else
   if bcInputOption.ItemIndex = 1 then
   Begin
    bcLengthOption.Enabled:= False ;
    bcStdLenGrp.Enabled:= False ;
   End
   else
   Begin
    bcLengthOption.Enabled:= False ;
    bcStdLenGrp.Enabled:= False ;
   End ; }
End ;

procedure TfrmPkgEntry.dsmtPackagesDataChange(Sender: TObject;
  Field: TField);
begin
 With dmsPkg do
 Begin
  if ((mtpackages.Active) and (mtpackages.RecordCount = 0))
  or (mtpackages.Active = False) then
  Begin
   icInputOption.Enabled:= True ;
   lcLengthGroup.Enabled:= True ;
  End
  else
  Begin
   icInputOption.Enabled:= False ;
   lcLengthGroup.Enabled:= False ;
  End ;

  CheckValidInputLength ;

 End ;//with
end;

procedure TfrmPkgEntry.acAddPkgUpdate(Sender: TObject);
begin
 acAddPkg.Enabled:= (dmsPkg.mtUserProp.Active) and (dmsPkg.mtUserProp.RecordCount > 0)
 and (dmsPkg.mtUserPropProductNo.AsInteger > 0)
end;

procedure TfrmPkgEntry.acAddPkgExecute(Sender: TObject);
begin
 With dmsPkg do
 Begin
  if mtpackages.Active then
  Begin
   if mtpackages.State <> dsBrowse then
   Try
    mtPackages.Post ;
   Except
    on eDatabaseError do
     Raise ;
   End ;
   mtPackages.Append ;
  End
   else
    Begin
     mtpackages.Active := True ;
     mtpackages.Insert ;
    End ;
//     ShowMessage('Välj produkt!') ;
  grdPackages.SetFocus ;
 End ;
end;

procedure TfrmPkgEntry.acPktNrSerieExecute(Sender: TObject);
begin
 With dmsPkg do
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
 End ;// with
end;

procedure TfrmPkgEntry.acRemoveRowExecute(Sender: TObject);
begin
 With dmsPkg do
 Begin
  mtPackages.Delete ;
 End ;
end;

procedure TfrmPkgEntry.acRemoveRowUpdate(Sender: TObject);
begin
 With dmsPkg do
 Begin
  acRemoveRow.Enabled:= (dmsPkg.mtpackages.Active) and
  ((dmsPkg.mtpackages.State in [dsEdit, dsInsert])
  or (dmsPkg.mtpackages.RecordCount > 0)) ;
 End ;
end;

procedure TfrmPkgEntry.acPktNrSerieUpdate(Sender: TObject);
begin
 With dmsPkg do
 Begin
  acPktNrSerie.Enabled:= (dmsPkg.mtpackages.Active) and (dmsPkg.mtpackages.RecordCount > 0) ;
 End ;
end;

procedure TfrmPkgEntry.grdPackagesDBTableView1Column1PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  NewValue: string;
  PkgNo : Integer ;
  TestPkgNo : Int64 ;
  Res_UserName : String ;
begin
 Error:= False ;
 With dmsPkg do
 Begin
  NewValue := DisplayValue ;

  TestPkgNo := StrToInt64(NewValue) ;
  if TestPkgNo > Const_MAX_PKG_NO then
  Begin
   ErrorText:= 'Max packageNo allowed is '+IntToStr(Const_MAX_PKG_NO) ;
   Error:= True ;
  End ;

  PkgNo := StrToIntDef(NewValue,0) ;

  if mtDupPkgNo.FindKey([PkgNo, Trim(mtUserPropSupplierCode.AsString)]) then
  Begin
   MessageBeep(MB_ICONEXCLAMATION);
   ErrorText:= 'Paketnr finns i listan redan.' ;
   MessageBeep(MB_ICONINFORMATION);
   Error:= True ;
  End
  else
  if PackageNumberExists(PkgNo, mtUserPropSupplierCode.AsString) then
  Begin
   ErrorText:= 'Paketnr finns redan. '+ Pkg_Info(PkgNo, Trim(mtUserPropSupplierCode.AsString)) ;
   Error:= True ;
  End
  else
  if dmsSystem.Pkg_Reserved(
          PkgNo,
          mtUserPropSupplierCode.AsString, Self.Name, Res_UserName
          ) <> ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          ErrorText:= 'Paketnr '+DisplayValue+' är reserverat av användare '+ Res_UserName ;
          Error:= True ;
         End ;
 End ; //with
end ;

function ReplaceCommas(S : String) : String ;
begin
  { Convert commas to period }
  while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
 Result:= S ;

  { Convert period to commas}
{  while Pos('.', S) > 0 do
    S[Pos('.', S)] := ',';
 Result:= S ; }
end;

Function TfrmPkgEntry.LengthExistInGrid (const ManLength : String) : Boolean ;
Var x : Integer ;
Begin
 Result:= False ;
 With dmsPkg do
 Begin For x := FirstLengthColumn to mtPackages.FieldCount - 1 do
  Begin
   if mtPackages.Fields.Fields[x].DisplayLabel = ManLength then
    Result:= True ;
  End ;
 End ;//With
End ;

procedure TfrmPkgEntry.acAddLengthColumnExecute(Sender: TObject);
Var AColumn             : TcxGridDBBandedColumn;
    fAddSpecialLengths  : TfAddSpecialLengths;
    x                   : Byte ;
    s                   : String ;
    CurrentLengths      : TStringList ;


function Pad(const s : String) : String ;
Var Dec : Byte ;
Begin
 //1234.4
 //999
 Dec:= Pos(',',S) ;
 if Pos(',',S) > 0 then
 Begin
  if Length(Copy(S,1,Dec-1)) < 4 then
  Result:= '0'+S
  else
  Result:= S ;
 End
 else
 Begin
  if Length(S) < 4 then
  Result:= '0'+S
  else
  Result:= S ;
 End ;

End ;

begin
 With dmsPkg do
 Begin
  CurrentLengths:= TStringList.Create ;
  Try

  fAddSpecialLengths:= TfAddSpecialLengths.Create(nil);

  For x := FirstLengthColumn to mtPackages.FieldCount - 1 do
   fAddSpecialLengths.lbSpecialLengths.Items.Add(Pad(mtPackages.Fields.Fields[x].DisplayLabel)) ;

  For x := FirstLengthColumn to mtPackages.FieldCount - 1 do
   CurrentLengths.Add(Pad(mtPackages.Fields.Fields[x].DisplayLabel)) ;   

  CreateFieldsInmtPackagesTable(Sender) ;

//  if dmsPkg.InputOption = INPUT_SPECIAL_LENGTH then
  For x := mtPackages.FieldCount - 1 downto FirstLengthColumn do
  Begin
   mtPackages.Fields.Remove(mtPackages.Fields.Fields[x]) ;
   mtPackages.FieldDefs[x].Free ;

//   mtPackages.FieldDefs.Clear ;
//   mtPackages.Fields.Fields[x].Free ;
   grdPackagesDBBandedTableView1.Columns[x].Free ;
  End ;


  mtPackages.Active:= False ;
  ManuellLengthColumn:= FirstLengthColumn ;
  Try
   if fAddSpecialLengths.ShowModal = mrOK then
   Begin
    For x := 0 to fAddSpecialLengths.lbSpecialLengths.Items.Count - 1 do
    Begin
     s := fAddSpecialLengths.lbSpecialLengths.Items[x] ;
     if not LengthExistInGrid (s {fAddSpecialLengths.lbSpecialLengths.Items[x]}) then
     Begin
{   mtPackages.FieldDefs.Add(sq_ProductLengthsActualLengthMM.AsString,ftInteger,0,False) ;
   mtPackages.FieldDefs[x].CreateField(nil);
   mtPackages.FieldByName(sq_ProductLengthsActualLengthMM.AsString).DisplayLabel:= LengthTitle ; }

      mtPackages.FieldDefs.Add(S,ftInteger,0,False) ;
      mtPackages.FieldDefs[ManuellLengthColumn+x].CreateField(nil);
//      mtPackages.FieldByName(S).DisplayLabel  := S ;
//      mtPackages.FieldByName(S).Visible       := True ;

      AColumn                       := grdPackagesDBBandedTableView1.CreateColumn ;
      AColumn.Options.Filtering     := False ;
      AColumn.DataBinding.FieldName := S ;
      AColumn.Position.BandIndex    := 2 ;
//      mtPackages.Active             := True ;
//      ManuellLengthColumn           := Succ(x) ;
     End
      else
       ShowMessage('Längd '+fAddSpecialLengths.lbSpecialLengths.Items[x]+' finns redan i tabellen.') ;
    End ;//x
   End //if fAddSpecialLengths.ShowModal = mrOK then
   else
   Begin
    For x := 0 to CurrentLengths.Count - 1 do
    Begin
     s := CurrentLengths.Strings[x] ;
     if not LengthExistInGrid (s {fAddSpecialLengths.lbSpecialLengths.Items[x]}) then
     Begin
      mtPackages.FieldDefs.Add(S,ftInteger,0,False) ;
      mtPackages.FieldDefs[ManuellLengthColumn+x].CreateField(nil);

      AColumn                       := grdPackagesDBBandedTableView1.CreateColumn ;
      AColumn.Options.Filtering     := False ;
      AColumn.DataBinding.FieldName := S ;
      AColumn.Position.BandIndex    := 2 ;
     End
      else
       ShowMessage('Längd '+CurrentLengths.Strings[x]+' finns redan i tabellen.') ;
    End ;//x
   End ;//else

  Finally
   FreeAndNil(fAddSpecialLengths) ;
  End ;
  mtPackages.Active:= True ;
  Finally
   CurrentLengths.Free ;
  End ;
 End ;//With

end;

procedure TfrmPkgEntry.grdPackagesDBBandedTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
 Try
  if AEdit is TcxCustomTextEdit then
    with TcxCustomTextEdit(AEdit) do begin
      if (Key = VK_RIGHT) and (CursorPos=Length(TcxCustomTextEdit(AEdit).Text)) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(True), 0)
      else if (Key = VK_LEFT) and (CursorPos=0) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(False), 0);
    end;
 Except
 End ;
end;

procedure TfrmPkgEntry.icLengthOptionPropertiesChange(Sender: TObject);
begin
 With dmsPkg do
 Begin
  if mtUserPropLengthOption.AsInteger = 0 then
  lcLengthGroup.Enabled := FALSE
   else
    lcLengthGroup.Enabled := TRUE;
 End ;//With
end;

procedure TfrmPkgEntry.acAddLengthColumnUpdate(Sender: TObject);
begin
 With dmsPkg do
 Begin
  acAddLengthColumn.Enabled:= (mtPackages.Active) and (mtPackages.RecordCount = 0)
  AND (icInputOption.ItemIndex = 0) ;
 End ;
end;

procedure TfrmPkgEntry.lcLengthGroupPropertiesChange(Sender: TObject);
begin
 dmsPkg.LoadGroupLengths(dmsPkg.mtUserPropLengthGroupNo.AsInteger);
 if (dmsPkg.mtUserProp.Active) and (dmsPkg.mtUserProp.RecordCount > 0)
 and (dmsPkg.mtUserPropProductNo.AsInteger > 0)then
 ReLoadPackageColumnsWithAllLengths(Sender) ;
end;//proc

procedure TfrmPkgEntry.cdAutoColWidthPropertiesChange(Sender: TObject);
begin
 With dmsPkg do
 Begin
  grdPackagesDBBandedTableView1.OptionsView.ColumnAutoWidth:= mtUserPropAutoColWidth.AsInteger = 1 ;
 End ;
end;

procedure TfrmPkgEntry.acSearchRunNoExecute(Sender: TObject);
var fSearchRunNo: TfSearchRunNo;
begin
 fSearchRunNo:= TfSearchRunNo.Create(nil);
 Try
 fSearchRunNo.mtProps.Edit ;
 fSearchRunNo.mtPropsRegPointNo.AsInteger:= dmsPkg.mtUserPropRegPointNo.AsInteger ;
 fSearchRunNo.mtPropsSupplierNo.AsInteger:= dmsPkg.mtUserPropProducerNo.AsInteger ;
 fSearchRunNo.mtProps.Post ;
 if fSearchRunNo.ShowModal = mrOK then
 Begin
  dmsPkg.mtUserProp.Edit ;
  dmsPkg.mtUserPropRunNo.AsInteger:= fSearchRunNo.cds_RunNosKrnr.AsInteger ;
  dmsPkg.mtUserProp.Post ;
 End ;
 Finally
  FreeAndNil(fSearchRunNo) ;
 End ;
end;

procedure TfrmPkgEntry.icInputOptionPropertiesChange(Sender: TObject);
begin
// if (dmsPkg.mtProd_Records.Active) and (dmsPkg.mtProd_Records.RecordCount > 0) then
 ReLoadPackageColumnsWithAllLengths(Sender) ;
end;

procedure TfrmPkgEntry.acDeleteAllRowsExecute(Sender: TObject);
begin
 With dmsPkg do
 Begin
  if mtpackages.State <> dsBrowse then
   mtPackages.Cancel ;
  mtPackages.First ;
  while not mtPackages.Eof do
  Begin
   mtPackages.Delete ;
  End ;
 End ;
end;

procedure TfrmPkgEntry.acDeleteAllRowsUpdate(Sender: TObject);
begin
 With dmsPkg do
 Begin
  acDeleteAllRows.Enabled:= (mtpackages.Active) and (mtPackages.RecordCount > 0) ;
 End ;
end;

procedure TfrmPkgEntry.grdPackagesDBBandedTableView1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 With dmsPkg do
 Begin
  if Key = VK_DOWN then
  Begin
   if grdPackagesDBBandedTableView1.Controller.NewItemRecordFocused then
   if mtpackages.State in [dsInsert, dsEdit] then
//   mtpackages.Post ;
   mtpackages.Insert ;
  End
   else
    if Key = VK_RETURN then
     if mtpackages.State in [dsInsert] then ;
 End ;//with
end;

procedure TfrmPkgEntry.grdPackagesDBBandedTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
{ if grdPackagesDBBandedTableView1.OptionsView.NewItemRow then
 AAllow := grdPackagesDBBandedTableView1.Controller.NewItemRecordFocused
 else
 AAllow:= True ; }
end;

procedure TfrmPkgEntry.acInmatningsradExecute(Sender: TObject);
begin
 grdPackagesDBBandedTableView1.OptionsView.NewItemRow:= not grdPackagesDBBandedTableView1.OptionsView.NewItemRow ;
end;

procedure TfrmPkgEntry.cbNewItemRowPropertiesChange(Sender: TObject);
begin
 With dmsPkg do
 Begin
  grdPackagesDBBandedTableView1.OptionsView.NewItemRow:= (mtUserProp.Active) and (mtUserPropNewItemRow.AsInteger = 1) ;
 End ;
end;

procedure TfrmPkgEntry.beProductDescriptionPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
 if AButtonIndex = 0 then
  AddProduct(Sender)
   else
    RemoveProduct(Sender) ;
end;

procedure TfrmPkgEntry.AddProduct(Sender: TObject) ;
var frmGetProd_II: TfrmGetProd_II ;
begin
 //Add product
 With dmsPkg do
 Begin
   frmGetProd_II:= TfrmGetProd_II.Create(Nil);
   Try
   frmGetProd_II.PageControl.HideTabs := True ;
   if frmGetProd_II.ShowModal = mrOk then
   Begin
    mtUserProp.Edit ;
    mtUserPropProductDescription.AsString := dmsSystem.mtMarkedProdPRODUKTDESC.AsString ;
    mtUserPropProductNo.AsInteger         := dmsSystem.mtMarkedProdProductNo.AsInteger ;
    mtUserPropProductGroupNo.AsInteger    := dmsSystem.mtMarkedProdProductGroupNo.AsInteger ;
    mtUserPropACT_THICK.AsFloat           := dmsSystem.mtMarkedProdAT.AsFloat ;
    mtUserPropACT_WIDTH.AsFloat           := dmsSystem.mtMarkedProdAW.AsFloat ;
    mtUserPropNOM_THICK.AsFloat           := dmsSystem.mtMarkedProdNT.AsFloat ;
    mtUserPropNOM_WIDTH.AsFloat           := dmsSystem.mtMarkedProdNB.AsFloat ;

    mtUserPropSurfacingNo.AsInteger       := dmsSystem.mtMarkedProdSurfacingNo.AsInteger ;



    if dmsSystem.mtMarkedProdSequenceNo.AsInteger = 3 {Ramar} then
    Begin
     mtUserPropInputOption.AsInteger  := INPUT_RAMAR ;
     mtUserPropALMM.AsFloat           := dmsSystem.mtMarkedProdAT.AsFloat*2+dmsSystem.mtMarkedProdAW.AsFloat ;
    End
    else
    Begin
     if mtUserPropInputOption.AsInteger = INPUT_RAMAR then
      mtUserPropInputOption.AsInteger := INPUT_PIECES ;
    End ;


    mtUserProp.Post ;
    CreateFieldsInmtPackagesTable(Sender) ;
   End ;
   Finally
    dmsSystem.mtMarkedProd.Active:= False ;
    FreeAndNil(frmGetProd_II) ;
   End ;
 End ;//with
end;

{procedure TfrmPkgEntry.AddProduct(Sender: TObject) ;
Var frmGetProduct : TfrmGetProduct ;
begin
 //Add product
 With dmsPkg do
 Begin
   frmGetProduct:= TfrmGetProduct.Create(Nil);
   Try
   if frmGetProduct.ShowModal = mrOk then
   Begin
    mtUserProp.Edit ;
    mtUserPropProductDescription.AsString := dmcSystem.cds_ProductsProductDisplayName.AsString ;
    mtUserPropProductNo.AsInteger         := dmcSystem.cds_ProductsProductNo.AsInteger ;
    mtUserPropProductGroupNo.AsInteger    := dmcSystem.cds_ProductsProductGroupNo.AsInteger ;
    mtUserPropACT_THICK.AsFloat           := dmcSystem.cds_ProductsActualThicknessMM.AsFloat ;
    mtUserPropACT_WIDTH.AsFloat           := dmcSystem.cds_ProductsActualWidthMM.AsFloat ;
    mtUserPropNOM_THICK.AsFloat           := dmcSystem.cds_ProductsNominalThicknessMM.AsFloat ;
    mtUserPropSurfacingNo.AsInteger       := dmcSystem.cds_ProductsSurfacingNo.AsInteger ;
    mtUserProp.Post ;
    CreateFieldsInmtPackagesTable(Sender) ;
   End ;
   Finally
    dmcSystem.cds_Products.Active:= False ;
    FreeAndNil(frmGetProduct) ;
   End ;
 End ;//with
end;}

procedure TfrmPkgEntry.RemoveProduct(Sender: TObject) ;
begin
 With dmsPkg do
 Begin
  mtUserProp.Edit ;
  mtUserPropProductDescription.AsString := 'Välj produkt' ;
  mtUserPropProductNo.AsInteger         := -1 ;
  mtUserPropProductGroupNo.AsInteger    := -1 ;
  mtUserPropACT_THICK.AsFloat           := 0 ;
  mtUserPropACT_WIDTH.AsFloat           := 0 ;
  mtUserPropNOM_THICK.AsFloat           := 0 ;
  mtUserPropSurfacingNo.AsInteger       := -1 ;
  mtUserProp.Post ;
 End ;//with
end;

procedure TfrmPkgEntry.acSavePkgsExecute(Sender: TObject);
const
  LF = #10;
Var GoAndSave   : Boolean ;
    LastInvNr   : Integer ;
    InvDate     : TDateTime ;
    MaxDateMsg  : String ;
begin
 GoAndSave:= False ;
 With dmsPkg do
 Begin

  if mtUserPropRegDate.AsDateTime > Now then
  Begin
   ShowMessage('Registreringsdatum får inte vara större än aktuellt datum');
   Exit ;
  End ;

  LastInvNr  := dmsSystem.IsRegDateBeforeInvDate(mtUserPropLIPNo.AsInteger, mtUserPropRegDate.AsDateTime, InvDate, MaxDateMsg) ;
  if LastInvNr > -1 then
  Begin
   ShowMessage(MaxDateMsg) ;
   Exit ;
  End ;

  if (mtPackages.Fields[cPACKAGENO].IsNull) and (mtPackages.State in [dsInsert, dsEdit]) then
   mtPackages.Cancel ;

  if (mtPackages.State in [dsInsert, dsEdit]) then
   mtPackages.Post ;

  if mtUserPropAgentNo.AsInteger = 0 then
  if MessageDlg('Du har valt att INTE spara till produktionsloggen, vill du gå vidare? (om du tex skapar paket som skall synas i en inventering skall du kryssa i "Spara till produktionslogg") '
  ,  mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit ;



  if mtUserPropAgentNo.AsInteger = 1 then
  Begin
   if MessageDlg('Spara paket mot mätpunkt: '+
   mtUserPropPRODUCER.AsString
   +'/'+mtUserPropREGPOINT.AsString
   +LF+'Ägare:'+mtUserPropOWNER.AsString
   +LF+'Lagerplats: '+mtUserPropPIPNAME.AsString+'/'+mtUserPropLIPNAME.AsString
   +LF+'Datum: '+DateToStr(mtUserPropRegDate.AsDateTime)
   ,  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   GoAndSave:= True
  End
  else
  if MessageDlg('Spara paket mot mätpunkt: '+
  mtUserPropPRODUCER.AsString
  +'/'+mtUserPropREGPOINT.AsString
  +LF+'Ägare:'+mtUserPropOWNER.AsString
  +LF+'Lagerplats: '+mtUserPropPIPNAME.AsString+'/'+mtUserPropLIPNAME.AsString
  +LF+'Datum: '+DateToStr(mtUserPropRegDate.AsDateTime)
  +LF+'OBS! SPARAR INTE TILL PRODUKTIONSLOGGEN'
  ,  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  GoAndSave:= True ;


 if GoAndSave then
 Begin
 OKToSave := True ;

 if mtUserPropRegPointNo.AsInteger > -1 then
 Begin
  if dmsPkg.mtUserProp.State in [dsInsert, dsEdit] then
   dmsPkg.mtUserProp.Post ;

  mtpackages.DisableControls ;
  Try

 if mtpackages.RecordCount > 0 then
 Begin
  if mtUserPropLIPNo.AsInteger > -1 then
  Begin
  if mtpackages.State <> dsBrowse then
  Try
   mtPackages.Post ;
  Except
   on eDatabaseError do
    Raise ;
  End ;

 //Check that packages are OKToSave
  mtpackages.First ;
  While not mtpackages.Eof do
  Begin
   if mtpackages.Fields[cTOTALPCS].AsInteger < 1 then //PCS
    Begin
     ShowMessage('Paketnr '+mtpackages.Fields[cPACKAGENO].AsString+' saknar stycketal') ;
     OKToSave := False ;
    End ;
   if Length(Trim(mtpackages.Fields[cPACKAGENO].AsString)) = 0 then //PCS
    Begin
     ShowMessage('Radnr '+mtpackages.Fields[cRECID].AsString+' saknar paketnr') ;
     OKToSave := False ;
    End ;
   if mtpackages.Fields[cTOTALLPM].AsInteger < 1 then //PCS
    Begin
     ShowMessage('Paketnr '+mtpackages.Fields[cPACKAGENO].AsString+' saknar löpmeter') ;
     OKToSave := False ;
    End ;

   mtpackages.Next ;
  End ;
  if OKToSave = False then
   Exit ;

     if SavePackages2 then
     Begin
      if UnSavedPackages then
      Begin
       ShowMessage('Gröna rader är paketnr/preix som redan finns i databasen, röda rader är paket som inte kunde sparas (kontakta support)') ;
       RemoveSavedPkgsFromMemTable(Sender) ;
      End
      else
      Begin
       if MessageDlg('Paket sparade OK, vill du stänga?',
       mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       Begin
        SavePkgs:= True ;
        Close ;
       End
       else
       Begin
        RemoveSavedPkgsFromMemTable(Sender) ;
       End ;
      End ;//else on if UnSavedPackages then
     End //if SavePackages2 then
     else
     Begin
      RemoveSavedPkgsFromMemTable(Sender) ;
      ShowMessage('De paket som finns kvar i listan kunde inte registreras.');
      OKToSave:= False ;
     End ;

  End
  else
   ShowMessage('Välj ett lager.') ;
 End ;

 Finally
  mtpackages.EnableControls ;
 End ;

 End //if
  else
   ShowMessage('Ingen mätpunkt vald') ;
 End ; //with
 End ;//if...
end;

procedure TfrmPkgEntry.acSavePkgsUpdate(Sender: TObject);
begin
 With dmsPkg do
 Begin
  acSavePkgs.Enabled:= (mtPackages.Active) and
  ((dmsPkg.mtpackages.State in [dsEdit, dsInsert])
   or (dmsPkg.mtpackages.RecordCount > 0)) ;
 End ; 
end;

procedure TfrmPkgEntry.acValjProduktExecute(Sender: TObject);
begin
 AddProduct(Sender) ;
end;

procedure TfrmPkgEntry.acExitExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmPkgEntry.grdPackagesDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  aColumn: TcxCustomGridTableItem;
  aValue: Variant;
begin
 With dmsPkg do
 Begin
  if (mtPackages.Active) and (dmsPkg.mtpackages.RecordCount > 0) then
  Begin
   aColumn :=(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('PackageTypeNo');
   aValue := ARecord.Values[aColumn.Index];

//    aColumn :=(Sender as TcxGridDBTableView).GetColumnByFieldName('PackageTypeNo');
    if (ARecord.Values[aColumn.Index] <> null) and (AItem <> nil) then
    Begin
      aValue := ARecord.Values[aColumn.Index];

      if (aValue = -2)  then
      AStyle:= cxStyleAlreadyExist
      else
      if (aValue = -1)  then
      AStyle:= cxStyleFailedToSave ;
    End ;
  End ;//if (mtPackages.Active) and (dmsPkg.mtpackages.RecordCount > 0) then
 End ;//With
end;

procedure TfrmPkgEntry.acPkgInfoExecute(Sender: TObject);
var frmPkgInfo: TfrmPkgInfo;
begin
 With dmsPkg do
 Begin
  frmPkgInfo:= TfrmPkgInfo.Create(Nil);
  Try
   frmPkgInfo.PackageNo     := mtpackages.Fields.Fields[cPACKAGENO].AsInteger ;
   frmPkgInfo.SupplierCode  := Trim(mtpackages.Fields.Fields[cSUPPLIERCODE].AsString) ;
   frmPkgInfo.ShowModal ;
  Finally
   FreeAndNil(frmPkgInfo) ;
  End ;
 End ;
end;

end.
