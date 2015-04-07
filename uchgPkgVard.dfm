object fchgPkgVard: TfchgPkgVard
  Left = 234
  Top = 107
  Caption = #196'ndra paket (lagerv'#229'rd)'
  ClientHeight = 578
  ClientWidth = 1011
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 1011
    Height = 45
    Align = dalTop
    BarManager = dxBarManager1
  end
  object pLoadHead: TPanel
    Left = 0
    Top = 45
    Width = 1011
    Height = 258
    Align = alTop
    TabOrder = 1
    ExplicitTop = 46
    object Label1: TLabel
      Left = 358
      Top = 59
      Width = 60
      Height = 13
      Caption = 'Gradestamp:'
    end
    object Label2: TLabel
      Left = 358
      Top = 83
      Width = 43
      Height = 13
      Caption = 'Barcode:'
    end
    object Label7: TLabel
      Left = 358
      Top = 36
      Width = 40
      Height = 13
      Caption = 'Produkt:'
    end
    object Label8: TLabel
      Left = 20
      Top = 116
      Width = 48
      Height = 13
      Caption = 'M'#228'tpunkt:'
      Visible = False
    end
    object Label12: TLabel
      Left = 750
      Top = 92
      Width = 54
      Height = 13
      Caption = 'Lagerst'#228'lle:'
      Visible = False
    end
    object Label13: TLabel
      Left = 750
      Top = 116
      Width = 57
      Height = 13
      Caption = 'Lagergrupp:'
      Visible = False
    end
    object Label14: TLabel
      Left = 20
      Top = 68
      Width = 57
      Height = 13
      Caption = 'Registrerad:'
      Visible = False
    end
    object Label15: TLabel
      Left = 20
      Top = 92
      Width = 25
      Height = 13
      Caption = 'Verk:'
      Visible = False
    end
    object Label3: TLabel
      Left = 245
      Top = 94
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'K'#246'rnr:'
      Visible = False
    end
    object Label4: TLabel
      Left = 750
      Top = 68
      Width = 48
      Height = 13
      Caption = 'NY '#228'gare:'
      Visible = False
    end
    object Bevel2: TBevel
      Left = 336
      Top = 4
      Width = 641
      Height = 160
    end
    object Bevel3: TBevel
      Left = 6
      Top = 4
      Width = 323
      Height = 28
    end
    object Bevel4: TBevel
      Left = 952
      Top = 56
      Width = 17
      Height = 76
      Visible = False
    end
    object eRunNr: TcxTextEdit
      Left = 275
      Top = 85
      TabOrder = 4
      Visible = False
      Width = 41
    end
    object BitBtn2: TBitBtn
      Left = 248
      Top = 108
      Width = 70
      Height = 22
      Action = acSearchRunNo
      Caption = 'S'#246'k k'#246'rnr'
      TabOrder = 5
      Visible = False
    end
    object lcOWNER: TcxDBLookupComboBox
      Left = 168
      Top = 7
      DataBinding.DataField = 'OWNER'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      Properties.OnValidate = lcOWNERPropertiesValidate
      TabOrder = 0
      Width = 153
    end
    object lcPIPNAME: TcxDBLookupComboBox
      Left = 816
      Top = 83
      DataBinding.DataField = 'PIPNAME'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 11
      Visible = False
      Width = 145
    end
    object lcLIPName: TcxDBLookupComboBox
      Left = 816
      Top = 108
      DataBinding.DataField = 'LIPName'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 12
      Visible = False
      Width = 145
    end
    object lcPRODUCER: TcxDBLookupComboBox
      Left = 80
      Top = 84
      DataBinding.DataField = 'PRODUCER'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 1
      Visible = False
      Width = 145
    end
    object lcREGPOINT: TcxDBLookupComboBox
      Left = 80
      Top = 108
      DataBinding.DataField = 'REGPOINT'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 2
      Visible = False
      Width = 145
    end
    object lcGradestamp: TcxDBLookupComboBox
      Left = 427
      Top = 51
      DataBinding.DataField = 'Gradestamp'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 7
      Width = 145
    end
    object lcBarcode: TcxDBLookupComboBox
      Left = 427
      Top = 76
      DataBinding.DataField = 'Barcode'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 8
      Width = 145
    end
    object deRegDate: TcxDBDateEdit
      Left = 80
      Top = 60
      DataBinding.DataField = 'RegDate'
      DataBinding.DataSource = dsUserProp
      Properties.ImmediatePost = True
      TabOrder = 3
      Visible = False
      Width = 145
    end
    object beProduct: TcxDBButtonEdit
      Left = 427
      Top = 27
      DataBinding.DataField = 'ProductDescription'
      DataBinding.DataSource = dsUserProp
      Properties.Buttons = <
        item
          Caption = 'V'#228'lj produkt'
          Default = True
          Kind = bkText
        end
        item
          Caption = 'Rensa'
          Kind = bkText
        end
        item
          Caption = 'Standard'
          Kind = bkText
        end>
      Properties.MaxLength = 0
      Properties.OnButtonClick = beProductPropertiesButtonClick
      TabOrder = 6
      Width = 534
    end
    object Panel1: TPanel
      Left = 1
      Top = 170
      Width = 1009
      Height = 87
      Align = alBottom
      Caption = 'Panel1'
      TabOrder = 13
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 1007
        Height = 29
        Align = alTop
        TabOrder = 0
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 1005
          Height = 27
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object bcLengthOption: TcxComboBox
            Left = 344
            Top = 3
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Produktspecifika'
              'L'#228'ngdgrupp')
            Properties.MaxLength = 0
            TabOrder = 1
            Visible = False
            Width = 121
          end
          object lcLengthGroup: TcxDBLookupComboBox
            Left = 544
            Top = 3
            DataBinding.DataField = 'LengthGroup'
            DataBinding.DataSource = dsUserProp
            Properties.DropDownListStyle = lsFixedList
            Properties.ImmediatePost = True
            Properties.ListColumns = <>
            Properties.ListOptions.ShowHeader = False
            Properties.MaxLength = 0
            Properties.OnChange = lcLengthGroupPropertiesChange
            TabOrder = 2
            Width = 145
          end
          object cxLabel1: TcxLabel
            Left = 480
            Top = 8
            Caption = 'L'#228'ngdgrupp:'
          end
          object cxLabel2: TcxLabel
            Left = 264
            Top = 8
            Caption = 'L'#228'ngdalternativ:'
            Visible = False
          end
          object cxButton1: TcxButton
            Left = 8
            Top = 1
            Width = 113
            Height = 25
            Action = acCleanPcs
            LookAndFeel.Kind = lfFlat
            TabOrder = 0
          end
          object cdAutoColWidth: TcxDBCheckBox
            Left = 712
            Top = 6
            Caption = 'Automatisk kolumnbredd'
            DataBinding.DataField = 'AutoColWidth'
            DataBinding.DataSource = dsUserProp
            Properties.ImmediatePost = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Properties.OnChange = cdAutoColWidthPropertiesChange
            TabOrder = 3
            Width = 144
          end
          object cxButton3: TcxButton
            Left = 128
            Top = 1
            Width = 113
            Height = 25
            Action = acAddLengthColumn
            TabOrder = 6
          end
        end
      end
      object grdLengths: TcxGrid
        Left = 1
        Top = 30
        Width = 1007
        Height = 56
        Align = alClient
        TabOrder = 1
        object grdLengthsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmPkgs.dsmtPackages
          DataController.KeyFieldNames = 'RecId'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
        end
        object grdLengthsDBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          OnEditing = grdLengthsDBBandedTableView1Editing
          OnEditKeyDown = grdLengthsDBBandedTableView1EditKeyDown
          DataController.DataSource = dmPkgs.dsmtPackages
          DataController.KeyFieldNames = 'RecId'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = #196'ndrade l'#228'ngder och stycketal'
              Width = 549
            end>
        end
        object grdLengthsLevel1: TcxGridLevel
          GridView = grdLengthsDBBandedTableView1
        end
      end
    end
    object cbLIPChange: TcxDBCheckBox
      Left = 588
      Top = 65
      Caption = #196'ndra '#228'gare och/eller lager'
      DataBinding.DataField = 'LIPChange'
      DataBinding.DataSource = dsUserProp
      Properties.ImmediatePost = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Properties.OnChange = cbLIPChangePropertiesChange
      TabOrder = 10
      Visible = False
      Width = 153
    end
    object lcVERK: TcxDBLookupComboBox
      Left = 816
      Top = 60
      DataBinding.DataField = 'VERK'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 9
      Visible = False
      Width = 145
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
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.Shadow = True
      Style.IsFontAssigned = True
      Height = 20
      Width = 151
    end
    object cxLabel4: TcxLabel
      Left = 5
      Top = 35
      AutoSize = False
      Caption = 'Bokf'#246'r '#228'ndringar mot'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.Shadow = True
      Style.IsFontAssigned = True
      Visible = False
      Height = 20
      Width = 113
    end
    object cxLabel5: TcxLabel
      Left = 336
      Top = 3
      AutoSize = False
      Caption = 'Utf'#246'r dessa '#228'ndringar p'#229' paketen'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.Shadow = True
      Style.IsFontAssigned = True
      Height = 20
      Width = 169
    end
    object cxButton2: TcxButton
      Left = 427
      Top = 104
      Width = 75
      Height = 25
      Action = acResetChangeValues
      TabOrder = 17
    end
    object cxLabel6: TcxLabel
      Left = 355
      Top = 139
      Caption = 'Paketstorlek:'
    end
    object lcPackage_Size: TcxDBLookupComboBox
      Left = 427
      Top = 135
      DataBinding.DataField = 'Package_Size'
      DataBinding.DataSource = dsUserProp
      Properties.ClearKey = 46
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 10
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 19
      Width = 145
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 303
    Width = 1011
    Height = 255
    Align = alClient
    TabOrder = 6
    ExplicitTop = 304
    ExplicitHeight = 254
    object grdPaket: TcxGrid
      Left = 1
      Top = 31
      Width = 1009
      Height = 222
      Align = alClient
      TabOrder = 0
      object grdPaketDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmPkgs.ds_LoadPackages
        DataController.KeyFieldNames = 'LoadDetailNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object grdPaketDBTableView1PACKAGENO: TcxGridDBColumn
          Caption = 'PACKAGENO'
          DataBinding.FieldName = 'PACKAGENO'
        end
        object grdPaketDBTableView1PRODUCT: TcxGridDBColumn
          Caption = 'PRODUCT'
          DataBinding.FieldName = 'PRODUCT'
          Width = 318
        end
        object grdPaketDBTableView1PACKAGETYPENO: TcxGridDBColumn
          Caption = 'PACKAGETYPENO'
          DataBinding.FieldName = 'PACKAGETYPENO'
        end
        object grdPaketDBTableView1SUPP_CODE: TcxGridDBColumn
          Caption = 'SUPP_CODE'
          DataBinding.FieldName = 'SUPP_CODE'
        end
        object grdPaketDBTableView1M3_NET: TcxGridDBColumn
          Caption = 'M3_NET'
          DataBinding.FieldName = 'M3_NET'
        end
        object grdPaketDBTableView1PCS: TcxGridDBColumn
          Caption = 'PCS'
          DataBinding.FieldName = 'PCS'
        end
        object grdPaketDBTableView1M3_NOM: TcxGridDBColumn
          Caption = 'M3_NOM'
          DataBinding.FieldName = 'M3_NOM'
        end
        object grdPaketDBTableView1KVM: TcxGridDBColumn
          Caption = 'KVM'
          DataBinding.FieldName = 'KVM'
        end
        object grdPaketDBTableView1LOPM: TcxGridDBColumn
          Caption = 'LOPM'
          DataBinding.FieldName = 'LOPM'
        end
        object grdPaketDBTableView1ProductNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductNo'
        end
        object grdPaketDBTableView1INVENTORY: TcxGridDBColumn
          Caption = 'INVENTORY'
          DataBinding.FieldName = 'INVENTORY'
        end
        object grdPaketDBTableView1PCS_PER_LENGTH: TcxGridDBColumn
          Caption = 'PCS_PER_LENGTH'
          DataBinding.FieldName = 'PCS_PER_LENGTH'
        end
        object grdPaketDBTableView1OWNER: TcxGridDBColumn
          Caption = 'OWNER'
          DataBinding.FieldName = 'OWNER'
        end
        object grdPaketDBTableView1OWNERNO: TcxGridDBColumn
          DataBinding.FieldName = 'OWNERNO'
        end
        object grdPaketDBTableView1LOG_INVENTORY_NO: TcxGridDBColumn
          DataBinding.FieldName = 'LOG_INVENTORY_NO'
        end
        object grdPaketDBTableView1BAR_CODE: TcxGridDBColumn
          Caption = 'BAR_CODE'
          DataBinding.FieldName = 'BAR_CODE'
        end
        object grdPaketDBTableView1BARCODE_ID: TcxGridDBColumn
          DataBinding.FieldName = 'BARCODE_ID'
        end
        object grdPaketDBTableView1GRADE_STAMP: TcxGridDBColumn
          Caption = 'GRADE_STAMP'
          DataBinding.FieldName = 'GRADE_STAMP'
        end
        object grdPaketDBTableView1GRADESTAMPNO: TcxGridDBColumn
          DataBinding.FieldName = 'GRADESTAMPNO'
        end
        object grdPaketDBTableView1SUPPLIERNO: TcxGridDBColumn
          DataBinding.FieldName = 'SUPPLIERNO'
        end
        object grdPaketDBTableView1Old_PackageTypeNo: TcxGridDBColumn
          DataBinding.FieldName = 'Old_PackageTypeNo'
        end
        object grdPaketDBTableView1SurfacingNo: TcxGridDBColumn
          DataBinding.FieldName = 'SurfacingNo'
        end
        object grdPaketDBTableView1PIP: TcxGridDBColumn
          DataBinding.FieldName = 'PIP'
        end
        object grdPaketDBTableView1LoadDetailNo: TcxGridDBColumn
          DataBinding.FieldName = 'LoadDetailNo'
        end
        object grdPaketDBTableView1ACTTHICK: TcxGridDBColumn
          DataBinding.FieldName = 'ACTTHICK'
        end
        object grdPaketDBTableView1ACTWIDTH: TcxGridDBColumn
          DataBinding.FieldName = 'ACTWIDTH'
        end
        object grdPaketDBTableView1NOMTHICK: TcxGridDBColumn
          DataBinding.FieldName = 'NOMTHICK'
        end
        object grdPaketDBTableView1NOMWIDTH: TcxGridDBColumn
          DataBinding.FieldName = 'NOMWIDTH'
        end
        object grdPaketDBTableView1ROWNO: TcxGridDBColumn
          Caption = 'ROWNO'
          DataBinding.FieldName = 'ROWNO'
        end
        object grdPaketDBTableView1Status: TcxGridDBColumn
          DataBinding.FieldName = 'Status'
        end
        object grdPaketDBTableView1StatusText: TcxGridDBColumn
          DataBinding.FieldName = 'StatusText'
        end
      end
      object grdPaketDBBandedTableView1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmPkgs.ds_LoadPackages
        DataController.KeyFieldNames = 'ROWNO'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'KVM'
            Column = grdPaketDBBandedTableView1KVM
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'M3_NET'
            Column = grdPaketDBBandedTableView1M3_NET
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'M3_NOM'
            Column = grdPaketDBBandedTableView1M3_NOM
          end
          item
            Format = '#,###,###'
            Kind = skSum
            FieldName = 'PCS'
            Column = grdPaketDBBandedTableView1PCS
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'LOPM'
            Column = grdPaketDBBandedTableView1LOPM
          end
          item
            Format = '#####'
            Kind = skCount
            FieldName = 'PACKAGENO'
            Column = grdPaketDBBandedTableView1PACKAGENO
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Styles.OnGetContentStyle = grdPaketDBBandedTableView1StylesGetContentStyle
        Bands = <
          item
            Caption = 'PAKETID'
            FixedKind = fkLeft
            Options.HoldOwnColumnsOnly = True
            Width = 143
          end
          item
            Caption = 'PAKETDATA'
            Width = 1077
          end
          item
            Caption = #214'vrigt'
            Visible = False
            VisibleForCustomization = False
          end>
        object grdPaketDBBandedTableView1PACKAGENO: TcxGridDBBandedColumn
          Caption = 'PACKAGENO'
          DataBinding.FieldName = 'PACKAGENO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnValidate = grdPaketDBBandedTableView1PACKAGENOPropertiesValidate
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1SUPP_CODE: TcxGridDBBandedColumn
          Caption = 'Prefix'
          DataBinding.FieldName = 'SUPP_CODE'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 54
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1ROWNO: TcxGridDBBandedColumn
          Caption = 'ROWNO'
          DataBinding.FieldName = 'ROWNO'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1PRODUCT: TcxGridDBBandedColumn
          Caption = 'PRODUCT'
          DataBinding.FieldName = 'PRODUCT'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 274
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1PCS_PER_LENGTH: TcxGridDBBandedColumn
          Caption = 'PCS_PER_LENGTH'
          DataBinding.FieldName = 'PCS_PER_LENGTH'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 200
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1BAR_CODE: TcxGridDBBandedColumn
          Caption = 'BAR_CODE'
          DataBinding.FieldName = 'BAR_CODE'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 82
          Position.BandIndex = 1
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1GRADE_STAMP: TcxGridDBBandedColumn
          Caption = 'GRADE_STAMP'
          DataBinding.FieldName = 'GRADE_STAMP'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 76
          Position.BandIndex = 1
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1M3_NET: TcxGridDBBandedColumn
          Caption = 'M3_NET'
          DataBinding.FieldName = 'M3_NET'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1PCS: TcxGridDBBandedColumn
          Caption = 'PCS'
          DataBinding.FieldName = 'PCS'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1M3_NOM: TcxGridDBBandedColumn
          Caption = 'M3_NOM'
          DataBinding.FieldName = 'M3_NOM'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1KVM: TcxGridDBBandedColumn
          Caption = 'KVM'
          DataBinding.FieldName = 'KVM'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1LOPM: TcxGridDBBandedColumn
          Caption = 'LOPM'
          DataBinding.FieldName = 'LOPM'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1Status: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Status'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1INVENTORY: TcxGridDBBandedColumn
          Caption = 'INVENTORY'
          DataBinding.FieldName = 'INVENTORY'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 96
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1OWNER: TcxGridDBBandedColumn
          Caption = 'OWNER'
          DataBinding.FieldName = 'OWNER'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 93
          Position.BandIndex = 1
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1PACKAGETYPENO: TcxGridDBBandedColumn
          Caption = 'PACKAGETYPENO'
          DataBinding.FieldName = 'PACKAGETYPENO'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1ProductNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ProductNo'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1OWNERNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OWNERNO'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1LOG_INVENTORY_NO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LOG_INVENTORY_NO'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1BARCODE_ID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BARCODE_ID'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1GRADESTAMPNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'GRADESTAMPNO'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1SUPPLIERNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SUPPLIERNO'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1Old_PackageTypeNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Old_PackageTypeNo'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SurfacingNo'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1PIP: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PIP'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1LoadDetailNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LoadDetailNo'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1ACTTHICK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTTHICK'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1ACTWIDTH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTWIDTH'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1NOMTHICK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOMTHICK'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1NOMWIDTH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOMWIDTH'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1StatusText: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StatusText'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object grdPaketDBBandedTableView1InvNr: TcxGridDBBandedColumn
          DataBinding.FieldName = 'InvNr'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 1
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
      end
      object grdPaketLevel1: TcxGridLevel
        GridView = grdPaketDBBandedTableView1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1009
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Caption = 'PAKET ATT '#196'NDRA'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object bbClearPkgGrid: TBitBtn
        Left = 176
        Top = 2
        Width = 75
        Height = 25
        Action = acCleanPkgs
        Caption = 'Rensa tabell'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object BitBtn1: TBitBtn
        Left = 19
        Top = 2
        Width = 75
        Height = 25
        Action = acAppendPkg
        Caption = 'L'#228'gg till rad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object BitBtn3: TBitBtn
        Left = 99
        Top = 2
        Width = 75
        Height = 25
        Action = acRemoveRow
        Caption = 'Ta bort rad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 558
    Width = 1011
    Height = 20
    Images = dmsConnector.ilStatus
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.ImageIndex = 1
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.ImageIndex = 3
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Pkgs'
      'Lengths')
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
    UseSystemFont = False
    Left = 472
    Top = 392
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 276
      FloatTop = 213
      FloatClientWidth = 23
      FloatClientHeight = 22
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbSaveLoad'
        end
        item
          Visible = True
          ItemName = 'lbPkgNoSerie'
        end
        item
          Visible = True
          ItemName = 'bbPkgNoByLO'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'lbClose'
        end>
      MultiLine = True
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
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
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbClearLengths'
        end>
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object lbSaveLoad: TdxBarLargeButton
      Action = acSave
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
    object bbPkgNoByLO: TdxBarLargeButton
      Action = acPkgNoFrom_LO
      Category = 0
    end
    object lbAddPackage: TdxBarLargeButton
      Caption = 'L'#228'gg till'
      Category = 1
      Hint = 'L'#228'gg till'
      Visible = ivAlways
      LargeImageIndex = 0
    end
    object lbRemovePackage: TdxBarLargeButton
      Caption = 'Ta bort rad'
      Category = 1
      Hint = 'Remove row'
      Visible = ivAlways
    end
    object lbPkgInfo: TdxBarLargeButton
      Caption = 'Paket info'
      Category = 1
      Hint = 'Paket info'
      Visible = ivAlways
    end
    object bbCustomPkgGrid: TdxBarButton
      Caption = #196'ndra layout'
      Category = 1
      Hint = #196'ndra layout'
      Visible = ivAlways
    end
    object bbClearLengths: TdxBarButton
      Action = acCleanPcs
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
        ItemName = 'lbRemovePackage'
      end
      item
        Visible = True
        ItemName = 'lbPkgInfo'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbCustomPkgGrid'
      end>
    UseOwnFont = False
    Left = 304
    Top = 344
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 448
    Top = 344
    Bitmap = {
      494C010107000900040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      A500FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A500000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFF7EF00FFEFD600CE630000CE63
      0000CE630000FFE7C600FFE7C600CE630000CE630000CE630000FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFF700FFF7EF00E7A56300DE7B
      0000CE630000FFEFD600FFE7C600E7A56300DE7B0000CE630000FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C0000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFEFD600FFEFD600E7A56300E7A56300CE630000FFDEB500FFDE
      B500FFD6AD00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A50000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7C600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C0000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7
      C600FFDEB500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A50000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00FFFFFF00CE630000CE63
      0000CE630000FFFFFF00FFF7EF00CE630000CE630000CE630000FFEFD600FFE7
      C600FFE7C600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00E7A56300DE7B
      0000CE630000FFFFFF00FFFFFF00E7A56300DE7B0000CE630000FFEFD600FFE7
      C600FFE7C600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFFFFF00FFFFFF00E7A56300E7A56300CE630000FFEFD600FFEF
      D600FFE7C600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFF7EF00FFFFFF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00FFFFFF00CE630000CE63
      0000CE630000FFFFFF00FFFFFF00CE630000CE630000CE630000FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00E7A56300DE7B
      0000CE630000FFFFFF00FFFFFF00E7A56300DE7B0000CE630000FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFFFFF00FFFFFF00E7A56300E7A56300CE630000FFF7EF00FFF7
      EF00FFF7EF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7EF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFF000000FF0C1FFF
      FFF9FFFFFF000000FC0007FFFFF1C00003000000F00001C7FFE3C00003000000
      E00003C3FF87C00003000000800003C1FF0FC00003000000800003E0FE1FC000
      03000000800003F07C3FC00003000000800003FC307FC00003000000800003FE
      00FFC00003000000800003FF01FFC00003000000C00003FF83FFC00003000000
      E00007FF01FFC00003000000F8000FFE00FFC00003000000F8001FFC187FC000
      03000000FC007FF83C3FC00003000000FC00FFF07F1FC00003000000FC01FFE0
      FF8FC00003000000FC01FFC1FFEFC00003000000FC01FF83FFFFC00003000000
      FC01FF87FFFFE00007000000F803FF8FFFFFFFFFFF000000F803FFFFFFFFFFFF
      FF000000F007FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFE00003FF
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
  object images1616: TImageList
    Left = 408
    Top = 344
    Bitmap = {
      494C010103000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C006B6B6B00525252004A4A4A004A4A4A004A4A4A00525252009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      00000000000052A54A00009408006BB563000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000052A54A00009408006BB563000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      FD00E7CEC600EFDED600F7E7D600F7E7D600EFDED600EFDED600CEBDB5005A5A
      5A00737373009C9C9C0000000000000000000000000000000000000000000000
      00000000000018B5290000BD2100009400008CBD7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018B5290000BD2100009400008CBD7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEC6BD00F7E7
      D600F7F7F700E7E7E700CEB5A500D6AD9400DEC6BD00EFF7F700F7EFEF00EFDE
      D6008C847B006B6B6B009C9C9C00000000000000000000000000000000000000
      00006BB5630000BD210000C6290000A50000319C310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006BB5630000BD210000C6290000A50000319C310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7D6CE00F7E7DE00F7FF
      FF00CE9C8400B54A1000BD633900D6AD9C00C65A2100BD522100D6AD9C00F7FF
      FF00F7DED6007B736B0073737300000000000000000000000000000000000000
      0000009C100000CE310000C6290000AD100000940000A5C69400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000009C100000CE310000C6290000AD100000940000A5C69400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFDED600F7FFFF00C67B
      5A00BD4A1000C6521800C6A59400FFFFFF00DE947300BD4A1000B54A1000CE9C
      8400F7FFFF00EFDED6005A5A5A009C9C9C0000000000000000000000000052A5
      4A0000CE310000C6290000FF630000CE3100009C0000008C0000000000000000
      00000000000000000000000000000000000000000000000000000000000052A5
      4A0000CE310000C6290000FF630000CE3100009C0000008C0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7E7E700F7F7F700D6AD9400BD4A
      1000CE633100CE632900CE6B3900DE8C6B00CE632900CE633100C65A2900B54A
      1000DEC6BD00F7EFE700A59C94006363630000000000000000000000000018B5
      290029CE5A0000FF630000FF630000BD210000C62900009400008CBD7B000000
      00000000000000000000000000000000000000000000000000000000000018B5
      290029CE5A0000FF630000FF630000BD210000C62900009400008CBD7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7F7F700C6633100C65A
      2900CE6B3100CE5A2100CE8C6B00F7E7DE00CE6B3900C65A2100CE633100C652
      1800C67B5200F7FFFF00DECEC6005252520000000000000000000000000018C6
      420000FF630000FF630052A54A0052A54A0000C6290000A50000319C31000000
      00000000000000000000000000000000000000000000000000000000000018C6
      420000FF630000FF630052A54A0052A54A0000C6290000A50000319C31000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700EFDED600C65A2100CE63
      3100CE633100CE5A2100C6846B00FFFFFF00EFAD9400C64A1000CE633100CE63
      2900C65A2900F7EFEF00EFDED600525252000000000000000000000000000000
      000000AD210000AD2100000000000000000000AD180000C6290000940000A5C6
      9400000000000000000000000000000000000000000000000000000000000000
      000000AD210000AD2100000000000000000000AD180000C6290000940000A5C6
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7DECE00CE5A2100CE63
      3100CE633100CE632900C6522100CEB5A500FFFFFF00E79C7B00C6521800CE63
      2900C65A2900F7EFEF00EFDED600525252000000000000000000000000000000
      00000000000000000000000000000000000031B5420000C62900009C0000008C
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031B5420000C62900009C0000008C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7EFE700DE6B3100D66B
      3100CE632900C65A2100C6521800BD4A1000DECEC600FFFFFF00D6734200CE5A
      2100CE6B3900FFF7F700EFDED6006B6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5210000C629000094
      00008CBD7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5210000C629000094
      00008CBD7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7E7E700FFFFFF00F79C6B00E763
      2900CE8C6B00EFE7DE00D67B5200BD310000D69C7B00FFFFFF00DE8C6300CE52
      1800E79C7300FFFFFF00DEC6BD00ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000052A54A0000C6290029AD
      390031B542000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052A54A0000C6290029AD
      390031B542000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7EFEF00FFEFDE00FF8C
      4A00DE845A00EFFFFF00FFFFFF00E7BDA500F7FFFF00EFFFFF00E7733900E773
      3900FFEFEF00F7E7DE00A59C9400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029AD4A005AE7
      A50029AD39008CBD7B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029AD4A005AE7
      A50029AD39008CBD7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFDED600FFFFFF00FFEF
      CE00FFB57300EFAD8400EFE7DE00EFF7F700EFE7DE00F7A57B00FF8C4A00FFDE
      CE00FFFFFF00EFDED600CECEC600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031B5420000D6
      42008CBD7B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031B5420000D6
      42008CBD7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7EFEF00EFDED600FFFF
      FF00FFFFFF00FFF7C600FFDEAD00FFCE9400FFCE9400FFD6AD00FFF7F700FFFF
      FF00EFDED600CECEC60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5C6
      9400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5C6
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7EFEF00EFDE
      D600F7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7DE00EFDE
      D600DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7EF
      E700F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F00FF8FFF8FF0000E003F87FF87F0000
      C001F07FF07F00008001F03FF03F00008000E03FE03F00000000E01FE01F0000
      0000E01FE01F00000000F30FF30F00000000FF0FFF0F00000000FF87FF870000
      0000FF87FF8700000001FFC3FFC300008001FFC7FFC700008003FFEFFFEF0000
      C007FFFFFFFF0000E00FFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 496
    Top = 344
    object acSearchRunNo: TAction
      Caption = 'S'#246'k k'#246'rnr'
      OnExecute = acSearchRunNoExecute
    end
    object acSave: TAction
      Caption = 'Utf'#246'r '#228'ndringar'
      ImageIndex = 0
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acPkgNoSerie: TAction
      Caption = 'Ange paketnr serie'
      ImageIndex = 6
      OnExecute = acPkgNoSerieExecute
    end
    object acPkgNoFrom_LO: TAction
      Caption = 'Paketnr fr'#229'n LO'
      ImageIndex = 6
      OnExecute = acPkgNoFrom_LOExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng'
      ImageIndex = 3
      OnExecute = acCloseExecute
    end
    object acAppendPkg: TAction
      Caption = 'L'#228'gg till rad'
      OnExecute = acAppendPkgExecute
      OnUpdate = acAppendPkgUpdate
    end
    object acCleanPkgs: TAction
      Caption = 'Rensa tabell'
      OnExecute = acCleanPkgsExecute
      OnUpdate = acCleanPkgsUpdate
    end
    object acCleanPcs: TAction
      Caption = 'Rensa stycketal'
      OnExecute = acCleanPcsExecute
    end
    object acRemoveRow: TAction
      Caption = 'Ta bort rad'
      OnExecute = acRemoveRowExecute
      OnUpdate = acRemoveRowUpdate
    end
    object acPkgInfo: TAction
      Caption = 'acPkgInfo'
      OnExecute = acPkgInfoExecute
    end
    object acResetChangeValues: TAction
      Caption = #197'terst'#228'll'
      OnExecute = acResetChangeValuesExecute
    end
    object acGetDefaultProduct: TAction
      Caption = 'acGetDefaultProduct'
    end
    object acAddLengthColumn: TAction
      Caption = 'L'#228'gg till speciall'#228'ngd'
      OnExecute = acAddLengthColumnExecute
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
      OnChange = mtUserPropVerkNoChange
    end
    object mtUserPropOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
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
    object mtUserPropLIPChange: TIntegerField
      FieldName = 'LIPChange'
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
    object mtUserPropSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtUserPropNOMTHICK: TFloatField
      FieldName = 'NOMTHICK'
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
    object mtUserPropALMM: TFloatField
      FieldName = 'ALMM'
    end
    object mtUserPropPackage_Size: TStringField
      FieldKind = fkLookup
      FieldName = 'Package_Size'
      LookupDataSet = dmsSystem.cds_Package_Size
      LookupKeyFields = 'PackageSizeNo'
      LookupResultField = 'PackageSizeName'
      KeyFields = 'NewItemRow'
      Size = 50
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
    Top = 384
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdPaket
    PopupMenus = <>
    Left = 248
    Top = 406
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 344
    Top = 414
    PixelsPerInch = 96
    object cxStyleRedBg: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
  end
  object siLangLinked_fchgPkgVard: TsiLangLinked
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
      'ListField')
    Left = 496
    Top = 296
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660063006800670050006B0067005600610072006400
      0100C4006E006400720061002000700061006B0065007400200028006C006100
      6700650072007600E5007200640029000100010001000D000A004C0061006200
      65006C0031000100470072006100640065007300740061006D0070003A000100
      010001000D000A004C006100620065006C003200010042006100720063006F00
      640065003A000100010001000D000A004C006100620065006C00370001005000
      72006F00640075006B0074003A000100010001000D000A004C00610062006500
      6C00380001004D00E4007400700075006E006B0074003A000100010001000D00
      0A004C006100620065006C003100320001004C00610067006500720073007400
      E4006C006C0065003A000100010001000D000A004C006100620065006C003100
      330001004C006100670065007200670072007500700070003A00010001000100
      0D000A004C006100620065006C00310034000100520065006700690073007400
      720065007200610064003A000100010001000D000A004C006100620065006C00
      3100350001005600650072006B003A000100010001000D000A004C0061006200
      65006C00330001004B00F60072006E0072003A000100010001000D000A004C00
      6100620065006C00340001004E0059002000E40067006100720065003A000100
      010001000D000A00500061006E0065006C0031000100500061006E0065006C00
      31000100010001000D000A00630078004C006100620065006C00310001004C00
      E4006E0067006400670072007500700070003A000100010001000D000A006300
      78004C006100620065006C00320001004C00E4006E006700640061006C007400
      650072006E0061007400690076003A000100010001000D000A00630064004100
      750074006F0043006F006C005700690064007400680001004100750074006F00
      6D0061007400690073006B0020006B006F006C0075006D006E00620072006500
      640064000100010001000D000A00630062004C00490050004300680061006E00
      670065000100C4006E006400720061002000E400670061007200650020006F00
      630068002F0065006C006C006500720020006C00610067006500720001000100
      01000D000A00630078004C006100620065006C00330001004800E4006D007400
      61002000700061006B0065007400200073006F006D002000740069006C006C00
      6800F60072002000E40067006100720065000100010001000D000A0063007800
      4C006100620065006C003400010042006F006B006600F60072002000E4006E00
      6400720069006E0067006100720020006D006F0074000100010001000D000A00
      630078004C006100620065006C0035000100550074006600F600720020006400
      65007300730061002000E4006E006400720069006E0067006100720020007000
      E5002000700061006B006500740065006E000100010001000D000A0063007800
      4C006100620065006C0036000100500061006B0065007400730074006F007200
      6C0065006B003A000100010001000D000A00670072006400500061006B006500
      7400440042005400610062006C00650056006900650077003100500041004300
      4B004100470045004E004F0001005000410043004B004100470045004E004F00
      0100010001000D000A00670072006400500061006B0065007400440042005400
      610062006C00650056006900650077003100500052004F004400550043005400
      0100500052004F0044005500430054000100010001000D000A00670072006400
      500061006B0065007400440042005400610062006C0065005600690065007700
      31005000410043004B0041004700450054005900500045004E004F0001005000
      410043004B0041004700450054005900500045004E004F000100010001000D00
      0A00670072006400500061006B0065007400440042005400610062006C006500
      5600690065007700310053005500500050005F0043004F004400450001005300
      5500500050005F0043004F00440045000100010001000D000A00670072006400
      500061006B0065007400440042005400610062006C0065005600690065007700
      31004D0033005F004E004500540001004D0033005F004E004500540001000100
      01000D000A00670072006400500061006B006500740044004200540061006200
      6C00650056006900650077003100500043005300010050004300530001000100
      01000D000A00670072006400500061006B006500740044004200540061006200
      6C006500560069006500770031004D0033005F004E004F004D0001004D003300
      5F004E004F004D000100010001000D000A00670072006400500061006B006500
      7400440042005400610062006C006500560069006500770031004B0056004D00
      01004B0056004D000100010001000D000A00670072006400500061006B006500
      7400440042005400610062006C006500560069006500770031004C004F005000
      4D0001004C004F0050004D000100010001000D000A0067007200640050006100
      6B0065007400440042005400610062006C006500560069006500770031005000
      72006F0064007500630074004E006F000100500072006F006400750063007400
      4E006F000100010001000D000A00670072006400500061006B00650074004400
      42005400610062006C0065005600690065007700310049004E00560045004E00
      54004F0052005900010049004E00560045004E0054004F005200590001000100
      01000D000A00670072006400500061006B006500740044004200540061006200
      6C006500560069006500770031005000430053005F005000450052005F004C00
      45004E0047005400480001005000430053005F005000450052005F004C004500
      4E004700540048000100010001000D000A00670072006400500061006B006500
      7400440042005400610062006C006500560069006500770031004F0057004E00
      4500520001004F0057004E00450052000100010001000D000A00670072006400
      500061006B0065007400440042005400610062006C0065005600690065007700
      31004F0057004E00450052004E004F0001004F0057004E00450052004E004F00
      0100010001000D000A00670072006400500061006B0065007400440042005400
      610062006C006500560069006500770031004C004F0047005F0049004E005600
      45004E0054004F00520059005F004E004F0001004C004F0047005F0049004E00
      560045004E0054004F00520059005F004E004F000100010001000D000A006700
      72006400500061006B0065007400440042005400610062006C00650056006900
      6500770031004200410052005F0043004F004400450001004200410052005F00
      43004F00440045000100010001000D000A00670072006400500061006B006500
      7400440042005400610062006C00650056006900650077003100420041005200
      43004F00440045005F0049004400010042004100520043004F00440045005F00
      490044000100010001000D000A00670072006400500061006B00650074004400
      42005400610062006C0065005600690065007700310047005200410044004500
      5F005300540041004D0050000100470052004100440045005F00530054004100
      4D0050000100010001000D000A00670072006400500061006B00650074004400
      42005400610062006C0065005600690065007700310047005200410044004500
      5300540041004D0050004E004F00010047005200410044004500530054004100
      4D0050004E004F000100010001000D000A00670072006400500061006B006500
      7400440042005400610062006C00650056006900650077003100530055005000
      50004C004900450052004E004F00010053005500500050004C00490045005200
      4E004F000100010001000D000A00670072006400500061006B00650074004400
      42005400610062006C006500560069006500770031004F006C0064005F005000
      610063006B0061006700650054007900700065004E006F0001004F006C006400
      5F005000610063006B0061006700650054007900700065004E006F0001000100
      01000D000A00670072006400500061006B006500740044004200540061006200
      6C0065005600690065007700310053007500720066006100630069006E006700
      4E006F00010053007500720066006100630069006E0067004E006F0001000100
      01000D000A00670072006400500061006B006500740044004200540061006200
      6C00650056006900650077003100500049005000010050004900500001000100
      01000D000A00670072006400500061006B006500740044004200540061006200
      6C006500560069006500770031004C006F006100640044006500740061006900
      6C004E006F0001004C006F0061006400440065007400610069006C004E006F00
      0100010001000D000A00670072006400500061006B0065007400440042005400
      610062006C006500560069006500770031004100430054005400480049004300
      4B00010041004300540054004800490043004B000100010001000D000A006700
      72006400500061006B0065007400440042005400610062006C00650056006900
      6500770031004100430054005700490044005400480001004100430054005700
      49004400540048000100010001000D000A00670072006400500061006B006500
      7400440042005400610062006C006500560069006500770031004E004F004D00
      54004800490043004B0001004E004F004D0054004800490043004B0001000100
      01000D000A00670072006400500061006B006500740044004200540061006200
      6C006500560069006500770031004E004F004D00570049004400540048000100
      4E004F004D00570049004400540048000100010001000D000A00670072006400
      500061006B0065007400440042005400610062006C0065005600690065007700
      310052004F0057004E004F00010052004F0057004E004F000100010001000D00
      0A00670072006400500061006B0065007400440042005400610062006C006500
      5600690065007700310053007400610074007500730001005300740061007400
      750073000100010001000D000A00670072006400500061006B00650074004400
      42005400610062006C0065005600690065007700310053007400610074007500
      7300540065007800740001005300740061007400750073005400650078007400
      0100010001000D000A00670072006400500061006B0065007400440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      410043004B004100470045004E004F0001005000410043004B00410047004500
      4E004F000100010001000D000A00670072006400500061006B00650074004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310053005500500050005F0043004F0044004500010050007200650066006900
      78000100010001000D000A00670072006400500061006B006500740044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      52004F0057004E004F00010052004F0057004E004F000100010001000D000A00
      670072006400500061006B006500740044004200420061006E00640065006400
      5400610062006C00650056006900650077003100500052004F00440055004300
      54000100500052004F0044005500430054000100010001000D000A0067007200
      6400500061006B006500740044004200420061006E0064006500640054006100
      62006C006500560069006500770031005000430053005F005000450052005F00
      4C0045004E0047005400480001005000430053005F005000450052005F004C00
      45004E004700540048000100010001000D000A00670072006400500061006B00
      6500740044004200420061006E006400650064005400610062006C0065005600
      69006500770031004200410052005F0043004F00440045000100420041005200
      5F0043004F00440045000100010001000D000A00670072006400500061006B00
      6500740044004200420061006E006400650064005400610062006C0065005600
      6900650077003100470052004100440045005F005300540041004D0050000100
      470052004100440045005F005300540041004D0050000100010001000D000A00
      670072006400500061006B006500740044004200420061006E00640065006400
      5400610062006C006500560069006500770031004D0033005F004E0045005400
      01004D0033005F004E00450054000100010001000D000A006700720064005000
      61006B006500740044004200420061006E006400650064005400610062006C00
      6500560069006500770031005000430053000100500043005300010001000100
      0D000A00670072006400500061006B006500740044004200420061006E006400
      650064005400610062006C006500560069006500770031004D0033005F004E00
      4F004D0001004D0033005F004E004F004D000100010001000D000A0067007200
      6400500061006B006500740044004200420061006E0064006500640054006100
      62006C006500560069006500770031004B0056004D0001004B0056004D000100
      010001000D000A00670072006400500061006B00650074004400420042006100
      6E006400650064005400610062006C006500560069006500770031004C004F00
      50004D0001004C004F0050004D000100010001000D000A006700720064005000
      61006B006500740044004200420061006E006400650064005400610062006C00
      6500560069006500770031005300740061007400750073000100530074006100
      7400750073000100010001000D000A00670072006400500061006B0065007400
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310049004E00560045004E0054004F0052005900010049004E0056004500
      4E0054004F00520059000100010001000D000A00670072006400500061006B00
      6500740044004200420061006E006400650064005400610062006C0065005600
      69006500770031004F0057004E004500520001004F0057004E00450052000100
      010001000D000A00670072006400500061006B00650074004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050004100
      43004B0041004700450054005900500045004E004F0001005000410043004B00
      41004700450054005900500045004E004F000100010001000D000A0067007200
      6400500061006B006500740044004200420061006E0064006500640054006100
      62006C00650056006900650077003100500072006F0064007500630074004E00
      6F000100500072006F0064007500630074004E006F000100010001000D000A00
      670072006400500061006B006500740044004200420061006E00640065006400
      5400610062006C006500560069006500770031004F0057004E00450052004E00
      4F0001004F0057004E00450052004E004F000100010001000D000A0067007200
      6400500061006B006500740044004200420061006E0064006500640054006100
      62006C006500560069006500770031004C004F0047005F0049004E0056004500
      4E0054004F00520059005F004E004F0001004C004F0047005F0049004E005600
      45004E0054004F00520059005F004E004F000100010001000D000A0067007200
      6400500061006B006500740044004200420061006E0064006500640054006100
      62006C0065005600690065007700310042004100520043004F00440045005F00
      49004400010042004100520043004F00440045005F0049004400010001000100
      0D000A00670072006400500061006B006500740044004200420061006E006400
      650064005400610062006C006500560069006500770031004700520041004400
      45005300540041004D0050004E004F0001004700520041004400450053005400
      41004D0050004E004F000100010001000D000A00670072006400500061006B00
      6500740044004200420061006E006400650064005400610062006C0065005600
      690065007700310053005500500050004C004900450052004E004F0001005300
      5500500050004C004900450052004E004F000100010001000D000A0067007200
      6400500061006B006500740044004200420061006E0064006500640054006100
      62006C006500560069006500770031004F006C0064005F005000610063006B00
      61006700650054007900700065004E006F0001004F006C0064005F0050006100
      63006B0061006700650054007900700065004E006F000100010001000D000A00
      670072006400500061006B006500740044004200420061006E00640065006400
      5400610062006C00650056006900650077003100530075007200660061006300
      69006E0067004E006F00010053007500720066006100630069006E0067004E00
      6F000100010001000D000A00670072006400500061006B006500740044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      50004900500001005000490050000100010001000D000A006700720064005000
      61006B006500740044004200420061006E006400650064005400610062006C00
      6500560069006500770031004C006F0061006400440065007400610069006C00
      4E006F0001004C006F0061006400440065007400610069006C004E006F000100
      010001000D000A00670072006400500061006B00650074004400420042006100
      6E006400650064005400610062006C0065005600690065007700310041004300
      540054004800490043004B00010041004300540054004800490043004B000100
      010001000D000A00670072006400500061006B00650074004400420042006100
      6E006400650064005400610062006C0065005600690065007700310041004300
      5400570049004400540048000100410043005400570049004400540048000100
      010001000D000A00670072006400500061006B00650074004400420042006100
      6E006400650064005400610062006C006500560069006500770031004E004F00
      4D0054004800490043004B0001004E004F004D0054004800490043004B000100
      010001000D000A00670072006400500061006B00650074004400420042006100
      6E006400650064005400610062006C006500560069006500770031004E004F00
      4D005700490044005400480001004E004F004D00570049004400540048000100
      010001000D000A00670072006400500061006B00650074004400420042006100
      6E006400650064005400610062006C0065005600690065007700310053007400
      6100740075007300540065007800740001005300740061007400750073005400
      6500780074000100010001000D000A00670072006400500061006B0065007400
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310049006E0076004E007200010049006E0076004E007200010001000100
      0D000A00500061006E0065006C0032000100500041004B004500540020004100
      540054002000C4004E004400520041000100010001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200310001004300
      7500730074006F006D00200031000100010001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003200010043007500
      730074006F006D00200032000100010001000D000A006C006200410064006400
      5000610063006B0061006700650001004C00E400670067002000740069006C00
      6C000100010001000D000A006C006200520065006D006F007600650050006100
      63006B00610067006500010054006100200062006F0072007400200072006100
      64000100010001000D000A006C00620050006B00670049006E0066006F000100
      500061006B0065007400200069006E0066006F000100010001000D000A006200
      620043007500730074006F006D0050006B00670047007200690064000100C400
      6E0064007200610020006C00610079006F00750074000100010001000D000A00
      61006300530065006100720063006800520075006E004E006F0001005300F600
      6B0020006B00F60072006E0072000100010001000D000A006100630053006100
      760065000100550074006600F60072002000E4006E006400720069006E006700
      610072000100010001000D000A006100630050006B0067004E006F0053006500
      720069006500010041006E00670065002000700061006B00650074006E007200
      2000730065007200690065000100010001000D000A006100630050006B006700
      4E006F00460072006F006D005F004C004F000100500061006B00650074006E00
      7200200066007200E5006E0020004C004F000100010001000D000A0061006300
      43006C006F0073006500010053007400E4006E0067000100010001000D000A00
      6100630041007000700065006E00640050006B00670001004C00E40067006700
      2000740069006C006C0020007200610064000100010001000D000A0061006300
      43006C00650061006E0050006B00670073000100520065006E00730061002000
      74006100620065006C006C000100010001000D000A006100630043006C006500
      61006E005000630073000100520065006E007300610020007300740079006300
      6B006500740061006C000100010001000D000A0061006300520065006D006F00
      7600650052006F007700010054006100200062006F0072007400200072006100
      64000100010001000D000A006100630050006B00670049006E0066006F000100
      6100630050006B00670049006E0066006F000100010001000D000A0061006300
      520065007300650074004300680061006E0067006500560061006C0075006500
      73000100C50074006500720073007400E4006C006C000100010001000D000A00
      61006300470065007400440065006600610075006C007400500072006F006400
      750063007400010061006300470065007400440065006600610075006C007400
      500072006F0064007500630074000100010001000D000A006100630041006400
      64004C0065006E0067007400680043006F006C0075006D006E0001004C00E400
      670067002000740069006C006C0020007300700065006300690061006C006C00
      E4006E00670064000100010001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A006C0062004100640064005000
      610063006B0061006700650001004C00E400670067002000740069006C006C00
      010001000D000A006C006200520065006D006F00760065005000610063006B00
      6100670065000100520065006D006F0076006500200072006F00770001000100
      0D000A006C00620050006B00670049006E0066006F000100500061006B006500
      7400200069006E0066006F00010001000D000A00620062004300750073007400
      6F006D0050006B00670047007200690064000100C4006E006400720061002000
      6C00610079006F0075007400010001000D000A00730074004400690073007000
      6C00610079004C006100620065006C0073005F0055006E00690063006F006400
      65000D000A006D0074005500730065007200500072006F007000560065007200
      6B004E006F0001005600650072006B004E006F00010001000D000A006D007400
      5500730065007200500072006F0070004F0077006E00650072004E006F000100
      4F0077006E00650072004E006F00010001000D000A006D007400550073006500
      7200500072006F0070005000490050004E006F0001005000490050004E006F00
      010001000D000A006D0074005500730065007200500072006F0070004C004900
      50004E006F0001004C00490050004E006F00010001000D000A006D0074005500
      730065007200500072006F00700049006E007000750074004F00700074006900
      6F006E00010049006E007000750074004F007000740069006F006E0001000100
      0D000A006D0074005500730065007200500072006F0070005200650067005000
      6F0069006E0074004E006F00010052006500670050006F0069006E0074004E00
      6F00010001000D000A006D0074005500730065007200500072006F0070005200
      6500670044006100740065000100520065006700440061007400650001000100
      0D000A006D0074005500730065007200500072006F00700043006F0070007900
      500063007300010043006F0070007900500063007300010001000D000A006D00
      74005500730065007200500072006F007000520075006E004E006F0001005200
      75006E004E006F00010001000D000A006D007400550073006500720050007200
      6F007000500072006F00640075006300650072004E006F000100500072006F00
      640075006300650072004E006F00010001000D000A006D007400550073006500
      7200500072006F0070004100750074006F0043006F006C005700690064007400
      680001004100750074006F0043006F006C005700690064007400680001000100
      0D000A006D0074005500730065007200500072006F0070005300750070007000
      6C0069006500720043006F0064006500010053007500700070006C0069006500
      720043006F0064006500010001000D000A006D00740055007300650072005000
      72006F0070004C0065006E006700740068004F007000740069006F006E000100
      4C0065006E006700740068004F007000740069006F006E00010001000D000A00
      6D0074005500730065007200500072006F0070004C0065006E00670074006800
      470072006F00750070004E006F0001004C0065006E0067007400680047007200
      6F00750070004E006F00010001000D000A006D00740055007300650072005000
      72006F0070004E00650077004900740065006D0052006F00770001004E006500
      77004900740065006D0052006F007700010001000D000A006D00740055007300
      65007200500072006F007000470072006100640065005300740061006D007000
      4E006F000100470072006100640065005300740061006D0070004E006F000100
      01000D000A006D0074005500730065007200500072006F007000420061007200
      43006F00640065004E006F00010042006100720043006F00640065004E006F00
      010001000D000A006D0074005500730065007200500072006F0070004C006500
      6E00670074006800470072006F007500700001004C0065006E00670074006800
      470072006F0075007000010001000D000A006D00740055007300650072005000
      72006F0070004C00490050004E0061006D00650001004C00490050004E006100
      6D006500010001000D000A006D0074005500730065007200500072006F007000
      5000490050004E0041004D00450001005000490050004E0041004D0045000100
      01000D000A006D0074005500730065007200500072006F007000520045004700
      50004F0049004E005400010052004500470050004F0049004E00540001000100
      0D000A006D0074005500730065007200500072006F007000500052004F004400
      55004300450052000100500052004F0044005500430045005200010001000D00
      0A006D0074005500730065007200500072006F0070004F0057004E0045005200
      01004F0057004E0045005200010001000D000A006D0074005500730065007200
      500072006F0070005600450052004B0001005600450052004B00010001000D00
      0A006D0074005500730065007200500072006F00700052006F006C0065005400
      790070006500010052006F006C0065005400790070006500010001000D000A00
      6D0074005500730065007200500072006F007000470072006100640065007300
      740061006D0070000100470072006100640065007300740061006D0070000100
      01000D000A006D0074005500730065007200500072006F007000420061007200
      63006F0064006500010042006100720063006F0064006500010001000D000A00
      6D0074005500730065007200500072006F007000500072006F00640075006300
      74004400650073006300720069007000740069006F006E000100500072006F00
      64007500630074004400650073006300720069007000740069006F006E000100
      01000D000A006D0074005500730065007200500072006F007000500072006F00
      64007500630074004E006F000100500072006F0064007500630074004E006F00
      010001000D000A006D0074005500730065007200500072006F00700050007200
      6F006400750063007400470072006F00750070004E006F000100500072006F00
      6400750063007400470072006F00750070004E006F00010001000D000A006D00
      74005500730065007200500072006F0070004C00490050004300680061006E00
      6700650001004C00490050004300680061006E0067006500010001000D000A00
      6D0074005500730065007200500072006F007000530061006C00650073005200
      6500670069006F006E004E006F000100530061006C0065007300520065006700
      69006F006E004E006F00010001000D000A006D00740055007300650072005000
      72006F00700056006F006C0075006D00650055006E00690074004E006F000100
      56006F006C0075006D00650055006E00690074004E006F00010001000D000A00
      6D0074005500730065007200500072006F0070004C0065006E00670074006800
      46006F0072006D00610074004E006F0001004C0065006E006700740068004600
      6F0072006D00610074004E006F00010001000D000A006D007400550073006500
      7200500072006F00700046006F0072006D00010046006F0072006D0001000100
      0D000A006D0074005500730065007200500072006F0070005500730065007200
      490044000100550073006500720049004400010001000D000A006D0074005500
      730065007200500072006F0070004C0065006E0067007400680056006F006C00
      55006E00690074004E006F0001004C0065006E0067007400680056006F006C00
      55006E00690074004E006F00010001000D000A006D0074005500730065007200
      500072006F00700053007500720066006100630069006E0067004E006F000100
      53007500720066006100630069006E0067004E006F00010001000D000A006D00
      74005500730065007200500072006F0070004E004F004D005400480049004300
      4B0001004E004F004D0054004800490043004B00010001000D000A006D007400
      5500730065007200500072006F007000470072006F0075007000420079004200
      6F0078000100470072006F00750070004200790042006F007800010001000D00
      0A006D0074005500730065007200500072006F007000470072006F0075007000
      530075006D006D006100720079000100470072006F0075007000530075006D00
      6D00610072007900010001000D000A006D007400550073006500720050007200
      6F0070004100670065006E0074004E006F0001004100670065006E0074004E00
      6F00010001000D000A006D0074005500730065007200500072006F0070005300
      6800690070007000650072004E006F0001005300680069007000700065007200
      4E006F00010001000D000A006D0074005500730065007200500072006F007000
      5300740061007200740050006500720069006F00640001005300740061007200
      740050006500720069006F006400010001000D000A006D007400550073006500
      7200500072006F00700045006E00640050006500720069006F00640001004500
      6E00640050006500720069006F006400010001000D000A006D00740055007300
      65007200500072006F00700041004C004D004D00010041004C004D004D000100
      01000D000A006D0074005500730065007200500072006F007000500061006300
      6B006100670065005F00530069007A00650001005000610063006B0061006700
      65005F00530069007A006500010001000D000A006D0074005500730065007200
      500072006F007000460069006C0074006500720031000100460069006C007400
      650072003100010001000D000A006D0074005500730065007200500072006F00
      7000460069006C0074006500720032000100460069006C007400650072003200
      010001000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A005400660063006800670050006B006700560061007200
      640001004D0053002000530061006E0073002000530065007200690066000100
      4D0053002000530061006E007300200053006500720069006600010054006100
      68006F006D0061000D000A00500061006E0065006C00320001004D0053002000
      530061006E007300200053006500720069006600010001005400610068006F00
      6D0061000D000A006200620043006C0065006100720050006B00670047007200
      6900640001004D0053002000530061006E007300200053006500720069006600
      010001005400610068006F006D0061000D000A00420069007400420074006E00
      310001004D0053002000530061006E0073002000530065007200690066000100
      01005400610068006F006D0061000D000A00420069007400420074006E003300
      01004D0053002000530061006E00730020005300650072006900660001000100
      5400610068006F006D0061000D000A0064007800530074006100740075007300
      420061007200310001004D0053002000530061006E0073002000530065007200
      69006600010001005400610068006F006D0061000D000A006400780042006100
      72004D0061006E006100670065007200310001005300650067006F0065002000
      55004900010001005400610068006F006D0061000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003100010053006500
      67006F006500200055004900010001005400610068006F006D0061000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      320001005300650067006F006500200055004900010001005400610068006F00
      6D0061000D000A0070006D0050006B006700730001005300650067006F006500
      200055004900010001005400610068006F006D0061000D000A00630078005300
      740079006C0065005200650064004200670001005400610068006F006D006100
      010001005400610068006F006D0061000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      640078004200610072004D0061006E00610067006500720031002E0043006100
      7400650067006F0072006900650073000100440065006600610075006C007400
      2C0050006B00670073002C004C0065006E006700740068007300010001000D00
      0A00620063004C0065006E006700740068004F007000740069006F006E002E00
      500072006F0070006500720074006900650073002E004900740065006D007300
      0100500072006F00640075006B00740073007000650063006900660069006B00
      61002C004C00E4006E006700640067007200750070007000010001000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A004900440053005F003000010049006E00670065006E002000E400
      6E006400720069006E0067000100010001000D000A004900440053005F003100
      01005500700070002000740069006C006C0020000100010001000D000A004900
      440053005F003100330001005200650067006900730074007200650072006900
      6E006700730064006100740075006D0020006600E5007200200069006E007400
      650020007600610072006100200073007400F6007200720065002000E4006E00
      200061006B007400750065006C006C007400200064006100740075006D000100
      010001000D000A004900440053005F003100340001005200610064006E007200
      20000100010001000D000A004900440053005F00310035000100200069006E00
      6E0065006800E5006C006C0065007200200069006E0074006500200070006100
      6B006500740064006100740061002C0020006D00E5007300740065002000E500
      74006700E4007200640061007300200069006E006E0061006E002000E4006E00
      6400720069006E0067006100720020006B0061006E002000750074006600F600
      7200610073002E000100010001000D000A004900440053005F00310036000100
      560069006C006C002000640075002000E4006E00640072006100200075007400
      760061006C00640061002000700061006B00650074003F000100010001000D00
      0A004900440053005F00310037000100500061006B00650074002000E4006E00
      640072006100640065002E000100010001000D000A004900440053005F003100
      38000100500072006F0062006C0065006D002000E4006E006400720061002000
      700061006B00650074002E000100010001000D000A004900440053005F003100
      390001005600E4006C006A002000700061006B00650074002000610074007400
      2000E4006E006400720061002E000100010001000D000A004900440053005F00
      320001002000700061006B006500740020006B0061006E0073006B0065002000
      6800E4006D007400610073002C002000E4007200200064006500740020006B00
      6F007200720065006B0074003F000100010001000D000A004900440053005F00
      320030000100500061006B00650074002C0020006D00610072006B0065007200
      61006400650020006D006500640020007200F600640020006600E40072006700
      2C0020006B0061006E00200069006E00740065002000E4006E00640072006100
      7300200070006700610020006100740074002000610076007200650067006900
      7300740072006500720069006E006700730064006100740075006D002000E400
      720020006600F6007200650020006D006100780064006100740075006D002000
      69002000730065006E006100730074006500200069006E00760065006E007400
      6500720069006E00670065006E000100010001000D000A004900440053005F00
      3200310001005000610063006B0061006700650020006E0075006D0062006500
      720020000100010001000D000A004900440053005F0032003200010020006400
      6F006500730020006E006F007400200065007800690073007400010001000100
      0D000A004900440053005F003200340001002000690073002000720065007300
      6500720076006500640020006200790020000100010001000D000A0049004400
      53005F003200360001004600E5007200200069006E00740065002000E4006E00
      6400720061002000E400670061007200650020006F006D002000700061006B00
      650074002000660069006E006E00730020006900200074006100620065006C00
      6C0065006E000100010001000D000A004900440053005F003200380001002000
      E400720020007200650073006500720076006500720061006400200061007600
      20000100010001000D000A004900440053005F003200390001004C00E4006E00
      6700640020000100010001000D000A004900440053005F003300010050006100
      6B00650074006E00720020000100010001000D000A004900440053005F003300
      300001002000660069006E006E007300200072006500640061006E0020006900
      200074006100620065006C006C0065006E002E000100010001000D000A004900
      440053005F00340001002000E400720020007200650073006500720076006500
      72006100740020006100760020000100010001000D000A004900440053005F00
      3600010053005400590043004B004500540041004C000100010001000D000A00
      4900440053005F003800010020002000E4007200200072006500730065007200
      7600650072006100740020006100760020000100010001000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00630064004100750074006F0043006F006C005700
      69006400740068002E00500072006F0070006500720074006900650073002E00
      44006900730070006C006100790043006800650063006B006500640001005400
      720075006500010001000D000A00630064004100750074006F0043006F006C00
      570069006400740068002E00500072006F007000650072007400690065007300
      2E0044006900730070006C006100790055006E0063006800650063006B006500
      64000100460061006C0073006500010001000D000A00630062004C0049005000
      4300680061006E00670065002E00500072006F00700065007200740069006500
      73002E0044006900730070006C006100790043006800650063006B0065006400
      01005400720075006500010001000D000A00630062004C004900500043006800
      61006E00670065002E00500072006F0070006500720074006900650073002E00
      44006900730070006C006100790055006E0063006800650063006B0065006400
      0100460061006C0073006500010001000D000A00670072006400500061006B00
      6500740044004200420061006E006400650064005400610062006C0065005600
      69006500770031005000410043004B004100470045004E004F002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      6500010054006300780054006500780074004500640069007400500072006F00
      7000650072007400690065007300010001000D000A0067007200640050006100
      6B006500740044004200420061006E006400650064005400610062006C006500
      5600690065007700310053005500500050005F0043004F00440045002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A00670072006400500061006B006500
      740044004200420061006E006400650064005400610062006C00650056006900
      65007700310052004F0057004E004F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A00670072006400500061006B006500740044004200420061006E00
      6400650064005400610062006C00650056006900650077003100500052004F00
      44005500430054002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400500061006B006500740044004200420061006E006400650064005400
      610062006C006500560069006500770031005000430053005F00500045005200
      5F004C0045004E004700540048002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A00670072006400500061006B006500740044004200420061006E006400
      650064005400610062006C006500560069006500770031004200410052005F00
      43004F00440045002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400500061006B006500740044004200420061006E006400650064005400
      610062006C00650056006900650077003100470052004100440045005F005300
      540041004D0050002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400500061006B006500740044004200420061006E006400650064005400
      610062006C006500560069006500770031004D0033005F004E00450054002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A00670072006400500061006B00
      6500740044004200420061006E006400650064005400610062006C0065005600
      69006500770031005000430053002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A00670072006400500061006B006500740044004200420061006E006400
      650064005400610062006C006500560069006500770031004D0033005F004E00
      4F004D002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      500061006B006500740044004200420061006E00640065006400540061006200
      6C006500560069006500770031004B0056004D002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A00670072006400500061006B0065007400440042004200
      61006E006400650064005400610062006C006500560069006500770031004C00
      4F0050004D002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      6400500061006B006500740044004200420061006E0064006500640054006100
      62006C006500560069006500770031005300740061007400750073002E005000
      72006F0070006500720074006900650073002E0044006900730070006C006100
      790043006800650063006B006500640001005400720075006500010001000D00
      0A00670072006400500061006B006500740044004200420061006E0064006500
      64005400610062006C0065005600690065007700310053007400610074007500
      73002E00500072006F0070006500720074006900650073002E00440069007300
      70006C006100790055006E0063006800650063006B0065006400010046006100
      6C0073006500010001000D000A00670072006400500061006B00650074004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31005300740061007400750073002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004300
      6800650063006B0042006F007800500072006F00700065007200740069006500
      7300010001000D000A00670072006400500061006B0065007400440042004200
      61006E006400650064005400610062006C006500560069006500770031004900
      4E00560045004E0054004F00520059002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A00670072006400500061006B006500740044004200420061006E00
      6400650064005400610062006C006500560069006500770031004F0057004E00
      450052002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      500061006B006500740044004200420061006E00640065006400540061006200
      6C006500560069006500770031005000410043004B0041004700450054005900
      500045004E004F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400500061006B006500740044004200420061006E006400650064005400
      610062006C00650056006900650077003100500072006F006400750063007400
      4E006F002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      500061006B006500740044004200420061006E00640065006400540061006200
      6C006500560069006500770031004F0057004E00450052004E004F002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A00670072006400500061006B006500
      740044004200420061006E006400650064005400610062006C00650056006900
      6500770031004C004F0047005F0049004E00560045004E0054004F0052005900
      5F004E004F002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      6400500061006B006500740044004200420061006E0064006500640054006100
      62006C0065005600690065007700310042004100520043004F00440045005F00
      490044002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      500061006B006500740044004200420061006E00640065006400540061006200
      6C00650056006900650077003100470052004100440045005300540041004D00
      50004E004F002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      6400500061006B006500740044004200420061006E0064006500640054006100
      62006C0065005600690065007700310053005500500050004C00490045005200
      4E004F002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      500061006B006500740044004200420061006E00640065006400540061006200
      6C006500560069006500770031004F006C0064005F005000610063006B006100
      6700650054007900700065004E006F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A00670072006400500061006B006500740044004200420061006E00
      6400650064005400610062006C00650056006900650077003100530075007200
      66006100630069006E0067004E006F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A00670072006400500061006B006500740044004200420061006E00
      6400650064005400610062006C00650056006900650077003100500049005000
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640050006100
      6B006500740044004200420061006E006400650064005400610062006C006500
      560069006500770031004C006F0061006400440065007400610069006C004E00
      6F002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064005000
      61006B006500740044004200420061006E006400650064005400610062006C00
      65005600690065007700310041004300540054004800490043004B002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A00670072006400500061006B006500
      740044004200420061006E006400650064005400610062006C00650056006900
      650077003100410043005400570049004400540048002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A00670072006400500061006B006500740044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4E004F004D0054004800490043004B002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A00670072006400500061006B006500740044004200420061006E00
      6400650064005400610062006C006500560069006500770031004E004F004D00
      570049004400540048002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      670072006400500061006B006500740044004200420061006E00640065006400
      5400610062006C00650056006900650077003100530074006100740075007300
      54006500780074002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400500061006B006500740044004200420061006E006400650064005400
      610062006C0065005600690065007700310049006E0076004E0072002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A00640078004200610072004D006100
      6E006100670065007200310042006100720031002E004F006C0064004E006100
      6D006500010043007500730074006F006D0020003100010001000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003200
      2E004F006C0064004E0061006D006500010043007500730074006F006D002000
      3200010001000D000A006D0074005500730065007200500072006F0070002E00
      560065007200730069006F006E00010037002E00360033002E00300030002000
      5300740061006E0064006100720064002000450064006900740069006F006E00
      010001000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0062006500500072006F00
      64007500630074002E00500072006F0070006500720074006900650073002E00
      42007500740074006F006E0073005B0030005D002E0043006100700074006900
      6F006E0001005600E4006C006A002000700072006F00640075006B0074000100
      01000D000A0062006500500072006F0064007500630074002E00500072006F00
      70006500720074006900650073002E0042007500740074006F006E0073005B00
      31005D002E00430061007000740069006F006E000100520065006E0073006100
      010001000D000A0062006500500072006F0064007500630074002E0050007200
      6F0070006500720074006900650073002E0042007500740074006F006E007300
      5B0032005D002E00430061007000740069006F006E0001005300740061006E00
      6400610072006400010001000D000A006700720064004C0065006E0067007400
      6800730044004200420061006E006400650064005400610062006C0065005600
      69006500770031002E00420061006E00640073005B0030005D002E0043006100
      7000740069006F006E000100C4006E006400720061006400650020006C00E400
      6E00670064006500720020006F0063006800200073007400790063006B006500
      740061006C00010001000D000A00670072006400500061006B00650074004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31002E00420061006E00640073005B0030005D002E0043006100700074006900
      6F006E000100500041004B004500540049004400010001000D000A0067007200
      6400500061006B006500740044004200420061006E0064006500640054006100
      62006C006500560069006500770031002E00420061006E00640073005B003100
      5D002E00430061007000740069006F006E000100500041004B00450054004400
      410054004100010001000D000A00670072006400500061006B00650074004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31002E00420061006E00640073005B0032005D002E0043006100700074006900
      6F006E000100D60076007200690067007400010001000D000A00640078005300
      7400610074007500730042006100720031002E00500061006E0065006C007300
      5B0030005D002E00500061006E0065006C005300740079006C00650043006C00
      6100730073004E0061006D006500010054006400780053007400610074007500
      73004200610072005400650078007400500061006E0065006C00530074007900
      6C006500010001000D000A006400780053007400610074007500730042006100
      720031002E00500061006E0065006C0073005B0031005D002E00500061006E00
      65006C005300740079006C00650043006C006100730073004E0061006D006500
      0100540064007800530074006100740075007300420061007200540065007800
      7400500061006E0065006C005300740079006C006500010001000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A005400660063006800670050006B00670056006100720064000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00500061006E0065006C0032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A006200620043006C00650061007200
      50006B00670047007200690064000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A00420069007400420074006E003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00420069007400420074006E0033000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A0064007800530074006100
      74007500730042006100720031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A00640078004200610072004D006100
      6E00610067006500720031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00640078004200610072004D0061006E00
      6100670065007200310042006100720031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720032000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0070006D00
      50006B00670073000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00630078005300740079006C006500520065006400
      420067000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00}
  end
end
