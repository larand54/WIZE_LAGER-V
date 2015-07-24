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
    UseDefaultLanguage = True
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
    Language = 'Origin'
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
      'ListField'
      'AutoIncFields'
      'CaseInsFields'
      'CatalogName'
      'Categories'
      'ClassName'
      'CommandText'
      'ConnectionName'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'DisplayChecked'
      'DisplayUnchecked'
      'EditFormat'
      'Expression'
      'FetchRowSQL'
      'Fields'
      'Filter'
      'FmtDisplayDate'
      'FmtDisplayDateTime'
      'FmtDisplayNumeric'
      'FmtDisplayTime'
      'FmtEditNumeric'
      'GeneratorName'
      'GraphicClassName'
      'HotZoneClassName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'KeyFieldNames'
      'ListFieldNames'
      'LockSQL'
      'Origin'
      'PackageName'
      'Params'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'PopupMenuLinks'
      'PropertiesClassName'
      'RegistryPath'
      'SchemaName'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'DataSetName'
      'IniFile'
      'ProviderName'
      'ScriptLanguage'
      'ScriptText')
    Left = 496
    Top = 280
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600440069007300740044007500700050006B006700
      730054006F004C006F006100640050006C0061006E0001004600F60072006400
      65006C0061002000700061006B006500740020007000E5002000640065007300
      740069006E006100740069006F006E00650072000100010001000D000A005000
      61006E0065006C0031000100500072006F00640075006B007400010001000100
      0D000A00630078004C006100620065006C0031000100630078004C0061006200
      65006C0031000100010001000D000A00420069007400420074006E0031000100
      4F004B000100010001000D000A006700720064004C006F006100640050006C00
      61006E0044004200420061006E006400650064005400610062006C0065005600
      69006500770031004C004100470045005200530054004C004C00450001004C00
      610067006500720073007400E4006C006C0065000100010001000D000A006700
      720064004C006F006100640050006C0061006E0044004200420061006E006400
      650064005400610062006C006500560069006500770031004C00410047004500
      52004700520055005000500001004C0061006700650072006700720075007000
      70000100010001000D000A006700720064004C006F006100640050006C006100
      6E0044004200420061006E006400650064005400610062006C00650056006900
      650077003100500052004F00440055004B0054000100500072006F0064007500
      630074000100010001000D000A006700720064004C006F006100640050006C00
      61006E0044004200420061006E006400650064005400610062006C0065005600
      69006500770031004C004E004700440001004C0041004E004700440001000100
      01000D000A006700720064004C006F006100640050006C0061006E0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      42004100520043004F0044004500010042006100720043006F00640065004900
      44000100010001000D000A006700720064004C006F006100640050006C006100
      6E0044004200420061006E006400650064005400610062006C00650056006900
      650077003100470052004100440045005300540041004D005000010047007200
      6100640065005300740061006D0070000100010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C0065005600690065007700310053004B004E0041004D004E00
      01005300F6006B006E0061006D006E000100010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C00650056006900650077003100500050005000010050005000
      50000100010001000D000A006700720064004C006F006100640050006C006100
      6E0044004200420061006E006400650064005400610062006C00650056006900
      6500770031004E006F004F00660050006B00670073004E006F004F0066005000
      6B00670073004C0061007300740049006E00760001004C006100730074004900
      6E00760043006F0075006E0074000100010001000D000A006700720064004C00
      6F006100640050006C0061006E0044004200420061006E006400650064005400
      610062006C006500560069006500770031004E006F004F00660050006B006700
      7300410052004100660074006500720044006100740065000100410052000100
      010001000D000A006700720064004C006F006100640050006C0061006E004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310054006F00740061006C004C006100670065007200010054006F0074006100
      6C0074000100010001000D000A006700720064004C006F006100640050006C00
      61006E0044004200420061006E006400650064005400610062006C0065005600
      69006500770031004E006F004F00660050006B006700730043006F006E006600
      690072006D0065006400440065007300740001004E006F004F00660050006B00
      6700730043006F006E006600690072006D006500640044006500730074000100
      010001000D000A006700720064004C006F006100640050006C0061006E004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004E006F004F00660050006B00670073004400690066006600440065007300
      74000100500061006B006500740044006900660066006500720065006E007300
      0100010001000D000A006700720064004C006F006100640050006C0061006E00
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310044006100740065004300720065006100740065006400010044006100
      7400650043007200650061007400650064000100010001000D000A0067007200
      64004C006F006100640050006C0061006E0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310043007200650061007400
      6500640055007300650072000100430072006500610074006500640055007300
      650072000100010001000D000A006700720064004C006F006100640050006C00
      61006E0044004200420061006E006400650064005400610062006C0065005600
      69006500770031004C006F006100640050006C0061006E004400650073007400
      52006F0077004E006F0001004C006F006100640050006C0061006E0044006500
      7300740052006F0077004E006F000100010001000D000A006700720064004C00
      6F006100640050006C0061006E0044004200420061006E006400650064005400
      610062006C006500560069006500770031004C006F006100640069006E006700
      4E006F0001004C006F006100640069006E0067004E006F000100010001000D00
      0A006700720064004C006F006100640050006C0061006E004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050006100
      63006B0061006700650054007900700065004E006F0001005000610063006B00
      61006700650054007900700065004E006F000100010001000D000A0067007200
      64004C006F006100640050006C0061006E0044004200420061006E0064006500
      64005400610062006C006500560069006500770031004E006F004F0066005000
      6B006700730050006C0061006E006E006500640001004E006F004F0066005000
      6B006700730050006C0061006E006E00650064000100010001000D000A006700
      720064004C006F006100640050006C0061006E0044004200420061006E006400
      650064005400610062006C0065005600690065007700310054006F0074000100
      54006F00740061006C0050006C0061006E000100010001000D000A0067007200
      64004C006F006100640050006C0061006E0044004200420061006E0064006500
      64005400610062006C006500560069006500770031004E006F004F0066005000
      6B00670073004C006F00610064006500640001004E006F004F00660050006B00
      670073004C006F0061006400650064000100010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C006500560069006500770031004E006F004F00660050006B00
      670073004C0065006600740001004E006F004F00660050006B00670073004C00
      6500660074000100010001000D000A0063007800470072006900640044004200
      420061006E0064006500640043006F006C0075006D006E00310001004F005200
      54000100010001000D000A006300780047007200690064004400420042006100
      6E0064006500640043006F006C0075006D006E0033000100500072006F006400
      7500630074000100010001000D000A0063007800470072006900640044004200
      420061006E0064006500640043006F006C0075006D006E00340001004C004100
      4E00470044000100010001000D000A0063007800470072006900640044004200
      420061006E0064006500640043006F006C0075006D006E003500010042006100
      720043006F0064006500490044000100010001000D000A006300780047007200
      6900640044004200420061006E0064006500640043006F006C0075006D006E00
      36000100470072006100640065005300740061006D0070000100010001000D00
      0A0063007800470072006900640044004200420061006E006400650064004300
      6F006C0075006D006E00370001005300F6006B006E0061006D006E0001000100
      01000D000A0063007800470072006900640044004200420061006E0064006500
      640043006F006C0075006D006E00380001005000500050000100010001000D00
      0A0063007800470072006900640044004200420061006E006400650064004300
      6F006C0075006D006E003900010050006B0074004B0076006100720001000100
      01000D000A0063007800470072006900640044004200420061006E0064006500
      640043006F006C0075006D006E00310030000100410052000100010001000D00
      0A0063007800470072006900640044004200420061006E006400650064004300
      6F006C0075006D006E0031003100010054006F00740061006C00740001000100
      01000D000A0063007800470072006900640044004200420061006E0064006500
      640043006F006C0075006D006E003100320001004E006F004F00660050006B00
      6700730043006F006E006600690072006D006500640044006500730074000100
      010001000D000A0063007800470072006900640044004200420061006E006400
      6500640043006F006C0075006D006E00310033000100500061006B0065007400
      44006900660066006500720065006E0073000100010001000D000A0063007800
      470072006900640044004200420061006E0064006500640043006F006C007500
      6D006E003100360001004C006F006100640050006C0061006E00440065007300
      740052006F0077004E006F000100010001000D000A0063007800470072006900
      640044004200420061006E0064006500640043006F006C0075006D006E003100
      370001004C006F006100640069006E0067004E006F000100010001000D000A00
      63007800470072006900640044004200420061006E0064006500640043006F00
      6C0075006D006E003100380001005000610063006B0061006700650054007900
      700065004E006F000100010001000D000A006300780047007200690064004400
      4200420061006E0064006500640043006F006C0075006D006E00310039000100
      500061006B00650074000100010001000D000A00630078004700720069006400
      44004200420061006E0064006500640043006F006C0075006D006E0032003100
      01004E006F004F00660050006B00670073004C006F0061006400650064000100
      010001000D000A006700720064004C006F006100640050006C0061006E004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      32004C006F006100640069006E0067004E006F0001004C006F00610064006900
      6E0067004E006F000100010001000D000A006700720064004C006F0061006400
      50006C0061006E0044004200420061006E006400650064005400610062006C00
      6500560069006500770032004C006F006100640050006C0061006E0044006500
      7300740052006F0077004E006F0001004C006F006100640050006C0061006E00
      440065007300740052006F0077004E006F000100010001000D000A0067007200
      64004C006F006100640050006C0061006E0044004200420061006E0064006500
      64005400610062006C006500560069006500770032005000610063006B006100
      6700650054007900700065004E006F0001005000610063006B00610067006500
      54007900700065004E006F000100010001000D000A006700720064004C006F00
      6100640050006C0061006E0044004200420061006E0064006500640054006100
      62006C006500560069006500770032004E006F004F00660050006B0067007300
      50006C0061006E006E006500640001004E006F004F00660050006B0067007300
      50006C0061006E006E00650064000100010001000D000A006700720064004C00
      6F006100640050006C0061006E0044004200420061006E006400650064005400
      610062006C006500560069006500770032004E006F004F00660050006B006700
      73004200650066006F0072006500440061007400650001004E006F004F006600
      50006B00670073004200650066006F0072006500440061007400650001000100
      01000D000A006700720064004C006F006100640050006C0061006E0044004200
      420061006E006400650064005400610062006C00650056006900650077003200
      4E006F004F00660050006B00670073004C006F00610064006500640001004E00
      6F004F00660050006B00670073004C006F006100640065006400010001000100
      0D000A006700720064004C006F006100640050006C0061006E00440042004200
      61006E006400650064005400610062006C006500560069006500770032004E00
      6F004F00660050006B0067007300410052004100660074006500720044006100
      7400650001004E006F004F00660050006B006700730041005200410066007400
      6500720044006100740065000100010001000D000A006700720064004C006F00
      6100640050006C0061006E0044004200420061006E0064006500640054006100
      62006C006500560069006500770032004E006F004F00660050006B0067007300
      41006600740065007200440061007400650001004E006F004F00660050006B00
      670073004100660074006500720044006100740065000100010001000D000A00
      6700720064004C006F006100640050006C0061006E0044004200420061006E00
      6400650064005400610062006C006500560069006500770032004E006F004F00
      660050006B006700730043006F006E006600690072006D006500640044006500
      7300740001004E006F004F00660050006B006700730043006F006E0066006900
      72006D006500640044006500730074000100010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C006500560069006500770032004E006F004F00660050006B00
      670073004400690066006600440065007300740001004E006F004F0066005000
      6B0067007300440069006600660044006500730074000100010001000D000A00
      6700720064004C006F006100640050006C0061006E0044004200420061006E00
      6400650064005400610062006C00650056006900650077003200430072006500
      6100740065006400550073006500720001004300720065006100740065006400
      55007300650072000100010001000D000A006700720064004C006F0061006400
      50006C0061006E0044004200420061006E006400650064005400610062006C00
      6500560069006500770032004C004100470045005200530054004C004C004500
      01004C00410047004500520053005400C4004C004C0045000100010001000D00
      0A006700720064004C006F006100640050006C0061006E004400420042006100
      6E006400650064005400610062006C006500560069006500770032004C004100
      4700450052004700520055005000500001004C00410047004500520047005200
      5500500050000100010001000D000A006700720064004C006F00610064005000
      6C0061006E0044004200420061006E006400650064005400610062006C006500
      56006900650077003200500052004F00440055004B0054000100500072006F00
      640075006B0074000100010001000D000A006700720064004C006F0061006400
      50006C0061006E0044004200420061006E006400650064005400610062006C00
      65005600690065007700320042004100520043004F0044004500010042004100
      520043004F00440045000100010001000D000A006700720064004C006F006100
      640050006C0061006E0044004200420061006E00640065006400540061006200
      6C0065005600690065007700320053004B004E0041004D004E0001005300F600
      6B006E0061006D006E000100010001000D000A006700720064004C006F006100
      640050006C0061006E0044004200420061006E00640065006400540061006200
      6C006500560069006500770032004C004E004700440001004C00C4004E004700
      44000100010001000D000A006700720064004C006F006100640050006C006100
      6E0044004200420061006E006400650064005400610062006C00650056006900
      650077003200470052004100440045005300540041004D005000010047007200
      6100640065005300740061006D0070000100010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C00650056006900650077003200530041004C0044004F000100
      530041004C0044004F000100010001000D000A006700720064004C006F006100
      640050006C0061006E0044004200420061006E00640065006400540061006200
      6C00650056006900650077003200500061006B00650074004400690066006600
      6500720065006E0073000100500061006B006500740044006900660066006500
      720065006E0073000100010001000D000A006700720064004C006F0061006400
      50006C0061006E0044004200420061006E006400650064005400610062006C00
      6500560069006500770032004E006F004F00660050006B00670073004C006500
      6600740001004E006F004F00660050006B00670073004C006500660074000100
      010001000D000A006700720064004C006F006100640050006C0061006E004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      32004E006F004F00660050006B00670073004C0061007300740049006E007600
      01004E006F004F00660050006B00670073004C0061007300740049006E007600
      0100010001000D000A006700720064004C006F006100640050006C0061006E00
      44004200420061006E006400650064005400610062006C006500560069006500
      7700320054006F00740061006C004C006100670065007200010054006F007400
      61006C004C0061006700650072000100010001000D000A006700720064004C00
      6F006100640050006C0061006E0044004200420061006E006400650064005400
      610062006C006500560069006500770032004400610074006500430072006500
      6100740065006400010044006100740065004300720065006100740065006400
      0100010001000D000A006700720064004C006F006100640050006C0061006E00
      44004200420061006E006400650064005400610062006C006500560069006500
      770032004C0061007300740049006E00760043006F0075006E00740001004C00
      61007300740049006E00760043006F0075006E0074000100010001000D000A00
      6700720064004C006F006100640050006C0061006E0044004200420061006E00
      6400650064005400610062006C00650056006900650077003200410052000100
      410052000100010001000D000A006700720064004C006F006100640050006C00
      61006E0044004200420061006E006400650064005400610062006C0065005600
      690065007700320054006F0074004C006100670065007200010054006F007400
      61006C0074000100010001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A0054006600440069007300740044007500700050006B0067007300
      54006F004C006F006100640050006C0061006E0001004D005300200053006100
      6E00730020005300650072006900660001004D0053002000530061006E007300
      20005300650072006900660001005400610068006F006D0061000D000A005000
      61006E0065006C00310001004D0053002000530061006E007300200053006500
      720069006600010001005400610068006F006D0061000D000A00730074004D00
      75006C00740069004C0069006E00650073005F0055006E00690063006F006400
      65000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00730074004F007400680065007200530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A006700720064004C006F006100640050006C0061006E00
      44004200420061006E006400650064005400610062006C006500560069006500
      770031002E00420061006E00640073005B0030005D002E004300610070007400
      69006F006E000100440045005300540049004E004100540049004F004E000100
      01000D000A006700720064004C006F006100640050006C0061006E0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      2E00420061006E00640073005B0031005D002E00430061007000740069006F00
      6E000100500052004F00440055004B005400010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C006500560069006500770031002E00420061006E0064007300
      5B0032005D002E00430061007000740069006F006E00010050004C0041004E00
      010001000D000A006700720064004C006F006100640050006C0061006E004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31002E00420061006E00640073005B0033005D002E0043006100700074006900
      6F006E0001004C004100470045005200010001000D000A006700720064004C00
      6F006100640050006C0061006E0044004200420061006E006400650064005400
      610062006C006500560069006500770031002E00420061006E00640073005B00
      34005D002E00430061007000740069006F006E000100550054004C0045005600
      4500520041004E005300010001000D000A006700720064004C006F0061006400
      50006C0061006E0044004200420061006E006400650064005400610062006C00
      6500560069006500770031002E00420061006E00640073005B0035005D002E00
      430061007000740069006F006E0001004D004F00540054004100470045005400
      010001000D000A0063007800470072006900640044004200420061006E006400
      650064005400610062006C006500560069006500770031002E00420061006E00
      640073005B0030005D002E00430061007000740069006F006E00010044004500
      5300540049004E004100540049004F004E00010001000D000A00630078004700
      72006900640044004200420061006E006400650064005400610062006C006500
      560069006500770031002E00420061006E00640073005B0031005D002E004300
      61007000740069006F006E000100500052004F00440055004B00540001000100
      0D000A0063007800470072006900640044004200420061006E00640065006400
      5400610062006C006500560069006500770031002E00420061006E0064007300
      5B0032005D002E00430061007000740069006F006E00010050004C0041004E00
      010001000D000A0063007800470072006900640044004200420061006E006400
      650064005400610062006C006500560069006500770031002E00420061006E00
      640073005B0033005D002E00430061007000740069006F006E0001004C004100
      470045005200010001000D000A00630078004700720069006400440042004200
      61006E006400650064005400610062006C006500560069006500770031002E00
      420061006E00640073005B0034005D002E00430061007000740069006F006E00
      0100550054004C00450056004500520041004E005300010001000D000A006300
      7800470072006900640044004200420061006E00640065006400540061006200
      6C006500560069006500770031002E00420061006E00640073005B0035005D00
      2E00430061007000740069006F006E0001004D004F0054005400410047004500
      5400010001000D000A0073007400430068006100720053006500740073005F00
      55006E00690063006F00640065000D000A005400660044006900730074004400
      7500700050006B006700730054006F004C006F006100640050006C0061006E00
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00500061006E0065006C0031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00}
  end
end
