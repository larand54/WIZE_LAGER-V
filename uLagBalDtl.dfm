object fLagBalDtl: TfLagBalDtl
  Left = 245
  Top = 110
  Caption = 'LagBalDtl'
  ClientHeight = 696
  ClientWidth = 1258
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1258
    Height = 74
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1258
      74)
    object cxButton1: TcxButton
      Left = 16
      Top = 6
      Width = 97
      Height = 62
      Action = acExportToXLS
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 119
      Top = 6
      Width = 97
      Height = 62
      Action = acPrint
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 222
      Top = 6
      Width = 97
      Height = 62
      Action = acSaveView
      TabOrder = 2
    end
    object cxButton4: TcxButton
      Left = 1144
      Top = 6
      Width = 97
      Height = 62
      Action = acClose
      Anchors = [akTop, akRight]
      TabOrder = 3
    end
  end
  object pgMain: TcxPageControl
    Left = 0
    Top = 146
    Width = 1258
    Height = 550
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tsProduction
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ClientRectBottom = 546
    ClientRectLeft = 4
    ClientRectRight = 1254
    ClientRectTop = 4
    object tsDeliveries: TcxTabSheet
      Caption = 'Leveranser'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 21
      ExplicitWidth = 1248
      ExplicitHeight = 565
      object pivLeveranser: TcxDBPivotGrid
        Left = 0
        Top = 41
        Width = 1256
        Height = 507
        Align = alClient
        DataSource = ds_Data
        Groups = <
          item
            IsCaptionAssigned = True
            Caption = 'Utlastad'
            UniqueName = ''
          end>
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        OptionsDataField.AreaIndex = 4
        OptionsSelection.MultiSelect = True
        TabOrder = 0
        ExplicitWidth = 1248
        ExplicitHeight = 524
        object fProdukt: TcxDBPivotGridField
          AreaIndex = 2
          DataBinding.FieldName = 'Produkt'
          SortBySummaryInfo.Field = fNM3
          Visible = True
          UniqueName = 'Produkt'
        end
        object fLngd: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 6
          DataBinding.FieldName = 'L'#228'ngd'
          Visible = True
          Width = 60
          UniqueName = 'L'#228'ngd'
        end
        object fAM3: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          AllowedAreas = [faData]
          DataBinding.FieldName = 'AM3'
          SortBySummaryInfo.Field = fAM3
          SortOrder = soDescending
          Visible = True
          Width = 59
          UniqueName = 'AM3'
        end
        object fNM3: TcxDBPivotGridField
          Area = faData
          AreaIndex = 1
          AllowedAreas = [faData]
          DataBinding.FieldName = 'NM3'
          Visible = True
          Width = 57
          UniqueName = 'NM3'
        end
        object fYear: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 0
          IsCaptionAssigned = True
          Caption = #197'r'
          DataBinding.FieldName = 'Utlastad'
          GroupIndex = 0
          GroupInterval = giDateYear
          Visible = True
          UniqueName = #197'r'
        end
        object fQuarter: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 1
          IsCaptionAssigned = True
          Caption = 'Kvartal'
          DataBinding.FieldName = 'Utlastad'
          GroupIndex = 0
          GroupInterval = giDateQuarter
          Visible = True
          UniqueName = 'Kvartal'
        end
        object fMonth: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 2
          IsCaptionAssigned = True
          Caption = 'M'#229'nad'
          DataBinding.FieldName = 'Utlastad'
          GroupIndex = 0
          GroupInterval = giDateMonth
          Visible = True
          UniqueName = 'M'#229'nad'
        end
        object fWeek: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 3
          IsCaptionAssigned = True
          Caption = 'Vecka'
          DataBinding.FieldName = 'Utlastad'
          GroupIndex = 0
          GroupExpanded = False
          GroupInterval = giDateWeekOfYear
          Visible = True
          UniqueName = 'Vecka'
        end
        object fMarknad: TcxDBPivotGridField
          AreaIndex = 0
          DataBinding.FieldName = 'Marknad'
          Visible = True
          Width = 100
          UniqueName = 'Marknad'
        end
        object fLoadNo: TcxDBPivotGridField
          AreaIndex = 1
          IsCaptionAssigned = True
          Caption = 'Lastnr'
          DataBinding.FieldName = 'LoadNo'
          Visible = True
          UniqueName = 'Lastnr'
        end
        object fAT: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 0
          DataBinding.FieldName = 'AT'
          Visible = True
          Width = 50
          UniqueName = 'AT'
        end
        object fAB: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 1
          DataBinding.FieldName = 'AB'
          Visible = True
          Width = 50
          UniqueName = 'AB'
        end
        object fTS: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 2
          DataBinding.FieldName = 'TS'
          Visible = True
          Width = 50
          UniqueName = 'TS'
        end
        object fUT: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 3
          DataBinding.FieldName = 'UT'
          Visible = True
          Width = 50
          UniqueName = 'UT'
        end
        object fKV: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 4
          DataBinding.FieldName = 'KV'
          Visible = True
          Width = 50
          UniqueName = 'KV'
        end
        object fIMP: TcxDBPivotGridField
          AreaIndex = 3
          DataBinding.FieldName = 'IMP'
          Visible = True
          UniqueName = 'IMP'
        end
        object fExt_Kund: TcxDBPivotGridField
          AreaIndex = 4
          DataBinding.FieldName = 'Ext_Kund'
          Visible = True
          UniqueName = 'Ext_Kund'
        end
        object fFraktfrare: TcxDBPivotGridField
          AreaIndex = 5
          DataBinding.FieldName = 'Fraktf'#246'rare'
          Visible = True
          UniqueName = 'Fraktf'#246'rare'
        end
        object fKund: TcxDBPivotGridField
          AreaIndex = 6
          DataBinding.FieldName = 'Kund'
          Visible = True
          UniqueName = 'Kund'
        end
        object fPktNr: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 5
          DataBinding.FieldName = 'PktNr'
          Visible = True
          UniqueName = 'PktNr'
        end
        object fPrefix: TcxDBPivotGridField
          AreaIndex = 7
          DataBinding.FieldName = 'Prefix'
          Visible = True
          UniqueName = 'Prefix'
        end
        object fUtlastad: TcxDBPivotGridField
          AreaIndex = 8
          DataBinding.FieldName = 'Utlastad'
          Visible = True
          UniqueName = 'Utlastad'
        end
        object fLeverantr: TcxDBPivotGridField
          AreaIndex = 9
          DataBinding.FieldName = 'Leverant'#246'r'
          Visible = True
          UniqueName = 'Leverant'#246'r'
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1256
        Height = 41
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 1248
        object lbSortThe: TLabel
          Left = 16
          Top = 11
          Width = 37
          Height = 13
          Caption = 'Sort the'
          FocusControl = cbxSortField
        end
        object lbSortBy: TLabel
          Left = 198
          Top = 11
          Width = 33
          Height = 13
          Caption = 'field by'
          FocusControl = cbxSortByField
        end
        object cbxSortField: TcxComboBox
          Left = 62
          Top = 7
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Lastnr'
            'Produkt'
            'L'#228'ngd'
            'Marknad'
            'AT'
            'AB'
            'TS'
            'UT'
            'KV'
            'IMP')
          Properties.OnChange = cbxSortFieldPropertiesChange
          TabOrder = 0
          Width = 127
        end
        object cbxSortByField: TcxComboBox
          Left = 241
          Top = 7
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'None'
            'AM3'
            'NM3'
            'V'#228'rde'
            'M-Pris')
          Properties.OnChange = cbxSortByFieldPropertiesChange
          TabOrder = 1
          Width = 136
        end
      end
    end
    object tsProduction: TcxTabSheet
      Caption = 'Production'
      ImageIndex = 1
      object pivProduction: TcxDBPivotGrid
        Left = 0
        Top = 41
        Width = 1250
        Height = 501
        Align = alClient
        DataSource = ds_ProdData
        Groups = <
          item
            IsCaptionAssigned = True
            Caption = 'PaketID'
            UniqueName = ''
          end>
        OptionsView.ColumnGrandTotalWidth = 68
        OptionsView.RowGrandTotalWidth = 68
        Styles.Total = cxStyle2
        TabOrder = 0
        object prod_Mtpunkt: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 1
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'M'#228'tpunkt'
          Visible = True
          UniqueName = 'M'#228'tpunkt'
        end
        object prod_Verk: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 0
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Verk'
          Visible = True
          UniqueName = 'Verk'
        end
        object prod_AM3: TcxDBPivotGridField
          AreaIndex = 0
          AllowedAreas = [faFilter, faData]
          DataBinding.FieldName = 'AM3'
          Visible = True
          Width = 53
          UniqueName = 'AM3'
        end
        object prod_NM3: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          AllowedAreas = [faFilter, faData]
          DataBinding.FieldName = 'NM3'
          Visible = True
          Width = 48
          UniqueName = 'NM3'
        end
        object prod_Datum: TcxDBPivotGridField
          AreaIndex = 1
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Datum'
          Visible = True
          UniqueName = 'Datum'
        end
        object prod_PktNr: TcxDBPivotGridField
          AreaIndex = 2
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'PktNr'
          GroupIndex = 0
          Visible = True
          UniqueName = 'PktNr'
        end
        object prod_Prefix: TcxDBPivotGridField
          AreaIndex = 3
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Prefix'
          GroupIndex = 0
          GroupExpanded = False
          Visible = True
          UniqueName = 'Prefix'
        end
        object prod_Produkt: TcxDBPivotGridField
          AreaIndex = 4
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Produkt'
          Visible = True
          UniqueName = 'Produkt'
        end
        object pivProductionLoadNo: TcxDBPivotGridField
          AreaIndex = 5
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'LoadNo'
          Visible = True
          UniqueName = 'Lastnr'
        end
        object pivProductionGroupName: TcxDBPivotGridField
          AreaIndex = 6
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'GroupName'
          Visible = True
          UniqueName = 'Kategori'
        end
        object pivProductionLagerort: TcxDBPivotGridField
          AreaIndex = 7
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Lagerort'
          Visible = True
          UniqueName = 'Lagerort'
        end
        object pivProductionLagergrupp: TcxDBPivotGridField
          AreaIndex = 8
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Lagergrupp'
          Visible = True
          UniqueName = 'Lagergrupp'
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1250
        Height = 41
        Align = alTop
        TabOrder = 1
      end
      object Memo1: TMemo
        Left = 448
        Top = 152
        Width = 185
        Height = 89
        Lines.Strings = (
          'Memo1')
        TabOrder = 2
        Visible = False
      end
    end
  end
  object pnSettings: TPanel
    Left = 0
    Top = 74
    Width = 1258
    Height = 72
    Align = alTop
    TabOrder = 2
    DesignSize = (
      1258
      72)
    object lbShowTop: TLabel
      Left = 16
      Top = 46
      Width = 20
      Height = 13
      Caption = 'Visa'
      FocusControl = speTopCount
    end
    object lbValues: TLabel
      Left = 112
      Top = 46
      Width = 74
      Height = 13
      Caption = 'h'#246'gsta v'#228'rdena'
    end
    object bvSplitter: TBevel
      Left = 8
      Top = 35
      Width = 1244
      Height = 6
      Anchors = [akLeft, akTop, akRight]
      Shape = bsTopLine
      ExplicitWidth = 901
    end
    object speTopCount: TcxSpinEdit
      Left = 48
      Top = 43
      Properties.OnChange = speTopCountPropertiesChange
      TabOrder = 0
      Width = 57
    end
    object cbxTopValuesShowOthers: TcxCheckBox
      Left = 238
      Top = 42
      Caption = 'Visa '#246'vriga'
      Properties.OnChange = cbxTopValuesShowOthersPropertiesChange
      TabOrder = 1
      Width = 145
    end
    object BitBtn3: TBitBtn
      Left = 911
      Top = 9
      Width = 75
      Height = 25
      Action = acExport
      Caption = 'Exportera'
      TabOrder = 2
      Visible = False
    end
    object Edit1: TEdit
      Left = 8
      Top = 8
      Width = 889
      Height = 21
      TabOrder = 3
      Text = 'Edit1'
    end
    object Memo2: TMemo
      Left = 344
      Top = 40
      Width = 561
      Height = 25
      Lines.Strings = (
        'Memo2')
      TabOrder = 4
    end
  end
  object sq_Data2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'StartDate'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EndDate'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VerkNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SortOrder'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select distinct'
      ''
      ' CASE'
      
        ' WHEN MR.MarketRegionName is null then isNull(SSP_MR.MarketRegio' +
        'nName,'#39'Intern'#39')'
      ' ELSE'
      ' isNull(SSP_MR.MarketRegionName,'#39'Intern'#39')'
      ' END AS Marknad,'
      ''
      'Verk.SearchName AS Leverant'#246'r,'
      'Cust.ClientName '#9'AS  Kund,'
      'PG.ActualThicknessMM AS AT,'
      'PG.ActualWidthMM AS AB,'
      'S.SpeciesName AS TS,'
      'G.GradeName AS KV,'
      'Su.SurfacingName AS UT,'
      'PC.ProductCategoryName AS IMP,'
      'PL.ActualLengthMM '#9#9'AS L'#228'ngd,'
      'P.ProductDisplayName AS Produkt,'
      ''
      'Fraktforare.ClientName AS Fraktf'#246'rare,'
      'L.LoadNo,'
      'L.LoadedDate'#9#9#9'AS Utlastad,'
      'SUM(ptd.m3Actual) '#9#9'AS AM3,'
      'SUM(ptd.m3Nominal) '#9#9'AS NM3,'
      'LD.PackageNo AS PktNr,'
      'LD.SupplierCode AS Prefix,'
      'C.ClientName AS Ext_Kund'
      ''
      ''
      'FROM dbo.InvBal_Pkg inv'
      'Inner Join dbo.loads L on L.LoadNo = inv.LoadNo'
      
        'Left Outer Join dbo.Client Fraktforare on Fraktforare.ClientNo =' +
        ' L.LocalShippingCompanyNo'
      'Inner Join dbo.Client Verk on Verk.ClientNo = L.SupplierNo'
      'Inner Join dbo.Client Cust on Cust.ClientNo = L.CustomerNo'
      
        'Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo and LD.Pack' +
        'ageNo = inv.PackageNo and LD.SupplierCode = inv.SupplierCode'
      
        'Inner Join dbo.PackageType PT on PT.PackageTypeNo = LD.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeDetail PTD on PTD.PackageTypeNo = PT.P' +
        'ackageTypeNo'
      ''
      'Inner Join dbo.SupplierShippingPlan SSP'
      'Left Outer  Join dbo.Orders OH on OH.OrderNo = SSP.OrderNo'
      'Left Outer  Join dbo.Client C on C.ClientNo = OH.CustomerNo'
      
        'Left Outer  Join dbo.MarketRegion MR on MR.MarketRegionNo = C.Ma' +
        'rketRegionNo'
      
        'Left Outer Join dbo.InternalOrderHead IOH on IOH.ShippingPlanNo ' +
        '= SSP.ShippingPlanNo'
      
        'Left Outer  Join dbo.MarketRegion SSP_MR on SSP_MR.MarketRegionN' +
        'o = IOH.MarketRegionNo'
      'on SSP.SupplierShipPlanObjectNo = LD.defsspno'
      ''
      ''
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'Inner Join dbo.Product P on P.ProductNo = PT.ProductNo'
      'Inner Join dbo.Grade G on G.GradeNo = P.GradeNo'
      '                        AND G.LanguageCode = 1'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'Inner Join dbo.Species S on S.SpeciesNo = PG.SpeciesNo'
      '                        AND S.LanguageCode = 1'
      ' Inner Join dbo.Surfacing SU on SU.SurfacingNo = PG.SurfacingNo'
      '                         AND SU.LanguageCode = 1'
      
        ' Inner Join dbo.ProductCategory PC on PC.ProductCategoryNo = PG.' +
        'ProductCategoryNo'
      '                          AND PC.LanguageCode = 1'
      ''
      'WHERE inv.[InvDate] >= :StartDate'
      'AND inv.[InvDate] <= :EndDate'
      'AND inv.VerkNo  = :VerkNo'
      ''
      'AND ((inv.LIPNo = :LIPNo) or (-1 = :LIPNo))'
      'AND ((inv.PIPNo = :PIPNo) or (-1 = :PIPNo))'
      ''
      'AND SortOrder = :SortOrder'
      ''
      'Group By Verk.SearchName, PG.ActualThicknessMM,'
      'PG.ActualWidthMM,'
      'S.SpeciesName,'
      'G.GradeName,'
      'Su.SurfacingName,'
      'PC.ProductCategoryName,'
      'MR.MarketRegionName,'
      'SSP_MR.MarketRegionName,'
      'PL.ActualLengthMM,'
      'P.ProductDisplayName,'
      'Cust.ClientName,'
      'Fraktforare.ClientName,'
      'L.LoadNo,'
      'L.LoadedDate,'
      'LD.PackageNo,'
      'LD.SupplierCode,'
      'C.ClientName'
      ' '
      ' '
      ' ')
    Left = 792
    Top = 488
  end
  object dsp_Data: TDataSetProvider
    DataSet = sq_Data2
    Left = 792
    Top = 536
  end
  object ds_Data: TDataSource
    DataSet = cds_Data
    Left = 928
    Top = 304
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 88
    Top = 456
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
    object cxStyleclMaroon: TcxStyle
      AssignedValues = [svColor]
      Color = clMaroon
    end
    object cxStyleclWhite: TcxStyle
      AssignedValues = [svColor]
      Color = clGray
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object sq_UserProps2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Form'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.UserProps'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 712
    Top = 489
    object sq_UserProps2UserID: TIntegerField
      FieldName = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_UserProps2Form: TStringField
      FieldName = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object sq_UserProps2VerkNo: TIntegerField
      FieldName = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2OwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2PIPNo: TIntegerField
      FieldName = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2LIPNo: TIntegerField
      FieldName = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2InputOption: TIntegerField
      FieldName = 'InputOption'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2RegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2RegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2CopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2RunNo: TIntegerField
      FieldName = 'RunNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2ProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2AutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2SupplierCode: TStringField
      FieldName = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sq_UserProps2LengthOption: TIntegerField
      FieldName = 'LengthOption'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2LengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2NewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2SalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2MarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2OrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2Status: TIntegerField
      FieldName = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2FilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2StartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2EndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2ClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2SalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2VerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2VerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProps2LOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_UserProps: TDataSetProvider
    DataSet = sq_UserProps2
    UpdateMode = upWhereKeyOnly
    Left = 712
    Top = 537
  end
  object cds_UserProps2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_UserProps'
    Left = 712
    Top = 593
    object cds_UserProps2UserID: TIntegerField
      FieldName = 'UserID'
    end
    object cds_UserProps2Form: TStringField
      FieldName = 'Form'
      Size = 50
    end
    object cds_UserProps2VerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object cds_UserProps2OwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object cds_UserProps2PIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object cds_UserProps2LIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object cds_UserProps2InputOption: TIntegerField
      FieldName = 'InputOption'
    end
    object cds_UserProps2RegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object cds_UserProps2RegDate: TSQLTimeStampField
      FieldName = 'RegDate'
    end
    object cds_UserProps2CopyPcs: TIntegerField
      FieldName = 'CopyPcs'
    end
    object cds_UserProps2RunNo: TIntegerField
      FieldName = 'RunNo'
    end
    object cds_UserProps2ProducerNo: TIntegerField
      FieldName = 'ProducerNo'
    end
    object cds_UserProps2AutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
    end
    object cds_UserProps2SupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object cds_UserProps2LengthOption: TIntegerField
      FieldName = 'LengthOption'
    end
    object cds_UserProps2LengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
    end
    object cds_UserProps2NewItemRow: TIntegerField
      FieldName = 'NewItemRow'
    end
    object cds_UserProps2SalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object cds_UserProps2MarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
    object cds_UserProps2OrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
    end
    object cds_UserProps2Status: TIntegerField
      FieldName = 'Status'
    end
    object cds_UserProps2FilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
    end
    object cds_UserProps2StartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
    end
    object cds_UserProps2EndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
    end
    object cds_UserProps2ClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cds_UserProps2SalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
    end
    object cds_UserProps2VerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
    end
    object cds_UserProps2VerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
    end
    object cds_UserProps2LOObjectType: TIntegerField
      FieldName = 'LOObjectType'
    end
    object cds_UserProps2Verk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = cds_verk2
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'SearchName'
      KeyFields = 'VerkNo'
      Size = 80
      Lookup = True
    end
    object cds_UserProps2Mtpunkt: TStringField
      FieldKind = fkLookup
      FieldName = 'M'#228'tpunkt'
      LookupDataSet = cds_RegPoint2
      LookupKeyFields = 'RegPointNo'
      LookupResultField = 'RegPointName'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
  end
  object ds_UserProps: TDataSource
    DataSet = cds_UserProps
    Left = 856
    Top = 305
  end
  object sq_verk2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT distinct C.ClientNo, C.ClientName, C.SearchName'
      'FROM dbo.ClientRole CR'
      'Inner Join dbo.Client        C ON C.ClientNo = CR.ClientNo'
      ''
      'WHERE'
      'CR.RoleType = 9'
      'order by C.ClientName'
      ''
      ' ')
    Left = 880
    Top = 488
  end
  object dsp_verk: TDataSetProvider
    DataSet = sq_verk2
    Left = 880
    Top = 536
  end
  object cds_verk2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_verk'
    Left = 880
    Top = 592
    object cds_verk2ClientNo: TIntegerField
      FieldName = 'ClientNo'
      Required = True
    end
    object cds_verk2ClientName: TStringField
      FieldName = 'ClientName'
      Required = True
      Size = 80
    end
    object cds_verk2SearchName: TStringField
      FieldName = 'SearchName'
      Required = True
      Size = 80
    end
  end
  object ds_verk: TDataSource
    DataSet = cds_verk
    Left = 1016
    Top = 304
  end
  object ActionList1: TActionList
    Left = 88
    Top = 400
    object acClose: TAction
      Caption = 'St'#228'ng'
      OnExecute = acCloseExecute
    end
    object acExport: TAction
      Caption = 'Exportera'
      OnExecute = acExportExecute
    end
    object acExportToXLS: TAction
      Caption = 'Exporta till XLS'
      OnExecute = acExportToXLSExecute
    end
    object acPrint: TAction
      Caption = 'Skriv ut'
      OnExecute = acPrintExecute
    end
    object acSendToAllMills: TAction
      Caption = 'acSendToAllMills'
    end
    object acSaveView: TAction
      Caption = 'Spara vy'
      OnExecute = acSaveViewExecute
    end
    object acLoadView: TAction
      Caption = #214'ppna vy'
      OnExecute = acLoadViewExecute
    end
  end
  object sq_ProdData2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'StartPeriod'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EndPeriod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Operation'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductionUnitNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LIPNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select distinct PU.RegPointName AS M'#228'tpunkt,'
      'CONVERT(CHAR(10),pp.ProductionDate, 110) AS Datum,'
      ''
      'Verk.SearchName AS Verk,'
      'PG.ActualThicknessMM AS AT,'
      'PG.ActualWidthMM AS AB,'
      'S.SpeciesName AS TS,'
      'G.GradeName AS KV,'
      'Su.SurfacingName AS UT,'
      'PC.ProductCategoryName AS IMP,'
      'PL.ActualLengthMM '#9#9'AS L'#228'ngd,'
      'P.ProductDisplayName AS Produkt,'
      ''
      'SUM(PTD.m3Actual) '#9#9'AS AM3,'
      'SUM(PTD.m3Nominal) '#9#9'AS NM3,'
      'SUM(PTD.LinealMeterActualLength) '#9#9'AS LPM,'
      'SUM(PTD.NoOfPieces)'#9#9'AS STYCK,'
      ''
      'PP.PackageNo AS PktNr,'
      'PP.SupplierCode AS Prefix'
      ''
      ''
      'FROM dbo.Package_Production pp'
      
        'Inner Join dbo.RegistrationPoint PU ON PU.RegPointNo = pp.Produc' +
        'tionUnitNo'
      ''
      
        'Inner Join dbo.LogicalInventoryPoint LIP on lip.LogicalInventory' +
        'PointNo = pp.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      ''
      'Inner Join dbo.Client Verk on Verk.ClientNo = pp.SupplierNo'
      
        'Inner Join dbo.PackageType PT on PT.PackageTypeNo = pp.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeDetail PTD on PTD.PackageTypeNo = PT.P' +
        'ackageTypeNo'
      ''
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'Inner Join dbo.Product P on P.ProductNo = PT.ProductNo'
      'Inner Join dbo.Grade G on G.GradeNo = P.GradeNo'
      '                        AND G.LanguageCode = 1'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'Inner Join dbo.Species S on S.SpeciesNo = PG.SpeciesNo'
      '                        AND S.LanguageCode = 1'
      'Inner Join dbo.Surfacing SU on SU.SurfacingNo = PG.SurfacingNo'
      '                        AND SU.LanguageCode = 1'
      
        'Inner Join dbo.ProductCategory PC on PC.ProductCategoryNo = PG.P' +
        'roductCategoryNo'
      '                        AND PC.LanguageCode = 1'
      ''
      'WHERE'
      'pp.ProductionDate >= :StartPeriod'
      'AND pp.ProductionDate <= :EndPeriod'
      'AND PIP.OwnerNo  = :OwnerNo'
      'AND pp.Operation = :Operation'
      'AND pp.ProductionUnitNo = :ProductionUnitNo'
      '-- AND LIP.PhysicalInventoryPointNo = 10053'
      'AND ((LIP.PhysicalInventoryPointNo = :PIPNo) or (-1 = :PIPNo))'
      'AND ((pp.LogicalInventoryPointNo = :LIPNo) or (-1 = :LIPNo))'
      ''
      ''
      'Group By '
      'Verk.SearchName, '
      'PG.ActualThicknessMM,'
      'PG.ActualWidthMM,'
      'S.SpeciesName,'
      'G.GradeName,'
      'Su.SurfacingName,'
      'PC.ProductCategoryName,'
      'PL.ActualLengthMM,'
      'P.ProductDisplayName,'
      'PP.PackageNo,'
      'PP.SupplierCode,'
      'CONVERT(CHAR(10),pp.ProductionDate, 110),'
      'PU.RegPointName'
      ''
      ' '
      ' '
      'Order By PP.PackageNo')
    Left = 992
    Top = 488
  end
  object dsp_ProdData: TDataSetProvider
    DataSet = sq_ProdData2
    Left = 992
    Top = 528
  end
  object cds_ProdData2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_ProdData'
    Left = 992
    Top = 592
    object cds_ProdData2Verk: TStringField
      FieldName = 'Verk'
      Size = 80
    end
    object cds_ProdData2Mtpunkt: TStringField
      FieldName = 'M'#228'tpunkt'
      FixedChar = True
      Size = 30
    end
    object cds_ProdData2AM3: TFloatField
      FieldName = 'AM3'
      DisplayFormat = '#,###,###.0'
    end
    object cds_ProdData2NM3: TFloatField
      FieldName = 'NM3'
      DisplayFormat = '#,###,###.0'
    end
    object cds_ProdData2STYCK: TIntegerField
      FieldName = 'STYCK'
    end
    object cds_ProdData2LPM: TFloatField
      FieldName = 'LPM'
      DisplayFormat = '#,###,###.0'
    end
    object cds_ProdData2Datum: TStringField
      FieldName = 'Datum'
      FixedChar = True
      Size = 10
    end
    object cds_ProdData2AT: TFloatField
      FieldName = 'AT'
    end
    object cds_ProdData2AB: TFloatField
      FieldName = 'AB'
    end
    object cds_ProdData2TS: TStringField
      FieldName = 'TS'
      Size = 30
    end
    object cds_ProdData2KV: TStringField
      FieldName = 'KV'
      FixedChar = True
      Size = 30
    end
    object cds_ProdData2UT: TStringField
      FieldName = 'UT'
      Size = 30
    end
    object cds_ProdData2IMP: TStringField
      FieldName = 'IMP'
    end
    object cds_ProdData2Lngd: TFloatField
      FieldName = 'L'#228'ngd'
    end
    object cds_ProdData2Produkt: TStringField
      FieldName = 'Produkt'
      Size = 100
    end
    object cds_ProdData2PktNr: TIntegerField
      FieldName = 'PktNr'
    end
    object cds_ProdData2Prefix: TStringField
      FieldName = 'Prefix'
      FixedChar = True
      Size = 3
    end
  end
  object ds_ProdData: TDataSource
    DataSet = cds_ProdData
    Left = 664
    Top = 312
  end
  object sq_RegPoint2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'Select distinct rp.RegPointName, rp.RegPointNo FROM dbo.Registra' +
        'tionPoint rp'
      ''
      'Order By rp.RegPointName'
      ' ')
    Left = 1168
    Top = 533
  end
  object dsp_RegPoint: TDataSetProvider
    DataSet = sq_RegPoint2
    Left = 1168
    Top = 589
  end
  object cds_RegPoint2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_RegPoint'
    Left = 1168
    Top = 637
    object cds_RegPoint2RegPointName: TStringField
      FieldName = 'RegPointName'
      FixedChar = True
      Size = 30
    end
    object cds_RegPoint2RegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
  end
  object ds_RegPoint: TDataSource
    DataSet = cds_RegPoint
    Left = 1192
    Top = 301
  end
  object SaveDialog1: TSaveDialog
    Left = 472
    Top = 453
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link3
    Version = 0
    Left = 472
    Top = 397
    object dxComponentPrinter1Link1: TcxPivotGridReportLink
      Active = True
      Component = pivLeveranser
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Leveranser'
      ReportDocument.CreationDate = 42026.644933564810000000
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.RowFields = False
      StyleRepository = cxStyleRepository2
      Styles.StyleSheet = cxPivotGridReportLinkStyleSheet1
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TcxPivotGridReportLink
      Active = True
      Component = pivProduction
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Produktion'
      ReportDocument.CreationDate = 42026.644933576390000000
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.RowFields = False
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link3: TcxPivotGridReportLink
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Torksatser'
      ReportDocument.CreationDate = 39288.023007384260000000
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.RowFields = False
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 472
    Top = 504
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
    end
    object cxPivotGridReportLinkStyleSheet1: TcxPivotGridReportLinkStyleSheet
      Caption = 'Unnamed <1>'
      Styles.ColumnHeader = cxStyle3
      Styles.Content = cxStyle4
      Styles.FieldHeader = cxStyle5
      Styles.HeaderBackground = cxStyle6
      Styles.RowHeader = cxStyle7
      BuiltIn = True
    end
  end
  object cds_Data2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Data'
    Left = 793
    Top = 594
    object cds_Data2Marknad: TStringField
      FieldName = 'Marknad'
      FixedChar = True
      Size = 10
    end
    object cds_Data2Leverantr: TStringField
      FieldName = 'Leverant'#246'r'
      Size = 80
    end
    object cds_Data2Kund: TStringField
      FieldName = 'Kund'
      Size = 80
    end
    object cds_Data2AT: TFloatField
      FieldName = 'AT'
    end
    object cds_Data2AB: TFloatField
      FieldName = 'AB'
    end
    object cds_Data2TS: TStringField
      FieldName = 'TS'
      Size = 30
    end
    object cds_Data2KV: TStringField
      FieldName = 'KV'
      FixedChar = True
      Size = 30
    end
    object cds_Data2UT: TStringField
      FieldName = 'UT'
      Size = 30
    end
    object cds_Data2IMP: TStringField
      FieldName = 'IMP'
    end
    object cds_Data2Lngd: TFloatField
      FieldName = 'L'#228'ngd'
    end
    object cds_Data2Produkt: TStringField
      FieldName = 'Produkt'
      Size = 100
    end
    object cds_Data2Fraktfrare: TStringField
      FieldName = 'Fraktf'#246'rare'
      Size = 80
    end
    object cds_Data2LoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object cds_Data2Utlastad: TSQLTimeStampField
      FieldName = 'Utlastad'
    end
    object cds_Data2AM3: TFloatField
      FieldName = 'AM3'
    end
    object cds_Data2NM3: TFloatField
      FieldName = 'NM3'
    end
    object cds_Data2PktNr: TIntegerField
      FieldName = 'PktNr'
    end
    object cds_Data2Prefix: TStringField
      FieldName = 'Prefix'
      FixedChar = True
      Size = 3
    end
    object cds_Data2Ext_Kund: TStringField
      FieldName = 'Ext_Kund'
      Size = 80
    end
  end
  object sq_CSDLev22: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'StartDate'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EndDate'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VerkNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PIPNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SortOrder'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select distinct'
      ''
      'isNull(MR.MarketRegionName,'#39'Intern'#39') AS Marknad,'
      ''
      'Verk.SearchName AS Leverant'#246'r,'
      'Cust.ClientName '#9'AS  Kund,'
      'PG.ActualThicknessMM AS AT,'
      'PG.ActualWidthMM AS AB,'
      'S.SpeciesName AS TS,'
      'G.GradeName AS KV,'
      'Su.SurfacingName AS UT,'
      'PC.ProductCategoryName AS IMP,'
      'PL.ActualLengthMM '#9#9'AS L'#228'ngd,'
      'P.ProductDisplayName AS Produkt,'
      ''
      'Fraktforare.ClientName AS Fraktf'#246'rare,'
      'L.LoadNo,'
      'L.LoadedDate'#9#9#9'AS Utlastad,'
      'SUM(ptd.m3Actual) '#9#9'AS AM3,'
      'SUM(ptd.m3Nominal) '#9#9'AS NM3,'
      'LD.PackageNo AS PktNr,'
      'LD.SupplierCode AS Prefix,'
      'C.ClientName AS Ext_Kund'
      ''
      ''
      'FROM dbo.InvBal_Pkg inv'
      'Inner Join dbo.loads L on L.LoadNo = inv.LoadNo'
      
        'Left Outer Join dbo.Client Fraktforare on Fraktforare.ClientNo =' +
        ' L.LocalShippingCompanyNo'
      'Inner Join dbo.Client Verk on Verk.ClientNo = L.SupplierNo'
      'Inner Join dbo.Client Cust on Cust.ClientNo = L.CustomerNo'
      
        'Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo and LD.Pack' +
        'ageNo = inv.PackageNo and LD.SupplierCode = inv.SupplierCode'
      
        'Inner Join dbo.PackageType PT on PT.PackageTypeNo = LD.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeDetail PTD on PTD.PackageTypeNo = PT.P' +
        'ackageTypeNo'
      ''
      'Inner Join dbo.CustomerShippingPlanDetails SSP'
      'Left Outer  Join dbo.Orders OH on OH.OrderNo = SSP.OrderNo'
      'Left Outer  Join dbo.Client C on C.ClientNo = OH.CustomerNo'
      
        'Left Outer  Join dbo.MarketRegion MR on MR.MarketRegionNo = C.Ma' +
        'rketRegionNo'
      
        '-- Left Outer Join dbo.InternalOrderHead IOH on IOH.ShippingPlan' +
        'No = SSP.ShippingPlanNo'
      
        '-- Left Outer  Join dbo.MarketRegion SSP_MR on SSP_MR.MarketRegi' +
        'onNo = IOH.MarketRegionNo'
      'on SSP.CustShipPlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      ''
      ''
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'Inner Join dbo.Product P on P.ProductNo = PT.ProductNo'
      'Inner Join dbo.Grade G on G.GradeNo = P.GradeNo'
      '                        AND G.LanguageCode = 1'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'Inner Join dbo.Species S on S.SpeciesNo = PG.SpeciesNo'
      '                        AND S.LanguageCode = 1'
      ' Inner Join dbo.Surfacing SU on SU.SurfacingNo = PG.SurfacingNo'
      '                         AND SU.LanguageCode = 1'
      
        ' Inner Join dbo.ProductCategory PC on PC.ProductCategoryNo = PG.' +
        'ProductCategoryNo'
      '                          AND PC.LanguageCode = 1'
      ''
      'WHERE inv.[InvDate] >= :StartDate'
      'AND inv.[InvDate] <= :EndDate'
      'AND inv.VerkNo  = :VerkNo'
      ''
      'AND ((inv.LIPNo = :LIPNo) or (-1 = :LIPNo))'
      'AND ((inv.PIPNo = :PIPNo) or (-1 = :PIPNo))'
      ''
      'AND SortOrder = :SortOrder'
      ''
      'Group By Verk.SearchName, PG.ActualThicknessMM,'
      'PG.ActualWidthMM,'
      'S.SpeciesName,'
      'G.GradeName,'
      'Su.SurfacingName,'
      'PC.ProductCategoryName,'
      'MR.MarketRegionName,'
      '-- SSP_MR.MarketRegionName,'
      'PL.ActualLengthMM,'
      'P.ProductDisplayName,'
      'Cust.ClientName,'
      'Fraktforare.ClientName,'
      'L.LoadNo,'
      'L.LoadedDate,'
      'LD.PackageNo,'
      'LD.SupplierCode,'
      'C.ClientName'
      ''
      ''
      '')
    Left = 88
    Top = 312
  end
  object sq_CSDLev: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct'
      ''
      'isNull(MR.MarketRegionName,'#39'Intern'#39') AS Marknad,'
      ''
      'Verk.SearchName AS Leverant'#246'r,'
      'Cust.ClientName '#9'AS  Kund,'
      'PG.ActualThicknessMM AS AT,'
      'PG.ActualWidthMM AS AB,'
      'S.SpeciesName AS TS,'
      'G.GradeName AS KV,'
      'Su.SurfacingName AS UT,'
      'PC.ProductCategoryName AS IMP,'
      'PL.ActualLengthMM '#9#9'AS L'#228'ngd,'
      'P.ProductDisplayName AS Produkt,'
      ''
      'Fraktforare.ClientName AS Fraktf'#246'rare,'
      'L.LoadNo,'
      'L.LoadedDate'#9#9#9'AS Utlastad,'
      'SUM(ptd.m3Actual) '#9#9'AS AM3,'
      'SUM(ptd.m3Nominal) '#9#9'AS NM3,'
      'LD.PackageNo AS PktNr,'
      'LD.SupplierCode AS Prefix,'
      'C.ClientName AS Ext_Kund'
      ''
      ''
      'FROM dbo.InvBal_Pkg inv'
      'Inner Join dbo.loads L on L.LoadNo = inv.LoadNo'
      
        'Left Outer Join dbo.Client Fraktforare on Fraktforare.ClientNo =' +
        ' L.LocalShippingCompanyNo'
      'Inner Join dbo.Client Verk on Verk.ClientNo = L.SupplierNo'
      'Inner Join dbo.Client Cust on Cust.ClientNo = L.CustomerNo'
      
        'Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo and LD.Pack' +
        'ageNo = inv.PackageNo and LD.SupplierCode = inv.SupplierCode'
      
        'Inner Join dbo.PackageType PT on PT.PackageTypeNo = LD.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeDetail PTD on PTD.PackageTypeNo = PT.P' +
        'ackageTypeNo'
      ''
      'Inner Join dbo.CustomerShippingPlanDetails SSP'
      'Left Outer  Join dbo.Orders OH on OH.OrderNo = SSP.OrderNo'
      'Left Outer  Join dbo.Client C on C.ClientNo = OH.CustomerNo'
      
        'Left Outer  Join dbo.MarketRegion MR on MR.MarketRegionNo = C.Ma' +
        'rketRegionNo'
      
        '-- Left Outer Join dbo.InternalOrderHead IOH on IOH.ShippingPlan' +
        'No = SSP.ShippingPlanNo'
      
        '-- Left Outer  Join dbo.MarketRegion SSP_MR on SSP_MR.MarketRegi' +
        'onNo = IOH.MarketRegionNo'
      'on SSP.CustShipPlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      ''
      ''
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'Inner Join dbo.Product P on P.ProductNo = PT.ProductNo'
      'Inner Join dbo.Grade G on G.GradeNo = P.GradeNo'
      '                        AND G.LanguageCode = 1'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'Inner Join dbo.Species S on S.SpeciesNo = PG.SpeciesNo'
      '                        AND S.LanguageCode = 1'
      ' Inner Join dbo.Surfacing SU on SU.SurfacingNo = PG.SurfacingNo'
      '                         AND SU.LanguageCode = 1'
      
        ' Inner Join dbo.ProductCategory PC on PC.ProductCategoryNo = PG.' +
        'ProductCategoryNo'
      '                          AND PC.LanguageCode = 1'
      ''
      'WHERE inv.[InvDate] >= :StartDate'
      'AND inv.[InvDate] <= :EndDate'
      'AND inv.VerkNo  = :VerkNo'
      ''
      'AND ((inv.LIPNo = :LIPNo) or (-1 = :LIPNo))'
      'AND ((inv.PIPNo = :PIPNo) or (-1 = :PIPNo))'
      ''
      'AND SortOrder = :SortOrder'
      ''
      'Group By Verk.SearchName, PG.ActualThicknessMM,'
      'PG.ActualWidthMM,'
      'S.SpeciesName,'
      'G.GradeName,'
      'Su.SurfacingName,'
      'PC.ProductCategoryName,'
      'MR.MarketRegionName,'
      '-- SSP_MR.MarketRegionName,'
      'PL.ActualLengthMM,'
      'P.ProductDisplayName,'
      'Cust.ClientName,'
      'Fraktforare.ClientName,'
      'L.LoadNo,'
      'L.LoadedDate,'
      'LD.PackageNo,'
      'LD.SupplierCode,'
      'C.ClientName')
    Left = 744
    Top = 256
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
        Name = 'VERKNO'
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
      end
      item
        Name = 'SORTORDER'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_RegPoint: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct rp.RegPointName, rp.RegPointNo '
      'FROM dbo.RegistrationPoint rp'
      'Order By rp.RegPointName')
    Left = 1192
    Top = 248
    object cds_RegPointRegPointName: TStringField
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      FixedChar = True
      Size = 30
    end
    object cds_RegPointRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_ProdData: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct'
      ' pp.Item AS M'#228'tpunkt,'
      'CONVERT(CHAR(10),pp.InvDate, 110) AS Datum,'
      'Verk.SearchName AS Verk,'
      'P.ProductDisplayName AS Produkt,'
      'pp.AM3 '#9#9'AS AM3,'
      'pp.NM3 '#9#9'AS NM3,'
      'PP.PackageNo AS PktNr,'
      'PP.SupplierCode AS Prefix,'
      'PP.LoadNo,'
      'PP.GroupName,'
      'cy.CityName AS Lagerort,'
      'LIP.LogicalInventoryName AS Lagergrupp'
      ''
      ''
      ''
      'FROM dbo.InvBal_PKG pp'
      ''
      
        'Inner Join dbo.LogicalInventoryPoint LIP on lip.LogicalInventory' +
        'PointNo = pp.LIPNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner join dbo.City cy on cy.CityNo = PIP.PhyInvPointNameNo'
      'Inner Join dbo.Client Verk on Verk.ClientNo = pp.VerkNo'
      'Inner Join dbo.Product P on P.ProductNo = pp.ProductNo'
      ''
      'WHERE'
      'pp.InvDate >= :StartPeriod'
      'AND pp.InvDate <= :EndPeriod'
      'AND PIP.OwnerNo  = :OwnerNo'
      'AND pp.SortOrder = :SortOrder'
      'AND ((PP.PIPNo = :PIPNo) or (-1 = :PIPNo))'
      'AND ((pp.LIPNo = :LIPNo) or (-1 = :LIPNo))'
      ''
      'Order By PP.PackageNo')
    Left = 664
    Top = 256
    ParamData = <
      item
        Name = 'STARTPERIOD'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ENDPERIOD'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SORTORDER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProdDataVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      Size = 80
    end
    object cds_ProdDataMätpunkt: TStringField
      FieldName = 'M'#228'tpunkt'
      Origin = '[M'#228'tpunkt]'
      FixedChar = True
      Size = 30
    end
    object cds_ProdDataAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
    object cds_ProdDataNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
    end
    object cds_ProdDataDatum: TStringField
      FieldName = 'Datum'
      Origin = 'Datum'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object cds_ProdDataProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 150
    end
    object cds_ProdDataPktNr: TIntegerField
      FieldName = 'PktNr'
      Origin = 'PktNr'
      Required = True
    end
    object cds_ProdDataPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_ProdDataLoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
    end
    object cds_ProdDataGroupName: TStringField
      DisplayLabel = 'Kategori'
      FieldName = 'GroupName'
      Origin = 'GroupName'
    end
    object cds_ProdDataLagerort: TStringField
      FieldName = 'Lagerort'
      Origin = 'Lagerort'
      Size = 50
    end
    object cds_ProdDataLagergrupp: TStringField
      FieldName = 'Lagergrupp'
      Origin = 'Lagergrupp'
      Size = 50
    end
  end
  object cds_verk: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct C.ClientNo, C.ClientName, C.SearchName'
      'FROM dbo.ClientRole CR'
      'Inner Join dbo.Client        C ON C.ClientNo = CR.ClientNo'
      ''
      'WHERE'
      'CR.RoleType = 9'
      'order by C.ClientName')
    Left = 1016
    Top = 248
    object cds_verkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_verkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_verkSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object cds_Data: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct'
      ''
      ' CASE'
      
        ' WHEN MR.MarketRegionName is null then isNull(SSP_MR.MarketRegio' +
        'nName,'#39'Intern'#39')'
      ' ELSE'
      ' isNull(SSP_MR.MarketRegionName,'#39'Intern'#39')'
      ' END AS Marknad,'
      ''
      'Verk.SearchName AS Leverant'#246'r,'
      'Cust.ClientName '#9'AS  Kund,'
      'PG.ActualThicknessMM AS AT,'
      'PG.ActualWidthMM AS AB,'
      'S.SpeciesName AS TS,'
      'G.GradeName AS KV,'
      'Su.SurfacingName AS UT,'
      'PC.ProductCategoryName AS IMP,'
      'PL.ActualLengthMM '#9#9'AS L'#228'ngd,'
      'P.ProductDisplayName AS Produkt,'
      ''
      'Fraktforare.ClientName AS Fraktf'#246'rare,'
      'L.LoadNo,'
      'L.LoadedDate'#9#9#9'AS Utlastad,'
      'SUM(ptd.m3Actual) '#9#9'AS AM3,'
      'SUM(ptd.m3Nominal) '#9#9'AS NM3,'
      'LD.PackageNo AS PktNr,'
      'LD.SupplierCode AS Prefix,'
      'C.ClientName AS Ext_Kund'
      ''
      ''
      'FROM dbo.InvBal_Pkg inv'
      'Inner Join dbo.loads L on L.LoadNo = inv.LoadNo'
      
        'Left Outer Join dbo.Client Fraktforare on Fraktforare.ClientNo =' +
        ' L.LocalShippingCompanyNo'
      'Inner Join dbo.Client Verk on Verk.ClientNo = L.SupplierNo'
      'Inner Join dbo.Client Cust on Cust.ClientNo = L.CustomerNo'
      
        'Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo and LD.Pack' +
        'ageNo = inv.PackageNo and LD.SupplierCode = inv.SupplierCode'
      
        'Inner Join dbo.PackageType PT on PT.PackageTypeNo = LD.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeDetail PTD on PTD.PackageTypeNo = PT.P' +
        'ackageTypeNo'
      ''
      'Inner Join dbo.SupplierShippingPlan SSP'
      'Left Outer  Join dbo.Orders OH on OH.OrderNo = SSP.OrderNo'
      'Left Outer  Join dbo.Client C on C.ClientNo = OH.CustomerNo'
      
        'Left Outer  Join dbo.MarketRegion MR on MR.MarketRegionNo = C.Ma' +
        'rketRegionNo'
      
        'Left Outer Join dbo.InternalOrderHead IOH on IOH.ShippingPlanNo ' +
        '= SSP.ShippingPlanNo'
      
        'Left Outer  Join dbo.MarketRegion SSP_MR on SSP_MR.MarketRegionN' +
        'o = IOH.MarketRegionNo'
      'on SSP.SupplierShipPlanObjectNo = LD.defsspno'
      ''
      ''
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'Inner Join dbo.Product P on P.ProductNo = PT.ProductNo'
      'Inner Join dbo.Grade G on G.GradeNo = P.GradeNo'
      '                        AND G.LanguageCode = 1'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'Inner Join dbo.Species S on S.SpeciesNo = PG.SpeciesNo'
      '                        AND S.LanguageCode = 1'
      ' Inner Join dbo.Surfacing SU on SU.SurfacingNo = PG.SurfacingNo'
      '                         AND SU.LanguageCode = 1'
      
        ' Inner Join dbo.ProductCategory PC on PC.ProductCategoryNo = PG.' +
        'ProductCategoryNo'
      '                          AND PC.LanguageCode = 1'
      ''
      'WHERE inv.[InvDate] >= :StartDate'
      'AND inv.[InvDate] <= :EndDate'
      'AND inv.VerkNo  = :VerkNo'
      ''
      'AND ((inv.LIPNo = :LIPNo) or (-1 = :LIPNo))'
      'AND ((inv.PIPNo = :PIPNo) or (-1 = :PIPNo))'
      ''
      'AND SortOrder = :SortOrder'
      ''
      'Group By Verk.SearchName, PG.ActualThicknessMM,'
      'PG.ActualWidthMM,'
      'S.SpeciesName,'
      'G.GradeName,'
      'Su.SurfacingName,'
      'PC.ProductCategoryName,'
      'MR.MarketRegionName,'
      'SSP_MR.MarketRegionName,'
      'PL.ActualLengthMM,'
      'P.ProductDisplayName,'
      'Cust.ClientName,'
      'Fraktforare.ClientName,'
      'L.LoadNo,'
      'L.LoadedDate,'
      'LD.PackageNo,'
      'LD.SupplierCode,'
      'C.ClientName')
    Left = 928
    Top = 248
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
        Name = 'VERKNO'
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
      end
      item
        Name = 'SORTORDER'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_DataMarknad: TStringField
      FieldName = 'Marknad'
      Origin = 'Marknad'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 10
    end
    object cds_DataLeverantör: TStringField
      FieldName = 'Leverant'#246'r'
      Origin = '[Leverant'#246'r]'
      Size = 80
    end
    object cds_DataKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      Size = 80
    end
    object cds_DataAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object cds_DataAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object cds_DataTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      Required = True
      Size = 30
    end
    object cds_DataKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_DataUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      Required = True
      Size = 30
    end
    object cds_DataIMP: TStringField
      FieldName = 'IMP'
      Origin = 'IMP'
      Required = True
      Size = 40
    end
    object cds_DataLängd: TFloatField
      FieldName = 'L'#228'ngd'
      Origin = '[L'#228'ngd]'
      Required = True
    end
    object cds_DataProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 150
    end
    object cds_DataFraktförare: TStringField
      FieldName = 'Fraktf'#246'rare'
      Origin = '[Fraktf'#246'rare]'
      Size = 80
    end
    object cds_DataLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      Required = True
    end
    object cds_DataUtlastad: TSQLTimeStampField
      FieldName = 'Utlastad'
      Origin = 'Utlastad'
    end
    object cds_DataAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
    object cds_DataNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
    end
    object cds_DataPktNr: TIntegerField
      FieldName = 'PktNr'
      Origin = 'PktNr'
      Required = True
    end
    object cds_DataPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      FixedChar = True
      Size = 3
    end
    object cds_DataExt_Kund: TStringField
      FieldName = 'Ext_Kund'
      Origin = 'Ext_Kund'
      Size = 80
    end
  end
  object cds_UserProps: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.UserProps'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 856
    Top = 248
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_UserPropsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_UserPropsForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_UserPropsVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
    object cds_UserPropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_UserPropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object cds_UserPropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_UserPropsInputOption: TIntegerField
      FieldName = 'InputOption'
      Origin = 'InputOption'
    end
    object cds_UserPropsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
    end
    object cds_UserPropsRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      Origin = 'RegDate'
    end
    object cds_UserPropsCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
    end
    object cds_UserPropsRunNo: TIntegerField
      FieldName = 'RunNo'
      Origin = 'RunNo'
    end
    object cds_UserPropsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
    end
    object cds_UserPropsAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      Origin = 'AutoColWidth'
    end
    object cds_UserPropsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      Size = 3
    end
    object cds_UserPropsLengthOption: TIntegerField
      FieldName = 'LengthOption'
      Origin = 'LengthOption'
    end
    object cds_UserPropsLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      Origin = 'LengthGroupNo'
    end
    object cds_UserPropsNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      Origin = 'NewItemRow'
    end
    object cds_UserPropsSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_UserPropsMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
    object cds_UserPropsOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
      Origin = 'OrderTypeNo'
    end
    object cds_UserPropsStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_UserPropsFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
      Origin = 'FilterOrderDate'
    end
    object cds_UserPropsStartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
    end
    object cds_UserPropsEndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
    end
    object cds_UserPropsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_UserPropsSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
      Origin = 'SalesPersonNo'
    end
    object cds_UserPropsVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
      Origin = 'VerkSupplierNo'
    end
    object cds_UserPropsVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
      Origin = 'VerkKundNo'
    end
    object cds_UserPropsLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
    end
    object cds_UserPropsBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
    end
    object cds_UserPropsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
    end
    object cds_UserPropsVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
    end
    object cds_UserPropsLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
      Origin = 'LengthFormatNo'
    end
    object cds_UserPropsLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
      Origin = 'LengthVolUnitNo'
    end
    object cds_UserPropsGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
      Origin = 'GroupByBox'
    end
    object cds_UserPropsGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
      Origin = 'GroupSummary'
    end
    object cds_UserPropsAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
    end
    object cds_UserPropsLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
    end
    object cds_UserPropsShipperNo: TIntegerField
      FieldName = 'ShipperNo'
      Origin = 'ShipperNo'
    end
    object cds_UserPropsBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
    end
    object cds_UserPropsCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cds_UserPropsShowProduct: TIntegerField
      FieldName = 'ShowProduct'
      Origin = 'ShowProduct'
    end
    object cds_UserPropsName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      Size = 50
    end
    object cds_UserPropsFilter1: TStringField
      FieldName = 'Filter1'
      Origin = 'Filter1'
      Size = 50
    end
    object cds_UserPropsFilter2: TStringField
      FieldName = 'Filter2'
      Origin = 'Filter2'
      Size = 255
    end
    object cds_UserPropsVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = cds_verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'SearchName'
      KeyFields = 'VerkNo'
      Size = 80
      Lookup = True
    end
    object cds_UserPropsMätpunkt: TStringField
      FieldKind = fkLookup
      FieldName = 'M'#228'tpunkt'
      LookupDataSet = cds_RegPoint
      LookupKeyFields = 'RegPointNo'
      LookupResultField = 'RegPointName'
      KeyFields = 'RegPointNo'
      Size = 50
      Lookup = True
    end
  end
  object cds_IB: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      '/****** Script for SelectTopNRows command from SSMS  ******/'
      'SELECT DISTINCT'
      ' '#39'Ing.Balans'#39' AS M'#228'tpunkt,'
      'CONVERT(CHAR(10),ic.MaxDatum, 110) AS Datum,'
      'Verk.SearchName AS Verk,'
      'P.ProductDisplayName AS Produkt,'
      'pt.Totalm3Actual AS AM3,'
      'pt.Totalm3Nominal AS NM3,'
      'iro.PackageNo AS Pktnr,'
      'iro.Suppliercode AS Prefix,'
      '0 AS LoadNo,'
      #39'ING'#197'ENDE BALANS'#39' AS GroupName,'
      'cy.CityName AS Lagerort,'
      'LIP.LogicalInventoryName AS Lagergrupp'
      ''
      '  FROM [dbo].[IC_grpAct] icg'
      
        '  inner join dbo.LogicalInventoryPoint lip on lip.LogicalInvento' +
        'ryPointNo = icg.LIPNo'
      
        '  inner join dbo.PhysicalInventoryPoint pip on pip.PhysicalInven' +
        'toryPointNo = lip.PhysicalInventoryPointNo'
      '  Inner join dbo.City cy on cy.CityNo = pip.PhyInvPointNameNo'
      
        '  inner join dbo.InvenRow iro on iro.LogicalInventoryPointNo = i' +
        'cg.LIPNo'
      '  and iro.IC_GrpNo = icg.IC_grpNo'
      '  inner join dbo.InvControlGrp ic on ic.IC_grpno = iro.IC_GrpNo'
      '  inner join dbo.Client verk on verk.ClientNo = ic.VerkNo'
      
        '  Inner Join dbo.PackageType PT on PT.PackageTypeNo = iro.Packag' +
        'eTypeNo'
      
        '  Inner Join dbo.PackageTypeDetail PTD on PTD.PackageTypeNo = PT' +
        '.PackageTypeNo'
      ''
      
        '  Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Pr' +
        'oductLengthNo'
      '  Inner Join dbo.Product P on P.ProductNo = PT.ProductNo'
      #9'WHERE'
      #9'icg.MaxDatum >= :StartPeriod'
      #9'AND icg.MaxDatum <= :EndPeriod'
      #9'AND PIP.OwnerNo  = :OwnerNo'
      #9'AND 1 = :SortOrder'
      #9'AND ((lip.PhysicalInventoryPointNo = :PIPNo) or (-1 = :PIPNo))'
      #9'AND ((lip.LogicalInventoryPointNo = :LIPNo) or (-1 = :LIPNo))  ')
    Left = 585
    Top = 499
    ParamData = <
      item
        Name = 'STARTPERIOD'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ENDPERIOD'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SORTORDER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object siLangLinked_fLagBalDtl: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Swedish'
      'English')
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
    Left = 624
    Top = 352
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00}
  end
end
