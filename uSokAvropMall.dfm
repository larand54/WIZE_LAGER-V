object fSokAvropMall: TfSokAvropMall
  Left = 229
  Top = 107
  Caption = 'Mallar'
  ClientHeight = 298
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 257
    Width = 513
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 152
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 513
    Height = 41
    Align = alTop
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Action = acNew
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 104
      Top = 8
      Width = 75
      Height = 25
      Action = acDelete
      TabOrder = 1
    end
  end
  object grdMall: TcxGrid
    Left = 0
    Top = 41
    Width = 513
    Height = 216
    Align = alClient
    TabOrder = 2
    object grdMallDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_Props
      DataController.KeyFieldNames = 'UserID;Form'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdMallDBTableView1Form: TcxGridDBColumn
        Caption = 'Mall'
        DataBinding.FieldName = 'Form'
        Width = 167
      end
      object grdMallDBTableView1UserID: TcxGridDBColumn
        DataBinding.FieldName = 'UserID'
        Visible = False
        VisibleForCustomization = False
        Width = 101
      end
      object grdMallDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
        Visible = False
        VisibleForCustomization = False
        Width = 165
      end
      object grdMallDBTableView1LOObjectType: TcxGridDBColumn
        DataBinding.FieldName = 'LOObjectType'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 86
      end
    end
    object grdMallLevel1: TcxGridLevel
      GridView = grdMallDBTableView1
    end
  end
  object ActionList1: TActionList
    Left = 328
    Top = 112
    object acNew: TAction
      Caption = 'Ny'
      OnExecute = acNewExecute
    end
    object acSave: TAction
      Caption = 'Spara'
    end
    object acDelete: TAction
      Caption = 'Ta bort'
      OnExecute = acDeleteExecute
    end
  end
  object ds_Props: TDataSource
    DataSet = dmInventory.cds_Props
    Left = 152
    Top = 112
  end
  object siLangLinked_fSokAvropMall: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Swedish'
      'English')
    Language = 'Swedish'
    CommonContainer = dmLanguage.siLang1
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField')
    Left = 248
    Top = 152
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00}
  end
end
