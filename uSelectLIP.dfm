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
      'ListField'
      'AutoIncFields'
      'CaseInsFields'
      'CatalogName'
      'Categories'
      'ClassName'
      'CommandText'
      'ConnectionName'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'DisplayChecked'
      'DisplayUnchecked'
      'EditFormat'
      'Expression'
      'FetchRowSQL'
      'Fields'
      'Filter'
      'FmtDisplayDate'
      'FmtDisplayDateTime'
      'FmtDisplayNumeric'
      'FmtDisplayTime'
      'FmtEditNumeric'
      'GeneratorName'
      'GraphicClassName'
      'HotZoneClassName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'KeyFieldNames'
      'ListFieldNames'
      'LockSQL'
      'Origin'
      'PackageName'
      'Params'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'PopupMenuLinks'
      'PropertiesClassName'
      'RegistryPath'
      'SchemaName'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'DataSetName'
      'IniFile'
      'ProviderName'
      'ScriptLanguage'
      'ScriptText')
    Left = 152
    Top = 104
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074004C00490050000100
      5600E4006C006A0020006C00610067006500720020002600200069006E007600
      65006E0074006500720069006E00670073007400790070000100010001000D00
      0A00420069007400420074006E00310001004F004B000100010001000D000A00
      420069007400420074006E0032000100430061006E00630065006C0001000100
      01000D000A00630078004C006100620065006C00310001004C00610067006500
      720073007400E4006C006C0065003A000100010001000D000A00630078004C00
      6100620065006C00320001004C00610067006500720067007200750070007000
      3A000100010001000D000A00630078004C006100620065006C00360001004900
      6E00760065006E0074006500720069006E00670073007400790070003A000100
      010001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      6600530065006C006500630074004C004900500001004D005300200053006100
      6E00730020005300650072006900660001004D0053002000530061006E007300
      20005300650072006900660001005400610068006F006D0061000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A0054006600530065006C00
      6500630074004C00490050000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00}
  end
end
