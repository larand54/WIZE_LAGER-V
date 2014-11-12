unit VidaCombo;

interface

uses
  Classes,
  DB,
  StdCtrls,
  Windows;

Type

  TccContent = (
    ccStrings,  // Drop-down list shows full strings, eg:  SomeName=SomeValue
    ccNames,    // Drop-down list shows names only,   eg:  SomeName
    ccValues    // Drop-down list shows values only,  eg:  SomeValue
    );




  //
  // A standard ComboBox has an Items property of type TStrings.
  // TStrings can contain strings of the form Name=Value but the
  // standard combo has no way of dealing with these.
  // This combo handles Name=Value strings, providing the option
  // of displaying and retrieving just names or just values in
  // addition to the standard strings.
  //
  // A standard combo allows the current selection to be found
  // or set using the ItemIndex (the position in the list).
  // This combo also allows the current position to be set using
  // the name or value of the Name=Value string.
  //
  // This combo is intended for cases where the combo holds a set
  // of coded values. The name part of the string holds the code's
  // meaning, whilst the value part of the string holds the code.
  //
  //
  // TERMINOLOGY
  // ===========
  //
  // ITEMS        Exactly the same as for a standard combo
  //
  // CODES        The Value part of the Name=Value string,
  //              expressed as an integer.
  //
  // VALUES       The Value part of the Name=Value string,
  //              in the form of a string.
  //
  // MEANINGS     The Name part of the Name=Value string.
  //
  //
  // PROPERTIES
  // ==========
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  // CAVEATS
  // =======
  //
  // The DroppedAutoSize property is not working yet. Do not use.
  //
  //
  //
  //
  //
  TCodeCombo = class(TComboBox)

    private

      FContent       : TccContent;
      FDropDownWidth : Integer;
      FDroppedAutoSize: Boolean;

      function  getValues(const Name: string): string;
      procedure setValues(const Name, Value: string);

      function  getMeanings(const Index: Integer): string;
      procedure setMeanings(const Index: Integer; const Value: string);

      function  getItemValue: string;
      procedure setItemValue(const Value: string);

      function  getItemCode: Integer;
      procedure setItemCode(const Value: Integer);

      function  getCodes(const Name: string): Integer;
      procedure setCodes(const Name: string; const Value: Integer);

      function  getItemMeaning: string;
      procedure setItemMeaning(const Value: string);
    procedure setDropDownWidth(const Value: Integer);

    protected

      procedure DrawItem(Index: Integer; Rect: TRect; State: TOwnerDrawState); override;
      procedure DropDown; override;

    public

      constructor Create(AOwner : TComponent); override;

      procedure AddValue( Name : String; Value : Integer); overload;
      procedure AddValue( Name : String; Value : String ); overload;

      property Codes    [const Name  : string ] : Integer  read getCodes         write setCodes;
      property DropDownWidth                    : Integer  read FDropDownWidth   write setDropDownWidth;
      property DroppedAutoSize                  : Boolean  read FDroppedAutoSize write FDroppedAutoSize;
      property ItemMeaning                      : string   read getItemMeaning   write setItemMeaning;
      property ItemValue                        : string   read getItemValue     write setItemValue;
      property ItemCode                         : Integer  read getItemCode      write setItemCode;
      property Meanings [const Index : Integer] : string   read getMeanings      write setMeanings;
      property Values   [const Name  : string ] : string   read getValues        write setValues;

    published

      // Do we show names, values, or full strings?
      property Content                             : TccContent read FContent      write FContent;

      // Increase visibility of some inherited stuff
//      property OnClick;
      property Text;

    end;



  TDBCodeCombo = class(TCodeCombo)
    private

      FCodeField    : String;
      FMeaningField : String;
      FValueField   : String;
      FDataSource   : TDataSource;

    procedure setCodeField(const Value: String);
    procedure setValueField(const Value: String);
    protected

    public
      procedure LoadFromDataSource;
    published

      property DataSource   : TDataSource read FDataSource   write FDataSource;
      property CodeField    : String      read FCodeField    write setCodeField;
      property MeaningField : String      read FMeaningField write FMeaningField;
      property ValueField   : String      read FValueField   write setValueField;

    end;


procedure Register;

implementation

uses
  Controls,
  Graphics,
  Messages,
  SysUtils;

resourcestring

  rcNameEqualsValue = '%s=%s';
  rcNameEqualsCode  = '%s=%d';


procedure Register;
begin
  RegisterComponents('Vida', [TCodeCombo, TDBCodeCombo]);
end;



{ TCodeCombo }

procedure TCodeCombo.AddValue(Name: String; Value: Integer);
begin
  Items.Add(Format('%s=%d',[Name,Value]));
end;

procedure TCodeCombo.AddValue(Name, Value: String);
begin
  Items.Add(Format('%s=%s',[Name,Value]));
end;

constructor TCodeCombo.Create(AOwner : TComponent);
begin
  inherited;
  Style := csOwnerDrawFixed;
  FContent := ccNames;
  FDropDownWidth := Width;
  FDroppedAutoSize := FALSE;
end;

procedure TCodeCombo.DrawItem(Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  DrawAtX   : Integer;
  DrawAtY   : Integer;
  ItemText  : String;
begin
  TControlCanvas(Canvas).UpdateTextFlags;
  case Content of

    ccStrings : begin
                    inherited;
                    ItemText := Items[Index];
                  end;

    ccNames   : begin
                  Canvas.FillRect(Rect);
                  DrawAtX := Rect.Left+2;
                  DrawAtY := rect.Top;
                  ItemText := Meanings[Index];
                  Canvas.TextRect(Rect,DrawAtX,DrawAtY,ItemText);
                  end;

    ccValues  : begin
                  Canvas.FillRect(Rect);
                  DrawAtX := Rect.Left+2;
                  DrawAtY := rect.Top;
                  ItemText := Values[Meanings[Index]];
                  Canvas.TextRect(Rect,DrawAtX,DrawAtY,ItemText);
                  end;

    end;
end;

procedure TCodeCombo.DropDown;
const
  DROPPED_MARGIN = 30;
var
  iItem : Integer;
  ItemText : String;
  ItemWidth : Integer;
  MaxWidthSoFar : Integer;
  tmpCanvas : TControlCanvas;
begin
  if DroppedAutoSize then begin
    tmpCanvas := TControlCanvas.Create;
    Try
      tmpCanvas.Font.Assign(Self.Font);
      MaxWidthSoFar := 0;
      case Content of

        ccStrings : begin
                      for iItem := 0 to Items.Count - 1 do begin
                        ItemText := Items[iItem];
                        ItemWidth := tmpCanvas.TextWidth(ItemText);
                        if MaxWidthSoFar < ItemWidth then
                          MaxWidthSoFar := ItemWidth;
                        end;
                      end;

        ccNames   : begin
                      for iItem := 0 to Items.Count-1 do begin
                        ItemText := Meanings[iItem];
                        ItemWidth := tmpCanvas.TextWidth(ItemText);
                        if MaxWidthSoFar < ItemWidth then
                          MaxWidthSoFar := ItemWidth;
                        end;
                      end;

        ccValues  : begin
                      for iItem := 0 to Items.Count-1 do begin
                        ItemText := Values[Meanings[iItem]];
                        ItemWidth := tmpCanvas.TextWidth(ItemText);
                        if MaxWidthSoFar < ItemWidth then
                          MaxWidthSoFar := ItemWidth;
                        end;
                      end;

        end;
      if MaxWidthSoFar + DROPPED_MARGIN > DropDownWidth then
        DropDownWidth := MaxWidthSoFar + DROPPED_MARGIN;
    finally
      tmpCanvas.Free;
      end;
    end;
  inherited;
end;

function TCodeCombo.getCodes(const Name: string): Integer;
begin
  try
    Result := StrToInt(Values[Name]);
  except
    on EConvertError do
      Result := 0;
    end;
end;

function TCodeCombo.getItemCode: Integer;
begin
  try
    Result := StrToInt(ItemValue);
  except
    on EConvertError do
      Result := -1;
    end;
end;

function TCodeCombo.getItemMeaning: string;
begin
  Result := Meanings[ItemIndex];
end;

function TCodeCombo.getItemValue: string;
begin
  Result := Values[Meanings[ItemIndex]];
end;

function TCodeCombo.getMeanings(const Index: Integer): string;
begin
  Result := Items.Names[Index];
end;

function TCodeCombo.getValues(const Name: string): string;
begin
  Result := Items.Values[Name];
end;

procedure TCodeCombo.setCodes(const Name: string; const Value: Integer);
begin
  Values[name] := IntToStr(Value);
end;

procedure TCodeCombo.setDropDownWidth(const Value: Integer);
begin
  if FDropDownWidth <> Value then begin
    FDropDownWidth := Value;
    perform(CB_SETDROPPEDWIDTH, Value, 0);
    end;
end;

procedure TCodeCombo.setItemCode(const Value: Integer);
begin
  ItemValue := IntToStr(Value);
end;

procedure TCodeCombo.setItemMeaning(const Value: string);
begin
  ItemIndex :=Items.IndexOfName(Value);
end;

procedure TCodeCombo.setItemValue(const Value: string);
var
  iVal : Integer;
begin
  if Items.Count = 0 then
    Exit;
  iVal := 0;
  while (Values[Meanings[iVal]] <> Value) and (iVal < Items.Count) do
    inc(iVal);
  if iVal < Items.Count then
    ItemIndex := iVal;
end;

procedure TCodeCombo.setMeanings(const Index: Integer; const Value: string);
begin
  Items[Index] := Format('%s=%s',[Meanings[Index],Value]);
end;

procedure TCodeCombo.setValues(const Name, Value: string);
begin
  Items.Values[Name] := Value;
end;

{ TDBCodeCombo }

procedure TDBCodeCombo.LoadFromDataSource;
begin
  FDataSource.DataSet.Open;
  Items.Clear;
  FDataSource.DataSet.First;
  While not FDataSource.DataSet.EOF do begin
    if FValueField <> '' then
      Items.Add(Format(
        rcNameEqualsValue,
        [ FDataSource.DataSet.FieldByName(FMeaningField).AsString,
          FDataSource.DataSet.FieldByName(FValueField).AsString
          ]
        ))
    else
      Items.Add(Format(
        rcNameEqualsCode,
        [ FDataSource.DataSet.FieldByName(FMeaningField).AsString,
          FDataSource.DataSet.FieldByName(FCodeField   ).AsInteger
          ]
        ));
    FDataSource.DataSet.Next;
    end;
end;

procedure TDBCodeCombo.setCodeField(const Value: String);
begin
  if FCodeField <> Value then begin
    FCodeField := Value;
    FValueField := '';
    end;
end;

procedure TDBCodeCombo.setValueField(const Value: String);
begin
  if FValueField <> Value then begin
    FValueField := Value;
    FCodeField := '';
    end;
end;

end.
