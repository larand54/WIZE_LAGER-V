object fUserProfiles: TfUserProfiles
  Left = 286
  Top = 97
  ActiveControl = teName
  Caption = 'Anv'#228'ndarprofiler'
  ClientHeight = 606
  ClientWidth = 1007
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1007
    Height = 57
    Align = alTop
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 9
      Top = 10
      Width = 105
      Height = 41
      Action = acNewProfile
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 120
      Top = 8
      Width = 105
      Height = 41
      Action = acDeleteProfile
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 231
      Top = 10
      Width = 105
      Height = 41
      Action = acSaveProfile
      TabOrder = 2
    end
  end
  object PanelStatus: TPanel
    Left = 0
    Top = 57
    Width = 1007
    Height = 72
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 18
      Width = 52
      Height = 13
      Caption = 'Profilnamn:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cxLabel2: TcxLabel
      Left = 272
      Top = 12
      Caption = 'Verk:'
    end
    object lcPRODUCER: TcxDBLookupComboBox
      Left = 368
      Top = 8
      DataBinding.DataField = 'Verk'
      DataBinding.DataSource = dmcSystem.ds_UserProfile
      Properties.DropDownWidth = 350
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 1
      Width = 153
    end
    object cxLabel3: TcxLabel
      Left = 8
      Top = 39
      Caption = 'Kund:'
    end
    object lcOwner: TcxDBLookupComboBox
      Left = 120
      Top = 38
      DataBinding.DataField = 'Kund'
      DataBinding.DataSource = dmcSystem.ds_UserProfile
      Properties.DropDownWidth = 350
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 3
      Width = 145
    end
    object lcPIP: TcxDBLookupComboBox
      Left = 368
      Top = 35
      DataBinding.DataField = 'PIP'
      DataBinding.DataSource = dmcSystem.ds_UserProfile
      Properties.KeyFieldNames = 'PIPNo'
      Properties.ListColumns = <
        item
          FieldName = 'ORT'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 4
      OnEnter = lcPIPEnter
      OnExit = lcPIPExit
      Width = 145
    end
    object cxLabel5: TcxLabel
      Left = 275
      Top = 39
      Caption = 'Lagerst'#228'lle:'
    end
    object lcLIP: TcxDBLookupComboBox
      Left = 635
      Top = 35
      DataBinding.DataField = 'LIP'
      DataBinding.DataSource = dmcSystem.ds_UserProfile
      Properties.KeyFieldNames = 'LIPNo'
      Properties.ListColumns = <
        item
          FieldName = 'LAGERGRUPP'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 5
      OnEnter = lcLIPEnter
      OnExit = lcLIPExit
      Width = 153
    end
    object cxLabel6: TcxLabel
      Left = 539
      Top = 39
      Caption = 'Lagergrupp:'
    end
    object teName: TcxDBTextEdit
      Left = 120
      Top = 8
      DataBinding.DataField = 'Name'
      DataBinding.DataSource = dmcSystem.ds_UserProfile
      TabOrder = 0
      Width = 145
    end
    object lcRawPIP: TcxDBLookupComboBox
      Left = 635
      Top = 8
      DataBinding.DataField = 'LoadingLocation'
      DataBinding.DataSource = dmcSystem.ds_UserProfile
      Properties.KeyFieldNames = 'PhysicalInventoryPointNo'
      Properties.ListColumns = <
        item
          FieldName = 'CityName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 2
      OnEnter = lcRawPIPEnter
      OnExit = lcRawPIPExit
      Width = 153
    end
    object cxLabel9: TcxLabel
      Left = 539
      Top = 14
      Caption = 'Lastst'#228'lle:'
    end
  end
  object grdProfiles: TcxGrid
    Left = 0
    Top = 129
    Width = 1007
    Height = 420
    Align = alClient
    TabOrder = 2
    object grdProfilesDBTableView1: TcxGridDBTableView
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
      DataController.DataSource = dmcSystem.ds_UserProfile
      DataController.KeyFieldNames = 'UserID;Form;Name'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdProfilesDBTableView1VerkNo: TcxGridDBColumn
        DataBinding.FieldName = 'VerkNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        Width = 60
      end
      object grdProfilesDBTableView1OwnerNo: TcxGridDBColumn
        DataBinding.FieldName = 'OwnerNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        Width = 54
      end
      object grdProfilesDBTableView1UserID: TcxGridDBColumn
        DataBinding.FieldName = 'UserID'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        Width = 39
      end
      object grdProfilesDBTableView1Form: TcxGridDBColumn
        Caption = 'Profilnamn'
        DataBinding.FieldName = 'Name'
        PropertiesClassName = 'TcxTextEditProperties'
        SortIndex = 0
        SortOrder = soAscending
        Width = 96
      end
      object grdProfilesDBTableView1Name: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        Width = 141
      end
      object grdProfilesDBTableView1Producer: TcxGridDBColumn
        DataBinding.FieldName = 'Verk'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ClientNo'
        Properties.ListColumns = <
          item
            FieldName = 'ClientName'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 154
      end
      object grdProfilesDBTableView1Owner: TcxGridDBColumn
        DataBinding.FieldName = 'Kund'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ClientNo'
        Properties.ListColumns = <
          item
            FieldName = 'ClientName'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 190
      end
      object grdProfilesDBTableView1NewItemRow: TcxGridDBColumn
        Caption = 'Standard'
        DataBinding.FieldName = 'NewItemRow'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 100
      end
      object grdProfilesDBTableView1PIPNo: TcxGridDBColumn
        DataBinding.FieldName = 'PIPNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
      object grdProfilesDBTableView1LIPNo: TcxGridDBColumn
        DataBinding.FieldName = 'LIPNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
      object grdProfilesDBTableView1RegPointNo: TcxGridDBColumn
        DataBinding.FieldName = 'RegPointNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
      object grdProfilesDBTableView1PIP: TcxGridDBColumn
        DataBinding.FieldName = 'PIP'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'PIPNo'
        Properties.ListColumns = <
          item
            FieldName = 'CITYNAME'
          end>
        Visible = False
      end
      object grdProfilesDBTableView1LIP: TcxGridDBColumn
        DataBinding.FieldName = 'LIP'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'LIPNo'
        Properties.ListColumns = <
          item
            FieldName = 'LIPName'
          end>
        Visible = False
      end
      object grdProfilesDBTableView1ProducerNo: TcxGridDBColumn
        DataBinding.FieldName = 'ProducerNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
    end
    object grdProfilesLevel1: TcxGridLevel
      GridView = grdProfilesDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 549
    Width = 1007
    Height = 57
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      1007
      57)
    object cxButton4: TcxButton
      Left = 459
      Top = 8
      Width = 109
      Height = 41
      Action = acClose
      Anchors = [akTop, akRight]
      TabOrder = 0
    end
  end
  object ActionList1: TActionList
    Left = 416
    Top = 224
    object acNewProfile: TAction
      Caption = 'Ny profil'
      ImageIndex = 7
      OnExecute = acNewProfileExecute
    end
    object acDeleteProfile: TAction
      Caption = 'Ta bort profil'
      ImageIndex = 8
      OnExecute = acDeleteProfileExecute
      OnUpdate = acDeleteProfileUpdate
    end
    object acSaveProfile: TAction
      Caption = 'Spara'
      ImageIndex = 5
      OnExecute = acSaveProfileExecute
      OnUpdate = acSaveProfileUpdate
    end
    object acClose: TAction
      Caption = 'OK'
      ImageIndex = 11
      OnExecute = acCloseExecute
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdProfiles
    PopupMenus = <>
    Left = 496
    Top = 232
  end
  object siLangLinked_fUserProfiles: TsiLangLinked
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
    Top = 312
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005500730065007200500072006F00660069006C00
      65007300010041006E007600E4006E00640061007200700072006F0066006900
      6C00650072000100010001000D000A004C006100620065006C00310001005000
      72006F00660069006C006E0061006D006E003A000100010001000D000A006300
      78004C006100620065006C00320001005600650072006B003A00010001000100
      0D000A00630078004C006100620065006C00330001004B0075006E0064003A00
      0100010001000D000A00630078004C006100620065006C00350001004C006100
      67006500720073007400E4006C006C0065003A000100010001000D000A006300
      78004C006100620065006C00360001004C006100670065007200670072007500
      700070003A000100010001000D000A00630078004C006100620065006C003900
      01004C0061007300740073007400E4006C006C0065003A000100010001000D00
      0A00670072006400500072006F00660069006C00650073004400420054006100
      62006C006500560069006500770031005600650072006B004E006F0001005600
      650072006B004E006F000100010001000D000A00670072006400500072006F00
      660069006C0065007300440042005400610062006C0065005600690065007700
      31004F0077006E00650072004E006F0001004F0077006E00650072004E006F00
      0100010001000D000A00670072006400500072006F00660069006C0065007300
      440042005400610062006C006500560069006500770031005500730065007200
      4900440001005500730065007200490044000100010001000D000A0067007200
      6400500072006F00660069006C0065007300440042005400610062006C006500
      5600690065007700310046006F0072006D000100500072006F00660069006C00
      6E0061006D006E000100010001000D000A00670072006400500072006F006600
      69006C0065007300440042005400610062006C00650056006900650077003100
      4E0061006D00650001004E0061006D0065000100010001000D000A0067007200
      6400500072006F00660069006C0065007300440042005400610062006C006500
      56006900650077003100500072006F0064007500630065007200010056006500
      72006B000100010001000D000A00670072006400500072006F00660069006C00
      65007300440042005400610062006C006500560069006500770031004F007700
      6E006500720001004B0075006E0064000100010001000D000A00670072006400
      500072006F00660069006C0065007300440042005400610062006C0065005600
      69006500770031004E00650077004900740065006D0052006F00770001005300
      740061006E0064006100720064000100010001000D000A006700720064005000
      72006F00660069006C0065007300440042005400610062006C00650056006900
      6500770031005000490050004E006F0001005000490050004E006F0001000100
      01000D000A00670072006400500072006F00660069006C006500730044004200
      5400610062006C006500560069006500770031004C00490050004E006F000100
      4C00490050004E006F000100010001000D000A00670072006400500072006F00
      660069006C0065007300440042005400610062006C0065005600690065007700
      310052006500670050006F0069006E0074004E006F0001005200650067005000
      6F0069006E0074004E006F000100010001000D000A0067007200640050007200
      6F00660069006C0065007300440042005400610062006C006500560069006500
      7700310050004900500001005000490050000100010001000D000A0067007200
      6400500072006F00660069006C0065007300440042005400610062006C006500
      560069006500770031004C004900500001004C00490050000100010001000D00
      0A00670072006400500072006F00660069006C00650073004400420054006100
      62006C00650056006900650077003100500072006F0064007500630065007200
      4E006F000100500072006F00640075006300650072004E006F00010001000100
      0D000A00610063004E0065007700500072006F00660069006C00650001004E00
      79002000700072006F00660069006C000100010001000D000A00610063004400
      65006C00650074006500500072006F00660069006C0065000100540061002000
      62006F00720074002000700072006F00660069006C000100010001000D000A00
      610063005300610076006500500072006F00660069006C006500010053007000
      6100720061000100010001000D000A006100630043006C006F00730065000100
      4F004B000100010001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A00540066005500730065007200500072006F00660069006C0065007300
      01004D0053002000530061006E00730020005300650072006900660001004D00
      53002000530061006E0073002000530065007200690066000100540061006800
      6F006D0061000D000A004C006100620065006C00310001004D00530020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      61000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A004900440053005F00
      3000010041006E00670065002000700072006F00660069006C006E0061006D00
      6E0020006800E40072000100010001000D000A004900440053005F0032000100
      C4006E006400720069006E006700610072002000E4007200200069006E007400
      6500200073007000610072006100640065002C002000760069006C006C002000
      64007500200073007400E4006E00670061003F000100010001000D000A007300
      74004F00740068006500720053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A006C006300
      500052004F00440055004300450052002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E00010043006C00690065006E00
      74004E0061006D006500010001000D000A006C0063004F0077006E0065007200
      2E00500072006F0070006500720074006900650073002E004C00690073007400
      43006F006C0075006D006E0073005B0030005D002E0043006100700074006900
      6F006E00010043006C00690065006E0074004E0061006D006500010001000D00
      0A006C0063005000490050002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E0001004F0052005400010001000D000A00
      6C0063004C00490050002E00500072006F007000650072007400690065007300
      2E004C0069007300740043006F006C0075006D006E0073005B0030005D002E00
      430061007000740069006F006E0001004C004100470045005200470052005500
      50005000010001000D000A006C0063005200610077005000490050002E005000
      72006F0070006500720074006900650073002E004C0069007300740043006F00
      6C0075006D006E0073005B0030005D002E00430061007000740069006F006E00
      010043006900740079004E0061006D006500010001000D000A00670072006400
      500072006F00660069006C0065007300440042005400610062006C0065005600
      6900650077003100500072006F00640075006300650072002E00500072006F00
      70006500720074006900650073002E004C0069007300740043006F006C007500
      6D006E0073005B0030005D002E00430061007000740069006F006E0001004300
      6C00690065006E0074004E0061006D006500010001000D000A00670072006400
      500072006F00660069006C0065007300440042005400610062006C0065005600
      69006500770031004F0077006E00650072002E00500072006F00700065007200
      74006900650073002E004C0069007300740043006F006C0075006D006E007300
      5B0030005D002E00430061007000740069006F006E00010043006C0069006500
      6E0074004E0061006D006500010001000D000A00670072006400500072006F00
      660069006C0065007300440042005400610062006C0065005600690065007700
      31005000490050002E00500072006F0070006500720074006900650073002E00
      4C0069007300740043006F006C0075006D006E0073005B0030005D002E004300
      61007000740069006F006E00010043004900540059004E0041004D0045000100
      01000D000A00670072006400500072006F00660069006C006500730044004200
      5400610062006C006500560069006500770031004C00490050002E0050007200
      6F0070006500720074006900650073002E004C0069007300740043006F006C00
      75006D006E0073005B0030005D002E00430061007000740069006F006E000100
      4C00490050004E0061006D006500010001000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      66005500730065007200500072006F00660069006C0065007300010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A004C00
      6100620065006C0031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00}
  end
end
