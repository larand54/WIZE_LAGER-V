object fAOUser: TfAOUser
  Left = 295
  Top = 106
  Caption = 'Inst'#228'llningar'
  ClientHeight = 422
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 617
    Height = 381
    Align = alClient
    TabOrder = 0
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 615
      Height = 27
      Align = alTop
      Caption = 'Mina produktionsenheter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object grdAOUserRP: TcxGrid
      Left = 1
      Top = 60
      Width = 615
      Height = 320
      Align = alClient
      TabOrder = 1
      object grdAOUserRPDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmcOrder.ds_AOUserRP
        DataController.KeyFieldNames = 'ProducerNo;RegPointNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdAOUserRPDBTableView1Producent: TcxGridDBColumn
          DataBinding.FieldName = 'Producent'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ClientNo'
          Properties.ListColumns = <
            item
              FieldName = 'SearchName'
            end>
          Properties.ListOptions.ShowHeader = False
          Options.Filtering = False
          Width = 197
        end
        object grdAOUserRPDBTableView1Mtpunkt: TcxGridDBColumn
          DataBinding.FieldName = 'M'#228'tpunkt'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'RegPointNo'
          Properties.ListColumns = <
            item
              FieldName = 'RegPointName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.OnCloseUp = grdAOUserRPDBTableView1MtpunktPropertiesCloseUp
          Properties.OnInitPopup = grdAOUserRPDBTableView1MtpunktPropertiesInitPopup
          Options.Filtering = False
        end
        object grdAOUserRPDBTableView1VoEnhet: TcxGridDBColumn
          Caption = 'VoEnhet'
          DataBinding.FieldName = 'VoEnhet'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'VolumeUnit_No'
          Properties.ListColumns = <
            item
              FieldName = 'VolumeUnitName'
            end>
          Options.Filtering = False
        end
        object grdAOUserRPDBTableView1StandardRegPoint: TcxGridDBColumn
          DataBinding.FieldName = 'StandardRegPoint'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.Filtering = False
          Width = 97
        end
        object grdAOUserRPDBTableView1UserID: TcxGridDBColumn
          DataBinding.FieldName = 'UserID'
          Visible = False
        end
        object grdAOUserRPDBTableView1ProducerNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProducerNo'
          Visible = False
        end
        object grdAOUserRPDBTableView1RegPointNo: TcxGridDBColumn
          DataBinding.FieldName = 'RegPointNo'
          Visible = False
        end
        object grdAOUserRPDBTableView1DateCreated: TcxGridDBColumn
          DataBinding.FieldName = 'DateCreated'
          Visible = False
        end
        object grdAOUserRPDBTableView1DateModified: TcxGridDBColumn
          DataBinding.FieldName = 'DateModified'
          Visible = False
        end
        object grdAOUserRPDBTableView1ModifiedUser: TcxGridDBColumn
          DataBinding.FieldName = 'ModifiedUser'
          Visible = False
        end
      end
      object grdAOUserRPLevel1: TcxGridLevel
        GridView = grdAOUserRPDBTableView1
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 28
      Width = 615
      Height = 32
      Align = alTop
      TabOrder = 2
      object BitBtn2: TBitBtn
        Left = 8
        Top = 4
        Width = 75
        Height = 25
        Action = acAdd
        Caption = 'L'#228'gg till'
        TabOrder = 0
      end
      object BitBtn3: TBitBtn
        Left = 82
        Top = 4
        Width = 75
        Height = 25
        Action = acDelete
        Caption = 'Ta bort'
        TabOrder = 1
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 381
    Width = 617
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 272
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object ActionList1: TActionList
    Left = 192
    Top = 259
    object acAdd: TAction
      Caption = 'L'#228'gg till'
      OnExecute = acAddExecute
    end
    object acDelete: TAction
      Caption = 'Ta bort'
      OnExecute = acDeleteExecute
    end
  end
  object siLangLinked_fAOUser: TsiLangLinked
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
    Left = 304
    Top = 216
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660041004F005500730065007200010049006E007300
      7400E4006C006C006E0069006E006700610072000100010001000D000A005000
      61006E0065006C00350001004D0069006E0061002000700072006F0064007500
      6B00740069006F006E00730065006E0068006500740065007200010001000100
      0D000A0067007200640041004F00550073006500720052005000440042005400
      610062006C00650056006900650077003100500072006F006400750063006500
      6E0074000100500072006F0064007500630065006E0074000100010001000D00
      0A0067007200640041004F005500730065007200520050004400420054006100
      62006C006500560069006500770031004D007400700075006E006B0074000100
      4D00E4007400700075006E006B0074000100010001000D000A00670072006400
      41004F00550073006500720052005000440042005400610062006C0065005600
      690065007700310056006F0045006E00680065007400010056006F0045006E00
      6800650074000100010001000D000A0067007200640041004F00550073006500
      720052005000440042005400610062006C006500560069006500770031005300
      740061006E00640061007200640052006500670050006F0069006E0074000100
      5300740061006E00640061007200640052006500670050006F0069006E007400
      0100010001000D000A0067007200640041004F00550073006500720052005000
      440042005400610062006C006500560069006500770031005500730065007200
      4900440001005500730065007200490044000100010001000D000A0067007200
      640041004F00550073006500720052005000440042005400610062006C006500
      56006900650077003100500072006F00640075006300650072004E006F000100
      500072006F00640075006300650072004E006F000100010001000D000A006700
      7200640041004F00550073006500720052005000440042005400610062006C00
      65005600690065007700310052006500670050006F0069006E0074004E006F00
      010052006500670050006F0069006E0074004E006F000100010001000D000A00
      67007200640041004F0055007300650072005200500044004200540061006200
      6C00650056006900650077003100440061007400650043007200650061007400
      6500640001004400610074006500430072006500610074006500640001000100
      01000D000A0067007200640041004F0055007300650072005200500044004200
      5400610062006C0065005600690065007700310044006100740065004D006F00
      640069006600690065006400010044006100740065004D006F00640069006600
      6900650064000100010001000D000A0067007200640041004F00550073006500
      720052005000440042005400610062006C006500560069006500770031004D00
      6F00640069006600690065006400550073006500720001004D006F0064006900
      660069006500640055007300650072000100010001000D000A00420069007400
      420074006E00310001004F004B000100010001000D000A006100630041006400
      640001004C00E400670067002000740069006C006C000100010001000D000A00
      61006300440065006C00650074006500010054006100200062006F0072007400
      0100010001000D000A0073007400480069006E00740073005F0055006E006900
      63006F00640065000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      5400660041004F00550073006500720001004D0053002000530061006E007300
      20005300650072006900660001004D0053002000530061006E00730020005300
      650072006900660001005400610068006F006D0061000D000A00500061006E00
      65006C00350001004D0053002000530061006E00730020005300650072006900
      6600010001005400610068006F006D0061000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A0067007200640041004F0055007300650072005200500044004200
      5400610062006C00650056006900650077003100500072006F00640075006300
      65006E0074002E00500072006F0070006500720074006900650073002E004C00
      69007300740043006F006C0075006D006E0073005B0030005D002E0043006100
      7000740069006F006E0001005300650061007200630068004E0061006D006500
      010001000D000A0067007200640041004F005500730065007200520050004400
      42005400610062006C006500560069006500770031004D007400700075006E00
      6B0074002E00500072006F0070006500720074006900650073002E004C006900
      7300740043006F006C0075006D006E0073005B0030005D002E00430061007000
      740069006F006E00010052006500670050006F0069006E0074004E0061006D00
      6500010001000D000A0067007200640041004F00550073006500720052005000
      440042005400610062006C0065005600690065007700310056006F0045006E00
      6800650074002E00500072006F0070006500720074006900650073002E004C00
      69007300740043006F006C0075006D006E0073005B0030005D002E0043006100
      7000740069006F006E00010056006F006C0075006D00650055006E0069007400
      4E0061006D006500010001000D000A0073007400430068006100720053006500
      740073005F0055006E00690063006F00640065000D000A005400660041004F00
      55007300650072000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00500061006E0065006C0035000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A00}
  end
end
