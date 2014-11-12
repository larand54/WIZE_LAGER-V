object frmLanguage: TfrmLanguage
  Left = 270
  Top = 126
  Width = 350
  Height = 493
  ActiveControl = grdLang
  Caption = 'Spr'#229'k'
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
    Top = 415
    Width = 342
    Height = 51
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 88
      Top = 13
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 184
      Top = 13
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object grdLang: TcxGrid
    Left = 0
    Top = 0
    Width = 342
    Height = 415
    Align = alClient
    TabOrder = 1
    object grdLangDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmModule1.ds_Language
      DataController.KeyFieldNames = 'LanguageNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdLangDBTableView1LanguageName: TcxGridDBColumn
        DataBinding.FieldName = 'LanguageName'
      end
    end
    object grdLangLevel1: TcxGridLevel
      GridView = grdLangDBTableView1
    end
  end
end
