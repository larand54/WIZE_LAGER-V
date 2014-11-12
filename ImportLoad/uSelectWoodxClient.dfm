object fSelectWoodxClient: TfSelectWoodxClient
  Left = 229
  Top = 107
  Width = 454
  Height = 229
  ActiveControl = lcVisClientName
  Caption = 'V'#228'lj klient'
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
  object teWoodx_Name1: TcxDBTextEdit
    Left = 104
    Top = 96
    DataBinding.DataField = 'WoodX_ClientName'
    DataBinding.DataSource = dm_ImportWoodx.ds_mtClient
    Properties.ReadOnly = True
    TabOrder = 0
    Width = 305
  end
  object tePartyIdentifier: TcxDBTextEdit
    Left = 104
    Top = 120
    DataBinding.DataField = 'PartyIdentifier'
    DataBinding.DataSource = dm_ImportWoodx.ds_mtClient
    Properties.ReadOnly = True
    TabOrder = 1
    Width = 305
  end
  object lcVisClientName: TcxDBLookupComboBox
    Left = 104
    Top = 64
    DataBinding.DataField = 'VisClientName'
    DataBinding.DataSource = dm_ImportWoodx.ds_mtClient
    Properties.ListColumns = <>
    TabOrder = 2
    Width = 305
  end
  object Panel1: TPanel
    Left = 0
    Top = 161
    Width = 446
    Height = 41
    Align = alBottom
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 176
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
  end
  object cxLabel3: TcxLabel
    Left = 16
    Top = 124
    Caption = 'Woodx identifier:'
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 100
    Caption = 'Woodx klient:'
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 68
    Caption = 'V'#229'r klient:'
  end
  object cxLabel4: TcxLabel
    Left = 104
    Top = 16
    Caption = 'V'#228'lj den klient som skall l'#228'nkas mot woodx klienten'
  end
end
