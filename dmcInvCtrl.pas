unit dmcInvCtrl;

interface

uses
  SysUtils, Classes, kbmMemTable, SqlTimSt, VidaType,
  Controls, Dialogs, Forms, Variants, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt, DB ;


type
 TAmbiguityEvent = procedure(
    Sender : TObject;

    DataSource : TDataSource;
    var Choice : String3;
    var SupplierNo : Integer;
    var ProductNo : Integer;
    Var LogicalInventoryPointNo : Integer;
    Var PackageTypeNo : Integer) of object;

  TdmInvCtrl = class(TDataModule)
    ds_InvCtrlGrp: TDataSource;
    ds_InvCtrlMetod: TDataSource;
    ds_PhysInv: TDataSource;
    ds_InvCtrl_LagerStallen: TDataSource;
    mtMetod: TkbmMemTable;
    mtMetodInventeringsMetod: TIntegerField;
    mtMetodMetod: TStringField;
    mtInvCtrlStatus: TkbmMemTable;
    mtInvCtrlStatusStatus: TIntegerField;
    mtInvCtrlStatusStatusNamn: TStringField;
    ds_InvCtrlStatus: TDataSource;
    ds_InvCtrlList: TDataSource;
    ds_InvCtrl_Pkgs: TDataSource;
    ds_InvCtrl_PaReg: TDataSource;
    ds_InLev: TDataSource;
    ds_UtLev: TDataSource;
    ds_GetPrd: TDataSource;
    ds_SurfGrpHdr: TDataSource;
    ds_SurGrpRow: TDataSource;
    ds_ChgPkg: TDataSource;
    ds_GetAvrRegPrd: TDataSource;
    ds_Lager: TDataSource;
    mtSelectedPkgNo: TkbmMemTable;
    mtSelectedPkgNoPAKETNR: TIntegerField;
    mtSelectedPkgNoLEVKOD: TStringField;
    mtSelectedPkgNoSTYCKPERLNGD: TStringField;
    mtSelectedPkgNoAM3: TFloatField;
    mtSelectedPkgNoSTYCK: TIntegerField;
    mtSelectedPkgNoREGISTRERAT: TSQLTimeStampField;
    mtSelectedPkgNoMARKERAD: TIntegerField;
    ds_ClientList: TDataSource;
    ds_GetAvrBefore: TDataSource;
    ds_GetPrdBefore: TDataSource;
    mtSelectedPkgNoProductNo: TIntegerField;
    ds_SicHdr: TDataSource;
    ds_SicRow: TDataSource;
    ds_Sic_IC_grp: TDataSource;
    ds_Sic_LIP: TDataSource;
    ds_LIP: TDataSource;
    mtTempData: TkbmMemTable;
    mtTempDataClientNo: TIntegerField;
    mtTempDataVerk: TStringField;
    mtTempDatafiYear: TIntegerField;
    mtTempDatafiMonth: TIntegerField;
    mtTempDataAllaPerioder: TIntegerField;
    ds_CtrlList: TDataSource;
    ds_InvenRow: TDataSource;
    ds_InvenRow_all: TDataSource;
    ds_CreateInvs: TDataSource;
    mtUserProp: TkbmMemTable;
    mtUserPropVerkNo: TIntegerField;
    mtUserPropOwnerNo: TIntegerField;
    mtUserPropPIPNo: TIntegerField;
    mtUserPropLIPNo: TIntegerField;
    mtUserPropInputOption: TIntegerField;
    mtUserPropRegPointNo: TIntegerField;
    mtUserPropRegDate: TDateTimeField;
    mtUserPropCopyPcs: TIntegerField;
    mtUserPropRunNo: TIntegerField;
    mtUserPropProducerNo: TIntegerField;
    mtUserPropAutoColWidth: TIntegerField;
    mtUserPropSupplierCode: TStringField;
    mtUserPropLengthOption: TIntegerField;
    mtUserPropLengthGroupNo: TIntegerField;
    mtUserPropNewItemRow: TIntegerField;
    mtUserPropGradeStampNo: TIntegerField;
    mtUserPropBarCodeNo: TIntegerField;
    mtUserPropLengthGroup: TStringField;
    mtUserPropLIPName: TStringField;
    mtUserPropPIPNAME: TStringField;
    mtUserPropREGPOINT: TStringField;
    mtUserPropPRODUCER: TStringField;
    mtUserPropOWNER: TStringField;
    mtUserPropVERK: TStringField;
    mtUserPropRoleType: TIntegerField;
    mtUserPropGradestamp: TStringField;
    mtUserPropBarcode: TStringField;
    mtUserPropProductDescription: TStringField;
    mtUserPropProductNo: TIntegerField;
    mtUserPropProductGroupNo: TIntegerField;
    mtUserPropLIPChange: TIntegerField;
    mtUserPropSalesRegionNo: TIntegerField;
    mtUserPropVolumeUnitNo: TIntegerField;
    mtUserPropLengthFormatNo: TIntegerField;
    mtUserPropForm: TStringField;
    mtUserPropUserID: TIntegerField;
    mtUserPropLengthVolUnitNo: TIntegerField;
    mtUserPropSurfacingNo: TIntegerField;
    mtUserPropNOMTHICK: TFloatField;
    mtUserPropGroupByBox: TIntegerField;
    mtUserPropGroupSummary: TIntegerField;
    mtUserPropAgentNo: TIntegerField;
    mtUserPropShipperNo: TIntegerField;
    mtUserPropStartPeriod: TDateTimeField;
    mtUserPropEndPeriod: TDateTimeField;
    dsUserProp: TDataSource;
    ds_SicPG: TDataSource;
    ds_PriceGroup: TDataSource;
    ds_GP: TDataSource;
    ds_SicRow_PG: TDataSource;
    ds_InvCtrlListSIC: TDataSource;
    ds_CreditInLev: TDataSource;
    cds_InvCtrlGrp: TFDQuery;
    cds_InvCtrlGrpIC_grpno: TIntegerField;
    cds_InvCtrlGrpPhyInvPointNameNo: TIntegerField;
    cds_InvCtrlGrpOwnerNo: TIntegerField;
    cds_InvCtrlGrpInventeringsdatum: TSQLTimeStampField;
    cds_InvCtrlGrpNote: TMemoField;
    cds_InvCtrlGrpVerkNo: TIntegerField;
    cds_InvCtrlGrpStatus: TIntegerField;
    cds_InvCtrlGrpGrupperRapportPerTS: TIntegerField;
    cds_InvCtrlGrpMaxDatum: TSQLTimeStampField;
    cds_InvCtrlGrpPriceListNo: TIntegerField;
    cds_InvCtrlGrpCreatedUser: TIntegerField;
    cds_InvCtrlGrpDateCreated: TSQLTimeStampField;
    cds_InvCtrlGrpNamn: TStringField;
    cds_InvCtrlList: TFDQuery;
    cds_InvCtrlListINVENTERINGSNR: TIntegerField;
    cds_InvCtrlListINVENTERINGSDATUM: TSQLTimeStampField;
    cds_InvCtrlListSTATUS: TStringField;
    cds_InvCtrlListMAXDATUM: TSQLTimeStampField;
    cds_InvCtrlListNAMN: TStringField;
    cds_InvCtrlListLager: TStringField;
    cds_InvCtrlListSkapadAv: TStringField;
    cds_InvCtrlMetod2: TFDQuery;
    cds_InvCtrlMetod2IC_grpNo: TIntegerField;
    cds_InvCtrlMetod2LogicalInventoryPointNo: TIntegerField;
    cds_InvCtrlMetod2InventeringsMetod: TIntegerField;
    cds_InvCtrlMetod2LogicalInventoryName: TStringField;
    cds_InvCtrlMetod2OwnerName: TStringField;
    cds_InvCtrlMetod2OwnerNo: TIntegerField;
    cds_InvCtrlMetod2InLevLipNo: TIntegerField;
    cds_InvCtrlMetod2InventoryValue: TFloatField;
    cds_InvCtrlMetod2TotalNM3: TFloatField;
    cds_InvCtrlMetod2AvgPricePerNM3: TFloatField;
    cds_InvCtrlMetod2PIPNo: TIntegerField;
    cds_InvCtrlMetod2Metod: TStringField;
    cds_InvCtrl_LagerStallen: TFDQuery;
    cds_InvCtrl_LagerStallenIC_grpno: TIntegerField;
    cds_InvCtrl_LagerStallenPhysicalInventoryPointNo: TIntegerField;
    cds_InvCtrl_LagerStallenOwnerName: TStringField;
    cds_InvCtrl_LagerStallenLagerStalle: TStringField;
    cds_InvenRow: TFDQuery;
    cds_InvenRowIC_GrpNo: TIntegerField;
    cds_InvenRowLogicalInventoryPointNo: TIntegerField;
    cds_InvenRowInventeringsMetod: TIntegerField;
    cds_InvenRowPackageNo: TIntegerField;
    cds_InvenRowSuppliercode: TStringField;
    cds_InvenRowPackageTypeNo: TIntegerField;
    cds_InvenRowNoOfPkgs: TIntegerField;
    cds_InvenRowAntalPaketILager: TIntegerField;
    cds_InvenRowLogicalInventoryName: TStringField;
    cds_InvenRowStatus: TIntegerField;
    cds_InvenRowOwnerNo: TIntegerField;
    cds_InvenRowLONo: TIntegerField;
    cds_InvenRowRes01: TIntegerField;
    cds_InvenRowANTPERLÄNGD: TStringField;
    cds_InvenRowPRODUKT: TStringField;
    cds_InvenRowSTYCK: TIntegerField;
    cds_InvenRowAM3: TFloatField;
    cds_InvenRowNM3: TFloatField;
    cds_InvenRowKälla: TStringField;
    cds_PhysInv: TFDQuery;
    cds_PhysInvPhyInvPointNameNo: TIntegerField;
    cds_PhysInvLagerStalle: TStringField;
    cds_PhysInvPhysicalInventoryPointNo: TIntegerField;
    cds_PhysInvClientName: TStringField;
    cds_PhysInvCITYNAME: TStringField;
    cds_SurfGrpHdr: TFDQuery;
    cds_SurfGrpHdrSurfacingGroupNo: TIntegerField;
    cds_SurfGrpHdrClientNo: TIntegerField;
    cds_SurfGrpHdrSurfacingGroupName: TStringField;
    cds_SurfGrpHdrDateCreated: TSQLTimeStampField;
    cds_SurfGrpHdrCreatedUser: TIntegerField;
    cds_SurfGrpHdrLIPNo: TIntegerField;
    cds_InvenRow_all: TFDQuery;
    cds_InvenRow_allIC_GrpNo: TIntegerField;
    cds_InvenRow_allLogicalInventoryPointNo: TIntegerField;
    cds_InvenRow_allInventeringsMetod: TIntegerField;
    cds_InvenRow_allPackageNo: TIntegerField;
    cds_InvenRow_allSuppliercode: TStringField;
    cds_InvenRow_allPackageTypeNo: TIntegerField;
    cds_InvenRow_allNoOfPkgs: TIntegerField;
    cds_InvenRow_allAntalPaketILager: TIntegerField;
    cds_InvenRow_allLogicalInventoryName: TStringField;
    cds_InvenRow_allStatus: TIntegerField;
    cds_InvenRow_allOwnerNo: TIntegerField;
    cds_InvenRow_allLONo: TIntegerField;
    cds_InvenRow_allRes01: TIntegerField;
    cds_InvenRow_allANTPERLÄNGD: TStringField;
    cds_InvenRow_allPRODUKT: TStringField;
    cds_InvenRow_allSTYCK: TIntegerField;
    cds_InvenRow_allAM3: TFloatField;
    cds_InvenRow_allNM3: TFloatField;
    cds_InvenRow_allKälla: TStringField;
    cds_GP: TFDQuery;
    cds_GPPriceGroupNo: TIntegerField;
    cds_GPIC_GrpNo: TIntegerField;
    cds_GPPricePerNM3: TFloatField;
    cds_GPMaxDatum: TSQLTimeStampField;
    cds_CreateInvs: TFDQuery;
    cds_CreateInvsInventera: TIntegerField;
    cds_CreateInvsInvNr: TIntegerField;
    cds_CreateInvsÄgare: TStringField;
    cds_CreateInvsLS: TStringField;
    cds_CreateInvsLG: TStringField;
    cds_CreateInvsKontrollistaPkt: TIntegerField;
    cds_CreateInvsKontrollistaNM3: TFloatField;
    cds_CreateInvsResultalistaPkt: TIntegerField;
    cds_CreateInvsResultatlistaNM3: TFloatField;
    cds_CreateInvsLIPNo: TIntegerField;
    cds_CreateInvsIntVerk: TIntegerField;
    cds_CreateInvsOwnerNo: TIntegerField;
    cds_CreateInvsPIPNo: TIntegerField;
    cds_CreateInvsInventeringsdatum: TSQLTimeStampField;
    cds_CreateInvsmaxdatum: TSQLTimeStampField;
    cds_CreateInvsStatus: TIntegerField;
    cds_CreateInvsSkapadAv: TStringField;
    cds_CreateInvsVärde: TFloatField;
    cds_CreateInvsNM3: TFloatField;
    cds_CreateInvsMedelpris: TFloatField;
    cds_Lager: TFDQuery;
    cds_LagerLIPNo: TIntegerField;
    cds_LagerLager: TStringField;
    cds_LagerCITYNAME: TStringField;
    cds_LagerLogicalInventoryName: TStringField;
    cds_InvCtrlListSIC: TFDQuery;
    cds_InvCtrlListSICINVENTERINGSNR: TIntegerField;
    cds_InvCtrlListSICINVENTERINGSDATUM: TSQLTimeStampField;
    cds_InvCtrlListSICSTATUS: TStringField;
    cds_InvCtrlListSICMAXDATUM: TSQLTimeStampField;
    cds_InvCtrlListSICNAMN: TStringField;
    cds_InvCtrlListSICLager: TStringField;
    cds_InvCtrlListSICSkapadAv: TStringField;
    cds_CtrlList: TFDQuery;
    cds_CtrlListIC_GrpNo: TIntegerField;
    cds_CtrlListLogicalInventoryPointNo: TIntegerField;
    cds_CtrlListInventeringsMetod: TIntegerField;
    cds_CtrlListPackageNo: TIntegerField;
    cds_CtrlListSuppliercode: TStringField;
    cds_CtrlListPackageTypeNo: TIntegerField;
    cds_CtrlListNoOfPkgs: TIntegerField;
    cds_CtrlListAntalPaketILager: TIntegerField;
    cds_CtrlListLogicalInventoryName: TStringField;
    cds_CtrlListStatus: TIntegerField;
    cds_CtrlListOwnerNo: TIntegerField;
    cds_CtrlListLONo: TIntegerField;
    cds_CtrlListRes01: TIntegerField;
    cds_CtrlListANTPERLÄNGD: TStringField;
    cds_CtrlListPRODUKT: TStringField;
    cds_CtrlListSTYCK: TIntegerField;
    cds_CtrlListAM3: TFloatField;
    cds_CtrlListNM3: TFloatField;
    cds_CtrlListKälla: TStringField;
    cds_SicHdr: TFDQuery;
    cds_SicHdrSic_No: TIntegerField;
    cds_SicHdrDescription: TStringField;
    cds_SicHdrVerkNo: TIntegerField;
    cds_SicHdrDateCreated: TSQLTimeStampField;
    cds_SicHdrCreatedUser: TIntegerField;
    cds_SicHdrStatus: TIntegerField;
    cds_SicHdrInvYear: TIntegerField;
    cds_SicHdrInvMonth: TIntegerField;
    cds_SicHdrVerk: TStringField;
    cds_GetPrdBefore: TFDQuery;
    cds_GetPrdBeforeIC_GrpNo: TIntegerField;
    cds_GetPrdBeforePackageNo: TIntegerField;
    cds_GetPrdBeforeSupplierCode: TStringField;
    cds_GetPrdBeforeOperation: TIntegerField;
    cds_GetPrdBeforeDateCreated: TSQLTimeStampField;
    cds_GetPrdBeforeLogicalInventoryPointNo: TIntegerField;
    cds_GetPrdBeforeSortorderno: TIntegerField;
    cds_GetPrdBeforeStatus: TIntegerField;
    cds_GetPrdBeforeLONo: TIntegerField;
    cds_GetPrdBeforeRes01: TIntegerField;
    cds_GetPrdBeforeANTPERLÄNGD: TStringField;
    cds_GetPrdBeforePRODUKT: TStringField;
    cds_GetPrdBeforeSTYCK: TIntegerField;
    cds_GetPrdBeforeAM3: TFloatField;
    cds_GetPrdBeforeNM3: TFloatField;
    cds_GetPrdBeforeLager: TStringField;
    cds_GetAvrBefore: TFDQuery;
    cds_GetAvrBeforeIC_GrpNo: TIntegerField;
    cds_GetAvrBeforePackageNo: TIntegerField;
    cds_GetAvrBeforeSupplierCode: TStringField;
    cds_GetAvrBeforeOperation: TIntegerField;
    cds_GetAvrBeforeDateCreated: TSQLTimeStampField;
    cds_GetAvrBeforeLogicalInventoryPointNo: TIntegerField;
    cds_GetAvrBeforeSortorderno: TIntegerField;
    cds_GetAvrBeforeStatus: TIntegerField;
    cds_GetAvrBeforeLONo: TIntegerField;
    cds_GetAvrBeforeRes01: TIntegerField;
    cds_GetAvrBeforeANTPERLÄNGD: TStringField;
    cds_GetAvrBeforePRODUKT: TStringField;
    cds_GetAvrBeforeSTYCK: TIntegerField;
    cds_GetAvrBeforeAM3: TFloatField;
    cds_GetAvrBeforeNM3: TFloatField;
    cds_GetAvrBeforeLager: TStringField;
    cds_GetAvrRegPrd: TFDQuery;
    cds_GetAvrRegPrdIC_GrpNo: TIntegerField;
    cds_GetAvrRegPrdPackageNo: TIntegerField;
    cds_GetAvrRegPrdSupplierCode: TStringField;
    cds_GetAvrRegPrdOperation: TIntegerField;
    cds_GetAvrRegPrdDateCreated: TSQLTimeStampField;
    cds_GetAvrRegPrdLogicalInventoryPointNo: TIntegerField;
    cds_GetAvrRegPrdSortorderno: TIntegerField;
    cds_GetAvrRegPrdStatus: TIntegerField;
    cds_GetAvrRegPrdLONo: TIntegerField;
    cds_GetAvrRegPrdRes01: TIntegerField;
    cds_GetAvrRegPrdANTPERLÄNGD: TStringField;
    cds_GetAvrRegPrdPRODUKT: TStringField;
    cds_GetAvrRegPrdSTYCK: TIntegerField;
    cds_GetAvrRegPrdAM3: TFloatField;
    cds_GetAvrRegPrdNM3: TFloatField;
    cds_GetAvrRegPrdLager: TStringField;
    cds_ChgPkg: TFDQuery;
    cds_ChgPkgIC_GrpNo: TIntegerField;
    cds_ChgPkgPackageNo: TIntegerField;
    cds_ChgPkgSupplierCode: TStringField;
    cds_ChgPkgOperation: TIntegerField;
    cds_ChgPkgDateCreated: TSQLTimeStampField;
    cds_ChgPkgLogicalInventoryPointNo: TIntegerField;
    cds_ChgPkgSortorderno: TIntegerField;
    cds_ChgPkgStatus: TIntegerField;
    cds_ChgPkgLONo: TIntegerField;
    cds_ChgPkgRes01: TIntegerField;
    cds_ChgPkgANTPERLÄNGD: TStringField;
    cds_ChgPkgPRODUKT: TStringField;
    cds_ChgPkgSTYCK: TIntegerField;
    cds_ChgPkgAM3: TFloatField;
    cds_ChgPkgNM3: TFloatField;
    cds_ChgPkgLager: TStringField;
    cds_GetPrd: TFDQuery;
    cds_GetPrdIC_GrpNo: TIntegerField;
    cds_GetPrdPackageNo: TIntegerField;
    cds_GetPrdSupplierCode: TStringField;
    cds_GetPrdOperation: TIntegerField;
    cds_GetPrdDateCreated: TSQLTimeStampField;
    cds_GetPrdLogicalInventoryPointNo: TIntegerField;
    cds_GetPrdSortorderno: TIntegerField;
    cds_GetPrdStatus: TIntegerField;
    cds_GetPrdLONo: TIntegerField;
    cds_GetPrdRes01: TIntegerField;
    cds_GetPrdANTPERLÄNGD: TStringField;
    cds_GetPrdPRODUKT: TStringField;
    cds_GetPrdSTYCK: TIntegerField;
    cds_GetPrdAM3: TFloatField;
    cds_GetPrdNM3: TFloatField;
    cds_GetPrdLager: TStringField;
    cds_GetPrdLO: TIntegerField;
    cds_UtLev: TFDQuery;
    cds_UtLevIC_GrpNo: TIntegerField;
    cds_UtLevPackageNo: TIntegerField;
    cds_UtLevSupplierCode: TStringField;
    cds_UtLevOperation: TIntegerField;
    cds_UtLevDateCreated: TSQLTimeStampField;
    cds_UtLevLogicalInventoryPointNo: TIntegerField;
    cds_UtLevSortorderno: TIntegerField;
    cds_UtLevStatus: TIntegerField;
    cds_UtLevLONo: TIntegerField;
    cds_UtLevRes01: TIntegerField;
    cds_UtLevANTPERLÄNGD: TStringField;
    cds_UtLevPRODUKT: TStringField;
    cds_UtLevSTYCK: TIntegerField;
    cds_UtLevAM3: TFloatField;
    cds_UtLevNM3: TFloatField;
    cds_UtLevInCtrlList: TIntegerField;
    cds_InLev: TFDQuery;
    cds_InLevIC_GrpNo: TIntegerField;
    cds_InLevPackageNo: TIntegerField;
    cds_InLevSupplierCode: TStringField;
    cds_InLevOperation: TIntegerField;
    cds_InLevDateCreated: TSQLTimeStampField;
    cds_InLevLogicalInventoryPointNo: TIntegerField;
    cds_InLevSortorderno: TIntegerField;
    cds_InLevStatus: TIntegerField;
    cds_InLevLONo: TIntegerField;
    cds_InLevRes01: TIntegerField;
    cds_InLevANTPERLÄNGD: TStringField;
    cds_InLevPRODUKT: TStringField;
    cds_InLevSTYCK: TIntegerField;
    cds_InLevAM3: TFloatField;
    cds_InLevNM3: TFloatField;
    cds_InLevLager: TStringField;
    cds_InvCtrl_PaReg: TFDQuery;
    cds_InvCtrl_PaRegIC_GrpNo: TIntegerField;
    cds_InvCtrl_PaRegPackageNo: TIntegerField;
    cds_InvCtrl_PaRegSupplierCode: TStringField;
    cds_InvCtrl_PaRegOperation: TIntegerField;
    cds_InvCtrl_PaRegDateCreated: TSQLTimeStampField;
    cds_InvCtrl_PaRegLogicalInventoryPointNo: TIntegerField;
    cds_InvCtrl_PaRegSortorderno: TIntegerField;
    cds_InvCtrl_PaRegStatus: TIntegerField;
    cds_InvCtrl_PaRegLONo: TIntegerField;
    cds_InvCtrl_PaRegRes01: TIntegerField;
    cds_InvCtrl_PaRegANTPERLÄNGD: TStringField;
    cds_InvCtrl_PaRegPRODUKT: TStringField;
    cds_InvCtrl_PaRegSTYCK: TIntegerField;
    cds_InvCtrl_PaRegAM3: TFloatField;
    cds_InvCtrl_PaRegNM3: TFloatField;
    cds_InvCtrl_PaRegLager: TStringField;
    cds_InvCtrl_Pkgs: TFDQuery;
    cds_InvCtrl_PkgsIC_GrpNo: TIntegerField;
    cds_InvCtrl_PkgsPackageNo: TIntegerField;
    cds_InvCtrl_PkgsSupplierCode: TStringField;
    cds_InvCtrl_PkgsOperation: TIntegerField;
    cds_InvCtrl_PkgsDateCreated: TSQLTimeStampField;
    cds_InvCtrl_PkgsLogicalInventoryPointNo: TIntegerField;
    cds_InvCtrl_PkgsSortorderno: TIntegerField;
    cds_InvCtrl_PkgsStatus: TIntegerField;
    cds_InvCtrl_PkgsLONo: TIntegerField;
    cds_InvCtrl_PkgsRes01: TIntegerField;
    cds_InvCtrl_PkgsANTPERLÄNGD: TStringField;
    cds_InvCtrl_PkgsPRODUKT: TStringField;
    cds_InvCtrl_PkgsSTYCK: TIntegerField;
    cds_InvCtrl_PkgsAM3: TFloatField;
    cds_InvCtrl_PkgsNM3: TFloatField;
    cds_InvCtrl_PkgsLager: TStringField;
    cds_InvCtrl_PkgsProducerad: TSQLTimeStampField;
    cds_PriceGroup: TFDQuery;
    cds_PriceGroupPriceGroupNo: TIntegerField;
    cds_PriceGroupPriceGroupName: TStringField;
    cds_PriceGroupOwnerNo: TIntegerField;
    cds_PriceGroupDateCreated: TSQLTimeStampField;
    cds_PriceGroupCreatedUser: TIntegerField;
    cds_SicRow: TFDQuery;
    cds_SicRowSic_No: TIntegerField;
    cds_SicRowRowName: TStringField;
    cds_SicRowLIPGroupNo: TStringField;
    cds_SicRowNM3: TFloatField;
    cds_SicRowPrice: TFloatField;
    cds_SicRowAdmCost: TFloatField;
    cds_SicRowPlanerShavingsCost: TFloatField;
    cds_SicRowPlaningCost: TFloatField;
    cds_SicRowSortingCost: TFloatField;
    cds_SicRowKilnDryingCost: TFloatField;
    cds_SicRowCalcPrice: TFloatField;
    cds_SicRowTotalValue: TFloatField;
    cds_Sic_IC_grp: TFDQuery;
    cds_Sic_IC_grpSic_No: TIntegerField;
    cds_Sic_IC_grpIC_grpno: TIntegerField;
    cds_Sic_IC_grpINVENTERINGSDATUM: TSQLTimeStampField;
    cds_Sic_IC_grpMAXDATUM: TSQLTimeStampField;
    cds_Sic_IC_grpNAMN: TStringField;
    cds_Sic_LIP: TFDQuery;
    cds_Sic_LIPSic_No: TIntegerField;
    cds_Sic_LIPLIPNo: TIntegerField;
    cds_Sic_LIPLIPGroupNo: TStringField;
    cds_Sic_LIPLager: TStringField;
    cds_Sic_LIPPercentShare: TFloatField;
    cds_Sic_LIPInventeratNM3: TFloatField;
    cds_Sic_LIPCalcNM3: TFloatField;
    cds_Sic_LIPOriginalLIPNo: TIntegerField;
    cds_LIP: TFDQuery;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLAGER: TStringField;
    cds_LIPKOD: TStringField;
    cds_ClientList: TFDQuery;
    cds_ClientListNAMN: TStringField;
    cds_ClientListSÖKNAMN: TStringField;
    cds_ClientListClientNo: TIntegerField;
    cds_SicRow_PG: TFDQuery;
    cds_SicRow_PGSic_No: TIntegerField;
    cds_SicRow_PGRowName: TStringField;
    cds_SicRow_PGLIPGroupNo: TStringField;
    cds_SicRow_PGNM3: TFloatField;
    cds_SicRow_PGPrice: TFloatField;
    cds_SicRow_PGAdmCost: TFloatField;
    cds_SicRow_PGPlanerShavingsCost: TFloatField;
    cds_SicRow_PGPlaningCost: TFloatField;
    cds_SicRow_PGSortingCost: TFloatField;
    cds_SicRow_PGKilnDryingCost: TFloatField;
    cds_SicRow_PGCalcPrice: TFloatField;
    cds_SicRow_PGTotalValue: TFloatField;
    cds_SicRow_PGPriceGroupNo: TIntegerField;
    cds_SicRow_PGPriceGroupName: TStringField;
    cds_CreditInLev: TFDQuery;
    cds_CreditInLevIC_GrpNo: TIntegerField;
    cds_CreditInLevPackageNo: TIntegerField;
    cds_CreditInLevSupplierCode: TStringField;
    cds_CreditInLevOperation: TIntegerField;
    cds_CreditInLevDateCreated: TSQLTimeStampField;
    cds_CreditInLevLogicalInventoryPointNo: TIntegerField;
    cds_CreditInLevSortorderno: TIntegerField;
    cds_CreditInLevStatus: TIntegerField;
    cds_CreditInLevLONo: TIntegerField;
    cds_CreditInLevRes01: TIntegerField;
    cds_CreditInLevANTPERLÄNGD: TStringField;
    cds_CreditInLevPRODUKT: TStringField;
    cds_CreditInLevSTYCK: TIntegerField;
    cds_CreditInLevAM3: TFloatField;
    cds_CreditInLevNM3: TFloatField;
    cds_CreditInLevLager: TStringField;
    cds_SurGrpRow: TFDQuery;
    cds_SurGrpRowSurfacingGroupNo: TIntegerField;
    cds_SurGrpRowSurfacingNo: TIntegerField;
    cds_SurGrpRowStringField: TStringField;
    sq_CI_NotInven: TFDQuery;
    sq_CI_NotInvenInventera: TIntegerField;
    sq_CI_NotInvenInvNr: TIntegerField;
    sq_CI_NotInvenÄgare: TStringField;
    sq_CI_NotInvenLS: TStringField;
    sq_CI_NotInvenLG: TStringField;
    sq_CI_NotInvenKontrollistaPkt: TIntegerField;
    sq_CI_NotInvenKontrollistaNM3: TFloatField;
    sq_CI_NotInvenResultalistaPkt: TIntegerField;
    sq_CI_NotInvenResultatlistaNM3: TBCDField;
    sq_CI_NotInvenLIPNo: TIntegerField;
    sq_CI_NotInvenIntVerk: TIntegerField;
    sq_CI_NotInvenOwnerNo: TIntegerField;
    sq_CI_NotInvenPIPNo: TIntegerField;
    sq_CI_NotInvenInventeringsdatum: TSQLTimeStampField;
    sq_CI_NotInvenmaxdatum: TSQLTimeStampField;
    sq_CI_NotInvenStatus: TIntegerField;
    sq_CI_NotInvenSkapadAv: TStringField;
    sq_CI_NotInvenVärde: TBCDField;
    sq_CI_NotInvenNM3: TBCDField;
    sq_CI_NotInvenMedelpris: TBCDField;
    sq_CI_Inven: TFDQuery;
    sq_CI_InvenInventera: TIntegerField;
    sq_CI_InvenInvNr: TIntegerField;
    sq_CI_InvenÄgare: TStringField;
    sq_CI_InvenLS: TStringField;
    sq_CI_InvenLG: TStringField;
    sq_CI_InvenKontrollistaPkt: TIntegerField;
    sq_CI_InvenKontrollistaNM3: TFloatField;
    sq_CI_InvenResultalistaPkt: TIntegerField;
    sq_CI_InvenResultatlistaNM3: TFloatField;
    sq_CI_InvenLIPNo: TIntegerField;
    sq_CI_InvenIntVerk: TIntegerField;
    sq_CI_InvenOwnerNo: TIntegerField;
    sq_CI_InvenPIPNo: TIntegerField;
    sq_CI_InvenInventeringsdatum: TSQLTimeStampField;
    sq_CI_Invenmaxdatum: TSQLTimeStampField;
    sq_CI_InvenStatus: TIntegerField;
    sq_CI_InvenSkapadAv: TStringField;
    sq_CI_InvenVärde: TFloatField;
    sq_CI_InvenNM3: TFloatField;
    sq_CI_InvenMedelpris: TFloatField;
    sq_CI_All: TFDQuery;
    sq_CI_AllInventera: TIntegerField;
    sq_CI_AllInvNr: TIntegerField;
    sq_CI_AllÄgare: TStringField;
    sq_CI_AllLS: TStringField;
    sq_CI_AllLG: TStringField;
    sq_CI_AllKontrollistaPkt: TIntegerField;
    sq_CI_AllKontrollistaNM3: TFloatField;
    sq_CI_AllResultalistaPkt: TIntegerField;
    sq_CI_AllResultatlistaNM3: TFloatField;
    sq_CI_AllLIPNo: TIntegerField;
    sq_CI_AllIntVerk: TIntegerField;
    sq_CI_AllOwnerNo: TIntegerField;
    sq_CI_AllPIPNo: TIntegerField;
    sq_CI_AllInventeringsdatum: TSQLTimeStampField;
    sq_CI_Allmaxdatum: TSQLTimeStampField;
    sq_CI_AllStatus: TIntegerField;
    sq_CI_AllSkapadAv: TStringField;
    sq_CI_AllVärde: TFloatField;
    sq_CI_AllNM3: TFloatField;
    sq_CI_AllMedelpris: TFloatField;
    sq_AssignProdToPG: TFDQuery;
    sq_updGroupPrice: TFDQuery;
    sq_GenSic_Lip: TFDQuery;
    sq_InsPriceNM3: TFDQuery;
    sq_updPriceNM3: TFDQuery;
    sq_PkgInInvLager: TFDQuery;
    sq_PkgInInvLagerPACKAGENO: TIntegerField;
    sq_SaveInvLista_PktNr: TFDQuery;
    sq_CopyRows: TFDQuery;
    sq_InsHlpRows: TFDQuery;
    sq_PkgInCtrlList: TFDQuery;
    sq_PkgInCtrlListpackageNo: TIntegerField;
    sq_UpdLIPCtrlPkg: TFDQuery;
    sq_PkgStatus: TFDQuery;
    sq_PkgStatusStatus: TIntegerField;
    sq_CopyManSicRows: TFDQuery;
    sq_PkgTypExistIn_InvCtrlPkt: TFDQuery;
    sq_PkgTypExistIn_InvCtrlPktPackageTypeNo: TIntegerField;
    sq_OnePkg: TFDQuery;
    sq_OnePkgPRODUCT: TStringField;
    sq_OnePkgPACKAGENO: TIntegerField;
    sq_OnePkgPACKAGETYPENO: TIntegerField;
    sq_OnePkgSUPP_CODE: TStringField;
    sq_OnePkgM3_NET: TFloatField;
    sq_OnePkgPCS: TIntegerField;
    sq_OnePkgLOG_INVENTORY_NO: TIntegerField;
    sq_OnePkgPCS_PER_LENGTH: TStringField;
    sq_OnePkgLager: TStringField;
    sq_OnePkgOwnerNo: TIntegerField;
    sq_OnePkgProducerad: TSQLTimeStampField;
    sq_InsPkgType_NoOfPkgs: TFDQuery;
    sq_SaveInvListaPktTyp: TFDQuery;
    sq_DelCreditedPkgs: TFDQuery;
    sq_PkgExistInHlp: TFDQuery;
    sq_PkgExistInHlpOperation: TIntegerField;
    sq_InsertToInvCtrl_Pkgs: TFDQuery;
    sq_prelAvrLaster: TFDQuery;
    sq_SUM_SIC: TFDQuery;
    sq_GetCtrlPkgs: TFDQuery;
    sq_copyall: TFDQuery;
    sq_DelCtrlRowPktNr: TFDQuery;
    sq_CleanICR: TFDQuery;
    sq_AddToICR: TFDQuery;
    sq_RemFromICR: TFDQuery;
    sq_GetChangesToPackages: TFDQuery;
    sq_NotInvLoads: TFDQuery;
    sq_SetNoOfPkg_PKTTYP: TFDQuery;
    sq_DelCtrlRowPktTyp: TFDQuery;
    sq_InsHlpRows_II: TFDQuery;
    sq_TrackDuplicates: TFDQuery;
    sq_GenSicPG: TFDQuery;
    sq_InsAllHlpRows: TFDQuery;
    sq_PkgExistInKL: TFDQuery;
    sq_PkgExistInKLStatus: TIntegerField;
    sq_PkgExist: TFDQuery;
    sq_PkgExistStatus: TIntegerField;
    sq_PkgExitsInInv: TFDQuery;
    sq_PkgExitsInInvStatus: TIntegerField;
    sq_PkgExitsInInvIC_GrpNo: TIntegerField;
    sp_CalcInvAvgPrice: TFDStoredProc;
    sq_GetSortOrderNo: TFDQuery;
    sq_GetSortOrderNoCurrentSortOrderNo: TIntegerField;
    sq_GenInvListaII: TFDQuery;
    sq_SetSTDkoppling: TFDQuery;
    sq_SUM_SIC_PG: TFDQuery;
    sq_SetInvStatus: TFDQuery;
    sq_SaveToInvCtrlRow_PktTyp: TFDQuery;
    sq_GetLagergrupper: TFDQuery;
    sq_GetLagergrupperLOGINVNAME: TStringField;
    sq_GetLagergrupperLIP: TIntegerField;
    sq_GetLagergrupperOwnerno: TIntegerField;
    sq_GetLagergrupperclientName: TStringField;
    sq_GetLagergrupperLogicalInventoryName: TStringField;
    sq_GetLagergrupperPIPNo: TIntegerField;
    sq_SaveToInvCtrlRow_PktNr: TFDQuery;
    sq_SaveToInvCtrlRow_PktNr2: TFDQuery;
    sp_GenInvenSummary: TFDStoredProc;
    sp_PkgCngInv: TFDStoredProc;
    sp_PkgAddInv: TFDStoredProc;
    sp_RvtPkgInv: TFDStoredProc;
    cds_InvCtrlMetod: TFDQuery;
    cds_InvCtrlMetodIC_grpNo: TIntegerField;
    cds_InvCtrlMetodLogicalInventoryPointNo: TIntegerField;
    cds_InvCtrlMetodInventeringsMetod: TIntegerField;
    cds_InvCtrlMetodLogicalInventoryName: TStringField;
    cds_InvCtrlMetodOwnerName: TStringField;
    cds_InvCtrlMetodOwnerNo: TIntegerField;
    cds_InvCtrlMetodInLevLipNo: TIntegerField;
    cds_InvCtrlMetodInventoryValue: TFloatField;
    cds_InvCtrlMetodTotalNM3: TFloatField;
    cds_InvCtrlMetodAvgPricePerNM3: TFloatField;
    cds_InvCtrlMetodPIPNo: TIntegerField;
    cds_InvCtrlMetodMetod: TStringField;
    sp_vis_invUpdControlStatus: TFDStoredProc;
    sp_vis_GenInvCountByProduct: TFDStoredProc;
    sp_vis_invByProduct: TFDStoredProc;
    sp_vis_ActivatePkgsInvCountByProduct: TFDStoredProc;
    sp_vis_InsPkgsToInvCountByProduct: TFDStoredProc;
    sp_vis_ClearInvCountFromExtData: TFDStoredProc;
    sq_GetCtrlPkgsII: TFDQuery;
    sp_Gen_CtrlList: TFDStoredProc;
    cds_InvenRowOriginal_Price: TFloatField;
    cds_InvenRowVärde: TFloatField;
    cds_InvCtrlGrpTypeOfInvCount: TIntegerField;
    sp_SimulateHandHeld: TFDStoredProc;
    ds_SimulateHandHeld: TDataSource;
    sp_SimulateHandHeldId: TIntegerField;
    sp_SimulateHandHeldPackageNo: TIntegerField;
    sp_SimulateHandHeldStatus: TIntegerField;
    sp_SimulateHandHeldQuantity: TIntegerField;
    sp_SimulateHandHeldIC_grpno: TIntegerField;
    sp_SimulateHandHeldPrefix: TWideStringField;
    sp_SimulateHandHeldPdaId: TWideStringField;
    sp_SimulateHandHeldIuser: TWideStringField;
    sp_SimulateHandHeldIdate: TSQLTimeStampField;
    sp_SimulateHandHeldLengthSpecNo: TIntegerField;
    sp_SimulateHandHeldProdukt: TStringField;
    sp_SimulateHandHeldLengthDesc: TStringField;
    sp_SimulateHandHeldAvgLength: TBCDField;
    upd_SimulateHandHeld: TFDUpdateSQL;
    sp_copyCtrlPkgswstatusNotAct: TFDStoredProc;
    sp_InsHlpPkgswstatusNotAct: TFDStoredProc;
    sp_GenListfromPkgsnotact: TFDStoredProc;
    cds_CtrlListMaxlängd: TFloatField;
    cds_CtrlListPPP: TIntegerField;
    cds_UtLevAfterMaxdatum: TFDQuery;
    cds_UtLevAfterMaxdatumANTPERLÄNGD: TStringField;
    cds_UtLevAfterMaxdatumPRODUKT: TStringField;
    cds_UtLevAfterMaxdatumSTYCK: TIntegerField;
    cds_UtLevAfterMaxdatumAM3: TFloatField;
    cds_UtLevAfterMaxdatumNM3: TFloatField;
    ds_UtLevAfterMaxdatum: TDataSource;
    cds_UtLevAfterMaxdatumPaketnr: TIntegerField;
    cds_UtLevAfterMaxdatumPrefix: TStringField;
    cds_UtLevAfterMaxdatumLO: TIntegerField;
    cds_UtLevAfterMaxdatumLastnr: TIntegerField;
    cds_UtLevAfterMaxdatumUtlastad: TSQLTimeStampField;
    cds_UtLevAfterMaxdatumLagergrupp: TStringField;
    sp_MoveFalseToAvreg: TFDStoredProc;
    mtUserPropFilter1: TStringField;
    mtUserPropFilter2: TStringField;
    upd_sicPG: TFDUpdateSQL;
    cds_LIPSUM: TFDQuery;
    ds_LIPSUM: TDataSource;
    cds_LIPSUMLIPNo: TIntegerField;
    cds_LIPSUMPackageNo: TIntegerField;
    cds_LIPSUMSuppliercode: TStringField;
    cds_LIPSUMCost: TFloatField;
    cds_LIPSUMVolume: TFloatField;
    cds_LIPSUMavgprice: TFloatField;
    cds_PkgCost: TFDQuery;
    cds_PkgCostPackageNo: TIntegerField;
    cds_PkgCostSupplierCode: TStringField;
    cds_PkgCostLIPNo: TIntegerField;
    cds_PkgCostLoadOrderNo: TIntegerField;
    cds_PkgCostCostType: TIntegerField;
    cds_PkgCostArticleNo: TIntegerField;
    cds_PkgCostDateCreated: TSQLTimeStampField;
    cds_PkgCostCostPerAM3: TFloatField;
    ds_PkgCost: TDataSource;
    cds_PkgCostKOSTTYP: TStringField;
    FDQuery1: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField4: TStringField;
    sp_LoadedAfterMaxDate: TFDStoredProc;
    sp_SicPG: TFDStoredProc;
    sp_SicPGPRODUKT: TStringField;
    sp_SicPGSTYCK: TIntegerField;
    sp_SicPGAM3: TFloatField;
    sp_SicPGNM3: TFloatField;
    sp_SicPGPrisgrupp: TStringField;
    sp_SicPGProductNo: TIntegerField;
    sp_SicPGIC_grpNo: TIntegerField;
    sp_SicPGOwnerNo: TIntegerField;
    sp_SicPGKV: TStringField;
    sp_SicPGTS: TStringField;
    sp_SicPGUT: TStringField;
    sp_SicPGIMP: TStringField;
    sp_SicPGAT: TFloatField;
    sp_SicPGAB: TFloatField;
    sp_SicPGPricePerNM3: TFloatField;
    sp_SicPGppnm_ProductNo: TIntegerField;
    sp_SicPGKalkylPris: TFloatField;
    sp_SicPGLogicalInventoryPointNo: TIntegerField;
    sp_SicPGRowValue: TFloatField;
    cds_PkgCostExclude: TIntegerField;
    cds_InvCtrlSet: TFDQuery;
    cds_InvCtrlSetIC_SETNo: TIntegerField;
    cds_InvCtrlSetDateCreated: TSQLTimeStampField;
    cds_InvCtrlSetCreatedUser: TIntegerField;
    cds_InvCtrlSetNote: TMemoField;
    cds_InvCtrlSetMaxDatum: TSQLTimeStampField;
    cds_InvCtrlSetStartFilterOnMaxDate: TSQLTimeStampField;
    cds_InvCtrlSetEndFilterOnMaxDate: TSQLTimeStampField;
    cds_InvCtrlSetSetStatus: TIntegerField;
    sp_SetInvCtrlSetStatus: TFDStoredProc;
    sp_SetMallsp_SetMallOwner: TStringField;
    sp_SetMallsp_SetMallclientno: TIntegerField;
    sp_SetMallsp_SetMallPIP: TStringField;
    sp_SetMallsp_SetMallLIP: TStringField;
    sp_SetMallsp_SetMallPIPNo: TIntegerField;
    sp_SetMallsp_SetMallAct: TIntegerField;
    sp_SetMallsp_SetMallSetMall: TIntegerField;
    ds_SetMall: TDataSource;
    upd_SetMall: TFDUpdateSQL;
    sp_SetMall: TFDStoredProc;
    sp_SetMallLogicalInventoryPointNo: TIntegerField;
    ds_InvCtrlSet: TDataSource;
    cds_InvenSETLip: TFDQuery;
    cds_InvenSETLipIC_SetNo: TIntegerField;
    cds_InvenSETLipLIPNo: TIntegerField;
    cds_InvenSETLipOwnerNo: TIntegerField;
    cds_InvenSETLipPIPNo: TIntegerField;
    cds_InvenSETLipLagerstalle: TStringField;
    cds_InvenSETLipLagergrupp: TStringField;
    cds_InvenSETLipOwnerName: TStringField;
    sp_InsertToInvenSetLIP: TFDStoredProc;
    cds_InvenSETLipGenerated: TIntegerField;
    sp_Exec_PackageCost: TFDStoredProc;
    sp_CopyToNM3Price: TFDStoredProc;
    sp_Add_IC_GroupNo_To_Inven_Al_VW: TFDStoredProc;
    cds_CtrlListHANDELSE: TStringField;
    sp_RemoveKilnPkgsFromInvCount: TFDStoredProc;
    cds_InvCtrlSetList: TFDQuery;
    cds_InvCtrlSetListIC_SETNo: TIntegerField;
    cds_InvCtrlSetListDateCreated: TSQLTimeStampField;
    cds_InvCtrlSetListCreatedUser: TIntegerField;
    cds_InvCtrlSetListNote: TMemoField;
    cds_InvCtrlSetListMaxDatum: TSQLTimeStampField;
    cds_InvCtrlSetListStartFilterOnMaxDate: TSQLTimeStampField;
    cds_InvCtrlSetListEndFilterOnMaxDate: TSQLTimeStampField;
    cds_InvCtrlSetListSetStatus: TIntegerField;
    ds_InvCtrlSetList: TDataSource;
    sp_SaveToInvCtrlRow_PktNr2: TFDStoredProc;
    sp_prelAvrLaster: TFDStoredProc;
    sp_NotInvLoads: TFDStoredProc;
    sp_InvTransit: TFDStoredProc;
    ds_InvTransit: TDataSource;
    cds_InvCtrlGrpLanguageID: TIntegerField;
    sp_InsTransitToResult: TFDStoredProc;
    procedure ds_InvCtrlGrpDataChange(Sender: TObject; Field: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure ds_InvCtrlMetodDataChange(Sender: TObject; Field: TField);
    procedure mtSelectedPkgNoBeforePost(DataSet: TDataSet);
    procedure ds_SicHdrDataChange(Sender: TObject; Field: TField);
    procedure mtUserPropOwnerNoChange(Sender: TField);
    procedure cds_InvCtrlGrpAfterInsert(DataSet: TDataSet);
    procedure cds_GPAfterInsert(DataSet: TDataSet);
    procedure cds_SicHdrAfterInsert(DataSet: TDataSet);
    procedure cds_ChgPkgAfterInsert(DataSet: TDataSet);
    procedure cds_ChgPkgAfterPost(DataSet: TDataSet);
    procedure cds_ChgPkgBeforeDelete(DataSet: TDataSet);
    procedure cds_ChgPkgBeforePost(DataSet: TDataSet);
    procedure cds_InvCtrl_PaRegAfterInsert(DataSet: TDataSet);
    procedure cds_InvCtrl_PaRegAfterPost(DataSet: TDataSet);
    procedure cds_InvCtrl_PaRegBeforeDelete(DataSet: TDataSet);
    procedure cds_InvCtrl_PaRegBeforePost(DataSet: TDataSet);
    procedure cds_InvCtrl_PkgsAfterInsert(DataSet: TDataSet);
    procedure cds_InvCtrl_PkgsAfterPost(DataSet: TDataSet);
    procedure cds_InvCtrl_PkgsBeforeDelete(DataSet: TDataSet);
    procedure cds_InvCtrl_PkgsBeforePost(DataSet: TDataSet);
    procedure cds_PriceGroupAfterInsert(DataSet: TDataSet);
    procedure cds_SicRowAfterInsert(DataSet: TDataSet);
    procedure cds_SicRowBeforePost(DataSet: TDataSet);
    procedure cds_Sic_IC_grpAfterInsert(DataSet: TDataSet);
    procedure cds_Sic_LIPAfterInsert(DataSet: TDataSet);
    procedure cds_Sic_LIPBeforePost(DataSet: TDataSet);
    procedure cds_SicRow_PGBeforePost(DataSet: TDataSet);
    procedure cds_SurGrpRowAfterInsert(DataSet: TDataSet);
    procedure cds_InvCtrl_LagerStallenAfterInsert(DataSet: TDataSet);
    procedure cds_SurfGrpHdrAfterInsert(DataSet: TDataSet);
    procedure cds_InvCtrlMetodAfterInsert(DataSet: TDataSet);
    procedure cds_SicRowAfterGetRecords(DataSet: TFDDataSet);
    procedure cds_SicRowAfterDelete(DataSet: TDataSet);
    procedure cds_SicRowPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure sp_SimulateHandHeldAfterInsert(DataSet: TDataSet);
    procedure sp_SimulateHandHeldUpdateRecord(ASender: TDataSet;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
      AOptions: TFDUpdateRowOptions);
    procedure ds_LIPSUMDataChange(Sender: TObject; Field: TField);
    procedure sp_SicPGCalcFields(DataSet: TDataSet);
    procedure sp_SicPGUpdateRecord(ASender: TDataSet;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
      AOptions: TFDUpdateRowOptions);
    procedure cds_InvCtrlSetAfterInsert(DataSet: TDataSet);
    procedure sp_SetMallUpdateRecord(ASender: TDataSet;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
      AOptions: TFDUpdateRowOptions);
  private
    { Private declarations }
    FOnAmbiguousPkgNo: TAmbiguityEvent ;
    Deleted_sq_InsertToInvCtrl_Pkgs : Boolean ;
    procedure CloseInventering(Sender: TObject) ;
    function  GetPkgStatus (const PackageNo : Integer;const SupplierCode : String) : Integer ;
    function  PkgTypExistIn_InvCtrlPkt (ic_grpNo, PackageTypeNo, LogicalInventoryPointNo : Integer) : Boolean ;
//    function  GetNextSortorderno : Integer ;
    function  ChangePkg(const PackageNo : Integer;const PkgSupplierCode : String) : Boolean ;
    procedure RevertPkgAsInKontrollist ;

  Protected
      procedure ResolvePkgNoAmbiguity(
      Sender : TObject;
      ADataSource : TDataSource;
      var Choice : String3;
      var SupplierNo : Integer;
      var ProductNo : Integer;
      Var PackageTypeNo : Integer;
      Var LogicalInventoryPointNo : Integer     );


      procedure PkgAddInv(
      const PackageNo : Integer;
      const SupplierCode : String3;
      const RegistrationPointNo,
      UserID,
      Status,
      Operation,
      LogicalInventoryPointNo,
      InventeringsMetod,
      PackageTypeNo : Integer ;
      const LogicalInventoryName : String;
      const OwnerNo : Integer) ;

  public
    { Public declarations }
    tLIPGroupNo    : Integer ;
    InventoryPkgs : Boolean ;
    MarkedPkgs,
    ChangedSortorderNo, AvRegSortorderNo, PaRegSortorderNo : Integer ;
    procedure Refresh_InvTransit(const IC_GrpNo : Integer) ;
    procedure RemoveKilnPkgsFromInvCount (const IC_GrpNo : Integer) ;
    procedure Add_IC_GroupNo_To_Inven_Al_VW (const IC_SetNo, IC_GrpNo : Integer) ;
    procedure CopyToNM3Price (const IC_SetNo : Integer) ;
    procedure Exec_PackageCost (const IC_SetNo : Integer;const MaxDatum : TSQLTimeStamp) ;
    procedure InsertToInvenSetLIP (const IC_SetNo : Integer) ;
    procedure RefreshPackageCost (const LIPNo, ProductNo, IC_GrpNo, IC_SetNo : Integer) ;
    procedure MoveFalseToAvreg(const IC_GrpNo : Integer) ;
    procedure GenListfromPkgsnotact (LIPs, STATUSs : String) ;  //2012-07-01
    procedure Generate_List_from_CtrlList_pkgs_that_are_not_active ;
    procedure GetCtrlPkgs_OnlyStatus_Not_OK ;
    procedure ClearInvCountFromExtData(const IC_GrpNo : Integer) ;
    procedure AdjustInvenCountByProduct(const IC_GrpNo : Integer) ;
    procedure vis_invUpdControlStatus(const IC_GrpNo : Integer) ;
    procedure DelCreditedPkgs(const IC_GrpNo : Integer) ;
    procedure GetInLeveranserOfCredits (S : TStrings) ;
    procedure CreateResultList ;
    procedure Open_Inventering(const InvNr : Integer) ;
    procedure SetInvStatus(const IC_GrpNo, Status : Integer) ;
    procedure CalcInvAvgPrice (const IC_GrpNo, LIPNo : Integer) ;
    procedure CopyManualSicRows(const Sic_No : Integer) ;
    procedure SetSTDkoppling(const PriceGroupNo : Integer) ;
    Procedure SavePricePerNM3 ;
    function  SaveAvgPriceToStandardPriceGroup(const AvgPrice : Double) : Integer ;
    procedure AssignProduktToPriceGroup(const PriceGroupNo, ProductNo : Integer) ;
    Function  CheckIfPkgIsIn_A_Inventory_In_CurrentInventering(const IC_grpno, PkgNo : Integer;const SuppCode : String) : Boolean ;
    procedure UpdLIPCtrlPkg (const IC_GrpNo, PackageNo, Operation : Integer;const SupplierCode : String) ;
    Function  CheckIfPkgExistInHLP (const IC_GrpNo, PkgNo : Integer;const SuppCode : String) : String ;
    Function  CheckIfPkgExistInHLP_II (const IC_GrpNo, PkgNo : Integer;const SuppCode : String) : String ;
    procedure GenerateInventeringsListan ;
    procedure GenerateInventeringsListan_alla_Paket ;
    procedure GenerateInventeringsListan_II ;
    procedure GetCurrentSortordernos ;
    function  GetPackageAttr(const PackageNo : Integer;const SupplierCode : String) : Boolean ;
    Function  CheckIfPkgExistInKontrollist(const IC_grpno, PkgNo : Integer;const SuppCode : String) : Integer ;
    Function  CheckIfPkgExistInKontrollistAndInInventory (const IC_GrpNo, PkgNo : Integer;const SuppCode : String) : Integer ;
    Function  CheckIfPkgExist (const IC_GrpNo, PkgNo : Integer;const SuppCode : String) : Integer ;
    procedure GetAvRegIProduction (S : TStrings) ;
    procedure GetAvRegBeforeInventoryDateAndExistInKL ;
    procedure GetProduction (S : TStrings) ;
    procedure GetProductionBefore (S : TStrings) ;
    procedure GetInLeveranser (S : TStrings) ;
    procedure GetInLeveranser_EJ_AR (S : TStrings) ;
    procedure GetInLeveranserAVROP (S : TStrings) ;
    procedure GetInLeveranserAVROP_Proforma (S : TStrings) ;
    procedure GetUTLeveranser(S : TStrings) ;
    procedure GetUTLeveranserAvropsLevel (S : TStrings) ;
    function  PkgCngInv (const PackageNo, Status, Operation, IC_GrpNo : Integer; const SupplierCode : String) : Boolean ;
    procedure GetLagerGrupper ;
    procedure GetLagerStallen ;
    procedure SkapaKontrollistor ;
    procedure SparaLagerListor ;
    procedure OppnaLagerStallen ;
//    function  Get_PaketetsAgareNo(const Status, PackageNo : Integer;
//                Var SupplierCode : String3;Var PackageTypeNo, LogicalInventoryPointNo : Integer) : Integer ;

//    function  HamtaPaket(const Status,PackageNo : Integer;Var SupplierCode : String3;
//                Var PackageTypeNo, LogicalInventoryPointNo : Integer;Var BackInfo : String) : Integer ;

    function  SetNoOfPkgs_PKTTYP (const LogicalInventoryName : String;const OwnerNo, ic_grpNo, NoOfPkgs, PackageTypeNo, LogicalInventoryPointNo : Integer) : Boolean ;
    procedure GenInvListaII ;
    procedure GetCtrlPkgs (LIPs, STATUSs : String) ;
    property OnAmbiguousPkgNo : TAmbiguityEvent read  FOnAmbiguousPkgNo write FOnAmbiguousPkgNo;
  end;

var
  dmInvCtrl: TdmInvCtrl;

implementation

uses dmsDataConn, dmsVidaContact, dlgPickPkg_III, VidaUser , dmsVidaSystem, VidaConst ,
  uSinglePkgEntry;

{$R *.dfm}

procedure TdmInvCtrl.RevertPkgAsInKontrollist ;
Begin
 sp_RvtPkgInv.ParamByName('@PackageNo').AsInteger          := cds_ChgPkgPackageNo.AsInteger ;
 sp_RvtPkgInv.ParamByName('@SupplierCode').AsString        := cds_ChgPkgSupplierCode.AsString ;
 sp_RvtPkgInv.ParamByName('@RegistrationPointNo').AsInteger:= 5 ;//RegistrationPointNo ;
 sp_RvtPkgInv.ParamByName('@UserID').AsInteger             := ThisUser.UserID ;
 sp_RvtPkgInv.ParamByName('@DateCreated').AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
 sp_RvtPkgInv.ParamByName('@IC_grpno').AsInteger           := cds_InvCtrlGrpIC_grpno.AsInteger ;
 sp_RvtPkgInv.ExecProc ;
End ;

Function TdmInvCtrl.CheckIfPkgExistInHLP (const IC_GrpNo, PkgNo : Integer;const SuppCode : String) : String ;
Begin
 Result:= '' ;
 sq_PkgExistInHlp.Close ;
 sq_PkgExistInHlp.ParamByName('PackageNo').AsInteger    := PkgNo ;
 sq_PkgExistInHlp.ParamByName('SupplierCode').AsString  := SuppCode ;
 sq_PkgExistInHlp.ParamByName('IC_GrpNo').AsInteger     := IC_GrpNo ;
 sq_PkgExistInHlp.Open ;
 if not sq_PkgExistInHlp.Eof then
 Begin
  Case sq_PkgExistInHlpOperation.AsInteger of
   0 : Result:= 'Paketet finns i listan avregistrerade' ;
   2 : Result:= 'Paketet finns i listan utlevererade' ;
   3 : Result:= 'Paketet finns i listan inlevererade' ;
   4 : Result:= 'Paketet finns i listan producerade' ;
   5 : Result:= 'Paketet finns i listan påregistrerade' ;
   6 : Result:= 'Paketet finns i listan avregistrerade i produktion' ;
   8 : Result:= 'Paketet finns i listan ändrade paket' ;
  End ;
 End ;
 sq_PkgExistInHlp.Close ;
End ;

Function TdmInvCtrl.CheckIfPkgExist (const IC_GrpNo, PkgNo : Integer;const SuppCode : String) : Integer ;
Begin
 Result:= -3 ;
 sq_PkgExitsInInv.Close ;
 sq_PkgExitsInInv.ParamByName('PkgNo').AsInteger:= PkgNo ;
 sq_PkgExitsInInv.ParamByName('SuppCode').AsString:= SuppCode ;
 sq_PkgExitsInInv.ParamByName('IC_GrpNo').AsInteger:= IC_GrpNo ;
 sq_PkgExitsInInv.Open ;
// if not sq_PkgExitsInInv.Eof then
 if sq_PkgExitsInInv.Eof then
 Result:= -3
 else
 if (sq_PkgExitsInInvIC_GrpNo.AsInteger > 0) then
 Result:= -1
 else
 if (sq_PkgExitsInInvStatus.AsInteger = 1) then
 Result:= -2
 else
 if (sq_PkgExitsInInvStatus.AsInteger = 0) then   //OK
 Result:= 1   ;

{    Result:= sq_PkgExistStatus.AsInteger
   else
    Result:= -1 ; }
 sq_PkgExitsInInv.Close ;
End ;

Function TdmInvCtrl.CheckIfPkgExistInKontrollistAndInInventory (const IC_GrpNo, PkgNo : Integer;const SuppCode : String) : Integer ;
Begin
 sq_PkgExitsInInv.Close ;
 sq_PkgExitsInInv.ParamByName('PkgNo').AsInteger:= PkgNo ;
 sq_PkgExitsInInv.ParamByName('SuppCode').AsString:= SuppCode ;
 sq_PkgExitsInInv.ParamByName('IC_GrpNo').AsInteger:= IC_GrpNo ;
 sq_PkgExitsInInv.Open ;
// if not sq_PkgExitsInInv.Eof then
 if (sq_PkgExitsInInvStatus.AsInteger = 1) and (sq_PkgExitsInInvIC_GrpNo.AsInteger > 0) then
  Result:= 1 //exist in kontrollist
   else
    if (sq_PkgExitsInInvStatus.AsInteger = 0) and (not sq_PkgExitsInInv.Eof) then
     Result:= 0 //ej aktivt
      else
       if (sq_PkgExitsInInvIC_GrpNo.AsInteger > 0) then
        Result:= -1
         else
          Result:= -3 ;
{    Result:= sq_PkgExistStatus.AsInteger
   else
    Result:= -1 ; }
 sq_PkgExitsInInv.Close ;
End ;

Function TdmInvCtrl.CheckIfPkgIsIn_A_Inventory_In_CurrentInventering(const IC_grpno, PkgNo : Integer;const SuppCode : String) : Boolean ;
Begin
 sq_PkgInInvLager.ParamByName('IC_grpno').AsInteger     := IC_grpno ;
 sq_PkgInInvLager.ParamByName('PackageNo').AsInteger    := PkgNo ;
 sq_PkgInInvLager.ParamByName('SupplierCode').AsString  := SuppCode ;
 sq_PkgInInvLager.Open ;
 if not sq_PkgInInvLager.Eof then
  Begin
   if sq_PkgInInvLagerPACKAGENO.AsInteger > 0 then
    Result:= True
     else
      Result:= False ;
  End
   else
    Result:= False ;
 sq_PkgInInvLager.Close ;
End ;

Function TdmInvCtrl.CheckIfPkgExistInKontrollist(const IC_grpno, PkgNo : Integer;const SuppCode : String) : Integer ;
Begin
 sq_PkgExistInKL.ParamByName('IC_grpno').AsInteger    := IC_grpno ;
 sq_PkgExistInKL.ParamByName('PackageNo').AsInteger   := PkgNo ;
 sq_PkgExistInKL.ParamByName('SupplierCode').AsString := SuppCode ;
 sq_PkgExistInKL.Open ;
 if not sq_PkgExistInKL.Eof then
  Result:= 1 //sq_PkgExistStatus.AsInteger
   else
    Result:= -1 ;
 sq_PkgExistInKL.Close ;
End ;

procedure TdmInvCtrl.cds_InvCtrl_LagerStallenAfterInsert(DataSet: TDataSet);
begin
 cds_InvCtrl_LagerStallenIC_grpno.AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
end;

procedure TdmInvCtrl.cds_InvCtrlMetodAfterInsert(DataSet: TDataSet);
begin
 cds_InvCtrlMetodIC_grpNo.AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
end;

procedure TdmInvCtrl.cds_InvCtrlSetAfterInsert(DataSet: TDataSet);
begin
 cds_InvCtrlSetDateCreated.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;
 cds_InvCtrlSetCreatedUser.AsInteger          := ThisUser.UserID ;
 cds_InvCtrlSetSetStatus.AsInteger            := 1 ;
 cds_InvCtrlSetIC_SETNo.AsInteger             := dmsConnector.NextMaxNo('InvenSetNo') ;

 //Sätter alla övriga Set's till status avslutad = 2
 sp_SetInvCtrlSetStatus.ParamByName('@IC_SETNo').AsInteger  :=  cds_InvCtrlSetIC_SETNo.AsInteger ;
 sp_SetInvCtrlSetStatus.ExecProc ;
end;

procedure TdmInvCtrl.cds_InvCtrlGrpAfterInsert(DataSet: TDataSet);
begin
 cds_InvCtrlGrpIC_grpno.AsInteger             := dmsConnector.NextMaxNo('InvControlGrp') ;
 cds_InvCtrlGrpGrupperRapportPerTS.AsInteger  := 1 ;
 cds_InvCtrlGrpStatus.AsInteger               := 0 ;
 cds_InvCtrlGrpCreatedUser.AsInteger          := ThisUser.UserID ;
 cds_InvCtrlGrpDateCreated.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;
 cds_InvCtrlGrpOwnerNo.AsInteger              := mtUserPropOwnerNo.AsInteger ;//ThisUser.CompanyNo ;
 cds_InvCtrlGrpVerkNo.AsInteger               := mtUserPropOwnerNo.AsInteger ;//ThisUser.CompanyNo ;
 cds_InvCtrlGrpTypeOfInvCount.AsInteger       := 1 ;
 cds_InvCtrlGrpLanguageID.AsInteger           := ThisUser.LanguageID ;
end;

procedure TdmInvCtrl.GetLagerGrupper ;
Begin
 if cds_InvCtrlGrpIC_grpno.AsInteger > 0 then
 Begin
  While not cds_InvCtrlMetod.Eof do
   cds_InvCtrlMetod.Delete ;
  sq_GetLagergrupper.Active := False ;
  sq_GetLagergrupper.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  sq_GetLagergrupper.Active := True ;
  Try
  sq_GetLagergrupper.First ;
  While not sq_GetLagergrupper.Eof do
  Begin
   if not cds_InvCtrlMetod.Locate('LogicalInventoryPointNo', sq_GetLagergrupperLIP.AsInteger, []) then
   Begin
    cds_InvCtrlMetod.Insert ;
    cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger := sq_GetLagergrupperLIP.AsInteger ;
    cds_InvCtrlMetodInventeringsMetod.AsInteger       := 1 ;
    cds_InvCtrlMetodLogicalInventoryName.AsString     := sq_GetLagergrupperLogicalInventoryName.AsString ; // sq_GetLagergrupperLOGINVNAME.AsString ;
    cds_InvCtrlMetodOwnerName.AsString                := sq_GetLagergrupperclientName.AsString ;
    cds_InvCtrlMetodOwnerNo.AsInteger                 := sq_GetLagergrupperOwnerNo.AsInteger ;
    cds_InvCtrlMetodPIPNo.AsInteger                   := sq_GetLagergrupperPIPNo.AsInteger ;
//   sq_GetLagergrupperLogicalInventoryName
    cds_InvCtrlMetod.Post ;
   End ;//if not...
    sq_GetLagergrupper.Next ;
  End ;
  Finally
   sq_GetLagergrupper.Active  := False ;
  End;

 End ;
End ;

procedure TdmInvCtrl.GetLagerStallen ;
Begin
 With dmInvCtrl do
 Begin
  While not cds_InvCtrl_LagerStallen.Eof do
   cds_InvCtrl_LagerStallen.Delete ;

  cds_PhysInv.Active:= False ;
  cds_PhysInv.ParamByName('OwnerNo').AsInteger:= cds_InvCtrlGrpVerkNo.AsInteger ;
  cds_PhysInv.Active:= True ;
  While not cds_PhysInv.Eof do
  Begin
   cds_InvCtrl_LagerStallen.Insert ;
   cds_InvCtrl_LagerStallenPhysicalInventoryPointNo.AsInteger := cds_PhysInvPhysicalInventoryPointNo.AsInteger ;
   cds_InvCtrl_LagerStallenOwnerName.AsString                 := cds_PhysInvClientName.AsString ;
   cds_InvCtrl_LagerStallen.Post ;
   cds_PhysInv.Next ;
  End ;
 End ;
End ;

procedure TdmInvCtrl.SkapaKontrollistor ;
Begin
//Laster som har status preliminär
//Laster som har status avslutad i detta läge kommer ej med på kontrollistan!

 cds_InvCtrlMetod.First ;
 if cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
 Begin
 //============ Delete if any old data
  sq_DelCtrlRowPktNr.ParamByName('IC_grpno').AsInteger          := cds_InvCtrlGrpIC_grpno.AsInteger ;
  Try
  sq_DelCtrlRowPktNr.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

  //Get pkgs on loads not shipped
  Try
  sp_SaveToInvCtrlRow_PktNr2.ParamByName('@IC_grpno').AsInteger  := cds_InvCtrlGrpIC_grpno.AsInteger ;
  sp_SaveToInvCtrlRow_PktNr2.ParamByName('@SupplierNo').AsInteger:= cds_InvCtrlGrpVerkNo.AsInteger ;
  sp_SaveToInvCtrlRow_PktNr2.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

  //Get pkgs on preliminära Avrops loads
  Try
  sp_prelAvrLaster.ParamByName('@IC_grpno').AsInteger    := cds_InvCtrlGrpIC_grpno.AsInteger ;
  sp_prelAvrLaster.ParamByName('@SupplierNo').AsInteger  := cds_InvCtrlGrpVerkNo.AsInteger ;
  sp_prelAvrLaster.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

  //Get pkgs on Not invoiced Avrops loads
  Try
  sp_NotInvLoads.ParamByName('@IC_grpno').AsInteger    := cds_InvCtrlGrpIC_grpno.AsInteger ;
  sp_NotInvLoads.ParamByName('@SupplierNo').AsInteger  := cds_InvCtrlGrpVerkNo.AsInteger ;
  sp_NotInvLoads.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

 End //if cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
 else
 Begin
  sq_DelCtrlRowPktTyp.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  Try
  sq_DelCtrlRowPktTyp.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
 End ;

 While not cds_InvCtrlMetod.Eof do
 Begin
  if cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
  Begin
   Try
   sq_SaveToInvCtrlRow_PktNr.ParamByName('IC_grpno').AsInteger                := cds_InvCtrlGrpIC_grpno.AsInteger ;
   sq_SaveToInvCtrlRow_PktNr.ParamByName('LogicalInventoryPointNo').AsInteger := cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
   sq_SaveToInvCtrlRow_PktNr.ParamByName('InventeringsMetod').AsInteger       := cds_InvCtrlMetodInventeringsMetod.AsInteger ;
   sq_SaveToInvCtrlRow_PktNr.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
  End //if cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
  else
  Begin  //cds_InvCtrlMetodInventeringsMetod.AsInteger = 0
   Try
   sq_SaveToInvCtrlRow_PktTyp.ParamByName('IC_grpno').AsInteger               := cds_InvCtrlGrpIC_grpno.AsInteger ;
   sq_SaveToInvCtrlRow_PktTyp.ParamByName('LogicalInventoryPointNo').AsInteger:= cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
   sq_SaveToInvCtrlRow_PktTyp.ParamByName('InventeringsMetod').AsInteger      := cds_InvCtrlMetodInventeringsMetod.AsInteger ;
   sq_SaveToInvCtrlRow_PktTyp.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
  End ;
  cds_InvCtrlMetod.Next ;
 End ;
End ;

procedure TdmInvCtrl.OppnaLagerStallen ;
begin
 With dmInvCtrl do
 Begin
  if cds_InvCtrlGrpVerkNo.AsInteger > 0 then
  Begin
   cds_PhysInv.Active:= False ;
   cds_PhysInv.ParamByName('OwnerNo').AsInteger:= cds_InvCtrlGrpVerkNo.AsInteger ;
   cds_PhysInv.Active:= True ;
  End ;
 End ;
end;

procedure TdmInvCtrl.ds_InvCtrlGrpDataChange(Sender: TObject;
  Field: TField);
begin
 OppnaLagerStallen ;
// if fInvCtrl <> nil then fInvCtrl.Erd ;
end;

procedure TdmInvCtrl.DataModuleCreate(Sender: TObject);
begin
 OnAmbiguousPkgNo   := ResolvePkgNoAmbiguity;
 mtMetod.Active     := True ;
 mtMetod.InsertRecord([1,'PaketNr']);
 mtMetod.InsertRecord([2,'PaketTyp']);

 mtInvCtrlStatus.Active := True ;
 mtInvCtrlStatus.InsertRecord([0,'0: NY']);
 mtInvCtrlStatus.InsertRecord([1,'1: SKAPA KONTROLLISTOR']);
 mtInvCtrlStatus.InsertRecord([2,'2: ÄNDRA PAKET']);
 mtInvCtrlStatus.InsertRecord([3,'3: SKAPA LAGERLISTOR']);
 mtInvCtrlStatus.InsertRecord([4,'4: INVENTERING AVSLUTAD']);

 AvRegSortorderNo   := 0 ;
 PaRegSortorderNo   := 0 ;
 ChangedSortorderNo := 0 ;
// mtInvCtrlStatus.InsertRecord([3,'Inv.lista skapad']);
end;

procedure TdmInvCtrl.DataModuleDestroy(Sender: TObject);
begin
 mtMetod.Active         := False ;
 mtInvCtrlStatus.Active := False ;
end;

(*function TdmInvCtrl.Get_PaketetsAgareNo(const Status, PackageNo : Integer;
Var SupplierCode : String3;Var PackageTypeNo, LogicalInventoryPointNo : Integer) : Integer ;
Var ProductNo : Integer ;
    OwnerNo : Integer ;
Begin
 cds_InvCtrlRow.Active:= False ;
 //Hämta paket data, paket måste finnas i invControlRow
 sq_InvCtrlRow.ParamByName('PackageNo').AsInteger:= PackageNo ;
 sq_InvCtrlRow.ParamByName('IC_grpNo').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_InvCtrlRow.ParamByName('Status').AsInteger:= Status ;
 sq_InvCtrlRow.ParamByName('LogicalInventoryPointNo').AsInteger:= LogicalInventoryPointNo ;

 cds_InvCtrlRow.Active:= True ;
  case cds_InvCtrlRow.RecordCount of
    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SupplierCode := '';
           OwnerNo := 0 ;
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SupplierCode   := cds_InvCtrlRowSuppliercode.AsString;
           OwnerNo := cds_InvCtrlRowOwnerNo.AsInteger;
           ProductNo  := 0 ;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.ds_InvCtrlRow,SupplierCode,OwnerNo, ProductNo,
             PackageTypeNo, LogicalInventoryPointNo);
           end;
    end;

 Result:= OwnerNo ;
 cds_InvCtrlRow.Active:= False ;
End ; *)

procedure TdmInvCtrl.SparaLagerListor ;
Begin
 with dmInvCtrl do
 Begin
 cds_InvCtrlMetod.First ;
 While not cds_InvCtrlMetod.Eof do
 Begin
  if cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
  Begin
  //Markera alla som 1
  //Deleta 3 , 4 och 5 och lägg till i nästa steg
  Try
  sq_CleanICR.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  sq_CleanICR.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
  ShowMessage('sq_CleanICR.ExecSQL(False)') ;

  //Add 3 inleverans 4 nyprod och 5 gamla påreg
   Try
   sq_AddToICR.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
   sq_AddToICR.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
  ShowMessage('sq_AddToICR.ExecSQL(False)') ;

  //Markera bort 0 avreg och 2 utleverans och 6 normal avreg
  sq_RemFromICR.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  Try
  sq_RemFromICR.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
  ShowMessage('sq_RemFromICR.ExecSQL(False)') ;

  //Ändra packagetype och LIP på de paket i ICR som har ändrats före maxdatum
  //Hämta
  Try
  sq_GetChangesToPackages.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  sq_GetChangesToPackages.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
  ShowMessage('sq_GetChangesToPackages.ExecSQL(False)') ;

{   sq_SaveInvLista_PktNr.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
   sq_SaveInvLista_PktNr.ParamByName('LogicalInventoryPointNo').AsInteger:= cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
   sq_SaveInvLista_PktNr.ParamByName('InventeringsMetod').AsInteger:= cds_InvCtrlMetodInventeringsMetod.AsInteger ;
   sq_SaveInvLista_PktNr.ParamByName('MaxDatum').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(cds_InvCtrlGrpMaxDatum.AsDateTime) ;
   sq_SaveInvLista_PktNr.ExecSQL(False) ; }
  End
  else
  Begin
  Try
   sq_SaveInvListaPktTyp.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
   sq_SaveInvListaPktTyp.ParamByName('LogicalInventoryPointNo').AsInteger:= cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
   sq_SaveInvListaPktTyp.ParamByName('InventeringsMetod').AsInteger:= cds_InvCtrlMetodInventeringsMetod.AsInteger ;
   sq_SaveInvListaPktTyp.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
  End ;
  cds_InvCtrlMetod.Next ;
 End ;
 End ;//with
End ;

procedure TdmInvCtrl.sp_SetMallUpdateRecord(ASender: TDataSet;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
  AOptions: TFDUpdateRowOptions);
begin
 upd_SetMall.ConnectionName  := sp_SetMall.ConnectionName ;
 upd_SetMall.DataSet         := sp_SetMall ;
 upd_SetMall.Apply(ARequest, AAction, AOptions);

 AAction := eaApplied ;
end;

procedure TdmInvCtrl.sp_SicPGCalcFields(DataSet: TDataSet);
begin
 sp_SicPGRowValue.AsFloat  := sp_SicPGPricePerNM3.AsFloat * sp_SicPGNM3.AsFloat ;
end;

procedure TdmInvCtrl.sp_SicPGUpdateRecord(ASender: TDataSet;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
  AOptions: TFDUpdateRowOptions);
begin
  upd_sicPG.ConnectionName  := sp_SicPG.ConnectionName;
  upd_sicPG.DataSet         := sp_SicPG;
  upd_sicPG.Apply(ARequest, AAction, AOptions);

  AAction := eaApplied;
end;

procedure TdmInvCtrl.sp_SimulateHandHeldAfterInsert(DataSet: TDataSet);
begin
 sp_SimulateHandHeldPackageNo.AsInteger   := cds_CtrlListPackageNo.AsInteger ;
 sp_SimulateHandHeldStatus.AsInteger      := 2 ;
 sp_SimulateHandHeldQuantity.AsInteger    := 2 ;
 sp_SimulateHandHeldIC_grpno.AsInteger    := cds_InvCtrlGrpIC_grpno.AsInteger ;
 sp_SimulateHandHeldPrefix.AsWideString   := cds_CtrlListSuppliercode.AsString ;
 sp_SimulateHandHeldPdaId.AsWideString    := 'Vis_Lager' ;
 sp_SimulateHandHeldIuser.AsWideString    := ThisUser.UserName ;
 sp_SimulateHandHeldIdate.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmInvCtrl.sp_SimulateHandHeldUpdateRecord(ASender: TDataSet;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
  AOptions: TFDUpdateRowOptions);
begin
 upd_SimulateHandHeld.ConnectionName  := sp_SimulateHandHeld.ConnectionName;
 upd_SimulateHandHeld.DataSet         := sp_SimulateHandHeld;
 upd_SimulateHandHeld.Apply(ARequest, AAction, AOptions);

 AAction := eaApplied ;
end;

(*function TdmInvCtrl.HamtaPaket(const Status, PackageNo : Integer;Var SupplierCode : String3;
Var PackageTypeNo, LogicalInventoryPointNo : Integer;Var BackInfo : String) : Integer ;
Var ProductNo : Integer ;
    OwnerNo : Integer ;
Begin
 OwnerNo := 0 ;
 cds_GetPkt.Active:= False ;
 //Hämta paket data, paket måste finnas i invControlRow
 sq_GetPkt.ParamByName('PackageNo').AsInteger:= PackageNo ;
 sq_GetPkt.ParamByName('OwnerNo').AsInteger:= cds_InvCtrlGrpVerkNo.AsInteger ;
 sq_GetPkt.ParamByName('Status').AsInteger:= Status ; 
// sq_GetPkt.ParamByName('Status').AsInteger:= Status ;
 cds_GetPkt.Active:= True ;
  case cds_GetPkt.RecordCount of
    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
          cds_GetPkt.Active:= False ;
          sq_GetPkt.ParamByName('PackageNo').AsInteger:= PackageNo ;
          sq_GetPkt.ParamByName('OwnerNo').AsInteger:= cds_InvCtrlGrpVerkNo.AsInteger ;
          if Status = 0 then
           sq_GetPkt.ParamByName('Status').AsInteger:= 1
            else
             sq_GetPkt.ParamByName('Status').AsInteger:= 0 ;
          cds_GetPkt.Active:= True ;

          if cds_GetPkt.RecordCount > 0 then
           Begin
            BackInfo:= cds_GetPktClientName.AsString+' / '+cds_GetPktLogicalInventoryName.AsString ;
            OwnerNo := -1
           End
            else
             OwnerNo := 0 ;
           SupplierCode := '';

           end;

{    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SupplierCode   := cds_GetPktSuppliercode.AsString;
           OwnerNo := cds_GetPktOwnerNo.AsInteger;
           ProductNo  := 0 ;
           end; }
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.ds_GetPkt,SupplierCode,OwnerNo, ProductNo,
             PackageTypeNo, LogicalInventoryPointNo);
           end;
    end;

 Result:= OwnerNo ;
 cds_GetPkt.Active:= False ;
End ; *)

procedure TdmInvCtrl.ResolvePkgNoAmbiguity(
  Sender: TObject;
  ADataSource : TDataSource;
  var Choice : String3;
  var SupplierNo : Integer;
  var ProductNo : Integer;
  Var PackageTypeNo : Integer;
  Var LogicalInventoryPointNo : Integer
  );
// User has added a package to a load by specifying the package number.
// More than one package with this number is located in inventories owned by the supplier
// of this load. This event handler allows the user to select which of these packages they
// want to add to the load. The supplier code for their choice is returned in the Choice
// arguement, which is set to an empty string if the user declines to make a choice.
begin
  with TfrmPackagePicker_III.Create(Self) do try
    DataSource := ADataSource;
    ShowModal;
    if ModalResult = mrOK then begin
      Choice     := SupplierCodeForSelectedPkg;
      SupplierNo := SupplierNoForSelectedpkg; //Ägare
      ProductNo  := ProductNoForSelectedpkg ;
      PackageTypeNo := PackageTypeNoForSelectedpkg ;
      LogicalInventoryPointNo := LogicalInventoryPointNoForSelectedpkg ;
      end
    else
     Begin
      Choice := '';
      SupplierNo:= -2 ;
     End ;
  finally
    free;
    end;
end;

function TdmInvCtrl.PkgTypExistIn_InvCtrlPkt (ic_grpNo, PackageTypeNo, LogicalInventoryPointNo : Integer) : Boolean ;
Begin
 Try
 sq_PkgTypExistIn_InvCtrlPkt.ParamByName('ic_grpNo').AsInteger:= ic_grpNo ;
 sq_PkgTypExistIn_InvCtrlPkt.ParamByName('PackageTypeNo').AsInteger:= PackageTypeNo ;
 sq_PkgTypExistIn_InvCtrlPkt.ParamByName('LogicalInventoryPointNo').AsInteger:= LogicalInventoryPointNo ;
 sq_PkgTypExistIn_InvCtrlPkt.Open ;
 if not sq_PkgTypExistIn_InvCtrlPkt.Eof then
  Result:= True
   else
    Result:= False ;
 Finally
  sq_PkgTypExistIn_InvCtrlPkt.Close ;
 End ;
End ;

function TdmInvCtrl.SetNoOfPkgs_PKTTYP (const LogicalInventoryName : String;const OwnerNo, ic_grpNo, NoOfPkgs, PackageTypeNo, LogicalInventoryPointNo : Integer) : Boolean ;
Begin
//Uppdatera om pakettypen finns i inventeringen
 if PkgTypExistIn_InvCtrlPkt(ic_grpNo, PackageTypeNo, LogicalInventoryPointNo) then
 Begin
  Try
   sq_SetNoOfPkg_PKTTYP.ParamByName('ic_grpNo').AsInteger:= ic_grpNo ;
   sq_SetNoOfPkg_PKTTYP.ParamByName('NoOfPkgs').AsInteger:= NoOfPkgs ;
   sq_SetNoOfPkg_PKTTYP.ParamByName('PackageTypeNo').AsInteger:= PackageTypeNo ;
   sq_SetNoOfPkg_PKTTYP.ParamByName('LogicalInventoryPointNo').AsInteger:= LogicalInventoryPointNo ;
   sq_SetNoOfPkg_PKTTYP.ExecSQL ;

  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
 End
 else
//Insert om pakettypen INTE finns i inventeringen 
  Begin //Insert post to invCtrlRowPkt
   Try
   sq_InsPkgType_NoOfPkgs.ParamByName('OwnerNo').AsInteger:= OwnerNo ;
   sq_InsPkgType_NoOfPkgs.ParamByName('ic_grpNo').AsInteger:= ic_grpNo ;
   sq_InsPkgType_NoOfPkgs.ParamByName('NoOfPkgs').AsInteger:= NoOfPkgs ;
   sq_InsPkgType_NoOfPkgs.ParamByName('PackageTypeNo').AsInteger:= PackageTypeNo ;
   sq_InsPkgType_NoOfPkgs.ParamByName('LogicalInventoryPointNo').AsInteger:= LogicalInventoryPointNo ;
   sq_InsPkgType_NoOfPkgs.ParamByName('LogicalInventoryName').AsString:= LogicalInventoryName ;
   sq_InsPkgType_NoOfPkgs.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
 End ;

End ;

procedure TdmInvCtrl.ds_InvCtrlMetodDataChange(Sender: TObject;
  Field: TField);
begin
// if fInvCtrl <> nil then fInvCtrl.SattKnappStatus ;
end;

procedure TdmInvCtrl.ds_LIPSUMDataChange(Sender: TObject; Field: TField);
begin
 cds_PkgCost.Active := False ;
 cds_PkgCost.ParamByName('PackageNo').AsInteger   := cds_LIPSUMPackageNo.AsInteger ;
 cds_PkgCost.ParamByName('SupplierCode').AsString := cds_LIPSUMSuppliercode.AsString ;
 cds_PkgCost.ParamByName('IC_SetNo').AsInteger    := cds_InvCtrlSetIC_SETNo.AsInteger ;
 cds_PkgCost.Active := True ;
end;

procedure TdmInvCtrl.cds_InvCtrl_PkgsAfterInsert(DataSet: TDataSet);
begin
 cds_InvCtrl_PkgsIC_GrpNo.AsInteger             := cds_InvCtrlGrpIC_grpno.AsInteger ;
 cds_InvCtrl_PkgsDateCreated.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;
 cds_InvCtrl_PkgsOperation.AsInteger            := 0 ; //av reg
 cds_InvCtrl_PkgsSortorderno.AsInteger          := AvRegSortorderNo ;
 AvRegSortorderNo                               := Succ(AvRegSortorderNo) ;
 cds_InvCtrl_PkgsRes01.AsInteger                := -1 ;
// cds_InvCtrl_PkgsLager.AsString                 := cds_InvCtrlMetodLogicalInventoryName.AsString ;
end;

procedure TdmInvCtrl.cds_InvCtrl_PkgsAfterPost(DataSet: TDataSet);
begin
// if cds_InvCtrl_PkgsOperation.AsInteger = 0 then
//Avregistrera paketet från lager om det är aktivt och LIPen finns inom inventeringen!
// i annat fall räknas det av från inventeringen endast
 if CheckIfPkgIsIn_A_Inventory_In_CurrentInventering(cds_InvCtrlGrpIC_grpno.AsInteger, cds_InvCtrl_PkgsPackageNo.AsInteger, cds_InvCtrl_PkgsSupplierCode.AsString) then
 if cds_InvCtrl_PkgsStatus.AsInteger = 1 then
 PkgCngInv (cds_InvCtrl_PkgsPackageNo.AsInteger,
 cds_InvCtrl_PkgsOperation.AsInteger,     //används för Status
 3, //Operation 0 på, 3 av
 cds_InvCtrlGrpIC_grpno.AsInteger,
 cds_InvCtrl_PkgsSupplierCode.AsString ) ;

 if cds_InvCtrl_Pkgs.ChangeCount > 0 then
   cds_InvCtrl_Pkgs.ApplyUpdates(0) ;
end;

procedure TdmInvCtrl.cds_InvCtrl_PkgsBeforeDelete(DataSet: TDataSet);
begin
//Lägg tillbaka paket till lager om det var aktivt innan det avregistrerades!
 if CheckIfPkgIsIn_A_Inventory_In_CurrentInventering(cds_InvCtrlGrpIC_grpno.AsInteger, cds_InvCtrl_PkgsPackageNo.AsInteger, cds_InvCtrl_PkgsSupplierCode.AsString) then
 if cds_InvCtrl_PkgsStatus.AsInteger = 1 then
 PkgCngInv (cds_InvCtrl_PkgsPackageNo.AsInteger,
 1,     //används för Status
 12, //Operation 0 på, 3 av, 12 Ångra påregistrering
 cds_InvCtrlGrpIC_grpno.AsInteger,
 cds_InvCtrl_PkgsSupplierCode.AsString ) ;
end;

procedure TdmInvCtrl.cds_InvCtrl_PkgsBeforePost(DataSet: TDataSet);
begin
 if cds_InvCtrl_PkgsPackageNo.IsNull then
 Begin
//  ShowMessage('paketnummer saknas!') ;
  Abort ;
 End
  else
   cds_InvCtrl_PkgsStatus.AsInteger:= GetPkgStatus (cds_InvCtrl_PkgsPackageNo.AsInteger,  cds_InvCtrl_PkgsSupplierCode.AsString) ;
end;

procedure TdmInvCtrl.cds_InvCtrl_PaRegAfterInsert(DataSet: TDataSet);
begin
 cds_InvCtrl_PaRegIC_GrpNo.AsInteger                := cds_InvCtrlGrpIC_grpno.AsInteger ;
 cds_InvCtrl_PaRegDateCreated.AsSQLTimeStamp        := DateTimeToSQLTimeStamp(Now) ;
 cds_InvCtrl_PaRegOperation.AsInteger               := 5 ; //På reg
 cds_InvCtrl_PaRegLogicalInventoryPointNo.AsInteger := cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
 cds_InvCtrl_PaRegLager.AsString                    := cds_InvCtrlMetodLogicalInventoryName.AsString ;
 cds_InvCtrl_PaRegSortorderno.AsInteger             := PaRegSortorderNo ;
 PaRegSortorderNo                                   := Succ(PaRegSortorderNo) ;
 cds_InvCtrl_PaRegRes01.AsInteger                   := -1 ;
end;

procedure TdmInvCtrl.cds_InvCtrl_PaRegAfterPost(DataSet: TDataSet);
begin
 //Lägger till paketet till lagret
 PkgAddInv(cds_InvCtrl_PaRegPackageNo.AsInteger,
 cds_InvCtrl_PaRegSupplierCode.AsString,
 5, //Inventerings diff RegistrationPointNo ;
 ThisUser.UserID,
 1, //Status
 0, //0 = på  - operation
 cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger,
 1, //InventeringsMetod,
 -1,
 cds_InvCtrlMetodLogicalInventoryName.AsString,
 cds_InvCtrlMetodOwnerNo.AsInteger ) ;

 if cds_InvCtrl_PaReg.ChangeCount > 0 then
 Begin
  cds_InvCtrl_PaReg.ApplyUpdates(0) ;
  cds_InvCtrl_PaReg.CommitUpdates ;
 End;

{
const PackageNo : Integer;
const SupplierCode : String3;
const RegistrationPointNo,
UserID,
Status,
Operation,
LogicalInventoryPointNo,
InventeringsMetod,
PackageTypeNo : Integer ;
const LogicalInventoryName : String;
const OwnerNo : Integer) ; }
end;

procedure TdmInvCtrl.cds_InvCtrl_PaRegBeforeDelete(DataSet: TDataSet);
begin
//Lägg tillbaka paket till lager
 PkgCngInv (cds_InvCtrl_PaRegPackageNo.AsInteger,
 0,     //används för Status
 11, //Operation 0 på, 3 av, 11 Ångra påregistrering
 cds_InvCtrlGrpIC_grpno.AsInteger,
 cds_InvCtrl_PaRegSupplierCode.AsString ) ;
end;

procedure TdmInvCtrl.cds_InvCtrl_PaRegBeforePost(DataSet: TDataSet);
begin
 if cds_InvCtrl_PaRegSupplierCode.IsNull then
 Begin
//  ShowMessage('paketnummer saknas!') ;
  Abort ;
 End ;

 if cds_InvCtrl_PaRegPackageNo.IsNull then
 Begin
//  ShowMessage('paketnummer saknas!') ;
  Abort ;
 End ;

 if cds_InvCtrl_PaRegLogicalInventoryPointNo.IsNull then
 Begin
  ShowMessage('Lagergrupp registrerades inte, prova igen!') ;
  Abort ;
 End ;
end;

function TdmInvCtrl.PkgCngInv (const PackageNo, Status, Operation, IC_GrpNo : Integer; const SupplierCode : String) : Boolean ;
Var
  Save_Cursor  : TCursor;
begin
//Uppdaterar PackageNumber och PackageNumberLog
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Result:= False ;
 Try
  try
   sp_PkgCngInv.Close ;
   sp_PkgCngInv.ParamByName('@PackageNo').AsInteger          := PACKAGENO ;
   sp_PkgCngInv.ParamByName('@SupplierCode').AsString        := SupplierCode ;
   sp_PkgCngInv.ParamByName('@RegistrationPointNo').AsInteger:= 5 ; //Inventerings diff RegistrationPointNo ;
   sp_PkgCngInv.ParamByName('@UserID').AsInteger             := ThisUser.UserID ;
   sp_PkgCngInv.ParamByName('@DateCreated').AsSQLTimeStamp   := dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp ; //DateTimeToSQLTimeStamp(WhenCreated) ;
   sp_PkgCngInv.ParamByName('@Status').AsInteger             := Status ;
   sp_PkgCngInv.ParamByName('@Operation').AsInteger          := Operation ;//Lager operation
   sp_PkgCngInv.ExecProc ;
   Result:= True ;
    except
     On E: Exception do
     Begin
      Result:= False ;
      ShowMessage(E.Message) ;
      Raise ;
     End ;
    end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TdmInvCtrl.PkgAddInv(
const PackageNo : Integer;
const SupplierCode : String3;
const RegistrationPointNo,
UserID,
Status,
Operation,
LogicalInventoryPointNo,
InventeringsMetod,
PackageTypeNo : Integer ;
const LogicalInventoryName : String;
const OwnerNo : Integer) ;
Begin
 Try
 sp_PkgAddInv.ParamByName('@PackageNo').AsInteger                := PackageNo ;
 sp_PkgAddInv.ParamByName('@SupplierCode').AsString              := SupplierCode ;
 sp_PkgAddInv.ParamByName('@RegistrationPointNo').AsInteger      := RegistrationPointNo ;
 sp_PkgAddInv.ParamByName('@UserID').AsInteger                   := UserID ;
 sp_PkgAddInv.ParamByName('@DateCreated').AsSQLTimeStamp         := dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp ; //DateTimeToSQLTimeStamp(WhenCreated) ;
 sp_PkgAddInv.ParamByName('@Status').AsInteger                   := Status ;
 sp_PkgAddInv.ParamByName('@Operation').AsInteger                := Operation ;
 sp_PkgAddInv.ParamByName('@IC_grpno').AsInteger                 := cds_InvCtrlGrpIC_grpno.AsInteger ;
 sp_PkgAddInv.ParamByName('@LogicalInventoryPointNo').AsInteger  := LogicalInventoryPointNo ;
 sp_PkgAddInv.ParamByName('@InventeringsMetod').AsInteger        := InventeringsMetod ;
 sp_PkgAddInv.ParamByName('@PackageTypeNo').AsInteger            := PackageTypeNo ;
 sp_PkgAddInv.ParamByName('@LogicalInventoryName').AsInteger     := -1 ;
 sp_PkgAddInv.ParamByName('@OwnerNo').AsInteger                  := OwnerNo ;
 sp_PkgAddInv.ExecProc ;
 Except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
 End ;
End ;

function TdmInvCtrl.GetPackageAttr(const PackageNo : Integer;const SupplierCode : String) : Boolean ;
Begin
 sq_OnePkg.Close ;
 sq_OnePkg.ParamByName('PackageNo').AsInteger   := PackageNo ;
 sq_OnePkg.ParamByName('SupplierCode').AsString := SupplierCode ;
 sq_OnePkg.Open ;
 if not sq_OnePkg.Eof then
  Result:= True
   else
    Result:= False ;
End ;

function TdmInvCtrl.GetPkgStatus (const PackageNo : Integer;const SupplierCode : String) : Integer ;
Begin
 sq_PkgStatus.Close ;
 sq_PkgStatus.ParamByName('PackageNo').AsInteger   := PackageNo ;
 sq_PkgStatus.ParamByName('SupplierCode').AsString := SupplierCode ;
 sq_PkgStatus.Open ;
 if not sq_PkgStatus.Eof then
  Result:= sq_PkgStatusStatus.AsInteger
   else
    Result:= 0 ;
 sq_PkgStatus.Close ;
End ;

procedure TdmInvCtrl.GetAvRegIProduction (S : TStrings) ;
Begin
 With sq_InsertToInvCtrl_Pkgs do
 Begin
  Try
  SQL.Clear ;
  SQL.Add('Delete dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND Operation = 6') ;
  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

  SQL.Clear ;
  SQL.Add('Insert into dbo.InvCtrl_Pkgs') ;
  SQL.Add('Select Distinct '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add(',PP.PackageNo, PP.SupplierCode, 6, GetDate(), ') ;
  SQL.Add('pp.LogicalInventoryPointNo, 0 AS Sortorderno, -1, -1, -1') ;
  SQL.Add('FROM dbo.Package_Production PP ') ;
  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = PP.PackageNo  ') ;
  SQL.Add('AND pn.SupplierCode = PP.SupplierCode') ;

//  SQL.Add('WHERE PP.SupplierNo = '+cds_InvCtrlGrpVerkNo.AsString) ;
//Det räcker med att kolla att paketet är producerat mot en lagergrupp som finns i inventeringen.
//  SQL.Add('WHERE PN.Status = 0') ;//Status måste vara 0
//ÄNDRAT 27 juli 2008 så att alla avregistreringar kommer med i inventeringen, även om de vårdas tillbaka efter maxdatum!

  SQL.Add('WHERE PP.ProductionDate > '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;
  SQL.Add('AND PP.ProductionDate < '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
  SQL.Add('AND PP.Operation = 3') ; //Operation 0 på, 3 av

//Mars 30 2006, tag med alla avregistrerade paket, även paket som inte finns i
//kontrollistan pga att en last som AR och avregas före maxdatum annars ej kommer på avreg listan,
//däremot kommer den med på inlev listan vilket således är fel
//  SQL.Add('AND PP.PackageNo in (Select PackageNo FROM dbo.InvControlrow') ;
//  SQL.Add('WHERE SupplierCode = PP.SupplierCode') ;
//  SQL.Add('AND IC_GrpNo = '+cds_InvCtrlGrpIC_grpno.AsString+')') ;

//Ta ej med om avregistrerat i inventeringen
//*** Ändrat ver 3
{  SQL.Add('AND PP.PackageNo not in (Select PackageNo FROM dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE SupplierCode = PP.SupplierCode') ;
  SQL.Add('AND Operation = 0') ;
  SQL.Add('AND IC_GrpNo = '+cds_InvCtrlGrpIC_grpno.AsString+')') ;
 }
//========== ta bara med paket som har en lagergrupp som finns med i inventeringen.
  SQL.Add('AND pp.LogicalInventoryPointNo in (Select LogicalInventoryPointNo') ;
  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
  SQL.Add('WHERE ICM.IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString+')') ;

//PP.Operation 3 är operation avregistrerade i package_production

  //och att paketet inte avreg före maxdatum
//  if ThisUser.UserID = 8 then SQL.SaveToFile('sq_AvregNormal.txt');
  Try
  ExecSQL ;
  S.Text := SQL.Text ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
 End ; //with
End ;

procedure TdmInvCtrl.GetAvRegBeforeInventoryDateAndExistInKL ;
Begin
 With sq_InsertToInvCtrl_Pkgs do
 Begin
  SQL.Clear ;
  Try
  SQL.Add('Delete dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND Operation = 9') ;
  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

  SQL.Clear ;
  SQL.Add('Insert into dbo.InvCtrl_Pkgs') ;
  SQL.Add('Select Distinct '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add(',PP.PackageNo, PP.SupplierCode, 9, GetDate(), ') ;
  SQL.Add('pp.LogicalInventoryPointNo, 0 AS Sortorderno, -1, -1, -1') ;
  SQL.Add('FROM dbo.Package_Production PP ') ;
  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = PP.PackageNo  ') ;
  SQL.Add('AND pn.SupplierCode = PP.SupplierCode') ;

//  SQL.Add('WHERE PP.SupplierNo = '+cds_InvCtrlGrpVerkNo.AsString) ;
//Det räcker med att kolla att paketet är producerat mot en lagergrupp som finns i inventeringen.
  SQL.Add('WHERE PN.Status = 0') ;//Status måste vara 0
  SQL.Add('AND PP.ProductionDate < '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;
//  SQL.Add('AND PP.ProductionDate < '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
  SQL.Add('AND PP.Operation = 3') ; //Operation 0 påRegga, 3 avRegga

//Mars 30 2006, tag med alla avregistrerade paket, även paket som inte finns i
//kontrollistan pga att en last som AR och avregas före maxdatum annars ej kommer på avreg listan,
//däremot kommer den med på inlev listan vilket således är fel
  SQL.Add('AND PP.PackageNo in (Select PackageNo FROM dbo.InvControlrow') ;
  SQL.Add('WHERE SupplierCode = PP.SupplierCode') ;
  SQL.Add('AND IC_GrpNo = '+cds_InvCtrlGrpIC_grpno.AsString+')') ;

//Ta ej med om avregistrerat i inventeringen
//*** Ändrat ver 3
{  SQL.Add('AND PP.PackageNo not in (Select PackageNo FROM dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE SupplierCode = PP.SupplierCode') ;
  SQL.Add('AND Operation = 0') ;
  SQL.Add('AND IC_GrpNo = '+cds_InvCtrlGrpIC_grpno.AsString+')') ;
 }
//========== ta bara med paket som har en lagergrupp som finns med i inventeringen.
  SQL.Add('AND pp.LogicalInventoryPointNo in (Select LogicalInventoryPointNo') ;
  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
  SQL.Add('WHERE ICM.IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString+')') ;

//  if ThisUser.UserID = 8 then SQL.SaveToFile('sq_AvregBeforeInvDate.txt');
  Try
  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
 End ; //with
End ;


//Lägg sen till dessa paket till ICR
//Laster som har paket som ej finns i ICR och har ett utlastningsdatum mindre än MaxDatum
//och att lasten är ankomstregistrerad.
//och att paketet inte avregistrerades före maxdatum
//Paketet kan ha status = 0 därför att det har avregistrerats efter maxdatum

//Paketetslagergrupp ändras om det säljs/flyttas till en annan ägare
//om det säljs efter maxdatum skall det vara med i ICR

//ICR listan skapas kl 15:00
//1) får med alla paket som finns på lager just nu!
//2) Gör ändringar, lägg till, ta bort, gör nya paket
//---- nu går det några dagar..........
//3) Generera färdigtlistan
//4) Kolla om det har kommit inlevereranser som har lastdatum före maxdatum och inte är med i ICR listan
//om det är så skalll dessa paket läggas till icr listan i den lagergrupp som de har.
//Detta kan hända om lasten AR efter att ICR listan har genererats.
//Om vi nu har ett sådant paket och det lastas ut efter maxdatum så får det en annan lagergrupp, vilket gör att
//det blir fel lagergrupp om vi tar paketets lagergrupp. Därför måste vi ta den lagergrupp det hade vid AR. För att göra
//det tar vi det LIPNo från ägarens PackageNumberLog det hade vid AR.

//Vi måste också kolla om den lagergruppen är med på inventeringen!

//Paketet i ICR listan skall ha den lagergrupp det hade vid AR!

//5) kolla om det har lastats ut paket

//PAKET som skall läggas till inventeringen.
//Visas i Inlev fliken som AR
procedure TdmInvCtrl.GetInLeveranser (S : TStrings) ;
Var MaxDatum, MinDatum : TDateTime ;
Begin
 With sq_InsertToInvCtrl_Pkgs do
 Begin
  MaxDatum:= SQLTimeStampToDateTime(cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp) ;
  MaxDatum:= MaxDatum + 20 ;
  MinDatum:= SQLTimeStampToDateTime(cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp) ;
  MinDatum:= MinDatum - 20 ;


  SQL.Clear ;
  Try
  SQL.Add('Delete dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND Operation = 3') ;

  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

  Deleted_sq_InsertToInvCtrl_Pkgs := True ;


  SQL.Clear ;
  SQL.Add('Insert into dbo.InvCtrl_Pkgs') ;
  SQL.Add('Select Distinct '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add(',LD.PackageNo, LD.SupplierCode, 3, GetDate(),') ;
  //Ändra från LD.LIPNo till cpl.LogicalInventoryPointNo
  SQL.Add('cpl.LogicalInventoryPointNo AS LogicalInventoryPointNo, 0 AS Sortorderno, -1,') ;
  SQL.Add('LD.ShippingPlanNo, -1') ;
  SQL.Add('FROM dbo.Loads L ') ;
  SQL.Add('Inner Join dbo.LoadDetail LD ON LD.LoadNo = L.LoadNo ') ;
  SQL.Add('Inner Join dbo.LoadShippingPlan LSP ON LSP.LoadNo = LD.LoadNo') ;
  SQL.Add('AND LSP.ShippingPlanNo = LD.ShippingPlanNo') ;
  SQL.Add('Inner Join dbo.SupplierShippingPlan SSP on SSP.ShippingPlanNo = LSP.ShippingPlanNo') ;

  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo ') ;
  SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;


//Måste vara utlastad före maxdatum
  SQL.Add('Inner Join dbo.Confirmed_Load CL ON CL.Confirmed_LoadNo = L.LoadNo ') ;//AR

  SQL.Add('Inner Join dbo.Confirmed_Package_Log cpl on cpl.PackageNo = pn.PackageNo') ;
  SQL.Add('								and cpl.SupplierCode = pn.SupplierCode') ;
  SQL.Add('								and cpl.Confirmed_LoadNo = L.LoadNo') ;

//Ändrad så att LIP hämtas från Confirmed_Package_Log i stället för LoadDetail.LIPNo
  SQL.Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = cpl.LogicalInventoryPointNo') ;
  SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;


  SQL.Add('WHERE L.customerNo = '+cds_InvCtrlGrpVerkNo.AsString) ;

  SQL.Add('AND L.LoadedDate < ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
//Måste vara AReg senast 2 veckor efter maxdatum
//Ändrat!! måste vara AR före verkliga MAXDatum
//Ändrat tillbaka så behöver inte vara AR före maxdatum
//  SQL.Add('AND CL.DateCreated < ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
//och efter inventeringsdatum
  SQL.Add('AND CL.DateCreated > ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;


//  SQL.Add('AND CL.DateCreated < '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
//  SQL.Add('AND CL.DateCreated > '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;
  SQL.Add('AND PIP.OwnerNo = '+cds_InvCtrlGrpVerkNo.AsString) ;
//OBS. Paketet kan ha status = 0 därför att det har avregistrerats efter maxdatum


//-- -- Tag ej med om  avreg 0 och 6, eller utlev  2
//*** Ändrat ver 3 *****************************************************************************************
{  SQL.Add('AND LD.PackageNo not in (Select PackageNo FROM dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE SupplierCode = LD.SupplierCode') ;
  SQL.Add('AND IC_GrpNo = ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND ((Operation = 0) or (Operation = 2) or (Operation = 6))') ;
  SQL.Add(')') ;
  }

//*** Ändrat ver 3 *****************************************************************************************
//-- Får ej finnas i kontrollistan
{  SQL.Add('AND LD.PackageNo not in (Select PackageNo ') ;
  SQL.Add('from dbo.InvControlrow icr ') ;
  SQL.Add('WHERE IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND PackageNo = LD.PackageNo ') ;
  SQL.Add('AND SupplierCode = LD.SupplierCode) ') ; }

// ta bara med paket om paketets lagergrupp finns med i inventeringen.
//Ändra från LD.LIPNo till cpl.LogicalInventoryPointNo
  SQL.Add('AND cpl.LogicalInventoryPointNo in (Select LogicalInventoryPointNo') ;
  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
  SQL.Add('WHERE ICM.IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString + ')' ) ;

// ta bara med paket om lastens destination finns med i inventeringen.
//Tog bort detta Juli 2 2009 för att det var AR till ett lager och LO var satt till destination STD.

{  SQL.Add('AND SSP.ShipToInvPointNo in ') ;
  SQL.Add('(Select PIP.PhyInvPointNameNo') ;
  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
  SQL.Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = ICM.LogicalInventoryPointNo') ;
  SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
  SQL.Add('WHERE ICM.IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString + ')' ) ;
}  

//Kund måste vara interverk, i annat fall tas INLEVEN på Avropsnivå om det är en FR.
//************ NYTT OKT 2 2008 **************** NU TAR VI INGA PÅ AVROPSNIVÅN
//Så vi provar utan den här delen...
{  SQL.Add('AND (CL.Confirmed_LoadNo in (Select L2.LoadNo') ;
  SQL.Add('FROM') ;
  SQL.Add('dbo.Loads L2') ;
  SQL.Add('Inner Join dbo.Client iv on iv.ClientNo = L2.CustomerNo') ;
  SQL.Add('WHERE') ;
  SQL.Add('L2.LoadNo = CL.Confirmed_LoadNo') ;
  SQL.Add('AND iv.IntVerk = 1)') ;
  SQL.Add('OR') ;
  SQL.Add('(SSP.ObjectType = 0 OR SSP.ObjectType = 1))') ;
  }



//  if ThisUser.UserID = 8 then SQL.SaveToFile('GetInleveranser.txt');
  S.Text := SQL.Text ;
  Try
  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
 End ; //with
End ;

//PAKET som skall läggas till inventeringen.
//Visas i Inlev fliken som AR
procedure TdmInvCtrl.GetInLeveranser_EJ_AR (S : TStrings) ;
Var MaxDatum, MinDatum : TDateTime ;
Begin
 With sq_InsertToInvCtrl_Pkgs do
 Begin
  MaxDatum:= SQLTimeStampToDateTime(cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp) ;
  MaxDatum:= MaxDatum + 20 ;
  MinDatum:= SQLTimeStampToDateTime(cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp) ;
  MinDatum:= MinDatum - 20 ;
  SQL.Clear ;
  Try
  SQL.Add('Delete dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND Operation = 3') ;

  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

  SQL.Clear ;
  SQL.Add('Insert into dbo.InvCtrl_Pkgs') ;
  SQL.Add('Select Distinct ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add(',LD.PackageNo, LD.SupplierCode, 13, GetDate(),') ;
  //Ändra från LD.LIPNo till cpl.LogicalInventoryPointNo
  SQL.Add('SSP.LIPNo AS LogicalInventoryPointNo, 0 AS Sortorderno, -1,') ;
  SQL.Add('LD.ShippingPlanNo, -1') ;
  SQL.Add('FROM dbo.Loads L ') ;
  SQL.Add('Inner Join dbo.LoadDetail LD ON LD.LoadNo = L.LoadNo ') ;
  SQL.Add('Inner Join dbo.LoadShippingPlan LSP ON LSP.LoadNo = LD.LoadNo') ;
  SQL.Add('AND LSP.ShippingPlanNo = LD.ShippingPlanNo') ;
  SQL.Add('Inner Join dbo.SupplierShippingPlan SSP on SSP.ShippingPlanNo = LSP.ShippingPlanNo') ;

  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo ') ;
  SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;


//Måste vara utlastad före maxdatum
//  SQL.Add('Inner Join dbo.Confirmed_Load CL ON CL.Confirmed_LoadNo = L.LoadNo ') ;//AR
//  SQL.Add('Inner Join dbo.Confirmed_Package_Log cpl on cpl.PackageNo = pn.PackageNo') ;
//  SQL.Add('								and cpl.SupplierCode = pn.SupplierCode') ;
//  SQL.Add('								and cpl.Confirmed_LoadNo = L.LoadNo') ;

//Ändrad så att LIP hämtas från Confirmed_Package_Log i stället för LoadDetail.LIPNo
  SQL.Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SSP.LIPNo') ;
  SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;


  SQL.Add('WHERE L.customerNo = '+cds_InvCtrlGrpVerkNo.AsString) ;
  SQL.Add('AND L.LoadedDate > ' + QuotedStr('2008-09-01 00:00:00')) ;
//
  SQL.Add('AND L.LoadedDate < ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
//Måste vara AReg senast 2 veckor efter maxdatum
//Ändrat!! måste vara AR före verkliga MAXDatum
//  SQL.Add('AND CL.DateCreated < ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(MaxDatum)))) ;
//och efter inventeringsdatum
//  SQL.Add('AND CL.DateCreated > ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;


//  SQL.Add('AND CL.DateCreated < '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
//  SQL.Add('AND CL.DateCreated > '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;
  SQL.Add('AND PIP.OwnerNo = '+cds_InvCtrlGrpVerkNo.AsString) ;
//OBS. Paketet kan ha status = 0 därför att det har avregistrerats efter maxdatum


//-- -- Tag ej med om  avreg 0 och 6, eller utlev  2
//*** Ändrat ver 3 *****************************************************************************************
{  SQL.Add('AND LD.PackageNo not in (Select PackageNo FROM dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE SupplierCode = LD.SupplierCode') ;
  SQL.Add('AND IC_GrpNo = ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND ((Operation = 0) or (Operation = 2) or (Operation = 6))') ;
  SQL.Add(')') ;
  }

//*** Ändrat ver 3 *****************************************************************************************
//-- Får ej finnas i kontrollistan
{  SQL.Add('AND LD.PackageNo not in (Select PackageNo ') ;
  SQL.Add('from dbo.InvControlrow icr ') ;
  SQL.Add('WHERE IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND PackageNo = LD.PackageNo ') ;
  SQL.Add('AND SupplierCode = LD.SupplierCode) ') ; }

// ta bara med paket om paketets lagergrupp finns med i inventeringen.
//Ändra från LD.LIPNo till cpl.LogicalInventoryPointNo
  SQL.Add('AND SSP.LIPNo in (Select LogicalInventoryPointNo') ;
  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
  SQL.Add('WHERE ICM.LogicalInventoryPointNo = SSP.LIPNo AND ICM.IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString + ')' ) ;

// ta bara med paket om lastens destination finns med i inventeringen.
  SQL.Add('AND SSP.ShipToInvPointNo in ') ;
  SQL.Add('(Select PIP.PhyInvPointNameNo') ;
  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
  SQL.Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = ICM.LogicalInventoryPointNo') ;
  SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
  SQL.Add('WHERE ICM.IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString + ')' ) ;

//Kund måste vara interverk, i annat fall tas INLEVEN på Avropsnivå om det är en FR.
//************ NYTT OKT 2 2008 **************** NU TAR VI INGA PÅ AVROPSNIVÅN
//Så vi provar utan den här delen...
{  SQL.Add('AND (CL.Confirmed_LoadNo in (Select L2.LoadNo') ;
  SQL.Add('FROM') ;
  SQL.Add('dbo.Loads L2') ;
  SQL.Add('Inner Join dbo.Client iv on iv.ClientNo = L2.CustomerNo') ;
  SQL.Add('WHERE') ;
  SQL.Add('L2.LoadNo = CL.Confirmed_LoadNo') ;
  SQL.Add('AND iv.IntVerk = 1)') ;
  SQL.Add('OR') ;
  SQL.Add('(SSP.ObjectType = 0 OR SSP.ObjectType = 1))') ;
  }



//  if ThisUser.UserID = 8 then SQL.SaveToFile('GetInleveranser_EJ_AR.txt');
  S.Text := SQL.Text ;
  Try
  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
 End ; //with
End ;

//PAKET som skall läggas till inventeringen.
//Endast laster på avropsnivå som inte säljs till interverk
//************************************************************
//************************************************************
//************ Den här proceduren anropas inte längre*********
//************ Vi använder bara LO lasten i inköpet ********** 
//************************************************************
//************************************************************

procedure TdmInvCtrl.GetInLeveranserAVROP (S : TStrings) ;
//Var MaxDatum, MinDatum : TDateTime ;
Begin
 With sq_InsertToInvCtrl_Pkgs do
 Begin
{
    MaxDatum:= SQLTimeStampToDateTime(cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp) ;
    MaxDatum:= MaxDatum + 20 ;
    MinDatum:= SQLTimeStampToDateTime(cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp) ;
    MinDatum:= MinDatum - 20 ;
}

  SQL.Clear ;
  SQL.Add('Insert into dbo.InvCtrl_Pkgs') ;
//-- INLEV på AVROP
  SQL.Add('Select Distinct '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add(',LD.PackageNo, LD.SupplierCode, 3, GetDate(),') ;
  SQL.Add('LD.LIPNo AS LogicalInventoryPointNo, 0 AS Sortorderno, -1,') ;
  SQL.Add('LD.ShippingPlanNo, -1') ;  
  SQL.Add('FROM dbo.Loads L') ;
  SQL.Add('Inner Join dbo.LoadDetail LD ON LD.LoadNo = L.LoadNo') ;
  SQL.Add('Inner Join dbo.LoadShippingPlan LSP ON LSP.LoadNo = LD.LoadNo') ;
  SQL.Add('AND LSP.ShippingPlanNo = LD.ShippingPlanNo') ;
  SQL.Add('Inner Join dbo.CustomerShippingPlanHeader SSP on SSP.ShippingPlanNo = LSP.ShippingPlanNo') ;
  SQL.Add('Inner Join dbo.Orders OH on OH.OrderNo = SSP.OrderNo') ;
  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo') ;
  SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;
  SQL.Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = LD.LIPNo') ;
  SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
  SQL.Add('Inner Join dbo.Confirmed_Load CL ON CL.NewLoadNo = L.LoadNo') ;
  SQL.Add('Inner Join dbo.Invoiced_Load IL ON IL.LoadNo = L.LoadNo') ;
  SQL.Add('Inner Join dbo.InvoiceHeader IH on IH.InternalInvoiceNo = IL.InternalInvoiceNo') ;
  SQL.Add('Inner Join dbo.InvoiceNumber_PO INPO on INPO.InternalInvoiceNo = IH.InternalInvoiceNo') ;
  SQL.Add('WHERE L.SupplierNo = ' + cds_InvCtrlGrpVerkNo.AsString) ;
  SQL.Add('AND OH.OrderType = 1') ;

  SQL.Add('AND IH.InvoiceDate <= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;

  SQL.Add('AND IH.InvoiceDate >= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;


  SQL.Add('AND LD.PackageNo not in (Select PackageNo') ;
  SQL.Add('from dbo.InvControlrow icr') ;
  SQL.Add('WHERE IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND PackageNo = LD.PackageNo') ;
  SQL.Add('AND SupplierCode = LD.SupplierCode)') ;

  SQL.Add('AND LD.LIPNo in') ;
  SQL.Add('(Select ICM.LogicalInventoryPointNo') ;
  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
  SQL.Add('WHERE ICM.IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString + ')') ;

  SQL.Add('AND CL.Confirmed_LoadNo not in (Select L2.LoadNo') ;
  SQL.Add('FROM') ;
  SQL.Add('dbo.Loads L2') ;
  SQL.Add('Inner Join dbo.Client iv on iv.ClientNo = L2.CustomerNo') ;
  SQL.Add('WHERE') ;
  SQL.Add('L2.LoadNo = CL.Confirmed_LoadNo') ;
  SQL.Add('AND iv.IntVerk = 1)') ;


//  if ThisUser.UserID = 8 then SQL.SaveToFile('GetInleveranserAVROP.txt');
  S.Text  := SQL.Text ;
  Try
  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
 End ; //with
End ;

procedure TdmInvCtrl.GetInLeveranserAVROP_Proforma (S : TStrings) ;
//Var MaxDatum, MinDatum : TDateTime ;
Begin
 With sq_InsertToInvCtrl_Pkgs do
 Begin
  Try

{
    MaxDatum:= SQLTimeStampToDateTime(cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp) ;
    MaxDatum:= MaxDatum + 20 ;
    MinDatum:= SQLTimeStampToDateTime(cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp) ;
    MinDatum:= MinDatum - 20 ;
}


  if not Deleted_sq_InsertToInvCtrl_Pkgs then
  Begin
  SQL.Clear ;
  Try
  SQL.Add('Delete dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND Operation = 3') ;

  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

   Deleted_sq_InsertToInvCtrl_Pkgs  := False ;
  End ;

  SQL.Clear ;
  SQL.Add('Insert into dbo.InvCtrl_Pkgs') ;
//-- INLEV på AVROP
  SQL.Add('Select Distinct '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add(',LD.PackageNo, LD.SupplierCode, 3, GetDate(),') ;
  SQL.Add('PN.LogicalInventoryPointNo, 0 AS Sortorderno, -1,') ;
  SQL.Add('LD.ShippingPlanNo, -1') ;
  SQL.Add('FROM dbo.Loads L') ;
  SQL.Add('Inner Join dbo.LoadDetail LD ON LD.LoadNo = L.LoadNo') ;
  SQL.Add('Inner Join dbo.LoadShippingPlan LSP ON LSP.LoadNo = LD.LoadNo') ;
  SQL.Add('AND LSP.ShippingPlanNo = LD.ShippingPlanNo') ;
  SQL.Add('Inner Join dbo.CustomerShippingPlanHeader SSP on SSP.ShippingPlanNo = LSP.ShippingPlanNo') ;
  SQL.Add('Inner Join dbo.Orders OH on OH.OrderNo = SSP.OrderNo') ;
  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo') ;
  SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;
  SQL.Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = LD.LIPNo') ;
  SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
  SQL.Add('Inner Join dbo.Confirmed_Load CL ON CL.NewLoadNo = L.LoadNo') ;
  SQL.Add('Inner Join dbo.Invoiced_Load IL ON IL.LoadNo = L.LoadNo') ;
  SQL.Add('Inner Join dbo.InvoiceHeader IH on IH.InternalInvoiceNo = IL.InternalInvoiceNo') ;
  SQL.Add('Inner Join dbo.ProformaInvoiceNumber INPO on INPO.InternalInvoiceNo = IH.InternalInvoiceNo') ;

//La till july 4 2009, i stället för IN satsen som togs bort
  SQL.Add('Left Outer Join dbo.InvControlrow icr on icr.IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND icr.PackageNo = LD.PackageNo') ;
  SQL.Add('AND icr.SupplierCode = LD.SupplierCode') ;

  SQL.Add('WHERE L.CustomerNo = ' + cds_InvCtrlGrpVerkNo.AsString) ;
  SQL.Add('AND OH.OrderType = 0') ;
//-- AND L.LoadedDate <= '2008-04-01 00:00:00'
//-- AND CL.DateCreated < '2008-04-15 00:00:00'
//-- AND CL.DateCreated >= '2008-03-31 16:39:11'

  SQL.Add('AND IH.InvoiceDate <= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
//  SQL.Add('AND IH.InvoiceDate < '2008-04-15 00:00:00'
  SQL.Add('AND IH.InvoiceDate >= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;

//La till july 4 2009, i stället för IN satsen som togs bort
//Tog bort denna otroligt idiotiska sats 29 juni 2010
//  SQL.Add('and LD.PackageNo is null') ;

//AND PIP.OwnerNo = 741
//AND LD.PackageNo = 269341
//AND LD.PackageNo not in (Select PackageNo FROM dbo.InvCtrl_Pkgs
//WHERE SupplierCode = LD.SupplierCode
//AND IC_GrpNo = 563
//AND ((Operation = 0) or (Operation = 2) or (Operation = 6))
//)

{
//Tog bort July 4 2009, med denna sats tar frågan låååång tid.
  SQL.Add('AND LD.PackageNo not in (Select PackageNo') ;
  SQL.Add('from dbo.InvControlrow icr') ;
  SQL.Add('WHERE IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND PackageNo = LD.PackageNo') ;
  SQL.Add('AND SupplierCode = LD.SupplierCode)') ;
 }

//  SQL.Add('AND LD.LIPNo in (Select ICM.LogicalInventoryPointNo
//  SQL.Add('FROM dbo.InvCtrlMetod ICM
//  SQL.Add('WHERE ICM.IC_grpno = 563)

  SQL.Add('AND PN.LogicalInventoryPointNo in') ;
  SQL.Add('(Select ICM.LogicalInventoryPointNo') ;
  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
// Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = ICM.LogicalInventoryPointNo
// Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo
  SQL.Add('WHERE ICM.IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString + ')') ;

  SQL.Add('AND CL.Confirmed_LoadNo not in (Select L2.LoadNo') ;
  SQL.Add('FROM') ;
  SQL.Add('dbo.Loads L2') ;
  SQL.Add('Inner Join dbo.Client iv on iv.ClientNo = L2.CustomerNo') ;
  SQL.Add('WHERE') ;
  SQL.Add('L2.LoadNo = CL.Confirmed_LoadNo') ;
  SQL.Add('AND iv.IntVerk = 1)') ;


//  if ThisUser.UserID = 8 then SQL.SaveToFile('GetInleveranserAVROP_Proforma.txt');
  S.Text  := SQL.Text ;
  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

 End ; //with
End ;

//Utleveranser
//Kolla om några paket har lastats ut mellan inventerings- och maxdatum.
//Bara laster med status <> 0
//Markera bort dessa paket från ICR
//Paket som produceras och lastas ut mellan inv och maxdatum markeras bort här.
//Laster som är utlastatas med status preliminär är med på ICR listan vid skapa kontrollistor
procedure TdmInvCtrl.GetUTLeveranser (S : TStrings) ;
Begin
 With sq_InsertToInvCtrl_Pkgs do
 Begin
  Try
  SQL.Clear ;
  SQL.Add('Delete dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND Operation = 2') ;
  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

  Try
  SQL.Clear ;
  SQL.Add('Insert into dbo.InvCtrl_Pkgs') ;
  SQL.Add('Select Distinct ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add(',LD.PackageNo, LD.SupplierCode, 2, GetDate(),-1, 0 AS Sortorderno, -1,') ;
  SQL.Add('LD.ShippingPlanNo, -1') ;
  SQL.Add('FROM dbo.Loads L ') ;
  SQL.Add('Inner Join dbo.LoadDetail LD ON LD.LoadNo = L.LoadNo ') ;
  SQL.Add('Inner Join dbo.LoadShippingPlan LSP ON LSP.LoadNo = LD.LoadNo') ;
  SQL.Add('AND LSP.ShippingPlanNo = LD.ShippingPlanNo') ;
//!!!!!!Bara för att hämta in endast LO laster!!
  SQL.Add('Inner Join dbo.SupplierShippingPlan SSP on SSP.SupplierShipPlanObjectNo = LD.DefSSPNo') ;
//  SQL.Add('Inner Join dbo.SupplierShippingPlan SSP on SSP.ShippingPlanNo = LSP.ShippingPlanNo') ;

  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo ') ;
  SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;
  SQL.Add('WHERE L.SupplierNo = ' + cds_InvCtrlGrpVerkNo.AsString) ;
//funderar om inte man bara ska kolla på om lasten är före maxdatum
//eller så här
//om paketet finns i dbo.InvControlrow och är utlastad före maxdatum skall det läggas till utlevLoggen! anledningen
//till att kolla bägge kriterier är att annars kommer så många laster att kontrolleras och det blir oerhört långsamt!!
//Eller om paketet är utlastat mellan inventeringsdatum och Maxdatum.

//  SQL.Add('AND ((LD.PackageNo in (Select PackageNo FROM dbo.InvControlrow') ;      //borttaget April 05 2006
//  SQL.Add('WHERE SupplierCode = LD.SupplierCode') ;
//  SQL.Add('AND IC_GrpNo = '+cds_InvCtrlGrpIC_grpno.AsString+')') ;
//  SQL.Add('AND L.LoadedDate <= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
//  SQL.Add(')') ;
//  SQL.Add(' OR ') ;
//  SQL.Add('(') ;
  SQL.Add('AND L.LoadedDate <= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
  SQL.Add('AND L.LoadedDate >= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;
//  SQL.Add('))') ;
  SQL.Add('AND L.SenderLoadStatus <> 0 ') ;
//  SQL.Add('AND ((SSP.ObjectType = 0) or (SSP.ObjectType = 1))') ;

// ta bara med paket om SSP lagerställe finns med i inventeringen.
//Satsen nedanför tar hand om "problemet"
//  SQL.Add('AND SSP.LoadingLocationNo in') ;
//  SQL.Add('(Select PIP.PhyInvPointNameNo') ;
//  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
//  SQL.Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = ICM.LogicalInventoryPointNo') ;
//  SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
//  SQL.Add('WHERE ICM.IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString+')' ) ;

//**** ta bara med paket om paketets lagergrupp finns med i inventeringen.
//Kör vi på LoadDetail.LIPNo ska det fungera
  SQL.Add('AND LD.LIPNo in (Select ICM.LogicalInventoryPointNo FROM dbo.InvCtrlMetod ICM') ;
  SQL.Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = ICM.LogicalInventoryPointNo') ;
  SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
  SQL.Add('WHERE ICM.IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString+')' ) ;

//Tag bara med utleveranser
  SQL.Add('AND (LSP.ShippingPlanNo in (Select CSH.ShippingPlanNo FROM ') ;
  SQL.Add('dbo.CustomerShippingPlanHeader CSH') ;
  SQL.Add('Inner Join dbo.Orders OH on OH.OrderNo = SSP.OrderNo') ;
  SQL.Add('WHERE OH.OrderType = 0)') ;

  SQL.Add('OR') ;

  SQL.Add('(SSP.ObjectType = 0 OR SSP.ObjectType = 1))');

//   SQL.Add('AND ((L.SupplierNo <> 741) and (SSP.ObjectType <> 2))') ;



// ta bara med paket om paketets lagergrupp finns med i inventeringen.
//Kan inte använda den pga att paketets lagergrupp kan ha hunnit ändrats om lasten är AReg
//  SQL.Add('AND pn.LogicalInventoryPointNo in (Select LogicalInventoryPointNo') ;
//  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
//  SQL.Add('WHERE ICM.IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString+')' ) ;

//Förstår inte varför jag hade denna begränsning, paket kan ju skapas och lastas ut under tiden mellan inv och maxdatum!!
//  SQL.Add('AND LD.PackageNo in (Select PackageNo FROM dbo.InvControlrow') ;      //borttaget April 05 2006
//  SQL.Add('WHERE SupplierCode = LD.SupplierCode') ;
//  SQL.Add('AND IC_GrpNo = '+cds_InvCtrlGrpIC_grpno.AsString+')') ;

//  if ThisUser.UserID = 8 then SQL.SaveToFile('sq_InsUTLeveranser_I.txt');
  S.Text  := SQL.Text ;
  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

 End ; //with
End ;

//Utleveranser gjorda inom inventeringsperioden på avropsnivå
procedure TdmInvCtrl.GetUTLeveranserAvropsLevel (S : TStrings) ;
Begin
 With sq_InsertToInvCtrl_Pkgs do
 Begin
{  SQL.Clear ;
  SQL.Add('Delete dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND Operation = 2') ;
  ExecSQL(False) ; }

  Try
  SQL.Clear ;
  SQL.Add('Insert into dbo.InvCtrl_Pkgs') ;
  SQL.Add('Select Distinct ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add(',LD.PackageNo, LD.SupplierCode, 2, GetDate(),-1, 0 AS Sortorderno, -1,') ;
  SQL.Add('LD.ShippingPlanNo, IL.InternalInvoiceNo') ;
  SQL.Add('FROM dbo.Loads L ') ;
  SQL.Add('Inner Join dbo.Invoiced_Load IL ON IL.LoadNo = L.LoadNo ') ;
  SQL.Add('Inner Join dbo.InvoiceHeader IH ON IH.InternalInvoiceNo = IL.InternalInvoiceNo') ;
  SQL.Add('Inner Join dbo.LoadDetail LD ON LD.LoadNo = L.LoadNo ') ;
  SQL.Add('Inner Join dbo.LoadShippingPlan LSP ON LSP.LoadNo = LD.LoadNo') ;
  SQL.Add('AND LSP.ShippingPlanNo = LD.ShippingPlanNo') ;
  SQL.Add('Inner Join dbo.CustomerShippingPlanDetails CSD on CSD.CustShipPlanDetailObjectNo = LD.DefaultCustShipObjectNo') ;
  SQL.Add('Inner Join dbo.CustomerShippingPlanHeader SSP on SSP.ShippingPlanNo = CSD.ShippingPlanNo') ;
  SQL.Add('Inner Join dbo.Orders OH on OH.OrderNo = SSP.OrderNo') ;
  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo ') ;
  SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;
  SQL.Add('WHERE L.SupplierNo = ' + cds_InvCtrlGrpVerkNo.AsString) ;
  SQL.Add('AND OH.OrderType = 0') ;
  SQL.Add('AND IH.Debit_Credit = 0') ;
//funderar om inte man bara ska kolla på om lasten är före maxdatum
//eller så här
//om paketet finns i dbo.InvControlrow och är utlastad före maxdatum skall det läggas till utlevLoggen! anledningen
//till att kolla bägge kriterier är att annars kommer så många laster att kontrolleras och det blir oerhört långsamt!!
//Eller om paketet är utlastat mellan inventeringsdatum och Maxdatum.

//  SQL.Add('AND ((LD.PackageNo in (Select PackageNo FROM dbo.InvControlrow') ;      //borttaget April 05 2006
//  SQL.Add('WHERE SupplierCode = LD.SupplierCode') ;
//  SQL.Add('AND IC_GrpNo = '+cds_InvCtrlGrpIC_grpno.AsString+')') ;
//  SQL.Add('AND L.LoadedDate <= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
//  SQL.Add(')') ;
//  SQL.Add(' OR ') ;
//  SQL.Add('(') ;
  SQL.Add('AND IH.InvoiceDate <= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
  SQL.Add('AND IH.InvoiceDate >= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;
//  SQL.Add('))') ;
  SQL.Add('AND L.SenderLoadStatus <> 0 ') ;
//  SQL.Add('AND ((SSP.ObjectType = 0) or (SSP.ObjectType = 1))') ;

// ta bara med paket om SSP lagerställe finns med i inventeringen.
//Satsen nedanför tar hand om "problemet"
//  SQL.Add('AND SSP.LoadingLocationNo in') ;
//  SQL.Add('(Select PIP.PhyInvPointNameNo') ;
//  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
//  SQL.Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = ICM.LogicalInventoryPointNo') ;
//  SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
//  SQL.Add('WHERE ICM.IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString+')' ) ;

//**** ta bara med paket om paketets lagergrupp finns med i inventeringen.
//Kör vi på LoadDetail.LIPNo ska det fungera
  SQL.Add('AND LD.LIPNo in (Select ICM.LogicalInventoryPointNo FROM dbo.InvCtrlMetod ICM') ;
  SQL.Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = ICM.LogicalInventoryPointNo') ;
  SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
  SQL.Add('WHERE ICM.IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString+')' ) ;

//gör den här kontrollen ifall paketnr las till i proceduren GetUTLeveranser ;
  SQL.Add('AND LD.PackageNo not in (Select ict.PackageNo FROM dbo.InvCtrl_Pkgs ict') ;
  SQL.Add('WHERE ict.SupplierCode = LD.SupplierCode AND ict.Operation = 2') ;
  SQL.Add('AND ict.IC_GrpNo = ' + cds_InvCtrlGrpIC_grpno.AsString+')') ;

  SQL.Add('AND ( (IH.InternalInvoiceNo in (Select invno.InternalInvoiceNo FROM dbo.InvoiceNumber invno') ;
  SQL.Add('WHERE invno.InternalInvoiceNo = IH.InternalInvoiceNo))') ;

  SQL.Add('OR (IH.InternalInvoiceNo in (Select invno.InternalInvoiceNo FROM dbo.InvoiceNo_USA invno') ;
  SQL.Add('WHERE invno.InternalInvoiceNo = IH.InternalInvoiceNo))') ;

  SQL.Add('OR (IH.InternalInvoiceNo in (Select invno.InternalInvoiceNo FROM dbo.InvNo_FW invno') ;
  SQL.Add('WHERE invno.InternalInvoiceNo = IH.InternalInvoiceNo))') ;

  SQL.Add('OR (IH.InternalInvoiceNo in (Select invno.InternalInvoiceNo FROM dbo.InvoiceNo_VTA invno') ;
  SQL.Add('WHERE invno.InternalInvoiceNo = IH.InternalInvoiceNo))') ;

  SQL.Add('OR (IH.InternalInvoiceNo in (Select invno.InternalInvoiceNo FROM dbo.ProformaInvoiceNumber invno') ;
  SQL.Add('WHERE invno.InternalInvoiceNo = IH.InternalInvoiceNo)) )') ;



// ta bara med paket om paketets lagergrupp finns med i inventeringen.
//Kan inte använda den pga att paketets lagergrupp kan ha hunnit ändrats om lasten är AReg
//  SQL.Add('AND pn.LogicalInventoryPointNo in (Select LogicalInventoryPointNo') ;
//  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
//  SQL.Add('WHERE ICM.IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString+')' ) ;

//Förstår inte varför jag hade denna begränsning, paket kan ju skapas och lastas ut under tiden mellan inv och maxdatum!!
//  SQL.Add('AND LD.PackageNo in (Select PackageNo FROM dbo.InvControlrow') ;      //borttaget April 05 2006
//  SQL.Add('WHERE SupplierCode = LD.SupplierCode') ;
//  SQL.Add('AND IC_GrpNo = '+cds_InvCtrlGrpIC_grpno.AsString+')') ;

//  if ThisUser.UserID = 8 then SQL.SaveToFile('sq_InsUTLeveranser_Avrop.txt');
  S.Text  := SQL.Text ;
  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

 End ; //with
End ;

//Producerade paket
//Lägg in dessa paket sen till ICR
//Bara paket som är producerade mellan inventeringsdatum och maxdatum och inte är avregistrerade före maxdatum
//och ej med i ICR listan förstås
procedure TdmInvCtrl.GetProduction(S : TStrings) ;
Begin
 With sq_InsertToInvCtrl_Pkgs do
 Begin
  Try
  SQL.Clear ;
  SQL.Add('Delete dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND Operation = 4') ;
  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

  Try
  SQL.Clear ;
  SQL.Add('Insert into dbo.InvCtrl_Pkgs') ;

  SQL.Add('Select Distinct ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add(',PP.PackageNo, PP.SupplierCode, 4, GetDate(), pp.LogicalInventoryPointNo, 0 AS Sortorderno, -1,') ;


  SQL.Add('(Select TOP 1 LS.ShippingPlanNo FROM') ;
  SQL.Add('dbo.LoadShippingPlan LS') ;
  SQL.Add('Inner Join dbo.LoadDetail LD on LD.LoadNo = LS.LoadNo') ;
  SQL.Add('WHERE') ;
  SQL.Add('LD.PackageNo = PP.PackageNo') ;
  SQL.Add('AND LD.SupplierCode = PP.SupplierCode') ;
  SQL.Add('Order By LS.ShippingPlanNo Desc ) AS LO') ;

  SQL.Add(', -1') ;

  SQL.Add('FROM dbo.Package_Production PP ') ;
  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = PP.PackageNo ') ;
  SQL.Add('AND pn.SupplierCode = PP.SupplierCode') ;

//  SQL.Add('WHERE PP.SupplierNo = '+cds_InvCtrlGrpVerkNo.AsString) ;
//Det räcker med att kolla att paketet är producerat mot en lagergrupp som finns i inventeringen.
  SQL.Add('WHERE PP.ProductionDate > '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;
  SQL.Add('AND PP.ProductionDate < '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
  SQL.Add('AND PP.Operation = 0 ') ;

//Status kan ju ha ändrat sig
  //  SQL.Add('AND pn.Status = 1 ') ;

//-- ej avreg eller utlev
//*** Ändrat ver 3

{  SQL.Add('AND PP.PackageNo not in (Select PackageNo FROM dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE SupplierCode = PP.SupplierCode') ;
  SQL.Add('AND IC_GrpNo = ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND ((Operation = 0) or (Operation = 2) or (Operation = 6)))') ;
}

//***** NY 2 Okt 2008 -- Inte ett paket som redan finns på inlev fliken
//Kör ALLTID inlev före produktion för att fånga upp
  SQL.Add('AND PP.PackageNo not in (Select PackageNo FROM dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE SupplierCode = PP.SupplierCode') ;
  SQL.Add('AND IC_GrpNo = ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND ((Operation = 3) or (Operation = 3) or (Operation = 3)))') ;

//-- ej i kontrollistan
  SQL.Add('AND PP.PackageNo not in (Select PackageNo ') ;
  SQL.Add('from dbo.InvControlrow icr') ;
  SQL.Add('WHERE IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND PackageNo = PP.PackageNo') ;
  SQL.Add('AND SupplierCode = PP.SupplierCode)') ;

// --paketets (package_production) lagergrupp finns i InvCtrlMetod
  SQL.Add('AND pp.LogicalInventoryPointNo in (Select LogicalInventoryPointNo') ;
  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
  SQL.Add('WHERE ICM.IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString + ')') ;


//  if ThisUser.UserID = 8 then SQL.SaveToFile('sq_GetProduction.txt');
  ExecSQL ;
  S.Text := SQL.Text ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
 End ; //with
End ;

procedure TdmInvCtrl.GetProductionBefore ;
Var MinDatum : TDateTime ;
Begin
 With sq_InsertToInvCtrl_Pkgs do
 Begin
  MinDatum:= SQLTimeStampToDateTime(cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp) ;
  MinDatum:= MinDatum - 4 ;
  Try
  SQL.Clear ;
  SQL.Add('Delete dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND Operation = 10') ;
  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

  Try
  SQL.Clear ;
  SQL.Add('Insert into dbo.InvCtrl_Pkgs') ;
  SQL.Add('Select Distinct '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add(',PP.PackageNo, PP.SupplierCode, 10, GetDate(), pp.LogicalInventoryPointNo, 0 AS Sortorderno, -1,') ;
  SQL.Add('-1, -1') ;
  SQL.Add('FROM dbo.Package_Production PP ') ;
  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = PP.PackageNo ') ;

  SQL.Add('AND pn.SupplierCode = PP.SupplierCode') ;

  SQL.Add('INNER JOIN dbo.RegistrationPoint rp on rp.RegPointNo = pp.ProductionUnitNo') ;

  SQL.Add('WHERE PP.ProductionDate < '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;
  SQL.Add('AND PP.ProductionDate > '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(MinDatum)))) ;
  SQL.Add('AND PP.Operation = 0') ;
  SQL.Add('AND PP.SupplierNo = ' + cds_InvCtrlGrpVerkNo.AsString) ;
  SQL.Add('AND rp.SequenceNo = 1') ;
//-- Ej avregistrerat under den tiden
  SQL.Add('AND PP.PackageNo not in (Select pp3.PackageNo') ;
  SQL.Add('from dbo.Package_Production pp3') ;
  SQL.Add('WHERE pp3.SupplierCode = PP.SupplierCode') ;
  SQL.Add('AND pp3.ProductionDate  < '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;
  SQL.Add('AND pp3.Operation = 3') ;
  SQL.Add('AND pp3.SupplierNo = '+cds_InvCtrlGrpVerkNo.AsString+')') ;

//-- Produktions lagergrupp finns i inventeringen
  SQL.Add('AND pp.LogicalInventoryPointNo in (Select LogicalInventoryPointNo') ;
  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
  SQL.Add('WHERE ICM.IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString + ')') ;

//-- Ej i Kontrollista
  SQL.Add('AND PP.PackageNo not in (Select PackageNo') ;
  SQL.Add('from dbo.InvControlrow icr') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND PackageNo = PP.PackageNo') ;
  SQL.Add('AND SupplierCode = PP.SupplierCode)') ;

//-- Ej utlastat eller avregistrerat före maxdatum bla
  SQL.Add('AND PP.PackageNo not in (Select PackageNo FROM dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE SupplierCode = PP.SupplierCode') ;
  SQL.Add('AND IC_GrpNo = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND ((Operation = 2) or (Operation = 6) or (Operation = 9)') ;
  SQL.Add('or (Operation = 3) or (Operation = 4) or (Operation = 5)) )') ;

//-- Ej utlastat eller avregistrerat före Inventeringsdatum
  SQL.Add('AND PP.PackageNo not in (Select Distinct LD.PackageNo') ;
  SQL.Add('FROM dbo.Loads L') ;
  SQL.Add('Inner Join dbo.LoadDetail LD ON LD.LoadNo = L.LoadNo') ;
  SQL.Add('Inner Join dbo.LoadShippingPlan LSP ON LSP.LoadNo = LD.LoadNo') ;
  SQL.Add('AND LSP.ShippingPlanNo = LD.ShippingPlanNo') ;
  SQL.Add('Inner Join dbo.SupplierShippingPlan SSP on SSP.ShippingPlanNo = LSP.ShippingPlanNo') ;
  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo') ;
  SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;
  SQL.Add('WHERE L.SupplierNo = '+cds_InvCtrlGrpVerkNo.AsString) ;
  SQL.Add('AND LD.SupplierCode = PP.SupplierCode') ;
  SQL.Add('AND L.LoadedDate <= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;

  SQL.Add('AND SSP.LoadingLocationNo in') ;
  SQL.Add('(Select PIP.PhyInvPointNameNo') ;
  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
  SQL.Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = ICM.LogicalInventoryPointNo') ;
  SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
  SQL.Add('WHERE ICM.IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString + '))') ;



(*

//Det räcker med att kolla att paketet är producerat mot en lagergrupp som finns i inventeringen.
  SQL.Add('WHERE PP.ProductionDate < '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;
  SQL.Add('AND PP.Operation = 0 ') ;//Operation 0 på, 3 av
  SQL.Add('AND PP.SupplierNo = 76') ;

//Paketet måste vara aktivt
  SQL.Add('AND ((pn.Status = 1) ') ;
//eller
  SQL.Add('OR (PP.PackageNo in (Select PackageNo FROM dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE SupplierCode = PP.SupplierCode') ;
  SQL.Add('AND IC_GrpNo = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND ((Operation = 0) or (Operation = 2) or (Operation = 6)))))') ;

//-- ej avreg eller utlev
  SQL.Add('AND PP.PackageNo not in (Select PackageNo FROM dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE SupplierCode = PP.SupplierCode') ;
  SQL.Add('AND IC_GrpNo = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND (Operation = 3) or (Operation = 4) or (Operation = 5))') ;

//-- ej i kontrollistan
  SQL.Add('AND PP.PackageNo not in (Select PackageNo ') ;
  SQL.Add('from dbo.InvControlrow icr') ;
  SQL.Add('WHERE IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND PackageNo = PP.PackageNo') ;
  SQL.Add('AND SupplierCode = PP.SupplierCode)') ;

// --paketets (package_production) lagergrupp finns i InvCtrlMetod
  SQL.Add('AND pn.LogicalInventoryPointNo in (Select LogicalInventoryPointNo') ;
  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
  SQL.Add('WHERE ICM.IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString+')') ;

  *)
//  if ThisUser.UserID = 8 then SQL.SaveToFile('sq_GetProductionBefore.txt');
  ExecSQL ;
  S.Text := SQL.Text ;  
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
 End ; //with
End ;

procedure TdmInvCtrl.cds_SurfGrpHdrAfterInsert(DataSet: TDataSet);
begin
 cds_SurfGrpHdrSurfacingGroupNo.AsInteger     := dmsConnector.NextMaxNo('SurfacingGroupHdr') ;
 cds_SurfGrpHdrDateCreated.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;
 cds_SurfGrpHdrCreatedUser.AsInteger          := ThisUser.UserID ;
end;

procedure TdmInvCtrl.cds_SurGrpRowAfterInsert(DataSet: TDataSet);
begin
 cds_SurGrpRowSurfacingGroupNo.AsInteger      := cds_SurfGrpHdrSurfacingGroupNo.AsInteger ;
end;

procedure TdmInvCtrl.GetCurrentSortordernos ;
Begin
//==================================== Av reg
 sq_GetSortOrderNo.Close ;
 sq_GetSortOrderNo.ParamByName('IC_GrpNo').AsInteger  := cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_GetSortOrderNo.ParamByName('Operation').AsInteger := cAvReg ;
 sq_GetSortOrderNo.Open ;
 if not sq_GetSortOrderNo.Eof then
  AvRegSortorderNo:= sq_GetSortOrderNoCurrentSortOrderNo.AsInteger + 1
   else
    AvRegSortorderNo:= 1 ;
 sq_GetSortOrderNo.Close ;
//==================================== på reg
 sq_GetSortOrderNo.Close ;
 sq_GetSortOrderNo.ParamByName('IC_GrpNo').AsInteger  := cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_GetSortOrderNo.ParamByName('Operation').AsInteger := cPaReg ;
 sq_GetSortOrderNo.Open ;
 if not sq_GetSortOrderNo.Eof then
  PaRegSortorderNo:= sq_GetSortOrderNoCurrentSortOrderNo.AsInteger + 1
   else
    PaRegSortorderNo:= 1 ;
 sq_GetSortOrderNo.Close ;
 //==================================== Ändra
 sq_GetSortOrderNo.Close ;
 sq_GetSortOrderNo.ParamByName('IC_GrpNo').AsInteger  := cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_GetSortOrderNo.ParamByName('Operation').AsInteger := cChange ;
 sq_GetSortOrderNo.Open ;
 if not sq_GetSortOrderNo.Eof then
  ChangedSortorderNo:= sq_GetSortOrderNoCurrentSortOrderNo.AsInteger + 1
   else
    ChangedSortorderNo:= 1 ;
 sq_GetSortOrderNo.Close ;
End ;

procedure TdmInvCtrl.cds_ChgPkgAfterInsert(DataSet: TDataSet);
begin
 cds_ChgPkgIC_GrpNo.AsInteger                := cds_InvCtrlGrpIC_grpno.AsInteger ;
 cds_ChgPkgDateCreated.AsSQLTimeStamp        := DateTimeToSQLTimeStamp(Now) ;
 cds_ChgPkgOperation.AsInteger               := 8 ; //Ändrad
// cds_ChgPkgLogicalInventoryPointNo.AsInteger := cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
// cds_ChgPkgLager.AsString                    := cds_InvCtrlMetodLogicalInventoryName.AsString ;
 cds_ChgPkgSortorderno.AsInteger             := ChangedSortorderNo ;
 ChangedSortorderNo                          := Succ(ChangedSortorderNo) ;
 cds_ChgPkgRes01.AsInteger                   := -1 ;
end;

procedure TdmInvCtrl.cds_ChgPkgAfterPost(DataSet: TDataSet);
Var PackageNo     : Integer ;
    SupplierCode  : String ;
begin
 if ChangePkg(cds_ChgPkgPackageNo.AsInteger, cds_ChgPkgSupplierCode.AsString) = True then
 Begin
  PackageNo     := cds_ChgPkgPackageNo.AsInteger ;
  SupplierCode  := cds_ChgPkgSupplierCode.AsString ;

{  PkgCngInv (cds_ChgPkgPackageNo.AsInteger,
  cds_InvCtrl_PkgsOperation.AsInteger,     //används för Status
  8, //Operation 0 på, 3 av
  cds_InvCtrlGrpIC_grpno.AsInteger,
  cds_ChgPkgSupplierCode.AsString ) ; }
  if cds_ChgPkg.ChangeCount > 0 then
  cds_ChgPkg.ApplyUpdates(0) ;
  cds_ChgPkg.Refresh ;

  UpdLIPCtrlPkg (cds_InvCtrlGrpIC_grpno.AsInteger, PackageNo, 8{Ändra Operation }, SupplierCode) ;
//  cds_ChgPkg.Insert ;
 End
 else
 Begin
  if cds_ChgPkg.ChangeCount > 0 then
  cds_ChgPkg.CancelUpdates ;
  cds_ChgPkg.Refresh ;
 End ;
end;

procedure TdmInvCtrl.cds_ChgPkgBeforeDelete(DataSet: TDataSet);
begin
//Sätt tillbaka paketets attribut som i kontrollistan
 RevertPkgAsInKontrollist ;
end;

procedure TdmInvCtrl.cds_ChgPkgBeforePost(DataSet: TDataSet);
begin
 if cds_ChgPkgPackageNo.IsNull then
 Begin
//  ShowMessage('paketnummer saknas!') ;
  Abort ;
 End ;

 if cds_ChgPkgLogicalInventoryPointNo.IsNull then
 Begin
  ShowMessage('Lagergrupp registrerades inte, prova igen!') ;
  Abort ;
 End ;
end;

function TdmInvCtrl.ChangePkg(const PackageNo : Integer;const PkgSupplierCode : String) : Boolean ;
var fSinglePkgEntry : TfSinglePkgEntry ;
begin
 //Create packages
 With dmInvCtrl do
 Begin
//  dm_SinglePkg  := Tdm_SinglePkg.Create(Nil) ;
  fSinglePkgEntry   := TfSinglePkgEntry.Create(nil);

  try
  fSinglePkgEntry.SetParams(
  PkgSupplierCode, //Suppliercode
  1, //1 = InventoryForm CallingFormType  
  cds_InvCtrlGrpIC_grpno.AsInteger,  
  1, //Operation 1 = Ändra
  0, //Status,
  PackageNo,
  cds_InvCtrlGrpVerkNo.AsInteger,
  cds_InvCtrlGrpVerkNo.AsInteger,
  5 {RegPoint},//Invneteringsdiff
  cds_InvCtrlMetodPIPNo.AsInteger ,
  cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger,
  cds_InvCtrlGrpInventeringsdatum.AsDateTime) ;
  if fSinglePkgEntry.ShowModal = mrOK then
   Result:= True
    else
     Result:= False ;
  finally
   FreeAndNil(fSinglePkgEntry) ;
//   FreeAndNil(dmsPkg) ;
  end;
 End ;
end;

procedure TdmInvCtrl.GenerateInventeringsListan ;
Begin
//Kopierar alla rader till invenrow från .InvControlrow
 Try
 //Kopierar från dbo.InvControlrow
 //Insert into dbo.InvenRow       från     dbo.InvControlrow
 sq_CopyRows.ParamByName('IC_GrpNo').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
 if cds_InvCtrlGrpTypeOfInvCount.AsInteger = 1 then
  sq_CopyRows.ParamByName('Status').AsInteger  := 1
   else
    sq_CopyRows.ParamByName('Status').AsInteger  := -1 ;
 sq_CopyRows.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

 Try
 //Tar bort dubletter
 sq_TrackDuplicates.ParamByName('IC_GrpNo').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_TrackDuplicates.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

 Try

 sq_InsHlpRows.ParamByName('IC_GrpNo').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_InsHlpRows.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

 Try
 sp_InsTransitToResult.ParamByName('@IC_GrpNo').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
 sp_InsTransitToResult.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

End ;

procedure TdmInvCtrl.Generate_List_from_CtrlList_pkgs_that_are_not_active ;
Begin
//Kopierar alla rader till invenrow från .InvControlrow
 Try
 //Kopierar från dbo.InvControlrow
 //Insert into dbo.InvenRow       från     dbo.InvControlrow
 sp_copyCtrlPkgswstatusNotAct.ParamByName('@IC_GrpNo').AsInteger  := cds_InvCtrlGrpIC_grpno.AsInteger ;
 sp_copyCtrlPkgswstatusNotAct.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

 Try
 //Tar bort dubletter
 sq_TrackDuplicates.ParamByName('IC_GrpNo').AsInteger := cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_TrackDuplicates.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

 Try

 sp_InsHlpPkgswstatusNotAct.ParamByName('@IC_GrpNo').AsInteger  := cds_InvCtrlGrpIC_grpno.AsInteger ;
 sp_InsHlpPkgswstatusNotAct.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End ;

procedure TdmInvCtrl.GenerateInventeringsListan_alla_Paket ;
Begin
//Kopierar alla rader till invenrow från .InvControlrow
 Try
// Insert into dbo.InvenRow_all
 sq_copyall.ParamByName('IC_GrpNo').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_copyall.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

{ Try
 sq_TrackDuplicates.ParamByName('IC_GrpNo').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_TrackDuplicates.ExecSQL(False) ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end; }

 Try 
 sq_InsAllHlpRows.ParamByName('IC_GrpNo').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_InsAllHlpRows.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End ;

//Utan händelser
procedure TdmInvCtrl.GenerateInventeringsListan_II ;
Begin
 Try
 sq_CopyRows.ParamByName('IC_GrpNo').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_CopyRows.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

 Try
 sq_InsHlpRows_II.ParamByName('IC_GrpNo').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_InsHlpRows_II.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End ;


procedure TdmInvCtrl.mtSelectedPkgNoBeforePost(DataSet: TDataSet);
begin
// if InventoryPkgs = False then  exit ;
 if mtSelectedPkgNoMARKERAD.AsInteger = 1 then
  MarkedPkgs:= Succ(MarkedPkgs)
   else
    if MarkedPkgs > 0 then
     MarkedPkgs:= Pred(MarkedPkgs) ;
end;

procedure TdmInvCtrl.GenInvListaII ;
var
  Save_Cursor : TCursor;
Begin
 Save_Cursor  := Screen.Cursor;
 Screen.Cursor:= crSQLWait;    { Show hourglass cursor }
 Try
  Try
  sq_GenInvListaII.ParamByName('IC_grpno').AsInteger  := cds_InvCtrlGrpIC_grpno.AsInteger ;
  sq_GenInvListaII.ParamByName('UserID').AsInteger    := ThisUser.UserID ;
  sq_GenInvListaII.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure TdmInvCtrl.GetCtrlPkgs (LIPs, STATUSs : String) ;
var
  Save_Cursor : TCursor;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  Try
  sp_Gen_CtrlList.ParamByName('@LIPNo').AsString      := LIPs ;
  sp_Gen_CtrlList.ParamByName('@Status').AsString     := STATUSs ;
  sp_Gen_CtrlList.ParamByName('@IC_GrpNo').AsInteger  := cds_InvCtrlGrpIC_grpno.AsInteger ;
  sp_Gen_CtrlList.ParamByName('@UserID').AsInteger    := ThisUser.UserID ;
  sp_Gen_CtrlList.ExecProc ;

{  sq_GetCtrlPkgs.ParamByName('IC_grpno').AsInteger  := cds_InvCtrlGrpIC_grpno.AsInteger ;
  sq_GetCtrlPkgs.ParamByName('LIPNo').AsInteger     := cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
  sq_GetCtrlPkgs.ParamByName('UserID').AsInteger    := ThisUser.UserID ;
  sq_GetCtrlPkgs.ExecSQL ; }
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure TdmInvCtrl.GenListfromPkgsnotact (LIPs, STATUSs : String) ;
var
  Save_Cursor : TCursor;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  Try
  sp_GenListfromPkgsnotact.ParamByName('@LIPNo').AsString      := LIPs ;
  sp_GenListfromPkgsnotact.ParamByName('@Status').AsString     := STATUSs ;
  sp_GenListfromPkgsnotact.ParamByName('@IC_GrpNo').AsInteger  := cds_InvCtrlGrpIC_grpno.AsInteger ;
  sp_GenListfromPkgsnotact.ParamByName('@UserID').AsInteger    := ThisUser.UserID ;
  sp_GenListfromPkgsnotact.ExecProc ;
  sp_GenListfromPkgsnotact.Close ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;


procedure TdmInvCtrl.GetCtrlPkgs_OnlyStatus_Not_OK ;
var
  Save_Cursor : TCursor;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  Try
  sq_GetCtrlPkgsII.ParamByName('IC_grpno').AsInteger  := cds_InvCtrlGrpIC_grpno.AsInteger ;
  sq_GetCtrlPkgsII.ParamByName('LIPNo').AsInteger     := 0 ;//cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
  sq_GetCtrlPkgsII.ParamByName('UserID').AsInteger    := ThisUser.UserID ;
  sq_GetCtrlPkgsII.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure TdmInvCtrl.UpdLIPCtrlPkg (const IC_GrpNo, PackageNo, Operation : Integer;const SupplierCode : String) ;
Begin
// sq_UpdLIPCtrlPkg.ParamByName('LIPNo').AsInteger        := LIPNo ;
 Try
 sq_UpdLIPCtrlPkg.ParamByName('PackageNo').AsInteger    := PackageNo ;
 sq_UpdLIPCtrlPkg.ParamByName('Operation').AsInteger    := Operation ;
 sq_UpdLIPCtrlPkg.ParamByName('SupplierCode').AsString  := SupplierCode ;
 sq_UpdLIPCtrlPkg.ParamByName('IC_GrpNo').AsInteger     := IC_GrpNo ;
 sq_UpdLIPCtrlPkg.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End ;

procedure TdmInvCtrl.cds_SicHdrAfterInsert(DataSet: TDataSet);
begin
 cds_SicHdrSic_No.AsInteger           := dmsConnector.NextMaxNo('SIC') ;
 cds_SicHdrVerkNo.AsInteger           := mtTempDataClientNo.AsInteger ;
 cds_SicHdrDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
 cds_SicHdrCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_SicHdrStatus.AsInteger           := 0 ;
 cds_SicHdrInvYear.AsInteger          := 2008 ;
 cds_SicHdrInvMonth.AsInteger         := 6 ;
end;

procedure TdmInvCtrl.cds_SicRowAfterDelete(DataSet: TDataSet);
begin
 if cds_SicRow.RecordCount > 0 then
 tLIPGroupNo  := cds_SicRow.RecordCount + 1
 else
 tLIPGroupNo  := 1 ;
end;

procedure TdmInvCtrl.cds_SicRowAfterGetRecords(DataSet: TFDDataSet);
begin
 if cds_SicRow.RecordCount > 0 then
 tLIPGroupNo  := cds_SicRow.RecordCount + 1
 else
 tLIPGroupNo  := 1 ;
end;

procedure TdmInvCtrl.cds_SicRowAfterInsert(DataSet: TDataSet);
begin
 cds_SicRowSic_No.AsInteger           := cds_SicHdrSic_No.AsInteger ;
 cds_SicRowLIPGroupNo.AsString        := 'X' + IntToStr(tLIPGroupNo) ;
 cds_SicRowRowName.AsString           := 'Ange namn på lager ' + IntToStr(tLIPGroupNo) ;
 tLIPGroupNo := succ(tLIPGroupNo) ;
// cds_SicRowRowNo.AsInteger            := dmsConnector.NextSecondMaxNo('Sic', cds_SicRowSic_No.AsInteger) ;
// cds_SicRowCreatedUser.AsInteger      := ThisUser.UserID ;
// cds_SicRowDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmInvCtrl.cds_SicRowBeforePost(DataSet: TDataSet);
begin
 cds_SicRowCalcPrice.AsFloat:= cds_SicRowPrice.AsFloat
 + (cds_SicRowAdmCost.AsFloat + cds_SicRowPlanerShavingsCost.AsFloat
    + cds_SicRowPlaningCost.AsFloat + cds_SicRowSortingCost.AsFloat
    + cds_SicRowKilnDryingCost.AsFloat) ;

 cds_SicRowTotalValue.AsFloat:= cds_SicRowNM3.AsFloat * cds_SicRowCalcPrice.AsFloat ;
end;

procedure TdmInvCtrl.cds_SicRowPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
 ShowMessage('Error: Kolla att lagerkod och lagernamn är unika!');
 Action := daAbort ;
end;

procedure TdmInvCtrl.cds_Sic_IC_grpAfterInsert(DataSet: TDataSet);
begin
 cds_Sic_IC_grpSic_No.AsInteger           := cds_SicHdrSic_No.AsInteger ;
end;

procedure TdmInvCtrl.cds_Sic_LIPAfterInsert(DataSet: TDataSet);
begin
 cds_Sic_LIPSic_No.AsInteger:= cds_SicHdrSic_No.AsInteger ;
end;

procedure TdmInvCtrl.cds_Sic_LIPBeforePost(DataSet: TDataSet);
begin
 cds_Sic_LIPCalcNM3.AsFloat:= cds_Sic_LIPInventeratNM3.AsFloat * (cds_Sic_LIPPercentShare.AsFloat/100) ;
end;

procedure TdmInvCtrl.ds_SicHdrDataChange(Sender: TObject; Field: TField);
begin
 if cds_SicHdrStatus.AsInteger = 1 then
  cds_SicRow.UpdateOptions.ReadOnly:= True
   else
    cds_SicRow.UpdateOptions.ReadOnly:= False ;
end;

Function TdmInvCtrl.CheckIfPkgExistInHLP_II (const IC_GrpNo, PkgNo : Integer;const SuppCode : String) : String ;
Begin
 Result:= '' ;
 sq_PkgExistInHlp.Close ;
 sq_PkgExistInHlp.ParamByName('PackageNo').AsInteger    := PkgNo ;
 sq_PkgExistInHlp.ParamByName('SupplierCode').AsString  := SuppCode ;
 sq_PkgExistInHlp.ParamByName('IC_GrpNo').AsInteger     := IC_GrpNo ;
 sq_PkgExistInHlp.Open ;
 Try
 if not sq_PkgExistInHlp.Eof then
 Begin
  Case sq_PkgExistInHlpOperation.AsInteger of
   0 : Result:= 'Paketet finns i listan avregistrerade' ;
   2 : Result:= 'Paketet finns i listan utlevererade' ;
   3 : Result:= 'Paketet finns i listan inlevererade' ;
   4 : Result:= 'Paketet finns i listan producerade' ;
   5 : Result:= 'Paketet finns i listan påregistrerade' ;
   6 : Result:= 'Paketet finns i listan avregistrerade i produktion' ;
   8 : Result:= 'Paketet finns i listan ändrade paket' ;
   else
   Begin
    sq_PkgInCtrlList.ParamByName('PackageNo').AsInteger    := PkgNo ;
    sq_PkgInCtrlList.ParamByName('SupplierCode').AsString  := SuppCode ;
    sq_PkgInCtrlList.ParamByName('IC_GrpNo').AsInteger     := IC_GrpNo ;
    sq_PkgInCtrlList.Open ;
    Try
    if not sq_PkgInCtrlList.Eof then
    Result  := 'Paketet finns i kontrollistan'
    else
    Result  := '' ;
    Finally
     sq_PkgInCtrlList.Close ;
    End ;
   End ;
  End ;
 End
   else
   Begin
    sq_PkgInCtrlList.ParamByName('PackageNo').AsInteger    := PkgNo ;
    sq_PkgInCtrlList.ParamByName('SupplierCode').AsString  := SuppCode ;
    sq_PkgInCtrlList.ParamByName('IC_GrpNo').AsInteger     := IC_GrpNo ;
    sq_PkgInCtrlList.Open ;
    Try
    if not sq_PkgInCtrlList.Eof then
    Result  := 'Paketet finns i kontrollistan'
    else
    Result  := '' ;
    Finally
     sq_PkgInCtrlList.Close ;
    End ;
   End ;


 Finally
  sq_PkgExistInHlp.Close ;
 End ;
End ;

procedure TdmInvCtrl.cds_PriceGroupAfterInsert(DataSet: TDataSet);
begin
 cds_PriceGroupCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_PriceGroupDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
 cds_PriceGroupOwnerNo.AsInteger          := cds_InvCtrlGrpOwnerNo.AsInteger ;
 cds_PriceGroupPriceGroupNo.AsInteger     := dmsConnector.NextMaxNo('Sic_PriceGroup') ;
end;

procedure TdmInvCtrl.AssignProduktToPriceGroup(const PriceGroupNo, ProductNo : Integer) ;
begin
 Try
 sq_AssignProdToPG.ParamByName('PriceGroupNo').AsInteger      := PriceGroupNo ;
 sq_AssignProdToPG.ParamByName('ProductNo').AsInteger         := ProductNo ;
 sq_AssignProdToPG.ParamByName('OwnerNo').AsInteger           := cds_InvCtrlGrpOwnerNo.AsInteger ;
 sq_AssignProdToPG.ParamByName('DateCreated').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
 sq_AssignProdToPG.ParamByName('CreatedUser').AsInteger       := ThisUser.UserID ;
 sq_AssignProdToPG.ParamByName('IC_GrpNo').AsInteger          := cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_AssignProdToPG.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End ;

procedure TdmInvCtrl.cds_GPAfterInsert(DataSet: TDataSet);
begin
// cds_GPPriceGroupNo.AsInteger :=
end;

procedure TdmInvCtrl.cds_SicRow_PGBeforePost(DataSet: TDataSet);
begin
 cds_SicRow_PGCalcPrice.AsFloat:= cds_SicRow_PGPrice.AsFloat
 + (cds_SicRow_PGAdmCost.AsFloat + cds_SicRow_PGPlanerShavingsCost.AsFloat
    + cds_SicRow_PGPlaningCost.AsFloat + cds_SicRow_PGSortingCost.AsFloat
    + cds_SicRow_PGKilnDryingCost.AsFloat) ;

 cds_SicRow_PGTotalValue.AsFloat:= cds_SicRow_PGNM3.AsFloat * cds_SicRow_PGCalcPrice.AsFloat ;
end;

procedure TdmInvCtrl.mtUserPropOwnerNoChange(Sender: TField);
begin
 CloseInventering(Sender) ;
end;

procedure TdmInvCtrl.CloseInventering(Sender: TObject) ;
var Save_Cursor : TCursor;
begin
 With dmInvCtrl do
 Begin
    Application.ProcessMessages ;
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;    { Show hourglass cursor }
    try
     cds_InvCtrlGrp.Active:= False ;
     cds_InvCtrlGrp.ParamByName('IC_grpno').AsInteger:= -1 ;
     cds_InvCtrlGrp.Active:= True ;

     cds_CtrlList.Active := False ;
     cds_CtrlList.ParamByName('IC_grpno').AsInteger:= -1 ;
  //   cds_CtrlList.ParamByName('LanguageID').AsInteger:= ThisUser.LanguageID ;
     cds_CtrlList.Active := True ;

     cds_InvenRow.Active := False ;
//     grdResultatDBTableView1.DataController.DataSource  := ds_InvenRow ;
     cds_InvenRow.ParamByName('IC_grpno').AsInteger:= -1 ;
     cds_InvenRow.Active := True ;

//     acRefreshKontrollistaExecute(Sender) ;
//     acRefreshResultListExecute(Sender) ;

     Screen.Cursor := crSQLWait;
     cds_InvCtrl_LagerStallen.Active  := False ;
     cds_InvCtrl_LagerStallen.Active  := True ;

     cds_InvCtrlMetod.Active  := False ;
     cds_InvCtrlMetod.Active  := True ;

     cds_InvCtrl_Pkgs.Active  := False ;
     cds_InvCtrl_Pkgs.Active  := True ;

     cds_InvCtrl_PaReg.Active  := False ;
     cds_InvCtrl_PaReg.Active  := True ;

     cds_ChgPkg.Active  := False ;
     cds_ChgPkg.Active  := True ;

     cds_InLev.Active  := False ;
     cds_InLev.Active  := True ;

     cds_CreditInLev.Active  := False ;
     cds_CreditInLev.Active  := True ;

     cds_UtLev.Active  := False ;
     cds_UtLev.Active  := True ;

     cds_GetPrd.Active  := False ;
     cds_GetPrd.Active  := True ;

     cds_GetPrdBefore.Active  := False ;
     cds_GetPrdBefore.Active  := True ;

     cds_GetAvrRegPrd.Active  := False ;
     cds_GetAvrRegPrd.Active  := True ;

     cds_GetAvrBefore.Active  := False ;
     cds_GetAvrBefore.Active  := True ;

//     GetCurrentSortordernos ;
    finally
     Screen.Cursor := Save_Cursor;  { Always restore to normal }
    end;
 End ; //With
end;

function TdmInvCtrl.SaveAvgPriceToStandardPriceGroup(const AvgPrice : Double) : Integer ;
Var PriceGroupName : String ;
    PriceGroupNo    : Integer ;
Begin
 PriceGroupName := 'Standard' ;
 if not cds_PriceGroup.Locate('PriceGroupName;OwnerNo', VarArrayOf([PriceGroupName, cds_InvCtrlGrpOwnerNo.AsInteger]), []) then
 Begin
  cds_PriceGroup.Insert ;
  cds_PriceGroupPriceGroupName.AsString := PriceGroupName ;
  PriceGroupNo                          := cds_PriceGroupPriceGroupNo.AsInteger ;
  cds_PriceGroup.Post ;
 End
 else
  PriceGroupNo  := cds_PriceGroupPriceGroupNo.AsInteger ;

 Result := PriceGroupNo ;

 if not cds_GP.Locate('PriceGroupNo;IC_GrpNo', VarArrayOf([PriceGroupNo, cds_InvCtrlGrpIC_grpno.AsInteger]), []) then
 Begin
  cds_GP.Insert ;
  cds_GPPriceGroupNo.AsInteger  := PriceGroupNo ;
  cds_GPIC_GrpNo.AsInteger      := cds_InvCtrlGrpIC_grpno.AsInteger ;
  cds_GPPricePerNM3.AsFloat     := AvgPrice ;
  cds_GP.Post ;
 End
 else
 Begin
  cds_GP.Edit ;
//  cds_GPPriceGroupNo.AsInteger  := PriceGroupNo ;
//  cds_GPIC_GrpNo.AsInteger      := cds_InvCtrlGrpIC_grpno.AsInteger ;
  cds_GPPricePerNM3.AsFloat     := AvgPrice ;
  cds_GP.Post ;
 End ;
 if cds_GP.ChangeCount > 0 then
  cds_GP.ApplyUpdates(0) ;
 if cds_PriceGroup.ChangeCount > 0 then
  cds_PriceGroup.ApplyUpdates(0) ;
End ;

Procedure TdmInvCtrl.SavePricePerNM3 ;
Begin
  sp_SicPG.First ;
  While not sp_SicPG.Eof do
  Begin
   if sp_SicPGppnm_ProductNo.IsNull then
   Begin
    sq_InsPriceNM3.ParamByName('IC_GrpNo').AsInteger  := sp_SicPGIC_grpNo.AsInteger ;
    sq_InsPriceNM3.ParamByName('ProductNo').AsInteger := sp_SicPGProductNo.AsInteger ;
    sq_InsPriceNM3.ParamByName('PricePerNM3').AsFloat := sp_SicPGPricePerNM3.AsFloat ;
    sq_InsPriceNM3.ExecSQL ;
   End
   else
   Begin
    sq_UpdPriceNM3.ParamByName('IC_GrpNo').AsInteger  := sp_SicPGIC_grpNo.AsInteger ;
    sq_UpdPriceNM3.ParamByName('ProductNo').AsInteger := sp_SicPGProductNo.AsInteger ;
    sq_UpdPriceNM3.ParamByName('PricePerNM3').AsFloat := sp_SicPGPricePerNM3.AsFloat ;
    sq_UpdPriceNM3.ExecSQL ;
   End ;
   sp_SicPG.Next ;
  End ;
End ;

procedure TdmInvCtrl.SetSTDkoppling(const PriceGroupNo : Integer) ;
Begin
 Try
 sq_SetSTDkoppling.ParamByName('IC_grpno').AsInteger      := cds_InvCtrlGrpIC_grpno.AsInteger ;
 sq_SetSTDkoppling.ParamByName('PriceGroupNo').AsInteger  := PriceGroupNo ;
 sq_SetSTDkoppling.ParamByName('CreatedUser').AsInteger   := ThisUser.UserID ;
 sq_SetSTDkoppling.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End ;

procedure TdmInvCtrl.CopyManualSicRows(const Sic_No : Integer) ;
Begin
 Try
 sq_CopyManSicRows.ParamByName('Sic_No').AsInteger  := Sic_No ;
 sq_CopyManSicRows.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End ;

procedure TdmInvCtrl.CalcInvAvgPrice (const IC_GrpNo, LIPNo : Integer) ;
Begin
 Try
 sp_CalcInvAvgPrice.ParamByName('@IC_GrpNo').AsInteger     := IC_GrpNo ;
 sp_CalcInvAvgPrice.ParamByName('@LIPNo').AsInteger        := LIPNo ;
 sp_CalcInvAvgPrice.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End ;

procedure TdmInvCtrl.SetInvStatus(const IC_GrpNo, Status : Integer) ;
Begin
 Try
 sq_SetInvStatus.ParamByName('IC_GrpNo').AsInteger  := IC_GrpNo ;
 sq_SetInvStatus.ParamByName('Status').AsInteger    := Status ;
 sq_SetInvStatus.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End ;

procedure TdmInvCtrl.Open_Inventering(const InvNr : Integer) ;
var Save_Cursor : TCursor;
begin
 With dmInvCtrl do
 Begin
    Application.ProcessMessages ;
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;    { Show hourglass cursor }
    try
     cds_InvCtrlGrp.Active:= False ;
     cds_InvCtrlGrp.ParamByName('IC_grpno').AsInteger:= InvNr ;
     cds_InvCtrlGrp.Active:= True ;


//     acRefreshKontrollistaExecute(Sender) ;
//     acRefreshResultListExecute(Sender) ;

     Screen.Cursor := crSQLWait;
     cds_InvCtrl_LagerStallen.Refresh ;
     cds_InvCtrlMetod.Refresh ;
     cds_InvCtrl_Pkgs.Refresh ;
     cds_InvCtrl_PaReg.Refresh ;
     cds_ChgPkg.Refresh ;
     cds_InLev.Refresh ;
     cds_CreditInLev.Refresh ;
     cds_UtLev.Refresh ;
     cds_GetPrd.Refresh ;
     cds_GetPrdBefore.Refresh ;
     cds_GetAvrRegPrd.Refresh ;
     cds_GetAvrBefore.Refresh ;

//     GetCurrentSortordernos ;
//     SetInventeringReadOnly ;
//     Caption  := 'LAGERINVENTERING nr ' + IntToStr(InvNr) ;
    finally
     Screen.Cursor := Save_Cursor;  { Always restore to normal }
    end;
//  dxPageControl1.ActivePage:= tsSkapaLagerListor ;
//  SetOnOff ;
 End ; //With
end;

procedure TdmInvCtrl.CreateResultList ;
var
  Save_Cursor : TCursor;
  SRNo        : Integer ;
  S           : TStrings ;
begin
  S:= TStringList.Create ;
  Try
// memo3.Lines.Clear ;
  if dmInvCtrl.cds_InvCtrlGrpMaxDatum.IsNull then
  Begin
   ShowMessage('Ange Maxdatum!') ;
   Exit ;
  End ;

  if dmInvCtrl.cds_InvCtrlGrpMaxDatum.AsDateTime < dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsDateTime then
  Begin
   ShowMessage('Maxdatum måste vara senare än inventeringsdatum, var vänlig justera!') ;
   Exit ;
  End ;

 //Skapa lager listor
// if MessageDlg('Vill du skapa inventeringslistan med händelser?',    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
// Begin
  Application.ProcessMessages ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try

 With dmInvCtrl do
 Begin
  Try
//   acSaveExecute(Sender) ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   if cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
   Begin


   //Inleveranser, laster som har ett lastdatum mindre än maxdatum
   //och är ankomstregistrerad
   //och finns ej i ICR
//  Memo2.Lines.Clear ;
//  Memo2.Clear ;
//  Memo2.Lines.Add('Start') ;
//  Memo2.Lines.Add(DateTimeToStr(now)) ;

  //Markera bort paket som är avregistrerade före maxdatum
  GetAvRegIProduction(S) ;
//  acGetNormalAvRegExecute(Sender) ;
//  Memo2.Lines.Add('acGetNormalAvRegExecute(Sender)') ;
//  Memo2.Lines.Add(DateTimeToStr(now)) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  //Markera bort paket som är levererade före maxdatum
//  acGetPkgDeliveredExecute(Sender) ;

   GetUTLeveranser(S) ;
   if dmsContact.IsClientMarkedAsIntVerk (cds_InvCtrlGrpOwnerNo.AsInteger) = False then
    GetUTLeveranserAvropsLevel(S) ;
//     else
//      memo3.Lines.Add('!!!!!! GetUTLeveranserAvropsLevel not executed') ;



//  Memo2.Lines.Add('acGetPkgDeliveredExecute(Sender)') ;
//  Memo2.Lines.Add(DateTimeToStr(now)) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

//  acGetInLeveranserExecute(Sender) ;
   SRNo := dmsContact.GetSalesRegionNo(cds_InvCtrlGrpOwnerNo.AsInteger) ;
   if (SRNo = 741) or (SRNo = 3682) or (SRNo = 5074) then
   GetInLeveranser(S) ;
//     else
//      memo3.Lines.Add('!!!!!! GetInLeveranser(S) not executed') ;
   SRNo := dmsContact.GetSalesRegionNo(cds_InvCtrlGrpOwnerNo.AsInteger) ;
   if (SRNo <> 741) and (SRNo <> 3682) and (SRNo <> 5074) then
    GetInLeveranserAVROP_Proforma(S) ;
//     else
//      memo3.Lines.Add('!!!!!! GetInLeveranserAVROP_Proforma not executed') ;

//  Memo2.Lines.Add('acGetInLeveranserExecute(Sender)') ;
//  Memo2.Lines.Add(DateTimeToStr(now)) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  GetInLeveranserOfCredits(S) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }


  //Lägg till paket producerade efter inventeringsdatum och ej avregistrerat eller utlastat före maxdatum
//  acGetProductionExecute(Sender) ;
  GetProduction(S) ;
//  Memo2.Lines.Add('acGetProductionExecute(Sender)') ;
//  Memo2.Lines.Add(DateTimeToStr(now)) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }


  //Lägg till paket producerade före inventeringsdatum och ej med i kontrollistan
//  acGetProductionBeforeInvDateExecute(Sender) ;
  GetProductionBefore(S) ;
//  Memo2.Lines.Add('acGetProductionBeforeInvDateExecute(Sender)') ;
//  Memo2.Lines.Add(DateTimeToStr(now)) ;

  Screen.Cursor := crSQLWait;


//Plockar bort den här funktionen för att den skapar problem på Alvesta
  //Ta bort paket som är avregistrerade före inventeringsdatum och med i kontrollistan
{  acAvregBeforeInvDateAndExistInKLExecute(Sender) ;
  Memo2.Lines.Add('acAvregBeforeInvDateAndExistInKLExecute(Sender)') ;
  Memo2.Lines.Add(DateTimeToStr(now)) ;
  Screen.Cursor := crSQLWait;
 }

//   Memo2.Lines.Add('Kör DelCreditedPkgs') ;
  DelCreditedPkgs(cds_InvCtrlGrpIC_grpno.AsInteger) ;

//  Memo2.Lines.Add('Generera inventeringslistor') ;
  GenerateInventeringsListan ;
//   SparaLagerListor_Local ;
//  Memo2.Lines.Add(DateTimeToStr(now)) ;

//  Memo2.Lines.Add('Klart') ;
//  acRefreshResultListExecute(Sender) ;
  End ;//if...
  Except
  End ;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
// End ; //if..
 Finally
  S.Free ;
 End ;
end;

//Utleveranser gjorda inom inventeringsperioden på avropsnivå
procedure TdmInvCtrl.GetInLeveranserOfCredits (S : TStrings) ;
Begin
 With sq_InsertToInvCtrl_Pkgs do
 Begin
  SQL.Clear ;
  SQL.Add('Delete dbo.InvCtrl_Pkgs') ;
  SQL.Add('WHERE IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add('AND Operation = 14') ;
  ExecSQL ;

  Try
  SQL.Clear ;
  SQL.Add('Insert into dbo.InvCtrl_Pkgs') ;
  SQL.Add('Select Distinct ' + cds_InvCtrlGrpIC_grpno.AsString) ;
  SQL.Add(',LD.PackageNo, LD.SupplierCode, 14, GetDate(), LD.LIPNo, 0 AS Sortorderno, -1,') ;
  SQL.Add('LD.ShippingPlanNo, IL.InternalInvoiceNo') ;
  SQL.Add('FROM dbo.Loads L ') ;
  SQL.Add('Inner Join dbo.Invoiced_Load IL ON IL.LoadNo = L.LoadNo ') ;
  SQL.Add('Inner Join dbo.InvoiceHeader IH ON IH.InternalInvoiceNo = IL.InternalInvoiceNo') ;
  SQL.Add('Inner Join dbo.LoadDetail LD ON LD.LoadNo = L.LoadNo ') ;
  SQL.Add('Inner Join dbo.LoadShippingPlan LSP ON LSP.LoadNo = LD.LoadNo') ;
  SQL.Add('AND LSP.ShippingPlanNo = LD.ShippingPlanNo') ;
  SQL.Add('Inner Join dbo.CustomerShippingPlanDetails CSD on CSD.CustShipPlanDetailObjectNo = LD.DefaultCustShipObjectNo') ;
  SQL.Add('Inner Join dbo.CustomerShippingPlanHeader SSP on SSP.ShippingPlanNo = CSD.ShippingPlanNo') ;
  SQL.Add('Inner Join dbo.Orders OH on OH.OrderNo = SSP.OrderNo') ;
  SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo ') ;
  SQL.Add('AND pn.SupplierCode = LD.SupplierCode') ;
  SQL.Add('WHERE L.SupplierNo = ' + cds_InvCtrlGrpVerkNo.AsString) ;
  SQL.Add('AND OH.OrderType = 0') ;
  SQL.Add('AND IH.Debit_Credit = 1') ;
//funderar om inte man bara ska kolla på om lasten är före maxdatum
//eller så här
//om paketet finns i dbo.InvControlrow och är utlastad före maxdatum skall det läggas till utlevLoggen! anledningen
//till att kolla bägge kriterier är att annars kommer så många laster att kontrolleras och det blir oerhört långsamt!!
//Eller om paketet är utlastat mellan inventeringsdatum och Maxdatum.

//  SQL.Add('AND ((LD.PackageNo in (Select PackageNo FROM dbo.InvControlrow') ;      //borttaget April 05 2006
//  SQL.Add('WHERE SupplierCode = LD.SupplierCode') ;
//  SQL.Add('AND IC_GrpNo = '+cds_InvCtrlGrpIC_grpno.AsString+')') ;
//  SQL.Add('AND L.LoadedDate <= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
//  SQL.Add(')') ;
//  SQL.Add(' OR ') ;
//  SQL.Add('(') ;
  SQL.Add('AND IH.InvoiceDate <= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
  SQL.Add('AND IH.InvoiceDate >= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;
//  SQL.Add('))') ;
  SQL.Add('AND L.SenderLoadStatus <> 0 ') ;
//  SQL.Add('AND ((SSP.ObjectType = 0) or (SSP.ObjectType = 1))') ;

// ta bara med paket om SSP lagerställe finns med i inventeringen.
//Satsen nedanför tar hand om "problemet"
//  SQL.Add('AND SSP.LoadingLocationNo in') ;
//  SQL.Add('(Select PIP.PhyInvPointNameNo') ;
//  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
//  SQL.Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = ICM.LogicalInventoryPointNo') ;
//  SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
//  SQL.Add('WHERE ICM.IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString+')' ) ;

//**** ta bara med paket om paketets lagergrupp finns med i inventeringen.
//Kör vi på LoadDetail.LIPNo ska det fungera
  SQL.Add('AND LD.LIPNo in (Select ICM.LogicalInventoryPointNo FROM dbo.InvCtrlMetod ICM') ;
  SQL.Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = ICM.LogicalInventoryPointNo') ;
  SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
  SQL.Add('WHERE ICM.IC_grpno = ' + cds_InvCtrlGrpIC_grpno.AsString+')' ) ;



  SQL.Add('and not exists (Select ld2.packageno from dbo.Loaddetail LD2') ;
  SQL.Add('inner join dbo.Invoiced_Load IL2 on IL2.LoadNo = LD2.LoadNo') ;
  SQL.Add('inner join dbo.InvoiceHeader ih2 on ih2.InternalInvoiceNo = IL2.InternalInvoiceNo') ;
  SQL.Add('where') ;
  SQL.Add('ih2.Debit_Credit = 0') ;
  SQL.Add('and ih2.InvoiceDate > ih.InvoiceDate') ;
  SQL.Add('and LD2.PackageNo = LD.PackageNo') ;
  SQL.Add('and LD2.SupplierCode = LD.SupplierCode') ;
  SQL.Add('AND IH2.InvoiceDate <= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp))) ;
  SQL.Add('AND IH2.InvoiceDate >= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))) ;
  SQL.Add(')') ;  

//gör den här kontrollen ifall paketnr las till i proceduren GetUTLeveranser ;
//  SQL.Add('AND LD.PackageNo not in (Select ict.PackageNo FROM dbo.InvCtrl_Pkgs ict') ;
//  SQL.Add('WHERE ict.SupplierCode = LD.SupplierCode AND ict.Operation = 2') ;
//  SQL.Add('AND ict.IC_GrpNo = ' + cds_InvCtrlGrpIC_grpno.AsString+')') ;

{  SQL.Add('AND Exists (Select invno.InternalInvoiceNo FROM dbo.InvoiceNumber invno') ;
  SQL.Add('WHERE IH.InternalInvoiceNo = invno.InternalInvoiceNo)') ;

  SQL.Add('AND ( (IH.InternalInvoiceNo in (Select invno.InternalInvoiceNo FROM dbo.InvoiceNumber invno') ;
  SQL.Add('WHERE invno.InternalInvoiceNo = IH.InternalInvoiceNo))') ;

  SQL.Add('OR (IH.InternalInvoiceNo in (Select invno.InternalInvoiceNo FROM dbo.InvoiceNo_USA invno') ;
  SQL.Add('WHERE invno.InternalInvoiceNo = IH.InternalInvoiceNo))') ;

  SQL.Add('OR (IH.InternalInvoiceNo in (Select invno.InternalInvoiceNo FROM dbo.InvNo_FW invno') ;
  SQL.Add('WHERE invno.InternalInvoiceNo = IH.InternalInvoiceNo))') ;

  SQL.Add('OR (IH.InternalInvoiceNo in (Select invno.InternalInvoiceNo FROM dbo.InvoiceNo_VTA invno') ;
  SQL.Add('WHERE invno.InternalInvoiceNo = IH.InternalInvoiceNo))') ;

  SQL.Add('OR (IH.InternalInvoiceNo in (Select invno.InternalInvoiceNo FROM dbo.ProformaInvoiceNumber invno') ;
  SQL.Add('WHERE invno.InternalInvoiceNo = IH.InternalInvoiceNo)) )') ;
  }



// ta bara med paket om paketets lagergrupp finns med i inventeringen.
//Kan inte använda den pga att paketets lagergrupp kan ha hunnit ändrats om lasten är AReg
//  SQL.Add('AND pn.LogicalInventoryPointNo in (Select LogicalInventoryPointNo') ;
//  SQL.Add('FROM dbo.InvCtrlMetod ICM') ;
//  SQL.Add('WHERE ICM.IC_grpno = '+cds_InvCtrlGrpIC_grpno.AsString+')' ) ;

//Förstår inte varför jag hade denna begränsning, paket kan ju skapas och lastas ut under tiden mellan inv och maxdatum!!
//  SQL.Add('AND LD.PackageNo in (Select PackageNo FROM dbo.InvControlrow') ;      //borttaget April 05 2006
//  SQL.Add('WHERE SupplierCode = LD.SupplierCode') ;
//  SQL.Add('AND IC_GrpNo = '+cds_InvCtrlGrpIC_grpno.AsString+')') ;

//  if ThisUser.UserID = 8 then SQL.SaveToFile('GetInLeveranserOfCredits.txt');
  S.Text  := SQL.Text ;
  ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

 End ; //with
End ;

procedure TdmInvCtrl.DelCreditedPkgs(const IC_GrpNo : Integer) ;
Begin
 sq_DelCreditedPkgs.ParamByName('IC_GrpNo').AsInteger := IC_GrpNo ;
 Try
  sq_DelCreditedPkgs.ExecSQL ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End ;

procedure TdmInvCtrl.vis_invUpdControlStatus(const IC_GrpNo : Integer) ;
  //Set CtrlList row to Active if packages is in table InventResult
  //Table InventResult is the result from Hand device
Begin
 sp_vis_invUpdControlStatus.ParamByName('@IC_GrpNo').AsInteger := IC_GrpNo ;
 Try
  sp_vis_invUpdControlStatus.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End ;

procedure TdmInvCtrl.AdjustInvenCountByProduct(const IC_GrpNo : Integer) ;
Var x : Integer ;
Begin
//Calculate no of pkgs to activate and to PåRegistrera
//and store the result to table InvenByProduct
 sp_vis_GenInvCountByProduct.ParamByName('@IC_GrpNo').AsInteger := IC_GrpNo ;
 Try
  sp_vis_GenInvCountByProduct.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;

//Activate packages in CTRL List
//Go thru table InvenByProduct and activate in CtrlList
  sp_vis_invByProduct.Active  := False ;
  sp_vis_invByProduct.ParamByName('@IC_GrpNo').AsInteger := IC_GrpNo ;
  sp_vis_invByProduct.Active  := True ;
  Try
  sp_vis_invByProduct.Filter  := 'Activate > 0' ;
  sp_vis_invByProduct.Filtered:= True ;
  sp_vis_invByProduct.First ;
  while not sp_vis_invByProduct.Eof do
  Begin

//   for x := 1 to sp_vis_invByProduct.FieldByName('Activate').AsInteger do
//   Begin
    Try
     sp_vis_ActivatePkgsInvCountByProduct.ParamByName('@IC_GrpNo').AsInteger      := IC_GrpNo ;
     sp_vis_ActivatePkgsInvCountByProduct.ParamByName('@LengthSpecNo').AsInteger  := sp_vis_invByProduct.FieldByName('LengthSpecNo').AsInteger ;
     sp_vis_ActivatePkgsInvCountByProduct.ParamByName('@NoOfPkgs').AsInteger      := sp_vis_invByProduct.FieldByName('Activate').AsInteger ;
     sp_vis_ActivatePkgsInvCountByProduct.ExecProc ;
    except
     On E: Exception do
     Begin
      ShowMessage(E.Message) ;
      Raise ;
     End ;
    end;
//   End;

   sp_vis_invByProduct.Next ;
  End;
  Finally
    sp_vis_invByProduct.Filtered  := False ;
    sp_vis_invByProduct.Active    := False ;
  End;



//Add pkgs to PåReg list
//Go thru table InvenByProduct and add pkgs to PåReg list
  sp_vis_invByProduct.Active  := False ;
  sp_vis_invByProduct.ParamByName('@IC_GrpNo').AsInteger := IC_GrpNo ;
  sp_vis_invByProduct.Active  := True ;
  Try
  sp_vis_invByProduct.Filter  := 'PaReg > 0' ;
  sp_vis_invByProduct.Filtered:= True ;
  sp_vis_invByProduct.First ;
  while not sp_vis_invByProduct.Eof do
  Begin

//   for x := 1 to sp_vis_invByProduct.FieldByName('Activate').AsInteger do
//   Begin
    Try
     sp_vis_InsPkgsToInvCountByProduct.ParamByName('@IC_GrpNo').AsInteger       := IC_GrpNo ;
     sp_vis_InsPkgsToInvCountByProduct.ParamByName('@LengthSpecNo').AsInteger   := sp_vis_invByProduct.FieldByName('LengthSpecNo').AsInteger ;
     sp_vis_InsPkgsToInvCountByProduct.ParamByName('@NoOfPkgs').AsInteger       := sp_vis_invByProduct.FieldByName('PaReg').AsInteger ;
     sp_vis_InsPkgsToInvCountByProduct.ExecProc ;
    except
     On E: Exception do
     Begin
      ShowMessage(E.Message) ;
      Raise ;
     End ;
    end;
//   End;

   sp_vis_invByProduct.Next ;
  End;
  Finally
    sp_vis_invByProduct.Filtered  := False ;
    sp_vis_invByProduct.Active    := False ;
  End;
End;

procedure TdmInvCtrl.ClearInvCountFromExtData(const IC_GrpNo : Integer) ;
Begin
 Try
 sp_vis_ClearInvCountFromExtData.ParamByName('@IC_GrpNo').AsInteger := IC_GrpNo ;
 sp_vis_ClearInvCountFromExtData.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End;

procedure TdmInvCtrl.MoveFalseToAvreg(const IC_GrpNo : Integer) ;
Begin
 Try
 sp_MoveFalseToAvreg.ParamByName('@IC_GrpNo').AsInteger := IC_GrpNo ;
 sp_MoveFalseToAvreg.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End;

procedure TdmInvCtrl.RefreshPackageCost (const LIPNo, ProductNo, IC_GrpNo, IC_SetNo : Integer) ;
Begin
  cds_LIPSUM.Active := False ;
  cds_LIPSUM.ParamByName('LIPNo').AsInteger     := LIPNo ;
  cds_LIPSUM.ParamByName('ProductNo').AsInteger := ProductNo ;
  cds_LIPSUM.ParamByName('IC_GrpNo').AsInteger  := IC_GrpNo ;
  cds_LIPSUM.ParamByName('IC_SetNo').AsInteger  := IC_SetNo ;
  cds_LIPSUM.Active := True ;
End;

//Add lager från mall
procedure TdmInvCtrl.InsertToInvenSetLIP (const IC_SetNo : Integer) ;
Begin
 Try
 sp_InsertToInvenSetLIP.ParamByName('@IC_SetNo').AsInteger := IC_SetNo ;
 sp_InsertToInvenSetLIP.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End;

procedure TdmInvCtrl.Exec_PackageCost (const IC_SetNo : Integer;const MaxDatum : TSQLTimeStamp) ;
Begin
 Try
 sp_Exec_PackageCost.ParamByName('@IC_SetNo').AsInteger       := IC_SetNo ;
 sp_Exec_PackageCost.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End;


procedure TdmInvCtrl.CopyToNM3Price (const IC_SetNo : Integer) ;
Begin
 Try
 sp_CopyToNM3Price.ParamByName('@IC_SetNo').AsInteger       := IC_SetNo ;
 sp_CopyToNM3Price.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
    Raise ;
   End ;
  end;
End;

procedure TdmInvCtrl.Add_IC_GroupNo_To_Inven_Al_VW (const IC_SetNo, IC_GrpNo : Integer) ;
Begin
 Try
 sp_Add_IC_GroupNo_To_Inven_Al_VW.ParamByName('@IC_SetNo').AsInteger          := IC_SetNo ;
 sp_Add_IC_GroupNo_To_Inven_Al_VW.ParamByName('@IC_GroupNo').AsInteger        := IC_GrpNo ;
 sp_Add_IC_GroupNo_To_Inven_Al_VW.ParamByName('@CreatedUser').AsInteger       := ThisUser.UserID ;
 sp_Add_IC_GroupNo_To_Inven_Al_VW.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
   // Raise ;
   End ;
  end;
End;



procedure TdmInvCtrl.RemoveKilnPkgsFromInvCount (const IC_GrpNo : Integer) ;
Begin
 Try
 sp_RemoveKilnPkgsFromInvCount.ParamByName('@IC_GroupNo').AsInteger        := IC_GrpNo ;
 sp_Add_IC_GroupNo_To_Inven_Al_VW.ExecProc ;
  except
   On E: Exception do
   Begin
    ShowMessage(E.Message) ;
   // Raise ;
   End ;
  end;
End;

procedure TdmInvCtrl.Refresh_InvTransit(const IC_GrpNo : Integer) ;
Begin
  sp_InvTransit.Active  :=  False ;
  sp_InvTransit.ParamByName('@IC_GrpNo').AsInteger  :=  IC_GrpNo ;
  sp_InvTransit.Active  :=  True ;
End;


End.
