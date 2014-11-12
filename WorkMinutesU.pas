unit WorkMinutesU;

interface

uses
  SysUtils, Classes, Math, StrUtils, DateUtils, Variants, Dialogs,
  FireDAC.Stan.Intf, FireDAC.DatS, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Stan.Param,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Def, FireDAC.UI.Intf, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, dmsDataConn ;

type TTime = type TDateTime;

function GetNextMDate( dsHoliday: TFDQuery;
                       const LastMDate: TDateTime;
                       const Intervall, DriftPlatsNr : Integer;
                       Out ResolvedStartDateTime, ResolvedEndDateTime: TDateTime
                       ): TDateTime;
                       
function WorkMinutes( DriftPlatsNr: Integer;
                      dsHoliday: TFDQuery;
                      StartDateTime, EndDateTime: TDateTime;
                      Out ResolvedStartDateTime, ResolvedEndDateTime: TDateTime): Double; overload;

function WorkMinutes( DriftPlatsNr: Integer;
                      dsHoliday: TFDQuery;
                      StartDateTime, EndDateTime: TDateTime): Double; overload;
implementation


//Changed by LM April 7 2009
function GetNextMDate( dsHoliday: TFDQuery;
                       const LastMDate : TDateTime;
                       const Intervall, DriftPlatsNr : Integer;
                       Out ResolvedStartDateTime, ResolvedEndDateTime: TDateTime
                       ): TDateTime;
var
  i: Integer;
  fTmp: Double;
  intervalMinsLeft: Double;
  dEnd1, dEnd2, dTmp: TDateTime;
begin
  Result := LastMDate;

  dEnd1 := LastMDate;

  intervalMinsLeft := Intervall * 60;
  dEnd2 := dEnd1 + intervalMinsLeft / 60 / 24;



  fTmp := WorkMinutes(DriftPlatsNr, dsHoliday, dEnd1, dEnd2, ResolvedStartDateTime, ResolvedEndDateTime);
  while intervalMinsLeft - fTmp > 0.5  do
  begin
    intervalMinsLeft := intervalMinsLeft - fTmp;
    dEnd1 := dEnd2;
    dEnd2 := dEnd1 + intervalMinsLeft / 60 / 24;
    fTmp := WorkMinutes(DriftPlatsNr, dsHoliday, dEnd1, dEnd2, dTmp{dResolvedStartDateTime}, ResolvedEndDateTime);
  end;

  Result := ResolvedEndDateTime; //dEnd2;

end;

{function GetNextMDate(dsHoliday: TFDQuery; const LastMDate :
TDateTime;const Intervall : Integer): TDateTime;
var
  i: Integer;
  fTmp: Double;
  intervalMinsLeft: Double;
  dEnd1, dEnd2: TDateTime;
begin
  Result := LastMDate;

  dEnd1 := LastMDate;

  intervalMinsLeft := Intervall * 60;
  dEnd2 := dEnd1 + intervalMinsLeft / 60 / 24;

  fTmp := WorkMinutes(dsHoliday, dEnd1, dEnd2);
  while intervalMinsLeft - fTmp > 0.5  do
  begin
    intervalMinsLeft := intervalMinsLeft - fTmp;
    dEnd1 := dEnd2;
    dEnd2 := dEnd1 + intervalMinsLeft / 60 / 24;
    fTmp := WorkMinutes(dsHoliday, dEnd1, dEnd2);
  end;

  Result := dEnd2;

end; }

procedure doProcessWorkBreaks(var a, b, c, d: TTime; var dbResult: Double; iExcursion: Double);
begin
    if iExcursion > 0 then
    begin
      c := c - iExcursion;
      d := d - iExcursion;
    end;

    if c <= 0 then
      c := c + 1;
    if d <= 0 then
      d := d + 1;

      { There're six type of breaks
      ---------------a---------------------------b------------
      1.-------------|---------c/////d-----------|------------
      2.---------c//////d------------------------|------------
      3.----c//////d-|---------------------------|------------
      4.-------------|------------------------c//////d--------
      5.-------------|---------------------------|--c//////d--
      6.----------c/////////////////////////////////d---------
      ---------------|---------------------------|------------
      }
      c := Min(b, Max(a, c));
      d := Max(a, Min(b, d));
      dbResult := dbResult + (b - a - (d - c)) * 24 * 60;

//      {1}if (a <= c) and (d <= b) then
//      begin
//        dbResult := dbResult + (c - a) * 24 * 60;
//        a := d;
//      end else
//      {2}if (a >= c) and (a<=d) and (d <= b) then
//      begin
//        a := d;
//      end else
////      {3}if (a > c) and (a > d) then
////      begin
////        a := b;
////      end else
//      {4}if (a <= c) and (b >= c) and (b <= d) then
//      begin
//        dbResult := dbResult + (c - a) * 24 * 60;
//        a := d;
//      end else
////      {5}if (b < c) then
////      begin
////        Result := Result + (b - a) * 24 * 60;
////        a := d;
////      end else
//      {6}if (a >= c) and (d >= b) then
//      begin
//        a := d;
//      end;

end;



function GetWorkDayWorkMinutes( ds: TFDQuery;
                                const dDate, StartDateTime, EndDateTime: TDateTime;
                                out ResolvedStartDateTime, ResolvedEndDateTime: TDateTime): Double;
var
  day: word;
  wY, wM, wD: word;

  dStartTime, dEndTime: TTime;
  a, b, aa, bb, c, d: TTime;

  iExcursion: Double;

  bExpExists, bSameStartDate, bSameEndDate : Boolean;
  expStart, expEnd: TTime;
  expLeft: Double;
begin
  Result := 0;

  dStartTime := 0;
  dEndTime := 0;
  bExpExists := False;
  bSameStartDate := False;
  bSameEndDate   := False;

  day := DateUtils.DayOfTheWeek( dDate );

  // Clear Filter;
  ds.Filtered := False;
  //Fixed Holiday
  if ds.Locate('Type;TypeValue', VarArrayOf([2, FormatDateTime('MM-DD', dDate)]), [])
       //Variable Holiday
    or ds.Locate('Type;TypeValue', VarArrayOf([3, FormatDateTime('YYYY-MM-DD', dDate)]), []) then
  begin
    Exit;
  end;

  //General weekday
  if ds.Locate('Type;TypeValue', VarArrayOf([1, day]), []) then
  begin
    dStartTime := DateUtils.TimeOf(ds.FieldByName('StartTime').AsDateTime);
    dEndTime := DateUtils.TimeOf(ds.FieldByName('EndTime').AsDateTime);
    if dStartTime = dEndTime then
      Exit;
  end
  else
    Exit;

  //2010-3-30 Added By Jonny Zheng
  //exceptions from the calendar rules
  if ds.Locate('Type;TypeValue', VarArrayOf([5, FormatDateTime('YYYY-MM-DD', dDate)]), []) then
  begin
    if ds.FieldByName('KindOfException').AsInteger = 1 then
    begin
      dStartTime := DateUtils.TimeOf(ds.FieldByName('StartTime').AsDateTime);
      dEndTime := DateUtils.TimeOf(ds.FieldByName('EndTime').AsDateTime);
    end else
    if ds.FieldByName('KindOfException').AsInteger = -1 then
    begin
      bExpExists := True;
      expStart := DateUtils.TimeOf(ds.FieldByName('StartTime').AsDateTime);
      expEnd   := DateUtils.TimeOf(ds.FieldByName('EndTime').AsDateTime);
    end;
  end;

  if dEndTime = 0 then
    dEndTime := 1;

  // if the end time is earlier than the start time of the workday then Exit;
  if EndDateTime <= dDate + dStartTime then
    Exit;

  iExcursion := 0;
  if dStartTime > dEndTime then
  begin
    iExcursion := dEndTime;
    dStartTime := dStartTime - iExcursion;
    dEndTime := 1;

    if DateUtils.SameDate(dDate, StartDateTime - iExcursion) then
    begin
      dStartTime := Max(dStartTime, DateUtils.TimeOf(StartDateTime - iExcursion));
      bSameStartDate := True;
    end;

    if DateUtils.SameDate(dDate, EndDateTime - iExcursion) then
    begin
      dEndTime := Min(dEndTime, DateUtils.TimeOf(ifThen(EndDateTime - iExcursion = 0, 1, EndDateTime - iExcursion)) );
      bSameEndDate   := True;
    end;

    if dEndTime = 0 then
      dEndTime := 1;

  end else
  begin

    if DateUtils.SameDate(dDate, StartDateTime) then
    begin
      dStartTime := Max(dStartTime, DateUtils.TimeOf(StartDateTime));
      bSameStartDate := True;
    end;
    if DateUtils.SameDate(dDate, EndDateTime) then
    begin
      dEndTime := Min(dEndTime, DateUtils.TimeOf(EndDateTime));
      bSameEndDate   := True;
    end;

  end;

  aa := dStartTime;
  bb := dEndTime;

  if aa >= bb then
    Exit;

  a := aa;
  b := bb;

//  MessageDlg('Need prepare date time and do sort', mtWarning, [mbOK], 0);
//  ds.IndexFieldNames := 'StartTime'; // The Index should not be used because of cross Night  Work Day

  expStart := Min(b, Max(a, expStart));
  expEnd   := Max(a, Min(b, expEnd));
  expLeft  := expEnd - expStart; // Exception Time needs to be removed;

  Result   := (b - a) * 24 * 60; // Total Schedual work hour;

  ds.Filter := 'Type=4';
  ds.Filtered := True;
  ds.First;
  try
      while not ds.Eof do
      begin
        if LeftStr(ds.FieldByName('TypeValue').AsString, 1) <> IntToStr(Day) then
        begin
          ds.Next;
          Continue;
        end;

        c := DateUtils.TimeOf(ds.FieldByName('StartTime').AsDateTime);
        d := DateUtils.TimeOf(ds.FieldByName('EndTime').AsDateTime);

        if iExcursion > 0 then
        begin
          c := c - iExcursion;
          d := d - iExcursion;
        end;

        if c <= 0 then
          c := c + 1;
        if d <= 0 then
          d := d + 1;

        if bSameStartDate then
          if Math.InRange(DateUtils.TimeOf(StartDateTime), c, d) then
            ResolvedStartDateTime := DateUtils.DateOf(StartDateTime) + d;
            
        if bSameEndDate then
          if Math.InRange(DateUtils.TimeOf(EndDateTime), c, d) then
            ResolvedEndDateTime   := DateUtils.DateOf(EndDateTime) + d;


          { There're six types of breaks
          ---------------a---------------------------b------------
          1.-------------|---------c/////d-----------|------------
          2.---------c//////d------------------------|------------
          3.----c//////d-|---------------------------|------------
          4.-------------|------------------------c//////d--------
          5.-------------|---------------------------|--c//////d--
          6.----------c/////////////////////////////////d---------
          ---------------|---------------------------|------------
          }
          c := Min(b, Max(a, c));
          d := Max(a, Min(b, d));

          Result := Result - (d - c) * 24 * 60;   // Work Breaks;

          if bExpExists then // Exception Exists?
          begin

            c := Min(expEnd, Max(expStart, c));
            d := Max(expStart, Min(expEnd, d));
            expLeft := expLeft - (d - c);    // Remove duplicate with breaks
        
          end;


        ds.Next;
      end;

      if bExpExists then
      begin
        Result := Result - expLeft * 24 * 60;  // Remove Exception Times;
      end;

    //  if a < b then
    //    Result := Result + (b - a) * 24 * 60;
  finally
    ds.Filter := '';
    ds.Filtered := False;
  end;
  
end;

// 2008-06-15 Comment By Jonny Zheng <<<<
//
//function WorkMinutes({DriftPlatsNr: Integer;   }dsHoliday: TFDQuery; StartDateTime, EndDateTime: TDateTime): Double;
//var
//  i, dStart, dEnd: Integer;
//  dDate: TDateTime;
//  ds: TFDQuery;
//begin
//  Result := 0;
//  dStart := Floor(StartDateTime);
//  dEnd := Floor(EndDateTime);
//
//  ds := TFDQuery.Create(nil);
//  try
//      ds.CloneCursor(dsHoliday, False);
//
//      for i := Math.Min(dStart, dEnd) to Math.Max( dStart, dEnd ) do
//      begin
//         dDate := i;
//         Result := Result + GetWorkDayWorkMinutes(ds, dDate, StartDateTime, EndDateTime);
//      end;
//
//  finally
//    ds.Free;
//  end;
//
//
//end;


function WorkMinutes( DriftPlatsNr: Integer;
                      dsHoliday: TFDQuery;
                      StartDateTime, EndDateTime: TDateTime): Double; overload;
var
  ResolvedStartDateTime, ResolvedEndDateTime: TDateTime;
begin
  ResolvedStartDateTime := 0;
  ResolvedEndDateTime   := 0;
  
  Result := WorkMinutes( DriftPlatsNr,
                         dsHoliday,
                         StartDateTime, EndDateTime,
                         ResolvedStartDateTime, ResolvedEndDateTime);
end;

function WorkMinutes( DriftPlatsNr: Integer;
                      dsHoliday: TFDQuery;
                      StartDateTime, EndDateTime: TDateTime;
                      Out ResolvedStartDateTime, ResolvedEndDateTime: TDateTime): Double; overload;
var
  i, dStart, dEnd: Integer;
  dDate: TDateTime;

  ds: TFDQuery;
begin
  Result := 0;

  if StartDateTime > EndDateTime then
    Exit;

  dStart := Floor(StartDateTime);
  dEnd := Floor(EndDateTime);

  ds := TFDQuery.Create(nil);
  try
      ds.CachedUpdates  := True ;
      ds.Connection := dmsConnector.FDConnection1 ;
      ds.SQL.Text := dsHoliday.SQL.Text ;
      ds.ParamByName('DriftPlatsNr').AsInteger  := DriftPlatsNr ;
      ds.Active := True ;


//      ds.CloneCursor(dsHoliday, False, True);
      if ds.RecordCount > 0 then
      Begin
      ResolvedStartDateTime := StartDateTime;
      ResolvedEndDateTime   := EndDateTime;

      for i := Math.Min(dStart, dEnd) to Math.Max( dStart, dEnd ) do
      begin
         dDate := i;
         Result := Result + GetWorkDayWorkMinutes(ds, dDate, StartDateTime, EndDateTime, ResolvedStartDateTime, ResolvedEndDateTime);
      end;
      End ;//if ds.RecordCount..

  finally
    ds.Free;
  end;


end;
// 2008-06-15 Comment By Jonny Zheng >>>>

end.
