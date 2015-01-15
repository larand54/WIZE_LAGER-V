object fSelectInventorySET: TfSelectInventorySET
  Left = 0
  Top = 0
  Caption = 'Inventeringsgrupper'
  ClientHeight = 443
  ClientWidth = 1032
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 376
    Width = 1032
    Height = 67
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 472
      Top = 6
      Width = 113
      Height = 51
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1032
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 1032
    Height = 335
    Align = alClient
    TabOrder = 2
    object grInventorySet: TcxGrid
      Left = 1
      Top = 1
      Width = 1030
      Height = 333
      Align = alClient
      TabOrder = 0
      object grInventorySetDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmInvCtrl.ds_InvCtrlSetList
        DataController.KeyFieldNames = 'IC_SETNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grInventorySetDBTableView1IC_SETNo: TcxGridDBColumn
          DataBinding.FieldName = 'IC_SETNo'
          Width = 60
        end
        object grInventorySetDBTableView1DateCreated: TcxGridDBColumn
          DataBinding.FieldName = 'DateCreated'
          Width = 136
        end
        object grInventorySetDBTableView1CreatedUser: TcxGridDBColumn
          DataBinding.FieldName = 'CreatedUser'
          Width = 66
        end
        object grInventorySetDBTableView1Note: TcxGridDBColumn
          DataBinding.FieldName = 'Note'
          Width = 173
        end
        object grInventorySetDBTableView1MaxDatum: TcxGridDBColumn
          DataBinding.FieldName = 'MaxDatum'
          Width = 176
        end
        object grInventorySetDBTableView1StartFilterOnMaxDate: TcxGridDBColumn
          DataBinding.FieldName = 'StartFilterOnMaxDate'
          Width = 175
        end
        object grInventorySetDBTableView1EndFilterOnMaxDate: TcxGridDBColumn
          DataBinding.FieldName = 'EndFilterOnMaxDate'
          Width = 175
        end
        object grInventorySetDBTableView1SetStatus: TcxGridDBColumn
          DataBinding.FieldName = 'SetStatus'
          Width = 55
        end
      end
      object grInventorySetLevel1: TcxGridLevel
        GridView = grInventorySetDBTableView1
      end
    end
  end
  object siLangLinked_fSelectInventorySET: TsiLangLinked
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
    Left = 512
    Top = 224
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
