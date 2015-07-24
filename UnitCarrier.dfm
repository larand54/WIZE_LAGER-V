object FormCarrier: TFormCarrier
  Left = 302
  Top = 100
  ActiveControl = grdCarrier
  Caption = 'Fartyg'
  ClientHeight = 502
  ClientWidth = 341
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
    Top = 447
    Width = 341
    Height = 55
    Align = alBottom
    TabOrder = 0
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 341
    Height = 46
    Align = dalTop
    BarManager = dxBarManager1
  end
  object grdCarrier: TcxGrid
    Left = 0
    Top = 46
    Width = 341
    Height = 401
    Align = alClient
    TabOrder = 6
    object grdCarrierDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dm_Booking.dsCarrier
      DataController.KeyFieldNames = 'CarrierNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdCarrierDBTableView1CarrierName: TcxGridDBColumn
        Caption = 'FARTYG'
        DataBinding.FieldName = 'CarrierName'
      end
    end
    object grdCarrierLevel1: TcxGridLevel
      GridView = grdCarrierDBTableView1
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 288
    Top = 88
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 341
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'St'#228'ng'
      Category = 0
      Hint = 'St'#228'ng'
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Spara'
      Category = 0
      Hint = 'Spara'
      Visible = ivAlways
      OnClick = dxBarLargeButton2Click
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'L'#228'gg till'
      Category = 0
      Hint = 'L'#228'gg till'
      Visible = ivAlways
      OnClick = dxBarLargeButton3Click
    end
  end
  object siLangLinked_FormCarrier: TsiLangLinked
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
    Left = 168
    Top = 256
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540046006F0072006D004300610072007200690065007200
      01004600610072007400790067000100010001000D000A006700720064004300
      610072007200690065007200440042005400610062006C006500560069006500
      7700310043006100720072006900650072004E0061006D006500010046004100
      52005400590047000100010001000D000A00640078004200610072004D006100
      6E00610067006500720031004200610072003100010043007500730074006F00
      6D00200031000100010001000D000A00640078004200610072004C0061007200
      6700650042007500740074006F006E003100010053007400E4006E0067000100
      010001000D000A00640078004200610072004C00610072006700650042007500
      740074006F006E0032000100530070006100720061000100010001000D000A00
      640078004200610072004C00610072006700650042007500740074006F006E00
      330001004C00E400670067002000740069006C006C000100010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A00640078004200610072004C00610072006700650042007500740074006F00
      6E003100010053007400E4006E006700010001000D000A006400780042006100
      72004C00610072006700650042007500740074006F006E003200010053007000
      610072006100010001000D000A00640078004200610072004C00610072006700
      650042007500740074006F006E00330001004C00E40067006700200074006900
      6C006C00010001000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      540046006F0072006D00430061007200720069006500720001004D0053002000
      530061006E00730020005300650072006900660001004D005300200053006100
      6E00730020005300650072006900660001005400610068006F006D0061000D00
      0A00640078004200610072004D0061006E006100670065007200310001005300
      650067006F006500200055004900010001005400610068006F006D0061000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      7200310001005300650067006F00650020005500490001000100540061006800
      6F006D0061000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00640078004200610072004D0061006E0061006700
      65007200310042006100720031002E004F006C0064004E0061006D0065000100
      43007500730074006F006D0020003100010001000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A00540046006F0072006D004300610072007200
      6900650072000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00640078004200610072004D0061006E00610067006500
      720031000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00640078004200610072004D0061006E006100670065007200
      310042006100720031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00}
  end
end
