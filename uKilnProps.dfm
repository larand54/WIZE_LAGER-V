object fKilnProps: TfKilnProps
  Left = 242
  Top = 107
  Caption = 'Torkparametrar'
  ClientHeight = 687
  ClientWidth = 1167
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1167
    Height = 646
    Align = alClient
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1165
      Height = 52
      Align = alTop
      TabOrder = 0
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 344
        Height = 50
        Align = alLeft
        TabOrder = 0
        object dxBarDockControl2: TdxBarDockControl
          Left = 1
          Top = 1
          Width = 342
          Height = 50
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
      object Panel8: TPanel
        Left = 345
        Top = 1
        Width = 758
        Height = 50
        Align = alClient
        TabOrder = 1
      end
      object Panel9: TPanel
        Left = 1103
        Top = 1
        Width = 61
        Height = 50
        Align = alRight
        TabOrder = 2
        object dxBarDockControl3: TdxBarDockControl
          Left = 1
          Top = 1
          Width = 59
          Height = 50
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 53
      Width = 1165
      Height = 592
      Align = alClient
      TabOrder = 1
      object Panel5: TPanel
        Left = 512
        Top = 1
        Width = 652
        Height = 590
        Align = alRight
        TabOrder = 0
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 650
          Height = 46
          Align = alTop
          TabOrder = 0
          object dxBarDockControl1: TdxBarDockControl
            Left = 1
            Top = 1
            Width = 648
            Height = 50
            Align = dalTop
            BarManager = dxBarManager1
          end
        end
        object grdKilns: TcxGrid
          Left = 1
          Top = 47
          Width = 650
          Height = 205
          Align = alTop
          TabOrder = 1
          object grdKilnsDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dm_DryKiln.ds_Kilns
            DataController.KeyFieldNames = 'ClientNo;KilnNo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object grdKilnsDBTableView1KilnNo: TcxGridDBColumn
              DataBinding.FieldName = 'KilnNo'
              Visible = False
            end
            object grdKilnsDBTableView1KilnName: TcxGridDBColumn
              Caption = 'Torknamn'#168
              DataBinding.FieldName = 'KilnName'
            end
            object grdKilnsDBTableView1ClientNo: TcxGridDBColumn
              DataBinding.FieldName = 'ClientNo'
              Visible = False
            end
            object grdKilnsDBTableView1NoOfVagnar: TcxGridDBColumn
              DataBinding.FieldName = 'NoOfVagnar'
              PropertiesClassName = 'TcxTextEditProperties'
            end
            object grdKilnsDBTableView1NoOfVagnarBefore: TcxGridDBColumn
              DataBinding.FieldName = 'NoOfVagnarBefore'
            end
            object grdKilnsDBTableView1TypeOfKiln: TcxGridDBColumn
              DataBinding.FieldName = 'TypeOfKiln'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.ImmediatePost = True
              Properties.Items = <
                item
                  Description = 'Kammartork'
                  ImageIndex = 0
                  Value = 1
                end
                item
                  Description = 'Vandringstork'
                  Value = 2
                end>
            end
          end
          object grdKilnsLevel1: TcxGridLevel
            GridView = grdKilnsDBTableView1
          end
        end
        object Panel10: TPanel
          Left = 1
          Top = 252
          Width = 650
          Height = 337
          Align = alClient
          TabOrder = 2
          object Panel11: TPanel
            Left = 1
            Top = 1
            Width = 648
            Height = 57
            Align = alTop
            TabOrder = 0
            object cxButton1: TcxButton
              Left = 8
              Top = 5
              Width = 121
              Height = 41
              Action = acAddChannel
              TabOrder = 0
            end
            object cxButton2: TcxButton
              Left = 135
              Top = 5
              Width = 121
              Height = 41
              Action = acRemoveChannel
              TabOrder = 1
            end
          end
          object grdChannels: TcxGrid
            Left = 1
            Top = 58
            Width = 648
            Height = 278
            Align = alClient
            TabOrder = 1
            object grdChannelsDBTableView1: TcxGridDBTableView
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
              DataController.DataSource = dm_DryKiln.ds_KilnChargeHeader
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object grdChannelsDBTableView1ClientNo: TcxGridDBColumn
                DataBinding.FieldName = 'ClientNo'
                Visible = False
              end
              object grdChannelsDBTableView1KilnChargeNo: TcxGridDBColumn
                Caption = 'Kanalnr'#168
                DataBinding.FieldName = 'KilnChargeNo'
                PropertiesClassName = 'TcxLabelProperties'
                Width = 138
              end
              object grdChannelsDBTableView1KilnNo: TcxGridDBColumn
                DataBinding.FieldName = 'KilnNo'
                Visible = False
              end
              object grdChannelsDBTableView1StartTime: TcxGridDBColumn
                DataBinding.FieldName = 'StartTime'
                Visible = False
              end
              object grdChannelsDBTableView1EndTime: TcxGridDBColumn
                DataBinding.FieldName = 'EndTime'
                Visible = False
              end
              object grdChannelsDBTableView1PlannedDuration: TcxGridDBColumn
                DataBinding.FieldName = 'PlannedDuration'
                Visible = False
              end
              object grdChannelsDBTableView1CreatedDate: TcxGridDBColumn
                DataBinding.FieldName = 'CreatedDate'
                Visible = False
              end
              object grdChannelsDBTableView1CreatedUser: TcxGridDBColumn
                DataBinding.FieldName = 'CreatedUser'
                Visible = False
              end
              object grdChannelsDBTableView1Status: TcxGridDBColumn
                DataBinding.FieldName = 'Status'
                Visible = False
              end
              object grdChannelsDBTableView1Note: TcxGridDBColumn
                DataBinding.FieldName = 'Note'
                Visible = False
              end
              object grdChannelsDBTableView1Info: TcxGridDBColumn
                DataBinding.FieldName = 'Info'
                PropertiesClassName = 'TcxTextEditProperties'
                Width = 277
              end
            end
            object grdChannelsLevel1: TcxGridLevel
              GridView = grdChannelsDBTableView1
            end
          end
        end
      end
      object lcVerk: TcxDBLookupComboBox
        Left = 136
        Top = 48
        DataBinding.DataField = 'Verk'
        DataBinding.DataSource = dm_DryKiln.ds_KilnProps
        Enabled = False
        Properties.KeyFieldNames = 'ClientNo'
        Properties.ListColumns = <
          item
            FieldName = 'ClientName'
          end>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 1
        Width = 145
      end
      object lcLagerstlle: TcxDBLookupComboBox
        Left = 136
        Top = 88
        DataBinding.DataField = 'Lagerst'#228'lle'
        DataBinding.DataSource = dm_DryKiln.ds_KilnProps
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'PIPNO'
        Properties.ListColumns = <
          item
            FieldName = 'PIPNAME'
          end>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 2
        Width = 145
      end
      object lcFretork: TcxDBLookupComboBox
        Left = 136
        Top = 152
        DataBinding.DataField = 'F'#246'retork'
        DataBinding.DataSource = dm_DryKiln.ds_KilnProps
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'LIPNo'
        Properties.ListColumns = <
          item
            FieldName = 'LIPName'
          end>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 3
        Width = 145
      end
      object lcI_tork: TcxDBLookupComboBox
        Left = 136
        Top = 192
        DataBinding.DataField = 'I_tork'
        DataBinding.DataSource = dm_DryKiln.ds_KilnProps
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'LIPNo'
        Properties.ListColumns = <
          item
            FieldName = 'LIPName'
          end>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 4
        Width = 145
      end
      object lcEfterTork: TcxDBLookupComboBox
        Left = 136
        Top = 232
        DataBinding.DataField = 'EfterTork'
        DataBinding.DataSource = dm_DryKiln.ds_KilnProps
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'LIPNo'
        Properties.ListColumns = <
          item
            FieldName = 'LIPName'
          end>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 5
        Width = 145
      end
      object cxLabel1: TcxLabel
        Left = 72
        Top = 52
        Caption = 'Verk:'
      end
      object cxLabel2: TcxLabel
        Left = 72
        Top = 92
        Caption = 'Lagerst'#228'lle:'
      end
      object cxLabel3: TcxLabel
        Left = 72
        Top = 156
        Caption = 'F'#246're tork:'
      end
      object cxLabel4: TcxLabel
        Left = 72
        Top = 196
        Caption = 'I tork:'
      end
      object cxLabel5: TcxLabel
        Left = 72
        Top = 236
        Caption = 'Efter tork:'
      end
      object cxLabel6: TcxLabel
        Left = 144
        Top = 128
        Caption = 'Lagergrupper'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 646
    Width = 1167
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = dmsConnector.Images2424
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 433
    Top = 57
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end>
      OldName = 'Custom 3'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acAddKiln
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acDeleteKiln
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acSave
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
  end
  object ActionList1: TActionList
    Images = dmsConnector.Images2424
    Left = 433
    Top = 113
    object acAddKiln: TAction
      Caption = 'L'#228'gg till tork'
      ImageIndex = 1
      OnExecute = acAddKilnExecute
      OnUpdate = acAddKilnUpdate
    end
    object acDeleteKiln: TAction
      Caption = 'Ta bort tork'
      ImageIndex = 2
      OnExecute = acDeleteKilnExecute
      OnUpdate = acDeleteKilnUpdate
    end
    object acSave: TAction
      Caption = 'Spara'
      ImageIndex = 6
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acClose: TAction
      Caption = 'St'#228'ng'
      ImageIndex = 5
      OnExecute = acCloseExecute
    end
    object acAddChannel: TAction
      Caption = 'L'#228'gg till kanal'
      ImageIndex = 1
      OnExecute = acAddChannelExecute
      OnUpdate = acAddChannelUpdate
    end
    object acRemoveChannel: TAction
      Caption = 'Ta bort kanal'
      ImageIndex = 2
      OnUpdate = acRemoveChannelUpdate
    end
  end
  object siLangLinked_fKilnProps: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Swedish'
      'English')
    Language = 'English'
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
    Left = 576
    Top = 352
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004B0069006C006E00500072006F00700073000100
      54006F0072006B0070006100720061006D006500740072006100720001000100
      0D000A006700720064004B0069006C006E007300440042005400610062006C00
      6500560069006500770031004B0069006C006E004E006F0001004B0069006C00
      6E004E006F00010001000D000A006700720064004B0069006C006E0073004400
      42005400610062006C006500560069006500770031004B0069006C006E004E00
      61006D006500010054006F0072006B006E0061006D006E00A800010001000D00
      0A006700720064004B0069006C006E007300440042005400610062006C006500
      5600690065007700310043006C00690065006E0074004E006F00010043006C00
      690065006E0074004E006F00010001000D000A006700720064004B0069006C00
      6E007300440042005400610062006C006500560069006500770031004E006F00
      4F0066005600610067006E0061007200010041006E00740061006C0020007600
      610067006E006100720020006900200074006F0072006B00010001000D000A00
      6700720064004B0069006C006E007300440042005400610062006C0065005600
      69006500770031004E006F004F0066005600610067006E006100720042006500
      66006F0072006500010041006E00740061006C0020007600610067006E006100
      720020006600F60072006500200074006F0072006B00010001000D000A006700
      720064004B0069006C006E007300440042005400610062006C00650056006900
      65007700310054007900700065004F0066004B0069006C006E00010054007900
      7000200061007600200074006F0072006B00010001000D000A00670072006400
      4300680061006E006E0065006C007300440042005400610062006C0065005600
      690065007700310043006C00690065006E0074004E006F00010043006C006900
      65006E0074004E006F00010001000D000A006700720064004300680061006E00
      6E0065006C007300440042005400610062006C00650056006900650077003100
      4B0069006C006E004300680061007200670065004E006F0001004B0061006E00
      61006C006E007200A800010001000D000A006700720064004300680061006E00
      6E0065006C007300440042005400610062006C00650056006900650077003100
      4B0069006C006E004E006F0001004B0069006C006E004E006F00010001000D00
      0A006700720064004300680061006E006E0065006C0073004400420054006100
      62006C0065005600690065007700310053007400610072007400540069006D00
      6500010053007400610072007400540069006D006500010001000D000A006700
      720064004300680061006E006E0065006C007300440042005400610062006C00
      65005600690065007700310045006E006400540069006D006500010045006E00
      6400540069006D006500010001000D000A006700720064004300680061006E00
      6E0065006C007300440042005400610062006C00650056006900650077003100
      50006C0061006E006E00650064004400750072006100740069006F006E000100
      50006C0061006E006E00650064004400750072006100740069006F006E000100
      01000D000A006700720064004300680061006E006E0065006C00730044004200
      5400610062006C00650056006900650077003100430072006500610074006500
      6400440061007400650001004300720065006100740065006400440061007400
      6500010001000D000A006700720064004300680061006E006E0065006C007300
      440042005400610062006C006500560069006500770031004300720065006100
      7400650064005500730065007200010043007200650061007400650064005500
      730065007200010001000D000A006700720064004300680061006E006E006500
      6C007300440042005400610062006C0065005600690065007700310053007400
      61007400750073000100530074006100740075007300010001000D000A006700
      720064004300680061006E006E0065006C007300440042005400610062006C00
      6500560069006500770031004E006F007400650001004E006F00740065000100
      01000D000A006700720064004300680061006E006E0065006C00730044004200
      5400610062006C0065005600690065007700310049006E0066006F0001004900
      6E0066006F00010001000D000A00630078004C006100620065006C0031000100
      5600650072006B003A00010001000D000A00630078004C006100620065006C00
      320001004C00610067006500720073007400E4006C006C0065003A0001000100
      0D000A00630078004C006100620065006C00330001004600F600720065002000
      74006F0072006B003A00010001000D000A00630078004C006100620065006C00
      340001004900200074006F0072006B003A00010001000D000A00630078004C00
      6100620065006C003500010045006600740065007200200074006F0072006B00
      3A00010001000D000A00630078004C006100620065006C00360001004C006100
      6700650072006700720075007000700065007200010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720031000100
      43007500730074006F006D0020003100010001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003200010043007500
      730074006F006D0020003200010001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200330001004300750073007400
      6F006D0020003300010001000D000A00640078004200610072004C0061007200
      6700650042007500740074006F006E00330001004E0065007700200049007400
      65006D00010001000D000A00610063004100640064004B0069006C006E000100
      4C00E400670067002000740069006C006C00200074006F0072006B0001000100
      0D000A0061006300440065006C006500740065004B0069006C006E0001005400
      6100200062006F0072007400200074006F0072006B00010001000D000A006100
      63005300610076006500010053007000610072006100010001000D000A006100
      630043006C006F0073006500010053007400E4006E006700010001000D000A00
      610063004100640064004300680061006E006E0065006C0001004C00E4006700
      67002000740069006C006C0020006B0061006E0061006C00010001000D000A00
      61006300520065006D006F00760065004300680061006E006E0065006C000100
      54006100200062006F007200740020006B0061006E0061006C00010001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A00640078004200610072004C0061007200670065004200750074007400
      6F006E00330001004E006500770020004900740065006D00010001000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A007300740046006F006E0074007300
      5F0055006E00690063006F00640065000D000A00540066004B0069006C006E00
      500072006F007000730001004D0053002000530061006E007300200053006500
      720069006600010001000D000A00640078004200610072004D0061006E006100
      670065007200310001005300650067006F006500200055004900010001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      7200310001005300650067006F006500200055004900010001000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003200
      01005300650067006F006500200055004900010001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200330001005300
      650067006F006500200055004900010001000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A00640078004200610072004D0061006E00610067006500720031002E004300
      61007400650067006F0072006900650073000100440065006600610075006C00
      7400010001000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      6700720064004B0069006C006E007300440042005400610062006C0065005600
      69006500770031004E006F004F0066005600610067006E00610072002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078005400650078007400450064006900740050007200
      6F007000650072007400690065007300010001000D000A006700720064004B00
      69006C006E007300440042005400610062006C00650056006900650077003100
      54007900700065004F0066004B0069006C006E002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      6300780049006D0061006700650043006F006D0062006F0042006F0078005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      4300680061006E006E0065006C007300440042005400610062006C0065005600
      69006500770031004B0069006C006E004300680061007200670065004E006F00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640043006800
      61006E006E0065006C007300440042005400610062006C006500560069006500
      7700310049006E0066006F002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780054006500
      780074004500640069007400500072006F007000650072007400690065007300
      010001000D000A006C0063005600650072006B002E00500072006F0070006500
      720074006900650073002E004B00650079004600690065006C0064004E006100
      6D0065007300010043006C00690065006E0074004E006F00010001000D000A00
      6C0063005600650072006B002E00500072006F00700065007200740069006500
      73002E004C006900730074004600690065006C0064004E0061006D0065007300
      010043006C00690065006E0074004E0061006D006500010001000D000A006C00
      63004C006100670065007200730074006C006C0065002E00500072006F007000
      6500720074006900650073002E004B00650079004600690065006C0064004E00
      61006D006500730001005000490050004E004F00010001000D000A006C006300
      4C006100670065007200730074006C006C0065002E00500072006F0070006500
      720074006900650073002E004C006900730074004600690065006C0064004E00
      61006D006500730001005000490050004E0041004D004500010001000D000A00
      6C00630046007200650074006F0072006B002E00500072006F00700065007200
      74006900650073002E004B00650079004600690065006C0064004E0061006D00
      6500730001004C00490050004E006F00010001000D000A006C00630046007200
      650074006F0072006B002E00500072006F007000650072007400690065007300
      2E004C006900730074004600690065006C0064004E0061006D00650073000100
      4C00490050004E0061006D006500010001000D000A006C00630049005F007400
      6F0072006B002E00500072006F0070006500720074006900650073002E004B00
      650079004600690065006C0064004E0061006D006500730001004C0049005000
      4E006F00010001000D000A006C00630049005F0074006F0072006B002E005000
      72006F0070006500720074006900650073002E004C0069007300740046006900
      65006C0064004E0061006D006500730001004C00490050004E0061006D006500
      010001000D000A006C0063004500660074006500720054006F0072006B002E00
      500072006F0070006500720074006900650073002E004B006500790046006900
      65006C0064004E0061006D006500730001004C00490050004E006F0001000100
      0D000A006C0063004500660074006500720054006F0072006B002E0050007200
      6F0070006500720074006900650073002E004C00690073007400460069006500
      6C0064004E0061006D006500730001004C00490050004E0061006D0065000100
      01000D000A00640078004200610072004D0061006E0061006700650072003100
      42006100720031002E004F006C0064004E0061006D0065000100430075007300
      74006F006D0020003100010001000D000A00640078004200610072004D006100
      6E006100670065007200310042006100720032002E004F006C0064004E006100
      6D006500010043007500730074006F006D0020003200010001000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003300
      2E004F006C0064004E0061006D006500010043007500730074006F006D002000
      3300010001000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A006700720064004B00
      69006C006E007300440042005400610062006C00650056006900650077003100
      54007900700065004F0066004B0069006C006E002E00500072006F0070006500
      720074006900650073002E004900740065006D0073005B0030005D002E004400
      650073006300720069007000740069006F006E0001004B0061006D006D006100
      720074006F0072006B00010001000D000A006700720064004B0069006C006E00
      7300440042005400610062006C00650056006900650077003100540079007000
      65004F0066004B0069006C006E002E00500072006F0070006500720074006900
      650073002E004900740065006D0073005B0031005D002E004400650073006300
      720069007000740069006F006E000100560061006E006400720069006E006700
      730074006F0072006B00010001000D000A006C0063005600650072006B002E00
      500072006F0070006500720074006900650073002E004C006900730074004300
      6F006C0075006D006E0073005B0030005D002E00430061007000740069006F00
      6E00010043006C00690065006E0074004E0061006D006500010001000D000A00
      6C0063004C006100670065007200730074006C006C0065002E00500072006F00
      70006500720074006900650073002E004C0069007300740043006F006C007500
      6D006E0073005B0030005D002E00430061007000740069006F006E0001005000
      490050004E0041004D004500010001000D000A006C0063004600720065007400
      6F0072006B002E00500072006F0070006500720074006900650073002E004C00
      69007300740043006F006C0075006D006E0073005B0030005D002E0043006100
      7000740069006F006E0001004C00490050004E0061006D006500010001000D00
      0A006C00630049005F0074006F0072006B002E00500072006F00700065007200
      74006900650073002E004C0069007300740043006F006C0075006D006E007300
      5B0030005D002E00430061007000740069006F006E0001004C00490050004E00
      61006D006500010001000D000A006C0063004500660074006500720054006F00
      72006B002E00500072006F0070006500720074006900650073002E004C006900
      7300740043006F006C0075006D006E0073005B0030005D002E00430061007000
      740069006F006E0001004C00490050004E0061006D006500010001000D000A00
      73007400430068006100720053006500740073005F0055006E00690063006F00
      640065000D000A00540066004B0069006C006E00500072006F00700073000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00640078004200610072004D0061006E0061006700650072003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00640078004200610072004D0061006E006100670065007200
      310042006100720031000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00640078004200610072004D006100
      6E00610067006500720031004200610072003200010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00}
  end
end
