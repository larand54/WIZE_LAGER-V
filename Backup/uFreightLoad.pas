unit uFreightLoad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, dxBar, dxBarExtItems, dxDBTLCl, dxGrClms, dxDBGrid,
  dxTL, dxDBCtrl, dxCntner, DB, SqlTimSt, dxExEdtr, Menus, StdCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, StBase ;

type
  TfrmFreightLoad = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    bbRefresh: TdxBarLargeButton;
    bbExit: TdxBarLargeButton;
    bbSave: TdxBarLargeButton;
    imglistActions: TImageList;
    grdFraktKostnad: TdxDBGrid;
    grdFraktKostnadLOADNO: TdxDBGridMaskColumn;
    grdFraktKostnadFS: TdxDBGridMaskColumn;
    grdFraktKostnadLOADID: TdxDBGridMaskColumn;
    grdFraktKostnadLOADEDDATE: TdxDBGridDateColumn;
    grdFraktKostnadSHIPPER: TdxDBGridMaskColumn;
    grdFraktKostnadFROM_PLACE: TdxDBGridMaskColumn;
    grdFraktKostnadDESTINATION: TdxDBGridMaskColumn;
    grdFraktKostnadM3_NET: TdxDBGridMaskColumn;
    grdFraktKostnadPRICE: TdxDBGridMaskColumn;
    grdFraktKostnadINVOICEAMOUNT: TdxDBGridMaskColumn;
    grdFraktKostnadSUPPLIERNO: TdxDBGridMaskColumn;
    grdFraktKostnadTOTAL_AMOUNT: TdxDBGridColumn;
    grdFraktKostnadChecked: TdxDBGridCheckColumn;
    peShippers: TdxBarCombo;
    PopupMenu1: TPopupMenu;
    OpenLoad1: TMenuItem;
    Visagrupperingsrutan1: TMenuItem;
    Edit1: TEdit;
    ccSokFS: TdxBarControlContainerItem;
    bbNextFSSearch: TdxBarButton;
    ccSearchLoadNo: TdxBarControlContainerItem;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    lbSaveToOld: TdxBarLargeButton;
    ccSearchLO: TdxBarControlContainerItem;
    dxBarStatic3: TdxBarStatic;
    grdFraktKostnadLO: TdxDBGridMaskColumn;
    bbSparaUtanFF: TdxBarLargeButton;
    bcVerk: TdxBarCombo;
    nfSearchLoadNo: TcxTextEdit;
    nfSearchLOnr: TcxTextEdit;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure bbExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure grdFraktKostnadCheckedToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure OpenLoad1Click(Sender: TObject);
    procedure peShippersChange(Sender: TObject);
    procedure Visagrupperingsrutan1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbNextFSSearchClick(Sender: TObject);
    procedure nfSearchLoadNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nfSearchLOnrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdFraktKostnadCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure lbSaveToOldClick(Sender: TObject);
    procedure bbSparaUtanFFClick(Sender: TObject);
    procedure bcVerkChange(Sender: TObject);
  private
    { Private declarations }
    procedure DeleteSavedDetails(Sender: TObject);
    procedure DeleteSavedDetailsUtanFF(Sender: TObject);
    function  IsSelectedShipperDifferent(Sender: TObject) : Boolean ;
    function  IsSelectedShipperDifferentUtanFF(Sender: TObject) : Boolean ;
    function  SaveDetails(Sender: TObject;const AvrakningsNo : Integer;const ShipperName : String) : Boolean ;
    function  SaveDetailsUtanFF (Sender: TObject;const AvrakningsNo : Integer;const ShipperName : String) : Boolean ;
    procedure SetNewLoadValues(Sender: TObject; const LocalShipper, FromPlace, ToDest : String) ;
    function  InsertHeader (const AvrakningsNr, ShipperNo : Integer; const ShippersInvoiceNo : String) : Integer ;
    function  InsertHeaderUtanFF (const AvrakningsNr, ShipperNo : Integer; const ShippersInvoiceNo : String) : Integer ;
    function  FinnsMarkeradeLaster : Boolean ;
    Function  EditState : Boolean ;
    procedure BuildSQL ;
  public
    { Public declarations }
    procedure CreateCo ;
  end;

var
  frmFreightLoad: TfrmFreightLoad;

implementation

uses UnitdmModule1, dmsDataConn, VidaUser, dmsVidaContact,
  uMultiplaShippers, UnitLoadEntrySSP, ULoadHead, dmcLoadEntrySSP, VidaUtils,
  UnitAvrakningar, VidaConst ;

{$R *.dfm}

procedure TfrmFreightLoad.CreateCo ;
Var x : Integer ;
begin
 bcVerk.OnChange:= Nil ;
 Try
  dmModule1.tblLoadFreight.Active:= True ;

  // Load column widths set last time.
  grdFraktKostnad.LoadFromIniFile(dmsConnector.InifilesMap+'VisFreightLoad'+'.'+ThisUser.UserName);

  dmsContact.LoadShippers(peShippers.Items) ;
  peShippers.Items.Insert(0,'INGEN FRAKTFÖRARE') ;
  peShippers.Items.Insert(1,'ALLA') ;


  dmsContact.LoadSuppliers(bcVerk.Items) ;
//  bcVerk.Items.Insert(0,'ALLA') ;

  if bcVerk.Items.Count > 0 then
  For x:= 0 to bcVerk.Items.Count -1 do
  if ThisUser.CompanyNo = integer(bcVerk.Items.Objects[x]) then
  Begin
   bcVerk.ItemIndex:= x ;
//   dmcOrder.SupplierNo:= integer(bcVerk.Items.Objects[x]);
  End ;
  if ThisUser.CompanyNo <> VIDA_WOOD_COMPANY_NO then
   bcVerk.ReadOnly:= True ;



  grdFraktKostnadSUPPLIERNO.ReadOnly:= True ;
  grdFraktKostnadFROM_PLACE.ReadOnly:= True ;
  grdFraktKostnadDESTINATION.ReadOnly:= True ;
  grdFraktKostnadM3_NET.ReadOnly:= True ;
  grdFraktKostnadLOADID.ReadOnly:= True ;
  grdFraktKostnadFS.ReadOnly:= True ;
  grdFraktKostnadLOADNO.ReadOnly:= True ;
  grdFraktKostnadLOADEDDATE.ReadOnly:= True ;
 Finally
  bcVerk.OnChange:= bcVerkChange ;
 End ;
end;

Function TfrmFreightLoad.EditState : Boolean ;
Begin
{ with dmModule1 do
 Begin
  tblLoadFreight
  tblLoadFreightChecked.AsInteger
 End ; }
End ;

procedure TfrmFreightLoad.BuildSQL ;
Begin
 with dmModule1 do
 Begin
  sqLoadFC.SQL.Clear ;
  sqLoadFC.SQL.Add('SELECT distinct') ;
  sqLoadFC.SQL.Add('lo.LocalShippingCompanyNo,') ;
  sqLoadFC.SQL.Add('Lo.LoadNo 			AS LOAD_NO,') ;
  sqLoadFC.SQL.Add('Lo.FS				AS FS,') ;
  sqLoadFC.SQL.Add('Lo.LoadID			AS LOAD_ID,') ;
  sqLoadFC.SQL.Add('Lo.LoadedDate			AS LOADEDDATE,') ;
  sqLoadFC.SQL.Add('shipper.clientname		AS SHIPPER,') ;
  sqLoadFC.SQL.Add('FromPlace.CityName 		AS FROM_PLACE,') ;
  sqLoadFC.SQL.Add('ToPlace.CityName 		AS DESTINATION,') ;
//  sqLoadFC.SQL.Add('AM.AM3 AS M3_NET,') ;

  sqLoadFC.SQL.Add('SUM(PTD.Totalm3Actual) 		AS M3_NET,') ;


  sqLoadFC.SQL.Add('LFC.PricePerM3_NET		AS PRICE,') ;
  sqLoadFC.SQL.Add('LFC.TotalSUM			AS INVOICEAMOUNT,') ;
  sqLoadFC.SQL.Add('LFC.CreatedUser			AS CREATEDUSER,') ;
  sqLoadFC.SQL.Add('LFC.ModifiedUser		AS MODIFIEDUSER,') ;
  sqLoadFC.SQL.Add('LFC.DateCreated			AS DATECREATED,') ;
  sqLoadFC.SQL.Add('LFC.DateModified		AS DATEMODIFIED,') ;
  sqLoadFC.SQL.Add('Lo.SupplierNo			AS SUPPLIERNO') ;

  sqLoadFC.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL') ;
  sqLoadFC.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.LoadingLocationNo = CLL.PhyInvPointNameNo') ;

  sqLoadFC.SQL.Add('INNER JOIN dbo.Loads LO 				ON	LO.LoadNo 		= LSP.LoadNo') ;

//  sqLoadFC.SQL.Add('inner join dbo.AM3_LOADPKT AM ON AM.LoadNo = LO.LoadNo') ;

  sqLoadFC.SQL.Add('INNER JOIN dbo.Loaddetail LD ON	LD.LoadNo 		= LSP.LoadNo') ;
  sqLoadFC.SQL.Add('AND LD.SHIPPINGPLANNO = LSP.SHIPPINGPLANNO') ;
  sqLoadFC.SQL.Add('INNER JOIN dbo.PackageType PTD ON PTD.PackageTypeNo = LD.PackageTypeNo') ;

  sqLoadFC.SQL.Add('left  outer join Client Shipper	on shipper.clientno = lo.LocalShippingCompanyNo') ;
  sqLoadFC.SQL.Add('left  outer  join City FromPlace	on FromPlace.CityNo = lo.LocalLoadingLocation') ;
  sqLoadFC.SQL.Add('left  outer  join City ToPlace		on ToPlace.CityNo = lo.LocalDestinationNo') ;

  sqLoadFC.SQL.Add('left join LoadFreightCost LFC	on Lo.LoadNo = LFC.LoadNo') ;

  sqLoadFC.SQL.Add('Inner Join dbo.Confirmed_Load   CL ON CL.Confirmed_LoadNo = Lo.LoadNo') ;
  sqLoadFC.SQL.Add('Inner Join ClientRole CR ON CR.ClientNo = Lo.CustomerNo') ;
  sqLoadFC.SQL.Add('AND CR.RoleType = 9') ;
  sqLoadFC.SQL.Add('where') ;

  if integer(bcVerk.Items.Objects[bcVerk.ItemIndex]) = VIDA_WOOD_COMPANY_NO then
  sqLoadFC.SQL.Add('CLL.ClientNo = '+IntToStr(VIDA_WOOD_COMPANY_NO))
  else
  sqLoadFC.SQL.Add('CLL.ClientNo = '+IntToStr(integer(bcVerk.Items.Objects[bcVerk.ItemIndex])) );

  if peShippers.ItemIndex = 0 then
   sqLoadFC.SQL.Add('AND lo.LocalShippingCompanyNo IS NULL')
    else
     if peShippers.ItemIndex > 1 then
      sqLoadFC.SQL.Add('AND lo.LocalShippingCompanyNo = '+IntToStr(integer(peShippers.Items.Objects[peShippers.ItemIndex])) );

  sqLoadFC.SQL.Add('AND  Lo.LoadNo NOT IN (Select LoadNo FROM LoadFreightCost)') ;


  sqLoadFC.SQL.Add('group by lo.LocalShippingCompanyNo,Lo.LoadNo, Lo.FS, Lo.LoadID, Lo.LoadedDate, shipper.clientname,') ;
  sqLoadFC.SQL.Add('FromPlace.CityName, ToPlace.CityName, LFC.PricePerM3_NET, LFC.TotalSUM,LFC.CreatedUser,') ;
  sqLoadFC.SQL.Add('LFC.ModifiedUser, LFC.DateCreated, LFC.DateModified, Lo.SupplierNo') ;

  sqLoadFC.SQL.Add('Order by Lo.LoadNo desc') ;
  if ThisUser.UserID = 8 then
   sqLoadFC.SQL.SaveToFile('sqLoadFC.TXT');
 End ;
End ;

procedure TfrmFreightLoad.bbRefreshClick(Sender: TObject);
Var x: Byte ;
    Save_Cursor:TCursor;
begin
 if FinnsMarkeradeLaster = True then
 if MessageDlg('Du har laster som är markerade! (ej sparade), vill du att markeringarna skall försvinna klickar du på yes knappen',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit ;
  
 if (peShippers.Items.Count > 0) and (peShippers.ItemIndex > -1) and
 (bcVerk.Items.Count > 0) and (bcVerk.ItemIndex > -1) then
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 with dmModule1 do
 Begin
 tblLoadFreight.DisableControls ;

 Try

  tblLoadFreight.Active:= False ;
  tblLoadFreight.Active:= True ;
  BuildSQL ;
{  if peShippers.ItemIndex = 0 then
  sp_LoadFreightCost.ParamByName('ShipperNo').AsInteger:= 0
  else
  if peShippers.ItemIndex = 1 then
  sp_LoadFreightCost.ParamByName('ShipperNo').AsInteger:= -1
  else
  sp_LoadFreightCost.ParamByName('ShipperNo').AsInteger:= integer(peShippers.Items.Objects[peShippers.ItemIndex]) ;}

{  if integer(bcVerk.Items.Objects[bcVerk.ItemIndex]) = VIDA_WOOD_COMPANY_NO then
  sp_LoadFreightCost.ParamByName('VerkNo').AsInteger:= VIDA_WOOD_COMPANY_NO
  else
  sp_LoadFreightCost.ParamByName('VerkNo').AsInteger:= integer(bcVerk.Items.Objects[bcVerk.ItemIndex]) ;}

  sqLoadFC.Open ;
  sqLoadFC.First ;
  While not sqLoadFC.Eof do
  Begin
   tblLoadFreight.Insert ;
   For x:= 0 to 11 {tblLoadFreight.FieldCount - 1} do
    tblLoadFreight.Fields.Fields[x].AsVariant:= sqLoadFC.Fields.Fields[x].AsVariant ;
   tblLoadFreightChecked.AsBoolean:= False ;
   tblLoadFreightLO.AsInteger:= 0 ;
   tblLoadFreight.Post ;
   sqLoadFC.Next ;
  End ; //while
  sqLoadFC.Close ;

 Finally
  tblLoadFreight.EnableControls ;
  Screen.Cursor := Save_Cursor ;
 End ;
 End ; //with

 End ;
end;

function TfrmFreightLoad.InsertHeader (const AvrakningsNr, ShipperNo : Integer; const ShippersInvoiceNo : String) : Integer ;
Begin
 with dmModule1 do
 Begin
  Result:= -1 ;

  cds_LoadFreightCostHeader.Insert ;
  Try
  cds_LoadFreightCostHeaderAvrakningsNo.AsInteger:= AvrakningsNr ;
  cds_LoadFreightCostHeaderAvrakningsDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
  cds_LoadFreightCostHeaderDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
  cds_LoadFreightCostHeaderDateModified.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
  cds_LoadFreightCostHeaderCreatedUser.AsInteger:= ThisUser.UserID ;
  cds_LoadFreightCostHeaderModifiedUser.AsInteger:= ThisUser.UserID ;
  cds_LoadFreightCostHeaderStatus.AsInteger := 0 ;
  cds_LoadFreightCostHeaderShippersInvoiceNo.AsString:= ShippersInvoiceNo ;
  cds_LoadFreightCostHeaderLocalShipperNo.AsInteger:= ShipperNo ;
  if bcVerk.Items.Count > 0 then
   cds_LoadFreightCostHeaderVerkNo.AsInteger:= integer(bcVerk.Items.Objects[bcVerk.ItemIndex]) ;
  cds_LoadFreightCostHeader.Post ;
  Result:= cds_LoadFreightCostHeaderAvrakningsNo.AsInteger ;
  Except
   Result:= -1 ;
  End ;
 End ;
End ;

procedure TfrmFreightLoad.bbSaveClick(Sender: TObject);
Var
 Save_Cursor  : TCursor;
 AvrakningsNo : Integer ;
begin
 if FinnsMarkeradeLaster then
 Begin
 with dmModule1 do
 Begin
  tblLoadFreight.DisableControls ;


  cds_LoadFreightCostHeader.Active:= True ;
  cdsLoadFreightCost.Active:= True ;

 Try
  if tblLoadFreight.State = dsedit then
   tblLoadFreight.Post ;

  if IsSelectedShipperDifferent(Sender) = True then ;


  if mtShippers.RecordCount > 0 then
  Begin
   fMultiplaShippers := TfMultiplaShippers.Create(Self) ;
   Try
    if fMultiplaShippers.ShowModal = mrCancel then
     Exit ;
   Finally
    fMultiplaShippers.Free ;
//    Application.ProcessMessages ;
   End ;
  End
  else
   Exit ;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try
  mtShippers.First ;
  While not mtShippers.Eof do
  Begin
   InsertHeader (mtShippersAvrakningsNr.AsInteger, mtShippersShipperNo.AsInteger, mtShippersShippersInvoiceNo.AsString) ;
   if mtShippersAvrakningsNr.AsInteger <> -1 then
   Begin
    if SaveDetails(Sender, mtShippersAvrakningsNr.AsInteger, mtShippersShipper.AsString ) then ;
   End
    else
     ShowMessage('Fel på avräkningsnr') ;
   mtShippers.Next ;
  End ; //While not mtShippers.


     if (cds_LoadFreightCostHeader.ChangeCount > 0) and (cdsLoadFreightCost.ChangeCount > 0) then
     Begin
      cds_LoadFreightCostHeader.ApplyUpdates(0) ;
      cdsLoadFreightCost.ApplyUpdates(0) ;
      DeleteSavedDetails(Sender) ;
     End
     else
      Begin
       cds_LoadFreightCostHeader.CancelUpdates ;
       cdsLoadFreightCost.CancelUpdates ;
      End ;


 Finally
  Screen.Cursor := Save_Cursor ;
 End ;


 Finally
  cdsLoadFreightCost.Active:= False ;
  cds_LoadFreightCostHeader.Active:= False ;
  tblLoadFreight.First ;
  tblLoadFreight.EnableControls ;
 End ;
 End ; //with
 End
 else
  ShowMessage('Inga laster markerade') ;
end;

procedure TfrmFreightLoad.bbExitClick(Sender: TObject);
begin
 Close ;
end;

procedure TfrmFreightLoad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree ;  
end;

procedure TfrmFreightLoad.FormDestroy(Sender: TObject);
begin
 grdFraktKostnad.SaveToIniFile(dmsConnector.InifilesMap+'VisFreightLoad'+'.'+ThisUser.UserName);

 with dmModule1 do
 Begin
  tblLoadFreight.Close ;
  cds_LoadFreightCostHeader.Close ;
  cdsLoadFreightCost.Close ;
 End ;
 frmFreightLoad := NIL ;
end;

procedure TfrmFreightLoad.DeleteSavedDetails(Sender: TObject);
begin
 with dmModule1 do
 Begin
  tblLoadFreight.Filtered:=  True ;
 Try
  mtShippers.First ;
  While not mtShippers.Eof do
  Begin
   tblLoadFreight.Filter:= 'Checked = TRUE AND SHIPPER = '+QuotedStr(mtShippersShipper.AsString) ;
   tblLoadFreight.Filtered:=  True ;
   tblLoadFreight.First ;

   While not tblLoadFreight.Eof do
   Begin
    tblLoadFreight.Delete ;
   End ;

   mtShippers.Next ;
  End ;

 Finally
  tblLoadFreight.Filtered:=  False ;
 End ;

 End ;
End ;

function TfrmFreightLoad.IsSelectedShipperDifferent(Sender: TObject) : Boolean ;
begin
 with dmModule1 do
 Begin
  Result:= False ;
  tblLoadFreight.Filter:= 'Checked = TRUE' ;
  tblLoadFreight.Filtered:=  True ;
  tblLoadFreight.First ;
 Try
  mtShippers.Active:= False ;
  mtShippers.Active:= True ;
  mtShippers.Insert ;
  mtShippersShipper.AsString:= tblLoadFreightSHIPPER.AsString ;
  mtShippersShipperNo.AsInteger:= tblLoadFreightLocalShippingCompanyNo.AsInteger ;
  mtShippersAvrakningsNr.AsInteger:= dmsConnector.NextMaxNo('LoadFreightCostHeader') ;
  mtShippers.Post ;
  tblLoadFreight.Next ;

  While not tblLoadFreight.Eof do
  Begin
   if not mtShippers.FindKey([tblLoadFreightSHIPPER.AsString]) then
   Begin
    mtShippers.Insert ;
    mtShippersShipper.AsString:= tblLoadFreightSHIPPER.AsString ;
    mtShippersShipperNo.AsInteger:= tblLoadFreightLocalShippingCompanyNo.AsInteger ;
    mtShippersAvrakningsNr.AsInteger:= dmsConnector.NextMaxNo('LoadFreightCostHeader') ;

    mtShippers.Post ;
   End ;
   tblLoadFreight.Next ;
  End ;

  if mtShippers.RecordCount > 1 then
   Result:= True
    else
     Result:= False ;

 Finally
  tblLoadFreight.Filtered:=  False ;
 End ;
 End ;
End ;

(*function TfrmFreightLoad.IsSelectedShipperDifferent(Sender: TObject) : Boolean ;

Var LBShippers : TStringList ;
    x       : Integer ;
begin
 LBShippers:= TStringList.Create ;
 with dmModule1 do
 Begin
 Result:= False ;
  tblLoadFreight.Filter:= 'Checked = TRUE' ;
  tblLoadFreight.Filtered:=  True ;
  tblLoadFreight.First ;
 Try

  LBShippers.Add(tblLoadFreightSHIPPER.AsString) ;
  While not tblLoadFreight.Eof do
  Begin
  For x := 0 to LBShippers.Count-1 do
  if LBShippers[x] <> tblLoadFreightSHIPPER.AsString then
  Begin
   Result:= True ;
   Break ;
  End ;
{   if sameShipper then
   For x := 0 to LBShippers.Count-1 do
    if LBShippers[x] <> tblLoadFreightSHIPPER.AsString then
     Result:= False
      else }
   LBShippers.Add(tblLoadFreightSHIPPER.AsString) ;
   tblLoadFreight.Next ;
  End ;

{function SameShipper : Boolean ;
Begin
  For x := 0 to LBShippers.Count-1 do
  if LBShippers[x] 0 tblLoadFreightSHIPPER.AsString then
  Result:= True ;
end ; }


 Finally
  LBShippers.Free ;
  tblLoadFreight.Filtered:=  False ;
 End ;
 End ;
End ; *)

function TfrmFreightLoad.SaveDetails(Sender: TObject;const AvrakningsNo : Integer;const ShipperName : String) : Boolean ;
begin
 with dmModule1 do
 Begin
  Result:= True ;
  tblLoadFreight.Filter:= 'Checked = TRUE AND SHIPPER = '+QuotedStr(ShipperName) ;
  tblLoadFreight.Filtered:=  True ;
  tblLoadFreight.First ;
 Try

  While not tblLoadFreight.Eof do
  Begin
   cdsLoadFreightCost.Insert ;
   Try
    cdsLoadFreightCostAvrakningsNo.AsInteger:= AvrakningsNo ;
    cdsLoadFreightCostLoadNo.AsInteger:= tblLoadFreightLoadNo.AsInteger ;
    cdsLoadFreightCostM3_NET.AsFloat:= tblLoadFreightM3_NET.AsFloat ;
    cdsLoadFreightCostPricePerM3_NET.AsFloat:= tblLoadFreightPRICE.AsFloat ;
    cdsLoadFreightCostTotalSUM.AsFloat:= tblLoadFreightINVOICEAMOUNT.AsFloat ;
    cdsLoadFreightCost.Post ;
   Except
    Result:= False ;
   End ;
   tblLoadFreight.Next ;
  End ;


 Finally
  tblLoadFreight.Filtered:=  False ;
 End ;
 End ;
End ;



procedure TfrmFreightLoad.grdFraktKostnadCheckedToggleClick(
  Sender: TObject; const Text: String; State: TdxCheckBoxState);
begin
with dmModule1 do
 Begin
  if State = cbsChecked then
  Begin
   tblLoadFreight.Edit ;
   tblLoadFreightChecked.AsBoolean:= True ;
   tblLoadFreight.Post ;
  End
  else
  Begin
   tblLoadFreight.Edit ;
   tblLoadFreightChecked.AsBoolean:= False ;
   tblLoadFreight.Post ;
  End ;

 End ;
end;

procedure TfrmFreightLoad.OpenLoad1Click(Sender: TObject);
begin
    try
      with TfLoad.CreateWithExistingLoad(
        Self,
        grdFraktKostnad.DataSource.DataSet.FieldByName('SupplierNo').AsInteger,
        grdFraktKostnad.DataSource.DataSet.FieldByName('LOADNO').AsInteger,
        {OrderType}0) do
        try
        if ShowModal = mrOK then
         SetNewLoadValues (Sender, dbeLokalFraktforare.Text, dbeFrom.Text, dbeTo.Text) ;

      finally
        Free
        end;
    finally
      try

      except
        on E:Exception do
          {Nothing};
        end;
      end;
{  fLoadHead:= TfLoadHead.Create(Self);
  Try
  fLoadhead.LoadNo := grdFraktKostnad.DataSource.DataSet.FieldByName('LOADNO').AsInteger ;
  if fLoadHead.ShowModal = mrOk then
   SetNewLoadValues (Sender, fLoadhead.eLocalShipper.Text, fLoadhead.eFrom.Text, fLoadhead.eTo.Text) ;
  Finally
   fLoadHead.Free ;
  End ; }
end;

procedure TfrmFreightLoad.peShippersChange(Sender: TObject);
begin
 if peShippers.Items.Count > 0 then
 bbRefreshClick(Sender) ;
end;

procedure TfrmFreightLoad.SetNewLoadValues(Sender: TObject; const LocalShipper, FromPlace, ToDest : String) ;
begin
 with dmModule1 do
 Begin
   tblLoadFreight.Edit ;
   tblLoadFreightSHIPPER.AsString:= LocalShipper ;
   tblLoadFreightFROM_PLACE.AsString:= FromPlace ;
   tblLoadFreightDESTINATION.AsString:= ToDest ;
   tblLoadFreightLocalShippingCompanyNo.AsInteger:=
   dmLoadEntrySSP.cds_LoadHeadLocalShippingCompanyNo.AsInteger ;
   tblLoadFreight.Post ;
 End ;
end;

procedure TfrmFreightLoad.Visagrupperingsrutan1Click(Sender: TObject);
begin
 grdFraktKostnad.ShowGroupPanel:= True ;
end;

procedure TfrmFreightLoad.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var Search : Boolean ; S, T : String ;  Posn : Cardinal;
begin
 Search := False ;
 if Key <> VK_RETURN then Exit;
 with dmModule1 do
 Begin
  tblLoadFreight.DisableControls ;
  Try
  T := Edit1.Text ;
  tblLoadFreight.First ;
  Repeat
   S := tblLoadFreightFS.AsString ;

//  S := 'Now is the time for all good men';
//  T := 'time';
  if Stbase.Search(S[1],Length(S), T[1], Length(T), Posn) then
   Search := True
   else
    tblLoadFreight.Next ;
//    ShowMessage('Match found at pos: ' + IntToStr(Posn));


  Until (Search = True) or  (tblLoadFreight.Eof = True) ;
  if Search = False then
     ShowMessage('Ingen Match...');
//   tblLoadFreight.Locate('FS',Edit1.Text, [loPartialKey]) ;
  Finally
   tblLoadFreight.EnableControls ;
  End ;
 End ; //With
end;

procedure TfrmFreightLoad.bbNextFSSearchClick(Sender: TObject);
Var Search : Boolean ; S, T : String ;  Posn : Cardinal;
begin
 if Edit1.Text > '' then
 Begin
 Search := False ;
 with dmModule1 do
 Begin
  tblLoadFreight.DisableControls ;
  Try
  T := Edit1.Text ;
  tblLoadFreight.Next ;
  Repeat
   S := tblLoadFreightFS.AsString ;

//  S := 'Now is the time for all good men';
//  T := 'time';
  if Stbase.Search(S[1],Length(S), T[1], Length(T), Posn) then
   Search := True
   else
    tblLoadFreight.Next ;
//    ShowMessage('Match found at pos: ' + IntToStr(Posn));


  Until (Search = True) or  (tblLoadFreight.Eof = True) ;

  if Search = False then
   ShowMessage('Inga fler som matchar...');
//   tblLoadFreight.Locate('FS',Edit1.Text, [loPartialKey]) ;
  Finally
   tblLoadFreight.EnableControls ;
  End ;
 End ; //With
 End ; //if...

end;

procedure TfrmFreightLoad.nfSearchLoadNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var SupplierNo, x : Integer ;
begin
 if Key <> VK_RETURN then Exit;
 with dmModule1 do
 Begin
  if not tblLoadFreight.FindKey([StrToIntDef(nfSearchLoadNo.Text,0)]) then
  Begin
   ShowMessage('Ingen Match...') ;
{   if MessageDlg('Ingen Match i listan, vill du söka på alla verk (notera att dina ev ändringar förloras)?',
    mtConfirmation, [mbYes, mbNo,mbCancel], 0) = mrYes then
    Begin
     SupplierNo:= GetSupplierNo(StrToIntDef(nfSearchLoadNo.Text,0) ) ;
     if SupplierNo > -1 then
     Begin
       if bcVerk.Items.Count > 0 then
       For x:= 0 to bcVerk.Items.Count -1 do
       if ThisUser.CompanyNo = integer(bcVerk.Items.Objects[x]) then
       Begin
        bcVerk.ItemIndex:= x ;
       End ;
     End
      else
       ShowMessage('Lasten kan inte lokaliseras') ;
    End ; }

//   nfSearchLoadNo.SetFocus ;
  End
    else
//     nfSearchLoadNo.AsInteger:=  0 ;
//     nfSearchLoadNo.Text:= '' ;
     nfSearchLoadNo.Clear  ;
   grdFraktKostnad.SetFocus ;
   grdFraktKostnad.SetFocus ;

//   grdFraktKostnadPRICE.se
//  nfSearchLoadNo.SetFocus ;
 End ; //with
end;

procedure TfrmFreightLoad.nfSearchLOnrKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);

procedure ClearLO ;
Begin
 with dmModule1 do
 Begin
  tblLoadFreight.DisableControls ;
  tblLoadFreight.Filter:= 'LO <> 0' ;
  tblLoadFreight.Filtered:= True ;
  Try
   While not tblLoadFreight.Eof do
    Begin
     tblLoadFreight.Edit ;
     tblLoadFreightLO.AsInteger:= 0 ;
     tblLoadFreight.Post ;
    End ;
  Finally
   tblLoadFreight.Filtered:= False ;
   tblLoadFreight.EnableControls ;
  End ;
 End ;
End ;

begin
 if Key <> VK_RETURN then Exit;
 with dmModule1 do
 Begin
  ClearLO ;
  Try
  sq_GetLoadNo.ParamByName('LO').AsInteger:= StrToIntDef(nfSearchLOnr.Text,0) ;
  sq_GetLoadNo.Open ;
  While not sq_GetLoadNo.Eof do
  Begin
   if tblLoadFreight.FindKey([sq_GetLoadNoLoadNo.AsInteger]) then
   Begin
    tblLoadFreight.Edit ;
    tblLoadFreightLO.AsInteger:= StrToIntDef(nfSearchLOnr.Text,0) ;
    tblLoadFreight.Post ;
   End ;
   sq_GetLoadNo.Next ;
  End ;
  Finally
   sq_GetLoadNo.Close ;
  End ;
 End ; //with
end;



procedure TfrmFreightLoad.grdFraktKostnadCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  iCustomerNoColumn,
  iSupplierNoColumn,
  iObjectTypeColumn: integer;
  iObjectType: integer;
  iObjectTypeColumn2: integer;
  iObjectType2: integer;

begin

  if ColumnIsGrouped(AColumn, grdFraktKostnad) then    Exit;

 // get the nr of this LO

  iObjectTypeColumn2 := grdFraktKostnad.ColumnByName('grdFraktKostnadLO').Index;
  iObjectType2 := ANode.Values[iObjectTypeColumn2];

  // Set the color for this row, based on if LO > 0
  if iObjectType2 <> 0 then
  AColor := clYellow ;
end;

procedure TfrmFreightLoad.lbSaveToOldClick(Sender: TObject);
Var
 Save_Cursor  : TCursor;
 AvrakningsNo : Integer ;
 mr : Word ;
 Shipper : String ;
begin
 if FinnsMarkeradeLaster then
 Begin

 with dmModule1 do
 Begin
  tblLoadFreight.DisableControls ;

  cdsLoadFreightCost.Active:= True ;

 Try
  if tblLoadFreight.State = dsedit then
   tblLoadFreight.Post ;

  if IsSelectedShipperDifferent(Sender) = True then
  Begin
   ShowMessage('Alla laster måste ha samma lokalafraktförare när ni lägger till laster till en existerande fraktavräkning') ;
   Exit ;
  End ;
//Select Avräkning
   if Assigned(frmAvrakningar) then
   frmAvrakningar.Free ;

    frmAvrakningar := TfrmAvrakningar.Create(Self) ;
    Try
     frmAvrakningar.CreateCo(  ThisUser.CompanyNo);
     mr:= frmAvrakningar.ShowModal ;
     Shipper:= dmModule1.cds_LoadFreightCostHeader2SHIPPER.AsString ;
     AvrakningsNo := dmModule1.cds_LoadFreightCostHeader2AvrakningsNo.AsInteger ;
    Finally
     frmAvrakningar.Free ;
    End ;


  if Shipper <> mtShippersShipper.AsString then
  Begin
   ShowMessage('Lokalfraktförare måste vara samma i de laster som läggs till fraktavräkningen.') ;
   Exit ;
  End ;

  if mr = mrOK then
  Begin
   Save_Cursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;    { Show hourglass cursor }
   Try
   //Endast en shipper i detta fall
    mtShippers.First ;
    if AvrakningsNo <> -1 then
     if SaveDetails(Sender, AvrakningsNo, mtShippersShipper.AsString ) = False then
      ShowMessage('Error spara avräkningsrader.') ;



     if cdsLoadFreightCost.ChangeCount > 0 then
     Begin
      cdsLoadFreightCost.ApplyUpdates(0) ;
      DeleteSavedDetails(Sender) ;
     End
     else
      Begin
       cdsLoadFreightCost.CancelUpdates ;
      End ;


 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
 End ;


 Finally
  cdsLoadFreightCost.Active:= False ;
  tblLoadFreight.First ;
  tblLoadFreight.EnableControls ;
 End ;
 End ; //with

 End
 else
  ShowMessage('Inga laster markerade') ;
end;

function TfrmFreightLoad.FinnsMarkeradeLaster : Boolean ;
Begin
 Result:= False ;
 with dmModule1 do
 Begin
  Try
   tblLoadFreight.Filter:= 'Checked = TRUE' ;
   tblLoadFreight.Filtered:=  True ;
   if tblLoadFreight.RecordCount > 0 then
    Result:= True
     else
      Result:= False ;
   Finally
    tblLoadFreight.Filtered:=  False ;
   End ;
 End ;

End ;

procedure TfrmFreightLoad.bbSparaUtanFFClick(Sender: TObject);
Var
 Save_Cursor  : TCursor;
 AvrakningsNo : Integer ;
begin
 if FinnsMarkeradeLaster then
 Begin
 with dmModule1 do
 Begin
  tblLoadFreight.DisableControls ;


  cds_LoadFreightCostHeader.Active:= True ;
  cdsLoadFreightCost.Active:= True ;

 Try
  if tblLoadFreight.State = dsedit then
   tblLoadFreight.Post ;

  if IsSelectedShipperDifferentUtanFF (Sender) = True then ;


  if mtShippers.RecordCount > 0 then
  Begin
   fMultiplaShippers := TfMultiplaShippers.Create(Self) ;
   Try
    if fMultiplaShippers.ShowModal = mrCancel then
     Exit ;
   Finally
    fMultiplaShippers.Free ;
//    Application.ProcessMessages ;
   End ;
  End
  else
   Exit ;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try
  mtShippers.First ;
  While not mtShippers.Eof do
  Begin
   InsertHeaderUtanFF (mtShippersAvrakningsNr.AsInteger, mtShippersShipperNo.AsInteger, mtShippersShippersInvoiceNo.AsString) ;
   if mtShippersAvrakningsNr.AsInteger <> -1 then
   Begin
    if SaveDetailsUtanFF(Sender, mtShippersAvrakningsNr.AsInteger, mtShippersShipper.AsString ) then ;
   End
    else
     ShowMessage('Fel på avräkningsnr') ;
   mtShippers.Next ;
  End ; //While not mtShippers.


     if (cds_LoadFreightCostHeader.ChangeCount > 0) and (cdsLoadFreightCost.ChangeCount > 0) then
     Begin
      cds_LoadFreightCostHeader.ApplyUpdates(0) ;
      cdsLoadFreightCost.ApplyUpdates(0) ;
      DeleteSavedDetailsUtanFF(Sender) ;
     End
     else
      Begin
       cds_LoadFreightCostHeader.CancelUpdates ;
       cdsLoadFreightCost.CancelUpdates ;
      End ;


 Finally
  Screen.Cursor := Save_Cursor ;
 End ;


 Finally
  cdsLoadFreightCost.Active:= False ;
  cds_LoadFreightCostHeader.Active:= False ;
  tblLoadFreight.First ;
  tblLoadFreight.EnableControls ;
 End ;
 End ; //with
 End
 else
  ShowMessage('Inga laster markerade') ;
end;


function TfrmFreightLoad.InsertHeaderUtanFF (const AvrakningsNr, ShipperNo : Integer; const ShippersInvoiceNo : String) : Integer ;
Begin
 with dmModule1 do
 Begin
  Result:= -1 ;

  cds_LoadFreightCostHeader.Insert ;
  Try
  cds_LoadFreightCostHeaderAvrakningsNo.AsInteger:= AvrakningsNr ;
  cds_LoadFreightCostHeaderAvrakningsDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
  cds_LoadFreightCostHeaderDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
  cds_LoadFreightCostHeaderDateModified.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
  cds_LoadFreightCostHeaderCreatedUser.AsInteger:= ThisUser.UserID ;
  cds_LoadFreightCostHeaderModifiedUser.AsInteger:= ThisUser.UserID ;
  cds_LoadFreightCostHeaderStatus.AsInteger := 0 ;
  cds_LoadFreightCostHeaderShippersInvoiceNo.AsString:= ShippersInvoiceNo ;
  cds_LoadFreightCostHeaderLocalShipperNo.AsInteger:= ShipperNo ;
  if bcVerk.Items.Count > 0 then
   cds_LoadFreightCostHeaderVerkNo.AsInteger:= integer(bcVerk.Items.Objects[bcVerk.ItemIndex]) ;

  cds_LoadFreightCostHeader.Post ;
  Result:= cds_LoadFreightCostHeaderAvrakningsNo.AsInteger ;
  Except
   Result:= -1 ;
  End ;
 End ;
End ;

function TfrmFreightLoad.IsSelectedShipperDifferentUtanFF(Sender: TObject) : Boolean ;
begin
 with dmModule1 do
 Begin
  Result:= False ;
  tblLoadFreight.Filter:= 'Checked = TRUE' ;
  tblLoadFreight.Filtered:=  True ;
  tblLoadFreight.First ;
 Try
  mtShippers.Active:= False ;
  mtShippers.Active:= True ;
  mtShippers.Insert ;
  mtShippersShipper.AsString:= tblLoadFreightSHIPPER.AsString ;
  mtShippersShipperNo.AsInteger:= tblLoadFreightLocalShippingCompanyNo.AsInteger ;
  mtShippersAvrakningsNr.AsInteger:= dmsConnector.NextMaxNo('LoadFreightCostHeader') ;
  mtShippers.Post ;

{  tblLoadFreight.Next ;

  While not tblLoadFreight.Eof do
  Begin
   if not mtShippers.FindKey([tblLoadFreightSHIPPER.AsString]) then
   Begin
    mtShippers.Insert ;
    mtShippersShipper.AsString:= tblLoadFreightSHIPPER.AsString ;
    mtShippersShipperNo.AsInteger:= tblLoadFreightLocalShippingCompanyNo.AsInteger ;
    mtShippersAvrakningsNr.AsInteger:= dmsConnector.NextMaxNo('LoadFreightCostHeader') ;

    mtShippers.Post ;
   End ;
   tblLoadFreight.Next ;
  End ; }

  if mtShippers.RecordCount > 1 then
   Result:= True
    else
     Result:= False ;

 Finally
  tblLoadFreight.Filtered:=  False ;
 End ;
 End ;
End ;

function TfrmFreightLoad.SaveDetailsUtanFF (Sender: TObject;const AvrakningsNo : Integer;const ShipperName : String) : Boolean ;
begin
 with dmModule1 do
 Begin
  Result:= True ;
  tblLoadFreight.Filter:= 'Checked = TRUE ' ;
  tblLoadFreight.Filtered:=  True ;
  tblLoadFreight.First ;
 Try

  While not tblLoadFreight.Eof do
  Begin
   cdsLoadFreightCost.Insert ;
   Try
    cdsLoadFreightCostAvrakningsNo.AsInteger:= AvrakningsNo ;
    cdsLoadFreightCostLoadNo.AsInteger:= tblLoadFreightLoadNo.AsInteger ;
    cdsLoadFreightCostM3_NET.AsFloat:= tblLoadFreightM3_NET.AsFloat ;
    cdsLoadFreightCostPricePerM3_NET.AsFloat:= tblLoadFreightPRICE.AsFloat ;
    cdsLoadFreightCostTotalSUM.AsFloat:= tblLoadFreightINVOICEAMOUNT.AsFloat ;
    cdsLoadFreightCost.Post ;
   Except
    Result:= False ;
   End ;
   tblLoadFreight.Next ;
  End ;


 Finally
  tblLoadFreight.Filtered:=  False ;
 End ;
 End ;
End ;

procedure TfrmFreightLoad.DeleteSavedDetailsUtanFF(Sender: TObject);
begin
 with dmModule1 do
 Begin
  tblLoadFreight.Filtered:=  True ;
 Try
  mtShippers.First ;
  While not mtShippers.Eof do
  Begin
   tblLoadFreight.Filter:= 'Checked = TRUE' ;
   tblLoadFreight.Filtered:=  True ;
   tblLoadFreight.First ;

   While not tblLoadFreight.Eof do
   Begin
    tblLoadFreight.Delete ;
   End ;

   mtShippers.Next ;
  End ;

 Finally
  tblLoadFreight.Filtered:=  False ;
 End ;

 End ;
End ;


procedure TfrmFreightLoad.bcVerkChange(Sender: TObject);
begin
 if peShippers.Items.Count > 0 then
 bbRefreshClick(Sender) ;
end;

end.
