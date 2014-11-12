object fLBperDay: TfLBperDay
  Left = 229
  Top = 107
  Width = 870
  Height = 603
  Caption = 'Lagerbalans logg'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object grdLBperDay: TcxGrid
    Left = 0
    Top = 41
    Width = 862
    Height = 240
    Align = alTop
    TabOrder = 1
    object grdLBperDayDBBandedTableView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_LBPerDay
      DataController.KeyFieldNames = 'InvDate'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###,###,###.0'
          Kind = skSum
          FieldName = 'H'#228'ndelserNM3'
          Column = grdLBperDayDBBandedTableView1HndelserNM3
        end
        item
          Format = '##########'
          Kind = skSum
          FieldName = 'H'#228'ndelserPaket'
          Column = grdLBperDayDBBandedTableView1HndelserPaket
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      Bands = <
        item
          Caption = 'Ing'#229'ende lager'
          Width = 437
        end
        item
          Caption = 'H'#228'ndelser'
          Width = 423
        end>
      object grdLBperDayDBBandedTableView1InvDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InvDate'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLBperDayDBBandedTableView1Pkt: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Pkt'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdLBperDayDBBandedTableView1NM3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NM3'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdLBperDayDBBandedTableView1HndelserPaket: TcxGridDBBandedColumn
        DataBinding.FieldName = 'H'#228'ndelserPaket'
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLBperDayDBBandedTableView1HndelserNM3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'H'#228'ndelserNM3'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object grdLBperDayLevel1: TcxGridLevel
      GridView = grdLBperDayDBBandedTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 289
    Width = 862
    Height = 287
    Align = alClient
    TabOrder = 2
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 860
      Height = 41
      Align = alTop
      TabOrder = 0
    end
    object grdDetailPerDay: TcxGrid
      Left = 1
      Top = 42
      Width = 860
      Height = 244
      Align = alClient
      TabOrder = 1
      object grdDetailPerDayDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds_DtlPerDay
        DataController.KeyFieldNames = 'GroupName;Item'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'NM3'
            Column = grdDetailPerDayDBTableView1NM3
          end
          item
            Format = '##########'
            Kind = skSum
            FieldName = 'Paket'
            Column = grdDetailPerDayDBTableView1Paket
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
                Column = grdDetailPerDayDBTableView1GroupName
              end>
            SummaryItems = <
              item
                Format = '#,###,###,###.0'
                Kind = skSum
                FieldName = 'NM3'
                Column = grdDetailPerDayDBTableView1NM3
                DisplayText = 'NM3 '
              end
              item
                Format = '##########'
                Kind = skSum
                FieldName = 'Paket'
                Column = grdDetailPerDayDBTableView1Paket
                DisplayText = 'Paket '
              end>
          end>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        object grdDetailPerDayDBTableView1GroupName: TcxGridDBColumn
          DataBinding.FieldName = 'GroupName'
          Visible = False
          GroupIndex = 0
          Width = 150
        end
        object grdDetailPerDayDBTableView1Item: TcxGridDBColumn
          DataBinding.FieldName = 'Item'
          Width = 223
        end
        object grdDetailPerDayDBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Width = 78
        end
        object grdDetailPerDayDBTableView1InvDate: TcxGridDBColumn
          DataBinding.FieldName = 'InvDate'
          Width = 195
        end
        object grdDetailPerDayDBTableView1Paket: TcxGridDBColumn
          DataBinding.FieldName = 'Paket'
          Width = 105
        end
        object grdDetailPerDayDBTableView1NM3: TcxGridDBColumn
          DataBinding.FieldName = 'NM3'
          Width = 107
        end
      end
      object grdDetailPerDayLevel1: TcxGridLevel
        GridView = grdDetailPerDayDBTableView1
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 281
    Width = 862
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salTop
    Control = grdLBperDay
    Color = clMaroon
    ParentColor = False
  end
  object sq_LBPerDay: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'StartDate'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EndDate'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select ins.InvDate AS InvDate, SUM(NoOfPkgs) AS Pkt, SUM(ins.NM3' +
        ') AS NM3,'
      '(Select isnull(Sum(inb.NoOfPkgs),0) From dbo.InvBalII inb WHERE'
      'inb.LipNo = ins.LogicalInventoryPointNo'
      'AND inb.InvDate = ins.InvDate) AS H'#228'ndelserPaket,'
      '(Select isnull(Sum(inb.NM3),0) From dbo.InvBalII inb WHERE'
      'inb.LipNo = ins.LogicalInventoryPointNo'
      'AND inb.InvDate = ins.InvDate) AS H'#228'ndelserNM3,'
      'ins.LogicalInventoryPointNo '
      'FROM dbo.InvenStatusII ins '
      'where'
      'ins.LogicalInventoryPointNo = :LIPNo'
      'AND ins.InvDate >= :StartDate'
      'AND ins.InvDate <= :EndDate'
      'Group By ins.InvDate, ins.LogicalInventoryPointNo'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 72
    Top = 104
  end
  object dsp_LBPerDay: TDataSetProvider
    DataSet = sq_LBPerDay
    Left = 72
    Top = 144
  end
  object cds_LBPerDay: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LBPerDay'
    Left = 72
    Top = 184
    object cds_LBPerDayInvDate: TSQLTimeStampField
      DisplayLabel = 'Datum'
      FieldName = 'InvDate'
    end
    object cds_LBPerDayPkt: TIntegerField
      DisplayLabel = 'Paket'
      FieldName = 'Pkt'
    end
    object cds_LBPerDayNM3: TFloatField
      FieldName = 'NM3'
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LBPerDayHndelserPaket: TIntegerField
      DisplayLabel = 'Paket'
      FieldName = 'H'#228'ndelserPaket'
    end
    object cds_LBPerDayHndelserNM3: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'H'#228'ndelserNM3'
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LBPerDayLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
  end
  object ds_LBPerDay: TDataSource
    DataSet = cds_LBPerDay
    OnDataChange = ds_LBPerDayDataChange
    Left = 72
    Top = 224
  end
  object sq_DtlPerDay: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'StartDate'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select inb.GroupName, inb.Item, inb.LoadNo AS ID, inb.InvDate, i' +
        'sNull(SUM(inb.NoOfPkgs),0) AS Paket,'
      'isNull(SUM(inb.AM3),0) AS NM3 from InvBalII inb'
      'WHERE inb.LIPNo = :LIPNo'
      'AND inb.InvDate = :StartDate'
      'Group By inb.GroupName, inb.Item, inb.LoadNo, inb.InvDate')
    SQLConnection = dmsConnector.SQLConnection
    Left = 64
    Top = 377
  end
  object dsp_DtlPerDay: TDataSetProvider
    DataSet = sq_DtlPerDay
    Left = 64
    Top = 425
  end
  object cds_DtlPerDay: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_DtlPerDay'
    Left = 64
    Top = 473
    object cds_DtlPerDayGroupName: TStringField
      DisplayLabel = 'Grupp'
      FieldName = 'GroupName'
    end
    object cds_DtlPerDayItem: TStringField
      FieldName = 'Item'
      Size = 30
    end
    object cds_DtlPerDayID: TIntegerField
      FieldName = 'ID'
    end
    object cds_DtlPerDayInvDate: TSQLTimeStampField
      DisplayLabel = 'Datum'
      FieldName = 'InvDate'
    end
    object cds_DtlPerDayPaket: TIntegerField
      FieldName = 'Paket'
    end
    object cds_DtlPerDayNM3: TFloatField
      FieldName = 'NM3'
      DisplayFormat = '#,###,###,###.0'
    end
  end
  object ds_DtlPerDay: TDataSource
    DataSet = cds_DtlPerDay
    Left = 64
    Top = 521
  end
end
