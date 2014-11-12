object fBasMatPunkter: TfBasMatPunkter
  Left = 359
  Top = 105
  Width = 361
  Height = 511
  Caption = 'Bas m'#228'tpunkter'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bbInsert: TBitBtn
      Left = 24
      Top = 16
      Width = 89
      Height = 25
      Caption = 'L'#228'gg till rad'
      TabOrder = 0
      OnClick = bbInsertClick
    end
    object bbRemove: TBitBtn
      Left = 128
      Top = 16
      Width = 89
      Height = 25
      Caption = 'Ta bort rad'
      TabOrder = 1
      OnClick = bbRemoveClick
    end
    object bbCancelRow: TBitBtn
      Left = 232
      Top = 16
      Width = 75
      Height = 25
      Caption = #197'ngra rad'
      TabOrder = 2
      OnClick = bbCancelRowClick
    end
    object bbApplyChanges: TBitBtn
      Left = 24
      Top = 48
      Width = 91
      Height = 25
      Caption = 'Spara '#228'ndringar'
      TabOrder = 3
      OnClick = bbApplyChangesClick
    end
    object bbCancelChanges: TBitBtn
      Left = 128
      Top = 48
      Width = 89
      Height = 25
      Caption = #197'ngra '#228'ndringar'
      TabOrder = 4
      OnClick = bbCancelChangesClick
    end
  end
  object grdBasMP: TcxGrid
    Left = 0
    Top = 81
    Width = 353
    Height = 403
    Align = alClient
    TabOrder = 1
    object grdBasMPDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmsContact.ds_RegPoints
      DataController.KeyFieldNames = 'RegPointNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdBasMPDBTableView1RegPointNo: TcxGridDBColumn
        DataBinding.FieldName = 'RegPointNo'
        Visible = False
      end
      object grdBasMPDBTableView1RegPointName: TcxGridDBColumn
        Caption = 'M'#228'tpunkt'
        DataBinding.FieldName = 'RegPointName'
      end
      object grdBasMPDBTableView1CreatedUser: TcxGridDBColumn
        DataBinding.FieldName = 'CreatedUser'
        Visible = False
      end
      object grdBasMPDBTableView1ModifiedUser: TcxGridDBColumn
        DataBinding.FieldName = 'ModifiedUser'
        Visible = False
      end
      object grdBasMPDBTableView1DateCreated: TcxGridDBColumn
        DataBinding.FieldName = 'DateCreated'
        Visible = False
      end
      object grdBasMPDBTableView1SequenceNo: TcxGridDBColumn
        Caption = 'Producerande MP'
        DataBinding.FieldName = 'SequenceNo'
      end
    end
    object grdBasMPLevel1: TcxGridLevel
      GridView = grdBasMPDBTableView1
    end
  end
end
