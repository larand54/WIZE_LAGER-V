object frmPkgInfo: TfrmPkgInfo
  Left = 256
  Top = 188
  ActiveControl = tePkgNo
  Caption = 'PAKETINFORMATION'
  ClientHeight = 698
  ClientWidth = 962
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 962
    Height = 46
    Align = dalTop
    BarManager = dxBarManager1
  end
  object Panel1: TPanel
    Left = 0
    Top = 46
    Width = 962
    Height = 233
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 392
      Top = 115
      Width = 52
      Height = 13
      Caption = 'Producent:'
    end
    object Label2: TLabel
      Left = 16
      Top = 157
      Width = 72
      Height = 13
      Caption = 'Registrerad av:'
    end
    object Label3: TLabel
      Left = 16
      Top = 136
      Width = 57
      Height = 13
      Caption = 'Registrerad:'
    end
    object Label4: TLabel
      Left = 16
      Top = 115
      Width = 31
      Height = 13
      Caption = #196'gare:'
    end
    object Label5: TLabel
      Left = 16
      Top = 94
      Width = 57
      Height = 13
      Caption = 'Lagergrupp:'
    end
    object Label6: TLabel
      Left = 16
      Top = 73
      Width = 54
      Height = 13
      Caption = 'Lagerst'#228'lle:'
    end
    object Label7: TLabel
      Left = 16
      Top = 52
      Width = 33
      Height = 13
      Caption = 'Status:'
    end
    object Label8: TLabel
      Left = 392
      Top = 12
      Width = 40
      Height = 13
      Caption = 'Produkt:'
    end
    object Label9: TLabel
      Left = 16
      Top = 31
      Width = 29
      Height = 13
      Caption = 'Prefix:'
    end
    object Label10: TLabel
      Left = 16
      Top = 10
      Width = 140
      Height = 13
      Caption = 'Skriv paketnr och tryck enter:'
    end
    object Label11: TLabel
      Left = 392
      Top = 33
      Width = 43
      Height = 13
      Caption = 'Barcode:'
    end
    object Label12: TLabel
      Left = 392
      Top = 54
      Width = 60
      Height = 13
      Caption = 'Gradestamp:'
    end
    object Label19: TLabel
      Left = 816
      Top = 12
      Width = 25
      Height = 13
      Caption = 'AM3:'
    end
    object Label20: TLabel
      Left = 816
      Top = 33
      Width = 26
      Height = 13
      Caption = 'NM3:'
    end
    object Label21: TLabel
      Left = 816
      Top = 54
      Width = 25
      Height = 13
      Caption = 'AM2:'
    end
    object Label22: TLabel
      Left = 816
      Top = 75
      Width = 38
      Height = 13
      Caption = 'STYCK:'
    end
    object Label23: TLabel
      Left = 816
      Top = 96
      Width = 25
      Height = 13
      Caption = 'AM1:'
    end
    object Label24: TLabel
      Left = 816
      Top = 117
      Width = 23
      Height = 13
      Caption = 'NM1'
    end
    object Label25: TLabel
      Left = 816
      Top = 138
      Width = 34
      Height = 13
      Caption = 'MFBM:'
    end
    object Label26: TLabel
      Left = 16
      Top = 191
      Width = 110
      Height = 13
      Caption = 'Antal styck / akt.l'#228'ngd:'
    end
    object Label27: TLabel
      Left = 392
      Top = 75
      Width = 84
      Height = 13
      Caption = 'Paketkod (l'#229'nga):'
    end
    object Label28: TLabel
      Left = 392
      Top = 96
      Width = 82
      Height = 13
      Caption = 'Paketkod (korta):'
    end
    object Label13: TLabel
      Left = 16
      Top = 215
      Width = 115
      Height = 13
      Caption = 'Antal styck / nom.l'#228'ngd:'
    end
    object Label14: TLabel
      Left = 392
      Top = 139
      Width = 28
      Height = 13
      Caption = 'K'#246'rnr:'
    end
    object Label15: TLabel
      Left = 543
      Top = 139
      Width = 52
      Height = 13
      Caption = 'Producent:'
    end
    object Label16: TLabel
      Left = 392
      Top = 158
      Width = 49
      Height = 13
      Caption = 'Operation:'
    end
    object Label17: TLabel
      Left = 546
      Top = 159
      Width = 48
      Height = 13
      Caption = 'M'#228'tpunkt:'
    end
    object Bevel1: TBevel
      Left = 324
      Top = 131
      Width = 461
      Height = 47
    end
    object Label18: TLabel
      Left = 334
      Top = 136
      Width = 40
      Height = 13
      Caption = 'K'#246'rorder'
    end
    object dxDBEdit3: TcxDBTextEdit
      Left = 488
      Top = 2
      DataBinding.DataField = 'PRODUCT'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 2
      Width = 289
    end
    object dxDBEdit4: TcxDBTextEdit
      Left = 157
      Top = 44
      DataBinding.DataField = 'PKG_STATUS'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 3
      Width = 161
    end
    object dxDBEdit5: TcxDBTextEdit
      Left = 157
      Top = 65
      DataBinding.DataField = 'INVENTORY'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 4
      Width = 161
    end
    object dxDBEdit6: TcxDBTextEdit
      Left = 157
      Top = 86
      DataBinding.DataField = 'INVENTORY_GROUP'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 5
      Width = 161
    end
    object dxDBEdit7: TcxDBTextEdit
      Left = 157
      Top = 107
      DataBinding.DataField = 'INVENTORY_OWNER'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 6
      Width = 161
    end
    object dxDBEdit8: TcxDBTextEdit
      Left = 157
      Top = 128
      DataBinding.DataField = 'PKG_CREATED'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 7
      Width = 161
    end
    object dxDBEdit9: TcxDBTextEdit
      Left = 157
      Top = 149
      DataBinding.DataField = 'PKG_CREATED_BY'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 8
      Width = 161
    end
    object dxDBEdit10: TcxDBTextEdit
      Left = 488
      Top = 107
      DataBinding.DataField = 'PRODUCER'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 9
      Width = 289
    end
    object dxDBEdit11: TcxDBTextEdit
      Left = 488
      Top = 23
      DataBinding.DataField = 'BARCODE'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 10
      Width = 289
    end
    object dxDBEdit12: TcxDBTextEdit
      Left = 488
      Top = 44
      DataBinding.DataField = 'GRADESTAMP'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 11
      Width = 289
    end
    object dxDBEdit19: TcxDBTextEdit
      Left = 864
      Top = 2
      DataBinding.DataField = 'M3_ACT'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 12
      Width = 65
    end
    object dxDBEdit20: TcxDBTextEdit
      Left = 864
      Top = 23
      DataBinding.DataField = 'M3_NOM'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 13
      Width = 65
    end
    object dxDBEdit21: TcxDBTextEdit
      Left = 864
      Top = 44
      DataBinding.DataField = 'M2'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 14
      Width = 65
    end
    object dxDBEdit22: TcxDBTextEdit
      Left = 864
      Top = 65
      DataBinding.DataField = 'PIECES'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 15
      Width = 65
    end
    object dxDBEdit23: TcxDBTextEdit
      Left = 864
      Top = 86
      DataBinding.DataField = 'ACT_LINEAL_METER'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 16
      Width = 65
    end
    object dxDBEdit24: TcxDBTextEdit
      Left = 864
      Top = 107
      DataBinding.DataField = 'NOM_LINEAL_METER'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 17
      Width = 65
    end
    object dxDBEdit25: TcxDBTextEdit
      Left = 864
      Top = 128
      DataBinding.DataField = 'MFBM'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 18
      Width = 65
    end
    object ePcsPerACTLength: TcxTextEdit
      Left = 157
      Top = 183
      Style.Shadow = True
      TabOrder = 19
      Width = 777
    end
    object dxDBEdit26: TcxDBTextEdit
      Left = 488
      Top = 65
      DataBinding.DataField = 'LANGAKODEN'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 20
      Width = 289
    end
    object dxDBEdit27: TcxDBTextEdit
      Left = 488
      Top = 86
      DataBinding.DataField = 'KORTAKODEN'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 21
      Width = 289
    end
    object ePcsPerNOMLength: TcxTextEdit
      Left = 157
      Top = 207
      Style.Shadow = True
      TabOrder = 22
      Width = 777
    end
    object tePkgNo: TcxTextEdit
      Left = 159
      Top = 2
      TabOrder = 0
      OnKeyDown = tePkgNoKeyDown
      Width = 151
    end
    object tePrefix: TcxTextEdit
      Left = 159
      Top = 24
      TabOrder = 1
      OnKeyDown = tePkgNoKeyDown
      Width = 151
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 491
      Top = 134
      DataBinding.DataField = 'RunNo'
      DataBinding.DataSource = ds_Vis_PackageRunInfo
      Style.Shadow = True
      TabOrder = 23
      Width = 49
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 601
      Top = 134
      DataBinding.DataField = 'Producer'
      DataBinding.DataSource = ds_Vis_PackageRunInfo
      Style.Shadow = True
      TabOrder = 24
      Width = 176
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 491
      Top = 157
      DataBinding.DataField = 'Operation'
      DataBinding.DataSource = ds_Vis_PackageRunInfo
      Style.Shadow = True
      TabOrder = 25
      Width = 49
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 601
      Top = 157
      DataBinding.DataField = 'RegPointName'
      DataBinding.DataSource = ds_Vis_PackageRunInfo
      Style.Shadow = True
      TabOrder = 26
      Width = 176
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 279
    Width = 962
    Height = 203
    Align = alTop
    Caption = 'Panel3'
    TabOrder = 2
    ExplicitTop = 265
    object grdPkgInfo: TcxGrid
      Left = 1
      Top = 20
      Width = 960
      Height = 182
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 219
      object grdPkgInfoDBBandedTableView1: TcxGridDBBandedTableView
        DataController.DataSource = dmsSystem.ds_LoadPkgInfo
        DataController.KeyFieldNames = 'LOAD_NO'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'LAST'
            Width = 419
          end
          item
            Caption = 'FAKTURA'
          end
          item
            Caption = 'KONTRAKT'
            Width = 193
          end>
        object grdPkgInfoDBBandedTableView1LOAD_CUSTOMER: TcxGridDBBandedColumn
          Caption = 'Kund'
          DataBinding.FieldName = 'LOAD_CUSTOMER'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 134
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdPkgInfoDBBandedTableView1LOAD_SUPPLIER: TcxGridDBBandedColumn
          Caption = 'Verk'
          DataBinding.FieldName = 'LOAD_SUPPLIER'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 133
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 1
        end
        object grdPkgInfoDBBandedTableView1LOAD_DATE: TcxGridDBBandedColumn
          Caption = 'Utlastad'
          DataBinding.FieldName = 'LOAD_DATE'
          PropertiesClassName = 'TcxLabelProperties'
          SortIndex = 0
          SortOrder = soDescending
          Width = 213
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 1
        end
        object grdPkgInfoDBBandedTableView1LOAD_NO: TcxGridDBBandedColumn
          Caption = 'Lastnr'
          DataBinding.FieldName = 'LOAD_NO'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 74
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdPkgInfoDBBandedTableView1LO_NUMBER: TcxGridDBBandedColumn
          Caption = 'LO'
          DataBinding.FieldName = 'LO_NUMBER'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 59
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdPkgInfoDBBandedTableView1FS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FS'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 73
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 1
        end
        object grdPkgInfoDBBandedTableView1LOAD_CREATED_BY: TcxGridDBBandedColumn
          Caption = 'Utlastad av'
          DataBinding.FieldName = 'LOAD_CREATED_BY'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 84
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdPkgInfoDBBandedTableView1LOAD_STATUS: TcxGridDBBandedColumn
          Caption = 'Laststatus'
          DataBinding.FieldName = 'LOAD_STATUS'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 68
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdPkgInfoDBBandedTableView1INVOICE_NO: TcxGridDBBandedColumn
          Caption = 'Fakturanr'
          DataBinding.FieldName = 'INVOICE_NO'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 75
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdPkgInfoDBBandedTableView1INV_CREATED_BY: TcxGridDBBandedColumn
          Caption = 'Registrerad av'
          DataBinding.FieldName = 'INV_CREATED_BY'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 106
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdPkgInfoDBBandedTableView1INVOICE_DATE: TcxGridDBBandedColumn
          Caption = 'Fakuterad'
          DataBinding.FieldName = 'INVOICE_DATE'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 178
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdPkgInfoDBBandedTableView1INT_INVOICE_NO: TcxGridDBBandedColumn
          Caption = 'Int.faktnr'
          DataBinding.FieldName = 'INT_INVOICE_NO'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 78
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 1
        end
        object grdPkgInfoDBBandedTableView1INVOICETYPE: TcxGridDBBandedColumn
          Caption = 'Fakturatyp'
          DataBinding.FieldName = 'INVOICETYPE'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 111
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 1
        end
        object grdPkgInfoDBBandedTableView1DEBIT_CREDIT: TcxGridDBBandedColumn
          Caption = 'Konto'
          DataBinding.FieldName = 'DEBIT_CREDIT'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 183
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 1
        end
        object grdPkgInfoDBBandedTableView1ORDER_NO: TcxGridDBBandedColumn
          Caption = 'Kontraktnr'
          DataBinding.FieldName = 'ORDER_NO'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdPkgInfoDBBandedTableView1ORDER_CUSTOMER: TcxGridDBBandedColumn
          Caption = 'Kund'
          DataBinding.FieldName = 'ORDER_CUSTOMER'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 1
        end
      end
      object grdPkgInfoLevel1: TcxGridLevel
        GridView = grdPkgInfoDBBandedTableView1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 960
      Height = 19
      Align = alTop
      BevelOuter = bvNone
      Caption = 'LAST, FAKTURA OCH KONTRAKT INFO'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 490
    Width = 962
    Height = 208
    Align = alClient
    TabOrder = 7
    ExplicitLeft = 8
    ExplicitTop = 559
    ExplicitHeight = 203
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 960
      Height = 15
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Paketlogg'
      TabOrder = 0
    end
    object grdPkgLogg: TcxGrid
      Left = 1
      Top = 16
      Width = 960
      Height = 86
      Align = alTop
      TabOrder = 1
      object grdPkgLoggDBTableView1: TcxGridDBTableView
        DataController.DataSource = dmsSystem.ds_PkgLogII
        DataController.KeyFieldNames = 'OperationNo;Registrerad'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdPkgLoggDBTableView1Anvndare: TcxGridDBColumn
          DataBinding.FieldName = 'Anv'#228'ndare'
          Width = 75
        end
        object grdPkgLoggDBTableView1Mtpunkt: TcxGridDBColumn
          DataBinding.FieldName = 'M'#228'tpunkt'
          Width = 75
        end
        object grdPkgLoggDBTableView1Operation: TcxGridDBColumn
          DataBinding.FieldName = 'Operation'
          Width = 72
        end
        object grdPkgLoggDBTableView1Lager: TcxGridDBColumn
          DataBinding.FieldName = 'Lager'
          Width = 121
        end
        object grdPkgLoggDBTableView1OperationNo: TcxGridDBColumn
          DataBinding.FieldName = 'OperationNo'
          Visible = False
          Width = 43
        end
        object grdPkgLoggDBTableView1Registrerad: TcxGridDBColumn
          DataBinding.FieldName = 'Registrerad'
          SortIndex = 0
          SortOrder = soDescending
          Width = 104
        end
        object grdPkgLoggDBTableView1gare: TcxGridDBColumn
          DataBinding.FieldName = #196'gare'
          Width = 133
        end
        object grdPkgLoggDBTableView1Produkt: TcxGridDBColumn
          DataBinding.FieldName = 'Produkt'
          Width = 141
        end
        object grdPkgLoggDBTableView1LIPNO: TcxGridDBColumn
          DataBinding.FieldName = 'LIPNO'
          Visible = False
          Width = 51
        end
        object grdPkgLoggDBTableView1Antalperlngd: TcxGridDBColumn
          DataBinding.FieldName = 'Antal per l'#228'ngd'
          Width = 150
        end
        object grdPkgLoggDBTableView1AM3: TcxGridDBColumn
          DataBinding.FieldName = 'AM3'
          Width = 58
        end
        object grdPkgLoggDBTableView1Styck: TcxGridDBColumn
          DataBinding.FieldName = 'Styck'
        end
        object grdPkgLoggDBTableView1PackageTypeNo: TcxGridDBColumn
          DataBinding.FieldName = 'PackageTypeNo'
          Width = 91
        end
        object grdPkgLoggDBTableView1PktTypSkapad: TcxGridDBColumn
          DataBinding.FieldName = 'PktTypSkapad'
          Visible = False
          Width = 138
        end
        object grdPkgLoggDBTableView1DB_Bokfrd: TcxGridDBColumn
          DataBinding.FieldName = 'DB_Bokf'#246'rd'
          Width = 91
        end
      end
      object grdPkgLoggLevel1: TcxGridLevel
        GridView = grdPkgLoggDBTableView1
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 1
      Top = 102
      Width = 960
      Height = 8
      HotZoneClassName = 'TcxMediaPlayer8Style'
      AlignSplitter = salTop
      Control = Panel3
      Color = clMaroon
      ParentColor = False
      ExplicitTop = 506
    end
    object Panel6: TPanel
      Left = 1
      Top = 110
      Width = 960
      Height = 97
      Align = alClient
      TabOrder = 3
      ExplicitLeft = 0
      ExplicitTop = 108
      ExplicitHeight = 92
      object grdLinkedPackage: TcxGrid
        Left = 1
        Top = 16
        Width = 958
        Height = 80
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitTop = 22
        ExplicitHeight = 94
        object grdLinkedPackageDBTableView1: TcxGridDBTableView
          DataController.DataSource = ds_PkgLoggLinkedPackage
          DataController.KeyFieldNames = 'OperationNo;Registrerad'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object grdLinkedPackageDBTableView1Anvndare: TcxGridDBColumn
            DataBinding.FieldName = 'Anv'#228'ndare'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 60
          end
          object grdLinkedPackageDBTableView1Mtpunkt: TcxGridDBColumn
            DataBinding.FieldName = 'M'#228'tpunkt'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 68
          end
          object grdLinkedPackageDBTableView1Operation: TcxGridDBColumn
            DataBinding.FieldName = 'Operation'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 50
          end
          object grdLinkedPackageDBTableView1Lager: TcxGridDBColumn
            DataBinding.FieldName = 'Lager'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 98
          end
          object grdLinkedPackageDBTableView1Registrerad: TcxGridDBColumn
            DataBinding.FieldName = 'Registrerad'
            PropertiesClassName = 'TcxLabelProperties'
            SortIndex = 0
            SortOrder = soDescending
            Width = 85
          end
          object grdLinkedPackageDBTableView1gare: TcxGridDBColumn
            DataBinding.FieldName = #196'gare'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 108
          end
          object grdLinkedPackageDBTableView1Produkt: TcxGridDBColumn
            DataBinding.FieldName = 'Produkt'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 200
          end
          object grdLinkedPackageDBTableView1Antalperlngd: TcxGridDBColumn
            DataBinding.FieldName = 'Antal per l'#228'ngd'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLinkedPackageDBTableView1AM3: TcxGridDBColumn
            DataBinding.FieldName = 'AM3'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLinkedPackageDBTableView1Styck: TcxGridDBColumn
            DataBinding.FieldName = 'Styck'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLinkedPackageDBTableView1PackageTypeNo: TcxGridDBColumn
            DataBinding.FieldName = 'PackageTypeNo'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLinkedPackageDBTableView1DB_Bokfrd: TcxGridDBColumn
            DataBinding.FieldName = 'DB_Bokf'#246'rd'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLinkedPackageDBTableView1OperationNo: TcxGridDBColumn
            DataBinding.FieldName = 'OperationNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdLinkedPackageDBTableView1LIPNO: TcxGridDBColumn
            DataBinding.FieldName = 'LIPNO'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdLinkedPackageDBTableView1PktTypSkapad: TcxGridDBColumn
            DataBinding.FieldName = 'PktTypSkapad'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
        end
        object grdLinkedPackageLevel1: TcxGridLevel
          GridView = grdLinkedPackageDBTableView1
        end
      end
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 958
        Height = 15
        Align = alTop
        Caption = 'L'#228'nkat paket'
        TabOrder = 1
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 482
    Width = 962
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salTop
    Control = Panel3
    Color = clMaroon
    ParentColor = False
    ExplicitTop = 506
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = ImageList1
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 192
    Top = 32
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
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbGetPkg'
        end
        item
          Visible = True
          ItemName = 'lbExit'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object lbExit: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object lbGetPkg: TdxBarLargeButton
      Action = acPkgInfo
      Category = 0
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 248
    Top = 96
    Bitmap = {
      494C0101030004001C0018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADAD00A59C9C00AD9C9C00ADA59C00AD9C
      9400A594940094848400736B6B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000087308000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00ADADAD00E7D6CE00F7E7DE00F7EFE700EFEFEF00EFEF
      EF00EFEFEF00EFE7E700EFDED600BDADA5007B73730073737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000873080031C65A000873
      0800000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00E7D6CE00F7EFEF00EFEFEF00EFEFEF00E7DEDE00E7E7E700E7E7
      E700E7E7E700EFEFEF00EFEFEF00EFEFEF00EFE7E700B5A59C00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000873080029AD42005AE78C0031C6
      5A0008730800000000000000000000000000000000000000000000000000ADAD
      AD00EFE7E700EFEFEF00EFEFEF00E7DEDE00CEAD9C00BD846300C6735200C67B
      5200CE846300D69C8400DECEC600E7E7E700EFEFEF00F7EFEF00CEBDB5006363
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD6000873080029AD42005AE78C005AE78C0029C6
      520021AD42000873080000000000000000000000000000000000ADADAD00F7EF
      E700EFEFEF00EFEFEF00D6B5A500C6734A00BD633100BD633100C6947B00DEBD
      A500C6734200BD633100BD633900CE8C6B00E7D6CE00EFEFEF00F7EFEF00C6BD
      B500636363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000029ADD60094D6EF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF005ADE
      FF005ADEFF005ADEFF000873080031AD52005AEF940039D66B0029C6520018AD
      310029AD420029AD42000873080029ADD60000000000ADADAD00F7E7DE00F7F7
      F700EFEFEF00D6A58C00BD633900C6633100C6633100BD734A00D6CECE00F7F7
      F700E7C6B500C6633100C6633100BD633100C6734A00DECEC600EFEFEF00F7EF
      EF00A59C94007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000029ADD600ADF7FF0094F7FF0094F7FF0094F7FF0094F7FF008CEFFF008CEF
      FF008CEFFF000873080031AD520029AD420018AD310018AD3100109C210018AD
      310029BD4A0029AD420029AD42000873080000000000C6C6C600F7F7F700EFEF
      EF00DEAD9400BD633100C6633100C6633100C6633100C6734A00D6CECE00F7F7
      F700DEAD9400CE633100C6633100C6633100BD633100C6734A00E7DED600EFEF
      EF00F7E7DE00736B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000029ADD600ADF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CEF
      FF008CEFFF000873080008730800087308000873080018AD3100109C210021AD
      31000873080008730800087308000873080000000000F7E7E700F7F7F700E7D6
      CE00C66B3900C6633100C6633100CE633100CE633100CE633100CE846300DE9C
      7B00CE6B3900CE633100CE633100C6633100C6633100BD633100CE8C6B00EFEF
      EF00F7F7F700B5A59C009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000029ADD600ADF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF008CEFFF008CEFFF005ADEFF005ADEFF0008730800089C180010AD210021AD
      31000873080073DEF70073DEF70029ADD600D6CECE00F7F7F700F7F7F700D694
      7300C6633100C6633100CE6B3100CE633100CE633100CE6B3900CE846300DE94
      6B00CE734A00CE633100CE633100CE633100C6633100C6633100BD633100E7CE
      C600F7F7F700EFDED6006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000029ADD600ADF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF008CEFFF008CEFFF005ADEFF0008730800089C180010AD2100007B
      08000873080073DEF70073DEF70029ADD600EFDED600F7F7F700EFE7E700C673
      4200C66B3900CE6B3900CE6B3100CE633100CE633100C66B3900D6CECE00FFF7
      F700DE9C7B00CE633100CE633100CE633100CE633100C6633100C6633100D69C
      8400EFEFEF00F7EFE7008C847B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000029ADD600ADF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0008730800089C180010AD21000873
      080073DEF70073DEF70073DEF70029ADD600EFDED600FFFFFF00E7CEC600C66B
      3900CE6B3900CE6B3900CE633100CE633100CE633100C66B3900CEC6C600FFFF
      FF00EFC6AD00CE6B3900CE633100CE633100CE6B3100CE6B3900C6633100CE7B
      5A00EFEFEF00F7F7EF00A5949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000029ADD600ADF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0008730800089C180000941000007B08000873
      080073DEF70073DEF70073DEF70029ADD600EFDED600FFFFFF00E7BDAD00CE6B
      3900CE6B3900CE6B3900CE633100CE633100CE633100CE633100BD947B00EFEF
      EF00FFF7F700DEA58C00CE6B3900CE633100CE6B3100CE6B3900C66B3900C673
      4A00F7EFEF00F7F7F700AD9C9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000029ADD600ADF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF0008730800089C18000894180010AD21000873080073DE
      F70073DEF70073DEF70073DEF70029ADD600EFDED600FFFFFF00EFC6AD00CE73
      4200D6734200CE6B3900CE633100CE633100CE633100CE633100C66B3900C6A5
      9400F7F7EF00FFF7F700E7A58400CE633100CE6B3100CE6B3900CE6B3900CE73
      4A00F7F7EF00FFF7F700ADA59C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000029ADD600ADF7FF00ADF7FF00ADF7FF00ADF7FF00ADF7FF00ADF7FF0094F7
      FF0094F7FF0094F7FF00087308000873080008730800087308006BE7FF006BE7
      FF0073DEF70073DEF70073DEF70029ADD600EFDED600FFFFFF00EFD6C600D673
      4200D6734200CE6B3900CE6B3100CE633100CE633100CE633100CE633100C66B
      3900D6B5A500F7F7F700F7F7EF00D6845200CE6B3900CE6B3900CE6B3900D67B
      5200F7F7F700FFF7F700ADA59C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD600ADF7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF006BE7
      FF006BE7FF0073DEF70073DEF70029ADD600EFDED600FFFFFF00FFEFE700E784
      5200DE7B4A00D6734200CE6B3900CE734200CE734A00CE6B3900CE633100CE63
      3100C6734200EFE7E700FFFFFF00E7B59C00CE6B3900D6734200D6734200DE9C
      7B00FFFFFF00FFF7EF00A59C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000029ADD60084EFFF007BF7FF007BF7FF007BF7FF007BF7FF0042CEEF0029AD
      D600ADF7FF00ADF7FF00ADF7FF00ADF7FF00ADF7FF00ADF7FF00ADF7FF00ADF7
      FF00ADF7FF00ADF7FF00ADF7FF0029ADD600F7E7DE00FFFFF700FFFFFF00F7AD
      8400EF8C5200DE7B4A00D67B4A00D6C6BD00F7E7DE00DEA58C00CE633100CE63
      3100CE6B4200EFE7E700FFFFFF00E7BDAD00D6734200D6734200D6734200EFD6
      C600FFFFFF00F7E7E700A5A59C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000029ADD60084EFFF007BF7FF007BF7FF007BF7FF007BF7FF007BF7FF0042CE
      EF0029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60000000000F7EFE700EFDED600FFFFFF00FFE7
      D600FF9C6300EF8C5A00DE7B4A00D6C6BD00FFFFFF00F7EFE700DE946B00D67B
      4A00DEAD9400F7F7F700F7F7F700DEA58C00DE7B4A00DE7B4A00E7946B00FFF7
      F700FFFFFF00DECEC600C6BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000029ADD60084EFFF007BF7FF007BF7FF007BF7FF007BF7FF007BF7FF007BF7
      FF007BF7FF0084EFFF0084EFFF0084EFFF0084EFFF0084EFFF0084EFFF0084EF
      FF0084EFFF0084EFFF0029ADD6000000000000000000F7E7DE00FFFFFF00FFFF
      FF00FFCEAD00FFA57300FF9C6300DE9C7B00E7E7E700FFFFFF00FFF7F700F7EF
      E700FFFFFF00FFFFFF00E7DED600EF8C6300EF8C5A00EF8C5A00FFE7D600FFFF
      FF00FFF7EF00C6BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000029ADD60084EFFF007BF7FF007BF7FF007BF7FF007BF7FF007BF7FF007BF7
      FF006BE7FF0029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD600000000000000000000000000FFF7EF00EFDED600FFFF
      FF00FFFFF700FFD6B500FFBD8C00FFAD7B00E7B59C00E7DED600E7DEDE00E7DE
      DE00E7E7E700EFDED600F7AD8400FF9C6B00FF9C6B00FFD6BD00FFFFFF00FFFF
      FF00E7D6CE009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      000029ADD6006BCEE7007BE7F7007BE7F7007BE7F7007BE7F7007BE7F7007BE7
      F7006BCEE70029ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7EFE700EFDE
      D600FFFFFF00FFFFFF00FFEFD600FFE7B500FFD6A500F7C69C00F7C69C00F7BD
      9C00F7BD9C00FFBD8C00FFBD8400FFBD9400FFE7D600FFFFFF00FFFFFF00F7E7
      DE00ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7E7
      DE00EFDED600FFFFFF00FFFFFF00FFFFF700FFFFE700FFF7D600FFEFBD00FFE7
      B500FFE7B500FFE7BD00FFE7D600FFFFF700FFFFFF00FFFFFF00F7EFE700ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7EFE700EFDED600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700EFDED600ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7EFE700EFDED600F7EFEF00FFF7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700F7EFE700EFDED600ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7EFE700EFDED600EFDED600EFDED600EFDED600EFDE
      D600EFDED600EFDED600EFDED600EFDED600F7EFE70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFE00FF000000FFFFFFFF
      FFDFF8003F000000FF1FFFFFFF8FF0001F000000F8000FFFFF07E0000F000000
      E0000FF00003C00007000000C0000FF00000800003000000C0000FF000008000
      03000000C0000FF00000800001000000C0000FF00000000001000000C0000FF0
      0000000001000000C0000FF00000000001000000C0000FF00000000001000000
      C0000FF00000000001000000C0000FF00000000001000000C0000FF000000000
      01000000C0000FF00000000001000000C0000FF00001000001000000C0000FF0
      0001800003000000E0000FF00003800003000000F8000FF003FFC00007000000
      FE1FFFF807FFE0000F000000FFFFFFFFFFFFF0001F000000FFFFFFFFFFFFF800
      3F000000FFFFFFFFFFFFFC007F00000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 712
    Top = 32
    object acPkgInfo: TAction
      Caption = 'Fr'#229'ga paket'
      ImageIndex = 2
      OnExecute = acPkgInfoExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng'
      ImageIndex = 0
      OnExecute = acCloseExecute
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 328
    Top = 96
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clNavy
    end
  end
  object cxEditStyleController1: TcxEditStyleController
    Style.Color = clWhite
    Style.Shadow = False
    Style.TextColor = clNavy
    Left = 96
    Top = 376
    PixelsPerInch = 96
  end
  object TtePkgNo: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TtePkgNoTimer
    Left = 88
    Top = 92
  end
  object ds_PkgLoggLinkedPackage: TDataSource
    DataSet = dmsSystem.sp_PkgLoggLinkedPackage
    Left = 344
    Top = 424
  end
  object ds_Vis_PackageRunInfo: TDataSource
    DataSet = dmsSystem.sp_Vis_PackageRunInfo
    Left = 344
    Top = 368
  end
end