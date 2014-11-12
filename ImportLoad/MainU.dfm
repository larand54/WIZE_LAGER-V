object XMLImportExport: TXMLImportExport
  Left = 277
  Top = 206
  Width = 857
  Height = 382
  Caption = 'XML Import Export'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 65
    Width = 849
    Height = 249
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '&XML Import to DB'
      object Label2: TLabel
        Left = 62
        Top = 32
        Width = 101
        Height = 13
        Caption = 'XML-fil att importera:'
      end
      object SpeedButton1: TSpeedButton
        Left = 723
        Top = 24
        Width = 22
        Height = 21
        Caption = '...'
        Visible = False
        OnClick = SpeedButton1Click
      end
      object edtFileToImport: TEdit
        Left = 168
        Top = 24
        Width = 553
        Height = 21
        TabOrder = 0
      end
      object btnImport: TButton
        Left = 200
        Top = 136
        Width = 81
        Height = 25
        Caption = 'Do &Import'
        TabOrder = 2
        Visible = False
        OnClick = btnImportClick
      end
      object btnValidateImportFile: TButton
        Left = 168
        Top = 48
        Width = 161
        Height = 25
        Action = acValidateImportFile
        TabOrder = 1
        Visible = False
      end
      object Button1: TButton
        Left = 344
        Top = 48
        Width = 161
        Height = 25
        Action = acImportPkgs
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&DB Export to XML'
      ImageIndex = 1
      object Label4: TLabel
        Left = 24
        Top = 32
        Width = 87
        Height = 13
        Caption = 'XML export mapp:'
      end
      object SpeedButton2: TSpeedButton
        Left = 667
        Top = 24
        Width = 22
        Height = 21
        Caption = '...'
        OnClick = SpeedButton2Click
      end
      object btnExport: TButton
        Left = 112
        Top = 48
        Width = 161
        Height = 25
        Action = acExportPkgsToXMLFile
        TabOrder = 1
      end
      object btnValidateExportFile: TButton
        Left = 280
        Top = 48
        Width = 161
        Height = 25
        Action = acValidateExportXMLFile
        TabOrder = 2
      end
      object edtFileToExport: TEdit
        Left = 112
        Top = 24
        Width = 553
        Height = 21
        TabOrder = 0
      end
      object btnClearEmptyNode: TButton
        Left = 464
        Top = 48
        Width = 107
        Height = 25
        Caption = 'Clear Empty Node'
        TabOrder = 3
        Visible = False
        OnClick = btnClearEmptyNodeClick
      end
      object cbEmaila: TcxCheckBox
        Left = 112
        Top = 88
        Caption = 'Emaila'
        Properties.ImmediatePost = True
        State = cbsChecked
        TabOrder = 4
        Width = 121
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 849
    Height = 65
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 40
      Width = 100
      Height = 13
      Caption = 'XSD fil f'#246'r validering:'
    end
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 124
      Height = 13
      Caption = 'SQL Server Connect Info:'
      Visible = False
    end
    object SpeedButton3: TSpeedButton
      Left = 691
      Top = 32
      Width = 22
      Height = 21
      Caption = '...'
      OnClick = SpeedButton3Click
    end
    object edtXSDFileName: TEdit
      Left = 136
      Top = 32
      Width = 553
      Height = 21
      TabOrder = 2
    end
    object edtConnectionString: TEdit
      Left = 136
      Top = 8
      Width = 553
      Height = 21
      TabOrder = 0
      Text = 
        'Provider=SQLOLEDB.1;Password=sa;Persist Security Info=True;User ' +
        'ID=sa;Initial Catalog=tt_sys;Data Source=carmak-m30;Extended Pro' +
        'perties="uid=sa;pwd=sa'
      Visible = False
    end
    object btnConnection: TButton
      Left = 691
      Top = 7
      Width = 75
      Height = 22
      Caption = '&Connection'
      TabOrder = 1
      Visible = False
      OnClick = btnConnectionClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 314
    Width = 849
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 104
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Visible = False
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 384
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object FDOConnection1: TFDOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=vis_vida;Data Source=ALVESQL01;Extended' +
      ' Properties="uid=sa;"'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    BeforeConnect = FDOConnection1BeforeConnect
    Left = 528
    Top = 193
  end
  object dsInfo: TFDODataSet
    Connection = FDOConnection1
    Parameters = <>
    Left = 560
    Top = 193
  end
  object opd: TOpenDialog
    Filter = '*.xml|*.xml|*.*|*.*'
    Left = 428
    Top = 193
  end
  object svd: TSaveDialog
    Filter = '*.xml|*.xml|*.*|*.*'
    Left = 460
    Top = 193
  end
  object opdxs: TOpenDialog
    Filter = '*.xsd|*.xsd|*.*|*.*'
    Left = 492
    Top = 193
  end
  object FDOQuery1: TFDOQuery
    Connection = FDOConnection1
    Parameters = <>
    Left = 596
    Top = 193
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 640
    Top = 193
  end
  object ActionList1: TActionList
    Left = 684
    Top = 193
    object acValidateImportFile: TAction
      Caption = 'Validera XML fil'
      OnExecute = acValidateImportFileExecute
      OnUpdate = acValidateImportFileUpdate
    end
    object acImportPkgs: TAction
      Caption = 'V'#228'lj woodx importfil'
      OnExecute = acImportPkgsExecute
      OnUpdate = acImportPkgsUpdate
    end
    object acExportPkgsToXMLFile: TAction
      Caption = 'Exportera fakturaspec till xml'
      OnExecute = acExportPkgsToXMLFileExecute
    end
    object acValidateExportXMLFile: TAction
      Caption = 'Validera XML fil'
      OnExecute = acValidateExportXMLFileExecute
      OnUpdate = acValidateExportXMLFileUpdate
    end
  end
  object sq_GetLONos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select DeliveryMessageNumber FROM dbo.DeliveryMessageWoodHeader '
      'WHERE InternalInvoiceNo = :InternalInvoiceNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 260
    Top = 201
    object sq_GetLONosDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Size = 30
    end
  end
  object clFtp1: TclFtp
    Left = 252
    Top = 281
  end
end
