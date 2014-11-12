unit dmsVidaProduct;

interface

uses
  Classes,   SysUtils, Controls, Forms,
  VidaType, DB, kbmMemTable, Dialogs, SqlTimSt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client ;


type
  TdmsProduct = class(TDataModule)
    cds_ProductGroupLength: TFDQuery;
    cds_ProductGroupLengthProductGroupNo: TIntegerField;
    cds_ProductGroupLengthProductLengthNo: TIntegerField;
    cds_ProductGroupLengthCreatedUser: TSmallintField;
    cds_ProductGroupLengthModifiedUser: TSmallintField;
    cds_ProductGroupLengthDateCreated: TSQLTimeStampField;
    cds_ProdLength: TFDQuery;
    cds_ProdLengthProductLengthNo: TIntegerField;
    cds_ProdLengthActualLengthMM: TFloatField;
    cds_ProdLengthNominalLengthMM: TFloatField;
    cds_ProdLengthNominalLengthFEET: TFloatField;
    cds_ProdLengthActualLengthINCH: TStringField;
    cds_ProdLengthPET: TIntegerField;
    cds_ProdLengthFingerJoint: TIntegerField;
    cds_ProdLengthCreatedUser: TIntegerField;
    cds_ProdLengthModifiedUser: TIntegerField;
    cds_ProdLengthDateCreated: TSQLTimeStampField;
    cds_ProdLengthSequenceNo: TIntegerField;
    cds_ProdLengthProductLengthGroupNo: TIntegerField;
    cds_ProdLengthAct: TIntegerField;
    sp_Packages: TFDStoredProc;
    sq_DelTempPkgs: TFDQuery;
    sq_InsTempPkgs: TFDQuery;
    sp_Populate_One_PkgTypeLengths: TFDStoredProc;
    sp_PackageTotals: TFDStoredProc;
    sp_NewPackageNo: TFDStoredProc;
    sp_NewPackageDetail: TFDStoredProc;
    sp_NewPackageType: TFDStoredProc;
    sp_PackageTypes: TFDStoredProc;
    sp_VP_IntLO: TFDStoredProc;
    sp_newLoad_II: TFDStoredProc;
    sp_vis_InsPnLog: TFDStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure mtPackagesBeforeInsert(DataSet: TDataSet);

  private
    y, GlobalCounter                : Integer ;
    OldProductNo, OldProductGroupNo : Integer ;
    Function  GetLengthsEntered : String ;
    { Private declarations }
  public
    SupplierNo : Integer ;
    Function  Create_newLoad_II(const SupplierNo, LONo : Integer;const LoadID, FS  : String;const Utlastad : TSQLTimeStamp) : Integer ;
    Function  Create_VP_IntLO(const CustomerNo, SalesRegionNo, SupplierNo, PIPNo  : Integer) : Integer ;
    Procedure InsertPkgsToTempTable ;
    function  SaveImportedPackages (mtUserProp : TkbmMemTable) : Boolean ;
//    function  PackageNumberExists(const PkgNo : Integer; const SupplierCode : String3) : Boolean;
  end;

var dmsProduct: TdmsProduct;

implementation

{$R *.dfm}

uses
  dmsDataConn,
  VidaConst,
  VidaUser,
  VidaUtils, dmsVidaSystem, //dmc_ImportWoodx,
  dmsVidaContact;

{ TDataModule1 }


Function TdmsProduct.GetLengthsEntered : String ;
Begin
{
 Result:= '' ;
 With dm_ImportWoodx do
 Begin
  cds_ImpLenMap.Active := False ;
  sq_ImpLenMap.ParamByName('Identifier').AsString              := cds_ImpProdMapIdentifier.AsString ;
  sq_ImpLenMap.ParamByName('DeliveryMessageNumber').AsString   := cds_ImpProdMapDeliveryMessageNumber.AsString ;
  cds_ImpLenMap.Active := True ;

  cds_ImpLenMap.First ;
  While not cds_ImpLenMap.Eof do
  Begin
   Result:= Result + cds_ImpLenMapProductLengthNo.AsString
                                     + '/'
                                     + cds_ImpLenMapStyck.AsString + '|' ;
   cds_ImpLenMap.Next ;
  End ;
 End ;//With dm_ImportWoodx do
 }
End ;


procedure TdmsProduct.DataModuleCreate(Sender: TObject);
Var x : Integer ;
begin
 GlobalCounter:= 1 ;
 y := 0 ;
// InputOption:= 0 ;
end;

procedure TdmsProduct.mtPackagesBeforeInsert(DataSet: TDataSet);
begin
// ChangeNoOfPcsEvent:= False ;
end;

{function TdmsProduct.PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
begin
  sp_OnePackageNo.Close;
  sp_OnePackageNo.ParamByName('PackageNo').AsInteger := PkgNo;
  sp_OnePackageNo.ParamByName('SupplierCode').AsString := Trim(SupplierCode);
  sp_OnePackageNo.Open;
  sp_OnePackageNo.First;
  Result := not sp_OnePackageNo.eof;
  sp_OnePackageNo.Close;
end ; }

function TdmsProduct.SaveImportedPackages (mtUserProp : TkbmMemTable) : Boolean ;
Var
    Save_Cursor   : TCursor;
const
  PKGS_CREATED_AT_PLANER_MILL = 1;
var
  TransactionNo : LongWord;
  PackagetypeNo  : Integer ;
{
  procedure SavePkgType ;
  Var
     iDtls : Integer ;

    function SelectMatchingPkgTypeHdrs : Integer;

    begin
     With dm_ImportWoodx do
     Begin

      Try
      // First get all package type (header) records that match
      sp_PackageTypes.ParamByName('ProductNo'    ).AsInteger := cds_ImpProdMapProductNo.AsInteger ;

//      if mtUserProp.FieldByName('BARCODENO').AsInteger < 1 then
//      sp_PackageTypes.ParamByName('BarCodeID').AsInteger := 0
//      else
      sp_PackageTypes.ParamByName('BarCodeID'    ).AsInteger := 0 ;//mtUserProp.FieldByName('BARCODENO').AsInteger ;

//      if mtUserProp.FieldByName('GRADESTAMPNO').AsInteger < 1 then
//      sp_PackageTypes.ParamByName('GradeStamp'   ).AsInteger := 0
//      else
      sp_PackageTypes.ParamByName('GradeStamp'   ).AsInteger := 0 ;//mtUserProp.FieldByName('GRADESTAMPNO').AsInteger ;

      sp_PackageTypes.ParamByName('TotalPieces'  ).AsInteger := cds_ImpProdMapStyck.AsInteger ;

      sp_PackageTypes.ParamByName('PcsPerLength'  ).AsString := GetLengthsEntered ;


     sp_PackageTypes.Open;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message+' :sp_PackageTypes.Open') ;
       Raise ;
      End ;
     end;

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
     End ;//With dm_ImportWoodx do
    end;


 }

{    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
    var
      iDtl : Integer;
    begin
     With dm_ImportWoodx do
     Begin
      PackageTypeNo := dmsConnector.NextMaxNo('PackageType');
      Try
      sp_NewPackageType.Close ;
      sp_NewPackageType.ParamByName('PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageType.ParamByName('ProductNo'       ).AsInteger := cds_ImpProdMapProductNo.AsInteger ;

//      if mtUserProp.FieldByName('BARCODENO').AsInteger < 1 then
//      sp_NewPackageType.ParamByName('BarCodeID'       ).AsInteger := 0
//      else
      sp_NewPackageType.ParamByName('BarCodeID'       ).AsInteger := 0 ;//mtUserProp.FieldByName('BARCODENO').AsInteger ;

//      if mtUserProp.FieldByName('GRADESTAMPNO').AsInteger < 1 then
//      sp_NewPackageType.ParamByName('GradeStamp'      ).AsInteger := 0
//      else
      sp_NewPackageType.ParamByName('GradeStamp'      ).AsInteger := 0 ;//mtUserProp.FieldByName('GRADESTAMPNO').AsInteger ;

      sp_NewPackageType.ParamByName('TotalNoOfPieces' ).AsInteger := cds_ImpProdMapStyck.AsInteger ;
      sp_NewPackageType.ParamByName('UserID').AsInteger := ThisUser.UserID;
      sp_NewPackageType.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message+' :sp_NewPackageType.ExecProc') ;
       Raise ;
      End ;
     end;

//************** Now add the PackageTypeDetail records. ********************


 cds_ImpLenMap.DisableControls ;
 Try
// cds_ImpLenMap.Filter   := 'Identifier = ' + cds_ImpProdMapIdentifier.AsString ;
// cds_ImpLenMap.Filtered := True ;

 cds_ImpLenMap.Active := False ;
 sq_ImpLenMap.ParamByName('Identifier').AsString              := cds_ImpProdMapIdentifier.AsString ;
 sq_ImpLenMap.ParamByName('DeliveryMessageNumber').AsString   := cds_ImpProdMapDeliveryMessageNumber.AsString ;
 cds_ImpLenMap.Active := True ;

 Try
 cds_ImpLenMap.First ;
 While not cds_ImpLenMap.Eof do
 Begin
  Try
  sp_NewPackageDetail.ParamByName('PackageTypeNo'  ).AsInteger  := PackageTypeNo;
  sp_NewPackageDetail.ParamByName('ProductLengthNo').AsInteger  := cds_ImpLenMapProductLengthNo.AsInteger ;
  sp_NewPackageDetail.ParamByName('NoOfPieces'     ).AsInteger  := cds_ImpLenMapStyck.AsInteger ;
  sp_NewPackageDetail.ParamByName('UserID'         ).AsInteger  := ThisUser.UserID;
  sp_NewPackageDetail.ExecProc;
  except
   On E: Exception do
   Begin
    dmsSystem.FDoLog(E.Message+' :sp_NewPackageDetail.ExecProc') ;
    Raise ;
   End ;
  end;
  cds_ImpLenMap.Next ;
 End ;
 Finally
//  cds_ImpLenMap.Filtered := False ;
 End ;
 Finally
  cds_ImpLenMap.EnableControls ;
 End ;

 End ;// With dm_ImportWoodx do

end; }

{
procedure  SavePackageTypeLengths ;
Begin
 Try
 sp_Populate_One_PkgTypeLengths.Close ;
 sp_Populate_One_PkgTypeLengths.ParamByName('SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
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
    sp_PackageTotals.ParamByName('PkgNo').AsInteger := PackageTypeNo;
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
   //Main SavePkgType ;
      SelectMatchingPkgTypeHdrs;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths ;
        //Om längdgrupper ändras justeras pakettypskolumner där, här läggs pakettypen upp för de längdgrupper som finns för tillfället
        dmsSystem.AddPkgTypeColumns(PackageTypeNo);
       End ;
  end;

  procedure SavePackage ;
  begin
   With dm_ImportWoodx do
   Begin
    Try
    sp_NewPackageNo.ParamByName('PackageNo'              ).AsInteger      := cds_ImpProdMapIdentifier.AsInteger ;
    sp_NewPackageNo.ParamByName('PackageTypeNo'          ).AsInteger      := PackageTypeNo;
    sp_NewPackageNo.ParamByName('SupplierCode'           ).AsString       := cds_ImpProdMapClientCode.AsString ;
    sp_NewPackageNo.ParamByName('LogicalInventoryPointNo').AsInteger      := mtUserProp.FieldByName('LIPNo').AsInteger ;
    sp_NewPackageNo.ParamByName('SupplierNo'             ).AsInteger      := mtUserProp.FieldByName('OwnerNo').AsInteger ;
    sp_NewPackageNo.ParamByName('RegistrationPointNo'    ).AsInteger      := 20 ; //Inköp //mtUserProp.FieldByName('RegPointNo').AsInteger ;
    sp_NewPackageNo.ParamByName('UserID'                 ).AsInteger      := ThisUser.UserID;
    sp_NewPackageNo.ParamByName('CreatedOfPkgStr'        ).AsInteger      := 0 ; // 0 = Manual entry
    sp_NewPackageNo.ParamByName('DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
    sp_NewPackageNo.ParamByName('Price'                  ).AsFloat      := 0 ;
//    sp_NewPackageNo.ParamByName('OwnerNo'                ).AsInteger  := mtUserProp.FieldByName('OwnerNo').AsInteger ;
//    sp_NewPackageNo.ParamByName('ProducerNo'             ).AsInteger  := mtUserProp.FieldByName('OwnerNo').AsInteger ;
//    sp_NewPackageNo.ParamByName('ProgramNo'              ).AsInteger  := -1 ;
//    sp_NewPackageNo.ParamByName('ShiftNo'                ).AsInteger  := -1 ;
    sp_NewPackageNo.ExecProc;
    except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message+' :sp_NewPackageNo.ExecProc') ;
       Raise ;
      End ;
    end;
   End ;//With dm_ImportWoodx do
  end;

  }

//Main SaveImportedPackages
begin
{
 With dm_ImportWoodx do
 Begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;
 PackagetypeNo  := -1 ;
 cds_ImpProdMap.DisableControls ;
 Try
  Result:= False ;
  cds_ImpProdMap.First ;
  While not cds_ImpProdMap.Eof do
  Begin
  TransactionNo := dmsConnector.StartTransaction;
  try
      SavePkgType ;

      Try
      SavePackage ;
      except
//       ShowMessage ('Could not save Package no ' + Pkg_Info(cds_ImpProdMap.Fields[cPACKAGENO].AsInteger, Trim(cds_ImpProdMap.Fields[cSUPPLIERCODE].AsString)));
       Result:= False ;
       Raise ;
      End ;

     cds_ImpProdMap.Next ;
     PackageTypeNo:= -1 ;
    dmsConnector.Commit(TransactionNo);
    Result:= True ;
   except
    dmsConnector.Rollback(TransactionNo);
    Result:= False ;
    raise;
   end;
  end ;//While


 Finally
  cds_ImpProdMap.EnableControls ;
  Screen.Cursor := Save_Cursor;
 End ;
 End ;//With dm_ImportWoodx do
 }
end;


Procedure TdmsProduct.InsertPkgsToTempTable ;
Var
  Save_Cursor   : TCursor;
  TransactionNo : LongWord;
Begin
{
 With dm_ImportWoodx do
 Begin
 Try
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;
 cds_ImpProdMap.DisableControls ;

 Try
  sq_DelTempPkgs.ParamByName('UserID').AsInteger       := ThisUser.UserID ;
  sq_DelTempPkgs.ExecSQL ;
  except
    On E: Exception do
    Begin
     dmsSystem.FDoLog(E.Message+' :sq_DelTempPkgs.ExecSQL') ;
     Raise ;
    End ;
  end;

 cds_ImpProdMap.First ;
  While not cds_ImpProdMap.Eof do
  Begin
   Try
   TransactionNo := dmsConnector.StartTransaction;
    try
    sq_InsTempPkgs.ParamByName('UserID').AsInteger       := ThisUser.UserID ;
    sq_InsTempPkgs.ParamByName('PackageNo').AsInteger    := cds_ImpProdMapIdentifier.AsInteger ;
    sq_InsTempPkgs.ParamByName('SupplierCode').AsString  := cds_ImpProdMapClientCode.AsString ;
    sq_InsTempPkgs.ExecSQL ;
    except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message+' :sq_InsTempPkgs.ExecSQL') ;
       Raise ;
      End ;
    end;

    cds_ImpProdMap.Next ;
    dmsConnector.Commit(TransactionNo);
   except
    dmsConnector.Rollback(TransactionNo);
    raise;
   end;
  End ;//While not cds_ImpProdMap.Eof do

 Finally
  cds_ImpProdMap.EnableControls ;
  Screen.Cursor := Save_Cursor;
 End ;
 End ;//With dm_ImportWoodx do
 }
end;

Function TdmsProduct.Create_VP_IntLO(const CustomerNo, SalesRegionNo, SupplierNo, PIPNo  : Integer) : Integer ;
Begin
 Try
 Result := -1 ;
 sp_VP_IntLO.ParamByName('CustomerNo').AsInteger        :=  CustomerNo ;
 sp_VP_IntLO.ParamByName('CreatedUser').AsInteger       :=  ThisUser.UserID ;
 sp_VP_IntLO.ParamByName('SalesRegionNo').AsInteger     :=  SalesRegionNo ;
 sp_VP_IntLO.ParamByName('SupplierNo').AsInteger        :=  SupplierNo ;
 sp_VP_IntLO.ParamByName('UserID').AsInteger            :=  ThisUser.UserID ;
 sp_VP_IntLO.ParamByName('ShipToInvPointNo').AsInteger  :=  dmsContact.GetCityNoFromPIP(PIPNo) ;
 sp_VP_IntLO.ExecProc ;
 Result := sp_VP_IntLO.ParamByName('ShippingPlanNo').AsInteger ;
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message+' :sp_VP_IntLO.ExecProc') ;
   Raise ;
  End ;
 end;
End ;

Function TdmsProduct.Create_newLoad_II(const SupplierNo, LONo : Integer;const LoadID, FS  : String;const Utlastad : TSQLTimeStamp) : Integer ;
Begin
 Try
 Result := -1 ;
 sp_newLoad_II.ParamByName('SupplierNo').AsInteger    := SupplierNo ;
 sp_newLoad_II.ParamByName('LONo').AsInteger          := LONo ;
 sp_newLoad_II.ParamByName('UserID').AsInteger        := ThisUser.UserID ;
 sp_newLoad_II.ParamByName('LoadID').AsString         := LoadID ;
 sp_newLoad_II.ParamByName('FS').AsString             := FS ;
 sp_newLoad_II.ParamByName('Utlastad').AsSQLTimeStamp := Utlastad ;
 sp_newLoad_II.ExecProc ;
 Result := sp_newLoad_II.ParamByName('LoadNo').AsInteger ;
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message+' :sp_newLoad_II.ExecProc') ;
   Raise ;
  End ;
 end;
End ;


end.
