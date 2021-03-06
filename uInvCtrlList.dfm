object fInvCtrlList: TfInvCtrlList
  Left = 216
  Top = 105
  Caption = 'Inventeringar'
  ClientHeight = 511
  ClientWidth = 918
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdInvCtrlList: TcxGrid
    Left = 0
    Top = 57
    Width = 918
    Height = 401
    Align = alClient
    TabOrder = 0
    object grdInvCtrlListDBTableView1: TcxGridDBTableView
      OnDblClick = grdInvCtrlListDBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmInvCtrl.ds_InvCtrlList
      DataController.KeyFieldNames = 'INVENTERINGSNR'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdInvCtrlListDBTableView1Note: TcxGridDBColumn
        DataBinding.FieldName = 'NAMN'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 192
      end
      object grdInvCtrlListDBTableView1Status: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 99
      end
      object grdInvCtrlListDBTableView1IC_grpno: TcxGridDBColumn
        DataBinding.FieldName = 'INVENTERINGSNR'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        SortIndex = 0
        SortOrder = soDescending
        Width = 106
      end
      object grdInvCtrlListDBTableView1Inventeringsdatum: TcxGridDBColumn
        DataBinding.FieldName = 'INVENTERINGSDATUM'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 159
      end
      object grdInvCtrlListDBTableView1MaxDatum: TcxGridDBColumn
        DataBinding.FieldName = 'MAXDATUM'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 92
      end
      object grdInvCtrlListDBTableView1Lager: TcxGridDBColumn
        DataBinding.FieldName = 'Lager'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 276
      end
      object grdInvCtrlListDBTableView1SkapadAv: TcxGridDBColumn
        DataBinding.FieldName = 'SkapadAv'
        PropertiesClassName = 'TcxLabelProperties'
      end
    end
    object grdInvCtrlListLevel1: TcxGridLevel
      GridView = grdInvCtrlListDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 458
    Width = 918
    Height = 53
    Align = alBottom
    TabOrder = 1
    object bbOK: TBitBtn
      Left = 376
      Top = 16
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object bbCancel: TBitBtn
      Left = 464
      Top = 16
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 918
    Height = 57
    Align = alTop
    TabOrder = 2
    object deEndPeriod: TcxDBDateEdit
      Left = 304
      Top = 5
      DataBinding.DataField = 'EndPeriod'
      DataBinding.DataSource = dsUserProp
      Properties.Kind = ckDateTime
      TabOrder = 0
      Width = 161
    end
    object deStartPeriod: TcxDBDateEdit
      Left = 120
      Top = 5
      DataBinding.DataField = 'StartPeriod'
      DataBinding.DataSource = dsUserProp
      Properties.Kind = ckDateTime
      TabOrder = 1
      Width = 161
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 9
      Caption = 'Urval p'#229' maxdatum:'
    end
    object cxButton1: TcxButton
      Left = 519
      Top = 5
      Width = 90
      Height = 47
      Action = acRefreshList
      OptionsImage.Layout = blGlyphTop
      TabOrder = 3
    end
  end
  object mtUserProp: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 152
    Top = 328
    object mtUserPropVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtUserPropOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object mtUserPropPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtUserPropLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtUserPropInputOption: TIntegerField
      FieldName = 'InputOption'
    end
    object mtUserPropRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtUserPropRegDate: TDateTimeField
      FieldName = 'RegDate'
    end
    object mtUserPropCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
    end
    object mtUserPropRunNo: TIntegerField
      FieldName = 'RunNo'
    end
    object mtUserPropProducerNo: TIntegerField
      FieldName = 'ProducerNo'
    end
    object mtUserPropAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
    end
    object mtUserPropSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtUserPropLengthOption: TIntegerField
      FieldName = 'LengthOption'
    end
    object mtUserPropLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
    end
    object mtUserPropNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
    end
    object mtUserPropGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtUserPropBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
    end
    object mtUserPropLengthGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthGroup'
      LookupDataSet = dm_UserProps.cds_LengthGroup
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'LengthGroupNo'
      Lookup = True
    end
    object mtUserPropLIPName: TStringField
      FieldKind = fkLookup
      FieldName = 'LIPName'
      LookupDataSet = dm_UserProps.cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropPIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PIPNAME'
      LookupDataSet = dm_UserProps.cds_PIP
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropREGPOINT: TStringField
      FieldKind = fkLookup
      FieldName = 'REGPOINT'
      LookupDataSet = dm_UserProps.cds_RegPoint
      LookupKeyFields = 'RegistrationPointNo'
      LookupResultField = 'ProductionUnitName'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
    object mtUserPropPRODUCER: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUCER'
      LookupDataSet = dm_UserProps.cds_producer
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ProducerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropOWNER: TStringField
      FieldKind = fkLookup
      FieldName = 'OWNER'
      LookupDataSet = dm_UserProps.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropVERK: TStringField
      FieldKind = fkLookup
      FieldName = 'VERK'
      LookupDataSet = dm_UserProps.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VerkNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropRoleType: TIntegerField
      FieldName = 'RoleType'
    end
    object mtUserPropGradestamp: TStringField
      FieldKind = fkLookup
      FieldName = 'Gradestamp'
      LookupDataSet = dm_UserProps.cdsGradeStamps
      LookupKeyFields = 'GradeStampNo'
      LookupResultField = 'GradeStamp'
      KeyFields = 'GradeStampNo'
      Lookup = True
    end
    object mtUserPropBarcode: TStringField
      FieldKind = fkLookup
      FieldName = 'Barcode'
      LookupDataSet = dm_UserProps.cdsBarCodes
      LookupKeyFields = 'BarCodeNo'
      LookupResultField = 'BarCode'
      KeyFields = 'BarCodeNo'
      Lookup = True
    end
    object mtUserPropProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object mtUserPropProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtUserPropProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtUserPropLIPChange: TIntegerField
      FieldName = 'LIPChange'
    end
    object mtUserPropSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object mtUserPropVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object mtUserPropLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
    end
    object mtUserPropForm: TStringField
      FieldName = 'Form'
      Size = 50
    end
    object mtUserPropUserID: TIntegerField
      FieldName = 'UserID'
    end
    object mtUserPropLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
    end
    object mtUserPropSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtUserPropNOMTHICK: TFloatField
      FieldName = 'NOMTHICK'
    end
    object mtUserPropGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
    end
    object mtUserPropGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
    end
    object mtUserPropAgentNo: TIntegerField
      FieldName = 'AgentNo'
    end
    object mtUserPropShipperNo: TIntegerField
      FieldName = 'ShipperNo'
    end
    object mtUserPropStartPeriod: TDateTimeField
      FieldName = 'StartPeriod'
    end
    object mtUserPropEndPeriod: TDateTimeField
      FieldName = 'EndPeriod'
    end
    object mtUserPropFilter1: TStringField
      FieldName = 'Filter1'
      Size = 50
    end
    object mtUserPropFilter2: TStringField
      FieldName = 'Filter2'
      Size = 255
    end
  end
  object dsUserProp: TDataSource
    DataSet = mtUserProp
    Left = 152
    Top = 376
  end
  object ActionList1: TActionList
    Images = dmsConnector.Images2424
    Left = 392
    Top = 176
    object acRefreshList: TAction
      Caption = 'Uppdatera'
      ImageIndex = 0
      OnExecute = acRefreshListExecute
    end
  end
  object siLangLinked_fInvCtrlList: TsiLangLinked
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
    Top = 264
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660049006E0076004300740072006C004C0069007300
      7400010049006E00760065006E0074006500720069006E006700610072000100
      010001000D000A0067007200640049006E0076004300740072006C004C006900
      73007400440042005400610062006C006500560069006500770031004E006F00
      7400650001004E0041004D004E000100010001000D000A006700720064004900
      6E0076004300740072006C004C00690073007400440042005400610062006C00
      6500560069006500770031005300740061007400750073000100530054004100
      5400550053000100010001000D000A0067007200640049006E00760043007400
      72006C004C00690073007400440042005400610062006C006500560069006500
      77003100490043005F006700720070006E006F00010049004E00560045004E00
      54004500520049004E00470053004E0052000100010001000D000A0067007200
      640049006E0076004300740072006C004C006900730074004400420054006100
      62006C0065005600690065007700310049006E00760065006E00740065007200
      69006E006700730064006100740075006D00010049004E00560045004E005400
      4500520049004E004700530044004100540055004D000100010001000D000A00
      67007200640049006E0076004300740072006C004C0069007300740044004200
      5400610062006C006500560069006500770031004D0061007800440061007400
      75006D0001004D004100580044004100540055004D000100010001000D000A00
      67007200640049006E0076004300740072006C004C0069007300740044004200
      5400610062006C006500560069006500770031004C0061006700650072000100
      4C0061006700650072000100010001000D000A0067007200640049006E007600
      4300740072006C004C00690073007400440042005400610062006C0065005600
      690065007700310053006B00610070006100640041007600010053006B006100
      700061006400410076000100010001000D000A00620062004F004B0001004F00
      4B000100010001000D000A0062006200430061006E00630065006C0001004300
      61006E00630065006C000100010001000D000A00630078004C00610062006500
      6C003100010055007200760061006C0020007000E50020006D00610078006400
      6100740075006D003A000100010001000D000A00610063005200650066007200
      6500730068004C00690073007400010055007000700064006100740065007200
      61000100010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      6D0074005500730065007200500072006F0070005600650072006B004E006F00
      01005600650072006B004E006F00010001000D000A006D007400550073006500
      7200500072006F0070004F0077006E00650072004E006F0001004F0077006E00
      650072004E006F00010001000D000A006D007400550073006500720050007200
      6F0070005000490050004E006F0001005000490050004E006F00010001000D00
      0A006D0074005500730065007200500072006F0070004C00490050004E006F00
      01004C00490050004E006F00010001000D000A006D0074005500730065007200
      500072006F00700049006E007000750074004F007000740069006F006E000100
      49006E007000750074004F007000740069006F006E00010001000D000A006D00
      74005500730065007200500072006F00700052006500670050006F0069006E00
      74004E006F00010052006500670050006F0069006E0074004E006F0001000100
      0D000A006D0074005500730065007200500072006F0070005200650067004400
      61007400650001005200650067004400610074006500010001000D000A006D00
      74005500730065007200500072006F00700043006F0070007900500063007300
      010043006F0070007900500063007300010001000D000A006D00740055007300
      65007200500072006F007000520075006E004E006F000100520075006E004E00
      6F00010001000D000A006D0074005500730065007200500072006F0070005000
      72006F00640075006300650072004E006F000100500072006F00640075006300
      650072004E006F00010001000D000A006D007400550073006500720050007200
      6F0070004100750074006F0043006F006C005700690064007400680001004100
      750074006F0043006F006C0057006900640074006800010001000D000A006D00
      74005500730065007200500072006F00700053007500700070006C0069006500
      720043006F0064006500010053007500700070006C0069006500720043006F00
      64006500010001000D000A006D0074005500730065007200500072006F007000
      4C0065006E006700740068004F007000740069006F006E0001004C0065006E00
      6700740068004F007000740069006F006E00010001000D000A006D0074005500
      730065007200500072006F0070004C0065006E00670074006800470072006F00
      750070004E006F0001004C0065006E00670074006800470072006F0075007000
      4E006F00010001000D000A006D0074005500730065007200500072006F007000
      4E00650077004900740065006D0052006F00770001004E006500770049007400
      65006D0052006F007700010001000D000A006D00740055007300650072005000
      72006F007000470072006100640065005300740061006D0070004E006F000100
      470072006100640065005300740061006D0070004E006F00010001000D000A00
      6D0074005500730065007200500072006F00700042006100720043006F006400
      65004E006F00010042006100720043006F00640065004E006F00010001000D00
      0A006D0074005500730065007200500072006F0070004C0065006E0067007400
      6800470072006F007500700001004C0065006E00670074006800470072006F00
      75007000010001000D000A006D0074005500730065007200500072006F007000
      4C00490050004E0061006D00650001004C00490050004E0061006D0065000100
      01000D000A006D0074005500730065007200500072006F007000500049005000
      4E0041004D00450001005000490050004E0041004D004500010001000D000A00
      6D0074005500730065007200500072006F00700052004500470050004F004900
      4E005400010052004500470050004F0049004E005400010001000D000A006D00
      74005500730065007200500072006F007000500052004F004400550043004500
      52000100500052004F0044005500430045005200010001000D000A006D007400
      5500730065007200500072006F0070004F0057004E004500520001004F005700
      4E0045005200010001000D000A006D0074005500730065007200500072006F00
      70005600450052004B0001005600450052004B00010001000D000A006D007400
      5500730065007200500072006F00700052006F006C0065005400790070006500
      010052006F006C0065005400790070006500010001000D000A006D0074005500
      730065007200500072006F007000470072006100640065007300740061006D00
      70000100470072006100640065007300740061006D007000010001000D000A00
      6D0074005500730065007200500072006F00700042006100720063006F006400
      6500010042006100720063006F0064006500010001000D000A006D0074005500
      730065007200500072006F007000500072006F00640075006300740044006500
      73006300720069007000740069006F006E000100500072006F00640075006300
      74004400650073006300720069007000740069006F006E00010001000D000A00
      6D0074005500730065007200500072006F007000500072006F00640075006300
      74004E006F000100500072006F0064007500630074004E006F00010001000D00
      0A006D0074005500730065007200500072006F007000500072006F0064007500
      63007400470072006F00750070004E006F000100500072006F00640075006300
      7400470072006F00750070004E006F00010001000D000A006D00740055007300
      65007200500072006F0070004C00490050004300680061006E00670065000100
      4C00490050004300680061006E0067006500010001000D000A006D0074005500
      730065007200500072006F007000530061006C00650073005200650067006900
      6F006E004E006F000100530061006C006500730052006500670069006F006E00
      4E006F00010001000D000A006D0074005500730065007200500072006F007000
      56006F006C0075006D00650055006E00690074004E006F00010056006F006C00
      75006D00650055006E00690074004E006F00010001000D000A006D0074005500
      730065007200500072006F0070004C0065006E0067007400680046006F007200
      6D00610074004E006F0001004C0065006E0067007400680046006F0072006D00
      610074004E006F00010001000D000A006D007400550073006500720050007200
      6F00700046006F0072006D00010046006F0072006D00010001000D000A006D00
      74005500730065007200500072006F0070005500730065007200490044000100
      550073006500720049004400010001000D000A006D0074005500730065007200
      500072006F0070004C0065006E0067007400680056006F006C0055006E006900
      74004E006F0001004C0065006E0067007400680056006F006C0055006E006900
      74004E006F00010001000D000A006D0074005500730065007200500072006F00
      700053007500720066006100630069006E0067004E006F000100530075007200
      66006100630069006E0067004E006F00010001000D000A006D00740055007300
      65007200500072006F0070004E004F004D0054004800490043004B0001004E00
      4F004D0054004800490043004B00010001000D000A006D007400550073006500
      7200500072006F007000470072006F00750070004200790042006F0078000100
      470072006F00750070004200790042006F007800010001000D000A006D007400
      5500730065007200500072006F007000470072006F0075007000530075006D00
      6D006100720079000100470072006F0075007000530075006D006D0061007200
      7900010001000D000A006D0074005500730065007200500072006F0070004100
      670065006E0074004E006F0001004100670065006E0074004E006F0001000100
      0D000A006D0074005500730065007200500072006F0070005300680069007000
      7000650072004E006F00010053006800690070007000650072004E006F000100
      01000D000A006D0074005500730065007200500072006F007000530074006100
      7200740050006500720069006F00640001005300740061007200740050006500
      720069006F006400010001000D000A006D007400550073006500720050007200
      6F00700045006E00640050006500720069006F006400010045006E0064005000
      6500720069006F006400010001000D000A006D00740055007300650072005000
      72006F007000460069006C0074006500720031000100460069006C0074006500
      72003100010001000D000A006D0074005500730065007200500072006F007000
      460069006C0074006500720032000100460069006C0074006500720032000100
      01000D000A007300740046006F006E00740073005F0055006E00690063006F00
      640065000D000A005400660049006E0076004300740072006C004C0069007300
      740001004D0053002000530061006E0073002000530065007200690066000100
      4D0053002000530061006E007300200053006500720069006600010054006100
      68006F006D0061000D000A00730074004D0075006C00740069004C0069006E00
      650073005F0055006E00690063006F00640065000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      74004F00740068006500720053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A005400660049006E0076004300740072006C004C006900730074000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00}
  end
end
