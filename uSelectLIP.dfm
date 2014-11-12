object fSelectLIP: TfSelectLIP
  Left = 260
  Top = 237
  ActiveControl = lcLAGERSTALLE
  Caption = 'V'#228'lj lager & inventeringstyp'
  ClientHeight = 205
  ClientWidth = 314
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
  object lcLAGERSTALLE: TcxDBLookupComboBox
    Left = 120
    Top = 48
    DataBinding.DataField = 'LAGERST'#196'LLE'
    DataBinding.DataSource = dmLoadPlan.ds_PigHdr
    Properties.ImmediatePost = True
    Properties.ListColumns = <>
    Properties.OnCloseUp = lcLAGERSTALLEPropertiesCloseUp
    Properties.OnInitPopup = lcLAGERSTALLEPropertiesInitPopup
    TabOrder = 0
    Width = 145
  end
  object lcLAGERGRUPP: TcxDBLookupComboBox
    Left = 120
    Top = 88
    DataBinding.DataField = 'LAGERGRUPP'
    DataBinding.DataSource = dmLoadPlan.ds_PigHdr
    Properties.ImmediatePost = True
    Properties.ListColumns = <>
    Properties.OnCloseUp = lcLAGERGRUPPPropertiesCloseUp
    Properties.OnInitPopup = lcLAGERGRUPPPropertiesInitPopup
    TabOrder = 1
    Width = 145
  end
  object Panel1: TPanel
    Left = 0
    Top = 158
    Width = 314
    Height = 47
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 169
    ExplicitWidth = 322
    object BitBtn1: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      DoubleBuffered = True
      Kind = bkOK
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      DoubleBuffered = True
      Kind = bkCancel
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object cxLabel1: TcxLabel
    Left = 40
    Top = 53
    Caption = 'Lagerst'#228'lle:'
  end
  object cxLabel2: TcxLabel
    Left = 40
    Top = 93
    Caption = 'Lagergrupp:'
  end
  object lcInventeringstyp: TcxDBLookupComboBox
    Left = 121
    Top = 128
    DataBinding.DataField = 'Inventeringstyp'
    DataBinding.DataSource = dmLoadPlan.ds_PigHdr
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    TabOrder = 2
    Width = 145
  end
  object cxLabel6: TcxLabel
    Left = 40
    Top = 133
    Caption = 'Inventeringstyp:'
  end
end
