object OKHelpBottomDlg: TOKHelpBottomDlg
  Left = 335
  Top = 193
  ActiveControl = EFD_Name
  Caption = 'Byt anv'#228'ndare'
  ClientHeight = 249
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 34
    Top = 30
    Width = 49
    Height = 13
    Caption = 'AD Namn:'
  end
  object Label2: TLabel
    Left = 32
    Top = 80
    Width = 43
    Height = 13
    Caption = 'Databas:'
  end
  object Label3: TLabel
    Left = 24
    Top = 8
    Width = 46
    Height = 13
    Caption = 'vida\krinil'
    OnDblClick = Label3DblClick
  end
  object Label4: TLabel
    Left = 153
    Top = 8
    Width = 50
    Height = 13
    Caption = 'vida\ulrlun'
    OnDblClick = Label4DblClick
  end
  object Label5: TLabel
    Left = 209
    Top = 8
    Width = 58
    Height = 13
    Caption = 'vida\ronand'
    OnDblClick = Label5DblClick
  end
  object Label6: TLabel
    Left = 88
    Top = 8
    Width = 59
    Height = 13
    Caption = 'vida\manras'
    OnDblClick = Label6DblClick
  end
  object Label7: TLabel
    Left = 281
    Top = 8
    Width = 53
    Height = 13
    Caption = 'vida\shathi'
    OnDblClick = Label7DblClick
  end
  object Label8: TLabel
    Left = 340
    Top = 8
    Width = 47
    Height = 13
    Caption = 'vida\uklift'
    OnDblClick = Label8DblClick
  end
  object EFD_Name: TEdit
    Left = 89
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 216
    Top = 29
    Width = 153
    Height = 34
    Caption = 'H'#228'mta standard AD namn'
    TabOrder = 2
    OnClick = Button1Click
  end
  object eDatabas: TEdit
    Left = 82
    Top = 191
    Width = 121
    Height = 21
    TabOrder = 1
    Visible = False
  end
  object Button2: TButton
    Left = 216
    Top = 69
    Width = 153
    Height = 36
    Caption = 'H'#228'mta standard databas'
    TabOrder = 3
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 88
    Top = 144
    Width = 115
    Height = 41
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 209
    Top = 144
    Width = 113
    Height = 41
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
  end
  object cbDatabas: TComboBox
    Left = 88
    Top = 76
    Width = 122
    Height = 21
    TabOrder = 6
    Items.Strings = (
      'vis.vida.se:vis_vida'
      'ALVESQLTEST01:vis_vida'
      'ALVESQL03:vis_vida')
  end
  object siLangLinked_OKHelpBottomDlg: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    UseDefaultLanguage = True
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
    Left = 280
    Top = 208
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054004F004B00480065006C00700042006F00740074006F00
      6D0044006C0067000100420079007400200061006E007600E4006E0064006100
      720065000100010001000D000A004C006100620065006C003100010046004400
      20004E0061006D006E003A000100010001000D000A004C006100620065006C00
      3200010044006100740061006200610073003A000100010001000D000A004200
      7500740074006F006E00310001004800E4006D00740061002000730074006100
      6E00640061007200640020004600440020006E0061006D006E00010001000100
      0D000A0042007500740074006F006E00320001004800E4006D00740061002000
      7300740061006E00640061007200640020006400610074006100620061007300
      0100010001000D000A00420069007400420074006E00310001004F004B000100
      010001000D000A00420069007400420074006E0032000100430061006E006300
      65006C000100010001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A0054004F004B00480065006C00700042006F00740074006F006D004400
      6C00670001004D0053002000530061006E007300200053006500720069006600
      01004D0053002000530061006E00730020005300650072006900660001005400
      610068006F006D0061000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      730074004F00740068006500720053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A0054004F004B00480065006C00700042006F00740074006F006D00
      44006C0067000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00}
  end
end
