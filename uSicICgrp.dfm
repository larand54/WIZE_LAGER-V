object fSicICgrp: TfSicICgrp
  Left = 302
  Top = 100
  ActiveControl = grdSicICgrps
  Caption = 'Inventeringar inkluderade i sammanst'#228'llning'
  ClientHeight = 502
  ClientWidth = 702
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
    Width = 702
    Height = 55
    Align = alBottom
    TabOrder = 0
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 702
    Height = 42
    Align = dalTop
    BarManager = dxBarManager1
  end
  object grdSicICgrps: TcxGrid
    Left = 0
    Top = 42
    Width = 702
    Height = 405
    Align = alClient
    TabOrder = 6
    object grdSicICgrpsDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmInvCtrl.ds_Sic_IC_grp
      DataController.KeyFieldNames = 'IC_grpno;Sic_No'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdSicICgrpsDBTableView1Sic_No: TcxGridDBColumn
        DataBinding.FieldName = 'Sic_No'
      end
      object grdSicICgrpsDBTableView1IC_grpno: TcxGridDBColumn
        DataBinding.FieldName = 'IC_grpno'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object grdSicICgrpsDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'IC_grpno'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.DropDownWidth = 370
        Properties.KeyFieldNames = 'INVENTERINGSNR'
        Properties.ListColumns = <
          item
            FieldName = 'INVENTERINGSNR'
          end
          item
            Width = 110
            FieldName = 'INVENTERINGSDATUM'
          end
          item
            Width = 200
            FieldName = 'NAMN'
          end>
        Properties.ListSource = dmInvCtrl.ds_InvCtrlList
      end
    end
    object grdSicICgrpsLevel1: TcxGridLevel
      GridView = grdSicICgrpsDBTableView1
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
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
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
