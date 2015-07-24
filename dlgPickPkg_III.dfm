object frmPackagePicker_III: TfrmPackagePicker_III
  Left = 218
  Top = 210
  ActiveControl = grdPkgDuplicates
  BorderIcons = [biHelp]
  Caption = 'V'#196'LJ ETT PAKET'
  ClientHeight = 245
  ClientWidth = 998
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 203
    Width = 998
    Height = 42
    Align = alBottom
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 421
      Top = 7
      Width = 66
      Height = 27
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TBitBtn
      Left = 499
      Top = 7
      Width = 66
      Height = 27
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 998
    Height = 203
    Align = alClient
    TabOrder = 1
    object grdPkgDuplicates: TcxGrid
      Left = 1
      Top = 1
      Width = 996
      Height = 201
      Align = alClient
      TabOrder = 0
      object grdPkgDuplicatesDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdPkgDuplicatesDBTableView1PackageNo: TcxGridDBColumn
          Caption = 'Paketnr'
          DataBinding.FieldName = 'PackageNo'
          Width = 67
        end
        object grdPkgDuplicatesDBTableView1SupplierCode: TcxGridDBColumn
          Caption = 'Lev.kod'
          DataBinding.FieldName = 'SupplierCode'
          Width = 55
        end
        object grdPkgDuplicatesDBTableView1ProductDisplayName: TcxGridDBColumn
          Caption = 'Produkt'
          DataBinding.FieldName = 'ProductDisplayName'
          SortIndex = 0
          SortOrder = soAscending
          Width = 242
        end
        object grdPkgDuplicatesDBTableView1LengthDescription: TcxGridDBColumn
          Caption = 'L'#228'ngdbeskrivning'
          DataBinding.FieldName = 'LengthDescription'
          Width = 127
        end
        object grdPkgDuplicatesDBTableView1LogicalInventoryName: TcxGridDBColumn
          Caption = 'Lagergrupp'
          DataBinding.FieldName = 'LogicalInventoryName'
          Width = 127
        end
        object grdPkgDuplicatesDBTableView1ClientName: TcxGridDBColumn
          Caption = #196'gare'
          DataBinding.FieldName = 'ClientName'
          Width = 132
        end
        object grdPkgDuplicatesDBTableView1PackageTypeNo: TcxGridDBColumn
          DataBinding.FieldName = 'PackageTypeNo'
          Width = 126
        end
        object grdPkgDuplicatesDBTableView1LIP: TcxGridDBColumn
          Caption = 'L'
          DataBinding.FieldName = 'LIP'
          Width = 126
        end
      end
      object grdPkgDuplicatesLevel1: TcxGridLevel
        GridView = grdPkgDuplicatesDBTableView1
      end
    end
  end
  object siLangLinked_frmPackagePicker_III: TsiLangLinked
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
    Left = 496
    Top = 128
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D005000610063006B006100670065005000
      690063006B00650072005F0049004900490001005600C4004C004A0020004500
      540054002000500041004B00450054000100010001000D000A00620074006E00
      4F004B0001004F004B000100010001000D000A00620074006E00430061006E00
      630065006C000100430061006E00630065006C000100010001000D000A006700
      7200640050006B0067004400750070006C006900630061007400650073004400
      42005400610062006C006500560069006500770031005000610063006B006100
      670065004E006F000100500061006B00650074006E0072000100010001000D00
      0A0067007200640050006B0067004400750070006C0069006300610074006500
      7300440042005400610062006C00650056006900650077003100530075007000
      70006C0069006500720043006F006400650001004C00650076002E006B006F00
      64000100010001000D000A0067007200640050006B0067004400750070006C00
      690063006100740065007300440042005400610062006C006500560069006500
      77003100500072006F00640075006300740044006900730070006C0061007900
      4E0061006D0065000100500072006F00640075006B0074000100010001000D00
      0A0067007200640050006B0067004400750070006C0069006300610074006500
      7300440042005400610062006C006500560069006500770031004C0065006E00
      6700740068004400650073006300720069007000740069006F006E0001004C00
      E4006E00670064006200650073006B007200690076006E0069006E0067000100
      010001000D000A0067007200640050006B0067004400750070006C0069006300
      6100740065007300440042005400610062006C00650056006900650077003100
      4C006F0067006900630061006C0049006E00760065006E0074006F0072007900
      4E0061006D00650001004C006100670065007200670072007500700070000100
      010001000D000A0067007200640050006B0067004400750070006C0069006300
      6100740065007300440042005400610062006C00650056006900650077003100
      43006C00690065006E0074004E0061006D0065000100C4006700610072006500
      0100010001000D000A0067007200640050006B0067004400750070006C006900
      63006100740065007300440042005400610062006C0065005600690065007700
      31005000610063006B0061006700650054007900700065004E006F0001005000
      610063006B0061006700650054007900700065004E006F000100010001000D00
      0A0067007200640050006B0067004400750070006C0069006300610074006500
      7300440042005400610062006C006500560069006500770031004C0049005000
      01004C000100010001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A005400660072006D005000610063006B00610067006500500069006300
      6B00650072005F0049004900490001004D0053002000530061006E0073002000
      530065007200690066000100010001000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A005400660072006D005000610063006B0061006700
      65005000690063006B00650072005F0049004900490001004400450046004100
      55004C0054005F0043004800410052005300450054000100010001000D000A00}
  end
end
