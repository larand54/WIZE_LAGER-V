unit dmsVidaPkg;

interface

uses
  Classes,
  SysUtils,
  Controls,
  Forms,
  VidaType, DB, kbmMemTable, Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Async,
  FireDAC.DApt, SqlTimSt, Math ;


type
  TdmsPkg = class(TDataModule)
    mtPackages: TkbmMemTable;
    mtProdSpecificLengths: TkbmMemTable;
    mtProdSpecificLengthsProductGroupNo: TIntegerField;
    mtProdSpecificLengthsProductLengthNo: TIntegerField;
    mtStandardLengths: TkbmMemTable;
    mtStandardLengthsProductLengthNo: TIntegerField;
    mtDupPkgNo: TkbmMemTable;
    mtDupPkgNoPackageNo: TIntegerField;
    mtProd_Records: TkbmMemTable;
    mtProd_RecordsProductNo: TIntegerField;
    mtProd_RecordsPRODUCTDESCRIPTION: TStringField;
    mtProd_RecordsACT_THICK: TFloatField;
    mtProd_RecordsACT_WIDTH: TFloatField;
    mtProd_RecordsPKGWIDTH: TIntegerField;
    mtProd_RecordsPKGHEIGHT: TIntegerField;
    mtProd_RecordsMINIBUNDLE: TIntegerField;
    mtProd_RecordsPRODUCTGROUPNO: TIntegerField;
    mtProd_RecordsGradeStampNo: TIntegerField;
    mtProd_RecordsBarcodeID: TIntegerField;
    mtProd_RecordsWrapTypeNo: TIntegerField;
    mtProd_RecordsShrinkWrapNo: TIntegerField;
    ds_Prod_Records: TDataSource;
    mtProd_RecordsNOM_THICK: TFloatField;
    mtProd_RecordsNOM_WIDTH: TFloatField;
    mtProd_RecordsLOPP: TStringField;
    mtProd_RecordsPWrap: TStringField;
    mtProd_RecordsGStamps: TStringField;
    mtProd_RecordsOnSticks: TIntegerField;
    mtDupPkgNoSupplierCode: TStringField;
    ds_mtDupPkgNo: TDataSource;
    mtProd_RecordsINCH_THICK: TFloatField;
    mtProd_RecordsINCH_WIDTH: TFloatField;
    mtProd_RecordsSurfacingNo: TIntegerField;
    ds_Verk: TDataSource;
    ds_Producer: TDataSource;
    ds_PIP: TDataSource;
    ds_LIP: TDataSource;
    ds_RegPoint: TDataSource;
    ds_LengthGroup: TDataSource;
    ds_Props: TDataSource;
    mtPcsPerLength: TkbmMemTable;
    mtPcsPerLengthProductLengthNo: TIntegerField;
    mtPcsPerLengthProductNo: TIntegerField;
    mtPcsPerLengthNoOfPieces: TIntegerField;
    mtPcsPerLengthUserID: TIntegerField;
    mtPcsPerLengthALMM: TFloatField;
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
    mtUserPropACT_THICK: TFloatField;
    mtUserPropACT_WIDTH: TFloatField;
    mtUserPropNOM_THICK: TFloatField;
    mtUserPropSurfacingNo: TIntegerField;
    dsUserProp: TDataSource;
    mtUserPropSalesRegionNo: TIntegerField;
    mtUserPropVolumeUnitNo: TIntegerField;
    mtUserPropLengthFormatNo: TIntegerField;
    mtUserPropForm: TStringField;
    mtUserPropUserID: TIntegerField;
    mtUserPropLengthVolUnitNo: TIntegerField;
    mtUserPropGroupByBox: TIntegerField;
    mtUserPropGroupSummary: TIntegerField;
    mtUserPropAgentNo: TIntegerField;
    mtUserPropShipperNo: TIntegerField;
    mtUserPropStartPeriod: TDateTimeField;
    mtUserPropEndPeriod: TDateTimeField;
    mtUserPropPris: TFloatField;
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
    cds_LengthGroup: TFDQuery;
    cds_LengthGroupGroupNo: TIntegerField;
    cds_LengthGroupGroupName: TStringField;
    cds_RegPoint: TFDQuery;
    cds_RegPointProductionUnitName: TStringField;
    cds_RegPointRegistrationPointNo: TIntegerField;
    cds_LIP: TFDQuery;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLIPName: TStringField;
    cds_PIP: TFDQuery;
    cds_PIPPIPNO: TIntegerField;
    cds_PIPPIPNAME: TStringField;
    cds_producer: TFDQuery;
    cds_producerClientNo: TIntegerField;
    cds_producerClientName: TStringField;
    cds_producerSearchName: TStringField;
    cds_Verk: TFDQuery;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkSearchName: TStringField;
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
    sq_GetPkgTypeNo: TFDQuery;
    sq_GetPkgTypeNoPackageTypeNo: TIntegerField;
    sq_PkgExist: TFDQuery;
    sq_PkgExistPackageNo: TIntegerField;
    sq_ProductLengths: TFDQuery;
    sq_ProductLengthsActualLengthMM: TFloatField;
    sp_ProdLeng: TFDStoredProc;
    sp_StandardLengths: TFDStoredProc;
    sp_PkgInfo: TFDStoredProc;
    sp_OnePackageNo: TFDStoredProc;
    sp_NewPkgNoNoProdLogg: TFDStoredProc;
    sp_Populate_One_PkgTypeLengths: TFDStoredProc;
    sp_PackageTotals: TFDStoredProc;
    sp_NewPackageNo: TFDStoredProc;
    sp_NewPackageDetail: TFDStoredProc;
    sp_NewPackageType: TFDStoredProc;
    sp_PackageTypeDetail: TFDStoredProc;
    sp_PackageTypes: TFDStoredProc;
    sp_StandardLengthsProductLengthNo: TIntegerField;
    sp_StandardLengthsActualLengthMM: TFloatField;
    sp_StandardLengthsPET: TIntegerField;
    sp_StandardLengthsFingerJoint: TIntegerField;
    sp_PkgInfoCREATED: TSQLTimeStampField;
    sp_PkgInfoCREATED_BY: TStringField;
    sp_PkgInfoOWNER: TStringField;
    sp_PkgInfoPKG_STATUS: TIntegerField;
    sp_PkgInfoINVENTORY: TStringField;
    sp_ProdLengProductLengthNo: TIntegerField;
    mtUserPropSkiftLag: TStringField;
    mtUserPropALMM: TFloatField;
    mtUserPropNOM_WIDTH: TFloatField;
    FDQuery1: TFDQuery;
    cds_Package_Size: TFDQuery;
    cds_Package_SizePackageSizeNo: TIntegerField;
    cds_Package_SizePackageSizeName: TStringField;
    ds_Package_Size: TDataSource;
    mtUserPropPackage_Size: TStringField;
    mtUserPropFilter1: TStringField;
    mtUserPropFilter2: TStringField;
    procedure mtPackagesAfterPost(DataSet: TDataSet);
    procedure mtPackagesAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure mtPackagesBeforeInsert(DataSet: TDataSet);
    procedure mtPackagesAfterDelete(DataSet: TDataSet);
    procedure mtPackagesBeforePost(DataSet: TDataSet);
    procedure mtPackagesBeforeDelete(DataSet: TDataSet);
    procedure mtUserPropOwnerNoChange(Sender: TField);
    procedure mtUserPropPIPNoChange(Sender: TField);
    procedure mtUserPropProducerNoChange(Sender: TField);
    procedure cds_ProdLengthAfterInsert(DataSet: TDataSet);


  private
    //y,
    GlobalCounter: Integer ;
    OldProductNo, OldProductGroupNo : Integer ;
    Procedure InsertProductGroupSpecificLengths(ProductGroupNo : Integer) ;
    procedure SummarizePkg ;
//    function  SearchORCreatePkgType(mtPcsPerLength : TkbmMemTable;const ProductNo, BarCodeID, GradeStamp, TotalNoOfPieces : Integer) : Integer ;
    Function  GetLengthsEntered : String ;
    { Private declarations }
  public
    PcsPerLengthArray : Array[0..300] of Integer ; //to copy no of pcs to new row
    Function  PackageExist(const PackageNo : Integer;const Prefix : String) : Boolean;
    Procedure CheckValidInputLength ;
    function  WHERE_For_STD_Lengths : String ;
    procedure MakeLengthQuery_STD_Lengths (const STD_LengthGroupNo : Integer) ;
    procedure MakeLengthQuery_II ;
    function  LengthWHERE_II : String ;
    function  PackageNumberExists(const PkgNo : Integer; const SupplierCode : String3) : Boolean;
    procedure LoadGroupLengths(const GroupNo : Integer);
    function  SavePackages2 : Boolean ;
    function  Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
//    procedure LoadUserProps (const Form : String) ;
//    procedure SaveUserProps (const Form : String) ;
  end;

var
  dmsPkg: TdmsPkg;

implementation

{$R *.dfm}

uses
  dmsDataConn,
  VidaConst,
  VidaUser,
  VidaUtils, dmsVidaSystem , dmsVidaContact, dmc_UserProps;

{ TDataModule1 }



procedure TdmsPkg.LoadGroupLengths(const GroupNo : Integer);
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

function TdmsPkg.PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
begin
  sp_OnePackageNo.Close;
  sp_OnePackageNo.ParamByName('@PackageNo').AsInteger := PkgNo;
  sp_OnePackageNo.ParamByName('@SupplierCode').AsString := Trim(SupplierCode);
  sp_OnePackageNo.Open;
  sp_OnePackageNo.First;
  Result := not sp_OnePackageNo.eof;
  sp_OnePackageNo.Close;
end;

function TdmsPkg.SavePackages2 : Boolean ;
Var
    Save_Cursor:TCursor;
    OldIndexName : String ;
Type
  PMyList = ^AList;
  AList = record
    ProductLengthNo: Integer;
    NoOfPieces: Integer;
  end;
var
//  iPkg : Integer;
//  PkgTypeNumbers : TList;
  PackagetypeNo  : Integer ;

//  MyList: TList;
//  ARecord: PMyList;

  procedure SavePkgType ;
  Var
     iDtls : Integer ;

    function SelectMatchingPkgTypeHdrs : Integer;

    begin
      Try
      // First get all package type (header) records that match
      sp_PackageTypes.ParamByName('@ProductNo'    ).AsInteger := mtUserProp.FieldByName('PRODUCTNO').AsInteger ;

      if mtUserProp.FieldByName('BARCODENO').AsInteger < 1 then
      sp_PackageTypes.ParamByName('@BarCodeID').AsInteger := 0
      else
      sp_PackageTypes.ParamByName('BarCodeID'    ).AsInteger := mtUserProp.FieldByName('BARCODENO').AsInteger ;

      if mtUserProp.FieldByName('GRADESTAMPNO').AsInteger < 1 then
      sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := mtUserProp.FieldByName('GRADESTAMPNO').AsInteger ;

     sp_PackageTypes.ParamByName('@TotalPieces'  ).AsInteger := mtPackages.Fields[cTOTALPCS].AsInteger ;

     sp_PackageTypes.ParamByName('@PcsPerLength'  ).AsString := GetLengthsEntered ;


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
    end;

    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
    var
      iDtl : Integer;
    begin
      PackageTypeNo := dmsConnector.NextMaxNo('PackageType');
      Try
      sp_NewPackageType.Close ;
      sp_NewPackageType.ParamByName('@PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageType.ParamByName('@ProductNo'       ).AsInteger := mtUserProp.FieldByName('PRODUCTNO').AsInteger ;

      if mtUserProp.FieldByName('BARCODENO').AsInteger < 1 then
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := mtUserProp.FieldByName('BARCODENO').AsInteger ;

      if mtUserProp.FieldByName('GRADESTAMPNO').AsInteger < 1 then
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := mtUserProp.FieldByName('GRADESTAMPNO').AsInteger ;

      sp_NewPackageType.ParamByName('@TotalNoOfPieces' ).AsInteger := mtPackages.Fields[cTOTALPCS].AsInteger ;
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
//    PkgTypeNumbers := TList.Create;
//    MyList := TList.Create;

//    try
      PackagetypeNo:= SelectMatchingPkgTypeHdrs ;
//      MatchingPackageType ;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths ;
        //Om längdgrupper ändras justeras pakettypskolumner där, här läggs pakettypen upp för de längdgrupper som finns för tillfället
        dmsSystem.AddPkgTypeColumns(PackageTypeNo);
       End ;
//Dispose
{   for iDtls:= 0 to (MyList.Count - 1) do
   begin
     ARecord := MyList.Items[iDtls];
     Dispose(ARecord);
   end; }

{    finally
      PkgTypeNumbers.Free;
      MyList.Free ;
    end; }
  end;

  procedure SavePackage ;
  begin
    if mtUserPropAgentNo.AsInteger = 1 then
    //Spara med produktionslogg
    Begin
     Try
     sp_NewPackageNo.ParamByName('@PackageNo'              ).AsInteger  := mtPackages.Fields[cPACKAGENO].AsInteger ;
     sp_NewPackageNo.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
     sp_NewPackageNo.ParamByName('@SupplierCode'           ).AsString   := Trim(mtPackages.Fields[cSUPPLIERCODE].AsString);
     sp_NewPackageNo.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtUserProp.FieldByName('LIPNo').AsInteger ;
     sp_NewPackageNo.ParamByName('@SupplierNo'             ).AsInteger  := mtUserProp.FieldByName('OwnerNo').AsInteger ;
     sp_NewPackageNo.ParamByName('@RegistrationPointNo'    ).AsInteger  := mtUserProp.FieldByName('RegPointNo').AsInteger ;
     sp_NewPackageNo.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
     sp_NewPackageNo.ParamByName('@CreatedOfPkgStr'        ).AsInteger  := 0 ; // 0 = Manual entry
     sp_NewPackageNo.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
    //ANVÄNDS EJ!!
     sp_NewPackageNo.ParamByName('@OwnerNo'                ).AsInteger  := mtUserProp.FieldByName('OwnerNo').AsInteger ;//ANVÄNDS EJ!!

     sp_NewPackageNo.ParamByName('@ProducerNo'             ).AsInteger  := mtUserProp.FieldByName('ProducerNo').AsInteger ;
     sp_NewPackageNo.ParamByName('@RunNo'                  ).AsInteger  := mtUserProp.FieldByName('RunNo').AsInteger ;

     sp_NewPackageNo.ParamByName('@Price'                  ).AsFloat    := mtPackages.Fields[cTOTALM2].AsFloat ;
     sp_NewPackageNo.ParamByName('@SkiftLagNo'             ).AsInteger  := mtUserProp.FieldByName('GroupByBox').AsInteger ;

     sp_NewPackageNo.ParamByName('@Package_Size'           ).AsInteger  := mtUserProp.FieldByName('LengthFormatNo').AsInteger ;


     sp_NewPackageNo.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_NewPackageNo.ExecProc') ;
      Raise ;
     End
    end;
    End
    else
    //Spara INTE med produktionslogg
    Begin
     Try
     sp_NewPkgNoNoProdLogg.ParamByName('@PackageNo'              ).AsInteger  := mtPackages.Fields[cPACKAGENO].AsInteger ;
     sp_NewPkgNoNoProdLogg.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
     sp_NewPkgNoNoProdLogg.ParamByName('@SupplierCode'           ).AsString   := Trim(mtPackages.Fields[cSUPPLIERCODE].AsString);
     sp_NewPkgNoNoProdLogg.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtUserProp.FieldByName('LIPNo').AsInteger ;
     sp_NewPkgNoNoProdLogg.ParamByName('@SupplierNo'             ).AsInteger  := mtUserProp.FieldByName('OwnerNo').AsInteger ;
     sp_NewPkgNoNoProdLogg.ParamByName('@RegistrationPointNo'    ).AsInteger  := mtUserProp.FieldByName('RegPointNo').AsInteger ;
     sp_NewPkgNoNoProdLogg.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
     sp_NewPkgNoNoProdLogg.ParamByName('@CreatedOfPkgStr'        ).AsInteger  := 0 ; // 0 = Manual entry
     sp_NewPkgNoNoProdLogg.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;

     sp_NewPkgNoNoProdLogg.ParamByName('@Price'                  ).AsFloat    := mtPackages.Fields[cTOTALM2].AsFloat ;

     sp_NewPkgNoNoProdLogg.ParamByName('@Package_Size'           ).AsInteger  := mtUserProp.FieldByName('LengthFormatNo').AsInteger ;
    //ANVÄNDS EJ!!
//     sp_NewPkgNoNoProdLogg.ParamByName('OwnerNo'                ).AsInteger  := mtUserProp.FieldByName('OwnerNo').AsInteger ;//ANVÄNDS EJ!!

//     sp_NewPkgNoNoProdLogg.ParamByName('ProducerNo'             ).AsInteger  := mtUserProp.FieldByName('ProducerNo').AsInteger ;
//     sp_NewPkgNoNoProdLogg.ParamByName('RunNo'                  ).AsInteger  := mtUserProp.FieldByName('RunNo').AsInteger ;
      sp_NewPkgNoNoProdLogg.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_NewPkgNoNoProdLogg.ExecProc') ;
      Raise ;
     End ;
    end;

    End ;


  end;

//Main SavePackages2
begin
// dmsSystem.FDoLog(' Main SavePackages2') ;
 Save_Cursor            := Screen.Cursor;
 Screen.Cursor          := crSQLWait;    { Show hourglass cursor }
 OldIndexName           := mtPackages.IndexName ;
 mtPackages.IndexName   := 'PkgId';
 mtPackages.AfterPost   := NIL ;
 PackagetypeNo          := -1 ;
 Try

  Result:= False ;
   mtPackages.First ;
   While not mtPackages.Eof do
    Begin
      mtPcsPerLength.Active  := False ;
      mtPcsPerLength.Active  := True ;

//      dmsConnector.StartTransaction;
      try
      SavePkgType ;

      if PackageTypeNo > 0 then
      Begin
       if not PackageExist( mtPackages.Fields[cPACKAGENO].AsInteger,  Trim(mtPackages.Fields[cSUPPLIERCODE].AsString)) then
       Begin
        SavePackage ;
        mtPackages.Edit ;
        mtPackages.Fields[cPACKAGETYPENO].AsInteger:= PackageTypeNo ;
        mtPackages.Post ;
       End
       else
       Begin
        mtPackages.Edit ;
        mtPackages.Fields[cPACKAGETYPENO].AsInteger:= -2 ;
        mtPackages.Post ;
       End ;


        mtPackages.Next ;



       PackageTypeNo:= -1 ;
  //     dmsConnector.Commit ;
       Result:= True ;
     End ;
{
        else
          Begin
           dmsConnector.Rollback ;
           Result:= False ;
          End ;
}

{
      except
       dmsConnector.Rollback ;
       Result:= False ;
       dmsSystem.FDoLog('dmsConnector.Rollback') ;
       Raise ;
      end;
}

      except
       on E: eDatabaseError do
       Begin
        Raise ;
        dmsSystem.FDoLog(E.Message+' :Save package') ;
        Result:= False ;
       End ;

      end;
 end;  //While

 Finally
  mtPcsPerLength.Active := False ;
  Screen.Cursor         := Save_Cursor;  { Always restore to normal }
  mtPackages.IndexName  := OldIndexName;
  mtPackages.AfterPost  := mtPackagesAfterPost ;
 End ;
end;

Function TdmsPkg.PackageExist(const PackageNo : Integer;const Prefix : String) : Boolean;
Begin
 sq_PkgExist.ParamByName('PackageNo').AsInteger   := PackageNo ;
 sq_PkgExist.ParamByName('SupplierCode').AsString := Prefix ;
 sq_PkgExist.Open ;
 Try
 if not sq_PkgExist.Eof then
  Result  := True
   else
    Result  := False ;
 Finally
  sq_PkgExist.Close ;
 End ;
End ;

Function TdmsPkg.GetLengthsEntered : String ;

    Function GetNoOfLengthsInPkg : Integer ;
    Var x : Integer ;
    Begin
     for x := FirstLengthColumn to mtPackages.FieldCount - 1 do
     Begin
      if mtPackages.Fields[x].AsInteger > 0 then
      Begin
       mtPcsPerLength.Insert ;
       mtPcsPerLengthProductLengthNo.AsInteger :=  dmsSystem.GetProductLengthNoByLengthRule(mtPackages.Fields[x].DisplayLabel,
                                                   mtPackages.FieldByName('NOM_THICK').AsFloat,
                                                   mtPackages.FieldByName('SurfacingNo').AsInteger) ;
       mtPcsPerLengthNoOfPieces.AsInteger       := mtPackages.Fields[x].AsInteger ;
       mtPcsPerLengthProductNo.AsInteger        := mtPackages.Fields[cPRODUCTNO].AsInteger ;
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

    Function GetNoOfLengthsInPkg_INPUT_AM3_TOTALPCS : Integer ;
    Begin
     mtPcsPerLength.Insert ;
     mtPcsPerLengthProductLengthNo.AsInteger  := dmsSystem.CheckForGetProductLengthNoByALMM
     (mtpackages.Fields[cTOTALLPM].AsFloat / mtPackages.Fields[cTOTALPCS].AsInteger * 1000) ;

     mtPcsPerLengthNoOfPieces.AsInteger       := mtPackages.Fields[cTOTALPCS].AsInteger ;
     mtPcsPerLength.Post ;
//     NoOfLengths:= 99 ;
    End ;

    Function GetNoOfLengthsInPkg_INPUT_AM3_LENGTH : Integer ;
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

    Function GetNoOfLengthsInPkg_INPUT_RAMAR : Integer ;
    Var ML : Double ;
    Begin
     ML                                       := mtUserPropALMM.AsFloat ;
     mtPcsPerLength.Insert ;
     mtPcsPerLengthProductLengthNo.AsInteger  := dmsSystem.GetProductLengthNoByALMM(FloatToStr(ML)) ;
     mtPcsPerLengthNoOfPieces.AsInteger       := mtPackages.Fields[cTOTALPCS].AsInteger ;
     mtPcsPerLengthProductNo.AsInteger        := mtPackages.Fields[cPRODUCTNO].AsInteger ;
     mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
     mtPcsPerLengthALMM.AsFloat               := ML ;
     mtPcsPerLength.Post ;
    End ;

Begin
 Result:= '' ;
 if (mtUserPropInputOption.AsInteger = INPUT_PIECES) or (mtUserPropInputOption.AsInteger = INPUT_SPECIAL_LENGTH) then
  GetNoOfLengthsInPkg
   else
    if mtUserPropInputOption.AsInteger = INPUT_LOPM_TOTAL_LOPM then
     GetNoOfLengthsInPkg_LPM_Entry
      else
       if mtUserPropInputOption.AsInteger = INPUT_LOPM_AVERAGE_LENGTH then
         GetNoOfLengthsInPkg_LPM_Entry_AVERAGE_LENGTH_OPTION
          else
           if mtUserPropInputOption.AsInteger = INPUT_AM3_TOTALPCS then
            GetNoOfLengthsInPkg_INPUT_AM3_TOTALPCS
             else
              if mtUserPropInputOption.AsInteger = INPUT_AM3_LENGTH then
               GetNoOfLengthsInPkg_INPUT_AM3_LENGTH
                else
                 if mtUserPropInputOption.AsInteger = INPUT_RAMAR then
                  GetNoOfLengthsInPkg_INPUT_RAMAR ;

 mtPcsPerLength.First ;
 While not mtPcsPerLength.Eof do
 Begin
  Result:= Result + mtPcsPerLengthProductLengthNo.AsString
                                     + '/'
                                     + mtPcsPerLengthNoOfPieces.AsString + '|' ;
  mtPcsPerLength.Next ;
 End ;
End ;

function TdmsPkg.Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
Begin
 sp_PkgInfo.ParamByName('@PackageNo').AsInteger    := PkgNo ;
 sp_PkgInfo.ParamByName('@SupplierCode').AsString  := SuppCode ;
 sp_PkgInfo.Open ;
 Result:= intToStr(PkgNo)+'/'+SuppCode+' It was created by '+
 sp_PkgInfoCREATED_BY.AsString+' at: '+SQLTimeStampToStr('',sp_PkgInfoCREATED.AsSQLTimeStamp)+
 ' inventory: '+sp_PkgInfoINVENTORY.AsString ;
 sp_PkgInfo.Close ;
End ;

Procedure TdmsPkg.InsertProductGroupSpecificLengths(ProductGroupNo : Integer) ;
Var x : Integer ;
Begin
 x := FirstLengthColumn ;
 if not mtProdSpecificLengths.FindKey([ProductGroupNo]) then
 Begin
  sp_ProdLeng.Close ;
  sp_ProdLeng.ParamByName('@ProductGroupNo').AsInteger:= ProductGroupNo ;
  sp_ProdLeng.Open ;
  sp_ProdLeng.First ;
  While not sp_ProdLeng.Eof do
  Begin

   x:= succ(x) ;

   mtProdSpecificLengths.Insert ;
   mtProdSpecificLengthsProductGroupNo.AsInteger  := ProductGroupNo ;
   mtProdSpecificLengthsProductLengthNo.AsInteger := sp_ProdLengProductLengthNo.AsInteger ;
   mtProdSpecificLengths.Post ;
   sp_ProdLeng.Next ;
  End ;
  sp_ProdLeng.Close ;
 End ; //with
End ;

Procedure TdmsPkg.CheckValidInputLength ;
Begin
  if (mtpackages.fields[cPRODUCTGROUPNO].AsInteger <> OldProductGroupNo)
  AND (mtpackages.fields[cPRODUCTGROUPNO].AsInteger > 0)
  AND (mtpackages.State = dsBrowse)
  then
  Begin
   OldProductGroupNo := mtpackages.fields[cPRODUCTGROUPNO].AsInteger ;
  End ;
End ;

procedure TdmsPkg.mtPackagesAfterPost(DataSet: TDataSet);
Var x : Integer ;
   SavePlace: TBookmark;
begin
 if (mtUserPropInputOption.AsInteger = INPUT_PIECES) or (mtUserPropInputOption.AsInteger = INPUT_SPECIAL_LENGTH) then
 if mtUserPropInputOption.AsInteger <> 2 then
  For x:= FirstLengthColumn to mtPackages.Fields.Count - 1 do
   PcsPerLengthArray[x]:= mtPackages.Fields[x].AsInteger ;
{ else
  For x:= FirstLengthColumn to mtPackages.Fields.Count - 1 do
   AVERAGE_LengthArray[x]:= mtPackages.Fields[x].AsInteger ; }

  OldProductGroupNo:= mtPackages.FieldByName('ProductGroupNo').AsInteger ;

  OldProductNo:= mtPackages.FieldByName('ProductNo').AsInteger ;
  SavePlace:= mtPackages.GetBookmark ;
  Try
  mtDupPkgNo.Active:= False ;
  mtDupPkgNo.Active:= True ;
  mtPackages.First ;
  While not mtPackages.Eof do
  Begin
  mtDupPkgNo.Insert;
  Try
  mtDupPkgNoPackageNo.AsInteger   := DataSet.Fields[cPACKAGENO].AsInteger ;
  mtDupPkgNoSupplierCode.AsString := Trim(DataSet.Fields[cSUPPLIERCODE].AsString) ;
  mtDupPkgNo.Post ;
  Except
   on eDatabaseError do
   Begin
    Raise ;
   End ;
  End ;
  mtPackages.Next ;
  End ; //while
  mtPackages.GotoBookmark(SavePlace);
  Finally
   mtPackages.FreeBookmark(SavePlace);
  End ;
end;

procedure TdmsPkg.mtPackagesAfterInsert(DataSet: TDataSet);
Var x : Integer ;
begin
 With dmsPkg do
 Begin
 Try
 if OldProductGroupNo = mtUserPropPRODUCTGROUPNO.AsInteger then
 For x:= FirstLengthColumn to mtPackages.Fields.Count - 1 do
  Begin
   if mtPackages.Fields.Fields[x].ReadOnly = False then
   if mtUserPropInputOption.AsInteger <> 2 then
   if PcsPerLengthArray[x] > 0 then
   Begin
    if mtUserPropCopyPcs.AsInteger = 1 = True then
     mtPackages.Fields[x].AsInteger:= PcsPerLengthArray[x] ;
   End ;
//   else
//    mtPackages.Fields[x].AsFloat:= AVERAGE_LengthArray[x] ;

   PcsPerLengthArray[x]:= 0 ;
//   AVERAGE_LengthArray[x]:= 0 ;
  End ;
  //LARS
  OldProductGroupNo := mtUserPropPRODUCTGROUPNO.AsInteger ;


  mtPackages.FieldByName('RecId').AsInteger:=  GlobalCounter ;

  mtPackages.FieldByName('ProductGroupNo').AsInteger  :=  mtUserPropPRODUCTGROUPNO.AsInteger ;
  mtPackages.FieldByName('ProductNo').AsInteger       :=  mtUserPropPRODUCTNO.AsInteger ;
  mtPackages.FieldByName('SupplierCode').AsString     := Trim(mtUserPropSupplierCode.AsString) ;

  mtPackages.FieldByName('GradeStampNo').AsInteger    := mtUserPropGradeStampNo.AsInteger ;
  mtPackages.FieldByName('BarCodeID').AsInteger       := mtUserPropBarCodeNo.AsInteger ;
  mtPackages.FieldByName('SurfacingNo').AsInteger     := mtUserPropSurfacingNo.AsInteger ;
  mtPackages.FieldByName('Description').AsString      := mtUserPropPRODUCTDESCRIPTION.AsString ;
  mtPackages.FieldByName('ACT_THICK').AsFloat         := mtUserPropACT_THICK.AsFloat ;
  mtPackages.FieldByName('ACT_WIDTH').AsFloat         := mtUserPropACT_WIDTH.AsFloat ;
  mtPackages.FieldByName('Totalm2').AsFloat           := mtUserPropPris.AsFloat ;

  if dmsPkg.mtUserPropInputOption.AsInteger = INPUT_AM3_TOTALPCS then
   mtPackages.FieldByName('TotalPcs').AsInteger  := 1 ;

  mtPackages.FieldByName('NOM_THICK').AsFloat         := mtUserPropNOM_THICK.AsFloat ;
  mtPackages.FieldByName('NOM_WIDTH').AsFloat         := mtUserPropNOM_WIDTH.AsFloat ;
//  mtPackages.FieldByName('INCH_THICK').AsFloat        := mtProd_RecordsINCH_THICK.AsFloat ;
//  mtPackages.FieldByName('INCH_WIDTH').AsFloat        := mtProd_RecordsINCH_WIDTH.AsFloat ;
  Finally
   GlobalCounter:= Succ(GlobalCounter) ;
  End ;
 End ;
end;

procedure TdmsPkg.DataModuleCreate(Sender: TObject);
Var x : Integer ;
begin
 GlobalCounter:= 1 ;
 mtDupPkgNo.Active:= True ;
// mtProd_Records.Active:= True ;
 For x := 0 to 300 do
 Begin
  PcsPerLengthArray[x]:= 0;
//  AVERAGE_LengthArray[x]:= 0;
//  ActualLengthMMArray[x]:= 0;
//  NominalLengthMMArray[x]:= 0;
//  FEET_Array[x]:= 0 ;
 End ;
end;

procedure TdmsPkg.mtPackagesBeforeInsert(DataSet: TDataSet);
begin
 if mtUserProp.State in [dsEdit, dsInsert] then
 mtUserProp.Post ;
end;

procedure TdmsPkg.mtPackagesAfterDelete(DataSet: TDataSet);
Var x : Integer ;
begin
 For x := 0 to 300 do
  PcsPerLengthArray[x]:= 0 ;
end;

procedure TdmsPkg.SummarizePkg ;
var x : Integer ;
begin
 With dmsPkg do
 Begin
  if mtpackages.State <> dsBrowse then
  Begin
   if dmsPkg.mtUserPropInputOption.AsInteger = INPUT_AM3_TOTALPCS then
   Begin
//LOPM
    mtpackages.Fields[cTOTALLPM].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALLPM].AsFloat:= RoundTo(mtpackages.Fields[cTOTALACTM3].AsFloat
    /
    (mtpackages.Fields[cACTTHICK].AsFloat / 1000 * mtpackages.Fields[cACTWIDTH].AsFloat / 1000),-3) ;

//NOM M3
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= //mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (mtpackages.Fields[cTOTALLPM].AsFloat
    *  mtpackages.Fields[cNOMTHICK].AsFloat / 1000 * mtpackages.Fields[cNOMWIDTH].AsFloat / 1000) ;

//M2
{    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALM2].AsFloat:= //mtpackages.Fields[cTOTALM2].AsFloat +
    (mtpackages.Fields[cTOTALLPM].AsFloat * //LÖPM
    mtpackages.Fields[cACTWIDTH].AsFloat / 1000);
    }
   End//if dmsPkg.mtUserPropInputOption.AsInteger = INPUT_AM3_TOTALPCS then

   else


   if (mtUserPropInputOption.AsInteger = INPUT_PIECES) or (mtUserPropInputOption.AsInteger = INPUT_SPECIAL_LENGTH) then
   Begin
//PCS
    mtpackages.Fields[cTOTALPCS].AsInteger:= 0 ;

    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALPCS].AsInteger:= mtpackages.Fields[cTOTALPCS].AsInteger +
    mtpackages.Fields[x].AsInteger ;

//MFBM
{    mtpackages.Fields[cTOTALMFBM].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALMFBM].AsFloat:= mtpackages.Fields[cTOTALMFBM].AsFloat +
    (mtpackages.Fields[x].AsInteger //Pieces
    *  mtpackages.Fields[cINCHTHICK].AsFloat * mtpackages.Fields[cINCHWIDTH].AsFloat
    * FEET_Array[x]/12/1000) ; }


//ACT M3
    mtpackages.Fields[cTOTALACTM3].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALACTM3].AsFloat:= mtpackages.Fields[cTOTALACTM3].AsFloat +
    (StrToFloat(mtpackages.Fields[x].DisplayLabel)/1000
    * mtpackages.Fields[x].AsInteger //Pieces
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 *mtpackages.Fields[cACTWIDTH].AsFloat/1000) ;
//NOM M3
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (StrToFloat(mtpackages.Fields[x].DisplayLabel)/1000
    * mtpackages.Fields[x].AsInteger //Pieces
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ;
//LOPM
    mtpackages.Fields[cTOTALLPM].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALLPM].AsFloat:= mtpackages.Fields[cTOTALLPM].AsFloat +
    ( StrToFloat(mtpackages.Fields[x].DisplayLabel)/1000
    * mtpackages.Fields[x].AsInteger //Pieces
    );

//M2

{    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[cTOTALM2].AsFloat +
    (StrToFloat(mtpackages.Fields[x].DisplayLabel)/1000
    * mtpackages.Fields[x].AsInteger * //Pieces
    mtpackages.Fields[cACTWIDTH].AsFloat/1000);
    }


   End
   else
   if mtUserPropInputOption.AsInteger = INPUT_LOPM_TOTAL_LOPM then
//INPUT LÖPMETER!!
   Begin
//PCS
//    if mtpackages.Fields[FirstLengthColumn].AsInteger < 1 then
//     mtpackages.Fields[FirstLengthColumn].AsInteger:= 1 ;

    mtpackages.Fields[cTOTALPCS].AsInteger:= 0 ; //pcs
    mtpackages.Fields[cTOTALPCS].AsInteger:= 1 ;
//OBS! CALCULATE LENGTH  TOTAL LÖPMETER (METER) DIVIDED BY TOTAL PIECES X 1000 (TO CONVERT TO MM)

{    if mtpackages.Fields[cTOTALPCS].AsInteger > 0 then
    NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]:=
    mtpackages.Fields[cTOTALLPM].AsFloat
    /
    mtpackages.Fields[cTOTALPCS].AsInteger*1000; }


//ACT M3
    mtpackages.Fields[cTOTALACTM3].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALACTM3].AsFloat:=
    (mtpackages.Fields[cTOTALLPM].AsFloat
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 *mtpackages.Fields[cACTWIDTH].AsFloat/1000) ;
//NOM M3
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (mtpackages.Fields[cTOTALLPM].AsFloat
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ;

//LOPM

//M2
{    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[cTOTALM2].AsFloat +
    (mtpackages.Fields[cTOTALLPM].AsFloat * //LÖPM
    mtpackages.Fields[cACTWIDTH].AsFloat/1000);
    }
   End
   else
   if mtUserPropInputOption.AsInteger = INPUT_LOPM_AVERAGE_LENGTH then
//INPUT LÖPMETER AVERAGE LENGTH!!
   Begin
//OBS! CALCULATE LENGTH  TOTAL LÖPMETER (METER) DIVIDED BY TOTAL PIECES X 1000 (TO CONVERT TO MM)
{    if mtpackages.Fields[cTOTALPCS].AsInteger > 0 then
    NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]:=
    mtpackages.Fields[FirstLengthColumn].AsFloat ; }

//LOPM
    mtpackages.Fields[cTOTALLPM].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALLPM].AsFloat:= mtpackages.Fields[FirstLengthColumn].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger ;//Pieces

//ACT M3
    mtpackages.Fields[cTOTALACTM3].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALACTM3].AsFloat:=
    mtpackages.Fields[FirstLengthColumn].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger //Pieces
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 * mtpackages.Fields[cACTWIDTH].AsFloat/1000 ;

//NOM M3
{    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]
    * mtpackages.Fields[cTOTALPCS].AsInteger //Pieces
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ; }


//M2
{    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[FirstLengthColumn].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger * //Pieces
    mtpackages.Fields[cACTWIDTH].AsFloat/1000 ; }
   End //if mtUserPropInputOption.AsInteger = INPUT_LOPM_AVERAGE_LENGTH then

   else
   if mtUserPropInputOption.AsInteger = INPUT_AM3_LENGTH then
//INPUT LÖPMETER AVERAGE LENGTH!!
   Begin
//OBS! CALCULATE LENGTH  TOTAL LÖPMETER (METER) DIVIDED BY TOTAL PIECES X 1000 (TO CONVERT TO MM)
{    if mtpackages.Fields[cTOTALPCS].AsInteger > 0 then
    NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]:=
    mtpackages.Fields[FirstLengthColumn].AsFloat ; }

//    mtpackages.Fields[cTOTALPCS].AsInteger:= mtpackages.Fields[cTOTALPCS].AsInteger +
//    mtpackages.Fields[x].AsInteger ;

//ACT M3
    mtpackages.Fields[cTOTALPCS].AsFloat  := 0 ;
    if ((mtpackages.Fields[FirstLengthColumn].AsFloat
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 * mtpackages.Fields[cACTWIDTH].AsFloat/1000)) > 0 then
    mtpackages.Fields[cTOTALPCS].AsFloat  :=
    mtpackages.Fields[cTOTALACTM3].AsFloat /
    (mtpackages.Fields[FirstLengthColumn].AsFloat
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 * mtpackages.Fields[cACTWIDTH].AsFloat/1000) ;

//LOPM
    mtpackages.Fields[cTOTALLPM].AsFloat  := 0 ;
    if mtpackages.Fields[cTOTALPCS].AsInteger > 0 then
    mtpackages.Fields[cTOTALLPM].AsFloat  := mtpackages.Fields[FirstLengthColumn].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger ;//Pieces

//NOM M3
{    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]
    * mtpackages.Fields[cTOTALPCS].AsInteger //Pieces
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ; }


//M2
{    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[FirstLengthColumn].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger * //Pieces
    mtpackages.Fields[cACTWIDTH].AsFloat/1000 ; }
   End


   else
   if mtUserPropInputOption.AsInteger = INPUT_RAMAR then
//INPUT LÖPMETER AVERAGE LENGTH!!
   Begin
//OBS! CALCULATE LENGTH  TOTAL LÖPMETER (METER) DIVIDED BY TOTAL PIECES X 1000 (TO CONVERT TO MM)
{    if mtpackages.Fields[cTOTALPCS].AsInteger > 0 then
    NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]:=
    mtpackages.Fields[FirstLengthColumn].AsFloat ; }

//    mtpackages.Fields[cTOTALPCS].AsInteger:= mtpackages.Fields[cTOTALPCS].AsInteger +
//    mtpackages.Fields[x].AsInteger ;

//ACT M3
//    mtpackages.Fields[cTOTALPCS].AsFloat  := 0 ;

{    if ((mtpackages.Fields[FirstLengthColumn].AsFloat
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 * mtpackages.Fields[cACTWIDTH].AsFloat/1000)) > 0 then
    mtpackages.Fields[cTOTALPCS].AsFloat  :=
    mtpackages.Fields[cTOTALACTM3].AsFloat /
    (mtpackages.Fields[FirstLengthColumn].AsFloat
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 * mtpackages.Fields[cACTWIDTH].AsFloat/1000) ;
 }


//LOPM
    mtpackages.Fields[cTOTALLPM].AsFloat  := 0 ;
    if mtpackages.Fields[cTOTALPCS].AsInteger > 0 then
    mtpackages.Fields[cTOTALLPM].AsFloat  := mtUserPropALMM.AsFloat/1000
    * mtpackages.Fields[cTOTALPCS].AsInteger ;//Pieces

    mtpackages.Fields[cTOTALACTM3].AsFloat  :=  mtpackages.Fields[cTOTALLPM].AsFloat *
    (mtUserPropNOM_THICK.AsFloat/1000 * mtUserPropNOM_WIDTH.AsFloat/1000) ;

//NOM M3
{    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]
    * mtpackages.Fields[cTOTALPCS].AsInteger //Pieces
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ; }


//M2
{    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[FirstLengthColumn].AsFloat
    * mtpackages.Fields[cTOTALPCS].AsInteger * //Pieces
    mtpackages.Fields[cACTWIDTH].AsFloat/1000 ; }
   End ;


  End ; //if
 End ; //With
end;

procedure TdmsPkg.mtPackagesBeforePost(DataSet: TDataSet);
begin
 if DataSet.Fields[cPACKAGENO].IsNull then
 Begin
//  ShowMessage('Paketnr saknas.') ;
  Abort ;
 End ;
 SummarizePkg ;
end;


//for package entry without LO
procedure TdmsPkg.MakeLengthQuery_II ;
Begin
 sq_ProductLengths.SQL.Clear ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ActualLengthMM');
// sq_ProductLengths.SQL.Add('PL.ActualLengthINCH');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo');
 sq_ProductLengths.SQL.Add(LengthWHERE_II) ;
// if ThisUser.UserID = 8 then sq_ProductLengths.SQL.SaveToFile('sq_ProductLengths.txt');
End ;

 function TdmsPkg.LengthWHERE_II : String ;
 Var //x : integer ;
     SQL : String ;
 Begin
  SQL:= '' ;
   With dmsPkg do
   Begin
    mtUserProp.First ;
    if not mtUserProp.Eof then
    Begin
     SQL:= ' WHERE ((PGL.ProductGroupNo = '+mtUserPropPRODUCTGROUPNO.AsString+')' ;
     InsertProductGroupSpecificLengths(mtUserPropPRODUCTGROUPNO.AsInteger) ;
    End ;
    mtUserProp.Next ;
    While not mtUserProp.Eof do
    Begin
     InsertProductGroupSpecificLengths(mtUserPropPRODUCTGROUPNO.AsInteger) ;
     SQL:= SQL + ' OR (PGL.ProductGroupNo = '+mtUserPropPRODUCTGROUPNO.AsString+')' ;
     mtUserProp.Next ;

    End ; //while
    SQL:= SQL +')' ;
//    SQL:= SQL + ' AND PL.ActualLengthMM < 40000' ;
    SQL:= SQL + ' AND PL.ActualLengthMM > 0.5' ;
    SQL:= SQL + ' AND PL.Act = 1' ;
    SQL:= SQL +' ORDER BY PL.ActualLengthMM ' ;

   End ;//with
   Result:= SQL ;
 End ;

procedure TdmsPkg.mtPackagesBeforeDelete(DataSet: TDataSet);
begin
  //LARS
  OldProductGroupNo := mtUserPropPRODUCTGROUPNO.AsInteger ;
  if mtDupPkgNo.FindKey([DataSet.Fields[cPACKAGENO].AsInteger, Trim(DataSet.Fields[cSUPPLIERCODE].AsString)]) then
  mtDupPkgNo.Delete ;
end;

procedure TdmsPkg.MakeLengthQuery_STD_Lengths (const STD_LengthGroupNo : Integer) ;
Begin
 sq_ProductLengths.SQL.Clear ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ActualLengthMM');
// sq_ProductLengths.SQL.Add('PL.ActualLengthINCH');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductLengthGroup PGL');
 sq_ProductLengths.SQL.Add('INNER JOIN ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo');
 sq_ProductLengths.SQL.Add('WHERE  PGL.GroupNo = '+IntToStr(STD_LengthGroupNo)) ;
 sq_ProductLengths.SQL.Add(' AND PL.ActualLengthMM > 0.5') ;
 sq_ProductLengths.SQL.Add(' AND PL.ActualLengthMM < 40000') ;
 sq_ProductLengths.SQL.Add(' ORDER BY PL.ActualLengthMM ') ;
End ;

 function TdmsPkg.WHERE_For_STD_Lengths : String ;
 Var //x : integer ;
     SQL : String ;
 Begin
  SQL:= '' ;
   With dmsPkg do
   Begin
    mtUserProp.First ;
    if not mtUserProp.Eof then
    Begin
     SQL:= ' AND ((PrL.ProductGroupNo = '+mtUserPropPRODUCTGROUPNO.AsString+')' ;
     InsertProductGroupSpecificLengths(mtUserPropPRODUCTGROUPNO.AsInteger) ;
    End ;
    mtUserProp.Next ;
    While not mtUserProp.Eof do
    Begin
     InsertProductGroupSpecificLengths(mtUserPropPRODUCTGROUPNO.AsInteger) ;
     SQL:= SQL + ' OR (PrL.ProductGroupNo = '+mtUserPropPRODUCTGROUPNO.AsString+')' ;
     mtUserProp.Next ;

    End ; //while
    SQL:= SQL +') AND PL.ActualLengthMM > 0.5' ;
    SQL:= SQL + ' AND PL.ActualLengthMM < 40000' ;
    SQL:= SQL +' ORDER BY PL.ActualLengthMM ' ;
   End ;//with
   Result:= SQL ;
 End ;

procedure TdmsPkg.cds_ProdLengthAfterInsert(DataSet: TDataSet);
begin
 cds_ProdLengthAct.AsInteger:= 0 ;
end;

procedure TdmsPkg.mtUserPropOwnerNoChange(Sender: TField);
begin
 With dm_UserProps do
 Begin
  cds_PIP.Active:= False ;
  cds_PIP.ParamByName('OwnerNo').AsInteger:= mtUserPropOwnerNo.AsInteger ;

  if mtUserPropRoleType.AsInteger = cLego then
  cds_PIP.ParamByName('LegoOwnerNo').AsInteger:= mtUserPropVerkNo.AsInteger
  else
  cds_PIP.ParamByName('LegoOwnerNo').AsInteger:= mtUserPropOwnerNo.AsInteger ;

 if (ThisUser.CompanyNo = cVidaPackaging) or
 (ThisUser.CompanyNo = cOsterlovsta) then
  Begin
   cds_PIP.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
  End
  else
  Begin
   cds_PIP.ParamByName('UserID').AsInteger:= -1 ;
  End ;

  cds_PIP.Active:= True ;
  cds_PIP.First ;
  mtUserPropPIPNo.AsInteger:= cds_PIPPIPNO.AsInteger ;
 End ;
end;

procedure TdmsPkg.mtUserPropPIPNoChange(Sender: TField);
begin
 With dm_UserProps do
 Begin
  cds_LIP.Active:= False ;
  cds_LIP.ParamByName('PIPNo').AsInteger:= mtUserPropPIPNo.AsInteger ;
  cds_LIP.Active:= True ;
  cds_LIP.First ;
  mtUserPropLIPNo.AsInteger:= cds_LIPLIPNo.AsInteger ;
 End ;
end;

procedure TdmsPkg.mtUserPropProducerNoChange(Sender: TField);
begin
 With dm_UserProps do
 Begin
  mtUserPropSupplierCode.AsString:= dmsContact.GetClientCode(mtUserPropProducerNo.AsInteger) ;
  cds_RegPoint.Active:= False ;
  cds_RegPoint.ParamByName('ClientNo').AsInteger:= mtUserPropProducerNo.AsInteger ;
  cds_RegPoint.Active:= True ;
  cds_RegPoint.First ;
  mtUserPropRegPointNo.AsInteger:= cds_RegPointRegistrationPointNo.AsInteger ;
 End ;
end;


end.
