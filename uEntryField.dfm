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
      ExplicitHeight = 163
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
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Swedish'
      'English')
    Language = 'Swedish'
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
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00}
  end
end
