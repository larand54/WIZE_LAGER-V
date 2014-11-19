object frmRemovePkg: TfrmRemovePkg
  Left = 205
  Top = 121
  ActiveControl = teAvRegPkgNo
  Caption = 'Avregistrera paket'
  ClientHeight = 635
  ClientWidth = 1118
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 1118
    Height = 67
    Align = dalTop
    BarManager = dxBarManager1
  end
  object Panel1: TPanel
    Left = 0
    Top = 178
    Width = 1118
    Height = 457
    Align = alClient
    TabOrder = 1
    object grdPkgs: TcxGrid
      Left = 1
      Top = 72
      Width = 1116
      Height = 384
      Align = alClient
      TabOrder = 0
      object grdPkgsDBBandedTableView1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmPkgs.ds_LoadPackages
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'KVM'
            Column = grdPkgsDBBandedTableView1KVM
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'LOPM'
            Column = grdPkgsDBBandedTableView1LOPM
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'M3_NET'
            Column = grdPkgsDBBandedTableView1M3_NET
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'M3_NOM'
            Column = grdPkgsDBBandedTableView1M3_NOM
          end
          item
            Format = '#######'
            Kind = skSum
            FieldName = 'PCS'
            Column = grdPkgsDBBandedTableView1PCS
          end
          item
            Format = '######'
            Kind = skCount
            FieldName = 'PACKAGENO'
            Column = grdPkgsDBBandedTableView1PACKAGENO
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Styles.OnGetContentStyle = grdPkgsDBBandedTableView1StylesGetContentStyle
        Bands = <
          item
            Caption = 'PAKETID'
          end
          item
            Caption = 'PAKETDATA'
            Width = 1071
          end
          item
            Caption = #214'vrigt'
            Visible = False
            VisibleForCustomization = False
          end>
        object grdPkgsDBBandedTableView1PACKAGENO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PACKAGENO'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Filtering = False
          Width = 56
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1SUPP_CODE: TcxGridDBBandedColumn
          Caption = 'Prefix'
          DataBinding.FieldName = 'SUPP_CODE'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 54
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ROWNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ROWNO'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          SortIndex = 0
          SortOrder = soAscending
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1PRODUCT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRODUCT'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 177
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1BAR_CODE: TcxGridDBBandedColumn
          Caption = 'Streckkod'
          DataBinding.FieldName = 'BAR_CODE'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1GRADE_STAMP: TcxGridDBBandedColumn
          Caption = 'Kvalitetsst'#228'mpel'
          DataBinding.FieldName = 'GRADE_STAMP'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 116
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1M3_NET: TcxGridDBBandedColumn
          DataBinding.FieldName = 'M3_NET'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1PCS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PCS'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1M3_NOM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'M3_NOM'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1KVM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'KVM'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1LOPM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LOPM'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1INVENTORY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INVENTORY'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 100
          Position.BandIndex = 1
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1PCS_PER_LENGTH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PCS_PER_LENGTH'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 200
          Position.BandIndex = 1
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1OWNER: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OWNER'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 140
          Position.BandIndex = 1
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1OWNERNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OWNERNO'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1LOG_INVENTORY_NO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LOG_INVENTORY_NO'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1BARCODE_ID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BARCODE_ID'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1GRADESTAMPNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'GRADESTAMPNO'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1SUPPLIERNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SUPPLIERNO'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1Old_PackageTypeNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Old_PackageTypeNo'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SurfacingNo'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1PIP: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PIP'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1LoadDetailNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LoadDetailNo'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1PACKAGETYPENO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PACKAGETYPENO'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ProductNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ProductNo'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ACTTHICK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTTHICK'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ACTWIDTH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTWIDTH'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1NOMTHICK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOMTHICK'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1NOMWIDTH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOMWIDTH'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1Status: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Status'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1StatusText: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StatusText'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Position.BandIndex = 2
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1InvNr: TcxGridDBBandedColumn
          DataBinding.FieldName = 'InvNr'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 1
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
      end
      object grdPkgsLevel1: TcxGridLevel
        GridView = grdPkgsDBBandedTableView1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1116
      Height = 71
      Align = alTop
      BevelOuter = bvNone
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object bbClearPkgGrid: TBitBtn
        Left = 66
        Top = 6
        Width = 89
        Height = 25
        Action = acRemoveRow
        Caption = #197'ngra rad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        Left = 638
        Top = 40
        Width = 90
        Height = 25
        Action = acAddRow
        Caption = 'L'#228'gg till rad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
      object BitBtn3: TBitBtn
        Left = 162
        Top = 6
        Width = 90
        Height = 25
        Action = acRemoveAllRows
        Caption = #197'ngra alla rader'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object teAvRegPkgNo: TcxTextEdit
        Left = 66
        Top = 42
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -15
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        OnKeyDown = teAvRegPkgNoKeyDown
        Width = 186
      end
      object cxLabel1: TcxLabel
        Left = 17
        Top = 46
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Paketnr:'
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 351
        Top = 5
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Meddelande om paket saknas'
        DataBinding.DataField = 'GroupByBox'
        DataBinding.DataSource = dsUserProp
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 5
        Width = 185
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 67
    Width = 1118
    Height = 111
    Align = alTop
    TabOrder = 6
    object Label11: TLabel
      Left = 12
      Top = 29
      Width = 31
      Height = 13
      Caption = #196'gare:'
    end
    object Label15: TLabel
      Left = 246
      Top = 26
      Width = 52
      Height = 13
      Caption = 'Producent:'
    end
    object Label5: TLabel
      Left = 246
      Top = 54
      Width = 48
      Height = 13
      Caption = 'M'#228'tpunkt:'
    end
    object Label4: TLabel
      Left = 488
      Top = 54
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'K'#246'rnummer:'
      Visible = False
    end
    object Label14: TLabel
      Left = 488
      Top = 32
      Width = 65
      Height = 13
      Caption = 'Avregistrerad:'
    end
    object Label2: TLabel
      Left = 12
      Top = 53
      Width = 54
      Height = 13
      Caption = 'Lagerst'#228'lle:'
    end
    object Bevel1: TBevel
      Left = 231
      Top = 4
      Width = 530
      Height = 93
    end
    object Bevel3: TBevel
      Left = 6
      Top = 4
      Width = 219
      Height = 93
    end
    object Label1: TLabel
      Left = 12
      Top = 77
      Width = 57
      Height = 13
      Caption = 'Lagergrupp:'
      Visible = False
    end
    object Label12: TLabel
      Left = 246
      Top = 76
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Skiftlag:'
    end
    object lcOWNER: TcxDBLookupComboBox
      Left = 72
      Top = 21
      DataBinding.DataField = 'OWNER'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 0
      Width = 145
    end
    object lcPRODUCER: TcxDBLookupComboBox
      Left = 304
      Top = 22
      DataBinding.DataField = 'PRODUCER'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 3
      Width = 145
    end
    object lcREGPOINT: TcxDBLookupComboBox
      Left = 304
      Top = 46
      DataBinding.DataField = 'REGPOINT'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 4
      Width = 145
    end
    object seRunNr: TcxSpinEdit
      Left = 560
      Top = 46
      TabOrder = 7
      Visible = False
      Width = 73
    end
    object deRegDate: TcxDBDateEdit
      Left = 559
      Top = 19
      DataBinding.DataField = 'RegDate'
      DataBinding.DataSource = dsUserProp
      Properties.ImmediatePost = True
      Properties.Kind = ckDateTime
      TabOrder = 6
      Width = 186
    end
    object BitBtn1: TBitBtn
      Left = 680
      Top = 46
      Width = 65
      Height = 22
      Action = acSearchRunNo
      Caption = 'S'#246'k k'#246'rnr'
      TabOrder = 8
      Visible = False
    end
    object lcPIPNAME: TcxDBLookupComboBox
      Left = 72
      Top = 45
      DataBinding.DataField = 'PIPNAME'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 1
      Width = 145
    end
    object cxLabel4: TcxLabel
      Left = 240
      Top = 3
      AutoSize = False
      Caption = 'Bokf'#246'r avregistrering mot'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.Shadow = True
      Style.IsFontAssigned = True
      Height = 20
      Width = 128
    end
    object cxLabel3: TcxLabel
      Left = 5
      Top = 3
      AutoSize = False
      Caption = 'H'#228'mta paket som tillh'#246'r '#228'gare'
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.Shadow = True
      Style.IsFontAssigned = True
      Height = 20
      Width = 151
    end
    object lcLIP: TcxDBLookupComboBox
      Left = 72
      Top = 69
      DataBinding.DataField = 'LIPName'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 2
      Visible = False
      Width = 145
    end
    object lcSkiftLag: TcxDBLookupComboBox
      Left = 304
      Top = 69
      DataBinding.DataField = 'SkiftLag'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ShiftTeamNo'
      Properties.ListColumns = <
        item
          FieldName = 'ShiftTeamName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 5
      Width = 145
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
      'Pkgs'
      'Arkiv')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.LargeImages = ImageList1
    PopupMenuLinks = <
      item
        PopupMenu = pmPkgs
      end
      item
      end
      item
      end>
    UseSystemFont = True
    Left = 400
    Top = 512
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 21
      FloatLeft = 276
      FloatTop = 213
      FloatClientWidth = 23
      FloatClientHeight = 22
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbRemovePkgsFromInventory'
        end
        item
          Visible = True
          ItemName = 'lbPkgNoSerie'
        end
        item
          Visible = True
          ItemName = 'lbInitBarCodeScanning'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'lbClose'
        end>
      MultiLine = True
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbArkiv'
        end>
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object lbRemovePkgsFromInventory: TdxBarLargeButton
      Action = acAvregistreraPaket
      Category = 0
    end
    object lbClose: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object lbPkgNoSerie: TdxBarLargeButton
      Action = acPkgNoSerie
      Category = 0
    end
    object bbCustomPkgGrid: TdxBarButton
      Caption = #196'ndra layout'
      Category = 0
      Hint = #196'ndra layout'
      Visible = ivAlways
    end
    object lbDeletePkgsFromSystem: TdxBarLargeButton
      Caption = 'Ta bort paket fr'#229'n systemet'
      Category = 0
      Enabled = False
      Hint = 'Ta bort paket fr'#229'n systemet'
      Visible = ivAlways
      LargeImageIndex = 5
    end
    object lbInitBarCodeScanning: TdxBarLargeButton
      Action = acStartBarCodeScanning
      Category = 0
    end
    object bbScanOnlyMySuppCode: TdxBarLargeButton
      Caption = 'Start streckkodsinl'#228'sning (egna pkt)'
      Category = 0
      Hint = 'Start streckkodsinl'#228'sning (egna pkt)'
      Visible = ivAlways
      LargeImageIndex = 7
    end
    object lbAddPackage: TdxBarLargeButton
      Caption = 'L'#228'gg till paket'
      Category = 1
      Hint = 'L'#228'gg till paket'
      Visible = ivAlways
      LargeImageIndex = 0
    end
    object lbPkgInfo: TdxBarLargeButton
      Caption = 'Paketinformation'
      Category = 1
      Hint = 'Paketinformation'
      Visible = ivAlways
      OnClick = lbPkgInfoClick
    end
    object bbRemoveAllRows: TdxBarButton
      Caption = 'Rensa tabell'
      Category = 1
      Hint = 'Rensa tabell'
      Visible = ivAlways
      OnClick = bbRemoveAllRowsClick
    end
    object bbRemoveRow: TdxBarButton
      Caption = 'Ta bort rad'
      Category = 1
      Hint = 'Ta bort rad'
      Visible = ivAlways
    end
    object bbArkiv: TdxBarSubItem
      Caption = 'Arkiv'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRemovePkgFromSystem'
        end>
    end
    object bbRemovePkgFromSystem: TdxBarButton
      Action = acDeletePkgFromSystem
      Category = 2
    end
  end
  object pmPkgs: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'lbAddPackage'
      end
      item
        Visible = True
        ItemName = 'bbRemoveAllRows'
      end
      item
        Visible = True
        ItemName = 'bbRemoveRow'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'lbPkgInfo'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbCustomPkgGrid'
      end>
    UseOwnFont = False
    Left = 280
    Top = 336
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 272
    Top = 512
    Bitmap = {
      494C010108000D00080018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      0000000000000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A5000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C6000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A500000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFF7EF00FFEFD600CE630000CE63
      0000CE630000FFE7C600FFE7C600CE630000CE630000CE630000FFD6AD00FFD6
      FD00FFD6A500CE630000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C6000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFF700FFF7EF00E7A56300DE7B
      0000CE630000FFEFD600FFE7C600E7A56300DE7B0000CE630000FFDEB500FFD6
      FD00FFD6AD00CE630000000000000000000000000000E7E7E70042424200FFFF
      FF00424242004242420042424200FFFFFF00424242004242420042424200E7E7
      E7004242420042424200C6C6C600DEDEDE00DEDEDE00DEDEDE0042424200CECE
      CE00CECECE0042424200C6C6C6000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C0000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFEFD600FFEFD600E7A56300E7A56300CE630000FFDEB500FFDE
      B500FFD6AD00CE630000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF0042424200FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E70042424200E7E7E7004242420042424200424242004242
      4200DEDEDE0042424200C6C6C6000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A50000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7C600FFDE
      B500FFDEB500CE630000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00C6C6C6004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200DEDEDE0042424200DEDE
      DE00DEDEDE0042424200CECECE000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C0000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7
      C600FFDEB500CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200FFFF
      FF00FFFFFF00E7E7E70042424200E7E7E70042424200E7E7E700E7E7E700DEDE
      DE00DEDEDE0042424200CECECE000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A50000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00FFFFFF00CE630000CE63
      0000CE630000FFFFFF00FFF7EF00CE630000CE630000CE630000FFEFD600FFE7
      C600FFE7C600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00424242004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200CECECE000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00E7A56300DE7B
      0000CE630000FFFFFF00FFFFFF00E7A56300DE7B0000CE630000FFEFD600FFE7
      C600FFE7C600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200DEDEDE00000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFFFFF00FFFFFF00E7A56300E7A56300CE630000FFEFD600FFEF
      D600FFE7C600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE0000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE00000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFF7EF00FFFFFF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00FFFFFF00CE630000CE63
      0000CE630000FFFFFF00FFFFFF00CE630000CE630000CE630000FFF7EF00FFF7
      EF00FFEFD600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00E7A56300DE7B
      0000CE630000FFFFFF00FFFFFF00E7A56300DE7B0000CE630000FFF7EF00FFF7
      EF00FFEFD600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFFFFF00FFFFFF00E7A56300E7A56300CE630000FFF7EF00FFF7
      EF00FFF7EF00CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200FFFFFF0042424200E7E7E700000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7EF00CE630000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E700000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E70000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000C66B
      6B00C6636300CE636300B55252009C6B6B00B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5737300942929009431
      31009C3939009C4A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A009C6B6B00A58C8C00B5848400CEADAD00DECE
      CE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B5737300942929009431
      31009C393900C65A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A009C737300A57B7B009C393900B5736B00C69C
      9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B7B00942929009431
      31009C393900C65A5A009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A00A5737300A5848400943131009C424200B573
      7300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B7B00942929009431
      31009C393900C65A5A009C4A4A000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00527BC600FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A00A5737300AD8C8C0094313100943131009C4A
      4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B7B00942929009431
      31009C393900C65A5A009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00317BEF00527BC600296BC600FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      94000000000000000000000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300B5525200AD7B7B00B58C8C0094292900942929009431
      3100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C6848400942929009431
      31009C393900C65A5A009C4A4A000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00397BE700007BFF000073F700527BC600FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      94000000000000000000000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300B5525200AD7B7B00C6ADAD00A5636300A56363009C63
      63009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C6848400942929009431
      31009C393900BD5A5A009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00F7A55A00009CFF00008CFF00008CFF00527BC600FFFFFF00F7A5
      5A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009494
      94000000000000000000000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A00B5737300D6A5A500C69C9C00BD9C9C00BD94
      9400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C6737300A5424200AD42
      4200AD4A4A00C66363009C4A4A000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000000000000000009C9C
      9400FFFFFF00F7A55A00FFFFFF0000B5FF00008CFF000094FF00527BC600527B
      C600FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009C9C
      94000000000000000000000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300C6636300C6636300C6636300CE636300CE636300CE63
      6300CE636300CE6363009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000000000000000009C9C
      9C00FFFFFF00F7A55A00F7A55A00F7A55A0000B5FF0008C6FF00009CFF00009C
      FF00527BC600F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00FFFFFF009C9C
      9C000000000000000000000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00BD5A5A00C6636300C66B6B00CE737300CE737300CE737300CE737300CE73
      7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE7B
      7B00CE6B6B00CE6363009C4A4A000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000A5A5
      A500FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C210000B5FF0008BDFF0000AD
      FF00009CFF00527BC600EF9C2100FFFFFF00FFFFFF00EF9C2100FFFFFF00A5A5
      A5000000000000000000000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      6300000000000000000000000000000000000000000000000000B5847300AD4A
      4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BDBD00D6BDBD00D6BD
      BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00DEC6
      C600CE8C8C00CE6363009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100527BC600527BC600527BC60000C6FF0008FFFF0031F7
      FF0010BDFF0000ADFF00527BC600527BC600F7F7F700EF9C2100F7F7F700A5A5
      A5000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7
      E700CE8C8C00C65A5A009C4A4A000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000000000000000000000000000A5A5
      A500F7F7F700EF9C210029ADFF0000C6FF0000EFFF0000F7FF0000F7FF0000FF
      FF004AEFFF0018CEFF0000A5FF00527BC600EF9C2100EF9C2100F7F7F700A5A5
      A5000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF7F700EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000ADAD
      FD00EFEFEF00EF9C210039A5FF0000C6FF0000EFFF0000F7FF0000EFFF0000DE
      FF0000FFFF0000FFFF0039EFFF0008C6FF00527BC600EF9C2100EFEFEF00ADAD
      FD000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7F7F700EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100E7E7E70008C6FF0039E7FF004AEFFF0042F7FF0018FF
      FF0000FFFF0000FFFF0008FFFF0021FFFF00527BC600EF9C2100E7E7E700ADAD
      FD000000000000000000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600E7DEDE00EFE7
      E700CE8C8C00BD5A5A009C4A4A0000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100EF9C2100EF9C2100EF9C210031D6FF0008F7FF0000FF
      FF0000F7FF0000D6FF0000B5FF00527BC600EF9C2100EF9C2100E7E7E700ADAD
      FD000000000000000000000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700F7EFEF00EFE7
      E700CE8C8C00BD5A5A009C4A4A000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000000000000000000000000000ADB5
      B500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE0031D6
      FF0000F7FF0000EFFF0000ADFF0000A5FF00527BC600DEDEDE00DEDEDE00ADB5
      B5000000000000000000000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D60031D6FF0042DEFF0010D6FF005AA5FF00527BC600D6D6D600B5B5
      B5000000000000000000000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D60031D6FF0052A5FF00527BC600D6D6D600B5B5
      B50000000000000000000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E70000000000000000000000000000000000B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7
      E700CE8C8C00C65A5A009C4A4A00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD42
      4200CE9C9C00C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C68C8C00B552520000000000000000000000000000000000000000000000
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
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF0C1FFF
      FFF9FFFFFFFFFFFFFC0007FFFFF1C00003FFFFFFF00001C7FFE3C00003C00003
      E00003C3FF87C00003800001800003C1FF0FC00003800001800003E0FE1FC000
      03800001800003F07C3FC00003800001800003FC307FC00003800001800003FE
      00FFC00003800001800003FF01FFC00003800001C00003FF83FFC00003800001
      E00007FF01FFC00003800001F8000FFE00FFC00003800001F8001FFC187FC000
      03800001FC007FF83C3FC00003800001FC00FFF07F1FC00003800001FC01FFE0
      FF8FC00003800001FC01FFC1FFEFC00003C00003FC01FF83FFFFC00003FFFFFF
      FC01FF87FFFFE00007FFFFFFF803FF8FFFFFFFFFFFFFFFFFF803FFFFFFFFFFFF
      FFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00003FF
      FFFFE0000FFFFFFFC00001FFFFFFE0000FFF1FFFC000018000FFE0000FF8000F
      C0000180007FE0000FE0000FC0000180003FE0000FC0000FC0000180001FE000
      0FC0000FC0000180000FE0000FC0000FC00001800007E0000FC0000FC0000180
      0003E0000FC0000FC00001800001E0000FC0000FC00001800001E0000FC0000F
      C00001800001E0000FC0000FC00001800001E0000FC0000FC00001800001E000
      0FC0000FC00001C00001E0000FC0000FC00001E00001E0000FC0000FC00001F0
      0001E0000FC0000FC00001F80001E0000FE0000FC00001FC0001E0000FF8000F
      C00001FE0001FFFFFFFE1FFFC00001FF0001FFFFFFFFFFFFE00003FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
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
        Name = 'RoleType'
        DataType = ftInteger
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
    Left = 152
    Top = 336
    object mtUserPropVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtUserPropOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      OnChange = mtUserPropOwnerNoChange
    end
    object mtUserPropPIPNo: TIntegerField
      FieldName = 'PIPNo'
      OnChange = mtUserPropPIPNoChange
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
      OnChange = mtUserPropProducerNoChange
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
      LookupDataSet = dm_UserProps.cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropPIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PIPNAME'
      LookupDataSet = dm_UserProps.cds_PIP
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
    object mtUserPropSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object mtUserPropVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object mtUserPropLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
    end
    object mtUserPropForm: TStringField
      FieldName = 'Form'
      Size = 50
    end
    object mtUserPropUserID: TIntegerField
      FieldName = 'UserID'
    end
    object mtUserPropLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
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
    object mtUserPropShipperNo: TIntegerField
      FieldName = 'ShipperNo'
    end
    object mtUserPropStartPeriod: TDateTimeField
      FieldName = 'StartPeriod'
    end
    object mtUserPropEndPeriod: TDateTimeField
      FieldName = 'EndPeriod'
    end
    object mtUserPropSkiftLag: TStringField
      FieldKind = fkLookup
      FieldName = 'SkiftLag'
      LookupDataSet = dmsSystem.cds_ShiftLag
      LookupKeyFields = 'ShiftTeamNo'
      LookupResultField = 'ShiftTeamName'
      KeyFields = 'GroupByBox'
      Size = 35
      Lookup = True
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
    Left = 152
    Top = 392
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 400
    Top = 392
    object acAvregistreraPaket: TAction
      Caption = 'Avregistrera inl'#228'sta paketnr F3'
      ImageIndex = 1
      ShortCut = 114
      OnExecute = acAvregistreraPaketExecute
      OnUpdate = acAvregistreraPaketUpdate
    end
    object acPkgNoSerie: TAction
      Caption = 'Paketnr serie'
      ImageIndex = 6
      OnExecute = acPkgNoSerieExecute
    end
    object acStartBarCodeScanning: TAction
      Caption = 'Starta streckkodsinl'#228'sning'
      ImageIndex = 7
      OnExecute = acStartBarCodeScanningExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 3
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acAddRow: TAction
      Caption = 'L'#228'gg till rad'
      OnExecute = acAddRowExecute
      OnUpdate = acAddRowUpdate
    end
    object acRemoveRow: TAction
      Caption = #197'ngra rad'
      OnExecute = acRemoveRowExecute
      OnUpdate = acRemoveRowUpdate
    end
    object acDeletePkgFromSystem: TAction
      Caption = 'Ta bort paket fr'#229'n systemet'
      OnExecute = acDeletePkgFromSystemExecute
    end
    object acSearchRunNo: TAction
      Caption = 'S'#246'k k'#246'rnr'
      OnExecute = acSearchRunNoExecute
    end
    object acRemoveAllRows: TAction
      Caption = #197'ngra alla rader'
      OnExecute = acRemoveAllRowsExecute
      OnUpdate = acRemoveAllRowsUpdate
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdPkgs
    PopupMenus = <>
    Left = 280
    Top = 437
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 280
    Top = 390
    PixelsPerInch = 96
    object cxStyleRedBg: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clRed
      TextColor = clWhite
    end
  end
  object TAvRegPkgNo: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TAvRegPkgNoTimer
    Left = 401
    Top = 447
  end
  object siLangLinked_frmRemovePkg: TsiLangLinked
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
    Left = 552
    Top = 320
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D00520065006D006F007600650050006B00
      6700010041007600720065006700690073007400720065007200610020007000
      61006B0065007400010001000D000A0067007200640050006B00670073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31005000410043004B004100470045004E004F000100500061006B0065007400
      6E007200010001000D000A0067007200640050006B0067007300440042004200
      61006E006400650064005400610062006C006500560069006500770031005300
      5500500050005F0043004F004400450001005000720065006600690078000100
      01000D000A0067007200640050006B006700730044004200420061006E006400
      650064005400610062006C0065005600690065007700310052004F0057004E00
      4F0001005200610064006E007200010001000D000A0067007200640050006B00
      6700730044004200420061006E006400650064005400610062006C0065005600
      6900650077003100500052004F0044005500430054000100500072006F006400
      75006B007400010001000D000A0067007200640050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4200410052005F0043004F00440045000100530074007200650063006B006B00
      6F006400010001000D000A0067007200640050006B0067007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004700
      52004100440045005F005300540041004D00500001004B00760061006C006900
      740065007400730073007400E4006D00700065006C00010001000D000A006700
      7200640050006B006700730044004200420061006E0064006500640054006100
      62006C006500560069006500770031004D0033005F004E004500540001004100
      4D003300010001000D000A0067007200640050006B0067007300440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      43005300010053007400790063006B00010001000D000A006700720064005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004D0033005F004E004F004D0001004E004D0033000100
      01000D000A0067007200640050006B006700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004B0056004D000100
      4D003200010001000D000A0067007200640050006B0067007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004C00
      4F0050004D0001004C0050004D00010001000D000A0067007200640050006B00
      6700730044004200420061006E006400650064005400610062006C0065005600
      690065007700310049004E00560045004E0054004F005200590001004C006100
      670065007200010001000D000A0067007200640050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      5000430053005F005000450052005F004C0045004E0047005400480001005300
      7400790063006B002F006C00E4006E0067006400010001000D000A0067007200
      640050006B006700730044004200420061006E00640065006400540061006200
      6C006500560069006500770031004F0057004E00450052000100C40067006100
      72006500010001000D000A0067007200640050006B0067007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004F00
      57004E00450052004E004F0001004F0057004E00450052004E004F0001000100
      0D000A0067007200640050006B006700730044004200420061006E0064006500
      64005400610062006C006500560069006500770031004C004F0047005F004900
      4E00560045004E0054004F00520059005F004E004F0001004C004F0047005F00
      49004E00560045004E0054004F00520059005F004E004F00010001000D000A00
      67007200640050006B006700730044004200420061006E006400650064005400
      610062006C0065005600690065007700310042004100520043004F0044004500
      5F0049004400010042004100520043004F00440045005F004900440001000100
      0D000A0067007200640050006B006700730044004200420061006E0064006500
      64005400610062006C0065005600690065007700310047005200410044004500
      5300540041004D0050004E004F00010047005200410044004500530054004100
      4D0050004E004F00010001000D000A0067007200640050006B00670073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310053005500500050004C004900450052004E004F0001005300550050005000
      4C004900450052004E004F00010001000D000A0067007200640050006B006700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004F006C0064005F005000610063006B0061006700650054007900
      700065004E006F0001004F006C0064005F005000610063006B00610067006500
      54007900700065004E006F00010001000D000A0067007200640050006B006700
      730044004200420061006E006400650064005400610062006C00650056006900
      65007700310053007500720066006100630069006E0067004E006F0001005300
      7500720066006100630069006E0067004E006F00010001000D000A0067007200
      640050006B006700730044004200420061006E00640065006400540061006200
      6C00650056006900650077003100500049005000010050004900500001000100
      0D000A0067007200640050006B006700730044004200420061006E0064006500
      64005400610062006C006500560069006500770031004C006F00610064004400
      65007400610069006C004E006F0001004C006F00610064004400650074006100
      69006C004E006F00010001000D000A0067007200640050006B00670073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31005000410043004B0041004700450054005900500045004E004F0001005000
      610063006B0061006700650054007900700065004E006F00010001000D000A00
      67007200640050006B006700730044004200420061006E006400650064005400
      610062006C00650056006900650077003100500072006F006400750063007400
      4E006F000100500072006F0064007500630074004E006F00010001000D000A00
      67007200640050006B006700730044004200420061006E006400650064005400
      610062006C006500560069006500770031004100430054005400480049004300
      4B00010041004300540054004800490043004B00010001000D000A0067007200
      640050006B006700730044004200420061006E00640065006400540061006200
      6C00650056006900650077003100410043005400570049004400540048000100
      41004300540057004900440054004800010001000D000A006700720064005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004E004F004D0054004800490043004B0001004E004F00
      4D0054004800490043004B00010001000D000A0067007200640050006B006700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004E004F004D005700490044005400480001004E004F004D005700
      4900440054004800010001000D000A0067007200640050006B00670073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100530074006100740075007300010053007400610074007500730001000100
      0D000A0067007200640050006B006700730044004200420061006E0064006500
      64005400610062006C0065005600690065007700310053007400610074007500
      7300540065007800740001005300740061007400750073005400650078007400
      010001000D000A0067007200640050006B006700730044004200420061006E00
      6400650064005400610062006C0065005600690065007700310049006E007600
      4E007200010049006E0076004E007200010001000D000A00630078004C006100
      620065006C0031000100500061006B00650074006E0072003A00010001000D00
      0A00630078004400420043006800650063006B0042006F007800310001004D00
      65006400640065006C0061006E006400650020006F006D002000700061006B00
      650074002000730061006B006E0061007300010001000D000A004C0061006200
      65006C00310031000100C40067006100720065003A00010001000D000A004C00
      6100620065006C00310035000100500072006F0064007500630065006E007400
      3A00010001000D000A004C006100620065006C00350001004D00E40074007000
      75006E006B0074003A00010001000D000A004C006100620065006C0034000100
      4B00F60072006E0075006D006D00650072003A00010001000D000A004C006100
      620065006C003100340001004100760072006500670069007300740072006500
      7200610064003A00010001000D000A004C006100620065006C00320001004C00
      610067006500720073007400E4006C006C0065003A00010001000D000A004C00
      6100620065006C00310001004C00610067006500720067007200750070007000
      3A00010001000D000A004C006100620065006C0031003200010053006B006900
      660074006C00610067003A00010001000D000A00630078004C00610062006500
      6C003400010042006F006B006600F60072002000610076007200650067006900
      7300740072006500720069006E00670020006D006F007400010001000D000A00
      630078004C006100620065006C00330001004800E4006D007400610020007000
      61006B0065007400200073006F006D002000740069006C006C006800F6007200
      2000E4006700610072006500010001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200310001004300750073007400
      6F006D0020003100010001000D000A00640078004200610072004D0061006E00
      610067006500720031004200610072003200010043007500730074006F006D00
      20003200010001000D000A006200620043007500730074006F006D0050006B00
      670047007200690064000100C4006E0064007200610020006C00610079006F00
      75007400010001000D000A006C006200440065006C0065007400650050006B00
      67007300460072006F006D00530079007300740065006D000100540061002000
      62006F00720074002000700061006B0065007400200066007200E5006E002000
      730079007300740065006D0065007400010001000D000A006200620053006300
      61006E004F006E006C0079004D007900530075007000700043006F0064006500
      0100530074006100720074002000730074007200650063006B006B006F006400
      730069006E006C00E40073006E0069006E00670020002800650067006E006100
      200070006B0074002900010001000D000A006C00620041006400640050006100
      63006B0061006700650001004C00E400670067002000740069006C006C002000
      700061006B0065007400010001000D000A006C00620050006B00670049006E00
      66006F000100500061006B006500740069006E0066006F0072006D0061007400
      69006F006E00010001000D000A0062006200520065006D006F00760065004100
      6C006C0052006F00770073000100520065006E00730061002000740061006200
      65006C006C00010001000D000A0062006200520065006D006F00760065005200
      6F007700010054006100200062006F0072007400200072006100640001000100
      0D000A0062006200410072006B00690076000100410072006B00690076000100
      01000D000A006100630041007600720065006700690073007400720065007200
      6100500061006B00650074000100410076007200650067006900730074007200
      650072006100200069006E006C00E4007300740061002000700061006B006500
      74006E007200200046003300010001000D000A006100630050006B0067004E00
      6F00530065007200690065000100500061006B00650074006E00720020007300
      6500720069006500010001000D000A0061006300530074006100720074004200
      6100720043006F00640065005300630061006E006E0069006E00670001005300
      740061007200740061002000730074007200650063006B006B006F0064007300
      69006E006C00E40073006E0069006E006700010001000D000A00610063004300
      6C006F0073006500010053007400E4006E006700200046003100320001000100
      0D000A006100630041006400640052006F00770001004C00E400670067002000
      740069006C006C002000720061006400010001000D000A006100630052006500
      6D006F007600650052006F0077000100C5006E00670072006100200072006100
      6400010001000D000A0061006300440065006C0065007400650050006B006700
      460072006F006D00530079007300740065006D00010054006100200062006F00
      720074002000700061006B0065007400200066007200E5006E00200073007900
      7300740065006D0065007400010001000D000A00610063005300650061007200
      63006800520075006E004E006F0001005300F6006B0020006B00F60072006E00
      7200010001000D000A0061006300520065006D006F007600650041006C006C00
      52006F00770073000100C5006E00670072006100200061006C006C0061002000
      72006100640065007200010001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A00620062004300750073007400
      6F006D0050006B00670047007200690064000100C4006E006400720061002000
      6C00610079006F0075007400010001000D000A006C006200440065006C006500
      7400650050006B0067007300460072006F006D00530079007300740065006D00
      010054006100200062006F00720074002000700061006B006500740020006600
      7200E5006E002000730079007300740065006D0065007400010001000D000A00
      620062005300630061006E004F006E006C0079004D0079005300750070007000
      43006F0064006500010053007400610072007400200073007400720065006300
      6B006B006F006400730069006E006C00E40073006E0069006E00670020002800
      650067006E006100200070006B0074002900010001000D000A006C0062004100
      640064005000610063006B0061006700650001004C00E4006700670020007400
      69006C006C002000700061006B0065007400010001000D000A006C0062005000
      6B00670049006E0066006F000100500061006B006500740069006E0066006F00
      72006D006100740069006F006E00010001000D000A0062006200520065006D00
      6F007600650041006C006C0052006F00770073000100520065006E0073006100
      200074006100620065006C006C00010001000D000A0062006200520065006D00
      6F007600650052006F007700010054006100200062006F007200740020007200
      61006400010001000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A006D00
      74005500730065007200500072006F0070005600650072006B004E006F000100
      5600650072006B004E006F00010001000D000A006D0074005500730065007200
      500072006F0070004F0077006E00650072004E006F0001004F0077006E006500
      72004E006F00010001000D000A006D0074005500730065007200500072006F00
      70005000490050004E006F0001005000490050004E006F00010001000D000A00
      6D0074005500730065007200500072006F0070004C00490050004E006F000100
      4C00490050004E006F00010001000D000A006D00740055007300650072005000
      72006F00700049006E007000750074004F007000740069006F006E0001004900
      6E007000750074004F007000740069006F006E00010001000D000A006D007400
      5500730065007200500072006F00700052006500670050006F0069006E007400
      4E006F00010052006500670050006F0069006E0074004E006F00010001000D00
      0A006D0074005500730065007200500072006F00700052006500670044006100
      7400650001005200650067004400610074006500010001000D000A006D007400
      5500730065007200500072006F00700043006F00700079005000630073000100
      43006F0070007900500063007300010001000D000A006D007400550073006500
      7200500072006F007000520075006E004E006F000100520075006E004E006F00
      010001000D000A006D0074005500730065007200500072006F00700050007200
      6F00640075006300650072004E006F000100500072006F006400750063006500
      72004E006F00010001000D000A006D0074005500730065007200500072006F00
      70004100750074006F0043006F006C0057006900640074006800010041007500
      74006F0043006F006C0057006900640074006800010001000D000A006D007400
      5500730065007200500072006F00700053007500700070006C00690065007200
      43006F0064006500010053007500700070006C0069006500720043006F006400
      6500010001000D000A006D0074005500730065007200500072006F0070004C00
      65006E006700740068004F007000740069006F006E0001004C0065006E006700
      740068004F007000740069006F006E00010001000D000A006D00740055007300
      65007200500072006F0070004C0065006E00670074006800470072006F007500
      70004E006F0001004C0065006E00670074006800470072006F00750070004E00
      6F00010001000D000A006D0074005500730065007200500072006F0070004E00
      650077004900740065006D0052006F00770001004E0065007700490074006500
      6D0052006F007700010001000D000A006D007400550073006500720050007200
      6F007000470072006100640065005300740061006D0070004E006F0001004700
      72006100640065005300740061006D0070004E006F00010001000D000A006D00
      74005500730065007200500072006F00700042006100720043006F0064006500
      4E006F00010042006100720043006F00640065004E006F00010001000D000A00
      6D0074005500730065007200500072006F0070004C0065006E00670074006800
      470072006F007500700001004C0065006E00670074006800470072006F007500
      7000010001000D000A006D0074005500730065007200500072006F0070004C00
      490050004E0061006D00650001004C00490050004E0061006D00650001000100
      0D000A006D0074005500730065007200500072006F0070005000490050004E00
      41004D00450001005000490050004E0041004D004500010001000D000A006D00
      74005500730065007200500072006F00700052004500470050004F0049004E00
      5400010052004500470050004F0049004E005400010001000D000A006D007400
      5500730065007200500072006F007000500052004F0044005500430045005200
      0100500052004F0044005500430045005200010001000D000A006D0074005500
      730065007200500072006F0070004F0057004E004500520001004F0057004E00
      45005200010001000D000A006D0074005500730065007200500072006F007000
      5600450052004B0001005600450052004B00010001000D000A006D0074005500
      730065007200500072006F00700052006F006C00650054007900700065000100
      52006F006C0065005400790070006500010001000D000A006D00740055007300
      65007200500072006F007000470072006100640065007300740061006D007000
      0100470072006100640065007300740061006D007000010001000D000A006D00
      74005500730065007200500072006F00700042006100720063006F0064006500
      010042006100720063006F0064006500010001000D000A006D00740055007300
      65007200500072006F007000500072006F006400750063007400440065007300
      6300720069007000740069006F006E000100500072006F006400750063007400
      4400650073006300720069007000740069006F006E00010001000D000A006D00
      74005500730065007200500072006F007000500072006F006400750063007400
      4E006F000100500072006F0064007500630074004E006F00010001000D000A00
      6D0074005500730065007200500072006F007000500072006F00640075006300
      7400470072006F00750070004E006F000100500072006F006400750063007400
      470072006F00750070004E006F00010001000D000A006D007400550073006500
      7200500072006F007000530061006C006500730052006500670069006F006E00
      4E006F000100530061006C006500730052006500670069006F006E004E006F00
      010001000D000A006D0074005500730065007200500072006F00700056006F00
      6C0075006D00650055006E00690074004E006F00010056006F006C0075006D00
      650055006E00690074004E006F00010001000D000A006D007400550073006500
      7200500072006F0070004C0065006E0067007400680046006F0072006D006100
      74004E006F0001004C0065006E0067007400680046006F0072006D0061007400
      4E006F00010001000D000A006D0074005500730065007200500072006F007000
      46006F0072006D00010046006F0072006D00010001000D000A006D0074005500
      730065007200500072006F007000550073006500720049004400010055007300
      6500720049004400010001000D000A006D007400550073006500720050007200
      6F0070004C0065006E0067007400680056006F006C0055006E00690074004E00
      6F0001004C0065006E0067007400680056006F006C0055006E00690074004E00
      6F00010001000D000A006D0074005500730065007200500072006F0070004700
      72006F00750070004200790042006F0078000100470072006F00750070004200
      790042006F007800010001000D000A006D007400550073006500720050007200
      6F007000470072006F0075007000530075006D006D0061007200790001004700
      72006F0075007000530075006D006D00610072007900010001000D000A006D00
      74005500730065007200500072006F0070004100670065006E0074004E006F00
      01004100670065006E0074004E006F00010001000D000A006D00740055007300
      65007200500072006F00700053006800690070007000650072004E006F000100
      53006800690070007000650072004E006F00010001000D000A006D0074005500
      730065007200500072006F007000530074006100720074005000650072006900
      6F00640001005300740061007200740050006500720069006F00640001000100
      0D000A006D0074005500730065007200500072006F00700045006E0064005000
      6500720069006F006400010045006E00640050006500720069006F0064000100
      01000D000A006D0074005500730065007200500072006F00700053006B006900
      660074004C0061006700010053006B006900660074004C006100670001000100
      0D000A006D0074005500730065007200500072006F007000460069006C007400
      6500720031000100460069006C007400650072003100010001000D000A006D00
      74005500730065007200500072006F007000460069006C007400650072003200
      0100460069006C007400650072003200010001000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066007200
      6D00520065006D006F007600650050006B00670001004D005300200053006100
      6E007300200053006500720069006600010001000D000A00500061006E006500
      6C00320001004D0053002000530061006E007300200053006500720069006600
      010001000D000A006200620043006C0065006100720050006B00670047007200
      6900640001004D0053002000530061006E007300200053006500720069006600
      010001000D000A00420069007400420074006E00320001004D00530020005300
      61006E007300200053006500720069006600010001000D000A00420069007400
      420074006E00330001004D0053002000530061006E0073002000530065007200
      69006600010001000D000A00640078004200610072004D0061006E0061006700
      65007200310001005300650067006F006500200055004900010001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      310001005300650067006F006500200055004900010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720032000100
      5300650067006F006500200055004900010001000D000A0070006D0050006B00
      6700730001005300650067006F006500200055004900010001000D000A006300
      78005300740079006C0065005200650064004200670001005400610068006F00
      6D006100010001000D000A00730074004D0075006C00740069004C0069006E00
      650073005F0055006E00690063006F00640065000D000A006400780042006100
      72004D0061006E00610067006500720031002E00430061007400650067006F00
      72006900650073000100440065006600610075006C0074002C0050006B006700
      73002C00410072006B0069007600010001000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A0067007200640050006B0067007300440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      410043004B004100470045004E004F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      54006500780074004500640069007400500072006F0070006500720074006900
      65007300010001000D000A0067007200640050006B0067007300440042004200
      61006E006400650064005400610062006C006500560069006500770031005300
      5500500050005F0043004F00440045002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A0067007200640050006B006700730044004200420061006E006400
      650064005400610062006C0065005600690065007700310052004F0057004E00
      4F002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      56006900650077003100500052004F0044005500430054002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A0067007200640050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4200410052005F0043004F00440045002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A0067007200640050006B006700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004700520041004400
      45005F005300540041004D0050002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A0067007200640050006B006700730044004200420061006E0064006500
      64005400610062006C006500560069006500770031004D0033005F004E004500
      54002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      560069006500770031005000430053002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A0067007200640050006B006700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004D0033005F004E00
      4F004D002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      50006B006700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031004B0056004D002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A0067007200640050006B006700730044004200420061006E00
      6400650064005400610062006C006500560069006500770031004C004F005000
      4D002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      5600690065007700310049004E00560045004E0054004F00520059002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A0067007200640050006B0067007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031005000430053005F005000450052005F004C0045004E00470054004800
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640050006B00
      6700730044004200420061006E006400650064005400610062006C0065005600
      69006500770031004F0057004E00450052002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A0067007200640050006B006700730044004200420061006E00
      6400650064005400610062006C006500560069006500770031004F0057004E00
      450052004E004F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      7200640050006B006700730044004200420061006E0064006500640054006100
      62006C006500560069006500770031004C004F0047005F0049004E0056004500
      4E0054004F00520059005F004E004F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A0067007200640050006B006700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004200410052004300
      4F00440045005F00490044002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A0067007200640050006B006700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100470052004100440045005300
      540041004D0050004E004F002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A0067007200640050006B006700730044004200420061006E00640065006400
      5400610062006C0065005600690065007700310053005500500050004C004900
      450052004E004F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      7200640050006B006700730044004200420061006E0064006500640054006100
      62006C006500560069006500770031004F006C0064005F005000610063006B00
      61006700650054007900700065004E006F002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A0067007200640050006B006700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100530075007200
      66006100630069006E0067004E006F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A0067007200640050006B006700730044004200420061006E006400
      650064005400610062006C006500560069006500770031005000490050002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A0067007200640050006B006700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004C006F0061006400440065007400610069006C004E006F002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A0067007200640050006B006700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031005000410043004B0041004700450054005900500045004E004F00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640050006B00
      6700730044004200420061006E006400650064005400610062006C0065005600
      6900650077003100500072006F0064007500630074004E006F002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A0067007200640050006B00670073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310041004300540054004800490043004B002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A0067007200640050006B006700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100410043005400
      570049004400540048002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      67007200640050006B006700730044004200420061006E006400650064005400
      610062006C006500560069006500770031004E004F004D005400480049004300
      4B002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004E004F004D00570049004400540048002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A0067007200640050006B00670073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31005300740061007400750073002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A0067007200640050006B006700730044004200420061006E0064006500
      64005400610062006C0065005600690065007700310053007400610074007500
      730054006500780074002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      67007200640050006B006700730044004200420061006E006400650064005400
      610062006C0065005600690065007700310049006E0076004E0072002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A006300780044004200430068006500
      63006B0042006F00780031002E00500072006F00700065007200740069006500
      73002E0044006900730070006C006100790043006800650063006B0065006400
      01005400720075006500010001000D000A006300780044004200430068006500
      63006B0042006F00780031002E00500072006F00700065007200740069006500
      73002E0044006900730070006C006100790055006E0063006800650063006B00
      650064000100460061006C0073006500010001000D000A006C00630053006B00
      6900660074004C00610067002E00500072006F00700065007200740069006500
      73002E004B00650079004600690065006C0064004E0061006D00650073000100
      530068006900660074005400650061006D004E006F00010001000D000A006C00
      630053006B006900660074004C00610067002E00500072006F00700065007200
      74006900650073002E004C006900730074004600690065006C0064004E006100
      6D00650073000100530068006900660074005400650061006D004E0061006D00
      6500010001000D000A00640078004200610072004D0061006E00610067006500
      7200310042006100720031002E004F006C0064004E0061006D00650001004300
      7500730074006F006D0020003100010001000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720032002E004F006C006400
      4E0061006D006500010043007500730074006F006D0020003200010001000D00
      0A006D0074005500730065007200500072006F0070002E005600650072007300
      69006F006E00010037002E00360033002E003000300020005300740061006E00
      64006100720064002000450064006900740069006F006E00010001000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A0067007200640050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      2E00420061006E00640073005B0030005D002E00430061007000740069006F00
      6E000100500041004B004500540049004400010001000D000A00670072006400
      50006B006700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031002E00420061006E00640073005B0031005D002E00
      430061007000740069006F006E000100500041004B0045005400440041005400
      4100010001000D000A0067007200640050006B00670073004400420042006100
      6E006400650064005400610062006C006500560069006500770031002E004200
      61006E00640073005B0032005D002E00430061007000740069006F006E000100
      D60076007200690067007400010001000D000A006C00630053006B0069006600
      74004C00610067002E00500072006F0070006500720074006900650073002E00
      4C0069007300740043006F006C0075006D006E0073005B0030005D002E004300
      61007000740069006F006E000100530068006900660074005400650061006D00
      4E0061006D006500010001000D000A0073007400430068006100720053006500
      740073005F0055006E00690063006F00640065000D000A005400660072006D00
      520065006D006F007600650050006B0067000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00500061006E00
      65006C0032000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A006200620043006C0065006100720050006B00
      670047007200690064000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00420069007400420074006E003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00420069007400420074006E00330001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A006400
      78004200610072004D0061006E00610067006500720031000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      31000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00640078004200610072004D0061006E00610067006500
      7200310042006100720032000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A0070006D0050006B0067007300
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00630078005300740079006C00650052006500640042006700
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00}
  end
end
