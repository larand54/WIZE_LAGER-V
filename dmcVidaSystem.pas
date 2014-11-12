unit dmcVidaSystem;

interface

uses
  Classes,
  SysUtils,
  VidaType, DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;


type
  TdmcSystem = class(TDataModule)

    dsrcBarCodes: TDataSource;

    dsrcGradeStamps: TDataSource;
    dsrcPaperWraps: TDataSource;
    dsrcPhysInventory: TDataSource;
    dsrcLogicalInventory: TDataSource;
    ds_Products: TDataSource;
    ds_PkgProd_Rep: TDataSource;
    ds_InvoiceGroup: TDataSource;
    cds_InvoiceGroup: TFDQuery;
    cds_InvoiceGroupInvoiceGroupNo: TIntegerField;
    cds_InvoiceGroupOriginalInvNos: TStringField;
    cds_InvoiceGroupOrdernos: TStringField;
    cds_InvoiceGroupCreatedUser: TIntegerField;
    cds_InvoiceGroupModifiedUser: TIntegerField;
    cds_InvoiceGroupCreatedDate: TSQLTimeStampField;
    cds_InvoiceGroupModifiedDate: TSQLTimeStampField;
    cds_InvoiceGroupInvoiceText: TMemoField;
    cds_InvoiceGroupAddressName: TStringField;
    cds_InvoiceGroupAddressLine1: TStringField;
    cds_InvoiceGroupAddressLine2: TStringField;
    cds_InvoiceGroupAddressLine3: TStringField;
    cds_InvoiceGroupAddressLine4: TStringField;
    cds_InvoiceGroupStateOrProvince: TStringField;
    cds_InvoiceGroupPostalCode: TStringField;
    cds_InvoiceGroupCityName: TStringField;
    cds_InvoiceGroupCountryName: TStringField;
    cds_InvoiceGroupCustomerName: TStringField;
    cds_InvoiceGroupAgentname: TStringField;
    cds_InvoiceGroupST_AddressName: TStringField;
    cds_InvoiceGroupST_CityName: TStringField;
    cds_InvoiceGroupCarrierName: TStringField;
    cds_InvoiceGroupETD: TSQLTimeStampField;
    cds_InvoiceGroupETA: TSQLTimeStampField;
    cds_InvoiceGroupPaymentText: TMemoField;
    cds_InvoiceGroupDeliveryTerm: TStringField;
    cds_InvoiceGroupPaymentDescription: TStringField;
    cds_InvoiceGroupCurrencyName: TStringField;
    cds_InvoiceGroupSearchName: TStringField;
    cds_InvoiceGroupSUM_FreigthCost: TFloatField;
    cds_InvoiceGroupTotal_Product_Value_No_Freight: TFloatField;
    cds_InvoiceGroupInv_Value_To_Be_Paid_2: TFloatField;
    cds_PkgProd_Rep: TFDStoredProc;
    cds_PkgProd_RepUNIQUEKEY: TStringField;
    cds_PkgProd_RepProductionDate: TSQLTimeStampField;
    cds_PkgProd_RepClientName: TStringField;
    cds_PkgProd_RepPROD_UNIT: TStringField;
    cds_PkgProd_RepSTD_Length: TIntegerField;
    cds_PkgProd_RepINVENTORY: TStringField;
    cds_PkgProd_RepPRODUCT: TStringField;
    cds_PkgProd_RepPACKAGENO: TIntegerField;
    cds_PkgProd_RepSUPP_CODE: TStringField;
    cds_PkgProd_RepACT_THICK: TFloatField;
    cds_PkgProd_RepACT_WIDTH: TFloatField;
    cds_PkgProd_RepNOM_THICK: TFloatField;
    cds_PkgProd_RepNOM_WIDTH: TFloatField;
    cds_PkgProd_RepPCS_PER_LENGTH: TStringField;
    cds_PkgProd_RepL18: TIntegerField;
    cds_PkgProd_RepL21: TIntegerField;
    cds_PkgProd_RepL24: TIntegerField;
    cds_PkgProd_RepL27: TIntegerField;
    cds_PkgProd_RepL30: TIntegerField;
    cds_PkgProd_RepL33: TIntegerField;
    cds_PkgProd_RepL36: TIntegerField;
    cds_PkgProd_RepL39: TIntegerField;
    cds_PkgProd_RepL42: TIntegerField;
    cds_PkgProd_RepL45: TIntegerField;
    cds_PkgProd_RepL48: TIntegerField;
    cds_PkgProd_RepL51: TIntegerField;
    cds_PkgProd_RepL54: TIntegerField;
    cds_PkgProd_RepL57: TIntegerField;
    cds_PkgProd_RepL60: TIntegerField;
    cds_PkgProd_RepAM3: TFloatField;
    cds_PkgProd_RepNM3: TFloatField;
    cds_PkgProd_RepALPM: TFloatField;
    cds_PkgProd_RepMFBM: TFloatField;
    cds_PkgProd_RepKM2: TFloatField;
    cds_PkgProd_RepNO_OF_PCS: TIntegerField;
    cds_PkgProd_RepPhyInvPointNameNo: TIntegerField;
    cds_PkgProd_RepSupplierNo: TIntegerField;
    cds_PkgProd_RepClientCode: TStringField;
    cds_PkgProd_RepProductNo: TIntegerField;
    cds_PkgProd_RepPackageTypeNo: TIntegerField;
    cds_PkgProd_RepProductionUnitNo: TIntegerField;
    sq_GetProductDesc: TFDQuery;
    sq_GetProductDescProductNo: TIntegerField;
    sq_GetProductDescProductGroupNo: TIntegerField;
    sq_GetProductDescGradeName: TStringField;
    sq_GetProductDescSpeciesName: TStringField;
    sq_GetProductDescSurfacingName: TStringField;
    sq_GetProductDescProductCategoryName: TStringField;
    sq_GetProductDescActualThicknessMM: TFloatField;
    sq_GetProductDescActualWidthMM: TFloatField;
    sq_GetProductDescNominalThicknessMM: TFloatField;
    sq_GetProductDescNominalWidthMM: TFloatField;
    sq_GetProductDescProductDisplayName: TStringField;
    sq_GetProductDescGradeNo: TIntegerField;
    sq_GetProductDescSpeciesNo: TIntegerField;
    sq_GetProductDescProductCategoryNo: TIntegerField;
    sq_GetProductDescSurfacingNo: TIntegerField;
    sq_GetProductDescNominalThicknessINCH: TStringField;
    sq_GetProductDescNominalWidthINCH: TStringField;
    sq_PkgTypeForAvr: TFDQuery;
    cds_Products: TFDQuery;
    cds_ProductsProductNo: TIntegerField;
    cds_ProductsProductGroupNo: TIntegerField;
    cds_ProductsGradeName: TStringField;
    cds_ProductsSpeciesName: TStringField;
    cds_ProductsSurfacingName: TStringField;
    cds_ProductsProductCategoryName: TStringField;
    cds_ProductsActualThicknessMM: TFloatField;
    cds_ProductsActualWidthMM: TFloatField;
    cds_ProductsNominalThicknessMM: TFloatField;
    cds_ProductsNominalWidthMM: TFloatField;
    cds_ProductsProductDisplayName: TStringField;
    cds_ProductsGradeNo: TIntegerField;
    cds_ProductsSpeciesNo: TIntegerField;
    cds_ProductsProductCategoryNo: TIntegerField;
    cds_ProductsSurfacingNo: TIntegerField;
    cds_ProductsNominalThicknessINCH: TStringField;
    cds_ProductsNominalWidthINCH: TStringField;
    qryExec: TFDQuery;
    cdsLogInventory: TFDQuery;
    cdsPhysInventory: TFDQuery;
    cdsPaperWraps: TFDQuery;
    cdsGradeStamps: TFDQuery;
    cdsBarCodes: TFDQuery;
    sq_PkgType_InvoiceByLO: TFDQuery;
    sq_DelPkgType: TFDQuery;
    sq_PkgType_Invoice: TFDQuery;
    sq_AllRegPoints: TFDQuery;
    sq_AllRegPointsRegPointNo: TIntegerField;
    sq_AllRegPointsRegPointName: TStringField;
    sq_RegPoint: TFDQuery;
    sq_RegPointProductionUnitNo: TIntegerField;
    sq_RegPointProductionUnitName: TStringField;
    sq_RegPointRegistrationPointNo: TIntegerField;
    sq_LengthGroup: TFDQuery;
    sq_LengthGroupGroupNo: TIntegerField;
    sq_LengthGroupGroupName: TStringField;
    cds_Client: TFDQuery;
    cds_ClientClientNo: TIntegerField;
    cds_ClientClientName: TStringField;
    cds_ClientSearchName: TStringField;
    cds_verk: TFDQuery;
    cds_verkClientNo: TIntegerField;
    cds_verkClientName: TStringField;
    cds_verkSearchName: TStringField;
    cds_PhysInv: TFDQuery;
    cds_PhysInvOwnerNo: TIntegerField;
    cds_PhysInvPhysicalInventoryPointNo: TIntegerField;
    cds_PhysInvTypeOfInventory: TIntegerField;
    cds_PhysInvPhyInvPointNameNo: TIntegerField;
    cds_PhysInvSequenceNo: TIntegerField;
    cds_PhysInvDateCreated: TSQLTimeStampField;
    cds_PhysInvModifiedUser: TSmallintField;
    cds_PhysInvCreatedUser: TSmallintField;
    cds_PhysInvCityName: TStringField;
    cds_PIP: TFDQuery;
    cds_PIPPIPNo: TIntegerField;
    cds_PIPPhyInvPointNameNo: TIntegerField;
    cds_PIPCITYNAME: TStringField;
    cds_PIPOwnerNo: TIntegerField;
    cds_LIP: TFDQuery;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLIPName: TStringField;
    cds_LIPCityNo: TIntegerField;
    cds_LIPOwnerNo: TIntegerField;
    cds_LIPPIPNo: TIntegerField;
    sq_GetStdUserProfile: TFDQuery;
    sq_GetStdUserProfileForm: TStringField;
    sq_GetStdUserProfileName: TStringField;
    cds_UserProfile: TFDQuery;
    cds_UserProfileUserID: TIntegerField;
    cds_UserProfileForm: TStringField;
    cds_UserProfileName: TStringField;
    cds_UserProfileVerkNo: TIntegerField;
    cds_UserProfileOwnerNo: TIntegerField;
    cds_UserProfilePIPNo: TIntegerField;
    cds_UserProfileLIPNo: TIntegerField;
    cds_UserProfileInputOption: TIntegerField;
    cds_UserProfileRegPointNo: TIntegerField;
    cds_UserProfileRegDate: TSQLTimeStampField;
    cds_UserProfileCopyPcs: TIntegerField;
    cds_UserProfileRunNo: TIntegerField;
    cds_UserProfileProducerNo: TIntegerField;
    cds_UserProfileAutoColWidth: TIntegerField;
    cds_UserProfileSupplierCode: TStringField;
    cds_UserProfileLengthOption: TIntegerField;
    cds_UserProfileLengthGroupNo: TIntegerField;
    cds_UserProfileNewItemRow: TIntegerField;
    cds_UserProfileSalesRegionNo: TIntegerField;
    cds_UserProfileMarketRegionNo: TIntegerField;
    cds_UserProfileOrderTypeNo: TIntegerField;
    cds_UserProfileStatus: TIntegerField;
    cds_UserProfileFilterOrderDate: TIntegerField;
    cds_UserProfileStartPeriod: TSQLTimeStampField;
    cds_UserProfileEndPeriod: TSQLTimeStampField;
    cds_UserProfileClientNo: TIntegerField;
    cds_UserProfileSalesPersonNo: TIntegerField;
    cds_UserProfileVerkSupplierNo: TIntegerField;
    cds_UserProfileVerkKundNo: TIntegerField;
    cds_UserProfileLOObjectType: TIntegerField;
    cds_UserProfileBarCodeNo: TIntegerField;
    cds_UserProfileGradeStampNo: TIntegerField;
    cds_UserProfileVolumeUnitNo: TIntegerField;
    cds_UserProfileLengthFormatNo: TIntegerField;
    cds_UserProfileLengthVolUnitNo: TIntegerField;
    cds_UserProfileGroupByBox: TIntegerField;
    cds_UserProfileGroupSummary: TIntegerField;
    cds_UserProfileAgentNo: TIntegerField;
    cds_UserProfileLoadingLocationNo: TIntegerField;
    cds_UserProfileShipperNo: TIntegerField;
    cds_UserProfileBookingTypeNo: TIntegerField;
    cds_UserProfileCustomerNo: TIntegerField;
    cds_UserProfileShowProduct: TIntegerField;
    cds_UserProfileFilter1: TStringField;
    cds_UserProfileLoadingLocation: TStringField;
    cds_UserProfileVerk: TStringField;
    cds_UserProfileKund: TStringField;
    cds_UserProfilePIP: TStringField;
    cds_UserProfileLIP: TStringField;
    ds_UserProfile: TDataSource;
    procedure cds_UserProfileAfterInsert(DataSet: TDataSet);

  private
    { Private declarations }
  public
    function  GetUserProfileName : String ;
    procedure OpenUserProfile ;
    Function  GetProductDescProductDisplayName (const ProductNo : Integer;Var ProductGroupNo : Integer) : String ;



    function AccessRights(
      const UserName  : String;
      const UserPswd  : String ) : TUserSpec;

    function LogOnToDatabase(
      HostName   : string;
      Database   : string;
      DBUserName : string;
      DBUserPswd : string
      ) : Boolean;

  end;

var
  dmcSystem: TdmcSystem;

implementation

{$R *.dfm}

uses
  dmsVidaSystem, dmsDataConn,VidaUser ;


{ TdmcSystem }
function TdmcSystem.AccessRights(
  const UserName  : String;
  const UserPswd  : String ) : TUserSpec;
begin
  Result := dmsSystem.AccessRights(UserName, UserPswd)
end;                    

function TdmcSystem.LogOnToDatabase(HostName, Database, DBUserName, DBUserPswd: string) : Boolean;
begin
  Result := dmsSystem.LogOnToDatabase(HostName, Database, DBUserName, DBUserPswd);
end;

procedure TdmcSystem.cds_UserProfileAfterInsert(DataSet: TDataSet);
begin
 cds_UserProfileUserID.AsInteger            := ThisUser.UserID ;
 cds_UserProfileForm.AsString               := 'VIS_LAGER' ;
end;

Function TdmcSystem.GetProductDescProductDisplayName (const ProductNo : Integer;Var ProductGroupNo : Integer) : String ;
Begin
 sq_GetProductDesc.ParamByName('ProductNo').AsInteger:= ProductNo ;
 sq_GetProductDesc.Open ;
 if not sq_GetProductDesc.Eof then
 Begin
  Result          := sq_GetProductDescProductDisplayName.AsString ;
  ProductGroupNo  := sq_GetProductDescProductGroupNo.AsInteger ;
//  ProductNo       := sq_GetProductDescProductNo.AsInteger ;
 End
 else
 Begin
  Result          := '' ;
  ProductGroupNo  := -1 ;
//  ProductNo       := -1 ;
 End ;
 sq_GetProductDesc.Close ;
End ;

procedure TdmcSystem.OpenUserProfile ;
Begin
 cds_PhysInv.Active := not cds_PhysInv.Active ;
 cds_PIP.Active     := not cds_PIP.Active ;
 cds_LIP.Active     := not cds_LIP.Active ;
 cds_UserProfile.Active := False ;
 cds_UserProfile.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
 cds_UserProfile.ParamByName('Form').AsString     := 'VIS_LAGER' ;
 cds_UserProfile.Active := True ;
End;

function TdmcSystem.GetUserProfileName : String ;
Begin
 sq_GetStdUserProfile.Active := False ;
 sq_GetStdUserProfile.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
 sq_GetStdUserProfile.ParamByName('Form').AsString     := 'VIS_LAGER' ;
 sq_GetStdUserProfile.Active := True ;
 Try
 if not sq_GetStdUserProfile.Eof then
  Result  := sq_GetStdUserProfileName.AsString
   else
    Result := 'NA' ;
 Finally
  sq_GetStdUserProfile.Active := False ;
 End ;
End;



end.
