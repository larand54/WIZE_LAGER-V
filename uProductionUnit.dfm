object frmProductionUnit: TfrmProductionUnit
  Left = 198
  Top = 106
  Caption = 'M'#228'tpunkter verk'
  ClientHeight = 433
  ClientWidth = 1134
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1134
    Height = 90
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bbInsert: TBitBtn
      Left = 30
      Top = 49
      Width = 92
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'L'#228'gg till rad'
      TabOrder = 0
      OnClick = bbInsertClick
    end
    object bbRemove: TBitBtn
      Left = 138
      Top = 49
      Width = 92
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Ta bort rad'
      TabOrder = 1
      OnClick = bbRemoveClick
    end
    object bbCancelRow: TBitBtn
      Left = 236
      Top = 49
      Width = 93
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #197'ngra rad'
      TabOrder = 2
      OnClick = bbCancelRowClick
    end
    object bbApplyChanges: TBitBtn
      Left = 512
      Top = 49
      Width = 112
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Spara '#228'ndringar'
      TabOrder = 3
      OnClick = bbApplyChangesClick
    end
    object bbCancelChanges: TBitBtn
      Left = 640
      Top = 49
      Width = 110
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #197'ngra '#228'ndringar'
      TabOrder = 4
      OnClick = bbCancelChangesClick
    end
    object cmbClients: TcxComboBox
      Left = 30
      Top = 10
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 5
      Text = 'Select client'
      Width = 148
    end
  end
  object grdProductionUnits: TcxGrid
    Left = 0
    Top = 90
    Width = 1134
    Height = 343
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 328
    object grdProductionUnitsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsContact.ds_ProductionUnit
      DataController.KeyFieldNames = 'ClientNo;RegPoint'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdProductionUnitsDBTableView1ProductionUnitNo: TcxGridDBColumn
        DataBinding.FieldName = 'ProductionUnitNo'
      end
      object grdProductionUnitsDBTableView1ProductionUnitName: TcxGridDBColumn
        DataBinding.FieldName = 'ProductionUnitName'
      end
      object grdProductionUnitsDBTableView1ClientNo: TcxGridDBColumn
        DataBinding.FieldName = 'ClientNo'
      end
      object grdProductionUnitsDBTableView1SequenceNo: TcxGridDBColumn
        DataBinding.FieldName = 'SequenceNo'
      end
      object grdProductionUnitsDBTableView1CreatedUser: TcxGridDBColumn
        DataBinding.FieldName = 'CreatedUser'
      end
      object grdProductionUnitsDBTableView1ModifiedUser: TcxGridDBColumn
        DataBinding.FieldName = 'ModifiedUser'
      end
      object grdProductionUnitsDBTableView1DateCreated: TcxGridDBColumn
        DataBinding.FieldName = 'DateCreated'
      end
      object grdProductionUnitsDBTableView1LogicalInventoryPointNo: TcxGridDBColumn
        DataBinding.FieldName = 'LogicalInventoryPointNo'
      end
      object grdProductionUnitsDBTableView1RegistrationPointNo: TcxGridDBColumn
        DataBinding.FieldName = 'RegistrationPointNo'
      end
      object grdProductionUnitsDBTableView1RegPoint: TcxGridDBColumn
        DataBinding.FieldName = 'RegPoint'
      end
      object grdProductionUnitsDBTableView1OnSticks: TcxGridDBColumn
        DataBinding.FieldName = 'OnSticks'
      end
      object grdProductionUnitsDBTableView1SurfacingNo: TcxGridDBColumn
        DataBinding.FieldName = 'SurfacingNo'
      end
      object grdProductionUnitsDBTableView1DIM_DIV: TcxGridDBColumn
        DataBinding.FieldName = 'DIM_DIV'
      end
    end
    object grdProductionUnitsLevel1: TcxGridLevel
      GridView = grdProductionUnitsDBTableView1
    end
  end
  object siLangLinked_frmProductionUnit: TsiLangLinked
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
    Left = 456
    Top = 176
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D00500072006F0064007500630074006900
      6F006E0055006E006900740001004D00E4007400700075006E006B0074006500
      720020007600650072006B000100010001000D000A006200620049006E007300
      65007200740001004C00E400670067002000740069006C006C00200072006100
      64000100010001000D000A0062006200520065006D006F007600650001005400
      6100200062006F007200740020007200610064000100010001000D000A006200
      6200430061006E00630065006C0052006F0077000100C5006E00670072006100
      20007200610064000100010001000D000A00620062004100700070006C007900
      4300680061006E006700650073000100530070006100720061002000E4006E00
      6400720069006E006700610072000100010001000D000A006200620043006100
      6E00630065006C004300680061006E006700650073000100C5006E0067007200
      61002000E4006E006400720069006E006700610072000100010001000D000A00
      670072006400500072006F00640075006300740069006F006E0055006E006900
      74007300440042005400610062006C0065005600690065007700310050007200
      6F00640075006300740069006F006E0055006E00690074004E006F0001005000
      72006F00640075006300740069006F006E0055006E00690074004E006F000100
      010001000D000A00670072006400500072006F00640075006300740069006F00
      6E0055006E00690074007300440042005400610062006C006500560069006500
      77003100500072006F00640075006300740069006F006E0055006E0069007400
      4E0061006D0065000100500072006F00640075006300740069006F006E005500
      6E00690074004E0061006D0065000100010001000D000A006700720064005000
      72006F00640075006300740069006F006E0055006E0069007400730044004200
      5400610062006C0065005600690065007700310043006C00690065006E007400
      4E006F00010043006C00690065006E0074004E006F000100010001000D000A00
      670072006400500072006F00640075006300740069006F006E0055006E006900
      74007300440042005400610062006C0065005600690065007700310053006500
      7100750065006E00630065004E006F000100530065007100750065006E006300
      65004E006F000100010001000D000A00670072006400500072006F0064007500
      6300740069006F006E0055006E00690074007300440042005400610062006C00
      6500560069006500770031004300720065006100740065006400550073006500
      7200010043007200650061007400650064005500730065007200010001000100
      0D000A00670072006400500072006F00640075006300740069006F006E005500
      6E00690074007300440042005400610062006C00650056006900650077003100
      4D006F00640069006600690065006400550073006500720001004D006F006400
      6900660069006500640055007300650072000100010001000D000A0067007200
      6400500072006F00640075006300740069006F006E0055006E00690074007300
      440042005400610062006C006500560069006500770031004400610074006500
      4300720065006100740065006400010044006100740065004300720065006100
      7400650064000100010001000D000A00670072006400500072006F0064007500
      6300740069006F006E0055006E00690074007300440042005400610062006C00
      6500560069006500770031004C006F0067006900630061006C0049006E007600
      65006E0074006F007200790050006F0069006E0074004E006F0001004C006F00
      67006900630061006C0049006E00760065006E0074006F007200790050006F00
      69006E0074004E006F000100010001000D000A00670072006400500072006F00
      640075006300740069006F006E0055006E006900740073004400420054006100
      62006C0065005600690065007700310052006500670069007300740072006100
      740069006F006E0050006F0069006E0074004E006F0001005200650067006900
      7300740072006100740069006F006E0050006F0069006E0074004E006F000100
      010001000D000A00670072006400500072006F00640075006300740069006F00
      6E0055006E00690074007300440042005400610062006C006500560069006500
      7700310052006500670050006F0069006E007400010052006500670050006F00
      69006E0074000100010001000D000A00670072006400500072006F0064007500
      6300740069006F006E0055006E00690074007300440042005400610062006C00
      6500560069006500770031004F006E0053007400690063006B00730001004F00
      6E0053007400690063006B0073000100010001000D000A006700720064005000
      72006F00640075006300740069006F006E0055006E0069007400730044004200
      5400610062006C00650056006900650077003100530075007200660061006300
      69006E0067004E006F00010053007500720066006100630069006E0067004E00
      6F000100010001000D000A00670072006400500072006F006400750063007400
      69006F006E0055006E00690074007300440042005400610062006C0065005600
      6900650077003100440049004D005F004400490056000100440049004D005F00
      4400490056000100010001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A005400660072006D00500072006F00640075006300740069006F00
      6E0055006E006900740001004D0053002000530061006E007300200053006500
      72006900660001004D0053002000530061006E00730020005300650072006900
      660001005400610068006F006D0061000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A004900440053005F00300001005600E4006C006A00200065007400
      740020007600650072006B000100010001000D000A00730074004F0074006800
      6500720053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A0063006D00620043006C00690065006E00740073002E0054006500
      780074000100530065006C00650063007400200063006C00690065006E007400
      010001000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      660072006D00500072006F00640075006300740069006F006E0055006E006900
      74000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00}
  end
end
