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
end
