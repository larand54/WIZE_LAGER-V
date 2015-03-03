object fBasMatPunkter: TfBasMatPunkter
  Left = 359
  Top = 105
  Caption = 'Bas m'#228'tpunkter'
  ClientHeight = 473
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 345
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bbInsert: TBitBtn
      Left = 24
      Top = 16
      Width = 89
      Height = 25
      Caption = 'L'#228'gg till rad'
      TabOrder = 0
      OnClick = bbInsertClick
    end
    object bbRemove: TBitBtn
      Left = 128
      Top = 16
      Width = 89
      Height = 25
      Caption = 'Ta bort rad'
      TabOrder = 1
      OnClick = bbRemoveClick
    end
    object bbCancelRow: TBitBtn
      Left = 232
      Top = 16
      Width = 75
      Height = 25
      Caption = #197'ngra rad'
      TabOrder = 2
      OnClick = bbCancelRowClick
    end
    object bbApplyChanges: TBitBtn
      Left = 24
      Top = 48
      Width = 91
      Height = 25
      Caption = 'Spara '#228'ndringar'
      TabOrder = 3
      OnClick = bbApplyChangesClick
    end
    object bbCancelChanges: TBitBtn
      Left = 128
      Top = 48
      Width = 89
      Height = 25
      Caption = #197'ngra '#228'ndringar'
      TabOrder = 4
      OnClick = bbCancelChangesClick
    end
  end
  object grdBasMP: TcxGrid
    Left = 0
    Top = 81
    Width = 345
    Height = 392
    Align = alClient
    TabOrder = 1
    object grdBasMPDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsContact.ds_RegPoints
      DataController.KeyFieldNames = 'RegPointNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdBasMPDBTableView1RegPointNo: TcxGridDBColumn
        DataBinding.FieldName = 'RegPointNo'
        Visible = False
      end
      object grdBasMPDBTableView1RegPointName: TcxGridDBColumn
        Caption = 'M'#228'tpunkt'
        DataBinding.FieldName = 'RegPointName'
      end
      object grdBasMPDBTableView1CreatedUser: TcxGridDBColumn
        DataBinding.FieldName = 'CreatedUser'
        Visible = False
      end
      object grdBasMPDBTableView1ModifiedUser: TcxGridDBColumn
        DataBinding.FieldName = 'ModifiedUser'
        Visible = False
      end
      object grdBasMPDBTableView1DateCreated: TcxGridDBColumn
        DataBinding.FieldName = 'DateCreated'
        Visible = False
      end
      object grdBasMPDBTableView1SequenceNo: TcxGridDBColumn
        Caption = 'Producerande MP'
        DataBinding.FieldName = 'SequenceNo'
      end
    end
    object grdBasMPLevel1: TcxGridLevel
      GridView = grdBasMPDBTableView1
    end
  end
  object siLangLinked_fBasMatPunkter: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    DefaultLanguage = 2
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
    Language = 'Origin'
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
    Left = 168
    Top = 240
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004200610073004D0061007400500075006E006B00
      740065007200010042006100730020006D00E4007400700075006E006B007400
      650072000100010001000D000A006200620049006E0073006500720074000100
      4C00E400670067002000740069006C006C002000720061006400010001000100
      0D000A0062006200520065006D006F0076006500010054006100200062006F00
      7200740020007200610064000100010001000D000A0062006200430061006E00
      630065006C0052006F0077000100C5006E006700720061002000720061006400
      0100010001000D000A00620062004100700070006C0079004300680061006E00
      6700650073000100530070006100720061002000E4006E006400720069006E00
      6700610072000100010001000D000A0062006200430061006E00630065006C00
      4300680061006E006700650073000100C5006E006700720061002000E4006E00
      6400720069006E006700610072000100010001000D000A006700720064004200
      610073004D005000440042005400610062006C00650056006900650077003100
      52006500670050006F0069006E0074004E006F00010052006500670050006F00
      69006E0074004E006F000100010001000D000A00670072006400420061007300
      4D005000440042005400610062006C0065005600690065007700310052006500
      670050006F0069006E0074004E0061006D00650001004D00E400740070007500
      6E006B0074000100010001000D000A006700720064004200610073004D005000
      440042005400610062006C006500560069006500770031004300720065006100
      7400650064005500730065007200010043007200650061007400650064005500
      7300650072000100010001000D000A006700720064004200610073004D005000
      440042005400610062006C006500560069006500770031004D006F0064006900
      6600690065006400550073006500720001004D006F0064006900660069006500
      640055007300650072000100010001000D000A00670072006400420061007300
      4D005000440042005400610062006C0065005600690065007700310044006100
      7400650043007200650061007400650064000100440061007400650043007200
      650061007400650064000100010001000D000A00670072006400420061007300
      4D005000440042005400610062006C0065005600690065007700310053006500
      7100750065006E00630065004E006F000100500072006F006400750063006500
      720061006E006400650020004D0050000100010001000D000A00730074004800
      69006E00740073005F0055006E00690063006F00640065000D000A0073007400
      44006900730070006C00610079004C006100620065006C0073005F0055006E00
      690063006F00640065000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A00540066004200610073004D0061007400
      500075006E006B0074006500720001004D0053002000530061006E0073002000
      5300650072006900660001004D0053002000530061006E007300200053006500
      72006900660001005400610068006F006D0061000D000A00730074004D007500
      6C00740069004C0069006E00650073005F0055006E00690063006F0064006500
      0D000A007300740053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A00730074004F0074006800650072005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004300
      6F006C006C0065006300740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400430068006100720053006500740073005F005500
      6E00690063006F00640065000D000A00540066004200610073004D0061007400
      500075006E006B007400650072000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A00}
  end
end
