object fDistDupPkgsToLoadPlan: TfDistDupPkgsToLoadPlan
  Left = 229
  Top = 107
  Caption = 'F'#246'rdela paket p'#229' destinationer'
  ClientHeight = 543
  ClientWidth = 997
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
    Top = 0
    Width = 997
    Height = 69
    Align = alTop
    Caption = 'Produkt'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 8
      Top = 8
      AutoSize = False
      Caption = 'cxLabel1'
      Height = 20
      Width = 985
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 502
    Width = 997
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 472
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object grdLoadPlan: TcxGrid
    Left = 0
    Top = 69
    Width = 997
    Height = 0
    Align = alTop
    TabOrder = 2
    object grdLoadPlanDBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmLoadPlan.ds_LoadPlanRow
      DataController.KeyFieldNames = 'LoadingNo;PackageTypeNo;LoadPlanDestRowNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#######'
          Kind = skSum
          FieldName = 'NoOfPkgsPlanned'
        end
        item
          Format = '#######'
          Kind = skSum
          FieldName = 'NoOfPkgsLoaded'
        end
        item
          Format = '#######'
          Kind = skSum
          FieldName = 'NoOfPkgsConfirmedDest'
          Column = grdLoadPlanDBBandedTableView1NoOfPkgsConfirmedDest
        end
        item
          Format = '#######'
          Kind = skSum
          FieldName = 'PaketDifferens'
          Column = grdLoadPlanDBBandedTableView1NoOfPkgsDiffDest
        end
        item
          Format = '#######'
          Kind = skSum
          FieldName = 'NoOfPkgsLastInv'
          Column = grdLoadPlanDBBandedTableView1NoOfPkgsNoOfPkgsLastInv
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
              Column = grdLoadPlanDBBandedTableView1LAGERSTLLE
            end
            item
              Column = grdLoadPlanDBBandedTableView1LAGERGRUPP
            end
            item
              Column = grdLoadPlanDBBandedTableView1SKNAMN
            end>
          SummaryItems = <
            item
              Format = 'Plan:#######'
              Kind = skSum
              FieldName = 'NoOfPkgsPlanned'
            end
            item
              Format = 'Utlastat:#######'
              Kind = skSum
              FieldName = 'NoOfPkgsLoaded'
            end
            item
              Format = 'Differens:#######'
              Kind = skSum
              FieldName = 'NoOfPkgsDiffDest'
              Column = grdLoadPlanDBBandedTableView1NoOfPkgsDiffDest
            end>
        end>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.BandHiding = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'DESTINATION'
          Width = 166
        end
        item
          Caption = 'PRODUKT'
          Width = 365
        end
        item
          Caption = 'PLAN'
          Width = 77
        end
        item
          Caption = 'LAGER'
          Width = 138
        end
        item
          Caption = 'UTLEVERANS'
          Width = 126
        end
        item
          Caption = 'MOTTAGET'
          Width = 131
        end>
      object grdLoadPlanDBBandedTableView1LAGERSTLLE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Lagerst'#228'lle'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1LAGERGRUPP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Lagergrupp'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1PRODUKT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Product'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Options.SortByDisplayText = isbtOn
        Width = 132
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1LNGD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LANGD'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Options.SortByDisplayText = isbtOn
        Width = 62
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1BARCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BarCodeID'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Options.SortByDisplayText = isbtOn
        Width = 64
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1GRADESTAMP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GRADESTAMP'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Options.SortByDisplayText = isbtOn
        Width = 68
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1SKNAMN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S'#214'KNAMN'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Options.SortByDisplayText = isbtOn
        Width = 41
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1PPP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PPP'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1NoOfPkgsNoOfPkgsLastInv: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LastInvCount'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 57
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1NoOfPkgsARAfterDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AR'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 36
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1TotalLager: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TotLager'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 45
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1NoOfPkgsConfirmedDest: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfPkgsConfirmedDest'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 67
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1NoOfPkgsDiffDest: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PaketDifferens'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 52
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1DateCreated: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DateCreated'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1CreatedUser: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CreatedUser'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1LoadPlanDestRowNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadPlanDestRowNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1LoadingNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadingNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 58
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PackageTypeNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1NoOfPkgsPlanned: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfPkgsPlanned'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 37
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1Tot: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TotalPlan'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 41
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1NoOfPkgsLoaded: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfPkgsLoaded'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 82
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1NoOfPkgsLeft: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfPkgsLeft'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '####'
        Options.Filtering = False
        Width = 68
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object grdLoadPlanLevel1: TcxGridLevel
      GridView = grdLoadPlanDBBandedTableView1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 69
    Width = 997
    Height = 433
    Align = alClient
    TabOrder = 3
    object cxGridDBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmLoadPlan.ds_LoadPlanRow
      DataController.KeyFieldNames = 'LoadingNo;PackageTypeNo;LoadPlanDestRowNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#######'
          Kind = skSum
          FieldName = 'NoOfPkgsPlanned'
          Column = cxGridDBBandedColumn19
        end
        item
          Format = '#######'
          Kind = skSum
          FieldName = 'NoOfPkgsLoaded'
          Column = cxGridDBBandedColumn21
        end
        item
          Format = '#######'
          Kind = skSum
          FieldName = 'NoOfPkgsConfirmedDest'
          Column = cxGridDBBandedColumn12
        end
        item
          Format = '#######'
          Kind = skSum
          FieldName = 'PaketDifferens'
          Column = cxGridDBBandedColumn13
        end
        item
          Format = '#######'
          Kind = skSum
          FieldName = 'NoOfPkgsLastInv'
          Column = cxGridDBBandedColumn9
        end
        item
          Format = '#####'
          Kind = skCount
          FieldName = 'Product'
          Column = cxGridDBBandedColumn3
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
              Column = cxGridDBBandedColumn1
            end
            item
            end
            item
              Column = cxGridDBBandedColumn7
            end>
          SummaryItems = <
            item
              Format = 'Plan:#######'
              Kind = skSum
              FieldName = 'NoOfPkgsPlanned'
              Column = cxGridDBBandedColumn19
            end
            item
              Format = 'Utlastat:#######'
              Kind = skSum
              FieldName = 'NoOfPkgsLoaded'
              Column = cxGridDBBandedColumn21
            end
            item
              Format = 'Differens:#######'
              Kind = skSum
              FieldName = 'NoOfPkgsDiffDest'
              Column = cxGridDBBandedColumn13
            end>
        end>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.BandHiding = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'DESTINATION'
          Options.HoldOwnColumnsOnly = True
          Width = 143
        end
        item
          Caption = 'PRODUKT'
          Options.HoldOwnColumnsOnly = True
          Width = 375
        end
        item
          Caption = 'PLAN'
          Options.HoldOwnColumnsOnly = True
          Width = 79
        end
        item
          Caption = 'LAGER'
          Options.HoldOwnColumnsOnly = True
          Width = 142
        end
        item
          Caption = 'UTLEVERANS'
          Options.HoldOwnColumnsOnly = True
          Width = 147
        end
        item
          Caption = 'MOTTAGET'
          Options.HoldOwnColumnsOnly = True
          Visible = False
          Width = 117
        end>
      object cxGridDBBandedColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORT'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ListColumns = <>
        Options.Filtering = False
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Product'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Options.SortByDisplayText = isbtOn
        Width = 132
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LANGD'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Options.SortByDisplayText = isbtOn
        Width = 62
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn5: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BarCodeID'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Options.SortByDisplayText = isbtOn
        Width = 64
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn6: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GRADESTAMP'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Options.SortByDisplayText = isbtOn
        Width = 68
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn7: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S'#214'KNAMN'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Options.SortByDisplayText = isbtOn
        Width = 41
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn8: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PPP'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn9: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PktKvar'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 62
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn10: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AR'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#####'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 36
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn11: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TotLager'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#####'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 41
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn12: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfPkgsConfirmedDest'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
        Width = 67
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn13: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PaketDifferens'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
        Width = 52
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn16: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadPlanDestRowNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn17: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadingNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 58
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn18: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PackageTypeNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn19: TcxGridDBBandedColumn
        Caption = 'Paket'
        DataBinding.FieldName = 'NoOfPkgsPlanned'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '####'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 37
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn21: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfPkgsLoaded'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '####'
        Options.Filtering = False
        Width = 82
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object grdLoadPlanDBBandedTableView2: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmLoadPlan.ds_LoadPlanRow
      DataController.KeyFieldNames = 'LoadingNo;PackageTypeNo;LoadPlanDestRowNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
        end>
      object grdLoadPlanDBBandedTableView2LoadingNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadingNo'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2LoadPlanDestRowNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadPlanDestRowNo'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2PackageTypeNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PackageTypeNo'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2NoOfPkgsPlanned: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfPkgsPlanned'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2NoOfPkgsBeforeDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfPkgsBeforeDate'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2NoOfPkgsLoaded: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfPkgsLoaded'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2NoOfPkgsARAfterDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfPkgsARAfterDate'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2NoOfPkgsAfterDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfPkgsAfterDate'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2NoOfPkgsConfirmedDest: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfPkgsConfirmedDest'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2NoOfPkgsDiffDest: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfPkgsDiffDest'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2CreatedUser: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CreatedUser'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2LAGERSTLLE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LAGERST'#196'LLE'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2LAGERGRUPP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LAGERGRUPP'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2PRODUKT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRODUKT'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2BARCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BARCODE'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2SKNAMN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S'#214'KNAMN'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2LNGD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'L'#196'NGD'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2GRADESTAMP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GRADESTAMP'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2SALDO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALDO'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2PaketDifferens: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PaketDifferens'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2NoOfPkgsLeft: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfPkgsLeft'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2NoOfPkgsLastInv: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfPkgsLastInv'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2TotalLager: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TotalLager'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2DateCreated: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DateCreated'
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2LastInvCount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LastInvCount'
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2AR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AR'
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView2TotLager: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TotLager'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBBandedTableView1
    end
  end
  object siLangLinked_fDistDupPkgsToLoadPlan: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Swedish'
      'English')
    Language = 'Swedish'
    CommonContainer = dmLanguage.siLang1
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField')
    Left = 496
    Top = 280
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00}
  end
end
