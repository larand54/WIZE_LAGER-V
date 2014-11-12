object FormSelectClient: TFormSelectClient
  Left = 317
  Top = 96
  Width = 518
  Height = 480
  ActiveControl = grdClients
  Caption = 'Klientlista'
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
    Top = 412
    Width = 510
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 264
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object grdClients: TcxGrid
    Left = 0
    Top = 33
    Width = 510
    Height = 379
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    object grdClientsDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmModule1.dsClient
      DataController.KeyFieldNames = 'ClientNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdClientsDBTableView1ClientName: TcxGridDBColumn
        Caption = 'KLIENT'
        DataBinding.FieldName = 'ClientName'
        Options.Editing = False
      end
    end
    object grdClientsLevel1: TcxGridLevel
      GridView = grdClientsDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 510
    Height = 33
    Align = alTop
    Caption = 'Skriv in klienten du s'#246'ker...'
    TabOrder = 2
  end
end
