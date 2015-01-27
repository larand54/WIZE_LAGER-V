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
    Left = 624
    Top = 288
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A004900440053005F00300001004D006100
      72006B00650072006100640020003D0020003100010001000D000A0049004400
      53005F003100010020003A00500061006B00650074006E007200200066006900
      6E006E0073002000750070007000740061006700650074002000690020006500
      6E00200074006F0072006B00200072006500640061006E002E00010001000D00
      0A004900440053005F00320001004B006F00640065006E0020006B0075006E00
      64006500200069006E00740065002000F6007600650072007300E40074007400
      610073002000740069006C006C0020006500740074002000500061006B006500
      74006E007200010001000D000A004900440053005F0033000100500061006B00
      650074006E0072002000010001000D000A004900440053005F00340001002000
      660069006E006E007300200069006E00740065002000690020006C0061006700
      650072002000010001000D000A004900440053005F00360001002000E4007200
      2000720065007300650072007600650072006100740020006100760020000100
      01000D000A004900440053005F00380001002000E40072002000720065006400
      61006E00200069006E006D006100740061007400010001000D000A0049004400
      53005F0039000100500061006B00650074006E0072002000730061006B006E00
      610073002E00010001000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      740043006F006C006C0065006300740069006F006E0073005F0055006E006900
      63006F00640065000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A00}
  end
end
