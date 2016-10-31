object fSelectImp: TfSelectImp
  Left = 0
  Top = 0
  Caption = 'V'#228'lj impregnering'
  ClientHeight = 305
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 16
  object cxLabel4: TcxLabel
    Left = 91
    Top = 54
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Impregnering:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -22
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxButton1: TcxButton
    Left = 241
    Top = 232
    Width = 98
    Height = 49
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lcImp: TcxDBLookupComboBox
    Left = 241
    Top = 53
    DataBinding.DataField = 'IMP'
    DataBinding.DataSource = ds_KilnVagn
    ParentFont = False
    Properties.KeyFieldNames = 'ProductCategoryNo'
    Properties.ListColumns = <
      item
        FieldName = 'ProductCategoryName'
      end>
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -22
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 248
  end
  object ds_KilnVagn: TDataSource
    DataSet = dmInventory.cds_KilnVagn
    Left = 280
    Top = 165
  end
end
