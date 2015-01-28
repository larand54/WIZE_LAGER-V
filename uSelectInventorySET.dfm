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
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Base'
      'Swedish')
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
      640065000D000A0054006600530065006C0065006300740049006E0076006500
      6E0074006F0072007900530045005400010049006E00760065006E0074006500
      720069006E00670073006700720075007000700065007200010001000D000A00
      6300780042007500740074006F006E00310001004F004B00010001000D000A00
      6700720049006E00760065006E0074006F007200790053006500740044004200
      5400610062006C00650056006900650077003100490043005F00530045005400
      4E006F000100470072007500700070006E007200010001000D000A0067007200
      49006E00760065006E0074006F00720079005300650074004400420054006100
      62006C0065005600690065007700310044006100740065004300720065006100
      740065006400010053006B006100700061006400010001000D000A0067007200
      49006E00760065006E0074006F00720079005300650074004400420054006100
      62006C0065005600690065007700310043007200650061007400650064005500
      7300650072000100430072006500610074006500640055007300650072000100
      01000D000A006700720049006E00760065006E0074006F007200790053006500
      7400440042005400610062006C006500560069006500770031004E006F007400
      650001004E006F0074006500720069006E006700010001000D000A0067007200
      49006E00760065006E0074006F00720079005300650074004400420054006100
      62006C006500560069006500770031004D006100780044006100740075006D00
      01004D006100780044006100740075006D00010001000D000A00670072004900
      6E00760065006E0074006F007200790053006500740044004200540061006200
      6C0065005600690065007700310053007400610072007400460069006C007400
      650072004F006E004D0061007800440061007400650001005300740061007200
      7400660069006C0074006500720020006D006100780064006100740075006D00
      010001000D000A006700720049006E00760065006E0074006F00720079005300
      65007400440042005400610062006C0065005600690065007700310045006E00
      6400460069006C007400650072004F006E004D00610078004400610074006500
      010053006C0075007400660069006C0074006500720020006D00610078006400
      6100740075006D00010001000D000A006700720049006E00760065006E007400
      6F0072007900530065007400440042005400610062006C006500560069006500
      7700310053006500740053007400610074007500730001005300740061007400
      75007300010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      7300740046006F006E00740073005F0055006E00690063006F00640065000D00
      0A0054006600530065006C0065006300740049006E00760065006E0074006F00
      7200790053004500540001005400610068006F006D006100010001000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A007300740053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A00730074004F007400680065007200
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A007300740043006F006C006C0065006300740069006F006E0073005F005500
      6E00690063006F00640065000D000A0073007400430068006100720053006500
      740073005F0055006E00690063006F00640065000D000A005400660053006500
      6C0065006300740049006E00760065006E0074006F0072007900530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00}
  end
end
