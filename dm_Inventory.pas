unit dm_Inventory;

interface

uses
  Forms, SysUtils, Classes, DB, kbmMemTable,Dialogs, Controls, VidaType,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Async,
  FireDAC.DApt, SQLtimst, Vcl.Menus, dxmdaset ;

type
  TdmInventory = class(TDataModule)
    ds_PkgList: TDataSource;
    ds_InvSum: TDataSource;
    ds_LengthGroup: TDataSource;
    ds_ProductLengthInGroup: TDataSource;
    ds_PcsPerLen: TDataSource;
    mtRemovedPkg: TkbmMemTable;
    mtRemovedPkgPKGNO: TIntegerField;
    mtRemovedPkgSUPPCODE: TStringField;
    mt_PC: TkbmMemTable;
    mt_PCProductCategoryNo: TIntegerField;
    mt_PCProductCategoryName: TStringField;
    ds_PC: TDataSource;
    ds_PkgNoList: TDataSource;
    mtPkgNos: TkbmMemTable;
    mtPkgNosPackageNo: TIntegerField;
    mtPkgNosSupplierCode: TStringField;
    mtPkgNosPackageTypeNo: TIntegerField;
    mtPkgNosLIPNo: TIntegerField;
    mtPkgNosOwnerNo: TIntegerField;
    ds_OtherLengths: TDataSource;
    ds_Props: TDataSource;
    cds_PcsPerLen: TFDQuery;
    cds_PcsPerLenAKTUELLÄNGD: TFloatField;
    cds_PcsPerLenSTYCK: TIntegerField;
    cds_PcsPerLenAM3: TFloatField;
    cds_PcsPerLenPAKET: TIntegerField;
    cds_PcsPerLenTOTAL_AM3: TFloatField;
    cds_PcsPerLenPercentOfTotal: TFloatField;
    cds_InvSum: TFDQuery;
    cds_InvSumLAGERSTÄLLE: TStringField;
    cds_InvSumTS: TStringField;
    cds_InvSumKV: TStringField;
    cds_InvSumATMM: TFloatField;
    cds_InvSumABMM: TFloatField;
    cds_InvSumUT: TStringField;
    cds_InvSumIMP: TStringField;
    cds_InvSumAM3: TFloatField;
    cds_InvSumMFBM: TFloatField;
    cds_InvSumSTYCK: TIntegerField;
    cds_InvSumPAKET: TIntegerField;
    cds_InvSumProductNo: TIntegerField;
    cds_InvSumPIPNo: TIntegerField;
    cds_PkgList: TFDQuery;
    cds_PkgListPKT: TIntegerField;
    cds_PkgListProductNo: TIntegerField;
    cds_PkgListPRODUKT: TStringField;
    cds_PkgListPackageTypeNo: TIntegerField;
    cds_PkgListAT: TFloatField;
    cds_PkgListAB: TFloatField;
    cds_PkgListSTYCK: TIntegerField;
    cds_PkgListSTYCKPERLÄNGD: TStringField;
    cds_PkgListAM3: TFloatField;
    cds_PkgListNM3: TFloatField;
    cds_PkgListAM1: TFloatField;
    cds_PkgListMFBM: TFloatField;
    cds_PkgListAM2: TFloatField;
    cds_PkgListTILLVERKAD: TSQLTimeStampField;
    cds_PkgListTS: TStringField;
    cds_PkgListPC: TStringField;
    cds_PkgListKV: TStringField;
    cds_PkgListUT: TStringField;
    cds_PkgListSTD_Length: TIntegerField;
    cds_PkgListOwnerNo: TIntegerField;
    cds_PkgListLager: TStringField;
    cds_PkgListLIPNo: TIntegerField;
    cds_PkgListPIPNo: TIntegerField;
    cds_PkgListStatus: TIntegerField;
    cds_PkgListPris: TFloatField;
    cds_PkgListVärde: TFloatField;
    cds_PkgListVarugruppNamn: TStringField;
    cds_PkgListREFERENCE: TStringField;
    cds_PkgListBL_NO: TStringField;
    cds_PkgNoList: TFDQuery;
    cds_PkgNoListPKT: TIntegerField;
    cds_PkgNoListProductNo: TIntegerField;
    cds_PkgNoListPRODUKT: TStringField;
    cds_PkgNoListPackageTypeNo: TIntegerField;
    cds_PkgNoListAT: TFloatField;
    cds_PkgNoListAB: TFloatField;
    cds_PkgNoListSTYCK: TIntegerField;
    cds_PkgNoListSTYCKPERLÄNGD: TStringField;
    cds_PkgNoListAM3: TFloatField;
    cds_PkgNoListNM3: TFloatField;
    cds_PkgNoListAM1: TFloatField;
    cds_PkgNoListMFBM: TFloatField;
    cds_PkgNoListAM2: TFloatField;
    cds_PkgNoListTILLVERKAD: TSQLTimeStampField;
    cds_PkgNoListTS: TStringField;
    cds_PkgNoListPC: TStringField;
    cds_PkgNoListKV: TStringField;
    cds_PkgNoListUT: TStringField;
    cds_PkgNoListSTD_Length: TIntegerField;
    cds_PkgNoListOwnerNo: TIntegerField;
    cds_PkgNoListLager: TStringField;
    cds_PkgNoListLIPNo: TIntegerField;
    cds_PkgNoListPIPNo: TIntegerField;
    cds_PkgNoListStatus: TIntegerField;
    cds_PkgNoListVarugruppNamn: TStringField;
    cds_PkgNoListREFERENCE: TStringField;
    cds_PkgNoListBL_NO: TStringField;
    cds_Props: TFDQuery;
    cds_PropsUserID: TIntegerField;
    cds_PropsForm: TStringField;
    cds_PropsVerkNo: TIntegerField;
    cds_PropsOwnerNo: TIntegerField;
    cds_PropsPIPNo: TIntegerField;
    cds_PropsLIPNo: TIntegerField;
    cds_PropsInputOption: TIntegerField;
    cds_PropsRegPointNo: TIntegerField;
    cds_PropsRegDate: TSQLTimeStampField;
    cds_PropsCopyPcs: TIntegerField;
    cds_PropsRunNo: TIntegerField;
    cds_PropsProducerNo: TIntegerField;
    cds_PropsAutoColWidth: TIntegerField;
    cds_PropsSupplierCode: TStringField;
    cds_PropsLengthOption: TIntegerField;
    cds_PropsLengthGroupNo: TIntegerField;
    cds_PropsNewItemRow: TIntegerField;
    cds_PropsSalesRegionNo: TIntegerField;
    cds_PropsMarketRegionNo: TIntegerField;
    cds_PropsOrderTypeNo: TIntegerField;
    cds_PropsStatus: TIntegerField;
    cds_PropsFilterOrderDate: TIntegerField;
    cds_PropsStartPeriod: TSQLTimeStampField;
    cds_PropsEndPeriod: TSQLTimeStampField;
    cds_PropsClientNo: TIntegerField;
    cds_PropsSalesPersonNo: TIntegerField;
    cds_PropsVerkSupplierNo: TIntegerField;
    cds_PropsVerkKundNo: TIntegerField;
    cds_PropsLOObjectType: TIntegerField;
    cds_PropsBarCodeNo: TIntegerField;
    cds_PropsGradeStampNo: TIntegerField;
    cds_PropsVolumeUnitNo: TIntegerField;
    cds_PropsLengthFormatNo: TIntegerField;
    cds_PropsLengthVolUnitNo: TIntegerField;
    cds_PropsGroupByBox: TIntegerField;
    cds_PropsGroupSummary: TIntegerField;
    cds_PropsAgentNo: TIntegerField;
    cds_PropsLoadingLocationNo: TIntegerField;
    cds_PropsShipperNo: TIntegerField;
    cds_PropsBookingTypeNo: TIntegerField;
    cds_PropsCustomerNo: TIntegerField;
    cds_PropsShowProduct: TIntegerField;
    cds_PropsName: TStringField;
    cds_PropsFilter1: TStringField;
    cds_OtherLengths: TFDQuery;
    cds_ProductLengthInGroup: TFDQuery;
    cds_ProductLengthInGroupALMM: TFloatField;
    cds_ProductLengthInGroupNLMM: TFloatField;
    cds_ProductLengthInGroupFOT: TFloatField;
    cds_ProductLengthInGroupTUM: TStringField;
    cds_LengthGroup: TFDQuery;
    cds_LengthGroupGroupNo: TIntegerField;
    cds_LengthGroupGroupName: TStringField;
    cds_LengthGroupNoOfLengths: TIntegerField;
    sq_Varugrupp: TFDQuery;
    sq_VarugruppVarugruppNamn: TStringField;
    sq_VarugruppVarugruppNo: TIntegerField;
    sq_VarugruppVarugruppID: TIntegerField;
    sq_UpdatePrice: TFDQuery;
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
    sq_Temp_Inventory: TFDQuery;
    sq_LogInvByOwnerCity: TFDQuery;
    sq_LogInvByOwnerCityLogicalInventoryName: TStringField;
    sq_LogInvByOwnerCityLogicalInventoryPointNo: TIntegerField;
    sq_Grades: TFDQuery;
    sq_GradesGradeName: TStringField;
    sq_GradesGradeNo: TIntegerField;
    sq_Species: TFDQuery;
    sq_SpeciesSpeciesName: TStringField;
    sq_SpeciesSpeciesNo: TIntegerField;
    sq_GroupLengths: TFDQuery;
    sq_GroupLengthsActualLengthMM: TFloatField;
    sq_PkgType_InvoiceByCSD: TFDQuery;
    sq_DelPkgType: TFDQuery;
    sq_AL: TFDQuery;
    sq_ALAL: TFloatField;
    sq_BarCode: TFDQuery;
    sq_BarCodeBarCodeID: TStringField;
    sq_BarCodeBarCodeNo: TIntegerField;
    sq_BarCodeBarCode: TStringField;
    sq_AB: TFDQuery;
    sq_ABAB: TFloatField;
    sq_Specie: TFDQuery;
    sq_Speciespeciescode: TStringField;
    sq_SpecieSpeciesNo: TIntegerField;
    sq_SpeciespeciesName: TStringField;
    sq_GradeStamp: TFDQuery;
    sq_GradeStampGradeStampID: TStringField;
    sq_GradeStampGradeStampNo: TIntegerField;
    sq_GradeStampGradeStamp: TStringField;
    sq_AT: TFDQuery;
    sq_ATAT: TFloatField;
    sq_Grade: TFDQuery;
    sq_GradeGradeName: TStringField;
    sq_GradeGradeNo: TIntegerField;
    sq_Gradegradecode: TStringField;
    sq_GradeGradeName_1: TStringField;
    sq_Surfacing: TFDQuery;
    sq_SurfacingSurfacingcode: TStringField;
    sq_SurfacingSurfacingNo: TIntegerField;
    sq_SurfacingSurfacingName: TStringField;
    sq_SurfacingSurfacingName_1: TStringField;
    sq_PC2: TFDQuery;
    sq_PC2ImpCode: TStringField;
    sq_PC2ProductCategoryNo: TIntegerField;
    sq_PC2ProductCategoryName: TStringField;
    sq_PC2ProductCategoryName_1: TStringField;
    cds_PC: TFDQuery;
    cds_PCImpCode: TStringField;
    cds_PCProductCategoryNo: TIntegerField;
    cds_PCProductCategoryName: TStringField;
    cds_PCProductCategoryName_1: TStringField;
    sq_GetHighPcsNoLength: TFDQuery;
    sq_GetHighPcsNoLengthProductNo: TIntegerField;
    sq_GetHighPcsNoLengthPackageTypeNo: TIntegerField;
    sq_GetHighPcsNoLengthActualLengthMM: TFloatField;
    sq_GetHighPcsNoLengthLogicalInventoryPointNo: TIntegerField;
    sq_GetHighPcsNoLengthNoOfLengths: TIntegerField;
    sq_GetHighPcsNoLengthUnnamed6: TIntegerField;
    sq_GetHighPcs: TFDQuery;
    sq_GetHighPcsProductNo: TIntegerField;
    sq_GetHighPcsPackageTypeNo: TIntegerField;
    sq_GetHighPcsActualLengthMM: TFloatField;
    sq_GetHighPcsLogicalInventoryPointNo: TIntegerField;
    sq_GetHighPcsUnnamed5: TIntegerField;
    sq_GetPkgNosNoLength: TFDQuery;
    sq_GetPkgNosNoLengthPackageNo: TIntegerField;
    sq_GetPkgNosNoLengthSupplierCode: TStringField;
    sq_GetPkgNos: TFDQuery;
    sq_GetPkgNosPackageNo: TIntegerField;
    sq_GetPkgNosSupplierCode: TStringField;
    sp_OnePackageNo: TFDStoredProc;
    sp_NewPackageNo: TFDStoredProc;
    sp_VardaLager: TFDStoredProc;
    cds_OtherLengthsPKT: TIntegerField;
    cds_OtherLengthsAntalLängder: TIntegerField;
    cds_OtherLengthsALMM: TFloatField;
    cds_PkgListL1: TFloatField;
    cds_PkgListL2: TFloatField;
    cds_PkgListL3: TFloatField;
    cds_PkgListL4: TFloatField;
    cds_PkgListL5: TFloatField;
    cds_PkgListL6: TFloatField;
    cds_PkgListL7: TFloatField;
    cds_PkgListL8: TFloatField;
    cds_PkgListL9: TFloatField;
    cds_PkgListL10: TFloatField;
    cds_PkgListL11: TFloatField;
    cds_PkgListL12: TFloatField;
    cds_PkgListL13: TFloatField;
    cds_PkgListL14: TFloatField;
    cds_PkgListL15: TFloatField;
    cds_PkgListL16: TFloatField;
    cds_PkgListL17: TFloatField;
    cds_PkgListL18: TFloatField;
    cds_PkgListL19: TFloatField;
    cds_PkgListL20: TFloatField;
    cds_PkgListL21: TFloatField;
    cds_PkgListL22: TFloatField;
    cds_PkgListL23: TFloatField;
    cds_PkgListL24: TFloatField;
    cds_PkgListL25: TFloatField;
    cds_PkgListL26: TFloatField;
    cds_PkgListL27: TFloatField;
    cds_PkgListL28: TFloatField;
    cds_PkgListL29: TFloatField;
    cds_PkgListL30: TFloatField;
    cds_PkgListL31: TFloatField;
    cds_PkgListL32: TFloatField;
    cds_PkgListL33: TFloatField;
    cds_PkgListL34: TFloatField;
    cds_PkgListL35: TFloatField;
    cds_PkgListL36: TFloatField;
    cds_PkgListL37: TFloatField;
    cds_PkgListL38: TFloatField;
    cds_PkgListL39: TFloatField;
    cds_PkgListL40: TFloatField;
    cds_PkgListL41: TFloatField;
    cds_PkgListL42: TFloatField;
    cds_PkgListL43: TFloatField;
    cds_PkgListL44: TFloatField;
    cds_PkgListL45: TFloatField;
    cds_PkgNoListL1: TFloatField;
    cds_PkgNoListL2: TFloatField;
    cds_PkgNoListL3: TFloatField;
    cds_PkgNoListL4: TFloatField;
    cds_PkgNoListL5: TFloatField;
    cds_PkgNoListL6: TFloatField;
    cds_PkgNoListL7: TFloatField;
    cds_PkgNoListL8: TFloatField;
    cds_PkgNoListL9: TFloatField;
    cds_PkgNoListL10: TFloatField;
    cds_PkgNoListL11: TFloatField;
    cds_PkgNoListL12: TFloatField;
    cds_PkgNoListL13: TFloatField;
    cds_PkgNoListL14: TFloatField;
    cds_PkgNoListL15: TFloatField;
    cds_PkgNoListL16: TFloatField;
    cds_PkgNoListL17: TFloatField;
    cds_PkgNoListL18: TFloatField;
    cds_PkgNoListL19: TFloatField;
    cds_PkgNoListL20: TFloatField;
    cds_PkgNoListL21: TFloatField;
    cds_PkgNoListL22: TFloatField;
    cds_PkgNoListL23: TFloatField;
    cds_PkgNoListL24: TFloatField;
    cds_PkgNoListL25: TFloatField;
    cds_PkgNoListL26: TFloatField;
    cds_PkgNoListL27: TFloatField;
    cds_PkgNoListL28: TFloatField;
    cds_PkgNoListL29: TFloatField;
    cds_PkgNoListL30: TFloatField;
    cds_PkgNoListL31: TFloatField;
    cds_PkgNoListL32: TFloatField;
    cds_PkgNoListL33: TFloatField;
    cds_PkgNoListL34: TFloatField;
    cds_PkgNoListL35: TFloatField;
    cds_PkgNoListL36: TFloatField;
    cds_PkgNoListL37: TFloatField;
    cds_PkgNoListL38: TFloatField;
    cds_PkgNoListL39: TFloatField;
    cds_PkgNoListL40: TFloatField;
    cds_PkgNoListL41: TFloatField;
    cds_PkgNoListL42: TFloatField;
    cds_PkgNoListL43: TFloatField;
    cds_PkgNoListL44: TFloatField;
    cds_PkgNoListL45: TFloatField;
    cds_PkgListAvgLength: TFloatField;
    sq_Kund: TFDQuery;
    sq_Land: TFDQuery;
    sq_Matpunkt: TFDQuery;
    sq_SkiftLag: TFDQuery;
    sq_NT: TFDQuery;
    sq_NB: TFDQuery;
    ds_ProductionByPackageNo: TDataSource;
    ds_ProductionByProduct: TDataSource;
    ds_DeliveryStat: TDataSource;
    cds_ProductionByPackageNo: TFDQuery;
    cds_ProductionByProduct: TFDQuery;
    cds_DeliveryStat: TFDQuery;
    cds_ProductionByPackageNoOperation: TStringField;
    cds_ProductionByPackageNoProductNo: TIntegerField;
    cds_ProductionByPackageNoPRODUKT: TStringField;
    cds_ProductionByPackageNoPackageTypeNo: TIntegerField;
    cds_ProductionByPackageNoPaketNr: TIntegerField;
    cds_ProductionByPackageNoPrefix: TStringField;
    cds_ProductionByPackageNoAT: TFloatField;
    cds_ProductionByPackageNoAB: TFloatField;
    cds_ProductionByPackageNoNT: TFloatField;
    cds_ProductionByPackageNoNB: TFloatField;
    cds_ProductionByPackageNoNomDim: TStringField;
    cds_ProductionByPackageNoAktDim: TStringField;
    cds_ProductionByPackageNoSTYCK: TIntegerField;
    cds_ProductionByPackageNoAM3: TFloatField;
    cds_ProductionByPackageNoNM3: TFloatField;
    cds_ProductionByPackageNoAM1: TFloatField;
    cds_ProductionByPackageNoMFBM: TFloatField;
    cds_ProductionByPackageNoAM2: TFloatField;
    cds_ProductionByPackageNoTS: TStringField;
    cds_ProductionByPackageNoPC: TStringField;
    cds_ProductionByPackageNoKV: TStringField;
    cds_ProductionByPackageNoUT: TStringField;
    cds_ProductionByPackageNoOwnerNo: TIntegerField;
    cds_ProductionByPackageNoShiftTeamName: TStringField;
    cds_ProductionByPackageNoRegPointName: TStringField;
    cds_ProductionByPackageNoMP_SkiftLag: TStringField;
    cds_ProductionByProductOperation: TStringField;
    cds_ProductionByProductProductNo: TIntegerField;
    cds_ProductionByProductPRODUKT: TStringField;
    cds_ProductionByProductPaketnr: TIntegerField;
    cds_ProductionByProductPrefix: TStringField;
    cds_ProductionByProductAT: TFloatField;
    cds_ProductionByProductAB: TFloatField;
    cds_ProductionByProductNT: TFloatField;
    cds_ProductionByProductNB: TFloatField;
    cds_ProductionByProductNomDim: TStringField;
    cds_ProductionByProductAktDim: TStringField;
    cds_ProductionByProductSTYCK: TIntegerField;
    cds_ProductionByProductAM3: TFloatField;
    cds_ProductionByProductNM3: TFloatField;
    cds_ProductionByProductAM1: TFloatField;
    cds_ProductionByProductMFBM: TFloatField;
    cds_ProductionByProductAM2: TFloatField;
    cds_ProductionByProductTS: TStringField;
    cds_ProductionByProductPC: TStringField;
    cds_ProductionByProductKV: TStringField;
    cds_ProductionByProductUT: TStringField;
    cds_ProductionByProductOwnerNo: TIntegerField;
    cds_ProductionByProductAvgLength: TFloatField;
    cds_ProductionByProductShiftTeamName: TStringField;
    cds_ProductionByProductRegPointName: TStringField;
    cds_ProductionByProductMP_SkiftLag: TStringField;
    cds_PkgListInfo2: TStringField;
    cds_PkgNoListInfo2: TStringField;
    sq_PC2old: TFDQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    cds_PkgNoListAvgLength: TFloatField;
    cds_ProductionByPackageNoTILLVERKAD: TSQLTimeStampField;
    cds_ProductionByPackageNoAvgLength: TFloatField;
    cds_PkgListPackageNo: TIntegerField;
    cds_PkgListSupplierCode: TStringField;
    cds_PkgNoListPackageNo: TIntegerField;
    cds_PkgNoListSupplierCode: TStringField;
    cds_SpecLayout: TFDQuery;
    cds_SpecLayoutPackageLogLayoutNo: TIntegerField;
    cds_SpecLayoutPackageLogLayoutName: TStringField;
    cds_SpecLayoutPrintFileName: TStringField;
    mtSizeFormat: TkbmMemTable;
    mtSizeFormatSizeFormatNo: TSmallintField;
    mtSizeFormatSizeFormat: TStringField;
    mtLengthFormat: TkbmMemTable;
    mtLengthFormatLengthFormatNo: TSmallintField;
    mtLengthFormatLengthFormat: TStringField;
    mtVolumeFormat: TkbmMemTable;
    mtVolumeFormatVolumeFormatNo: TSmallintField;
    mtVolumeFormatVolumeFormat: TStringField;
    dsLengthFormat: TDataSource;
    dsVolumeFormat: TDataSource;
    cds_KilnVagnar: TFDQuery;
    ds_KilnVagnar: TDataSource;
    cds_KilnVagnarRad: TStringField;
    cds_KilnVagnarRowNo: TIntegerField;
    cds_GetAntalVagnar: TFDQuery;
    cds_GetAntalVagnarClientNo: TIntegerField;
    cds_GetAntalVagnarKilnNo: TIntegerField;
    cds_GetAntalVagnarKilnName: TStringField;
    cds_GetAntalVagnarNoOfVagnar: TIntegerField;
    cds_AntalVagnarPerStatus: TFDQuery;
    cds_AntalVagnarPerStatusAntalVagnar: TIntegerField;
    cds_GetSistaVagnNo: TFDQuery;
    cds_GetSistaVagnNoSistaVagnNo: TIntegerField;
    cds_Vagnar: TFDQuery;
    cds_VagnarVagnNo: TIntegerField;
    cds_KilnChargeRows: TFDQuery;
    cds_KilnChargeRowsKilnChargeNo: TIntegerField;
    cds_KilnChargeRowsPackageNo: TIntegerField;
    cds_KilnChargeRowsSupplierCode: TStringField;
    cds_KilnChargeRowsNoOfPkgs: TIntegerField;
    cds_KilnChargeRowsDateCreated: TSQLTimeStampField;
    cds_KilnChargeRowsCreatedUser: TIntegerField;
    cds_KilnChargeRowsVagnNo: TIntegerField;
    cds_KilnChargeRowsRowNo: TIntegerField;
    cds_KilnChargeHdr: TFDQuery;
    cds_KilnChargeHdrClientNo: TIntegerField;
    cds_KilnChargeHdrKilnChargeNo: TIntegerField;
    cds_KilnChargeHdrKilnNo: TIntegerField;
    cds_KilnChargeHdrStartTime: TSQLTimeStampField;
    cds_KilnChargeHdrEndTime: TSQLTimeStampField;
    cds_KilnChargeHdrPlannedDuration: TFloatField;
    cds_KilnChargeHdrCreatedDate: TSQLTimeStampField;
    cds_KilnChargeHdrCreatedUser: TIntegerField;
    cds_KilnChargeHdrStatus: TIntegerField;
    cds_KilnChargeHdrNote: TMemoField;
    ds_KilnChargeRows: TDataSource;
    sq_PkgExistInInventory: TFDQuery;
    sq_PkgExistInInventoryPackageNo: TIntegerField;
    cds_KilnChargeHdrBeforeKiln_LIPNo: TIntegerField;
    cds_KilnChargeHdrKiln_LIPNo: TIntegerField;
    cds_KilnChargeHdrAfterKiln_LIPNo: TIntegerField;
    cds_KilnChargeHdrKiln_PIPNo: TIntegerField;
    cds_SelectProgressKiln: TFDQuery;
    cds_SelectProgressKilnClientNo: TIntegerField;
    cds_SelectProgressKilnKilnChargeNo: TIntegerField;
    cds_SelectProgressKilnKilnNo: TIntegerField;
    cds_KilnVagn: TFDQuery;
    cds_KilnVagnKilnChargeNo: TIntegerField;
    cds_KilnVagnVagnNo: TIntegerField;
    cds_KilnVagnInDate: TSQLTimeStampField;
    cds_KilnVagnOutDate: TSQLTimeStampField;
    cds_KilnVagnVagnStatus: TIntegerField;
    cds_KilnVagnCreatedUser: TIntegerField;
    cds_KilnVagnDateCreated: TSQLTimeStampField;
    cds_KilnChargeRowsProductDisplayName: TStringField;
    cds_KilnChargeRowsPcsPerLength: TStringField;
    sp_MoveVagn: TFDStoredProc;
    cds_GetLastVagnNoPerVagnStatus: TFDQuery;
    cds_GetLastVagnNoPerVagnStatusVagnNo: TIntegerField;
    cds_KilnChargeHdrNoOfVagnar: TIntegerField;
    cds_VagnStatus: TFDQuery;
    cds_VagnStatusKilnChargeNo: TIntegerField;
    cds_VagnStatusVagnNo: TIntegerField;
    cds_VagnStatusInDate: TSQLTimeStampField;
    cds_VagnStatusOutDate: TSQLTimeStampField;
    cds_VagnStatusVagnStatus: TIntegerField;
    cds_VagnStatusDateCreated: TSQLTimeStampField;
    cds_VagnStatusCreatedUser: TIntegerField;
    cds_GetFirstVagnNoPerVagnStatus: TFDQuery;
    cds_GetFirstVagnNoPerVagnStatusVagnNo: TIntegerField;
    cds_SelectProgressKilnKilnName: TStringField;
    cds_KilnVagnarL1: TStringField;
    cds_KilnVagnarL2: TStringField;
    cds_KilnVagnarL3: TStringField;
    cds_KilnVagnarL4: TStringField;
    cds_KilnVagnarL5: TStringField;
    cds_KilnVagnarL6: TStringField;
    cds_KilnVagnarL7: TStringField;
    cds_KilnVagnarL8: TStringField;
    cds_KilnVagnarL9: TStringField;
    cds_KilnVagnarL10: TStringField;
    cds_KilnVagnarL11: TStringField;
    cds_KilnVagnarL12: TStringField;
    cds_KilnVagnarL13: TStringField;
    cds_KilnVagnarL14: TStringField;
    cds_KilnVagnarL15: TStringField;
    cds_KilnVagnarL16: TStringField;
    cds_KilnVagnarL17: TStringField;
    cds_KilnVagnarL18: TStringField;
    cds_KilnVagnarL19: TStringField;
    cds_KilnVagnarL20: TStringField;
    cds_KilnVagnarL21: TStringField;
    cds_KilnVagnarL22: TStringField;
    cds_KilnVagnarL23: TStringField;
    cds_KilnVagnarL24: TStringField;
    cds_KilnVagnarL25: TStringField;
    cds_KilnVagnarL26: TStringField;
    cds_KilnVagnarL27: TStringField;
    cds_KilnVagnarL28: TStringField;
    cds_KilnVagnarL29: TStringField;
    cds_KilnVagnarL30: TStringField;
    cds_KilnVagnarL31: TStringField;
    cds_KilnVagnarL32: TStringField;
    cds_KilnVagnarL33: TStringField;
    cds_KilnVagnarL34: TStringField;
    cds_KilnVagnarL35: TStringField;
    cds_KilnChargeHdrNoOfVagnarBefore: TIntegerField;
    ds_KilnChargeHdr: TDataSource;
    mtSelectedPkgNo: TkbmMemTable;
    mtSelectedPkgNoPAKETNR: TIntegerField;
    mtSelectedPkgNoLEVKOD: TStringField;
    mtSelectedPkgNoSTYCKPERLNGD: TStringField;
    mtSelectedPkgNoAM3: TFloatField;
    mtSelectedPkgNoSTYCK: TIntegerField;
    mtSelectedPkgNoREGISTRERAT: TSQLTimeStampField;
    mtSelectedPkgNoProductNo: TIntegerField;
    mtSelectedPkgNoMARKERAD: TIntegerField;
    dxMemData1: TdxMemData;
    dxMemData1L1: TIntegerField;
    dxMemData1L2: TIntegerField;
    dxMemData1L3: TIntegerField;
    dxMemData1L4: TIntegerField;
    dxMemData1L5: TIntegerField;
    dxMemData1L6: TIntegerField;
    sc_GetProductNoByPackageNo: TFDQuery;
    sc_GetProductNoByPackageNoproductno: TIntegerField;
    cds_KilnVagnarL36: TStringField;
    cds_KilnVagnarL37: TStringField;
    cds_KilnVagnarL38: TStringField;
    cds_KilnVagnarL39: TStringField;
    cds_KilnVagnarL40: TStringField;
    cds_KilnVagnarL41: TStringField;
    cds_KilnVagnarL42: TStringField;
    cds_KilnVagnarL43: TStringField;
    cds_KilnVagnarL44: TStringField;
    cds_KilnVagnarL45: TStringField;
    cds_PkgCost: TFDQuery;
    cds_PkgCostPackageNo: TIntegerField;
    cds_PkgCostSupplierCode: TStringField;
    cds_PkgCostLIPNo: TIntegerField;
    cds_PkgCostLoadOrderNo: TIntegerField;
    cds_PkgCostCostType: TIntegerField;
    cds_PkgCostArticleNo: TIntegerField;
    cds_PkgCostDateCreated: TSQLTimeStampField;
    cds_PkgCostCostPerAM3: TFloatField;
    cds_PkgCostKOSTTYP: TStringField;
    cds_PkgCostExclude: TIntegerField;
    ds_PkgCost: TDataSource;
    sp_Manuell_LipSum: TFDStoredProc;
    sp_MovePackage: TFDStoredProc;
    mtSelectedPkgNoMaxlangd: TFloatField;
    sp_PkgExistInLIP: TFDStoredProc;
    sq_UserLipNoExists: TFDQuery;
    procedure cds_PcsPerLenCalcFields(DataSet: TDataSet);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure cds_KilnVagnAfterInsert(DataSet: TDataSet);
    procedure cds_KilnVagnBeforePost(DataSet: TDataSet);
    procedure cds_KilnChargeRowsAfterInsert(DataSet: TDataSet);
    procedure cds_KilnChargeRowsBeforeDelete(DataSet: TDataSet);
    procedure cds_KilnChargeRowsAfterPost(DataSet: TDataSet);
    procedure mtSelectedPkgNoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }

    procedure Open_cds_KilnChargeRows ;
    procedure GetPkgsNumbersFromSelectedInventory(const Status, LIPNo, LengthGroupNo, ProductNo, NoOfPkgs : Integer;const AL : String) ;
    procedure GetPkgsNumbersForSelectedInventoryAndPkgType(const SupplierNo, LIPNo, LengthGroupNo, ProductNo, NoOfPkgs : Integer;const AL : String) ;
    function  VardaLagerNegativt : Boolean ;
    function  VardaLagerPositivt : Boolean ;
    Function  GetHighPcsWithLength(const LIPNo, ProductNo  : Integer;const AL : String) : Integer ;
    Function  GetHighPcsWith_OUT_Length(const LIPNo, ProductNo : Integer;const AL : String) : Integer ;
    function  PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
  public
    { Public declarations }
    MarkedPkgs  : Integer ;
    KeyField :  string ;
    KilnChargeNo,
    RoleType : Integer ;
    Function  UserLipNoExists : Boolean ;
    function  PkgExistInInventoryKILN(const PackageNo, LIPNo : Integer;const Prefix : String3) : Boolean ;
    Procedure UpdateLIPSUMPrice(const LIPNo, PackageNo, SETNo : Integer;const Prefix : String;const NewPrice : Double) ;
    function  GetProductNoByPackageNoproductno(const PackageNo : Integer;const Prefix : String) : Integer ;
    function  VagnarBeforeKiln_Larger_Then_MaxVagnarBefore(const KilnChargeNo : Integer) : Boolean ;
    function  IsFreeSpaceInKiln(const pKilnChargeNo  : Integer) : Boolean ;
    function  GetFirstVagnNoPerVagnStatus(const KilnChargeNo, VagnStatus  : Integer) : Integer ;
    function  IsVagnStatus0(const VagnNo, KilnChargeNo : Integer) : Boolean ;
    function  IsNoOfVagnarInKilnBiggerThenMaxVagnar(const pKilnChargeNo  : Integer) : Boolean ;
    procedure Open_cds_KilnChargeHdr ;
    function  GetLastVagnNoPerVagnStatus(const KilnChargeNo, VagnStatus  : Integer) : Integer ;
    procedure FlyttaVagn(const KilnChargeNo, VagnNo, MoveToLIPNo, NewVagnStatus : Integer) ;
    procedure ControlVagn(const VagnNo : Integer) ;
    procedure EditVagn(const pKilnChargeNo, VagnNo : Integer) ;
    procedure AddVagn(const pKilnChargeNo : Integer) ;
    function  PkgExistInInventory(const PackageNo, PIPNo : Integer;const SupplierCode : String3) : Boolean ;
    procedure MakeVagnSQL(const KilnChargeNo : Integer) ;
    function  GetSistaVagnNo(const KilnNo : Integer) : Integer ;
    function  Get_AntalVagnarPerStatus(const KilnChargeNo, VagnStatus : Integer) : Integer ;
    function  GetAntalVagnar(const KilnChargeNo : Integer) : Integer ;
    Procedure UpdatePackagePrice(const PackageNo : Integer;const Prefix : String;const NewPrice : Double) ;
    procedure Generate_PkgType_InvoiceByCSD(const LONo : Integer) ;
    procedure Get_OneUniquePkg (const PackageNo : Integer;const SupplierCode : String3;Var OwnerNo, PIP, LIP : Integer) ;
    function  VardaLager(const SupplierNo, LIPNo, LengthGroupNo, ProductNo, NoOfPkgs : Integer;const AL, Produkt : String) : Boolean ;
    procedure Open_sq_OtherLengths(const OwnerNo, ProductNo, LIPNo, LengthGroupNo : Integer) ;
    procedure Close_sq_OtherLengths ;
    Function  Selected_sq_OtherLengths : String ;
  end;

var
  dmInventory: TdmInventory;

implementation

uses VidaUser, dmsDataConn, dmsVidaContact, dmsVidaSystem;

{$R *.dfm}

Function TdmInventory.UserLipNoExists : Boolean ;
Begin
  sq_UserLipNoExists.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  sq_UserLipNoExists.Active := True ;
  Try
  if not sq_UserLipNoExists.Eof then
  Result  := True
  else
  Result  := False ;
  Finally
    sq_UserLipNoExists.Active := False ;
  End;
End;

procedure TdmInventory.EditVagn(const pKilnChargeNo, VagnNo : Integer) ;
Begin
  KilnChargeNo  := pKilnChargeNo ;
  cds_KilnVagn.Active  := False ;
  cds_KilnVagn.ParamByName('KilnChargeNo').AsInteger  := KilnChargeNo ;
  cds_KilnVagn.ParamByName('VagnNo').AsInteger        := VagnNo ;
  cds_KilnVagn.Active  := True ;

  Open_cds_KilnChargeHdr ;
  Open_cds_KilnChargeRows ;
End;

procedure TdmInventory.AddVagn(const pKilnChargeNo : Integer) ;
Begin
  if not cds_KilnVagn.Active then
   cds_KilnVagn.Active  := True ;
  KilnChargeNo  := pKilnChargeNo ;
  cds_KilnVagn.Insert ;
//  cds_KilnVagnKilnChargeNo.AsInteger  := KilnChargeNo ;
  cds_KilnVagn.Post ;

  Open_cds_KilnChargeHdr ;
  Open_cds_KilnChargeRows ;
End;

procedure TdmInventory.Open_cds_KilnChargeRows ;
Begin
  cds_KilnChargeRows.Active := False ;
  cds_KilnChargeRows.ParamByName('KilnChargeNo').AsInteger  :=  KilnChargeNo ;
  cds_KilnChargeRows.ParamByName('VagnNo').AsInteger        :=  cds_KilnVagnVagnNo.AsInteger ;
  cds_KilnChargeRows.Active := True ;
End;


procedure TdmInventory.Open_cds_KilnChargeHdr ;
Begin
  cds_KilnChargeHdr.Active := False ;
  cds_KilnChargeHdr.ParamByName('KilnChargeNo').AsInteger  :=  KilnChargeNo ;
  cds_KilnChargeHdr.Active := True ;
End;

procedure TdmInventory.cds_KilnChargeRowsAfterInsert(DataSet: TDataSet);
begin
 cds_KilnChargeRowsKilnChargeNo.AsInteger      := cds_KilnChargeHdrKilnChargeNo.AsInteger ;
 cds_KilnChargeRowsDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
 cds_KilnChargeRowsCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_KilnChargeRowsVagnNo.AsInteger            := cds_KilnVagnVagnNo.AsInteger ;
end;

procedure TdmInventory.cds_KilnChargeRowsAfterPost(DataSet: TDataSet);
begin
 Try
// ShowMessage('cds_KilnChargeRowsPackageNo = ' + cds_KilnChargeRowsPackageNo.AsString) ;

//Put the package to inventory IN kiln direct as they are set on a Vagn
 sp_MovePackage.ParamByName('@PackageNo').AsInteger     :=  cds_KilnChargeRowsPackageNo.AsInteger ;
 sp_MovePackage.ParamByName('@SupplierCode').AsString   :=  cds_KilnChargeRowsSupplierCode.AsString ;
 sp_MovePackage.ParamByName('@NewLocation').AsInteger   :=  cds_KilnChargeHdrKiln_LIPNo.AsInteger ;
 sp_MovePackage.ParamByName('@UserID').AsInteger        :=  ThisUser.UserID ;
 sp_MovePackage.ParamByName('@KilnChargeNo').AsInteger  :=  cds_KilnChargeRowsKilnChargeNo.AsInteger ;
 sp_MovePackage.ExecProc ;
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message+' : sp_MovePackage.ExecProc') ;
   Raise ;
  End ;
 end;
end;

procedure TdmInventory.cds_KilnChargeRowsBeforeDelete(DataSet: TDataSet);
begin
 Try
// ShowMessage('cds_KilnChargeRowsPackageNo = ' + cds_KilnChargeRowsPackageNo.AsString) ;

//Put the package back to inventory before kiln
 sp_MovePackage.ParamByName('@PackageNo').AsInteger     :=  cds_KilnChargeRowsPackageNo.AsInteger ;
 sp_MovePackage.ParamByName('@SupplierCode').AsString   :=  cds_KilnChargeRowsSupplierCode.AsString ;
 sp_MovePackage.ParamByName('@NewLocation').AsInteger   :=  cds_KilnChargeHdrBeforeKiln_LIPNo.AsInteger ;
 sp_MovePackage.ParamByName('@UserID').AsInteger        :=  ThisUser.UserID ;
 sp_MovePackage.ParamByName('@KilnChargeNo').AsInteger  :=  cds_KilnChargeRowsKilnChargeNo.AsInteger ;
 sp_MovePackage.ExecProc ;
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message+' : sp_MovePackage.ExecProc') ;
   Raise ;
  End ;
 end;
end;

procedure TdmInventory.cds_KilnVagnAfterInsert(DataSet: TDataSet);
begin
 cds_KilnVagnVagnStatus.AsInteger         := 0 ;
 cds_KilnVagnDateCreated.AsSQLTimeStamp   := DateTimeToSqlTimeStamp(Now) ;
 cds_KilnVagnCreatedUser.AsInteger        := ThisUser.UserID ;
 cds_KilnVagnKilnChargeNo.AsInteger       := KilnChargeNo ;
end;

procedure TdmInventory.cds_KilnVagnBeforePost(DataSet: TDataSet);
begin
 cds_KilnVagnVagnNo.AsInteger :=  dmsConnector.NextSecondMaxNo('VagnNo', cds_KilnVagnKilnChargeNo.AsInteger) ;
end;

procedure TdmInventory.cds_PcsPerLenCalcFields(DataSet: TDataSet);
begin
 cds_PcsPerLenPercentOfTotal.AsFloat
  :=  cds_PcsPerLenAM3.AsFloat / cds_PcsPerLenTOTAL_AM3.AsFloat * 100 ;
end;

procedure TdmInventory.Get_OneUniquePkg (const PackageNo : Integer;const SupplierCode : String3;Var OwnerNo, PIP, LIP : Integer) ;
Begin
 sq_OneUniquePkg.ParamByName('PackageNo').AsInteger           := PackageNo ;
 sq_OneUniquePkg.ParamByName('SupplierCode').AsString         := SupplierCode ;
// sq_OneUniquePkg.ParamByName('OwnerNo').AsInteger             := OwnerNo ;
 sq_OneUniquePkg.ParamByName('UserCompanyLoggedIn').AsInteger := ThisUser.CompanyNo ;

 sq_OneUniquePkg.Open ;
 if not sq_OneUniquePkg.Eof then
 Begin
  OwnerNo := sq_OneUniquePkgOWNERNO.AsInteger ;
  PIP     := sq_OneUniquePkgPIP.AsInteger ;
  LIP     := sq_OneUniquePkgLOG_INVENTORY_NO.AsInteger ;
 End
 else
 Begin
  OwnerNo := -1 ;
  PIP     := -1 ;
  LIP     := -1 ;
 End ;
 sq_OneUniquePkg.Close ;
End ;

function TdmInventory.VardaLager(const SupplierNo, LIPNo, LengthGroupNo, ProductNo, NoOfPkgs : Integer;const AL, Produkt : String) : Boolean ;
Var fNoOfPkgs : Integer ;
Begin
 mtPkgNos.Active:= True ;
 Try
//Ta bort paket
 if NoOfPkgs < 0 then
 Begin
  fNoOfPkgs:= -1 * NoOfPkgs ;
  //Hämta in paketnr att ta bort
  GetPkgsNumbersFromSelectedInventory({Status}1, LIPNo, LengthGroupNo, ProductNo, fNoOfPkgs, AL) ;

 if mtPkgNos.RecordCount = 0 then
  Begin
   ShowMessage('Inga paket finns av '+PRODUKT+', längd '+AL) ;
   Result:= False ;
  End
   else
    Begin
     VardaLagerNegativt ;
     Result:= True ;
    End ;
 End//if NoOfPkgs < 0 then
 else
 //Öka lagret
 if NoOfPkgs > 0 then
 Begin
  fNoOfPkgs:= NoOfPkgs ;
  GetPkgsNumbersForSelectedInventoryAndPkgType(SupplierNo, LIPNo, LengthGroupNo, ProductNo, fNoOfPkgs, AL) ;

 if mtPkgNos.RecordCount = 0 then
  Begin
   ShowMessage('Inga "paketmallar" finns för '+PRODUKT+', längd '+AL) ;
   Result:= False ;
  End
   else
    Begin
     if mtPkgNosPackageTypeNo.AsInteger > -1 then
     Begin
      VardaLagerPositivt ;
      Result:= True ;
     End
     else
      Begin
       Result:= False ;
       ShowMessage('Inga "paketmallar" finns för '+PRODUKT+', längd '+AL) ;
      End ;
    End ;
 End

{ mtPkgNos.First ;
 While not mtPkgNos.Eof do
 Begin
  TransactionNo := dmsConnector.StartTransaction;
  try
  cds_KilnChargeRow.Insert ;
  cds_KilnChargeRowPackageNo.AsInteger              := mtPkgNosPackageNo.AsInteger ;
  cds_KilnChargeRowSupplierCode.AsString            := mtPkgNosSupplierCode.AsString ;
  cds_KilnChargeRow.Post ;

  if cds_KilnChargeRow.ChangeCount > 0 then
  cds_KilnChargeRow.ApplyUpdates(0) ;

  sq_MovePkgsToLip.ParamByName('LIPNo').AsInteger        := cds_KilnPropsKiln_LIPNo.AsInteger ;
  sq_MovePkgsToLip.ParamByName('PackageNo').AsInteger    := mtPkgNosPackageNo.AsInteger ;
  sq_MovePkgsToLip.ParamByName('SupplierCode').AsString  := mtPkgNosSupplierCode.AsString ;
  sq_MovePkgsToLip.ExecSQL(False) ;

  dmsConnector.Commit(TransactionNo);
  mtPkgNos.Next ;
  except
   dmsConnector.Rollback(TransactionNo);
   mtPkgNos.Next ;
  end;
 End ;//for
 }
 Finally
  mtPkgNos.Active:= False ;
 End ;
End ;

function TdmInventory.PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
begin
  sp_OnePackageNo.Close;
  sp_OnePackageNo.ParamByName('@PackageNo').AsInteger := PkgNo;
  sp_OnePackageNo.ParamByName('@SupplierCode').AsString := Trim(SupplierCode);
  sp_OnePackageNo.Open;
  sp_OnePackageNo.First;
  Result:= not sp_OnePackageNo.eof ;
  sp_OnePackageNo.Close;
end;

//Hämta paketnr som det skall skapas nya paket för
procedure TdmInventory.GetPkgsNumbersForSelectedInventoryAndPkgType(const SupplierNo, LIPNo, LengthGroupNo, ProductNo, NoOfPkgs : Integer;const AL : String) ;
Var PackageNo, x, y,
    PackageTypeNo : Integer ;
    SupplierCode  : String3 ;
Begin
 if AL = 'ÖVRIGA' then
  PackageTypeNo  := GetHighPcsWith_OUT_Length(LIPNo, ProductNo, AL)
   else
    PackageTypeNo  := GetHighPcsWithLength(LIPNo, ProductNo, AL) ;

 SupplierCode   := dmsContact.GetClientCode(SupplierNo) ;
 if Length(SupplierCode) = 0 then
 Begin
  ShowMessage('Verkkod saknas.');
  Exit ;
 End ;

 x:= 0 ;
 y:= 0 ;
// For x := 1 to NoOfPkgs do
 if PackageTypeNo > -1 then
 Repeat
// Begin
  PackageNo:= dmsConnector.GetCurrentPkgNo(SupplierNo, 1) ; //Hämta ett paket
  if PackageNumberExists(PackageNo, SupplierCode) = False then
  Begin
   mtPkgNos.Insert ;
   mtPkgNosSupplierCode.AsString    := SupplierCode ;
   mtPkgNosPackageNo.AsInteger      := PackageNo ;
   mtPkgNosPackageTypeNo.AsInteger  := PackageTypeNo ;
   mtPkgNosLIPNo.AsInteger          := LIPNo ;
   mtPkgNosOwnerNo.AsInteger        := SupplierNo ;
   mtPkgNos.Post ;
   x:= succ(x) ;
  End ;
// End ;//For x := 1 to NoOfPkgs do
  y:= succ(y) ;
 Until (x >= NoOfPkgs) or (y > 1000) ;

End ;

procedure TdmInventory.GetPkgsNumbersFromSelectedInventory(const Status, LIPNo, LengthGroupNo, ProductNo, NoOfPkgs : Integer;const AL : String) ;
Var x : Integer ;
Begin
 if AL = 'ÖVRIGA' then
 Begin
  x:= 1 ;
  sq_GetPkgNosNoLength.Close ;
  sq_GetPkgNosNoLength.ParamByName('ProductNo').AsInteger  := ProductNo ;
  sq_GetPkgNosNoLength.ParamByName('LIPNo').AsInteger      := LIPNo ;
  sq_GetPkgNosNoLength.ParamByName('GroupNo').AsInteger    := LengthGroupNo ;
  sq_GetPkgNosNoLength.ParamByName('Status').AsInteger     := Status ;
  sq_GetPkgNosNoLength.Open ;
  While (not sq_GetPkgNosNoLength.Eof) and (x <= NoOfPkgs) do
  Begin
   mtPkgNos.Insert ;
   mtPkgNosSupplierCode.AsString := sq_GetPkgNosNoLengthSupplierCode.AsString ;
   mtPkgNosPackageNo.AsInteger   := sq_GetPkgNosNoLengthPackageNo.AsInteger ;
   mtPkgNos.Post ;
   sq_GetPkgNosNoLength.Next ;
   x:= succ(x) ;
  End ;
  sq_GetPkgNosNoLength.Close ;
 End
 else
 Begin
  x:= 1 ;
  sq_GetPkgNos.Close ;
  sq_GetPkgNos.ParamByName('ProductNo').AsInteger  := ProductNo ;
  sq_GetPkgNos.ParamByName('LIPNo').AsInteger      := LIPNo ;
  sq_GetPkgNos.ParamByName('Status').AsInteger     := Status ;
  sq_GetPkgNos.ParamByName('AL').AsFloat           := StrToFloatDef(AL,-1) ;
  sq_GetPkgNos.Open ;
  While (not sq_GetPkgNos.Eof) and (x <= NoOfPkgs) do
  Begin
   mtPkgNos.Insert ;
   mtPkgNosSupplierCode.AsString := sq_GetPkgNosSupplierCode.AsString ;
   mtPkgNosPackageNo.AsInteger   := sq_GetPkgNosPackageNo.AsInteger ;
   mtPkgNos.Post ;
   sq_GetPkgNos.Next ;
   x:= succ(x) ;
  End ;
  sq_GetPkgNos.Close ;
 End ;
End ;

function TdmInventory.VardaLagerNegativt : Boolean ;
Var
  Save_Cursor   : TCursor;
  LIPNo         : Integer ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Result         := False ;
 Try
  dmsConnector.StartTransaction;
  try
   mtPkgNos.First ;
   While not mtPkgNos.Eof do
    Begin
      Try
       sp_VardaLager.Close ;
       sp_VardaLager.ParamByName('@PackageNo').AsInteger                := mtPkgNosPackageNo.AsInteger ;
       sp_VardaLager.ParamByName('@SupplierCode').AsString              := mtPkgNosSupplierCode.AsString ;
       sp_VardaLager.ParamByName('@RegistrationPointNo').AsInteger      := 2 ;
       sp_VardaLager.ParamByName('@UserID').AsInteger                   := ThisUser.UserID ;
       sp_VardaLager.ExecProc ;
       except
        On E: Exception do
        Begin
         dmsSystem.FDoLog(E.Message+' : sp_VardaLager.ExecProc') ;
         Raise ;
        End ;
       end;
     mtPkgNos.Next ;
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

Function TdmInventory.GetHighPcsWithLength(const LIPNo, ProductNo : Integer;const AL : String) : Integer ;
Begin
 sq_GetHighPcs.Close ;
 sq_GetHighPcs.ParamByName('LIPNo').AsInteger     := LIPNo ;
 sq_GetHighPcs.ParamByName('ProductNo').AsInteger := ProductNo ;
 sq_GetHighPcs.ParamByName('AL').AsString         := AL ;
 sq_GetHighPcs.Open ;
 if not sq_GetHighPcs.Eof then
  Result:= sq_GetHighPcsPackageTypeNo.AsInteger
   else
    Result:= -1 ;
 sq_GetHighPcs.Close ;
End ;

Function TdmInventory.GetHighPcsWith_OUT_Length(const LIPNo, ProductNo : Integer;const AL : String) : Integer ;
Begin
 sq_GetHighPcsNoLength.Close ;
 sq_GetHighPcsNoLength.ParamByName('LIPNo').AsInteger     := LIPNo ;
 sq_GetHighPcsNoLength.ParamByName('ProductNo').AsInteger := ProductNo ;
 sq_GetHighPcsNoLength.Open ;
 if not sq_GetHighPcsNoLength.Eof then
  Result:= sq_GetHighPcsNoLengthPackageTypeNo.AsInteger
   else
    Result:= -1 ;
 sq_GetHighPcsNoLength.Close ;
End ;

function TdmInventory.VardaLagerPositivt : Boolean ;
Var
  Save_Cursor   : TCursor;
  LIPNo         : Integer ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Result         := False ;
 Try
  dmsConnector.StartTransaction;
  try
   mtPkgNos.First ;
   While not mtPkgNos.Eof do
    Begin
     Try
     sp_NewPackageNo.ParamByName('@PackageNo'              ).AsInteger  := mtPkgNosPackageNo.AsInteger ;
     sp_NewPackageNo.ParamByName('@PackageTypeNo'          ).AsInteger  := mtPkgNosPackageTypeNo.AsInteger ;
     sp_NewPackageNo.ParamByName('@SupplierCode'           ).AsString   := mtPkgNosSUPPLIERCODE.AsString;
     sp_NewPackageNo.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtPkgNosLIPNo.AsInteger ;
     sp_NewPackageNo.ParamByName('@SupplierNo'             ).AsInteger  := mtPkgNosOwnerNo.AsInteger ;
     sp_NewPackageNo.ParamByName('@RegistrationPointNo'    ).AsInteger  := 2 ;
     sp_NewPackageNo.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
     sp_NewPackageNo.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message+' : sp_NewPackageNo.ExecProc') ;
       Raise ;
      End ;
     end;

     mtPkgNos.Next ;
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

procedure TdmInventory.Open_sq_OtherLengths(const OwnerNo, ProductNo, LIPNo, LengthGroupNo : Integer) ;
Begin
 cds_OtherLengths.Active  := False ;
 cds_OtherLengths.ParamByName('OwnerNo').AsInteger       := OwnerNo ;
 cds_OtherLengths.ParamByName('ProductNo').AsInteger     := ProductNo ;
 cds_OtherLengths.ParamByName('LIPNo').AsInteger         := LIPNo ;
 cds_OtherLengths.ParamByName('LengthGroupNo').AsInteger := LengthGroupNo ;
 cds_OtherLengths.Active  := True ;
End ;

procedure TdmInventory.Close_sq_OtherLengths ;
Begin
 cds_OtherLengths.Active  := False ;
End ;

procedure TdmInventory.DataModuleCreate(Sender: TObject);
begin
// cds_Language.Active:= True ;
 mtLengthFormat.Active:= True ;
 mtLengthFormat.AppendRecord([1,'AKT.MM']);
// mtLengthFormat.AppendRecord([2,'NOM.MM']);
 mtLengthFormat.AppendRecord([3,'FEET']);
 mtLengthFormat.AppendRecord([4,'AKT.TUM']);
// mtLengthFormat.AppendRecord([5,'EGEN']);

 mtSizeFormat.Active:= True ;
 mtSizeFormat.AppendRecord([1,'AKT.MM']);
// mtSizeFormat.AppendRecord([2,'NOM.MM']);
 mtSizeFormat.AppendRecord([3,'TUM']);
// mtSizeFormat.AppendRecord([4,'EGEN']);

 mtVolumeFormat.Active:= True ;
 mtVolumeFormat.AppendRecord([1,'AM3']);
// mtVolumeFormat.AppendRecord([2,'NM3']);
 mtVolumeFormat.AppendRecord([3,'MFBM']);
end;

Function TdmInventory.Selected_sq_OtherLengths : String ;
Begin
 if (cds_OtherLengths.Active) and (cds_OtherLengths.RecordCount > 0) then
 Begin
  if cds_OtherLengthsAntalLängder.AsInteger = 1 then
   Result:= cds_OtherLengthsALMM.AsString
    else
     Result:= 'Not valid' ;
 End
  else
   Result:= 'Not valid' ;
 Close_sq_OtherLengths ;   
End ;


{  function SavePackage : Integer ;
  begin
    sp_NewPackageNo.ParamByName('PackageNo'              ).AsInteger  := mtPackages.Fields[cPACKAGENO].AsInteger ;
    sp_NewPackageNo.ParamByName('PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_NewPackageNo.ParamByName('SupplierCode'           ).AsString   := Trim(mtPackages.Fields[cSUPPLIERCODE].AsString);
    sp_NewPackageNo.ParamByName('LogicalInventoryPointNo').AsInteger  := mtUserProp.FieldByName('LIPNo').AsInteger ;
    sp_NewPackageNo.ParamByName('SupplierNo'             ).AsInteger  := mtUserProp.FieldByName('OwnerNo').AsInteger ;
    sp_NewPackageNo.ParamByName('RegistrationPointNo'    ).AsInteger  := mtUserProp.FieldByName('RegPointNo').AsInteger ;
    sp_NewPackageNo.ParamByName('UserID'                 ).AsInteger  := ThisUser.UserID;

    Result:= sp_NewPackageNo.ExecProc;
  end; }
procedure TdmInventory.cds_PropsAfterInsert(DataSet: TDataSet);
begin
 cds_PropsName.AsString           := 'InventoryReport' ;
 cds_PropsUserID.AsInteger        := ThisUser.UserID ;
 cds_PropsLOObjectType.AsInteger  := 0 ;
end;

procedure TdmInventory.Generate_PkgType_InvoiceByCSD(const LONo : Integer) ;
Begin
 Try
 sq_PkgType_InvoiceByCSD.ParamByName('ShippingPlanNo').AsInteger  := LONo ;
 sq_PkgType_InvoiceByCSD.ExecSQL ;
 Except

 End ;
End ;

Procedure TdmInventory.UpdatePackagePrice(const PackageNo : Integer;const Prefix : String;const NewPrice : Double) ;
Begin
 Try
 sq_UpdatePrice.ParamByName('Price').AsFloat                      := NewPrice ;
 sq_UpdatePrice.ParamByName('Update_Price_Date').AsDateTime       := Now ;
 sq_UpdatePrice.ParamByName('PackageNo').AsInteger                := PackageNo ;
 sq_UpdatePrice.ParamByName('SupplierCode').AsString              := Prefix ;
 sq_UpdatePrice.ExecSQL ;
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message+' :sq_UpdatePrice.ExecSQL') ;
   Raise ;
  End ;
 end;

End ;

Procedure TdmInventory.UpdateLIPSUMPrice(const LIPNo, PackageNo, SETNo : Integer;const Prefix : String;const NewPrice : Double) ;
Begin
 Try
 sp_Manuell_LipSum.ParamByName('@LIPNo').AsInteger                   := LIPNo ;
 sp_Manuell_LipSum.ParamByName('@NewPrice').AsFloat                  := NewPrice ;
 sp_Manuell_LipSum.ParamByName('@PackageNo').AsInteger               := PackageNo ;
 sp_Manuell_LipSum.ParamByName('@IC_SETNo').AsInteger                := SETNo ;
 sp_Manuell_LipSum.ParamByName('@SupplierCode').AsString             := Prefix ;
 sp_Manuell_LipSum.ExecProc ;
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message+' : sp_Manuell_LipSum.ExecSQL') ;
   Raise ;
  End ;
 end;

End ;

function TdmInventory.GetAntalVagnar(const KilnChargeNo : Integer) : Integer ;
Begin
 Try
 cds_GetAntalVagnar.Active  := False ;
 cds_GetAntalVagnar.ParamByName('KilnNo').AsInteger := KilnChargeNo ;
 cds_GetAntalVagnar.Active  := True ;
 if not cds_GetAntalVagnar.Eof then
  Result  := cds_GetAntalVagnarNoOfVagnar.AsInteger
   else
    Result  := -1 ;
 Finally
  cds_GetAntalVagnar.Active := False ;
 End ;
End;

function TdmInventory.Get_AntalVagnarPerStatus(const KilnChargeNo, VagnStatus : Integer) : Integer ;
Begin
 Try
 cds_AntalVagnarPerStatus.Active  := False ;
 cds_AntalVagnarPerStatus.ParamByName('KilnChargeNo').AsInteger     := KilnChargeNo ;
 cds_AntalVagnarPerStatus.ParamByName('VagnStatus').AsInteger       := VagnStatus ;
 cds_AntalVagnarPerStatus.Active  := True ;
 if not cds_AntalVagnarPerStatus.Eof then
  Result  := cds_AntalVagnarPerStatusAntalVagnar.AsInteger
   else
    Result  := 0 ;
 Finally
  cds_AntalVagnarPerStatus.Active := False ;
 End ;
End;


function TdmInventory.GetSistaVagnNo(const KilnNo : Integer) : Integer ;
Begin
 Try
 cds_GetSistaVagnNo.Active  := False ;
 cds_GetSistaVagnNo.ParamByName('KilnNo').AsInteger := KilnNo ;
 cds_GetSistaVagnNo.Active  := True ;
 if not cds_GetSistaVagnNo.Eof then
  Result  := cds_GetSistaVagnNoSistaVagnNo.AsInteger
   else
    Result  := -1 ;
 Finally
  cds_GetSistaVagnNo.Active := False ;
 End ;
End;

procedure TdmInventory.MakeVagnSQL(const KilnChargeNo : Integer) ;
Var SQL : TStrings ;
    AntalStatus_0_Vagnar,
    AntalStatus_2_Vagnar,
    AntalStatus_1_Vagnar,
    TotaltAntalVagnar : Integer ;
Begin
   SQL  := TStringList.Create ;
   AntalStatus_0_Vagnar := Get_AntalVagnarPerStatus (KilnChargeNo, 0) ;

   AntalStatus_2_Vagnar := Get_AntalVagnarPerStatus (KilnchargeNo, 2) ;

   if AntalStatus_2_Vagnar > 2 then
    AntalStatus_2_Vagnar  := 2 ;

   AntalStatus_1_Vagnar   := Get_AntalVagnarPerStatus (KilnChargeNo, 1) ;// GetAntalVagnar(KilnNo) ;

   TotaltAntalVagnar      := AntalStatus_0_Vagnar + AntalStatus_2_Vagnar + AntalStatus_1_Vagnar ;

   With cds_Vagnar do
   Begin
     SQL.Clear ;
     SQL.Add('Select distinct top ' + inttostr(TotaltAntalVagnar) + ' kv.VagnNo') ;
     SQL.Add('FROM dbo.KilnChargeHdr KCH') ;
     SQL.Add('inner join dbo.KilnVagn kv on kv.KilnChargeNo = kch.KilnChargeNo') ;
     SQL.Add('WHERE') ;
     SQL.Add('KCH.KilnChargeNo = :KilnChargeNo') ;
     SQL.Add('order by kv.VagnNo desc') ;
   End ;
End;

procedure TdmInventory.mtSelectedPkgNoBeforePost(DataSet: TDataSet);
begin
 if mtSelectedPkgNoMARKERAD.AsInteger = 1 then
  MarkedPkgs:= Succ(MarkedPkgs)
   else
    if MarkedPkgs > 0 then
     MarkedPkgs:= Pred(MarkedPkgs) ;
end;

function TdmInventory.PkgExistInInventory(const PackageNo, PIPNo : Integer;const SupplierCode : String3) : Boolean ;
Begin
 sq_PkgExistInInventory.ParamByName('PackageNo').AsInteger    := PackageNo ;
 sq_PkgExistInInventory.ParamByName('SupplierCode').AsString  := SupplierCode ;
 sq_PkgExistInInventory.ParamByName('PIPNo').AsInteger        := PIPNo ;
 sq_PkgExistInInventory.Active  := True ;
 Try
 if not sq_PkgExistInInventory.Eof then
 Begin
  Result:= True ;
 End
  else
   Result:= False ;
 Finally
  sq_PkgExistInInventory.Active  := False ;
 End ;
End ;

procedure TdmInventory.ControlVagn(const VagnNo : Integer) ;
Var x : Integer ;
Begin
 x := 0 ;
 cds_KilnChargeRows.First ;
 while not cds_KilnChargeRows.Eof do
 Begin
  x := succ(x) ;
  if cds_KilnChargeRowsRowNo.AsInteger <> x then
  Begin
   cds_KilnChargeRows.Edit ;
   cds_KilnChargeRowsRowNo.AsInteger  := x ;
   cds_KilnChargeRows.Post ;
  End ;
  cds_KilnChargeRows.Next ;
 End;

 if x = 0 then
  cds_KilnVagn.Delete ;

End;

procedure TdmInventory.FlyttaVagn(const KilnChargeNo, VagnNo, MoveToLIPNo, NewVagnStatus : Integer) ;
Var
  Save_Cursor   : TCursor;
  LIPNo         : Integer ;
Begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
  dmsConnector.StartTransaction;
  try
     sp_MoveVagn.ParamByName('@KilnChargeNo').AsInteger  := KilnChargeNo ;
     sp_MoveVagn.ParamByName('@VagnNo').AsInteger        := VagnNo ;
     sp_MoveVagn.ParamByName('@MoveToLIPNo').AsInteger   := MoveToLIPNo ;
     sp_MoveVagn.ParamByName('@NewVagnStatus').AsInteger := NewVagnStatus ;
     sp_MoveVagn.ExecProc ;
    dmsConnector.Commit ;
  except
   On E: EDatabaseError do
   Begin
    dmsConnector.Rollback ;
   End;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End;

function TdmInventory.GetFirstVagnNoPerVagnStatus(const KilnChargeNo, VagnStatus  : Integer) : Integer ;
Begin
 cds_GetFirstVagnNoPerVagnStatus.Active := False ;
 cds_GetFirstVagnNoPerVagnStatus.ParamByName('KilnChargeNo').AsInteger  := KilnChargeNo ;
 cds_GetFirstVagnNoPerVagnStatus.ParamByName('VagnStatus').AsInteger    := VagnStatus ;
 cds_GetFirstVagnNoPerVagnStatus.Active := True ;
 Try
 if not cds_GetFirstVagnNoPerVagnStatus.Eof then
  Result  := cds_GetFirstVagnNoPerVagnStatusVagnNo.AsInteger
   else
    Result  := -1 ;
 Finally
   cds_GetFirstVagnNoPerVagnStatus.Active := False ;
 End;
End;

function TdmInventory.GetLastVagnNoPerVagnStatus(const KilnChargeNo, VagnStatus  : Integer) : Integer ;
Begin
 cds_GetLastVagnNoPerVagnStatus.Active := False ;
 cds_GetLastVagnNoPerVagnStatus.ParamByName('KilnChargeNo').AsInteger  := KilnChargeNo ;
 cds_GetLastVagnNoPerVagnStatus.ParamByName('VagnStatus').AsInteger    := VagnStatus ;
 cds_GetLastVagnNoPerVagnStatus.Active := True ;
 Try
 if not cds_GetLastVagnNoPerVagnStatus.Eof then
  Result  := cds_GetLastVagnNoPerVagnStatusVagnNo.AsInteger
   else
    Result  := -1 ;
 Finally
   cds_GetLastVagnNoPerVagnStatus.Active := False ;
 End;
End;

function TdmInventory.IsNoOfVagnarInKilnBiggerThenMaxVagnar(const pKilnChargeNo  : Integer) : Boolean ;
Var AntalVagnarITork, VagnStatus, MaxVagnarITork : Integer ;
Begin
 VagnStatus       := 1 ;
 AntalVagnarITork := Get_AntalVagnarPerStatus(KilnChargeNo, VagnStatus) ;

 KilnChargeNo     := pKilnChargeNo ;
 Open_cds_KilnChargeHdr ;
 MaxVagnarITork   := cds_KilnChargeHdrNoOfVagnar.AsInteger ;

 if AntalVagnarITork > MaxVagnarITork then
  Result  := True
   else
    Result  := False ;
End;

function TdmInventory.IsFreeSpaceInKiln(const pKilnChargeNo  : Integer) : Boolean ;
Var AntalVagnarITork, VagnStatus, MaxVagnarITork : Integer ;
Begin
 VagnStatus       := 1 ;
 AntalVagnarITork := Get_AntalVagnarPerStatus(KilnChargeNo, VagnStatus) ;

 KilnChargeNo     := pKilnChargeNo ;
 Open_cds_KilnChargeHdr ;
 MaxVagnarITork   := cds_KilnChargeHdrNoOfVagnar.AsInteger ;

 if AntalVagnarITork < MaxVagnarITork then
  Result  := True
   else
    Result  := False ;
End;

function TdmInventory.IsVagnStatus0(const VagnNo, KilnChargeNo : Integer) : Boolean ;
Begin
 cds_VagnStatus.Active := False ;
 cds_VagnStatus.ParamByName('VagnNo').AsInteger         := VagnNo ;
 cds_VagnStatus.ParamByName('KilnChargeNo').AsInteger   := KilnChargeNo ;
 cds_VagnStatus.Active := True ;
 Try
 if not cds_VagnStatus.Eof then
 Begin
  if cds_VagnStatusVagnStatus.AsInteger = 0 then
   Result  := True
    else
     Result := False ;
 End
   else
    Result := False ;
 Finally
   cds_VagnStatus.Active := False ;
 End;
End;

function TdmInventory.VagnarBeforeKiln_Larger_Then_MaxVagnarBefore(const KilnChargeNo : Integer) : Boolean ;
Var MaxVagnarBeforeKiln, NoOfVagnarBefore, VagnStatus : Integer ;
Begin
 VagnStatus       := 0 ; //0 = Before kiln
 NoOfVagnarBefore := Get_AntalVagnarPerStatus(KilnChargeNo, VagnStatus) ;
 Open_cds_KilnChargeHdr ;
 MaxVagnarBeforeKiln   := cds_KilnChargeHdrNoOfVagnarBefore.AsInteger ;
 if NoOfVagnarBefore > MaxVagnarBeforeKiln then
  Result  := True
   else
    Result  := False ;
End;

function TdmInventory.GetProductNoByPackageNoproductno(const PackageNo : Integer;const Prefix : String) : Integer ;
Begin
 sc_GetProductNoByPackageNo.Active  := False ;
 sc_GetProductNoByPackageNo.ParamByName('PackageNo').AsInteger    := PackageNo ;
 sc_GetProductNoByPackageNo.ParamByName('SupplierCode').AsString  := Prefix ;
 sc_GetProductNoByPackageNo.Active  := True ;
 Try
 if not sc_GetProductNoByPackageNo.Eof then
  Result  := sc_GetProductNoByPackageNoproductno.AsInteger
   else
    Result  := -1 ;
 Finally
  sc_GetProductNoByPackageNo.Active  := False ;
 End ;
end  ;

function TdmInventory.PkgExistInInventoryKILN(const PackageNo, LIPNo : Integer;const Prefix : String3) : Boolean ;
Begin
 sp_PkgExistInLIP.ParamByName('@PackageNo').AsInteger     := PackageNo ;
 sp_PkgExistInLIP.ParamByName('@Prefix').AsString         := Prefix ;
 sp_PkgExistInLIP.ParamByName('@LIPNo').AsInteger         := LIPNo ;
 sp_PkgExistInLIP.Active  := True ;
 Try
 if not sp_PkgExistInLIP.Eof then
 Begin
  Result:= True ;
 End
  else
   Result:= False ;
 Finally
  sp_PkgExistInLIP.Active  := False ;
 End ;
End ;

end.
