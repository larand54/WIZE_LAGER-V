object dm_DryKiln: Tdm_DryKiln
  OldCreateOrder = False
  Height = 522
  Width = 1231
  object ds_Kilns: TDataSource
    DataSet = cds_Kilns
    Left = 32
    Top = 184
  end
  object ds_KilnChargeHdr: TDataSource
    DataSet = cds_KilnChargeHdr
    OnDataChange = ds_KilnChargeHdrDataChange
    Left = 120
    Top = 184
  end
  object ds_KilnChargeRow: TDataSource
    DataSet = cds_KilnChargeRow
    Left = 224
    Top = 184
  end
  object ds_KilnProps: TDataSource
    DataSet = cds_KilnProps
    Left = 320
    Top = 184
  end
  object ds_PIP: TDataSource
    DataSet = cds_PIP
    Left = 64
    Top = 400
  end
  object ds_LIP: TDataSource
    DataSet = cds_LIP
    Left = 120
    Top = 400
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 240
    Top = 408
  end
  object mtPkgNos: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.12.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 544
    Top = 24
    object mtPkgNosPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtPkgNosSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
  end
  object ds_SumKilnChargeRows: TDataSource
    DataSet = cds_SumKilnChargeRows
    Left = 328
    Top = 400
  end
  object cds_SumKilnChargeRows: TFDQuery
    MasterSource = ds_KilnChargeHdr
    MasterFields = 'KilnChargeNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select distinct kr.KilnChargeNo, prl.ProductDisplayName AS Produ' +
        'kt, ptl.PcsPerLength AS [Antal per l'#228'ngd], Count(kr.PackageNo) A' +
        'S Paket,'
      'SUM(pt.Totalm3Actual) AS AM3, pt.productno'
      ''
      'From'
      'dbo.KilnChargeRows kr'
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = kr.PackageNo'
      #9#9#9#9'AND pn.SupplierCode = kr.SupplierCode'
      #9
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      'Inner Join dbo.Product prl on prl.productno = pt.productno'
      ''
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      ''
      'WHERE kr.KilnChargeNo = :KilnChargeNo'
      ''
      
        'Group By prl.ProductDisplayName, ptl.PcsPerLength, kr.KilnCharge' +
        'No, pt.productno'
      '')
    Left = 328
    Top = 352
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SumKilnChargeRowsKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SumKilnChargeRowsProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 150
    end
    object cds_SumKilnChargeRowsAntalperlängd: TStringField
      FieldName = 'Antal per l'#228'ngd'
      Origin = '[Antal per l'#228'ngd]'
      Size = 255
    end
    object cds_SumKilnChargeRowsPaket: TIntegerField
      FieldName = 'Paket'
      Origin = 'Paket'
      ReadOnly = True
    end
    object cds_SumKilnChargeRowsAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
    object cds_SumKilnChargeRowsproductno: TIntegerField
      FieldName = 'productno'
      Origin = 'productno'
    end
  end
  object cds_Verk: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName, C.Sales' +
        'RegionNo'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND   ((R.RoleType = 9) '
      'OR (R.RoleType = 6))'
      ''
      'Order by C.clientName'
      '')
    Left = 240
    Top = 352
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_VerkSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object cds_VerkSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
  end
  object cds_LIP: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT  Distinct LogicalInventoryPointNo AS LIPNo, LogicalInvent' +
        'oryName AS LIPName,'
      'PhysicalInventoryPointNo AS PIPNo'
      'FROM dbo.LOGICALINVENTORYPOINT'
      'WHERE'
      'SequenceNo = 1'
      ''
      'Order By LogicalInventoryName '
      '')
    Left = 120
    Top = 352
    object cds_LIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_LIPLIPName: TStringField
      FieldName = 'LIPName'
      Origin = 'LIPName'
      Size = 50
    end
    object cds_LIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
  end
  object cds_PIP: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT Distinct PH.PhysicalInventoryPointNo AS PIPNO, CY.CITYNAM' +
        'E AS PIPNAME, PH.OwnerNo'
      'FROM'
      'PHYSICALINVENTORYPOINT PH, CITY CY'
      'WHERE'
      'CY.CITYNO = PH.PhyInvPointNameNo'
      'AND CY.CITYNAME <> '#39'Transfer'#39
      'AND PH.SequenceNo = 1'
      ''
      'Order By  CY.CITYNAME'
      '')
    Left = 64
    Top = 352
    object cds_PIPPIPNO: TIntegerField
      FieldName = 'PIPNO'
      Origin = 'PIPNO'
      Required = True
    end
    object cds_PIPPIPNAME: TStringField
      FieldName = 'PIPNAME'
      Origin = 'PIPNAME'
      Size = 50
    end
    object cds_PIPOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
  end
  object cds_KilnProps: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.KilnProps'
      'WHERE ClientNo = :ClientNo'
      '')
    Left = 320
    Top = 136
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_KilnPropsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnPropsKiln_PIPNo: TIntegerField
      FieldName = 'Kiln_PIPNo'
      Origin = 'Kiln_PIPNo'
      OnChange = cds_KilnPropsKiln_PIPNoChange
    end
    object cds_KilnPropsBeforeKiln_LIPNo: TIntegerField
      FieldName = 'BeforeKiln_LIPNo'
      Origin = 'BeforeKiln_LIPNo'
    end
    object cds_KilnPropsKiln_LIPNo: TIntegerField
      FieldName = 'Kiln_LIPNo'
      Origin = 'Kiln_LIPNo'
    end
    object cds_KilnPropsAfterKiln_LIPNo: TIntegerField
      FieldName = 'AfterKiln_LIPNo'
      Origin = 'AfterKiln_LIPNo'
    end
    object cds_KilnPropsStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'Lagerst'#228'lle'
      LookupDataSet = cds_PIP
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'Kiln_PIPNo'
      Size = 50
      Lookup = True
    end
    object cds_KilnPropsStringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'F'#246'retork'
      LookupDataSet = cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'BeforeKiln_LIPNo'
      Size = 30
      Lookup = True
    end
    object cds_KilnPropsStringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'I_tork'
      LookupDataSet = cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'Kiln_LIPNo'
      Size = 30
      Lookup = True
    end
    object cds_KilnPropsStringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'EfterTork'
      LookupDataSet = cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'AfterKiln_LIPNo'
      Size = 30
      Lookup = True
    end
    object cds_KilnPropsStringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
  end
  object cds_KilnChargeRow: TFDQuery
    AfterInsert = cds_KilnChargeRowAfterInsert
    MasterSource = ds_KilnChargeHdr
    MasterFields = 'KilnChargeNo'
    DetailFields = 'KilnChargeNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'Select kcr.*, P.ProductDisplayName FROM dbo.KilnChargeRows kcr'
      'inner join dbo.PackageNumber pn on pn.PackageNo = kcr.PackageNo'
      'and pn.SupplierCode = kcr.SupplierCode'
      
        'inner join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      'inner join dbo.Product P on P.ProductNo = pt.ProductNo'
      'WHERE KilnChargeNo = :KilnChargeNo'
      '')
    Left = 224
    Top = 136
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cds_KilnChargeRowKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnChargeRowPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnChargeRowSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_KilnChargeRowNoOfPkgs: TIntegerField
      FieldName = 'NoOfPkgs'
      Origin = 'NoOfPkgs'
    end
    object cds_KilnChargeRowDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_KilnChargeRowCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_KilnChargeRowVagnNo: TIntegerField
      FieldName = 'VagnNo'
      Origin = 'VagnNo'
    end
    object cds_KilnChargeRowRowNo: TIntegerField
      FieldName = 'RowNo'
      Origin = 'RowNo'
    end
    object cds_KilnChargeRowProductDisplayName: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      ProviderFlags = []
      Size = 150
    end
  end
  object cds_KilnChargeHdr: TFDQuery
    AfterInsert = cds_KilnChargeHdrAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select KCH.*, KP.Kiln_PIPNo, KP.[BeforeKiln_LIPNo], KP.[Kiln_LIP' +
        'No], KP.[AfterKiln_LIPNo]'
      'FROM dbo.KilnChargeHdr KCH'
      'Inner Join dbo.KilnProps KP on KP.ClientNo = KCH.ClientNo'
      'WHERE KCH.ClientNo = :ClientNo')
    Left = 120
    Top = 136
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_KilnChargeHdrClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_KilnChargeHdrKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnChargeHdrKilnNo: TIntegerField
      FieldName = 'KilnNo'
      Origin = 'KilnNo'
    end
    object cds_KilnChargeHdrStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
      Origin = 'StartTime'
    end
    object cds_KilnChargeHdrEndTime: TSQLTimeStampField
      FieldName = 'EndTime'
      Origin = 'EndTime'
    end
    object cds_KilnChargeHdrPlannedDuration: TFloatField
      FieldName = 'PlannedDuration'
      Origin = 'PlannedDuration'
    end
    object cds_KilnChargeHdrCreatedDate: TSQLTimeStampField
      FieldName = 'CreatedDate'
      Origin = 'CreatedDate'
    end
    object cds_KilnChargeHdrStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'Tork'
      LookupDataSet = cds_Kilns
      LookupKeyFields = 'KilnNo'
      LookupResultField = 'KilnName'
      KeyFields = 'KilnNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
    object cds_KilnChargeHdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_KilnChargeHdrStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_KilnChargeHdrNote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      BlobType = ftMemo
    end
    object cds_KilnChargeHdrKiln_PIPNo: TIntegerField
      FieldName = 'Kiln_PIPNo'
      Origin = 'Kiln_PIPNo'
      ProviderFlags = []
    end
    object cds_KilnChargeHdrBeforeKiln_LIPNo: TIntegerField
      FieldName = 'BeforeKiln_LIPNo'
      Origin = 'BeforeKiln_LIPNo'
      ProviderFlags = []
    end
    object cds_KilnChargeHdrKiln_LIPNo: TIntegerField
      FieldName = 'Kiln_LIPNo'
      Origin = 'Kiln_LIPNo'
      ProviderFlags = []
    end
    object cds_KilnChargeHdrAfterKiln_LIPNo: TIntegerField
      FieldName = 'AfterKiln_LIPNo'
      Origin = 'AfterKiln_LIPNo'
      ProviderFlags = []
    end
  end
  object cds_Kilns: TFDQuery
    AfterInsert = cds_KilnsAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.Kilns'
      'WHERE ClientNo = :ClientNo'
      '')
    Left = 32
    Top = 136
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_KilnsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnsKilnNo: TIntegerField
      FieldName = 'KilnNo'
      Origin = 'KilnNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnsKilnName: TStringField
      FieldName = 'KilnName'
      Origin = 'KilnName'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_KilnsNoOfVagnar: TIntegerField
      DisplayLabel = 'Antal vagnar i tork'
      FieldName = 'NoOfVagnar'
      Origin = 'NoOfVagnar'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KilnsTypeOfKiln: TIntegerField
      DisplayLabel = 'Typ av tork'
      FieldName = 'TypeOfKiln'
      Origin = 'TypeOfKiln'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KilnsNoOfVagnarBefore: TIntegerField
      DisplayLabel = 'Antal vagnar f'#246're tork'
      FieldName = 'NoOfVagnarBefore'
      Origin = 'NoOfVagnarBefore'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_SeTKilnToComplete: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.KilnChargeHdr'
      'Set Status = 1, '
      'EndTime = :EndTime'
      'WHERE KilnChargeHdr.KilnChargeNo = :KilnChargeNo'
      '')
    Left = 544
    Top = 384
    ParamData = <
      item
        Name = 'ENDTIME'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_SeTKilnToCompleteKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_SeTKilnToCompleteKilnNo: TIntegerField
      FieldName = 'KilnNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SeTKilnToCompleteStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SeTKilnToCompleteEndTime: TSQLTimeStampField
      FieldName = 'EndTime'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SeTKilnToCompletePlannedDuration: TFloatField
      FieldName = 'PlannedDuration'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SeTKilnToCompleteCreatedDate: TSQLTimeStampField
      FieldName = 'CreatedDate'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SeTKilnToCompleteCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SeTKilnToCompleteClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SeTKilnToCompleteStatus: TIntegerField
      FieldName = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SeTKilnToCompleteNote: TMemoField
      FieldName = 'Note'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
  end
  object sq_GetPrevKilnChargeNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select KilnChargeNo'
      'From dbo.KilnChargeHdr'
      'WHERE KilnNo = :KilnNo'
      'AND Status = 0'
      '')
    Left = 544
    Top = 432
    ParamData = <
      item
        Name = 'KILNNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPrevKilnChargeNoKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_MoveToAfterKiln: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.PackageNumber'
      'Set LogicalInventoryPointNo = :LIPNo'
      'FROM dbo.KilnChargeRows'
      
        'Inner Join dbo.PackageNumber on PackageNumber.PackageNo = KilnCh' +
        'argeRows.PackageNo'
      #9#9#9#9'AND PackageNumber.SupplierCode = KilnChargeRows.SupplierCode'
      'WHERE KilnChargeNo = :KilnChargeNo'
      '')
    Left = 544
    Top = 328
    ParamData = <
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetPkgNosOfKilnCharge: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct pn.PackageNo, pn.SupplierCode'
      'From'
      'dbo.KilnChargeRows kr'
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = kr.PackageNo'
      #9#9#9#9'AND pn.SupplierCode = kr.SupplierCode'
      ''
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      ''
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      ''
      'WHERE kr.KilnChargeNo = :KilnChargeNo'
      'AND pt.productno = :ProductNo'
      'AND ptl.PcsPerLength = :PcsPerLength'
      '')
    Left = 544
    Top = 280
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PCSPERLENGTH'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetPkgNosOfKilnChargePackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetPkgNosOfKilnChargeSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object sq_DeleteKChargeRows: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.KilnChargeRows'
      'WHERE'
      'KilnChargeNo = :KilnChargeNo'
      'AND PackageNo = :PackageNo'
      'AND SupplierCode = :SupplierCode'
      '')
    Left = 544
    Top = 232
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object sq_MovePkgsToLip: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update PackageNumber'
      'Set LogicalInventoryPointNo = :LIPNo'
      'WHERE'
      'PackageNo = :PackageNo'
      'AND SupplierCode = :SupplierCode'
      '')
    Left = 544
    Top = 136
    ParamData = <
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object sq_GetPkgNos: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pn.PackageNo, pn.SupplierCode From'
      'dbo.Product p'
      'Inner Join dbo.PackageType pt on pt.productNo = p.ProductNo'
      
        'Inner Join dbo.PackageTypeDetail ptd on ptd.PackageTypeNo = pt.P' +
        'ackageTypeNo'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = ptd.Prod' +
        'uctLengthNo'
      
        'Inner Join dbo.PackageNumber pn on pn.packageTypeNo = pt.package' +
        'TypeNo'
      ''
      'WHERE pl.ActualLengthMM = :AL'
      'AND pt.ProductNo = :ProductNo'
      'AND pn.LogicalInventoryPointNo = :LIPNo'
      'AND pn.Status = 1'
      ''
      'Group By pn.PackageNo, pn.SupplierCode '
      ''
      'Having Count(ptd.PackageTypeNo) = 1'
      ' '
      '')
    Left = 544
    Top = 80
    ParamData = <
      item
        Name = 'AL'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPkgNosPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object sq_GetPkgNosSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object sq_LastKilnChNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select  max(KilnChargeNo) AS KilnChargeNo FROM dbo.KilnChargeHdr'
      'WHERE ClientNo = :ClientNo'
      '')
    Left = 456
    Top = 80
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LastKilnChNoKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object sq_GetPkgNosNoLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pn.PackageNo, pn.SupplierCode From'
      'dbo.Product p'
      'Inner Join dbo.PackageType pt on pt.productNo = p.ProductNo'
      
        'Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecN' +
        'o'
      
        'Inner Join dbo.PackageTypeDetail ptd on ptd.PackageTypeNo = pt.P' +
        'ackageTypeNo'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = ptd.Prod' +
        'uctLengthNo'
      
        'Inner Join dbo.PackageNumber pn on pn.packageTypeNo = pt.package' +
        'TypeNo'
      ''
      'WHERE pt.ProductNo = :ProductNo'
      'AND pn.LogicalInventoryPointNo = :LIPNo'
      'AND pn.Status = 1'
      ''
      'AND ('
      
        '(ptd.ProductLengthNo not in (Select ProductLengthNo from dbo.Pro' +
        'ductLengthGroup'
      'WHERE GroupNo = :GroupNo))'
      ''
      'or (ls.NoOfLengths > 1 )'
      ''
      ')'
      '')
    Left = 680
    Top = 72
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'GROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPkgNosNoLengthPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object sq_GetPkgNosNoLengthSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object cds_KilnChargeHeader: TFDQuery
    AfterInsert = cds_KilnChargeHeaderAfterInsert
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_KC'
        Fields = 'KilnNo'
      end>
    IndexName = 'cds_KC'
    MasterSource = ds_Kilns
    MasterFields = 'KilnNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select KCH.*'
      'FROM dbo.KilnChargeHdr KCH'
      'Inner join dbo.Kilns K on K.KilnNo = KCH.KilnNo'
      'WHERE KCH.KilnNo = :KilnNo')
    Left = 120
    Top = 24
    ParamData = <
      item
        Name = 'KILNNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_KilnChargeHeaderClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_KilnChargeHeaderKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnChargeHeaderKilnNo: TIntegerField
      FieldName = 'KilnNo'
      Origin = 'KilnNo'
    end
    object cds_KilnChargeHeaderStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
      Origin = 'StartTime'
    end
    object cds_KilnChargeHeaderEndTime: TSQLTimeStampField
      FieldName = 'EndTime'
      Origin = 'EndTime'
    end
    object cds_KilnChargeHeaderPlannedDuration: TFloatField
      FieldName = 'PlannedDuration'
      Origin = 'PlannedDuration'
    end
    object cds_KilnChargeHeaderCreatedDate: TSQLTimeStampField
      FieldName = 'CreatedDate'
      Origin = 'CreatedDate'
    end
    object cds_KilnChargeHeaderCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_KilnChargeHeaderStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_KilnChargeHeaderNote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      BlobType = ftMemo
    end
    object cds_KilnChargeHeaderInfo: TStringField
      FieldName = 'Info'
      Origin = 'Info'
      Size = 50
    end
  end
  object ds_KilnChargeHeader: TDataSource
    DataSet = cds_KilnChargeHeader
    Left = 120
    Top = 72
  end
end
