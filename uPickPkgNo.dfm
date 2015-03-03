object fPickPkgNo: TfPickPkgNo
  Left = 266
  Top = 123
  ActiveControl = lcProduct
  Caption = 'Plocka paketnr'
  ClientHeight = 586
  ClientWidth = 868
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
    Top = 73
    Width = 868
    Height = 454
    Align = alClient
    TabOrder = 0
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
        DataBinding.FieldName = 'PAKETNR'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 72
      end
      object cxGrid1DBTableView1LEVKOD: TcxGridDBColumn
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
        DataBinding.FieldName = 'STYCK'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Width = 70
      end
      object cxGrid1DBTableView1REGISTRERAT: TcxGridDBColumn
        Caption = 'REGISTRERAD'
        DataBinding.FieldName = 'REGISTRERAT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 112
      end
      object cxGrid1DBTableView1STYCKPERLNGD: TcxGridDBColumn
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
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 527
    Width = 868
    Height = 59
    Align = alBottom
    TabOrder = 1
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
      Left = 328
      Top = 16
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 432
      Top = 16
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 868
    Height = 73
    Align = alTop
    TabOrder = 2
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
      Left = 392
      Top = 20
      Width = 40
      Height = 13
      Caption = 'Produkt:'
    end
    object bbMarkAll: TBitBtn
      Left = 18
      Top = 37
      Width = 86
      Height = 25
      Caption = 'Markera alla'
      TabOrder = 0
      OnClick = bbMarkAllClick
    end
    object bbUnMarkAll: TBitBtn
      Left = 114
      Top = 37
      Width = 86
      Height = 25
      Caption = 'Avmarkera alla'
      TabOrder = 1
      OnClick = bbUnMarkAllClick
    end
    object lcProduct: TcxDBLookupComboBox
      Left = 440
      Top = 12
      DataBinding.DataField = 'Product'
      DataBinding.DataSource = dsFilter
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 2
      Width = 425
    end
    object BitBtn3: TBitBtn
      Left = 528
      Top = 40
      Width = 121
      Height = 25
      Caption = 'Uppdatera'
      TabOrder = 3
      Visible = False
      OnClick = BitBtn3Click
    end
    object deProductNo: TcxDBTextEdit
      Left = 728
      Top = 8
      DataBinding.DataField = 'ProductNo'
      DataBinding.DataSource = dsFilter
      TabOrder = 4
      Visible = False
      Width = 121
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
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pn.PackageNo,'
      'pn.SupplierCode AS LEVKOD,'
      'pt.productno,'
      'ptl.PcsPerLength,'
      'pt.Totalm3Actual AS AM3,'
      'pt.TotalNoOfPieces AS STYCK,'
      'pn.DateCreated'
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
    DefaultLanguage = 2
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
      'ListField')
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
      670073005F0055006E00690063006F00640065000D000A006300780047007200
      690064003100440042005400610062006C006500560069006500770031004D00
      410052004B0045005200410044002E00500072006F0070006500720074006900
      650073002E0044006900730070006C006100790043006800650063006B006500
      640001005400720075006500010001000D000A00630078004700720069006400
      3100440042005400610062006C006500560069006500770031004D0041005200
      4B0045005200410044002E00500072006F007000650072007400690065007300
      2E0044006900730070006C006100790055006E0063006800650063006B006500
      64000100460061006C0073006500010001000D000A0063007800470072006900
      64003100440042005400610062006C006500560069006500770031004D004100
      52004B0045005200410044002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780043006800
      650063006B0042006F007800500072006F007000650072007400690065007300
      010001000D000A00630078004700720069006400310044004200540061006200
      6C0065005600690065007700310043006F006C0075006D006E0041006E006700
      650041006E00740061006C0050006B0074002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      780054006500780074004500640069007400500072006F007000650072007400
      690065007300010001000D000A00630078004700720069006400310044004200
      5400610062006C00650056006900650077003100500041004B00450054004E00
      52002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004D00610073006B00450064006900
      7400500072006F007000650072007400690065007300010001000D000A006300
      780047007200690064003100440042005400610062006C006500560069006500
      770031004C00450056004B004F0044002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4D00610073006B004500640069007400500072006F0070006500720074006900
      65007300010001000D000A006300780047007200690064003100440042005400
      610062006C0065005600690065007700310041004D0033002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004D00610073006B004500640069007400500072006F007000
      650072007400690065007300010001000D000A00630078004700720069006400
      3100440042005400610062006C00650056006900650077003100530054005900
      43004B002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004D00610073006B0045006400
      69007400500072006F007000650072007400690065007300010001000D000A00
      6300780047007200690064003100440042005400610062006C00650056006900
      650077003100520045004700490053005400520045005200410054002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004400610074006500450064006900740050007200
      6F007000650072007400690065007300010001000D000A006300780047007200
      690064003100440042005400610062006C006500560069006500770031005300
      5400590043004B005000450052004C004E00470044002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004D00610073006B004500640069007400500072006F0070006500
      72007400690065007300010001000D000A00730071005F004700650074005000
      6B0067004E006F005000610063006B006100670065004E006F002E004F007200
      6900670069006E0001005000610063006B006100670065004E006F0001000100
      0D000A00730071005F0047006500740050006B0067004E006F004C0045005600
      4B004F0044002E004F0072006900670069006E0001004C00450056004B004F00
      4400010001000D000A00730071005F0047006500740050006B0067004E006F00
      5000630073005000650072004C0065006E006700740068002E004F0072006900
      670069006E0001005000630073005000650072004C0065006E00670074006800
      010001000D000A00730071005F0047006500740050006B0067004E006F004100
      4D0033002E004F0072006900670069006E00010041004D003300010001000D00
      0A00730071005F0047006500740050006B0067004E006F005300540059004300
      4B002E004F0072006900670069006E00010053005400590043004B0001000100
      0D000A00730071005F0047006500740050006B0067004E006F00440061007400
      650043007200650061007400650064002E004F0072006900670069006E000100
      44006100740065004300720065006100740065006400010001000D000A007300
      71005F0047006500740050006B0067004E006F00700072006F00640075006300
      74006E006F002E004F0072006900670069006E000100700072006F0064007500
      630074006E006F00010001000D000A00730071005F0047006500740049006E00
      4100630074006900760065005000610063006B006100670065004E006F002E00
      4F0072006900670069006E0001005000610063006B006100670065004E006F00
      010001000D000A00730071005F0047006500740049006E004100630074006900
      760065004C00450056004B004F0044002E004F0072006900670069006E000100
      4C00450056004B004F004400010001000D000A00730071005F00470065007400
      49006E004100630074006900760065005000630073005000650072004C006500
      6E006700740068002E004F0072006900670069006E0001005000630073005000
      650072004C0065006E00670074006800010001000D000A00730071005F004700
      6500740049006E0041006300740069007600650041004D0033002E004F007200
      6900670069006E00010041004D003300010001000D000A00730071005F004700
      6500740049006E0041006300740069007600650053005400590043004B002E00
      4F0072006900670069006E00010053005400590043004B00010001000D000A00
      730071005F0047006500740049006E0041006300740069007600650044006100
      7400650043007200650061007400650064002E004F0072006900670069006E00
      010044006100740065004300720065006100740065006400010001000D000A00
      730071005F0047006500740049006E0041006300740069007600650050007200
      6F0064007500630074004E006F002E004F0072006900670069006E0001005000
      72006F0064007500630074004E006F00010001000D000A00730071005F004700
      6500740041006C006C00500072006F0064007500630074007300500072006F00
      640075006300740044006900730070006C00610079004E0061006D0065002E00
      4F0072006900670069006E000100500072006F00640075006300740044006900
      730070006C00610079004E0061006D006500010001000D000A00730071005F00
      47006500740041006C006C00500072006F006400750063007400730050007200
      6F0064007500630074004E006F002E004F0072006900670069006E0001005000
      72006F0064007500630074004E006F00010001000D000A00730071005F004700
      6500740041006C006C00500072006F0064007500630074007300410063007400
      750061006C0054006800690063006B006E006500730073004D004D002E004F00
      72006900670069006E000100410063007400750061006C005400680069006300
      6B006E006500730073004D004D00010001000D000A00730071005F0047006500
      740041006C006C00500072006F00640075006300740073004100630074007500
      61006C00570069006400740068004D004D002E004F0072006900670069006E00
      0100410063007400750061006C00570069006400740068004D004D0001000100
      0D000A00730071005F0047006500740041006C006C00500072006F0064007500
      630074007300470072006100640065004E0061006D0065002E004F0072006900
      670069006E000100470072006100640065004E0061006D006500010001000D00
      0A00730071005F0047006500740041006C006C00500072006F00640075006300
      7400730053007000650063006900650073004E0061006D0065002E004F007200
      6900670069006E00010053007000650063006900650073004E0061006D006500
      010001000D000A00730071005F0047006500740041006C006C00500072006F00
      6400750063007400730053007500720066006100630069006E0067004E006100
      6D0065002E004F0072006900670069006E000100530075007200660061006300
      69006E0067004E0061006D006500010001000D000A006300640073005F005000
      72006F0064007500630074007300500072006F00640075006300740044006900
      730070006C00610079004E0061006D0065002E004F0072006900670069006E00
      0100500072006F00640075006300740044006900730070006C00610079004E00
      61006D006500010001000D000A006300640073005F00500072006F0064007500
      630074007300500072006F0064007500630074004E006F002E004F0072006900
      670069006E000100500072006F0064007500630074004E006F00010001000D00
      0A006300640073005F00500072006F0064007500630074007300410063007400
      750061006C0054006800690063006B006E006500730073004D004D002E004F00
      72006900670069006E000100410063007400750061006C005400680069006300
      6B006E006500730073004D004D00010001000D000A006300640073005F005000
      72006F0064007500630074007300410063007400750061006C00570069006400
      740068004D004D002E004F0072006900670069006E0001004100630074007500
      61006C00570069006400740068004D004D00010001000D000A00630064007300
      5F00500072006F0064007500630074007300470072006100640065004E006100
      6D0065002E004F0072006900670069006E000100470072006100640065004E00
      61006D006500010001000D000A006300640073005F00500072006F0064007500
      63007400730053007000650063006900650073004E0061006D0065002E004F00
      72006900670069006E00010053007000650063006900650073004E0061006D00
      6500010001000D000A006300640073005F00500072006F006400750063007400
      730053007500720066006100630069006E0067004E0061006D0065002E004F00
      72006900670069006E00010053007500720066006100630069006E0067004E00
      61006D006500010001000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A00540066005000690063006B0050006B0067004E006F00010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A004C00
      6100620065006C005000490050004E0061006D00650001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A004C0061006200
      65006C0034000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00630078005300740079006C0065004D00610072006B00
      6500640052006F0077000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00}
  end
end
