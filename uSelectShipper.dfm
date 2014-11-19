object fSelectShipper: TfSelectShipper
  Left = 362
  Top = 175
  ActiveControl = lcShipper
  Caption = 'V'#228'lj fraktf'#246'rare'
  ClientHeight = 116
  ClientWidth = 396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 51
    Height = 13
    Caption = 'Fraktf'#246'rare'
  end
  object lcShipper: TcxDBLookupComboBox
    Left = 96
    Top = 24
    DataBinding.DataField = 'ClientNo'
    DataBinding.DataSource = dsShipper
    Properties.DropDownListStyle = lsFixedList
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'ClientNo'
    Properties.ListColumns = <
      item
        FieldName = 'ClientName'
      end>
    Properties.ListOptions.ShowHeader = False
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 0
    Width = 233
  end
  object Panel1: TPanel
    Left = 0
    Top = 66
    Width = 396
    Height = 50
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 114
      Top = 13
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 202
      Top = 13
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object mtShipper: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 48
    Top = 32
    object mtShipperClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object mtShipperShipper: TStringField
      FieldKind = fkLookup
      FieldName = 'Shipper'
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
  end
  object dsShipper: TDataSource
    DataSet = mtShipper
    Left = 48
    Top = 64
  end
  object siLangLinked1: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Swedish'
      'English')
    Language = 'English'
    CommonContainer = dmLanguage.siLang1
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField')
    Left = 232
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074005300680069007000
      70006500720001005600E4006C006A0020006600720061006B0074006600F600
      7200610072006500010001000D000A004C006100620065006C00310001004600
      720061006B0074006600F6007200610072006500010001000D000A0042006900
      7400420074006E00310001004F004B00010001000D000A004200690074004200
      74006E0032000100430061006E00630065006C00010001000D000A0073007400
      480069006E00740073005F0055006E00690063006F00640065000D000A007300
      740044006900730070006C00610079004C006100620065006C0073005F005500
      6E00690063006F00640065000D000A006D007400530068006900700070006500
      720043006C00690065006E0074004E006F00010043006C00690065006E007400
      4E006F00010001000D000A006D00740053006800690070007000650072005300
      6800690070007000650072000100530068006900700070006500720001000100
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A0054006600530065006C0065006300740053006800690070007000
      6500720001004D0053002000530061006E007300200053006500720069006600
      010001000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A006C00630053006800690070007000650072002E005000
      72006F0070006500720074006900650073002E004B0065007900460069006500
      6C0064004E0061006D0065007300010043006C00690065006E0074004E006F00
      010001000D000A006C00630053006800690070007000650072002E0050007200
      6F0070006500720074006900650073002E004C00690073007400460069006500
      6C0064004E0061006D0065007300010043006C00690065006E0074004E006100
      6D006500010001000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A006C0063005300
      6800690070007000650072002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E00010043006C00690065006E0074004E00
      61006D006500010001000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A0054006600530065006C00
      6500630074005300680069007000700065007200010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A00}
  end
end
