object fPackageCostPerPkg: TfPackageCostPerPkg
  Left = 0
  Top = 0
  Caption = 'Paketkostnader'
  ClientHeight = 767
  ClientWidth = 1064
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 695
    Width = 1064
    Height = 72
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 464
      Top = 6
      Width = 129
      Height = 59
      Caption = 'St'#228'ng'
      ModalResult = 8
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1064
    Height = 25
    Align = alTop
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 25
    Width = 1064
    Height = 426
    Align = alClient
    TabOrder = 2
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 1062
      Height = 24
      Align = alTop
      TabOrder = 0
    end
    object grdPackageCost: TcxGrid
      Left = 1
      Top = 25
      Width = 1062
      Height = 400
      Align = alClient
      TabOrder = 1
      object grdPackageCostDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = dmInvCtrl.ds_LIPSUM
        DataController.KeyFieldNames = 'PackageNo;Suppliercode'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'Cost'
            Column = grdPackageCostDBTableView1Cost
          end
          item
            Kind = skSum
            FieldName = 'Volume'
            Column = grdPackageCostDBTableView1Volume
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.StyleSheet = GridTableViewStyleSheetWindowsStandardlarge
        object grdPackageCostDBTableView1LIPNo: TcxGridDBColumn
          DataBinding.FieldName = 'LIPNo'
          Visible = False
        end
        object grdPackageCostDBTableView1PackageNo: TcxGridDBColumn
          Caption = 'Paketnr'
          DataBinding.FieldName = 'PackageNo'
        end
        object grdPackageCostDBTableView1Suppliercode: TcxGridDBColumn
          Caption = 'Prefix'
          DataBinding.FieldName = 'Suppliercode'
        end
        object grdPackageCostDBTableView1Cost: TcxGridDBColumn
          Caption = 'Kostnad'
          DataBinding.FieldName = 'Cost'
        end
        object grdPackageCostDBTableView1Volume: TcxGridDBColumn
          Caption = 'Volym'
          DataBinding.FieldName = 'Volume'
        end
        object grdPackageCostDBTableView1avgprice: TcxGridDBColumn
          Caption = 'Medelpris'
          DataBinding.FieldName = 'avgprice'
        end
      end
      object grdPackageCostLevel1: TcxGridLevel
        GridView = grdPackageCostDBTableView1
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 459
    Width = 1064
    Height = 236
    Align = alBottom
    TabOrder = 3
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 1062
      Height = 24
      Align = alTop
      TabOrder = 0
    end
    object grdPackageCostDetails: TcxGrid
      Left = 1
      Top = 25
      Width = 1062
      Height = 210
      Align = alClient
      TabOrder = 1
      object grdPackageCostDetailsDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = dmInvCtrl.ds_PkgCost
        DataController.KeyFieldNames = 'PackageNo;SupplierCode;CostType'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.StyleSheet = GridTableViewStyleSheetWindowsStandardlarge
        object grdPackageCostDetailsDBTableView1PackageNo: TcxGridDBColumn
          Caption = 'Paketnr'
          DataBinding.FieldName = 'PackageNo'
          Width = 92
        end
        object grdPackageCostDetailsDBTableView1SupplierCode: TcxGridDBColumn
          Caption = 'Prefix'
          DataBinding.FieldName = 'SupplierCode'
          Width = 90
        end
        object grdPackageCostDetailsDBTableView1LIPNo: TcxGridDBColumn
          DataBinding.FieldName = 'LIPNo'
          Visible = False
          Width = 86
        end
        object grdPackageCostDetailsDBTableView1LoadOrderNo: TcxGridDBColumn
          Caption = 'LOnr'
          DataBinding.FieldName = 'LoadOrderNo'
          Width = 86
        end
        object grdPackageCostDetailsDBTableView1CostType: TcxGridDBColumn
          DataBinding.FieldName = 'CostType'
          Visible = False
          Width = 86
        end
        object grdPackageCostDetailsDBTableView1ArticleNo: TcxGridDBColumn
          DataBinding.FieldName = 'ArticleNo'
          Visible = False
          Width = 86
        end
        object grdPackageCostDetailsDBTableView1DateCreated: TcxGridDBColumn
          DataBinding.FieldName = 'DateCreated'
          Visible = False
          Width = 284
        end
        object grdPackageCostDetailsDBTableView1CostPerAM3: TcxGridDBColumn
          Caption = 'Kostnad/AM3'
          DataBinding.FieldName = 'CostPerAM3'
          Width = 86
        end
        object grdPackageCostDetailsDBTableView1KOSTTYP: TcxGridDBColumn
          Caption = 'Kostnadsslag'
          DataBinding.FieldName = 'KOSTTYP'
          Width = 152
        end
        object grdPackageCostDetailsDBTableView1Exclude: TcxGridDBColumn
          Caption = 'Exkluderat'
          DataBinding.FieldName = 'Exclude'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
        end
      end
      object grdPackageCostDetailsLevel1: TcxGridLevel
        GridView = grdPackageCostDetailsDBTableView1
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 451
    Width = 1064
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salBottom
    Control = Panel4
    Color = clMaroon
    ParentColor = False
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 528
    Top = 184
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clSilver
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4325376
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13160660
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 13160660
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 6956042
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetRedWhiteandBlueVGA: TcxGridTableViewStyleSheet
      Caption = 'Red, White, and Blue (VGA)'
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
    object GridTableViewStyleSheetWindowsStandardlarge: TcxGridTableViewStyleSheet
      Caption = 'Windows Standard (large)'
      Styles.Content = cxStyle12
      Styles.ContentEven = cxStyle13
      Styles.ContentOdd = cxStyle14
      Styles.Inactive = cxStyle19
      Styles.Selection = cxStyle22
      Styles.Footer = cxStyle15
      Styles.Group = cxStyle16
      Styles.GroupByBox = cxStyle17
      Styles.Header = cxStyle18
      Styles.Indicator = cxStyle20
      Styles.Preview = cxStyle21
      BuiltIn = True
    end
  end
  object siLangLinked_fPackageCostPerPkg: TsiLangLinked
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
    Left = 528
    Top = 392
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005000610063006B0061006700650043006F007300
      740050006500720050006B0067000100500061006B00650074006B006F007300
      74006E006100640065007200010001000D000A00630078004200750074007400
      6F006E003100010053007400E4006E006700010001000D000A00670072006400
      5000610063006B0061006700650043006F007300740044004200540061006200
      6C006500560069006500770031004C00490050004E006F0001004C0049005000
      4E006F00010001000D000A006700720064005000610063006B00610067006500
      43006F0073007400440042005400610062006C00650056006900650077003100
      5000610063006B006100670065004E006F000100500061006B00650074006E00
      7200010001000D000A006700720064005000610063006B006100670065004300
      6F0073007400440042005400610062006C006500560069006500770031005300
      7500700070006C0069006500720063006F006400650001005000720065006600
      69007800010001000D000A006700720064005000610063006B00610067006500
      43006F0073007400440042005400610062006C00650056006900650077003100
      43006F007300740001004B006F00730074006E0061006400010001000D000A00
      6700720064005000610063006B0061006700650043006F007300740044004200
      5400610062006C0065005600690065007700310056006F006C0075006D006500
      010056006F006C0079006D00010001000D000A00670072006400500061006300
      6B0061006700650043006F0073007400440042005400610062006C0065005600
      69006500770031006100760067007000720069006300650001004D0065006400
      65006C007000720069007300010001000D000A00670072006400500061006300
      6B0061006700650043006F0073007400440065007400610069006C0073004400
      42005400610062006C006500560069006500770031005000610063006B006100
      670065004E006F000100500061006B00650074006E007200010001000D000A00
      6700720064005000610063006B0061006700650043006F007300740044006500
      7400610069006C007300440042005400610062006C0065005600690065007700
      310053007500700070006C0069006500720043006F0064006500010050007200
      6500660069007800010001000D000A006700720064005000610063006B006100
      6700650043006F0073007400440065007400610069006C007300440042005400
      610062006C006500560069006500770031004C00490050004E006F0001004C00
      490050004E006F00010001000D000A006700720064005000610063006B006100
      6700650043006F0073007400440065007400610069006C007300440042005400
      610062006C006500560069006500770031004C006F00610064004F0072006400
      650072004E006F0001004C004F006E007200010001000D000A00670072006400
      5000610063006B0061006700650043006F007300740044006500740061006900
      6C007300440042005400610062006C0065005600690065007700310043006F00
      730074005400790070006500010043006F007300740054007900700065000100
      01000D000A006700720064005000610063006B0061006700650043006F007300
      7400440065007400610069006C007300440042005400610062006C0065005600
      6900650077003100410072007400690063006C0065004E006F00010041007200
      7400690063006C0065004E006F00010001000D000A0067007200640050006100
      63006B0061006700650043006F0073007400440065007400610069006C007300
      440042005400610062006C006500560069006500770031004400610074006500
      4300720065006100740065006400010044006100740065004300720065006100
      740065006400010001000D000A006700720064005000610063006B0061006700
      650043006F0073007400440065007400610069006C0073004400420054006100
      62006C0065005600690065007700310043006F00730074005000650072004100
      4D00330001004B006F00730074006E00610064002F0041004D00330001000100
      0D000A006700720064005000610063006B0061006700650043006F0073007400
      440065007400610069006C007300440042005400610062006C00650056006900
      6500770031004B004F005300540054005900500001004B006F00730074006E00
      61006400730073006C0061006700010001000D000A0067007200640050006100
      63006B0061006700650043006F0073007400440065007400610069006C007300
      440042005400610062006C006500560069006500770031004500780063006C00
      7500640065000100450078006B006C0075006400650072006100740001000100
      0D000A0047007200690064005400610062006C00650056006900650077005300
      740079006C006500530068006500650074005200650064005700680069007400
      650061006E00640042006C007500650056004700410001005200650064002C00
      2000570068006900740065002C00200061006E006400200042006C0075006500
      200028005600470041002900010001000D000A00470072006900640054006100
      62006C00650056006900650077005300740079006C0065005300680065006500
      7400570069006E0064006F00770073005300740061006E006400610072006400
      6C0061007200670065000100570069006E0064006F0077007300200053007400
      61006E006400610072006400200028006C006100720067006500290001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066005000
      610063006B0061006700650043006F007300740050006500720050006B006700
      01005400610068006F006D006100010001000D000A0063007800420075007400
      74006F006E00310001005400610068006F006D006100010001000D000A006300
      78005300740079006C00650031000100540069006D006500730020004E006500
      7700200052006F006D0061006E00010001000D000A0063007800530074007900
      6C006500320001005400610068006F006D006100010001000D000A0063007800
      5300740079006C006500330001005400610068006F006D006100010001000D00
      0A00630078005300740079006C00650034000100540069006D00650073002000
      4E0065007700200052006F006D0061006E00010001000D000A00630078005300
      740079006C00650035000100540069006D006500730020004E00650077002000
      52006F006D0061006E00010001000D000A00630078005300740079006C006500
      36000100540069006D006500730020004E0065007700200052006F006D006100
      6E00010001000D000A00630078005300740079006C0065003700010054006900
      6D006500730020004E0065007700200052006F006D0061006E00010001000D00
      0A00630078005300740079006C00650038000100540069006D00650073002000
      4E0065007700200052006F006D0061006E00010001000D000A00630078005300
      740079006C00650039000100540069006D006500730020004E00650077002000
      52006F006D0061006E00010001000D000A00630078005300740079006C006500
      310030000100540069006D006500730020004E0065007700200052006F006D00
      61006E00010001000D000A00630078005300740079006C006500310031000100
      540069006D006500730020004E0065007700200052006F006D0061006E000100
      01000D000A00630078005300740079006C006500310032000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650031003300
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003100340001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003100350001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500310036000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650031003700
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003100380001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003100390001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500320030000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650032003100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003200320001005400610068006F006D006100010001000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      6700720064005000610063006B0061006700650043006F007300740044006500
      7400610069006C007300440042005400610062006C0065005600690065007700
      31004500780063006C007500640065002E00500072006F007000650072007400
      6900650073002E0044006900730070006C006100790043006800650063006B00
      6500640001005400720075006500010001000D000A0067007200640050006100
      63006B0061006700650043006F0073007400440065007400610069006C007300
      440042005400610062006C006500560069006500770031004500780063006C00
      7500640065002E00500072006F0070006500720074006900650073002E004400
      6900730070006C006100790055006E0063006800650063006B00650064000100
      460061006C0073006500010001000D000A006700720064005000610063006B00
      61006700650043006F0073007400440065007400610069006C00730044004200
      5400610062006C006500560069006500770031004500780063006C0075006400
      65002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D006500010054006300780043006800650063006B0042006F00
      7800500072006F007000650072007400690065007300010001000D000A006300
      7800530070006C006900740074006500720031002E0048006F0074005A006F00
      6E00650043006C006100730073004E0061006D00650001005400630078004D00
      650064006900610050006C00610079006500720038005300740079006C006500
      010001000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      66005000610063006B0061006700650043006F00730074005000650072005000
      6B0067000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A006300780042007500740074006F006E0031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00630078005300740079006C006500310001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A006300
      78005300740079006C00650032000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0063007800530074007900
      6C00650033000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00630078005300740079006C00650034000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00630078005300740079006C006500350001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A006300
      78005300740079006C00650036000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0063007800530074007900
      6C00650037000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00630078005300740079006C00650038000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00630078005300740079006C006500390001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A006300
      78005300740079006C006500310030000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A006300780053007400
      79006C006500310031000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00630078005300740079006C006500
      310032000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00630078005300740079006C006500310033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00630078005300740079006C006500310034000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      630078005300740079006C006500310035000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00630078005300
      740079006C006500310036000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00630078005300740079006C00
      6500310037000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00630078005300740079006C00650031003800
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00630078005300740079006C00650031003900010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00630078005300740079006C00650032003000010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0063007800
      5300740079006C006500320031000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0063007800530074007900
      6C006500320032000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00}
  end
end
