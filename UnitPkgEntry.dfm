object frmPkgEntry: TfrmPkgEntry
  Left = 229
  Top = 109
  Caption = 'Registrera paket'
  ClientHeight = 685
  ClientWidth = 1120
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 214
    Width = 1120
    Height = 471
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object grdPackages: TcxGrid
      Left = 0
      Top = 27
      Width = 1120
      Height = 444
      Align = alClient
      PopupMenu = pmPkgTable
      TabOrder = 0
      object grdPackagesDBBandedTableView1: TcxGridDBBandedTableView
        PopupMenu = pmPkgTable
        OnKeyDown = grdPackagesDBBandedTableView1KeyDown
        Navigator.Buttons.CustomButtons = <>
        OnEditing = grdPackagesDBBandedTableView1Editing
        OnEditKeyDown = grdPackagesDBBandedTableView1EditKeyDown
        DataController.DataSource = dsmtPackages
        DataController.KeyFieldNames = 'RecId'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.Visible = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = grdPackagesDBBandedTableView1StylesGetContentStyle
        Bands = <
          item
            Caption = 'PAKETID'
            FixedKind = fkLeft
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 173
          end
          item
            Caption = 'VOLYM'
            Width = 295
          end
          item
            Caption = 'L'#196'NGDER'
            Width = 575
          end>
      end
      object grdPackagesLevel1: TcxGridLevel
        GridView = grdPackagesDBBandedTableView1
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1120
      Height = 27
      Align = alTop
      TabOrder = 1
      object cxLabel9: TcxLabel
        Left = 456
        Top = 7
        Caption = 'L'#228'ngdgrupp:'
      end
      object lcLengthGroup: TcxDBLookupComboBox
        Left = 521
        Top = 2
        DataBinding.DataField = 'LengthGroup'
        DataBinding.DataSource = dsUserProp
        Properties.ImmediatePost = True
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        Properties.MaxLength = 0
        Properties.OnChange = lcLengthGroupPropertiesChange
        TabOrder = 0
        Width = 145
      end
      object cbDB_CopyPcs: TcxDBCheckBox
        Left = 672
        Top = 4
        Caption = 'Kopiera stycketal'
        DataBinding.DataField = 'CopyPcs'
        DataBinding.DataSource = dsUserProp
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 1
        Width = 106
      end
      object cdAutoColWidth: TcxDBCheckBox
        Left = 784
        Top = 4
        Caption = 'Auto. kol.bredd'
        DataBinding.DataField = 'AutoColWidth'
        DataBinding.DataSource = dsUserProp
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Properties.OnChange = cdAutoColWidthPropertiesChange
        TabOrder = 2
        Width = 97
      end
      object cbNewItemRow: TcxDBCheckBox
        Left = 888
        Top = 4
        Caption = 'Inmatningsrad'
        DataBinding.DataField = 'NewItemRow'
        DataBinding.DataSource = dsUserProp
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Properties.OnChange = cbNewItemRowPropertiesChange
        TabOrder = 3
        Width = 91
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 440
        Height = 25
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 5
        object dxBarDockControl2: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 440
          Height = 24
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 64
    Width = 1120
    Height = 150
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 19
      Top = 10
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = #196'gare:'
    end
    object Label2: TLabel
      Left = 991
      Top = 16
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Verk:'
      Visible = False
    end
    object Label3: TLabel
      Left = 19
      Top = 34
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Lagerst'#228'lle:'
    end
    object Label4: TLabel
      Left = 19
      Top = 58
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Lagergrupp:'
    end
    object Label5: TLabel
      Left = 264
      Top = 79
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Registrerad:'
    end
    object Label6: TLabel
      Left = 264
      Top = 34
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'M'#228'tpunkt:'
    end
    object Label7: TLabel
      Left = 522
      Top = 10
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Inmatningsalt:'
    end
    object Label8: TLabel
      Left = 825
      Top = 31
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'K'#246'rnummer:'
      Visible = False
    end
    object Label9: TLabel
      Left = 522
      Top = 34
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Caption = 'Kvalitetst'#228'mpel:'
    end
    object Label10: TLabel
      Left = 522
      Top = 58
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'Streckkod:'
    end
    object Label11: TLabel
      Left = 19
      Top = 106
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produkt:'
    end
    object Label12: TLabel
      Left = 264
      Top = 55
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Skiftlag:'
    end
    object BitBtn1: TBitBtn
      Left = 904
      Top = 50
      Width = 65
      Height = 22
      Action = acSearchRunNo
      Caption = 'S'#246'k k'#246'rnr'
      TabOrder = 19
      Visible = False
    end
    object lcOwner: TcxDBLookupComboBox
      Left = 80
      Top = 2
      DataBinding.DataField = 'OWNER'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 0
      Width = 169
    end
    object lcVerk: TcxDBLookupComboBox
      Left = 992
      Top = 32
      DataBinding.DataField = 'VERK'
      DataBinding.DataSource = dsUserProp
      Properties.ListColumns = <>
      Properties.MaxLength = 0
      TabOrder = 13
      Visible = False
      Width = 81
    end
    object lcPIP: TcxDBLookupComboBox
      Left = 80
      Top = 26
      DataBinding.DataField = 'PIPNAME'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 1
      Width = 169
    end
    object lcLIP: TcxDBLookupComboBox
      Left = 80
      Top = 50
      DataBinding.DataField = 'LIPName'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 2
      Width = 169
    end
    object lcRegPoint: TcxDBLookupComboBox
      Left = 328
      Top = 26
      DataBinding.DataField = 'REGPOINT'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 4
      Width = 169
    end
    object icInputOption: TcxDBImageComboBox
      Left = 619
      Top = 2
      DataBinding.DataField = 'InputOption'
      DataBinding.DataSource = dsUserProp
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Ange stycketal / l'#228'ngd'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Ange total l'#246'pmeter'
          Value = 1
        end
        item
          Description = 'Ange medell'#228'ngd och stycketal'
          Value = 2
        end
        item
          Description = 'Ange M3'
          Value = 3
        end
        item
          Description = 'Ange M3 och l'#228'ngd'
          Value = 4
        end
        item
          Description = 'Ange antal ramar'
          Value = '5'
        end>
      Properties.OnChange = icInputOptionPropertiesChange
      TabOrder = 7
      Width = 145
    end
    object deRegDate: TcxDBDateEdit
      Left = 328
      Top = 71
      DataBinding.DataField = 'RegDate'
      DataBinding.DataSource = dsUserProp
      Properties.ImmediatePost = True
      Properties.Kind = ckDateTime
      TabOrder = 6
      Width = 169
    end
    object seRunNo: TcxDBSpinEdit
      Left = 824
      Top = 50
      DataBinding.DataField = 'RunNo'
      DataBinding.DataSource = dsUserProp
      Properties.ImmediatePost = True
      TabOrder = 15
      Visible = False
      Width = 73
    end
    object lcPRODUCER: TcxDBLookupComboBox
      Left = 328
      Top = 2
      DataBinding.DataField = 'PRODUCER'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 3
      Width = 169
    end
    object cxLabel6: TcxLabel
      Left = 263
      Top = 6
      Caption = 'Producent:'
    end
    object teSupplierCode: TcxDBTextEdit
      Left = 619
      Top = 74
      DataBinding.DataField = 'SupplierCode'
      DataBinding.DataSource = dsUserProp
      TabOrder = 10
      Width = 41
    end
    object cxLabel7: TcxLabel
      Left = 521
      Top = 78
      Caption = 'Prefix:'
    end
    object icLengthOption: TcxDBImageComboBox
      Left = 992
      Top = 64
      DataBinding.DataField = 'LengthOption'
      DataBinding.DataSource = dsUserProp
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Produktspecifika'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'L'#228'ngdgrupp'
          Value = 1
        end>
      Properties.OnChange = icLengthOptionPropertiesChange
      TabOrder = 12
      Visible = False
      Width = 81
    end
    object cxLabel8: TcxLabel
      Left = 976
      Top = 90
      Caption = 'L'#228'ngd alt:'
      Visible = False
    end
    object beProductDescription: TcxDBButtonEdit
      Left = 80
      Top = 98
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
        end>
      Properties.MaxLength = 0
      Properties.OnButtonClick = beProductDescriptionPropertiesButtonClick
      TabOrder = 11
      Width = 417
    end
    object lcBarcode: TcxDBLookupComboBox
      Left = 619
      Top = 50
      DataBinding.DataField = 'Barcode'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 9
      Width = 145
    end
    object lcGradestamp: TcxDBLookupComboBox
      Left = 619
      Top = 26
      DataBinding.DataField = 'Gradestamp'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 8
      Width = 145
    end
    object cbSaveToProduktionLogg: TcxDBCheckBox
      Left = 80
      Top = 120
      Caption = 'Spara till produktionslogg'
      DataBinding.DataField = 'AgentNo'
      DataBinding.DataSource = dsUserProp
      ParentColor = False
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 14
      Width = 233
    end
    object cxLabel1: TcxLabel
      Left = 521
      Top = 102
      Caption = 'Standard pris/NM3:'
    end
    object meStdPris: TcxDBMaskEdit
      Left = 619
      Top = 96
      DataBinding.DataField = 'Pris'
      DataBinding.DataSource = dsUserProp
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      TabOrder = 21
      Width = 65
    end
    object lcSkiftLag: TcxDBLookupComboBox
      Left = 328
      Top = 49
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
      Width = 169
    end
    object lcPackage_Size: TcxDBLookupComboBox
      Left = 619
      Top = 117
      DataBinding.DataField = 'Package_Size'
      DataBinding.DataSource = dsUserProp
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 10
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 22
      Width = 145
    end
    object cxLabel2: TcxLabel
      Left = 522
      Top = 122
      Caption = 'Paketstorlek:'
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1120
    Height = 64
    Align = alTop
    TabOrder = 6
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 568
      Height = 62
      Align = alLeft
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 566
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel7: TPanel
      Left = 1050
      Top = 1
      Width = 69
      Height = 62
      Align = alRight
      TabOrder = 1
      object dxBarDockControl3: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 67
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel8: TPanel
      Left = 569
      Top = 1
      Width = 481
      Height = 62
      Align = alClient
      TabOrder = 2
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
      'Product'
      'Paket')
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
        PopupMenu = pmProducts
      end
      item
        PopupMenu = pmPackages
      end>
    UseSystemFont = True
    Left = 504
    Top = 480
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
      DockedTop = 0
      FloatLeft = 458
      FloatTop = 284
      FloatClientWidth = 73
      FloatClientHeight = 182
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbSavePkgs'
        end
        item
          Visible = True
          ItemName = 'lbPkgNoInt'
        end
        item
          Visible = True
          ItemName = 'lbSelectProduct'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Paket'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end>
      OldName = 'Paket'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 179
      FloatTop = 109
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbCloseForm'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object lbAddPkg: TdxBarLargeButton
      Action = acAddPkg
      Category = 0
      Hint = 'L'#228'gg till paket F2 |'
    end
    object lbRemovePkg: TdxBarLargeButton
      Action = acRemoveRow
      Category = 0
      Hint = 'Ta bort rad |'
    end
    object lbSavePkgs: TdxBarLargeButton
      Action = acSavePkgs
      Category = 0
    end
    object lbCloseForm: TdxBarLargeButton
      Action = acExit
      Category = 0
    end
    object lbPkgNoInt: TdxBarLargeButton
      Action = acPktNrSerie
      Category = 0
    end
    object lbSelectProduct: TdxBarLargeButton
      Action = acValjProdukt
      Category = 0
    end
    object bbRemoveAllPkgs: TdxBarButton
      Action = acDeleteAllRows
      Category = 0
      Hint = #197'ngra alla rader |'
    end
    object lbSaveToInven: TdxBarLargeButton
      Caption = 'Spara'
      Category = 0
      Hint = 'Spara'
      Visible = ivNever
      LargeImageIndex = 0
    end
    object dxBarButton1: TdxBarButton
      Action = acInmatningsrad
      Category = 0
    end
    object bbAddProduct: TdxBarButton
      Action = acValjProdukt
      Category = 1
    end
    object dxBarButton2: TdxBarButton
      Action = acAddPkg
      Category = 2
      Hint = 'L'#228'gg till paket F2 |'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E0000000100000000000031319C003131
        A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
        E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
        FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
        FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
        0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
        0E1B180E0E0E0B08031B1B0A0E0E0E0E0E1B180E0E0E0E09041B1B0E0E0E0E0E
        0E1B180E0E0E0E0A051B1B0E0E181818181B181818180B0A061B1B0E0E1B1B1B
        1B1B1B1B1B1B0A0A061B1B0E10100E0E0E1B180E0E0B0A0A061B1B0E1313100E
        0E1B180E0E0B0A0A061B1B1015141110101B180E0E0E0B0B061B1B1318151312
        111B180E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
        0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Action = acRemoveRow
      Category = 2
      Hint = 'Ta bort rad |'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E00000001000000000000104A7B00184A
        840018528C0018529400185A9C00185AA5001863AD001863B500186BBD00186B
        C6001873CE001873D600187BDE00187BE7001884E7001884EF001884F700188C
        F700FF00FF00188CFF001894FF002194FF00299CFF00319CFF0039A5FF004AAD
        FF0052ADFF0063B5FF006BBDFF0084C6FF00ADDEFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121F1F1F1F1F
        1F1F1F1F1F1F1F1F1F121F1A030404040505040403030201191F1F05080A0A0A
        0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F1F1D
        111111111D1F0A08031F1F0A0E11131F1D11111D1F0E0B09041F1F0C11131111
        1F1D1D1F110E0B0A051F1F0E13111111111F1D110F0C0A0A061F1F0F13131111
        1D1F1F1D0E0B0A0A061F1F131515131D1F100F1F1D0A0A0A061F1F1318181D1F
        13130F0E1F1D0A0A061F1F151A191F151514110F0E1F0A0A061F1F181C1A1817
        16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
        1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = acDeleteAllRows
      Category = 2
      Hint = #197'ngra alla rader |'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E00000001000000000000104A7B00184A
        840018528C0018529400185A9C00185AA5001863AD001863B500186BBD00186B
        C6001873CE001873D600187BDE00187BE7001884E7001884EF001884F700188C
        F700FF00FF00188CFF001894FF002194FF00299CFF00319CFF0039A5FF004AAD
        FF0052ADFF0063B5FF006BBDFF0084C6FF00ADDEFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121F1F1F1F1F
        1F1F1F1F1F1F1F1F1F121F1A030404040505040403030201191F1F05080A0A0A
        0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F1F1D
        111111111D1F0A08031F1F0A0E11131F1D11111D1F0E0B09041F1F0C11131111
        1F1D1D1F110E0B0A051F1F0E13111111111F1D110F0C0A0A061F1F0F13131111
        1D1F1F1D0E0B0A0A061F1F131515131D1F100F1F1D0A0A0A061F1F1318181D1F
        13130F0E1F1D0A0A061F1F151A191F151514110F0E1F0A0A061F1F181C1A1817
        16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
        1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = acAddLengthColumn
      Category = 2
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E0000000100000000000000730800008C
        0800EF9C2100F7A55A000063CE00FFF7E700FF00FF0010F7FF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00060208080502
        0606060208080502060606020808050206060602080805020606060208080502
        0606060208080502060606020808050206060602080805020606060208080502
        0606060208080502060606020303030206010602030303020606060606060606
        0101000606060606060606060606060101000000060606060606060606060606
        0600060606060606060606060606060606000606060606060606060606060604
        0404040406060606060606060606060407070704060606060606060606060604
        0707070406060606060606060606060407070704060606060606060606060604
        0707070406060606060606060606060407070704060606060606}
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = acPkgInfo
      Category = 2
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 608
    Top = 480
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000000000000000
      0000DED6DE00DED6DE00F7F7F700F7F7F700F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFF7EF00FFEFD600CE630000CE63
      0000CE630000FFE7C600FFE7C600CE630000CE630000CE630000FFD6AD00FFD6
      FD00FFD6A500CE6300000000000000000000000000000000000000000000DED6
      D600DED6DE00DED6DE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFF700FFF7EF00E7A56300DE7B
      0000CE630000FFEFD600FFE7C600E7A56300DE7B0000CE630000FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000CED6CE00DED6
      D600DED6DE00DED6DE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFEFD600FFEFD600E7A56300E7A56300CE630000FFDEB500FFDE
      B500FFD6AD00CE630000000000000000000000000000CECEC600CED6CE00DED6
      D600DED6DE00DED6DE00EFE7E700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7C600FFDE
      B500FFDEB500CE630000000000000000000000000000CECEC600CED6CE00DED6
      D600DED6DE00DED6DE00F7EFE700EFE7E70029008400F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7
      C600FFDEB500CE630000000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00EFE7E700290084002900840029008400F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00FFFFFF00CE630000CE63
      0000CE630000FFFFFF00FFF7EF00CE630000CE630000CE630000FFEFD600FFE7
      C600FFE7C600CE630000000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00F7EFE700F7F7F70029008400F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00E7A56300DE7B
      0000CE630000FFFFFF00FFFFFF00E7A56300DE7B0000CE630000FFEFD600FFE7
      C600FFE7C600CE630000000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00EFE7E700F7EFE700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F70029008400F7F7F700F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFFFFF00FFFFFF00E7A56300E7A56300CE630000FFEFD600FFEF
      D600FFE7C600CE630000000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00F7EFE700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F7002900
      84002900840029008400F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE630000000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFF7EF00FFFFFF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE630000000000000000000000000000CECEC600D6D6CE00DED6
      D600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00FFFFFF00CE630000CE63
      0000CE630000FFFFFF00FFFFFF00CE630000CE630000CE630000FFF7EF00FFF7
      EF00FFEFD600CE630000000000000000000000000000CECEC600D6D6CE00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00E7A56300DE7B
      0000CE630000FFFFFF00FFFFFF00E7A56300DE7B0000CE630000FFF7EF00FFF7
      EF00FFEFD600CE630000000000000000000000000000CECEC600E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFFFFF00FFFFFF00E7A56300E7A56300CE630000FFF7EF00FFF7
      EF00FFF7EF00CE63000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7EF00CE63000000000000000000000000000000000000000000000000
      000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFF000000FFFFF9FF
      FFFFFFFFFF000000FFFFF1C00003FFFFFF000000C7FFE3C00003F07FFF000000
      C3FF87C00003E007FF000000C1FF0FC00003C0007F000000E0FE1FC000038000
      07000000F07C3FC00003800001000000FC307FC00003800001000000FE00FFC0
      0003800001000000FF01FFC00003800001000000FF83FFC00003800001000000
      FF01FFC00003800001000000FE00FFC00003800001000000FC187FC000038000
      01000000F83C3FC00003800001000000F07F1FC00003C00003000000E0FF8FC0
      0003F80007000000C1FFEFC00003FF800F00000083FFFFC00003FFFC1F000000
      87FFFFE00007FFFFFF0000008FFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
      FF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFE00003FF
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
  object pmProducts: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bbAddProduct'
      end>
    UseOwnFont = False
    Left = 624
    Top = 376
  end
  object pmPackages: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'lbAddPkg'
      end
      item
        Visible = True
        ItemName = 'lbRemovePkg'
      end
      item
        Visible = True
        ItemName = 'bbRemoveAllPkgs'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 200
    Top = 360
  end
  object dsmtPackages: TDataSource
    DataSet = dmsPkg.mtPackages
    OnDataChange = dsmtPackagesDataChange
    Left = 88
    Top = 352
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 504
    Top = 378
    object acAddPkg: TAction
      Caption = 'L'#228'gg till paket F2 |'
      ImageIndex = 1
      ShortCut = 113
      OnExecute = acAddPkgExecute
      OnUpdate = acAddPkgUpdate
    end
    object acRensaProdukt: TAction
      Caption = 'Rensa produkt'
    end
    object acPktNrSerie: TAction
      Caption = 'Pktnr serie'
      ImageIndex = 5
      OnExecute = acPktNrSerieExecute
      OnUpdate = acPktNrSerieUpdate
    end
    object acRemoveRow: TAction
      Caption = #197'ngra rad |'
      ImageIndex = 4
      OnExecute = acRemoveRowExecute
      OnUpdate = acRemoveRowUpdate
    end
    object acValjProdukt: TAction
      Caption = 'V'#228'lj produkt F10'
      ImageIndex = 6
      ShortCut = 121
      OnExecute = acValjProduktExecute
    end
    object acAddLengthColumn: TAction
      Caption = 'L'#228'gg till speciall'#228'ngd'
      OnExecute = acAddLengthColumnExecute
      OnUpdate = acAddLengthColumnUpdate
    end
    object acSearchRunNo: TAction
      Caption = 'S'#246'k k'#246'rnr'
      OnExecute = acSearchRunNoExecute
    end
    object acDeleteAllRows: TAction
      Caption = #197'ngra alla rader |'
      OnExecute = acDeleteAllRowsExecute
      OnUpdate = acDeleteAllRowsUpdate
    end
    object acInmatningsrad: TAction
      Caption = 'Inmatningsrad'
      OnExecute = acInmatningsradExecute
    end
    object acSavePkgs: TAction
      Caption = 'Spara F3'
      ImageIndex = 0
      ShortCut = 114
      OnExecute = acSavePkgsExecute
      OnUpdate = acSavePkgsUpdate
    end
    object acExit: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 3
      ShortCut = 123
      OnExecute = acExitExecute
    end
    object acPkgInfo: TAction
      Caption = 'Paketinformation'
      OnExecute = acPkgInfoExecute
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    Left = 80
    Top = 490
  end
  object dsUserProp: TDataSource
    DataSet = dmsPkg.mtUserProp
    Left = 88
    Top = 416
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdPackages
    PopupMenus = <
      item
        GridView = grdPackagesDBBandedTableView1
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = pmPackages
      end>
    Left = 288
    Top = 305
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 288
    Top = 363
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 288
    Top = 419
    PixelsPerInch = 96
    object cxStyleAlreadyExist: TcxStyle
      AssignedValues = [svColor]
      Color = clGreen
    end
    object cxStyleFailedToSave: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
  end
  object pmPkgTable: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end>
    UseOwnFont = False
    Left = 288
    Top = 483
  end
  object siLangLinked_frmPkgEntry: TsiLangLinked
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
    Left = 552
    Top = 344
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D0050006B00670045006E00740072007900
      010052006500670069007300740072006500720061002000700061006B006500
      7400010001000D000A00500061006E0065006C0031000100500061006E006500
      6C003100010001000D000A00630078004C006100620065006C00390001004C00
      E4006E0067006400670072007500700070003A00010001000D000A0063006200
      440042005F0043006F007000790050006300730001004B006F00700069006500
      72006100200073007400790063006B006500740061006C00010001000D000A00
      630064004100750074006F0043006F006C005700690064007400680001004100
      750074006F002E0020006B006F006C002E006200720065006400640001000100
      0D000A00630062004E00650077004900740065006D0052006F00770001004900
      6E006D00610074006E0069006E0067007300720061006400010001000D000A00
      4C006100620065006C0031000100C40067006100720065003A00010001000D00
      0A004C006100620065006C00320001005600650072006B003A00010001000D00
      0A004C006100620065006C00330001004C00610067006500720073007400E400
      6C006C0065003A00010001000D000A004C006100620065006C00340001004C00
      6100670065007200670072007500700070003A00010001000D000A004C006100
      620065006C003500010052006500670069007300740072006500720061006400
      3A00010001000D000A004C006100620065006C00360001004D00E40074007000
      75006E006B0074003A00010001000D000A004C006100620065006C0037000100
      49006E006D00610074006E0069006E006700730061006C0074003A0001000100
      0D000A004C006100620065006C00380001004B00F60072006E0075006D006D00
      650072003A00010001000D000A004C006100620065006C00390001004B007600
      61006C00690074006500740073007400E4006D00700065006C003A0001000100
      0D000A004C006100620065006C00310030000100530074007200650063006B00
      6B006F0064003A00010001000D000A004C006100620065006C00310031000100
      500072006F00640075006B0074003A00010001000D000A004C00610062006500
      6C0031003200010053006B006900660074006C00610067003A00010001000D00
      0A00630078004C006100620065006C0036000100500072006F00640075006300
      65006E0074003A00010001000D000A00630078004C006100620065006C003700
      01005000720065006600690078003A00010001000D000A00630078004C006100
      620065006C00380001004C00E4006E0067006400200061006C0074003A000100
      01000D000A0063006200530061007600650054006F00500072006F0064007500
      6B00740069006F006E004C006F00670067000100530070006100720061002000
      740069006C006C002000700072006F00640075006B00740069006F006E007300
      6C006F0067006700010001000D000A00630078004C006100620065006C003100
      01005300740061006E006400610072006400200070007200690073002F004E00
      4D0033003A00010001000D000A00630078004C006100620065006C0032000100
      500061006B0065007400730074006F0072006C0065006B003A00010001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      72003100010043007500730074006F006D0020003100010001000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003200
      0100500061006B0065007400010001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200330001004300750073007400
      6F006D0020003200010001000D000A006C006200530061007600650054006F00
      49006E00760065006E00010053007000610072006100010001000D000A006100
      630041006400640050006B00670001004C00E400670067002000740069006C00
      6C002000700061006B006500740020004600320020007C00010001000D000A00
      61006300520065006E0073006100500072006F00640075006B00740001005200
      65006E00730061002000700072006F00640075006B007400010001000D000A00
      6100630050006B0074004E00720053006500720069006500010050006B007400
      6E007200200073006500720069006500010001000D000A006100630052006500
      6D006F007600650052006F0077000100C5006E00670072006100200072006100
      640020007C00010001000D000A0061006300560061006C006A00500072006F00
      640075006B00740001005600E4006C006A002000700072006F00640075006B00
      74002000460031003000010001000D000A00610063004100640064004C006500
      6E0067007400680043006F006C0075006D006E0001004C00E400670067002000
      740069006C006C0020007300700065006300690061006C006C00E4006E006700
      6400010001000D000A0061006300530065006100720063006800520075006E00
      4E006F0001005300F6006B0020006B00F60072006E007200010001000D000A00
      61006300440065006C0065007400650041006C006C0052006F00770073000100
      C5006E00670072006100200061006C006C006100200072006100640065007200
      20007C00010001000D000A006100630049006E006D00610074006E0069006E00
      67007300720061006400010049006E006D00610074006E0069006E0067007300
      720061006400010001000D000A0061006300530061007600650050006B006700
      7300010053007000610072006100200046003300010001000D000A0061006300
      4500780069007400010053007400E4006E006700200046003100320001000100
      0D000A006100630050006B00670049006E0066006F000100500061006B006500
      740069006E0066006F0072006D006100740069006F006E00010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A006C00620041006400640050006B00670001004C00E4006700670020007400
      69006C006C002000700061006B006500740020004600320020007C0001000100
      0D000A006C006200520065006D006F007600650050006B006700010054006100
      200062006F0072007400200072006100640020007C00010001000D000A006200
      6200520065006D006F007600650041006C006C0050006B00670073000100C500
      6E00670072006100200061006C006C0061002000720061006400650072002000
      7C00010001000D000A006C006200530061007600650054006F0049006E007600
      65006E00010053007000610072006100010001000D000A006400780042006100
      720042007500740074006F006E00320001004C00E40067006700200074006900
      6C006C002000700061006B006500740020004600320020007C00010001000D00
      0A006400780042006100720042007500740074006F006E003300010054006100
      200062006F0072007400200072006100640020007C00010001000D000A006400
      780042006100720042007500740074006F006E0034000100C5006E0067007200
      6100200061006C006C00610020007200610064006500720020007C0001000100
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660072006D00
      50006B00670045006E0074007200790001004D0053002000530061006E007300
      200053006500720069006600010001000D000A00640078004200610072004D00
      61006E006100670065007200310001005300650067006F006500200055004900
      010001000D000A00640078004200610072004D0061006E006100670065007200
      3100420061007200310001005300650067006F00650020005500490001000100
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      61007200320001005300650067006F006500200055004900010001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      330001005300650067006F006500200055004900010001000D000A0070006D00
      500072006F006400750063007400730001005300650067006F00650020005500
      4900010001000D000A0070006D005000610063006B0061006700650073000100
      5300650067006F006500200055004900010001000D000A006300780053007400
      79006C00650041006C0072006500610064007900450078006900730074000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      65004600610069006C006500640054006F005300610076006500010054006100
      68006F006D006100010001000D000A0070006D0050006B006700540061006200
      6C00650001005300650067006F006500200055004900010001000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A00640078004200610072004D0061006E00610067006500
      720031002E00430061007400650067006F007200690065007300010044006500
      6600610075006C0074002C00500072006F0064007500630074002C0050006100
      6B0065007400010001000D000A007300740053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A004900440053005F0031003000
      30000100C40067006100720065003A00010001000D000A004900440053005F00
      31003000310001004C00610067006500720070006C006100740073003A002000
      010001000D000A004900440053005F0031003000320001004400610074007500
      6D003A002000010001000D000A004900440053005F0031003000370001004F00
      4200530021002000530050004100520041005200200049004E00540045002000
      540049004C004C002000500052004F00440055004B00540049004F004E005300
      4C004F004700470045004E00010001000D000A004900440053005F0031003000
      390001002000730061006B006E0061007200200073007400790063006B006500
      740061006C00010001000D000A004900440053005F0031003100300001005200
      610064006E0072002000010001000D000A004900440053005F00310031003100
      01002000730061006B006E00610072002000700061006B00650074006E007200
      010001000D000A004900440053005F0031003100330001002000730061006B00
      6E006100720020006C00F60070006D006500740065007200010001000D000A00
      4900440053005F00310031003400010047007200F6006E006100200072006100
      6400650072002000E40072002000700061006B00650074006E0072002F007000
      7200650069007800200073006F006D00200072006500640061006E0020006600
      69006E006E007300200069002000640061007400610062006100730065006E00
      2C0020007200F600640061002000720061006400650072002000E40072002000
      700061006B0065007400200073006F006D00200069006E007400650020006B00
      75006E00640065002000730070006100720061007300200028006B006F006E00
      740061006B0074006100200073007500700070006F0072007400290001000100
      0D000A004900440053005F003100310035000100500061006B00650074002000
      730070006100720061006400650020004F004B002C002000760069006C006C00
      200064007500200073007400E4006E00670061003F00010001000D000A004900
      440053005F003100310036000100440065002000700061006B00650074002000
      73006F006D002000660069006E006E00730020006B0076006100720020006900
      20006C0069007300740061006E0020006B0075006E0064006500200069006E00
      740065002000720065006700690073007400720065007200610073002E000100
      01000D000A004900440053005F0031003100370001005600E4006C006A002000
      65007400740020006C0061006700650072002E00010001000D000A0049004400
      53005F00310031003800010049006E00670065006E0020006D00E40074007000
      75006E006B0074002000760061006C006400010001000D000A00490044005300
      5F0031003200010050006B0074006E007200010001000D000A00490044005300
      5F00310035000100500072006500660069007800010001000D000A0049004400
      53005F0032003200010053007400790063006B00010001000D000A0049004400
      53005F0032003500010041004D003300010001000D000A004900440053005F00
      32003600010023002300230023002300230023002E0030003000300001000100
      0D000A004900440053005F003300300001004E004D003300010001000D000A00
      4900440053005F0033003400010041004D003100010001000D000A0049004400
      53005F0033003500010023002300230023002300230023002E00300030003000
      3000010001000D000A004900440053005F003300380001005000720069007300
      2F004E004D003300010001000D000A004900440053005F003300390001002300
      2300230023002300230023002E0030003000010001000D000A00490044005300
      5F00340001005200610064006E007200010001000D000A004900440053005F00
      3400330001004D00460042004D00010001000D000A004900440053005F003600
      3100010050004B004700540059005000450020004E004F00010001000D000A00
      4900440053005F003600390001004D006500640065006C006C00E4006E006700
      640028004D0065007400650072002900010001000D000A004900440053005F00
      3700380001002000700061006B006500740020006B006F006D006D0065007200
      200061007400740020006C00E40067006700610073002000740069006C006C00
      2C0020004F004B003F00010001000D000A004900440053005F00370039000100
      4400750070006C006900630061007400650020005000610063006B0061006700
      650020006E0075006D00620065007200200065006E0074006500720065006400
      2000010001000D000A004900440053005F00380001004200650073006B007200
      690076006E0069006E006700010001000D000A004900440053005F0038003000
      01005000610063006B0061006700650020006E006F0020006900730020007200
      6500730065007200760065006400200062007900200075007300650072002000
      010001000D000A004900440053005F003800310001005000610063006B006100
      6700650020006E0075006D0062006500720020002000010001000D000A004900
      440053005F00380032000100200061006C007200650061006400790020006500
      78006900730074002C00200070006C0065006100730065002000630068006100
      6E0067006500200074006F00200064006900660066006500720065006E007400
      20006E0075006D00620065007200010001000D000A004900440053005F003800
      33000100500061006B0065007400200069006E00740065002000730070006100
      72006100640065002C002000760069006C006C00200064007500200061007600
      73006C007500740061003F00010001000D000A004900440053005F0038003400
      01004B0061006E00200069006E00740065002000620079007400610020006E00
      E400720020006400650074002000660069006E006E0073002000700061006B00
      65007400720061006400650072002E00010001000D000A004900440053005F00
      38003500010054006F0020007500730065002000740068006900730020006600
      75006E006300740069006F006E00200079006F00750020006D00750073007400
      200069006E00730065007200740020006F006E00650020007000610063006B00
      610067006500200066006900720073007400010001000D000A00490044005300
      5F003800370001004D006100780020007000610063006B006100670065004E00
      6F00200061006C006C006F007700650064002000690073002000010001000D00
      0A004900440053005F00380038000100500061006B00650074006E0072002000
      660069006E006E0073002000690020006C0069007300740061006E0020007200
      6500640061006E002E00010001000D000A004900440053005F00380039000100
      500061006B00650074006E0072002000660069006E006E007300200072006500
      640061006E002E002000010001000D000A004900440053005F00390030000100
      500061006B00650074006E0072002000010001000D000A004900440053005F00
      3900310001002000E40072002000720065007300650072007600650072006100
      7400200061007600200061006E007600E4006E00640061007200650020000100
      01000D000A004900440053005F003900320001004C00E4006E00670064002000
      010001000D000A004900440053005F003900330001002000660069006E006E00
      7300200072006500640061006E0020006900200074006100620065006C006C00
      65006E002E00010001000D000A004900440053005F003900360001005600E400
      6C006A002000700072006F00640075006B007400010001000D000A0049004400
      53005F0039003700010052006500670069007300740072006500720069006E00
      6700730064006100740075006D0020006600E5007200200069006E0074006500
      20007600610072006100200073007400F6007200720065002000E4006E002000
      61006B007400750065006C006C007400200064006100740075006D0001000100
      0D000A004900440053005F003900380001004400750020006800610072002000
      760061006C0074002000610074007400200049004E0054004500200073007000
      6100720061002000740069006C006C002000700072006F00640075006B007400
      69006F006E0073006C006F006700670065006E002C002000760069006C006C00
      20006400750020006700E50020007600690064006100720065003F0020002800
      6F006D002000640075002000740065007800200073006B006100700061007200
      2000700061006B0065007400200073006F006D00200073006B0061006C006C00
      2000730079006E006100730020006900200065006E00200069006E0076006500
      6E0074006500720069006E006700200073006B0061006C006C00200064007500
      20006B0072007900730073006100200069002000220053007000610072006100
      2000740069006C006C002000700072006F00640075006B00740069006F006E00
      73006C006F0067006700220029002000010001000D000A004900440053005F00
      390039000100530070006100720061002000700061006B006500740020006D00
      6F00740020006D00E4007400700075006E006B0074003A002000010001000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A0063006200440042005F0043006F00
      700079005000630073002E00500072006F007000650072007400690065007300
      2E0044006900730070006C006100790043006800650063006B00650064000100
      5400720075006500010001000D000A0063006200440042005F0043006F007000
      79005000630073002E00500072006F0070006500720074006900650073002E00
      44006900730070006C006100790055006E0063006800650063006B0065006400
      0100460061006C0073006500010001000D000A00630064004100750074006F00
      43006F006C00570069006400740068002E00500072006F007000650072007400
      6900650073002E0044006900730070006C006100790043006800650063006B00
      6500640001005400720075006500010001000D000A0063006400410075007400
      6F0043006F006C00570069006400740068002E00500072006F00700065007200
      74006900650073002E0044006900730070006C006100790055006E0063006800
      650063006B00650064000100460061006C0073006500010001000D000A006300
      62004E00650077004900740065006D0052006F0077002E00500072006F007000
      6500720074006900650073002E0044006900730070006C006100790043006800
      650063006B006500640001005400720075006500010001000D000A0063006200
      4E00650077004900740065006D0052006F0077002E00500072006F0070006500
      720074006900650073002E0044006900730070006C006100790055006E006300
      6800650063006B00650064000100460061006C0073006500010001000D000A00
      63006200530061007600650054006F00500072006F00640075006B0074006900
      6F006E004C006F00670067002E00500072006F00700065007200740069006500
      73002E0044006900730070006C006100790043006800650063006B0065006400
      01005400720075006500010001000D000A006300620053006100760065005400
      6F00500072006F00640075006B00740069006F006E004C006F00670067002E00
      500072006F0070006500720074006900650073002E0044006900730070006C00
      6100790055006E0063006800650063006B00650064000100460061006C007300
      6500010001000D000A006C00630053006B006900660074004C00610067002E00
      500072006F0070006500720074006900650073002E004B006500790046006900
      65006C0064004E0061006D006500730001005300680069006600740054006500
      61006D004E006F00010001000D000A006C00630053006B006900660074004C00
      610067002E00500072006F0070006500720074006900650073002E004C006900
      730074004600690065006C0064004E0061006D00650073000100530068006900
      660074005400650061006D004E0061006D006500010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720031002E00
      4F006C0064004E0061006D006500010043007500730074006F006D0020003100
      010001000D000A00640078004200610072004D0061006E006100670065007200
      310042006100720032002E004F006C0064004E0061006D006500010050006100
      6B0065007400010001000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0067007200
      64005000610063006B00610067006500730044004200420061006E0064006500
      64005400610062006C006500560069006500770031002E00420061006E006400
      73005B0030005D002E00430061007000740069006F006E000100500041004B00
      4500540049004400010001000D000A006700720064005000610063006B006100
      67006500730044004200420061006E006400650064005400610062006C006500
      560069006500770031002E00420061006E00640073005B0031005D002E004300
      61007000740069006F006E00010056004F004C0059004D00010001000D000A00
      6700720064005000610063006B00610067006500730044004200420061006E00
      6400650064005400610062006C006500560069006500770031002E0042006100
      6E00640073005B0032005D002E00430061007000740069006F006E0001004C00
      C4004E004700440045005200010001000D000A006900630049006E0070007500
      74004F007000740069006F006E002E00500072006F0070006500720074006900
      650073002E004900740065006D0073005B0030005D002E004400650073006300
      720069007000740069006F006E00010041006E00670065002000730074007900
      63006B006500740061006C0020002F0020006C00E4006E006700640001000100
      0D000A006900630049006E007000750074004F007000740069006F006E002E00
      500072006F0070006500720074006900650073002E004900740065006D007300
      5B0031005D002E004400650073006300720069007000740069006F006E000100
      41006E0067006500200074006F00740061006C0020006C00F60070006D006500
      740065007200010001000D000A006900630049006E007000750074004F007000
      740069006F006E002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0032005D002E004400650073006300720069007000
      740069006F006E00010041006E006700650020006D006500640065006C006C00
      E4006E006700640020006F0063006800200073007400790063006B0065007400
      61006C00010001000D000A006900630049006E007000750074004F0070007400
      69006F006E002E00500072006F0070006500720074006900650073002E004900
      740065006D0073005B0033005D002E0044006500730063007200690070007400
      69006F006E00010041006E006700650020004D003300010001000D000A006900
      630049006E007000750074004F007000740069006F006E002E00500072006F00
      70006500720074006900650073002E004900740065006D0073005B0034005D00
      2E004400650073006300720069007000740069006F006E00010041006E006700
      650020004D00330020006F006300680020006C00E4006E006700640001000100
      0D000A006900630049006E007000750074004F007000740069006F006E002E00
      500072006F0070006500720074006900650073002E004900740065006D007300
      5B0035005D002E004400650073006300720069007000740069006F006E000100
      41006E0067006500200061006E00740061006C002000720061006D0061007200
      010001000D000A00690063004C0065006E006700740068004F00700074006900
      6F006E002E00500072006F0070006500720074006900650073002E0049007400
      65006D0073005B0030005D002E00440065007300630072006900700074006900
      6F006E000100500072006F00640075006B007400730070006500630069006600
      69006B006100010001000D000A00690063004C0065006E006700740068004F00
      7000740069006F006E002E00500072006F007000650072007400690065007300
      2E004900740065006D0073005B0031005D002E00440065007300630072006900
      7000740069006F006E0001004C00E4006E006700640067007200750070007000
      010001000D000A0062006500500072006F006400750063007400440065007300
      6300720069007000740069006F006E002E00500072006F007000650072007400
      6900650073002E0042007500740074006F006E0073005B0030005D002E004300
      61007000740069006F006E0001005600E4006C006A002000700072006F006400
      75006B007400010001000D000A0062006500500072006F006400750063007400
      4400650073006300720069007000740069006F006E002E00500072006F007000
      6500720074006900650073002E0042007500740074006F006E0073005B003100
      5D002E00430061007000740069006F006E000100520065006E00730061000100
      01000D000A006C00630053006B006900660074004C00610067002E0050007200
      6F0070006500720074006900650073002E004C0069007300740043006F006C00
      75006D006E0073005B0030005D002E00430061007000740069006F006E000100
      530068006900660074005400650061006D004E0061006D006500010001000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A005400660072006D0050006B00670045006E0074007200
      79000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00640078004200610072004D0061006E00610067006500
      720031000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00640078004200610072004D0061006E0061006700
      65007200310042006100720031000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720032000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      33000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A0070006D00500072006F00640075006300740073000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A0070006D005000610063006B006100670065007300010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00630078005300740079006C00650041006C00720065006100640079004500
      78006900730074000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00630078005300740079006C0065004600
      610069006C006500640054006F00530061007600650001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      6D0050006B0067005400610062006C0065000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00}
  end
end
