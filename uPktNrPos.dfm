object fPktNrPos: TfPktNrPos
  Left = 177
  Top = 136
  Caption = 'Leverant'#246'rspaketnrkoder '
  ClientHeight = 427
  ClientWidth = 905
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bbApplyChanges: TBitBtn
      Left = 16
      Top = 16
      Width = 91
      Height = 25
      Caption = 'Spara '#228'ndringar'
      TabOrder = 0
      OnClick = bbApplyChangesClick
    end
    object bbCancelChanges: TBitBtn
      Left = 120
      Top = 16
      Width = 89
      Height = 25
      Caption = #197'ngra '#228'ndringar'
      TabOrder = 1
      OnClick = bbCancelChangesClick
    end
  end
  object grdLevPaketkoder: TcxGrid
    Left = 0
    Top = 57
    Width = 905
    Height = 370
    Align = alClient
    TabOrder = 1
    object grdLevPaketkoderDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_Verk
      DataController.KeyFieldNames = 'ClientNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdLevPaketkoderDBTableView1ClientNo: TcxGridDBColumn
        DataBinding.FieldName = 'ClientNo'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 61
      end
      object grdLevPaketkoderDBTableView1ROLL: TcxGridDBColumn
        DataBinding.FieldName = 'ROLL'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 117
      end
      object grdLevPaketkoderDBTableView1ClientName: TcxGridDBColumn
        DataBinding.FieldName = 'ClientName'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 124
      end
      object grdLevPaketkoderDBTableView1PktNrLevKod: TcxGridDBColumn
        DataBinding.FieldName = 'PktNrLevKod'
        Width = 73
      end
      object grdLevPaketkoderDBTableView1PaketNoPos: TcxGridDBColumn
        DataBinding.FieldName = 'PaketNoPos'
        Width = 133
      end
      object grdLevPaketkoderDBTableView1PaketNoLength: TcxGridDBColumn
        DataBinding.FieldName = 'PaketNoLength'
        Width = 135
      end
      object grdLevPaketkoderDBTableView1SupplierCodePos: TcxGridDBColumn
        DataBinding.FieldName = 'SupplierCodePos'
        Width = 133
      end
      object grdLevPaketkoderDBTableView1SupplierCodeLength: TcxGridDBColumn
        DataBinding.FieldName = 'SupplierCodeLength'
        Width = 135
      end
    end
    object grdLevPaketkoderLevel1: TcxGridLevel
      GridView = grdLevPaketkoderDBTableView1
    end
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 328
    Top = 216
  end
  object cds_Verk: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select C.ClientNo, C.ClientName, C.PktNrLevKod,'
      
        'C.PaketNoPos, C.PaketNoLength, C.SupplierCodePos, C.SupplierCode' +
        'Length,'
      'RT.RoleDescription AS ROLL'
      ''
      'FROM   dbo.Client        C'
      '       INNER JOIN dbo.ClientRole    R ON R.ClientNo = C.ClientNo'
      '       INNER JOIN dbo.RoleType    RT ON RT.RoleType = R.RoleType'
      ''
      'WHERE RT.RoleType = 9       '
      ''
      'Order by C.clientName'
      '')
    Left = 328
    Top = 112
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      ProviderFlags = []
      Size = 80
    end
    object cds_VerkPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_VerkPaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
      Origin = 'PaketNoPos'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VerkPaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
      Origin = 'PaketNoLength'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VerkSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
      Origin = 'SupplierCodePos'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VerkSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
      Origin = 'SupplierCodeLength'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VerkROLL: TStringField
      FieldName = 'ROLL'
      Origin = 'ROLL'
      ProviderFlags = []
      FixedChar = True
    end
  end
  object siLangLinked_fPktNrPos: TsiLangLinked
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
    Left = 448
    Top = 216
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660050006B0074004E00720050006F00730001004C00
      650076006500720061006E007400F60072007300700061006B00650074006E00
      72006B006F0064006500720020000100010001000D000A006200620041007000
      70006C0079004300680061006E00670065007300010053007000610072006100
      2000E4006E006400720069006E006700610072000100010001000D000A006200
      6200430061006E00630065006C004300680061006E006700650073000100C500
      6E006700720061002000E4006E006400720069006E0067006100720001000100
      01000D000A006700720064004C0065007600500061006B00650074006B006F00
      640065007200440042005400610062006C006500560069006500770031004300
      6C00690065006E0074004E006F00010043006C00690065006E0074004E006F00
      0100010001000D000A006700720064004C0065007600500061006B0065007400
      6B006F00640065007200440042005400610062006C0065005600690065007700
      310052004F004C004C00010052004F004C004C000100010001000D000A006700
      720064004C0065007600500061006B00650074006B006F006400650072004400
      42005400610062006C0065005600690065007700310043006C00690065006E00
      74004E0061006D006500010043006C00690065006E0074004E0061006D006500
      0100010001000D000A006700720064004C0065007600500061006B0065007400
      6B006F00640065007200440042005400610062006C0065005600690065007700
      310050006B0074004E0072004C00650076004B006F006400010050006B007400
      4E0072004C00650076004B006F0064000100010001000D000A00670072006400
      4C0065007600500061006B00650074006B006F00640065007200440042005400
      610062006C00650056006900650077003100500061006B00650074004E006F00
      50006F0073000100500061006B00650074004E006F0050006F00730001000100
      01000D000A006700720064004C0065007600500061006B00650074006B006F00
      640065007200440042005400610062006C006500560069006500770031005000
      61006B00650074004E006F004C0065006E006700740068000100500061006B00
      650074004E006F004C0065006E006700740068000100010001000D000A006700
      720064004C0065007600500061006B00650074006B006F006400650072004400
      42005400610062006C0065005600690065007700310053007500700070006C00
      69006500720043006F006400650050006F007300010053007500700070006C00
      69006500720043006F006400650050006F0073000100010001000D000A006700
      720064004C0065007600500061006B00650074006B006F006400650072004400
      42005400610062006C0065005600690065007700310053007500700070006C00
      69006500720043006F00640065004C0065006E00670074006800010053007500
      700070006C0069006500720043006F00640065004C0065006E00670074006800
      0100010001000D000A0073007400480069006E00740073005F0055006E006900
      63006F00640065000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A006300
      640073005F005600650072006B0043006C00690065006E0074004E006F000100
      43006C00690065006E0074004E006F00010001000D000A006300640073005F00
      5600650072006B0043006C00690065006E0074004E0061006D00650001004300
      6C00690065006E0074004E0061006D006500010001000D000A00630064007300
      5F005600650072006B0050006B0074004E0072004C00650076004B006F006400
      010050006B0074004E0072004C00650076004B006F006400010001000D000A00
      6300640073005F005600650072006B00500061006B00650074004E006F005000
      6F0073000100500061006B00650074004E006F0050006F007300010001000D00
      0A006300640073005F005600650072006B00500061006B00650074004E006F00
      4C0065006E006700740068000100500061006B00650074004E006F004C006500
      6E00670074006800010001000D000A006300640073005F005600650072006B00
      53007500700070006C0069006500720043006F006400650050006F0073000100
      53007500700070006C0069006500720043006F006400650050006F0073000100
      01000D000A006300640073005F005600650072006B0053007500700070006C00
      69006500720043006F00640065004C0065006E00670074006800010053007500
      700070006C0069006500720043006F00640065004C0065006E00670074006800
      010001000D000A006300640073005F005600650072006B0052004F004C004C00
      010052004F004C004C00010001000D000A007300740046006F006E0074007300
      5F0055006E00690063006F00640065000D000A005400660050006B0074004E00
      720050006F00730001004D0053002000530061006E0073002000530065007200
      6900660001004D0053002000530061006E007300200053006500720069006600
      01005400610068006F006D0061000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A005400660050006B0074004E00720050006F0073000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00}
  end
end
