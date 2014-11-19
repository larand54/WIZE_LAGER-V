object fSicPriceGroup: TfSicPriceGroup
  Left = 229
  Top = 107
  Caption = 'Prisgrupper'
  ClientHeight = 521
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 785
  end
  object Panel2: TPanel
    Left = 0
    Top = 480
    Width = 777
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 491
    ExplicitWidth = 785
    object BitBtn1: TBitBtn
      Left = 344
      Top = 5
      Width = 86
      Height = 28
      DoubleBuffered = True
      Kind = bkOK
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 777
    Height = 439
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 785
    ExplicitHeight = 450
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 328
      Height = 448
      Align = alLeft
      TabOrder = 0
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 326
        Height = 59
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxButton1: TcxButton
          Left = 8
          Top = 2
          Width = 73
          Height = 53
          Action = acAddPriceGroup
          Layout = blGlyphTop
          TabOrder = 0
        end
        object cxButton2: TcxButton
          Left = 169
          Top = 2
          Width = 73
          Height = 53
          Action = acCancelChanges
          Layout = blGlyphTop
          TabOrder = 2
        end
        object cxButton3: TcxButton
          Left = 89
          Top = 2
          Width = 73
          Height = 53
          Action = acSave
          Layout = blGlyphTop
          TabOrder = 1
        end
        object cxButton4: TcxButton
          Left = 249
          Top = 2
          Width = 73
          Height = 53
          Action = acRemovePriceGroup
          Layout = blGlyphTop
          TabOrder = 3
        end
      end
      object grdPriceGroup: TcxGrid
        Left = 1
        Top = 60
        Width = 326
        Height = 387
        Align = alClient
        TabOrder = 1
        object grdPriceGroupDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmInvCtrl.ds_PriceGroup
          DataController.KeyFieldNames = 'PriceGroupNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NewItemRow.Visible = True
          OptionsBehavior.ImmediateEditor = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object grdPriceGroupDBTableView1PriceGroupNo: TcxGridDBColumn
            DataBinding.FieldName = 'PriceGroupNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPriceGroupDBTableView1PriceGroupName: TcxGridDBColumn
            DataBinding.FieldName = 'PriceGroupName'
            PropertiesClassName = 'TcxTextEditProperties'
            SortIndex = 0
            SortOrder = soAscending
          end
          object grdPriceGroupDBTableView1OwnerNo: TcxGridDBColumn
            DataBinding.FieldName = 'OwnerNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPriceGroupDBTableView1DateCreated: TcxGridDBColumn
            DataBinding.FieldName = 'DateCreated'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPriceGroupDBTableView1CreatedUser: TcxGridDBColumn
            DataBinding.FieldName = 'CreatedUser'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object grdPriceGroupLevel1: TcxGridLevel
          GridView = grdPriceGroupDBTableView1
        end
      end
    end
    object Panel5: TPanel
      Left = 329
      Top = 1
      Width = 455
      Height = 448
      Align = alClient
      TabOrder = 1
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 453
        Height = 59
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxButton5: TcxButton
          Left = 8
          Top = 2
          Width = 73
          Height = 53
          Action = acRefreshAndUpdateGroupPrice
          Layout = blGlyphTop
          TabOrder = 0
        end
      end
      object grdGroupPrice: TcxGrid
        Left = 1
        Top = 60
        Width = 453
        Height = 387
        Align = alClient
        TabOrder = 1
        object grdGroupPriceDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmInvCtrl.ds_GP
          DataController.KeyFieldNames = 'IC_GrpNo;PriceGroupNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object grdGroupPriceDBTableView1PriceGroupNo: TcxGridDBColumn
            DataBinding.FieldName = 'PriceGroupNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdGroupPriceDBTableView1IC_GrpNo: TcxGridDBColumn
            DataBinding.FieldName = 'IC_GrpNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 86
          end
          object grdGroupPriceDBTableView1PricePerNM3: TcxGridDBColumn
            DataBinding.FieldName = 'PricePerNM3'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 96
          end
          object grdGroupPriceDBTableView1MaxDatum: TcxGridDBColumn
            DataBinding.FieldName = 'MaxDatum'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ReadOnly = True
            Width = 269
          end
        end
        object grdGroupPriceLevel1: TcxGridLevel
          GridView = grdGroupPriceDBTableView1
        end
      end
    end
  end
  object ActionList1: TActionList
    Images = dmsConnector.Images2424
    Left = 408
    Top = 176
    object acAddPriceGroup: TAction
      Caption = 'L'#228'gg till F2'
      ImageIndex = 1
      ShortCut = 113
      OnExecute = acAddPriceGroupExecute
    end
    object acRemovePriceGroup: TAction
      Caption = 'Ta bort F5'
      ImageIndex = 2
      OnExecute = acRemovePriceGroupExecute
      OnUpdate = acRemovePriceGroupUpdate
    end
    object acSave: TAction
      Caption = 'Spara F3'
      ImageIndex = 6
      ShortCut = 114
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acCancelChanges: TAction
      Caption = #197'ngra F4'
      ImageIndex = 9
      ShortCut = 115
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
    object acRefreshAndUpdateGroupPrice: TAction
      Caption = 'Uppdatera F6'
      ImageIndex = 0
      ShortCut = 117
      OnExecute = acRefreshAndUpdateGroupPriceExecute
    end
  end
end
