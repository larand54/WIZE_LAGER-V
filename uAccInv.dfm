object fAccInv: TfAccInv
  Left = 229
  Top = 107
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Ack.lager'
  ClientHeight = 744
  ClientWidth = 991
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 991
    Height = 57
    Align = alTop
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 584
      Height = 55
      Align = alLeft
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 582
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel3: TPanel
      Left = 918
      Top = 1
      Width = 72
      Height = 55
      Align = alRight
      TabOrder = 1
      object dxBarDockControl2: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 70
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel4: TPanel
      Left = 585
      Top = 1
      Width = 333
      Height = 55
      Align = alClient
      TabOrder = 2
    end
  end
  object ssAccLager: TcxSpreadSheetBook
    Left = 0
    Top = 57
    Width = 991
    Height = 687
    Align = alClient
    DefaultStyle.Font.Name = 'MS Sans Serif'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
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
    ImageOptions.LargeImages = dmsConnector.Images2424
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 232
    Top = 208
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
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end>
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acRefresh
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acPrint
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acParametrar
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acExportToExcel
      Category = 0
    end
  end
  object ActionList1: TActionList
    Images = dmsConnector.Images2424
    Left = 232
    Top = 264
    object acRefresh: TAction
      Caption = 'Uppdatera F6'
      ImageIndex = 0
      ShortCut = 117
      OnExecute = acRefreshExecute
    end
    object acPrint: TAction
      Caption = 'Skriv ut F8'
      ImageIndex = 8
      ShortCut = 119
      OnExecute = acPrintExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 5
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acParametrar: TAction
      Caption = 'Parametrar F11'
      ImageIndex = 7
      ShortCut = 122
      OnExecute = acParametrarExecute
    end
    object acExportToExcel: TAction
      Caption = 'Exportera (excel) F10'
      ImageIndex = 17
      ShortCut = 121
      OnExecute = acExportToExcelExecute
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <>
    Left = 432
    Top = 168
  end
  object SaveDialog1: TSaveDialog
    Left = 280
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 400
    Top = 128
    object StngF121: TMenuItem
      Action = acClose
    end
    object ExporteraexcelF101: TMenuItem
      Action = acExportToExcel
    end
    object ParametrarF111: TMenuItem
      Action = acParametrar
    end
    object Uppdatera1: TMenuItem
      Caption = 'Uppdatera'
    end
    object SkrivutF81: TMenuItem
      Action = acPrint
    end
    object UppdateraF61: TMenuItem
      Action = acRefresh
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 152
    Top = 160
    object dxComponentPrinter1Link1: TdxSpreadSheetBookReportLink
      Component = ssAccLager
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  object cds_AccInv: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'select dbo.AccInv.*, dbo.AccInv.IntInDel + dbo.AccInv.ExtInDel A' +
        'S Total_Ink'#246'p,'
      'CASE WHEN dbo.AccInv.WeekNo < 10 THEN'
      
        'CAST(dbo.AccInv.YearNo AS Varchar(4)) + '#39'/0'#39' + CAST(dbo.AccInv.W' +
        'eekNo AS Varchar(2))'
      'ELSE'
      
        'CAST(dbo.AccInv.YearNo AS Varchar(4)) + '#39'/'#39' + CAST(dbo.AccInv.We' +
        'ekNo AS Varchar(2))'
      'END AS Period,'
      'CASE WHEN VW = 1 THEN '#39'VW'#39
      'ELSE'
      #39'VERK'#39
      'END AS Bolag'
      'from dbo.AccInv'
      'WHERE dbo.AccInv.YearNo = :YearNo'
      'AND dbo.AccInv.WeekNo = :WeekNo'
      ''
      'Order By dbo.AccInv.YearNo, dbo.AccInv.WeekNo, VW, ClientName')
    Left = 344
    Top = 296
    ParamData = <
      item
        Name = 'YEARNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'WEEKNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_AccInvClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AccInvClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_AccInvYearNo: TIntegerField
      FieldName = 'YearNo'
      Origin = 'YearNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AccInvWeekNo: TIntegerField
      FieldName = 'WeekNo'
      Origin = 'WeekNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AccInvSawProd: TBCDField
      FieldName = 'SawProd'
      Origin = 'SawProd'
      Precision = 18
      Size = 3
    end
    object cds_AccInvIntInDel: TBCDField
      FieldName = 'IntInDel'
      Origin = 'IntInDel'
      Precision = 18
      Size = 3
    end
    object cds_AccInvExtInDel: TBCDField
      FieldName = 'ExtInDel'
      Origin = 'ExtInDel'
      Precision = 18
      Size = 3
    end
    object cds_AccInvExtUtlev: TBCDField
      FieldName = 'ExtUtlev'
      Origin = 'ExtUtlev'
      Precision = 18
      Size = 3
    end
    object cds_AccInvInvoicedCust: TBCDField
      FieldName = 'InvoicedCust'
      Origin = 'InvoicedCust'
      Precision = 18
      Size = 3
    end
    object cds_AccInvInvChange: TBCDField
      FieldName = 'InvChange'
      Origin = 'InvChange'
      Precision = 18
      Size = 3
    end
    object cds_AccInvTotalInv: TBCDField
      FieldName = 'TotalInv'
      Origin = 'TotalInv'
      Precision = 18
      Size = 3
    end
    object cds_AccInvTotalInvChangeMill: TBCDField
      FieldName = 'TotalInvChangeMill'
      Origin = 'TotalInvChangeMill'
      Precision = 18
      Size = 3
    end
    object cds_AccInvTotalInvMill: TBCDField
      FieldName = 'TotalInvMill'
      Origin = 'TotalInvMill'
      Precision = 18
      Size = 3
    end
    object cds_AccInvTotal_Inköp: TFMTBCDField
      FieldName = 'Total_Ink'#246'p'
      Origin = '[Total_Ink'#246'p]'
      ReadOnly = True
      Precision = 19
      Size = 3
    end
    object cds_AccInvPeriod: TStringField
      FieldName = 'Period'
      Origin = 'Period'
      ReadOnly = True
      Size = 8
    end
    object cds_AccInvVW: TIntegerField
      FieldName = 'VW'
      Origin = 'VW'
    end
    object cds_AccInvBolag: TStringField
      FieldName = 'Bolag'
      Origin = 'Bolag'
      ReadOnly = True
      Required = True
      Size = 4
    end
  end
  object sq_InvWeeks: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct iw.YearNo, iw.WeekNo'
      'from dbo.InvWeeks iw'
      'WHERE CASE WHEN iw.WeekNo < 10 THEN'
      'Cast(Cast(iw.YearNo AS Varchar(4))+'#39'0'#39'+'
      'Cast(iw.WeekNo AS Varchar(2)) AS int)'
      'ELSE'
      'Cast(Cast(iw.YearNo AS Varchar(4))+'
      'Cast(iw.WeekNo AS Varchar(2)) AS int)'
      'END >= :YearWeek'
      'Order By YearNo, WeekNo')
    Left = 488
    Top = 296
    ParamData = <
      item
        Name = 'YEARWEEK'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_InvWeeksYearNo: TIntegerField
      FieldName = 'YearNo'
      Origin = 'YearNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_InvWeeksWeekNo: TIntegerField
      FieldName = 'WeekNo'
      Origin = 'WeekNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_StartPeriod: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct'
      'CASE WHEN acs.WeekNo < 10 THEN'
      'Cast(Cast(acs.YearNo AS Varchar(4))+'#39'0'#39'+'
      'Cast(acs.WeekNo AS Varchar(2)) AS int)'
      'ELSE'
      'Cast(Cast(acs.YearNo AS Varchar(4))+'
      'Cast(acs.WeekNo AS Varchar(2)) AS int)'
      'END AS YearWeek'
      'FROM dbo.AccStart acs'
      '')
    Left = 576
    Top = 296
    object sq_StartPeriodYearWeek: TIntegerField
      FieldName = 'YearWeek'
      Origin = 'YearWeek'
      ReadOnly = True
    end
  end
  object sq_AccInvParam: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select accp.* FROM dbo.AccInvParam accp'
      'WHERE accp.ClientNo = :ClientNo')
    Left = 672
    Top = 296
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_AccInvParamClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_AccInvParamIngoingInv: TBCDField
      FieldName = 'IngoingInv'
      Origin = 'IngoingInv'
      Precision = 18
      Size = 3
    end
    object sq_AccInvParamTrimFactor: TBCDField
      FieldName = 'TrimFactor'
      Origin = 'TrimFactor'
      Precision = 18
      Size = 3
    end
  end
  object ds_AccInv: TDataSource
    DataSet = cds_AccInv
    Left = 344
    Top = 232
  end
  object siLangLinked_fAccInv: TsiLangLinked
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
    Left = 480
    Top = 360
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660041006300630049006E0076000100410063006B00
      2E006C0061006700650072000100010001000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720031000100430075007300
      74006F006D00200031000100010001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200320001004300750073007400
      6F006D00200032000100010001000D000A006100630052006500660072006500
      7300680001005500700070006400610074006500720061002000460036000100
      010001000D000A00610063005000720069006E007400010053006B0072006900
      76002000750074002000460038000100010001000D000A006100630043006C00
      6F0073006500010053007400E4006E0067002000460031003200010001000100
      0D000A006100630050006100720061006D006500740072006100720001005000
      6100720061006D00650074007200610072002000460031003100010001000100
      0D000A00610063004500780070006F007200740054006F004500780063006500
      6C0001004500780070006F007200740065007200610020002800650078006300
      65006C00290020004600310030000100010001000D000A005500700070006400
      6100740065007200610031000100550070007000640061007400650072006100
      0100010001000D000A006400780043006F006D0070006F006E0065006E007400
      5000720069006E0074006500720031004C0069006E006B00310001004E006500
      77005200650070006F00720074000100010001000D000A007300740048006900
      6E00740073005F0055006E00690063006F00640065000D000A00730074004400
      6900730070006C00610079004C006100620065006C0073005F0055006E006900
      63006F00640065000D000A006300640073005F0041006300630049006E007600
      43006C00690065006E0074004E006F00010043006C00690065006E0074004E00
      6F00010001000D000A006300640073005F0041006300630049006E0076004300
      6C00690065006E0074004E0061006D006500010043006C00690065006E007400
      4E0061006D006500010001000D000A006300640073005F004100630063004900
      6E00760059006500610072004E006F00010059006500610072004E006F000100
      01000D000A006300640073005F0041006300630049006E007600570065006500
      6B004E006F0001005700650065006B004E006F00010001000D000A0063006400
      73005F0041006300630049006E007600530061007700500072006F0064000100
      530061007700500072006F006400010001000D000A006300640073005F004100
      6300630049006E00760049006E00740049006E00440065006C00010049006E00
      740049006E00440065006C00010001000D000A006300640073005F0041006300
      630049006E00760045007800740049006E00440065006C000100450078007400
      49006E00440065006C00010001000D000A006300640073005F00410063006300
      49006E007600450078007400550074006C006500760001004500780074005500
      74006C0065007600010001000D000A006300640073005F004100630063004900
      6E00760049006E0076006F006900630065006400430075007300740001004900
      6E0076006F0069006300650064004300750073007400010001000D000A006300
      640073005F0041006300630049006E00760049006E0076004300680061006E00
      67006500010049006E0076004300680061006E0067006500010001000D000A00
      6300640073005F0041006300630049006E00760054006F00740061006C004900
      6E007600010054006F00740061006C0049006E007600010001000D000A006300
      640073005F0041006300630049006E00760054006F00740061006C0049006E00
      76004300680061006E00670065004D0069006C006C00010054006F0074006100
      6C0049006E0076004300680061006E00670065004D0069006C006C0001000100
      0D000A006300640073005F0041006300630049006E00760054006F0074006100
      6C0049006E0076004D0069006C006C00010054006F00740061006C0049006E00
      76004D0069006C006C00010001000D000A006300640073005F00410063006300
      49006E00760054006F00740061006C005F0049006E006B00F600700001005400
      6F00740061006C005F0049006E006B00F6007000010001000D000A0063006400
      73005F0041006300630049006E00760050006500720069006F00640001005000
      6500720069006F006400010001000D000A006300640073005F00410063006300
      49006E00760056005700010056005700010001000D000A006300640073005F00
      41006300630049006E00760042006F006C0061006700010042006F006C006100
      6700010001000D000A00730071005F0049006E0076005700650065006B007300
      59006500610072004E006F00010059006500610072004E006F00010001000D00
      0A00730071005F0049006E0076005700650065006B0073005700650065006B00
      4E006F0001005700650065006B004E006F00010001000D000A00730071005F00
      5300740061007200740050006500720069006F00640059006500610072005700
      650065006B00010059006500610072005700650065006B00010001000D000A00
      730071005F0041006300630049006E00760050006100720061006D0043006C00
      690065006E0074004E006F00010043006C00690065006E0074004E006F000100
      01000D000A00730071005F0041006300630049006E0076005000610072006100
      6D0049006E0067006F0069006E00670049006E007600010049006E0067006F00
      69006E00670049006E007600010001000D000A00730071005F00410063006300
      49006E00760050006100720061006D005400720069006D004600610063007400
      6F00720001005400720069006D0046006100630074006F007200010001000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A005400660041006300630049006E00760001004D005300200053006100
      6E00730020005300650072006900660001004D0053002000530061006E007300
      20005300650072006900660001005400610068006F006D0061000D000A006400
      78004200610072004D0061006E00610067006500720031000100530065006700
      6F006500200055004900010001005400610068006F006D0061000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003100
      01005300650067006F006500200055004900010001005400610068006F006D00
      61000D000A00640078004200610072004D0061006E0061006700650072003100
      420061007200320001005300650067006F006500200055004900010001005400
      610068006F006D0061000D000A006400780043006F006D0070006F006E006500
      6E0074005000720069006E0074006500720031004C0069006E006B0031000100
      540069006D006500730020004E0065007700200052006F006D0061006E000100
      01005400610068006F006D0061000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A004900440053005F00300001004C0061006700650072006600F6007200
      E4006E006400720069006E0067000100010001000D000A004900440053005F00
      33003800010054006F00740061006C0074000100010001000D000A0049004400
      53005F003400010054006F00740061006C00740020005300E500670076006500
      72006B0065006E000100010001000D000A004900440053005F00350035000100
      410063006B0075006D0065006C00650072006100640020006C00610067006500
      72006D0069006E0073006B006E0069006E0067002F00F6006B006E0069006E00
      67000100010001000D000A004900440053005F003500380001003D0049003100
      35000100010001000D000A004900440053005F003500390001005300E5006700
      700072006F0064000100010001000D000A004900440053005F00360030000100
      49006E0074002F0049006E006B00F60070000100010001000D000A0049004400
      53005F003600310001004500780074002F0049006E006B00F600700001000100
      01000D000A004900440053005F0036003200010054006F00740061006C002F00
      49006E006B00F60070000100010001000D000A004900440053005F0036003300
      0100550074006C00650076006500720061006E00730065007200010001000100
      0D000A004900440053005F00360034000100460061006B007400750072006500
      72006100740020006B0075006E0064000100010001000D000A00490044005300
      5F0036003600010054006F00740020004C006100670065007200010001000100
      0D000A004900440053005F003600370001004C0061006700650072006600F600
      7200E4006E006400720069006E0067002000700065007200200065006E006800
      65007400200074006F00740061006C0074000100010001000D000A0049004400
      53005F003600380001005600650072006B000100010001000D000A0049004400
      53005F003600390001005600650063006B0061000100010001000D000A004900
      440053005F003700300001004E004D0033000100010001000D000A0049004400
      53005F003700310001004500780070006F007200740065007200610064002000
      740069006C006C00200065007800630065006C002000660069006C0020000100
      010001000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A006400780042006100
      72004D0061006E006100670065007200310042006100720031002E004F006C00
      64004E0061006D006500010043007500730074006F006D002000310001000100
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      6100720032002E004F006C0064004E0061006D00650001004300750073007400
      6F006D0020003200010001000D000A006400780043006F006D0070006F006E00
      65006E0074005000720069006E0074006500720031004C0069006E006B003100
      2E00440065007300690067006E0065007200430061007000740069006F006E00
      010046006F0072006D006100740020005200650070006F007200740001000100
      0D000A007300740043006F006C006C0065006300740069006F006E0073005F00
      55006E00690063006F00640065000D000A007300740043006800610072005300
      6500740073005F0055006E00690063006F00640065000D000A00540066004100
      6300630049006E0076000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00640078004200610072004D0061006E006100
      67006500720031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00640078004200610072004D0061006E0061006700
      65007200310042006100720031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A00640078004200610072004D006100
      6E00610067006500720031004200610072003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006400780043006F00
      6D0070006F006E0065006E0074005000720069006E0074006500720031004C00
      69006E006B0031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00}
  end
end
