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
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Base'
      'Swedish')
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
      640065000D000A0054006600440069007300740044007500700050006B006700
      730054006F004C006F006100640050006C0061006E0001004600F60072006400
      65006C0061002000700061006B006500740020007000E5002000640065007300
      740069006E006100740069006F006E0065007200010001000D000A0050006100
      6E0065006C0031000100500072006F00640075006B007400010001000D000A00
      630078004C006100620065006C0031000100630078004C006100620065006C00
      3100010001000D000A00420069007400420074006E00310001004F004B000100
      01000D000A006700720064004C006F006100640050006C0061006E0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4C004100470045005200530054004C004C00450001004C006100670065007200
      73007400E4006C006C006500010001000D000A006700720064004C006F006100
      640050006C0061006E0044004200420061006E00640065006400540061006200
      6C006500560069006500770031004C0041004700450052004700520055005000
      500001004C00610067006500720067007200750070007000010001000D000A00
      6700720064004C006F006100640050006C0061006E0044004200420061006E00
      6400650064005400610062006C00650056006900650077003100500052004F00
      440055004B0054000100500072006F006400750063007400010001000D000A00
      6700720064004C006F006100640050006C0061006E0044004200420061006E00
      6400650064005400610062006C006500560069006500770031004C004E004700
      440001004C0041004E0047004400010001000D000A006700720064004C006F00
      6100640050006C0061006E0044004200420061006E0064006500640054006100
      62006C0065005600690065007700310042004100520043004F00440045000100
      42006100720043006F006400650049004400010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C00650056006900650077003100470052004100440045005300
      540041004D0050000100470072006100640065005300740061006D0070000100
      01000D000A006700720064004C006F006100640050006C0061006E0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      53004B004E0041004D004E0001005300F6006B006E0061006D006E0001000100
      0D000A006700720064004C006F006100640050006C0061006E00440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      500050000100500050005000010001000D000A006700720064004C006F006100
      640050006C0061006E0044004200420061006E00640065006400540061006200
      6C006500560069006500770031004E006F004F00660050006B00670073004E00
      6F004F00660050006B00670073004C0061007300740049006E00760001004C00
      61007300740049006E00760043006F0075006E007400010001000D000A006700
      720064004C006F006100640050006C0061006E0044004200420061006E006400
      650064005400610062006C006500560069006500770031004E006F004F006600
      50006B0067007300410052004100660074006500720044006100740065000100
      41005200010001000D000A006700720064004C006F006100640050006C006100
      6E0044004200420061006E006400650064005400610062006C00650056006900
      65007700310054006F00740061006C004C006100670065007200010054006F00
      740061006C007400010001000D000A006700720064004C006F00610064005000
      6C0061006E0044004200420061006E006400650064005400610062006C006500
      560069006500770031004E006F004F00660050006B006700730043006F006E00
      6600690072006D0065006400440065007300740001004E006F004F0066005000
      6B006700730043006F006E006600690072006D00650064004400650073007400
      010001000D000A006700720064004C006F006100640050006C0061006E004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004E006F004F00660050006B00670073004400690066006600440065007300
      74000100500061006B006500740044006900660066006500720065006E007300
      010001000D000A006700720064004C006F006100640050006C0061006E004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100440061007400650043007200650061007400650064000100440061007400
      65004300720065006100740065006400010001000D000A006700720064004C00
      6F006100640050006C0061006E0044004200420061006E006400650064005400
      610062006C006500560069006500770031004300720065006100740065006400
      5500730065007200010043007200650061007400650064005500730065007200
      010001000D000A006700720064004C006F006100640050006C0061006E004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004C006F006100640050006C0061006E00440065007300740052006F007700
      4E006F0001004C006F006100640050006C0061006E0044006500730074005200
      6F0077004E006F00010001000D000A006700720064004C006F00610064005000
      6C0061006E0044004200420061006E006400650064005400610062006C006500
      560069006500770031004C006F006100640069006E0067004E006F0001004C00
      6F006100640069006E0067004E006F00010001000D000A006700720064004C00
      6F006100640050006C0061006E0044004200420061006E006400650064005400
      610062006C006500560069006500770031005000610063006B00610067006500
      54007900700065004E006F0001005000610063006B0061006700650054007900
      700065004E006F00010001000D000A006700720064004C006F00610064005000
      6C0061006E0044004200420061006E006400650064005400610062006C006500
      560069006500770031004E006F004F00660050006B006700730050006C006100
      6E006E006500640001004E006F004F00660050006B006700730050006C006100
      6E006E0065006400010001000D000A006700720064004C006F00610064005000
      6C0061006E0044004200420061006E006400650064005400610062006C006500
      5600690065007700310054006F007400010054006F00740061006C0050006C00
      61006E00010001000D000A006700720064004C006F006100640050006C006100
      6E0044004200420061006E006400650064005400610062006C00650056006900
      6500770031004E006F004F00660050006B00670073004C006F00610064006500
      640001004E006F004F00660050006B00670073004C006F006100640065006400
      010001000D000A006700720064004C006F006100640050006C0061006E004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004E006F004F00660050006B00670073004C0065006600740001004E006F00
      4F00660050006B00670073004C00650066007400010001000D000A0063007800
      470072006900640044004200420061006E0064006500640043006F006C007500
      6D006E00310001004F0052005400010001000D000A0063007800470072006900
      640044004200420061006E0064006500640043006F006C0075006D006E003300
      0100500072006F006400750063007400010001000D000A006300780047007200
      6900640044004200420061006E0064006500640043006F006C0075006D006E00
      340001004C0041004E0047004400010001000D000A0063007800470072006900
      640044004200420061006E0064006500640043006F006C0075006D006E003500
      010042006100720043006F006400650049004400010001000D000A0063007800
      470072006900640044004200420061006E0064006500640043006F006C007500
      6D006E0036000100470072006100640065005300740061006D00700001000100
      0D000A0063007800470072006900640044004200420061006E00640065006400
      43006F006C0075006D006E00370001005300F6006B006E0061006D006E000100
      01000D000A0063007800470072006900640044004200420061006E0064006500
      640043006F006C0075006D006E0038000100500050005000010001000D000A00
      63007800470072006900640044004200420061006E0064006500640043006F00
      6C0075006D006E003900010050006B0074004B00760061007200010001000D00
      0A0063007800470072006900640044004200420061006E006400650064004300
      6F006C0075006D006E0031003000010041005200010001000D000A0063007800
      470072006900640044004200420061006E0064006500640043006F006C007500
      6D006E0031003100010054006F00740061006C007400010001000D000A006300
      7800470072006900640044004200420061006E0064006500640043006F006C00
      75006D006E003100320001004E006F004F00660050006B006700730043006F00
      6E006600690072006D00650064004400650073007400010001000D000A006300
      7800470072006900640044004200420061006E0064006500640043006F006C00
      75006D006E00310033000100500061006B006500740044006900660066006500
      720065006E007300010001000D000A0063007800470072006900640044004200
      420061006E0064006500640043006F006C0075006D006E003100360001004C00
      6F006100640050006C0061006E00440065007300740052006F0077004E006F00
      010001000D000A0063007800470072006900640044004200420061006E006400
      6500640043006F006C0075006D006E003100370001004C006F00610064006900
      6E0067004E006F00010001000D000A0063007800470072006900640044004200
      420061006E0064006500640043006F006C0075006D006E003100380001005000
      610063006B0061006700650054007900700065004E006F00010001000D000A00
      63007800470072006900640044004200420061006E0064006500640043006F00
      6C0075006D006E00310039000100500061006B0065007400010001000D000A00
      63007800470072006900640044004200420061006E0064006500640043006F00
      6C0075006D006E003200310001004E006F004F00660050006B00670073004C00
      6F006100640065006400010001000D000A006700720064004C006F0061006400
      50006C0061006E0044004200420061006E006400650064005400610062006C00
      6500560069006500770032004C006F006100640069006E0067004E006F000100
      4C006F006100640069006E0067004E006F00010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C006500560069006500770032004C006F006100640050006C00
      61006E00440065007300740052006F0077004E006F0001004C006F0061006400
      50006C0061006E00440065007300740052006F0077004E006F00010001000D00
      0A006700720064004C006F006100640050006C0061006E004400420042006100
      6E006400650064005400610062006C0065005600690065007700320050006100
      63006B0061006700650054007900700065004E006F0001005000610063006B00
      61006700650054007900700065004E006F00010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C006500560069006500770032004E006F004F00660050006B00
      6700730050006C0061006E006E006500640001004E006F004F00660050006B00
      6700730050006C0061006E006E0065006400010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C006500560069006500770032004E006F004F00660050006B00
      670073004200650066006F0072006500440061007400650001004E006F004F00
      660050006B00670073004200650066006F007200650044006100740065000100
      01000D000A006700720064004C006F006100640050006C0061006E0044004200
      420061006E006400650064005400610062006C00650056006900650077003200
      4E006F004F00660050006B00670073004C006F00610064006500640001004E00
      6F004F00660050006B00670073004C006F006100640065006400010001000D00
      0A006700720064004C006F006100640050006C0061006E004400420042006100
      6E006400650064005400610062006C006500560069006500770032004E006F00
      4F00660050006B00670073004100520041006600740065007200440061007400
      650001004E006F004F00660050006B0067007300410052004100660074006500
      72004400610074006500010001000D000A006700720064004C006F0061006400
      50006C0061006E0044004200420061006E006400650064005400610062006C00
      6500560069006500770032004E006F004F00660050006B006700730041006600
      740065007200440061007400650001004E006F004F00660050006B0067007300
      410066007400650072004400610074006500010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C006500560069006500770032004E006F004F00660050006B00
      6700730043006F006E006600690072006D006500640044006500730074000100
      4E006F004F00660050006B006700730043006F006E006600690072006D006500
      64004400650073007400010001000D000A006700720064004C006F0061006400
      50006C0061006E0044004200420061006E006400650064005400610062006C00
      6500560069006500770032004E006F004F00660050006B006700730044006900
      66006600440065007300740001004E006F004F00660050006B00670073004400
      6900660066004400650073007400010001000D000A006700720064004C006F00
      6100640050006C0061006E0044004200420061006E0064006500640054006100
      62006C0065005600690065007700320043007200650061007400650064005500
      7300650072000100430072006500610074006500640055007300650072000100
      01000D000A006700720064004C006F006100640050006C0061006E0044004200
      420061006E006400650064005400610062006C00650056006900650077003200
      4C004100470045005200530054004C004C00450001004C004100470045005200
      53005400C4004C004C004500010001000D000A006700720064004C006F006100
      640050006C0061006E0044004200420061006E00640065006400540061006200
      6C006500560069006500770032004C0041004700450052004700520055005000
      500001004C00410047004500520047005200550050005000010001000D000A00
      6700720064004C006F006100640050006C0061006E0044004200420061006E00
      6400650064005400610062006C00650056006900650077003200500052004F00
      440055004B0054000100500072006F00640075006B007400010001000D000A00
      6700720064004C006F006100640050006C0061006E0044004200420061006E00
      6400650064005400610062006C00650056006900650077003200420041005200
      43004F0044004500010042004100520043004F0044004500010001000D000A00
      6700720064004C006F006100640050006C0061006E0044004200420061006E00
      6400650064005400610062006C0065005600690065007700320053004B004E00
      41004D004E0001005300F6006B006E0061006D006E00010001000D000A006700
      720064004C006F006100640050006C0061006E0044004200420061006E006400
      650064005400610062006C006500560069006500770032004C004E0047004400
      01004C00C4004E0047004400010001000D000A006700720064004C006F006100
      640050006C0061006E0044004200420061006E00640065006400540061006200
      6C00650056006900650077003200470052004100440045005300540041004D00
      50000100470072006100640065005300740061006D007000010001000D000A00
      6700720064004C006F006100640050006C0061006E0044004200420061006E00
      6400650064005400610062006C00650056006900650077003200530041004C00
      44004F000100530041004C0044004F00010001000D000A006700720064004C00
      6F006100640050006C0061006E0044004200420061006E006400650064005400
      610062006C00650056006900650077003200500061006B006500740044006900
      660066006500720065006E0073000100500061006B0065007400440069006600
      66006500720065006E007300010001000D000A006700720064004C006F006100
      640050006C0061006E0044004200420061006E00640065006400540061006200
      6C006500560069006500770032004E006F004F00660050006B00670073004C00
      65006600740001004E006F004F00660050006B00670073004C00650066007400
      010001000D000A006700720064004C006F006100640050006C0061006E004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      32004E006F004F00660050006B00670073004C0061007300740049006E007600
      01004E006F004F00660050006B00670073004C0061007300740049006E007600
      010001000D000A006700720064004C006F006100640050006C0061006E004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      320054006F00740061006C004C006100670065007200010054006F0074006100
      6C004C006100670065007200010001000D000A006700720064004C006F006100
      640050006C0061006E0044004200420061006E00640065006400540061006200
      6C00650056006900650077003200440061007400650043007200650061007400
      6500640001004400610074006500430072006500610074006500640001000100
      0D000A006700720064004C006F006100640050006C0061006E00440042004200
      61006E006400650064005400610062006C006500560069006500770032004C00
      61007300740049006E00760043006F0075006E00740001004C00610073007400
      49006E00760043006F0075006E007400010001000D000A006700720064004C00
      6F006100640050006C0061006E0044004200420061006E006400650064005400
      610062006C006500560069006500770032004100520001004100520001000100
      0D000A006700720064004C006F006100640050006C0061006E00440042004200
      61006E006400650064005400610062006C006500560069006500770032005400
      6F0074004C006100670065007200010054006F00740061006C00740001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066004400
      69007300740044007500700050006B006700730054006F004C006F0061006400
      50006C0061006E0001004D0053002000530061006E0073002000530065007200
      69006600010001000D000A00500061006E0065006C00310001004D0053002000
      530061006E007300200053006500720069006600010001000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A006700
      720064004C006F006100640050006C0061006E0044004200420061006E006400
      650064005400610062006C006500560069006500770031004C00410047004500
      5200530054004C004C0045002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A006700720064004C006F006100640050006C0061006E004400420042006100
      6E006400650064005400610062006C006500560069006500770031004C004100
      470045005200470052005500500050002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A006700720064004C006F006100640050006C0061006E0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      500052004F00440055004B0054002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A006700720064004C006F006100640050006C0061006E00440042004200
      61006E006400650064005400610062006C006500560069006500770031004C00
      4E00470044002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      64004C006F006100640050006C0061006E0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310042004100520043004F00
      440045002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C00650056006900650077003100470052004100440045005300
      540041004D0050002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      720064004C006F006100640050006C0061006E0044004200420061006E006400
      650064005400610062006C0065005600690065007700310053004B004E004100
      4D004E002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C006500560069006500770031005000500050002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A006700720064004C006F00610064005000
      6C0061006E0044004200420061006E006400650064005400610062006C006500
      560069006500770031004E006F004F00660050006B00670073004E006F004F00
      660050006B00670073004C0061007300740049006E0076002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A006700720064004C006F006100640050006C00
      61006E0044004200420061006E006400650064005400610062006C0065005600
      69006500770031004E006F004F00660050006B00670073004100520041006600
      74006500720044006100740065002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A006700720064004C006F006100640050006C0061006E00440042004200
      61006E006400650064005400610062006C006500560069006500770031005400
      6F00740061006C004C0061006700650072002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A006700720064004C006F006100640050006C0061006E004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004E006F004F00660050006B006700730043006F006E006600690072006D00
      6500640044006500730074002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A006700720064004C006F006100640050006C0061006E004400420042006100
      6E006400650064005400610062006C006500560069006500770031004E006F00
      4F00660050006B0067007300440069006600660044006500730074002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A006700720064004C006F0061006400
      50006C0061006E0044004200420061006E006400650064005400610062006C00
      6500560069006500770031004400610074006500430072006500610074006500
      64002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064004C00
      6F006100640050006C0061006E0044004200420061006E006400650064005400
      610062006C006500560069006500770031004300720065006100740065006400
      55007300650072002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      720064004C006F006100640050006C0061006E0044004200420061006E006400
      650064005400610062006C006500560069006500770031004C006F0061006400
      50006C0061006E00440065007300740052006F0077004E006F002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A006700720064004C006F00610064005000
      6C0061006E0044004200420061006E006400650064005400610062006C006500
      560069006500770031004C006F006100640069006E0067004E006F002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A006700720064004C006F0061006400
      50006C0061006E0044004200420061006E006400650064005400610062006C00
      6500560069006500770031005000610063006B00610067006500540079007000
      65004E006F002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      64004C006F006100640050006C0061006E0044004200420061006E0064006500
      64005400610062006C006500560069006500770031004E006F004F0066005000
      6B006700730050006C0061006E006E00650064002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A006700720064004C006F006100640050006C0061006E00
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310054006F0074002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      6700720064004C006F006100640050006C0061006E0044004200420061006E00
      6400650064005400610062006C006500560069006500770031004E006F004F00
      660050006B00670073004C006F0061006400650064002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A006700720064004C006F006100640050006C006100
      6E0044004200420061006E006400650064005400610062006C00650056006900
      6500770031004E006F004F00660050006B00670073004C006500660074002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D0065000100540063007800430075007200720065006E00630079004500
      640069007400500072006F007000650072007400690065007300010001000D00
      0A0063007800470072006900640044004200420061006E006400650064004300
      6F006C0075006D006E0031002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006F00
      6F006B007500700043006F006D0062006F0042006F007800500072006F007000
      650072007400690065007300010001000D000A00630078004700720069006400
      44004200420061006E0064006500640043006F006C0075006D006E0033002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A00630078004700720069006400
      44004200420061006E0064006500640043006F006C0075006D006E0034002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A00630078004700720069006400
      44004200420061006E0064006500640043006F006C0075006D006E0035002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A00630078004700720069006400
      44004200420061006E0064006500640043006F006C0075006D006E0036002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A00630078004700720069006400
      44004200420061006E0064006500640043006F006C0075006D006E0037002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A00630078004700720069006400
      44004200420061006E0064006500640043006F006C0075006D006E0038002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A00630078004700720069006400
      44004200420061006E0064006500640043006F006C0075006D006E0039002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D0065000100540063007800430061006C00630045006400690074005000
      72006F007000650072007400690065007300010001000D000A00630078004700
      72006900640044004200420061006E0064006500640043006F006C0075006D00
      6E00310030002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D006500010054006300780043007500720072006500
      6E00630079004500640069007400500072006F00700065007200740069006500
      7300010001000D000A0063007800470072006900640044004200420061006E00
      64006500640043006F006C0075006D006E00310031002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      540063007800430075007200720065006E006300790045006400690074005000
      72006F007000650072007400690065007300010001000D000A00630078004700
      72006900640044004200420061006E0064006500640043006F006C0075006D00
      6E00310032002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D0065000100540063007800430061006C0063004500
      640069007400500072006F007000650072007400690065007300010001000D00
      0A0063007800470072006900640044004200420061006E006400650064004300
      6F006C0075006D006E00310033002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004300
      61006C0063004500640069007400500072006F00700065007200740069006500
      7300010001000D000A0063007800470072006900640044004200420061006E00
      64006500640043006F006C0075006D006E00310036002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A006300780047007200690064004400420042006100
      6E0064006500640043006F006C0075006D006E00310037002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A00630078004700720069006400440042004200
      61006E0064006500640043006F006C0075006D006E00310038002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A0063007800470072006900640044004200
      420061006E0064006500640043006F006C0075006D006E00310039002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D0065000100540063007800430075007200720065006E006300790045006400
      69007400500072006F007000650072007400690065007300010001000D000A00
      63007800470072006900640044004200420061006E0064006500640043006F00
      6C0075006D006E00320031002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780043007500
      7200720065006E00630079004500640069007400500072006F00700065007200
      7400690065007300010001000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A006700
      720064004C006F006100640050006C0061006E0044004200420061006E006400
      650064005400610062006C006500560069006500770031002E00420061006E00
      640073005B0030005D002E00430061007000740069006F006E00010044004500
      5300540049004E004100540049004F004E00010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C006500560069006500770031002E00420061006E0064007300
      5B0031005D002E00430061007000740069006F006E000100500052004F004400
      55004B005400010001000D000A006700720064004C006F006100640050006C00
      61006E0044004200420061006E006400650064005400610062006C0065005600
      69006500770031002E00420061006E00640073005B0032005D002E0043006100
      7000740069006F006E00010050004C0041004E00010001000D000A0067007200
      64004C006F006100640050006C0061006E0044004200420061006E0064006500
      64005400610062006C006500560069006500770031002E00420061006E006400
      73005B0033005D002E00430061007000740069006F006E0001004C0041004700
      45005200010001000D000A006700720064004C006F006100640050006C006100
      6E0044004200420061006E006400650064005400610062006C00650056006900
      6500770031002E00420061006E00640073005B0034005D002E00430061007000
      740069006F006E000100550054004C00450056004500520041004E0053000100
      01000D000A006700720064004C006F006100640050006C0061006E0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      2E00420061006E00640073005B0035005D002E00430061007000740069006F00
      6E0001004D004F00540054004100470045005400010001000D000A0063007800
      470072006900640044004200420061006E006400650064005400610062006C00
      6500560069006500770031002E00420061006E00640073005B0030005D002E00
      430061007000740069006F006E000100440045005300540049004E0041005400
      49004F004E00010001000D000A00630078004700720069006400440042004200
      61006E006400650064005400610062006C006500560069006500770031002E00
      420061006E00640073005B0031005D002E00430061007000740069006F006E00
      0100500052004F00440055004B005400010001000D000A006300780047007200
      6900640044004200420061006E006400650064005400610062006C0065005600
      69006500770031002E00420061006E00640073005B0032005D002E0043006100
      7000740069006F006E00010050004C0041004E00010001000D000A0063007800
      470072006900640044004200420061006E006400650064005400610062006C00
      6500560069006500770031002E00420061006E00640073005B0033005D002E00
      430061007000740069006F006E0001004C004100470045005200010001000D00
      0A0063007800470072006900640044004200420061006E006400650064005400
      610062006C006500560069006500770031002E00420061006E00640073005B00
      34005D002E00430061007000740069006F006E000100550054004C0045005600
      4500520041004E005300010001000D000A006300780047007200690064004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31002E00420061006E00640073005B0035005D002E0043006100700074006900
      6F006E0001004D004F00540054004100470045005400010001000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A0054006600440069007300740044007500700050006B0067007300
      54006F004C006F006100640050006C0061006E00010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0050006100
      6E0065006C0031000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00}
  end
end
