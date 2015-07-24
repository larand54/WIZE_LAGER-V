object fSicICgrp: TfSicICgrp
  Left = 302
  Top = 100
  ActiveControl = grdSicICgrps
  Caption = 'Inventeringar inkluderade i sammanst'#228'llning'
  ClientHeight = 502
  ClientWidth = 702
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
    Width = 702
    Height = 55
    Align = alBottom
    TabOrder = 0
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 702
    Height = 42
    Align = dalTop
    BarManager = dxBarManager1
  end
  object grdSicICgrps: TcxGrid
    Left = 0
    Top = 42
    Width = 702
    Height = 405
    Align = alClient
    TabOrder = 6
    object grdSicICgrpsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmInvCtrl.ds_Sic_IC_grp
      DataController.KeyFieldNames = 'IC_grpno;Sic_No'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdSicICgrpsDBTableView1Sic_No: TcxGridDBColumn
        DataBinding.FieldName = 'Sic_No'
      end
      object grdSicICgrpsDBTableView1IC_grpno: TcxGridDBColumn
        DataBinding.FieldName = 'IC_grpno'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object grdSicICgrpsDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'IC_grpno'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.DropDownWidth = 370
        Properties.KeyFieldNames = 'INVENTERINGSNR'
        Properties.ListColumns = <
          item
            FieldName = 'INVENTERINGSNR'
          end
          item
            Width = 110
            FieldName = 'INVENTERINGSDATUM'
          end
          item
            Width = 200
            FieldName = 'NAMN'
          end>
        Properties.ListSource = dmInvCtrl.ds_InvCtrlList
      end
    end
    object grdSicICgrpsLevel1: TcxGridLevel
      GridView = grdSicICgrpsDBTableView1
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
    UseSystemFont = False
    Left = 288
    Top = 88
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
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
  object siLangLinked_fSicICgrp: TsiLangLinked
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
    Left = 344
    Top = 256
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005300690063004900430067007200700001004900
      6E00760065006E0074006500720069006E00670061007200200069006E006B00
      6C007500640065007200610064006500200069002000730061006D006D006100
      6E0073007400E4006C006C006E0069006E0067000100010001000D000A006700
      7200640053006900630049004300670072007000730044004200540061006200
      6C006500560069006500770031005300690063005F004E006F00010053006900
      63005F004E006F000100010001000D000A006700720064005300690063004900
      43006700720070007300440042005400610062006C0065005600690065007700
      3100490043005F006700720070006E006F000100490043005F00670072007000
      6E006F000100010001000D000A00670072006400530069006300490043006700
      720070007300440042005400610062006C006500560069006500770031004300
      6F006C0075006D006E0031000100490043005F006700720070006E006F000100
      010001000D000A00640078004200610072004D0061006E006100670065007200
      31004200610072003100010043007500730074006F006D002000310001000100
      01000D000A00640078004200610072004C006100720067006500420075007400
      74006F006E003100010053007400E4006E0067000100010001000D000A006400
      78004200610072004C00610072006700650042007500740074006F006E003200
      0100530070006100720061000100010001000D000A0064007800420061007200
      4C00610072006700650042007500740074006F006E00330001004C00E4006700
      67002000740069006C006C000100010001000D000A0073007400480069006E00
      740073005F0055006E00690063006F00640065000D000A006400780042006100
      72004C00610072006700650042007500740074006F006E003100010053007400
      E4006E006700010001000D000A00640078004200610072004C00610072006700
      650042007500740074006F006E00320001005300700061007200610001000100
      0D000A00640078004200610072004C0061007200670065004200750074007400
      6F006E00330001004C00E400670067002000740069006C006C00010001000D00
      0A007300740044006900730070006C00610079004C006100620065006C007300
      5F0055006E00690063006F00640065000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A0054006600530069006300
      4900430067007200700001004D0053002000530061006E007300200053006500
      72006900660001004D0053002000530061006E00730020005300650072006900
      660001005400610068006F006D0061000D000A00640078004200610072004D00
      61006E006100670065007200310001005300650067006F006500200055004900
      010001005400610068006F006D0061000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200310001005300650067006F00
      6500200055004900010001005400610068006F006D0061000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003100
      2E004F006C0064004E0061006D006500010043007500730074006F006D002000
      3100010001000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A006700720064005300
      69006300490043006700720070007300440042005400610062006C0065005600
      690065007700310043006F006C0075006D006E0031002E00500072006F007000
      6500720074006900650073002E004C0069007300740043006F006C0075006D00
      6E0073005B0030005D002E00430061007000740069006F006E00010049004E00
      560045004E0054004500520049004E00470053004E005200010001000D000A00
      6700720064005300690063004900430067007200700073004400420054006100
      62006C0065005600690065007700310043006F006C0075006D006E0031002E00
      500072006F0070006500720074006900650073002E004C006900730074004300
      6F006C0075006D006E0073005B0031005D002E00430061007000740069006F00
      6E00010049004E00560045004E0054004500520049004E004700530044004100
      540055004D00010001000D000A00670072006400530069006300490043006700
      720070007300440042005400610062006C006500560069006500770031004300
      6F006C0075006D006E0031002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0032005D00
      2E00430061007000740069006F006E0001004E0041004D004E00010001000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A0054006600530069006300490043006700720070000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00640078004200610072004D0061006E006100670065007200310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00}
  end
end
