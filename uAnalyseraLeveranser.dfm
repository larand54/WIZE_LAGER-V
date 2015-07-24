object fAnalyseraLeveranser: TfAnalyseraLeveranser
  Left = 254
  Top = 150
  Align = alClient
  BorderStyle = bsNone
  Caption = 'fAnalyseraLeveranser'
  ClientHeight = 843
  ClientWidth = 1246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1246
    Height = 57
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1246
      57)
    object lcVerk: TcxDBLookupComboBox
      Left = 57
      Top = 7
      DataBinding.DataField = 'Verk'
      DataBinding.DataSource = ds_UserProps
      Properties.DropDownRows = 12
      Properties.ListColumns = <>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 0
      Width = 121
    end
    object deStartPeriod: TcxDBDateEdit
      Left = 224
      Top = 6
      DataBinding.DataField = 'StartPeriod'
      DataBinding.DataSource = ds_UserProps
      Properties.Kind = ckDateTime
      TabOrder = 2
      Width = 137
    end
    object deEndPeriod: TcxDBDateEdit
      Left = 224
      Top = 30
      DataBinding.DataField = 'EndPeriod'
      DataBinding.DataSource = ds_UserProps
      Properties.Kind = ckDateTime
      TabOrder = 3
      Width = 137
    end
    object cxLabel1: TcxLabel
      Left = 184
      Top = 10
      Caption = 'Period:'
    end
    object cxLabel2: TcxLabel
      Left = 197
      Top = 34
      Caption = 'tom'
    end
    object cxLabel3: TcxLabel
      Left = 3
      Top = 10
      Caption = 'Verk:'
    end
    object bToday: TcxButton
      Left = 368
      Top = 5
      Width = 75
      Height = 25
      Action = acToday
      Caption = 'idag F2'
      TabOrder = 7
    end
    object bYesterday: TcxButton
      Left = 368
      Top = 30
      Width = 75
      Height = 25
      Action = acYesterday
      Caption = 'ig'#229'r F3'
      TabOrder = 8
    end
    object bUppdatera: TcxButton
      Left = 449
      Top = 9
      Width = 124
      Height = 41
      Action = acRefresh
      TabOrder = 9
    end
    object bPrint: TcxButton
      Left = 579
      Top = 10
      Width = 125
      Height = 40
      Action = acPrint
      TabOrder = 10
    end
    object bExportToXLS: TcxButton
      Left = 710
      Top = 10
      Width = 132
      Height = 40
      Action = acExportToXLS
      TabOrder = 11
    end
    object bClose: TcxButton
      Left = 1155
      Top = 10
      Width = 84
      Height = 40
      Action = acClose
      Anchors = [akTop, akRight]
      TabOrder = 12
    end
    object icOperation: TcxDBImageComboBox
      Left = 58
      Top = 30
      DataBinding.DataField = 'InputOption'
      DataBinding.DataSource = ds_UserProps
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'P'#229'reg'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Avreg'
          Value = 3
        end
        item
          Description = 'Alla'
          Value = 1
        end>
      TabOrder = 1
      Visible = False
      Width = 121
    end
    object cxLabelOperation: TcxLabel
      Left = 3
      Top = 34
      Caption = 'Operation:'
      Visible = False
    end
  end
  object pgMain: TcxPageControl
    Left = 0
    Top = 57
    Width = 1246
    Height = 786
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tsProduction
    Properties.CustomButtons.Buttons = <>
    Properties.Images = imglistActions
    LookAndFeel.Kind = lfUltraFlat
    OnPageChanging = pgMainPageChanging
    ClientRectBottom = 782
    ClientRectLeft = 4
    ClientRectRight = 1242
    ClientRectTop = 33
    object tsDeliveries: TcxTabSheet
      Caption = 'LEVERANSSTAT'
      ImageIndex = 18
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pivLeveranser: TcxDBPivotGrid
        Left = 0
        Top = 97
        Width = 1246
        Height = 663
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
        OptionsPrefilter.Visible = pfvNever
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnGrandTotalWidth = 243
        OptionsView.RowGrandTotals = False
        OptionsView.RowGrandTotalWidth = 243
        OptionsView.RowTotals = False
        TabOrder = 0
        OnClick = pivLeveranserClick
        object fProdukt: TcxDBPivotGridField
          AreaIndex = 15
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Produkt'
          SortBySummaryInfo.Field = fM_Pris
          SortBySummaryInfo.SummaryType = stCustom
          SortOrder = soAscending
          UniqueName = 'Produkt'
        end
        object fLngd: TcxDBPivotGridField
          AreaIndex = 4
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'L'#228'ngd'
          Width = 60
          UniqueName = 'L'#228'ngd'
        end
        object fAM3: TcxDBPivotGridField
          Area = faData
          AreaIndex = 1
          AllowedAreas = [faData]
          DataBinding.FieldName = 'AM3'
          DisplayFormat = '#,###,###.0'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###'
          Visible = True
          Width = 59
          UniqueName = 'AM3'
        end
        object fNM3: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          AllowedAreas = [faData]
          DataBinding.FieldName = 'NM3'
          DisplayFormat = '#,###,###.0'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###'
          Visible = True
          Width = 57
          UniqueName = 'NM3'
        end
        object fVrde: TcxDBPivotGridField
          Area = faData
          AreaIndex = 2
          AllowedAreas = [faData]
          DataBinding.FieldName = 'V'#228'rde'
          DisplayFormat = '#,###,###.0'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.0'
          Visible = True
          Width = 56
          UniqueName = 'V'#228'rde'
        end
        object fM_Pris: TcxDBPivotGridField
          Area = faData
          AreaIndex = 3
          AllowedAreas = [faData]
          IsCaptionAssigned = True
          Caption = 'M-Pris'
          DataBinding.FieldName = 'M_Pris'
          DisplayFormat = '#,###,###.0'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.0'
          SummaryType = stCustom
          TotalsVisibility = tvCustom
          Visible = True
          Width = 64
          OnCalculateCustomSummary = fM_PrisCalculateCustomSummary
          UniqueName = 'M-Pris'
        end
        object fYear: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 0
          AllowedAreas = [faColumn, faRow, faFilter]
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
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Marknad'
          Width = 100
          UniqueName = 'Marknad'
        end
        object fLoadNo: TcxDBPivotGridField
          AreaIndex = 14
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = 'Lastnr'
          DataBinding.FieldName = 'LoadNo'
          SortBySummaryInfo.Field = fM_Pris
          SortBySummaryInfo.SummaryType = stCustom
          SortOrder = soAscending
          TotalsVisibility = tvCustom
          UniqueName = 'Lastnr'
        end
        object fAT: TcxDBPivotGridField
          AreaIndex = 8
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'AT'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 50
          UniqueName = 'AT'
        end
        object fAB: TcxDBPivotGridField
          AreaIndex = 9
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'AB'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 50
          UniqueName = 'AB'
        end
        object fTS: TcxDBPivotGridField
          AreaIndex = 10
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'TS'
          Width = 50
          UniqueName = 'TS'
        end
        object fUT: TcxDBPivotGridField
          AreaIndex = 1
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'UT'
          SortBySummaryInfo.SummaryType = stCustom
          SortOrder = soAscending
          TotalsVisibility = tvCustom
          Width = 50
          UniqueName = 'UT'
        end
        object fKV: TcxDBPivotGridField
          AreaIndex = 3
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'KV'
          Width = 50
          UniqueName = 'KV'
        end
        object fIMP: TcxDBPivotGridField
          AreaIndex = 2
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'IMP'
          UniqueName = 'IMP'
        end
        object fCustomer: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 1
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Customer'
          Visible = True
          UniqueName = 'Customer'
        end
        object fSupplier: TcxDBPivotGridField
          AreaIndex = 5
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Supplier'
          UniqueName = 'Supplier'
        end
        object fFraktfrare: TcxDBPivotGridField
          AreaIndex = 6
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Fraktf'#246'rare'
          UniqueName = 'Fraktf'#246'rare'
        end
        object fLagerGrupp: TcxDBPivotGridField
          AreaIndex = 7
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'LagerGrupp'
          UniqueName = 'LagerGrupp'
        end
        object fSituation: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 0
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Situation'
          Visible = True
          UniqueName = 'Situation'
        end
        object pivLeveranserTrading: TcxDBPivotGridField
          AreaIndex = 11
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Trading'
          UniqueName = 'Trading'
        end
        object pivLeveranserLO: TcxDBPivotGridField
          AreaIndex = 12
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'LO'
          UniqueName = 'LO'
        end
        object pivLeveranserPriceExist: TcxDBPivotGridField
          AreaIndex = 13
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'PriceExist'
          UniqueName = 'PriceExist'
        end
        object pivLeveranserUtlastad: TcxDBPivotGridField
          AreaIndex = 16
          DataBinding.FieldName = 'Utlastad'
          GroupInterval = giDate
          UniqueName = 'Utlastad'
        end
        object pivLeveranserClientName: TcxDBPivotGridField
          AreaIndex = 17
          IsCaptionAssigned = True
          Caption = 'Extern klient'
          DataBinding.FieldName = 'ClientName'
          UniqueName = 'Extern klient'
        end
        object pivVarugrupp: TcxDBPivotGridField
          AreaIndex = 18
          IsCaptionAssigned = True
          Caption = 'Varugrupp'
          DataBinding.FieldName = 'Varugruppnamn'
          Visible = True
          UniqueName = 'Varugruppnamn'
        end
        object pivLeveranserLaststalle: TcxDBPivotGridField
          AreaIndex = 19
          DataBinding.FieldName = 'LoadingLocation'
          Visible = True
          UniqueName = 'Lastst'#228'lle'
        end
        object pivLeveranserDestination: TcxDBPivotGridField
          AreaIndex = 20
          DataBinding.FieldName = 'Destination'
          Visible = True
          UniqueName = 'Destination'
        end
        object pivLeveranserInt_Destination: TcxDBPivotGridField
          AreaIndex = 21
          DataBinding.FieldName = 'Int_Destination'
          Visible = True
          UniqueName = 'Int_Destination'
        end
        object pivLeveranserExt_Destination: TcxDBPivotGridField
          AreaIndex = 22
          DataBinding.FieldName = 'Ext_Destination'
          Visible = True
          UniqueName = 'Ext_Destination'
        end
        object pivLeveranserOrderNoText: TcxDBPivotGridField
          AreaIndex = 23
          DataBinding.FieldName = 'OrderNoText'
          Visible = True
          UniqueName = 'Kontrakt'
        end
        object pivLeveranserUtfall: TcxDBPivotGridField
          AreaIndex = 24
          IsCaptionAssigned = True
          Caption = 'Utfall%'
          DataBinding.FieldName = 'NM3'
          DisplayFormat = '#,###.00'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.00'
          SummaryVariation = svPercentOfColumn
          Visible = True
          UniqueName = 'Utfall%'
        end
        object pivLeveranserPieces: TcxDBPivotGridField
          AreaIndex = 25
          DataBinding.FieldName = 'Pieces'
          PropertiesClassName = 'TcxCalcEditProperties'
          Visible = True
          UniqueName = 'Styck'
        end
      end
      object pnSettings: TPanel
        Left = 0
        Top = 0
        Width = 1246
        Height = 49
        Align = alTop
        TabOrder = 1
        object lbSortBy: TLabel
          Left = 14
          Top = 21
          Width = 52
          Height = 13
          Caption = 'Sortera per'
          FocusControl = cbxSortByField
        end
        object lbShowTop: TLabel
          Left = 224
          Top = 21
          Width = 44
          Height = 13
          Caption = 'Visa topp'
          FocusControl = speTopCount
        end
        object lbValues: TLabel
          Left = 330
          Top = 21
          Width = 33
          Height = 13
          Caption = 'v'#228'rden'
        end
        object Bevel1: TBevel
          Left = 216
          Top = 6
          Width = 257
          Height = 33
        end
        object cbxSortByField: TcxComboBox
          Left = 73
          Top = 13
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Kategori'
            'AM3'
            'NM3'
            'V'#228'rde'
            'M-Pris')
          Properties.MaxLength = 0
          Properties.OnChange = cbxSortByFieldPropertiesChange
          TabOrder = 0
          Text = 'Kategori'
          Width = 136
        end
        object speTopCount: TcxSpinEdit
          Left = 272
          Top = 13
          Properties.MaxValue = 50.000000000000000000
          Properties.OnChange = speTopCountPropertiesChange
          TabOrder = 1
          Width = 57
        end
        object cbxTopValuesShowOthers: TcxCheckBox
          Left = 382
          Top = 13
          Caption = 'Visa '#246'vriga'
          Properties.OnChange = cbxTopValuesShowOthersPropertiesChange
          TabOrder = 2
          Width = 77
        end
        object Button6: TButton
          Left = 848
          Top = 19
          Width = 131
          Height = 25
          Action = acSortByData
          TabOrder = 3
          Visible = False
        end
        object rgOrderType: TcxRadioGroup
          Left = 479
          Top = 5
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'F'#246'rs'#228'ljning'
              Value = 0
            end
            item
              Caption = 'Ink'#246'p'
              Value = 1
            end>
          Properties.OnChange = rgOrderTypePropertiesChange
          ItemIndex = 0
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 4
          Height = 39
          Width = 185
        end
      end
      object cxSplitter2: TcxSplitter
        Left = 0
        Top = 90
        Width = 1238
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer8Style'
        AlignSplitter = salTop
        Control = pivLeveranser
        Color = clMaroon
        ParentColor = False
        ExplicitWidth = 7
      end
      object Panel6: TPanel
        Left = 0
        Top = 49
        Width = 1238
        Height = 41
        Align = alTop
        TabOrder = 3
        ExplicitWidth = 1246
        object cxButton6: TcxButton
          Left = 16
          Top = 8
          Width = 119
          Height = 25
          Action = acNyLeveransLayout
          TabOrder = 0
        end
        object cxButton7: TcxButton
          Left = 143
          Top = 8
          Width = 111
          Height = 25
          Action = acSaveLeveranserLayout
          TabOrder = 1
        end
        object cbLevLayouter: TcxComboBox
          Left = 256
          Top = 10
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.OnChange = cbLevLayouterPropertiesChange
          TabOrder = 2
          Width = 185
        end
        object cxButton8: TcxButton
          Left = 456
          Top = 8
          Width = 121
          Height = 25
          Action = acRemoveLayout
          TabOrder = 3
        end
        object cxCheckBox2: TcxCheckBox
          Left = 600
          Top = 12
          Caption = 'Visa grandtotal'
          Properties.OnChange = cxCheckBox2PropertiesChange
          TabOrder = 4
          Width = 97
        end
        object cxCheckBox3: TcxCheckBox
          Left = 704
          Top = 12
          Caption = 'Visa radtotal'
          Properties.OnChange = cxCheckBox3PropertiesChange
          TabOrder = 5
          Width = 97
        end
        object cbExklEgnaLeveranser: TcxCheckBox
          Left = 816
          Top = 12
          Caption = 'Exkludera egna leveranser'
          Properties.ImmediatePost = True
          TabOrder = 6
          Width = 163
        end
      end
    end
    object tsProduction: TcxTabSheet
      Caption = 'PRODUKTIONSTAT'
      ImageIndex = 20
      object pivProduction: TcxDBPivotGrid
        Left = 0
        Top = 89
        Width = 1238
        Height = 660
        Align = alClient
        DataSource = ds_ProdData
        Groups = <
          item
            IsCaptionAssigned = True
            Caption = 'Kalender'
            UniqueName = ''
          end>
        OptionsView.ColumnGrandTotalWidth = 68
        OptionsView.RowGrandTotals = False
        OptionsView.RowGrandTotalWidth = 68
        OptionsView.RowTotals = False
        OptionsView.TotalsForSingleValues = True
        Styles.Total = cxStyle2
        TabOrder = 0
        object fMtpunkt: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 1
          DataBinding.FieldName = 'M'#228'tpunkt'
          Visible = True
          UniqueName = 'M'#228'tpunkt'
        end
        object fVerk: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 0
          DataBinding.FieldName = 'Verk'
          Visible = True
          UniqueName = 'Verk'
        end
        object fProdAM3: TcxDBPivotGridField
          AreaIndex = 5
          DataBinding.FieldName = 'AM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###'
          Width = 53
          UniqueName = 'AM3'
        end
        object fprodNM3: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          DataBinding.FieldName = 'NM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###'
          Visible = True
          Width = 48
          UniqueName = 'NM3'
        end
        object fProdPKT: TcxDBPivotGridField
          AreaIndex = 6
          DataBinding.FieldName = 'PKT'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###.###'
          Width = 47
          UniqueName = 'PKT'
        end
        object fVeckoDag: TcxDBPivotGridField
          AreaIndex = 4
          IsCaptionAssigned = True
          Caption = 'Dag'
          DataBinding.FieldName = 'Datum'
          GroupIndex = 0
          GroupExpanded = False
          GroupInterval = giDateDayOfWeek
          Visible = True
          UniqueName = 'Dag'
        end
        object fProdSTYCK: TcxDBPivotGridField
          Area = faData
          AreaIndex = 1
          DataBinding.FieldName = 'STYCK'
          PropertiesClassName = 'TcxCalcEditProperties'
          Visible = True
          Width = 56
          UniqueName = 'STYCK'
        end
        object fProdLPM: TcxDBPivotGridField
          Area = faData
          AreaIndex = 2
          DataBinding.FieldName = 'LPM'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###'
          Visible = True
          Width = 49
          UniqueName = 'LPM'
        end
        object pivProduction_AB: TcxDBPivotGridField
          AreaIndex = 7
          DataBinding.FieldName = 'AB'
          PropertiesClassName = 'TcxCalcEditProperties'
          UniqueName = 'AB'
        end
        object pivProduction_ALMM: TcxDBPivotGridField
          AreaIndex = 8
          DataBinding.FieldName = 'ALMM'
          PropertiesClassName = 'TcxCalcEditProperties'
          UniqueName = 'ALMM'
        end
        object pivProduction_AT: TcxDBPivotGridField
          AreaIndex = 9
          DataBinding.FieldName = 'AT'
          PropertiesClassName = 'TcxCalcEditProperties'
          UniqueName = 'AT'
        end
        object pivProduction_IMP: TcxDBPivotGridField
          AreaIndex = 10
          DataBinding.FieldName = 'IMP'
          UniqueName = 'IMP'
        end
        object pivProduction_KV: TcxDBPivotGridField
          AreaIndex = 11
          DataBinding.FieldName = 'KV'
          UniqueName = 'KV'
        end
        object pivProduction_NLMM: TcxDBPivotGridField
          AreaIndex = 12
          DataBinding.FieldName = 'NLMM'
          UniqueName = 'NLMM'
        end
        object pivProduction_Paketnr: TcxDBPivotGridField
          AreaIndex = 13
          DataBinding.FieldName = 'Paketnr'
          UniqueName = 'Paketnr'
        end
        object pivProduction_Prefix: TcxDBPivotGridField
          AreaIndex = 14
          DataBinding.FieldName = 'Prefix'
          UniqueName = 'Prefix'
        end
        object pivProduction_Produkt: TcxDBPivotGridField
          AreaIndex = 15
          DataBinding.FieldName = 'Produkt'
          UniqueName = 'Produkt'
        end
        object pivProduction_TS: TcxDBPivotGridField
          AreaIndex = 16
          DataBinding.FieldName = 'TS'
          UniqueName = 'TS'
        end
        object pivProduction_UT: TcxDBPivotGridField
          AreaIndex = 17
          DataBinding.FieldName = 'UT'
          UniqueName = 'UT'
        end
        object pivProductionWeek: TcxDBPivotGridField
          AreaIndex = 3
          IsCaptionAssigned = True
          Caption = 'Vecka'
          DataBinding.FieldName = 'Datum'
          GroupIndex = 0
          GroupInterval = giDateWeekOfYear
          Visible = True
          UniqueName = 'Vecka'
        end
        object pivProductionMonth: TcxDBPivotGridField
          AreaIndex = 2
          IsCaptionAssigned = True
          Caption = 'M'#229'nad'
          DataBinding.FieldName = 'Datum'
          GroupIndex = 0
          GroupInterval = giDateMonth
          Visible = True
          UniqueName = 'M'#229'nad'
        end
        object pivProductionQuarter: TcxDBPivotGridField
          AreaIndex = 1
          IsCaptionAssigned = True
          Caption = 'Kvartal'
          DataBinding.FieldName = 'Datum'
          GroupIndex = 0
          GroupInterval = giDateQuarter
          Visible = True
          UniqueName = 'Kvartal'
        end
        object pivProductionYear: TcxDBPivotGridField
          AreaIndex = 0
          IsCaptionAssigned = True
          Caption = #197'r'
          DataBinding.FieldName = 'Datum'
          GroupIndex = 0
          GroupInterval = giDateYear
          UniqueName = #197'r'
        end
        object pivProductionDatum: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 0
          DataBinding.FieldName = 'Datum'
          GroupInterval = giDate
          Visible = True
          UniqueName = 'Datum'
        end
        object pivProductionOperation: TcxDBPivotGridField
          AreaIndex = 18
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Operation'
          Visible = True
          UniqueName = 'Operation'
        end
        object pivProductionOrt: TcxDBPivotGridField
          AreaIndex = 19
          DataBinding.FieldName = 'Ort'
          Visible = True
          UniqueName = 'Ort'
        end
        object pivProductionUtfall: TcxDBPivotGridField
          AreaIndex = 20
          IsCaptionAssigned = True
          Caption = 'Utfall%'
          DataBinding.FieldName = 'NM3'
          DisplayFormat = '#,###,###.00'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.00'
          SummaryVariation = svPercentOfColumn
          Visible = True
          UniqueName = 'Utfall%'
        end
        object pivVarugruppNamn: TcxDBPivotGridField
          AreaIndex = 21
          IsCaptionAssigned = True
          Caption = 'Varugrupp'
          DataBinding.FieldName = 'VarugruppNamn'
          Visible = True
          UniqueName = 'Varugrupp'
        end
        object pivAvgLength: TcxDBPivotGridField
          AreaIndex = 22
          IsCaptionAssigned = True
          Caption = 'Medell'#228'ngd'
          DataBinding.FieldName = 'AvgLength'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.00'
          SummaryType = stCustom
          Visible = True
          OnCalculateCustomSummary = pivAvgLengthCalculateCustomSummary
          UniqueName = 'Medell'#228'ngd'
        end
        object pivSkiftlag: TcxDBPivotGridField
          AreaIndex = 23
          IsCaptionAssigned = True
          Caption = 'Skiftlag'
          DataBinding.FieldName = 'ShiftTeamName'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = True
          UniqueName = 'ShiftTeamName'
        end
        object pivKoorderID: TcxDBPivotGridField
          AreaIndex = 24
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'SortingOrderNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = True
          UniqueName = 'K'#246'rordernr'
        end
        object pivSortingOrderRowNo: TcxDBPivotGridField
          AreaIndex = 25
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = 'K'#246'rorderradnr'
          DataBinding.FieldName = 'SortingOrderRowNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = True
          UniqueName = 'K'#246'rorderradnr'
        end
        object pivReferens: TcxDBPivotGridField
          AreaIndex = 26
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Referens'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = True
          UniqueName = 'Referens'
        end
        object pivLO: TcxDBPivotGridField
          AreaIndex = 27
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'HeadLO'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = True
          UniqueName = 'LO'
        end
        object pivKund: TcxDBPivotGridField
          AreaIndex = 28
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'ClientName'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = True
          UniqueName = 'Kund'
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1238
        Height = 41
        Align = alTop
        TabOrder = 1
        object BitBtn4: TBitBtn
          Left = 440
          Top = 9
          Width = 113
          Height = 25
          Action = acSendEmail
          Caption = 'Emaila valt verk'
          TabOrder = 0
        end
        object cxLabel5: TcxLabel
          Left = 211
          Top = 16
          Caption = 'M'#228'tpunkt:'
        end
        object lcMtpunkt: TcxDBLookupComboBox
          Left = 264
          Top = 12
          DataBinding.DataField = 'M'#228'tpunkt'
          DataBinding.DataSource = ds_UserProps
          Properties.ListColumns = <>
          Properties.ListOptions.ShowHeader = False
          Properties.MaxLength = 0
          TabOrder = 2
          Width = 129
        end
        object BitBtn7: TBitBtn
          Left = 560
          Top = 9
          Width = 113
          Height = 25
          Action = acSendToAllMills
          Caption = 'Emaila alla verks data'
          TabOrder = 3
        end
        object Button2: TButton
          Left = 944
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Skriv ut test'
          TabOrder = 4
          Visible = False
          OnClick = Button2Click
        end
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
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 81
        Width = 1238
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer8Style'
        AlignSplitter = salTop
        Control = pivProduction
        Color = clMaroon
        ParentColor = False
      end
      object Panel5: TPanel
        Left = 0
        Top = 41
        Width = 1238
        Height = 40
        Align = alTop
        TabOrder = 4
        object cxButton1: TcxButton
          Left = 16
          Top = 8
          Width = 97
          Height = 25
          Action = acNyProdMall
          TabOrder = 0
        end
        object cxButton5: TcxButton
          Left = 120
          Top = 8
          Width = 97
          Height = 25
          Action = acSaveProdMall
          TabOrder = 1
        end
        object cbProdMallar: TcxComboBox
          Left = 224
          Top = 9
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.OnChange = cbProdMallarPropertiesChange
          TabOrder = 2
          Width = 185
        end
        object cxButton9: TcxButton
          Left = 424
          Top = 7
          Width = 97
          Height = 25
          Action = acRemoveProdMall
          TabOrder = 3
        end
        object cxButton2: TcxButton
          Left = 536
          Top = 7
          Width = 97
          Height = 25
          Action = acExpandAll
          TabOrder = 4
        end
        object cxButton3: TcxButton
          Left = 633
          Top = 7
          Width = 97
          Height = 25
          Action = acCollapseAll
          TabOrder = 5
        end
        object cbUseProdSum: TcxCheckBox
          Left = 744
          Top = 8
          Caption = 'Inkludera paketnr'
          TabOrder = 6
          Visible = False
          Width = 109
        end
        object cbTotals: TcxCheckBox
          Left = 864
          Top = 8
          Caption = 'Visa grandtotal'
          Properties.OnChange = cbTotalsPropertiesChange
          TabOrder = 7
          Width = 97
        end
        object cxCheckBox1: TcxCheckBox
          Left = 968
          Top = 8
          Caption = 'Visa radtotal'
          Properties.OnChange = cxCheckBox1PropertiesChange
          TabOrder = 8
          Width = 97
        end
        object cbNearOrFarSum: TcxCheckBox
          Left = 1080
          Top = 8
          Caption = 'Placering summa'
          Properties.OnChange = cbNearOrFarSumPropertiesChange
          TabOrder = 9
          Width = 109
        end
      end
    end
    object tsTorksatser: TcxTabSheet
      Caption = 'TORKSTAT'
      ImageIndex = 7
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1238
        Height = 41
        Align = alTop
        TabOrder = 0
        object cxLabel6: TcxLabel
          Left = 3
          Top = 0
          Caption = 'Torksatser filtreras p'#229' sluttiden'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -12
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxButton22: TcxButton
          Left = 345
          Top = 10
          Width = 97
          Height = 25
          Action = acNyTorkMall
          TabOrder = 1
        end
        object cxButton23: TcxButton
          Left = 449
          Top = 10
          Width = 97
          Height = 25
          Action = acSaveKilnMall
          TabOrder = 2
        end
        object cbKilnMallar: TcxComboBox
          Left = 553
          Top = 14
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.OnChange = cbKilnMallarPropertiesChange
          TabOrder = 3
          Width = 185
        end
        object cxButton24: TcxButton
          Left = 753
          Top = 9
          Width = 97
          Height = 25
          Caption = 'Ta bort mall'
          TabOrder = 4
        end
        object cxButton25: TcxButton
          Left = 865
          Top = 9
          Width = 97
          Height = 25
          Action = acExpandAllKiln
          TabOrder = 5
        end
        object cxButton26: TcxButton
          Left = 963
          Top = 9
          Width = 97
          Height = 25
          Action = acCollapseAllKiln
          TabOrder = 6
        end
        object cxLabel7: TcxLabel
          Left = 3
          Top = 18
          Caption = 'eller bocka i "Visa itork"'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -12
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cbVisaItork: TcxDBCheckBox
          Left = 156
          Top = 14
          Caption = 'Visa itork'
          DataBinding.DataField = 'SalesPersonNo'
          DataBinding.DataSource = ds_UserProps
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 8
          Width = 73
        end
        object cbShowRowTotalsKiln: TcxCheckBox
          Left = 235
          Top = 14
          Caption = 'Visa radtotal'
          Properties.OnChange = cbShowRowTotalsKilnPropertiesChange
          State = cbsChecked
          TabOrder = 9
          Width = 97
        end
      end
      object pivKD: TcxDBPivotGrid
        Left = 0
        Top = 41
        Width = 1238
        Height = 708
        Align = alClient
        DataSource = ds_TorkSatser
        Groups = <
          item
            IsCaptionAssigned = True
            Caption = 'Period'
            UniqueName = ''
          end>
        OptionsView.ColumnTotalsLocation = ctlNear
        OptionsView.RowTotalsLocation = rtlNear
        TabOrder = 1
        ExplicitWidth = 1246
        ExplicitHeight = 719
        object pivKDAM3: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          DataBinding.FieldName = 'AM3'
          Visible = True
          UniqueName = 'AM3'
        end
        object pivKDVerk: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 0
          DataBinding.FieldName = 'Verk'
          Visible = True
          UniqueName = 'Verk'
        end
        object pivKDKilnName: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 1
          DataBinding.FieldName = 'KilnName'
          Visible = True
          UniqueName = 'KilnName'
        end
        object pivKDKalkyleradTid: TcxDBPivotGridField
          AreaIndex = 0
          DataBinding.FieldName = 'KalkyleradTid'
          Visible = True
          UniqueName = 'KalkyleradTid'
        end
        object pivKDYear: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 0
          IsCaptionAssigned = True
          Caption = #197'r'
          DataBinding.FieldName = 'EndTime'
          GroupIndex = 0
          GroupInterval = giDateYear
          Visible = True
          UniqueName = #197'r'
        end
        object pivKDKvartal: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 1
          IsCaptionAssigned = True
          Caption = 'Kvartal'
          DataBinding.FieldName = 'EndTime'
          GroupIndex = 0
          GroupInterval = giDateQuarter
          Visible = True
          UniqueName = 'Kvartal'
        end
        object pivKDWeek: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 3
          IsCaptionAssigned = True
          Caption = 'Vecka'
          DataBinding.FieldName = 'EndTime'
          GroupIndex = 0
          GroupExpanded = False
          GroupInterval = giDateWeekOfYear
          Visible = True
          UniqueName = 'Vecka'
        end
        object pivKDPlaneradTid: TcxDBPivotGridField
          AreaIndex = 1
          DataBinding.FieldName = 'PlaneradTid'
          Visible = True
          UniqueName = 'PlaneradTid'
        end
        object pivKDMonth: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 2
          IsCaptionAssigned = True
          Caption = 'M'#229'nad'
          DataBinding.FieldName = 'EndTime'
          GroupIndex = 0
          GroupInterval = giDateMonth
          Visible = True
          UniqueName = 'M'#229'nad'
        end
        object pivKDAT: TcxDBPivotGridField
          AreaIndex = 2
          DataBinding.FieldName = 'AT'
          Visible = True
          UniqueName = 'AT'
        end
        object pivKDAB: TcxDBPivotGridField
          AreaIndex = 3
          DataBinding.FieldName = 'AB'
          Visible = True
          UniqueName = 'AB'
        end
        object pivKDTS: TcxDBPivotGridField
          AreaIndex = 4
          DataBinding.FieldName = 'TS'
          Visible = True
          UniqueName = 'TS'
        end
        object pivKDKV: TcxDBPivotGridField
          AreaIndex = 5
          DataBinding.FieldName = 'KV'
          Visible = True
          UniqueName = 'KV'
        end
        object pivKDUT: TcxDBPivotGridField
          AreaIndex = 6
          DataBinding.FieldName = 'UT'
          Visible = True
          UniqueName = 'UT'
        end
        object pivKDIMP: TcxDBPivotGridField
          AreaIndex = 7
          DataBinding.FieldName = 'IMP'
          Visible = True
          UniqueName = 'IMP'
        end
        object pivKDDIM_Grade: TcxDBPivotGridField
          AreaIndex = 8
          IsCaptionAssigned = True
          Caption = 'Dim/Kval'
          DataBinding.FieldName = 'DIM_Grade'
          Visible = True
          UniqueName = 'Dim/Kval'
        end
        object pivKDDIM_Grade_Length: TcxDBPivotGridField
          AreaIndex = 9
          DataBinding.FieldName = 'DIM_Grade_Length'
          Visible = True
          UniqueName = 'Dim/Kval/L'#228'ngd'
        end
        object pivKDALMM: TcxDBPivotGridField
          AreaIndex = 10
          DataBinding.FieldName = 'ALMM'
          Visible = True
          UniqueName = 'L'#228'ngd (ALMM)'
        end
        object pivKDDIM_Grade_Length_TS: TcxDBPivotGridField
          AreaIndex = 11
          DataBinding.FieldName = 'DIM_Grade_Length_TS'
          Visible = True
          UniqueName = 'Dim/Kval/L'#228'ngd/TS'
        end
        object pivKDInDate: TcxDBPivotGridField
          AreaIndex = 12
          DataBinding.FieldName = 'InDate'
          Visible = True
          UniqueName = 'In Datum + Tid'
        end
        object pivKDNoOfPkgs: TcxDBPivotGridField
          AreaIndex = 13
          DataBinding.FieldName = 'NoOfPkgs'
          Visible = True
          UniqueName = 'Paket'
        end
        object pivKDDateOnly: TcxDBPivotGridField
          AreaIndex = 14
          DataBinding.FieldName = 'DateOnly'
          Visible = True
          UniqueName = 'In Datum'
        end
      end
    end
    object tsOverview: TcxTabSheet
      Caption = #214'VERSIKT VERK'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1246
        Height = 35
        Align = alTop
        TabOrder = 0
      end
    end
    object tsKapStat: TcxTabSheet
      Caption = 'KAPSTAT'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1246
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label2: TLabel
          Left = 144
          Top = 56
          Width = 49
          Height = 13
          Caption = 'Akt.bredd:'
        end
        object Label1: TLabel
          Left = 16
          Top = 56
          Width = 59
          Height = 13
          Caption = 'Akt.tjocklek:'
        end
        object cxButton4: TcxButton
          Left = 16
          Top = 8
          Width = 97
          Height = 25
          Action = acNewKapMall
          TabOrder = 0
        end
        object cxButton10: TcxButton
          Left = 120
          Top = 8
          Width = 97
          Height = 25
          Action = acSaveKapStatMall
          TabOrder = 1
        end
        object cbKapStatMallar: TcxComboBox
          Left = 224
          Top = 9
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.OnChange = cbKapStatMallarPropertiesChange
          TabOrder = 2
          Width = 185
        end
        object cxButton11: TcxButton
          Left = 424
          Top = 7
          Width = 97
          Height = 25
          Action = acRemoveKapStatMall
          TabOrder = 3
        end
        object cxButton12: TcxButton
          Left = 536
          Top = 7
          Width = 97
          Height = 25
          Action = acExpandKapStatAll
          TabOrder = 4
        end
        object cxButton13: TcxButton
          Left = 632
          Top = 7
          Width = 97
          Height = 25
          Action = acCollapseKapStatAll
          TabOrder = 5
        end
        object meAT: TcxMaskEdit
          Left = 80
          Top = 48
          TabOrder = 6
          Width = 49
        end
        object meAB: TcxMaskEdit
          Left = 200
          Top = 48
          TabOrder = 7
          Width = 57
        end
      end
      object pvKapStat: TcxDBPivotGrid
        Left = 0
        Top = 73
        Width = 1246
        Height = 687
        Align = alClient
        DataSource = ds_Kap
        Groups = <
          item
            IsCaptionAssigned = True
            Caption = 'Period'
            UniqueName = ''
          end>
        TabOrder = 1
        object cxDBPivotGrid1TONr: TcxDBPivotGridField
          AreaIndex = 0
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = 'K'#246'rorder'
          DataBinding.FieldName = 'TONr'
          Visible = True
          UniqueName = 'K'#246'rorder'
        end
        object cxDBPivotGrid1Ravaru_Produkt: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 0
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = 'R'#229'varuprodukt'
          DataBinding.FieldName = 'Ravaru_Produkt'
          Visible = True
          UniqueName = 'R'#229'varuprodukt'
        end
        object cxDBPivotGrid1Ravaru_Langd: TcxDBPivotGridField
          AreaIndex = 1
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = 'R'#229'varul'#228'ngd'
          DataBinding.FieldName = 'Ravaru_Langd'
          Visible = True
          UniqueName = 'R'#229'varul'#228'ngd'
        end
        object cxDBPivotGrid1HF_Produkt: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 1
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'HF_Produkt'
          Visible = True
          UniqueName = 'HF_Produkt'
        end
        object cxDBPivotGrid1HF_Langd: TcxDBPivotGridField
          AreaIndex = 2
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = 'HF L'#228'ngd'
          DataBinding.FieldName = 'HF_Langd'
          Visible = True
          UniqueName = 'HF L'#228'ngd'
        end
        object cxDBPivotGrid1PaRegAM3: TcxDBPivotGridField
          Area = faData
          AreaIndex = 1
          AllowedAreas = [faData]
          IsCaptionAssigned = True
          Caption = 'P'#229'reg AM3'
          DataBinding.FieldName = 'PaRegAM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.000'
          Visible = True
          UniqueName = 'P'#229'reg AM3'
        end
        object cxDBPivotGrid1AvRegAM3: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          AllowedAreas = [faData]
          IsCaptionAssigned = True
          Caption = 'Avreg AM3'
          DataBinding.FieldName = 'AvRegAM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.000'
          Visible = True
          UniqueName = 'Avreg AM3'
        end
        object cxDBPivotGrid1Utbyte: TcxDBPivotGridField
          Area = faData
          AreaIndex = 2
          AllowedAreas = [faData]
          IsCaptionAssigned = True
          Caption = 'Utbyte AM3'
          DataBinding.FieldName = 'Utbyte'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.000'
          SummaryType = stCustom
          TotalsVisibility = tvCustom
          Visible = True
          OnCalculateCustomSummary = cxDBPivotGrid1UtbyteCalculateCustomSummary
          UniqueName = 'Utbyte AM3'
        end
        object cxDBPivotGrid1Producerat: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 0
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = 'Prod.datum'
          DataBinding.FieldName = 'Producerat'
          Visible = True
          UniqueName = 'Prod.datum'
        end
        object cxDBPivotGrid1Year: TcxDBPivotGridField
          AreaIndex = 3
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = #197'r'
          DataBinding.FieldName = 'Producerat'
          GroupIndex = 0
          GroupInterval = giDateYear
          Visible = True
          UniqueName = #197'r'
        end
        object cxDBPivotGrid1Kvartal: TcxDBPivotGridField
          AreaIndex = 4
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = 'Kvartal'
          DataBinding.FieldName = 'Producerat'
          GroupIndex = 0
          GroupInterval = giDateQuarter
          Visible = True
          UniqueName = 'Kvartal'
        end
        object cxDBPivotGrid1Month: TcxDBPivotGridField
          AreaIndex = 5
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = 'M'#229'nad'
          DataBinding.FieldName = 'Producerat'
          GroupIndex = 0
          GroupInterval = giDateMonth
          Visible = True
          UniqueName = 'M'#229'nad'
        end
        object cxDBPivotGrid1Week: TcxDBPivotGridField
          AreaIndex = 6
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = 'Vecka'
          DataBinding.FieldName = 'Producerat'
          GroupIndex = 0
          GroupExpanded = False
          GroupInterval = giDateWeekOfYear
          Visible = True
          UniqueName = 'Vecka'
        end
        object pvKapStatSpillAM3: TcxDBPivotGridField
          Area = faData
          AreaIndex = 3
          AllowedAreas = [faData]
          IsCaptionAssigned = True
          Caption = 'Spill AM3'
          DataBinding.FieldName = 'SpillAM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.000'
          UniqueName = 'Spill AM3'
        end
        object pvKapStatSpillNM3: TcxDBPivotGridField
          Area = faData
          AreaIndex = 4
          AllowedAreas = [faData]
          IsCaptionAssigned = True
          Caption = 'Spill NM3'
          DataBinding.FieldName = 'SpillNM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.000'
          UniqueName = 'Spill NM3'
        end
        object pvKapStatPaRegNM3: TcxDBPivotGridField
          Area = faData
          AreaIndex = 5
          AllowedAreas = [faData]
          IsCaptionAssigned = True
          Caption = 'P'#229'reg NM3'
          DataBinding.FieldName = 'PaRegNM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.000'
          UniqueName = 'P'#229'reg NM3'
        end
        object pvKapStatUtbyteNM3: TcxDBPivotGridField
          Area = faData
          AreaIndex = 6
          AllowedAreas = [faData]
          IsCaptionAssigned = True
          Caption = 'Utbyte NM3'
          DataBinding.FieldName = 'UtbyteNM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.000'
          SummaryType = stCustom
          TotalsVisibility = tvCustom
          OnCalculateCustomSummary = pvKapStatUtbyteNM3CalculateCustomSummary
          UniqueName = 'Utbyte NM3'
        end
        object pvKapStatAvRegNM3: TcxDBPivotGridField
          Area = faData
          AreaIndex = 7
          AllowedAreas = [faData]
          IsCaptionAssigned = True
          Caption = 'Avreg NM3'
          DataBinding.FieldName = 'AvRegNM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.000'
          UniqueName = 'Avreg NM3'
        end
        object pvKapStatProdPcs: TcxDBPivotGridField
          Area = faData
          AreaIndex = 8
          AllowedAreas = [faData]
          IsCaptionAssigned = True
          Caption = 'Prod.styck'
          DataBinding.FieldName = 'ProdPcs'
          PropertiesClassName = 'TcxCalcEditProperties'
          UniqueName = 'Prod.styck'
        end
        object pvKapStatPlannedpcs: TcxDBPivotGridField
          Area = faData
          AreaIndex = 9
          AllowedAreas = [faData]
          IsCaptionAssigned = True
          Caption = 'Plan.styck'
          DataBinding.FieldName = 'Plannedpcs'
          PropertiesClassName = 'TcxCalcEditProperties'
          SummaryType = stMax
          UniqueName = 'Plan.styck'
        end
        object pvKapStatDiffPcs: TcxDBPivotGridField
          Area = faData
          AreaIndex = 10
          AllowedAreas = [faData]
          IsCaptionAssigned = True
          Caption = 'Diff styck'
          DataBinding.FieldName = 'DiffPcs'
          PropertiesClassName = 'TcxCalcEditProperties'
          SummaryType = stCustom
          TotalsVisibility = tvCustom
          OnCalculateCustomSummary = pvKapStatDiffPcsCalculateCustomSummary
          UniqueName = 'Diff styck'
        end
        object pvKapStatgare: TcxDBPivotGridField
          AreaIndex = 7
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = #196'gare r'#229'vara'
          DataBinding.FieldName = #196'gare'
          Visible = True
          UniqueName = #196'gare r'#229'vara'
        end
        object pvKapStatAT: TcxDBPivotGridField
          AreaIndex = 8
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'AT'
          Visible = True
          UniqueName = 'AT'
        end
        object pvKapStatAB: TcxDBPivotGridField
          AreaIndex = 9
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'AB'
          Visible = True
          UniqueName = 'AB'
        end
        object pvKapStatProduktPrefix: TcxDBPivotGridField
          AreaIndex = 10
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'ProduktPrefix'
          Visible = True
          UniqueName = 'ProduktPrefix'
        end
        object pvKapStatProducent: TcxDBPivotGridField
          AreaIndex = 11
          DataBinding.FieldName = 'Producent'
          Visible = True
          UniqueName = 'Producent'
        end
        object pvKapStatOrt: TcxDBPivotGridField
          AreaIndex = 12
          DataBinding.FieldName = 'Ort'
          Visible = True
          UniqueName = 'Ort'
        end
        object pvKapStatUtbyteAM1: TcxDBPivotGridField
          AreaIndex = 13
          IsCaptionAssigned = True
          Caption = 'Utbyte AM1'
          DataBinding.FieldName = 'UtbyteAM1'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.000'
          SummaryType = stCustom
          TotalsVisibility = tvCustom
          Visible = True
          OnCalculateCustomSummary = pvKapStatUtbyteAM1CalculateCustomSummary
          UniqueName = 'Utbyte AM1'
        end
        object pvKapStatPaRegAM1: TcxDBPivotGridField
          AreaIndex = 14
          IsCaptionAssigned = True
          Caption = 'P'#229'reg AM1'
          DataBinding.FieldName = 'PaRegAM1'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.000'
          Visible = True
          UniqueName = 'P'#229'reg AM1'
        end
        object pvKapStatAvRegAM1: TcxDBPivotGridField
          AreaIndex = 15
          IsCaptionAssigned = True
          Caption = 'Avreg AM1'
          DataBinding.FieldName = 'AvRegAM1'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###.000'
          Visible = True
          UniqueName = 'Avreg AM1'
        end
      end
    end
    object tsStoppTid: TcxTabSheet
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'STOPPTIDSTAT'
      ImageIndex = 28
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1238
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 72
          Top = 47
          Width = 52
          Height = 13
          Caption = 'Sortera per'
          FocusControl = cbSortByFieldInStoppStat
        end
        object cxButton14: TcxButton
          Left = 10
          Top = 10
          Width = 56
          Height = 25
          Action = acNewStoppTidMall
          TabOrder = 0
        end
        object cxButton15: TcxButton
          Left = 72
          Top = 10
          Width = 65
          Height = 25
          Action = acSaveStoppTidMall
          TabOrder = 1
        end
        object cbStoppTidMallar: TcxComboBox
          Left = 144
          Top = 15
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.OnChange = cbStoppTidMallarPropertiesChange
          TabOrder = 2
          Width = 184
        end
        object cxButton16: TcxButton
          Left = 333
          Top = 11
          Width = 77
          Height = 24
          Action = acRemoveStoppTidMall
          TabOrder = 3
        end
        object cxButton17: TcxButton
          Left = 417
          Top = 11
          Width = 84
          Height = 24
          Action = acExpandStoppTidAll
          TabOrder = 4
        end
        object cxButton18: TcxButton
          Left = 508
          Top = 11
          Width = 78
          Height = 24
          Action = acMinimizeStoppTidAll
          TabOrder = 5
        end
        object cbStoppTidTotals: TcxCheckBox
          Left = 1017
          Top = 2
          Caption = 'Visa grandtotal'
          Properties.OnChange = cbStoppTidTotalsPropertiesChange
          State = cbsChecked
          TabOrder = 6
          Width = 98
        end
        object cbStoppTidRowTotal: TcxCheckBox
          Left = 1017
          Top = 15
          Caption = 'Visa radtotal'
          Properties.OnChange = cbStoppTidRowTotalPropertiesChange
          State = cbsChecked
          TabOrder = 7
          Width = 98
        end
        object cxButton19: TcxButton
          Left = 1121
          Top = 9
          Width = 64
          Height = 24
          Action = acCalcWorkingTime
          TabOrder = 8
          Visible = False
        end
        object lcProdUnit: TcxDBLookupComboBox
          Left = 651
          Top = 15
          DataBinding.DataField = 'ProdUnit'
          DataBinding.DataSource = ds_UserProps
          Properties.ImmediatePost = True
          Properties.ListColumns = <>
          Properties.ListOptions.ShowHeader = False
          Properties.MaxLength = 0
          TabOrder = 9
          Width = 129
        end
        object cxLabel4: TcxLabel
          Left = 598
          Top = 20
          Caption = 'M'#228'tpunkt:'
        end
        object cxButton20: TcxButton
          Left = 787
          Top = 7
          Width = 85
          Height = 28
          Action = acPrintSawcoStyleReport
          TabOrder = 11
        end
        object cxButton21: TcxButton
          Left = 878
          Top = 7
          Width = 111
          Height = 28
          Action = acStoppTidParam
          TabOrder = 12
        end
        object cbSortByFieldInStoppStat: TcxComboBox
          Left = 143
          Top = 39
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Kategori'
            'Minuter'
            'Timmar'
            'Antal'
            'Utfall tid'
            'Utfall antal')
          Properties.MaxLength = 0
          Properties.OnChange = cbSortByFieldInStoppStatPropertiesChange
          TabOrder = 13
          Text = 'Kategori'
          Width = 184
        end
      end
      object pvStoppTid: TcxDBPivotGrid
        Left = 0
        Top = 65
        Width = 1238
        Height = 438
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alTop
        DataSource = ds_StoppTid
        FieldHeaderImages = dmsConnector.ilStatus
        GroupHeaderImages = dmsConnector.LOStatus1616
        Groups = <
          item
            IsCaptionAssigned = True
            Caption = 'Period'
            UniqueName = ''
          end>
        TabOrder = 1
        ExplicitWidth = 1246
        object pvStoppTidRegPointName: TcxDBPivotGridField
          AreaIndex = 0
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'RegPointName'
          Visible = True
          UniqueName = 'M'#228'tpunkt'
        end
        object pvStoppTidStoppTidsNamn: TcxDBPivotGridField
          AreaIndex = 1
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'StoppTidsNamn'
          Visible = True
          UniqueName = 'Orsak'
        end
        object pvStoppTidStoppStartNoTime: TcxDBPivotGridField
          AreaIndex = 2
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'StoppStartNoTime'
          Visible = True
          UniqueName = 'Stoppstartade'
        end
        object pvStoppTidStoppStartWithTime: TcxDBPivotGridField
          AreaIndex = 3
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'StoppStartWithTime'
          UniqueName = 'Stoppstartade'
        end
        object pvStoppTidKvitterat: TcxDBPivotGridField
          AreaIndex = 4
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'Kvitterat'
          Visible = True
          UniqueName = 'Kvitterat'
        end
        object pvStoppTidStoppOrsakNr: TcxDBPivotGridField
          AreaIndex = 5
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'StoppOrsakNr'
          UniqueName = 'StoppOrsakNr'
        end
        object pvStoppTidStoppSeconds: TcxDBPivotGridField
          AreaIndex = 10
          AllowedAreas = [faFilter, faData]
          DataBinding.FieldName = 'StoppSeconds'
          Visible = True
          UniqueName = 'Sek'
        end
        object pvStoppTidStoppMinutes: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          AllowedAreas = [faFilter, faData]
          DataBinding.FieldName = 'StoppMinutes'
          Visible = True
          UniqueName = 'Min'
        end
        object pvStoppTidStoppHours: TcxDBPivotGridField
          AreaIndex = 11
          AllowedAreas = [faFilter, faData]
          DataBinding.FieldName = 'StoppHours'
          Visible = True
          UniqueName = 'Tim'
        end
        object pvStoppTidDriftPlatsnr: TcxDBPivotGridField
          AreaIndex = 6
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'DriftPlatsnr'
          UniqueName = 'DriftPlatsnr'
        end
        object pvStoppTidVerkNo: TcxDBPivotGridField
          AreaIndex = 7
          AllowedAreas = [faColumn, faRow, faFilter]
          DataBinding.FieldName = 'VerkNo'
          UniqueName = 'VerkNo'
        end
        object pvStoppTidNoOfStopps: TcxDBPivotGridField
          AreaIndex = 8
          DataBinding.FieldName = 'NoOfStopps'
          Visible = True
          UniqueName = 'Antal'
        end
        object pvStoppTidUtfallTid: TcxDBPivotGridField
          Area = faData
          AreaIndex = 1
          AllowedAreas = [faFilter, faData]
          IsCaptionAssigned = True
          Caption = 'Utfall % av tid'
          DataBinding.FieldName = 'StoppMinutes'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '###.0'
          SummaryVariation = svPercentOfColumn
          Visible = True
          UniqueName = 'Utfall % av tid'
        end
        object pvStoppTidUtfallAntalStopp: TcxDBPivotGridField
          AreaIndex = 9
          AllowedAreas = [faFilter, faData]
          IsCaptionAssigned = True
          Caption = 'Utfall % av antal'
          DataBinding.FieldName = 'NoOfStopps'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '###.0'
          SummaryVariation = svPercentOfColumn
          Visible = True
          UniqueName = 'Utfall % av antal'
        end
        object pvStoppTidYear: TcxDBPivotGridField
          AreaIndex = 12
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = #197'r'
          DataBinding.FieldName = 'StoppStartNoTime'
          GroupIndex = 0
          GroupInterval = giDateYear
          Visible = True
          UniqueName = #197'r'
        end
        object pvStoppTidQuarter: TcxDBPivotGridField
          AreaIndex = 13
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = 'Kvartal'
          DataBinding.FieldName = 'StoppStartNoTime'
          GroupIndex = 0
          GroupInterval = giDateQuarter
          Visible = True
          UniqueName = 'Kvartal'
        end
        object pvStoppTidMonth: TcxDBPivotGridField
          AreaIndex = 14
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = 'M'#229'nad'
          DataBinding.FieldName = 'StoppStartNoTime'
          GroupIndex = 0
          GroupInterval = giDateMonth
          Visible = True
          UniqueName = 'M'#229'nad'
        end
        object pvStoppTidVecka: TcxDBPivotGridField
          AreaIndex = 15
          AllowedAreas = [faColumn, faRow, faFilter]
          IsCaptionAssigned = True
          Caption = 'Vecka'
          DataBinding.FieldName = 'StoppStartNoTime'
          GroupIndex = 0
          GroupExpanded = False
          GroupInterval = giDateWeekOfYear
          Visible = True
          UniqueName = 'Vecka'
        end
        object pvStoppTidProdukt: TcxDBPivotGridField
          AreaIndex = 16
          DataBinding.FieldName = 'Produkt'
          Visible = True
          UniqueName = 'Produkt'
        end
        object pvStoppTidKoNr: TcxDBPivotGridField
          AreaIndex = 17
          IsCaptionAssigned = True
          Caption = 'K'#246'rNr'
          DataBinding.FieldName = 'KoNr'
          Visible = True
          UniqueName = 'K'#246'rNr'
        end
        object pvStoppTidSkift: TcxDBPivotGridField
          AreaIndex = 18
          DataBinding.FieldName = 'Skift'
          Visible = True
          UniqueName = 'Skift'
        end
      end
      object grdStoppTid: TcxGrid
        Left = 0
        Top = 511
        Width = 1238
        Height = 238
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        TabOrder = 2
        ExplicitTop = 509
        ExplicitWidth = 1246
        ExplicitHeight = 251
        object grdStoppTidDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object grdStoppTidChartView1: TcxGridChartView
          DiagramColumn.Active = True
        end
        object grdStoppTidLevel1: TcxGridLevel
          GridView = grdStoppTidChartView1
        end
      end
      object cxSplitter3: TcxSplitter
        Left = 0
        Top = 503
        Width = 1238
        Height = 8
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        HotZoneClassName = 'TcxMediaPlayer8Style'
        AlignSplitter = salTop
        Control = pvStoppTid
        Color = clMaroon
        ParentColor = False
        ExplicitWidth = 1246
      end
    end
  end
  object ds_Data: TDataSource
    DataSet = cds_Data
    Left = 184
    Top = 368
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 72
    Top = 520
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleclMaroon: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleclWhite: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
  object ds_UserProps: TDataSource
    DataSet = cds_UserProps
    Left = 80
    Top = 369
  end
  object ds_verk: TDataSource
    DataSet = cds_verk
    Left = 256
    Top = 368
  end
  object ActionList1: TActionList
    Images = imglistActions
    Left = 720
    Top = 336
    object acRefresh: TAction
      Caption = 'Uppdatera F6'
      ImageIndex = 1
      ShortCut = 117
      OnExecute = acRefreshExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 0
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acExport: TAction
      Caption = 'Exportera'
    end
    object acSendEmail: TAction
      Caption = 'Emaila valt verk'
      OnExecute = acSendEmailExecute
    end
    object acExportToXLS: TAction
      Caption = 'Exporta till XLS F10'
      ImageIndex = 22
      ShortCut = 121
      OnExecute = acExportToXLSExecute
    end
    object acPrint: TAction
      Caption = 'Skriv ut F8'
      ImageIndex = 4
      ShortCut = 119
      OnExecute = acPrintExecute
    end
    object acSendToAllMills: TAction
      Caption = 'Emaila alla verks data'
      OnExecute = acSendToAllMillsExecute
    end
    object acSortByData: TAction
      Category = 'Leveranser'
      Caption = 'acSortByData'
      OnExecute = acSortByDataExecute
    end
    object acSaveGridSettings: TAction
      Caption = 'Spara tabellinst'#228'llningar.'
    end
    object acPrintProdDiagram: TAction
      Caption = 'Skriv ut produktionsdiagram'
      OnExecute = acPrintProdDiagramExecute
    end
    object acActualDay: TAction
      Caption = 'Idag'
    end
    object acLastDay: TAction
      Caption = 'Ig'#229'r'
    end
    object acActualWeek: TAction
      Caption = 'Aktuell vecka'
    end
    object acToday: TAction
      Caption = 'I dag F2'
      ImageIndex = 28
      ShortCut = 113
      OnExecute = acTodayExecute
    end
    object acYesterday: TAction
      Caption = 'I g'#229'r F3'
      ImageIndex = 28
      ShortCut = 114
      OnExecute = acYesterdayExecute
    end
    object acNyLeveransLayout: TAction
      Caption = 'Ny mall'
      OnExecute = acNyLeveransLayoutExecute
    end
    object acLoadLeveransLayout: TAction
      Caption = 'Ladda layout'
      OnExecute = acLoadLeveransLayoutExecute
    end
    object acSaveLeveranserLayout: TAction
      Caption = 'Spara mall'
      OnExecute = acSaveLeveranserLayoutExecute
    end
    object acRemoveLayout: TAction
      Caption = 'Ta bort mall'
      OnExecute = acRemoveLayoutExecute
    end
    object acNyProdMall: TAction
      Caption = 'Ny mall'
      OnExecute = acNyProdMallExecute
    end
    object acSaveProdMall: TAction
      Caption = 'Spara mall'
      OnExecute = acSaveProdMallExecute
    end
    object acRemoveProdMall: TAction
      Caption = 'Ta bort mall'
      OnExecute = acRemoveProdMallExecute
    end
    object acExpandAll: TAction
      Caption = 'Expandera alla'
      OnExecute = acExpandAllExecute
    end
    object acCollapseAll: TAction
      Caption = 'Minimera alla'
      OnExecute = acCollapseAllExecute
    end
    object acNewKapMall: TAction
      Category = 'KapStat'
      Caption = 'Ny mall'
      OnExecute = acNewKapMallExecute
    end
    object acSaveKapStatMall: TAction
      Category = 'KapStat'
      Caption = 'Spara mall'
      OnExecute = acSaveKapStatMallExecute
    end
    object acRemoveKapStatMall: TAction
      Category = 'KapStat'
      Caption = 'Ta bort mall'
      OnExecute = acRemoveKapStatMallExecute
    end
    object acExpandKapStatAll: TAction
      Category = 'KapStat'
      Caption = 'Maximera alla'
      OnExecute = acExpandKapStatAllExecute
    end
    object acCollapseKapStatAll: TAction
      Category = 'KapStat'
      Caption = 'Minimera alla'
      OnExecute = acCollapseKapStatAllExecute
    end
    object acNewStoppTidMall: TAction
      Category = 'StoppTid'
      Caption = 'Ny mall'
      OnExecute = acNewStoppTidMallExecute
    end
    object acSaveStoppTidMall: TAction
      Category = 'StoppTid'
      Caption = 'Spara mall'
      OnExecute = acSaveStoppTidMallExecute
    end
    object acRemoveStoppTidMall: TAction
      Category = 'StoppTid'
      Caption = 'Makulera mall'
      OnExecute = acRemoveStoppTidMallExecute
    end
    object acExpandStoppTidAll: TAction
      Category = 'StoppTid'
      Caption = 'Expandera alla'
      OnExecute = acExpandStoppTidAllExecute
    end
    object acMinimizeStoppTidAll: TAction
      Category = 'StoppTid'
      Caption = 'Minimera alla'
      OnExecute = acMinimizeStoppTidAllExecute
    end
    object acCalcWorkingTime: TAction
      Category = 'StoppTid'
      Caption = 'Arbetstid'
      OnExecute = acCalcWorkingTimeExecute
    end
    object acPrintSawcoStyleReport: TAction
      Category = 'StoppTid'
      Caption = 'Stopptid'
      ImageIndex = 4
      OnExecute = acPrintSawcoStyleReportExecute
    end
    object acStoppTidParam: TAction
      Category = 'StoppTid'
      Caption = 'Stopptid setup'
      OnExecute = acStoppTidParamExecute
    end
    object acNyTorkMall: TAction
      Category = 'Tork'
      Caption = 'Ny mall'
      OnExecute = acNyTorkMallExecute
    end
    object acSaveKilnMall: TAction
      Category = 'Tork'
      Caption = 'Spara mall'
      OnExecute = acSaveKilnMallExecute
    end
    object acRemoveKilnMall: TAction
      Category = 'Tork'
      Caption = 'Ta bort mall'
      OnExecute = acRemoveKilnMallExecute
    end
    object acExpandAllKiln: TAction
      Category = 'Tork'
      Caption = 'Expandera alla'
      OnExecute = acExpandAllKilnExecute
    end
    object acCollapseAllKiln: TAction
      Category = 'Tork'
      Caption = 'Minimera alla'
      OnExecute = acCollapseAllKilnExecute
    end
  end
  object ds_ProdData: TDataSource
    DataSet = sq_ProdDataSumII
    Left = 400
    Top = 456
  end
  object ds_RegPoint: TDataSource
    DataSet = cds_RegPoint
    Left = 720
    Top = 445
  end
  object SaveDialog1: TSaveDialog
    Left = 720
    Top = 285
  end
  object ds_TorkSatser: TDataSource
    DataSet = cds_TorkSatser
    Left = 512
    Top = 357
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link9
    Version = 0
    Left = 248
    Top = 629
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
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Leveranser'
      ReportDocument.CreationDate = 42207.551554062500000000
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
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Produktion'
      ReportDocument.CreationDate = 42207.551554074070000000
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.RowFields = False
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link3: TcxPivotGridReportLink
      Active = True
      Component = pivKD
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Torksatser'
      ReportDocument.CreationDate = 42207.551554085650000000
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.RowFields = False
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link4: TcxPivotGridReportLink
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
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42207.551554097220000000
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link5: TdxGridReportLink
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 40918.446931423610000000
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link7: TdxCompositionReportLink
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 39797.416352418980000000
      ReportDocument.IsCaptionAssigned = True
      Items = <
        item
          ReportLink = dxComponentPrinter1Link4
          BuiltInCompositionItem = True
        end
        item
          ReportLink = dxComponentPrinter1Link5
          BuiltInCompositionItem = True
        end>
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link6: TdxCustomContainerReportLink
      Active = True
      Component = Owner
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42207.551554733790000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {
        63784C6162656C330D0A63784C6162656C320D0A63784C6162656C310D0A6378
        53706C6974746572310D0A4D656D6F310D0A}
      AggregatedReportLinks = {}
    end
    object dxComponentPrinter1Link8: TcxPivotGridReportLink
      Component = pvKapStat
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '')
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name]'
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link9: TcxPivotGridReportLink
      Component = pvStoppTid
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Stopptid'
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link10: TcxPivotGridReportLink
      Active = True
      Component = pvStoppTid
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42207.551554745370000000
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link11: TdxGridReportLink
      Active = True
      Component = grdStoppTid
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42207.551554756940000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link12: TdxCustomContainerReportLink
      Component = Owner
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
    object dxComponentPrinter1Link13: TdxCompositionReportLink
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 41287.829693518520000000
      ReportDocument.IsCaptionAssigned = True
      Items = <
        item
          ReportLink = dxComponentPrinter1Link10
          BuiltInCompositionItem = True
        end
        item
          ReportLink = dxComponentPrinter1Link11
          BuiltInCompositionItem = True
        end>
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 248
    Top = 464
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
  object ds_overview: TDataSource
    DataSet = cds_overview
    Left = 920
    Top = 325
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 249
    Top = 574
    object Idag1: TMenuItem
      Action = acToday
    end
    object IgrF31: TMenuItem
      Action = acYesterday
    end
  end
  object imglistActions: TImageList
    Height = 24
    Width = 24
    Left = 248
    Top = 520
    Bitmap = {
      494C01011D002100040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000C000000001002000000000000020
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A6BBD008C8C94008C8C84009C9C94008C8C840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD007B7B7B008C8C8400DEDED600ADADAD009C9C9C0094949400A59C
      9C008C8C84000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDC6B500EFEFEF00EFEFEF00DEDED600C6C6C600ADAD
      FD00B5ADB5009C9C94008C8C8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CEBD00EFEFEF00FFFFFF00FFF7FF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00C6BDBD00ADADAD009C9C9C008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDBDAD00EFEFEF00FFFFFF00EFE7EF00B5ADB5009C94
      9C004A5A5200ADADAD00EFEFEF00EFEFEF00C6C6C6008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDC6B500EFF7E700FFFFFF00D6D6D6004A5A5200B5AD
      B500A59C9C00948C8C00BDB5B500EFEFEF00DEDED6008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CEBD00F7F7E700FFFFFF00DEDEDE00B5B5B500FFFF
      F700FFFFF7004A5A52008C848400FFFFF700D6D6CE008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CEB500EFF7E700FFFFFF00DEDEDE00ADA5AD00B5AD
      B500A5A5A5004A5A5200A5A5A500FFF7F700D6D6CE008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDC6AD00EFF7DE00FFFFFF00CECECE004A5A52007B73
      73005A5252009C949C00F7F7EF00F7F7EF00DEDED6008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CEB500EFF7E700FFFFFF00D6D6D6004A5A5200847B
      7B004A5A5200FFFFF700FFF7F700F7F7EF00DEDED6008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CEC600EFEFEF00FFFFFF00EFEFEF00ADA5AD00ADA5
      FD009C9C9C007B737300FFFFF700F7F7EF00DEDED6008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDC6CE00EFEFEF00EFEFF700FFFFF700FFFFF700FFFF
      F700FFFFF700FFFFF700F7F7E700EFEFEF00E7DEDE008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CED600EFF7F700DEDED6004A5A5200949494009C94
      9C00CECEC60094949400F7F7E700EFEFEF00E7DEE7008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00B5C6C600EFF7F700CED6D600DEDED600C6C6C6004A5A
      520094949400C6C6C6004A5A5200EFE7FF00EFE7FF008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDCEC600F7FFFF00B5BDBD008C949400EFE7EF00D6D6
      DE00C6C6C600C6CEC600DEDEE700EFE7FF00D6D6EF008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDC6CE00DEE7EF009C9CAD004A5A5200E7DEF700FFF7
      FF00FFFFFF00A5A5A5008C949400EFEFF700D6D6DE008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088CC6004A6B
      BD004A6BBD006B6B8C0094949C0094949C007B7B94004A5A52009C94B500BDB5
      DE00D6DEE7006B7B73004A5A5200BDC6C600BDC6C6008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A6B
      BD004A6BBD004A6BBD004A6BBD004A6BBD004A5A520052526B005A527B00736B
      8C007B7B8C00636B6B004A5A52005A6B63007B8C84008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087BB500087BB500087BB500087BB5004A6BBD004A6BBD004A6BBD004A6B
      BD0052526B004A5A5200424A4A0039424200636B73008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000087BB500087BB500087BB500087BB500087B
      B5004A6BBD004A6BBD005A636B00848C94007B8C940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000087B
      B500087BB500087BB500087BB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000527BC600527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A739C0039528C00394A
      730039426300000000000000000000000000637B9C003963BD003973CE003942
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000527BC6001873F700527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000528C
      F7004A84EF004273E7003973CE00314A8C003963BD004273E7003973DE003152
      FD0021397B002939630039528C004263A5003973CE003973DE004273E7004273
      CE00394263000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      0000527BC6000073FF000073F700296BC600527BC60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008CB5FF007BBD
      FF0073ADFF005A9CFF00528CF7002952A5004A84EF0063A5FF004A8CFF003973
      DE003152A500294A94003963BD003963CE003973CE003973DE004273E7003973
      DE005273A500000000000000000000000000000000000000000000000000A54A
      0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A
      0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A
      0000A54A0000A54A000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000527BC6000073FF00007BFF000073F700186BD600527BC600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5BDE700639C
      FF005294F7004A84EF004273DE00315AAD0073B5FF00B5FFFF007BB5FF00427B
      EF003963CE003963CE003963BD00315AB500294A9C0029428C00294A9C00315A
      B500395AAD00000000000000000000000000000000000000000000000000639C
      9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C
      9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C
      9C00639C9C00A54A000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00CE636300FFF7EF00FFF7EF00CE636300CE636300FFF7EF00CE63
      6300CE636300FFF7EF00CE636300CE636300FFF7EF00CE636300CE636300FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000527BC6000084FF000084FF000084FF000084FF00107BEF00527BC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A84
      EF004273DE004273DE003963CE003152A5004A84DE0094DEFF0073B5FF004284
      F7003973DE003973DE003973DE003163C6003152AD00294A9400213163002131
      63004A527B000000000000000000000000000000000000000000316363003163
      6300316363003163630031636300316363003163630031636300316363003163
      6300316363003163630031636300316363003163630031636300316363003163
      6300639C9C00A54A000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000527BC600009CFF00008CFF00008CFF00008CFF000884F700527B
      C600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007BBDFF0073B5
      FF0063A5FF005A9CFF004A8CFF003963BD0031529C005294FF005294FF004284
      F7004284F7004284F7004273E7003973DE00315ABD00294A9C00213973002131
      5200000000000000000000000000000000000000000000000000006363000063
      6300006363000063630000636300006363000063630000636300006363000063
      6300006363000063630000636300006363000063630000636300006363000063
      630031636300A54A000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000527BC60000B5FF00009CFF00008CFF000094FF000894
      F700527BC600527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDFFFF0094DE
      FF0084BDFF0073ADFF005294FF003963CE00395AAD005294FF005294FF004A8C
      FF004A8CFF004A8CFF00427BEF003973DE003163C6003152A500214284002131
      5200000000000000000000000000000000000000000000000000639C9C009CCE
      CE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCE
      CE009CCECE009CCECE009CCECE009CCECE009CCECE00639C9C00639C9C009C9C
      9C0031636300A54A000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00CE636300FFF7EF00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C
      9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000527BC60000C6FF0000B5FF000094FF00009C
      FF00009CFF001084EF00527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003973
      DE003163C6003963BD00315AB50031529C00528CF7005A9CFF004A94FF005294
      FF00529CFF005294FF00528CF7004273DE003163C6003152AD00294284002131
      520000000000000000000000000000000000000000000000000000000000639C
      9C009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCE
      CE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCE
      CE0031636300A54A000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000527BC60000D6FF0008C6FF0000A5
      FF00009CFF00009CFF000894F700527BC6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084BDFF007BB5
      FF0063A5FF005A9CFF00528CF700315ABD003152A5005A9CFF00529CFF0063AD
      FF007BB5FF0063A5FF004A8CFF004273E7003163C6003152A50021397B002131
      520000000000000000000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF00B5DE
      DE00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00CE636300FFF7EF00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C
      9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000527BC60000E7FF0018DE
      FF0008BDFF0000ADFF0000A5FF00009CFF00527BC60000000000000000000000
      0000000000000000000000000000000000000000000000000000C6FFFF00A5E7
      FF008CC6FF007BB5FF005A9CFF003963CE00395AAD005AA5FF0063ADFF0094DE
      FF00A5E7FF007BB5FF005294FF004273E7003163C6003152A500213973003142
      5A0000000000000000000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF00B5DE
      DE00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000527BC60008F7
      FF0029F7FF0021D6FF0000B5FF0000A5FF0000A5FF00527BC6004A7BB5000000
      0000000000000000000000000000000000000000000000000000000000005294
      F7004A84DE00427BDE003973CE003963BD00639CFF0063ADFF007BC6FF00C6FF
      FF00BDFFFF007BBDFF004A8CFF004273DE003963BD00294A9C00213163003942
      630000000000000000000000000000000000000000000000000000000000639C
      9C00B5DEDE00B5DEDE00B5DEDE0063009C0063319C0063319C0063319C006331
      9C00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE009CCE
      CE0063636300A54A000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00CE636300FFF7EF00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C
      9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000527BC600527BC600527BC600527BC600527BC600527BC60000EF
      FF0008FFFF0031F7FF0039E7FF0010BDFF0000ADFF0000A5FF000894F700527B
      C6000000000000000000000000000000000000000000000000007BB5FF0063A5
      FF005A94FF00528CF7004273E7003152AD004273BD0063ADFF0073BDFF00A5E7
      FF00A5E7FF0073B5FF004A8CFF003973DE00315AB50029428C00394263000000
      000000000000000000000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF0063319C00FFCEFF00FFCEFF00FFCEFF006331
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000527BC60029ADFF0000C6FF0000DEFF0000EFFF0000F7FF0000E7
      FF0000F7FF0000FFFF0021FFFF004AEFFF0018CEFF0000ADFF0000A5FF00009C
      FF00527BC6000000000000000000000000000000000000000000C6FFFF00ADEF
      FF008CCEFF007BB5FF005A9CFF003963CE003152A5005A9CFF005294FF004A8C
      FF00528CF700528CF700427BEF003963CE003152A50029427300000000000000
      000000000000000000000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF0063319C00FFCEFF00FFCEFF00FFCEFF006331
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000527BC60031ADFF0000C6FF0000DEFF0000F7FF0000FFFF0000F7
      FF0000E7FF0000F7FF0000FFFF0008FFFF0039FFFF0029DEFF0000B5FF0000A5
      FF000094FF00527BC600000000000000000000000000000000000000000094C6
      FF007BB5FF0073A5FF005A94FF00527BBD004A73B5005294FF0063ADFF005294
      FF003973DE003152AD003973DE00315ABD00314A8C0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000639C
      9C00B5DEDE00B5DEDE00B5DEDE0063319C0063319C0063319C0063319C006331
      9C00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE009CCE
      CE0063636300A54A000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000527BC60039A5FF0000C6FF0000DEFF0000EFFF0000F7FF0000F7
      FF0000EFFF0000DEFF0000FFFF0000FFFF0000FFFF0021FFFF0039EFFF0008C6
      FF00009CFF00527BC60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5C6F7007BBDFF0084BDFF00528C
      F7003163C60029428400315ABD00425A94000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF00B5DE
      DE00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C
      9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000527BC6006BB5FF0008C6FF0018E7FF0039E7FF004AEFFF005AF7
      FF0042F7FF0018FFFF0008FFFF0000FFFF0000FFFF0000FFFF0008FFFF0021FF
      FF0010D6FF00527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008CB5F700C6FFFF007BB5FF00427B
      EF003152A50042527B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF00B5DE
      DE00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A000000000000000000000000000000000000D66B0000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000527BC600527BC60084B5FF0018DEFF0008F7FF0008FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000F7FF0000EFFF0018DE
      F70063DEF700527BC60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094CEFF00C6FFFF0063A5FF003973
      DE00294284000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000639C
      9C009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCE
      CE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCE
      CE0031636300A54A000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000527BC600527BC60084B5FF0031D6
      FF0008F7FF0000FFFF0000FFFF0000F7FF0000D6FF0000BDFF0000B5FF0018A5
      F700527BC6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008CB5F700C6FFFF00ADEFFF005294FF003963
      BD00294273000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003163
      6300316363003163630031636300316363003163630031636300316363003163
      6300316363003163630031636300316363003163630031636300316363003163
      630031636300CE63000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000527BC600527B
      C600527BC60084B5FF0018E7FF0000F7FF0000EFFF0000CEFF0000ADFF0000A5
      FF0010A5FF00527BC60000000000000000000000000000000000000000000000
      00000000000000000000000000008CB5F700C6FFFF00A5E7FF005294FF003163
      C60029427300525A630000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000527BC600527BC60084B5FF0029DEFF0000EFFF0000DEFF0000B5
      FF0000A5FF0084B5FF00527BC600000000000000000000000000000000000000
      00000000000000000000000000008CB5F70094DEFF0094DEFF005A9CFF004273
      E700315AB50029428400525A7300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000CE630000CE6300000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D67B21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000527BC600527BC60084B5FF0042DEFF0010D6
      FF0000B5FF005AA5FF00527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000008CB5F70073B5FF005AA5FF004A8C
      FF004273DE003152AD004A527B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7A56300E7A56300E7A56300E7A56300E7A56300E7A56300E7A56300E7A5
      6300E7A56300E7A56300E7A56300E7A56300E7A56300E7A56300E7A56300E7A5
      6300E7A56300CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000527BC600527BC60084B5
      FF006BC6FF0052A5FF00527BC600000000000000000000000000000000000000
      000000000000000000000000000000000000000000008CB5F7005294FF00528C
      F7004273DE005A7BAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000527B
      C600527BC600527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600527BC600F7DEBD00F7DEB500F7D6B500F7D6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600317BEF00527BC600296BC600F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400F7DECE00397BE700007BFF000073F700527BC600F7D6B500F7D6AD00F7D6
      FD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400085A940008426300084263000842630000314A0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000BDC60000BDC60000BDC60000BD
      C60000BDC60000BDC60000BDC600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400F7E7CE00F7E7D600009CFF00008CFF00008CFF00527BC600F7D6B500F7D6
      FD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      000084848400085A9400084263000842630000314A0084848400000000004ABD
      FF00D6FFFF00BDFFFF008CF7FF008CF7FF00299CEF00107BCE00000000000000
      000000000000000000000000000000000000000000000000000084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000000
      000084E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000BDC60000BDC60000BDC60000BD
      C60000BDC60000BDC60000BDC6006BFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400F7E7D600DEDEDE009C9C9C0000B5FF00008CFF000094FF00527BC600527B
      C6009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00EFCE9400B584840000000000000000000000000000000000000000000000
      00004ABDFF00D6FFFF00BDFFFF008CF7FF00299CEF00107BCE00000000008484
      84004ABDFF004ABDFF004ABDFF004ABDFF004ABDFF0084848400084263000031
      4A0000000000000000000000000000000000000000000000000084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000000
      000084E7E70084E7E70084E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000B5BD0000B5BD0000BDC6000000000000BDC60000BDC60000BDC6000000
      000000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000BDC6000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      8400F7E7DE00F7EFDE00F7E7D600F7E7CE0000B5FF0008C6FF00009CFF00009C
      FF00527BC600F7DEC600F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000848484004ABDFF004ABDFF004ABDFF004ABDFF0084848400000000000000
      0000000000000000000084A5FF0094E7FF00BDFFFF007BCEDE004AA5C6002984
      BD005A5ACE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084E7E70084E7E70084E7E70084E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000B5BD0000B5BD0000B5BD0000BDC60000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC60000BDC60000C6CE0000C6CE0000C6CE0000BD
      C60000000000000000000000000000000000000000000000000000000000B57B
      8400F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE0000B5FF0008BDFF0000AD
      FF00009CFF00527BC600F7DEC600F7DEC600EFCEA500EFCE9C00EFCE9C00EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C94FF008CCEEF00BDFFFF006BBDD600429CC6002184
      C6004A5ADE00000000000000000000000000000000000000000084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E700000000000000000084E7E70084E7E70084E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF0000BDC600000000000000000000000000000000000000000000000000B584
      8400F7EFE700DEDEDE00527BC600527BC600527BC60000C6FF0008FFFF0031F7
      FF0010BDFF0000ADFF00527BC600527BC6009C9C9C009C9C9C009C9C9C009C9C
      9C00EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000085A94000842630008426300084263000031
      4A000000000000000000000000000000000000000000000000000000000084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E7000000000084E7E70084E7E70084E7E70084E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF006BFFFF0000BDC6000000000000000000000000000000000000000000BD84
      8400F7EFEF00FFF7EF0029ADFF0000C6FF0000EFFF0000F7FF0000F7FF0000FF
      FF004AEFFF0018CEFF0000A5FF00527BC600F7DEC600F7D6AD00EFCEA500EFCE
      9C00EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B9CEF008CCEEF00BDFFFF006BBDD600429CC6002184
      C6003963CE000000000000000000000000000000000000000000000000000000
      00000000000084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E700000000000000000084E7E70084E7E70084E7
      E700000000000000000000000000000000000000000000B5B50000BDC6000000
      000000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF0000CED60000BDC60000BDC60000000000000000000000000000000000BD84
      8C00FFF7F700FFFFF70039A5FF0000C6FF0000EFFF0000F7FF0000EFFF0000DE
      FF0000FFFF0000FFFF0039EFFF0008C6FF00527BC600F7DEC600F7D6AD00EFCE
      A500EFCE9C00B584840000000000000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B000073B5D60094DEEF00BDFFFF006BBDD600429CC6002184
      C6001873AD00007B0000007B0000007B00000000000000000000000000000000
      00000000000000000000FFFFFF0084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E7000000000084E7E70084E7
      E70084E7E7000000000000000000000000000000000000B5B50000B5B50000BD
      C60000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF0000CED60000CED60000BDC60000BDC600000000000000000000000000C68C
      8C00FFF7F700DEDEDE009C9C9C0008C6FF0039E7FF004AEFFF0042F7FF0018FF
      FF0000FFFF0000FFFF0008FFFF0021FFFF00527BC6009C9C9C009C9C9C009C9C
      9C00EFCEA500B584840000000000000000000000000000000000007B00000094
      000000940000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC6005AA5CE000842630008426300084263000031
      4A00009400000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084E7E70084E7E70084E7E700000000000000000000B5B50000B5B50000F7
      F70000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF0000CED60000CED6006BFFFF0000BDC600000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFF7F700FFF7EF0031D6FF0008F7FF0000FF
      FF0000F7FF0000D6FF0000B5FF00527BC600F7DEC600F7DEC600F7DEC600F7D6
      FD00F7D6AD00B584840000000000000000000000000000000000007B00000094
      0000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC6006363
      630063636300636363007BBDD60073C6DE00BDFFFF006BC6D60042A5C6002184
      C60010849C000094000000940000007B0000000000000000000000000000A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5000000
      0000000000000000000084E7E70084E7E7000000000000B5B50000B5B50000F7
      F70000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF0000CED60000CED6006BFFFF006BFFFF00000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EFE70031D6
      FF0000F7FF0000EFFF0000ADFF0000A5FF00527BC600F7DEC600F7DEC600F7DE
      C600F7D6AD00B584840000000000000000000000000000000000007B00000094
      00000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC60063636300C6FF
      FF00C6C6C600C6FFFF008CCEEF009CE7FF00BDFFFF007BE7FF0052C6F70039A5
      E70021949C000094000000940000007B0000000000000000000000000000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF000000
      0000FFFFFF000000000084E7E70084E7E7000000000000B5B50000B5B50000F7
      F70000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF0000CED60000CED6006BFFFF006BFFFF00000000000000000000000000CE94
      8C00FFF7F700DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0031D6FF0042DEFF0010D6FF005AA5FF00527BC6009C9C9C008C84
      7B0084847B00B584840000000000000000000000000000000000007B00000094
      000000C60000A5FFA500C6FFC600C6FFC600C6FFC60063636300C6FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C6004ABDFF004ABDFF004ABDFF004ABDFF004ABD
      FF00C6FFC60000C6000000940000007B0000000000000000000000000000C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5000000
      0000FFFFFF00000000000000000084E7E7000000000000BDC60000F7F70000F7
      F70000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF0000BDC6006BFFFF006BFFFF006BFFFF00000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7
      EF00F7EFE700F7EFE700F7EFDE0031D6FF0052A5FF00527BC600F7DEC600F7D6
      FD00F7D6AD00B584840000000000000000000000000000000000007B00000094
      000000C60000C6FFC600C6FFC600C6FFC600C6FFC60063636300C6FFFF00C6FF
      FF00C6C6C600C6C6C600C6FFFF00C6FFFF0063636300C6FFC600C6FFC600C6FF
      C600C6FFC60000C6000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70000000000000000000000000000BDC60000F7
      F70000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF006BFFFF0000BDC6006BFFFF006BFFFF00000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00F7EFE700F7EFDE00F7EFDE00F7EFDE00E7DECE00CEBDAD009C94
      8C00E7CEB500B584840000000000000000000000000000000000007B00000094
      000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FFC60063636300C6C6
      C600C6C6C600C6C6C600C6C6C60063636300C6FFC600C6FFC600C6FFC600C6FF
      C600A5FFA50000C6000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042E7E70042E7E70042E7E70084E7
      E70042E7E70042E7E70042E7E70042E7E70000000000000000000000000000BD
      C60000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF006BFFFF006BFFFF0000BDC6006BFFFF00000000000000000000000000D69C
      9400FFF7F700DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00EFDED600B5847300AD847300AD7B7300B584
      8400B5848400B584840000000000000000000000000000000000007B00000094
      00000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FFC6006363
      6300636363006363630063636300C6FFC600C6FFC600C6FFC600C6FFC600A5FF
      A50000C600000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      000000BDC60000BDC60000BDC6006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000BDC60000F7F70000F7F7006BFF
      FF006BFFFF006BFFFF006BFFFF0000BDC600000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000000000000007B00000094
      0000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600A5FFA50000C6
      0000009400000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      00000000000000F7F70000F7F70000BDC60000BDC60000BDC60000BDC60000BD
      C60000BDC60000BDC60000BDC6006BFFFF006BFFFF0000BDC60000F7F70000F7
      F7006BFFFF006BFFFF006BFFFF006BFFFF00000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000007B00000094
      000000940000009400000094000000C60000C6FFC600C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600A5FFA50000C600000094
      0000009400000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000F7F70000F7F70000BDC60000BDC60000BDC60000BD
      C60000BDC60000BDC60000BDC6006BFFFF006BFFFF006BFFFF0000BDC60000F7
      F70000F7F7006BFFFF006BFFFF006BFFFF00000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000F7F70000F7F70000F7F70000F7F70000F7
      F70000F7F70000F7F70000F7F7006BFFFF006BFFFF006BFFFF006BFFFF0000BD
      C60000F7F70000F7F7006BFFFF006BFFFF00000000000000000000000000DEA5
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F7F70000F7F70000F7
      F70000F7F70000F7F70000F7F70000F7F7006BFFFF006BFFFF006BFFFF006BFF
      FF0000BDC60000F7F70000F7F7006BFFFF00000000000000000000000000DEA5
      8C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CEBD00E7CEBD00E7CE
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000F7F70000F7
      F70000F7F70000F7F70000F7F70000F7F70000F7F7006BFFFF006BFFFF006BFF
      FF006BFFFF0000BDC60000F7F70000F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000218429002184
      2900218429002184290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A563006BAD840094DE
      8C0039B5520031A54A0021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      210000FFFF004263A50000000000426363004242420000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      2100002184004263A50000000000426363004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      000000FFFF0000FFFF0000214200422121004221210042424200000000008463
      630042636300000000000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      0000002184000021840000214200422121004221210042424200000000008463
      6300426363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      000000000000000000000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      00008484840000FFFF0000FFFF00002142000042630042638400002142004242
      420042636300848484000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      0000002184000021840000218400002142000042630042638400002142004242
      4200426363008484840000000000000000000000000000000000000000000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A50000000000000000000000000000000000000000002184
      2900218429002184290021842900218429002184290021842900A5E79C0094DE
      8C0039B5520031AD520021842900218429002184290021842900218429002184
      2900218429002184290000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      000000FFFF008484840000FFFF0000FFFF004263A5004263A500004263004221
      2100846363000021420000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      0000002184000021840000218400002184004263A5004263A500004263004221
      21008463630000214200000000000000000000000000000000000021A5000021
      D6000021D6000021D6000021D6000021D6000021D6000021D6000021D6000021
      D6000021D6000021D6000021D6000021D6000021D6000021D6000021D6000021
      D6000021D6000021D6000021A50000000000000000000000000063A5630031A5
      4A0031AD520031AD520031AD520031AD520031AD520031AD520031AD520031AD
      520039B5520031AD520031AD520031AD520031AD520031AD520031AD520031AD
      520031AD520031A54A002184290000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000FFFF0000FFFF008484840000FFFF0000FFFF004263A500426384000021
      420042212100004263004242420000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000218400002184000021840000218400002184004263A500426384000021
      42004221210000426300424242000000000000000000000000000021A5000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000021A50000000000000000000000000063A5630039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B5520021842900000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C60084424200422142000042630000E7E70000E7
      E70000FFFF0000FFFF0000FFFF008484840000FFFF0000218400424284004263
      8400004284004263A50042424200000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C600844242004221420000426300002184000021
      8400002184000021840000218400002184000021840000218400424284004263
      8400004284004263A500424242000000000000000000000000000021A500B5C6
      FF00B5C6FF009CBDFF009CBDFF009CBDFF009CB5FF009CB5FF00739CFF00739C
      FF00638CF700638CF700638CF7005284F7005284F7005284F700526BF700526B
      F700526BF700526BF7000021A50000000000000000000000000063A5630094DE
      8C0094DE8C0094DE8C0094DE8C0094DE8C0094DE8C0094DE8C0094DE8C0094DE
      8C0039B5520039B5520094DE8C0094DE8C0094DE8C0094DE8C0094DE8C0094DE
      8C0094DE8C0094DE8C0021842900000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000E7E70000E7E70000E7
      E70000FFFF0000FFFF0000FFFF0000FFFF00848484000021840000FFFF0000FF
      FF00426384004263A50042424200000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000000000424242004242
      4200002184000021840000218400002184000021840000218400002184000021
      8400426384004263A500424242000000000000000000000000000021A50094AD
      FF00B5C6FF00B5C6FF00B5C6FF00B5C6FF009CBDFF009CBDFF009CB5FF009CB5
      FF00739CFF00739CFF00739CFF00638CF700638CF700638CF7005284F7005284
      F7005284F7005284F7000021A50000000000000000000000000063A563006BAD
      8400A5E79C00A5E79C00A5E79C00A5E79C00A5E79C00A5E79C00A5E79C0094DE
      8C0039B5520031AD5200A5E79C00A5E79C00A5E79C00A5E79C00A5E79C00A5E7
      9C00A5E79C006BAD84002184290000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E7008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00004242008484840000FF
      FF0000FFFF00002184004242420000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E70000000000000000004242
      4200424242004242420000218400002184000021840000218400002184000021
      8400002184000021840042424200000000000000000000000000000000000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A500000000000000000000000000000000000000000063A5
      630063A5630063A5630063A5630063A5630063A5630063A56300A5E79C0094DE
      8C0039B5520031AD520021842900218429002184290021842900218429002184
      290021842900218429000000000000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00848484008484
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF004263A50000FFFF008484
      840000FFFF0000FFFF004242420000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00000000000000
      0000000000004242420042424200002184000021840000218400002184000021
      8400002184004242420042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      84008484840000FFFF0000FFFF0000FFFF0084A5E70000FFFF0000FFFF0000FF
      FF008484840000FFFF0000FFFF0000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000042424200002184000021840000218400424242004242
      4200424242000000000000000000420021000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0084848400848484004284A5004284C60000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000424242004242420042424200424242000000
      0000000000004242420042424200424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF004284A500848484008484840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0084848400000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004200
      21004200210042424200424242000042A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF0084A5C60000FFFF0000FFFF00848484008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000008484
      840000FFFF0000FFFF0000FFFF0000FFFF00848484008484840000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042424200424242000042A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A563006BAD840094DE
      8C0039B5520031A54A0021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042424200424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000063A5630063A5
      630063A5630063A5630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A5A5A00636B7300C69C
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADA5003973A5002173B5007384
      9400CE9C94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5420800A5420800A542080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006394B50039A5FF00218CEF002173
      B5007B849400CE9C940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800B5520000BD5A0000A54208009C390800000000000000
      0000000000000000000000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004AB5FF005ABDFF0042A5FF00218C
      EF002173B5007B849400CE9C9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5390800BD5A0000D66B0000BD5A0000A5420800A54208000000
      0000000000000000000000000000000000000000000018A5D6005ACEEF00B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B000000000000000000000000000000000031A5FF0052BDFF005ABDFF0042A5
      FF00218CEF002173B5007B849400CE9C94000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800A5420800C65A0000D66B0000BD5A0000A5420800A542
      0800000000000000000000000000000000000000000010A5D6009CEFFF00CEFF
      FF008CF7FF0094F7FF0094F7FF008CEFFF008CEFFF007BE7F70073DEF7005AE7
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C
      8C00000000000000000000000000000000000000000031A5FF0052BDFF005ABD
      FF0042A5FF00218CEF002173B50084849400CE9C940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C390800A5420800C6630000CE6B0000B55200009C39
      08009C3908000000000000000000000000000000000021A5D6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF0073EF
      FF0063E7FF005ADEFF005ADEFF005ADEFF0073DEF7005ACEEF004AC6E70031B5
      DE0018A5D6000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      940000000000000000000000000000000000000000000000000031A5FF0052BD
      FF005ABDFF0042A5FF00218CEF002173B50084849400CE9C9400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A54208009C3908009C3908009C39
      08009C3908009C3908009C3908009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000009C390800AD4A0800CE630000CE6B0000AD4A
      08009C3908009C39080000000000000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF007BEF
      FF0073EFFF006BE7FF0063E7FF0063E7FF005ADEFF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFF
      FF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      94000000000000000000000000000000000000000000000000000000000031A5
      FF0052BDFF005ABDFF0042A5FF00218CEF002173B50084849400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5420800B55A1000B55A1000B552
      0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800B54A0000AD4A
      0800A5420800A542080000000000000000009C390800AD4A0800CE6B0000C663
      0000A54208009C39080000000000000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0084EF
      FF0084EFFF007BEFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFF
      FF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      000031A5FF0052BDFF005ABDFF0039A5FF003184D60052636B00000000000000
      00009C6B6B00B58C8400CEA59C00D6B5A500D6ADA500CE9C9C00C69494000000
      000000000000000000000000000000000000AD4A1000EF943100E78C2900DE7B
      1000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D66B
      0000B55208009C3908000000000000000000000000009C390800B5520800CE6B
      0000BD5A00009C3908009C390800000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CEFFF008CEFFF008CEF
      FF008CEFFF0084EFFF0084EFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF0031313100A5633900B5B5B500FFFF
      FF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      00000000000031A5FF0052BDFF007BC6FF00C6CEDE009C9C9C00846B6B00AD8C
      8400E7D6BD00FFF7CE00FFFFD600FFFFDE00FFFFD600FFFFD600EFDEC600CEA5
      9C0000000000000000000000000000000000AD4A1000F7A54200F7A53900E78C
      2900DE841800CE630800B5520000B5520000B5520000B5520000B5520000B552
      0800A5420800A5420800000000000000000000000000000000009C390800BD5A
      0000CE6B0000AD4A08009C390800000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF008CF7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEF
      FF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF006BE7FF0063E7FF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009C9C
      9400FFFFFF00F7A55A00F7A55A00F7A55A007B5A4A003929180029637B005263
      6B00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00FFFFFF009C9C
      9400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFE700C6ADAD00CEA59400FFF7
      CE00FFFFD600FFFFDE00FFFFD600FFFFD600FFFFD600FFFFDE00FFFFDE00FFFF
      DE00D6B5A500A57373000000000000000000AD4A1000F7AD4A00FFAD4A00E794
      3900EF943100DE7B1800A54208009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000BD5A00009C3908009C3908000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF0073EFFF006BE7FF001084
      18005ADEFF0018A5D60000000000000000000000000000000000000000009C9C
      9C00FFFFFF00F7A55A00FFFFFF00FFFFFF00D6D6D6008CB5C6008CF7FF002973
      F70021526B00F7A55A00FFFFFF00FFFFFF00FFFFFF00F7A55A00FFFFFF009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6ADAD00CEA59400FFEFBD00FFE7
      BD00FFF7CE00FFFFD600FFFFD600FFFFD600FFFFDE00FFFFDE00FFFFE700FFFF
      FF00FFFFFF00C6A5A5000000000000000000AD4A1000F7A54200FFB55200C66B
      2100DE8C3100F79C3100D6731800A54208009C39080000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800CE630000C6630000A54208009C3908000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BEFFF0073EFFF001084
      18005ADEFF0018A5D6000000000000000000000000000000000000000000A5A5
      A500FFFFFF00F7A55A00FFFFFF00FFFFFF00FFFFFF006BC6FF008CF7FF002973
      F7002973F70008426300FFFFFF00FFFFFF00FFFFFF00F7A55A00FFFFFF00A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD8C8C00EFDEB500FFE7B500F7D6
      FD00FFF7CE00FFFFD600FFFFD600FFFFDE00FFFFE700FFFFEF00FFFFF700FFFF
      FF00FFFFFF00F7EFDE00A57B730000000000AD4A1000F7A54200FFBD5200BD5A
      1800AD4A1000F7A54200F7A53900CE731800A53908009C390800000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C3908000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF001084
      18005AE7FF0018A5D6000000000000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100F7F7F700F7F7F700F7F7F700EF9C210010A5D60042E7
      F7002973F7002973F70021526B00F7F7F700F7F7F700EF9C2100F7F7F700A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6B5A500FFEFBD00F7CE9C00F7D6
      A500FFF7CE00FFFFD600FFFFD600FFFFDE00FFFFEF00FFFFF700FFFFFF00FFFF
      F700FFFFEF00FFFFDE00BDA5940000000000AD4A1000F7A54200FFBD5200BD63
      180094290000BD631800F7AD4A00F7A53900CE731800A54208009C3908000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C3908000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF001084180094F7FF008CEFFF008CEFFF00108418001084
      18008CEFFF0018A5D6000000000000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C210010A5
      D60042E7F7002973F7002973F70018425A00EF9C2100EF9C2100EFEFEF00A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6949400E7CEAD00FFEFBD00F7C68C00F7CE
      9C00FFEFC600FFFFD600FFFFD600FFFFDE00FFFFEF00FFFFF700FFFFF700FFFF
      EF00FFFFDE00FFFFDE00D6C6AD00C6949400AD4A1000F7A54200FFB55200BD63
      18009C3900009C390000C66B2100FFAD4A00F7A53900D67B2100A54208009C39
      08000000000000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000C6630000A54208009C3908000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF00108418001084180094F7FF0010841800108418000894
      18008CEFFF0018A5D6000000000000000000000000000000000000000000ADAD
      FD00EFEFEF00EF9C2100EFEFEF00EFEFEF00EFEFEF00EF9C2100EFEFEF00EFEF
      EF0010A5D60042E7F7002973F7002973F70021526B00EF9C2100EFEFEF00ADAD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6949400EFD6B500FFE7B500EFBD8400F7C6
      8C00F7DEB500FFFFD600FFFFD600FFFFDE00FFFFE700FFFFEF00FFFFEF00FFFF
      E700FFFFDE00FFFFDE00E7D6BD00BD9C8C00AD4A1000F7A54200FFB55200BD63
      18009C390000000000009C390000C6632100F7AD4A00FFAD4200DE842100AD4A
      08009C39080000000000000000000000000000000000A54208009C390800BD5A
      0000CE6B0000BD5A00009C390800000000000000000029ADD6009CF7FF00BDE7
      F700BDEFF700C6F7FF00C6F7FF00C6F7FF009CF7FF008CF7FF008CF7FF0094F7
      FF0094F7FF0094F7FF001084180031AD52001084180010841800089418008CEF
      FF008CEFFF0018A5D6000000000000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100E7E7E700E7E7E700E7E7E700EF9C2100E7E7E700E7E7
      E700E7E7E70010A5D60042E7F7002973F7002973F70008426300E7E7E700ADAD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6949400EFD6B500FFEFBD00F7BD8C00EFBD
      8400F7CE9C00FFEFC600FFFFD600FFFFDE00FFFFDE00FFFFDE00FFFFDE00FFFF
      DE00FFFFD600FFFFDE00E7D6BD00BD9C8C00AD4A1000F7A54200FFB55200BD63
      18009C39000000000000000000009C310000BD5A1800F7A54200FFAD4200E78C
      2900B55210009C3908009C3908009C3908009C3908009C390800B5520000CE6B
      0000CE6B0000AD4208009C390800000000000000000029ADD60031ADDE0031AD
      DE0031ADDE0031ADDE0031ADDE0031ADDE007BCEE7008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF001084180031AD520039C65A001084180094F7FF0094F7
      FF0094F7FF0018A5D6000000000000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100E7E7E700E7E7E700E7E7E700EF9C2100E7E7E700E7E7
      E700E7E7E700EF9C210010A5D60042E7F7002973F7003139BD0031313100ADAD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6949400E7CEAD00FFEFBD00F7CE9C00EFBD
      8400F7C69400F7D6A500FFEFC600FFFFD600FFFFDE00FFFFD600FFFFD600FFFF
      D600FFFFD600FFFFDE00D6C6AD00C6949400AD4A1000F7A54200FFB55200BD63
      18009C3900000000000000000000000000009C390000AD4A1000E7943900FFAD
      4200F79C3100CE731800B55A1000AD4A0800AD4A0800BD5A0000CE6B0000CE6B
      0000B55208009C39080000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0031ADDE007BCEE7009CEFFF009CEF
      FF009CEFFF009CEFFF00108418004AD67B0021AD390021AD3900108418009CEF
      FF005ACEEF0018A5D6000000000000000000000000000000000000000000ADB5
      B500DEDEDE00EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C210010A5D60042A5DE008C847B0084847B003131
      3100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6ADA500FFEFBD00FFE7BD00F7DE
      FD00F7CE9C00F7CE9C00F7D6A500F7E7BD00FFF7CE00FFFFD600FFFFD600FFFF
      D600FFFFD600FFFFD600BD9C8C0000000000AD4A1000F7AD4A00FFBD5200BD63
      18009C390000000000000000000000000000000000009C3900009C390800C66B
      2100E7943900F79C3100EF942900DE7B1000D6730000CE6B0000C65A0000AD4A
      08009C3908000000000000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE0010841800108418001084180010841800108418001084
      180039BDE700000000000000000000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600846B5A00FFFFFF00F7EFE7007363
      520021214A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD8C8C00EFDEB500FFFFDE00FFFF
      EF00F7EFDE00F7CE9C00F7CE9400F7C69400F7D6AD00F7E7BD00F7E7BD00FFEF
      C600FFFFD600EFDEC600A573730000000000A5420800D6842900E7943900AD4A
      10009C39080000000000000000000000000000000000000000009C3908009C39
      0000A5420800B55A1000C6631800BD631800B5520800A5420800A54208009C39
      080000000000000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B5009C948C00E7CEB5002963
      7B002973F7003139BD0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C69C8C00FFF7E700FFFF
      FF00FFFFFF00F7DEBD00F7C69400EFBD8400F7BD8C00F7C69400F7D6AD00FFEF
      BD00FFEFC600BD9C8C000000000000000000000000009C3908009C3908009C39
      0800000000000000000000000000000000000000000000000000000000000000
      00009C3908009C3908009C3908009C3908009C3908009C390800000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A6B9C00299C
      EF002973F7003139BD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD9C9C00EFEF
      E700FFFFEF00FFF7CE00FFE7B500F7DEAD00F7DEAD00FFE7B500FFEFBD00F7E7
      BD00C69C94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000010
      E7000010E7000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A57B
      7300D6BDA500F7E7BD00FFEFBD00FFEFBD00FFEFBD00F7E7BD00E7C6AD00C694
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD847B00C69C8C00CEA59C00CEA59C00C69C9400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039ADDE0039ADDE0039ADDE0039ADDE0039ADDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE00000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039ADDE0094DEEF007BE7F7005AD6EF0052C6E70052C6
      E70042BDDE0029ADD60018A5D600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C66B6B00CE636300B552
      52009C6B6B00B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500CE6363008C420800843910000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000021A5D600A5DEF700BDFFFF0094FFFF009CFFFF008CEF
      FF007BE7F70073DEF7005ACEEF004AC6E70039B5DE0029ADD60029ADDE000000
      000000000000000000000000000000000000B5847300C66B6B00CE636300BD5A
      5A009C6B6B00A58C8C0094292900B5736B00DECECE00C6CEC600F7F7F700FFFF
      FF00E7E7E700CE636300A5392100C65A5A009C4A4A0000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018A5D6006BC6E700BDFFFF0094FFFF0094F7FF0094F7
      FF0094FFFF009CF7FF0094F7FF0094F7FF0084EFFF007BE7F7006BDEF70052C6
      E70021A5D600000000000000000000000000B5847300C66B6B00CE636300BD5A
      5A00A5737300A5848400942121008C181800B5736B00EFE7E700D6DEDE00F7F7
      F700FFFFFF00CE636300B5393100C65A5A009C4A4A004A0052009C4A4A000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000029ADD6005AC6E700A5E7F700A5FFFF008CF7FF0094F7
      FF008CF7FF008CF7FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF006BCE
      E70042BDE700000000000000000000000000B5847300C66B6B00CE636300B552
      5200A5737300AD8C8C00942929009429290094313100B5B5B500EFE7E700D6E7
      DE00F7F7F700CE636300B5393900C65A5A009C4A4A0021210000C65A5A009C4A
      4A000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF7005ACEEF0021A5
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039B5DE005AC6E70094DEEF00A5FFFF008CF7FF0094F7
      FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF006BCE
      E7006BD6F70029ADD6000000000000000000B5847300C66B6B00CE636300B552
      5200B5737300C6ADAD00BD9C9C00BD9C9C00BDA5A500BDA5A500B5B5B500EFE7
      E700C6CEC600CE636300B5393900C65A5A009C4A4A00B5524200C65A5A009C4A
      4A00000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF0039BD
      DE00000000000000000000000000000000000000000039ADDE0039ADDE0039AD
      DE0039ADDE0039ADDE0039B5DE007BE7F7005AC6E700ADEFF70094FFFF008CF7
      FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF006BCE
      E7007BE7F7004AC6E7000000000000000000B5847300C66B6B00CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300B54A4A00C65A5A009C4A4A00CE5A5200C65A5A009C4A
      4A004A0052009C4A4A0000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF0063D6
      EF0018A5D6000000000000000000000000000000000039ADDE0094DEEF007BE7
      F7005AD6EF0052C6E70039B5DE008CEFFF005AC6E700ADE7F700A5FFFF008CF7
      FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF006BCE
      E70084EFFF006BD6F7000000000000000000B5847300AD4A4A00AD4A4A00CE8C
      8C00CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE73
      7300DE7B7B00D66B6B00AD424200CE6363009C4A4A00C6525200C65A5A009C4A
      4A0021210000C65A5A009C4A4A00000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF008CEF
      FF0029ADD6000000000000000000000000000000000021A5D60084DEF70063D6
      EF0063D6EF0073E7F70039B5DE0094F7FF0073E7F7006BC6E700A5E7F700ADEF
      F700A5EFF700ADEFF700A5F7FF008CF7FF0084EFFF008CEFFF008CEFFF006BCE
      E70084EFFF008CEFFF0031B5DE0000000000B5847300A5423900C6847B00F7F7
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00EFE7E700E7949400AD313100CE6363009C4A4A00B5525200C65A5A009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF00A5F7
      FF004AC6E7000000000000000000000000000000000018A5D6006BCEE70073E7
      F70073E7F7007BE7F70039B5DE0094F7FF0094FFFF005AC6E7005AC6E7005AC6
      E7005AC6E7005AC6E700A5DEF700ADF7FF0094F7FF008CEFFF0084EFFF006BCE
      E70073E7FF009CFFFF0052C6E70000000000B5847300A5423900C6848400FFFF
      FF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700EFE7E700E7949400AD313100CE6363009C4A4A00B54A4A00C65A5A009C4A
      4A00C65A4A00C65A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF0063D6F70084E7FF00A5F7
      FF00A5F7FF0021A5D60000000000000000000000000029ADD6005AC6E7008CEF
      FF0084EFFF008CF7FF0042B5DE0094EFF70094FFFF009CFFFF0094FFFF008CF7
      FF0084EFFF0073E7F7005AC6E7005AC6E700ADE7F700ADF7FF00A5F7FF008CE7
      FF0094EFFF00B5FFFF0094EFF70029ADD600B5847300A5423900C6847B00FFFF
      FF00CEC6C600D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00C6C6C600E7E7
      E700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200CE6363009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF008CEFFF0063D6F70084E7FF0094F7
      FF0094F7FF0042BDE70000000000000000000000000039B5DE005AC6E70094EF
      F70094FFFF0094F7FF0039B5DE0094F7FF0094FFFF0094F7FF0094F7FF0094F7
      FF0094F7FF009CF7FF0084F7FF005AC6E7005AC6E70094DEEF009CDEF70094DE
      EF009CDEF700A5E7F700A5E7F70042B5DE00B5847300A5423900C6847B00FFFF
      FF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700FFF7
      F700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200CE6363009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF008CEFFF008CEFFF007BDEFF0094EFFF00A5F7
      FF00A5F7FF006BD6EF0018A5D600000000000000000039B5DE007BE7F7005ACE
      EF0094FFFF0094FFFF0042B5DE0094F7FF0094FFFF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF007BEFF7005AC6E7005AC6E7005AC6
      E70029ADD60029ADD60039ADDE0029ADD600B5847300A5423900C6847B00FFFF
      FF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700FFF7
      F700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200CE6363009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE700BDE7F700BDE7F700BDE7F700BDE7F700CEEFF700CEEF
      F700CEEFF700C6EFFF0029ADD600000000000000000039B5DE008CEFFF005AC6
      E700A5EFF7009CFFFF0042B5DE00A5F7FF009CFFFF0094F7FF0094F7FF008CF7
      FF0094EFFF0094EFF70094EFF70094EFF70094EFFF0094EFFF009CF7FF0063D6
      EF0000000000000000000000000000000000B5847300A5423900C6847B00FFFF
      FF00CEC6C600D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00C6C6C600E7E7
      E700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200BD5A5A009C4A
      4A00B5524200CE6363009C4A4A00000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF005AD6EF005AD6EF005AD6EF0031B5DE0021A5D60029AD
      D60029ADD60029ADD60021A5D600000000000000000039B5DE0094F7FF0073E7
      F7006BC6E700A5E7F700ADEFF70029ADD600B5FFFF009CFFFF00A5FFFF009CFF
      FF005ACEEF0039ADDE0042B5DE0042B5DE0042B5DE004ABDE70052C6E70042B5
      DE0000000000000000000000000000000000B5847300A5423900C6847B00FFFF
      FF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200BD5A5A009C4A
      4A00B5524200CE6363009C4A4A00000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF0039BDE700000000000000
      0000000000000000000000000000000000000000000039B5DE0094F7FF0094FF
      FF005AC6E7005AC6E7005AC6E70029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60084EFFF006BCEE70073E7FF009CFFFF0052C6E700000000000000
      000000000000000000000000000000000000B58C5A009C5A2100B58C6B00C6CE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600BD7B730094100800841010009C4A4A00BD525200BD5A5A009C4A
      4A00B5524200CE6363009C4A4A00000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF0039B5DE00000000000000
      0000000000000000000000000000000000000000000042B5DE0094EFF70094FF
      FF009CFFFF0094FFFF008CF7FF0084EFFF0073E7F7005AC6E7005AC6E700ADE7
      F700ADF7FF00A5F7FF008CE7FF0094EFFF00B5FFFF0094EFF70029ADD6000000
      000000000000000000000000000000000000000000000000000000000000B584
      7300A5523100C6847B00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700CE636B00B5424200BD5A5A009C4A
      4A00B5524200BD5A5A009C4A4A00000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE70021A5D600000000000000
      0000000000000000000000000000000000000000000039B5DE0094F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF009CF7FF0084F7FF005AC6E7005AC6
      E70094DEEF009CDEF70094DEEF009CDEF700A5E7F700A5E7F70042B5DE000000
      000000000000000000000000000000000000000000000000000000000000B584
      7300A5523100C6847B00FFFFFF00CEC6C600D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00FFF7F700E7949400AD313100BD5A5A009C4A
      4A00B5524200BD5A5A009C4A4A000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF0000000000000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042B5DE0094F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BEF
      F7005AC6E7005AC6E7005AC6E70029ADD60029ADD60039ADDE0029ADD6000000
      000000000000000000000000000000000000000000000000000000000000B584
      7300945A0800B5846300FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700C67B7B0094100800841010009C4A
      4A00B55A4200BD5A5A009C4A4A0000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042B5DE00A5F7FF009CFF
      FF0094F7FF0094F7FF008CF7FF0094EFFF0094EFF70094EFF70094EFF70094EF
      FF0094EFFF009CF7FF0063D6EF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B58C
      6B00945A0800B58C6B00C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600D6ADAD00BD7B7300BD737300CE63
      6B00B54A3900BD5A5A009C4A4A0000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029ADD600B5FF
      FF009CFFFF00A5FFFF009CFFFF005ACEEF0039ADDE0042B5DE0042B5DE0042B5
      DE004ABDE70052C6E70042B5DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5847300A54A2900C6847B00FFFFFF00CEC6C600CEC6
      C600CEC6C600CEC6C600CEC6C600CEC6C600CEC6C600CEC6C600FFF7F700E794
      9400A5392100BD5A5A009C4A4A0000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5847300A54A2900BD7B7300FFFFFF00FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700CE8C
      8C009C311800BD5A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5847300945A0800B57B7300C6CECE00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BD84
      7B0094311800943131009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A50000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C0000000000000000000000000000000000000000000000
      0000FFFFFF006B73FF003131B5003131BD003131BD003131BD003131C6003131
      C6003131BD003131BD003131B5003131B5003131AD003131A5006363FF00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      00000000000000000000000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C0000000000000000000000000000000000000000000000
      0000FFFFFF003131C6003131DE003131EF003131F7003131F7003131EF003131
      F7003131EF003131EF003131EF003131E7003131DE003131C60031319C00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFEFE700FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDE
      B500FFD6AD00CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      00000000000000000000000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A50000000000000000000000000000000000000000000000
      0000FFFFFF003131D6003131EF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003131E7003131CE003131AD00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E7000000000000000000000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C0000000000000000000000000000000000000000000000
      0000FFFFFF003131E7003139FF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003131F7003131DE003131B500FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFE700FFEFD600FFEFD600FFE7C600FFE7
      C600FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A50000000000000000000000000000000000000000000000
      0000FFFFFF003131EF003139FF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003139FF003131E7003131BD00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700000000000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD0000000000000000000000000000000000000000000000
      0000FFFFFF003139FF003139FF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003139FF003131EF003131C600FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF007B8CC60031398C0031398C00396B9400FFE7
      C600FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B50000000000000000000000000000000000000000000000
      0000FFFFFF003139FF003139FF00848CFF00848CFF00848CFF00848CFF00848C
      FF00848CFF00848CFF00848CFF00848CFF003131F7003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00085A94003184FF003184FF00085A9400FFEF
      D600FFEFD600CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A5000000000000000000000000000000000000000000000000000000
      0000FFFFFF003139FF003139FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003131EF003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00085A940042B5F70042B5F700085A9400FFEF
      D600FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B500000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF003139FF003942FF003942FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003131F7003131EF003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00298CBD000873B5000873B500085A940042B5F70042B5F7000873B5000873
      B500085A94007B8CC60000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF003139FF005252FF005252FF003942FF003139FF003139FF003139
      FF003139FF003139FF003139FF003131F7003131EF003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000873B5008CD6F70042B5F70042B5F70042B5F70042B5F70042B5F70042B5
      F7008CD6F7000873B50000000000000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF003942FF006B6BFF006363FF00424AFF003942FF003942FF003139
      FF003139FF003139FF003139FF003139FF003131F7003131F7003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00216BF700B5DEF700B5DEF700B5DEF7008CD6F7008CD6F700B5DEF700B5DE
      F700B5DEF700216BF7000000000000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF005252FF00848CFF006B6BFF005252FF004A4AFF00424AFF00424A
      FF003139FF003139FF003139FF003139FF003139FF003131F7003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005AB5E7003184FF003184FF003184FF008CD6F7008CD6F7003184FF003184
      FF003184FF005AB5E700000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF006363FF009C9CFF00848CFF006B6BFF006363FF005252FF004A4A
      FF00424AFF003942FF003139FF003139FF003139FF003131F7003131BD00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003184FF008CD6F7008CD6F7003184FF00FFF7
      E700FFF7E700CE63000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00C6CEFF006363FF004A4AFF003942FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003131F7003131DE007B84FF00FFFF
      FF00000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B00003184FF00B5DEF700B5DEF7003184FF00DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300005AB5E7003184FF003184FF005AB5E700CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0084E7FF005ACEEF0021A5
      D600000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BE7F70073DEF70039BD
      DE00000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEFF0063D6
      EF0018A5D6000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEF7008CEF
      FF0029ADD6000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B0000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF700087B10001084
      18004AC6E7000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF000873080039BD63004AD6
      7B001084180018A5D60000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF00006B000031AD52005AE78C005AE7
      8C0039BD5A000873100000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF000873080029AD4A005AEF940052DE84004AD6
      6B0021AD310021AD390008730800000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE7000873080021AD310031AD520039BD5A0042CE6B0039C6
      5A0029BD4A0021AD310021AD3100007308000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      FD00B5AD94009C847B0000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF000873080008730800087308000873100031BD4A0031BD
      4A00087308000873080008730800087308000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE630000000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B0000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF000873080021AD390021BD
      3900087308000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD84730000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF000873100018AD290010AD
      2100087308000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE6300000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      1800087308000000000000000000000000000000000000000000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      1000087308000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      84000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      000000000000000000000000000008841000089C180008A51800088C10000873
      080000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D67310000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000873
      08000873080010841800089418000894180008941800087B1000087308000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087308000873100008730800087308000873080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000C00000000100010000000000000900000000000000000000
      000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00
      0000000000000000F07FFF000000000000000000C007FF000000000000000000
      C001FF000000000000000000C0003F000000000000000000C0003F0000000000
      00000000C0003F000000000000000000C0003F000000000000000000C0003F00
      0000000000000000C0003F000000000000000000C0003F000000000000000000
      C0003F000000000000000000C0003F000000000000000000C0003F0000000000
      00000000C0003F000000000000000000C0003F000000000000000000C0003F00
      0000000000000000C0003F000000000000000000E0003F000000000000000000
      F0003F000000000000000000FE007F000000000000000000FFE1FF0000000000
      00000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3
      FFFFFF870FFFFFFFC00003F1FFFFE00007FFFFFFC00003F07FFFC00007E00003
      C00003F03FFFC00007E00003C00003F01FFFE00007C00003C00003F80FFFC000
      0FC00003C00003FC03FFC0000FC00003C00003FE01FFE0000FE00003C00003FF
      00FFC0000FE00003C00003FF807FC0000FE00003C00003FFC01FE0000FE00003
      C00003F8000FC0001FE00003C00003F80007C0003FE00003C00003F80003E000
      7FE00003C00003F80003FF00FFE00003C00003F80003FF03FFE00003C00003FC
      0003FF07FFE00003C00003FF0007FE07FFE00003C00003FFC003FE03FFE00003
      C00003FFF801FE01FFE00003E00007FFFE01FF01FFF00003FFFFFFFFFF81FF83
      FFFFFFFFFFFFFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFE00003FFFFFFFFFFFFFF
      FFFFE00003FFFFFFFFFFFFFFFFFFE00003FFFFFFFFFFFFFFFFFFE00003FFE03F
      8007FFFF01FFE00003F0203F8001FFFF00FFE00003F0200F8000FFF1101FE000
      03F03C0780007FF0000FE00003FFFC0780001FF00007E00003FFFE0FC0000FF0
      0003E00003FFFC07E00007900001E00003C00000F80001800000E00003C00000
      E00000800000E00003C00000C00000800000E00003C00000C00000800000E000
      03C00000C00000800000E00003C00000E00000C00000E00003C00000FFFE00E0
      0000E00003C00000FFFF00F00000E00003C00000FFFFC0F80000E00007C00000
      FFFFF0FC0000E0000FC00000FFFFFCFE0000E0001FFFFFFFFFFFFFFF8000E000
      3FFFFFFFFFFFFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFC3FFFF9FFFFF9FFFFFFFFFFF81FFFE0FFFFE0FFF
      FFFFFFFF81FFF00FFFF00FFFFFFFFFFF81FFE0007FE0007FFFFFFFFF81FFC000
      7FC0007FFFFFFFFF81FFC00027C00027FFFFFFFF81FF400003400003E00003E0
      0003200003200003C00001C00001000001000001C00001C00001000001000001
      C00001C00001000001004001C00001C00001800001806001E00003E000039800
      01983801FFFFFFFF81FF980001981C06FFFFFFFF81FFC00001C00E18FFFFFFFF
      81FFF00001F00FE0FFFFFFFF81FFFD0001FD0FE0FFFFFFFF81FFFD6007FD7FE0
      FFFFFFFF81FFFF781FFF7FF8FFFFFFFF81FFFF7E7FFF7FFCFFFFFFFFC3FFFFFF
      FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFF07FFFFFF
      FC7FFFFFFFFFFFFF03FFFFFFF83F807FFFFFFFFF01FFFFFFF81F8003FFE0000F
      00FFFFFFF80F80003FE0000F807FFFFFFC07800007E0000FC03FFF0006038000
      03E0000FE03FFF000303800003E0000FF0301F000381800003E0000FF8000F00
      03C1800003E0000FFF00030007C0800003E0000FFF0003007FE0800003E0000F
      FF0001003FE0800003E0000FFF0001001FE0800003E0000FFE0000000FC08000
      03E0000FFE0000040781800003E0000FFE0000060001800003E0000FFE000007
      0003800003E0000FFF0001078007800007E00007FF000107C00FC03FFFE00003
      FF80038FF03FE07FFFFFFFC3FFC007FFFFFFFFFFFFFFFFE7FFE00FFFFFFFFFFF
      FFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
      1FFFFFFFFFFFFFF9807FFFFC01FF8000FFFFFFF18003FFFC001F00007FC7FFE3
      80001FFC000700001FC3FF8780001FFC000700000FC1FF0F80000FFC00030000
      0FE0FE1F80000F800003000003F07C3F800007800003000001FC307F80000780
      0001000001FE00FF800007800001000001FF01FF800003800000000001FF83FF
      800003800000000001FF01FF800001800000000001FE00FF80000180000F0000
      01FC187F80000180000F000001F83C3F80003F80003F000001F07F1F80003F80
      001FE00001E0FF8F80003F80001FE00001C1FFEFC03FFF80001FE0000183FFFF
      E07FFF8001FFE0000187FFFFFFFFFFC001FFFC00018FFFFFFFFFFFC0FFFFFC00
      01FFFFFFFFFFFFFFFFFFFC0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C1FFF
      FFFFFFFFFFFFFFFFFC0007FFFFFFC00003FFFFFFF00001FFFFFFC000038000FF
      E00003F8001FC0000380007F800003F0000FC0000380003F800003F0000FC000
      0380001F800003F0000FC0000380000F800003F0000FC00003800007800003F0
      000FC00003800003800003F0000FC00003800001C00003F0000FC00003800001
      E00007F0000FC00003800001F8000FF0000FC00003800001F8001FF0000FC000
      03800001FC007FF0000FC00003C00001FC00FFF0000FC00003E00001FC01FFF0
      000FC00003F00001FC01FFF0000FC00003F80001FC01FFF8001FC00003FC0001
      FC01FFFFFFFFE00007FE0001F803FFFFFFFFFFFFFFFF0001F803FFFFFFFFFFFF
      FFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFE00003FFFFFFFFFFFFFFFFFFE0
      0003FFFFFFFFFFFFFF1FFFE00003807FFFC00003F8000FE000038003FFC00003
      E0000FE0000380001FC00003C0000FE0000380001FC00003C0000FE000038000
      0FC00003C0000FE0000380000FC00003C0000FE00003800007C00003C0000FE0
      0003800007C00003C0000FE00003800007C00003C0000FE00003800003C00003
      C0000FE00003800003C00003C0000FE00003800001C00003C0000FE000038000
      00C00003C0000FE00003800000C00003C0000FE00003800007C00003C0000FE0
      0003800007C00003E0000FE00003800007C00003F8000FE00007C03F07C00003
      FE1FFFE0000FE07E0FE00007FFFFFFE0001FFFE01FFFFFFFFFFFFFE0003FFFF0
      7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ds_Kap: TDataSource
    DataSet = cds_Kap
    Left = 576
    Top = 640
  end
  object cxImageList1: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 30474312
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF008DCD8D00408E4000367836003B83
          3B003B833B003B833B003B833B003B833B003B833B00397D3900397D39003B83
          3B00397D39003B833B00397D390036783600397D39008DCD8D00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00489E4800489E48004AA44A004DAB
          4D004DAB4D004DAB4D004DAB4D004DAB4D004DAB4D004AA44A004DA94D004AA4
          4A004AA44A00489E480045994500439343003E883E003B833B00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00459945004FB14F005AB65A0060B8
          600060B8600060B8600060B8600060B8600055B355005AB65A005AB65A0055B3
          55004FB14F004FB14F004DAB4D0048A048004599450036783600FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF004AA44A0055B355005AB65A006BBD
          6B006BBD6B0072C072006BBD6B006BBD6B0065BB65005AB65A005AB65A0055B3
          550055B355004FB14F004BA54B004DAB4D004599450036783600FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF004DA94D005AB65A0065BB650072C0
          720072C0720072C072006CBE6C0065BB650065BB650060B860005AB65A0055B3
          550055B3550055B355004FB14F004DAB4D00489E480036783600FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF004FB14F0065BB650072C0720072C0
          720072C0720072C0720072C072006CBE6C0065BB650060B860005AB65A005AB6
          5A0055B355004FB14F004DAB4D004FB14F00489E48003B833B00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF004FB14F006BBD6B0077C3770077C3
          770077C3770072C0720072C0720072C0720065BB650060B8600060B860005AB6
          5A0055B355004FB14F004FB14F004FB14F004AA44A003B833B00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0055B3550077C3770077C3770077C3
          770077C3770077C3770072C0720072C0720065BB650065BB650060B860005AB6
          5A0055B355004FB14F004DAB4D0055B355004DA94D003E883E00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0060B860007DC57D0077C377007DC5
          7D0077C3770077C3770072C0720072C0720065BB650060B860005AB65A005AB6
          5A0055B355004FB14F0055B355005AB65A004DA94D003B833B00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0072C0720077C377007DC57D007DC5
          7D007DC57D0072C0720072C0720072C0720065BB650060B8600060B8600060B8
          60005AB65A005AB65A0055B3550055B355004FB14F003E883E00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF006CBE6C0082C882007DC57D007DC5
          7D0077C3770072C0720072C0720072C072006BBD6B0060B860005AB65A005AB6
          5A0055B3550055B355004DA94D0055B355004FB14F003E883E00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0072C0720088CA880082C8820082C8
          82007DC57D0077C3770072C0720072C072006CBE6C0060B860005AB65A0055B3
          550055B3550055B3550055B355005AB65A0055B355003B833B00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0072C072008DCD8D0093CF930088CA
          880082C8820077C3770072C0720077C377006CBE6C0065BB650060B860005AB6
          5A0055B355005AB65A0060B860005AB65A004FB14F003E883E00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0077C3770098D2980093CF93008DCD
          8D0082C882007DC57D0077C3770072C072006CBE6C0065BB650065BB650060B8
          600060B8600055B3550055B355005AB65A0055B35500408E4000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF007DC57D00A5D7A5009FD59F0093CF
          93008DCD8D0088CA880082C882007DC57D0077C3770072C0720072C072006CBE
          6C0072C0720065BB650065BB650060B860004FB14F003E883E00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0082C88200B0DCB000B0DCB0009FD5
          9F0093CF930093CF93008DCD8D0088CA880082C8820082C8820082C882007DC5
          7D0077C3770072C0720072C0720065BB650055B355003B833B00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF008DCD8D00AADAAA00B0DCB0009FD5
          9F0093CF930088CA880088CA880082C8820082C8820082C8820082C882007DC5
          7D0077C3770072C072006BBD6B0060B860004DAB4D0043934300FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF008DCD8D008DCD8D0082C8820077C3
          770072C0720072C072006CBE6C006CBE6C006CBE6C0072C0720065BB65005AB6
          5A0060B8600060B860004FB14F004FB14F004BA54B008DCD8D00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end>
  end
  object cds_UserProps: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.UserProps'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 80
    Top = 320
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
      ProviderFlags = [pfInUpdate]
      OnChange = cds_UserPropsVerkNoChange
    end
    object cds_UserPropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsInputOption: TIntegerField
      FieldName = 'InputOption'
      Origin = 'InputOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      Origin = 'RegDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsRunNo: TIntegerField
      FieldName = 'RunNo'
      Origin = 'RunNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      Origin = 'AutoColWidth'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_UserPropsLengthOption: TIntegerField
      FieldName = 'LengthOption'
      Origin = 'LengthOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      Origin = 'LengthGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      Origin = 'NewItemRow'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
      Origin = 'OrderTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
      Origin = 'FilterOrderDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsStartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsEndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
      Origin = 'SalesPersonNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
      Origin = 'VerkSupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
      Origin = 'VerkKundNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
      Origin = 'LengthFormatNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
      Origin = 'LengthVolUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
      Origin = 'GroupByBox'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
      Origin = 'GroupSummary'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsShipperNo: TIntegerField
      FieldName = 'ShipperNo'
      Origin = 'ShipperNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsShowProduct: TIntegerField
      FieldName = 'ShowProduct'
      Origin = 'ShowProduct'
      ProviderFlags = [pfInUpdate]
    end
    object cds_UserPropsName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_UserPropsFilter1: TStringField
      FieldName = 'Filter1'
      Origin = 'Filter1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_UserPropsVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = cds_verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'SearchName'
      KeyFields = 'VerkNo'
      ProviderFlags = []
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
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
    object cds_UserPropsProdUnit: TStringField
      FieldKind = fkLookup
      FieldName = 'ProdUnit'
      LookupDataSet = cds_ProdUnits
      LookupKeyFields = 'ProductionUnitNo'
      LookupResultField = 'RegPointName'
      KeyFields = 'LengthOption'
      Size = 30
      Lookup = True
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
      'AND C.SearchName <> '#39'TRAVIS'#39
      'AND C.SearchName <> '#39'FW'#39' '
      'order by C.SearchName')
    Left = 256
    Top = 320
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
  object cds_RegPoint: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct rp.RegPointName, rp.RegPointNo '
      'FROM dbo.RegistrationPoint rp'
      'Order By rp.RegPointName')
    Left = 720
    Top = 392
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
  object cds_Data: TFDQuery
    ConstraintsEnabled = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select LoadingLocation,'
      'case when int_destination = '#39'STD'#39' then ext_destination'
      'else int_destination'
      'end AS Destination,*,'
      '0.0 AS M_Pris from dbo.LevSituationer_IIII'
      'WHERE Utlastad >= :StartPeriod'
      'AND Utlastad <= :EndPeriod')
    Left = 184
    Top = 320
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
      end>
    object cds_DataSituation: TStringField
      FieldName = 'Situation'
      Origin = 'Situation'
    end
    object cds_DataMarknad: TStringField
      FieldName = 'Marknad'
      Origin = 'Marknad'
      Size = 10
    end
    object cds_DataSupplier: TStringField
      FieldName = 'Supplier'
      Origin = 'Supplier'
      Size = 80
    end
    object cds_DataCustomer: TStringField
      FieldName = 'Customer'
      Origin = 'Customer'
      Size = 80
    end
    object cds_DataLagerGrupp: TStringField
      FieldName = 'LagerGrupp'
      Origin = 'LagerGrupp'
      Size = 50
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
      Size = 30
    end
    object cds_DataKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      Size = 30
    end
    object cds_DataUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      Size = 30
    end
    object cds_DataIMP: TStringField
      FieldName = 'IMP'
      Origin = 'IMP'
      Size = 30
    end
    object cds_DataNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
    end
    object cds_DataPrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
    end
    object cds_DataVärde: TFloatField
      FieldName = 'V'#228'rde'
      Origin = '[V'#228'rde]'
    end
    object cds_DataLängd: TFloatField
      FieldName = 'L'#228'ngd'
      Origin = '[L'#228'ngd]'
    end
    object cds_DataProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 100
    end
    object cds_DataKvartal: TIntegerField
      FieldName = 'Kvartal'
      Origin = 'Kvartal'
    end
    object cds_DataÅr: TIntegerField
      FieldName = #197'r'
      Origin = '['#197'r]'
    end
    object cds_DataMånad: TIntegerField
      FieldName = 'M'#229'nad'
      Origin = '[M'#229'nad]'
    end
    object cds_DataVecka: TIntegerField
      FieldName = 'Vecka'
      Origin = 'Vecka'
    end
    object cds_DataFraktförare: TStringField
      FieldName = 'Fraktf'#246'rare'
      Origin = '[Fraktf'#246'rare]'
      Size = 80
    end
    object cds_DataLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
    end
    object cds_DataUtlastad: TSQLTimeStampField
      FieldName = 'Utlastad'
      Origin = 'Utlastad'
    end
    object cds_DataAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object cds_DataTrading: TIntegerField
      FieldName = 'Trading'
      Origin = 'Trading'
    end
    object cds_DataLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
    end
    object cds_DataPriceExist: TStringField
      FieldName = 'PriceExist'
      Origin = 'PriceExist'
      Size = 6
    end
    object cds_DataClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_DataVarugruppnamn: TStringField
      FieldName = 'Varugruppnamn'
      Origin = 'Varugruppnamn'
      Size = 35
    end
    object cds_DataM_Pris: TBCDField
      FieldName = 'M_Pris'
      Origin = 'M_Pris'
      ReadOnly = True
      Required = True
      Precision = 1
      Size = 1
    end
    object cds_DataLoadingLocation: TStringField
      DisplayLabel = 'Lastst'#228'lle'
      FieldName = 'LoadingLocation'
      Origin = 'LoadingLocation'
      Size = 50
    end
    object cds_DataDestination: TStringField
      FieldName = 'Destination'
      Origin = 'Destination'
      ReadOnly = True
      Size = 50
    end
    object cds_DataInt_Destination: TStringField
      FieldName = 'Int_Destination'
      Origin = 'Int_Destination'
      Size = 50
    end
    object cds_DataExt_Destination: TStringField
      FieldName = 'Ext_Destination'
      Origin = 'Ext_Destination'
      Size = 50
    end
    object cds_DataOrderNoText: TStringField
      DisplayLabel = 'Kontrakt'
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
    end
    object cds_DataPieces: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'Pieces'
      Origin = 'Pieces'
    end
  end
  object cds_ProdData: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select'
      'PL.ActualLengthMM '#9#9'AS ALMM,'
      'PL.NominalLengthMM '#9#9'AS NLMM,'
      'P.ProductDisplayName AS Produkt,'
      'pp.PackageNo AS Paketnr,'
      'pp.SupplierCode AS Prefix,'
      'pp.RunNo AS K'#246'rnr,'
      'PG.ActualThicknessMM AS AT,'
      'PG.ActualWidthMM AS AB,'
      'S.SpeciesName AS TS,'
      'G.GradeName AS KV,'
      'Su.SurfacingName AS UT,'
      'PC.ProductCategoryName AS IMP,'
      'pp.ProductionDate AS Datum,'
      'sup.SearchName AS Verk,'
      'rp.RegPointName AS M'#228'tpunkt,'
      'SUM(ptd.m3Actual) AM3,'
      'SUM(ptd.m3Nominal) NM3,'
      
        'SUM(ptd.NoOfPieces) / CAST(SUM(pt.TotalNoOfPieces)  AS Float) as' +
        ' pkt,'
      'SUM(ptd.NoOfPieces) AS STYCK,'
      'SUM(ptd.LinealMeterActualLength) AS LPM,'
      'CASE'
      'WHEN pp.Operation = 0 THEN '#39'P'#229'reg'#39
      'WHEN pp.Operation = 3 THEN '#39'Avreg'#39
      'END AS Operation,'
      'C.CityName AS Ort,'
      'va.VarugruppNamn,'
      '0.0 AS AvgLength,'
      'ST.ShiftTeamName,'
      'sop.SortingOrderNo AS K'#246'orderID,'
      'sop.SortingOrderRowNo AS K'#246'rorderRadID,'
      'pn.REFERENCE,'
      'sor.HeadLO,'
      'Cu.ClientName'
      ''
      'FROM dbo.package_production pp'
      ''
      'inner join dbo.PackageNumber pn on pn.PackageNo = pp.PackageNo'
      'and pn.SupplierCode = pp.SupplierCode'
      'Left outer join dbo.SortingOrderNewPkgs sop'
      ''
      
        'Inner join dbo.SortingOrderRow sor on sor.SortingOrderNo = sop.S' +
        'ortingOrderNo'
      'and sor.SortingOrderRowNo = sop.SortingOrderRowNo'
      
        'Inner join dbo.CustomerShippingPlanHeader csh on csh.ShippingPla' +
        'nNo = sor.HeadLO'
      'inner join dbo.Client Cu on Cu.ClientNo = csh.CustomerNo'
      ''
      'on sop.PackageNo = pp.PackageNo'
      'and sop.SupplierCode = pp.SupplierCode'
      ''
      'Left outer join dbo.ShiftTeam ST on ST.ShiftTeamNo = pp.ShiftNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pp.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.City C on C.CityNo = PIP.PhyInvPointNameNo'
      ''
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pp.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeDetail ptd on ptd.PackageTypeNo = pp.P' +
        'ackageTypeNo'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      
        'Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = pp.Produc' +
        'tionUnitNo'
      'Inner Join dbo.Client sup on sup.ClientNo = pp.SupplierNo'
      ''
      'Inner Join dbo.Product P on P.ProductNo = PT.ProductNo'
      ''
      
        'Left Outer Join dbo.Varugrupp va on va.VarugruppNo = P.Varugrupp' +
        'No'
      ''
      'Inner Join dbo.Grade G on G.GradeNo = P.GradeNo'
      '                        AND G.LanguageCode = 1'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'Inner Join dbo.Species S on S.SpeciesNo = PG.SpeciesNo'
      '                        AND S.LanguageCode = 1'
      'Inner Join dbo.Surfacing SU on SU.SurfacingNo = PG.SurfacingNo'
      '                         AND SU.LanguageCode = 1'
      
        'Inner Join dbo.ProductCategory PC on PC.ProductCategoryNo = PG.P' +
        'roductCategoryNo'
      '                          AND PC.LanguageCode = 1'
      ''
      'WHERE'
      '(pp.Operation = 0)'
      'AND ProductionDate BETWEEN   :StartPeriod AND  :EndPeriod'
      'AND ((pp.Operation = :Operation) or (:Operation = 1))'
      'AND ((pp.SupplierNo = :SupplierNo) or (:SupplierNo = 0))'
      'AND ((rp.RegPointNo = :RegPointNo) or (:RegPointNo = 0))'
      ''
      'AND (rp.RegPointNo <> 20)'
      'AND (rp.RegPointNo <> 21)'
      ''
      'AND ((pp.SupplierNo = 25)'
      'or (pp.SupplierNo = 61)'
      'or (pp.SupplierNo = 76)'
      'or (pp.SupplierNo = 172)'
      'or (pp.SupplierNo = 212)'
      'or (pp.SupplierNo = 232)'
      'or (pp.SupplierNo = 578)'
      'or (pp.SupplierNo = 830)'
      'or (pp.SupplierNo = 2878)'
      'or (pp.SupplierNo = 4275)'
      'or (pp.SupplierNo = 1881)'
      'or (pp.SupplierNo = 1879)'
      'or (pp.SupplierNo = 2124))'
      ''
      'Group By sup.SearchName, rp.RegPointName, pp.ProductionDate,'
      'PG.ActualThicknessMM,'
      'PG.ActualWidthMM,'
      'S.SpeciesName,'
      'G.GradeName,'
      'Su.SurfacingName,'
      'PC.ProductCategoryName,'
      'pp.RunNo,'
      'pp.PackageNo,'
      'pp.SupplierCode,'
      'P.ProductDisplayName,'
      'PL.ActualLengthMM,'
      'PL.NominalLengthMM,'
      'pp.Operation,'
      'C.CityName,'
      'va.VarugruppNamn,'
      'ST.ShiftTeamName,'
      'sop.SortingOrderNo,'
      'sop.SortingOrderRowNo,'
      'pn.REFERENCE,'
      'sor.HeadLO,'
      'Cu.ClientName'
      ''
      'UNION'
      ''
      'Select'
      'PL.ActualLengthMM '#9#9'AS ALMM,'
      'PL.NominalLengthMM '#9#9'AS NLMM,'
      'P.ProductDisplayName AS Produkt,'
      'pp.PackageNo AS Paketnr,'
      'pp.SupplierCode AS Prefix,'
      'pp.RunNo AS K'#246'rnr,'
      'PG.ActualThicknessMM AS AT,'
      'PG.ActualWidthMM AS AB,'
      'S.SpeciesName AS TS,'
      'G.GradeName AS KV,'
      'Su.SurfacingName AS UT,'
      'PC.ProductCategoryName AS IMP,'
      'pp.ProductionDate AS Datum,'
      'sup.SearchName AS Verk,'
      'rp.RegPointName AS M'#228'tpunkt,'
      'SUM(ptd.m3Actual) AM3,'
      'SUM(ptd.m3Nominal) NM3,'
      'SUM(ptd.NoOfPieces)'
      '/ CAST(SUM(pt.TotalNoOfPieces)  AS Float) as pkt,'
      'SUM(ptd.NoOfPieces) AS STYCK,'
      'SUM(ptd.LinealMeterActualLength) AS LPM,'
      'CASE'
      'WHEN pp.Operation = 0 THEN '#39'P'#229'reg'#39
      'WHEN pp.Operation = 3 THEN '#39'Avreg'#39
      'END AS Operation,'
      'C.CityName AS Ort,'
      'va.VarugruppNamn,'
      '0.0 AS AvgLength,'
      'ST.ShiftTeamName,'
      'sop.SortingOrderNo AS K'#246'orderID,'
      'sop.SortingOrderRowNo AS K'#246'rorderRadID,'
      'pn.REFERENCE,'
      'sor.HeadLO,'
      'Cu.ClientName'
      ''
      'FROM dbo.package_production pp'
      ''
      'inner join dbo.PackageNumber pn on pn.PackageNo = pp.PackageNo'
      'and pn.SupplierCode = pp.SupplierCode'
      'Left outer join dbo.SortingOrderNewPkgs sop'
      ''
      
        'Inner join dbo.SortingOrderRow sor on sor.SortingOrderNo = sop.S' +
        'ortingOrderNo'
      'and sor.SortingOrderRowNo = sop.SortingOrderRowNo'
      
        'Inner join dbo.CustomerShippingPlanHeader csh on csh.ShippingPla' +
        'nNo = sor.HeadLO'
      'inner join dbo.Client Cu on Cu.ClientNo = csh.CustomerNo'
      ''
      'on sop.PackageNo = pp.PackageNo'
      'and sop.SupplierCode = pp.SupplierCode'
      ''
      'Left outer join dbo.ShiftTeam ST on ST.ShiftTeamNo = pp.ShiftNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pp.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.City C on C.CityNo = PIP.PhyInvPointNameNo'
      ''
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pp.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeDetail ptd on ptd.PackageTypeNo = pp.P' +
        'ackageTypeNo'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      
        'Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = pp.Produc' +
        'tionUnitNo'
      'Inner Join dbo.Client sup on sup.ClientNo = pp.SupplierNo'
      ''
      'Inner Join dbo.Product P on P.ProductNo = PT.ProductNo'
      ''
      
        'Left Outer Join dbo.Varugrupp va on va.VarugruppNo = P.Varugrupp' +
        'No'
      ''
      'Inner Join dbo.Grade G on G.GradeNo = P.GradeNo'
      '                        AND G.LanguageCode = 1'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'Inner Join dbo.Species S on S.SpeciesNo = PG.SpeciesNo'
      '                        AND S.LanguageCode = 1'
      'Inner Join dbo.Surfacing SU on SU.SurfacingNo = PG.SurfacingNo'
      '                         AND SU.LanguageCode = 1'
      
        'Inner Join dbo.ProductCategory PC on PC.ProductCategoryNo = PG.P' +
        'roductCategoryNo'
      '                          AND PC.LanguageCode = 1'
      ''
      'WHERE'
      '(pp.Operation = 3)'
      'AND ProductionDate BETWEEN   :StartPeriod AND  :EndPeriod'
      'AND ((pp.Operation = :Operation) or (:Operation = 1))'
      'AND ((pp.SupplierNo = :SupplierNo) or (:SupplierNo = 0))'
      'AND ((rp.RegPointNo = :RegPointNo) or (:RegPointNo = 0))'
      ''
      'AND ((pp.SupplierNo = 25)'
      'or (pp.SupplierNo = 61)'
      'or (pp.SupplierNo = 76)'
      'or (pp.SupplierNo = 172)'
      'or (pp.SupplierNo = 212)'
      'or (pp.SupplierNo = 232)'
      'or (pp.SupplierNo = 578)'
      'or (pp.SupplierNo = 830)'
      'or (pp.SupplierNo = 2878)'
      'or (pp.SupplierNo = 4275)'
      'or (pp.SupplierNo = 1881)'
      'or (pp.SupplierNo = 1879)'
      'or (pp.SupplierNo = 2124))'
      ''
      'Group By sup.SearchName, rp.RegPointName, pp.ProductionDate,'
      'PG.ActualThicknessMM,'
      'PG.ActualWidthMM,'
      'S.SpeciesName,'
      'G.GradeName,'
      'Su.SurfacingName,'
      'PC.ProductCategoryName,'
      'pp.RunNo,'
      'pp.PackageNo,'
      'pp.SupplierCode,'
      'P.ProductDisplayName,'
      'PL.ActualLengthMM,'
      'PL.NominalLengthMM,'
      'pp.Operation,'
      'C.CityName,'
      'va.VarugruppNamn,'
      'ST.ShiftTeamName,'
      'sop.SortingOrderNo,'
      'sop.SortingOrderRowNo,'
      'pn.REFERENCE,'
      'sor.HeadLO,'
      'Cu.ClientName'
      ''
      '')
    Left = 400
    Top = 408
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
        Name = 'OPERATION'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REGPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProdDataALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ReadOnly = True
      Required = True
    end
    object cds_ProdDataNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
      ReadOnly = True
      Required = True
    end
    object cds_ProdDataProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      ReadOnly = True
      Size = 150
    end
    object cds_ProdDataPaketnr: TIntegerField
      FieldName = 'Paketnr'
      Origin = 'Paketnr'
      ReadOnly = True
      Required = True
    end
    object cds_ProdDataPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_ProdDataKörnr: TIntegerField
      FieldName = 'K'#246'rnr'
      Origin = '[K'#246'rnr]'
      ReadOnly = True
    end
    object cds_ProdDataAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
      ReadOnly = True
    end
    object cds_ProdDataAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
      ReadOnly = True
    end
    object cds_ProdDataTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cds_ProdDataKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_ProdDataUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cds_ProdDataIMP: TStringField
      FieldName = 'IMP'
      Origin = 'IMP'
      ReadOnly = True
      Size = 40
    end
    object cds_ProdDataDatum: TSQLTimeStampField
      FieldName = 'Datum'
      Origin = 'Datum'
      ReadOnly = True
    end
    object cds_ProdDataVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      ReadOnly = True
      Size = 80
    end
    object cds_ProdDataMätpunkt: TStringField
      FieldName = 'M'#228'tpunkt'
      Origin = '[M'#228'tpunkt]'
      ReadOnly = True
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
    object cds_ProdDatapkt: TFloatField
      FieldName = 'pkt'
      Origin = 'pkt'
      ReadOnly = True
    end
    object cds_ProdDataSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ReadOnly = True
    end
    object cds_ProdDataLPM: TFloatField
      FieldName = 'LPM'
      Origin = 'LPM'
      ReadOnly = True
    end
    object cds_ProdDataOperation: TStringField
      FieldName = 'Operation'
      Origin = 'Operation'
      ReadOnly = True
      Size = 5
    end
    object cds_ProdDataOrt: TStringField
      FieldName = 'Ort'
      Origin = 'Ort'
      ReadOnly = True
      Size = 50
    end
    object cds_ProdDataVarugruppNamn: TStringField
      FieldName = 'VarugruppNamn'
      Origin = 'VarugruppNamn'
      ReadOnly = True
      Size = 35
    end
    object cds_ProdDataAvgLength: TBCDField
      FieldName = 'AvgLength'
      Origin = 'AvgLength'
      ReadOnly = True
      Required = True
      Precision = 1
      Size = 1
    end
    object cds_ProdDataShiftTeamName: TStringField
      FieldName = 'ShiftTeamName'
      Origin = 'ShiftTeamName'
      ReadOnly = True
      Size = 35
    end
    object cds_ProdDataKöorderID: TIntegerField
      FieldName = 'K'#246'orderID'
      Origin = '[K'#246'orderID]'
      ReadOnly = True
    end
    object cds_ProdDataKörorderRadID: TIntegerField
      FieldName = 'K'#246'rorderRadID'
      Origin = '[K'#246'rorderRadID]'
      ReadOnly = True
    end
    object cds_ProdDataREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      ReadOnly = True
      Size = 30
    end
    object cds_ProdDataHeadLO: TIntegerField
      FieldName = 'HeadLO'
      Origin = 'HeadLO'
      ReadOnly = True
    end
    object cds_ProdDataClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      ReadOnly = True
      Size = 80
    end
  end
  object sq_ProdDataSumII: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ProdSumIIV3'
      'WHERE Datum BETWEEN   :StartPeriod AND  :EndPeriod'
      'AND ((RegPointNo = :RegPointNo) or (:RegPointNo = 0))'
      'AND ((Operation = :Operation) or (:Operation = '#39'Alla'#39'))'
      'AND ((0 = :SupplierNo)'
      ''
      'or ((SupplierNo = 25)'
      'or (SupplierNo = 61)'
      'or (SupplierNo = 76)'
      'or (SupplierNo = 172)'
      'or (SupplierNo = 212)'
      'or (SupplierNo = 232)'
      'or (SupplierNo = 578)'
      'or (SupplierNo = 830)'
      'or (SupplierNo = 2878)))')
    Left = 400
    Top = 304
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
        Name = 'REGPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OPERATION'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_ProdDataSumIIProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 100
    end
    object sq_ProdDataSumIIALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
    end
    object sq_ProdDataSumIINLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
    end
    object sq_ProdDataSumIIPaketnr: TIntegerField
      FieldName = 'Paketnr'
      Origin = 'Paketnr'
    end
    object sq_ProdDataSumIIPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      Size = 3
    end
    object sq_ProdDataSumIIAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object sq_ProdDataSumIIAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object sq_ProdDataSumIITS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      Size = 30
    end
    object sq_ProdDataSumIIKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      Size = 30
    end
    object sq_ProdDataSumIIUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      Size = 30
    end
    object sq_ProdDataSumIIIMP: TStringField
      FieldName = 'IMP'
      Origin = 'IMP'
      Size = 30
    end
    object sq_ProdDataSumIIDatum: TSQLTimeStampField
      FieldName = 'Datum'
      Origin = 'Datum'
    end
    object sq_ProdDataSumIIVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      Size = 80
    end
    object sq_ProdDataSumIIMätpunkt: TStringField
      FieldName = 'M'#228'tpunkt'
      Origin = '[M'#228'tpunkt]'
      Size = 30
    end
    object sq_ProdDataSumIIAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sq_ProdDataSumIINM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
    end
    object sq_ProdDataSumIIPKT: TFloatField
      FieldName = 'PKT'
      Origin = 'PKT'
    end
    object sq_ProdDataSumIISTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object sq_ProdDataSumIILPM: TFloatField
      FieldName = 'LPM'
      Origin = 'LPM'
    end
    object sq_ProdDataSumIISupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object sq_ProdDataSumIIRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
    end
    object sq_ProdDataSumIIOperation: TStringField
      FieldName = 'Operation'
      Origin = 'Operation'
      Size = 10
    end
    object sq_ProdDataSumIIOrt: TStringField
      FieldName = 'Ort'
      Origin = 'Ort'
      Size = 50
    end
    object sq_ProdDataSumIIVarugruppNamn: TStringField
      FieldName = 'VarugruppNamn'
      Origin = 'VarugruppNamn'
      Size = 35
    end
    object sq_ProdDataSumIIAvgLength: TFloatField
      FieldName = 'AvgLength'
      Origin = 'AvgLength'
    end
    object sq_ProdDataSumIIShiftTeamName: TStringField
      FieldName = 'ShiftTeamName'
      Origin = 'ShiftTeamName'
      Size = 35
    end
    object sq_ProdDataSumIISortingOrderNo: TIntegerField
      DisplayLabel = 'K'#246'rordernr'
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
    end
    object sq_ProdDataSumIISortingOrderRowNo: TIntegerField
      DisplayLabel = 'Radnr'
      FieldName = 'SortingOrderRowNo'
      Origin = 'SortingOrderRowNo'
    end
    object sq_ProdDataSumIIReferens: TStringField
      FieldName = 'Referens'
      Origin = 'Referens'
      Size = 30
    end
    object sq_ProdDataSumIIHeadLO: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'HeadLO'
      Origin = 'HeadLO'
    end
    object sq_ProdDataSumIIClientName: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object cds_TorkSatser: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select C.SearchName AS Verk,'
      'k.KilnName,'
      'kv.InDate AS StartTime,'
      'kv.OutDate AS EndTime,'
      'kh.PlannedDuration AS PlaneradTid,'
      'DATEDIFF ( hour , kv.InDate, kv.OutDate  ) AS KalkyleradTid,'
      'Count(Distinct pn.PackageNo) AS NoOfPkgs,'
      'SUM(ptd.m3Actual) AS AM3,'
      ''
      'PG.ActualThicknessMM '#9'AS AT,'
      'PG.ActualWidthMM'#9'AS AB,'
      'S.SpeciesName'#9#9'AS TS,'
      'G.GradeName'#9#9'AS KV,'
      'Su.SurfacingName'#9'AS UT,'
      'PC.ProductCategoryName'#9'AS IMP,'
      'CAST(pg.ActualThicknessMM AS varchar(5)) + '#39'x'#39' +'
      'CAST(pg.ActualWidthMM AS Varchar(5)) + '#39' - '#39' +'
      'G.GradeName AS DIM_Grade,'
      ''
      'CAST(pg.ActualThicknessMM AS varchar(5)) + '#39'x'#39' +'
      'CAST(pg.ActualWidthMM AS Varchar(5)) + '#39' - '#39' +'
      'RTRIM(G.GradeName)  + '#39' - '#39' +'
      'CAST(MAX(pl.ActualLengthMM)  AS Varchar(6)) AS DIM_Grade_Length,'
      ''
      'MAX(pl.ActualLengthMM) AS ALMM,'
      ''
      'CAST(pg.ActualThicknessMM AS varchar(5)) + '#39'x'#39' +'
      'CAST(pg.ActualWidthMM AS Varchar(5)) + '#39' - '#39' +'
      'RTRIM(G.GradeName)  + '#39' - '#39' +'
      'CAST(MAX(pl.ActualLengthMM)  AS Varchar(6)) + '#39' - '#39' +'
      'RTRIM(S.SpeciesName)'
      'AS DIM_Grade_Length_TS,'
      ''
      'kv.InDate,'
      ''
      'CAST(kv.InDate AS Date) AS DateOnly'
      ''
      'FROM dbo.KilnChargeHdr kh'
      'inner join dbo.KilnVagn kv on kv.KilnChargeNo = kh.KilnChargeNo'
      ''
      'Inner Join dbo.Kilns k on k.KilnNo = kh.KilnNo'
      ''
      
        'Inner Join dbo.KilnChargeRows kr on kr.KilnChargeNo = kv.KilnCha' +
        'rgeNo'
      'and kr.VagnNo = kv.VagnNo'
      ''
      ''
      ''
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = kr.PackageNo'
      #9#9#9#9'AND pn.SupplierCode = kr.SupplierCode'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail ptd on ptd.PackageTypeNo = pt.P' +
        'ackageTypeNo'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = ptd.Prod' +
        'uctLengthNo'
      ''
      'Inner Join dbo.Product P on P.ProductNo = PT.ProductNo'
      'Inner Join dbo.Grade G on G.GradeNo = P.GradeNo'
      '                        AND G.LanguageCode = 1'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'Inner Join dbo.Species S on S.SpeciesNo = PG.SpeciesNo'
      '                        AND S.LanguageCode = 1'
      'Inner Join dbo.Surfacing SU on SU.SurfacingNo = PG.SurfacingNo'
      '                         AND SU.LanguageCode = 1'
      
        'Inner Join dbo.ProductCategory PC on PC.ProductCategoryNo = PG.P' +
        'roductCategoryNo'
      '                          AND PC.LanguageCode = 1'
      ''
      'Inner Join dbo.Client C on C.ClientNo = kh.ClientNo'
      ''
      'WHERE kv.OutDate BETWEEN   :StartPeriod AND  :EndPeriod'
      'AND ((kh.ClientNo = :SupplierNo) or (:SupplierNo = 0))'
      'AND kv.VagnStatus = :VagnStatus'
      ''
      ''
      
        'Group By k.KilnName, kv.OutDate, kv.InDate, kh.PlannedDuration, ' +
        'C.SearchName,'
      
        'PG.ActualThicknessMM, PG.ActualWidthMM, S.SpeciesName, G.GradeNa' +
        'me,'
      'Su.SurfacingName, PC.ProductCategoryName'
      ''
      ''
      'UNION'
      ''
      'Select C.SearchName AS Verk,'
      'k.KilnName,'
      'kv.InDate AS StartTime,'
      'IsNull(kv.OutDate, GetDate()) AS EndTime,'
      'kh.PlannedDuration AS PlaneradTid,'
      'DATEDIFF ( hour , kv.InDate, kv.OutDate  ) AS KalkyleradTid,'
      'Count(Distinct pn.PackageNo) AS NoOfPkgs,'
      'SUM(ptd.m3Actual) AS AM3,'
      ''
      'PG.ActualThicknessMM '#9'AS AT,'
      'PG.ActualWidthMM'#9'AS AB,'
      'S.SpeciesName'#9#9'AS TS,'
      'G.GradeName'#9#9'AS KV,'
      'Su.SurfacingName'#9'AS UT,'
      'PC.ProductCategoryName'#9'AS IMP,'
      'CAST(pg.ActualThicknessMM AS varchar(5)) + '#39'x'#39' +'
      'CAST(pg.ActualWidthMM AS Varchar(5)) + '#39' - '#39' +'
      'G.GradeName AS DIM_Grade,'
      ''
      'CAST(pg.ActualThicknessMM AS varchar(5)) + '#39'x'#39' +'
      'CAST(pg.ActualWidthMM AS Varchar(5)) + '#39' - '#39' +'
      'RTRIM(G.GradeName)  + '#39' - '#39' +'
      'CAST(MAX(pl.ActualLengthMM)  AS Varchar(6)) AS DIM_Grade_Length,'
      ''
      'MAX(pl.ActualLengthMM) AS ALMM,'
      ''
      'CAST(pg.ActualThicknessMM AS varchar(5)) + '#39'x'#39' +'
      'CAST(pg.ActualWidthMM AS Varchar(5)) + '#39' - '#39' +'
      'RTRIM(G.GradeName)  + '#39' - '#39' +'
      'CAST(MAX(pl.ActualLengthMM)  AS Varchar(6)) + '#39' - '#39' +'
      'RTRIM(S.SpeciesName)'
      'AS DIM_Grade_Length_TS,'
      ''
      'kv.InDate ,'
      ''
      'CAST(kv.InDate AS Date) AS DateOnly'
      ''
      'FROM dbo.KilnChargeHdr kh'
      'inner join dbo.KilnVagn kv on kv.KilnChargeNo = kh.KilnChargeNo'
      ''
      'Inner Join dbo.Kilns k on k.KilnNo = kh.KilnNo'
      ''
      
        'Inner Join dbo.KilnChargeRows kr on kr.KilnChargeNo = kv.KilnCha' +
        'rgeNo'
      'and kr.VagnNo = kv.VagnNo'
      ''
      ''
      ''
      'Inner Join dbo.PackageNumber pn on pn.PackageNo = kr.PackageNo'
      #9#9#9#9'AND pn.SupplierCode = kr.SupplierCode'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail ptd on ptd.PackageTypeNo = pt.P' +
        'ackageTypeNo'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = ptd.Prod' +
        'uctLengthNo'
      ''
      'Inner Join dbo.Product P on P.ProductNo = PT.ProductNo'
      'Inner Join dbo.Grade G on G.GradeNo = P.GradeNo'
      '                        AND G.LanguageCode = 1'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'Inner Join dbo.Species S on S.SpeciesNo = PG.SpeciesNo'
      '                        AND S.LanguageCode = 1'
      'Inner Join dbo.Surfacing SU on SU.SurfacingNo = PG.SurfacingNo'
      '                         AND SU.LanguageCode = 1'
      
        'Inner Join dbo.ProductCategory PC on PC.ProductCategoryNo = PG.P' +
        'roductCategoryNo'
      '                          AND PC.LanguageCode = 1'
      ''
      'Inner Join dbo.Client C on C.ClientNo = kh.ClientNo'
      ''
      
        'inner join dbo.LogicalInventoryPoint lip on lip.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      ''
      'WHERE'
      ' ((kh.ClientNo = :SupplierNo) or (:SupplierNo = 0))'
      'AND kv.VagnStatus = :VagnStatus'
      'and kv.OutDate is null'
      ''
      ''
      ''
      
        'Group By k.KilnName, kv.OutDate, kv.InDate, kh.PlannedDuration, ' +
        'C.SearchName,'
      
        'PG.ActualThicknessMM, PG.ActualWidthMM, S.SpeciesName, G.GradeNa' +
        'me,'
      'Su.SurfacingName, PC.ProductCategoryName')
    Left = 512
    Top = 304
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
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VAGNSTATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_TorkSatserVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      Size = 80
    end
    object cds_TorkSatserKilnName: TStringField
      FieldName = 'KilnName'
      Origin = 'KilnName'
      Size = 30
    end
    object cds_TorkSatserStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
      Origin = 'StartTime'
    end
    object cds_TorkSatserEndTime: TSQLTimeStampField
      FieldName = 'EndTime'
      Origin = 'EndTime'
    end
    object cds_TorkSatserPlaneradTid: TFloatField
      FieldName = 'PlaneradTid'
      Origin = 'PlaneradTid'
    end
    object cds_TorkSatserKalkyleradTid: TIntegerField
      FieldName = 'KalkyleradTid'
      Origin = 'KalkyleradTid'
      ReadOnly = True
    end
    object cds_TorkSatserAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
    object cds_TorkSatserAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object cds_TorkSatserAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object cds_TorkSatserTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      Required = True
      Size = 30
    end
    object cds_TorkSatserKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_TorkSatserUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      Required = True
      Size = 30
    end
    object cds_TorkSatserIMP: TStringField
      FieldName = 'IMP'
      Origin = 'IMP'
      Size = 40
    end
    object cds_TorkSatserDIM_Grade: TStringField
      DisplayLabel = 'Dim/Kval'
      FieldName = 'DIM_Grade'
      Origin = 'DIM_Grade'
      ReadOnly = True
      Size = 44
    end
    object cds_TorkSatserDIM_Grade_Length: TStringField
      DisplayLabel = 'Dim/Kval/L'#228'ngd'
      FieldName = 'DIM_Grade_Length'
      Origin = 'DIM_Grade_Length'
      ReadOnly = True
      Size = 53
    end
    object cds_TorkSatserALMM: TFloatField
      DisplayLabel = 'L'#228'ngd (ALMM)'
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ReadOnly = True
    end
    object cds_TorkSatserDIM_Grade_Length_TS: TStringField
      DisplayLabel = 'Dim/Kval/L'#228'ngd/TS'
      FieldName = 'DIM_Grade_Length_TS'
      Origin = 'DIM_Grade_Length_TS'
      ReadOnly = True
      Size = 86
    end
    object cds_TorkSatserInDate: TSQLTimeStampField
      DisplayLabel = 'In Datum + Tid'
      FieldName = 'InDate'
      Origin = 'InDate'
      ReadOnly = True
    end
    object cds_TorkSatserNoOfPkgs: TIntegerField
      DisplayLabel = 'Paket'
      FieldName = 'NoOfPkgs'
      Origin = 'NoOfPkgs'
      ReadOnly = True
    end
    object cds_TorkSatserDateOnly: TDateField
      DisplayLabel = 'In Datum'
      FieldName = 'DateOnly'
      Origin = 'DateOnly'
      ReadOnly = True
    end
  end
  object cds_overview: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select '#39'Utlastat'#39' AS Item, SUM(NM3) AS NM3 from dbo.LevSituation' +
        'er_II LS'
      'Inner Join dbo.Client C on C.SearchName = LS.Supplier'
      'WHERE Utlastad >= :StartPeriod'
      'AND Utlastad <= :EndPeriod'
      'AND ((C.ClientNo = :SupplierNo) or (:SupplierNo = 0))'
      ''
      'UNION'
      ''
      
        'Select RTRIM(M'#228'tpunkt) AS Item, SUM(NM3) AS NM3 FROM dbo.ProdSum' +
        ' ps'
      
        'Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = ps.RegPoi' +
        'ntNo'
      
        'WHERE (rp.PT = 1 or rp.PT = 2 or rp.PT = 3 or rp.PT = 4 or rp.PT' +
        ' = 5 or rp.PT = 6 or rp.PT = 7)'
      'AND Datum BETWEEN   :StartPeriod AND  :EndPeriod'
      'AND ((SupplierNo = :SupplierNo) or (:SupplierNo = 0))'
      'Group By M'#228'tpunkt'
      ''
      'UNION'
      ''
      'Select '#39'F'#246'r'#228'dling'#39' AS Item, SUM(NM3) AS NM3 FROM dbo.ProdSum ps'
      
        'Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = ps.RegPoi' +
        'ntNo'
      'WHERE (rp.PT = 2 or rp.PT = 3 or rp.PT = 4 or rp.PT = 5'
      'or rp.PT = 6 or rp.PT = 7)'
      'AND Datum BETWEEN   :StartPeriod AND  :EndPeriod'
      'AND ((SupplierNo = :SupplierNo) or (:SupplierNo = 0))'
      '')
    Left = 920
    Top = 272
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
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_overviewItem: TStringField
      FieldName = 'Item'
      Origin = 'Item'
      ReadOnly = True
      Size = 30
    end
    object cds_overviewNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
    end
  end
  object sq_ProdDataSum: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ProdSumIIV3'
      'WHERE Datum BETWEEN   :StartPeriod AND  :EndPeriod'
      'AND ((SupplierNo = :SupplierNo) or (:SupplierNo = 0))'
      'AND ((Operation = :Operation) or (:Operation = '#39'Alla'#39'))'
      'AND ((RegPointNo = :RegPointNo) or (:RegPointNo = 0))'
      '')
    Left = 400
    Top = 352
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
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OPERATION'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'REGPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_ProdDataSumProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 100
    end
    object sq_ProdDataSumALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
    end
    object sq_ProdDataSumNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
    end
    object sq_ProdDataSumPaketnr: TIntegerField
      FieldName = 'Paketnr'
      Origin = 'Paketnr'
    end
    object sq_ProdDataSumPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      Size = 3
    end
    object sq_ProdDataSumKörnr: TIntegerField
      FieldName = 'K'#246'rnr'
      Origin = '[K'#246'rnr]'
    end
    object sq_ProdDataSumAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object sq_ProdDataSumAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object sq_ProdDataSumTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      Size = 30
    end
    object sq_ProdDataSumKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      Size = 30
    end
    object sq_ProdDataSumUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      Size = 30
    end
    object sq_ProdDataSumIMP: TStringField
      FieldName = 'IMP'
      Origin = 'IMP'
      Size = 30
    end
    object sq_ProdDataSumDatum: TSQLTimeStampField
      FieldName = 'Datum'
      Origin = 'Datum'
    end
    object sq_ProdDataSumVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      Size = 80
    end
    object sq_ProdDataSumMätpunkt: TStringField
      FieldName = 'M'#228'tpunkt'
      Origin = '[M'#228'tpunkt]'
      Size = 30
    end
    object sq_ProdDataSumAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sq_ProdDataSumNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
    end
    object sq_ProdDataSumPKT: TFloatField
      FieldName = 'PKT'
      Origin = 'PKT'
    end
    object sq_ProdDataSumSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object sq_ProdDataSumLPM: TFloatField
      FieldName = 'LPM'
      Origin = 'LPM'
    end
    object sq_ProdDataSumSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object sq_ProdDataSumRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
    end
    object sq_ProdDataSumOperation: TStringField
      FieldName = 'Operation'
      Origin = 'Operation'
      Size = 10
    end
    object sq_ProdDataSumOrt: TStringField
      FieldName = 'Ort'
      Origin = 'Ort'
      Size = 50
    end
    object sq_ProdDataSumVarugruppNamn: TStringField
      FieldName = 'VarugruppNamn'
      Origin = 'VarugruppNamn'
      Size = 35
    end
    object sq_ProdDataSumAvgLength: TFloatField
      FieldName = 'AvgLength'
      Origin = 'AvgLength'
    end
    object sq_ProdDataSumShiftTeamName: TStringField
      FieldName = 'ShiftTeamName'
      Origin = 'ShiftTeamName'
      Size = 35
    end
    object sq_ProdDataSumSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
    end
    object sq_ProdDataSumSortingOrderRowNo: TIntegerField
      FieldName = 'SortingOrderRowNo'
      Origin = 'SortingOrderRowNo'
    end
    object sq_ProdDataSumReferens: TStringField
      FieldName = 'Referens'
      Origin = 'Referens'
      Size = 30
    end
    object sq_ProdDataSumHeadLO: TIntegerField
      FieldName = 'HeadLO'
      Origin = 'HeadLO'
    end
    object sq_ProdDataSumClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object cds_Kap: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT'
      'PGR.DateCreated AS Producerat,'
      'PGR.SortingOrderNo AS TONr,'
      'PRAvreg.ProductDisplayName AS Ravaru_Produkt,'
      'plAvreg.ActualLengthMM AS Ravaru_Langd,'
      'PR.ProductDisplayName AS HF_Produkt,'
      'pl.ActualLengthMM AS HF_Langd,'
      'PT.Totalm3Actual AS PaRegAM3,'
      'PGR.AM3 AS AvRegAM3,'
      'PT.Totalm3Actual / PGR.AM3 AS Utbyte,'
      ''
      'PGR.AM3 - PT.Totalm3Actual AS SpillAM3,'
      'PGR.NM3 - PT.Totalm3Nominal AS SpillNM3,'
      ''
      'PT.Totalm3Nominal AS PaRegNM3,'
      'PT.Totalm3Nominal / PGR.NM3 AS UtbyteNM3,'
      'PGR.NM3 AS AvRegNM3,'
      ''
      'PT.TotalLinealMeterActualLength / PGR.AM1 AS UtbyteAM1,'
      'PT.TotalLinealMeterActualLength AS PaRegAM1,'
      'PGR.AM1 AS AvRegAM1,'
      ''
      'PT.TotalNoOfPieces AS ProdPcs,'
      ''
      'IsNull(sor.Plannedpcs,0) AS Plannedpcs,'
      ''
      'Isnull(sor.Plannedpcs,0) - PT.TotalNoOfPieces AS DiffPcs,'
      ''
      'C.ClientName AS '#196'gare,'
      'PRGAvreg.ActualThicknessMM AS [AT],'
      'PRGAvreg.ActualWidthMM AS AB,'
      'so.VP_ProductCodePrefix AS ProduktPrefix,'
      'Prod.ClientName AS Producent,'
      'Ort.CityName AS Ort'
      ''
      '  FROM dbo.PackageGroup PGR'
      ''
      
        '  Inner Join dbo.PackageType PT on PT.PackageTypeNo = PGR.HFLPac' +
        'kageTypeNo'
      
        '  Inner Join dbo.PackageTypeDetail PTD on PTD.PackageTypeNo = PT' +
        '.PackageTypeNo'
      
        '  Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Pr' +
        'oductLengthNo'
      '  Inner Join dbo.Product PR on pr.ProductNo = pt.ProductNo'
      ''
      
        '  Inner Join dbo.PackageType PTAvreg on PTAvreg.PackageTypeNo = ' +
        'PGR.AvRegPackageTypeNo'
      
        '  Inner Join dbo.PackageTypeDetail PTDAvreg on PTDAvreg.PackageT' +
        'ypeNo = PTAvreg.PackageTypeNo'
      
        '  Inner Join dbo.ProductLength PLAvreg on PLAvreg.ProductLengthN' +
        'o = PTDAvreg.ProductLengthNo'
      
        '  Inner Join dbo.Product PRAvreg on prAvreg.ProductNo = ptAvreg.' +
        'ProductNo'
      
        '  Inner Join dbo.ProductGroup PRGAvreg on PRGAvreg.ProductGroupN' +
        'o = PRAvreg.ProductGroupNo'
      ''
      
        '  Inner join dbo.SortingOrderRow sor on sor.SortingOrderNo = PGR' +
        '.SortingOrderNo'
      '  and sor.SortingOrderRowNo = PGR.SortingOrderRowNo'
      
        '  Inner join dbo.SortingOrder so on so.SortingOrderNo = sor.Sort' +
        'ingOrderNo'
      ''
      '  Inner Join dbo.Client C on C.ClientNo = PGR.RmtrlOwnerNo'
      ''
      '  Inner Join dbo.Client Prod on Prod.ClientNo = PGR.ProducerNo'
      '  Inner Join dbo.City Ort on Ort.CityNo = PGR.LocationNo'
      ''
      '  WHERE PGR.DateCreated >= :StartPeriod'
      '  AND PGR.DateCreated <= :EndPeriod'
      '  AND ((PRGAvreg.ActualThicknessMM = :ATJ) or (0 = :ATJ))'
      '  AND ((PRGAvreg.ActualWidthMM =  :ABJ) or (0 = :ABJ))'
      '  AND ((PGR.ProducerNo = :ProducerNo) or (:ProducerNo = 0))'
      '')
    Left = 576
    Top = 584
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
        Name = 'ATJ'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'ABJ'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'PRODUCERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_KapProducerat: TSQLTimeStampField
      FieldName = 'Producerat'
      Origin = 'Producerat'
    end
    object cds_KapTONr: TIntegerField
      FieldName = 'TONr'
      Origin = 'TONr'
    end
    object cds_KapRavaru_Produkt: TStringField
      FieldName = 'Ravaru_Produkt'
      Origin = 'Ravaru_Produkt'
      Size = 150
    end
    object cds_KapRavaru_Langd: TFloatField
      FieldName = 'Ravaru_Langd'
      Origin = 'Ravaru_Langd'
      Required = True
    end
    object cds_KapHF_Produkt: TStringField
      FieldName = 'HF_Produkt'
      Origin = 'HF_Produkt'
      Size = 150
    end
    object cds_KapHF_Langd: TFloatField
      FieldName = 'HF_Langd'
      Origin = 'HF_Langd'
      Required = True
    end
    object cds_KapPaRegAM3: TFloatField
      FieldName = 'PaRegAM3'
      Origin = 'PaRegAM3'
    end
    object cds_KapAvRegAM3: TFloatField
      FieldName = 'AvRegAM3'
      Origin = 'AvRegAM3'
    end
    object cds_KapUtbyte: TFloatField
      FieldName = 'Utbyte'
      Origin = 'Utbyte'
      ReadOnly = True
    end
    object cds_KapSpillAM3: TFloatField
      FieldName = 'SpillAM3'
      Origin = 'SpillAM3'
      ReadOnly = True
    end
    object cds_KapSpillNM3: TFloatField
      FieldName = 'SpillNM3'
      Origin = 'SpillNM3'
      ReadOnly = True
    end
    object cds_KapPaRegNM3: TFloatField
      FieldName = 'PaRegNM3'
      Origin = 'PaRegNM3'
    end
    object cds_KapUtbyteNM3: TFloatField
      FieldName = 'UtbyteNM3'
      Origin = 'UtbyteNM3'
      ReadOnly = True
    end
    object cds_KapAvRegNM3: TFloatField
      FieldName = 'AvRegNM3'
      Origin = 'AvRegNM3'
    end
    object cds_KapProdPcs: TIntegerField
      FieldName = 'ProdPcs'
      Origin = 'ProdPcs'
    end
    object cds_KapPlannedpcs: TIntegerField
      FieldName = 'Plannedpcs'
      Origin = 'Plannedpcs'
      ReadOnly = True
      Required = True
    end
    object cds_KapDiffPcs: TIntegerField
      FieldName = 'DiffPcs'
      Origin = 'DiffPcs'
      ReadOnly = True
    end
    object cds_KapÄgare: TStringField
      FieldName = #196'gare'
      Origin = '['#196'gare]'
      Size = 80
    end
    object cds_KapAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object cds_KapAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object cds_KapProduktPrefix: TStringField
      FieldName = 'ProduktPrefix'
      Origin = 'ProduktPrefix'
      Size = 2
    end
    object cds_KapProducent: TStringField
      FieldName = 'Producent'
      Origin = 'Producent'
      Size = 80
    end
    object cds_KapOrt: TStringField
      FieldName = 'Ort'
      Origin = 'Ort'
      Size = 50
    end
    object cds_KapUtbyteAM1: TFloatField
      FieldName = 'UtbyteAM1'
      Origin = 'UtbyteAM1'
      ReadOnly = True
    end
    object cds_KapPaRegAM1: TFloatField
      FieldName = 'PaRegAM1'
      Origin = 'PaRegAM1'
    end
    object cds_KapAvRegAM1: TFloatField
      FieldName = 'AvRegAM1'
      Origin = 'AvRegAM1'
    end
  end
  object cds_StoppTid: TFDQuery
    Filtered = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        ' Select CAST(st.StoppStartNoTime AS DateTime) AS StoppStartNoTim' +
        'e, '
      ' st.RegPointName, '
      'st.StoppTidsNamn,'
      'st.StoppStartWithTime,'
      'st.Kvitterat,'
      'st.StoppOrsakNr,'
      'st.StoppSeconds,'
      'st.StoppMinutes,'
      'st.StoppHours,'
      'st.DriftPlatsnr,'
      'st.VerkNo,'
      'st.ProductNo,'
      'st.ID AS KoNr,'
      'st.DIM_Grade AS Produkt,'
      'st.ShiftTeamName AS Skift,'
      ' 1 AS NoOfStopps from dbo.stoppssum st'
      ' where verkNo = :VerkNo'
      ' AND StoppStartWithTime >= :StartPeriod'
      '  AND StoppStartWithTime <= :EndPeriod'
      '')
    Left = 920
    Top = 448
    ParamData = <
      item
        Name = 'VERKNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STARTPERIOD'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ENDPERIOD'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object cds_StoppTidRegPointName: TStringField
      DisplayLabel = 'M'#228'tpunkt'
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      Required = True
      Size = 30
    end
    object cds_StoppTidStoppTidsNamn: TStringField
      DisplayLabel = 'Orsak'
      FieldName = 'StoppTidsNamn'
      Origin = 'StoppTidsNamn'
      Required = True
    end
    object cds_StoppTidStoppStartWithTime: TSQLTimeStampField
      DisplayLabel = 'Stoppstartade (med tid)'
      FieldName = 'StoppStartWithTime'
      Origin = 'StoppStartWithTime'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_StoppTidKvitterat: TIntegerField
      FieldName = 'Kvitterat'
      Origin = 'Kvitterat'
    end
    object cds_StoppTidStoppOrsakNr: TIntegerField
      FieldName = 'StoppOrsakNr'
      Origin = 'StoppOrsakNr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_StoppTidStoppSeconds: TFloatField
      DisplayLabel = 'Sek'
      FieldName = 'StoppSeconds'
      Origin = 'StoppSeconds'
      Required = True
    end
    object cds_StoppTidStoppMinutes: TFloatField
      DisplayLabel = 'Min'
      FieldName = 'StoppMinutes'
      Origin = 'StoppMinutes'
      Required = True
    end
    object cds_StoppTidStoppHours: TFloatField
      DisplayLabel = 'Tim'
      FieldName = 'StoppHours'
      Origin = 'StoppHours'
      Required = True
    end
    object cds_StoppTidDriftPlatsnr: TIntegerField
      FieldName = 'DriftPlatsnr'
      Origin = 'DriftPlatsnr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_StoppTidVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
    object cds_StoppTidNoOfStopps: TIntegerField
      DisplayLabel = 'Antal'
      FieldName = 'NoOfStopps'
      Origin = 'NoOfStopps'
      ReadOnly = True
      Required = True
    end
    object cds_StoppTidStoppStartNoTime: TSQLTimeStampField
      DisplayLabel = 'Stoppstartade'
      FieldName = 'StoppStartNoTime'
      Origin = 'StoppStartNoTime'
      ReadOnly = True
    end
    object cds_StoppTidProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cds_StoppTidKoNr: TIntegerField
      FieldName = 'KoNr'
      Origin = 'KoNr'
    end
    object cds_StoppTidProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
    end
    object cds_StoppTidSkift: TStringField
      FieldName = 'Skift'
      Origin = 'Skift'
      Size = 35
    end
  end
  object ds_StoppTid: TDataSource
    DataSet = cds_StoppTid
    Left = 920
    Top = 504
  end
  object cxPivotGridChartConnection1: TcxPivotGridChartConnection
    GridChartView = grdStoppTidChartView1
    PivotGrid = pvStoppTid
    Left = 776
    Top = 760
  end
  object cdsStandardHours: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DriftPlatsNr,'
      'Type,'
      'TypeValue,'
      'WorkHours,'
      'StartTime,'
      'EndTime,'
      'Note,'
      'CASE'
      'WHEN TypeValue = '#39'1'#39' THEN '#39'M'#229'ndag'#39
      'WHEN TypeValue = '#39'2'#39' THEN '#39'Tisdag'#39
      'WHEN TypeValue = '#39'3'#39' THEN '#39'Onsdag'#39
      'WHEN TypeValue = '#39'4'#39' THEN '#39'Torsdag'#39
      'WHEN TypeValue = '#39'5'#39' THEN '#39'Fredag'#39
      'WHEN TypeValue = '#39'6'#39' THEN '#39'L'#246'rdag'#39
      'WHEN TypeValue = '#39'7'#39' THEN '#39'S'#246'ndag'#39
      'ELSE'
      #39'HELGDAG'#39
      'END AS VeckoDag,'
      'CASE'
      'WHEN Type = 1 THEN '#39'Arbetsdag'#39
      'WHEN Type = 2 THEN '#39'Helgdag'#39
      'WHEN Type = 3 THEN '#39'Ledig'#39
      'WHEN Type = 4 THEN '#39'Rast'#39
      'WHEN Type = 5 THEN '#39'Undantag'#39
      'END AS TypAvDag,'
      'KindOfException'
      ''
      ''
      ''
      'FROM dbo.ProdCal where DriftPlatsNr = :DriftPlatsNr'
      'Order by Type, TypeValue')
    Left = 720
    Top = 566
    ParamData = <
      item
        Name = 'DRIFTPLATSNR'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cdsStandardHoursDriftPlatsNr: TIntegerField
      FieldName = 'DriftPlatsNr'
      Origin = 'DriftPlatsNr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsStandardHoursType: TIntegerField
      FieldName = 'Type'
      Origin = 'Type'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsStandardHoursTypeValue: TStringField
      FieldName = 'TypeValue'
      Origin = 'TypeValue'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cdsStandardHoursWorkHours: TIntegerField
      FieldName = 'WorkHours'
      Origin = 'WorkHours'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStandardHoursStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
      Origin = 'StartTime'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStandardHoursEndTime: TSQLTimeStampField
      FieldName = 'EndTime'
      Origin = 'EndTime'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStandardHoursNote: TStringField
      FieldName = 'Note'
      Origin = 'Note'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsStandardHoursVeckoDag: TStringField
      FieldName = 'VeckoDag'
      Origin = 'VeckoDag'
      ProviderFlags = []
      Size = 7
    end
    object cdsStandardHoursTypAvDag: TStringField
      FieldName = 'TypAvDag'
      Origin = 'TypAvDag'
      ProviderFlags = []
      Size = 9
    end
    object cdsStandardHoursKindOfException: TIntegerField
      FieldName = 'KindOfException'
      Origin = 'KindOfException'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_ProdUnits: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select distinct rp.RegPointName, rp.RegPointNo, pu.ProductionUni' +
        'tNo'
      'FROM dbo.ProductionUnit pu'
      
        'inner join dbo.RegistrationPoint rp on rp.RegPointNo = pu.Regist' +
        'rationPointNo'
      'WHERE pu.ClientNo = :VerkNo'
      'Order By rp.RegPointName')
    Left = 720
    Top = 504
    ParamData = <
      item
        Name = 'VERKNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProdUnitsRegPointName: TStringField
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      FixedChar = True
      Size = 30
    end
    object cds_ProdUnitsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      Required = True
    end
    object cds_ProdUnitsProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object frxReport1: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41110.332156331000000000
    ReportOptions.LastChange = 41246.498872997700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'function MinutesToDaysHoursMinutes(AMinutes: Integer): string;'
      'const'
      
        '  HOURSPERDAY = 8;    // wieviele Stunden hat der Tag? (Beispiel' +
        ' hier: 1 Arbeitstag)'
      'var'
      '  Days: Integer;'
      '  Hours: Integer;'
      '  Minutes: Integer;'
      'begin'
      '  if (AMinutes > 0) then'
      '  begin'
      '    Hours   := AMinutes div 60;'
      '    Minutes := AMinutes mod 60;'
      '    Days    := Hours div HOURSPERDAY;'
      '    Hours   := Hours mod HOURSPERDAY;'
      '  end'
      '  else'
      '  begin'
      '    Hours   := 0;'
      '    Minutes := 0;'
      '    Days    := 0;'
      '  end;'
      ''
      '  Result := Format('#39'%.2d:%.2d:%.2d'#39', [Days, Hours, Minutes]);'
      'end;  '
      ''
      ''
      ''
      ''
      'procedure Memo42OnAfterData(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo42OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 1112
    Top = 328
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 7.559060000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
      end
      object ReportSummary1: TfrxReportSummary
        Height = 30.236240000000000000
        Top = 517.795610000000000000
        Width = 1046.929810000000000000
        object Memo12: TfrxMemoView
          Left = 786.142240000000000000
          Top = 7.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."ProcentAvStoppTid">,MasterData1)]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 861.732840000000000000
          Top = 7.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."ProcentAvArbetsTid">,MasterData1)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 937.323440000000000000
          Top = 7.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."ProcentAvKalenderTid">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 241.889920000000000000
          Top = 7.559060000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."AntalKortaStopp">,MasterData1)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 457.323130000000000000
          Top = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."AntalLangaStopp">,MasterData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 612.283860000000000000
          Top = 7.559060000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."TotaltAntalStopp">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 1012.914040000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
        end
        object Memo45: TfrxMemoView
          Left = 665.197280000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo42OnAfterData'
          OnBeforePrint = 'Memo42OnBeforePrint'
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."TotaltStoppTimmar">,MasterData1)]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 514.016080000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo42OnAfterData'
          OnBeforePrint = 'Memo42OnBeforePrint'
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."LangaStoppTimmar">,MasterData1)]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 306.141930000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo42OnAfterData'
          OnBeforePrint = 'Memo42OnBeforePrint'
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."KortaStoppTimmar">,MasterData1)]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 139.842610000000000000
        Top = 49.133890000000000000
        Width = 1046.929810000000000000
        object frxDBDataset1ClientName: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ClientName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."ClientName"]')
          ParentFont = False
        end
        object frxDBDataset1RegPointName: TfrxMemoView
          Left = 11.338590000000000000
          Top = 45.354360000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RegPointName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."RegPointName"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 419.527830000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Driftstopp')
          ParentFont = False
        end
        object frxDBDataset1StartPeriod: TfrxMemoView
          Left = 117.165430000000000000
          Top = 68.031540000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."StartPeriod"]')
        end
        object Memo24: TfrxMemoView
          Left = 11.338590000000000000
          Top = 68.031540000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Starttid')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 11.338590000000000000
          Top = 90.708720000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Sluttid')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 117.165430000000000000
          Top = 90.708720000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."EndPeriod"]')
        end
        object Memo28: TfrxMemoView
          Left = 325.039580000000000000
          Top = 68.031540000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Arbetstid')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 325.039580000000000000
          Top = 90.708720000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Kalendertid')
          ParentFont = False
        end
        object frxDBDataset1Kalendertid: TfrxMemoView
          Left = 423.307360000000000000
          Top = 90.708720000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Kalendertid'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Kalendertid"]')
          ParentFont = False
        end
        object frxDBDataset1Arbetstid: TfrxMemoView
          Left = 423.307360000000000000
          Top = 68.031540000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Arbetstid'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Arbetstid"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 120.944960000000000000
          Width = 1012.914040000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
        end
        object Memo35: TfrxMemoView
          Left = 548.031850000000000000
          Top = 49.133890000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Korta stopp/total arbetstid:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 789.921770000000000000
          Top = 49.133890000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PercentKortaStoppAvArbetstid'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PercentKortaStoppAvArbetstid"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 548.031850000000000000
          Top = 71.811070000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'L'#229'nga stopp/total arbetstid:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 789.921770000000000000
          Top = 71.811070000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PercentLangaStoppAvArbetstid'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PercentLangaStoppAvArbetstid"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 548.031850000000000000
          Top = 94.488250000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'L'#229'nga&korta stopp/total arbetstid:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 789.921770000000000000
          Top = 94.488250000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PercentALLAStoppAvArbetstid'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PercentALLAStoppAvArbetstid"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 910.866730000000000000
          Top = 49.133890000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TotaltKortaStoppTimmar'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."TotaltKortaStoppTimmar"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 910.866730000000000000
          Top = 71.811070000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TotaltLangaStoppTimmar'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."TotaltLangaStoppTimmar"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 910.866730000000000000
          Top = 94.488250000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TotaltALLAStoppAvArbetstid'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."TotaltALLAStoppAvArbetstid"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 789.921770000000000000
          Top = 22.677180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '% stopp')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 910.866730000000000000
          Top = 22.677180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Timmar')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 551.811380000000000000
          Top = 3.779530000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Verkningsgrad %:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 786.142240000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Verkningsgrad'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Verkningsgrad"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 49.133890000000000000
        Top = 570.709030000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          Left = 884.410020000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object TotalPages: TfrxMemoView
          Left = 986.457330000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[TotalPages#]')
        end
        object Memo27: TfrxMemoView
          Left = 960.000620000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'av')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 857.953310000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 941.102970000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 789.921770000000000000
          Width = 238.110390000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 343.937230000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDataset1."HuvudOrsak"'
        object frxDBDataset1HuvudOrsak: TfrxMemoView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'HuvudOrsak'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."HuvudOrsak"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 434.645950000000000000
        Width = 1046.929810000000000000
        object Memo15: TfrxMemoView
          Left = 241.889920000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."AntalKortaStopp">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 457.323130000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."AntalLangaStopp">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 612.283860000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."TotaltAntalStopp">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 786.142240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."ProcentAvStoppTid">,MasterData1)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 861.732840000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."ProcentAvArbetsTid">,MasterData1)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 941.102970000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."ProcentAvKalenderTid">,MasterData1)]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 665.197280000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo42OnAfterData'
          OnBeforePrint = 'Memo42OnBeforePrint'
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."TotaltStoppTimmar">,MasterData1)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 514.016080000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."LangaStoppTimmar">,MasterData1)]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 306.141930000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."KortaStoppTimmar">,MasterData1)]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 389.291590000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1StoppTidsNamn: TfrxMemoView
          Left = 41.574830000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'StoppTidsNamn'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."StoppTidsNamn"]')
        end
        object frxDBDataset1ProcentAvKalenderTid: TfrxMemoView
          Left = 941.102970000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ProcentAvKalenderTid'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ProcentAvKalenderTid"]')
          ParentFont = False
        end
        object frxDBDataset1ProcentAvArbetsTid: TfrxMemoView
          Left = 861.732840000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ProcentAvArbetsTid'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ProcentAvArbetsTid"]')
          ParentFont = False
        end
        object frxDBDataset1ProcentAvStoppTid: TfrxMemoView
          Left = 786.142240000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ProcentAvStoppTid'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ProcentAvStoppTid"]')
          ParentFont = False
        end
        object frxDBDataset1TotaltAntalStopp: TfrxMemoView
          Left = 612.283860000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TotaltAntalStopp'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."TotaltAntalStopp"]')
          ParentFont = False
        end
        object frxDBDataset1TotaltTidStoppHourMin: TfrxMemoView
          Left = 665.197280000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TotaltTidStoppHourMin'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."TotaltTidStoppHourMin"]')
          ParentFont = False
        end
        object frxDBDataset1AntalLangaStopp: TfrxMemoView
          Left = 457.323130000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'AntalLangaStopp'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."AntalLangaStopp"]')
          ParentFont = False
        end
        object frxDBDataset1TidLangaStoppHourMin: TfrxMemoView
          Left = 514.016080000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TidLangaStoppHourMin'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."TidLangaStoppHourMin"]')
          ParentFont = False
        end
        object frxDBDataset1TidKortaStopp: TfrxMemoView
          Left = 241.889920000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'AntalKortaStopp'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."AntalKortaStopp"]')
          ParentFont = False
        end
        object frxDBDataset1TidKortaStoppHourMin: TfrxMemoView
          Left = 306.141930000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TidKortaStoppHourMin'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."TidKortaStoppHourMin"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 71.811070000000000000
        Top = 249.448980000000000000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Memo2: TfrxMemoView
          Left = 18.897650000000000000
          Top = 45.354360000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Driftstopporsaker')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 238.110390000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Korta stopp')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 457.323130000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'L'#229'nga')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 612.283860000000000000
          Top = 41.574830000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Antal     Tid tt:mm:ss')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 238.110390000000000000
          Top = 45.354360000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Antal     Tid tt:mm:ss')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 457.323130000000000000
          Top = 41.574830000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Antal     Tid tt:mm:ss')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 612.283860000000000000
          Top = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Korta stopp + L'#229'nga')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 797.480830000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '% av alla '
            'stopp')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 873.071430000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '% av '
            'arbetstid')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 948.662030000000000000
          Top = 22.677180000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '% av '
            'kalendertid')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 11.338590000000000000
          Top = 68.031540000000000000
          Width = 1012.914040000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object frxDBDataset1LargeStop: TfrxMemoView
          Left = 260.787570000000000000
          Top = 22.677180000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[frxDBDataset1."LargeStop"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 238.110390000000000000
          Top = 22.677180000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '<=')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 291.023810000000000000
          Top = 22.677180000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            'minuter')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 468.661720000000000000
          Top = 22.677180000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[frxDBDataset1."LargeStop"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 457.323130000000000000
          Top = 22.677180000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '>')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 498.897960000000000000
          Top = 22.677180000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            'minuter')
          ParentFont = False
        end
      end
    end
  end
  object sp_StoppTid01: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_StoppTidReport01'
    Left = 1112
    Top = 400
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
        Name = '@TotalArbetstidHours'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
        Value = 17.000000000000000000
      end
      item
        Position = 3
        Name = '@StartPeriod'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = 41456d
      end
      item
        Position = 4
        Name = '@EndPeriod'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = 41456.9999884259d
      end
      item
        Position = 5
        Name = '@DriftPlatsnr'
        DataType = ftInteger
        ParamType = ptInput
        Value = 10275
      end>
    object sp_StoppTid01Arbetstid: TStringField
      FieldName = 'Arbetstid'
      Origin = 'Arbetstid'
      ReadOnly = True
      Size = 8000
    end
    object sp_StoppTid01TotalArbetstidHours: TFloatField
      FieldName = 'TotalArbetstidHours'
      Origin = 'TotalArbetstidHours'
      ReadOnly = True
    end
    object sp_StoppTid01Kalendertid: TStringField
      FieldName = 'Kalendertid'
      Origin = 'Kalendertid'
      ReadOnly = True
      Size = 8000
    end
    object sp_StoppTid01TotalTimeHours: TFloatField
      FieldName = 'TotalTimeHours'
      Origin = 'TotalTimeHours'
      ReadOnly = True
    end
    object sp_StoppTid01LargeStop: TIntegerField
      FieldName = 'LargeStop'
      Origin = 'LargeStop'
      ReadOnly = True
    end
    object sp_StoppTid01ClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object sp_StoppTid01RegPointName: TStringField
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      FixedChar = True
      Size = 30
    end
    object sp_StoppTid01StoppOrsakNr: TIntegerField
      FieldName = 'StoppOrsakNr'
      Origin = 'StoppOrsakNr'
      Required = True
    end
    object sp_StoppTid01StoppTidsNamn: TStringField
      FieldName = 'StoppTidsNamn'
      Origin = 'StoppTidsNamn'
    end
    object sp_StoppTid01GroupNo: TIntegerField
      FieldName = 'GroupNo'
      Origin = 'GroupNo'
    end
    object sp_StoppTid01StartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
      ReadOnly = True
    end
    object sp_StoppTid01EndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
      ReadOnly = True
    end
    object sp_StoppTid01HuvudOrsak: TStringField
      FieldName = 'HuvudOrsak'
      Origin = 'HuvudOrsak'
      ReadOnly = True
    end
    object sp_StoppTid01AntalKortaStopp: TIntegerField
      FieldName = 'AntalKortaStopp'
      Origin = 'AntalKortaStopp'
      ReadOnly = True
    end
    object sp_StoppTid01TidKortaStopp: TFloatField
      FieldName = 'TidKortaStopp'
      Origin = 'TidKortaStopp'
      ReadOnly = True
      Required = True
    end
    object sp_StoppTid01TidKortaStoppHourMin: TStringField
      FieldName = 'TidKortaStoppHourMin'
      Origin = 'TidKortaStoppHourMin'
      ReadOnly = True
      Size = 8000
    end
    object sp_StoppTid01AntalLangaStopp: TIntegerField
      FieldName = 'AntalLangaStopp'
      Origin = 'AntalLangaStopp'
      ReadOnly = True
    end
    object sp_StoppTid01TidLangaStopp: TFloatField
      FieldName = 'TidLangaStopp'
      Origin = 'TidLangaStopp'
      ReadOnly = True
    end
    object sp_StoppTid01TidLangaStoppHourMin: TStringField
      FieldName = 'TidLangaStoppHourMin'
      Origin = 'TidLangaStoppHourMin'
      ReadOnly = True
      Size = 8000
    end
    object sp_StoppTid01TotaltAntalStopp: TIntegerField
      FieldName = 'TotaltAntalStopp'
      Origin = 'TotaltAntalStopp'
      ReadOnly = True
    end
    object sp_StoppTid01TotaltTidStoppHourMin: TStringField
      FieldName = 'TotaltTidStoppHourMin'
      Origin = 'TotaltTidStoppHourMin'
      ReadOnly = True
      Size = 8000
    end
    object sp_StoppTid01TotaltTidStopp: TIntegerField
      FieldName = 'TotaltTidStopp'
      Origin = 'TotaltTidStopp'
      ReadOnly = True
    end
    object sp_StoppTid01ProcentAvArbetsTid: TFloatField
      FieldName = 'ProcentAvArbetsTid'
      Origin = 'ProcentAvArbetsTid'
      ReadOnly = True
    end
    object sp_StoppTid01ProcentAvKalenderTid: TFloatField
      FieldName = 'ProcentAvKalenderTid'
      Origin = 'ProcentAvKalenderTid'
      ReadOnly = True
    end
    object sp_StoppTid01ProcentAvStoppTid: TFloatField
      FieldName = 'ProcentAvStoppTid'
      Origin = 'ProcentAvStoppTid'
      ReadOnly = True
    end
    object sp_StoppTid01PercentKortaStoppAvArbetstid: TFloatField
      FieldName = 'PercentKortaStoppAvArbetstid'
      Origin = 'PercentKortaStoppAvArbetstid'
      ReadOnly = True
      DisplayFormat = '#.00'
    end
    object sp_StoppTid01PercentLangaStoppAvArbetstid: TFloatField
      FieldName = 'PercentLangaStoppAvArbetstid'
      Origin = 'PercentLangaStoppAvArbetstid'
      ReadOnly = True
      DisplayFormat = '#.00'
    end
    object sp_StoppTid01PercentALLAStoppAvArbetstid: TFloatField
      FieldName = 'PercentALLAStoppAvArbetstid'
      Origin = 'PercentALLAStoppAvArbetstid'
      ReadOnly = True
      DisplayFormat = '#.00'
    end
    object sp_StoppTid01TotaltKortaStoppTimmar: TFloatField
      FieldName = 'TotaltKortaStoppTimmar'
      Origin = 'TotaltKortaStoppTimmar'
      ReadOnly = True
      Required = True
      DisplayFormat = '#.00'
    end
    object sp_StoppTid01TotaltLangaStoppTimmar: TFloatField
      FieldName = 'TotaltLangaStoppTimmar'
      Origin = 'TotaltLangaStoppTimmar'
      ReadOnly = True
      DisplayFormat = '#.00'
    end
    object sp_StoppTid01KortaStoppTimmar: TFloatField
      FieldName = 'KortaStoppTimmar'
      Origin = 'KortaStoppTimmar'
      ReadOnly = True
      DisplayFormat = '#.00'
    end
    object sp_StoppTid01LangaStoppTimmar: TFloatField
      FieldName = 'LangaStoppTimmar'
      Origin = 'LangaStoppTimmar'
      ReadOnly = True
      DisplayFormat = '#.00'
    end
    object sp_StoppTid01TotaltStoppTimmar: TFloatField
      FieldName = 'TotaltStoppTimmar'
      Origin = 'TotaltStoppTimmar'
      ReadOnly = True
      DisplayFormat = '#.00'
    end
    object sp_StoppTid01Verkningsgrad: TFloatField
      FieldName = 'Verkningsgrad'
      Origin = 'Verkningsgrad'
      ReadOnly = True
      DisplayFormat = '##.00'
    end
    object sp_StoppTid01TotaltALLAStoppAvArbetstid: TFloatField
      FieldName = 'TotaltALLAStoppAvArbetstid'
      Origin = 'TotaltALLAStoppAvArbetstid'
      ReadOnly = True
      DisplayFormat = '#.00'
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Arbetstid=Arbetstid'
      'TotalArbetstidHours=TotalArbetstidHours'
      'Kalendertid=Kalendertid'
      'TotalTimeHours=TotalTimeHours'
      'LargeStop=LargeStop'
      'ClientName=ClientName'
      'RegPointName=RegPointName'
      'StoppOrsakNr=StoppOrsakNr'
      'StoppTidsNamn=StoppTidsNamn'
      'GroupNo=GroupNo'
      'StartPeriod=StartPeriod'
      'EndPeriod=EndPeriod'
      'HuvudOrsak=HuvudOrsak'
      'AntalKortaStopp=AntalKortaStopp'
      'TidKortaStopp=TidKortaStopp'
      'TidKortaStoppHourMin=TidKortaStoppHourMin'
      'AntalLangaStopp=AntalLangaStopp'
      'TidLangaStopp=TidLangaStopp'
      'TidLangaStoppHourMin=TidLangaStoppHourMin'
      'TotaltAntalStopp=TotaltAntalStopp'
      'TotaltTidStoppHourMin=TotaltTidStoppHourMin'
      'TotaltTidStopp=TotaltTidStopp'
      'ProcentAvArbetsTid=ProcentAvArbetsTid'
      'ProcentAvKalenderTid=ProcentAvKalenderTid'
      'ProcentAvStoppTid=ProcentAvStoppTid'
      'PercentKortaStoppAvArbetstid=PercentKortaStoppAvArbetstid'
      'PercentLangaStoppAvArbetstid=PercentLangaStoppAvArbetstid'
      'PercentALLAStoppAvArbetstid=PercentALLAStoppAvArbetstid'
      'TotaltKortaStoppTimmar=TotaltKortaStoppTimmar'
      'TotaltLangaStoppTimmar=TotaltLangaStoppTimmar'
      'KortaStoppTimmar=KortaStoppTimmar'
      'LangaStoppTimmar=LangaStoppTimmar'
      'TotaltStoppTimmar=TotaltStoppTimmar'
      'Verkningsgrad=Verkningsgrad'
      'TotaltALLAStoppAvArbetstid=TotaltALLAStoppAvArbetstid')
    DataSet = sp_StoppTid01
    BCDToCurrency = False
    Left = 1112
    Top = 464
  end
  object cds_StoppSetup: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.StoppSetup'
      'WHERE VerkNo = :VerkNo')
    Left = 608
    Top = 304
    ParamData = <
      item
        Name = 'VERKNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_StoppSetup: TDataSource
    DataSet = cds_StoppSetup
    Left = 608
    Top = 357
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 'C:\Users\Lars\Documents\stopps.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 41246.643339837960000000
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    CheckboxAsShape = False
    Left = 1112
    Top = 528
  end
  object siLangLinked_fAnalyseraLeveranser: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    UseDefaultLanguage = True
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    DoNotTranslate.Strings = (
      '!TfrxPDFExport'
      '!TfrxReport'
      'frxDBDataset1')
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
    Left = 608
    Top = 408
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660041006E0061006C00790073006500720061004C00
      650076006500720061006E007300650072000100660041006E0061006C007900
      73006500720061004C00650076006500720061006E0073006500720001000100
      01000D000A00630078004C006100620065006C00310001005000650072006900
      6F0064003A000100010001000D000A00630078004C006100620065006C003200
      010074006F006D000100010001000D000A00630078004C006100620065006C00
      330001005600650072006B003A000100010001000D000A00620054006F006400
      61007900010069006400610067002000460032000100010001000D000A006200
      590065007300740065007200640061007900010069006700E500720020004600
      33000100010001000D000A00630078004C006100620065006C004F0070006500
      72006100740069006F006E0001004F007000650072006100740069006F006E00
      3A000100010001000D000A0074007300440065006C0069007600650072006900
      6500730001004C00450056004500520041004E00530053005400410054000100
      010001000D000A006600500072006F00640075006B0074000100500072006F00
      640075006B0074000100010001000D000A0066004C006E006700640001004C00
      E4006E00670064000100010001000D000A00660041004D003300010041004D00
      33000100010001000D000A0066004E004D00330001004E004D00330001000100
      01000D000A006600560072006400650001005600E40072006400650001000100
      01000D000A0066004D005F00500072006900730001004D002D00500072006900
      73000100010001000D000A00660059006500610072000100C500720001000100
      01000D000A006600510075006100720074006500720001004B00760061007200
      740061006C000100010001000D000A0066004D006F006E007400680001004D00
      E5006E00610064000100010001000D000A0066005700650065006B0001005600
      650063006B0061000100010001000D000A0066004D00610072006B006E006100
      640001004D00610072006B006E00610064000100010001000D000A0066004C00
      6F00610064004E006F0001004C006100730074006E0072000100010001000D00
      0A006600410054000100410054000100010001000D000A006600410042000100
      410042000100010001000D000A00660054005300010054005300010001000100
      0D000A006600550054000100550054000100010001000D000A0066004B005600
      01004B0056000100010001000D000A00660049004D005000010049004D005000
      0100010001000D000A00660043007500730074006F006D006500720001004300
      7500730074006F006D00650072000100010001000D000A006600530075007000
      70006C00690065007200010053007500700070006C0069006500720001000100
      01000D000A0066004600720061006B0074006600720061007200650001004600
      720061006B0074006600F60072006100720065000100010001000D000A006600
      4C0061006700650072004700720075007000700001004C006100670065007200
      470072007500700070000100010001000D000A00660053006900740075006100
      740069006F006E00010053006900740075006100740069006F006E0001000100
      01000D000A007000690076004C00650076006500720061006E00730065007200
      540072006100640069006E0067000100540072006100640069006E0067000100
      010001000D000A007000690076004C00650076006500720061006E0073006500
      72004C004F0001004C004F000100010001000D000A007000690076004C006500
      76006500720061006E0073006500720050007200690063006500450078006900
      7300740001005000720069006300650045007800690073007400010001000100
      0D000A007000690076004C00650076006500720061006E007300650072005500
      74006C00610073007400610064000100550074006C0061007300740061006400
      0100010001000D000A007000690076004C00650076006500720061006E007300
      6500720043006C00690065006E0074004E0061006D0065000100450078007400
      650072006E0020006B006C00690065006E0074000100010001000D000A007000
      6900760056006100720075006700720075007000700001005600610072007500
      670072007500700070000100010001000D000A007000690076004C0065007600
      6500720061006E007300650072004C006100730074007300740061006C006C00
      650001004C0061007300740073007400E4006C006C0065000100010001000D00
      0A007000690076004C00650076006500720061006E0073006500720044006500
      7300740069006E006100740069006F006E000100440065007300740069006E00
      6100740069006F006E000100010001000D000A007000690076004C0065007600
      6500720061006E0073006500720049006E0074005F0044006500730074006900
      6E006100740069006F006E00010049006E0074005F0044006500730074006900
      6E006100740069006F006E000100010001000D000A007000690076004C006500
      76006500720061006E007300650072004500780074005F004400650073007400
      69006E006100740069006F006E0001004500780074005F004400650073007400
      69006E006100740069006F006E000100010001000D000A007000690076004C00
      650076006500720061006E007300650072004F0072006400650072004E006F00
      540065007800740001004B006F006E007400720061006B007400010001000100
      0D000A007000690076004C00650076006500720061006E007300650072005500
      7400660061006C006C00010055007400660061006C006C002500010001000100
      0D000A007000690076004C00650076006500720061006E007300650072005000
      69006500630065007300010053007400790063006B000100010001000D000A00
      6C00620053006F007200740042007900010053006F0072007400650072006100
      20007000650072000100010001000D000A006C006200530068006F0077005400
      6F00700001005600690073006100200074006F00700070000100010001000D00
      0A006C006200560061006C0075006500730001007600E4007200640065006E00
      0100010001000D000A0063006200780054006F007000560061006C0075006500
      7300530068006F0077004F007400680065007200730001005600690073006100
      2000F600760072006900670061000100010001000D000A006300780043006800
      650063006B0042006F0078003200010056006900730061002000670072006100
      6E00640074006F00740061006C000100010001000D000A006300780043006800
      650063006B0042006F0078003300010056006900730061002000720061006400
      74006F00740061006C000100010001000D000A0063006200450078006B006C00
      450067006E0061004C00650076006500720061006E0073006500720001004500
      78006B006C00750064006500720061002000650067006E00610020006C006500
      76006500720061006E007300650072000100010001000D000A00740073005000
      72006F00640075006300740069006F006E000100500052004F00440055004B00
      540049004F004E0053005400410054000100010001000D000A0066004D007400
      700075006E006B00740001004D00E4007400700075006E006B00740001000100
      01000D000A0066005600650072006B0001005600650072006B00010001000100
      0D000A006600500072006F00640041004D003300010041004D00330001000100
      01000D000A006600700072006F0064004E004D00330001004E004D0033000100
      010001000D000A006600500072006F00640050004B005400010050004B005400
      0100010001000D000A0066005600650063006B006F0044006100670001004400
      610067000100010001000D000A006600500072006F0064005300540059004300
      4B00010053005400590043004B000100010001000D000A006600500072006F00
      64004C0050004D0001004C0050004D000100010001000D000A00700069007600
      500072006F00640075006300740069006F006E005F0041004200010041004200
      0100010001000D000A00700069007600500072006F0064007500630074006900
      6F006E005F0041004C004D004D00010041004C004D004D000100010001000D00
      0A00700069007600500072006F00640075006300740069006F006E005F004100
      54000100410054000100010001000D000A00700069007600500072006F006400
      75006300740069006F006E005F0049004D005000010049004D00500001000100
      01000D000A00700069007600500072006F00640075006300740069006F006E00
      5F004B00560001004B0056000100010001000D000A0070006900760050007200
      6F00640075006300740069006F006E005F004E004C004D004D0001004E004C00
      4D004D000100010001000D000A00700069007600500072006F00640075006300
      740069006F006E005F00500061006B00650074006E0072000100500061006B00
      650074006E0072000100010001000D000A00700069007600500072006F006400
      75006300740069006F006E005F00500072006500660069007800010050007200
      65006600690078000100010001000D000A00700069007600500072006F006400
      75006300740069006F006E005F00500072006F00640075006B00740001005000
      72006F00640075006B0074000100010001000D000A0070006900760050007200
      6F00640075006300740069006F006E005F005400530001005400530001000100
      01000D000A00700069007600500072006F00640075006300740069006F006E00
      5F00550054000100550054000100010001000D000A0070006900760050007200
      6F00640075006300740069006F006E005700650065006B000100560065006300
      6B0061000100010001000D000A00700069007600500072006F00640075006300
      740069006F006E004D006F006E007400680001004D00E5006E00610064000100
      010001000D000A00700069007600500072006F00640075006300740069006F00
      6E00510075006100720074006500720001004B00760061007200740061006C00
      0100010001000D000A00700069007600500072006F0064007500630074006900
      6F006E0059006500610072000100C50072000100010001000D000A0070006900
      7600500072006F00640075006300740069006F006E0044006100740075006D00
      010044006100740075006D000100010001000D000A0070006900760050007200
      6F00640075006300740069006F006E004F007000650072006100740069006F00
      6E0001004F007000650072006100740069006F006E000100010001000D000A00
      700069007600500072006F00640075006300740069006F006E004F0072007400
      01004F00720074000100010001000D000A00700069007600500072006F006400
      75006300740069006F006E0055007400660061006C006C000100550074006600
      61006C006C0025000100010001000D000A007000690076005600610072007500
      670072007500700070004E0061006D006E000100560061007200750067007200
      7500700070000100010001000D000A007000690076004100760067004C006500
      6E0067007400680001004D006500640065006C006C00E4006E00670064000100
      010001000D000A0070006900760053006B006900660074006C00610067000100
      53006B006900660074006C00610067000100010001000D000A00700069007600
      4B006F006F0072006400650072004900440001004B00F60072006F0072006400
      650072006E0072000100010001000D000A0070006900760053006F0072007400
      69006E0067004F00720064006500720052006F0077004E006F0001004B00F600
      72006F0072006400650072007200610064006E0072000100010001000D000A00
      7000690076005200650066006500720065006E00730001005200650066006500
      720065006E0073000100010001000D000A007000690076004C004F0001004C00
      4F000100010001000D000A007000690076004B0075006E00640001004B007500
      6E0064000100010001000D000A00630078004C006100620065006C0035000100
      4D00E4007400700075006E006B0074003A000100010001000D000A0042007500
      740074006F006E003200010053006B0072006900760020007500740020007400
      6500730074000100010001000D000A0063006200550073006500500072006F00
      6400530075006D00010049006E006B006C007500640065007200610020007000
      61006B00650074006E0072000100010001000D000A006300620054006F007400
      61006C0073000100560069007300610020006700720061006E00640074006F00
      740061006C000100010001000D000A006300780043006800650063006B004200
      6F007800310001005600690073006100200072006100640074006F0074006100
      6C000100010001000D000A00630062004E006500610072004F00720046006100
      7200530075006D00010050006C00610063006500720069006E00670020007300
      75006D006D0061000100010001000D000A007400730054006F0072006B007300
      61007400730065007200010054004F0052004B00530054004100540001000100
      01000D000A00630078004C006100620065006C003600010054006F0072006B00
      7300610074007300650072002000660069006C00740072006500720061007300
      20007000E500200073006C007500740074006900640065006E00010001000100
      0D000A006300780042007500740074006F006E00320034000100540061002000
      62006F007200740020006D0061006C006C000100010001000D000A0063007800
      4C006100620065006C003700010065006C006C0065007200200062006F006300
      6B006100200069002000220056006900730061002000690074006F0072006B00
      22000100010001000D000A00630062005600690073006100490074006F007200
      6B00010056006900730061002000690074006F0072006B000100010001000D00
      0A0063006200530068006F00770052006F00770054006F00740061006C007300
      4B0069006C006E0001005600690073006100200072006100640074006F007400
      61006C000100010001000D000A007000690076004B00440041004D0033000100
      41004D0033000100010001000D000A007000690076004B004400560065007200
      6B0001005600650072006B000100010001000D000A007000690076004B004400
      4B0069006C006E004E0061006D00650001004B0069006C006E004E0061006D00
      65000100010001000D000A007000690076004B0044004B0061006C006B007900
      6C00650072006100640054006900640001004B0061006C006B0079006C006500
      7200610064005400690064000100010001000D000A007000690076004B004400
      59006500610072000100C50072000100010001000D000A007000690076004B00
      44004B00760061007200740061006C0001004B00760061007200740061006C00
      0100010001000D000A007000690076004B0044005700650065006B0001005600
      650063006B0061000100010001000D000A007000690076004B00440050006C00
      61006E006500720061006400540069006400010050006C0061006E0065007200
      610064005400690064000100010001000D000A007000690076004B0044004D00
      6F006E007400680001004D00E5006E00610064000100010001000D000A007000
      690076004B004400410054000100410054000100010001000D000A0070006900
      76004B004400410042000100410042000100010001000D000A00700069007600
      4B004400540053000100540053000100010001000D000A007000690076004B00
      44004B00560001004B0056000100010001000D000A007000690076004B004400
      550054000100550054000100010001000D000A007000690076004B0044004900
      4D005000010049004D0050000100010001000D000A007000690076004B004400
      440049004D005F00470072006100640065000100440069006D002F004B007600
      61006C000100010001000D000A007000690076004B004400440049004D005F00
      470072006100640065005F004C0065006E006700740068000100440069006D00
      2F004B00760061006C002F004C00E4006E00670064000100010001000D000A00
      7000690076004B00440041004C004D004D0001004C00E4006E00670064002000
      280041004C004D004D0029000100010001000D000A007000690076004B004400
      440049004D005F00470072006100640065005F004C0065006E00670074006800
      5F00540053000100440069006D002F004B00760061006C002F004C00E4006E00
      670064002F00540053000100010001000D000A007000690076004B0044004900
      6E004400610074006500010049006E00200044006100740075006D0020002B00
      20005400690064000100010001000D000A007000690076004B0044004E006F00
      4F00660050006B00670073000100500061006B00650074000100010001000D00
      0A007000690076004B00440044006100740065004F006E006C00790001004900
      6E00200044006100740075006D000100010001000D000A00740073004F007600
      6500720076006900650077000100D600560045005200530049004B0054002000
      5600450052004B000100010001000D000A00740073004B006100700053007400
      6100740001004B004100500053005400410054000100010001000D000A004C00
      6100620065006C003200010041006B0074002E00620072006500640064003A00
      0100010001000D000A004C006100620065006C003100010041006B0074002E00
      74006A006F0063006B006C0065006B003A000100010001000D000A0063007800
      440042005000690076006F0074004700720069006400310054004F004E007200
      01004B00F60072006F0072006400650072000100010001000D000A0063007800
      440042005000690076006F007400470072006900640031005200610076006100
      720075005F00500072006F00640075006B00740001005200E500760061007200
      7500700072006F00640075006B0074000100010001000D000A00630078004400
      42005000690076006F0074004700720069006400310052006100760061007200
      75005F004C0061006E006700640001005200E50076006100720075006C00E400
      6E00670064000100010001000D000A0063007800440042005000690076006F00
      740047007200690064003100480046005F00500072006F00640075006B007400
      0100480046005F00500072006F00640075006B0074000100010001000D000A00
      63007800440042005000690076006F0074004700720069006400310048004600
      5F004C0061006E006700640001004800460020004C00E4006E00670064000100
      010001000D000A0063007800440042005000690076006F007400470072006900
      640031005000610052006500670041004D00330001005000E500720065006700
      200041004D0033000100010001000D000A006300780044004200500069007600
      6F007400470072006900640031004100760052006500670041004D0033000100
      41007600720065006700200041004D0033000100010001000D000A0063007800
      440042005000690076006F007400470072006900640031005500740062007900
      740065000100550074006200790074006500200041004D003300010001000100
      0D000A0063007800440042005000690076006F00740047007200690064003100
      500072006F0064007500630065007200610074000100500072006F0064002E00
      64006100740075006D000100010001000D000A00630078004400420050006900
      76006F0074004700720069006400310059006500610072000100C50072000100
      010001000D000A0063007800440042005000690076006F007400470072006900
      640031004B00760061007200740061006C0001004B0076006100720074006100
      6C000100010001000D000A0063007800440042005000690076006F0074004700
      72006900640031004D006F006E007400680001004D00E5006E00610064000100
      010001000D000A0063007800440042005000690076006F007400470072006900
      640031005700650065006B0001005600650063006B0061000100010001000D00
      0A00700076004B006100700053007400610074005300700069006C006C004100
      4D00330001005300700069006C006C00200041004D0033000100010001000D00
      0A00700076004B006100700053007400610074005300700069006C006C004E00
      4D00330001005300700069006C006C0020004E004D0033000100010001000D00
      0A00700076004B00610070005300740061007400500061005200650067004E00
      4D00330001005000E50072006500670020004E004D0033000100010001000D00
      0A00700076004B00610070005300740061007400550074006200790074006500
      4E004D003300010055007400620079007400650020004E004D00330001000100
      01000D000A00700076004B006100700053007400610074004100760052006500
      67004E004D00330001004100760072006500670020004E004D00330001000100
      01000D000A00700076004B00610070005300740061007400500072006F006400
      5000630073000100500072006F0064002E0073007400790063006B0001000100
      01000D000A00700076004B0061007000530074006100740050006C0061006E00
      6E0065006400700063007300010050006C0061006E002E007300740079006300
      6B000100010001000D000A00700076004B006100700053007400610074004400
      6900660066005000630073000100440069006600660020007300740079006300
      6B000100010001000D000A00700076004B006100700053007400610074006700
      6100720065000100C400670061007200650020007200E5007600610072006100
      0100010001000D000A00700076004B0061007000530074006100740041005400
      0100410054000100010001000D000A00700076004B0061007000530074006100
      7400410042000100410042000100010001000D000A00700076004B0061007000
      5300740061007400500072006F00640075006B00740050007200650066006900
      78000100500072006F00640075006B0074005000720065006600690078000100
      010001000D000A00700076004B00610070005300740061007400500072006F00
      64007500630065006E0074000100500072006F0064007500630065006E007400
      0100010001000D000A00700076004B006100700053007400610074004F007200
      740001004F00720074000100010001000D000A00700076004B00610070005300
      74006100740055007400620079007400650041004D0031000100550074006200
      790074006500200041004D0031000100010001000D000A00700076004B006100
      700053007400610074005000610052006500670041004D00310001005000E500
      720065006700200041004D0031000100010001000D000A00700076004B006100
      700053007400610074004100760052006500670041004D003100010041007600
      720065006700200041004D0031000100010001000D000A007400730053007400
      6F00700070005400690064000100530054004F00500050005400490044005300
      5400410054000100010001000D000A004C006100620065006C00330001005300
      6F007200740065007200610020007000650072000100010001000D000A006300
      6200530074006F007000700054006900640054006F00740061006C0073000100
      560069007300610020006700720061006E00640074006F00740061006C000100
      010001000D000A0063006200530074006F007000700054006900640052006F00
      770054006F00740061006C000100560069007300610020007200610064007400
      6F00740061006C000100010001000D000A00630078004C006100620065006C00
      340001004D00E4007400700075006E006B0074003A000100010001000D000A00
      70007600530074006F007000700054006900640052006500670050006F006900
      6E0074004E0061006D00650001004D00E4007400700075006E006B0074000100
      010001000D000A0070007600530074006F007000700054006900640053007400
      6F007000700054006900640073004E0061006D006E0001004F00720073006100
      6B000100010001000D000A0070007600530074006F0070007000540069006400
      530074006F0070007000530074006100720074004E006F00540069006D006500
      0100530074006F00700070007300740061007200740061006400650001000100
      01000D000A0070007600530074006F0070007000540069006400530074006F00
      70007000530074006100720074005700690074006800540069006D0065000100
      530074006F007000700073007400610072007400610064006500200028006D00
      65006400200074006900640029000100010001000D000A007000760053007400
      6F00700070005400690064004B00760069007400740065007200610074000100
      4B00760069007400740065007200610074000100010001000D000A0070007600
      530074006F0070007000540069006400530074006F00700070004F0072007300
      61006B004E0072000100530074006F00700070004F007200730061006B004E00
      72000100010001000D000A0070007600530074006F0070007000540069006400
      530074006F00700070005300650063006F006E00640073000100530065006B00
      0100010001000D000A0070007600530074006F00700070005400690064005300
      74006F00700070004D0069006E00750074006500730001004D0069006E000100
      010001000D000A0070007600530074006F007000700054006900640053007400
      6F007000700048006F007500720073000100540069006D000100010001000D00
      0A0070007600530074006F007000700054006900640044007200690066007400
      50006C006100740073006E00720001004400720069006600740050006C006100
      740073006E0072000100010001000D000A0070007600530074006F0070007000
      5400690064005600650072006B004E006F0001005600650072006B004E006F00
      0100010001000D000A0070007600530074006F00700070005400690064004E00
      6F004F006600530074006F00700070007300010041006E00740061006C000100
      010001000D000A0070007600530074006F007000700054006900640055007400
      660061006C006C00540069006400010055007400660061006C006C0020002500
      20006100760020007400690064000100010001000D000A007000760053007400
      6F007000700054006900640055007400660061006C006C0041006E0074006100
      6C00530074006F0070007000010055007400660061006C006C00200025002000
      61007600200061006E00740061006C000100010001000D000A00700076005300
      74006F007000700054006900640059006500610072000100C500720001000100
      01000D000A0070007600530074006F0070007000540069006400510075006100
      720074006500720001004B00760061007200740061006C000100010001000D00
      0A0070007600530074006F00700070005400690064004D006F006E0074006800
      01004D00E5006E00610064000100010001000D000A0070007600530074006F00
      700070005400690064005600650063006B00610001005600650063006B006100
      0100010001000D000A0070007600530074006F00700070005400690064005000
      72006F00640075006B0074000100500072006F00640075006B00740001000100
      01000D000A0070007600530074006F00700070005400690064004B006F004E00
      720001004B00F60072004E0072000100010001000D000A007000760053007400
      6F007000700054006900640053006B00690066007400010053006B0069006600
      74000100010001000D000A006100630052006500660072006500730068000100
      5500700070006400610074006500720061002000460036000100010001000D00
      0A006100630043006C006F0073006500010053007400E4006E00670020004600
      310032000100010001000D000A00610063004500780070006F00720074000100
      4500780070006F00720074006500720061000100010001000D000A0061006300
      530065006E00640045006D00610069006C00010045006D00610069006C006100
      2000760061006C00740020007600650072006B000100010001000D000A006100
      63004500780070006F007200740054006F0058004C0053000100450078007000
      6F007200740061002000740069006C006C00200058004C005300200046003100
      30000100010001000D000A00610063005000720069006E007400010053006B00
      7200690076002000750074002000460038000100010001000D000A0061006300
      530065006E00640054006F0041006C006C004D0069006C006C00730001004500
      6D00610069006C006100200061006C006C00610020007600650072006B007300
      200064006100740061000100010001000D000A006100630053006F0072007400
      42007900440061007400610001006100630053006F0072007400420079004400
      6100740061000100010001000D000A0061006300530061007600650047007200
      69006400530065007400740069006E0067007300010053007000610072006100
      200074006100620065006C006C0069006E0073007400E4006C006C006E006900
      6E006700610072002E000100010001000D000A00610063005000720069006E00
      7400500072006F0064004400690061006700720061006D00010053006B007200
      690076002000750074002000700072006F00640075006B00740069006F006E00
      73006400690061006700720061006D000100010001000D000A00610063004100
      63007400750061006C0044006100790001004900640061006700010001000100
      0D000A00610063004C00610073007400440061007900010049006700E5007200
      0100010001000D000A0061006300410063007400750061006C00570065006500
      6B00010041006B007400750065006C006C0020007600650063006B0061000100
      010001000D000A006100630054006F0064006100790001004900200064006100
      67002000460032000100010001000D000A006100630059006500730074006500
      72006400610079000100490020006700E5007200200046003300010001000100
      0D000A00610063004E0079004C00650076006500720061006E0073004C006100
      79006F007500740001004E00790020006D0061006C006C000100010001000D00
      0A00610063004C006F00610064004C00650076006500720061006E0073004C00
      610079006F007500740001004C00610064006400610020006C00610079006F00
      750074000100010001000D000A006100630053006100760065004C0065007600
      6500720061006E007300650072004C00610079006F0075007400010053007000
      61007200610020006D0061006C006C000100010001000D000A00610063005200
      65006D006F00760065004C00610079006F007500740001005400610020006200
      6F007200740020006D0061006C006C000100010001000D000A00610063004E00
      7900500072006F0064004D0061006C006C0001004E00790020006D0061006C00
      6C000100010001000D000A00610063005300610076006500500072006F006400
      4D0061006C006C0001005300700061007200610020006D0061006C006C000100
      010001000D000A0061006300520065006D006F0076006500500072006F006400
      4D0061006C006C00010054006100200062006F007200740020006D0061006C00
      6C000100010001000D000A006100630045007800700061006E00640041006C00
      6C00010045007800700061006E006400650072006100200061006C006C006100
      0100010001000D000A006100630043006F006C006C0061007000730065004100
      6C006C0001004D0069006E0069006D00650072006100200061006C006C006100
      0100010001000D000A00610063004E00650077004B00610070004D0061006C00
      6C0001004E00790020006D0061006C006C000100010001000D000A0061006300
      53006100760065004B006100700053007400610074004D0061006C006C000100
      5300700061007200610020006D0061006C006C000100010001000D000A006100
      6300520065006D006F00760065004B006100700053007400610074004D006100
      6C006C00010054006100200062006F007200740020006D0061006C006C000100
      010001000D000A006100630045007800700061006E0064004B00610070005300
      74006100740041006C006C0001004D006100780069006D006500720061002000
      61006C006C0061000100010001000D000A006100630043006F006C006C006100
      7000730065004B0061007000530074006100740041006C006C0001004D006900
      6E0069006D00650072006100200061006C006C0061000100010001000D000A00
      610063004E0065007700530074006F00700070005400690064004D0061006C00
      6C0001004E00790020006D0061006C006C000100010001000D000A0061006300
      5300610076006500530074006F00700070005400690064004D0061006C006C00
      01005300700061007200610020006D0061006C006C000100010001000D000A00
      61006300520065006D006F0076006500530074006F0070007000540069006400
      4D0061006C006C0001004D0061006B0075006C0065007200610020006D006100
      6C006C000100010001000D000A006100630045007800700061006E0064005300
      74006F007000700054006900640041006C006C00010045007800700061006E00
      6400650072006100200061006C006C0061000100010001000D000A0061006300
      4D0069006E0069006D0069007A006500530074006F0070007000540069006400
      41006C006C0001004D0069006E0069006D00650072006100200061006C006C00
      61000100010001000D000A0061006300430061006C00630057006F0072006B00
      69006E006700540069006D006500010041007200620065007400730074006900
      64000100010001000D000A00610063005000720069006E007400530061007700
      63006F005300740079006C0065005200650070006F0072007400010053007400
      6F00700070007400690064000100010001000D000A0061006300530074006F00
      7000700054006900640050006100720061006D000100530074006F0070007000
      7400690064002000730065007400750070000100010001000D000A0061006300
      4E00790054006F0072006B004D0061006C006C0001004E00790020006D006100
      6C006C000100010001000D000A006100630053006100760065004B0069006C00
      6E004D0061006C006C0001005300700061007200610020006D0061006C006C00
      0100010001000D000A0061006300520065006D006F00760065004B0069006C00
      6E004D0061006C006C00010054006100200062006F007200740020006D006100
      6C006C000100010001000D000A006100630045007800700061006E0064004100
      6C006C004B0069006C006E00010045007800700061006E006400650072006100
      200061006C006C0061000100010001000D000A006100630043006F006C006C00
      610070007300650041006C006C004B0069006C006E0001004D0069006E006900
      6D00650072006100200061006C006C0061000100010001000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B00310001004C00650076006500720061006E0073006500
      72000100010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B00320001005000
      72006F00640075006B00740069006F006E000100010001000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B003300010054006F0072006B0073006100740073006500
      72000100010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B00340001004E00
      650077005200650070006F00720074000100010001000D000A00640078004300
      6F006D0070006F006E0065006E0074005000720069006E007400650072003100
      4C0069006E006B00350001004E00650077005200650070006F00720074000100
      010001000D000A006400780043006F006D0070006F006E0065006E0074005000
      720069006E0074006500720031004C0069006E006B00360001004E0065007700
      5200650070006F00720074000100010001000D000A006400780043006F006D00
      70006F006E0065006E0074005000720069006E0074006500720031004C006900
      6E006B00380001004E00650077005200650070006F0072007400010001000100
      0D000A006400780043006F006D0070006F006E0065006E007400500072006900
      6E0074006500720031004C0069006E006B0039000100530074006F0070007000
      7400690064000100010001000D000A006400780043006F006D0070006F006E00
      65006E0074005000720069006E0074006500720031004C0069006E006B003100
      300001004E00650077005200650070006F00720074000100010001000D000A00
      6400780043006F006D0070006F006E0065006E0074005000720069006E007400
      6500720031004C0069006E006B003100310001004E0065007700520065007000
      6F00720074000100010001000D000A006400780043006F006D0070006F006E00
      65006E0074005000720069006E0074006500720031004C0069006E006B003100
      320001004E00650077005200650070006F00720074000100010001000D000A00
      630078005000690076006F00740047007200690064005200650070006F007200
      74004C0069006E006B005300740079006C006500530068006500650074003100
      010055006E006E0061006D006500640020003C0031003E000100010001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A006300640073005F005500
      730065007200500072006F007000730055007300650072004900440001005500
      73006500720049004400010001000D000A006300640073005F00550073006500
      7200500072006F007000730046006F0072006D00010046006F0072006D000100
      01000D000A006300640073005F005500730065007200500072006F0070007300
      5600650072006B004E006F0001005600650072006B004E006F00010001000D00
      0A006300640073005F005500730065007200500072006F00700073004F007700
      6E00650072004E006F0001004F0077006E00650072004E006F00010001000D00
      0A006300640073005F005500730065007200500072006F007000730050004900
      50004E006F0001005000490050004E006F00010001000D000A00630064007300
      5F005500730065007200500072006F00700073004C00490050004E006F000100
      4C00490050004E006F00010001000D000A006300640073005F00550073006500
      7200500072006F007000730049006E007000750074004F007000740069006F00
      6E00010049006E007000750074004F007000740069006F006E00010001000D00
      0A006300640073005F005500730065007200500072006F007000730052006500
      670050006F0069006E0074004E006F00010052006500670050006F0069006E00
      74004E006F00010001000D000A006300640073005F0055007300650072005000
      72006F0070007300520065006700440061007400650001005200650067004400
      610074006500010001000D000A006300640073005F0055007300650072005000
      72006F007000730043006F0070007900500063007300010043006F0070007900
      500063007300010001000D000A006300640073005F0055007300650072005000
      72006F0070007300520075006E004E006F000100520075006E004E006F000100
      01000D000A006300640073005F005500730065007200500072006F0070007300
      500072006F00640075006300650072004E006F000100500072006F0064007500
      6300650072004E006F00010001000D000A006300640073005F00550073006500
      7200500072006F00700073004100750074006F0043006F006C00570069006400
      7400680001004100750074006F0043006F006C00570069006400740068000100
      01000D000A006300640073005F005500730065007200500072006F0070007300
      53007500700070006C0069006500720043006F00640065000100530075007000
      70006C0069006500720043006F0064006500010001000D000A00630064007300
      5F005500730065007200500072006F00700073004C0065006E00670074006800
      4F007000740069006F006E0001004C0065006E006700740068004F0070007400
      69006F006E00010001000D000A006300640073005F0055007300650072005000
      72006F00700073004C0065006E00670074006800470072006F00750070004E00
      6F0001004C0065006E00670074006800470072006F00750070004E006F000100
      01000D000A006300640073005F005500730065007200500072006F0070007300
      4E00650077004900740065006D0052006F00770001004E006500770049007400
      65006D0052006F007700010001000D000A006300640073005F00550073006500
      7200500072006F0070007300530061006C006500730052006500670069006F00
      6E004E006F000100530061006C006500730052006500670069006F006E004E00
      6F00010001000D000A006300640073005F005500730065007200500072006F00
      700073004D00610072006B006500740052006500670069006F006E004E006F00
      01004D00610072006B006500740052006500670069006F006E004E006F000100
      01000D000A006300640073005F005500730065007200500072006F0070007300
      4F00720064006500720054007900700065004E006F0001004F00720064006500
      720054007900700065004E006F00010001000D000A006300640073005F005500
      730065007200500072006F007000730053007400610074007500730001005300
      74006100740075007300010001000D000A006300640073005F00550073006500
      7200500072006F0070007300460069006C007400650072004F00720064006500
      720044006100740065000100460069006C007400650072004F00720064006500
      72004400610074006500010001000D000A006300640073005F00550073006500
      7200500072006F00700073005300740061007200740050006500720069006F00
      640001005300740061007200740050006500720069006F006400010001000D00
      0A006300640073005F005500730065007200500072006F007000730045006E00
      640050006500720069006F006400010045006E00640050006500720069006F00
      6400010001000D000A006300640073005F005500730065007200500072006F00
      7000730043006C00690065006E0074004E006F00010043006C00690065006E00
      74004E006F00010001000D000A006300640073005F0055007300650072005000
      72006F0070007300530061006C006500730050006500720073006F006E004E00
      6F000100530061006C006500730050006500720073006F006E004E006F000100
      01000D000A006300640073005F005500730065007200500072006F0070007300
      5600650072006B0053007500700070006C006900650072004E006F0001005600
      650072006B0053007500700070006C006900650072004E006F00010001000D00
      0A006300640073005F005500730065007200500072006F007000730056006500
      72006B004B0075006E0064004E006F0001005600650072006B004B0075006E00
      64004E006F00010001000D000A006300640073005F0055007300650072005000
      72006F00700073004C004F004F0062006A006500630074005400790070006500
      01004C004F004F0062006A006500630074005400790070006500010001000D00
      0A006300640073005F005500730065007200500072006F007000730042006100
      720043006F00640065004E006F00010042006100720043006F00640065004E00
      6F00010001000D000A006300640073005F005500730065007200500072006F00
      70007300470072006100640065005300740061006D0070004E006F0001004700
      72006100640065005300740061006D0070004E006F00010001000D000A006300
      640073005F005500730065007200500072006F007000730056006F006C007500
      6D00650055006E00690074004E006F00010056006F006C0075006D0065005500
      6E00690074004E006F00010001000D000A006300640073005F00550073006500
      7200500072006F00700073004C0065006E0067007400680046006F0072006D00
      610074004E006F0001004C0065006E0067007400680046006F0072006D006100
      74004E006F00010001000D000A006300640073005F0055007300650072005000
      72006F00700073004C0065006E0067007400680056006F006C0055006E006900
      74004E006F0001004C0065006E0067007400680056006F006C0055006E006900
      74004E006F00010001000D000A006300640073005F0055007300650072005000
      72006F0070007300470072006F00750070004200790042006F00780001004700
      72006F00750070004200790042006F007800010001000D000A00630064007300
      5F005500730065007200500072006F0070007300470072006F00750070005300
      75006D006D006100720079000100470072006F0075007000530075006D006D00
      610072007900010001000D000A006300640073005F0055007300650072005000
      72006F00700073004100670065006E0074004E006F0001004100670065006E00
      74004E006F00010001000D000A006300640073005F0055007300650072005000
      72006F00700073004C006F006100640069006E0067004C006F00630061007400
      69006F006E004E006F0001004C006F006100640069006E0067004C006F006300
      6100740069006F006E004E006F00010001000D000A006300640073005F005500
      730065007200500072006F007000730053006800690070007000650072004E00
      6F00010053006800690070007000650072004E006F00010001000D000A006300
      640073005F005500730065007200500072006F007000730042006F006F006B00
      69006E00670054007900700065004E006F00010042006F006F006B0069006E00
      670054007900700065004E006F00010001000D000A006300640073005F005500
      730065007200500072006F007000730043007500730074006F006D0065007200
      4E006F00010043007500730074006F006D00650072004E006F00010001000D00
      0A006300640073005F005500730065007200500072006F007000730053006800
      6F007700500072006F0064007500630074000100530068006F00770050007200
      6F006400750063007400010001000D000A006300640073005F00550073006500
      7200500072006F0070007300460069006C007400650072003100010046006900
      6C007400650072003100010001000D000A006300640073005F00550073006500
      7200500072006F00700073005600650072006B0001005600650072006B000100
      01000D000A006300640073005F005500730065007200500072006F0070007300
      4D00E4007400700075006E006B00740001004D00E4007400700075006E006B00
      7400010001000D000A006300640073005F005500730065007200500072006F00
      70007300500072006F00640055006E00690074000100500072006F0064005500
      6E0069007400010001000D000A006300640073005F007600650072006B004300
      6C00690065006E0074004E006F00010043006C00690065006E0074004E006F00
      010001000D000A006300640073005F007600650072006B0043006C0069006500
      6E0074004E0061006D006500010043006C00690065006E0074004E0061006D00
      6500010001000D000A006300640073005F007600650072006B00530065006100
      7200630068004E0061006D00650001005300650061007200630068004E006100
      6D006500010001000D000A006300640073005F0052006500670050006F006900
      6E00740052006500670050006F0069006E0074004E0061006D00650001005200
      6500670050006F0069006E0074004E0061006D006500010001000D000A006300
      640073005F0052006500670050006F0069006E00740052006500670050006F00
      69006E0074004E006F00010052006500670050006F0069006E0074004E006F00
      010001000D000A006300640073005F0044006100740061005300690074007500
      6100740069006F006E00010053006900740075006100740069006F006E000100
      01000D000A006300640073005F0044006100740061004D00610072006B006E00
      6100640001004D00610072006B006E0061006400010001000D000A0063006400
      73005F00440061007400610053007500700070006C0069006500720001005300
      7500700070006C00690065007200010001000D000A006300640073005F004400
      61007400610043007500730074006F006D006500720001004300750073007400
      6F006D0065007200010001000D000A006300640073005F004400610074006100
      4C0061006700650072004700720075007000700001004C006100670065007200
      47007200750070007000010001000D000A006300640073005F00440061007400
      610041005400010041005400010001000D000A006300640073005F0044006100
      7400610041004200010041004200010001000D000A006300640073005F004400
      61007400610054005300010054005300010001000D000A006300640073005F00
      44006100740061004B00560001004B005600010001000D000A00630064007300
      5F00440061007400610055005400010055005400010001000D000A0063006400
      73005F00440061007400610049004D005000010049004D005000010001000D00
      0A006300640073005F0044006100740061004E004D00330001004E004D003300
      010001000D000A006300640073005F0044006100740061005000720069006300
      6500010050007200690063006500010001000D000A006300640073005F004400
      6100740061005600E40072006400650001005600E40072006400650001000100
      0D000A006300640073005F0044006100740061004C00E4006E00670064000100
      4C00E4006E0067006400010001000D000A006300640073005F00440061007400
      6100500072006F00640075006B0074000100500072006F00640075006B007400
      010001000D000A006300640073005F0044006100740061004B00760061007200
      740061006C0001004B00760061007200740061006C00010001000D000A006300
      640073005F004400610074006100C50072000100C5007200010001000D000A00
      6300640073005F0044006100740061004D00E5006E006100640001004D00E500
      6E0061006400010001000D000A006300640073005F0044006100740061005600
      650063006B00610001005600650063006B006100010001000D000A0063006400
      73005F0044006100740061004600720061006B0074006600F600720061007200
      650001004600720061006B0074006600F6007200610072006500010001000D00
      0A006300640073005F0044006100740061004C006F00610064004E006F000100
      4C006F00610064004E006F00010001000D000A006300640073005F0044006100
      74006100550074006C00610073007400610064000100550074006C0061007300
      740061006400010001000D000A006300640073005F0044006100740061004100
      4D003300010041004D003300010001000D000A006300640073005F0044006100
      74006100540072006100640069006E0067000100540072006100640069006E00
      6700010001000D000A006300640073005F0044006100740061004C004F000100
      4C004F00010001000D000A006300640073005F00440061007400610050007200
      6900630065004500780069007300740001005000720069006300650045007800
      690073007400010001000D000A006300640073005F0044006100740061004300
      6C00690065006E0074004E0061006D006500010043006C00690065006E007400
      4E0061006D006500010001000D000A006300640073005F004400610074006100
      5600610072007500670072007500700070006E0061006D006E00010056006100
      72007500670072007500700070006E0061006D006E00010001000D000A006300
      640073005F0044006100740061004D005F00500072006900730001004D005F00
      5000720069007300010001000D000A006300640073005F004400610074006100
      4C006F006100640069006E0067004C006F0063006100740069006F006E000100
      4C0061007300740073007400E4006C006C006500010001000D000A0063006400
      73005F004400610074006100440065007300740069006E006100740069006F00
      6E000100440065007300740069006E006100740069006F006E00010001000D00
      0A006300640073005F00440061007400610049006E0074005F00440065007300
      740069006E006100740069006F006E00010049006E0074005F00440065007300
      740069006E006100740069006F006E00010001000D000A006300640073005F00
      44006100740061004500780074005F00440065007300740069006E0061007400
      69006F006E0001004500780074005F00440065007300740069006E0061007400
      69006F006E00010001000D000A006300640073005F0044006100740061004F00
      72006400650072004E006F00540065007800740001004B006F006E0074007200
      61006B007400010001000D000A006300640073005F0044006100740061005000
      69006500630065007300010053007400790063006B00010001000D000A006300
      640073005F00500072006F006400440061007400610041004C004D004D000100
      41004C004D004D00010001000D000A006300640073005F00500072006F006400
      44006100740061004E004C004D004D0001004E004C004D004D00010001000D00
      0A006300640073005F00500072006F0064004400610074006100500072006F00
      640075006B0074000100500072006F00640075006B007400010001000D000A00
      6300640073005F00500072006F0064004400610074006100500061006B006500
      74006E0072000100500061006B00650074006E007200010001000D000A006300
      640073005F00500072006F006400440061007400610050007200650066006900
      78000100500072006500660069007800010001000D000A006300640073005F00
      500072006F00640044006100740061004B00F60072006E00720001004B00F600
      72006E007200010001000D000A006300640073005F00500072006F0064004400
      61007400610041005400010041005400010001000D000A006300640073005F00
      500072006F006400440061007400610041004200010041004200010001000D00
      0A006300640073005F00500072006F0064004400610074006100540053000100
      54005300010001000D000A006300640073005F00500072006F00640044006100
      740061004B00560001004B005600010001000D000A006300640073005F005000
      72006F006400440061007400610055005400010055005400010001000D000A00
      6300640073005F00500072006F006400440061007400610049004D0050000100
      49004D005000010001000D000A006300640073005F00500072006F0064004400
      61007400610044006100740075006D00010044006100740075006D0001000100
      0D000A006300640073005F00500072006F006400440061007400610056006500
      72006B0001005600650072006B00010001000D000A006300640073005F005000
      72006F00640044006100740061004D00E4007400700075006E006B0074000100
      4D00E4007400700075006E006B007400010001000D000A006300640073005F00
      500072006F006400440061007400610041004D003300010041004D0033000100
      01000D000A006300640073005F00500072006F00640044006100740061004E00
      4D00330001004E004D003300010001000D000A006300640073005F0050007200
      6F006400440061007400610070006B007400010070006B007400010001000D00
      0A006300640073005F00500072006F0064004400610074006100530054005900
      43004B00010053005400590043004B00010001000D000A006300640073005F00
      500072006F00640044006100740061004C0050004D0001004C0050004D000100
      01000D000A006300640073005F00500072006F00640044006100740061004F00
      7000650072006100740069006F006E0001004F00700065007200610074006900
      6F006E00010001000D000A006300640073005F00500072006F00640044006100
      740061004F007200740001004F0072007400010001000D000A00630064007300
      5F00500072006F00640044006100740061005600610072007500670072007500
      700070004E0061006D006E000100560061007200750067007200750070007000
      4E0061006D006E00010001000D000A006300640073005F00500072006F006400
      44006100740061004100760067004C0065006E00670074006800010041007600
      67004C0065006E00670074006800010001000D000A006300640073005F005000
      72006F0064004400610074006100530068006900660074005400650061006D00
      4E0061006D0065000100530068006900660074005400650061006D004E006100
      6D006500010001000D000A006300640073005F00500072006F00640044006100
      740061004B00F6006F0072006400650072004900440001004B00F6006F007200
      64006500720049004400010001000D000A006300640073005F00500072006F00
      640044006100740061004B00F60072006F007200640065007200520061006400
      4900440001004B00F60072006F00720064006500720052006100640049004400
      010001000D000A006300640073005F00500072006F0064004400610074006100
      5200450046004500520045004E00430045000100520045004600450052004500
      4E0043004500010001000D000A006300640073005F00500072006F0064004400
      61007400610048006500610064004C004F00010048006500610064004C004F00
      010001000D000A006300640073005F00500072006F0064004400610074006100
      43006C00690065006E0074004E0061006D006500010043006C00690065006E00
      74004E0061006D006500010001000D000A00730071005F00500072006F006400
      4400610074006100530075006D0049004900500072006F00640075006B007400
      0100500072006F00640075006B007400010001000D000A00730071005F005000
      72006F0064004400610074006100530075006D004900490041004C004D004D00
      010041004C004D004D00010001000D000A00730071005F00500072006F006400
      4400610074006100530075006D00490049004E004C004D004D0001004E004C00
      4D004D00010001000D000A00730071005F00500072006F006400440061007400
      6100530075006D0049004900500061006B00650074006E007200010050006100
      6B00650074006E007200010001000D000A00730071005F00500072006F006400
      4400610074006100530075006D00490049005000720065006600690078000100
      500072006500660069007800010001000D000A00730071005F00500072006F00
      64004400610074006100530075006D0049004900410054000100410054000100
      01000D000A00730071005F00500072006F006400440061007400610053007500
      6D004900490041004200010041004200010001000D000A00730071005F005000
      72006F0064004400610074006100530075006D00490049005400530001005400
      5300010001000D000A00730071005F00500072006F0064004400610074006100
      530075006D00490049004B00560001004B005600010001000D000A0073007100
      5F00500072006F0064004400610074006100530075006D004900490055005400
      010055005400010001000D000A00730071005F00500072006F00640044006100
      74006100530075006D004900490049004D005000010049004D00500001000100
      0D000A00730071005F00500072006F0064004400610074006100530075006D00
      4900490044006100740075006D00010044006100740075006D00010001000D00
      0A00730071005F00500072006F0064004400610074006100530075006D004900
      49005600650072006B0001005600650072006B00010001000D000A0073007100
      5F00500072006F0064004400610074006100530075006D00490049004D00E400
      7400700075006E006B00740001004D00E4007400700075006E006B0074000100
      01000D000A00730071005F00500072006F006400440061007400610053007500
      6D004900490041004D003300010041004D003300010001000D000A0073007100
      5F00500072006F0064004400610074006100530075006D00490049004E004D00
      330001004E004D003300010001000D000A00730071005F00500072006F006400
      4400610074006100530075006D004900490050004B005400010050004B005400
      010001000D000A00730071005F00500072006F00640044006100740061005300
      75006D004900490053005400590043004B00010053005400590043004B000100
      01000D000A00730071005F00500072006F006400440061007400610053007500
      6D00490049004C0050004D0001004C0050004D00010001000D000A0073007100
      5F00500072006F0064004400610074006100530075006D004900490053007500
      700070006C006900650072004E006F00010053007500700070006C0069006500
      72004E006F00010001000D000A00730071005F00500072006F00640044006100
      74006100530075006D004900490052006500670050006F0069006E0074004E00
      6F00010052006500670050006F0069006E0074004E006F00010001000D000A00
      730071005F00500072006F0064004400610074006100530075006D0049004900
      4F007000650072006100740069006F006E0001004F0070006500720061007400
      69006F006E00010001000D000A00730071005F00500072006F00640044006100
      74006100530075006D00490049004F007200740001004F007200740001000100
      0D000A00730071005F00500072006F0064004400610074006100530075006D00
      490049005600610072007500670072007500700070004E0061006D006E000100
      5600610072007500670072007500700070004E0061006D006E00010001000D00
      0A00730071005F00500072006F0064004400610074006100530075006D004900
      49004100760067004C0065006E0067007400680001004100760067004C006500
      6E00670074006800010001000D000A00730071005F00500072006F0064004400
      610074006100530075006D004900490053006800690066007400540065006100
      6D004E0061006D0065000100530068006900660074005400650061006D004E00
      61006D006500010001000D000A00730071005F00500072006F00640044006100
      74006100530075006D004900490053006F007200740069006E0067004F007200
      6400650072004E006F0001004B00F60072006F0072006400650072006E007200
      010001000D000A00730071005F00500072006F00640044006100740061005300
      75006D004900490053006F007200740069006E0067004F007200640065007200
      52006F0077004E006F0001005200610064006E007200010001000D000A007300
      71005F00500072006F0064004400610074006100530075006D00490049005200
      650066006500720065006E00730001005200650066006500720065006E007300
      010001000D000A00730071005F00500072006F00640044006100740061005300
      75006D004900490048006500610064004C004F0001004C004F00010001000D00
      0A00730071005F00500072006F0064004400610074006100530075006D004900
      490043006C00690065006E0074004E0061006D00650001004B0075006E006400
      010001000D000A006300640073005F0054006F0072006B005300610074007300
      650072005600650072006B0001005600650072006B00010001000D000A006300
      640073005F0054006F0072006B005300610074007300650072004B0069006C00
      6E004E0061006D00650001004B0069006C006E004E0061006D00650001000100
      0D000A006300640073005F0054006F0072006B00530061007400730065007200
      53007400610072007400540069006D0065000100530074006100720074005400
      69006D006500010001000D000A006300640073005F0054006F0072006B005300
      6100740073006500720045006E006400540069006D006500010045006E006400
      540069006D006500010001000D000A006300640073005F0054006F0072006B00
      53006100740073006500720050006C0061006E00650072006100640054006900
      6400010050006C0061006E006500720061006400540069006400010001000D00
      0A006300640073005F0054006F0072006B005300610074007300650072004B00
      61006C006B0079006C00650072006100640054006900640001004B0061006C00
      6B0079006C006500720061006400540069006400010001000D000A0063006400
      73005F0054006F0072006B0053006100740073006500720041004D0033000100
      41004D003300010001000D000A006300640073005F0054006F0072006B005300
      6100740073006500720041005400010041005400010001000D000A0063006400
      73005F0054006F0072006B005300610074007300650072004100420001004100
      4200010001000D000A006300640073005F0054006F0072006B00530061007400
      73006500720054005300010054005300010001000D000A006300640073005F00
      54006F0072006B005300610074007300650072004B00560001004B0056000100
      01000D000A006300640073005F0054006F0072006B0053006100740073006500
      720055005400010055005400010001000D000A006300640073005F0054006F00
      72006B0053006100740073006500720049004D005000010049004D0050000100
      01000D000A006300640073005F0054006F0072006B0053006100740073006500
      7200440049004D005F00470072006100640065000100440069006D002F004B00
      760061006C00010001000D000A006300640073005F0054006F0072006B005300
      61007400730065007200440049004D005F00470072006100640065005F004C00
      65006E006700740068000100440069006D002F004B00760061006C002F004C00
      E4006E0067006400010001000D000A006300640073005F0054006F0072006B00
      53006100740073006500720041004C004D004D0001004C00E4006E0067006400
      2000280041004C004D004D002900010001000D000A006300640073005F005400
      6F0072006B00530061007400730065007200440049004D005F00470072006100
      640065005F004C0065006E006700740068005F00540053000100440069006D00
      2F004B00760061006C002F004C00E4006E00670064002F005400530001000100
      0D000A006300640073005F0054006F0072006B00530061007400730065007200
      49006E004400610074006500010049006E00200044006100740075006D002000
      2B002000540069006400010001000D000A006300640073005F0054006F007200
      6B005300610074007300650072004E006F004F00660050006B00670073000100
      500061006B0065007400010001000D000A006300640073005F0054006F007200
      6B0053006100740073006500720044006100740065004F006E006C0079000100
      49006E00200044006100740075006D00010001000D000A006300640073005F00
      6F0076006500720076006900650077004900740065006D000100490074006500
      6D00010001000D000A006300640073005F006F00760065007200760069006500
      77004E004D00330001004E004D003300010001000D000A00730071005F005000
      72006F0064004400610074006100530075006D00500072006F00640075006B00
      74000100500072006F00640075006B007400010001000D000A00730071005F00
      500072006F0064004400610074006100530075006D0041004C004D004D000100
      41004C004D004D00010001000D000A00730071005F00500072006F0064004400
      610074006100530075006D004E004C004D004D0001004E004C004D004D000100
      01000D000A00730071005F00500072006F006400440061007400610053007500
      6D00500061006B00650074006E0072000100500061006B00650074006E007200
      010001000D000A00730071005F00500072006F00640044006100740061005300
      75006D0050007200650066006900780001005000720065006600690078000100
      01000D000A00730071005F00500072006F006400440061007400610053007500
      6D004B00F60072006E00720001004B00F60072006E007200010001000D000A00
      730071005F00500072006F0064004400610074006100530075006D0041005400
      010041005400010001000D000A00730071005F00500072006F00640044006100
      74006100530075006D0041004200010041004200010001000D000A0073007100
      5F00500072006F0064004400610074006100530075006D005400530001005400
      5300010001000D000A00730071005F00500072006F0064004400610074006100
      530075006D004B00560001004B005600010001000D000A00730071005F005000
      72006F0064004400610074006100530075006D00550054000100550054000100
      01000D000A00730071005F00500072006F006400440061007400610053007500
      6D0049004D005000010049004D005000010001000D000A00730071005F005000
      72006F0064004400610074006100530075006D0044006100740075006D000100
      44006100740075006D00010001000D000A00730071005F00500072006F006400
      4400610074006100530075006D005600650072006B0001005600650072006B00
      010001000D000A00730071005F00500072006F00640044006100740061005300
      75006D004D00E4007400700075006E006B00740001004D00E400740070007500
      6E006B007400010001000D000A00730071005F00500072006F00640044006100
      74006100530075006D0041004D003300010041004D003300010001000D000A00
      730071005F00500072006F0064004400610074006100530075006D004E004D00
      330001004E004D003300010001000D000A00730071005F00500072006F006400
      4400610074006100530075006D0050004B005400010050004B00540001000100
      0D000A00730071005F00500072006F0064004400610074006100530075006D00
      53005400590043004B00010053005400590043004B00010001000D000A007300
      71005F00500072006F0064004400610074006100530075006D004C0050004D00
      01004C0050004D00010001000D000A00730071005F00500072006F0064004400
      610074006100530075006D0053007500700070006C006900650072004E006F00
      010053007500700070006C006900650072004E006F00010001000D000A007300
      71005F00500072006F0064004400610074006100530075006D00520065006700
      50006F0069006E0074004E006F00010052006500670050006F0069006E007400
      4E006F00010001000D000A00730071005F00500072006F006400440061007400
      6100530075006D004F007000650072006100740069006F006E0001004F007000
      650072006100740069006F006E00010001000D000A00730071005F0050007200
      6F0064004400610074006100530075006D004F007200740001004F0072007400
      010001000D000A00730071005F00500072006F00640044006100740061005300
      75006D005600610072007500670072007500700070004E0061006D006E000100
      5600610072007500670072007500700070004E0061006D006E00010001000D00
      0A00730071005F00500072006F0064004400610074006100530075006D004100
      760067004C0065006E0067007400680001004100760067004C0065006E006700
      74006800010001000D000A00730071005F00500072006F006400440061007400
      6100530075006D00530068006900660074005400650061006D004E0061006D00
      65000100530068006900660074005400650061006D004E0061006D0065000100
      01000D000A00730071005F00500072006F006400440061007400610053007500
      6D0053006F007200740069006E0067004F0072006400650072004E006F000100
      53006F007200740069006E0067004F0072006400650072004E006F0001000100
      0D000A00730071005F00500072006F0064004400610074006100530075006D00
      53006F007200740069006E0067004F00720064006500720052006F0077004E00
      6F00010053006F007200740069006E0067004F00720064006500720052006F00
      77004E006F00010001000D000A00730071005F00500072006F00640044006100
      74006100530075006D005200650066006500720065006E007300010052006500
      66006500720065006E007300010001000D000A00730071005F00500072006F00
      64004400610074006100530075006D0048006500610064004C004F0001004800
      6500610064004C004F00010001000D000A00730071005F00500072006F006400
      4400610074006100530075006D0043006C00690065006E0074004E0061006D00
      6500010043006C00690065006E0074004E0061006D006500010001000D000A00
      6300640073005F004B0061007000500072006F00640075006300650072006100
      74000100500072006F006400750063006500720061007400010001000D000A00
      6300640073005F004B006100700054004F004E007200010054004F004E007200
      010001000D000A006300640073005F004B006100700052006100760061007200
      75005F00500072006F00640075006B0074000100520061007600610072007500
      5F00500072006F00640075006B007400010001000D000A006300640073005F00
      4B00610070005200610076006100720075005F004C0061006E00670064000100
      5200610076006100720075005F004C0061006E0067006400010001000D000A00
      6300640073005F004B0061007000480046005F00500072006F00640075006B00
      74000100480046005F00500072006F00640075006B007400010001000D000A00
      6300640073005F004B0061007000480046005F004C0061006E00670064000100
      480046005F004C0061006E0067006400010001000D000A006300640073005F00
      4B00610070005000610052006500670041004D00330001005000610052006500
      670041004D003300010001000D000A006300640073005F004B00610070004100
      760052006500670041004D00330001004100760052006500670041004D003300
      010001000D000A006300640073005F004B006100700055007400620079007400
      65000100550074006200790074006500010001000D000A006300640073005F00
      4B00610070005300700069006C006C0041004D00330001005300700069006C00
      6C0041004D003300010001000D000A006300640073005F004B00610070005300
      700069006C006C004E004D00330001005300700069006C006C004E004D003300
      010001000D000A006300640073005F004B006100700050006100520065006700
      4E004D0033000100500061005200650067004E004D003300010001000D000A00
      6300640073005F004B00610070005500740062007900740065004E004D003300
      01005500740062007900740065004E004D003300010001000D000A0063006400
      73005F004B0061007000410076005200650067004E004D003300010041007600
      5200650067004E004D003300010001000D000A006300640073005F004B006100
      7000500072006F0064005000630073000100500072006F006400500063007300
      010001000D000A006300640073005F004B006100700050006C0061006E006E00
      65006400700063007300010050006C0061006E006E0065006400700063007300
      010001000D000A006300640073005F004B006100700044006900660066005000
      6300730001004400690066006600500063007300010001000D000A0063006400
      73005F004B0061007000C40067006100720065000100C4006700610072006500
      010001000D000A006300640073005F004B006100700041005400010041005400
      010001000D000A006300640073005F004B006100700041004200010041004200
      010001000D000A006300640073005F004B0061007000500072006F0064007500
      6B0074005000720065006600690078000100500072006F00640075006B007400
      500072006500660069007800010001000D000A006300640073005F004B006100
      7000500072006F0064007500630065006E0074000100500072006F0064007500
      630065006E007400010001000D000A006300640073005F004B00610070004F00
      7200740001004F0072007400010001000D000A006300640073005F004B006100
      700055007400620079007400650041004D003100010055007400620079007400
      650041004D003100010001000D000A006300640073005F004B00610070005000
      610052006500670041004D00310001005000610052006500670041004D003100
      010001000D000A006300640073005F004B006100700041007600520065006700
      41004D00310001004100760052006500670041004D003100010001000D000A00
      6300640073005F00530074006F00700070005400690064005200650067005000
      6F0069006E0074004E0061006D00650001004D00E4007400700075006E006B00
      7400010001000D000A006300640073005F00530074006F007000700054006900
      6400530074006F007000700054006900640073004E0061006D006E0001004F00
      7200730061006B00010001000D000A006300640073005F00530074006F007000
      7000540069006400530074006F00700070005300740061007200740057006900
      74006800540069006D0065000100530074006F00700070007300740061007200
      7400610064006500200028006D00650064002000740069006400290001000100
      0D000A006300640073005F00530074006F00700070005400690064004B007600
      690074007400650072006100740001004B007600690074007400650072006100
      7400010001000D000A006300640073005F00530074006F007000700054006900
      6400530074006F00700070004F007200730061006B004E007200010053007400
      6F00700070004F007200730061006B004E007200010001000D000A0063006400
      73005F00530074006F0070007000540069006400530074006F00700070005300
      650063006F006E00640073000100530065006B00010001000D000A0063006400
      73005F00530074006F0070007000540069006400530074006F00700070004D00
      69006E00750074006500730001004D0069006E00010001000D000A0063006400
      73005F00530074006F0070007000540069006400530074006F00700070004800
      6F007500720073000100540069006D00010001000D000A006300640073005F00
      530074006F00700070005400690064004400720069006600740050006C006100
      740073006E00720001004400720069006600740050006C006100740073006E00
      7200010001000D000A006300640073005F00530074006F007000700054006900
      64005600650072006B004E006F0001005600650072006B004E006F0001000100
      0D000A006300640073005F00530074006F00700070005400690064004E006F00
      4F006600530074006F00700070007300010041006E00740061006C0001000100
      0D000A006300640073005F00530074006F007000700054006900640053007400
      6F0070007000530074006100720074004E006F00540069006D00650001005300
      74006F007000700073007400610072007400610064006500010001000D000A00
      6300640073005F00530074006F0070007000540069006400500072006F006400
      7500630074004E006F000100500072006F0064007500630074004E006F000100
      01000D000A006300640073005F00530074006F00700070005400690064004B00
      6F004E00720001004B006F004E007200010001000D000A006300640073005F00
      530074006F0070007000540069006400500072006F00640075006B0074000100
      500072006F00640075006B007400010001000D000A006300640073005F005300
      74006F007000700054006900640053006B00690066007400010053006B006900
      66007400010001000D000A006300640073005300740061006E00640061007200
      640048006F007500720073004400720069006600740050006C00610074007300
      4E00720001004400720069006600740050006C006100740073004E0072000100
      01000D000A006300640073005300740061006E00640061007200640048006F00
      750072007300540079007000650001005400790070006500010001000D000A00
      6300640073005300740061006E00640061007200640048006F00750072007300
      5400790070006500560061006C00750065000100540079007000650056006100
      6C0075006500010001000D000A006300640073005300740061006E0064006100
      7200640048006F0075007200730057006F0072006B0048006F00750072007300
      010057006F0072006B0048006F00750072007300010001000D000A0063006400
      73005300740061006E00640061007200640048006F0075007200730053007400
      610072007400540069006D006500010053007400610072007400540069006D00
      6500010001000D000A006300640073005300740061006E006400610072006400
      48006F0075007200730045006E006400540069006D006500010045006E006400
      540069006D006500010001000D000A006300640073005300740061006E006400
      61007200640048006F007500720073004E006F007400650001004E006F007400
      6500010001000D000A006300640073005300740061006E006400610072006400
      48006F007500720073005600650063006B006F00440061006700010056006500
      63006B006F00440061006700010001000D000A00630064007300530074006100
      6E00640061007200640048006F00750072007300540079007000410076004400
      61006700010054007900700041007600440061006700010001000D000A006300
      640073005300740061006E00640061007200640048006F007500720073004B00
      69006E0064004F00660045007800630065007000740069006F006E0001004B00
      69006E0064004F00660045007800630065007000740069006F006E0001000100
      0D000A006300640073005F00500072006F00640055006E006900740073005200
      6500670050006F0069006E0074004E0061006D00650001005200650067005000
      6F0069006E0074004E0061006D006500010001000D000A006300640073005F00
      500072006F00640055006E0069007400730052006500670050006F0069006E00
      74004E006F00010052006500670050006F0069006E0074004E006F0001000100
      0D000A006300640073005F00500072006F00640055006E006900740073005000
      72006F00640075006300740069006F006E0055006E00690074004E006F000100
      500072006F00640075006300740069006F006E0055006E00690074004E006F00
      010001000D000A00730070005F00530074006F00700070005400690064003000
      3100410072006200650074007300740069006400010041007200620065007400
      7300740069006400010001000D000A00730070005F00530074006F0070007000
      5400690064003000310054006F00740061006C00410072006200650074007300
      74006900640048006F00750072007300010054006F00740061006C0041007200
      620065007400730074006900640048006F00750072007300010001000D000A00
      730070005F00530074006F0070007000540069006400300031004B0061006C00
      65006E0064006500720074006900640001004B0061006C0065006E0064006500
      7200740069006400010001000D000A00730070005F00530074006F0070007000
      5400690064003000310054006F00740061006C00540069006D00650048006F00
      750072007300010054006F00740061006C00540069006D00650048006F007500
      72007300010001000D000A00730070005F00530074006F007000700054006900
      6400300031004C006100720067006500530074006F00700001004C0061007200
      67006500530074006F007000010001000D000A00730070005F00530074006F00
      700070005400690064003000310043006C00690065006E0074004E0061006D00
      6500010043006C00690065006E0074004E0061006D006500010001000D000A00
      730070005F00530074006F007000700054006900640030003100520065006700
      50006F0069006E0074004E0061006D006500010052006500670050006F006900
      6E0074004E0061006D006500010001000D000A00730070005F00530074006F00
      7000700054006900640030003100530074006F00700070004F00720073006100
      6B004E0072000100530074006F00700070004F007200730061006B004E007200
      010001000D000A00730070005F00530074006F00700070005400690064003000
      3100530074006F007000700054006900640073004E0061006D006E0001005300
      74006F007000700054006900640073004E0061006D006E00010001000D000A00
      730070005F00530074006F007000700054006900640030003100470072006F00
      750070004E006F000100470072006F00750070004E006F00010001000D000A00
      730070005F00530074006F007000700054006900640030003100530074006100
      7200740050006500720069006F00640001005300740061007200740050006500
      720069006F006400010001000D000A00730070005F00530074006F0070007000
      5400690064003000310045006E00640050006500720069006F00640001004500
      6E00640050006500720069006F006400010001000D000A00730070005F005300
      74006F007000700054006900640030003100480075007600750064004F007200
      730061006B000100480075007600750064004F007200730061006B0001000100
      0D000A00730070005F00530074006F0070007000540069006400300031004100
      6E00740061006C004B006F00720074006100530074006F007000700001004100
      6E00740061006C004B006F00720074006100530074006F007000700001000100
      0D000A00730070005F00530074006F0070007000540069006400300031005400
      690064004B006F00720074006100530074006F00700070000100540069006400
      4B006F00720074006100530074006F0070007000010001000D000A0073007000
      5F00530074006F0070007000540069006400300031005400690064004B006F00
      720074006100530074006F007000700048006F00750072004D0069006E000100
      5400690064004B006F00720074006100530074006F007000700048006F007500
      72004D0069006E00010001000D000A00730070005F00530074006F0070007000
      5400690064003000310041006E00740061006C004C0061006E00670061005300
      74006F0070007000010041006E00740061006C004C0061006E00670061005300
      74006F0070007000010001000D000A00730070005F00530074006F0070007000
      540069006400300031005400690064004C0061006E0067006100530074006F00
      7000700001005400690064004C0061006E0067006100530074006F0070007000
      010001000D000A00730070005F00530074006F00700070005400690064003000
      31005400690064004C0061006E0067006100530074006F007000700048006F00
      750072004D0069006E0001005400690064004C0061006E006700610053007400
      6F007000700048006F00750072004D0069006E00010001000D000A0073007000
      5F00530074006F00700070005400690064003000310054006F00740061006C00
      740041006E00740061006C00530074006F0070007000010054006F0074006100
      6C00740041006E00740061006C00530074006F0070007000010001000D000A00
      730070005F00530074006F00700070005400690064003000310054006F007400
      61006C007400540069006400530074006F007000700048006F00750072004D00
      69006E00010054006F00740061006C007400540069006400530074006F007000
      700048006F00750072004D0069006E00010001000D000A00730070005F005300
      74006F00700070005400690064003000310054006F00740061006C0074005400
      69006400530074006F0070007000010054006F00740061006C00740054006900
      6400530074006F0070007000010001000D000A00730070005F00530074006F00
      7000700054006900640030003100500072006F00630065006E00740041007600
      4100720062006500740073005400690064000100500072006F00630065006E00
      740041007600410072006200650074007300540069006400010001000D000A00
      730070005F00530074006F007000700054006900640030003100500072006F00
      630065006E007400410076004B0061006C0065006E0064006500720054006900
      64000100500072006F00630065006E007400410076004B0061006C0065006E00
      640065007200540069006400010001000D000A00730070005F00530074006F00
      7000700054006900640030003100500072006F00630065006E00740041007600
      530074006F00700070005400690064000100500072006F00630065006E007400
      41007600530074006F0070007000540069006400010001000D000A0073007000
      5F00530074006F00700070005400690064003000310050006500720063006500
      6E0074004B006F00720074006100530074006F00700070004100760041007200
      62006500740073007400690064000100500065007200630065006E0074004B00
      6F00720074006100530074006F00700070004100760041007200620065007400
      7300740069006400010001000D000A00730070005F00530074006F0070007000
      54006900640030003100500065007200630065006E0074004C0061006E006700
      6100530074006F00700070004100760041007200620065007400730074006900
      64000100500065007200630065006E0074004C0061006E006700610053007400
      6F00700070004100760041007200620065007400730074006900640001000100
      0D000A00730070005F00530074006F0070007000540069006400300031005000
      65007200630065006E00740041004C004C004100530074006F00700070004100
      7600410072006200650074007300740069006400010050006500720063006500
      6E00740041004C004C004100530074006F007000700041007600410072006200
      650074007300740069006400010001000D000A00730070005F00530074006F00
      700070005400690064003000310054006F00740061006C0074004B006F007200
      74006100530074006F0070007000540069006D006D0061007200010054006F00
      740061006C0074004B006F00720074006100530074006F007000700054006900
      6D006D0061007200010001000D000A00730070005F00530074006F0070007000
      5400690064003000310054006F00740061006C0074004C0061006E0067006100
      530074006F0070007000540069006D006D0061007200010054006F0074006100
      6C0074004C0061006E0067006100530074006F0070007000540069006D006D00
      61007200010001000D000A00730070005F00530074006F007000700054006900
      6400300031004B006F00720074006100530074006F0070007000540069006D00
      6D006100720001004B006F00720074006100530074006F007000700054006900
      6D006D0061007200010001000D000A00730070005F00530074006F0070007000
      540069006400300031004C0061006E0067006100530074006F00700070005400
      69006D006D006100720001004C0061006E0067006100530074006F0070007000
      540069006D006D0061007200010001000D000A00730070005F00530074006F00
      700070005400690064003000310054006F00740061006C007400530074006F00
      70007000540069006D006D0061007200010054006F00740061006C0074005300
      74006F0070007000540069006D006D0061007200010001000D000A0073007000
      5F00530074006F0070007000540069006400300031005600650072006B006E00
      69006E0067007300670072006100640001005600650072006B006E0069006E00
      670073006700720061006400010001000D000A00730070005F00530074006F00
      700070005400690064003000310054006F00740061006C00740041004C004C00
      4100530074006F00700070004100760041007200620065007400730074006900
      6400010054006F00740061006C00740041004C004C004100530074006F007000
      700041007600410072006200650074007300740069006400010001000D000A00
      6300640073005F005500730065007200500072006F00700073004E0061006D00
      650001004E0061006D0065000100010001000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660041006E00
      61006C00790073006500720061004C00650076006500720061006E0073006500
      720001004D0053002000530061006E0073002000530065007200690066000100
      4D0053002000530061006E007300200053006500720069006600010054006100
      68006F006D0061000D000A00630078005300740079006C006500310001005400
      610068006F006D006100010001005400610068006F006D0061000D000A006300
      78005300740079006C00650063006C004D00610072006F006F006E0001005400
      610068006F006D006100010001005400610068006F006D0061000D000A006300
      78005300740079006C00650063006C0057006800690074006500010054006100
      68006F006D006100010001005400610068006F006D0061000D000A0063007800
      5300740079006C006500320001004D0053002000530061006E00730020005300
      6500720069006600010001005400610068006F006D0061000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B0031000100540069006D006500730020004E0065007700
      200052006F006D0061006E00010001005400610068006F006D0061000D000A00
      6400780043006F006D0070006F006E0065006E0074005000720069006E007400
      6500720031004C0069006E006B0032000100540069006D006500730020004E00
      65007700200052006F006D0061006E00010001005400610068006F006D006100
      0D000A006400780043006F006D0070006F006E0065006E007400500072006900
      6E0074006500720031004C0069006E006B0033000100540069006D0065007300
      20004E0065007700200052006F006D0061006E00010001005400610068006F00
      6D0061000D000A006400780043006F006D0070006F006E0065006E0074005000
      720069006E0074006500720031004C0069006E006B0034000100540069006D00
      6500730020004E0065007700200052006F006D0061006E000100010054006100
      68006F006D0061000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B00350001005400
      69006D006500730020004E0065007700200052006F006D0061006E0001000100
      5400610068006F006D0061000D000A006400780043006F006D0070006F006E00
      65006E0074005000720069006E0074006500720031004C0069006E006B003600
      0100540069006D006500730020004E0065007700200052006F006D0061006E00
      010001005400610068006F006D0061000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B0038000100540069006D006500730020004E0065007700200052006F006D00
      61006E00010001005400610068006F006D0061000D000A006400780043006F00
      6D0070006F006E0065006E0074005000720069006E0074006500720031004C00
      69006E006B0039000100540069006D006500730020004E006500770020005200
      6F006D0061006E00010001005400610068006F006D0061000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B00310030000100540069006D006500730020004E006500
      7700200052006F006D0061006E00010001005400610068006F006D0061000D00
      0A006400780043006F006D0070006F006E0065006E0074005000720069006E00
      74006500720031004C0069006E006B00310031000100540069006D0065007300
      20004E0065007700200052006F006D0061006E00010001005400610068006F00
      6D0061000D000A006400780043006F006D0070006F006E0065006E0074005000
      720069006E0074006500720031004C0069006E006B0031003200010054006900
      6D006500730020004E0065007700200052006F006D0061006E00010001005400
      610068006F006D0061000D000A00630078005300740079006C00650033000100
      540069006D006500730020004E0065007700200052006F006D0061006E000100
      01005400610068006F006D0061000D000A00630078005300740079006C006500
      34000100540069006D006500730020004E0065007700200052006F006D006100
      6E00010001005400610068006F006D0061000D000A0063007800530074007900
      6C00650035000100540069006D006500730020004E0065007700200052006F00
      6D0061006E00010001005400610068006F006D0061000D000A00630078005300
      740079006C00650036000100540069006D006500730020004E00650077002000
      52006F006D0061006E00010001005400610068006F006D0061000D000A006300
      78005300740079006C00650037000100540069006D006500730020004E006500
      7700200052006F006D0061006E00010001005400610068006F006D0061000D00
      0A00730074004D0075006C00740069004C0069006E00650073005F0055006E00
      690063006F00640065000D000A004D0065006D006F0031002E004C0069006E00
      6500730001004D0065006D006F003100010001000D000A006300620078005300
      6F0072007400420079004600690065006C0064002E00500072006F0070006500
      720074006900650073002E004900740065006D00730001004B00610074006500
      67006F00720069002C0041004D0033002C004E004D0033002C005600E4007200
      640065002C004D002D005000720069007300010001000D000A00630062005300
      6F0072007400420079004600690065006C00640049006E00530074006F007000
      700053007400610074002E00500072006F007000650072007400690065007300
      2E004900740065006D00730001004B0061007400650067006F00720069002C00
      4D0069006E0075007400650072002C00540069006D006D00610072002C004100
      6E00740061006C002C00220055007400660061006C006C002000740069006400
      22002C00220055007400660061006C006C00200061006E00740061006C002200
      010001000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A004900440053005F0031003300350001004900
      6E0066006F003A00200041006E0067006900760065006C007300650020006600
      F6007200200068007500720020006C00E5006E00670020007400690064002000
      6B006F007200740061002000730074006F00700070002000E400720020007300
      61006B006E00610073002E000100010001000D000A004900440053005F003100
      34003000010041007200620065007400730073006300680065006D0061002000
      730061006B006E00610073002E000100010001000D000A004900440053005F00
      310034003400010041006E006700650020006D0061006C006C006E0061006D00
      6E000100010001000D000A004900440053005F00310034003600010056006900
      6C006C00200064007500200074006100200062006F007200740020006D006100
      6C006C0065006E003F0020000100010001000D000A004900440053005F003400
      390001004100720062006500740073007400690064002C0020006D0069006E00
      75007400650072003A00200023000100010001000D000A004900440053005F00
      35003000010041007200620065007400730073006300680065006D0061002000
      69006E007400650020007500700070006C0061006700740020006600F6007200
      2000760061006C00640020006D00E4007400700075006E006B0074002E000100
      010001000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A006300620078005300
      6F0072007400420079004600690065006C0064002E0054006500780074000100
      4B0061007400650067006F0072006900010001000D000A006300620053006F00
      72007400420079004600690065006C00640049006E00530074006F0070007000
      53007400610074002E00540065007800740001004B0061007400650067006F00
      72006900010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B0031002E004400
      65007300690067006E0065007200430061007000740069006F006E0001004600
      6F0072006D006100740020005200650070006F0072007400010001000D000A00
      6400780043006F006D0070006F006E0065006E0074005000720069006E007400
      6500720031004C0069006E006B0032002E00440065007300690067006E006500
      7200430061007000740069006F006E00010046006F0072006D00610074002000
      5200650070006F0072007400010001000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B0033002E00440065007300690067006E006500720043006100700074006900
      6F006E00010046006F0072006D006100740020005200650070006F0072007400
      010001000D000A006400780043006F006D0070006F006E0065006E0074005000
      720069006E0074006500720031004C0069006E006B0034002E00440065007300
      690067006E0065007200430061007000740069006F006E00010046006F007200
      6D006100740020005200650070006F0072007400010001000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B0035002E00440065007300690067006E00650072004300
      61007000740069006F006E00010046006F0072006D0061007400200052006500
      70006F0072007400010001000D000A006400780043006F006D0070006F006E00
      65006E0074005000720069006E0074006500720031004C0069006E006B003700
      2E004400650073006300720069007000740069006F006E00010043006F006D00
      70006F0073006900740069006F006E00010001000D000A006400780043006F00
      6D0070006F006E0065006E0074005000720069006E0074006500720031004C00
      69006E006B0037002E00440065007300690067006E0065007200430061007000
      740069006F006E00010043006F006D0070006F0073006900740069006F006E00
      200045006400690074006F007200010001000D000A006400780043006F006D00
      70006F006E0065006E0074005000720069006E0074006500720031004C006900
      6E006B0036002E00440065007300690067006E00650072004300610070007400
      69006F006E00010046006F0072006D006100740020005200650070006F007200
      7400010001000D000A006400780043006F006D0070006F006E0065006E007400
      5000720069006E0074006500720031004C0069006E006B0038002E0044006500
      7300690067006E0065007200430061007000740069006F006E00010046006F00
      72006D006100740020005200650070006F0072007400010001000D000A006400
      780043006F006D0070006F006E0065006E0074005000720069006E0074006500
      720031004C0069006E006B0039002E00440065007300690067006E0065007200
      430061007000740069006F006E00010046006F0072006D006100740020005200
      650070006F0072007400010001000D000A006400780043006F006D0070006F00
      6E0065006E0074005000720069006E0074006500720031004C0069006E006B00
      310030002E00440065007300690067006E006500720043006100700074006900
      6F006E00010046006F0072006D006100740020005200650070006F0072007400
      010001000D000A006400780043006F006D0070006F006E0065006E0074005000
      720069006E0074006500720031004C0069006E006B00310031002E0044006500
      7300690067006E0065007200430061007000740069006F006E00010046006F00
      72006D006100740020005200650070006F0072007400010001000D000A006400
      780043006F006D0070006F006E0065006E0074005000720069006E0074006500
      720031004C0069006E006B00310032002E00440065007300690067006E006500
      7200430061007000740069006F006E00010046006F0072006D00610074002000
      5200650070006F0072007400010001000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B00310033002E004400650073006300720069007000740069006F006E000100
      43006F006D0070006F0073006900740069006F006E00010001000D000A006400
      780043006F006D0070006F006E0065006E0074005000720069006E0074006500
      720031004C0069006E006B00310033002E00440065007300690067006E006500
      7200430061007000740069006F006E00010043006F006D0070006F0073006900
      740069006F006E00200045006400690074006F007200010001000D000A007300
      740043006F006C006C0065006300740069006F006E0073005F0055006E006900
      63006F00640065000D000A00690063004F007000650072006100740069006F00
      6E002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0030005D002E004400650073006300720069007000740069006F00
      6E0001005000E500720065006700010001000D000A00690063004F0070006500
      72006100740069006F006E002E00500072006F00700065007200740069006500
      73002E004900740065006D0073005B0031005D002E0044006500730063007200
      69007000740069006F006E00010041007600720065006700010001000D000A00
      690063004F007000650072006100740069006F006E002E00500072006F007000
      6500720074006900650073002E004900740065006D0073005B0032005D002E00
      4400650073006300720069007000740069006F006E00010041006C006C006100
      010001000D000A007000690076004C00650076006500720061006E0073006500
      72002E00470072006F007500700073005B0030005D002E004300610070007400
      69006F006E000100550074006C0061007300740061006400010001000D000A00
      720067004F00720064006500720054007900700065002E00500072006F007000
      6500720074006900650073002E004900740065006D0073005B0030005D002E00
      430061007000740069006F006E0001004600F60072007300E4006C006A006E00
      69006E006700010001000D000A00720067004F00720064006500720054007900
      700065002E00500072006F0070006500720074006900650073002E0049007400
      65006D0073005B0031005D002E00430061007000740069006F006E0001004900
      6E006B00F6007000010001000D000A00700069007600500072006F0064007500
      6300740069006F006E002E00470072006F007500700073005B0030005D002E00
      430061007000740069006F006E0001004B0061006C0065006E00640065007200
      010001000D000A007000690076004B0044002E00470072006F00750070007300
      5B0030005D002E00430061007000740069006F006E0001005000650072006900
      6F006400010001000D000A00700076004B006100700053007400610074002E00
      470072006F007500700073005B0030005D002E00430061007000740069006F00
      6E00010050006500720069006F006400010001000D000A007000760053007400
      6F00700070005400690064002E00470072006F007500700073005B0030005D00
      2E00430061007000740069006F006E00010050006500720069006F0064000100
      01000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A005400660041006E0061006C00790073006500
      720061004C00650076006500720061006E007300650072000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0063007800
      5300740079006C00650031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00630078005300740079006C0065006300
      6C004D00610072006F006F006E000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A00630078005300740079006C006500
      63006C00570068006900740065000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A00630078005300740079006C006500
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A006400780043006F006D0070006F006E0065006E00740050007200
      69006E0074006500720031004C0069006E006B00310001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00640078004300
      6F006D0070006F006E0065006E0074005000720069006E007400650072003100
      4C0069006E006B0032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A006400780043006F006D0070006F006E006500
      6E0074005000720069006E0074006500720031004C0069006E006B0033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A006400780043006F006D0070006F006E0065006E0074005000720069006E00
      74006500720031004C0069006E006B0034000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A006400780043006F006D00
      70006F006E0065006E0074005000720069006E0074006500720031004C006900
      6E006B0035000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A006400780043006F006D0070006F006E0065006E007400
      5000720069006E0074006500720031004C0069006E006B003600010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A006400
      780043006F006D0070006F006E0065006E0074005000720069006E0074006500
      720031004C0069006E006B0038000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A006400780043006F006D0070006F00
      6E0065006E0074005000720069006E0074006500720031004C0069006E006B00
      39000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A006400780043006F006D0070006F006E0065006E00740050007200
      69006E0074006500720031004C0069006E006B00310030000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B00310031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A006400780043006F006D0070006F00
      6E0065006E0074005000720069006E0074006500720031004C0069006E006B00
      310032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00630078005300740079006C00650033000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0063007800
      5300740079006C00650034000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00630078005300740079006C0065003500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00630078005300740079006C0065003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006300780053007400
      79006C00650037000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00}
  end
end
