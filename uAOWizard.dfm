object fAOWizard: TfAOWizard
  Left = 229
  Top = 107
  Width = 1014
  Height = 454
  ActiveControl = icStatus
  Caption = 'K'#246'rorder'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 386
    Width = 1006
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 320
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 416
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
    object bbNext: TBitBtn
      Left = 624
      Top = 8
      Width = 75
      Height = 25
      Action = acNext
      Caption = 'N'#228'sta'
      Default = True
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 536
      Top = 8
      Width = 75
      Height = 25
      Action = acPrev
      Caption = 'F'#246'reg'#229'ende'
      TabOrder = 3
    end
  end
  object pcWizard: TcxPageControl
    Left = 0
    Top = 0
    Width = 1006
    Height = 386
    ActivePage = tsAORun
    Align = alClient
    TabOrder = 1
    OnPageChanging = pcWizardPageChanging
    ClientRectBottom = 385
    ClientRectLeft = 1
    ClientRectRight = 1005
    ClientRectTop = 21
    object tsAORun: TcxTabSheet
      Caption = 'K'#246'rning'
      ImageIndex = 0
      object lcProducer: TcxDBLookupComboBox
        Left = 456
        Top = 120
        DataBinding.DataField = 'Producent'
        DataBinding.DataSource = dmcOrder.ds_AORun
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 209
      end
      object deStartDateTime: TcxDBDateEdit
        Left = 456
        Top = 152
        DataBinding.DataField = 'StartDateTime'
        DataBinding.DataSource = dmcOrder.ds_AORun
        Properties.Kind = ckDateTime
        TabOrder = 2
        Width = 209
      end
      object lcMatPunkt: TcxDBLookupComboBox
        Left = 456
        Top = 184
        DataBinding.DataField = 'M'#228'tpunkt'
        DataBinding.DataSource = dmcOrder.ds_AORun
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 3
        Width = 209
      end
      object seNoOfOperators: TcxDBSpinEdit
        Left = 456
        Top = 216
        DataBinding.DataField = 'NoOfOperators'
        DataBinding.DataSource = dmcOrder.ds_AORun
        TabOrder = 4
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 360
        Top = 128
        Caption = 'Producent:'
      end
      object cxLabel2: TcxLabel
        Left = 360
        Top = 160
        Caption = 'Startdatum:'
      end
      object cxLabel3: TcxLabel
        Left = 360
        Top = 192
        Caption = 'M'#228'tpunkt:'
      end
      object cxLabel4: TcxLabel
        Left = 360
        Top = 224
        Caption = 'Antal operat'#246'rer:'
      end
      object cxDBLabel1: TcxDBLabel
        Left = 456
        Top = 56
        DataBinding.DataField = 'RunNo'
        DataBinding.DataSource = dmcOrder.ds_AORun
        ParentColor = False
        Style.Color = clSilver
        Height = 21
        Width = 121
      end
      object cxLabel5: TcxLabel
        Left = 360
        Top = 56
        Caption = 'K'#246'rordernr:'
      end
      object icStatus: TcxDBImageComboBox
        Left = 456
        Top = 88
        DataBinding.DataField = 'Status'
        DataBinding.DataSource = dmcOrder.ds_AORun
        Properties.Images = dmsConnector.ilStatus
        Properties.Items = <
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
        TabOrder = 0
        Width = 209
      end
      object cxLabel7: TcxLabel
        Left = 360
        Top = 96
        Caption = 'Status:'
      end
      object lcVolUnit: TcxDBLookupComboBox
        Left = 456
        Top = 248
        DataBinding.DataField = 'VolEnhet'
        DataBinding.DataSource = dmcOrder.ds_AORun
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 5
        Width = 209
      end
      object cxLabel8: TcxLabel
        Left = 360
        Top = 256
        Caption = 'Volymenhet:'
      end
      object eRunTime: TcxDBMaskEdit
        Left = 456
        Top = 304
        DataBinding.DataField = 'RunTime'
        DataBinding.DataSource = dmcOrder.ds_AORun
        Properties.MaskKind = emkRegExpr
        Properties.MaxLength = 0
        TabOrder = 6
        Width = 121
      end
      object cxLabel9: TcxLabel
        Left = 360
        Top = 312
        Caption = 'K'#246'rtid(timmar):'
      end
      object cxLabel10: TcxLabel
        Left = 360
        Top = 344
        Caption = 'Stopptid(minuter):'
      end
      object eStopTime: TcxDBMaskEdit
        Left = 456
        Top = 336
        DataBinding.DataField = 'StopTime'
        DataBinding.DataSource = dmcOrder.ds_AORun
        Properties.MaxLength = 0
        TabOrder = 7
        Width = 121
      end
    end
    object tsAORows: TcxTabSheet
      Caption = 'K'#246'rrader'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1004
        Height = 41
        Align = alTop
        TabOrder = 0
        object BitBtn5: TBitBtn
          Left = 16
          Top = 8
          Width = 113
          Height = 25
          Action = acGetPkgCodesFinProd
          Caption = 'L'#228'gg till paketkoder'
          TabOrder = 0
        end
      end
      object grdAORow: TcxGrid
        Left = 0
        Top = 41
        Width = 1004
        Height = 172
        Align = alClient
        TabOrder = 1
        object grdAORowDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmcOrder.ds_AORow
          DataController.KeyFieldNames = 'RunNo;RowNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 'K'#214'RNING'
              FixedKind = fkLeft
              Options.HoldOwnColumnsOnly = True
              Width = 165
            end
            item
              Caption = 'PRODUKT'
              Options.HoldOwnColumnsOnly = True
              Width = 551
            end
            item
              Caption = 'PRODUCENT'
              Options.HoldOwnColumnsOnly = True
              Width = 155
            end
            item
              Caption = 'KVANTITET'
              Width = 129
            end>
          object grdAORowDBBandedTableView1RunNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RunNo'
            Visible = False
            Options.Filtering = False
            Options.CellMerging = True
            Width = 35
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1RowNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RowNo'
            Options.Filtering = False
            Width = 38
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1RunOrderNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RunOrderNo'
            Options.Filtering = False
            Width = 62
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
          object grdAORowDBBandedTableView1Start: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Start'
            Visible = False
            Options.Filtering = False
            Width = 54
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1Vecka: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Vecka'
            Visible = False
            Options.Filtering = False
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1Krtid: TcxGridDBBandedColumn
            DataBinding.FieldName = 'K'#246'rtid'
            Visible = False
            Options.Filtering = False
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1Stopptid: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Stopptid'
            Visible = False
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
            Width = 30
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1NoOfUnits: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NoOfUnits'
            Options.Filtering = False
            Width = 59
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1VolUnitNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VolUnitNo'
            Visible = False
            Options.Filtering = False
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
            Options.Filtering = False
            Width = 36
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1AT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AT'
            Options.Filtering = False
            Width = 39
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1AB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AB'
            Options.Filtering = False
            Width = 42
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1GradeName: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GradeName'
            Options.Filtering = False
            Width = 61
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1SpeciesName: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SpeciesName'
            Options.Filtering = False
            Width = 58
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1SurfacingName: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SurfacingName'
            Options.Filtering = False
            Width = 70
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1BarCodeID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BarCodeID'
            Options.Filtering = False
            Width = 67
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1GradeStamp: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GradeStamp'
            Options.Filtering = False
            Width = 83
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1LANGD: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LANGD'
            Options.Filtering = False
            Width = 77
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1PcsPerPkg: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PcsPerPkg'
            Options.Filtering = False
            Width = 51
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1Mtpunkt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'M'#228'tpunkt'
            Options.Filtering = False
            Width = 70
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdAORowDBBandedTableView1Producent: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Producent'
            Options.Filtering = False
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
      object PanelProdInstru: TPanel
        Left = 0
        Top = 213
        Width = 1004
        Height = 151
        Align = alBottom
        TabOrder = 2
        DesignSize = (
          1004
          151)
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
    end
    object tsAORaw: TcxTabSheet
      Caption = 'R'#229'material'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1004
        Height = 41
        Align = alTop
        TabOrder = 0
        object BitBtn6: TBitBtn
          Left = 16
          Top = 8
          Width = 113
          Height = 25
          Action = acGetPkgCodesRawMtrlProd
          Caption = 'L'#228'gg till paketkoder'
          TabOrder = 0
        end
      end
      object grdAORaw: TcxGrid
        Left = 0
        Top = 41
        Width = 1004
        Height = 323
        Align = alClient
        TabOrder = 1
        object grdAORawDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmcOrder.ds_AORaw
          DataController.KeyFieldNames = 'AORmNo;RunNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 'PRODUKT'
              Width = 805
            end
            item
              Caption = 'KVANTITET'
              Width = 197
            end>
          object grdAORawDBBandedTableView1RunNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RunNo'
            Options.Filtering = False
            Width = 44
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
            Width = 44
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
            Width = 45
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object grdAORawDBBandedTableView1AB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AB'
            Options.Filtering = False
            Width = 44
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object grdAORawDBBandedTableView1GradeName: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GradeName'
            Options.Filtering = False
            Width = 127
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object grdAORawDBBandedTableView1SpeciesName: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SpeciesName'
            Options.Filtering = False
            Width = 127
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object grdAORawDBBandedTableView1SurfacingName: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SurfacingName'
            Options.Filtering = False
            Width = 93
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object grdAORawDBBandedTableView1BarcodeID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BarcodeID'
            Options.Filtering = False
            Width = 97
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object grdAORawDBBandedTableView1GradeStamp: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GradeStamp'
            Options.Filtering = False
            Width = 98
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object grdAORawDBBandedTableView1Langd: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Langd'
            Options.Filtering = False
            Width = 45
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object grdAORawDBBandedTableView1PcsPerPkg: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PcsPerPkg'
            Options.Filtering = False
            Width = 41
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object grdAORawDBBandedTableView1NoOfUnits: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NoOfUnits'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,###,###.00'
            Options.Filtering = False
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
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object grdAORawLevel1: TcxGridLevel
          GridView = grdAORawDBBandedTableView1
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 73
    Top = 365
    object acNext: TAction
      Caption = 'N'#228'sta'
      OnExecute = acNextExecute
    end
    object acPrev: TAction
      Caption = 'F'#246'reg'#229'ende'
    end
    object acGetPkgCodesFinProd: TAction
      Caption = 'L'#228'gg till paketkoder'
      OnExecute = acGetPkgCodesFinProdExecute
    end
    object acGetPkgCodesRawMtrlProd: TAction
      Caption = 'L'#228'gg till paketkoder'
      OnExecute = acGetPkgCodesRawMtrlProdExecute
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    Left = 41
    Top = 365
  end
end
