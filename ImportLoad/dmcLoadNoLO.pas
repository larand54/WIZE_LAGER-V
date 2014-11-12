unit dmcLoadNoLO;

interface

uses
  SysUtils, Classes, FMTBcd, DB, kbmMemTable, SqlTimSt, Dialogs,
  VidaType, Controls, Forms ;

type
 TAmbiguityEvent = procedure(
    Sender : TObject;
    DataSource : TDataSource;
    var Choice : String3;
    var SupplierNo : Integer;
    var ProductNo : Integer;
    Var ProductLengthNo : Integer;
    Var NoOfLengths : Integer
    ) of object;

  TdmLoadNoLO = class(TDataModule)
    sq_LoadHead: TSQLQuery;
    dsp_LoadHead: TDataSetProvider;
    cds_LoadHead: TClientDataSet;
    ds_LoadHead: TDataSource;
    sq_LSP: TSQLQuery;
    sq_LoadPackages: TSQLQuery;
    cds_LoadHeadLoadNo: TIntegerField;
    cds_LoadHeadSupplierNo: TIntegerField;
    cds_LoadHeadLoadedDate: TSQLTimeStampField;
    cds_LoadHeadSenderLoadStatus: TIntegerField;
    cds_LoadHeadLoadID: TStringField;
    cds_LoadHeadPackageEntryOption: TIntegerField;
    cds_LoadHeadLocalShippingCompanyNo: TIntegerField;
    cds_LoadHeadLocalLoadingLocation: TIntegerField;
    cds_LoadHeadLocalDestinationNo: TIntegerField;
    cds_LoadHeadCreatedUser: TIntegerField;
    cds_LoadHeadModifiedUser: TIntegerField;
    cds_LoadHeadDateCreated: TSQLTimeStampField;
    cds_LoadHeadFS: TStringField;
    cds_LoadHeadOriginalSupplierNo: TIntegerField;
    cds_LoadHeadCustomerNo: TIntegerField;
    cdsPkgsByInvOwner: TClientDataSet;
    cdsPkgsByInvOwnerPackageNo: TIntegerField;
    cdsPkgsByInvOwnerSupplierCode: TStringField;
    cdsPkgsByInvOwnerProductDisplayName: TStringField;
    cdsPkgsByInvOwnerSupplierNo: TIntegerField;
    cdsPkgsByInvOwnerLengthDescription: TStringField;
    dsrcPkgsByInvOwner: TDataSource;
    provPkgsByInvOwner: TDataSetProvider;
    sp_PksByInvOwner: TSQLStoredProc;
    sq_LoadHeadLoadNo: TIntegerField;
    sq_LoadHeadSupplierNo: TIntegerField;
    sq_LoadHeadLoadedDate: TSQLTimeStampField;
    sq_LoadHeadSenderLoadStatus: TIntegerField;
    sq_LoadHeadLoadID: TStringField;
    sq_LoadHeadPackageEntryOption: TIntegerField;
    sq_LoadHeadLocalShippingCompanyNo: TIntegerField;
    sq_LoadHeadLocalLoadingLocation: TIntegerField;
    sq_LoadHeadLocalDestinationNo: TIntegerField;
    sq_LoadHeadCreatedUser: TIntegerField;
    sq_LoadHeadModifiedUser: TIntegerField;
    sq_LoadHeadDateCreated: TSQLTimeStampField;
    sq_LoadHeadFS: TStringField;
    sq_LoadHeadOriginalSupplierNo: TIntegerField;
    sq_LoadHeadCustomerNo: TIntegerField;
    cdsPkgsByInvOwnerProductNo: TIntegerField;
    sp_DeletePackage: TSQLStoredProc;
    sp_DeleteOneLoad: TSQLStoredProc;
    sq_CheckLoadNo: TSQLQuery;
    sq_CheckLoadNoLoadNo: TIntegerField;
    sp_ProcessPkgAND_Log: TSQLStoredProc;
    cdsPkgsByInvOwnerProductLengthNo: TIntegerField;
    sp_RemPkgFromLoad: TSQLStoredProc;
    cdsPkgsByInvOwnerNoOfLengths: TIntegerField;
    sq_PkgInLoad: TSQLQuery;
    sq_PkgInLoadLastNr: TIntegerField;
    sq_PkgInLoadLO: TIntegerField;
    mtPkgNos: TkbmMemTable;
    mtPkgNosPackageNo: TIntegerField;
    mtPkgNosSupplierCode: TStringField;
    mtPkgNosproductno: TIntegerField;
    mtPkgNosproductlengthno: TIntegerField;
    sq_GetPkgNos: TSQLQuery;
    sq_GetPkgNospackageno: TIntegerField;
    sq_GetPkgNossuppliercode: TStringField;
    sq_GetPkgNosproductno: TIntegerField;
    sq_GetPkgNosproductlengthno: TIntegerField;
    dsp_LoadPackages: TDataSetProvider;
    cds_LoadPackages: TClientDataSet;
    ds_LoadPackages2: TDataSource;
    dsp_LSP: TDataSetProvider;
    cds_LSP: TClientDataSet;
    ds_LSP: TDataSource;
    mtLoadPackages: TkbmMemTable;
    mtLoadPackagesLONo: TIntegerField;
    mtLoadPackagesLoadDetailNo: TIntegerField;
    mtLoadPackagesPACKAGENO: TIntegerField;
    mtLoadPackagesSUPP_CODE: TStringField;
    mtLoadPackagesChanged: TBooleanField;
    mtLoadPackagesSupplierShipPlanObjectNo: TIntegerField;
    mtLoadPackagesCustcdsNo: TIntegerField;
    mtLoadShippingPlan: TkbmMemTable;
    mtLoadShippingPlanLoadNo: TIntegerField;
    mtLoadShippingPlanCustomerNo: TIntegerField;
    mtLoadShippingPlanShippingPlanNo: TIntegerField;
    mtLoadShippingPlanCUSTOMER: TStringField;
    mtLoadShippingPlanSHIPPER: TStringField;
    mtLoadShippingPlanREADYDATE: TStringField;
    mtLoadShippingPlanVESSEL: TStringField;
    mtLoadShippingPlanETD: TSQLTimeStampField;
    mtLoadShippingPlanETA: TSQLTimeStampField;
    mtLoadShippingPlanSHIPPER_REF: TStringField;
    mtLoadShippingPlanSHIPPERID: TStringField;
    mtLoadShippingPlanSHIPPERS_SHIPDATE: TSQLTimeStampField;
    mtLoadShippingPlanSHIPPERS_SHIPTIME: TSQLTimeStampField;
    mtLoadShippingPlanORDERNO: TStringField;
    mtLoadShippingPlanORDERTYPE: TStringField;
    mtLoadShippingPlanCreatedUser: TIntegerField;
    mtLoadShippingPlanModifiedUser: TIntegerField;
    mtLoadShippingPlanDateCreated: TSQLTimeStampField;
    mtLoadShippingPlanSalesRegionNo: TIntegerField;
    mtLoadShippingPlanFunction: TIntegerField;
    sq_LoadPackagesLoadNo: TIntegerField;
    sq_LoadPackagesPRODUCT: TStringField;
    sq_LoadPackagesLoadDetailNo: TIntegerField;
    sq_LoadPackagesPACKAGENO: TIntegerField;
    sq_LoadPackagesPACKAGETYPENO: TIntegerField;
    sq_LoadPackagesSupplierCode: TStringField;
    sq_LoadPackagesPackageOK: TIntegerField;
    sq_LoadPackagesProblemPackageLog: TStringField;
    sq_LoadPackagesCreatedUser: TIntegerField;
    sq_LoadPackagesModifiedUser: TIntegerField;
    sq_LoadPackagesDateCreated: TSQLTimeStampField;
    sq_LoadPackagesPCS: TIntegerField;
    sq_LoadPackagesProductNo: TIntegerField;
    sq_LoadPackagesDefaultCustShipObjectNo: TIntegerField;
    sq_LoadPackagesPCS_PER_LENGTH: TStringField;
    sq_LoadPackagesNoOfLengths: TIntegerField;
    sq_LoadPackagesProductLengthNo: TIntegerField;
    sq_LoadPackagesSurfacingNo: TIntegerField;
    sq_LoadPackagesSpeciesNo: TIntegerField;
    sq_LoadPackagesMainGradeNo: TIntegerField;
    sq_LoadPackagesOverrideMatch: TIntegerField;
    sq_LoadPackagesPkg_State: TIntegerField;
    sq_LoadPackagesPkg_Function: TIntegerField;
    sq_LoadPackagesChanged: TIntegerField;
    cds_LoadPackagesLoadNo: TIntegerField;
    cds_LoadPackagesPRODUCT: TStringField;
    cds_LoadPackagesLoadDetailNo: TIntegerField;
    cds_LoadPackagesPACKAGENO: TIntegerField;
    cds_LoadPackagesPACKAGETYPENO: TIntegerField;
    cds_LoadPackagesSupplierCode: TStringField;
    cds_LoadPackagesPackageOK: TIntegerField;
    cds_LoadPackagesProblemPackageLog: TStringField;
    cds_LoadPackagesCreatedUser: TIntegerField;
    cds_LoadPackagesModifiedUser: TIntegerField;
    cds_LoadPackagesDateCreated: TSQLTimeStampField;
    cds_LoadPackagesPCS: TIntegerField;
    cds_LoadPackagesProductNo: TIntegerField;
    cds_LoadPackagesDefaultCustShipObjectNo: TIntegerField;
    cds_LoadPackagesPCS_PER_LENGTH: TStringField;
    cds_LoadPackagesNoOfLengths: TIntegerField;
    cds_LoadPackagesProductLengthNo: TIntegerField;
    cds_LoadPackagesSurfacingNo: TIntegerField;
    cds_LoadPackagesSpeciesNo: TIntegerField;
    cds_LoadPackagesMainGradeNo: TIntegerField;
    cds_LoadPackagesOverrideMatch: TIntegerField;
    cds_LoadPackagesPkg_State: TIntegerField;
    cds_LoadPackagesPkg_Function: TIntegerField;
    cds_LoadPackagesChanged: TIntegerField;
    sq_NewPkgs: TSQLQuery;
    sq_NewPkgsPRODUKT: TStringField;
    sq_NewPkgsANTPERLNGD: TStringField;
    sq_NewPkgsAM3: TFMTBCDField;
    sq_NewPkgsNM3: TFMTBCDField;
    sq_NewPkgsSTYCK: TIntegerField;
    sq_NewPkgsMFBM: TFMTBCDField;
    sq_NewPkgsPackageTypeNo: TIntegerField;
    sq_NewPkgsLIPNo: TIntegerField;
    sq_NewPkgsPackageNo: TIntegerField;
    sq_NewPkgsSUPPLIERCODE: TStringField;
    sq_NewPkgsLoadNo: TIntegerField;
    dsp_NewPkgs: TDataSetProvider;
    cds_NewPkgs: TClientDataSet;
    cds_NewPkgsPRODUKT: TStringField;
    cds_NewPkgsANTPERLNGD: TStringField;
    cds_NewPkgsAM3: TFMTBCDField;
    cds_NewPkgsNM3: TFMTBCDField;
    cds_NewPkgsSTYCK: TIntegerField;
    cds_NewPkgsMFBM: TFMTBCDField;
    cds_NewPkgsPackageTypeNo: TIntegerField;
    cds_NewPkgsLIPNo: TIntegerField;
    cds_NewPkgsPackageNo: TIntegerField;
    cds_NewPkgsSUPPLIERCODE: TStringField;
    cds_NewPkgsLoadNo: TIntegerField;
    ds_NewPkgs: TDataSource;
    sq_DelNewPkgs: TSQLQuery;
    sq_NewPkgsProductNo: TIntegerField;
    cds_NewPkgsProductNo: TIntegerField;
    sq_NewPkgsNoOfLengths: TIntegerField;
    cds_NewPkgsNoOfLengths: TIntegerField;
    sq_LSPLoadNo: TIntegerField;
    sq_LSPCreatedUser: TIntegerField;
    sq_LSPModifiedUser: TIntegerField;
    sq_LSPDateCreated: TSQLTimeStampField;
    cds_LSPLoadNo: TIntegerField;
    cds_LSPCreatedUser: TIntegerField;
    cds_LSPModifiedUser: TIntegerField;
    cds_LSPDateCreated: TSQLTimeStampField;
    dsp_Client: TDataSetProvider;
    cds_Client: TClientDataSet;
    cds_ClientClientNo: TIntegerField;
    cds_ClientClientName: TStringField;
    ds_Client: TDataSource;
    sq_Client: TSQLQuery;
    cds_LoadHeadKUND: TStringField;
    cds_LoadHeadLeverantr: TStringField;
    sq_CompDelAdr: TSQLQuery;
    sq_CompDelAdrClientNo: TIntegerField;
    sq_CompDelAdrAddressNo: TIntegerField;
    sq_CompDelAdrAddressType: TIntegerField;
    sq_CompDelAdrCreatedUser: TIntegerField;
    sq_CompDelAdrModifiedUser: TIntegerField;
    sq_CompDelAdrDateCreated: TSQLTimeStampField;
    sq_CompDelAdrCityName: TStringField;
    sq_CompDelAdrCountryName: TStringField;
    sq_CompDelAdrAddressName: TStringField;
    sq_CompDelAdrAddressLine1: TStringField;
    sq_CompDelAdrAddressLine2: TStringField;
    sq_CompDelAdrAddressLine3: TStringField;
    sq_CompDelAdrAddressLine4: TStringField;
    sq_CompDelAdrStateOrProvince: TStringField;
    sq_CompDelAdrPhone1: TStringField;
    sq_CompDelAdrPhone2: TStringField;
    sq_CompDelAdrPhone3: TStringField;
    sq_CompDelAdrFax: TStringField;
    sq_CompDelAdrEmail: TStringField;
    sq_CompDelAdrPostalCode: TStringField;
    dsp_CompDelAdr: TDataSetProvider;
    cds_Comp_DelAdr: TClientDataSet;
    cds_Comp_DelAdrDateCreated: TSQLTimeStampField;
    cds_Comp_DelAdrModifiedUser: TIntegerField;
    cds_Comp_DelAdrCreatedUser: TIntegerField;
    cds_Comp_DelAdrAddressType: TIntegerField;
    cds_Comp_DelAdrAddressNo: TIntegerField;
    cds_Comp_DelAdrClientNo: TIntegerField;
    cds_Comp_DelAdrCityName: TStringField;
    cds_Comp_DelAdrCountryName: TStringField;
    cds_Comp_DelAdrAddressName: TStringField;
    cds_Comp_DelAdrAddressLine1: TStringField;
    cds_Comp_DelAdrAddressLine2: TStringField;
    cds_Comp_DelAdrAddressLine3: TStringField;
    cds_Comp_DelAdrAddressLine4: TStringField;
    cds_Comp_DelAdrStateOrProvince: TStringField;
    cds_Comp_DelAdrPhone1: TStringField;
    cds_Comp_DelAdrPhone2: TStringField;
    cds_Comp_DelAdrPhone3: TStringField;
    cds_Comp_DelAdrFax: TStringField;
    cds_Comp_DelAdrEmail: TStringField;
    cds_Comp_DelAdrPostalCode: TStringField;
    ds_CompDelAdr: TDataSource;
    cds_LoadHeadDelAdr: TStringField;
    cds_LoadHeadPIP: TStringField;
    sq_PIP: TSQLQuery;
    dsp_PIP: TDataSetProvider;
    cds_PIP: TClientDataSet;
    cds_PIPPIPNO: TIntegerField;
    cds_PIPPIPNAME: TStringField;
    ds_PIP: TDataSource;
    sq_PksByInvOwner: TSQLQuery;
    sq_UpdPcsInPkgType: TSQLQuery;
    sq_LoadHeadMsgToShipper: TMemoField;
    sq_LoadHeadInternalNote: TMemoField;
    sq_LoadHeadNotering: TMemoField;
    sq_LoadHeadLoadOK: TIntegerField;
    sq_LoadHeadLoadAR: TIntegerField;
    sq_LoadHeadShippingPlanNo: TIntegerField;
    cds_LoadHeadMsgToShipper: TMemoField;
    cds_LoadHeadInternalNote: TMemoField;
    cds_LoadHeadNotering: TMemoField;
    cds_LoadHeadLoadOK: TIntegerField;
    cds_LoadHeadLoadAR: TIntegerField;
    cds_LoadHeadShippingPlanNo: TIntegerField;
    sq_LSPShippingPlanNo: TIntegerField;
    sq_LSPConfirmedByReciever: TIntegerField;
    sq_LSPConfirmedBySupplier: TIntegerField;
    sq_LSPInvoiced: TIntegerField;
    sq_LSPLoadingLocationNo: TIntegerField;
    sq_LSPShipToInvPointNo: TIntegerField;
    cds_LSPShippingPlanNo: TIntegerField;
    cds_LSPConfirmedByReciever: TIntegerField;
    cds_LSPConfirmedBySupplier: TIntegerField;
    cds_LSPInvoiced: TIntegerField;
    cds_LSPLoadingLocationNo: TIntegerField;
    cds_LSPShipToInvPointNo: TIntegerField;
    sq_LoadPackagesShippingPlanNo: TIntegerField;
    sq_LoadPackagesM3_NET: TFloatField;
    sq_LoadPackagesM3_NOM: TFloatField;
    sq_LoadPackagesMFBM: TFloatField;
    sq_LoadPackagesLOPM: TFloatField;
    sq_LoadPackagesALMM: TFloatField;
    sq_LoadPackagesATMM: TFloatField;
    sq_LoadPackagesABMM: TFloatField;
    sq_LoadPackagesDefsspno: TIntegerField;
    cds_LoadPackagesShippingPlanNo: TIntegerField;
    cds_LoadPackagesM3_NET: TFloatField;
    cds_LoadPackagesM3_NOM: TFloatField;
    cds_LoadPackagesMFBM: TFloatField;
    cds_LoadPackagesLOPM: TFloatField;
    cds_LoadPackagesALMM: TFloatField;
    cds_LoadPackagesATMM: TFloatField;
    cds_LoadPackagesABMM: TFloatField;
    cds_LoadPackagesDefsspno: TIntegerField;
    sq_OnePkgDetailData: TSQLQuery;
    sq_OnePkgDetailDataPRODUCT: TStringField;
    sq_OnePkgDetailDataPACKAGENO: TIntegerField;
    sq_OnePkgDetailDataPACKAGETYPENO: TIntegerField;
    sq_OnePkgDetailDataSUPP_CODE: TStringField;
    sq_OnePkgDetailDataOnSticks: TIntegerField;
    sq_OnePkgDetailDataM3_NET: TFloatField;
    sq_OnePkgDetailDataPCS: TIntegerField;
    sq_OnePkgDetailDataM3_NOM: TFloatField;
    sq_OnePkgDetailDataMFBM: TFloatField;
    sq_OnePkgDetailDataKVM: TFloatField;
    sq_OnePkgDetailDataLOPM: TFloatField;
    sq_OnePkgDetailDataPCS_PER_LENGTH: TStringField;
    sq_OnePkgDetailDataNoOfLengths: TIntegerField;
    sq_OnePkgDetailDataProductLengthNo: TIntegerField;
    sq_OnePkgDetailDataProductNo: TIntegerField;
    sq_OnePkgDetailDataActualThicknessMM: TFloatField;
    sq_OnePkgDetailDataActualWidthMM: TFloatField;
    sq_OnePkgDetailDataSurfacingNo: TIntegerField;
    sq_OnePkgDetailDataSpeciesNo: TIntegerField;
    sq_OnePkgDetailDataMainGradeNo: TIntegerField;
    sq_OnePkgDetailDataALMM: TFloatField;
    sq_OnePkgDetailDataLIPNo: TIntegerField;
    sq_OnePkgDetailDataProductCategoryNo: TIntegerField;
    procedure cds_LoadHeadReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsConfirmed_LoadReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cds_LoadHeadSenderLoadStatusChange(Sender: TField);
    procedure cds_LoadPackagesAfterInsert(DataSet: TDataSet);
    procedure cds_LoadPackagesBeforePost(DataSet: TDataSet);
    procedure dspLORowsGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cds_LSPAfterInsert(DataSet: TDataSet);
    procedure cds_LSPReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_LoadPackagesReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dsp_LoadPackagesGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cds_LoadHeadAfterInsert(DataSet: TDataSet);
    procedure cds_LoadPackagesPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure cds_LSPBeforePost(DataSet: TDataSet);
    procedure cds_LoadHeadBeforePost(DataSet: TDataSet);
    procedure ds_LoadPackages2DataChange(Sender: TObject; Field: TField);
    procedure cds_LoadHeadCustomerNoChange(Sender: TField);
    procedure cds_LoadHeadAfterScroll(DataSet: TDataSet);
    procedure cds_Comp_DelAdrAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
   FOnAmbiguousPkgNo: TAmbiguityEvent;

   procedure DeleteAllNewPkgs(const LoadNo : Integer) ;
   function  PkgExistInLoad (LoadNo : Integer ) : Boolean ;
   function  IS_Load_OK : Word ;
   procedure SaveLoadPkgs(Sender: TObject; const WhenPosted : TDateTime;const LoadNo:Integer);
   function  SaveLoadHeader(Sender: TObject; const WhenPosted : TDateTime;const LoadNo:Integer) : Boolean ;
   procedure ModifyLoadHeader(Sender: TObject; const WhenPosted : TDateTime;const LoadNo:Integer);
   procedure getPkgsByInvOwner(const PkgNo, PIPNo: Integer) ;
   function  DeletePackage(Sender : TObject; LoadNo : Integer)   : Boolean ;
   procedure CleanUpLoadPkgsGrid(Sender: TObject);
   function  CheckIfLoadNoIsOK(const LoadNo : Integer) : Boolean ;
   procedure ProcessPkgAND_Log(Sender : TObject;const Status, Operation : Integer) ;
   function  Is_Load_Confirmed(const LoadNo : Integer) : Boolean ;
   procedure RemovePkgFromLoad(Sender : TObject;const Status, Operation : Integer) ;
   procedure UpdPcsInPkgType ;

  public
    { Public declarations }
   LoadStatus,
//   InventoryNo,
   GlobalLoadDetailNo : Integer ;
//   FSalesRegionNo, FCustomerNo,
  procedure  RefreshDelAdr ;
  procedure  GetDeliveryAddress(S : TStrings) ;
   procedure DeleteONELoad(const LoadNo : Integer);
   function  IS_Packages_OK : Boolean ;

   procedure SaveLOData(LoadNo: Integer;Sender: TObject);
   function  PkgNoToSuppCode(
            const PIPNo, PkgNo : Integer;
            Var ProductNo : Integer;
            Var ProductLengthNo, NoOfLengths : Integer): string3;

   property OnAmbiguousPkgNo : TAmbiguityEvent read  FOnAmbiguousPkgNo write FOnAmbiguousPkgNo;
  end;

var
  dmLoadNoLO: TdmLoadNoLO;

implementation

uses dmsDataConn, VidaConst, VidaUser, recerror, dmsVidaContact, dmsVidaSystem ,
  dmc_UserProps;

{$R *.dfm}


function TdmLoadNoLO.CheckIfLoadNoIsOK(const LoadNo : Integer) : Boolean ;
Begin
 sq_CheckLoadNo.Close ;
 sq_CheckLoadNo.ParamByName('LoadNo').AsInteger:= LoadNo ;
 sq_CheckLoadNo.Open ;
 if sq_CheckLoadNoLoadNo.AsInteger = LoadNo then
 Result := False
 else
 Result := True ;
 sq_CheckLoadNo.Close ;
End ;

procedure TdmLoadNoLO.SaveLOData(LoadNo: Integer;Sender: TObject);
// We have been passed data to be saved in the database. The data passed includes the original
// data(if any) and the modified/new data, so we can handle any concurrency issues that arise.
var
  TransactionNo : LongWord;
  WhenPosted    : TDateTime;
  NewLoad       : Boolean;
  Save_Cursor   : TCursor;
begin
 NewLoad := False;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try
//  ds_LoadPackages.Enabled:= False ;

  WhenPosted := Now; // Make sure all records get same time of posting.

(*    if LoadNo < 1 { NEW_ENTRY } then
    Begin
     NewLoad := TRUE;
      LoadNo := dmsConnector.NextMaxNo('Loads');
     if CheckIfLoadNoIsOK(cds_LoadHeadLoadNo.AsInteger) = False then
       Begin
        ShowMessage('A Load No could be retrieved, please try save again or close the load form and try again.') ;
        Exit ;
       End ;
    end ; *)

{  if ThisUser.UserID <> 8 then
  if Is_Load_Confirmed(cds_LoadHeadLoadNo.AsInteger) then
  Begin
   ShowMessage('Kan inte spara därför att lasten är ankomstregistrerad') ;
   Exit ;
  End ; }

  TransactionNo := dmsConnector.StartTransaction;
  try
    if NewLoad = TRUE then
    Begin
      if SaveLoadHeader(Sender,WhenPosted, cds_LoadHeadLoadNo.AsInteger) = False then
       Begin
        ShowMessage('A Load No conflict occured, please try save again or close the load form and try again.') ;
        dmsConnector.Rollback(TransactionNo);
        cds_LoadHead.Edit ;
        cds_LoadHeadLoadNo.AsInteger:= 0 ;
        cds_LoadHead.Post ;
        Exit ;
       End ;
    end
    else
     begin
    //Modify Existing load
      ModifyLoadHeader(Sender,WhenPosted, LoadNo);
     end; //Else

    try
      // Now write the data to the database
      if cds_LSP.ChangeCount > 0 then
       cds_LSP.ApplyUpdates(0) ;

      SaveLoadPkgs  (Sender,WhenPosted, LoadNo);

      if cds_LoadPackages.ChangeCount > 0 then
       cds_LoadPackages.ApplyUpdates(0) ;
//Delete inköps paket
      DeleteAllNewPkgs (LoadNo) ;

//      UpdPcsInPkgType ;
//      CleanUpLoadpkgsGrid(Sender) ;
      dmsConnector.Commit(TransactionNo) ;
    except
      on Exception do begin
        if NewLoad then
          LoadNo := NEW_ENTRY;
        raise;
        end;
      end;

  except
    dmsConnector.Rollback(TransactionNo);
    raise;
    end;
  Finally
//   ds_LoadPackages.Enabled:= True ;
   Screen.Cursor := Save_Cursor ;
  End ;
end;

function TdmLoadNoLO.IS_Load_OK : Word ;
Begin
 Result := 2 ;
 cds_LoadPackages.First ;
 While not cds_LoadPackages.Eof do
 Begin
  if ((cds_LoadPackagesPackageOK.AsInteger > 0) and (cds_LoadPackagesPackageOK.AsInteger <> VP_LengthNotInLengthGroup)
  AND (dmLoadNoLO.cds_LoadPackagesPkg_Function.AsInteger <> REMOVE_PKG_FROM_LOAD))
  or ((cds_LoadPackagesShippingPlanNo.AsInteger < 1)
  AND (dmLoadNoLO.cds_LoadPackagesPkg_Function.AsInteger <> REMOVE_PKG_FROM_LOAD)) then
   Result := 1 ;
  cds_LoadPackages.Next ;
 End ;
End ;

function TdmLoadNoLO.SaveLoadHeader(Sender: TObject; const WhenPosted : TDateTime;const LoadNo: Integer) : Boolean ;
const
  ALWAYS_ZERO = 0;
begin
 if cds_LoadHead.State = dsBrowse then
  cds_LoadHead.Edit ;
//  cds_LoadHeadLoadNo.AsInteger              := LoadNo ;
//  cds_LoadHeadSupplierNo.AsInteger          := FSalesRegionNo;
  cds_LoadHeadPackageEntryOption.AsInteger  := 0 ;
  cds_LoadHeadCreatedUser.AsInteger         := ThisUser.UserID ;
  cds_LoadHeadModifiedUser.AsInteger        := ThisUser.UserID ;
  cds_LoadHeadDateCreated.AsSQLTimeStamp    := DateTimeToSqlTimeStamp(Now) ;
//  cds_LoadHeadOriginalSupplierNo.AsInteger  := FSalesRegionNo ;
//  cds_LoadHeadCustomerNo.AsInteger          := FCustomerNo ;

  cds_LoadHead.Post ;

{  if cds_LoadHeadSenderLoadStatus.AsInteger <> 0 then
  Begin
   cds_LoadHead.Edit ;
   cds_LoadHeadSenderLoadStatus.AsInteger:= IS_Load_OK ;
   cds_LoadHead.Post ;
  End ; }

//  cds_LoadHead.Edit ;
//  cds_LoadHeadLoadOK.AsInteger:= IS_Load_OK ;
//  cds_LoadHead.Post ;

 if cds_LoadHead.ChangeCount > 0 then
 Begin
  if cds_LoadHead.ApplyUpdates(0) > 0 then
  Begin
   Result:= False ;
  End
  else
  Result:= True ;
 End
 else
  Result:= True ;
end;

procedure TdmLoadNoLO.ModifyLoadHeader(Sender: TObject; const WhenPosted : TDateTime;const LoadNo:Integer);
const
  ALWAYS_ZERO = 0;
begin
 if cds_LoadHead.State in [dsEdit, dsInsert] then
 cds_LoadHead.Post ;
 cds_LoadHead.Edit ;
// if cds_LoadHeadSenderLoadStatus.AsInteger <> 0 then
//  cds_LoadHeadSenderLoadStatus.AsInteger:= IS_Load_OK ;

//  cds_LoadHeadLoadOK.AsInteger            := IS_Load_OK ;
  cds_LoadHeadModifiedUser.AsInteger      := ThisUser.UserID ;

//  cds_LoadHeadSupplierNo.AsInteger        := FSalesRegionNo ;

//  cds_LoadHeadOriginalSupplierNo.AsInteger:= FSalesRegionNo ;
//  cds_LoadHeadCustomerNo.AsInteger        := FCustomerNo ;


  cds_LoadHead.Post ;


 if cds_LoadHead.ChangeCount > 0 then
 if cds_LoadHead.ApplyUpdates(0) > 0 then
 Begin
 End;
end;

procedure TdmLoadNoLO.SaveLoadPkgs(Sender: TObject; const WhenPosted : TDateTime;const LoadNo:Integer);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  cds_LoadPackages.Filter   := 'Changed = 1' ;
  cds_LoadPackages.Filtered := True ;
  cds_LoadPackages.First ;
  While cds_LoadPackages.RecordCount > 0 do
  Begin
   if cds_LoadPackagesChanged.AsInteger = 1 then
   Begin
   if cds_LoadPackagesPkg_State.AsInteger = EXISTING_PACKAGE then
   Begin
    Case cds_LoadPackagesPkg_Function.AsInteger of
        ADD_PKG_TO_LOAD       : Begin
                                 //No log operations as nothing happened with the package
                                 cds_LoadPackages.Edit ;
                                 cds_LoadPackagesPkg_State.AsInteger:= EXISTING_PACKAGE ;
                                 cds_LoadPackagesChanged.AsInteger:= 0 ;
                                 cds_LoadPackages.Post ;
                                End ;
        DELETE_PKG            : Begin
                                //DeletePackage proc also makes an entry to PackageNumberLog
                                 DeletePackage(Sender, LoadNo) ;
                                 cds_LoadPackages.Delete ;
                                End ;
        REMOVE_PKG_FROM_LOAD  : Begin
                                //Make an entry to PackageNumberLog and set pkgStatus = 1
                                 RemovePkgFromLoad(Sender, status_Pkg_IN_Inventory, oper_Remove_From_Load) ;
                                 cds_LoadPackages.Delete ;
                                End ;
    End ; //case
   End
   else //NEW_PACKAGE
   Begin
    Case cds_LoadPackagesPkg_Function.AsInteger of
        ADD_PKG_TO_LOAD       : Begin
                                //Remove pkg from inventory pkgStatus = 0 and make entry in PackageNumberLog
                                 //Change packageNumber.status and make entry to PackageNumberLog
                                 //ONLY IF the load is a sale.
                                 if cds_LoadHeadPackageEntryOption.AsInteger = 0 then
                                 ProcessPkgAND_Log(Sender, status_Pkg_NOT_IN_Inventory, oper_Add_Pkg_To_Load) ;

                                 //Package is now an existing package.
                                 cds_LoadPackages.Edit ;
                                 cds_LoadPackagesPkg_State.AsInteger:= EXISTING_PACKAGE ;
                                 cds_LoadPackagesChanged.AsInteger:= 0 ;
                                 cds_LoadPackages.Post ;
                                End ;
        DELETE_PKG            : Begin
                                //DeletePackage proc also makes an entry to PackageNumberLog
                                 DeletePackage(Sender, LoadNo) ;
                                 cds_LoadPackages.Delete ;
                                End ;
        REMOVE_PKG_FROM_LOAD  : Begin
                                 //Do nothing as package is still in inventory
                                 //no set pkg status is needed as it set to 1 already
                                End ;
    End ; //case
   End ;

   End ;//if..

//   cds_LoadPackages.Next ;
  end; //While
 Finally
  cds_LoadPackages.Filtered := False ;
  Screen.Cursor             := Save_Cursor ;
 End ;
end;

procedure TdmLoadNoLO.CleanUpLoadPkgsGrid(Sender: TObject);
begin
  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
    Case cds_LoadPackagesPkg_Function.AsInteger of
        ADD_PKG_TO_LOAD       : Begin
                                 cds_LoadPackages.Edit ;
                                 cds_LoadPackagesPkg_State.AsInteger:= EXISTING_PACKAGE ;
                                 cds_LoadPackages.Post ;
                                 cds_LoadPackages.Next ;
                                End ;
        DELETE_PKG            : Begin
                                 cds_LoadPackages.Delete ;
                                End ;
        REMOVE_PKG_FROM_LOAD  : Begin
                                 cds_LoadPackages.Delete ;
                                End ;
    End ; //case
   cds_LoadPackages.Next ;
  End; //While
end;

function TdmLoadNoLO.PkgNoToSuppCode(
  const PIPNo, PkgNo : Integer;
  Var ProductNo : Integer;
  Var ProductLengthNo, NoOfLengths : Integer): string3;
var
  SuppCode   : string3;
  SupplierNo : Integer;
begin
  cdsPkgsByInvOwner.Close;
  getPkgsByInvOwner(PkgNo, PIPNo);
  cdsPkgsByInvOwner.SetProvider(provPkgsByInvOwner);
  cdsPkgsByInvOwner.Open;
  case cdsPkgsByInvOwner.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode   := cdsPkgsByInvOwner.FieldByName('SupplierCode').AsString ;
           SupplierNo := cdsPkgsByInvOwner.FieldByName('SupplierNo'  ).AsInteger ;
           ProductNo  := cdsPkgsByInvOwner.FieldByName('ProductNo'  ).AsInteger ;
           ProductLengthNo:= cdsPkgsByInvOwner.FieldByName('ProductLengthNo'  ).AsInteger ;
           NoOfLengths:= cdsPkgsByInvOwner.FieldByName('NoOfLengths'  ).AsInteger ;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.dsrcPkgsByInvOwner,SuppCode,SupplierNo, ProductNo,
             ProductLengthNo, NoOfLengths);
           end;
    end;

  Result := SuppCode;
end;

procedure TdmLoadNoLO.getPkgsByInvOwner(const PkgNo, PIPNo: Integer) ;
begin
  sq_PksByInvOwner.Close;
  sq_PksByInvOwner.ParamByName('PackageNo').AsInteger         := PkgNo ;
  sq_PksByInvOwner.ParamByName('PIPNo').AsInteger             := PIPNo ;

  sq_PksByInvOwner.Open;
(*  sp_PksByInvOwner.Close;
  sp_PksByInvOwner.ParamByName('PkgNo').AsInteger             := PkgNo ;
//  sp_PksByInvOwner.ParamByName('InvOwner').AsInteger          := InventoryOwner ;
  sp_PksByInvOwner.ParamByName('LIPNo').AsInteger             := InventoryPlaceNo ;

  sp_PksByInvOwner.Open; *)
end;

procedure TdmLoadNoLO.cds_LoadHeadReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;


procedure TdmLoadNoLO.DataModuleCreate(Sender: TObject);
begin
 GlobalLoadDetailNo := 1 ;
end;

function TdmLoadNoLO.DeletePackage(Sender : TObject; LoadNo : Integer)   : Boolean ;
begin
 Result := False ;
 //Delete Package
 Try
 //Operation is set to 4 in the SP.
 //Kan inte ta bort paket från systemet om paketet finns upptaget på en annan last
 if PkgExistInLoad (LoadNo) = False then
 Begin

  sp_DeletePackage.ParamByName('PackageNo').AsInteger:= cds_LoadPackagesPackageNo.AsInteger ;
  sp_DeletePackage.ParamByName('SupplierCode').AsString:= cds_LoadPackagesSupplierCode.AsString ;
  sp_DeletePackage.ParamByName('RegistrationPointNo').AsInteger:= -1 ; // -1 ingen mätpunkt
  sp_DeletePackage.ParamByName('PackageTypeNo').AsInteger:= cds_LoadPackagesPACKAGETYPENO.AsInteger ;
  sp_DeletePackage.ParamByName('LIPNo').AsInteger:= -1 ;
  sp_DeletePackage.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
  sp_DeletePackage.ExecProc ;
 End ;

 Except
  Result := False ;
 End ;
end;

procedure TdmLoadNoLO.RemovePkgFromLoad(Sender : TObject;const Status, Operation : Integer) ;
Begin
      sp_RemPkgFromLoad.Close ;
      sp_RemPkgFromLoad.ParamByName('PackageNo').AsInteger                := cds_LoadPackagesPACKAGENO.AsInteger ;
      sp_RemPkgFromLoad.ParamByName('SupplierCode').AsString              := cds_LoadPackagesSupplierCode.AsString ;
      sp_RemPkgFromLoad.ParamByName('RegistrationPointNo').AsInteger      := -1 ; // -1 ingen mätpunkt
      sp_RemPkgFromLoad.ParamByName('PackageTypeNo').AsInteger            := cds_LoadPackagesPACKAGETYPENO.AsInteger ;
      sp_RemPkgFromLoad.ParamByName('LIPNo').AsInteger                    := cds_LoadPackagesDefsspNo.AsInteger ;
      sp_RemPkgFromLoad.ParamByName('UserID').AsInteger                   := ThisUser.UserID ;
      sp_RemPkgFromLoad.ParamByName('Status').AsInteger                   := Status ;
      sp_RemPkgFromLoad.ParamByName('Operation').AsInteger                := Operation ;
      sp_RemPkgFromLoad.ParamByName('LoadNo').AsInteger                   := cds_LoadHeadLoadNo.AsInteger ;
      sp_RemPkgFromLoad.ExecProc ;
End ;

procedure TdmLoadNoLO.ProcessPkgAND_Log(Sender : TObject;const Status, Operation : Integer) ;
Begin
//Set PackageNumber.Status
//Make entry to PackageNumberLog
      sp_ProcessPkgAND_Log.Close ;
      sp_ProcessPkgAND_Log.ParamByName('PackageNo').AsInteger               := cds_LoadPackagesPACKAGENO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('SupplierCode').AsString             := cds_LoadPackagesSupplierCode.AsString ;
      sp_ProcessPkgAND_Log.ParamByName('RegistrationPointNo').AsInteger     := -1 ; // -1 ingen mätpunkt
      sp_ProcessPkgAND_Log.ParamByName('PackageTypeNo').AsInteger           := cds_LoadPackagesPACKAGETYPENO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('LIPNo').AsInteger                   := cds_LoadPackagesDefsspNo.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('UserID').AsInteger                  := ThisUser.UserID ;
      sp_ProcessPkgAND_Log.ParamByName('Status').AsInteger                  := Status ;
      sp_ProcessPkgAND_Log.ParamByName('Operation').AsInteger               := Operation ;
      sp_ProcessPkgAND_Log.ExecProc ;
End ;

procedure TdmLoadNoLO.DeleteONELoad(const LoadNo : Integer);
var
  TransactionNo : LongWord;
  Save_Cursor   : TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try
  TransactionNo := dmsConnector.StartTransaction;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    sp_DeleteONELoad.ParamByName('LoadNo').AsInteger := LoadNo;
    sp_DeleteONEload.ExecProc;
    Screen.Cursor := crHourGlass;    { Show hourglass cursor }    
    dmsConnector.Commit(TransactionNo);
  except
    dmsConnector.Rollback(TransactionNo);
    raise;
  end;
  Finally
   Screen.Cursor := Save_Cursor ;
  End ;
end;

procedure TdmLoadNoLO.cdsConfirmed_LoadReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;

function TdmLoadNoLO.Is_Load_Confirmed (const LoadNo : Integer) : Boolean ;
Begin
  Result:= False ;
  dmsSystem.sp_OneLoad.Close ;
  dmsSystem.sp_OneLoad.ParamByName('LoadNo').AsInteger := LoadNo;
  dmsSystem.sp_OneLoad.Open ;
  if (dmsSystem.sp_OneLoadConfirmed.AsInteger > 0) or (dmsSystem.sp_OneLoadInvoiced.AsInteger > 0) then
   Result:= True ;
  dmsSystem.sp_OneLoad.Close ;
End ;

function TdmLoadNoLO.IS_Packages_OK : Boolean ;
begin
 cds_LoadPackages.DisableControls ;
 Try
  Result:= True ;
  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
   if cds_LoadPackagesPackageNo.AsInteger < 1 then
    Begin
     Result:= False ;
     ShowMessage('Paketnr saknas på rad '+cds_LoadPackagesLoadDetailNo.AsString) ;
     Exit ;
    End ;
   if cds_LoadPackagesSupplierCode.AsString < '0' then
    Begin
     Result:= False ;
     ShowMessage('Leverantörskod saknas på rad '+cds_LoadPackagesLoadDetailNo.AsString) ;
     Exit ;
    End ;
   cds_LoadPackages.Next ;
  End; //While
 Finally
  cds_LoadPackages.EnableControls ;
 End ;
end;

function TdmLoadNoLO.PkgExistInLoad (LoadNo : Integer ) : Boolean ;
Begin
 sq_PkgInLoad.ParamByName('PackageNo').AsInteger:= cds_LoadPackagesPACKAGENO.AsInteger ;
 sq_PkgInLoad.ParamByName('SupplierCode').AsString:= cds_LoadPackagesSupplierCode.AsString ;
 sq_PkgInLoad.ParamByName('LoadNo').AsInteger:= cds_LoadHeadLoadNo.AsInteger ;
 sq_PkgInLoad.Open ;
 if not sq_PkgInLoad.Eof then
 Begin
  cds_LoadPackages.Edit ;
  cds_LoadPackagesProblemPackageLog.AsString:= 'Pkt finns upptaget i lastnr '
  +sq_PkgInLoadLastNr.AsString+' LO: '+sq_PkgInLoadLO.AsString ;
  cds_LoadPackages.Post ;
  Result:= True ;
 End
  else
   Result:= False ;
 sq_PkgInLoad.Close ;
End ;


//Håller på med packagetypeno osv, se till att inga dubletter skapas!!!
procedure TdmLoadNoLO.cds_LoadHeadSenderLoadStatusChange(
  Sender: TField);
begin
 if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (LoadStatus <> 2) then
 Begin
  cds_LoadHeadLoadedDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 End ;
 LoadStatus:= cds_LoadHeadSenderLoadStatus.AsInteger ;
end;

procedure TdmLoadNoLO.cds_LoadPackagesAfterInsert(DataSet: TDataSet);
begin
 if cds_LoadHeadLoadNo.AsInteger < 1 then
 Begin
  Abort ;
  ShowMessage('Spara lasten först.') ;
  Exit ;
 End ;
 cds_LoadPackagesPkg_State.AsInteger        := NEW_PACKAGE ;
 cds_LoadPackagesPkg_Function.AsInteger     := ADD_PKG_TO_LOAD ;
 cds_LoadPackagesOverrideMatch.AsInteger    := 0 ;
 cds_LoadPackagesChanged.AsInteger          := 1 ;
 cds_LoadPackagesLoadNo.AsInteger           := cds_LoadHeadLoadNo.AsInteger ;
 cds_LoadPackagesCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_LoadPackagesModifiedUser.AsInteger     := ThisUser.UserID ;
 cds_LoadPackagesDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now) ;

 cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := 1 ;
 cds_LoadPackagesShippingPlanNo.AsInteger                     := 1 ;
end;

procedure TdmLoadNoLO.cds_LoadPackagesBeforePost(DataSet: TDataSet);
begin
 if DataSet.FieldByName('PACKAGENO').IsNull then
 Begin
  ShowMessage('En paketrad saknar paketnr, åtgärda med att markera raden och klicka på ESC knappen tills raden försvinner.') ;
  Abort ;
 end ;

// cds_LoadPackagesDefaultsspObjectNo.AsInteger:= cds_LoadPackagesDefaultCustShipObjectNo.AsInteger ;

 if DataSet.FieldByName('LoadDetailNo').AsInteger < 1 then
 Begin
  DataSet.FieldByName('LoadDetailNo').AsInteger:= GlobalLoadDetailNo ;
  GlobalLoadDetailNo := Succ(GlobalLoadDetailNo) ;
 End ;

 cds_LoadPackagesCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_LoadPackagesModifiedUser.AsInteger     := ThisUser.UserID ;
 cds_LoadPackagesDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now) ; 
end;

procedure TdmLoadNoLO.dspLORowsGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'LoadShippingPlan' ;
end;

procedure TdmLoadNoLO.cds_LSPAfterInsert(DataSet: TDataSet);
begin
 cds_LSPLoadNo.AsInteger            := cds_LoadHeadLoadNo.AsInteger ;
 cds_LSPShippingPlanNo.AsInteger              := 1 ;
 cds_LSPCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_LSPModifiedUser.AsInteger      := ThisUser.UserID ;
 cds_LSPDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
// cds_LSPDateModified.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now) ;
end;

procedure TdmLoadNoLO.cds_LSPReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;

procedure TdmLoadNoLO.cds_LoadPackagesReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;

procedure TdmLoadNoLO.dsp_LoadPackagesGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'LoadDetail' ; 
end;

procedure TdmLoadNoLO.cds_LoadHeadAfterInsert(DataSet: TDataSet);
begin
 cds_LoadHeadLoadNo.AsInteger               := dmsConnector.NextMaxNo('Loads') ;
 cds_LoadHeadLocalLoadingLocation.AsInteger := 10002 ;//Lagerställe
// cds_LoadHeadUserID.AsInteger               := 2 ;
// cds_LoadHeadLoadAR.AsInteger := 1 ;//
 if CheckIfLoadNoIsOK(cds_LoadHeadLoadNo.AsInteger) = False then
 Begin
  cds_LoadHeadLoadNo.AsInteger:= dmsConnector.NextMaxNo('Loads') ;
 End ; 
end;

procedure TdmLoadNoLO.cds_LoadPackagesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  ShowMessage('System Error. Paketnr '+DataSet.FieldByName('PACKAGENO').AsString
  +'/'+DataSet.FieldByName('SupplierCode').AsString
  +' är redan inmatat'+' Original Message: ' + E.Message) ;
  Action:= daAbort ;
end;

procedure TdmLoadNoLO.DeleteAllNewPkgs(const LoadNo : Integer) ;
Begin
{ cds_NewPkgs.Active:= False ;
 sq_NewPkgs.ParamByName('LoadNo').AsInteger:= LoadNo ;
 cds_NewPkgs.Active:= True ;
 cds_NewPkgs.First ;
 While not cds_NewPkgs.Eof do
 Begin
  if mtLoadPackages.FindKey([cds_NewPkgsPackageNo.AsInteger, Trim(cds_NewPkgsSUPPLIERCODE.AsString)]) then
  Begin }
   sq_DelNewPkgs.ParamByName('LoadNo').AsInteger      := LoadNo ;
   sq_DelNewPkgs.ExecSQL(False) ;
//   sq_DelNewPkgs.ParamByName('PackageNo').AsInteger   := cds_NewPkgsPackageNo.AsInteger ;
//   sq_DelNewPkgs.ParamByName('SupplierCode').AsString := cds_NewPkgsSUPPLIERCODE.AsString ;
{  End ;

  sq_DelNewPkgs.ExecSQL(False) ;
  cds_NewPkgs.Next ;
 End ; }
End ;

procedure TdmLoadNoLO.cds_LSPBeforePost(DataSet: TDataSet);
begin
 cds_LSPCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_LSPModifiedUser.AsInteger      := ThisUser.UserID ;
 cds_LSPDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
// cds_LSPDateModified.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now) ;
end;

procedure TdmLoadNoLO.cds_LoadHeadBeforePost(DataSet: TDataSet);
begin
 cds_LoadHeadCreatedUser.AsInteger         := ThisUser.UserID ;
 cds_LoadHeadModifiedUser.AsInteger        := ThisUser.UserID ;
 cds_LoadHeadDateCreated.AsSQLTimeStamp    := DateTimeToSqlTimeStamp(Now) ;
end;

procedure TdmLoadNoLO.ds_LoadPackages2DataChange(Sender: TObject;
  Field: TField);
begin
 //
end;

procedure TdmLoadNoLO.GetDeliveryAddress(S : TStrings) ;
Begin

// if Length(cds_Comp_DelAdrAddressName.AsString) > 0 then
//  S.Add(cds_Comp_DelAdrAddressName.AsString) ;
 cds_Comp_DelAdr.Active:= False ;
// sq_CompDelAdr.ParamByName('ClientNo').AsInteger:= cds_LoadHeadCustomerNo.AsInteger ;
 cds_Comp_DelAdr.Active:= True ;

 if not cds_LoadHeadLocalShippingCompanyNo.IsNull then
 Begin
 cds_Comp_DelAdr.Filter   := 'AddressNo = ' + cds_LoadHeadLocalShippingCompanyNo.AsString ;
 cds_Comp_DelAdr.Filtered := True ;
 Try

 if Length(cds_LoadHeadKUND.AsString) > 0 then
  S.Add(cds_LoadHeadKUND.AsString) ;

// if Length(cds_Comp_DelAdrAddressLine1.AsString) > 0 then
//  S.Add(cds_Comp_DelAdrAddressLine1.AsString) ;

 if Length(cds_Comp_DelAdrAddressLine2.AsString) > 0 then
  S.Add(cds_Comp_DelAdrAddressLine2.AsString) ;

 if Length(cds_Comp_DelAdrAddressLine3.AsString) > 0 then
  S.Add(cds_Comp_DelAdrAddressLine3.AsString) ;

 if Length(cds_Comp_DelAdrAddressLine4.AsString) > 0 then
  S.Add(cds_Comp_DelAdrAddressLine4.AsString) ;

 if Length(cds_Comp_DelAdrPostalCode.AsString) > 0 then
  S.Add(cds_Comp_DelAdrPostalCode.AsString + '  ' + cds_Comp_DelAdrCityName.AsString) ;

 if (Length(cds_Comp_DelAdrCountryName.AsString) > 0) and (cds_Comp_DelAdrCountryName.AsString <> 'Sverige') then
  S.Add(cds_Comp_DelAdrCountryName.AsString) ;

 if Length(cds_Comp_DelAdrPhone1.AsString) > 0 then
  S.Add(cds_Comp_DelAdrPhone1.AsString) ;

  Finally
   cds_Comp_DelAdr.Filtered  := False ;
  End ;
 End ;
End ;

procedure TdmLoadNoLO.cds_LoadHeadCustomerNoChange(Sender: TField);
begin
 RefreshDelAdr ;
end;

procedure TdmLoadNoLO.RefreshDelAdr ;
begin
 cds_Comp_DelAdr.Active:= False ;
// sq_CompDelAdr.ParamByName('ClientNo').AsInteger:= cds_LoadHeadCustomerNo.AsInteger ;
 cds_Comp_DelAdr.Active:= True ;
 if not cds_LoadHeadCustomerNo.IsNull then
  Begin
   if cds_LoadHead.State in [dsBrowse] then
    cds_LoadHead.Edit ;
   cds_Comp_DelAdr.Filter   := 'ClientNo = ' + cds_LoadHeadCustomerNo.AsString ;
   cds_Comp_DelAdr.Filtered := True ;
   cds_LoadHeadLocalShippingCompanyNo.AsInteger := cds_Comp_DelAdrAddressNo.AsInteger ;
  End
  else
  cds_Comp_DelAdr.Filter   := 'ClientNo = -1' ;
 cds_Comp_DelAdr.Filtered := True ;
end;

procedure TdmLoadNoLO.cds_LoadHeadAfterScroll(DataSet: TDataSet);
begin
// RefreshDelAdr ;
end;

procedure TdmLoadNoLO.UpdPcsInPkgType ;
Begin
 cds_LoadPackages.First ;
 While not cds_LoadPackages.Eof do
 Begin
  sq_UpdPcsInPkgType.ParamByName('TotalPcs').AsInteger      := cds_LoadPackagesPCS.AsInteger ;
  sq_UpdPcsInPkgType.ParamByName('PackageTypeNo').AsInteger := cds_LoadPackagesPACKAGETYPENO.AsInteger ;
  sq_UpdPcsInPkgType.ExecSql(False) ;
  cds_LoadPackages.Next ;
 End ;//While
End ;

procedure TdmLoadNoLO.cds_Comp_DelAdrAfterInsert(DataSet: TDataSet);
begin
 cds_Comp_DelAdrAddressNo.AsInteger         := -1 ;
 cds_Comp_DelAdrAddressType.AsInteger       := 2 ; //AddressType ;
 cds_Comp_DelAdrClientNo.AsInteger          := cds_LoadHeadCustomerNo.AsInteger ;
 cds_Comp_DelAdrModifiedUser.AsInteger      := ThisUser.UserID ;
 cds_Comp_DelAdrCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_Comp_DelAdrDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
end;

end.
