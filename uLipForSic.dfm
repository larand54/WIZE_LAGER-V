object fLipForSic: TfLipForSic
  Left = 229
  Top = 107
  Width = 426
  Height = 311
  Caption = 'V'#228'lj lager'
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
  object Panel1: TPanel
    Left = 0
    Top = 243
    Width = 418
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 208
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 418
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object grdLipForSic: TcxGrid
    Left = 0
    Top = 41
    Width = 418
    Height = 202
    Align = alClient
    TabOrder = 2
    object grdLipForSicDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmInvCtrl.ds_LIP
      DataController.KeyFieldNames = 'LIPNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdLipForSicDBTableView1LIPNo: TcxGridDBColumn
        DataBinding.FieldName = 'LIPNo'
        Visible = False
        Width = 38
      end
      object grdLipForSicDBTableView1LAGER: TcxGridDBColumn
        DataBinding.FieldName = 'LAGER'
        SortIndex = 0
        SortOrder = soAscending
        Width = 297
      end
      object grdLipForSicDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'KOD'
        Width = 81
      end
    end
    object grdLipForSicLevel1: TcxGridLevel
      GridView = grdLipForSicDBTableView1
    end
  end
end
