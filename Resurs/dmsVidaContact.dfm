object dmsContact: TdmsContact
  OldCreateOrder = False
  Left = 73
  Top = 63
  Height = 677
  Width = 1230
  object provSuppliers: TDataSetProvider
    DataSet = sp_Suppliers
    Left = 32
    Top = 72
  end
  object sp_Suppliers: TSQLStoredProc
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Suppliers'
    Left = 32
    Top = 16
  end
  object sp_Regions: TSQLStoredProc
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Clients'
    Left = 488
    Top = 24
  end
  object provRegions: TDataSetProvider
    DataSet = sp_Regions
    Left = 488
    Top = 80
  end
  object sp_Users: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Users'
    Left = 560
    Top = 24
  end
  object provUsers: TDataSetProvider
    DataSet = sp_Users
    Left = 560
    Top = 72
  end
  object sp_Carriers: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Carriers'
    Left = 560
    Top = 128
  end
  object provCarriers: TDataSetProvider
    DataSet = sp_Carriers
    Left = 560
    Top = 176
  end
  object sp_Clients: TSQLStoredProc
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Clients'
    Left = 704
    Top = 16
  end
  object provClients: TDataSetProvider
    DataSet = sp_Clients
    Left = 704
    Top = 64
  end
  object sp_MarketRegions: TSQLStoredProc
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_MarketRegions'
    Left = 704
    Top = 120
  end
  object provMarketRegions: TDataSetProvider
    DataSet = sp_MarketRegions
    Left = 704
    Top = 168
  end
  object sp_Shippers: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Shippers'
    Left = 32
    Top = 288
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
    Left = 32
    Top = 336
  end
  object cdsSuppliers: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
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
    Left = 32
    Top = 176
  end
  object cdsShippers: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provShippers'
    Left = 32
    Top = 392
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
    Left = 32
    Top = 440
  end
  object cdsOwners: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 392
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
    Left = 192
    Top = 440
  end
  object cdsProducers: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provProducers'
    Left = 256
    Top = 392
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
    Left = 256
    Top = 440
  end
  object sp_Owners: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Owners'
    Left = 192
    Top = 288
  end
  object provOwners: TDataSetProvider
    DataSet = sp_Owners
    Left = 192
    Top = 336
  end
  object sp_Cities: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Cities'
    Left = 784
    Top = 240
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
    Left = 784
    Top = 288
  end
  object cdsCities: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provCities'
    Left = 784
    Top = 336
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
    Left = 784
    Top = 384
  end
  object sp_AddressAndReference: TSQLStoredProc
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_AddressAndReference_CSD'
    Left = 880
    Top = 240
  end
  object provAddressAndReference: TDataSetProvider
    DataSet = sp_AddressAndReference
    Left = 880
    Top = 288
  end
  object cdsAddressAndReference: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provAddressAndReference'
    Left = 880
    Top = 336
    object cdsAddressAndReferenceAddress: TStringField
      DisplayLabel = 'Adress'
      FieldName = 'Address'
      Size = 80
    end
    object cdsAddressAndReferenceDestination: TStringField
      FieldName = 'Destination'
      Size = 50
    end
    object cdsAddressAndReferenceReference: TStringField
      DisplayLabel = 'Referens'
      FieldName = 'Reference'
      Size = 30
    end
  end
  object dsrcAddressAndReference: TDataSource
    DataSet = cdsAddressAndReference
    Left = 880
    Top = 384
  end
  object sp_Producers: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Producers'
    Left = 256
    Top = 288
  end
  object provProducers: TDataSetProvider
    DataSet = sp_Producers
    Left = 256
    Top = 336
  end
  object sp_ClientCode: TSQLStoredProc
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_GetClientCode_CSD'
    Left = 200
    Top = 16
    object sp_ClientCodeClientCode: TStringField
      FieldName = 'ClientCode'
      Required = True
      Size = 3
    end
  end
  object sp_Customers: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Customers'
    Left = 104
    Top = 16
  end
  object provCustomers: TDataSetProvider
    DataSet = sp_Customers
    Left = 104
    Top = 64
  end
  object sp_BookingTypes: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_BookingType'
    Left = 376
    Top = 512
  end
  object sp_SR_Supplier: TSQLStoredProc
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_SR_Suppliers'
    Left = 304
    Top = 16
  end
  object sq_invOwner: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from '
      'dbo.InvMillList'
      'Order by ClientName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 32
    Top = 560
  end
  object sp_Int_and_Lego: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Intern_and_Lego'
    Left = 200
    Top = 168
  end
  object sq_PhysInv: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PARAM1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PH.PhysicalInventoryPointNo, CY.CITYNAME, CR.RoleType'
      'FROM'
      'PHYSICALINVENTORYPOINT PH, CITY CY, ClientRole CR'
      'WHERE'
      'PH.OwnerNo = :PARAM1'
      'AND CY.CITYNO = PH.PhyInvPointNameNo'
      'AND CY.CITYNAME <> '#39'Transfer'#39
      'AND CR.ClientNo = PH.OwnerNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 520
    Top = 289
    object sq_PhysInvPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
    end
    object sq_PhysInvCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Size = 50
    end
  end
  object sq_LogInv: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PARAM1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT LogicalInventoryPointNo, LogicalInventoryName'
      'FROM dbo.LOGICALINVENTORYPOINT'
      'WHERE'
      'PhysicalInventoryPointNo = :PARAM1'
      'AND SequenceNo = 1')
    SQLConnection = dmsConnector.SQLConnection
    Left = 520
    Top = 337
  end
  object sq_IsRoleType: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RoleType'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select CR.ClientNo from ClientRole CR'
      'Where'
      'CR.ClientNo = :ClientNo'
      'AND CR.RoleType = :RoleType'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 520
    Top = 392
    object sq_IsRoleTypeClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
  end
  object sp_PhysInvByCityNo: TSQLStoredProc
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'Vida_PhysInvByCityNo'
    Left = 200
    Top = 120
  end
  object sq_GetUserName: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select RTRIM(LastName)+'#39', '#39'+FirstName as FullName'
      'from Users'
      'where'
      'UserID = :UserID')
    SQLConnection = dmsConnector.SQLConnection
    Left = 488
    Top = 138
    object sq_GetUserNameFullName: TStringField
      FieldName = 'FullName'
      Size = 32
    end
  end
  object sq_Clients: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select C.ClientNo, C.ClientName, C.ClientCode, C.PktNrLevKod,'
      
        'C.PaketNoPos, C.PaketNoLength, C.SupplierCodePos, C.SupplierCode' +
        'Length'
      ''
      ' from dbo.client C'
      ''
      'Order by C.clientName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 584
    Top = 240
    object sq_ClientsClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_ClientsClientName: TStringField
      FieldName = 'ClientName'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sq_ClientsClientCode: TStringField
      FieldName = 'ClientCode'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sq_ClientsPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sq_ClientsPaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ClientsPaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ClientsSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ClientsSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspClients: TDataSetProvider
    DataSet = sq_Clients
    UpdateMode = upWhereKeyOnly
    Left = 584
    Top = 288
  end
  object cdsClient: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClients'
    Left = 584
    Top = 336
    object cdsClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsClientClientName: TStringField
      DisplayLabel = 'NAMN'
      FieldName = 'ClientName'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsClientClientCode: TStringField
      DisplayLabel = 'LEV.KOD I VIS'
      FieldName = 'ClientCode'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsClientPktNrLevKod: TStringField
      DisplayLabel = 'LEVERANT'#214'RENS ID'
      FieldName = 'PktNrLevKod'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsClientPaketNoPos: TIntegerField
      DisplayLabel = 'PAKETNRPOS'
      FieldName = 'PaketNoPos'
    end
    object cdsClientPaketNoLength: TIntegerField
      DisplayLabel = 'PAKETNRL'#196'NGD'
      FieldName = 'PaketNoLength'
    end
    object cdsClientSupplierCodePos: TIntegerField
      DisplayLabel = 'LEVKODPOS'
      FieldName = 'SupplierCodePos'
    end
    object cdsClientSupplierCodeLength: TIntegerField
      DisplayLabel = 'LEVKODL'#196'NGD'
      FieldName = 'SupplierCodeLength'
    end
  end
  object dsClient: TDataSource
    DataSet = cdsClient
    Left = 584
    Top = 384
  end
  object sq_City: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from city')
    SQLConnection = dmsConnector.SQLConnection
    Left = 720
    Top = 240
  end
  object dspCity: TDataSetProvider
    DataSet = sq_City
    Left = 720
    Top = 288
  end
  object cdsCity: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCity'
    Left = 720
    Top = 336
  end
  object dsCity: TDataSource
    DataSet = cdsCity
    Left = 720
    Top = 384
  end
  object sp_LocalShippers: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Local_Shippers'
    Left = 112
    Top = 288
    object IntegerField1: TIntegerField
      FieldName = 'ClientNo'
    end
    object StringField1: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
  end
  object cds_LocalShipper: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LocalShipper'
    Left = 112
    Top = 392
  end
  object dsp_LocalShipper: TDataSetProvider
    DataSet = sp_LocalShippers
    Left = 112
    Top = 336
  end
  object ds_LocalShipper: TDataSource
    DataSet = cds_LocalShipper
    Left = 112
    Top = 440
  end
  object sq_verk: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select C.ClientNo, C.ClientName, C.PktNrLevKod,'
      
        'C.PaketNoPos, C.PaketNoLength, C.SupplierCodePos, C.SupplierCode' +
        'Length'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      '  AND  R.RoleType = 9'
      ''
      'Order by C.clientName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 656
    Top = 240
  end
  object dsp_verk: TDataSetProvider
    DataSet = sq_verk
    Left = 656
    Top = 288
  end
  object cds_Verk: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_verk'
    Left = 656
    Top = 336
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 656
    Top = 384
  end
  object sp_GetPhysInv: TSQLStoredProc
    MaxBlobSize = -1
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
        Name = 'OwnerNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_PhysInventory'
    Left = 104
    Top = 112
  end
  object sp_VidaClientSearchName: TSQLStoredProc
    MaxBlobSize = -1
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
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_ClientSearchName'
    Left = 200
    Top = 216
  end
  object sq_GetLanguageID: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      'LanguageCode'
      'FROM dbo.ClientPreference'
      'WHERE ClientNo = :ClientNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 200
    Top = 72
    object sq_GetLanguageIDLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
    end
  end
  object sq_IsClientRoleType: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RoleType'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select ClientNo from '
      'dbo.ClientRole'
      'WHERE ClientNo =:ClientNo'
      'AND RoleType = :RoleType')
    SQLConnection = dmsConnector.SQLConnection
    Left = 136
    Top = 504
    object sq_IsClientRoleTypeClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
  end
  object sq_ClientToLL: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadingLocationNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select Distinct CL.ClientName, CL.ClientNo from dbo.Client_Loadi' +
        'ngLocation LL'
      'Inner Join city C on c.cityno = LL.PhyInvPointNameNo'
      'Inner Join client CL on cl.clientno = ll.clientno'
      'Inner Join ClientRole CR ON CR.clientno = cl.clientno'
      'WHERE PhyInvPointNameNo = :LoadingLocationNo'
      'AND (CR.RoleType = 6 OR CR.RoleType = 9)'
      'AND CL.ClientNo <> 741')
    SQLConnection = dmsConnector.SQLConnection
    Left = 792
    Top = 16
    object sq_ClientToLLClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
    object sq_ClientToLLClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
  end
  object dsp_ClientToLL: TDataSetProvider
    DataSet = sq_ClientToLL
    Left = 792
    Top = 64
  end
  object cds_ClientToLL: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_ClientToLL'
    ReadOnly = True
    Left = 792
    Top = 120
    object cds_ClientToLLClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
    object cds_ClientToLLClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
  end
  object ds_ClientToLL: TDataSource
    DataSet = cds_ClientToLL
    Left = 792
    Top = 168
  end
  object sq_RegPoints: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT RegPointNo, RegPointName, CreatedUser, ModifiedUser, Date' +
        'Created,'
      'SequenceNo'
      'FROM dbo.RegistrationPoint'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 336
    Top = 289
    object sq_RegPointsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_RegPointsRegPointName: TStringField
      FieldName = 'RegPointName'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_RegPointsCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_RegPointsModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_RegPointsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_RegPointsSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_RegPoints: TDataSetProvider
    DataSet = sq_RegPoints
    UpdateMode = upWhereKeyOnly
    Left = 336
    Top = 336
  end
  object cds_RegPoints: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_RegPoints'
    AfterInsert = cds_RegPointsAfterInsert
    OnReconcileError = cds_RegPointsReconcileError
    Left = 336
    Top = 384
    object cds_RegPointsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object cds_RegPointsRegPointName: TStringField
      DisplayLabel = 'M'#228'tpunkt'
      FieldName = 'RegPointName'
      Size = 30
    end
    object cds_RegPointsCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_RegPointsModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_RegPointsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_RegPointsSequenceNo: TIntegerField
      DisplayLabel = 'Produktion'
      FieldName = 'SequenceNo'
    end
  end
  object sq_ProductionUnit: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select *'
      'FROM dbo.ProductionUnit')
    SQLConnection = dmsConnector.SQLConnection
    Left = 424
    Top = 288
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
    Left = 424
    Top = 336
  end
  object cds_ProductionUnit: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_ProductionUnit'
    AfterInsert = cds_ProductionUnitAfterInsert
    OnReconcileError = cds_ProductionUnitReconcileError
    Left = 424
    Top = 384
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
    end
    object cds_ProductionUnitDIM_DIV: TIntegerField
      FieldName = 'DIM_DIV'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_ProductionUnit: TDataSource
    DataSet = cds_ProductionUnit
    Left = 424
    Top = 440
  end
  object ds_RegPoints: TDataSource
    DataSet = cds_RegPoints
    Left = 336
    Top = 432
  end
  object sp_MP_Agare: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_MP_Agare'
    Left = 400
    Top = 16
  end
  object sq_IsLego: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select R.RoleType'
      ''
      'FROM   dbo.ClientRole    R'
      ''
      'WHERE  R.ClientNo = :ClientNo'
      '  AND  R.RoleType = 6'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 488
    Top = 184
    object sq_IsLegoRoleType: TIntegerField
      FieldName = 'RoleType'
    end
  end
  object sq_PkgNoSerie: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from dbo.PkgNoSerie')
    SQLConnection = dmsConnector.SQLConnection
    Left = 304
    Top = 72
    object sq_PkgNoSerieClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PkgNoSerieCurrentPkgNo: TIntegerField
      FieldName = 'CurrentPkgNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PkgNoSerieHighestPkgNo: TIntegerField
      FieldName = 'HighestPkgNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_PkgNoSerie: TDataSetProvider
    DataSet = sq_PkgNoSerie
    UpdateMode = upWhereKeyOnly
    Left = 304
    Top = 120
  end
  object cds_PkgNoSerie: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ClientNo'
        DataType = ftInteger
      end
      item
        Name = 'CurrentPkgNo'
        DataType = ftInteger
      end
      item
        Name = 'HighestPkgNo'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_PkgNoSerieIndex1'
        Fields = 'ClientNo'
        Options = [ixPrimary, ixUnique]
      end>
    Params = <>
    ProviderName = 'dsp_PkgNoSerie'
    StoreDefs = True
    OnPostError = cds_PkgNoSeriePostError
    OnReconcileError = cds_PkgNoSerieReconcileError
    Left = 304
    Top = 168
    object cds_PkgNoSerieClientNo: TIntegerField
      FieldName = 'ClientNo'
      Required = True
    end
    object cds_PkgNoSerieCurrentPkgNo: TIntegerField
      FieldName = 'CurrentPkgNo'
      Required = True
    end
    object cds_PkgNoSerieHighestPkgNo: TIntegerField
      FieldName = 'HighestPkgNo'
      Required = True
    end
    object cds_PkgNoSerieVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = cds_VerkOchLego
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
  end
  object ds_PkgNoSerie: TDataSource
    DataSet = cds_PkgNoSerie
    Left = 304
    Top = 216
  end
  object ds_VerkOchLego: TDataSource
    DataSet = cds_VerkOchLego
    Left = 400
    Top = 216
  end
  object cds_VerkOchLego: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_verkOchLego'
    Left = 400
    Top = 168
    object cds_VerkOchLegoClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cds_VerkOchLegoClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
  end
  object dsp_verkOchLego: TDataSetProvider
    DataSet = sq_verkOchLego
    Left = 400
    Top = 120
  end
  object sq_verkOchLego: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select distinct C.ClientNo, C.ClientName'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      '  AND  ((R.RoleType = 9) or (R.RoleType = 6))'
      ''
      'Order by C.clientName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 400
    Top = 72
  end
  object sq_UserIssueReport: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InternalInvoiceNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete from dbo.UserIssueReport '
      'where'
      ' TRP_BREV_UserID =:UserID'
      'AND InternalInvoiceNo = :InternalInvoiceNo'
      ''
      
        'Insert into dbo.UserIssueReport   (TRP_BREV_UserID, InternalInvo' +
        'iceNo)'
      'Values (:UserID,:InternalInvoiceNo)')
    SQLConnection = dmsConnector.SQLConnection
    Left = 136
    Top = 560
  end
  object sq_GetSuppCodeByPktLevKod: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PktNrLevKod'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select C.ClientCode from dbo.client C'
      ''
      'Where C.PktNrLevKod = :PktNrLevKod')
    SQLConnection = dmsConnector.SQLConnection
    Left = 224
    Top = 576
    object sq_GetSuppCodeByPktLevKodClientCode: TStringField
      FieldName = 'ClientCode'
      Size = 3
    end
  end
  object sqClientPrefDocs: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DocType'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from dbo.ClientPrefDoc cpd'
      'Inner Join dbo.ReportNames rn on rn.ReportNo = cpd.ReportNo'
      'WHERE cpd.ClientNo = :ClientNo'
      'AND cpd.DocType = :DocType')
    SQLConnection = dmsConnector.SQLConnection
    Left = 528
    Top = 512
    object sqClientPrefDocsClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqClientPrefDocsDocType: TIntegerField
      FieldName = 'DocType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqClientPrefDocsReportName: TStringField
      FieldName = 'ReportName'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sqClientPrefDocsNoOfCopy: TIntegerField
      FieldName = 'NoOfCopy'
      ProviderFlags = [pfInUpdate]
    end
    object sqClientPrefDocspromptUser: TIntegerField
      FieldName = 'promptUser'
      ProviderFlags = [pfInUpdate]
    end
    object sqClientPrefDocscollated: TIntegerField
      FieldName = 'collated'
      ProviderFlags = [pfInUpdate]
    end
    object sqClientPrefDocsPrinterSetup: TIntegerField
      FieldName = 'PrinterSetup'
    end
  end
  object sq_IsVerk: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select R.RoleType'
      ''
      'FROM   dbo.ClientRole    R'
      ''
      'WHERE  R.ClientNo = :ClientNo'
      '  AND  R.RoleType = 9'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 456
    Top = 512
    object sq_IsVerkRoleType: TIntegerField
      FieldName = 'RoleType'
    end
  end
  object sq_GetPIPNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LIPNO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select Distinct LIP.PhysicalInventoryPointNo AS PIPNO'
      'FROM dbo.LogicalInventoryPoint LIP'
      ' WHERE LIP.LogicalInventoryPointNo = :LIPNO'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 456
    Top = 560
    object sq_GetPIPNoPIPNO: TIntegerField
      FieldName = 'PIPNO'
    end
  end
  object sq_Users: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select UserID,'
      'INITIALS+'#39' '#39'+RTrim(LastName) +'#39', '#39'+RTRIM(FirstName) AS Namn'
      'FROM dbo.Users')
    SQLConnection = dmsConnector.SQLConnection
    Left = 624
    Top = 24
  end
  object dsp_Users: TDataSetProvider
    DataSet = sq_Users
    Left = 624
    Top = 72
  end
  object cds_Users: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Users'
    Left = 624
    Top = 120
    object cds_UsersUserID: TSmallintField
      FieldName = 'UserID'
    end
    object cds_UsersNamn: TStringField
      FieldName = 'Namn'
      Size = 36
    end
  end
  object ds_Users: TDataSource
    DataSet = cds_Users
    Left = 624
    Top = 168
  end
  object sq_SalesGrp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * FROM dbo.SalesmanGroup')
    SQLConnection = dmsConnector.SQLConnection
    Left = 864
    Top = 16
    object sq_SalesGrpSalesGroupNo: TIntegerField
      FieldName = 'SalesGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_SalesGrpSalesGroupName: TStringField
      FieldName = 'SalesGroupName'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object dsp_SalesGrp: TDataSetProvider
    DataSet = sq_SalesGrp
    UpdateMode = upWhereKeyOnly
    Left = 864
    Top = 64
  end
  object cds_SalesGrp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_SalesGrp'
    Left = 864
    Top = 120
    object cds_SalesGrpSalesGroupNo: TIntegerField
      FieldName = 'SalesGroupNo'
    end
    object cds_SalesGrpSalesGroupName: TStringField
      DisplayLabel = 'S'#196'LJGRUPP'
      FieldName = 'SalesGroupName'
      Size = 15
    end
  end
  object ds_SalesGrp: TDataSource
    DataSet = cds_SalesGrp
    Left = 864
    Top = 168
  end
  object sq_SR: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select C.ClientName, C.ClientNo'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      '  AND  R.RoleType = 7'
      ''
      'Order by C.clientName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 928
    Top = 16
  end
  object dsp_SR: TDataSetProvider
    DataSet = sq_SR
    Left = 928
    Top = 64
  end
  object cds_SR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_SR'
    Left = 928
    Top = 112
    object cds_SRClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
    object cds_SRClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
  end
  object ds_SR: TDataSource
    DataSet = cds_SR
    Left = 928
    Top = 160
  end
  object sqGetEmailAdr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'clientno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select EmailAddress from dbo.contact co'
      'inner join dbo.ContactRole cr on cr.clientno = co.clientno '
      #9#9#9#9'and cr.contactno = co.contactno'
      'where co.clientno = :clientno'
      'AND cr.RoleType = 9')
    SQLConnection = dmsConnector.SQLConnection
    Left = 616
    Top = 512
    object sqGetEmailAdrEmailAddress: TStringField
      FieldName = 'EmailAddress'
      FixedChar = True
      Size = 50
    end
  end
  object sqGetFirstAndLastName: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select RTRIM(FirstName) +'#39' '#39'+ RTRIM(LastName) AS FullName'
      'from Users'
      'where'
      'UserID = :UserID'
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 616
    Top = 562
    object sqGetFirstAndLastNameFullName: TStringField
      FieldName = 'FullName'
      Size = 32
    end
  end
  object sq_GetPIPByClientNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select Distinct PIP.PhysicalInventoryPointNo AS PIPNO'
      'FROM dbo.PhysicalInventoryPoint PIP'
      ' WHERE PIP.OwnerNo = 741'
      'AND PIP.PhyInvPointNameNo in (Select PhyInvPointNameNo'
      'FROM dbo.PhysicalInventoryPoint PIP2'
      'WHERE OwnerNo = :OwnerNo)')
    SQLConnection = dmsConnector.SQLConnection
    Left = 32
    Top = 504
    object sq_GetPIPByClientNoPIPNO: TIntegerField
      FieldName = 'PIPNO'
    end
  end
  object sq_GetSpeditorEmail: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LONumber'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT EmailAddress'
      '        '
      'FROM   dbo.Booking  Bk'
      ''
      
        '  Inner Join dbo.Client  SC  ON   Bk.ShippingCompanyNo  = SC.Cli' +
        'entNo'
      '  Inner Join dbo.contact co ON co.ClientNo = SC.ClientNo'
      'inner join dbo.ContactRole cr on cr.clientno = co.clientno '
      #9#9#9#9'and cr.contactno = co.contactno'
      ''
      'WHERE  Bk.shippingplanno = :LONumber'
      ' AND cr.RoleType = 6')
    SQLConnection = dmsConnector.SQLConnection
    Left = 296
    Top = 520
    object sq_GetSpeditorEmailEmailAddress: TStringField
      FieldName = 'EmailAddress'
      FixedChar = True
      Size = 50
    end
  end
  object sq_Phys: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT distinct PH.PhyInvPointNameNo, CY.CITYNAME, PH.OwnerNo'
      'FROM'
      'Client SR'
      'Inner Join PHYSICALINVENTORYPOINT PH ON PH.OwnerNo = SR.ClientNo'
      'Inner Join CITY CY ON'#9'CY.CITYNO = PH.PhyInvPointNameNo'
      'WHERE PH.SequenceNo = 1'
      ''
      'ORDER BY CY.CITYNAME'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 992
    Top = 232
  end
  object dsp_PhysInvByCityNo: TDataSetProvider
    DataSet = sq_Phys
    Left = 992
    Top = 280
  end
  object cds_PhysInvByCityNo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PhysInvByCityNo'
    Left = 992
    Top = 336
    object cds_PhysInvByCityNoPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      Required = True
    end
    object cds_PhysInvByCityNoCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Required = True
      Size = 50
    end
    object cds_PhysInvByCityNoOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Required = True
    end
  end
  object ds_PhysInvByCityNo: TDataSource
    DataSet = cds_PhysInvByCityNo
    Left = 992
    Top = 384
  end
  object cds_LL_Verk: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PhysInvByCityNo'
    Left = 912
    Top = 440
    object cds_LL_VerkPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      Required = True
    end
    object cds_LL_VerkCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Required = True
      Size = 50
    end
    object cds_LL_VerkOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Required = True
    end
  end
  object ds_LL_Verk: TDataSource
    DataSet = cds_LL_Verk
    Left = 912
    Top = 488
  end
  object sq_Market: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select Distinct * '
      'FROM   dbo.MarketRegion'
      ''
      'Order by MarketRegionName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1000
    Top = 16
    object sq_MarketMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_MarketMarketRegionName: TStringField
      FieldName = 'MarketRegionName'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sq_MarketSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_MarketDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_MarketCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_MarketModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_Market: TDataSetProvider
    DataSet = sq_Market
    UpdateMode = upWhereKeyOnly
    Left = 1000
    Top = 64
  end
  object cds_Market: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Market'
    Left = 1000
    Top = 112
    object cds_MarketMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
    object cds_MarketMarketRegionName: TStringField
      DisplayLabel = 'MARKNADSREGION'
      FieldName = 'MarketRegionName'
      Size = 10
    end
    object cds_MarketSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
    object cds_MarketDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_MarketCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_MarketModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object ds_Market: TDataSource
    DataSet = cds_Market
    Left = 1000
    Top = 160
  end
  object sq_GetSR: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select C.SalesRegionNo'
      'from dbo.client C'
      'Where C.ClientNo = :ClientNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 232
    Top = 504
    object sq_GetSRSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
  end
  object sq_Currency: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CURRENCY')
    SQLConnection = dmsConnector.SQLConnection
    Left = 720
    Top = 456
    object sq_CurrencyCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_CurrencyCurrencyName: TStringField
      FieldName = 'CurrencyName'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sq_CurrencyDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CurrencyCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CurrencyModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspCurrency: TDataSetProvider
    DataSet = sq_Currency
    UpdateMode = upWhereKeyOnly
    Left = 720
    Top = 504
  end
  object cdsCurrency: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCurrency'
    Left = 720
    Top = 552
    object cdsCurrencyCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object cdsCurrencyCurrencyName: TStringField
      DisplayLabel = 'VALUTA'
      FieldName = 'CurrencyName'
      Size = 5
    end
    object cdsCurrencyDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cdsCurrencyCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cdsCurrencyModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object dsCurrency: TDataSource
    DataSet = cdsCurrency
    Left = 720
    Top = 600
  end
  object sq_DelTerms: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM'
      'dbo.DeliveryTerm')
    SQLConnection = dmsConnector.SQLConnection
    Left = 816
    Top = 449
    object sq_DelTermsDeliveryTerm_No: TIntegerField
      FieldName = 'DeliveryTerm_No'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_DelTermsDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      ProviderFlags = [pfInUpdate]
      Size = 21
    end
    object sq_DelTermsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_DelTermsCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_DelTermsModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_DelTermsSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_DelTermsDescription: TStringField
      FieldName = 'Description'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dspDelTerms: TDataSetProvider
    DataSet = sq_DelTerms
    UpdateMode = upWhereChanged
    Left = 816
    Top = 497
  end
  object cdsDelTerms: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDelTerms'
    Left = 816
    Top = 545
    object cdsDelTermsDeliveryTerm_No: TIntegerField
      FieldName = 'DeliveryTerm_No'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDelTermsDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      ProviderFlags = [pfInUpdate]
      Size = 21
    end
    object cdsDelTermsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDelTermsCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDelTermsModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDelTermsSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDelTermsDescription: TStringField
      FieldName = 'Description'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dsDelTerms: TDataSource
    DataSet = cdsDelTerms
    Left = 816
    Top = 593
  end
  object sq_PaymentTerm: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LanguageCode'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select pt.PaymentTermsNo,  pt.PaymentTermName, pt.Discount1, pt.' +
        'FreightInDiscount, '
      'pt.FreightInCommission, pt.CommissionPaidByCustomer,'
      'ptd.Description, ptd.LanguageCode'
      'from dbo.PaymentTerms pt, dbo.PaymentTermDesc ptd'
      'where'
      'pt.PaymentTermsNo = ptd.PaymentTermsNo '
      'AND ptd.LanguageCode = :LanguageCode')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1088
    Top = 233
  end
  object dspPaymentTerm: TDataSetProvider
    DataSet = sq_PaymentTerm
    Left = 1088
    Top = 281
  end
  object cdsPaymentTerm: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPaymentTerm'
    Left = 1088
    Top = 329
    object cdsPaymentTermPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
    end
    object cdsPaymentTermPaymentTermName: TStringField
      FieldName = 'PaymentTermName'
      Size = 50
    end
    object cdsPaymentTermDiscount1: TFloatField
      FieldName = 'Discount1'
    end
    object cdsPaymentTermFreightInDiscount: TIntegerField
      FieldName = 'FreightInDiscount'
    end
    object cdsPaymentTermFreightInCommission: TIntegerField
      FieldName = 'FreightInCommission'
    end
    object cdsPaymentTermCommissionPaidByCustomer: TIntegerField
      FieldName = 'CommissionPaidByCustomer'
    end
    object cdsPaymentTermDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object cdsPaymentTermLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
    end
  end
  object dsPaymentTerm: TDataSource
    DataSet = cdsPaymentTerm
    Left = 1088
    Top = 377
  end
  object dsPriceUnit: TDataSource
    DataSet = cdsPriceUnit
    Left = 1120
    Top = 161
  end
  object ds_volunit: TDataSource
    DataSet = cds_volunit
    Left = 1056
    Top = 161
  end
  object cds_volunit: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_volunit'
    Left = 1056
    Top = 113
    object cds_volunitVolumeUnit_No: TIntegerField
      FieldName = 'VolumeUnit_No'
    end
    object cds_volunitVolumeUnitName: TStringField
      FieldName = 'VolumeUnitName'
      Size = 10
    end
  end
  object cdsPriceUnit: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPriceUnit'
    Left = 1120
    Top = 113
    object cdsPriceUnitTemplateUnitNo: TIntegerField
      FieldName = 'TemplateUnitNo'
    end
    object cdsPriceUnitTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
    end
  end
  object dspPriceUnit: TDataSetProvider
    DataSet = sq_PriceUnit
    Left = 1120
    Top = 65
  end
  object sq_PriceUnit: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from dbo.PackUnit')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1120
    Top = 17
    object sq_PriceUnitTemplateUnitNo: TIntegerField
      FieldName = 'TemplateUnitNo'
    end
    object sq_PriceUnitTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
    end
  end
  object sq_volunit: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from dbo.UnitName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1056
    Top = 17
    object sq_volunitVolumeUnit_No: TIntegerField
      FieldName = 'VolumeUnit_No'
    end
    object sq_volunitVolumeUnitName: TStringField
      FieldName = 'VolumeUnitName'
      Size = 10
    end
  end
  object dsp_volunit: TDataSetProvider
    DataSet = sq_volunit
    Left = 1056
    Top = 65
  end
  object sq_GetPrefixByClientNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select C.ClientCode from dbo.client C'
      ''
      'Where C.ClientNo = :ClientNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 936
    Top = 568
    object sq_GetPrefixByClientNoClientCode: TStringField
      FieldName = 'ClientCode'
      FixedChar = True
      Size = 3
    end
  end
  object sq_LegoPris: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ProductionUnitNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select LPL.*, Users.UserName FROM dbo.LegoPrisLista LPL'
      'Inner Join dbo.Users on Users.UserID = LPL.ModifiedUser'
      'WHERE LPL.ProductionUnitNo = :ProductionUnitNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1136
    Top = 440
    object sq_LegoPrisProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LegoPrisATMM: TFloatField
      FieldName = 'ATMM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LegoPrisABMM: TFloatField
      FieldName = 'ABMM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LegoPrisNoOfSplit: TIntegerField
      FieldName = 'NoOfSplit'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LegoPrisCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LegoPrisModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LegoPrisDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LegoPrisDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LegoPrisPrice: TFloatField
      FieldName = 'Price'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LegoPrisPriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LegoPrisUserName: TStringField
      FieldName = 'UserName'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_LegoPris: TDataSetProvider
    DataSet = sq_LegoPris
    UpdateMode = upWhereKeyOnly
    Left = 1136
    Top = 488
  end
  object cds_LegoPris: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ProductionUnitNo'
    MasterFields = 'ProductionUnitNo'
    MasterSource = ds_SOLegoCost
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsp_LegoPris'
    AfterInsert = cds_LegoPrisAfterInsert
    BeforePost = cds_LegoPrisBeforePost
    Left = 1136
    Top = 536
    object cds_LegoPrisATMM: TFloatField
      FieldName = 'ATMM'
    end
    object cds_LegoPrisABMM: TFloatField
      FieldName = 'ABMM'
    end
    object cds_LegoPrisNoOfSplit: TIntegerField
      DisplayLabel = 'Lameller'
      FieldName = 'NoOfSplit'
    end
    object cds_LegoPrisCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_LegoPrisModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_LegoPrisDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_LegoPrisDateModified: TSQLTimeStampField
      DisplayLabel = #196'ndrad'
      FieldName = 'DateModified'
    end
    object cds_LegoPrisPrice: TFloatField
      DisplayLabel = 'Pris'
      FieldName = 'Price'
    end
    object cds_LegoPrisPriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
    end
    object cds_LegoPrisUserName: TStringField
      DisplayLabel = #196'ndrad av'
      FieldName = 'UserName'
    end
    object cds_LegoPrisPrisenhet: TStringField
      FieldKind = fkLookup
      FieldName = 'Prisenhet'
      LookupDataSet = cdsPriceUnit
      LookupKeyFields = 'TemplateUnitNo'
      LookupResultField = 'TemplateUnitName'
      KeyFields = 'PriceUnitNo'
      Lookup = True
    end
    object cds_LegoPrisProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
    end
  end
  object ds_LegoPris: TDataSource
    DataSet = cds_LegoPris
    Left = 1136
    Top = 584
  end
  object sq_SOLegoCost: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select pu.* from  '
      'dbo.ProductionUnit pu'
      'WHERE'
      'pu.ClientNo in (Select CR.ClientNo FROM '
      'dbo.ClientRole CR WHERE'
      'CR.ClientNo = pu.ClientNo'
      'AND CR.RoleType = 6)'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1056
    Top = 440
    object sq_SOLegoCostProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_SOLegoCostProductionUnitName: TStringField
      FieldName = 'ProductionUnitName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_SOLegoCostClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostRegistrationPointNo: TIntegerField
      FieldName = 'RegistrationPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostOnSticks: TIntegerField
      FieldName = 'OnSticks'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostDIM_DIV: TIntegerField
      FieldName = 'DIM_DIV'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostTerminalNo: TIntegerField
      FieldName = 'TerminalNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostLIPGroupNo: TIntegerField
      FieldName = 'LIPGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostCost: TFloatField
      FieldName = 'Cost'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostCapitalCost: TFloatField
      FieldName = 'CapitalCost'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostOverheadCost: TFloatField
      FieldName = 'OverheadCost'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostSalaryCost: TFloatField
      FieldName = 'SalaryCost'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SOLegoCostLegoCostPerAM3: TFloatField
      FieldName = 'LegoCostPerAM3'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_SOLegoCost: TDataSetProvider
    DataSet = sq_SOLegoCost
    UpdateMode = upWhereKeyOnly
    Left = 1056
    Top = 488
  end
  object cds_SOLegoCost: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_SOLegoCost'
    AfterInsert = cds_SOLegoCostAfterInsert
    Left = 1056
    Top = 536
    object cds_SOLegoCostProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_SOLegoCostProductionUnitName: TStringField
      FieldName = 'ProductionUnitName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_SOLegoCostClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostRegistrationPointNo: TIntegerField
      FieldName = 'RegistrationPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostOnSticks: TIntegerField
      FieldName = 'OnSticks'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostDIM_DIV: TIntegerField
      FieldName = 'DIM_DIV'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostTerminalNo: TIntegerField
      FieldName = 'TerminalNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostLIPGroupNo: TIntegerField
      FieldName = 'LIPGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostCost: TFloatField
      FieldName = 'Cost'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostCapitalCost: TFloatField
      FieldName = 'CapitalCost'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostOverheadCost: TFloatField
      FieldName = 'OverheadCost'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostSalaryCost: TFloatField
      FieldName = 'SalaryCost'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostLegoCostPerAM3: TFloatField
      DisplayLabel = 'Kostnad per AM3'
      FieldName = 'LegoCostPerAM3'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostLegoverk: TStringField
      FieldKind = fkLookup
      FieldName = 'Legoverk'
      LookupDataSet = cds_LegoVerk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
    object cds_SOLegoCostMtpunkt: TStringField
      FieldKind = fkLookup
      FieldName = 'M'#228'tpunkt'
      LookupDataSet = cds_RegPoints
      LookupKeyFields = 'RegPointNo'
      LookupResultField = 'RegPointName'
      KeyFields = 'RegistrationPointNo'
      Size = 30
      Lookup = True
    end
  end
  object ds_SOLegoCost: TDataSource
    DataSet = cds_SOLegoCost
    Left = 1056
    Top = 584
  end
  object cds_LegoVerk: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LegoVerk'
    Left = 1160
    Top = 328
    object cds_LegoVerkClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cds_LegoVerkClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
  end
  object dsp_LegoVerk: TDataSetProvider
    DataSet = sq_LegoVerk
    Left = 1160
    Top = 280
  end
  object sq_LegoVerk: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select Distinct C.ClientNo, C.ClientName FROM'
      'dbo.Client C'
      'Inner Join dbo.ClientRole CR on CR.ClientNo = C.ClientNo'
      ''
      'WHERE'
      'CR.RoleType = 6'
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 1160
    Top = 232
  end
  object sq_IsIntVerk: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select C.IntVerk'
      'from dbo.client C'
      'WHERE C.ClientNo = :ClientNo'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 584
    Top = 440
    object sq_IsIntVerkIntVerk: TIntegerField
      FieldName = 'IntVerk'
    end
  end
end
