object fPriceListInventory: TfPriceListInventory
  Left = 229
  Top = 107
  Caption = 'fPriceListInventory'
  ClientHeight = 585
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 949
    Height = 65
    Align = alTop
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 465
      Height = 63
      Align = alLeft
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 851
      Top = 1
      Width = 97
      Height = 63
      Align = alRight
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 466
      Top = 1
      Width = 385
      Height = 63
      Align = alClient
      TabOrder = 2
    end
  end
  object grdPriceListInv: TcxGrid
    Left = 0
    Top = 65
    Width = 949
    Height = 520
    Align = alClient
    TabOrder = 1
    object grdPriceListInvDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object grdPriceListInvLevel1: TcxGridLevel
      GridView = grdPriceListInvDBTableView1
    end
  end
  object siLangLinked_fPriceListInventory: TsiLangLinked
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
    Left = 472
    Top = 296
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600500072006900630065004C006900730074004900
      6E00760065006E0074006F007200790001006600500072006900630065004C00
      69007300740049006E00760065006E0074006F0072007900010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A007300740044006900730070006C00610079004C006100620065006C007300
      5F0055006E00690063006F00640065000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A0054006600500072006900
      630065004C0069007300740049006E00760065006E0074006F00720079000100
      4D0053002000530061006E007300200053006500720069006600010001000D00
      0A00730074004D0075006C00740069004C0069006E00650073005F0055006E00
      690063006F00640065000D000A007300740053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A00730074004F00740068006500
      720053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A007300740043006F006C006C0065006300740069006F006E0073005F00
      55006E00690063006F00640065000D000A007300740043006800610072005300
      6500740073005F0055006E00690063006F00640065000D000A00540066005000
      72006900630065004C0069007300740049006E00760065006E0074006F007200
      79000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00}
  end
end
