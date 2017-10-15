object dmsProduct: TdmsProduct
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 633
  Width = 1102
  object cds_ProductGroupLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select *'
      'FROM'
      'dbo.ProductGroupLengths'
      '')
    Left = 680
    Top = 288
    object cds_ProductGroupLengthProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductGroupLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductGroupLengthCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProductGroupLengthModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProductGroupLengthDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cds_ProdLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ProductLength'
      '')
    Left = 672
    Top = 128
    object cds_ProdLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdLengthActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object cds_ProdLengthNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
      Required = True
    end
    object cds_ProdLengthNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
      Origin = 'NominalLengthFEET'
    end
    object cds_ProdLengthActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Origin = 'ActualLengthINCH'
      FixedChar = True
      Size = 15
    end
    object cds_ProdLengthPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object cds_ProdLengthFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
    end
    object cds_ProdLengthCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProdLengthModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProdLengthDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ProdLengthSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_ProdLengthProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      Origin = 'ProductLengthGroupNo'
    end
    object cds_ProdLengthAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
  end
  object sp_Packages: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_Packages'
    Left = 96
    Top = 352
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
        Name = '@LogInvPtNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@PhysInvPtNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_DelTempPkgs: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.SortingOrderMarkedPkgs'
      'WHERE UserID = :UserID'
      '')
    Left = 96
    Top = 432
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_InsTempPkgs: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Insert into dbo.SortingOrderMarkedPkgs(UserID, '
      'PackageNo, SupplierCode)'
      'Values(:UserID, '
      ':PackageNo, :SupplierCode)'
      '')
    Left = 96
    Top = 488
    ParamData = <
      item
        Name = 'USERID'
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
  object sp_Populate_One_PkgTypeLengths: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_Populate_One_PackageTypeLengths'
    Left = 96
    Top = 288
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
  object sp_PackageTotals: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_PackageTotals'
    Left = 96
    Top = 240
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
  object sp_NewPackageNo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_NewPkgNo_Price_NoPP'
    Left = 96
    Top = 184
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
      end
      item
        Position = 9
        Name = '@CreatedOfPkgStr'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@Price'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end>
  end
  object sp_NewPackageDetail: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_NewPackageDetail'
    Left = 96
    Top = 136
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
        Name = '@ProductLengthNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@NoOfPieces'
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
  object sp_NewPackageType: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_NewPkgType'
    Left = 96
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
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@ProductNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@BarCodeID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@GradeStamp'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@TotalNoOfPieces'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@ProdInstruNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PackageTypes: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_PkgType_II'
    Left = 96
    Top = 24
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
        Name = '@ProductNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@BarCodeID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@GradeStamp'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@TotalPieces'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@PcsPerLength'
        DataType = ftString
        ParamType = ptInput
        Size = 255
      end>
  end
  object sp_VP_IntLO: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_VP_IntLO'
    Left = 240
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
        Name = '@CustomerNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@CreatedUser'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@SalesRegionNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@ShipToInvPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@ShippingPlanNo'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object sp_newLoad_II: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'Vis_newLoad_VP'
    Left = 240
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
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@LONo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@LoadID'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 6
        Name = '@FS'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 7
        Name = '@Utlastad'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object sp_vis_InsPnLog: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_InsPnLog'
    Left = 360
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
        DataType = ftFixedChar
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
        Name = '@RegistrationPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@OLD_PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@ShiftNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@Operation'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
