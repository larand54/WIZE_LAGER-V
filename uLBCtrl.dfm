object frmLBCtrl: TfrmLBCtrl
  Left = 0
  Top = 0
  ActiveControl = cxButton1
  Caption = 'Lagerbalans kontroll'
  ClientHeight = 687
  ClientWidth = 1049
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1049
    Height = 73
    Align = alTop
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 16
      Top = 8
      Width = 145
      Height = 57
      Caption = 'Skriv ut'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 888
      Top = 10
      Width = 145
      Height = 57
      Caption = 'St'#228'ng'
      TabOrder = 1
      OnClick = cxButton2Click
    end
  end
  object grdLBCtrl: TcxGrid
    Left = 0
    Top = 73
    Width = 1049
    Height = 614
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 32
    ExplicitTop = 176
    ExplicitWidth = 250
    ExplicitHeight = 200
    object grdLBCtrlDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_LBCtrl
      DataController.KeyFieldNames = 'PackageNo;Prefix;Lager;Nr;Meddelande'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'PackageNo'
          Column = grdLBCtrlDBTableView1PackageNo
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object grdLBCtrlDBTableView1PackageNo: TcxGridDBColumn
        DataBinding.FieldName = 'PackageNo'
        Width = 85
      end
      object grdLBCtrlDBTableView1Prefix: TcxGridDBColumn
        DataBinding.FieldName = 'Prefix'
        Width = 51
      end
      object grdLBCtrlDBTableView1Lager: TcxGridDBColumn
        DataBinding.FieldName = 'Lager'
        Width = 284
      end
      object grdLBCtrlDBTableView1Nr: TcxGridDBColumn
        DataBinding.FieldName = 'Nr'
        Width = 59
      end
      object grdLBCtrlDBTableView1Meddelande: TcxGridDBColumn
        DataBinding.FieldName = 'Meddelande'
        Width = 568
      end
    end
    object grdLBCtrlLevel1: TcxGridLevel
      GridView = grdLBCtrlDBTableView1
    end
  end
  object sp_LBCtrl: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_LBCtrl'
    Left = 272
    Top = 232
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@MinDate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@MaxDate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@PIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_LBCtrlPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
    end
    object sp_LBCtrlPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      FixedChar = True
      Size = 3
    end
    object sp_LBCtrlLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      Size = 50
    end
    object sp_LBCtrlNr: TIntegerField
      FieldName = 'Nr'
      Origin = 'Nr'
    end
    object sp_LBCtrlMeddelande: TStringField
      FieldName = 'Meddelande'
      Origin = 'Meddelande'
      Size = 100
    end
  end
  object ds_LBCtrl: TDataSource
    DataSet = sp_LBCtrl
    Left = 272
    Top = 296
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 392
    Top = 224
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdLBCtrl
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Lagerbalans kontroll')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[User Name]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
