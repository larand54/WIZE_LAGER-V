object dmInvCtrl: TdmInvCtrl
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 928
  Width = 1456
  object ds_InvCtrlGrp: TDataSource
    DataSet = cds_InvCtrlGrp
    OnDataChange = ds_InvCtrlGrpDataChange
    Left = 24
    Top = 144
  end
  object ds_InvCtrlMetod: TDataSource
    DataSet = cds_InvCtrlMetod
    OnDataChange = ds_InvCtrlMetodDataChange
    Left = 192
    Top = 160
  end
  object ds_PhysInv: TDataSource
    DataSet = cds_PhysInv
    Left = 512
    Top = 160
  end
  object ds_InvCtrl_LagerStallen: TDataSource
    DataSet = cds_InvCtrl_LagerStallen
    Left = 312
    Top = 160
  end
  object mtMetod: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'InventeringsMetod'
        DataType = ftInteger
      end
      item
        Name = 'Metod'
        DataType = ftString
        Size = 15
      end>
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
    Left = 192
    Top = 216
    object mtMetodInventeringsMetod: TIntegerField
      FieldName = 'InventeringsMetod'
    end
    object mtMetodMetod: TStringField
      FieldName = 'Metod'
      Size = 15
    end
  end
  object mtInvCtrlStatus: TkbmMemTable
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
    Left = 216
    Top = 632
    object mtInvCtrlStatusStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtInvCtrlStatusStatusNamn: TStringField
      FieldName = 'StatusNamn'
      Size = 30
    end
  end
  object ds_InvCtrlStatus: TDataSource
    DataSet = mtInvCtrlStatus
    Left = 216
    Top = 680
  end
  object ds_InvCtrlList: TDataSource
    DataSet = cds_InvCtrlList
    OnDataChange = ds_InvCtrlGrpDataChange
    Left = 104
    Top = 160
  end
  object ds_InvCtrl_Pkgs: TDataSource
    DataSet = cds_InvCtrl_Pkgs
    Left = 1080
    Top = 328
  end
  object ds_InvCtrl_PaReg: TDataSource
    DataSet = cds_InvCtrl_PaReg
    Left = 984
    Top = 320
  end
  object ds_InLev: TDataSource
    DataSet = cds_InLev
    Left = 904
    Top = 328
  end
  object ds_UtLev: TDataSource
    DataSet = cds_UtLev
    Left = 840
    Top = 320
  end
  object ds_GetPrd: TDataSource
    DataSet = cds_GetPrd
    Left = 776
    Top = 328
  end
  object ds_SurfGrpHdr: TDataSource
    DataSet = cds_SurfGrpHdr
    Left = 600
    Top = 160
  end
  object ds_SurGrpRow: TDataSource
    DataSet = cds_SurGrpRow
    Left = 960
    Top = 528
  end
  object ds_ChgPkg: TDataSource
    DataSet = cds_ChgPkg
    Left = 704
    Top = 320
  end
  object ds_GetAvrRegPrd: TDataSource
    DataSet = cds_GetAvrRegPrd
    Left = 616
    Top = 328
  end
  object ds_Lager: TDataSource
    DataSet = cds_Lager
    Left = 24
    Top = 336
  end
  object mtSelectedPkgNo: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PAKETNR'
        DataType = ftInteger
      end
      item
        Name = 'LEVKOD'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'STYCKPERL'#196'NGD'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'AM3'
        DataType = ftFloat
      end
      item
        Name = 'STYCK'
        DataType = ftInteger
      end
      item
        Name = 'REGISTRERAT'
        DataType = ftTimeStamp
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'MARKERAD'
        DataType = ftInteger
      end>
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
    BeforePost = mtSelectedPkgNoBeforePost
    Left = 96
    Top = 360
    object mtSelectedPkgNoPAKETNR: TIntegerField
      FieldName = 'PAKETNR'
    end
    object mtSelectedPkgNoLEVKOD: TStringField
      FieldName = 'LEVKOD'
      Size = 3
    end
    object mtSelectedPkgNoSTYCKPERLNGD: TStringField
      FieldName = 'STYCKPERL'#196'NGD'
      Size = 255
    end
    object mtSelectedPkgNoAM3: TFloatField
      FieldName = 'AM3'
      DisplayFormat = '###,###,###.000'
    end
    object mtSelectedPkgNoSTYCK: TIntegerField
      FieldName = 'STYCK'
    end
    object mtSelectedPkgNoREGISTRERAT: TSQLTimeStampField
      FieldName = 'REGISTRERAT'
    end
    object mtSelectedPkgNoProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtSelectedPkgNoMARKERAD: TIntegerField
      FieldName = 'MARKERAD'
    end
  end
  object ds_ClientList: TDataSource
    DataSet = cds_ClientList
    Left = 648
    Top = 544
  end
  object ds_GetAvrBefore: TDataSource
    DataSet = cds_GetAvrBefore
    Left = 512
    Top = 328
  end
  object ds_GetPrdBefore: TDataSource
    DataSet = cds_GetPrdBefore
    Left = 416
    Top = 304
  end
  object ds_SicHdr: TDataSource
    DataSet = cds_SicHdr
    OnDataChange = ds_SicHdrDataChange
    Left = 336
    Top = 328
  end
  object ds_SicRow: TDataSource
    DataSet = cds_SicRow
    Left = 240
    Top = 536
  end
  object ds_Sic_IC_grp: TDataSource
    DataSet = cds_Sic_IC_grp
    Left = 320
    Top = 536
  end
  object ds_Sic_LIP: TDataSource
    DataSet = cds_Sic_LIP
    Left = 400
    Top = 520
  end
  object ds_LIP: TDataSource
    DataSet = cds_LIP
    Left = 456
    Top = 536
  end
  object mtTempData: TkbmMemTable
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
    Left = 48
    Top = 488
    object mtTempDataClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object mtTempDataVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
    object mtTempDatafiYear: TIntegerField
      FieldName = 'fiYear'
    end
    object mtTempDatafiMonth: TIntegerField
      FieldName = 'fiMonth'
    end
    object mtTempDataAllaPerioder: TIntegerField
      FieldName = 'AllaPerioder'
    end
  end
  object ds_CtrlList: TDataSource
    DataSet = cds_CtrlList
    Left = 272
    Top = 312
  end
  object ds_InvenRow: TDataSource
    DataSet = cds_InvenRow
    Left = 424
    Top = 160
  end
  object ds_InvenRow_all: TDataSource
    DataSet = cds_InvenRow_all
    Left = 704
    Top = 160
  end
  object ds_CreateInvs: TDataSource
    DataSet = cds_CreateInvs
    Left = 880
    Top = 160
  end
  object mtUserProp: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'VerkNo'
        DataType = ftInteger
      end
      item
        Name = 'OwnerNo'
        DataType = ftInteger
      end
      item
        Name = 'PIPNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'InputOption'
        DataType = ftInteger
      end
      item
        Name = 'RegPointNo'
        DataType = ftInteger
      end
      item
        Name = 'RegDate'
        DataType = ftDateTime
      end
      item
        Name = 'CopyPcs'
        DataType = ftInteger
      end
      item
        Name = 'RunNo'
        DataType = ftInteger
      end
      item
        Name = 'ProducerNo'
        DataType = ftInteger
      end
      item
        Name = 'AutoColWidth'
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'LengthOption'
        DataType = ftInteger
      end
      item
        Name = 'LengthGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'NewItemRow'
        DataType = ftInteger
      end
      item
        Name = 'GradeStampNo'
        DataType = ftInteger
      end
      item
        Name = 'BarCodeNo'
        DataType = ftInteger
      end
      item
        Name = 'RoleType'
        DataType = ftInteger
      end
      item
        Name = 'ProductDescription'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPChange'
        DataType = ftInteger
      end
      item
        Name = 'SalesRegionNo'
        DataType = ftInteger
      end
      item
        Name = 'VolumeUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthFormatNo'
        DataType = ftInteger
      end
      item
        Name = 'Form'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'UserID'
        DataType = ftInteger
      end
      item
        Name = 'LengthVolUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'SurfacingNo'
        DataType = ftInteger
      end
      item
        Name = 'NOMTHICK'
        DataType = ftFloat
      end
      item
        Name = 'GroupByBox'
        DataType = ftInteger
      end
      item
        Name = 'GroupSummary'
        DataType = ftInteger
      end
      item
        Name = 'AgentNo'
        DataType = ftInteger
      end
      item
        Name = 'ShipperNo'
        DataType = ftInteger
      end
      item
        Name = 'StartPeriod'
        DataType = ftDateTime
      end
      item
        Name = 'EndPeriod'
        DataType = ftDateTime
      end>
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
    Left = 96
    Top = 264
    object mtUserPropVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtUserPropOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      OnChange = mtUserPropOwnerNoChange
    end
    object mtUserPropPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtUserPropLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtUserPropInputOption: TIntegerField
      FieldName = 'InputOption'
    end
    object mtUserPropRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtUserPropRegDate: TDateTimeField
      FieldName = 'RegDate'
    end
    object mtUserPropCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
    end
    object mtUserPropRunNo: TIntegerField
      FieldName = 'RunNo'
    end
    object mtUserPropProducerNo: TIntegerField
      FieldName = 'ProducerNo'
    end
    object mtUserPropAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
    end
    object mtUserPropSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtUserPropLengthOption: TIntegerField
      FieldName = 'LengthOption'
    end
    object mtUserPropLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
    end
    object mtUserPropNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
    end
    object mtUserPropGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtUserPropBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
    end
    object mtUserPropLengthGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthGroup'
      LookupDataSet = dm_UserProps.cds_LengthGroup
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'LengthGroupNo'
      Lookup = True
    end
    object mtUserPropLIPName: TStringField
      FieldKind = fkLookup
      FieldName = 'LIPName'
      LookupDataSet = dm_UserProps.cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropPIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PIPNAME'
      LookupDataSet = dm_UserProps.cds_PIP
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropREGPOINT: TStringField
      FieldKind = fkLookup
      FieldName = 'REGPOINT'
      LookupDataSet = dm_UserProps.cds_RegPoint
      LookupKeyFields = 'RegistrationPointNo'
      LookupResultField = 'ProductionUnitName'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
    object mtUserPropPRODUCER: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUCER'
      LookupDataSet = dm_UserProps.cds_producer
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ProducerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropOWNER: TStringField
      FieldKind = fkLookup
      FieldName = 'OWNER'
      LookupDataSet = dm_UserProps.cds_InvClient
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropVERK: TStringField
      FieldKind = fkLookup
      FieldName = 'VERK'
      LookupDataSet = dm_UserProps.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VerkNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropRoleType: TIntegerField
      FieldName = 'RoleType'
    end
    object mtUserPropGradestamp: TStringField
      FieldKind = fkLookup
      FieldName = 'Gradestamp'
      LookupDataSet = dm_UserProps.cdsGradeStamps
      LookupKeyFields = 'GradeStampNo'
      LookupResultField = 'GradeStamp'
      KeyFields = 'GradeStampNo'
      Lookup = True
    end
    object mtUserPropBarcode: TStringField
      FieldKind = fkLookup
      FieldName = 'Barcode'
      LookupDataSet = dm_UserProps.cdsBarCodes
      LookupKeyFields = 'BarCodeNo'
      LookupResultField = 'BarCode'
      KeyFields = 'BarCodeNo'
      Lookup = True
    end
    object mtUserPropProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object mtUserPropProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtUserPropProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtUserPropLIPChange: TIntegerField
      FieldName = 'LIPChange'
    end
    object mtUserPropSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object mtUserPropVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object mtUserPropLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
    end
    object mtUserPropForm: TStringField
      FieldName = 'Form'
      Size = 50
    end
    object mtUserPropUserID: TIntegerField
      FieldName = 'UserID'
    end
    object mtUserPropLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
    end
    object mtUserPropSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtUserPropNOMTHICK: TFloatField
      FieldName = 'NOMTHICK'
    end
    object mtUserPropGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
    end
    object mtUserPropGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
    end
    object mtUserPropAgentNo: TIntegerField
      FieldName = 'AgentNo'
    end
    object mtUserPropShipperNo: TIntegerField
      FieldName = 'ShipperNo'
    end
    object mtUserPropStartPeriod: TDateTimeField
      FieldName = 'StartPeriod'
    end
    object mtUserPropEndPeriod: TDateTimeField
      FieldName = 'EndPeriod'
    end
    object mtUserPropFilter1: TStringField
      FieldName = 'Filter1'
      Size = 50
    end
    object mtUserPropFilter2: TStringField
      FieldName = 'Filter2'
      Size = 255
    end
  end
  object dsUserProp: TDataSource
    DataSet = mtUserProp
    Left = 96
    Top = 312
  end
  object ds_SicPG: TDataSource
    DataSet = sp_SicPG
    Left = 824
    Top = 424
  end
  object ds_PriceGroup: TDataSource
    DataSet = cds_PriceGroup
    Left = 904
    Top = 432
  end
  object ds_GP: TDataSource
    DataSet = cds_GP
    Left = 792
    Top = 160
  end
  object ds_SicRow_PG: TDataSource
    DataSet = cds_SicRow_PG
    Left = 728
    Top = 528
  end
  object ds_InvCtrlListSIC: TDataSource
    DataSet = cds_InvCtrlListSIC
    Left = 184
    Top = 328
  end
  object ds_CreditInLev: TDataSource
    DataSet = cds_CreditInLev
    Left = 824
    Top = 544
  end
  object cds_InvCtrlGrp: TFDQuery
    AfterInsert = cds_InvCtrlGrpAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.InvControlGrp'
      'WHERE IC_GrpNo = :IC_GrpNo'
      '')
    Left = 24
    Top = 96
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_InvCtrlGrpIC_grpno: TIntegerField
      FieldName = 'IC_grpno'
      Origin = 'IC_grpno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrlGrpPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      Origin = 'PhyInvPointNameNo'
    end
    object cds_InvCtrlGrpOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_InvCtrlGrpInventeringsdatum: TSQLTimeStampField
      FieldName = 'Inventeringsdatum'
      Origin = 'Inventeringsdatum'
    end
    object cds_InvCtrlGrpNote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      BlobType = ftMemo
    end
    object cds_InvCtrlGrpVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
    object cds_InvCtrlGrpStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_InvCtrlGrpGrupperRapportPerTS: TIntegerField
      FieldName = 'GrupperRapportPerTS'
      Origin = 'GrupperRapportPerTS'
    end
    object cds_InvCtrlGrpMaxDatum: TSQLTimeStampField
      FieldName = 'MaxDatum'
      Origin = 'MaxDatum'
    end
    object cds_InvCtrlGrpPriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
    end
    object cds_InvCtrlGrpCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_InvCtrlGrpDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_InvCtrlGrpNamn: TStringField
      FieldName = 'Namn'
      Origin = 'Namn'
      Size = 50
    end
    object cds_InvCtrlGrpTypeOfInvCount: TIntegerField
      DisplayLabel = 'Typ av inventering'
      FieldName = 'TypeOfInvCount'
      Origin = 'TypeOfInvCount'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_InvCtrlList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select'
      'ic.IC_grpno            AS INVENTERINGSNR,'
      'ic.Inventeringsdatum   AS INVENTERINGSDATUM,'
      'Case'
      'WHEN ic.Status = 0 then '#39'Ny'#39
      'WHEN ic.Status = 1 then '#39'Aktiv'#39
      'WHEN ic.Status = 2 then '#39'Godk'#228'nd'#39
      'WHEN ic.Status = 3 then '#39'Gdk+prissatt'#39
      'END                 AS STATUS,'
      'ic.MaxDatum            AS MAXDATUM,'
      'ic.Namn                AS NAMN,'
      'ort.CityName + '#39'/'#39' + icm.LogicalInventoryName          AS Lager,'
      'person.UserName AS SkapadAv'
      ''
      'FROM dbo.InvControlGrp ic'
      
        'Left Outer Join dbo.Users person on person.UserID = ic.CreatedUs' +
        'er'
      'Left Outer Join dbo.InvCtrl_LagerStallen icl'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = icl.PhysicalInventoryPointNo'
      'Inner Join dbo.City ort on ort.CityNo = PIP.PhyInvPointNameNo'
      'on icl.IC_grpno = ic.IC_grpno'
      ''
      
        'Left Outer Join dbo.InvCtrlMetod ICM on icm.IC_grpno = ic.IC_grp' +
        'no'
      ''
      'WHERE ic.VerkNo = :VerkNo'
      'AND Ic.MaxDatum >= :StartDate'
      'AND Ic.MaxDatum <= :EndDate'
      '')
    Left = 104
    Top = 112
    ParamData = <
      item
        Name = 'VERKNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STARTDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ENDDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object cds_InvCtrlListINVENTERINGSNR: TIntegerField
      FieldName = 'INVENTERINGSNR'
      Origin = 'INVENTERINGSNR'
      Required = True
    end
    object cds_InvCtrlListINVENTERINGSDATUM: TSQLTimeStampField
      FieldName = 'INVENTERINGSDATUM'
      Origin = 'INVENTERINGSDATUM'
    end
    object cds_InvCtrlListSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      ReadOnly = True
      Size = 12
    end
    object cds_InvCtrlListMAXDATUM: TSQLTimeStampField
      FieldName = 'MAXDATUM'
      Origin = 'MAXDATUM'
    end
    object cds_InvCtrlListNAMN: TStringField
      FieldName = 'NAMN'
      Origin = 'NAMN'
      Size = 50
    end
    object cds_InvCtrlListLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ReadOnly = True
      Size = 101
    end
    object cds_InvCtrlListSkapadAv: TStringField
      FieldName = 'SkapadAv'
      Origin = 'SkapadAv'
    end
  end
  object cds_InvCtrlMetod2: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_InvCtrlMetodIndex01'
        Fields = 'LogicalInventoryPointNo'
      end>
    IndexName = 'cds_InvCtrlMetodIndex01'
    MasterSource = ds_InvCtrlGrp
    MasterFields = 'IC_grpno'
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.InvCtrlMetod'
    SQL.Strings = (
      
        'Select Distinct ICM.*, LIP.PhysicalInventoryPointNo AS PIPNo FRO' +
        'M'
      'dbo.InvCtrlMetod ICM'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = ICM.LogicalInventoryPointNo'
      
        'Left Outer Join dbo.PackageNumber pn on pn.LogicalInventoryPoint' +
        'No = LIP.LogicalInventoryPointNo'
      'WHERE ICM.IC_GrpNo = :IC_GrpNo'
      '')
    Left = 600
    Top = 216
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_InvCtrlMetod2Metod: TStringField
      DisplayLabel = 'METOD'
      FieldKind = fkLookup
      FieldName = 'Metod'
      LookupDataSet = mtMetod
      LookupKeyFields = 'InventeringsMetod'
      LookupResultField = 'Metod'
      KeyFields = 'InventeringsMetod'
      ProviderFlags = []
      Size = 15
      Lookup = True
    end
    object cds_InvCtrlMetod2IC_grpNo: TIntegerField
      FieldName = 'IC_grpNo'
      Origin = 'IC_grpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_InvCtrlMetod2LogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrlMetod2InventeringsMetod: TIntegerField
      FieldName = 'InventeringsMetod'
      Origin = 'InventeringsMetod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrlMetod2LogicalInventoryName: TStringField
      DisplayLabel = 'LAGERGRUPP'
      FieldName = 'LogicalInventoryName'
      Origin = 'LogicalInventoryName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_InvCtrlMetod2OwnerName: TStringField
      DisplayLabel = #196'GARE'
      FieldName = 'OwnerName'
      Origin = 'OwnerName'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_InvCtrlMetod2OwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlMetod2InLevLipNo: TIntegerField
      FieldName = 'InLevLipNo'
      Origin = 'InLevLipNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlMetod2InventoryValue: TFloatField
      FieldName = 'InventoryValue'
      Origin = 'InventoryValue'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlMetod2TotalNM3: TFloatField
      FieldName = 'TotalNM3'
      Origin = 'TotalNM3'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlMetod2AvgPricePerNM3: TFloatField
      FieldName = 'AvgPricePerNM3'
      Origin = 'AvgPricePerNM3'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlMetod2PIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = []
    end
  end
  object cds_InvCtrl_LagerStallen: TFDQuery
    AfterInsert = cds_InvCtrl_LagerStallenAfterInsert
    MasterSource = ds_InvCtrlGrp
    MasterFields = 'IC_grpno'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM'
      'dbo.InvCtrl_LagerStallen'
      'WHERE IC_grpno = :IC_grpno'
      '')
    Left = 312
    Top = 112
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_InvCtrl_LagerStallenIC_grpno: TIntegerField
      FieldName = 'IC_grpno'
      Origin = 'IC_grpno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrl_LagerStallenPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrl_LagerStallenOwnerName: TStringField
      FieldName = 'OwnerName'
      Origin = 'OwnerName'
      Size = 80
    end
    object cds_InvCtrl_LagerStallenLagerStalle: TStringField
      FieldKind = fkLookup
      FieldName = 'LAGERSTALLE'
      LookupDataSet = cds_PhysInv
      LookupKeyFields = 'PhysicalInventoryPointNo'
      LookupResultField = 'LagerStalle'
      KeyFields = 'PhysicalInventoryPointNo'
      Size = 130
      Lookup = True
    end
  end
  object cds_InvenRow: TFDQuery
    CachedUpdates = True
    MasterSource = ds_InvCtrlGrp
    MasterFields = 'IC_grpno'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select ICR.*, ptl.PcsPerLength AS ANTPERL'#196'NGD,'
      'PLM.ProductDisplayName AS PRODUKT,'
      'PT.TotalNoOfPieces AS STYCK,'
      'PT.Totalm3Actual AS AM3,'
      'PT.Totalm3Nominal AS NM3,'
      'CASE'
      'WHEN icr.Status = 1 THEN '#39'Lager'#39
      'WHEN icr.Status = 2 THEN '#39'Utlev'#39
      'WHEN icr.Status = 3 THEN '#39'Inlev'#39
      'WHEN icr.Status = 4 THEN '#39'5 )Prod pd'#39
      'WHEN icr.Status = 5 THEN '#39'6 )P'#229'reg.'#39
      'WHEN icr.Status = 6 THEN '#39'7 )Avreg pd'#39
      'WHEN icr.Status = 7 THEN '#39'8 )Flytt.'#39
      'WHEN icr.Status = 8 THEN '#39'9 )'#196'ndrad'#39
      'WHEN icr.Status = 9 THEN '#39'10)Avreg.'#39
      'WHEN icr.Status = 10 THEN '#39'Prod fi.'#39
      'WHEN icr.Status = 14 THEN '#39'Kredit.'#39
      'WHEN icr.Status = 21 THEN '#39'1 )Lager'#39
      'WHEN icr.Status = 22 THEN '#39'2 )Prel.LO'#39
      'WHEN icr.Status = 23 THEN '#39'3 )Prel.Avr'#39
      'WHEN icr.Status = 24 THEN '#39'4 )Ej fakt'#39
      ''
      ''
      'END AS K'#228'lla,'
      'pn.Original_Price,'
      'pn.Original_Price * pt.Totalm3Nominal AS V'#228'rde'
      'from dbo.InvenRow icr'
      'Inner join dbo.PackageNumber pn on pn.PackageNo = icr.PackageNo'
      'and pn.SupplierCode = icr.SupplierCode'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = ICR.PackageT' +
        'ypeNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      '')
    Left = 424
    Top = 112
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_InvenRowLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object cds_InvenRowIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      Origin = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvenRowInventeringsMetod: TIntegerField
      FieldName = 'InventeringsMetod'
      Origin = 'InventeringsMetod'
    end
    object cds_InvenRowPackageNo: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvenRowSuppliercode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'Suppliercode'
      Origin = 'Suppliercode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_InvenRowPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cds_InvenRowNoOfPkgs: TIntegerField
      DisplayLabel = 'Antal paket'
      FieldName = 'NoOfPkgs'
      Origin = 'NoOfPkgs'
    end
    object cds_InvenRowAntalPaketILager: TIntegerField
      FieldName = 'AntalPaketILager'
      Origin = 'AntalPaketILager'
    end
    object cds_InvenRowLogicalInventoryName: TStringField
      DisplayLabel = 'Lagergrupp'
      FieldName = 'LogicalInventoryName'
      Origin = 'LogicalInventoryName'
      Size = 50
    end
    object cds_InvenRowStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_InvenRowOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_InvenRowLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
    end
    object cds_InvenRowRes01: TIntegerField
      FieldName = 'Res01'
      Origin = 'Res01'
    end
    object cds_InvenRowANTPERLÄNGD: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      Size = 255
    end
    object cds_InvenRowPRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      Size = 150
    end
    object cds_InvenRowSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object cds_InvenRowAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_InvenRowNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_InvenRowKälla: TStringField
      FieldName = 'K'#228'lla'
      Origin = '[K'#228'lla]'
      ReadOnly = True
      Size = 11
    end
    object cds_InvenRowOriginal_Price: TFloatField
      DisplayLabel = 'Pris'
      FieldName = 'Original_Price'
      Origin = 'Original_Price'
      ProviderFlags = []
      DisplayFormat = '#,###.0'
    end
    object cds_InvenRowVärde: TFloatField
      FieldName = 'V'#228'rde'
      Origin = '[V'#228'rde]'
      ProviderFlags = []
      DisplayFormat = '#,###,###.0'
    end
  end
  object cds_PhysInv: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT PIP.PhyInvPointNameNo,'
      'CY.CITYNAME+'#39' ('#39'+C.ClientName+'#39')'#39' AS LagerStalle,'
      'PIP.PhysicalInventoryPointNo, C.ClientName, CY.CITYNAME'
      'FROM'
      'DBO.PHYSICALINVENTORYPOINT PIP'
      'INNER JOIN DBO.CITY CY ON CY.CITYNO = PIP.PhyInvPointNameNo'
      'INNER JOIN DBO.Client C ON C.ClientNo = PIP.OwnerNo'
      'WHERE'
      'CY.CITYNAME <> '#39'Transfer'#39
      'AND PIP.SequenceNo = 1'
      'AND PIP.Ownerno = :OwnerNo'
      ''
      ''
      'Order By CY.CITYNAME, C.ClientName'
      ''
      '')
    Left = 512
    Top = 112
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PhysInvPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      Origin = 'PhyInvPointNameNo'
    end
    object cds_PhysInvLagerStalle: TStringField
      FieldName = 'LagerStalle'
      Origin = 'LagerStalle'
      ReadOnly = True
      Size = 133
    end
    object cds_PhysInvPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PhysInvClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_PhysInvCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Origin = 'CITYNAME'
      Size = 50
    end
  end
  object cds_SurfGrpHdr: TFDQuery
    AfterInsert = cds_SurfGrpHdrAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.SurfacingGroupHdr'
      'WHERE ClientNo = :ClientNo'
      '')
    Left = 600
    Top = 112
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SurfGrpHdrSurfacingGroupNo: TIntegerField
      FieldName = 'SurfacingGroupNo'
      Origin = 'SurfacingGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SurfGrpHdrClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_SurfGrpHdrSurfacingGroupName: TStringField
      FieldName = 'SurfacingGroupName'
      Origin = 'SurfacingGroupName'
      Size = 30
    end
    object cds_SurfGrpHdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_SurfGrpHdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_SurfGrpHdrLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
  end
  object cds_InvenRow_all: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select ICR.*, ptl.PcsPerLength AS ANTPERL'#196'NGD,'
      'PLM.ProductDisplayName AS PRODUKT,'
      'PT.TotalNoOfPieces * ICR.AntalPaketILager AS STYCK,'
      'PT.Totalm3Actual  * ICR.AntalPaketILager AS AM3,'
      'PT.Totalm3Nominal  * ICR.AntalPaketILager AS NM3,'
      'CASE'
      'WHEN icr.Status = 0 THEN '#39'54)Avreg'#39
      'WHEN icr.Status = 1 THEN '#39'Lager'#39
      'WHEN icr.Status = 2 THEN '#39'53)Utlev'#39
      'WHEN icr.Status = 3 THEN '#39'12)Inlev'#39
      'WHEN icr.Status = 4 THEN '#39'11)Prod pd'#39
      'WHEN icr.Status = 5 THEN '#39'13)P'#229'reg.'#39
      'WHEN icr.Status = 6 THEN '#39'51)Avreg pd'#39
      'WHEN icr.Status = 7 THEN '#39'60)Flytt.'#39
      'WHEN icr.Status = 8 THEN '#39'61)'#196'ndrad'#39
      'WHEN icr.Status = 9 THEN '#39'52)Avreg.fi.'#39
      'WHEN icr.Status = 10 THEN '#39'14)Prod fi.'#39
      'WHEN icr.Status = 21 THEN '#39'1 )Lager'#39
      'WHEN icr.Status = 22 THEN '#39'2 )Prel.LO'#39
      'WHEN icr.Status = 23 THEN '#39'3 )Prel.Avr'#39
      'WHEN icr.Status = 24 THEN '#39'4 )Ej fakt'#39
      ''
      ''
      'END AS K'#228'lla'
      'from dbo.InvenRow_all icr'
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = ICR.PackageNo'
      
        '                              AND pn.SupplierCode = ICR.Supplier' +
        'Code'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = ICR.PackageT' +
        'ypeNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      '')
    Left = 704
    Top = 112
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_InvenRow_allIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      Origin = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvenRow_allLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object cds_InvenRow_allInventeringsMetod: TIntegerField
      FieldName = 'InventeringsMetod'
      Origin = 'InventeringsMetod'
    end
    object cds_InvenRow_allPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvenRow_allSuppliercode: TStringField
      FieldName = 'Suppliercode'
      Origin = 'Suppliercode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_InvenRow_allPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cds_InvenRow_allNoOfPkgs: TIntegerField
      FieldName = 'NoOfPkgs'
      Origin = 'NoOfPkgs'
    end
    object cds_InvenRow_allAntalPaketILager: TIntegerField
      FieldName = 'AntalPaketILager'
      Origin = 'AntalPaketILager'
    end
    object cds_InvenRow_allLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Origin = 'LogicalInventoryName'
      Size = 50
    end
    object cds_InvenRow_allStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvenRow_allOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_InvenRow_allLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
    end
    object cds_InvenRow_allRes01: TIntegerField
      FieldName = 'Res01'
      Origin = 'Res01'
    end
    object cds_InvenRow_allANTPERLÄNGD: TStringField
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      Size = 255
    end
    object cds_InvenRow_allPRODUKT: TStringField
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      Size = 150
    end
    object cds_InvenRow_allSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ReadOnly = True
    end
    object cds_InvenRow_allAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
    object cds_InvenRow_allNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
    end
    object cds_InvenRow_allKälla: TStringField
      FieldName = 'K'#228'lla'
      Origin = '[K'#228'lla]'
      ReadOnly = True
      Size = 12
    end
  end
  object cds_GP: TFDQuery
    AfterInsert = cds_GPAfterInsert
    MasterSource = ds_PriceGroup
    MasterFields = 'PriceGroupNo'
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.GroupPrice'
    SQL.Strings = (
      'Select GP.*, icg.MaxDatum FROM dbo.GroupPrice GP'
      'Inner Join dbo.InvControlGrp icg on icg.IC_grpNo = GP.IC_grpNo'
      'WHERE GP.PriceGroupNo = :PriceGroupNo'
      '')
    Left = 792
    Top = 112
    ParamData = <
      item
        Name = 'PRICEGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GPPriceGroupNo: TIntegerField
      FieldName = 'PriceGroupNo'
      Origin = 'PriceGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GPIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      Origin = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GPPricePerNM3: TFloatField
      FieldName = 'PricePerNM3'
      Origin = 'PricePerNM3'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GPMaxDatum: TSQLTimeStampField
      FieldName = 'MaxDatum'
      Origin = 'MaxDatum'
      ProviderFlags = []
    end
  end
  object cds_CreateInvs: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.InvControlGrp'
    SQL.Strings = (
      
        'Select icg.IC_GRPNo AS Inventera, icg.IC_GRPNo AS InvNr, C.Clien' +
        'tName AS '#196'gare, Cy.CityName AS LS, LIP.LogicalInventoryName AS L' +
        'G,'
      '(Select Count(icr.PackageNo) FROM dbo.InvControlrow icr'
      'WHERE icr.IC_GRPNo = icm.IC_GRPNo'
      
        'AND icr.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo) A' +
        'S KontrollistaPkt,'
      ''
      '(Select SUM(pt.Totalm3Nominal) FROM dbo.InvControlrow icr'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = icr.PackageT' +
        'ypeNo'
      'WHERE icr.IC_GRPNo = icm.IC_GRPNo'
      
        'AND icr.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo) A' +
        'S KontrollistaNM3,'
      ''
      '(Select Count(icr.PackageNo) FROM dbo.Invenrow icr'
      'WHERE icr.IC_GRPNo = icm.IC_GRPNo'
      
        'AND icr.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo) A' +
        'S ResultalistaPkt,'
      ''
      '(Select SUM(pt.Totalm3Nominal) FROM dbo.Invenrow icr'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = icr.PackageT' +
        'ypeNo'
      'WHERE icr.IC_GRPNo = icm.IC_GRPNo'
      
        'AND icr.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo) A' +
        'S ResultatlistaNM3,'
      'LIP.LogicalInventoryPointNo AS LIPNo,'
      'C.IntVerk,'
      'PIP.OwnerNo,'
      'LIP.PhysicalInventoryPointNo AS PIPNo,'
      'icg.Inventeringsdatum,'
      'icg.maxdatum,'
      'icg.Status,'
      'person.UserName AS SkapadAv,'
      'icm.InventoryValue AS V'#228'rde,'
      'icm.TotalNM3 AS NM3,'
      'icm.AvgPricePerNM3 AS Medelpris'
      ''
      'FROM dbo.LogicalInventoryPoint LIP'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.Client C on C.ClientNo = PIP.OwnerNo'
      'Inner Join dbo.City Cy on Cy.CityNo = PIP.PhyInvPointNameNo'
      
        'Inner Join dbo.InvCtrlMetod icm on icm.LogicalInventoryPointNo =' +
        ' LIP.LogicalInventoryPointNo'
      'Inner Join dbo.InvControlGrp icg on icg.IC_GRPNo = icm.IC_GRPNo'
      
        'Left Outer Join dbo.Users person on person.UserID = icg.CreatedU' +
        'ser'
      ''
      'WHERE Icg.MaxDatum >= :StartDate'
      'AND Icg.MaxDatum <= :EndDate'
      'AND ((PIP.OwnerNo = :OwnerNo) or (0 = :OwnerNo))'
      'AND ((icg.Status = :Status) or (5 = :Status))'
      ''
      ''
      'UNION'
      ''
      
        'Select 0 AS Inventera, 0 AS InvNr, C.ClientName AS '#196'gare, Cy.Cit' +
        'yName AS LS, LIP.LogicalInventoryName AS LG,'
      ''
      '(Select Count(pn.PackageNo) FROM dbo.PackageNumber pn'
      'WHERE pn.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo'
      'AND pn.Status = 1) AS KontrollistaPkt,'
      ''
      '(Select SUM(pt.Totalm3Nominal) FROM dbo.PackageNumber pn'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      'WHERE pn.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo'
      'AND pn.Status = 1) AS KontrollistaNM3,'
      ''
      '0 AS ResultalistaPkt,'
      ''
      '0 AS ResultatlistaNM3,'
      ''
      'LIP.LogicalInventoryPointNo AS LIPNo,'
      'C.IntVerk,'
      'PIP.OwnerNo,'
      'LIP.PhysicalInventoryPointNo AS PIPNo,'
      #39#39' AS Inventeringsdatum,'
      #39#39' AS maxdatum,'
      '-1 AS Status,'
      #39'N/A'#39' AS SkapadAv,'
      '0.0 AS V'#228'rde,'
      '0.0 AS NM3,'
      '0.0 AS Medelpris'
      ''
      'FROM dbo.LogicalInventoryPoint LIP'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.Client C on C.ClientNo = PIP.OwnerNo'
      'Inner Join dbo.City Cy on Cy.CityNo = PIP.PhyInvPointNameNo'
      ''
      'WHERE'
      '((PIP.OwnerNo = :OwnerNo) or (0 = :OwnerNo))'
      
        'AND LIP.LogicalInventoryPointNo not in (Select icm.LogicalInvent' +
        'oryPointNo'
      'FROM dbo.InvCtrlMetod icm'
      'Inner Join dbo.InvControlGrp icg on icg.IC_GRPNo = icm.IC_GRPNo'
      'WHERE Icg.MaxDatum >= :StartDate'
      'AND Icg.MaxDatum <= :EndDate'
      'AND Icg.OwnerNo = PIP.OwnerNo)')
    Left = 880
    Top = 112
    ParamData = <
      item
        Name = 'STARTDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ENDDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_CreateInvsInventera: TIntegerField
      FieldName = 'Inventera'
      Origin = 'Inventera'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CreateInvsInvNr: TIntegerField
      FieldName = 'InvNr'
      Origin = 'InvNr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object cds_CreateInvsÄgare: TStringField
      FieldName = #196'gare'
      Origin = '['#196'gare]'
      Size = 80
    end
    object cds_CreateInvsLS: TStringField
      FieldName = 'LS'
      Origin = 'LS'
      Size = 50
    end
    object cds_CreateInvsLG: TStringField
      FieldName = 'LG'
      Origin = 'LG'
      Size = 50
    end
    object cds_CreateInvsKontrollistaPkt: TIntegerField
      FieldName = 'KontrollistaPkt'
      Origin = 'KontrollistaPkt'
    end
    object cds_CreateInvsKontrollistaNM3: TFloatField
      FieldName = 'KontrollistaNM3'
      Origin = 'KontrollistaNM3'
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_CreateInvsResultalistaPkt: TIntegerField
      FieldName = 'ResultalistaPkt'
      Origin = 'ResultalistaPkt'
    end
    object cds_CreateInvsResultatlistaNM3: TFloatField
      FieldName = 'ResultatlistaNM3'
      Origin = 'ResultatlistaNM3'
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_CreateInvsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_CreateInvsIntVerk: TIntegerField
      FieldName = 'IntVerk'
      Origin = 'IntVerk'
    end
    object cds_CreateInvsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_CreateInvsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object cds_CreateInvsInventeringsdatum: TSQLTimeStampField
      FieldName = 'Inventeringsdatum'
      Origin = 'Inventeringsdatum'
    end
    object cds_CreateInvsmaxdatum: TSQLTimeStampField
      FieldName = 'maxdatum'
      Origin = 'maxdatum'
    end
    object cds_CreateInvsStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_CreateInvsSkapadAv: TStringField
      FieldName = 'SkapadAv'
      Origin = 'SkapadAv'
    end
    object cds_CreateInvsVärde: TFloatField
      FieldName = 'V'#228'rde'
      Origin = '[V'#228'rde]'
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_CreateInvsNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_CreateInvsMedelpris: TFloatField
      FieldName = 'Medelpris'
      Origin = 'Medelpris'
      DisplayFormat = '#####.0'
    end
  end
  object cds_Lager: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT LIP.LogicalInventoryPointNo AS LIPNo,'
      'CY.CITYNAME+'#39'/'#39'+LIP.LogicalInventoryName AS Lager,'
      'CY.CITYNAME, LIP.LogicalInventoryName'
      'FROM'
      'DBO.PHYSICALINVENTORYPOINT PIP'
      
        'INNER JOIN DBO.LogicalInventoryPoint LIP on LIP.PhysicalInventor' +
        'yPointNo = PIP.PhysicalInventoryPointNo'
      'INNER JOIN DBO.CITY CY ON CY.CITYNO = PIP.PhyInvPointNameNo'
      'INNER JOIN DBO.Client C ON C.ClientNo = PIP.OwnerNo'
      'WHERE'
      'CY.CITYNAME <> '#39'Transfer'#39
      'AND PIP.SequenceNo = 1'
      'AND PIP.Ownerno = 741'
      ''
      'Order By CY.CITYNAME, LIP.LogicalInventoryName'
      '')
    Left = 24
    Top = 288
    object cds_LagerLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_LagerLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ReadOnly = True
      Size = 101
    end
    object cds_LagerCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Origin = 'CITYNAME'
      Size = 50
    end
    object cds_LagerLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Origin = 'LogicalInventoryName'
      Size = 50
    end
  end
  object cds_InvCtrlListSIC: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select'
      'ic.IC_grpno            AS INVENTERINGSNR,'
      'ic.Inventeringsdatum   AS INVENTERINGSDATUM,'
      'Case'
      'WHEN ic.Status = 0 then '#39'Ny'#39
      'WHEN ic.Status = 1 then '#39'Aktiv'#39
      'WHEN ic.Status = 2 then '#39'Godk'#228'nd'#39
      'END                 AS STATUS,'
      'ic.MaxDatum            AS MAXDATUM,'
      'ic.Namn                AS NAMN,'
      'ort.CityName + '#39'/'#39' + icm.LogicalInventoryName          AS Lager,'
      'person.UserName AS SkapadAv'
      ''
      'FROM dbo.InvControlGrp ic'
      
        'Left Outer Join dbo.Users person on person.UserID = ic.CreatedUs' +
        'er'
      'Left Outer Join dbo.InvCtrl_LagerStallen icl'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = icl.PhysicalInventoryPointNo'
      'Inner Join dbo.City ort on ort.CityNo = PIP.PhyInvPointNameNo'
      'on icl.IC_grpno = ic.IC_grpno'
      ''
      
        'Left Outer Join dbo.InvCtrlMetod ICM on icm.IC_grpno = ic.IC_grp' +
        'no'
      ''
      'WHERE ic.VerkNo = :VerkNo'
      ''
      '')
    Left = 184
    Top = 272
    ParamData = <
      item
        Name = 'VERKNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_InvCtrlListSICINVENTERINGSNR: TIntegerField
      FieldName = 'INVENTERINGSNR'
      Origin = 'INVENTERINGSNR'
      Required = True
    end
    object cds_InvCtrlListSICINVENTERINGSDATUM: TSQLTimeStampField
      FieldName = 'INVENTERINGSDATUM'
      Origin = 'INVENTERINGSDATUM'
    end
    object cds_InvCtrlListSICSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      ReadOnly = True
      Size = 7
    end
    object cds_InvCtrlListSICMAXDATUM: TSQLTimeStampField
      FieldName = 'MAXDATUM'
      Origin = 'MAXDATUM'
    end
    object cds_InvCtrlListSICNAMN: TStringField
      FieldName = 'NAMN'
      Origin = 'NAMN'
      Size = 50
    end
    object cds_InvCtrlListSICLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ReadOnly = True
      Size = 101
    end
    object cds_InvCtrlListSICSkapadAv: TStringField
      FieldName = 'SkapadAv'
      Origin = 'SkapadAv'
    end
  end
  object cds_CtrlList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select ICR.*, ptl.PcsPerLength AS ANTPERL'#196'NGD,'
      'PLM.ProductDisplayName AS PRODUKT,'
      'PT.TotalNoOfPieces AS STYCK,'
      'PT.Totalm3Actual AS AM3,'
      'PT.Totalm3Nominal AS NM3,'
      'CASE'
      'WHEN icr.AntalPaketILager = 1 THEN '#39'1)Lager'#39
      'WHEN icr.AntalPaketILager = 2 THEN '#39'2)Prel.LO'#39
      'WHEN icr.AntalPaketILager = 3 THEN '#39'3)Prel.Avr'#39
      'WHEN icr.AntalPaketILager = 4 THEN '#39'4)Ej fakt'#39
      'END AS K'#228'lla,'
      '(Select MAX(pl.ActualLengthMM) FROM dbo.ProductLength pl'
      
        'inner join dbo.PackageTypeDetail ptd on ptd.ProductLengthNo = pl' +
        '.ProductLengthNo'
      'WHERE ptd.PackageTypeNo = pt.PackageTypeNo) AS Maxl'#228'ngd,'
      ''
      'pt.TotalNoOfPieces AS PPP,'
      ''
      'CASE WHEN'
      ''
      '(Select TOP 1 1 FROM dbo.InvCtrl_Pkgs Ictrl'
      'WHERE Ictrl.PackageNo = ICR.PackageNo'
      'AND Ictrl.SupplierCode = ICR.SupplierCode'
      'AND Ictrl.IC_GrpNo = icr.IC_GrpNo'
      'AND Ictrl.Operation = 6) > 0 THEN '#39'AVREGIPROD'#39
      ''
      'WHEN (Select TOP 1 1 FROM dbo.InvCtrl_Pkgs Ictrl'
      'WHERE Ictrl.PackageNo = ICR.PackageNo'
      'AND Ictrl.SupplierCode = ICR.SupplierCode'
      'AND Ictrl.IC_GrpNo = icr.IC_GrpNo'
      'AND Ictrl.Operation = 0) > 0 THEN '#39'AVREGMAN'#39
      ''
      'WHEN (Select TOP 1 1 FROM dbo.InvCtrl_Pkgs Ictrl'
      'WHERE Ictrl.PackageNo = ICR.PackageNo'
      'AND Ictrl.SupplierCode = ICR.SupplierCode'
      'AND Ictrl.IC_GrpNo = icr.IC_GrpNo'
      'AND Ictrl.Operation = 2) > 0 THEN '#39'UTLEVERADE'#39
      ''
      'WHEN (Select Distinct TOP 1 1'
      'FROM dbo.Loads L'
      'Inner Join dbo.LoadDetail LD ON LD.LoadNo = L.LoadNo'
      
        'Inner join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = LD.LIPNo'
      'Inner Join dbo.LoadShippingPlan LSP ON LSP.LoadNo = LD.LoadNo'
      'AND LSP.ShippingPlanNo = LD.ShippingPlanNo'
      
        'Inner Join dbo.SupplierShippingPlan SSP on SSP.SupplierShipPlanO' +
        'bjectNo = LD.DefSSPNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      ''
      'WHERE L.SupplierNo = ig.OwnerNo'
      'AND L.LoadedDate >= ig.MaxDatum'
      'AND LD.PackageNo = icr.PackageNo'
      'AND LD.SupplierCode = icr.Suppliercode'
      'AND L.SenderLoadStatus <> 0) > 0 THEN '#39'UTLEVEFTERMAXDATUM'#39
      'END AS HANDELSE'
      ''
      'from dbo.InvControlrow icr'
      'inner join dbo.InvControlGrp ig on ig.IC_grpno = icr.IC_grpno'
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = ICR.PackageNo'
      
        '                              AND pn.SupplierCode = ICR.Supplier' +
        'Code'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Icr.PackageT' +
        'ypeNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      '')
    Left = 272
    Top = 256
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_CtrlListIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      Origin = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CtrlListLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object cds_CtrlListInventeringsMetod: TIntegerField
      FieldName = 'InventeringsMetod'
      Origin = 'InventeringsMetod'
    end
    object cds_CtrlListPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CtrlListSuppliercode: TStringField
      FieldName = 'Suppliercode'
      Origin = 'Suppliercode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_CtrlListPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cds_CtrlListNoOfPkgs: TIntegerField
      FieldName = 'NoOfPkgs'
      Origin = 'NoOfPkgs'
    end
    object cds_CtrlListAntalPaketILager: TIntegerField
      FieldName = 'AntalPaketILager'
      Origin = 'AntalPaketILager'
    end
    object cds_CtrlListLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Origin = 'LogicalInventoryName'
      Size = 50
    end
    object cds_CtrlListStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_CtrlListOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_CtrlListLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
    end
    object cds_CtrlListRes01: TIntegerField
      FieldName = 'Res01'
      Origin = 'Res01'
    end
    object cds_CtrlListANTPERLÄNGD: TStringField
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      ProviderFlags = []
      Size = 255
    end
    object cds_CtrlListPRODUKT: TStringField
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      ProviderFlags = []
      Size = 150
    end
    object cds_CtrlListSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ProviderFlags = []
    end
    object cds_CtrlListAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
    end
    object cds_CtrlListNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
    end
    object cds_CtrlListKälla: TStringField
      FieldName = 'K'#228'lla'
      Origin = '[K'#228'lla]'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object cds_CtrlListMaxlängd: TFloatField
      FieldName = 'Maxl'#228'ngd'
      Origin = '[Maxl'#228'ngd]'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_CtrlListPPP: TIntegerField
      FieldName = 'PPP'
      Origin = 'PPP'
      ProviderFlags = []
    end
    object cds_CtrlListHANDELSE: TStringField
      FieldName = 'HANDELSE'
      Origin = 'HANDELSE'
      ProviderFlags = []
      ReadOnly = True
      Size = 18
    end
  end
  object cds_SicHdr: TFDQuery
    AfterInsert = cds_SicHdrAfterInsert
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_SicHdrIndex0'
        Fields = 'Sic_No'
        Options = [soUnique, soPrimary]
      end>
    IndexName = 'cds_SicHdrIndex0'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select sh.*, C.ClientName AS Verk From dbo.SicHdr sh'
      'Inner Join dbo.Client C on C.ClientNo = sh.VerkNo'
      'WHERE ((sh.VerkNo = :VerkNo) OR (0 = :VerkNo))'
      'AND ((sh.InvYear = :InvYear) OR (0 = :InvYear))'
      'AND ((sh.InvMonth = :InvMonth) OR (0 = :InvMonth))'
      '')
    Left = 336
    Top = 272
    ParamData = <
      item
        Name = 'VERKNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVYEAR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVMONTH'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SicHdrSic_No: TIntegerField
      DisplayLabel = 'L'#246'pNr'
      FieldName = 'Sic_No'
      Origin = 'Sic_No'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SicHdrDescription: TStringField
      DisplayLabel = 'Beskrivning'
      FieldName = 'Description'
      Origin = 'Description'
      Size = 50
    end
    object cds_SicHdrVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
    object cds_SicHdrDateCreated: TSQLTimeStampField
      DisplayLabel = 'Registrerad'
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_SicHdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_SicHdrStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_SicHdrInvYear: TIntegerField
      DisplayLabel = #197'r'
      FieldName = 'InvYear'
      Origin = 'InvYear'
    end
    object cds_SicHdrInvMonth: TIntegerField
      DisplayLabel = 'M'#229'nad'
      FieldName = 'InvMonth'
      Origin = 'InvMonth'
    end
    object cds_SicHdrVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      ProviderFlags = []
      Size = 80
    end
  end
  object cds_GetPrdBefore: TFDQuery
    MasterSource = ds_InvCtrlGrp
    MasterFields = 'IC_grpno'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select ICR.*, ptl.PcsPerLength AS ANTPERL'#196'NGD,'
      'PLM.ProductDisplayName AS PRODUKT,'
      'PT.TotalNoOfPieces AS STYCK,'
      'PT.Totalm3Actual AS AM3,'
      'PT.Totalm3Nominal AS NM3,'
      'Lag.Lager'
      'FROM dbo.InvCtrl_Pkgs ICR'
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = ICR.PackageNo'
      
        '                              AND pn.SupplierCode = ICR.Supplier' +
        'Code'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      
        'Inner Join dbo.Lager Lag on Lag.LIPNo = ICR.LogicalInventoryPoin' +
        'tNo'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      ''
      'AND Operation = 10'
      ' '
      '')
    Left = 416
    Top = 248
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetPrdBeforeIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      Origin = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetPrdBeforePackageNo: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetPrdBeforeSupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_GetPrdBeforeOperation: TIntegerField
      FieldName = 'Operation'
      Origin = 'Operation'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetPrdBeforeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetPrdBeforeLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetPrdBeforeSortorderno: TIntegerField
      FieldName = 'Sortorderno'
      Origin = 'Sortorderno'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetPrdBeforeStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetPrdBeforeLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetPrdBeforeRes01: TIntegerField
      FieldName = 'Res01'
      Origin = 'Res01'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetPrdBeforeANTPERLÄNGD: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      ProviderFlags = []
      Size = 255
    end
    object cds_GetPrdBeforePRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      ProviderFlags = []
      Size = 150
    end
    object cds_GetPrdBeforeSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ProviderFlags = []
    end
    object cds_GetPrdBeforeAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_GetPrdBeforeNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_GetPrdBeforeLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ProviderFlags = []
      Size = 101
    end
  end
  object cds_GetAvrBefore: TFDQuery
    MasterSource = ds_InvCtrlGrp
    MasterFields = 'IC_grpno'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select ICR.*, ptl.PcsPerLength AS ANTPERL'#196'NGD,'
      'PLM.ProductDisplayName AS PRODUKT,'
      'PT.TotalNoOfPieces AS STYCK,'
      'PT.Totalm3Actual AS AM3,'
      'PT.Totalm3Nominal AS NM3,'
      'Lag.Lager'
      'FROM dbo.InvCtrl_Pkgs ICR'
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = ICR.PackageNo'
      
        '                              AND pn.SupplierCode = ICR.Supplier' +
        'Code'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      
        'Inner Join dbo.Lager Lag on Lag.LIPNo = PN.LogicalInventoryPoint' +
        'No'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      ''
      'AND Operation = 9'
      '')
    Left = 512
    Top = 272
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetAvrBeforeIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      Origin = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetAvrBeforePackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetAvrBeforeSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_GetAvrBeforeOperation: TIntegerField
      FieldName = 'Operation'
      Origin = 'Operation'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetAvrBeforeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetAvrBeforeLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetAvrBeforeSortorderno: TIntegerField
      FieldName = 'Sortorderno'
      Origin = 'Sortorderno'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetAvrBeforeStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetAvrBeforeLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetAvrBeforeRes01: TIntegerField
      FieldName = 'Res01'
      Origin = 'Res01'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetAvrBeforeANTPERLÄNGD: TStringField
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      ProviderFlags = []
      Size = 255
    end
    object cds_GetAvrBeforePRODUKT: TStringField
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      ProviderFlags = []
      Size = 150
    end
    object cds_GetAvrBeforeSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ProviderFlags = []
    end
    object cds_GetAvrBeforeAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
    end
    object cds_GetAvrBeforeNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
    end
    object cds_GetAvrBeforeLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ProviderFlags = []
      Size = 101
    end
  end
  object cds_GetAvrRegPrd: TFDQuery
    MasterSource = ds_InvCtrlGrp
    MasterFields = 'IC_grpno'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select ICR.*, ptl.PcsPerLength AS ANTPERL'#196'NGD,'
      'PLM.ProductDisplayName AS PRODUKT,'
      'PT.TotalNoOfPieces AS STYCK,'
      'PT.Totalm3Actual AS AM3,'
      'PT.Totalm3Nominal AS NM3,'
      'Lag.Lager'
      'FROM dbo.InvCtrl_Pkgs ICR'
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = ICR.PackageNo'
      
        '                              AND pn.SupplierCode = ICR.Supplier' +
        'Code'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      
        'Inner Join dbo.Lager Lag on Lag.LIPNo = PN.LogicalInventoryPoint' +
        'No'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      ''
      'AND Operation = 6'
      '')
    Left = 616
    Top = 272
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetAvrRegPrdIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      Origin = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetAvrRegPrdPackageNo: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetAvrRegPrdSupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_GetAvrRegPrdOperation: TIntegerField
      FieldName = 'Operation'
      Origin = 'Operation'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetAvrRegPrdDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetAvrRegPrdLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetAvrRegPrdSortorderno: TIntegerField
      FieldName = 'Sortorderno'
      Origin = 'Sortorderno'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetAvrRegPrdStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetAvrRegPrdLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetAvrRegPrdRes01: TIntegerField
      FieldName = 'Res01'
      Origin = 'Res01'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetAvrRegPrdANTPERLÄNGD: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      ProviderFlags = []
      Size = 255
    end
    object cds_GetAvrRegPrdPRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      ProviderFlags = []
      Size = 150
    end
    object cds_GetAvrRegPrdSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ProviderFlags = []
    end
    object cds_GetAvrRegPrdAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_GetAvrRegPrdNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_GetAvrRegPrdLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ProviderFlags = []
      Size = 101
    end
  end
  object cds_ChgPkg: TFDQuery
    AfterInsert = cds_ChgPkgAfterInsert
    BeforePost = cds_ChgPkgBeforePost
    AfterPost = cds_ChgPkgAfterPost
    BeforeDelete = cds_ChgPkgBeforeDelete
    MasterSource = ds_InvCtrlGrp
    MasterFields = 'IC_grpno'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select ICR.*, ptl.PcsPerLength AS ANTPERL'#196'NGD,'
      'PLM.ProductDisplayName AS PRODUKT,'
      'PT.TotalNoOfPieces AS STYCK,'
      'PT.Totalm3Actual AS AM3,'
      'PT.Totalm3Nominal AS NM3,'
      'Lag.Lager'
      'FROM dbo.InvCtrl_Pkgs ICR'
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = ICR.PackageNo'
      
        '                              AND pn.SupplierCode = ICR.Supplier' +
        'Code'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      
        'Inner Join dbo.Lager Lag on Lag.LIPNo = PN.LogicalInventoryPoint' +
        'No'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      'AND Operation = 8'
      ''
      ' '
      ' '
      ' '
      '')
    Left = 704
    Top = 264
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ChgPkgIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      Origin = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ChgPkgPackageNo: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ChgPkgSupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_ChgPkgOperation: TIntegerField
      FieldName = 'Operation'
      Origin = 'Operation'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ChgPkgDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ChgPkgLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ChgPkgSortorderno: TIntegerField
      FieldName = 'Sortorderno'
      Origin = 'Sortorderno'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ChgPkgStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ChgPkgLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ChgPkgRes01: TIntegerField
      FieldName = 'Res01'
      Origin = 'Res01'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ChgPkgANTPERLÄNGD: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      ProviderFlags = []
      Size = 255
    end
    object cds_ChgPkgPRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      ProviderFlags = []
      Size = 150
    end
    object cds_ChgPkgSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ProviderFlags = []
    end
    object cds_ChgPkgAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_ChgPkgNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_ChgPkgLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ProviderFlags = []
      Size = 101
    end
  end
  object cds_GetPrd: TFDQuery
    MasterSource = ds_InvCtrlGrp
    MasterFields = 'IC_grpno'
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.InvCtrl_Pkgs'
    SQL.Strings = (
      'Select ICR.*, ptl.PcsPerLength AS ANTPERL'#196'NGD,'
      'PLM.ProductDisplayName AS PRODUKT,'
      'PT.TotalNoOfPieces AS STYCK,'
      'PT.Totalm3Actual AS AM3,'
      'PT.Totalm3Nominal AS NM3,'
      'Lag.Lager,'
      '(Select TOP 1 LS.ShippingPlanNo FROM'
      'dbo.LoadShippingPlan LS'
      'Inner Join dbo.LoadDetail LD on LD.LoadNo = LS.LoadNo'
      'WHERE'
      'LD.PackageNo = ICR.PackageNo'
      'AND LD.SupplierCode = ICR.SupplierCode'
      'Order By LS.ShippingPlanNo Desc ) AS LO'
      ''
      'FROM dbo.InvCtrl_Pkgs ICR'
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = ICR.PackageNo'
      
        '                              AND pn.SupplierCode = ICR.Supplier' +
        'Code'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      
        'Inner Join dbo.Lager Lag on Lag.LIPNo = PN.LogicalInventoryPoint' +
        'No'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      ''
      'AND Operation = 4'
      '')
    Left = 776
    Top = 272
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetPrdIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      Origin = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetPrdPackageNo: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetPrdSupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_GetPrdOperation: TIntegerField
      FieldName = 'Operation'
      Origin = 'Operation'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetPrdDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetPrdLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetPrdSortorderno: TIntegerField
      FieldName = 'Sortorderno'
      Origin = 'Sortorderno'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetPrdStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetPrdLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_GetPrdRes01: TIntegerField
      FieldName = 'Res01'
      Origin = 'Res01'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetPrdANTPERLÄNGD: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object cds_GetPrdPRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object cds_GetPrdSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_GetPrdAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_GetPrdNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_GetPrdLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ProviderFlags = []
      ReadOnly = True
      Size = 101
    end
    object cds_GetPrdLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object cds_UtLev: TFDQuery
    MasterSource = ds_InvCtrlGrp
    MasterFields = 'IC_grpno'
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.InvCtrl_Pkgs'
    SQL.Strings = (
      'Select ICR.*, ptl.PcsPerLength AS ANTPERL'#196'NGD,'
      'PLM.ProductDisplayName AS PRODUKT,'
      'PT.TotalNoOfPieces AS STYCK,'
      'PT.Totalm3Actual AS AM3,'
      'PT.Totalm3Nominal AS NM3,'
      'IsNull((Select IC.PackageNo FROM dbo.InvControlRow IC'
      'WHERE IC.IC_GrpNo = ICR.IC_GrpNo'
      'AND IC.PackageNo = ICR.PackageNo'
      'AND IC.SupplierCode = ICR.SupplierCode),0) AS InCtrlList'
      ''
      'FROM dbo.InvCtrl_Pkgs ICR'
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = ICR.PackageNo'
      
        '                              AND pn.SupplierCode = ICR.Supplier' +
        'Code'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      ''
      'AND Operation = 2'
      '')
    Left = 840
    Top = 264
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_UtLevIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      Origin = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_UtLevPackageNo: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_UtLevSupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_UtLevOperation: TIntegerField
      FieldName = 'Operation'
      Origin = 'Operation'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_UtLevDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UtLevLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UtLevSortorderno: TIntegerField
      FieldName = 'Sortorderno'
      Origin = 'Sortorderno'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UtLevStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UtLevLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UtLevRes01: TIntegerField
      FieldName = 'Res01'
      Origin = 'Res01'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_UtLevANTPERLÄNGD: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object cds_UtLevPRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object cds_UtLevSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_UtLevAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_UtLevNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_UtLevInCtrlList: TIntegerField
      FieldName = 'InCtrlList'
      Origin = 'InCtrlList'
      ProviderFlags = []
      ReadOnly = True
      Required = True
    end
  end
  object cds_InLev: TFDQuery
    MasterSource = ds_InvCtrlGrp
    MasterFields = 'IC_grpno'
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.InvCtrl_Pkgs'
    SQL.Strings = (
      'Select ICR.*, ptl.PcsPerLength AS ANTPERL'#196'NGD,'
      'PLM.ProductDisplayName AS PRODUKT,'
      'PT.TotalNoOfPieces AS STYCK,'
      'PT.Totalm3Actual AS AM3,'
      'PT.Totalm3Nominal AS NM3,'
      'Lag.Lager'
      'FROM dbo.InvCtrl_Pkgs ICR'
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = ICR.PackageNo'
      
        '                              AND pn.SupplierCode = ICR.Supplier' +
        'Code'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      
        'Inner Join dbo.Lager Lag on Lag.LIPNo = ICR.LogicalInventoryPoin' +
        'tNo'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      'AND ((ICR.Operation = 3) OR (ICR.Operation = 13))'
      ''
      '')
    Left = 904
    Top = 272
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_InLevIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      Origin = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InLevPackageNo: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InLevSupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_InLevOperation: TIntegerField
      FieldName = 'Operation'
      Origin = 'Operation'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InLevDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = []
    end
    object cds_InLevLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = []
    end
    object cds_InLevSortorderno: TIntegerField
      FieldName = 'Sortorderno'
      Origin = 'Sortorderno'
      ProviderFlags = []
    end
    object cds_InLevStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = []
    end
    object cds_InLevLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      ProviderFlags = []
    end
    object cds_InLevRes01: TIntegerField
      FieldName = 'Res01'
      Origin = 'Res01'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InLevANTPERLÄNGD: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object cds_InLevPRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object cds_InLevSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_InLevAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_InLevNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_InLevLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ProviderFlags = []
      ReadOnly = True
      Size = 101
    end
  end
  object cds_InvCtrl_PaReg: TFDQuery
    AfterInsert = cds_InvCtrl_PaRegAfterInsert
    BeforePost = cds_InvCtrl_PaRegBeforePost
    AfterPost = cds_InvCtrl_PaRegAfterPost
    BeforeDelete = cds_InvCtrl_PaRegBeforeDelete
    MasterSource = ds_InvCtrlGrp
    MasterFields = 'IC_grpno'
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.InvCtrl_Pkgs'
    SQL.Strings = (
      'Select ICR.*, ptl.PcsPerLength AS ANTPERL'#196'NGD,'
      'PLM.ProductDisplayName AS PRODUKT,'
      'PT.TotalNoOfPieces AS STYCK,'
      'PT.Totalm3Actual AS AM3,'
      'PT.Totalm3Nominal AS NM3,'
      'Lag.Lager'
      'FROM dbo.InvCtrl_Pkgs ICR'
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = ICR.PackageNo'
      
        '                              AND pn.SupplierCode = ICR.Supplier' +
        'Code'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      
        'Inner Join dbo.Lager Lag on Lag.LIPNo = PN.LogicalInventoryPoint' +
        'No'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      'AND Operation = 5'
      '')
    Left = 984
    Top = 264
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_InvCtrl_PaRegIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      Origin = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrl_PaRegPackageNo: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrl_PaRegSupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_InvCtrl_PaRegOperation: TIntegerField
      FieldName = 'Operation'
      Origin = 'Operation'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrl_PaRegDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrl_PaRegLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrl_PaRegSortorderno: TIntegerField
      FieldName = 'Sortorderno'
      Origin = 'Sortorderno'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrl_PaRegStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrl_PaRegLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrl_PaRegRes01: TIntegerField
      FieldName = 'Res01'
      Origin = 'Res01'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrl_PaRegANTPERLÄNGD: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      ProviderFlags = []
      Size = 255
    end
    object cds_InvCtrl_PaRegPRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      ProviderFlags = []
      Size = 150
    end
    object cds_InvCtrl_PaRegSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ProviderFlags = []
    end
    object cds_InvCtrl_PaRegAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_InvCtrl_PaRegNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_InvCtrl_PaRegLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ProviderFlags = []
      Size = 101
    end
  end
  object cds_InvCtrl_Pkgs: TFDQuery
    AfterInsert = cds_InvCtrl_PkgsAfterInsert
    BeforePost = cds_InvCtrl_PkgsBeforePost
    AfterPost = cds_InvCtrl_PkgsAfterPost
    BeforeDelete = cds_InvCtrl_PkgsBeforeDelete
    MasterSource = ds_InvCtrlGrp
    MasterFields = 'IC_grpno'
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.InvCtrl_Pkgs'
    SQL.Strings = (
      'Select ICR.*, ptl.PcsPerLength AS ANTPERL'#196'NGD,'
      'PLM.ProductDisplayName AS PRODUKT,'
      'PT.TotalNoOfPieces AS STYCK,'
      'PT.Totalm3Actual AS AM3,'
      'PT.Totalm3Nominal AS NM3,'
      'Lag.Lager,'
      '(Select Top 1 pp.ProductionDate FROM dbo.Package_Production pp'
      'WHERE pp.PackageNo = ICR.PackageNo'
      'AND pp.SupplierCode = ICR.SupplierCode'
      'AND pp.Operation = 0'
      'Order By pp.ProductionDate Desc) AS Producerad'
      'FROM dbo.InvCtrl_Pkgs ICR'
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = ICR.PackageNo'
      
        '                              AND pn.SupplierCode = ICR.Supplier' +
        'Code'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      
        'Inner Join dbo.Lager Lag on Lag.LIPNo = PN.LogicalInventoryPoint' +
        'No'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      'AND ICR.Operation = 0'
      '')
    Left = 1080
    Top = 272
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_InvCtrl_PkgsIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      Origin = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrl_PkgsPackageNo: TIntegerField
      DisplayLabel = 'Pasketnr'
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrl_PkgsSupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_InvCtrl_PkgsOperation: TIntegerField
      FieldName = 'Operation'
      Origin = 'Operation'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrl_PkgsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrl_PkgsLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrl_PkgsSortorderno: TIntegerField
      FieldName = 'Sortorderno'
      Origin = 'Sortorderno'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrl_PkgsStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrl_PkgsLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrl_PkgsRes01: TIntegerField
      FieldName = 'Res01'
      Origin = 'Res01'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrl_PkgsANTPERLÄNGD: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      ProviderFlags = []
      Size = 255
    end
    object cds_InvCtrl_PkgsPRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      ProviderFlags = []
      Size = 150
    end
    object cds_InvCtrl_PkgsSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ProviderFlags = []
    end
    object cds_InvCtrl_PkgsAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_InvCtrl_PkgsNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_InvCtrl_PkgsLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ProviderFlags = []
      Size = 101
    end
    object cds_InvCtrl_PkgsProducerad: TSQLTimeStampField
      FieldName = 'Producerad'
      Origin = 'Producerad'
      ProviderFlags = []
    end
  end
  object cds_PriceGroup: TFDQuery
    AfterInsert = cds_PriceGroupAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select spg.* FROM dbo.Sic_PriceGroup spg'
      'WHERE spg.OwnerNo = :OwnerNo'
      '')
    Left = 904
    Top = 376
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PriceGroupPriceGroupNo: TIntegerField
      FieldName = 'PriceGroupNo'
      Origin = 'PriceGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PriceGroupPriceGroupName: TStringField
      FieldName = 'PriceGroupName'
      Origin = 'PriceGroupName'
      Size = 50
    end
    object cds_PriceGroupOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_PriceGroupDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PriceGroupCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
  end
  object cds_SicRow: TFDQuery
    AfterInsert = cds_SicRowAfterInsert
    BeforePost = cds_SicRowBeforePost
    AfterDelete = cds_SicRowAfterDelete
    OnPostError = cds_SicRowPostError
    MasterSource = ds_SicHdr
    MasterFields = 'Sic_No'
    AfterGetRecords = cds_SicRowAfterGetRecords
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.SicRow'
      'WHERE Sic_No = :Sic_No'
      '')
    Left = 240
    Top = 488
    ParamData = <
      item
        Name = 'SIC_NO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SicRowSic_No: TIntegerField
      DisplayLabel = 'L'#246'pNr'
      FieldName = 'Sic_No'
      Origin = 'Sic_No'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SicRowRowName: TStringField
      DisplayLabel = 'Lager'
      FieldName = 'RowName'
      Origin = 'RowName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 100
    end
    object cds_SicRowLIPGroupNo: TStringField
      DisplayLabel = 'Lagerkod'
      FieldName = 'LIPGroupNo'
      Origin = 'LIPGroupNo'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_SicRowNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.000'
    end
    object cds_SicRowPrice: TFloatField
      DisplayLabel = 'Pris'
      FieldName = 'Price'
      Origin = 'Price'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_SicRowAdmCost: TFloatField
      DisplayLabel = 'Administration'
      FieldName = 'FDmCost'
      Origin = 'FDmCost'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_SicRowPlanerShavingsCost: TFloatField
      DisplayLabel = 'Kuttersp'#229'n'
      FieldName = 'PlanerShavingsCost'
      Origin = 'PlanerShavingsCost'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_SicRowPlaningCost: TFloatField
      DisplayLabel = 'Hyvling'
      FieldName = 'PlaningCost'
      Origin = 'PlaningCost'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_SicRowSortingCost: TFloatField
      DisplayLabel = 'Justering'
      FieldName = 'SortingCost'
      Origin = 'SortingCost'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_SicRowKilnDryingCost: TFloatField
      DisplayLabel = 'Torkning'
      FieldName = 'KilnDryingCost'
      Origin = 'KilnDryingCost'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_SicRowCalcPrice: TFloatField
      DisplayLabel = 'Slutpris'
      FieldName = 'CalcPrice'
      Origin = 'CalcPrice'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_SicRowTotalValue: TFloatField
      DisplayLabel = 'V'#228'rde'
      FieldName = 'TotalValue'
      Origin = 'TotalValue'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
  end
  object cds_Sic_IC_grp: TFDQuery
    AfterInsert = cds_Sic_IC_grpAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'Sic_IC_grp'
    SQL.Strings = (
      'Select SIC.*, icg.Inventeringsdatum   AS INVENTERINGSDATUM,'
      'icg.MaxDatum            AS MAXDATUM,'
      'icg.Namn                AS NAMN'
      'FROM dbo.Sic_IC_grp SIC'
      'Inner Join dbo.InvControlGrp icg on icg.IC_grpno = SIC.IC_grpno'
      'WHERE Sic_No = :Sic_No'
      '')
    Left = 320
    Top = 488
    ParamData = <
      item
        Name = 'SIC_NO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_Sic_IC_grpSic_No: TIntegerField
      FieldName = 'Sic_No'
      Origin = 'Sic_No'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Sic_IC_grpIC_grpno: TIntegerField
      FieldName = 'IC_grpno'
      Origin = 'IC_grpno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Sic_IC_grpINVENTERINGSDATUM: TSQLTimeStampField
      FieldName = 'INVENTERINGSDATUM'
      Origin = 'INVENTERINGSDATUM'
      ProviderFlags = []
    end
    object cds_Sic_IC_grpMAXDATUM: TSQLTimeStampField
      FieldName = 'MAXDATUM'
      Origin = 'MAXDATUM'
      ProviderFlags = []
    end
    object cds_Sic_IC_grpNAMN: TStringField
      FieldName = 'NAMN'
      Origin = 'NAMN'
      ProviderFlags = []
      Size = 50
    end
  end
  object cds_Sic_LIP: TFDQuery
    AfterInsert = cds_Sic_LIPAfterInsert
    BeforePost = cds_Sic_LIPBeforePost
    MasterSource = ds_SicHdr
    MasterFields = 'Sic_No'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.Sic_LIP'
      'WHERE Sic_No = :Sic_No'
      '')
    Left = 400
    Top = 472
    ParamData = <
      item
        Name = 'SIC_NO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_Sic_LIPSic_No: TIntegerField
      FieldName = 'Sic_No'
      Origin = 'Sic_No'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Sic_LIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Sic_LIPLIPGroupNo: TStringField
      DisplayLabel = 'Lagerkod'
      FieldName = 'LIPGroupNo'
      Origin = 'LIPGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object cds_Sic_LIPLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_Sic_LIPPercentShare: TFloatField
      DisplayLabel = '% f'#246'rdelning'
      FieldName = 'PercentShare'
      Origin = 'PercentShare'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##.0'
    end
    object cds_Sic_LIPInventeratNM3: TFloatField
      DisplayLabel = 'NM3 inventerat'
      FieldName = 'InventeratNM3'
      Origin = 'InventeratNM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object cds_Sic_LIPCalcNM3: TFloatField
      DisplayLabel = 'F'#246'rdelad NM3'
      FieldName = 'CalcNM3'
      Origin = 'CalcNM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object cds_Sic_LIPOriginalLIPNo: TIntegerField
      FieldName = 'OriginalLIPNo'
      Origin = 'OriginalLIPNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_LIP: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT  Distinct LIP.LogicalInventoryPointNo AS LIPNo, '
      'C.CityName+'#39'/'#39'+LIP.LogicalInventoryName AS LAGER,'
      'LIP.InvCode AS KOD'
      'FROM dbo.LOGICALINVENTORYPOINT LIP'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.City C on C.CityNo = PIP.PhyInvPointNameNo'
      'WHERE'
      'PIP.OwnerNo = :OwnerNo'
      '-- AND PIP.SequenceNo = 1'
      '-- AND LIP.SequenceNo = 1'
      '')
    Left = 456
    Top = 488
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_LIPLAGER: TStringField
      FieldName = 'LAGER'
      Origin = 'LAGER'
      ReadOnly = True
      Size = 101
    end
    object cds_LIPKOD: TStringField
      FieldName = 'KOD'
      Origin = 'KOD'
      Size = 3
    end
  end
  object cds_ClientList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select C.ClientName AS NAMN,'
      'C.SearchName AS S'#214'KNAMN,'
      'C.ClientNo'
      ''
      'From dbo.Client c'
      'Inner Join dbo.ClientRole cr ON cr.ClientNo = c.Clientno'
      'Inner Join dbo.RoleType rt ON rt.RoleType = cr.Roletype'
      'WHERE'
      'cr.Roletype = 9 or'
      'cr.Roletype = 7'
      ''
      'order by C.ClientName'
      '')
    Left = 648
    Top = 496
    object cds_ClientListNAMN: TStringField
      FieldName = 'NAMN'
      Origin = 'NAMN'
      Size = 80
    end
    object cds_ClientListSÖKNAMN: TStringField
      FieldName = 'S'#214'KNAMN'
      Origin = '[S'#214'KNAMN]'
      Size = 80
    end
    object cds_ClientListClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_SicRow_PG: TFDQuery
    BeforePost = cds_SicRow_PGBeforePost
    MasterSource = ds_SicHdr
    MasterFields = 'Sic_No'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.SicRow_PG'
      'WHERE Sic_No = :Sic_No'
      '')
    Left = 728
    Top = 480
    ParamData = <
      item
        Name = 'SIC_NO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SicRow_PGSic_No: TIntegerField
      DisplayLabel = 'L'#246'pNr'
      FieldName = 'Sic_No'
      Origin = 'Sic_No'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SicRow_PGRowName: TStringField
      DisplayLabel = 'Lager'
      FieldName = 'RowName'
      Origin = 'RowName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 100
    end
    object cds_SicRow_PGLIPGroupNo: TStringField
      DisplayLabel = 'Lagerkod'
      FieldName = 'LIPGroupNo'
      Origin = 'LIPGroupNo'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_SicRow_PGNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.000'
    end
    object cds_SicRow_PGPrice: TFloatField
      DisplayLabel = 'Pris'
      FieldName = 'Price'
      Origin = 'Price'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_SicRow_PGAdmCost: TFloatField
      DisplayLabel = 'Administration'
      FieldName = 'FDmCost'
      Origin = 'FDmCost'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_SicRow_PGPlanerShavingsCost: TFloatField
      DisplayLabel = 'Kuttersp'#229'n'
      FieldName = 'PlanerShavingsCost'
      Origin = 'PlanerShavingsCost'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_SicRow_PGPlaningCost: TFloatField
      DisplayLabel = 'Hyvling'
      FieldName = 'PlaningCost'
      Origin = 'PlaningCost'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_SicRow_PGSortingCost: TFloatField
      DisplayLabel = 'Justering'
      FieldName = 'SortingCost'
      Origin = 'SortingCost'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_SicRow_PGKilnDryingCost: TFloatField
      DisplayLabel = 'Torkning'
      FieldName = 'KilnDryingCost'
      Origin = 'KilnDryingCost'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_SicRow_PGCalcPrice: TFloatField
      DisplayLabel = 'Slutpris'
      FieldName = 'CalcPrice'
      Origin = 'CalcPrice'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_SicRow_PGTotalValue: TFloatField
      DisplayLabel = 'V'#228'rde'
      FieldName = 'TotalValue'
      Origin = 'TotalValue'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_SicRow_PGPriceGroupNo: TIntegerField
      DisplayLabel = 'PrisgruppNr'
      FieldName = 'PriceGroupNo'
      Origin = 'PriceGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SicRow_PGPriceGroupName: TStringField
      DisplayLabel = 'Prisgrupp'
      FieldName = 'PriceGroupName'
      Origin = 'PriceGroupName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object cds_CreditInLev: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select ICR.*, ptl.PcsPerLength AS ANTPERL'#196'NGD,'
      'PLM.ProductDisplayName AS PRODUKT,'
      'PT.TotalNoOfPieces AS STYCK,'
      'PT.Totalm3Actual AS AM3,'
      'PT.Totalm3Nominal AS NM3,'
      'Lag.Lager'
      'FROM dbo.InvCtrl_Pkgs ICR'
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = ICR.PackageNo'
      
        '                              AND pn.SupplierCode = ICR.Supplier' +
        'Code'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      
        'Inner Join dbo.Lager Lag on Lag.LIPNo = ICR.LogicalInventoryPoin' +
        'tNo'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      'AND (ICR.Operation = 14)'
      ''
      '')
    Left = 816
    Top = 496
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_CreditInLevIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      Origin = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CreditInLevPackageNo: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CreditInLevSupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_CreditInLevOperation: TIntegerField
      FieldName = 'Operation'
      Origin = 'Operation'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CreditInLevDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_CreditInLevLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object cds_CreditInLevSortorderno: TIntegerField
      FieldName = 'Sortorderno'
      Origin = 'Sortorderno'
    end
    object cds_CreditInLevStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_CreditInLevLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
    end
    object cds_CreditInLevRes01: TIntegerField
      FieldName = 'Res01'
      Origin = 'Res01'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CreditInLevANTPERLÄNGD: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      Size = 255
    end
    object cds_CreditInLevPRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      Size = 150
    end
    object cds_CreditInLevSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object cds_CreditInLevAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_CreditInLevNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_CreditInLevLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ReadOnly = True
      Size = 101
    end
  end
  object cds_SurGrpRow: TFDQuery
    AfterInsert = cds_SurGrpRowAfterInsert
    MasterSource = ds_SurfGrpHdr
    MasterFields = 'SurfacingGroupNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.SurfacingGroupRow'
      'WHERE SurfacingGroupNo = :SurfacingGroupNo'
      '')
    Left = 960
    Top = 480
    ParamData = <
      item
        Name = 'SURFACINGGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SurGrpRowSurfacingGroupNo: TIntegerField
      FieldName = 'SurfacingGroupNo'
      Origin = 'SurfacingGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SurGrpRowSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SurGrpRowStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'UTF'#214'RANDE'
      LookupKeyFields = 'SurfacingNo'
      LookupResultField = 'SurfacingName'
      KeyFields = 'SurfacingNo'
      Size = 30
      Lookup = True
    end
  end
  object sq_CI_NotInven: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select 0 AS Inventera, 0 AS InvNr, C.ClientName AS '#196'gare, Cy.Cit' +
        'yName AS LS, LIP.LogicalInventoryName AS LG,'
      ''
      '(Select Count(pn.PackageNo) FROM dbo.PackageNumber pn'
      'WHERE pn.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo'
      'AND pn.Status = 1) AS KontrollistaPkt,'
      ''
      '(Select SUM(pt.Totalm3Nominal) FROM dbo.PackageNumber pn'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      'WHERE pn.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo'
      'AND pn.Status = 1) AS KontrollistaNM3,'
      ''
      '0 AS ResultalistaPkt,'
      ''
      '0.0 AS ResultatlistaNM3,'
      ''
      'LIP.LogicalInventoryPointNo AS LIPNo,'
      'C.IntVerk,'
      'PIP.OwnerNo,'
      'LIP.PhysicalInventoryPointNo AS PIPNo,'
      'GetDate() AS Inventeringsdatum,'
      'GetDate() AS maxdatum,'
      '-1 AS Status,'
      #39'N/A'#39' AS SkapadAv,'
      '0.0 AS V'#228'rde,'
      '0.0 AS NM3,'
      '0.0 AS Medelpris'
      ''
      'FROM dbo.LogicalInventoryPoint LIP'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.Client C on C.ClientNo = PIP.OwnerNo'
      'Inner Join dbo.City Cy on Cy.CityNo = PIP.PhyInvPointNameNo'
      ''
      'WHERE'
      '((PIP.OwnerNo = :OwnerNo) or (0 = :OwnerNo))'
      'AND 4 = :Status'
      
        'AND LIP.LogicalInventoryPointNo not in (Select icm.LogicalInvent' +
        'oryPointNo'
      'FROM dbo.InvCtrlMetod icm'
      'Inner Join dbo.InvControlGrp icg on icg.IC_GRPNo = icm.IC_GRPNo'
      'WHERE Icg.MaxDatum >= :StartDate'
      'AND Icg.MaxDatum <= :EndDate'
      'AND Icg.OwnerNo = PIP.OwnerNo)'
      '')
    Left = 984
    Top = 32
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STARTDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ENDDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object sq_CI_NotInvenInventera: TIntegerField
      FieldName = 'Inventera'
      Origin = 'Inventera'
      ReadOnly = True
      Required = True
    end
    object sq_CI_NotInvenInvNr: TIntegerField
      FieldName = 'InvNr'
      Origin = 'InvNr'
      ReadOnly = True
      Required = True
    end
    object sq_CI_NotInvenÄgare: TStringField
      FieldName = #196'gare'
      Origin = '['#196'gare]'
      Size = 80
    end
    object sq_CI_NotInvenLS: TStringField
      FieldName = 'LS'
      Origin = 'LS'
      Size = 50
    end
    object sq_CI_NotInvenLG: TStringField
      FieldName = 'LG'
      Origin = 'LG'
      Size = 50
    end
    object sq_CI_NotInvenKontrollistaPkt: TIntegerField
      FieldName = 'KontrollistaPkt'
      Origin = 'KontrollistaPkt'
      ReadOnly = True
    end
    object sq_CI_NotInvenKontrollistaNM3: TFloatField
      FieldName = 'KontrollistaNM3'
      Origin = 'KontrollistaNM3'
      ReadOnly = True
    end
    object sq_CI_NotInvenResultalistaPkt: TIntegerField
      FieldName = 'ResultalistaPkt'
      Origin = 'ResultalistaPkt'
      ReadOnly = True
      Required = True
    end
    object sq_CI_NotInvenResultatlistaNM3: TBCDField
      FieldName = 'ResultatlistaNM3'
      Origin = 'ResultatlistaNM3'
      ReadOnly = True
      Required = True
      Precision = 1
      Size = 1
    end
    object sq_CI_NotInvenLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object sq_CI_NotInvenIntVerk: TIntegerField
      FieldName = 'IntVerk'
      Origin = 'IntVerk'
    end
    object sq_CI_NotInvenOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object sq_CI_NotInvenPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object sq_CI_NotInvenInventeringsdatum: TSQLTimeStampField
      FieldName = 'Inventeringsdatum'
      Origin = 'Inventeringsdatum'
      ReadOnly = True
      Required = True
    end
    object sq_CI_NotInvenmaxdatum: TSQLTimeStampField
      FieldName = 'maxdatum'
      Origin = 'maxdatum'
      ReadOnly = True
      Required = True
    end
    object sq_CI_NotInvenStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ReadOnly = True
      Required = True
    end
    object sq_CI_NotInvenSkapadAv: TStringField
      FieldName = 'SkapadAv'
      Origin = 'SkapadAv'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object sq_CI_NotInvenVärde: TBCDField
      FieldName = 'V'#228'rde'
      Origin = '[V'#228'rde]'
      ReadOnly = True
      Required = True
      Precision = 1
      Size = 1
    end
    object sq_CI_NotInvenNM3: TBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
      Required = True
      Precision = 1
      Size = 1
    end
    object sq_CI_NotInvenMedelpris: TBCDField
      FieldName = 'Medelpris'
      Origin = 'Medelpris'
      ReadOnly = True
      Required = True
      Precision = 1
      Size = 1
    end
  end
  object sq_CI_Inven: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select icg.IC_GRPNo AS Inventera, icg.IC_GRPNo AS InvNr, C.Clien' +
        'tName AS '#196'gare, Cy.CityName AS LS, LIP.LogicalInventoryName AS L' +
        'G,'
      '(Select Count(icr.PackageNo) FROM dbo.InvControlrow icr'
      'WHERE icr.IC_GRPNo = icm.IC_GRPNo'
      
        'AND icr.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo) A' +
        'S KontrollistaPkt,'
      ''
      '(Select SUM(pt.Totalm3Nominal) FROM dbo.InvControlrow icr'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = icr.PackageT' +
        'ypeNo'
      'WHERE icr.IC_GRPNo = icm.IC_GRPNo'
      
        'AND icr.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo) A' +
        'S KontrollistaNM3,'
      ''
      '(Select Count(icr.PackageNo) FROM dbo.Invenrow icr'
      'WHERE icr.IC_GRPNo = icm.IC_GRPNo'
      
        'AND icr.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo) A' +
        'S ResultalistaPkt,'
      ''
      '(Select SUM(pt.Totalm3Nominal) FROM dbo.Invenrow icr'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = icr.PackageT' +
        'ypeNo'
      'WHERE icr.IC_GRPNo = icm.IC_GRPNo'
      
        'AND icr.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo) A' +
        'S ResultatlistaNM3,'
      'LIP.LogicalInventoryPointNo AS LIPNo,'
      'C.IntVerk,'
      'PIP.OwnerNo,'
      'LIP.PhysicalInventoryPointNo AS PIPNo,'
      'icg.Inventeringsdatum,'
      'icg.maxdatum,'
      'icg.Status,'
      'person.UserName AS SkapadAv,'
      'icm.InventoryValue AS V'#228'rde,'
      'icm.TotalNM3 AS NM3,'
      'icm.AvgPricePerNM3 AS Medelpris'
      ''
      'FROM dbo.LogicalInventoryPoint LIP'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.Client C on C.ClientNo = PIP.OwnerNo'
      'Inner Join dbo.City Cy on Cy.CityNo = PIP.PhyInvPointNameNo'
      
        'Inner Join dbo.InvCtrlMetod icm on icm.LogicalInventoryPointNo =' +
        ' LIP.LogicalInventoryPointNo'
      'Inner Join dbo.InvControlGrp icg on icg.IC_GRPNo = icm.IC_GRPNo'
      
        'Left Outer Join dbo.Users person on person.UserID = icg.CreatedU' +
        'ser'
      ''
      'WHERE Icg.MaxDatum >= :StartDate'
      'AND Icg.MaxDatum <= :EndDate'
      'AND ((PIP.OwnerNo = :OwnerNo) or (0 = :OwnerNo))'
      'AND ((icg.Status = :Status) or (5 = :Status))'
      ''
      '')
    Left = 984
    Top = 112
    ParamData = <
      item
        Name = 'STARTDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ENDDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_CI_InvenInventera: TIntegerField
      FieldName = 'Inventera'
      Origin = 'Inventera'
      Required = True
    end
    object sq_CI_InvenInvNr: TIntegerField
      FieldName = 'InvNr'
      Origin = 'InvNr'
      Required = True
    end
    object sq_CI_InvenÄgare: TStringField
      FieldName = #196'gare'
      Origin = '['#196'gare]'
      Size = 80
    end
    object sq_CI_InvenLS: TStringField
      FieldName = 'LS'
      Origin = 'LS'
      Size = 50
    end
    object sq_CI_InvenLG: TStringField
      FieldName = 'LG'
      Origin = 'LG'
      Size = 50
    end
    object sq_CI_InvenKontrollistaPkt: TIntegerField
      FieldName = 'KontrollistaPkt'
      Origin = 'KontrollistaPkt'
      ReadOnly = True
    end
    object sq_CI_InvenKontrollistaNM3: TFloatField
      FieldName = 'KontrollistaNM3'
      Origin = 'KontrollistaNM3'
      ReadOnly = True
    end
    object sq_CI_InvenResultalistaPkt: TIntegerField
      FieldName = 'ResultalistaPkt'
      Origin = 'ResultalistaPkt'
      ReadOnly = True
    end
    object sq_CI_InvenResultatlistaNM3: TFloatField
      FieldName = 'ResultatlistaNM3'
      Origin = 'ResultatlistaNM3'
      ReadOnly = True
    end
    object sq_CI_InvenLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object sq_CI_InvenIntVerk: TIntegerField
      FieldName = 'IntVerk'
      Origin = 'IntVerk'
    end
    object sq_CI_InvenOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object sq_CI_InvenPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object sq_CI_InvenInventeringsdatum: TSQLTimeStampField
      FieldName = 'Inventeringsdatum'
      Origin = 'Inventeringsdatum'
    end
    object sq_CI_Invenmaxdatum: TSQLTimeStampField
      FieldName = 'maxdatum'
      Origin = 'maxdatum'
    end
    object sq_CI_InvenStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object sq_CI_InvenSkapadAv: TStringField
      FieldName = 'SkapadAv'
      Origin = 'SkapadAv'
    end
    object sq_CI_InvenVärde: TFloatField
      FieldName = 'V'#228'rde'
      Origin = '[V'#228'rde]'
    end
    object sq_CI_InvenNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
    end
    object sq_CI_InvenMedelpris: TFloatField
      FieldName = 'Medelpris'
      Origin = 'Medelpris'
    end
  end
  object sq_CI_All: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select icg.IC_GRPNo AS Inventera, icg.IC_GRPNo AS InvNr, C.Clien' +
        'tName AS '#196'gare, Cy.CityName AS LS, LIP.LogicalInventoryName AS L' +
        'G,'
      '(Select Count(icr.PackageNo) FROM dbo.InvControlrow icr'
      'WHERE icr.IC_GRPNo = icm.IC_GRPNo'
      
        'AND icr.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo) A' +
        'S KontrollistaPkt,'
      ''
      '(Select SUM(pt.Totalm3Nominal) FROM dbo.InvControlrow icr'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = icr.PackageT' +
        'ypeNo'
      'WHERE icr.IC_GRPNo = icm.IC_GRPNo'
      
        'AND icr.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo) A' +
        'S KontrollistaNM3,'
      ''
      '(Select Count(icr.PackageNo) FROM dbo.Invenrow icr'
      'WHERE icr.IC_GRPNo = icm.IC_GRPNo'
      
        'AND icr.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo) A' +
        'S ResultalistaPkt,'
      ''
      '(Select SUM(pt.Totalm3Nominal) FROM dbo.Invenrow icr'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = icr.PackageT' +
        'ypeNo'
      'WHERE icr.IC_GRPNo = icm.IC_GRPNo'
      
        'AND icr.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo) A' +
        'S ResultatlistaNM3,'
      'LIP.LogicalInventoryPointNo AS LIPNo,'
      'C.IntVerk,'
      'PIP.OwnerNo,'
      'LIP.PhysicalInventoryPointNo AS PIPNo,'
      'icg.Inventeringsdatum,'
      'icg.maxdatum,'
      'icg.Status,'
      'person.UserName AS SkapadAv,'
      'icm.InventoryValue AS V'#228'rde,'
      'icm.TotalNM3 AS NM3,'
      'icm.AvgPricePerNM3 AS Medelpris'
      ''
      'FROM dbo.LogicalInventoryPoint LIP'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.Client C on C.ClientNo = PIP.OwnerNo'
      'Inner Join dbo.City Cy on Cy.CityNo = PIP.PhyInvPointNameNo'
      
        'Inner Join dbo.InvCtrlMetod icm on icm.LogicalInventoryPointNo =' +
        ' LIP.LogicalInventoryPointNo'
      'Inner Join dbo.InvControlGrp icg on icg.IC_GRPNo = icm.IC_GRPNo'
      
        'Left Outer Join dbo.Users person on person.UserID = icg.CreatedU' +
        'ser'
      ''
      'WHERE Icg.MaxDatum >= :StartDate'
      'AND Icg.MaxDatum <= :EndDate'
      'AND ((PIP.OwnerNo = :OwnerNo) or (0 = :OwnerNo))'
      'AND ((icg.Status = :Status) or (5 = :Status))'
      ''
      ''
      'UNION'
      ''
      
        'Select 0 AS Inventera, 0 AS InvNr, C.ClientName AS '#196'gare, Cy.Cit' +
        'yName AS LS, LIP.LogicalInventoryName AS LG,'
      ''
      '(Select Count(pn.PackageNo) FROM dbo.PackageNumber pn'
      'WHERE pn.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo'
      'AND pn.Status = 1) AS KontrollistaPkt,'
      ''
      '(Select SUM(pt.Totalm3Nominal) FROM dbo.PackageNumber pn'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      'WHERE pn.LogicalInventoryPointNo = LIP.LogicalInventoryPointNo'
      'AND pn.Status = 1) AS KontrollistaNM3,'
      ''
      '0 AS ResultalistaPkt,'
      ''
      '0 AS ResultatlistaNM3,'
      ''
      'LIP.LogicalInventoryPointNo AS LIPNo,'
      'C.IntVerk,'
      'PIP.OwnerNo,'
      'LIP.PhysicalInventoryPointNo AS PIPNo,'
      #39#39' AS Inventeringsdatum,'
      #39#39' AS maxdatum,'
      '-1 AS Status,'
      #39'N/A'#39' AS SkapadAv,'
      '0.0 AS V'#228'rde,'
      '0.0 AS NM3,'
      '0.0 AS Medelpris'
      ''
      'FROM dbo.LogicalInventoryPoint LIP'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.Client C on C.ClientNo = PIP.OwnerNo'
      'Inner Join dbo.City Cy on Cy.CityNo = PIP.PhyInvPointNameNo'
      ''
      'WHERE'
      '((PIP.OwnerNo = :OwnerNo) or (0 = :OwnerNo))'
      
        'AND LIP.LogicalInventoryPointNo not in (Select icm.LogicalInvent' +
        'oryPointNo'
      'FROM dbo.InvCtrlMetod icm'
      'Inner Join dbo.InvControlGrp icg on icg.IC_GRPNo = icm.IC_GRPNo'
      'WHERE Icg.MaxDatum >= :StartDate'
      'AND Icg.MaxDatum <= :EndDate'
      'AND Icg.OwnerNo = PIP.OwnerNo)'
      ''
      '')
    Left = 984
    Top = 160
    ParamData = <
      item
        Name = 'STARTDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ENDDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_CI_AllInventera: TIntegerField
      FieldName = 'Inventera'
      Origin = 'Inventera'
      ReadOnly = True
      Required = True
    end
    object sq_CI_AllInvNr: TIntegerField
      FieldName = 'InvNr'
      Origin = 'InvNr'
      ReadOnly = True
      Required = True
    end
    object sq_CI_AllÄgare: TStringField
      FieldName = #196'gare'
      Origin = '['#196'gare]'
      ReadOnly = True
      Size = 80
    end
    object sq_CI_AllLS: TStringField
      FieldName = 'LS'
      Origin = 'LS'
      ReadOnly = True
      Size = 50
    end
    object sq_CI_AllLG: TStringField
      FieldName = 'LG'
      Origin = 'LG'
      ReadOnly = True
      Size = 50
    end
    object sq_CI_AllKontrollistaPkt: TIntegerField
      FieldName = 'KontrollistaPkt'
      Origin = 'KontrollistaPkt'
      ReadOnly = True
    end
    object sq_CI_AllKontrollistaNM3: TFloatField
      FieldName = 'KontrollistaNM3'
      Origin = 'KontrollistaNM3'
      ReadOnly = True
    end
    object sq_CI_AllResultalistaPkt: TIntegerField
      FieldName = 'ResultalistaPkt'
      Origin = 'ResultalistaPkt'
      ReadOnly = True
    end
    object sq_CI_AllResultatlistaNM3: TFloatField
      FieldName = 'ResultatlistaNM3'
      Origin = 'ResultatlistaNM3'
      ReadOnly = True
    end
    object sq_CI_AllLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ReadOnly = True
      Required = True
    end
    object sq_CI_AllIntVerk: TIntegerField
      FieldName = 'IntVerk'
      Origin = 'IntVerk'
      ReadOnly = True
    end
    object sq_CI_AllOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ReadOnly = True
    end
    object sq_CI_AllPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ReadOnly = True
    end
    object sq_CI_AllInventeringsdatum: TSQLTimeStampField
      FieldName = 'Inventeringsdatum'
      Origin = 'Inventeringsdatum'
      ReadOnly = True
    end
    object sq_CI_Allmaxdatum: TSQLTimeStampField
      FieldName = 'maxdatum'
      Origin = 'maxdatum'
      ReadOnly = True
    end
    object sq_CI_AllStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ReadOnly = True
    end
    object sq_CI_AllSkapadAv: TStringField
      FieldName = 'SkapadAv'
      Origin = 'SkapadAv'
      ReadOnly = True
    end
    object sq_CI_AllVärde: TFloatField
      FieldName = 'V'#228'rde'
      Origin = '[V'#228'rde]'
      ReadOnly = True
    end
    object sq_CI_AllNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
    end
    object sq_CI_AllMedelpris: TFloatField
      FieldName = 'Medelpris'
      Origin = 'Medelpris'
      ReadOnly = True
    end
  end
  object sq_AssignProdToPG: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.Sic_ProdPriceGroup'
      'WHERE ProductNo = :ProductNo'
      'AND OwnerNo = :OwnerNo'
      'AND IC_GrpNo = :IC_GrpNo'
      ''
      
        'Insert into dbo.Sic_ProdPriceGroup(PriceGroupNo, ProductNo, Owne' +
        'rNo, DateCreated, CreatedUser, IC_grpno)'
      
        'Select :PriceGroupNo, :ProductNo, :OwnerNo, :DateCreated, :Creat' +
        'edUser, :IC_grpno'
      '')
    Left = 160
    Top = 416
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRICEGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATECREATED'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'CREATEDUSER'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object sq_updGroupPrice: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Insert into dbo.GroupPrice'
      'Select spg.PriceGroupNo, :IC_GrpNo, 0 AS Price FROM'
      'dbo.Sic_PriceGroup spg'
      'WHERE spg.OwnerNo = :OwnerNo'
      'AND spg.PriceGroupNo not in (Select GP.PriceGroupNo FROM'
      'dbo.GroupPrice GP'
      'WHERE GP.PriceGroupNo = spg.PriceGroupNo'
      'AND GP.IC_GrpNo = :IC_GrpNo)'
      '')
    Left = 160
    Top = 464
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GenSic_Lip: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.Sic_Lip'
      'WHERE Sic_No = :Sic_No'
      
        'Insert into dbo.Sic_Lip(Sic_No, LIPNo, LIPGroupNo, Lager, Percen' +
        'tShare, InventeratNM3, CalcNM3, OriginalLIPNo)'
      
        'Select  sicg.Sic_No, icm.LogicalInventoryPointNo, isNull(LIP.Inv' +
        'Code,'#39'X'#39'),'
      
        'C.CityName+'#39'/'#39'+LIP.LogicalInventoryName, 100, SUM(pt.Totalm3Nomi' +
        'nal) AS InventeratNM3,'
      'SUM(pt.Totalm3Nominal) AS CalcNM3, icm.LogicalInventoryPointNo'
      'from dbo.Sic_IC_grp sicg'
      'Inner Join dbo.InvCtrlMetod icm on icm.ic_grpNo = sicg.ic_grpNo'
      'Inner Join dbo.InvenRow isu on isu.ic_grpNo = icm.ic_grpNo'
      #9#9#9'AND isu.LogicalInventoryPointNo = icm.LogicalInventoryPointNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = icm.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.City C on C.CityNo = PIP.PhyInvPointNameNo'
      
        'Inner Join dbo.PackageType pt ON pt.PackageTypeNo = isu.PackageT' +
        'ypeNo'
      'WHERE sicg.Sic_No = :Sic_No'
      ''
      
        'Group By sicg.Sic_No, icm.LogicalInventoryPointNo,  LIP.InvCode,' +
        ' C.CityName, LIP.LogicalInventoryName --, sicg.ic_grpNo, sicg.si' +
        'c_No'
      '')
    Left = 48
    Top = 432
    ParamData = <
      item
        Name = 'SIC_NO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_InsPriceNM3: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Insert into dbo.InvenPricePerNM3(IC_GrpNo, ProductNo, PricePerNM' +
        '3)'
      'Select :IC_GrpNo, :ProductNo, :PricePerNM3'
      '')
    Left = 160
    Top = 528
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRICEPERNM3'
        DataType = ftFloat
        ParamType = ptInput
      end>
  end
  object sq_updPriceNM3: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.InvenPricePerNM3'
      'Set PricePerNM3 = :PricePerNM3'
      'WHERE'
      'IC_GrpNo = :IC_GrpNo'
      'AND ProductNo = :ProductNo'
      '')
    Left = 160
    Top = 576
    ParamData = <
      item
        Name = 'PRICEPERNM3'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_PkgInInvLager: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'use vis_vida'
      'SELECT distinct'
      '        PN.PackageNo'#9#9'        AS PACKAGENO'
      ''
      'FROM     dbo.PackageNumber PN'
      'INNER JOIN dbo.InvControlRow icr on icr.PackageNo = pn.PackageNo'
      #9#9#9#9#9#9#9'AND icr.SupplierCode = pn.SupplierCode'
      'WHERE'
      'icr.IC_GrpNo = :IC_GrpNo     '
      'AND PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      
        'AND pn.LogicalInventoryPointNo in (Select icm.LogicalInventoryPo' +
        'intNo from'
      'dbo.InvCtrlMetod icm'
      'WHERE icm.IC_GrpNo = icr.IC_GrpNo)'
      '')
    Left = 144
    Top = 624
    ParamData = <
      item
        Name = 'IC_GRPNO'
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
    object sq_PkgInInvLagerPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      Required = True
    end
  end
  object sq_SaveInvLista_PktNr: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      '-- L'#228'gg till paket som producerades eller AR f'#246're max datum'
      '-- och inte finns med p'#229' icr listan '
      ''
      'Insert into dbo.InvControlRow'
      ''
      'Select'
      'icm.IC_grpno,'
      'icm.LogicalInventoryPointNo AS LIP,'
      'icm.InventeringsMetod,'
      'pn.PackageNo AS PAKETNR,'
      'pn.SupplierCode AS LEVKOD,'
      'pt.PackageTypeNo,'
      '1,'
      '1,'
      'LIP.LogicalInventoryName AS Lagergrupp,'
      '0 AS STATUS,'
      'pip.OwnerNo'
      ''
      'FROM  dbo.InvCtrlMetod icm'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = icm.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = pip.OwnerNo '
      ''
      
        'INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = ' +
        'lip.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      ''
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      'Inner Join dbo.Species'#9'SPE'#9'ON SPE.SpeciesNo = pg.SpeciesNo'
      #9#9#9#9'AND SPE.LanguageCode = 1'
      'Inner Join dbo.Surfacing'#9'SUR'#9'ON SUR.SurfacingNo = pg.SurfacingNo'
      #9#9#9#9'AND SUR.LanguageCode = 1'
      'Inner Join dbo.Grade   '#9'Gr'#9'ON Gr.GradeNo = pd.GradeNo'
      #9#9#9#9'AND Gr.LanguageCode = 1'
      'Inner Join dbo.City'#9#9'Cy'#9'ON Cy.CityNo = pip.PhyInvPointNameNo'
      ''
      'WHERE'
      'icm.IC_grpno = :IC_grpno'
      'AND pn.Status = 1'
      'AND icm.LogicalInventoryPointNo = :LogicalInventoryPointNo'
      'AND icm.InventeringsMetod = :InventeringsMetod'
      ''
      'AND pn.PackageNo in (Select PackageNo'
      'from dbo.PackageNumberLog PNL'
      'WHERE PackageNo = pn.PackageNo'
      'AND Status = 1'
      'AND SupplierCode = PN.SupplierCode'
      'AND pn.datecreated < :MaxDatum'
      '-- AND RegistrationPointNo <> 5'
      'AND ( ( Operation = 0) OR (Operation = 7)) )'
      ''
      '-- F'#246'r att inte f'#229' med paket som '#228'r utlastade f'#246're maxdatum'
      'AND pn.PackageNo not in (Select LD.packageNo'
      'FROM dbo.LoadDetail LD'
      'Inner Join dbo.Loads L ON L.LoadNo = LD.LoadNo'
      'WHERE'
      'LD.SupplierCode = pn.SupplierCode'
      'AND L.SenderLoadStatus <> 0'
      'AND L.LoadedDate <= :MaxDatum)'
      ''
      ''
      'AND pn.PackageNo not in (Select PackageNo'
      'from dbo.InvControlrow icr'
      'WHERE IC_grpno = icm.IC_grpno'
      'AND PackageNo = pn.PackageNo'
      'AND SupplierCode = PN.SupplierCode)'
      ''
      '')
    Left = 48
    Top = 536
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOGICALINVENTORYPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVENTERINGSMETOD'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'MAXDATUM'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object sq_CopyRows: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete FROM dbo.InvenRow'
      'WHERE IC_GrpNo = :IC_GrpNo'
      ''
      
        'Insert into dbo.InvenRow(IC_GrpNo, LogicalInventoryPointNo, Inve' +
        'nteringsMetod,'
      
        'PackageNo, Suppliercode, PackageTypeNo, NoOfPkgs, AntalPaketILag' +
        'er, LogicalInventoryName,'
      'Status, OwnerNo, LONo, Res01)'
      'Select IC_GrpNo, LogicalInventoryPointNo, InventeringsMetod,'
      'PackageNo, Suppliercode, PackageTypeNo, NoOfPkgs,'
      '1 AS AntalPaketILager, LogicalInventoryName,'
      'Case'
      'WHEN AntalPaketILager = 1 THEN 21'
      'WHEN AntalPaketILager = 2 THEN 22'
      'WHEN AntalPaketILager = 3 THEN 23'
      'WHEN AntalPaketILager = 4 THEN 24'
      'END AS Status,'
      'OwnerNo, LONo, Res01'
      'FROM dbo.InvControlrow'
      'WHERE IC_GrpNo = :IC_GrpNo'
      'AND ((Status = :Status) or (-1 = :Status))'
      '')
    Left = 48
    Top = 584
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_InsHlpRows: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Insert into dbo.InvenRow'
      'Select'
      'icp.IC_grpNo,'
      'icp.LogicalInventoryPointNo,'
      '1 '#9#9#9#9'AS InventeringsMetod,'
      'icp.PackageNo,'
      'icp.Suppliercode,'
      'pn.PackageTypeNo,'
      '1 '#9#9#9#9'AS NoOfPkgs,'
      '1 '#9#9#9#9'AS AntalPaketILager,'
      'LIP.LogicalInventoryName,'
      'icp.Operation '#9#9#9'AS Status,'
      'icr.VerkNo,'
      'icp.LONo,'
      '0'
      'FROM dbo.InvCtrl_Pkgs icp'
      'Inner Join dbo.InvControlGrp ICR on icr.IC_grpNo = icp.IC_grpNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = icp.LogicalInventoryPointNo'
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = icp.PackageNo'
      'AND pn.SupplierCode = icp.SupplierCode'
      'WHERE'
      'icp.IC_GrpNo = :IC_grpNo'
      
        'AND ((icp.Operation = 3) or (icp.Operation = 4) or (icp.Operatio' +
        'n = 5) or (icp.Operation = 10) or (icp.Operation = 13)'
      'or (icp.Operation = 14))'
      ''
      'AND icp.PackageNo not in (Select ic.PackageNo'
      'From dbo.InvDuplPkgNr ic'
      'WHERE'
      'ic.IC_GrpNo = icp.IC_GrpNo'
      'AND ic.SupplierCode = icp.SupplierCode'
      'AND ic.Operation = icp.Operation)'
      ''
      'AND icp.PackageNo not in (Select ic.PackageNo'
      'From dbo.InvControlrow ic'
      'WHERE'
      'ic.IC_GrpNo = icp.IC_GrpNo'
      'AND ic.SupplierCode = icp.SupplierCode'
      'AND ic.PackageNo = icp.PackageNo)'
      ''
      ''
      'Update dbo.InvenRow Set PackageTypeNo = pn.PackageTypeNo,'
      'LogicalInventoryPointNo = icp.LogicalInventoryPointNo,'
      'Status = icp.Operation,'
      'LONo = icp.LONo'
      'FROM dbo.InvCtrl_Pkgs icp'
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = icp.PackageNo'
      'AND pn.SupplierCode = icp.SupplierCode'
      
        'INNER JOIN dbo.InvenRow ON dbo.InvenRow.PackageNo = icp.PackageN' +
        'o'
      'AND dbo.InvenRow.SupplierCode = icp.SupplierCode'
      'AND dbo.InvenRow.IC_GrpNo = icp.IC_GrpNo'
      'WHERE'
      'icp.IC_GrpNo = :IC_grpNo'
      
        'AND ((icp.Operation = 3) or (icp.Operation = 4) or (icp.Operatio' +
        'n = 5) or (icp.Operation = 10) or (icp.Operation = 13))'
      ''
      'Delete dbo.InvenRow'
      'FROM dbo.InvCtrl_Pkgs icp'
      
        'INNER JOIN dbo.InvenRow ON dbo.InvenRow.PackageNo = icp.PackageN' +
        'o'
      'AND dbo.InvenRow.SupplierCode = icp.SupplierCode'
      'AND dbo.InvenRow.IC_GrpNo = icp.IC_GrpNo'
      'WHERE'
      'icp.IC_GrpNo = :IC_grpNo'
      
        'AND ((icp.Operation = 0) or (icp.Operation = 2) or (icp.Operatio' +
        'n = 6) or (icp.Operation = 9))'
      ''
      'Update dbo.InvenRow Set PackageTypeNo = pn.PackageTypeNo,'
      'LogicalInventoryPointNo = icp.LogicalInventoryPointNo,'
      'Status = 8'
      'FROM dbo.InvCtrl_Pkgs icp'
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = icp.PackageNo'
      'AND pn.SupplierCode = icp.SupplierCode'
      
        'INNER JOIN dbo.InvenRow ON dbo.InvenRow.PackageNo = icp.PackageN' +
        'o'
      'AND dbo.InvenRow.SupplierCode = icp.SupplierCode'
      'AND dbo.InvenRow.IC_GrpNo = icp.IC_GrpNo'
      'WHERE'
      'icp.IC_GrpNo = :IC_grpNo'
      'AND Operation = 8'
      '')
    Left = 48
    Top = 632
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_PkgInCtrlList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select icr.packageNo'
      'from dbo.InvControlrow icr'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      'AND ICR.PackageNo = :PackageNo'
      'AND ICR.SupplierCode = :SupplierCode'
      '')
    Left = 544
    Top = 392
    ParamData = <
      item
        Name = 'IC_GRPNO'
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
    object sq_PkgInCtrlListpackageNo: TIntegerField
      FieldName = 'packageNo'
      Origin = 'packageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_UpdLIPCtrlPkg: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.InvCtrl_Pkgs'
      
        'Set LogicalInventoryPointNo = PackageNumber.LogicalInventoryPoin' +
        'tNo'
      'FROM dbo.InvCtrl_Pkgs'
      
        'Inner Join dbo.PackageNumber on PackageNumber.PackageNo = InvCtr' +
        'l_Pkgs.PackageNo'
      #9#9#9#9'AND PackageNumber.SupplierCode = InvCtrl_Pkgs.SupplierCode'
      'WHERE'
      'InvCtrl_Pkgs.PackageNo = :PackageNo'
      'AND InvCtrl_Pkgs.SupplierCode = :SupplierCode'
      'AND Operation = :Operation'
      'AND InvCtrl_Pkgs.IC_GrpNo = :IC_GrpNo'
      '')
    Left = 704
    Top = 400
    ParamData = <
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'OPERATION'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_PkgStatus: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT pn.Status'
      'FROM dbo.PackageNumber PN'
      'WHERE PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      ''
      ' '
      ' '
      '')
    Left = 544
    Top = 496
    ParamData = <
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
    object sq_PkgStatusStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
  end
  object sq_CopyManSicRows: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.SicRow_PG'
      'WHERE Sic_No = :Sic_No'
      'AND LIPGroupNo is null'
      ''
      
        'Insert into dbo.SicRow_PG(Sic_No, RowName, LIPGroupNo, NM3, Pric' +
        'e, FDmCost, PlanerShavingsCost,'
      
        'PlaningCost, SortingCost, KilnDryingCost, CalcPrice, TotalValue,' +
        ' PriceGroupNo, PriceGroupName)'
      
        'Select Sic_No, RowName, LIPGroupNo, NM3, Price, FDmCost, PlanerS' +
        'havingsCost,'
      
        'PlaningCost, SortingCost, KilnDryingCost, CalcPrice, TotalValue,' +
        ' -1, null'
      'FROM dbo.SicRow'
      'WHERE Sic_No = :Sic_No'
      'AND LIPGroupNo is null'
      '')
    Left = 544
    Top = 544
    ParamData = <
      item
        Name = 'SIC_NO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_PkgTypExistIn_InvCtrlPkt: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select PackageTypeNo FROM dbo.InvCtrlRowPkt'
      'WHERE ic_grpNo = :ic_grpNo'
      'AND PackageTypeNo = :PackageTypeNo'
      'AND LogicalInventoryPointNo = :LogicalInventoryPointNo'
      '')
    Left = 400
    Top = 608
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOGICALINVENTORYPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_PkgTypExistIn_InvCtrlPktPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_OnePkg: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct'
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PN.PackageNo'#9#9'        AS PACKAGENO,'
      '        PN.PackageTypeNo'#9'        AS PACKAGETYPENO,'
      '        PN.SupplierCode'#9'                AS SUPP_CODE,'
      '        PT.Totalm3Actual                AS  M3_NET,'
      '        PT.TotalNoOfPieces              AS  PCS,'
      '        PN.LogicalInventoryPointNo      AS LOG_INVENTORY_NO,'
      '        PTL.PcsPerLength                AS PCS_PER_LENGTH,'
      '        Lag.Lager,'
      '        PIP.OwnerNo,'
      
        '      (Select Top 1 pp.ProductionDate FROM dbo.Package_Productio' +
        'n pp'
      '      WHERE pp.PackageNo = pn.PackageNo'
      '      AND pp.SupplierCode = pn.SupplierCode'
      '      AND pp.Operation = 0'
      '    Order By pp.ProductionDate Desc) AS Producerad'
      ''
      'FROM       dbo.PackageNumber             PN'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      
        '        Inner Join dbo.Lager Lag on Lag.LIPNo = PN.LogicalInvent' +
        'oryPointNo'
      
        '        Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalI' +
        'nventoryPointNo = PN.LogicalInventoryPointNo'
      
        '        Inner Join dbo.PhysicalInventoryPoint PIP on PIP.Physica' +
        'lInventoryPointNo = LIP.PhysicalInventoryPointNo'
      ''
      ''
      'WHERE     PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      ''
      ' '
      '')
    Left = 400
    Top = 656
    ParamData = <
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
    object sq_OnePkgPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 150
    end
    object sq_OnePkgPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_OnePkgPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
    end
    object sq_OnePkgSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_OnePkgM3_NET: TFloatField
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
    end
    object sq_OnePkgPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
    end
    object sq_OnePkgLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
      Origin = 'LOG_INVENTORY_NO'
    end
    object sq_OnePkgPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Origin = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OnePkgLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ReadOnly = True
      Size = 101
    end
    object sq_OnePkgOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object sq_OnePkgProducerad: TSQLTimeStampField
      FieldName = 'Producerad'
      Origin = 'Producerad'
      ReadOnly = True
    end
  end
  object sq_InsPkgType_NoOfPkgs: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Insert into dbo.InvCtrlrowPkt'
      '(IC_grpno,'
      'LogicalInventoryPointNo,'
      'InventeringsMetod,'
      'PackageTypeNo,'
      'NoOfPkgs,'
      'AntalPaketILager,'
      'LogicalInventoryName,'
      'STATUS,'
      'OwnerNo)'
      ''
      'Values(:IC_grpno,'
      ':LogicalInventoryPointNo,'
      '2,'
      ':PackageTypeNo,'
      ':NoOfPkgs,'
      '0,'
      ':LogicalInventoryName,'
      '0,'
      ':OwnerNo)'
      '')
    Left = 400
    Top = 712
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOGICALINVENTORYPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NOOFPKGS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOGICALINVENTORYNAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_SaveInvListaPktTyp: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      ''
      'Insert into dbo.InvCtrlRowPkt'
      'Select distinct'
      'icm.IC_grpno,'
      'icm.LogicalInventoryPointNo AS LIP,'
      'icm.InventeringsMetod,'
      'pt.PackageTypeNo,'
      '(Select Count(*) FROM dbo.PackageNumber WHERE'
      'PackageTypeNo = pn.PackageTypeNo'
      'AND LogicalInventoryPointNo = lip.LogicalInventoryPointNo'
      'AND Status = 1) AS NoOfPkg,'
      ''
      '(Select Count(*) FROM dbo.PackageNumber WHERE'
      'PackageTypeNo = pn.PackageTypeNo'
      'AND LogicalInventoryPointNo = lip.LogicalInventoryPointNo'
      'AND Status = 1) AS AntPktILager,'
      'LIP.LogicalInventoryName AS Lagergrupp,'
      ''
      '0 AS STATUS,'
      'pip.OwnerNo'
      ''
      'FROM  dbo.InvCtrlMetod icm'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = icm.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = pip.OwnerNo '
      ''
      
        'INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = ' +
        'lip.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      ''
      ''
      'WHERE'
      'icm.IC_grpno = :IC_grpno'
      'AND icm.LogicalInventoryPointNo = :LogicalInventoryPointNo'
      'AND icm.InventeringsMetod = :InventeringsMetod'
      'AND pn.Status = 1'
      ''
      ''
      '')
    Left = 400
    Top = 768
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOGICALINVENTORYPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVENTERINGSMETOD'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_DelCreditedPkgs: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.InvCtrl_Pkgs'
      'FROM'
      'dbo.InvCtrl_Pkgs'
      
        'Inner Join dbo.Invoice_Credited ic on ic.InternalInvoiceNo = dbo' +
        '.InvCtrl_Pkgs.Res01'
      'WHERE'
      'dbo.InvCtrl_Pkgs.IC_GrpNo = :IC_GrpNo'
      'AND EXISTS (Select Kre.PackageNo FROM dbo.InvCtrl_Pkgs Kre'
      
        'Inner Join dbo.Invoice_Credited icKre on icKre.NewInternalInvoic' +
        'eNo = Kre.Res01'
      'WHERE Kre.PackageNo = dbo.InvCtrl_Pkgs.PackageNo'
      'AND Kre.SupplierCode = dbo.InvCtrl_Pkgs.SupplierCode '
      'AND Kre.IC_GrpNo = dbo.InvCtrl_Pkgs.IC_GrpNo)'
      '')
    Left = 608
    Top = 608
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_PkgExistInHlp: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select ICR.Operation'
      'FROM dbo.InvCtrl_Pkgs ICR'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      'AND ICR.PackageNo = :PackageNo'
      'AND ICR.SupplierCode = :SupplierCode'
      ''
      '')
    Left = 608
    Top = 656
    ParamData = <
      item
        Name = 'IC_GRPNO'
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
    object sq_PkgExistInHlpOperation: TIntegerField
      FieldName = 'Operation'
      Origin = 'Operation'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_InsertToInvCtrl_Pkgs: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Insert into dbo.InvCtrl_Pkgs'
      ''
      'Select 28, LD.PackageNo, LD.SupplierCode, 3, GetDate()'
      'FROM dbo.Loads L'
      'Inner Join dbo.LoadDetail LD ON LD.LoadNo = L.LoadNo'
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo'
      
        'Inner Join dbo.Confirmed_Load CL ON CL.Confirmed_LoadNo = L.Load' +
        'No'
      'WHERE L.customerNo = 232'
      'AND L.LoadedDate < '#39'2005-12-06 23:59:59'#39
      'AND pn.Status = 1'
      'AND LD.PackageNo not in (Select PackageNo'
      'from dbo.InvControlrow icr'
      'WHERE IC_grpno = -128'
      'AND PackageNo = LD.PackageNo'
      'AND SupplierCode = LD.SupplierCode)'
      '')
    Left = 608
    Top = 704
  end
  object sq_prelAvrLaster: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      '-- Prelimin'#228'ra F'#246'rs'#228'ljnings Avropslaster'
      'Insert into dbo.InvControlRow'
      'Select Distinct'
      'icm.IC_grpno,'
      'icm.LogicalInventoryPointNo AS LIP,'
      'icm.InventeringsMetod,'
      'pn.PackageNo AS PAKETNR,'
      'pn.SupplierCode AS LEVKOD,'
      'pt.PackageTypeNo, 1 AS KOL1, 3 AS KOL2,'
      'LIP.LogicalInventoryName AS Lagergrupp,'
      '1 AS STATUS, pip.OwnerNo,'
      'LD.ShippingPlanNo,'
      '0 AS Reserv'
      ''
      'FROM dbo.Loads L'
      'Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo'
      'Inner Join dbo.LoadShippingplan Lsp on Lsp.LoadNo = LD.LoadNo'
      'and lsp.shippingplanno = LD.shippingplanno'
      
        'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo a' +
        'nd pn.SupplierCode = LD.SupplierCode'
      
        'Inner Join dbo.InvCtrlMetod icm on icm.LogicalInventoryPointNo =' +
        ' LD.LIPNo'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = LD.LIPNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = pip.OwnerNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      ''
      'WHERE'
      'L.SupplierNo = :SupplierNo'
      'AND L.SenderLoadStatus < 2'
      'AND icm.IC_grpno = :IC_grpno'
      'AND pn.Status = 0'
      ''
      '-- Endast laster skapade mot avropsniv'#229
      '--'
      
        '-- m'#229'ste anv'#228'nda n'#229'got annat f'#246'r att avg'#246'ra om lasten '#228'r en avro' +
        'pslast, prova LoadingLocationNo is null'
      '-- and LSP.confirmedbyreciever = 1'
      '-- AND LSP.LoadingLocationNo is null'
      ''
      
        'AND L.CustomerNo not in (Select Verk.ClientNo FROM dbo.Client Ve' +
        'rk'
      'WHERE'
      'Verk.IntVerk = 1'
      'OR Verk.ClientNo = 741'
      'OR Verk.ClientNo = 3682)'
      ''
      '-- Endast laster mot f'#246'rs'#228'ljningskontrakt'
      
        'AND LD.ShippingPlanNo in (Select CSH.ShippingPlanNo FROM dbo.Cus' +
        'tomerShippingPlanHeader csh'
      'Inner Join dbo.Orders oh on oh.OrderNo = csh.OrderNo'
      'where oh.ordertype = 0'
      'AND CSH.ShippingPlanNo =  LD.ShippingPlanNo)'
      ''
      ''
      
        'AND pn.PackageNo not in (Select ir2.PackageNo From dbo.InvContro' +
        'lRow ir2'
      'WHERE'
      'ir2.IC_grpNo = icm.IC_grpno'
      'AND ir2.PackageNo = pn.PackageNo'
      'AND ir2.SupplierCode = pn.SupplierCode)'
      ''
      '')
    Left = 608
    Top = 752
    ParamData = <
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_SUM_SIC: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.SicRow where Sic_No = :Sic_No'
      'Insert into dbo.SicRow(Sic_No, RowName, LIPGroupNo, NM3,'
      
        'Price, FDmCost, PlanerShavingsCost, PlaningCost, SortingCost, Ki' +
        'lnDryingCost'
      ')'
      'Select sicl.Sic_No, Lager, sicl.LIPGroupNo, SUM(sicl.CalcNM3),'
      '0, 0, 0, 0, 0, 0'
      'from dbo.Sic_LIP sicl'
      'WHERE sicl.Sic_No = :Sic_No'
      'Group By sicl.Sic_No, sicl.LIPGroupNo, Lager'
      '')
    Left = 712
    Top = 648
    ParamData = <
      item
        Name = 'SIC_NO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetCtrlPkgs: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.Inv_By_Pkg'
      'WHERE Spec_UserID = :UserID'
      ''
      'Insert INTO dbo.Inv_By_Pkg'
      '(Spec_UserID,'
      'Spec_URI,'
      'SPEC_PhyInvPointNo,'
      'SPEC_PhyInvPointName,'
      'SPEC_LogicalInvName,'
      'SPEC_OwnerNo,'
      'SPEC_OwnerCode,'
      'SPEC_ProductNo,'
      'SPEC_ProductDisplayName,'
      'SPEC_PackageTypeNo,'
      'SPEC_PackageNo,'
      'SPEC_SupplierCode,'
      'SPEC_ActualThicknessMM,'
      'SPEC_ActualWidthMM,'
      'SPEC_NominalThicknessMM,'
      'SPEC_NominalWidthMM,'
      'SPEC_TotalNoOfPieces,'
      'SPEC_FreeForm,'
      'SPEC_1800,'
      'SPEC_2100,'
      'SPEC_2400,'
      'SPEC_2700,'
      'SPEC_3000,'
      'SPEC_3300,'
      'SPEC_3600,'
      'SPEC_3900,'
      'SPEC_4200,'
      'SPEC_4500,'
      'SPEC_4800,'
      'SPEC_5100,'
      'SPEC_5400,'
      'SPEC_5700,'
      'SPEC_6000,'
      'SPEC_ActualM3,'
      'SPEC_NominalM3,'
      'SPEC_LinealMeter,'
      'SPEC_MFBMNominal,'
      'SPEC_SQMofActualWidth,'
      'SPEC_CreatedDate,'
      'SPEC_Species,'
      'SPEC_IntGrade,'
      'SPEC_SurfacingName,'
      'MaxLength,'
      'InvNr,'
      'InvDatum,'
      'Agare'
      ')'
      'Select distinct'
      ':UserID,'
      'PTL.STD_Length,'
      'pip.PhyInvPointNameNo,'
      'Cy.CityName,'
      'LIP.LogicalInventoryName,'
      'pip.OwnerNo,'
      'Verk.ClientCode,'
      'pd.ProductNo,'
      'pd.ProductDisplayName,'
      'pt.PackageTypeNo,'
      'pn.PackageNo,'
      'pn.SupplierCode,'
      'pg.ActualThicknessMM,'
      'pg.ActualWidthMM,'
      'pg.NominalThicknessMM,'
      'pg.NominalWidthMM,'
      'pt.TotalNoOfPieces,'
      'PTL.PcsPerLength,'
      'PTL.L18,'
      'PTL.L21,'
      'PTL.L24,'
      'PTL.L27,'
      'PTL.L30,'
      'PTL.L33,'
      'PTL.L36,'
      'PTL.L39,'
      'PTL.L42,'
      'PTL.L45,'
      'PTL.L48,'
      'PTL.L51,'
      'PTL.L54,'
      'PTL.L57,'
      'PTL.L60,'
      'pt.Totalm3Actual,'
      'pt.Totalm3Nominal,'
      'pt.TotalLinealMeterActualLength,'
      'pt.TotalMFBMNominal,'
      'pt.TotalSQMofActualWidth,'
      'pn.DateCreated,'
      ''
      'SPE.SpeciesName,'
      'Gr.GradeName,'
      'SUR.SurfacingName,'
      ''
      '(Select MAX(ActualLengthMM) FROM dbo.ProductLength pl2'
      
        'Inner Join dbo.PackageTypeDetail ptd2 '#9'ON ptd2.ProductLengthNo =' +
        ' pl2.ProductLengthNo'
      'WHERE ptd2.PackageTypeNo = pt.PackageTypeNo) AS MAXL'#196'NGD,'
      'ig.IC_GrpNo,'
      'ig.Inventeringsdatum,'
      'Verk.ClientName'
      ''
      'FROM  dbo.InvControlGrp IG'
      'Inner Join dbo.Client Verk on Verk.ClientNo = ig.OwnerNo'
      'Inner Join dbo.InvCtrlMetod icm on icm.IC_GrpNo = ig.IC_GrpNo'
      'Inner Join dbo.InvControlRow ICR on iCr.IC_GrpNo = icm.IC_GrpNo'
      
        #9#9#9#9'AND iCr.LogicalInventoryPointNo = icm.LogicalInventoryPointN' +
        'o'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON LIP.LogicalInventory' +
        'PointNo = icr.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      ''
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = icr.PackageNo'
      #9#9#9#9'AND pn.SupplierCode = icr.SupplierCode'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      
        'Inner Join dbo.PackageTypeDetail ptd '#9'ON ptd.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductLength pl '#9'ON pl.ProductLengthNo = ptd.Pro' +
        'ductLengthNo'
      
        'Inner Join dbo.packageTypeLengths PTL ON PTL.PackageTypeNo = pt.' +
        'PackageTypeNo'
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      'Inner Join dbo.Species'#9'SPE'#9'ON SPE.SpeciesNo = pg.SpeciesNo'
      #9#9#9#9'AND SPE.LanguageCode = 1'
      'Inner Join dbo.Surfacing'#9'SUR'#9'ON SUR.SurfacingNo = pg.SurfacingNo'
      #9#9#9#9'AND SUR.LanguageCode = 1'
      'Inner Join dbo.Grade   '#9'Gr'#9'ON Gr.GradeNo = pd.GradeNo'
      #9#9#9#9'AND Gr.LanguageCode = 1'
      'Inner Join dbo.City'#9#9'Cy'#9'ON Cy.CityNo = pip.PhyInvPointNameNo'
      'LEFT OUTER JOIN dbo.Client cl ON cl.ClientNo = pip.OwnerNo'
      
        'LEFT OUTER JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeS' +
        'tamp'
      'LEFT OUTER JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID'
      'LEFT OUTER JOIN dbo.WrapType wt ON wt.WrapTypeNo = pt.WrapType'
      'WHERE ig.IC_GrpNo = :IC_GrpNo'
      'AND icm.LogicalInventoryPointNo = :LIPNo'
      
        'AND ((icr.Status = 1) or (icr.Status =3) or (icr.Status = 4) or ' +
        '(icr.Status = 5))'
      ' '
      ' '
      '')
    Left = 712
    Top = 704
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_copyall: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete FROM dbo.InvenRow_all'
      'WHERE IC_GrpNo = :IC_GrpNo'
      ''
      
        'Insert into dbo.InvenRow_all(IC_GrpNo, LogicalInventoryPointNo, ' +
        'InventeringsMetod,'
      
        'PackageNo, Suppliercode, PackageTypeNo, NoOfPkgs, AntalPaketILag' +
        'er, LogicalInventoryName,'
      'Status, OwnerNo, LONo, Res01)'
      'Select IC_GrpNo, LogicalInventoryPointNo, InventeringsMetod,'
      'PackageNo, Suppliercode, PackageTypeNo, NoOfPkgs,'
      '1 AS AntalPaketILager, LogicalInventoryName,'
      'Case'
      'WHEN AntalPaketILager = 1 THEN 21'
      'WHEN AntalPaketILager = 2 THEN 22'
      'WHEN AntalPaketILager = 3 THEN 23'
      'WHEN AntalPaketILager = 4 THEN 24'
      'END AS Status,'
      'OwnerNo, LONo, Res01'
      'FROM dbo.InvControlrow'
      'WHERE IC_GrpNo = :IC_GrpNo'
      'AND Status = 1'
      '')
    Left = 712
    Top = 752
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_DelCtrlRowPktNr: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete from dbo.InvControlRow'
      'where IC_grpno = :IC_grpno'
      '')
    Left = 40
    Top = 704
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_CleanICR: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.InvControlRow'
      'WHERE IC_grpno = :IC_grpno AND  ((Status = 3) or (Status = 4))'
      ''
      'Update dbo.InvControlRow'
      'Set Status = 1'
      'WHERE IC_grpno = :IC_grpno'
      '')
    Left = 40
    Top = 752
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_AddToICR: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.InvControlRow'
      'WHERE'
      'IC_grpno = :IC_grpno'
      'AND ((Status = 3) or (Status = 4) or (Status = 5))'
      ''
      'Insert into dbo.InvControlRow'
      '-- L'#228'gg in production och inleverans paket'
      'Select'
      'icm.IC_grpno,'
      'icm.LogicalInventoryPointNo AS LIP,'
      'icm.InventeringsMetod,'
      'pn.PackageNo AS PAKETNR,'
      'pn.SupplierCode AS LEVKOD,'
      'pn.PackageTypeNo,'
      '1,'
      '1,'
      'LIP.LogicalInventoryName AS Lagergrupp,'
      'ICP.Operation AS STATUS,'
      'pip.OwnerNo'
      ''
      'FROM  dbo.InvCtrlMetod icm'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = icm.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo'
      'Inner Join dbo.InvCtrl_Pkgs ICP ON ICP.IC_grpno = icm.IC_grpno'
      
        #9#9#9#9'AND ICP.LogicalInventoryPointNo = ICM.LogicalInventoryPointN' +
        'o'
      ''
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = ICP.PackageNo'
      #9#9#9#9'AND pn.SupplierCode = ICP.SupplierCode'
      ''
      'WHERE'
      'icm.IC_grpno = :IC_grpno'
      '-- AND pn.Status = 1'
      
        'AND ((ICP.Operation = 3) or (ICP.Operation = 4) or (ICP.Operatio' +
        'n = 5))'
      ''
      'AND pn.PackageNo not in (Select PackageNo'
      'from dbo.InvControlrow icr'
      'WHERE IC_grpno = icm.IC_grpno'
      'AND PackageNo = pn.PackageNo'
      'AND SupplierCode = PN.SupplierCode)'
      '')
    Left = 40
    Top = 808
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_RemFromICR: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.InvControlRow '
      'Set Status = 1'
      'FROM dbo.InvCtrl_Pkgs ICP'
      
        'Inner Join dbo.InvControlRow ON dbo.InvControlRow.PackageNo = IC' +
        'P.PackageNo'
      #9#9#9#9'AND dbo.InvControlRow.SupplierCode = ICP.SupplierCode'
      '        and dbo.InvControlRow.IC_grpno = icp.IC_grpno'
      'WHERE'
      'icp.IC_grpno = :IC_grpno'
      
        'AND ((ICP.Operation = 0) or (ICP.Operation = 2) or (ICP.Operatio' +
        'n = 6))'
      ''
      'Update dbo.InvControlRow'
      'Set Status = ICP.Operation'
      'FROM dbo.InvCtrl_Pkgs ICP'
      
        'Inner Join dbo.InvControlRow ON dbo.InvControlRow.PackageNo = IC' +
        'P.PackageNo'
      #9#9#9#9'AND dbo.InvControlRow.SupplierCode = ICP.SupplierCode'
      '       and dbo.InvControlRow.IC_grpno = icp.IC_grpno'
      'WHERE'
      'icp.IC_grpno = :IC_grpno'
      
        'AND ((ICP.Operation = 0) or (ICP.Operation = 2) or (ICP.Operatio' +
        'n = 6))'
      '')
    Left = 144
    Top = 704
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetChangesToPackages: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.InvControlRow'
      'Set PackageTypeNo = pn.PackageTypeNo,'
      'LogicalInventoryPointNo = pn.LogicalInventoryPointNo,'
      'LogicalInventoryName = LIP.LogicalInventoryName'
      'FROM  dbo.InvControlGrp ICG'
      'INNER JOIN dbo.InvControlRow icr on icr.IC_grpno = ICG.IC_grpno'
      ''
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = icr.PackageNo'
      #9#9#9#9#9'AND pn.SupplierCode = icr.SupplierCode'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      
        'Inner Join dbo.PackageNumberLog pnl ON pnl.PackageNo = icr.Packa' +
        'geNo'
      #9#9#9#9#9'AND pnl.SupplierCode = icr.SupplierCode'
      ''
      ''
      'WHERE  ICG.IC_grpno = :IC_grpno'
      'AND icr.Status = 1'
      'and ((pnl.Operation = 1) or (pnl.Operation = 2))'
      'and pnl.DateCreated <= ICG.MaxDatum'
      'AND pnl.DateCreated >= ICG.Inventeringsdatum'
      '')
    Left = 144
    Top = 752
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_NotInvLoads: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      '-- Ej fakturerade F'#246'rs'#228'ljnings Avropslaster'
      'Insert into dbo.InvControlRow'
      'Select Distinct'
      'icm.IC_grpno,'
      'icm.LogicalInventoryPointNo AS LIP,'
      'icm.InventeringsMetod,'
      'pn.PackageNo AS PAKETNR,'
      'pn.SupplierCode AS LEVKOD,'
      'pt.PackageTypeNo, 1 AS KOL1, 4 AS KOL2,'
      'LIP.LogicalInventoryName AS Lagergrupp,'
      '1 AS STATUS, pip.OwnerNo,'
      'LD.ShippingPlanNo,'
      '0 AS Reserv'
      ''
      'FROM dbo.Loads L'
      'Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo'
      
        'Inner Join dbo.CustomerShippingPlanDetails csd on csd.CustShipPl' +
        'anDetailObjectNo = LD.DefaultCustShipObjectNo'
      'Inner Join dbo.Orders oh on oh.OrderNo = csd.OrderNo'
      
        'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo a' +
        'nd pn.SupplierCode = LD.SupplierCode'
      
        'Inner Join dbo.InvCtrlMetod icm on icm.LogicalInventoryPointNo =' +
        ' LD.LIPNo'
      'Inner Join dbo.InvControlGrp ICG on ICG.IC_grpno = icm.IC_grpno'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = LD.LIPNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = pip.OwnerNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      ''
      'WHERE'
      'L.SupplierNo = :SupplierNo'
      'AND L.SenderLoadStatus = 2'
      'AND icm.IC_grpno = :IC_grpno'
      '--AND pn.Status = 0'
      'and oh.ordertype = 0'
      'and L.LoadedDate > '#39'2008-06-01'#39
      ''
      'and L.LoadedDate < ICG.MaxDatum'
      ''
      
        ' AND L.LoadNo not in (Select inl.LoadNo FROM dbo.Invoiced_Load i' +
        'nl'
      
        'Inner Join dbo.InvoiceNumber invno on invno.InternalInvoiceNo = ' +
        'inl.InternalInvoiceNo'
      
        'Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = inl.In' +
        'ternalInvoiceNo'
      'WHERE inl.LoadNo = L.LoadNo)'
      ''
      
        'AND L.LoadNo not in (Select inl2.LoadNo FROM dbo.Invoiced_Load i' +
        'nl2'
      
        'Inner Join dbo.ProformaInvoiceNumber invno on invno.InternalInvo' +
        'iceNo = inl2.InternalInvoiceNo'
      
        'Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = inl2.I' +
        'nternalInvoiceNo'
      'WHERE inl2.LoadNo = L.LoadNo)'
      ''
      
        'AND L.LoadNo not in (Select inl2.LoadNo FROM dbo.Invoiced_Load i' +
        'nl2'
      
        'Inner Join dbo.InvNo_FW invno on invno.InternalInvoiceNo = inl2.' +
        'InternalInvoiceNo'
      
        'Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = inl2.I' +
        'nternalInvoiceNo'
      'WHERE inl2.LoadNo = L.LoadNo)'
      ''
      
        'AND L.LoadNo not in (Select inl2.LoadNo FROM dbo.Invoiced_Load i' +
        'nl2'
      
        'Inner Join dbo.InvoiceNumber_Komp invno on invno.InternalInvoice' +
        'No = inl2.InternalInvoiceNo'
      
        'Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = inl2.I' +
        'nternalInvoiceNo'
      'WHERE inl2.LoadNo = L.LoadNo)'
      ''
      
        'AND pn.PackageNo not in (Select ir2.PackageNo From dbo.InvContro' +
        'lRow ir2'
      'WHERE'
      'ir2.IC_grpNo = icm.IC_grpno'
      'AND ir2.PackageNo = pn.PackageNo'
      'AND ir2.SupplierCode = pn.SupplierCode)'
      ''
      '')
    Left = 144
    Top = 808
    ParamData = <
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_SetNoOfPkg_PKTTYP: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.InvCtrlRowPkt'
      'Set NoOfPkgs = NoOfPkgs + :NoOfPkgs'
      'WHERE ic_grpNo = :ic_grpNo'
      'AND PackageTypeNo = :PackageTypeNo'
      'AND LogicalInventoryPointNo = :LogicalInventoryPointNo'
      '')
    Left = 304
    Top = 688
    ParamData = <
      item
        Name = 'NOOFPKGS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOGICALINVENTORYPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_DelCtrlRowPktTyp: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete from dbo.InvCtrlRowPkt'
      'where IC_grpno = :IC_grpno'
      '')
    Left = 304
    Top = 736
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_InsHlpRows_II: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Insert into dbo.InvenRow'
      'Select'
      'icp.IC_grpNo,'
      'icp.LogicalInventoryPointNo,'
      '1 '#9#9#9#9'AS InventeringsMetod,'
      'icp.PackageNo,'
      'icp.Suppliercode,'
      'pn.PackageTypeNo,'
      '1 '#9#9#9#9'AS NoOfPkgs,'
      '1 '#9#9#9#9'AS AntalPaketILager,'
      'LIP.LogicalInventoryName,'
      'icp.Operation '#9#9#9'AS Status,'
      'icr.VerkNo'
      'FROM dbo.InvCtrl_Pkgs icp'
      'Inner Join dbo.InvControlGrp ICR on icr.IC_grpNo = icp.IC_grpNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = icp.LogicalInventoryPointNo'
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = icp.PackageNo'
      'AND pn.SupplierCode = icp.SupplierCode'
      'WHERE'
      'icp.IC_GrpNo = :IC_grpNo'
      'AND (icp.Operation = 5)'
      ''
      'Delete dbo.InvenRow'
      'FROM dbo.InvCtrl_Pkgs icp'
      
        'INNER JOIN dbo.InvenRow ON dbo.InvenRow.PackageNo = icp.PackageN' +
        'o'
      'AND dbo.InvenRow.SupplierCode = icp.SupplierCode'
      'AND dbo.InvenRow.IC_GrpNo = icp.IC_GrpNo'
      'WHERE'
      'icp.IC_GrpNo = :IC_grpNo'
      'AND (icp.Operation = 0)'
      ''
      'Update dbo.InvenRow Set PackageTypeNo = pn.PackageTypeNo'
      'FROM dbo.InvCtrl_Pkgs icp'
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = icp.PackageNo'
      'AND pn.SupplierCode = icp.SupplierCode'
      
        'INNER JOIN dbo.InvenRow ON dbo.InvenRow.PackageNo = icp.PackageN' +
        'o'
      'AND dbo.InvenRow.SupplierCode = icp.SupplierCode'
      'AND dbo.InvenRow.IC_GrpNo = icp.IC_GrpNo'
      'WHERE'
      'icp.IC_GrpNo = :IC_grpNo'
      'AND Operation = 8'
      ''
      ''
      '')
    Left = 304
    Top = 792
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_TrackDuplicates: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'delete  dbo.InvDuplPkgNr where IC_GrpNo = :IC_GrpNo'
      ''
      'Insert into dbo.InvDuplPkgNr'
      'Select'
      'icp.IC_grpNo,'
      'icp.PackageNo,'
      'icp.Suppliercode,'
      '(Select Top 1 icp2.Operation from dbo.InvCtrl_Pkgs icp2'
      'WHERE'
      'icp2.IC_GrpNo = icp.IC_GrpNo AND'
      
        '((icp2.Operation = 3) or (icp2.Operation = 4) or (icp2.Operation' +
        ' = 5) or (icp2.Operation = 10) or (icp2.Operation = 13))'
      'AND icp2.PackageNo = icp.PackageNo'
      'AND icp2.SupplierCode = icp.SupplierCode)'
      ''
      'FROM dbo.InvCtrl_Pkgs icp'
      'Inner Join dbo.InvControlGrp ICR on icr.IC_grpNo = icp.IC_grpNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = icp.LogicalInventoryPointNo'
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = icp.PackageNo'
      'AND pn.SupplierCode = icp.SupplierCode'
      'WHERE'
      'icp.IC_GrpNo = :IC_GrpNo AND'
      
        '((icp.Operation = 3) or (icp.Operation = 4) or (icp.Operation = ' +
        '5) or (icp.Operation = 10) or (icp.Operation = 13) or (icp.Opera' +
        'tion = 14))'
      ''
      'Group By'
      'icp.IC_grpNo,'
      'icp.LogicalInventoryPointNo,'
      'icp.PackageNo,'
      'icp.Suppliercode,'
      'pn.PackageTypeNo,'
      'LIP.LogicalInventoryName,'
      'icr.VerkNo'
      ''
      'Having Count(*) > 1'
      '')
    Left = 512
    Top = 688
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GenSicPG: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.SicRow_PG where Sic_No = :Sic_No'
      'Insert into dbo.SicRow_PG(Sic_No, RowName, LIPGroupNo, NM3,'
      
        'Price, FDmCost, PlanerShavingsCost, PlaningCost, SortingCost, Ki' +
        'lnDryingCost'
      ')'
      'Select sicl.Sic_No, Lager, sicl.LIPGroupNo, SUM(sicl.CalcNM3),'
      '0, 0, 0, 0, 0, 0'
      'from dbo.Sic_LIP sicl'
      'WHERE sicl.Sic_No = :Sic_No'
      'Group By sicl.Sic_No, sicl.LIPGroupNo, Lager'
      ''
      '')
    Left = 512
    Top = 736
    ParamData = <
      item
        Name = 'SIC_NO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_InsAllHlpRows: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Insert into dbo.InvenRow_all'
      'Select'
      'icp.IC_grpNo,'
      'icp.LogicalInventoryPointNo,'
      '1 AS InventeringsMetod,'
      'icp.PackageNo,'
      'icp.Suppliercode,'
      'pn.PackageTypeNo,'
      '1 AS NoOfPkgs,'
      '1 AS AntalPaketILager,'
      'LIP.LogicalInventoryName,'
      'icp.Operation AS Status,'
      'icr.VerkNo,'
      'icp.LONo,'
      '0'
      'FROM dbo.InvCtrl_Pkgs icp'
      'Inner Join dbo.InvControlGrp ICR on icr.IC_grpNo = icp.IC_grpNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = icp.LogicalInventoryPointNo'
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = icp.PackageNo'
      'AND pn.SupplierCode = icp.SupplierCode'
      'WHERE'
      'icp.IC_GrpNo = :IC_grpNo'
      
        'AND ((icp.Operation = 3) or (icp.Operation = 4) or (icp.Operatio' +
        'n = 5) or (icp.Operation = 10) or (icp.Operation = 13))'
      ''
      'AND icp.PackageNo not in (Select ic.PackageNo'
      'From dbo.InvDuplPkgNr ic'
      'WHERE'
      'ic.IC_GrpNo = icp.IC_GrpNo'
      'AND ic.SupplierCode = icp.SupplierCode'
      'AND ic.Operation = icp.Operation)'
      ''
      'AND icp.PackageNo not in (Select ic.PackageNo'
      'From dbo.InvControlrow ic'
      'WHERE'
      'ic.IC_GrpNo = icp.IC_GrpNo'
      'AND ic.SupplierCode = icp.SupplierCode'
      'AND ic.PackageNo = icp.PackageNo)'
      ''
      'Insert into dbo.InvenRow_all'
      'Select'
      'icp.IC_grpNo,'
      'icp.LogicalInventoryPointNo,'
      '1'#9'AS InventeringsMetod,'
      'icp.PackageNo,'
      'icp.Suppliercode,'
      'pn.PackageTypeNo,'
      '1'#9'AS NoOfPkgs,'
      '-1 AS AntalPaketILager,'
      #39#39' AS LogicalInventoryName,'
      'icp.Operation AS Status,'
      'icr.VerkNo,'
      'icp.LONo,'
      '0'
      'FROM dbo.InvCtrl_Pkgs icp'
      'Inner Join dbo.InvControlGrp ICR on icr.IC_grpNo = icp.IC_grpNo'
      
        '-- Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInvent' +
        'oryPointNo = icp.LogicalInventoryPointNo'
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = icp.PackageNo'
      'AND pn.SupplierCode = icp.SupplierCode'
      'WHERE'
      'icp.IC_GrpNo = :IC_grpNo'
      
        'AND ((icp.Operation = 0) or (icp.Operation = 2) or (icp.Operatio' +
        'n = 6) or (icp.Operation = 9))'
      ''
      'AND icp.PackageNo not in (Select ic.PackageNo'
      'From dbo.InvDuplPkgNr ic'
      'WHERE'
      'ic.IC_GrpNo = icp.IC_GrpNo'
      'AND ic.SupplierCode = icp.SupplierCode'
      'AND ic.Operation = icp.Operation)'
      ''
      'AND ((icp.PackageNo in (Select ic.PackageNo'
      'From dbo.InvControlrow ic'
      'WHERE'
      'ic.IC_GrpNo = icp.IC_GrpNo'
      'AND ic.SupplierCode = icp.SupplierCode'
      'AND ic.PackageNo = icp.PackageNo))'
      ''
      'OR'
      ''
      '(icp.PackageNo in (Select ic.PackageNo'
      'From dbo.InvCtrl_Pkgs ic'
      'WHERE'
      'ic.IC_GrpNo = icp.IC_GrpNo'
      'AND ic.SupplierCode = icp.SupplierCode'
      'AND ic.PackageNo = icp.PackageNo'
      
        'AND ((ic.Operation = 3) or (ic.Operation = 4) or (ic.Operation =' +
        ' 5) or (ic.Operation = 10) or (ic.Operation = 13))'
      ''
      ')))'
      ''
      'Update dbo.InvenRow_all Set PackageTypeNo = pn.PackageTypeNo,'
      'LogicalInventoryPointNo = icp.LogicalInventoryPointNo,'
      'Status = 8'
      'FROM dbo.InvCtrl_Pkgs icp'
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = icp.PackageNo'
      'AND pn.SupplierCode = icp.SupplierCode'
      
        'INNER JOIN dbo.InvenRow_all ON dbo.InvenRow_all.PackageNo = icp.' +
        'PackageNo'
      'AND dbo.InvenRow_all.SupplierCode = icp.SupplierCode'
      'AND dbo.InvenRow_all.IC_GrpNo = icp.IC_GrpNo'
      'WHERE'
      'icp.IC_GrpNo = :IC_grpNo'
      'AND Operation = 8'
      ''
      ''
      ''
      ''
      '')
    Left = 512
    Top = 784
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_PkgExistInKL: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select icr.Status FROM dbo.InvControlRow icr'
      'WHERE icr.PackageNo = :PackageNo'
      'AND icr.SupplierCode = :SupplierCode'
      'AND icr.IC_grpno = :IC_grpno'
      '')
    Left = 912
    Top = 640
    ParamData = <
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_PkgExistInKLStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
  end
  object sq_PkgExist: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Status FROM dbo.PackageNumber'
      'WHERE PackageNo = :PkgNo'
      'AND SupplierCode = :SuppCode'
      '')
    Left = 912
    Top = 696
    ParamData = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPCODE'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_PkgExistStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
  end
  object sq_PkgExitsInInv: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select pn.Status, isNull(icr.IC_GrpNo,0) AS IC_GrpNo FROM dbo.Pa' +
        'ckageNumber pn'
      
        'Left Outer Join dbo.InvControlrow icr on icr.PackageNo = pn.Pack' +
        'ageNo'
      'AND icr.SupplierCode = pn.SupplierCode'
      'AND icr.IC_GrpNo = :IC_GrpNo'
      'WHERE pn.PackageNo = :PkgNo'
      'AND pn.SupplierCode = :SuppCode'
      ''
      '')
    Left = 912
    Top = 744
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPCODE'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_PkgExitsInInvStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object sq_PkgExitsInInvIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      Origin = 'IC_GrpNo'
      ReadOnly = True
      Required = True
    end
  end
  object sp_CalcInvAvgPrice: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_CalcInvAvgPrice_LIP'
    Left = 1392
    Top = 672
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
        Name = '@ic_grpNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@LIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetSortOrderNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select MAX(ICR.SortOrderNo) AS CurrentSortOrderNo'
      'FROM dbo.InvCtrl_Pkgs ICR'
      'WHERE ICR.IC_GrpNo = :IC_GrpNo'
      'AND ICR.Operation = :Operation'
      '')
    Left = 816
    Top = 712
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OPERATION'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetSortOrderNoCurrentSortOrderNo: TIntegerField
      FieldName = 'CurrentSortOrderNo'
      Origin = 'CurrentSortOrderNo'
      ReadOnly = True
    end
  end
  object sq_GenInvListaII: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.Inv_By_Pkg'
      'WHERE Spec_UserID = :UserID'
      ''
      'Insert INTO dbo.Inv_By_Pkg'
      '(Spec_UserID,'
      'Spec_URI,'
      'SPEC_PhyInvPointNo,'
      'SPEC_PhyInvPointName,'
      'SPEC_LogicalInvName,'
      'SPEC_OwnerNo,'
      'SPEC_OwnerCode,'
      'SPEC_ProductNo,'
      'SPEC_ProductDisplayName,'
      'SPEC_PackageTypeNo,'
      'SPEC_PackageNo,'
      'SPEC_SupplierCode,'
      'SPEC_ActualThicknessMM,'
      'SPEC_ActualWidthMM,'
      'SPEC_NominalThicknessMM,'
      'SPEC_NominalWidthMM,'
      'SPEC_TotalNoOfPieces,'
      'SPEC_FreeForm,'
      'SPEC_1800,'
      'SPEC_2100,'
      'SPEC_2400,'
      'SPEC_2700,'
      'SPEC_3000,'
      'SPEC_3300,'
      'SPEC_3600,'
      'SPEC_3900,'
      'SPEC_4200,'
      'SPEC_4500,'
      'SPEC_4800,'
      'SPEC_5100,'
      'SPEC_5400,'
      'SPEC_5700,'
      'SPEC_6000,'
      'SPEC_ActualM3,'
      'SPEC_NominalM3,'
      'SPEC_LinealMeter,'
      'SPEC_MFBMNominal,'
      'SPEC_SQMofActualWidth,'
      'SPEC_CreatedDate,'
      'MaxLength)'
      'Select distinct'
      ':UserID,'
      'PTL.STD_Length,'
      'pip.PhyInvPointNameNo,'
      'Cy.CityName,'
      'LIP.LogicalInventoryName,'
      'pip.OwnerNo,'
      'Verk.ClientCode,'
      'pd.ProductNo,'
      'pd.ProductDisplayName,'
      'pt.PackageTypeNo,'
      'pn.PackageNo,'
      'pn.SupplierCode,'
      'pg.ActualThicknessMM,'
      'pg.ActualWidthMM,'
      'pg.NominalThicknessMM,'
      'pg.NominalWidthMM,'
      'pt.TotalNoOfPieces,'
      'PTL.PcsPerLength,'
      'PTL.L18,'
      'PTL.L21,'
      'PTL.L24,'
      'PTL.L27,'
      'PTL.L30,'
      'PTL.L33,'
      'PTL.L36,'
      'PTL.L39,'
      'PTL.L42,'
      'PTL.L45,'
      'PTL.L48,'
      'PTL.L51,'
      'PTL.L54,'
      'PTL.L57,'
      'PTL.L60,'
      'pt.Totalm3Actual,'
      'pt.Totalm3Nominal,'
      'pt.TotalLinealMeterActualLength,'
      'pt.TotalMFBMNominal,'
      'pt.TotalSQMofActualWidth,'
      'pn.DateCreated,'
      '(Select MAX(ActualLengthMM) FROM dbo.ProductLength pl2'
      
        'Inner Join dbo.PackageTypeDetail ptd2 '#9'ON ptd2.ProductLengthNo =' +
        ' pl2.ProductLengthNo'
      'WHERE ptd2.PackageTypeNo = pt.PackageTypeNo) AS MAXL'#196'NGD'
      ''
      'FROM  dbo.InvControlGrp IG'
      'Inner Join dbo.Client Verk on Verk.ClientNo = ig.OwnerNo'
      'Inner Join dbo.InvCtrlMetod icm on icm.IC_GrpNo = ig.IC_GrpNo'
      'Inner Join dbo.InvenRow IR on ir.IC_GrpNo = icm.IC_GrpNo'
      #9#9#9#9'AND ir.LogicalInventoryPointNo = icm.LogicalInventoryPointNo'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON LIP.LogicalInventory' +
        'PointNo = ir.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      ''
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = ir.PackageNo'
      #9#9#9#9'AND pn.SupplierCode = ir.SupplierCode'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = ir.PackageT' +
        'ypeNo'
      
        'Inner Join dbo.PackageTypeDetail ptd '#9'ON ptd.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductLength pl '#9'ON pl.ProductLengthNo = ptd.Pro' +
        'ductLengthNo'
      
        'Inner Join dbo.packageTypeLengths PTL ON PTL.PackageTypeNo = pt.' +
        'PackageTypeNo'
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      'Inner Join dbo.Species'#9'SPE'#9'ON SPE.SpeciesNo = pg.SpeciesNo'
      #9#9#9#9'AND SPE.LanguageCode = 1'
      'Inner Join dbo.Surfacing'#9'SUR'#9'ON SUR.SurfacingNo = pg.SurfacingNo'
      #9#9#9#9'AND SUR.LanguageCode = 1'
      'Inner Join dbo.Grade   '#9'Gr'#9'ON Gr.GradeNo = pd.GradeNo'
      #9#9#9#9'AND Gr.LanguageCode = 1'
      'Inner Join dbo.City'#9#9'Cy'#9'ON Cy.CityNo = pip.PhyInvPointNameNo'
      'LEFT OUTER JOIN dbo.Client cl ON cl.ClientNo = pip.OwnerNo'
      
        'LEFT OUTER JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeS' +
        'tamp'
      'LEFT OUTER JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID'
      'LEFT OUTER JOIN dbo.WrapType wt ON wt.WrapTypeNo = pt.WrapType'
      'WHERE ig.IC_GrpNo = :IC_GrpNo'
      '')
    Left = 816
    Top = 760
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_SetSTDkoppling: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.Sic_ProdPriceGroup where IC_grpno = :IC_grpno'
      ''
      
        'Insert into dbo.Sic_ProdPriceGroup(PriceGroupNo, ProductNo, Owne' +
        'rNo, DateCreated, CreatedUser, IC_grpno)'
      'Select Distinct'
      ':PriceGroupNo,'
      'PT.ProductNo,'
      'icr.OwnerNo,'
      'GetDate(),'
      ':CreatedUser,'
      'icr.IC_GrpNo'
      'FROM dbo.InvenRow icr'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = ICR.PackageT' +
        'ypeNo'
      'Inner Join dbo.InvControlGrp icg on icg.IC_GrpNo = icr.IC_GrpNo'
      'WHERE icr.IC_grpno = :IC_grpno'
      '')
    Left = 1016
    Top = 800
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRICEGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CREATEDUSER'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_SUM_SIC_PG: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.SicRow_PG where Sic_No = :Sic_No'
      ''
      
        'Insert into dbo.SicRow_PG(Sic_No, RowName, LIPGroupNo, NM3, Pric' +
        'e, FDmCost, PlanerShavingsCost,'
      
        'PlaningCost, SortingCost, KilnDryingCost, PriceGroupNo, PriceGro' +
        'upName)'
      
        'Select Distinct SICG.Sic_No, SL.Lager, SL.LIPNo, SUM(PT.Totalm3N' +
        'ominal) * (SL.PercentShare/100),'
      'GP.PricePerNM3, 0, 0, 0, 0, 0, sppg.PriceGroupNo,'
      'spg.PriceGroupName'
      ''
      'from dbo.Sic_IC_grp SICG'
      'Inner Join dbo.Sic_LIP SL on SL.Sic_No = SICG.Sic_No'
      ''
      
        'Inner Join dbo.InvenRow icr on icr.LogicalInventoryPointNo = SL.' +
        'OriginalLIPNo'
      #9#9#9#9#9#9#9'AND icr.IC_grpNo = SICG .IC_grpNo'
      ''
      'Inner Join dbo.InvControlGrp icg on icg.IC_grpNo = icr.IC_grpNo'
      ''
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = ICR.PackageNo'
      
        '                              AND pn.SupplierCode = ICR.Supplier' +
        'Code'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = ICR.PackageT' +
        'ypeNo'
      ''
      
        'Inner Join dbo.Sic_ProdPriceGroup sppg on sppg.ProductNo = pt.Pr' +
        'oductNo -- AND sppg.OwnerNo = icg.OwnerNo'
      'AND sppg.IC_GrpNo = icg.IC_GrpNo'
      ''
      
        'Inner Join dbo.Sic_PriceGroup spg on spg.PriceGroupNo = sppg.Pri' +
        'ceGroupNo'
      ''
      
        'Inner Join dbo.GroupPrice GP on GP.PriceGroupNo = sppg.PriceGrou' +
        'pNo'
      #9#9#9#9#9#9#9'AND GP.IC_GrpNo = icg.IC_GrpNo'
      ''
      'WHERE SICG.Sic_No = :Sic_No'
      'Group By spg.PriceGroupName,'
      
        'GP.PricePerNM3, SL.Lager, SL.PercentShare, SICG.Sic_No, SL.LIPNo' +
        ', sppg.PriceGroupNo'
      '')
    Left = 1080
    Top = 648
    ParamData = <
      item
        Name = 'SIC_NO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_SetInvStatus: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.InvControlGrp Set Status = :Status'
      'WHERE IC_GRPNo = :IC_GRPNo'
      ''
      '')
    Left = 1016
    Top = 688
    ParamData = <
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_SaveToInvCtrlRow_PktTyp: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Insert into dbo.InvCtrlRowPkt'
      'Select distinct'
      'icm.IC_grpno,'
      'icm.LogicalInventoryPointNo AS LIP,'
      'icm.InventeringsMetod,'
      'pt.PackageTypeNo,'
      '(Select Count(*) FROM dbo.PackageNumber WHERE'
      'PackageTypeNo = pn.PackageTypeNo'
      'AND LogicalInventoryPointNo = lip.LogicalInventoryPointNo'
      'AND Status = 1) AS NoOfPkg,'
      ''
      '(Select Count(*) FROM dbo.PackageNumber WHERE'
      'PackageTypeNo = pn.PackageTypeNo'
      'AND LogicalInventoryPointNo = lip.LogicalInventoryPointNo'
      'AND Status = 1) AS AntPktILager,'
      'LIP.LogicalInventoryName AS Lagergrupp,'
      ''
      '0 AS STATUS,'
      'pip.OwnerNo'
      ''
      'FROM  dbo.InvCtrlMetod icm'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = icm.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = pip.OwnerNo '
      ''
      
        'INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = ' +
        'lip.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      ''
      ''
      'WHERE'
      'icm.IC_grpno = :IC_grpno'
      'AND icm.LogicalInventoryPointNo = :LogicalInventoryPointNo'
      'AND icm.InventeringsMetod = :InventeringsMetod'
      'AND pn.Status = 1'
      ''
      ''
      '')
    Left = 1152
    Top = 688
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOGICALINVENTORYPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVENTERINGSMETOD'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetLagergrupper: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      ''
      'Select distinct '
      
        'RTRIM(ci.cityname)+'#39' /  '#39'+RTRIM(LIP.LogicalInventoryName) AS LOG' +
        'INVNAME, LIP.LOGICALINVENTORYPOINTNO AS LIP'
      
        ', pip.Ownerno, cl.clientName, LIP.LogicalInventoryName, LIP.Phys' +
        'icalInventoryPointNo AS PIPNo'
      ''
      'From '
      ' dbo.InvCtrl_Lagerstallen LS '
      ''
      
        'Inner Join dbo.LogicalInventoryPoint LIP ON LIP.PhysicalInventor' +
        'yPointNo = LS.PhysicalInventoryPointNo'
      ''
      
        ' Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.PhysicalInvent' +
        'oryPointNo = LIP.PhysicalInventoryPointNo'
      ' Inner Join dbo.City CI ON ci.cityno = PIP.PhyInvPointNameNo'
      ' Inner Join dbo.Client CL on cl.clientNo = pip.ownerNo'
      ''
      'WHERE '
      'IC_grpno = :IC_grpno'
      'AND LIP.SequenceNo = 1'
      'Order By LIP.LogicalInventoryName'
      ''
      '')
    Left = 1016
    Top = 744
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetLagergrupperLOGINVNAME: TStringField
      FieldName = 'LOGINVNAME'
      Origin = 'LOGINVNAME'
      ReadOnly = True
      Size = 104
    end
    object sq_GetLagergrupperLIP: TIntegerField
      FieldName = 'LIP'
      Origin = 'LIP'
      Required = True
    end
    object sq_GetLagergrupperOwnerno: TIntegerField
      FieldName = 'Ownerno'
      Origin = 'Ownerno'
    end
    object sq_GetLagergrupperclientName: TStringField
      FieldName = 'clientName'
      Origin = 'clientName'
      Size = 80
    end
    object sq_GetLagergrupperLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Origin = 'LogicalInventoryName'
      Size = 50
    end
    object sq_GetLagergrupperPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
  end
  object sq_SaveToInvCtrlRow_PktNr: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      ''
      'Insert into dbo.InvControlRow'
      ''
      'Select Distinct'
      'icm.IC_grpno,'
      'icm.LogicalInventoryPointNo AS LIP,'
      'icm.InventeringsMetod,'
      'pn.PackageNo AS PAKETNR,'
      'pn.SupplierCode AS LEVKOD,'
      
        'pt.PackageTypeNo, 1 AS KOL1, 1 AS KOL2, LIP.LogicalInventoryName' +
        ' AS Lagergrupp,'
      'IsNull(ic.TypeOfInvCount,1) AS STATUS,'
      'pip.OwnerNo,'
      '-1 AS ShippingPlanNo,'
      '0 AS Reserv'
      ''
      'FROM  dbo.InvCtrlMetod icm'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = icm.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = pip.OwnerNo'
      ''
      
        'INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = ' +
        'lip.LogicalInventoryPointNo'
      ''
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      ''
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      'Inner Join dbo.Species'#9'SPE'#9'ON SPE.SpeciesNo = pg.SpeciesNo'
      #9#9#9#9'AND SPE.LanguageCode = 1'
      'Inner Join dbo.Surfacing'#9'SUR'#9'ON SUR.SurfacingNo = pg.SurfacingNo'
      #9#9#9#9'AND SUR.LanguageCode = 1'
      'Inner Join dbo.Grade   '#9'Gr'#9'ON Gr.GradeNo = pd.GradeNo'
      #9#9#9#9'AND Gr.LanguageCode = 1'
      'Inner Join dbo.City'#9'Cy'#9'ON Cy.CityNo = pip.PhyInvPointNameNo'
      ''
      'Inner Join dbo.InvControlGrp ic on ic.IC_grpno = icm.IC_grpno'
      ''
      'WHERE'
      'icm.IC_grpno = :IC_grpno'
      'AND (pn.Status = 1)'
      'AND icm.LogicalInventoryPointNo = :LogicalInventoryPointNo'
      'AND icm.InventeringsMetod = :InventeringsMetod'
      ''
      ''
      '')
    Left = 1152
    Top = 736
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOGICALINVENTORYPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVENTERINGSMETOD'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_SaveToInvCtrlRow_PktNr2: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      '-- spara paket till InvControlRow - paketnr metod'
      '--//LO laster status prelimin'#228'r'
      'Insert into dbo.InvControlRow'
      '--//Get packages on loads not shipped yet'
      'Select Distinct'
      'icm.IC_grpno,'
      'icm.LogicalInventoryPointNo AS LIP,'
      'icm.InventeringsMetod,'
      'pn.PackageNo AS PAKETNR,'
      'pn.SupplierCode AS LEVKOD,'
      'pt.PackageTypeNo, 1 AS KOL1, 2 AS KOL2,'
      'LIP.LogicalInventoryName AS Lagergrupp,'
      'IsNull(ic.TypeOfInvCount,1) AS STATUS,'
      'pip.OwnerNo,'
      'LD.ShippingPlanNo,'
      '0 AS Reserv'
      ''
      'FROM dbo.Loads L'
      'Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo'
      'Inner Join dbo.LoadShippingplan Lsp on Lsp.LoadNo = LD.LoadNo'
      'and lsp.shippingplanno = LD.shippingplanno'
      
        'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo a' +
        'nd pn.SupplierCode = LD.SupplierCode'
      
        'Inner Join dbo.InvCtrlMetod icm on icm.LogicalInventoryPointNo =' +
        ' pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = pip.OwnerNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      'Inner Join dbo.InvControlGrp ic on ic.IC_grpno = icm.IC_grpno'
      ''
      'WHERE'
      'L.SupplierNo = :SupplierNo'
      'AND L.SenderLoadStatus = 0'
      'AND icm.IC_grpno = :IC_grpno'
      'AND pn.Status = 0'
      ''
      '-- h'#228'mtar bara LO laster'
      'and lsp.confirmedbyreciever = 0'
      ''
      '-- eliminera ink'#246'ps laster p'#229' avrop'
      
        'AND LD.ShippingPlanNo not in (Select CSH.ShippingPlanNo FROM dbo' +
        '.CustomerShippingPlanHeader csh'
      'Inner Join dbo.Orders oh on oh.OrderNo = csh.OrderNo'
      'where oh.ordertype = 1'
      'AND CSH.ShippingPlanNo =  LD.ShippingPlanNo)'
      ''
      ''
      
        'AND pn.PackageNo not in (Select ir2.PackageNo From dbo.InvContro' +
        'lRow ir2'
      'WHERE'
      'ir2.IC_grpNo = icm.IC_grpno'
      'AND ir2.PackageNo = pn.PackageNo'
      'AND ir2.SupplierCode = pn.SupplierCode)'
      '')
    Left = 1152
    Top = 792
    ParamData = <
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_GenInvenSummary: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.VIS_GenInvenSummary'
    Left = 1080
    Top = 384
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_grpno'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PkgCngInv: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_PkgCngInv'
    Left = 1080
    Top = 440
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = -6
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
        DataType = ftFixedChar
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
      end
      item
        Position = 6
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@Status'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@Operation'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PkgAddInv: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_PkgAddInv'
    Left = 1080
    Top = 496
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
        DataType = ftFixedChar
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
      end
      item
        Position = 6
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@Status'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@Operation'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@IC_grpno'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@LogicalInventoryPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@InventeringsMetod'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@LogicalInventoryName'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 14
        Name = '@OwnerNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_RvtPkgInv: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_RvtPkgInv'
    Left = 1080
    Top = 568
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = -6
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
        DataType = ftFixedChar
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
      end
      item
        Position = 6
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@IC_grpno'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_InvCtrlMetod: TFDQuery
    AfterInsert = cds_InvCtrlMetodAfterInsert
    MasterSource = ds_InvCtrlGrp
    MasterFields = 'IC_grpno'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select Distinct ICM.*, LIP.PhysicalInventoryPointNo AS PIPNo FRO' +
        'M'
      'dbo.InvCtrlMetod ICM'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = ICM.LogicalInventoryPointNo'
      
        'Left Outer Join dbo.PackageNumber pn on pn.LogicalInventoryPoint' +
        'No = LIP.LogicalInventoryPointNo'
      'WHERE ICM.IC_GrpNo = :IC_GrpNo')
    Left = 192
    Top = 112
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cds_InvCtrlMetodIC_grpNo: TIntegerField
      FieldName = 'IC_grpNo'
      Origin = 'IC_grpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrlMetodLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrlMetodInventeringsMetod: TIntegerField
      FieldName = 'InventeringsMetod'
      Origin = 'InventeringsMetod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrlMetodLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Origin = 'LogicalInventoryName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_InvCtrlMetodOwnerName: TStringField
      FieldName = 'OwnerName'
      Origin = 'OwnerName'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_InvCtrlMetodOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlMetodInLevLipNo: TIntegerField
      FieldName = 'InLevLipNo'
      Origin = 'InLevLipNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlMetodInventoryValue: TFloatField
      FieldName = 'InventoryValue'
      Origin = 'InventoryValue'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlMetodTotalNM3: TFloatField
      FieldName = 'TotalNM3'
      Origin = 'TotalNM3'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlMetodAvgPricePerNM3: TFloatField
      FieldName = 'AvgPricePerNM3'
      Origin = 'AvgPricePerNM3'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlMetodPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = []
    end
    object cds_InvCtrlMetodMetod: TStringField
      FieldKind = fkLookup
      FieldName = 'Metod'
      LookupDataSet = mtMetod
      LookupKeyFields = 'InventeringsMetod'
      LookupResultField = 'Metod'
      KeyFields = 'InventeringsMetod'
      ProviderFlags = []
      Size = 15
      Lookup = True
    end
  end
  object sp_vis_invUpdControlStatus: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_invUpdControlStatus'
    Left = 104
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_grpno'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_vis_GenInvCountByProduct: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_GenInvCountByProduct'
    Left = 272
    Top = 8
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_grpno'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_vis_invByProduct: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_invByProduct'
    Left = 424
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_grpno'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_vis_ActivatePkgsInvCountByProduct: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_ActivatePkgsInvCountByProduct'
    Left = 568
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_grpno'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@LengthSpecNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@NoOfPkgs'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_vis_InsPkgsToInvCountByProduct: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_InsPkgsToInvCountByProduct'
    Left = 776
    Top = 48
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_grpno'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@LengthSpecNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@NoOfPkgs'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_vis_ClearInvCountFromExtData: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_ClearInvCountFromExtData'
    Left = 272
    Top = 56
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_grpno'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetCtrlPkgsII: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.Inv_By_Pkg'
      'WHERE Spec_UserID = :UserID'
      ''
      'Insert INTO dbo.Inv_By_Pkg'
      '(Spec_UserID,'
      'Spec_URI,'
      'SPEC_PhyInvPointNo,'
      'SPEC_PhyInvPointName,'
      'SPEC_LogicalInvName,'
      'SPEC_OwnerNo,'
      'SPEC_OwnerCode,'
      'SPEC_ProductNo,'
      'SPEC_ProductDisplayName,'
      'SPEC_PackageTypeNo,'
      'SPEC_PackageNo,'
      'SPEC_SupplierCode,'
      'SPEC_ActualThicknessMM,'
      'SPEC_ActualWidthMM,'
      'SPEC_NominalThicknessMM,'
      'SPEC_NominalWidthMM,'
      'SPEC_TotalNoOfPieces,'
      'SPEC_FreeForm,'
      'SPEC_1800,'
      'SPEC_2100,'
      'SPEC_2400,'
      'SPEC_2700,'
      'SPEC_3000,'
      'SPEC_3300,'
      'SPEC_3600,'
      'SPEC_3900,'
      'SPEC_4200,'
      'SPEC_4500,'
      'SPEC_4800,'
      'SPEC_5100,'
      'SPEC_5400,'
      'SPEC_5700,'
      'SPEC_6000,'
      'SPEC_ActualM3,'
      'SPEC_NominalM3,'
      'SPEC_LinealMeter,'
      'SPEC_MFBMNominal,'
      'SPEC_SQMofActualWidth,'
      'SPEC_CreatedDate,'
      'SPEC_Species,'
      'SPEC_IntGrade,'
      'SPEC_SurfacingName,'
      'MaxLength,'
      'InvNr,'
      'InvDatum,'
      'Agare'
      ')'
      'Select distinct'
      ':UserID,'
      'PTL.STD_Length,'
      'pip.PhyInvPointNameNo,'
      'Cy.CityName,'
      'LIP.LogicalInventoryName,'
      'pip.OwnerNo,'
      'Verk.ClientCode,'
      'pd.ProductNo,'
      'pd.ProductDisplayName,'
      'pt.PackageTypeNo,'
      'pn.PackageNo,'
      'pn.SupplierCode,'
      'pg.ActualThicknessMM,'
      'pg.ActualWidthMM,'
      'pg.NominalThicknessMM,'
      'pg.NominalWidthMM,'
      'pt.TotalNoOfPieces,'
      'PTL.PcsPerLength,'
      'PTL.L18,'
      'PTL.L21,'
      'PTL.L24,'
      'PTL.L27,'
      'PTL.L30,'
      'PTL.L33,'
      'PTL.L36,'
      'PTL.L39,'
      'PTL.L42,'
      'PTL.L45,'
      'PTL.L48,'
      'PTL.L51,'
      'PTL.L54,'
      'PTL.L57,'
      'PTL.L60,'
      'pt.Totalm3Actual,'
      'pt.Totalm3Nominal,'
      'pt.TotalLinealMeterActualLength,'
      'pt.TotalMFBMNominal,'
      'pt.TotalSQMofActualWidth,'
      'pn.DateCreated,'
      ''
      'SPE.SpeciesName,'
      'Gr.GradeName,'
      'SUR.SurfacingName,'
      ''
      '(Select MAX(ActualLengthMM) FROM dbo.ProductLength pl2'
      
        'Inner Join dbo.PackageTypeDetail ptd2 '#9'ON ptd2.ProductLengthNo =' +
        ' pl2.ProductLengthNo'
      'WHERE ptd2.PackageTypeNo = pt.PackageTypeNo) AS MAXL'#196'NGD,'
      'ig.IC_GrpNo,'
      'ig.Inventeringsdatum,'
      'Verk.ClientName'
      ''
      'FROM  dbo.InvControlGrp IG'
      'Inner Join dbo.Client Verk on Verk.ClientNo = ig.OwnerNo'
      'Inner Join dbo.InvCtrlMetod icm on icm.IC_GrpNo = ig.IC_GrpNo'
      'Inner Join dbo.InvControlRow ICR on iCr.IC_GrpNo = icm.IC_GrpNo'
      
        #9#9#9#9'AND iCr.LogicalInventoryPointNo = icm.LogicalInventoryPointN' +
        'o'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON LIP.LogicalInventory' +
        'PointNo = icr.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      ''
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = icr.PackageNo'
      #9#9#9#9'AND pn.SupplierCode = icr.SupplierCode'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      
        'Inner Join dbo.PackageTypeDetail ptd '#9'ON ptd.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductLength pl '#9'ON pl.ProductLengthNo = ptd.Pro' +
        'ductLengthNo'
      
        'Inner Join dbo.packageTypeLengths PTL ON PTL.PackageTypeNo = pt.' +
        'PackageTypeNo'
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      'Inner Join dbo.Species'#9'SPE'#9'ON SPE.SpeciesNo = pg.SpeciesNo'
      #9#9#9#9'AND SPE.LanguageCode = 1'
      'Inner Join dbo.Surfacing'#9'SUR'#9'ON SUR.SurfacingNo = pg.SurfacingNo'
      #9#9#9#9'AND SUR.LanguageCode = 1'
      'Inner Join dbo.Grade   '#9'Gr'#9'ON Gr.GradeNo = pd.GradeNo'
      #9#9#9#9'AND Gr.LanguageCode = 1'
      'Inner Join dbo.City'#9#9'Cy'#9'ON Cy.CityNo = pip.PhyInvPointNameNo'
      'LEFT OUTER JOIN dbo.Client cl ON cl.ClientNo = pip.OwnerNo'
      
        'LEFT OUTER JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeS' +
        'tamp'
      'LEFT OUTER JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID'
      'LEFT OUTER JOIN dbo.WrapType wt ON wt.WrapTypeNo = pt.WrapType'
      'WHERE ig.IC_GrpNo = :IC_GrpNo'
      'AND ICR.Status = 0'
      'AND ((icm.LogicalInventoryPointNo = :LIPNo) or (0 = :LIPNo))'
      ' '
      ' '
      '')
    Left = 712
    Top = 808
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_Gen_CtrlList: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vis_CtrlList'
    Left = 424
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LIPNo'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 3
        Name = '@Status'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 4
        Name = '@IC_GrpNo'
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
  object sp_SimulateHandHeld: TFDStoredProc
    AfterInsert = sp_SimulateHandHeldAfterInsert
    OnUpdateRecord = sp_SimulateHandHeldUpdateRecord
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.InventResult'
    UpdateOptions.KeyFields = 'Id'
    StoredProcName = 'dbo.vis_SimulateHandHeld'
    Left = 1104
    Top = 112
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
        Name = '@IC_grpno'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_SimulateHandHeldId: TIntegerField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object sp_SimulateHandHeldPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sp_SimulateHandHeldStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sp_SimulateHandHeldQuantity: TIntegerField
      FieldName = 'Quantity'
      Origin = 'Quantity'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sp_SimulateHandHeldIC_grpno: TIntegerField
      FieldName = 'IC_grpno'
      Origin = 'IC_grpno'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sp_SimulateHandHeldPrefix: TWideStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 3
    end
    object sp_SimulateHandHeldPdaId: TWideStringField
      FieldName = 'PdaId'
      Origin = 'PdaId'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 10
    end
    object sp_SimulateHandHeldIuser: TWideStringField
      FieldName = 'Iuser'
      Origin = 'Iuser'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
    end
    object sp_SimulateHandHeldIdate: TSQLTimeStampField
      FieldName = 'Idate'
      Origin = 'Idate'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sp_SimulateHandHeldLengthSpecNo: TIntegerField
      FieldName = 'LengthSpecNo'
      Origin = 'LengthSpecNo'
      ProviderFlags = []
      ReadOnly = True
    end
    object sp_SimulateHandHeldProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object sp_SimulateHandHeldLengthDesc: TStringField
      FieldName = 'LengthDesc'
      Origin = 'LengthDesc'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object sp_SimulateHandHeldAvgLength: TBCDField
      FieldName = 'AvgLength'
      Origin = 'AvgLength'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 1
    end
  end
  object ds_SimulateHandHeld: TDataSource
    DataSet = sp_SimulateHandHeld
    Left = 1104
    Top = 160
  end
  object upd_SimulateHandHeld: TFDUpdateSQL
    Connection = dmsConnector.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO dbo.InventResult'
      '(PackageNo, Status, Quantity, IC_grpno, Prefix, '
      '  PdaId, Iuser, Idate)'
      
        'VALUES (:NEW_PackageNo, :NEW_Status, :NEW_Quantity, :NEW_IC_grpn' +
        'o, :NEW_Prefix, '
      '  :NEW_PdaId, :NEW_Iuser, :NEW_Idate);'
      'SELECT SCOPE_IDENTITY() AS Id')
    ModifySQL.Strings = (
      'UPDATE dbo.InventResult'
      
        'SET PackageNo = :NEW_PackageNo, Status = :NEW_Status, Quantity =' +
        ' :NEW_Quantity, '
      
        '  IC_grpno = :NEW_IC_grpno, Prefix = :NEW_Prefix, PdaId = :NEW_P' +
        'daId, '
      '  Iuser = :NEW_Iuser, Idate = :NEW_Idate'
      
        'WHERE Id = :OLD_Id AND PackageNo = :OLD_PackageNo AND Status = :' +
        'OLD_Status AND '
      '  Quantity = :OLD_Quantity AND IC_grpno = :OLD_IC_grpno AND '
      
        '  Prefix = :OLD_Prefix AND PdaId = :OLD_PdaId AND Iuser = :OLD_I' +
        'user AND '
      '  Idate = :OLD_Idate')
    DeleteSQL.Strings = (
      'DELETE FROM dbo.InventResult'
      
        'WHERE Id = :OLD_Id AND PackageNo = :OLD_PackageNo AND Status = :' +
        'OLD_Status AND '
      '  Quantity = :OLD_Quantity AND IC_grpno = :OLD_IC_grpno AND '
      
        '  Prefix = :OLD_Prefix AND PdaId = :OLD_PdaId AND Iuser = :OLD_I' +
        'user AND '
      '  Idate = :OLD_Idate')
    FetchRowSQL.Strings = (
      
        'SELECT SCOPE_IDENTITY() AS Id, PackageNo, Status, Quantity, IC_g' +
        'rpno, '
      '  Prefix, PdaId, Iuser, Idate'
      'FROM dbo.InventResult'
      
        'WHERE Id = :Id AND PackageNo = :PackageNo AND Status = :Status A' +
        'ND '
      
        '  Quantity = :Quantity AND IC_grpno = :IC_grpno AND Prefix = :Pr' +
        'efix AND '
      '  PdaId = :PdaId AND Iuser = :Iuser AND Idate = :Idate')
    Left = 1104
    Top = 64
  end
  object sp_copyCtrlPkgswstatusNotAct: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_copyCtrlPkgswstatusNotAct'
    Left = 1184
    Top = 224
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_GrpNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_InsHlpPkgswstatusNotAct: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_InsHlpPkgswstatusNotAct'
    Left = 1200
    Top = 296
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_GrpNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_GenListfromPkgsnotact: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vis_GenListfromPkgsnotact'
    Left = 1200
    Top = 360
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LIPNo'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 3
        Name = '@Status'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 4
        Name = '@IC_GrpNo'
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
  object cds_UtLevAfterMaxdatum: TFDQuery
    MasterSource = ds_InvCtrlGrp
    MasterFields = 'IC_grpno'
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.InvCtrl_Pkgs'
    SQL.Strings = (
      ''
      'Select Distinct ptl.PcsPerLength AS ANTPERL'#196'NGD,'
      'PLM.ProductDisplayName AS Produkt,'
      'PT.TotalNoOfPieces AS Styck,'
      'PT.Totalm3Actual AS AM3,'
      'PT.Totalm3Nominal AS NM3,'
      'LD.PackageNo AS Paketnr, LD.SupplierCode AS Prefix,'
      'LD.ShippingPlanNo AS LO,'
      'L.LoadNo AS Lastnr,'
      'L.LoadedDate AS Utlastad,'
      'LIP.LogicalInventoryName AS Lagergrupp'
      'FROM dbo.Loads L'
      'Inner Join dbo.LoadDetail LD ON LD.LoadNo = L.LoadNo'
      
        'Inner join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = LD.LIPNo'
      'Inner Join dbo.LoadShippingPlan LSP ON LSP.LoadNo = LD.LoadNo'
      'AND LSP.ShippingPlanNo = LD.ShippingPlanNo'
      
        'Inner Join dbo.SupplierShippingPlan SSP on SSP.SupplierShipPlanO' +
        'bjectNo = LD.DefSSPNo'
      ''
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      ''
      'WHERE L.SupplierNo = :SupplierNo'
      'AND L.LoadedDate >= :MaxDatum'
      ''
      '-- m'#229'ste finnas p'#229' inventeringens lager'
      'AND Exists (Select * FROM  dbo.InvCtrlMetod im'
      'where im.LogicalInventoryPointNo = LD.LIPNo'
      'and im.IC_grpNo = :IC_GrpNo)'
      ''
      'AND L.SenderLoadStatus <> 0'
      '')
    Left = 1232
    Top = 64
    ParamData = <
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'MAXDATUM'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_UtLevAfterMaxdatumANTPERLÄNGD: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object cds_UtLevAfterMaxdatumPRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object cds_UtLevAfterMaxdatumSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_UtLevAfterMaxdatumAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_UtLevAfterMaxdatumNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_UtLevAfterMaxdatumPaketnr: TIntegerField
      FieldName = 'Paketnr'
      Origin = 'Paketnr'
      Required = True
    end
    object cds_UtLevAfterMaxdatumPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      FixedChar = True
      Size = 3
    end
    object cds_UtLevAfterMaxdatumLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
    end
    object cds_UtLevAfterMaxdatumLastnr: TIntegerField
      FieldName = 'Lastnr'
      Origin = 'Lastnr'
      Required = True
    end
    object cds_UtLevAfterMaxdatumUtlastad: TSQLTimeStampField
      FieldName = 'Utlastad'
      Origin = 'Utlastad'
    end
    object cds_UtLevAfterMaxdatumLagergrupp: TStringField
      FieldName = 'Lagergrupp'
      Origin = 'Lagergrupp'
      Size = 50
    end
  end
  object ds_UtLevAfterMaxdatum: TDataSource
    DataSet = cds_UtLevAfterMaxdatum
    Left = 1232
    Top = 112
  end
  object sp_MoveFalseToAvreg: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_MoveFalseToAvreg'
    Left = 1200
    Top = 440
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ic_grpNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object upd_sicPG: TFDUpdateSQL
    Connection = dmsConnector.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO VIS_VIDA.dbo.InvenPricePerNM3'
      '(IC_GrpNo, ProductNo, PricePerNM3)'
      'VALUES (:NEW_IC_GrpNo, :NEW_ProductNo, :NEW_PricePerNM3)')
    ModifySQL.Strings = (
      'UPDATE VIS_VIDA.dbo.InvenPricePerNM3'
      
        'SET IC_GrpNo = :NEW_IC_GrpNo, ProductNo = :NEW_ProductNo, PriceP' +
        'erNM3 = :NEW_PricePerNM3'
      'WHERE IC_GrpNo = :OLD_IC_GrpNo AND ProductNo = :OLD_ProductNo')
    DeleteSQL.Strings = (
      'DELETE FROM VIS_VIDA.dbo.InvenPricePerNM3'
      'WHERE IC_GrpNo = :OLD_IC_GrpNo AND ProductNo = :OLD_ProductNo')
    FetchRowSQL.Strings = (
      'SELECT IC_GrpNo, ProductNo, PricePerNM3'
      'FROM VIS_VIDA.dbo.InvenPricePerNM3'
      'WHERE IC_GrpNo = :IC_GrpNo AND ProductNo = :ProductNo')
    Left = 760
    Top = 376
  end
  object cds_LIPSUM: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT LS.[LIPNo]'
      '      ,LS.[PackageNo]'
      '      ,LS.[Suppliercode]'
      '      ,LS.[Cost]'
      '      ,LS.[Volume]'
      '      ,LS.[avgprice]'
      '  FROM  dbo.InvenRow icr'
      '  inner join [dbo].[LIPSum] LS on LS.PackageNo = icr.PackageNo'
      '  and LS.SupplierCode = icr.SupplierCode'
      '  and LS.LIPNo = icr.LogicalInventoryPointNo'
      '  inner join dbo.PackageNumber PN on PN.PackageNo = LS.PackageNo'
      'and PN.SupplierCode = LS.SupplierCode'
      ''
      
        'inner join dbo.PackageType PT on PT.PackageTypeNo = PN.PackageTy' +
        'peNo'
      'WHERE icr.IC_GrpNo = :IC_GrpNo'
      'AND LIPNo = :LIPNo'
      'AND ProductNo = :ProductNo'
      'and ls.IC_SetNo = :IC_SetNo')
    Left = 1200
    Top = 504
    ParamData = <
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IC_SETNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LIPSUMLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_LIPSUMPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
    end
    object cds_LIPSUMSuppliercode: TStringField
      FieldName = 'Suppliercode'
      Origin = 'Suppliercode'
      FixedChar = True
      Size = 3
    end
    object cds_LIPSUMCost: TFloatField
      FieldName = 'Cost'
      Origin = 'Cost'
      DisplayFormat = '#,###,###.0'
    end
    object cds_LIPSUMVolume: TFloatField
      FieldName = 'Volume'
      Origin = 'Volume'
      DisplayFormat = '#,###,###.0'
    end
    object cds_LIPSUMavgprice: TFloatField
      FieldName = 'avgprice'
      Origin = 'avgprice'
      DisplayFormat = '#,###,###.0'
    end
  end
  object ds_LIPSUM: TDataSource
    DataSet = cds_LIPSUM
    OnDataChange = ds_LIPSUMDataChange
    Left = 1200
    Top = 552
  end
  object cds_PkgCost: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT TOP 1000 [PackageNo]'
      '      ,[SupplierCode]'
      '      ,[LIPNo]'
      '      ,[LoadOrderNo]'
      '      ,[CostType]'
      '      ,CASE WHEN [CostType] = 1 THEN '#39'INTERNPRIS'#39
      '      WHEN [CostType] = 2 THEN '#39'INTERNFRAKT'#39
      '      WHEN [CostType] = 3 THEN '#39'LEGO'#39
      '      WHEN [CostType] = 4 THEN '#39'IMPREGNERING'#39
      '      WHEN [CostType] = 5 THEN '#39'INLANDFRAKT ADD LO'#39
      '      WHEN [CostType] = 6 THEN '#39'INLANDFRAKT'#39
      '      WHEN [CostType] = 7 THEN '#39'EXTERNFRAKT'#39
      '      WHEN [CostType] = 8 THEN '#39'BONUS'#39
      '      WHEN [CostType] = 9 THEN '#39'OTHER COST'#39
      '      WHEN [CostType] = 10 THEN '#39'KASSA'#39
      '      WHEN [CostType] = 11 THEN '#39'PROVISION'#39
      '      END AS KOSTTYP'
      '      ,[ArticleNo]'
      '      ,[DateCreated]'
      '      ,[CostPerAM3]'
      '      ,Exclude'
      '  FROM [dbo].[PkgCost]'
      'WHERE PackageNo = :PackageNo'
      'AND SupplierCode = :SupplierCode'
      'AND IC_SetNo = :IC_SetNo')
    Left = 1200
    Top = 608
    ParamData = <
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'IC_SETNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PkgCostPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgCostSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PkgCostLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgCostLoadOrderNo: TIntegerField
      FieldName = 'LoadOrderNo'
      Origin = 'LoadOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgCostCostType: TIntegerField
      FieldName = 'CostType'
      Origin = 'CostType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgCostArticleNo: TIntegerField
      FieldName = 'ArticleNo'
      Origin = 'ArticleNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgCostDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PkgCostCostPerAM3: TFloatField
      FieldName = 'CostPerAM3'
      Origin = 'CostPerAM3'
      DisplayFormat = '#,###,###.0'
    end
    object cds_PkgCostKOSTTYP: TStringField
      FieldName = 'KOSTTYP'
      Origin = 'KOSTTYP'
      ReadOnly = True
      Size = 18
    end
    object cds_PkgCostExclude: TIntegerField
      FieldName = 'Exclude'
      Origin = 'Exclude'
    end
  end
  object ds_PkgCost: TDataSource
    DataSet = cds_PkgCost
    Left = 1200
    Top = 656
  end
  object FDQuery1: TFDQuery
    MasterSource = ds_InvCtrlGrp
    MasterFields = 'IC_grpno'
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.InvCtrl_Pkgs'
    SQL.Strings = (
      ''
      'Select Distinct ptl.PcsPerLength AS ANTPERL'#196'NGD,'
      'PLM.ProductDisplayName AS Produkt,'
      'PT.TotalNoOfPieces AS Styck,'
      'PT.Totalm3Actual AS AM3,'
      'PT.Totalm3Nominal AS NM3,'
      'LD.PackageNo AS Paketnr, LD.SupplierCode AS Prefix,'
      'LD.ShippingPlanNo AS LO,'
      'L.LoadNo AS Lastnr,'
      'L.LoadedDate AS Utlastad,'
      'LIP.LogicalInventoryName AS Lagergrupp'
      'FROM dbo.Loads L'
      'Inner Join dbo.LoadDetail LD ON LD.LoadNo = L.LoadNo'
      
        'Inner join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = LD.LIPNo'
      'Inner Join dbo.LoadShippingPlan LSP ON LSP.LoadNo = LD.LoadNo'
      'AND LSP.ShippingPlanNo = LD.ShippingPlanNo'
      
        'Inner Join dbo.SupplierShippingPlan SSP on SSP.SupplierShipPlanO' +
        'bjectNo = LD.DefSSPNo'
      ''
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductList_LM PLM on PLM.ProductNo = pt.ProductN' +
        'o'
      ''
      'WHERE L.SupplierNo = :SupplierNo'
      'AND L.LoadedDate >= :MaxDatum'
      ''
      '-- m'#229'ste finnas p'#229' inventeringens lager'
      'AND Exists (Select * FROM  dbo.InvCtrlMetod im'
      'where im.LogicalInventoryPointNo = LD.LIPNo'
      'and im.IC_grpNo = :IC_GrpNo)'
      ''
      'AND L.SenderLoadStatus <> 0'
      '')
    Left = 1232
    Top = 8
    ParamData = <
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'MAXDATUM'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object StringField1: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object StringField2: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ProviderFlags = []
      ReadOnly = True
    end
    object FloatField1: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object FloatField2: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Paketnr'
      Origin = 'Paketnr'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      FixedChar = True
      Size = 3
    end
    object IntegerField3: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
    end
    object IntegerField4: TIntegerField
      FieldName = 'Lastnr'
      Origin = 'Lastnr'
      Required = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'Utlastad'
      Origin = 'Utlastad'
    end
    object StringField4: TStringField
      FieldName = 'Lagergrupp'
      Origin = 'Lagergrupp'
      Size = 50
    end
  end
  object sp_LoadedAfterMaxDate: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_LoadedAfterMaxDate'
    Left = 1224
    Top = 168
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_GrpNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@MaxDatum'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object sp_SicPG: TFDStoredProc
    OnCalcFields = sp_SicPGCalcFields
    OnUpdateRecord = sp_SicPGUpdateRecord
    Connection = dmsConnector.FDConnection1
    UpdateObject = upd_sicPG
    StoredProcName = 'dbo.vis_CalculatedPrice_v2'
    Left = 824
    Top = 376
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_GrpNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@IC_SetNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_SicPGPRODUKT: TStringField
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      Size = 150
    end
    object sp_SicPGSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ReadOnly = True
    end
    object sp_SicPGAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
    object sp_SicPGNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
    end
    object sp_SicPGPrisgrupp: TStringField
      FieldName = 'Prisgrupp'
      Origin = 'Prisgrupp'
      Size = 50
    end
    object sp_SicPGProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object sp_SicPGIC_grpNo: TIntegerField
      FieldName = 'IC_grpNo'
      Origin = 'IC_grpNo'
      Required = True
    end
    object sp_SicPGOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object sp_SicPGKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      Required = True
      FixedChar = True
      Size = 30
    end
    object sp_SicPGTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      Required = True
      Size = 30
    end
    object sp_SicPGUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      Required = True
      Size = 30
    end
    object sp_SicPGIMP: TStringField
      FieldName = 'IMP'
      Origin = 'IMP'
      Size = 40
    end
    object sp_SicPGAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object sp_SicPGAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object sp_SicPGPricePerNM3: TFloatField
      FieldName = 'PricePerNM3'
      Origin = 'PricePerNM3'
      DisplayFormat = '#,###,###.0'
    end
    object sp_SicPGppnm_ProductNo: TIntegerField
      FieldName = 'ppnm_ProductNo'
      Origin = 'ppnm_ProductNo'
    end
    object sp_SicPGKalkylPris: TFloatField
      FieldName = 'KalkylPris'
      Origin = 'KalkylPris'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object sp_SicPGLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object sp_SicPGRowValue: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RowValue'
      ProviderFlags = []
      DisplayFormat = '#,###,###.0'
      Calculated = True
    end
  end
  object cds_InvCtrlSet: TFDQuery
    AfterInsert = cds_InvCtrlSetAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM '
      'dbo.InvCtrlSet'
      'WHERE ((SetStatus = :SetStatus) OR (:SetStatus = 0))')
    Left = 1304
    Top = 672
    ParamData = <
      item
        Name = 'SETSTATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_InvCtrlSetIC_SETNo: TIntegerField
      FieldName = 'IC_SETNo'
      Origin = 'IC_SETNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvCtrlSetDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlSetCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlSetNote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_InvCtrlSetMaxDatum: TSQLTimeStampField
      FieldName = 'MaxDatum'
      Origin = 'MaxDatum'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlSetStartFilterOnMaxDate: TSQLTimeStampField
      FieldName = 'StartFilterOnMaxDate'
      Origin = 'StartFilterOnMaxDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlSetEndFilterOnMaxDate: TSQLTimeStampField
      FieldName = 'EndFilterOnMaxDate'
      Origin = 'EndFilterOnMaxDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlSetSetStatus: TIntegerField
      FieldName = 'SetStatus'
      Origin = 'SetStatus'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sp_SetInvCtrlSetStatus: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_SetInvCtrlSetStatus'
    Left = 1304
    Top = 792
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_SETNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_SetMall: TFDStoredProc
    OnUpdateRecord = sp_SetMallUpdateRecord
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_SetMall'
    Left = 1304
    Top = 520
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end>
    object sp_SetMallsp_SetMallOwner: TStringField
      DisplayLabel = #196'gare'
      FieldName = 'Owner'
      Origin = 'Owner'
      Size = 80
    end
    object sp_SetMallsp_SetMallclientno: TIntegerField
      FieldName = 'clientno'
      Origin = 'clientno'
      Required = True
    end
    object sp_SetMallsp_SetMallPIP: TStringField
      DisplayLabel = 'Lagerst'#228'lle'
      FieldName = 'PIP'
      Origin = 'PIP'
      Size = 50
    end
    object sp_SetMallsp_SetMallLIP: TStringField
      DisplayLabel = 'Lagergrupp'
      FieldName = 'LIP'
      Origin = 'LIP'
      Size = 50
    end
    object sp_SetMallsp_SetMallPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      Required = True
    end
    object sp_SetMallsp_SetMallAct: TIntegerField
      DisplayLabel = 'Aktiv'
      FieldName = 'Act'
      Origin = 'Act'
    end
    object sp_SetMallsp_SetMallSetMall: TIntegerField
      DisplayLabel = 'Anv'#228'nd som mall'
      FieldName = 'SetMall'
      Origin = 'SetMall'
    end
    object sp_SetMallLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      Required = True
    end
  end
  object ds_SetMall: TDataSource
    DataSet = sp_SetMall
    Left = 1304
    Top = 576
  end
  object upd_SetMall: TFDUpdateSQL
    Connection = dmsConnector.FDConnection1
    ConnectionName = 'Vida'
    InsertSQL.Strings = (
      'INSERT INTO dbo.LogicalInventoryPoint'
      '(LogicalInventoryPointNo, PhysicalInventoryPointNo, '
      '  LogicalInventoryName, SequenceNo, DateCreated, '
      '  ModifiedUser, CreatedUser, InventoryType, '
      '  AvRegByPkg, Grupp, InvCode, RegiShortCode, '
      '  SetMall)'
      
        'VALUES (:NEW_LogicalInventoryPointNo, :NEW_PhysicalInventoryPoin' +
        'tNo, '
      '  :NEW_LogicalInventoryName, :NEW_SequenceNo, :NEW_DateCreated, '
      '  :NEW_ModifiedUser, :NEW_CreatedUser, :NEW_InventoryType, '
      
        '  :NEW_AvRegByPkg, :NEW_Grupp, :NEW_InvCode, :NEW_RegiShortCode,' +
        ' '
      '  :NEW_SetMall)')
    ModifySQL.Strings = (
      'UPDATE dbo.LogicalInventoryPoint'
      
        'SET LogicalInventoryPointNo = :NEW_LogicalInventoryPointNo, SetM' +
        'all = :NEW_SetMall'
      'WHERE LogicalInventoryPointNo = :OLD_LogicalInventoryPointNo')
    DeleteSQL.Strings = (
      'DELETE FROM dbo.LogicalInventoryPoint'
      'WHERE LogicalInventoryPointNo = :OLD_LogicalInventoryPointNo')
    FetchRowSQL.Strings = (
      
        'SELECT LogicalInventoryPointNo, PhysicalInventoryPointNo, Logica' +
        'lInventoryName, '
      
        '  SequenceNo, DateCreated, ModifiedUser, CreatedUser, InventoryT' +
        'ype, '
      '  AvRegByPkg, Grupp, InvCode, RegiShortCode, SetMall'
      'FROM dbo.LogicalInventoryPoint'
      'WHERE LogicalInventoryPointNo = :LogicalInventoryPointNo')
    Left = 1304
    Top = 472
  end
  object ds_InvCtrlSet: TDataSource
    DataSet = cds_InvCtrlSet
    Left = 1304
    Top = 720
  end
  object cds_InvenSETLip: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.InvenSETLip'
      'WHERE IC_SetNo = :IC_SetNo')
    Left = 1328
    Top = 352
    ParamData = <
      item
        Name = 'IC_SETNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_InvenSETLipIC_SetNo: TIntegerField
      FieldName = 'IC_SetNo'
      Origin = 'IC_SetNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvenSETLipLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvenSETLipOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvenSETLipPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvenSETLipLagerstalle: TStringField
      FieldName = 'Lagerstalle'
      Origin = 'Lagerstalle'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_InvenSETLipLagergrupp: TStringField
      FieldName = 'Lagergrupp'
      Origin = 'Lagergrupp'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_InvenSETLipOwnerName: TStringField
      FieldName = 'OwnerName'
      Origin = 'OwnerName'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_InvenSETLipGenerated: TIntegerField
      FieldName = 'Generated'
      Origin = 'Generated'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sp_InsertToInvenSetLIP: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_InsertToInvenSetLIP'
    Left = 1328
    Top = 280
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_SetNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_Exec_PackageCost: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_Exec_PackageCost'
    Left = 1328
    Top = 224
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_SetNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_CopyToNM3Price: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_CopyToNM3Price'
    Left = 1328
    Top = 408
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_SetNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_Add_IC_GroupNo_To_Inven_Al_VW: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_addICgrps'
    Left = 1304
    Top = 840
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IC_SetNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@IC_GroupNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@CreatedUser'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_RemoveKilnPkgsFromInvCount: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_RemoveKilnPkgsFromInvCount'
    Left = 1016
    Top = 856
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ic_grpNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
