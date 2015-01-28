object fAngeNyMall: TfAngeNyMall
  Left = 0
  Top = 0
  ActiveControl = teMall
  Caption = 'Ny mall'
  ClientHeight = 246
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object teMall: TcxTextEdit
    Left = 176
    Top = 111
    TabOrder = 0
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 128
    Top = 112
    Caption = 'Mall:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 181
    Width = 480
    Height = 65
    Align = alBottom
    TabOrder = 2
    object cxButton1: TcxButton
      Left = 128
      Top = 16
      Width = 97
      Height = 41
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 248
      Top = 16
      Width = 89
      Height = 41
      Caption = #197'ngra'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object siLangLinked_fAngeNyMall: TsiLangLinked
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
    Left = 232
    Top = 128
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660041006E00670065004E0079004D0061006C006C00
      01004E00790020006D0061006C006C00010001000D000A00630078004C006100
      620065006C00310001004D0061006C006C003A00010001000D000A0063007800
      42007500740074006F006E00310001004F004B00010001000D000A0063007800
      42007500740074006F006E0032000100C5006E00670072006100010001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660041006E00
      670065004E0079004D0061006C006C0001005400610068006F006D0061000100
      01000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      660041006E00670065004E0079004D0061006C006C0001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A00}
  end
end
