unit dmLM1;

interface

uses
  Classes,
  DB,
  DBClient,
  SysUtils,
  Dialogs,
  dmsVidaContact, FMTBcd, Provider, SqlExpr,

  Controls ;

type
  TdaMoLM1 = class(TDataModule)
    cdsAvrop: TClientDataSet;
    dsrcAvrop: TDataSource;
    sp_Avrop: TSQLStoredProc;
    dspAvrop: TDataSetProvider;
    sp_NormalLO: TSQLStoredProc;
    dspNormalLO: TDataSetProvider;
    cdsNormalLO: TClientDataSet;
    dsrcNormalLO: TDataSource;
    sp_NormalLOLO: TIntegerField;
    sp_NormalLOUNIQUERECORDNO: TIntegerField;
    sp_NormalLOSUPPLIER: TStringField;
    sp_NormalLOSTATUS: TIntegerField;
    sp_NormalLOPRODUCT: TStringField;
    sp_NormalLOLENGTH: TStringField;
    sp_NormalLOM3: TFloatField;
    sp_NormalLOVOLUME: TFloatField;
    sp_NormalLOVOLUNIT: TStringField;
    sp_NormalLOCURRENCY: TStringField;
    sp_NormalLOPRICE: TFloatField;
    sp_NormalLOPRICEUNIT: TStringField;
    sp_NormalLOSUPPLIERNO: TIntegerField;
    sp_NormalLOPKGCODE: TStringField;
    sp_NormalLOFROMWEEK: TIntegerField;
    sp_NormalLOTOWEEK: TIntegerField;
    sp_NormalLOSHIPTO: TStringField;
    sp_NormalLODESTINATION: TStringField;
    sp_NormalLOCUSTPLANOBJECTNO: TIntegerField;
    sp_NormalLOOBJECTTYPE: TIntegerField;
    cdsAvropLO: TIntegerField;
    cdsAvropORDERNUMBER: TStringField;
    cdsAvropREFERENCE: TStringField;
    cdsAvropFROMWEEK: TIntegerField;
    cdsAvropTOWEEK: TIntegerField;
    cdsAvropCLIENT: TStringField;
    cdsAvropAGENT: TStringField;
    cdsAvropMARK: TStringField;
    cdsAvropPRODUCT: TStringField;
    cdsAvropLENGTH: TStringField;
    cdsAvropVOLUME: TFloatField;
    cdsAvropVOLUNIT: TStringField;
    cdsAvropDESTINATION: TStringField;
    cdsAvropORDERNO: TIntegerField;
    cdsAvropCLIENTNO: TIntegerField;
    cdsAvropDESTINATIONNO: TIntegerField;
    cdsAvropUNIQUERECORDNO: TIntegerField;
    cdsAvropSALESREGIONNO: TIntegerField;
    cdsAvropORDERTYPE: TIntegerField;
    sp_ExtraLO: TSQLStoredProc;
    dspExtraLO: TDataSetProvider;
    cdsExtraLO: TClientDataSet;
    dsrcExtraLO: TDataSource;
    dspLoads: TDataSetProvider;
    cdsLoads: TClientDataSet;
    dsrcLoads: TDataSource;
    sp_NormalLODELIVERED: TFloatField;
    sp_Loads: TSQLStoredProc;
    sq_Order: TSQLQuery;
    sq_OrderPKValue: TStringField;
    sq_OrderOrderNo: TIntegerField;
    sq_OrderSalesRegionNo: TIntegerField;
    sq_OrderOrderLineNo: TIntegerField;
    sq_OrderProductNo: TIntegerField;
    sq_OrderProductLengthNo: TIntegerField;
    sq_OrderOrderNoText: TStringField;
    sq_OrderOrderStatus: TIntegerField;
    sq_OrderOrderType: TIntegerField;
    sq_OrderCustomerNo: TIntegerField;
    sq_OrderClientName: TStringField;
    sq_OrderOrderLineDescription: TStringField;
    sq_OrderNoOfUnits: TFloatField;
    sq_OrderLengthDescription: TStringField;
    sq_OrderVolumeUnitNo: TIntegerField;
    sq_OrderPriceUnitNo: TIntegerField;
    sq_OrderCurrencyNo: TIntegerField;
    sq_OrderPrice: TFloatField;
    sq_OrderOrderVolume: TFloatField;
    sq_OrderOrderLineValueSEK: TFloatField;
    sq_OrderOrderLineValueCurrency: TFloatField;
    dsOrder: TDataSource;
    dspOrder: TDataSetProvider;
    cdsOrder: TClientDataSet;
    cdsOrderPKValue: TStringField;
    cdsOrderOrderNo: TIntegerField;
    cdsOrderSalesRegionNo: TIntegerField;
    cdsOrderOrderLineNo: TIntegerField;
    cdsOrderProductNo: TIntegerField;
    cdsOrderProductLengthNo: TIntegerField;
    cdsOrderOrderNoText: TStringField;
    cdsOrderOrderStatus: TIntegerField;
    cdsOrderOrderType: TIntegerField;
    cdsOrderCustomerNo: TIntegerField;
    cdsOrderClientName: TStringField;
    cdsOrderOrderLineDescription: TStringField;
    cdsOrderNoOfUnits: TFloatField;
    cdsOrderLengthDescription: TStringField;
    cdsOrderVolumeUnitNo: TIntegerField;
    cdsOrderPriceUnitNo: TIntegerField;
    cdsOrderCurrencyNo: TIntegerField;
    cdsOrderPrice: TFloatField;
    cdsOrderOrderVolume: TFloatField;
    cdsOrderOrderLineValueSEK: TFloatField;
    cdsOrderOrderLineValueCurrency: TFloatField;
    sq_OrderSalesType: TStringField;
    sq_OrderCurrencyName: TStringField;
    sq_OrderTemplateUnitName: TStringField;
    sq_OrderVolumeUnit_No: TIntegerField;
    cdsOrderSalesType: TStringField;
    cdsOrderCurrencyName: TStringField;
    cdsOrderTemplateUnitName: TStringField;
    cdsOrderVolumeUnit_No: TIntegerField;
    sp_NormalLOLOADING_LOCATION: TStringField;
    cdsLoadsLO: TIntegerField;
    cdsLoadsLOADNO: TIntegerField;
    cdsLoadsFS: TStringField;
    cdsLoadsLOADEDDATE: TSQLTimeStampField;
    cdsLoadsSTATUS: TIntegerField;
    cdsLoadsLOAD_ID: TStringField;
    cdsLoadsINTERNAL_INVOICENO: TIntegerField;
    cdsNormalLOLO: TIntegerField;
    cdsNormalLOUNIQUERECORDNO: TIntegerField;
    cdsNormalLOSUPPLIER: TStringField;
    cdsNormalLOSTATUS: TIntegerField;
    cdsNormalLOPRODUCT: TStringField;
    cdsNormalLOLENGTH: TStringField;
    cdsNormalLOM3: TFloatField;
    cdsNormalLOVOLUME: TFloatField;
    cdsNormalLOVOLUNIT: TStringField;
    cdsNormalLOCURRENCY: TStringField;
    cdsNormalLOPRICE: TFloatField;
    cdsNormalLOPRICEUNIT: TStringField;
    cdsNormalLOSUPPLIERNO: TIntegerField;
    cdsNormalLOPKGCODE: TStringField;
    cdsNormalLOFROMWEEK: TIntegerField;
    cdsNormalLOTOWEEK: TIntegerField;
    cdsNormalLOSHIPTO: TStringField;
    cdsNormalLODESTINATION: TStringField;
    cdsNormalLOCUSTPLANOBJECTNO: TIntegerField;
    cdsNormalLOOBJECTTYPE: TIntegerField;
    cdsNormalLODELIVERED: TFloatField;
    cdsNormalLOLOADING_LOCATION: TStringField;
    cdsExtraLOLO: TIntegerField;
    cdsExtraLOUNIQUERECORDNO: TIntegerField;
    cdsExtraLOSUPPLIER: TStringField;
    cdsExtraLOSTATUS: TIntegerField;
    cdsExtraLOPRODUCT: TStringField;
    cdsExtraLOLENGTH: TStringField;
    cdsExtraLOM3: TFloatField;
    cdsExtraLOVOLUME: TFloatField;
    cdsExtraLOVOLUNIT: TStringField;
    cdsExtraLOCURRENCY: TStringField;
    cdsExtraLOPRICE: TFloatField;
    cdsExtraLOPRICEUNIT: TStringField;
    cdsExtraLOSUPPLIERNO: TIntegerField;
    cdsExtraLOPKGCODE: TStringField;
    cdsExtraLOFROMWEEK: TIntegerField;
    cdsExtraLOTOWEEK: TIntegerField;
    cdsExtraLOSHIPTO: TStringField;
    cdsExtraLODESTINATION: TStringField;
    cdsExtraLOOBJECTTYPE: TIntegerField;
    cdsExtraLODELIVERED: TFloatField;
    cdsExtraLOCUSTOMER: TStringField;
    sq_SetAvrop: TSQLQuery;
    cdsAvropSTATUS: TIntegerField;
    cdsSetAvrop: TClientDataSet;
    dspSetAvrop: TDataSetProvider;
    cdsSetAvropShippingPlanNo: TIntegerField;
    cdsSetAvropShippingPlanStatus: TIntegerField;
    sq_SetAvropShippingPlanNo: TIntegerField;
    sq_SetAvropShippingPlanStatus: TIntegerField;
    sp_AvropSTATUS: TIntegerField;
    sp_AvropLO: TIntegerField;
    sp_AvropORDERNUMBER: TStringField;
    sp_AvropREFERENCE: TStringField;
    sp_AvropFROMWEEK: TIntegerField;
    sp_AvropTOWEEK: TIntegerField;
    sp_AvropCLIENT: TStringField;
    sp_AvropAGENT: TStringField;
    sp_AvropMARK: TStringField;
    sp_AvropPRODUCT: TStringField;
    sp_AvropLENGTH: TStringField;
    sp_AvropVOLUME: TFloatField;
    sp_AvropVOLUNIT: TStringField;
    sp_AvropDESTINATION: TStringField;
    sp_AvropORDERNO: TIntegerField;
    sp_AvropCLIENTNO: TIntegerField;
    sp_AvropDESTINATIONNO: TIntegerField;
    sp_AvropUNIQUERECORDNO: TIntegerField;
    sp_AvropSALESREGIONNO: TIntegerField;
    sp_AvropORDERTYPE: TIntegerField;
    cdsLoadsACT_M3: TFloatField;
    sq_InvoiceGroup: TSQLQuery;
    dsp_InvoiceGroup: TDataSetProvider;
    cds_InvoiceGroup: TClientDataSet;
    cds_InvoiceGroupInvoiceGroupNo: TIntegerField;
    cds_InvoiceGroupCreatedUser: TIntegerField;
    cds_InvoiceGroupModifiedUser: TIntegerField;
    cds_InvoiceGroupCreatedDate: TSQLTimeStampField;
    cds_InvoiceGroupModifiedDate: TSQLTimeStampField;
    cds_InvoiceGroupNote: TMemoField;
    cds_InvoiceInGroup: TClientDataSet;
    cds_InvoiceInGroupInvoiceGroupNo: TIntegerField;
    cds_InvoiceInGroupInvoiceNo: TIntegerField;
    dsp_InvoiceInGroup: TDataSetProvider;
    sq_InvoiceInGroup: TSQLQuery;
    ds_InvoiceInGroup: TDataSource;
    ds_InvoiceGroup: TDataSource;
    cdsLoadsINVOICENO: TIntegerField;
    cdsLoadsPO_INVOICENO: TIntegerField;
    sq_Get_CSH_Status: TSQLQuery;
    IntegerField2: TIntegerField;
    sp_AvropCurrencyNo: TIntegerField;
    cdsAvropCurrencyNo: TIntegerField;
    cdsLoadsPROFORMA_INVOICENO: TIntegerField;
    cdsLoadsFOLJESEDEL: TIntegerField;
    sq_Avrop: TSQLQuery;
    sq_AvropCurrencyNo: TIntegerField;
    sq_AvropSTATUS: TIntegerField;
    sq_AvropLO: TIntegerField;
    sq_AvropORDERNUMBER: TStringField;
    sq_AvropREFERENCE: TStringField;
    sq_AvropFROMWEEK: TIntegerField;
    sq_AvropTOWEEK: TIntegerField;
    sq_AvropCLIENT: TStringField;
    sq_AvropAGENT: TStringField;
    sq_AvropMARK: TStringField;
    sq_AvropPRODUCT: TStringField;
    sq_AvropLENGTH: TStringField;
    sq_AvropVOLUME: TFloatField;
    sq_AvropVOLUNIT: TStringField;
    sq_AvropDESTINATION: TStringField;
    sq_AvropORDERNO: TIntegerField;
    sq_AvropCLIENTNO: TIntegerField;
    sq_AvropDESTINATIONNO: TIntegerField;
    sq_AvropUNIQUERECORDNO: TIntegerField;
    sq_AvropSALESREGIONNO: TIntegerField;
    sq_AvropORDERTYPE: TIntegerField;
    sq_FindLONo: TSQLQuery;
    sq_FindLONoLONo: TIntegerField;
    procedure dsrcAvropDataChange(Sender: TObject; Field: TField);
    procedure dspLoadDetailsGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dspLoadShippingPlanGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cdsClientReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dspInvoiceShipToAddressGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cdsInvoice_LoadReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsAvropReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsSetAvropReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }


  public
    procedure RefreshAvropLoads(Sender: TObject) ;
    Function  GetLONoForLoadNo (const LoadNo : Integer) : Integer ;
  end;

var
  daMoLM1: TdaMoLM1;

implementation

uses dmsDataConn, recerror ;

{$R *.dfm}



procedure TdaMoLM1.dsrcAvropDataChange(Sender: TObject; Field: TField);
begin
 cdsNormalLO.Active:= False ;
 sp_NormalLO.ParamByName('CustShipPlanDetailObjectNo').AsInteger:= cdsAvropUNIQUERECORDNO.AsInteger ;
 cdsNormalLO.Active:= True ;
 cdsExtraLO.Active:= False ;
 sp_ExtraLO.ParamByName('ShippingPlanNo').AsInteger:= cdsAvropLO.AsInteger ;
 cdsExtraLO.Active:= True ;
 RefreshAvropLoads(Sender) ;
end;

procedure TdaMoLM1.RefreshAvropLoads(Sender: TObject) ;
Begin
 cdsLoads.Active:= False ;
 sp_Loads.ParamByName('ShippingPlanNo').AsInteger:= cdsAvropLO.AsInteger ;
 sp_Loads.ParamByName('CustomerNo').AsInteger:=  cdsAvropCLIENTNO.AsInteger ; // CSH.CustomerNo
 cdsLoads.Active:= True ;

End ;

procedure TdaMoLM1.dspLoadDetailsGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'Loaddetail' ;
end;

procedure TdaMoLM1.dspLoadShippingPlanGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'LoadShippingPlan' ;
end;

procedure LoadLookupTable(StoredProc: TSQLQUERY; StringFieldName: String;
                          CodeFieldName: String; Strings: TStrings;OwnerNo : Integer);
begin
  StoredProc.ParamByName('OwnerNo').AsInteger:= OwnerNo ;
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

procedure TdaMoLM1.cdsClientReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdaMoLM1.dspInvoiceShipToAddressGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName  := 'InvoiceShipToAddress' ;
end;

procedure TdaMoLM1.cdsInvoice_LoadReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdaMoLM1.cdsAvropReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;

procedure TdaMoLM1.cdsSetAvropReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;

Function TdaMoLM1.GetLONoForLoadNo (const LoadNo : Integer) : Integer ;
Begin
 sq_FindLONo.ParamByName('LoadNo').AsInteger:= LoadNo ;
 Try
  sq_FindLONo.Open ;
  Result:= sq_FindLONoLONo.AsInteger ;
 Finally
  sq_FindLONo.Close ;
 End ;
End ;

end.
