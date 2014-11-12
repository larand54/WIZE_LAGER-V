object frmMaintenance: TfrmMaintenance
  Left = 189
  Top = 98
  Width = 799
  Height = 640
  Caption = 'frmMaintenance'
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
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 791
    Height = 44
    Align = dalTop
    BarManager = dxBarManager1
  end
  object dxPageControl1: TcxPageControl
    Left = 0
    Top = 44
    Width = 791
    Height = 569
    ActivePage = tsChangeNomSize
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    ClientRectBottom = 569
    ClientRectRight = 791
    ClientRectTop = 27
    object tsChangeNomSize: TcxTabSheet
      Caption = 'Change Nominal size'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Label1: TLabel
        Left = 56
        Top = 48
        Width = 99
        Height = 16
        Caption = 'Actual thickness:'
      end
      object Label2: TLabel
        Left = 56
        Top = 80
        Width = 73
        Height = 16
        Caption = 'Actual width:'
      end
      object Label3: TLabel
        Left = 48
        Top = 192
        Width = 139
        Height = 16
        Caption = 'New nominal thickness:'
      end
      object Label4: TLabel
        Left = 48
        Top = 224
        Width = 113
        Height = 16
        Caption = 'New nominal width:'
      end
      object EditActThickMM: TEdit
        Left = 216
        Top = 40
        Width = 121
        Height = 24
        TabOrder = 0
        Text = '0'
      end
      object EditActWidthMM: TEdit
        Left = 216
        Top = 72
        Width = 121
        Height = 24
        TabOrder = 1
        Text = '0'
      end
      object EditNewNomThickMM: TEdit
        Left = 216
        Top = 184
        Width = 121
        Height = 24
        TabOrder = 2
        Text = '0'
      end
      object EditNewNomWidthMM: TEdit
        Left = 216
        Top = 216
        Width = 121
        Height = 24
        TabOrder = 3
        Text = '0'
      end
      object bbApply: TBitBtn
        Left = 216
        Top = 288
        Width = 121
        Height = 41
        Caption = 'Apply'
        TabOrder = 4
        OnClick = bbApplyClick
      end
    end
    object tsAssignPriceGroups: TcxTabSheet
      Caption = 'Assign Price Groups'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Label5: TLabel
        Left = 64
        Top = 80
        Width = 112
        Height = 16
        Caption = 'Nominal thickness:'
      end
      object Label6: TLabel
        Left = 64
        Top = 112
        Width = 86
        Height = 16
        Caption = 'Nominal width:'
      end
      object Label7: TLabel
        Left = 64
        Top = 288
        Width = 41
        Height = 16
        Caption = 'Grade:'
      end
      object Label8: TLabel
        Left = 64
        Top = 160
        Width = 72
        Height = 16
        Caption = 'Price group:'
      end
      object Label11: TLabel
        Left = 64
        Top = 200
        Width = 53
        Height = 16
        Caption = 'Species:'
      end
      object Label12: TLabel
        Left = 64
        Top = 240
        Width = 59
        Height = 16
        Caption = 'Surfacing:'
      end
      object Label13: TLabel
        Left = 64
        Top = 48
        Width = 73
        Height = 16
        Caption = 'Actual width:'
      end
      object Label14: TLabel
        Left = 64
        Top = 16
        Width = 99
        Height = 16
        Caption = 'Actual thickness:'
      end
      object bbApplyPriceGroupNames: TBitBtn
        Left = 504
        Top = 104
        Width = 153
        Height = 57
        Caption = 'Apply Price Groups'
        TabOrder = 8
        OnClick = bbApplyPriceGroupNamesClick
      end
      object EditNomThickMM: TEdit
        Left = 232
        Top = 72
        Width = 121
        Height = 24
        TabOrder = 2
        Text = '0'
      end
      object EditNomWidthMM: TEdit
        Left = 232
        Top = 104
        Width = 121
        Height = 24
        TabOrder = 3
        Text = '0'
      end
      object cmbGrade: TComboBox
        Left = 232
        Top = 280
        Width = 145
        Height = 24
        ItemHeight = 16
        TabOrder = 7
        Text = 'select'
        OnChange = cmbGradeChange
      end
      object cmbPriceGroup: TComboBox
        Left = 232
        Top = 152
        Width = 145
        Height = 24
        ItemHeight = 16
        TabOrder = 4
        Text = 'Select'
        OnChange = cmbPriceGroupChange
      end
      object cmbSpecies: TComboBox
        Left = 232
        Top = 192
        Width = 145
        Height = 24
        ItemHeight = 16
        TabOrder = 5
        Text = 'select'
        OnChange = cmbSpeciesChange
      end
      object cmbSurfacing: TComboBox
        Left = 232
        Top = 232
        Width = 145
        Height = 24
        ItemHeight = 16
        TabOrder = 6
        Text = 'select'
        OnChange = cmbSurfacingChange
      end
      object EActThickMM: TEdit
        Left = 232
        Top = 8
        Width = 121
        Height = 24
        TabOrder = 0
        Text = '0'
      end
      object EActWidthMM: TEdit
        Left = 232
        Top = 40
        Width = 121
        Height = 24
        TabOrder = 1
        Text = '0'
      end
    end
    object tsReCalculatePackageVolume: TcxTabSheet
      Caption = 'Re-calculate Package Volumes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Label9: TLabel
        Left = 248
        Top = 384
        Width = 12
        Height = 16
        Caption = '    '
        Color = clYellow
        ParentColor = False
      end
      object Label10: TLabel
        Left = 248
        Top = 400
        Width = 12
        Height = 16
        Caption = '    '
        Color = clYellow
        ParentColor = False
      end
      object bbUpdatePackageTypeVolumes: TBitBtn
        Left = 280
        Top = 184
        Width = 233
        Height = 49
        Caption = 'Update PackageType volumes'
        TabOrder = 0
        OnClick = bbUpdatePackageTypeVolumesClick
      end
      object ProgressBar1: TProgressBar
        Left = 0
        Top = 499
        Width = 791
        Height = 43
        Align = alBottom
        TabOrder = 1
      end
    end
    object tsSetProductDescription: TcxTabSheet
      Caption = 'Set Product Description'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object bSetProductionDescription: TButton
        Left = 240
        Top = 56
        Width = 385
        Height = 73
        Caption = 'Set ORDER Production Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = bSetProductionDescriptionClick
      end
      object Button1: TButton
        Left = 248
        Top = 184
        Width = 377
        Height = 73
        Caption = 'Set NORMAL LO Production Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 256
        Top = 320
        Width = 369
        Height = 73
        Caption = 'Set INT && ADD LO Production Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = Button2Click
      end
    end
    object tsMarketRegions: TcxTabSheet
      Caption = 'tsMarketRegions'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 791
        Height = 44
        Align = alTop
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object dxBarDockControl2: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 791
          Height = 44
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 44
        Width = 990
        Height = 325
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ClientNo'
        SummaryGroups = <>
        SummarySeparator = ', '
        Color = 15925247
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -13
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = [fsBold]
        DataSource = dmMaintenance.dsMarketRegions
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabs, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -13
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = [fsBold]
        object dxDBGrid1ClientNo: TdxDBGridMaskColumn
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ClientNo'
        end
        object dxDBGrid1ClientName: TdxDBGridMaskColumn
          Width = 453
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ClientName'
        end
        object dxDBGrid1Market: TdxDBGridLookupColumn
          Width = 139
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Market'
        end
        object dxDBGrid1MarketRegionNo: TdxDBGridMaskColumn
          Width = 182
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MarketRegionNo'
        end
      end
      object dxPageControl2: TcxPageControl
        Left = 0
        Top = 357
        Width = 791
        Height = 185
        ActivePage = tsTrpBrev
        Align = alBottom
        TabOrder = 2
        ClientRectBottom = 185
        ClientRectRight = 791
        ClientRectTop = 27
        object tsTrpBrev: TcxTabSheet
          Caption = 'Trp Brev'
          object dxDBMemo1: TdxDBMemo
            Left = 0
            Top = 0
            Width = 791
            Align = alClient
            TabOrder = 0
            DataField = 'TRP_BREV_Text'
            DataSource = dmMaintenance.ds_ClientTrpBrev
            Height = 158
          end
        end
      end
    end
    object tsReservedPkgs: TcxTabSheet
      Caption = 'Reserved Pkgs'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 788
        Height = 65
        Align = alTop
        TabOrder = 0
        object bbDeleteResPkg: TBitBtn
          Left = 232
          Top = 8
          Width = 73
          Height = 41
          Caption = 'Delete'
          TabOrder = 0
          OnClick = bbDeleteResPkgClick
        end
        object bbApplyChangesResPkgs: TBitBtn
          Left = 320
          Top = 8
          Width = 113
          Height = 41
          Caption = 'Apply Changes'
          TabOrder = 1
          OnClick = bbApplyChangesResPkgsClick
        end
        object bbCancelChangesResPkgs: TBitBtn
          Left = 456
          Top = 8
          Width = 113
          Height = 41
          Caption = 'Cancel Changes'
          TabOrder = 2
          OnClick = bbCancelChangesResPkgsClick
        end
        object bbRefresh: TBitBtn
          Left = 48
          Top = 8
          Width = 145
          Height = 41
          Caption = 'Refresh'
          TabOrder = 3
          OnClick = bbRefreshClick
        end
      end
      object dxDBGrid2: TdxDBGrid
        Left = 0
        Top = 65
        Width = 788
        Height = 477
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'UniqueKey'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 1
        DataSource = dmMaintenance.ds_ResPkgs
        Filter.Active = True
        Filter.Criteria = {00000000}
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        object dxDBGrid2PackageNo: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PackageNo'
        end
        object dxDBGrid2SupplierCode: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SupplierCode'
        end
        object dxDBGrid2UserID: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UserID'
        end
        object dxDBGrid2UserName: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UserName'
        end
        object dxDBGrid2DateCreated: TdxDBGridColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DateCreated'
        end
        object dxDBGrid2UniqueKey: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UniqueKey'
        end
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <
      item
        Caption = 'Custom 1'
        DockControl = dxBarDockControl1
        DockedDockControl = dxBarDockControl1
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 404
        FloatTop = 341
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = <
          item
            Item = dxBarLargeButton1
            Visible = True
          end>
        Name = 'Custom 1'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        Caption = 'MarketRegion'
        DockControl = dxBarDockControl2
        DockedDockControl = dxBarDockControl2
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 404
        FloatTop = 341
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = <
          item
            Item = MarketRegionApply
            Visible = True
          end
          item
            Item = MarketRegionRefresh
            Visible = True
          end
          item
            Item = MarketRegionCancel
            Visible = True
          end
          item
            Item = MarketRegion
            Visible = True
          end>
        Name = 'MarketRegion'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
    Categories.Strings = (
      'Default'
      'MarketRegion')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 176
    Top = 24
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
    end
    object MarketRegionApply: TdxBarLargeButton
      Caption = 'Apply'
      Category = 1
      Hint = 'Apply'
      Visible = ivAlways
      OnClick = MarketRegionApplyClick
    end
    object MarketRegionRefresh: TdxBarLargeButton
      Caption = 'Refresh'
      Category = 1
      Hint = 'Refresh'
      Visible = ivAlways
      OnClick = MarketRegionRefreshClick
    end
    object MarketRegionCancel: TdxBarLargeButton
      Caption = 'Cancel'
      Category = 1
      Hint = 'Cancel'
      Visible = ivAlways
      OnClick = MarketRegionCancelClick
    end
    object MarketRegion: TdxBarLargeButton
      Caption = 'Add Market Region'
      Category = 1
      Hint = 'Add Market Region'
      Visible = ivAlways
      OnClick = MarketRegionClick
    end
  end
  object sqlSetDescriptionExtraLO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'update SupplierShippingPlan'
      'Set ProductDescription ='
      ''
      
        'LTrim(STR(PG.NominalThicknessMM,10,1))+'#39'x'#39'+LTrim(STR(PG.NominalW' +
        'idthMM,10,1))+'#39'mm, '#39
      
        '+'#39'('#39'+LTrim(STR(PG.ActualThicknessMM,10,1))+'#39'x'#39'+LTrim(STR(PG.Actu' +
        'alWidthMM,10,1))+'#39'mm)  '#39
      '+RTrim(G.GradeName)+'#39', '#39
      '+RTrim(S.SpeciesName) +'#39', '#39
      '+RTrim(SUR.SurfacingName)'
      ''
      ''
      'From'
      ' SupplierShippingPlan'#9'SP'#9
      ''
      #9'INNER JOIN dbo.Product'#9#9#9'PR'#9'ON'#9'PR.ProductNo'#9#9'= SP.ProductNo'
      #9'INNER JOIN dbo.Grade'#9#9#9'G'#9'ON'#9'G.GradeNo'#9#9'= PR.GradeNo'
      #9#9#9#9#9#9#9'AND G.LanguageCode = 1'
      ''
      
        #9'INNER JOIN dbo.ProductGroup'#9#9'PG'#9'ON'#9'PG.ProductGroupNo'#9'= PR.Produ' +
        'ctGroupNo'
      #9'INNER JOIN dbo.Species'#9#9#9'S'#9'ON'#9'S.SpeciesNo'#9#9'= PG.SpeciesNo'
      #9#9#9#9#9#9#9'AND S.LanguageCode = 1'
      
        #9'INNER JOIN dbo.Surfacing'#9#9'SUR'#9'ON'#9'SUR.SurfacingNo'#9#9'= PG.Surfacin' +
        'gNo'
      #9#9#9#9#9#9#9'AND SUR.LanguageCode = 1'
      'where SP.objecttype = 1')
    SQLConnection = dmsConnector.SQLConnection
    Left = 24
    Top = 168
  end
  object sqlSetDescriptionNormalLO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'update SupplierShippingPlan'
      'Set ProductDescription ='
      ''
      
        '--LTrim(STR(PG.NominalThicknessMM,10,1))+'#39'x'#39'+LTrim(STR(PG.Nomina' +
        'lWidthMM,10,1))+'#39'mm, '#39
      
        'LTrim(STR(OL.NominalThicknessMM,10,1))+'#39'x'#39'+LTrim(STR(OL.NominalW' +
        'idthMM,10,1))+'#39'mm, '#39
      
        '+'#39'('#39'+LTrim(STR(PG.ActualThicknessMM,10,1))+'#39'x'#39'+LTrim(STR(PG.Actu' +
        'alWidthMM,10,1))+'#39'mm)  '#39
      '+RTrim(G.GradeName)+'#39', '#39
      '+RTrim(S.SpeciesName) +'#39', '#39
      '+RTrim(SUR.SurfacingName)'
      ''
      'From'
      'Orders O'
      'Inner Join OrderLine OL ON OL.OrderNo = O.OrderNo'
      
        'Inner Join CustomerShippingPlanHeader CSH ON CSH.OrderNo = O.Ord' +
        'erNo'
      
        'Inner Join CustomerShippingPlanDetails CSD ON CSD.ShippingPlanNo' +
        ' = CSH.ShippingPlanNo'
      #9#9#9#9#9#9'AND CSD.OrderLineNo = OL.OrderLineNo'
      ''
      
        'Inner Join SupplierShippingPlan'#9'SP'#9'ON SP.CustShipPlanDetailObjec' +
        'tNo = CSD.CustShipPlanDetailObjectNo'
      ''
      #9'INNER JOIN dbo.Product'#9#9#9'PR'#9'ON'#9'PR.ProductNo'#9#9'= OL.ProductNo'
      #9'INNER JOIN dbo.Grade'#9#9#9'G'#9'ON'#9'G.GradeNo'#9#9'= PR.GradeNo'
      #9#9#9#9#9#9#9'AND G.LanguageCode = 1'
      ''
      
        #9'INNER JOIN dbo.ProductGroup'#9#9'PG'#9'ON'#9'PG.ProductGroupNo'#9'= PR.Produ' +
        'ctGroupNo'
      #9'INNER JOIN dbo.Species'#9#9#9'S'#9'ON'#9'S.SpeciesNo'#9#9'= PG.SpeciesNo'
      #9#9#9#9#9#9#9'AND S.LanguageCode = 1'
      
        #9'INNER JOIN dbo.Surfacing'#9#9'SUR'#9'ON'#9'SUR.SurfacingNo'#9#9'= PG.Surfacin' +
        'gNo'
      #9#9#9#9#9#9#9'AND SUR.LanguageCode = 1')
    SQLConnection = dmsConnector.SQLConnection
    Left = 24
    Top = 208
  end
  object sqlSetDescriptionOrderLine: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'update OrderLine '
      'Set OrderLineDescription ='
      'CASE'
      'WHEN O.ProductDisplayFormat = 0 then'
      
        'LTrim(STR(PG.ActualThicknessMM,10,1))+'#39'x'#39'+LTrim(STR(PG.ActualWid' +
        'thMM,10,1))+'#39'mm, '#39
      '+RTrim(G.GradeName)+'#39', '#39
      '+RTrim(S.SpeciesName) +'#39', '#39
      '+RTrim(SUR.SurfacingName)'
      ''
      'WHEN O.ProductDisplayFormat = 1 then'
      
        'LTrim(STR(OL.NominalThicknessMM,10,1))+'#39'x'#39'+LTrim(STR(OL.NominalW' +
        'idthMM,10,1))+'#39'mm, '#39
      '+RTrim(G.GradeName)+'#39', '#39
      '+RTrim(S.SpeciesName) +'#39', '#39
      '+RTrim(SUR.SurfacingName)'
      ''
      'WHEN O.ProductDisplayFormat = 2 then'
      
        'LTrim(STR(PG.NominalThicknessINCH,10,1))+'#39'x'#39'+LTrim(STR(PG.Nomina' +
        'lWidthINCH,10,1))+'#39'", '#39
      '+RTrim(G.GradeName)+'#39', '#39
      '+RTrim(S.SpeciesName) +'#39', '#39
      '+RTrim(SUR.SurfacingName)'
      ''
      ''
      'WHEN O.ProductDisplayFormat = 3 then'
      
        'LTrim(STR(OL.NominalThicknessMM,10,1))+'#39'x'#39'+LTrim(STR(OL.NominalW' +
        'idthMM,10,1))+'#39'mm, '#39
      
        '+'#39'('#39'+LTrim(STR(PG.ActualThicknessMM,10,1))+'#39'x'#39'+LTrim(STR(PG.Actu' +
        'alWidthMM,10,1))+'#39'mm)  '#39
      '+RTrim(G.GradeName)+'#39', '#39
      '+RTrim(S.SpeciesName) +'#39', '#39
      '+RTrim(SUR.SurfacingName)'
      ''
      'WHEN O.ProductDisplayFormat = 4 then'
      
        'LTrim(STR(PG.NominalThicknessINCH,10,1))+'#39'x'#39'+LTrim(STR(PG.Nomina' +
        'lWidthINCH,10,1))+'#39'", '#39
      
        '+'#39'('#39'+LTrim(STR(PG.ActualThicknessMM,10,1))+'#39'x'#39'+LTrim(STR(PG.Actu' +
        'alWidthMM,10,1))+'#39'mm)  '#39
      '+RTrim(G.GradeName)+'#39', '#39
      '+RTrim(S.SpeciesName) +'#39', '#39
      '+RTrim(SUR.SurfacingName)'
      'END  '
      ''
      'From'
      'Orders O'
      'Inner Join OrderLine OL ON OL.OrderNo = O.OrderNo'
      ''
      #9'INNER JOIN dbo.Product'#9#9#9'PR'#9'ON'#9'PR.ProductNo'#9#9'= OL.ProductNo'
      #9'INNER JOIN dbo.Grade'#9#9#9'G'#9'ON'#9'G.GradeNo'#9#9'= PR.GradeNo'
      #9#9#9#9#9#9#9'AND G.LanguageCode = O.LanguageCode'
      ''
      
        #9'INNER JOIN dbo.ProductGroup'#9#9'PG'#9'ON'#9'PG.ProductGroupNo'#9'= PR.Produ' +
        'ctGroupNo'
      #9'INNER JOIN dbo.Species'#9#9#9'S'#9'ON'#9'S.SpeciesNo'#9#9'= PG.SpeciesNo'
      #9#9#9#9#9#9#9'AND S.LanguageCode = O.LanguageCode'
      
        #9'INNER JOIN dbo.Surfacing'#9#9'SUR'#9'ON'#9'SUR.SurfacingNo'#9#9'= PG.Surfacin' +
        'gNo'
      #9#9#9#9#9#9#9'AND SUR.LanguageCode = O.LanguageCode')
    SQLConnection = dmsConnector.SQLConnection
    Left = 24
    Top = 256
  end
end
