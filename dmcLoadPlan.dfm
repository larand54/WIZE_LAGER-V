object dmLoadPlan: TdmLoadPlan
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 643
  Width = 1038
  object ds_LoadPlanHdr: TDataSource
    DataSet = cds_LoadPlanHdr
    Left = 48
    Top = 32
  end
  object ds_LoadPlanRow: TDataSource
    DataSet = cds_LoadPlanRow
    Left = 152
    Top = 32
  end
  object ds_LoadPlanDest: TDataSource
    DataSet = cds_LoadPlanDest
    OnDataChange = ds_LoadPlanDestDataChange
    Left = 248
    Top = 32
  end
  object ds_PhysInv: TDataSource
    DataSet = cds_PhysInv
    Left = 48
    Top = 248
  end
  object ds_LogInv: TDataSource
    DataSet = cds_LogInv
    Left = 152
    Top = 248
  end
  object dsCarrier: TDataSource
    DataSet = cdsCarrier
    Left = 344
    Top = 32
  end
  object ds_SalesRegions: TDataSource
    DataSet = cds_SalesRegions
    Left = 248
    Top = 248
  end
  object dsMarketRegions: TDataSource
    DataSet = cdsMarketRegions
    Left = 360
    Top = 248
  end
  object ds_PigEntry: TDataSource
    DataSet = cds_PigEntry
    Left = 592
    Top = 88
  end
  object ds_PigHdr: TDataSource
    DataSet = cds_PigHdr
    OnDataChange = ds_PigHdrDataChange
    Left = 744
    Top = 88
  end
  object ds_PigNames: TDataSource
    DataSet = cds_PigNames
    Left = 672
    Top = 88
  end
  object mtInventeringsTyp: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'InvTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'InvType'
        DataType = ftString
        Size = 25
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 608
    Top = 176
    object mtInventeringsTypInvTypeNo: TIntegerField
      FieldName = 'InvTypeNo'
    end
    object mtInventeringsTypInvType: TStringField
      FieldName = 'InvType'
      Size = 25
    end
  end
  object ds_LoadPlanHdrList: TDataSource
    DataSet = cds_LoadPlanHdrList
    Left = 488
    Top = 232
  end
  object ds_PigHdrList: TDataSource
    DataSet = cds_PigHdrList
    Left = 943
    Top = 88
  end
  object cds_LoadPlanHdr: TFDQuery
    AfterInsert = cds_LoadPlanHdrAfterInsert
    CachedUpdates = True
    BeforeApplyUpdates = cds_LoadPlanHdrBeforeApplyUpdates
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.LoadPlanHdr'
      'WHERE LoadingNo = :LoadingNo'
      '')
    Left = 48
    Top = 80
    ParamData = <
      item
        Name = 'LOADINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadPlanHdrMARKNAD: TStringField
      FieldKind = fkLookup
      FieldName = 'MARKNAD'
      LookupDataSet = cdsMarketRegions
      LookupKeyFields = 'MarketRegionNo'
      LookupResultField = 'MarketRegionName'
      KeyFields = 'MarketRegionNo'
      ProviderFlags = []
      Size = 10
      Lookup = True
    end
    object cds_LoadPlanHdrLoadingNo: TIntegerField
      FieldName = 'LoadingNo'
      Origin = 'LoadingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadPlanHdrStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanHdrSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanHdrPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanHdrLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanHdrLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanHdrVesselNo: TIntegerField
      FieldName = 'VesselNo'
      Origin = 'VesselNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanHdrETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanHdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanHdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanHdrPrintDate: TSQLTimeStampField
      FieldName = 'PrintDate'
      Origin = 'PrintDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanHdrMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanHdrNote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_LoadPlanHdrInvStartNo: TIntegerField
      FieldName = 'InvStartNo'
      Origin = 'InvStartNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanHdrInvEndNo: TIntegerField
      FieldName = 'InvEndNo'
      Origin = 'InvEndNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanHdrStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'B'#197'T'
      LookupDataSet = cdsCarrier
      LookupKeyFields = 'CarrierNo'
      LookupResultField = 'CarrierName'
      KeyFields = 'VesselNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
  end
  object cds_LoadPlanRow: TFDQuery
    AfterInsert = cds_LoadPlanRowAfterInsert
    BeforePost = cds_LoadPlanRowBeforePost
    OnCalcFields = cds_LoadPlanRowCalcFields
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.LoadPlanRow'
    SQL.Strings = (
      'Select LPR.LoadingNo,'
      'LPR.LoadPlanDestRowNo,'
      'LPR.PackageTypeNo,'
      'LPR.NoOfPkgsPlanned,'
      'LPR.NoOfPkgsLoaded,'
      'LPR.NoOfPkgsLeft,'
      'LPR.NoOfPkgsConfirmedDest,'
      'LPR.PktKvar,'
      'LPR.ARPkgs AS AR,'
      'C.CityName AS ORT,'
      'ptpp.ProductDisplayName AS Produkt,'
      'ptpp.LANGD,'
      'ptpp.BarCodeID,'
      'ptpp.GradeStamp,'
      'ptpp.S'#246'knamn,'
      'ptpp.PcsPerPkg AS PPP'
      ''
      'FROM dbo.LoadPlanRow LPR'
      'Inner Join dbo.LoadPlanHdr LPH on LPH.LoadingNo = LPR.LoadingNo'
      
        'Left Outer Join dbo.PIGGroup pigStart on pigStart.PIGGroupNo = L' +
        'PH.InvStartNo'
      
        'Left Outer Join dbo.PIGGroup pigEnd on pigEnd.PIGGroupNo = LPH.I' +
        'nvEndNo'
      'Inner Join dbo.LoadPlanDest LPD ON LPD.LoadingNo = LPR.LoadingNo'
      
        '                                AND LPD.LoadPlanDestRowNo = LPR.' +
        'LoadPlanDestRowNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LPD.PIPNo'
      'Inner Join dbo.City c on C.CityNo = PIP.PhyInvPointNameNo'
      
        'Left Outer Join dbo.PktTypeByPP ptpp on ptpp.PkgCodePPNo = LPR.P' +
        'ackageTypeNo'
      'WHERE LPR.LoadingNo = -1'
      'AND LPR.LoadPlanDestRowNo = -1'
      '')
    Left = 152
    Top = 80
    object cds_LoadPlanRowTotLager: TIntegerField
      DisplayLabel = 'Totalt'
      FieldKind = fkCalculated
      FieldName = 'TotLager'
      ProviderFlags = []
      Calculated = True
    end
    object cds_LoadPlanRowLoadingNo: TIntegerField
      FieldName = 'LoadingNo'
      Origin = 'LoadingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadPlanRowLoadPlanDestRowNo: TIntegerField
      FieldName = 'LoadPlanDestRowNo'
      Origin = 'LoadPlanDestRowNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadPlanRowPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadPlanRowNoOfPkgsPlanned: TIntegerField
      FieldName = 'NoOfPkgsPlanned'
      Origin = 'NoOfPkgsPlanned'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanRowNoOfPkgsLoaded: TIntegerField
      FieldName = 'NoOfPkgsLoaded'
      Origin = 'NoOfPkgsLoaded'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanRowNoOfPkgsLeft: TIntegerField
      FieldName = 'NoOfPkgsLeft'
      Origin = 'NoOfPkgsLeft'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanRowNoOfPkgsConfirmedDest: TIntegerField
      FieldName = 'NoOfPkgsConfirmedDest'
      Origin = 'NoOfPkgsConfirmedDest'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanRowPktKvar: TIntegerField
      FieldName = 'PktKvar'
      Origin = 'PktKvar'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanRowAR: TIntegerField
      FieldName = 'AR'
      Origin = 'AR'
      ProviderFlags = []
    end
    object cds_LoadPlanRowORT: TStringField
      FieldName = 'ORT'
      Origin = 'ORT'
      ProviderFlags = []
      Size = 50
    end
    object cds_LoadPlanRowProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      ProviderFlags = []
      Size = 112
    end
    object cds_LoadPlanRowLANGD: TStringField
      FieldName = 'LANGD'
      Origin = 'LANGD'
      ProviderFlags = []
      Size = 7
    end
    object cds_LoadPlanRowBarCodeID: TStringField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
      ProviderFlags = []
      FixedChar = True
    end
    object cds_LoadPlanRowGradeStamp: TStringField
      FieldName = 'GradeStamp'
      Origin = 'GradeStamp'
      ProviderFlags = []
      FixedChar = True
    end
    object cds_LoadPlanRowSöknamn: TStringField
      FieldName = 'S'#246'knamn'
      Origin = '[S'#246'knamn]'
      ProviderFlags = []
      Size = 40
    end
    object cds_LoadPlanRowPPP: TIntegerField
      FieldName = 'PPP'
      Origin = 'PPP'
      ProviderFlags = []
    end
    object cds_LoadPlanRowPaketDifferens: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PaketDifferens'
      ProviderFlags = []
      Calculated = True
    end
  end
  object cds_LoadPlanDest: TFDQuery
    AfterInsert = cds_LoadPlanDestAfterInsert
    BeforePost = cds_LoadPlanDestBeforePost
    BeforeScroll = cds_LoadPlanDestBeforeScroll
    AfterScroll = cds_LoadPlanDestAfterScroll
    CachedUpdates = True
    MasterSource = ds_LoadPlanHdr
    MasterFields = 'LoadingNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.LoadPlanDest'
      'WHERE LoadingNo = :LoadingNo'
      '')
    Left = 248
    Top = 80
    ParamData = <
      item
        Name = 'LOADINGNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cds_LoadPlanDestLoadingNo: TIntegerField
      FieldName = 'LoadingNo'
      Origin = 'LoadingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadPlanDestLoadPlanDestRowNo: TIntegerField
      FieldName = 'LoadPlanDestRowNo'
      Origin = 'LoadPlanDestRowNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadPlanDestPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanDestLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanDestDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanDestCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanDestETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanDestSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPlanDestFörsäljningsregion: TStringField
      FieldKind = fkLookup
      FieldName = 'F'#246'rs'#228'ljningsregion'
      LookupDataSet = cds_SalesRegions
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SalesRegionNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_LoadPlanDestLAGERSTÄLLE: TStringField
      FieldKind = fkLookup
      FieldName = 'LAGERST'#196'LLE'
      LookupDataSet = cds_PhysInv
      LookupKeyFields = 'PIPNo'
      LookupResultField = 'LAGERST'#196'LLE'
      KeyFields = 'PIPNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_LoadPlanDestLAGERGRUPP: TStringField
      FieldKind = fkLookup
      FieldName = 'LAGERGRUPP'
      LookupDataSet = cds_LogInv
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LAGERGRUPP'
      KeyFields = 'LIPNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
  end
  object cdsCarrier: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select *'
      'From dbo.Carrier'
      '')
    Left = 344
    Top = 80
    object cdsCarrierCarrierNo: TIntegerField
      FieldName = 'CarrierNo'
      Origin = 'CarrierNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCarrierCarrierName: TStringField
      FieldName = 'CarrierName'
      Origin = 'CarrierName'
      FixedChar = True
      Size = 50
    end
    object cdsCarrierSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cdsCarrierCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsCarrierModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsCarrierDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cds_PkgTypes: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.PktTypeByPP'
      '')
    Left = 440
    Top = 40
    object cds_PkgTypesPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      Required = True
    end
    object cds_PkgTypesProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cds_PkgTypesProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      ReadOnly = True
      Size = 112
    end
    object cds_PkgTypesProdSort: TStringField
      FieldName = 'ProdSort'
      Origin = 'ProdSort'
      ReadOnly = True
      Size = 102
    end
    object cds_PkgTypesLANGD: TStringField
      FieldName = 'LANGD'
      Origin = 'LANGD'
      Size = 7
    end
    object cds_PkgTypesoThickness: TStringField
      FieldName = 'oThickness'
      Origin = 'oThickness'
      Size = 7
    end
    object cds_PkgTypesoWidth: TStringField
      FieldName = 'oWidth'
      Origin = 'oWidth'
      Size = 7
    end
    object cds_PkgTypesGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_PkgTypesSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object cds_PkgTypesSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object cds_PkgTypesBarCodeID: TStringField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
      ReadOnly = True
      Required = True
      FixedChar = True
    end
    object cds_PkgTypesGradeStamp: TStringField
      FieldName = 'GradeStamp'
      Origin = 'GradeStamp'
      ReadOnly = True
      Required = True
      FixedChar = True
    end
    object cds_PkgTypesExternkod: TStringField
      FieldName = 'Externkod'
      Origin = 'Externkod'
    end
    object cds_PkgTypesSöknamn: TStringField
      FieldName = 'S'#246'knamn'
      Origin = '[S'#246'knamn]'
      Required = True
      Size = 40
    end
    object cds_PkgTypesPcsPerPkg: TIntegerField
      FieldName = 'PcsPerPkg'
      Origin = 'PcsPerPkg'
    end
    object cds_PkgTypesPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      Required = True
    end
    object cds_PkgTypesMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
  end
  object cdsMarketRegions: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT M.MarketRegionNo, M.MarketRegionName'
      'FROM dbo.MarketRegion M'
      'Order By M.MarketRegionName'
      ''
      '')
    Left = 360
    Top = 176
    object cdsMarketRegionsMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMarketRegionsMarketRegionName: TStringField
      FieldName = 'MarketRegionName'
      Origin = 'MarketRegionName'
      FixedChar = True
      Size = 10
    end
  end
  object cds_PigEntry: TFDQuery
    AfterInsert = cds_PigEntryAfterInsert
    BeforePost = cds_PigEntryBeforePost
    BeforeScroll = cds_PigEntryBeforeScroll
    OnCalcFields = cds_PigEntryCalcFields
    OnPostError = cds_PigEntryPostError
    CachedUpdates = True
    MasterSource = ds_PigHdr
    MasterFields = 'PIGGroupNo'
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.PigEntry'
    SQL.Strings = (
      
        'Select distinct pe.*, pt.Totalm3Actual AS AM3, pp.productdisplay' +
        'name, pp.LANGD,'
      'pp.BarCodeID,'
      'pp.GradeStamp,'
      'pp.PcsPerPkg'
      'FROM dbo.PigEntry pe'
      
        '-- Inner Join'#9'dbo.PkgTypePPNo ptp ON ptp.PackageTypeNo = pn.Pack' +
        'ageTypeNo'
      
        'INNER JOIN dbo.Packagecode_printparams'#9'PPs ON pps.PkgCodePPNo = ' +
        'pe.PackageTypeNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pps.PackageT' +
        'ypeNo'
      
        '-- Left Outer Join  dbo.PktTypeByPP pp on pp.PackageTypeNo = pps' +
        '.PackageTypeNo'
      
        'Left Outer Join  dbo.PktTypeByPP pp on pp.PkgCodePPNo = pps.PkgC' +
        'odePPNo'
      'AND pp.MarketRegionNo = 10'
      'WHERE pe.PIGGroupNo = :PIGGroupNo'
      ''
      '')
    Left = 592
    Top = 32
    ParamData = <
      item
        Name = 'PIGGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PigEntryLoadedPkgs: TIntegerField
      DisplayLabel = 'Utlastade'
      FieldKind = fkCalculated
      FieldName = 'LoadedPkgs'
      ProviderFlags = []
      Calculated = True
    end
    object cds_PigEntryTotalAM3: TFloatField
      DisplayLabel = 'AM3'
      FieldKind = fkCalculated
      FieldName = 'TotalAM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###.00'
      Calculated = True
    end
    object cds_PigEntryPIGGroupNo: TIntegerField
      FieldName = 'PIGGroupNo'
      Origin = 'PIGGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PigEntryPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PigEntryPigNoPkgs1: TIntegerField
      FieldName = 'PigNoPkgs1'
      Origin = 'PigNoPkgs1'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PigEntryPigNoPkgs2: TIntegerField
      FieldName = 'PigNoPkgs2'
      Origin = 'PigNoPkgs2'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PigEntryPigNoPkgs3: TIntegerField
      FieldName = 'PigNoPkgs3'
      Origin = 'PigNoPkgs3'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PigEntryPigNoPkgs4: TIntegerField
      FieldName = 'PigNoPkgs4'
      Origin = 'PigNoPkgs4'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PigEntryPigNoPkgs5: TIntegerField
      FieldName = 'PigNoPkgs5'
      Origin = 'PigNoPkgs5'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PigEntryPigNoPkgs6: TIntegerField
      FieldName = 'PigNoPkgs6'
      Origin = 'PigNoPkgs6'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PigEntryPigNoPkgs7: TIntegerField
      FieldName = 'PigNoPkgs7'
      Origin = 'PigNoPkgs7'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PigEntryPigNoPkgs8: TIntegerField
      FieldName = 'PigNoPkgs8'
      Origin = 'PigNoPkgs8'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PigEntryPigNoPkgs9: TIntegerField
      FieldName = 'PigNoPkgs9'
      Origin = 'PigNoPkgs9'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PigEntryPigNoPkgs10: TIntegerField
      FieldName = 'PigNoPkgs10'
      Origin = 'PigNoPkgs10'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PigEntrySumCountedPkgs: TIntegerField
      FieldName = 'SumCountedPkgs'
      Origin = 'SumCountedPkgs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PigEntrySumSystemPkgs: TIntegerField
      FieldName = 'SumSystemPkgs'
      Origin = 'SumSystemPkgs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PigEntryAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
    end
    object cds_PigEntryproductdisplayname: TStringField
      FieldName = 'productdisplayname'
      Origin = 'productdisplayname'
      ProviderFlags = []
      ReadOnly = True
      Size = 112
    end
    object cds_PigEntryLANGD: TStringField
      FieldName = 'LANGD'
      Origin = 'LANGD'
      ProviderFlags = []
      Size = 7
    end
    object cds_PigEntryBarCodeID: TStringField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
    end
    object cds_PigEntryGradeStamp: TStringField
      FieldName = 'GradeStamp'
      Origin = 'GradeStamp'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
    end
    object cds_PigEntryPcsPerPkg: TIntegerField
      FieldName = 'PcsPerPkg'
      Origin = 'PcsPerPkg'
      ProviderFlags = []
    end
    object cds_PigEntryCountedPkgs: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CountedPkgs'
      ProviderFlags = []
      Calculated = True
    end
  end
  object cds_PigNames: TFDQuery
    AfterInsert = cds_PigNamesAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.PigName'
      'Order By PigNo'
      '')
    Left = 672
    Top = 32
    object cds_PigNamesPigNo: TIntegerField
      FieldName = 'PigNo'
      Origin = 'PigNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PigNamesPigName: TStringField
      FieldName = 'PigName'
      Origin = 'PigName'
      Size = 10
    end
    object cds_PigNamesActive: TIntegerField
      FieldName = 'Active'
      Origin = 'Active'
    end
  end
  object cds_PigHdr: TFDQuery
    AfterInsert = cds_PigHdrAfterInsert
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_PigHdrIndex01'
        Fields = 'PIGGroupNo'
      end>
    IndexName = 'cds_PigHdrIndex01'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.PigGroup'
      'WHERE PIGGroupNo = :PIGGroupNo'
      '')
    Left = 744
    Top = 32
    ParamData = <
      item
        Name = 'PIGGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PigHdrPIGGroupNo: TIntegerField
      FieldName = 'PIGGroupNo'
      Origin = 'PIGGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PigHdrLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_PigHdrPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object cds_PigHdrInvDate: TSQLTimeStampField
      FieldName = 'InvDate'
      Origin = 'InvDate'
    end
    object cds_PigHdrNote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      BlobType = ftMemo
    end
    object cds_PigHdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PigHdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PigHdrStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_PigHdrInvTypeNo: TIntegerField
      FieldName = 'InvTypeNo'
      Origin = 'InvTypeNo'
    end
    object cds_PigHdrSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_PigHdrStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'LAGERST'#196'LLE'
      LookupDataSet = cds_PhysInv
      LookupKeyFields = 'PIPNo'
      LookupResultField = 'LAGERST'#196'LLE'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object cds_PigHdrStringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'LAGERGRUPP'
      LookupDataSet = cds_LogInv
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LAGERGRUPP'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object cds_PigHdrStringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'Inventeringstyp'
      LookupDataSet = mtInventeringsTyp
      LookupKeyFields = 'InvTypeNo'
      LookupResultField = 'InvType'
      KeyFields = 'InvTypeNo'
      Size = 25
      Lookup = True
    end
  end
  object cds_GetPkgsPerType: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pp.PkgCodePPNo AS PackageTypeNo, Count(*)  AS NoOfPkgs'
      'From dbo.PackageNumber pn'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      
        '-- Inner Join'#9'dbo.PkgTypePPNo ptp ON ptp.PackageTypeNo = pn.Pack' +
        'ageTypeNo'
      
        'INNER JOIN dbo.Packagecode_printparams'#9'PP ON pp.PkgCodePPNo = pt' +
        '.ShrinkWrap'
      'where'
      'pn.LogicalInventoryPointNo = :LIPNo AND'
      'pn.Status = 1'
      'Group By pp.PkgCodePPNo'
      '')
    Left = 840
    Top = 32
    ParamData = <
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetPkgsPerTypePackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      Required = True
    end
    object cds_GetPkgsPerTypeNoOfPkgs: TIntegerField
      FieldName = 'NoOfPkgs'
      Origin = 'NoOfPkgs'
      ReadOnly = True
    end
  end
  object cds_PigHdrList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select pg.*, C.CityName AS Lagerst'#228'lle, LIP.LogicalInventoryName' +
        ' AS Lagergrupp FROM dbo.PigGroup pg'
      
        'INNER JOIN  dbo.LogicalInventoryPoint  LIP ON  LIP.LogicalInvent' +
        'oryPointNo  = pg.LIPNo'
      
        'INNER JOIN  dbo.PhysicalInventoryPoint PIP ON  PIP.PhysicalInven' +
        'toryPointNo = LIP.PhysicalInventoryPointNo'
      'INNER JOIN  dbo.City C on C.CityNo = PIP.PhyInvPointNameNo'
      '')
    Left = 944
    Top = 32
    object cds_PigHdrListInventeringstyp: TStringField
      FieldKind = fkLookup
      FieldName = 'Inventeringstyp'
      LookupDataSet = mtInventeringsTyp
      LookupKeyFields = 'InvTypeNo'
      LookupResultField = 'InvType'
      KeyFields = 'InvTypeNo'
      Size = 25
      Lookup = True
    end
    object cds_PigHdrListPIGGroupNo: TIntegerField
      FieldName = 'PIGGroupNo'
      Origin = 'PIGGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PigHdrListLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_PigHdrListPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object cds_PigHdrListInvDate: TSQLTimeStampField
      FieldName = 'InvDate'
      Origin = 'InvDate'
    end
    object cds_PigHdrListNote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      BlobType = ftMemo
    end
    object cds_PigHdrListDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PigHdrListCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PigHdrListStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_PigHdrListInvTypeNo: TIntegerField
      FieldName = 'InvTypeNo'
      Origin = 'InvTypeNo'
    end
    object cds_PigHdrListSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_PigHdrListLagerställe: TStringField
      FieldName = 'Lagerst'#228'lle'
      Origin = '[Lagerst'#228'lle]'
      Size = 50
    end
    object cds_PigHdrListLagergrupp: TStringField
      FieldName = 'Lagergrupp'
      Origin = 'Lagergrupp'
      Size = 50
    end
  end
  object cds_PhysInv: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT Distinct PH.PhysicalInventoryPointNo AS PIPNo, CY.CITYNAM' +
        'E AS LAGERST'#196'LLE, PH.OwnerNo'
      'FROM'
      'dbo.PHYSICALINVENTORYPOINT PH'
      'Inner Join dbo.CITY CY on CY.CITYNO = PH.PhyInvPointNameNo'
      ''
      'Order By CY.CITYNAME'
      '')
    Left = 48
    Top = 176
    object cds_PhysInvPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      Required = True
    end
    object cds_PhysInvLAGERSTÄLLE: TStringField
      FieldName = 'LAGERST'#196'LLE'
      Origin = '[LAGERST'#196'LLE]'
      Size = 50
    end
    object cds_PhysInvOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
  end
  object cds_LogInv: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT Distinct LogicalInventoryPointNo AS LIPNo, LogicalInvento' +
        'ryName AS LAGERGRUPP,'
      'PhysicalInventoryPointNo AS PIPNo'
      'FROM dbo.LOGICALINVENTORYPOINT'
      ''
      'Order By LogicalInventoryName'
      '')
    Left = 144
    Top = 176
    object cds_LogInvLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_LogInvLAGERGRUPP: TStringField
      FieldName = 'LAGERGRUPP'
      Origin = 'LAGERGRUPP'
      Size = 50
    end
    object cds_LogInvPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
  end
  object cds_SalesRegions: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select C.ClientNo, C.ClientName'
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      '  AND  R.RoleType = 7'
      'Order by C.clientName'
      '')
    Left = 248
    Top = 176
    object cds_SalesRegionsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SalesRegionsClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object cds_PkgNosSub: TFDQuery
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.PackageNumber'
    SQL.Strings = (
      
        'Select pn.PackageNo, pn.SupplierCode, pn.Status FROM dbo.Package' +
        'Number pn'
      
        'Inner Join dbo.PackageType ptp on ptp.PackageTypeNo = pn.Package' +
        'TypeNo'
      
        'INNER JOIN dbo.Packagecode_printparams PP ON pp.PkgCodePPNo = pt' +
        'p.ShrinkWrap'
      'WHERE'
      'pp.PkgCodePPNo = :PackageTypeNo'
      'AND pn.LogicalInventoryPointNo = :LIPNo'
      'AND pn.Status = 1')
    Left = 728
    Top = 184
    ParamData = <
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PkgNosSubPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgNosSubSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PkgNosSubStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
  end
  object cds_PkgNosAdd: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.PackageNumber pn'
      
        'Inner Join dbo.PackageType ptp on ptp.PackageTypeNo = pn.Package' +
        'TypeNo'
      
        'INNER JOIN dbo.Packagecode_printparams'#9'PP ON pp.PkgCodePPNo = pt' +
        'p.ShrinkWrap'
      'WHERE'
      'pp.PkgCodePPNo = :PackageTypeNo '
      'AND pn.Status = 0'
      ' '
      ' '
      '')
    Left = 848
    Top = 184
    ParamData = <
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PkgNosAddPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgNosAddPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cds_PkgNosAddSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PkgNosAddLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object cds_PkgNosAddSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cds_PkgNosAddStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_PkgNosAddSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_PkgNosAddCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PkgNosAddModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_PkgNosAddDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PkgNosAddOriginal_Price: TFloatField
      FieldName = 'Original_Price'
      Origin = 'Original_Price'
    end
    object cds_PkgNosAddOriginal_In_Date: TSQLTimeStampField
      FieldName = 'Original_In_Date'
      Origin = 'Original_In_Date'
    end
    object cds_PkgNosAddUpdate_Price: TFloatField
      FieldName = 'Update_Price'
      Origin = 'Update_Price'
    end
    object cds_PkgNosAddUpdate_Price_Date: TSQLTimeStampField
      FieldName = 'Update_Price_Date'
      Origin = 'Update_Price_Date'
    end
    object cds_PkgNosAddCreatedOfPkgStr: TIntegerField
      FieldName = 'CreatedOfPkgStr'
      Origin = 'CreatedOfPkgStr'
    end
    object cds_PkgNosAddAvgLengthType: TIntegerField
      FieldName = 'AvgLengthType'
      Origin = 'AvgLengthType'
    end
    object cds_PkgNosAddREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      Size = 30
    end
    object cds_PkgNosAddBL_NO: TStringField
      FieldName = 'BL_NO'
      Origin = 'BL_NO'
      Size = 30
    end
    object cds_PkgNosAddPkgArticleNo: TIntegerField
      FieldName = 'PkgArticleNo'
      Origin = 'PkgArticleNo'
    end
    object cds_PkgNosAddPackageTypeNo_1: TIntegerField
      FieldName = 'PackageTypeNo_1'
      Origin = 'PackageTypeNo'
      Required = True
    end
    object cds_PkgNosAddPackageTypeName: TStringField
      FieldName = 'PackageTypeName'
      Origin = 'PackageTypeName'
      FixedChar = True
    end
    object cds_PkgNosAddProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cds_PkgNosAddBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
    end
    object cds_PkgNosAddOnSticks: TIntegerField
      FieldName = 'OnSticks'
      Origin = 'OnSticks'
    end
    object cds_PkgNosAddGradeStamp: TIntegerField
      FieldName = 'GradeStamp'
      Origin = 'GradeStamp'
    end
    object cds_PkgNosAddPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
    end
    object cds_PkgNosAddPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
    end
    object cds_PkgNosAddMiniBundled: TIntegerField
      FieldName = 'MiniBundled'
      Origin = 'MiniBundled'
    end
    object cds_PkgNosAddWrapType: TIntegerField
      FieldName = 'WrapType'
      Origin = 'WrapType'
    end
    object cds_PkgNosAddShrinkWrap: TIntegerField
      FieldName = 'ShrinkWrap'
      Origin = 'ShrinkWrap'
    end
    object cds_PkgNosAddTotalNoOfPieces: TIntegerField
      FieldName = 'TotalNoOfPieces'
      Origin = 'TotalNoOfPieces'
    end
    object cds_PkgNosAddTotalm3Actual: TFloatField
      FieldName = 'Totalm3Actual'
      Origin = 'Totalm3Actual'
    end
    object cds_PkgNosAddTotalm3Nominal: TFloatField
      FieldName = 'Totalm3Nominal'
      Origin = 'Totalm3Nominal'
    end
    object cds_PkgNosAddTotalMFBMNominal: TFloatField
      FieldName = 'TotalMFBMNominal'
      Origin = 'TotalMFBMNominal'
    end
    object cds_PkgNosAddTotalSQMofActualWidth: TFloatField
      FieldName = 'TotalSQMofActualWidth'
      Origin = 'TotalSQMofActualWidth'
    end
    object cds_PkgNosAddTotalSQMofCoveringWidth: TFloatField
      FieldName = 'TotalSQMofCoveringWidth'
      Origin = 'TotalSQMofCoveringWidth'
    end
    object cds_PkgNosAddTotalLinealMeterActualLength: TFloatField
      FieldName = 'TotalLinealMeterActualLength'
      Origin = 'TotalLinealMeterActualLength'
    end
    object cds_PkgNosAddTotalM3ActualSizeNomLength: TFloatField
      FieldName = 'TotalM3ActualSizeNomLength'
      Origin = 'TotalM3ActualSizeNomLength'
    end
    object cds_PkgNosAddTotalM3NomSizeActualLength: TFloatField
      FieldName = 'TotalM3NomSizeActualLength'
      Origin = 'TotalM3NomSizeActualLength'
    end
    object cds_PkgNosAddCreatedUser_1: TSmallintField
      FieldName = 'CreatedUser_1'
      Origin = 'CreatedUser'
    end
    object cds_PkgNosAddModifiedUser_1: TSmallintField
      FieldName = 'ModifiedUser_1'
      Origin = 'ModifiedUser'
    end
    object cds_PkgNosAddDateCreated_1: TSQLTimeStampField
      FieldName = 'DateCreated_1'
      Origin = 'DateCreated'
    end
    object cds_PkgNosAddSequenceNo_1: TIntegerField
      FieldName = 'SequenceNo_1'
      Origin = 'SequenceNo'
    end
    object cds_PkgNosAddm3Net: TFloatField
      FieldName = 'm3Net'
      Origin = 'm3Net'
    end
    object cds_PkgNosAddProdInstruNo: TIntegerField
      FieldName = 'ProdInstruNo'
      Origin = 'ProdInstruNo'
    end
    object cds_PkgNosAddLengthSpecNo: TIntegerField
      FieldName = 'LengthSpecNo'
      Origin = 'LengthSpecNo'
    end
    object cds_PkgNosAddNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
    end
    object cds_PkgNosAddNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
    end
    object cds_PkgNosAddPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      Required = True
    end
    object cds_PkgNosAddPackageTypeNo_2: TIntegerField
      FieldName = 'PackageTypeNo_2'
      Origin = 'PackageTypeNo'
      Required = True
    end
    object cds_PkgNosAddPackageCode: TStringField
      FieldName = 'PackageCode'
      Origin = 'PackageCode'
      Required = True
      Size = 50
    end
    object cds_PkgNosAddLanguagecode: TIntegerField
      FieldName = 'Languagecode'
      Origin = 'Languagecode'
    end
    object cds_PkgNosAddSizeFormat: TIntegerField
      FieldName = 'SizeFormat'
      Origin = 'SizeFormat'
    end
    object cds_PkgNosAddLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
      Origin = 'LengthFormat'
    end
    object cds_PkgNosAddVolumeFormat: TIntegerField
      FieldName = 'VolumeFormat'
      Origin = 'VolumeFormat'
    end
    object cds_PkgNosAddoThickness: TStringField
      FieldName = 'oThickness'
      Origin = 'oThickness'
      Size = 7
    end
    object cds_PkgNosAddoWidth: TStringField
      FieldName = 'oWidth'
      Origin = 'oWidth'
      Size = 7
    end
    object cds_PkgNosAddoLength: TStringField
      FieldName = 'oLength'
      Origin = 'oLength'
      Size = 7
    end
    object cds_PkgNosAddArtikelKod: TStringField
      FieldName = 'ArtikelKod'
      Origin = 'ArtikelKod'
      Size = 30
    end
    object cds_PkgNosAddModifiedDate: TSQLTimeStampField
      FieldName = 'ModifiedDate'
      Origin = 'ModifiedDate'
    end
    object cds_PkgNosAddTagNo: TIntegerField
      FieldName = 'TagNo'
      Origin = 'TagNo'
    end
    object cds_PkgNosAddActive: TIntegerField
      FieldName = 'Active'
      Origin = 'Active'
    end
    object cds_PkgNosAddCreatedUser_2: TIntegerField
      FieldName = 'CreatedUser_2'
      Origin = 'CreatedUser'
    end
    object cds_PkgNosAddPublished: TIntegerField
      FieldName = 'Published'
      Origin = 'Published'
    end
    object cds_PkgNosAddCreatedDate: TSQLTimeStampField
      FieldName = 'CreatedDate'
      Origin = 'CreatedDate'
    end
    object cds_PkgNosAddModifiedUser_2: TIntegerField
      FieldName = 'ModifiedUser_2'
      Origin = 'ModifiedUser'
    end
    object cds_PkgNosAddprodinstruno_1: TIntegerField
      FieldName = 'prodinstruno_1'
      Origin = 'prodinstruno'
    end
  end
  object cds_LoadPlanHdrList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select LPH.*, Ca.CarrierName FROM dbo.LoadPlanHdr LPH'
      'Inner Join dbo.Carrier Ca on Ca.CarrierNo = LPH.VesselNo'
      ''
      '')
    Left = 488
    Top = 176
    object cds_LoadPlanHdrListLoadingNo: TIntegerField
      FieldName = 'LoadingNo'
      Origin = 'LoadingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadPlanHdrListStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_LoadPlanHdrListSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_LoadPlanHdrListPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object cds_LoadPlanHdrListLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_LoadPlanHdrListLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
    end
    object cds_LoadPlanHdrListVesselNo: TIntegerField
      FieldName = 'VesselNo'
      Origin = 'VesselNo'
    end
    object cds_LoadPlanHdrListETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
    end
    object cds_LoadPlanHdrListDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_LoadPlanHdrListCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_LoadPlanHdrListPrintDate: TSQLTimeStampField
      FieldName = 'PrintDate'
      Origin = 'PrintDate'
    end
    object cds_LoadPlanHdrListMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
    object cds_LoadPlanHdrListNote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      BlobType = ftMemo
    end
    object cds_LoadPlanHdrListInvStartNo: TIntegerField
      FieldName = 'InvStartNo'
      Origin = 'InvStartNo'
    end
    object cds_LoadPlanHdrListInvEndNo: TIntegerField
      FieldName = 'InvEndNo'
      Origin = 'InvEndNo'
    end
    object cds_LoadPlanHdrListCarrierName: TStringField
      FieldName = 'CarrierName'
      Origin = 'CarrierName'
      FixedChar = True
      Size = 50
    end
  end
  object sq_GetPkgTypeNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pp.PackageTypeNo FROM '
      'dbo.Packagecode_printparams'#9'PP '
      'WHERE'
      'pp.PkgCodePPNo = :PkgCodePPNo'
      ''
      ' '
      '')
    Left = 856
    Top = 240
    ParamData = <
      item
        Name = 'PKGCODEPPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPkgTypeNoPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      Required = True
    end
  end
  object sq_UpdArPktKvar: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.LoadPlanRow'
      'Set PktKvar = pe.SumCountedPkgs ,'
      ''
      'ARPkgs ='
      'CASE WHEN isnull(pigEnd.InvDate,0) = 0 THEN'
      
        '(Select Count(cpl.PackageTypeNo) from dbo.Confirmed_Package_Log ' +
        'cpl'
      
        'Inner Join dbo.Confirmed_Load cl on cl.Confirmed_LoadNo = cpl.Co' +
        'nfirmed_LoadNo'
      ''
      'WHERE cpl.LogicalInventoryPointNo = LPH.LIPNo'
      'AND cpl.PackageTypeNo = ptp.PackageTypeNo'
      'AND cl.DateCreated > pigStart.InvDate)'
      'ELSE'
      
        '(Select Count(cpl.PackageTypeNo) from dbo.Confirmed_Package_Log ' +
        'cpl'
      
        'Inner Join dbo.Confirmed_Load cl on cl.Confirmed_LoadNo = cpl.Co' +
        'nfirmed_LoadNo'
      'WHERE cpl.LogicalInventoryPointNo = LPH.LIPNo'
      'AND cpl.PackageTypeNo = ptp.PackageTypeNo'
      'AND cl.DateCreated > pigStart.InvDate'
      'AND cl.DateCreated < pigEnd.InvDate)'
      'END'
      ''
      'FROM dbo.LoadPlanRow'
      
        'Inner Join dbo.PackageType ptp on ptp.ShrinkWrap = LoadPlanRow.P' +
        'ackageTypeNo'
      
        'Inner Join dbo.LoadPlanHdr LPH on LPH.LoadingNo = LoadPlanRow.Lo' +
        'adingNo'
      ''
      
        'Left Outer Join dbo.PIGGroup pigStart on pigStart.PIGGroupNo = L' +
        'PH.InvStartNo'
      
        'Left Outer Join dbo.PIGGroup pigEnd on pigEnd.PIGGroupNo = LPH.I' +
        'nvEndNo'
      ''
      
        'Left Outer Join dbo.PigEntry pe on pe.PIGGroupNo = LPH.InvStartN' +
        'o'
      #9#9#9#9'and pe.PackageTypeNo = LoadPlanRow.PackageTypeNo'
      ''
      'WHERE LoadPlanRow.LoadingNo = :LoadingNo'
      ' '
      '')
    Left = 728
    Top = 240
    ParamData = <
      item
        Name = 'LOADINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_OnePackageNo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_OnePackageNo'
    Left = 56
    Top = 464
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SupplierCode'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end>
  end
  object sp_VardaLager: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_VLneg'
    Left = 56
    Top = 328
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SupplierCode'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 4
        Name = '@RegistrationPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_NewPackageNo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_AddVardPkg_II'
    Left = 56
    Top = 392
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@SupplierCode'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@LogicalInventoryPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@RegistrationPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
