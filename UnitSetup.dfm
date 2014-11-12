object FormSetup: TFormSetup
  Left = 270
  Top = 246
  Width = 709
  Height = 307
  Caption = 'S'#246'kv'#228'gar'
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
  object Label3: TLabel
    Left = 32
    Top = 160
    Width = 49
    Height = 13
    Caption = 'Database:'
    Visible = False
  end
  object Label4: TLabel
    Left = 32
    Top = 184
    Width = 51
    Height = 13
    Caption = 'Username:'
    Visible = False
  end
  object Label5: TLabel
    Left = 32
    Top = 208
    Width = 49
    Height = 13
    Caption = 'Password:'
    Visible = False
  end
  object Bevel1: TBevel
    Left = 24
    Top = 48
    Width = 625
    Height = 81
  end
  object Label1: TLabel
    Left = 32
    Top = 72
    Width = 112
    Height = 13
    Caption = 'S'#246'kv'#228'g till crystal report'
  end
  object Label2: TLabel
    Left = 32
    Top = 104
    Width = 137
    Height = 13
    Caption = 'S'#246'kv'#228'g till konfigurationsfiler:'
  end
  object BitBtn1: TBitBtn
    Left = 232
    Top = 224
    Width = 89
    Height = 33
    TabOrder = 0
    Kind = bkOK
  end
  object EditCRFolder: TEdit
    Left = 176
    Top = 64
    Width = 457
    Height = 21
    TabOrder = 1
  end
  object EditIniFiles: TEdit
    Left = 176
    Top = 96
    Width = 457
    Height = 21
    TabOrder = 2
  end
  object EditDatabase: TEdit
    Left = 144
    Top = 152
    Width = 457
    Height = 21
    TabOrder = 3
    Visible = False
  end
  object EditUserName: TEdit
    Left = 144
    Top = 176
    Width = 457
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object EditPassword: TEdit
    Left = 144
    Top = 200
    Width = 457
    Height = 21
    TabOrder = 5
    Visible = False
  end
  object BitBtn2: TBitBtn
    Left = 344
    Top = 224
    Width = 89
    Height = 33
    TabOrder = 6
    Kind = bkCancel
  end
end
