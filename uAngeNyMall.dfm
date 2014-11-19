object fAngeNyMall: TfAngeNyMall
  Left = 0
  Top = 0
  ActiveControl = teMall
  Caption = 'Ny mall'
  ClientHeight = 246
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object teMall: TcxTextEdit
    Left = 176
    Top = 111
    TabOrder = 0
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 128
    Top = 112
    Caption = 'Mall:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 181
    Width = 480
    Height = 65
    Align = alBottom
    TabOrder = 2
    object cxButton1: TcxButton
      Left = 128
      Top = 16
      Width = 97
      Height = 41
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 248
      Top = 16
      Width = 89
      Height = 41
      Caption = #197'ngra'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
