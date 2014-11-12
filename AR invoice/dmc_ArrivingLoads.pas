unit dmc_ArrivingLoads;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, kbmMemTable,
  Messages, Controls, Forms,  Dialogs, SqlTimSt, Variants, vidatype ;

type

  TdmArrivingLoads = class(TDataModule)
    sq_ArrivingPackages: TSQLQuery;
    dspArrivingPackages: TDataSetProvider;
    cdsArrivingPackages: TClientDataSet;
    cdsArrivingPackagesLO: TIntegerField;
    cdsArrivingPackagesPACKAGE_NO: TIntegerField;
    cdsArrivingPackagesSUPPLIERCODE: TStringField;
    cdsArrivingPackagesM3_NET: TFloatField;
    cdsArrivingPackagesPRODUCT_DESCRIPTION: TStringField;
    cdsArrivingPackagesPCS: TIntegerField;
    cdsArrivingPackagesPACKAGEOK: TSmallintField;
    cdsArrivingPackagesPACKAGE_LOG: TStringField;
    cdsArrivingPackagesM3_NOM: TFloatField;
    cdsArrivingPackagesLOAD_DETAILNO: TIntegerField;
    dsrcArrivingPackages: TDataSource;
    dspOneLoad: TDataSetProvider;
    cdsOneLoad: TClientDataSet;
    cdsOneLoadLoadNo: TIntegerField;
    cdsOneLoadSupplierNo: TIntegerField;
    cdsOneLoadLoadedDate: TSQLTimeStampField;
    cdsOneLoadSenderLoadStatus: TIntegerField;
    cdsOneLoadLoadID: TStringField;
    cdsOneLoadMsgToShipper: TMemoField;
    cdsOneLoadInternalNote: TMemoField;
    cdsOneLoadPackageEntryOption: TIntegerField;
    cdsOneLoadLocalShippingCompanyNo: TIntegerField;
    cdsOneLoadLocalLoadingLocation: TIntegerField;
    cdsOneLoadLocalDestinationNo: TIntegerField;
    cdsOneLoadCreatedUser: TIntegerField;
    cdsOneLoadModifiedUser: TIntegerField;
    cdsOneLoadDateCreated: TSQLTimeStampField;
    cdsOneLoadFS: TStringField;
    cdsOneLoadOriginalSupplierNo: TIntegerField;
    cdsOneLoadCustomerNo: TIntegerField;
    sq_Load: TSQLQuery;
    sq_LoadLoadNo: TIntegerField;
    sq_LoadSupplierNo: TIntegerField;
    sq_LoadLoadedDate: TSQLTimeStampField;
    sq_LoadSenderLoadStatus: TIntegerField;
    sq_LoadLoadID: TStringField;
    sq_LoadMsgToShipper: TMemoField;
    sq_LoadInternalNote: TMemoField;
    sq_LoadPackageEntryOption: TIntegerField;
    sq_LoadLocalShippingCompanyNo: TIntegerField;
    sq_LoadLocalLoadingLocation: TIntegerField;
    sq_LoadLocalDestinationNo: TIntegerField;
    sq_LoadCreatedUser: TIntegerField;
    sq_LoadModifiedUser: TIntegerField;
    sq_LoadDateCreated: TSQLTimeStampField;
    sq_LoadFS: TStringField;
    sq_LoadOriginalSupplierNo: TIntegerField;
    sq_LoadCustomerNo: TIntegerField;
    cdsArrivingPackagesLoadNo: TIntegerField;
    cdsArrivingPackagesMFBM: TFloatField;
    cdsArrivingPackagesBC: TStringField;
    cdsArrivingPackagesGS: TStringField;
    sq_SetLoadAR: TSQLQuery;
    sq_LoadLoadOK: TIntegerField;
    sq_LoadLoadAR: TIntegerField;
    cdsOneLoadLoadOK: TIntegerField;
    cdsOneLoadLoadAR: TIntegerField;
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
    sq_InvoiceList: TSQLQuery;
    sq_InvoiceListINT_INVNO: TIntegerField;
    sq_InvoiceListINV_DATE: TSQLTimeStampField;
    sq_InvoiceListAGENT: TStringField;
    sq_InvoiceListSHIPPER: TStringField;
    sq_InvoiceListCUSTOMER: TStringField;
    sq_InvoiceListLO: TIntegerField;
    sq_InvoiceListINVOICE_NO: TIntegerField;
    sq_InvoiceListINVOICE_TYPE: TStringField;
    sq_InvoiceListINVOICE_KONTO: TStringField;
    sq_InvoiceListTO_BE_PAID: TFloatField;
    sq_InvoiceListCURRENCY: TStringField;
    sq_InvoiceListCustomerNo: TIntegerField;
    sq_InvoiceListNM3: TFloatField;
    sq_InvoiceListAM3: TFloatField;
    sq_InvoiceListKUND_NM3: TFloatField;
    sq_InvoiceListKONT_UNIT: TFloatField;
    sq_InvoiceListFrsljReg: TStringField;
    sq_InvoiceListSljGrupp: TStringField;
    sq_InvoiceListInvoiceType: TIntegerField;
    dspInvoiceList: TDataSetProvider;
    cdsInvoiceList: TClientDataSet;
    cdsInvoiceListINT_INVNO: TIntegerField;
    cdsInvoiceListINV_DATE: TSQLTimeStampField;
    cdsInvoiceListAGENT: TStringField;
    cdsInvoiceListSHIPPER: TStringField;
    cdsInvoiceListCUSTOMER: TStringField;
    cdsInvoiceListLO: TIntegerField;
    cdsInvoiceListINVOICE_NO: TIntegerField;
    cdsInvoiceListINVOICE_TYPE: TStringField;
    cdsInvoiceListINVOICE_KONTO: TStringField;
    cdsInvoiceListTO_BE_PAID: TFloatField;
    cdsInvoiceListCURRENCY: TStringField;
    cdsInvoiceListCustomerNo: TIntegerField;
    cdsInvoiceListNM3: TFloatField;
    cdsInvoiceListAM3: TFloatField;
    cdsInvoiceListKUND_NM3: TFloatField;
    cdsInvoiceListKONT_UNIT: TFloatField;
    cdsInvoiceListFrsljReg: TStringField;
    cdsInvoiceListSljGrupp: TStringField;
    cdsInvoiceListInvoiceType: TIntegerField;
    dsInvoiceList: TDataSource;
    sq_InvoiceListArDate: TSQLTimeStampField;
    cdsInvoiceListArDate: TSQLTimeStampField;
    sq_SearchLoadNo: TSQLQuery;
    sq_SearchLoadNoInternalInvoiceNo: TIntegerField;
    sq_SearchLoadNoInvoiceType: TIntegerField;
    sq_InvoiceListIAR_IntInvNo: TIntegerField;
    cdsInvoiceListIAR_IntInvNo: TIntegerField;
    sp_AR_Invoice: TSQLStoredProc;
    sq_IsInvoiceConfirmed: TSQLQuery;
    sq_IsInvoiceConfirmedInternalInvoiceNo: TIntegerField;
    sq_IsInvoiceConfirmedARDate: TSQLTimeStampField;
    sq_IsInvoiceConfirmedUserName: TStringField;
    sq_PIP: TSQLQuery;
    sq_LIP: TSQLQuery;
    dsp_PIP: TDataSetProvider;
    dsp_LIP: TDataSetProvider;
    cds_PIP: TClientDataSet;
    cds_PIPPIPNO: TIntegerField;
    cds_PIPPIPNAME: TStringField;
    cds_LIP: TClientDataSet;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLIPName: TStringField;
    ds_PIP: TDataSource;
    ds_LIP: TDataSource;
    cds_LIPPIPNo: TIntegerField;
    procedure cdsPkgNumberReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsLoadShippingPlanReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cdsLoadDetailsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsOneLoadReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsConfirmed_LoadReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure dspLoadDetailsGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dspLoadShippingPlanGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dspMovePkgNumberGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cds_Confirmed_Pkg_LogReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cdsMovePkgNumberReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dsInvoiceListDataChange(Sender: TObject; Field: TField);
    procedure mtUserPropOwnerNoChange(Sender: TField);
  private
    { Private declarations }

  Protected

  public
    { Public declarations }
    LoadConfirmedOK : Boolean ;
    procedure AR_Invoice(const InternalInvoiceNo, Status, LIPNo, CreatedUser : Integer) ;
    Function  Get_InternalInvoiceNo (Var InvoiceType : Integer;const LoadNo : Integer) : Integer ;
  end;

var
  dmArrivingLoads: TdmArrivingLoads;

implementation

uses recerror, dmsDataConn, dmsVidaSystem, VidaConst, VidaUser,   dlgPickPkg_II ,
  dmc_UserProps;

{$R *.dfm}



procedure TdmArrivingLoads.cdsPkgNumberReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmArrivingLoads.cdsLoadShippingPlanReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmArrivingLoads.cdsLoadDetailsReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmArrivingLoads.cdsOneLoadReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmArrivingLoads.cdsConfirmed_LoadReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmArrivingLoads.dspLoadDetailsGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName:= 'Loaddetail' ;
end;

procedure TdmArrivingLoads.dspLoadShippingPlanGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'LoadShippingPlan' ;
end;

procedure TdmArrivingLoads.dspMovePkgNumberGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName := 'PackageNumber' ;
end;

procedure TdmArrivingLoads.cds_Confirmed_Pkg_LogReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmArrivingLoads.cdsMovePkgNumberReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmArrivingLoads.dsInvoiceListDataChange(Sender: TObject;
  Field: TField);
begin
 cdsArrivingPackages.Active:= False ;
 sq_ArrivingPackages.Close ;
 sq_ArrivingPackages.ParamByName('InternalInvoiceNo').AsInteger := cdsInvoiceListINT_INVNO.AsInteger ;
 sq_ArrivingPackages.Open ;
 cdsArrivingPackages.Active:= True ;
end;

Function TdmArrivingLoads.Get_InternalInvoiceNo (Var InvoiceType : Integer;const LoadNo : Integer) : Integer ;
Begin
 sq_SearchLoadNo.Close ;
 sq_SearchLoadNo.ParamByName('LoadNo').AsInteger:= LoadNo ;
 sq_SearchLoadNo.Open ;
 if not sq_SearchLoadNo.Eof then
  Begin
   Result:= sq_SearchLoadNoInternalInvoiceNo.AsInteger ;
   InvoiceType:= sq_SearchLoadNoInvoiceType.AsInteger ;
  End
   else
    Begin
     Result:= -1 ;
     InvoiceType:= -1 ;
    End ;
 sq_SearchLoadNo.Close ;
End ;

procedure TdmArrivingLoads.AR_Invoice(const InternalInvoiceNo, Status, LIPNo, CreatedUser : Integer) ;
Begin
 Try
 sp_AR_Invoice.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
 sp_AR_Invoice.ParamByName('Status').AsInteger            := Status ;
 sp_AR_Invoice.ParamByName('LIPNo').AsInteger             := LIPNo ;
 sp_AR_Invoice.ParamByName('CreatedUser').AsInteger       := CreatedUser ;
 sp_AR_Invoice.ExecProc ;

 cdsInvoiceList.Edit ;
 cdsInvoiceListArDate.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
 cdsInvoiceListIAR_IntInvNo.AsInteger := Status ;
 cdsInvoiceList.Post ;
 
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
   Raise ;
  End ;
 end;
End ;



procedure TdmArrivingLoads.mtUserPropOwnerNoChange(Sender: TField);
begin
 cds_PIP.Active := False ;
 sq_PIP.ParamByName('OwnerNo').AsInteger  := mtUserPropOwnerNo.AsInteger ;
 cds_PIP.Active := True ;

 if cds_PIP.RecordCount > 0 then
 Begin
  mtUserPropPIPNo.AsInteger := cds_PIPPIPNO.AsInteger ;
  cds_LIP.Active    := False ;
  cds_LIP.Filter    := 'PIPNo = ' + mtUserPropPIPNo.AsString ;
  cds_LIP.Filtered  := True ;
  cds_LIP.Active    := True ;
  if cds_LIP.RecordCount = 1 then
   mtUserPropLIPNo.AsInteger  := cds_LIPLIPNo.AsInteger ;
 End ;
end;

end.
