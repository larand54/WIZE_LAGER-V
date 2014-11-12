object fKilnChargeNote: TfKilnChargeNote
  Left = 229
  Top = 107
  Width = 514
  Height = 383
  Caption = 'Notering'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 315
    Width = 506
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 160
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object reNote: TcxDBRichEdit
    Left = 0
    Top = 0
    Align = alClient
    DataBinding.DataField = 'Note'
    DataBinding.DataSource = dm_DryKiln.ds_KilnChargeHdr
    TabOrder = 1
    Height = 315
    Width = 506
  end
end
