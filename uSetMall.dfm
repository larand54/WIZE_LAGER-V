object fSetMall: TfSetMall
  Left = 137
  Top = 0
  Caption = 'Inventeringsmall'
  ClientHeight = 664
  ClientWidth = 1188
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 599
    Width = 1188
    Height = 65
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 552
      Top = 6
      Width = 137
      Height = 51
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object grdSetMall: TcxGrid
    Left = 0
    Top = 62
    Width = 1188
    Height = 537
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object grdSetMallDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dmInvCtrl.ds_SetMall
      DataController.KeyFieldNames = 'LogicalInventoryPointNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.StyleSheet = GridTableViewStyleSheetWindowsClassiclarge
      object grdSetMallDBTableView1Owner: TcxGridDBColumn
        DataBinding.FieldName = 'Owner'
        Width = 242
      end
      object grdSetMallDBTableView1PIP: TcxGridDBColumn
        DataBinding.FieldName = 'PIP'
        Width = 265
      end
      object grdSetMallDBTableView1LIP: TcxGridDBColumn
        DataBinding.FieldName = 'LIP'
        Width = 207
      end
      object grdSetMallDBTableView1SetMall: TcxGridDBColumn
        DataBinding.FieldName = 'SetMall'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 114
      end
      object grdSetMallDBTableView1Act: TcxGridDBColumn
        DataBinding.FieldName = 'Act'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 72
      end
      object grdSetMallDBTableView1clientno: TcxGridDBColumn
        DataBinding.FieldName = 'clientno'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 48
      end
      object grdSetMallDBTableView1PIPNo: TcxGridDBColumn
        DataBinding.FieldName = 'PIPNo'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 48
      end
      object grdSetMallDBTableView1LogicalInventoryPointNo: TcxGridDBColumn
        DataBinding.FieldName = 'LogicalInventoryPointNo'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 88
      end
      object grdSetMallDBTableView1SetMallbu: TcxGridDBColumn
        DataBinding.FieldName = 'SetMallbu'
        Width = 90
      end
    end
    object grdSetMallLevel1: TcxGridLevel
      GridView = grdSetMallDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1188
    Height = 62
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alTop
    TabOrder = 2
    object cxButton2: TcxButton
      Left = 6
      Top = 6
      Width = 99
      Height = 50
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Action = acSetOnlyVerkActive
      TabOrder = 0
      WordWrap = True
    end
    object cxButton3: TcxButton
      Left = 109
      Top = 7
      Width = 99
      Height = 50
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Action = acSetAllExceptVerkActive
      TabOrder = 1
      WordWrap = True
    end
    object cxButton4: TcxButton
      Left = 213
      Top = 7
      Width = 98
      Height = 50
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Action = acSetAllActive
      TabOrder = 2
      WordWrap = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 336
    Top = 168
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14671839
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetWindowsClassiclarge: TcxGridTableViewStyleSheet
      Caption = 'Windows Classic (large)'
      Styles.Content = cxStyle1
      Styles.ContentEven = cxStyle2
      Styles.ContentOdd = cxStyle3
      Styles.Inactive = cxStyle8
      Styles.Selection = cxStyle11
      Styles.Footer = cxStyle4
      Styles.Group = cxStyle5
      Styles.GroupByBox = cxStyle6
      Styles.Header = cxStyle7
      Styles.Indicator = cxStyle9
      Styles.Preview = cxStyle10
      BuiltIn = True
    end
  end
  object siLangLinked_fSetMall: TsiLangLinked
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
    Left = 592
    Top = 336
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005300650074004D0061006C006C00010049006E00
      760065006E0074006500720069006E00670073006D0061006C006C0001000100
      01000D000A006300780042007500740074006F006E00310001004F004B000100
      010001000D000A006700720064005300650074004D0061006C006C0044004200
      5400610062006C006500560069006500770031004F0077006E00650072000100
      C40067006100720065000100010001000D000A00670072006400530065007400
      4D0061006C006C00440042005400610062006C00650056006900650077003100
      50004900500001004C00610067006500720073007400E4006C006C0065000100
      010001000D000A006700720064005300650074004D0061006C006C0044004200
      5400610062006C006500560069006500770031004C004900500001004C006100
      670065007200670072007500700070000100010001000D000A00670072006400
      5300650074004D0061006C006C00440042005400610062006C00650056006900
      6500770031005300650074004D0061006C006C00010041006E007600E4006E00
      6400200073006F006D0020006D0061006C006C000100010001000D000A006700
      720064005300650074004D0061006C006C00440042005400610062006C006500
      56006900650077003100410063007400010041006B0074006900760001000100
      01000D000A006700720064005300650074004D0061006C006C00440042005400
      610062006C0065005600690065007700310063006C00690065006E0074006E00
      6F00010063006C00690065006E0074006E006F000100010001000D000A006700
      720064005300650074004D0061006C006C00440042005400610062006C006500
      560069006500770031005000490050004E006F0001005000490050004E006F00
      0100010001000D000A006700720064005300650074004D0061006C006C004400
      42005400610062006C006500560069006500770031004C006F00670069006300
      61006C0049006E00760065006E0074006F007200790050006F0069006E007400
      4E006F0001004C006F0067006900630061006C0049006E00760065006E007400
      6F007200790050006F0069006E0074004E006F000100010001000D000A004700
      7200690064005400610062006C00650056006900650077005300740079006C00
      650053006800650065007400570069006E0064006F007700730043006C006100
      73007300690063006C0061007200670065000100570069006E0064006F007700
      7300200043006C0061007300730069006300200028006C006100720067006500
      29000100010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      7300740046006F006E00740073005F0055006E00690063006F00640065000D00
      0A00540066005300650074004D0061006C006C0001005400610068006F006D00
      610001005400610068006F006D00610001005400610068006F006D0061000D00
      0A006300780042007500740074006F006E00310001005400610068006F006D00
      6100010001005400610068006F006D0061000D000A0063007800530074007900
      6C006500310001004D006900630072006F0073006F0066007400200053006100
      6E007300200053006500720069006600010001005400610068006F006D006100
      0D000A00630078005300740079006C006500320001005400610068006F006D00
      6100010001005400610068006F006D0061000D000A0063007800530074007900
      6C006500330001005400610068006F006D006100010001005400610068006F00
      6D0061000D000A00630078005300740079006C006500340001004D0069006300
      72006F0073006F00660074002000530061006E00730020005300650072006900
      6600010001005400610068006F006D0061000D000A0063007800530074007900
      6C006500350001004D006900630072006F0073006F0066007400200053006100
      6E007300200053006500720069006600010001005400610068006F006D006100
      0D000A00630078005300740079006C006500360001004D006900630072006F00
      73006F00660074002000530061006E0073002000530065007200690066000100
      01005400610068006F006D0061000D000A00630078005300740079006C006500
      370001004D006900630072006F0073006F00660074002000530061006E007300
      200053006500720069006600010001005400610068006F006D0061000D000A00
      630078005300740079006C006500380001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D0061000D000A00630078005300740079006C00650039000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      6500720069006600010001005400610068006F006D0061000D000A0063007800
      5300740079006C0065003100300001004D006900630072006F0073006F006600
      74002000530061006E0073002000530065007200690066000100010054006100
      68006F006D0061000D000A00630078005300740079006C006500310031000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      6500720069006600010001005400610068006F006D0061000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      740043006F006C006C0065006300740069006F006E0073005F0055006E006900
      63006F00640065000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A00540066005300650074004D00
      61006C006C000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A006300780042007500740074006F006E00310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      630078005300740079006C00650031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00630078005300740079006C00
      650032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00630078005300740079006C00650033000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0063007800
      5300740079006C00650034000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00630078005300740079006C0065003500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00630078005300740079006C0065003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006300780053007400
      79006C00650037000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00630078005300740079006C006500380001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      630078005300740079006C00650039000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00630078005300740079006C00
      6500310030000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00630078005300740079006C0065003100310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00}
  end
  object ActionList1: TActionList
    Left = 600
    Top = 224
    object acSetOnlyVerkActive: TAction
      Caption = 'S'#228'tt bara verk aktiva'
      OnExecute = acSetOnlyVerkActiveExecute
    end
    object acSetAllExceptVerkActive: TAction
      Caption = 'S'#228'tt alla f'#246'rutom verk aktiva'
      OnExecute = acSetAllExceptVerkActiveExecute
    end
    object acSetAllActive: TAction
      Caption = 'S'#228'tt alla aktiva'
      OnExecute = acSetAllActiveExecute
    end
  end
end
