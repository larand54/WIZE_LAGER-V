object StrInputForm: TStrInputForm
  Left = 0
  Top = 0
  Caption = 'StrInputForm'
  ClientHeight = 293
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 80
    Top = 96
    Width = 6
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object MaskEdit1: TMaskEdit
    Left = 72
    Top = 171
    Width = 105
    Height = 29
    AutoSelect = False
    BorderStyle = bsNone
    EditMask = '## ### ###;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
    Text = '00 000 000'
    OnKeyDown = MaskEdit1KeyDown
  end
  object MaskEdit2: TMaskEdit
    Left = 183
    Top = 171
    Width = 194
    Height = 30
    AutoSelect = False
    BorderStyle = bsNone
    EditMask = '### ### ### ### ###;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 19
    ParentFont = False
    TabOrder = 1
    Text = '000 000 000 000 000'
    OnKeyDown = MaskEdit2KeyDown
  end
  object MaskEdit3: TMaskEdit
    Left = 383
    Top = 171
    Width = 119
    Height = 29
    AutoSelect = False
    BorderStyle = bsNone
    EditMask = '### ### ###;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 11
    ParentFont = False
    TabOrder = 2
    Text = '000 000 000'
    OnKeyDown = MaskEdit3KeyDown
  end
end
