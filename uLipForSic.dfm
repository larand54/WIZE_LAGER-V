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
    Left = 200
    Top = 144
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004C006900700046006F0072005300690063000100
      5600E4006C006A0020006C0061006700650072000100010001000D000A004200
      69007400420074006E00310001004F004B000100010001000D000A0042006900
      7400420074006E0032000100430061006E00630065006C000100010001000D00
      0A006700720064004C006900700046006F007200530069006300440042005400
      610062006C006500560069006500770031004C00490050004E006F0001004C00
      490050004E006F000100010001000D000A006700720064004C00690070004600
      6F007200530069006300440042005400610062006C0065005600690065007700
      31004C00410047004500520001004C0041004700450052000100010001000D00
      0A006700720064004C006900700046006F007200530069006300440042005400
      610062006C0065005600690065007700310043006F006C0075006D006E003100
      01004B004F0044000100010001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A00730074004400690073007000
      6C00610079004C006100620065006C0073005F0055006E00690063006F006400
      65000D000A007300740046006F006E00740073005F0055006E00690063006F00
      640065000D000A00540066004C006900700046006F0072005300690063000100
      4D0053002000530061006E00730020005300650072006900660001004D005300
      2000530061006E00730020005300650072006900660001005400610068006F00
      6D0061000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00
      540066004C006900700046006F00720053006900630001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00}
  end
end
