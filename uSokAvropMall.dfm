object fSokAvropMall: TfSokAvropMall
  Left = 229
  Top = 107
  Caption = 'Mallar'
  ClientHeight = 298
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 257
    Width = 513
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 152
      Top = 8
      Width = 75
      Height = 25
      DoubleBuffered = True
      Kind = bkOK
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      DoubleBuffered = True
      Kind = bkCancel
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 513
    Height = 41
    Align = alTop
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Action = acNew
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 104
      Top = 8
      Width = 75
      Height = 25
      Action = acDelete
      TabOrder = 1
    end
  end
  object grdMall: TcxGrid
    Left = 0
    Top = 41
    Width = 513
    Height = 216
    Align = alClient
    TabOrder = 2
    object grdMallDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_Props
      DataController.KeyFieldNames = 'UserID;Form'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdMallDBTableView1Form: TcxGridDBColumn
        Caption = 'Mall'
        DataBinding.FieldName = 'Form'
        Width = 167
      end
      object grdMallDBTableView1UserID: TcxGridDBColumn
        DataBinding.FieldName = 'UserID'
        Visible = False
        VisibleForCustomization = False
        Width = 101
      end
      object grdMallDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
        Visible = False
        VisibleForCustomization = False
        Width = 165
      end
      object grdMallDBTableView1LOObjectType: TcxGridDBColumn
        DataBinding.FieldName = 'LOObjectType'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 86
      end
    end
    object grdMallLevel1: TcxGridLevel
      GridView = grdMallDBTableView1
    end
  end
  object ActionList1: TActionList
    Left = 328
    Top = 112
    object acNew: TAction
      Caption = 'Ny'
      OnExecute = acNewExecute
    end
    object acSave: TAction
      Caption = 'Spara'
    end
    object acDelete: TAction
      Caption = 'Ta bort'
      OnExecute = acDeleteExecute
    end
  end
  object ds_Props: TDataSource
    DataSet = dmInventory.cds_Props
    Left = 152
    Top = 112
  end
end
