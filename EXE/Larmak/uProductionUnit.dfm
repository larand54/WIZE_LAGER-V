object frmProductionUnit: TfrmProductionUnit
  Left = 198
  Top = 106
  Width = 702
  Height = 378
  Caption = 'Production Units'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 57
    Align = alTop
    TabOrder = 0
    object bbInsert: TBitBtn
      Left = 24
      Top = 16
      Width = 75
      Height = 25
      Caption = 'L'#228'gg till rad'
      TabOrder = 0
      OnClick = bbInsertClick
    end
    object bbRemove: TBitBtn
      Left = 112
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Ta bort rad'
      TabOrder = 1
      OnClick = bbRemoveClick
    end
    object bbCancelRow: TBitBtn
      Left = 192
      Top = 16
      Width = 75
      Height = 25
      Caption = #197'ngra rad'
      TabOrder = 2
      OnClick = bbCancelRowClick
    end
    object bbApplyChanges: TBitBtn
      Left = 416
      Top = 16
      Width = 91
      Height = 25
      Caption = 'Spara '#228'ndringar'
      TabOrder = 3
      OnClick = bbApplyChangesClick
    end
    object bbCancelChanges: TBitBtn
      Left = 520
      Top = 16
      Width = 89
      Height = 25
      Caption = #197'ngra '#228'ndringar'
      TabOrder = 4
      OnClick = bbCancelChangesClick
    end
  end
  object grdProdUnits: TdxDBGrid
    Left = 0
    Top = 57
    Width = 694
    Height = 294
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    DataSource = dmsContact.ds_ProductionUnit
    Filter.Criteria = {00000000}
    object grdProdUnitsProductionUnitName: TdxDBGridLookupColumn
      Caption = 'M'#196'TPUNKT'
      Width = 110
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RegPoint'
      ImmediateDropDown = True
    end
    object grdProdUnitsInventory: TdxDBGridLookupColumn
      Caption = 'LAGER'
      Width = 147
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Inventory'
    end
    object grdProdUnitsOnSticks: TdxDBGridCheckColumn
      Caption = 'P'#197' STR'#214
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OnSticks'
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object grdProdUnitsSurfacingNo: TdxDBGridMaskColumn
      Caption = 'UTF'#214'RANDE NR'
      Width = 92
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SurfacingNo'
    end
    object grdProdUnitsDIM_DIV: TdxDBGridMaskColumn
      Caption = 'DIM OMVANDLING'
      Width = 101
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DIM_DIV'
    end
    object grdProdUnitsSequenceNo: TdxDBGridMaskColumn
      Visible = False
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SequenceNo'
    end
    object grdProdUnitsProductionUnitNo: TdxDBGridMaskColumn
      Visible = False
      Width = 92
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProductionUnitNo'
    end
    object grdProdUnitsClientNo: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ClientNo'
    end
    object grdProdUnitsCreatedUser: TdxDBGridMaskColumn
      Visible = False
      Width = 65
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CreatedUser'
    end
    object grdProdUnitsModifiedUser: TdxDBGridMaskColumn
      Visible = False
      Width = 68
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ModifiedUser'
    end
    object grdProdUnitsDateCreated: TdxDBGridColumn
      Visible = False
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DateCreated'
    end
    object grdProdUnitsLogicalInventoryPointNo: TdxDBGridMaskColumn
      Visible = False
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LogicalInventoryPointNo'
    end
  end
end
