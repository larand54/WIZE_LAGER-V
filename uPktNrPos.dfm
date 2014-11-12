object fPktNrPos: TfPktNrPos
  Left = 177
  Top = 136
  Caption = 'Leverant'#246'rspaketnrkoder '
  ClientHeight = 427
  ClientWidth = 905
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bbApplyChanges: TBitBtn
      Left = 16
      Top = 16
      Width = 91
      Height = 25
      Caption = 'Spara '#228'ndringar'
      TabOrder = 0
      OnClick = bbApplyChangesClick
    end
    object bbCancelChanges: TBitBtn
      Left = 120
      Top = 16
      Width = 89
      Height = 25
      Caption = #197'ngra '#228'ndringar'
      TabOrder = 1
      OnClick = bbCancelChangesClick
    end
  end
  object grdLevPaketkoder: TcxGrid
    Left = 0
    Top = 57
    Width = 905
    Height = 370
    Align = alClient
    TabOrder = 1
    object grdLevPaketkoderDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_Verk
      DataController.KeyFieldNames = 'ClientNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdLevPaketkoderDBTableView1ClientNo: TcxGridDBColumn
        DataBinding.FieldName = 'ClientNo'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 61
      end
      object grdLevPaketkoderDBTableView1ROLL: TcxGridDBColumn
        DataBinding.FieldName = 'ROLL'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 117
      end
      object grdLevPaketkoderDBTableView1ClientName: TcxGridDBColumn
        DataBinding.FieldName = 'ClientName'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 124
      end
      object grdLevPaketkoderDBTableView1PktNrLevKod: TcxGridDBColumn
        DataBinding.FieldName = 'PktNrLevKod'
        Width = 73
      end
      object grdLevPaketkoderDBTableView1PaketNoPos: TcxGridDBColumn
        DataBinding.FieldName = 'PaketNoPos'
        Width = 133
      end
      object grdLevPaketkoderDBTableView1PaketNoLength: TcxGridDBColumn
        DataBinding.FieldName = 'PaketNoLength'
        Width = 135
      end
      object grdLevPaketkoderDBTableView1SupplierCodePos: TcxGridDBColumn
        DataBinding.FieldName = 'SupplierCodePos'
        Width = 133
      end
      object grdLevPaketkoderDBTableView1SupplierCodeLength: TcxGridDBColumn
        DataBinding.FieldName = 'SupplierCodeLength'
        Width = 135
      end
    end
    object grdLevPaketkoderLevel1: TcxGridLevel
      GridView = grdLevPaketkoderDBTableView1
    end
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 328
    Top = 216
  end
  object cds_Verk: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'select C.ClientNo, C.ClientName, C.PktNrLevKod,'
      
        'C.PaketNoPos, C.PaketNoLength, C.SupplierCodePos, C.SupplierCode' +
        'Length,'
      'RT.RoleDescription AS ROLL'
      ''
      'FROM   dbo.Client        C'
      '       INNER JOIN dbo.ClientRole    R ON R.ClientNo = C.ClientNo'
      '       INNER JOIN dbo.RoleType    RT ON RT.RoleType = R.RoleType'
      ''
      'WHERE RT.RoleType = 9       '
      ''
      'Order by C.clientName'
      '')
    Left = 328
    Top = 112
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      ProviderFlags = []
      Size = 80
    end
    object cds_VerkPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_VerkPaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
      Origin = 'PaketNoPos'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VerkPaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
      Origin = 'PaketNoLength'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VerkSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
      Origin = 'SupplierCodePos'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VerkSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
      Origin = 'SupplierCodeLength'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VerkROLL: TStringField
      FieldName = 'ROLL'
      Origin = 'ROLL'
      ProviderFlags = []
      FixedChar = True
    end
  end
end
