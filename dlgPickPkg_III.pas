unit dlgPickPkg_III ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB,

  VidaType, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, ExtCtrls;

type
  TfrmPackagePicker_III = class(TForm)
    pnlButtons: TPanel;
    pnlGrid: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    grdPkgDuplicates: TcxGrid;
    grdPkgDuplicatesDBTableView1: TcxGridDBTableView;
    grdPkgDuplicatesDBTableView1PackageNo: TcxGridDBColumn;
    grdPkgDuplicatesDBTableView1SupplierCode: TcxGridDBColumn;
    grdPkgDuplicatesDBTableView1ProductDisplayName: TcxGridDBColumn;
    grdPkgDuplicatesDBTableView1LengthDescription: TcxGridDBColumn;
    grdPkgDuplicatesDBTableView1LogicalInventoryName: TcxGridDBColumn;
    grdPkgDuplicatesDBTableView1ClientName: TcxGridDBColumn;
    grdPkgDuplicatesDBTableView1PackageTypeNo: TcxGridDBColumn;
    grdPkgDuplicatesDBTableView1LIP: TcxGridDBColumn;
    grdPkgDuplicatesLevel1: TcxGridLevel;
    procedure btnOKClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FSupplierCode: string3;
    FSupplierNo: Integer;
    FProductNo : Integer ;
    FProductLengthNo : Integer ;
    FNoOfLengths : Integer ;
    FLogicalInventoryPointNo : Integer ;
    FPackageTypeNo : Integer ;
    function getDataSource: TDataSource;
    procedure setDataSource(const Value: TDataSource);
    { Private declarations }
  public
    { Public declarations }
    property DataSource : TDataSource read getDataSource write setDataSource;
    property SupplierCodeForSelectedPkg : string3 read FSupplierCode;
    property SupplierNoForSelectedpkg   : Integer read FSupplierNo;
    property ProductNoForSelectedpkg   : Integer read FProductNo;
    property ProductLengthNoForSelectedpkg   : Integer read FProductLengthNo;
    property NoOfLengthsForSelectedpkg   : Integer read FNoOfLengths;
    property PackageTypeNoForSelectedpkg : Integer read FPackageTypeNo ;
    property LogicalInventoryPointNoForSelectedpkg     : Integer read FLogicalInventoryPointNo ;
  end;

//var frmPackagePicker_III: TfrmPackagePicker_III;

implementation

{$R *.dfm}

uses
  vidaUser, dmcInvCtrl, dmsDataConn;

{ TfrmPackagePicker }

function TfrmPackagePicker_III.getDataSource: TDataSource;
begin
 Result := grdPkgDuplicatesDBTableView1.DataController.DataSource ;
end;

procedure TfrmPackagePicker_III.setDataSource(const Value: TDataSource);
begin
 grdPkgDuplicatesDBTableView1.DataController.DataSource := Value;
end;

procedure TfrmPackagePicker_III.btnOKClick(Sender: TObject);
begin
  FSupplierCode             := trim(grdPkgDuplicatesDBTableView1.DataController.DataSource.DataSet.FieldValues['SupplierCode']);
  FSupplierNo               := grdPkgDuplicatesDBTableView1.DataController.DataSource.DataSet.FieldValues['SupplierNo'] ;
  FProductNo                := grdPkgDuplicatesDBTableView1.DataController.DataSource.DataSet.FieldValues['ProductNo'] ;
  FPackageTypeNo            := grdPkgDuplicatesDBTableView1.DataController.DataSource.DataSet.FieldValues['PackageTypeNo'] ;
  FLogicalInventoryPointNo  := grdPkgDuplicatesDBTableView1.DataController.DataSource.DataSet.FieldValues['LIP'] ;

{  FSupplierCode := trim(grdPackages.DataSource.DataSet.FieldValues['SupplierCode']);
  FSupplierNo   := grdPackages.DataSource.DataSet.FieldValues['SupplierNo'] ;
  FProductNo := grdPackages.DataSource.DataSet.FieldValues['ProductNo'] ;
  FPackageTypeNo := grdPackages.DataSource.DataSet.FieldValues['PackageTypeNo'] ;
  FLogicalInventoryPointNo := grdPackages.DataSource.DataSet.FieldValues['LIP'] ;
 }
end;

procedure TfrmPackagePicker_III.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= True ;
end;

end.
