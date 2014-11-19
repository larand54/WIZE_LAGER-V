object frmPackagePicker_III: TfrmPackagePicker_III
  Left = 218
  Top = 210
  Width = 1014
  Height = 283
  ActiveControl = grdPkgDuplicates
  BorderIcons = [biHelp]
  Caption = 'V'#196'LJ ETT PAKET'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 214
    Width = 1006
    Height = 42
    Align = alBottom
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 421
      Top = 7
      Width = 66
      Height = 27
      TabOrder = 0
      OnClick = btnOKClick
      Kind = bkOK
    end
    object btnCancel: TBitBtn
      Left = 499
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
    Width = 1006
    Height = 214
    Align = alClient
    TabOrder = 1
    object grdPkgDuplicates: TcxGrid
      Left = 1
      Top = 1
      Width = 1004
      Height = 212
      Align = alClient
      TabOrder = 0
      object grdPkgDuplicatesDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdPkgDuplicatesDBTableView1PackageNo: TcxGridDBColumn
          Caption = 'Paketnr'
          DataBinding.FieldName = 'PackageNo'
          Width = 67
        end
        object grdPkgDuplicatesDBTableView1SupplierCode: TcxGridDBColumn
          Caption = 'Lev.kod'
          DataBinding.FieldName = 'SupplierCode'
          Width = 55
        end
        object grdPkgDuplicatesDBTableView1ProductDisplayName: TcxGridDBColumn
          Caption = 'Produkt'
          DataBinding.FieldName = 'ProductDisplayName'
          SortIndex = 0
          SortOrder = soAscending
          Width = 242
        end
        object grdPkgDuplicatesDBTableView1LengthDescription: TcxGridDBColumn
          Caption = 'L'#228'ngdbeskrivning'
          DataBinding.FieldName = 'LengthDescription'
          Width = 127
        end
        object grdPkgDuplicatesDBTableView1LogicalInventoryName: TcxGridDBColumn
          Caption = 'Lagergrupp'
          DataBinding.FieldName = 'LogicalInventoryName'
          Width = 127
        end
        object grdPkgDuplicatesDBTableView1ClientName: TcxGridDBColumn
          Caption = #196'gare'
          DataBinding.FieldName = 'ClientName'
          Width = 132
        end
        object grdPkgDuplicatesDBTableView1PackageTypeNo: TcxGridDBColumn
          DataBinding.FieldName = 'PackageTypeNo'
          Width = 126
        end
        object grdPkgDuplicatesDBTableView1LIP: TcxGridDBColumn
          Caption = 'L'
          DataBinding.FieldName = 'LIP'
          Width = 126
        end
      end
      object grdPkgDuplicatesLevel1: TcxGridLevel
        GridView = grdPkgDuplicatesDBTableView1
      end
    end
  end
end
