object fEnterKilnVagn: TfEnterKilnVagn
  Left = 0
  Top = 0
  Caption = 'Vagn/Sats'
  ClientHeight = 564
  ClientWidth = 1256
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1256
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object mePackageNo: TcxTextEdit
      Left = 199
      Top = 27
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      OnKeyDown = mePackageNoKeyDown
      Width = 210
    end
    object cxLabel1: TcxLabel
      Left = 88
      Top = 32
      Caption = 'Ange paketnr:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxDBLabel1: TcxDBLabel
      Left = 923
      Top = 11
      DataBinding.DataField = 'KilnChargeNo'
      DataBinding.DataSource = dmInventory.ds_KilnChargeRows
      ParentColor = False
      ParentFont = False
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 21
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 832
      Top = 11
      Caption = 'Torksatsnr:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxDBLabel2: TcxDBLabel
      Left = 1117
      Top = 11
      DataBinding.DataField = 'VagnNo'
      DataBinding.DataSource = dmInventory.ds_KilnChargeRows
      ParentColor = False
      ParentFont = False
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 21
      Width = 121
    end
    object cxLabel3: TcxLabel
      Left = 1050
      Top = 11
      Caption = 'Vagnnr:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxButton1: TcxButton
      Left = 600
      Top = 3
      Width = 129
      Height = 65
      Action = acRemovePackage
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton2: TcxButton
      Left = 465
      Top = 3
      Width = 129
      Height = 65
      Action = acPickPackages
      TabOrder = 7
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
    Top = 496
    Width = 1256
    Height = 68
    Align = alBottom
    TabOrder = 1
    object bOK: TcxButton
      Left = 577
      Top = 6
      Width = 105
      Height = 51
      Caption = 'St'#228'ng'
      ModalResult = 1
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object grdVagnPkgs: TcxGrid
    Left = 0
    Top = 73
    Width = 1256
    Height = 423
    Align = alClient
    TabOrder = 2
    object grdVagnPkgsDBTableView1: TcxGridDBTableView
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
      DataController.DataSource = dmInventory.ds_KilnChargeRows
      DataController.KeyFieldNames = 'KilnChargeNo;RowNo;VagnNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.DataRowSizing = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.StyleSheet = GridTableViewStyleSheetPumpkinlarge
      object grdVagnPkgsDBTableView1KilnChargeNo: TcxGridDBColumn
        DataBinding.FieldName = 'KilnChargeNo'
        Visible = False
        Width = 96
      end
      object grdVagnPkgsDBTableView1VagnNo: TcxGridDBColumn
        DataBinding.FieldName = 'VagnNo'
        Visible = False
        Width = 71
      end
      object grdVagnPkgsDBTableView1RowNo: TcxGridDBColumn
        DataBinding.FieldName = 'RowNo'
        PropertiesClassName = 'TcxLabelProperties'
        SortIndex = 0
        SortOrder = soDescending
        Width = 82
      end
      object grdVagnPkgsDBTableView1PackageNo: TcxGridDBColumn
        DataBinding.FieldName = 'PackageNo'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 112
      end
      object grdVagnPkgsDBTableView1SupplierCode: TcxGridDBColumn
        DataBinding.FieldName = 'SupplierCode'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 83
      end
      object grdVagnPkgsDBTableView1ProductDisplayName: TcxGridDBColumn
        DataBinding.FieldName = 'ProductDisplayName'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 518
      end
      object grdVagnPkgsDBTableView1NoOfPkgs: TcxGridDBColumn
        DataBinding.FieldName = 'NoOfPkgs'
        Visible = False
        Width = 84
      end
      object grdVagnPkgsDBTableView1PcsPerLength: TcxGridDBColumn
        DataBinding.FieldName = 'PcsPerLength'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 261
      end
      object grdVagnPkgsDBTableView1DateCreated: TcxGridDBColumn
        DataBinding.FieldName = 'DateCreated'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 186
      end
      object grdVagnPkgsDBTableView1CreatedUser: TcxGridDBColumn
        DataBinding.FieldName = 'CreatedUser'
        Visible = False
        Width = 101
      end
    end
    object grdVagnPkgsLevel1: TcxGridLevel
      GridView = grdVagnPkgsDBTableView1
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 152
    Top = 192
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 352
    Top = 192
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 10343916
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13626101
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3122647
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13626101
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4325442
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
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
      TextColor = 3122647
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetPumpkinlarge: TcxGridTableViewStyleSheet
      Caption = 'Pumpkin (large)'
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
  object ActionList1: TActionList
    Left = 464
    Top = 208
    object acRemovePackage: TAction
      Caption = 'Ta bort paket'
      OnExecute = acRemovePackageExecute
    end
    object acPickPackages: TAction
      Caption = 'Plocka paket'
      OnExecute = acPickPackagesExecute
    end
  end
  object siLangLinked_fEnterKilnVagn: TsiLangLinked
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
    Left = 624
    Top = 288
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660045006E007400650072004B0069006C006E005600
      610067006E0001005600610067006E002F005300610074007300010001000D00
      0A00630078004C006100620065006C003100010041006E006700650020007000
      61006B00650074006E0072003A00010001000D000A00630078004C0061006200
      65006C003200010054006F0072006B0073006100740073006E0072003A000100
      01000D000A00630078004C006100620065006C00330001005600610067006E00
      6E0072003A00010001000D000A0062004F004B00010053007400E4006E006700
      010001000D000A006700720064005600610067006E0050006B00670073004400
      42005400610062006C006500560069006500770031004B0069006C006E004300
      680061007200670065004E006F00010054006F0072006B007300610074007300
      6E007200010001000D000A006700720064005600610067006E0050006B006700
      7300440042005400610062006C00650056006900650077003100560061006700
      6E004E006F0001005600610067006E006E007200010001000D000A0067007200
      64005600610067006E0050006B0067007300440042005400610062006C006500
      5600690065007700310052006F0077004E006F0001005200610064006E007200
      010001000D000A006700720064005600610067006E0050006B00670073004400
      42005400610062006C006500560069006500770031005000610063006B006100
      670065004E006F000100500061006B00650074006E007200010001000D000A00
      6700720064005600610067006E0050006B006700730044004200540061006200
      6C0065005600690065007700310053007500700070006C006900650072004300
      6F00640065000100500072006500660069007800010001000D000A0067007200
      64005600610067006E0050006B0067007300440042005400610062006C006500
      56006900650077003100500072006F0064007500630074004400690073007000
      6C00610079004E0061006D0065000100500072006F00640075006B0074000100
      01000D000A006700720064005600610067006E0050006B006700730044004200
      5400610062006C006500560069006500770031004E006F004F00660050006B00
      6700730001004E006F004F00660050006B0067007300010001000D000A006700
      720064005600610067006E0050006B0067007300440042005400610062006C00
      6500560069006500770031005000630073005000650072004C0065006E006700
      740068000100530074002F006C00E4006E0067006400010001000D000A006700
      720064005600610067006E0050006B0067007300440042005400610062006C00
      6500560069006500770031004400610074006500430072006500610074006500
      6400010049006E006D006100740061006400010001000D000A00670072006400
      5600610067006E0050006B0067007300440042005400610062006C0065005600
      6900650077003100430072006500610074006500640055007300650072000100
      49006E006D006100740061006400200061007600010001000D000A0047007200
      690064005400610062006C00650056006900650077005300740079006C006500
      53006800650065007400500075006D0070006B0069006E006C00610072006700
      65000100500075006D0070006B0069006E00200028006C006100720067006500
      2900010001000D000A0061006300520065006D006F0076006500500061006300
      6B00610067006500010054006100200062006F00720074002000700061006B00
      65007400010001000D000A00610063005000690063006B005000610063006B00
      6100670065007300010050006C006F0063006B0061002000700061006B006500
      7400010001000D000A0073007400480069006E00740073005F0055006E006900
      63006F00640065000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      5400660045006E007400650072004B0069006C006E005600610067006E000100
      5400610068006F006D006100010001000D000A00630078004200750074007400
      6F006E00310001005400610068006F006D006100010001000D000A0063007800
      42007500740074006F006E00320001005400610068006F006D00610001000100
      0D000A0062004F004B0001005400610068006F006D006100010001000D000A00
      630078005300740079006C006500310001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001000D00
      0A00630078005300740079006C006500320001005400610068006F006D006100
      010001000D000A00630078005300740079006C00650033000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650034000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      6500720069006600010001000D000A00630078005300740079006C0065003500
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      53006500720069006600010001000D000A00630078005300740079006C006500
      360001004D006900630072006F0073006F00660074002000530061006E007300
      200053006500720069006600010001000D000A00630078005300740079006C00
      6500370001004D006900630072006F0073006F00660074002000530061006E00
      7300200053006500720069006600010001000D000A0063007800530074007900
      6C006500380001004D006900630072006F0073006F0066007400200053006100
      6E007300200053006500720069006600010001000D000A006300780053007400
      79006C006500390001004D006900630072006F0073006F006600740020005300
      61006E007300200053006500720069006600010001000D000A00630078005300
      740079006C0065003100300001004D006900630072006F0073006F0066007400
      2000530061006E007300200053006500720069006600010001000D000A006300
      78005300740079006C0065003100310001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001000D00
      0A00730074004D0075006C00740069004C0069006E00650073005F0055006E00
      690063006F00640065000D000A007300740053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A004900440053005F0030000100
      4D00610072006B00650072006100640020003D0020003100010001000D000A00
      4900440053005F003100010020003A00500061006B00650074006E0072002000
      660069006E006E00730020007500700070007400610067006500740020006900
      200065006E00200074006F0072006B00200072006500640061006E002E000100
      01000D000A004900440053005F00320001004B006F00640065006E0020006B00
      75006E0064006500200069006E00740065002000F6007600650072007300E400
      74007400610073002000740069006C006C002000650074007400200050006100
      6B00650074006E007200010001000D000A004900440053005F00330001005000
      61006B00650074006E0072002000010001000D000A004900440053005F003400
      01002000660069006E006E007300200069006E00740065002000690020006C00
      61006700650072002000010001000D000A004900440053005F00360001002000
      E400720020007200650073006500720076006500720061007400200061007600
      2000010001000D000A004900440053005F00380001002000E400720020007200
      6500640061006E00200069006E006D006100740061007400010001000D000A00
      4900440053005F0039000100500061006B00650074006E007200200073006100
      6B006E00610073002E00010001000D000A00730074004F007400680065007200
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A006700720064005600610067006E0050006B00670073004400420054006100
      62006C0065005600690065007700310052006F0077004E006F002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A006700720064005600610067006E005000
      6B0067007300440042005400610062006C006500560069006500770031005000
      610063006B006100670065004E006F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A006700720064005600610067006E0050006B006700730044004200
      5400610062006C0065005600690065007700310053007500700070006C006900
      6500720043006F00640065002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A006700720064005600610067006E0050006B00670073004400420054006100
      62006C00650056006900650077003100500072006F0064007500630074004400
      6900730070006C00610079004E0061006D0065002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A006700720064005600610067006E0050006B0067007300
      440042005400610062006C006500560069006500770031005000630073005000
      650072004C0065006E006700740068002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A006700720064005600610067006E0050006B006700730044004200
      5400610062006C00650056006900650077003100440061007400650043007200
      650061007400650064002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A005400660045006E007400
      650072004B0069006C006E005600610067006E00010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0063007800
      42007500740074006F006E0031000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0063007800420075007400
      74006F006E0032000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A0062004F004B0001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A006300
      78005300740079006C00650031000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0063007800530074007900
      6C00650032000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00630078005300740079006C00650033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00630078005300740079006C006500340001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A006300
      78005300740079006C00650035000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0063007800530074007900
      6C00650036000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00630078005300740079006C00650037000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00630078005300740079006C006500380001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A006300
      78005300740079006C00650039000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0063007800530074007900
      6C006500310030000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00630078005300740079006C0065003100
      31000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00}
  end
end
