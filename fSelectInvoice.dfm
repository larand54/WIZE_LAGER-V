object frmSelectInvoice: TfrmSelectInvoice
  Left = 111
  Top = 134
  Width = 913
  Height = 560
  Caption = 'frmSelectInvoice'
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
  object grdInvoice: TdxDBGrid
    Left = 0
    Top = 65
    Width = 905
    Height = 423
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Line_ID'
    ShowGroupPanel = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Color = 15792367
    TabOrder = 0
    DataSource = dsInvoiceList
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoPreview, edgoRowSelect, edgoUseBitmap]
    object grdInvoiceINT_INVNO: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'INT_INVNO'
    end
    object grdInvoiceINV_DATE: TdxDBGridDateColumn
      Width = 113
      BandIndex = 0
      RowIndex = 0
      FieldName = 'INV_DATE'
    end
    object grdInvoiceINVOICE_NO: TdxDBGridMaskColumn
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'INVOICE_NO'
    end
    object grdInvoiceLO: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LO'
    end
    object grdInvoiceAGENT: TdxDBGridMaskColumn
      Width = 146
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AGENT'
    end
    object grdInvoiceCUSTOMER: TdxDBGridMaskColumn
      Width = 192
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CUSTOMER'
    end
    object grdInvoiceSHIPPER: TdxDBGridMaskColumn
      Width = 159
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SHIPPER'
    end
    object grdInvoiceINVOICE_TYPE: TdxDBGridMaskColumn
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'INVOICE_TYPE'
    end
    object grdInvoiceINVOICE_KONTO: TdxDBGridMaskColumn
      Width = 93
      BandIndex = 0
      RowIndex = 0
      FieldName = 'INVOICE_KONTO'
    end
    object grdInvoiceTO_BE_PAID: TdxDBGridMaskColumn
      Width = 72
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TO_BE_PAID'
    end
    object grdInvoiceCURRENCY: TdxDBGridMaskColumn
      Width = 66
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CURRENCY'
    end
    object grdInvoiceColumn12: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Line_ID'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 488
    Width = 905
    Height = 45
    Align = alBottom
    TabOrder = 2
    object bbOK: TBitBtn
      Left = 360
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object bbCancel: TBitBtn
      Left = 464
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 65
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 5
      Width = 31
      Height = 13
      Caption = 'LO No'
    end
    object Label1: TLabel
      Left = 72
      Top = 5
      Width = 50
      Height = 13
      Caption = 'Invoice no'
    end
    object peInvoiceType: TdxPickEdit
      Left = 300
      Top = 19
      Width = 162
      TabOrder = 0
      Text = 'NORMAL INVOICES'
      OnChange = peInvoiceTypeChange
      Items.Strings = (
        'VIDA (K1)'
        'PROFORMA (invoice later)'
        'PROFORMA (move pkgs)'
        'PURCHASE INVOICE'
        'USA (K2)')
    end
    object rgConfirmed: TRadioGroup
      Left = 136
      Top = 12
      Width = 161
      Height = 37
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'NOT CONF.'
        'CONFIR.')
      TabOrder = 1
    end
    object bbRefresh: TBitBtn
      Left = 704
      Top = 8
      Width = 89
      Height = 49
      Caption = 'Refresh'
      TabOrder = 3
      OnClick = bbRefreshClick
    end
    object cbShowQuickInvoice: TCheckBox
      Left = 480
      Top = 8
      Width = 145
      Height = 17
      Caption = 'Visa bara snabbfakturor'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object cbHideAttestedInvoices: TCheckBox
      Left = 480
      Top = 24
      Width = 145
      Height = 17
      Caption = 'G'#246'm attesterade fakturor'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object cbShowCreditOnly: TCheckBox
      Left = 480
      Top = 40
      Width = 145
      Height = 17
      Caption = 'Visa bara kreditfakturor'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object nfSearchLO: TcxTextEdit
      Left = 8
      Top = 24
      Width = 49
      Height = 21
      TabOrder = 6
    end
    object nfSearchInvoiceNo: TcxTextEdit
      Left = 72
      Top = 24
      Width = 57
      Height = 21
      TabOrder = 7
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 512
    Top = 248
    object FakturaSvensk1: TMenuItem
      Caption = 'Faktura Svensk'
    end
    object FakturaEngelsk1: TMenuItem
      Caption = 'Faktura Engelsk'
    end
    object FakturaEngelskLength1: TMenuItem
      Caption = 'Faktura Engelsk - Length'
    end
    object FakturaEngelskKP1: TMenuItem
      Caption = 'Faktura Engelsk - KP'
    end
    object FakturaSvenskutanmoms1: TMenuItem
      Caption = 'Faktura Svensk - utan moms'
    end
    object Specification1: TMenuItem
      Caption = 'Specification Svensk'
    end
    object SpecificationEngelsk1: TMenuItem
      Caption = 'Specification Engelsk'
    end
    object SpecificationEngelskmedproducent2: TMenuItem
      Caption = 'Specification Engelsk - med producent'
    end
    object Exit1: TMenuItem
    end
    object SpecificationEngelskAktuellDimension1: TMenuItem
      Caption = 'Specification Engelsk - Aktuell Dimension'
    end
  end
  object sq_InvoiceList: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      
        'SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_' +
        'DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER, '
      
        'IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, INO.Invoic' +
        'eNo AS INVOICE_NO,'
      'CASE'
      'WHEN IH.InvoiceType = 0 THEN '#39'NORMAL'#39
      'WHEN IH.InvoiceType = 1 THEN '#39'PROFORMA, INVOICE LATER'#39
      'WHEN IH.InvoiceType = 2 THEN '#39'PROFORMA'#39
      'END AS INVOICE_TYPE,'
      'CASE'
      'WHEN IH.Debit_Credit = 0 THEN '#39'DEBIT'#39
      'WHEN IH.Debit_Credit = 1 THEN '#39'CREDIT'#39
      'END AS INVOICE_KONTO,'
      'IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,'
      'IH.CurrencyName'#9'AS CURRENCY,'
      'RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+'
      'RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID,'
      'IH.Inv_Value_After_Deduct_DIS_COMM,'
      'IH.CurrencyNo,'
      'IH.CustomerNo'
      ''
      ''
      'FROM'
      'dbo.InvoiceHeader IH, dbo.InvoiceLO IL, dbo.InvoiceNumber INo'
      'WHERE'
      'IL.InternalInvoiceNo = IH.InternalInvoiceNo'
      'AND INo.InternalInvoiceNo = IH.InternalInvoiceNo'
      'ORDER BY InvoiceDate')
    Left = 49
    Top = 160
    object sq_InvoiceListINT_INVNO: TIntegerField
      FieldName = 'INT_INVNO'
    end
    object sq_InvoiceListINV_DATE: TSQLTimeStampField
      FieldName = 'INV_DATE'
    end
    object sq_InvoiceListAGENT: TStringField
      FieldName = 'AGENT'
      Size = 80
    end
    object sq_InvoiceListSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object sq_InvoiceListCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Size = 80
    end
    object sq_InvoiceListLO: TIntegerField
      FieldName = 'LO'
    end
    object sq_InvoiceListINVOICE_NO: TIntegerField
      FieldName = 'INVOICE_NO'
    end
    object sq_InvoiceListINVOICE_TYPE: TStringField
      FieldName = 'INVOICE_TYPE'
      Size = 23
    end
    object sq_InvoiceListINVOICE_KONTO: TStringField
      FieldName = 'INVOICE_KONTO'
      Size = 6
    end
    object sq_InvoiceListTO_BE_PAID: TFloatField
      FieldName = 'TO_BE_PAID'
    end
    object sq_InvoiceListCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Size = 5
    end
    object sq_InvoiceListLine_ID: TStringField
      FieldName = 'Line_ID'
      Size = 60
    end
    object sq_InvoiceListInv_Value_After_Deduct_DIS_COMM: TFloatField
      FieldName = 'Inv_Value_After_Deduct_DIS_COMM'
    end
    object sq_InvoiceListCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object sq_InvoiceListCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
  end
  object dspInvoiceList: TDataSetProvider
    DataSet = sq_InvoiceList
    Constraints = True
    Left = 49
    Top = 208
  end
  object cdsInvoiceList: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'INT_INVNO'
        DataType = ftInteger
      end
      item
        Name = 'INV_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'AGENT'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'SHIPPER'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'CUSTOMER'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'LO'
        DataType = ftInteger
      end
      item
        Name = 'INVOICE_NO'
        DataType = ftInteger
      end
      item
        Name = 'INVOICE_TYPE'
        DataType = ftString
        Size = 23
      end
      item
        Name = 'INVOICE_KONTO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TO_BE_PAID'
        DataType = ftFloat
      end
      item
        Name = 'CURRENCY'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Line_ID'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Inv_Value_After_Deduct_DIS_COMM'
        DataType = ftFloat
      end
      item
        Name = 'CurrencyNo'
        DataType = ftInteger
      end
      item
        Name = 'CustomerNo'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cdsInvoiceListIndex1'
        Fields = 'INT_INVNO'
      end>
    IndexName = 'cdsInvoiceListIndex1'
    Params = <>
    ProviderName = 'dspInvoiceList'
    StoreDefs = True
    Left = 44
    Top = 256
    object cdsInvoiceListINT_INVNO: TIntegerField
      FieldName = 'INT_INVNO'
    end
    object cdsInvoiceListINV_DATE: TSQLTimeStampField
      FieldName = 'INV_DATE'
    end
    object cdsInvoiceListAGENT: TStringField
      FieldName = 'AGENT'
      Size = 80
    end
    object cdsInvoiceListSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object cdsInvoiceListCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Size = 80
    end
    object cdsInvoiceListLO: TIntegerField
      FieldName = 'LO'
    end
    object cdsInvoiceListINVOICE_NO: TIntegerField
      FieldName = 'INVOICE_NO'
    end
    object cdsInvoiceListINVOICE_TYPE: TStringField
      FieldName = 'INVOICE_TYPE'
      Size = 23
    end
    object cdsInvoiceListINVOICE_KONTO: TStringField
      FieldName = 'INVOICE_KONTO'
      Size = 6
    end
    object cdsInvoiceListTO_BE_PAID: TFloatField
      FieldName = 'TO_BE_PAID'
      DisplayFormat = '#.00'
    end
    object cdsInvoiceListCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Size = 5
    end
    object cdsInvoiceListLine_ID: TStringField
      FieldName = 'Line_ID'
      Size = 60
    end
    object cdsInvoiceListInv_Value_After_Deduct_DIS_COMM: TFloatField
      FieldName = 'Inv_Value_After_Deduct_DIS_COMM'
    end
    object cdsInvoiceListCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object cdsInvoiceListCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
  end
  object dsInvoiceList: TDataSource
    DataSet = cdsInvoiceList
    Left = 49
    Top = 304
  end
end
