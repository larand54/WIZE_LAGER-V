object frmPackagePicker_II: TfrmPackagePicker_II
  Left = 218
  Top = 210
  Width = 923
  Height = 346
  ActiveControl = grdPkgDuplicates
  BorderIcons = [biHelp]
  Caption = 'Paketnr dublett'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 277
    Width = 915
    Height = 42
    Align = alBottom
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 349
      Top = 7
      Width = 66
      Height = 27
      TabOrder = 0
      OnClick = btnOKClick
      Kind = bkOK
    end
    object btnCancel: TBitBtn
      Left = 427
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
    Width = 915
    Height = 277
    Align = alClient
    TabOrder = 1
    object grdPkgDuplicates: TcxGrid
      Left = 1
      Top = 1
      Width = 913
      Height = 275
      Align = alClient
      TabOrder = 0
      object grdPkgDuplicatesDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.KeyFieldNames = 'PackageNo;SupplierCode'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdPkgDuplicatesDBTableView1PackageNo: TcxGridDBColumn
          Caption = 'Paketnr'
          DataBinding.FieldName = 'PackageNo'
          Options.Filtering = False
          Width = 80
        end
        object grdPkgDuplicatesDBTableView1SupplierCode: TcxGridDBColumn
          Caption = 'Lev.Kod'
          DataBinding.FieldName = 'SupplierCode'
          Options.Filtering = False
          Width = 86
        end
        object grdPkgDuplicatesDBTableView1ProductDisplayName: TcxGridDBColumn
          Caption = 'Produkt'
          DataBinding.FieldName = 'ProductDisplayName'
          Options.Filtering = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 371
        end
        object grdPkgDuplicatesDBTableView1LengthDescription: TcxGridDBColumn
          Caption = 'L'#228'ngd'
          DataBinding.FieldName = 'LengthDescription'
          Options.Filtering = False
          Width = 374
        end
      end
      object grdPkgDuplicatesLevel1: TcxGridLevel
        GridView = grdPkgDuplicatesDBTableView1
      end
    end
  end
end
