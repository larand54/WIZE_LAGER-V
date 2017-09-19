object fPickPkgNo: TfPickPkgNo
  Left = 266
  Top = 123
  ActiveControl = lcProduct
  Caption = 'Plocka paketnr'
  ClientHeight = 586
  ClientWidth = 1108
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 121
    Width = 1108
    Height = 406
    Align = alClient
    TabOrder = 0
    ExplicitTop = 73
    ExplicitWidth = 868
    ExplicitHeight = 454
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Cancel.Visible = True
      OnCellClick = cxGrid1DBTableView1CellClick
      DataController.DataSource = ds_SelectedPkgNo
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'PAKETNR;LEVKOD'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGrid1DBTableView1PAKETNR
        end
        item
          Format = '###,###,###.000'
          Kind = skSum
          FieldName = 'AM3'
          Column = cxGrid1DBTableView1AM3
        end
        item
          Kind = skSum
          FieldName = 'STYCK'
          Column = cxGrid1DBTableView1STYCK
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = cxGrid1DBTableView1StylesGetContentStyle
      object cxGrid1DBTableView1MARKERAD: TcxGridDBColumn
        DataBinding.FieldName = 'MARKERAD'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.ReadOnly = False
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 113
      end
      object cxGrid1DBTableView1ColumnAngeAntalPkt: TcxGridDBColumn
        Caption = 'ANGE ANTAL PKT'
        DataBinding.FieldName = 'MARKERAD'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        Width = 138
      end
      object cxGrid1DBTableView1PAKETNR: TcxGridDBColumn
        DataBinding.FieldName = 'PAKETNR'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 89
      end
      object cxGrid1DBTableView1LEVKOD: TcxGridDBColumn
        DataBinding.FieldName = 'LEVKOD'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Width = 79
      end
      object cxGrid1DBTableView1AM3: TcxGridDBColumn
        DataBinding.FieldName = 'AM3'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 87
      end
      object cxGrid1DBTableView1STYCK: TcxGridDBColumn
        DataBinding.FieldName = 'STYCK'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Width = 87
      end
      object cxGrid1DBTableView1REGISTRERAT: TcxGridDBColumn
        Caption = 'REGISTRERAD'
        DataBinding.FieldName = 'REGISTRERAT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 138
      end
      object cxGrid1DBTableView1STYCKPERLNGD: TcxGridDBColumn
        DataBinding.FieldName = 'STYCKPERL'#196'NGD'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Width = 310
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'ProductNo'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1MaxLengtrh: TcxGridDBColumn
        Caption = 'MAXL'#196'NGD'
        DataBinding.FieldName = 'MaxLengtrh'
        Width = 103
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 527
    Width = 1108
    Height = 59
    Align = alBottom
    TabOrder = 1
    ExplicitWidth = 868
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 84
      Height = 13
      Caption = 'Paket markerade:'
    end
    object LabelNoOfPkgsMarked: TLabel
      Left = 96
      Top = 16
      Width = 6
      Height = 13
      Caption = '0'
    end
    object BitBtn1: TBitBtn
      Left = 440
      Top = 6
      Width = 107
      Height = 41
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 568
      Top = 6
      Width = 105
      Height = 41
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1108
    Height = 121
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 1008
    object LabelPIPName: TLabel
      Left = 56
      Top = 16
      Width = 313
      Height = 13
      AutoSize = False
      Caption = 'LabelPIPName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Lager:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 480
      Top = 28
      Width = 40
      Height = 13
      Caption = 'Produkt:'
    end
    object bbMarkAll: TBitBtn
      Left = 18
      Top = 37
      Width = 86
      Height = 36
      Caption = 'Markera alla'
      TabOrder = 0
      OnClick = bbMarkAllClick
    end
    object bbUnMarkAll: TBitBtn
      Left = 114
      Top = 37
      Width = 86
      Height = 36
      Caption = 'Avmarkera alla'
      TabOrder = 1
      OnClick = bbUnMarkAllClick
    end
    object lcProduct: TcxDBLookupComboBox
      Left = 528
      Top = 20
      DataBinding.DataField = 'Product'
      DataBinding.DataSource = dsFilter
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 2
      Width = 425
    end
    object BitBtn3: TBitBtn
      Left = 975
      Top = 14
      Width = 121
      Height = 25
      Caption = 'Uppdatera'
      TabOrder = 3
      Visible = False
      OnClick = BitBtn3Click
    end
    object deProductNo: TcxDBTextEdit
      Left = 816
      Top = 16
      DataBinding.DataField = 'ProductNo'
      DataBinding.DataSource = dsFilter
      TabOrder = 4
      Visible = False
      Width = 121
    end
    object cxbVardaPaket: TcxButton
      Left = 528
      Top = 47
      Width = 545
      Height = 51
      Caption = 
        'L'#228'gg till paket till inventeringen, markera ett paket i gridden ' +
        'nedan som mall'
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxbVardaPaketClick
    end
  end
  object ds_SelectedPkgNo: TDataSource
    DataSet = dmInvCtrl.mtSelectedPkgNo
    OnDataChange = ds_SelectedPkgNoDataChange
    Left = 240
    Top = 104
  end
  object ds_Products: TDataSource
    DataSet = cds_Products
    Left = 344
    Top = 224
  end
  object mtFilter: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 552
    Top = 128
    object mtFilterProductNo: TIntegerField
      FieldName = 'ProductNo'
      OnChange = mtFilterProductNoChange
    end
    object mtFilterProduct: TStringField
      FieldKind = fkLookup
      FieldName = 'Product'
      LookupDataSet = cds_Products
      LookupKeyFields = 'ProductNo'
      LookupResultField = 'ProductDisplayName'
      KeyFields = 'ProductNo'
      Size = 100
      Lookup = True
    end
  end
  object dsFilter: TDataSource
    DataSet = mtFilter
    Left = 552
    Top = 176
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 32
    Top = 120
    PixelsPerInch = 96
    object cxStyleMarkedRow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object sq_GetPkgNo: TFDQuery
    Active = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pn.PackageNo,'
      'pn.SupplierCode AS LEVKOD,'
      'pt.productno,'
      'ptl.PcsPerLength,'
      'pt.Totalm3Actual AS AM3,'
      'pt.TotalNoOfPieces AS STYCK,'
      'pn.DateCreated,'
      '(Select Max(pl.ActualLengthMM) FROM dbo.ProductLength pl'
      
        'Inner Join dbo.PackageTypeDetail ptd on ptd.ProductLengthno = pl' +
        '.ProductLengthno'
      'WHERE'
      'ptd.packagetypeno = pt.packagetypeno) AS ALMM'
      ''
      'From dbo.packagenumber pn'
      'Inner Join dbo.InvControlrow icr on icr.PackageNo = pn.PackageNo'
      #9#9#9'AND icr.SupplierCode = pn.SupplierCode'
      
        'Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.' +
        'packagetypeno'
      'where'
      '-- pn.Status = 1 AND'
      'pt.productno = :ProductNo'
      'AND icr.ic_grpNo = :ic_grpNo'
      'AND icr.LogicalInventoryPointNo = :LIPNo'
      ''
      
        'and pn.PackageNo not in (Select icr_II.PackageNo from dbo.InvCtr' +
        'l_Pkgs ICR_II'
      'Where icr_II.IC_GrpNo = icr.IC_GrpNo'
      'and icr.SupplierCode = pn.SupplierCode)'
      '')
    Left = 72
    Top = 240
    ParamData = <
      item
        Name = 'PRODUCTNO'
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
    object sq_GetPkgNoPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object sq_GetPkgNoLEVKOD: TStringField
      FieldName = 'LEVKOD'
      Origin = 'LEVKOD'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_GetPkgNoPcsPerLength: TStringField
      FieldName = 'PcsPerLength'
      Origin = 'PcsPerLength'
      Size = 255
    end
    object sq_GetPkgNoAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sq_GetPkgNoSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object sq_GetPkgNoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_GetPkgNoproductno: TIntegerField
      FieldName = 'productno'
      Origin = 'productno'
    end
    object sq_GetPkgNoALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ReadOnly = True
    end
  end
  object sq_GetInActive: TFDQuery
    Active = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pn.PackageNo AS PackageNo,'
      'pn.SupplierCode AS LEVKOD,'
      'pt.Productno AS ProductNo,'
      'ptl.PcsPerLength,'
      'pt.Totalm3Actual AS AM3,'
      'pt.TotalNoOfPieces AS STYCK,'
      'pn.DateCreated AS DateCreated,'
      '(Select Max(pl.ActualLengthMM) FROM dbo.ProductLength pl'
      
        'Inner Join dbo.PackageTypeDetail ptd on ptd.ProductLengthno = pl' +
        '.ProductLengthno'
      'WHERE'
      'ptd.packagetypeno = pt.packagetypeno) AS ALMM'
      ''
      'From dbo.packagenumber pn'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = PN.LogicalInventoryPointNo'
      
        'Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.' +
        'packagetypeno'
      'where'
      'pn.Status = 0'
      'AND pt.productno = :ProductNo'
      'AND LIP.PhysicalInventoryPointNo = :PIPNo'
      ''
      
        'AND pn.PackageNo not in (Select pp.PackageNo from dbo.Package_Pr' +
        'oduction pp'
      
        'Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = pp.Produc' +
        'tionUnitNo'
      'where'
      'pp.SupplierCode = pn.SupplierCode'
      'and pp.Operation = 3'
      'and rp.SequenceNo = 1)'
      ''
      
        'and pn.PackageNo not in (Select icr.PackageNo from dbo.InvCtrl_P' +
        'kgs ICR'
      'Where icr.IC_GrpNo =:IC_GrpNo'
      'and icr.SupplierCode = pn.SupplierCode)'
      ''
      
        'and pn.PackageNo not in (Select icl.PackageNo from dbo.InvContro' +
        'lrow ICL'
      'Where icl.IC_GrpNo =:IC_GrpNo'
      'and icl.SupplierCode = pn.SupplierCode)'
      ''
      ''
      
        '-- Group By pt.PackageTypeNo, ptl.PcsPerLength, pt.Totalm3Actual' +
        ', pt.TotalNoOfPieces'
      ' '
      ' '
      '')
    Left = 160
    Top = 240
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetInActivePackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object sq_GetInActiveLEVKOD: TStringField
      FieldName = 'LEVKOD'
      Origin = 'LEVKOD'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_GetInActivePcsPerLength: TStringField
      FieldName = 'PcsPerLength'
      Origin = 'PcsPerLength'
      Size = 255
    end
    object sq_GetInActiveAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sq_GetInActiveSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object sq_GetInActiveDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_GetInActiveProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object sq_GetInActiveALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ReadOnly = True
    end
  end
  object sq_GetAllProducts: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct pd.ProductDisplayName, pd.ProductNo,'
      'pd.ActualThicknessMM, pd.ActualWidthMM, pd.GradeName,'
      'pd.SpeciesName, pd.SurfacingName'
      'From dbo.PackageNumber icr'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = icr.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = icr.PackageT' +
        'ypeNo'
      'Inner Join dbo.ProductList_LM pd on pd.ProductNo = pt.ProductNo'
      'WHERE icr.Status = 0'
      'AND LIP.PhysicalInventoryPointNo = :PIPNo'
      'Order by pd.ActualThicknessMM, pd.ActualWidthMM, pd.GradeName, '
      '      pd.SpeciesName, pd.SurfacingName')
    Left = 344
    Top = 104
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetAllProductsProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object sq_GetAllProductsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object sq_GetAllProductsActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object sq_GetAllProductsActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object sq_GetAllProductsGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object sq_GetAllProductsSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object sq_GetAllProductsSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
  end
  object cds_Products: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct pd.ProductDisplayName, pd.ProductNo,'
      'pd.ActualThicknessMM, pd.ActualWidthMM, pd.GradeName,'
      'pd.SpeciesName, pd.SurfacingName'
      'From dbo.InvControlrow icr'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = icr.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = icr.PackageT' +
        'ypeNo'
      'Inner Join dbo.ProductList_LM pd on pd.ProductNo = pt.ProductNo'
      'WHERE icr.ic_grpNo = :ic_grpNo'
      'AND ((icr.LogicalInventoryPointNo = :LIPNo) OR (0 = :LIPNo))'
      'AND LIP.PhysicalInventoryPointNo = :PIPNo'
      
        'Order by pd.ActualThicknessMM, pd.ActualWidthMM, pd.GradeName, p' +
        'd.SpeciesName, pd.SurfacingName')
    Left = 344
    Top = 160
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
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProductsProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object cds_ProductsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object cds_ProductsActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object cds_ProductsActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object cds_ProductsGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_ProductsSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object cds_ProductsSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
  end
  object siLangLinked_fPickPkgNo: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    UseDefaultLanguage = True
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
    Language = 'Origin'
    CommonContainer = dmLanguage.siLang1
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField'
      'AutoIncFields'
      'CaseInsFields'
      'CatalogName'
      'Categories'
      'ClassName'
      'CommandText'
      'ConnectionName'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'DisplayChecked'
      'DisplayUnchecked'
      'EditFormat'
      'Expression'
      'FetchRowSQL'
      'Fields'
      'Filter'
      'FmtDisplayDate'
      'FmtDisplayDateTime'
      'FmtDisplayNumeric'
      'FmtDisplayTime'
      'FmtEditNumeric'
      'GeneratorName'
      'GraphicClassName'
      'HotZoneClassName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'KeyFieldNames'
      'ListFieldNames'
      'LockSQL'
      'Origin'
      'PackageName'
      'Params'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'PopupMenuLinks'
      'PropertiesClassName'
      'RegistryPath'
      'SchemaName'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'DataSetName'
      'IniFile'
      'ProviderName'
      'ScriptLanguage'
      'ScriptText')
    Left = 432
    Top = 296
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005000690063006B0050006B0067004E006F000100
      50006C006F0063006B0061002000700061006B00650074006E00720001000100
      01000D000A006300780047007200690064003100440042005400610062006C00
      6500560069006500770031004D00410052004B00450052004100440001004D00
      410052004B0045005200410044000100010001000D000A006300780047007200
      690064003100440042005400610062006C006500560069006500770031004300
      6F006C0075006D006E0041006E006700650041006E00740061006C0050006B00
      7400010041004E0047004500200041004E00540041004C00200050004B005400
      0100010001000D000A0063007800470072006900640031004400420054006100
      62006C00650056006900650077003100500041004B00450054004E0052000100
      500041004B00450054004E0052000100010001000D000A006300780047007200
      690064003100440042005400610062006C006500560069006500770031004C00
      450056004B004F00440001004C00450056004B004F0044000100010001000D00
      0A006300780047007200690064003100440042005400610062006C0065005600
      690065007700310041004D003300010041004D0033000100010001000D000A00
      6300780047007200690064003100440042005400610062006C00650056006900
      65007700310053005400590043004B00010053005400590043004B0001000100
      01000D000A006300780047007200690064003100440042005400610062006C00
      6500560069006500770031005200450047004900530054005200450052004100
      5400010052004500470049005300540052004500520041004400010001000100
      0D000A006300780047007200690064003100440042005400610062006C006500
      5600690065007700310053005400590043004B005000450052004C004E004700
      4400010053005400590043004B005000450052004C00C4004E00470044000100
      010001000D000A00630078004700720069006400310044004200540061006200
      6C0065005600690065007700310043006F006C0075006D006E00310001005000
      72006F0064007500630074004E006F000100010001000D000A004C0061006200
      65006C0031000100500061006B006500740020006D00610072006B0065007200
      6100640065003A000100010001000D000A004C006100620065006C004E006F00
      4F00660050006B00670073004D00610072006B00650064000100300001000100
      01000D000A00420069007400420074006E00310001004F004B00010001000100
      0D000A00420069007400420074006E0032000100430061006E00630065006C00
      0100010001000D000A004C006100620065006C005000490050004E0061006D00
      650001004C006100620065006C005000490050004E0061006D00650001000100
      01000D000A004C006100620065006C00340001004C0061006700650072003A00
      0100010001000D000A004C006100620065006C0035000100500072006F006400
      75006B0074003A000100010001000D000A00620062004D00610072006B004100
      6C006C0001004D00610072006B00650072006100200061006C006C0061000100
      010001000D000A006200620055006E004D00610072006B0041006C006C000100
      410076006D00610072006B00650072006100200061006C006C00610001000100
      01000D000A00420069007400420074006E003300010055007000700064006100
      74006500720061000100010001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A00730074004400690073007000
      6C00610079004C006100620065006C0073005F0055006E00690063006F006400
      65000D000A006D007400460069006C00740065007200500072006F0064007500
      630074004E006F000100500072006F0064007500630074004E006F0001000100
      0D000A006D007400460069006C00740065007200500072006F00640075006300
      74000100500072006F006400750063007400010001000D000A00730071005F00
      47006500740050006B0067004E006F005000610063006B006100670065004E00
      6F0001005000610063006B006100670065004E006F00010001000D000A007300
      71005F0047006500740050006B0067004E006F004C00450056004B004F004400
      01004C00450056004B004F004400010001000D000A00730071005F0047006500
      740050006B0067004E006F005000630073005000650072004C0065006E006700
      7400680001005000630073005000650072004C0065006E006700740068000100
      01000D000A00730071005F0047006500740050006B0067004E006F0041004D00
      3300010041004D003300010001000D000A00730071005F004700650074005000
      6B0067004E006F0053005400590043004B00010053005400590043004B000100
      01000D000A00730071005F0047006500740050006B0067004E006F0044006100
      7400650043007200650061007400650064000100440061007400650043007200
      65006100740065006400010001000D000A00730071005F004700650074005000
      6B0067004E006F00700072006F0064007500630074006E006F00010070007200
      6F0064007500630074006E006F00010001000D000A00730071005F0047006500
      740049006E004100630074006900760065005000610063006B00610067006500
      4E006F0001005000610063006B006100670065004E006F00010001000D000A00
      730071005F0047006500740049006E004100630074006900760065004C004500
      56004B004F00440001004C00450056004B004F004400010001000D000A007300
      71005F0047006500740049006E00410063007400690076006500500063007300
      5000650072004C0065006E006700740068000100500063007300500065007200
      4C0065006E00670074006800010001000D000A00730071005F00470065007400
      49006E0041006300740069007600650041004D003300010041004D0033000100
      01000D000A00730071005F0047006500740049006E0041006300740069007600
      650053005400590043004B00010053005400590043004B00010001000D000A00
      730071005F0047006500740049006E0041006300740069007600650044006100
      7400650043007200650061007400650064000100440061007400650043007200
      65006100740065006400010001000D000A00730071005F004700650074004900
      6E00410063007400690076006500500072006F0064007500630074004E006F00
      0100500072006F0064007500630074004E006F00010001000D000A0073007100
      5F0047006500740041006C006C00500072006F00640075006300740073005000
      72006F00640075006300740044006900730070006C00610079004E0061006D00
      65000100500072006F00640075006300740044006900730070006C0061007900
      4E0061006D006500010001000D000A00730071005F0047006500740041006C00
      6C00500072006F0064007500630074007300500072006F006400750063007400
      4E006F000100500072006F0064007500630074004E006F00010001000D000A00
      730071005F0047006500740041006C006C00500072006F006400750063007400
      7300410063007400750061006C0054006800690063006B006E00650073007300
      4D004D000100410063007400750061006C0054006800690063006B006E006500
      730073004D004D00010001000D000A00730071005F0047006500740041006C00
      6C00500072006F0064007500630074007300410063007400750061006C005700
      69006400740068004D004D000100410063007400750061006C00570069006400
      740068004D004D00010001000D000A00730071005F0047006500740041006C00
      6C00500072006F0064007500630074007300470072006100640065004E006100
      6D0065000100470072006100640065004E0061006D006500010001000D000A00
      730071005F0047006500740041006C006C00500072006F006400750063007400
      730053007000650063006900650073004E0061006D0065000100530070006500
      63006900650073004E0061006D006500010001000D000A00730071005F004700
      6500740041006C006C00500072006F0064007500630074007300530075007200
      66006100630069006E0067004E0061006D006500010053007500720066006100
      630069006E0067004E0061006D006500010001000D000A006300640073005F00
      500072006F0064007500630074007300500072006F0064007500630074004400
      6900730070006C00610079004E0061006D0065000100500072006F0064007500
      6300740044006900730070006C00610079004E0061006D006500010001000D00
      0A006300640073005F00500072006F0064007500630074007300500072006F00
      64007500630074004E006F000100500072006F0064007500630074004E006F00
      010001000D000A006300640073005F00500072006F0064007500630074007300
      410063007400750061006C0054006800690063006B006E006500730073004D00
      4D000100410063007400750061006C0054006800690063006B006E0065007300
      73004D004D00010001000D000A006300640073005F00500072006F0064007500
      630074007300410063007400750061006C00570069006400740068004D004D00
      0100410063007400750061006C00570069006400740068004D004D0001000100
      0D000A006300640073005F00500072006F006400750063007400730047007200
      6100640065004E0061006D0065000100470072006100640065004E0061006D00
      6500010001000D000A006300640073005F00500072006F006400750063007400
      730053007000650063006900650073004E0061006D0065000100530070006500
      63006900650073004E0061006D006500010001000D000A006300640073005F00
      500072006F006400750063007400730053007500720066006100630069006E00
      67004E0061006D006500010053007500720066006100630069006E0067004E00
      61006D006500010001000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A00540066005000690063006B0050006B00
      67004E006F0001004D0053002000530061006E00730020005300650072006900
      660001004D0053002000530061006E0073002000530065007200690066000100
      5400610068006F006D0061000D000A004C006100620065006C00500049005000
      4E0061006D00650001004D0053002000530061006E0073002000530065007200
      69006600010001005400610068006F006D0061000D000A004C00610062006500
      6C00340001004D0053002000530061006E007300200053006500720069006600
      010001005400610068006F006D0061000D000A00630078005300740079006C00
      65004D00610072006B006500640052006F00770001005400610068006F006D00
      6100010001005400610068006F006D0061000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A00540066005000690063006B0050006B006700
      4E006F000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A004C006100620065006C005000490050004E0061006D006500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A004C006100620065006C0034000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00630078005300740079006C00
      65004D00610072006B006500640052006F007700010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A00}
  end
end
