object fEntryField: TfEntryField
  Left = 303
  Top = 226
  ActiveControl = seAntalPaket
  Caption = 'Ange antal paket'
  ClientHeight = 218
  ClientWidth = 755
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
  object LTitle: TLabel
    Left = 168
    Top = 64
    Width = 85
    Height = 20
    Caption = 'Antal paket:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object bbok: TBitBtn
    Left = 232
    Top = 184
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
  end
  object bbcancel: TBitBtn
    Left = 320
    Top = 184
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
  object seAntalPaket: TcxSpinEdit
    Left = 264
    Top = 56
    ParentFont = False
    Properties.LargeIncrement = 5.000000000000000000
    Properties.MaxValue = 100.000000000000000000
    Properties.SpinButtons.ShowFastButtons = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Width = 129
  end
  object LExtraInfo: TcxLabel
    Left = 32
    Top = 16
  end
  object PanelLength: TPanel
    Left = 544
    Top = 0
    Width = 211
    Height = 218
    Align = alRight
    TabOrder = 4
    Visible = False
    object grdOtherLengths: TcxGrid
      Left = 1
      Top = 65
      Width = 209
      Height = 152
      Align = alClient
      TabOrder = 0
      object grdOtherLengthsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmInventory.ds_OtherLengths
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'PKT'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdOtherLengthsDBTableView1ALMM: TcxGridDBColumn
          DataBinding.FieldName = 'ALMM'
          SortIndex = 0
          SortOrder = soAscending
          Width = 94
        end
        object grdOtherLengthsDBTableView1AntalLngder: TcxGridDBColumn
          DataBinding.FieldName = 'AntalL'#228'ngder'
          Width = 114
        end
      end
      object grdOtherLengthsLevel1: TcxGridLevel
        GridView = grdOtherLengthsDBTableView1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 209
      Height = 64
      Align = alTop
      TabOrder = 1
      object cxLabel1: TcxLabel
        Left = 16
        Top = 24
        AutoSize = False
        Caption = 'V'#228'lj en l'#228'ngd, paket med flera l'#228'ngder kan ej v'#228'ljas'
        Properties.WordWrap = True
        Height = 30
        Width = 131
      end
    end
  end
  object siLangLinked_fEntryField: TsiLangLinked
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
    Left = 368
    Top = 112
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660045006E007400720079004600690065006C006400
      010041006E0067006500200061006E00740061006C002000700061006B006500
      7400010001000D000A004C005400690074006C006500010041006E0074006100
      6C002000700061006B00650074003A00010001000D000A00620062006F006B00
      01004F004B00010001000D000A0062006200630061006E00630065006C000100
      430061006E00630065006C00010001000D000A006700720064004F0074006800
      650072004C0065006E006700740068007300440042005400610062006C006500
      5600690065007700310041004C004D004D00010041004C004D004D0001000100
      0D000A006700720064004F0074006800650072004C0065006E00670074006800
      7300440042005400610062006C0065005600690065007700310041006E007400
      61006C004C006E006700640065007200010041006E00740061006C004C00E400
      6E006700640065007200010001000D000A00630078004C006100620065006C00
      310001005600E4006C006A00200065006E0020006C00E4006E00670064002C00
      2000700061006B006500740020006D0065006400200066006C00650072006100
      20006C00E4006E00670064006500720020006B0061006E00200065006A002000
      7600E4006C006A0061007300010001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A005400660045006E007400720079004600690065006C00
      640001004D0053002000530061006E0073002000530065007200690066000100
      01000D000A004C005400690074006C00650001004D0053002000530061006E00
      7300200053006500720069006600010001000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A005400660045006E0074007200790046006900
      65006C0064000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A004C005400690074006C006500010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00}
  end
end
