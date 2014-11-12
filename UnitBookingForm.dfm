object FormBookingForm: TFormBookingForm
  Left = 345
  Top = 82
  Width = 941
  Height = 682
  Caption = 'BOOKING'
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
    Width = 933
    Height = 48
    Align = dalTop
    BarManager = dxBarManager1
  end
  object Panel1: TPanel
    Left = 0
    Top = 48
    Width = 933
    Height = 132
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 11
      Top = 38
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Bokningsnr:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 86
      Top = 8
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = 'PRE-REQUEST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 11
      Top = 60
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = 'Kontraktnr:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 11
      Top = 83
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'Kund ref:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 283
      Top = 36
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Del. Period:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 294
      Top = 83
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Customer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 313
      Top = 60
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Agent:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 591
      Top = 12
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Redodag:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 591
      Top = 39
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'Spedit'#246'r:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 591
      Top = 62
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Frakt:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 591
      Top = 85
      Width = 26
      Height = 13
      Caption = 'Typ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 591
      Top = 108
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'LO Nr:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label26: TLabel
      Left = 11
      Top = 108
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Note'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object dbeditBookingNo: TdxDBEdit
      Left = 88
      Top = 30
      Width = 137
      Color = clMoneyGreen
      TabOrder = 7
      DataField = 'BookingNo'
      DataSource = dm_Booking.dsBooking
      ReadOnly = True
      StoredValues = 64
    end
    object dbeditOrder: TdxDBEdit
      Left = 88
      Top = 54
      Width = 137
      Color = clMoneyGreen
      TabOrder = 8
      DataField = 'OrderNoText'
      DataSource = dm_Booking.dsAvropInfo
      ReadOnly = True
      StoredValues = 64
    end
    object dbeditCustReference: TdxDBEdit
      Left = 88
      Top = 78
      Width = 193
      Color = clMoneyGreen
      TabOrder = 9
      DataField = 'Reference'
      DataSource = dm_Booking.dsAvropInfo
      ReadOnly = True
      StoredValues = 64
    end
    object dbeditPeriod: TdxDBEdit
      Left = 360
      Top = 30
      Width = 65
      Color = clMoneyGreen
      TabOrder = 10
      DataField = 'ETDYearWeek'
      DataSource = dm_Booking.dsAvropInfo
      ReadOnly = True
      StoredValues = 64
    end
    object dbeditCustomer: TdxDBEdit
      Left = 360
      Top = 78
      Width = 185
      Color = clMoneyGreen
      TabOrder = 13
      DataField = 'Customer'
      DataSource = dm_Booking.dsAvropInfo
      ReadOnly = True
      StoredValues = 64
    end
    object dbeditAgent: TdxDBEdit
      Left = 360
      Top = 54
      Width = 185
      Color = clMoneyGreen
      TabOrder = 12
      DataField = 'Agent'
      DataSource = dm_Booking.dsAvropInfo
      ReadOnly = True
      StoredValues = 64
    end
    object dbeditReadyDay: TdxDBEdit
      Left = 656
      Top = 6
      Width = 265
      TabOrder = 0
      DataField = 'PreliminaryRequestedPeriod'
      DataSource = dm_Booking.dsBooking
    end
    object dblookcombShipper: TdxDBLookupEdit
      Left = 656
      Top = 32
      Width = 273
      TabOrder = 1
      DataField = 'ShippingCompanyNo'
      DataSource = dm_Booking.dsBooking
      ListFieldName = 'ClientName'
      KeyFieldName = 'ClientNo'
      ListSource = dm_Booking.dsShippers
      LookupKeyValue = Null
    end
    object dblookcombFreightCurrency: TdxDBLookupEdit
      Left = 656
      Top = 56
      Width = 73
      TabOrder = 2
      DataField = 'FreightCostCurrency'
      DataSource = dm_Booking.dsBooking
      ListFieldName = 'CurrencyName'
      KeyFieldName = 'CurrencyNo'
      ListSource = dm_Booking.dsCurrency
      LookupKeyValue = Null
    end
    object dbeditFreightCost: TdxDBEdit
      Left = 736
      Top = 56
      Width = 57
      TabOrder = 3
      DataField = 'FreightCost'
      DataSource = dm_Booking.dsBooking
    end
    object dblookcombFreightUnitName: TdxDBLookupEdit
      Left = 800
      Top = 56
      Width = 105
      TabOrder = 4
      DataField = 'FreightCostVolUnit'
      DataSource = dm_Booking.dsBooking
      ListFieldName = 'TemplateUnitName'
      KeyFieldName = 'TemplateUnitNo'
      ListSource = dm_Booking.dsVolUnit
      LookupKeyValue = Null
    end
    object dbcombBookingType: TdxDBLookupEdit
      Left = 656
      Top = 80
      Width = 249
      TabOrder = 5
      DataField = 'BookingTypeNo'
      DataSource = dm_Booking.dsBooking
      ListFieldName = 'BookingType'
      KeyFieldName = 'BookingTypeNo'
      ListSource = dm_Booking.dsBookingType
      LookupKeyValue = Null
    end
    object dbeditLoNo: TdxDBEdit
      Left = 656
      Top = 102
      Width = 169
      Color = clMoneyGreen
      TabOrder = 14
      DataField = 'ShippingPlanNo'
      DataSource = dm_Booking.dsBooking
      ReadOnly = True
      StoredValues = 64
    end
    object dbePeriodEnd: TdxDBEdit
      Left = 432
      Top = 30
      Width = 65
      Color = clMoneyGreen
      TabOrder = 11
      DataField = 'ETDWeekEnd'
      DataSource = dm_Booking.dsAvropInfo
      ReadOnly = True
      StoredValues = 64
    end
    object dbePanic_Note: TdxDBEdit
      Left = 88
      Top = 102
      Width = 353
      TabOrder = 6
      DataField = 'Panic_Note'
      DataSource = dm_Booking.dsBooking
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 327
    Width = 933
    Height = 328
    Align = alBottom
    TabOrder = 2
    object Label17: TLabel
      Left = 37
      Top = 18
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = 'LO Text:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 18
      Top = 93
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fakturatext:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 19
      Top = 144
      Width = 70
      Height = 26
      Alignment = taRightJustify
      Caption = 'Note For Load Sheet:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object dbmemoLOText: TdxDBMemo
      Left = 96
      Top = 8
      Width = 833
      TabOrder = 0
      DataField = 'LOText'
      DataSource = dm_Booking.dsBooking
      Height = 62
    end
    object dbmemoInvoiceText: TdxDBMemo
      Left = 96
      Top = 73
      Width = 833
      TabOrder = 1
      DataField = 'InvoiceText'
      DataSource = dm_Booking.dsBooking
      Height = 62
    end
    object dbmemoNote: TdxDBMemo
      Left = 96
      Top = 137
      Width = 833
      TabOrder = 2
      DataField = 'NoteForLoadSheet'
      DataSource = dm_Booking.dsBooking
      Height = 70
    end
    object PanelConfirm: TPanel
      Left = 1
      Top = 211
      Width = 931
      Height = 116
      Align = alBottom
      TabOrder = 3
      object Label5: TLabel
        Left = 21
        Top = 18
        Width = 74
        Height = 13
        Alignment = taRightJustify
        Caption = 'CONFIRMED'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 25
        Top = 41
        Width = 86
        Height = 13
        Alignment = taRightJustify
        Caption = 'Spedit'#246'rens id:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 5
        Top = 68
        Width = 106
        Height = 13
        Alignment = taRightJustify
        Caption = 'Spedit'#246'rensdatum:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 261
        Top = 44
        Width = 90
        Height = 13
        Alignment = taRightJustify
        Caption = 'Spedit'#246'rens tid:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label20: TLabel
        Left = 314
        Top = 68
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'TrpID:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label21: TLabel
        Left = 519
        Top = 41
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fartyg:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 526
        Top = 68
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'ETD:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label23: TLabel
        Left = 707
        Top = 65
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Loading port:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label24: TLabel
        Left = 722
        Top = 93
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Invoiced ?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 530
        Top = 92
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Caption = 'ETA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dxDBEditShipCompBookID: TdxDBEdit
        Left = 120
        Top = 35
        Width = 137
        TabOrder = 0
        DataField = 'ShippingCompanyBookingID'
        DataSource = dm_Booking.dsBooking
      end
      object dxDBDateShipLoadDate: TdxDBDateEdit
        Left = 120
        Top = 60
        Width = 121
        TabOrder = 1
        DataField = 'ShippersShipDate'
        DataSource = dm_Booking.dsBooking
      end
      object dxDBTimeShipLoadTime: TdxDBTimeEdit
        Left = 360
        Top = 36
        Width = 121
        TabOrder = 2
        Visible = False
        DataField = 'ShippersShipTime'
        DataSource = dm_Booking.dsBooking
        StoredValues = 4
      end
      object dxDBTrpID: TdxDBEdit
        Left = 360
        Top = 62
        Width = 137
        TabOrder = 3
        DataField = 'SupplierReference'
        DataSource = dm_Booking.dsBooking
      end
      object deETA: TdxDBDateEdit
        Left = 568
        Top = 84
        Width = 120
        TabOrder = 4
        DataField = 'ETA'
        DataSource = dm_Booking.dsVoyage
        UseEditMask = True
        StoredValues = 4
      end
      object bbNewCarrier: TBitBtn
        Left = 568
        Top = 4
        Width = 105
        Height = 25
        Caption = 'New Vessel'
        TabOrder = 5
        OnClick = bbNewCarrierClick
      end
      object bbAddVessel: TBitBtn
        Left = 256
        Top = 92
        Width = 105
        Height = 25
        Caption = 'Add Vessel'
        TabOrder = 6
        Visible = False
        OnClick = bbAddVesselClick
      end
      object dxDBEdit3: TdxDBEdit
        Left = 792
        Top = 86
        Width = 137
        Color = clMoneyGreen
        TabOrder = 7
        ReadOnly = True
        StoredValues = 64
      end
      object cmbCarrier: TdxPickEdit
        Left = 568
        Top = 32
        Width = 217
        TabOrder = 8
        OnChange = cmbCarrierChange
      end
      object deETD: TdxDateEdit
        Left = 568
        Top = 56
        Width = 120
        TabOrder = 9
        OnChange = deETDChange
        Date = -700000
        UseEditMask = True
        StoredValues = 4
      end
      object cmbLoadingLocation: TdxPickEdit
        Left = 792
        Top = 56
        Width = 129
        TabOrder = 10
        Visible = False
        OnChange = cmbLoadingLocationChange
      end
    end
  end
  object grdBooking: TdxDBGrid
    Left = 0
    Top = 180
    Width = 933
    Height = 147
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 7
    DataSource = dm_Booking.dsBookingProducts
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    object grdBookingREFERENCE: TdxDBGridMaskColumn
      Caption = 'REFERENS'
      ReadOnly = True
      Width = 164
      BandIndex = 0
      RowIndex = 0
      FieldName = 'REFERENCE'
    end
    object grdBookingDEL_ADDRESS: TdxDBGridMaskColumn
      Caption = 'LEV.ADRESS'
      ReadOnly = True
      Width = 196
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DEL_ADDRESS'
    end
    object grdBookingSUPPLIER: TdxDBGridMaskColumn
      Caption = 'VERK'
      ReadOnly = True
      Width = 201
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SUPPLIER'
    end
    object grdBookingLOADING_LOCATION: TdxDBGridMaskColumn
      Caption = 'LASTST'#196'LLE'
      ReadOnly = True
      Width = 187
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LOADING_LOCATION'
    end
    object grdBookingPRODUCT_DESCRIPTION: TdxDBGridMaskColumn
      Caption = 'PRODUKT'
      ReadOnly = True
      Width = 256
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PRODUCT_DESCRIPTION'
    end
    object grdBookingLENGTH_DESCRIPTION: TdxDBGridMaskColumn
      Caption = 'L'#196'NGD'
      ReadOnly = True
      Width = 192
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LENGTH_DESCRIPTION'
    end
    object grdBookingNOOFUNITS: TdxDBGridMaskColumn
      Caption = 'KVANTITET'
      ReadOnly = True
      Width = 69
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOOFUNITS'
    end
    object grdBookingVOLUNIT: TdxDBGridMaskColumn
      Caption = 'VOL.ENHET'
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'VOLUNIT'
    end
    object grdBookingACTM3: TdxDBGridMaskColumn
      Caption = 'AM3'
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ACTM3'
    end
    object grdBookingADDRESS_NO: TdxDBGridMaskColumn
      ReadOnly = True
      Visible = False
      Width = 73
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ADDRESS_NO'
    end
    object grdBookingCITY_NO: TdxDBGridMaskColumn
      ReadOnly = True
      Visible = False
      Width = 58
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CITY_NO'
    end
    object grdBookingCITY_NAME: TdxDBGridColumn
      Caption = 'ORT'
      ReadOnly = True
      Width = 147
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CITY_NAME'
    end
    object grdBookingPOSTALCODE: TdxDBGridMaskColumn
      Caption = 'POSTNR'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'POSTALCODE'
    end
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
        FloatLeft = 404
        FloatTop = 341
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = <
          item
            Item = dxBarSave
            Visible = True
          end
          item
            Item = dxBarPrint
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarClose
            Visible = True
          end>
        Name = 'Custom 1'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    LargeImages = ImageList1
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 304
    Top = 8
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarClose: TdxBarLargeButton
      Caption = 'St'#228'ng'
      Category = 0
      Hint = 'St'#228'ng'
      Visible = ivAlways
      OnClick = dxBarCloseClick
      LargeImageIndex = 2
    end
    object dxBarSave: TdxBarLargeButton
      Caption = 'Spara'
      Category = 0
      Hint = 'Spara'
      Visible = ivAlways
      OnClick = dxBarSaveClick
      LargeImageIndex = 0
    end
    object dxBarPrint: TdxBarLargeButton
      Caption = 'Skriv ut'
      Category = 0
      Hint = 'Skriv ut'
      Visible = ivAlways
      OnClick = dxBarPrintClick
      LargeImageIndex = 1
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 232
    Top = 64
    Bitmap = {
      494C010103000400040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      0000000000000000000000000000000000000000000000000000AD736B009C52
      52009C4A4A009C5252009C4A4A00A5737300B5B5B500B5B5B500B5B5B500BDB5
      B500BDB5B500B5B5B500B5B5B500B5B5B500B5B5B500A5737300944242009C4A
      4A009C4A4A009C4A4A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00C663
      6300C6636300CE636300B55252009C6B6B00B5B5B500CECECE00E7E7DE00EFEF
      EF00F7F7EF00F7F7EF00EFE7E700E7DEDE00DEDEDE00B5737300942929009431
      31009C393900BD5A5A00C66363009C4A4A000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C6B6B00A58C8C00B5848400CEADAD00DECE
      CE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B5737300942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C737300A57B7B009C393900B5736B00C69C
      9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A500000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300A5848400943131009C424200B573
      7300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A00000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A50000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300AD8C8C0094313100943131009C4A
      4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00B58C8C0094292900942929009431
      3100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C6848400942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C00000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00C6ADAD00A5636300A56363009C63
      63009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C6848400942929009431
      31009C393900BD5A5A00C66363009C4A4A0000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A500000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00B5737300D6A5A500C69C9C00BD9C9C00BD94
      9400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C6737300A5424200AD42
      4200AD4A4A00C6636300C66363009C4A4A0000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C00000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300C6636300C6636300C6636300CE636300CE636300CE63
      6300CE636300CE636300C66363009C4A4A0000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A500000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00C663
      6300BD5A5A00C6636300C66B6B00CE737300CE737300CE737300CE737300CE73
      7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE7B
      7B00CE6B6B00CE636300C66363009C4A4A0000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD00000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD4A
      4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BDBD00D6BDBD00D6BD
      BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00DEC6
      C600CE8C8C00CE636300C66363009C4A4A000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B500000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A00000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A50000000000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B5000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7F7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600E7DEDE00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700F7EFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300BD6B6B00AD42
      4200CE9C9C00EFEFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFEFE700E7DE
      DE00C68C8C00B5525200BD5A5A009C4A4A000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD736B00A542
      4200B58C8400C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CEC6
      C600B5848400944242009C4A4A00000000000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF00C00001FFFFFFFFFFFF000000800000FF
      0C1FFFFFFF000000800000FC0007FF1FFF000000800000F00001F8000F000000
      800000E00003E0000F000000800000800003C0000F000000800000800003C000
      0F000000800000800003C0000F000000800000800003C0000F00000080000080
      0003C0000F000000800000800003C0000F000000800000C00003C0000F000000
      800000E00007C0000F000000800000F8000FC0000F000000800000F8001FC000
      0F000000800000FC007FC0000F000000800000FC00FFC0000F000000800000FC
      01FFC0000F000000800000FC01FFE0000F000000800000FC01FFF8000F000000
      800000FC01FFFE1FFF000000800000F803FFFFFFFF000000800000F803FFFFFF
      FF000000C00001F007FFFFFFFF00000000000000000000000000000000000000
      000000000000}
  end
end
