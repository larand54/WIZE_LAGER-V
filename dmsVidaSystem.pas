unit dmsVidaSystem;

interface

uses
  Classes,
  DB,
  SysUtils,
  VidaType,  Controls, SqlTimSt, Dialogs, kbmMemTable, cxGridTableView,
  cxCustomPivotGrid, cxDBPivotGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet ;



type
 TAmbiguityEvent = procedure(
    Sender : TObject;
    DataSource : TDataSource;
    var Choice : String3;
    var SupplierNo : Integer;
    var ProductNo : Integer) of object;

  TdmsSystem = class(TDataModule)
    spAccessRights: TFDStoredProc;
    sp_PhysInventory: TFDStoredProc;
    sp_PhysInventoryCityName: TStringField;
    sp_PhysInventoryPhysicalInventoryPointNo: TIntegerField;
    sp_PhysInventoryPhyInvPointNameNo: TIntegerField;
    sp_LogInventory: TFDStoredProc;
    dsrcBarCodes: TDataSource;
    dsrcGradeStamps: TDataSource;
    dsrcPaperWraps: TDataSource;
    sp_Delete_Res_Pkgs: TFDStoredProc;
    sp_Pkg_Res: TFDStoredProc;
    dsrcPkgsByInvOwner: TDataSource;
    sp_PksByInvOwner: TFDStoredProc;
    sp_PksByInvOwner_II: TFDStoredProc;
    dsrcPkgsByInvOwner_II: TDataSource;
    sp_OneLoad: TFDStoredProc;
    sp_OneLoadLoadNo: TIntegerField;
    sp_OneLoadSupplierNo: TIntegerField;
    sp_OneLoadSenderLoadStatus: TIntegerField;
    sp_OneLoadPackageEntryOption: TIntegerField;
    sp_OneLoadCreatedUser: TIntegerField;
    sp_OneLoadModifiedUser: TIntegerField;
    sp_OneLoadLocalDestinationNo: TIntegerField;
    sp_OneLoadLocalShippingCompanyNo: TIntegerField;
    sp_OneLoadLocalLoadingLocation: TIntegerField;
    sp_OneLoadLoadID: TStringField;
    sp_OneLoadLoadedDate: TSQLTimeStampField;
    sp_OneLoadDateCreated: TSQLTimeStampField;
    sp_OneLoadFS: TStringField;
    sp_OneLoadConfirmed: TIntegerField;
    sp_OneLoadInvoiced: TIntegerField;
    sp_OneLoadNotering: TMemoField;
    sq_GetInventoryNo: TFDQuery;
    sq_GetInventoryNoPhysicalInventoryPointNo: TIntegerField;
    sp_pkgLog: TFDStoredProc;
    ds_pkgLog: TDataSource;
    sq_Grade: TFDQuery;
    sq_GradeGradeNo: TIntegerField;
    sq_GradeGradeName: TStringField;
    sq_GradeLanguageCode: TIntegerField;
    sq_GradeSequenceNo: TIntegerField;
    sq_GradeCreatedUser: TIntegerField;
    sq_GradeModifiedUser: TIntegerField;
    sq_GradeDateCreated: TSQLTimeStampField;
    sq_GradeMainGradeNo: TIntegerField;
    ds_Grade: TDataSource;
    sq_GradeMainGradeName: TStringField;
    sp_PksByInventoryPlace: TFDStoredProc;
    ds_PksByInventoryPlace: TDataSource;
    sq_Grade_SV: TFDQuery;
    ds_Grade_SV: TDataSource;
    ds_Species_SV: TDataSource;
    sq_Species_SV: TFDQuery;
    sq_Surfacing_SV: TFDQuery;
    ds_Surfacing_SV: TDataSource;
    sq_PkgTypeInfo: TFDQuery;
    sq_PkgTypeInfoPackageTypeNo: TIntegerField;
    sq_PkgTypeInfoGRADESTAMP: TStringField;
    sq_PkgTypeInfoBARCODE: TStringField;
    sq_PkgTypeInfoPKTKOD: TStringField;
    sq_PkgTypeInfoPRODUKT: TStringField;
    sq_PkgTypeInfoSTYCKETAL: TIntegerField;
    sq_PkgTypeInfoLANGD: TStringField;
    sp_DelUserResPkgs: TFDStoredProc;
    sq_GetPkgPos: TFDQuery;
    sq_GetPkgPosPktNrLevKod: TStringField;
    sq_GetPkgPosPaketNoPos: TIntegerField;
    sq_GetPkgPosPaketNoLength: TIntegerField;
    sq_GetPkgPosSupplierCodePos: TIntegerField;
    sq_GetPkgPosSupplierCodeLength: TIntegerField;
    sq_GetPkgPosClientCode: TStringField;
    sp_PkgsByInventering: TFDStoredProc;
    ds_PkgsByInventering: TDataSource;
    sp_lencolpcspkgtypeno: TFDStoredProc;
    sp_PopONELengthSpec: TFDStoredProc;
    sp_PkgInfo: TFDStoredProc;
    sp_PkgInfoCREATED: TSQLTimeStampField;
    sp_PkgInfoCREATED_BY: TStringField;
    sp_PkgInfoOWNER: TStringField;
    sp_PkgInfoPKG_STATUS: TIntegerField;
    sp_PkgInfoINVENTORY: TStringField;
    sp_PkgInInven: TFDStoredProc;
    ds_PkgInInven: TDataSource;
    sq_Language: TFDQuery;
    sq_LanguageLanguageNo: TIntegerField;
    sq_LanguageLanguageName: TStringField;
    sq_LanguageSequenceNo: TIntegerField;
    sq_LanguageDateCreated: TSQLTimeStampField;
    sq_LanguageCreatedUser: TIntegerField;
    sq_LanguageModifiedUser: TIntegerField;
    ds_Language: TDataSource;
    qryExec: TFDQuery;
    sqBarCode: TFDQuery;
    sqBarCodeBarCodeNo: TIntegerField;
    sqBarCodeBarCode: TStringField;
    sqBarCodeSequenceNo: TIntegerField;
    sqBarCodeCreatedUser: TSmallintField;
    sqBarCodeModifiedUser: TSmallintField;
    sqBarCodeDateCreated: TSQLTimeStampField;
    sqBarCodeBarCodeID: TStringField;
    sqBarCodeAct: TIntegerField;
    sqBarCodeBarcodeCodeName: TStringField;
    sqGradeStamp: TFDQuery;
    sqGradeStampGradeStampNo: TIntegerField;
    sqGradeStampGradeStamp: TStringField;
    sqGradeStampSequenceNo: TIntegerField;
    sqGradeStampCreatedUser: TSmallintField;
    sqGradeStampModifiedUser: TSmallintField;
    sqGradeStampDateCreated: TSQLTimeStampField;
    sqGradeStampGradeStampID: TStringField;
    sqGradeStampAct: TIntegerField;
    sqGradeStampGradeStampCodeName: TStringField;
    sqPaperWrap: TFDQuery;
    sqPaperWrapWrapTypeNo: TIntegerField;
    sqPaperWrapWrapType: TStringField;
    sqPaperWrapSequenceNo: TIntegerField;
    sqPaperWrapCreatedUser: TSmallintField;
    sqPaperWrapModifiedUser: TSmallintField;
    sqPaperWrapDateCreated: TSQLTimeStampField;
    mtMarkedCodes: TkbmMemTable;
    mtMarkedCodesPkgCodePPNo: TIntegerField;
    mtMarkedCodesProduktionsinstruktion: TStringField;
    mtMarkedCodesPackageTypeNo: TIntegerField;
    mtMarkedCodessspNo: TIntegerField;
    mtMarkedCodesNoOfUnits: TFloatField;
    mtMarkedCodesVolUnitNo: TIntegerField;
    mtMarkedCodesProducerNo: TIntegerField;
    mtMarkedCodesMainProduct: TIntegerField;
    mtMarkedCodesProductNo: TIntegerField;
    mtMarkedCodesProductGroupNo: TIntegerField;
    mtMarkedCodesProductLengthNo: TIntegerField;
    mtMarkedCodesKortaKoden: TStringField;
    mtMarkedCodesPPP: TIntegerField;
    mtMarkedCodesMarketRegionNo: TIntegerField;
    dsMarkedCodes: TDataSource;
    sq_PkgTypes: TFDQuery;
    sq_GetPkgTypeByCode: TFDQuery;
    sq_GetPkgTypeByCodeProductGroupNo: TIntegerField;
    sq_GetPkgTypeByCodeProductNo: TIntegerField;
    sq_GetPkgTypeByCodePackageTypeNo: TIntegerField;
    sq_GetPkgTypeByCodeProductLengthNo: TIntegerField;
    sq_GetPkgTypeByCodeBarCodeID: TIntegerField;
    sq_GetPkgTypeByCodeGradeStamp: TIntegerField;
    sq_GetPkgTypeByCodePackageHeight: TIntegerField;
    sq_GetPkgTypeByCodePackageWidth: TIntegerField;
    sq_GetPkgTypeByCodeMiniBundled: TIntegerField;
    sq_GetPkgTypeByCodeWrapType: TIntegerField;
    sq_GetPkgTypeByCodeShrinkWrap: TIntegerField;
    sq_GetPkgTypeByCodeTotalNoOfPieces: TIntegerField;
    sq_GetPkgTypeByCodePkgCodePPNo: TIntegerField;
    cds_ProductLength: TFDQuery;
    cds_ProductLengthProductLengthNo: TIntegerField;
    cds_ProductLengthActualLengthMM: TFloatField;
    cds_ProductLengthNominalLengthMM: TFloatField;
    cds_ProductLengthNominalLengthFEET: TFloatField;
    cds_ProductLengthActualLengthINCH: TStringField;
    cds_ProductLengthCreatedUser: TSmallintField;
    cds_ProductLengthModifiedUser: TSmallintField;
    cds_ProductLengthDateCreated: TSQLTimeStampField;
    cds_ProductLengthSequenceNo: TIntegerField;
    cds_ProductLengthProductLengthGroupNo: TIntegerField;
    cds_ProductLengthAct: TIntegerField;
    sq_GridSettings: TFDQuery;
    sq_GridSettingsViewName: TStringField;
    sq_GridSettingsSets: TBlobField;
    sq_GridSettingsUserID: TIntegerField;
    cds_PkgLogII: TFDStoredProc;
    ds_PkgLogII: TDataSource;
    sq_dbProps: TFDQuery;
    sq_dbPropsHostName: TStringField;
    sq_dbPropsDatabas: TStringField;
    sq_dbPropsUserName: TStringField;
    sq_dbPropsPassword: TStringField;
    sq_dbPropsCRPath: TStringField;
    sp_NonActivePkgs: TFDStoredProc;
    ds_NonActivePkgs: TDataSource;
    sq_Props: TFDQuery;
    sq_PropsUserID: TIntegerField;
    sq_PropsForm: TStringField;
    sq_PropsImportDir: TStringField;
    sq_PropsExportDir: TStringField;
    sq_PropsDeliveryMessageWood_XSD: TStringField;
    sq_PropsMyEmailAddress: TStringField;
    sq_PropsExcelDir: TStringField;
    sq_PropsUserDir: TStringField;
    sq_PropsLODir: TStringField;
    sq_PropsLastUsedLOTemplate: TStringField;
    sq_PropsLastUsedFragaAvropTemplate: TStringField;
    sq_PropsWoodXDir: TStringField;
    sq_GetRegPointNo: TFDQuery;
    sq_GetRegPointNoRegPointNo: TIntegerField;
    sq_GridSets: TFDQuery;
    sq_GridSetsViewName: TStringField;
    sq_GridSetsSets: TBlobField;
    sq_GridSetsUserID: TIntegerField;
    sp_prefixForChanged: TFDStoredProc;
    ds_prefixForChanged: TDataSource;
    cds_AccInvParam: TFDQuery;
    cds_AccInv: TFDQuery;
    cds_AccInvClientNo: TIntegerField;
    cds_AccInvClientName: TStringField;
    cds_AccInvYearNo: TIntegerField;
    cds_AccInvWeekNo: TIntegerField;
    cds_AccInvParamClientNo: TIntegerField;
    cds_AccInvParamYearNo: TIntegerField;
    cds_AccInvParamWeekNo: TIntegerField;
    ds_AccInvParam: TDataSource;
    ds_AccInv: TDataSource;
    sq_AccStart: TFDQuery;
    ds_AccStart: TDataSource;
    sq_AccStartYearNo: TIntegerField;
    sq_AccStartWeekNo: TIntegerField;
    cds_AccInvParamClientName: TStringField;
    sq_LastInvDate: TFDQuery;
    sq_LastInvDateInventeringsdatum: TSQLTimeStampField;
    sq_LastInvDateIC_grpno: TIntegerField;
    sq_LastInvDateMaxDatum: TSQLTimeStampField;
    sq_LastInvDateStatus: TIntegerField;
    sq_GridSettingsName: TStringField;
    sq_GridSettingsForm: TStringField;
    sq_GridSets2: TFDQuery;
    sq_GridSets2ViewName: TStringField;
    sq_GridSets2UserID: TIntegerField;
    sq_GridSets2Sets: TBlobField;
    sq_GridSets2Name: TStringField;
    sq_GridSets2Form: TStringField;
    sq_LayoutNames: TFDQuery;
    sq_LayoutNamesName: TStringField;
    sq_DeleteLayout: TFDQuery;
    StringField1: TStringField;
    mtMarkedProd: TkbmMemTable;
    mtMarkedProdProductNo: TIntegerField;
    mtMarkedProdProductLengthNo: TIntegerField;
    mtMarkedProdTab: TIntegerField;
    mtMarkedProdProductGroupNo: TIntegerField;
    mtMarkedProdNT: TFloatField;
    mtMarkedProdNB: TFloatField;
    mtMarkedProdPRODUKTDESC: TStringField;
    mtMarkedProdLengthDesc: TStringField;
    mtMarkedProdNL: TFloatField;
    mtMarkedProdRowNr: TIntegerField;
    mtMarkedProdAT: TFloatField;
    mtMarkedProdAW: TFloatField;
    mtMarkedProdSurfacingNo: TIntegerField;
    mtMarkedProdNIT: TFloatField;
    mtMarkedProdNIW: TFloatField;
    sp_NonActivePkgEXT: TFDStoredProc;
    ds_NonActivePkgsExt: TDataSource;
    cds_ProdLength: TFDQuery;
    cds_ProdLengthNomLength: TFloatField;
    sp_pkgLogOperation: TIntegerField;
    sp_pkgLogLogicalInventoryPointNo: TIntegerField;
    sp_pkgLogCREATED: TSQLTimeStampField;
    sp_pkgLogOPERATION_1: TStringField;
    sp_pkgLogREG_POINT: TStringField;
    sp_pkgLogUSERID: TStringField;
    sp_pkgLogINVENTORY: TStringField;
    sp_pkgLogOWNER: TStringField;
    sp_pkgLogPRODUCT: TStringField;
    sp_pkgLogPCSPERLENGTH: TStringField;
    sp_pkgLogAM3: TFloatField;
    sp_pkgLogPCS: TIntegerField;
    sp_pkgLogPKGTYPENO: TIntegerField;
    sp_pkgLogPKGTYPECREATED: TSQLTimeStampField;
    sp_PkgInfoII: TFDStoredProc;
    sp_PkgInfoIIPKG_CREATED_BY: TStringField;
    sp_PkgInfoIIPKG_NO: TIntegerField;
    sp_PkgInfoIIPKG_CREATED: TSQLTimeStampField;
    sp_PkgInfoIISUPP_CODE: TStringField;
    sp_PkgInfoIIPRODUCT: TStringField;
    sp_PkgInfoIIINVENTORY_OWNER: TStringField;
    sp_PkgInfoIIPRODUCER: TStringField;
    sp_PkgInfoIIINVENTORY: TStringField;
    sp_PkgInfoIIINVENTORY_GROUP: TStringField;
    sp_PkgInfoIIPKG_STATUS: TStringField;
    sp_PkgInfoIIBARCODE: TStringField;
    sp_PkgInfoIIGRADESTAMP: TStringField;
    sp_PkgInfoIIPKG_HEIGHT: TIntegerField;
    sp_PkgInfoIIPKG_WIDTH: TIntegerField;
    sp_PkgInfoIIMINI_BUNDLED: TStringField;
    sp_PkgInfoIISTICKS: TStringField;
    sp_PkgInfoIIWRAP: TStringField;
    sp_PkgInfoIISHRINK_WRAP: TStringField;
    sp_PkgInfoIIM3_ACT: TFloatField;
    sp_PkgInfoIIM3_NOM: TFloatField;
    sp_PkgInfoIIPIECES: TIntegerField;
    sp_PkgInfoIIMFBM: TFloatField;
    sp_PkgInfoIIACT_LINEAL_METER: TFloatField;
    sp_PkgInfoIINOM_LINEAL_METER: TFloatField;
    sp_PkgInfoIIM2: TFloatField;
    sp_PkgInfoIIPACKAGETYPENO: TIntegerField;
    sp_PkgInfoIIKORTAKODEN: TStringField;
    sp_PkgInfoIILANGAKODEN: TStringField;
    ds_PkgInfoII: TDataSource;
    sp_LoadPkgInfo: TFDStoredProc;
    ds_LoadPkgInfo: TDataSource;
    sp_LoadPkgInfoLOAD_CUSTOMER: TStringField;
    sp_LoadPkgInfoLOAD_SUPPLIER: TStringField;
    sp_LoadPkgInfoLOAD_DATE: TSQLTimeStampField;
    sp_LoadPkgInfoLOAD_NO: TIntegerField;
    sp_LoadPkgInfoLO_NUMBER: TIntegerField;
    sp_LoadPkgInfoFS: TStringField;
    sp_LoadPkgInfoLOAD_CREATED_BY: TStringField;
    sp_LoadPkgInfoLOAD_STATUS: TStringField;
    sp_LoadPkgInfoINVOICE_NO: TIntegerField;
    sp_LoadPkgInfoINV_CREATED_BY: TStringField;
    sp_LoadPkgInfoINVOICE_DATE: TSQLTimeStampField;
    sp_LoadPkgInfoINT_INVOICE_NO: TIntegerField;
    sp_LoadPkgInfoINVOICETYPE: TStringField;
    sp_LoadPkgInfoDEBIT_CREDIT: TStringField;
    sp_LoadPkgInfoORDER_NO: TStringField;
    sp_LoadPkgInfoORDER_CUSTOMER: TStringField;
    sp_PcsPerLength: TFDStoredProc;
    DataSource1: TDataSource;
    cds_PkgLogIIOperationNo: TIntegerField;
    cds_PkgLogIILIPNO: TIntegerField;
    cds_PkgLogIIDB_Bokförd: TSQLTimeStampField;
    cds_PkgLogIIOperation: TStringField;
    cds_PkgLogIIMätpunkt: TStringField;
    cds_PkgLogIIAnvändare: TStringField;
    cds_PkgLogIILager: TStringField;
    cds_PkgLogIIÄgare: TStringField;
    cds_PkgLogIIProdukt: TStringField;
    cds_PkgLogIIAntalperlängd: TStringField;
    cds_PkgLogIIAM3: TFloatField;
    cds_PkgLogIIStyck: TIntegerField;
    cds_PkgLogIIPackageTypeNo: TIntegerField;
    cds_PkgLogIIPktTypSkapad: TSQLTimeStampField;
    cds_PkgLogIIRegistrerad: TSQLTimeStampField;
    cds_AccInvSawProd: TBCDField;
    cds_AccInvIntInDel: TBCDField;
    cds_AccInvExtInDel: TBCDField;
    cds_AccInvExtUtlev: TBCDField;
    cds_AccInvInvoicedCust: TBCDField;
    cds_AccInvInvChange: TBCDField;
    cds_AccInvTotalInv: TBCDField;
    cds_AccInvTotalInvChangeMill: TBCDField;
    cds_AccInvTotalInvMill: TBCDField;
    cds_AccInvVW: TIntegerField;
    cds_AccInvParamIngoingInv: TBCDField;
    cds_AccInvParamTrimFactor: TBCDField;
    mtMarkedProdSequenceNo: TIntegerField;
    mtMarkedProdALMM: TFloatField;
    cds_ShiftLag: TFDQuery;
    cds_ShiftLagShiftTeamNo: TIntegerField;
    cds_ShiftLagShiftTeamName: TStringField;
    cds_ShiftLagDateModified: TSQLTimeStampField;
    cds_ShiftLagModifiedUser: TIntegerField;
    cds_ShiftLagClientNo: TIntegerField;
    sp_PkgLoggLinkedPackage: TFDStoredProc;
    sp_PkgLoggLinkedPackageOperationNo: TIntegerField;
    sp_PkgLoggLinkedPackageLIPNO: TIntegerField;
    sp_PkgLoggLinkedPackageDB_Bokförd: TSQLTimeStampField;
    sp_PkgLoggLinkedPackageOperation: TStringField;
    sp_PkgLoggLinkedPackageMätpunkt: TStringField;
    sp_PkgLoggLinkedPackageAnvändare: TStringField;
    sp_PkgLoggLinkedPackageLager: TStringField;
    sp_PkgLoggLinkedPackageÄgare: TStringField;
    sp_PkgLoggLinkedPackageProdukt: TStringField;
    sp_PkgLoggLinkedPackageAntalperlängd: TStringField;
    sp_PkgLoggLinkedPackageAM3: TFloatField;
    sp_PkgLoggLinkedPackageStyck: TIntegerField;
    sp_PkgLoggLinkedPackagePackageTypeNo: TIntegerField;
    sp_PkgLoggLinkedPackagePktTypSkapad: TSQLTimeStampField;
    sp_PkgLoggLinkedPackageRegistrerad: TSQLTimeStampField;
    sp_Vis_PackageRunInfo: TFDStoredProc;
    sp_Vis_PackageRunInfoRunNo: TIntegerField;
    sp_Vis_PackageRunInfoRegPointName: TStringField;
    sp_Vis_PackageRunInfoProducer: TStringField;
    sp_Vis_PackageRunInfoOperation: TStringField;
    sp_PkgsExistInAvregLogg: TFDStoredProc;
    cds_Package_Size: TFDQuery;
    cds_Package_SizePackageSizeNo: TIntegerField;
    cds_Package_SizePackageSizeName: TStringField;
    ds_Package_Size: TDataSource;
    sp_PksByLIPNo: TFDStoredProc;
    ds_PksByLIPNo: TDataSource;
    sp_GetAnyPkg: TFDStoredProc;
    ds_GetAnyPkg: TDataSource;
    procedure DataModuleCreate(Sender: TObject);

    procedure mtMarkedCodesAfterInsert(DataSet: TDataSet);
    procedure cds_ProductLengthAfterInsert(DataSet: TDataSet);

  private
  { Private declarations }
     FOnAmbiguousPkgNo: TAmbiguityEvent;
    procedure getPkgsByLIPNo(const PkgNo, LIPNo : Integer);
    procedure getNonActivePkgsExt(const PkgNo  : Integer;const Prefix  : String3);
    procedure get_prefixForChanged(const PkgNo, IC_GrpNo : Integer);
    function  SP_Pkg_Reserved(const PkgNo: Integer; const PkgSupplierCode : string3;const Modul : String;Var Res_UserName : String): String;
    procedure getPkgsByInvOwner(const PkgNo, InventoryOwner, UserCompanyLoggedOn : Integer);
    procedure getPkgsByInvOwner_II(PkgNo : Integer);
    procedure getPkgsByInventoryPlace(const PkgNo, InventoryPlaceNo, InventoryOwner: Integer);
    procedure getNonActivePkgsByInventoryPlace(const PkgNo, InventoryPlaceNo, InventoryOwner: Integer);


  Protected
      procedure ResolvePkgNoAmbiguity(
      Sender : TObject;
      ADataSource : TDataSource;
      var Choice : String3;
      var SupplierNo : Integer;
      var ProductNo : Integer     );

  public
    LOG_ENABLE            : Boolean ;
    MemoInAction          : Boolean ;
    PktNrPos,
    AntPosPktNr,
    LevKodPos,
    AntPosLevKod          : Cardinal ;

    procedure getGetAnyPkg(const PkgNo, LIPNo : Integer);

    function  PkgNoToSuppCode_GetAnyPkg(
    const PkgNo, LIPNo : Integer;
    var SupplierNo : Integer;
    Var ProductNo : Integer): string3;

    function  PackagesNotInOwnAvregLogg (const PkgNo, OwnerNo : Integer;const PkgSupplierCode : String) : Boolean ;

    function  GetNonActivePkgNoExt(
    const PkgNo, InventoryPlaceNo, InventoryOwner : Integer;
    var SupplierNo : Integer;
    Var ProductNo : Integer;
    const SuppCode : string3): string3 ;

    function  CheckForGetProductLengthNoByALMM (const ALMM : Double) : Integer ;
    function  IsRegDateBeforeMaxDate(const LIPNo : Integer;const RegDate : TDateTime;Var InvDate : TDateTime;Var MaxDateMsg : String) : Integer ;
    function  IsRegDateBeforeInvDate(const LIPNo : Integer;const RegDate : TDateTime;Var InvDate : TDateTime;Var MaxDateMsg : String) : Integer ;
    procedure FDoLog(s: string);
    procedure StoreGridLayout_Special(const UserID : Integer;const Form, ViewName : String;AGridView: TcxGridTableView;const MallName : String) ;
    function  LoadGridLayout_Special(const UserID : Integer;const Form, ViewName : String;AGridView: TcxGridTableView;const MallName : String) : Boolean ;
    function  GetRegPointNoOfRegPointName(const RegPointName : String) : Integer ;
    function  Get_SystemDir(const UserID : Integer; const Form, pFieldName : String) : String ;
    function  GetLogonParams(var HostName, Database, UserName, Password, CRpath : String) : Boolean ;
    function  LoadPivotLayout(const UserID : Integer;const ViewName : String;APivot: TcxCustomPivotGrid;const Form, MallName : String)  : Boolean ;
    procedure StorePivotLayout(const UserID : Integer;const ViewName : String;APivot: TcxCustomPivotGrid;const Form, MallName : String) ;
    procedure StoreGridLayout(const UserID : Integer;const ViewName : String;AGridView: TcxGridTableView) ;
    function  LoadGridLayout(const UserID : Integer;const ViewName : String;AGridView: TcxGridTableView) : Boolean ;
    function  GetProductLengthNoByALMM (const ALMM : String) : Integer ;
    function  GetProductLengthNoByALMMandNLMM(const ALMM, NLMM : Double) : Integer ;
    function  GetProductLengthNoByLengthRule (const ALMM : String;const NT : Double;const SurfacingNo : Integer) : Integer ;
    function  GetNomLengthOfLengthRule(const ALMM, MinNTmm, MaxNTmm : Double;const ClientNo, SurfacingNo : Integer) : Double ;
    Function  GetPackageTypeNoByPkgcode(const Pkgcode : String) : Integer ;
    function  IsUsed_ProductGroup(const ProductGroupNo: Integer): Boolean ;
    function  Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
    procedure AddPkgTypeColumns(const PackageTypeNo : Integer) ;
    function  GetPkgPos (const ClientNo : Integer) : String ;
    function  PkgNoToSuppCode(
          const PkgNo, InventoryOwner, UserCompanyLoggedOn : Integer;
          var ProductNo : Integer): string3;

    procedure getPkgsByInventering(const PkgNo, IC_GrpNo : Integer);
    procedure getPkgsNotInInven(const PkgNo, IC_GrpNo : Integer);


    function  GetListOfPrefixOfPkgsInControlListAndNotAvregAndNotChangedList(
    const PkgNo, IC_GrpNo : Integer;
    var SupplierNo : Integer;
    Var ProductNo : Integer): string3;

    function  PkgNoNotInInvenToSuppCode(
    const PkgNo, IC_GrpNo : Integer;
    var SupplierNo : Integer;
    Var ProductNo : Integer): string3;

    function  PkgNoToSuppCode_Inv(
    const PkgNo, IC_GrpNo : Integer;
    var SupplierNo : Integer;
    Var ProductNo : Integer): string3;

    function  PkgNoToSuppCode_II(
    const PkgNo : Integer ;
    var SupplierNo : Integer;
    Var ProductNo : Integer): string3;

    function  PkgNoToSuppCode_III(
    const PkgNo,  InventoryPlaceNo, InventoryOwner : Integer;
    var SupplierNo : Integer;
    Var ProductNo : Integer): string3;

    function NonActivePkgNoToSuppCode(
    const PkgNo, InventoryPlaceNo, InventoryOwner : Integer;
    var SupplierNo : Integer;
    Var ProductNo : Integer): string3;

    function  PkgNoToSuppCode_ByLIPNo(
    const PkgNo,  LIPNo : Integer;
    var SupplierNo : Integer;
    Var ProductNo : Integer): string3;


    function Pkg_Reserved(const PkgNo: Integer; const PkgSupplierCode : string3;const Modul : String;Var Res_UserName : String): String ;

    procedure Delete_ReservedPkgs(const Modul : String) ;
    procedure Delete_UserReservedPkgs ;

    function AccessRights(
      const UserName  : String;
      const UserPswd  : String) : TUserSpec;

    function LogOnToDatabase(
      HostName   : string;
      Database   : string;
      DBUserName : string;
      DBUserPswd : string
      ) : Boolean;

    procedure LoadPhysInv(OwnerNo : Integer);



    function  Get_PkgTypeInfo (const PackageTypeNo : Integer;Var PKT_DESC : AnsiString) : Boolean ;
    property OnAmbiguousPkgNo : TAmbiguityEvent read  FOnAmbiguousPkgNo write FOnAmbiguousPkgNo;
  end;

var
  dmsSystem: TdmsSystem ;

implementation

{$R *.dfm}

uses
  dmsDataConn,
  VidaConst, VidaUser,
  dlgPickPkg_II ;


{ TdmsSystem }

function TdmsSystem.CheckForGetProductLengthNoByALMM (const ALMM : Double) : Integer ;
begin
 Result := -1 ;
 Result:= GetProductLengthNoByALMM(FloatToStr(ALMM)) ;

{  if Result < 0 then
  Begin
      cds_ProductLength.Active:= True ;
      cds_ProductLength.Append ;
      cds_ProductLengthALMM.AsFloat:= ALMM ;
      cds_ProductLengthNLMM.AsFloat:= ALMM ;
      cds_ProductLength.Post ;
      if cds_ProductLength.ChangeCount > 0 then
      cds_ProductLength.ApplyUpdates(0) ;
      Result:= cds_ProductLengthProductLengthNo.AsInteger ;
      cds_ProductLength.Active:= False ;
   End ;
   }
end;

function TdmsSystem.IsRegDateBeforeInvDate(const LIPNo : Integer;const RegDate : TDateTime;Var InvDate : TDateTime;Var MaxDateMsg : String) : Integer ;
Begin
 sq_LastInvDate.ParamByName('LIPNo').AsInteger := LIPNo ;
 Try
 sq_LastInvDate.Open ;
 if not sq_LastInvDate.Eof then
 Begin
  if (sq_LastInvDateStatus.AsInteger < 2) and (SQLTimeStampToDateTime(sq_LastInvDateInventeringsdatum.AsSQLTimeStamp) > RegDate) then
  Begin
   Result   := sq_LastInvDateIC_grpno.AsInteger ;
   InvDate  := SQLTimeStampToDateTime(sq_LastInvDateInventeringsdatum.AsSQLTimeStamp) ;
   MaxDateMsg := 'Du har valt ett registreringsdatum som är före senaste inventeringsdatumet i inventeringnr: '
   + IntToStr(Result) + ', Inventeringsdatum: ' + DateTimeToStr(InvDate) + ', ej tillåtet.' ;
  End
  else
  if (sq_LastInvDateStatus.AsInteger = 2) and (SQLTimeStampToDateTime(sq_LastInvDateMaxDatum.AsSQLTimeStamp) > RegDate) then
  Begin
   Result   := sq_LastInvDateIC_grpno.AsInteger ;
   InvDate  := SQLTimeStampToDateTime(sq_LastInvDateInventeringsdatum.AsSQLTimeStamp) ;
   MaxDateMsg := 'Du har valt ett registreringsdatum som är före senaste maxdatumet i inventeringnr: ' +
   IntToStr(Result) + ', Inventeringsdatum: ' + DateTimeToStr(InvDate) + ', ej tillåtet.' ;
  End
    else
     Result := -1 ;
 End
  else
   Result := -1 ;
 Finally
  sq_LastInvDate.Close ;
 End ;
End ;

function TdmsSystem.IsRegDateBeforeMaxDate(const LIPNo : Integer;const RegDate : TDateTime;Var InvDate : TDateTime;Var MaxDateMsg : String) : Integer ;
Begin
 sq_LastInvDate.ParamByName('LIPNo').AsInteger := LIPNo ;
 Try
 sq_LastInvDate.Open ;
 if not sq_LastInvDate.Eof then
 Begin
  if (SQLTimeStampToDateTime(sq_LastInvDateMaxDatum.AsSQLTimeStamp) > RegDate) then
  Begin
   Result     := sq_LastInvDateIC_grpno.AsInteger ;
   InvDate    := SQLTimeStampToDateTime(sq_LastInvDateInventeringsdatum.AsSQLTimeStamp) ;
   MaxDateMsg := 'Du har valt ett registreringsdatum som är före senaste maxdatumet i inventeringnr: ' +
   IntToStr(Result) + ', Inventeringsdatum: ' + DateTimeToStr(InvDate) + ', ej tillåtet.' ;
  End
   else
    Result := -1 ;
 End
  else
   Result := -1 ;
 Finally
  sq_LastInvDate.Close ;
 End ;
End ;

procedure TdmsSystem.get_prefixForChanged(const PkgNo, IC_GrpNo : Integer);
begin
//  sp_prefixForChanged.Close;
  sp_prefixForChanged.ParamByName('@PkgNo').AsInteger    := PkgNo ;
  sp_prefixForChanged.ParamByName('@IC_GrpNo').AsInteger := IC_GrpNo ;
//  sp_prefixForChanged.Open;
end;

function TdmsSystem.GetListOfPrefixOfPkgsInControlListAndNotAvregAndNotChangedList(
  const PkgNo, IC_GrpNo : Integer;
  var SupplierNo : Integer;
  Var ProductNo : Integer): string3;
var
  SuppCode : string3;
begin
  sp_prefixForChanged.Close;
  get_prefixForChanged(PkgNo, IC_GrpNo);

  sp_prefixForChanged.Open;
  case sp_prefixForChanged.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode   := sp_prefixForChanged.FieldByName('SupplierCode').AsString;
           SupplierNo := sp_prefixForChanged.FieldByName('SupplierNo'  ).AsInteger;
           ProductNo  := sp_prefixForChanged.FieldByName('ProductNo'  ).AsInteger;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.ds_prefixForChanged,SuppCode,SupplierNo, ProductNo);
           end;
    end;

  Result := SuppCode;
end;

function TdmsSystem.Get_SystemDir(const UserID : Integer; const Form, pFieldName : String) : String ;
Begin
 sq_Props.Active:= False ;
 sq_Props.ParamByName('UserID').AsInteger := UserID ;
 sq_Props.ParamByName('Form').AsString    := Form ;
 sq_Props.Active:= True ;
 if not sq_Props.Eof then
 Begin
  Result:= sq_Props.FieldByName(pFieldName).AsString ;
 End
 else
 Result:= 'C:\';
 sq_Props.Active:= False ;
End ;

function TdmsSystem.GetLogonParams(var HostName, Database, UserName, Password, CRpath : String) : Boolean ;
Begin
 sq_dbProps.Open ;
 if not sq_dbProps.Eof then
 Begin
  HostName  := sq_dbPropsHostName.AsString ;
  DataBase  := sq_dbPropsDatabas.AsString ;
  UserName  := sq_dbPropsUserName.AsString ;
  Password  := sq_dbPropsPassWord.AsString ;
  CRPath    := sq_dbPropsCRPath.AsString ;
  Result:= True ;
 End
 else
 Result:= False ;
 sq_dbProps.Close ;
End ;

function ReplaceCommas(S : String) : String ;
begin
  { Convert period to commas}
  while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
 Result:= S ;
end;

procedure TdmsSystem.AddPkgTypeColumns(const PackageTypeNo : Integer) ;
Begin
 //Om längdgrupper ändras justeras pakettypskolumner där, här läggs pakettypen upp för de längdgrupper som finns för tillfället
// sp_PopONELengthSpec.ParamByName('PkgTypeNo').AsInteger:= PackageTypeNo ;
// sp_PopONELengthSpec.ExecProc ;

//Alla volymenheter räknas ut i denna procedur.
 sp_lencolpcspkgtypeno.ParamByName('@SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
 Try
 sp_lencolpcspkgtypeno.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;


End ;

function TdmsSystem.AccessRights(
  const UserName : String;
  const UserPswd : String ) : TUserSpec;
begin

  spAccessRights.ParamByName('@UserName').AsString := UserName;
  spAccessRights.ParamByName('@UserPswd').AsString := UserPswd;
  Try

  spAccessRights.ExecProc;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

  Result.UserID    := spAccessRights.ParamByName('@UserID').AsInteger;
  Result.CompanyNo := spAccessRights.ParamByName('@Company').AsInteger;

  Result.AccessRights[dcProductSection]       := TAccessLevel(spAccessRights.ParamByName ('@ProdSec'  ).AsInteger);
  Result.AccessRights[dcClientSection]        := TAccessLevel(spAccessRights.ParamByName ('@CliSec'   ).AsInteger);
  Result.AccessRights[dcOrderSection]         := TAccessLevel(spAccessRights.ParamByName ('@OrdSec'   ).AsInteger);
  Result.AccessRights[dcInventorySection]     := TAccessLevel(spAccessRights.ParamByName ('@InvSec'   ).AsInteger);
  Result.AccessRights[dcBaseDataSection]      := TAccessLevel(spAccessRights.ParamByName ('@BaseSec'  ).AsInteger);
  Result.AccessRights[dcInternalOrderSection] := TAccessLevel(spAccessRights.ParamByName ('@IntOrdSec').AsInteger);

  Result.AccessRights[dcAvropSec]             := TAccessLevel(spAccessRights.ParamByName ('@fAvropSec').AsInteger);
  Result.AccessRights[dcARSec]                := TAccessLevel(spAccessRights.ParamByName ('@fARSec').AsInteger);
  Result.AccessRights[dcSkeppInstrSec]        := TAccessLevel(spAccessRights.ParamByName ('@fSkeppInstrSec').AsInteger);
  Result.AccessRights[dcKP_ListaSec]          := TAccessLevel(spAccessRights.ParamByName ('@fKP_ListaSec').AsInteger);
  Result.AccessRights[dcUtlastningSec]        := TAccessLevel(spAccessRights.ParamByName ('@fUtlastningSec').AsInteger);
  Result.AccessRights[dcFakturaSec]           := TAccessLevel(spAccessRights.ParamByName ('@fFakturaSec').AsInteger);
  Result.AccessRights[dcAvrakningSec]         := TAccessLevel(spAccessRights.ParamByName ('@fAvrakningSec').AsInteger);
  Result.AccessRights[dcFrakt_AvrakningSec]   := TAccessLevel(spAccessRights.ParamByName ('@fFrakt_AvrakningSec').AsInteger);

  Result.AccessRights[dcAdd_packagesSec]      := TAccessLevel(spAccessRights.ParamByName ('@fAdd_packagesSec').AsInteger);
  Result.AccessRights[dcAsk_packagesSec]      := TAccessLevel(spAccessRights.ParamByName ('@fAsk_packagesSec').AsInteger);
  Result.AccessRights[dcReport_AvropSec]      := TAccessLevel(spAccessRights.ParamByName ('@fReport_AvropSec').AsInteger);
  Result.AccessRights[dcEditLoadOrder]      := TAccessLevel(spAccessRights.ParamByName ('@EditLoadOrder').AsInteger);
  Result.AccessRights[dcShowPrice]            := TAccessLevel(spAccessRights.ParamByName ('@ShowPrice').AsInteger);
end;


procedure TdmsSystem.LoadPhysInv(OwnerNo : Integer);
begin
  sp_PhysInventory.Close;
  sp_PhysInventory.ParamByName('@OwnerNo').AsInteger := Ownerno;
  sp_PhysInventory.Open;
end;


function TdmsSystem.LogOnToDatabase(HostName, Database, DBUserName, DBUserPswd: string) : Boolean;
begin
  Result := dmsConnector.LogOnToDatabase(HostName, Database, DBUserName, DBUserPswd);
end;

procedure TdmsSystem.Delete_UserReservedPkgs ;
Begin
 sp_DelUserResPkgs.Close ;
 Try
 sp_DelUserResPkgs.ParamByName('@UserID').AsInteger:= ThisUser.UserID ;
 sp_DelUserResPkgs.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End ;

procedure TdmsSystem.Delete_ReservedPkgs(const Modul : String) ;
Begin
 sp_Delete_Res_Pkgs.Close ;
 sp_Delete_Res_Pkgs.ParamByName('@UserID').AsInteger  := ThisUser.UserID ;
 sp_Delete_Res_Pkgs.ParamByName('@Modul').AsString    := Modul ;
 Try
 sp_Delete_Res_Pkgs.ExecProc ;
   except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End ;

function TdmsSystem.Pkg_Reserved(const PkgNo: Integer; const PkgSupplierCode : string3;const Modul : String;Var Res_UserName : String): String ;
begin
  Result := SP_Pkg_Reserved(PkgNo,PkgSupplierCode, Modul, Res_UserName) ;
end;

//Check if package is reserved, if not then the sp reservs the package for user.
function TdmsSystem.SP_Pkg_Reserved(const PkgNo: Integer; const PkgSupplierCode : string3;const Modul : String;Var Res_UserName : String): String;
begin
  sp_Pkg_Res.Close;
  sp_Pkg_Res.ParamByName('@PackageNo').AsInteger       := PkgNo;
  sp_Pkg_Res.ParamByName('@SupplierCode').AsString     := PkgSupplierCode;
  sp_Pkg_Res.ParamByName('@Asking_Modul').AsString     := Modul;
  sp_Pkg_Res.ParamByName('@UserID').AsInteger          := ThisUser.UserID ;
  sp_Pkg_Res.ParamByName('@Asking_UserName').AsString  := ThisUser.UserName ;
  Try
  sp_Pkg_Res.ExecProc;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
  Res_UserName          := Trim(sp_Pkg_Res.ParamByName('@UserName').AsString)
  + '/' + Trim(sp_Pkg_Res.ParamByName('@Modul').AsString) ;
  Result := Res_UserName ;

  sp_Pkg_Res.Close ;
end;

function TdmsSystem.PkgNoToSuppCode(
  const PkgNo, InventoryOwner, UserCompanyLoggedOn : Integer;
  Var ProductNo : Integer): string3;
var
  SuppCode    : string3;
  SupplierNo  : Integer ;//No use
begin
  sp_PksByInvOwner.Close;
  getPkgsByInvOwner(PkgNo, InventoryOwner, UserCompanyLoggedOn);

  sp_PksByInvOwner.Open;
  case sp_PksByInvOwner.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode   := sp_PksByInvOwner.FieldByName('SupplierCode').AsString;
//           SupplierNo := cdsPkgsByInvOwner.FieldByName('SupplierNo'  ).AsInteger;
           ProductNo  := sp_PksByInvOwner.FieldByName('ProductNo'  ).AsInteger;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.dsrcPkgsByInvOwner,SuppCode,SupplierNo, ProductNo);
           end;
    end;

  Result := SuppCode;
end;


procedure TdmsSystem.getPkgsByLIPNo(const PkgNo, LIPNo : Integer);
begin
  sp_PksByLIPNo.ParamByName('@PkgNo').AsInteger            := PkgNo;
  sp_PksByLIPNo.ParamByName('@LIPNo').AsInteger            := LIPNo ;
end;

function TdmsSystem.PkgNoToSuppCode_ByLIPNo(
  const PkgNo, LIPNo : Integer;
  var SupplierNo : Integer;
  Var ProductNo : Integer): string3;
var
  SuppCode : string3;
begin
  sp_PksByLIPNo.Close;
  getPkgsByLIPNo(PkgNo, LIPNo);

  sp_PksByLIPNo.Open;
  case sp_PksByLIPNo.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode   := sp_PksByLIPNo.FieldByName('SupplierCode').AsString;
           SupplierNo := sp_PksByLIPNo.FieldByName('SupplierNo'  ).AsInteger;
           ProductNo  := sp_PksByLIPNo.FieldByName('ProductNo'  ).AsInteger;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.ds_PksByLIPNo,SuppCode,SupplierNo, ProductNo);
           end;
    end;

  Result := SuppCode;
end;

procedure TdmsSystem.getGetAnyPkg(const PkgNo, LIPNo : Integer);
begin
  sp_GetAnyPkg.ParamByName('@PkgNo').AsInteger            := PkgNo;
  sp_GetAnyPkg.ParamByName('@LIPNo').AsInteger            := LIPNo ;
end;

function TdmsSystem.PkgNoToSuppCode_GetAnyPkg(
  const PkgNo, LIPNo : Integer;
  var SupplierNo : Integer;
  Var ProductNo : Integer): string3;
var
  SuppCode : string3;
begin
  sp_GetAnyPkg.Close;
  getGetAnyPkg(PkgNo, LIPNo);

  sp_GetAnyPkg.Open;
  case sp_GetAnyPkg.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode   := sp_GetAnyPkg.FieldByName('SupplierCode').AsString;
           SupplierNo := sp_GetAnyPkg.FieldByName('SupplierNo'  ).AsInteger;
           ProductNo  := sp_GetAnyPkg.FieldByName('ProductNo'  ).AsInteger;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.ds_GetAnyPkg,SuppCode,SupplierNo, ProductNo);
           end;
    end;

  Result := SuppCode;
end;

function TdmsSystem.PkgNoToSuppCode_III(
  const PkgNo, InventoryPlaceNo, InventoryOwner : Integer;
  var SupplierNo : Integer;
  Var ProductNo : Integer): string3;
var
  SuppCode : string3;
begin
  sp_PksByInventoryPlace.Close;
  getPkgsByInventoryPlace(PkgNo, InventoryPlaceNo, InventoryOwner);

  sp_PksByInventoryPlace.Open;
  case sp_PksByInventoryPlace.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode   := sp_PksByInventoryPlace.FieldByName('SupplierCode').AsString;
           SupplierNo := sp_PksByInventoryPlace.FieldByName('SupplierNo'  ).AsInteger;
           ProductNo  := sp_PksByInventoryPlace.FieldByName('ProductNo'  ).AsInteger;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.ds_PksByInventoryPlace,SuppCode,SupplierNo, ProductNo);
           end;
    end;

  Result := SuppCode;
end;

procedure TdmsSystem.getNonActivePkgsByInventoryPlace(const PkgNo, InventoryPlaceNo, InventoryOwner: Integer);
begin
//  sp_NonActivePkgs.Close;
  sp_NonActivePkgs.ParamByName('@PkgNo').AsInteger             := PkgNo;
  sp_NonActivePkgs.ParamByName('@InvOwner').AsInteger          := InventoryOwner;
  sp_NonActivePkgs.ParamByName('@InventoryPlaceNo').AsInteger  := InventoryPlaceNo ;
//  sp_NonActivePkgs.Open;
end;

function TdmsSystem.NonActivePkgNoToSuppCode(
  const PkgNo, InventoryPlaceNo, InventoryOwner : Integer;
  var SupplierNo : Integer;
  Var ProductNo : Integer): string3;
var
  SuppCode : string3;
begin
  sp_NonActivePkgs.Close;
  getNonActivePkgsByInventoryPlace(PkgNo, InventoryPlaceNo, InventoryOwner);
  sp_NonActivePkgs.Open;
  case sp_NonActivePkgs.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode   := sp_NonActivePkgs.FieldByName('SupplierCode').AsString;
           SupplierNo := sp_NonActivePkgs.FieldByName('SupplierNo'  ).AsInteger;
           ProductNo  := sp_NonActivePkgs.FieldByName('ProductNo'  ).AsInteger;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.ds_NonActivePkgs, SuppCode, SupplierNo, ProductNo);
           end;
    end;

  Result := SuppCode;
end;

procedure TdmsSystem.getPkgsByInvOwner(const PkgNo, InventoryOwner, UserCompanyLoggedOn: Integer);
begin
//  sp_PksByInvOwner.Close;
  sp_PksByInvOwner.ParamByName('@PkgNo').AsInteger    := PkgNo;
  sp_PksByInvOwner.ParamByName('@InvOwner').AsInteger := InventoryOwner;
  sp_PksByInvOwner.ParamByName('@UserCompanyLoggedOn').AsInteger := UserCompanyLoggedOn ;

//  sp_PksByInvOwner.Open;
end;

procedure TdmsSystem.getPkgsByInventoryPlace(const PkgNo, InventoryPlaceNo, InventoryOwner: Integer);
begin
//  sp_PksByInventoryPlace.Close;
  sp_PksByInventoryPlace.ParamByName('@PkgNo').AsInteger    := PkgNo;
  sp_PksByInventoryPlace.ParamByName('@InvOwner').AsInteger := InventoryOwner;
  sp_PksByInventoryPlace.ParamByName('@InventoryPlaceNo').AsInteger := InventoryPlaceNo ;
//  sp_PksByInventoryPlace.Open;
end;

function TdmsSystem.PkgNoToSuppCode_II(
  const PkgNo : Integer ;
  var SupplierNo : Integer;
  Var ProductNo : Integer): string3;
var
  SuppCode : string3;
begin
  sp_PksByInvOwner_II.Close;
  getPkgsByInvOwner_II(PkgNo);
  sp_PksByInvOwner_II.Open;
  case sp_PksByInvOwner_II.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode   := sp_PksByInvOwner_II.FieldByName('SupplierCode').AsString;
           SupplierNo := sp_PksByInvOwner_II.FieldByName('SupplierNo'  ).AsInteger;
           ProductNo  := sp_PksByInvOwner_II.FieldByName('ProductNo'  ).AsInteger;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.dsrcPkgsByInvOwner_II,SuppCode,SupplierNo, ProductNo);
           end;
    end;

  Result := SuppCode;
end;

procedure TdmsSystem.getPkgsByInvOwner_II(PkgNo : Integer);
begin
//  sp_PksByInvOwner_II.Close;
  sp_PksByInvOwner_II.ParamByName('@PkgNo').AsInteger    := PkgNo;
//  sp_PksByInvOwner_II.Open;
end;

procedure TdmsSystem.ResolvePkgNoAmbiguity(
  Sender: TObject;
  ADataSource : TDataSource;
  var Choice : String3;
  var SupplierNo : Integer;
  var ProductNo : Integer
  );
// User has added a package to a load by specifying the package number.
// More than one package with this number is located in inventories owned by the supplier
// of this load. This event handler allows the user to select which of these packages they
// want to pick. The supplier code for their choice is returned in the Choice
// arguement, which is set to an empty string if the user declines to make a choice.
begin
  with TfrmPackagePicker_II.Create(Nil) do try
    DataSource := ADataSource;
    ShowModal;
    if ModalResult = mrOK then begin
      Choice     := SupplierCodeForSelectedPkg;
      SupplierNo := SupplierNoForSelectedpkg;
      ProductNo  := ProductNoForSelectedpkg ;
      end
    else
      Choice := '___';
  finally
    free;
    end;
end;


procedure TdmsSystem.DataModuleCreate(Sender: TObject);
begin
  dmsSystem.OnAmbiguousPkgNo  := ResolvePkgNoAmbiguity;
  LOG_ENABLE                  := True ;
end;


function TdmsSystem.Get_PkgTypeInfo (const PackageTypeNo : Integer;Var PKT_DESC : AnsiString) : Boolean ;
const
  LF = #10;
Begin
 Try
 sq_PkgTypeInfo.ParamByName('@PackageTypeNo').AsInteger:= packageTypeno ;
 sq_PkgTypeInfo.Open ;
 if sq_PkgTypeInfo.Eof then
 Begin
  Result := False ;
  PKT_DESC:= 'PaketID finns inte' ;
  ShowMessage('PaketID '+intTostr(Packagetypeno)+' finns inte') ;
 End
   else
    Begin
     Result:= True ;
     PKT_DESC:=
     'Produkt: '+sq_PkgTypeInfoPRODUKT.AsString+LF
     +'Längd: '+sq_PkgTypeInfoLANGD.AsString+LF
     +'Styck:'+sq_PkgTypeInfoSTYCKETAL.AsString+LF
     +'GS:'+sq_PkgTypeInfoGRADESTAMP.AsString+LF
     +'BC:'+sq_PkgTypeInfoBARCODE.AsString+LF
     +'PK:'+sq_PkgTypeInfoPKTKOD.AsString ;
    End ;
 Finally
  sq_PkgTypeInfo.Close ;
 End ;
End ;

function TdmsSystem.GetPkgPos (const ClientNo : Integer) : String ;
Begin
 sq_GetPkgPos.Close ;
 sq_GetPkgPos.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sq_GetPkgPos.Open ;
 if not sq_GetPkgPos.Eof then
 Begin
  PktNrPos      := sq_GetPkgPosPaketNoPos.AsInteger ;
  AntPosPktNr   := sq_GetPkgPosPaketNoLength.AsInteger ;
  LevKodPos     := sq_GetPkgPosSupplierCodePos.AsInteger ;
  AntPosLevKod  := sq_GetPkgPosSupplierCodeLength.AsInteger ;
  Result        := sq_GetPkgPosClientCode.AsString ;
 End
   else
    Result:= '' ;
 sq_GetPkgPos.Close ;
End ;


procedure TdmsSystem.getPkgsByInventering(const PkgNo, IC_GrpNo : Integer);
begin
//  sp_PkgsByInventering.Close;
  sp_PkgsByInventering.ParamByName('@PkgNo').AsInteger    := PkgNo ;
  sp_PkgsByInventering.ParamByName('@IC_GrpNo').AsInteger := IC_GrpNo ;
//  sp_PkgsByInventering.Open;
end;

function TdmsSystem.PkgNoToSuppCode_Inv(
  const PkgNo, IC_GrpNo : Integer;  
  var SupplierNo : Integer;
  Var ProductNo : Integer): string3;
var
  SuppCode : string3;
begin
  sp_PkgsByInventering.Close;
  getPkgsByInventering(PkgNo, IC_GrpNo);

  sp_PkgsByInventering.Open;
  case sp_PkgsByInventering.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode   := sp_PkgsByInventering.FieldByName('SupplierCode').AsString;
           SupplierNo := sp_PkgsByInventering.FieldByName('SupplierNo'  ).AsInteger;
           ProductNo  := sp_PkgsByInventering.FieldByName('ProductNo'  ).AsInteger;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.ds_PkgsByInventering,SuppCode,SupplierNo, ProductNo);
           end;
    end;

  Result := SuppCode;
end;


procedure TdmsSystem.getPkgsNotInInven(const PkgNo, IC_GrpNo : Integer);
begin
//  sp_PkgInInven.Close;
  sp_PkgInInven.ParamByName('@PkgNo').AsInteger    := PkgNo ;
  sp_PkgInInven.ParamByName('@IC_GrpNo').AsInteger := IC_GrpNo ;
//  sp_PkgInInven.Open;
end;

function TdmsSystem.PkgNoNotInInvenToSuppCode(
  const PkgNo, IC_GrpNo : Integer;
  var SupplierNo : Integer;
  Var ProductNo : Integer): string3;
var
  SuppCode : string3;
begin
  sp_PkgInInven.Close;
  getPkgsNotInInven(PkgNo, IC_GrpNo);

  sp_PkgInInven.Open;
  case sp_PkgInInven.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '***';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode   := sp_PkgInInven.FieldByName('SupplierCode').AsString;
           SupplierNo := sp_PkgInInven.FieldByName('SupplierNo'  ).AsInteger;
           ProductNo  := sp_PkgInInven.FieldByName('ProductNo'  ).AsInteger;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.ds_PkgInInven,SuppCode,SupplierNo, ProductNo);
           end;
    end;

  Result := SuppCode;
end;




function TdmsSystem.Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
Begin
 sp_PkgInfo.ParamByName('@PackageNo').AsInteger:= PkgNo ;
 sp_PkgInfo.ParamByName('@SupplierCode').AsString:= SuppCode ;
 sp_PkgInfo.Open ;
 Result:= intToStr(PkgNo)+'/'+SuppCode+' Skapad av '+
 sp_PkgInfoCREATED_BY.AsString+' datum: '+SQLTimeStampToStr('',sp_PkgInfoCREATED.AsSQLTimeStamp)+
 ' Lager: '+sp_PkgInfoINVENTORY.AsString ;
 sp_PkgInfo.Close ;
End ;

function TdmsSystem.IsUsed_ProductGroup(const ProductGroupNo: Integer): Boolean ;
begin  
 Try
  Result := True;
  qryExec.SQL.Clear ;
  qryExec.SQL.Add('select ProductNo from OrderLine'
    + ' where ProductNo in (select ProductNo from Product where ProductGroupNo = '
    + IntToStr(ProductGroupNo) + ')');
  qryExec.Open ;
//  if qryExecProductNo.AsInteger > 0 then Exit ;
//  if qryExec.IsEmpty = False then Exit ;
  if not (qryExec.Eof and qryExec.Bof) then Exit;

  qryExec.SQL.Clear ;
  qryExec.SQL.Add('select ProductNo from PackageType'
    + ' where ProductNo in (select ProductNo from Product where ProductGroupNo = '
    + IntToStr(ProductGroupNo) + ')');
  qryExec.Open ;
  if not (qryExec.Eof and qryExec.Bof) then Exit;

  qryExec.SQL.Clear ;
  qryExec.SQL.Add('select ProductNo from SupplierShippingPlan'
    + ' where ProductNo in (select ProductNo from Product where ProductGroupNo = '
    + IntToStr(ProductGroupNo) + ')');
  qryExec.Open ;
  if not (qryExec.Eof and qryExec.Bof) then Exit;

//  qryExec.SQL.Add('select ProductNo from CustomerShippingPlanDetails'
//    + ' where ProductNo in (select ProductNo from Product where ProductGroupNo = '
//    + IntToStr(ProductGroupNo) + ')');
//  qryExec.Open ;
//  if not (qryExec.Eof and qryExec.Bof) then Exit;

  Result := False;
 Finally
  qryExec.Close ;
 End ;
end;

procedure TdmsSystem.mtMarkedCodesAfterInsert(DataSet: TDataSet);
begin
 mtMarkedCodessspNo.AsInteger       := -1 ;
 mtMarkedCodesMainProduct.AsInteger := 0 ;
end;

Function TdmsSystem.GetPackageTypeNoByPkgcode(const Pkgcode : String) : Integer ;
Begin
 Result:= -1 ;
 Try
 sq_GetPkgTypeByCode.ParamByName('PackageCode').AsString:= PkgCode ;
 sq_GetPkgTypeByCode.Open ;
 if Not sq_GetPkgTypeByCode.Eof then
  Result:= sq_GetPkgTypeByCodePackageTypeNo.AsInteger
   else
    Result:= -1 ;
 Finally
  sq_GetPkgTypeByCode.Close ;
 End ;
End ;

function TdmsSystem.GetProductLengthNoByALMM (const ALMM : String) : Integer ;
Var FALMM, NLMM : Double ;
begin
 Result := -1 ;
 FALMM  := StrToFloat(ReplaceCommas(ALMM)) ;
 NLMM   := FALMM ;

 Result:= GetProductLengthNoByALMMandNLMM(FALMM, NLMM) ;

 if Result < 0 then
 Begin
//  if MessageDlg('Längden '+FloatToStr(FALMM)+'/'+FloatToStr(NLMM)+' finns ej upplagd, vill du att den skall läggas till?',
//  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//  Begin
   cds_ProductLength.Active:= True ;
   cds_ProductLength.Append ;
   cds_ProductLengthActualLengthMM.AsFloat:= FALMM ;
   cds_ProductLengthNominalLengthMM.AsFloat:= NLMM ;
   cds_ProductLength.Post ;
   if cds_ProductLength.ChangeCount > 0 then
   cds_ProductLength.ApplyUpdates(0) ;
   Result:= cds_ProductLengthProductLengthNo.AsInteger ;
   cds_ProductLength.Active:= False ;
//  End ;//if..
 End ;
end;

function TdmsSystem.GetNomLengthOfLengthRule(const ALMM, MinNTmm, MaxNTmm : Double;const ClientNo, SurfacingNo : Integer) : Double ;
Begin
//  cds_ProdLength.Active:= False ;
  cds_ProdLength.Close ;
  cds_ProdLength.SQL.Clear ;
  cds_ProdLength.SQL.Add('Select distinct LRR.NomLength') ;
  cds_ProdLength.SQL.Add('FROM dbo.LengthRuleRow LRR') ;
  cds_ProdLength.SQL.Add('Inner Join dbo.LengthRuleGrp LRG ON LRG.LengthRuleNo = LRR.LengthRuleNo') ;
  cds_ProdLength.SQL.Add('                         AND LRG.SetNo = LRR.SetNo') ;
  cds_ProdLength.SQL.Add('Inner Join dbo.LengthRuleSet LRS ON LRS.SetNo = LRG.SetNo') ;
  cds_ProdLength.SQL.Add('Inner Join dbo.LengthRuleActive LRA ON LRA.SetNo = LRS.SetNo') ;
  cds_ProdLength.SQL.Add('WHERE') ;
  cds_ProdLength.SQL.Add('LRG.ClientNo = '+inttostr(ClientNo)) ;
  cds_ProdLength.SQL.Add('AND LRG.MinNTmm <= :MinNTmm') ;
  cds_ProdLength.SQL.Add('AND LRG.MaxNTmm >= :MaxNTmm') ;
  cds_ProdLength.SQL.Add('AND ((LRG.SurfacingNo = :SurfacingNo)') ;
  cds_ProdLength.SQL.Add('or ((LRG.SurfacingNo = 0)') ;
  cds_ProdLength.SQL.Add('AND (:SurfacingNo not in (Select LRG2.SurfacingNo from dbo.LengthRuleGrp LRG2') ;
  cds_ProdLength.SQL.Add('Inner Join dbo.LengthRuleRow LRR2 ON LRR2.LengthRuleNo = LRG2.LengthRuleNo') ;
  cds_ProdLength.SQL.Add('Inner Join dbo.LengthRuleSet LRS2 ON LRS2.SetNo = LRG2.SetNo') ;
  cds_ProdLength.SQL.Add('Inner Join dbo.LengthRuleActive LRA2 ON LRA2.SetNo = LRS2.SetNo') ;
  cds_ProdLength.SQL.Add('WHERE') ;
  cds_ProdLength.SQL.Add('LRS.ClientNo = '+inttostr(ClientNo)) ;
  cds_ProdLength.SQL.Add('AND LRG2.MinNTmm <= :MinNTmm') ;
  cds_ProdLength.SQL.Add('AND LRG2.MaxNTmm >= :MaxNTmm )) ))') ;

  cds_ProdLength.SQL.Add('AND LRR.MinActLength <= :ALMM') ;
  cds_ProdLength.SQL.Add('AND LRR.MaxActLength >= :ALMM') ;
//  cds_ProdLength.SQL.Add('AND PL.ActualLengthMM = :ALMM') ;
//  cds_ProdLength.SQL.Add('AND PL.NominalLengthMM = LRR.NomLength') ;
//  cds_ProdLength.SQL.Add('AND PL.Act = 1') ;

  cds_ProdLength.ParamByName('MinNTmm').AsFloat      := MinNTmm ;
  cds_ProdLength.ParamByName('MaxNTmm').AsFloat      := MaxNTmm ;
  cds_ProdLength.ParamByName('SurfacingNo').AsFloat  := SurfacingNo ;
  cds_ProdLength.ParamByName('ALMM').AsFloat         := ALMM ;

//  if ThisUser.UserID = 8 then
//   cds_ProdLength.SQL.SaveToFile('cds_ProdLength.txt') ;
  cds_ProdLength.Open ;
//  cds_ProdLength.Active:= True ;
  if not cds_ProdLength.Eof then
   Result:= cds_ProdLength.FieldByName('NomLength').AsFloat
    else
     Begin
      if ClientNo = 741 then
       Result:= ALMM
        else
         Result:= 0 ; 
     End ;
 cds_ProdLength.Close ;
//  cds_ProdLength.Active:= False ;
End ;

function TdmsSystem.GetProductLengthNoByLengthRule (const ALMM : String;const NT : Double;const SurfacingNo : Integer) : Integer ;
Var FALMM, NLMM : Double ;
begin
 Result := -1 ;
 FALMM  := StrToFloat(ReplaceCommas(ALMM)) ;
// if UseLengthRules then
 Begin
  if FALMM > 0 then
  Begin
   NLMM:= GetNomLengthOfLengthRule(FALMM, NT, NT, ThisUser.CompanyNo, SurfacingNo) ;
   if NLMM = 0 then
   NLMM:= GetNomLengthOfLengthRule(FALMM, NT, NT, 741, SurfacingNo) ;
   Result:= GetProductLengthNoByALMMandNLMM(FALMM, NLMM) ;
  End;
 End ;//if UseLengthRules

   if Result < 0 then
   Begin
//    if MessageDlg('Längden '+FloatToStr(FALMM)+'/'+FloatToStr(NLMM)+' finns ej upplagd, vill du att den skall läggas till?',
//    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//    Begin
      cds_ProductLength.Active:= True ;
      cds_ProductLength.Append ;
      cds_ProductLengthActualLengthMM.AsFloat:= FALMM ;
      cds_ProductLengthNominalLengthMM.AsFloat:= NLMM ;
      cds_ProductLength.Post ;
      if cds_ProductLength.ChangeCount > 0 then
      cds_ProductLength.ApplyUpdates(0) ;
      Result:= cds_ProductLengthProductLengthNo.AsInteger ;
      cds_ProductLength.Active:= False ;
//    End ;//if..
   End ;
end;

function TdmsSystem.GetProductLengthNoByALMMandNLMM(const ALMM, NLMM : Double) : Integer ;
Begin
  cds_ProductLength.Close ;
  cds_ProductLength.SQL.Clear ;
  cds_ProductLength.SQL.Add('Select distinct * ') ;
//  cds_ProductLength.SQL.Add('PL.NominalLengthFEET, PL.ActualLengthINCH, PL.PET, PL.FingerJoint') ;

  cds_ProductLength.SQL.Add('FROM dbo.ProductLength PL') ;
  cds_ProductLength.SQL.Add('WHERE') ;
  cds_ProductLength.SQL.Add('PL.ActualLengthMM = '+ReplaceCommas(FloatToStr(ALMM))) ;
  cds_ProductLength.SQL.Add('AND PL.NominalLengthMM = '+ReplaceCommas(FloatToStr(NLMM))) ;
  cds_ProductLength.SQL.Add('AND PL.Act = 1') ;
  cds_ProductLength.Open ;

  if not cds_ProductLength.Eof then
   Result:= cds_ProductLength.FieldByName('ProductLengthNo').AsInteger
    else
     Result:= -1 ;
  cds_ProductLength.Close ;
  cds_ProductLength.SQL.Clear ;
  cds_ProductLength.SQL.Add('Select * FROM dbo.ProductLength where ProductLengthNo = -1') ;
End ;

procedure TdmsSystem.cds_ProductLengthAfterInsert(DataSet: TDataSet);
begin
 cds_ProductLengthProductLengthNo.AsInteger := dmsConnector.NextMaxNo('ProductLength') ;
 cds_ProductLengthCreatedUser.AsInteger     := ThisUser.UserID ;
 cds_ProductLengthModifiedUser.AsInteger    := ThisUser.UserID ;
 cds_ProductLengthDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 cds_ProductLengthAct.AsInteger             := 1 ;
end;

procedure TdmsSystem.StoreGridLayout(const UserID : Integer;const ViewName : String;AGridView: TcxGridTableView) ;
var
  Stream: TMemoryStream;
begin
 With dmsSystem do
 Begin
  sq_GridSettings.Active:= False ;
  sq_GridSettings.ParamByName('ViewName').AsString:= ViewName ;
  sq_GridSettings.ParamByName('UserID').AsInteger := UserID ;
  sq_GridSettings.Active:= True ;
  if not sq_GridSettings.Eof then
  sq_GridSettings.Edit
  else
  Begin
   sq_GridSettings.Insert ;
   sq_GridSettingsViewName.AsString:= ViewName ;
   sq_GridSettingsUserID.AsInteger := UserID ;
  End ;
  if sq_GridSettings.State in  [dsEdit, dsInsert] then
  begin
   Stream := TMemoryStream.Create;
   try
    AGridView.StoreToStream(Stream);
    Stream.Position := 0;
    sq_GridSettingsSets.LoadFromStream(Stream);
   finally
    Stream.Free;
   end;
   sq_GridSettings.Post;
   if sq_GridSettings.ChangeCount > 0 then
    sq_GridSettings.ApplyUpdates(0) ;
  end;
  sq_GridSettings.Active:= False ;
 End ;
end;

function TdmsSystem.LoadGridLayout(const UserID : Integer;const ViewName : String;AGridView: TcxGridTableView) : Boolean ;
var
  Stream: TMemoryStream;
begin
 Result:= False ;
 With dmsSystem do
 Begin
  sq_GridSettings.ParamByName('ViewName').AsString  := ViewName ;
  sq_GridSettings.ParamByName('UserID').AsInteger   := UserID ;
  sq_GridSettings.Active:= True ;
  if not sq_GridSettings.Eof then
  Begin
   Stream := TMemoryStream.Create;
   try
    sq_GridSettingsSets.SaveToStream(Stream);
    Stream.Position := 0;
    AGridView.RestoreFromStream(Stream);
    Result:= True ;
   finally
    Stream.Free;
   end;
  End ;
  sq_GridSettings.Active:= False ;
 End ;
end;

procedure TdmsSystem.StorePivotLayout(const UserID : Integer;const ViewName : String;APivot: TcxCustomPivotGrid;const Form, MallName : String) ;
var
  Stream: TMemoryStream;
begin
 With dmsSystem do
 Begin
  sq_GridSets2.Active:= False ;
  sq_GridSets2.ParamByName('ViewName').AsString  := ViewName + '/' + MallName ;
  sq_GridSets2.ParamByName('UserID').AsInteger   := UserID ;
//  sq_GridSets2.ParamByName('Form').AsString      := Form ;
//  sq_GridSets2.ParamByName('Name').AsString      := MallName ;
  Try
  sq_GridSets2.Active:= True ;
//  if not sq_GridSettings.Eof then
  if sq_GridSets2.RecordCount > 0 then
  sq_GridSets2.Edit
  else
  Begin
   sq_GridSets2.Insert ;
   sq_GridSets2ViewName.AsString  := ViewName + '/' + MallName ;
   sq_GridSets2UserID.AsInteger   := UserID ;
   sq_GridSets2Form.AsString      := Form ;
   sq_GridSets2Name.AsString      := MallName ;
  End ;
  if sq_GridSets2.State in  [dsEdit, dsInsert] then
  begin
   Stream := TMemoryStream.Create;
   try
    APivot.StoreToStream(Stream);

    Stream.Position := 0;

    TBlobField(sq_GridSets2.FieldByName('Sets')).LoadFromStream(Stream);



//    sq_GridSets2.LoadFromStream(Stream);
   finally
    Stream.Free;
   end;
   if sq_GridSets2.State in  [dsEdit, dsInsert] then
   sq_GridSets2.Post;
   if sq_GridSets2.ChangeCount > 0 then
    sq_GridSets2.ApplyUpdates(0) ;
  end;
  Finally
   sq_GridSets2.Close ;
   sq_GridSets2.Active:= False ;
  End ;
 End ;
end;

//APivot: TcxCustomPivotGrid
function TdmsSystem.LoadPivotLayout(const UserID : Integer;const ViewName : String;APivot: TcxCustomPivotGrid;const Form, MallName : String)  : Boolean ;
var
  Stream: TMemoryStream;
begin
 Result:= False ;
 With dmsSystem do
 Begin
  sq_GridSets2.Active:= False ;
  Try
  sq_GridSets2.ParamByName('ViewName').AsString  := ViewName + '/' + MallName ;
  sq_GridSets2.ParamByName('UserID').AsInteger   := UserID ;
//  sq_GridSets2.ParamByName('Form').AsString      := Form ;
//  sq_GridSets2.ParamByName('Name').AsString      := MallName ;
  sq_GridSets2.Active:= True ;
  if not sq_GridSets2.Eof then
  Begin
   Stream := TMemoryStream.Create;
   try
    TBlobField(sq_GridSets2.FieldByName('Sets')).SaveToStream(Stream);
//    sq_GridSets2Sets.SaveToStream(Stream);
    Stream.Position := 0;
    APivot.RestoreFromStream(Stream);
    Result:= True ;
   finally
    Stream.Free;
   end;
  End ;
  Finally
   sq_GridSets2.Active:= False ;
  End ;
 End ;
end;

function TdmsSystem.GetRegPointNoOfRegPointName(const RegPointName : String) : Integer ;
Begin
 Try
  sq_GetRegPointNo.ParamByName('RegPointName').AsString := RegPointName ;
  sq_GetRegPointNo.Open ;
  if not sq_GetRegPointNo.Eof then
   Result:= sq_GetRegPointNoRegPointNo.AsInteger
    else
     Result:= -1 ;
 Finally
  sq_GetRegPointNo.Close ;
 End ;
End ;

function TdmsSystem.LoadGridLayout_Special(const UserID : Integer;const Form, ViewName : String;
AGridView: TcxGridTableView;const MallName : String) : Boolean ;
var
  Stream: TMemoryStream;
begin
 Result:= False ;
 With dmsSystem do
 Begin
  sq_GridSets2.ParamByName('ViewName').AsString  := ViewName ;
  sq_GridSets2.ParamByName('UserID').AsInteger   := UserID ;
//  sq_GridSets2.ParamByName('Form').AsString      := Form ;
//  sq_GridSets2.ParamByName('Name').AsString      := MallName ;
  sq_GridSets2.Active:= True ;
  if not sq_GridSets2.Eof then
  Begin
   Stream := TMemoryStream.Create;
   try
    sq_GridSets2Sets.SaveToStream(Stream);
    Stream.Position := 0;
    AGridView.RestoreFromStream(Stream);
    Result:= True ;
   finally
    Stream.Free;
   end;
  End ;
  sq_GridSets2.Active:= False ;
 End ;
end;

procedure TdmsSystem.StoreGridLayout_Special(const UserID : Integer;const Form, ViewName : String;
AGridView: TcxGridTableView;const MallName : String) ;
var
  Stream: TMemoryStream;
begin
 With dmsSystem do
 Begin
  sq_GridSets2.ParamByName('ViewName').AsString  := ViewName ;
  sq_GridSets2.ParamByName('UserID').AsInteger   := UserID ;
//  sq_GridSets2.ParamByName('Form').AsString      := Form ;
//  sq_GridSets2.ParamByName('Name').AsString      := MallName ;

  sq_GridSets2.Active:= True ;
  if not sq_GridSets2.Eof then
  sq_GridSets2.Edit
  else
  Begin
   sq_GridSets2.Insert ;
   sq_GridSets2ViewName.AsString  := ViewName ;
   sq_GridSets2UserID.AsInteger   := UserID ;
   sq_GridSets2Form.AsString      := Form ;
   sq_GridSets2Name.AsString      := MallName ;
  End ;
  if sq_GridSets2.State in  [dsEdit, dsInsert] then
  begin
   Stream := TMemoryStream.Create;
   try
    AGridView.StoreToStream(Stream);
    Stream.Position := 0;
    sq_GridSets2Sets.LoadFromStream(Stream);
   finally
    Stream.Free;
   end;
   if sq_GridSets2.State in [dsEdit, dsInsert] then
   sq_GridSets2.Post;
   if sq_GridSets2.ChangeCount > 0 then
    sq_GridSets2.ApplyUpdates(0) ;
  end;
  sq_GridSets2.Active:= False ;
 End ;
end;

function GetFileSize(sFileName: string): Int64;
var
  f: Cardinal;
begin
  f := FileOpen(sFileName, fmOpenRead);
  Result := FileSeek(F, 0, 2);
  FileClose(F);
  {
  with TFileStream.Create(sFileName, fmOpenRead) do
  try
    Result := Size;
  finally
    Free;
  end;
  }
end;

procedure TdmsSystem.FDoLog(s: string);
var
  sName: string;
  f: Text;
//  bRename: Boolean;
begin
  if LOG_ENABLE then
  Begin
//   sName := 'c:\' + ParamStr(0) + '.log';// + FormatDateTime('yyyy.mm.dd_hh.nn.ss_zzz.', now) + s;
   sName := dmsConnector.DriveLetter + 'Vis_Lager' + '.log';
   AssignFile(F, sName);
   if not FileExists(sName) then
    Rewrite(F)
   else
   begin
    Append(F);
   end;
   Writeln(F, FormatDateTime('yyyy.mm.dd hh:nn:ss zzz    ', now) + s);
   CloseFile(F);
   if GetFileSize(sName) >= 512 * 1024 then
    RenameFile(sName, sName + FormatDateTime('.yyyy.mm.dd_hh.nn.ss.zzz', now))
  End ;
end;

procedure TdmsSystem.getNonActivePkgsExt(const PkgNo  : Integer;const Prefix  : String3);
begin
//  sp_NonActivePkgEXT.Close;
  sp_NonActivePkgEXT.ParamByName('@PkgNo').AsInteger             := PkgNo;
  sp_NonActivePkgEXT.ParamByName('@Prefix').AsString             := Prefix ;
//  sp_NonActivePkgEXT.Open;
end;

//Hämta in paketnr som inte finns i frågarens lager
function TdmsSystem.GetNonActivePkgNoExt(
  const PkgNo, InventoryPlaceNo, InventoryOwner : Integer;
  var SupplierNo : Integer;
  Var ProductNo : Integer;
  const SuppCode : string3): string3 ;
Var LSuppCode : string3 ;
begin
  Result := '' ;
  sp_NonActivePkgEXT.Close;
  getNonActivePkgsExt(PkgNo, SuppCode);

  sp_NonActivePkgEXT.Open;
  case sp_NonActivePkgEXT.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           Result := '';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           Result   := sp_NonActivePkgEXT.FieldByName('SupplierCode').AsString;
           SupplierNo := sp_NonActivePkgEXT.FieldByName('SupplierNo'  ).AsInteger;
           ProductNo  := sp_NonActivePkgEXT.FieldByName('ProductNo'  ).AsInteger;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
            Begin
             FOnAmbiguousPkgNo(Self,Self.ds_NonActivePkgsExt, LSuppCode, SupplierNo, ProductNo);
             Result := LSuppCode;
            End ;
           end;
    end;

//  Result := SuppCode;
end;

function TdmsSystem.PackagesNotInOwnAvregLogg (const PkgNo, OwnerNo : Integer;const PkgSupplierCode : String) : Boolean ;
Begin
 sp_PkgsExistInAvregLogg.ParamByName('@PackageNo').AsInteger  := PkgNo ;
 sp_PkgsExistInAvregLogg.ParamByName('@OwnerNo').AsInteger    := OwnerNo ;
 sp_PkgsExistInAvregLogg.ParamByName('@Prefix').AsString      := PkgSupplierCode ;
 Try
 sp_PkgsExistInAvregLogg.Active := True ;
 if not sp_PkgsExistInAvregLogg.Eof then
  Result  := True
   else
    Result  := False ;
 Finally
   sp_PkgsExistInAvregLogg.Active := False ;
 End;
End;


end.
