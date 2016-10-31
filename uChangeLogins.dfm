object OKHelpBottomDlg: TOKHelpBottomDlg
  Left = 335
  Top = 193
  ActiveControl = EFD_Name
  Caption = 'Byt anv'#228'ndare'
  ClientHeight = 306
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 42
    Top = 37
    Width = 61
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'AD Namn:'
  end
  object Label2: TLabel
    Left = 39
    Top = 98
    Width = 55
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Databas:'
  end
  object Label3: TLabel
    Left = 30
    Top = 10
    Width = 57
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'vida\krinil'
    OnDblClick = Label3DblClick
  end
  object Label4: TLabel
    Left = 188
    Top = 10
    Width = 61
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'vida\ulrlun'
    OnDblClick = Label4DblClick
  end
  object Label5: TLabel
    Left = 257
    Top = 10
    Width = 72
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'vida\ronand'
    OnDblClick = Label5DblClick
  end
  object Label6: TLabel
    Left = 108
    Top = 10
    Width = 75
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'vida\manras'
    OnDblClick = Label6DblClick
  end
  object Label7: TLabel
    Left = 346
    Top = 10
    Width = 65
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'vida\shathi'
    OnDblClick = Label7DblClick
  end
  object Label8: TLabel
    Left = 418
    Top = 10
    Width = 56
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'vida\uklift'
    OnDblClick = Label8DblClick
  end
  object Label9: TLabel
    Left = 30
    Top = 152
    Width = 71
    Height = 16
    Caption = 'vida\ovesig'
    OnDblClick = Label9DblClick
  end
  object EFD_Name: TEdit
    Left = 110
    Top = 33
    Width = 148
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 0
  end
  object Button1: TButton
    Left = 266
    Top = 36
    Width = 188
    Height = 42
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'H'#228'mta standard AD namn'
    TabOrder = 2
    OnClick = Button1Click
  end
  object eDatabas: TEdit
    Left = 101
    Top = 235
    Width = 149
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 1
    Visible = False
  end
  object Button2: TButton
    Left = 266
    Top = 85
    Width = 188
    Height = 44
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'H'#228'mta standard databas'
    TabOrder = 3
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 108
    Top = 177
    Width = 142
    Height = 51
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 257
    Top = 177
    Width = 139
    Height = 51
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
  end
  object cbDatabas: TComboBox
    Left = 108
    Top = 94
    Width = 150
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
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
      'Version')
    Left = 280
    Top = 208
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054004F004B00480065006C00700042006F00740074006F00
      6D0044006C0067000100420079007400200061006E007600E4006E0064006100
      720065000100010001000D000A004C006100620065006C003100010041004400
      20004E0061006D006E003A000100010001000D000A004C006100620065006C00
      3200010044006100740061006200610073003A000100010001000D000A004200
      7500740074006F006E00310001004800E4006D00740061002000730074006100
      6E00640061007200640020004100440020006E0061006D006E00010001000100
      0D000A0042007500740074006F006E00320001004800E4006D00740061002000
      7300740061006E00640061007200640020006400610074006100620061007300
      0100010001000D000A00420069007400420074006E00310001004F004B000100
      010001000D000A00420069007400420074006E0032000100430061006E006300
      65006C000100010001000D000A004C006100620065006C003300010076006900
      640061005C006B00720069006E0069006C000100010001000D000A004C006100
      620065006C003400010076006900640061005C0075006C0072006C0075006E00
      0100010001000D000A004C006100620065006C00350001007600690064006100
      5C0072006F006E0061006E0064000100010001000D000A004C00610062006500
      6C003600010076006900640061005C006D0061006E0072006100730001000100
      01000D000A004C006100620065006C003700010076006900640061005C007300
      680061007400680069000100010001000D000A004C006100620065006C003800
      010076006900640061005C0075006B006C006900660074000100010001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A0054004F004B004800
      65006C00700042006F00740074006F006D0044006C00670001004D0053002000
      530061006E00730020005300650072006900660001004D005300200053006100
      6E00730020005300650072006900660001005400610068006F006D0061000D00
      0A00730074004D0075006C00740069004C0069006E00650073005F0055006E00
      690063006F00640065000D000A00630062004400610074006100620061007300
      2E004900740065006D00730001007600690073002E0076006900640061002E00
      730065003A007600690073005F0076006900640061002C0041004C0056004500
      530051004C005400450053005400300031003A007600690073005F0076006900
      640061002C0041004C0056004500530051004C00300033003A00760069007300
      5F0076006900640061000100010001000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00
      54004F004B00480065006C00700042006F00740074006F006D0044006C006700
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00}
  end
end
