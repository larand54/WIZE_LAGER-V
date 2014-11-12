object fPriceListInventory: TfPriceListInventory
  Left = 229
  Top = 107
  Width = 965
  Height = 623
  Caption = 'fPriceListInventory'
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
    Top = 0
    Width = 957
    Height = 65
    Align = alTop
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 465
      Height = 63
      Align = alLeft
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 859
      Top = 1
      Width = 97
      Height = 63
      Align = alRight
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 466
      Top = 1
      Width = 393
      Height = 63
      Align = alClient
      TabOrder = 2
    end
  end
  object grdPriceListInv: TcxGrid
    Left = 0
    Top = 65
    Width = 957
    Height = 531
    Align = alClient
    TabOrder = 1
    object grdPriceListInvDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object grdPriceListInvLevel1: TcxGridLevel
      GridView = grdPriceListInvDBTableView1
    end
  end
end
