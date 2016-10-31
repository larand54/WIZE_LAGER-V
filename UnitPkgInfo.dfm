object frmPkgInfo: TfrmPkgInfo
  Left = 256
  Top = 188
  ActiveControl = tePkgNo
  Caption = 'PAKETINFORMATION'
  ClientHeight = 875
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 1184
    Height = 47
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = dalTop
    BarManager = dxBarManager1
  end
  object Panel1: TPanel
    Left = 0
    Top = 47
    Width = 1184
    Height = 367
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 418
      Top = 138
      Width = 64
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Producent:'
    end
    object Label2: TLabel
      Left = 20
      Top = 193
      Width = 92
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Registrerad av:'
    end
    object Label3: TLabel
      Left = 20
      Top = 167
      Width = 74
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Registrerad:'
    end
    object Label4: TLabel
      Left = 20
      Top = 142
      Width = 40
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #196'gare:'
    end
    object Label5: TLabel
      Left = 20
      Top = 116
      Width = 73
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Lagergrupp:'
    end
    object Label6: TLabel
      Left = 20
      Top = 90
      Width = 70
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Lagerst'#228'lle:'
    end
    object Label7: TLabel
      Left = 20
      Top = 64
      Width = 40
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Status:'
    end
    object Label8: TLabel
      Left = 418
      Top = 10
      Width = 49
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Produkt:'
    end
    object Label9: TLabel
      Left = 20
      Top = 38
      Width = 36
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Prefix:'
    end
    object Label10: TLabel
      Left = 20
      Top = 12
      Width = 170
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Skriv paketnr och tryck enter:'
    end
    object Label11: TLabel
      Left = 418
      Top = 61
      Width = 55
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Barcode:'
    end
    object Label12: TLabel
      Left = 418
      Top = 89
      Width = 78
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Gradestamp:'
    end
    object Label19: TLabel
      Left = 1004
      Top = 15
      Width = 30
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'AM3:'
    end
    object Label20: TLabel
      Left = 1004
      Top = 41
      Width = 31
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'NM3:'
    end
    object Label21: TLabel
      Left = 1004
      Top = 66
      Width = 30
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'AM2:'
    end
    object Label22: TLabel
      Left = 1004
      Top = 92
      Width = 47
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'STYCK:'
    end
    object Label23: TLabel
      Left = 1004
      Top = 118
      Width = 30
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'AM1:'
    end
    object Label24: TLabel
      Left = 1004
      Top = 144
      Width = 28
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'NM1'
    end
    object Label25: TLabel
      Left = 1004
      Top = 170
      Width = 42
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'MFBM:'
    end
    object Label26: TLabel
      Left = 20
      Top = 275
      Width = 132
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Antal styck / akt.l'#228'ngd:'
    end
    object Label27: TLabel
      Left = 418
      Top = 113
      Width = 106
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Paketkod (l'#229'nga):'
    end
    object Label28: TLabel
      Left = 418
      Top = 33
      Width = 82
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Impregnering:'
    end
    object Label13: TLabel
      Left = 20
      Top = 299
      Width = 140
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Antal styck / nom.l'#228'ngd:'
    end
    object Label14: TLabel
      Left = 482
      Top = 171
      Width = 34
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'K'#246'rnr:'
    end
    object Label15: TLabel
      Left = 668
      Top = 171
      Width = 64
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Producent:'
    end
    object Label16: TLabel
      Left = 482
      Top = 194
      Width = 62
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Operation:'
    end
    object Label17: TLabel
      Left = 672
      Top = 196
      Width = 57
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'M'#228'tpunkt:'
    end
    object Bevel1: TBevel
      Left = 399
      Top = 161
      Width = 567
      Height = 58
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
    end
    object Label18: TLabel
      Left = 411
      Top = 167
      Width = 52
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'K'#246'rorder'
    end
    object Label29: TLabel
      Left = 20
      Top = 217
      Width = 58
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Referens:'
    end
    object Label30: TLabel
      Left = 20
      Top = 243
      Width = 31
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Info1:'
    end
    object Label31: TLabel
      Left = 404
      Top = 243
      Width = 31
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Info2:'
    end
    object Label32: TLabel
      Left = 672
      Top = 244
      Width = 73
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Stored date:'
    end
    object Label33: TLabel
      Left = 979
      Top = 243
      Width = 51
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Position:'
    end
    object Label34: TLabel
      Left = 29
      Top = 336
      Width = 165
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Avregistrerat som likv'#228'rdigt:'
    end
    object Bevel2: TBevel
      Left = 20
      Top = 323
      Width = 1123
      Height = 36
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
    end
    object Label35: TLabel
      Left = 220
      Top = 336
      Width = 145
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Avregistrerat av paketnr:'
    end
    object Label36: TLabel
      Left = 556
      Top = 336
      Width = 119
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Avregistrerat datum:'
    end
    object Label37: TLabel
      Left = 852
      Top = 336
      Width = 66
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'K'#246'rordernr:'
    end
    object Label38: TLabel
      Left = 1004
      Top = 196
      Width = 57
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Kortakod:'
    end
    object dxDBEdit3: TcxDBTextEdit
      Left = 537
      Top = 0
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'PRODUCT'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 2
      Width = 429
    end
    object dxDBEdit4: TcxDBTextEdit
      Left = 193
      Top = 54
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'PKG_STATUS'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 3
      Width = 198
    end
    object dxDBEdit5: TcxDBTextEdit
      Left = 193
      Top = 80
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'INVENTORY'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 4
      Width = 198
    end
    object dxDBEdit6: TcxDBTextEdit
      Left = 193
      Top = 106
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'INVENTORY_GROUP'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 5
      Width = 198
    end
    object dxDBEdit7: TcxDBTextEdit
      Left = 193
      Top = 132
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'INVENTORY_OWNER'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 6
      Width = 198
    end
    object dxDBEdit8: TcxDBTextEdit
      Left = 193
      Top = 158
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'PKG_CREATED'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 7
      Width = 198
    end
    object dxDBEdit9: TcxDBTextEdit
      Left = 193
      Top = 183
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'PKG_CREATED_BY'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 8
      Width = 198
    end
    object dxDBEdit10: TcxDBTextEdit
      Left = 537
      Top = 130
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'PRODUCER'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 9
      Width = 429
    end
    object dxDBEdit11: TcxDBTextEdit
      Left = 537
      Top = 51
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'BARCODE'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 10
      Width = 429
    end
    object dxDBEdit12: TcxDBTextEdit
      Left = 537
      Top = 77
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'GRADESTAMP'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 11
      Width = 429
    end
    object dxDBEdit19: TcxDBTextEdit
      Left = 1063
      Top = 2
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'M3_ACT'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 12
      Width = 80
    end
    object dxDBEdit20: TcxDBTextEdit
      Left = 1063
      Top = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'M3_NOM'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 13
      Width = 80
    end
    object dxDBEdit21: TcxDBTextEdit
      Left = 1063
      Top = 54
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'M2'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 14
      Width = 80
    end
    object dxDBEdit22: TcxDBTextEdit
      Left = 1063
      Top = 80
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'PIECES'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 15
      Width = 80
    end
    object dxDBEdit23: TcxDBTextEdit
      Left = 1063
      Top = 106
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'ACT_LINEAL_METER'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 16
      Width = 80
    end
    object dxDBEdit24: TcxDBTextEdit
      Left = 1063
      Top = 132
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'NOM_LINEAL_METER'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 17
      Width = 80
    end
    object dxDBEdit25: TcxDBTextEdit
      Left = 1063
      Top = 158
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'MFBM'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 18
      Width = 80
    end
    object ePcsPerACTLength: TcxTextEdit
      Left = 193
      Top = 265
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Style.Shadow = True
      TabOrder = 19
      Width = 957
    end
    object dxDBEdit26: TcxDBTextEdit
      Left = 537
      Top = 103
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'LANGAKODEN'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 20
      Width = 429
    end
    object dxDBEdit27: TcxDBTextEdit
      Left = 1063
      Top = 193
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'KORTAKODEN'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 21
      Width = 80
    end
    object ePcsPerNOMLength: TcxTextEdit
      Left = 193
      Top = 292
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Style.Shadow = True
      TabOrder = 22
      Width = 957
    end
    object tePkgNo: TcxTextEdit
      Left = 193
      Top = 5
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 0
      OnKeyDown = tePkgNoKeyDown
      Width = 196
    end
    object tePrefix: TcxTextEdit
      Left = 193
      Top = 30
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 1
      OnKeyDown = tePkgNoKeyDown
      Width = 196
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 604
      Top = 165
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'RunNo'
      DataBinding.DataSource = ds_Vis_PackageRunInfo
      Style.Shadow = True
      TabOrder = 23
      Width = 61
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 740
      Top = 165
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'Producer'
      DataBinding.DataSource = ds_Vis_PackageRunInfo
      Style.Shadow = True
      TabOrder = 24
      Width = 216
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 604
      Top = 193
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'Operation'
      DataBinding.DataSource = ds_Vis_PackageRunInfo
      Style.Shadow = True
      TabOrder = 25
      Width = 61
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 740
      Top = 193
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'RegPointName'
      DataBinding.DataSource = ds_Vis_PackageRunInfo
      Style.Shadow = True
      TabOrder = 26
      Width = 216
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 193
      Top = 209
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'REFERENCE'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 27
      Width = 198
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 193
      Top = 237
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'Info1'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 28
      Width = 198
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 457
      Top = 237
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'Info2'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 29
      Width = 198
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 753
      Top = 237
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'StoredDate'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 30
      Width = 185
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 1032
      Top = 237
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'Position'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 31
      Width = 118
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 377
      Top = 327
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'SupplierCode'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 32
      Width = 48
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 433
      Top = 327
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'PackageNo'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 33
      Width = 105
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 683
      Top = 327
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'DateCreated'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 34
      Width = 161
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 926
      Top = 327
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'SortingOrderNo'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Shadow = True
      TabOrder = 35
      Width = 161
    end
    object teIMP: TcxDBTextEdit
      Left = 537
      Top = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'IMP'
      DataBinding.DataSource = dmsSystem.ds_PkgInfoII
      Style.Color = clWindow
      Style.Shadow = True
      TabOrder = 36
      Width = 429
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 414
    Width = 1184
    Height = 242
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    Caption = 'Panel3'
    TabOrder = 2
    ExplicitTop = 383
    object grdPkgInfo: TcxGrid
      Left = 1
      Top = 25
      Width = 1182
      Height = 216
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 136
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
          SortIndex = 1
          SortOrder = soDescending
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
      Width = 1182
      Height = 24
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelOuter = bvNone
      Caption = 'LAST, FAKTURA OCH KONTRAKT INFO'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 664
    Width = 1184
    Height = 211
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 7
    ExplicitTop = 632
    ExplicitHeight = 227
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 1182
      Height = 144
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvNone
      Caption = 'Paketlogg'
      TabOrder = 0
      object grdPkgLogg: TcxGrid
        Left = 1
        Top = 1
        Width = 1180
        Height = 142
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitTop = 39
        ExplicitWidth = 1182
        ExplicitHeight = 97
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
    end
    object Panel6: TPanel
      Left = 1
      Top = 153
      Width = 1182
      Height = 57
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 1
      ExplicitTop = 176
      object grdLinkedPackage: TcxGrid
        Left = 1
        Top = 20
        Width = 1180
        Height = 36
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 112
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
        Width = 1180
        Height = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        Caption = 'L'#228'nkat paket'
        TabOrder = 1
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 1
      Top = 145
      Width = 1182
      Height = 8
      HotZoneClassName = 'TcxMediaPlayer8Style'
      AlignSplitter = salTop
      Color = clMaroon
      ParentColor = False
      ExplicitTop = 113
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 656
    Width = 1184
    Height = 8
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salTop
    Control = Panel3
    Color = clMaroon
    ParentColor = False
    ExplicitTop = 583
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
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
    UseSystemFont = False
    Left = 376
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
    Left = 376
    Top = 120
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
    Left = 376
    Top = 176
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
    Left = 376
    Top = 64
    PixelsPerInch = 120
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clNavy
    end
  end
  object cxEditStyleController1: TcxEditStyleController
    Style.Color = clWhite
    Style.Shadow = False
    Style.TextColor = clNavy
    Left = 328
    Top = 664
    PixelsPerInch = 120
  end
  object TtePkgNo: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TtePkgNoTimer
    Left = 376
    Top = 228
  end
  object ds_PkgLoggLinkedPackage: TDataSource
    DataSet = dmsSystem.sp_PkgLoggLinkedPackage
    Left = 328
    Top = 608
  end
  object ds_Vis_PackageRunInfo: TDataSource
    DataSet = dmsSystem.sp_Vis_PackageRunInfo
    Left = 328
    Top = 552
  end
  object siLangLinked_frmPkgInfo: TsiLangLinked
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
    Left = 328
    Top = 496
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D0050006B00670049006E0066006F000100
      500041004B004500540049004E0046004F0052004D004100540049004F004E00
      0100010001000D000A004C006100620065006C0031000100500072006F006400
      7500630065006E0074003A000100010001000D000A004C006100620065006C00
      3200010052006500670069007300740072006500720061006400200061007600
      3A000100010001000D000A004C006100620065006C0033000100520065006700
      690073007400720065007200610064003A000100010001000D000A004C006100
      620065006C0034000100C40067006100720065003A000100010001000D000A00
      4C006100620065006C00350001004C0061006700650072006700720075007000
      70003A000100010001000D000A004C006100620065006C00360001004C006100
      67006500720073007400E4006C006C0065003A000100010001000D000A004C00
      6100620065006C00370001005300740061007400750073003A00010001000100
      0D000A004C006100620065006C0038000100500072006F00640075006B007400
      3A000100010001000D000A004C006100620065006C0039000100500072006500
      6600690078003A000100010001000D000A004C006100620065006C0031003000
      010053006B007200690076002000700061006B00650074006E00720020006F00
      63006800200074007200790063006B00200065006E007400650072003A000100
      010001000D000A004C006100620065006C003100310001004200610072006300
      6F00640065003A000100010001000D000A004C006100620065006C0031003200
      0100470072006100640065007300740061006D0070003A000100010001000D00
      0A004C006100620065006C0031003900010041004D0033003A00010001000100
      0D000A004C006100620065006C003200300001004E004D0033003A0001000100
      01000D000A004C006100620065006C0032003100010041004D0032003A000100
      010001000D000A004C006100620065006C003200320001005300540059004300
      4B003A000100010001000D000A004C006100620065006C003200330001004100
      4D0031003A000100010001000D000A004C006100620065006C00320034000100
      4E004D0031000100010001000D000A004C006100620065006C00320035000100
      4D00460042004D003A000100010001000D000A004C006100620065006C003200
      3600010041006E00740061006C00200073007400790063006B0020002F002000
      61006B0074002E006C00E4006E00670064003A000100010001000D000A004C00
      6100620065006C00320037000100500061006B00650074006B006F0064002000
      28006C00E5006E006700610029003A000100010001000D000A004C0061006200
      65006C00320038000100500061006B00650074006B006F006400200028006B00
      6F0072007400610029003A000100010001000D000A004C006100620065006C00
      31003300010041006E00740061006C00200073007400790063006B0020002F00
      20006E006F006D002E006C00E4006E00670064003A000100010001000D000A00
      4C006100620065006C003100340001004B00F60072006E0072003A0001000100
      01000D000A004C006100620065006C00310035000100500072006F0064007500
      630065006E0074003A000100010001000D000A004C006100620065006C003100
      360001004F007000650072006100740069006F006E003A000100010001000D00
      0A004C006100620065006C003100370001004D00E4007400700075006E006B00
      74003A000100010001000D000A004C006100620065006C003100380001004B00
      F60072006F0072006400650072000100010001000D000A00500061006E006500
      6C0033000100500061006E0065006C0033000100010001000D000A0067007200
      640050006B00670049006E0066006F0044004200420061006E00640065006400
      5400610062006C006500560069006500770031004C004F00410044005F004300
      5500530054004F004D004500520001004B0075006E0064000100010001000D00
      0A0067007200640050006B00670049006E0066006F0044004200420061006E00
      6400650064005400610062006C006500560069006500770031004C004F004100
      44005F0053005500500050004C0049004500520001005600650072006B000100
      010001000D000A0067007200640050006B00670049006E0066006F0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4C004F00410044005F0044004100540045000100550074006C00610073007400
      610064000100010001000D000A0067007200640050006B00670049006E006600
      6F0044004200420061006E006400650064005400610062006C00650056006900
      6500770031004C004F00410044005F004E004F0001004C006100730074006E00
      72000100010001000D000A0067007200640050006B00670049006E0066006F00
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004C004F005F004E0055004D0042004500520001004C004F0001000100
      01000D000A0067007200640050006B00670049006E0066006F00440042004200
      61006E006400650064005400610062006C006500560069006500770031004600
      53000100460053000100010001000D000A0067007200640050006B0067004900
      6E0066006F0044004200420061006E006400650064005400610062006C006500
      560069006500770031004C004F00410044005F00430052004500410054004500
      44005F00420059000100550074006C0061007300740061006400200061007600
      0100010001000D000A0067007200640050006B00670049006E0066006F004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004C004F00410044005F0053005400410054005500530001004C0061007300
      74007300740061007400750073000100010001000D000A006700720064005000
      6B00670049006E0066006F0044004200420061006E0064006500640054006100
      62006C0065005600690065007700310049004E0056004F004900430045005F00
      4E004F000100460061006B0074007500720061006E0072000100010001000D00
      0A0067007200640050006B00670049006E0066006F0044004200420061006E00
      6400650064005400610062006C0065005600690065007700310049004E005600
      5F0043005200450041005400450044005F004200590001005200650067006900
      73007400720065007200610064002000610076000100010001000D000A006700
      7200640050006B00670049006E0066006F0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310049004E0056004F004900
      430045005F0044004100540045000100460061006B0075007400650072006100
      64000100010001000D000A0067007200640050006B00670049006E0066006F00
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310049004E0054005F0049004E0056004F004900430045005F004E004F00
      010049006E0074002E00660061006B0074006E0072000100010001000D000A00
      67007200640050006B00670049006E0066006F0044004200420061006E006400
      650064005400610062006C0065005600690065007700310049004E0056004F00
      49004300450054005900500045000100460061006B0074007500720061007400
      790070000100010001000D000A0067007200640050006B00670049006E006600
      6F0044004200420061006E006400650064005400610062006C00650056006900
      650077003100440045004200490054005F004300520045004400490054000100
      4B006F006E0074006F000100010001000D000A0067007200640050006B006700
      49006E0066006F0044004200420061006E006400650064005400610062006C00
      6500560069006500770031004F0052004400450052005F004E004F0001004B00
      6F006E007400720061006B0074006E0072000100010001000D000A0067007200
      640050006B00670049006E0066006F0044004200420061006E00640065006400
      5400610062006C006500560069006500770031004F0052004400450052005F00
      43005500530054004F004D004500520001004B0075006E006400010001000100
      0D000A00500061006E0065006C00320001004C004100530054002C0020004600
      41004B00540055005200410020004F004300480020004B004F004E0054005200
      41004B005400200049004E0046004F000100010001000D000A00500061006E00
      65006C0035000100500061006B00650074006C006F0067006700010001000100
      0D000A006700720064004C0069006E006B00650064005000610063006B006100
      67006500440042005400610062006C0065005600690065007700310041006E00
      76006E006400610072006500010041006E007600E4006E006400610072006500
      0100010001000D000A006700720064004C0069006E006B006500640050006100
      63006B00610067006500440042005400610062006C0065005600690065007700
      31004D007400700075006E006B00740001004D00E4007400700075006E006B00
      74000100010001000D000A006700720064004C0069006E006B00650064005000
      610063006B00610067006500440042005400610062006C006500560069006500
      770031004F007000650072006100740069006F006E0001004F00700065007200
      6100740069006F006E000100010001000D000A006700720064004C0069006E00
      6B00650064005000610063006B00610067006500440042005400610062006C00
      6500560069006500770031004C00610067006500720001004C00610067006500
      72000100010001000D000A006700720064004C0069006E006B00650064005000
      610063006B00610067006500440042005400610062006C006500560069006500
      7700310052006500670069007300740072006500720061006400010052006500
      6700690073007400720065007200610064000100010001000D000A0067007200
      64004C0069006E006B00650064005000610063006B0061006700650044004200
      5400610062006C0065005600690065007700310067006100720065000100C400
      67006100720065000100010001000D000A006700720064004C0069006E006B00
      650064005000610063006B00610067006500440042005400610062006C006500
      56006900650077003100500072006F00640075006B0074000100500072006F00
      640075006B0074000100010001000D000A006700720064004C0069006E006B00
      650064005000610063006B00610067006500440042005400610062006C006500
      5600690065007700310041006E00740061006C007000650072006C006E006700
      6400010041006E00740061006C00200070006500720020006C00E4006E006700
      64000100010001000D000A006700720064004C0069006E006B00650064005000
      610063006B00610067006500440042005400610062006C006500560069006500
      7700310041004D003300010041004D0033000100010001000D000A0067007200
      64004C0069006E006B00650064005000610063006B0061006700650044004200
      5400610062006C0065005600690065007700310053007400790063006B000100
      53007400790063006B000100010001000D000A006700720064004C0069006E00
      6B00650064005000610063006B00610067006500440042005400610062006C00
      6500560069006500770031005000610063006B00610067006500540079007000
      65004E006F0001005000610063006B0061006700650054007900700065004E00
      6F000100010001000D000A006700720064004C0069006E006B00650064005000
      610063006B00610067006500440042005400610062006C006500560069006500
      77003100440042005F0042006F006B006600720064000100440042005F004200
      6F006B006600F600720064000100010001000D000A006700720064004C006900
      6E006B00650064005000610063006B0061006700650044004200540061006200
      6C006500560069006500770031004F007000650072006100740069006F006E00
      4E006F0001004F007000650072006100740069006F006E004E006F0001000100
      01000D000A006700720064004C0069006E006B00650064005000610063006B00
      610067006500440042005400610062006C006500560069006500770031004C00
      490050004E004F0001004C00490050004E004F000100010001000D000A006700
      720064004C0069006E006B00650064005000610063006B006100670065004400
      42005400610062006C0065005600690065007700310050006B00740054007900
      700053006B006100700061006400010050006B00740054007900700053006B00
      61007000610064000100010001000D000A00500061006E0065006C0037000100
      4C00E4006E006B00610074002000700061006B00650074000100010001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      72003100010043007500730074006F006D00200031000100010001000D000A00
      6100630050006B00670049006E0066006F00010046007200E500670061002000
      700061006B00650074000100010001000D000A006100630043006C006F007300
      6500010053007400E4006E0067000100010001000D000A007300740048006900
      6E00740073005F0055006E00690063006F00640065000D000A00730074004400
      6900730070006C00610079004C006100620065006C0073005F0055006E006900
      63006F00640065000D000A007300740046006F006E00740073005F0055006E00
      690063006F00640065000D000A005400660072006D0050006B00670049006E00
      66006F0001004D0053002000530061006E007300200053006500720069006600
      01004D0053002000530061006E00730020005300650072006900660001005400
      610068006F006D0061000D000A00500061006E0065006C00320001004D005300
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D0061000D000A00640078004200610072004D0061006E00610067006500
      7200310001005300650067006F00650020005500490001000100540061006800
      6F006D0061000D000A00640078004200610072004D0061006E00610067006500
      72003100420061007200310001005300650067006F0065002000550049000100
      01005400610068006F006D0061000D000A00630078005300740079006C006500
      310001005400610068006F006D006100010001005400610068006F006D006100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A007300740053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A004900440053005F003000
      0100500041004B004500540049004E0046004F0052004D004100540049004F00
      4E0020000100010001000D000A004900440053005F0031000100200050006100
      6B00650074006E0072003A0020000100010001000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00640078004200610072004D0061006E006100670065007200
      310042006100720031002E004F006C0064004E0061006D006500010043007500
      730074006F006D0020003100010001000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A0067007200640050006B00670049006E0066006F0044004200420061006E00
      6400650064005400610062006C006500560069006500770031002E0042006100
      6E00640073005B0030005D002E00430061007000740069006F006E0001004C00
      410053005400010001000D000A0067007200640050006B00670049006E006600
      6F0044004200420061006E006400650064005400610062006C00650056006900
      6500770031002E00420061006E00640073005B0031005D002E00430061007000
      740069006F006E000100460041004B005400550052004100010001000D000A00
      67007200640050006B00670049006E0066006F0044004200420061006E006400
      650064005400610062006C006500560069006500770031002E00420061006E00
      640073005B0032005D002E00430061007000740069006F006E0001004B004F00
      4E005400520041004B005400010001000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A0054006600
      72006D0050006B00670049006E0066006F000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A00500061006E0065006C00
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00640078004200610072004D0061006E0061006700650072003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      6100720031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00630078005300740079006C0065003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A00}
  end
end
