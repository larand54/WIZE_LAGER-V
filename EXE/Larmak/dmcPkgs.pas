unit dmcPkgs;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient, kbmMemTable, SqlTimSt, Dialogs,
  VidaType, QControls, Controls, Forms ;

type

  TdmPkgs = class(TDataModule)
    mtLoadPackages: TkbmMemTable;
    mtLoadPackagesLoadDetailNo: TIntegerField;
    mtLoadPackagesPACKAGENO: TIntegerField;
    mtLoadPackagesNOOFPKG: TIntegerField;
    mtLoadPackagesPACKAGETYPENO: TIntegerField;
    mtLoadPackagesSUPP_CODE: TStringField;
    mtLoadPackagesM3_NET: TFloatField;
    mtLoadPackagesPCS: TIntegerField;
    mtLoadPackagesM3_NOM: TFloatField;
    mtLoadPackagesKVM: TFloatField;
    mtLoadPackagesLOPM: TFloatField;
    ds_LoadPackages: TDataSource;
    mtLoadPackagesPRODUCT: TStringField;
    mtLoadPackagesProductNo: TIntegerField;
    sp_DeletePackage: TSQLStoredProc;
    mtLoadPackagesINVENTORY: TStringField;
    mtLoadPackagesON_STICKS: TIntegerField;
    mtLoadPackagesPCS_PER_LENGTH: TStringField;
    mtLoadPackagesOWNER: TStringField;
    mtLoadPackagesOWNERNO: TIntegerField;
    mtLoadPackagesLOG_INVENTORY_NO: TIntegerField;
    mtLoadPackagesBAR_CODE: TStringField;
    mtLoadPackagesBARCODE_ID: TIntegerField;
    mtLoadPackagesGRADE_STAMP: TStringField;
    mtLoadPackagesGRADESTAMPNO: TIntegerField;
    mtLoadPackagesPKG_HEIGHT: TIntegerField;
    mtLoadPackagesPKG_WIDTH: TIntegerField;
    mtLoadPackagesMINI_BUNDLE: TIntegerField;
    mtLoadPackagesSHRINK_WRAP: TIntegerField;
    mtLoadPackagesWRAP_TYPE: TStringField;
    mtLoadPackagesWRAPTYPENO: TIntegerField;
    mtPackages: TkbmMemTable;
    dsmtPackages: TDataSource;
    sq_ProductLengths: TSQLQuery;
    sq_ProductLengthsProductLengthNo: TIntegerField;
    sq_ProductLengthsActualLengthMM: TFloatField;
    sq_ProductLengthsNominalLengthMM: TFloatField;
    sq_ProductLengthsNominalLengthFEET: TFloatField;
    sq_ProductLengthsActualLengthINCH: TStringField;
    sq_ProductLengthsPET: TIntegerField;
    sq_ProductLengthsFingerJoint: TIntegerField;
    mtProdSpecificLengths: TkbmMemTable;
    mtProdSpecificLengthsProductGroupNo: TIntegerField;
    mtProdSpecificLengthsProductLengthNo: TIntegerField;
    sp_ProdLeng: TSQLStoredProc;
    sp_ProdLengProductLengthNo: TIntegerField;
    mtStandardLengths: TkbmMemTable;
    mtStandardLengthsProductLengthNo: TIntegerField;
    sp_StandardLengths: TSQLStoredProc;
    sp_StandardLengthsProductLengthNo: TIntegerField;
    sq_OnePkgDetailData: TSQLQuery;
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
    sp_PackageTypeDetail: TSQLStoredProc;
    sp_NewPackageType: TSQLStoredProc;
    sp_PackageTypes: TSQLStoredProc;
    sp_NewPackageDetail: TSQLStoredProc;
    sp_NewPackageNo: TSQLStoredProc;
    sp_PackageTotals: TSQLStoredProc;
    sp_Populate_One_PkgTypeLengths: TSQLStoredProc;
    sp_PkgInfo: TSQLStoredProc;
    sp_PkgInfoCREATED: TSQLTimeStampField;
    sp_PkgInfoCREATED_BY: TStringField;
    sp_PkgInfoOWNER: TStringField;
    sp_PkgInfoPKG_STATUS: TIntegerField;
    sp_PkgInfoINVENTORY: TStringField;
    mtLoadPackagesACTTHICK: TFloatField;
    mtLoadPackagesACTWIDTH: TFloatField;
    mtLoadPackagesNOMTHICK: TFloatField;
    mtLoadPackagesNOMWIDTH: TFloatField;
    mtLoadPackagesSUPPLIERNO: TIntegerField;
    sq_OnePkgDetailDataSUPPLIERNO: TIntegerField;
    sp_ChangePkg: TSQLStoredProc;
    mtLoadPackagesOld_PackageTypeNo: TIntegerField;
    sq_OnePkgDetailDataOLD_PACKAGETYPENO: TIntegerField;
    sq_GetPkgsByLONo: TSQLQuery;
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
    sp_SetPkgStatus: TSQLStoredProc;
    sq_OneUniquePkg: TSQLQuery;
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
    sp_RemovePackageFromInventory: TSQLStoredProc;
    mtLoadPackagesROWNO: TIntegerField;
    sq_Prod_In_LO: TSQLQuery;
    dsp_Prod_In_LO: TDataSetProvider;
    cds_Prod_In_LO: TClientDataSet;
    ds_Prod_In_LO: TDataSource;
    cds_Prod_In_LOPRODUCT: TStringField;
    cds_Prod_In_LOPRODUCTNO: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure mtPackagesBeforePost(DataSet: TDataSet);
    procedure mtLoadPackagesAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
   fChangePkgSize: Boolean ;
   fPkg_Width, fPkg_Height : Integer ;
   procedure PrepareLocalPkgTable ;
   function  LengthWHERE_II : String ;
   Procedure InsertProductGroupSpecificLengths(ProductGroupNo : Integer) ;

   function  Pkg_Info(PkgNo: Integer;SuppCode : String) : String ;
  public
    { Public declarations }
    ROWNO : Integer ;
    RoleType : Integer ;
    fOnSticks,
    fMiniBundled, fWrapTypeNo, fGradeStampNo, fBarCodeID, fShrinkWrap : Integer ;
    PcsPerLengthArray : Array[0..300] of Integer ; //to copy no of pcs to new row
    ActualLengthMMArray : Array[0..300] of Double ;
    NominalLengthMMArray : Array[0..300] of Double ;

    fRegistrationPointNo : Integer ;
    InputOption : Integer ;
    SupplierCode : String3 ;
    SupplierNo : Integer ;
    InventoryOwnerNo : Integer ;
    fLogicalInventoryNo: Integer ;
    ProductLengthNo_For_LPM_Entry : Integer ;
    InventoryNo : Integer ;

   GlobalLoadDetailNo : Integer ;
   fProductNo, fProductGroupNo : Integer ;

//   FAvrop_CustomerNo, FCustomerNo   : integer;
   function  DeletePackagesFromSystem (RegistrationPointNo : Integer) : Boolean ;
   function  RemovePkgsFromInventory (RegistrationPointNo : Integer) : Boolean ;
   procedure SummarizePkg ;
   function  SavePackages(LogicalInventoryPointNo, OwnerNo, RegistrationPointNo: Integer;
                ChangePkgSize: Boolean; PkgWidth, PkgHeight : Integer) : Boolean ;
   procedure LoadGroupLengths(GroupNo : Integer);
   procedure MakeLengthQuery_II ;
  end;

var
  dmPkgs: TdmPkgs;

implementation

uses dmsDataConn, VidaConst, VidaUser, fReconsile, dmsVidaContact,
  LECSLogClient ;

{$R *.dfm}



procedure TdmPkgs.DataModuleCreate(Sender: TObject);
begin
 GlobalLoadDetailNo := 1 ;
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

(*
//ACT M3
    mtpackages.Fields[cTOTALACTM3].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALACTM3].AsFloat:= mtpackages.Fields[cTOTALACTM3].AsFloat +
    (ActualLengthMMArray[x]/1000
    * mtpackages.Fields[x].AsInteger //Pieces
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 *mtpackages.Fields[cACTWIDTH].AsFloat/1000) ;
//NOM M3
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (ActualLengthMMArray[x]/1000
    * mtpackages.Fields[x].AsInteger //Pieces
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ;
//LOPM
    mtpackages.Fields[cTOTALLPM].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALLPM].AsFloat:= mtpackages.Fields[cTOTALLPM].AsFloat +
    (ActualLengthMMArray[x]/1000
    * mtpackages.Fields[x].AsInteger //Pieces
    );

//M2
    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[cTOTALM2].AsFloat +
    (ActualLengthMMArray[x]/1000
    * mtpackages.Fields[x].AsInteger * //Pieces
    mtpackages.Fields[cACTWIDTH].AsFloat/1000);
    *)

  End ;
end;



//for package entry without LO
procedure TdmPkgs.MakeLengthQuery_II ;
Begin
 sq_ProductLengths.SQL.Clear ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ProductLengthNo, PL.ActualLengthMM, PL.NominalLengthMM, PL.NominalLengthFEET ,');
 sq_ProductLengths.SQL.Add('PL.ActualLengthINCH , PL.PET , PL.FingerJoint');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo');
 sq_ProductLengths.SQL.Add(LengthWHERE_II) ;
// sq_ProductLengths.SQL.SaveToFile('sq_ProductLengths.txt');
End ;

 function TdmPkgs.LengthWHERE_II : String ;
 Var
     SQL : String ;
 Begin
  SQL:= '' ;
     SQL:= ' WHERE ((PGL.ProductGroupNo = '+IntToStr(fProductGroupNo)+')' ;
     InsertProductGroupSpecificLengths(fPRODUCTGROUPNO) ;


    SQL:= SQL +') AND PL.ActualLengthMM > 0.5' ;
    SQL:= SQL + ' AND PL.ActualLengthMM < 40000' ;
    SQL:= SQL +' ORDER BY PL.ActualLengthMM ' ;

   Result:= SQL ;
 End ;

Procedure TdmPkgs.InsertProductGroupSpecificLengths(ProductGroupNo : Integer) ;

Begin


 if not mtProdSpecificLengths.FindKey([ProductGroupNo]) then
 Begin
  sp_ProdLeng.Close ;
  sp_ProdLeng.ParamByName('ProductGroupNo').AsInteger:= ProductGroupNo ;
  sp_ProdLeng.Open ;
  sp_ProdLeng.First ;
  While not sp_ProdLeng.Eof do
  Begin



   mtProdSpecificLengths.Insert ;
   mtProdSpecificLengthsProductGroupNo.AsInteger:= ProductGroupNo ;
   mtProdSpecificLengthsProductLengthNo.AsInteger:= sp_ProdLengProductLengthNo.AsInteger ;
   mtProdSpecificLengths.Post ;
   sp_ProdLeng.Next ;
  End ;
  sp_ProdLeng.Close ;
 End ; //with

End ;

procedure TdmPkgs.LoadGroupLengths(GroupNo : Integer);

begin
  mtStandardLengths.Active:= False ;
  mtStandardLengths.Active:= True ;
  // Populate the list with std lengths applicable to the selected length group
  sp_StandardLengths.Close;
  sp_StandardLengths.ParamByName('LengthGroupNo').AsInteger := GroupNo;
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


function TdmPkgs.SavePackages(LogicalInventoryPointNo, OwnerNo, RegistrationPointNo: Integer;
ChangePkgSize: Boolean; PkgWidth, PkgHeight : Integer) : Boolean ;
Var
    Save_Cursor:TCursor;
    OldIndexName : String ;
const
  PKGS_CREATED_AT_PLANER_MILL = 1;
Type
  PMyList = ^AList;
  AList = record
    ProductLengthNo: Integer;
    NoOfPieces: Integer;
  end;
var
  iPkg : Integer;
//  OnePkg : TPackageDataToSave;
//  WhenCreated : TDateTime;
  TransactionNo : LongWord;
  PkgTypeNumbers : TList;
  PackagetypeNo  : Integer ;

  MyList: TList;
  ARecord: PMyList;

  procedure SavePkgType ;
  Var
     iDtls : Integer ;

    procedure SelectMatchingPkgTypeHdrs;
    begin

      // First get all package type (header) records that match
      sp_PackageTypes.ParamByName('ProductNo'    ).AsInteger := mtLoadPackagesPRODUCTNO.AsInteger ;




      if mtLoadPackagesBARCODE_ID.AsInteger = 0 then
      sp_PackageTypes.ParamByName('BarCodeID'    ).AsInteger := -1
      else
      sp_PackageTypes.ParamByName('BarCodeID'    ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNo.AsInteger = 0 then
      sp_PackageTypes.ParamByName('GradeStamp'   ).AsInteger := -1
      else
      sp_PackageTypes.ParamByName('GradeStamp'   ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;

      if mtLoadPackagesWRAPTYPENO.AsInteger = 0 then
      sp_PackageTypes.ParamByName('WrapType'     ).AsInteger := -1
      else
      sp_PackageTypes.ParamByName('WrapType'     ).AsInteger := mtLoadPackagesWRAPTYPENO.AsInteger ;

      sp_PackageTypes.ParamByName('PackageHeight').AsInteger := mtLoadPackagesPKG_HEIGHT.AsInteger ;
      sp_PackageTypes.ParamByName('PackageWidth' ).AsInteger := mtLoadPackagesPKG_WIDTH.AsInteger ;

      sp_PackageTypes.ParamByName('TotalPieces'  ).AsInteger := mtLoadPackagesPCS.AsInteger ;
//      sp_PackageTypes.ParamByName('ActualM3'     ).AsFloat   := mtLoadPackagesTOTALACTM3].AsFloat ;

      sp_PackageTypes.ParamByName('Minibundled').AsInteger := mtLoadPackagesMINI_BUNDLE.AsInteger ;

      sp_PackageTypes.ParamByName('ShrinkWrap' ).AsInteger := mtLoadPackagesSHRINK_WRAP.AsInteger ;

      sp_PackageTypes.ParamByName('OnSticks'   ).AsInteger := mtLoadPackagesON_STICKS.AsInteger ;

      sp_PackageTypes.Open;
      try
        sp_PackageTypes.First;
        while not sp_PackageTypes.Eof do begin
          PkgTypeNumbers.Add(Pointer(sp_PackageTypes.FieldByName('PackageTypeNo').AsInteger));
          sp_PackageTypes.Next;
          end;
      finally
        sp_PackageTypes.Close;
        end;

    end;

    Function GetNoOfLengthsInPkg : Integer ;
    Var x : Integer ;
    Begin
     Result:= 0 ;
     for x := 2 to mtPackages.FieldCount - 1 do
     Begin
      if mtPackages.Fields[x].AsInteger > 0 then
      Begin
       New(ARecord);
       ARecord^.ProductLengthNo:= StrToInt(mtPackages.Fields[x].FieldName) ;
       ARecord^.NoOfPieces:= mtPackages.Fields[x].AsInteger ;
       MyList.Add(ARecord);
      End ;
     End ;
    End ;

    Function GetNoOfOriginalLengthsInPkg : Integer ;

    Begin
     Result:= 0 ;
     sp_PackageTypeDetail.Close;
     sp_PackageTypeDetail.ParamByName('PackageTypeNo').AsInteger := mtLoadPackagesPACKAGETYPENO.AsInteger ;// Integer(PkgTypeNumbers[0]);
     sp_PackageTypeDetail.Open;
     sp_PackageTypeDetail.First;
          // NB We know that both the data retrieved from sp_PackageTypeDetail and the
          // grid column info are in length order, smallest to largest.

      while not sp_PackageTypeDetail.Eof  do
      begin
       New(ARecord);
       ARecord^.ProductLengthNo:= sp_PackageTypeDetail.FieldValues['ProductLengthNo'] ;
       ARecord^.NoOfPieces:= sp_PackageTypeDetail.FieldValues['NoOfPieces'] ;
       MyList.Add(ARecord);
       sp_PackageTypeDetail.Next;
      end;
     sp_PackageTypeDetail.Close;
    End ;



    procedure MatchingPackageType;
    var
      LengthMatched : Boolean;
      NoOfLengths, iDtl : Integer;
    begin
      // Check which if a selected package type hdr matches in terms of length details
      if (mtpackages.Active) AND (mtpackages.Fields[1].AsInteger > 0) then
      NoOfLengths := GetNoOfLengthsInPkg
      else
       NoOfLengths :=  GetNoOfOriginalLengthsInPkg ;

      PackagetypeNo := NO_MATCH;
      while (PkgTypeNumbers.Count > 0) and (PackageTypeNo = NO_MATCH) do
      begin
        try
          sp_PackageTypeDetail.Close;
          sp_PackageTypeDetail.ParamByName('PackageTypeNo').AsInteger := Integer(PkgTypeNumbers[0]);
          sp_PackageTypeDetail.Open;

          LengthMatched := TRUE;
          iDtl := 0;
          sp_PackageTypeDetail.First;
          // NB We know that both the data retrieved from sp_PackageTypeDetail and the
          // grid column info are in length order, smallest to largest.

          while LengthMatched and not sp_PackageTypeDetail.Eof and (iDtl < MyList.Count) do
          begin
           ARecord := MyList.Items[iDtl];


            if (sp_PackageTypeDetail.FieldValues['ProductLengthNo'] <>
             ARecord^.ProductLengthNo)
              OR (sp_PackageTypeDetail.FieldValues['NoOfPieces'] <>
              ARecord^.NoOfPieces) then
               LengthMatched := FALSE
            else
              begin
               inc(iDtl);
               sp_PackageTypeDetail.Next;
              end;
          end;

          if LengthMatched and sp_PackageTypeDetail.Eof and (iDtl = MyList.Count) then
            PackageTypeNo := Integer(PkgTypeNumbers[0]);

        finally
          PkgTypeNumbers.Delete(0);
        end;
      end; //with


    end;


    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
    var
      iDtl : Integer;
    begin
      PackageTypeNo := dmsConnector.NextMaxNo('PackageType');

      sp_NewPackageType.Close ;
      sp_NewPackageType.ParamByName('PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageType.ParamByName('ProductNo'       ).AsInteger := mtLoadPackagesPRODUCTNO.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger = 0 then
      sp_NewPackageType.ParamByName('BarCodeID'       ).AsInteger := -1
      else
      sp_NewPackageType.ParamByName('BarCodeID'       ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNO.AsInteger = 0 then
      sp_NewPackageType.ParamByName('GradeStamp'      ).AsInteger := -1
      else
      sp_NewPackageType.ParamByName('GradeStamp'      ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;

      if mtLoadPackagesWRAPTYPENO.AsInteger = 0 then
      sp_NewPackageType.ParamByName('WrapType'        ).AsInteger := -1
      else
      sp_NewPackageType.ParamByName('WrapType'        ).AsInteger := mtLoadPackagesWRAPTYPENO.AsInteger ;

      sp_NewPackageType.ParamByName('PackageHeight'   ).AsInteger := mtLoadPackagesPKG_HEIGHT.AsInteger ;
      sp_NewPackageType.ParamByName('PackageWidth'    ).AsInteger := mtLoadPackagesPKG_WIDTH.AsInteger ;
      sp_NewPackageType.ParamByName('TotalNoOfPieces' ).AsInteger := mtLoadPackagesPCS.AsInteger ;
//      sp_NewPackageType.ParamByName('TotalM3Actual'   ).AsFloat   := mtLoadPackagesM3_NET.AsFloat ;

      sp_NewPackageType.ParamByName('Minibundled').AsInteger := mtLoadPackagesMINI_BUNDLE.AsInteger ;
      sp_NewPackageType.ParamByName('ShrinkWrap' ).AsInteger := mtLoadPackagesSHRINK_WRAP.AsInteger ;
      sp_NewPackageType.ParamByName('OnSticks'   ).AsInteger := mtLoadPackagesON_STICKS.AsInteger ;

      sp_NewPackageType.ParamByName('UserID').AsInteger := ThisUser.UserID;
//      sp_NewPackageType.ParamByName('DateCreated').AsSQLTimeStamp := DateTimeToSQLTimeStamp(WhenCreated);

      sp_NewPackageType.ExecProc;
//      OnePkg.Header.PackageTypeNo := sp_NewPackageType.ParamByName('PackageTypeNo').AsInteger;

//************** Now add the PackageTypeDetail records. ********************
      for iDtl := 0 to MyList.Count - 1 do
       begin
        ARecord := MyList.Items[iDtl];
        sp_NewPackageDetail.ParamByName('PackageTypeNo'  ).AsInteger  := PackageTypeNo;
        sp_NewPackageDetail.ParamByName('ProductLengthNo').AsInteger  := ARecord^.ProductLengthNo ;
        sp_NewPackageDetail.ParamByName('NoOfPieces'     ).AsInteger  := ARecord^.NoOfPieces ;
        sp_NewPackageDetail.ParamByName('UserID'         ).AsInteger  := ThisUser.UserID;
  //      sp_NewPackageDetail.ParamByName('DateCreated'    ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(WhenCreated) ;
        sp_NewPackageDetail.ExecProc;
       end;

    end;

procedure  SavePackageTypeLengths ;
Begin
 sp_Populate_One_PkgTypeLengths.Close ;
 sp_Populate_One_PkgTypeLengths.ParamByName('SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
 sp_Populate_One_PkgTypeLengths.ExecProc ;
 sp_Populate_One_PkgTypeLengths.Close ;
End ;

  procedure SavePkgTotals( PackageTypeNo : Integer );
  begin
    sp_PackageTotals.ParamByName('PkgNo').AsInteger := PackageTypeNo;
    sp_PackageTotals.ExecProc;
    sp_PackageTotals.Close;
  end;


  begin
//    {$IFDEF LOGGER} LECSLogger.Write('SavePkgType'); {$ENDIF}
    PkgTypeNumbers := TList.Create;
    MyList := TList.Create;

    try
      SelectMatchingPkgTypeHdrs;
      MatchingPackageType ;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths ;
       End ;
//Dispose
   for iDtls:= 0 to (MyList.Count - 1) do
   begin
     ARecord := MyList.Items[iDtls];
     Dispose(ARecord);
   end;

    finally
      PkgTypeNumbers.Free;
      MyList.Free ;
    end;
  end;

  function SavePackage : Integer ;
  begin
    sp_NewPackageNo.ParamByName('PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_NewPackageNo.ParamByName('PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_NewPackageNo.ParamByName('SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_NewPackageNo.ParamByName('LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;//var kommer den från ? OnePkg.Header.LogInvPointNo;
    sp_NewPackageNo.ParamByName('SupplierNo'             ).AsInteger  := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_NewPackageNo.ParamByName('UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_NewPackageNo.ParamByName('RegistrationPointNo'    ).AsInteger  := RegistrationPointNo ; //PKGS_CREATED_AT_PLANER_MILL;
    sp_NewPackageNo.ParamByName('CreatedOfPkgStr'        ).AsInteger  := 0 ; // 0 = Manual entry
//  sp_NewPackageNo.ParamByName('DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(WhenCreated) ;
    Result:= sp_NewPackageNo.ExecProc;
  end;

  function UpdatePackage : Integer ;
  begin
    sp_ChangePkg.ParamByName('PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_ChangePkg.ParamByName('PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_ChangePkg.ParamByName('SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_ChangePkg.ParamByName('LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;//var kommer den från ? OnePkg.Header.LogInvPointNo;
//    sp_ChangePkg.ParamByName('SupplierNo'             ).AsInteger  := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_ChangePkg.ParamByName('UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_ChangePkg.ParamByName('RegistrationPointNo'    ).AsInteger  := RegistrationPointNo ; //PKGS_CREATED_AT_PLANER_MILL;
    sp_ChangePkg.ParamByName('OLD_PackageTypeNo'      ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger; //this is the old pkgtype
//  sp_ChangePkg.ParamByName('DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(WhenCreated) ;
    Result:= sp_ChangePkg.ExecProc;
  end;


//Main SavePackages  
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 fPkg_Width := PkgWidth ;
 fPkg_Height := PkgHeight ;
 fChangePkgSize:= ChangePkgSize ;
 fLogicalInventoryNo:= LogicalInventoryPointNo ;

// Update packages with the selections the user has done
 PrepareLocalPkgTable ;

// OldIndexName := mtPackages.IndexName ;
// mtPackages.IndexName:= 'PkgId';

// mtDupPkgNo.Active:= False ;
// mtDupPkgNo.Active:= True ;

// mtPackages.AfterPost:= NIL ;

Try

//  WhenCreated := Now; // All records created  in this transaction to get same time stamp
//  {$IFDEF LOGGER} LECSLogger.Write('TdmsProduct.SavePackages'); {$ENDIF}

  Result:= False ;

//    {$IFDEF LOGGER} LECSLogger.WriteFmt('Transaction Number : %d', [TransactionNo]); {$ENDIF}
//    {$IFDEF LOGGER} LECSLogger.WriteFmt('Package Count      : %d', [PkgList.Count]); {$ENDIF}

   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
//      OnePkg := TPackageDataToSave(PkgList[iPkg]);
  TransactionNo := dmsConnector.StartTransaction;
  try

      SavePkgType ;
//      SavePkgTotals(PackageTypeNo);

      Try
//      SavePackage ;
      UpdatePackage ;
      except
       ShowMessage ('Could not save Package no '+Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
       Result:= False ;
       Raise ;
      End ;

    dmsConnector.Commit(TransactionNo);
    Result:= True ;
  except
    dmsConnector.Rollback(TransactionNo);
    Result:= False ;
//    {$IFDEF LOGGER} LECSLogger.Write('Transaction failed & rolled back.'); {$ENDIF}
//    raise;
  end;

{    mtDupPkgNo.Insert ;
    mtDupPkgNoPackageNo.AsInteger:= mtPackages.Fields[cPACKAGENO].AsInteger ;
    mtDupPkgNoSupplierCode.AsString:= Trim(mtPackages.Fields[cSUPPLIERCODE].AsString) ;
    mtDupPkgNo.Post ;}

//    mtLoadPackages.Edit ;
//    mtLoadPackages.Fields[cPACKAGETYPENO].AsInteger:= PackageTypeNo ;
//    mtLoadPackages.Post ;



     mtLoadPackages.Next ;
     PackageTypeNo:= -1 ;
    end;


//    {$IFDEF LOGGER} LECSLogger.Write('Transaction completed & committed.'); {$ENDIF}

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
//  mtPackages.IndexName:= OldIndexName;
//  mtPackages.AfterPost:= mtPackagesAfterPost ;
 End ;

end;

function TdmPkgs.Pkg_Info(PkgNo: Integer;SuppCode : String) : String ;
Begin
 sp_PkgInfo.ParamByName('PackageNo').AsInteger:= PkgNo ;
 sp_PkgInfo.ParamByName('SupplierCode').AsString:= SuppCode ;
 sp_PkgInfo.Open ;
 Result:= intToStr(PkgNo)+'/'+SuppCode+' It was created by '+
 sp_PkgInfoCREATED_BY.AsString+' at: '+SQLTimeStampToStr('',sp_PkgInfoCREATED.AsSQLTimeStamp)+
 ' inventory: '+sp_PkgInfoINVENTORY.AsString ;
 sp_PkgInfo.Close ;
End ;

// Update packages with the selections the user has done
procedure TdmPkgs.PrepareLocalPkgTable ;
Var TOTALPCS : Integer ;
Begin
 TOTALPCS:= 0 ;
//if no of pieces was entered by user then assign to TOTALPCS
 if mtpackages.State in [dsbrowse] then
  if mtpackages.Fields[1].AsInteger > 0 then
   TOTALPCS:= mtpackages.Fields[1].AsInteger ;

   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     mtLoadPackages.Edit ;
     if fLogicalInventoryNo > 0 then
     mtLoadPackagesLOG_INVENTORY_NO.AsInteger:= fLogicalInventoryNo ;
     if fProductNo > 0 then
     mtLoadPackagesProductNo.AsInteger:= fProductNo ;
     if TOTALPCS > 0 then
     mtLoadPackagesPCS.AsInteger:= TOTALPCS ;

      if fBarCodeID > 0 then
      mtLoadPackagesBARCODE_ID.AsInteger := fBARCODEID ;

      if fGradeStampNo > 0 then
      mtLoadPackagesGRADESTAMPNO.AsInteger := fGradeStampNo ;

      if fWrapTypeNo > 0 then
      mtLoadPackagesWRAPTYPENO.AsInteger := fWrapTypeNo ;

      if fMiniBundled > -1 then
      mtLoadPackagesMINI_BUNDLE.AsInteger := fMiniBundled ;

      if fShrinkWrap > -1 then
      mtLoadPackagesSHRINK_WRAP.AsInteger := fShrinkWrap ;

      if fOnSticks > -1 then
      mtLoadPackagesON_STICKS.AsInteger := fOnSticks ;

      if fChangePkgSize then
      Begin
       mtLoadPackagesPKG_HEIGHT.AsInteger:= fPkg_Height ;
       mtLoadPackagesPKG_WIDTH.AsInteger:= fPkg_Width ;       
      End ;



     mtLoadPackages.Post ;
     mtLoadPackages.Next ;
    End ; //While
End ;

function TdmPkgs.DeletePackagesFromSystem (RegistrationPointNo : Integer) : Boolean ;
Var
  Save_Cursor  : TCursor;
 TransactionNo : LongWord;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Result:= False ;
Try
//  {$IFDEF LOGGER} LECSLogger.Write('TdmsProduct.SavePackages'); {$ENDIF}

  TransactionNo := dmsConnector.StartTransaction;
  try
//    {$IFDEF LOGGER} LECSLogger.WriteFmt('Transaction Number : %d', [TransactionNo]); {$ENDIF}
//    {$IFDEF LOGGER} LECSLogger.WriteFmt('Package Count      : %d', [PkgList.Count]); {$ENDIF}

   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
      sp_DeletePackage.Close ;
      sp_DeletePackage.ParamByName('PackageNo').AsInteger:= mtLoadPackagesPACKAGENO.AsInteger ;
      sp_DeletePackage.ParamByName('SupplierCode').AsString:= mtLoadPackagesSUPP_CODE.AsString ;
      sp_DeletePackage.ParamByName('RegistrationPointNo').AsInteger:= RegistrationPointNo ;
      sp_DeletePackage.ParamByName('PackageTypeNo').AsInteger:= mtLoadPackagesPACKAGETYPENO.AsInteger ;
      sp_DeletePackage.ParamByName('LogicalInventoryPointNo').AsInteger:= mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_DeletePackage.ParamByName('UserID').AsInteger:= ThisUser.UserID ;

      sp_DeletePackage.ExecProc ;
     mtLoadPackages.Next ;
    end; //While...

    dmsConnector.Commit(TransactionNo);
    Result:= True ;
//    {$IFDEF LOGGER} LECSLogger.Write('Transaction completed & committed.'); {$ENDIF}
  except
    dmsConnector.Rollback(TransactionNo);
    Result:= False ;
//    {$IFDEF LOGGER} LECSLogger.Write('Transaction failed & rolled back.'); {$ENDIF}
//    raise;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

end;

function TdmPkgs.RemovePkgsFromInventory (RegistrationPointNo : Integer) : Boolean ;
Var
  Save_Cursor  : TCursor;
 TransactionNo : LongWord;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Result:= False ;
Try
//  {$IFDEF LOGGER} LECSLogger.Write('TdmsProduct.SavePackages'); {$ENDIF}

  TransactionNo := dmsConnector.StartTransaction;
  try
//    {$IFDEF LOGGER} LECSLogger.WriteFmt('Transaction Number : %d', [TransactionNo]); {$ENDIF}
//    {$IFDEF LOGGER} LECSLogger.WriteFmt('Package Count      : %d', [PkgList.Count]); {$ENDIF}

   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
      sp_RemovePackageFromInventory.Close ;
      sp_RemovePackageFromInventory.ParamByName('PackageNo').AsInteger:= mtLoadPackagesPACKAGENO.AsInteger ;
      sp_RemovePackageFromInventory.ParamByName('SupplierCode').AsString:= mtLoadPackagesSUPP_CODE.AsString ;
      sp_RemovePackageFromInventory.ParamByName('RegistrationPointNo').AsInteger:= RegistrationPointNo ;
      sp_RemovePackageFromInventory.ParamByName('PackageTypeNo').AsInteger:= mtLoadPackagesPACKAGETYPENO.AsInteger ;
      sp_RemovePackageFromInventory.ParamByName('LogicalInventoryPointNo').AsInteger:= mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_RemovePackageFromInventory.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
      sp_RemovePackageFromInventory.ExecProc ;
     mtLoadPackages.Next ;
    end; //While...

    dmsConnector.Commit(TransactionNo);
    Result:= True ;
//    {$IFDEF LOGGER} LECSLogger.Write('Transaction completed & committed.'); {$ENDIF}
  except
    dmsConnector.Rollback(TransactionNo);
    Result:= False ;
//    {$IFDEF LOGGER} LECSLogger.Write('Transaction failed & rolled back.'); {$ENDIF}
//    raise;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

end;

procedure TdmPkgs.mtLoadPackagesAfterInsert(DataSet: TDataSet);
begin
 mtLoadPackagesROWNO.AsInteger:= ROWNO ;
 ROWNO:= SUCC(ROWNO) ;
end;

end.
