object frmInvoice: TfrmInvoice
  Left = 147
  Top = 104
  Width = 1004
  Height = 632
  Caption = 'FAKTURA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxPageControl1: TcxPageControl
    Left = 0
    Top = 57
    Width = 996
    Height = 188
    ActivePage = tsInvoiceHead
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabWidth = 150
    ClientRectBottom = 188
    ClientRectRight = 996
    ClientRectTop = 26
    object tsInvoiceHead: TcxTabSheet
      Caption = 'FAKTURA'
      ImageIndex = 16
      object Shape2: TShape
        Left = 4
        Top = 2
        Width = 1041
        Height = 157
        Brush.Color = clMoneyGreen
      end
      object Label1: TLabel
        Left = 16
        Top = 15
        Width = 59
        Height = 16
        Caption = 'Fakturanr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 322
        Top = 15
        Width = 55
        Height = 14
        Caption = 'Fakt.datum:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 807
        Top = 105
        Width = 57
        Height = 14
        Caption = 'Proformanr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 84
        Top = 12
        Width = 65
        Height = 17
        Color = clWhite
        DataField = 'InvoiceNo'
        DataSource = dmVidaInvoice.dsrcInvoiceNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 808
        Top = 123
        Width = 74
        Height = 14
        Caption = 'Internfakturanr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 904
        Top = 121
        Width = 69
        Height = 17
        Color = clWhite
        DataField = 'InternalInvoiceNo'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 904
        Top = 101
        Width = 69
        Height = 17
        Color = clWhite
        DataField = 'ProformaInvoiceNo'
        DataSource = dmVidaInvoice.dsProformaInvNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 546
        Top = 81
        Width = 247
        Height = 52
        Color = clWhite
        DataField = 'PaymentDescription'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object DBText6: TDBText
        Left = 635
        Top = 35
        Width = 157
        Height = 17
        Color = clWhite
        DataField = 'DeliveryTerm'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object txtCustomer: TDBText
        Left = 84
        Top = 32
        Width = 76
        Height = 16
        AutoSize = True
        Color = clWhite
        DataField = 'CustomerName'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 808
        Top = 85
        Width = 89
        Height = 14
        Caption = 'Agentprovision %:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBText18: TDBText
        Left = 904
        Top = 81
        Width = 69
        Height = 17
        Color = clWhite
        DataField = 'AgentCommission'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText42: TDBText
        Left = 632
        Top = 135
        Width = 161
        Height = 18
        Color = clWhite
        DataField = 'Discount1'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label35: TLabel
        Left = 546
        Top = 139
        Width = 83
        Height = 14
        Caption = 'Kassarabatt (%):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label42: TLabel
        Left = 16
        Top = 72
        Width = 289
        Height = 81
        AutoSize = False
        Caption = 'Label42'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object DBText8: TDBText
        Left = 635
        Top = 15
        Width = 65
        Height = 17
        Color = clWhite
        DataField = 'VAT'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label29: TLabel
        Left = 546
        Top = 19
        Width = 31
        Height = 14
        Caption = 'Moms:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBText12: TDBText
        Left = 904
        Top = 141
        Width = 69
        Height = 17
        Color = clWhite
        DataField = 'PO_InvoiceNo'
        DataSource = dmVidaInvoice.ds_PurchaseInvNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label30: TLabel
        Left = 808
        Top = 143
        Width = 64
        Height = 14
        Caption = 'PO fakturanr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 131
        Top = 55
        Width = 111
        Height = 16
        Caption = 'F'#246'rs'#228'ljnings org.nr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText13: TDBText
        Left = 247
        Top = 55
        Width = 57
        Height = 16
        AutoSize = True
        Color = clWhite
        DataField = 'SalesOrgNo'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 390
        Top = 8
        Width = 121
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DataField = 'InvoiceDate'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
      end
      object cbFreightInComm: TDBCheckBox
        Left = 816
        Top = 29
        Width = 177
        Height = 17
        Caption = 'Fraktkostnad i provisionber'#228'kning'
        Color = clMoneyGreen
        DataField = 'FreightInCommission'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object cbFreightInDiscount: TDBCheckBox
        Left = 816
        Top = 10
        Width = 169
        Height = 17
        Caption = 'Fraktkostnad i kassaber'#228'kning'
        Color = clMoneyGreen
        DataField = 'FreightInDiscount'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object cbCommissionPaidByCustomer: TDBCheckBox
        Left = 816
        Top = 48
        Width = 169
        Height = 17
        Caption = 'Provision betalas av kund'
        Color = clMoneyGreen
        DataField = 'CommissionPaidByCustomer'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object cbVAT: TDBCheckBox
        Left = 816
        Top = 68
        Width = 89
        Height = 17
        Caption = 'Skatteupplag'
        Color = clMoneyGreen
        DataField = 'VAT_OnInvoice'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object rgDB_InvoiceType: TDBRadioGroup
        Left = 322
        Top = 30
        Width = 209
        Height = 91
        Caption = 'Konto'
        Color = clMoneyGreen
        DataField = 'InvoiceType'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Items.Strings = (
          'VIDA (K1)'
          'Proforma, (Invoice later)'
          'Proforma, (move pkgs to inventory)'
          'Purchase Invoice'
          'USA (K2)'
          'FW')
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
      end
      object rgDebitCredit: TDBRadioGroup
        Left = 323
        Top = 120
        Width = 208
        Height = 32
        Color = clMoneyGreen
        Columns = 2
        DataField = 'Debit_Credit'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Items.Strings = (
          'Debit'
          'Kredit')
        ParentColor = False
        ParentFont = False
        TabOrder = 6
        Values.Strings = (
          '0'
          '1')
      end
      object DBCheckBox1: TDBCheckBox
        Left = 706
        Top = 18
        Width = 89
        Height = 17
        Caption = 'Snabbfaktura'
        Color = clMoneyGreen
        DataField = 'QuickInvoice'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 7
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object cxLabel2: TcxLabel
        Left = 16
        Top = 32
        Width = 36
        Height = 19
        Caption = 'Kund:'
        ParentColor = False
        Style.Color = clMoneyGreen
        Style.HotTrack = True
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.Shadow = False
        Style.TextStyle = [fsUnderline]
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.TextStyle = [fsBold, fsUnderline]
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        OnClick = cxLabel2Click
      end
      object cxLabel3: TcxLabel
        Left = 542
        Top = 36
        Width = 89
        Height = 19
        Caption = 'Leveransvillkor:'
        ParentColor = False
        Style.Color = clMoneyGreen
        Style.HotTrack = True
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.Shadow = False
        Style.TextStyle = [fsUnderline]
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.TextStyle = [fsBold, fsUnderline]
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        OnClick = cxLabel3Click
      end
      object cxLabel4: TcxLabel
        Left = 542
        Top = 60
        Width = 94
        Height = 19
        Caption = 'Betalningsvillkor'
        ParentColor = False
        Style.Color = clMoneyGreen
        Style.HotTrack = True
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.Shadow = False
        Style.TextStyle = [fsUnderline]
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.TextStyle = [fsBold, fsUnderline]
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        OnClick = cxLabel4Click
      end
      object cxLabel5: TcxLabel
        Left = 646
        Top = 60
        Width = 39
        Height = 19
        Caption = 'Spr'#229'k:'
        ParentColor = False
        Style.Color = clMoneyGreen
        Style.HotTrack = True
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.Shadow = False
        Style.TextStyle = [fsUnderline]
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.TextStyle = [fsBold, fsUnderline]
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        OnClick = cxLabel5Click
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 685
        Top = 56
        Width = 110
        Height = 23
        DataBinding.DataField = 'LanguageCode'
        DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'LanguageNo'
        Properties.ListColumns = <
          item
            FieldName = 'LanguageName'
          end>
        Properties.ListSource = dmModule1.ds_Language
        Properties.ReadOnly = False
        Style.BorderStyle = ebsNone
        Style.LookAndFeel.Kind = lfFlat
        Style.Shadow = False
        Style.ButtonTransparency = ebtHideInactive
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 12
      end
      object cxLabel6: TcxLabel
        Left = 16
        Top = 54
        Width = 90
        Height = 19
        Caption = 'Faktura Adress:'
        ParentColor = False
        Style.Color = clMoneyGreen
        Style.HotTrack = True
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.Shadow = False
        Style.TextStyle = [fsUnderline]
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.TextStyle = [fsBold, fsUnderline]
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        OnClick = cxLabel6Click
      end
    end
    object tsShipToAddress: TcxTabSheet
      Caption = 'LEVERANSADRESS'
      ImageIndex = 14
      object DBText45: TDBText
        Left = 8
        Top = 48
        Width = 50
        Height = 17
        Color = clSilver
        DataField = 'ST_AddressLine1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText46: TDBText
        Left = 8
        Top = 64
        Width = 50
        Height = 17
        Color = clSilver
        DataField = 'ST_AddressLine2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText47: TDBText
        Left = 8
        Top = 80
        Width = 50
        Height = 17
        Color = clSilver
        DataField = 'ST_AddressLine3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText48: TDBText
        Left = 64
        Top = 16
        Width = 100
        Height = 17
        Color = clSilver
        DataField = 'ST_AddressLine4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText49: TDBText
        Left = 64
        Top = 32
        Width = 100
        Height = 17
        Color = clSilver
        DataField = 'ST_PostalCode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText50: TDBText
        Left = 64
        Top = 48
        Width = 100
        Height = 17
        Color = clSilver
        DataField = 'ST_CityName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText51: TDBText
        Left = 64
        Top = 64
        Width = 100
        Height = 17
        Color = clSilver
        DataField = 'ST_StateOrProvince'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText52: TDBText
        Left = 64
        Top = 80
        Width = 100
        Height = 17
        Color = clSilver
        DataField = 'ST_CountryName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText61: TDBText
        Left = 8
        Top = 30
        Width = 50
        Height = 17
        Color = clSilver
        DataField = 'ST_AddressName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object grdShipToAddress: TdxDBGrid
        Left = 0
        Top = 0
        Width = 996
        Height = 162
        Bands = <
          item
            Width = 506
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'Reference'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        PopupMenu = PopupMenu2
        TabOrder = 0
        DataSource = dmVidaInvoice.dsInvoiceShipToAddress
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing, edgoNotHideColumn]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
        RowSeparatorLineWidth = 2
        ShowPreviewGrid = False
        object grdShipToAddressReference: TdxDBGridMaskColumn
          Caption = 'REFERENCE'
          Width = 123
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Reference'
        end
        object grdShipToAddressAddressName: TdxDBGridMaskColumn
          Caption = 'ADDRESS NAME'
          Width = 123
          BandIndex = 0
          RowIndex = 0
          FieldName = 'AddressName'
        end
        object grdShipToAddressADDR: TdxDBGridColumn
          Caption = 'ADDRESS'
          Width = 441
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ADDR'
        end
        object grdShipToAddressColumn4: TdxDBGridMaskColumn
          Caption = 'LO'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ShippingPlanNo'
        end
      end
    end
    object tsAgent: TcxTabSheet
      Caption = 'AGENT'
      ImageIndex = 15
      object Shape3: TShape
        Left = 16
        Top = 3
        Width = 1177
        Height = 155
        Brush.Color = clMoneyGreen
      end
      object Label16: TLabel
        Left = 24
        Top = 8
        Width = 38
        Height = 16
        Caption = 'Agent:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        OnDblClick = Label16DblClick
      end
      object DBText22: TDBText
        Left = 72
        Top = 8
        Width = 57
        Height = 16
        AutoSize = True
        Color = clWhite
        DataField = 'AgentName'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label38: TLabel
        Left = 24
        Top = 40
        Width = 123
        Height = 16
        Caption = 'Agent Billing address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        OnDblClick = Label38DblClick
      end
      object Label43: TLabel
        Left = 24
        Top = 64
        Width = 497
        Height = 81
        AutoSize = False
        Caption = 'Label43'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
    end
    object tsNotes: TcxTabSheet
      Caption = 'NOTERING'
      ImageIndex = 11
      object cxDBRichEdit1: TcxDBRichEdit
        Left = 0
        Top = 0
        Width = 996
        Height = 162
        Align = alClient
        DataBinding.DataField = 'InvoiceText'
        DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead
        Properties.HideScrollBars = False
        Properties.ScrollBars = ssVertical
        Properties.SelectionBar = True
        TabOrder = 0
      end
    end
    object tsStickyNote: TcxTabSheet
      Caption = 'POST IT!'
      ImageIndex = 13
      object DBMemo2: TDBMemo
        Left = 400
        Top = 5
        Width = 177
        Height = 148
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clYellow
        DataField = 'StickyNote'
        DataSource = dmVidaInvoice.dsrcInvoiceHead
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object panelLO: TPanel
    Left = 0
    Top = 264
    Width = 996
    Height = 85
    Align = alTop
    BevelOuter = bvNone
    Color = clMoneyGreen
    TabOrder = 1
    object Label17: TLabel
      Left = 6
      Top = 15
      Width = 53
      Height = 14
      Caption = 'Kontraktnr:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 6
      Top = 40
      Width = 17
      Height = 14
      Caption = 'LO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText24: TDBText
      Left = 60
      Top = 37
      Width = 108
      Height = 17
      Color = clWhite
      DataField = 'ShippingPlanNo'
      DataSource = dmVidaInvoice.dsrcInvoiceLO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label19: TLabel
      Left = 178
      Top = 15
      Width = 36
      Height = 14
      Caption = 'S'#228'ljare:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 178
      Top = 40
      Width = 73
      Height = 14
      Caption = 'Kund referens:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 178
      Top = 64
      Width = 66
      Height = 14
      Caption = 'V'#229'r referens:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 393
      Top = 15
      Width = 57
      Height = 14
      Caption = 'Bokningsnr:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText28: TDBText
      Left = 465
      Top = 12
      Width = 65
      Height = 17
      Color = clWhite
      DataField = 'BookingNo'
      DataSource = dmVidaInvoice.dsrcInvoiceLO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText29: TDBText
      Left = 465
      Top = 37
      Width = 65
      Height = 17
      Color = clWhite
      DataField = 'FreightCostPerUnit'
      DataSource = dmVidaInvoice.dsrcInvoiceLO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label23: TLabel
      Left = 393
      Top = 40
      Width = 62
      Height = 14
      Caption = 'Freight / unit:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 393
      Top = 64
      Width = 48
      Height = 14
      Caption = 'Totalfrakt:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText30: TDBText
      Left = 465
      Top = 61
      Width = 65
      Height = 17
      Color = clWhite
      DataField = 'TotalFreightCost'
      DataSource = dmVidaInvoice.dsrcInvoiceLO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label25: TLabel
      Left = 544
      Top = 15
      Width = 57
      Height = 14
      Caption = 'ShipBookID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText31: TDBText
      Left = 610
      Top = 37
      Width = 130
      Height = 17
      Color = clWhite
      DataField = 'SUPP_REFERENCE'
      DataSource = dmVidaInvoice.ds_BookingData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object DBText44: TDBText
      Left = 60
      Top = 61
      Width = 108
      Height = 17
      Color = clWhite
      DataField = 'CurrencyName'
      DataSource = dmVidaInvoice.dsrcInvoiceHead
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label15: TLabel
      Left = 883
      Top = 62
      Width = 23
      Height = 14
      Caption = 'ETA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 760
      Top = 63
      Width = 22
      Height = 14
      Caption = 'ETD:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 760
      Top = 39
      Width = 37
      Height = 14
      Caption = 'Vessel:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 610
      Top = 12
      Width = 130
      Height = 17
      Color = clWhite
      DataField = 'BOOKING_ID'
      DataSource = dmVidaInvoice.ds_BookingData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 544
      Top = 64
      Width = 28
      Height = 14
      Caption = 'TrpID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 760
      Top = 14
      Width = 40
      Height = 14
      Caption = 'Shipper:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 544
      Top = 40
      Width = 48
      Height = 14
      Caption = 'Referens:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object dcOrderNoText: TDBEdit
      Left = 60
      Top = 7
      Width = 108
      Height = 22
      DataField = 'OrderNoText'
      DataSource = dmVidaInvoice.dsrcInvoiceLO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dcSalesMan: TDBEdit
      Left = 256
      Top = 7
      Width = 127
      Height = 22
      DataField = 'SalesMan'
      DataSource = dmVidaInvoice.dsrcInvoiceLO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dcCustRef: TDBEdit
      Left = 256
      Top = 32
      Width = 127
      Height = 22
      DataField = 'Reference'
      DataSource = dmVidaInvoice.dsrcInvoiceLO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dcOurRef: TDBEdit
      Left = 256
      Top = 56
      Width = 127
      Height = 22
      DataField = 'OurReference'
      DataSource = dmVidaInvoice.dsrcInvoiceLO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object bbNewCarrier: TBitBtn
      Left = 1045
      Top = 50
      Width = 15
      Height = 14
      Caption = 'ny'
      TabOrder = 4
      OnClick = bbNewCarrierClick
    end
    object DBEdit2: TDBEdit
      Left = 608
      Top = 56
      Width = 132
      Height = 22
      DataField = 'TrpID'
      DataSource = dmVidaInvoice.dsrcInvoiceLO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object dxDBEdit1: TdxDBEdit
      Left = 808
      Top = 8
      Width = 177
      Style.BorderStyle = xbsNone
      TabOrder = 6
      DataField = 'SHIPPER'
      DataSource = dmVidaInvoice.ds_BookingData
    end
    object dxDBEdit2: TdxDBEdit
      Left = 808
      Top = 32
      Width = 177
      Style.BorderStyle = xbsNone
      TabOrder = 7
      DataField = 'VESSEL'
      DataSource = dmVidaInvoice.ds_BookingData
    end
    object dxDBMaskEdit1: TdxDBMaskEdit
      Left = 808
      Top = 56
      Width = 73
      Style.BorderStyle = xbsNone
      TabOrder = 8
      DataField = 'ETD'
      DataSource = dmVidaInvoice.ds_BookingData
      IgnoreMaskBlank = False
    end
    object dxDBMaskEdit2: TdxDBMaskEdit
      Left = 912
      Top = 56
      Width = 73
      Style.BorderStyle = xbsNone
      TabOrder = 9
      DataField = 'ETA'
      DataSource = dmVidaInvoice.ds_BookingData
      IgnoreMaskBlank = False
    end
    object cxLabel1: TcxLabel
      Left = 5
      Top = 64
      Width = 34
      Height = 17
      Caption = 'Valuta'
      Style.HotTrack = True
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.Shadow = False
      Style.TextStyle = [fsUnderline]
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.TextStyle = [fsBold, fsUnderline]
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      OnClick = cxLabel1Click
    end
  end
  object TabControl1: TTabControl
    Left = 0
    Top = 245
    Width = 996
    Height = 19
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabHeight = 14
    TabOrder = 2
    Tabs.Strings = (
      '1'
      '2')
    TabIndex = 0
    OnChange = TabControl1Change
  end
  object grdInvoiceRows: TdxDBGrid
    Left = 0
    Top = 349
    Width = 996
    Height = 122
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'InvoiceDetailNo'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = pmInvoiceRow
    TabOrder = 3
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = dmVidaInvoice.dsrcInvoiceDetail
    Filter.Criteria = {00000000}
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = []
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabs, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords]
    OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoPreview, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    OnEdited = grdInvoiceRowsEdited
    object grdInvoiceRowsInvoiceDetailNo: TdxDBGridMaskColumn
      Visible = False
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'InvoiceDetailNo'
    end
    object grdInvoiceRowsShippingPlanNo: TdxDBGridMaskColumn
      Visible = False
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ShippingPlanNo'
    end
    object grdInvoiceRowsInternalInvoiceNo: TdxDBGridMaskColumn
      Visible = False
      Width = 78
      BandIndex = 0
      RowIndex = 0
      FieldName = 'InternalInvoiceNo'
    end
    object grdInvoiceRowsLoadID: TdxDBGridMaskColumn
      Caption = 'TRPID'
      Visible = False
      Width = 82
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LoadID'
    end
    object grdInvoiceRowsReference: TdxDBGridMaskColumn
      Caption = 'REFERENCE'
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Reference'
    end
    object grdInvoiceRowsProductDescription: TdxDBGridMaskColumn
      Caption = 'BESKRIVNING'
      Width = 177
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProductDescription'
    end
    object grdInvoiceRowsLengthDescription: TdxDBGridMaskColumn
      Caption = 'L'#196'NGD'
      Width = 113
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LengthDescription'
    end
    object grdInvoiceRowsVolumeUnit: TdxDBGridPickColumn
      Caption = 'VOL.ENHET'
      Width = 62
      BandIndex = 0
      RowIndex = 0
      FieldName = 'VolumeUnit'
    end
    object grdInvoiceRowsNoOfPkgs: TdxDBGridMaskColumn
      Caption = 'PKT'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NoOfPkgs'
      SummaryFooterType = cstSum
      SummaryFooterField = 'NoOfPkgs'
      SummaryFooterFormat = '00'
      SummaryField = 'NoOfPkgs'
    end
    object grdInvoiceRowsNoOfPieces: TdxDBGridMaskColumn
      Caption = 'STYCK'
      Width = 52
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NoOfPieces'
      SummaryFooterType = cstSum
      SummaryFooterField = 'NoOfPieces'
      SummaryFooterFormat = '#######'
      SummaryField = 'NoOfPieces'
    end
    object grdInvoiceRowsActualNetM3: TdxDBGridMaskColumn
      Caption = 'AM3'
      Width = 57
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ActualNetM3'
      SummaryFooterType = cstSum
      SummaryFooterField = 'ActualNetM3'
      SummaryFooterFormat = '#.000'
      SummaryField = 'ActualNetM3'
    end
    object grdInvoiceRowsNominalM3: TdxDBGridMaskColumn
      Caption = 'NM3'
      Width = 57
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NominalM3'
      SummaryFooterType = cstSum
      SummaryFooterField = 'NominalM3'
      SummaryFooterFormat = '#.000'
      SummaryField = 'NominalM3'
    end
    object grdInvoiceRowsLinealMeter: TdxDBGridMaskColumn
      Caption = 'LPM'
      Width = 63
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LinealMeter'
      SummaryFooterType = cstSum
      SummaryFooterField = 'LinealMeter'
      SummaryFooterFormat = '#.000'
      SummaryField = 'LinealMeter'
    end
    object grdInvoiceRowsVolume_OrderUnit: TdxDBGridMaskColumn
      Caption = 'VOL.PRIS ENHET'
      Width = 63
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Volume_OrderUnit'
      SummaryFooterType = cstSum
      SummaryFooterField = 'Volume_OrderUnit'
      SummaryFooterFormat = '#.000'
      SummaryField = 'Volume_OrderUnit'
    end
    object grdInvoiceRowsPrice: TdxDBGridMaskColumn
      Caption = 'PRIS'
      Width = 56
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Price'
    end
    object grdInvoiceRowsPriceUnit: TdxDBGridPickColumn
      Caption = 'PRISENHET'
      Width = 62
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PriceUnit'
    end
    object grdInvoiceRowsProductValue: TdxDBGridMaskColumn
      Caption = 'V'#196'RDE'
      Width = 70
      BandIndex = 0
      RowIndex = 0
      OnValidate = grdInvoiceRowsProductValueValidate
      FieldName = 'ProductValue'
      SummaryFooterType = cstSum
      SummaryFooterField = 'ProductValue'
      SummaryField = 'ProductValue'
    end
    object grdInvoiceRowsTypeOfRow: TdxDBGridMaskColumn
      Visible = False
      Width = 55
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TypeOfRow'
    end
    object grdInvoiceRowsLoadNo: TdxDBGridMaskColumn
      Visible = False
      Width = 42
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LoadNo'
    end
    object grdInvoiceRowsOrderLineNo: TdxDBGridMaskColumn
      Visible = False
      Width = 58
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OrderLineNo'
    end
    object grdInvoiceRowsProductNo: TdxDBGridMaskColumn
      Visible = False
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProductNo'
    end
    object grdInvoiceRowsProductLengthNo: TdxDBGridMaskColumn
      Visible = False
      Width = 78
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProductLengthNo'
    end
    object grdInvoiceRowsActualThicknessMM: TdxDBGridMaskColumn
      Visible = False
      Width = 91
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ActualThicknessMM'
    end
    object grdInvoiceRowsActualWidthMM: TdxDBGridMaskColumn
      Visible = False
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ActualWidthMM'
    end
    object grdInvoiceRowsNominalThicknessMM: TdxDBGridMaskColumn
      Visible = False
      Width = 98
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NominalThicknessMM'
    end
    object grdInvoiceRowsNominalWidthMM: TdxDBGridMaskColumn
      Visible = False
      Width = 78
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NominalWidthMM'
    end
    object grdInvoiceRowsNominalThicknessINCH: TdxDBGridMaskColumn
      Visible = False
      Width = 103
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NominalThicknessINCH'
    end
    object grdInvoiceRowsNominalWidthINCH: TdxDBGridMaskColumn
      Visible = False
      Width = 86
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NominalWidthINCH'
    end
    object grdInvoiceRowsCreatedUser: TdxDBGridMaskColumn
      Visible = False
      Width = 57
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CreatedUser'
    end
    object grdInvoiceRowsModifiedUser: TdxDBGridMaskColumn
      Visible = False
      Width = 62
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ModifiedUser'
    end
    object grdInvoiceRowsDateCreated: TdxDBGridColumn
      Visible = False
      Width = 180
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DateCreated'
    end
  end
  object panelInvoiceTotal: TPanel
    Left = 0
    Top = 471
    Width = 996
    Height = 134
    Align = alBottom
    BevelOuter = bvNone
    Color = clMoneyGreen
    TabOrder = 5
    object Label26: TLabel
      Left = 8
      Top = 8
      Width = 276
      Height = 15
      Caption = 'TOTAL INVOICE INCLUDING FREIGTH && EXTRAS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText32: TDBText
      Left = 472
      Top = 8
      Width = 129
      Height = 17
      Alignment = taRightJustify
      Color = clWhite
      DataField = 'Tot_Inv_Inc_Freight_Extras'
      DataSource = dmVidaInvoice.dsrcInvoiceHead
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label27: TLabel
      Left = 8
      Top = 27
      Width = 120
      Height = 15
      Caption = 'SUM FREIGHT COST:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText33: TDBText
      Left = 472
      Top = 27
      Width = 129
      Height = 17
      Alignment = taRightJustify
      Color = clWhite
      DataField = 'SUM_FreigthCost'
      DataSource = dmVidaInvoice.dsrcInvoiceHead
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label28: TLabel
      Left = 8
      Top = 46
      Width = 217
      Height = 15
      Caption = 'PRODUCT VALUE WITHOUT FREIGHT:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText34: TDBText
      Left = 472
      Top = 46
      Width = 129
      Height = 17
      Alignment = taRightJustify
      Color = clWhite
      DataField = 'Total_Product_Value_No_Freight'
      DataSource = dmVidaInvoice.dsrcInvoiceHead
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText35: TDBText
      Left = 472
      Top = 66
      Width = 129
      Height = 17
      Alignment = taRightJustify
      Color = clWhite
      DataField = 'Discount'
      DataSource = dmVidaInvoice.dsrcInvoiceHead
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText37: TDBText
      Left = 472
      Top = 85
      Width = 129
      Height = 17
      Alignment = taRightJustify
      Color = clWhite
      DataField = 'Commission'
      DataSource = dmVidaInvoice.dsrcInvoiceHead
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label34: TLabel
      Left = 8
      Top = 104
      Width = 381
      Height = 15
      Caption = 'INVOICE VALUE AFTER DEDUCTING DISCOUNT AND COMMISSION:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText40: TDBText
      Left = 472
      Top = 104
      Width = 129
      Height = 17
      Alignment = taRightJustify
      Color = clWhite
      DataField = 'Inv_Value_After_Deduct_DIS_COMM'
      DataSource = dmVidaInvoice.dsrcInvoiceHead
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText21: TDBText
      Left = 781
      Top = 94
      Width = 121
      Height = 20
      Alignment = taRightJustify
      Color = clWhite
      DataField = 'Inv_Value_To_Be_Paid'
      DataSource = dmVidaInvoice.dsrcInvoiceHead
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label41: TLabel
      Left = 656
      Top = 96
      Width = 97
      Height = 19
      Caption = 'TO BE PAID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText9: TDBText
      Left = 781
      Top = 54
      Width = 121
      Height = 20
      Alignment = taRightJustify
      Color = clWhite
      DataField = 'VAT_Value'
      DataSource = dmVidaInvoice.dsrcInvoiceHead
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label37: TLabel
      Left = 720
      Top = 56
      Width = 38
      Height = 19
      Caption = 'VAT:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label44: TLabel
      Left = 8
      Top = 85
      Width = 82
      Height = 15
      Caption = 'COMMISSION: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label45: TLabel
      Left = 8
      Top = 66
      Width = 69
      Height = 15
      Caption = 'DISCOUNT: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 905
      Top = 94
      Width = 66
      Height = 19
      AutoSize = True
      Color = clWhite
      DataField = 'CurrencyName'
      DataSource = dmVidaInvoice.dsrcInvoiceHead
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 656
      Top = 8
      Width = 116
      Height = 19
      Caption = 'TO BE PAID(2):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText10: TDBText
      Left = 781
      Top = 6
      Width = 121
      Height = 20
      Alignment = taRightJustify
      Color = clWhite
      DataField = 'Inv_Value_To_Be_Paid_2'
      DataSource = dmVidaInvoice.dsrcInvoiceHead
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText11: TDBText
      Left = 905
      Top = 6
      Width = 75
      Height = 19
      AutoSize = True
      Color = clWhite
      DataField = 'CurrencyName'
      DataSource = dmVidaInvoice.dsrcInvoiceHead
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 616
      Top = 8
      Width = 33
      Height = 21
      DataField = 'TotalInvoice'
      DataSource = dmVidaInvoice.dsrcInvoiceDetail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 996
    Height = 57
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 4
    object BitBtn1: TBitBtn
      Left = 8
      Top = 5
      Width = 81
      Height = 49
      Action = acBooking
      Caption = 'Bokning'
      TabOrder = 0
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
        0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
        0000CE630000CE630000CE630000CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEF
        D600FFEFD600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
        AD00FFD6AD00FFD6A500FFD6A500CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7
        EF00FFF7EF00FFEFD600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDE
        B500FFD6AD00FFD6AD00FFD6A500CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFF
        F700FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDE
        B500FFDEB500FFD6AD00FFD6AD00CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00DEDEDE009C9C9C009C9C9C00FFFFFF00DEDEDE009C9C
        9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
        9C009C9C9C009C9C9C00FFD6AD00CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
        D600FFEFD600FFDEB500FFDEB500CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C
        9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
        9C009C9C9C009C9C9C00FFEFD600CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEF
        D600FFEFD600FFEFD600FFEFD600CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C
        9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
        9C009C9C9C009C9C9C00FFEFD600CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEF
        D600FFEFD600FFEFD600FFEFD600CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C
        9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
        9C009C9C9C009C9C9C00FFEFD600CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEF
        E700FFEFDE00FFEFD600FFEFD600CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00E7E7E700B5B5B500B5B5B500FFFFFF00E7E7E700B5B5
        B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD00B5AD
        AD00B5ADAD00B5ADAD00FFEFD600CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7
        EF00FFF7EF00FFF7E700FFEFE700CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7
        EF00FFF7EF00FFF7E700FFEFE700CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7
        EF00FFF7E700FFF7E700FFF7E700CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
        0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
        0000DE7B0000DE7B0000DE7B0000CE630000FF00FF00FF00FF00FF00FF00FF00
        FF00E7A56300CE630000CE630000CE630000CE630000CE630000CE630000CE63
        0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
        0000CE630000CE630000CE630000E7A56300FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00D6731000D6731000D6731000D6731000D6731000D6731000D673
        1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
        1000D6731000D6730800D67B2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
    end
    object BitBtn2: TBitBtn
      Left = 88
      Top = 5
      Width = 81
      Height = 49
      Caption = 'Skriv'
      PopupMenu = pmPrint
      TabOrder = 1
      OnMouseDown = BitBtn2MouseDown
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00CEC6
        CE00ADADAD009C9C9C00FF00FF00FF00FF00ADADAD00D6D6D600DED6D600BDBD
        BD00ADADAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00C6C6C600F7F7F700F7F7
        F700BDBDBD00ADADAD005A5A5A006363630084848400ADADAD00CEC6C600E7DE
        DE00E7E7E700D6D6D600B5B5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEF
        EF00BDB5B500B5ADAD004A4A4A00212121003131310042424200636363008484
        8400ADADAD00CECECE00E7E7E700DEDEDE00ADA5A500FF00FF00FF00FF00FF00
        FF00FF00FF00ADADAD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEF
        EF00B5B5B500B5B5B5009C949C006B6B6B004A4A4A0031313100292929003131
        310042424200636363008C8C8C00A5A5A500FF00FF00FF00FF00FF00FF00A5A5
        A500CECECE00F7F7F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADAD
        AD009C9C9C00A5A5A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A
        5A00393939002929290042424200A59C9C00FF00FF00FF00FF00FF00FF00A5A5
        A500EFEFEF00F7F7F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6
        D600B5B5B500A5A5A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5
        B500A5A5A500848484006B6B6B00A59C9C00FF00FF00FF00FF00FF00FF00A5A5
        A500E7E7E700DED6D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7
        E700E7E7E700D6D6D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C
        9C00A5A5A500ADADAD00B5B5B500A5A5A500FF00FF00FF00FF00FF00FF00A5A5
        A500B5ADAD00A5A5A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7
        E700F7F7F700F7F7F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5
        B500ADA5A500A5A5A500A59C9C009C9C9C00FF00FF00FF00FF00FF00FF00A5A5
        A500BDBDBD00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7
        F700C6C6C600C6BDC600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6
        D600CECECE00C6C6C600BDBDBD00A5A5A500FF00FF00FF00FF00FF00FF00A5A5
        A500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBD
        BD00ADB5AD0084C68400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6
        D600DEDEDE00DEDEDE00D6D6D600ADADAD00FF00FF00FF00FF00FF00FF00FF00
        FF00BDBDBD00DEDEDE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBD
        BD00EFEFEF00D6F7D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5
        A500ADADAD00BDBDBD00BDBDBD00B5B5B500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00B5B5B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7
        F700F7F7F700F7F7F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6
        D600CECECE00ADA5A500A5A5A500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00A59C9C00BDBDBD00DEDEDE00CECECE00ADAD
        AD00C6C6C600DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
        DE00C6C6C600BDB5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00ADADAD00F7F7F700F7F7F700DEDEDE00BDBD
        BD00BDBDBD00C6C6C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADAD
        AD00BDB5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EFDEDE00FFE7DE00FFE7D600FFDE
        D600F7DED600F7DED600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C600FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00E7C6BD00FFE7DE00FFDED600FFDE
        CE00FFD6C600FFCEBD00FFC6B500FFC6B500FFC6AD00EFCECE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00E7C6BD00FFE7DE00FFDED600FFDE
        CE00FFD6C600FFCEBD00FFC6B500FFC6AD00F7B5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00E7CEC600FFE7DE00FFDED600FFDE
        CE00FFD6C600FFCEBD00FFC6B500FFC6AD00F7B5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00E7CEC600FFE7DE00FFDED600FFDE
        CE00FFD6C600FFCEBD00FFC6B500FFC6AD00F7BDB500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00E7CEC600FFE7DE00FFDED600FFDE
        CE00FFD6C600FFCEBD00FFC6B500F7BDB500F7BDB500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7C6C600FFEFE700FFE7DE00FFDED600FFDE
        CE00FFD6C600FFCEBD00FFCEB500F7BDB500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEC600FFF7EF00FFE7DE00FFE7D600FFDE
        CE00FFD6C600FFD6C600F7BDB500F7BDB500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BD
        B500E7BDB500E7B5AD00F7BDB500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
    end
    object BitBtn3: TBitBtn
      Left = 168
      Top = 5
      Width = 81
      Height = 49
      Action = acGetInvoiceNo
      Caption = 'H'#228'mta fakturanr'
      TabOrder = 2
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00AD7B7B00B5848400B5848400B5848400B5848400B5848400B584
        8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
        8400B5848400B5848400B5848400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6
        AD00F7D6A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
        9400EFCE9400EFCE9400EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400EFDEC600F7E7C600F7DEC600F7DEBD00F7D6B500F7D6
        AD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
        9400EFCE9400EFCE9400EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400F7DECE00F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6
        B500F7D6AD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE
        9400EFCE9400EFCE9400EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400F7E7CE00F7E7D600F7E7CE00F7DEC600BD6B2900B55A
        1800F7DEBD00BD6B2900B55A1800E7BD8C00EFCE9C00EFCE9C00EFCE9400EFCE
        9400EFCE9400EFCE9400EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400F7E7D600F7EFDE00F7E7D600F7E7CE00CE8C5A00B55A
        1800DEAD7B00CE8C5200B55A1800DEA57300EFCEA500EFCE9C00EFCE9C00EFCE
        9400EFCE9400EFCE9400EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD7B8400F7E7DE00F7EFDE00F7E7D600F7E7CE00DEB58C00B55A
        1800CE8C5200F7DEBD00B55A1800CE844A00F7D6AD00EFCEA500EFCE9C00EFCE
        9C00EFCE9400EFCE9400EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00B57B8400F7EFE700F7EFE700F7EFDE00CE946300CE946300B55A
        1800CE946300CE946300B55A1800CE946300CE946300CE946300CE946300EFCE
        9C00EFCE9C00EFCE9400EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00B5848400F7EFE700FFF7EF00F7EFE700B55A1800B55A1800B55A
        1800B55A1800B55A1800B55A1800B55A1800B55A1800B55A1800B55A1800EFCE
        A500EFCE9C00EFCE9C00EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00BD848400F7EFEF00FFF7EF00F7EFE700F7EFE700F7EFDE00CE8C
        6300B55A1800F7DEBD00CE8C5A00B55A1800DEAD7B00F7D6B500F7D6AD00F7D6
        AD00EFCEA500EFCE9C00EFCE9400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00BD848C00FFF7F700FFFFF700FFF7EF00F7EFE700F7EFE700DEB5
        9400B55A1800CE8C5A00F7DEBD00B55A1800CE8C5200F7DEBD00F7D6B500F7D6
        AD00F7D6AD00EFCEA500EFCE9C00B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C68C8C00FFF7F700FFFFFF00FFF7F700CE946300CE946300CE94
        6300B55A1800CE946300CE946300B55A1800CE946300CE946300CE946300F7D6
        B500F7D6AD00F7D6AD00EFCEA500B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C68C8C00FFF7F700FFFFFF00FFFFFF00B55A1800B55A1800B55A
        1800B55A1800B55A1800B55A1800B55A1800B55A1800B55A1800B55A1800F7DE
        BD00F7D6B500F7D6AD00EFCEA500B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C68C8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7
        EF00CE946300B55A1800F7DEBD00CE8C6300B55A1800DEAD8400F7DEC600F7DE
        BD00F7DEBD00F7D6B500F7D6AD00B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CE948C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
        F700E7BD9C00B55A1800CE8C6300F7DEBD00B55A1800CE8C5A00F7E7CE00F7DE
        C600F7DEBD00F7DEBD00DEC6A500A57B8400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CE948C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00F7E7DE00B55A1800BD6B2900EFDECE00B55A1800BD632900F7E7CE00F7E7
        CE00EFD6BD00CEBDAD00B5AD94009C7B8400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00D69C9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFF7F700FFF7EF00F7EFE700F7EFDE00F7EFDE00F7EFDE00E7DE
        CE00CEBDAD00BDB5A500B5AD9C009C7B8400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00D69C9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFF7F700FFF7EF00FFF7E700EFDED600B5847300AD84
        7300AD7B7300AD7B7300AD7B7300AD7B7300FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEA59400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B5
        8400E7AD6B00EFA55200EFA53900B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEA59400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC6
        8C00F7BD6B00FFB55200B5848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEA59400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC6
        8C00F7BD6B00B5848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEA59400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC6
        8C00B5848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEA58C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CE
        BD00E7CEBD00E7CEBD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B584
        8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
    end
    object BitBtn4: TBitBtn
      Left = 248
      Top = 5
      Width = 81
      Height = 49
      Action = acAddTab
      Caption = 'L'#228'gg till flik'
      TabOrder = 3
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C2100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EF9C2100FFFFFF00FFFFFF00FFFF
        FF00FFF7E700FFF7E700EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EF9C2100F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00EF9C2100FF00
        FF00FF00FF00008C0800FF00FF00FF00FF00EF9C2100F7A55A00F7A55A00F7A5
        5A00F7A55A00F7A55A00EF9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00008C0800008C080000730800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008C
        0800008C0800008C08000073080000730800FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008C0800008C
        0800008C080000730800007308000073080000730800FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000730800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000730800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000730800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE000063
        CE000063CE000063CE000063CE000063CE000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE0084FF
        FF0000DEE70000DEE70000DEE70000DEE7000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE0084FF
        FF0010F7FF0010F7FF0010F7FF0000DEE7000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE0084FF
        FF0010F7FF0010F7FF0010F7FF0000DEE7000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE0084FF
        FF0010F7FF0010F7FF0010F7FF0000DEE7000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE000063
        CE000063CE000063CE000063CE000063CE000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE0084FF
        FF0000DEE70000DEE70000DEE70000DEE7000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE0084FF
        FF0010F7FF0010F7FF0010F7FF0000DEE7000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000063CE0084FF
        FF0010F7FF0010F7FF0010F7FF0000DEE7000063CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
    end
    object BitBtn5: TBitBtn
      Left = 328
      Top = 5
      Width = 81
      Height = 49
      Action = acSave
      Caption = 'Spara'
      TabOrder = 4
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00AD736B009C5252009C4A4A009C5252009C4A4A00A5737300B5B5B500B5B5
        B500B5B5B500BDB5B500BDB5B500B5B5B500B5B5B500B5B5B500B5B5B500A573
        7300944242009C4A4A009C4A4A009C4A4A009C4A4A00FF00FF00FF00FF00B584
        7300C66B6B00C6636300C6636300CE636300B55252009C6B6B00B5B5B500CECE
        CE00E7E7DE00EFEFEF00F7F7EF00F7F7EF00EFE7E700E7DEDE00DEDEDE00B573
        730094292900943131009C393900BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300BD5A5A009C6B6B00A58C8C00B584
        8400CEADAD00DECECE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B573
        730094292900943131009C393900C65A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300BD5A5A009C737300A57B7B009C39
        3900B5736B00C69C9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B
        7B0094292900943131009C393900C65A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300BD5A5A00A5737300A58484009431
        31009C424200B5737300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B
        7B0094292900943131009C393900C65A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300BD5A5A00A5737300AD8C8C009431
        3100943131009C4A4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B
        7B0094292900943131009C393900C65A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300B5525200AD7B7B00B58C8C009429
        29009429290094313100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C684
        840094292900943131009C393900C65A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300B5525200AD7B7B00C6ADAD00A563
        6300A56363009C6363009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C684
        840094292900943131009C393900BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300BD5A5A00B5737300D6A5A500C69C
        9C00BD9C9C00BD949400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C673
        7300A5424200AD424200AD4A4A00C6636300C66363009C4A4A00FF00FF00B584
        7300C66B6B00CE636300CE636300CE636300CE636300CE636300CE636300CE63
        6300CE636300CE636300CE636300CE636300C6636300C6636300C6636300CE63
        6300CE636300CE636300CE636300CE636300C66363009C4A4A00FF00FF00B584
        7300C66B6B00C6636300BD5A5A00C6636300C66B6B00CE737300CE737300CE73
        7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE73
        7300CE737300CE7B7B00CE6B6B00CE636300C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD4A4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BD
        BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BD
        BD00D6BDBD00DEC6C600CE8C8C00CE636300C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EF
        EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
        EF00F7EFEF00EFE7E700CE8C8C00C65A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700FFF7F700EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EF
        EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
        EF00F7F7F700EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECE
        CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6
        C600E7DEDE00EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7
        E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
        E700F7EFEF00EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CE
        CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECE
        CE00E7E7E700EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DE
        DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
        DE00EFEFEF00EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DE
        DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
        DE00EFEFEF00EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CE
        CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECE
        CE00E7E7E700EFE7E700CE8C8C00BD5A5A00C66363009C4A4A00FF00FF00B584
        7300C66B6B00AD424200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7
        F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
        F700FFF7F700EFE7E700CE8C8C00C65A5A00C66363009C4A4A00FF00FF00B584
        7300BD6B6B00AD424200CE9C9C00EFEFEF00EFE7E700EFE7E700EFE7E700EFE7
        E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
        E700EFEFE700E7DEDE00C68C8C00B5525200BD5A5A009C4A4A00FF00FF00FF00
        FF00AD736B00A5424200B58C8400C6CECE00C6C6C600C6C6C600C6C6C600C6C6
        C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
        C600C6C6C600CEC6C600B5848400944242009C4A4A00FF00FF00}
      Layout = blGlyphTop
    end
    object BitBtn6: TBitBtn
      Left = 408
      Top = 5
      Width = 81
      Height = 49
      Action = acSummarize
      Caption = 'Totaler'
      TabOrder = 5
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00BD846B00A5736300C68C7300C68C7B00B5847300AD8C84009C847B00E794
        7300E7947300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CE84
        6300D69C8400CE947B00E7B59C00DEA58C00BD846B00BD8C7B00C6948400B584
        7300946B5200946B520073422900844A3900844A390084635A00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BD84
        6300DE9C8C00FFC6AD00FFE7C600E7BDA500CE8C7300DE947B00FFAD8C00F7A5
        8400F7A58400F7A58400B5847300A5847B009C7B73007B4A390084635A00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C684
        6B00DE9C8C00FFB5A500FFD6B500E7BDA500D69C8400F7B59400F7B59400C684
        6B00B56B5200E7947B00EFA58C00C6846B00CE7B6300BD846B009C6B5A00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C684
        6B00DE9C8C00F7BDA500FFCEAD00EFC6AD00E7C6AD00FFD6BD00DEA58C00CE9C
        9400EFD6C600EFB59C00E79C7B00E7A58C00E7947300DEA58C00B58C8400FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C684
        6B00DEA58C00FFBDA500FFCEB500EFC6A500DEAD9C00DEB59C00DEAD9400E7CE
        B500EFEFE700DEBDAD00DEAD9400EFBDA500EFB59400E7B59C00B58C7B00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C684
        6300DEA58C00FFBDAD00FFDEBD00DEB59400B5735A00BD735A00F7C6A500E7CE
        AD00A57B6300DEB59C00FFDEBD00DEBDA500EFC6A500E7BDA500B5847300FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BD84
        6B00DEA59400FFC6B500FFD6BD00DEB59C00CE9C8400E7B59C00D6AD9400C68C
        7300C67B6300E7A58C00DEAD9400C68C7B00DE9C7B00DEB59C00B58C7B00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C684
        6300DEA59400FFC6B500FFCEB500EFC6AD00E7CEB500FFEFCE00D6A59400D694
        8400FFD6BD00E7B59C00CE947B00D6948400DE947B00DEAD9400B58C7B00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C684
        6300E7A59400FFC6B500FFD6B500EFCEAD00DEB5A500DEBDA500EFBDA500FFD6
        BD00F7EFDE00E7C6AD00E7B59C00F7C6AD00EFBD9C00DEBDA500B58C7B00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C684
        6300E7A59400FFCEBD00FFE7C600DEB59400B57B6300BD7B6300F7C6A500EFC6
        A500AD7B6B00DEB59C00FFD6B500FFC69400FFDE9C00FFCEAD00B58C7B00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C684
        6300E7AD9C00FFD6C600FFE7C600DEAD9400BD8C7B00DEAD9400E7BD9C00D6A5
        8C00C68C7300FFBD8C00CEADAD007384AD008C94AD00CEBDB500CE9C8400FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C684
        6300E7AD9C00FFD6C600FFDEBD00E7C6AD00DEC6B500FFEFCE00DEB5A500D6A5
        9400FFDEBD00FFC68C00948CA500086BE7001063D6009CADC600DEAD7B00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BD84
        6300DEB5A500FFD6CE00FFD6BD00F7D6B500E7C6B500DEBDA500EFC6AD00EFCE
        B500DEC6B500FFC69400B5B5B5004A9CF7005294F700BDB5D600DE9C7300FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BD84
        6300DEB5A500FFDECE00FFDEC600FFD6B500EFC6A500F7CEAD00E7B59C00F7D6
        BD00EFDEC600FFE7C600E7DECE00A5CEDE00ADC6E700D6CECE00CE947300FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C684
        6300DEB5A500FFDED600FFDEC600F7C6A500F7CEAD00EFBD9C00F7CEAD00F7CE
        AD00F7CEAD00F7D6B500EFCEB500E7C6AD00EFD6B500EFD6C600C6948400FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C684
        6300E7B5AD00FFE7DE00F7D6BD00E7AD8C00E79C7300F7A58400F7A58400F7A5
        8400DE9C7B00DE9C7B00DE9C7B00EFAD8400F7B59400F7CEB500BD9C9400FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C684
        6300E7BDB500FFEFE700F7DEC600EF9C7300EF844A00FF9C6300FFA56300FF9C
        6300FFA56B00FFA56B00FFA57300FFAD7B00FFA57300EFBDA500BDA59400FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C684
        6300E7B5AD00FFEFE700FFE7CE00EFAD8400E7734200EF7B4200EF7B4200EF7B
        4200EF844A00EF844A00F78C5200FF8C5200EF7B4200E7A58C00BD9C9400FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C684
        6300E7BDB500FFF7F700FFF7DE00F7D6B500E7AD8C00E7A57B00E79C7300E794
        7300DE946B00DE946B00E78C6300F78C5A00E7845200E7B59400CEA59400FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CE84
        6300F7D6CE00FFFFFF00FFFFF700FFFFDE00FFFFDE00FFFFDE00FFF7DE00FFFF
        DE00FFF7DE00FFF7DE00FFDEC600F7CEAD00FFD6B500FFEFD600DEB59C00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00DEB59C00F7E7DE00F7E7CE00F7E7CE00F7EFD600F7EFDE00F7F7DE00F7EF
        DE00F7EFD600F7F7DE00F7EFD600F7E7D600FFFFDE00FFF7DE00DEB59C00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00E7BDAD00E7C6B500E7C6B500E7C6BD00E7CEC600EFD6C600E7CE
        BD00DEC6B500EFD6C600F7EFD600FFF7DE00FFFFE700F7EFD600DEB5A500FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
    end
    object BitBtn7: TBitBtn
      Left = 488
      Top = 5
      Width = 81
      Height = 49
      Action = acClose
      Caption = 'St'#228'ng'
      TabOrder = 6
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008C6363004242
        420042424200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF008C6363004242420042424200B55A0000B55A
        0000424242008C6363008C6363008C6363008C6363008C6363008C6363008C63
        63008C6363008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008C63630042424200B55A0000B55A0000A5520800B55A0000C65A
        00004242420010AD840010AD840010AD840010AD840010AD840010AD840010AD
        840010AD84008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300B55A0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A
        00004242420010AD840010AD840010AD840010AD840010AD840018A57B0018A5
        7B0018A57B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300C65A0000C65A0000C65A0000C65A0000C65A0000CE630000CE63
        00004242420010AD840018A57B0018A57B0018A57B00189C7B00189C73002194
        7300398C6B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300C65A0000CE630000CE630000CE630000CE630000CE630000CE63
        0000424242002984630021947300219473002194730021946B00218C6B00298C
        6B0042846B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300CE630000CE630000CE630000CE6B0000CE6B0000CE6B0000CE63
        00004242420029735A00218C6B00298C6B00298C6300298C6B00298463002984
        6300298C6B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300CE630000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673
        000042424200298C6B002984630029845A00317B5A00317B5200317B5A003984
        5A00427B63008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300CE6B0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673
        000042424200316B4A00397B5200397B520031734A00397B52004A7B5A005A6B
        52005A6B52008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300D6730000D6730000D6730000D6730000FFD6A500FFE7C600FFBD
        6B00424242005A6B52005A6B520031734A00637B5200637B520094946B00B59C
        7300F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300D6730000D6730000D6730000D6730000D6730000FFD6A500D673
        000042424200F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B5
        8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300D6730000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
        000042424200F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B5
        8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
        000042424200F7B58400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B5
        8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300DE7B0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B
        000042424200EFCEBD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7
        DE00F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300FF840000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B
        000042424200F7B58400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6
        A500F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300D6730000FF840000FF840000F7840000F77B0000EF7B0000EF7B
        000042424200F7B58400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B5
        8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD6B6300AD6B6300D6730000FF840000EF7B0000F7840000FF84
        000042424200F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B5
        8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00AD6B6300AD6B6300D6730000FF840000FF84
        0000424242008484840084848400848484008484840084848400848484008484
        84008484840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD6B6300AD6B6300AD6B
        6300AD6B6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
    end
  end
  object pmInvoiceRow: TPopupMenu
    Left = 408
    Top = 432
    object AddRow1: TMenuItem
      Caption = 'L'#228'gg till extra rad'
      OnClick = AddRow1Click
    end
    object RemoveRow: TMenuItem
      Caption = 'Ta bort rad'
      OnClick = RemoveRowClick
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 472
    Top = 416
    object AddShiptoaddress1: TMenuItem
      Caption = 'L'#228'gg till leveransadress'
      OnClick = AddShiptoaddress1Click
    end
    object RemoveShipToAddress1: TMenuItem
      Caption = 'Ta bort leveransadress (Press CTRL + DEL)'
    end
  end
  object pmPrint: TPopupMenu
    Left = 216
    Top = 440
    object Klientspecifikfaktura1: TMenuItem
      Action = acKlientInvoices
    end
    object Klientpaketspecifikation1: TMenuItem
      Action = acClientPkgSpecar
    end
    object Invoice1: TMenuItem
      Action = acPrintInvoices
    end
    object FakturaEngelsk1: TMenuItem
      Caption = 'Faktura Engelsk'
      OnClick = FakturaEngelsk1Click
    end
    object FakturaEngelskLength1: TMenuItem
      Caption = 'Faktura Engelsk - Length'
      OnClick = FakturaEngelskLength1Click
    end
    object FakturaEngelskKP1: TMenuItem
      Caption = 'Faktura Engelsk - KP'
      OnClick = FakturaEngelskKP1Click
    end
    object FakturaSvenskutanmoms1: TMenuItem
      Caption = 'Faktura Svensk - utan moms'
      Enabled = False
      OnClick = FakturaSvenskutanmoms1Click
    end
    object SpecifikationSvenskVer2: TMenuItem
      Break = mbBreak
      Caption = 'Specifikation Svensk ver2'
      OnClick = SpecifikationSvenskVer2Click
    end
    object SpecEngVer2: TMenuItem
      Caption = 'Specifikation Engelsk ver2'
      OnClick = SpecEngVer2Click
    end
    object SpecifikationEngelskmedproducentver21: TMenuItem
      Caption = 'Specifikation Engelsk - med producent ver2'
      OnClick = SpecifikationEngelskmedproducentver21Click
    end
    object SpecifikationEngelskAktuelldimensionVer21: TMenuItem
      Caption = 'Specifikation Engelsk - Aktuell dimension ver2'
      OnClick = SpecifikationEngelskAktuelldimensionVer21Click
    end
    object TRPBREV1: TMenuItem
      Caption = 'TRP BREV'
      OnClick = TRPBREV1Click
    end
    object Specifikationutanpktnr1: TMenuItem
      Caption = 'Specifikation utan pktnr'
      OnClick = Specifikationutanpktnr1Click
    end
    object SpecifikationIdahostyle1: TMenuItem
      Caption = 'Specifikation (Idaho style)'
      OnClick = SpecifikationIdahostyle1Click
    end
    object FakturaEngelskfrAgust1: TMenuItem
      Caption = 'Faktura Engelsk (f'#246'r Agust)'
      OnClick = FakturaEngelskfrAgust1Click
    end
    object FakturaEngelskLengthNM31: TMenuItem
      Caption = 'Faktura Engelsk - Length (+ NM3)'
      OnClick = FakturaEngelskLengthNM31Click
    end
    object FakturaEngelskLngdperpakettyp1: TMenuItem
      Caption = 'Faktura Engelsk - L'#228'ngd (per pakettyp)'
      OnClick = FakturaEngelskLngdperpakettyp1Click
    end
    object TMenuItem
    end
    object FakturaSvenskutanmomsdk1: TMenuItem
      Caption = 'Faktura Svensk utan moms (dk)'
      OnClick = FakturaSvenskutanmomsdk1Click
    end
    object FakturaEngelskdk1: TMenuItem
      Caption = 'Faktura Engelsk (dk)'
      OnClick = FakturaEngelskdk1Click
    end
    object SpecifikationSvenskdk1: TMenuItem
      Caption = 'Specifikation Svensk (dk)'
      OnClick = SpecifikationSvenskdk1Click
    end
    object SpecifikationEngelskdk1: TMenuItem
      Caption = 'Specifikation Engelsk (dk)'
      OnClick = SpecifikationEngelskdk1Click
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 256
    Top = 416
    object acBooking: TAction
      Caption = 'Bokning'
      ImageIndex = 10
      OnExecute = acBookingExecute
      OnUpdate = acBookingUpdate
    end
    object acGetInvoiceNo: TAction
      Caption = 'H'#228'mta fakturanr'
      ImageIndex = 8
      OnExecute = acGetInvoiceNoExecute
    end
    object acSave: TAction
      Caption = 'Spara'
      ImageIndex = 6
      OnExecute = acSaveExecute
    end
    object acAddTab: TAction
      Caption = 'L'#228'gg till flik'
      ImageIndex = 9
      OnExecute = acAddTabExecute
    end
    object acSummarize: TAction
      Caption = 'Totaler'
      ImageIndex = 7
      OnExecute = acSummarizeExecute
    end
    object acPrintInvoices: TAction
      Caption = 'Faktura Svensk'
      OnExecute = acPrintInvoicesExecute
    end
    object acKlientInvoices: TAction
      Caption = 'Klient faktura'
      OnExecute = acKlientInvoicesExecute
    end
    object acClientPkgSpecar: TAction
      Caption = 'Klient paketspecifikation'
      OnExecute = acClientPkgSpecarExecute
    end
    object acPrint: TAction
      Caption = 'Skriv'
      ImageIndex = 5
    end
    object acClose: TAction
      Caption = 'St'#228'ng'
      ImageIndex = 0
      OnExecute = acCloseExecute
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 424
    Top = 480
    Bitmap = {
      494C010111001300040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000078000000010020000000000000B4
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D67310000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CEA59400D6AD9400CEA59400C6A59400C6A5
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CEA59C00DEAD9400EFC6A500E7C6AD00DEB59C00D6AD
      9400C6A59400C69C9400C69C9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6AD9C00DEB59C00EFBD9400EFCEA500F7DEBD00EFCEAD00EFCE
      A500E7C69C00BD948400B58C8400C69C8C00C69C8C00BD948C00000000000000
      0000000000000000000000000000000000000000000029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A5A5A00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B84
      630052734200319C3100319C3100319C3100319C3100319C3100319C31005263
      4200636B4A007B736300948C8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6AD9C00E7BD9C00F7CE9C00EFBD9400EFCEAD00EFDEC600F7D6B500EFCE
      AD00EFCEA500B58C7B00946363009C736B00AD847B00CEA58C00C69C8C00BD8C
      8400BD8C84000000000000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CF7FF0073DEF70073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD60029ADD60073DEF70073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000737373002121210052525200525252007373
      7300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073AD73001084
      100042CE420021A5210031A5310039AD390039AD390039AD3900107B1000319C
      31003194290021731800319C310021842100736B5A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6AD
      9C00E7C6A500F7D6A500F7CE9C00EFBD9400EFCEAD00F7E7CE00EFDEC600F7D6
      B500EFCEAD00B58C7B0094636300946B63009C6B6300DEBD9C00E7C69C00D6B5
      9C00CEA58C00BD94840000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CEFFF008CEFFF0073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD600ADFFFF0029ADD60073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000000000
      000029292900181818005A4A4A00D6ADAD008442420018181800292929001010
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000298C290042CE
      420031AD310042BD42004ABD4A0052C65200B5E7A500399C39008CBD7B00399C
      39009CDE8C0042BD420031AD3100217318004A42290000000000000000000000
      0000000000000000000000000000000000000000000000000000D6B59C00EFCE
      A500F7D6A500EFCEA500F7CE9C00EFBD9400F7D6B500F7EFD600F7E7CE00EFDE
      C600F7D6B500B58C7B0094636300946B63009C6B6B00DEBD9C00EFCEA500EFCE
      A500EFC6A500C69C8C0000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF0073DEF70073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD600ADFFFF00ADFFFF0029ADD60073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000006363
      630063525200BD949400FFCECE00FFCECE00A552520039212100522121002108
      08004A6384005A636B00424242004A4A4A004242420000000000000000000000
      00000000000000000000000000000000000000000000000000003994390029AD
      290039B539004ABD4A005AC65A009CDE8C0052B5520073B56B00D6E7BD004AA5
      4200B5E7A50052C6520042BD4200299C29002184210000000000000000000000
      00000000000000000000000000000000000000000000DEB5A500F7D6AD00F7DE
      AD00F7D6A500EFCEA500F7CE9C00EFBD9400F7D6BD00FFEFE700F7E7D600F7E7
      CE00EFDEC600B58C840094636300946B63009C6B6B00DEBD9C00EFC6A500E7C6
      A500E7C6A500C69C8C0000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD600ADFFFF00ADFFFF008CF7FF0029AD
      D60073DEF70029ADD600000000000000000000000000000000007B7B7B00D6A5
      A500FFCECE00E7B5B500AD8C8C006B636300B563630052212100392121003910
      10007BADDE003163940008101800525252004242420000000000000000000000
      00000000000000000000000000000000000000000000000000008CBD8C00299C
      29004ABD4A005AC65A006BCE6B00B5E7A50063A56300F7FFEF00F7FFEF0084BD
      7B00B5E7A50063CE630052C6520031A531004A6B390000000000000000000000
      00000000000000000000000000000000000000000000E7C6A500FFE7B500F7DE
      AD00F7D6A500EFCEA500F7CE9C00EFBD9400F7D6BD00FFF7EF00FFEFDE00F7E7
      D600F7E7CE00B594840094636300946B63009C6B6B00DEBD9C00EFC6A500E7C6
      A500E7C6A500C69C8C0000000000000000000000000029ADD6009CFFFF009CFF
      FF008CF7FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70073DEF70073DEF70029ADD6008CF7FF008CF7FF008CF7FF008CF7
      FF0029ADD60029ADD6000000000000000000000000000000000073737300D6A5
      A500947B7B004A4242005A5A5A0031313100BD8C8C004A181800181818001810
      10007BADDE004A7BAD0000183900292929002929290042424A00000000006363
      63005A5A5A00000000000000000000000000000000000000000000000000398C
      31004ABD4A0063CE6300B5E7A50052A54A00D6E7CE00FFFFFF00FFFFFF0084B5
      84009CDE8C0073CE73005AC65A00319C3100637B520000000000000000000000
      00000000000000000000000000000000000000000000E7C6A500FFE7B500F7DE
      AD00F7D6A500EFCEA500F7CE9C00EFBD9400F7D6BD00FFFFF700FFF7E700FFEF
      DE00F7E7D600B5948C0094636300946B63009C6B6B00DEBD9C00EFC6A500E7C6
      A500E7C6A500C69C8C0000000000000000000000000029ADD6009CFFFF009CFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C00847B7B00313131007B5A4A00B5B5
      B5008CEFFF0073DEF70073DEF70029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD6000000000000000000000000000000000073737300BD94
      94004A42420039393900313131007B6B6B00D6ADAD0073292900291818001810
      10007BADDE004A84B500215A8C000018390008315A00295A8C00081829004242
      42005A5A5A007373730000000000000000000000000000000000000000000000
      0000398C310052B552004A9C42009CB58C00BDC6C600BDC6C600E7DECE0094B5
      7B007BCE7B007BD67B0052B55200428439000000000000000000000000000000
      00000000000000000000000000000000000000000000E7C6A500FFE7B500F7DE
      AD00F7D6A500F7CE9C00F7CE9C00EFBD9400F7D6BD00FFFFF700FFF7EF00FFF7
      E700FFEFDE00B5948C0094635A0094636300946B6300DEBD9C00EFC6A500E7C6
      A500E7C6A500C69C8C0000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF008CF7FF008CF7FF008CF7FF008CF7FF007B5A4A00392918002963
      7B0052636B0073DEF70073DEF70073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000006B5A
      5A008C6B6B00736B6B00D6BDBD00E7C6C600D6A5A500BD8484008C4242002908
      0800396BC60010299C0029528C00295A8C003163940031639C00103963002121
      2100636363001018180000000000000000000000000000000000000000000000
      0000000000004A8C420018734A003984AD00217BBD00217BBD00428CAD004284
      630063BD6300399C3900528C4A00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7C6A500FFE7B500FFDE
      AD00FFD6A500BDC6C60063A5E700739CCE00EFDEC600FFFFF700FFF7F700FFF7
      EF00FFF7E700EFDED600D6BDAD00C6A59400B58C8400E7C6A500EFCEA500E7C6
      A500E7C6A500C69C8C0000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF008CF7FF008CF7FF00D6D6D6008CB5C6008CF7
      FF002973F70021526B0073DEF70073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000005A52
      5200FFEFEF00E7C6C600D6A5A500CE9C9C00CE9C9C007B6B6B00393139000018
      3900005AD6000039D60000189C0010298400214A8C0031639C00215284000818
      2900181818001039630042424A00000000000000000000000000000000000000
      0000000000005A849C00187BC600218CE700298CE700298CE700218CE700107B
      B500296B52000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7C6A500FFE7AD00F7DE
      AD009CCEDE004AB5FF0042A5FF003194F70073ADEF00F7F7F700FFFFEF00FFF7
      EF00FFF7EF00FFF7E700FFEFDE00F7E7D600F7DEC600F7D6B500EFCEAD00E7C6
      A500E7C69C00C69C8C0000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF008CF7FF008CF7FF0010A5D6008CF7
      FF002973F7002973F700084263008CEFFF008CEFFF0073DEF70073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000006363
      630073636300A57B7B00B5BDBD007B42420021293100083163000852AD003184
      F70094C6FF00427BB50008396300002984000021940010298400214A8C002152
      8400104273003163940042424A00000000000000000000000000000000000000
      000000000000217BBD002994EF002994F7003194FF003194FF00319CF7002994
      EF00216B9C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFC6A500D6DEC6007BCE
      F70052BDFF0052BDFF004AB5FF0042A5FF00319CFF0073B5FF00F7F7F700FFFF
      EF00FFF7EF00FFF7EF00FFEFE700F7E7D600F7E7CE00EFDEC600F7D6B500EFCE
      AD00EFC6A500C69C8C0000000000000000000000000029ADD6009CFFFF009CFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C00847B7B00847B7B00847B7B0010A5
      D60042E7F7002973F7002973F70021526B00847B7B00847B7B00847B7B00847B
      7B0073DEF70029ADD60000000000000000000000000000000000000000000000
      000000000000181818004231310000214A000852AD003984EF0073B5FF009CCE
      FF00A5D6FF005A8CB500184A7300002918000031630000298C000021A5001021
      7B0029528C003163940042424A00000000000000000000000000000000000000
      0000297BAD002994EF00399CFF00399CFF00399CFF00399CFF00399CFF00399C
      FF00298CE700106B9C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CBDD60063BDFF005ABD
      FF0063C6FF005ABDFF0052B5FF004AADFF0042A5FF00319CFF0073B5FF00F7F7
      F700FFF7EF00FFF7EF00FFF7EF00FFEFE700F7E7D600F7E7CE00EFDEC600F7D6
      B500D6BDAD00AD94A500BD949C00000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF008CF7FF008CF7
      FF0010A5D60042E7F7002973F7002973F70018425A008CEFFF008CEFFF0073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000000000
      0000000000004A4A4A004A4A52004294FF0084BDFF009CCEFF009CCEFF00BDE7
      FF00B5D6EF0084BDE7005A94C600396B9C0031639C001039420008398C000031
      B50000189C001029840042424A00000000000000000000000000000000000000
      00002184C600399CFF0042A5FF0042A5FF0042A5FF0042A5FF0042A5FF0042A5
      FF00399CF700315A6B0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063B5FF005AB5FF005AB5FF0063BD
      FF0063BDFF0063C6FF005ABDFF0052B5FF004AADFF0042A5FF00319CFF0084BD
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFEFDE00F7E7D600F7E7CE00CEBD
      BD009C94AD00AD94A50000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF008CF7
      FF008CF7FF0010A5D60042E7F7002973F7002973F70021526B008CEFFF008CEF
      FF0073DEF70029ADD60000000000000000000000000000000000000000000000
      0000000000004A4A4A00525252009CCEFF00A5D6FF00ADDEFF00B5D6EF0084AD
      D6005284BD006394C60073A5D6007BADDE005A8CBD00396B9C00295A8C001042
      5A000842BD000031BD0039424A00000000000000000000000000000000006384
      9C00399CF70042A5FF004AADFF004AADFF006BBDFF006BBDFF004AADFF004AAD
      FF0042A5F700316B840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005AB5FF005AB5FF005AB5
      FF0063BDFF0063BDFF0063C6FF005ABDFF0052B5FF004AADFF0042A5FF00319C
      FF0084BDFF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFEFDE00B5B5C600848C
      B5009494AD000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF008CF7
      FF008CF7FF008CF7FF0010A5D60042E7F7002973F7002973F700084263008CEF
      FF008CEFFF0029ADD60000000000000000000000000000000000000000000000
      0000000000007373730052525200BDE7FF00A5CEEF0084ADD6005A94C6004A7B
      AD005284B500396B9C004A7BAD00639CCE0073A5D60073ADDE00639CCE003163
      9C0031639C00215AA50042424A00000000000000000000000000000000006BA5
      C60042A5F7004AADFF004AB5FF006BBDFF0052B5FF006BBDFF0052B5FF006BBD
      FF004AADFF003973940000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005AB5FF005AB5
      FF0063B5FF0063BDFF0063BDFF0063C6FF005ABDFF0052B5FF004AADFF0042A5
      FF002994FF0084BDFF00FFF7EF00FFFFF700F7F7F70094ADD6007384BD00848C
      B500000000000000000000000000000000000000000029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60010A5D60042E7F7002973F7003139BD003131
      310029ADD60029ADD60000000000000000000000000000000000000000000000
      0000000000000000000073737300527394006394C600639CCE005284BD0073A5
      D6009CCEFF007BADDE004273AD005A8CBD006394C600639CCE006B9CD60084B5
      E7005A8CBD004273A50042424A00000000000000000000000000000000005294
      BD0042A5EF0052B5FF006BC6FF006BC6FF006BC6FF0052B5F7004AB5EF0052B5
      F70052B5F70039738C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005AB5
      FF005AB5FF0063BDFF0063BDFF0063C6FF005AC6FF0052BDFF004AB5FF0042A5
      FF00399CFF002994FF0084C6FF00D6E7EF00739CD6005A84C6005A84C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010A5D60042A5DE008C847B008484
      7B00313131000000000000000000000000000000000000000000000000000000
      000000000000000000000000000073737300394A5A00426B8C006394C6005284
      BD00396B9C004A7BAD004273A5004A7BAD005A8CC6005284B5006394CE00639C
      CE0073A5D60073A5D6004A4A52000000000000000000000000000000000063A5
      C600217BB500298CCE003194DE003194DE002184C600298CC600318CC6002984
      C6002994CE00106B9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005AB5FF005AB5FF0063BDFF0063BDFF0063C6FF005AC6FF0052B5FF004AAD
      FF0042A5FF00399CFF00319CFF00399CF7005284DE005284DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000846B5A00FFFFFF00F7EF
      E7007363520021214A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300525A6300395A
      7B00639CCE005284B5004A7BB5005284B5004A7BAD005284B5004A7BB500639C
      CE00426B8C004A5A6B0073737300000000000000000000000000000000006384
      9C002173A500428CC6004A94C6006BADD6007BBDEF0063ADF7004A9CE700398C
      CE00216BA5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005AB5FF005AB5FF0063BDFF0063BDFF0063C6FF005ABDFF0052B5
      FF004AADFF0042A5FF00318CF7003973EF006384F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C948C00E7CE
      B50029637B002973F7003139BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007373
      730039424A00527394005A8CB500528CBD00427BAD005284B500527BA5003942
      4A00737373000000000000000000000000000000000000000000000000000000
      00002173A500318CC6006BADD6008CBDE7008CBDE70073BDE7005AADDE003994
      C600106B9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005AB5FF005AB5FF0063BDFF0063BDFF0063C6FF005ABD
      FF0052B5FF00638CDE002121AD00394ACE006B84F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A6B
      9C00299CEF002973F7003139BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073737300525A6B00395A7B00426B8C004A5A6B00737373000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000428CB5004294C6006BADD6009CCEE7008CBDE7004294BD00106B
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005AB5FF0063B5FF0063BDFF0063C6FF000000
      0000000000007B73C6002121AD00394ACE006B84F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000010E7000010E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000737373007373730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BA5BD004A94B500529CBD004A8CAD0063849C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B73C6002121AD00394ACE006B84F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002121AD00394ACE006B84F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B58484000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58484000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE6300000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58484000000000000000000000000000000000000000000AD73
      8400F7DECE00F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6
      AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE6300000000000000000000000000000000000000000000AD73
      8400F7DECE00F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6
      AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58484000000000000000000000000000000000000000000AD73
      8400F7E7CE00F7E7D600F7E7CE00F7DEC600BD6B2900B55A1800F7DEBD00BD6B
      2900B55A1800E7BD8C00EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      AD00FFD6A500CE6300000000000000000000000000000000000000000000AD73
      8400F7E7CE00F7E7D600F7E7CE00F7DEC600F7DEBD00F7DEBD00F7D6B500F7D6
      AD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58484000000000000000000000000000000000000000000AD73
      8400F7E7D600F7EFDE00F7E7D600F7E7CE00CE8C5A00B55A1800DEAD7B00CE8C
      5200B55A1800DEA57300EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      AD00FFD6AD00CE6300000000000000000000000000000000000000000000AD73
      8400F7E7D600DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C00313131005263
      6B009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00EFCE9400B58484000000000000000000000000000000000000000000AD7B
      8400F7E7DE00F7EFDE00F7E7D600F7E7CE00DEB58C00B55A1800CE8C5200F7DE
      BD00B55A1800CE844A00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00DEDEDE009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE6300000000000000000000000000000000000000000000AD7B
      8400F7E7DE00F7EFDE00F7E7D600F7E7CE00F7E7CE00F7DEC6007B5A4A003929
      180029637B0052636B00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE
      9400EFCE9400B58484000000000000000000000000000000000000000000B57B
      8400F7EFE700F7EFE700F7EFDE00CE946300CE946300B55A1800CE946300CE94
      6300B55A1800CE946300CE946300CE946300CE946300EFCE9C00EFCE9C00EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE6300000000000000000000000000000000000000000000B57B
      8400F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7CE00D6D6D6008CB5
      C6008CF7FF002973F70021526B00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE
      9400EFCE9400B58484000000000000000000000000000000000000000000B584
      8400F7EFE700FFF7EF00F7EFE700B55A1800B55A1800B55A1800B55A1800B55A
      1800B55A1800B55A1800B55A1800B55A1800B55A1800EFCEA500EFCE9C00EFCE
      9C00EFCE9400B584840000000000000000000000000000000000EF9C2100F7A5
      5A00F7A55A00F7A55A00F7A55A00F7A55A00EF9C21000000000000000000008C
      08000000000000000000EF9C2100F7A55A00F7A55A00F7A55A00F7A55A00F7A5
      5A00EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE6300000000000000000000000000000000000000000000B584
      8400F7EFE700DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C006BC6
      FF008CF7FF002973F7002973F700084263009C9C9C009C9C9C009C9C9C009C9C
      9C00EFCE9400B58484000000000000000000000000000000000000000000BD84
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700F7EFDE00CE8C6300B55A1800F7DE
      BD00CE8C5A00B55A1800DEAD7B00F7D6B500F7D6AD00F7D6AD00EFCEA500EFCE
      9C00EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008C0800008C
      0800007308000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE6300000000000000000000000000000000000000000000BD84
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7
      CE0010A5D60042E7F7002973F7002973F70021526B00F7D6AD00EFCEA500EFCE
      9C00EFCE9400B58484000000000000000000000000000000000000000000BD84
      8C00FFF7F700FFFFF700FFF7EF00F7EFE700F7EFE700DEB59400B55A1800CE8C
      5A00F7DEBD00B55A1800CE8C5200F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00B584840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008C0800008C0800008C
      0800007308000073080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE6300000000000000000000000000000000000000000000BD84
      8C00FFF7F700FFFFF700FFF7EF00F7EFE700F7EFE700F7EFDE00F7E7D600F7E7
      CE00F7E7CE0010A5D60042E7F7002973F7002973F70018425A00F7D6AD00EFCE
      A500EFCE9C00B58484000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFF7F700CE946300CE946300CE946300B55A1800CE94
      6300CE946300B55A1800CE946300CE946300CE946300F7D6B500F7D6AD00F7D6
      AD00EFCEA500B584840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008C0800008C0800008C08000073
      0800007308000073080000730800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFD600FFEF
      D600FFEFD600CE6300000000000000000000000000000000000000000000C68C
      8C00FFF7F700DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C0010A5D60042E7F7002973F7002973F70021526B009C9C
      9C00EFCEA500B58484000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00B55A1800B55A1800B55A1800B55A1800B55A
      1800B55A1800B55A1800B55A1800B55A1800B55A1800F7DEBD00F7D6B500F7D6
      AD00EFCEA500B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000073
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE6300000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EFE700F7EFE700F7EF
      DE00F7E7D600F7E7CE00F7E7CE0010A5D60042E7F7002973F7002973F7000842
      6300EFCEA500B58484000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00CE946300B55A
      1800F7DEBD00CE8C6300B55A1800DEAD8400F7DEC600F7DEBD00F7DEBD00F7D6
      B500F7D6AD00B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000073
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFE700FFEFDE00FFEF
      D600FFEFD600CE6300000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EFE700F7EF
      E700F7EFDE00F7E7D600F7E7CE00F7E7CE0010A5D60042E7F7002973F7003139
      BD0031313100B58484000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700E7BD9C00B55A
      1800CE8C6300F7DEBD00B55A1800CE8C5A00F7E7CE00F7DEC600F7DEBD00F7DE
      BD00DEC6A500A57B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000073
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500FFFFFF00E7E7E700B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD00B5ADAD00B5ADAD00B5AD
      AD00FFEFD600CE6300000000000000000000000000000000000000000000CE94
      8C00FFF7F700DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C0010A5D60042A5DE008C84
      7B0084847B00313131000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7E7DE00B55A
      1800BD6B2900EFDECE00B55A1800BD632900F7E7CE00F7E7CE00EFD6BD00CEBD
      AD00B5AD94009C7B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE000063CE000063CE000063
      CE000063CE000063CE000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE6300000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7
      EF00F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7CE00846B5A00FFFF
      FF00F7EFE7007363520021214A0000000000000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00F7EFE700F7EFDE00F7EFDE00F7EFDE00E7DECE00CEBDAD00BDB5
      A500B5AD9C009C7B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0000DEE70000DE
      E70000DEE70000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE6300000000000000000000000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00F7EFE700F7EFDE00F7EFDE00F7EFDE00E7DECE00CEBDAD009C94
      8C00E7CEB50029637B002973F7003139BD00000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700EFDED600B5847300AD847300AD7B7300AD7B
      7300AD7B7300AD7B730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7E700CE6300000000000000000000000000000000000000000000D69C
      9400FFF7F700DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00EFDED600B5847300AD847300AD7B7300AD7B
      73004A6B9C00299CEF002973F7003139BD00000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE6300000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA539000010E7000010E70000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE000063CE000063CE000063
      CE000063CE000063CE000063CE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B2100000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      840000000000000000000000000000000000000000000000000000000000DEA5
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0000DEE70000DE
      E70000DEE70000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CEBD00E7CEBD00E7CE
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CEBD00E7CEBD00E7CE
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000AD736B009C52
      52009C4A4A009C5252009C4A4A00A5737300B5B5B500B5B5B500B5B5B500BDB5
      B500BDB5B500B5B5B500B5B5B500B5B5B500B5B5B500A5737300944242009C4A
      4A009C4A4A009C4A4A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007B7B7B000000
      00000000000000000000FFFFFF007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      00000000000000000000000000000000000000000000B5847300C66B6B00C663
      6300C6636300CE636300B55252009C6B6B00B5B5B500CECECE00E7E7DE00EFEF
      EF00F7F7EF00F7F7EF00EFE7E700E7DEDE00DEDEDE00B5737300942929009431
      31009C393900BD5A5A00C66363009C4A4A000000000000000000BD846B00A573
      6300C68C7300C68C7B00B5847300AD8C84009C847B00E7947300E79473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000007B7B
      7B007B7B7B0000FFFF0000FFFF007B7B7B007B7B7B007B7B7B0000FFFF000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      AD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B50000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C6B6B00A58C8C00B5848400CEADAD00DECE
      CE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B5737300942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000CE846300D69C8400CE94
      7B00E7B59C00DEA58C00BD846B00BD8C7B00C6948400B5847300946B5200946B
      520073422900844A3900844A390084635A000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      AD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A5000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C737300A57B7B009C393900B5736B00C69C
      9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000BD846300DE9C8C00FFC6
      AD00FFE7C600E7BDA500CE8C7300DE947B00FFAD8C00F7A58400F7A58400F7A5
      8400B5847300A5847B009C7B73007B4A390084635A0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B000000000000000000000000000000000000000000ADAD
      AD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A500000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300A5848400943131009C424200B573
      7300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000C6846B00DE9C8C00FFB5
      A500FFD6B500E7BDA500D69C8400F7B59400F7B59400C6846B00B56B5200E794
      7B00EFA58C00C6846B00CE7B6300BD846B009C6B5A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300AD8C8C0094313100943131009C4A
      4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000C6846B00DE9C8C00F7BD
      A500FFCEAD00EFC6AD00E7C6AD00FFD6BD00DEA58C00CE9C9400EFD6C600EFB5
      9C00E79C7B00E7A58C00E7947300DEA58C00B58C840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00B58C8C0094292900942929009431
      3100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C6848400942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000C6846B00DEA58C00FFBD
      A500FFCEB500EFC6A500DEAD9C00DEB59C00DEAD9400E7CEB500EFEFE700DEBD
      AD00DEAD9400EFBDA500EFB59400E7B59C00B58C7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      AD00B5B5B500A5A5A500000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00C6ADAD00A5636300A56363009C63
      63009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C6848400942929009431
      31009C393900BD5A5A00C66363009C4A4A0000000000C6846300DEA58C00FFBD
      AD00FFDEBD00DEB59400B5735A00BD735A00F7C6A500E7CEAD00A57B6300DEB5
      9C00FFDEBD00DEBDA500EFC6A500E7BDA500B584730000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00B5737300D6A5A500C69C9C00BD9C9C00BD94
      9400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C6737300A5424200AD42
      4200AD4A4A00C6636300C66363009C4A4A0000000000BD846B00DEA59400FFC6
      B500FFD6BD00DEB59C00CE9C8400E7B59C00D6AD9400C68C7300C67B6300E7A5
      8C00DEAD9400C68C7B00DE9C7B00DEB59C00B58C7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF0000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A500000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300C6636300C6636300C6636300CE636300CE636300CE63
      6300CE636300CE636300C66363009C4A4A0000000000C6846300DEA59400FFC6
      B500FFCEB500EFC6AD00E7CEB500FFEFCE00D6A59400D6948400FFD6BD00E7B5
      9C00CE947B00D6948400DE947B00DEAD9400B58C7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF0000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD00000000000000000000000000B5847300C66B6B00C663
      6300BD5A5A00C6636300C66B6B00CE737300CE737300CE737300CE737300CE73
      7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE7B
      7B00CE6B6B00CE636300C66363009C4A4A0000000000C6846300E7A59400FFC6
      B500FFD6B500EFCEAD00DEB5A500DEBDA500EFBDA500FFD6BD00F7EFDE00E7C6
      AD00E7B59C00F7C6AD00EFBD9C00DEBDA500B58C7B0000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      00007B7B7B007B7B7B007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B007B7B7B00FFFFFF000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B500000000000000000000000000B5847300C66B6B00AD4A
      4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BDBD00D6BDBD00D6BD
      BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00DEC6
      C600CE8C8C00CE636300C66363009C4A4A0000000000C6846300E7A59400FFCE
      BD00FFE7C600DEB59400B57B6300BD7B6300F7C6A500EFC6A500AD7B6B00DEB5
      9C00FFD6B500FFC69400FFDE9C00FFCEAD00B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B00000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A50000000000000000000000000000000000B5847300C66B6B00AD42
      4200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A0000000000C6846300E7AD9C00FFD6
      C600FFE7C600DEAD9400BD8C7B00DEAD9400E7BD9C00D6A58C00C68C7300FFBD
      8C00CEADAD007384AD008C94AD00CEBDB500CE9C840000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B5000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300E7AD9C00FFD6
      C600FFDEBD00E7C6AD00DEC6B500FFEFCE00DEB5A500D6A59400FFDEBD00FFC6
      8C00948CA500086BE7001063D6009CADC600DEAD7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7F7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000BD846300DEB5A500FFD6
      CE00FFD6BD00F7D6B500E7C6B500DEBDA500EFC6AD00EFCEB500DEC6B500FFC6
      9400B5B5B5004A9CF7005294F700BDB5D600DE9C730000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600E7DEDE00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000BD846300DEB5A500FFDE
      CE00FFDEC600FFD6B500EFC6A500F7CEAD00E7B59C00F7D6BD00EFDEC600FFE7
      C600E7DECE00A5CEDE00ADC6E700D6CECE00CE94730000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700F7EFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300DEB5A500FFDE
      D600FFDEC600F7C6A500F7CEAD00EFBD9C00F7CEAD00F7CEAD00F7CEAD00F7D6
      B500EFCEB500E7C6AD00EFD6B500EFD6C600C694840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B007B7B
      7B007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300E7B5AD00FFE7
      DE00F7D6BD00E7AD8C00E79C7300F7A58400F7A58400F7A58400DE9C7B00DE9C
      7B00DE9C7B00EFAD8400F7B59400F7CEB500BD9C940000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      00007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300E7BDB500FFEF
      E700F7DEC600EF9C7300EF844A00FF9C6300FFA56300FF9C6300FFA56B00FFA5
      6B00FFA57300FFAD7B00FFA57300EFBDA500BDA5940000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      00007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300E7B5AD00FFEF
      E700FFE7CE00EFAD8400E7734200EF7B4200EF7B4200EF7B4200EF844A00EF84
      4A00F78C5200FF8C5200EF7B4200E7A58C00BD9C940000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300E7BDB500FFF7
      F700FFF7DE00F7D6B500E7AD8C00E7A57B00E79C7300E7947300DE946B00DE94
      6B00E78C6300F78C5A00E7845200E7B59400CEA5940000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007B7B7B000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A0000000000CE846300F7D6CE00FFFF
      FF00FFFFF700FFFFDE00FFFFDE00FFFFDE00FFF7DE00FFFFDE00FFF7DE00FFF7
      DE00FFDEC600F7CEAD00FFD6B500FFEFD600DEB59C0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007B7B7B000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300BD6B6B00AD42
      4200CE9C9C00EFEFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFEFE700E7DE
      DE00C68C8C00B5525200BD5A5A009C4A4A000000000000000000DEB59C00F7E7
      DE00F7E7CE00F7E7CE00F7EFD600F7EFDE00F7F7DE00F7EFDE00F7EFD600F7F7
      DE00F7EFD600F7E7D600FFFFDE00FFF7DE00DEB59C0000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000FFFF00000000000000000000000000000000000000000000FF
      FF007B7B7B00000000000000000000000000000000007B7B7B00000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      AD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD736B00A542
      4200B58C8400C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CEC6
      C600B5848400944242009C4A4A0000000000000000000000000000000000E7BD
      AD00E7C6B500E7C6B500E7C6BD00E7CEC600EFD6C600E7CEBD00DEC6B500EFD6
      C600F7EFD600FFF7DE00FFFFE700F7EFD600DEB5A50000000000000000000000
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
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0084E7FF005ACEEF0021A5
      D6000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BE7F70073DEF70039BD
      DE000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEFF0063D6
      EF0018A5D600000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEF7008CEF
      FF0029ADD60000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B0000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF700087B10001084
      18004AC6E70000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      AD00EFCEA500B58C7B0000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF000873080039BD63004AD6
      7B001084180018A5D6000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      AD00EFCEA500B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF00006B000031AD52005AE78C005AE7
      8C0039BD5A0008731000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF000873080029AD4A005AEF940052DE84004AD6
      6B0021AD310021AD3900087308000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE7000873080021AD310031AD520039BD5A0042CE6B0039C6
      5A0029BD4A0021AD310021AD310000730800000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      AD00B5AD94009C847B0000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF000873080008730800087308000873100031BD4A0031BD
      4A000873080008730800087308000873080000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B0000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B0000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF000873080021AD390021BD
      39000873080000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B0000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD84730000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF000873100018AD290010AD
      21000873080000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      18000873080000000000000000000000000000000000BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000BDBDBD000000
      00007B7B7B00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B00FFFFFF007B7B7B000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      10000873080000000000000000000000000000000000BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000BDBDBD000000
      00007B7B7B00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B00FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      84000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      000000000000000000000000000008841000089C180008A51800088C10000873
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
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
      2800000060000000780000000100010000000000A00500000000000000000000
      000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00
      0000000000000000C00003000000000000000000C00003000000000000000000
      C00003000000000000000000C00003000000000000000000C000030000000000
      00000000C00003000000000000000000C00003000000000000000000C0000300
      0000000000000000C00003000000000000000000C00003000000000000000000
      C00003000000000000000000C00003000000000000000000C000030000000000
      00000000C00003000000000000000000C00003000000000000000000C0000300
      0000000000000000C00003000000000000000000C00003000000000000000000
      E00007000000000000000000FFFFFF000000000000000000FFFFFF0000000000
      00000000FFFFFF000000000000000000FE0FFFFFFFFFFFFFFFFFFFFFFC01FFFF
      FFFFFFFFFFFFFFFFF8003F800003FF9FFFE001FFF00007800003FE0FFFC0007F
      E00003800003F00FFFC0007FC00003800003E0007FC0007F800003800003C000
      7FC0007F800003800003C00027E0007F800003800003C00003F000FF80000380
      0003E00003F801FF800003800003E00001F807FF800003800003E00001F807FF
      800003800003F80001F003FF800001800003F80001F003FF000003800003F800
      01E003FF800007800003F80001E003FFC0000F800003FC0001E003FFE0001FFF
      FF07FE0001E003FFF0003FFFFF83FF8001E007FFF8007FFFFFC1FFE007F007FF
      FC007FFFFFE1FFF81FF80FFFFE187FFFFFF3FFFE7FFC1FFFFFF87FFFFFFFFFFF
      FFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFE00003C07C07FFFFFFE00003E00003C0
      7C07FFFFFFE00003E00003C07C07C00003E00003E00003C07C07C00003E00003
      E00003C07C07C00003E00003E00003C07C07C00003E00003E00003C07C07C000
      03E00003E00003C07C07C00003E00003E00003C06C07C00003E00003E00003FF
      C7FFC00003E00003E00003FF83FFC00003E00003E00003FF01FFC00003E00003
      E00003FFEFFFC00003E00003E00003FFEFFFC00003E00003E00003FFEFFFC000
      03E00003E00003FF01FFC00003E00001E00003FF01FFC00003E00000E00003FF
      01FFC00003E00000E00003FF01FFC00003E00001E00007FF01FFC00003E00007
      E0000FFF01FFE00007E0000FE0001FFF01FFFFFFFFE0001FE0003FFF01FFFFFF
      FFE0003FFFFFFFFF01FFFFFFFFFFFFFFFDE9DCFFFFFFC00001FFFFFFFDE9DCFF
      0C1F800000C01FFFA01801FC00078000008000FF803803F0000180000080007F
      803803E0000380000080007FC03CFB80000380000080007FC03CFB8000038000
      0080007FC03CFB80000380000080007FC03CFB80000380000080007FC038F880
      000380000080007FC038F880000380000080007F0010F8C0000380000080007F
      8008E0E0000780000080007F8008E0F8000F80000080007FC03CC3F8001F8000
      0080007FC07CD3FC007F80000080007FC07CD3FC00FF80000080007FC07CC3FC
      01FF80000080007FC13C11FC01FF80000080007FC13C11FC01FF80000080007F
      81B818FC01FF80000080007FB9DB9DF803FF80000080007FB9DB9DF803FF8000
      00C0007F7BE7BEF007FFC00001E0007FFFFFFFE00003FFFFFFFFF800FFFFFFE0
      0003FFFFFFFFF800FF1FFFE00003807FFF000000F8000FE000038003FF000428
      E0000FE0000380001F000428C0000FE0000380001F000152C0000FE000038000
      0F000428C0000FE0000380000F000428C0000FE00003800007000152C0000FE0
      0003800007000428C0000FE00003800007000428C0000FE00003800003000152
      C0000FE00003800003000428C0000FE00003800001000428C0000FE000038000
      00000152C0000FE00003800000000000C0000FE00003800007000000C0000FE0
      0003800007000000E0000FE00003800007000000F8000FE00007C03F07000000
      FE1FFFE0000FE07E0F000000FFFFFFE0001FFFE01FFFFFFFFFFFFFE0003FFFF0
      7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
