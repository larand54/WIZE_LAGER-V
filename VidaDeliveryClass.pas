unit VidaDeliveryClass;

interface

uses Variants, Classes, Forms, SysUtils, Dialogs, uDeliveryReport, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, Buttons, cxCalc,
  cxCurrencyEdit, cxGridExportLink, cxSplitter, dm_Inventory;

type
  Delivery_Class = class(Tobject)
    gridview : TcxGridDBBandedTableView;
    buffer : TStringList;
    ObjectList : TList;
    FieldIndex : String;
    FieldSQLName : String;
    GroupSQL : String;
    VisibleStatus : Boolean;

    property Index : String read FieldIndex;
    property SQL : String read FieldSQLName;
    property group : String read GroupSQL;
    property Status : Boolean read VisibleStatus;

    constructor Create(const FieldIndex : String; const FieldSQLName : String; const GroupSQL : String; const VisibleStatus : Boolean) OverLoad;

    function LoadData : String;
    function GetStatus(const IndexStatus : String): Boolean;
    function BuildQuery : String;
    procedure ShowListContents;
  end;



implementation

{ Delivery_Class }

function Delivery_Class.BuildQuery: String;
var
  i, j, IndexNo, TempIndex, SQLLength : integer;
  TempSQLStr1, TempSQLStr2 : string;
begin
  With dmInventory do
  Begin
    With cds_DeliveryStat do
    Begin
      SQL.Clear;
      SQL.Add('Select distinct');

      for j := 0 to ObjectList.Count - 1 do
      begin
        if Delivery_Class(ObjectList[j]).Status = True then
        begin
//            showmessage(Delivery_Class(ObjectList[j]).Index);
            SQL.Add(Delivery_Class(ObjectList[j]).SQL) ;
        end   ;

      end;



{    SQL.Add('pg.ActualWidthMM AS AB,') ;
    SQL.Add('pg.ActualThicknessMM AS AT,') ;
    SQL.Add('pg.NominalThicknessMM AS NT,') ;
    SQL.Add('pg.NominalWidthMM AS NB,') ;}

    SQL.Add('') ;
    SQL.Add('round(SUM(pp.AM3),2) AS AM3,') ;
    SQL.Add('round(SUM(pp.NM3),2) AS NM3,') ;
    SQL.Add('SUM(pp.NoOfPcs) AS Styck,') ;
    SQL.Add('CASE') ;
    SQL.Add('WHEN SUM(pp.NM3) > 0 THEN') ;
    SQL.Add('round(SUM(pp.[Värde]) / SUM(pp.NM3),2)') ;
    SQL.Add('ELSE') ;
    SQL.Add('0') ;
    SQL.Add('END AS MEDELPRIS,') ;
    SQL.Add('round(SUM(pp.[Värde]),2) AS NETTO') ;



//    SQL.Add('vg.VarugruppNamn');
    SQL.Add('FROM dbo.ST_Deliveries pp') ;
    SQL.Add('Inner Join dbo.Client Kund ON Kund.ClientNo = pp.customerNo') ;
    SQL.Add('Inner Join dbo.Client Verk ON Verk.ClientNo = pp.VerkNo') ;
    SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = PP.ProductNo') ;
    SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo') ;
    SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
    SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo') ;
    SQL.Add('				AND imp.LanguageCode = 1') ;
    SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
    SQL.Add('				AND SPE.LanguageCode = 1') ;
    SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
    SQL.Add('				AND SUR.LanguageCode = 1') ;
    SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
    SQL.Add('				AND Gr.LanguageCode = 1') ;
    SQL.Add('Left outer join dbo.VaruGrupp vg on vg.VarugruppNo = pd.VarugruppNo') ;
//    if deStartPeriod.EditValue > 0 then
    SQL.Add('WHERE pp.Utlastad >= ' + QuotedStr(DateTimeToStr(fDeliveryReport.deStartPeriod.Date))) ;

    if fDeliveryReport.deEndPeriod.EditValue > 0 then
    SQL.Add('AND pp.Utlastad <= ' + QuotedStr(DateTimeToStr(fDeliveryReport.deEndPeriod.Date))) ;

    SQL.Add(fDeliveryReport.GetSQLofComboFilter(1, 'Verk.PktNrLevKod', fDeliveryReport.cbOwner)) ;

    if fDeliveryReport.cbExkluderaEgnaLeveranser.Checked then
    Begin
     SQL.Add('AND pp.VerkNo <> pp.customerNo') ;
    End;


    SQL.Add(fDeliveryReport.GetSQLofComboFilter(0, 'SPE.SpeciesCode', fDeliveryReport.ccbTS2)) ;
    SQL.Add(fDeliveryReport.GetSQLofComboFilter(0, 'GR.GradeCode', fDeliveryReport.ccbKV2)) ;
    SQL.Add(fDeliveryReport.GetSQLofComboFilter(0, 'SUR.SurfacingCode', fDeliveryReport.ccbSU2)) ;
    SQL.Add(fDeliveryReport.GetSQLofComboFilter(0, 'va.VaruGruppNo', fDeliveryReport.ccVarugrupp)) ;
    SQL.Add(fDeliveryReport.GetSQLofComboFilter(0, 'imp.ImpCode', fDeliveryReport.ccbIMP)) ;

    SQL.Add(fDeliveryReport.GetSQLofComboFilter(1, 'pg.ActualThicknessMM', fDeliveryReport.ccbAT)) ;
    SQL.Add(fDeliveryReport.GetSQLofComboFilter(1, 'pg.ActualWidthMM', fDeliveryReport.ccbAB)) ;

    SQL.Add(fDeliveryReport.GetSQLofComboFilter(1, 'pg.NominalThicknessMM', fDeliveryReport.ccbNT)) ;
    SQL.Add(fDeliveryReport.GetSQLofComboFilter(1, 'pg.NominalWidthMM', fDeliveryReport.ccbNB)) ;
//    SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

  //  SQL.Add(GetSQLofComboFilter(1, 'rp.RegPointNo', ccMatpunkt)) ;
//    SQL.Add(GetSQLofComboFilter(1, 'pp.ShiftNo', ccSkiftLag)) ;

    SQL.Add(fDeliveryReport.GetSQLofComboFilter(1, 'pp.customerNo', fDeliveryReport.ccKund)) ;
//    SQL.Add(GetSQLofComboFilter(1, 'pp.LandNo', ccLand)) ;




      SQL.Add('Group by');
      for j := 0 to ObjectList.Count - 1 do
      begin
        if Delivery_Class(ObjectList[j]).Status = True then
        begin
        TempIndex := pos('Group by', SQL.Text);
        IndexNo :=  POS(Delivery_Class(ObjectList[j]).group,(Copy(SQL.Text, Tempindex, Length(SQL.Text)))) ;
        if IndexNo = 0 then
        begin
//            showmessage(Delivery_Class(ObjectList[j]).group);
            SQL.Add(Delivery_Class(ObjectList[j]).group) ;
//            if j <> ObjectList.Count - 1 then
            sql.add(',');
        end
        end;
      end;
//      SQL.Add('vg.VarugruppNamn');


      SQLLength := length(SQL.Text) - 2;
      if SQL.Text[SQLLength] = ',' then
      begin
        TempSQLStr1 := SQL.Text;
        SQL.Clear;
        TempSQLStr2 := copy(TempSQLStr1, 1, SQLLength - 1);
        SQL.Add(TempSQLStr2);
      end;





  //   SQL.SaveToFile('Delivery_SQL.txt') ;
    End;
  End;
end;

constructor Delivery_Class.Create(const FieldIndex : String; const FieldSQLName : string;  const GroupSQL : String;  const VisibleStatus : Boolean);
begin
  // Save the passed parameters
  self.FieldIndex     := FieldIndex;
  self.FieldSQLName   := FieldSQLName;
  self.GroupSQL       := GroupSQL;
  self.VisibleStatus  := VisibleStatus;
  gridview := nil;
end;

function Delivery_Class.GetStatus(const IndexStatus : String): Boolean;
{Var
  i : Integer;}
begin

   Result := gridview.GetColumnByFieldName(IndexStatus).VisibleIndex > -1 ;
   if gridview.GetColumnByFieldName(IndexStatus).GroupIndex > -1 then
   Result := True ;

   if Result = true then
   Begin
    if Length(dmInventory.KeyField) = 0 then
    dmInventory.KeyField     := IndexStatus
    else
    dmInventory.KeyField     := dmInventory.KeyField + ';' + IndexStatus ;
   End;
{  for i := 0 to gridview.ColumnCount - 1 do
  begin
    if gridview.Columns[i].DataBinding.FieldName = IndexStatus then
    begin
      if gridview.Columns[i].Visible = True then
        Result := 'True'
      else
        Result := 'False';
      end;
    end;}
end;

function Delivery_Class.LoadData: String;
var
  i,j         : integer;
  StrTemp     : TstringList;
  IndexTemp   : String;
  SQLTemp     : String;
  GroupTemp   : String;
  StatusTemp  : Boolean;
  dir         : string ;
begin
  dir         := GetCurrentDir;
  ObjectList  := TList.Create;
  buffer      := TStringList.Create;
  StrTemp     := TStringList.Create;
 // buffer.LoadFromFile('C:\ProjectXE\LagerTrusted IIII\VIS 1211\EXE\Delivery.txt');
  buffer.LoadFromFile(dir + '\Delivery.txt');
  for i:= 0 to buffer.Count - 1 do
  begin
    StrTemp.Delimiter     := ' ';
    StrTemp.QuoteChar     := '|';
    StrTemp.DelimitedText := buffer[i];
    IndexTemp             := StrTemp[0];
    SQLTemp               := StrTemp[1];
    GroupTemp             := StrTemp[2];
    StatusTemp            := GetStatus(IndexTemp);
    ObjectList.Add(Delivery_Class.Create(IndexTemp, SQLTemp, GroupTemp, StatusTemp));
  end;

  BuildQuery;



//  ShowListContents;

end;

procedure Delivery_Class.ShowListContents;
var
  i : Integer;
begin
  // And redisplay the list
  for i := 0 to ObjectList.Count-1 do
  begin
//    ShowMessage(Delivery_Class(ObjectList[i]).Index+' '+ Delivery_Class(ObjectList[i]).SQL+' '+ Delivery_Class(ObjectList[i]).group+' ' + Delivery_Class(ObjectList[i]).Status);
  end;
end;


end.
