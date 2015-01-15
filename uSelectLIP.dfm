object fSelectLIP: TfSelectLIP
  Left = 260
  Top = 237
  ActiveControl = lcLAGERSTALLE
  Caption = 'V'#228'lj lager & inventeringstyp'
  ClientHeight = 205
  ClientWidth = 314
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lcLAGERSTALLE: TcxDBLookupComboBox
    Left = 120
    Top = 48
    DataBinding.DataField = 'LAGERST'#196'LLE'
    DataBinding.DataSource = dmLoadPlan.ds_PigHdr
    Properties.ImmediatePost = True
    Properties.ListColumns = <>
    Properties.OnCloseUp = lcLAGERSTALLEPropertiesCloseUp
    Properties.OnInitPopup = lcLAGERSTALLEPropertiesInitPopup
    TabOrder = 0
    Width = 145
  end
  object lcLAGERGRUPP: TcxDBLookupComboBox
    Left = 120
    Top = 88
    DataBinding.DataField = 'LAGERGRUPP'
    DataBinding.DataSource = dmLoadPlan.ds_PigHdr
    Properties.ImmediatePost = True
    Properties.ListColumns = <>
    Properties.OnCloseUp = lcLAGERGRUPPPropertiesCloseUp
    Properties.OnInitPopup = lcLAGERGRUPPPropertiesInitPopup
    TabOrder = 1
    Width = 145
  end
  object Panel1: TPanel
    Left = 0
    Top = 158
    Width = 314
    Height = 47
    Align = alBottom
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object cxLabel1: TcxLabel
    Left = 40
    Top = 53
    Caption = 'Lagerst'#228'lle:'
  end
  object cxLabel2: TcxLabel
    Left = 40
    Top = 93
    Caption = 'Lagergrupp:'
  end
  object lcInventeringstyp: TcxDBLookupComboBox
    Left = 121
    Top = 128
    DataBinding.DataField = 'Inventeringstyp'
    DataBinding.DataSource = dmLoadPlan.ds_PigHdr
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    TabOrder = 2
    Width = 145
  end
  object cxLabel6: TcxLabel
    Left = 40
    Top = 133
    Caption = 'Inventeringstyp:'
  end
  object siLangLinked_fSelectLIP: TsiLangLinked
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
    Left = 152
    Top = 104
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
