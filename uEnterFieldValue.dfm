object fEnterFieldValue: TfEnterFieldValue
  Left = 0
  Top = 0
  ActiveControl = teFieldValue
  Caption = 'Ange v'#228'rde'
  ClientHeight = 306
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 232
    Width = 643
    Height = 74
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 192
      Top = 16
      Width = 113
      Height = 49
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 311
      Top = 16
      Width = 113
      Height = 49
      Caption = #197'ngra'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object cxLabelFieldRubrik: TcxLabel
    Left = 85
    Top = 92
    Caption = 'Korta stopp (minuter):'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -17
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object teFieldValue: TcxTextEdit
    Left = 290
    Top = 91
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -17
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 121
  end
end
