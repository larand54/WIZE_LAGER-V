unit uSelectPkgTypes ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Buttons,
  ActnList, DBActns, cxCheckBox, cxDBLookupComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxLabel, cxSplitter, ImgList, dxBar,
  dxBarExtItems, cxLookAndFeels, cxLookAndFeelPainters, FMTBcd, DBClient,
  Provider, SqlExpr, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter,
  uADStanIntf, uADStanOption, uADStanParam, uADStanError, uADDatSManager,
  uADPhysIntf, uADDAptIntf, uADStanAsync, uADDAptManager, uADCompDataSet,
  uADCompClient;

type
  TfSelectPkgTypes = class(TForm)
    ActionList1: TActionList;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    acToGroup: TAction;
    acFromGroup: TAction;
    Panel6: TPanel;
    grdPkgTypes: TcxGrid;
    grdPkgTypesDBTableView1: TcxGridDBTableView;
    grdPkgTypesLevel1: TcxGridLevel;
    Panel2: TPanel;
    ds_SurfacingGroupRow: TDataSource;
    ds_SurfacingGroupHdr: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Panel4: TPanel;
    Panel5: TPanel;
    grdPkgTypeLoadPlan: TcxGrid;
    grdPkgTypeLoadPlanDBTableView1: TcxGridDBTableView;
    grdPkgTypeLoadPlanLevel1: TcxGridLevel;
    ds_Surfacing_SV: TDataSource;
    grdPkgTypesDBTableView1ProductDisplayName: TcxGridDBColumn;
    grdPkgTypesDBTableView1BarCodeID: TcxGridDBColumn;
    grdPkgTypesDBTableView1BarCodeIDNo: TcxGridDBColumn;
    grdPkgTypesDBTableView1Sknamn: TcxGridDBColumn;
    grdPkgTypesDBTableView1LANGD: TcxGridDBColumn;
    grdPkgTypeLoadPlanDBTableView1PRODUKT: TcxGridDBColumn;
    grdPkgTypeLoadPlanDBTableView1BARCODE: TcxGridDBColumn;
    grdPkgTypeLoadPlanDBTableView1SKNAMN: TcxGridDBColumn;
    grdPkgTypeLoadPlanDBTableView1GRADESTAMP: TcxGridDBColumn;
    grdPkgTypeLoadPlanDBTableView1LNGD: TcxGridDBColumn;
    Panel7: TPanel;
    Panel1: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    lbShowAll: TdxBarLargeButton;
    lbShowPkgInInv: TdxBarLargeButton;
    acNoFilter: TAction;
    acShowPkgTypesInInventory: TAction;
    imglistActions: TImageList;
    grdPkgTypesDBTableView1PPP: TcxGridDBColumn;
    grdPkgTypeLoadPlanDBTableView1PPP: TcxGridDBColumn;
    grdPkgTypesDBTableView1Column1: TcxGridDBColumn;
    cds_Surfacing_SV: TADQuery;
    cds_Surfacing_SVPackageTypeNo: TIntegerField;
    cds_Surfacing_SVProductDisplayName: TStringField;
    cds_Surfacing_SVBarCodeID: TStringField;
    cds_Surfacing_SVGradeStamp: TStringField;
    cds_Surfacing_SVSöknamn: TStringField;
    cds_Surfacing_SVLANGD: TStringField;
    cds_Surfacing_SVPPP: TIntegerField;
    procedure acToGroupExecute(Sender: TObject);
    procedure acFromGroupExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ds_SurfacingGroupHdrDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure acNoFilterExecute(Sender: TObject);
    procedure acShowPkgTypesInInventoryExecute(Sender: TObject);
  private
    { Private declarations }
    function  DataSparat : Boolean ;
    procedure CopyToGroup(Sender: TObject);
    procedure RemoveFromGroup(Sender: TObject);
    procedure RefreshSurfaces ;
    procedure Save ;
    procedure BuildSQL ;
  public
    { Public declarations }
    Class procedure Execute(const Destination : String) ;
  end;

//var fSelectPkgTypes: TfSelectPkgTypes;

implementation

uses dmsDataConn, dmsVidaSystem, dmcLoadPlan;

{$R *.dfm}

Class procedure TfSelectPkgTypes.Execute (const Destination : String) ;
Begin
 With Self.Create(nil) do begin
  try
   Caption:= Destination ;
   ShowModal ;
  Finally
   Free ;
  End
 End ;//with
End ;

function TfSelectPkgTypes.DataSparat : Boolean ;
Begin
 Result:= True ;
 With dmLoadPlan do
 Begin

  if cds_LoadPlanRow.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_LoadPlanRow.ChangeCount > 0 then
   Result:= False ;
 End ;
End ;

procedure TfSelectPkgTypes.Save ;
Begin
 With dmLoadPlan do
 Begin
  if cds_LoadPlanRow.State in [dsEdit, dsInsert] then
   cds_LoadPlanRow.Post ;
  if cds_LoadPlanRow.ChangeCount > 0 then
  Begin
   cds_LoadPlanRow.ApplyUpdates(0) ;
   cds_LoadPlanRow.CommitUpdates ;
  End;
 End ;
End ;

procedure TfSelectPkgTypes.CopyToGroup(Sender: TObject);
 Var i, RecIDX : Integer ;
 RecID :Variant ;
// BKMSafe : TBookmarkStr;
 ADATASET : TDATASET;
 Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 with dmLoadPlan do
 Begin
  cds_LoadPlanRow.DisableControls ;
  Try
  grdPkgTypesDBTableView1.BeginUpdate ;
  grdPkgTypesDBTableView1.DataController.BeginLocate ;
  grdPkgTypeLoadPlanDBTableView1.DataController.DataSet.DisableControls ;
  Try
   ADataSet := grdPkgTypesDBTableView1.DataController.DataSource.DataSet ;
//   BKMSafe := ADataSet.Bookmark ;
   For I := 0 to grdPkgTypesDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdPkgTypesDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdPkgTypesDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('PackageTypeNo',RecID,[]) ;

    if not cds_LoadPlanRow.Locate('PackageTypeNo', ADataSet.FieldByName('PackageTypeNo').AsInteger, []) then
    Begin
      cds_LoadPlanRow.Insert ;
      cds_LoadPlanRowPackageTypeNo.AsInteger  := ADataSet.FieldByName('PackageTypeNo').AsInteger ;
      cds_LoadPlanRowProdukt.AsString         := ADataSet.FieldByName('ProductDisplayName').AsString;
      cds_LoadPlanRowLANGD.AsString           := ADataSet.FieldByName('LANGD').AsString;

      cds_LoadPlanRow.Post ;
    End;
   End ;

//  if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
//   ADataSet.Bookmark:= BkmSafe ;

 Finally
  grdPkgTypesDBTableView1.DataController.EndLocate ;
  grdPkgTypesDBTableView1.EndUpdate ;
  grdPkgTypeLoadPlanDBTableView1.DataController.DataSet.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 Finally
  cds_LoadPlanRow.EnableControls ;
 End ;
 End ;//with
end;

procedure TfSelectPkgTypes.acToGroupExecute(Sender: TObject);
begin
 CopyToGroup(Sender) ;
 Save ;
 RefreshSurfaces ;
end;

procedure TfSelectPkgTypes.RemoveFromGroup(Sender: TObject);
 Var i, RecIDX : Integer ;
 RecID :Variant ;
// BKMSafe : TBookmarkStr;
 ADATASET : TDATASET;
 Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 with dmLoadPlan do
 Begin
  grdPkgTypeLoadPlanDBTableView1.BeginUpdate ;
  grdPkgTypeLoadPlanDBTableView1.DataController.BeginLocate ;
  grdPkgTypesDBTableView1.DataController.DataSet.DisableControls ;
  Try
   ADataSet := grdPkgTypeLoadPlanDBTableView1.DataController.DataSource.DataSet ;
//   BKMSafe := ADataSet.Bookmark ;
   For I := 0 to grdPkgTypeLoadPlanDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdPkgTypeLoadPlanDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdPkgTypeLoadPlanDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('PackageTypeNo',RecID,[]) ;
    ADataSet.Delete ;
   End ;

//  if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
//   ADataSet.Bookmark:= BkmSafe ;

 Finally
  grdPkgTypeLoadPlanDBTableView1.DataController.EndLocate ;
  grdPkgTypeLoadPlanDBTableView1.EndUpdate ;
  grdPkgTypesDBTableView1.DataController.DataSet.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfSelectPkgTypes.acFromGroupExecute(Sender: TObject);
begin
 RemoveFromGroup(Sender) ;
 Save ;
 RefreshSurfaces ;
end;

procedure TfSelectPkgTypes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if DataSparat then
 CanClose:= True
 else
 Begin
  if MessageDlg('Ändringar ej sparade, vill du stänga?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   CanClose := True
    else
     CanClose := False ;

 End ;
 if CanClose then
  cds_Surfacing_SV.Active:= False ;
end;

procedure TfSelectPkgTypes.ds_SurfacingGroupHdrDataChange(Sender: TObject;
  Field: TField);
begin
 With dmLoadPlan do
 Begin
  cds_LoadPlanRow.DisableControls ;
  Try
  RefreshSurfaces ;
  Finally
   cds_LoadPlanRow.EnableControls ;
  End ;
 End ;
end;

procedure TfSelectPkgTypes.RefreshSurfaces ;
Var Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 With dmLoadPlan do
 Begin
  cds_Surfacing_SV.Active:= False ;
  BuildSQL ;

  cds_Surfacing_SV.ParamByName('LoadingNo').AsInteger          := cds_LoadPlanDestLoadingNo.AsInteger ;
  cds_Surfacing_SV.ParamByName('LoadPlanDestRowNo').AsInteger  := cds_LoadPlanDestLoadPlanDestRowNo.AsInteger ;
  cds_Surfacing_SV.ParamByName('MarketRegionNo').AsInteger     := cds_LoadPlanHdrMarketRegionNo.AsInteger ;
  cds_Surfacing_SV.Active:= True ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure TfSelectPkgTypes.BuildSQL ;
Begin
 With dmLoadPlan do
 Begin
  cds_Surfacing_SV.SQL.Clear ;

  cds_Surfacing_SV.SQL.Add('SELECT Distinct') ;
  cds_Surfacing_SV.SQL.Add('PP.PkgCodePPNo AS PackageTypeNo,') ;
  cds_Surfacing_SV.SQL.Add('pbypp.ProductDisplayName,') ;
  cds_Surfacing_SV.SQL.Add('pbypp.BarCodeID,') ;
  cds_Surfacing_SV.SQL.Add('pbypp.GradeStamp,') ;
  cds_Surfacing_SV.SQL.Add('pbypp.Söknamn,') ;


  cds_Surfacing_SV.SQL.Add('pbypp.Langd  AS LANGD,') ;
  cds_Surfacing_SV.SQL.Add('pbypp.PcsPerPkg AS PPP') ;

  cds_Surfacing_SV.SQL.Add('FROM  dbo.PkgVarCode pcd') ;

  cds_Surfacing_SV.SQL.Add('Inner Join	dbo.PackageType pt ON pt.PackageTypeNo = pcd.PackageTypeNo') ;

//  cds_Surfacing_SV.SQL.Add('INNER JOIN dbo.PkgTypePPNo	Ptp ON Ptp.PackageTypeNo = PT.PackageTypeNo') ;

  cds_Surfacing_SV.SQL.Add('INNER JOIN dbo.Packagecode_printparams	PP ON PP.PkgCodePPNo = PT.ShrinkWrap') ;

  cds_Surfacing_SV.SQL.Add('Inner Join  dbo.PktTypeByPP pbypp on pbypp.PackageTypeno = pp.PackageTypeno') ;

  cds_Surfacing_SV.SQL.Add('WHERE') ;
  cds_Surfacing_SV.SQL.Add('pcd.MarketRegionNo = :MarketRegionNo') ;
  cds_Surfacing_SV.SQL.Add('AND PP.PkgCodePPNo not in (Select PackageTypeNo FROM') ;
  cds_Surfacing_SV.SQL.Add('dbo.LoadPlanDest LPD') ;
  cds_Surfacing_SV.SQL.Add('Inner Join dbo.LoadPlanRow LPR on LPR.LoadingNo = LPD.LoadingNo') ;
  cds_Surfacing_SV.SQL.Add('                              AND LPR.LoadPlanDestRowNo = LPD.LoadPlanDestRowNo') ;
  cds_Surfacing_SV.SQL.Add('WHERE') ;
  cds_Surfacing_SV.SQL.Add('LPD.LoadingNo = :LoadingNo') ;
  cds_Surfacing_SV.SQL.Add('AND LPD.LoadPlanDestRowNo = :LoadPlanDestRowNo)') ;
  if lbShowPkgInInv.Down then
   Begin
    cds_Surfacing_SV.SQL.Add('AND PP.PkgCodePPNo in (Select pt2.ShrinkWrap From') ;
    cds_Surfacing_SV.SQL.Add('dbo.PackageNumber pn') ;
    cds_Surfacing_SV.SQL.Add('Inner Join	dbo.PackageType pt2 ON pt2.PackageTypeNo = pn.PackageTypeNo') ;
    cds_Surfacing_SV.SQL.Add('WHERE') ;
    cds_Surfacing_SV.SQL.Add('pt2.ShrinkWrap = PP.PkgCodePPNo') ;
    cds_Surfacing_SV.SQL.Add('AND pn.LogicalInventoryPointNo = '+intToStr(cds_LoadPlanHdrLIPNo.AsInteger)) ;
    cds_Surfacing_SV.SQL.Add('AND pn.Status = 1)') ;
   End ;//if..
//cds_Surfacing_SV.SQL.SaveToFile('cds_Surfacing_SV.txt');
 End ;
End ;

procedure TfSelectPkgTypes.FormShow(Sender: TObject);
begin
 RefreshSurfaces ;
end;

procedure TfSelectPkgTypes.acNoFilterExecute(Sender: TObject);
begin
 RefreshSurfaces ;
end;

procedure TfSelectPkgTypes.acShowPkgTypesInInventoryExecute(Sender: TObject);
begin
 RefreshSurfaces ;
end;

end.
