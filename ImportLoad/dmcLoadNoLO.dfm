object dmLoadNoLO: TdmLoadNoLO
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 567
  Width = 1004
  object sq_LoadHead: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select *'
      'FROM dbo.Loads'
      'Where LoadNo = :LoadNo')
    Left = 40
    Top = 16
    object sq_LoadHeadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLoadID: TStringField
      FieldName = 'LoadID'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_LoadHeadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadFS: TStringField
      FieldName = 'FS'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadOriginalSupplierNo: TIntegerField
      FieldName = 'OriginalSupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadMsgToShipper: TMemoField
      FieldName = 'MsgToShipper'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_LoadHeadInternalNote: TMemoField
      FieldName = 'InternalNote'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_LoadHeadNotering: TMemoField
      FieldName = 'Notering'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_LoadHeadLoadOK: TIntegerField
      FieldName = 'LoadOK'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLoadAR: TIntegerField
      FieldName = 'LoadAR'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_LoadHead: TDataSetProvider
    DataSet = sq_LoadHead
    UpdateMode = upWhereChanged
    Left = 40
    Top = 72
  end
  object cds_LoadHead: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LoadHead'
    AfterInsert = cds_LoadHeadAfterInsert
    BeforePost = cds_LoadHeadBeforePost
    AfterScroll = cds_LoadHeadAfterScroll
    OnReconcileError = cds_LoadHeadReconcileError
    Left = 40
    Top = 128
    object cds_LoadHeadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_LoadHeadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cds_LoadHeadSenderLoadStatusChange
    end
    object cds_LoadHeadLoadID: TStringField
      FieldName = 'LoadID'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_LoadHeadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadFS: TStringField
      FieldName = 'FS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadOriginalSupplierNo: TIntegerField
      FieldName = 'OriginalSupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_LoadHeadCustomerNoChange
    end
    object cds_LoadHeadKUND: TStringField
      FieldKind = fkLookup
      FieldName = 'KUND'
      LookupDataSet = dmsContact.cdsClient
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'CustomerNo'
      Size = 80
      Lookup = True
    end
    object cds_LoadHeadLeverantr: TStringField
      FieldKind = fkLookup
      FieldName = 'Leverant'#246'r'
      LookupDataSet = dmsContact.cdsClient
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SupplierNo'
      Size = 80
      Lookup = True
    end
    object cds_LoadHeadDelAdr: TStringField
      FieldKind = fkLookup
      FieldName = 'DelAdr'
      LookupDataSet = cds_Comp_DelAdr
      LookupKeyFields = 'AddressNo'
      LookupResultField = 'AddressName'
      KeyFields = 'LocalShippingCompanyNo'
      Size = 80
      Lookup = True
    end
    object cds_LoadHeadPIP: TStringField
      FieldKind = fkLookup
      FieldName = 'PIP'
      LookupDataSet = cds_PIP
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'LocalLoadingLocation'
      Size = 50
      Lookup = True
    end
    object cds_LoadHeadMsgToShipper: TMemoField
      FieldName = 'MsgToShipper'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_LoadHeadInternalNote: TMemoField
      FieldName = 'InternalNote'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_LoadHeadNotering: TMemoField
      FieldName = 'Notering'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_LoadHeadLoadOK: TIntegerField
      FieldName = 'LoadOK'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadLoadAR: TIntegerField
      FieldName = 'LoadAR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_LoadHead: TDataSource
    DataSet = cds_LoadHead
    Left = 40
    Top = 184
  end
  object sq_LSP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT LSP.*'
      ''
      'FROM dbo.LoadShippingPlan LSP'
      ''
      'WHERE'
      'LSP.LoadNo = :LoadNo'
      ''
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 128
    Top = 16
    object sq_LSPLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LSPCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LSPModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LSPDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LSPShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LSPConfirmedByReciever: TIntegerField
      FieldName = 'ConfirmedByReciever'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LSPConfirmedBySupplier: TIntegerField
      FieldName = 'ConfirmedBySupplier'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LSPInvoiced: TIntegerField
      FieldName = 'Invoiced'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LSPLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LSPShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_LoadPackages: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      '           LD.LoadNo,'
      '           LD.ShippingPlanNo,'
      '           PR.ProductDisplayName     AS PRODUCT,'
      '           LD.LoadDetailNo,'
      '           LD.PackageNo'#9#9'            AS PACKAGENO,'
      '           LD.PackageTypeNo'#9'          AS PACKAGETYPENO,'
      '           LD.SupplierCode'#9'          ,'
      '           LD.PackageOK'#9#9'            ,'
      '           LD.ProblemPackageLog'#9'      ,'
      '           LD.CreatedUser,'
      '           LD.ModifiedUser,'
      '           LD.DateCreated,'
      ''
      '           PT.Totalm3Actual           AS  M3_NET,'
      '           PT.TotalNoOfPieces         AS  PCS,'
      '      '#9'   PT.Totalm3Nominal'#9#9'      AS M3_NOM,'
      '           PT.TotalMFBMNominal        AS  MFBM,'
      '      '#9'   PT.TotalLinealMeterActualLength AS LOPM,'
      '           PR.ProductNo,'
      '           LD.DefaultCustShipObjectNo,'
      
        '           dbo.vida_LengthDescription(PT.PackageTypeNo)         ' +
        '  AS PCS_PER_LENGTH,'
      '          (Select Count(*) from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS NoOfL' +
        'engths,'
      '          (Select TOP 1 PTD.ProductLengthNo from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS Produ' +
        'ctLengthNo,'
      ''
      '          (Select TOP 1 PL.ActualLengthMM from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          Inner Join dbo.ProductLength PL ON PL.ProductLengthNo ' +
        '= PTD.ProductLengthNo'
      '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS ALMM,'
      ''
      ''
      '          PG.ActualThicknessMM AS ATMM,'
      '          PG.ActualWidthMM AS ABMM,'
      '          PG.SurfacingNo,'
      '          PG.SpeciesNo,'
      
        '          G.GradeNo                                     AS MainG' +
        'radeNo,'
      '          LD.OverrideMatch,'
      '--          LD.LIPNo,'
      '          0 AS Pkg_State,'
      '          0 AS Pkg_Function,'
      '          0 AS Changed,'
      #9'        LD.Defsspno'
      ''
      ''
      'FROM dbo.LoadDetail LD'
      
        ' INNER JOIN dbo.PackageType   PT  ON    PT.PackageTypeNo    = LD' +
        '.PackageTypeNo'
      
        ' INNER JOIN dbo.Product       Pr  ON    Pr.ProductNo        = Pt' +
        '.ProductNo'
      
        ' INNER JOIN dbo.ProductGroup  PG  ON    PG.ProductGroupNo   = Pr' +
        '.ProductGroupNo'
      
        ' INNER JOIN dbo.Grade         G   ON    G.GradeNo           = Pr' +
        '.GradeNo'
      '        '#9#9#9#9#9'                       AND g.LanguageCode = 1'
      ''
      ''
      'WHERE      LD.LoadNo = :LoadNo'
      ''
      'ORDER BY   LD.LoadDetailNo DESC'
      ' '
      ' '
      ''
      ' '
      ' ')
    Left = 296
    Top = 16
    object sq_LoadPackagesLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadPackagesPRODUCT: TStringField
      FieldName = 'PRODUCT'
      ProviderFlags = []
      Size = 100
    end
    object sq_LoadPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadPackagesPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesSupplierCode: TStringField
      FieldName = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sq_LoadPackagesPackageOK: TIntegerField
      FieldName = 'PackageOK'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesProblemPackageLog: TStringField
      FieldName = 'ProblemPackageLog'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_LoadPackagesCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesPCS: TIntegerField
      FieldName = 'PCS'
      ProviderFlags = []
    end
    object sq_LoadPackagesProductNo: TIntegerField
      FieldName = 'ProductNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      ProviderFlags = []
      Size = 255
    end
    object sq_LoadPackagesNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      ProviderFlags = []
    end
    object sq_LoadPackagesProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      ProviderFlags = []
    end
    object sq_LoadPackagesOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadPackagesPkg_State: TIntegerField
      FieldName = 'Pkg_State'
      ProviderFlags = []
    end
    object sq_LoadPackagesPkg_Function: TIntegerField
      FieldName = 'Pkg_Function'
      ProviderFlags = []
    end
    object sq_LoadPackagesChanged: TIntegerField
      FieldName = 'Changed'
      ProviderFlags = []
    end
    object sq_LoadPackagesShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadPackagesM3_NET: TFloatField
      FieldName = 'M3_NET'
      ProviderFlags = []
    end
    object sq_LoadPackagesM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      ProviderFlags = []
    end
    object sq_LoadPackagesMFBM: TFloatField
      FieldName = 'MFBM'
      ProviderFlags = []
    end
    object sq_LoadPackagesLOPM: TFloatField
      FieldName = 'LOPM'
      ProviderFlags = []
    end
    object sq_LoadPackagesALMM: TFloatField
      FieldName = 'ALMM'
      ProviderFlags = []
    end
    object sq_LoadPackagesATMM: TFloatField
      FieldName = 'ATMM'
      ProviderFlags = []
    end
    object sq_LoadPackagesABMM: TFloatField
      FieldName = 'ABMM'
      ProviderFlags = []
    end
    object sq_LoadPackagesDefsspno: TIntegerField
      FieldName = 'Defsspno'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsPkgsByInvOwner: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provPkgsByInvOwner'
    Left = 688
    Top = 112
    object cdsPkgsByInvOwnerPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object cdsPkgsByInvOwnerSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object cdsPkgsByInvOwnerProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Size = 100
    end
    object cdsPkgsByInvOwnerSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Visible = False
    end
    object cdsPkgsByInvOwnerLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Size = 255
    end
    object cdsPkgsByInvOwnerProductNo: TIntegerField
      FieldName = 'ProductNo'
      Required = True
    end
    object cdsPkgsByInvOwnerProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Required = True
    end
    object cdsPkgsByInvOwnerNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      Required = True
    end
  end
  object dsrcPkgsByInvOwner: TDataSource
    DataSet = cdsPkgsByInvOwner
    Left = 688
    Top = 160
  end
  object provPkgsByInvOwner: TDataSetProvider
    DataSet = sq_PksByInvOwner
    Left = 688
    Top = 64
  end
  object sp_PksByInvOwner: TSQLStoredProc
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
        Name = 'PkgNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LIPNo'
        ParamType = ptInput
      end>
    StoredProcName = 'wm_PkgsByLogicalInventoryPoint'
    Left = 688
    Top = 16
  end
  object sp_DeletePackage: TSQLStoredProc
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
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end>
    StoredProcName = 'wm_DelPkgFromSystem'
    Left = 880
    Top = 184
  end
  object sp_DeleteOneLoad: TSQLStoredProc
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
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    StoredProcName = 'wm_DeleteOneLoad'
    Left = 880
    Top = 16
  end
  object sq_CheckLoadNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select *'
      'FROM dbo.Loads'
      'Where LoadNo = :LoadNo')
    Left = 40
    Top = 320
    object sq_CheckLoadNoLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
  end
  object sp_ProcessPkgAND_Log: TSQLStoredProc
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
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CreatedUser'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Operation'
        ParamType = ptInput
      end>
    StoredProcName = 'wm_ProcessPkg'
    Left = 880
    Top = 128
  end
  object sp_RemPkgFromLoad: TSQLStoredProc
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
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CreatedUser'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Operation'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    StoredProcName = 'wm_RemPkgFromLoad'
    Left = 880
    Top = 72
  end
  object sq_PkgInLoad: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT LD.LoadNo AS LastNr, LD.LONo AS LO'
      'FROM '
      'dbo.Loaddetail LD '
      'where LD.PackageNo = :PackageNo'
      'AND LD.SupplierCode = :SupplierCode'
      'AND LD.LoadNo <> :LoadNo')
    Left = 40
    Top = 368
    object sq_PkgInLoadLastNr: TIntegerField
      FieldName = 'LastNr'
    end
    object sq_PkgInLoadLO: TIntegerField
      FieldName = 'LO'
    end
  end
  object mtPkgNos: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PackageNo'
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'productno'
        DataType = ftInteger
      end
      item
        Name = 'productlengthno'
        DataType = ftInteger
      end>
    IndexFieldNames = 'PackageNo;SupplierCode'
    IndexName = 'mtPkgNosIndex1'
    IndexDefs = <
      item
        Name = 'mtPkgNosIndex1'
        Fields = 'PackageNo;SupplierCode'
        Options = [ixPrimary, ixUnique]
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.02.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 152
    Top = 368
    object mtPkgNosPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtPkgNosSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtPkgNosproductno: TIntegerField
      FieldName = 'productno'
    end
    object mtPkgNosproductlengthno: TIntegerField
      FieldName = 'productlengthno'
    end
  end
  object sq_GetPkgNos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'packagecodeno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select distinct pn.packageno, pn.suppliercode, pc.packagecodeno,' +
        ' lip.LogicalInventoryPointNo, pn.datecreated, pc.packagetypeno,'
      'pt.productno, ptd.productlengthno'
      'from dbo.PkgVarCode pc'
      
        'inner join dbo.packagenumber pn on pn.packagetypeno = pc.package' +
        'typeno'
      
        'inner join dbo.LogicalInventoryPoint lip on lip.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'inner join dbo.packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      
        'inner join dbo.packagetypedetail ptd on ptd.packagetypeno = pn.p' +
        'ackagetypeno'
      'where'
      'lip.LogicalInventoryPointNo = :LogicalInventoryPointNo'
      'AND pn.status = 1'
      'AND pc.packagecodeno = :packagecodeno'
      
        'and pn.packageno not in (Select pr.packageno from dbo.Pkgs_Res p' +
        'r '
      'where pr.suppliercode = pn.suppliercode'
      'and pr.userid <> :UserID)'
      ''
      'order by pn.datecreated ')
    Left = 152
    Top = 320
    object sq_GetPkgNospackageno: TIntegerField
      FieldName = 'packageno'
    end
    object sq_GetPkgNossuppliercode: TStringField
      FieldName = 'suppliercode'
      Size = 3
    end
    object sq_GetPkgNosproductno: TIntegerField
      FieldName = 'productno'
    end
    object sq_GetPkgNosproductlengthno: TIntegerField
      FieldName = 'productlengthno'
    end
  end
  object dsp_LoadPackages: TDataSetProvider
    DataSet = sq_LoadPackages
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dsp_LoadPackagesGetTableName
    Left = 296
    Top = 72
  end
  object cds_LoadPackages: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'LoadNo'
        DataType = ftInteger
      end
      item
        Name = 'PRODUCT'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'LoadDetailNo'
        DataType = ftInteger
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PackageOK'
        DataType = ftInteger
      end
      item
        Name = 'ProblemPackageLog'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CreatedUser'
        DataType = ftInteger
      end
      item
        Name = 'ModifiedUser'
        DataType = ftInteger
      end
      item
        Name = 'DateCreated'
        DataType = ftTimeStamp
      end
      item
        Name = 'PCS'
        DataType = ftInteger
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'DefaultCustShipObjectNo'
        DataType = ftInteger
      end
      item
        Name = 'PCS_PER_LENGTH'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'NoOfLengths'
        DataType = ftInteger
      end
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end
      item
        Name = 'SurfacingNo'
        DataType = ftInteger
      end
      item
        Name = 'SpeciesNo'
        DataType = ftInteger
      end
      item
        Name = 'MainGradeNo'
        DataType = ftInteger
      end
      item
        Name = 'OverrideMatch'
        DataType = ftInteger
      end
      item
        Name = 'Pkg_State'
        DataType = ftInteger
      end
      item
        Name = 'Pkg_Function'
        DataType = ftInteger
      end
      item
        Name = 'Changed'
        DataType = ftInteger
      end
      item
        Name = 'ShippingPlanNo'
        DataType = ftInteger
      end
      item
        Name = 'M3_NET'
        DataType = ftFloat
      end
      item
        Name = 'M3_NOM'
        DataType = ftFloat
      end
      item
        Name = 'MFBM'
        DataType = ftFloat
      end
      item
        Name = 'LOPM'
        DataType = ftFloat
      end
      item
        Name = 'ALMM'
        DataType = ftFloat
      end
      item
        Name = 'ATMM'
        DataType = ftFloat
      end
      item
        Name = 'ABMM'
        DataType = ftFloat
      end
      item
        Name = 'Defsspno'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_LoadPackagesIndex1'
        Fields = 'PACKAGENO;SupplierCode'
        Options = [ixUnique]
      end
      item
        Name = 'cds_LoadPackagesIndex2'
        Fields = 'LoadNo;LoadDetailNo'
      end>
    IndexName = 'cds_LoadPackagesIndex1'
    Params = <>
    ProviderName = 'dsp_LoadPackages'
    StoreDefs = True
    AfterInsert = cds_LoadPackagesAfterInsert
    BeforePost = cds_LoadPackagesBeforePost
    OnPostError = cds_LoadPackagesPostError
    OnReconcileError = cds_LoadPackagesReconcileError
    Left = 296
    Top = 128
    object cds_LoadPackagesLoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadPackagesPRODUCT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCT'
      ProviderFlags = []
      Size = 100
    end
    object cds_LoadPackagesLoadDetailNo: TIntegerField
      DisplayLabel = 'Radnr'
      FieldName = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadPackagesPACKAGENO: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PACKAGENO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesSupplierCode: TStringField
      DisplayLabel = 'Lev.kod'
      FieldName = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cds_LoadPackagesPackageOK: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'PackageOK'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesProblemPackageLog: TStringField
      DisplayLabel = 'Logg'
      FieldName = 'ProblemPackageLog'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_LoadPackagesCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PCS'
      ProviderFlags = []
      DisplayFormat = '#,###,###'
    end
    object cds_LoadPackagesProductNo: TIntegerField
      FieldName = 'ProductNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesPCS_PER_LENGTH: TStringField
      DisplayLabel = 'Antal/L'#228'ngd'
      FieldName = 'PCS_PER_LENGTH'
      ProviderFlags = []
      Size = 255
    end
    object cds_LoadPackagesNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      ProviderFlags = []
    end
    object cds_LoadPackagesProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesPkg_State: TIntegerField
      FieldName = 'Pkg_State'
      ProviderFlags = []
    end
    object cds_LoadPackagesPkg_Function: TIntegerField
      FieldName = 'Pkg_Function'
      ProviderFlags = []
    end
    object cds_LoadPackagesChanged: TIntegerField
      FieldName = 'Changed'
      ProviderFlags = []
    end
    object cds_LoadPackagesShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadPackagesM3_NET: TFloatField
      FieldName = 'M3_NET'
      ProviderFlags = []
    end
    object cds_LoadPackagesM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      ProviderFlags = []
    end
    object cds_LoadPackagesMFBM: TFloatField
      FieldName = 'MFBM'
      ProviderFlags = []
    end
    object cds_LoadPackagesLOPM: TFloatField
      FieldName = 'LOPM'
      ProviderFlags = []
    end
    object cds_LoadPackagesALMM: TFloatField
      FieldName = 'ALMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesATMM: TFloatField
      FieldName = 'ATMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesABMM: TFloatField
      FieldName = 'ABMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesDefsspno: TIntegerField
      FieldName = 'Defsspno'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_LoadPackages2: TDataSource
    DataSet = cds_LoadPackages
    OnDataChange = ds_LoadPackages2DataChange
    Left = 296
    Top = 184
  end
  object dsp_LSP: TDataSetProvider
    DataSet = sq_LSP
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 72
  end
  object cds_LSP: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'LoadNo'
        DataType = ftInteger
      end
      item
        Name = 'CreatedUser'
        DataType = ftInteger
      end
      item
        Name = 'ModifiedUser'
        DataType = ftInteger
      end
      item
        Name = 'DateCreated'
        DataType = ftTimeStamp
      end
      item
        Name = 'ShippingPlanNo'
        DataType = ftInteger
      end
      item
        Name = 'ConfirmedByReciever'
        DataType = ftInteger
      end
      item
        Name = 'ConfirmedBySupplier'
        DataType = ftInteger
      end
      item
        Name = 'Invoiced'
        DataType = ftInteger
      end
      item
        Name = 'LoadingLocationNo'
        DataType = ftInteger
      end
      item
        Name = 'ShipToInvPointNo'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_LSPIndex1'
        Fields = 'ShippingPlanNo'
      end>
    IndexName = 'cds_LSPIndex1'
    Params = <>
    ProviderName = 'dsp_LSP'
    StoreDefs = True
    AfterInsert = cds_LSPAfterInsert
    BeforePost = cds_LSPBeforePost
    OnReconcileError = cds_LSPReconcileError
    Left = 128
    Top = 128
    object cds_LSPLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LSPCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LSPModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LSPDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LSPShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LSPConfirmedByReciever: TIntegerField
      FieldName = 'ConfirmedByReciever'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LSPConfirmedBySupplier: TIntegerField
      FieldName = 'ConfirmedBySupplier'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LSPInvoiced: TIntegerField
      FieldName = 'Invoiced'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LSPLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LSPShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_LSP: TDataSource
    DataSet = cds_LSP
    Left = 128
    Top = 184
  end
  object mtLoadPackages: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'LONo'
        DataType = ftInteger
      end
      item
        Name = 'PRODUCT'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'LoadDetailNo'
        DataType = ftInteger
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
      end
      item
        Name = 'NOOFPKG'
        DataType = ftInteger
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
      end
      item
        Name = 'SUPP_CODE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PKG_OK'
        DataType = ftWord
      end
      item
        Name = 'PKGLOG'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'M3_NET'
        DataType = ftFloat
      end
      item
        Name = 'PCS'
        DataType = ftInteger
      end
      item
        Name = 'M3_NOM'
        DataType = ftFloat
      end
      item
        Name = 'KVM'
        DataType = ftFloat
      end
      item
        Name = 'LOPM'
        DataType = ftFloat
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'DefaultCustShipObjectNo'
        DataType = ftInteger
      end
      item
        Name = 'PcsPerLength'
        DataType = ftString
        Size = 250
      end>
    IndexFieldNames = 'PACKAGENO;SUPP_CODE'
    IndexName = 'mtLoadPackagesIndex2'
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.02.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 296
    Top = 248
    object mtLoadPackagesLONo: TIntegerField
      FieldName = 'LONo'
    end
    object mtLoadPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
    end
    object mtLoadPackagesPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object mtLoadPackagesSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object mtLoadPackagesChanged: TBooleanField
      FieldName = 'Changed'
    end
    object mtLoadPackagesSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
    end
    object mtLoadPackagesCustcdsNo: TIntegerField
      FieldName = 'CustcdsNo'
    end
  end
  object mtLoadShippingPlan: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'LoadNo'
        DataType = ftInteger
      end
      item
        Name = 'CustomerNo'
        DataType = ftInteger
      end
      item
        Name = 'ShippingPlanNo'
        DataType = ftInteger
      end
      item
        Name = 'CUSTOMER'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'SHIPPER'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'READYDATE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VESSEL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ETD'
        DataType = ftTimeStamp
      end
      item
        Name = 'ETA'
        DataType = ftTimeStamp
      end
      item
        Name = 'SHIPPER_REF'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SHIPPERID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SHIPPERS_SHIPDATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SHIPPERS_SHIPTIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'ORDERNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ORDERTYPE'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CreatedUser'
        DataType = ftInteger
      end
      item
        Name = 'ModifiedUser'
        DataType = ftInteger
      end
      item
        Name = 'DateCreated'
        DataType = ftTimeStamp
      end
      item
        Name = 'SalesRegionNo'
        DataType = ftInteger
      end>
    IndexFieldNames = 'ShippingPlanNo'
    IndexName = 'mtLoadShippingPlanIndex1'
    IndexDefs = <
      item
        Name = 'mtLoadShippingPlanIndex1'
        Fields = 'ShippingPlanNo'
        Options = [ixPrimary, ixUnique]
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.02.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 688
    Top = 219
    object mtLoadShippingPlanLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object mtLoadShippingPlanCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object mtLoadShippingPlanShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object mtLoadShippingPlanCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Size = 80
    end
    object mtLoadShippingPlanSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object mtLoadShippingPlanREADYDATE: TStringField
      FieldName = 'READYDATE'
      Size = 30
    end
    object mtLoadShippingPlanVESSEL: TStringField
      FieldName = 'VESSEL'
      Size = 50
    end
    object mtLoadShippingPlanETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object mtLoadShippingPlanETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object mtLoadShippingPlanSHIPPER_REF: TStringField
      FieldName = 'SHIPPER_REF'
      Size = 50
    end
    object mtLoadShippingPlanSHIPPERID: TStringField
      FieldName = 'SHIPPERID'
    end
    object mtLoadShippingPlanSHIPPERS_SHIPDATE: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPDATE'
    end
    object mtLoadShippingPlanSHIPPERS_SHIPTIME: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPTIME'
    end
    object mtLoadShippingPlanORDERNO: TStringField
      FieldName = 'ORDERNO'
    end
    object mtLoadShippingPlanORDERTYPE: TStringField
      FieldName = 'ORDERTYPE'
      Size = 8
    end
    object mtLoadShippingPlanCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object mtLoadShippingPlanModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object mtLoadShippingPlanDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object mtLoadShippingPlanSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object mtLoadShippingPlanFunction: TIntegerField
      FieldName = 'Function'
    end
  end
  object sq_NewPkgs: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '      SELECT DISTINCT'
      '      LPT.LoadNo,'
      '      PR.ProductDisplayName AS PRODUKT,'
      
        '      dbo.vida_LengthDescription(P.PackageTypeNo) AS ANTPERL'#196'NGD' +
        ','
      '      LPT.PackageNo,'
      '      LPT.SUPPLIERCODE,'
      '      P.TotalAM3 AS AM3,'
      '      P.TotalNM3 AS NM3,'
      '      P.TotalPcs AS STYCK,'
      '      P.TotalMFBM              AS      MFBM,'
      '      P.PackageTypeNo,'
      '      PN.LIPNo,'
      '      P.ProductNo,'
      '     (Select Count(*) from'
      
        '      dbo.PackageTypeDetail  PTD WHERE   PTD.PackageTypeNo = PN.' +
        'PackageTypeNo)  AS NoOfLengths'
      ''
      ''
      '      FROM'
      '      dbo.LoadPkgTemp LPT'
      
        '      Inner Join dbo.PackageNumber pn on pn.packageno = LPT.Pack' +
        'ageNo'
      '      and pn.SupplierCode = LPT.SupplierCode'
      ''
      
        '     INNER JOIN dbo.PackageType P ON P.PackageTypeNo = PN.Packag' +
        'eTypeNo'
      ''
      ''
      '      INNER JOIN dbo.Product PR ON PR.ProductNo = P.ProductNo'
      '      Inner Join dbo.LIP on LIP.LIPNo = pn.LIPNo'
      '      Inner Join dbo.PIP on PIP.PIPNo = LIP.PIPNo'
      '      WHERE'
      '      LPT.LoadNo = :LoadNo'
      ''
      ''
      ' '
      ' '
      ' ')
    Left = 688
    Top = 296
    object sq_NewPkgsPRODUKT: TStringField
      FieldName = 'PRODUKT'
      ProviderFlags = []
      Size = 100
    end
    object sq_NewPkgsANTPERLNGD: TStringField
      FieldName = 'ANTPERL'#196'NGD'
      ProviderFlags = []
      Size = 255
    end
    object sq_NewPkgsAM3: TFMTBCDField
      FieldName = 'AM3'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object sq_NewPkgsNM3: TFMTBCDField
      FieldName = 'NM3'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object sq_NewPkgsSTYCK: TIntegerField
      FieldName = 'STYCK'
      ProviderFlags = []
    end
    object sq_NewPkgsMFBM: TFMTBCDField
      FieldName = 'MFBM'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object sq_NewPkgsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      ProviderFlags = []
    end
    object sq_NewPkgsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      ProviderFlags = []
    end
    object sq_NewPkgsPackageNo: TIntegerField
      FieldName = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_NewPkgsSUPPLIERCODE: TStringField
      FieldName = 'SUPPLIERCODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 3
    end
    object sq_NewPkgsLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_NewPkgsProductNo: TIntegerField
      FieldName = 'ProductNo'
      ProviderFlags = []
    end
    object sq_NewPkgsNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      ProviderFlags = []
    end
  end
  object dsp_NewPkgs: TDataSetProvider
    DataSet = sq_NewPkgs
    UpdateMode = upWhereKeyOnly
    Left = 688
    Top = 344
  end
  object cds_NewPkgs: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PRODUKT'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ANTPERL'#196'NGD'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'AM3'
        DataType = ftFMTBcd
        Precision = 18
        Size = 3
      end
      item
        Name = 'NM3'
        DataType = ftFMTBcd
        Precision = 18
        Size = 3
      end
      item
        Name = 'STYCK'
        DataType = ftInteger
      end
      item
        Name = 'MFBM'
        DataType = ftFMTBcd
        Precision = 18
        Size = 3
      end
      item
        Name = 'PackageTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'PackageNo'
        DataType = ftInteger
      end
      item
        Name = 'SUPPLIERCODE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'LoadNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'NoOfLengths'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cdsArrivingPackagesIndex1'
        Fields = 'PackageNo;SUPPLIERCODE'
      end>
    IndexName = 'cdsArrivingPackagesIndex1'
    Params = <>
    ProviderName = 'dsp_NewPkgs'
    StoreDefs = True
    Left = 688
    Top = 400
    object cds_NewPkgsPRODUKT: TStringField
      FieldName = 'PRODUKT'
      ProviderFlags = []
      Size = 100
    end
    object cds_NewPkgsANTPERLNGD: TStringField
      FieldName = 'ANTPERL'#196'NGD'
      ProviderFlags = []
      Size = 255
    end
    object cds_NewPkgsAM3: TFMTBCDField
      FieldName = 'AM3'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object cds_NewPkgsNM3: TFMTBCDField
      FieldName = 'NM3'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object cds_NewPkgsSTYCK: TIntegerField
      FieldName = 'STYCK'
      ProviderFlags = []
    end
    object cds_NewPkgsMFBM: TFMTBCDField
      FieldName = 'MFBM'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object cds_NewPkgsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      ProviderFlags = []
    end
    object cds_NewPkgsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      ProviderFlags = []
    end
    object cds_NewPkgsPackageNo: TIntegerField
      DisplayLabel = 'PAKETNR'
      FieldName = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_NewPkgsSUPPLIERCODE: TStringField
      DisplayLabel = 'LEV.KOD'
      FieldName = 'SUPPLIERCODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 3
    end
    object cds_NewPkgsLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object cds_NewPkgsProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object cds_NewPkgsNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
    end
  end
  object ds_NewPkgs: TDataSource
    DataSet = cds_NewPkgs
    Left = 688
    Top = 448
  end
  object sq_DelNewPkgs: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'DELETE'
      '   dbo.LoadPkgTemp'
      'From dbo.LoadPkgTemp'
      
        'Inner Join dbo.LoadDetail LD on LD.PackageNo = LoadPkgTemp.Packa' +
        'geNo'
      #9#9#9#9'AND LD.SupplierCode = LoadPkgTemp.SupplierCode'
      #9#9#9#9'AND LD.LoadNo = LoadPkgTemp.LoadNo'
      'WHERE'
      ' LoadPkgTemp.LoadNo = :LoadNo')
    Left = 776
    Top = 344
  end
  object dsp_Client: TDataSetProvider
    DataSet = sq_Client
    Left = 480
    Top = 80
  end
  object cds_Client: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Client'
    Left = 480
    Top = 136
    object cds_ClientClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cds_ClientClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
  end
  object ds_Client: TDataSource
    DataSet = cds_Client
    Left = 480
    Top = 192
  end
  object sq_Client: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select ClientName, ClientNo FROM dbo.Client')
    Left = 480
    Top = 24
  end
  object sq_CompDelAdr: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'Select distinct ca.*, FD.*, ci.CityName, cy.CountryName  From DB' +
        'O.CompanyAddress CA'
      'INNER JOIN dbo.Address FD on FD.AddressNo = ca.AddressNo'
      'Inner Join dbo.City ci on ci.CityNo = FD.CityNo'
      'Inner Join dbo.Country cy on cy.CountryNo = FD.CountryNo'
      ''
      ''
      ''
      'WHERE ca.AddressType = 2')
    Left = 472
    Top = 312
    object sq_CompDelAdrClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_CompDelAdrAddressNo: TIntegerField
      FieldName = 'AddressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_CompDelAdrAddressType: TIntegerField
      FieldName = 'AddressType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_CompDelAdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CompDelAdrModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CompDelAdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_CompDelAdrCityName: TStringField
      FieldName = 'CityName'
      Size = 50
    end
    object sq_CompDelAdrCountryName: TStringField
      FieldName = 'CountryName'
      Size = 30
    end
    object sq_CompDelAdrAddressName: TStringField
      FieldName = 'AddressName'
      Size = 80
    end
    object sq_CompDelAdrAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Size = 40
    end
    object sq_CompDelAdrAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Size = 40
    end
    object sq_CompDelAdrAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Size = 40
    end
    object sq_CompDelAdrAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Size = 40
    end
    object sq_CompDelAdrStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Size = 40
    end
    object sq_CompDelAdrPhone1: TStringField
      FieldName = 'Phone1'
      Size = 40
    end
    object sq_CompDelAdrPhone2: TStringField
      FieldName = 'Phone2'
      Size = 40
    end
    object sq_CompDelAdrPhone3: TStringField
      FieldName = 'Phone3'
      Size = 40
    end
    object sq_CompDelAdrFax: TStringField
      FieldName = 'Fax'
    end
    object sq_CompDelAdrEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object sq_CompDelAdrPostalCode: TStringField
      FieldName = 'PostalCode'
    end
  end
  object dsp_CompDelAdr: TDataSetProvider
    DataSet = sq_CompDelAdr
    UpdateMode = upWhereKeyOnly
    Left = 472
    Top = 360
  end
  object cds_Comp_DelAdr: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ClientNo'
        DataType = ftInteger
      end
      item
        Name = 'AddressNo'
        DataType = ftInteger
      end
      item
        Name = 'AddressType'
        DataType = ftInteger
      end
      item
        Name = 'CreatedUser'
        DataType = ftInteger
      end
      item
        Name = 'ModifiedUser'
        DataType = ftInteger
      end
      item
        Name = 'DateCreated'
        DataType = ftTimeStamp
      end
      item
        Name = 'CityName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CountryName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'AddressName'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'AddressLine1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AddressLine2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AddressLine3'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AddressLine4'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'StateOrProvince'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Phone1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Phone2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Phone3'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Fax'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Email'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PostalCode'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'cds_Comp_DelAdrIndex4'
        Fields = 'AddressNo'
      end>
    IndexName = 'cds_Comp_DelAdrIndex4'
    Params = <>
    ProviderName = 'dsp_CompDelAdr'
    StoreDefs = True
    AfterInsert = cds_Comp_DelAdrAfterInsert
    Left = 472
    Top = 408
    object cds_Comp_DelAdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Comp_DelAdrModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Comp_DelAdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Comp_DelAdrAddressType: TIntegerField
      FieldName = 'AddressType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_Comp_DelAdrAddressNo: TIntegerField
      FieldName = 'AddressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_Comp_DelAdrClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_Comp_DelAdrCityName: TStringField
      DisplayLabel = 'ORT'
      FieldName = 'CityName'
      Size = 50
    end
    object cds_Comp_DelAdrCountryName: TStringField
      DisplayLabel = 'LAND'
      FieldName = 'CountryName'
      Size = 30
    end
    object cds_Comp_DelAdrAddressName: TStringField
      DisplayLabel = 'NAMN'
      FieldName = 'AddressName'
      Size = 80
    end
    object cds_Comp_DelAdrAddressLine1: TStringField
      DisplayLabel = 'ADRESSRAD1'
      FieldName = 'AddressLine1'
      Size = 40
    end
    object cds_Comp_DelAdrAddressLine2: TStringField
      DisplayLabel = 'ADRESSRAD2'
      FieldName = 'AddressLine2'
      Size = 40
    end
    object cds_Comp_DelAdrAddressLine3: TStringField
      DisplayLabel = 'ADRESSRAD3'
      FieldName = 'AddressLine3'
      Size = 40
    end
    object cds_Comp_DelAdrAddressLine4: TStringField
      DisplayLabel = 'ADRESSRAD4'
      FieldName = 'AddressLine4'
      Size = 40
    end
    object cds_Comp_DelAdrStateOrProvince: TStringField
      DisplayLabel = 'STAT'
      FieldName = 'StateOrProvince'
      Size = 40
    end
    object cds_Comp_DelAdrPhone1: TStringField
      FieldName = 'Phone1'
      Size = 40
    end
    object cds_Comp_DelAdrPhone2: TStringField
      FieldName = 'Phone2'
      Size = 40
    end
    object cds_Comp_DelAdrPhone3: TStringField
      FieldName = 'Phone3'
      Size = 40
    end
    object cds_Comp_DelAdrFax: TStringField
      FieldName = 'Fax'
    end
    object cds_Comp_DelAdrEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object cds_Comp_DelAdrPostalCode: TStringField
      DisplayLabel = 'POSTNR'
      FieldName = 'Postalcode'
    end
  end
  object ds_CompDelAdr: TDataSource
    DataSet = cds_Comp_DelAdr
    Left = 472
    Top = 456
  end
  object sq_PIP: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Distinct PH.PhysicalInventoryPointNo AS PIPNO, '
      'CY.CITYNAME AS PIPNAME'
      'FROM'
      'dbo.PhysicalInventoryPoint PH'
      'Inner Join dbo.CITY CY on cy.CityNo = PH.PhyInvPointNameNo'
      ''
      ''
      'Order By  CY.CITYNAME')
    Left = 568
    Top = 25
  end
  object dsp_PIP: TDataSetProvider
    DataSet = sq_PIP
    Left = 568
    Top = 72
  end
  object cds_PIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PIP'
    Left = 568
    Top = 120
    object cds_PIPPIPNO: TIntegerField
      FieldName = 'PIPNO'
    end
    object cds_PIPPIPNAME: TStringField
      FieldName = 'PIPNAME'
      Size = 50
    end
  end
  object ds_PIP: TDataSource
    DataSet = cds_PIP
    Left = 568
    Top = 168
  end
  object sq_PksByInvOwner: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PIPNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PN.PackageNo,'
      '       PN.SupplierCode,'
      '       PN.SupplierNo,'
      
        '       dbo.vida_LengthDescription(PN.PackageTypeNo) AS LengthDes' +
        'cription,'
      '       Pr.ProductDisplayName, Pr.ProductNo,'
      '(Select Count(*) from'
      
        '        dbo.PackageTypeDetail  PTD WHERE   PTD.PackageTypeNo = P' +
        'N.PackageTypeNo)'
      'AS NoOfLengths,'
      '(Select TOP 1 PTD.ProductLengthNo from'
      
        '        dbo.PackageTypeDetail  PTD WHERE   PTD.PackageTypeNo = P' +
        'N.PackageTypeNo)'
      'AS ProductLengthNo'
      ''
      'FROM         dbo.PackageNumber          PN'
      ''
      '       INNER      JOIN  dbo.LIP  LI ON  LI.LIPNo  = PN.LIPNo'
      
        '       INNER      JOIN  dbo.PackageType            PT ON  PT.Pac' +
        'kageTypeNo            = PN.PackageTypeNo'
      
        '       INNER      JOIN  dbo.Product                Pr ON  Pr.Pro' +
        'ductNo                = PT.ProductNo'
      ''
      ''
      'WHERE  PN.PackageNo = :PackageNo'
      'AND PN.Status = 1'
      'AND    LI.PIPNo   = :PIPNo')
    Left = 880
    Top = 256
  end
  object sq_UpdPcsInPkgType: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TotalPcs'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Update dbo.PackageType'
      'Set TotalPcs = :TotalPcs'
      'WHERE PackageTypeNo = :PackageTypeNo')
    Left = 296
    Top = 440
  end
  object sq_OnePkgDetailData: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      '  PR.ProductDisplayName         AS PRODUCT,'
      '  PN.PackageNo'#9#9'              AS PACKAGENO,'
      '  PN.PackageTypeNo'#9'            AS PACKAGETYPENO,'
      '  PN.SupplierCode'#9'              AS SUPP_CODE,'
      '  PT.OnSticks,'
      '  PT.Totalm3Actual              AS M3_NET,'
      '  PT.TotalNoOfPieces            AS PCS,'
      #9'PT.Totalm3Nominal'#9#9'          AS M3_NOM,'
      '  PT.TotalMFBMNominal           AS MFBM,'
      #9'PT.TotalSQMofActualWidth'#9'    AS KVM,'
      #9'PT.TotalLinealMeterActualLength AS LOPM,'
      '  PTL.PcsPerLength                AS PCS_PER_LENGTH,'
      '  (Select Count(*) from'
      
        '  dbo.PackageTypeDetail  PTD WHERE   PTD.PackageTypeNo = PN.Pack' +
        'ageTypeNo)  AS NoOfLengths,'
      ' (Select TOP 1 PTD.ProductLengthNo from'
      
        '  dbo.PackageTypeDetail  PTD WHERE   PTD.PackageTypeNo = PN.Pack' +
        'ageTypeNo)  AS ProductLengthNo,'
      ''
      
        '  (Select TOP 1 PL.ActualLengthMM from dbo.PackageTypeDetail  PT' +
        'D'
      
        '  Inner Join dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Pr' +
        'oductLengthNo'
      'WHERE   PTD.PackageTypeNo = PN.PackageTypeNo)AS ALMM,'
      ''
      'PT.ProductNo,'
      'PG.ActualThicknessMM,'
      'PG.ActualWidthMM,'
      'PG.SurfacingNo,'
      'PG.SpeciesNo,'
      'G.GradeNo AS MainGradeNo,'
      'PN.LogicalInventoryPointNo AS LIPNo,'
      'PG.ProductCategoryNo'
      ''
      ''
      'FROM       dbo.PackageNumber             PN'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      
        '        INNER JOIN dbo.ProductGroup      PG  ON PG.ProductGroupN' +
        'o     = Pr.ProductGroupNo'
      
        '        INNER JOIN dbo.Grade      G  ON G.GradeNo     = Pr.Grade' +
        'No'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      ''
      'WHERE     PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      ' '
      ' ')
    Left = 296
    Top = 352
    object sq_OnePkgDetailDataPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object sq_OnePkgDetailDataPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object sq_OnePkgDetailDataPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object sq_OnePkgDetailDataSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object sq_OnePkgDetailDataOnSticks: TIntegerField
      FieldName = 'OnSticks'
    end
    object sq_OnePkgDetailDataM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_OnePkgDetailDataPCS: TIntegerField
      FieldName = 'PCS'
    end
    object sq_OnePkgDetailDataM3_NOM: TFloatField
      FieldName = 'M3_NOM'
    end
    object sq_OnePkgDetailDataMFBM: TFloatField
      FieldName = 'MFBM'
    end
    object sq_OnePkgDetailDataKVM: TFloatField
      FieldName = 'KVM'
    end
    object sq_OnePkgDetailDataLOPM: TFloatField
      FieldName = 'LOPM'
    end
    object sq_OnePkgDetailDataPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OnePkgDetailDataNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
    end
    object sq_OnePkgDetailDataProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object sq_OnePkgDetailDataProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object sq_OnePkgDetailDataActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
    end
    object sq_OnePkgDetailDataActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
    end
    object sq_OnePkgDetailDataSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object sq_OnePkgDetailDataSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object sq_OnePkgDetailDataMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
    end
    object sq_OnePkgDetailDataALMM: TFloatField
      FieldName = 'ALMM'
    end
    object sq_OnePkgDetailDataLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object sq_OnePkgDetailDataProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
    end
  end
end
