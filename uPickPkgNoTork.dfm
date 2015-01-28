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
      AssignedValues = [svColor]
      Color = clGreen
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
      AssignedValues = [svColor, svTextColor]
      Color = 13160660
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
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
    NumOfLanguages = 2
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Base'
      'Swedish')
    Language = 'Swedish'
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
      'ListField')
    Left = 560
    Top = 352
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005000690063006B0050006B0067004E006F005400
      6F0072006B00010050006C006F0063006B0061002000700061006B0065007400
      6E007200010001000D000A006300780047007200690064003100440042005400
      610062006C006500560069006500770031004D00410052004B00450052004100
      440001005600E4006C006A00010001000D000A00630078004700720069006400
      3100440042005400610062006C0065005600690065007700310043006F006C00
      75006D006E0041006E006700650041006E00740061006C0050006B0074000100
      41004E0047004500200041004E00540041004C00200050004B00540001000100
      0D000A006300780047007200690064003100440042005400610062006C006500
      56006900650077003100500041004B00450054004E0052000100500061006B00
      650074006E007200010001000D000A0063007800470072006900640031004400
      42005400610062006C006500560069006500770031004C00450056004B004F00
      44000100500072006500660069007800010001000D000A006300780047007200
      690064003100440042005400610062006C006500560069006500770031004100
      4D003300010041004D003300010001000D000A00630078004700720069006400
      3100440042005400610062006C00650056006900650077003100530054005900
      43004B00010053007400790063006B00010001000D000A006300780047007200
      690064003100440042005400610062006C006500560069006500770031005200
      4500470049005300540052004500520041005400010052006500670069007300
      740072006500720061006400010001000D000A00630078004700720069006400
      3100440042005400610062006C00650056006900650077003100530054005900
      43004B005000450052004C004E0047004400010053007400790063006B002F00
      6C00E4006E0067006400010001000D000A006300780047007200690064003100
      440042005400610062006C0065005600690065007700310043006F006C007500
      6D006E0031000100500072006F0064007500630074004E006F00010001000D00
      0A006300780047007200690064003100440042005400610062006C0065005600
      69006500770031004D00610078006C0061006E006700640001004D0061007800
      6C00E4006E0067006400010001000D000A004C006100620065006C0031000100
      500061006B006500740020006D00610072006B00650072006100640065003A00
      010001000D000A004C006100620065006C004E006F004F00660050006B006700
      73004D00610072006B006500640001003000010001000D000A00420069007400
      420074006E00310001004F004B00010001000D000A0042006900740042007400
      6E0032000100430061006E00630065006C00010001000D000A004C0061006200
      65006C005000490050004E0061006D00650001004C006100620065006C005000
      490050004E0061006D006500010001000D000A004C006100620065006C003400
      01004C0061006700650072003A00010001000D000A004C006100620065006C00
      35000100500072006F00640075006B0074003A00010001000D000A004C006100
      620065006C003200010041004C004D004D003A00010001000D000A0062006200
      4D00610072006B0041006C006C0001004D00610072006B006500720061002000
      61006C006C006100010001000D000A006200620055006E004D00610072006B00
      41006C006C000100410076006D00610072006B00650072006100200061006C00
      6C006100010001000D000A00420069007400420074006E003300010055007000
      7000640061007400650072006100010001000D000A0047007200690064005400
      610062006C00650056006900650077005300740079006C006500530068006500
      65007400570069006E0064006F00770073005300740061006E00640061007200
      64006C0061007200670065000100570069006E0064006F007700730020005300
      740061006E006400610072006400200028006C00610072006700650029000100
      01000D000A0073007400480069006E00740073005F0055006E00690063006F00
      640065000D000A007300740044006900730070006C00610079004C0061006200
      65006C0073005F0055006E00690063006F00640065000D000A006D0074004600
      69006C00740065007200500072006F0064007500630074004E006F0001005000
      72006F0064007500630074004E006F00010001000D000A006D00740046006900
      6C00740065007200500072006F0064007500630074000100500072006F006400
      750063007400010001000D000A006D007400460069006C007400650072004100
      4C004D004D00010041004C004D004D00010001000D000A00730071005F004700
      6500740050006B0067004E006F005000610063006B006100670065004E006F00
      01005000610063006B006100670065004E006F00010001000D000A0073007100
      5F0047006500740050006B0067004E006F004C00450056004B004F0044000100
      4C00450056004B004F004400010001000D000A00730071005F00470065007400
      50006B0067004E006F005000630073005000650072004C0065006E0067007400
      680001005000630073005000650072004C0065006E0067007400680001000100
      0D000A00730071005F0047006500740050006B0067004E006F0041004D003300
      010041004D003300010001000D000A00730071005F0047006500740050006B00
      67004E006F0053005400590043004B00010053005400590043004B0001000100
      0D000A00730071005F0047006500740050006B0067004E006F00440061007400
      6500430072006500610074006500640001004400610074006500430072006500
      6100740065006400010001000D000A00730071005F0047006500740050006B00
      67004E006F004D00610078006C0061006E006700640001004D00610078006C00
      61006E0067006400010001000D000A00730071005F0047006500740050006B00
      67004E006F00700072006F0064007500630074006E006F000100700072006F00
      64007500630074006E006F00010001000D000A00730071005F00470065007400
      49006E004100630074006900760065005000610063006B006100670065004E00
      6F0001005000610063006B006100670065004E006F00010001000D000A007300
      71005F0047006500740049006E004100630074006900760065004C0045005600
      4B004F00440001004C00450056004B004F004400010001000D000A0073007100
      5F0047006500740049006E004100630074006900760065005000630073005000
      650072004C0065006E0067007400680001005000630073005000650072004C00
      65006E00670074006800010001000D000A00730071005F004700650074004900
      6E0041006300740069007600650041004D003300010041004D00330001000100
      0D000A00730071005F0047006500740049006E00410063007400690076006500
      53005400590043004B00010053005400590043004B00010001000D000A007300
      71005F0047006500740049006E00410063007400690076006500440061007400
      6500430072006500610074006500640001004400610074006500430072006500
      6100740065006400010001000D000A00730071005F0047006500740049006E00
      410063007400690076006500500072006F0064007500630074004E006F000100
      500072006F0064007500630074004E006F00010001000D000A00730071005F00
      47006500740041006C006C00500072006F006400750063007400730050007200
      6F00640075006300740044006900730070006C00610079004E0061006D006500
      0100500072006F00640075006300740044006900730070006C00610079004E00
      61006D006500010001000D000A00730071005F0047006500740041006C006C00
      500072006F0064007500630074007300500072006F0064007500630074004E00
      6F000100500072006F0064007500630074004E006F00010001000D000A007300
      71005F0047006500740041006C006C00500072006F0064007500630074007300
      410063007400750061006C0054006800690063006B006E006500730073004D00
      4D000100410063007400750061006C0054006800690063006B006E0065007300
      73004D004D00010001000D000A00730071005F0047006500740041006C006C00
      500072006F0064007500630074007300410063007400750061006C0057006900
      6400740068004D004D000100410063007400750061006C005700690064007400
      68004D004D00010001000D000A00730071005F0047006500740041006C006C00
      500072006F0064007500630074007300470072006100640065004E0061006D00
      65000100470072006100640065004E0061006D006500010001000D000A007300
      71005F0047006500740041006C006C00500072006F0064007500630074007300
      53007000650063006900650073004E0061006D00650001005300700065006300
      6900650073004E0061006D006500010001000D000A00730071005F0047006500
      740041006C006C00500072006F00640075006300740073005300750072006600
      6100630069006E0067004E0061006D0065000100530075007200660061006300
      69006E0067004E0061006D006500010001000D000A006300640073005F005000
      72006F0064007500630074007300500072006F00640075006300740044006900
      730070006C00610079004E0061006D0065000100500072006F00640075006300
      740044006900730070006C00610079004E0061006D006500010001000D000A00
      6300640073005F00500072006F0064007500630074007300500072006F006400
      7500630074004E006F000100500072006F0064007500630074004E006F000100
      01000D000A006300640073005F00500072006F00640075006300740073004100
      63007400750061006C0054006800690063006B006E006500730073004D004D00
      0100410063007400750061006C0054006800690063006B006E00650073007300
      4D004D00010001000D000A006300640073005F00500072006F00640075006300
      74007300410063007400750061006C00570069006400740068004D004D000100
      410063007400750061006C00570069006400740068004D004D00010001000D00
      0A006300640073005F00500072006F0064007500630074007300470072006100
      640065004E0061006D0065000100470072006100640065004E0061006D006500
      010001000D000A006300640073005F00500072006F0064007500630074007300
      53007000650063006900650073004E0061006D00650001005300700065006300
      6900650073004E0061006D006500010001000D000A006300640073005F005000
      72006F006400750063007400730053007500720066006100630069006E006700
      4E0061006D006500010053007500720066006100630069006E0067004E006100
      6D006500010001000D000A007300740046006F006E00740073005F0055006E00
      690063006F00640065000D000A00540066005000690063006B0050006B006700
      4E006F0054006F0072006B0001004D0053002000530061006E00730020005300
      6500720069006600010001000D000A004C006100620065006C00310001004D00
      53002000530061006E007300200053006500720069006600010001000D000A00
      4C006100620065006C004E006F004F00660050006B00670073004D0061007200
      6B006500640001004D0053002000530061006E00730020005300650072006900
      6600010001000D000A00420069007400420074006E00310001004D0053002000
      530061006E007300200053006500720069006600010001000D000A0042006900
      7400420074006E00320001004D0053002000530061006E007300200053006500
      720069006600010001000D000A004C006100620065006C005000490050004E00
      61006D00650001004D0053002000530061006E00730020005300650072006900
      6600010001000D000A004C006100620065006C00340001004D00530020005300
      61006E007300200053006500720069006600010001000D000A004C0061006200
      65006C00350001004D0053002000530061006E00730020005300650072006900
      6600010001000D000A004C006100620065006C00320001004D00530020005300
      61006E007300200053006500720069006600010001000D000A00620062004D00
      610072006B0041006C006C0001004D0053002000530061006E00730020005300
      6500720069006600010001000D000A006200620055006E004D00610072006B00
      41006C006C0001004D0053002000530061006E00730020005300650072006900
      6600010001000D000A00420069007400420074006E00330001004D0053002000
      530061006E007300200053006500720069006600010001000D000A0063007800
      5300740079006C0065004D00610072006B006500640052006F00770001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      310001005400610068006F006D006100010001000D000A006300780053007400
      79006C006500320001005400610068006F006D006100010001000D000A006300
      78005300740079006C006500330001005400610068006F006D00610001000100
      0D000A00630078005300740079006C006500340001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003500010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003600
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C006500370001005400610068006F006D006100010001000D000A0063007800
      5300740079006C006500380001005400610068006F006D006100010001000D00
      0A00630078005300740079006C006500390001005400610068006F006D006100
      010001000D000A00630078005300740079006C00650031003000010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003100
      310001005400610068006F006D006100010001000D000A00730074004D007500
      6C00740069004C0069006E00650073005F0055006E00690063006F0064006500
      0D000A007300740053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A004900440053005F00300001004B006F00640065006E00
      20006B0075006E0064006500200069006E00740065002000F600760065007200
      7300E40074007400610073002000740069006C006C0020006500740074002000
      500061006B00650074006E007200010001000D000A004900440053005F003100
      0100500061006B00650074006E0072002000010001000D000A00490044005300
      5F00320001002000660069006E006E007300200069006E007400650020006900
      20006C0061006700650072002000010001000D000A004900440053005F003400
      01002000E4007200200072006500730065007200760065007200610074002000
      610076002000010001000D000A004900440053005F00360001002000E4007200
      200072006500640061006E00200069006E006D00610074006100740001000100
      0D000A004900440053005F0037000100500061006B00650074006E0072002000
      730061006B006E00610073002E00010001000D000A00730074004F0074006800
      6500720053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A006300780047007200690064003100440042005400610062006C00
      6500560069006500770031004D00410052004B0045005200410044002E005000
      72006F0070006500720074006900650073002E0044006900730070006C006100
      790043006800650063006B006500640001005400720075006500010001000D00
      0A006300780047007200690064003100440042005400610062006C0065005600
      69006500770031004D00410052004B0045005200410044002E00500072006F00
      70006500720074006900650073002E0044006900730070006C00610079005500
      6E0063006800650063006B00650064000100460061006C007300650001000100
      0D000A006300780047007200690064003100440042005400610062006C006500
      560069006500770031004D00410052004B0045005200410044002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      6500010054006300780043006800650063006B0042006F007800500072006F00
      7000650072007400690065007300010001000D000A0063007800470072006900
      64003100440042005400610062006C0065005600690065007700310043006F00
      6C0075006D006E0041006E006700650041006E00740061006C0050006B007400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D006500010054006300780054006500780074004500640069007400
      500072006F007000650072007400690065007300010001000D000A0063007800
      47007200690064003100440042005400610062006C0065005600690065007700
      3100500041004B00450054004E0052002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4D00610073006B004500640069007400500072006F0070006500720074006900
      65007300010001000D000A006300780047007200690064003100440042005400
      610062006C006500560069006500770031004C00450056004B004F0044002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004D00610073006B0045006400690074005000
      72006F007000650072007400690065007300010001000D000A00630078004700
      7200690064003100440042005400610062006C00650056006900650077003100
      41004D0033002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004D00610073006B004500
      640069007400500072006F007000650072007400690065007300010001000D00
      0A006300780047007200690064003100440042005400610062006C0065005600
      690065007700310053005400590043004B002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004D00610073006B004500640069007400500072006F007000650072007400
      690065007300010001000D000A00630078004700720069006400310044004200
      5400610062006C00650056006900650077003100520045004700490053005400
      520045005200410054002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D0065000100540063007800440061007400
      65004500640069007400500072006F0070006500720074006900650073000100
      01000D000A006300780047007200690064003100440042005400610062006C00
      65005600690065007700310053005400590043004B005000450052004C004E00
      470044002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004D00610073006B0045006400
      69007400500072006F007000650072007400690065007300010001000D000A00
      730071005F0047006500740050006B0067004E006F005000610063006B006100
      670065004E006F002E004F0072006900670069006E0001005000610063006B00
      6100670065004E006F00010001000D000A00730071005F004700650074005000
      6B0067004E006F004C00450056004B004F0044002E004F007200690067006900
      6E0001004C00450056004B004F004400010001000D000A00730071005F004700
      6500740050006B0067004E006F005000630073005000650072004C0065006E00
      6700740068002E004F0072006900670069006E00010050006300730050006500
      72004C0065006E00670074006800010001000D000A00730071005F0047006500
      740050006B0067004E006F0041004D0033002E004F0072006900670069006E00
      010041004D003300010001000D000A00730071005F0047006500740050006B00
      67004E006F0053005400590043004B002E004F0072006900670069006E000100
      53005400590043004B00010001000D000A00730071005F004700650074005000
      6B0067004E006F00440061007400650043007200650061007400650064002E00
      4F0072006900670069006E000100440061007400650043007200650061007400
      65006400010001000D000A00730071005F0047006500740050006B0067004E00
      6F004D00610078006C0061006E00670064002E004F0072006900670069006E00
      01004D00610078006C0061006E0067006400010001000D000A00730071005F00
      47006500740050006B0067004E006F00700072006F0064007500630074006E00
      6F002E004F0072006900670069006E000100700072006F006400750063007400
      6E006F00010001000D000A00730071005F0047006500740049006E0041006300
      74006900760065005000610063006B006100670065004E006F002E004F007200
      6900670069006E0001005000610063006B006100670065004E006F0001000100
      0D000A00730071005F0047006500740049006E00410063007400690076006500
      4C00450056004B004F0044002E004F0072006900670069006E0001004C004500
      56004B004F004400010001000D000A00730071005F0047006500740049006E00
      4100630074006900760065005000630073005000650072004C0065006E006700
      740068002E004F0072006900670069006E000100500063007300500065007200
      4C0065006E00670074006800010001000D000A00730071005F00470065007400
      49006E0041006300740069007600650041004D0033002E004F00720069006700
      69006E00010041004D003300010001000D000A00730071005F00470065007400
      49006E0041006300740069007600650053005400590043004B002E004F007200
      6900670069006E00010053005400590043004B00010001000D000A0073007100
      5F0047006500740049006E004100630074006900760065004400610074006500
      43007200650061007400650064002E004F0072006900670069006E0001004400
      6100740065004300720065006100740065006400010001000D000A0073007100
      5F0047006500740049006E00410063007400690076006500500072006F006400
      7500630074004E006F002E004F0072006900670069006E000100500072006F00
      64007500630074004E006F00010001000D000A00730071005F00470065007400
      41006C006C00500072006F0064007500630074007300500072006F0064007500
      6300740044006900730070006C00610079004E0061006D0065002E004F007200
      6900670069006E000100500072006F0064007500630074004400690073007000
      6C00610079004E0061006D006500010001000D000A00730071005F0047006500
      740041006C006C00500072006F0064007500630074007300500072006F006400
      7500630074004E006F002E004F0072006900670069006E000100500072006F00
      64007500630074004E006F00010001000D000A00730071005F00470065007400
      41006C006C00500072006F006400750063007400730041006300740075006100
      6C0054006800690063006B006E006500730073004D004D002E004F0072006900
      670069006E000100410063007400750061006C0054006800690063006B006E00
      6500730073004D004D00010001000D000A00730071005F004700650074004100
      6C006C00500072006F0064007500630074007300410063007400750061006C00
      570069006400740068004D004D002E004F0072006900670069006E0001004100
      63007400750061006C00570069006400740068004D004D00010001000D000A00
      730071005F0047006500740041006C006C00500072006F006400750063007400
      7300470072006100640065004E0061006D0065002E004F007200690067006900
      6E000100470072006100640065004E0061006D006500010001000D000A007300
      71005F0047006500740041006C006C00500072006F0064007500630074007300
      53007000650063006900650073004E0061006D0065002E004F00720069006700
      69006E00010053007000650063006900650073004E0061006D00650001000100
      0D000A00730071005F0047006500740041006C006C00500072006F0064007500
      63007400730053007500720066006100630069006E0067004E0061006D006500
      2E004F0072006900670069006E00010053007500720066006100630069006E00
      67004E0061006D006500010001000D000A006300640073005F00500072006F00
      64007500630074007300500072006F0064007500630074004400690073007000
      6C00610079004E0061006D0065002E004F0072006900670069006E0001005000
      72006F00640075006300740044006900730070006C00610079004E0061006D00
      6500010001000D000A006300640073005F00500072006F006400750063007400
      7300500072006F0064007500630074004E006F002E004F007200690067006900
      6E000100500072006F0064007500630074004E006F00010001000D000A006300
      640073005F00500072006F006400750063007400730041006300740075006100
      6C0054006800690063006B006E006500730073004D004D002E004F0072006900
      670069006E000100410063007400750061006C0054006800690063006B006E00
      6500730073004D004D00010001000D000A006300640073005F00500072006F00
      64007500630074007300410063007400750061006C0057006900640074006800
      4D004D002E004F0072006900670069006E000100410063007400750061006C00
      570069006400740068004D004D00010001000D000A006300640073005F005000
      72006F0064007500630074007300470072006100640065004E0061006D006500
      2E004F0072006900670069006E000100470072006100640065004E0061006D00
      6500010001000D000A006300640073005F00500072006F006400750063007400
      730053007000650063006900650073004E0061006D0065002E004F0072006900
      670069006E00010053007000650063006900650073004E0061006D0065000100
      01000D000A006300640073005F00500072006F00640075006300740073005300
      7500720066006100630069006E0067004E0061006D0065002E004F0072006900
      670069006E00010053007500720066006100630069006E0067004E0061006D00
      6500010001000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00
      540066005000690063006B0050006B0067004E006F0054006F0072006B000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A004C006100620065006C0031000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A004C0061006200
      65006C004E006F004F00660050006B00670073004D00610072006B0065006400
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00420069007400420074006E00310001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A004200
      69007400420074006E0032000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A004C006100620065006C005000
      490050004E0061006D0065000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A004C006100620065006C003400
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A004C006100620065006C003500010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A004C006100
      620065006C0032000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00620062004D00610072006B0041006C00
      6C000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A006200620055006E004D00610072006B0041006C006C00
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00420069007400420074006E00330001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A006300
      78005300740079006C0065004D00610072006B006500640052006F0077000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00630078005300740079006C006500310001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A006300
      78005300740079006C00650032000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0063007800530074007900
      6C00650033000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00630078005300740079006C00650034000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00630078005300740079006C006500350001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A006300
      78005300740079006C00650036000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0063007800530074007900
      6C00650037000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00630078005300740079006C00650038000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00630078005300740079006C006500390001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A006300
      78005300740079006C006500310030000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A006300780053007400
      79006C006500310031000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00}
  end
end
