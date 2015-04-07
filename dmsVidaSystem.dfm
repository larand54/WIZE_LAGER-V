object dmsSystem: TdmsSystem
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 794
  Width = 1175
  object spAccessRights: TFDStoredProc
    Filtered = True
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_UserRights_V5'
    Left = 48
    Top = 8
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
        Name = '@UserName'
        DataType = ftString
        ParamType = ptInput
        Size = 80
      end
      item
        Position = 3
        Name = '@UserPswd'
        DataType = ftString
        ParamType = ptInput
        Size = 80
      end
      item
        Position = 4
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 5
        Name = '@LanguageID'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 6
        Name = '@Company'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 7
        Name = '@InvSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 8
        Name = '@IntOrdSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 9
        Name = '@ProdSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 10
        Name = '@CliSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 11
        Name = '@OrdSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 12
        Name = '@BaseSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 13
        Name = '@fAvropSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 14
        Name = '@fARSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 15
        Name = '@fSkeppInstrSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 16
        Name = '@fKP_ListaSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 17
        Name = '@fUtlastningSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 18
        Name = '@fFakturaSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 19
        Name = '@fAvrakningSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 20
        Name = '@fFrakt_AvrakningSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 21
        Name = '@fAdd_packagesSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 22
        Name = '@fAsk_packagesSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 23
        Name = '@fReport_AvropSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 24
        Name = '@EditLoadOrder'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 25
        Name = '@ShowPrice'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object sp_PhysInventory: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_PhysInventory'
    Left = 48
    Top = 80
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@OwnerNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_PhysInventoryCityName: TStringField
      FieldName = 'CityName'
      Required = True
      Size = 50
    end
    object sp_PhysInventoryPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Required = True
    end
    object sp_PhysInventoryPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      Required = True
    end
  end
  object sp_LogInventory: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_LogicalInventory'
    Left = 344
    Top = 208
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end>
  end
  object dsrcBarCodes: TDataSource
    DataSet = sqBarCode
    Left = 136
    Top = 80
  end
  object dsrcGradeStamps: TDataSource
    DataSet = sqGradeStamp
    Left = 224
    Top = 72
  end
  object dsrcPaperWraps: TDataSource
    DataSet = sqPaperWrap
    Left = 312
    Top = 80
  end
  object sp_Delete_Res_Pkgs: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_Del_Pkg_ResModul'
    Left = 48
    Top = 152
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Modul'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  object sp_Pkg_Res: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_Pkg_ResModul'
    Left = 48
    Top = 200
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
        Name = '@Asking_Modul'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 5
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@Asking_UserName'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 7
        Name = '@UserName'
        DataType = ftFixedChar
        ParamType = ptInputOutput
        Size = 20
      end
      item
        Position = 8
        Name = '@Modul'
        DataType = ftFixedChar
        ParamType = ptInputOutput
        Size = 20
      end>
  end
  object dsrcPkgsByInvOwner: TDataSource
    DataSet = sp_PksByInvOwner
    Left = 408
    Top = 72
  end
  object sp_PksByInvOwner: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_PkgsByOwner_Verk'
    Left = 408
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PkgNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@InvOwner'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@UserCompanyLoggedOn'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PksByInvOwner_II: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_PkgsByInventory_II'
    Left = 528
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PkgNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsrcPkgsByInvOwner_II: TDataSource
    DataSet = sp_PksByInvOwner_II
    Left = 528
    Top = 80
  end
  object sp_OneLoad: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_OneLoad'
    Left = 144
    Top = 152
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_OneLoadLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object sp_OneLoadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object sp_OneLoadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
    end
    object sp_OneLoadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
    end
    object sp_OneLoadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sp_OneLoadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sp_OneLoadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
    end
    object sp_OneLoadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
    end
    object sp_OneLoadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
    end
    object sp_OneLoadLoadID: TStringField
      FieldName = 'LoadID'
    end
    object sp_OneLoadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
    end
    object sp_OneLoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sp_OneLoadFS: TStringField
      FieldName = 'FS'
    end
    object sp_OneLoadConfirmed: TIntegerField
      FieldName = 'Confirmed'
    end
    object sp_OneLoadInvoiced: TIntegerField
      FieldName = 'Invoiced'
    end
    object sp_OneLoadNotering: TMemoField
      FieldName = 'Notering'
      Required = True
      BlobType = ftMemo
    end
  end
  object sq_GetInventoryNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT PH.PhysicalInventoryPointNo'
      'FROM'
      'PHYSICALINVENTORYPOINT PH'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND PH.PhyInvPointNameNo = :PhyInvPointNameNo')
    Left = 144
    Top = 208
    ParamData = <
      item
        Name = 'OwnerNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PhyInvPointNameNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetInventoryNoPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
    end
  end
  object sp_pkgLog: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vida_PkgLog'
    Left = 688
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
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end>
    object sp_pkgLogOperation: TIntegerField
      FieldName = 'Operation'
      Origin = 'Operation'
    end
    object sp_pkgLogLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object sp_pkgLogCREATED: TSQLTimeStampField
      FieldName = 'CREATED'
      Origin = 'CREATED'
      Required = True
    end
    object sp_pkgLogOPERATION_1: TStringField
      FieldName = 'OPERATION_1'
      Origin = 'OPERATION'
      ReadOnly = True
      Size = 21
    end
    object sp_pkgLogREG_POINT: TStringField
      FieldName = 'REG_POINT'
      Origin = 'REG_POINT'
      FixedChar = True
      Size = 30
    end
    object sp_pkgLogUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'USERID'
      Required = True
    end
    object sp_pkgLogINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Origin = 'INVENTORY'
      Size = 50
    end
    object sp_pkgLogOWNER: TStringField
      FieldName = 'OWNER'
      Origin = 'OWNER'
      Size = 80
    end
    object sp_pkgLogPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 150
    end
    object sp_pkgLogPCSPERLENGTH: TStringField
      FieldName = 'PCS PER LENGTH'
      Origin = '[PCS PER LENGTH]'
      Size = 255
    end
    object sp_pkgLogAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sp_pkgLogPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
    end
    object sp_pkgLogPKGTYPENO: TIntegerField
      FieldName = 'PKGTYPENO'
      Origin = 'PKGTYPENO'
    end
    object sp_pkgLogPKGTYPECREATED: TSQLTimeStampField
      FieldName = 'PKGTYPECREATED'
      Origin = 'PKGTYPECREATED'
    end
  end
  object ds_pkgLog: TDataSource
    DataSet = sp_pkgLog
    Left = 688
    Top = 384
  end
  object sq_Grade: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.Grade G'
      
        'Left Outer Join dbo.MainGrade MG ON MG.MainGradeNo = G.MainGrade' +
        'No')
    Left = 24
    Top = 320
    object sq_GradeGradeNo: TIntegerField
      FieldName = 'GradeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_GradeGradeName: TStringField
      FieldName = 'GradeName'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_GradeLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_GradeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_GradeCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_GradeModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_GradeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_GradeMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_GradeMainGradeName: TStringField
      FieldName = 'MainGradeName'
      ProviderFlags = []
      Size = 30
    end
  end
  object ds_Grade: TDataSource
    DataSet = sq_Grade
    Left = 24
    Top = 384
  end
  object sp_PksByInventoryPlace: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_PkgsByInventoryPlace'
    Left = 704
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PkgNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@InvOwner'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@InventoryPlaceNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_PksByInventoryPlace: TDataSource
    DataSet = sp_PksByInventoryPlace
    Left = 704
    Top = 80
  end
  object sq_Grade_SV: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * From  dbo.Grade_SV G'
      ''
      'Order by GradeName')
    Left = 96
    Top = 320
  end
  object ds_Grade_SV: TDataSource
    DataSet = sq_Grade_SV
    Left = 96
    Top = 384
  end
  object ds_Species_SV: TDataSource
    DataSet = sq_Species_SV
    Left = 184
    Top = 384
  end
  object sq_Species_SV: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * From  dbo.Species S'
      'WHERE S.LanguageCode = 1'
      'Order by S.SpeciesName')
    Left = 184
    Top = 320
  end
  object sq_Surfacing_SV: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * From  dbo.Surfacing S'
      'WHERE S.LanguageCode = 1'
      'Order by S.SurfacingName')
    Left = 272
    Top = 320
  end
  object ds_Surfacing_SV: TDataSource
    DataSet = sq_Surfacing_SV
    Left = 272
    Top = 384
  end
  object sq_PkgTypeInfo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.PkgTypeInfo'
      'WHERE PackageTypeNo = :PackageTypeNo')
    Left = 248
    Top = 256
    ParamData = <
      item
        Name = 'PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_PkgTypeInfoPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object sq_PkgTypeInfoGRADESTAMP: TStringField
      FieldName = 'GRADESTAMP'
    end
    object sq_PkgTypeInfoBARCODE: TStringField
      FieldName = 'BARCODE'
    end
    object sq_PkgTypeInfoPKTKOD: TStringField
      FieldName = 'PKTKOD'
    end
    object sq_PkgTypeInfoPRODUKT: TStringField
      FieldName = 'PRODUKT'
      Size = 138
    end
    object sq_PkgTypeInfoSTYCKETAL: TIntegerField
      FieldName = 'STYCKETAL'
    end
    object sq_PkgTypeInfoLANGD: TStringField
      FieldName = 'LANGD'
      Size = 255
    end
  end
  object sp_DelUserResPkgs: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_Del_UserResPkgs'
    Left = 48
    Top = 256
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetPkgPos: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'select C.ClientCode, C.PktNrLevKod, C.PaketNoPos, C.PaketNoLengt' +
        'h,'
      'C.SupplierCodePos, C.SupplierCodeLength'
      'FROM dbo.client C'
      ''
      'Where C.ClientNo = :ClientNo')
    Left = 144
    Top = 256
    ParamData = <
      item
        Name = 'ClientNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPkgPosPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Size = 5
    end
    object sq_GetPkgPosPaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
    end
    object sq_GetPkgPosPaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
    end
    object sq_GetPkgPosSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
    end
    object sq_GetPkgPosSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
    end
    object sq_GetPkgPosClientCode: TStringField
      FieldName = 'ClientCode'
      FixedChar = True
      Size = 3
    end
  end
  object sp_PkgsByInventering: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_PkgsByInventering'
    Left = 656
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PkgNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@IC_GrpNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_PkgsByInventering: TDataSource
    DataSet = sp_PkgsByInventering
    Left = 656
    Top = 232
  end
  object sp_lencolpcspkgtypeno: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_lencolpcspkgtypeno'
    Left = 840
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SearchPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PopONELengthSpec: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_PopONELengthSpec'
    Left = 840
    Top = 64
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Size = 4
      end
      item
        Name = 'PkgTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PkgInfo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_OnePackage_Info'
    Left = 848
    Top = 320
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
      end>
    object sp_PkgInfoCREATED: TSQLTimeStampField
      FieldName = 'CREATED'
      Required = True
    end
    object sp_PkgInfoCREATED_BY: TStringField
      FieldName = 'CREATED_BY'
      Required = True
    end
    object sp_PkgInfoOWNER: TStringField
      FieldName = 'OWNER'
      Required = True
      Size = 80
    end
    object sp_PkgInfoPKG_STATUS: TIntegerField
      FieldName = 'PKG_STATUS'
      Required = True
    end
    object sp_PkgInfoINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Required = True
      Size = 50
    end
  end
  object sp_PkgInInven: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_PkgsNotInInven'
    Left = 760
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PkgNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@IC_GrpNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_PkgInInven: TDataSource
    DataSet = sp_PkgInInven
    Left = 760
    Top = 240
  end
  object sq_Language: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.Language')
    Left = 952
    Top = 16
    object sq_LanguageLanguageNo: TIntegerField
      FieldName = 'LanguageNo'
    end
    object sq_LanguageLanguageName: TStringField
      FieldName = 'LanguageName'
    end
    object sq_LanguageSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
    object sq_LanguageDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_LanguageCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_LanguageModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object ds_Language: TDataSource
    DataSet = sq_Language
    Left = 952
    Top = 72
  end
  object qryExec: TFDQuery
    Connection = dmsConnector.FDConnection1
    Left = 848
    Top = 128
  end
  object sqBarCode: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select bc.*,'
      'CASE WHEN bc.BarCodeID is null then'
      'bc.Barcode'
      'ELSE'
      'bc.BarCodeID+'#39' - '#39'+bc.BarCode'
      'END AS BarcodeCodeName'
      'FROM dbo.BarCode bc')
    Left = 136
    Top = 8
    object sqBarCodeBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqBarCodeBarCode: TStringField
      DisplayLabel = 'BARCODE'
      FieldName = 'BarCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object sqBarCodeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sqBarCodeCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sqBarCodeModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sqBarCodeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sqBarCodeBarCodeID: TStringField
      FieldName = 'BarCodeID'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqBarCodeAct: TIntegerField
      DisplayLabel = 'AKTIV'
      FieldName = 'Act'
      ProviderFlags = [pfInUpdate]
    end
    object sqBarCodeBarcodeCodeName: TStringField
      FieldName = 'BarcodeCodeName'
      ProviderFlags = []
      FixedChar = True
      Size = 25
    end
  end
  object sqGradeStamp: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select GS.*,'
      'CASE WHEN gs.GradeStampID is null then'
      'GS.GradeStamp'
      'ELSE'
      'GS.GradeStampID+'#39' - '#39'+GS.GradeStamp'
      'END AS GradeStampCodeName'
      ''
      'FROM dbo.GradeStamp GS')
    Left = 224
    Top = 8
    object sqGradeStampGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqGradeStampGradeStamp: TStringField
      FieldName = 'GradeStamp'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object sqGradeStampSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sqGradeStampCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sqGradeStampModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sqGradeStampDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sqGradeStampGradeStampID: TStringField
      FieldName = 'GradeStampID'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqGradeStampAct: TIntegerField
      FieldName = 'Act'
      ProviderFlags = [pfInUpdate]
    end
    object sqGradeStampGradeStampCodeName: TStringField
      FieldName = 'GradeStampCodeName'
      ProviderFlags = []
      FixedChar = True
      Size = 25
    end
  end
  object sqPaperWrap: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.WrapType')
    Left = 320
    Top = 8
    object sqPaperWrapWrapTypeNo: TIntegerField
      FieldName = 'WrapTypeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqPaperWrapWrapType: TStringField
      FieldName = 'WrapType'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 15
    end
    object sqPaperWrapSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sqPaperWrapCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sqPaperWrapModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sqPaperWrapDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
  end
  object mtMarkedCodes: TkbmMemTable
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
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterInsert = mtMarkedCodesAfterInsert
    Left = 250
    Top = 160
    object mtMarkedCodesPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
    end
    object mtMarkedCodesProduktionsinstruktion: TStringField
      FieldName = 'Produktionsinstruktion'
      Size = 255
    end
    object mtMarkedCodesPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object mtMarkedCodessspNo: TIntegerField
      FieldName = 'sspNo'
    end
    object mtMarkedCodesNoOfUnits: TFloatField
      FieldName = 'NoOfUnits'
    end
    object mtMarkedCodesVolUnitNo: TIntegerField
      FieldName = 'VolUnitNo'
    end
    object mtMarkedCodesProducerNo: TIntegerField
      FieldName = 'ProducerNo'
    end
    object mtMarkedCodesMainProduct: TIntegerField
      FieldName = 'MainProduct'
    end
    object mtMarkedCodesProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtMarkedCodesProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtMarkedCodesProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object mtMarkedCodesKortaKoden: TStringField
      FieldName = 'KortaKoden'
      Size = 40
    end
    object mtMarkedCodesPPP: TIntegerField
      FieldName = 'PPP'
    end
    object mtMarkedCodesMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
  end
  object dsMarkedCodes: TDataSource
    DataSet = mtMarkedCodes
    Left = 250
    Top = 208
  end
  object sq_PkgTypes: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.PktTypeByPP')
    Left = 560
    Top = 176
  end
  object sq_GetPkgTypeByCode: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select p.ProductGroupNo, p.ProductNo, '
      'pt.PackageTypeNo, '
      'ptd.ProductLengthNo,'
      'pt.BarCodeID,'
      'pt.GradeStamp,'
      'pt.PackageHeight,'
      'pt.PackageWidth,'
      'pt.MiniBundled,'
      'pt.WrapType,'
      'pt.ShrinkWrap,'
      'pt.TotalNoOfPieces,'
      'pc.PkgCodePPNo'
      ''
      ' FROM '
      'dbo.PkgVarCode pc'
      
        'Inner Join dbo.PackageType pt on pc.PackageTypeNo = pt.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeDetail ptd on pc.PackageTypeNo = ptd.P' +
        'ackageTypeNo'
      'Inner Join dbo.Product p on p.productno = pt.productno'
      'WHERE pc.PackageCodeNo = :PackageCode')
    Left = 214
    Top = 448
    ParamData = <
      item
        Name = 'PackageCode'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetPkgTypeByCodeProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object sq_GetPkgTypeByCodeProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object sq_GetPkgTypeByCodePackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object sq_GetPkgTypeByCodeProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object sq_GetPkgTypeByCodeBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
    end
    object sq_GetPkgTypeByCodeGradeStamp: TIntegerField
      FieldName = 'GradeStamp'
    end
    object sq_GetPkgTypeByCodePackageHeight: TIntegerField
      FieldName = 'PackageHeight'
    end
    object sq_GetPkgTypeByCodePackageWidth: TIntegerField
      FieldName = 'PackageWidth'
    end
    object sq_GetPkgTypeByCodeMiniBundled: TIntegerField
      FieldName = 'MiniBundled'
    end
    object sq_GetPkgTypeByCodeWrapType: TIntegerField
      FieldName = 'WrapType'
    end
    object sq_GetPkgTypeByCodeShrinkWrap: TIntegerField
      FieldName = 'ShrinkWrap'
    end
    object sq_GetPkgTypeByCodeTotalNoOfPieces: TIntegerField
      FieldName = 'TotalNoOfPieces'
    end
    object sq_GetPkgTypeByCodePkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
    end
  end
  object cds_ProductLength: TFDQuery
    AfterInsert = cds_ProductLengthAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ProductLength where ProductLengthNo = -1'
      '')
    Left = 592
    Top = 376
    object cds_ProductLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ProductLengthActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 15
    end
    object cds_ProductLengthCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthAct: TIntegerField
      FieldName = 'Act'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_GridSettings: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.GridSettings'
      'WHERE ViewName = :ViewName'
      'AND UserID = :UserID')
    Left = 848
    Top = 176
    ParamData = <
      item
        Name = 'ViewName'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GridSettingsViewName: TStringField
      FieldName = 'ViewName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object sq_GridSettingsSets: TBlobField
      FieldName = 'Sets'
      ProviderFlags = [pfInUpdate]
    end
    object sq_GridSettingsUserID: TIntegerField
      FieldName = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_GridSettingsName: TStringField
      FieldName = 'Name'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_GridSettingsForm: TStringField
      FieldName = 'Form'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object cds_PkgLogII: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vida_PkgLogII'
    Left = 768
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
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end>
    object cds_PkgLogIIOperationNo: TIntegerField
      FieldName = 'OperationNo'
      Origin = 'OperationNo'
    end
    object cds_PkgLogIILIPNO: TIntegerField
      FieldName = 'LIPNO'
      Origin = 'LIPNO'
    end
    object cds_PkgLogIIDB_Bokförd: TSQLTimeStampField
      FieldName = 'DB_Bokf'#246'rd'
      Origin = '[DB_Bokf'#246'rd]'
      Required = True
    end
    object cds_PkgLogIIOperation: TStringField
      FieldName = 'Operation'
      Origin = 'Operation'
      ReadOnly = True
      Size = 21
    end
    object cds_PkgLogIIMätpunkt: TStringField
      FieldName = 'M'#228'tpunkt'
      Origin = '[M'#228'tpunkt]'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object cds_PkgLogIIAnvändare: TStringField
      FieldName = 'Anv'#228'ndare'
      Origin = '[Anv'#228'ndare]'
      Required = True
    end
    object cds_PkgLogIILager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ReadOnly = True
      Size = 101
    end
    object cds_PkgLogIIÄgare: TStringField
      FieldName = #196'gare'
      Origin = '['#196'gare]'
      Size = 80
    end
    object cds_PkgLogIIProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 150
    end
    object cds_PkgLogIIAntalperlängd: TStringField
      FieldName = 'Antal per l'#228'ngd'
      Origin = '[Antal per l'#228'ngd]'
      Size = 255
    end
    object cds_PkgLogIIAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object cds_PkgLogIIStyck: TIntegerField
      FieldName = 'Styck'
      Origin = 'Styck'
    end
    object cds_PkgLogIIPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cds_PkgLogIIPktTypSkapad: TSQLTimeStampField
      FieldName = 'PktTypSkapad'
      Origin = 'PktTypSkapad'
    end
    object cds_PkgLogIIRegistrerad: TSQLTimeStampField
      FieldName = 'Registrerad'
      Origin = 'Registrerad'
      Required = True
    end
  end
  object ds_PkgLogII: TDataSource
    DataSet = cds_PkgLogII
    Left = 768
    Top = 376
  end
  object sq_dbProps: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.dbProps')
    Left = 112
    Top = 448
    object sq_dbPropsHostName: TStringField
      FieldName = 'HostName'
      Size = 50
    end
    object sq_dbPropsDatabas: TStringField
      FieldName = 'Databas'
      Size = 50
    end
    object sq_dbPropsUserName: TStringField
      FieldName = 'UserName'
      Size = 50
    end
    object sq_dbPropsPassword: TStringField
      FieldName = 'Password'
      Size = 50
    end
    object sq_dbPropsCRPath: TStringField
      FieldName = 'CRPath'
      Size = 255
    end
    object sq_dbPropsLangPath: TStringField
      FieldName = 'LangPath'
      Origin = 'LangPath'
      Size = 255
    end
    object sq_dbPropsFastPath: TStringField
      FieldName = 'FastPath'
      Origin = 'FastPath'
      Size = 255
    end
  end
  object sp_NonActivePkgs: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_nonactpkgs'
    Left = 480
    Top = 312
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PkgNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@InvOwner'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@InventoryPlaceNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_NonActivePkgs: TDataSource
    DataSet = sp_NonActivePkgs
    Left = 480
    Top = 376
  end
  object sq_Props: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.userDir'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 424
    Top = 160
    ParamData = <
      item
        Name = 'UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'Form'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_PropsUserID: TIntegerField
      FieldName = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PropsForm: TStringField
      FieldName = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object sq_PropsImportDir: TStringField
      FieldName = 'ImportDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sq_PropsExportDir: TStringField
      FieldName = 'ExportDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sq_PropsDeliveryMessageWood_XSD: TStringField
      FieldName = 'DeliveryMessageWood_XSD'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sq_PropsMyEmailAddress: TStringField
      FieldName = 'MyEmailAddress'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sq_PropsExcelDir: TStringField
      FieldName = 'ExcelDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sq_PropsUserDir: TStringField
      FieldName = 'UserDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sq_PropsLODir: TStringField
      FieldName = 'LODir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sq_PropsLastUsedLOTemplate: TStringField
      FieldName = 'LastUsedLOTemplate'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_PropsLastUsedFragaAvropTemplate: TStringField
      FieldName = 'LastUsedFragaAvropTemplate'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_PropsWoodXDir: TStringField
      FieldName = 'WoodXDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
  end
  object sq_GetRegPointNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT RegPointNo'
      'FROM dbo.RegistrationPoint'
      'WHERE RegPointName = :RegPointName')
    Left = 16
    Top = 449
    ParamData = <
      item
        Name = 'RegPointName'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetRegPointNoRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
  end
  object sq_GridSets: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.GridSettings'
      'WHERE ViewName = :ViewName'
      'AND UserID = :UserID'
      'AND Form = :Form'
      'AND Name = :Name')
    Left = 344
    Top = 160
    ParamData = <
      item
        Name = 'ViewName'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'Form'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'Name'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GridSetsViewName: TStringField
      FieldName = 'ViewName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object sq_GridSetsUserID: TIntegerField
      FieldName = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_GridSetsSets: TBlobField
      FieldName = 'Sets'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sp_prefixForChanged: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_GetPrefixToChangeInInventering'
    Left = 376
    Top = 320
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PkgNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@IC_GrpNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_prefixForChanged: TDataSource
    DataSet = sp_prefixForChanged
    Left = 376
    Top = 376
  end
  object cds_AccInvParam: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select accp.*, C.ClientName FROM dbo.AccInvParam accp'
      'Inner Join dbo.Client C on C.ClientNo = accp.ClientNo')
    Left = 944
    Top = 328
    object cds_AccInvParamClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_AccInvParamYearNo: TIntegerField
      FieldName = 'YearNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_AccInvParamWeekNo: TIntegerField
      FieldName = 'WeekNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_AccInvParamClientName: TStringField
      DisplayLabel = 'Verk'
      FieldName = 'ClientName'
      ProviderFlags = []
      Size = 80
    end
    object cds_AccInvParamIngoingInv: TBCDField
      FieldName = 'IngoingInv'
      Precision = 18
      Size = 3
    end
    object cds_AccInvParamTrimFactor: TBCDField
      FieldName = 'TrimFactor'
      Origin = 'TrimFactor'
      Precision = 18
      Size = 3
    end
  end
  object cds_AccInv: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.AccInv'
      'WHERE ClientNo = :ClientNo'
      'Order By YearNo, WeekNo')
    Left = 1032
    Top = 328
    ParamData = <
      item
        Name = 'ClientNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_AccInvClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_AccInvClientName: TStringField
      FieldName = 'ClientName'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_AccInvYearNo: TIntegerField
      FieldName = 'YearNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_AccInvWeekNo: TIntegerField
      FieldName = 'WeekNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_AccInvSawProd: TBCDField
      FieldName = 'SawProd'
      Origin = 'SawProd'
      Precision = 18
      Size = 3
    end
    object cds_AccInvIntInDel: TBCDField
      FieldName = 'IntInDel'
      Origin = 'IntInDel'
      Precision = 18
      Size = 3
    end
    object cds_AccInvExtInDel: TBCDField
      FieldName = 'ExtInDel'
      Origin = 'ExtInDel'
      Precision = 18
      Size = 3
    end
    object cds_AccInvExtUtlev: TBCDField
      FieldName = 'ExtUtlev'
      Origin = 'ExtUtlev'
      Precision = 18
      Size = 3
    end
    object cds_AccInvInvoicedCust: TBCDField
      FieldName = 'InvoicedCust'
      Origin = 'InvoicedCust'
      Precision = 18
      Size = 3
    end
    object cds_AccInvInvChange: TBCDField
      FieldName = 'InvChange'
      Origin = 'InvChange'
      Precision = 18
      Size = 3
    end
    object cds_AccInvTotalInv: TBCDField
      FieldName = 'TotalInv'
      Origin = 'TotalInv'
      Precision = 18
      Size = 3
    end
    object cds_AccInvTotalInvChangeMill: TBCDField
      FieldName = 'TotalInvChangeMill'
      Origin = 'TotalInvChangeMill'
      Precision = 18
      Size = 3
    end
    object cds_AccInvTotalInvMill: TBCDField
      FieldName = 'TotalInvMill'
      Origin = 'TotalInvMill'
      Precision = 18
      Size = 3
    end
    object cds_AccInvVW: TIntegerField
      FieldName = 'VW'
      Origin = 'VW'
    end
  end
  object ds_AccInvParam: TDataSource
    DataSet = cds_AccInvParam
    Left = 944
    Top = 376
  end
  object ds_AccInv: TDataSource
    DataSet = cds_AccInv
    Left = 1032
    Top = 376
  end
  object sq_AccStart: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.AccStart')
    Left = 936
    Top = 168
    object sq_AccStartYearNo: TIntegerField
      FieldName = 'YearNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_AccStartWeekNo: TIntegerField
      FieldName = 'WeekNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object ds_AccStart: TDataSource
    DataSet = sq_AccStart
    Left = 1032
    Top = 264
  end
  object sq_LastInvDate: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Top 1 icg.MaxDatum, '
      'icg.Inventeringsdatum, '
      'icg.IC_grpno,'
      'icg.Status'
      'FROM dbo.InvControlGrp icg'
      'Inner Join dbo.InvCtrlMetod icm on icm.IC_grpno = icg.IC_grpno'
      'Where icm.LogicalInventoryPointNo = :LIPNo'
      ''
      'Order By icg.MaxDatum desc')
    Left = 264
    Top = 520
    ParamData = <
      item
        Name = 'LIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LastInvDateInventeringsdatum: TSQLTimeStampField
      FieldName = 'Inventeringsdatum'
    end
    object sq_LastInvDateIC_grpno: TIntegerField
      FieldName = 'IC_grpno'
    end
    object sq_LastInvDateMaxDatum: TSQLTimeStampField
      FieldName = 'MaxDatum'
    end
    object sq_LastInvDateStatus: TIntegerField
      FieldName = 'Status'
    end
  end
  object sq_GridSets2: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.GridSettings'
      'WHERE ViewName = :ViewName'
      'AND UserID = :UserID')
    Left = 336
    Top = 448
    ParamData = <
      item
        Name = 'ViewName'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GridSets2ViewName: TStringField
      FieldName = 'ViewName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object sq_GridSets2UserID: TIntegerField
      FieldName = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_GridSets2Sets: TBlobField
      FieldName = 'Sets'
      ProviderFlags = [pfInUpdate]
    end
    object sq_GridSets2Name: TStringField
      FieldName = 'Name'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_GridSets2Form: TStringField
      FieldName = 'Form'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object sq_LayoutNames: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Name FROM dbo.GridSettings'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 480
    Top = 504
    ParamData = <
      item
        Name = 'UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'Form'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_LayoutNamesName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object sq_DeleteLayout: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.GridSettings'
      'WHERE UserID = :UserID'
      'AND Form = :Form'
      'AND Name = :Name'
      'AND ViewName = :ViewName')
    Left = 480
    Top = 560
    ParamData = <
      item
        Name = 'UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'Form'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'Name'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'ViewName'
        DataType = ftString
        ParamType = ptInput
      end>
    object StringField1: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object mtMarkedProd: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexName = 'mtMarkedProdIndex1'
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
    Left = 680
    Top = 552
    object mtMarkedProdProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtMarkedProdProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object mtMarkedProdTab: TIntegerField
      FieldName = 'Tab'
    end
    object mtMarkedProdProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtMarkedProdNT: TFloatField
      FieldName = 'NT'
    end
    object mtMarkedProdNB: TFloatField
      FieldName = 'NB'
    end
    object mtMarkedProdPRODUKTDESC: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKTDESC'
      Size = 100
    end
    object mtMarkedProdLengthDesc: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthDesc'
      Size = 100
    end
    object mtMarkedProdNL: TFloatField
      FieldName = 'NL'
    end
    object mtMarkedProdRowNr: TIntegerField
      FieldName = 'RowNr'
    end
    object mtMarkedProdAT: TFloatField
      FieldName = 'AT'
    end
    object mtMarkedProdAW: TFloatField
      FieldName = 'AW'
    end
    object mtMarkedProdSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtMarkedProdNIT: TFloatField
      FieldName = 'NIT'
    end
    object mtMarkedProdNIW: TFloatField
      FieldName = 'NIW'
    end
    object mtMarkedProdSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
    object mtMarkedProdALMM: TFloatField
      FieldName = 'ALMM'
    end
  end
  object sp_NonActivePkgEXT: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_getnonactpkgs_Ext'
    Left = 680
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
        Name = '@PkgNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Prefix'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end>
  end
  object ds_NonActivePkgsExt: TDataSource
    DataSet = sp_NonActivePkgEXT
    Left = 680
    Top = 488
  end
  object cds_ProdLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct LRR.NomLength'
      'FROM dbo.LengthRuleRow LRR'
      
        'Inner Join dbo.LengthRuleGrp LRG ON LRG.LengthRuleNo = LRR.Lengt' +
        'hRuleNo'
      'WHERE'
      'LRG.ClientNo = 741'
      'AND LRG.MinNTmm <= :MinNTmm'
      'AND LRG.MaxNTmm >= :MaxNTmm'
      'AND ((LRG.SurfacingNo = :SurfacingNo)'
      'or ((LRG.SurfacingNo = 0)'
      
        'AND (:SurfacingNo not in (Select LRG2.SurfacingNo from dbo.Lengt' +
        'hRuleGrp LRG2'
      
        'Inner Join dbo.LengthRuleRow LRR2 ON LRR2.LengthRuleNo = LRG2.Le' +
        'ngthRuleNo'
      'WHERE'
      'LRG2.MinNTmm <= :MinNTmm'
      'AND LRG2.MaxNTmm >= :MaxNTmm )) ))'
      'AND LRR.MinActLength <= :ALMM'
      'AND LRR.MaxActLength >= :ALMM'
      '')
    Left = 480
    Top = 448
    ParamData = <
      item
        Name = 'MINNTMM'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'MAXNTMM'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'SURFACINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ALMM'
        DataType = ftFloat
        ParamType = ptInput
      end>
    object cds_ProdLengthNomLength: TFloatField
      FieldName = 'NomLength'
      Origin = 'NomLength'
    end
  end
  object sp_PkgInfoII: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vis_PkgInfo'
    Left = 944
    Top = 440
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
      end>
    object sp_PkgInfoIIPKG_CREATED_BY: TStringField
      FieldName = 'PKG_CREATED_BY'
      Origin = 'PKG_CREATED_BY'
      ReadOnly = True
      Required = True
    end
    object sp_PkgInfoIIPKG_NO: TIntegerField
      FieldName = 'PKG_NO'
      Origin = 'PKG_NO'
      Required = True
    end
    object sp_PkgInfoIIPKG_CREATED: TSQLTimeStampField
      FieldName = 'PKG_CREATED'
      Origin = 'PKG_CREATED'
    end
    object sp_PkgInfoIISUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sp_PkgInfoIIPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 150
    end
    object sp_PkgInfoIIINVENTORY_OWNER: TStringField
      FieldName = 'INVENTORY_OWNER'
      Origin = 'INVENTORY_OWNER'
      Size = 80
    end
    object sp_PkgInfoIIPRODUCER: TStringField
      FieldName = 'PRODUCER'
      Origin = 'PRODUCER'
      Size = 80
    end
    object sp_PkgInfoIIINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Origin = 'INVENTORY'
      Size = 50
    end
    object sp_PkgInfoIIINVENTORY_GROUP: TStringField
      FieldName = 'INVENTORY_GROUP'
      Origin = 'INVENTORY_GROUP'
      Size = 50
    end
    object sp_PkgInfoIIPKG_STATUS: TStringField
      FieldName = 'PKG_STATUS'
      Origin = 'PKG_STATUS'
      ReadOnly = True
      Size = 17
    end
    object sp_PkgInfoIIBARCODE: TStringField
      FieldName = 'BARCODE'
      Origin = 'BARCODE'
      FixedChar = True
    end
    object sp_PkgInfoIIGRADESTAMP: TStringField
      FieldName = 'GRADESTAMP'
      Origin = 'GRADESTAMP'
      FixedChar = True
    end
    object sp_PkgInfoIIPKG_HEIGHT: TIntegerField
      FieldName = 'PKG_HEIGHT'
      Origin = 'PKG_HEIGHT'
    end
    object sp_PkgInfoIIPKG_WIDTH: TIntegerField
      FieldName = 'PKG_WIDTH'
      Origin = 'PKG_WIDTH'
    end
    object sp_PkgInfoIIMINI_BUNDLED: TStringField
      FieldName = 'MINI_BUNDLED'
      Origin = 'MINI_BUNDLED'
      ReadOnly = True
      Size = 3
    end
    object sp_PkgInfoIISTICKS: TStringField
      FieldName = 'STICKS'
      Origin = 'STICKS'
      ReadOnly = True
      Size = 3
    end
    object sp_PkgInfoIIWRAP: TStringField
      FieldName = 'WRAP'
      Origin = 'WRAP'
      FixedChar = True
      Size = 15
    end
    object sp_PkgInfoIISHRINK_WRAP: TStringField
      FieldName = 'SHRINK_WRAP'
      Origin = 'SHRINK_WRAP'
      ReadOnly = True
      Size = 3
    end
    object sp_PkgInfoIIM3_ACT: TFloatField
      FieldName = 'M3_ACT'
      Origin = 'M3_ACT'
    end
    object sp_PkgInfoIIM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
    end
    object sp_PkgInfoIIPIECES: TIntegerField
      FieldName = 'PIECES'
      Origin = 'PIECES'
    end
    object sp_PkgInfoIIMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
    end
    object sp_PkgInfoIIACT_LINEAL_METER: TFloatField
      FieldName = 'ACT_LINEAL_METER'
      Origin = 'ACT_LINEAL_METER'
    end
    object sp_PkgInfoIINOM_LINEAL_METER: TFloatField
      FieldName = 'NOM_LINEAL_METER'
      Origin = 'NOM_LINEAL_METER'
    end
    object sp_PkgInfoIIM2: TFloatField
      FieldName = 'M2'
      Origin = 'M2'
    end
    object sp_PkgInfoIIPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
      Required = True
    end
    object sp_PkgInfoIIKORTAKODEN: TStringField
      FieldName = 'KORTAKODEN'
      Origin = 'KORTAKODEN'
      FixedChar = True
      Size = 40
    end
    object sp_PkgInfoIILANGAKODEN: TStringField
      FieldName = 'LANGAKODEN'
      Origin = 'LANGAKODEN'
      Size = 50
    end
  end
  object ds_PkgInfoII: TDataSource
    DataSet = sp_PkgInfoII
    Left = 944
    Top = 496
  end
  object sp_LoadPkgInfo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vis_LoadPkgInfo'
    Left = 1040
    Top = 432
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
      end>
    object sp_LoadPkgInfoLOAD_CUSTOMER: TStringField
      FieldName = 'LOAD_CUSTOMER'
      Origin = 'LOAD_CUSTOMER'
      Size = 80
    end
    object sp_LoadPkgInfoLOAD_SUPPLIER: TStringField
      FieldName = 'LOAD_SUPPLIER'
      Origin = 'LOAD_SUPPLIER'
      Size = 80
    end
    object sp_LoadPkgInfoLOAD_DATE: TSQLTimeStampField
      FieldName = 'LOAD_DATE'
      Origin = 'LOAD_DATE'
    end
    object sp_LoadPkgInfoLOAD_NO: TIntegerField
      FieldName = 'LOAD_NO'
      Origin = 'LOAD_NO'
      Required = True
    end
    object sp_LoadPkgInfoLO_NUMBER: TIntegerField
      FieldName = 'LO_NUMBER'
      Origin = 'LO_NUMBER'
      Required = True
    end
    object sp_LoadPkgInfoFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object sp_LoadPkgInfoLOAD_CREATED_BY: TStringField
      FieldName = 'LOAD_CREATED_BY'
      Origin = 'LOAD_CREATED_BY'
      ReadOnly = True
      Required = True
    end
    object sp_LoadPkgInfoLOAD_STATUS: TStringField
      FieldName = 'LOAD_STATUS'
      Origin = 'LOAD_STATUS'
      ReadOnly = True
      Size = 10
    end
    object sp_LoadPkgInfoINVOICE_NO: TIntegerField
      FieldName = 'INVOICE_NO'
      Origin = 'INVOICE_NO'
    end
    object sp_LoadPkgInfoINV_CREATED_BY: TStringField
      FieldName = 'INV_CREATED_BY'
      Origin = 'INV_CREATED_BY'
      ReadOnly = True
      Required = True
    end
    object sp_LoadPkgInfoINVOICE_DATE: TSQLTimeStampField
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object sp_LoadPkgInfoINT_INVOICE_NO: TIntegerField
      FieldName = 'INT_INVOICE_NO'
      Origin = 'INT_INVOICE_NO'
    end
    object sp_LoadPkgInfoINVOICETYPE: TStringField
      FieldName = 'INVOICETYPE'
      Origin = 'INVOICETYPE'
      ReadOnly = True
      Size = 11
    end
    object sp_LoadPkgInfoDEBIT_CREDIT: TStringField
      FieldName = 'DEBIT_CREDIT'
      Origin = 'DEBIT_CREDIT'
      ReadOnly = True
      Size = 6
    end
    object sp_LoadPkgInfoORDER_NO: TStringField
      FieldName = 'ORDER_NO'
      Origin = 'ORDER_NO'
    end
    object sp_LoadPkgInfoORDER_CUSTOMER: TStringField
      FieldName = 'ORDER_CUSTOMER'
      Origin = 'ORDER_CUSTOMER'
      Size = 80
    end
  end
  object ds_LoadPkgInfo: TDataSource
    DataSet = sp_LoadPkgInfo
    Left = 1040
    Top = 488
  end
  object sp_PcsPerLength: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_GetPiecesPerLengthTEST'
    Left = 792
    Top = 432
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@PicesPerLength'
        DataType = ftString
        ParamType = ptInputOutput
        Size = 8000
      end
      item
        Position = 4
        Name = '@NomPicesPerLength'
        DataType = ftString
        ParamType = ptInputOutput
        Size = 8000
      end>
  end
  object DataSource1: TDataSource
    DataSet = sp_LoadPkgInfo
    Left = 800
    Top = 496
  end
  object cds_ShiftLag: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ShiftTeam')
    Left = 112
    Top = 520
    object cds_ShiftLagShiftTeamNo: TIntegerField
      FieldName = 'ShiftTeamNo'
      Origin = 'ShiftTeamNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ShiftLagShiftTeamName: TStringField
      FieldName = 'ShiftTeamName'
      Origin = 'ShiftTeamName'
      Size = 35
    end
    object cds_ShiftLagDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cds_ShiftLagModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ShiftLagClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
  end
  object sp_PkgLoggLinkedPackage: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vida_PkgLog_LinkedPackage'
    Left = 792
    Top = 552
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
      end>
    object sp_PkgLoggLinkedPackageOperationNo: TIntegerField
      FieldName = 'OperationNo'
      Origin = 'OperationNo'
    end
    object sp_PkgLoggLinkedPackageLIPNO: TIntegerField
      FieldName = 'LIPNO'
      Origin = 'LIPNO'
    end
    object sp_PkgLoggLinkedPackageDB_Bokförd: TSQLTimeStampField
      FieldName = 'DB_Bokf'#246'rd'
      Origin = '[DB_Bokf'#246'rd]'
      Required = True
    end
    object sp_PkgLoggLinkedPackageOperation: TStringField
      FieldName = 'Operation'
      Origin = 'Operation'
      ReadOnly = True
      Size = 21
    end
    object sp_PkgLoggLinkedPackageMätpunkt: TStringField
      FieldName = 'M'#228'tpunkt'
      Origin = '[M'#228'tpunkt]'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object sp_PkgLoggLinkedPackageAnvändare: TStringField
      FieldName = 'Anv'#228'ndare'
      Origin = '[Anv'#228'ndare]'
      Required = True
    end
    object sp_PkgLoggLinkedPackageLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ReadOnly = True
      Size = 101
    end
    object sp_PkgLoggLinkedPackageÄgare: TStringField
      FieldName = #196'gare'
      Origin = '['#196'gare]'
      Size = 80
    end
    object sp_PkgLoggLinkedPackageProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 150
    end
    object sp_PkgLoggLinkedPackageAntalperlängd: TStringField
      FieldName = 'Antal per l'#228'ngd'
      Origin = '[Antal per l'#228'ngd]'
      Size = 255
    end
    object sp_PkgLoggLinkedPackageAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sp_PkgLoggLinkedPackageStyck: TIntegerField
      FieldName = 'Styck'
      Origin = 'Styck'
    end
    object sp_PkgLoggLinkedPackagePackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object sp_PkgLoggLinkedPackagePktTypSkapad: TSQLTimeStampField
      FieldName = 'PktTypSkapad'
      Origin = 'PktTypSkapad'
    end
    object sp_PkgLoggLinkedPackageRegistrerad: TSQLTimeStampField
      FieldName = 'Registrerad'
      Origin = 'Registrerad'
      Required = True
    end
  end
  object sp_Vis_PackageRunInfo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vis_PackageRunInfo'
    Left = 792
    Top = 608
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
      end>
    object sp_Vis_PackageRunInfoRunNo: TIntegerField
      FieldName = 'RunNo'
      Origin = 'RunNo'
      Required = True
    end
    object sp_Vis_PackageRunInfoRegPointName: TStringField
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      FixedChar = True
      Size = 30
    end
    object sp_Vis_PackageRunInfoProducer: TStringField
      FieldName = 'Producer'
      Origin = 'Producer'
      Size = 80
    end
    object sp_Vis_PackageRunInfoOperation: TStringField
      FieldName = 'Operation'
      Origin = 'Operation'
      ReadOnly = True
      Required = True
      Size = 5
    end
  end
  object sp_PkgsExistInAvregLogg: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_PkgsExistInAvregLogg'
    Left = 264
    Top = 576
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
        Name = '@Prefix'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 4
        Name = '@OwnerNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_Package_Size: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.PackageSize'
      'WHERE LanguageCode = :LanguageCode'
      'AND Act = 1')
    Left = 944
    Top = 568
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_Package_SizePackageSizeNo: TIntegerField
      FieldName = 'PackageSizeNo'
      Origin = 'PackageSizeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Package_SizePackageSizeName: TStringField
      FieldName = 'PackageSizeName'
      Origin = 'PackageSizeName'
      Size = 50
    end
  end
  object ds_Package_Size: TDataSource
    DataSet = cds_Package_Size
    Left = 944
    Top = 624
  end
  object sp_PksByLIPNo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_PkgsByLIPNo'
    Left = 1056
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PkgNo'
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
  object ds_PksByLIPNo: TDataSource
    DataSet = sp_PksByLIPNo
    Left = 1056
    Top = 64
  end
  object sp_GetAnyPkg: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_getanypkg'
    Left = 584
    Top = 584
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PkgNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_GetAnyPkg: TDataSource
    DataSet = sp_GetAnyPkg
    Left = 584
    Top = 640
  end
  object sp_Lang: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_Lang'
    Left = 1048
    Top = 608
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@UseriD'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@LanguageNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
