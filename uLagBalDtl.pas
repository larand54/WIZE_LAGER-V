unit uLagBalDtl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxClasses, cxGraphics, cxCustomData, cxStyles, FMTBcd,
  DB, cxCustomPivotGrid,
  cxDBPivotGrid, cxControls, StdCtrls, Buttons, ExtCtrls, cxTL, cxMaskEdit,
  cxInplaceContainer, cxDBTL, cxTLData, cxTextEdit, cxPC, cxContainer,
  cxEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCalendar, cxDBEdit, ActnList, cxLabel, SqlTimSt, cxImageComboBox,
  cxExportPivotGridLink, cxCheckBox, cxSpinEdit, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  cxLookAndFeels, cxLookAndFeelPainters,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer,
  dxPScxCheckListBoxLnk, dxPSLbxLnk, dxPSTextLnk,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxBarBuiltInMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxPivotGridLnk, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, siComp, siLngLnk,
  System.Actions ;

type
  TfLagBalDtl = class(TForm)
    sq_Data2: TSQLQuery;
    dsp_Data: TDataSetProvider;
    ds_Data: TDataSource;
    Panel1: TPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pgMain: TcxPageControl;
    tsDeliveries: TcxTabSheet;
    pivLeveranser: TcxDBPivotGrid;
    fProdukt: TcxDBPivotGridField;
    fLngd: TcxDBPivotGridField;
    fAM3: TcxDBPivotGridField;
    fNM3: TcxDBPivotGridField;
    fYear: TcxDBPivotGridField;
    fQuarter: TcxDBPivotGridField;
    fMonth: TcxDBPivotGridField;
    fWeek: TcxDBPivotGridField;
    fMarknad: TcxDBPivotGridField;
    fLoadNo: TcxDBPivotGridField;
    sq_UserProps2: TSQLQuery;
    dsp_UserProps: TDataSetProvider;
    cds_UserProps2: TClientDataSet;
    ds_UserProps: TDataSource;
    sq_UserProps2UserID: TIntegerField;
    sq_UserProps2Form: TStringField;
    sq_UserProps2VerkNo: TIntegerField;
    sq_UserProps2OwnerNo: TIntegerField;
    sq_UserProps2PIPNo: TIntegerField;
    sq_UserProps2LIPNo: TIntegerField;
    sq_UserProps2InputOption: TIntegerField;
    sq_UserProps2RegPointNo: TIntegerField;
    sq_UserProps2RegDate: TSQLTimeStampField;
    sq_UserProps2CopyPcs: TIntegerField;
    sq_UserProps2RunNo: TIntegerField;
    sq_UserProps2ProducerNo: TIntegerField;
    sq_UserProps2AutoColWidth: TIntegerField;
    sq_UserProps2SupplierCode: TStringField;
    sq_UserProps2LengthOption: TIntegerField;
    sq_UserProps2LengthGroupNo: TIntegerField;
    sq_UserProps2NewItemRow: TIntegerField;
    sq_UserProps2SalesRegionNo: TIntegerField;
    sq_UserProps2MarketRegionNo: TIntegerField;
    sq_UserProps2OrderTypeNo: TIntegerField;
    sq_UserProps2Status: TIntegerField;
    sq_UserProps2FilterOrderDate: TIntegerField;
    sq_UserProps2StartPeriod: TSQLTimeStampField;
    sq_UserProps2EndPeriod: TSQLTimeStampField;
    sq_UserProps2ClientNo: TIntegerField;
    sq_UserProps2SalesPersonNo: TIntegerField;
    sq_UserProps2VerkSupplierNo: TIntegerField;
    sq_UserProps2VerkKundNo: TIntegerField;
    sq_UserProps2LOObjectType: TIntegerField;
    cds_UserProps2UserID: TIntegerField;
    cds_UserProps2Form: TStringField;
    cds_UserProps2VerkNo: TIntegerField;
    cds_UserProps2OwnerNo: TIntegerField;
    cds_UserProps2PIPNo: TIntegerField;
    cds_UserProps2LIPNo: TIntegerField;
    cds_UserProps2InputOption: TIntegerField;
    cds_UserProps2RegPointNo: TIntegerField;
    cds_UserProps2RegDate: TSQLTimeStampField;
    cds_UserProps2CopyPcs: TIntegerField;
    cds_UserProps2RunNo: TIntegerField;
    cds_UserProps2ProducerNo: TIntegerField;
    cds_UserProps2AutoColWidth: TIntegerField;
    cds_UserProps2SupplierCode: TStringField;
    cds_UserProps2LengthOption: TIntegerField;
    cds_UserProps2LengthGroupNo: TIntegerField;
    cds_UserProps2NewItemRow: TIntegerField;
    cds_UserProps2SalesRegionNo: TIntegerField;
    cds_UserProps2MarketRegionNo: TIntegerField;
    cds_UserProps2OrderTypeNo: TIntegerField;
    cds_UserProps2Status: TIntegerField;
    cds_UserProps2FilterOrderDate: TIntegerField;
    cds_UserProps2StartPeriod: TSQLTimeStampField;
    cds_UserProps2EndPeriod: TSQLTimeStampField;
    cds_UserProps2ClientNo: TIntegerField;
    cds_UserProps2SalesPersonNo: TIntegerField;
    cds_UserProps2VerkSupplierNo: TIntegerField;
    cds_UserProps2VerkKundNo: TIntegerField;
    cds_UserProps2LOObjectType: TIntegerField;
    sq_verk2: TSQLQuery;
    dsp_verk: TDataSetProvider;
    cds_verk2: TClientDataSet;
    cds_verk2ClientNo: TIntegerField;
    cds_verk2ClientName: TStringField;
    cds_verk2SearchName: TStringField;
    ds_verk: TDataSource;
    cds_UserProps2Verk: TStringField;
    ActionList1: TActionList;
    acClose: TAction;
    fAT: TcxDBPivotGridField;
    fAB: TcxDBPivotGridField;
    fTS: TcxDBPivotGridField;
    fUT: TcxDBPivotGridField;
    fKV: TcxDBPivotGridField;
    BitBtn2: TBitBtn;
    cxStyleclMaroon: TcxStyle;
    cxStyleclWhite: TcxStyle;
    fIMP: TcxDBPivotGridField;
    tsProduction: TcxTabSheet;
    pivProduction: TcxDBPivotGrid;
    sq_ProdData2: TSQLQuery;
    dsp_ProdData: TDataSetProvider;
    cds_ProdData2: TClientDataSet;
    ds_ProdData: TDataSource;
    cds_ProdData2Verk: TStringField;
    cds_ProdData2Mtpunkt: TStringField;
    cds_ProdData2AM3: TFloatField;
    cds_ProdData2NM3: TFloatField;
    sq_RegPoint2: TSQLQuery;
    dsp_RegPoint: TDataSetProvider;
    cds_RegPoint2: TClientDataSet;
    ds_RegPoint: TDataSource;
    cds_RegPoint2RegPointName: TStringField;
    cds_RegPoint2RegPointNo: TIntegerField;
    cds_UserProps2Mtpunkt: TStringField;
    prod_Mtpunkt: TcxDBPivotGridField;
    prod_Verk: TcxDBPivotGridField;
    prod_AM3: TcxDBPivotGridField;
    prod_NM3: TcxDBPivotGridField;
    acExport: TAction;
    cxStyle2: TcxStyle;
    Panel2: TPanel;
    Memo1: TMemo;
    cds_ProdData2STYCK: TIntegerField;
    cds_ProdData2LPM: TFloatField;
    prod_STYCK: TcxDBPivotGridField;
    prod_LPM: TcxDBPivotGridField;
    pnSettings: TPanel;
    lbShowTop: TLabel;
    lbValues: TLabel;
    bvSplitter: TBevel;
    speTopCount: TcxSpinEdit;
    cbxTopValuesShowOthers: TcxCheckBox;
    BitBtn3: TBitBtn;
    acExportToXLS: TAction;
    SaveDialog1: TSaveDialog;
    BitBtn5: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    acPrint: TAction;
    BitBtn6: TBitBtn;
    cxStyleRepository2: TcxStyleRepository;
    cxPivotGridReportLinkStyleSheet1: TcxPivotGridReportLinkStyleSheet;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    dxComponentPrinter1Link2: TcxPivotGridReportLink;
    dxComponentPrinter1Link3: TcxPivotGridReportLink;
    acSendToAllMills: TAction;
    cds_Data2: TClientDataSet;
    cds_Data2Marknad: TStringField;
    cds_Data2Leverantr: TStringField;
    cds_Data2Kund: TStringField;
    cds_Data2AT: TFloatField;
    cds_Data2AB: TFloatField;
    cds_Data2TS: TStringField;
    cds_Data2KV: TStringField;
    cds_Data2UT: TStringField;
    cds_Data2IMP: TStringField;
    cds_Data2Lngd: TFloatField;
    cds_Data2Produkt: TStringField;
    cds_Data2Fraktfrare: TStringField;
    cds_Data2LoadNo: TIntegerField;
    cds_Data2Utlastad: TSQLTimeStampField;
    cds_Data2AM3: TFloatField;
    cds_Data2NM3: TFloatField;
    cds_Data2PktNr: TIntegerField;
    cds_Data2Prefix: TStringField;
    cds_Data2Ext_Kund: TStringField;
    fExt_Kund: TcxDBPivotGridField;
    fFraktfrare: TcxDBPivotGridField;
    fKund: TcxDBPivotGridField;
    fPktNr: TcxDBPivotGridField;
    fPrefix: TcxDBPivotGridField;
    fUtlastad: TcxDBPivotGridField;
    fLeverantr: TcxDBPivotGridField;
    sq_CSDLev22: TSQLQuery;
    cds_ProdData2Datum: TStringField;
    cds_ProdData2AT: TFloatField;
    cds_ProdData2AB: TFloatField;
    cds_ProdData2TS: TStringField;
    cds_ProdData2KV: TStringField;
    cds_ProdData2UT: TStringField;
    cds_ProdData2IMP: TStringField;
    cds_ProdData2Lngd: TFloatField;
    cds_ProdData2Produkt: TStringField;
    cds_ProdData2PktNr: TIntegerField;
    cds_ProdData2Prefix: TStringField;
    prod_AB: TcxDBPivotGridField;
    prod_AT: TcxDBPivotGridField;
    prod_Datum: TcxDBPivotGridField;
    prod_IMP: TcxDBPivotGridField;
    prod_KV: TcxDBPivotGridField;
    prod_Lngd: TcxDBPivotGridField;
    prod_PktNr: TcxDBPivotGridField;
    prod_Prefix: TcxDBPivotGridField;
    prod_Produkt: TcxDBPivotGridField;
    prod_TS: TcxDBPivotGridField;
    Panel3: TPanel;
    cbxSortField: TcxComboBox;
    lbSortThe: TLabel;
    lbSortBy: TLabel;
    cbxSortByField: TcxComboBox;
    Edit1: TEdit;
    Memo2: TMemo;
    sq_CSDLev: TFDQuery;
    cds_RegPoint: TFDQuery;
    cds_RegPointRegPointName: TStringField;
    cds_RegPointRegPointNo: TIntegerField;
    cds_ProdData: TFDQuery;
    cds_ProdDataMätpunkt: TStringField;
    cds_ProdDataDatum: TStringField;
    cds_ProdDataVerk: TStringField;
    cds_ProdDataAT: TFloatField;
    cds_ProdDataAB: TFloatField;
    cds_ProdDataTS: TStringField;
    cds_ProdDataKV: TStringField;
    cds_ProdDataUT: TStringField;
    cds_ProdDataIMP: TStringField;
    cds_ProdDataLängd: TFloatField;
    cds_ProdDataProdukt: TStringField;
    cds_ProdDataAM3: TFloatField;
    cds_ProdDataNM3: TFloatField;
    cds_ProdDataLPM: TFloatField;
    cds_ProdDataSTYCK: TIntegerField;
    cds_ProdDataPktNr: TIntegerField;
    cds_ProdDataPrefix: TStringField;
    cds_verk: TFDQuery;
    cds_verkClientNo: TIntegerField;
    cds_verkClientName: TStringField;
    cds_verkSearchName: TStringField;
    cds_Data: TFDQuery;
    cds_DataMarknad: TStringField;
    cds_DataLeverantör: TStringField;
    cds_DataKund: TStringField;
    cds_DataAT: TFloatField;
    cds_DataAB: TFloatField;
    cds_DataTS: TStringField;
    cds_DataKV: TStringField;
    cds_DataUT: TStringField;
    cds_DataIMP: TStringField;
    cds_DataLängd: TFloatField;
    cds_DataProdukt: TStringField;
    cds_DataFraktförare: TStringField;
    cds_DataLoadNo: TIntegerField;
    cds_DataUtlastad: TSQLTimeStampField;
    cds_DataAM3: TFloatField;
    cds_DataNM3: TFloatField;
    cds_DataPktNr: TIntegerField;
    cds_DataPrefix: TStringField;
    cds_DataExt_Kund: TStringField;
    cds_UserProps: TFDQuery;
    cds_UserPropsUserID: TIntegerField;
    cds_UserPropsForm: TStringField;
    cds_UserPropsVerkNo: TIntegerField;
    cds_UserPropsOwnerNo: TIntegerField;
    cds_UserPropsPIPNo: TIntegerField;
    cds_UserPropsLIPNo: TIntegerField;
    cds_UserPropsInputOption: TIntegerField;
    cds_UserPropsRegPointNo: TIntegerField;
    cds_UserPropsRegDate: TSQLTimeStampField;
    cds_UserPropsCopyPcs: TIntegerField;
    cds_UserPropsRunNo: TIntegerField;
    cds_UserPropsProducerNo: TIntegerField;
    cds_UserPropsAutoColWidth: TIntegerField;
    cds_UserPropsSupplierCode: TStringField;
    cds_UserPropsLengthOption: TIntegerField;
    cds_UserPropsLengthGroupNo: TIntegerField;
    cds_UserPropsNewItemRow: TIntegerField;
    cds_UserPropsSalesRegionNo: TIntegerField;
    cds_UserPropsMarketRegionNo: TIntegerField;
    cds_UserPropsOrderTypeNo: TIntegerField;
    cds_UserPropsStatus: TIntegerField;
    cds_UserPropsFilterOrderDate: TIntegerField;
    cds_UserPropsStartPeriod: TSQLTimeStampField;
    cds_UserPropsEndPeriod: TSQLTimeStampField;
    cds_UserPropsClientNo: TIntegerField;
    cds_UserPropsSalesPersonNo: TIntegerField;
    cds_UserPropsVerkSupplierNo: TIntegerField;
    cds_UserPropsVerkKundNo: TIntegerField;
    cds_UserPropsLOObjectType: TIntegerField;
    cds_UserPropsBarCodeNo: TIntegerField;
    cds_UserPropsGradeStampNo: TIntegerField;
    cds_UserPropsVolumeUnitNo: TIntegerField;
    cds_UserPropsLengthFormatNo: TIntegerField;
    cds_UserPropsLengthVolUnitNo: TIntegerField;
    cds_UserPropsGroupByBox: TIntegerField;
    cds_UserPropsGroupSummary: TIntegerField;
    cds_UserPropsAgentNo: TIntegerField;
    cds_UserPropsLoadingLocationNo: TIntegerField;
    cds_UserPropsShipperNo: TIntegerField;
    cds_UserPropsBookingTypeNo: TIntegerField;
    cds_UserPropsCustomerNo: TIntegerField;
    cds_UserPropsShowProduct: TIntegerField;
    cds_UserPropsName: TStringField;
    cds_UserPropsFilter1: TStringField;
    cds_UserPropsFilter2: TStringField;
    cds_UserPropsVerk: TStringField;
    cds_UserPropsMätpunkt: TStringField;
    siLangLinked_fLagBalDtl: TsiLangLinked;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acCloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure fM_PrisCalculateCustomSummary(Sender: TcxPivotGridField;
      ASummary: TcxPivotGridCrossCellSummary);
    procedure acExportExecute(Sender: TObject);
    procedure cbxSortFieldPropertiesChange(Sender: TObject);
    procedure cbxSortByFieldPropertiesChange(Sender: TObject);
    procedure speTopCountPropertiesChange(Sender: TObject);
    procedure cbxTopValuesShowOthersPropertiesChange(Sender: TObject);
    procedure acExportToXLSExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
  private
    { Private declarations }
    FLocked: Boolean;
    procedure initUserProps ;
    procedure PrintProduction ;
    procedure PrintDeliveries ;
  protected
    function GetPivotGrid: TcxCustomPivotGrid; virtual;
    function CurrentField: TcxPivotGridField;
//    function GetPivotGrid: TcxCustomPivotGrid; override;
  public
    { Public declarations }
    procedure RefreshInternalDeliveries(const ExternLoad : Boolean;const VerkNo, SortOrder, PIPNo, LIPNo : Integer;const StartDate, EndDate : TSQLTimeStamp) ;
    procedure RefreshProduction(const OwnerNo, PIPNo, LIPNo, RegPointNo, Operation : Integer;const StartPeriod, EndPeriod : TSQLTimeStamp) ;
    property PivotGrid: TcxCustomPivotGrid read GetPivotGrid;
  end;

var
  fLagBalDtl: TfLagBalDtl;

implementation

Uses VidaType, VidaUser , dmsDataConn, uSendMapiMail, dmsVidaContact, dmsVidaSystem;

{$R *.dfm}


function TfLagBalDtl.CurrentField: TcxPivotGridField;
begin
  Result := PivotGrid.GetFieldByName(cbxSortField.Text);
end;

function TfLagBalDtl.GetPivotGrid: TcxCustomPivotGrid;
begin
 Result := pivLeveranser;
end;

procedure TfLagBalDtl.initUserProps ;
Begin
 cds_UserProps.Active:= False ;
 cds_UserProps.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 cds_UserProps.ParamByName('Form').AsString    := Self.Name ;
 cds_UserProps.Active:= True ;
 if cds_UserProps.Eof then
 Begin
  cds_UserProps.Insert ;
  cds_UserPropsUserID.AsInteger           := ThisUser.UserID ;
  cds_UserPropsForm.AsString              := Self.Name ;
  cds_UserPropsVerkNo.AsInteger           := ThisUser.CompanyNo ;
 End
  else
   cds_UserProps.Edit ;

  cds_UserPropsStartPeriod.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Date) ;
  cds_UserPropsEndPeriod.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Date) ;
  cds_UserProps.Post ;
  if cds_UserProps.ChangeCount > 0 then
  Begin
   cds_UserProps.ApplyUpdates(0) ;
   cds_UserProps.CommitUpdates ;
  End;

End ;

procedure TfLagBalDtl.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
// ClientDataSet1.Active:= False ;
 if cds_UserProps.State in [dsEdit, dsInsert] then
  cds_UserProps.Post ;
 if cds_UserProps.ChangeCount > 0 then
  cds_UserProps.ApplyUpdates(0) ;
// dmsSystem.StorePivotLayout(ThisUser.userID, pivLeveranser.Name, pivLeveranser) ;
// dmsSystem.StorePivotLayout(ThisUser.userID, pivProduction.Name, pivProduction) ;
end;

procedure TfLagBalDtl.RefreshInternalDeliveries(const ExternLoad : Boolean;const VerkNo, SortOrder, PIPNo, LIPNo : Integer;const StartDate, EndDate : TSQLTimeStamp) ;
var
  Save_Cursor:TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 Try
  Edit1.Text := 'VerkNo= ' + inttostr(VerkNo) + ' PIPNo= ' + inttostr(PIPNo) + ' LIPNo= ' + inttostr(LIPNo) +
 ' StartDate= ' + SQLTimeStampToStr('', StartDate) +
 ' EndDate= ' + SQLTimeStampToStr('', EndDate) +
 ' SortOrder= ' + inttostr(SortOrder) ;

  if ExternLoad then
   cds_Data.SQL.Text:= sq_CSDLev.SQL.Text ;
  cds_Data.Active:= False ;
  cds_Data.ParamByName('VerkNo').AsInteger           := VerkNo ;
  cds_Data.ParamByName('PIPNo').AsInteger            := PIPNo ;
  cds_Data.ParamByName('LIPNo').AsInteger            := LIPNo ;
  cds_Data.ParamByName('StartDate').AsSQLTimeStamp   := StartDate ;
  cds_Data.ParamByName('EndDate').AsSQLTimeStamp     := EndDate ;
  cds_Data.ParamByName('SortOrder').AsInteger        := SortOrder ;
  cds_Data.Active:= True ;
  Memo2.Lines.Clear ;
  Memo2.Text:= cds_Data.SQL.Text ;
  Memo2.Lines.Add(Edit1.Text) ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfLagBalDtl.RefreshProduction(const OwnerNo, PIPNo, LIPNo, RegPointNo, Operation : Integer;const StartPeriod, EndPeriod : TSQLTimeStamp) ;
var
  Save_Cursor:TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 Try
  cds_ProdData.Active:= False ;
  cds_ProdData.ParamByName('OwnerNo').AsInteger            := OwnerNo ;
  cds_ProdData.ParamByName('PIPNo').AsInteger              := PIPNo ;
  cds_ProdData.ParamByName('LIPNo').AsInteger              := LIPNo ;
  cds_ProdData.ParamByName('ProductionUnitNo').AsInteger   := RegPointNo ;
  cds_ProdData.ParamByName('Operation').AsInteger          := Operation ;
  cds_ProdData.ParamByName('StartPeriod').AsSQLTimeStamp   := StartPeriod ;
  cds_ProdData.ParamByName('EndPeriod').AsSQLTimeStamp     := EndPeriod ;


  cds_ProdData.Active:= True ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfLagBalDtl.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfLagBalDtl.FormShow(Sender: TObject);
begin
// dmsSystem.LoadPivotLayout(ThisUser.userID, pivLeveranser.Name, pivLeveranser) ;
// dmsSystem.LoadPivotLayout(ThisUser.userID, pivProduction.Name, pivProduction) ;

 cds_RegPoint.Active:= True ;
 cds_RegPoint.InsertRecord(['Alla', 0]);
// cds_RegPoint.Post ;

 cds_verk.Active:= True ;
 cds_verk.InsertRecord([0,'Alla','Alla']);
// cds_verk.Post ;

 initUserProps ;

 if ThisUser.UserID <> 8 then
 Begin
  Panel2.Visible    := False ;
//  pgMain.HideTabs:= True ;
  pnSettings.Visible:= False ;
 End ;

{  if ThisUser.CanModify[dcShowPrice] = false then
  Begin
   fM_Pris.Visible  := False ;
   fVrde.Visible    := False ;
  End ; }
end;

procedure TfLagBalDtl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfLagBalDtl.FormDestroy(Sender: TObject);
begin
// fLagBalDtl:= NIL ;
end;

procedure TfLagBalDtl.fM_PrisCalculateCustomSummary(
  Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
Var SubSum, NM3 : Variant ;
begin
{ SubSum :=  ASummary.Owner.GetSummaryByField(fvrde,stSum) ;
 NM3    :=  ASummary.Owner.GetSummaryByField(fNM3,stSum) ;
 if NM3 > 0 then
  ASummary.Custom:= SubSum / NM3 ; } 
end;

procedure TfLagBalDtl.acExportExecute(Sender: TObject);
Var FilNamn : String ;
    x       : Integer ;
begin
 FilNamn:= 'Produktion verk- '
 +cds_UserPropsVerk.AsString
 +'  Mätpunkt-'
 +cds_UserPropsMätpunkt.AsString
 +'   Period ' +SQLTimeStampToStr('yyyy-mm-dd', cds_UserPropsStartPeriod.AsSQLTimeStamp)
 +'-'+SQLTimeStampToStr('yyyy-mm-dd', cds_UserPropsEndPeriod.AsSQLTimeStamp) ;

 cxExportPivotGridToHTML(FilNamn ,  pivProduction, True, 'html');

 Memo1.Lines.LoadFromFile(FilNamn);

 For x := 0 to Memo1.Lines.Count - 1 do
 Begin
  if Memo1.Lines.Strings[x] = '<BODY>' then
  Begin
   Memo1.Lines.Insert(x+1,'<p align="center">'+Filnamn+'</p>');
   Break ;
  End ;
 End ;

 Memo1.Lines.SaveToFile(FilNamn);
end;

procedure TfLagBalDtl.cbxSortFieldPropertiesChange(
  Sender: TObject);
begin
  FLocked := True;
  // sync settings with selected field
  if CurrentField.SortBySummaryInfo.Field = nil then
    cbxSortByField.ItemIndex := 0
  else
    cbxSortByField.Text := CurrentField.SortBySummaryInfo.Field.Caption;

  speTopCount.Value := CurrentField.TopValueCount;
  speTopCount.Properties.MaxValue := CurrentField.GroupValueList.Count;
  cbxTopValuesShowOthers.Checked := CurrentField.TopValueShowOthers;

  FLocked := False;
end;

procedure TfLagBalDtl.cbxSortByFieldPropertiesChange(
  Sender: TObject);
begin
  if FLocked then Exit;
  CurrentField.SortBySummaryInfo.Field := PivotGrid.GetFieldByName(cbxSortByField.Text);
end;

procedure TfLagBalDtl.speTopCountPropertiesChange(
  Sender: TObject);
begin
  if FLocked then Exit;
  CurrentField.TopValueCount := speTopCount.Value;
end;

procedure TfLagBalDtl.cbxTopValuesShowOthersPropertiesChange(
  Sender: TObject);
begin
  if FLocked then Exit;
  CurrentField.TopValueShowOthers := cbxTopValuesShowOthers.Checked;
end;

procedure TfLagBalDtl.acExportToXLSExecute(Sender: TObject);
Var FileName : String ;
begin
 SaveDialog1.Filter := 'XML files (*.xls)|*.xls';
 SaveDialog1.DefaultExt:= 'xls';
 if SaveDialog1.Execute then
 Begin
  FileName:= SaveDialog1.FileName ;
  Try
  if pgMain.ActivePage = tsProduction then
   cxExportPivotGridToExcel(FileName, pivProduction)
    else
     if pgMain.ActivePage = tsDeliveries then
      cxExportPivotGridToExcel(FileName, pivLeveranser) ;

  ShowMessage('Data exporterad till fil '+FileName);
  Except
  End ;
 End ;
end;

procedure TfLagBalDtl.acPrintExecute(Sender: TObject);
begin
 if pgMain.ActivePage = tsProduction then
  PrintProduction
   else
    if pgMain.ActivePage = tsDeliveries then
     PrintDeliveries ;
end;

procedure TfLagBalDtl.PrintDeliveries ;
begin

//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Leveranser') ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('') ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add('') ;

  dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape ;
//  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1) ;
end;

procedure TfLagBalDtl.PrintProduction ;
begin
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add('Produktion') ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add('') ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Add('') ;

  dxComponentPrinter1Link2.PrinterPage.Orientation:= poLandscape ;
//  dxComponentPrinter1Link2.OptionsOnEveryPage.Footers:= False ;
  dxComponentPrinter1Link2.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link2) ;
end;

End.
