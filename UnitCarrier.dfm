object FormCarrier: TFormCarrier
  Left = 302
  Top = 100
  ActiveControl = grdCarrier
  Caption = 'Fartyg'
  ClientHeight = 502
  ClientWidth = 341
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
  object Panel1: TPanel
    Left = 0
    Top = 447
    Width = 341
    Height = 55
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 458
    ExplicitWidth = 349
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 341
    Height = 46
    Align = dalTop
    BarManager = dxBarManager1
  end
  object grdCarrier: TcxGrid
    Left = 0
    Top = 46
    Width = 341
    Height = 401
    Align = alClient
    TabOrder = 6
    ExplicitTop = 44
    ExplicitWidth = 349
    ExplicitHeight = 414
    object grdCarrierDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dm_Booking.dsCarrier
      DataController.KeyFieldNames = 'CarrierNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdCarrierDBTableView1CarrierName: TcxGridDBColumn
        Caption = 'FARTYG'
        DataBinding.FieldName = 'CarrierName'
      end
    end
    object grdCarrierLevel1: TcxGridLevel
      GridView = grdCarrierDBTableView1
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 288
    Top = 88
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 341
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'St'#228'ng'
      Category = 0
      Hint = 'St'#228'ng'
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Spara'
      Category = 0
      Hint = 'Spara'
      Visible = ivAlways
      OnClick = dxBarLargeButton2Click
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'L'#228'gg till'
      Category = 0
      Hint = 'L'#228'gg till'
      Visible = ivAlways
      OnClick = dxBarLargeButton3Click
    end
  end
end
