unit dmc_DryKiln;

interface

uses
  SysUtils, Classes, DB, SqlTimSt,
  kbmMemTable, Dialogs, Forms, Controls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt, VidaType ;

type
  Tdm_DryKiln = class(TDataModule)
    ds_Kilns: TDataSource;
    ds_KilnChargeHdr: TDataSource;
    ds_KilnChargeRow: TDataSource;
    ds_KilnProps: TDataSource;
    ds_PIP: TDataSource;
    ds_LIP: TDataSource;
    ds_Verk: TDataSource;
    mtPkgNos: TkbmMemTable;
    mtPkgNosPackageNo: TIntegerField;
    mtPkgNosSupplierCode: TStringField;
    ds_SumKilnChargeRows: TDataSource;
    cds_SumKilnChargeRows: TFDQuery;
    cds_Verk: TFDQuery;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkSearchName: TStringField;
    cds_VerkSalesRegionNo: TIntegerField;
    cds_LIP: TFDQuery;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLIPName: TStringField;
    cds_LIPPIPNo: TIntegerField;
    cds_PIP: TFDQuery;
    cds_PIPPIPNO: TIntegerField;
    cds_PIPPIPNAME: TStringField;
    cds_PIPOwnerNo: TIntegerField;
    cds_KilnProps: TFDQuery;
    cds_KilnPropsClientNo: TIntegerField;
    cds_KilnPropsKiln_PIPNo: TIntegerField;
    cds_KilnPropsBeforeKiln_LIPNo: TIntegerField;
    cds_KilnPropsKiln_LIPNo: TIntegerField;
    cds_KilnPropsAfterKiln_LIPNo: TIntegerField;
    cds_KilnPropsStringField: TStringField;
    cds_KilnPropsStringField2: TStringField;
    cds_KilnPropsStringField3: TStringField;
    cds_KilnPropsStringField4: TStringField;
    cds_KilnPropsStringField5: TStringField;
    cds_KilnChargeRow: TFDQuery;
    cds_KilnChargeRowKilnChargeNo: TIntegerField;
    cds_KilnChargeRowPackageNo: TIntegerField;
    cds_KilnChargeRowSupplierCode: TStringField;
    cds_KilnChargeRowNoOfPkgs: TIntegerField;
    cds_KilnChargeRowDateCreated: TSQLTimeStampField;
    cds_KilnChargeRowCreatedUser: TIntegerField;
    cds_KilnChargeHdr: TFDQuery;
    cds_KilnChargeHdrClientNo: TIntegerField;
    cds_KilnChargeHdrKilnChargeNo: TIntegerField;
    cds_KilnChargeHdrKilnNo: TIntegerField;
    cds_KilnChargeHdrStartTime: TSQLTimeStampField;
    cds_KilnChargeHdrEndTime: TSQLTimeStampField;
    cds_KilnChargeHdrPlannedDuration: TFloatField;
    cds_KilnChargeHdrCreatedDate: TSQLTimeStampField;
    cds_KilnChargeHdrCreatedUser: TIntegerField;
    cds_KilnChargeHdrStatus: TIntegerField;
    cds_KilnChargeHdrNote: TMemoField;
    cds_KilnChargeHdrStringField: TStringField;
    cds_Kilns: TFDQuery;
    cds_KilnsClientNo: TIntegerField;
    cds_KilnsKilnNo: TIntegerField;
    cds_KilnsKilnName: TStringField;
    sq_SeTKilnToComplete: TFDQuery;
    sq_SeTKilnToCompleteKilnChargeNo: TIntegerField;
    sq_SeTKilnToCompleteKilnNo: TIntegerField;
    sq_SeTKilnToCompleteStartTime: TSQLTimeStampField;
    sq_SeTKilnToCompleteEndTime: TSQLTimeStampField;
    sq_SeTKilnToCompletePlannedDuration: TFloatField;
    sq_SeTKilnToCompleteCreatedDate: TSQLTimeStampField;
    sq_SeTKilnToCompleteCreatedUser: TIntegerField;
    sq_SeTKilnToCompleteClientNo: TIntegerField;
    sq_SeTKilnToCompleteStatus: TIntegerField;
    sq_SeTKilnToCompleteNote: TMemoField;
    sq_GetPrevKilnChargeNo: TFDQuery;
    sq_GetPrevKilnChargeNoKilnChargeNo: TIntegerField;
    sq_MoveToAfterKiln: TFDQuery;
    sq_GetPkgNosOfKilnCharge: TFDQuery;
    sq_GetPkgNosOfKilnChargePackageNo: TIntegerField;
    sq_GetPkgNosOfKilnChargeSupplierCode: TStringField;
    sq_DeleteKChargeRows: TFDQuery;
    sq_MovePkgsToLip: TFDQuery;
    sq_GetPkgNos: TFDQuery;
    sq_GetPkgNosPackageNo: TIntegerField;
    sq_GetPkgNosSupplierCode: TStringField;
    sq_LastKilnChNo: TFDQuery;
    sq_LastKilnChNoKilnChargeNo: TIntegerField;
    cds_SumKilnChargeRowsKilnChargeNo: TIntegerField;
    cds_SumKilnChargeRowsProdukt: TStringField;
    cds_SumKilnChargeRowsAntalperlängd: TStringField;
    cds_SumKilnChargeRowsPaket: TIntegerField;
    cds_SumKilnChargeRowsAM3: TFloatField;
    cds_SumKilnChargeRowsproductno: TIntegerField;
    cds_KilnChargeRowVagnNo: TIntegerField;
    cds_KilnChargeRowRowNo: TIntegerField;
    cds_KilnChargeHdrKiln_PIPNo: TIntegerField;
    cds_KilnChargeHdrBeforeKiln_LIPNo: TIntegerField;
    cds_KilnChargeHdrKiln_LIPNo: TIntegerField;
    cds_KilnChargeHdrAfterKiln_LIPNo: TIntegerField;
    cds_KilnChargeRowProductDisplayName: TStringField;
    sq_GetPkgNosNoLength: TFDQuery;
    sq_GetPkgNosNoLengthPackageNo: TIntegerField;
    sq_GetPkgNosNoLengthSupplierCode: TStringField;
    cds_KilnsNoOfVagnar: TIntegerField;
    cds_KilnsTypeOfKiln: TIntegerField;
    cds_KilnChargeHeader: TFDQuery;
    cds_KilnChargeHeaderClientNo: TIntegerField;
    cds_KilnChargeHeaderKilnChargeNo: TIntegerField;
    cds_KilnChargeHeaderKilnNo: TIntegerField;
    cds_KilnChargeHeaderStartTime: TSQLTimeStampField;
    cds_KilnChargeHeaderEndTime: TSQLTimeStampField;
    cds_KilnChargeHeaderPlannedDuration: TFloatField;
    cds_KilnChargeHeaderCreatedDate: TSQLTimeStampField;
    cds_KilnChargeHeaderCreatedUser: TIntegerField;
    cds_KilnChargeHeaderStatus: TIntegerField;
    cds_KilnChargeHeaderNote: TMemoField;
    cds_KilnChargeHeaderInfo: TStringField;
    ds_KilnChargeHeader: TDataSource;
    cds_KilnsNoOfVagnarBefore: TIntegerField;
    procedure cds_KilnPropsOLDClientNoChange(Sender: TField);
    procedure cds_KilnPropsOLDKiln_PIPNoChange(Sender: TField);
    procedure ds_KilnChargeHdrDataChange(Sender: TObject; Field: TField);
    procedure cds_KilnChargeRowAfterInsert(DataSet: TDataSet);
    procedure cds_KilnChargeHdrAfterInsert(DataSet: TDataSet);
    procedure cds_KilnsAfterInsert(DataSet: TDataSet);
    procedure cds_KilnChargeHeaderAfterInsert(DataSet: TDataSet);
    procedure cds_KilnPropsKiln_PIPNoChange(Sender: TField);
  private
    { Private declarations }
    procedure GetPkgsNumbersFromInventoryBeforeKiln(const LengthGroupNo, ProductNo, NoOfPkgs : Integer;const AL : String) ;
  public
    { Public declarations }
    KilnChargeNo : Integer ;

    procedure AddPkgsToTorkSatsTablePerSortiment(const LengthGroupNo, ProductNo, NoOfPkgs : Integer;const AL, Produkt : String) ;
    procedure AddPkgsToTorkSatsTablePerPaketNr(mtKilnPkgs : TkbmMemTable) ;
    Function  Get_LastKilnChNo : Integer ;
    procedure GetPkgNosOfKilnChargePackageNo(const GetNoOfPkgs : Integer;mtKilnPkgs : TkbmMemTable) ;
    procedure RemovePkgsFromKilnRow(mtKilnPkgs : TkbmMemTable) ;
    procedure MoveToAfterKilnAndSetKilnToComplete(const KilnChargeNo : Integer;const EndTime : TSQLTIMESTAMP) ;
    procedure SetPreviousKilnToComplete(const KilnNo : Integer;const EndTime : TSQLTIMESTAMP) ;
    function  GetPrevKilnChargeNo(const KilnNo : Integer) : Integer ;
  end;

var
  dm_DryKiln: Tdm_DryKiln;

implementation

uses dmsDataConn, VidaUser ;

{$R *.dfm}


function Tdm_DryKiln.GetPrevKilnChargeNo(const KilnNo : Integer) : Integer ;
Begin
 sq_GetPrevKilnChargeNo.ParamByName('KilnNo').AsInteger:= KilnNo ;
 sq_GetPrevKilnChargeNo.Open ;
 if not sq_GetPrevKilnChargeNo.Eof then
  Result:= sq_GetPrevKilnChargeNoKilnChargeNo.AsInteger
   else
    Result:= -1 ;
 sq_GetPrevKilnChargeNo.Close ;
End ;

procedure Tdm_DryKiln.MoveToAfterKilnAndSetKilnToComplete(const KilnChargeNo : Integer;const EndTime : TSQLTIMESTAMP) ;
Begin
 ds_KilnChargeHdr.OnDataChange:= nil ;
 Try
 if not cds_KilnPropsAfterKiln_LIPNo.IsNull then
 Begin
  dmsConnector.StartTransaction;
  Try
  sq_MoveToAfterKiln.ParamByName('KilnChargeNo').AsInteger := KilnChargeNo ;
  sq_MoveToAfterKiln.ParamByName('LIPNo').AsInteger        := cds_KilnPropsAfterKiln_LIPNo.AsInteger ;
  sq_MoveToAfterKiln.ExecSQL ;

  sq_SeTKilnToComplete.ParamByName('KilnChargeNo').AsInteger := KilnChargeNo ;
  sq_SeTKilnToComplete.ParamByName('EndTime').AsSQLTimeStamp := EndTime ;
  sq_SeTKilnToComplete.ExecSQL ;

{  if cds_KilnChargeHdr.State in [dsBrowse] then
  cds_KilnChargeHdr.Edit ;

  cds_KilnChargeHdrStatus.AsInteger:= 1 ;
  if cds_KilnChargeHdrEndTime.IsNull then
   cds_KilnChargeHdrEndTime.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
  cds_KilnChargeHdr.Post ;
  if cds_KilnChargeHdr.ChangeCount > 0 then
  cds_KilnChargeHdr.ApplyUpdates(0) ; }

  dmsConnector.Commit ;
  except
   dmsConnector.Rollback ;
  end;

 End ;
 Finally
   ds_KilnChargeHdr.OnDataChange:= ds_KilnChargeHdrDataChange ;
 End ;
End ;

procedure Tdm_DryKiln.GetPkgNosOfKilnChargePackageNo(const GetNoOfPkgs : Integer;mtKilnPkgs : TkbmMemTable) ;
Var x : Integer ;
Begin
 x:= 1 ;
 sq_GetPkgNosOfKilnCharge.Close ; 
 sq_GetPkgNosOfKilnCharge.ParamByName('KilnChargeNo').AsInteger := cds_KilnChargeHdrKilnChargeNo.AsInteger ;
 sq_GetPkgNosOfKilnCharge.ParamByName('ProductNo').AsInteger    := cds_SumKilnChargeRowsproductno.AsInteger ;
 sq_GetPkgNosOfKilnCharge.ParamByName('PcsPerLength').AsString  := cds_SumKilnChargeRowsAntalperlängd.AsString ;
 sq_GetPkgNosOfKilnCharge.Open ;
 While (not sq_GetPkgNosOfKilnCharge.Eof) and (x <= GetNoOfPkgs) do
 Begin
  mtKilnPkgs.Insert ;
  mtKilnPkgs.FieldByName('PackageNo').AsInteger := sq_GetPkgNosOfKilnChargePackageNo.AsInteger ;
  mtKilnPkgs.FieldByName('Supp_Code').AsString  := sq_GetPkgNosOfKilnChargeSupplierCode.AsString ;
  mtKilnPkgs.Post ;
  sq_GetPkgNosOfKilnCharge.Next ;
  x := succ(x) ;
 End ;
 sq_GetPkgNosOfKilnCharge.Close ;
End ;

//Lägg tillbaks paket från torksats till lager före tork, om användaren tar bort paket från torksats
procedure Tdm_DryKiln.RemovePkgsFromKilnRow(mtKilnPkgs : TkbmMemTable) ;
Begin
 //Ta bort angivet antal paketnr från KilnChargeRow i fokus
 //Lägg dessa paketnr tillbaks till lager "Före Tork"
 mtKilnPkgs.First ;
 While not mtKilnPkgs.Eof do
 Begin
 //Flytta paket till lagergrupp "Före tork"
  dmsConnector.StartTransaction;
  Try
  sq_MovePkgsToLip.ParamByName('LIPNo').AsInteger        := cds_KilnPropsBeforeKiln_LIPNo.AsInteger ;
  sq_MovePkgsToLip.ParamByName('PackageNo').AsInteger    := mtKilnPkgs.FieldByName('PackageNo').AsInteger ;
  sq_MovePkgsToLip.ParamByName('SupplierCode').AsString  := mtKilnPkgs.FieldByName('Supp_Code').AsString ;
  sq_MovePkgsToLip.ExecSQL ;

  sq_DeleteKChargeRows.ParamByName('KilnChargeNo').AsInteger := cds_KilnChargeHdrKilnChargeNo.AsInteger ;
  sq_DeleteKChargeRows.ParamByName('PackageNo').AsInteger    := mtKilnPkgs.FieldByName('PackageNo').AsInteger ;
  sq_DeleteKChargeRows.ParamByName('SupplierCode').AsString  := mtKilnPkgs.FieldByName('Supp_Code').AsString ;
  sq_DeleteKChargeRows.ExecSQL ;

  dmsConnector.Commit ;
  mtKilnPkgs.Next ;
  except
   dmsConnector.Rollback ;
   mtKilnPkgs.Next ;
  end;
 End ;//While
End ;

//Lägg paket till en torksats, användaren har valt paket från paketnr listan.
procedure Tdm_DryKiln.AddPkgsToTorkSatsTablePerPaketNr(mtKilnPkgs : TkbmMemTable) ;
Begin
 if mtKilnPkgs.RecordCount = 0 then
  ShowMessage('Inga paket valda') ;
 mtKilnPkgs.First ;
 While not mtKilnPkgs.Eof do
 Begin
  if cds_KilnPropsBeforeKiln_LIPNo.AsInteger = mtKilnPkgs.FieldByName('LIPNo').AsInteger then
  Begin
  dmsConnector.StartTransaction;
  try
  cds_KilnChargeRow.Insert ;
  cds_KilnChargeRowPackageNo.AsInteger              := mtKilnPkgs.FieldByName('PackageNo').AsInteger ;
  cds_KilnChargeRowSupplierCode.AsString            := mtKilnPkgs.FieldByName('Supp_Code').AsString ;
  cds_KilnChargeRow.Post ;

  if cds_KilnChargeRow.ChangeCount > 0 then
  cds_KilnChargeRow.ApplyUpdates(0) ;

  sq_MovePkgsToLip.ParamByName('LIPNo').AsInteger        := cds_KilnPropsKiln_LIPNo.AsInteger ;
  sq_MovePkgsToLip.ParamByName('PackageNo').AsInteger    := mtKilnPkgs.FieldByName('PackageNo').AsInteger ;
  sq_MovePkgsToLip.ParamByName('SupplierCode').AsString  := mtKilnPkgs.FieldByName('Supp_Code').AsString ;
  sq_MovePkgsToLip.ExecSQL ;

  dmsConnector.Commit ;
  mtKilnPkgs.Next ;
  except
   dmsConnector.Rollback ;
   mtKilnPkgs.Next ;
  end;
  End ;//if..
 End ;//While
End ;

//Lägg paket till en torksats, användaren har valt från sortimentslistan
procedure Tdm_DryKiln.AddPkgsToTorkSatsTablePerSortiment(const LengthGroupNo, ProductNo, NoOfPkgs : Integer;const AL, Produkt : String) ;
Var Save_Cursor   : TCursor;
Begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
 mtPkgNos.Active:= True ;
 Try
 GetPkgsNumbersFromInventoryBeforeKiln(LengthGroupNo, ProductNo, NoOfPkgs, AL) ;
 if mtPkgNos.RecordCount = 0 then
  ShowMessage('Inga paket finns av '+PRODUKT+', längd '+AL) ;
 mtPkgNos.First ;
 While not mtPkgNos.Eof do
 Begin
  dmsConnector.StartTransaction;
  try
  cds_KilnChargeRow.Insert ;
  cds_KilnChargeRowPackageNo.AsInteger              := mtPkgNosPackageNo.AsInteger ;
  cds_KilnChargeRowSupplierCode.AsString            := mtPkgNosSupplierCode.AsString ;
  cds_KilnChargeRow.Post ;

  if cds_KilnChargeRow.ChangeCount > 0 then
  cds_KilnChargeRow.ApplyUpdates(0) ;
  Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
  sq_MovePkgsToLip.ParamByName('LIPNo').AsInteger        := cds_KilnPropsKiln_LIPNo.AsInteger ;
  sq_MovePkgsToLip.ParamByName('PackageNo').AsInteger    := mtPkgNosPackageNo.AsInteger ;
  sq_MovePkgsToLip.ParamByName('SupplierCode').AsString  := mtPkgNosSupplierCode.AsString ;
  sq_MovePkgsToLip.ExecSQL ;

  dmsConnector.Commit ;
  Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
  mtPkgNos.Next ;
  except
   dmsConnector.Rollback ;
   mtPkgNos.Next ;
  end;
 End ;//for
 Finally
  mtPkgNos.Active:= False ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure Tdm_DryKiln.GetPkgsNumbersFromInventoryBeforeKiln(const LengthGroupNo, ProductNo, NoOfPkgs : Integer;const AL : String) ;
Var x : Integer ;
Begin
 if cds_KilnPropsBeforeKiln_LIPNo.IsNull then
 Begin
  ShowMessage('Torkparametrar är ej definerade.') ;
 End ;

 if AL = 'ÖVRIGA' then
 Begin
  x:= 1 ;
  sq_GetPkgNosNoLength.Close ;
  sq_GetPkgNosNoLength.ParamByName('ProductNo').AsInteger  := ProductNo ;
  sq_GetPkgNosNoLength.ParamByName('LIPNo').AsInteger      := cds_KilnPropsBeforeKiln_LIPNo.AsInteger ;
  sq_GetPkgNosNoLength.ParamByName('GroupNo').AsInteger    := LengthGroupNo ;
  sq_GetPkgNosNoLength.Open ;
  While (not sq_GetPkgNosNoLength.Eof) and (x <= NoOfPkgs) do
  Begin
   mtPkgNos.Insert ;
   mtPkgNosSupplierCode.AsString := sq_GetPkgNosNoLengthSupplierCode.AsString ;
   mtPkgNosPackageNo.AsInteger   := sq_GetPkgNosNoLengthPackageNo.AsInteger ;
   mtPkgNos.Post ;
   sq_GetPkgNosNoLength.Next ;
   x:= succ(x) ;
  End ;
  sq_GetPkgNosNoLength.Close ;
 End
 else
 Begin
  x:= 1 ;
  sq_GetPkgNos.Close ;
  sq_GetPkgNos.ParamByName('ProductNo').AsInteger  := ProductNo ;
  sq_GetPkgNos.ParamByName('LIPNo').AsInteger      := cds_KilnPropsBeforeKiln_LIPNo.AsInteger ;
  sq_GetPkgNos.ParamByName('AL').AsFloat           := StrToFloatDef(AL,-1) ;
  sq_GetPkgNos.Open ;
  While (not sq_GetPkgNos.Eof) and (x <= NoOfPkgs) do
  Begin
   mtPkgNos.Insert ;
   mtPkgNosSupplierCode.AsString := sq_GetPkgNosSupplierCode.AsString ;
   mtPkgNosPackageNo.AsInteger   := sq_GetPkgNosPackageNo.AsInteger ;
   mtPkgNos.Post ;
   sq_GetPkgNos.Next ;
   x:= succ(x) ;
  End ;
  sq_GetPkgNos.Close ;
 End ;
End ;

procedure Tdm_DryKiln.cds_KilnsAfterInsert(DataSet: TDataSet);
begin
 cds_KilnsKilnNo.AsInteger    := dmsConnector.NextMaxNo('Kiln') ;
 cds_KilnsClientNo.AsInteger  := cds_KilnPropsClientNo.AsInteger ;
end;

procedure Tdm_DryKiln.cds_KilnChargeHdrAfterInsert(DataSet: TDataSet);
begin
 cds_KilnChargeHdrKilnChargeNo.AsInteger      := dmsConnector.NextMaxNo('KilnChargeHdr') ;
 cds_KilnChargeHdrCreatedDate.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
 cds_KilnChargeHdrCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_KilnChargeHdrClientNo.AsInteger          := ThisUser.CompanyNo ;
 cds_KilnChargeHdrStatus.AsInteger            := 0 ;
 cds_KilnChargeHdrStartTime.AsSQLTimeStamp    := DateTimeToSqlTimeStamp(Now) ;
end;

procedure Tdm_DryKiln.cds_KilnChargeHeaderAfterInsert(DataSet: TDataSet);
begin
 cds_KilnChargeHeaderKilnChargeNo.AsInteger      := dmsConnector.NextMaxNo('KilnChargeHdr') ;
 cds_KilnChargeHeaderClientNo.AsInteger          := cds_KilnPropsClientNo.AsInteger ;
 cds_KilnChargeHeaderKilnNo.AsInteger            := cds_KilnsKilnNo.AsInteger ;
 cds_KilnChargeHeaderCreatedDate.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
 cds_KilnChargeHeaderCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_KilnChargeHeaderClientNo.AsInteger          := ThisUser.CompanyNo ;
 cds_KilnChargeHeaderStatus.AsInteger            := 0 ;
 cds_KilnChargeHeaderStartTime.AsSQLTimeStamp    := DateTimeToSqlTimeStamp(Now) ;
end;

procedure Tdm_DryKiln.cds_KilnChargeRowAfterInsert(DataSet: TDataSet);
begin
 cds_KilnChargeRowKilnChargeNo.AsInteger      := cds_KilnChargeHdrKilnChargeNo.AsInteger ;
 cds_KilnChargeRowDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
 cds_KilnChargeRowCreatedUser.AsInteger       := ThisUser.UserID ;
end;

procedure Tdm_DryKiln.cds_KilnPropsKiln_PIPNoChange(Sender: TField);
begin
 if cds_KilnPropsClientNo.AsInteger > 0 then
    Begin
     cds_PIP.Filter   := 'OwnerNo = ' + cds_KilnPropsClientNo.AsString ;
     cds_PIP.Filtered := True ;
     if cds_KilnPropsKiln_PIPNo.AsInteger > 0 then
      cds_LIP.Filter   := 'PIPNo = ' + cds_KilnPropsKiln_PIPNo.AsString
       else
        cds_LIP.Filter   := 'PIPNo = -1' ;
     cds_LIP.Filtered := True ;
    End
    else
    Begin
     cds_PIP.Filter   := 'OwnerNo = -1' ;
     cds_PIP.Filtered := True ;
     cds_LIP.Filter   := 'PIPNo = -1' ;
     cds_LIP.Filtered := True ;
    End;
end;

procedure Tdm_DryKiln.cds_KilnPropsOLDClientNoChange(Sender: TField);
begin
 cds_PIP.Filter   := 'OwnerNo = '+cds_KilnPropsClientNo.AsString ;
 cds_PIP.Filtered := True ;
// cds_PIP.Active:= False ;
// sq_PIP.ParamByName('OwnerNo').AsInteger:= cds_KilnPropsClientNo.AsInteger ;
// cds_PIP.Active:= True ;
end;

procedure Tdm_DryKiln.cds_KilnPropsOLDKiln_PIPNoChange(Sender: TField);
begin
 cds_LIP.Filter   := 'PIPNo = '+cds_KilnPropsKiln_PIPNo.AsString ;
 cds_LIP.Filtered := True ;
// cds_LIP.Active:= False ;
// sq_LIP.ParamByName('PIPNo').AsInteger:= cds_KilnPropsKiln_PIPNo.AsInteger ;
// cds_LIP.Active:= True ;
end;

Function Tdm_DryKiln.Get_LastKilnChNo : Integer ;
Begin
 sq_LastKilnChNo.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
 sq_LastKilnChNo.Open ;
 if not sq_LastKilnChNo.Eof then
  Result:= sq_LastKilnChNoKilnChargeNo.AsInteger
   else
    Result:= -1 ;
 sq_LastKilnChNo.Close ;
End ;


procedure Tdm_DryKiln.ds_KilnChargeHdrDataChange(Sender: TObject;
  Field: TField);
begin
 if cds_KilnChargeHdrStatus.AsInteger = 0 then
  cds_KilnChargeHdr.UpdateOptions.ReadOnly  := False
   else
    cds_KilnChargeHdr.UpdateOptions.ReadOnly:= True ;
end;

procedure Tdm_DryKiln.SetPreviousKilnToComplete (const KilnNo : Integer;const EndTime : TSQLTIMESTAMP) ;
Begin
 sq_SeTKilnToComplete.ParamByName('KilnNo').AsInteger       := KilnNo ;
 sq_SeTKilnToComplete.ParamByName('EndTime').AsSQLTimeStamp := EndTime ;
 sq_SeTKilnToComplete.ExecSQL ;

 sq_MoveToAfterKiln.ParamByName('KilnChargeNo').AsInteger := cds_KilnChargeHdrKilnChargeNo.AsInteger ;
 sq_MoveToAfterKiln.ParamByName('LIPNo').AsInteger        := cds_KilnPropsAfterKiln_LIPNo.AsInteger ;
 sq_MoveToAfterKiln.ExecSQL ;
End ;



end.
