object FormDestination: TFormDestination
  Left = 309
  Top = 125
  Width = 372
  Height = 471
  ActiveControl = grdOrt
  Caption = 'ORT'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 399
    Width = 364
    Height = 45
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 80
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 184
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object grdOrt: TcxGrid
    Left = 0
    Top = 0
    Width = 364
    Height = 399
    Align = alClient
    TabOrder = 1
    object grdOrtDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmModule1.dsDestination
      DataController.KeyFieldNames = 'CityNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdOrtDBTableView1CityName: TcxGridDBColumn
        Caption = 'ORT'
        DataBinding.FieldName = 'CityName'
      end
    end
    object grdOrtLevel1: TcxGridLevel
      GridView = grdOrtDBTableView1
    end
  end
end
