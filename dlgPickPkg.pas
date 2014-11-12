unit dlgPickPkg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, StdCtrls, Buttons, DB,

  VidaType, dxExEdtr;

type
  TfrmPackagePicker = class(TForm)
    pnlButtons: TPanel;
    pnlGrid: TPanel;
    grdPackages: TdxDBGrid;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    grdPackagesPackageNo: TdxDBGridMaskColumn;
    grdPackagesSupplierCode: TdxDBGridMaskColumn;
    grdPackagesProductDisplayName: TdxDBGridMaskColumn;
    grdPackagesLengthDescription: TdxDBGridMaskColumn;
    grdPackagesProductLengthNo: TdxDBGridMaskColumn;
    grdPackagesNoOfLengths: TdxDBGridMaskColumn;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FSupplierCode: string3;
    FSupplierNo: Integer;
    FProductNo : Integer ;
    FProductLengthNo : Integer ;
    FNoOfLengths : Integer ;
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
  end;

//var frmPackagePicker: TfrmPackagePicker;

implementation

{$R *.dfm}

uses
  vidaUser, dmsDataConn;

{ TfrmPackagePicker }

function TfrmPackagePicker.getDataSource: TDataSource;
begin
  Result := grdPackages.DataSource;
end;

procedure TfrmPackagePicker.setDataSource(const Value: TDataSource);
begin
  grdPackages.DataSource := Value;
end;

procedure TfrmPackagePicker.btnOKClick(Sender: TObject);
begin
  FSupplierCode := trim(grdPackages.DataSource.DataSet.FieldValues['SupplierCode']);
  FSupplierNo   := grdPackages.DataSource.DataSet.FieldValues['SupplierNo'] ;
  FProductNo := grdPackages.DataSource.DataSet.FieldValues['ProductNo'] ;
  FProductLengthNo := grdPackages.DataSource.DataSet.FieldValues['ProductLengthNo'] ;
  FNoOfLengths := grdPackages.DataSource.DataSet.FieldValues['NoOfLengths'] ;
end;

procedure TfrmPackagePicker.FormCreate(Sender: TObject);
begin
//  grdPackages.LoadFromIniFile(dmsConnector.InifilesMap+'VisPickPkg'+'.'+ThisUser.UserName);
end;

procedure TfrmPackagePicker.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
//  grdPackages.SaveToIniFile(dmsConnector.InifilesMap+'VisPickPkg'+'.'+ThisUser.UserName);
  CanClose:= True ;
end;

end.
