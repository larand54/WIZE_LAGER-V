unit dmcLoadPlan;

interface

uses
  SysUtils, Classes, DB, SqlTimSt, Dialogs, Forms, Controls,
  kbmMemTable, VidaType, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.Async, FireDAC.DApt ;

type
  TdmLoadPlan = class(TDataModule)
    ds_LoadPlanHdr: TDataSource;
    ds_LoadPlanRow: TDataSource;
    ds_LoadPlanDest: TDataSource;
    ds_PhysInv: TDataSource;
    ds_LogInv: TDataSource;
    dsCarrier: TDataSource;
    ds_SalesRegions: TDataSource;
    dsMarketRegions: TDataSource;
    ds_PigEntry: TDataSource;
    ds_PigHdr: TDataSource;
    ds_PigNames: TDataSource;
    mtInventeringsTyp: TkbmMemTable;
    mtInventeringsTypInvTypeNo: TIntegerField;
    mtInventeringsTypInvType: TStringField;
    ds_LoadPlanHdrList: TDataSource;
    ds_PigHdrList: TDataSource;
    cds_LoadPlanHdr: TFDQuery;
    cds_LoadPlanHdrLoadingNo: TIntegerField;
    cds_LoadPlanHdrStatus: TIntegerField;
    cds_LoadPlanHdrSalesRegionNo: TIntegerField;
    cds_LoadPlanHdrPIPNo: TIntegerField;
    cds_LoadPlanHdrLIPNo: TIntegerField;
    cds_LoadPlanHdrLoadingLocationNo: TIntegerField;
    cds_LoadPlanHdrVesselNo: TIntegerField;
    cds_LoadPlanHdrETD: TSQLTimeStampField;
    cds_LoadPlanHdrDateCreated: TSQLTimeStampField;
    cds_LoadPlanHdrCreatedUser: TIntegerField;
    cds_LoadPlanHdrPrintDate: TSQLTimeStampField;
    cds_LoadPlanHdrMarketRegionNo: TIntegerField;
    cds_LoadPlanHdrNote: TMemoField;
    cds_LoadPlanHdrInvStartNo: TIntegerField;
    cds_LoadPlanHdrInvEndNo: TIntegerField;
    cds_LoadPlanHdrStringField: TStringField;
    cds_LoadPlanHdrMARKNAD: TStringField;
    cds_LoadPlanRow: TFDQuery;
    cds_LoadPlanRowLoadingNo: TIntegerField;
    cds_LoadPlanRowLoadPlanDestRowNo: TIntegerField;
    cds_LoadPlanRowPackageTypeNo: TIntegerField;
    cds_LoadPlanRowNoOfPkgsPlanned: TIntegerField;
    cds_LoadPlanRowNoOfPkgsLoaded: TIntegerField;
    cds_LoadPlanRowNoOfPkgsLeft: TIntegerField;
    cds_LoadPlanRowNoOfPkgsConfirmedDest: TIntegerField;
    cds_LoadPlanRowPktKvar: TIntegerField;
    cds_LoadPlanRowAR: TIntegerField;
    cds_LoadPlanRowORT: TStringField;
    cds_LoadPlanRowProdukt: TStringField;
    cds_LoadPlanRowLANGD: TStringField;
    cds_LoadPlanRowBarCodeID: TStringField;
    cds_LoadPlanRowGradeStamp: TStringField;
    cds_LoadPlanRowSöknamn: TStringField;
    cds_LoadPlanRowPPP: TIntegerField;
    cds_LoadPlanRowTotLager: TIntegerField;
    cds_LoadPlanDest: TFDQuery;
    cds_LoadPlanDestLoadingNo: TIntegerField;
    cds_LoadPlanDestLoadPlanDestRowNo: TIntegerField;
    cds_LoadPlanDestPIPNo: TIntegerField;
    cds_LoadPlanDestLIPNo: TIntegerField;
    cds_LoadPlanDestDateCreated: TSQLTimeStampField;
    cds_LoadPlanDestCreatedUser: TIntegerField;
    cds_LoadPlanDestETA: TSQLTimeStampField;
    cds_LoadPlanDestSalesRegionNo: TIntegerField;
    cds_LoadPlanDestFörsäljningsregion: TStringField;
    cds_LoadPlanDestLAGERSTÄLLE: TStringField;
    cds_LoadPlanDestLAGERGRUPP: TStringField;
    cdsCarrier: TFDQuery;
    cdsCarrierCarrierNo: TIntegerField;
    cdsCarrierCarrierName: TStringField;
    cdsCarrierSequenceNo: TIntegerField;
    cdsCarrierCreatedUser: TSmallintField;
    cdsCarrierModifiedUser: TSmallintField;
    cdsCarrierDateCreated: TSQLTimeStampField;
    cds_PkgTypes: TFDQuery;
    cds_PkgTypesPackageTypeNo: TIntegerField;
    cds_PkgTypesProductNo: TIntegerField;
    cds_PkgTypesProductDisplayName: TStringField;
    cds_PkgTypesProdSort: TStringField;
    cds_PkgTypesLANGD: TStringField;
    cds_PkgTypesoThickness: TStringField;
    cds_PkgTypesoWidth: TStringField;
    cds_PkgTypesGradeName: TStringField;
    cds_PkgTypesSpeciesName: TStringField;
    cds_PkgTypesSurfacingName: TStringField;
    cds_PkgTypesBarCodeID: TStringField;
    cds_PkgTypesGradeStamp: TStringField;
    cds_PkgTypesExternkod: TStringField;
    cds_PkgTypesSöknamn: TStringField;
    cds_PkgTypesPcsPerPkg: TIntegerField;
    cds_PkgTypesPkgCodePPNo: TIntegerField;
    cds_PkgTypesMarketRegionNo: TIntegerField;
    cdsMarketRegions: TFDQuery;
    cds_PigEntry: TFDQuery;
    cds_PigEntryPIGGroupNo: TIntegerField;
    cds_PigEntryPackageTypeNo: TIntegerField;
    cds_PigEntryPigNoPkgs1: TIntegerField;
    cds_PigEntryPigNoPkgs2: TIntegerField;
    cds_PigEntryPigNoPkgs3: TIntegerField;
    cds_PigEntryPigNoPkgs4: TIntegerField;
    cds_PigEntryPigNoPkgs5: TIntegerField;
    cds_PigEntryPigNoPkgs6: TIntegerField;
    cds_PigEntryPigNoPkgs7: TIntegerField;
    cds_PigEntryPigNoPkgs8: TIntegerField;
    cds_PigEntryPigNoPkgs9: TIntegerField;
    cds_PigEntryPigNoPkgs10: TIntegerField;
    cds_PigEntrySumCountedPkgs: TIntegerField;
    cds_PigEntrySumSystemPkgs: TIntegerField;
    cds_PigEntryAM3: TFloatField;
    cds_PigEntryproductdisplayname: TStringField;
    cds_PigEntryLANGD: TStringField;
    cds_PigEntryBarCodeID: TStringField;
    cds_PigEntryGradeStamp: TStringField;
    cds_PigEntryPcsPerPkg: TIntegerField;
    cds_PigEntryLoadedPkgs: TIntegerField;
    cds_PigEntryTotalAM3: TFloatField;
    cds_PigNames: TFDQuery;
    cds_PigNamesPigNo: TIntegerField;
    cds_PigNamesPigName: TStringField;
    cds_PigNamesActive: TIntegerField;
    cds_PigHdr: TFDQuery;
    cds_PigHdrPIGGroupNo: TIntegerField;
    cds_PigHdrLIPNo: TIntegerField;
    cds_PigHdrPIPNo: TIntegerField;
    cds_PigHdrInvDate: TSQLTimeStampField;
    cds_PigHdrNote: TMemoField;
    cds_PigHdrDateCreated: TSQLTimeStampField;
    cds_PigHdrCreatedUser: TIntegerField;
    cds_PigHdrStatus: TIntegerField;
    cds_PigHdrInvTypeNo: TIntegerField;
    cds_PigHdrSalesRegionNo: TIntegerField;
    cds_PigHdrStringField: TStringField;
    cds_PigHdrStringField2: TStringField;
    cds_PigHdrStringField3: TStringField;
    cds_GetPkgsPerType: TFDQuery;
    cds_GetPkgsPerTypePackageTypeNo: TIntegerField;
    cds_GetPkgsPerTypeNoOfPkgs: TIntegerField;
    cds_PigHdrList: TFDQuery;
    cds_PigHdrListPIGGroupNo: TIntegerField;
    cds_PigHdrListLIPNo: TIntegerField;
    cds_PigHdrListPIPNo: TIntegerField;
    cds_PigHdrListInvDate: TSQLTimeStampField;
    cds_PigHdrListNote: TMemoField;
    cds_PigHdrListDateCreated: TSQLTimeStampField;
    cds_PigHdrListCreatedUser: TIntegerField;
    cds_PigHdrListStatus: TIntegerField;
    cds_PigHdrListInvTypeNo: TIntegerField;
    cds_PigHdrListSalesRegionNo: TIntegerField;
    cds_PigHdrListLagerställe: TStringField;
    cds_PigHdrListLagergrupp: TStringField;
    cds_PigHdrListInventeringstyp: TStringField;
    cds_PhysInv: TFDQuery;
    cds_PhysInvPIPNo: TIntegerField;
    cds_PhysInvLAGERSTÄLLE: TStringField;
    cds_PhysInvOwnerNo: TIntegerField;
    cds_LogInv: TFDQuery;
    cdsMarketRegionsMarketRegionNo: TIntegerField;
    cdsMarketRegionsMarketRegionName: TStringField;
    cds_LogInvLIPNo: TIntegerField;
    cds_LogInvLAGERGRUPP: TStringField;
    cds_LogInvPIPNo: TIntegerField;
    cds_SalesRegions: TFDQuery;
    cds_SalesRegionsClientNo: TIntegerField;
    cds_SalesRegionsClientName: TStringField;
    cds_PkgNosSub: TFDQuery;
    cds_PkgNosSubPackageNo: TIntegerField;
    cds_PkgNosSubSupplierCode: TStringField;
    cds_PkgNosSubStatus: TIntegerField;
    cds_PkgNosAdd: TFDQuery;
    cds_PkgNosAddPackageNo: TIntegerField;
    cds_PkgNosAddPackageTypeNo: TIntegerField;
    cds_PkgNosAddSupplierCode: TStringField;
    cds_PkgNosAddLogicalInventoryPointNo: TIntegerField;
    cds_PkgNosAddSupplierNo: TIntegerField;
    cds_PkgNosAddStatus: TIntegerField;
    cds_PkgNosAddSequenceNo: TIntegerField;
    cds_PkgNosAddCreatedUser: TSmallintField;
    cds_PkgNosAddModifiedUser: TSmallintField;
    cds_PkgNosAddDateCreated: TSQLTimeStampField;
    cds_PkgNosAddOriginal_Price: TFloatField;
    cds_PkgNosAddOriginal_In_Date: TSQLTimeStampField;
    cds_PkgNosAddUpdate_Price: TFloatField;
    cds_PkgNosAddUpdate_Price_Date: TSQLTimeStampField;
    cds_PkgNosAddCreatedOfPkgStr: TIntegerField;
    cds_PkgNosAddAvgLengthType: TIntegerField;
    cds_PkgNosAddREFERENCE: TStringField;
    cds_PkgNosAddBL_NO: TStringField;
    cds_PkgNosAddPkgArticleNo: TIntegerField;
    cds_PkgNosAddPackageTypeNo_1: TIntegerField;
    cds_PkgNosAddPackageTypeName: TStringField;
    cds_PkgNosAddProductNo: TIntegerField;
    cds_PkgNosAddBarCodeID: TIntegerField;
    cds_PkgNosAddOnSticks: TIntegerField;
    cds_PkgNosAddGradeStamp: TIntegerField;
    cds_PkgNosAddPackageHeight: TIntegerField;
    cds_PkgNosAddPackageWidth: TIntegerField;
    cds_PkgNosAddMiniBundled: TIntegerField;
    cds_PkgNosAddWrapType: TIntegerField;
    cds_PkgNosAddShrinkWrap: TIntegerField;
    cds_PkgNosAddTotalNoOfPieces: TIntegerField;
    cds_PkgNosAddTotalm3Actual: TFloatField;
    cds_PkgNosAddTotalm3Nominal: TFloatField;
    cds_PkgNosAddTotalMFBMNominal: TFloatField;
    cds_PkgNosAddTotalSQMofActualWidth: TFloatField;
    cds_PkgNosAddTotalSQMofCoveringWidth: TFloatField;
    cds_PkgNosAddTotalLinealMeterActualLength: TFloatField;
    cds_PkgNosAddTotalM3ActualSizeNomLength: TFloatField;
    cds_PkgNosAddTotalM3NomSizeActualLength: TFloatField;
    cds_PkgNosAddCreatedUser_1: TSmallintField;
    cds_PkgNosAddModifiedUser_1: TSmallintField;
    cds_PkgNosAddDateCreated_1: TSQLTimeStampField;
    cds_PkgNosAddSequenceNo_1: TIntegerField;
    cds_PkgNosAddm3Net: TFloatField;
    cds_PkgNosAddProdInstruNo: TIntegerField;
    cds_PkgNosAddLengthSpecNo: TIntegerField;
    cds_PkgNosAddNT: TFloatField;
    cds_PkgNosAddNB: TFloatField;
    cds_PkgNosAddPkgCodePPNo: TIntegerField;
    cds_PkgNosAddPackageTypeNo_2: TIntegerField;
    cds_PkgNosAddPackageCode: TStringField;
    cds_PkgNosAddLanguagecode: TIntegerField;
    cds_PkgNosAddSizeFormat: TIntegerField;
    cds_PkgNosAddLengthFormat: TIntegerField;
    cds_PkgNosAddVolumeFormat: TIntegerField;
    cds_PkgNosAddoThickness: TStringField;
    cds_PkgNosAddoWidth: TStringField;
    cds_PkgNosAddoLength: TStringField;
    cds_PkgNosAddArtikelKod: TStringField;
    cds_PkgNosAddModifiedDate: TSQLTimeStampField;
    cds_PkgNosAddTagNo: TIntegerField;
    cds_PkgNosAddActive: TIntegerField;
    cds_PkgNosAddCreatedUser_2: TIntegerField;
    cds_PkgNosAddPublished: TIntegerField;
    cds_PkgNosAddCreatedDate: TSQLTimeStampField;
    cds_PkgNosAddModifiedUser_2: TIntegerField;
    cds_PkgNosAddprodinstruno_1: TIntegerField;
    cds_LoadPlanHdrList: TFDQuery;
    cds_LoadPlanHdrListLoadingNo: TIntegerField;
    cds_LoadPlanHdrListStatus: TIntegerField;
    cds_LoadPlanHdrListSalesRegionNo: TIntegerField;
    cds_LoadPlanHdrListPIPNo: TIntegerField;
    cds_LoadPlanHdrListLIPNo: TIntegerField;
    cds_LoadPlanHdrListLoadingLocationNo: TIntegerField;
    cds_LoadPlanHdrListVesselNo: TIntegerField;
    cds_LoadPlanHdrListETD: TSQLTimeStampField;
    cds_LoadPlanHdrListDateCreated: TSQLTimeStampField;
    cds_LoadPlanHdrListCreatedUser: TIntegerField;
    cds_LoadPlanHdrListPrintDate: TSQLTimeStampField;
    cds_LoadPlanHdrListMarketRegionNo: TIntegerField;
    cds_LoadPlanHdrListNote: TMemoField;
    cds_LoadPlanHdrListInvStartNo: TIntegerField;
    cds_LoadPlanHdrListInvEndNo: TIntegerField;
    cds_LoadPlanHdrListCarrierName: TStringField;
    sq_GetPkgTypeNo: TFDQuery;
    sq_GetPkgTypeNoPackageTypeNo: TIntegerField;
    sq_UpdArPktKvar: TFDQuery;
    sp_OnePackageNo: TFDStoredProc;
    sp_VardaLager: TFDStoredProc;
    sp_NewPackageNo: TFDStoredProc;
    cds_LoadPlanRowPaketDifferens: TIntegerField;
    cds_PigEntryCountedPkgs: TIntegerField;
    procedure ds_PigHdrDataChange(Sender: TObject; Field: TField);
    procedure ds_LoadPlanDestDataChange(Sender: TObject; Field: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure cds_LoadPlanDestAfterInsert(DataSet: TDataSet);
    procedure cds_LoadPlanDestAfterScroll(DataSet: TDataSet);
    procedure cds_LoadPlanDestBeforePost(DataSet: TDataSet);
    procedure cds_LoadPlanDestBeforeScroll(DataSet: TDataSet);
    procedure cds_PigEntryAfterInsert(DataSet: TDataSet);
    procedure cds_PigEntryBeforePost(DataSet: TDataSet);
    procedure cds_PigEntryBeforeScroll(DataSet: TDataSet);
    procedure cds_PigEntryCalcFields(DataSet: TDataSet);
    procedure cds_PigEntryPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure cds_PigNamesAfterInsert(DataSet: TDataSet);
    procedure cds_LoadPlanRowCalcFields(DataSet: TDataSet);
    procedure cds_LoadPlanRowBeforePost(DataSet: TDataSet);
    procedure cds_LoadPlanRowAfterInsert(DataSet: TDataSet);
    procedure cds_LoadPlanHdrAfterInsert(DataSet: TDataSet);
    procedure cds_LoadPlanHdrBeforeApplyUpdates(DataSet: TFDDataSet);
    procedure cds_PigHdrAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure RemovePkgs(const NoOfPkgs, PackageTypeNo : Integer) ;
    procedure AddPkgs(const NoOfPkgs, PackageTypeNo : Integer) ;
    function  PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;

    procedure LoadAllRows ;
    function  GetPackageTypeNo(const PkgCodePPNo : Integer) : Integer ;
  public
    { Public declarations }
     procedure AddTotalMarker ;
    procedure AddPkgCodesInInventory ;
    procedure AddLeftPkgsToLoadPlan ;
    procedure AdjustInventoryAccordingToDifference ;
    procedure RefreshLoadPlanRows ;
    procedure UpdateLoadPlanRows ;
    procedure UpdateARandPktKvarColumns ;
  end;

var
  dmLoadPlan: TdmLoadPlan;

implementation

uses dmsDataConn, VidaUser , uDistDupPkgsToLoadPlan, dmsVidaContact ;

{$R *.dfm}

procedure TdmLoadPlan.cds_LoadPlanHdrAfterInsert(DataSet: TDataSet);
begin
 cds_LoadPlanHdrLoadingNo.AsInteger         := dmsConnector.NextMaxNo('LoadPlan') ;
 cds_LoadPlanHdrDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
 cds_LoadPlanHdrCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_LoadPlanHdrSalesRegionNo.AsInteger     := 741 ;
 cds_LoadPlanHdrStatus.AsInteger            := 0 ; //Ny
// AddTotalMarker ;

end;

procedure TdmLoadPlan.cds_LoadPlanHdrBeforeApplyUpdates(DataSet: TFDDataSet);
begin
 if cds_LoadPlanHdrPIPNo.IsNull then
 Begin
  ShowMessage('Lagerställe saknas') ;
  Abort ;
 End ;

 if cds_LoadPlanHdrLIPNo.IsNull then
 Begin
  ShowMessage('Lagergrupp saknas') ;
  Abort ;
 End ;

 if cds_LoadPlanHdrMarketRegionNo.IsNull then
 Begin
  ShowMessage('Marknad saknas') ;
  Abort ;
 End ;
end;

procedure TdmLoadPlan.AddTotalMarker ;
Begin
 cds_LoadPlanDest.Insert ;
 cds_LoadPlanDestLoadPlanDestRowNo.AsInteger:= -1 ;
 cds_LoadPlanDestPIPNo.AsInteger            := -1 ;
 cds_LoadPlanDestLIPNo.AsInteger            := -1 ;
 cds_LoadPlanDestSalesRegionNo.AsInteger    := -1 ;
 cds_LoadPlanDest.Post ;
End ;

procedure TdmLoadPlan.cds_LoadPlanRowAfterInsert(DataSet: TDataSet);
begin
 cds_LoadPlanRowLoadingNo.AsInteger         := cds_LoadPlanHdrLoadingNo.AsInteger ;
// cds_LoadPlanRowDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
// cds_LoadPlanRowCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_LoadPlanRowLoadPlanDestRowNo.AsInteger := cds_LoadPlanDestLoadPlanDestRowNo.AsInteger ;
// cds_LoadPlanRowLAGERSTLLE.AsString         := cds_LoadPlanDestLAGERSTLLE.AsString ;
// cds_LoadPlanRowLAGERGRUPP.AsString         := cds_LoadPlanDestLAGERGRUPP.AsString ;
 cds_LoadPlanRowNoOfPkgsLeft.AsInteger      := 0 ;
 cds_LoadPlanRowNoOfPkgsPlanned.AsInteger   := 0 ;
// cds_LoadPlanRowNoOfPkgsLoaded.AsInteger    := cds_LoadPlanRowTotLager.AsInteger ;
 cds_LoadPlanRowNoOfPkgsLoaded.AsInteger    := 0 ;
//  cds_LoadPlanRowTotLager.AsInteger -
//  cds_LoadPlanRowNoOfPkgsLeft.AsInteger ;
end;

procedure TdmLoadPlan.cds_LoadPlanRowBeforePost(DataSet: TDataSet);
Var total : Integer ;
begin
// cds_LoadPlanRowNoOfPkgsLoaded.AsInteger:= cds_LoadPlanRowTotLager.AsInteger - cds_LoadPlanRowNoOfPkgsLeft.AsInteger ;
(* Total:= 0 ;
// cds_LoadPlanRowNoOfPkgsARAfterDate
 cds_LoadPlanRow.Filter   := 'PackageTypeNo = '+cds_LoadPlanRowPackageTypeNo.AsString ;
 cds_LoadPlanRow.Filtered := True ;
 cds_LoadPlanRow.First ;
 While not cds_LoadPlanRow.Eof do
 Begin
  Total:= Total + cds_LoadPlanRowNoOfPkgsBeforeDate.AsInteger ;
  cds_LoadPlanRow.Next ;
 End ;
 cds_LoadPlanRowNoOfPkgsARAfterDate.AsInteger:= Total ; *)
end;

procedure TdmLoadPlan.cds_LoadPlanRowCalcFields(DataSet: TDataSet);
begin
 cds_LoadPlanRowPaketDifferens.AsInteger  := cds_LoadPlanRowNoOfPkgsLoaded.AsInteger - cds_LoadPlanRowNoOfPkgsConfirmedDest.AsInteger ;
 cds_LoadPlanRowTotLager.AsInteger        := cds_LoadPlanRowAR.AsInteger + cds_LoadPlanRowPktKvar.AsInteger ;
end;

procedure TdmLoadPlan.cds_LoadPlanDestAfterInsert(DataSet: TDataSet);
begin
 cds_LoadPlanDestLoadingNo.AsInteger        := cds_LoadPlanHdrLoadingNo.AsInteger ;
 cds_LoadPlanDestLoadPlanDestRowNo.AsInteger:= dmsConnector.NextMaxNo('LoadPlanDestRowNo') ;
 cds_LoadPlanDestDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now) ;
 cds_LoadPlanDestCreatedUser.AsInteger      := ThisUser.UserID ;
end;

procedure TdmLoadPlan.cds_LoadPlanDestAfterScroll(DataSet: TDataSet);
begin
  if cds_LoadPlanDestLoadPlanDestRowNo.AsInteger = -1 then
  cds_LoadPlanRow.UpdateOptions.ReadOnly:= True
  else
  cds_LoadPlanRow.UpdateOptions.ReadOnly:= False ;
end;

procedure TdmLoadPlan.cds_LoadPlanDestBeforePost(DataSet: TDataSet);
begin
 if cds_LoadPlanDestSalesRegionNo.IsNull then
 Begin
  ShowMessage('Försäljningsregion saknas') ;
  Abort ;
 End ;

 if cds_LoadPlanDestPIPNo.IsNull then
 Begin
  ShowMessage('Lagerställe för destination saknas') ;
  Abort ;
 End ;

 if cds_LoadPlanDestLIPNo.IsNull then
 Begin
  ShowMessage('Lagergrupp för destination saknas') ;
  Abort ;
 End ;
end;

procedure TdmLoadPlan.cds_LoadPlanDestBeforeScroll(DataSet: TDataSet);
begin
  if cds_LoadPlanRow.State in [dsEdit, dsInsert] then
   cds_LoadPlanRow.Post ;
  if cds_LoadPlanRow.ChangeCount > 0 then
  Begin
   cds_LoadPlanRow.ApplyUpdates(0) ;
   cds_LoadPlanRow.CommitUpdates ;
  End;
end;

procedure TdmLoadPlan.AddPkgCodesInInventory ;
begin
 cds_PigEntry.UpdateOptions.ReadOnly:= False ;
 cds_GetPkgsPerType.ParamByName('LIPNo').AsInteger  := cds_PigHdrLIPNo.AsInteger ;
 cds_GetPkgsPerType.Active:= True ;
 cds_GetPkgsPerType.First ;
 While not cds_GetPkgsPerType.Eof do
 Begin
  cds_PigEntry.Insert ;
  cds_PigEntryPackageTypeNo.AsInteger := cds_GetPkgsPerTypePackageTypeNo.AsInteger ;
  cds_PigEntrySumSystemPkgs.AsInteger := cds_GetPkgsPerTypeNoOfPkgs.AsInteger ;
  cds_PigEntry.Post ;
  cds_GetPkgsPerType.Next ;
 End ;
 cds_GetPkgsPerType.Active:= False ;
End ;

procedure TdmLoadPlan.cds_PigEntryAfterInsert(DataSet: TDataSet);
begin
 cds_PigEntryPIGGroupNo.AsInteger     := cds_PigHdrPIGGroupNo.AsInteger ;
end;

procedure TdmLoadPlan.cds_PigEntryBeforePost(DataSet: TDataSet);
begin
//Persistent = calculated
 cds_PigEntrySumCountedPkgs.AsInteger := cds_PigEntryCountedPkgs.AsInteger ;

{ with TIniFile.Create(dmsConnector.DriveLetter+'VIS\KONFIG\VIS_dmLoadPlan.INI') do
 try
  WriteInteger('Locate', 'PackageTypeNo', cds_PigEntryPackageTypeNo.AsInteger) ;

 Finally
  Free ;
 End ; }
end;

procedure TdmLoadPlan.cds_PigEntryBeforeScroll(DataSet: TDataSet);
begin
 With dmLoadPlan do
 Begin
  if cds_PigHdr.State in [dsEdit, dsInsert] then
   cds_PigHdr.Post ;
  if cds_PigHdr.ChangeCount > 0 then
  Begin
   cds_PigHdr.ApplyUpdates(0) ;
   cds_PigHdr.CommitUpdates ;
  End;

  if cds_PigEntry.State in [dsEdit, dsInsert] then
   cds_PigEntry.Post ;
  if cds_PigEntry.ChangeCount > 0 then
  Begin
   cds_PigEntry.ApplyUpdates(0) ;
   cds_PigEntry.CommitUpdates ;
  End;
 End ;
end;

procedure TdmLoadPlan.cds_PigEntryCalcFields(DataSet: TDataSet);
Var I : Integer ;
begin
 cds_PigEntryCountedPkgs.AsInteger:= 0 ;
 For I := 4 to 13 do
 cds_PigEntryCountedPkgs.AsInteger:= cds_PigEntry.Fields.Fields[I].AsInteger + cds_PigEntryCountedPkgs.AsInteger ;

 if cds_PigEntryCountedPkgs.AsInteger = 0 then
  cds_PigEntryLoadedPkgs.AsInteger:= cds_PigEntrySumSystemPkgs.AsInteger*-1
   else
    cds_PigEntryLoadedPkgs.AsInteger:= cds_PigEntryCountedPkgs.AsInteger - cds_PigEntrySumSystemPkgs.AsInteger ;

 cds_PigEntryTotalAM3.AsFloat:= cds_PigEntryLoadedPkgs.AsInteger * cds_PigEntryAM3.AsFloat ;
end;

procedure TdmLoadPlan.cds_PigHdrAfterInsert(DataSet: TDataSet);
begin
 cds_PigHdrPIGGroupNo.AsInteger       := dmsConnector.NextMaxNo('PIGGroupNo') ;
 cds_PigHdrDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now) ;
 cds_PigHdrCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_PigHdrInvDate.AsSQLTimeStamp     := DateTimeToSqlTimeStamp(Now) ;
 cds_PigHdrStatus.AsInteger           := 1 ;
 cds_PigHdrSalesRegionNo.AsInteger    := 741 ;
end;

procedure TdmLoadPlan.cds_PigNamesAfterInsert(DataSet: TDataSet);
begin
 cds_PigNamesActive.AsInteger:= 1 ;
 cds_PigNamesPigNo.AsInteger:= dmsConnector.NextMaxNo('PIGName') ;
end;

procedure TdmLoadPlan.AddLeftPkgsToLoadPlan ;
var
  fDistDupPkgsToLoadPlan  : TfDistDupPkgsToLoadPlan;
  Save_Cursor             : TCursor;
  TotalPlan               : Integer ;
begin
 if cds_PigHdr.Active = False then
 cds_PigHdr.Active  := True ;
 if not cds_PigEntry.Active then
  cds_PigEntry.Active:= True ;
 if cds_PigHdr.FindKey([cds_LoadPlanHdrInvEndNo.AsInteger]) then
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  ds_LoadPlanDest.OnDataChange:= nil ;
  cds_LoadPlanRow.UpdateOptions.ReadOnly:= False ;
  LoadAllRows ;
  Try
  cds_PigEntry.First ;
  While not cds_PigEntry.Eof do
  Begin
   if cds_PigEntryLoadedPkgs.AsInteger < 0 then
   Begin
    cds_LoadPlanRow.Filter:= 'PackageTypeNo = ' + cds_PigEntryPackageTypeNo.AsString ;
    cds_LoadPlanRow.Filtered:= True ;
    if cds_LoadPlanRow.RecordCount = 1 then
     Begin
      cds_LoadPlanRow.Edit ;
//      cds_LoadPlanRowNoOfPkgsLeft.AsInteger:= cds_PigEntrySUMCountedPkgs.AsInteger ;
      cds_LoadPlanRowNoOfPkgsLoaded.AsInteger:= cds_PigEntryLoadedPkgs.AsInteger*-1 ;
      cds_LoadPlanRow.Post ;
     End //if cds_LoadPlanRow.RecordCount = 1 then
     else
     if cds_LoadPlanRow.RecordCount > 1 then
     Begin
      fDistDupPkgsToLoadPlan:= TfDistDupPkgsToLoadPlan.Create(nil);
      fDistDupPkgsToLoadPlan.Panel1.Caption:= 'Fördela '+inttostr(cds_PigEntryLoadedPkgs.AsInteger*-1)+' paket på nedan destinationer' ;
      fDistDupPkgsToLoadPlan.cxLabel1.Caption:= cds_LoadPlanRowPRODUKT.AsString
      +', '+cds_LoadPlanRowLANGD.AsString
      +', '+cds_LoadPlanRowGRADESTAMP.AsString
      +', '+cds_LoadPlanRowBarCodeID.AsString ;
      try
       fDistDupPkgsToLoadPlan.ShowModal ;
//       Application.ProcessMessages ;
      finally
       FreeAndNil(fDistDupPkgsToLoadPlan) ;
      end;
     End ;//else Begin

    End ; //if cds_PigEntryCountedPkgs.AsInteger <> cds_LoadPlanRowTotLager.AsInteger then
{    else
     Begin
      fDistDupPkgsToLoadPlan:= TfDistDupPkgsToLoadPlan.Create(nil);
      fDistDupPkgsToLoadPlan.Panel1.Caption:= 'Fördela '+cds_PigEntryCountedPkgs.AsString+' paket på destinationer' ;
      fDistDupPkgsToLoadPlan.cxLabel1.Caption:= cds_PigEntryProdukt.AsString
      +', '+cds_PigEntryLNGD.AsString
      +', '+cds_PigEntryGRADESTAMP.AsString
      +', '+cds_PigEntryBARCODE.AsString ;
      cds_LoadPlanRow.Insert ;
      cds_LoadPlanRowPackageTypeNo.AsInteger:= cds_PigEntryPackageTypeNo.AsInteger ;
      cds_LoadPlanRow.EnableControls ;
      try
       if fDistDupPkgsToLoadPlan.ShowModal = mrOK then
        cds_LoadPlanRow.Post
         else
          cds_LoadPlanRow.Cancel ;
       Application.ProcessMessages ;
      finally
       FreeAndNil(fDistDupPkgsToLoadPlan) ;
       cds_LoadPlanRow.DisableControls ;
      end;
     End ; }//else Begin
//   ShowMessage('Pkttypnr '+cds_PigEntryPackageTypeNo.AsString+' finns ej') ;

//    End ;//

    cds_PigEntry.Next ;
  End ;//while
  if cds_LoadPlanRow.ChangeCount > 0 then
  Begin
   cds_LoadPlanRow.ApplyUpdates(0) ;
   cds_LoadPlanRow.CommitUpdates ;
  End;

  if cds_LoadPlanDestLoadPlanDestRowNo.AsInteger = -1 then
  cds_LoadPlanRow.UpdateOptions.ReadOnly:= True ;
  Finally
//   cds_LoadPlanRow.Filtered := False ;
   cds_LoadPlanRow.Filtered:= False ;
   ds_LoadPlanDest.OnDataChange:= ds_LoadPlanDestDataChange ;
   Screen.Cursor := Save_Cursor ;
  End ;
 End
  else
   ShowMessage('Inventering ej specificerad i lastplan.') ;
End ;

(*procedure TdmLoadPlan.AddLeftPkgsToLoadPlan ;
var
  fDistDupPkgsToLoadPlan  : TfDistDupPkgsToLoadPlan;
  Save_Cursor             : TCursor;
  TotalPlan               : Integer ;
begin
 if cds_PigHdr.Active = False then
 cds_PigHdr.Active:= True ;
 if cds_PigHdr.FindKey([cds_LoadPlanHdrInvEndNo.AsInteger]) then
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try
  cds_PigEntry.First ;
  While not cds_PigEntry.Eof do
  Begin
   if cds_PigEntryLoadedPkgs.AsInteger > 0 then
   Begin
    if cds_LoadPlanRow.FindKey([cds_PigEntryPackageTypeNo.AsInteger])  then
    Begin
     if cds_LoadPlanRowTotalPlan.AsVariant = cds_LoadPlanRowNoOfPkgsPlanned.AsInteger then
     Begin
      cds_LoadPlanRow.Edit ;
      cds_LoadPlanRowNoOfPkgsLeft.AsInteger:= cds_PigEntryCountedPkgs.AsInteger ;
      cds_LoadPlanRow.Post ;
     End
     else
     Begin
      fDistDupPkgsToLoadPlan:= TfDistDupPkgsToLoadPlan.Create(nil);
      fDistDupPkgsToLoadPlan.Panel1.Caption:= 'Fördela '+cds_PigEntryCountedPkgs.AsString+' paket på destinationer' ;
      fDistDupPkgsToLoadPlan.cxLabel1.Caption:= cds_LoadPlanRowPRODUKT.AsString
      +', '+cds_LoadPlanRowLNGD.AsString
      +', '+cds_LoadPlanRowGRADESTAMP.AsString
      +', '+cds_LoadPlanRowBarCodeID.AsString ;
      try
       fDistDupPkgsToLoadPlan.ShowModal ;
       Application.ProcessMessages ;
      finally
       FreeAndNil(fDistDupPkgsToLoadPlan) ;
      end;
     End ;//else Begin

    End //if cds_PigEntryCountedPkgs.AsInteger <> cds_LoadPlanRowTotLager.AsInteger then
    else
     Begin
      fDistDupPkgsToLoadPlan:= TfDistDupPkgsToLoadPlan.Create(nil);
      fDistDupPkgsToLoadPlan.Panel1.Caption:= 'Fördela '+cds_PigEntryCountedPkgs.AsString+' paket på destinationer' ;
      fDistDupPkgsToLoadPlan.cxLabel1.Caption:= cds_PigEntryProdukt.AsString
      +', '+cds_PigEntryLNGD.AsString
      +', '+cds_PigEntryGRADESTAMP.AsString
      +', '+cds_PigEntryBARCODE.AsString ;
      cds_LoadPlanRow.Insert ;
      cds_LoadPlanRowPackageTypeNo.AsInteger:= cds_PigEntryPackageTypeNo.AsInteger ;
      cds_LoadPlanRow.EnableControls ;
      try
       if fDistDupPkgsToLoadPlan.ShowModal = mrOK then
        cds_LoadPlanRow.Post
         else
          cds_LoadPlanRow.Cancel ;
       Application.ProcessMessages ;
      finally
       FreeAndNil(fDistDupPkgsToLoadPlan) ;
       cds_LoadPlanRow.DisableControls ;
      end;
     End ;//else Begin
//   ShowMessage('Pkttypnr '+cds_PigEntryPackageTypeNo.AsString+' finns ej') ;
    End ;//if cds_LoadPlanRow.FindKey([cds_PigEntryPackageTypeNo.AsInteger])  then

    cds_PigEntry.Next ;
  End ;//while

  Finally
//   cds_LoadPlanRow.Filtered := False ;
   Screen.Cursor := Save_Cursor ;
  End ;
 End
  else
   ShowMessage('Inventering ej specificerad i lastplan.') ;
End ; *)

procedure TdmLoadPlan.ds_PigHdrDataChange(Sender: TObject; Field: TField);
begin
 if (cds_PigHdrStatus.AsInteger > 1) AND (cds_PigHdr.State = dsBrowse)
 and (cds_PigHdr.ChangeCount = 0) then
 Begin
  cds_PigEntry.UpdateOptions.ReadOnly := True ;
  cds_PigHdr.UpdateOptions.ReadOnly   := True ;
 End
  else
  Begin
   cds_PigEntry.UpdateOptions.ReadOnly  := False ;
   cds_PigHdr.UpdateOptions.ReadOnly    := False ;
  End ;
end;

procedure TdmLoadPlan.ds_LoadPlanDestDataChange(Sender: TObject;
  Field: TField);
begin
 RefreshLoadPlanRows ;
end;

procedure TdmLoadPlan.RefreshLoadPlanRows ;
Var  Save_Cursor             : TCursor;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 if cds_LoadPlanDest.RecordCount > 0 then
 Begin
 cds_LoadPlanRow.DisableControls ;
 Try
 cds_LoadPlanRow.Active:= False ;
 cds_LoadPlanRow.SQL.Clear ;

 cds_LoadPlanRow.SQL.Add('Select Distinct LPR.LoadingNo,') ;
 if cds_LoadPlanDestLoadPlanDestRowNo.AsInteger = -1 then
 cds_LoadPlanRow.SQL.Add('-1 AS LoadPlanDestRowNo,')
 else
 cds_LoadPlanRow.SQL.Add('LPR.LoadPlanDestRowNo AS LoadPlanDestRowNo,') ;
 cds_LoadPlanRow.SQL.Add('LPR.PackageTypeNo,') ;

 if cds_LoadPlanDestLoadPlanDestRowNo.AsInteger = -1 then
 Begin
  cds_LoadPlanRow.SQL.Add('SUM(LPR.NoOfPkgsPlanned) AS NoOfPkgsPlanned,') ;
  cds_LoadPlanRow.SQL.Add('SUM(LPR.NoOfPkgsLoaded) AS NoOfPkgsLoaded,') ;
//  cds_LoadPlanRow.SQL.Add('LPR.PktKvar+LPR.ARPkgs- SUM(LPR.NoOfPkgsLeft) AS NoOfPkgsLoaded,') ;
  cds_LoadPlanRow.SQL.Add('SUM(LPR.NoOfPkgsLeft)	AS NoOfPkgsLeft,') ;
  cds_LoadPlanRow.SQL.Add('SUM(LPR.NoOfPkgsConfirmedDest) AS NoOfPkgsConfirmedDest,') ;
  cds_LoadPlanRow.SQL.Add('LPR.PktKvar,') ;
  cds_LoadPlanRow.SQL.Add('LPR.ARPkgs AS AR,') ;
 End
 else
 Begin
  cds_LoadPlanRow.SQL.Add('LPR.NoOfPkgsPlanned,') ;
  cds_LoadPlanRow.SQL.Add('LPR.NoOfPkgsLoaded,') ;
  cds_LoadPlanRow.SQL.Add('LPR.NoOfPkgsLeft,') ;
  cds_LoadPlanRow.SQL.Add('LPR.NoOfPkgsConfirmedDest,') ;
  cds_LoadPlanRow.SQL.Add('LPR.PktKvar,') ;
  cds_LoadPlanRow.SQL.Add('LPR.ARPkgs AS AR,') ;
 End ;
// cds_LoadPlanRow.SQL.Add('LPR.DateCreated,') ;
// cds_LoadPlanRow.SQL.Add('LPR.CreatedUser,') ;
// cds_LoadPlanRow.SQL.Add('pe.SumCountedPkgs AS LastInvCount,') ;
 cds_LoadPlanRow.SQL.Add(QuotedStr('     ')+' AS ORT,') ;
 cds_LoadPlanRow.SQL.Add('ptpp.ProductDisplayName AS Produkt,') ;
 cds_LoadPlanRow.SQL.Add('ptpp.LANGD,') ;
 cds_LoadPlanRow.SQL.Add('ptpp.BarCodeID,') ;
 cds_LoadPlanRow.SQL.Add('ptpp.GradeStamp,') ;
 cds_LoadPlanRow.SQL.Add('ptpp.Söknamn,') ;
 cds_LoadPlanRow.SQL.Add('ptpp.PcsPerPkg AS PPP') ;

(* cds_LoadPlanRow.SQL.Add('CASE WHEN isnull(pigEnd.InvDate,0) = 0 THEN') ;
 cds_LoadPlanRow.SQL.Add('(Select Count(cpl.PackageTypeNo) from dbo.Confirmed_Package_Log cpl') ;
 cds_LoadPlanRow.SQL.Add('Inner Join dbo.Confirmed_Load cl on cl.Confirmed_LoadNo = cpl.Confirmed_LoadNo') ;

 cds_LoadPlanRow.SQL.Add('WHERE cpl.LogicalInventoryPointNo = LPH.LIPNo') ;
 cds_LoadPlanRow.SQL.Add('AND cpl.PackageTypeNo = LPR.PackageTypeNo') ;
 cds_LoadPlanRow.SQL.Add('AND cl.DateCreated > pigStart.InvDate)') ;
 cds_LoadPlanRow.SQL.Add('ELSE') ;
 cds_LoadPlanRow.SQL.Add('(Select Count(cpl.PackageTypeNo) from dbo.Confirmed_Package_Log cpl') ;
 cds_LoadPlanRow.SQL.Add('Inner Join dbo.Confirmed_Load cl on cl.Confirmed_LoadNo = cpl.Confirmed_LoadNo') ;
 cds_LoadPlanRow.SQL.Add('WHERE cpl.LogicalInventoryPointNo = LPH.LIPNo') ;
 cds_LoadPlanRow.SQL.Add('AND cpl.PackageTypeNo = LPR.PackageTypeNo') ;
 cds_LoadPlanRow.SQL.Add('AND cl.DateCreated > pigStart.InvDate') ;
 cds_LoadPlanRow.SQL.Add('AND cl.DateCreated < pigEnd.InvDate)') ;
 cds_LoadPlanRow.SQL.Add('END AS AR') ; *)

 cds_LoadPlanRow.SQL.Add('FROM dbo.LoadPlanRow LPR') ;
 cds_LoadPlanRow.SQL.Add('Inner Join dbo.LoadPlanHdr LPH on LPH.LoadingNo = LPR.LoadingNo') ;
 cds_LoadPlanRow.SQL.Add('Left Outer Join dbo.PktTypeByPP ptpp on ptpp.PkgCodePPNo = LPR.PackageTypeNo') ;
 cds_LoadPlanRow.SQL.Add('Inner Join dbo.LoadPlanDest LPD ON LPD.LoadingNo = LPR.LoadingNo') ;
 cds_LoadPlanRow.SQL.Add('                                AND LPD.LoadPlanDestRowNo = LPR.LoadPlanDestRowNo') ;

 cds_LoadPlanRow.SQL.Add('WHERE LPR.LoadingNo = '+cds_LoadPlanDestLoadingNo.AsString) ;
 if cds_LoadPlanDestLoadPlanDestRowNo.AsInteger > -1 then

 cds_LoadPlanRow.SQL.Add(' AND LPR.LoadPlanDestRowNo = '+cds_LoadPlanDestLoadPlanDestRowNo.AsString) ;

 if cds_LoadPlanDestLoadPlanDestRowNo.AsInteger = -1 then
 Begin
  cds_LoadPlanRow.SQL.Add('Group by LPR.LoadingNo, LPR.PackageTypeNo, LPR.PktKvar, LPR.ARPkgs,') ;
  cds_LoadPlanRow.SQL.Add('ptpp.ProductDisplayName, ptpp.LANGD, ptpp.BarCodeID, ptpp.GradeStamp,') ;
  cds_LoadPlanRow.SQL.Add('ptpp.Söknamn, ptpp.PcsPerPkg') ;
 End ; 

// if thisuser.UserID = 8 then cds_LoadPlanRow.SQL.SaveToFile('cds_LoadPlanRow.txt');

 cds_LoadPlanRow.Active:= True ;
 Finally
  cds_LoadPlanRow.EnableControls ;
 End ;
 End ;//if cds_LoadPlanDest.RecordCount > 0 then
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
End ;
(*
Antal paket AR sedan inventeringen.
CASE WHEN isnull(pigEnd.InvDate,0) = 0 THEN
(Select Count(cpl.PackageTypeNo) from dbo.Confirmed_Package_Log cpl
Inner Join dbo.Confirmed_Load cl on cl.Confirmed_LoadNo = cpl.Confirmed_LoadNo

WHERE cpl.LogicalInventoryPointNo = LPH.LIPNo
AND cpl.PackageTypeNo = LPR.PackageTypeNo
AND cl.DateCreated > pigStart.InvDate)
ELSE
(Select Count(cpl.PackageTypeNo) from dbo.Confirmed_Package_Log cpl
Inner Join dbo.Confirmed_Load cl on cl.Confirmed_LoadNo = cpl.Confirmed_LoadNo
WHERE cpl.LogicalInventoryPointNo = LPH.LIPNo
AND cpl.PackageTypeNo = LPR.PackageTypeNo
AND cl.DateCreated > pigStart.InvDate
AND cl.DateCreated < pigEnd.InvDate)
END AS AR*)

procedure TdmLoadPlan.DataModuleCreate(Sender: TObject);
begin
 mtInventeringsTyp.Active:= True ;
 mtInventeringsTyp.InsertRecord([1,'Nollinventering']);
 mtInventeringsTyp.InsertRecord([2,'Utlastningsinventering']);
end;

procedure TdmLoadPlan.AdjustInventoryAccordingToDifference ;
var
  Save_Cursor             : TCursor;
begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 dmsConnector.StartTransaction;
 try
 cds_PigEntry.First ;
 While not cds_PigEntry.Eof do
 Begin
  if cds_PigEntryLoadedPkgs.AsInteger < 0 then
  RemovePkgs (cds_PigEntryLoadedPkgs.AsInteger*-1, cds_PigEntryPackageTypeNo.AsInteger)
  else
  if cds_PigEntryLoadedPkgs.AsInteger > 0 then
  AddPkgs(cds_PigEntryLoadedPkgs.AsInteger, cds_PigEntryPackageTypeNo.AsInteger) ;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  cds_PigEntry.Next ;
 End ;//while

  dmsConnector.Commit ;
//  Result:= True ;
  except
   dmsConnector.Rollback ;
   Raise ;
//   Result:= False ;
  end;

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
End ;

procedure TdmLoadPlan.RemovePkgs(const NoOfPkgs, PackageTypeNo : Integer) ;
Var x : Integer ;
begin
 Try
 x := 0 ;
 cds_PkgNosSub.Active:= False ;
 cds_PkgNosSub.ParamByName('PackageTypeNo').AsInteger  := PackageTypeNo ;
 cds_PkgNosSub.ParamByName('LIPNo').AsInteger          := cds_PigHdrLIPNo.AsInteger ;
 cds_PkgNosSub.Active:= True ;
 cds_PkgNosSub.First ;
 While (not cds_PkgNosSub.Eof) and (NoOfPkgs > x) do
 Begin
  sp_VardaLager.Close ;
  sp_VardaLager.ParamByName('@PackageNo').AsInteger                := cds_PkgNosSubPackageNo.AsInteger ;
  sp_VardaLager.ParamByName('@SupplierCode').AsString              := cds_PkgNosSubSupplierCode.AsString ;
  sp_VardaLager.ParamByName('@RegistrationPointNo').AsInteger      := 2 ;
  sp_VardaLager.ParamByName('@UserID').AsInteger                   := ThisUser.UserID ;
  sp_VardaLager.ExecProc ;

  x:= succ(x) ;
  cds_PkgNosSub.Next ;
 End ;

 cds_PkgNosSub.Active:= False ;
 except
//  On E: Exception do  ShowMessage(E.Message) ;
  Raise ;
 end;


(* Try
 x := 0 ;
 cds_PkgNosSub.Active:= False ;
 sq_PkgNosSub.ParamByName('PackageTypeNo').AsInteger  := PackageTypeNo ;
 sq_PkgNosSub.ParamByName('LIPNo').AsInteger          := cds_PigHdrLIPNo.AsInteger ;
 cds_PkgNosSub.Active:= True ;
 cds_PkgNosSub.First ;
 While (not cds_PkgNosSub.Eof) and (NoOfPkgs > x) do
 Begin
  cds_PkgNosSub.Edit ;
  cds_PkgNosSubStatus.AsInteger:= 0 ;
  cds_PkgNosSub.Post ;
  x:= succ(x) ;
  cds_PkgNosSub.Next ;
 End ;
 if cds_PkgNosSub.ChangeCount > 0 then
  cds_PkgNosSub.ApplyUpdates(0) ;
 cds_PkgNosSub.Active:= False ;
 except
//  On E: Exception do  ShowMessage(E.Message) ;
  Raise ;
 end; *)
End ;

//PackageTypeNo är PkgCodePPNo
procedure TdmLoadPlan.AddPkgs(const NoOfPkgs, PackageTypeNo : Integer) ;
Var x, PackageNo : Integer ;
    SupplierCode : String ;
Begin
 Try
 SupplierCode:= dmsContact.GetClientCode(cds_PigHdrSalesRegionNo.AsInteger) ;
 x := 0 ;
 cds_PkgNosAdd.Active:= False ;
 cds_PkgNosAdd.Active:= True ;

 Repeat
  PackageNo:= dmsConnector.GetCurrentPkgNo(cds_PigHdrSalesRegionNo.AsInteger,1) ;
  if PackageNumberExists(PackageNo, SupplierCode) = False then
  Begin

   sp_NewPackageNo.ParamByName('@PackageNo'              ).AsInteger  := PackageNo ;
   sp_NewPackageNo.ParamByName('@PackageTypeNo'          ).AsInteger  := GetPackageTypeNo(PackageTypeNo) ;
   sp_NewPackageNo.ParamByName('@SupplierCode'           ).AsString   := SUPPLIERCODE;
   sp_NewPackageNo.ParamByName('@LogicalInventoryPointNo').AsInteger  := cds_PigHdrLIPNo.AsInteger ;
   sp_NewPackageNo.ParamByName('@SupplierNo'             ).AsInteger  := cds_PigHdrSalesRegionNo.AsInteger ;//mtPkgNosOwnerNo.AsInteger ;
   sp_NewPackageNo.ParamByName('@RegistrationPointNo'    ).AsInteger  := 2 ;
   sp_NewPackageNo.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
   sp_NewPackageNo.ExecProc ;

{   cds_PkgNosAdd.Insert ;
   cds_PkgNosAddPackageNo.AsInteger                := PackageNo ;
   cds_PkgNosAddSupplierCode.AsString              := SupplierCode ;
   cds_PkgNosAddStatus.AsInteger                   := 1 ;
   cds_PkgNosAddPackageTypeNo.AsInteger            := GetPackageTypeNo(PackageTypeNo) ;
   cds_PkgNosAddCreatedUser.AsInteger              := ThisUser.UserID ;
   cds_PkgNosAddModifiedUser.AsInteger             := ThisUser.UserID ;
   cds_PkgNosAddDateCreated.AsSQLTimeStamp         := DateTimeToSqlTimeStamp(Now) ;
   cds_PkgNosAddLogicalInventoryPointNo.AsInteger  := cds_PigHdrLIPNo.AsInteger ;
   cds_PkgNosAddCreatedOfPkgStr.AsInteger          := 4 ;//Created automatically on users demand
   cds_PkgNosAddSupplierNo.AsInteger               := cds_PigHdrSalesRegionNo.AsInteger ;
   cds_PkgNosAdd.Post ; }
   x:= succ(x) ;
  End ;//if PackageNumberExists...
 Until x >= NoOfPkgs ;//Repeat

 if cds_PkgNosAdd.ChangeCount > 0 then
 Begin
  cds_PkgNosAdd.ApplyUpdates(0) ;
  cds_PkgNosAdd.CommitUpdates ;
 End;
 cds_PkgNosAdd.Active:= False ;
 except
//  On E: Exception do  ShowMessage(E.Message) ;
  Raise ;
 end;
End ;

function TdmLoadPlan.GetPackageTypeNo(const PkgCodePPNo : Integer) : Integer ;
Begin
 sq_GetPkgTypeNo.ParamByName('PkgCodePPNo').AsInteger:= PkgCodePPNo ;
 sq_GetPkgTypeNo.Open ;
 Try
  if not sq_GetPkgTypeNo.Eof then
   Result:= sq_GetPkgTypeNoPackageTypeNo.AsInteger
    else
     Result:= -1 ;
 Finally
  sq_GetPkgTypeNo.Close ;
 End ;
End ;

function TdmLoadPlan.PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
begin
  sp_OnePackageNo.Close;
  sp_OnePackageNo.ParamByName('@PackageNo').AsInteger := PkgNo;
  sp_OnePackageNo.ParamByName('@SupplierCode').AsString := Trim(SupplierCode);
  sp_OnePackageNo.Open;
  sp_OnePackageNo.First;
  Result := not sp_OnePackageNo.eof;
  sp_OnePackageNo.Close;
end;

procedure TdmLoadPlan.LoadAllRows ;
Var  Save_Cursor             : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 if cds_LoadPlanDest.RecordCount > 0 then
 Begin
 cds_LoadPlanRow.DisableControls ;
 Try
 cds_LoadPlanRow.Active:= False ;
 cds_LoadPlanRow.SQL.Clear ;

 cds_LoadPlanRow.SQL.Add('Select LPR.LoadingNo,') ;
 cds_LoadPlanRow.SQL.Add('LPR.LoadPlanDestRowNo,') ;

 cds_LoadPlanRow.SQL.Add('LPR.PackageTypeNo,') ;

  cds_LoadPlanRow.SQL.Add('LPR.NoOfPkgsPlanned,') ;
  cds_LoadPlanRow.SQL.Add('LPR.NoOfPkgsLoaded,') ;
  cds_LoadPlanRow.SQL.Add('LPR.NoOfPkgsLeft,') ;
  cds_LoadPlanRow.SQL.Add('LPR.NoOfPkgsConfirmedDest,') ;
  cds_LoadPlanRow.SQL.Add('LPR.PktKvar,') ;
  cds_LoadPlanRow.SQL.Add('LPR.ARPkgs AS AR,') ;

 cds_LoadPlanRow.SQL.Add('C.CityName AS ORT,') ;

 cds_LoadPlanRow.SQL.Add('ptpp.ProductDisplayName AS Produkt,') ;
 cds_LoadPlanRow.SQL.Add('ptpp.LANGD,') ;
 cds_LoadPlanRow.SQL.Add('ptpp.BarCodeID,') ;
 cds_LoadPlanRow.SQL.Add('ptpp.GradeStamp,') ;
 cds_LoadPlanRow.SQL.Add('ptpp.Söknamn,') ;
 cds_LoadPlanRow.SQL.Add('ptpp.PcsPerPkg AS PPP') ;

 cds_LoadPlanRow.SQL.Add('FROM dbo.LoadPlanRow LPR') ;
 cds_LoadPlanRow.SQL.Add('Left Outer Join dbo.PktTypeByPP ptpp on ptpp.PkgCodePPNo = LPR.PackageTypeNo') ;
 cds_LoadPlanRow.SQL.Add('Inner Join dbo.LoadPlanHdr LPH on LPH.LoadingNo = LPR.LoadingNo') ;
 cds_LoadPlanRow.SQL.Add('Left Outer Join dbo.PIGGroup pigStart on pigStart.PIGGroupNo = LPH.InvStartNo') ;
 cds_LoadPlanRow.SQL.Add('Left Outer Join dbo.PIGGroup pigEnd on pigEnd.PIGGroupNo = LPH.InvEndNo') ;
 cds_LoadPlanRow.SQL.Add('Inner Join dbo.LoadPlanDest LPD ON LPD.LoadingNo = LPR.LoadingNo') ;
 cds_LoadPlanRow.SQL.Add('                                AND LPD.LoadPlanDestRowNo = LPR.LoadPlanDestRowNo') ;

 cds_LoadPlanRow.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LPD.PIPNo') ;
 cds_LoadPlanRow.SQL.Add('Inner Join dbo.City c on C.CityNo = PIP.PhyInvPointNameNo') ;
// cds_LoadPlanRow.SQL.Add('Left Outer Join dbo.PigEntry pe on pe.PIGGroupNo = LPH.InvStartNo') ;
// cds_LoadPlanRow.SQL.Add('				and pe.PackageTypeNo = LPR.PackageTypeNo') ;

 cds_LoadPlanRow.SQL.Add('WHERE LPR.LoadingNo = '+cds_LoadPlanDestLoadingNo.AsString) ;

// if thisuser.UserID = 8 then cds_LoadPlanRow.SQL.SaveToFile('cds_LoadPlanRow.txt');


 cds_LoadPlanRow.Active:= True ;
 Finally
  cds_LoadPlanRow.EnableControls ;
 End ;
 End ;//if cds_LoadPlanDest.RecordCount > 0 then
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TdmLoadPlan.UpdateLoadPlanRows ;
Var total : Integer ;
begin
 cds_LoadPlanRow.DisableControls ;
 Try
 cds_LoadPlanRow.First ;
 While not cds_LoadPlanRow.Eof do
 Begin
  cds_LoadPlanRow.Next ;
 End ;
 Finally
 cds_LoadPlanRow.EnableControls ;
 End ;
// cds_LoadPlanRowNoOfPkgsLoaded.AsInteger:= cds_LoadPlanRowTotLager.AsInteger - cds_LoadPlanRowNoOfPkgsLeft.AsInteger ;
(* Total:= 0 ;
// cds_LoadPlanRowNoOfPkgsARAfterDate
 cds_LoadPlanRow.Filter   := 'PackageTypeNo = '+cds_LoadPlanRowPackageTypeNo.AsString ;
 cds_LoadPlanRow.Filtered := True ;
 cds_LoadPlanRow.First ;
 While not cds_LoadPlanRow.Eof do
 Begin
  Total:= Total + cds_LoadPlanRowNoOfPkgsBeforeDate.AsInteger ;
  cds_LoadPlanRow.Next ;
 End ;
 cds_LoadPlanRowNoOfPkgsARAfterDate.AsInteger:= Total ; *)
end;

procedure TdmLoadPlan.UpdateARandPktKvarColumns ;
Begin
 sq_UpdArPktKvar.ParamByName('LoadingNo').AsInteger:= cds_LoadPlanHdrLoadingNo.AsInteger ;
 sq_UpdArPktKvar.ExecSQL ;
End ;

procedure TdmLoadPlan.cds_PigEntryPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  ShowMessage('Koden finns redan i listan') ;
  Action := daFail ;
end;


end.
