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
    DefaultLanguage = 2
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
    Left = 248
    Top = 152
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660053006F006B004100760072006F0070004D006100
      6C006C0001004D0061006C006C00610072000100010001000D000A0042006900
      7400420074006E00310001004F004B000100010001000D000A00420069007400
      420074006E0032000100430061006E00630065006C000100010001000D000A00
      6700720064004D0061006C006C00440042005400610062006C00650056006900
      65007700310046006F0072006D0001004D0061006C006C000100010001000D00
      0A006700720064004D0061006C006C00440042005400610062006C0065005600
      6900650077003100550073006500720049004400010055007300650072004900
      44000100010001000D000A006700720064004D0061006C006C00440042005400
      610062006C0065005600690065007700310043006F006C0075006D006E003100
      01004E0061006D0065000100010001000D000A006700720064004D0061006C00
      6C00440042005400610062006C006500560069006500770031004C004F004F00
      62006A00650063007400540079007000650001004C004F004F0062006A006500
      6300740054007900700065000100010001000D000A00610063004E0065007700
      01004E0079000100010001000D000A0061006300530061007600650001005300
      70006100720061000100010001000D000A0061006300440065006C0065007400
      6500010054006100200062006F00720074000100010001000D000A0073007400
      480069006E00740073005F0055006E00690063006F00640065000D000A007300
      740044006900730070006C00610079004C006100620065006C0073005F005500
      6E00690063006F00640065000D000A007300740046006F006E00740073005F00
      55006E00690063006F00640065000D000A005400660053006F006B0041007600
      72006F0070004D0061006C006C0001004D0053002000530061006E0073002000
      5300650072006900660001004D0053002000530061006E007300200053006500
      72006900660001005400610068006F006D0061000D000A00730074004D007500
      6C00740069004C0069006E00650073005F0055006E00690063006F0064006500
      0D000A007300740053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A00730074004F0074006800650072005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00670072006400
      4D0061006C006C00440042005400610062006C00650056006900650077003100
      4C004F004F0062006A0065006300740054007900700065002E00500072006F00
      70006500720074006900650073002E0044006900730070006C00610079004300
      6800650063006B006500640001005400720075006500010001000D000A006700
      720064004D0061006C006C00440042005400610062006C006500560069006500
      770031004C004F004F0062006A0065006300740054007900700065002E005000
      72006F0070006500720074006900650073002E0044006900730070006C006100
      790055006E0063006800650063006B00650064000100460061006C0073006500
      010001000D000A006700720064004D0061006C006C0044004200540061006200
      6C006500560069006500770031004C004F004F0062006A006500630074005400
      7900700065002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D006500010054006300780043006800650063006B00
      42006F007800500072006F007000650072007400690065007300010001000D00
      0A007300740043006F006C006C0065006300740069006F006E0073005F005500
      6E00690063006F00640065000D000A0073007400430068006100720053006500
      740073005F0055006E00690063006F00640065000D000A005400660053006F00
      6B004100760072006F0070004D0061006C006C00010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A00}
  end
end
