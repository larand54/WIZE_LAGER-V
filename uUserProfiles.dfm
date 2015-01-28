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
    Left = 496
    Top = 312
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A004900440053005F003000010041006E00
      670065002000700072006F00660069006C006E0061006D006E0020006800E400
      7200010001000D000A004900440053005F0032000100C4006E00640072006900
      6E006700610072002000E4007200200069006E00740065002000730070006100
      72006100640065002C002000760069006C006C00200064007500200073007400
      E4006E00670061003F00010001000D000A00730074004F007400680065007200
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A007300740043006F006C006C0065006300740069006F006E0073005F005500
      6E00690063006F00640065000D000A0073007400430068006100720053006500
      740073005F0055006E00690063006F00640065000D000A00}
  end
end
