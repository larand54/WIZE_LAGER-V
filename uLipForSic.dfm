object fLipForSic: TfLipForSic
  Left = 229
  Top = 107
  Caption = 'V'#228'lj lager'
  ClientHeight = 273
  ClientWidth = 410
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
  object Panel1: TPanel
    Left = 0
    Top = 232
    Width = 410
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 208
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 410
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object grdLipForSic: TcxGrid
    Left = 0
    Top = 41
    Width = 410
    Height = 191
    Align = alClient
    TabOrder = 2
    object grdLipForSicDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmInvCtrl.ds_LIP
      DataController.KeyFieldNames = 'LIPNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdLipForSicDBTableView1LIPNo: TcxGridDBColumn
        DataBinding.FieldName = 'LIPNo'
        Visible = False
        Width = 38
      end
      object grdLipForSicDBTableView1LAGER: TcxGridDBColumn
        DataBinding.FieldName = 'LAGER'
        SortIndex = 0
        SortOrder = soAscending
        Width = 297
      end
      object grdLipForSicDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'KOD'
        Width = 81
      end
    end
    object grdLipForSicLevel1: TcxGridLevel
      GridView = grdLipForSicDBTableView1
    end
  end
  object siLangLinked_fLipForSic: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Base'
      'Swedish')
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
    Left = 200
    Top = 144
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004C006900700046006F0072005300690063000100
      5600E4006C006A0020006C006100670065007200010001000D000A0042006900
      7400420074006E00310001004F004B00010001000D000A004200690074004200
      74006E0032000100430061006E00630065006C00010001000D000A0067007200
      64004C006900700046006F007200530069006300440042005400610062006C00
      6500560069006500770031004C00490050004E006F0001004C00490050004E00
      6F00010001000D000A006700720064004C006900700046006F00720053006900
      6300440042005400610062006C006500560069006500770031004C0041004700
      4500520001004C004100470045005200010001000D000A006700720064004C00
      6900700046006F007200530069006300440042005400610062006C0065005600
      690065007700310043006F006C0075006D006E00310001004B004F0044000100
      01000D000A0073007400480069006E00740073005F0055006E00690063006F00
      640065000D000A007300740044006900730070006C00610079004C0061006200
      65006C0073005F0055006E00690063006F00640065000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0054006600
      4C006900700046006F00720053006900630001004D0053002000530061006E00
      7300200053006500720069006600010001000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A00540066004C006900700046006F0072005300
      690063000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00}
  end
end
