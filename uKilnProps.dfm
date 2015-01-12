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
          Height = 48
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
          Height = 48
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
            Height = 48
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
    Font.Height = -11
    Font.Name = 'Tahoma'
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
end
