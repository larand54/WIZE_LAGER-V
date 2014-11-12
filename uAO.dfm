object fAO: TfAO
  Left = 227
  Top = 107
  Align = alClient
  BorderStyle = bsNone
  Caption = 'fAO'
  ClientHeight = 625
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1012
    Height = 84
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel9: TPanel
      Left = 0
      Top = 28
      Width = 1012
      Height = 56
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object Panel4: TPanel
        Left = 570
        Top = 0
        Width = 377
        Height = 56
        Align = alRight
        TabOrder = 0
        object dxBarDockControl1: TdxBarDockControl
          Left = 1
          Top = 1
          Width = 375
          Height = 48
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 570
        Height = 56
        Align = alClient
        TabOrder = 1
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 568
          Height = 54
          Align = alClient
          TabOrder = 0
          object cbShowAll: TcxCheckBox
            Left = 8
            Top = 30
            Caption = 'Alla veckor'
            TabOrder = 0
            OnClick = cbShowAllClick
            Width = 97
          end
          object seWeekNo: TcxSpinEdit
            Left = 44
            Top = 4
            ParentFont = False
            Properties.OnChange = seWeekNoPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Value = 42
            Width = 57
          end
          object cxLabel2: TcxLabel
            Left = 5
            Top = 11
            Caption = 'Vecka:'
          end
          object icStatus: TcxDBImageComboBox
            Left = 168
            Top = 3
            DataBinding.DataField = 'Status'
            DataBinding.DataSource = dsFilter
            Properties.Images = dmsConnector.ilStatus
            Properties.Items = <
              item
                Description = 'ALLA'
                ImageIndex = 7
                Value = -1
              end
              item
                Description = 'Prelimin'#228'r'
                ImageIndex = 3
                Value = 0
              end
              item
                Description = 'Aktiv'
                ImageIndex = 1
                Value = 1
              end
              item
                Description = 'Vilande'
                ImageIndex = 4
                Value = 2
              end
              item
                Description = 'Avslutad'
                ImageIndex = 2
                Value = 3
              end>
            TabOrder = 3
            Width = 97
          end
          object cxLabel3: TcxLabel
            Left = 131
            Top = 10
            Caption = 'Status:'
          end
          object cxLabel1: TcxLabel
            Left = 109
            Top = 32
            Caption = 'Anv'#228'ndare:'
          end
          object lcUser: TcxDBLookupComboBox
            Left = 168
            Top = 27
            DataBinding.DataField = 'Anv'#228'ndare'
            DataBinding.DataSource = dsFilter
            Properties.ImmediatePost = True
            Properties.ListColumns = <>
            TabOrder = 6
            Width = 97
          end
          object cbShowMainProduct: TcxDBCheckBox
            Left = 346
            Top = 6
            Caption = 'Huvudprodukt'
            DataBinding.DataField = 'ShowMainProdOnly'
            DataBinding.DataSource = dsFilter
            Properties.ImmediatePost = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            TabOrder = 7
            Width = 95
          end
          object lcProducer: TcxDBLookupComboBox
            Left = 432
            Top = 19
            Properties.ListColumns = <>
            TabOrder = 8
            Visible = False
            Width = 105
          end
          object cxLabel4: TcxLabel
            Left = 365
            Top = 24
            Caption = 'Producent:'
            Visible = False
          end
          object lcRegPoint: TcxDBLookupComboBox
            Left = 432
            Top = 27
            Properties.ListColumns = <>
            TabOrder = 10
            Visible = False
            Width = 105
          end
          object cxLabel5: TcxLabel
            Left = 377
            Top = 32
            Caption = 'M'#228'tpunkt:'
            Visible = False
          end
          object BitBtn1: TBitBtn
            Left = 272
            Top = 2
            Width = 73
            Height = 49
            Action = acRefresh
            Caption = '&Uppdatera'
            TabOrder = 12
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00AD7B7B00B5848400B5848400B5848400B5848400B5848400B584
              8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
              8400B5848400B5848400B5848400B5848400FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00AD7B7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6
              AD00F7D6A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
              9400EFCE9400EFCE9400EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00AD7B7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6
              A500E7D6A500EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
              9400EFCE9400EFCE9400EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00AD7B7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C
              0000E7D6A5006BB54A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE
              9400EFCE9400EFCE9400EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00AD7B7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C
              0000109C1000009C0000009C0000009C0000009C0000009C000094BD5A00E7CE
              9400EFCE9400EFCE9400EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00AD7B7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C
              0000009C0000009C0000009C0000009C0000009C0000009C0000009C0000C6C6
              7B00EFCE9400EFCE9400EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00AD847B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C
              0000009C0000009C000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A5
              2900EFCE9400EFCE9400EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00AD847B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C
              0000009C0000009C000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C
              0800EFCE9C00EFCE9400EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00B58C7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C
              0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCE
              A5007BCE7B00EFCE9C00EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00B58C8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7
              CE00E7DEC600E7DEC600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6
              AD007BCE7B00EFCE9C00EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00BD8C8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EF
              DE00F7E7D600EFE7C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6
              A500EFD6AD00EFCEA500EFCE9C00B58C7B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00BD948400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EF
              E700F7EFDE00EFE7CE00009C0000009C0000009C0000009C0000009C0000E7D6
              AD00EFD6AD00EFD6AD00EFCEA500B58C7B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00C6948400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6
              A500EFEFD600EFE7CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6
              AD00F7D6B500EFD6AD00EFCEA500B58C7B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00C69C8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C
              000073C66B00CEDEB500CEDEB50039AD3900009C0000009C0000009C0000EFDE
              B500F7DEBD00F7D6B500EFD6AD00B58C7B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00C69C8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C
              0000009C0000009C0000009C0000009C0000009C0000009C0000009C0000EFDE
              BD00F7DEBD00EFDEBD00DEC6A5009C847B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00CE9C8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE
              9C00009C0000009C0000009C0000009C0000009C0000109C1000009C0000E7DE
              C600EFDEBD00CEBDAD00B5AD94009C847B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00CEA58C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FF
              F700CEEFCE0073C66B0039AD390039AD390073C66300EFE7CE00009C0000C6D6
              AD00CEBDAD00BDB5A500B5AD9C009C847B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00D6A58C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFF7F700FFF7EF00FFF7E700E7DEC600AD8473008484
              5A00AD7B7300AD7B7300AD7B7300AD847300FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00DEAD8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B5
              8400E7AD6B00EFA55200EFA53900B5848400FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00DEAD8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC6
              8C00F7BD6B00FFB55200B5848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00DEAD8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC6
              8C00F7BD6B00B5848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00DEAD8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC6
              8C00B5848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
              8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400B5847300B584
              8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Layout = blGlyphTop
          end
        end
      end
      object Panel6: TPanel
        Left = 947
        Top = 0
        Width = 65
        Height = 56
        Align = alRight
        Constraints.MinWidth = 65
        TabOrder = 2
        object dxBarDockControl2: TdxBarDockControl
          Left = 1
          Top = 1
          Width = 63
          Height = 48
          Align = dalTop
          BarManager = dxBarManager1
          SunkenBorder = False
          UseOwnSunkenBorder = True
        end
      end
    end
    object Panel10: TPanel
      Left = 0
      Top = 0
      Width = 1012
      Height = 28
      Align = alClient
      TabOrder = 1
      object dxBarDockControl4: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 1010
        Height = 26
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 84
    Width = 1012
    Height = 327
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel7: TPanel
      Left = 0
      Top = 0
      Width = 1012
      Height = 24
      Align = alTop
      Caption = 'Panel7'
      TabOrder = 0
      object dxBarDockControl3: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 1010
        Height = 26
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object grdAORow: TcxGrid
      Left = 0
      Top = 24
      Width = 1012
      Height = 303
      Align = alClient
      TabOrder = 1
      object grdAORowDBBandedTableView1: TcxGridDBBandedTableView
        PopupMenu = pmAORow
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dmcOrder.ds_AORow
        DataController.KeyFieldNames = 'RunNo;RowNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        Styles.Content = cxStyleSmallFont
        Bands = <
          item
            Caption = 'K'#214'RNING'
            FixedKind = fkLeft
            Options.HoldOwnColumnsOnly = True
            Width = 401
          end
          item
            Caption = 'PRODUKT'
            Options.HoldOwnColumnsOnly = True
            Width = 400
          end
          item
            Caption = 'PRODUCENT'
            Options.HoldOwnColumnsOnly = True
            Width = 113
          end
          item
            Caption = 'VOLYM'
            Width = 94
          end>
        object grdAORowDBBandedTableView1RunNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RunNo'
          Options.CellMerging = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 32
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1RowNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RowNo'
          Options.Filtering = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1RunOrderNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RunOrderNo'
          Options.Filtering = False
          Width = 39
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1Status: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RunStatus'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = dmsConnector.ilStatus
          Properties.Items = <
            item
              ImageIndex = 3
              Value = 0
            end
            item
              ImageIndex = 1
              Value = 1
            end
            item
              ImageIndex = 4
              Value = 2
            end
            item
              ImageIndex = 2
              Value = 3
            end>
          Options.Filtering = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1Start: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Start'
          Width = 54
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1Vecka: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Vecka'
          Options.Filtering = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1Krtid: TcxGridDBBandedColumn
          DataBinding.FieldName = 'K'#246'rtid'
          Options.Filtering = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1Stopptid: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Stopptid'
          Options.Filtering = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1MainProduct: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MainProduct'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.Filtering = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1NoOfUnits: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NoOfUnits'
          OnGetDataText = grdAORowDBBandedTableView1NoOfUnitsGetDataText
          Options.Filtering = False
          Width = 59
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1VolUnitNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VolUnitNo'
          Visible = False
          Width = 36
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1Column1: TcxGridDBBandedColumn
          Caption = 'Producerat'
          Options.Filtering = False
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1PkgCodePPNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PkgCodePPNo'
          Visible = False
          Width = 36
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1AT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AT'
          Width = 39
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1AB: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AB'
          Width = 42
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1GradeName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'GradeName'
          Width = 61
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1SpeciesName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SpeciesName'
          Width = 58
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1SurfacingName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SurfacingName'
          Width = 70
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1BarCodeID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BarCodeID'
          Width = 67
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1GradeStamp: TcxGridDBBandedColumn
          DataBinding.FieldName = 'GradeStamp'
          Width = 83
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1LANGD: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LANGD'
          Width = 77
          Position.BandIndex = 1
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1PcsPerPkg: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PcsPerPkg'
          Width = 51
          Position.BandIndex = 1
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1Mtpunkt: TcxGridDBBandedColumn
          DataBinding.FieldName = 'M'#228'tpunkt'
          Width = 70
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdAORowDBBandedTableView1Producent: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Producent'
          Width = 72
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object grdAORowLevel1: TcxGridLevel
        GridView = grdAORowDBBandedTableView1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 419
    Width = 1012
    Height = 206
    Align = alBottom
    Caption = 'Panel3'
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 1010
      Height = 204
      ActivePage = tsRawMtrl
      Align = alClient
      Style = 9
      TabOrder = 0
      TabSlants.Kind = skCutCorner
      ClientRectBottom = 204
      ClientRectRight = 1010
      ClientRectTop = 20
      object tsLO: TcxTabSheet
        Caption = 'LO'
        ImageIndex = 0
      end
      object tsRawMtrl: TcxTabSheet
        Caption = 'R'#229'material/avregistrera paket'
        ImageIndex = 1
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 1010
          Height = 177
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel14: TPanel
            Left = 0
            Top = 0
            Width = 512
            Height = 177
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'Panel14'
            TabOrder = 0
            object grdAORaw: TcxGrid
              Left = 0
              Top = 24
              Width = 512
              Height = 153
              Align = alClient
              TabOrder = 0
              object grdAORawDBBandedTableView1: TcxGridDBBandedTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dmcOrder.ds_AORaw
                DataController.KeyFieldNames = 'AORmNo;RunNo'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                Bands = <
                  item
                    Caption = 'PRODUKT'
                    Width = 460
                  end
                  item
                    Caption = 'KVANTITET'
                    Width = 131
                  end>
                object grdAORawDBBandedTableView1RunNo: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'RunNo'
                  Visible = False
                  Options.Filtering = False
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1AORmNo: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'AORmNo'
                  Visible = False
                  Options.Filtering = False
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1RawOrderNo: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'RawOrderNo'
                  Options.Filtering = False
                  Width = 29
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1PkgCodePPNo: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'PkgCodePPNo'
                  Visible = False
                  Options.Filtering = False
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1DateCreated: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'DateCreated'
                  Visible = False
                  Options.Filtering = False
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1DateModified: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'DateModified'
                  Visible = False
                  Options.Filtering = False
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1ModifiedUser: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'ModifiedUser'
                  Visible = False
                  Options.Filtering = False
                  Position.BandIndex = 0
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1AT: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'AT'
                  Options.Filtering = False
                  Width = 28
                  Position.BandIndex = 0
                  Position.ColIndex = 7
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1AB: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'AB'
                  Options.Filtering = False
                  Width = 29
                  Position.BandIndex = 0
                  Position.ColIndex = 8
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1GradeName: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'GradeName'
                  Options.Filtering = False
                  Width = 55
                  Position.BandIndex = 0
                  Position.ColIndex = 9
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1SpeciesName: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'SpeciesName'
                  Options.Filtering = False
                  Width = 67
                  Position.BandIndex = 0
                  Position.ColIndex = 10
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1SurfacingName: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'SurfacingName'
                  Options.Filtering = False
                  Width = 76
                  Position.BandIndex = 0
                  Position.ColIndex = 11
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1BarcodeID: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'BarcodeID'
                  Options.Filtering = False
                  Width = 72
                  Position.BandIndex = 0
                  Position.ColIndex = 12
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1GradeStamp: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'GradeStamp'
                  Options.Filtering = False
                  Width = 61
                  Position.BandIndex = 0
                  Position.ColIndex = 13
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1Langd: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Langd'
                  Options.Filtering = False
                  Width = 43
                  Position.BandIndex = 0
                  Position.ColIndex = 14
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1PcsPerPkg: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'PcsPerPkg'
                  Options.Filtering = False
                  Width = 33
                  Position.BandIndex = 0
                  Position.ColIndex = 15
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1NoOfUnits: TcxGridDBBandedColumn
                  Caption = 'Plan'
                  DataBinding.FieldName = 'NoOfUnits'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,###,###.00'
                  Options.Filtering = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1VolUnitNo: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'VolUnitNo'
                  Visible = False
                  Options.Filtering = False
                  Position.BandIndex = 1
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1VolEnhet: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'VolEnhet'
                  Options.Filtering = False
                  Width = 39
                  Position.BandIndex = 1
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object grdAORawDBBandedTableView1Column1: TcxGridDBBandedColumn
                  Caption = 'F'#246'rbrukad'
                  Options.Filtering = False
                  Width = 52
                  Position.BandIndex = 1
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
              end
              object grdAORawLevel1: TcxGridLevel
                GridView = grdAORawDBBandedTableView1
              end
            end
            object Panel15: TPanel
              Left = 0
              Top = 0
              Width = 512
              Height = 24
              Align = alTop
              TabOrder = 1
              object cxLabel6: TcxLabel
                Left = 8
                Top = 4
                Caption = 'K'#246'rnr:'
              end
              object ldbRunNo: TcxDBLabel
                Left = 40
                Top = 4
                DataBinding.DataField = 'RunNo'
                DataBinding.DataSource = dmcOrder.ds_AORow
                ParentColor = False
                Style.Color = clSilver
                Height = 18
                Width = 49
              end
            end
          end
          object Panel16: TPanel
            Left = 512
            Top = 0
            Width = 498
            Height = 177
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Panel17: TPanel
              Left = 0
              Top = 0
              Width = 498
              Height = 24
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel18: TPanel
                Left = 0
                Top = 0
                Width = 498
                Height = 24
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object dxBarDockControl6: TdxBarDockControl
                  Left = 0
                  Top = 0
                  Width = 498
                  Height = 26
                  Align = dalTop
                  BarManager = dxBarManager1
                end
              end
            end
            object grdAvRegPkt: TcxGrid
              Left = 0
              Top = 24
              Width = 498
              Height = 153
              Align = alClient
              TabOrder = 1
              object grdAvRegPktDBTableView1: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.GroupByBox = False
                OptionsView.NewItemRow = True
              end
              object grdAvRegPktLevel1: TcxGridLevel
                GridView = grdAvRegPktDBTableView1
              end
            end
          end
        end
      end
      object tsOtherAORows: TcxTabSheet
        Caption = 'K'#246'rrader/p'#229'registrera paket'
        ImageIndex = 2
        object Panel19: TPanel
          Left = 0
          Top = 0
          Width = 1010
          Height = 177
          Align = alTop
          TabOrder = 0
          object Panel20: TPanel
            Left = 1
            Top = 1
            Width = 539
            Height = 175
            Align = alLeft
            TabOrder = 0
            object Panel21: TPanel
              Left = 1
              Top = 1
              Width = 537
              Height = 24
              Align = alTop
              TabOrder = 0
              object cxDBLabel1: TcxDBLabel
                Left = 40
                Top = 4
                DataBinding.DataField = 'RunNo'
                DataBinding.DataSource = dmcOrder.ds_AORow
                ParentColor = False
                Style.Color = clSilver
                Height = 18
                Width = 49
              end
              object cxLabel7: TcxLabel
                Left = 8
                Top = 4
                Caption = 'K'#246'rnr:'
              end
            end
            object grdALLAORows: TcxGrid
              Left = 1
              Top = 25
              Width = 537
              Height = 149
              Align = alClient
              TabOrder = 1
              object cxGridDBBandedTableViewALLAORows: TcxGridDBBandedTableView
                PopupMenu = pmAORow
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dmcOrder.ds_AORow
                DataController.KeyFieldNames = 'RunNo;RowNo'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                Styles.Content = cxStyleSmallFont
                Bands = <
                  item
                    Caption = 'K'#214'RNING'
                    FixedKind = fkLeft
                    Options.HoldOwnColumnsOnly = True
                    Width = 29
                  end
                  item
                    Caption = 'PRODUKT'
                    Options.HoldOwnColumnsOnly = True
                    Width = 387
                  end
                  item
                    Caption = 'PRODUCENT'
                    Options.HoldOwnColumnsOnly = True
                    Visible = False
                    Width = 61
                  end
                  item
                    Caption = 'VOLYM'
                    Width = 90
                  end>
                object cxGridDBBandedColumn1: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'RunNo'
                  Visible = False
                  Options.Filtering = False
                  Options.CellMerging = True
                  Width = 32
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn2: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'RowNo'
                  Visible = False
                  Options.Filtering = False
                  Width = 20
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn3: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'RunOrderNo'
                  Options.Filtering = False
                  Width = 39
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn4: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'RunStatus'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = dmsConnector.ilStatus
                  Properties.Items = <
                    item
                      ImageIndex = 4
                      Value = 0
                    end
                    item
                      ImageIndex = 1
                      Value = 1
                    end
                    item
                      ImageIndex = 2
                      Value = 2
                    end>
                  Visible = False
                  Options.Filtering = False
                  Width = 20
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn5: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Start'
                  Visible = False
                  Options.Filtering = False
                  Width = 54
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn6: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Vecka'
                  Visible = False
                  Options.Filtering = False
                  Width = 20
                  Position.BandIndex = 0
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn7: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'K'#246'rtid'
                  Visible = False
                  Options.Filtering = False
                  Width = 20
                  Position.BandIndex = 0
                  Position.ColIndex = 7
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn8: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Stopptid'
                  Visible = False
                  Options.Filtering = False
                  Width = 20
                  Position.BandIndex = 0
                  Position.ColIndex = 8
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn9: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'MainProduct'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = 1
                  Properties.ValueUnchecked = 0
                  Options.Filtering = False
                  Width = 20
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn10: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'NoOfUnits'
                  OnGetDataText = grdAORowDBBandedTableView1NoOfUnitsGetDataText
                  Options.Filtering = False
                  Width = 59
                  Position.BandIndex = 3
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn11: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'VolUnitNo'
                  Visible = False
                  Options.Filtering = False
                  Width = 36
                  Position.BandIndex = 3
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn12: TcxGridDBBandedColumn
                  Caption = 'Producerat'
                  Options.Filtering = False
                  Position.BandIndex = 3
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn13: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'PkgCodePPNo'
                  Visible = False
                  Options.Filtering = False
                  Width = 36
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn14: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'AT'
                  Options.Filtering = False
                  Width = 28
                  Position.BandIndex = 1
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn15: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'AB'
                  Options.Filtering = False
                  Width = 29
                  Position.BandIndex = 1
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn16: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'GradeName'
                  Options.Filtering = False
                  Width = 43
                  Position.BandIndex = 1
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn17: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'SpeciesName'
                  Options.Filtering = False
                  Width = 41
                  Position.BandIndex = 1
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn18: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'SurfacingName'
                  Options.Filtering = False
                  Width = 50
                  Position.BandIndex = 1
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn19: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'BarCodeID'
                  Options.Filtering = False
                  Width = 43
                  Position.BandIndex = 1
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn20: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'GradeStamp'
                  Options.Filtering = False
                  Width = 56
                  Position.BandIndex = 1
                  Position.ColIndex = 7
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn21: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'LANGD'
                  Options.Filtering = False
                  Width = 58
                  Position.BandIndex = 1
                  Position.ColIndex = 8
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn22: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'PcsPerPkg'
                  Options.Filtering = False
                  Width = 39
                  Position.BandIndex = 1
                  Position.ColIndex = 9
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn23: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'M'#228'tpunkt'
                  Visible = False
                  Options.Filtering = False
                  Width = 70
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn24: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Producent'
                  Visible = False
                  Options.Filtering = False
                  Width = 72
                  Position.BandIndex = 2
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
              end
              object cxGridLevelALLAORows: TcxGridLevel
                GridView = cxGridDBBandedTableViewALLAORows
              end
            end
          end
          object Panel22: TPanel
            Left = 540
            Top = 1
            Width = 469
            Height = 175
            Align = alClient
            TabOrder = 1
            object Panel23: TPanel
              Left = 1
              Top = 1
              Width = 467
              Height = 24
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel24: TPanel
                Left = 0
                Top = 0
                Width = 467
                Height = 24
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object dxBarDockControl7: TdxBarDockControl
                  Left = 0
                  Top = 0
                  Width = 467
                  Height = 26
                  Align = dalTop
                  BarManager = dxBarManager1
                end
              end
            end
            object grdPaRegPkt: TcxGrid
              Left = 1
              Top = 25
              Width = 467
              Height = 149
              Align = alClient
              TabOrder = 1
              object cxGridDBTableViewPaRegPkt: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.GroupByBox = False
                OptionsView.NewItemRow = True
              end
              object cxGridLevelPaRegPkt: TcxGridLevel
                GridView = cxGridDBTableViewPaRegPkt
              end
            end
          end
        end
      end
      object tsProdInstructions: TcxTabSheet
        Caption = 'Produktionsinstruktion'
        ImageIndex = 3
        object PanelProdInstru: TPanel
          Left = 0
          Top = 25
          Width = 1010
          Height = 159
          Align = alClient
          TabOrder = 0
          DesignSize = (
            1010
            159)
          object Label28: TLabel
            Left = 8
            Top = 24
            Width = 32
            Height = 13
            Caption = 'FOHC:'
          end
          object Label29: TLabel
            Left = 8
            Top = 48
            Width = 114
            Height = 13
            Caption = 'BUNTSTORLEK (BXH):'
          end
          object Label30: TLabel
            Left = 8
            Top = 72
            Width = 73
            Height = 13
            Caption = 'STYCK/BUNT:'
          end
          object Label31: TLabel
            Left = 8
            Top = 104
            Width = 119
            Height = 13
            Caption = 'PAKETSTORLEK (BXH):'
          end
          object Label32: TLabel
            Left = 8
            Top = 125
            Width = 76
            Height = 13
            Caption = 'ANTALSTR'#214'N:'
          end
          object Label34: TLabel
            Left = 249
            Top = 24
            Width = 71
            Height = 13
            Caption = 'ANTAL BAND:'
          end
          object Label35: TLabel
            Left = 249
            Top = 48
            Width = 72
            Height = 13
            Caption = 'H'#214'RNSKYDD:'
          end
          object Label38: TLabel
            Left = 249
            Top = 90
            Width = 53
            Height = 13
            Caption = 'EXTRA ID:'
          end
          object Label39: TLabel
            Left = 249
            Top = 113
            Width = 58
            Height = 13
            Caption = 'T'#196'CKNING:'
          end
          object Label40: TLabel
            Left = 249
            Top = 135
            Width = 68
            Height = 13
            Caption = 'IMPREGREG:'
          end
          object Label41: TLabel
            Left = 712
            Top = 7
            Width = 57
            Height = 13
            Caption = 'NOTERING'
          end
          object Label42: TLabel
            Left = 539
            Top = 122
            Width = 82
            Height = 13
            Caption = 'PET TOLERANS'
          end
          object Label43: TLabel
            Left = 176
            Top = 48
            Width = 17
            Height = 13
            Caption = '  x  '
          end
          object Label44: TLabel
            Left = 176
            Top = 104
            Width = 17
            Height = 13
            Caption = '  x  '
          end
          object Label45: TLabel
            Left = 480
            Top = 15
            Width = 58
            Height = 13
            Caption = 'PAKETSTL:'
          end
          object Label46: TLabel
            Left = 480
            Top = 39
            Width = 59
            Height = 13
            Caption = 'PAKETTYP:'
          end
          object ePet: TdxDBCheckEdit
            Left = 539
            Top = 54
            Width = 49
            TabOrder = 16
            Caption = 'PET'
            DataField = 'PET'
            DataSource = dm_ProdInstru.ds_ProdInstruct
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object eStressGrade: TdxDBCheckEdit
            Left = 539
            Top = 70
            Width = 110
            TabOrder = 17
            Caption = 'STRESS GRADE'
            DataField = 'StressGrade'
            DataSource = dm_ProdInstru.ds_ProdInstruct
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object eFingerJoint: TdxDBCheckEdit
            Left = 539
            Top = 86
            Width = 121
            TabOrder = 18
            Caption = 'FINGERSKARV'
            DataField = 'FingerJoint'
            DataSource = dm_ProdInstru.ds_ProdInstruct
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object ePkgCut: TdxDBCheckEdit
            Left = 539
            Top = 102
            Width = 89
            TabOrder = 19
            Caption = 'SV'#196'RDKAP'
            DataField = 'PackageCut'
            DataSource = dm_ProdInstru.ds_ProdInstruct
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object eMiniBundle: TdxDBCheckEdit
            Left = 128
            Top = 16
            Width = 121
            TabOrder = 1
            Caption = 'BUNTAT'
            DataField = 'MiniBundle'
            DataSource = dm_ProdInstru.ds_ProdInstruct
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object eFohc: TcxDBTextEdit
            Left = 48
            Top = 16
            DataBinding.DataField = 'FOHCpercent'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            TabOrder = 0
            Width = 49
          end
          object seMiniBundleWidth: TcxDBSpinEdit
            Left = 128
            Top = 40
            DataBinding.DataField = 'MiniBundleWidth'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            TabOrder = 2
            Width = 49
          end
          object seMiniBundleHeight: TcxDBSpinEdit
            Left = 192
            Top = 40
            DataBinding.DataField = 'MiniBundleHeight'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            TabOrder = 3
            Width = 49
          end
          object sePiecesPerMiniBundle: TcxDBSpinEdit
            Left = 128
            Top = 64
            DataBinding.DataField = 'PiecesPerMiniBundle'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            TabOrder = 4
            Width = 49
          end
          object sePackageWidth: TcxDBSpinEdit
            Left = 128
            Top = 96
            DataBinding.DataField = 'PackageWidth'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            TabOrder = 5
            Width = 49
          end
          object sePackageHeight: TcxDBSpinEdit
            Left = 192
            Top = 96
            DataBinding.DataField = 'PackageHeight'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            TabOrder = 6
            Width = 49
          end
          object seNoOfStraps: TcxDBSpinEdit
            Left = 128
            Top = 120
            DataBinding.DataField = 'MinNoOfSticks'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            TabOrder = 7
            Width = 49
          end
          object eHornSkydd: TcxDBComboBox
            Left = 325
            Top = 40
            DataBinding.DataField = 'CornerProtection'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'NO'
              'YES'
              'Boards under straps over'
              'Boards under straps 3 sides')
            Properties.MaxLength = 0
            TabOrder = 9
            Width = 145
          end
          object seAntalBand: TcxDBSpinEdit
            Left = 325
            Top = 16
            DataBinding.DataField = 'NoOfStraps'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            TabOrder = 8
            Width = 65
          end
          object lcWrapType: TcxDBLookupComboBox
            Left = 325
            Top = 106
            DataBinding.DataField = 'WrapType'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            Properties.KeyFieldNames = 'WrapTypeNo'
            Properties.ListColumns = <
              item
                FieldName = 'WrapType'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dm_ProdInstru.dsrcPaperWraps
            Properties.MaxLength = 0
            TabOrder = 12
            Width = 161
          end
          object lcImpregnering: TcxDBLookupComboBox
            Left = 325
            Top = 128
            DataBinding.DataField = 'PressureTreated'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            Properties.DropDownWidth = 400
            Properties.KeyFieldNames = 'PressureTreatedNo'
            Properties.ListColumns = <
              item
                Caption = 'Typ'
                MinWidth = 100
                FieldName = 'PressureTreated'
              end
              item
                Caption = 'Beskrivning'
                FieldName = 'Description'
              end>
            Properties.ListSource = dm_ProdInstru.ds_PressTreat
            Properties.MaxLength = 0
            TabOrder = 13
            Width = 161
          end
          object eExtraID: TcxDBTextEdit
            Left = 325
            Top = 83
            DataBinding.DataField = 'ExtraID'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            TabOrder = 11
            Width = 161
          end
          object EPET_Tolerance: TcxDBTextEdit
            Left = 629
            Top = 114
            DataBinding.DataField = 'PET_Tolerance'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            TabOrder = 20
            Width = 60
          end
          object cxDBMemo1: TcxDBMemo
            Left = 712
            Top = 24
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'Note'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            TabOrder = 21
            Height = 113
            Width = 251
          end
          object ceShrinkWrap: TdxDBCheckEdit
            Left = 325
            Top = 64
            Width = 89
            TabOrder = 10
            Caption = 'FOLIERING'
            DataField = 'ShrinkWrap'
            DataSource = dm_ProdInstru.ds_ProdInstruct
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object lcPackage_Size: TcxDBLookupComboBox
            Left = 541
            Top = 8
            DataBinding.DataField = 'Package_Size'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            Properties.KeyFieldNames = 'PackageSizeNo'
            Properties.ListColumns = <
              item
                FieldName = 'PackageSizeName'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.MaxLength = 0
            TabOrder = 14
            Width = 161
          end
          object lcPackageType: TcxDBLookupComboBox
            Left = 541
            Top = 32
            DataBinding.DataField = 'PackageType'
            DataBinding.DataSource = dm_ProdInstru.ds_ProdInstruct
            Properties.KeyFieldNames = 'PackageTypeNo'
            Properties.ListColumns = <
              item
                FieldName = 'PackageTypeName'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.MaxLength = 0
            TabOrder = 15
            Width = 161
          end
        end
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 1010
          Height = 25
          Align = alTop
          TabOrder = 1
        end
      end
      object tsResult: TcxTabSheet
        Caption = 'Resultat'
        ImageIndex = 4
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 411
    Width = 1012
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salBottom
    Control = Panel3
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    Left = 120
    Top = 257
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <
      item
        Caption = 'Custom 1'
        DockControl = dxBarDockControl1
        DockedDockControl = dxBarDockControl1
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 589
        FloatTop = 302
        FloatClientWidth = 62
        FloatClientHeight = 88
        ItemLinks = <
          item
            Item = dxBarLargeButton2
            Visible = True
          end
          item
            Item = dxBarLargeButton5
            Visible = True
          end
          item
            Item = dxBarLargeButton6
            Visible = True
          end
          item
            Item = dxBarLargeButton3
            Visible = True
          end
          item
            Item = dxBarLargeButton7
            Visible = True
          end
          item
            Item = dxBarLargeButton8
            Visible = True
          end>
        Name = 'Custom 1'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'Custom 2'
        DockControl = dxBarDockControl2
        DockedDockControl = dxBarDockControl2
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 939
        FloatTop = 322
        FloatClientWidth = 62
        FloatClientHeight = 44
        ItemLinks = <
          item
            Item = dxBarLargeButton1
            Visible = True
          end>
        Name = 'Custom 2'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        Caption = 'Custom 3'
        DockControl = dxBarDockControl3
        DockedDockControl = dxBarDockControl3
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 404
        FloatTop = 232
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = <
          item
            Item = dxBarButton9
            Visible = True
          end
          item
            Item = dxBarButton1
            Visible = True
          end>
        Name = 'Custom 3'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'Custom 4'
        DockControl = dxBarDockControl4
        DockedDockControl = dxBarDockControl4
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 404
        FloatTop = 232
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = <
          item
            Item = dxBarSubItem1
            Visible = True
          end
          item
            Item = dxBarButton3
            Visible = True
          end
          item
            Item = dxBarButton13
            Visible = True
          end>
        Name = 'Custom 4'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        Caption = 'PaRegPkt'
        DockControl = dxBarDockControl7
        DockedDockControl = dxBarDockControl7
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 501
        FloatTop = 434
        FloatClientWidth = 101
        FloatClientHeight = 44
        ItemLinks = <
          item
            Item = dxBarButton8
            Visible = True
          end
          item
            Item = dxBarButton10
            Visible = True
          end
          item
            Item = dxBarButton16
            Visible = True
          end>
        Name = 'paregpkt'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        Caption = 'AvRegPkt'
        DockControl = dxBarDockControl6
        DockedDockControl = dxBarDockControl6
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 404
        FloatTop = 232
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = <
          item
            Item = dxBarButton15
            Visible = True
          end>
        Name = 'AvRegPkt'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
    Categories.Strings = (
      'Default'
      'AORader'
      'MainMenu'
      'PaRegPkt'
      'Print'
      'AvRegPkt')
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
    LargeImages = imglistActions
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 120
    Top = 289
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acNewRunAndAO
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acChangeRun
      Caption = #196'ndra'
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = acCopyAORow
      Category = 1
    end
    object dxBarButton2: TdxBarButton
      Action = acCollapseAll
      Category = 1
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acDeleteRun
      Caption = 'Ta bort'
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acSave
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acCancelChanges
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = acUserProps
      Category = 2
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Arkiv'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton4
          Visible = True
        end>
    end
    object dxBarButton4: TdxBarButton
      Action = acDeleteRun
      Category = 2
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Caption = 'Skriv ut'
      Category = 0
      Hint = 'Skriv ut'
      Visible = ivAlways
      DropDownMenu = pmPrint
      LargeImageIndex = 7
    end
    object dxBarButton5: TdxBarButton
      Action = acExpandAll
      Category = 1
    end
    object dxBarButton6: TdxBarButton
      Action = acSummary
      Category = 1
    end
    object dxBarButton7: TdxBarButton
      Action = acChangeLayout
      Category = 1
    end
    object dxBarButton8: TdxBarButton
      Caption = 'P'#229'registrera paket'
      Category = 3
      Hint = 'P'#229'registrera paket'
      Visible = ivAlways
    end
    object dxBarButton9: TdxBarButton
      Action = acExpanderaAORows
      Category = 1
    end
    object dxBarButton10: TdxBarButton
      Caption = 'P'#229'registrera manuellt'
      Category = 3
      Hint = 'P'#229'registrera manuellt'
      Visible = ivAlways
    end
    object dxBarButton11: TdxBarButton
      Caption = 'Skriv ut k'#246'rorder'
      Category = 4
      Hint = 'Skriv ut k'#246'rorder'
      Visible = ivAlways
    end
    object dxBarButton12: TdxBarButton
      Caption = 'Skriv ut resultat'
      Category = 4
      Hint = 'Skriv ut resultat'
      Visible = ivAlways
    end
    object dxBarButton13: TdxBarButton
      Caption = 'Allokerad volym'
      Category = 2
      Hint = 'Allokerad volym'
      Visible = ivAlways
    end
    object dxBarButton14: TdxBarButton
      Caption = 'Grupperingsruta'
      Category = 1
      Hint = 'Grupperingsruta'
      Visible = ivAlways
    end
    object dxBarButton15: TdxBarButton
      Caption = #197'ngra avregistering'
      Category = 5
      Hint = #197'ngra avregistering'
      Visible = ivAlways
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = acSetAOToComplete
      Category = 0
    end
    object dxBarButton16: TdxBarButton
      Caption = #197'ngra p'#229'registering'
      Category = 3
      Hint = #197'ngra p'#229'registering'
      Visible = ivAlways
    end
  end
  object ActionList1: TActionList
    Images = imglistActions
    Left = 160
    Top = 249
    object acNewRunAndAO: TAction
      Caption = 'Ny k'#246'rning'
      ImageIndex = 16
      OnExecute = acNewRunAndAOExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng'
      ImageIndex = 0
      OnExecute = acCloseExecute
    end
    object acSave: TAction
      Caption = 'Spara'
      ImageIndex = 20
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acCancelChanges: TAction
      Caption = #197'ngra'
      ImageIndex = 23
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
    object acRefresh: TAction
      Caption = 'Uppdatera'
      ImageIndex = 1
      OnExecute = acRefreshExecute
    end
    object acChangeRun: TAction
      Caption = #196'ndra k'#246'rning'
      ImageIndex = 32
      OnExecute = acChangeRunExecute
      OnUpdate = acChangeRunUpdate
    end
    object acDeleteRun: TAction
      Caption = 'Ta bort k'#246'rning'
      ImageIndex = 30
      OnExecute = acDeleteRunExecute
    end
    object acCopyAORow: TAction
      Category = 'AORow'
      Caption = 'Kopiera rad'
    end
    object acUserProps: TAction
      Category = 'User'
      Caption = 'Inst'#228'llningar'
      OnExecute = acUserPropsExecute
    end
    object acExpandAll: TAction
      Category = 'AORow'
      Caption = 'Expandera alla grupper'
    end
    object acCollapseAll: TAction
      Category = 'AORow'
      Caption = 'Kollapsa alla grupper'
    end
    object acSummary: TAction
      Category = 'AORow'
      Caption = 'Summering'
    end
    object acChangeLayout: TAction
      Category = 'AORow'
      Caption = #196'ndra layout'
      OnExecute = acChangeLayoutExecute
    end
    object acExpanderaAORows: TAction
      Category = 'AORow'
      Caption = 'Expandera'
      OnExecute = acExpanderaAORowsExecute
    end
    object acSetAOToComplete: TAction
      Caption = 'Avsluta k'#246'rning'
      ImageIndex = 16
    end
  end
  object imglistActions: TImageList
    Height = 24
    Width = 24
    Left = 208
    Top = 248
    Bitmap = {
      494C010121002200040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000D800000001002000000000000044
      0100000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      AD00FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      AD00FFD6AD00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C003131
      310052636B009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B5A
      4A003929180029637B0052636B00FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00D6D6
      D6008CB5C6008CF7FF002973F70021526B009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006BC6FF008CF7FF002973F7002973F70008426300FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0010A5D60042E7F7002973F7002973F70021526B009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF70010A5D60042E7F7002973F7002973F70018425A00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0010A5D60042E7F7002973F7002973F7002152
      6B00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF0010A5D60042E7F7002973F7002973
      F70008426300CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD0010A5D60042E7F7002973
      F7003139BD003131310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF0010A5D60042A5
      DE008C847B0084847B0031313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00846B
      5A00FFFFFF00F7EFE7007363520021214A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E7009C948C00E7CEB50029637B002973F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B00004A6B9C00299CEF002973F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000010E7000010E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000426B000000
      000000426B000000000000000000004A73000000000000426B0000426B00004A
      7300004A73000000000000426B0000426B000000000000000000000000000000
      00000000000000426B0000426B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003939
      39006B6B6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100000000000000
      000000426B0000000000004A73000000000000426B0000000000004A73000000
      000000426B0000426B0000000000004A73000000000000426B00000000000042
      6B0000426B00004A7300004A7300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A004242
      420052525200A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9C4200FF8C2100FF8C2100FF8C
      2100004A7300004A730000426B0000426B00004A7300004A7300000000000042
      6B0000000000004A7300004A73000000000000426B0000426B0000426B00004A
      7300004A73000000000000426B0000426B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A004A4A4A009494
      94008C8C8C007B7B7B00B5B5B500000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000FF9C4200FF9C4200FF9C4200FF8C
      2100FF8C2100FF8C2100FF8C2100004A73000000000000426B0000426B00004A
      7300004A7300000000000000000000426B0000426B0000426B00004A73000000
      00000000000000426B00004A7300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424242004A4A4A0094949400D6D6
      D600BDBDBD008C8C8C00B5B5B500000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100FF8C21002100
      BD002100BD002100BD002100BD002100BD002100BD002100BD00004A73000000
      00000000000000426B0000426B00004A7300004A7300004A7300000000000000
      000000426B00004A73000000000000426B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000393939005252520094949400CECECE00CECE
      CE009C9C9C00B5B5B50000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      000000000000000000000000000000000000FF8C2100FF8C21002100BD002100
      BD002100BD002100BD002100BD002100BD002100BD002100BD002100BD002100
      BD0000426B00004A7300004A730000000000000000000000000000426B000042
      6B00004A73000000000000426B00004A73000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000292929005A5A5A009C9C9C00C6C6C600C6C6C6009494
      9400A5A5A500000000000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      2100002184004263A50000000000426363004242420000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      000000000000000000000000000000000000FF8C21002100BD002100BD002100
      B5002100B5002100B5002100B5002100B5002100B5002100BD002100BD002100
      BD002100BD002100BD002100BD000000000000426B0000426B0000426B00004A
      73000000000000426B00004A730000426B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006B6B6B00181818009C9C9C00B5B5B500C6C6C60094949400A5A5
      A50000000000000000000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      0000002184000021840000214200422121004221210042424200000000008463
      6300426363000000000000000000000000000000000000FFFF0000FFFF000000
      FF000000FF0000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C6000000FF000000FF00C6C6C60000E7E70000E7E70000E7
      E70000000000000000000000000000000000FF8C21002100BD002100B5008C8C
      8C008C8C8C008C8C8C000000000000CEEF0000B5CE002100B5002100B5002100
      B5002100BD002100BD002100BD002100BD002100BD00004A7300004A73000000
      000000426B00004A730000426B0000426B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A5A5A00393939008C8C8C00ADADAD0094949400ADADAD000000
      000000000000000000000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      0000002184000021840000218400002142000042630042638400002142004242
      42004263630084848400000000000000000000000000C6C6C600C6C6C600C6C6
      C6000000FF000000FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000FF000000FF000000FF0000E7E700C6C6C60000E7E70000E7
      E70000E7E700000000000000000000000000FF8C21002100B5008C8C8C008C8C
      8C00000000000000000000B5CE0000C6DE0000CEEF0000B5CE0000A5BD0000B5
      CE002100B5002100B5002100B5002100BD002100BD002100BD002100BD002100
      BD00004A730000426B0000426B00004A73000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6B6B00181818004A4A4A006B6B6B0084848400A5A5A500000000000000
      0000000000000000000000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      0000002184000021840000218400002184004263A5004263A500004263004221
      2100846363000021420000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C6000000FF000000FF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF000000FF000000FF0000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E7000000000000000000FF8C2100848484008C8C8C000000
      00000000000000B5CE0000B5CE0000B5CE0000C6DE0000B5CE00009CB50000CE
      EF0000B5CE0000B5CE00009CB5002100B5002100B5002100B5002100BD002100
      BD002100BD002100BD002100BD0000426B000000000000000000000000000000
      000094846B0031313100524A4A004A4A4A004242420094846B00A5A5A5006363
      6300393939006B6B6B009C9C9C0094949400CECECE0000000000000000000000
      000000000000000000000000000000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000218400002184000021840000218400002184004263A500426384000021
      42004221210000426300424242000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6000000FF000000FF00C6C6C600C6C6C600C6C6C6000000
      FF000000FF00C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000FF8C2100848484008C8C8C008C8C
      8C008C8C8C0000000000000000000000000000CEEF0000CEEF0000B5CE0000B5
      CE0000CEEF0000A5BD0000B5CE0000C6DE00000000008C8C8C002100B5002100
      B5002100B5002100BD002100BD002100BD00000000000000000094949400524A
      3900735A4A009C948400B5ADA500B5AD9C00A5948400846B5A004A3931001818
      180052524A00ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C600844242004221420000426300002184000021
      8400002184000021840000218400002184000021840000218400424284004263
      8400004284004263A50042424200000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF000000FF000000FF0000FFFF000000FF000000
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000FF8C2100FF8C2100848484008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C00000000000000000000A5BD0000B5
      CE0000B5CE00009CB50000A5BD00000000000000000073737300737373007373
      7300737373002100B5002100B5002100B5000000000094949C004A4239009484
      6B00F7E7CE00FFFFEF00FFF7E700FFF7DE00FFF7DE00FFE7D600A59484004A42
      39006B6B6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000000000424242004242
      4200002184000021840000218400002184000021840000218400002184000021
      8400426384004263A500424242000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000FF000000FF000000FF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000FF8C2100FF8C2100FF8C21008484
      840084848400848484008C8C8C008C8C8C008C8C8C008C8C8C00000000000000
      00000000000000B5CE0000000000737373007373730073737300FFFFFF00FFFF
      FF007373730073737300737373002100B50000000000423939009C948400FFF7
      E700FFF7DE00E7CEB500DEC6AD00DEC6AD00EFD6BD00FFE7CE00FFFFF700A59C
      94006B6363000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E70000000000000000004242
      4200424242004242420000218400002184000021840000218400002184000021
      8400002184000021840042424200000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF000000FF000000FF000000FF000000FF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C21008484840084848400848484008C8C8C008C8C8C008C8C
      8C008C8C8C00000000007373730073737300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00737373002100B50094949C0094847300EFDECE00FFEF
      E700E7C6A500EFBD8C00EFBD9C00EFBD9C00EFC69400DEBD9400FFEFE700FFEF
      D6007B6B5A00737B7B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00000000000000
      0000000000004242420042424200002184000021840000218400002184000021
      8400002184004242420042424200000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E7000000FF000000FF0000E7E70000E7E7000000FF000000
      FF0000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C210084848400848484008484
      84008C8C8C007373730073737300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF002100B500FF8C2100A59C8C00C6B59400FFE7CE00FFE7
      D600EFC6AD00EFBD8C00EFBD9400EFBD9400EFBD8C00E7C69C00F7E7CE00FFFF
      DE009C8C73007373730000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000042424200002184000021840000218400424242004242
      420042424200000000000000000042002100000000000000000000FFFF0000FF
      FF00C6C6C6000000FF000000FF00C6C6C60000FFFF0000FFFF00C6C6C6000000
      FF000000FF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100848484008484840084848400FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FF8C2100FF8C21009C9C9C00D6BDA500FFE7CE00FFE7
      D600F7DEC600F7CEAD00F7CEA500F7CEA500EFC6AD00FFDEC600FFE7CE00FFEF
      CE00AD9C8C008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000424242004242420042424200424242000000
      00000000000042424200424242004242420000000000000000000000000000FF
      FF000000FF000000FF0000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C6000000FF000000FF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000FF8C2100FF8C2100FF9C4200FF8C
      2100FF9C4200FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C210000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8C2100FF8C2100FF8C2100A59C8C00CEBDA500FFDEBD00FFDE
      C600F7DEC600F7D6BD00F7D6B500F7D6BD00F7D6BD00FFDEC600F7DEBD00FFEF
      CE00B5A594008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004200
      21004200210042424200424242000042A5000000000000000000000000000000
      FF000000FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C6000000FF000000FF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000FF8C2100FF8C2100FF8C2100FF9C
      4200FF8C2100FF9C4200FF8C2100FF8C2100FF8C2100FF8C2100FF9C4200FF9C
      4200FF8C2100FF8C2100FF8C2100FF8C2100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8C2100FF8C2100FF8C2100A59C8C00C6BDA500F7D6B500FFD6
      B500FFDEC600FFEFD600FFF7DE00FFF7DE00FFE7CE00F7D6BD00FFD6B500FFF7
      C600A5947B0084848C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A500000000000000FF000000FF000000
      FF000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C6000000FF000000FF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E70000000000FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF9C4200FF8C2100FF8C2100FF9C4200FF8C2100FF8C2100FF9C
      4200FF9C4200FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C210000000000A59C8C00F7CEAD00FFD6
      AD00FFE7D600F7FFFF00F7FFFF00FFFFF700FFFFF700FFDED600FFD6B500EFD6
      A50094947B00A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A5000000FF000000FF000000FF000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF000000FF000000FF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E70000000000FF8C2100FF9C4200FF8C2100FF8C
      2100FF8C2100FF8C2100FF9C4200FF9C4200FF8C2100FF8C2100FF8C2100FF8C
      2100FF9C4200FF9C4200FF9C4200FF9C4200FF8C2100FF8C2100FF9C4200FF9C
      4200FF8C2100FF8C2100FF8C2100FF8C21000000000094948C00B5AD9C00F7CE
      A500FFE7CE00F7FFFF00F7FFFF00FFFFFF00FFF7EF00FFDEC600FFDEB500ADA5
      8C009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042424200424242000042A5000000FF000000FF00000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E70000000000FF8C2100FF8C2100FF9C4200FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100FF9C4200FF9C4200FF8C2100FF8C210000000000000000009CA5A500BDB5
      9400F7D6AD00FFEFD600FFFFE700FFF7DE00FFE7BD00EFD6A500CEBDA5009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042424200424242000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000000000FF8C2100FF8C2100FF8C2100FF9C
      4200FF8C2100FF9C4200FF9C4200FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF9C4200FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF9C4200FF9C4200FF9C4200000000000000000000000000A5A5
      A500B5B5A500DECEAD00EFD6A500E7CE9C00DEC6AD00CEC6B500A5A59C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100FF8C2100FF8C
      2100FF9C4200FF9C4200FF8C2100FF9C4200FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF9C4200FF9C4200FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF9C42000000000000000000000000000000
      0000B5B5A500B5B5A500B5B5A500B5B5A500B5B5A500B5B5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF9C4200FF9C4200FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C21000000000000000000000000000000
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
      0000000000000031DE000031DE00000000000000000000000000000000000000
      0000000000003931420039314200393142003931420039314200393142003931
      4200393142003931420039314200393142003931420039314200393142000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000000000000000
      00007BADD60084BDE700316BCE003163CE00316BCE003973CE003973CE00397B
      D6003984DE004284DE004294E7004294E7003994EF003194EF0073BDEF003931
      4200000000000000000000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C
      8C000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004294E70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF00A5E7FF00B5EFFF00B5EFFF0094DEFF0084CEFF003931
      4200000000000000000000000000000000000000000018A5D6005ACEEF00B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      94000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF004A9CEF00398CEF004A9CEF005AADEF0063B5F7006BC6
      F7007BCEF70063BDF7006BC6F7005AC6FF00299CFF003163CE0084CEFF003931
      4200000000000000000000000000000000000000000010A5D6009CEFFF00CEFF
      FF008CF7FF0094F7FF0094F7FF008CEFFF008CEFFF007BE7F70073DEF7005AE7
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      94000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004A9CEF0063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF008CD6FF008CDEFF008CD6FF0094DEFF0084CEFF003931
      4200000000000000000000000000000000000000000021A5D6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF0073EF
      FF0063E7FF005ADEFF005ADEFF005ADEFF0073DEF7005ACEEF004AC6E70031B5
      DE0018A5D6000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF004A94E7003984DE004294E70052A5EF005AADEF0063B5
      F7006BC6F70063BDF7006BC6F7005AC6FF00299CFF003163CE007BCEF7003931
      4200000000000000000000000000000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF007BEF
      FF0073EFFF006BE7FF0063E7FF0063E7FF005ADEFF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF0094E7FF00A5E7FF00A5E7FF0084D6FF008CD6FF003931
      4200000000000000000000000000000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0084EF
      FF0084EFFF007BEFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009494
      9400FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A5
      5A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF00428CE700397BD6004284DE004A94E700529CE7005AAD
      EF0063B5F70063BDF7006BC6F7005AC6FF00299CFF003163CE0073BDEF003931
      4200000000000000000000000000000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CEFFF008CEFFF008CEF
      FF008CEFFF0084EFFF0084EFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009C9C
      9400FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A5
      5A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009C9C
      9400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF008CD6FF00B5EFFF00B5EFFF0094DEFF008CDEFF003931
      4200000000000000000000000000000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF008CF7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEF
      FF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF006BE7FF0063E7FF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009C9C
      9C00FFFFFF00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A5
      5A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00FFFFFF009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF00428CE7003173D6004284DE004A94E700529CE70052A5
      EF005AADEF0063BDF7006BC6F7005AC6FF00299CFF003163CE0073B5EF003931
      4200000000000000000000000000000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF0073EFFF006BE7FF001084
      18005ADEFF0018A5D6000000000000000000000000000000000000000000A5A5
      A500FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C
      2100FFFFFF00FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C2100FFFFFF00A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF00A5E7FF00B5EFFF00B5EFFF0094DEFF008CD6FF003931
      4200000000000000000000000000000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BEFFF0073EFFF001084
      18005ADEFF0018A5D6000000000000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100F7F7F700F7F7F700EF9C2100F7F7F700F7F7F700EF9C
      2100F7F7F700F7F7F700EF9C2100F7F7F700F7F7F700EF9C2100F7F7F700A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF0094BDEF008CADE7008CADE70094BDEF009CC6EF009CC6
      EF009CCEF700A5D6FF00A5DEFF00A5DEFF009CD6FF0094CEFF00A5CEF7003931
      4200000000000000000000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF001084
      18005AE7FF0018A5D6000000000000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100F7F7F700A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007BADD60063C6FF004A9CE700317BD6002963CE002963CE002963
      CE002963CE002963CE002963CE00317BD6004A9CE70063C6FF006B8CA5000000
      0000000000000000000000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF001084180094F7FF008CEFFF008CEFFF00108418001084
      18008CEFFF0018A5D6000000000000000000000000000000000000000000ADAD
      AD00EFEFEF00EF9C2100EFEFEF00EFEFEF00EF9C2100EFEFEF00EFEFEF00EF9C
      2100EFEFEF00EFEFEF00EF9C2100EFEFEF00EFEFEF00EF9C2100EFEFEF00ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A59484009C9C9C00736B630000000000000000000000
      000000000000000000000000000084847B00ADADAD008C735A00000000000000
      0000000000000000000000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF00108418001084180094F7FF0010841800108418000894
      18008CEFFF0018A5D6000000000000000000000000000000000000000000ADAD
      AD00E7E7E700EF9C2100E7E7E700E7E7E700EF9C2100E7E7E700E7E7E700EF9C
      2100E7E7E700E7E7E700EF9C2100E7E7E700E7E7E700EF9C2100E7E7E700ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A594840094949400736B630000000000000000000000
      00000000000000000000000000008C848400B5B5B5008C735A00000000000000
      0000000000000000000000000000000000000000000029ADD6009CF7FF00BDE7
      F700BDEFF700C6F7FF00C6F7FF00C6F7FF009CF7FF008CF7FF008CF7FF0094F7
      FF0094F7FF0094F7FF001084180031AD52001084180010841800089418008CEF
      FF008CEFFF0018A5D6000000000000000000000000000000000000000000ADAD
      AD00E7E7E700EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100E7E7E700ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5948400949494007B6B630000000000000000000000
      00000000000000000000000000008C8C8400BDBDBD008C735A00000000000000
      0000000000000000000000000000000000000000000029ADD60031ADDE0031AD
      DE0031ADDE0031ADDE0031ADDE0031ADDE007BCEE7008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF001084180031AD520039C65A001084180094F7FF0094F7
      FF0094F7FF0018A5D6000000000000000000000000000000000000000000ADB5
      B500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00ADB5
      B500000000000000000000000000000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A59484009C9C9C007B73730000000000000000000000
      00000000000000000000000000009C9C9400BDBDBD008C735A00000000000000
      0000000000000000000000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0031ADDE007BCEE7009CEFFF009CEF
      FF009CEFFF009CEFFF00108418004AD67B0021AD390021AD3900108418009CEF
      FF005ACEEF0018A5D6000000000000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5B5
      B5000000000000000000000000000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5948400BDBDBD00737373007B634A00000000000000
      0000000000000000000084736300B5B5B500BDBDBD008C735A00000000000000
      0000000000000000000000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE0010841800108418001084180010841800108418001084
      180039BDE700000000000000000000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5B5
      B50000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5948400E7E7E7008C8C8C0084847B007B6352007B63
      42007B634200847363008C8C8C00C6C6C600C6C6C600846B4A00000000000000
      000000000000000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B50000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5948400EFEFEF00ADADAD00949494008C8C
      8C008C8C8C009C9C9C00C6C6C600CECECE008C735A0000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5948400E7E7E700F7F7F700EFEF
      EF00EFEFEF00E7E7E700CECEC6008C735A000000000000000000000000000000
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
      00000000000000000000000000000000000000000000A59484008C7363009484
      6B0094846B008C735A008C735A00000000000000000000000000000000000000
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
      0000000000000031DE000031DE00000000000000000000000000000000000000
      00000000000000000000000000007B737B007B737B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5420800A5420800A542080000000000000000000000
      00000000000000000000000000000000000000000000C66B6B00CE636300B552
      52009C6B6B00B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500CE6363008C420800843910000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000008473730084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800B5520000BD5A0000A54208009C390800000000000000
      000000000000000000000000000000000000B5847300C66B6B00CE636300BD5A
      5A009C6B6B00A58C8C0094292900B5736B00DECECE00C6CEC600F7F7F700FFFF
      FF00E7E7E700CE636300A5392100C65A5A009C4A4A0000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000947B9400734A52007B3931007B31
      21007B422900735242006B5A5200848484000000000000000000000000007B73
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5390800BD5A0000D66B0000BD5A0000A5420800A54208000000
      000000000000000000000000000000000000B5847300C66B6B00CE636300BD5A
      5A00A5737300A5848400942121008C181800B5736B00EFE7E700D6DEDE00F7F7
      F700FFFFFF00CE636300B5393100C65A5A009C4A4A004A0052009C4A4A000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000073425A0063397300422163004A2973005231
      7B0042216300734263007B42520073524200635A5A0084848400948494007B73
      7B007B737B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800A5420800C65A0000D66B0000BD5A0000A5420800A542
      080000000000000000000000000000000000B5847300C66B6B00CE636300B552
      5200A5737300AD8C8C00942929009429290094313100B5B5B500EFE7E700D6E7
      DE00F7F7F700CE636300B5393900C65A5A009C4A4A0021210000C65A5A009C4A
      4A000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000633173004A297300635A7B0094849400A594A500A59C
      AD00948C9C009C94A500A594A500845A7B007342390052425A00423152000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C390800A5420800C6630000CE6B0000B55200009C39
      08009C390800000000000000000000000000B5847300C66B6B00CE636300B552
      5200B5737300C6ADAD00BD9C9C00BD9C9C00BDA5A500BDA5A500B5B5B500EFE7
      E700C6CEC600CE636300B5393900C65A5A009C4A4A00B5524200C65A5A009C4A
      4A00000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063397B0042315A007B738400A59CAD00A594A500B5A5B5009C8C
      A500736B7B009C9CAD00A59CB500AD9CB5006B526B0052394A005A525A000000
      000000000000000000000000000000000000A54208009C3908009C3908009C39
      08009C3908009C3908009C3908009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000009C390800AD4A0800CE630000CE6B0000AD4A
      08009C3908009C3908000000000000000000B5847300C66B6B00CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300B54A4A00C65A5A009C4A4A00CE5A5200C65A5A009C4A
      4A004A0052009C4A4A0000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C739C004A3963007B737B00AD9CAD00C6BDC600C6B5BD00CEBDC600BDAD
      BD00ADA5B500ADA5B500948CA5008C8C9C00B5ADBD005A426B005A4A4A000000
      000000000000000000000000000000000000A5420800B55A1000B55A1000B552
      0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800B54A0000AD4A
      0800A5420800A542080000000000000000009C390800AD4A0800CE6B0000C663
      0000A54208009C3908000000000000000000B5847300AD4A4A00AD4A4A00CE8C
      8C00CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE73
      7300DE7B7B00D66B6B00AD424200CE6363009C4A4A00C6525200C65A5A009C4A
      4A0021210000C65A5A009C4A4A00000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A316B00948494009C949C00A59CA500D6CECE00D6CECE00D6CECE00CEC6
      CE00C6BDC600CEC6C600A59CAD009494AD00A59CB500A59CAD004A425A008C8C
      8C0000000000000000000000000000000000AD4A1000EF943100E78C2900DE7B
      1000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D66B
      0000B55208009C3908000000000000000000000000009C390800B5520800CE6B
      0000BD5A00009C3908009C39080000000000B5847300A5423900C6847B00F7F7
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00EFE7E700E7949400AD313100CE6363009C4A4A00B5525200C65A5A009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B5A6B00BDA5B500CEBDC600D6CECE00DED6D600DED6D600D6CED600D6CE
      D600D6CECE00D6CECE00C6BDC600A5A5B500948CA500A5A5B5005A6384007373
      730000000000000000000000000000000000AD4A1000F7A54200F7A53900E78C
      2900DE841800CE630800B5520000B5520000B5520000B5520000B5520000B552
      0800A5420800A5420800000000000000000000000000000000009C390800BD5A
      0000CE6B0000AD4A08009C39080000000000B5847300A5423900C6848400FFFF
      FF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700EFE7E700E7949400AD313100CE6363009C4A4A00B54A4A00C65A5A009C4A
      4A00C65A4A00C65A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B5A
      6B00AD949C00C6ADB500C6B5BD00DED6D600DED6DE00DED6DE00DED6D600C6BD
      CE00D6CECE00D6CECE00CEBDC600ADA5B50084849400A59CB500737B8C006B6B
      6B0000000000000000000000000000000000AD4A1000F7AD4A00FFAD4A00E794
      3900EF943100DE7B1800A54208009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000BD5A00009C3908009C390800B5847300A5423900C6847B00FFFF
      FF00CEC6C600D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00C6C6C600E7E7
      E700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200CE6363009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B5A
      6B00BDA5AD00C6ADB500C6BDBD00DED6DE00DED6DE00DED6DE00B5ADB500736B
      9400CEBDC600CEC6C600C6B5C600ADA5BD009C9CAD00A59CB5008C848C006B6B
      7B0000000000000000000000000000000000AD4A1000F7A54200FFB55200C66B
      2100DE8C3100F79C3100D6731800A54208009C39080000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800CE630000C6630000A54208009C390800B5847300A5423900C6847B00FFFF
      FF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700FFF7
      F700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200CE6363009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B5A
      6B00BDA5AD00B5A5AD00CEC6C600D6CED600DED6DE00DED6D600948CA500635A
      8C00CEBDC600C6BDC600BDADBD00ADA5B500848494009C9CAD00847B84007B7B
      840000000000000000000000000000000000AD4A1000F7A54200FFBD5200BD5A
      1800AD4A1000F7A54200F7A53900CE731800A53908009C390800000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C390800B5847300A5423900C6847B00FFFF
      FF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700FFF7
      F700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200CE6363009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B5A
      6B00A5949C009C949C00B5ADAD00BDB5BD00DED6DE00DED6D6007B739400AD9C
      B500C6BDC600BDB5C600B5ADBD009C9CAD009C94AD00A59CAD006B5A6B009494
      940000000000000000000000000000000000AD4A1000F7A54200FFBD5200BD63
      180094290000BD631800F7AD4A00F7A53900CE731800A54208009C3908000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C390800B5847300A5423900C6847B00FFFF
      FF00CEC6C600D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00C6C6C600E7E7
      E700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200BD5A5A009C4A
      4A00B5524200CE6363009C4A4A00000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000847B8C00C6B5C600C6BDBD00D6CED600D6CED600C6BDC6007B7B8400B5AD
      BD00C6B5C600B5ADC600A59CB5009494AD00A59CB500A594A5005A525A000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C3900009C390000C66B2100FFAD4A00F7A53900D67B2100A54208009C39
      08000000000000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000C6630000A54208009C390800B5847300A5423900C6847B00FFFF
      FF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200BD5A5A009C4A
      4A00B5524200CE6363009C4A4A00000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000000000002110
      290042424A00ADADB500C6BDC600B5ADBD00B5B5B5009C949C006B6B7300BDB5
      C600BDB5C600ADB5C600848CA50084849C00A59CAD00736373008C8C8C000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C390000000000009C390000C6632100F7AD4A00FFAD4200DE842100AD4A
      08009C39080000000000000000000000000000000000A54208009C390800BD5A
      0000CE6B0000BD5A00009C39080000000000B58C5A009C5A2100B58C6B00C6CE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600BD7B730094100800841010009C4A4A00BD525200BD5A5A009C4A
      4A00B5524200CE6363009C4A4A00000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      000000000000000000000000000000000000000000000000000000000000634A
      5A00181821004A424A00BDADB500B5ADBD00A5ADC6006B7384007B849C00B5B5
      CE00A5ADC6009CADCE009CA5C6009C94AD00736B7B0063636300000000000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C39000000000000000000009C310000BD5A1800F7A54200FFAD4200E78C
      2900B55210009C3908009C3908009C3908009C3908009C390800B5520000CE6B
      0000CE6B0000AD4208009C39080000000000000000000000000000000000B584
      7300A5523100C6847B00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700CE636B00B5424200BD5A5A009C4A
      4A00B5524200BD5A5A009C4A4A00000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF0000000000000000000000000000000000000000000000000000000000BDA5
      B5007B7B7B0018101800524A5A009C949C009CA5B5006B94AD006B94AD007BAD
      C60084A5BD008C94AD008C8494005A525A003131390000000000000000000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C3900000000000000000000000000009C390000AD4A1000E7943900FFAD
      4200F79C3100CE731800B55A1000AD4A0800AD4A0800BD5A0000CE6B0000CE6B
      0000B55208009C3908000000000000000000000000000000000000000000B584
      7300A5523100C6847B00FFFFFF00CEC6C600D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00FFF7F700E7949400AD313100BD5A5A009C4A
      4A00B5524200BD5A5A009C4A4A000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000C6BDC600736B730018182100312142006B63730073738400525A7300525A
      73004A4A6300524A5A0029293900181821004A4A520000000000000000000000
      000000000000000000000000000000000000AD4A1000F7AD4A00FFBD5200BD63
      18009C390000000000000000000000000000000000009C3900009C390800C66B
      2100E7943900F79C3100EF942900DE7B1000D6730000CE6B0000C65A0000AD4A
      08009C390800000000000000000000000000000000000000000000000000B584
      7300945A0800B5846300FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700C67B7B0094100800841010009C4A
      4A00B55A4200BD5A5A009C4A4A0000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5ADB5008C6B7B006B526300524A6300847B84009C9CA5005A637B003131
      420018182900181821001818210018314200636B730000000000000000000000
      000000000000000000000000000000000000A5420800D6842900E7943900AD4A
      10009C39080000000000000000000000000000000000000000009C3908009C39
      0000A5420800B55A1000C6631800BD631800B5520800A5420800A54208009C39
      080000000000000000000000000000000000000000000000000000000000B58C
      6B00945A0800B58C6B00C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600D6ADAD00BD7B7300BD737300CE63
      6B00B54A3900BD5A5A009C4A4A0000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6BDC600ADADB50000000000000000000000000000000000BDBDCE004A42
      5A006B52630073636B0042425200525263000000000000000000000000000000
      000000000000000000000000000000000000000000009C3908009C3908009C39
      0800000000000000000000000000000000000000000000000000000000000000
      00009C3908009C3908009C3908009C3908009C3908009C390800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5847300A54A2900C6847B00FFFFFF00CEC6C600CEC6
      C600CEC6C600CEC6C600CEC6C600CEC6C600CEC6C600CEC6C600FFF7F700E794
      9400A5392100BD5A5A009C4A4A0000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5ADB500B5B5B500C6C6C600000000000000000000000000000000000000
      00009C8C94008C848C008C849400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5847300A54A2900BD7B7300FFFFFF00FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700CE8C
      8C009C311800BD5A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5ADB500B5ADB500B5B5B500BDBDBD00C6C6C600C6BDC600C6BD
      C600ADA5AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5847300945A0800B57B7300C6CECE00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BD84
      7B0094311800943131009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5ADB500ADA5AD009C949C00ADA5AD00ADA5AD00A59C
      AD00B5ADBD000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000422100004221000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039ADDE0039ADDE0039ADDE0039ADDE0039ADDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000042210000A52100004221000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039ADDE0094DEEF007BE7F7005AD6EF0052C6E70052C6
      E70042BDDE0029ADD60018A5D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042210000A5210000A5210000A521000042
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000021A5D600A5DEF700BDFFFF0094FFFF009CFFFF008CEF
      FF007BE7F70073DEF7005ACEEF004AC6E70039B5DE0029ADD60029ADDE000000
      0000000000000000000000000000000000000000000000A5E70000A5E70000A5
      E70000A5E70000A5E7000042210000A5210000A5210000A5210000A521000042
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018A5D6006BC6E700BDFFFF0094FFFF0094F7FF0094F7
      FF0094FFFF009CF7FF0094F7FF0094F7FF0084EFFF007BE7F7006BDEF70052C6
      E70021A5D6000000000000000000000000000000000000A5E70084E7E70084E7
      E70084E7E7000042210000A5210000A5210000A5210000A5210000A5210000A5
      2100004221000000000000A5E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000029ADD6005AC6E700A5E7F700A5FFFF008CF7FF0094F7
      FF008CF7FF008CF7FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF006BCE
      E70042BDE7000000000000000000000000000000000000A5E70084E7E70084E7
      E7000042210000A5210000A5210000A521000042210000A5210000A5210000A5
      21000042210084E7E70084E7E70000A5E7000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF7005ACEEF0021A5
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039B5DE005AC6E70094DEEF00A5FFFF008CF7FF0094F7
      FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF006BCE
      E7006BD6F70029ADD60000000000000000000000000000A5E700000000000042
      210000A5210000A5210000A521000042210000000000000000000042210000A5
      210000A521000042210084E7E70084E7E70000A5E70000A5E700000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF0039BD
      DE00000000000000000000000000000000000000000039ADDE0039ADDE0039AD
      DE0039ADDE0039ADDE0039B5DE007BE7F7005AC6E700ADEFF70094FFFF008CF7
      FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF006BCE
      E7007BE7F7004AC6E700000000000000000000000000000000000042210000A5
      210000A52100004221000042210084E7E70084E7E70084E7E7000042210000A5
      210000A521000042210084E7E70084E7E70084E7E70000A5E70000A5E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF0063D6
      EF0018A5D6000000000000000000000000000000000039ADDE0094DEEF007BE7
      F7005AD6EF0052C6E70039B5DE008CEFFF005AC6E700ADE7F700A5FFFF008CF7
      FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF006BCE
      E70084EFFF006BD6F7000000000000000000000000000042210000A5210000A5
      21000042210084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000042
      210000A5210000A521000042210084E7E70084E7E70084E7E70084E7E70000A5
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF008CEF
      FF0029ADD6000000000000000000000000000000000021A5D60084DEF70063D6
      EF0063D6EF0073E7F70039B5DE0094F7FF0073E7F7006BC6E700A5E7F700ADEF
      F700A5EFF700ADEFF700A5F7FF008CF7FF0084EFFF008CEFFF008CEFFF006BCE
      E70084EFFF008CEFFF0031B5DE00000000000000000000422100004221000042
      21000000000084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000042
      210000A5210000A5210000422100000000000000000084E7E70084E7E70084E7
      E70000A5E70000A5E700000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF00A5F7
      FF004AC6E7000000000000000000000000000000000018A5D6006BCEE70073E7
      F70073E7F7007BE7F70039B5DE0094F7FF0094FFFF005AC6E7005AC6E7005AC6
      E7005AC6E7005AC6E700A5DEF700ADF7FF0094F7FF008CEFFF0084EFFF006BCE
      E70073E7FF009CFFFF0052C6E700000000000000000000000000000000000000
      00000000000000A5E70000A5E70084E7E70084E7E70084E7E70084E7E70084E7
      E7000042210000A5210000A521000042210084E7E7000000000084E7E70084E7
      E70084E7E70000A5E70000A5E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF0063D6F70084E7FF00A5F7
      FF00A5F7FF0021A5D60000000000000000000000000029ADD6005AC6E7008CEF
      FF0084EFFF008CF7FF0042B5DE0094EFF70094FFFF009CFFFF0094FFFF008CF7
      FF0084EFFF0073E7F7005AC6E7005AC6E700ADE7F700ADF7FF00A5F7FF008CE7
      FF0094EFFF00B5FFFF0094EFF70029ADD6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000042210000A5210000A52100004221000000000000000000000000000000
      000084E7E70084E7E70084E7E70000A5E70000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF008CEFFF0063D6F70084E7FF0094F7
      FF0094F7FF0042BDE70000000000000000000000000039B5DE005AC6E70094EF
      F70094FFFF0094F7FF0039B5DE0094F7FF0094FFFF0094F7FF0094F7FF0094F7
      FF0094F7FF009CF7FF0084F7FF005AC6E7005AC6E70094DEEF009CDEF70094DE
      EF009CDEF700A5E7F700A5E7F70042B5DE00000000000000000000000000A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5000042210000A5210000A5210000422100A5A5A500A5A5A5000000
      0000000000000000000084E7E70084E7E7000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF008CEFFF008CEFFF007BDEFF0094EFFF00A5F7
      FF00A5F7FF006BD6EF0018A5D600000000000000000039B5DE007BE7F7005ACE
      EF0094FFFF0094FFFF0042B5DE0094F7FF0094FFFF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF007BEFF7005AC6E7005AC6E7005AC6
      E70029ADD60029ADD60039ADDE0029ADD600000000000000000000000000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF000042210000A5210000A5210000422100F7FFFF00F7FFFF000000
      0000FFFFFF000000000084E7E70084E7E7000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE700BDE7F700BDE7F700BDE7F700BDE7F700CEEFF700CEEF
      F700CEEFF700C6EFFF0029ADD600000000000000000039B5DE008CEFFF005AC6
      E700A5EFF7009CFFFF0042B5DE00A5F7FF009CFFFF0094F7FF0094F7FF008CF7
      FF0094EFFF0094EFF70094EFF70094EFF70094EFFF0094EFFF009CF7FF0063D6
      EF0000000000000000000000000000000000000000000000000000000000C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A5000042210000A5210000A5210000422100A5A5A5000000
      0000FFFFFF000000000000A5E70084E7E700000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF005AD6EF005AD6EF005AD6EF0031B5DE0021A5D60029AD
      D60029ADD60029ADD60021A5D600000000000000000039B5DE0094F7FF0073E7
      F7006BC6E700A5E7F700ADEFF70029ADD600B5FFFF009CFFFF00A5FFFF009CFF
      FF005ACEEF0039ADDE0042B5DE0042B5DE0042B5DE004ABDE70052C6E70042B5
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000042210000A5210000A5210000422100000000000000
      00000000000042E7E70042E7E70000A5E70000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF0039BDE700000000000000
      0000000000000000000000000000000000000000000039B5DE0094F7FF0094FF
      FF005AC6E7005AC6E7005AC6E70029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60084EFFF006BCEE70073E7FF009CFFFF0052C6E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042210000A5210000A521000042210084E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF0039B5DE00000000000000
      0000000000000000000000000000000000000000000042B5DE0094EFF70094FF
      FF009CFFFF0094FFFF008CF7FF0084EFFF0073E7F7005AC6E7005AC6E700ADE7
      F700ADF7FF00A5F7FF008CE7FF0094EFFF00B5FFFF0094EFF70029ADD6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042210000422100004221000042210042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE70021A5D600000000000000
      0000000000000000000000000000000000000000000039B5DE0094F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF009CF7FF0084F7FF005AC6E7005AC6
      E70094DEEF009CDEF70094DEEF009CDEF700A5E7F700A5E7F70042B5DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000A5E70000A5
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E70000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042B5DE0094F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BEF
      F7005AC6E7005AC6E7005AC6E70029ADD60029ADD60039ADDE0029ADD6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000A5E70000A5E70042E7E70042E7E7000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E7000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042B5DE00A5F7FF009CFF
      FF0094F7FF0094F7FF008CF7FF0094EFFF0094EFF70094EFF70094EFF70094EF
      FF0094EFFF009CF7FF0063D6EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000A5E70000A5E7000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029ADD600B5FF
      FF009CFFFF00A5FFFF009CFFFF005ACEEF0039ADDE0042B5DE0042B5DE0042B5
      DE004ABDE70052C6E70042B5DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD6000000000000000000000000000000
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
      0000000000000000000000000000000000000063210000632100000000000000
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
      00000000000000000000000000000063210000C6210000C62100006321000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084424200844242008442
      4200844242008442420084424200844242008442420084424200844242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000063210000E7630000E7630000C621000063
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6840000C6A50000FFFF
      FF00F7CEA500C6A50000C6A50000C6840000C6630000C6630000844242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF000063210000E7630000E7630000E7630000E7630000C6
      210000632100C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6840000C684
      0000C6840000C6840000C6840000C6840000C68400008442420000FFFF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C6000063210000E7630000C6210000C6210000C6210000E7630000E7
      630000C6210000632100C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100004221000042
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000C6840000F7FF
      FF00C6A50000844242008442420084424200A5A5A5008442420000FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000063210000E7630000E7630000E76300006321000063210000E7630000E7
      630000C6210000C621000063210000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100004221000042
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00C6A5000084424200C6C6C600A5A5A5008442420000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000632100006321000063
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C6000063210000E7630000E7630000632100C6C6C600C6C6C6000063210000E7
      630000E7630000C6210000C62100006321000063210000E7E70000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100004221000042
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C600A5A5A50084424200C6C6C60000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000063
      210000E7630000C6210000C621000063210000FFFF0000FFFF00C6C6C6000063
      210000E7630000E7630000E7630000C6210000C621000063210000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E70000000000000000000000000000000000000000000000000000FFFF00C684
      0000F7FFFF00F7FFFF00C6C6C600A5A5A50084424200C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E7000000000000000000000000000000000000000000C6C6C6000063210000E7
      630000E7630000E7630000632100C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000063210000E7630000E7630000E7630000E7630000C621000063210000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700000000000000000000000000000000000000000000FFFF0000FF
      FF00C6840000A5A5A500C6C6C6008442420000FFFF0000FFFF0000FFFF00C663
      0000C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000FFFF000063210000E7
      630000E763000063210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF000063210000E7630000E7630000E7630000E7630000C621000063
      210000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF000042210000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E7000000000000000000000000000000000000FFFF0000FF
      FF00C6840000A5A5A500C6C6C6008442420000FFFF00C684630000FFFF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000632100006321000063
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E7000000000000000000000000000063210000E7630000E7
      630000632100C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000632100C6C6C60000E7630000E7630000E7630000C6
      21000063210000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000FFFF00C684
      0000F7FFFF008442420084424200A5A5A5008442420000FFFF00C684630000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      210000632100C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000FFFF000063210000E7
      63000063210000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF00006321000063210000E7630000E7630000E7
      630000C621000063210000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100004221000042
      210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000C6840000F7FF
      FF00C6A50000C6A5000084424200C6C6C600A5A5A5008442420000FFFF00F7CE
      A50000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00006321000063
      2100006321000063210000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E7000000000000000000C6C6C600C6C6C6000063
      2100C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E7000063210000E7630000E7
      630000E7630000C62100006321000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100008421000042
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000C6840000F7FF
      FF00FFFFFF00F7FFFF00C6C6C600C6C6C600A5A5A5008442420000FFFF0000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000063
      2100006321000063210000632100C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E7000063210000E7
      630000E7630000E7630000632100000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100008421000042
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000C6840000F7FF
      FF00FFFFFF00F7FFFF00C6C6C600C6C6C600A5A5A5008442420000FFFF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF000063210000632100006321000063210000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E7000063
      210000E7630000E7630000632100000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000422100008421000042
      210000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000844242008442
      4200844242008442420084424200844242008442420084424200F7CEA500F7CE
      A50000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000632100006321000063210000E7E700C6C6C60000E7
      E70000E7E70000632100006321000063210000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E7000063210000E763000063210000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100008421000042
      210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E7000000000000000000C6840000C6A50000FFFF
      FF00F7CEA500C6A50000C6A50000C6840000C6630000C663000084424200F7CE
      A50000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000632100006321000063210000632100C6C6C60000FF
      FF0000632100006321000063210000632100C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E70000632100006321000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000422100008421000042
      210000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF00006321000063210000632100006321000063
      210000632100006321000063210000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF0000422100008421000042
      2100C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF000063210000632100006321000063
      2100006321000063210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000422100008421000042
      210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000422100008421000042
      210000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000422100004221000042
      2100C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      AD00FFD6A500CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600FF000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF006B73FF003131B5003131BD003131BD003131BD003131C6003131
      C6003131BD003131BD003131B5003131B5003131AD003131A5006363FF00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      AD00FFD6AD00CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00C6C6C600FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C600FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF003131C6003131DE003131EF003131F7003131F7003131EF003131
      F7003131EF003131EF003131EF003131E7003131DE003131C60031319C00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFEFE700FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDE
      B500FFD6AD00CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C6C6C60000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF003131D6003131EF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003131E7003131CE003131AD00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C60000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF003131E7003139FF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003131F7003131DE003131B500FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFE700FFEFD600FFEFD600FFE7C600FFE7
      C600FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FF000000FF00000000E7
      E70000E7E7000000000000000000000000000000000000000000000000000000
      0000FFFFFF003131EF003139FF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003139FF003131E7003131BD00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00FF000000FF000000FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FF000000FF00000000E7
      E70000E7E70000E7E70000000000000000000000000000000000000000000000
      0000FFFFFF003139FF003139FF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003139FF003131EF003131C600FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF007B8CC60031398C0031398C00396B9400FFE7
      C600FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000E7E700C6C6
      C60000E7E70000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000FFFFFF003139FF003139FF00848CFF00848CFF00848CFF00848CFF00848C
      FF00848CFF00848CFF00848CFF00848CFF003131F7003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00085A94003184FF003184FF00085A9400FFEF
      D600FFEFD600CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF0000000000000000000000000000000000FFFFFF000000000000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00000000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000FFFFFF003139FF003139FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003131EF003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00085A940042B5F70042B5F700085A9400FFEF
      D600FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      0000FFFFFF003139FF003942FF003942FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003131F7003131EF003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00298CBD000873B5000873B500085A940042B5F70042B5F7000873B5000873
      B500085A94007B8CC60000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FF00000000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      0000FFFFFF003139FF005252FF005252FF003942FF003139FF003139FF003139
      FF003139FF003139FF003139FF003131F7003131EF003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000873B5008CD6F70042B5F70042B5F70042B5F70042B5F70042B5F70042B5
      F7008CD6F7000873B50000000000000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C6000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700FF000000FF00
      0000FF000000C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000FFFFFF003942FF006B6BFF006363FF00424AFF003942FF003942FF003139
      FF003139FF003139FF003139FF003139FF003131F7003131F7003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00216BF700B5DEF700B5DEF700B5DEF7008CD6F7008CD6F700B5DEF700B5DE
      F700B5DEF700216BF7000000000000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000000000000000000000
      0000000000000000000000FFFF0000000000C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000FFFFFF005252FF00848CFF006B6BFF005252FF004A4AFF00424AFF00424A
      FF003139FF003139FF003139FF003139FF003139FF003131F7003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005AB5E7003184FF003184FF003184FF008CD6F7008CD6F7003184FF003184
      FF003184FF005AB5E700000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      0000FFFFFF006363FF009C9CFF00848CFF006B6BFF006363FF005252FF004A4A
      FF00424AFF003942FF003139FF003139FF003139FF003131F7003131BD00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003184FF008CD6F7008CD6F7003184FF00FFF7
      E700FFF7E700CE63000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      0000FFFFFF00C6CEFF006363FF004A4AFF003942FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003131F7003131DE007B84FF00FFFF
      FF00000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B00003184FF00B5DEF700B5DEF7003184FF00DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300005AB5E7003184FF003184FF005AB5E700CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
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
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007B7B7B000000
      00000000000000000000FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007B7B7B000000
      00000000000000000000FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000FFFF00000000007B7B
      7B007B7B7B0000FFFF0000FFFF007B7B7B007B7B7B007B7B7B0000FFFF000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      AD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      AD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A500000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A5000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700F7A5
      5A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      AD00B5B5B500A5A5A5000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7A5
      5A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7A5
      5A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A5000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00000000000000000000730800000000000000
      00000000000000000000000000000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD00000000000000000000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      00007B7B7B007B7B7B007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B007B7B7B00FFFFFF000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7
      E700FFF7E700FFF7E700F7A55A00000000000000000000730800007308000000
      0000000000000000000000000000000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B50000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7
      C600FFE7C600FFE7C600F7A55A00007308000073080000730800008C08000073
      080000000000000000000000000000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A5000000000000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7
      C600FFE7C600FFE7C600F7A55A000000000000000000008C0800008C08000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B50000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000FF000000FF00000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C21000000000000000000008C0800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000FF000000FF00000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700EF9C
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF0000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7A5
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B007B7B
      7B007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7A5
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      00007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      00007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007B7B7B000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007B7B7B000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000FFFF00000000000000000000000000000000000000000000FF
      FF007B7B7B00000000000000000000000000000000007B7B7B00000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      AD00F7BDB5000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0084E7FF005ACEEF0021A5
      D600000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BE7F70073DEF70039BD
      DE00000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEFF0063D6
      EF0018A5D6000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEF7008CEF
      FF0029ADD6000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B0000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF700087B10001084
      18004AC6E7000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      AD00EFCEA500B58C7B0000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF000873080039BD63004AD6
      7B001084180018A5D60000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      AD00EFCEA500B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF00006B000031AD52005AE78C005AE7
      8C0039BD5A000873100000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF000873080029AD4A005AEF940052DE84004AD6
      6B0021AD310021AD390008730800000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE7000873080021AD310031AD520039BD5A0042CE6B0039C6
      5A0029BD4A0021AD310021AD3100007308000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      AD00B5AD94009C847B0000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF000873080008730800087308000873100031BD4A0031BD
      4A00087308000873080008730800087308000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE630000000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B0000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF000873080021AD390021BD
      3900087308000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD84730000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF000873100018AD290010AD
      2100087308000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE6300000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      1800087308000000000000000000000000000000000000000000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      1000087308000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      84000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      000000000000000000000000000008841000089C180008A51800088C10000873
      080000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D67310000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000873
      08000873080010841800089418000894180008941800087B1000087308000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087308000873100008730800087308000873080000000000000000000000
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
      2800000060000000D80000000100010000000000200A00000000000000000000
      000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00
      0000000000000000C00003000000000000000000C00003000000000000000000
      C00003000000000000000000C00003000000000000000000C000030000000000
      00000000C00003000000000000000000C00003000000000000000000C0000300
      0000000000000000C00003000000000000000000C00003000000000000000000
      C00003000000000000000000C00003000000000000000000C000030000000000
      00000000C00001000000000000000000C00000000000000000000000C0000000
      0000000000000000C00000000000000000000000C00000000000000000000000
      E00007000000000000000000FFFFFF000000000000000000FFFFFF0000000000
      00000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFD684F9FFFFE7FF
      FFFFFFFFFF3552A1FFFFC3FF9FFFFFFFFF002904FFFF81FE0FFF8000FF008619
      FFFF01F00FFF80007F001832FFFE03E0007F80003F0001C4FFFC07C0007F8000
      1F000108FFF80FC0002780000F000010FFF81F400003800007000000FFF03F20
      0003800003000000F0007F000001800001000000C003FF000001800001000000
      8007FF0040018000010000008007FF8060018000010000000003FF9838018000
      010000000003FF981C06C000010000000003FFC00E18E000010000000003FFF0
      0FE0E000010000000003FFFD0FE08800010000008003FFFD7FE01C0001000000
      8007FFFF7FF83E0001000000C00FFFFF7FFCFF0001000000E01FFFFFFFFEFFFF
      FF000000F03FFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8
      001FFFFFFFE0000FFFFFF1F0000F807FFFE0000FC7FFE3F0000F8003FFE0000F
      C3FF87F0000F80003FE0000FC1FF0FF0000F800007E0000FE0FE1FF0000F8000
      03E0000FF07C3FF0000F800003E0000FFC307FF0000F800003E0000FFE00FFF0
      000F800003E0000FFF01FFF0000F800003E0000FFF83FFF0000F800003E0000F
      FF01FFF0000F800003E0000FFE00FFF8001F800003E0000FFC187FFC7E3F8000
      03E0000FF83C3FFC7E3F800003E0000FF07F1FFC7E3F800003E0000FE0FF8FFC
      7E3F800003E0000FC1FFEFFC3C3F800007E0000F83FFFFFC003FC03FFFE0000F
      87FFFFFE007FE07FFFFFFFFF8FFFFFFF00FFFFFFFFFFFFFFFFFFFFFF81FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF9FE7FFFFFFC7F8000FFFFFFF1FF3FFFFFF83F00007FC7FFE3FF00EFFFF81F
      00001FC3FF87FE0007FFF80F00000FC1FF0FFC001FFFFC0700000FE0FE1FF800
      1F000603000003F07C3FF0001F000303000001FC307FF0000F000381000001FE
      00FFF0000F0003C1000001FF01FFE0000F0007C0000001FF83FFE0000F007FE0
      000001FF01FFE0000F003FE0000001FE00FFE0000F001FE0000001FC187FF000
      1F000FC0000001F83C3FE0001F040781000001F07F1FE0003F060001E00001E0
      FF8FE0007F070003E00001C1FFEFF0007F078007E0000183FFFFF0007F07C00F
      E0000187FFFFF3C0FF8FF03FFC00018FFFFFF1F1FFFFFFFFFC0001FFFFFFF807
      FFFFFFFFFC0001FFFFFFFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFF
      FFFFFFFFFFFC1FFFFF1FFFFFFFFF807FFFFC01FFFE0FFF8000FF8003FFFC001F
      8007FF80007F80001FFC00078001FF80003F80001FFC00078000FF80001F8000
      0FFC000380003F80000F80000F80000380001F80000780000780000380000F80
      0003800007800001800003800001800007800001F80001800001800003800000
      E00000800001800003800000C00000800001800001800000C000008000018000
      0180000FC00000C0000180000180000FE00000E0000180003F80003FFFFE00F0
      000180003F80001FFFFE00F8000180003F80001FFFFFC0FC0001C03FFF80001F
      FFFFF0FE0001E07FFF8001FFFFFFFCFF0001FFFFFFC001FFFFFFFFFFFFFFFFFF
      FFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFE1FFFFF
      FFFF801FFFFFFFFFFE0FFFFFFFFF801FFFFFFFFF8000FF8000FFC000FF8000FF
      80007F80007FC0007F80007F80003F80003FC0003F80003F80001F80001FC000
      1F80001F80000F80000FC0000F80000F800007800007C0000780000780000380
      0003C00003800003800001800001C00001800001800001800001C00001800001
      800001800001C00001800001800001800001C00001800001800001800001C000
      01800001C00001C00001800001C00001E00001E00001E00001E00001F00001F0
      0001F00001F00001F80001F80001F80001F80001FC0001FC0001FC0001FC0001
      FE0001FE0001FE0001FE0001FF0001FF0001FF0001FF0001FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFF83FFFFFFFFFF
      FFFFFF80FFFE00FFFFFFFFC00003FF007FFC007FFFFFFFC0000380003F80007F
      F8001FC0000380003F80003FF0000FC0000380003F80003FF0000FC000038000
      1F80001FF0000FC0000380000F80000FF0000FC00003800007800007F0000FC0
      0003800003800003F0000FC00003800001800001F0000FC00003800001800001
      F0000FC00003800001800001F0000FC00003800001800001F0000FC000038000
      01800001F0000FC00003C00001C00001F0000FC00003E00001E00001F0000FC0
      0003F00001F00001F0000FC00003F80001F80001F8001FC00003FC0001FC0001
      FFFFFFE00007FE0001FE0001FFFFFFFFFFFFFF0001FF0001FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE9DCFFFFFFFFFFFFFFFFFFFDE9DCFF
      FFFFFFFFFFFF0C1FA01801FFFFFFFFFFFFFC0007803803FFFFFFFFFFFFF00001
      803803FFFFFFFFFFFFE00003C03CFBFFFC8FFFFFFF800003C03CFBFFFB8FF00F
      FF800003C03CFBFCFBFFF00FFF800003C03CFBFCFBCFF00FFF800003C038F8FF
      FBCFF00FFF800003C038F8FDFBFFF001BF8000030010F8FCF7CFF0019FC00003
      8008E0FE6FCFF0000FE000078008E0FF37FFF0019FF8000FC03CC3F33BCFF001
      BFF8001FC07CD3F33BCFF00FFFFC007FC07CD3F87BFFF00FFFFC00FFC07CC3FF
      FB8FF00FFFFC01FFC13C11FFFC8FF00FFFFC01FFC13C11FFFFFFFFFFFFFC01FF
      81B818FFFFFFFFFFFFFC01FFB9DB9DFFFFFFFFFFFFF803FFB9DB9DFFFFFFFFFF
      FFF803FF7BE7BEFFFFFFFFFFFFF007FFFFFFFFE00003FFFFFFFFFFFFFFFFFFE0
      0003FFFFFFFFFFFFFF1FFFE00003807FFFC00003F8000FE000038003FFC00003
      E0000FE0000380001FC00003C0000FE0000380001FC00003C0000FE000038000
      0FC00003C0000FE0000380000FC00003C0000FE00003800007C00003C0000FE0
      0003800007C00003C0000FE00003800007C00003C0000FE00003800003C00003
      C0000FE00003800003C00003C0000FE00003800001C00003C0000FE000038000
      00C00003C0000FE00003800000C00003C0000FE00003800007C00003C0000FE0
      0003800007C00003E0000FE00003800007C00003F8000FE00007C03F07C00003
      FE1FFFE0000FE07E0FE00007FFFFFFE0001FFFE01FFFFFFFFFFFFFE0003FFFF0
      7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object mtFilter: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 24
    Top = 248
    object mtFilterStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtFilterUserID: TIntegerField
      FieldName = 'UserID'
    end
    object mtFilterWeekNo: TIntegerField
      FieldName = 'WeekNo'
    end
    object mtFilterShowMainProdOnly: TIntegerField
      FieldName = 'ShowMainProdOnly'
    end
    object mtFilterProducerNo: TIntegerField
      FieldName = 'ProducerNo'
    end
    object mtFilterRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtFilterAnvndare: TStringField
      FieldKind = fkLookup
      FieldName = 'Anv'#228'ndare'
      LookupDataSet = dmcOrder.cds_User
      LookupKeyFields = 'UserID'
      LookupResultField = 'UserName'
      KeyFields = 'UserID'
      Lookup = True
    end
  end
  object dsFilter: TDataSource
    DataSet = mtFilter
    Left = 24
    Top = 288
  end
  object pmAORow: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton9
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton7
        Visible = True
      end
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        Item = dxBarButton5
        Visible = True
      end
      item
        Item = dxBarButton14
        Visible = True
      end
      item
        Item = dxBarButton6
        Visible = True
      end>
    UseOwnFont = False
    Left = 160
    Top = 288
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 64
    Top = 292
    object cxStyleSmallFont: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
    end
  end
  object pmPrint: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton11
        Visible = True
      end
      item
        Item = dxBarButton12
        Visible = True
      end>
    UseOwnFont = False
    Left = 208
    Top = 292
  end
end
