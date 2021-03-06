object fCreateSicPriceGroups: TfCreateSicPriceGroups
  Left = 205
  Top = 120
  Caption = 'Tilldela produkter prisgrupper'
  ClientHeight = 557
  ClientWidth = 1277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1277
    Height = 57
    Align = alTop
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 559
      Top = 10
      Width = 186
      Height = 41
      Action = acCopyKalkylPris
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 16
      Top = 10
      Width = 177
      Height = 41
      Action = acRefresh
      TabOrder = 1
    end
    object cxButton4: TcxButton
      Left = 199
      Top = 10
      Width = 170
      Height = 41
      Action = acSaveToStandardPriceGroup
      TabOrder = 2
    end
    object cxButton5: TcxButton
      Left = 375
      Top = 10
      Width = 178
      Height = 41
      Action = acPrintTable
      TabOrder = 3
    end
    object cxButton6: TcxButton
      Left = 751
      Top = 10
      Width = 194
      Height = 41
      Action = acShowPackageCost
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 516
    Width = 1277
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object grdSixPriceGroup: TcxGrid
    Left = 0
    Top = 57
    Width = 1277
    Height = 459
    Align = alClient
    TabOrder = 2
    object grdSixPriceGroupDBTableView1: TcxGridDBTableView
      OnDblClick = grdSixPriceGroupDBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmInvCtrl.ds_SicPG
      DataController.KeyFieldNames = 'IC_grpNo;ProductNo;OwnerNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###,###,###.000'
          Kind = skSum
          FieldName = 'AM3'
          Column = grdSixPriceGroupDBTableView1AM3
        end
        item
          Format = '#,###,###,###.000'
          Kind = skSum
          FieldName = 'NM3'
          Column = grdSixPriceGroupDBTableView1NM3
        end
        item
          Format = '#,###,###,###'
          Kind = skSum
          FieldName = 'STYCK'
          Column = grdSixPriceGroupDBTableView1STYCK
        end
        item
          Format = '#,###,###,###,###.00'
          Kind = skSum
          FieldName = 'RowValue'
          Column = grdSixPriceGroupDBTableView1RowValue
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soMultipleSelectedRecords]
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.PullFocusing = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdSixPriceGroupDBTableView1AT: TcxGridDBColumn
        DataBinding.FieldName = 'AT'
        Width = 37
      end
      object grdSixPriceGroupDBTableView1AB: TcxGridDBColumn
        DataBinding.FieldName = 'AB'
        Width = 44
      end
      object grdSixPriceGroupDBTableView1TS: TcxGridDBColumn
        DataBinding.FieldName = 'TS'
        Width = 106
      end
      object grdSixPriceGroupDBTableView1KV: TcxGridDBColumn
        DataBinding.FieldName = 'KV'
        Width = 106
      end
      object grdSixPriceGroupDBTableView1UT: TcxGridDBColumn
        DataBinding.FieldName = 'UT'
        Width = 107
      end
      object grdSixPriceGroupDBTableView1IMP: TcxGridDBColumn
        DataBinding.FieldName = 'IMP'
        Width = 71
      end
      object grdSixPriceGroupDBTableView1PRODUKT: TcxGridDBColumn
        DataBinding.FieldName = 'PRODUKT'
        Width = 267
      end
      object grdSixPriceGroupDBTableView1STYCK: TcxGridDBColumn
        DataBinding.FieldName = 'STYCK'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ReadOnly = True
        Width = 61
      end
      object grdSixPriceGroupDBTableView1AM3: TcxGridDBColumn
        DataBinding.FieldName = 'AM3'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ReadOnly = True
        Width = 57
      end
      object grdSixPriceGroupDBTableView1NM3: TcxGridDBColumn
        DataBinding.FieldName = 'NM3'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ReadOnly = True
        Width = 50
      end
      object grdSixPriceGroupDBTableView1Prisgrupp: TcxGridDBColumn
        DataBinding.FieldName = 'Prisgrupp'
        Width = 80
      end
      object grdSixPriceGroupDBTableView1ProductNo: TcxGridDBColumn
        DataBinding.FieldName = 'ProductNo'
        Visible = False
        VisibleForCustomization = False
        Width = 20
      end
      object grdSixPriceGroupDBTableView1IC_grpNo: TcxGridDBColumn
        DataBinding.FieldName = 'IC_grpNo'
        Visible = False
        VisibleForCustomization = False
        Width = 20
      end
      object grdSixPriceGroupDBTableView1OwnerNo: TcxGridDBColumn
        DataBinding.FieldName = 'OwnerNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 25
      end
      object grdSixPriceGroupDBTableView1PrisPerNM3: TcxGridDBColumn
        Caption = 'Pris/NM3'
        DataBinding.FieldName = 'PricePerNM3'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdSixPriceGroupDBTableView1RowValue: TcxGridDBColumn
        DataBinding.FieldName = 'RowValue'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
      end
      object grdSixPriceGroupDBTableView1KalkylPris: TcxGridDBColumn
        DataBinding.FieldName = 'KalkylPris'
        PropertiesClassName = 'TcxLabelProperties'
      end
    end
    object grdSixPriceGroupLevel1: TcxGridLevel
      GridView = grdSixPriceGroupDBTableView1
    end
  end
  object ActionList1: TActionList
    Images = dmsConnector.Images2424
    Left = 416
    Top = 152
    object acPriceGroups: TAction
      Caption = 'Administrera prisgrupper'
      ImageIndex = 4
      OnExecute = acPriceGroupsExecute
    end
    object acAddSelectedProductsToPriceGroup: TAction
      Caption = 'Tilldela markerade rader en prisgrupp'
      ImageIndex = 19
      OnExecute = acAddSelectedProductsToPriceGroupExecute
    end
    object acRefresh: TAction
      Caption = 'Uppdatera'
      ImageIndex = 0
      OnExecute = acRefreshExecute
    end
    object acSaveToStandardPriceGroup: TAction
      Caption = 'Kalylera medelpris'
      ImageIndex = 6
      OnExecute = acSaveToStandardPriceGroupExecute
    end
    object acPrintTable: TAction
      Caption = 'Skriv ut'
      ImageIndex = 8
      ShortCut = 119
      OnExecute = acPrintTableExecute
    end
    object acShowPackageCost: TAction
      Caption = 'Visa kostnader per paket'
      ImageIndex = 3
      OnExecute = acShowPackageCostExecute
    end
    object acCopyKalkylPris: TAction
      Caption = 'Kopiera kalkylpris'
      ImageIndex = 12
      OnExecute = acCopyKalkylPrisExecute
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdSixPriceGroup
    PopupMenus = <>
    Left = 416
    Top = 88
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 416
    Top = 216
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdSixPriceGroup
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  object siLangLinked_fCreateSicPriceGroups: TsiLangLinked
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
    Left = 632
    Top = 280
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004300720065006100740065005300690063005000
      7200690063006500470072006F007500700073000100540069006C006C006400
      65006C0061002000700072006F00640075006B00740065007200200070007200
      6900730067007200750070007000650072000100010001000D000A0067007200
      640053006900780050007200690063006500470072006F007500700044004200
      5400610062006C00650056006900650077003100410054000100410054000100
      010001000D000A00670072006400530069007800500072006900630065004700
      72006F0075007000440042005400610062006C00650056006900650077003100
      410042000100410042000100010001000D000A00670072006400530069007800
      50007200690063006500470072006F0075007000440042005400610062006C00
      650056006900650077003100540053000100540053000100010001000D000A00
      67007200640053006900780050007200690063006500470072006F0075007000
      440042005400610062006C006500560069006500770031004B00560001004B00
      56000100010001000D000A006700720064005300690078005000720069006300
      6500470072006F0075007000440042005400610062006C006500560069006500
      77003100550054000100550054000100010001000D000A006700720064005300
      6900780050007200690063006500470072006F00750070004400420054006100
      62006C0065005600690065007700310049004D005000010049004D0050000100
      010001000D000A00670072006400530069007800500072006900630065004700
      72006F0075007000440042005400610062006C00650056006900650077003100
      500052004F00440055004B0054000100500052004F00440055004B0054000100
      010001000D000A00670072006400530069007800500072006900630065004700
      72006F0075007000440042005400610062006C00650056006900650077003100
      53005400590043004B00010053005400590043004B000100010001000D000A00
      67007200640053006900780050007200690063006500470072006F0075007000
      440042005400610062006C0065005600690065007700310041004D0033000100
      41004D0033000100010001000D000A0067007200640053006900780050007200
      690063006500470072006F0075007000440042005400610062006C0065005600
      69006500770031004E004D00330001004E004D0033000100010001000D000A00
      67007200640053006900780050007200690063006500470072006F0075007000
      440042005400610062006C006500560069006500770031005000720069007300
      6700720075007000700001005000720069007300670072007500700070000100
      010001000D000A00670072006400530069007800500072006900630065004700
      72006F0075007000440042005400610062006C00650056006900650077003100
      500072006F0064007500630074004E006F000100500072006F00640075006300
      74004E006F000100010001000D000A0067007200640053006900780050007200
      690063006500470072006F0075007000440042005400610062006C0065005600
      6900650077003100490043005F006700720070004E006F000100490043005F00
      6700720070004E006F000100010001000D000A00670072006400530069007800
      50007200690063006500470072006F0075007000440042005400610062006C00
      6500560069006500770031004F0077006E00650072004E006F0001004F007700
      6E00650072004E006F000100010001000D000A00670072006400530069007800
      50007200690063006500470072006F0075007000440042005400610062006C00
      65005600690065007700310050007200690073005000650072004E004D003300
      010050007200690073002F004E004D0033000100010001000D000A0067007200
      640053006900780050007200690063006500470072006F007500700044004200
      5400610062006C0065005600690065007700310052006F007700560061006C00
      75006500010052006F007700560061006C00750065000100010001000D000A00
      67007200640053006900780050007200690063006500470072006F0075007000
      440042005400610062006C006500560069006500770031004B0061006C006B00
      79006C00500072006900730001004B0061006C006B0079006C00500072006900
      73000100010001000D000A006100630050007200690063006500470072006F00
      7500700073000100410064006D0069006E006900730074007200650072006100
      2000700072006900730067007200750070007000650072000100010001000D00
      0A0061006300410064006400530065006C006500630074006500640050007200
      6F006400750063007400730054006F0050007200690063006500470072006F00
      750070000100540069006C006C00640065006C00610020006D00610072006B00
      65007200610064006500200072006100640065007200200065006E0020007000
      720069007300670072007500700070000100010001000D000A00610063005200
      6500660072006500730068000100550070007000640061007400650072006100
      0100010001000D000A0061006300530061007600650054006F00530074006100
      6E00640061007200640050007200690063006500470072006F00750070000100
      4B0061006C0079006C0065007200610020006D006500640065006C0070007200
      690073000100010001000D000A00610063005000720069006E00740054006100
      62006C006500010053006B007200690076002000750074000100010001000D00
      0A0061006300530068006F0077005000610063006B0061006700650043006F00
      730074000100560069007300610020006B006F00730074006E00610064006500
      720020007000650072002000700061006B00650074000100010001000D000A00
      6100630043006F00700079004B0061006C006B0079006C005000720069007300
      01004B006F007000690065007200610020006B0061006C006B0079006C007000
      7200690073000100010001000D000A006400780043006F006D0070006F006E00
      65006E0074005000720069006E0074006500720031004C0069006E006B003100
      01004E00650077005200650070006F00720074000100010001000D000A007300
      7400480069006E00740073005F0055006E00690063006F00640065000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A007300740046006F006E0074007300
      5F0055006E00690063006F00640065000D000A00540066004300720065006100
      7400650053006900630050007200690063006500470072006F00750070007300
      01004D0053002000530061006E00730020005300650072006900660001004D00
      53002000530061006E0073002000530065007200690066000100540061006800
      6F006D0061000D000A006400780043006F006D0070006F006E0065006E007400
      5000720069006E0074006500720031004C0069006E006B003100010054006900
      6D006500730020004E0065007700200052006F006D0061006E00010001005400
      610068006F006D0061000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      4900440053005F0031000100540069006C006C00640065006C00610020007000
      72006F00640075006B0074006500720020007000720069007300670072007500
      70007000650072002E0020004C00610067006500720069006E00760065006E00
      74006500720069006E00670020006E00720020000100010001000D000A004900
      440053005F003400010049006E00760065006E0074006500720069006E006700
      73007600E4007200640065000100010001000D000A004900440053005F003500
      01004C00F60070006E0072003A0020000100010001000D000A00490044005300
      5F003600010049006E00760065006E0074006500720069006E00670073006400
      6100740075006D003A0020000100010001000D000A00730074004F0074006800
      6500720053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A006400780043006F006D0070006F006E0065006E00740050007200
      69006E0074006500720031004C0069006E006B0031002E004400650073006900
      67006E0065007200430061007000740069006F006E00010046006F0072006D00
      6100740020005200650070006F0072007400010001000D000A00730074004300
      6F006C006C0065006300740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400430068006100720053006500740073005F005500
      6E00690063006F00640065000D000A0054006600430072006500610074006500
      53006900630050007200690063006500470072006F0075007000730001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      6400780043006F006D0070006F006E0065006E0074005000720069006E007400
      6500720031004C0069006E006B0031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00}
  end
end
