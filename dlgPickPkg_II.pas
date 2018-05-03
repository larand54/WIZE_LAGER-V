unit dlgPickPkg_II;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB,

  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, siComp, siLngLnk;

type
  TfrmPackagePicker_II = class(TForm)
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
    grdPkgDuplicatesLevel1: TcxGridLevel;
    siLangLinked_frmPackagePicker_II: TsiLangLinked;
    procedure btnOKClick(Sender: TObject);
  private
    FSupplierCode: string;
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
    property SupplierCodeForSelectedPkg : string read FSupplierCode;
    property SupplierNoForSelectedpkg   : Integer read FSupplierNo;
    property ProductNoForSelectedpkg   : Integer read FProductNo;
    property ProductLengthNoForSelectedpkg   : Integer read FProductLengthNo;
    property NoOfLengthsForSelectedpkg   : Integer read FNoOfLengths;
  end;

//var frmPackagePicker_II: TfrmPackagePicker_II;

implementation

{$R *.dfm}

uses
  vidaUser, dmsDataConn, dmsVidaSystem ;

{ TfrmPackagePicker }

function TfrmPackagePicker_II.getDataSource: TDataSource;
begin
    Result := grdPkgDuplicatesDBTableView1.DataController.DataSource;
end;

procedure TfrmPackagePicker_II.setDataSource(const Value: TDataSource);
begin
  grdPkgDuplicatesDBTableView1.DataController.DataSource := Value;
end;

procedure TfrmPackagePicker_II.btnOKClick(Sender: TObject);
begin
  FSupplierCode := trim(grdPkgDuplicatesDBTableView1.DataController.DataSource.DataSet.FieldValues['SupplierCode']);
  FSupplierNo   := grdPkgDuplicatesDBTableView1.DataController.DataSource.DataSet.FieldValues['SupplierNo'] ;
  FProductNo    := grdPkgDuplicatesDBTableView1.DataController.DataSource.DataSet.FieldValues['ProductNo'] ;
end;

end.
