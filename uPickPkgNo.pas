unit uPickPkgNo ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Buttons,
  ActnList, DBActns, dxBar, dxBarExtItems, kbmMemTable, cxMaskEdit,
  cxCheckBox, cxCalendar, cxContainer,
  cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBEdit, cxLookAndFeels, cxLookAndFeelPainters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, cxNavigator, siComp, siLngLnk, Vcl.Menus, cxButtons;

type
  TfPickPkgNo = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    ds_SelectedPkgNo: TDataSource;
    cxGrid1DBTableView1PAKETNR: TcxGridDBColumn;
    cxGrid1DBTableView1LEVKOD: TcxGridDBColumn;
    cxGrid1DBTableView1STYCKPERLNGD: TcxGridDBColumn;
    cxGrid1DBTableView1MARKERAD: TcxGridDBColumn;
    Panel2: TPanel;
    cxGrid1DBTableView1AM3: TcxGridDBColumn;
    cxGrid1DBTableView1STYCK: TcxGridDBColumn;
    cxGrid1DBTableView1REGISTRERAT: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    bbMarkAll: TBitBtn;
    bbUnMarkAll: TBitBtn;
    LabelPIPName: TLabel;
    Label1: TLabel;
    LabelNoOfPkgsMarked: TLabel;
    Label4: TLabel;
    ds_Products: TDataSource;
    mtFilter: TFDMemTable;
    mtFilterProductNo: TIntegerField;
    mtFilterProduct: TStringField;
    dsFilter: TDataSource;
    lcProduct: TcxDBLookupComboBox;
    BitBtn3: TBitBtn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleMarkedRow: TcxStyle;
    deProductNo: TcxDBTextEdit;
    Label5: TLabel;
    cxGrid1DBTableView1ColumnAngeAntalPkt: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    sq_GetPkgNo: TFDQuery;
    sq_GetInActive: TFDQuery;
    sq_GetAllProducts: TFDQuery;
    cds_Products: TFDQuery;
    sq_GetPkgNoPackageNo: TIntegerField;
    sq_GetPkgNoLEVKOD: TStringField;
    sq_GetPkgNoproductno: TIntegerField;
    sq_GetPkgNoPcsPerLength: TStringField;
    sq_GetPkgNoAM3: TFloatField;
    sq_GetPkgNoSTYCK: TIntegerField;
    sq_GetPkgNoDateCreated: TSQLTimeStampField;
    sq_GetInActivePackageNo: TIntegerField;
    sq_GetInActiveLEVKOD: TStringField;
    sq_GetInActiveProductNo: TIntegerField;
    sq_GetInActivePcsPerLength: TStringField;
    sq_GetInActiveAM3: TFloatField;
    sq_GetInActiveSTYCK: TIntegerField;
    sq_GetInActiveDateCreated: TSQLTimeStampField;
    sq_GetAllProductsProductDisplayName: TStringField;
    sq_GetAllProductsProductNo: TIntegerField;
    sq_GetAllProductsActualThicknessMM: TFloatField;
    sq_GetAllProductsActualWidthMM: TFloatField;
    sq_GetAllProductsGradeName: TStringField;
    sq_GetAllProductsSpeciesName: TStringField;
    sq_GetAllProductsSurfacingName: TStringField;
    cds_ProductsProductDisplayName: TStringField;
    cds_ProductsProductNo: TIntegerField;
    cds_ProductsActualThicknessMM: TFloatField;
    cds_ProductsActualWidthMM: TFloatField;
    cds_ProductsGradeName: TStringField;
    cds_ProductsSpeciesName: TStringField;
    cds_ProductsSurfacingName: TStringField;
    siLangLinked_fPickPkgNo: TsiLangLinked;
    sq_GetPkgNoALMM: TFloatField;
    sq_GetInActiveALMM: TFloatField;
    cxGrid1DBTableView1MaxLengtrh: TcxGridDBColumn;
    cxbVardaPaket: TcxButton;
    procedure mtSelectedPkgNoAfterInsert(DataSet: TDataSet);
    procedure bbMarkAllClick(Sender: TObject);
    procedure bbUnMarkAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ds_SelectedPkgNoDataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure FormShow(Sender: TObject);
    procedure mtFilterProductNoChange(Sender: TField);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure cxbVardaPaketClick(Sender: TObject);
  private
    { Private declarations }
    CurrentNoOfPkgs,
    SelectedProductNo     : Integer ;
    SelectedLength        : String ;
    procedure VardaPerSortiment(Sender: TObject);
    procedure RefreshPackageList ;
    procedure RefreshInventoryPackageList ;
    procedure RefreshInActivePackageList ;
  public
    { Public declarations }
   ProductNo, IC_GrpNo, LIPNo, PIPNo : Integer ;
  end;

//var fPickPkgNo: TfPickPkgNo;

implementation

uses dmsDataConn , dmcInvCtrl, dm_Inventory, uEntryField;

{$R *.dfm}


procedure TfPickPkgNo.mtSelectedPkgNoAfterInsert(DataSet: TDataSet);
begin
 dmInvCtrl.mtSelectedPkgNoMARKERAD.AsInteger:= 0 ;
end;

procedure TfPickPkgNo.bbMarkAllClick(Sender: TObject);
Var
 Save_Cursor  :  TCursor;
begin
 With dmInvCtrl do
 Begin
 MarkedPkgs:= 0 ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.DisableControls ;
 Try
 mtSelectedPkgNo.First ;
 While not mtSelectedPkgNo.Eof do
 Begin
  mtSelectedPkgNo.Edit ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 1 ;
  mtSelectedPkgNo.post ;
  mtSelectedPkgNo.Next ;
 End ;
 finally
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
End ;

procedure TfPickPkgNo.bbUnMarkAllClick(Sender: TObject);
Var
 Save_Cursor  :  TCursor;
begin
 With dmInvCtrl do
 Begin
 MarkedPkgs:= 0 ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.DisableControls ;
 Try
 mtSelectedPkgNo.First ;
 While not mtSelectedPkgNo.Eof do
 Begin
  mtSelectedPkgNo.Edit ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 0 ;
  mtSelectedPkgNo.post ;
  mtSelectedPkgNo.Next ;
 End ;
 finally
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
End ;

procedure TfPickPkgNo.FormCreate(Sender: TObject);
begin
 dmInvCtrl.MarkedPkgs         := 0 ;
 LabelNoOfPkgsMarked.Caption  := intToStr(dmInvCtrl.MarkedPkgs) ;
end;

procedure TfPickPkgNo.ds_SelectedPkgNoDataChange(Sender: TObject;
  Field: TField);
begin
 LabelNoOfPkgsMarked.Caption:= intToStr(dmInvCtrl.MarkedPkgs) ;
end;

procedure TfPickPkgNo.RefreshPackageList ;
begin
 if dmInvCtrl.InventoryPkgs then
  RefreshInventoryPackageList
   else
    RefreshInActivePackageList ;
end;

procedure TfPickPkgNo.RefreshInventoryPackageList ;
Var
    Save_Cursor  :  TCursor;
    x            : Integer ;
begin
 With dmInvCtrl do
 Begin
 Save_Cursor            := Screen.Cursor;
 Screen.Cursor          := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.Active := False ;
 mtSelectedPkgNo.Active := True ;
 mtSelectedPkgNo.DisableControls ;
 Try
 sq_GetPkgNo.Close ;
 sq_GetPkgNo.ParamByName('ProductNo').AsInteger := mtFilterProductNo.AsInteger ;
 sq_GetPkgNo.ParamByName('LIPNo').AsInteger     := LIPNo ;
 sq_GetPkgNo.ParamByName('ic_grpNo').AsInteger  := ic_grpNo ;
 sq_GetPkgNo.Open ;
 sq_GetPkgNo.First ;
 While not  sq_GetPkgNo.Eof do
 Begin
  mtSelectedPkgNo.insert ;
  For x := 0 to 7 do
   mtSelectedPkgNo.Fields.Fields[x].AsVariant:= sq_GetPkgNo.Fields.Fields[x].AsVariant ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 0 ;
  mtSelectedPkgNo.post ;
  sq_GetPkgNo.Next ;
 End ;
 finally
  sq_GetPkgNo.Close ;
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

procedure TfPickPkgNo.RefreshInActivePackageList ;
Var
    Save_Cursor  :  TCursor;
    x            : Integer ;
begin
 With dmInvCtrl do
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.Active:= False ;
 mtSelectedPkgNo.Active:= True ;
 mtSelectedPkgNo.DisableControls ;
 Try
 sq_GetInActive.Close ;
 sq_GetInActive.ParamByName('ProductNo').AsInteger  := mtFilterProductNo.AsInteger ;
 sq_GetInActive.ParamByName('PIPNo').AsInteger      := PIPNo ;
 sq_GetInActive.ParamByName('IC_GrpNo').AsInteger   := IC_GrpNo ;
 sq_GetInActive.Open ;
 sq_GetInActive.First ;
 While not sq_GetInActive.Eof do
 Begin
  mtSelectedPkgNo.insert ;
  For x := 0 to 7 do
   mtSelectedPkgNo.Fields.Fields[x].AsVariant:= sq_GetInActive.Fields.Fields[x].AsVariant ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 0 ;
  mtSelectedPkgNo.post ;
  sq_GetInActive.Next ;
 End ;
 finally
  sq_GetInActive.Close ;
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

procedure TfPickPkgNo.BitBtn3Click(Sender: TObject);
begin
 RefreshPackageList ;
end;

procedure TfPickPkgNo.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
//Var
// AColumn : TcxCustomGridTableItem;
begin
  AItem:= (Sender AS TcxGridDBTableView).GetColumnByFieldName('Markerad') ;
 if (ARecord.Values[AItem.Index] <> null) AND (ARecord.Values[AItem.Index] = 1) then
  AStyle:= cxStyleMarkedRow ;
end;

procedure TfPickPkgNo.FormShow(Sender: TObject);
Var
    Save_Cursor  :  TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 if dmInvCtrl.InventoryPkgs then
 Begin
  mtFilterProduct.LookupDataSet := cds_Products ;
  cxGrid1DBTableView1.DataController.KeyFieldNames    := 'PAKETNR;LEVKOD' ;
  cds_Products.Active                                 := False ;
//  ds_Products.DataSet                                 := sq_GetAllProducts ;
  cds_Products.ParamByName('ic_grpNo').AsInteger       := ic_grpNo ;
  cds_Products.ParamByName('LIPNo').AsInteger          := LIPNo ;
  cds_Products.ParamByName('PIPNo').AsInteger          := PIPNo ;
  cds_Products.Active                                 := True ;
  cxGrid1DBTableView1ColumnAngeAntalPkt.Visible       := False ;
 end
 else
 Begin
  cxGrid1DBTableView1.DataController.KeyFieldNames    := 'PAKETNR;LEVKOD' ;

{  bbMarkAll.Visible                                   := False ;
  bbUnMarkAll.Visible                                 := False ;
  Panel2.Height                                       := 35 ;
  cxGrid1DBTableView1.DataController.KeyFieldNames    := 'ProductNo' ; }
  mtFilterProduct.LookupDataSet := sq_GetAllProducts ;
  sq_GetAllProducts.Active                                 := False ;
//  ds_Products.DataSet                                 := sq_GetAllProducts ;
  sq_GetAllProducts.ParamByName('PIPNo').AsInteger    := PIPNo ;
  sq_GetAllProducts.Active                                 := True ;
{
//  cxGrid1DBTableView1MARKERAD.PropertiesClass         := TcxTextEdit ;
  cxGrid1DBTableView1MARKERAD.Visible                 := False ;
  cxGrid1DBTableView1PAKETNR.Caption                  := 'PAKET' ;
  cxGrid1DBTableView1REGISTRERAT.Visible              := False ;
  cxGrid1DBTableView1LEVKOD.Visible                   := False ;

  cxGrid1DBTableView1ColumnAngeAntalPkt.Visible       := True ; }
 end ;
  mtFilter.Active:= True ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfPickPkgNo.mtFilterProductNoChange(Sender: TField);
begin
  RefreshPackageList ;
end;

procedure TfPickPkgNo.cxbVardaPaketClick(Sender: TObject);
begin
 VardaPerSortiment(Sender) ;
end;

procedure TfPickPkgNo.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 With dmInvCtrl do
 Begin
//  if InventoryPkgs = False then  exit ;
  AHandled:= True ;
  if mtSelectedPkgNo.State = dsBrowse then
  mtSelectedPkgNo.Edit ;
  if mtSelectedPkgNomarkerad.AsInteger = 0 then
  mtSelectedPkgNomarkerad.AsInteger:= 1
  else
  mtSelectedPkgNomarkerad.AsInteger:= 0 ;
  mtSelectedPkgNo.Post ;
 End ;
end;

procedure TfPickPkgNo.FormDestroy(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  mtSelectedPkgNo.Active:= False ;
 End ;
end;

procedure TfPickPkgNo.VardaPerSortiment(Sender: TObject);
var fEntryField   : TfEntryField;
    NoOfPkgs      : Integer ;
    Save_Cursor   : TCursor ;
    LengthChoosen : String ;
//  I: TdmInvCtrl;
    I : Integer ;
begin
 With dmInvCtrl do
 Begin
  SelectedProductNo := 0 ;
  SelectedLength    :=  mtSelectedPkgNoMaxLengtrh.AsString ;
  SelectedProductNo :=  mtSelectedPkgNoProductNo.AsInteger ;
  if SelectedProductNo > 0 then
  Begin

  if Length(SelectedLength) = 0 then
  Begin
   ShowMessage(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_103' (* 'fick inte med längden, prova att högerklicka igen' *) )) ;
   Exit ;
  End ;
   fEntryField := TfEntryField.Create(nil);
   Try
    fEntryField.seAntalPaket.Properties.MinValue:= 0 ;
    fEntryField.seAntalPaket.Properties.MaxValue:= 100 ;

    fEntryField.LExtraInfo.Caption:= siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_104' (* 'Vårda lager, ange negativt antal för att minska antal paket resp. positivt antal för att öka.' *) ) ;
    if SelectedLength = 'ÖVRIGA' then
    Begin
     fEntryField.Caption:= siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_105' (* 'Ange antal pkt av ' *) ) + lcProduct.Text + siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_88' (* ' och välj längd.' *) ) ;
     fEntryField.PanelLength.Visible  := True ;
//     dmInventory.Open_sq_OtherLengths(dmInvCtrl.cds_InvCtrlGrpOwnerNo.AsInteger, SelectedProductNo, LIPNo, mtUserPropLengthGroupNo.AsInteger) ;
    End
      else
       Begin
        fEntryField.Caption:= siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_87' (* 'Ange antal av ' *) ) + lcProduct.Text + ' / ' + SelectedLength ;
        fEntryField.PanelLength.Visible  := False ;
       End ;
    if fEntryField.ShowModal = mrOK then
    Begin
//     if SelectedLength = 'ÖVRIGA' then
//      LengthChoosen:= dmInventory.Selected_sq_OtherLengths
//       else
        LengthChoosen:= SelectedLength ;
     if LengthChoosen <> 'Not valid' then
     Begin
      NoOfPkgs:= fEntryField.seAntalPaket.Value ;// strtointdef(fEntryField.eValue.Text,-1) ;
      if (CurrentNoOfPkgs + NoOfPkgs) >= 0 then
    //   10 >= -10
      Begin
     //Now add pkgs to torksats!
       if MessageDlg(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_109' (* 'Vill du ändra antal paket med ' *) )+inttostr(NoOfPkgs)+siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_110' (* ' för produkt ' *) ) + lcProduct.Text
       +siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_111' (* ' Längd ' *) ) + LengthChoosen
       ,  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       Begin
//        LIPNo := 0 ;
        if dmInventory.VardaLager (dmInvCtrl.cds_InvCtrlGrpOwnerNo.AsInteger, LIPNo, mtUserPropLengthGroupNo.AsInteger, SelectedProductNo, NoOfPkgs, LengthChoosen, lcProduct.Text) then
        Begin
         Save_Cursor    := Screen.Cursor;
         Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
         Try

//          dmInventory.cds_PkgList.Active := False ;
          Screen.Cursor                  := crSQLWait;    { Show hourglass cursor }
//          dmInventory.cds_PkgList.Active := True ;

          mtSelectedPkgNo.Active  := False ;
          mtSelectedPkgNo.Active  := True ;
          dmInventory.mtPkgNos.First ;
          while not dmInventory.mtPkgNos.Eof do
          Begin
            mtSelectedPkgNo.Insert ;
            mtSelectedPkgNoPaketnr.AsInteger  := dmInventory.mtPkgNosPackageNo.AsInteger ;
            mtSelectedPkgNoLEVKOD.AsString    := dmInventory.mtPkgNosSupplierCode.AsString ;
            mtSelectedPkgNoMARKERAD.AsInteger := 1 ;
            mtSelectedPkgNo.Post ;
            dmInventory.mtPkgNos.Next ;
          End ;


         Finally
          Screen.Cursor := Save_Cursor;  { Always restore to normal }
         End ;
        End ;//if dmInventory.VardaLager (dmInvento
       End ;//if MessageDlg
      End
       else
        ShowMessage(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_91' (* 'Angivet antal paket överstiger antal paket i lager.' *) ));
     End
      else
       ShowMessage(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_92' (* 'Paket med flera längder registreras paketnr vis.' *) ));
    End ;

   Finally
     FreeAndNil(fEntryField) ;
   End ;

//   End ;

   BitBtn1.Click ;
  End
   else
    ShowMessage('Markera  ett paket som mall!') ;


 End ;//with

end;

end.
