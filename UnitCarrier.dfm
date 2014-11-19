object FormCarrier: TFormCarrier
  Left = 302
  Top = 100
  ActiveControl = grdCarrier
  Caption = 'Fartyg'
  ClientHeight = 502
  ClientWidth = 341
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
  object Panel1: TPanel
    Left = 0
    Top = 447
    Width = 341
    Height = 55
    Align = alBottom
    TabOrder = 0
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 341
    Height = 46
    Align = dalTop
    BarManager = dxBarManager1
  end
  object grdCarrier: TcxGrid
    Left = 0
    Top = 46
    Width = 341
    Height = 401
    Align = alClient
    TabOrder = 6
    object grdCarrierDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dm_Booking.dsCarrier
      DataController.KeyFieldNames = 'CarrierNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdCarrierDBTableView1CarrierName: TcxGridDBColumn
        Caption = 'FARTYG'
        DataBinding.FieldName = 'CarrierName'
      end
    end
    object grdCarrierLevel1: TcxGridLevel
      GridView = grdCarrierDBTableView1
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 288
    Top = 88
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 341
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'St'#228'ng'
      Category = 0
      Hint = 'St'#228'ng'
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Spara'
      Category = 0
      Hint = 'Spara'
      Visible = ivAlways
      OnClick = dxBarLargeButton2Click
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'L'#228'gg till'
      Category = 0
      Hint = 'L'#228'gg till'
      Visible = ivAlways
      OnClick = dxBarLargeButton3Click
    end
  end
  object siLangLinked_FormCarrier: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Swedish'
      'English')
    Language = 'English'
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
    Top = 256
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540046006F0072006D004300610072007200690065007200
      0100460061007200740079006700010001000D000A0067007200640043006100
      72007200690065007200440042005400610062006C0065005600690065007700
      310043006100720072006900650072004E0061006D0065000100460041005200
      540059004700010001000D000A00640078004200610072004D0061006E006100
      67006500720031004200610072003100010043007500730074006F006D002000
      3100010001000D000A00640078004200610072004C0061007200670065004200
      7500740074006F006E003100010053007400E4006E006700010001000D000A00
      640078004200610072004C00610072006700650042007500740074006F006E00
      3200010053007000610072006100010001000D000A0064007800420061007200
      4C00610072006700650042007500740074006F006E00330001004C00E4006700
      67002000740069006C006C00010001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A0064007800420061007200
      4C00610072006700650042007500740074006F006E003100010053007400E400
      6E006700010001000D000A00640078004200610072004C006100720067006500
      42007500740074006F006E003200010053007000610072006100010001000D00
      0A00640078004200610072004C00610072006700650042007500740074006F00
      6E00330001004C00E400670067002000740069006C006C00010001000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A007300740046006F006E0074007300
      5F0055006E00690063006F00640065000D000A00540046006F0072006D004300
      61007200720069006500720001004D0053002000530061006E00730020005300
      6500720069006600010001000D000A00640078004200610072004D0061006E00
      6100670065007200310001005300650067006F00650020005500490001000100
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      61007200310001005300650067006F006500200055004900010001000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A00640078004200610072004D0061006E0061006700
      6500720031002E00430061007400650067006F00720069006500730001004400
      65006600610075006C007400010001000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A00640078004200610072004D0061006E00610067006500
      7200310042006100720031002E004F006C0064004E0061006D00650001004300
      7500730074006F006D0020003100010001000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A00540046006F0072006D0043006100720072006900
      650072000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00640078004200610072004D0061006E0061006700
      6500720031000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00640078004200610072004D0061006E006100
      670065007200310042006100720031000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A00}
  end
end
