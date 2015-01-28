object fSokAvropMall: TfSokAvropMall
  Left = 229
  Top = 107
  Caption = 'Mallar'
  ClientHeight = 298
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 257
    Width = 513
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 152
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 513
    Height = 41
    Align = alTop
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Action = acNew
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 104
      Top = 8
      Width = 75
      Height = 25
      Action = acDelete
      TabOrder = 1
    end
  end
  object grdMall: TcxGrid
    Left = 0
    Top = 41
    Width = 513
    Height = 216
    Align = alClient
    TabOrder = 2
    object grdMallDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_Props
      DataController.KeyFieldNames = 'UserID;Form'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdMallDBTableView1Form: TcxGridDBColumn
        Caption = 'Mall'
        DataBinding.FieldName = 'Form'
        Width = 167
      end
      object grdMallDBTableView1UserID: TcxGridDBColumn
        DataBinding.FieldName = 'UserID'
        Visible = False
        VisibleForCustomization = False
        Width = 101
      end
      object grdMallDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
        Visible = False
        VisibleForCustomization = False
        Width = 165
      end
      object grdMallDBTableView1LOObjectType: TcxGridDBColumn
        DataBinding.FieldName = 'LOObjectType'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 86
      end
    end
    object grdMallLevel1: TcxGridLevel
      GridView = grdMallDBTableView1
    end
  end
  object ActionList1: TActionList
    Left = 328
    Top = 112
    object acNew: TAction
      Caption = 'Ny'
      OnExecute = acNewExecute
    end
    object acSave: TAction
      Caption = 'Spara'
    end
    object acDelete: TAction
      Caption = 'Ta bort'
      OnExecute = acDeleteExecute
    end
  end
  object ds_Props: TDataSource
    DataSet = dmInventory.cds_Props
    Left = 152
    Top = 112
  end
  object siLangLinked_fSokAvropMall: TsiLangLinked
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
    Left = 248
    Top = 152
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660053006F006B004100760072006F0070004D006100
      6C006C0001004D0061006C006C0061007200010001000D000A00420069007400
      420074006E00310001004F004B00010001000D000A0042006900740042007400
      6E0032000100430061006E00630065006C00010001000D000A00670072006400
      4D0061006C006C00440042005400610062006C00650056006900650077003100
      46006F0072006D0001004D0061006C006C00010001000D000A00670072006400
      4D0061006C006C00440042005400610062006C00650056006900650077003100
      5500730065007200490044000100550073006500720049004400010001000D00
      0A006700720064004D0061006C006C00440042005400610062006C0065005600
      690065007700310043006F006C0075006D006E00310001004E0061006D006500
      010001000D000A006700720064004D0061006C006C0044004200540061006200
      6C006500560069006500770031004C004F004F0062006A006500630074005400
      79007000650001004C004F004F0062006A006500630074005400790070006500
      010001000D000A00610063004E006500770001004E007900010001000D000A00
      610063005300610076006500010053007000610072006100010001000D000A00
      61006300440065006C00650074006500010054006100200062006F0072007400
      010001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      660053006F006B004100760072006F0070004D0061006C006C0001004D005300
      2000530061006E007300200053006500720069006600010001000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      6700720064004D0061006C006C00440042005400610062006C00650056006900
      6500770031004C004F004F0062006A0065006300740054007900700065002E00
      500072006F0070006500720074006900650073002E0044006900730070006C00
      6100790043006800650063006B00650064000100540072007500650001000100
      0D000A006700720064004D0061006C006C00440042005400610062006C006500
      560069006500770031004C004F004F0062006A00650063007400540079007000
      65002E00500072006F0070006500720074006900650073002E00440069007300
      70006C006100790055006E0063006800650063006B0065006400010046006100
      6C0073006500010001000D000A006700720064004D0061006C006C0044004200
      5400610062006C006500560069006500770031004C004F004F0062006A006500
      6300740054007900700065002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780043006800
      650063006B0042006F007800500072006F007000650072007400690065007300
      010001000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      660053006F006B004100760072006F0070004D0061006C006C00010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00}
  end
end
