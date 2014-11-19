object fEntryField: TfEntryField
  Left = 303
  Top = 226
  ActiveControl = seAntalPaket
  Caption = 'Ange antal paket'
  ClientHeight = 218
  ClientWidth = 755
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
  object LTitle: TLabel
    Left = 168
    Top = 64
    Width = 85
    Height = 20
    Caption = 'Antal paket:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object bbok: TBitBtn
    Left = 232
    Top = 184
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object bbcancel: TBitBtn
    Left = 320
    Top = 184
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object seAntalPaket: TcxSpinEdit
    Left = 264
    Top = 56
    ParentFont = False
    Properties.LargeIncrement = 5.000000000000000000
    Properties.MaxValue = 100.000000000000000000
    Properties.SpinButtons.ShowFastButtons = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Width = 129
  end
  object LExtraInfo: TcxLabel
    Left = 32
    Top = 16
  end
  object PanelLength: TPanel
    Left = 544
    Top = 0
    Width = 211
    Height = 218
    Align = alRight
    TabOrder = 4
    Visible = False
    object grdOtherLengths: TcxGrid
      Left = 1
      Top = 65
      Width = 209
      Height = 152
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 163
      object grdOtherLengthsDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dmInventory.ds_OtherLengths
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'PKT'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdOtherLengthsDBTableView1ALMM: TcxGridDBColumn
          DataBinding.FieldName = 'ALMM'
          SortIndex = 0
          SortOrder = soAscending
          Width = 94
        end
        object grdOtherLengthsDBTableView1AntalLngder: TcxGridDBColumn
          DataBinding.FieldName = 'AntalL'#228'ngder'
          Width = 114
        end
      end
      object grdOtherLengthsLevel1: TcxGridLevel
        GridView = grdOtherLengthsDBTableView1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 209
      Height = 64
      Align = alTop
      TabOrder = 1
      object cxLabel1: TcxLabel
        Left = 16
        Top = 24
        AutoSize = False
        Caption = 'V'#228'lj en l'#228'ngd, paket med flera l'#228'ngder kan ej v'#228'ljas'
        Properties.WordWrap = True
        Height = 30
        Width = 131
      end
    end
  end
end
