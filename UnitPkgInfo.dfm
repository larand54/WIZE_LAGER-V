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
    object grdPkgInfo: TcxGrid
      Left = 1
      Top = 20
      Width = 960
      Height = 182
      Align = alClient
      TabOrder = 0
      object grdPkgInfoDBBandedTableView1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
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
        Navigator.Buttons.CustomButtons = <>
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
    end
    object Panel6: TPanel
      Left = 1
      Top = 110
      Width = 960
      Height = 97
      Align = alClient
      TabOrder = 3
      object grdLinkedPackage: TcxGrid
        Left = 1
        Top = 16
        Width = 958
        Height = 80
        Align = alClient
        TabOrder = 0
        object grdLinkedPackageDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
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
      494C010103000500040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      FD00EFE7E700EFEFEF00EFEFEF00E7DEDE00CEAD9C00BD846300C6735200C67B
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
      FD00000000000000000000000000000000000000000000000000000000000000
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
  object siLangLinked_frmPkgInfo: TsiLangLinked
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
    Left = 472
    Top = 352
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D0050006B00670049006E0066006F000100
      500041004B004500540049004E0046004F0052004D004100540049004F004E00
      010001000D000A004C006100620065006C0031000100500072006F0064007500
      630065006E0074003A00010001000D000A004C006100620065006C0032000100
      520065006700690073007400720065007200610064002000610076003A000100
      01000D000A004C006100620065006C0033000100520065006700690073007400
      720065007200610064003A00010001000D000A004C006100620065006C003400
      0100C40067006100720065003A00010001000D000A004C006100620065006C00
      350001004C006100670065007200670072007500700070003A00010001000D00
      0A004C006100620065006C00360001004C00610067006500720073007400E400
      6C006C0065003A00010001000D000A004C006100620065006C00370001005300
      740061007400750073003A00010001000D000A004C006100620065006C003800
      0100500072006F00640075006B0074003A00010001000D000A004C0061006200
      65006C00390001005000720065006600690078003A00010001000D000A004C00
      6100620065006C0031003000010053006B007200690076002000700061006B00
      650074006E00720020006F0063006800200074007200790063006B0020006500
      6E007400650072003A00010001000D000A004C006100620065006C0031003100
      010042006100720063006F00640065003A00010001000D000A004C0061006200
      65006C00310032000100470072006100640065007300740061006D0070003A00
      010001000D000A004C006100620065006C0031003900010041004D0033003A00
      010001000D000A004C006100620065006C003200300001004E004D0033003A00
      010001000D000A004C006100620065006C0032003100010041004D0032003A00
      010001000D000A004C006100620065006C003200320001005300540059004300
      4B003A00010001000D000A004C006100620065006C0032003300010041004D00
      31003A00010001000D000A004C006100620065006C003200340001004E004D00
      3100010001000D000A004C006100620065006C003200350001004D0046004200
      4D003A00010001000D000A004C006100620065006C0032003600010041006E00
      740061006C00200073007400790063006B0020002F00200061006B0074002E00
      6C00E4006E00670064003A00010001000D000A004C006100620065006C003200
      37000100500061006B00650074006B006F006400200028006C00E5006E006700
      610029003A00010001000D000A004C006100620065006C003200380001005000
      61006B00650074006B006F006400200028006B006F0072007400610029003A00
      010001000D000A004C006100620065006C0031003300010041006E0074006100
      6C00200073007400790063006B0020002F0020006E006F006D002E006C00E400
      6E00670064003A00010001000D000A004C006100620065006C00310034000100
      4B00F60072006E0072003A00010001000D000A004C006100620065006C003100
      35000100500072006F0064007500630065006E0074003A00010001000D000A00
      4C006100620065006C003100360001004F007000650072006100740069006F00
      6E003A00010001000D000A004C006100620065006C003100370001004D00E400
      7400700075006E006B0074003A00010001000D000A004C006100620065006C00
      3100380001004B00F60072006F007200640065007200010001000D000A005000
      61006E0065006C0033000100500061006E0065006C003300010001000D000A00
      67007200640050006B00670049006E0066006F0044004200420061006E006400
      650064005400610062006C006500560069006500770031004C004F0041004400
      5F0043005500530054004F004D004500520001004B0075006E00640001000100
      0D000A0067007200640050006B00670049006E0066006F004400420042006100
      6E006400650064005400610062006C006500560069006500770031004C004F00
      410044005F0053005500500050004C0049004500520001005600650072006B00
      010001000D000A0067007200640050006B00670049006E0066006F0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4C004F00410044005F0044004100540045000100550074006C00610073007400
      61006400010001000D000A0067007200640050006B00670049006E0066006F00
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004C004F00410044005F004E004F0001004C006100730074006E007200
      010001000D000A0067007200640050006B00670049006E0066006F0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4C004F005F004E0055004D0042004500520001004C004F00010001000D000A00
      67007200640050006B00670049006E0066006F0044004200420061006E006400
      650064005400610062006C006500560069006500770031004600530001004600
      5300010001000D000A0067007200640050006B00670049006E0066006F004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004C004F00410044005F0043005200450041005400450044005F0042005900
      0100550074006C0061007300740061006400200061007600010001000D000A00
      67007200640050006B00670049006E0066006F0044004200420061006E006400
      650064005400610062006C006500560069006500770031004C004F0041004400
      5F0053005400410054005500530001004C006100730074007300740061007400
      75007300010001000D000A0067007200640050006B00670049006E0066006F00
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310049004E0056004F004900430045005F004E004F000100460061006B00
      74007500720061006E007200010001000D000A0067007200640050006B006700
      49006E0066006F0044004200420061006E006400650064005400610062006C00
      65005600690065007700310049004E0056005F00430052004500410054004500
      44005F0042005900010052006500670069007300740072006500720061006400
      200061007600010001000D000A0067007200640050006B00670049006E006600
      6F0044004200420061006E006400650064005400610062006C00650056006900
      65007700310049004E0056004F004900430045005F0044004100540045000100
      460061006B00750074006500720061006400010001000D000A00670072006400
      50006B00670049006E0066006F0044004200420061006E006400650064005400
      610062006C0065005600690065007700310049004E0054005F0049004E005600
      4F004900430045005F004E004F00010049006E0074002E00660061006B007400
      6E007200010001000D000A0067007200640050006B00670049006E0066006F00
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310049004E0056004F004900430045005400590050004500010046006100
      6B007400750072006100740079007000010001000D000A006700720064005000
      6B00670049006E0066006F0044004200420061006E0064006500640054006100
      62006C00650056006900650077003100440045004200490054005F0043005200
      450044004900540001004B006F006E0074006F00010001000D000A0067007200
      640050006B00670049006E0066006F0044004200420061006E00640065006400
      5400610062006C006500560069006500770031004F0052004400450052005F00
      4E004F0001004B006F006E007400720061006B0074006E007200010001000D00
      0A0067007200640050006B00670049006E0066006F0044004200420061006E00
      6400650064005400610062006C006500560069006500770031004F0052004400
      450052005F0043005500530054004F004D004500520001004B0075006E006400
      010001000D000A00500061006E0065006C00320001004C004100530054002C00
      2000460041004B00540055005200410020004F004300480020004B004F004E00
      5400520041004B005400200049004E0046004F00010001000D000A0050006100
      6E0065006C0035000100500061006B00650074006C006F006700670001000100
      0D000A0067007200640050006B0067004C006F00670067004400420054006100
      62006C0065005600690065007700310041006E0076006E006400610072006500
      010041006E007600E4006E006400610072006500010001000D000A0067007200
      640050006B0067004C006F0067006700440042005400610062006C0065005600
      69006500770031004D007400700075006E006B00740001004D00E40074007000
      75006E006B007400010001000D000A0067007200640050006B0067004C006F00
      67006700440042005400610062006C006500560069006500770031004F007000
      650072006100740069006F006E0001004F007000650072006100740069006F00
      6E00010001000D000A0067007200640050006B0067004C006F00670067004400
      42005400610062006C006500560069006500770031004C006100670065007200
      01004C006100670065007200010001000D000A0067007200640050006B006700
      4C006F0067006700440042005400610062006C00650056006900650077003100
      4F007000650072006100740069006F006E004E006F0001004F00700065007200
      6100740069006F006E004E006F00010001000D000A0067007200640050006B00
      67004C006F0067006700440042005400610062006C0065005600690065007700
      3100520065006700690073007400720065007200610064000100520065006700
      69007300740072006500720061006400010001000D000A006700720064005000
      6B0067004C006F0067006700440042005400610062006C006500560069006500
      7700310067006100720065000100C4006700610072006500010001000D000A00
      67007200640050006B0067004C006F0067006700440042005400610062006C00
      650056006900650077003100500072006F00640075006B007400010050007200
      6F00640075006B007400010001000D000A0067007200640050006B0067004C00
      6F0067006700440042005400610062006C006500560069006500770031004C00
      490050004E004F0001004C00490050004E004F00010001000D000A0067007200
      640050006B0067004C006F0067006700440042005400610062006C0065005600
      690065007700310041006E00740061006C007000650072006C006E0067006400
      010041006E00740061006C00200070006500720020006C00E4006E0067006400
      010001000D000A0067007200640050006B0067004C006F006700670044004200
      5400610062006C0065005600690065007700310041004D003300010041004D00
      3300010001000D000A0067007200640050006B0067004C006F00670067004400
      42005400610062006C0065005600690065007700310053007400790063006B00
      010053007400790063006B00010001000D000A0067007200640050006B006700
      4C006F0067006700440042005400610062006C00650056006900650077003100
      5000610063006B0061006700650054007900700065004E006F00010050006100
      63006B0061006700650054007900700065004E006F00010001000D000A006700
      7200640050006B0067004C006F0067006700440042005400610062006C006500
      5600690065007700310050006B00740054007900700053006B00610070006100
      6400010050006B00740054007900700053006B00610070006100640001000100
      0D000A0067007200640050006B0067004C006F00670067004400420054006100
      62006C00650056006900650077003100440042005F0042006F006B0066007200
      64000100440042005F0042006F006B006600F60072006400010001000D000A00
      6700720064004C0069006E006B00650064005000610063006B00610067006500
      440042005400610062006C0065005600690065007700310041006E0076006E00
      6400610072006500010041006E007600E4006E00640061007200650001000100
      0D000A006700720064004C0069006E006B00650064005000610063006B006100
      67006500440042005400610062006C006500560069006500770031004D007400
      700075006E006B00740001004D00E4007400700075006E006B00740001000100
      0D000A006700720064004C0069006E006B00650064005000610063006B006100
      67006500440042005400610062006C006500560069006500770031004F007000
      650072006100740069006F006E0001004F007000650072006100740069006F00
      6E00010001000D000A006700720064004C0069006E006B006500640050006100
      63006B00610067006500440042005400610062006C0065005600690065007700
      31004C00610067006500720001004C006100670065007200010001000D000A00
      6700720064004C0069006E006B00650064005000610063006B00610067006500
      440042005400610062006C006500560069006500770031005200650067006900
      7300740072006500720061006400010052006500670069007300740072006500
      720061006400010001000D000A006700720064004C0069006E006B0065006400
      5000610063006B00610067006500440042005400610062006C00650056006900
      65007700310067006100720065000100C4006700610072006500010001000D00
      0A006700720064004C0069006E006B00650064005000610063006B0061006700
      6500440042005400610062006C00650056006900650077003100500072006F00
      640075006B0074000100500072006F00640075006B007400010001000D000A00
      6700720064004C0069006E006B00650064005000610063006B00610067006500
      440042005400610062006C0065005600690065007700310041006E0074006100
      6C007000650072006C006E0067006400010041006E00740061006C0020007000
      6500720020006C00E4006E0067006400010001000D000A006700720064004C00
      69006E006B00650064005000610063006B006100670065004400420054006100
      62006C0065005600690065007700310041004D003300010041004D0033000100
      01000D000A006700720064004C0069006E006B00650064005000610063006B00
      610067006500440042005400610062006C006500560069006500770031005300
      7400790063006B00010053007400790063006B00010001000D000A0067007200
      64004C0069006E006B00650064005000610063006B0061006700650044004200
      5400610062006C006500560069006500770031005000610063006B0061006700
      650054007900700065004E006F0001005000610063006B006100670065005400
      7900700065004E006F00010001000D000A006700720064004C0069006E006B00
      650064005000610063006B00610067006500440042005400610062006C006500
      56006900650077003100440042005F0042006F006B0066007200640001004400
      42005F0042006F006B006600F60072006400010001000D000A00670072006400
      4C0069006E006B00650064005000610063006B00610067006500440042005400
      610062006C006500560069006500770031004F00700065007200610074006900
      6F006E004E006F0001004F007000650072006100740069006F006E004E006F00
      010001000D000A006700720064004C0069006E006B0065006400500061006300
      6B00610067006500440042005400610062006C00650056006900650077003100
      4C00490050004E004F0001004C00490050004E004F00010001000D000A006700
      720064004C0069006E006B00650064005000610063006B006100670065004400
      42005400610062006C0065005600690065007700310050006B00740054007900
      700053006B006100700061006400010050006B00740054007900700053006B00
      6100700061006400010001000D000A00500061006E0065006C00370001004C00
      E4006E006B00610074002000700061006B0065007400010001000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003100
      010043007500730074006F006D0020003100010001000D000A00610063005000
      6B00670049006E0066006F00010046007200E500670061002000700061006B00
      65007400010001000D000A006100630043006C006F0073006500010053007400
      E4006E006700010001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A005400660072006D0050006B00670049006E0066006F0001004D005300
      2000530061006E007300200053006500720069006600010001000D000A005000
      61006E0065006C00320001004D0053002000530061006E007300200053006500
      720069006600010001000D000A00640078004200610072004D0061006E006100
      670065007200310001005300650067006F006500200055004900010001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      7200310001005300650067006F006500200055004900010001000D000A006300
      78005300740079006C006500310001005400610068006F006D00610001000100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A00640078004200610072004D0061006E00
      610067006500720031002E00430061007400650067006F007200690065007300
      0100440065006600610075006C007400010001000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A004900
      440053005F0030000100500041004B004500540049004E0046004F0052004D00
      4100540049004F004E002000010001000D000A004900440053005F0031000100
      2000500061006B00650074006E0072003A002000010001000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A0067007200640050006B00670049006E0066006F00
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004C004F00410044005F0043005500530054004F004D00450052002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A0067007200640050006B006700
      49006E0066006F0044004200420061006E006400650064005400610062006C00
      6500560069006500770031004C004F00410044005F0053005500500050004C00
      4900450052002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      640050006B00670049006E0066006F0044004200420061006E00640065006400
      5400610062006C006500560069006500770031004C004F00410044005F004400
      4100540045002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      640050006B00670049006E0066006F0044004200420061006E00640065006400
      5400610062006C006500560069006500770031004C004F00410044005F004E00
      4F002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064005000
      6B00670049006E0066006F0044004200420061006E0064006500640054006100
      62006C006500560069006500770031004C004F005F004E0055004D0042004500
      52002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064005000
      6B00670049006E0066006F0044004200420061006E0064006500640054006100
      62006C00650056006900650077003100460053002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A0067007200640050006B00670049006E0066006F004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004C004F00410044005F0043005200450041005400450044005F0042005900
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640050006B00
      670049006E0066006F0044004200420061006E00640065006400540061006200
      6C006500560069006500770031004C004F00410044005F005300540041005400
      550053002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      50006B00670049006E0066006F0044004200420061006E006400650064005400
      610062006C0065005600690065007700310049004E0056004F00490043004500
      5F004E004F002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      640050006B00670049006E0066006F0044004200420061006E00640065006400
      5400610062006C0065005600690065007700310049004E0056005F0043005200
      450041005400450044005F00420059002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A0067007200640050006B00670049006E0066006F00440042004200
      61006E006400650064005400610062006C006500560069006500770031004900
      4E0056004F004900430045005F0044004100540045002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A0067007200640050006B00670049006E0066006F00
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310049004E0054005F0049004E0056004F004900430045005F004E004F00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640050006B00
      670049006E0066006F0044004200420061006E00640065006400540061006200
      6C0065005600690065007700310049004E0056004F0049004300450054005900
      500045002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      50006B00670049006E0066006F0044004200420061006E006400650064005400
      610062006C00650056006900650077003100440045004200490054005F004300
      520045004400490054002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      67007200640050006B00670049006E0066006F0044004200420061006E006400
      650064005400610062006C006500560069006500770031004F00520044004500
      52005F004E004F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      7200640050006B00670049006E0066006F0044004200420061006E0064006500
      64005400610062006C006500560069006500770031004F005200440045005200
      5F0043005500530054004F004D00450052002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A0063007800530070006C006900740074006500720032002E00
      48006F0074005A006F006E00650043006C006100730073004E0061006D006500
      01005400630078004D00650064006900610050006C0061007900650072003800
      5300740079006C006500010001000D000A006700720064004C0069006E006B00
      650064005000610063006B00610067006500440042005400610062006C006500
      5600690065007700310041006E0076006E0064006100720065002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A006700720064004C0069006E006B006500
      64005000610063006B00610067006500440042005400610062006C0065005600
      69006500770031004D007400700075006E006B0074002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A006700720064004C0069006E006B00650064005000
      610063006B00610067006500440042005400610062006C006500560069006500
      770031004F007000650072006100740069006F006E002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A006700720064004C0069006E006B00650064005000
      610063006B00610067006500440042005400610062006C006500560069006500
      770031004C0061006700650072002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A006700720064004C0069006E006B00650064005000610063006B006100
      67006500440042005400610062006C0065005600690065007700310052006500
      6700690073007400720065007200610064002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A006700720064004C0069006E006B0065006400500061006300
      6B00610067006500440042005400610062006C00650056006900650077003100
      67006100720065002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      720064004C0069006E006B00650064005000610063006B006100670065004400
      42005400610062006C00650056006900650077003100500072006F0064007500
      6B0074002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      4C0069006E006B00650064005000610063006B00610067006500440042005400
      610062006C0065005600690065007700310041006E00740061006C0070006500
      72006C006E00670064002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      6700720064004C0069006E006B00650064005000610063006B00610067006500
      440042005400610062006C0065005600690065007700310041004D0033002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A006700720064004C0069006E00
      6B00650064005000610063006B00610067006500440042005400610062006C00
      65005600690065007700310053007400790063006B002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A006700720064004C0069006E006B00650064005000
      610063006B00610067006500440042005400610062006C006500560069006500
      770031005000610063006B0061006700650054007900700065004E006F002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A006700720064004C0069006E00
      6B00650064005000610063006B00610067006500440042005400610062006C00
      650056006900650077003100440042005F0042006F006B006600720064002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A006700720064004C0069006E00
      6B00650064005000610063006B00610067006500440042005400610062006C00
      6500560069006500770031004F007000650072006100740069006F006E004E00
      6F002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064004C00
      69006E006B00650064005000610063006B006100670065004400420054006100
      62006C006500560069006500770031004C00490050004E004F002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A006700720064004C0069006E006B006500
      64005000610063006B00610067006500440042005400610062006C0065005600
      690065007700310050006B00740054007900700053006B006100700061006400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0063007800530070006C00
      6900740074006500720031002E0048006F0074005A006F006E00650043006C00
      6100730073004E0061006D00650001005400630078004D006500640069006100
      50006C00610079006500720038005300740079006C006500010001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      31002E004F006C0064004E0061006D006500010043007500730074006F006D00
      20003100010001000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00670072006400
      50006B00670049006E0066006F0044004200420061006E006400650064005400
      610062006C006500560069006500770031002E00420061006E00640073005B00
      30005D002E00430061007000740069006F006E0001004C004100530054000100
      01000D000A0067007200640050006B00670049006E0066006F00440042004200
      61006E006400650064005400610062006C006500560069006500770031002E00
      420061006E00640073005B0031005D002E00430061007000740069006F006E00
      0100460041004B005400550052004100010001000D000A006700720064005000
      6B00670049006E0066006F0044004200420061006E0064006500640054006100
      62006C006500560069006500770031002E00420061006E00640073005B003200
      5D002E00430061007000740069006F006E0001004B004F004E00540052004100
      4B005400010001000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A005400660072006D0050006B00
      670049006E0066006F000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00500061006E0065006C0032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00640078004200610072004D0061006E0061006700650072003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00640078004200610072004D0061006E006100670065007200
      310042006100720031000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00630078005300740079006C006500
      31000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00}
  end
end
