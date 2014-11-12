object fSelectLIP_AR: TfSelectLIP_AR
  Left = 243
  Top = 107
  BorderStyle = bsDialog
  Caption = 'V'#228'lj lager'
  ClientHeight = 152
  ClientWidth = 379
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cmbPhysInv: TcxComboBox
    Left = 88
    Top = 26
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = cmbPhysInvPropertiesChange
    TabOrder = 0
    Width = 233
  end
  object cmbLogicalInv: TcxComboBox
    Left = 88
    Top = 58
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 1
    Width = 233
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 32
    Caption = 'Lagerst'#228'lle:'
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 64
    Caption = 'Lagergrupp:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 111
    Width = 379
    Height = 41
    Align = alBottom
    TabOrder = 4
    object BitBtn1: TBitBtn
      Left = 112
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
end
