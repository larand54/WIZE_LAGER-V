object fDeliveryReport: TfDeliveryReport
  Left = 250
  Top = 76
  Align = alClient
  BorderStyle = bsNone
  Caption = 'LAGERRAPPORT'
  ClientHeight = 822
  ClientWidth = 1259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = pmFormShortcuts
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pcInventory: TcxPageControl
    Left = 0
    Top = 114
    Width = 1259
    Height = 708
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsProduktionPerPaketnr
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    Properties.Style = 9
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.Kind = lfUltraFlat
    TabSlants.Kind = skCutCorner
    ClientRectBottom = 708
    ClientRectRight = 1259
    ClientRectTop = 0
    object tsProduktionPerPaketnr: TcxTabSheet
      Caption = 'Leveranser'
      ImageIndex = 4
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1259
        Height = 41
        Align = alTop
        TabOrder = 0
        object cxButton3: TcxButton
          Left = 8
          Top = 10
          Width = 89
          Height = 25
          Action = acRefreshProdPaketNr
          TabOrder = 0
        end
        object cxButton4: TcxButton
          Left = 103
          Top = 10
          Width = 89
          Height = 25
          Action = acExpandAllProdPaketNr
          TabOrder = 1
        end
        object cxButton5: TcxButton
          Left = 198
          Top = 10
          Width = 89
          Height = 25
          Action = acCollapseAllProdPaketNr
          TabOrder = 2
        end
        object cxButton6: TcxButton
          Left = 657
          Top = 6
          Width = 89
          Height = 25
          Action = acNewProdPaketNrMall
          TabOrder = 3
        end
        object cxButton7: TcxButton
          Left = 752
          Top = 6
          Width = 89
          Height = 25
          Action = acDeleteProdPaketNrMall
          TabOrder = 4
        end
        object cxButton8: TcxButton
          Left = 847
          Top = 6
          Width = 89
          Height = 25
          Action = acSaveProdPaketNrMall
          TabOrder = 5
        end
        object cbProdPaketNr: TcxComboBox
          Left = 488
          Top = 14
          Properties.OnChange = cbProdPaketNrPropertiesChange
          TabOrder = 6
          Width = 163
        end
        object cxButton15: TcxButton
          Left = 293
          Top = 10
          Width = 89
          Height = 25
          Action = acPrint
          TabOrder = 7
        end
        object cbExpanded: TcxCheckBox
          Left = 392
          Top = 11
          Caption = 'Expanderad'
          Properties.OnChange = cbExpandedPropertiesChange
          TabOrder = 8
          Width = 88
        end
        object cxButton16: TcxButton
          Left = 942
          Top = 6
          Width = 92
          Height = 25
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Action = acUlrikaRapport
          TabOrder = 9
        end
      end
      object grdProdPaketNr: TcxGrid
        Left = 0
        Top = 41
        Width = 1259
        Height = 667
        Align = alClient
        TabOrder = 1
        object grdProdPaketNrDBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmInventory.ds_DeliveryStat
          DataController.KeyFieldNames = 'ProductNo;OwnerNo;LO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'NM3'
              Column = grdProdPaketNrDBBandedTableView1NM3
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'AM3'
              Column = grdProdPaketNrDBBandedTableView1AM3
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'NETTO'
              Column = grdProdPaketNrDBBandedTableView1NETTO
            end
            item
              Format = '#####.0'
              Kind = skAverage
              FieldName = 'MEDELPRIS'
              Column = grdProdPaketNrDBBandedTableView1MEDELPRIS
            end
            item
              Format = '##########'
              Kind = skSum
              FieldName = 'Styck'
              Column = grdProdPaketNrDBBandedTableView1Styck
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <
                item
                end
                item
                end
                item
                end
                item
                end
                item
                end
                item
                end
                item
                end
                item
                  Column = grdProdPaketNrDBBandedTableView1Kund
                end
                item
                  Column = grdProdPaketNrDBBandedTableView1PrisOK
                end
                item
                  Column = grdProdPaketNrDBBandedTableView1LO
                end
                item
                  Column = grdProdPaketNrDBBandedTableView1PRODUKT
                end
                item
                  Column = grdProdPaketNrDBBandedTableView1NomDim
                end
                item
                  Column = grdProdPaketNrDBBandedTableView1TS
                end
                item
                  Column = grdProdPaketNrDBBandedTableView1PC
                end
                item
                  Column = grdProdPaketNrDBBandedTableView1KV
                end
                item
                  Column = grdProdPaketNrDBBandedTableView1UT
                end
                item
                  Column = grdProdPaketNrDBBandedTableView1NT
                end
                item
                  Column = grdProdPaketNrDBBandedTableView1NB
                end
                item
                  Column = grdProdPaketNrDBBandedTableView1VarugruppNamn
                end>
              SummaryItems = <
                item
                  Format = '#,###,###.0'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'NM3'
                  Column = grdProdPaketNrDBBandedTableView1NM3
                end
                item
                  Format = '#,###,###.0'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'AM3'
                  Column = grdProdPaketNrDBBandedTableView1AM3
                end
                item
                  Format = '#,###,###,###.0'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'NETTO'
                  Column = grdProdPaketNrDBBandedTableView1NETTO
                end
                item
                  Format = '#####.0'
                  Kind = skAverage
                  Position = spFooter
                  FieldName = 'MEDELPRIS'
                  Column = grdProdPaketNrDBBandedTableView1MEDELPRIS
                end>
            end>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          DataController.Summary.OnAfterSummary = grdProdPaketNrDBBandedTableView1DataControllerSummaryAfterSummary
          OptionsBehavior.PullFocusing = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.Indicator = True
          Styles.GroupFooterSortedSummary = cxStyle3
          Styles.GroupSortedSummary = cxStyle1
          Bands = <
            item
              Caption = 'LEVERANS'
              Width = 473
            end
            item
              Caption = 'PRODUKT'
              Width = 603
            end
            item
              Caption = 'KVANTITET'
              Width = 443
            end>
          object grdProdPaketNrDBBandedTableView1Supplier: TcxGridDBBandedColumn
            Caption = 'Verk'
            DataBinding.FieldName = 'Supplier'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1Kund: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Kund'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 317
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1PrisOK: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PrisOK'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 53
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1OwnerNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OwnerNo'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1MEDELPRIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MEDELPRIS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '#####'
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1LO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LO'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 85
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1ProductNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ProductNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 67
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1PRODUKT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRODUKT'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 230
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1AT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AT'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1AB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AB'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1NT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NT'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1NB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NB'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1NomDim: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NomDim'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 55
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1AktDim: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AktDim'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1TS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TS'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1PC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PC'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1KV: TcxGridDBBandedColumn
            DataBinding.FieldName = 'KV'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1VarugruppNamn: TcxGridDBBandedColumn
            Caption = 'Varugrupp'
            DataBinding.FieldName = 'VarugruppNamn'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 82
            Position.BandIndex = 1
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1UT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UT'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1AM3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AM3'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '####.0'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1NM3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NM3'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '####.0'
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1NETTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NETTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '#########'
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1Styck: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Styck'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1Utlastad: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Utlastad'
            PropertiesClassName = 'TcxDateEditProperties'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object grdProdPaketNrDBBandedTableView1Lngd: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L'#228'ngd'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
        end
        object grdProdPaketNrLevel1: TcxGridLevel
          GridView = grdProdPaketNrDBBandedTableView1
        end
      end
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 240
        Top = -64
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 145
      end
    end
    object tsProduktionProduktSummary: TcxTabSheet
      Caption = 'Produktion (produktsummering)'
      ImageIndex = 5
      TabVisible = False
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1259
        Height = 41
        Align = alTop
        TabOrder = 0
        object cxButton9: TcxButton
          Left = 40
          Top = 8
          Width = 89
          Height = 25
          Action = acRefreshProdSUM
          TabOrder = 0
        end
        object cxButton10: TcxButton
          Left = 135
          Top = 10
          Width = 89
          Height = 25
          Action = acExpandAllProdSUM
          TabOrder = 1
        end
        object cxButton11: TcxButton
          Left = 248
          Top = 8
          Width = 89
          Height = 25
          Action = acCollapseAllProdSum
          TabOrder = 2
        end
        object cxButton12: TcxButton
          Left = 512
          Top = 8
          Width = 89
          Height = 25
          Action = acNewProdSUMMall
          TabOrder = 3
        end
        object cxButton13: TcxButton
          Left = 616
          Top = 8
          Width = 89
          Height = 25
          Caption = 'Ta bort mall'
          TabOrder = 4
        end
        object cxButton14: TcxButton
          Left = 720
          Top = 8
          Width = 89
          Height = 25
          Action = acSaveProdSUMMall
          TabOrder = 5
        end
        object cbProdSUM: TcxComboBox
          Left = 360
          Top = 8
          Properties.OnChange = cbProdSUMPropertiesChange
          TabOrder = 6
          Text = 'cbProdSUM'
          Width = 121
        end
      end
      object grdProdSUM: TcxGrid
        Left = 0
        Top = 41
        Width = 1259
        Height = 667
        Align = alClient
        TabOrder = 1
        object grdProdSUMDBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmInventory.ds_ProductionByProduct
          DataController.KeyFieldNames = 'ProductNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'NM3'
              Column = grdProdSUMDBBandedTableView1NM3
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'AM3'
              Column = grdProdSUMDBBandedTableView1AM3
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'AM1'
              Column = grdProdSUMDBBandedTableView1AM1
            end
            item
              Format = '###########'
              Kind = skSum
              FieldName = 'STYCK'
              Column = grdProdSUMDBBandedTableView1STYCK
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <
                item
                  Column = grdProdSUMDBBandedTableView1Operation
                end
                item
                  Column = grdProdSUMDBBandedTableView1ShiftTeamName
                end
                item
                  Column = grdProdSUMDBBandedTableView1RegPointName
                end
                item
                  Column = grdProdSUMDBBandedTableView1PRODUKT
                end
                item
                  Column = grdProdSUMDBBandedTableView1NT
                end
                item
                  Column = grdProdSUMDBBandedTableView1NB
                end
                item
                  Column = grdProdSUMDBBandedTableView1NomDim
                end
                item
                  Column = grdProdSUMDBBandedTableView1TS
                end
                item
                  Column = grdProdSUMDBBandedTableView1PC
                end
                item
                  Column = grdProdSUMDBBandedTableView1KV
                end
                item
                  Column = grdProdSUMDBBandedTableView1UT
                end
                item
                  Column = grdProdSUMDBBandedTableView1MP_SkiftLag
                end>
              SummaryItems = <
                item
                  Format = '#,###,###.0'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'AM3'
                  Column = grdProdSUMDBBandedTableView1AM3
                end
                item
                  Format = '#,###,###.0'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'NM3'
                  Column = grdProdSUMDBBandedTableView1NM3
                end>
            end>
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'PRODUKTION'
              Width = 273
            end
            item
              Caption = 'PRODUKT'
              Width = 596
            end
            item
              Caption = 'KVANTITET'
              Width = 376
            end>
          object grdProdSUMDBBandedTableView1Operation: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Operation'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1AvgLength: TcxGridDBBandedColumn
            Caption = 'M/L'
            DataBinding.FieldName = 'AvgLength'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 71
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1ShiftTeamName: TcxGridDBBandedColumn
            Caption = 'Skiftlag'
            DataBinding.FieldName = 'ShiftTeamName'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1RegPointName: TcxGridDBBandedColumn
            Caption = 'M'#228'tpunkt'
            DataBinding.FieldName = 'RegPointName'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 53
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1MP_SkiftLag: TcxGridDBBandedColumn
            Caption = 'M'#228'tpunkt/SkiftLag'
            DataBinding.FieldName = 'MP_SkiftLag'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 53
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1ProductNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ProductNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1PRODUKT: TcxGridDBBandedColumn
            Caption = 'Produkt'
            DataBinding.FieldName = 'PRODUKT'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1Paketnr: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Paketnr'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1Prefix: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Prefix'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1AT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AT'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1AB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AB'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1NT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NT'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1NB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NB'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1NomDim: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NomDim'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1AktDim: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AktDim'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1TS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TS'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1PC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PC'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1KV: TcxGridDBBandedColumn
            DataBinding.FieldName = 'KV'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1UT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UT'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1OwnerNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OwnerNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 1
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1STYCK: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STYCK'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1AM3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AM3'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1NM3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NM3'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1AM1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AM1'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1MFBM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MFBM'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grdProdSUMDBBandedTableView1AM2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AM2'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Position.BandIndex = 2
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
        object grdProdSUMLevel1: TcxGridLevel
          GridView = grdProdSUMDBBandedTableView1
        end
      end
    end
  end
  object cxSplitter2: TcxSplitter
    Left = 0
    Top = 106
    Width = 1259
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salTop
    Control = pgInventory
    Color = clMaroon
    ParentColor = False
  end
  object pgInventory: TcxPageControl
    Left = 0
    Top = 0
    Width = 1259
    Height = 106
    Align = alTop
    TabOrder = 6
    Properties.ActivePage = tsLagret
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ClientRectBottom = 102
    ClientRectLeft = 4
    ClientRectRight = 1255
    ClientRectTop = 4
    object tsLagret: TcxTabSheet
      Caption = 'Lager'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1251
        Height = 98
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel1: TBevel
          Left = 3
          Top = 27
          Width = 903
          Height = 3
        end
        object lcPIPNAME: TcxDBLookupComboBox
          Left = 1286
          Top = 74
          DataBinding.DataField = 'PIPNAME'
          DataBinding.DataSource = dsUserProp
          Properties.DropDownWidth = 200
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'PIPNO'
          Properties.ListColumns = <
            item
              FieldName = 'PIPNAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.MaxLength = 0
          Style.StyleController = cxEditStyleController3
          TabOrder = 19
          Visible = False
          Width = 19
        end
        object cxLabel2: TcxLabel
          Left = 4
          Top = 7
          Caption = 'Verk:'
          Style.StyleController = cxEditStyleController1
        end
        object cxLabel1: TcxLabel
          Left = 2
          Top = 30
          AutoSize = False
          Caption = 'Tjocklek'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
          Height = 16
          Width = 61
        end
        object cxLabel6: TcxLabel
          Left = 62
          Top = 30
          Caption = 'Bredd'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
        end
        object cxLabel7: TcxLabel
          Left = 309
          Top = 30
          Caption = 'L'#228'ngd'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
          Visible = False
        end
        object cxLabel8: TcxLabel
          Left = 368
          Top = 30
          Caption = 'Tr'#228'slag'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
        end
        object cxLabel9: TcxLabel
          Left = 453
          Top = 30
          Caption = 'Kvalitet'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
        end
        object cxLabel10: TcxLabel
          Left = 570
          Top = 30
          Caption = 'Utf'#246'rande'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
        end
        object cxLabel11: TcxLabel
          Left = 689
          Top = 30
          Caption = 'Impregnering'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
        end
        object ccbAT: TcxCheckComboBox
          Left = 2
          Top = 42
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Properties.OnClickCheck = ccbATPropertiesClickCheck
          Style.BorderStyle = ebsNone
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = btsOffice11
          Style.ButtonTransparency = ebtHideUnselected
          TabOrder = 3
          Visible = False
          Width = 57
        end
        object ccbAB: TcxCheckComboBox
          Left = 63
          Top = 42
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.StyleController = cxEditStyleController3
          TabOrder = 4
          Visible = False
          Width = 57
        end
        object ccbAL: TcxCheckComboBox
          Left = 309
          Top = 42
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.StyleController = cxEditStyleController3
          TabOrder = 5
          Width = 57
        end
        object ccbTS2: TcxCheckComboBox
          Left = 369
          Top = 42
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.StyleController = cxEditStyleController3
          TabOrder = 6
          Width = 85
        end
        object ccbKV2: TcxCheckComboBox
          Left = 453
          Top = 42
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.StyleController = cxEditStyleController3
          TabOrder = 7
          Width = 117
        end
        object ccbSU2: TcxCheckComboBox
          Left = 569
          Top = 42
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.StyleController = cxEditStyleController3
          TabOrder = 8
          Width = 121
        end
        object ccbIMP: TcxCheckComboBox
          Left = 689
          Top = 42
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.StyleController = cxEditStyleController3
          TabOrder = 9
          Width = 110
        end
        object cbOwner: TcxCheckComboBox
          Left = 59
          Top = 5
          Properties.DropDownRows = 15
          Properties.Items = <>
          Properties.OnCloseUp = cbOwnerPropertiesCloseUp
          Style.StyleController = cxEditStyleController3
          TabOrder = 10
          Width = 129
        end
        object eAT: TcxTextEdit
          Left = 4
          Top = 43
          TabOrder = 0
          OnExit = eATExit
          Width = 47
        end
        object eAB: TcxTextEdit
          Left = 62
          Top = 43
          TabOrder = 1
          OnExit = eABExit
          Width = 50
        end
        object eAL: TcxTextEdit
          Left = 312
          Top = 43
          TabOrder = 2
          OnExit = eALExit
          Width = 50
        end
        object ccVarugrupp: TcxCheckComboBox
          Left = 1
          Top = 75
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.StyleController = cxEditStyleController3
          TabOrder = 20
          Width = 103
        end
        object cxLabel29: TcxLabel
          Left = 1
          Top = 62
          Caption = 'Varugrupp'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
        end
        object teREF: TcxTextEdit
          Left = 453
          Top = 75
          TabOrder = 24
          OnExit = eATExit
          Width = 95
        end
        object cxLabel30: TcxLabel
          Left = 453
          Top = 62
          AutoSize = False
          Caption = 'Referens'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
          Height = 14
          Width = 61
        end
        object cxLabel31: TcxLabel
          Left = 114
          Top = 62
          AutoSize = False
          Caption = 'Lev.datum >='
          ParentFont = False
          Style.StyleController = cxEditStyleController2
          Height = 16
          Width = 95
        end
        object cxLabel32: TcxLabel
          Left = 287
          Top = 62
          AutoSize = False
          Caption = 'Lev.datum <='
          ParentFont = False
          Style.StyleController = cxEditStyleController2
          Height = 16
          Width = 95
        end
        object cxLabel33: TcxLabel
          Left = 1054
          Top = 39
          Caption = 'M'#228'tpunkt'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
          Visible = False
        end
        object cxLabel34: TcxLabel
          Left = 1153
          Top = 39
          Caption = 'Skiftlag'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
          Visible = False
        end
        object ccMatpunkt: TcxCheckComboBox
          Left = 1049
          Top = 52
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.StyleController = cxEditStyleController3
          TabOrder = 30
          Visible = False
          Width = 103
        end
        object ccbNT: TcxCheckComboBox
          Left = 122
          Top = 42
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Properties.OnClickCheck = ccbATPropertiesClickCheck
          Style.BorderStyle = ebsNone
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = btsOffice11
          Style.ButtonTransparency = ebtHideUnselected
          TabOrder = 31
          Visible = False
          Width = 57
        end
        object ccbNB: TcxCheckComboBox
          Left = 198
          Top = 42
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Properties.OnClickCheck = ccbATPropertiesClickCheck
          Style.BorderStyle = ebsNone
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = btsOffice11
          Style.ButtonTransparency = ebtHideUnselected
          TabOrder = 32
          Visible = False
          Width = 58
        end
        object cxLabel35: TcxLabel
          Left = 118
          Top = 30
          Caption = 'Tjocklek, nom'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
        end
        object cxLabel36: TcxLabel
          Left = 194
          Top = 30
          Caption = 'Bredd, nom'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
        end
        object eNT: TcxTextEdit
          Left = 126
          Top = 43
          TabOrder = 35
          OnExit = eNTExit
          Width = 55
        end
        object eNB: TcxTextEdit
          Left = 197
          Top = 43
          TabOrder = 36
          OnExit = eNBExit
          Width = 48
        end
        object ccSkiftLag: TcxCheckComboBox
          Left = 1161
          Top = 52
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.StyleController = cxEditStyleController3
          TabOrder = 37
          Visible = False
          Width = 88
        end
        object cxButton1: TcxButton
          Left = 800
          Top = 0
          Width = 89
          Height = 25
          Caption = 'St'#228'ng'
          TabOrder = 38
          OnClick = cxButton1Click
        end
        object cbPaReg: TcxCheckBox
          Left = 805
          Top = 32
          Caption = 'P'#229'registrerat'
          TabOrder = 39
          Visible = False
          Width = 84
        end
        object cbAvreg: TcxCheckBox
          Left = 925
          Top = 25
          Caption = 'Inkl.tid i filter'
          TabOrder = 40
          Visible = False
          Width = 84
        end
        object cxButton2: TcxButton
          Left = 704
          Top = 0
          Width = 89
          Height = 25
          Caption = 'Rensa filter'
          TabOrder = 41
          OnClick = cxButton2Click
        end
        object cxTextEdit1: TcxTextEdit
          Left = 988
          Top = 25
          TabOrder = 42
          Visible = False
          OnExit = eATExit
          Width = 79
        end
        object cxTextEdit2: TcxTextEdit
          Left = 1073
          Top = 25
          TabOrder = 43
          Visible = False
          OnExit = eATExit
          Width = 79
        end
        object cxLabel14: TcxLabel
          Left = 988
          Top = 12
          AutoSize = False
          Caption = 'Info1'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
          Visible = False
          Height = 16
          Width = 61
        end
        object cxLabel15: TcxLabel
          Left = 1073
          Top = 12
          AutoSize = False
          Caption = 'Info2'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
          Visible = False
          Height = 16
          Width = 61
        end
        object cxLabel37: TcxLabel
          Left = 571
          Top = 62
          AutoSize = False
          Caption = 'Land'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
          Height = 16
          Width = 39
        end
        object ccLand: TcxCheckComboBox
          Left = 570
          Top = 75
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.StyleController = cxEditStyleController3
          TabOrder = 47
          Width = 103
        end
        object ccKund: TcxCheckComboBox
          Left = 689
          Top = 75
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.StyleController = cxEditStyleController3
          TabOrder = 48
          Width = 103
        end
        object cxLabel38: TcxLabel
          Left = 690
          Top = 62
          AutoSize = False
          Caption = 'Kund'
          ParentFont = False
          Style.StyleController = cxEditStyleController2
          Height = 16
          Width = 39
        end
        object cbExkluderaEgnaLeveranser: TcxCheckBox
          Left = 805
          Top = 71
          Caption = 'Exkludera egna leveranser'
          State = cbsChecked
          TabOrder = 50
          Width = 172
        end
        object deStartPeriod: TcxDBDateEdit
          Left = 115
          Top = 75
          DataBinding.DataField = 'StartPeriod'
          DataBinding.DataSource = dsUserProp
          Properties.InputKind = ikStandard
          TabOrder = 21
          Width = 158
        end
        object deEndPeriod: TcxDBDateEdit
          Left = 287
          Top = 75
          DataBinding.DataField = 'EndPeriod'
          DataBinding.DataSource = dsUserProp
          Properties.InputKind = ikStandard
          TabOrder = 22
          Width = 146
        end
        object cbInkTimeInDateFilter: TcxDBCheckBox
          Left = 805
          Top = 52
          Caption = 'Inkl. tid i datum filter'
          DataBinding.DataField = 'KilnNo'
          DataBinding.DataSource = dsUserProp
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 51
          Visible = False
          Width = 121
        end
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PkgTable'
      'PaketNr'
      'TorkSats'
      'PaketTabellMeny'
      'FilterComboBoxes')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True)
    LookAndFeel.Kind = lfFlat
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 608
    Top = 497
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsNone
      FloatLeft = 273
      FloatTop = 178
      FloatClientWidth = 100
      FloatClientHeight = 280
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbPkgNoReport'
        end
        item
          Visible = True
          ItemName = 'lbPcsPerLengthReport'
        end
        item
          Visible = True
          ItemName = 'lbPkgTypeReport'
        end
        item
          Visible = True
          ItemName = 'lbInventoryCount'
        end
        item
          Visible = True
          ItemName = 'bbSummaryReport'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'lbExit'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Paketnr'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 310
      FloatTop = 566
      FloatClientWidth = 130
      FloatClientHeight = 160
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarButton28'
        end
        item
          Visible = True
          ItemName = 'dxBarButton37'
        end
        item
          Visible = True
          ItemName = 'dxBarButton38'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end>
      OldName = 'Paketnr'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'TorkSats'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 313
      FloatTop = 626
      FloatClientWidth = 86
      FloatClientHeight = 110
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton19'
        end>
      OldName = 'TorkSats'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'PaketTabellMeny'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 412
      FloatTop = 368
      FloatClientWidth = 179
      FloatClientHeight = 44
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          Visible = True
          ItemName = 'bbVisaAvAktiverade'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton25'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
      OldName = 'PaketTabellMeny'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar5: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Torksats2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbAddPkgsToKilnCharge'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton30'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton32'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton20'
        end>
      OldName = 'Torksats2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object lbExit: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object lbRefresh: TdxBarLargeButton
      Caption = '&Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      LargeImageIndex = 0
    end
    object lbPkgNoReport: TdxBarLargeButton
      Caption = 'Paketnr F2'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 2
      ShortCut = 113
    end
    object lbPcsPerLengthReport: TdxBarLargeButton
      Caption = 'Ant/l'#228'ngd F3'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 5
      ShortCut = 114
    end
    object lbPkgTypeReport: TdxBarLargeButton
      Caption = 'Paketkod F4'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 4
      ShortCut = 115
    end
    object lbInventoryCount: TdxBarLargeButton
      Caption = 'PktNr lista F5'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 2
      ShortCut = 116
    end
    object lbHideFilterPanel: TdxBarLargeButton
      Caption = 'G'#246'm filter'
      Category = 0
      Hint = 'G'#246'm filter'
      Visible = ivAlways
      ButtonStyle = bsChecked
      LargeImageIndex = 6
    end
    object bbSummaryReport: TdxBarLargeButton
      Caption = 'Summering CR F6'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 7
      ShortCut = 117
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Tabell F8'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 8
      ShortCut = 119
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Summering F7'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 7
      ShortCut = 118
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Inst'#228'llningar'
      Category = 0
      Visible = ivAlways
      ImageIndex = 12
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton40'
        end
        item
          Visible = True
          ItemName = 'dxBarButton41'
        end
        item
          UserDefine = [udPaintStyle]
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarButton26'
        end
        item
          Visible = True
          ItemName = 'dxBarButton27'
        end
        item
          Visible = True
          ItemName = 'dxBarButton33'
        end
        item
          Visible = True
          ItemName = 'dxBarButton36'
        end
        item
          Visible = True
          ItemName = 'dxBarButton39'
        end
        item
          Visible = True
          ItemName = 'dxBarButton42'
        end>
    end
    object dxBarButton33: TdxBarButton
      Caption = 'Summering'
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton40: TdxBarButton
      Action = acSaveGridLayout
      Category = 0
    end
    object dxBarButton41: TdxBarButton
      Action = acLoadGridLayout
      Category = 0
    end
    object dxBarButton42: TdxBarButton
      Action = acExportToExcel
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = acPkgInfo
      Category = 1
    end
    object dxBarButton2: TdxBarButton
      Caption = 'F'#228'lt v'#228'ljare'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Expandera alla grupper'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Kollapsa alla grupper'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = #196'ndra paket'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Ta bort paket'
      Category = 1
      Enabled = False
      Visible = ivAlways
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Paketlogg'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton35: TdxBarButton
      Caption = 'V'#229'rda lager'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton43: TdxBarButton
      Caption = #196'ndra pris p'#229' markerade paket'
      Category = 1
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000005A00000084
        000000C6000042424200008484008484840084FF840000C6C600C6C6C600C6FF
        C600FF00FF0084FFFF00C6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A05040404050A0A0A0A0A0A05040404
        05040C0B0B040A0A0A0A0A0A040C0B0B04050404040504050A0A0A0A05040404
        050A0A04080808040A0A0A0A0A0A0A0A0A0A0A04070707040A0A0A0000000000
        000000040808080400000A0001010202020202040707070401000A0001020606
        060303040D0B0B0401000A0002090906030808040404040602000A0002090909
        030C08080306060602000A0001020909090303030606060201000A0001010209
        090909060606020101000A0000000000000000000000000000000A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A}
    end
    object dxBarButton8: TdxBarButton
      Caption = 'Registrera paket'
      Category = 2
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton9: TdxBarButton
      Caption = #196'ndra paket'
      Category = 2
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Avregistrera paket'
      Category = 2
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton11: TdxBarButton
      Caption = 'Skriv ut'
      Category = 2
      Visible = ivAlways
      ImageIndex = 11
    end
    object dxBarButton12: TdxBarButton
      Caption = 'Emaila'
      Category = 2
      Visible = ivAlways
      ImageIndex = 6
    end
    object dxBarButton14: TdxBarButton
      Caption = 'F'#228'lt v'#228'ljare'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton13: TdxBarButton
      Caption = 'Paketinformation'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton28: TdxBarButton
      Caption = 'Flytta paket internt'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton34: TdxBarButton
      Caption = 'Avregistrera mot inventering'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton37: TdxBarButton
      Caption = 'Ta bort paket (lagerv'#229'rd)'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton38: TdxBarButton
      Caption = #196'ndra paket (lagerv'#229'rd)'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton15: TdxBarButton
      Caption = 'Ny torksats'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton16: TdxBarButton
      Caption = '  Spara  '
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton17: TdxBarButton
      Caption = #197'ngra'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton18: TdxBarButton
      Caption = 'Ta bort torksats'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton19: TdxBarButton
      Caption = #214'ppna'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton20: TdxBarButton
      Caption = 'Skriv ut'
      Category = 3
      Visible = ivAlways
    end
    object bbAddPkgsToKilnCharge: TdxBarButton
      Caption = 'L'#228'gg paket till torksats'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton30: TdxBarButton
      Caption = 'Ta bort paket'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton29: TdxBarButton
      Caption = 'Ta bort rad'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton31: TdxBarButton
      Caption = 'Flytta paket till lager efter tork'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton32: TdxBarButton
      Caption = 'Notering'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton21: TdxBarButton
      Caption = 'Paketnr F8'
      Category = 4
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000DE0E0000DE0E00000001000000000000943131005A52
        4200B5848400FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00030303030303
        0303030303030303030300000303030303030303030303030303030300030303
        0303030303030303030303000303030101010101010101020303000000030303
        0303030303030303030303030303030303030303030303030303000000030303
        0303030303030303030303000303030303030303030303030303030300030301
        0101010101010102030300000303030303030303030303030303030303030303
        0303030303030303030300000003030303030303030303030303030003030303
        0303030303030303030300000303030101010101010101020303030003030303
        0303030303030303030303030303030303030303030303030303}
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      ShortCut = 119
    end
    object dxBarButton22: TdxBarButton
      Caption = 'Sortiment F10'
      Category = 4
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000130B0000130B00000001000000000000000000008484
        8400FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00020202020202
        0202020202020202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202020202000000
        0000000000000202020202020201000001020202020002020202020202020100
        0001020202020202020202020202020100000102020202020202020202020202
        0100000202020202020202020202020100000102020202020202020202020100
        0001020202020202020202020201000001020202020002020202020202000000
        0000000000000202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202}
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
      ShortCut = 121
    end
    object dxBarButton23: TdxBarButton
      Caption = 'Skriv &ut'
      Category = 4
      Visible = ivAlways
      ImageIndex = 11
      ShortCut = 16503
    end
    object dxBarButton24: TdxBarButton
      Caption = 'Automatisk kolumnbredd'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton25: TdxBarButton
      Caption = 'Emaila'
      Category = 4
      Visible = ivAlways
      ImageIndex = 6
      OnClick = acExportExecute
    end
    object dxBarButton26: TdxBarButton
      Caption = 'Gruppsummering'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton27: TdxBarButton
      Caption = 'Grupperingsruta'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object bbVisaAvAktiverade: TdxBarButton
      Caption = 'Visa avaktiverade'
      Category = 4
      Visible = ivAlways
    end
    object dxBarButton36: TdxBarButton
      Caption = 'Alternativ dim.inmatning'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton39: TdxBarButton
      Caption = #197'terst'#228'll tabelllayout'
      Category = 4
      Visible = ivAlways
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 312
    Top = 545
    object acClose: TAction
      Caption = 'X'
      ShortCut = 16467
      OnExecute = acCloseExecute
    end
    object acPkgInfo: TAction
      Caption = 'Paketinformation'
      OnExecute = acPkgInfoExecute
    end
    object acSaveGridLayout: TAction
      Caption = 'Spara layout'
    end
    object acLoadGridLayout: TAction
      Caption = #214'ppna layout'
    end
    object acExportToExcel: TAction
      Caption = 'Spara som excel'
      OnExecute = acExportToExcelExecute
    end
    object acNewProdPaketNrMall: TAction
      Caption = 'L'#228'gg till Ny Mall'
      OnExecute = acNewProdPaketNrMallExecute
    end
    object acDeleteProdPaketNrMall: TAction
      Caption = 'Ta bort mall'
      OnExecute = acDeleteProdPaketNrMallExecute
    end
    object acSaveProdPaketNrMall: TAction
      Caption = 'Spara mall'
      OnExecute = acSaveProdPaketNrMallExecute
    end
    object acRefreshProdPaketNr: TAction
      Caption = 'Uppdatera'
      OnExecute = acRefreshProdPaketNrExecute
    end
    object acExpandAllProdPaketNr: TAction
      Caption = 'Maximera alla'
      OnExecute = acExpandAllProdPaketNrExecute
    end
    object acCollapseAllProdPaketNr: TAction
      Caption = 'Minimera alla'
      OnExecute = acCollapseAllProdPaketNrExecute
    end
    object acNewProdSUMMall: TAction
      Caption = 'L'#228'gg till ny mall'
      OnExecute = acNewProdSUMMallExecute
    end
    object acSaveProdSUMMall: TAction
      Caption = 'Spara mall'
      OnExecute = acSaveProdSUMMallExecute
    end
    object acRefreshProdSUM: TAction
      Caption = 'Uppdatera'
    end
    object acDeleteProdSUMMall: TAction
      Caption = 'acDeleteProdSUMMall'
      OnExecute = acDeleteProdSUMMallExecute
    end
    object acCollapseAllProdSum: TAction
      Caption = 'Minimera alla'
      OnExecute = acCollapseAllProdSumExecute
    end
    object acExpandAllProdSUM: TAction
      Caption = 'Maximera alla'
      OnExecute = acExpandAllProdSUMExecute
    end
    object acPrint: TAction
      Caption = 'Skriv ut'
      OnExecute = acPrintExecute
    end
    object acUlrikaRapport: TAction
      Caption = 'Ulrika rapport'
      OnExecute = acUlrikaRapportExecute
    end
  end
  object pmFormShortcuts: TPopupMenu
    AutoPopup = False
    Left = 48
    Top = 272
    object Stng1: TMenuItem
      Action = acClose
    end
    object Skrivut1: TMenuItem
      Caption = 'Skriv &ut'
      ImageIndex = 11
      ShortCut = 16503
    end
    object AntlngdF91: TMenuItem
      Caption = 'Ant/l'#228'ngd F9'
      ImageIndex = 5
      ShortCut = 120
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 609
    Top = 353
  end
  object SaveDialog1: TSaveDialog
    Left = 609
    Top = 449
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 608
    Top = 305
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = grdProdPaketNr
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[User Name][Machine Name]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.PaperSource = 257
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 41960.397121643520000000
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 608
    Top = 553
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clMaroon
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clSilver
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clSilver
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
    object cxStyleAktivePkg: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clYellow
      TextColor = clBlack
    end
    object cxStyleINAktivePkg: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsStrikeOut]
      TextColor = clRed
    end
    object cxStyleNormalAktivePkg: TcxStyle
    end
  end
  object mtUserProp: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'VerkNo'
        DataType = ftInteger
      end
      item
        Name = 'OwnerNo'
        DataType = ftInteger
      end
      item
        Name = 'PIPNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'InputOption'
        DataType = ftInteger
      end
      item
        Name = 'RegPointNo'
        DataType = ftInteger
      end
      item
        Name = 'RegDate'
        DataType = ftDateTime
      end
      item
        Name = 'CopyPcs'
        DataType = ftInteger
      end
      item
        Name = 'RunNo'
        DataType = ftInteger
      end
      item
        Name = 'ProducerNo'
        DataType = ftInteger
      end
      item
        Name = 'AutoColWidth'
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'LengthOption'
        DataType = ftInteger
      end
      item
        Name = 'LengthGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'NewItemRow'
        DataType = ftInteger
      end
      item
        Name = 'SalesRegionNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthFormatNo'
        DataType = ftInteger
      end
      item
        Name = 'GradeStampNo'
        DataType = ftInteger
      end
      item
        Name = 'BarCodeNo'
        DataType = ftInteger
      end
      item
        Name = 'RoleType'
        DataType = ftInteger
      end
      item
        Name = 'ProductDescription'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPChange'
        DataType = ftInteger
      end
      item
        Name = 'VolumeUniNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthVolUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'VolumeUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'Form'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'UserID'
        DataType = ftInteger
      end
      item
        Name = 'GroupByBox'
        DataType = ftInteger
      end
      item
        Name = 'GroupSummary'
        DataType = ftInteger
      end
      item
        Name = 'AgentNo'
        DataType = ftInteger
      end
      item
        Name = 'KilnNo'
        DataType = ftInteger
      end
      item
        Name = 'TEST'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'ShipperNo'
        DataType = ftInteger
      end
      item
        Name = 'StartPeriod'
        DataType = ftDateTime
      end
      item
        Name = 'EndPeriod'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterInsert = mtUserPropAfterInsert
    Left = 176
    Top = 281
    object mtUserPropVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtUserPropOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object mtUserPropPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtUserPropLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtUserPropInputOption: TIntegerField
      FieldName = 'InputOption'
    end
    object mtUserPropRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtUserPropRegDate: TDateTimeField
      FieldName = 'RegDate'
    end
    object mtUserPropCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
    end
    object mtUserPropRunNo: TIntegerField
      FieldName = 'RunNo'
    end
    object mtUserPropProducerNo: TIntegerField
      FieldName = 'ProducerNo'
    end
    object mtUserPropAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
    end
    object mtUserPropSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtUserPropLengthOption: TIntegerField
      FieldName = 'LengthOption'
    end
    object mtUserPropLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
    end
    object mtUserPropNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
    end
    object mtUserPropSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object mtUserPropLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
    end
    object mtUserPropGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtUserPropBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
    end
    object mtUserPropLengthGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthGroup'
      LookupDataSet = dm_UserProps.cds_LengthGroup
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'LengthGroupNo'
      Lookup = True
    end
    object mtUserPropLIPName: TStringField
      FieldKind = fkLookup
      FieldName = 'LIPName'
      LookupDataSet = dm_UserProps.cds_LIP2
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropPIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PIPNAME'
      LookupDataSet = dm_UserProps.cds_PIP2
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropREGPOINT: TStringField
      FieldKind = fkLookup
      FieldName = 'REGPOINT'
      LookupDataSet = dm_UserProps.cds_RegPoint
      LookupKeyFields = 'RegistrationPointNo'
      LookupResultField = 'ProductionUnitName'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
    object mtUserPropPRODUCER: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUCER'
      LookupDataSet = dm_UserProps.cds_producer
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ProducerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropOWNER: TStringField
      FieldKind = fkLookup
      FieldName = 'OWNER'
      LookupDataSet = dm_UserProps.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropVERK: TStringField
      FieldKind = fkLookup
      FieldName = 'VERK'
      LookupDataSet = dm_UserProps.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VerkNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropRoleType: TIntegerField
      FieldName = 'RoleType'
    end
    object mtUserPropGradestamp: TStringField
      FieldKind = fkLookup
      FieldName = 'Gradestamp'
      LookupDataSet = dm_UserProps.cdsGradeStamps
      LookupKeyFields = 'GradeStampNo'
      LookupResultField = 'GradeStamp'
      KeyFields = 'GradeStampNo'
      Lookup = True
    end
    object mtUserPropBarcode: TStringField
      FieldKind = fkLookup
      FieldName = 'Barcode'
      LookupDataSet = dm_UserProps.cdsBarCodes
      LookupKeyFields = 'BarCodeNo'
      LookupResultField = 'BarCode'
      KeyFields = 'BarCodeNo'
      Lookup = True
    end
    object mtUserPropProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object mtUserPropProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtUserPropProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtUserPropLIPChange: TIntegerField
      FieldName = 'LIPChange'
    end
    object mtUserPropSR: TStringField
      FieldKind = fkLookup
      FieldName = 'SR'
      LookupDataSet = dm_UserProps.cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'SearchName'
      KeyFields = 'SalesRegionNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropVolumeUniNo: TIntegerField
      FieldName = 'VolumeUniNo'
    end
    object mtUserPropVU: TStringField
      FieldKind = fkLookup
      FieldName = 'VU'
      LookupDataSet = dm_UserProps.cds_VU
      LookupKeyFields = 'VolumeUnit_No'
      LookupResultField = 'VolumeUnitName'
      KeyFields = 'VolumeUniNo'
      Size = 10
      Lookup = True
    end
    object mtUserPropLengthFormat: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthFormat'
      LookupDataSet = dm_UserProps.mtLengthFormat
      LookupKeyFields = 'LengthFormatNo'
      LookupResultField = 'LengthFormatName'
      KeyFields = 'LengthFormatNo'
      Size = 5
      Lookup = True
    end
    object mtUserPropLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
    end
    object mtUserPropLengthVolUnit: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthVolUnit'
      LookupDataSet = dm_UserProps.mtLengthVolUnit
      LookupKeyFields = 'LengthVolUnitNo'
      LookupResultField = 'LengthVolUnitName'
      KeyFields = 'LengthVolUnitNo'
      Size = 5
      Lookup = True
    end
    object mtUserPropVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object mtUserPropForm: TStringField
      FieldName = 'Form'
      Size = 50
    end
    object mtUserPropUserID: TIntegerField
      FieldName = 'UserID'
    end
    object mtUserPropGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
    end
    object mtUserPropGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
    end
    object mtUserPropAgentNo: TIntegerField
      FieldName = 'AgentNo'
    end
    object mtUserPropKilnNo: TIntegerField
      FieldName = 'KilnNo'
    end
    object mtUserPropTEST: TStringField
      FieldName = 'TEST'
      Size = 200
    end
    object mtUserPropShipperNo: TIntegerField
      FieldName = 'ShipperNo'
    end
    object mtUserPropStartPeriod: TDateTimeField
      FieldName = 'StartPeriod'
    end
    object mtUserPropEndPeriod: TDateTimeField
      FieldName = 'EndPeriod'
    end
    object mtUserPropFilter1: TStringField
      FieldName = 'Filter1'
      Size = 50
    end
    object mtUserPropFilter2: TStringField
      FieldName = 'Filter2'
      Size = 255
    end
  end
  object dsUserProp: TDataSource
    DataSet = mtUserProp
    Left = 176
    Top = 336
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 128
    Top = 464
  end
  object cxEditStyleController1: TcxEditStyleController
    Style.TextColor = clMaroon
    Style.TextStyle = [fsBold]
    Left = 312
    Top = 280
    PixelsPerInch = 96
  end
  object cxEditStyleController2: TcxEditStyleController
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfFlat
    Style.Shadow = False
    Style.TextColor = clNavy
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    Left = 312
    Top = 336
    PixelsPerInch = 96
  end
  object cxEditStyleController3: TcxEditStyleController
    Style.BorderStyle = ebsNone
    Style.ButtonStyle = btsOffice11
    Style.ButtonTransparency = ebtHideUnselected
    Left = 312
    Top = 384
    PixelsPerInch = 96
  end
  object cxImageList1: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 26280544
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000606060006060600060606000606060006060600060606000606060006466
          6800697175006061620061656700606C6F0061757800607E830064888F005D81
          88005F616200605858007E7774006A656100565350005E5D5C00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005F5F61005B5D6A0056587400505581004B528C00434E98008F9CB800A4CC
          D6009CD5E400639CA80062A3B00063A4B20063A6B30062A3B00066A9B6005990
          9D0053889200587B82007A8687006C676500605858006C66630084807E000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000535679003845B9003844BA003444BA003644BC003644B8009AA9D000A6DE
          EC009AD8E80061A2AD0061A6B30062A4B00064A6B50063A3B00065A7B5005A90
          9B00518890005087900071969E006D888F00BAB3AF00D6CFC900857F7C007B76
          7400847F7C000000000000000000000000000000000000000000000000000000
          000052567A003644BC003745BA003544BA003744BC003744BA009BADCC009ED1
          DE006D9FAF005C96A5005F9AA8005E9BA8005E9BA8005E9CAA00619EAB005A95
          A10052869100508590006F959C006B8A9200DCD6D100EFE8E4007C7474007A73
          7100847E7A007974720079767500000000000000000000000000000000000000
          000052577B003645BC003646BD003544BA003944BA003544BA00A4C7D10070A4
          AF0061A3B10061A1AF0062A5B40062A4B10063A6B50062A4B00067A8B7005B91
          9D0052889100518790006F969C006B8C9400DAD3CE00EFE5E3007C7674006E68
          670079747100706B690084807B00000000000000000000000000000000000000
          000052577C003646BC003646BB003D52BD006E85C8009DB2CD0070A2B30061A1
          AE0063A5B20061A2AE0062A5B30061A2AF0061A1B00061A0AC0062A0AE005992
          9F0052899200538791006E949A006C8C9200D7D0CC00EFE6E100847E7C00756F
          6E007E797500696362007B747300000000000000000000000000000000000000
          000052557C003646BA004E5CB70092B7D100B1CBD3009AB5BB005E9AA8005F9A
          A9005E9CAA005E9BA9005E9BAB005FA0AD0062A0AF0061A1AE0065A7B5005A95
          A1005084940052848F006E939B006C8B9300D6CEC800EDE6E00086807E007A75
          720085817C00736F6B007E787600000000000000000000000000000000000000
          000052557C003646BA004E5CB70092B7D100B1CBD3009AB5BB005E9AA8005F9A
          A9005E9CAA005E9BA9005E9BAB005FA0AD0062A0AF0061A1AE0065A7B5005A95
          A1005084940052848F006E939B006C8B9300D6CEC800EDE6E00086807E007A75
          720085817C00736F6B007E787600000000000000000000000000000000000000
          000052567F004A65C000A2BFC9008B8787008C96980087AEB60063A5B10060A2
          AE0062A6B20060A2AE0062A5B30062A3B00064A5B30062A3B00064A9B5005A91
          9D0053899300538793006E939B006C8D9500D4CDC800EAE2DF008B858400807A
          780088837F007873700086807D00000000000000000000000000000000000000
          0000644958009BD4EA00A6C7CD00726A69007684860062A5B20060A4AF0060A0
          AE0060A1B0005F9EA9005F9DAB00609EAB00609FAD005E9FAE005FA2B1005A95
          A30053889200518791006D9198006C8C9200CFC9C500E8E1DC0086807D007974
          720086817E007E7876008B848100000000000000000000000000000000000000
          000000000000A8CDD700ACB7BC00726A6800758384005E9EAC005F9EAE005E9F
          AC005E9FAF005FA2AF0062A5B30062A5B20063A5B50061A3B10065A8B6005991
          9D00548A9500538792006D939C006C8F9600CFC8C300E6DEDA007A7673006E69
          67007C787500756F6D0087827E00000000000000000000000000000000000000
          000000000000837F7C0076717000736C6B007687880063A6B10061A7B20062A2
          AF0062A5B20060A3AE0063A6B20064A4B20063A6B40062A4B20066A9B7005A91
          9D00538993005288910069929C006C8D9400CCC6C100E3DCD9007F787600716C
          6C0079747300686362007B767300000000000000000000000000000000000000
          0000000000007D787400706C6A00736C6A007782840061949C005D8992005983
          8A005D828C005A7980005C7C8200567277005E777D0052686F005B6F74004E5F
          63004D646A004F6B77006A898E006D8D9100CCC7C000E2DAD40085807C007973
          7000807A78006F6B69007E797500000000000000000000000000000000000000
          0000000000008D8883008A838300908988009D999400A59E9B009E989700A19D
          9A009C96940096918F009C9695009B959400BAB2B000A7A3A0009E9C98009F9D
          9A00ACABA700BFBAB800D3CECB007A767600817B7B009D969200888480007F79
          770087827F007975720086817D00000000000000000000000000000000000000
          00000000000089847F007D7774007D77740085807E0079746F00696560004F48
          45004F484400433F390048433D00433F37007E7873005F5A5800544E49005852
          4F004C48420054504C00928B87006469950063667E005E62750071707C007C77
          7300615F6500706D71007E777700000000000000000000000000000000000000
          0000000000007D787400726B6A00726C6A007E7B7700706B6800736E6D00514F
          4E005F5A5700494743005C5755005C5757009F9995009E9895006F6968007D78
          78008884810089878500B7B0AB007478A2005E648D00464B7B004B518300676C
          8A00666B8B006469860062678600000000000000000000000000000000000000
          0000000000007C777400726B6900736C69007C777500706B6900736E6C00524E
          4E004E4947004C4743004C484500514B4B009F989600857F7F00635B5A007873
          73007A76720088838100BDB5AF00464C940027308A002A328A00363F85003E45
          82003C448C003A4290003B439500000000000000000000000000000000000000
          0000000000007C777400726C6A00736C6B007E79760074706D0075717000524F
          4F004D484600494745004A4340004F4947009D969300686263006A6262006A63
          6200676262006A656400D9CFCC00464C940026308A0028328B002C3790002B33
          8E002D3692002E3694002F389800000000000000000000000000000000000000
          00000000000086827E007D7774007D77750087837F007F7B77008B8784006764
          6300665F5E00625D5B00615C5900655F5E00A7A19E00726A6A00706868008081
          8000B0A9A5007A727200D5CDCB00464D940028308A002A338B002C348D002935
          8C002D3692002C3894002D389500000000000000000000000000000000000000
          0000000000004D528E004A518D004E558E0051578F00515790009A949500575C
          96005C6099006C739E005B619800A9A8B900E0D8D40097919400575A75009294
          9F00D2CCC7009A989B00D0CAC7003D458A0027308A0029328B002B348E002833
          8D002C3590002D3896002C369300000000000000000000000000000000000000
          000000000000252D7F00232C7E00252D7F00262D7F00232B7F00817D7D002831
          8200252E820026308400242E84009C9AB500E2DBD9007D787D0020285000596C
          8300D0CBC7006D6B7500C9C5C200353D830027308B0028328B002A348F002834
          8C002B3491002E3796002C349300000000000000000000000000000000000000
          000000000000252C7E00252E7D00262E7F00272E7F00232C8100868181002830
          8200242E80002730830028307F009292AA00B1ADAA007C7A8200202850004E62
          7800CEC6C3004E4E5D00C0BBB900353E820027308C0028308A0029338E002A34
          8E002B3491002D3695002C349300000000000000000000000000000000000000
          0000000000003238760033386E00383C6C003C3E68003F406500898280004B48
          5D004D4B59004C4D5600524E5600847F8000A39E9C0096918F00474652007172
          7B00CCC4BF005A575F00BFBAB700363E82002730890029328900293290002A35
          8D002C3490002D3695002E389500000000000000000000000000000000000000
          0000000000003238760033386E00383C6C003C3E68003F406500898280004B48
          5D004D4B59004C4D5600524E5600847F8000A39E9C0096918F00474652007172
          7B00CCC4BF005A575F00BFBAB700363E82002730890029328900293290002A35
          8D002C3490002D3695002E389500000000000000000000000000000000000000
          00000000000082483D0081564E007D5E59007A696700726969006C6768005651
          560057505500565054005250530054505300AEA9A5008881810054505300817F
          7E00CBC2BD00716B6B00938C8B003840860028308C0028308B00283290002B35
          8E002C3491002E37940030389700000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000958F8C00844F
          4600805C57007D666300796E6E00706D6D007F7B7D0068626600545052007874
          7400B1ABA8005F595C0055505400343B84002830890028338A002D368B003A42
          87004C4D7E00594D6D0065444F00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000867570000000
          0000000000000000000000000000A8867B00D8D3CD009C918F00835951008C79
          7600969293007873740068656800464B7E004D4F7E0076789500713B36000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000816C66000000
          000000000000000000000000000000000000CCC3BC0084726C00000000000000
          0000CAC2BE00000000000000000000000000000000009F726700000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFC00000FFC000007FC000001FC0000007C0000007C0000007C000
          0007C0000007C0000007C0000007E0000007E0000007E0000007E0000007E000
          0007E0000007E0000007E0000007E0000007E0000007E0000007E0000007E000
          0007E0000007E0000007FF000007FF78007FFF7CDEFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001E180F004E4A450078757300827F
          7D00342F2700342F270016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600EDEDED00EDED
          ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00D9D9D800D9D9D8009A9796008C8987008C898700928F
          8D00D8D7D700D8D7D700EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00E4E4E400E4E4E4003E39330016100600EDEDED00EDED
          ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00D9D9D800D9D9D8009A9796008C8987008C898700928F
          8D00D8D7D700D8D7D700EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00E4E4E400E4E4E4003E39330016100600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F1F1F1009D9B99009D9B99008C8987008C8987008C8987009390
          8E00E6E6E500E6E6E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00F5F5F500F5F5F500413D370016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          06001610060065625E008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600161006001610060016100600161006001610
          060026201700DFDFDE00F5F5F500F5F5F500413D3700161006000000FF000000
          FF000000FF000000FF00FF000000FF000000FF00000016100600161006001610
          06002B261E00827F7D008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F27001610060016100600FF0000000000FF000000FF000000
          FF000000FF00DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600FF000000FF0000000000FF001610060016100600FF000000FF0000001610
          0600353029008A8785008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600FF000000161006000000FF000000FF001610
          060026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600FF000000FF0000000000FF001610060016100600FF000000FF0000001610
          0600353029008A8785008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600FF000000161006000000FF000000FF001610
          060026201700DFDFDE00F5F5F500F5F5F500413D370016100600FF000000FF00
          00001610060016100600161006000000FF00161006001610060016100600FF00
          000038332B008C8987008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600FF00000039352F00625E5A00625E5A007A77
          7500817E7C00AAA8A700CAC9C800CAC9C800423E380016100600161006001610
          06001610060016100600161006000000FF00161006001610060016100600FF00
          0000322D2500878482008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F2700221D1500696562008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C898700817E7C0035312C00161006001610
          0600161006001610060016100600161006000000FF0016100600161006001610
          0600FF0000007A7775008C8987008C8987008C8987008C8987008C8987008885
          83003B362F003B362F006C6965008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C89870086838100161006001610
          0600161006001610060016100600161006000000FF0016100600161006001610
          0600FF0000007A7775008C8987008C8987008C8987008C8987008C8987008885
          83003B362F003B362F006C6965008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C89870086838100161006001610
          0600161006001610060016100600161006000000FF0016100600161006001610
          0600FF0000004D4944008B8886008B8886008C8987008C8987008C8987008885
          83006B6866006B6866008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C898700161006001610
          060016100600161006001610060016100600161006000000FF000000FF001610
          060016100600FF0000005F5C59005F5C59008C8987008C8987008C8987008B88
          86008B8886008B8886008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C898700161006001610
          0600161006001610060016100600161006001610060016100600161006000000
          FF001610060016100600FF000000FF000000534F4B00868381008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C898700161006001610
          06004D4A47004D4A470077747200777472007774720077747200777472007774
          720077747200777472007774720077747200777472007C7977008B8886008C89
          87008C8987008C8987008B8886007875720054504B00514D4700514D4700514D
          470059554F00B6B4B300C1BFBE00C1BFBE0067635F00514D4700161006001610
          06004D4A47004D4A470077747200777472007774720077747200777472007774
          720077747200777472007774720077747200777472007C7977008B8886008C89
          87008C8987008C8987008B8886007875720054504B00514D4700514D4700514D
          470059554F00B6B4B300C1BFBE00C1BFBE0067635F00514D4700161006001610
          060046423C0046423C008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C898700716E6B0026211800262118001610
          060026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600302B2300302B2300868381008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008C8987008481
          7F0088858300888583008C8987008C8987008C8987007A7774007A777400231E
          150026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          06001610060016100600676461008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008A8785005552
          4D0086838100868381008C8987008C8987008C8987008C8987008C8987005F5C
          580026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          06001610060016100600241E1600797673008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987005F5B58000000
          FF0086838100868381008C8987008C8987008C8987008C8987008C8987008380
          7E0035312A00DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          06001610060016100600241E1600797673008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987005F5B58000000
          FF0086838100868381008C8987008C8987008C8987008C8987008C8987008380
          7E0035312A00DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600161006001610060016100600231E1500686462008B8886008B8886008C89
          87008C8987008C8987008C8987008C898700868381004E4A45000000FF002A24
          1C0086838100868381008C8987008C8987008C8987008C8987008C8987008986
          84004A464000DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          060016100600161006001610060016100600161006002F2A23002F2A23004A46
          4000514D4700514C4600433F3900433F39000000FF000000FF00161006002A24
          1C0086838100868381008C8987008C8987008C8987008C8987008C8987008A87
          85004C484200DFDFDE00F5F5F500F5F5F500413D3700161006008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008D89
          85008E8C8A008E8C8A008C8987008C8987008C8987008C8987008C8987008F8C
          8A009A989500EFEFEF00F5F5F500F5F5F500413D3700161006008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008D89
          85008E8C8A008E8C8A008C8987008C8987008C8987008C8987008C8987008F8C
          8A009A989500EFEFEF00F5F5F500F5F5F500413D370016100600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEE
          EE0096949200969492008C8987008C8987008C8987008C8987008C8987009A97
          9500F8F8F800FFFFFF00F5F5F500F5F5F500413D3700161006008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008D89
          85008E8C8A008E8C8A008C8987008C8987008C8987008C8987008C898700827F
          7C008B8883008B88830086837E0086837E002C271F0016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006002A24
          1C0086838100868381008C8987008C8987008C898700726F6D00726F6D00211B
          1200161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006002A24
          1C0086838100868381008C8987008B88860069666300211C1300211C13001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006002A24
          1C0086838100868381008C8987008B88860069666300211C1300211C13001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          060016100600161006001610060016100600161006001610060016100600241E
          160064615F0064615F0057534E00342F28001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end>
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 608
    Top = 609
    Bitmap = {
      494C01010D0011000C0018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B6B63005A4A
      4200524A42005A5252006B6B6B00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C522100A539
      0000843910006B311800523929004A42390052524A00636363007B7B7B008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094522100B552
      1000D6946B00D6946B00BD6B39009C5221007B4221006339210052423900524A
      4200635A520073736B0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C5A2100B552
      1800EFC6A500FFEFCE00FFDEB500EFC69C00E7A57300CE845200AD6331008C4A
      2100734221005A423100524A4200636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A55A2100B552
      1800EFC6A500FFE7CE00FFE7C600FFE7BD00FFE7BD00FFDEB500F7C69C00EFB5
      8400DE945A00BD6B39008C4A21005A4A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD632100B55A
      2100F7CEB500FFE7CE00FFE7C600F7DEBD00F7DEBD00F7DEB500FFDEB500FFD6
      A500FFCE8400F7B56B00B5633100634A31000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD632100B55A
      2100F7D6BD00FFEFD600FFE7CE00DEDEC600A5C6C600C6CEBD00FFDEB500FFCE
      8C00FFBD6300F7B56B00B56B3100634A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B56B2900BD63
      3100F7E7CE00FFEFDE00EFE7D6008CC6CE004AADCE009CC6C600FFDEB500F7BD
      7300EFBD6B00EFB57B00AD6B3900634A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B56B2900BD6B
      3900F7E7DE00EFEFDE009CCECE004AADCE00009CCE007BBDCE00EFCEAD00B59C
      73009C947300CE9C6B00B56B31007B523100736B63009C949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD6B2900BD73
      4200F7F7E700B5D6DE0052B5D6009CCED600ADCED600009CCE00C6CEBD00A5A5
      94008C8C7300D6A57300E7AD7300C68C52009C734200846B4A0084736B009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6732900BD73
      4200F7F7EF00C6DEE700A5D6DE00EFEFDE00CEDED6004AADCE009CC6C600EFDE
      C600DEBD9400E7B58400EFC69400F7C69400EFB57B00CE945A00AD7B4200846B
      4A00736B6B008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6732900C67B
      5200FFFFF700F7F7EF00F7F7E700FFEFDE00EFE7D6008CC6D6004AADCE00F7E7
      CE00FFE7C600E7B58400C67B4A00BD8C5A00E7B58400EFC69400E7AD7B00AD94
      7B005A5A840039427B006B6B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D67B2900C684
      5A00FFFFFF00FFF7EF00FFF7EF00FFF7E700F7EFDE00B5D6DE0063BDCE00C6D6
      CE00FFEFD600EFC69C00A56331007B523100B59C7B00E7BD9C00D6AD8400ADA5
      A5004A63C6001842BD0063639400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900CE8C
      6B00FFFFFF00FFFFF700FFF7EF00FFF7EF00FFF7E700D6E7DE006BBDD6008CC6
      CE00F7EFDE00EFC69C00A5633100523929000000000000000000E7BD9C00C6C6
      C6006373C6004A63C600ADADCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900CE9C
      7B00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFF7EF00F7F7E70094CEDE0063BD
      CE00CEDED600EFC6A500A5633100523929000000000000000000000000000000
      0000ADADCE00ADADCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900CE9C
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00CEE7E70094CE
      D600CEE7DE00E7BD9C009C633100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900BD73
      4200DEAD8C00E7C6B500EFDED600F7EFEF00F7F7F700FFFFF700F7F7F700EFF7
      EF00F7F7E700E7BD9C009C633100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D67B2100BD52
      0800BD5A1000C6632100C66B2900C67B4200CE946300D6A58400E7BDA500EFD6
      C600F7E7DE00E7BD9C009C633100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFA55200D66B
      1000CE630800C65A0000C65A0000C65A0800C65A0800BD5A1000C6631800C663
      2100C6733900C673310094522100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD9C7B00BDA5
      7300CEA56B00D69C5200DE8C3900DE8C3900DE842900D6731000CE6B0800CE63
      0000C65A0000C65A00005A4A39005A4A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD9C7B00BDA573009C948400A5947B00AD9C7300BD9C6B00CE9C
      5A00D69C5200DE8C39009C6B3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000DED6DE00DED6DE00F7F7F700F7F7F700F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018A5D6005ACEEF00B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A50000000000000000000000000000000000DED6
      D600DED6DE00DED6DE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010A5D6009CEFFF00CEFF
      FF008CF7FF0094F7FF0094F7FF008CEFFF008CEFFF007BE7F70073DEF7005AE7
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D600000000000000
      0000000000000000000000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A50000000000000000000000000000000000CED6CE00DED6
      D600DED6DE00DED6DE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000021A5D6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF0073EF
      FF0063E7FF005ADEFF005ADEFF005ADEFF0073DEF7005ACEEF004AC6E70031B5
      DE0018A5D6000000000000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      00000000000000000000000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000CECEC600CED6CE00DED6
      D600DED6DE00DED6DE00EFE7E700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F7000000000000000000000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF007BEF
      FF0073EFFF006BE7FF0063E7FF0063E7FF005ADEFF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0084E7FF005ACEEF0021A5
      D6000000000000000000000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C00000000000000000000000000CECEC600CED6CE00DED6
      D600DED6DE00DED6DE00F7EFE700EFE7E70029008400F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0084EF
      FF0084EFFF007BEFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BE7F70073DEF70039BD
      DE000000000000000000000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A500000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00EFE7E700290084002900840029008400F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CEFFF008CEFFF008CEF
      FF008CEFFF0084EFFF0084EFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEFF0063D6
      EF0018A5D60000000000000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C00000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00F7EFE700F7F7F70029008400F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF008CF7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEF
      FF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF006BE7FF0063E7FF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEF7008CEF
      FF0029ADD60000000000000000000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A500000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00EFE7E700F7EFE700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F70029008400F7F7F700F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF0073EFFF006BE7FF001084
      18005ADEFF0018A5D60000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF700087B10001084
      18004AC6E70000000000000000000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD00000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00F7EFE700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F7002900
      84002900840029008400F7F7F700000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BEFFF0073EFFF001084
      18005ADEFF0018A5D60000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF000873080039BD63004AD6
      7B001084180018A5D60000000000000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B500000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF001084
      18005AE7FF0018A5D60000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF00006B000031AD52005AE78C005AE7
      8C0039BD5A00087310000000000000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A50000000000000000000000000000000000CECEC600D6D6CE00DED6
      D600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF001084180094F7FF008CEFFF008CEFFF00108418001084
      18008CEFFF0018A5D60000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF000873080029AD4A005AEF940052DE84004AD6
      6B0021AD310021AD390008730800000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B5000000000000000000000000000000000000000000CECEC600D6D6CE00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF00108418001084180094F7FF0010841800108418000894
      18008CEFFF0018A5D60000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE7000873080021AD310031AD520039BD5A0042CE6B0039C6
      5A0029BD4A0021AD310021AD3100007308000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      00000000000000000000000000000000000000000000CECEC600E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700000000000000000029ADD6009CF7FF00BDE7
      F700BDEFF700C6F7FF00C6F7FF00C6F7FF009CF7FF008CF7FF008CF7FF0094F7
      FF0094F7FF0094F7FF001084180031AD52001084180010841800089418008CEF
      FF008CEFFF0018A5D60000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF000873080008730800087308000873100031BD4A0031BD
      4A00087308000873080008730800087308000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E70000000000000000000000000029ADD60031ADDE0031AD
      DE0031ADDE0031ADDE0031ADDE0031ADDE007BCEE7008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF001084180031AD520039C65A001084180094F7FF0094F7
      FF0094F7FF0018A5D60000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF000873080021AD390021BD
      3900087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E7000000000000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0031ADDE007BCEE7009CEFFF009CEF
      FF009CEFFF009CEFFF00108418004AD67B0021AD390021AD3900108418009CEF
      FF005ACEEF0018A5D60000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF000873100018AD290010AD
      2100087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700000000000000000000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE0010841800108418001084180010841800108418001084
      180039BDE7000000000000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      1800087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7000000
      000000000000000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      1000087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      000000000000000000000000000008841000089C180008A51800088C10000873
      0800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000873
      08000873080010841800089418000894180008941800087B1000087308000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087308000873100008730800087308000873080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFF7E700FFF7E700FFEF
      D600FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDEB500FFDEB500FFD6
      FD00FFD6AD00FFD6AD00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00424242004242420042424200FFFFFF00424242004242420042424200E7E7
      E7004242420042424200C6C6C600DEDEDE00DEDEDE00DEDEDE0042424200CECE
      CE00CECECE0042424200C6C6C60000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFF7E700FFF7
      E700FFEFD600FFEFD600FFE7C600FFDEB500FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF0042424200FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E70042424200E7E7E7004242420042424200424242004242
      4200DEDEDE0042424200C6C6C60000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E70042E7E70042E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE630000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00C6C6C6004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200DEDEDE0042424200DEDE
      DE00DEDEDE0042424200CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE630000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000008484840042424200000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200FFFF
      FF00FFFFFF00E7E7E70042424200E7E7E70042424200E7E7E700E7E7E700DEDE
      DE00DEDEDE0042424200CECECE00000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E700000000000000000042E7E70042E7E70042E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFEFD600FFEF
      D600FFE7C600FFE7C600CE630000000000000000000000000000000000000000
      0000000000008484840042424200424242004242420084848400000000000000
      0000000000000000000000000000000000000000000042424200000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00424242004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200CECECE00000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7E7000000
      0000000000000000000000000000000000000000000000000000DEBD9400DEBD
      9400DEBD9400DEBD9400DEBD9400DEBD9400CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700FFEFD600FFE7C600CE630000000000000000000000000000000000000000
      0000000000000000000084848400424242004242420042424200848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200DEDEDE00000000000000000000000000000000000000
      000000000000000000000000000042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000042E7E70042E7E70042E7
      E700000000000000000000000000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFEFD600FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000848484004242420042424200424242008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E7000000000000000000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840042424200424242004242
      4200848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000000042E7
      E700000000000000000000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400424242004242
      4200424242008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000000042E7
      E70042E7E70042E7E70000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400424242004242
      4200424242004242420000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E700000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840042424200424242004242
      4200848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000848484004242420042424200424242008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200FFFFFF0042424200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D673100000000000000000000000000000000000000000000000
      0000000000000000000084848400424242004242420042424200848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E7000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E700000000000000000042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E700000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840042424200424242004242420084848400000000000000
      0000000000000000000000000000000000000000000042424200000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000008484840042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70042E7E70042E7E700000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E7000000000000000000FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E700000000000000000042E7
      E70042E7E70042E7E70042E7E70000000000000000000000000000000000FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000C6631800CE630000CE630000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6B008484
      84000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE63000000000000C6631800000000000000000084848400525252008484
      84006B6B6B006B6B6B004A4A4A00A5A5A500737373006B6B6B00000000004A4A
      4A00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      000000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE630000C66318000000000000000000848484006B6B6B000000
      00007B7B7B007B7B7B006B6B6B00848484004A4A4A007B7B7B006B6B6B008484
      84000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      000000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000DE7B000000000000000000000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000848484000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E70000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B00000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE630000C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B00000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E7000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B00000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000094949400A5A5A5009494
      9C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      FD00EFCEA500B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE6300000000000000000000000000000000000000000000313131008C8C
      8C006B6B6B000000000084848400848484005A5A5A0052525200000000006363
      6300636363006363630000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      FD00EFCEA500B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE630000000000000000000000000000A5A5A500737373006363
      63005A5A5A006363630063636300A5A5A500636363004A4A4A006B6B6B006363
      6300737373005A5A5A00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE63000000000000C66318000000000000000000000000008C8C8C000000
      0000A5A5A500949494000000000084848400525252008C8C8C00000000000000
      00007B7B7B000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B00000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      FD00B5AD94009C847B00000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B00000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD847300000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE6300000000000000000000000000007B7B7B00000000004A4A
      4A00313131004A4A4A0042424200424242004242420000000000424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B58484000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000073737300737373005A5A
      5A00313131006363630000000000525252004242420042424200525252000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE6300000000000000000000000000007B7B7B005A5A5A000000
      000000000000636363006363630063636300000000006B6B6B00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E70000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E70000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00
      0000000000000000C0FFFF000000000000000000C00FFF000000000000000000
      C001FF000000000000000000C000FF000000000000000000C000FF0000000000
      00000000C000FF000000000000000000C000FF000000000000000000C000FF00
      0000000000000000C0003F000000000000000000C0000F000000000000000000
      C00003000000000000000000C00001000000000000000000C000010000000000
      00000000C000C1000000000000000000C000F3000000000000000000C000FF00
      0000000000000000C000FF000000000000000000C000FF000000000000000000
      C000FF000000000000000000C000FF000000000000000000F801FF0000000000
      00000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0C1FFFFFFF807FFF807FFFFC0007F07FFF8003FF8003FFF00001
      E007FF80003F80001FE00003C0007F80000780001F8000038000078000038000
      0F80000380000180000380000F80000380000180000380000780000380000180
      0003800007800003800001800003800007800003800001800003800003C00003
      800001800003800003E00007800001800003800001F8000F8000018000038000
      00F8001F800001800003800000FC007FC00003800003800007FC00FFF8000780
      0003800007FC01FFFF800F800007800007FC01FFFFFC1FC03FFFC03F07FC01FF
      FFFFFFE07FFFE07E0FFC01FFFFFFFFFFFFFFFFE01FF803FFFFFFFFFFFFFFFFF0
      7FF803FFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00003FFFFFFFF0001FFFFFF
      8000018007FFFF0001FFFFFF8000018001FFFF0001FFFFFF8000018000FFFF00
      01F8003F80000180007FFF0001F87F3F800001C0001FFF0001F83FBF800001F0
      000FC00001FC1FFF800001FC0007C00001FE0FFF800001FE0003C00001FF07FF
      800001FF0001C00001FF83FF800001FF0000C00001FF83FF800001FF0000C000
      01FF07FF800001FF8000C00001FE0FFF800001C00000C00003FC1FFF800001C0
      0000C0007FF83FBFC00003C00000C0007FF87F3FFFFFFFC00000C0007FF8003F
      FFFFFFF00000C0007FFFFFFFFFFFFFFC0000C0007FFFFFFFFFFFFFFF0000E000
      FFFFFFFFFFFFFFFFC000FFFFFFFFFFFFE00003FFFFFFFFFFFFFFFFFFE00003FF
      FFFFFFFFFFFFFFFFE00003FF1FFFFFFFFFFFFFFFE00003F8000FFFFFFF8000FF
      E00003E0000FF1FFCF80007FE00003C0000FF5802F80003FE00003C0000FF990
      0F80001FE00003C0000FFBDEDF80000FE00003C0000FF1FFFF800007E00003C0
      000FFFFFFF800003E00003C0000FF18FFF800001E00003C0000FF7C423800001
      E00003C0000FFB8003800001E00003C0000FF5D237800001E00003C0000FF1FF
      7F800001E00003C0000FFFFFFFC00001E00003C0000FF1FFFFE00001E00003C0
      000FFBA05FF00001E00003E0000FFB821FF80001E00007F8000FF3989FFC0001
      E0000FFE1FFFFBFBFFFE0001E0001FFFFFFFFFFFFFFF0001E0003FFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object cds_Verk: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName, C.Sales' +
        'RegionNo, C.PktNrLevKod'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND   ((R.RoleType = 9) '
      'OR (R.RoleType = 6)'
      'OR (R.RoleType = 7))'
      ''
      'and C.IntVerk = 1'
      ''
      'Order by C.clientName'
      '')
    Left = 128
    Top = 408
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_VerkSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object cds_VerkSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_VerkPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
  end
  object sq_UserProfile: TFDQuery
    AfterInsert = sq_UserProfileAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.UserProfile'
      'WHERE UserID = :UserID'
      'AND Form = :Form'
      'AND ((Name = :Name) OR ('#39'ALL'#39' = :Name))')
    Left = 776
    Top = 320
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_UserProfileUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_UserProfileForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object sq_UserProfileName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object sq_UserProfileInputOption: TIntegerField
      FieldName = 'InputOption'
      Origin = 'InputOption'
    end
    object sq_UserProfileStartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProfileEndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdProdPaketNr
    PopupMenus = <>
    Left = 312
    Top = 432
  end
  object pmPkgNos: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton37'
      end
      item
        Visible = True
        ItemName = 'dxBarButton38'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton14'
      end>
    UseOwnFont = False
    Left = 608
    Top = 664
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    Grid = grdProdSUM
    PopupMenus = <>
    Left = 312
    Top = 488
  end
  object frxDB_ST_Del_Stat: TfrxDBDataset
    UserName = 'frxDB_ST_Del_Stat'
    CloseDataSource = False
    DataSet = sq_ST_Del_Stat
    BCDToCurrency = True
    Left = 928
    Top = 480
  end
  object frxReport2: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41157.391882638900000000
    ReportOptions.LastChange = 41157.424006192100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 928
    Top = 408
    Datasets = <
      item
        DataSet = frxDB_ST_Del_Stat
        DataSetName = 'frxDB_ST_Del_Stat'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object DBCross1: TfrxDBCrossView
        Left = 3.779530000000000000
        Top = 56.692950000000000000
        Width = 385.000000000000000000
        Height = 128.000000000000000000
        ShowHint = False
        DownThenAcross = False
        PlainCells = True
        RowLevels = 3
        CellFields.Strings = (
          'Styck')
        ColumnFields.Strings = (
          'Utlastad')
        DataSet = frxDB_ST_Del_Stat
        DataSetName = 'frxDB_ST_Del_Stat'
        RowFields.Strings = (
          'ProductCode'
          'Produkt'
          'L'#228'ngd')
        Memos = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
          662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
          6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223232352C
          37373935332220546F703D223132302C3639323935222057696474683D223632
          22204865696768743D22323222205265737472696374696F6E733D2232342220
          53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
          733D2246616C736522204672616D652E5479703D2231352220476170583D2233
          2220476170593D2233222048416C69676E3D2268615269676874222056416C69
          676E3D22766143656E7465722220546578743D2230222F3E3C546672784D656D
          6F56696577204C6566743D223230322220546F703D223636222057696474683D
          22363222204865696768743D22323222205265737472696374696F6E733D2232
          34222053686F7748696E743D2246616C73652220416C6C6F7745787072657373
          696F6E733D2246616C736522204672616D652E5479703D223135222047617058
          3D22332220476170593D2233222048416C69676E3D2268615269676874222056
          416C69676E3D22766143656E7465722220546578743D2230222F3E3C54667278
          4D656D6F56696577204C6566743D223131312220546F703D2236362220576964
          74683D22363222204865696768743D22323222205265737472696374696F6E73
          3D223234222053686F7748696E743D2246616C73652220416C6C6F7745787072
          657373696F6E733D2246616C736522204672616D652E5479703D223135222047
          6170583D22332220476170593D2233222048416C69676E3D2268615269676874
          222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C54
          6672784D656D6F56696577204C6566743D223232352C37373935332220546F70
          3D223134322C3639323935222057696474683D22363222204865696768743D22
          323222205265737472696374696F6E733D223234222053686F7748696E743D22
          46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
          4672616D652E5479703D2231352220476170583D22332220476170593D223322
          2048416C69676E3D2268615269676874222056416C69676E3D22766143656E74
          65722220546578743D2230222F3E3C546672784D656D6F56696577204C656674
          3D223238372C37373935332220546F703D223132302C36393239352220576964
          74683D22383122204865696768743D22323222205265737472696374696F6E73
          3D223234222053686F7748696E743D2246616C73652220416C6C6F7745787072
          657373696F6E733D2246616C736522204672616D652E5479703D223135222047
          6170583D22332220476170593D2233222048416C69676E3D2268615269676874
          222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C54
          6672784D656D6F56696577204C6566743D223236342220546F703D2236362220
          57696474683D22383122204865696768743D2232322220526573747269637469
          6F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F7745
          787072657373696F6E733D2246616C736522204672616D652E5479703D223135
          2220476170583D22332220476170593D2233222048416C69676E3D2268615269
          676874222056416C69676E3D22766143656E7465722220546578743D2230222F
          3E3C546672784D656D6F56696577204C6566743D22302220546F703D22302220
          57696474683D223022204865696768743D223022205265737472696374696F6E
          733D2238222053686F7748696E743D2246616C73652220416C6C6F7745787072
          657373696F6E733D2246616C736522204672616D652E5479703D223135222047
          6170583D22332220476170593D2233222048416C69676E3D2268615269676874
          222056416C69676E3D22766143656E7465722220546578743D22222F3E3C5466
          72784D656D6F56696577204C6566743D223238372C37373935332220546F703D
          223134322C3639323935222057696474683D22383122204865696768743D2232
          3222205265737472696374696F6E733D223234222053686F7748696E743D2246
          616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
          72616D652E5479703D2231352220476170583D22332220476170593D22332220
          48416C69676E3D2268615269676874222056416C69676E3D22766143656E7465
          722220546578743D2230222F3E3C2F63656C6C6D656D6F733E3C63656C6C6865
          616465726D656D6F733E3C546672784D656D6F56696577204C6566743D223022
          20546F703D2230222057696474683D223022204865696768743D223022205265
          737472696374696F6E733D2238222053686F7748696E743D2246616C73652220
          416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
          79703D2231352220476170583D22332220476170593D2233222056416C69676E
          3D22766143656E7465722220546578743D22537479636B222F3E3C546672784D
          656D6F56696577204C6566743D22302220546F703D2230222057696474683D22
          3022204865696768743D223022205265737472696374696F6E733D2238222053
          686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
          3D2246616C736522204672616D652E5479703D2231352220476170583D223322
          20476170593D2233222056416C69676E3D22766143656E746572222054657874
          3D22537479636B222F3E3C546672784D656D6F56696577204C6566743D223022
          20546F703D2230222057696474683D223022204865696768743D223022205265
          737472696374696F6E733D2238222053686F7748696E743D2246616C73652220
          416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
          79703D2231352220476170583D22332220476170593D2233222056416C69676E
          3D22766143656E7465722220546578743D22537479636B222F3E3C546672784D
          656D6F56696577204C6566743D22302220546F703D2230222057696474683D22
          3022204865696768743D223022205265737472696374696F6E733D2238222053
          686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
          3D2246616C736522204672616D652E5479703D2231352220476170583D223322
          20476170593D2233222056416C69676E3D22766143656E746572222054657874
          3D22537479636B222F3E3C2F63656C6C6865616465726D656D6F733E3C636F6C
          756D6E6D656D6F733E3C546672784D656D6F56696577204C6566743D22323235
          2C37373935332220546F703D2239382C3639323935222057696474683D223632
          22204865696768743D22323222205265737472696374696F6E733D2232342220
          53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
          733D2246616C736522204672616D652E5479703D2231352220476170583D2233
          2220476170593D2233222048416C69676E3D22686143656E746572222056416C
          69676E3D22766143656E7465722220546578743D22222F3E3C2F636F6C756D6E
          6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D656D
          6F56696577204C6566743D223238372C37373935332220546F703D2239382C36
          39323935222057696474683D22383122204865696768743D2232322220526573
          7472696374696F6E733D2238222053686F7748696E743D2246616C7365222041
          6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
          727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
          6768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E74
          2E5374796C653D223122204672616D652E5479703D2231352220476170583D22
          332220476170593D2233222048416C69676E3D22686143656E74657222205061
          72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
          722220546578743D224772616E6420546F74616C222F3E3C2F636F6C756D6E74
          6F74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D656D6F
          56696577204C6566743D2232332C37373935332220546F703D2237362C363932
          3935222057696474683D2232303222204865696768743D223232222052657374
          72696374696F6E733D2238222053686F7748696E743D2246616C73652220416C
          6C6F7745787072657373696F6E733D2246616C736522204672616D652E547970
          3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
          686143656E746572222056416C69676E3D22766143656E746572222054657874
          3D22537479636B222F3E3C546672784D656D6F56696577204C6566743D223232
          352C37373935332220546F703D2237362C3639323935222057696474683D2231
          343322204865696768743D22323222205265737472696374696F6E733D223822
          2053686F7748696E743D2246616C73652220416C6C6F7745787072657373696F
          6E733D2246616C736522204672616D652E5479703D2231352220476170583D22
          332220476170593D2233222048416C69676E3D22686143656E74657222205641
          6C69676E3D22766143656E7465722220546578743D2255746C6173746164222F
          3E3C546672784D656D6F56696577204C6566743D22302220546F703D22302220
          57696474683D223022204865696768743D223022205265737472696374696F6E
          733D2238222056697369626C653D2246616C7365222053686F7748696E743D22
          46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
          4672616D652E5479703D2231352220476170583D22332220476170593D223322
          2048416C69676E3D22686143656E746572222056416C69676E3D22766143656E
          7465722220546578743D22222F3E3C546672784D656D6F56696577204C656674
          3D2232332C37373935332220546F703D2239382C363932393522205769647468
          3D22393122204865696768743D22323222205265737472696374696F6E733D22
          38222053686F7748696E743D2246616C73652220416C6C6F7745787072657373
          696F6E733D2246616C736522204672616D652E5479703D223135222047617058
          3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
          56416C69676E3D22766143656E7465722220546578743D2250726F6475637443
          6F6465222F3E3C546672784D656D6F56696577204C6566743D223131342C3737
          3935332220546F703D2239382C3639323935222057696474683D223630222048
          65696768743D22323222205265737472696374696F6E733D2238222053686F77
          48696E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246
          616C736522204672616D652E5479703D2231352220476170583D223322204761
          70593D2233222048416C69676E3D22686143656E746572222056416C69676E3D
          22766143656E7465722220546578743D2250726F64756B74222F3E3C54667278
          4D656D6F56696577204C6566743D223137342C37373935332220546F703D2239
          382C3639323935222057696474683D22353122204865696768743D2232322220
          5265737472696374696F6E733D2238222053686F7748696E743D2246616C7365
          2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
          2E5479703D2231352220476170583D22332220476170593D2233222048416C69
          676E3D22686143656E746572222056416C69676E3D22766143656E7465722220
          546578743D224CC3A46E6764222F3E3C2F636F726E65726D656D6F733E3C726F
          776D656D6F733E3C546672784D656D6F56696577204C6566743D2232332C3737
          3935332220546F703D223132302C3639323935222057696474683D2239312220
          4865696768743D22323222205265737472696374696F6E733D22323422205368
          6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
          2246616C736522204672616D652E5479703D2231352220476170583D22332220
          476170593D2233222048416C69676E3D22686143656E746572222056416C6967
          6E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F56
          696577204C6566743D223131342C37373935332220546F703D223132302C3639
          323935222057696474683D22363022204865696768743D223232222052657374
          72696374696F6E733D223234222053686F7748696E743D2246616C7365222041
          6C6C6F7745787072657373696F6E733D2246616C736522204672616D652E5479
          703D2231352220476170583D22332220476170593D2233222048416C69676E3D
          22686143656E746572222056416C69676E3D22766143656E7465722220546578
          743D22222F3E3C546672784D656D6F56696577204C6566743D223137342C3737
          3935332220546F703D223132302C3639323935222057696474683D2235312220
          4865696768743D22323222205265737472696374696F6E733D22323422205368
          6F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D
          2246616C736522204672616D652E5479703D2231352220476170583D22332220
          476170593D2233222048416C69676E3D22686143656E746572222056416C6967
          6E3D22766143656E7465722220546578743D22222F3E3C2F726F776D656D6F73
          3E3C726F77746F74616C6D656D6F733E3C546672784D656D6F56696577204C65
          66743D2232332C37373935332220546F703D223134322C363932393522205769
          6474683D2232303222204865696768743D22323222205265737472696374696F
          6E733D2238222053686F7748696E743D2246616C73652220416C6C6F77457870
          72657373696F6E733D2246616C73652220466F6E742E436861727365743D2231
          2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
          332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D
          223122204672616D652E5479703D2231352220476170583D2233222047617059
          3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
          743D2246616C7365222056416C69676E3D22766143656E746572222054657874
          3D224772616E6420546F74616C222F3E3C546672784D656D6F56696577204C65
          66743D2236302220546F703D223636222057696474683D223531222048656967
          68743D22323222205265737472696374696F6E733D2238222056697369626C65
          3D2246616C7365222053686F7748696E743D2246616C73652220416C6C6F7745
          787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
          22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
          2D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C
          653D223122204672616D652E5479703D2231352220476170583D223322204761
          70593D2233222048416C69676E3D22686143656E7465722220506172656E7446
          6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
          78743D22546F74616C222F3E3C546672784D656D6F56696577204C6566743D22
          3135312220546F703D223636222057696474683D22353122204865696768743D
          22323222205265737472696374696F6E733D2238222056697369626C653D2246
          616C7365222053686F7748696E743D2246616C73652220416C6C6F7745787072
          657373696F6E733D2246616C73652220466F6E742E436861727365743D223122
          20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3133
          2220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22
          3122204672616D652E5479703D2231352220476170583D22332220476170593D
          2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
          3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
          22546F74616C222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C6675
          6E6374696F6E733E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E73
          3E3C636F6C756D6E736F72743E3C6974656D20302F3E3C2F636F6C756D6E736F
          72743E3C726F77736F72743E3C6974656D20302F3E3C6974656D20302F3E3C69
          74656D20302F3E3C2F726F77736F72743E3C2F63726F73733E}
      end
    end
  end
  object sq_ST_Del_Stat: TFDQuery
    Active = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        #9'select pc.ProductCode, st.CustomerNo, st.ProductNo, st.Utlastad' +
        ', st.Produkt, st.L'#228'ngd, SUM(st.NoOfPcs) AS Styck  '
      #9'from  dbo.ST_Deliveries st'
      
        #9'Left join [dbo].[Product_code] pc on pc.ClientNo = st.CustomerN' +
        'o'
      #9'and pc.ProductNo = st.ProductNo'
      #9'and pc.ALMM = st.L'#228'ngd'
      #9'WHERE st.Utlastad >= '#39'2012-01-01'#39
      #9'and st.Utlastad <= '#39'2012-02-01'#39
      #9'and st.CustomerNo = 1'
      
        #9'Group By st.Utlastad, st.Produkt, st.L'#228'ngd, st.ProductNo, st.Cu' +
        'stomerNo, pc.ProductCode')
    Left = 928
    Top = 544
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 928
    Top = 608
  end
  object siLangLinked_fDeliveryReport: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Swedish'
      'English')
    Language = 'English'
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
    Left = 616
    Top = 400
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600440065006C006900760065007200790052006500
      70006F007200740001004C00410047004500520052004100500050004F005200
      5400010001000D000A0074007300500072006F00640075006B00740069006F00
      6E00500065007200500061006B00650074006E00720001004C00650076006500
      720061006E00730065007200010001000D000A00630062004500780070006100
      6E00640065006400010045007800700061006E00640065007200610064000100
      01000D000A00670072006400500072006F006400500061006B00650074004E00
      720044004200420061006E006400650064005400610062006C00650056006900
      65007700310053007500700070006C0069006500720001005600650072006B00
      010001000D000A00670072006400500072006F006400500061006B0065007400
      4E00720044004200420061006E006400650064005400610062006C0065005600
      69006500770031004B0075006E00640001004B0075006E006400010001000D00
      0A00670072006400500072006F006400500061006B00650074004E0072004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310050007200690073004F004B00010050007200690073004F004B0001000100
      0D000A00670072006400500072006F006400500061006B00650074004E007200
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004F0077006E00650072004E006F0001004F0077006E00650072004E00
      6F00010001000D000A00670072006400500072006F006400500061006B006500
      74004E00720044004200420061006E006400650064005400610062006C006500
      560069006500770031004D004500440045004C00500052004900530001004D00
      4500440045004C005000520049005300010001000D000A006700720064005000
      72006F006400500061006B00650074004E00720044004200420061006E006400
      650064005400610062006C006500560069006500770031004C004F0001004C00
      4F00010001000D000A00670072006400500072006F006400500061006B006500
      74004E00720044004200420061006E006400650064005400610062006C006500
      56006900650077003100500072006F0064007500630074004E006F0001005000
      72006F0064007500630074004E006F00010001000D000A006700720064005000
      72006F006400500061006B00650074004E00720044004200420061006E006400
      650064005400610062006C00650056006900650077003100500052004F004400
      55004B0054000100500052004F00440055004B005400010001000D000A006700
      72006400500072006F006400500061006B00650074004E007200440042004200
      61006E006400650064005400610062006C006500560069006500770031004100
      5400010041005400010001000D000A00670072006400500072006F0064005000
      61006B00650074004E00720044004200420061006E0064006500640054006100
      62006C0065005600690065007700310041004200010041004200010001000D00
      0A00670072006400500072006F006400500061006B00650074004E0072004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004E00540001004E005400010001000D000A00670072006400500072006F00
      6400500061006B00650074004E00720044004200420061006E00640065006400
      5400610062006C006500560069006500770031004E00420001004E0042000100
      01000D000A00670072006400500072006F006400500061006B00650074004E00
      720044004200420061006E006400650064005400610062006C00650056006900
      6500770031004E006F006D00440069006D0001004E006F006D00440069006D00
      010001000D000A00670072006400500072006F006400500061006B0065007400
      4E00720044004200420061006E006400650064005400610062006C0065005600
      690065007700310041006B007400440069006D00010041006B00740044006900
      6D00010001000D000A00670072006400500072006F006400500061006B006500
      74004E00720044004200420061006E006400650064005400610062006C006500
      5600690065007700310054005300010054005300010001000D000A0067007200
      6400500072006F006400500061006B00650074004E0072004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050004300
      010050004300010001000D000A00670072006400500072006F00640050006100
      6B00650074004E00720044004200420061006E00640065006400540061006200
      6C006500560069006500770031004B00560001004B005600010001000D000A00
      670072006400500072006F006400500061006B00650074004E00720044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      5600610072007500670072007500700070004E0061006D006E00010056006100
      7200750067007200750070007000010001000D000A0067007200640050007200
      6F006400500061006B00650074004E00720044004200420061006E0064006500
      64005400610062006C0065005600690065007700310055005400010055005400
      010001000D000A00670072006400500072006F006400500061006B0065007400
      4E00720044004200420061006E006400650064005400610062006C0065005600
      690065007700310041004D003300010041004D003300010001000D000A006700
      72006400500072006F006400500061006B00650074004E007200440042004200
      61006E006400650064005400610062006C006500560069006500770031004E00
      4D00330001004E004D003300010001000D000A00670072006400500072006F00
      6400500061006B00650074004E00720044004200420061006E00640065006400
      5400610062006C006500560069006500770031004E004500540054004F000100
      4E004500540054004F00010001000D000A00670072006400500072006F006400
      500061006B00650074004E00720044004200420061006E006400650064005400
      610062006C0065005600690065007700310053007400790063006B0001005300
      7400790063006B00010001000D000A00670072006400500072006F0064005000
      61006B00650074004E00720044004200420061006E0064006500640054006100
      62006C00650056006900650077003100550074006C0061007300740061006400
      0100550074006C0061007300740061006400010001000D000A00670072006400
      500072006F006400500061006B00650074004E00720044004200420061006E00
      6400650064005400610062006C006500560069006500770031004C006E006700
      640001004C00E4006E0067006400010001000D000A0074007300500072006F00
      640075006B00740069006F006E00500072006F00640075006B00740053007500
      6D006D006100720079000100500072006F00640075006B00740069006F006E00
      20002800700072006F00640075006B007400730075006D006D00650072006900
      6E0067002900010001000D000A006300780042007500740074006F006E003100
      3300010054006100200062006F007200740020006D0061006C006C0001000100
      0D000A00670072006400500072006F006400530055004D004400420042006100
      6E006400650064005400610062006C006500560069006500770031004F007000
      650072006100740069006F006E0001004F007000650072006100740069006F00
      6E00010001000D000A00670072006400500072006F006400530055004D004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004100760067004C0065006E0067007400680001004D002F004C0001000100
      0D000A00670072006400500072006F006400530055004D004400420042006100
      6E006400650064005400610062006C0065005600690065007700310053006800
      6900660074005400650061006D004E0061006D006500010053006B0069006600
      74006C0061006700010001000D000A00670072006400500072006F0064005300
      55004D0044004200420061006E006400650064005400610062006C0065005600
      690065007700310052006500670050006F0069006E0074004E0061006D006500
      01004D00E4007400700075006E006B007400010001000D000A00670072006400
      500072006F006400530055004D0044004200420061006E006400650064005400
      610062006C006500560069006500770031004D0050005F0053006B0069006600
      74004C006100670001004D00E4007400700075006E006B0074002F0053006B00
      6900660074004C0061006700010001000D000A00670072006400500072006F00
      6400530055004D0044004200420061006E006400650064005400610062006C00
      650056006900650077003100500072006F0064007500630074004E006F000100
      500072006F0064007500630074004E006F00010001000D000A00670072006400
      500072006F006400530055004D0044004200420061006E006400650064005400
      610062006C00650056006900650077003100500052004F00440055004B005400
      0100500072006F00640075006B007400010001000D000A006700720064005000
      72006F006400530055004D0044004200420061006E0064006500640054006100
      62006C00650056006900650077003100500061006B00650074006E0072000100
      500061006B00650074006E007200010001000D000A0067007200640050007200
      6F006400530055004D0044004200420061006E00640065006400540061006200
      6C00650056006900650077003100500072006500660069007800010050007200
      6500660069007800010001000D000A00670072006400500072006F0064005300
      55004D0044004200420061006E006400650064005400610062006C0065005600
      690065007700310041005400010041005400010001000D000A00670072006400
      500072006F006400530055004D0044004200420061006E006400650064005400
      610062006C006500560069006500770031004100420001004100420001000100
      0D000A00670072006400500072006F006400530055004D004400420042006100
      6E006400650064005400610062006C006500560069006500770031004E005400
      01004E005400010001000D000A00670072006400500072006F00640053005500
      4D0044004200420061006E006400650064005400610062006C00650056006900
      6500770031004E00420001004E004200010001000D000A006700720064005000
      72006F006400530055004D0044004200420061006E0064006500640054006100
      62006C006500560069006500770031004E006F006D00440069006D0001004E00
      6F006D00440069006D00010001000D000A00670072006400500072006F006400
      530055004D0044004200420061006E006400650064005400610062006C006500
      5600690065007700310041006B007400440069006D00010041006B0074004400
      69006D00010001000D000A00670072006400500072006F006400530055004D00
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310054005300010054005300010001000D000A0067007200640050007200
      6F006400530055004D0044004200420061006E00640065006400540061006200
      6C0065005600690065007700310050004300010050004300010001000D000A00
      670072006400500072006F006400530055004D0044004200420061006E006400
      650064005400610062006C006500560069006500770031004B00560001004B00
      5600010001000D000A00670072006400500072006F006400530055004D004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310055005400010055005400010001000D000A00670072006400500072006F00
      6400530055004D0044004200420061006E006400650064005400610062006C00
      6500560069006500770031004F0077006E00650072004E006F0001004F007700
      6E00650072004E006F00010001000D000A00670072006400500072006F006400
      530055004D0044004200420061006E006400650064005400610062006C006500
      5600690065007700310053005400590043004B00010053005400590043004B00
      010001000D000A00670072006400500072006F006400530055004D0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      41004D003300010041004D003300010001000D000A0067007200640050007200
      6F006400530055004D0044004200420061006E00640065006400540061006200
      6C006500560069006500770031004E004D00330001004E004D00330001000100
      0D000A00670072006400500072006F006400530055004D004400420042006100
      6E006400650064005400610062006C0065005600690065007700310041004D00
      3100010041004D003100010001000D000A00670072006400500072006F006400
      530055004D0044004200420061006E006400650064005400610062006C006500
      560069006500770031004D00460042004D0001004D00460042004D0001000100
      0D000A00670072006400500072006F006400530055004D004400420042006100
      6E006400650064005400610062006C0065005600690065007700310041004D00
      3200010041004D003200010001000D000A00740073004C006100670072006500
      740001004C006100670065007200010001000D000A00630078004C0061006200
      65006C00320001005600650072006B003A00010001000D000A00630078004C00
      6100620065006C003100010054006A006F0063006B006C0065006B0001000100
      0D000A00630078004C006100620065006C003600010042007200650064006400
      010001000D000A00630078004C006100620065006C00370001004C00E4006E00
      67006400010001000D000A00630078004C006100620065006C00380001005400
      7200E40073006C0061006700010001000D000A00630078004C00610062006500
      6C00390001004B00760061006C006900740065007400010001000D000A006300
      78004C006100620065006C00310030000100550074006600F600720061006E00
      64006500010001000D000A00630078004C006100620065006C00310031000100
      49006D0070007200650067006E006500720069006E006700010001000D000A00
      630078004C006100620065006C00320039000100560061007200750067007200
      750070007000010001000D000A00630078004C006100620065006C0033003000
      01005200650066006500720065006E007300010001000D000A00630078004C00
      6100620065006C003300310001004C00650076002E0064006100740075006D00
      20003E003D00010001000D000A00630078004C006100620065006C0033003200
      01004C00650076002E0064006100740075006D0020003C003D00010001000D00
      0A00630078004C006100620065006C003300330001004D00E400740070007500
      6E006B007400010001000D000A00630078004C006100620065006C0033003400
      010053006B006900660074006C0061006700010001000D000A00630078004C00
      6100620065006C0033003500010054006A006F0063006B006C0065006B002C00
      20006E006F006D00010001000D000A00630078004C006100620065006C003300
      36000100420072006500640064002C0020006E006F006D00010001000D000A00
      6300780042007500740074006F006E003100010053007400E4006E0067000100
      01000D000A00630062005000610052006500670001005000E500720065006700
      69007300740072006500720061007400010001000D000A006300620041007600
      720065006700010049006E006B006C002E007400690064002000690020006600
      69006C00740065007200010001000D000A006300780042007500740074006F00
      6E0032000100520065006E00730061002000660069006C007400650072000100
      01000D000A00630078004C006100620065006C0031003400010049006E006600
      6F003100010001000D000A00630078004C006100620065006C00310035000100
      49006E0066006F003200010001000D000A00630078004C006100620065006C00
      3300370001004C0061006E006400010001000D000A00630078004C0061006200
      65006C003300380001004B0075006E006400010001000D000A00630062004500
      78006B006C0075006400650072006100450067006E0061004C00650076006500
      720061006E007300650072000100450078006B006C0075006400650072006100
      2000650067006E00610020006C00650076006500720061006E00730065007200
      010001000D000A006300620049006E006B00540069006D00650049006E004400
      610074006500460069006C00740065007200010049006E006B006C002E002000
      74006900640020006900200064006100740075006D002000660069006C007400
      65007200010001000D000A00640078004200610072004D0061006E0061006700
      6500720031004200610072003100010043007500730074006F006D0020003100
      010001000D000A00640078004200610072004D0061006E006100670065007200
      310042006100720032000100500061006B00650074006E007200010001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      72003300010054006F0072006B005300610074007300010001000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003400
      0100500061006B006500740054006100620065006C006C004D0065006E007900
      010001000D000A00640078004200610072004D0061006E006100670065007200
      31004200610072003500010054006F0072006B00730061007400730032000100
      01000D000A006C00620052006500660072006500730068000100260052006500
      66007200650073006800010001000D000A006C00620050006B0067004E006F00
      5200650070006F00720074000100500061006B00650074006E00720020004600
      3200010001000D000A006C0062005000630073005000650072004C0065006E00
      6700740068005200650070006F0072007400010041006E0074002F006C00E400
      6E0067006400200046003300010001000D000A006C00620050006B0067005400
      7900700065005200650070006F00720074000100500061006B00650074006B00
      6F006400200046003400010001000D000A006C00620049006E00760065006E00
      74006F007200790043006F0075006E007400010050006B0074004E0072002000
      6C006900730074006100200046003500010001000D000A006C00620048006900
      64006500460069006C00740065007200500061006E0065006C0001004700F600
      6D002000660069006C00740065007200010001000D000A006200620053007500
      6D006D006100720079005200650070006F00720074000100530075006D006D00
      6500720069006E006700200043005200200046003600010001000D000A006400
      78004200610072004C00610072006700650042007500740074006F006E003100
      010054006100620065006C006C00200046003800010001000D000A0064007800
      4200610072004C00610072006700650042007500740074006F006E0032000100
      530075006D006D006500720069006E006700200046003700010001000D000A00
      640078004200610072005300750062004900740065006D003100010049006E00
      73007400E4006C006C006E0069006E00670061007200010001000D000A006400
      780042006100720042007500740074006F006E00330033000100530075006D00
      6D006500720069006E006700010001000D000A00640078004200610072004200
      7500740074006F006E00320001004600E4006C00740020007600E4006C006A00
      610072006500010001000D000A00640078004200610072004200750074007400
      6F006E003300010045007800700061006E006400650072006100200061006C00
      6C00610020006700720075007000700065007200010001000D000A0064007800
      42006100720042007500740074006F006E00340001004B006F006C006C006100
      700073006100200061006C006C00610020006700720075007000700065007200
      010001000D000A006400780042006100720042007500740074006F006E003500
      0100C4006E006400720061002000700061006B0065007400010001000D000A00
      6400780042006100720042007500740074006F006E0036000100540061002000
      62006F00720074002000700061006B0065007400010001000D000A0064007800
      42006100720042007500740074006F006E0037000100500061006B0065007400
      6C006F0067006700010001000D000A0064007800420061007200420075007400
      74006F006E003300350001005600E50072006400610020006C00610067006500
      7200010001000D000A006400780042006100720042007500740074006F006E00
      340033000100C4006E006400720061002000700072006900730020007000E500
      20006D00610072006B00650072006100640065002000700061006B0065007400
      010001000D000A006400780042006100720042007500740074006F006E003800
      010052006500670069007300740072006500720061002000700061006B006500
      7400010001000D000A006400780042006100720042007500740074006F006E00
      39000100C4006E006400720061002000700061006B0065007400010001000D00
      0A006400780042006100720042007500740074006F006E003100300001004100
      760072006500670069007300740072006500720061002000700061006B006500
      7400010001000D000A006400780042006100720042007500740074006F006E00
      31003100010053006B00720069007600200075007400010001000D000A006400
      780042006100720042007500740074006F006E0031003200010045006D006100
      69006C006100010001000D000A00640078004200610072004200750074007400
      6F006E003100340001004600E4006C00740020007600E4006C006A0061007200
      6500010001000D000A006400780042006100720042007500740074006F006E00
      310033000100500061006B006500740069006E0066006F0072006D0061007400
      69006F006E00010001000D000A00640078004200610072004200750074007400
      6F006E0032003800010046006C0079007400740061002000700061006B006500
      7400200069006E007400650072006E007400010001000D000A00640078004200
      6100720042007500740074006F006E0033003400010041007600720065006700
      690073007400720065007200610020006D006F007400200069006E0076006500
      6E0074006500720069006E006700010001000D000A0064007800420061007200
      42007500740074006F006E0033003700010054006100200062006F0072007400
      2000700061006B0065007400200028006C0061006700650072007600E5007200
      64002900010001000D000A006400780042006100720042007500740074006F00
      6E00330038000100C4006E006400720061002000700061006B00650074002000
      28006C0061006700650072007600E500720064002900010001000D000A006400
      780042006100720042007500740074006F006E003100350001004E0079002000
      74006F0072006B007300610074007300010001000D000A006400780042006100
      720042007500740074006F006E00310036000100200020005300700061007200
      610020002000010001000D000A00640078004200610072004200750074007400
      6F006E00310037000100C5006E00670072006100010001000D000A0064007800
      42006100720042007500740074006F006E003100380001005400610020006200
      6F0072007400200074006F0072006B007300610074007300010001000D000A00
      6400780042006100720042007500740074006F006E00310039000100D6007000
      70006E006100010001000D000A00640078004200610072004200750074007400
      6F006E0032003000010053006B00720069007600200075007400010001000D00
      0A006200620041006400640050006B006700730054006F004B0069006C006E00
      43006800610072006700650001004C00E400670067002000700061006B006500
      74002000740069006C006C00200074006F0072006B0073006100740073000100
      01000D000A006400780042006100720042007500740074006F006E0033003000
      010054006100200062006F00720074002000700061006B006500740001000100
      0D000A006400780042006100720042007500740074006F006E00320039000100
      54006100200062006F00720074002000720061006400010001000D000A006400
      780042006100720042007500740074006F006E0033003100010046006C007900
      7400740061002000700061006B00650074002000740069006C006C0020006C00
      6100670065007200200065006600740065007200200074006F0072006B000100
      01000D000A006400780042006100720042007500740074006F006E0033003200
      01004E006F0074006500720069006E006700010001000D000A00640078004200
      6100720042007500740074006F006E00320031000100500061006B0065007400
      6E007200200046003800010001000D000A006400780042006100720042007500
      740074006F006E0032003200010053006F007200740069006D0065006E007400
      2000460031003000010001000D000A0064007800420061007200420075007400
      74006F006E0032003300010053006B0072006900760020002600750074000100
      01000D000A006400780042006100720042007500740074006F006E0032003400
      01004100750074006F006D0061007400690073006B0020006B006F006C007500
      6D006E0062007200650064006400010001000D000A0064007800420061007200
      42007500740074006F006E0032003500010045006D00610069006C0061000100
      01000D000A006400780042006100720042007500740074006F006E0032003600
      010047007200750070007000730075006D006D006500720069006E0067000100
      01000D000A006400780042006100720042007500740074006F006E0032003700
      0100470072007500700070006500720069006E00670073007200750074006100
      010001000D000A006200620056006900730061004100760041006B0074006900
      7600650072006100640065000100560069007300610020006100760061006B00
      74006900760065007200610064006500010001000D000A006400780042006100
      720042007500740074006F006E0033003600010041006C007400650072006E00
      61007400690076002000640069006D002E0069006E006D00610074006E006900
      6E006700010001000D000A006400780042006100720042007500740074006F00
      6E00330039000100C50074006500720073007400E4006C006C00200074006100
      620065006C006C006C00610079006F0075007400010001000D000A0061006300
      43006C006F007300650001005800010001000D000A006100630050006B006700
      49006E0066006F000100500061006B006500740069006E0066006F0072006D00
      6100740069006F006E00010001000D000A006100630053006100760065004700
      7200690064004C00610079006F00750074000100530070006100720061002000
      6C00610079006F0075007400010001000D000A00610063004C006F0061006400
      47007200690064004C00610079006F00750074000100D600700070006E006100
      20006C00610079006F0075007400010001000D000A0061006300450078007000
      6F007200740054006F0045007800630065006C00010053007000610072006100
      200073006F006D00200065007800630065006C00010001000D000A0061006300
      4E0065007700500072006F006400500061006B00650074004E0072004D006100
      6C006C0001004C00E400670067002000740069006C006C0020004E0079002000
      4D0061006C006C00010001000D000A0061006300440065006C00650074006500
      500072006F006400500061006B00650074004E0072004D0061006C006C000100
      54006100200062006F007200740020006D0061006C006C00010001000D000A00
      610063005300610076006500500072006F006400500061006B00650074004E00
      72004D0061006C006C0001005300700061007200610020006D0061006C006C00
      010001000D000A00610063005200650066007200650073006800500072006F00
      6400500061006B00650074004E00720001005500700070006400610074006500
      72006100010001000D000A006100630045007800700061006E00640041006C00
      6C00500072006F006400500061006B00650074004E00720001004D0061007800
      69006D00650072006100200061006C006C006100010001000D000A0061006300
      43006F006C006C00610070007300650041006C006C00500072006F0064005000
      61006B00650074004E00720001004D0069006E0069006D006500720061002000
      61006C006C006100010001000D000A00610063004E0065007700500072006F00
      6400530055004D004D0061006C006C0001004C00E40067006700200074006900
      6C006C0020006E00790020006D0061006C006C00010001000D000A0061006300
      5300610076006500500072006F006400530055004D004D0061006C006C000100
      5300700061007200610020006D0061006C006C00010001000D000A0061006300
      5200650066007200650073006800500072006F006400530055004D0001005500
      70007000640061007400650072006100010001000D000A006100630044006500
      6C00650074006500500072006F006400530055004D004D0061006C006C000100
      61006300440065006C00650074006500500072006F006400530055004D004D00
      61006C006C00010001000D000A006100630043006F006C006C00610070007300
      650041006C006C00500072006F006400530075006D0001004D0069006E006900
      6D00650072006100200061006C006C006100010001000D000A00610063004500
      7800700061006E00640041006C006C00500072006F006400530055004D000100
      4D006100780069006D00650072006100200061006C006C006100010001000D00
      0A00610063005000720069006E007400010053006B0072006900760020007500
      7400010001000D000A006100630055006C00720069006B006100520061007000
      70006F0072007400010055006C00720069006B00610020007200610070007000
      6F0072007400010001000D000A0053006B007200690076007500740031000100
      53006B007200690076002000260075007400010001000D000A0041006E007400
      6C006E0067006400460039003100010041006E0074002F006C00E4006E006700
      6400200046003900010001000D000A006400780043006F006D0070006F006E00
      65006E0074005000720069006E0074006500720031004C0069006E006B003100
      01004E00650077005200650070006F0072007400010001000D000A0073007400
      480069006E00740073005F0055006E00690063006F00640065000D000A006C00
      6200520065006600720065007300680001005200650066007200650073006800
      010001000D000A006C0062004800690064006500460069006C00740065007200
      500061006E0065006C0001004700F6006D002000660069006C00740065007200
      010001000D000A007300740044006900730070006C00610079004C0061006200
      65006C0073005F0055006E00690063006F00640065000D000A006D0074005500
      730065007200500072006F0070005600650072006B004E006F00010056006500
      72006B004E006F00010001000D000A006D007400550073006500720050007200
      6F0070004F0077006E00650072004E006F0001004F0077006E00650072004E00
      6F00010001000D000A006D0074005500730065007200500072006F0070005000
      490050004E006F0001005000490050004E006F00010001000D000A006D007400
      5500730065007200500072006F0070004C00490050004E006F0001004C004900
      50004E006F00010001000D000A006D0074005500730065007200500072006F00
      700049006E007000750074004F007000740069006F006E00010049006E007000
      750074004F007000740069006F006E00010001000D000A006D00740055007300
      65007200500072006F00700052006500670050006F0069006E0074004E006F00
      010052006500670050006F0069006E0074004E006F00010001000D000A006D00
      74005500730065007200500072006F0070005200650067004400610074006500
      01005200650067004400610074006500010001000D000A006D00740055007300
      65007200500072006F00700043006F0070007900500063007300010043006F00
      70007900500063007300010001000D000A006D00740055007300650072005000
      72006F007000520075006E004E006F000100520075006E004E006F0001000100
      0D000A006D0074005500730065007200500072006F007000500072006F006400
      75006300650072004E006F000100500072006F00640075006300650072004E00
      6F00010001000D000A006D0074005500730065007200500072006F0070004100
      750074006F0043006F006C005700690064007400680001004100750074006F00
      43006F006C0057006900640074006800010001000D000A006D00740055007300
      65007200500072006F00700053007500700070006C0069006500720043006F00
      64006500010053007500700070006C0069006500720043006F00640065000100
      01000D000A006D0074005500730065007200500072006F0070004C0065006E00
      6700740068004F007000740069006F006E0001004C0065006E00670074006800
      4F007000740069006F006E00010001000D000A006D0074005500730065007200
      500072006F0070004C0065006E00670074006800470072006F00750070004E00
      6F0001004C0065006E00670074006800470072006F00750070004E006F000100
      01000D000A006D0074005500730065007200500072006F0070004E0065007700
      4900740065006D0052006F00770001004E00650077004900740065006D005200
      6F007700010001000D000A006D0074005500730065007200500072006F007000
      530061006C006500730052006500670069006F006E004E006F00010053006100
      6C006500730052006500670069006F006E004E006F00010001000D000A006D00
      74005500730065007200500072006F0070004C0065006E006700740068004600
      6F0072006D00610074004E006F0001004C0065006E0067007400680046006F00
      72006D00610074004E006F00010001000D000A006D0074005500730065007200
      500072006F007000470072006100640065005300740061006D0070004E006F00
      0100470072006100640065005300740061006D0070004E006F00010001000D00
      0A006D0074005500730065007200500072006F00700042006100720043006F00
      640065004E006F00010042006100720043006F00640065004E006F0001000100
      0D000A006D0074005500730065007200500072006F0070004C0065006E006700
      74006800470072006F007500700001004C0065006E0067007400680047007200
      6F0075007000010001000D000A006D0074005500730065007200500072006F00
      70004C00490050004E0061006D00650001004C00490050004E0061006D006500
      010001000D000A006D0074005500730065007200500072006F00700050004900
      50004E0041004D00450001005000490050004E0041004D004500010001000D00
      0A006D0074005500730065007200500072006F00700052004500470050004F00
      49004E005400010052004500470050004F0049004E005400010001000D000A00
      6D0074005500730065007200500072006F007000500052004F00440055004300
      450052000100500052004F0044005500430045005200010001000D000A006D00
      74005500730065007200500072006F0070004F0057004E004500520001004F00
      57004E0045005200010001000D000A006D007400550073006500720050007200
      6F0070005600450052004B0001005600450052004B00010001000D000A006D00
      74005500730065007200500072006F00700052006F006C006500540079007000
      6500010052006F006C0065005400790070006500010001000D000A006D007400
      5500730065007200500072006F00700047007200610064006500730074006100
      6D0070000100470072006100640065007300740061006D007000010001000D00
      0A006D0074005500730065007200500072006F00700042006100720063006F00
      64006500010042006100720063006F0064006500010001000D000A006D007400
      5500730065007200500072006F007000500072006F0064007500630074004400
      650073006300720069007000740069006F006E000100500072006F0064007500
      630074004400650073006300720069007000740069006F006E00010001000D00
      0A006D0074005500730065007200500072006F007000500072006F0064007500
      630074004E006F000100500072006F0064007500630074004E006F0001000100
      0D000A006D0074005500730065007200500072006F007000500072006F006400
      750063007400470072006F00750070004E006F000100500072006F0064007500
      63007400470072006F00750070004E006F00010001000D000A006D0074005500
      730065007200500072006F0070004C00490050004300680061006E0067006500
      01004C00490050004300680061006E0067006500010001000D000A006D007400
      5500730065007200500072006F00700053005200010053005200010001000D00
      0A006D0074005500730065007200500072006F00700056006F006C0075006D00
      650055006E0069004E006F00010056006F006C0075006D00650055006E006900
      4E006F00010001000D000A006D0074005500730065007200500072006F007000
      56005500010056005500010001000D000A006D00740055007300650072005000
      72006F0070004C0065006E0067007400680046006F0072006D00610074000100
      4C0065006E0067007400680046006F0072006D0061007400010001000D000A00
      6D0074005500730065007200500072006F0070004C0065006E00670074006800
      56006F006C0055006E00690074004E006F0001004C0065006E00670074006800
      56006F006C0055006E00690074004E006F00010001000D000A006D0074005500
      730065007200500072006F0070004C0065006E0067007400680056006F006C00
      55006E006900740001004C0065006E0067007400680056006F006C0055006E00
      69007400010001000D000A006D0074005500730065007200500072006F007000
      56006F006C0075006D00650055006E00690074004E006F00010056006F006C00
      75006D00650055006E00690074004E006F00010001000D000A006D0074005500
      730065007200500072006F00700046006F0072006D00010046006F0072006D00
      010001000D000A006D0074005500730065007200500072006F00700055007300
      65007200490044000100550073006500720049004400010001000D000A006D00
      74005500730065007200500072006F007000470072006F007500700042007900
      42006F0078000100470072006F00750070004200790042006F00780001000100
      0D000A006D0074005500730065007200500072006F007000470072006F007500
      7000530075006D006D006100720079000100470072006F007500700053007500
      6D006D00610072007900010001000D000A006D00740055007300650072005000
      72006F0070004100670065006E0074004E006F0001004100670065006E007400
      4E006F00010001000D000A006D0074005500730065007200500072006F007000
      4B0069006C006E004E006F0001004B0069006C006E004E006F00010001000D00
      0A006D0074005500730065007200500072006F00700054004500530054000100
      5400450053005400010001000D000A006D007400550073006500720050007200
      6F00700053006800690070007000650072004E006F0001005300680069007000
      7000650072004E006F00010001000D000A006D00740055007300650072005000
      72006F0070005300740061007200740050006500720069006F00640001005300
      740061007200740050006500720069006F006400010001000D000A006D007400
      5500730065007200500072006F00700045006E00640050006500720069006F00
      6400010045006E00640050006500720069006F006400010001000D000A006D00
      74005500730065007200500072006F007000460069006C007400650072003100
      0100460069006C007400650072003100010001000D000A006D00740055007300
      65007200500072006F007000460069006C007400650072003200010046006900
      6C007400650072003200010001000D000A006300640073005F00560065007200
      6B0043006C00690065006E0074004E006F00010043006C00690065006E007400
      4E006F00010001000D000A006300640073005F005600650072006B0043006C00
      690065006E0074004E0061006D006500010043006C00690065006E0074004E00
      61006D006500010001000D000A006300640073005F005600650072006B005300
      650061007200630068004E0061006D0065000100530065006100720063006800
      4E0061006D006500010001000D000A006300640073005F005600650072006B00
      530061006C006500730052006500670069006F006E004E006F00010053006100
      6C006500730052006500670069006F006E004E006F00010001000D000A006300
      640073005F005600650072006B0050006B0074004E0072004C00650076004B00
      6F006400010050006B0074004E0072004C00650076004B006F00640001000100
      0D000A00730071005F005500730065007200500072006F00660069006C006500
      5500730065007200490044000100550073006500720049004400010001000D00
      0A00730071005F005500730065007200500072006F00660069006C0065004600
      6F0072006D00010046006F0072006D00010001000D000A00730071005F005500
      730065007200500072006F00660069006C00650049006E007000750074004F00
      7000740069006F006E00010049006E007000750074004F007000740069006F00
      6E00010001000D000A00730071005F005500730065007200500072006F006600
      69006C0065005300740061007200740050006500720069006F00640001005300
      740061007200740050006500720069006F006400010001000D000A0073007100
      5F005500730065007200500072006F00660069006C00650045006E0064005000
      6500720069006F006400010045006E00640050006500720069006F0064000100
      01000D000A007300740046006F006E00740073005F0055006E00690063006F00
      640065000D000A0054006600440065006C006900760065007200790052006500
      70006F007200740001004D0053002000530061006E0073002000530065007200
      69006600010001000D000A00640078004200610072004D0061006E0061006700
      65007200310001005300650067006F006500200055004900010001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      310001005300650067006F006500200055004900010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720032000100
      5300650067006F006500200055004900010001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003300010053006500
      67006F006500200055004900010001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200340001005300650067006F00
      6500200055004900010001000D000A00640078004200610072004D0061006E00
      61006700650072003100420061007200350001005300650067006F0065002000
      55004900010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B00310001005400
      69006D006500730020004E0065007700200052006F006D0061006E0001000100
      0D000A00630078005300740079006C006500310001005400610068006F006D00
      6100010001000D000A00630078005300740079006C006500320001004D005300
      2000530061006E007300200053006500720069006600010001000D000A006300
      78005300740079006C006500330001004D0053002000530061006E0073002000
      53006500720069006600010001000D000A00630078005300740079006C006500
      340001005400610068006F006D006100010001000D000A006300780053007400
      79006C00650041006B00740069007600650050006B0067000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650049004E00
      41006B00740069007600650050006B00670001004D0053002000530061006E00
      7300200053006500720069006600010001000D000A0063007800530074007900
      6C0065004E006F0072006D0061006C0041006B00740069007600650050006B00
      670001005400610068006F006D006100010001000D000A0070006D0050006B00
      67004E006F00730001005300650067006F006500200055004900010001000D00
      0A00730074004D0075006C00740069004C0069006E00650073005F0055006E00
      690063006F00640065000D000A00640078004200610072004D0061006E006100
      67006500720031002E00430061007400650067006F0072006900650073000100
      440065006600610075006C0074002C0050006B0067005400610062006C006500
      2C00500061006B00650074004E0072002C0054006F0072006B00530061007400
      73002C00500061006B006500740054006100620065006C006C004D0065006E00
      79002C00460069006C0074006500720043006F006D0062006F0042006F007800
      65007300010001000D000A006600720078005200650070006F00720074003200
      2E00530063007200690070007400540065007800740001006200650067006900
      6E002C002C0065006E0064002E00010001000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A006300620045007800700061006E00640065006400
      2E00500072006F0070006500720074006900650073002E004400690073007000
      6C006100790043006800650063006B0065006400010054007200750065000100
      01000D000A006300620045007800700061006E006400650064002E0050007200
      6F0070006500720074006900650073002E0044006900730070006C0061007900
      55006E0063006800650063006B00650064000100460061006C00730065000100
      01000D000A00670072006400500072006F006400500061006B00650074004E00
      720044004200420061006E006400650064005400610062006C00650056006900
      65007700310053007500700070006C006900650072002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A00670072006400500072006F006400500061006B00
      650074004E00720044004200420061006E006400650064005400610062006C00
      6500560069006500770031004B0075006E0064002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A00670072006400500072006F006400500061006B006500
      74004E00720044004200420061006E006400650064005400610062006C006500
      5600690065007700310050007200690073004F004B002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A00670072006400500072006F006400500061006B00
      650074004E00720044004200420061006E006400650064005400610062006C00
      6500560069006500770031004F0077006E00650072004E006F002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A00670072006400500072006F0064005000
      61006B00650074004E00720044004200420061006E0064006500640054006100
      62006C006500560069006500770031004D004500440045004C00500052004900
      53002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D0065000100540063007800430061006C006300450064006900
      7400500072006F007000650072007400690065007300010001000D000A006700
      72006400500072006F006400500061006B00650074004E007200440042004200
      61006E006400650064005400610062006C006500560069006500770031004C00
      4F002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064005000
      72006F006400500061006B00650074004E00720044004200420061006E006400
      650064005400610062006C00650056006900650077003100500072006F006400
      7500630074004E006F002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      670072006400500072006F006400500061006B00650074004E00720044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      500052004F00440055004B0054002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A00670072006400500072006F006400500061006B00650074004E007200
      44004200420061006E006400650064005400610062006C006500560069006500
      77003100410054002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400500072006F006400500061006B00650074004E007200440042004200
      61006E006400650064005400610062006C006500560069006500770031004100
      42002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064005000
      72006F006400500061006B00650074004E00720044004200420061006E006400
      650064005400610062006C006500560069006500770031004E0054002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A00670072006400500072006F006400
      500061006B00650074004E00720044004200420061006E006400650064005400
      610062006C006500560069006500770031004E0042002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A00670072006400500072006F006400500061006B00
      650074004E00720044004200420061006E006400650064005400610062006C00
      6500560069006500770031004E006F006D00440069006D002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A00670072006400500072006F00640050006100
      6B00650074004E00720044004200420061006E00640065006400540061006200
      6C0065005600690065007700310041006B007400440069006D002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A00670072006400500072006F0064005000
      61006B00650074004E00720044004200420061006E0064006500640054006100
      62006C00650056006900650077003100540053002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A00670072006400500072006F006400500061006B006500
      74004E00720044004200420061006E006400650064005400610062006C006500
      56006900650077003100500043002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A00670072006400500072006F006400500061006B00650074004E007200
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004B0056002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400500072006F006400500061006B00650074004E007200440042004200
      61006E006400650064005400610062006C006500560069006500770031005600
      610072007500670072007500700070004E0061006D006E002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A00670072006400500072006F00640050006100
      6B00650074004E00720044004200420061006E00640065006400540061006200
      6C00650056006900650077003100550054002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A00670072006400500072006F006400500061006B0065007400
      4E00720044004200420061006E006400650064005400610062006C0065005600
      690065007700310041004D0033002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004300
      61006C0063004500640069007400500072006F00700065007200740069006500
      7300010001000D000A00670072006400500072006F006400500061006B006500
      74004E00720044004200420061006E006400650064005400610062006C006500
      560069006500770031004E004D0033002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      430061006C0063004500640069007400500072006F0070006500720074006900
      65007300010001000D000A00670072006400500072006F006400500061006B00
      650074004E00720044004200420061006E006400650064005400610062006C00
      6500560069006500770031004E004500540054004F002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      540063007800430061006C0063004500640069007400500072006F0070006500
      72007400690065007300010001000D000A00670072006400500072006F006400
      500061006B00650074004E00720044004200420061006E006400650064005400
      610062006C0065005600690065007700310053007400790063006B002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D0065000100540063007800430061006C006300450064006900740050007200
      6F007000650072007400690065007300010001000D000A006700720064005000
      72006F006400500061006B00650074004E00720044004200420061006E006400
      650064005400610062006C00650056006900650077003100550074006C006100
      73007400610064002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004400610074006500
      4500640069007400500072006F00700065007200740069006500730001000100
      0D000A00670072006400500072006F006400500061006B00650074004E007200
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004C006E00670064002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A0063006200500072006F006400530055004D002E0054006500780074000100
      63006200500072006F006400530055004D00010001000D000A00670072006400
      500072006F006400530055004D0044004200420061006E006400650064005400
      610062006C006500560069006500770031004F00700065007200610074006900
      6F006E002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      500072006F006400530055004D0044004200420061006E006400650064005400
      610062006C006500560069006500770031004100760067004C0065006E006700
      740068002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      500072006F006400530055004D0044004200420061006E006400650064005400
      610062006C006500560069006500770031005300680069006600740054006500
      61006D004E0061006D0065002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A00670072006400500072006F006400530055004D0044004200420061006E00
      6400650064005400610062006C00650056006900650077003100520065006700
      50006F0069006E0074004E0061006D0065002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A00670072006400500072006F006400530055004D0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4D0050005F0053006B006900660074004C00610067002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A00670072006400500072006F006400530055004D00
      44004200420061006E006400650064005400610062006C006500560069006500
      77003100500072006F0064007500630074004E006F002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A00670072006400500072006F006400530055004D00
      44004200420061006E006400650064005400610062006C006500560069006500
      77003100500052004F00440055004B0054002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A00670072006400500072006F006400530055004D0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      500061006B00650074006E0072002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A00670072006400500072006F006400530055004D004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050007200
      65006600690078002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400500072006F006400530055004D0044004200420061006E0064006500
      64005400610062006C00650056006900650077003100410054002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A00670072006400500072006F0064005300
      55004D0044004200420061006E006400650064005400610062006C0065005600
      6900650077003100410042002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A00670072006400500072006F006400530055004D0044004200420061006E00
      6400650064005400610062006C006500560069006500770031004E0054002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A00670072006400500072006F00
      6400530055004D0044004200420061006E006400650064005400610062006C00
      6500560069006500770031004E0042002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A00670072006400500072006F006400530055004D00440042004200
      61006E006400650064005400610062006C006500560069006500770031004E00
      6F006D00440069006D002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      670072006400500072006F006400530055004D0044004200420061006E006400
      650064005400610062006C0065005600690065007700310041006B0074004400
      69006D002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      500072006F006400530055004D0044004200420061006E006400650064005400
      610062006C00650056006900650077003100540053002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A00670072006400500072006F006400530055004D00
      44004200420061006E006400650064005400610062006C006500560069006500
      77003100500043002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400500072006F006400530055004D0044004200420061006E0064006500
      64005400610062006C006500560069006500770031004B0056002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A00670072006400500072006F0064005300
      55004D0044004200420061006E006400650064005400610062006C0065005600
      6900650077003100550054002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A00670072006400500072006F006400530055004D0044004200420061006E00
      6400650064005400610062006C006500560069006500770031004F0077006E00
      650072004E006F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400500072006F006400530055004D0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310053005400590043004B00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640050007200
      6F006400530055004D0044004200420061006E00640065006400540061006200
      6C0065005600690065007700310041004D0033002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A00670072006400500072006F006400530055004D004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004E004D0033002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400500072006F006400530055004D0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310041004D0031002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A00670072006400500072006F006400
      530055004D0044004200420061006E006400650064005400610062006C006500
      560069006500770031004D00460042004D002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A00670072006400500072006F006400530055004D0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      41004D0032002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0063007800
      530070006C006900740074006500720032002E0048006F0074005A006F006E00
      650043006C006100730073004E0061006D00650001005400630078004D006500
      64006900610050006C00610079006500720038005300740079006C0065000100
      01000D000A006C0063005000490050004E0041004D0045002E00500072006F00
      70006500720074006900650073002E004B00650079004600690065006C006400
      4E0061006D006500730001005000490050004E004F00010001000D000A006C00
      63005000490050004E0041004D0045002E00500072006F007000650072007400
      6900650073002E004C006900730074004600690065006C0064004E0061006D00
      6500730001005000490050004E0041004D004500010001000D000A0063006300
      6200410054002E00500072006F0070006500720074006900650073002E004400
      65006C0069006D00690074006500720001003B00010001000D000A0063006300
      6200410054002E00500072006F0070006500720074006900650073002E004500
      6D00700074007900530065006C0065006300740069006F006E00540065007800
      7400010041006C006C006100010001000D000A00630063006200410042002E00
      500072006F0070006500720074006900650073002E00440065006C0069006D00
      690074006500720001003B00010001000D000A00630063006200410042002E00
      500072006F0070006500720074006900650073002E0045006D00700074007900
      530065006C0065006300740069006F006E005400650078007400010041006C00
      6C006100010001000D000A0063006300620041004C002E00500072006F007000
      6500720074006900650073002E00440065006C0069006D006900740065007200
      01003B00010001000D000A0063006300620041004C002E00500072006F007000
      6500720074006900650073002E0045006D00700074007900530065006C006500
      6300740069006F006E005400650078007400010041006C006C00610001000100
      0D000A006300630062005400530032002E00500072006F007000650072007400
      6900650073002E00440065006C0069006D00690074006500720001003B000100
      01000D000A006300630062005400530032002E00500072006F00700065007200
      74006900650073002E0045006D00700074007900530065006C00650063007400
      69006F006E005400650078007400010041006C006C006100010001000D000A00
      6300630062004B00560032002E00500072006F00700065007200740069006500
      73002E00440065006C0069006D00690074006500720001003B00010001000D00
      0A006300630062004B00560032002E00500072006F0070006500720074006900
      650073002E0045006D00700074007900530065006C0065006300740069006F00
      6E005400650078007400010041006C006C006100010001000D000A0063006300
      62005300550032002E00500072006F0070006500720074006900650073002E00
      440065006C0069006D00690074006500720001003B00010001000D000A006300
      630062005300550032002E00500072006F007000650072007400690065007300
      2E0045006D00700074007900530065006C0065006300740069006F006E005400
      650078007400010041006C006C006100010001000D000A006300630062004900
      4D0050002E00500072006F0070006500720074006900650073002E0044006500
      6C0069006D00690074006500720001003B00010001000D000A00630063006200
      49004D0050002E00500072006F0070006500720074006900650073002E004500
      6D00700074007900530065006C0065006300740069006F006E00540065007800
      7400010041006C006C006100010001000D000A00630062004F0077006E006500
      72002E00500072006F0070006500720074006900650073002E00440065006C00
      69006D00690074006500720001003B00010001000D000A00630062004F007700
      6E00650072002E00500072006F0070006500720074006900650073002E004500
      6D00700074007900530065006C0065006300740069006F006E00540065007800
      740001004E006F006E0065002000730065006C00650063007400650064000100
      01000D000A00630063005600610072007500670072007500700070002E005000
      72006F0070006500720074006900650073002E00440065006C0069006D006900
      74006500720001003B00010001000D000A006300630056006100720075006700
      72007500700070002E00500072006F0070006500720074006900650073002E00
      45006D00700074007900530065006C0065006300740069006F006E0054006500
      78007400010041006C006C006100010001000D000A00630063004D0061007400
      700075006E006B0074002E00500072006F007000650072007400690065007300
      2E00440065006C0069006D00690074006500720001003B00010001000D000A00
      630063004D0061007400700075006E006B0074002E00500072006F0070006500
      720074006900650073002E0045006D00700074007900530065006C0065006300
      740069006F006E005400650078007400010041006C006C006100010001000D00
      0A006300630062004E0054002E00500072006F00700065007200740069006500
      73002E00440065006C0069006D00690074006500720001003B00010001000D00
      0A006300630062004E0054002E00500072006F00700065007200740069006500
      73002E0045006D00700074007900530065006C0065006300740069006F006E00
      5400650078007400010041006C006C006100010001000D000A00630063006200
      4E0042002E00500072006F0070006500720074006900650073002E0044006500
      6C0069006D00690074006500720001003B00010001000D000A00630063006200
      4E0042002E00500072006F0070006500720074006900650073002E0045006D00
      700074007900530065006C0065006300740069006F006E005400650078007400
      010041006C006C006100010001000D000A006300630053006B00690066007400
      4C00610067002E00500072006F0070006500720074006900650073002E004400
      65006C0069006D00690074006500720001003B00010001000D000A0063006300
      53006B006900660074004C00610067002E00500072006F007000650072007400
      6900650073002E0045006D00700074007900530065006C006500630074006900
      6F006E005400650078007400010041006C006C006100010001000D000A006300
      6200500061005200650067002E00500072006F00700065007200740069006500
      73002E0044006900730070006C006100790043006800650063006B0065006400
      01005400720075006500010001000D000A006300620050006100520065006700
      2E00500072006F0070006500720074006900650073002E004400690073007000
      6C006100790055006E0063006800650063006B00650064000100460061006C00
      73006500010001000D000A0063006200410076007200650067002E0050007200
      6F0070006500720074006900650073002E0044006900730070006C0061007900
      43006800650063006B006500640001005400720075006500010001000D000A00
      63006200410076007200650067002E00500072006F0070006500720074006900
      650073002E0044006900730070006C006100790055006E006300680065006300
      6B00650064000100460061006C0073006500010001000D000A00630063004C00
      61006E0064002E00500072006F0070006500720074006900650073002E004400
      65006C0069006D00690074006500720001003B00010001000D000A0063006300
      4C0061006E0064002E00500072006F0070006500720074006900650073002E00
      45006D00700074007900530065006C0065006300740069006F006E0054006500
      78007400010041006C006C006100010001000D000A00630063004B0075006E00
      64002E00500072006F0070006500720074006900650073002E00440065006C00
      69006D00690074006500720001003B00010001000D000A00630063004B007500
      6E0064002E00500072006F0070006500720074006900650073002E0045006D00
      700074007900530065006C0065006300740069006F006E005400650078007400
      010041006C006C006100010001000D000A0063006200450078006B006C007500
      6400650072006100450067006E0061004C00650076006500720061006E007300
      650072002E00500072006F0070006500720074006900650073002E0044006900
      730070006C006100790043006800650063006B00650064000100540072007500
      6500010001000D000A0063006200450078006B006C0075006400650072006100
      450067006E0061004C00650076006500720061006E007300650072002E005000
      72006F0070006500720074006900650073002E0044006900730070006C006100
      790055006E0063006800650063006B00650064000100460061006C0073006500
      010001000D000A006300620049006E006B00540069006D00650049006E004400
      610074006500460069006C007400650072002E00500072006F00700065007200
      74006900650073002E0044006900730070006C00610079004300680065006300
      6B006500640001005400720075006500010001000D000A006300620049006E00
      6B00540069006D00650049006E004400610074006500460069006C0074006500
      72002E00500072006F0070006500720074006900650073002E00440069007300
      70006C006100790055006E0063006800650063006B0065006400010046006100
      6C0073006500010001000D000A00640078004200610072004D0061006E006100
      670065007200310042006100720031002E004F006C0064004E0061006D006500
      010043007500730074006F006D0020003100010001000D000A00640078004200
      610072004D0061006E006100670065007200310042006100720032002E004F00
      6C0064004E0061006D0065000100500061006B00650074006E00720001000100
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      6100720033002E004F006C0064004E0061006D006500010054006F0072006B00
      5300610074007300010001000D000A00640078004200610072004D0061006E00
      6100670065007200310042006100720034002E004F006C0064004E0061006D00
      65000100500061006B006500740054006100620065006C006C004D0065006E00
      7900010001000D000A00640078004200610072004D0061006E00610067006500
      7200310042006100720035002E004F006C0064004E0061006D00650001005400
      6F0072006B0073006100740073003200010001000D000A006400780043006F00
      6D0070006F006E0065006E0074005000720069006E0074006500720031004C00
      69006E006B0031002E00440065007300690067006E0065007200430061007000
      740069006F006E00010046006F0072006D006100740020005200650070006F00
      72007400010001000D000A006D0074005500730065007200500072006F007000
      2E00560065007200730069006F006E00010037002E00360033002E0030003000
      20005300740061006E0064006100720064002000450064006900740069006F00
      6E00010001000D000A006300640073005F005600650072006B0043006C006900
      65006E0074004E006F002E004F0072006900670069006E00010043006C006900
      65006E0074004E006F00010001000D000A006300640073005F00560065007200
      6B0043006C00690065006E0074004E0061006D0065002E004F00720069006700
      69006E00010043006C00690065006E0074004E0061006D006500010001000D00
      0A006300640073005F005600650072006B005300650061007200630068004E00
      61006D0065002E004F0072006900670069006E00010053006500610072006300
      68004E0061006D006500010001000D000A006300640073005F00560065007200
      6B00530061006C006500730052006500670069006F006E004E006F002E004F00
      72006900670069006E000100530061006C006500730052006500670069006F00
      6E004E006F00010001000D000A006300640073005F005600650072006B005000
      6B0074004E0072004C00650076004B006F0064002E004F007200690067006900
      6E00010050006B0074004E0072004C00650076004B006F006400010001000D00
      0A00730071005F005500730065007200500072006F00660069006C0065005500
      730065007200490044002E004F0072006900670069006E000100550073006500
      720049004400010001000D000A00730071005F00550073006500720050007200
      6F00660069006C00650046006F0072006D002E004F0072006900670069006E00
      010046006F0072006D00010001000D000A00730071005F005500730065007200
      500072006F00660069006C0065004E0061006D0065002E004F00720069006700
      69006E0001004E0061006D006500010001000D000A00730071005F0055007300
      65007200500072006F00660069006C00650049006E007000750074004F007000
      740069006F006E002E004F0072006900670069006E00010049006E0070007500
      74004F007000740069006F006E00010001000D000A00730071005F0055007300
      65007200500072006F00660069006C0065005300740061007200740050006500
      720069006F0064002E004F0072006900670069006E0001005300740061007200
      740050006500720069006F006400010001000D000A00730071005F0055007300
      65007200500072006F00660069006C00650045006E0064005000650072006900
      6F0064002E004F0072006900670069006E00010045006E006400500065007200
      69006F006400010001000D000A00660072007800440042005F00530054005F00
      440065006C005F0053007400610074002E0055007300650072004E0061006D00
      65000100660072007800440042005F00530054005F00440065006C005F005300
      740061007400010001000D000A006600720078005200650070006F0072007400
      32002E0049006E006900460069006C00650001005C0053006F00660074007700
      6100720065005C00460061007300740020005200650070006F00720074007300
      010001000D000A006600720078005200650070006F007200740032002E005300
      630072006900700074004C0061006E0067007500610067006500010050006100
      7300630061006C00530063007200690070007400010001000D000A0066007200
      78005200650070006F007200740032002E00560065007200730069006F006E00
      010034002E00310035002E0031003300010001000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A00670072006400500072006F006400500061006B00650074004E00
      720044004200420061006E006400650064005400610062006C00650056006900
      6500770031002E00420061006E00640073005B0030005D002E00430061007000
      740069006F006E0001004C00450056004500520041004E005300010001000D00
      0A00670072006400500072006F006400500061006B00650074004E0072004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31002E00420061006E00640073005B0031005D002E0043006100700074006900
      6F006E000100500052004F00440055004B005400010001000D000A0067007200
      6400500072006F006400500061006B00650074004E0072004400420042006100
      6E006400650064005400610062006C006500560069006500770031002E004200
      61006E00640073005B0032005D002E00430061007000740069006F006E000100
      4B00560041004E0054004900540045005400010001000D000A00670072006400
      500072006F006400530055004D0044004200420061006E006400650064005400
      610062006C006500560069006500770031002E00420061006E00640073005B00
      30005D002E00430061007000740069006F006E000100500052004F0044005500
      4B00540049004F004E00010001000D000A00670072006400500072006F006400
      530055004D0044004200420061006E006400650064005400610062006C006500
      560069006500770031002E00420061006E00640073005B0031005D002E004300
      61007000740069006F006E000100500052004F00440055004B00540001000100
      0D000A00670072006400500072006F006400530055004D004400420042006100
      6E006400650064005400610062006C006500560069006500770031002E004200
      61006E00640073005B0032005D002E00430061007000740069006F006E000100
      4B00560041004E0054004900540045005400010001000D000A006C0063005000
      490050004E0041004D0045002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E0001005000490050004E0041004D004500
      010001000D000A0073007400430068006100720053006500740073005F005500
      6E00690063006F00640065000D000A0054006600440065006C00690076006500
      720079005200650070006F00720074000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A006400780042006100
      72004D0061006E00610067006500720031000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      6100720032000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00640078004200610072004D0061006E006100
      670065007200310042006100720033000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003400010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      720035000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B00310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00630078005300740079006C0065003100010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0063007800
      5300740079006C00650032000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00630078005300740079006C00
      650033000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00630078005300740079006C006500340001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00630078005300740079006C00650041006B0074006900760065005000
      6B0067000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00630078005300740079006C00650049004E004100
      6B00740069007600650050006B0067000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A006300780053007400
      79006C0065004E006F0072006D0061006C0041006B0074006900760065005000
      6B0067000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A0070006D0050006B0067004E006F00730001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00}
  end
end
