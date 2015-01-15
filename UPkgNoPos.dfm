object fPkgNoPos: TfPkgNoPos
  Left = 270
  Top = 246
  Caption = 'fPkgNoPos'
  ClientHeight = 301
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 72
    Width = 81
    Height = 13
    Caption = 'PaketNr position:'
  end
  object Label2: TLabel
    Left = 32
    Top = 104
    Width = 120
    Height = 13
    Caption = 'Antal positioner i Paketnr:'
  end
  object Label3: TLabel
    Left = 32
    Top = 128
    Width = 116
    Height = 13
    Caption = 'Leverant'#246'rskod position:'
  end
  object Label4: TLabel
    Left = 32
    Top = 152
    Width = 153
    Height = 13
    Caption = 'Antal positioner i leverant'#246'rskod:'
  end
  object Bevel1: TBevel
    Left = 24
    Top = 40
    Width = 305
    Height = 153
  end
  object BitBtn1: TBitBtn
    Left = 88
    Top = 232
    Width = 89
    Height = 33
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
  end
  object ePktnrPos: TEdit
    Left = 208
    Top = 64
    Width = 73
    Height = 21
    TabOrder = 1
  end
  object eAntPosPktNr: TEdit
    Left = 208
    Top = 96
    Width = 73
    Height = 21
    TabOrder = 2
  end
  object eLevKodPos: TEdit
    Left = 208
    Top = 120
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object eAntPosLevKod: TEdit
    Left = 208
    Top = 144
    Width = 73
    Height = 21
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 192
    Top = 232
    Width = 89
    Height = 33
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
  end
  object siLangLinked_fPkgNoPos: TsiLangLinked
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
    Left = 168
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
