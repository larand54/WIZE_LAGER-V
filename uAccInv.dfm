﻿object fAccInv: TfAccInv
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
    UseSystemFont = True
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
    Left = 480
    Top = 360
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660041006300630049006E0076000100410063006B00
      2E006C006100670065007200010001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200310001004300750073007400
      6F006D0020003100010001000D000A00640078004200610072004D0061006E00
      610067006500720031004200610072003200010043007500730074006F006D00
      20003200010001000D000A006100630052006500660072006500730068000100
      550070007000640061007400650072006100200046003600010001000D000A00
      610063005000720069006E007400010053006B00720069007600200075007400
      200046003800010001000D000A006100630043006C006F007300650001005300
      7400E4006E0067002000460031003200010001000D000A006100630050006100
      720061006D0065007400720061007200010050006100720061006D0065007400
      7200610072002000460031003100010001000D000A0061006300450078007000
      6F007200740054006F0045007800630065006C0001004500780070006F007200
      74006500720061002000280065007800630065006C0029002000460031003000
      010001000D000A00550070007000640061007400650072006100310001005500
      70007000640061007400650072006100010001000D000A006400780043006F00
      6D0070006F006E0065006E0074005000720069006E0074006500720031004C00
      69006E006B00310001004E00650077005200650070006F007200740001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A006300640073005F00
      41006300630049006E00760043006C00690065006E0074004E006F0001004300
      6C00690065006E0074004E006F00010001000D000A006300640073005F004100
      6300630049006E00760043006C00690065006E0074004E0061006D0065000100
      43006C00690065006E0074004E0061006D006500010001000D000A0063006400
      73005F0041006300630049006E00760059006500610072004E006F0001005900
      6500610072004E006F00010001000D000A006300640073005F00410063006300
      49006E0076005700650065006B004E006F0001005700650065006B004E006F00
      010001000D000A006300640073005F0041006300630049006E00760053006100
      7700500072006F0064000100530061007700500072006F006400010001000D00
      0A006300640073005F0041006300630049006E00760049006E00740049006E00
      440065006C00010049006E00740049006E00440065006C00010001000D000A00
      6300640073005F0041006300630049006E00760045007800740049006E004400
      65006C00010045007800740049006E00440065006C00010001000D000A006300
      640073005F0041006300630049006E007600450078007400550074006C006500
      76000100450078007400550074006C0065007600010001000D000A0063006400
      73005F0041006300630049006E00760049006E0076006F006900630065006400
      4300750073007400010049006E0076006F006900630065006400430075007300
      7400010001000D000A006300640073005F0041006300630049006E0076004900
      6E0076004300680061006E0067006500010049006E0076004300680061006E00
      67006500010001000D000A006300640073005F0041006300630049006E007600
      54006F00740061006C0049006E007600010054006F00740061006C0049006E00
      7600010001000D000A006300640073005F0041006300630049006E0076005400
      6F00740061006C0049006E0076004300680061006E00670065004D0069006C00
      6C00010054006F00740061006C0049006E0076004300680061006E0067006500
      4D0069006C006C00010001000D000A006300640073005F004100630063004900
      6E00760054006F00740061006C0049006E0076004D0069006C006C0001005400
      6F00740061006C0049006E0076004D0069006C006C00010001000D000A006300
      640073005F0041006300630049006E00760054006F00740061006C005F004900
      6E006B00F6007000010054006F00740061006C005F0049006E006B00F6007000
      010001000D000A006300640073005F0041006300630049006E00760050006500
      720069006F006400010050006500720069006F006400010001000D000A006300
      640073005F0041006300630049006E0076005600570001005600570001000100
      0D000A006300640073005F0041006300630049006E00760042006F006C006100
      6700010042006F006C0061006700010001000D000A00730071005F0049006E00
      76005700650065006B00730059006500610072004E006F000100590065006100
      72004E006F00010001000D000A00730071005F0049006E007600570065006500
      6B0073005700650065006B004E006F0001005700650065006B004E006F000100
      01000D000A00730071005F005300740061007200740050006500720069006F00
      640059006500610072005700650065006B000100590065006100720057006500
      65006B00010001000D000A00730071005F0041006300630049006E0076005000
      6100720061006D0043006C00690065006E0074004E006F00010043006C006900
      65006E0074004E006F00010001000D000A00730071005F004100630063004900
      6E00760050006100720061006D0049006E0067006F0069006E00670049006E00
      7600010049006E0067006F0069006E00670049006E007600010001000D000A00
      730071005F0041006300630049006E00760050006100720061006D0054007200
      69006D0046006100630074006F00720001005400720069006D00460061006300
      74006F007200010001000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A005400660041006300630049006E007600
      01004D0053002000530061006E00730020005300650072006900660001000100
      0D000A00640078004200610072004D0061006E00610067006500720031000100
      5300650067006F006500200055004900010001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003100010053006500
      67006F006500200055004900010001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200320001005300650067006F00
      6500200055004900010001000D000A006400780043006F006D0070006F006E00
      65006E0074005000720069006E0074006500720031004C0069006E006B003100
      0100540069006D006500730020004E0065007700200052006F006D0061006E00
      010001000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00640078004200610072004D00
      61006E00610067006500720031002E00430061007400650067006F0072006900
      650073000100440065006600610075006C007400010001000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A004900440053005F00300001004C0061006700650072006600F6007200E400
      6E006400720069006E006700010001000D000A004900440053005F0033003800
      010054006F00740061006C007400010001000D000A004900440053005F003400
      010054006F00740061006C00740020005300E50067007600650072006B006500
      6E00010001000D000A004900440053005F00350035000100410063006B007500
      6D0065006C00650072006100640020006C0061006700650072006D0069006E00
      73006B006E0069006E0067002F00F6006B006E0069006E006700010001000D00
      0A004900440053005F003500380001003D00490031003500010001000D000A00
      4900440053005F003500390001005300E5006700700072006F00640001000100
      0D000A004900440053005F0036003000010049006E0074002F0049006E006B00
      F6007000010001000D000A004900440053005F00360031000100450078007400
      2F0049006E006B00F6007000010001000D000A004900440053005F0036003200
      010054006F00740061006C002F0049006E006B00F6007000010001000D000A00
      4900440053005F00360033000100550074006C00650076006500720061006E00
      730065007200010001000D000A004900440053005F0036003400010046006100
      6B00740075007200650072006100740020006B0075006E006400010001000D00
      0A004900440053005F0036003600010054006F00740020004C00610067006500
      7200010001000D000A004900440053005F003600370001004C00610067006500
      72006600F6007200E4006E006400720069006E00670020007000650072002000
      65006E00680065007400200074006F00740061006C007400010001000D000A00
      4900440053005F003600380001005600650072006B00010001000D000A004900
      440053005F003600390001005600650063006B006100010001000D000A004900
      440053005F003700300001004E004D003300010001000D000A00490044005300
      5F003700310001004500780070006F0072007400650072006100640020007400
      69006C006C00200065007800630065006C002000660069006C00200001000100
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A00640078004200610072004D00
      61006E006100670065007200310042006100720031002E004F006C0064004E00
      61006D006500010043007500730074006F006D0020003100010001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      32002E004F006C0064004E0061006D006500010043007500730074006F006D00
      20003200010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B0031002E004400
      65007300690067006E0065007200430061007000740069006F006E0001004600
      6F0072006D006100740020005200650070006F0072007400010001000D000A00
      6300640073005F0041006300630049006E00760043006C00690065006E007400
      4E006F002E004F0072006900670069006E00010043006C00690065006E007400
      4E006F00010001000D000A006300640073005F0041006300630049006E007600
      43006C00690065006E0074004E0061006D0065002E004F007200690067006900
      6E00010043006C00690065006E0074004E0061006D006500010001000D000A00
      6300640073005F0041006300630049006E00760059006500610072004E006F00
      2E004F0072006900670069006E00010059006500610072004E006F0001000100
      0D000A006300640073005F0041006300630049006E0076005700650065006B00
      4E006F002E004F0072006900670069006E0001005700650065006B004E006F00
      010001000D000A006300640073005F0041006300630049006E00760053006100
      7700500072006F0064002E004F0072006900670069006E000100530061007700
      500072006F006400010001000D000A006300640073005F004100630063004900
      6E00760049006E00740049006E00440065006C002E004F007200690067006900
      6E00010049006E00740049006E00440065006C00010001000D000A0063006400
      73005F0041006300630049006E00760045007800740049006E00440065006C00
      2E004F0072006900670069006E00010045007800740049006E00440065006C00
      010001000D000A006300640073005F0041006300630049006E00760045007800
      7400550074006C00650076002E004F0072006900670069006E00010045007800
      7400550074006C0065007600010001000D000A006300640073005F0041006300
      630049006E00760049006E0076006F0069006300650064004300750073007400
      2E004F0072006900670069006E00010049006E0076006F006900630065006400
      4300750073007400010001000D000A006300640073005F004100630063004900
      6E00760049006E0076004300680061006E00670065002E004F00720069006700
      69006E00010049006E0076004300680061006E0067006500010001000D000A00
      6300640073005F0041006300630049006E00760054006F00740061006C004900
      6E0076002E004F0072006900670069006E00010054006F00740061006C004900
      6E007600010001000D000A006300640073005F0041006300630049006E007600
      54006F00740061006C0049006E0076004300680061006E00670065004D006900
      6C006C002E004F0072006900670069006E00010054006F00740061006C004900
      6E0076004300680061006E00670065004D0069006C006C00010001000D000A00
      6300640073005F0041006300630049006E00760054006F00740061006C004900
      6E0076004D0069006C006C002E004F0072006900670069006E00010054006F00
      740061006C0049006E0076004D0069006C006C00010001000D000A0063006400
      73005F0041006300630049006E00760054006F00740061006C005F0049006E00
      6B00F60070002E004F0072006900670069006E0001005B0054006F0074006100
      6C005F0049006E006B00F60070005D00010001000D000A006300640073005F00
      41006300630049006E00760050006500720069006F0064002E004F0072006900
      670069006E00010050006500720069006F006400010001000D000A0063006400
      73005F0041006300630049006E007600560057002E004F007200690067006900
      6E00010056005700010001000D000A006300640073005F004100630063004900
      6E00760042006F006C00610067002E004F0072006900670069006E0001004200
      6F006C0061006700010001000D000A00730071005F0049006E00760057006500
      65006B00730059006500610072004E006F002E004F0072006900670069006E00
      010059006500610072004E006F00010001000D000A00730071005F0049006E00
      76005700650065006B0073005700650065006B004E006F002E004F0072006900
      670069006E0001005700650065006B004E006F00010001000D000A0073007100
      5F005300740061007200740050006500720069006F0064005900650061007200
      5700650065006B002E004F0072006900670069006E0001005900650061007200
      5700650065006B00010001000D000A00730071005F0041006300630049006E00
      760050006100720061006D0043006C00690065006E0074004E006F002E004F00
      72006900670069006E00010043006C00690065006E0074004E006F0001000100
      0D000A00730071005F0041006300630049006E00760050006100720061006D00
      49006E0067006F0069006E00670049006E0076002E004F007200690067006900
      6E00010049006E0067006F0069006E00670049006E007600010001000D000A00
      730071005F0041006300630049006E00760050006100720061006D0054007200
      69006D0046006100630074006F0072002E004F0072006900670069006E000100
      5400720069006D0046006100630074006F007200010001000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A0073007400430068006100720053006500740073005F00
      55006E00690063006F00640065000D000A005400660041006300630049006E00
      76000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00640078004200610072004D0061006E00610067006500
      720031000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00640078004200610072004D0061006E0061006700
      65007200310042006100720031000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720032000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      6400780043006F006D0070006F006E0065006E0074005000720069006E007400
      6500720031004C0069006E006B0031000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A00}
  end
end
