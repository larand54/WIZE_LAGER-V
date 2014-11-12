unit dmcProduct;

interface

uses
  SysUtils, Classes, DB,
  Forms,  Controls,  kbmMemTable, SqlTimSt, Dialogs,
  uADStanIntf, uADStanOption, uADStanParam, uADStanError, uADDatSManager,
  uADPhysIntf, uADDAptIntf, uADStanAsync, uADDAptManager, uADCompDataSet,
  uADCompClient ;

type
  TdmProduct = class(TDataModule)
    ds_ProdList: TDataSource;
    ds_PrdGrp: TDataSource;
    ds_Species: TDataSource;
    ds_ProductLength: TDataSource;
    ds_ProductGroupLengths: TDataSource;
    ds_grade: TDataSource;
    ds_Surfacing: TDataSource;
    ds_Products: TDataSource;
    ds_ProdCatg: TDataSource;
    ds_IntPriceGrp: TDataSource;
    ds_StatCode: TDataSource;
    ds_PrdGrpList: TDataSource;
    ds_ProdLengthGrp: TDataSource;
    ds_ProdLengthRow: TDataSource;
    ds_PkgCode: TDataSource;
    ds_Prod_Lengths: TDataSource;
    ds_PrdGrpLO: TDataSource;
    ds_Lengths: TDataSource;
    ds_LinkProd: TDataSource;
    ds_ProdLo: TDataSource;
    ds_intPrice: TDataSource;
    ds_CliProdList: TDataSource;
    ds_PL: TDataSource;
    ds_gradeII: TDataSource;
    ds_SurfacingII: TDataSource;
    ds_SpeciesII: TDataSource;
    ds_CSDL: TDataSource;
    ds_CSDLRow: TDataSource;
    ds_ProdListCust: TDataSource;
    ds_LengthRuleGrp: TDataSource;
    ds_LengthRuleRow: TDataSource;
    dsClient: TDataSource;
    cds_ProdList: TADQuery;
    cds_ProdListProductNo: TIntegerField;
    cds_ProdListProductGroupNo: TIntegerField;
    cds_ProdListGradeName: TStringField;
    cds_ProdListSpeciesName: TStringField;
    cds_ProdListSurfacingName: TStringField;
    cds_ProdListProductCategoryName: TStringField;
    cds_ProdListActualThicknessMM: TFloatField;
    cds_ProdListActualWidthMM: TFloatField;
    cds_ProdListNominalThicknessMM: TFloatField;
    cds_ProdListNominalWidthMM: TFloatField;
    cds_ProdListProductDisplayName: TStringField;
    cds_ProdListGradeNo: TIntegerField;
    cds_ProdListSpeciesNo: TIntegerField;
    cds_ProdListProductCategoryNo: TIntegerField;
    cds_ProdListSurfacingNo: TIntegerField;
    cds_ProdListNominalThicknessINCH: TStringField;
    cds_ProdListNominalWidthINCH: TStringField;
    cds_PrdGrp: TADQuery;
    cds_PrdGrpProductGroupNo: TIntegerField;
    cds_PrdGrpActualThicknessMM: TFloatField;
    cds_PrdGrpActualWidthMM: TFloatField;
    cds_PrdGrpNominalThicknessMM: TFloatField;
    cds_PrdGrpNominalWidthMM: TFloatField;
    cds_PrdGrpNominalThicknessINCH: TStringField;
    cds_PrdGrpNominalWidthINCH: TStringField;
    cds_PrdGrpSpeciesNo: TIntegerField;
    cds_PrdGrpProductCategoryNo: TIntegerField;
    cds_PrdGrpSurfacingNo: TIntegerField;
    cds_PrdGrpProductDisplayFormatNo: TIntegerField;
    cds_PrdGrpLengthDisplayFormatNo: TIntegerField;
    cds_PrdGrpProfile: TStringField;
    cds_PrdGrpSequenceNo: TIntegerField;
    cds_PrdGrpCreatedUser: TSmallintField;
    cds_PrdGrpModifiedUser: TSmallintField;
    cds_PrdGrpDateCreated: TSQLTimeStampField;
    cds_PrdGrpStatCodeNo: TIntegerField;
    cds_PrdGrpLanguageCode: TIntegerField;
    cds_PrdGrpAct: TIntegerField;
    cds_PrdGrpTS: TStringField;
    cds_PrdGrpUT: TStringField;
    cds_Products: TADQuery;
    cds_ProductsProductNo: TIntegerField;
    cds_ProductsProductGroupNo: TIntegerField;
    cds_ProductsGradeNo: TIntegerField;
    cds_ProductsProductDisplayName: TStringField;
    cds_ProductsMC: TStringField;
    cds_ProductsQCSpecificationNo: TIntegerField;
    cds_ProductsSequenceNo: TIntegerField;
    cds_ProductsInteralPriceGroupNo: TIntegerField;
    cds_ProductsCreatedUser: TSmallintField;
    cds_ProductsModifiedUser: TSmallintField;
    cds_ProductsDateCreated: TSQLTimeStampField;
    cds_ProductsAct: TIntegerField;
    cds_ProductsProductCode: TStringField;
    cds_ProductsVP_ProductCode: TStringField;
    cds_ProductsVarugruppNo: TIntegerField;
    cds_ProductsKVALITET: TStringField;
    cds_ProductGroupLengths: TADQuery;
    cds_ProductGroupLengthsProductGroupNo: TIntegerField;
    cds_ProductGroupLengthsProductLengthNo: TIntegerField;
    cds_ProductGroupLengthsCreatedUser: TSmallintField;
    cds_ProductGroupLengthsModifiedUser: TSmallintField;
    cds_ProductGroupLengthsDateCreated: TSQLTimeStampField;
    cds_ProductGroupLengthsALMM: TFloatField;
    cds_ProductGroupLengthsNLMM: TFloatField;
    cds_ProductGroupLengthsNLF: TFloatField;
    cds_ProductGroupLengthsAI: TStringField;
    cds_ProductGroupLengthsPET: TIntegerField;
    cds_ProductGroupLengthsFJ: TIntegerField;
    cds_PrdGrpList: TADQuery;
    cds_PrdGrpListact: TIntegerField;
    cds_PrdGrpListProductNo: TIntegerField;
    cds_PrdGrpListProductGroupNo: TIntegerField;
    cds_PrdGrpListTS: TStringField;
    cds_PrdGrpListUT: TStringField;
    cds_PrdGrpListPC: TStringField;
    cds_PrdGrpListAT: TFloatField;
    cds_PrdGrpListAB: TFloatField;
    cds_PrdGrpListNT: TFloatField;
    cds_PrdGrpListNB: TFloatField;
    cds_PrdGrpListProductDisplayName: TStringField;
    cds_PrdGrpListSpeciesNo: TIntegerField;
    cds_PrdGrpListProductCategoryNo: TIntegerField;
    cds_PrdGrpListSurfacingNo: TIntegerField;
    cds_PrdGrpListNTI: TStringField;
    cds_PrdGrpListNBI: TStringField;
    cds_CliProdList: TADQuery;
    cds_CliProdListPRODUKT: TStringField;
    cds_CliProdListLÄNGD: TStringField;
    cds_CliProdListPKTKOD: TStringField;
    cds_CliProdListINTPRODUKT: TStringField;
    cds_CliProdListClientNo: TIntegerField;
    cds_CliProdListProductNo: TIntegerField;
    cds_CliProdListProductGroupNo: TIntegerField;
    cds_CliProdListProductLengthNo: TIntegerField;
    cds_CliProdListCustomThickness: TFloatField;
    cds_CliProdListCustomWidth: TFloatField;
    cds_CliProdListCustomLength: TFloatField;
    cds_CliProdListPcsPerPkg: TIntegerField;
    cds_CliProdListPriceUnitNo: TIntegerField;
    cds_CliProdListVolumeUnitNo: TIntegerField;
    cds_CliProdListPackageTypeNo: TIntegerField;
    cds_CliProdListProdInstruNo: TIntegerField;
    cds_CliProdListLengthTyp: TStringField;
    cds_ProdLengthRow: TADQuery;
    cds_ProdLengthRowGroupNo: TIntegerField;
    cds_ProdLengthRowProductLengthNo: TIntegerField;
    cds_ProdLengthRowCreatedUser: TSmallintField;
    cds_ProdLengthRowModifiedUser: TSmallintField;
    cds_ProdLengthRowDateCreated: TSQLTimeStampField;
    cds_ProdLengthRowProductLengthNo_1: TIntegerField;
    cds_ProdLengthRowActualLengthMM: TFloatField;
    cds_ProdLengthRowNominalLengthMM: TFloatField;
    cds_ProdLengthRowNominalLengthFEET: TFloatField;
    cds_ProdLengthRowActualLengthINCH: TStringField;
    cds_ProdLengthRowPET: TIntegerField;
    cds_ProdLengthRowFingerJoint: TIntegerField;
    cds_ProdLengthRowCreatedUser_1: TIntegerField;
    cds_ProdLengthRowModifiedUser_1: TIntegerField;
    cds_ProdLengthRowDateCreated_1: TSQLTimeStampField;
    cds_ProdLengthRowSequenceNo: TIntegerField;
    cds_ProdLengthRowProductLengthGroupNo: TIntegerField;
    cds_ProdLengthRowAct: TIntegerField;
    cds_PrdGrpLO: TADQuery;
    cds_PrdGrpLOProductGroupNo: TIntegerField;
    cds_PrdGrpLOActualThicknessMM: TFloatField;
    cds_PrdGrpLOActualWidthMM: TFloatField;
    cds_PrdGrpLONominalThicknessMM: TFloatField;
    cds_PrdGrpLONominalWidthMM: TFloatField;
    cds_PrdGrpLONominalThicknessINCH: TStringField;
    cds_PrdGrpLONominalWidthINCH: TStringField;
    cds_Prod_Lengths: TADQuery;
    cds_Prod_LengthsGroupName: TStringField;
    cds_Prod_LengthsProductLengthNo: TIntegerField;
    cds_Prod_LengthsActualLengthMM: TFloatField;
    cds_Prod_LengthsNominalLengthMM: TFloatField;
    cds_Prod_LengthsNominalLengthFEET: TFloatField;
    cds_Prod_LengthsActualLengthINCH: TStringField;
    cds_Prod_LengthsPET: TIntegerField;
    cds_Prod_LengthsFingerJoint: TIntegerField;
    cds_Prod_LengthsCreatedUser: TIntegerField;
    cds_Prod_LengthsModifiedUser: TIntegerField;
    cds_Prod_LengthsDateCreated: TSQLTimeStampField;
    cds_Prod_LengthsSequenceNo: TIntegerField;
    cds_Prod_LengthsProductLengthGroupNo: TIntegerField;
    cds_Prod_LengthsAct: TIntegerField;
    cds_ProdLengthGrp: TADQuery;
    cds_ProdLengthGrpGroupNo: TIntegerField;
    cds_ProdLengthGrpGroupName: TStringField;
    cds_ProdLengthGrpSequenceNo: TIntegerField;
    cds_ProdLengthGrpDateCreated: TSQLTimeStampField;
    cds_ProdLengthGrpCreatedUser: TIntegerField;
    cds_ProdLengthGrpModifiedUser: TIntegerField;
    cds_ProdLengthGrpChanged: TIntegerField;
    cds_CSDLRow: TADQuery;
    cds_CSDLRowCustomSalesDimListNo: TIntegerField;
    cds_CSDLRowProductNo: TIntegerField;
    cds_CSDLRowNT: TFloatField;
    cds_CSDLRowNW: TFloatField;
    cds_CSDLRowDateCreated: TSQLTimeStampField;
    cds_CSDLRowDateModified: TSQLTimeStampField;
    cds_CSDLRowCreatedUser: TIntegerField;
    cds_CSDLRowModifiedUser: TIntegerField;
    cds_CSDLRowNL: TFloatField;
    cdsClient: TADQuery;
    cdsClientClientNo: TIntegerField;
    cdsClientClientName: TStringField;
    cdsClientSearchName: TStringField;
    cds_LengthRuleGrp: TADQuery;
    cds_LengthRuleGrpLengthRuleNo: TIntegerField;
    cds_LengthRuleGrpSurfacingNo: TIntegerField;
    cds_LengthRuleGrpMinNTmm: TFloatField;
    cds_LengthRuleGrpMaxNTmm: TFloatField;
    cds_LengthRuleGrpCreatedUser: TIntegerField;
    cds_LengthRuleGrpModifiedUser: TIntegerField;
    cds_LengthRuleGrpDateCreated: TSQLTimeStampField;
    cds_LengthRuleGrpDateModified: TSQLTimeStampField;
    cds_LengthRuleGrpClientNo: TIntegerField;
    cds_LengthRuleGrpSetNo: TIntegerField;
    cds_LengthRuleGrpStringField: TStringField;
    cds_Species: TADQuery;
    cds_SpeciesSpeciesNo: TIntegerField;
    cds_SpeciesSpeciesName: TStringField;
    cds_SpeciesLanguageCode: TIntegerField;
    cds_SpeciesSequenceNo: TIntegerField;
    cds_SpeciesCreatedUser: TSmallintField;
    cds_SpeciesModifiedUser: TSmallintField;
    cds_SpeciesDateCreated: TSQLTimeStampField;
    cds_SpeciesAct: TIntegerField;
    cds_SpeciesSpeciesCode: TStringField;
    cds_SpeciesSpeciesShortName: TStringField;
    cds_SpeciesDKCode: TStringField;
    cds_SpeciesSpeciesCodeName: TStringField;
    cds_SpeciesStringField: TStringField;
    cds_grade: TADQuery;
    cds_gradeGradeNo: TIntegerField;
    cds_gradeGradeName: TStringField;
    cds_gradeLanguageCode: TIntegerField;
    cds_gradeSequenceNo: TIntegerField;
    cds_gradeCreatedUser: TSmallintField;
    cds_gradeModifiedUser: TSmallintField;
    cds_gradeDateCreated: TSQLTimeStampField;
    cds_gradeMainGradeNo: TIntegerField;
    cds_gradeAct: TIntegerField;
    cds_gradeGradeCode: TStringField;
    cds_gradeDKCode: TStringField;
    cds_gradeGradeCodeName: TStringField;
    cds_gradeStringField: TStringField;
    cds_Surfacing: TADQuery;
    cds_SurfacingSurfacingNo: TIntegerField;
    cds_SurfacingSurfacingName: TStringField;
    cds_SurfacingLanguageCode: TIntegerField;
    cds_SurfacingSequenceNo: TIntegerField;
    cds_SurfacingCreatedUser: TSmallintField;
    cds_SurfacingModifiedUser: TSmallintField;
    cds_SurfacingDateCreated: TSQLTimeStampField;
    cds_SurfacingAct: TIntegerField;
    cds_SurfacingSurfacingCode: TStringField;
    cds_SurfacingDKCode: TStringField;
    cds_SurfacingKortNamn: TStringField;
    cds_SurfacingSurfacingCodeName: TStringField;
    cds_SurfacingStringField: TStringField;
    cds_ProdCatg: TADQuery;
    cds_ProdCatgProductCategoryNo: TIntegerField;
    cds_ProdCatgProductCategoryName: TStringField;
    cds_ProdCatgProductCategoryExternalCode: TIntegerField;
    cds_ProdCatgSequenceNo: TIntegerField;
    cds_ProdCatgCreatedUser: TIntegerField;
    cds_ProdCatgModifiedUser: TIntegerField;
    cds_ProdCatgDateCreated: TSQLTimeStampField;
    cds_ProdCatgAct: TIntegerField;
    cds_ProdCatgImpCode: TStringField;
    cds_ProdCatgImpregInProdName: TIntegerField;
    cds_ProdCatgLanguageCode: TIntegerField;
    cds_ProdCatgDKCode: TStringField;
    cds_ProdCatgImpCodeName: TStringField;
    cds_IntPriceGrp: TADQuery;
    cds_IntPriceGrpInteralPriceGroupNo: TIntegerField;
    cds_IntPriceGrpPriceGroupName: TStringField;
    cds_IntPriceGrpSequenceNo: TIntegerField;
    cds_IntPriceGrpCreatedUser: TSmallintField;
    cds_IntPriceGrpModifiedUser: TSmallintField;
    cds_IntPriceGrpDateCreated: TSQLTimeStampField;
    cds_ProdLo: TADQuery;
    cds_ProdLoProductGroupNo: TIntegerField;
    cds_ProdLoProductNo: TIntegerField;
    cds_ProdLoProductDisplayName: TStringField;
    cds_PL: TADQuery;
    cds_PLGroupName: TStringField;
    cds_PLLNO: TIntegerField;
    cds_PLAMM: TFloatField;
    cds_PLNMM: TFloatField;
    cds_PLFOT: TFloatField;
    cds_PLTUM: TStringField;
    cds_PLPET: TIntegerField;
    cds_PLFJ: TIntegerField;
    cds_PLGL: TIntegerField;
    cds_CSDL: TADQuery;
    cds_CSDLCustomSalesDimListNo: TIntegerField;
    cds_CSDLCustomSalesDimListName: TStringField;
    cds_CSDLDateCreated: TSQLTimeStampField;
    cds_CSDLCreatedUser: TIntegerField;
    cds_ProductLength: TADQuery;
    cds_ProductLengthProductLengthNo: TIntegerField;
    cds_ProductLengthActualLengthMM: TFloatField;
    cds_ProductLengthNominalLengthMM: TFloatField;
    cds_ProductLengthNominalLengthFEET: TFloatField;
    cds_ProductLengthActualLengthINCH: TStringField;
    cds_ProductLengthPET: TIntegerField;
    cds_ProductLengthFingerJoint: TIntegerField;
    cds_ProductLengthCreatedUser: TIntegerField;
    cds_ProductLengthModifiedUser: TIntegerField;
    cds_ProductLengthDateCreated: TSQLTimeStampField;
    cds_ProductLengthSequenceNo: TIntegerField;
    cds_ProductLengthProductLengthGroupNo: TIntegerField;
    cds_ProductLengthAct: TIntegerField;
    cds_ProductLengthStringField: TStringField;
    cds_PkgCode: TADQuery;
    cds_PkgCodePkgCodePPNo: TIntegerField;
    cds_PkgCodePackageTypeNo: TIntegerField;
    cds_PkgCodepackagecodeno: TStringField;
    cds_PkgCodeMarketRegionNo: TIntegerField;
    cds_LinkProd: TADQuery;
    cds_LinkProdAvrProductNo: TIntegerField;
    cds_LinkProdALOProductNo: TIntegerField;
    cds_LinkProdStringField: TStringField;
    cds_intPrice: TADQuery;
    cds_intPriceInteralPriceGroupNo: TIntegerField;
    cds_intPriceSawmillNo: TIntegerField;
    cds_intPricePrice: TFloatField;
    cds_intPriceCreatedUser: TSmallintField;
    cds_intPriceModifiedUser: TSmallintField;
    cds_intPriceDateCreated: TSQLTimeStampField;
    cds_intPriceINTERNVERK: TStringField;
    cds_StatCode: TADQuery;
    cds_StatCodeStatCodeNo: TIntegerField;
    cds_StatCodeStatCodeName: TStringField;
    cds_StatCodeStatCode: TStringField;
    cds_StatCodeSequenceNo: TIntegerField;
    cds_StatCodeDateCreated: TSQLTimeStampField;
    cds_StatCodeCreatedUser: TSmallintField;
    cds_StatCodeModifiedUser: TSmallintField;
    cds_ProdListCust: TADQuery;
    cds_ProdListCustProductNo: TIntegerField;
    cds_ProdListCustProductGroupNo: TIntegerField;
    cds_ProdListCustGradeName: TStringField;
    cds_ProdListCustSpeciesName: TStringField;
    cds_ProdListCustSurfacingName: TStringField;
    cds_ProdListCustProductCategoryName: TStringField;
    cds_ProdListCustActualThicknessMM: TFloatField;
    cds_ProdListCustActualWidthMM: TFloatField;
    cds_ProdListCustNominalThicknessMM: TFloatField;
    cds_ProdListCustNominalWidthMM: TFloatField;
    cds_ProdListCustProductDisplayName: TStringField;
    cds_ProdListCustGradeNo: TIntegerField;
    cds_ProdListCustSpeciesNo: TIntegerField;
    cds_ProdListCustProductCategoryNo: TIntegerField;
    cds_ProdListCustSurfacingNo: TIntegerField;
    cds_ProdListCustNominalThicknessINCH: TStringField;
    cds_ProdListCustNominalWidthINCH: TStringField;
    cds_ProdListCustNT: TFloatField;
    cds_ProdListCustNW: TFloatField;
    cds_LengthRuleRow: TADQuery;
    cds_LengthRuleRowLengthRuleNo: TIntegerField;
    cds_LengthRuleRowMinActLength: TFloatField;
    cds_LengthRuleRowMaxActLength: TFloatField;
    cds_LengthRuleRowNomLength: TFloatField;
    cds_LengthRuleRowCreatedUser: TIntegerField;
    cds_LengthRuleRowModifiedUser: TIntegerField;
    cds_LengthRuleRowDateCreated: TSQLTimeStampField;
    cds_LengthRuleRowDateModified: TSQLTimeStampField;
    cds_LengthRuleRowSetNo: TIntegerField;
    cds_gradeII: TADQuery;
    cds_gradeIIGradeNo: TIntegerField;
    cds_gradeIIGradeName: TStringField;
    cds_gradeIILanguageCode: TIntegerField;
    cds_gradeIISequenceNo: TIntegerField;
    cds_gradeIICreatedUser: TSmallintField;
    cds_gradeIIModifiedUser: TSmallintField;
    cds_gradeIIDateCreated: TSQLTimeStampField;
    cds_gradeIIMainGradeNo: TIntegerField;
    cds_gradeIIAct: TIntegerField;
    cds_gradeIIGradeCode: TStringField;
    cds_gradeIIDKCode: TStringField;
    cds_SurfacingII: TADQuery;
    cds_SurfacingIISurfacingNo: TIntegerField;
    cds_SurfacingIISurfacingName: TStringField;
    cds_SurfacingIILanguageCode: TIntegerField;
    cds_SurfacingIISequenceNo: TIntegerField;
    cds_SurfacingIICreatedUser: TSmallintField;
    cds_SurfacingIIModifiedUser: TSmallintField;
    cds_SurfacingIIDateCreated: TSQLTimeStampField;
    cds_SurfacingIIAct: TIntegerField;
    cds_SurfacingIISurfacingCode: TStringField;
    cds_SurfacingIIDKCode: TStringField;
    cds_SurfacingIIKortNamn: TStringField;
    cds_SurfacingIIStringField: TStringField;
    cds_SpeciesII: TADQuery;
    cds_SpeciesIISpeciesNo: TIntegerField;
    cds_SpeciesIISpeciesName: TStringField;
    cds_SpeciesIILanguageCode: TIntegerField;
    cds_SpeciesIISequenceNo: TIntegerField;
    cds_SpeciesIICreatedUser: TSmallintField;
    cds_SpeciesIIModifiedUser: TSmallintField;
    cds_SpeciesIIDateCreated: TSQLTimeStampField;
    cds_SpeciesIIAct: TIntegerField;
    cds_SpeciesIISpeciesCode: TStringField;
    cds_SpeciesIISpeciesShortName: TStringField;
    cds_SpeciesIIDKCode: TStringField;
    cds_SpeciesIIStringField: TStringField;
    cds_Lengths: TADQuery;
    cds_LengthsGroupName: TStringField;
    cds_LengthsProductLengthNo: TIntegerField;
    cds_LengthsActualLengthMM: TFloatField;
    cds_LengthsNominalLengthMM: TFloatField;
    cds_LengthsNominalLengthFEET: TFloatField;
    cds_LengthsActualLengthINCH: TStringField;
    cds_LengthsPET: TIntegerField;
    cds_LengthsFingerJoint: TIntegerField;
    cds_LengthsCreatedUser: TIntegerField;
    cds_LengthsModifiedUser: TIntegerField;
    cds_LengthsDateCreated: TSQLTimeStampField;
    cds_LengthsSequenceNo: TIntegerField;
    cds_LengthsProductLengthGroupNo: TIntegerField;
    cds_LengthsAct: TIntegerField;
    cds_Lengthsproductgroupno: TIntegerField;
    sq_ProductGroupLengths: TADQuery;
    sq_ProductGroupLengthsProductGroupNo: TIntegerField;
    sq_ProductGroupLengthsProductLengthNo: TIntegerField;
    sq_ProductGroupLengthsCreatedUser: TSmallintField;
    sq_ProductGroupLengthsModifiedUser: TSmallintField;
    sq_ProductGroupLengthsDateCreated: TSQLTimeStampField;
    sq_LengExist: TADQuery;
    sq_LengExistproductLengthNo: TIntegerField;
    sq_GetPkgTypeByCode: TADQuery;
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
    sq_GetPkgType: TADQuery;
    sq_GetPkgTypeProductGroupNo: TIntegerField;
    sq_GetPkgTypeProductNo: TIntegerField;
    sq_GetPkgAttrPkgTypeNo: TADQuery;
    sq_GetPkgAttrPkgTypeNoProductGroupNo: TIntegerField;
    sq_GetPkgAttrPkgTypeNoProductNo: TIntegerField;
    sq_GetPkgAttrPkgTypeNoPackageTypeNo: TIntegerField;
    sq_GetPkgAttrPkgTypeNoProductLengthNo: TIntegerField;
    sq_GetPkgAttrPkgTypeNoBarCodeID: TIntegerField;
    sq_GetPkgAttrPkgTypeNoGradeStamp: TIntegerField;
    sq_GetPkgAttrPkgTypeNoPackageHeight: TIntegerField;
    sq_GetPkgAttrPkgTypeNoPackageWidth: TIntegerField;
    sq_GetPkgAttrPkgTypeNoMiniBundled: TIntegerField;
    sq_GetPkgAttrPkgTypeNoWrapType: TIntegerField;
    sq_GetPkgAttrPkgTypeNoShrinkWrap: TIntegerField;
    sq_GetPkgAttrPkgTypeNoTotalNoOfPieces: TIntegerField;
    sq_GetPkgTypeByVariantNo: TADQuery;
    sq_GetPkgTypeByVariantNoProductGroupNo: TIntegerField;
    sq_GetPkgTypeByVariantNoProductNo: TIntegerField;
    sq_GetPkgTypeByVariantNoPackageTypeNo: TIntegerField;
    sq_GetPkgTypeByVariantNoProductLengthNo: TIntegerField;
    sq_GetPkgTypeByVariantNoBarCodeID: TIntegerField;
    sq_GetPkgTypeByVariantNoGradeStamp: TIntegerField;
    sq_GetPkgTypeByVariantNoPackageHeight: TIntegerField;
    sq_GetPkgTypeByVariantNoPackageWidth: TIntegerField;
    sq_GetPkgTypeByVariantNoMiniBundled: TIntegerField;
    sq_GetPkgTypeByVariantNoWrapType: TIntegerField;
    sq_GetPkgTypeByVariantNoShrinkWrap: TIntegerField;
    sq_GetPkgTypeByVariantNoTotalNoOfPieces: TIntegerField;
    sq_GetPkgTypeByVariantNoPackageCodeNo: TStringField;
    sq_DeActProd: TADQuery;
    mtFilter: TkbmMemTable;
    mtFilterClientNo: TIntegerField;
    mtFilterVERK: TStringField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure cds_ProductLengthOLDAfterInsert(DataSet: TDataSet);
    procedure ms_ProdLengthGrp2AfterInsert(DataSet: TDataSet);
    procedure cds_ProductLengthOLDFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ds_ProdLengthGrpDataChange(Sender: TObject; Field: TField);
    procedure cds_IntPriceGrpOLDAfterInsert(DataSet: TDataSet);
    procedure cds_IntPriceGrpOLDBeforePost(DataSet: TDataSet);
    procedure cds_ProductLengthOLDBeforePost(DataSet: TDataSet);
    procedure ds_gradeDataChange(Sender: TObject; Field: TField);
    procedure cds_SurfacingIIOLDBeforePost(DataSet: TDataSet);
    procedure cds_SpeciesIIOLDBeforePost(DataSet: TDataSet);
    procedure cds_SurfacingIIOLDAfterInsert(DataSet: TDataSet);
    procedure cds_SpeciesIIOLDAfterInsert(DataSet: TDataSet);
    procedure ds_SurfacingDataChange(Sender: TObject; Field: TField);
    procedure ds_SpeciesDataChange(Sender: TObject; Field: TField);
    procedure cds_SurfacingIIOLDPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure cds_SpeciesIIOLDPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure dsp_PrdGrpListGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure mtFilterClientNoChange(Sender: TField);
    procedure cds_PrdGrpAfterInsert(DataSet: TDataSet);
    procedure cds_PrdGrpBeforePost(DataSet: TDataSet);
    procedure cds_ProductsAfterInsert(DataSet: TDataSet);
    procedure cds_ProductsBeforePost(DataSet: TDataSet);
    procedure cds_ProductGroupLengthsAfterInsert(DataSet: TDataSet);
    procedure cds_ProductGroupLengthsBeforePost(DataSet: TDataSet);
    procedure cds_ProdLengthGrpAfterInsert(DataSet: TDataSet);
    procedure cds_ProdLengthGrpBeforePost(DataSet: TDataSet);
    procedure cds_CSDLRowAfterInsert(DataSet: TDataSet);
    procedure cds_CSDLRowBeforePost(DataSet: TDataSet);
    procedure cds_LengthRuleGrpAfterInsert(DataSet: TDataSet);
    procedure cds_LengthRuleGrpBeforePost(DataSet: TDataSet);
    procedure cds_SpeciesAfterInsert(DataSet: TDataSet);
    procedure cds_SpeciesBeforePost(DataSet: TDataSet);
    procedure cds_gradeAfterInsert(DataSet: TDataSet);
    procedure cds_gradeBeforePost(DataSet: TDataSet);
    procedure cds_SurfacingAfterInsert(DataSet: TDataSet);
    procedure cds_SurfacingBeforePost(DataSet: TDataSet);
    procedure cds_ProdCatgAfterInsert(DataSet: TDataSet);
    procedure cds_ProdCatgBeforePost(DataSet: TDataSet);
    procedure cds_CSDLAfterInsert(DataSet: TDataSet);
    procedure cds_intPriceAfterInsert(DataSet: TDataSet);
    procedure cds_intPriceBeforePost(DataSet: TDataSet);
    procedure cds_StatCodeAfterInsert(DataSet: TDataSet);
    procedure cds_StatCodeBeforePost(DataSet: TDataSet);
    procedure cds_LengthRuleRowAfterInsert(DataSet: TDataSet);
    procedure cds_LengthRuleRowBeforePost(DataSet: TDataSet);
    procedure cds_gradeIIAfterInsert(DataSet: TDataSet);
    procedure cds_gradeIIBeforePost(DataSet: TDataSet);
    procedure cds_gradeIIPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
    function LengthExist : Boolean ;
  public
    { Public declarations }
    FilterEvent : Boolean ;
    function  GetProductNoByPkgTypeNo (const PkgTypeNo : Integer;Var ProductGroupNo : Integer) : Integer ;
    Function  GetProdDesc (const ProductGroupNo, ProductNo : Integer) : String ;
    Function  GetProductNoByPkgcode (const PkgCode : String;Var ProductGroupNo, PkgTypeNo, ProductLengthNo, PPP, PkgCodePPNo : Integer) : Integer ;
    procedure DeActProd ;
    Function  GetProductNoByPkgCodeVariantNo(const MarketRegionNo, PkgCodePPNo : Integer;Var ProductGroupNo, PkgTypeNo, ProductLengthNo, PPP : Integer;Var KortaKoden : String) : Integer ;
  end;

var
  dmProduct: TdmProduct;

implementation

uses dmsDataConn, dmsVidaSystem, dmsVidaContact, VidaUser, VidaUtils ;

{$R *.dfm}

procedure TdmProduct.cds_ProductGroupLengthsAfterInsert(DataSet: TDataSet);
begin
 cds_ProductGroupLengthsProductGroupNo.AsInteger  := cds_PrdGrpProductGroupNo.AsInteger ;
 cds_ProductGroupLengthsCreatedUser.AsInteger     := ThisUser.UserID ;
 cds_ProductGroupLengthsModifiedUser.AsInteger    := ThisUser.UserID ;
 cds_ProductGroupLengthsDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;

//cds_ProductGroupLengthsALMM.AsFloat := cds_ProductLengthActualLengthMM.AsFloat ;
// cds_ProductGroupLengthsProductLengthNo.AsInteger:=  429 ;
end;

procedure TdmProduct.cds_ProductGroupLengthsBeforePost(DataSet: TDataSet);
begin
{ With dmProduct do
 Begin
  cds_ProductGroupLengthsALMM.AsFloat := cds_ProductLengthActualLengthMM.AsFloat ;
  cds_ProductGroupLengthsNLMM.AsFloat := cds_ProductLengthNominalLengthMM.AsFloat ;
  cds_ProductGroupLengthsPET.AsInteger:= cds_ProductLengthPET.AsInteger ;
  cds_ProductGroupLengthsFJ.AsInteger:= cds_ProductLengthFingerJoint.AsInteger ;
  cds_ProductGroupLengthsNLF.AsFloat := cds_ProductLengthNominalLengthFEET.AsFloat ;
  cds_ProductGroupLengthsAI.AsString:= cds_ProductLengthActualLengthINCH.AsString ;
 End ; }
end;

procedure TdmProduct.cds_ProductsAfterInsert(DataSet: TDataSet);
begin
 cds_ProductsProductNo.AsInteger        := dmsConnector.NextMaxNo('Product') ;
 cds_ProductsProductGroupNo.AsInteger   := cds_PrdGrpProductGroupNo.AsInteger ;
 cds_ProductsCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_ProductsDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
 cds_ProductsAct.AsInteger              := 1 ;
end;

procedure TdmProduct.cds_ProductsBeforePost(DataSet: TDataSet);
begin
 cds_ProductsModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_ProductsDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;

 Case cds_PrdGrpProductDisplayFormatNo.AsInteger of
  0 :  cds_ProductsProductDisplayName.AsString:=
       ReplaceCommas(FloatToStrF(cds_PrdGrpActualThicknessMM.AsFloat,ffFixed, 15,1))
      +'x'+ReplaceCommas(FloatToStrF(cds_PrdGrpActualWidthMM.AsFloat,ffFixed,15,1)) ;
  1 :   cds_ProductsProductDisplayName.AsString:=
      ReplaceCommas(FloatToStrF(cds_PrdGrpNominalThicknessMM.AsFloat,ffFixed,15,1))
      +'x'+ReplaceCommas(FloatToStrF(cds_PrdGrpNominalWidthMM.AsFloat,ffFixed,15,1)) ;

  2 :   cds_ProductsProductDisplayName.AsString:=
      ReplaceCommas(cds_PrdGrpNominalThicknessMM.AsString)
      +'x'+ReplaceCommas(cds_PrdGrpNominalWidthMM.AsString)
      +'('+ReplaceCommas(cds_PrdGrpNominalThicknessMM.AsString)
      +'x'+ReplaceCommas(cds_PrdGrpNominalWidthMM.AsString)+')' ;

  3 :  cds_ProductsProductDisplayName.AsString:=
      ReplaceCommas(cds_PrdGrpNominalThicknessINCH.AsString)
      +'x'+ReplaceCommas(cds_PrdGrpNominalWidthINCH.AsString) ;

  4 :  cds_ProductsProductDisplayName.AsString:=
      ReplaceCommas(cds_PrdGrpNominalThicknessINCH.AsString)
      +'x'+ReplaceCommas(cds_PrdGrpNominalWidthINCH.AsString)
      +'('+ReplaceCommas(cds_PrdGrpNominalThicknessMM.AsString)
      +'x'+ReplaceCommas(cds_PrdGrpNominalWidthMM.AsString)+')' ;
   else
     cds_ProductsProductDisplayName.AsString:=
      ReplaceCommas(cds_PrdGrpActualThicknessMM.AsString)
      +'x'+ReplaceCommas(cds_PrdGrpActualWidthMM.AsString) ;

  End  ;
 cds_ProductsProductDisplayName.AsString:=
 cds_ProductsProductDisplayName.AsString
      +', '+Trim(cds_ProductsKVALITET.AsString)
      +', '+Trim(cds_PrdGrpTS.AsString)
      +', '+Trim(cds_PrdGrpUT.AsString) ;
end;

procedure TdmProduct.DataModuleDestroy(Sender: TObject);
begin
 cds_ProdCatg.Active:= False ;
 cds_Surfacing.Active:= False ;
 cds_Species.Active:= False ;
 cds_StatCode.Active:= False ;
 cds_ProductLength.Active:= False ;

 cds_Prod_Lengths.Active:= False ;
// sq_Prod_Lengths.ParamByName('ProductGroupNo').AsInteger:= dmcOrder.cds_OrderRowProductGroupNo.AsInteger ;
 cds_Prod_Lengths.Active:= True ;
 cds_Prod_Lengths.Filtered:= False ;
end;

procedure TdmProduct.cds_PrdGrpAfterInsert(DataSet: TDataSet);
begin
 cds_PrdGrpProductGroupNo.AsInteger         := dmsConnector.NextMaxNo('ProductGroup') ;
 cds_Products.Refresh ;
 cds_ProductGroupLengths.Refresh ;
 cds_PrdGrpCreatedUser.AsInteger            := ThisUser.UserID ;
 cds_PrdGrpModifiedUser.AsInteger           := ThisUser.UserID ;
 cds_PrdGrpDateCreated.AsSQLTimeStamp       := DateTimeToSQLTimeStamp(Now) ;
 cds_PrdGrpAct.AsInteger                    := 1 ;
 cds_PrdGrpLanguageCode.AsInteger           := 1 ;//Swedish
 cds_PrdGrpLengthDisplayFormatNo.AsInteger  := 0 ;
 cds_PrdGrpProductDisplayFormatNo.AsInteger := 0 ;
end;

procedure TdmProduct.cds_PrdGrpBeforePost(DataSet: TDataSet);
begin
 if cds_PrdGrpProductCategoryNo.IsNull then
 Begin
  raise Exception.Create('Kategori saknas!');
 End ;

 if cds_PrdGrpActualThicknessMM.IsNull then
 Begin
  raise Exception.Create('Aktuell tjocklek saknas!');
 End ;

 if cds_PrdGrpActualWidthMM.IsNull then
 Begin
  raise Exception.Create('Aktuell bredd saknas!');
 End ;

 if cds_PrdGrpNominalThicknessMM.IsNull then
 Begin
  raise Exception.Create('Nominell tjocklek saknas!');
 End ;

 if cds_PrdGrpNominalWidthMM.IsNull then
 Begin
  raise Exception.Create('Nominell bredd saknas!');
 End ;

 if cds_PrdGrpSpeciesNo.IsNull then
 Begin
  raise Exception.Create('Träslag saknas!');
 End ;

 if cds_PrdGrpSurfacingNo.IsNull then
 Begin
  raise Exception.Create('Utförande saknas!');
 End ;

 if cds_PrdGrpStatCodeNo.IsNull then
 Begin
  raise Exception.Create('Statkod saknas!');
 End ;



 cds_PrdGrpModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_PrdGrpDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmProduct.cds_ProductLengthOLDAfterInsert(DataSet: TDataSet);
begin
 cds_ProductLengthProductLengthNo.AsInteger       := dmsConnector.NextMaxNo('ProductLength') ;
 cds_ProductLengthPET.AsInteger                   := 0 ;
 cds_ProductLengthFingerJoint.AsInteger           := 0 ;

 cds_ProductLengthCreatedUser.AsInteger           := ThisUser.UserID ;
 cds_ProductLengthModifiedUser.AsInteger          := ThisUser.UserID ;
 cds_ProductLengthDateCreated.AsSQLTimeStamp      := DateTimeToSQLTimeStamp(Now) ;
 cds_ProductLengthAct.AsInteger                   := 1 ;
 cds_ProductLengthSequenceNo.AsInteger            := 0 ;
 cds_ProductLengthProductLengthGroupNo.AsInteger  := 0 ;
end;

procedure TdmProduct.ms_ProdLengthGrp2AfterInsert(DataSet: TDataSet);
begin
// ms_ProdLengthGrpGroupNo.AsInteger := dmsConnector.NextMaxNo('ProductLengthGroupName') ;
end;


procedure TdmProduct.cds_intPriceAfterInsert(DataSet: TDataSet);
begin
 cds_intPriceInteralPriceGroupNo.AsInteger:= cds_IntPriceGrpInteralPriceGroupNo.AsInteger ;
 cds_intPriceCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_intPriceDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmProduct.cds_intPriceBeforePost(DataSet: TDataSet);
begin
 cds_intPriceModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_intPriceDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
end;


procedure TdmProduct.cds_ProdLengthGrpAfterInsert(DataSet: TDataSet);
begin
 cds_ProdLengthGrpGroupNo.AsInteger         := dmsConnector.NextMaxNo('ProductLengthGroupName') ;
 cds_ProdLengthGrpCreatedUser.AsInteger     := ThisUser.UserID ;
 cds_ProdLengthGrpModifiedUser.AsInteger    := ThisUser.UserID ;
 cds_ProdLengthGrpDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 cds_ProdLengthGrpSequenceNo.AsInteger      := 0 ;
 cds_ProdLengthGrpChanged.AsInteger         := 1 ;//1 = changed
end;

procedure TdmProduct.cds_ProdLengthGrpBeforePost(DataSet: TDataSet);
begin
 cds_ProdLengthGrpModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_ProdLengthGrpDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 cds_ProdLengthGrpChanged.AsInteger:= 1 ;
end;


Function TdmProduct.GetProductNoByPkgTypeNo (const PkgTypeNo : Integer;Var ProductGroupNo : Integer) : Integer ;
Begin
 Result:= -1 ;
 Try
 sq_GetPkgType.ParamByName('PackageTypeNo').AsInteger:= PkgTypeNo ;
 sq_GetPkgType.Open ;
 if Not sq_GetPkgType.Eof then
 Begin
  Result:= sq_GetPkgTypeProductNo.AsInteger ;
  ProductGroupNo:= sq_GetPkgTypeProductGroupNo.AsInteger ;
 End ;
 Finally
  sq_GetPkgType.Close ;
 End ;
End ;

Function TdmProduct.GetProdDesc (const ProductGroupNo, ProductNo : Integer) : String ;
Begin
 Try
 cds_Products.Active := False ;

// sq_Products.Close ;
 cds_Products.ParamByName('ProductGroupNo').AsInteger:= ProductGroupNo ;
 cds_Products.Active := True ;
 if cds_Products.RecordCount > 0 then
 Begin
  Try
  cds_Products.Filter:= 'ProductNo = '+IntToStr(ProductNo) ;
  cds_Products.Filtered:= True ;

  if not cds_Products.Eof then
  Result:= cds_ProductsProductDisplayName.AsString
  else
  Result:= '' ;
  Finally
   cds_Products.Filtered:= False ;
  End ;
 End ;

 Finally
  cds_Products.Active := False ;
 End ;
End ;

Function TdmProduct.GetProductNoByPkgcode(const Pkgcode : String;Var ProductGroupNo, PkgTypeNo, ProductLengthNo, PPP, PkgCodePPNo : Integer) : Integer ;
Begin
 Result:= -1 ;
 Try
 sq_GetPkgTypeByCode.ParamByName('PackageCode').AsString:= PkgCode ;
 sq_GetPkgTypeByCode.Open ;
 if Not sq_GetPkgTypeByCode.Eof then
 Begin
  Result          := sq_GetPkgTypeByCodeProductNo.AsInteger ;
  ProductGroupNo  := sq_GetPkgTypeByCodeProductGroupNo.AsInteger ;
  PkgTypeNo       := sq_GetPkgTypeByCodePackageTypeNo.AsInteger ;
  ProductLengthNo := sq_GetPkgTypeByCodeProductLengthNo.AsInteger ;
  ppp             := sq_GetPkgTypeByCodeTotalNoOfPieces.AsInteger ;
  PkgCodePPNo     := sq_GetPkgTypeByCodePkgCodePPNo.AsInteger ;
 End ;
 Finally
  sq_GetPkgTypeByCode.Close ;
 End ;
End ;

Function TdmProduct.GetProductNoByPkgCodeVariantNo(const MarketRegionNo, PkgCodePPNo : Integer;Var ProductGroupNo, PkgTypeNo, ProductLengthNo, PPP : Integer;Var KortaKoden : String) : Integer ;
Begin
 Result:= -1 ;
 Try
 sq_GetPkgTypeByVariantNo.Close ;
 sq_GetPkgTypeByVariantNo.ParamByName('PkgCodePPNo').AsInteger    := PkgCodePPNo ;
 sq_GetPkgTypeByVariantNo.ParamByName('MarketRegionNo').AsInteger := MarketRegionNo ;
 sq_GetPkgTypeByVariantNo.Open ;
 if Not sq_GetPkgTypeByVariantNo.Eof then
 Begin
  Result          := sq_GetPkgTypeByVariantNoProductNo.AsInteger ;
  ProductGroupNo  := sq_GetPkgTypeByVariantNoProductGroupNo.AsInteger ;
  PkgTypeNo       := sq_GetPkgTypeByVariantNoPackageTypeNo.AsInteger ;
  ProductLengthNo := sq_GetPkgTypeByVariantNoProductLengthNo.AsInteger ;
  ppp             := sq_GetPkgTypeByVariantNoTotalNoOfPieces.AsInteger ;
  KortaKoden      := sq_GetPkgTypeByVariantNoPackageCodeNo.AsString ;
 End ;
 Finally
  sq_GetPkgTypeByVariantNo.Close ;
 End ;
End ;


procedure TdmProduct.cds_ProductLengthOLDFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 if FilterEvent then
 if cds_ProdLengthRow.Locate('ProductLengthNo',cds_ProductLengthProductLengthNo.AsInteger,[]) then
  Accept:= False
   else
    Accept := True ;
end;

procedure TdmProduct.ds_ProdLengthGrpDataChange(Sender: TObject;
  Field: TField);
begin
{ cds_ProductLength.Refresh ;
 if cds_ProdLengthGrpGroupNo.AsInteger > 0 then
  cds_ProdLengthRow.Filter:= 'GroupNo = '+cds_ProdLengthGrpGroupNo.AsString
   else
    cds_ProdLengthRow.Filter:= 'GroupNo = -1' ; }
end;

procedure TdmProduct.cds_IntPriceGrpOLDAfterInsert(DataSet: TDataSet);
begin
 cds_IntPriceGrpInteralPriceGroupNo.AsInteger:= dmsConnector.NextMaxNo('InteralPriceGroup') ;
 cds_IntPriceGrpCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_IntPriceGrpModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_IntPriceGrpDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmProduct.cds_IntPriceGrpOLDBeforePost(DataSet: TDataSet);
begin
 cds_IntPriceGrpModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_IntPriceGrpDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmProduct.cds_ProductLengthOLDBeforePost(DataSet: TDataSet);
begin
// if UpdateKind in [ukInsert, ukModify] then
// Begin
 if LengthExist then
  Begin
   raise Exception.Create('Längden finns redan upplagd.');
  End ;
// End ;
 cds_ProductLengthModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_ProductLengthDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
end;

function TdmProduct.LengthExist : Boolean ;
begin
 sq_LengExist.ParamByName('ALMM').AsFloat                   := cds_ProductLengthActualLengthMM.AsFloat ;
 sq_LengExist.ParamByName('NLMM').AsFloat                   := cds_ProductLengthNominalLengthMM.AsFloat ;
 sq_LengExist.ParamByName('PET').AsInteger                  := cds_ProductLengthPET.AsInteger ;
 sq_LengExist.ParamByName('FJ').AsInteger                   := cds_ProductLengthFingerJoint.AsInteger ;
 sq_LengExist.ParamByName('ProductLengthGroupNo').AsInteger := cds_ProductLengthProductLengthGroupNo.AsInteger ;
 sq_LengExist.ParamByName('ProductLengthNo').AsInteger      := cds_ProductLengthProductLengthNo.AsInteger ;
 sq_LengExist.Open ;
 if sq_LengExistproductLengthNo.AsInteger > 0 then
  Result := True
   else
    Result:= False ;
 sq_LengExist.close ;
End ;

procedure TdmProduct.cds_ProdCatgAfterInsert(DataSet: TDataSet);
begin
 cds_ProdCatgCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_ProdCatgModifiedUser.AsInteger     := ThisUser.UserID ;
 cds_ProdCatgDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmProduct.cds_ProdCatgBeforePost(DataSet: TDataSet);
begin
 cds_ProdCatgModifiedUser.AsInteger     := ThisUser.UserID ;
 cds_ProdCatgDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmProduct.cds_StatCodeAfterInsert(DataSet: TDataSet);
begin
 cds_StatCodeCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_StatCodeModifiedUser.AsInteger     := ThisUser.UserID ;
 cds_StatCodeDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmProduct.cds_StatCodeBeforePost(DataSet: TDataSet);
begin
 cds_StatCodeModifiedUser.AsInteger     := ThisUser.UserID ;
 cds_StatCodeDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmProduct.ds_gradeDataChange(Sender: TObject; Field: TField);
begin
 if (cds_gradeII.Active = True) and (cds_gradeGradeNo.AsInteger > 0) then
 Begin
  cds_gradeII.Filter:= 'GradeNo = '+cds_gradeGradeNo.AsString+' AND LanguageCode <> 1' ;
 End ;

end;

procedure TdmProduct.cds_gradeAfterInsert(DataSet: TDataSet);
begin
 cds_gradeCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_gradeModifiedUser.AsInteger      := ThisUser.UserID ;
 cds_gradeDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
 cds_gradeAct.AsInteger:= 1 ;
end;

procedure TdmProduct.cds_gradeBeforePost(DataSet: TDataSet);
begin
 cds_gradeModifiedUser.AsInteger      := ThisUser.UserID ;
 cds_gradeDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmProduct.cds_gradeIIAfterInsert(DataSet: TDataSet);
begin
 cds_gradeIICreatedUser.AsInteger       := ThisUser.UserID ;
 cds_gradeIIModifiedUser.AsInteger      := ThisUser.UserID ;
 cds_gradeIIDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
 cds_gradeIIAct.AsInteger:= 1 ;
end;

procedure TdmProduct.cds_gradeIIBeforePost(DataSet: TDataSet);
begin
 if cds_gradeIILanguageCode.AsInteger = 1 then
 Begin
  ShowMessage('Lägg ej till språk Svenska!') ;
  cds_gradeIILanguageCode.AsInteger:= 2 ;
  Abort ;
 End ;
end;

procedure TdmProduct.cds_gradeIIPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
 ShowMessage('Dublett av kvalitet och språk.  '+e.Message) ;
 Action:= daAbort ;
end;

procedure TdmProduct.cds_SurfacingIIOLDBeforePost(DataSet: TDataSet);
begin
 if cds_SurfacingIILanguageCode.AsInteger = 1 then
 Begin
  ShowMessage('Lägg ej till språk Svenska!') ;
  cds_SurfacingIILanguageCode.AsInteger:= 2 ;
  Abort ;
 End ;
end;

procedure TdmProduct.cds_SpeciesIIOLDBeforePost(DataSet: TDataSet);
begin
 if cds_SpeciesIILanguageCode.AsInteger = 1 then
 Begin
  ShowMessage('Lägg ej till språk Svenska!') ;
  cds_SpeciesIILanguageCode.AsInteger:= 2 ;
  Abort ;
 End ;
end;

procedure TdmProduct.cds_SurfacingAfterInsert(DataSet: TDataSet);
begin
 cds_SurfacingCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_SurfacingModifiedUser.AsInteger      := ThisUser.UserID ;
 cds_SurfacingDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
 cds_SurfacingAct.AsInteger               := 1 ;
end;

procedure TdmProduct.cds_SurfacingBeforePost(DataSet: TDataSet);
begin
 cds_SurfacingModifiedUser.AsInteger      := ThisUser.UserID ;
 cds_SurfacingDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmProduct.cds_SurfacingIIOLDAfterInsert(DataSet: TDataSet);
begin
 cds_SurfacingIICreatedUser.AsInteger       := ThisUser.UserID ;
 cds_SurfacingIIModifiedUser.AsInteger      := ThisUser.UserID ;
 cds_SurfacingIIDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
 cds_SurfacingIIAct.AsInteger:= 1 ;
end;

procedure TdmProduct.cds_SpeciesAfterInsert(DataSet: TDataSet);
begin
 cds_SpeciesCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_SpeciesModifiedUser.AsInteger      := ThisUser.UserID ;
 cds_SpeciesDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
 cds_SpeciesAct.AsInteger:= 1 ;
end;

procedure TdmProduct.cds_SpeciesBeforePost(DataSet: TDataSet);
begin
 cds_SpeciesModifiedUser.AsInteger      := ThisUser.UserID ;
 cds_SpeciesDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmProduct.cds_SpeciesIIOLDAfterInsert(DataSet: TDataSet);
begin
 cds_SpeciesIICreatedUser.AsInteger       := ThisUser.UserID ;
 cds_SpeciesIIModifiedUser.AsInteger      := ThisUser.UserID ;
 cds_SpeciesIIDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
 cds_SpeciesIIAct.AsInteger:= 1 ;
end;

procedure TdmProduct.ds_SurfacingDataChange(Sender: TObject;
  Field: TField);
begin
 if (cds_SurfacingII.Active = True) and (cds_SurfacingSurfacingNo.AsInteger > 0) then
 Begin
  cds_SurfacingII.Filter:= 'SurfacingNo = '+cds_SurfacingSurfacingNo.AsString+' AND LanguageCode <> 1' ;
 End ;
end;

procedure TdmProduct.ds_SpeciesDataChange(Sender: TObject; Field: TField);
begin
 if (cds_SpeciesII.Active = True) and (cds_SpeciesSpeciesNo.AsInteger > 0) then
 Begin
  cds_SpeciesII.Filter:= 'SpeciesNo = '+cds_SpeciesSpeciesNo.AsString+' AND LanguageCode <> 1' ;
 End ;
end;

procedure TdmProduct.cds_SurfacingIIOLDPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
 ShowMessage('Dublett av utförande och språk.  '+e.Message) ;
 Action:= daAbort ;
end;

procedure TdmProduct.cds_SpeciesIIOLDPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
 ShowMessage('Dublett av träslag och språk.  '+e.Message) ;
 Action:= daAbort ;
end;

procedure TdmProduct.dsp_PrdGrpListGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'ProductGroup' ;
end;

procedure TdmProduct.DeActProd ;
var
 Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  Try
   sq_DeActProd.ExecSQL ;
  Finally
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
End ;

procedure TdmProduct.cds_CSDLAfterInsert(DataSet: TDataSet);
begin
 cds_CSDLCustomSalesDimListNo.AsInteger := dmsConnector.NextMaxNo('CSDL') ;
 cds_CSDLDateCreated.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;
 cds_CSDLCreatedUser.AsInteger          := ThisUser.UserID ;
end;

procedure TdmProduct.cds_CSDLRowAfterInsert(DataSet: TDataSet);
begin
 cds_CSDLRowCustomSalesDimListNo.AsInteger  := cds_CSDLCustomSalesDimListNo.AsInteger ;
 cds_CSDLRowDateCreated.AsSQLTimeStamp      := DateTimeToSQLTimeStamp(Now) ;
 cds_CSDLRowDateModified.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;
 cds_CSDLRowCreatedUser.AsInteger           := ThisUser.UserID ;
 cds_CSDLRowModifiedUser.AsInteger          := ThisUser.UserID ;

end;

procedure TdmProduct.cds_CSDLRowBeforePost(DataSet: TDataSet);
begin
 cds_CSDLRowDateModified.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;
 cds_CSDLRowModifiedUser.AsInteger          := ThisUser.UserID ;
end;

procedure TdmProduct.cds_LengthRuleGrpAfterInsert(DataSet: TDataSet);
begin
 cds_LengthRuleGrpLengthRuleNo.AsInteger        := dmsConnector.NextMaxNo('LengthRuleGrp') ;
 cds_LengthRuleGrpCreatedUser.AsInteger         := ThisUser.UserID ;
 cds_LengthRuleGrpModifiedUser.AsInteger        := ThisUser.UserID ;
 cds_LengthRuleGrpDateCreated.AsSQLTimeStamp    := DateTimeToSQLTimeStamp(Now) ;
 cds_LengthRuleGrpDateModified.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
 cds_LengthRuleGrpSurfacingNo.AsInteger         := 0 ;
 cds_LengthRuleGrpClientNo.AsInteger            := mtFilterClientNo.AsInteger ;
end;

procedure TdmProduct.cds_LengthRuleGrpBeforePost(DataSet: TDataSet);
begin
cds_LengthRuleGrpModifiedUser.AsInteger        := ThisUser.UserID ;
 cds_LengthRuleGrpDateModified.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
 if cds_LengthRuleGrpSurfacingNo.IsNull then
  cds_LengthRuleGrpSurfacingNo.AsInteger        := 0 ;
end;

procedure TdmProduct.cds_LengthRuleRowAfterInsert(DataSet: TDataSet);
begin
 cds_LengthRuleRowLengthRuleNo.AsInteger        := cds_LengthRuleGrpLengthRuleNo.AsInteger ;
 cds_LengthRuleRowCreatedUser.AsInteger         := ThisUser.UserID ;
 cds_LengthRuleRowModifiedUser.AsInteger        := ThisUser.UserID ;
 cds_LengthRuleRowDateCreated.AsSQLTimeStamp    := DateTimeToSQLTimeStamp(Now) ;
 cds_LengthRuleRowDateModified.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmProduct.cds_LengthRuleRowBeforePost(DataSet: TDataSet);
begin
 cds_LengthRuleRowModifiedUser.AsInteger        := ThisUser.UserID ;
 cds_LengthRuleRowDateModified.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmProduct.mtFilterClientNoChange(Sender: TField);
begin
 cds_LengthRuleGrp.Filter    := 'ClientNo = '+mtFilterClientNo.AsString ;
 if ((ThisUser.CompanyNo = 741)
 or (ThisUser.CompanyNo = mtFilterClientNo.AsInteger)) then
 Begin
  cds_LengthRuleGrp.UpdateOptions.ReadOnly:= False ;
  cds_LengthRuleRow.UpdateOptions.ReadOnly:= False ;
 End
 else
 Begin
  cds_LengthRuleGrp.UpdateOptions.ReadOnly:= True ;
  cds_LengthRuleRow.UpdateOptions.ReadOnly:= True ;
 End ;
end;


end.
