object frmChangeLanguage: TfrmChangeLanguage
  Left = 0
  Top = 0
  Caption = 'V'#228'lj spr'#229'k'
  ClientHeight = 126
  ClientWidth = 261
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblcboLang: TLabel
    Left = 24
    Top = 21
    Width = 47
    Height = 13
    Caption = 'V'#228'lj Spr'#229'k'
  end
  object cboSelectLanguage: TComboBox
    Left = 24
    Top = 40
    Width = 203
    Height = 21
    TabOrder = 0
    Text = 'V'#228'lj spr'#229'k'
  end
  object bbtnOk: TBitBtn
    Left = 24
    Top = 80
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = bbtnOkClick
  end
  object bbtnCancel: TBitBtn
    Left = 152
    Top = 80
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
    OnClick = bbtnCancelClick
  end
  object siLangLinked1: TsiLangLinked
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
    Left = 116
    Top = 65535
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D004300680061006E00670065004C006100
      6E006700750061006700650001005600E4006C006A002000730070007200E500
      6B0001005600E4006C006A002000730070007200E5006B0001000D000A006C00
      62006C00630062006F004C0061006E00670001005600E4006C006A0020005300
      70007200E5006B00010001000D000A006200620074006E004F006B0001004F00
      4B00010001000D000A006200620074006E00430061006E00630065006C000100
      430061006E00630065006C00010001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A005400660072006D004300680061006E00670065004C00
      61006E006700750061006700650001005400610068006F006D00610001005400
      610068006F006D00610001000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A00630062006F00530065006C006500
      630074004C0061006E00670075006100670065002E0054006500780074000100
      5600E4006C006A002000730070007200E5006B00010001000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A0073007400430068006100720053006500740073005F00
      55006E00690063006F00640065000D000A005400660072006D00430068006100
      6E00670065004C0061006E006700750061006700650001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A00}
  end
end
