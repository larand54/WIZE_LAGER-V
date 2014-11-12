object dmsContact: TdmsContact
  OldCreateOrder = False
  Left = 210
  Top = 116
  Height = 558
  Width = 841
  object provSuppliers: TDataSetProvider
    DataSet = sp_Suppliers
    Constraints = True
    Left = 56
    Top = 72
  end
  object sp_Suppliers: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'Client'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_Suppliers'
    Left = 56
    Top = 16
  end
  object sp_Regions: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'RoleType'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_Clients'
    Left = 392
    Top = 16
  end
  object provRegions: TDataSetProvider
    DataSet = sp_Regions
    Constraints = True
    Left = 392
    Top = 72
  end
  object sp_Users: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end>
    StoredProcName = 'vida_Users'
    Left = 488
    Top = 24
  end
  object provUsers: TDataSetProvider
    DataSet = sp_Users
    Constraints = True
    Left = 488
    Top = 72
  end
  object sp_Carriers: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end>
    StoredProcName = 'vida_Carriers'
    Left = 584
    Top = 24
  end
  object provCarriers: TDataSetProvider
    DataSet = sp_Carriers
    Constraints = True
    Left = 584
    Top = 72
  end
  object sp_Clients: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'RoleType'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_Clients'
    Left = 664
    Top = 24
  end
  object provClients: TDataSetProvider
    DataSet = sp_Clients
    Constraints = True
    Left = 664
    Top = 72
  end
  object sp_MarketRegions: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    StoredProcName = 'vida_MarketRegions'
    Left = 744
    Top = 24
  end
  object provMarketRegions: TDataSetProvider
    DataSet = sp_MarketRegions
    Constraints = True
    Left = 744
    Top = 72
  end
  object sp_Shippers: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end>
    StoredProcName = 'vida_Shippers'
    Left = 56
    Top = 272
    object sp_ShippersClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object sp_ShippersClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
  end
  object provShippers: TDataSetProvider
    DataSet = sp_Shippers
    Constraints = True
    Left = 56
    Top = 320
  end
  object cdsSuppliers: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 128
    object cdsSuppliersClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cdsSuppliersClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
  end
  object dsrcSuppliers: TDataSource
    DataSet = cdsSuppliers
    Left = 56
    Top = 176
  end
  object cdsShippers: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provShippers'
    Left = 56
    Top = 376
    object cdsShippersClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cdsShippersClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
  end
  object dsrcShippers: TDataSource
    DataSet = cdsShippers
    Left = 56
    Top = 424
  end
  object cdsOwners: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 376
    object cdsOwnersClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cdsOwnersClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
    object cdsOwnersClientCode: TStringField
      FieldName = 'ClientCode'
      Size = 3
    end
    object cdsOwnersSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
  end
  object dsrcOwners: TDataSource
    DataSet = cdsOwners
    Left = 296
    Top = 424
  end
  object cdsProducers: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provProducers'
    Left = 392
    Top = 376
    object cdsProducersClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cdsProducersClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
  end
  object dsrcProducers: TDataSource
    DataSet = cdsProducers
    Left = 392
    Top = 424
  end
  object sp_Owners: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end>
    StoredProcName = 'vida_Owners'
    Left = 296
    Top = 272
  end
  object provOwners: TDataSetProvider
    DataSet = sp_Owners
    Constraints = True
    Left = 296
    Top = 320
  end
  object sp_Cities: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end>
    StoredProcName = 'vida_Cities'
    Left = 640
    Top = 272
    object sp_CitiesCityNo: TIntegerField
      FieldName = 'CityNo'
    end
    object sp_CitiesCityName: TStringField
      FieldName = 'CityName'
      Size = 50
    end
  end
  object provCities: TDataSetProvider
    DataSet = sp_Cities
    Constraints = True
    Left = 640
    Top = 320
  end
  object cdsCities: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provCities'
    Left = 640
    Top = 368
    object cdsCitiesCityNo: TIntegerField
      FieldName = 'CityNo'
    end
    object cdsCitiesCityName: TStringField
      FieldName = 'CityName'
      Size = 50
    end
  end
  object dsrcCities: TDataSource
    DataSet = cdsCities
    Left = 640
    Top = 416
  end
  object sp_AddressAndReference: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'LO1'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_AddressAndReference_CSD'
    Left = 744
    Top = 272
  end
  object provAddressAndReference: TDataSetProvider
    DataSet = sp_AddressAndReference
    Constraints = True
    Left = 744
    Top = 320
  end
  object cdsAddressAndReference: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provAddressAndReference'
    Left = 744
    Top = 368
    object cdsAddressAndReferenceAddress: TStringField
      FieldName = 'Address'
      Size = 80
    end
    object cdsAddressAndReferenceDestination: TStringField
      FieldName = 'Destination'
      Size = 50
    end
    object cdsAddressAndReferenceReference: TStringField
      FieldName = 'Reference'
      Size = 30
    end
  end
  object dsrcAddressAndReference: TDataSource
    DataSet = cdsAddressAndReference
    Left = 744
    Top = 416
  end
  object sp_Producers: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end>
    StoredProcName = 'vida_Producers'
    Left = 392
    Top = 272
  end
  object provProducers: TDataSetProvider
    DataSet = sp_Producers
    Constraints = True
    Left = 392
    Top = 320
  end
  object sp_ClientCode: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_GetClientCode_CSD'
    Left = 224
    Top = 16
    object sp_ClientCodeClientCode: TStringField
      FieldName = 'ClientCode'
      Required = True
      Size = 3
    end
  end
  object sp_Customers: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end>
    StoredProcName = 'vida_Customers'
    Left = 144
    Top = 16
  end
  object provCustomers: TDataSetProvider
    DataSet = sp_Customers
    Constraints = True
    Left = 144
    Top = 64
  end
  object sp_Transfer: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_Transfer'
    Left = 392
    Top = 128
  end
  object sp_BookingTypes: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end>
    StoredProcName = 'vida_BookingType'
    Left = 568
    Top = 208
  end
  object sp_SR_Supplier: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'SalesRegionNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_SR_Suppliers'
    Left = 304
    Top = 16
  end
  object sq_invOwner: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'Select * from '
      'dbo.InvMillList'
      'Order by ClientName')
    Left = 752
    Top = 184
  end
  object sp_Int_and_Lego: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end>
    StoredProcName = 'vida_Intern_and_Lego'
    Left = 152
    Top = 208
  end
  object sp_ProductionUnits: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_ProductionUnit'
    Left = 568
    Top = 160
    object sp_ProductionUnitsProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Required = True
    end
    object sp_ProductionUnitsProductionUnitName: TStringField
      FieldName = 'ProductionUnitName'
      Required = True
      Size = 50
    end
  end
  object sq_ProductionUnit: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'Select *'
      'FROM dbo.ProductionUnit')
    Left = 496
    Top = 272
    object sq_ProductionUnitProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_ProductionUnitProductionUnitName: TStringField
      FieldName = 'ProductionUnitName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_ProductionUnitClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProductionUnitSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProductionUnitCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProductionUnitModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProductionUnitDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProductionUnitLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProductionUnitRegistrationPointNo: TIntegerField
      FieldName = 'RegistrationPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProductionUnitOnSticks: TIntegerField
      FieldName = 'OnSticks'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProductionUnitSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProductionUnitDIM_DIV: TIntegerField
      FieldName = 'DIM_DIV'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_ProductionUnit: TDataSetProvider
    DataSet = sq_ProductionUnit
    Constraints = True
    Left = 496
    Top = 320
  end
  object cds_ProductionUnit: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_ProductionUnit'
    AfterInsert = cds_ProductionUnitAfterInsert
    OnReconcileError = cds_ProductionUnitReconcileError
    Left = 496
    Top = 368
    object cds_ProductionUnitProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ProductionUnitProductionUnitName: TStringField
      FieldName = 'ProductionUnitName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_ProductionUnitClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitInventory: TStringField
      FieldKind = fkLookup
      FieldName = 'Inventory'
      LookupDataSet = cds_LogInv
      LookupKeyFields = 'LogicalInventoryPointNo'
      LookupResultField = 'Inventory'
      KeyFields = 'LogicalInventoryPointNo'
      ProviderFlags = []
      Size = 101
      Lookup = True
    end
    object cds_ProductionUnitRegistrationPointNo: TIntegerField
      FieldName = 'RegistrationPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitRegPoint: TStringField
      FieldKind = fkLookup
      FieldName = 'RegPoint'
      LookupDataSet = cds_RegPoints
      LookupKeyFields = 'RegPointNo'
      LookupResultField = 'RegPointName'
      KeyFields = 'RegistrationPointNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
    object cds_ProductionUnitOnSticks: TIntegerField
      FieldName = 'OnSticks'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_ProductionUnitDIM_DIV: TIntegerField
      FieldName = 'DIM_DIV'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object ds_ProductionUnit: TDataSource
    DataSet = cds_ProductionUnit
    Left = 496
    Top = 424
  end
  object sq_LogInv: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      
        'SELECT LIP.LogicalInventoryPointNo, LIP.LogicalInventoryName, PI' +
        'P.OwnerNo,'
      'Case'
      'WHEN Cy.CityName = LIP.LogicalInventoryName THEN'
      'Cy.CityName'
      'else'
      'Cy.CityName+'#39'/'#39'+LIP.LogicalInventoryName'
      'END AS Inventory'
      'FROM dbo.LOGICALINVENTORYPOINT LIP'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.City Cy ON Cy.CityNo = PIP.PhyInvPointNameNo')
    Left = 576
    Top = 273
  end
  object dsp_LogInv: TDataSetProvider
    DataSet = sq_LogInv
    Constraints = True
    Left = 576
    Top = 320
  end
  object cds_LogInv: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LogInv'
    Left = 576
    Top = 368
    object cds_LogInvLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object cds_LogInvLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Size = 50
    end
    object cds_LogInvOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object cds_LogInvInventory: TStringField
      FieldName = 'Inventory'
      Size = 101
    end
  end
  object sq_RegPoints: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'SELECT RegPointNo, RegPointName'
      'FROM dbo.RegistrationPoint'
      '')
    Left = 264
    Top = 113
  end
  object dsp_RegPoints: TDataSetProvider
    DataSet = sq_RegPoints
    Constraints = True
    Left = 264
    Top = 160
  end
  object cds_RegPoints: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_RegPoints'
    Left = 264
    Top = 208
    object cds_RegPointsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object cds_RegPointsRegPointName: TStringField
      FieldName = 'RegPointName'
      Size = 30
    end
  end
  object sp_PhysInvByCityNo: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'SalesRegionNo'
        ParamType = ptInput
      end>
    StoredProcName = 'Vida_PhysInvByCityNo'
    Left = 152
    Top = 160
  end
  object sq_PhysInv: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'SELECT * FROM'
      'dbo.PhysicalInventoryPoint PIP'
      '')
    Left = 136
    Top = 273
    object sq_PhysInvOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object sq_PhysInvPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PhysInvTypeOfInventory: TIntegerField
      FieldName = 'TypeOfInventory'
    end
    object sq_PhysInvPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
    end
    object sq_PhysInvSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
    object sq_PhysInvDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_PhysInvModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_PhysInvCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
  end
  object dsp_PhysInv: TDataSetProvider
    DataSet = sq_PhysInv
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 320
  end
  object cds_PhysInv: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PhysInv'
    AfterInsert = cds_PhysInvAfterInsert
    AfterPost = cds_PhysInvAfterPost
    AfterScroll = cds_PhysInvAfterScroll
    OnReconcileError = cds_PhysInvReconcileError
    Left = 136
    Top = 368
    object cds_PhysInvOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object cds_PhysInvPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_PhysInvTypeOfInventory: TIntegerField
      FieldName = 'TypeOfInventory'
    end
    object cds_PhysInvPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
    end
    object cds_PhysInvSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
    object cds_PhysInvDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_PhysInvModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_PhysInvCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_PhysInvORT: TStringField
      FieldKind = fkLookup
      FieldName = 'ORT'
      LookupDataSet = cdsCities
      LookupKeyFields = 'CityNo'
      LookupResultField = 'CityName'
      KeyFields = 'PhyInvPointNameNo'
      Size = 50
      Lookup = True
    end
  end
  object sq_LogicalInv: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <>
    SQL.Strings = (
      'SELECT * FROM'
      'dbo.LogicalInventoryPoint LIP')
    Left = 208
    Top = 273
    object sq_LogicalInvLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LogicalInvPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
    end
    object sq_LogicalInvLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Size = 50
    end
    object sq_LogicalInvSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
    object sq_LogicalInvDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_LogicalInvModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_LogicalInvCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
  end
  object dsp_LogicalInv: TDataSetProvider
    DataSet = sq_LogicalInv
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 208
    Top = 320
  end
  object cds_LogicalInv: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'LogicalInventoryPointNo'
        DataType = ftInteger
      end
      item
        Name = 'PhysicalInventoryPointNo'
        DataType = ftInteger
      end
      item
        Name = 'LogicalInventoryName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SequenceNo'
        DataType = ftInteger
      end
      item
        Name = 'DateCreated'
        DataType = ftTimeStamp
      end
      item
        Name = 'ModifiedUser'
        DataType = ftInteger
      end
      item
        Name = 'CreatedUser'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_LogicalInvIndex1'
        Fields = 'LogicalInventoryName'
      end>
    IndexName = 'cds_LogicalInvIndex1'
    Params = <>
    ProviderName = 'dsp_LogicalInv'
    StoreDefs = True
    AfterInsert = cds_LogicalInvAfterInsert
    OnReconcileError = cds_LogicalInvReconcileError
    Left = 208
    Top = 368
    object cds_LogicalInvLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LogicalInvPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
    end
    object cds_LogicalInvLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Required = True
      Size = 50
    end
    object cds_LogicalInvSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
    object cds_LogicalInvDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_LogicalInvModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_LogicalInvCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
  end
  object ds_PhysInv: TDataSource
    DataSet = cds_PhysInv
    Left = 136
    Top = 424
  end
  object ds_LogicalInv: TDataSource
    DataSet = cds_LogicalInv
    Left = 208
    Top = 424
  end
end
