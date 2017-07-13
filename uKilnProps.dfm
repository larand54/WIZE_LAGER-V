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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1167
    Height = 646
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1167
      Height = 52
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 1165
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 344
        Height = 52
        Align = alLeft
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitHeight = 50
        object dxBarDockControl2: TdxBarDockControl
          Left = 1
          Top = 1
          Width = 342
          Height = 45
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
      object Panel8: TPanel
        Left = 344
        Top = 0
        Width = 762
        Height = 52
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 345
        ExplicitTop = 1
        ExplicitWidth = 758
        ExplicitHeight = 50
      end
      object Panel9: TPanel
        Left = 1106
        Top = 0
        Width = 61
        Height = 52
        Align = alRight
        TabOrder = 2
        ExplicitLeft = 1103
        ExplicitTop = 1
        ExplicitHeight = 50
        object dxBarDockControl3: TdxBarDockControl
          Left = 1
          Top = 1
          Width = 59
          Height = 49
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 52
      Width = 1167
      Height = 594
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitTop = 53
      ExplicitWidth = 1165
      ExplicitHeight = 592
      object Panel5: TPanel
        Left = 515
        Top = 0
        Width = 652
        Height = 594
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 512
        ExplicitTop = 1
        ExplicitHeight = 590
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 652
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 650
          object dxBarDockControl1: TdxBarDockControl
            Left = 0
            Top = 0
            Width = 652
            Height = 49
            Align = dalTop
            BarManager = dxBarManager1
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitWidth = 648
          end
        end
        object grdKilns: TcxGrid
          Left = 0
          Top = 46
          Width = 652
          Height = 205
          Align = alTop
          TabOrder = 1
          ExplicitLeft = 1
          ExplicitTop = 47
          ExplicitWidth = 650
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
            object grdKilnsDBTableView1KilnPropsID: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'KilnPropsID'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 89
            end
            object grdKilnsDBTableView1KilnNo: TcxGridDBColumn
              DataBinding.FieldName = 'KilnNo'
              Visible = False
            end
            object grdKilnsDBTableView1KilnName: TcxGridDBColumn
              Caption = 'Torknamn'
              DataBinding.FieldName = 'KilnName'
              Width = 188
            end
            object grdKilnsDBTableView1ClientNo: TcxGridDBColumn
              DataBinding.FieldName = 'ClientNo'
              Visible = False
            end
            object grdKilnsDBTableView1NoOfVagnar: TcxGridDBColumn
              DataBinding.FieldName = 'NoOfVagnar'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 103
            end
            object grdKilnsDBTableView1NoOfVagnarBefore: TcxGridDBColumn
              DataBinding.FieldName = 'NoOfVagnarBefore'
              Width = 101
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
              Width = 102
            end
            object grdKilnsDBTableView1TypeOfLine: TcxGridDBColumn
              Caption = 'Typ av linje'
              DataBinding.FieldName = 'TypeOfLine'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'Tork'
                  ImageIndex = 0
                  Value = 1
                end
                item
                  Description = 'Tub'
                  Value = 2
                end
                item
                  Description = 'Transport'
                  Value = 3
                end>
              Width = 101
            end
            object grdKilnsDBTableView1DefaultDuration: TcxGridDBColumn
              Caption = 'Standard torktid'
              DataBinding.FieldName = 'DefaultDuration'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 103
            end
          end
          object grdKilnsLevel1: TcxGridLevel
            GridView = grdKilnsDBTableView1
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 251
          Width = 652
          Height = 343
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitLeft = 1
          ExplicitTop = 252
          ExplicitWidth = 650
          ExplicitHeight = 337
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 652
            Height = 57
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitWidth = 648
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
            Left = 0
            Top = 57
            Width = 652
            Height = 286
            Align = alClient
            TabOrder = 1
            ExplicitLeft = 1
            ExplicitTop = 58
            ExplicitWidth = 648
            ExplicitHeight = 278
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
              end
              object grdChannelsDBTableView1KilnChargeNo: TcxGridDBColumn
                Caption = 'Kanalnr'
                DataBinding.FieldName = 'KilnChargeNo'
                PropertiesClassName = 'TcxLabelProperties'
                Width = 138
              end
              object grdChannelsDBTableView1KilnNo: TcxGridDBColumn
                DataBinding.FieldName = 'KilnNo'
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
              object grdChannelsDBTableView1KilnPropsID: TcxGridDBColumn
                DataBinding.FieldName = 'KilnPropsID'
              end
            end
            object grdChannelsLevel1: TcxGridLevel
              GridView = grdChannelsDBTableView1
            end
          end
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 515
        Height = 594
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 511
        ExplicitHeight = 590
        object lcVerk: TcxDBLookupComboBox
          Left = 245
          Top = 287
          DataBinding.DataField = 'Verk'
          DataBinding.DataSource = dm_DryKiln.ds_KilnProps
          Enabled = False
          Properties.KeyFieldNames = 'ClientNo'
          Properties.ListColumns = <
            item
              FieldName = 'ClientName'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 0
          Width = 145
        end
        object lcLagerstlleItork: TcxDBLookupComboBox
          Left = 245
          Top = 396
          DataBinding.DataField = 'Lagerst'#228'lle'
          DataBinding.DataSource = dm_DryKiln.ds_KilnProps
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'PIPNO'
          Properties.ListColumns = <
            item
              FieldName = 'PIPNAME'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 4
          Width = 145
        end
        object lcFretork: TcxDBLookupComboBox
          Left = 245
          Top = 363
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
          OnEnter = lcFretorkEnter
          OnExit = lcFretorkExit
          Width = 145
        end
        object lcI_tork: TcxDBLookupComboBox
          Left = 245
          Top = 417
          DataBinding.DataField = 'I_tork'
          DataBinding.DataSource = dm_DryKiln.ds_KilnProps
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'LIPNo'
          Properties.ListColumns = <
            item
              FieldName = 'LIPName'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 5
          OnEnter = lcI_torkEnter
          OnExit = lcI_torkExit
          Width = 145
        end
        object lcEfterTork: TcxDBLookupComboBox
          Left = 245
          Top = 475
          DataBinding.DataField = 'EfterTork'
          DataBinding.DataSource = dm_DryKiln.ds_KilnProps
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'LIPNo'
          Properties.ListColumns = <
            item
              FieldName = 'LIPName'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 7
          OnEnter = lcEfterTorkEnter
          OnExit = lcEfterTorkExit
          Width = 145
        end
        object cxLabel1: TcxLabel
          Left = 61
          Top = -50
          Caption = 'Verk:'
        end
        object cxLabel2: TcxLabel
          Left = 126
          Top = 394
          Caption = 'Lagerst'#228'lle i tork:'
        end
        object cxLabel3: TcxLabel
          Left = 126
          Top = 365
          Caption = 'Lagergrupp f'#246're tork:'
        end
        object cxLabel4: TcxLabel
          Left = 127
          Top = 417
          Caption = 'Lagergrupp i tork:'
        end
        object cxLabel5: TcxLabel
          Left = 126
          Top = 475
          Caption = 'Lagergrupp efter tork:'
        end
        object cxLabel6: TcxLabel
          Left = 199
          Top = 251
          Caption = 'Lagergrupper'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object teGroupName: TcxDBTextEdit
          Left = 245
          Top = 312
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          DataBinding.DataField = 'GroupName'
          DataBinding.DataSource = dm_DryKiln.ds_KilnProps
          TabOrder = 1
          Width = 144
        end
        object cxLabel7: TcxLabel
          Left = 128
          Top = 313
          Caption = 'Gruppnamn:'
        end
        object Panel13: TPanel
          Left = 0
          Top = 0
          Width = 515
          Height = 235
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 15
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 509
          object Panel14: TPanel
            Left = 0
            Top = 0
            Width = 515
            Height = 53
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Panel14'
            TabOrder = 0
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitWidth = 507
          end
          object grdLagerGrupper: TcxGrid
            Left = 0
            Top = 53
            Width = 515
            Height = 182
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            TabOrder = 1
            ExplicitLeft = 1
            ExplicitTop = 54
            ExplicitWidth = 507
            ExplicitHeight = 180
            object grdLagerGrupperDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dm_DryKiln.ds_KilnProps
              DataController.KeyFieldNames = 'KilnPropsID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object grdLagerGrupperDBTableView1KilnPropsID: TcxGridDBColumn
                Caption = 'ID'
                DataBinding.FieldName = 'KilnPropsID'
                Width = 121
              end
              object grdLagerGrupperDBTableView1ClientNo: TcxGridDBColumn
                DataBinding.FieldName = 'ClientNo'
                Visible = False
              end
              object grdLagerGrupperDBTableView1Kiln_PIPNo: TcxGridDBColumn
                DataBinding.FieldName = 'Kiln_PIPNo'
                Visible = False
              end
              object grdLagerGrupperDBTableView1BeforeKiln_LIPNo: TcxGridDBColumn
                DataBinding.FieldName = 'BeforeKiln_LIPNo'
                Visible = False
              end
              object grdLagerGrupperDBTableView1Kiln_LIPNo: TcxGridDBColumn
                DataBinding.FieldName = 'Kiln_LIPNo'
                Visible = False
              end
              object grdLagerGrupperDBTableView1AfterKiln_LIPNo: TcxGridDBColumn
                DataBinding.FieldName = 'AfterKiln_LIPNo'
                Visible = False
              end
              object grdLagerGrupperDBTableView1Lagerstlle: TcxGridDBColumn
                DataBinding.FieldName = 'Lagerst'#228'lle'
                Visible = False
              end
              object grdLagerGrupperDBTableView1Fretork: TcxGridDBColumn
                DataBinding.FieldName = 'F'#246'retork'
                Visible = False
              end
              object grdLagerGrupperDBTableView1I_tork: TcxGridDBColumn
                DataBinding.FieldName = 'I_tork'
                Visible = False
              end
              object grdLagerGrupperDBTableView1EfterTork: TcxGridDBColumn
                DataBinding.FieldName = 'EfterTork'
                Visible = False
              end
              object grdLagerGrupperDBTableView1Verk: TcxGridDBColumn
                DataBinding.FieldName = 'Verk'
                Width = 192
              end
              object grdLagerGrupperDBTableView1GroupName: TcxGridDBColumn
                Caption = 'Gruppnamn'
                DataBinding.FieldName = 'GroupName'
                Width = 298
              end
              object grdLagerGrupperDBTableView1BeforeKiln_PIPNo: TcxGridDBColumn
                DataBinding.FieldName = 'BeforeKiln_PIPNo'
                Visible = False
              end
              object grdLagerGrupperDBTableView1AfterKiln_PIPNo: TcxGridDBColumn
                DataBinding.FieldName = 'AfterKiln_PIPNo'
                Visible = False
              end
              object grdLagerGrupperDBTableView1LagerstlleBeforeKiln: TcxGridDBColumn
                DataBinding.FieldName = 'Lagerst'#228'lleBeforeKiln'
                Visible = False
              end
              object grdLagerGrupperDBTableView1LagerstlleAfterKiln: TcxGridDBColumn
                DataBinding.FieldName = 'Lagerst'#228'lleAfterKiln'
                Visible = False
              end
            end
            object grdLagerGrupperLevel1: TcxGridLevel
              GridView = grdLagerGrupperDBTableView1
            end
          end
        end
        object lcLagerstalleBeforeKiln: TcxDBLookupComboBox
          Left = 245
          Top = 344
          DataBinding.DataField = 'Lagerst'#228'lleBeforeKiln'
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
        object cxLabel8: TcxLabel
          Left = 127
          Top = 342
          Caption = 'Lagerst'#228'lle f'#246're tork:'
        end
        object cxLabel9: TcxLabel
          Left = 126
          Top = 458
          Caption = 'Lagerst'#228'lle efter tork:'
        end
        object lcLagerstalleAfterKiln: TcxDBLookupComboBox
          Left = 245
          Top = 454
          DataBinding.DataField = 'Lagerst'#228'lleAfterKiln'
          DataBinding.DataSource = dm_DryKiln.ds_KilnProps
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'PIPNO'
          Properties.ListColumns = <
            item
              FieldName = 'PIPNAME'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 6
          Width = 145
        end
        object cxLabel10: TcxLabel
          Left = 128
          Top = 290
          Caption = 'Verk:'
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 646
    Width = 1167
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    UseSystemFont = False
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
      BorderStyle = bbsNone
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
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
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
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acAddKilnGroup
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acCancelChanges
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
    object acAddKilnGroup: TAction
      Caption = 'L'#228'gg till ny grupp'
      ImageIndex = 1
      OnExecute = acAddKilnGroupExecute
      OnUpdate = acAddKilnGroupUpdate
    end
    object acCancelChanges: TAction
      Caption = #197'ngra '#228'ndringar'
      ImageIndex = 9
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
  end
  object siLangLinked_fKilnProps: TsiLangLinked
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
    Left = 576
    Top = 352
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004B0069006C006E00500072006F00700073000100
      54006F0072006B0070006100720061006D006500740072006100720001000100
      01000D000A006700720064004B0069006C006E00730044004200540061006200
      6C006500560069006500770031004B0069006C006E004E006F0001004B006900
      6C006E004E006F000100010001000D000A006700720064004B0069006C006E00
      7300440042005400610062006C006500560069006500770031004B0069006C00
      6E004E0061006D006500010054006F0072006B006E0061006D006E00A8000100
      010001000D000A006700720064004B0069006C006E0073004400420054006100
      62006C0065005600690065007700310043006C00690065006E0074004E006F00
      010043006C00690065006E0074004E006F000100010001000D000A0067007200
      64004B0069006C006E007300440042005400610062006C006500560069006500
      770031004E006F004F0066005600610067006E0061007200010041006E007400
      61006C0020007600610067006E006100720020006900200074006F0072006B00
      0100010001000D000A006700720064004B0069006C006E007300440042005400
      610062006C006500560069006500770031004E006F004F006600560061006700
      6E00610072004200650066006F0072006500010041006E00740061006C002000
      7600610067006E006100720020006600F60072006500200074006F0072006B00
      0100010001000D000A006700720064004B0069006C006E007300440042005400
      610062006C0065005600690065007700310054007900700065004F0066004B00
      69006C006E000100540079007000200061007600200074006F0072006B000100
      010001000D000A006700720064004300680061006E006E0065006C0073004400
      42005400610062006C0065005600690065007700310043006C00690065006E00
      74004E006F00010043006C00690065006E0074004E006F000100010001000D00
      0A006700720064004300680061006E006E0065006C0073004400420054006100
      62006C006500560069006500770031004B0069006C006E004300680061007200
      670065004E006F0001004B0061006E0061006C006E007200A800010001000100
      0D000A006700720064004300680061006E006E0065006C007300440042005400
      610062006C006500560069006500770031004B0069006C006E004E006F000100
      4B0069006C006E004E006F000100010001000D000A0067007200640043006800
      61006E006E0065006C007300440042005400610062006C006500560069006500
      7700310053007400610072007400540069006D00650001005300740061007200
      7400540069006D0065000100010001000D000A00670072006400430068006100
      6E006E0065006C007300440042005400610062006C0065005600690065007700
      310045006E006400540069006D006500010045006E006400540069006D006500
      0100010001000D000A006700720064004300680061006E006E0065006C007300
      440042005400610062006C0065005600690065007700310050006C0061006E00
      6E00650064004400750072006100740069006F006E00010050006C0061006E00
      6E00650064004400750072006100740069006F006E000100010001000D000A00
      6700720064004300680061006E006E0065006C00730044004200540061006200
      6C00650056006900650077003100430072006500610074006500640044006100
      7400650001004300720065006100740065006400440061007400650001000100
      01000D000A006700720064004300680061006E006E0065006C00730044004200
      5400610062006C00650056006900650077003100430072006500610074006500
      6400550073006500720001004300720065006100740065006400550073006500
      72000100010001000D000A006700720064004300680061006E006E0065006C00
      7300440042005400610062006C00650056006900650077003100530074006100
      74007500730001005300740061007400750073000100010001000D000A006700
      720064004300680061006E006E0065006C007300440042005400610062006C00
      6500560069006500770031004E006F007400650001004E006F00740065000100
      010001000D000A006700720064004300680061006E006E0065006C0073004400
      42005400610062006C0065005600690065007700310049006E0066006F000100
      49006E0066006F000100010001000D000A00640078004200610072004D006100
      6E00610067006500720031004200610072003100010043007500730074006F00
      6D00200031000100010001000D000A00640078004200610072004D0061006E00
      610067006500720031004200610072003200010043007500730074006F006D00
      200032000100010001000D000A00640078004200610072004D0061006E006100
      67006500720031004200610072003300010043007500730074006F006D002000
      33000100010001000D000A00640078004200610072004C006100720067006500
      42007500740074006F006E00330001004E006500770020004900740065006D00
      0100010001000D000A00610063004100640064004B0069006C006E0001004C00
      E400670067002000740069006C006C00200074006F0072006B00010001000100
      0D000A0061006300440065006C006500740065004B0069006C006E0001005400
      6100200062006F0072007400200074006F0072006B000100010001000D000A00
      6100630053006100760065000100530070006100720061000100010001000D00
      0A006100630043006C006F0073006500010053007400E4006E00670001000100
      01000D000A00610063004100640064004300680061006E006E0065006C000100
      4C00E400670067002000740069006C006C0020006B0061006E0061006C000100
      010001000D000A0061006300520065006D006F00760065004300680061006E00
      6E0065006C00010054006100200062006F007200740020006B0061006E006100
      6C000100010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A00640078004200610072004C00610072006700
      650042007500740074006F006E00330001004E00650077002000490074006500
      6D00010001000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      66004B0069006C006E00500072006F007000730001004D005300200053006100
      6E00730020005300650072006900660001004D0053002000530061006E007300
      20005300650072006900660001005400610068006F006D0061000D000A006400
      78004200610072004D0061006E00610067006500720031000100530065006700
      6F006500200055004900010001005400610068006F006D0061000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003100
      01005300650067006F006500200055004900010001005400610068006F006D00
      61000D000A00640078004200610072004D0061006E0061006700650072003100
      420061007200320001005300650067006F006500200055004900010001005400
      610068006F006D0061000D000A00640078004200610072004D0061006E006100
      6700650072003100420061007200330001005300650067006F00650020005500
      4900010001005400610068006F006D0061000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A004900440053005F003300010044006100740061002000E400
      7200200069006E007400650020007300700061007200610074002C0020007600
      69006C006C0020006400750020006100760073006C007500740061003F000100
      010001000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A006400780042006100
      72004D0061006E006100670065007200310042006100720031002E004F006C00
      64004E0061006D006500010043007500730074006F006D002000310001000100
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      6100720032002E004F006C0064004E0061006D00650001004300750073007400
      6F006D0020003200010001000D000A00640078004200610072004D0061006E00
      6100670065007200310042006100720033002E004F006C0064004E0061006D00
      6500010043007500730074006F006D0020003300010001000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A006700720064004B0069006C006E007300440042005400
      610062006C0065005600690065007700310054007900700065004F0066004B00
      69006C006E002E00500072006F0070006500720074006900650073002E004900
      740065006D0073005B0030005D002E0044006500730063007200690070007400
      69006F006E0001004B0061006D006D006100720074006F0072006B0001000100
      0D000A006700720064004B0069006C006E007300440042005400610062006C00
      65005600690065007700310054007900700065004F0066004B0069006C006E00
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      73005B0031005D002E004400650073006300720069007000740069006F006E00
      0100560061006E006400720069006E006700730074006F0072006B0001000100
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A00540066004B0069006C006E00500072006F007000
      73000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00640078004200610072004D0061006E0061006700650072003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      6100720031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00640078004200610072004D0061006E00610067006500
      7200310042006100720032000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00640078004200610072004D0061006E00
      6100670065007200310042006100720033000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A00}
  end
end
