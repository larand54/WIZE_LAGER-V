unit dmcPkgs;

interface

uses
  SysUtils, Classes, DB, kbmMemTable, Dialogs,
  VidaType, Controls, Forms, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt, SQLtimst ;

type

  TdmPkgs = class(TDataModule)
    ds_LoadPackages: TDataSource;
    mtPackages: TkbmMemTable;
    dsmtPackages: TDataSource;
    mtProdSpecificLengths: TkbmMemTable;
    mtProdSpecificLengthsProductGroupNo: TIntegerField;
    mtProdSpecificLengthsProductLengthNo: TIntegerField;
    mtStandardLengths: TkbmMemTable;
    mtStandardLengthsProductLengthNo: TIntegerField;
    ds_Prod_In_LO: TDataSource;
    mtLoadPackages: TkbmMemTable;
    mtLoadPackagesPRODUCT: TStringField;
    mtLoadPackagesPACKAGENO: TIntegerField;
    mtLoadPackagesPACKAGETYPENO: TIntegerField;
    mtLoadPackagesSUPP_CODE: TStringField;
    mtLoadPackagesM3_NET: TFloatField;
    mtLoadPackagesPCS: TIntegerField;
    mtLoadPackagesM3_NOM: TFloatField;
    mtLoadPackagesKVM: TFloatField;
    mtLoadPackagesLOPM: TFloatField;
    mtLoadPackagesProductNo: TIntegerField;
    mtLoadPackagesINVENTORY: TStringField;
    mtLoadPackagesPCS_PER_LENGTH: TStringField;
    mtLoadPackagesOWNER: TStringField;
    mtLoadPackagesOWNERNO: TIntegerField;
    mtLoadPackagesLOG_INVENTORY_NO: TIntegerField;
    mtLoadPackagesBAR_CODE: TStringField;
    mtLoadPackagesBARCODE_ID: TIntegerField;
    mtLoadPackagesGRADE_STAMP: TStringField;
    mtLoadPackagesGRADESTAMPNO: TIntegerField;
    mtLoadPackagesSUPPLIERNO: TIntegerField;
    mtLoadPackagesOld_PackageTypeNo: TIntegerField;
    mtLoadPackagesSurfacingNo: TIntegerField;
    mtLoadPackagesPIP: TIntegerField;
    mtLoadPackagesLoadDetailNo: TIntegerField;
    mtLoadPackagesACTTHICK: TFloatField;
    mtLoadPackagesACTWIDTH: TFloatField;
    mtLoadPackagesNOMTHICK: TFloatField;
    mtLoadPackagesNOMWIDTH: TFloatField;
    mtLoadPackagesROWNO: TIntegerField;
    mtLoadPackagesStatus: TIntegerField;
    mtLoadPackagesStatusText: TStringField;
    mtPcsPerLength: TkbmMemTable;
    mtPcsPerLengthProductLengthNo: TIntegerField;
    mtPcsPerLengthProductNo: TIntegerField;
    mtPcsPerLengthNoOfPieces: TIntegerField;
    mtPcsPerLengthUserID: TIntegerField;
    mtPcsPerLengthALMM: TFloatField;
    mtLoadPackagesInvNr: TIntegerField;
    sq_OneUniquePkgExt: TFDQuery;
    sq_OneUniquePkgExtPRODUCT: TStringField;
    sq_OneUniquePkgExtPACKAGENO: TIntegerField;
    sq_OneUniquePkgExtPACKAGETYPENO: TIntegerField;
    sq_OneUniquePkgExtSUPP_CODE: TStringField;
    sq_OneUniquePkgExtM3_NET: TFloatField;
    sq_OneUniquePkgExtPCS: TIntegerField;
    sq_OneUniquePkgExtM3_NOM: TFloatField;
    sq_OneUniquePkgExtKVM: TFloatField;
    sq_OneUniquePkgExtLOPM: TFloatField;
    sq_OneUniquePkgExtPRODUCTNO: TIntegerField;
    sq_OneUniquePkgExtINVENTORY: TStringField;
    sq_OneUniquePkgExtONSTICKS: TIntegerField;
    sq_OneUniquePkgExtPCS_PER_LENGTH: TStringField;
    sq_OneUniquePkgExtOWNER: TStringField;
    sq_OneUniquePkgExtOWNERNO: TIntegerField;
    sq_OneUniquePkgExtLOG_INVENTORY_NO: TIntegerField;
    sq_OneUniquePkgExtBAR_CODE: TStringField;
    sq_OneUniquePkgExtBARCODE_ID: TIntegerField;
    sq_OneUniquePkgExtGRADE_STAMP: TStringField;
    sq_OneUniquePkgExtGRADESTAMPNO: TIntegerField;
    sq_OneUniquePkgExtPKG_HEIGHT: TIntegerField;
    sq_OneUniquePkgExtPKGWIDTH: TIntegerField;
    sq_OneUniquePkgExtMINI_BUNDLE: TIntegerField;
    sq_OneUniquePkgExtSHRINK_WRAP: TIntegerField;
    sq_OneUniquePkgExtWRAP_TYPE: TStringField;
    sq_OneUniquePkgExtWRAPTYPENO: TIntegerField;
    sq_OneUniquePkgExtSUPPLIERNO: TIntegerField;
    sq_OneUniquePkgExtOLD_PACKAGETYPENO: TIntegerField;
    sq_OneUniquePkgExtPIP: TIntegerField;
    sq_OneUniquePkgExtStatus: TIntegerField;
    sq_OneUniquePkgExtSurfacingNo: TIntegerField;
    cds_PkgStatus: TFDQuery;
    cds_PkgStatusSupplierCode: TStringField;
    cds_PkgStatusLIPGroupNo: TIntegerField;
    cds_PkgStatusInvenType: TIntegerField;
    cds_PkgStatusLIPNo: TIntegerField;
    cds_PkgStatusAvReg: TIntegerField;
    cds_PkgStatusPkgRealLIPNo: TIntegerField;
    cds_Prod_In_LO: TFDQuery;
    cds_Prod_In_LOPRODUCT: TStringField;
    cds_Prod_In_LOPRODUCTNO: TIntegerField;
    sq_PkgAvReg: TFDQuery;
    sq_PkgAvRegRegPointName: TStringField;
    sq_PkgAvRegProductionDate: TSQLTimeStampField;
    sq_PkgNoAvail: TFDQuery;
    sq_PkgNoAvailPackageNo: TIntegerField;
    sq_PkgNoAvailSupplierCode: TStringField;
    sq_PkgNoAvailPackageTypeNo: TIntegerField;
    sq_ProductLengths: TFDQuery;
    sq_ProductLengthsProductLengthNo: TIntegerField;
    sq_ProductLengthsActualLengthMM: TFloatField;
    sq_ProductLengthsNominalLengthMM: TFloatField;
    sq_ProductLengthsNominalLengthFEET: TFloatField;
    sq_ProductLengthsActualLengthINCH: TStringField;
    sq_ProductLengthsPET: TIntegerField;
    sq_ProductLengthsFingerJoint: TIntegerField;
    sq_GetPkgsByLONo: TFDQuery;
    sq_GetPkgsByLONoPRODUCT: TStringField;
    sq_GetPkgsByLONoPACKAGENO: TIntegerField;
    sq_GetPkgsByLONoPACKAGETYPENO: TIntegerField;
    sq_GetPkgsByLONoSUPP_CODE: TStringField;
    sq_GetPkgsByLONoM3_NET: TFloatField;
    sq_GetPkgsByLONoPCS: TIntegerField;
    sq_GetPkgsByLONoM3_NOM: TFloatField;
    sq_GetPkgsByLONoKVM: TFloatField;
    sq_GetPkgsByLONoLOPM: TFloatField;
    sq_GetPkgsByLONoPRODUCTNO: TIntegerField;
    sq_GetPkgsByLONoINVENTORY: TStringField;
    sq_GetPkgsByLONoONSTICKS: TIntegerField;
    sq_GetPkgsByLONoPCS_PER_LENGTH: TStringField;
    sq_GetPkgsByLONoOWNER: TStringField;
    sq_GetPkgsByLONoOWNERNO: TIntegerField;
    sq_GetPkgsByLONoLOG_INVENTORY_NO: TIntegerField;
    sq_GetPkgsByLONoBAR_CODE: TStringField;
    sq_GetPkgsByLONoBARCODE_ID: TIntegerField;
    sq_GetPkgsByLONoGRADE_STAMP: TStringField;
    sq_GetPkgsByLONoGRADESTAMPNO: TIntegerField;
    sq_GetPkgsByLONoPKG_HEIGHT: TIntegerField;
    sq_GetPkgsByLONoPKGWIDTH: TIntegerField;
    sq_GetPkgsByLONoMINI_BUNDLE: TIntegerField;
    sq_GetPkgsByLONoSHRINK_WRAP: TIntegerField;
    sq_GetPkgsByLONoWRAP_TYPE: TStringField;
    sq_GetPkgsByLONoWRAPTYPENO: TIntegerField;
    sq_GetPkgsByLONoSUPPLIERNO: TIntegerField;
    sq_GetPkgsByLONoOLD_PACKAGETYPENO: TIntegerField;
    sq_GetPkgsByLONoLoadNo: TIntegerField;
    sq_GetPkgsByLONoSupplierNo_1: TIntegerField;
    sq_GetPkgsByLONoShippingPlanNo: TIntegerField;
    sq_GetPkgsByLONoPackageNo_1: TIntegerField;
    sq_GetPkgsByLONoSupplierCode: TStringField;
    sq_GetPkgsByLONoCustomerNo: TIntegerField;
    sq_GetPkgsByLONoSUPPLIER: TStringField;
    sq_GetPkgsByLONoLOC_CUST: TStringField;
    sq_GetPkgsByLONoObjectType: TIntegerField;
    sq_GetPkgsByLONoAvrop_CustomerNo: TIntegerField;
    sq_GetPkgsByLONoLoadingLocationNo: TIntegerField;
    sq_GetPkgsByLONoShipToInvPointNo: TIntegerField;
    sq_GetPkgsByLONoLOADING_LOCATION: TStringField;
    sq_GetPkgsByLONoSHIP_TO: TStringField;
    sq_GetPkgsByLONoSurfacingNo: TIntegerField;
    sq_OnePkgDetailData: TFDQuery;
    sq_OnePkgDetailDataPRODUCT: TStringField;
    sq_OnePkgDetailDataPACKAGENO: TIntegerField;
    sq_OnePkgDetailDataPACKAGETYPENO: TIntegerField;
    sq_OnePkgDetailDataSUPP_CODE: TStringField;
    sq_OnePkgDetailDataM3_NET: TFloatField;
    sq_OnePkgDetailDataPCS: TIntegerField;
    sq_OnePkgDetailDataM3_NOM: TFloatField;
    sq_OnePkgDetailDataKVM: TFloatField;
    sq_OnePkgDetailDataLOPM: TFloatField;
    sq_OnePkgDetailDataPRODUCTNO: TIntegerField;
    sq_OnePkgDetailDataINVENTORY: TStringField;
    sq_OnePkgDetailDataONSTICKS: TIntegerField;
    sq_OnePkgDetailDataPCS_PER_LENGTH: TStringField;
    sq_OnePkgDetailDataOWNER: TStringField;
    sq_OnePkgDetailDataOWNERNO: TIntegerField;
    sq_OnePkgDetailDataLOG_INVENTORY_NO: TIntegerField;
    sq_OnePkgDetailDataBAR_CODE: TStringField;
    sq_OnePkgDetailDataBARCODE_ID: TIntegerField;
    sq_OnePkgDetailDataGRADE_STAMP: TStringField;
    sq_OnePkgDetailDataGRADESTAMPNO: TIntegerField;
    sq_OnePkgDetailDataPKG_HEIGHT: TIntegerField;
    sq_OnePkgDetailDataPKGWIDTH: TIntegerField;
    sq_OnePkgDetailDataMINI_BUNDLE: TIntegerField;
    sq_OnePkgDetailDataSHRINK_WRAP: TIntegerField;
    sq_OnePkgDetailDataWRAP_TYPE: TStringField;
    sq_OnePkgDetailDataWRAPTYPENO: TIntegerField;
    sq_OnePkgDetailDataSUPPLIERNO: TIntegerField;
    sq_OnePkgDetailDataOLD_PACKAGETYPENO: TIntegerField;
    sq_OnePkgDetailDataSurfacingNo: TIntegerField;
    sq_OneUniquePkg: TFDQuery;
    sq_OneUniquePkgPRODUCT: TStringField;
    sq_OneUniquePkgPACKAGENO: TIntegerField;
    sq_OneUniquePkgPACKAGETYPENO: TIntegerField;
    sq_OneUniquePkgSUPP_CODE: TStringField;
    sq_OneUniquePkgM3_NET: TFloatField;
    sq_OneUniquePkgPCS: TIntegerField;
    sq_OneUniquePkgM3_NOM: TFloatField;
    sq_OneUniquePkgKVM: TFloatField;
    sq_OneUniquePkgLOPM: TFloatField;
    sq_OneUniquePkgPRODUCTNO: TIntegerField;
    sq_OneUniquePkgINVENTORY: TStringField;
    sq_OneUniquePkgONSTICKS: TIntegerField;
    sq_OneUniquePkgPCS_PER_LENGTH: TStringField;
    sq_OneUniquePkgOWNER: TStringField;
    sq_OneUniquePkgOWNERNO: TIntegerField;
    sq_OneUniquePkgLOG_INVENTORY_NO: TIntegerField;
    sq_OneUniquePkgBAR_CODE: TStringField;
    sq_OneUniquePkgBARCODE_ID: TIntegerField;
    sq_OneUniquePkgGRADE_STAMP: TStringField;
    sq_OneUniquePkgGRADESTAMPNO: TIntegerField;
    sq_OneUniquePkgPKG_HEIGHT: TIntegerField;
    sq_OneUniquePkgPKGWIDTH: TIntegerField;
    sq_OneUniquePkgMINI_BUNDLE: TIntegerField;
    sq_OneUniquePkgSHRINK_WRAP: TIntegerField;
    sq_OneUniquePkgWRAP_TYPE: TStringField;
    sq_OneUniquePkgWRAPTYPENO: TIntegerField;
    sq_OneUniquePkgSUPPLIERNO: TIntegerField;
    sq_OneUniquePkgOLD_PACKAGETYPENO: TIntegerField;
    sq_OneUniquePkgPIP: TIntegerField;
    sq_OneUniquePkgStatus: TIntegerField;
    sq_OneUniquePkgSurfacingNo: TIntegerField;
    sq_PkgInLoad: TFDQuery;
    sq_PkgInLoadLastNr: TIntegerField;
    sq_PkgInLoadLO: TIntegerField;
    sq_OnePkg: TFDQuery;
    sq_OnePkgPRODUCT: TStringField;
    sq_OnePkgPACKAGENO: TIntegerField;
    sq_OnePkgPACKAGETYPENO: TIntegerField;
    sq_OnePkgSUPP_CODE: TStringField;
    sq_OnePkgM3_NET: TFloatField;
    sq_OnePkgPCS: TIntegerField;
    sq_OnePkgM3_NOM: TFloatField;
    sq_OnePkgKVM: TFloatField;
    sq_OnePkgLOPM: TFloatField;
    sq_OnePkgPRODUCTNO: TIntegerField;
    sq_OnePkgINVENTORY: TStringField;
    sq_OnePkgONSTICKS: TIntegerField;
    sq_OnePkgPCS_PER_LENGTH: TStringField;
    sq_OnePkgOWNER: TStringField;
    sq_OnePkgOWNERNO: TIntegerField;
    sq_OnePkgLOG_INVENTORY_NO: TIntegerField;
    sq_OnePkgBAR_CODE: TStringField;
    sq_OnePkgBARCODE_ID: TIntegerField;
    sq_OnePkgGRADE_STAMP: TStringField;
    sq_OnePkgGRADESTAMPNO: TIntegerField;
    sq_OnePkgPKG_HEIGHT: TIntegerField;
    sq_OnePkgPKGWIDTH: TIntegerField;
    sq_OnePkgMINI_BUNDLE: TIntegerField;
    sq_OnePkgSHRINK_WRAP: TIntegerField;
    sq_OnePkgWRAP_TYPE: TStringField;
    sq_OnePkgWRAPTYPENO: TIntegerField;
    sq_OnePkgSUPPLIERNO: TIntegerField;
    sq_OnePkgOLD_PACKAGETYPENO: TIntegerField;
    sp_PackageTypes: TFDStoredProc;
    sp_NewPackageType: TFDStoredProc;
    sp_NewPackageDetail: TFDStoredProc;
    sp_ExtMovePkg: TFDStoredProc;
    sp_changePkgInventering: TFDStoredProc;
    sp_MovePkg: TFDStoredProc;
    sp_updateFelReg: TFDStoredProc;
    sp_Del_PkgProd: TFDStoredProc;
    sp_ChangePkg: TFDStoredProc;
    sp_ChgPkgVard: TFDStoredProc;
    sp_StandardLengths: TFDStoredProc;
    sp_ProdLeng: TFDStoredProc;
    sp_PkgInfo: TFDStoredProc;
    sp_PackageTotals: TFDStoredProc;
    sp_NewPackageNo: TFDStoredProc;
    sp_Populate_One_PkgTypeLengths: TFDStoredProc;
    sp_PackageTypeDetail: TFDStoredProc;
    sp_VardaBortPaket: TFDStoredProc;
    sp_RemovePackageFromInventory: TFDStoredProc;
    sp_DeletePackage: TFDStoredProc;
    sp_PaRegPaket: TFDStoredProc;
    sp_AktiveraPktExt: TFDStoredProc;
    sp_OnePackageNo: TFDStoredProc;
    sp_ProdLengProductLengthNo: TIntegerField;
    sp_StandardLengthsProductLengthNo: TIntegerField;
    sp_StandardLengthsActualLengthMM: TFloatField;
    sp_StandardLengthsPET: TIntegerField;
    sp_StandardLengthsFingerJoint: TIntegerField;
    sp_PkgInfoCREATED: TSQLTimeStampField;
    sp_PkgInfoCREATED_BY: TStringField;
    sp_PkgInfoOWNER: TStringField;
    sp_PkgInfoPKG_STATUS: TIntegerField;
    sp_PkgInfoINVENTORY: TStringField;
    mtLoadPackagesALMM: TFloatField;
    sq_OneUniquePkgActualThicknessMM: TFloatField;
    sq_OneUniquePkgActualWidthMM: TFloatField;
    sq_OneUniquePkgNominalThicknessMM: TFloatField;
    sq_OneUniquePkgNominalWidthMM: TFloatField;
    sp_vida_updateProdStat: TFDStoredProc;
    sp_PaRegPaket_II: TFDStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure mtPackagesBeforePost(DataSet: TDataSet);
    procedure mtLoadPackagesAfterInsert(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure mtLoadPackagesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
//   fChangePkgSize: Boolean ;
//   fPkg_Width, fPkg_Height : Integer ;
   procedure PrepareLocalPkgTable (mtUserProp : TkbmMemTable) ;
   function  LengthWHERE_II(const ProductGroupNo : Integer) : String ;
   Procedure InsertProductGroupSpecificLengths(const ProductGroupNo : Integer) ;
   function  Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
   function  PkgExistInLoad : Boolean ;
   function  GetPackageNo(const OwnerNo : Integer;const SupplierCode : String3) : Integer ;
   function  Get_Me_A_PackageNo(const OwnerNo : Integer;const SupplierCode : String3) : Integer ;
   function  PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
   Function  GetLengthsEntered(const ChangeLength : Double) : String ;
   Function  GetNoOfOriginalLengthsInPkg(const ChangeLength : Double) : String ;
  public
    { Public declarations }
    ROWNO : Integer ;
//    RoleType : Integer ;
//    fGradeStampNo, fBarCodeID : Integer ;
//    PcsPerLengthArray : Array[0..300] of Integer ; //to copy no of pcs to new row
//    ActualLengthMMArray : Array[0..300] of Double ;
//    NominalLengthMMArray : Array[0..300] of Double ;

//   fRegistrationPointNo : Integer ;
//    InputOption : Integer ;
    SupplierCode : String3 ;
    SupplierNo : Integer ;
//    InventoryOwnerNo : Integer ;
//    fLogicalInventoryNo: Integer ;
//    ProductLengthNo_For_LPM_Entry : Integer ;
//    InventoryNo : Integer ;

//   GlobalLoadDetailNo : Integer ;
//   fProductNo, fProductGroupNo : Integer ;
   function  AterStallPktTillInventoryEXT (mtUserProp : TkbmMemTable;const LIPNo, OwnerNo : Integer) : Boolean ;
   function  SaveChgPkgVard(mtUserProp : TkbmMemTable) : Boolean ;
   procedure MakeLengthQuery_STD_Lengths (const STD_LengthGroupNo : Integer) ;
   function  DeletePackagesFromSystem (mtUserProp : TkbmMemTable) : Boolean ;
   function  RemovePkgsFromInventory (mtUserProp : TkbmMemTable) : Boolean ;
   function  AterStallPktTillInventory (mtUserProp : TkbmMemTable) : Boolean ;
   procedure SummarizePkg ;
   function  FlyttaPaket(mtUserProp : TkbmMemTable) : Boolean ;
   function  ExtFlyttaPaket(mtUserProp : TkbmMemTable) : Boolean ;
   function  SaveFelRegPkgs(mtUserProp : TkbmMemTable) : Boolean ;

   procedure LoadGroupLengths(const GroupNo : Integer);
   procedure MakeLengthQuery_II (const ProductGroupNo : Integer) ;

   function  AddPkgsByPktType (const RegistrationPointNo : Integer;
        WhenCreated : TDateTime) : Boolean ;

   function  Preparera_mtLoadPackages (SupplierCode : String;OwnerNo_ofPkgNo, LOG_INVENTORY_NO, PackageTypeNo, NoOfPkgs : Integer) : Boolean ;
   function  GetAvailablePkgNos (const OwnerNo, PackageTypeNo, LogicalInventoryPointNo, NoOfPkgs : Integer) : Boolean ;
   function  RemovePkgsFromInventering (const MatPunktAgareNo, RegistrationPointNo : Integer; const WhenCreated : TDateTime) : Boolean ;

   function  IsPkgAvregistrerat (const PackageNo, SupplierNo : Integer; const SupplierCode : String) : String ;
   Procedure GetLIPNoByPackageNo(const SupplierCode : String;Var LIPNo : Integer;const SupplierNo, PackageNo : Integer) ;
   function  VardaBortPaket (mtUserProp : TkbmMemTable) : Boolean ;
  end;

var
  dmPkgs: TdmPkgs;

implementation

uses dmsDataConn, VidaConst, VidaUser, dmsVidaContact, dmsVidaSystem ,
  dm_Inventory, dmsVidaProduct;

{$R *.dfm}

Procedure TdmPkgs.GetLIPNoByPackageNo(const SupplierCode : String;Var LIPNo : Integer;const SupplierNo, PackageNo : Integer) ;
const pkgType = 1 ;
Begin
 cds_PkgStatus.Active:= False ;
// sq_PkgStatus.Close ;
 cds_PkgStatus.ParamByName('PackageNo').AsInteger    := PackageNo ;
 cds_PkgStatus.ParamByName('ClientNo').AsInteger     := SupplierNo ;
// cds_PkgStatus.ParamByName('SupplierNo').AsInteger   := SupplierNo ;
 cds_PkgStatus.ParamByName('SupplierCode').AsString  := SupplierCode ;
 cds_PkgStatus.Active:= True ;
 try
 if not cds_PkgStatus.Eof then
 Begin
  if cds_PkgStatus.RecordCount = 1 then
  Begin
//   SupplierCode := cds_PkgStatusSupplierCode.AsString ;
//   LIPNo:= cds_PkgStatusLIPNo.AsInteger ;
   if cds_PkgStatusInvenType.AsInteger = pkgType then
    LIPNo:= cds_PkgStatusAvReg.AsInteger
     else
      LIPNo := cds_PkgStatusPkgRealLIPNo.AsInteger ;//cds_PkgStatusLIPNo.AsInteger ;
  End
   else
    LIPNo := -1 ;
 End
  else
   LIPNo := -2 ;
 finally
  cds_PkgStatus.Active:= False ;
 end;

End ;

procedure TdmPkgs.DataModuleCreate(Sender: TObject);
begin
 //GlobalLoadDetailNo := 1 ;
 ROWNO:= 1 ;
end;

procedure TdmPkgs.mtPackagesBeforePost(DataSet: TDataSet);
begin
 SummarizePkg ;
end;

procedure TdmPkgs.SummarizePkg ;
var x : Integer ;
begin
  if mtpackages.State <> dsBrowse then
  Begin
//PCS
    mtpackages.Fields[1].AsInteger:= 0 ;

    For x:= 2 to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[1].AsInteger:= mtpackages.Fields[1].AsInteger +
    mtpackages.Fields[x].AsInteger ;

  End ;
end;

//for package entry without LO
procedure TdmPkgs.MakeLengthQuery_II(const ProductGroupNo : Integer) ;
Begin
 sq_ProductLengths.SQL.Clear ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ProductLengthNo, PL.ActualLengthMM, PL.NominalLengthMM, PL.NominalLengthFEET ,');
 sq_ProductLengths.SQL.Add('PL.ActualLengthINCH , PL.PET , PL.FingerJoint');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo');
 sq_ProductLengths.SQL.Add(LengthWHERE_II(ProductGroupNo)) ;
// if ThisUser.UserID = 8 then  sq_ProductLengths.SQL.SaveToFile('sq_ProductLengths.txt');
End ;

 function TdmPkgs.LengthWHERE_II(const ProductGroupNo : Integer) : String ;
 Var  SQL : String ;
 Begin
  SQL:= '' ;
     SQL:= ' WHERE ((PGL.ProductGroupNo = '+IntToStr(ProductGroupNo)+')' ;
     InsertProductGroupSpecificLengths(ProductGroupNo) ;
    SQL:= SQL +') AND PL.ActualLengthMM > 0.5' ;
    SQL:= SQL + ' AND PL.Act = 1' ;
    SQL:= SQL +' ORDER BY PL.ActualLengthMM ' ;
   Result:= SQL ;
 End ;

Procedure TdmPkgs.InsertProductGroupSpecificLengths(const ProductGroupNo : Integer) ;
Begin
 if not mtProdSpecificLengths.FindKey([ProductGroupNo]) then
 Begin
  sp_ProdLeng.Close ;
  sp_ProdLeng.ParamByName('@ProductGroupNo').AsInteger:= ProductGroupNo ;
  sp_ProdLeng.Open ;
  sp_ProdLeng.First ;
  While not sp_ProdLeng.Eof do
  Begin
   mtProdSpecificLengths.Insert ;
   mtProdSpecificLengthsProductGroupNo.AsInteger  := ProductGroupNo ;
   mtProdSpecificLengthsProductLengthNo.AsInteger := sp_ProdLengProductLengthNo.AsInteger ;
   mtProdSpecificLengths.Post ;
   sp_ProdLeng.Next ;
  End ;
  sp_ProdLeng.Close ;
 End ; //with

End ;

procedure TdmPkgs.LoadGroupLengths(const GroupNo : Integer);

begin
  mtStandardLengths.Active:= False ;
  mtStandardLengths.Active:= True ;
  // Populate the list with std lengths applicable to the selected length group
  sp_StandardLengths.Close;
  sp_StandardLengths.ParamByName('@LengthGroupNo').AsInteger := GroupNo;
  sp_StandardLengths.Open;
  sp_StandardLengths.First;
  while not sp_StandardLengths.Eof do
  begin
   mtStandardLengths.Insert ;
   mtStandardLengthsProductLengthNo.AsInteger:= sp_StandardLengthsProductLengthNo.AsInteger ;
   mtStandardLengths.Post ;
   sp_StandardLengths.Next;
  end;
  sp_StandardLengths.Close;
end;



function TdmPkgs.Pkg_Info(const PkgNo: Integer; const SuppCode : String) : String ;
Begin
 sp_PkgInfo.ParamByName('@PackageNo').AsInteger:= PkgNo ;
 sp_PkgInfo.ParamByName('@SupplierCode').AsString:= SuppCode ;
 sp_PkgInfo.Open ;
 Result:= intToStr(PkgNo)+'/'+SuppCode+' It was created by '+
 sp_PkgInfoCREATED_BY.AsString+' at: '+ SQLTimeStampToStr('',sp_PkgInfoCREATED.AsSQLTimeStamp)+
 ' inventory: '+sp_PkgInfoINVENTORY.AsString ;
 sp_PkgInfo.Close ;
End ;

// Update packages with the selections the user has done
procedure TdmPkgs.PrepareLocalPkgTable(mtUserProp : TkbmMemTable) ;
Var TOTALPCS : Integer ;
Begin
 TOTALPCS:= 0 ;
//if no of pieces was entered by user then assign to TOTALPCS
 if mtpackages.State in [dsbrowse] then
  if mtpackages.Fields[1].AsInteger > 0 then
   TOTALPCS := mtpackages.Fields[1].AsInteger ;

   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     mtLoadPackages.Edit ;

     if mtUserProp.fieldByName('VerkNo').AsInteger > 0 then
      mtLoadPackagesOWNERNO.AsInteger     := mtUserProp.fieldByName('VerkNo').AsInteger ;

//     if mtUserProp.fieldByName('LIPNo').AsInteger > 0 then
//      mtLoadPackagesLOG_INVENTORY_NO.AsInteger:= mtUserProp.fieldByName('LIPNo').AsInteger ;

     if mtUserProp.fieldByName('ProductNo').AsInteger > 0 then
     Begin
      mtLoadPackagesProductNo.AsInteger   := mtUserProp.fieldByName('ProductNo').AsInteger ;
      mtLoadPackagesSurfacingNo.AsInteger := mtUserProp.fieldByName('SurfacingNo').AsInteger ;
      mtLoadPackagesNOMTHICK.AsFloat      := mtUserProp.fieldByName('NOMTHICK').AsFloat ;
     End ;

     if TOTALPCS > 0 then
      mtLoadPackagesPCS.AsInteger:= TOTALPCS ;

     if mtUserProp.fieldByName('BarCodeNo').AsInteger > 0 then
      mtLoadPackagesBARCODE_ID.AsInteger := mtUserProp.fieldByName('BarCodeNo').AsInteger ;

     if mtUserProp.fieldByName('GradeStampNo').AsInteger > 0 then
      mtLoadPackagesGRADESTAMPNO.AsInteger := mtUserProp.fieldByName('GradeStampNo').AsInteger ;

     if (mtUserProp.fieldByName('LIPChange').AsInteger = 1) and
      (mtUserProp.fieldByName('LIPNo').AsInteger > 0) then
      mtLoadPackagesLOG_INVENTORY_NO.AsInteger := mtUserProp.fieldByName('LIPNo').AsInteger ;


     mtLoadPackages.Post ;
     mtLoadPackages.Next ;
    End ; //While
End ;

function TdmPkgs.DeletePackagesFromSystem (mtUserProp : TkbmMemTable) : Boolean ;
Var
  Save_Cursor  : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Result:= False ;
Try
  dmsConnector.StartTransaction;
  try
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
      Try
      sp_DeletePackage.Close ;
      sp_DeletePackage.ParamByName('@PackageNo').AsInteger               := mtLoadPackagesPACKAGENO.AsInteger ;
      sp_DeletePackage.ParamByName('@SupplierCode').AsString             := mtLoadPackagesSUPP_CODE.AsString ;
      sp_DeletePackage.ParamByName('@RegistrationPointNo').AsInteger     := mtUserProp.FieldByName('RegPointNo').AsInteger ;
      sp_DeletePackage.ParamByName('@PackageTypeNo').AsInteger           := mtLoadPackagesPACKAGETYPENO.AsInteger ;
      sp_DeletePackage.ParamByName('@LogicalInventoryPointNo').AsInteger := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_DeletePackage.ParamByName('@UserID').AsInteger                  := ThisUser.UserID ;

      if PkgExistInLoad = False then
       sp_DeletePackage.ExecProc
        else
         ShowMessage('Kan ej ta bort paketnr ' + mtLoadPackagesPACKAGENO.AsString + ', det är upptaget i en leverans.') ;
     mtLoadPackages.Next ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_DeletePackage.ExecProc') ;
      Raise ;
     End ;
    end;
    end; //While...

    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function TdmPkgs.RemovePkgsFromInventory (mtUserProp : TkbmMemTable) : Boolean ;
Var
  Save_Cursor   : TCursor;
  LIPNo         : Integer ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Result         := False ;
 Try
 mtLoadPackages.DisableControls ;

 Try
//  if dmsConnector.FDConnection1.InTransaction then
//   dmsConnector.FDConnection1.Rollback ;

//  dmsConnector.StartTransaction;
  try
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     //LIPNo är en variabel som hämtar in värdet
      GetLIPNoByPackageNo(mtLoadPackagesSUPP_CODE.AsString, LIPNo, mtLoadPackagesSupplierNo.AsInteger,  mtLoadPackagesPACKAGENO.AsInteger) ;
      mtLoadPackages.Edit ;
      mtLoadPackagesLOG_INVENTORY_NO.AsInteger:= LIPNo ;
      mtLoadPackages.Post ;
      if LIPNo > 0 then
      Begin
       Try
       sp_RemovePackageFromInventory.Close ;
       sp_RemovePackageFromInventory.ParamByName('@PackageNo').AsInteger                := mtLoadPackagesPACKAGENO.AsInteger ;
       sp_RemovePackageFromInventory.ParamByName('@SupplierCode').AsString              := mtLoadPackagesSUPP_CODE.AsString ;
       sp_RemovePackageFromInventory.ParamByName('@RegistrationPointNo').AsInteger      := mtUserProp.FieldByName('RegPointNo').AsInteger ;
//       sp_RemovePackageFromInventory.ParamByName('PackageTypeNo').AsInteger            := mtLoadPackagesPACKAGETYPENO.AsInteger ;
       sp_RemovePackageFromInventory.ParamByName('@UserID').AsInteger                   := ThisUser.UserID ;
//       sp_RemovePackageFromInventory.ParamByName('SupplierNo').AsInteger               := mtLoadPackagesSupplierNo.AsInteger ;
       sp_RemovePackageFromInventory.ParamByName('@DateCreated').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
       sp_RemovePackageFromInventory.ParamByName('@MatPunktAgareNo').AsInteger          := mtUserProp.FieldByName('ProducerNo').AsInteger ;
       sp_RemovePackageFromInventory.ParamByName('@RunNo').AsInteger                    := mtUserProp.FieldByName('RunNo').AsInteger ;
       sp_RemovePackageFromInventory.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
       sp_RemovePackageFromInventory.ParamByName('@SkiftLagNo').AsInteger               := mtUserProp.FieldByName('GroupByBox').AsInteger ;
       sp_RemovePackageFromInventory.ExecProc ;
      except
       On E: Exception do
       Begin
        dmsSystem.FDoLog(E.Message+' :sp_RemovePackageFromInventory.ExecProc') ;
        Raise ;
       End ;
      end;
      End
       else
        ShowMessage('Paketnr '+ mtLoadPackagesPACKAGENO.AsString +' har avregistrerats tidigare...') ;
     mtLoadPackages.Next ;
    end; //While...

//    dmsConnector.Commit ;
    Result:= True ;
  except
//    dmsConnector.Rollback ;
    Result:= False ;
  end;



 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 Finally
  mtLoadPackages.EnableControls ;
 End ;
end;

function TdmPkgs.AterStallPktTillInventory (mtUserProp : TkbmMemTable) : Boolean ;
Var
  Save_Cursor   : TCursor;
//  LIPNo         : Integer ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Result         := False ;
 Try
  dmsConnector.StartTransaction;
  try
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
    //if VolumeUnitNo = 1 then Ta bort paketet från avreg.statistiken
     if mtUserProp.FieldByName('VolumeUnitNo').AsInteger = 1 then
     Begin

      Try
       sp_PaRegPaket_II.Close ;
       sp_PaRegPaket_II.ParamByName('@PackageNo').AsInteger                := mtLoadPackagesPACKAGENO.AsInteger ;
       sp_PaRegPaket_II.ParamByName('@SupplierCode').AsString              := mtLoadPackagesSUPP_CODE.AsString ;
       sp_PaRegPaket_II.ParamByName('@RegistrationPointNo').AsInteger      := 2 ;//2 = Lagervård //mtUserProp.FieldByName('RegPointNo').AsInteger ;
       sp_PaRegPaket_II.ParamByName('@PackageTypeNo').AsInteger            := mtLoadPackagesPACKAGETYPENO.AsInteger ;
       sp_PaRegPaket_II.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
       sp_PaRegPaket_II.ParamByName('@UserID').AsInteger                   := ThisUser.UserID ;
//       sp_PaRegPaket_II.ParamByName('SupplierNo').AsInteger               := mtLoadPackagesSupplierNo.AsInteger ;
       sp_PaRegPaket_II.ParamByName('@DateCreated').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
       sp_PaRegPaket_II.ParamByName('@MatPunktAgareNo').AsInteger          := mtLoadPackagesOWNERNO.AsInteger ;// mtUserProp.FieldByName('ProducerNo').AsInteger ;
//       sp_PaRegPaket_II.ParamByName('RunNo').AsInteger                    := mtUserProp.FieldByName('RunNo').AsInteger ;

       sp_PaRegPaket_II.ExecProc ;
      except
       On E: Exception do
       Begin
        dmsSystem.FDoLog(E.Message+' :sp_PaRegPaket_II.ExecProc') ;
        Raise ;
       End ;
      end;

     End
     else
     Begin


      Try
       sp_PaRegPaket.Close ;
       sp_PaRegPaket.ParamByName('@PackageNo').AsInteger                := mtLoadPackagesPACKAGENO.AsInteger ;
       sp_PaRegPaket.ParamByName('@SupplierCode').AsString              := mtLoadPackagesSUPP_CODE.AsString ;
       sp_PaRegPaket.ParamByName('@RegistrationPointNo').AsInteger      := 2 ;//2 = Lagervård //mtUserProp.FieldByName('RegPointNo').AsInteger ;
       sp_PaRegPaket.ParamByName('@PackageTypeNo').AsInteger            := mtLoadPackagesPACKAGETYPENO.AsInteger ;
       sp_PaRegPaket.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
       sp_PaRegPaket.ParamByName('@UserID').AsInteger                   := ThisUser.UserID ;
//       sp_PaRegPaket.ParamByName('SupplierNo').AsInteger               := mtLoadPackagesSupplierNo.AsInteger ;
       sp_PaRegPaket.ParamByName('@DateCreated').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
       sp_PaRegPaket.ParamByName('@MatPunktAgareNo').AsInteger          := mtLoadPackagesOWNERNO.AsInteger ;// mtUserProp.FieldByName('ProducerNo').AsInteger ;
//       sp_PaRegPaket.ParamByName('RunNo').AsInteger                    := mtUserProp.FieldByName('RunNo').AsInteger ;

       sp_PaRegPaket.ExecProc ;
      except
       On E: Exception do
       Begin
        dmsSystem.FDoLog(E.Message+' :sp_PaRegPaket.ExecProc') ;
        Raise ;
       End ;
      end;
     End;

     mtLoadPackages.Next ;
    end; //While...

    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function TdmPkgs.VardaBortPaket (mtUserProp : TkbmMemTable) : Boolean ;
Var
  Save_Cursor   : TCursor;
//  LIPNo         : Integer ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Result         := False ;
 mtLoadPackages.DisableControls ;
 Try
  dmsConnector.StartTransaction;
  try
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     Try
       sp_VardaBortPaket.Close ;
       sp_VardaBortPaket.ParamByName('@PackageNo').AsInteger                := mtLoadPackagesPACKAGENO.AsInteger ;
       sp_VardaBortPaket.ParamByName('@SupplierCode').AsString              := mtLoadPackagesSUPP_CODE.AsString ;
       sp_VardaBortPaket.ParamByName('@RegistrationPointNo').AsInteger      := 2 ;//2 = Lagervård //mtUserProp.FieldByName('RegPointNo').AsInteger ;
       sp_VardaBortPaket.ParamByName('@PackageTypeNo').AsInteger            := mtLoadPackagesPACKAGETYPENO.AsInteger ;
       sp_VardaBortPaket.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
       sp_VardaBortPaket.ParamByName('@UserID').AsInteger                   := ThisUser.UserID ;
//       sp_VardaBortPaket.ParamByName('SupplierNo').AsInteger               := mtLoadPackagesSupplierNo.AsInteger ;
       sp_VardaBortPaket.ParamByName('@DateCreated').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
       sp_VardaBortPaket.ParamByName('@MatPunktAgareNo').AsInteger          := mtLoadPackagesOWNERNO.AsInteger ;// mtUserProp.FieldByName('ProducerNo').AsInteger ;
//       sp_VardaBortPaket.ParamByName('RunNo').AsInteger                    := mtUserProp.FieldByName('RunNo').AsInteger ;

       sp_VardaBortPaket.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_VardaBortPaket.ExecProc') ;
      Raise ;
     End ;
    end;
     mtLoadPackages.Next ;
    end; //While...

    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;
 Finally
  mtLoadPackages.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TdmPkgs.mtLoadPackagesAfterInsert(DataSet: TDataSet);
begin
 mtLoadPackagesROWNO.AsInteger  := ROWNO ;
 mtLoadPackagesStatus.AsInteger := 0 ;
 ROWNO                          := SUCC(ROWNO) ;
 mtLoadPackagesInvNr.AsInteger  := 0 ;    
end;

function TdmPkgs.SaveChgPkgVard(mtUserProp : TkbmMemTable) : Boolean ;
Var
  Save_Cursor : TCursor;
  PackagetypeNo   : Integer ;

  procedure SavePkgType ;
//  Var
//     iDtls : Integer ;

    function SelectMatchingPkgTypeHdrs : Integer;
    begin
      // First get all package type (header) records that match
      sp_PackageTypes.ParamByName('@ProductNo'    ).AsInteger := mtLoadPackagesPRODUCTNO.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger < 1 then
      sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNo.AsInteger < 1 then
      sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;
      sp_PackageTypes.ParamByName('@TotalPieces'  ).AsInteger := mtLoadPackagesPCS.AsInteger ;

      if (mtpackages.Active) AND (mtpackages.Fields[1].AsInteger > 0) then
       sp_PackageTypes.ParamByName('@PcsPerLength'  ).AsString := GetLengthsEntered(mtUserProp.FieldByName('ALMM').AsFloat)
      else
       sp_PackageTypes.ParamByName('@PcsPerLength'  ).AsString := GetNoOfOriginalLengthsInPkg (mtUserProp.FieldByName('ALMM').AsFloat) ;


      sp_PackageTypes.Open;
      try
//        sp_PackageTypes.First;
        if not sp_PackageTypes.Eof then begin
          Result := sp_PackageTypes.FieldByName('PackageTypeNo').AsInteger ;
//          sp_PackageTypes.Next;
        end
         else
          Result:= -1 ;

      finally
        sp_PackageTypes.Close;
        end;

    end;


    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
//    var
//      iDtl : Integer;
    begin
      PackageTypeNo := dmsConnector.NextMaxNo('PackageType');

      Try
      sp_NewPackageType.Close ;
      sp_NewPackageType.ParamByName('@PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageType.ParamByName('@ProductNo'       ).AsInteger := mtLoadPackagesPRODUCTNO.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger < 1 then
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNO.AsInteger < 1 then
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;
      sp_NewPackageType.ParamByName('@TotalNoOfPieces' ).AsInteger := mtLoadPackagesPCS.AsInteger ;
      sp_NewPackageType.ParamByName('@UserID').AsInteger := ThisUser.UserID;
//      sp_NewPackageType.ParamByName('ProdInstruNo').AsInteger := -1 ;
      sp_NewPackageType.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_NewPackageType.ExecProc') ;
      Raise ;
     End ;
    end;

//************** Now add the PackageTypeDetail records. ********************
      mtPcsPerLength.First ;
      While not mtPcsPerLength.Eof do
      Begin
       Try
        sp_NewPackageDetail.ParamByName('@PackageTypeNo'  ).AsInteger  := PackageTypeNo;
        sp_NewPackageDetail.ParamByName('@ProductLengthNo').AsInteger  := mtPcsPerLengthProductLengthNo.AsInteger ;
        sp_NewPackageDetail.ParamByName('@NoOfPieces'     ).AsInteger  := mtPcsPerLengthNoOfPieces.AsInteger ;
        sp_NewPackageDetail.ParamByName('@UserID'         ).AsInteger  := ThisUser.UserID;
        sp_NewPackageDetail.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_NewPackageDetail.ExecProc') ;
      Raise ;
     End ;
    end;
        mtPcsPerLength.Next ;
      End ;
    end;

    procedure  SavePackageTypeLengths ;
    Begin
     Try
      sp_Populate_One_PkgTypeLengths.Close ;
      sp_Populate_One_PkgTypeLengths.ParamByName('@SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
      sp_Populate_One_PkgTypeLengths.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_Populate_One_PkgTypeLengths.ExecProc') ;
      Raise ;
     End ;
    end;
      sp_Populate_One_PkgTypeLengths.Close ;
    End ;

  procedure SavePkgTotals( PackageTypeNo : Integer );
  begin
   Try
    sp_PackageTotals.ParamByName('@PkgNo').AsInteger := PackageTypeNo;
    sp_PackageTotals.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_PackageTotals.ExecProc') ;
      Raise ;
     End ;
    end;
    sp_PackageTotals.Close;
  end;


  begin
      PackageTypeNo:= SelectMatchingPkgTypeHdrs ;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths ;
        //Om längdgrupper ändras justeras pakettypskolumner där, här läggs pakettypen upp för de längdgrupper som finns för tillfället
        dmsSystem.AddPkgTypeColumns(PackageTypeNo);
       End ;
  end;


  procedure AndraPaket ;
  begin
    Try
    sp_ChgPkgVard.ParamByName('@PackageNo'              ).AsInteger       := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_ChgPkgVard.ParamByName('@PackageTypeNo'          ).AsInteger       := PackageTypeNo;
    sp_ChgPkgVard.ParamByName('@SupplierCode'           ).AsString        := mtLoadPackagesSUPP_CODE.AsString;
    sp_ChgPkgVard.ParamByName('@LogicalInventoryPointNo').AsInteger       := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_ChgPkgVard.ParamByName('@UserID'                 ).AsInteger       := ThisUser.UserID;
    sp_ChgPkgVard.ParamByName('@RegistrationPointNo'    ).AsInteger       := 2 ; //2 = Lagevård. mtUserProp.FieldByName('RegPointNo').AsInteger ;
    sp_ChgPkgVard.ParamByName('@OLD_PackageTypeNo'      ).AsInteger       := mtLoadPackagesPACKAGETYPENO.AsInteger; //this is the old pkgtype
    sp_ChgPkgVard.ParamByName('@DateCreated'            ).AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;// DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
    sp_ChgPkgVard.ParamByName('@Package_Size'           ).AsInteger       := mtUserProp.FieldByName('NewItemRow').AsInteger ;


    sp_ChgPkgVard.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_ChgPkgVard.ExecProc') ;
      Raise ;
     End ;
    end;
  end;


//Main SaveChgPkgVard
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
// Update packages with the selections the user has done
 PrepareLocalPkgTable(mtUserProp) ;

Try
  Result:= False ;
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     dmsConnector.StartTransaction;
     try
      mtPcsPerLength.Active:= False ;
      mtPcsPerLength.Active:= True ;
      SavePkgType ;
      Try
      AndraPaket ;
      except
       ShowMessage ('Could not save Package no '+Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
       Result:= False ;
       Raise ;
      End ;

    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;
   mtLoadPackages.Next ;
   PackageTypeNo:= -1 ;
 end;


 Finally
  mtPcsPerLength.Active:= False ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function TdmPkgs.SaveFelRegPkgs(mtUserProp : TkbmMemTable) : Boolean ;
Var
  Save_Cursor : TCursor;
  PackagetypeNo   : Integer ;

  procedure SavePkgType ;
//  Var
//     iDtls : Integer ;

    function SelectMatchingPkgTypeHdrs : Integer;
    begin
      // First get all package type (header) records that match
      sp_PackageTypes.ParamByName('@ProductNo'    ).AsInteger := mtLoadPackagesPRODUCTNO.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger < 1 then
      sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNo.AsInteger < 1 then
      sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;
      sp_PackageTypes.ParamByName('@TotalPieces'  ).AsInteger := mtLoadPackagesPCS.AsInteger ;

      if (mtpackages.Active) AND (mtpackages.Fields[1].AsInteger > 0) then
       sp_PackageTypes.ParamByName('@PcsPerLength'  ).AsString := GetLengthsEntered(mtUserProp.FieldByName('ALMM').AsFloat)
      else
       sp_PackageTypes.ParamByName('@PcsPerLength'  ).AsString := GetNoOfOriginalLengthsInPkg (mtUserProp.FieldByName('ALMM').AsFloat) ;

      sp_PackageTypes.Open;
      try
//        sp_PackageTypes.First;
        if not sp_PackageTypes.Eof then begin
          Result := sp_PackageTypes.FieldByName('PackageTypeNo').AsInteger ;
//          sp_PackageTypes.Next;
        end
         else
          Result:= -1 ;

      finally
        sp_PackageTypes.Close;
        end;

    end;



    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
//    var
//      iDtl : Integer;
    begin
      PackageTypeNo := dmsConnector.NextMaxNo('PackageType');

      Try
      sp_NewPackageType.Close ;
      sp_NewPackageType.ParamByName('@PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageType.ParamByName('@ProductNo'       ).AsInteger := mtLoadPackagesPRODUCTNO.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger < 1 then
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNO.AsInteger < 1 then
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;
      sp_NewPackageType.ParamByName('@TotalNoOfPieces' ).AsInteger := mtLoadPackagesPCS.AsInteger ;
      sp_NewPackageType.ParamByName('@UserID').AsInteger := ThisUser.UserID;
      sp_NewPackageType.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_NewPackageType.ExecProc') ;
      Raise ;
     End ;
    end;

//************** Now add the PackageTypeDetail records. ********************
      mtPcsPerLength.First ;
      While not mtPcsPerLength.Eof do
      Begin
       Try
        sp_NewPackageDetail.ParamByName('@PackageTypeNo'  ).AsInteger  := PackageTypeNo;
        sp_NewPackageDetail.ParamByName('@ProductLengthNo').AsInteger  := mtPcsPerLengthProductLengthNo.AsInteger ;
        sp_NewPackageDetail.ParamByName('@NoOfPieces'     ).AsInteger  := mtPcsPerLengthNoOfPieces.AsInteger ;
        sp_NewPackageDetail.ParamByName('@UserID'         ).AsInteger  := ThisUser.UserID;
        sp_NewPackageDetail.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_NewPackageDetail.ExecProc') ;
      Raise ;
     End ;
    end;

        mtPcsPerLength.Next ;
      End ;

    end;

    procedure  SavePackageTypeLengths ;
    Begin
     Try
      sp_Populate_One_PkgTypeLengths.Close ;
      sp_Populate_One_PkgTypeLengths.ParamByName('@SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
      sp_Populate_One_PkgTypeLengths.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_Populate_One_PkgTypeLengths.ExecProc') ;
      Raise ;
     End ;
    end;
      sp_Populate_One_PkgTypeLengths.Close ;
    End ;

  procedure SavePkgTotals( PackageTypeNo : Integer );
  begin
   Try
    sp_PackageTotals.ParamByName('@PkgNo').AsInteger := PackageTypeNo;
    sp_PackageTotals.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_PackageTotals.ExecProc') ;
      Raise ;
     End ;
    end;
    sp_PackageTotals.Close;
  end;


  begin
      PackageTypeNo:= SelectMatchingPkgTypeHdrs ;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths ;
        //Om längdgrupper ändras justeras pakettypskolumner där, här läggs pakettypen upp för de längdgrupper som finns för tillfället
        dmsSystem.AddPkgTypeColumns(PackageTypeNo);
       End ;
  end;


  procedure UpdatePackage ;
  begin
   Try
    sp_updateFelReg.ParamByName('@PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_updateFelReg.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_updateFelReg.ParamByName('@SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_updateFelReg.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_updateFelReg.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_updateFelReg.ParamByName('@RegistrationPointNo'    ).AsInteger  := mtUserProp.FieldByName('RegPointNo').AsInteger ;
    sp_updateFelReg.ParamByName('@OLD_PackageTypeNo'      ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger; //this is the old pkgtype
    sp_updateFelReg.ParamByName('@SupplierNo'             ).AsInteger  := mtUserProp.FieldByName('OwnerNo').AsInteger ;
    sp_updateFelReg.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
    sp_updateFelReg.ParamByName('@MatPunktAgareNo'        ).AsInteger  := mtUserProp.FieldByName('ProducerNo').AsInteger ;
    sp_updateFelReg.ParamByName('@RunNo'                  ).AsInteger  := mtUserProp.FieldByName('RunNo').AsInteger ;
    sp_updateFelReg.ParamByName('@Package_Size'           ).AsInteger  := mtUserProp.FieldByName('NewItemRow').AsInteger ;
    sp_updateFelReg.ParamByName('@SkiftLagNo'             ).AsInteger  := mtUserProp.FieldByName('GroupByBox').AsInteger ;


    sp_updateFelReg.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_updateFelReg.ExecProc') ;
      Raise ;
     End ;
    end;
  end;

  {

  procedure UpdatePackageLog ;
  begin
   with dmsProduct do
   Begin
   Try
    sp_vis_InsPnLog.ParamByName('@PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_vis_InsPnLog.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_vis_InsPnLog.ParamByName('@SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_vis_InsPnLog.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_vis_InsPnLog.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_vis_InsPnLog.ParamByName('@RegistrationPointNo'    ).AsInteger  := mtUserProp.FieldByName('RegPointNo').AsInteger ;
    sp_vis_InsPnLog.ParamByName('@OLD_PackageTypeNo'      ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger; //this is the old pkgtype
    sp_vis_InsPnLog.ParamByName('@SupplierNo'             ).AsInteger  := mtUserProp.FieldByName('OwnerNo').AsInteger ;
    sp_vis_InsPnLog.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
    sp_vis_InsPnLog.ParamByName('@MatPunktAgareNo'        ).AsInteger  := mtUserProp.FieldByName('ProducerNo').AsInteger ;
    sp_vis_InsPnLog.ParamByName('@RunNo'                  ).AsInteger  := mtUserProp.FieldByName('RunNo').AsInteger ;

    sp_vis_InsPnLog.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_vis_InsPnLog.ExecProc') ;
      Raise ;
     End ;
    end;
   End;
  end;    }

  procedure UpdateProdStat ;
  begin
   Try
    sp_vida_updateProdStat.ParamByName('@PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_vida_updateProdStat.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_vida_updateProdStat.ParamByName('@SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_vida_updateProdStat.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_vida_updateProdStat.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;


    if mtUserProp.FieldByName('VolumeUnitNo').AsInteger = 1 then
    sp_vida_updateProdStat.ParamByName('@RegistrationPointNo'    ).AsInteger  := mtUserProp.FieldByName('RegPointNo').AsInteger
    else
    sp_vida_updateProdStat.ParamByName('@RegistrationPointNo'    ).Clear(-1);


    sp_vida_updateProdStat.ParamByName('@SupplierNo'             ).AsInteger  := mtUserProp.FieldByName('OwnerNo').AsInteger ;


    if mtUserProp.FieldByName('LengthFormatNo').AsInteger = 1 then
    sp_vida_updateProdStat.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime)
    else
    sp_vida_updateProdStat.ParamByName('@DateCreated'            ).AsSQLTimeStamp ;

    if mtUserProp.FieldByName('AgentNo').AsInteger = 1 then
    sp_vida_updateProdStat.ParamByName('@ShiftNo'        ).AsInteger  := mtUserProp.FieldByName('GroupByBox').AsInteger
    else
    sp_vida_updateProdStat.ParamByName('@ShiftNo'        ).Clear(-1) ;


    sp_vida_updateProdStat.ParamByName('@RunNo'          ).AsInteger  := mtUserProp.FieldByName('RunNo').AsInteger ;

    sp_vida_updateProdStat.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_vida_updateProdStat.ExecProc') ;
      Raise ;
     End ;
    end;
  end;


//Main SaveFelRegPkgs
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
// Update packages with the selections the user has done
 PrepareLocalPkgTable(mtUserProp) ;

Try
  Result:= False ;
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     dmsConnector.StartTransaction;
     try
      mtPcsPerLength.Active:= False ;
      mtPcsPerLength.Active:= True ;
      SavePkgType ;

      Try
      UpdatePackage ;
{      if (mtUserProp.FieldByName('VolumeUnitNo').AsInteger = 1)
      or (mtUserProp.FieldByName('AgentNo').AsInteger = 1)
      or (mtUserProp.FieldByName('LengthFormatNo').AsInteger = 1) then }
      if (mtUserProp.FieldByName('GroupSummary').AsInteger = 1) then
      UpdateProdStat ;
      except
       ShowMessage ('Could not save Package no '+Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
       Result:= False ;
       Raise ;
      End ;

    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;
   mtLoadPackages.Next ;
   PackageTypeNo:= -1 ;
 end;

 Finally
  mtPcsPerLength.Active := False ;
  Screen.Cursor         := Save_Cursor;  { Always restore to normal }
 End ;
end;

function TdmPkgs.FlyttaPaket(mtUserProp : TkbmMemTable) : Boolean ;
Var
  Save_Cursor:TCursor;

  procedure MovePackage ;
  begin
   Try
    sp_MovePkg.ParamByName('@PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_MovePkg.ParamByName('@PackageTypeNo'          ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger ;
    sp_MovePkg.ParamByName('@SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_MovePkg.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtUserProp.FieldByName('LIPNo').AsInteger ;
    sp_MovePkg.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_MovePkg.ParamByName('@RegistrationPointNo'    ).AsInteger  := mtUserProp.FieldByName('RegPointNo').AsInteger ;
    sp_MovePkg.ParamByName('@OLD_PackageTypeNo'      ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger ;
    sp_MovePkg.ParamByName('@SupplierNo'             ).AsInteger  := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_MovePkg.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
    sp_MovePkg.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_MovePkg.ExecProc') ;
      Raise ;
     End ;
    end;
  end;


//Main FlyttaPaket
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 Result:= False ;
 mtLoadPackages.First ;
 While not mtLoadPackages.Eof do
 Begin
   dmsConnector.StartTransaction;
  try
    Try
     MovePackage ;
    except
     ShowMessage ('Kan inte flytta paketnr ' + Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
     Result:= False ;
     Raise ;
    End ;

   dmsConnector.Commit ;
   Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;

  mtLoadPackages.Next ;
 end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end; //end proc

function TdmPkgs.PkgExistInLoad : Boolean ;
Begin
 sq_PkgInLoad.ParamByName('PackageNo').AsInteger:= mtLoadPackagesPACKAGENO.AsInteger ;
 sq_PkgInLoad.ParamByName('SupplierCode').AsString:= mtLoadPackagesSUPP_CODE.AsString ;
 sq_PkgInLoad.Open ;
 if not sq_PkgInLoad.Eof then
 Begin
  mtLoadPackages.Edit ;
  mtLoadPackagesStatus.AsInteger    := 1 ;
  mtLoadPackagesStatusText.AsString := 'Pkt finns upptaget i lastnr ' + sq_PkgInLoadLastNr.AsString + ' LO: ' + sq_PkgInLoadLO.AsString ;
  mtLoadPackages.Post ;
  Result:= True ;
 End
  else
   Result:= False ;
 sq_PkgInLoad.Close ;
End ;


function TdmPkgs.AddPkgsByPktType (const RegistrationPointNo : Integer;
WhenCreated : TDateTime) : Boolean ;
Var
  Save_Cursor:TCursor;
//  TransactionNo : LongWord;


 (*
  procedure SavePackage ;
  begin
    Try
    sp_NewPackageNo.ParamByName('@PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_NewPackageNo.ParamByName('@PackageTypeNo'          ).AsInteger  := mtLoadPackagesPackageTypeNo.AsInteger;
    sp_NewPackageNo.ParamByName('@SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString ;
    sp_NewPackageNo.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_NewPackageNo.ParamByName('@SupplierNo'             ).AsInteger  := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_NewPackageNo.ParamByName('@RegistrationPointNo'    ).AsInteger  := RegistrationPointNo ;
    sp_NewPackageNo.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_NewPackageNo.ParamByName('@CreatedOfPkgStr'        ).AsInteger  := 0 ; // 0 = Manual entry
    sp_NewPackageNo.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(WhenCreated) ;

    sp_NewPackageNo.ParamByName('@OwnerNo'                ).AsInteger  := mtLoadPackagesOWNERNO.AsInteger ;
    sp_NewPackageNo.ParamByName('@ProducerNo'             ).AsInteger  := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_NewPackageNo.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_NewPackageNo.ExecProc') ;
      Raise ;
     End ;
    end;
  end;

  *)
//Main AddPkgsByPktType
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
// Update packages with the selections the user has done
// PrepareLocalPkgTable ;

Try
  Result:= True ;
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
      Try
     // SavePackage
      except
       ShowMessage ('Could not save Package no '+Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
       Result:= False ;
       Raise ;
      End ;
     mtLoadPackages.Next ;
  end;
 Finally
 End ;
end;

function TdmPkgs.Preparera_mtLoadPackages (SupplierCode : String;OwnerNo_ofPkgNo, LOG_INVENTORY_NO, PackageTypeNo, NoOfPkgs : Integer) : Boolean ;
Var x : Integer ;
Begin
 For x := 0 to NoOfPkgs-1 do
 Begin
  Try
  mtLoadPackages.Insert ;
  mtLoadPackagesPackageTypeNo.AsInteger     := PackageTypeNo ;
  mtLoadPackagesPACKAGENO.AsInteger         := Get_Me_A_PackageNo (OwnerNo_ofPkgNo,SupplierCode) ;
  mtLoadPackagesSUPP_CODE.AsString          := SupplierCode ;
  mtLoadPackagesLOG_INVENTORY_NO.AsInteger  := LOG_INVENTORY_NO ;
  mtLoadPackagesOWNERNO.AsInteger           := OwnerNo_ofPkgNo ;
  mtLoadPackagesSUPPLIERNO.AsInteger        := OwnerNo_ofPkgNo ;
  if mtLoadPackagesPACKAGENO.AsInteger = 0 then
  Begin
   mtLoadPackages.Cancel ;
   Result:= False ;
   Exit ;
  End ;
  Result:= True ;
  mtLoadPackages.Post ;

  Except
   on eDatabaseError do
   Begin
    Result:= False ;
    Raise ;
    mtpackages.Cancel ;
   End ;
  End ;
 End ;

End ;

function TdmPkgs.Get_Me_A_PackageNo(const OwnerNo : Integer;const SupplierCode : String3) : Integer ;
Var x : Integer ;
Begin
 x := 1 ;
 Result:= 0 ;
 While (Result = 0) and (x < 9000000) do
 Begin
  Result:= GetPackageNo (OwnerNo,SupplierCode) ;
  x := succ(x) ;
 End ;
End ;

function TdmPkgs.GetPackageNo(const OwnerNo : Integer;const SupplierCode : String3) : Integer ;
Var     //StartPkgNo : Integer ;
        NoOfErrorPkgnr : Integer;
        Res_UserName : String ;
begin
 NoOfErrorPkgnr:= 0 ;
 Result:= 0 ;
// Try
  Result:= dmsConnector.GetCurrentPkgNo(OwnerNo, 1) ;
  if Result > 0 then
  Begin
   if PackageNumberExists(Result, SupplierCode) = False then
    Begin
     if dmsSystem.Pkg_Reserved(Result, SupplierCode, Self.Name, Res_UserName ) = ThisUser.UserName+'/'+Self.Name then
      Begin
      End //if dmsSystem.Pkg_Reserved(
      else
       Begin
        NoOfErrorPkgnr:= succ(NoOfErrorPkgnr) ;
        Result:= 0 ;
       End ;
    End //if..
     else
      Begin
        NoOfErrorPkgnr:= succ(NoOfErrorPkgnr) ;
        Result:= 0 ;
      End ;

    End ; //if StartPkgNo > 0 then
End ;

function TdmPkgs.PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
begin
  sp_OnePackageNo.Close;
  sp_OnePackageNo.ParamByName('@PackageNo').AsInteger     := PkgNo;
  sp_OnePackageNo.ParamByName('@SupplierCode').AsString   := Trim(SupplierCode);
  sp_OnePackageNo.Open;
  sp_OnePackageNo.First;
  Result := not sp_OnePackageNo.eof;
  sp_OnePackageNo.Close;
end;

function TdmPkgs.GetAvailablePkgNos (const OwnerNo, PackageTypeNo, LogicalInventoryPointNo, NoOfPkgs : Integer) : Boolean ;
Var x : Integer ;
Begin
 x := 0 ;
 Try
 sq_PkgNoAvail.ParamByName('PackageTypeNo').AsInteger:= PackageTypeNo ;
 sq_PkgNoAvail.ParamByName('LogicalInventoryPointNo').AsInteger:= LogicalInventoryPointNo ;
 sq_PkgNoAvail.Open ;
 While (not sq_PkgNoAvail.Eof) and (x<NoOfPkgs) do
 Begin
  Try
  mtLoadPackages.Insert ;
  mtLoadPackagesPackageTypeNo.AsInteger     := PackageTypeNo ;
  mtLoadPackagesPACKAGENO.AsInteger         := sq_PkgNoAvailPackageNo.AsInteger ;
  mtLoadPackagesSUPP_CODE.AsString          := sq_PkgNoAvailSupplierCode.AsString ;
  mtLoadPackagesLOG_INVENTORY_NO.AsInteger  := LogicalInventoryPointNo ;
  mtLoadPackagesOWNERNO.AsInteger           := OwnerNo ;
  mtLoadPackagesOWNERNO.AsInteger           := OwnerNo ;
  mtLoadPackagesOWNERNO.AsInteger           := OwnerNo ;
  if mtLoadPackagesPACKAGENO.AsInteger = 0 then
  Begin
   mtLoadPackages.Cancel ;
   Result:= False ;
   Exit ;
  End ;
  Result:= True ;
  mtLoadPackages.Post ;
  x:= succ(x) ;

   Except
    on eDatabaseError do
    Begin
     Result:= False ;
     Raise ;
     mtpackages.Cancel ;
    End ;
   End ;


  sq_PkgNoAvail.Next ;
 End ;
 if x < NoOfPkgs then
 Begin
  ShowMessage('Det finns inte tillräckligt med paket att avregistrera') ;
  Result:= False ;
 End ;
 Finally
  sq_PkgNoAvail.Close ;
 End ;
End ;

function TdmPkgs.RemovePkgsFromInventering (const MatPunktAgareNo, RegistrationPointNo : Integer; const WhenCreated : TDateTime) : Boolean ;
Var
  Save_Cursor  : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Result:= False ;
Try
  try
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     Try
      sp_RemovePackageFromInventory.Close ;
      sp_RemovePackageFromInventory.ParamByName('@PackageNo').AsInteger                := mtLoadPackagesPACKAGENO.AsInteger ;
      sp_RemovePackageFromInventory.ParamByName('@SupplierCode').AsString              := mtLoadPackagesSUPP_CODE.AsString ;
      sp_RemovePackageFromInventory.ParamByName('@RegistrationPointNo').AsInteger      := RegistrationPointNo ;
      sp_RemovePackageFromInventory.ParamByName('@PackageTypeNo').AsInteger            := mtLoadPackagesPACKAGETYPENO.AsInteger ;
      sp_RemovePackageFromInventory.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_RemovePackageFromInventory.ParamByName('@UserID').AsInteger                   := ThisUser.UserID ;
      sp_RemovePackageFromInventory.ParamByName('@SupplierNo').AsInteger               := mtLoadPackagesSupplierNo.AsInteger ;
      sp_RemovePackageFromInventory.ParamByName('@DateCreated').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(WhenCreated) ;
      sp_RemovePackageFromInventory.ParamByName('@MatPunktAgareNo').AsInteger          := MatPunktAgareNo ;

      sp_RemovePackageFromInventory.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_RemovePackageFromInventory.ExecProc') ;
      Raise ;
     End ;
    end;
     mtLoadPackages.Next ;
    end; //While...

    Result:= True ;
  except
    Result:= False ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TdmPkgs.MakeLengthQuery_STD_Lengths (const STD_LengthGroupNo : Integer) ;
Begin
 sq_ProductLengths.SQL.Clear ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ProductLengthNo, PL.ActualLengthMM, PL.NominalLengthMM, PL.NominalLengthFEET ,');
 sq_ProductLengths.SQL.Add('PL.ActualLengthINCH , PL.PET , PL.FingerJoint');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductLengthGroup PGL');
 sq_ProductLengths.SQL.Add('INNER JOIN ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo');
 sq_ProductLengths.SQL.Add('WHERE  PGL.GroupNo = '+IntToStr(STD_LengthGroupNo)) ;
 sq_ProductLengths.SQL.Add(' AND PL.ActualLengthMM > 0.5') ;
 sq_ProductLengths.SQL.Add(' AND PL.Act = 1') ;
 sq_ProductLengths.SQL.Add(' ORDER BY PL.ActualLengthMM ') ;
// if ThisUser.UserID = 8 then  sq_ProductLengths.SQL.SaveToFile('sq_ProductLengths.txt');
End ;

procedure TdmPkgs.DataModuleDestroy(Sender: TObject);
begin
 With dmsSystem do
 Begin
  Delete_ReservedPkgs (Self.Name) ;
 End ;
end;

function TdmPkgs.ExtFlyttaPaket(mtUserProp : TkbmMemTable) : Boolean ;
//const RegistrationPointNo, NewLogicalInventoryPointNo, ToOwnerNo : Integer) : Boolean ;
Var
  Save_Cursor:TCursor;


  procedure MovePackage ;
  begin
   Try
    sp_ExtMovePkg.ParamByName('@PackageNo'                 ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_ExtMovePkg.ParamByName('@PackageTypeNo'             ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger ;
    sp_ExtMovePkg.ParamByName('@SupplierCode'              ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_ExtMovePkg.ParamByName('@OldLogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_ExtMovePkg.ParamByName('@NewLogicalInventoryPointNo').AsInteger  := mtUserProp.FieldByName('LIPNo').AsInteger ;
    sp_ExtMovePkg.ParamByName('@UserID'                    ).AsInteger  := ThisUser.UserID;
    sp_ExtMovePkg.ParamByName('@RegistrationPointNo'       ).AsInteger  := mtUserProp.FieldByName('RegPointNo').AsInteger ;
    sp_ExtMovePkg.ParamByName('@OLD_PackageTypeNo'         ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger ;
    sp_ExtMovePkg.ParamByName('@OldSupplierNo'             ).AsInteger  := mtLoadPackagesOWNERNO.AsInteger ;
    sp_ExtMovePkg.ParamByName('@NewSupplierNo'             ).AsInteger  := mtUserProp.FieldByName('VerkNo').AsInteger ;
    sp_ExtMovePkg.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_ExtMovePkg.ExecProc') ;
      Raise ;
     End ;
    end;
  end;


//Main FlyttaPaket
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 Result:= False ;

 mtLoadPackages.First ;
 While not mtLoadPackages.Eof do
 Begin
   dmsConnector.StartTransaction;
  try
    Try
     MovePackage ;
    except
     ShowMessage ('Could not save Package no '+Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
     Result:= False ;
     Raise ;
    End ;

   dmsConnector.Commit ;
   Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;

  mtLoadPackages.Next ;
 end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end; //end proc

procedure TdmPkgs.mtLoadPackagesBeforePost(DataSet: TDataSet);
begin
 if mtLoadPackagesPACKAGENO.IsNull then
 Begin
  ShowMessage('Ange ett paketnr') ;
  Abort ;
 End ;
end;

function TdmPkgs.IsPkgAvregistrerat (const PackageNo, SupplierNo : Integer; const SupplierCode : String) : String ;
Begin
 sq_PkgAvReg.ParamByName('PackageNo').AsInteger   := PackageNo ;
 sq_PkgAvReg.ParamByName('SupplierNo').AsInteger  := SupplierNo ;
 sq_PkgAvReg.ParamByName('SupplierCode').AsString := SupplierCode ;
 sq_PkgAvReg.Open ;
 Try
  if not sq_PkgAvReg.Eof then
   Result:= sq_PkgAvRegRegPointName.AsString+' den '+SQLTimeStampToStr('yyyymmdd',sq_PkgAvRegProductionDate.AsSQLTimeStamp)
    else
     Result:= 'NO' ;
 Finally
  sq_PkgAvReg.Close ;
 End ;

End ;

Function TdmPkgs.GetLengthsEntered(const ChangeLength : Double) : String ;

    Function GetNoOfLengthsInPkg : Integer ;
    Var x : Integer ;
    Begin
//     for x := FirstLengthColumn to mtPackages.FieldCount - 1 do
     for x := 2 to mtPackages.FieldCount - 1 do
     Begin
      if mtPackages.Fields[x].AsInteger > 0 then
      Begin
       mtPcsPerLength.Insert ;
{       mtPcsPerLengthProductLengthNo.AsInteger  :=  dmsSystem.GetProductLengthNoByLengthRule(mtPackages.Fields[x].DisplayLabel,
                                                   mtPackages.FieldByName('NOM_THICK').AsFloat,
                                                   mtPackages.FieldByName('SurfacingNo').AsInteger) ;
                                                   }
       mtPcsPerLengthProductLengthNo.AsInteger  :=   dmsSystem.GetProductLengthNoByLengthRule(mtPackages.Fields[x].DisplayLabel,
                                                    mtLoadPackagesNOMTHICK.AsFloat,
                                                    mtLoadPackagesSurfacingNo.AsInteger) ;
       mtPcsPerLengthNoOfPieces.AsInteger       := mtPackages.Fields[x].AsInteger ;
//       mtPcsPerLengthProductNo.AsInteger        := mtPackages.Fields[cPRODUCTNO].AsInteger ;
       mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
       mtPcsPerLengthALMM.AsFloat               := StrToFloat(mtPackages.Fields[x].DisplayLabel) ;
       mtPcsPerLength.Post ;
      End ;
     End ;
    End ;

    Function GetNoOfLengthsInPkg_LPM_Entry : Integer ;
    Var ML : Double ;
    Begin
     ML                                       := (mtpackages.Fields[cTOTALLPM].AsFloat*1000) ;
     mtPcsPerLength.Insert ;
     mtPcsPerLengthProductLengthNo.AsInteger  := dmsSystem.GetProductLengthNoByALMM(FloatToStr(ML)) ;
     mtPcsPerLengthNoOfPieces.AsInteger       := 1 ;
     mtPcsPerLengthProductNo.AsInteger        := mtPackages.Fields[cPRODUCTNO].AsInteger ;
     mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
     mtPcsPerLengthALMM.AsFloat               := ML ;
     mtPcsPerLength.Post ;
    End ;

    Function GetNoOfLengthsInPkg_LPM_Entry_AVERAGE_LENGTH_OPTION : Integer ;
    Var ML : Double ;
    Begin
     ML                                       := (mtpackages.Fields[FirstLengthColumn].AsFloat*1000) ;
     mtPcsPerLength.Insert ;
     mtPcsPerLengthProductLengthNo.AsInteger  := dmsSystem.GetProductLengthNoByALMM(FloatToStr(ML)) ;
     mtPcsPerLengthNoOfPieces.AsInteger       := mtPackages.Fields[cTOTALPCS].AsInteger ;
     mtPcsPerLengthProductNo.AsInteger        := mtPackages.Fields[cPRODUCTNO].AsInteger ;
     mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
     mtPcsPerLengthALMM.AsFloat               := ML ;
     mtPcsPerLength.Post ;
    End ;

    Function Get_Lengths_For_Ramar : Integer ;
    Var ML : Double ;
  //      Le : String ;
    Begin
     ML                                       := ChangeLength ;
//     Le := FloatToStr(ML) ;
     mtPcsPerLength.Insert ;
     mtPcsPerLengthProductLengthNo.AsInteger  := dmsSystem.GetProductLengthNoByALMM(FloatToStr(ML)) ;
     mtPcsPerLengthNoOfPieces.AsInteger       := mtPackages.Fields[cTOTALPCS].AsInteger ;
     mtPcsPerLengthProductNo.AsInteger        := mtPackages.Fields[cPRODUCTNO].AsInteger ;
     mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
     mtPcsPerLengthALMM.AsFloat               := ML ;
     mtPcsPerLength.Post ;
    End ;

Begin
// if (mtUserPropInputOption.AsInteger = INPUT_PIECES) or (mtUserPropInputOption.AsInteger = INPUT_SPECIAL_LENGTH) then
  GetNoOfLengthsInPkg ;
{   else
    if mtUserPropInputOption.AsInteger = INPUT_LOPM_TOTAL_LOPM then
     GetNoOfLengthsInPkg_LPM_Entry
      else
       GetNoOfLengthsInPkg_LPM_Entry_AVERAGE_LENGTH_OPTION ; }

 mtPcsPerLength.First ;
 While not mtPcsPerLength.Eof do
 Begin
  Result:= Result + mtPcsPerLengthProductLengthNo.AsString
                                     + '/'
                                     + mtPcsPerLengthNoOfPieces.AsString + '|' ;
  mtPcsPerLength.Next ;
 End ;
End ;

Function TdmPkgs.GetNoOfOriginalLengthsInPkg(const ChangeLength : Double) : String ;
Begin
 Result:= '' ;
 //Om changeLength < 1 then "normal" procedure
 if ChangeLength < 1 then
  Begin
   sp_PackageTypeDetail.Close;
   sp_PackageTypeDetail.ParamByName('@PackageTypeNo').AsInteger := mtLoadPackagesPACKAGETYPENO.AsInteger ;
   sp_PackageTypeDetail.Open;
   sp_PackageTypeDetail.First;
   while not sp_PackageTypeDetail.Eof  do
   begin
    mtPcsPerLength.Insert ;
    mtPcsPerLengthProductLengthNo.AsInteger :=  sp_PackageTypeDetail.FieldValues['ProductLengthNo'] ;
    mtPcsPerLengthNoOfPieces.AsInteger       := sp_PackageTypeDetail.FieldValues['NoOfPieces'] ;
    mtPcsPerLengthProductNo.AsInteger        := mtPackages.Fields[cPRODUCTNO].AsInteger ;
    mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
//       mtPcsPerLengthALMM.AsFloat               := StrToFloat(mtPackages.Fields[x].DisplayLabel) ;
    mtPcsPerLength.Post ;

    sp_PackageTypeDetail.Next;
   end;
   sp_PackageTypeDetail.Close;
  End
  else
  Begin
    mtPcsPerLength.Insert ;
    mtPcsPerLengthProductLengthNo.AsInteger :=  dmsSystem.GetProductLengthNoByALMM(FloatToStr(ChangeLength)) ;
    mtPcsPerLengthNoOfPieces.AsInteger       := mtLoadPackagesPCS.AsInteger ;
    mtPcsPerLengthProductNo.AsInteger        := mtLoadPackagesProductNo.AsInteger ;
    mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
//       mtPcsPerLengthALMM.AsFloat               := StrToFloat(mtPackages.Fields[x].DisplayLabel) ;
    mtPcsPerLength.Post ;
  End;

     mtPcsPerLength.First ;
     While not mtPcsPerLength.Eof do
     Begin
      Result:= Result + mtPcsPerLengthProductLengthNo.AsString
                                     + '/'
                                     + mtPcsPerLengthNoOfPieces.AsString + '|' ;
      mtPcsPerLength.Next ;
     End ;

End ;//end proc


function TdmPkgs.AterStallPktTillInventoryEXT (mtUserProp : TkbmMemTable;const LIPNo, OwnerNo : Integer) : Boolean ;
Var
  Save_Cursor   : TCursor;
//  LIPNo         : Integer ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Result         := False ;
 Try
  dmsConnector.StartTransaction;
  try
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
      Try

       sp_AktiveraPktExt.Close ;
       sp_AktiveraPktExt.ParamByName('@PackageNo').AsInteger                := mtLoadPackagesPACKAGENO.AsInteger ;
       sp_AktiveraPktExt.ParamByName('@SupplierCode').AsString              := mtLoadPackagesSUPP_CODE.AsString ;
       sp_AktiveraPktExt.ParamByName('@RegistrationPointNo').AsInteger      := 2 ;//2 = Lagervård //mtUserProp.FieldByName('RegPointNo').AsInteger ;
       sp_AktiveraPktExt.ParamByName('@PackageTypeNo').AsInteger            := mtLoadPackagesPACKAGETYPENO.AsInteger ;
       sp_AktiveraPktExt.ParamByName('@LogicalInventoryPointNo').AsInteger  := LIPNo ;
       sp_AktiveraPktExt.ParamByName('@UserID').AsInteger                   := ThisUser.UserID ;
//       sp_AktiveraPktExt.ParamByName('SupplierNo').AsInteger               := mtLoadPackagesSupplierNo.AsInteger ;
       sp_AktiveraPktExt.ParamByName('@DateCreated').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
       sp_AktiveraPktExt.ParamByName('@MatPunktAgareNo').AsInteger          := OWNERNO ;
//       sp_AktiveraPktExt.ParamByName('RunNo').AsInteger                    := mtUserProp.FieldByName('RunNo').AsInteger ;

       sp_AktiveraPktExt.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_AktiveraPktExt.ExecProc') ;
      Raise ;
     End ;
    end;
     mtLoadPackages.Next ;
    end; //While...

    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;


end.
