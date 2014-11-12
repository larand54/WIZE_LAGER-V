object frmPackagePicker: TfrmPackagePicker
  Left = 218
  Top = 210
  Width = 761
  Height = 234
  ActiveControl = grdPackages
  BorderIcons = [biHelp]
  Caption = 'Paketnr dublett'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 165
    Width = 753
    Height = 42
    Align = alBottom
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 293
      Top = 7
      Width = 66
      Height = 27
      TabOrder = 0
      OnClick = btnOKClick
      Kind = bkOK
    end
    object btnCancel: TBitBtn
      Left = 371
      Top = 7
      Width = 66
      Height = 27
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 165
    Align = alClient
    TabOrder = 1
    object grdPackages: TdxDBGrid
      Left = 1
      Top = 1
      Width = 751
      Height = 163
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
      object grdPackagesPackageNo: TdxDBGridMaskColumn
        Caption = 'PKTNR'
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PackageNo'
      end
      object grdPackagesSupplierCode: TdxDBGridMaskColumn
        Caption = 'LEV.KOD'
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SupplierCode'
      end
      object grdPackagesProductDisplayName: TdxDBGridMaskColumn
        Caption = 'PRODUKT'
        Width = 314
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ProductDisplayName'
      end
      object grdPackagesLengthDescription: TdxDBGridMaskColumn
        Caption = 'L'#196'NGDBESKRIVNING'
        Width = 299
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LengthDescription'
      end
      object grdPackagesProductLengthNo: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ProductLengthNo'
      end
      object grdPackagesNoOfLengths: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoOfLengths'
      end
    end
  end
end
