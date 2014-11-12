object fMultiplaShippers: TfMultiplaShippers
  Left = 192
  Top = 107
  Width = 745
  Height = 480
  Caption = 'AVR'#196'KNA FRAKTKOSTNADER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grdShippers: TdxDBGrid
    Left = 0
    Top = 89
    Width = 737
    Height = 311
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 0
    DataSource = dmModule1.dsShippers
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    object grdShippersAvrakningsNr: TdxDBGridMaskColumn
      Caption = 'AVR'#196'KNINGSNR'
      Width = 92
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AvrakningsNr'
    end
    object grdShippersShipper: TdxDBGridLookupColumn
      Caption = 'LOKALFRAKTF'#214'RARE'
      Width = 321
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Shipper'
    end
    object grdShippersShippersInvoiceNo: TdxDBGridMaskColumn
      Caption = 'FRAKTF'#214'RARENSFAKTURANR'
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ShippersInvoiceNo'
    end
    object grdShippersShipperNo: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ShipperNo'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 737
    Height = 53
    Align = alBottom
    TabOrder = 1
    object bbOK: TBitBtn
      Left = 240
      Top = 13
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = bbOKClick
      Kind = bkOK
    end
    object bbCancel: TBitBtn
      Left = 352
      Top = 13
      Width = 75
      Height = 25
      Caption = #197'ngra'
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 737
    Height = 89
    Align = alTop
    TabOrder = 2
    object bTaBortRad: TButton
      Left = 24
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Ta bort'
      TabOrder = 0
      OnClick = bTaBortRadClick
    end
    object Memo1: TMemo
      Left = 264
      Top = 8
      Width = 457
      Height = 73
      Lines.Strings = (
        'Mata in fraktf'#246'rarensfakturanr i listan.'
        ''
        'Inte g'#246'ra avr'#228'kning f'#246'r en fraktf'#246'rare? klicka p'#229' ta bort'
        ''
        'Klicka p'#229' OK f'#246'r att g'#246'ra avr'#228'kningar eller '#229'ngra')
      TabOrder = 1
    end
  end
end
