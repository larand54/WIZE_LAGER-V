unit dmcVidaSystem;

interface

uses
  Classes,
  SysUtils,
  VidaType, DB, DBClient, FMTBcd, SqlExpr, Provider;


type
  TdmcSystem = class(TDataModule)

    dsrcBarCodes: TDataSource;
    cdsBarCodes: TClientDataSet;
    cdsBarCodesBarCodeNo : TIntegerField;
    cdsBarCodesBarCode   : TStringField;

    dsrcGradeStamps: TDataSource;
    cdsGradeStamps: TClientDataSet;
    cdsGradeStampsGradeStampNo : TIntegerField;
    cdsGradeStampsGradeStamp   : TStringField;
    dsrcPaperWraps: TDataSource;
    cdsPaperWraps: TClientDataSet;
    cdsPaperWrapsWrapTypeNo : TIntegerField;
    cdsPaperWrapsWrapType   : TStringField;
    cdsPhysInventory: TClientDataSet;
    dsrcPhysInventory: TDataSource;
    cdsPhysInventoryPhyInvPointNameNo: TIntegerField;
    cdsPhysInventoryCityName: TStringField;
    cdsPhysInventoryPhysicalInventoryPointNo: TIntegerField;
    cdsLogInventory: TClientDataSet;
    dsrcLogicalInventory: TDataSource;
    cdsLogInventoryLogicalInventoryPointNo: TIntegerField;
    cdsLogInventoryLogicalInventoryName: TStringField;
    cdsLogInventoryPhysicalInventoryPointNo: TIntegerField;
    sq_Products: TSQLQuery;
    dsp_Products: TDataSetProvider;
    cds_Products: TClientDataSet;
    cds_ProductsProductNo: TIntegerField;
    cds_ProductsProductDisplayName: TStringField;
    cds_ProductsActualWidthMM: TFloatField;
    cds_ProductsActualThicknessMM: TFloatField;
    cds_ProductsProductGroupNo: TIntegerField;
    cds_ProductsNominalThicknessMM: TFloatField;
    cds_ProductsNominalWidthMM: TFloatField;
    cds_ProductsGradeName: TStringField;
    cds_ProductsSpeciesName: TStringField;
    cds_ProductsSurfacingName: TStringField;
    cds_ProductsProductCategoryName: TStringField;
    cds_ProductsGradeNo: TIntegerField;
    cds_ProductsSpeciesNo: TIntegerField;
    cds_ProductsProductCategoryNo: TIntegerField;
    cds_ProductsSurfacingNo: TIntegerField;
    ds_Products: TDataSource;
    sq_LengthGroup: TSQLQuery;
    sq_LengthGroupGroupNo: TIntegerField;
    sq_LengthGroupGroupName: TStringField;
    sq_RegPoint: TSQLQuery;
    sq_PkgType_InvoiceByCSD: TSQLQuery;
    sq_RegPointProductionUnitNo: TIntegerField;
    sq_RegPointProductionUnitName: TStringField;
    cds_ProductsNominalThicknessINCH: TStringField;
    cds_ProductsNominalWidthINCH: TStringField;
    sq_RegPointRegistrationPointNo: TIntegerField;
    sp_PkgProd_Rep: TSQLStoredProc;
    dsp_PkgProd_Rep: TDataSetProvider;
    cds_PkgProd_Rep: TClientDataSet;
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
    ds_PkgProd_Rep: TDataSource;
    sq_AllRegPoints: TSQLQuery;
    sq_AllRegPointsRegPointNo: TIntegerField;
    sq_AllRegPointsRegPointName: TStringField;
    sq_InvoiceGroup: TSQLQuery;
    dsp_InvoiceGroup: TDataSetProvider;
    cds_InvoiceGroup: TClientDataSet;
    cds_InvoiceGroupInvoiceGroupNo: TIntegerField;
    cds_InvoiceGroupCreatedUser: TIntegerField;
    cds_InvoiceGroupModifiedUser: TIntegerField;
    cds_InvoiceGroupCreatedDate: TSQLTimeStampField;
    cds_InvoiceGroupModifiedDate: TSQLTimeStampField;
    cds_InvoiceGroupOriginalInvNos: TStringField;
    cds_InvoiceGroupOrdernos: TStringField;
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
    ds_InvoiceGroup: TDataSource;
    sq_InvoiceGroupInvoiceGroupNo: TIntegerField;
    sq_InvoiceGroupOriginalInvNos: TStringField;
    sq_InvoiceGroupOrdernos: TStringField;
    sq_InvoiceGroupCreatedUser: TIntegerField;
    sq_InvoiceGroupModifiedUser: TIntegerField;
    sq_InvoiceGroupCreatedDate: TSQLTimeStampField;
    sq_InvoiceGroupModifiedDate: TSQLTimeStampField;
    sq_InvoiceGroupInvoiceText: TMemoField;
    sq_InvoiceGroupAddressName: TStringField;
    sq_InvoiceGroupAddressLine1: TStringField;
    sq_InvoiceGroupAddressLine2: TStringField;
    sq_InvoiceGroupAddressLine3: TStringField;
    sq_InvoiceGroupAddressLine4: TStringField;
    sq_InvoiceGroupStateOrProvince: TStringField;
    sq_InvoiceGroupPostalCode: TStringField;
    sq_InvoiceGroupCityName: TStringField;
    sq_InvoiceGroupCountryName: TStringField;
    sq_InvoiceGroupCustomerName: TStringField;
    sq_InvoiceGroupAgentname: TStringField;
    sq_InvoiceGroupST_AddressName: TStringField;
    sq_InvoiceGroupST_CityName: TStringField;
    sq_InvoiceGroupCarrierName: TStringField;
    sq_InvoiceGroupETD: TSQLTimeStampField;
    sq_InvoiceGroupETA: TSQLTimeStampField;
    sq_InvoiceGroupPaymentText: TMemoField;
    sq_InvoiceGroupDeliveryTerm: TStringField;
    sq_InvoiceGroupPaymentDescription: TStringField;
    sq_InvoiceGroupCurrencyName: TStringField;
    sq_InvoiceGroupSearchName: TStringField;
    sq_InvoiceGroupSUM_FreigthCost: TFloatField;
    sq_InvoiceGroupTotal_Product_Value_No_Freight: TFloatField;
    sq_InvoiceGroupInv_Value_To_Be_Paid_2: TFloatField;
    sq_PkgTypeForAvr: TSQLQuery;
    cdsGradeStampsAct: TIntegerField;
    cdsBarCodesAct: TIntegerField;
    sq_DelPkgType: TSQLQuery;
    sq_PkgType_InvoiceByLO: TSQLQuery;
    sq_GetProductDesc: TSQLQuery;
    sq_GetProductDescProductDisplayName: TStringField;
    sq_GetProductDescProductGroupNo: TIntegerField;
    sq_GetProductDescProductNo: TIntegerField;
    procedure cds_InvoiceGroupReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);

  private
    function getLogActive: Boolean;
    procedure setLogActive(const Value: Boolean);
    function getLogFile: string;
    procedure setLogFile(const Value: string);
    { Private declarations }
  public
    procedure LoadRegPoint (Strings : TStrings;const ClientNo : Integer) ;
    procedure LoadAllRegPoints (Strings : TStrings) ;
    procedure LoadLengthGroup(Strings : TStrings);
    function AccessRights(
      const UserName  : String;
      const UserPswd  : String ) : TUserSpec;

    function LogOnToDatabase(
      HostName   : string;
      Database   : string;
      DBUserName : string;
      DBUserPswd : string
      ) : Boolean;
    procedure LoadBarCodes   ( Strings : TStrings );
    procedure LoadGradeStamps( Strings : TStrings );
    procedure LoadWrapTypes  ( Strings : TStrings );


    procedure OpenLogInventory;
    procedure OpenPhysInventory(OwnerNo : Integer);
    procedure SetLogInvFilter(PhysInvPtNo : Integer);
    Function  GetProductDescProductDisplayName (const ProductNo : Integer;Var ProductGroupNo : Integer) : String ;

    Property LogActive : Boolean read getLogActive write setLogActive;
    property LogFile   : string  read getLogFile   write setLogFile;


  end;

var
  dmcSystem: TdmcSystem;

implementation

{$R *.dfm}

uses
  dmsVidaSystem, dmsDataConn, recerror ;


{ TdmcSystem }
function TdmcSystem.AccessRights(
  const UserName  : String;
  const UserPswd  : String ) : TUserSpec;
begin
  Result := dmsSystem.AccessRights(UserName, UserPswd)
end;                    

function TdmcSystem.getLogActive: Boolean;
begin
  Result := dmsSystem.LogActive;
end;

function TdmcSystem.getLogFile: string;
begin
  Result := dmsSystem.LogFile;
end;

procedure TdmcSystem.LoadBarCodes(Strings: TStrings);
begin
  // Open the bar codes table
  cdsBarCodes.Close;
  dmsSystem.LoadBarCodes;
  cdsBarCodes.SetProvider(dmsSystem.provBarCodes);
  cdsBarCodes.Open;
  cdsBarCodes.Filter:= 'Act = 1' ;
  cdsBarCodes.Filtered:= True ;

  // Load the bar codes into the strings object passed as parameter.
  // Include the code value in the objects field (integer cast as object)
  if Strings <> nil then begin
    cdsBarCodes.First;
    while not cdsBarCodes.Eof do begin
      Strings.AddObject(
        cdsBarCodesBarCode.AsString,
        TObject(cdsBarCodesBarCodeNo.AsInteger)
        );
      cdsBarCodes.Next;
      end;
    end;
end;

procedure TdmcSystem.LoadGradeStamps(Strings: TStrings);
begin
  // Open the bar codes table
  cdsGradeStamps.Close;
  dmsSystem.LoadGradeStamps;
  cdsGradeStamps.SetProvider(dmsSystem.provGradeStamps);
  cdsGradeStamps.Open;
  cdsGradeStamps.Filter:= 'Act = 1' ;
  cdsGradeStamps.Filtered:= True ;
  // Load the data into the strings object passed as parameter.
  // Include the code value in the objects field (integer cast as object)
  if Strings <> nil then begin
    cdsGradeStamps.First;
    while not cdsGradeStamps.Eof do begin
      Strings.AddObject(
        cdsGradeStampsGradeStamp.AsString,
        TObject(cdsGradeStampsGradeStampNo.AsInteger)
        );
      cdsGradeStamps.Next;
      end;
    end;
end;





procedure TdmcSystem.LoadWrapTypes(Strings: TStrings);
begin
  // Open the bar codes table
  cdsPaperWraps.Close;
  dmsSystem.LoadWrapTypes;
  cdsPaperWraps.SetProvider(dmsSystem.provPaperWraps);
  cdsPaperWraps.Open;

  // Load the bar codes into the strings object passed as parameter.
  // Include the code value in the objects field (integer cast as object)
  if Strings <> nil then begin
    cdsPaperWraps.First;
    while not cdsPaperWraps.Eof do begin
      Strings.AddObject(
        cdsPaperWrapsWrapType.AsString,
        TObject(cdsPaperWrapsWrapTypeNo.AsInteger)
        );
      cdsPaperWraps.Next;
      end;
    end;
end;


function TdmcSystem.LogOnToDatabase(HostName, Database, DBUserName, DBUserPswd: string) : Boolean;
begin
  Result := dmsSystem.LogOnToDatabase(HostName, Database, DBUserName, DBUserPswd);
end;

procedure TdmcSystem.OpenLogInventory;
begin
  cdsLogInventory.Close;
  dmsSystem.OpenLogInventory;
  cdsLogInventory.SetProvider(dmsSystem.provLogInventory);
  cdsLogInventory.Open;
end;

procedure TdmcSystem.OpenPhysInventory(OwnerNo : Integer);
begin
  cdsPhysInventory.Close;
  dmsSystem.OpenPhysInventory(OwnerNo);
  cdsPhysInventory.SetProvider(dmsSystem.provPhysInventory);
  cdsPhysInventory.Open;
//  dmsSystem.OpenPhysInventory(OwnerNo);
end;

procedure TdmcSystem.setLogActive(const Value: Boolean);
begin
  dmsSystem.LogActive := Value;
end;

procedure TdmcSystem.setLogFile(const Value: string);
begin
  dmsSystem.LogFile := Value;
end;

procedure TdmcSystem.SetLogInvFilter(PhysInvPtNo: Integer);
begin
  cdsLogInventory.Filter := Format('PhysicalInventoryPointNo = %d',[PhysInvPtNo]);
end;

procedure TdmcSystem.LoadLengthGroup(Strings : TStrings);
begin

  sq_LengthGroup.Open;
  try
    sq_LengthGroup.First;
    while not sq_LengthGroup.Eof do begin
      Strings.AddObject(
        sq_LengthGroupGroupName.AsString,
        TObject(sq_LengthGroupGroupNo.AsInteger)
        );
      sq_LengthGroup.Next;
      end;
  finally
    sq_LengthGroup.Close;
  end;
end;

procedure TdmcSystem.LoadRegPoint (Strings : TStrings;const ClientNo : Integer) ;
begin
sq_RegPoint.ParamByName('ClientNo').AsInteger:= ClientNo ;
  sq_RegPoint.Open;
  try
    sq_RegPoint.First;
    while not sq_RegPoint.Eof do begin
      Strings.AddObject(
        sq_RegPointProductionUnitName.AsString,
        TObject(sq_RegPointRegistrationPointNo.AsInteger)
        );
      sq_RegPoint.Next;
      end;
  finally
    sq_RegPoint.Close;
  end;
end;

procedure TdmcSystem.LoadAllRegPoints (Strings : TStrings) ;
begin
  sq_AllRegPoints.Open;
  try
    sq_AllRegPoints.First;
    while not sq_AllRegPoints.Eof do begin
      Strings.AddObject(
        sq_AllRegPointsRegPointName.AsString,
        TObject(sq_AllRegPointsRegPointNo.AsInteger)
        );
      sq_AllRegPoints.Next;
      end;
  finally
    sq_AllRegPoints.Close;
  end;
end;


procedure TdmcSystem.cds_InvoiceGroupReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E) ;
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



end.
