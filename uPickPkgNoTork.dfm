object fPickPkgNoTork: TfPickPkgNoTork
  Left = 266
  Top = 123
  ActiveControl = lcProduct
  Caption = 'Plocka paketnr'
  ClientHeight = 697
  ClientWidth = 1135
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 121
    Width = 1135
    Height = 495
    Align = alClient
    TabOrder = 0
    TabStop = False
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
      Styles.Content = cxStyle10
      Styles.ContentEven = cxStyle11
      Styles.ContentOdd = cxStyle10
      Styles.OnGetContentStyle = cxGrid1DBTableView1StylesGetContentStyle
      Styles.StyleSheet = GridTableViewStyleSheetWindowsStandardlarge
      object cxGrid1DBTableView1MARKERAD: TcxGridDBColumn
        Caption = 'V'#228'lj'
        DataBinding.FieldName = 'MARKERAD'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.ReadOnly = False
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 91
      end
      object cxGrid1DBTableView1ColumnAngeAntalPkt: TcxGridDBColumn
        Caption = 'ANGE ANTAL PKT'
        DataBinding.FieldName = 'MARKERAD'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        Width = 138
      end
      object cxGrid1DBTableView1PAKETNR: TcxGridDBColumn
        Caption = 'Paketnr'
        DataBinding.FieldName = 'PAKETNR'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 72
      end
      object cxGrid1DBTableView1LEVKOD: TcxGridDBColumn
        Caption = 'Prefix'
        DataBinding.FieldName = 'LEVKOD'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Width = 64
      end
      object cxGrid1DBTableView1AM3: TcxGridDBColumn
        DataBinding.FieldName = 'AM3'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 70
      end
      object cxGrid1DBTableView1STYCK: TcxGridDBColumn
        Caption = 'Styck'
        DataBinding.FieldName = 'STYCK'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Width = 70
      end
      object cxGrid1DBTableView1REGISTRERAT: TcxGridDBColumn
        Caption = 'Registrerad'
        DataBinding.FieldName = 'REGISTRERAT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 112
      end
      object cxGrid1DBTableView1STYCKPERLNGD: TcxGridDBColumn
        Caption = 'Styck/l'#228'ngd'
        DataBinding.FieldName = 'STYCKPERL'#196'NGD'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Width = 269
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'ProductNo'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1Maxlangd: TcxGridDBColumn
        Caption = 'Maxl'#228'ngd'
        DataBinding.FieldName = 'Maxlangd'
        SortIndex = 0
        SortOrder = soAscending
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 616
    Width = 1135
    Height = 81
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 18
      Top = 16
      Width = 142
      Height = 20
      Caption = 'Paket markerade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelNoOfPkgsMarked: TLabel
      Left = 183
      Top = 16
      Width = 11
      Height = 20
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 416
      Top = 6
      Width = 169
      Height = 75
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      TabStop = False
    end
    object BitBtn2: TBitBtn
      Left = 615
      Top = 6
      Width = 170
      Height = 75
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      TabStop = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1135
    Height = 121
    Align = alTop
    TabOrder = 2
    object LabelPIPName: TLabel
      Left = 76
      Top = 14
      Width = 205
      Height = 28
      AutoSize = False
      Caption = 'LabelPIPName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label4: TLabel
      Left = 18
      Top = 14
      Width = 52
      Height = 20
      Caption = 'Lager:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label5: TLabel
      Left = 479
      Top = 14
      Width = 59
      Height = 20
      Caption = 'Produkt:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 479
      Top = 41
      Width = 50
      Height = 20
      Caption = 'ALMM:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bbMarkAll: TBitBtn
      Left = 18
      Top = 48
      Width = 103
      Height = 50
      Caption = 'Markera alla'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = bbMarkAllClick
    end
    object bbUnMarkAll: TBitBtn
      Left = 127
      Top = 48
      Width = 114
      Height = 50
      Caption = 'Avmarkera alla'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = bbUnMarkAllClick
    end
    object lcProduct: TcxDBLookupComboBox
      Left = 544
      Top = 12
      DataBinding.DataField = 'Product'
      DataBinding.DataSource = dsFilter
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Style.StyleController = cxEditStyleController1
      TabOrder = 2
      Width = 425
    end
    object BitBtn3: TBitBtn
      Left = 544
      Top = 69
      Width = 121
      Height = 46
      Caption = 'Uppdatera'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      Visible = False
      OnClick = BitBtn3Click
    end
    object deProductNo: TcxDBTextEdit
      Left = 312
      Top = 71
      DataBinding.DataField = 'ProductNo'
      DataBinding.DataSource = dsFilter
      ParentFont = False
      Style.StyleController = cxEditStyleController1
      TabOrder = 4
      Visible = False
      Width = 161
    end
    object tePackageNo: TcxTextEdit
      Left = 312
      Top = 44
      Enabled = False
      TabOrder = 5
      Width = 161
    end
    object teALMM: TcxDBTextEdit
      Left = 544
      Top = 39
      DataBinding.DataField = 'ALMM'
      DataBinding.DataSource = dsFilter
      ParentFont = False
      Style.StyleController = cxEditStyleController1
      TabOrder = 6
      OnExit = teALMMExit
      Width = 121
    end
  end
  object ds_SelectedPkgNo: TDataSource
    DataSet = dmInventory.mtSelectedPkgNo
    OnDataChange = ds_SelectedPkgNoDataChange
    Left = 256
    Top = 152
  end
  object ds_Products: TDataSource
    DataSet = cds_Products
    Left = 360
    Top = 272
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
    object mtFilterALMM: TFloatField
      FieldName = 'ALMM'
    end
  end
  object dsFilter: TDataSource
    DataSet = mtFilter
    Left = 552
    Top = 176
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 72
    Top = 168
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
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct pn.PackageNo,'
      'pn.SupplierCode AS LEVKOD,'
      'pt.productno,'
      'ptl.PcsPerLength,'
      'pt.Totalm3Actual AS AM3,'
      'pt.TotalNoOfPieces AS STYCK,'
      'pn.DateCreated,'
      '(Select MAX(pl2.ActualLengthMM) FROM dbo.packagetypeDetail ptd2'
      
        'Inner Join dbo.ProductLength pl2 on pl2.ProductLengthNo = ptd2.P' +
        'roductLengthNo'
      'WHERE'
      'ptd2.packagetypeno = pt.packagetypeno) AS Maxlangd'
      ''
      'From dbo.packagenumber pn'
      
        'Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      
        'Inner Join dbo.packagetypeDetail ptd on ptd.packagetypeno = pt.p' +
        'ackagetypeno'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = ptd.Prod' +
        'uctLengthNo'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.' +
        'packagetypeno'
      'where'
      'pn.Status = 1 AND'
      'pt.productno = :ProductNo'
      'AND pn.LogicalInventoryPointNo = :LIPNo'
      'AND ((pl.ActualLengthMM = :ALMM) OR (0 = :ALMM))'
      ''
      'AND NOT EXISTS (Select * FROM dbo.KilnChargeRows kcr'
      'WHERE kcr.PackageNo = pn.PackageNo'
      'and kcr.SupplierCode = pn.SupplierCode)'
      ''
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
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ALMM'
        DataType = ftFloat
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
    object sq_GetPkgNoMaxlangd: TFloatField
      FieldName = 'Maxlangd'
      Origin = 'Maxlangd'
      ReadOnly = True
    end
    object sq_GetPkgNoproductno: TIntegerField
      FieldName = 'productno'
      Origin = 'productno'
    end
  end
  object sq_GetInActive: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pn.PackageNo AS PackageNo,'
      'pn.SupplierCode AS LEVKOD,'
      'pt.Productno AS ProductNo,'
      'ptl.PcsPerLength,'
      'pt.Totalm3Actual AS AM3,'
      'pt.TotalNoOfPieces AS STYCK,'
      'pn.DateCreated AS DateCreated'
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
    Left = 360
    Top = 152
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
      'From dbo.PackageNumber icr'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = icr.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = icr.PackageT' +
        'ypeNo'
      'Inner Join dbo.ProductList_LM pd on pd.ProductNo = pt.ProductNo'
      'WHERE ((icr.LogicalInventoryPointNo = :LIPNo) OR (0 = :LIPNo))'
      'AND LIP.PhysicalInventoryPointNo = :PIPNo'
      'AND icr.Status = 1'
      'AND not Exists (Select * FROM dbo.KilnChargeRows kcr'
      'WHERE kcr.PackageNo = icr.PackageNo'
      'AND kcr.SupplierCode = icr.SupplierCode)'
      
        'Order by pd.ActualThicknessMM, pd.ActualWidthMM, pd.GradeName, p' +
        'd.SpeciesName, pd.SurfacingName')
    Left = 360
    Top = 208
    ParamData = <
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
  object cxEditStyleController1: TcxEditStyleController
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Left = 520
    Top = 368
    PixelsPerInch = 96
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 600
    Top = 296
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 13160660
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 6956042
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetWindowsStandardlarge: TcxGridTableViewStyleSheet
      Caption = 'Windows Standard (large)'
      Styles.Content = cxStyle1
      Styles.ContentEven = cxStyle2
      Styles.ContentOdd = cxStyle3
      Styles.Inactive = cxStyle8
      Styles.Selection = cxStyle11
      Styles.Footer = cxStyle4
      Styles.Group = cxStyle5
      Styles.GroupByBox = cxStyle6
      Styles.Header = cxStyle7
      Styles.Indicator = cxStyle9
      Styles.Preview = cxStyle10
      BuiltIn = True
    end
  end
  object siLangLinked_fPickPkgNoTork: TsiLangLinked
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
    Left = 560
    Top = 352
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005000690063006B0050006B0067004E006F005400
      6F0072006B00010050006C006F0063006B0061002000700061006B0065007400
      6E0072000100010001000D000A00630078004700720069006400310044004200
      5400610062006C006500560069006500770031004D00410052004B0045005200
      4100440001005600E4006C006A000100010001000D000A006300780047007200
      690064003100440042005400610062006C006500560069006500770031004300
      6F006C0075006D006E0041006E006700650041006E00740061006C0050006B00
      7400010041004E0047004500200041004E00540041004C00200050004B005400
      0100010001000D000A0063007800470072006900640031004400420054006100
      62006C00650056006900650077003100500041004B00450054004E0052000100
      500061006B00650074006E0072000100010001000D000A006300780047007200
      690064003100440042005400610062006C006500560069006500770031004C00
      450056004B004F00440001005000720065006600690078000100010001000D00
      0A006300780047007200690064003100440042005400610062006C0065005600
      690065007700310041004D003300010041004D0033000100010001000D000A00
      6300780047007200690064003100440042005400610062006C00650056006900
      65007700310053005400590043004B00010053007400790063006B0001000100
      01000D000A006300780047007200690064003100440042005400610062006C00
      6500560069006500770031005200450047004900530054005200450052004100
      5400010052006500670069007300740072006500720061006400010001000100
      0D000A006300780047007200690064003100440042005400610062006C006500
      5600690065007700310053005400590043004B005000450052004C004E004700
      4400010053007400790063006B002F006C00E4006E0067006400010001000100
      0D000A006300780047007200690064003100440042005400610062006C006500
      5600690065007700310043006F006C0075006D006E0031000100500072006F00
      64007500630074004E006F000100010001000D000A0063007800470072006900
      64003100440042005400610062006C006500560069006500770031004D006100
      78006C0061006E006700640001004D00610078006C00E4006E00670064000100
      010001000D000A004C006100620065006C0031000100500061006B0065007400
      20006D00610072006B00650072006100640065003A000100010001000D000A00
      4C006100620065006C004E006F004F00660050006B00670073004D0061007200
      6B0065006400010030000100010001000D000A00420069007400420074006E00
      310001004F004B000100010001000D000A00420069007400420074006E003200
      0100430061006E00630065006C000100010001000D000A004C00610062006500
      6C005000490050004E0061006D00650001004C006100620065006C0050004900
      50004E0061006D0065000100010001000D000A004C006100620065006C003400
      01004C0061006700650072003A000100010001000D000A004C00610062006500
      6C0035000100500072006F00640075006B0074003A000100010001000D000A00
      4C006100620065006C003200010041004C004D004D003A000100010001000D00
      0A00620062004D00610072006B0041006C006C0001004D00610072006B006500
      72006100200061006C006C0061000100010001000D000A006200620055006E00
      4D00610072006B0041006C006C000100410076006D00610072006B0065007200
      6100200061006C006C0061000100010001000D000A0042006900740042007400
      6E00330001005500700070006400610074006500720061000100010001000D00
      0A0047007200690064005400610062006C006500560069006500770053007400
      79006C00650053006800650065007400570069006E0064006F00770073005300
      740061006E0064006100720064006C0061007200670065000100570069006E00
      64006F007700730020005300740061006E006400610072006400200028006C00
      610072006700650029000100010001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A006D007400460069006C00740065007200500072006F006400
      7500630074004E006F000100500072006F0064007500630074004E006F000100
      01000D000A006D007400460069006C00740065007200500072006F0064007500
      630074000100500072006F006400750063007400010001000D000A006D007400
      460069006C0074006500720041004C004D004D00010041004C004D004D000100
      01000D000A00730071005F0047006500740050006B0067004E006F0050006100
      63006B006100670065004E006F0001005000610063006B006100670065004E00
      6F00010001000D000A00730071005F0047006500740050006B0067004E006F00
      4C00450056004B004F00440001004C00450056004B004F004400010001000D00
      0A00730071005F0047006500740050006B0067004E006F005000630073005000
      650072004C0065006E0067007400680001005000630073005000650072004C00
      65006E00670074006800010001000D000A00730071005F004700650074005000
      6B0067004E006F0041004D003300010041004D003300010001000D000A007300
      71005F0047006500740050006B0067004E006F0053005400590043004B000100
      53005400590043004B00010001000D000A00730071005F004700650074005000
      6B0067004E006F00440061007400650043007200650061007400650064000100
      44006100740065004300720065006100740065006400010001000D000A007300
      71005F0047006500740050006B0067004E006F004D00610078006C0061006E00
      6700640001004D00610078006C0061006E0067006400010001000D000A007300
      71005F0047006500740050006B0067004E006F00700072006F00640075006300
      74006E006F000100700072006F0064007500630074006E006F00010001000D00
      0A00730071005F0047006500740049006E004100630074006900760065005000
      610063006B006100670065004E006F0001005000610063006B00610067006500
      4E006F00010001000D000A00730071005F0047006500740049006E0041006300
      74006900760065004C00450056004B004F00440001004C00450056004B004F00
      4400010001000D000A00730071005F0047006500740049006E00410063007400
      6900760065005000630073005000650072004C0065006E006700740068000100
      5000630073005000650072004C0065006E00670074006800010001000D000A00
      730071005F0047006500740049006E0041006300740069007600650041004D00
      3300010041004D003300010001000D000A00730071005F004700650074004900
      6E0041006300740069007600650053005400590043004B000100530054005900
      43004B00010001000D000A00730071005F0047006500740049006E0041006300
      7400690076006500440061007400650043007200650061007400650064000100
      44006100740065004300720065006100740065006400010001000D000A007300
      71005F0047006500740049006E00410063007400690076006500500072006F00
      64007500630074004E006F000100500072006F0064007500630074004E006F00
      010001000D000A00730071005F0047006500740041006C006C00500072006F00
      64007500630074007300500072006F0064007500630074004400690073007000
      6C00610079004E0061006D0065000100500072006F0064007500630074004400
      6900730070006C00610079004E0061006D006500010001000D000A0073007100
      5F0047006500740041006C006C00500072006F00640075006300740073005000
      72006F0064007500630074004E006F000100500072006F006400750063007400
      4E006F00010001000D000A00730071005F0047006500740041006C006C005000
      72006F0064007500630074007300410063007400750061006C00540068006900
      63006B006E006500730073004D004D000100410063007400750061006C005400
      6800690063006B006E006500730073004D004D00010001000D000A0073007100
      5F0047006500740041006C006C00500072006F00640075006300740073004100
      63007400750061006C00570069006400740068004D004D000100410063007400
      750061006C00570069006400740068004D004D00010001000D000A0073007100
      5F0047006500740041006C006C00500072006F00640075006300740073004700
      72006100640065004E0061006D0065000100470072006100640065004E006100
      6D006500010001000D000A00730071005F0047006500740041006C006C005000
      72006F006400750063007400730053007000650063006900650073004E006100
      6D006500010053007000650063006900650073004E0061006D00650001000100
      0D000A00730071005F0047006500740041006C006C00500072006F0064007500
      63007400730053007500720066006100630069006E0067004E0061006D006500
      010053007500720066006100630069006E0067004E0061006D00650001000100
      0D000A006300640073005F00500072006F006400750063007400730050007200
      6F00640075006300740044006900730070006C00610079004E0061006D006500
      0100500072006F00640075006300740044006900730070006C00610079004E00
      61006D006500010001000D000A006300640073005F00500072006F0064007500
      630074007300500072006F0064007500630074004E006F000100500072006F00
      64007500630074004E006F00010001000D000A006300640073005F0050007200
      6F0064007500630074007300410063007400750061006C005400680069006300
      6B006E006500730073004D004D000100410063007400750061006C0054006800
      690063006B006E006500730073004D004D00010001000D000A00630064007300
      5F00500072006F0064007500630074007300410063007400750061006C005700
      69006400740068004D004D000100410063007400750061006C00570069006400
      740068004D004D00010001000D000A006300640073005F00500072006F006400
      7500630074007300470072006100640065004E0061006D006500010047007200
      6100640065004E0061006D006500010001000D000A006300640073005F005000
      72006F006400750063007400730053007000650063006900650073004E006100
      6D006500010053007000650063006900650073004E0061006D00650001000100
      0D000A006300640073005F00500072006F006400750063007400730053007500
      720066006100630069006E0067004E0061006D00650001005300750072006600
      6100630069006E0067004E0061006D006500010001000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0054006600
      5000690063006B0050006B0067004E006F0054006F0072006B0001004D005300
      2000530061006E00730020005300650072006900660001004D00530020005300
      61006E00730020005300650072006900660001005400610068006F006D006100
      0D000A004C006100620065006C00310001004D0053002000530061006E007300
      200053006500720069006600010001005400610068006F006D0061000D000A00
      4C006100620065006C004E006F004F00660050006B00670073004D0061007200
      6B006500640001004D0053002000530061006E00730020005300650072006900
      6600010001005400610068006F006D0061000D000A0042006900740042007400
      6E00310001004D0053002000530061006E007300200053006500720069006600
      010001005400610068006F006D0061000D000A00420069007400420074006E00
      320001004D0053002000530061006E0073002000530065007200690066000100
      01005400610068006F006D0061000D000A004C006100620065006C0050004900
      50004E0061006D00650001004D0053002000530061006E007300200053006500
      720069006600010001005400610068006F006D0061000D000A004C0061006200
      65006C00340001004D0053002000530061006E00730020005300650072006900
      6600010001005400610068006F006D0061000D000A004C006100620065006C00
      350001004D0053002000530061006E0073002000530065007200690066000100
      01005400610068006F006D0061000D000A004C006100620065006C0032000100
      4D0053002000530061006E007300200053006500720069006600010001005400
      610068006F006D0061000D000A00620062004D00610072006B0041006C006C00
      01004D0053002000530061006E00730020005300650072006900660001000100
      5400610068006F006D0061000D000A006200620055006E004D00610072006B00
      41006C006C0001004D0053002000530061006E00730020005300650072006900
      6600010001005400610068006F006D0061000D000A0042006900740042007400
      6E00330001004D0053002000530061006E007300200053006500720069006600
      010001005400610068006F006D0061000D000A00630078005300740079006C00
      65004D00610072006B006500640052006F00770001005400610068006F006D00
      6100010001005400610068006F006D0061000D000A0063007800530074007900
      6C006500310001005400610068006F006D006100010001005400610068006F00
      6D0061000D000A00630078005300740079006C00650032000100540061006800
      6F006D006100010001005400610068006F006D0061000D000A00630078005300
      740079006C006500330001005400610068006F006D0061000100010054006100
      68006F006D0061000D000A00630078005300740079006C006500340001005400
      610068006F006D006100010001005400610068006F006D0061000D000A006300
      78005300740079006C006500350001005400610068006F006D00610001000100
      5400610068006F006D0061000D000A00630078005300740079006C0065003600
      01005400610068006F006D006100010001005400610068006F006D0061000D00
      0A00630078005300740079006C006500370001005400610068006F006D006100
      010001005400610068006F006D0061000D000A00630078005300740079006C00
      6500380001005400610068006F006D006100010001005400610068006F006D00
      61000D000A00630078005300740079006C006500390001005400610068006F00
      6D006100010001005400610068006F006D0061000D000A006300780053007400
      79006C0065003100300001005400610068006F006D0061000100010054006100
      68006F006D0061000D000A00630078005300740079006C006500310031000100
      5400610068006F006D006100010001005400610068006F006D0061000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A007300740053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A004900440053005F00300001004B00
      6F00640065006E0020006B0075006E0064006500200069006E00740065002000
      F6007600650072007300E40074007400610073002000740069006C006C002000
      6500740074002000500061006B00650074006E0072000100010001000D000A00
      4900440053005F0031000100500061006B00650074006E007200200001000100
      01000D000A004900440053005F00320001002000660069006E006E0073002000
      69006E00740065002000690020006C0061006700650072002000010001000100
      0D000A004900440053005F00340001002000E400720020007200650073006500
      72007600650072006100740020006100760020000100010001000D000A004900
      440053005F00360001002000E4007200200072006500640061006E0020006900
      6E006D0061007400610074000100010001000D000A004900440053005F003700
      0100500061006B00650074006E0072002000730061006B006E00610073002E00
      0100010001000D000A00730074004F0074006800650072005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004300
      6F006C006C0065006300740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400430068006100720053006500740073005F005500
      6E00690063006F00640065000D000A00540066005000690063006B0050006B00
      67004E006F0054006F0072006B000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A004C006100620065006C0031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A004C006100620065006C004E006F004F00660050006B00670073004D006100
      72006B00650064000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00420069007400420074006E003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A004200
      69007400420074006E0032000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A004C006100620065006C00500049005000
      4E0061006D0065000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A004C006100620065006C0034000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A004C006100
      620065006C0035000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A004C006100620065006C0032000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0062006200
      4D00610072006B0041006C006C000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A006200620055006E004D0061007200
      6B0041006C006C000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00420069007400420074006E003300010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A006300
      78005300740079006C0065004D00610072006B006500640052006F0077000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00630078005300740079006C00650031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A0063007800530074007900
      6C00650032000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00630078005300740079006C0065003300010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A006300
      78005300740079006C00650034000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A00630078005300740079006C006500
      35000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00630078005300740079006C006500360001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00630078005300
      740079006C00650037000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00630078005300740079006C00650038000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00630078005300740079006C00650039000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A0063007800530074007900
      6C006500310030000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00630078005300740079006C006500310031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00}
  end
end
