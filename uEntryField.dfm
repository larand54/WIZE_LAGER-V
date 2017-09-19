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
    Top = 176
    Width = 75
    Height = 33
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
  end
  object bbcancel: TBitBtn
    Left = 320
    Top = 176
    Width = 75
    Height = 33
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
    UseDefaultLanguage = True
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
    Language = 'Origin'
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
      'ListField'
      'AutoIncFields'
      'CaseInsFields'
      'CatalogName'
      'Categories'
      'ClassName'
      'CommandText'
      'ConnectionName'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'DisplayChecked'
      'DisplayUnchecked'
      'EditFormat'
      'Expression'
      'FetchRowSQL'
      'Fields'
      'Filter'
      'FmtDisplayDate'
      'FmtDisplayDateTime'
      'FmtDisplayNumeric'
      'FmtDisplayTime'
      'FmtEditNumeric'
      'GeneratorName'
      'GraphicClassName'
      'HotZoneClassName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'KeyFieldNames'
      'ListFieldNames'
      'LockSQL'
      'Origin'
      'PackageName'
      'Params'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'PopupMenuLinks'
      'PropertiesClassName'
      'RegistryPath'
      'SchemaName'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'DataSetName'
      'IniFile'
      'ProviderName'
      'ScriptLanguage'
      'ScriptText')
    Left = 368
    Top = 112
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660045006E007400720079004600690065006C006400
      010041006E0067006500200061006E00740061006C002000700061006B006500
      74000100010001000D000A004C005400690074006C006500010041006E007400
      61006C002000700061006B00650074003A000100010001000D000A0062006200
      6F006B0001004F004B000100010001000D000A0062006200630061006E006300
      65006C000100430061006E00630065006C000100010001000D000A0067007200
      64004F0074006800650072004C0065006E006700740068007300440042005400
      610062006C0065005600690065007700310041004C004D004D00010041004C00
      4D004D000100010001000D000A006700720064004F0074006800650072004C00
      65006E006700740068007300440042005400610062006C006500560069006500
      7700310041006E00740061006C004C006E006700640065007200010041006E00
      740061006C004C00E4006E0067006400650072000100010001000D000A006300
      78004C006100620065006C00310001005600E4006C006A00200065006E002000
      6C00E4006E00670064002C002000700061006B006500740020006D0065006400
      200066006C0065007200610020006C00E4006E00670064006500720020006B00
      61006E00200065006A0020007600E4006C006A00610073000100010001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660045006E00
      7400720079004600690065006C00640001004D0053002000530061006E007300
      20005300650072006900660001004D0053002000530061006E00730020005300
      650072006900660001005400610068006F006D0061000D000A004C0054006900
      74006C00650001004D0053002000530061006E00730020005300650072006900
      6600010001005400610068006F006D0061000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A005400660045006E0074007200790046006900
      65006C0064000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A004C005400690074006C00650001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00}
  end
end
