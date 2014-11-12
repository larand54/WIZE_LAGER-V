// =============================================================================
//
//  FILE           :  dmsVidaContact.pas
//
//  LANGUAGE       :  Delphi / Object Pascal
//
//  ENVIRONMENT    :  Target is any 32-bit Windows environment.
//                    Written & tested using Windows NT 4.0
//
//  SYSTEM         :  Vida Information System
//
//  PURPOSE        :  Server-side data module, provides access to
//                    contact-related data.
//                    The only access to this module should be through
//                    pas so if you USE this module from
//                    any other unit, you are probably doing something
//                    wrong.
//
//  NOTES          :  If the  app is ever moved to multi-tier, this
//                    data module should be used in the server app.
//
//
//
//
//
//
//
//
//
// -----------------------------------------------------------------------------
//  DATE        AUTHOR    REF     COMMENTS
// -----------------------------------------------------------------------------
//  2002.12.09  DMc       001     Initial development
//  2002.12.10  DMc       002     Re-wrote LoadSuppliers to fill a supplied
//                                TStrings object with supplier names & numbers
//
//                                Handled for provider's OnGetData event - see
//                                provSawMillLoadOrdersGetTableName - so that
//                                DB can be updated even though using a stored
//                                procedure. Had a few problems with 'update
//                                affected more than one record" & had to adjust
//                                provider flags.
//
// -----------------------------------------------------------------------------

unit dmsVidaContact;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient,
  VidaType, SqlTimSt ;

type
  TdmsContact = class(TDataModule)
    provSuppliers : TDataSetProvider;
    sp_Suppliers: TSQLStoredProc;
    sp_Regions: TSQLStoredProc;
    provRegions: TDataSetProvider;
    sp_Users: TSQLStoredProc;
    provUsers: TDataSetProvider;
    sp_Carriers: TSQLStoredProc;
    provCarriers: TDataSetProvider;
    sp_Clients: TSQLStoredProc;
    provClients: TDataSetProvider;
    sp_MarketRegions: TSQLStoredProc;
    provMarketRegions: TDataSetProvider;
    sp_Shippers: TSQLStoredProc;
    sp_ShippersClientNo: TIntegerField;
    sp_ShippersClientName: TStringField;
    provShippers: TDataSetProvider;
    cdsSuppliers: TClientDataSet;
    cdsSuppliersClientNo: TIntegerField;
    cdsSuppliersClientName: TStringField;
    dsrcSuppliers: TDataSource;
    cdsShippers: TClientDataSet;
    cdsShippersClientNo: TIntegerField;
    cdsShippersClientName: TStringField;
    dsrcShippers: TDataSource;
    cdsOwners: TClientDataSet;
    cdsOwnersClientNo: TIntegerField;
    cdsOwnersClientName: TStringField;
    cdsOwnersClientCode: TStringField;
    cdsOwnersSalesRegionNo: TIntegerField;
    dsrcOwners: TDataSource;
    cdsProducers: TClientDataSet;
    cdsProducersClientNo: TIntegerField;
    cdsProducersClientName: TStringField;
    dsrcProducers: TDataSource;
    sp_Owners: TSQLStoredProc;
    provOwners: TDataSetProvider;
    sp_Cities: TSQLStoredProc;
    sp_CitiesCityNo: TIntegerField;
    sp_CitiesCityName: TStringField;
    provCities: TDataSetProvider;
    cdsCities: TClientDataSet;
    cdsCitiesCityNo: TIntegerField;
    cdsCitiesCityName: TStringField;
    dsrcCities: TDataSource;
    sp_AddressAndReference: TSQLStoredProc;
    provAddressAndReference: TDataSetProvider;
    cdsAddressAndReference: TClientDataSet;
    cdsAddressAndReferenceAddress: TStringField;
    cdsAddressAndReferenceDestination: TStringField;
    cdsAddressAndReferenceReference: TStringField;
    dsrcAddressAndReference: TDataSource;
    sp_Producers: TSQLStoredProc;
    provProducers: TDataSetProvider;
    sp_ClientCode: TSQLStoredProc;
    sp_ClientCodeClientCode: TStringField;
    sp_Customers: TSQLStoredProc;
    provCustomers: TDataSetProvider;
    sp_Transfer: TSQLStoredProc;
    sp_BookingTypes: TSQLStoredProc;
    sp_SR_Supplier: TSQLStoredProc;
    sq_invOwner: TSQLQuery;
    sp_Int_and_Lego: TSQLStoredProc;
    sp_ProductionUnits: TSQLStoredProc;
    sp_ProductionUnitsProductionUnitNo: TIntegerField;
    sp_ProductionUnitsProductionUnitName: TStringField;
    sq_ProductionUnit: TSQLQuery;
    dsp_ProductionUnit: TDataSetProvider;
    cds_ProductionUnit: TClientDataSet;
    ds_ProductionUnit: TDataSource;
    cds_ProductionUnitProductionUnitNo: TIntegerField;
    cds_ProductionUnitProductionUnitName: TStringField;
    cds_ProductionUnitClientNo: TIntegerField;
    cds_ProductionUnitSequenceNo: TIntegerField;
    cds_ProductionUnitCreatedUser: TIntegerField;
    cds_ProductionUnitModifiedUser: TIntegerField;
    cds_ProductionUnitDateCreated: TSQLTimeStampField;
    cds_ProductionUnitLogicalInventoryPointNo: TIntegerField;
    sq_ProductionUnitProductionUnitNo: TIntegerField;
    sq_ProductionUnitProductionUnitName: TStringField;
    sq_ProductionUnitClientNo: TIntegerField;
    sq_ProductionUnitSequenceNo: TIntegerField;
    sq_ProductionUnitCreatedUser: TIntegerField;
    sq_ProductionUnitModifiedUser: TIntegerField;
    sq_ProductionUnitDateCreated: TSQLTimeStampField;
    sq_ProductionUnitLogicalInventoryPointNo: TIntegerField;
    sq_LogInv: TSQLQuery;
    dsp_LogInv: TDataSetProvider;
    cds_LogInv: TClientDataSet;
    cds_LogInvLogicalInventoryPointNo: TIntegerField;
    cds_LogInvLogicalInventoryName: TStringField;
    cds_ProductionUnitInventory: TStringField;
    cds_LogInvOwnerNo: TIntegerField;
    cds_LogInvInventory: TStringField;
    sq_RegPoints: TSQLQuery;
    dsp_RegPoints: TDataSetProvider;
    cds_RegPoints: TClientDataSet;
    cds_RegPointsRegPointNo: TIntegerField;
    cds_RegPointsRegPointName: TStringField;
    sq_ProductionUnitRegistrationPointNo: TIntegerField;
    cds_ProductionUnitRegistrationPointNo: TIntegerField;
    cds_ProductionUnitRegPoint: TStringField;
    sq_ProductionUnitOnSticks: TIntegerField;
    cds_ProductionUnitOnSticks: TIntegerField;
    sp_PhysInvByCityNo: TSQLStoredProc;
    sq_ProductionUnitSurfacingNo: TIntegerField;
    sq_ProductionUnitDIM_DIV: TIntegerField;
    cds_ProductionUnitSurfacingNo: TIntegerField;
    cds_ProductionUnitDIM_DIV: TIntegerField;
    sq_PhysInv: TSQLQuery;
    dsp_PhysInv: TDataSetProvider;
    cds_PhysInv: TClientDataSet;
    cds_PhysInvOwnerNo: TIntegerField;
    cds_PhysInvPhysicalInventoryPointNo: TIntegerField;
    cds_PhysInvTypeOfInventory: TIntegerField;
    cds_PhysInvPhyInvPointNameNo: TIntegerField;
    cds_PhysInvSequenceNo: TIntegerField;
    cds_PhysInvDateCreated: TSQLTimeStampField;
    cds_PhysInvModifiedUser: TIntegerField;
    cds_PhysInvCreatedUser: TIntegerField;
    sq_PhysInvOwnerNo: TIntegerField;
    sq_PhysInvPhysicalInventoryPointNo: TIntegerField;
    sq_PhysInvTypeOfInventory: TIntegerField;
    sq_PhysInvPhyInvPointNameNo: TIntegerField;
    sq_PhysInvSequenceNo: TIntegerField;
    sq_PhysInvDateCreated: TSQLTimeStampField;
    sq_PhysInvModifiedUser: TIntegerField;
    sq_PhysInvCreatedUser: TIntegerField;
    sq_LogicalInv: TSQLQuery;
    dsp_LogicalInv: TDataSetProvider;
    cds_LogicalInv: TClientDataSet;
    ds_PhysInv: TDataSource;
    ds_LogicalInv: TDataSource;
    sq_LogicalInvLogicalInventoryPointNo: TIntegerField;
    sq_LogicalInvPhysicalInventoryPointNo: TIntegerField;
    sq_LogicalInvLogicalInventoryName: TStringField;
    sq_LogicalInvSequenceNo: TIntegerField;
    sq_LogicalInvDateCreated: TSQLTimeStampField;
    sq_LogicalInvModifiedUser: TIntegerField;
    sq_LogicalInvCreatedUser: TIntegerField;
    cds_PhysInvORT: TStringField;
    cds_LogicalInvLogicalInventoryPointNo: TIntegerField;
    cds_LogicalInvPhysicalInventoryPointNo: TIntegerField;
    cds_LogicalInvLogicalInventoryName: TStringField;
    cds_LogicalInvSequenceNo: TIntegerField;
    cds_LogicalInvDateCreated: TSQLTimeStampField;
    cds_LogicalInvModifiedUser: TIntegerField;
    cds_LogicalInvCreatedUser: TIntegerField;
    procedure provSawMillLoadOrders1111GetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cds_ProductionUnitReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cds_ProductionUnitAfterInsert(DataSet: TDataSet);
    procedure cds_PhysInvReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_LogicalInvReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_PhysInvAfterInsert(DataSet: TDataSet);
    procedure cds_LogicalInvAfterInsert(DataSet: TDataSet);
    procedure cds_PhysInvAfterPost(DataSet: TDataSet);
    procedure cds_PhysInvAfterScroll(DataSet: TDataSet);

  private

//    procedure setSupplierNo(const Value: integer);

  public
    fClientNo : Integer ;
    procedure LoadPhysInvByCityNo(Strings: TStrings; OwnerNo : Integer);
    function  SuppNoToSuppCode(SupplierNo : Integer) : String3;
    procedure CloseCustomers;
    procedure CloseShippers;
    procedure OpenShippers;
    procedure LoadShippers (Strings: TStrings);
    procedure OpenOwners;
    procedure OpenProducers;
    function  SuppNoToTransferInv(SupplierNo : Integer) : Integer;

    procedure LoadCustomers;

    function  GetClientCode(ClientNo: Integer) : String3;
    procedure LoadUsers(Strings : TStrings);
    procedure LoadClients(Strings : TStrings;RoleType : Integer);
    procedure LoadCarriers(Strings : TStrings);
    procedure LoadSuppliers(Strings : TStrings);
    procedure Load_SR_Suppliers(SalesRegionNo : Integer; Strings : TStrings);
    procedure LoadRegions(Strings : TStrings);
    procedure LoadMarketRegions(Strings : TStrings);
    procedure LoadCities(Strings: TStrings);
    procedure LoadBookingTypes(Strings: TStrings);
//    property  SupplierNo : integer write setSupplierNo; // Write-only !
    procedure Load_InvOwner(Strings : TStrings);
    procedure Load_Int_and_Lego(Strings : TStrings) ;
    procedure Load_ProductionUnits(Strings : TStrings;ClientNo : Integer) ;

  end;

var
  dmsContact : TdmsContact;

implementation

uses dmsDataConn, fReconsile, VidaUser ;

{$R *.dfm}



{ TdmsContact }


procedure LoadLookupTable(StoredProc: TSQLStoredProc; StringFieldName: String;
                          CodeFieldName: String; Strings: TStrings);
begin
  StoredProc.Open;
  try

    StoredProc.First;
    while not StoredProc.Eof do begin
      Strings.AddObject(StoredProc.FieldByName(StringFieldName).AsString,
                        TObject(StoredProc.FieldByName(CodeFieldName).AsInteger));
      StoredProc.Next
      end;

  finally
    StoredProc.close
    end;
end;


procedure TdmsContact.LoadUsers(Strings : TStrings);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
  sp_Users.Open;
  try
    sp_Users.First;
    while not sp_Users.Eof do begin
      Strings.AddObject(
        sp_Users.FieldByname('UserName').AsString,
        TObject(sp_Users.FieldByName('UserID').AsInteger)
        );
      sp_Users.Next;
      end;
  finally
    sp_Users.Close;
    end;
end;


procedure TdmsContact.LoadSuppliers(Strings : TStrings);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
  sp_Suppliers.ParamByName('Client').AsInteger:= - 1 ;
  sp_Suppliers.Open;
  try
    sp_Suppliers.First;
    while not sp_Suppliers.Eof do begin
      Strings.AddObject(
        sp_Suppliers.FieldByname('ClientName').AsString,
        TObject(sp_Suppliers.FieldByName('ClientNo').AsInteger)
        );
      sp_Suppliers.Next;
      end;
  finally
    sp_Suppliers.Close;
    end;
end;

(*procedure TdmsContact.setSupplierNo(const Value: integer);
// Accessor method for SupplierNo property.
// Set by Load Orders form to ensure supplier shipping plans are retrieved
// for the appropriate supplier.

begin
  sp_SawmillLoadOrders.Close;
  sp_SawmillLoadOrders.ParamByName('Supplier').AsInteger := Value;
  sp_SawmillLoadOrders.Open;

  sp_SawmillLoadOrders.First;
  while not sp_SawmillLoadOrders.Eof do begin

    sp_SawmillLoadOrders.Next;
    end;
end; *)

procedure TdmsContact.provSawMillLoadOrders1111GetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName := 'SupplierShippingPlan';
end;

procedure TdmsContact.LoadRegions(Strings : TStrings);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
  sp_Regions.ParamByName('RoleType').AsInteger:= 7 ;
  sp_Regions.Open;
  try
    sp_Regions.First;
    while not sp_Regions.Eof do begin
      Strings.AddObject(
        sp_Regions.FieldByname('ClientName').AsString,
        TObject(sp_Regions.FieldByName('ClientNo').AsInteger)
        );
      sp_Regions.Next;
      end;
  finally
    sp_Regions.Close;
    end;
end;


procedure TdmsContact.LoadMarketRegions(Strings : TStrings);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
//  sp_MarketRegions.ParamByName('RoleType').AsInteger:= 7 ;
  sp_MarketRegions.Open;
  try
    sp_MarketRegions.First;
    while not sp_MarketRegions.Eof do begin
      Strings.AddObject(
        sp_MarketRegions.FieldByname('MarketRegionName').AsString,
        TObject(sp_MarketRegions.FieldByName('MarketRegionNo').AsInteger)
        );
      sp_MarketRegions.Next;
      end;
  finally
    sp_MarketRegions.Close;
    end;
end;

procedure TdmsContact.LoadCarriers(Strings : TStrings);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
  sp_Carriers.Open;
  try
    sp_Carriers.First;
    while not sp_Carriers.Eof do begin
      Strings.AddObject(
        sp_Carriers.FieldByname('CarrierName').AsString,
        TObject(sp_Carriers.FieldByName('CarrierNo').AsInteger)
        );
      sp_Carriers.Next;
      end;
  finally
    sp_Carriers.Close;
    end;
end;


procedure TdmsContact.LoadClients(Strings : TStrings;RoleType : Integer);
//
// Strings parameter is loaded with a list of names of all known
// suppliers. The ClientNo for each is held in the associated
// Objects property of the strings. (The integer is typecast as
// a TObject for prior to adding to the list).
//
begin
  sp_Clients.ParamByName('RoleType').AsInteger:= RoleType ; //1 customer / kund
  sp_Clients.Open;
  try
    sp_Clients.First;
    while not sp_Clients.Eof do begin
      Strings.AddObject(
        sp_Clients.FieldByname('ClientName').AsString,
        TObject(sp_Clients.FieldByName('ClientNo').AsInteger)
        );
      sp_Clients.Next;
      end;
  finally
    sp_Clients.Close;
    end;
end;

function  TdmsContact.GetClientCode(ClientNo: Integer) : String3;
Begin
 sp_ClientCode.ParamByName('ClientNo').AsInteger:= ClientNo ;
 sp_ClientCode.Open ;
 if not sp_ClientCode.Eof then
  Result:= sp_ClientCodeClientCode.AsString
  else
   Result:= '' ;
 sp_ClientCode.Close ;
End ;

procedure TdmsContact.CloseShippers;
begin
  sp_Shippers.close
end;


procedure TdmsContact.OpenShippers;
begin
  sp_Shippers.Open
end;

procedure TdmsContact.CloseCustomers;
begin
  sp_Customers.Close;
end;

procedure TdmsContact.LoadShippers(Strings: TStrings);
begin
  LoadLookupTable(sp_Shippers, 'ClientName', 'Clientno', Strings)
end;

function TdmsContact.SuppNoToSuppCode(SupplierNo: Integer): String3;
begin
  sp_Suppliers.Close;
  sp_Suppliers.ParamByName('Client').AsInteger := SupplierNo;
  sp_Suppliers.Open;
  try
    sp_Suppliers.First;
    if not sp_Suppliers.Eof then
      Result := trim(sp_Suppliers.FieldValues['ClientCode'])
    else
      Result := '';
  finally
    sp_Suppliers.Close;
    end;
end;

procedure TdmsContact.OpenOwners;
begin
  sp_Owners.Open;
  sp_Owners.First;
  while not sp_Owners.Eof do
    sp_Owners.Next;
end;

procedure TdmsContact.OpenProducers;
begin
  sp_Producers.Open;
end;

function TdmsContact.SuppNoToTransferInv(SupplierNo: Integer): Integer;
begin
  sp_Transfer.Close;
  sp_Transfer.ParamByName('SupplierNo').AsInteger := SupplierNo;
  sp_Transfer.Open;
  try
    sp_Transfer.First;
    if not sp_Transfer.Eof then
      Result := sp_Transfer.FieldValues['LogicalInventoryPointNo']
    else
      Result := -1;
  finally
    sp_Transfer.Close;
    end;
end;


procedure TdmsContact.LoadCustomers;
begin
  sp_Customers.Open;
  sp_customers.First;
  while not sp_customers.Eof do
    sp_customers.Next;
end;


procedure TdmsContact.LoadCities(Strings: TStrings);
begin
  LoadLookupTable(sp_Cities, 'CityName', 'CityNo', Strings)
end;

procedure TdmsContact.LoadBookingTypes(Strings: TStrings);
begin
  LoadLookupTable(sp_BookingTypes, 'BookingType', 'BookingTypeNo', Strings)
end;

procedure TdmsContact.Load_SR_Suppliers(SalesRegionNo : Integer; Strings : TStrings);

//
begin
  sp_SR_Supplier.ParamByName('SalesRegionNo').AsInteger:= SalesRegionNo ;
  sp_SR_Supplier.Open;
  try
    sp_SR_Supplier.First;
    while not sp_SR_Supplier.Eof do begin
      Strings.AddObject(
        sp_SR_Supplier.FieldByname('ClientName').AsString,
        TObject(sp_SR_Supplier.FieldByName('ClientNo').AsInteger)
        );
      sp_SR_Supplier.Next;
      end;
  finally
    sp_SR_Supplier.Close;
    end;
end;

procedure TdmsContact.Load_InvOwner(Strings : TStrings);
begin
//  sq_invOwner.ParamByName('SalesRegionNo').AsInteger:= SalesRegionNo ;
  sq_invOwner.Open;
  try
    sq_invOwner.First;
    while not sq_invOwner.Eof do begin
      Strings.AddObject(
        sq_invOwner.FieldByname('ClientName').AsString,
        TObject(sq_invOwner.FieldByName('ClientNo').AsInteger)
        );
      sq_invOwner.Next;
      end;
  finally
    sq_invOwner.Close;
   end;
end;



procedure TdmsContact.Load_Int_and_Lego(Strings : TStrings) ;
begin
  sp_Int_and_Lego.Open;
  try
    sp_Int_and_Lego.First;
    while not sp_Int_and_Lego.Eof do begin
      Strings.AddObject(
        sp_Int_and_Lego.FieldByname('ClientName').AsString,
        TObject(sp_Int_and_Lego.FieldByName('ClientNo').AsInteger)
        );
      sp_Int_and_Lego.Next;
      end;
  finally
    sp_Int_and_Lego.Close;
  end;
end;

procedure TdmsContact.Load_ProductionUnits(Strings : TStrings;ClientNo : Integer) ;
begin
  sp_ProductionUnits.ParamByName('ClientNo').AsInteger:= ClientNo ;
  sp_ProductionUnits.Open;
  try
    sp_ProductionUnits.First;
    while not sp_ProductionUnits.Eof do begin
      Strings.AddObject(
        sp_ProductionUnitsProductionUnitName.AsString,
        TObject(sp_ProductionUnitsProductionUnitNo.AsInteger)
        );
      sp_ProductionUnits.Next;
      end;
  finally
    sp_ProductionUnits.Close;
  end;
end;


procedure TdmsContact.cds_ProductionUnitReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmsContact.cds_ProductionUnitAfterInsert(DataSet: TDataSet);
begin
 cds_ProductionUnitCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_ProductionUnitModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_ProductionUnitDateCreated.AsSQLTimeStamp:= DateTimeToSqlTimeStamp(Date) ;
 cds_ProductionUnitClientNo.AsInteger:= fClientNo ;
 cds_ProductionUnitProductionUnitNo.AsInteger:= dmsConnector.NextMaxNo('ProductionUnit') ;
end;

procedure TdmsContact.LoadPhysInvByCityNo(Strings: TStrings; OwnerNo : Integer);
begin
 sp_PhysInvByCityNo.ParamByName('SalesRegionNo').AsInteger:= OwnerNo ;
 sp_PhysInvByCityNo.Open ;

  try

  Strings.Clear ;
  sp_PhysInvByCityNo.First;
    while not sp_PhysInvByCityNo.Eof do
     begin
      Strings.AddObject(sp_PhysInvByCityNo.FieldByName('CITYNAME').AsString,
                        TObject(sp_PhysInvByCityNo.FieldByName('PhyInvPointNameNo').AsInteger));
      sp_PhysInvByCityNo.Next ;
     end;

  finally
    sp_PhysInvByCityNo.close
  end;
end;


procedure TdmsContact.cds_PhysInvReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmsContact.cds_LogicalInvReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmsContact.cds_PhysInvAfterInsert(DataSet: TDataSet);
begin
 cds_PhysInvPhysicalInventoryPointNo.AsInteger:= dmsConnector.NextMaxNo('PhysicalInventoryPoint') ;
 cds_PhysInvOwnerNo.AsInteger:= fClientNo ;
 cds_PhysInvCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_PhysInvModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_PhysInvDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 cds_PhysInvTypeOfInventory.AsInteger:= 0 ;

end;

procedure TdmsContact.cds_LogicalInvAfterInsert(DataSet: TDataSet);
begin
 cds_LogicalInvLogicalInventoryPointNo.AsInteger:= dmsConnector.NextMaxNo('LogicalInventoryPoint') ;
 cds_LogicalInvDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 cds_LogicalInvModifiedUser.AsInteger:= ThisUser.UserID ;
 cds_LogicalInvCreatedUser.AsInteger:= ThisUser.UserID ;
 cds_LogicalInvPhysicalInventoryPointNo.AsInteger:=  cds_PhysInvPhysicalInventoryPointNo.AsInteger ; 
end;

procedure TdmsContact.cds_PhysInvAfterPost(DataSet: TDataSet);
begin
 if not cds_LogicalInv.FindKey([cds_PhysInvORT.AsString]) then
 Begin
  cds_LogicalInv.Insert ;
  cds_LogicalInvPhysicalInventoryPointNo.AsInteger:=  cds_PhysInvPhysicalInventoryPointNo.AsInteger ;
  cds_LogicalInvLogicalInventoryName.AsString:= cds_PhysInvORT.AsString ;
  cds_LogicalInv.Post ;
 End ; 
end;

procedure TdmsContact.cds_PhysInvAfterScroll(DataSet: TDataSet);
begin
  cds_LogicalInv.Filter:= 'PhysicalInventoryPointNo = '+cds_PhysInvPhysicalInventoryPointNo.AsString ;
  cds_LogicalInv.Filtered:= True ;
end;

end.
