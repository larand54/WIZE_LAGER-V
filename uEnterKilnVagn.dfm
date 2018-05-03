object fEnterKilnVagn: TfEnterKilnVagn
  Left = 0
  Top = 0
  Caption = 'KOK'
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
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object mePackageNo: TcxTextEdit
      Left = 203
      Top = 8
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      OnKeyDown = mePackageNoKeyDown
      Width = 210
    end
    object cxLabel1: TcxLabel
      Left = 88
      Top = 13
      Caption = 'Ange paketnr:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
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
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 21
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 801
      Top = 8
      Caption = 'Koksatsnr:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
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
      Style.Font.Height = -17
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
      Style.Font.Height = -17
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
      Font.Height = -17
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
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lcImp: TcxDBLookupComboBox
      Left = 924
      Top = 40
      Hint = 'Please select a pressure treated type!'
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataBinding.DataField = 'IMP'
      DataBinding.DataSource = ds_KilnVagn
      ParentFont = False
      ParentShowHint = False
      Properties.KeyFieldNames = 'ProductCategoryNo'
      Properties.ListColumns = <
        item
          FieldName = 'ProductCategoryName'
        end>
      Properties.ListOptions.ShowHeader = False
      ShowHint = True
      Style.Color = clGreen
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 314
    end
    object LabelIMP: TcxLabel
      Left = 801
      Top = 43
      Caption = 'Impregnering:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 203
      Top = 42
      Hint = 'Kopieras till info2 f'#228'ltet i paketen'
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataBinding.DataField = 'Notering'
      DataBinding.DataSource = ds_KilnVagn
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 210
    end
    object cxLabel4: TcxLabel
      Left = 88
      Top = 44
      Caption = 'Notering:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object tePlannedDuration: TcxDBTextEdit
      Left = 203
      Top = 73
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataBinding.DataField = 'PlannedDuration'
      DataBinding.DataSource = ds_KilnVagn
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 210
    end
    object cxLabel5: TcxLabel
      Left = 88
      Top = 76
      Caption = 'Plan.koktid:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxButton3: TcxButton
      Left = 6
      Top = 24
      Width = 68
      Height = 69
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'check imp'
      TabOrder = 14
      OnClick = cxButton3Click
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
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object grdVagnPkgs: TcxGrid
    Left = 0
    Top = 105
    Width = 1256
    Height = 391
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
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '######.00'
          Kind = skSum
          FieldName = 'AM3'
          Column = grdVagnPkgsDBTableView1AM3
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.DataRowSizing = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
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
        Width = 69
      end
      object grdVagnPkgsDBTableView1PackageNo: TcxGridDBColumn
        DataBinding.FieldName = 'PackageNo'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 94
      end
      object grdVagnPkgsDBTableView1SupplierCode: TcxGridDBColumn
        DataBinding.FieldName = 'SupplierCode'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 70
      end
      object grdVagnPkgsDBTableView1ProductDisplayName: TcxGridDBColumn
        DataBinding.FieldName = 'ProductDisplayName'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 347
      end
      object grdVagnPkgsDBTableView1NoOfPkgs: TcxGridDBColumn
        DataBinding.FieldName = 'NoOfPkgs'
        Visible = False
        Width = 84
      end
      object grdVagnPkgsDBTableView1PcsPerLength: TcxGridDBColumn
        DataBinding.FieldName = 'PcsPerLength'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 191
      end
      object grdVagnPkgsDBTableView1DateCreated: TcxGridDBColumn
        DataBinding.FieldName = 'DateCreated'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 147
      end
      object grdVagnPkgsDBTableView1CreatedUser: TcxGridDBColumn
        DataBinding.FieldName = 'CreatedUser'
        Visible = False
        Width = 101
      end
      object grdVagnPkgsDBTableView1MatchingPT: TcxGridDBColumn
        Caption = 'Matching P/T'
        DataBinding.FieldName = 'MatchingPT'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 208
      end
      object grdVagnPkgsDBTableView1AM3: TcxGridDBColumn
        DataBinding.FieldName = 'AM3'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 116
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
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13626101
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      OnUpdate = acRemovePackageUpdate
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
    Left = 624
    Top = 288
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660045006E007400650072004B0069006C006E005600
      610067006E0001005600610067006E002F005300610074007300010001000100
      0D000A00630078004C006100620065006C003100010041006E00670065002000
      700061006B00650074006E0072003A000100010001000D000A00630078004C00
      6100620065006C003200010054006F0072006B0073006100740073006E007200
      3A000100010001000D000A00630078004C006100620065006C00330001005600
      610067006E006E0072003A000100010001000D000A0062004F004B0001005300
      7400E4006E0067000100010001000D000A006700720064005600610067006E00
      50006B0067007300440042005400610062006C00650056006900650077003100
      4B0069006C006E004300680061007200670065004E006F00010054006F007200
      6B0073006100740073006E0072000100010001000D000A006700720064005600
      610067006E0050006B0067007300440042005400610062006C00650056006900
      6500770031005600610067006E004E006F0001005600610067006E006E007200
      0100010001000D000A006700720064005600610067006E0050006B0067007300
      440042005400610062006C0065005600690065007700310052006F0077004E00
      6F0001005200610064006E0072000100010001000D000A006700720064005600
      610067006E0050006B0067007300440042005400610062006C00650056006900
      6500770031005000610063006B006100670065004E006F000100500061006B00
      650074006E0072000100010001000D000A006700720064005600610067006E00
      50006B0067007300440042005400610062006C00650056006900650077003100
      53007500700070006C0069006500720043006F00640065000100500072006500
      6600690078000100010001000D000A006700720064005600610067006E005000
      6B0067007300440042005400610062006C006500560069006500770031005000
      72006F00640075006300740044006900730070006C00610079004E0061006D00
      65000100500072006F00640075006B0074000100010001000D000A0067007200
      64005600610067006E0050006B0067007300440042005400610062006C006500
      560069006500770031004E006F004F00660050006B006700730001004E006F00
      4F00660050006B00670073000100010001000D000A0067007200640056006100
      67006E0050006B0067007300440042005400610062006C006500560069006500
      770031005000630073005000650072004C0065006E0067007400680001005300
      74002F006C00E4006E00670064000100010001000D000A006700720064005600
      610067006E0050006B0067007300440042005400610062006C00650056006900
      6500770031004400610074006500430072006500610074006500640001004900
      6E006D0061007400610064000100010001000D000A0067007200640056006100
      67006E0050006B0067007300440042005400610062006C006500560069006500
      7700310043007200650061007400650064005500730065007200010049006E00
      6D0061007400610064002000610076000100010001000D000A00470072006900
      64005400610062006C00650056006900650077005300740079006C0065005300
      6800650065007400500075006D0070006B0069006E006C006100720067006500
      0100500075006D0070006B0069006E00200028006C0061007200670065002900
      0100010001000D000A0061006300520065006D006F0076006500500061006300
      6B00610067006500010054006100200062006F00720074002000700061006B00
      650074000100010001000D000A00610063005000690063006B00500061006300
      6B006100670065007300010050006C006F0063006B0061002000700061006B00
      650074000100010001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A005400660045006E007400650072004B0069006C006E00560061006700
      6E0001005400610068006F006D00610001005400610068006F006D0061000100
      5400610068006F006D0061000D000A006300780042007500740074006F006E00
      310001005400610068006F006D006100010001005400610068006F006D006100
      0D000A006300780042007500740074006F006E00320001005400610068006F00
      6D006100010001005400610068006F006D0061000D000A0062004F004B000100
      5400610068006F006D006100010001005400610068006F006D0061000D000A00
      630078005300740079006C006500310001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D0061000D000A00630078005300740079006C00650032000100
      5400610068006F006D006100010001005400610068006F006D0061000D000A00
      630078005300740079006C006500330001005400610068006F006D0061000100
      01005400610068006F006D0061000D000A00630078005300740079006C006500
      340001004D006900630072006F0073006F00660074002000530061006E007300
      200053006500720069006600010001005400610068006F006D0061000D000A00
      630078005300740079006C006500350001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D0061000D000A00630078005300740079006C00650036000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      6500720069006600010001005400610068006F006D0061000D000A0063007800
      5300740079006C006500370001004D006900630072006F0073006F0066007400
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D0061000D000A00630078005300740079006C006500380001004D006900
      630072006F0073006F00660074002000530061006E0073002000530065007200
      69006600010001005400610068006F006D0061000D000A006300780053007400
      79006C006500390001004D006900630072006F0073006F006600740020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      61000D000A00630078005300740079006C0065003100300001004D0069006300
      72006F0073006F00660074002000530061006E00730020005300650072006900
      6600010001005400610068006F006D0061000D000A0063007800530074007900
      6C0065003100310001004D006900630072006F0073006F006600740020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      61000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A004900440053005F00
      300001004D00610072006B00650072006100640020003D002000310001000100
      01000D000A004900440053005F003100010020003A00500061006B0065007400
      6E0072002000660069006E006E00730020007500700070007400610067006500
      740020006900200065006E00200074006F0072006B0020007200650064006100
      6E002E000100010001000D000A004900440053005F00320001004B006F006400
      65006E0020006B0075006E0064006500200069006E00740065002000F6007600
      650072007300E40074007400610073002000740069006C006C00200065007400
      74002000500061006B00650074006E0072000100010001000D000A0049004400
      53005F0033000100500061006B00650074006E00720020000100010001000D00
      0A004900440053005F00340001002000660069006E006E007300200069006E00
      740065002000690020006C00610067006500720020000100010001000D000A00
      4900440053005F00360001002000E40072002000720065007300650072007600
      650072006100740020006100760020000100010001000D000A00490044005300
      5F00380001002000E4007200200072006500640061006E00200069006E006D00
      61007400610074000100010001000D000A004900440053005F00390001005000
      61006B00650074006E0072002000730061006B006E00610073002E0001000100
      01000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A005400660045006E007400650072004B0069006C00
      6E005600610067006E000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A006300780042007500740074006F006E003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A006300780042007500740074006F006E00320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A0062004F004B00
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00630078005300740079006C0065003100010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006300780053007400
      79006C00650032000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00630078005300740079006C006500330001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      630078005300740079006C00650034000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00630078005300740079006C00
      650035000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00630078005300740079006C00650036000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0063007800
      5300740079006C00650037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00630078005300740079006C0065003800
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00630078005300740079006C0065003900010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006300780053007400
      79006C006500310030000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00630078005300740079006C00650031003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00}
  end
  object ds_KilnVagn: TDataSource
    DataSet = dmInventory.cds_KilnVagn
    Left = 368
    Top = 328
  end
end
