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
    NumOfLanguages = 2
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Swedish'
      'English')
    Language = 'English'
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
      65007200010001000D000A006200620049006E00730065007200740001004C00
      E400670067002000740069006C006C002000720061006400010001000D000A00
      62006200520065006D006F0076006500010054006100200062006F0072007400
      2000720061006400010001000D000A0062006200430061006E00630065006C00
      52006F0077000100C5006E006700720061002000720061006400010001000D00
      0A00620062004100700070006C0079004300680061006E006700650073000100
      530070006100720061002000E4006E006400720069006E006700610072000100
      01000D000A0062006200430061006E00630065006C004300680061006E006700
      650073000100C5006E006700720061002000E4006E006400720069006E006700
      61007200010001000D000A006700720064004200610073004D00500044004200
      5400610062006C0065005600690065007700310052006500670050006F006900
      6E0074004E006F00010052006500670050006F0069006E0074004E006F000100
      01000D000A006700720064004200610073004D00500044004200540061006200
      6C0065005600690065007700310052006500670050006F0069006E0074004E00
      61006D00650001004D00E4007400700075006E006B007400010001000D000A00
      6700720064004200610073004D005000440042005400610062006C0065005600
      6900650077003100430072006500610074006500640055007300650072000100
      43007200650061007400650064005500730065007200010001000D000A006700
      720064004200610073004D005000440042005400610062006C00650056006900
      6500770031004D006F0064006900660069006500640055007300650072000100
      4D006F006400690066006900650064005500730065007200010001000D000A00
      6700720064004200610073004D005000440042005400610062006C0065005600
      6900650077003100440061007400650043007200650061007400650064000100
      44006100740065004300720065006100740065006400010001000D000A006700
      720064004200610073004D005000440042005400610062006C00650056006900
      650077003100530065007100750065006E00630065004E006F00010050007200
      6F006400750063006500720061006E006400650020004D005000010001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660042006100
      73004D0061007400500075006E006B0074006500720001004D00530020005300
      61006E007300200053006500720069006600010001000D000A00730074004D00
      75006C00740069004C0069006E00650073005F0055006E00690063006F006400
      65000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00730074004F007400680065007200530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A0073007400430068006100720053006500740073005F00
      55006E00690063006F00640065000D000A00540066004200610073004D006100
      7400500075006E006B007400650072000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A00}
  end
end
