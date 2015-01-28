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
      ReportDocument.CreationDate = 42032.573623981480000000
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
      ReportDocument.CreationDate = 42032.573623993060000000
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
    Left = 624
    Top = 352
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004C0061006700420061006C00440074006C000100
      4C0061006700420061006C00440074006C00010001000D000A00740073004400
      65006C00690076006500720069006500730001004C0065007600650072006100
      6E00730065007200010001000D000A006600500072006F00640075006B007400
      0100500072006F00640075006B007400010001000D000A0066004C006E006700
      640001004C00E4006E0067006400010001000D000A00660041004D0033000100
      41004D003300010001000D000A0066004E004D00330001004E004D0033000100
      01000D000A00660059006500610072000100C5007200010001000D000A006600
      510075006100720074006500720001004B00760061007200740061006C000100
      01000D000A0066004D006F006E007400680001004D00E5006E00610064000100
      01000D000A0066005700650065006B0001005600650063006B00610001000100
      0D000A0066004D00610072006B006E006100640001004D00610072006B006E00
      61006400010001000D000A0066004C006F00610064004E006F0001004C006100
      730074006E007200010001000D000A0066004100540001004100540001000100
      0D000A00660041004200010041004200010001000D000A006600540053000100
      54005300010001000D000A00660055005400010055005400010001000D000A00
      66004B00560001004B005600010001000D000A00660049004D00500001004900
      4D005000010001000D000A0066004500780074005F004B0075006E0064000100
      4500780074005F004B0075006E006400010001000D000A006600460072006100
      6B0074006600720061007200650001004600720061006B0074006600F6007200
      610072006500010001000D000A0066004B0075006E00640001004B0075006E00
      6400010001000D000A00660050006B0074004E007200010050006B0074004E00
      7200010001000D000A0066005000720065006600690078000100500072006500
      660069007800010001000D000A006600550074006C0061007300740061006400
      0100550074006C0061007300740061006400010001000D000A0066004C006500
      76006500720061006E007400720001004C00650076006500720061006E007400
      F6007200010001000D000A006C00620053006F00720074005400680065000100
      53006F00720074002000740068006500010001000D000A006C00620053006F00
      720074004200790001006600690065006C006400200062007900010001000D00
      0A0074007300500072006F00640075006300740069006F006E00010050007200
      6F00640075006300740069006F006E00010001000D000A00700072006F006400
      5F004D007400700075006E006B00740001004D00E4007400700075006E006B00
      7400010001000D000A00700072006F0064005F005600650072006B0001005600
      650072006B00010001000D000A00700072006F0064005F0041004D0033000100
      41004D003300010001000D000A00700072006F0064005F004E004D0033000100
      4E004D003300010001000D000A00700072006F0064005F004400610074007500
      6D00010044006100740075006D00010001000D000A00700072006F0064005F00
      50006B0074004E007200010050006B0074004E007200010001000D000A007000
      72006F0064005F00500072006500660069007800010050007200650066006900
      7800010001000D000A00700072006F0064005F00500072006F00640075006B00
      74000100500072006F00640075006B007400010001000D000A00700069007600
      500072006F00640075006300740069006F006E004C006F00610064004E006F00
      01004C006100730074006E007200010001000D000A0070006900760050007200
      6F00640075006300740069006F006E00470072006F00750070004E0061006D00
      650001004B0061007400650067006F0072006900010001000D000A0070006900
      7600500072006F00640075006300740069006F006E004C006100670065007200
      6F007200740001004C0061006700650072006F0072007400010001000D000A00
      700069007600500072006F00640075006300740069006F006E004C0061006700
      650072006700720075007000700001004C006100670065007200670072007500
      70007000010001000D000A006C006200530068006F00770054006F0070000100
      5600690073006100010001000D000A006C006200560061006C00750065007300
      01006800F600670073007400610020007600E4007200640065006E0061000100
      01000D000A0063006200780054006F007000560061006C007500650073005300
      68006F0077004F0074006800650072007300010056006900730061002000F600
      76007200690067006100010001000D000A006100630043006C006F0073006500
      010053007400E4006E006700010001000D000A00610063004500780070006F00
      7200740001004500780070006F0072007400650072006100010001000D000A00
      610063004500780070006F007200740054006F0058004C005300010045007800
      70006F007200740061002000740069006C006C00200058004C00530001000100
      0D000A00610063005000720069006E007400010053006B007200690076002000
      75007400010001000D000A0061006300530065006E00640054006F0041006C00
      6C004D0069006C006C007300010061006300530065006E00640054006F004100
      6C006C004D0069006C006C007300010001000D000A0061006300530061007600
      6500560069006500770001005300700061007200610020007600790001000100
      0D000A00610063004C006F006100640056006900650077000100D60070007000
      6E006100200076007900010001000D000A006400780043006F006D0070006F00
      6E0065006E0074005000720069006E0074006500720031004C0069006E006B00
      310001004C00650076006500720061006E00730065007200010001000D000A00
      6400780043006F006D0070006F006E0065006E0074005000720069006E007400
      6500720031004C0069006E006B0032000100500072006F00640075006B007400
      69006F006E00010001000D000A006400780043006F006D0070006F006E006500
      6E0074005000720069006E0074006500720031004C0069006E006B0033000100
      54006F0072006B00730061007400730065007200010001000D000A0063007800
      5000690076006F00740047007200690064005200650070006F00720074004C00
      69006E006B005300740079006C00650053006800650065007400310001005500
      6E006E0061006D006500640020003C0031003E00010001000D000A0073007400
      480069006E00740073005F0055006E00690063006F00640065000D000A007300
      740044006900730070006C00610079004C006100620065006C0073005F005500
      6E00690063006F00640065000D000A00730071005F0055007300650072005000
      72006F0070007300320055007300650072004900440001005500730065007200
      49004400010001000D000A00730071005F005500730065007200500072006F00
      70007300320046006F0072006D00010046006F0072006D00010001000D000A00
      730071005F005500730065007200500072006F00700073003200560065007200
      6B004E006F0001005600650072006B004E006F00010001000D000A0073007100
      5F005500730065007200500072006F007000730032004F0077006E0065007200
      4E006F0001004F0077006E00650072004E006F00010001000D000A0073007100
      5F005500730065007200500072006F007000730032005000490050004E006F00
      01005000490050004E006F00010001000D000A00730071005F00550073006500
      7200500072006F007000730032004C00490050004E006F0001004C0049005000
      4E006F00010001000D000A00730071005F005500730065007200500072006F00
      70007300320049006E007000750074004F007000740069006F006E0001004900
      6E007000750074004F007000740069006F006E00010001000D000A0073007100
      5F005500730065007200500072006F0070007300320052006500670050006F00
      69006E0074004E006F00010052006500670050006F0069006E0074004E006F00
      010001000D000A00730071005F005500730065007200500072006F0070007300
      3200520065006700440061007400650001005200650067004400610074006500
      010001000D000A00730071005F005500730065007200500072006F0070007300
      320043006F0070007900500063007300010043006F0070007900500063007300
      010001000D000A00730071005F005500730065007200500072006F0070007300
      3200520075006E004E006F000100520075006E004E006F00010001000D000A00
      730071005F005500730065007200500072006F00700073003200500072006F00
      640075006300650072004E006F000100500072006F0064007500630065007200
      4E006F00010001000D000A00730071005F005500730065007200500072006F00
      7000730032004100750074006F0043006F006C00570069006400740068000100
      4100750074006F0043006F006C0057006900640074006800010001000D000A00
      730071005F005500730065007200500072006F00700073003200530075007000
      70006C0069006500720043006F0064006500010053007500700070006C006900
      6500720043006F0064006500010001000D000A00730071005F00550073006500
      7200500072006F007000730032004C0065006E006700740068004F0070007400
      69006F006E0001004C0065006E006700740068004F007000740069006F006E00
      010001000D000A00730071005F005500730065007200500072006F0070007300
      32004C0065006E00670074006800470072006F00750070004E006F0001004C00
      65006E00670074006800470072006F00750070004E006F00010001000D000A00
      730071005F005500730065007200500072006F007000730032004E0065007700
      4900740065006D0052006F00770001004E00650077004900740065006D005200
      6F007700010001000D000A00730071005F005500730065007200500072006F00
      700073003200530061006C006500730052006500670069006F006E004E006F00
      0100530061006C006500730052006500670069006F006E004E006F0001000100
      0D000A00730071005F005500730065007200500072006F007000730032004D00
      610072006B006500740052006500670069006F006E004E006F0001004D006100
      72006B006500740052006500670069006F006E004E006F00010001000D000A00
      730071005F005500730065007200500072006F007000730032004F0072006400
      6500720054007900700065004E006F0001004F00720064006500720054007900
      700065004E006F00010001000D000A00730071005F0055007300650072005000
      72006F0070007300320053007400610074007500730001005300740061007400
      75007300010001000D000A00730071005F005500730065007200500072006F00
      700073003200460069006C007400650072004F00720064006500720044006100
      740065000100460069006C007400650072004F00720064006500720044006100
      74006500010001000D000A00730071005F005500730065007200500072006F00
      7000730032005300740061007200740050006500720069006F00640001005300
      740061007200740050006500720069006F006400010001000D000A0073007100
      5F005500730065007200500072006F0070007300320045006E00640050006500
      720069006F006400010045006E00640050006500720069006F00640001000100
      0D000A00730071005F005500730065007200500072006F007000730032004300
      6C00690065006E0074004E006F00010043006C00690065006E0074004E006F00
      010001000D000A00730071005F005500730065007200500072006F0070007300
      3200530061006C006500730050006500720073006F006E004E006F0001005300
      61006C006500730050006500720073006F006E004E006F00010001000D000A00
      730071005F005500730065007200500072006F00700073003200560065007200
      6B0053007500700070006C006900650072004E006F0001005600650072006B00
      53007500700070006C006900650072004E006F00010001000D000A0073007100
      5F005500730065007200500072006F007000730032005600650072006B004B00
      75006E0064004E006F0001005600650072006B004B0075006E0064004E006F00
      010001000D000A00730071005F005500730065007200500072006F0070007300
      32004C004F004F0062006A00650063007400540079007000650001004C004F00
      4F0062006A006500630074005400790070006500010001000D000A0063006400
      73005F005500730065007200500072006F007000730032005500730065007200
      490044000100550073006500720049004400010001000D000A00630064007300
      5F005500730065007200500072006F0070007300320046006F0072006D000100
      46006F0072006D00010001000D000A006300640073005F005500730065007200
      500072006F007000730032005600650072006B004E006F000100560065007200
      6B004E006F00010001000D000A006300640073005F0055007300650072005000
      72006F007000730032004F0077006E00650072004E006F0001004F0077006E00
      650072004E006F00010001000D000A006300640073005F005500730065007200
      500072006F007000730032005000490050004E006F0001005000490050004E00
      6F00010001000D000A006300640073005F005500730065007200500072006F00
      7000730032004C00490050004E006F0001004C00490050004E006F0001000100
      0D000A006300640073005F005500730065007200500072006F00700073003200
      49006E007000750074004F007000740069006F006E00010049006E0070007500
      74004F007000740069006F006E00010001000D000A006300640073005F005500
      730065007200500072006F0070007300320052006500670050006F0069006E00
      74004E006F00010052006500670050006F0069006E0074004E006F0001000100
      0D000A006300640073005F005500730065007200500072006F00700073003200
      5200650067004400610074006500010052006500670044006100740065000100
      01000D000A006300640073005F005500730065007200500072006F0070007300
      320043006F0070007900500063007300010043006F0070007900500063007300
      010001000D000A006300640073005F005500730065007200500072006F007000
      73003200520075006E004E006F000100520075006E004E006F00010001000D00
      0A006300640073005F005500730065007200500072006F007000730032005000
      72006F00640075006300650072004E006F000100500072006F00640075006300
      650072004E006F00010001000D000A006300640073005F005500730065007200
      500072006F007000730032004100750074006F0043006F006C00570069006400
      7400680001004100750074006F0043006F006C00570069006400740068000100
      01000D000A006300640073005F005500730065007200500072006F0070007300
      320053007500700070006C0069006500720043006F0064006500010053007500
      700070006C0069006500720043006F0064006500010001000D000A0063006400
      73005F005500730065007200500072006F007000730032004C0065006E006700
      740068004F007000740069006F006E0001004C0065006E006700740068004F00
      7000740069006F006E00010001000D000A006300640073005F00550073006500
      7200500072006F007000730032004C0065006E00670074006800470072006F00
      750070004E006F0001004C0065006E00670074006800470072006F0075007000
      4E006F00010001000D000A006300640073005F00550073006500720050007200
      6F007000730032004E00650077004900740065006D0052006F00770001004E00
      650077004900740065006D0052006F007700010001000D000A00630064007300
      5F005500730065007200500072006F00700073003200530061006C0065007300
      52006500670069006F006E004E006F000100530061006C006500730052006500
      670069006F006E004E006F00010001000D000A006300640073005F0055007300
      65007200500072006F007000730032004D00610072006B006500740052006500
      670069006F006E004E006F0001004D00610072006B0065007400520065006700
      69006F006E004E006F00010001000D000A006300640073005F00550073006500
      7200500072006F007000730032004F0072006400650072005400790070006500
      4E006F0001004F00720064006500720054007900700065004E006F0001000100
      0D000A006300640073005F005500730065007200500072006F00700073003200
      5300740061007400750073000100530074006100740075007300010001000D00
      0A006300640073005F005500730065007200500072006F007000730032004600
      69006C007400650072004F007200640065007200440061007400650001004600
      69006C007400650072004F007200640065007200440061007400650001000100
      0D000A006300640073005F005500730065007200500072006F00700073003200
      5300740061007200740050006500720069006F00640001005300740061007200
      740050006500720069006F006400010001000D000A006300640073005F005500
      730065007200500072006F0070007300320045006E0064005000650072006900
      6F006400010045006E00640050006500720069006F006400010001000D000A00
      6300640073005F005500730065007200500072006F0070007300320043006C00
      690065006E0074004E006F00010043006C00690065006E0074004E006F000100
      01000D000A006300640073005F005500730065007200500072006F0070007300
      3200530061006C006500730050006500720073006F006E004E006F0001005300
      61006C006500730050006500720073006F006E004E006F00010001000D000A00
      6300640073005F005500730065007200500072006F0070007300320056006500
      72006B0053007500700070006C006900650072004E006F000100560065007200
      6B0053007500700070006C006900650072004E006F00010001000D000A006300
      640073005F005500730065007200500072006F00700073003200560065007200
      6B004B0075006E0064004E006F0001005600650072006B004B0075006E006400
      4E006F00010001000D000A006300640073005F00550073006500720050007200
      6F007000730032004C004F004F0062006A006500630074005400790070006500
      01004C004F004F0062006A006500630074005400790070006500010001000D00
      0A006300640073005F005500730065007200500072006F007000730032005600
      650072006B0001005600650072006B00010001000D000A006300640073005F00
      5500730065007200500072006F007000730032004D007400700075006E006B00
      740001004D00E4007400700075006E006B007400010001000D000A0063006400
      73005F007600650072006B00320043006C00690065006E0074004E006F000100
      43006C00690065006E0074004E006F00010001000D000A006300640073005F00
      7600650072006B00320043006C00690065006E0074004E0061006D0065000100
      43006C00690065006E0074004E0061006D006500010001000D000A0063006400
      73005F007600650072006B0032005300650061007200630068004E0061006D00
      650001005300650061007200630068004E0061006D006500010001000D000A00
      6300640073005F00500072006F00640044006100740061003200560065007200
      6B0001005600650072006B00010001000D000A006300640073005F0050007200
      6F006400440061007400610032004D007400700075006E006B00740001004D00
      E4007400700075006E006B007400010001000D000A006300640073005F005000
      72006F0064004400610074006100320041004D003300010041004D0033000100
      01000D000A006300640073005F00500072006F00640044006100740061003200
      4E004D00330001004E004D003300010001000D000A006300640073005F005000
      72006F0064004400610074006100320053005400590043004B00010053005400
      590043004B00010001000D000A006300640073005F00500072006F0064004400
      61007400610032004C0050004D0001004C0050004D00010001000D000A006300
      640073005F00500072006F006400440061007400610032004400610074007500
      6D00010044006100740075006D00010001000D000A006300640073005F005000
      72006F0064004400610074006100320041005400010041005400010001000D00
      0A006300640073005F00500072006F0064004400610074006100320041004200
      010041004200010001000D000A006300640073005F00500072006F0064004400
      610074006100320054005300010054005300010001000D000A00630064007300
      5F00500072006F006400440061007400610032004B00560001004B0056000100
      01000D000A006300640073005F00500072006F00640044006100740061003200
      55005400010055005400010001000D000A006300640073005F00500072006F00
      64004400610074006100320049004D005000010049004D005000010001000D00
      0A006300640073005F00500072006F006400440061007400610032004C006E00
      6700640001004C00E4006E0067006400010001000D000A006300640073005F00
      500072006F00640044006100740061003200500072006F00640075006B007400
      0100500072006F00640075006B007400010001000D000A006300640073005F00
      500072006F0064004400610074006100320050006B0074004E00720001005000
      6B0074004E007200010001000D000A006300640073005F00500072006F006400
      4400610074006100320050007200650066006900780001005000720065006600
      69007800010001000D000A006300640073005F0052006500670050006F006900
      6E007400320052006500670050006F0069006E0074004E0061006D0065000100
      52006500670050006F0069006E0074004E0061006D006500010001000D000A00
      6300640073005F0052006500670050006F0069006E0074003200520065006700
      50006F0069006E0074004E006F00010052006500670050006F0069006E007400
      4E006F00010001000D000A006300640073005F00440061007400610032004D00
      610072006B006E006100640001004D00610072006B006E006100640001000100
      0D000A006300640073005F00440061007400610032004C006500760065007200
      61006E007400720001004C00650076006500720061006E007400F60072000100
      01000D000A006300640073005F00440061007400610032004B0075006E006400
      01004B0075006E006400010001000D000A006300640073005F00440061007400
      6100320041005400010041005400010001000D000A006300640073005F004400
      610074006100320041004200010041004200010001000D000A00630064007300
      5F004400610074006100320054005300010054005300010001000D000A006300
      640073005F00440061007400610032004B00560001004B005600010001000D00
      0A006300640073005F0044006100740061003200550054000100550054000100
      01000D000A006300640073005F004400610074006100320049004D0050000100
      49004D005000010001000D000A006300640073005F0044006100740061003200
      4C006E006700640001004C00E4006E0067006400010001000D000A0063006400
      73005F0044006100740061003200500072006F00640075006B00740001005000
      72006F00640075006B007400010001000D000A006300640073005F0044006100
      7400610032004600720061006B00740066007200610072006500010046007200
      61006B0074006600F6007200610072006500010001000D000A00630064007300
      5F00440061007400610032004C006F00610064004E006F0001004C006F006100
      64004E006F00010001000D000A006300640073005F0044006100740061003200
      550074006C00610073007400610064000100550074006C006100730074006100
      6400010001000D000A006300640073005F004400610074006100320041004D00
      3300010041004D003300010001000D000A006300640073005F00440061007400
      610032004E004D00330001004E004D003300010001000D000A00630064007300
      5F004400610074006100320050006B0074004E007200010050006B0074004E00
      7200010001000D000A006300640073005F004400610074006100320050007200
      65006600690078000100500072006500660069007800010001000D000A006300
      640073005F00440061007400610032004500780074005F004B0075006E006400
      01004500780074005F004B0075006E006400010001000D000A00630064007300
      5F0052006500670050006F0069006E00740052006500670050006F0069006E00
      74004E0061006D006500010052006500670050006F0069006E0074004E006100
      6D006500010001000D000A006300640073005F0052006500670050006F006900
      6E00740052006500670050006F0069006E0074004E006F000100520065006700
      50006F0069006E0074004E006F00010001000D000A006300640073005F005000
      72006F00640044006100740061005600650072006B0001005600650072006B00
      010001000D000A006300640073005F00500072006F0064004400610074006100
      4D00E4007400700075006E006B00740001004D00E4007400700075006E006B00
      7400010001000D000A006300640073005F00500072006F006400440061007400
      610041004D003300010041004D003300010001000D000A006300640073005F00
      500072006F00640044006100740061004E004D00330001004E004D0033000100
      01000D000A006300640073005F00500072006F00640044006100740061004400
      6100740075006D00010044006100740075006D00010001000D000A0063006400
      73005F00500072006F0064004400610074006100500072006F00640075006B00
      74000100500072006F00640075006B007400010001000D000A00630064007300
      5F00500072006F006400440061007400610050006B0074004E00720001005000
      6B0074004E007200010001000D000A006300640073005F00500072006F006400
      4400610074006100500072006500660069007800010050007200650066006900
      7800010001000D000A006300640073005F00500072006F006400440061007400
      61004C006F00610064004E006F0001004C006100730074006E00720001000100
      0D000A006300640073005F00500072006F006400440061007400610047007200
      6F00750070004E0061006D00650001004B0061007400650067006F0072006900
      010001000D000A006300640073005F00500072006F0064004400610074006100
      4C0061006700650072006F007200740001004C0061006700650072006F007200
      7400010001000D000A006300640073005F00500072006F006400440061007400
      61004C0061006700650072006700720075007000700001004C00610067006500
      720067007200750070007000010001000D000A006300640073005F0076006500
      72006B0043006C00690065006E0074004E006F00010043006C00690065006E00
      74004E006F00010001000D000A006300640073005F007600650072006B004300
      6C00690065006E0074004E0061006D006500010043006C00690065006E007400
      4E0061006D006500010001000D000A006300640073005F007600650072006B00
      5300650061007200630068004E0061006D006500010053006500610072006300
      68004E0061006D006500010001000D000A006300640073005F00440061007400
      61004D00610072006B006E006100640001004D00610072006B006E0061006400
      010001000D000A006300640073005F0044006100740061004C00650076006500
      720061006E007400F600720001004C00650076006500720061006E007400F600
      7200010001000D000A006300640073005F0044006100740061004B0075006E00
      640001004B0075006E006400010001000D000A006300640073005F0044006100
      7400610041005400010041005400010001000D000A006300640073005F004400
      61007400610041004200010041004200010001000D000A006300640073005F00
      440061007400610054005300010054005300010001000D000A00630064007300
      5F0044006100740061004B00560001004B005600010001000D000A0063006400
      73005F00440061007400610055005400010055005400010001000D000A006300
      640073005F00440061007400610049004D005000010049004D00500001000100
      0D000A006300640073005F0044006100740061004C00E4006E00670064000100
      4C00E4006E0067006400010001000D000A006300640073005F00440061007400
      6100500072006F00640075006B0074000100500072006F00640075006B007400
      010001000D000A006300640073005F0044006100740061004600720061006B00
      74006600F600720061007200650001004600720061006B0074006600F6007200
      610072006500010001000D000A006300640073005F0044006100740061004C00
      6F00610064004E006F0001004C006F00610064004E006F00010001000D000A00
      6300640073005F004400610074006100550074006C0061007300740061006400
      0100550074006C0061007300740061006400010001000D000A00630064007300
      5F00440061007400610041004D003300010041004D003300010001000D000A00
      6300640073005F0044006100740061004E004D00330001004E004D0033000100
      01000D000A006300640073005F00440061007400610050006B0074004E007200
      010050006B0074004E007200010001000D000A006300640073005F0044006100
      7400610050007200650066006900780001005000720065006600690078000100
      01000D000A006300640073005F0044006100740061004500780074005F004B00
      75006E00640001004500780074005F004B0075006E006400010001000D000A00
      6300640073005F005500730065007200500072006F0070007300550073006500
      7200490044000100550073006500720049004400010001000D000A0063006400
      73005F005500730065007200500072006F007000730046006F0072006D000100
      46006F0072006D00010001000D000A006300640073005F005500730065007200
      500072006F00700073005600650072006B004E006F0001005600650072006B00
      4E006F00010001000D000A006300640073005F00550073006500720050007200
      6F00700073004F0077006E00650072004E006F0001004F0077006E0065007200
      4E006F00010001000D000A006300640073005F00550073006500720050007200
      6F00700073005000490050004E006F0001005000490050004E006F0001000100
      0D000A006300640073005F005500730065007200500072006F00700073004C00
      490050004E006F0001004C00490050004E006F00010001000D000A0063006400
      73005F005500730065007200500072006F007000730049006E00700075007400
      4F007000740069006F006E00010049006E007000750074004F00700074006900
      6F006E00010001000D000A006300640073005F00550073006500720050007200
      6F007000730052006500670050006F0069006E0074004E006F00010052006500
      670050006F0069006E0074004E006F00010001000D000A006300640073005F00
      5500730065007200500072006F00700073005200650067004400610074006500
      01005200650067004400610074006500010001000D000A006300640073005F00
      5500730065007200500072006F007000730043006F0070007900500063007300
      010043006F0070007900500063007300010001000D000A006300640073005F00
      5500730065007200500072006F0070007300520075006E004E006F0001005200
      75006E004E006F00010001000D000A006300640073005F005500730065007200
      500072006F0070007300500072006F00640075006300650072004E006F000100
      500072006F00640075006300650072004E006F00010001000D000A0063006400
      73005F005500730065007200500072006F00700073004100750074006F004300
      6F006C005700690064007400680001004100750074006F0043006F006C005700
      6900640074006800010001000D000A006300640073005F005500730065007200
      500072006F007000730053007500700070006C0069006500720043006F006400
      6500010053007500700070006C0069006500720043006F006400650001000100
      0D000A006300640073005F005500730065007200500072006F00700073004C00
      65006E006700740068004F007000740069006F006E0001004C0065006E006700
      740068004F007000740069006F006E00010001000D000A006300640073005F00
      5500730065007200500072006F00700073004C0065006E006700740068004700
      72006F00750070004E006F0001004C0065006E00670074006800470072006F00
      750070004E006F00010001000D000A006300640073005F005500730065007200
      500072006F00700073004E00650077004900740065006D0052006F0077000100
      4E00650077004900740065006D0052006F007700010001000D000A0063006400
      73005F005500730065007200500072006F0070007300530061006C0065007300
      52006500670069006F006E004E006F000100530061006C006500730052006500
      670069006F006E004E006F00010001000D000A006300640073005F0055007300
      65007200500072006F00700073004D00610072006B0065007400520065006700
      69006F006E004E006F0001004D00610072006B00650074005200650067006900
      6F006E004E006F00010001000D000A006300640073005F005500730065007200
      500072006F00700073004F00720064006500720054007900700065004E006F00
      01004F00720064006500720054007900700065004E006F00010001000D000A00
      6300640073005F005500730065007200500072006F0070007300530074006100
      7400750073000100530074006100740075007300010001000D000A0063006400
      73005F005500730065007200500072006F0070007300460069006C0074006500
      72004F00720064006500720044006100740065000100460069006C0074006500
      72004F0072006400650072004400610074006500010001000D000A0063006400
      73005F005500730065007200500072006F007000730053007400610072007400
      50006500720069006F0064000100530074006100720074005000650072006900
      6F006400010001000D000A006300640073005F00550073006500720050007200
      6F007000730045006E00640050006500720069006F006400010045006E006400
      50006500720069006F006400010001000D000A006300640073005F0055007300
      65007200500072006F007000730043006C00690065006E0074004E006F000100
      43006C00690065006E0074004E006F00010001000D000A006300640073005F00
      5500730065007200500072006F0070007300530061006C006500730050006500
      720073006F006E004E006F000100530061006C00650073005000650072007300
      6F006E004E006F00010001000D000A006300640073005F005500730065007200
      500072006F00700073005600650072006B0053007500700070006C0069006500
      72004E006F0001005600650072006B0053007500700070006C00690065007200
      4E006F00010001000D000A006300640073005F00550073006500720050007200
      6F00700073005600650072006B004B0075006E0064004E006F00010056006500
      72006B004B0075006E0064004E006F00010001000D000A006300640073005F00
      5500730065007200500072006F00700073004C004F004F0062006A0065006300
      7400540079007000650001004C004F004F0062006A0065006300740054007900
      70006500010001000D000A006300640073005F00550073006500720050007200
      6F007000730042006100720043006F00640065004E006F000100420061007200
      43006F00640065004E006F00010001000D000A006300640073005F0055007300
      65007200500072006F0070007300470072006100640065005300740061006D00
      70004E006F000100470072006100640065005300740061006D0070004E006F00
      010001000D000A006300640073005F005500730065007200500072006F007000
      730056006F006C0075006D00650055006E00690074004E006F00010056006F00
      6C0075006D00650055006E00690074004E006F00010001000D000A0063006400
      73005F005500730065007200500072006F00700073004C0065006E0067007400
      680046006F0072006D00610074004E006F0001004C0065006E00670074006800
      46006F0072006D00610074004E006F00010001000D000A006300640073005F00
      5500730065007200500072006F00700073004C0065006E006700740068005600
      6F006C0055006E00690074004E006F0001004C0065006E006700740068005600
      6F006C0055006E00690074004E006F00010001000D000A006300640073005F00
      5500730065007200500072006F0070007300470072006F007500700042007900
      42006F0078000100470072006F00750070004200790042006F00780001000100
      0D000A006300640073005F005500730065007200500072006F00700073004700
      72006F0075007000530075006D006D006100720079000100470072006F007500
      7000530075006D006D00610072007900010001000D000A006300640073005F00
      5500730065007200500072006F00700073004100670065006E0074004E006F00
      01004100670065006E0074004E006F00010001000D000A006300640073005F00
      5500730065007200500072006F00700073004C006F006100640069006E006700
      4C006F0063006100740069006F006E004E006F0001004C006F00610064006900
      6E0067004C006F0063006100740069006F006E004E006F00010001000D000A00
      6300640073005F005500730065007200500072006F0070007300530068006900
      70007000650072004E006F00010053006800690070007000650072004E006F00
      010001000D000A006300640073005F005500730065007200500072006F007000
      730042006F006F006B0069006E00670054007900700065004E006F0001004200
      6F006F006B0069006E00670054007900700065004E006F00010001000D000A00
      6300640073005F005500730065007200500072006F0070007300430075007300
      74006F006D00650072004E006F00010043007500730074006F006D0065007200
      4E006F00010001000D000A006300640073005F00550073006500720050007200
      6F0070007300530068006F007700500072006F00640075006300740001005300
      68006F007700500072006F006400750063007400010001000D000A0063006400
      73005F005500730065007200500072006F00700073004E0061006D0065000100
      4E0061006D006500010001000D000A006300640073005F005500730065007200
      500072006F0070007300460069006C0074006500720031000100460069006C00
      7400650072003100010001000D000A006300640073005F005500730065007200
      500072006F0070007300460069006C0074006500720032000100460069006C00
      7400650072003200010001000D000A006300640073005F005500730065007200
      500072006F00700073005600650072006B0001005600650072006B0001000100
      0D000A006300640073005F005500730065007200500072006F00700073004D00
      E4007400700075006E006B00740001004D00E4007400700075006E006B007400
      010001000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A00540066004C0061006700420061006C00440074006C00
      01004D0053002000530061006E00730020005300650072006900660001000100
      0D000A00630078005300740079006C006500310001005400610068006F006D00
      6100010001000D000A00630078005300740079006C00650063006C004D006100
      72006F006F006E0001005400610068006F006D006100010001000D000A006300
      78005300740079006C00650063006C0057006800690074006500010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003200
      01004D0053002000530061006E00730020005300650072006900660001000100
      0D000A006400780043006F006D0070006F006E0065006E007400500072006900
      6E0074006500720031004C0069006E006B0031000100540069006D0065007300
      20004E0065007700200052006F006D0061006E00010001000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B0032000100540069006D006500730020004E0065007700
      200052006F006D0061006E00010001000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B0033000100540069006D006500730020004E0065007700200052006F006D00
      61006E00010001000D000A00630078005300740079006C006500330001005400
      69006D006500730020004E0065007700200052006F006D0061006E0001000100
      0D000A00630078005300740079006C00650034000100540069006D0065007300
      20004E0065007700200052006F006D0061006E00010001000D000A0063007800
      5300740079006C00650035000100540069006D006500730020004E0065007700
      200052006F006D0061006E00010001000D000A00630078005300740079006C00
      650036000100540069006D006500730020004E0065007700200052006F006D00
      61006E00010001000D000A00630078005300740079006C006500370001005400
      69006D006500730020004E0065007700200052006F006D0061006E0001000100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A004D0065006D006F0031002E004C006900
      6E006500730001004D0065006D006F003100010001000D000A004D0065006D00
      6F0032002E004C0069006E006500730001004D0065006D006F00320001000100
      0D000A0063006200780053006F00720074004600690065006C0064002E005000
      72006F0070006500720074006900650073002E004900740065006D0073000100
      4C006100730074006E0072002C00500072006F00640075006B0074002C004C00
      E4006E00670064002C004D00610072006B006E00610064002C00410054002C00
      410042002C00540053002C00550054002C004B0056002C0049004D0050000100
      01000D000A0063006200780053006F0072007400420079004600690065006C00
      64002E00500072006F0070006500720074006900650073002E00490074006500
      6D00730001004E006F006E0065002C0041004D0033002C004E004D0033002C00
      5600E4007200640065002C004D002D005000720069007300010001000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A0063006200780054006F00
      7000560061006C00750065007300530068006F0077004F007400680065007200
      73002E00500072006F0070006500720074006900650073002E00440069007300
      70006C006100790043006800650063006B006500640001005400720075006500
      010001000D000A0063006200780054006F007000560061006C00750065007300
      530068006F0077004F00740068006500720073002E00500072006F0070006500
      720074006900650073002E0044006900730070006C006100790055006E006300
      6800650063006B00650064000100460061006C0073006500010001000D000A00
      450064006900740031002E005400650078007400010045006400690074003100
      010001000D000A006300640073005F005500730065007200500072006F007000
      730032002E00500072006F00760069006400650072004E0061006D0065000100
      6400730070005F005500730065007200500072006F0070007300010001000D00
      0A006300640073005F007600650072006B0032002E00500072006F0076006900
      6400650072004E0061006D00650001006400730070005F007600650072006B00
      010001000D000A006300640073005F00500072006F0064004400610074006100
      32002E00500072006F00760069006400650072004E0061006D00650001006400
      730070005F00500072006F0064004400610074006100010001000D000A006300
      640073005F0052006500670050006F0069006E00740032002E00500072006F00
      760069006400650072004E0061006D00650001006400730070005F0052006500
      670050006F0069006E007400010001000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B0031002E00440065007300690067006E006500720043006100700074006900
      6F006E00010046006F0072006D006100740020005200650070006F0072007400
      010001000D000A006400780043006F006D0070006F006E0065006E0074005000
      720069006E0074006500720031004C0069006E006B0032002E00440065007300
      690067006E0065007200430061007000740069006F006E00010046006F007200
      6D006100740020005200650070006F0072007400010001000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B0033002E00440065007300690067006E00650072004300
      61007000740069006F006E00010046006F0072006D0061007400200052006500
      70006F0072007400010001000D000A006300640073005F004400610074006100
      32002E00500072006F00760069006400650072004E0061006D00650001006400
      730070005F004400610074006100010001000D000A006300640073005F005200
      6500670050006F0069006E00740052006500670050006F0069006E0074004E00
      61006D0065002E004F0072006900670069006E00010052006500670050006F00
      69006E0074004E0061006D006500010001000D000A006300640073005F005200
      6500670050006F0069006E00740052006500670050006F0069006E0074004E00
      6F002E004F0072006900670069006E00010052006500670050006F0069006E00
      74004E006F00010001000D000A006300640073005F00500072006F0064004400
      6100740061005600650072006B002E004F0072006900670069006E0001005600
      650072006B00010001000D000A006300640073005F00500072006F0064004400
      6100740061004D00E4007400700075006E006B0074002E004F00720069006700
      69006E0001005B004D00E4007400700075006E006B0074005D00010001000D00
      0A006300640073005F00500072006F006400440061007400610041004D003300
      2E004F0072006900670069006E00010041004D003300010001000D000A006300
      640073005F00500072006F00640044006100740061004E004D0033002E004F00
      72006900670069006E0001004E004D003300010001000D000A00630064007300
      5F00500072006F006400440061007400610044006100740075006D002E004F00
      72006900670069006E00010044006100740075006D00010001000D000A006300
      640073005F00500072006F0064004400610074006100500072006F0064007500
      6B0074002E004F0072006900670069006E000100500072006F00640075006B00
      7400010001000D000A006300640073005F00500072006F006400440061007400
      610050006B0074004E0072002E004F0072006900670069006E00010050006B00
      74004E007200010001000D000A006300640073005F00500072006F0064004400
      6100740061005000720065006600690078002E004F0072006900670069006E00
      0100500072006500660069007800010001000D000A006300640073005F005000
      72006F00640044006100740061004C006F00610064004E006F002E004F007200
      6900670069006E0001004C006F00610064004E006F00010001000D000A006300
      640073005F00500072006F0064004400610074006100470072006F0075007000
      4E0061006D0065002E004F0072006900670069006E000100470072006F007500
      70004E0061006D006500010001000D000A006300640073005F00500072006F00
      640044006100740061004C0061006700650072006F00720074002E004F007200
      6900670069006E0001004C0061006700650072006F0072007400010001000D00
      0A006300640073005F00500072006F00640044006100740061004C0061006700
      65007200670072007500700070002E004F0072006900670069006E0001004C00
      610067006500720067007200750070007000010001000D000A00630064007300
      5F007600650072006B0043006C00690065006E0074004E006F002E004F007200
      6900670069006E00010043006C00690065006E0074004E006F00010001000D00
      0A006300640073005F007600650072006B0043006C00690065006E0074004E00
      61006D0065002E004F0072006900670069006E00010043006C00690065006E00
      74004E0061006D006500010001000D000A006300640073005F00760065007200
      6B005300650061007200630068004E0061006D0065002E004F00720069006700
      69006E0001005300650061007200630068004E0061006D006500010001000D00
      0A006300640073005F0044006100740061004D00610072006B006E0061006400
      2E004F0072006900670069006E0001004D00610072006B006E00610064000100
      01000D000A006300640073005F0044006100740061004C006500760065007200
      61006E007400F60072002E004F0072006900670069006E0001005B004C006500
      76006500720061006E007400F60072005D00010001000D000A00630064007300
      5F0044006100740061004B0075006E0064002E004F0072006900670069006E00
      01004B0075006E006400010001000D000A006300640073005F00440061007400
      6100410054002E004F0072006900670069006E0001005B00410054005D000100
      01000D000A006300640073005F004400610074006100410042002E004F007200
      6900670069006E00010041004200010001000D000A006300640073005F004400
      610074006100540053002E004F0072006900670069006E000100540053000100
      01000D000A006300640073005F0044006100740061004B0056002E004F007200
      6900670069006E0001004B005600010001000D000A006300640073005F004400
      610074006100550054002E004F0072006900670069006E000100550054000100
      01000D000A006300640073005F00440061007400610049004D0050002E004F00
      72006900670069006E00010049004D005000010001000D000A00630064007300
      5F0044006100740061004C00E4006E00670064002E004F007200690067006900
      6E0001005B004C00E4006E00670064005D00010001000D000A00630064007300
      5F004400610074006100500072006F00640075006B0074002E004F0072006900
      670069006E000100500072006F00640075006B007400010001000D000A006300
      640073005F0044006100740061004600720061006B0074006600F60072006100
      720065002E004F0072006900670069006E0001005B004600720061006B007400
      6600F60072006100720065005D00010001000D000A006300640073005F004400
      6100740061004C006F00610064004E006F002E004F0072006900670069006E00
      01004C006F00610064004E006F00010001000D000A006300640073005F004400
      610074006100550074006C00610073007400610064002E004F00720069006700
      69006E000100550074006C0061007300740061006400010001000D000A006300
      640073005F00440061007400610041004D0033002E004F007200690067006900
      6E00010041004D003300010001000D000A006300640073005F00440061007400
      61004E004D0033002E004F0072006900670069006E0001004E004D0033000100
      01000D000A006300640073005F00440061007400610050006B0074004E007200
      2E004F0072006900670069006E00010050006B0074004E007200010001000D00
      0A006300640073005F0044006100740061005000720065006600690078002E00
      4F0072006900670069006E000100500072006500660069007800010001000D00
      0A006300640073005F0044006100740061004500780074005F004B0075006E00
      64002E004F0072006900670069006E0001004500780074005F004B0075006E00
      6400010001000D000A006300640073005F005500730065007200500072006F00
      700073005500730065007200490044002E004F0072006900670069006E000100
      550073006500720049004400010001000D000A006300640073005F0055007300
      65007200500072006F007000730046006F0072006D002E004F00720069006700
      69006E00010046006F0072006D00010001000D000A006300640073005F005500
      730065007200500072006F00700073005600650072006B004E006F002E004F00
      72006900670069006E0001005600650072006B004E006F00010001000D000A00
      6300640073005F005500730065007200500072006F00700073004F0077006E00
      650072004E006F002E004F0072006900670069006E0001004F0077006E006500
      72004E006F00010001000D000A006300640073005F0055007300650072005000
      72006F00700073005000490050004E006F002E004F0072006900670069006E00
      01005000490050004E006F00010001000D000A006300640073005F0055007300
      65007200500072006F00700073004C00490050004E006F002E004F0072006900
      670069006E0001004C00490050004E006F00010001000D000A00630064007300
      5F005500730065007200500072006F007000730049006E007000750074004F00
      7000740069006F006E002E004F0072006900670069006E00010049006E007000
      750074004F007000740069006F006E00010001000D000A006300640073005F00
      5500730065007200500072006F007000730052006500670050006F0069006E00
      74004E006F002E004F0072006900670069006E00010052006500670050006F00
      69006E0074004E006F00010001000D000A006300640073005F00550073006500
      7200500072006F007000730052006500670044006100740065002E004F007200
      6900670069006E0001005200650067004400610074006500010001000D000A00
      6300640073005F005500730065007200500072006F007000730043006F007000
      79005000630073002E004F0072006900670069006E00010043006F0070007900
      500063007300010001000D000A006300640073005F0055007300650072005000
      72006F0070007300520075006E004E006F002E004F0072006900670069006E00
      0100520075006E004E006F00010001000D000A006300640073005F0055007300
      65007200500072006F0070007300500072006F00640075006300650072004E00
      6F002E004F0072006900670069006E000100500072006F006400750063006500
      72004E006F00010001000D000A006300640073005F0055007300650072005000
      72006F00700073004100750074006F0043006F006C0057006900640074006800
      2E004F0072006900670069006E0001004100750074006F0043006F006C005700
      6900640074006800010001000D000A006300640073005F005500730065007200
      500072006F007000730053007500700070006C0069006500720043006F006400
      65002E004F0072006900670069006E00010053007500700070006C0069006500
      720043006F0064006500010001000D000A006300640073005F00550073006500
      7200500072006F00700073004C0065006E006700740068004F00700074006900
      6F006E002E004F0072006900670069006E0001004C0065006E00670074006800
      4F007000740069006F006E00010001000D000A006300640073005F0055007300
      65007200500072006F00700073004C0065006E00670074006800470072006F00
      750070004E006F002E004F0072006900670069006E0001004C0065006E006700
      74006800470072006F00750070004E006F00010001000D000A00630064007300
      5F005500730065007200500072006F00700073004E0065007700490074006500
      6D0052006F0077002E004F0072006900670069006E0001004E00650077004900
      740065006D0052006F007700010001000D000A006300640073005F0055007300
      65007200500072006F0070007300530061006C00650073005200650067006900
      6F006E004E006F002E004F0072006900670069006E000100530061006C006500
      730052006500670069006F006E004E006F00010001000D000A00630064007300
      5F005500730065007200500072006F00700073004D00610072006B0065007400
      52006500670069006F006E004E006F002E004F0072006900670069006E000100
      4D00610072006B006500740052006500670069006F006E004E006F0001000100
      0D000A006300640073005F005500730065007200500072006F00700073004F00
      720064006500720054007900700065004E006F002E004F007200690067006900
      6E0001004F00720064006500720054007900700065004E006F00010001000D00
      0A006300640073005F005500730065007200500072006F007000730053007400
      61007400750073002E004F0072006900670069006E0001005300740061007400
      75007300010001000D000A006300640073005F00550073006500720050007200
      6F0070007300460069006C007400650072004F00720064006500720044006100
      740065002E004F0072006900670069006E000100460069006C00740065007200
      4F0072006400650072004400610074006500010001000D000A00630064007300
      5F005500730065007200500072006F0070007300530074006100720074005000
      6500720069006F0064002E004F0072006900670069006E000100530074006100
      7200740050006500720069006F006400010001000D000A006300640073005F00
      5500730065007200500072006F007000730045006E0064005000650072006900
      6F0064002E004F0072006900670069006E00010045006E006400500065007200
      69006F006400010001000D000A006300640073005F0055007300650072005000
      72006F007000730043006C00690065006E0074004E006F002E004F0072006900
      670069006E00010043006C00690065006E0074004E006F00010001000D000A00
      6300640073005F005500730065007200500072006F0070007300530061006C00
      6500730050006500720073006F006E004E006F002E004F007200690067006900
      6E000100530061006C006500730050006500720073006F006E004E006F000100
      01000D000A006300640073005F005500730065007200500072006F0070007300
      5600650072006B0053007500700070006C006900650072004E006F002E004F00
      72006900670069006E0001005600650072006B0053007500700070006C006900
      650072004E006F00010001000D000A006300640073005F005500730065007200
      500072006F00700073005600650072006B004B0075006E0064004E006F002E00
      4F0072006900670069006E0001005600650072006B004B0075006E0064004E00
      6F00010001000D000A006300640073005F005500730065007200500072006F00
      700073004C004F004F0062006A0065006300740054007900700065002E004F00
      72006900670069006E0001004C004F004F0062006A0065006300740054007900
      70006500010001000D000A006300640073005F00550073006500720050007200
      6F007000730042006100720043006F00640065004E006F002E004F0072006900
      670069006E00010042006100720043006F00640065004E006F00010001000D00
      0A006300640073005F005500730065007200500072006F007000730047007200
      6100640065005300740061006D0070004E006F002E004F007200690067006900
      6E000100470072006100640065005300740061006D0070004E006F0001000100
      0D000A006300640073005F005500730065007200500072006F00700073005600
      6F006C0075006D00650055006E00690074004E006F002E004F00720069006700
      69006E00010056006F006C0075006D00650055006E00690074004E006F000100
      01000D000A006300640073005F005500730065007200500072006F0070007300
      4C0065006E0067007400680046006F0072006D00610074004E006F002E004F00
      72006900670069006E0001004C0065006E0067007400680046006F0072006D00
      610074004E006F00010001000D000A006300640073005F005500730065007200
      500072006F00700073004C0065006E0067007400680056006F006C0055006E00
      690074004E006F002E004F0072006900670069006E0001004C0065006E006700
      7400680056006F006C0055006E00690074004E006F00010001000D000A006300
      640073005F005500730065007200500072006F0070007300470072006F007500
      70004200790042006F0078002E004F0072006900670069006E00010047007200
      6F00750070004200790042006F007800010001000D000A006300640073005F00
      5500730065007200500072006F0070007300470072006F007500700053007500
      6D006D006100720079002E004F0072006900670069006E000100470072006F00
      75007000530075006D006D00610072007900010001000D000A00630064007300
      5F005500730065007200500072006F00700073004100670065006E0074004E00
      6F002E004F0072006900670069006E0001004100670065006E0074004E006F00
      010001000D000A006300640073005F005500730065007200500072006F007000
      73004C006F006100640069006E0067004C006F0063006100740069006F006E00
      4E006F002E004F0072006900670069006E0001004C006F006100640069006E00
      67004C006F0063006100740069006F006E004E006F00010001000D000A006300
      640073005F005500730065007200500072006F00700073005300680069007000
      7000650072004E006F002E004F0072006900670069006E000100530068006900
      70007000650072004E006F00010001000D000A006300640073005F0055007300
      65007200500072006F007000730042006F006F006B0069006E00670054007900
      700065004E006F002E004F0072006900670069006E00010042006F006F006B00
      69006E00670054007900700065004E006F00010001000D000A00630064007300
      5F005500730065007200500072006F007000730043007500730074006F006D00
      650072004E006F002E004F0072006900670069006E0001004300750073007400
      6F006D00650072004E006F00010001000D000A006300640073005F0055007300
      65007200500072006F0070007300530068006F007700500072006F0064007500
      630074002E004F0072006900670069006E000100530068006F00770050007200
      6F006400750063007400010001000D000A006300640073005F00550073006500
      7200500072006F00700073004E0061006D0065002E004F007200690067006900
      6E0001004E0061006D006500010001000D000A006300640073005F0055007300
      65007200500072006F0070007300460069006C0074006500720031002E004F00
      72006900670069006E000100460069006C007400650072003100010001000D00
      0A006300640073005F005500730065007200500072006F007000730046006900
      6C0074006500720032002E004F0072006900670069006E000100460069006C00
      7400650072003200010001000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A007000
      690076004C00650076006500720061006E007300650072002E00470072006F00
      7500700073005B0030005D002E00430061007000740069006F006E0001005500
      74006C0061007300740061006400010001000D000A0070006900760050007200
      6F00640075006300740069006F006E002E00470072006F007500700073005B00
      30005D002E00430061007000740069006F006E000100500061006B0065007400
      49004400010001000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A00540066004C00610067004200
      61006C00440074006C000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00630078005300740079006C006500
      31000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00630078005300740079006C00650063006C004D006100
      72006F006F006E000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00630078005300740079006C0065006300
      6C00570068006900740065000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00630078005300740079006C00
      650032000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B00310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A006400780043006F006D0070006F006E0065006E007400500072006900
      6E0074006500720031004C0069006E006B003200010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B0033000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00630078005300740079006C00
      650033000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00630078005300740079006C006500340001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00630078005300740079006C0065003500010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0063007800
      5300740079006C00650036000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00630078005300740079006C00
      650037000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00}
  end
end
