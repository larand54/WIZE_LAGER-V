object fKilnWizard: TfKilnWizard
  Left = 229
  Top = 107
  Caption = 'Ny Torksats'
  ClientHeight = 178
  ClientWidth = 356
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel20: TcxLabel
    Left = 53
    Top = 14
    Caption = 'Tork:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object deStartTime: TcxDBDateEdit
    Left = 129
    Top = 36
    DataBinding.DataField = 'StartTime'
    DataBinding.DataSource = dm_DryKiln.ds_KilnChargeHdr
    Properties.Kind = ckDateTime
    TabOrder = 1
    Width = 152
  end
  object cxLabel17: TcxLabel
    Left = 53
    Top = 40
    Caption = 'Starttid:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxLabel19: TcxLabel
    Left = 53
    Top = 64
    Caption = 'Plan.tid(tim):'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object mePlannedDuration: TcxDBMaskEdit
    Left = 129
    Top = 60
    DataBinding.DataField = 'PlannedDuration'
    DataBinding.DataSource = dm_DryKiln.ds_KilnChargeHdr
    TabOrder = 2
    Width = 152
  end
  object cxLabel22: TcxLabel
    Left = 53
    Top = 94
    Caption = 'Status:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object icStatus: TcxDBImageComboBox
    Left = 129
    Top = 90
    DataBinding.DataField = 'Status'
    DataBinding.DataSource = dm_DryKiln.ds_KilnChargeHdr
    Properties.Items = <
      item
        Description = 'Aktiv'
        ImageIndex = 0
        Value = 0
      end
      item
        Description = 'Avslutad'
        Value = 1
      end>
    TabOrder = 3
    Width = 152
  end
  object lcTork: TcxDBLookupComboBox
    Left = 129
    Top = 10
    DataBinding.DataField = 'Tork'
    DataBinding.DataSource = dm_DryKiln.ds_KilnChargeHdr
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    TabOrder = 0
    Width = 152
  end
  object Panel1: TPanel
    Left = 0
    Top = 137
    Width = 356
    Height = 41
    Align = alBottom
    TabOrder = 7
    object BitBtn1: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 176
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
end
