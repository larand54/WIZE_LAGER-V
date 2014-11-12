unit uPkgLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, 
  ExtCtrls, Grids, DBGrids, ImgList, StdCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters;

type
  TfPkgLog = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    lbAskPkgNo: TdxBarLargeButton;
    lbExit: TdxBarLargeButton;
    Panel1: TPanel;
    ImageList1: TImageList;
    Label1: TLabel;
    grdPkgLoggDBTableView1: TcxGridDBTableView;
    grdPkgLoggLevel1: TcxGridLevel;
    grdPkgLogg: TcxGrid;
    grdPkgLoggDBTableView1OperationNo: TcxGridDBColumn;
    grdPkgLoggDBTableView1LIPNO: TcxGridDBColumn;
    grdPkgLoggDBTableView1DB_Bokfrd: TcxGridDBColumn;
    grdPkgLoggDBTableView1Operation: TcxGridDBColumn;
    grdPkgLoggDBTableView1Mtpunkt: TcxGridDBColumn;
    grdPkgLoggDBTableView1Anvndare: TcxGridDBColumn;
    grdPkgLoggDBTableView1Lager: TcxGridDBColumn;
    grdPkgLoggDBTableView1gare: TcxGridDBColumn;
    grdPkgLoggDBTableView1Produkt: TcxGridDBColumn;
    grdPkgLoggDBTableView1Antalperlngd: TcxGridDBColumn;
    grdPkgLoggDBTableView1AM3: TcxGridDBColumn;
    grdPkgLoggDBTableView1Styck: TcxGridDBColumn;
    grdPkgLoggDBTableView1PackageTypeNo: TcxGridDBColumn;
    grdPkgLoggDBTableView1PktTypSkapad: TcxGridDBColumn;
    grdPkgLoggDBTableView1Registrerad: TcxGridDBColumn;
    procedure lbAskPkgNoClick(Sender: TObject);
    procedure lbExitClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure GetPkgLog(Sender : TObject) ;
  public
    { Public declarations }
    PackageNo : Integer ;
    SupplierCode : String ;
  end;

//var  fPkgLog: TfPkgLog;

implementation

uses UnitPkgNo, dmsVidaSystem, VidaUser, dmsDataConn;

{$R *.dfm}

procedure TfPkgLog.lbAskPkgNoClick(Sender: TObject);
Var PkgSupplierNo, ProductNo : Integer ;
    frmPkgNo: TfrmPkgNo;
begin
 frmPkgNo:= TfrmPkgNo.Create(Nil);
 Try
  if frmPkgNo.ShowModal = mrOk then
  Begin
   PackageNo:= StrToInt(Trim(frmPkgNo.dxMaskPackageNo.Text));
   SupplierCode:= Trim(frmPkgNo.dxMaskSupplierCode.Text) ;
   if Length(SupplierCode) = 0 then
   Begin
    SupplierCode := dmsSystem.PkgNoToSuppCode_II(PackageNo, PkgSupplierNo, ProductNo);
//    GetPkgLog(Sender) ;
   End
   else
   Begin
//    GetPkgLog(Sender) ;
   End ;

  End ;
 Finally
  FreeAndNil(frmPkgNo) ;
 End ;
End ;

procedure TfPkgLog.GetPkgLog(Sender : TObject) ;
var
  Save_Cursor : TCursor;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 try

 With dmsSystem do
 Begin
  Label1.Caption:= 'Package No: '+IntToStr(PackageNo)+'/'+SupplierCode ;

  cds_pkgLogII.Active:= False ;
  sp_pkgLogII.Close ;
  sp_pkgLogII.ParamByName('PackageNo').AsInteger:= PackageNo ;
  sp_pkgLogII.ParamByName('SupplierCode').AsString:= SupplierCode ;
  sp_pkgLogII.Open ;
  cds_pkgLogII.Active:= True ;
 End ;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;

End ;

procedure TfPkgLog.lbExitClick(Sender: TObject);
begin
 Close ;
end;

procedure TfPkgLog.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 With dmsSystem do
 Begin
  cds_pkgLogII.Active:= False ;
  sp_pkgLogII.Close ;
 End ;
 CanClose := True ;
end;

procedure TfPkgLog.FormShow(Sender: TObject);
begin
 if PackageNo > 0 then
  GetPkgLog(Sender) ;
end;

end.
