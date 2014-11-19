unit UnitPkgInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, dxBar, dxBarExtItems,StdCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, ActnList, cxContainer,
  cxLabel, cxDBLabel, cxGridDBTableView, cxSplitter, cxTextEdit,
  cxLookAndFeels, cxLookAndFeelPainters, cxDBEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, cxNavigator, siComp, siLngLnk, System.Actions;

type
  TfrmPkgInfo = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    lbGetPkg: TdxBarLargeButton;
    dxDBEdit3: TcxDBTextEdit;
    dxDBEdit4: TcxDBTextEdit;
    dxDBEdit5: TcxDBTextEdit;
    dxDBEdit6: TcxDBTextEdit;
    dxDBEdit7: TcxDBTextEdit;
    dxDBEdit8: TcxDBTextEdit;
    dxDBEdit9: TcxDBTextEdit;
    dxDBEdit10: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dxDBEdit11: TcxDBTextEdit;
    Label11: TLabel;
    Label12: TLabel;
    dxDBEdit12: TcxDBTextEdit;
    Label19: TLabel;
    dxDBEdit19: TcxDBTextEdit;
    Label20: TLabel;
    dxDBEdit20: TcxDBTextEdit;
    Label21: TLabel;
    dxDBEdit21: TcxDBTextEdit;
    Label22: TLabel;
    dxDBEdit22: TcxDBTextEdit;
    Label23: TLabel;
    dxDBEdit23: TcxDBTextEdit;
    dxDBEdit24: TcxDBTextEdit;
    Label24: TLabel;
    Label25: TLabel;
    dxDBEdit25: TcxDBTextEdit;
    ePcsPerACTLength: TcxTextEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    dxDBEdit26: TcxDBTextEdit;
    dxDBEdit27: TcxDBTextEdit;
    ActionList1: TActionList;
    acPkgInfo: TAction;
    acClose: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxEditStyleController1: TcxEditStyleController;
    Panel3: TPanel;
    grdPkgInfo: TcxGrid;
    grdPkgInfoDBBandedTableView1: TcxGridDBBandedTableView;
    grdPkgInfoDBBandedTableView1LOAD_CUSTOMER: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1LOAD_SUPPLIER: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1LOAD_DATE: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1LOAD_NO: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1LO_NUMBER: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1FS: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1LOAD_CREATED_BY: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1LOAD_STATUS: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1INVOICE_NO: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1INV_CREATED_BY: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1INVOICE_DATE: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1INT_INVOICE_NO: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1INVOICETYPE: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1DEBIT_CREDIT: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1ORDER_NO: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1ORDER_CUSTOMER: TcxGridDBBandedColumn;
    grdPkgInfoLevel1: TcxGridLevel;
    Panel2: TPanel;
    Panel4: TPanel;
    cxSplitter1: TcxSplitter;
    Panel5: TPanel;
    grdPkgLogg: TcxGrid;
    grdPkgLoggDBTableView1: TcxGridDBTableView;
    grdPkgLoggDBTableView1Anvndare: TcxGridDBColumn;
    grdPkgLoggDBTableView1Mtpunkt: TcxGridDBColumn;
    grdPkgLoggDBTableView1Operation: TcxGridDBColumn;
    grdPkgLoggDBTableView1Lager: TcxGridDBColumn;
    grdPkgLoggDBTableView1OperationNo: TcxGridDBColumn;
    grdPkgLoggDBTableView1Registrerad: TcxGridDBColumn;
    grdPkgLoggDBTableView1gare: TcxGridDBColumn;
    grdPkgLoggDBTableView1Produkt: TcxGridDBColumn;
    grdPkgLoggDBTableView1LIPNO: TcxGridDBColumn;
    grdPkgLoggDBTableView1DB_Bokfrd: TcxGridDBColumn;
    grdPkgLoggDBTableView1Antalperlngd: TcxGridDBColumn;
    grdPkgLoggDBTableView1AM3: TcxGridDBColumn;
    grdPkgLoggDBTableView1Styck: TcxGridDBColumn;
    grdPkgLoggDBTableView1PackageTypeNo: TcxGridDBColumn;
    grdPkgLoggDBTableView1PktTypSkapad: TcxGridDBColumn;
    grdPkgLoggLevel1: TcxGridLevel;
    ePcsPerNOMLength: TcxTextEdit;
    Label13: TLabel;
    tePkgNo: TcxTextEdit;
    tePrefix: TcxTextEdit;
    TtePkgNo: TTimer;
    cxSplitter2: TcxSplitter;
    ds_PkgLoggLinkedPackage: TDataSource;
    Panel6: TPanel;
    grdLinkedPackage: TcxGrid;
    grdLinkedPackageDBTableView1: TcxGridDBTableView;
    grdLinkedPackageDBTableView1Anvndare: TcxGridDBColumn;
    grdLinkedPackageDBTableView1Mtpunkt: TcxGridDBColumn;
    grdLinkedPackageDBTableView1Operation: TcxGridDBColumn;
    grdLinkedPackageDBTableView1Lager: TcxGridDBColumn;
    grdLinkedPackageDBTableView1Registrerad: TcxGridDBColumn;
    grdLinkedPackageDBTableView1gare: TcxGridDBColumn;
    grdLinkedPackageDBTableView1Produkt: TcxGridDBColumn;
    grdLinkedPackageDBTableView1Antalperlngd: TcxGridDBColumn;
    grdLinkedPackageDBTableView1AM3: TcxGridDBColumn;
    grdLinkedPackageDBTableView1Styck: TcxGridDBColumn;
    grdLinkedPackageDBTableView1PackageTypeNo: TcxGridDBColumn;
    grdLinkedPackageDBTableView1DB_Bokfrd: TcxGridDBColumn;
    grdLinkedPackageDBTableView1OperationNo: TcxGridDBColumn;
    grdLinkedPackageDBTableView1LIPNO: TcxGridDBColumn;
    grdLinkedPackageDBTableView1PktTypSkapad: TcxGridDBColumn;
    grdLinkedPackageLevel1: TcxGridLevel;
    Panel7: TPanel;
    cxDBTextEdit1: TcxDBTextEdit;
    ds_Vis_PackageRunInfo: TDataSource;
    Label14: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label16: TLabel;
    Label17: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Bevel1: TBevel;
    Label18: TLabel;
    siLangLinked_frmPkgInfo: TsiLangLinked;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbExitClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure tePkgNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TtePkgNoTimer(Sender: TObject);
  private
    { Private declarations }
    procedure ShowPkgInfo (Sender: TObject) ;
    procedure GetPkg(Sender: TObject);
  public
    { Public declarations }
   PackageNo : Integer ;
   SupplierCode : String ;
  end;

// var    frmPkgInfo: TfrmPkgInfo;

implementation

uses UnitPkgNo, dmsVidaSystem;

{$R *.dfm}

procedure TfrmPkgInfo.GetPkg(Sender: TObject);
Var
    Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

Try
 with dmsSystem do
 Begin
  cds_PkgLogII.Active := False ;
  cds_PkgLogII.ParamByName('@PackageNo').AsInteger   := PackageNo ;
  cds_PkgLogII.ParamByName('@SupplierCode').AsString := SupplierCode ;
  cds_PkgLogII.Active := True ;

  sp_PkgInfoII.Active:= False ;
  sp_PkgInfoII.ParamByName('@PackageNo').AsInteger   := PackageNo ;
  sp_PkgInfoII.ParamByName('@SupplierCode').AsString := SupplierCode ;
  sp_PkgInfoII.Active:= True ;


  sp_PcsPerLength.ParamByName('@PackageTypeNo').AsInteger:= sp_PkgInfoIIPACKAGETYPENO.AsInteger ;
  sp_PcsPerLength.ExecProc ;
  ePcsPerACTLength.Text   := sp_PcsPerLength.ParamByName('@PicesPerLength').AsString ;
  ePcsPerNOMLength.Text   := sp_PcsPerLength.ParamByName('@NomPicesPerLength').AsString ;
  sp_PcsPerLength.Close ;

  sp_LoadPkgInfo.Active:= False ;
  sp_LoadPkgInfo.ParamByName('@PackageNo').AsInteger   := PackageNo ;
  sp_LoadPkgInfo.ParamByName('@SupplierCode').AsString := SupplierCode ;
  sp_LoadPkgInfo.Active:= True ;


  sp_PkgLoggLinkedPackage.Active:= False ;
  sp_PkgLoggLinkedPackage.ParamByName('@PackageNo').AsInteger   := PackageNo ;
  sp_PkgLoggLinkedPackage.ParamByName('@SupplierCode').AsString := SupplierCode ;
  sp_PkgLoggLinkedPackage.Active:= True ;

  sp_Vis_PackageRunInfo.Active:= False ;
  sp_Vis_PackageRunInfo.ParamByName('@PackageNo').AsInteger   := PackageNo ;
  sp_Vis_PackageRunInfo.ParamByName('@SupplierCode').AsString := SupplierCode ;
  sp_Vis_PackageRunInfo.Active:= True ;


 End ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

end;

procedure TfrmPkgInfo.FormShow(Sender: TObject);
begin
 if PackageNo > 0 then
 Begin
  GetPkg(Sender) ;

  Self.Caption := 'PAKETINFORMATION ' + ' Paketnr: ' + dmsSystem.sp_PkgInfoIIPKG_NO.AsString
  + '/' +  dmsSystem.sp_PkgInfoIISUPP_CODE.AsString ;
 End ; 
end;

procedure TfrmPkgInfo.FormCreate(Sender: TObject);
begin
 PackageNo := 0 ;
 SupplierCode := '' ;
end;

procedure TfrmPkgInfo.lbExitClick(Sender: TObject);
begin
 Close ;
end;

procedure TfrmPkgInfo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 with dmsSystem do
 Begin
//  sq_PkgInfo.Close ;
//  cds_PkgInfo.Active:= False ;
//  cds_LoadPkgInfo.Active:= False ;
 End ;
 CanClose := True ;
end;

procedure TfrmPkgInfo.acPkgInfoExecute(Sender: TObject);
Var PkgSupplierNo, ProductNo : Integer ;
    frmPkgNo: TfrmPkgNo;
begin
 frmPkgNo:= TfrmPkgNo.Create(Nil);
 Try
  if frmPkgNo.ShowModal = mrOk then
  Begin
   PackageNo    := StrToInt(Trim(frmPkgNo.dxMaskPackageNo.Text));
   SupplierCode := Trim(frmPkgNo.dxMaskSupplierCode.Text) ;
   if Length(SupplierCode) = 0 then
   Begin
    SupplierCode := dmsSystem.PkgNoToSuppCode_II(PackageNo, PkgSupplierNo, ProductNo);
    GetPkg(Sender) ;
//    GetPkgLog(Sender) ;
   End
   else
   Begin
    GetPkg(Sender) ;
    //GetPkgLog(Sender) ;
   End ;
    Self.Caption := 'PAKETINFORMATION ' + ' Paketnr: ' + ' Paketnr: ' + dmsSystem.sp_PkgInfoIIPKG_NO.AsString
  + '/' +  dmsSystem.sp_PkgInfoIISUPP_CODE.AsString ;


  End ;

 Finally
  FreeAndNil(frmPkgNo) ;
 End ;
end;


procedure TfrmPkgInfo.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmPkgInfo.tePkgNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_RETURN then
  Exit ;
  ShowPkgInfo(Sender) ;
end;

procedure TfrmPkgInfo.ShowPkgInfo(Sender: TObject) ;
Var PkgSupplierNo, ProductNo : Integer ;
begin
   PackageNo    := StrToInt(Trim(tePkgNo.Text));
   SupplierCode := Trim(tePrefix.Text) ;
   if Length(SupplierCode) = 0 then
   Begin
    SupplierCode := dmsSystem.PkgNoToSuppCode_II(PackageNo, PkgSupplierNo, ProductNo);
    GetPkg(Sender) ;
//    GetPkgLog(Sender) ;
   End
   else
   Begin
    GetPkg(Sender) ;
//    GetPkgLog(Sender) ;
   End ;

 Self.Caption := 'PAKETINFORMATION ' + ' Paketnr: ' + dmsSystem.sp_PkgInfoIIPKG_NO.AsString
  + '/' +  dmsSystem.sp_PkgInfoIISUPP_CODE.AsString ;


 TtePkgNo.Enabled := True ;
end;

procedure TfrmPkgInfo.TtePkgNoTimer(Sender: TObject);
begin
 TtePkgNo.Enabled := False ;
 tePkgNo.SetFocus ;
end;

end.
