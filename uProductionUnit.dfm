object frmProductionUnit: TfrmProductionUnit
  Left = 198
  Top = 106
  Width = 937
  Height = 378
  Caption = 'M'#228'tpunkter verk'
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
    Width = 929
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bbInsert: TBitBtn
      Left = 24
      Top = 40
      Width = 75
      Height = 25
      Caption = 'L'#228'gg till rad'
      TabOrder = 0
      OnClick = bbInsertClick
    end
    object bbRemove: TBitBtn
      Left = 112
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Ta bort rad'
      TabOrder = 1
      OnClick = bbRemoveClick
    end
    object bbCancelRow: TBitBtn
      Left = 192
      Top = 40
      Width = 75
      Height = 25
      Caption = #197'ngra rad'
      TabOrder = 2
      OnClick = bbCancelRowClick
    end
    object bbApplyChanges: TBitBtn
      Left = 416
      Top = 40
      Width = 91
      Height = 25
      Caption = 'Spara '#228'ndringar'
      TabOrder = 3
      OnClick = bbApplyChangesClick
    end
    object bbCancelChanges: TBitBtn
      Left = 520
      Top = 40
      Width = 89
      Height = 25
      Caption = #197'ngra '#228'ndringar'
      TabOrder = 4
      OnClick = bbCancelChangesClick
    end
    object cmbClients: TcxComboBox
      Left = 24
      Top = 8
      TabOrder = 5
      Text = 'Select client'
      Width = 121
    end
  end
  object grdProductionUnits: TcxGrid
    Left = 0
    Top = 73
    Width = 929
    Height = 278
    Align = alClient
    TabOrder = 1
    object grdProductionUnitsDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmsContact.ds_ProductionUnit
      DataController.KeyFieldNames = 'ClientNo;RegPoint'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdProductionUnitsDBTableView1ProductionUnitNo: TcxGridDBColumn
        DataBinding.FieldName = 'ProductionUnitNo'
      end
      object grdProductionUnitsDBTableView1ProductionUnitName: TcxGridDBColumn
        DataBinding.FieldName = 'ProductionUnitName'
      end
      object grdProductionUnitsDBTableView1ClientNo: TcxGridDBColumn
        DataBinding.FieldName = 'ClientNo'
      end
      object grdProductionUnitsDBTableView1SequenceNo: TcxGridDBColumn
        DataBinding.FieldName = 'SequenceNo'
      end
      object grdProductionUnitsDBTableView1CreatedUser: TcxGridDBColumn
        DataBinding.FieldName = 'CreatedUser'
      end
      object grdProductionUnitsDBTableView1ModifiedUser: TcxGridDBColumn
        DataBinding.FieldName = 'ModifiedUser'
      end
      object grdProductionUnitsDBTableView1DateCreated: TcxGridDBColumn
        DataBinding.FieldName = 'DateCreated'
      end
      object grdProductionUnitsDBTableView1LogicalInventoryPointNo: TcxGridDBColumn
        DataBinding.FieldName = 'LogicalInventoryPointNo'
      end
      object grdProductionUnitsDBTableView1RegistrationPointNo: TcxGridDBColumn
        DataBinding.FieldName = 'RegistrationPointNo'
      end
      object grdProductionUnitsDBTableView1RegPoint: TcxGridDBColumn
        DataBinding.FieldName = 'RegPoint'
      end
      object grdProductionUnitsDBTableView1OnSticks: TcxGridDBColumn
        DataBinding.FieldName = 'OnSticks'
      end
      object grdProductionUnitsDBTableView1SurfacingNo: TcxGridDBColumn
        DataBinding.FieldName = 'SurfacingNo'
      end
      object grdProductionUnitsDBTableView1DIM_DIV: TcxGridDBColumn
        DataBinding.FieldName = 'DIM_DIV'
      end
    end
    object grdProductionUnitsLevel1: TcxGridLevel
      GridView = grdProductionUnitsDBTableView1
    end
  end
end
