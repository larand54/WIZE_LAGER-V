object fSelectInventorySET: TfSelectInventorySET
  Left = 0
  Top = 0
  Caption = 'Inventeringsgrupper'
  ClientHeight = 443
  ClientWidth = 1032
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 376
    Width = 1032
    Height = 67
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 472
      Top = 6
      Width = 113
      Height = 51
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1032
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 80
    ExplicitTop = 268
    ExplicitWidth = 185
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 1032
    Height = 335
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 56
    ExplicitTop = 464
    ExplicitWidth = 185
    ExplicitHeight = 41
    object grInventorySet: TcxGrid
      Left = 1
      Top = 1
      Width = 1030
      Height = 333
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 47
      ExplicitTop = 64
      ExplicitWidth = 985
      ExplicitHeight = 433
      object grInventorySetDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmInvCtrl.ds_InvCtrlSetList
        DataController.KeyFieldNames = 'IC_SETNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grInventorySetDBTableView1IC_SETNo: TcxGridDBColumn
          DataBinding.FieldName = 'IC_SETNo'
          Width = 60
        end
        object grInventorySetDBTableView1DateCreated: TcxGridDBColumn
          DataBinding.FieldName = 'DateCreated'
          Width = 136
        end
        object grInventorySetDBTableView1CreatedUser: TcxGridDBColumn
          DataBinding.FieldName = 'CreatedUser'
          Width = 66
        end
        object grInventorySetDBTableView1Note: TcxGridDBColumn
          DataBinding.FieldName = 'Note'
          Width = 173
        end
        object grInventorySetDBTableView1MaxDatum: TcxGridDBColumn
          DataBinding.FieldName = 'MaxDatum'
          Width = 176
        end
        object grInventorySetDBTableView1StartFilterOnMaxDate: TcxGridDBColumn
          DataBinding.FieldName = 'StartFilterOnMaxDate'
          Width = 175
        end
        object grInventorySetDBTableView1EndFilterOnMaxDate: TcxGridDBColumn
          DataBinding.FieldName = 'EndFilterOnMaxDate'
          Width = 175
        end
        object grInventorySetDBTableView1SetStatus: TcxGridDBColumn
          DataBinding.FieldName = 'SetStatus'
          Width = 55
        end
      end
      object grInventorySetLevel1: TcxGridLevel
        GridView = grInventorySetDBTableView1
      end
    end
  end
end
